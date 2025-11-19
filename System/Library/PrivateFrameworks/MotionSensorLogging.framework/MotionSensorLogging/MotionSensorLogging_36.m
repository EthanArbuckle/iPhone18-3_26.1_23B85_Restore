uint64_t CMMsl::KappaPulseResult::readFrom(CMMsl::KappaPulseResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 316);
    while (1)
    {
      v8 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = (v8 + v2);
      v13 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v13;
        v14 = *v12++;
        v11 |= (v14 & 0x7F) << v9;
        if ((v14 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        ++v13;
        v15 = v10++ > 8;
        if (v15)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      if ((v11 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_382;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) > 200)
      {
        switch(v23)
        {
          case 0xC9:
            *v7 |= 2uLL;
            v50 = *(a2 + 1);
            v49 = *(a2 + 2);
            v51 = *a2;
            if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v49)
            {
              v173 = 0;
              v174 = 0;
              v54 = 0;
              v175 = (v51 + v50);
              v19 = v49 >= v50;
              v176 = v49 - v50;
              if (!v19)
              {
                v176 = 0;
              }

              v177 = v50 + 1;
              while (1)
              {
                if (!v176)
                {
                  v54 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_359;
                }

                v178 = *v175;
                *(a2 + 1) = v177;
                v54 |= (v178 & 0x7F) << v173;
                if ((v178 & 0x80) == 0)
                {
                  break;
                }

                v173 += 7;
                ++v175;
                --v176;
                ++v177;
                v15 = v174++ > 8;
                if (v15)
                {
LABEL_280:
                  v54 = 0;
                  goto LABEL_359;
                }
              }

              if (*(a2 + 24))
              {
                v54 = 0;
              }
            }

            else
            {
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = (v51 + v50);
              v56 = v50 + 1;
              while (1)
              {
                *(a2 + 1) = v56;
                v57 = *v55++;
                v54 |= (v57 & 0x7F) << v52;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                ++v56;
                v15 = v53++ > 8;
                if (v15)
                {
                  goto LABEL_280;
                }
              }
            }

LABEL_359:
            *(this + 2) = v54;
            break;
          case 0xCA:
            *v7 |= 4uLL;
            v40 = *(a2 + 1);
            v39 = *(a2 + 2);
            v41 = *a2;
            if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v39)
            {
              v167 = 0;
              v168 = 0;
              v44 = 0;
              v169 = (v41 + v40);
              v19 = v39 >= v40;
              v170 = v39 - v40;
              if (!v19)
              {
                v170 = 0;
              }

              v171 = v40 + 1;
              while (1)
              {
                if (!v170)
                {
                  v44 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_356;
                }

                v172 = *v169;
                *(a2 + 1) = v171;
                v44 |= (v172 & 0x7F) << v167;
                if ((v172 & 0x80) == 0)
                {
                  break;
                }

                v167 += 7;
                ++v169;
                --v170;
                ++v171;
                v15 = v168++ > 8;
                if (v15)
                {
LABEL_272:
                  v44 = 0;
                  goto LABEL_356;
                }
              }

              if (*(a2 + 24))
              {
                v44 = 0;
              }
            }

            else
            {
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = (v41 + v40);
              v46 = v40 + 1;
              while (1)
              {
                *(a2 + 1) = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v42;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                ++v46;
                v15 = v43++ > 8;
                if (v15)
                {
                  goto LABEL_272;
                }
              }
            }

LABEL_356:
            *(this + 3) = v44;
            break;
          case 0x12D:
            *v7 |= 0x400000000000uLL;
            v28 = *(a2 + 1);
            if (v28 <= 0xFFFFFFFFFFFFFFFBLL && v28 + 4 <= *(a2 + 2))
            {
              *(this + 57) = *(*a2 + v28);
LABEL_341:
              *(a2 + 1) += 4;
            }

            else
            {
              *(a2 + 24) = 1;
            }

            break;
          default:
LABEL_18:
            if (!PB::Reader::skip(a2))
            {
              v222 = 0;
              return v222 & 1;
            }

            break;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            *(this + 324) |= 8u;
            v24 = *(a2 + 1);
            if (v24 >= *(a2 + 2))
            {
              v27 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v25 = v24 + 1;
              v26 = *(*a2 + v24);
              *(a2 + 1) = v25;
              v27 = v26 != 0;
            }

            *(this + 312) = v27;
            goto LABEL_342;
          case 2:
            *(this + 324) |= 2u;
            v102 = *(a2 + 1);
            if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 76) = *(*a2 + v102);
            goto LABEL_341;
          case 3:
            *(this + 324) |= 4u;
            v81 = *(a2 + 1);
            if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 77) = *(*a2 + v81);
            goto LABEL_341;
          case 4:
            *v7 |= 0x20uLL;
            v85 = *(a2 + 1);
            v84 = *(a2 + 2);
            v86 = *a2;
            if (v85 <= 0xFFFFFFFFFFFFFFF5 && v85 + 10 <= v84)
            {
              v87 = 0;
              v88 = 0;
              v89 = 0;
              v90 = (v86 + v85);
              v91 = v85 + 1;
              do
              {
                *(a2 + 1) = v91;
                v92 = *v90++;
                v89 |= (v92 & 0x7F) << v87;
                if ((v92 & 0x80) == 0)
                {
                  goto LABEL_365;
                }

                v87 += 7;
                ++v91;
                v15 = v88++ > 8;
              }

              while (!v15);
LABEL_296:
              v89 = 0;
              goto LABEL_365;
            }

            v185 = 0;
            v186 = 0;
            v89 = 0;
            v187 = (v86 + v85);
            v19 = v84 >= v85;
            v188 = v84 - v85;
            if (!v19)
            {
              v188 = 0;
            }

            v189 = v85 + 1;
            while (2)
            {
              if (v188)
              {
                v190 = *v187;
                *(a2 + 1) = v189;
                v89 |= (v190 & 0x7F) << v185;
                if (v190 < 0)
                {
                  v185 += 7;
                  ++v187;
                  --v188;
                  ++v189;
                  v15 = v186++ > 8;
                  if (v15)
                  {
                    goto LABEL_296;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v89 = 0;
                }
              }

              else
              {
                v89 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_365:
            *(this + 6) = v89;
            goto LABEL_342;
          case 5:
            *v7 |= 0x40uLL;
            v66 = *(a2 + 1);
            v65 = *(a2 + 2);
            v67 = *a2;
            if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
            {
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v71 = (v67 + v66);
              v72 = v66 + 1;
              do
              {
                *(a2 + 1) = v72;
                v73 = *v71++;
                v70 |= (v73 & 0x7F) << v68;
                if ((v73 & 0x80) == 0)
                {
                  goto LABEL_362;
                }

                v68 += 7;
                ++v72;
                v15 = v69++ > 8;
              }

              while (!v15);
LABEL_288:
              v70 = 0;
              goto LABEL_362;
            }

            v179 = 0;
            v180 = 0;
            v70 = 0;
            v181 = (v67 + v66);
            v19 = v65 >= v66;
            v182 = v65 - v66;
            if (!v19)
            {
              v182 = 0;
            }

            v183 = v66 + 1;
            while (2)
            {
              if (v182)
              {
                v184 = *v181;
                *(a2 + 1) = v183;
                v70 |= (v184 & 0x7F) << v179;
                if (v184 < 0)
                {
                  v179 += 7;
                  ++v181;
                  --v182;
                  ++v183;
                  v15 = v180++ > 8;
                  if (v15)
                  {
                    goto LABEL_288;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v70 = 0;
                }
              }

              else
              {
                v70 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_362:
            *(this + 7) = v70;
            goto LABEL_342;
          case 6:
            *v7 |= 1uLL;
            v109 = *(a2 + 1);
            v108 = *(a2 + 2);
            v110 = *a2;
            if (v109 <= 0xFFFFFFFFFFFFFFF5 && v109 + 10 <= v108)
            {
              v111 = 0;
              v112 = 0;
              v113 = 0;
              v114 = (v110 + v109);
              v115 = v109 + 1;
              do
              {
                *(a2 + 1) = v115;
                v116 = *v114++;
                v113 |= (v116 & 0x7F) << v111;
                if ((v116 & 0x80) == 0)
                {
                  goto LABEL_371;
                }

                v111 += 7;
                ++v115;
                v15 = v112++ > 8;
              }

              while (!v15);
LABEL_314:
              v113 = 0;
              goto LABEL_371;
            }

            v197 = 0;
            v198 = 0;
            v113 = 0;
            v199 = (v110 + v109);
            v19 = v108 >= v109;
            v200 = v108 - v109;
            if (!v19)
            {
              v200 = 0;
            }

            v201 = v109 + 1;
            while (2)
            {
              if (v200)
              {
                v202 = *v199;
                *(a2 + 1) = v201;
                v113 |= (v202 & 0x7F) << v197;
                if (v202 < 0)
                {
                  v197 += 7;
                  ++v199;
                  --v200;
                  ++v201;
                  v15 = v198++ > 8;
                  if (v15)
                  {
                    goto LABEL_314;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v113 = 0;
                }
              }

              else
              {
                v113 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_371:
            *(this + 1) = v113;
            goto LABEL_342;
          case 7:
            *v7 |= 0x8000uLL;
            v120 = *(a2 + 1);
            if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 26) = *(*a2 + v120);
            goto LABEL_341;
          case 8:
            *v7 |= 0x80uLL;
            v94 = *(a2 + 1);
            v93 = *(a2 + 2);
            v95 = *a2;
            if (v94 <= 0xFFFFFFFFFFFFFFF5 && v94 + 10 <= v93)
            {
              v96 = 0;
              v97 = 0;
              v98 = 0;
              v99 = (v95 + v94);
              v100 = v94 + 1;
              do
              {
                *(a2 + 1) = v100;
                v101 = *v99++;
                v98 |= (v101 & 0x7F) << v96;
                if ((v101 & 0x80) == 0)
                {
                  goto LABEL_368;
                }

                v96 += 7;
                ++v100;
                v15 = v97++ > 8;
              }

              while (!v15);
LABEL_304:
              v98 = 0;
              goto LABEL_368;
            }

            v191 = 0;
            v192 = 0;
            v98 = 0;
            v193 = (v95 + v94);
            v19 = v93 >= v94;
            v194 = v93 - v94;
            if (!v19)
            {
              v194 = 0;
            }

            v195 = v94 + 1;
            while (2)
            {
              if (v194)
              {
                v196 = *v193;
                *(a2 + 1) = v195;
                v98 |= (v196 & 0x7F) << v191;
                if (v196 < 0)
                {
                  v191 += 7;
                  ++v193;
                  --v194;
                  ++v195;
                  v15 = v192++ > 8;
                  if (v15)
                  {
                    goto LABEL_304;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v98 = 0;
                }
              }

              else
              {
                v98 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_368:
            *(this + 8) = v98;
            goto LABEL_342;
          case 9:
            *v7 |= 0x100uLL;
            v124 = *(a2 + 1);
            v123 = *(a2 + 2);
            v125 = *a2;
            if (v124 <= 0xFFFFFFFFFFFFFFF5 && v124 + 10 <= v123)
            {
              v126 = 0;
              v127 = 0;
              v128 = 0;
              v129 = (v125 + v124);
              v130 = v124 + 1;
              do
              {
                *(a2 + 1) = v130;
                v131 = *v129++;
                v128 |= (v131 & 0x7F) << v126;
                if ((v131 & 0x80) == 0)
                {
                  goto LABEL_374;
                }

                v126 += 7;
                ++v130;
                v15 = v127++ > 8;
              }

              while (!v15);
LABEL_322:
              v128 = 0;
              goto LABEL_374;
            }

            v203 = 0;
            v204 = 0;
            v128 = 0;
            v205 = (v125 + v124);
            v19 = v123 >= v124;
            v206 = v123 - v124;
            if (!v19)
            {
              v206 = 0;
            }

            v207 = v124 + 1;
            while (2)
            {
              if (v206)
              {
                v208 = *v205;
                *(a2 + 1) = v207;
                v128 |= (v208 & 0x7F) << v203;
                if (v208 < 0)
                {
                  v203 += 7;
                  ++v205;
                  --v206;
                  ++v207;
                  v15 = v204++ > 8;
                  if (v15)
                  {
                    goto LABEL_322;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v128 = 0;
                }
              }

              else
              {
                v128 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_374:
            *(this + 9) = v128;
            goto LABEL_342;
          case 10:
            *v7 |= 0x20000uLL;
            v78 = *(a2 + 1);
            if (v78 > 0xFFFFFFFFFFFFFFFBLL || v78 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 28) = *(*a2 + v78);
            goto LABEL_341;
          case 11:
            *v7 |= 0x10000uLL;
            v122 = *(a2 + 1);
            if (v122 > 0xFFFFFFFFFFFFFFFBLL || v122 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 27) = *(*a2 + v122);
            goto LABEL_341;
          case 12:
            *v7 |= 0x2000000uLL;
            v63 = *(a2 + 1);
            if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 36) = *(*a2 + v63);
            goto LABEL_341;
          case 13:
            *v7 |= 0x200uLL;
            v77 = *(a2 + 1);
            if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 20) = *(*a2 + v77);
            goto LABEL_341;
          case 14:
            *v7 |= 0x400uLL;
            v119 = *(a2 + 1);
            if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 21) = *(*a2 + v119);
            goto LABEL_341;
          case 15:
            *v7 |= 0x800000uLL;
            v59 = *(a2 + 1);
            if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 34) = *(*a2 + v59);
            goto LABEL_341;
          case 16:
            *v7 |= 0x4000uLL;
            v82 = *(a2 + 1);
            if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 25) = *(*a2 + v82);
            goto LABEL_341;
          case 17:
            *v7 |= 0x400000uLL;
            v48 = *(a2 + 1);
            if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 33) = *(*a2 + v48);
            goto LABEL_341;
          case 18:
            *v7 |= 0x2000uLL;
            v104 = *(a2 + 1);
            if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 24) = *(*a2 + v104);
            goto LABEL_341;
          case 19:
            *v7 |= 0x8000000uLL;
            v121 = *(a2 + 1);
            if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 38) = *(*a2 + v121);
            goto LABEL_341;
          case 20:
            *v7 |= 0x100000uLL;
            v137 = *(a2 + 1);
            if (v137 > 0xFFFFFFFFFFFFFFFBLL || v137 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 31) = *(*a2 + v137);
            goto LABEL_341;
          case 21:
            *v7 |= 0x1000uLL;
            v106 = *(a2 + 1);
            if (v106 > 0xFFFFFFFFFFFFFFFBLL || v106 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 23) = *(*a2 + v106);
            goto LABEL_341;
          case 22:
            *v7 |= 0x80000uLL;
            v118 = *(a2 + 1);
            if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 30) = *(*a2 + v118);
            goto LABEL_341;
          case 23:
            *v7 |= 0x800uLL;
            v135 = *(a2 + 1);
            if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 22) = *(*a2 + v135);
            goto LABEL_341;
          case 24:
            *v7 |= 0x4000000uLL;
            v141 = *(a2 + 1);
            if (v141 > 0xFFFFFFFFFFFFFFFBLL || v141 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 37) = *(*a2 + v141);
            goto LABEL_341;
          case 25:
            *v7 |= 0x40000000000000uLL;
            v80 = *(a2 + 1);
            if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 65) = *(*a2 + v80);
            goto LABEL_341;
          case 26:
            *v7 |= 0x20000000000000uLL;
            v79 = *(a2 + 1);
            if (v79 > 0xFFFFFFFFFFFFFFFBLL || v79 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 64) = *(*a2 + v79);
            goto LABEL_341;
          case 27:
            *v7 |= 0x4000000000000000uLL;
            v145 = *(a2 + 1);
            if (v145 > 0xFFFFFFFFFFFFFFFBLL || v145 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 73) = *(*a2 + v145);
            goto LABEL_341;
          case 28:
            *v7 |= 0x800000000000uLL;
            v37 = *(a2 + 1);
            if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 58) = *(*a2 + v37);
            goto LABEL_341;
          case 29:
            *v7 |= 0x1000000000000uLL;
            v142 = *(a2 + 1);
            if (v142 > 0xFFFFFFFFFFFFFFFBLL || v142 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 59) = *(*a2 + v142);
            goto LABEL_341;
          case 30:
            *v7 |= 0x1000000000000000uLL;
            v143 = *(a2 + 1);
            if (v143 > 0xFFFFFFFFFFFFFFFBLL || v143 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 71) = *(*a2 + v143);
            goto LABEL_341;
          case 31:
            *v7 |= 0x10000000000000uLL;
            v132 = *(a2 + 1);
            if (v132 > 0xFFFFFFFFFFFFFFFBLL || v132 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 63) = *(*a2 + v132);
            goto LABEL_341;
          case 32:
            *v7 |= 0x800000000000000uLL;
            v103 = *(a2 + 1);
            if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 70) = *(*a2 + v103);
            goto LABEL_341;
          case 33:
            *v7 |= 0x8000000000000uLL;
            v133 = *(a2 + 1);
            if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 62) = *(*a2 + v133);
            goto LABEL_341;
          case 34:
            *(this + 324) |= 1u;
            v60 = *(a2 + 1);
            if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 75) = *(*a2 + v60);
            goto LABEL_341;
          case 35:
            *v7 |= 0x200000000000000uLL;
            v38 = *(a2 + 1);
            if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 68) = *(*a2 + v38);
            goto LABEL_341;
          case 36:
            *v7 |= 0x4000000000000uLL;
            v35 = *(a2 + 1);
            if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 61) = *(*a2 + v35);
            goto LABEL_341;
          case 37:
            *v7 |= 0x100000000000000uLL;
            v36 = *(a2 + 1);
            if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 67) = *(*a2 + v36);
            goto LABEL_341;
          case 38:
            *v7 |= 0x2000000000000uLL;
            v31 = *(a2 + 1);
            if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 60) = *(*a2 + v31);
            goto LABEL_341;
          case 39:
            *v7 |= 0x8000000000000000;
            v144 = *(a2 + 1);
            if (v144 > 0xFFFFFFFFFFFFFFFBLL || v144 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 74) = *(*a2 + v144);
            goto LABEL_341;
          case 40:
            *v7 |= 0x800000000uLL;
            v136 = *(a2 + 1);
            if (v136 > 0xFFFFFFFFFFFFFFFBLL || v136 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 46) = *(*a2 + v136);
            goto LABEL_341;
          case 41:
            *v7 |= 0x400000000uLL;
            v74 = *(a2 + 1);
            if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 45) = *(*a2 + v74);
            goto LABEL_341;
          case 42:
            *v7 |= 0x80000000000uLL;
            v105 = *(a2 + 1);
            if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 54) = *(*a2 + v105);
            goto LABEL_341;
          case 43:
            *v7 |= 0x10000000uLL;
            v139 = *(a2 + 1);
            if (v139 > 0xFFFFFFFFFFFFFFFBLL || v139 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 39) = *(*a2 + v139);
            goto LABEL_341;
          case 44:
            *v7 |= 0x20000000uLL;
            v30 = *(a2 + 1);
            if (v30 > 0xFFFFFFFFFFFFFFFBLL || v30 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 40) = *(*a2 + v30);
            goto LABEL_341;
          case 45:
            *v7 |= 0x20000000000uLL;
            v58 = *(a2 + 1);
            if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 52) = *(*a2 + v58);
            goto LABEL_341;
          case 46:
            *v7 |= 0x200000000uLL;
            v134 = *(a2 + 1);
            if (v134 > 0xFFFFFFFFFFFFFFFBLL || v134 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 44) = *(*a2 + v134);
            goto LABEL_341;
          case 47:
            *v7 |= 0x10000000000uLL;
            v165 = *(a2 + 1);
            if (v165 > 0xFFFFFFFFFFFFFFFBLL || v165 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 51) = *(*a2 + v165);
            goto LABEL_341;
          case 48:
            *v7 |= 0x100000000uLL;
            v33 = *(a2 + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 43) = *(*a2 + v33);
            goto LABEL_341;
          case 49:
            *v7 |= 0x200000000000uLL;
            v61 = *(a2 + 1);
            if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 56) = *(*a2 + v61);
            goto LABEL_341;
          case 50:
            *v7 |= 0x4000000000uLL;
            v64 = *(a2 + 1);
            if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 49) = *(*a2 + v64);
            goto LABEL_341;
          case 51:
            *v7 |= 0x80000000uLL;
            v29 = *(a2 + 1);
            if (v29 > 0xFFFFFFFFFFFFFFFBLL || v29 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 42) = *(*a2 + v29);
            goto LABEL_341;
          case 52:
            *v7 |= 0x2000000000uLL;
            v166 = *(a2 + 1);
            if (v166 > 0xFFFFFFFFFFFFFFFBLL || v166 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 48) = *(*a2 + v166);
            goto LABEL_341;
          case 53:
            *v7 |= 0x40000000uLL;
            v164 = *(a2 + 1);
            if (v164 > 0xFFFFFFFFFFFFFFFBLL || v164 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 41) = *(*a2 + v164);
            goto LABEL_341;
          case 54:
            *v7 |= 0x100000000000uLL;
            v32 = *(a2 + 1);
            if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 55) = *(*a2 + v32);
            goto LABEL_341;
          case 55:
            *v7 |= 8uLL;
            v147 = *(a2 + 1);
            v146 = *(a2 + 2);
            v148 = *a2;
            if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
            {
              v149 = 0;
              v150 = 0;
              v151 = 0;
              v152 = (v148 + v147);
              v153 = v147 + 1;
              do
              {
                *(a2 + 1) = v153;
                v154 = *v152++;
                v151 |= (v154 & 0x7F) << v149;
                if ((v154 & 0x80) == 0)
                {
                  goto LABEL_377;
                }

                v149 += 7;
                ++v153;
                v15 = v150++ > 8;
              }

              while (!v15);
LABEL_330:
              v151 = 0;
              goto LABEL_377;
            }

            v209 = 0;
            v210 = 0;
            v151 = 0;
            v211 = (v148 + v147);
            v19 = v146 >= v147;
            v212 = v146 - v147;
            if (!v19)
            {
              v212 = 0;
            }

            v213 = v147 + 1;
            while (2)
            {
              if (v212)
              {
                v214 = *v211;
                *(a2 + 1) = v213;
                v151 |= (v214 & 0x7F) << v209;
                if (v214 < 0)
                {
                  v209 += 7;
                  ++v211;
                  --v212;
                  ++v213;
                  v15 = v210++ > 8;
                  if (v15)
                  {
                    goto LABEL_330;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v151 = 0;
                }
              }

              else
              {
                v151 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_377:
            *(this + 4) = v151;
            goto LABEL_342;
          case 56:
            *v7 |= 0x10uLL;
            v156 = *(a2 + 1);
            v155 = *(a2 + 2);
            v157 = *a2;
            if (v156 <= 0xFFFFFFFFFFFFFFF5 && v156 + 10 <= v155)
            {
              v158 = 0;
              v159 = 0;
              v160 = 0;
              v161 = (v157 + v156);
              v162 = v156 + 1;
              do
              {
                *(a2 + 1) = v162;
                v163 = *v161++;
                v160 |= (v163 & 0x7F) << v158;
                if ((v163 & 0x80) == 0)
                {
                  goto LABEL_380;
                }

                v158 += 7;
                ++v162;
                v15 = v159++ > 8;
              }

              while (!v15);
LABEL_338:
              v160 = 0;
              goto LABEL_380;
            }

            v215 = 0;
            v216 = 0;
            v160 = 0;
            v217 = (v157 + v156);
            v19 = v155 >= v156;
            v218 = v155 - v156;
            if (!v19)
            {
              v218 = 0;
            }

            v219 = v156 + 1;
            break;
          case 57:
            *v7 |= 0x1000000uLL;
            v34 = *(a2 + 1);
            if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 35) = *(*a2 + v34);
            goto LABEL_341;
          case 58:
            *v7 |= 0x2000000000000000uLL;
            v138 = *(a2 + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 72) = *(*a2 + v138);
            goto LABEL_341;
          case 59:
            *v7 |= 0x40000000000uLL;
            v62 = *(a2 + 1);
            if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 53) = *(*a2 + v62);
            goto LABEL_341;
          case 60:
            *v7 |= 0x40000uLL;
            v140 = *(a2 + 1);
            if (v140 > 0xFFFFFFFFFFFFFFFBLL || v140 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 29) = *(*a2 + v140);
            goto LABEL_341;
          case 61:
            *v7 |= 0x80000000000000uLL;
            v75 = *(a2 + 1);
            if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 66) = *(*a2 + v75);
            goto LABEL_341;
          case 62:
            *v7 |= 0x1000000000uLL;
            v107 = *(a2 + 1);
            if (v107 > 0xFFFFFFFFFFFFFFFBLL || v107 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 47) = *(*a2 + v107);
            goto LABEL_341;
          case 63:
            *v7 |= 0x200000uLL;
            v117 = *(a2 + 1);
            if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 32) = *(*a2 + v117);
            goto LABEL_341;
          case 64:
            *v7 |= 0x400000000000000uLL;
            v83 = *(a2 + 1);
            if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
            {
              goto LABEL_264;
            }

            *(this + 69) = *(*a2 + v83);
            goto LABEL_341;
          case 65:
            *v7 |= 0x8000000000uLL;
            v76 = *(a2 + 1);
            if (v76 <= 0xFFFFFFFFFFFFFFFBLL && v76 + 4 <= *(a2 + 2))
            {
              *(this + 50) = *(*a2 + v76);
              goto LABEL_341;
            }

LABEL_264:
            *(a2 + 24) = 1;
            goto LABEL_342;
          default:
            goto LABEL_18;
        }

        while (1)
        {
          if (!v218)
          {
            v160 = 0;
            *(a2 + 24) = 1;
            goto LABEL_380;
          }

          v220 = *v217;
          *(a2 + 1) = v219;
          v160 |= (v220 & 0x7F) << v215;
          if ((v220 & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          ++v217;
          --v218;
          ++v219;
          v15 = v216++ > 8;
          if (v15)
          {
            goto LABEL_338;
          }
        }

        if (*(a2 + 24))
        {
          v160 = 0;
        }

LABEL_380:
        *(this + 5) = v160;
      }

LABEL_342:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_382;
      }
    }

    v16 = 0;
    v17 = 0;
    v11 = 0;
    v18 = (v8 + v2);
    v19 = v3 >= v2;
    v20 = v3 - v2;
    if (!v19)
    {
      v20 = 0;
    }

    v21 = v2 + 1;
    while (v20)
    {
      v22 = *v18;
      *(a2 + 1) = v21;
      v11 |= (v22 & 0x7F) << v16;
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      v16 += 7;
      ++v18;
      --v20;
      ++v21;
      v15 = v17++ > 8;
      if (v15)
      {
        goto LABEL_18;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_382:
  v222 = v4 ^ 1;
  return v222 & 1;
}

uint64_t CMMsl::KappaPulseResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 324);
  if ((v4 & 8) != 0)
  {
    v5 = *(this + 312);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 324);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 304));
    v4 = *(v3 + 324);
  }

  v6 = (v3 + 316);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 308));
  }

  v7 = *v6;
  if ((*v6 & 0x20) != 0)
  {
    v9 = *(v3 + 48);
    this = PB::Writer::writeVarInt(a2);
    v7 = *v6;
    if ((*v6 & 0x40) == 0)
    {
LABEL_9:
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_77;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_9;
  }

  v10 = *(v3 + 56);
  this = PB::Writer::writeVarInt(a2);
  v7 = *v6;
  if ((*v6 & 1) == 0)
  {
LABEL_10:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_78;
  }

LABEL_77:
  v11 = *(v3 + 8);
  this = PB::Writer::writeVarInt(a2);
  v7 = *v6;
  if ((*v6 & 0x8000) == 0)
  {
LABEL_11:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = PB::Writer::write(a2, *(v3 + 104));
  v7 = *v6;
  if ((*v6 & 0x80) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_80;
  }

LABEL_79:
  v12 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v7 = *v6;
  if ((*v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_81;
  }

LABEL_80:
  v13 = *(v3 + 72);
  this = PB::Writer::writeVarInt(a2);
  v7 = *v6;
  if ((*v6 & 0x20000) == 0)
  {
LABEL_14:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = PB::Writer::write(a2, *(v3 + 112));
  v7 = *v6;
  if ((*v6 & 0x10000) == 0)
  {
LABEL_15:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = PB::Writer::write(a2, *(v3 + 108));
  v7 = *v6;
  if ((*v6 & 0x2000000) == 0)
  {
LABEL_16:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = PB::Writer::write(a2, *(v3 + 144));
  v7 = *v6;
  if ((*v6 & 0x200) == 0)
  {
LABEL_17:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = PB::Writer::write(a2, *(v3 + 80));
  v7 = *v6;
  if ((*v6 & 0x400) == 0)
  {
LABEL_18:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = PB::Writer::write(a2, *(v3 + 84));
  v7 = *v6;
  if ((*v6 & 0x800000) == 0)
  {
LABEL_19:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = PB::Writer::write(a2, *(v3 + 136));
  v7 = *v6;
  if ((*v6 & 0x4000) == 0)
  {
LABEL_20:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = PB::Writer::write(a2, *(v3 + 100));
  v7 = *v6;
  if ((*v6 & 0x400000) == 0)
  {
LABEL_21:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = PB::Writer::write(a2, *(v3 + 132));
  v7 = *v6;
  if ((*v6 & 0x2000) == 0)
  {
LABEL_22:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = PB::Writer::write(a2, *(v3 + 96));
  v7 = *v6;
  if ((*v6 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = PB::Writer::write(a2, *(v3 + 152));
  v7 = *v6;
  if ((*v6 & 0x100000) == 0)
  {
LABEL_24:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_92;
  }

LABEL_91:
  this = PB::Writer::write(a2, *(v3 + 124));
  v7 = *v6;
  if ((*v6 & 0x1000) == 0)
  {
LABEL_25:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = PB::Writer::write(a2, *(v3 + 92));
  v7 = *v6;
  if ((*v6 & 0x80000) == 0)
  {
LABEL_26:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_94;
  }

LABEL_93:
  this = PB::Writer::write(a2, *(v3 + 120));
  v7 = *v6;
  if ((*v6 & 0x800) == 0)
  {
LABEL_27:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = PB::Writer::write(a2, *(v3 + 88));
  v7 = *v6;
  if ((*v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v7 & 0x40000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_96;
  }

LABEL_95:
  this = PB::Writer::write(a2, *(v3 + 148));
  v7 = *v6;
  if ((*v6 & 0x40000000000000) == 0)
  {
LABEL_29:
    if ((v7 & 0x20000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = PB::Writer::write(a2, *(v3 + 260));
  v7 = *v6;
  if ((*v6 & 0x20000000000000) == 0)
  {
LABEL_30:
    if ((v7 & 0x4000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_98;
  }

LABEL_97:
  this = PB::Writer::write(a2, *(v3 + 256));
  v7 = *v6;
  if ((*v6 & 0x4000000000000000) == 0)
  {
LABEL_31:
    if ((v7 & 0x800000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_99;
  }

LABEL_98:
  this = PB::Writer::write(a2, *(v3 + 292));
  v7 = *v6;
  if ((*v6 & 0x800000000000) == 0)
  {
LABEL_32:
    if ((v7 & 0x1000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_100;
  }

LABEL_99:
  this = PB::Writer::write(a2, *(v3 + 232));
  v7 = *v6;
  if ((*v6 & 0x1000000000000) == 0)
  {
LABEL_33:
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_101;
  }

LABEL_100:
  this = PB::Writer::write(a2, *(v3 + 236));
  v7 = *v6;
  if ((*v6 & 0x1000000000000000) == 0)
  {
LABEL_34:
    if ((v7 & 0x10000000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = PB::Writer::write(a2, *(v3 + 284));
  v7 = *v6;
  if ((*v6 & 0x10000000000000) == 0)
  {
LABEL_35:
    if ((v7 & 0x800000000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = PB::Writer::write(a2, *(v3 + 252));
  v7 = *v6;
  if ((*v6 & 0x800000000000000) == 0)
  {
LABEL_36:
    if ((v7 & 0x8000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_103:
  this = PB::Writer::write(a2, *(v3 + 280));
  if ((*v6 & 0x8000000000000) != 0)
  {
LABEL_37:
    this = PB::Writer::write(a2, *(v3 + 248));
  }

LABEL_38:
  if (*(v3 + 324))
  {
    this = PB::Writer::write(a2, *(v3 + 300));
  }

  v8 = *v6;
  if ((*v6 & 0x200000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 272));
    v8 = *v6;
    if ((*v6 & 0x4000000000000) == 0)
    {
LABEL_42:
      if ((v8 & 0x100000000000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_107;
    }
  }

  else if ((v8 & 0x4000000000000) == 0)
  {
    goto LABEL_42;
  }

  this = PB::Writer::write(a2, *(v3 + 244));
  v8 = *v6;
  if ((*v6 & 0x100000000000000) == 0)
  {
LABEL_43:
    if ((v8 & 0x2000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = PB::Writer::write(a2, *(v3 + 268));
  v8 = *v6;
  if ((*v6 & 0x2000000000000) == 0)
  {
LABEL_44:
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = PB::Writer::write(a2, *(v3 + 240));
  v8 = *v6;
  if ((*v6 & 0x8000000000000000) == 0)
  {
LABEL_45:
    if ((v8 & 0x800000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = PB::Writer::write(a2, *(v3 + 296));
  v8 = *v6;
  if ((*v6 & 0x800000000) == 0)
  {
LABEL_46:
    if ((v8 & 0x400000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = PB::Writer::write(a2, *(v3 + 184));
  v8 = *v6;
  if ((*v6 & 0x400000000) == 0)
  {
LABEL_47:
    if ((v8 & 0x80000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = PB::Writer::write(a2, *(v3 + 180));
  v8 = *v6;
  if ((*v6 & 0x80000000000) == 0)
  {
LABEL_48:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = PB::Writer::write(a2, *(v3 + 216));
  v8 = *v6;
  if ((*v6 & 0x10000000) == 0)
  {
LABEL_49:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = PB::Writer::write(a2, *(v3 + 156));
  v8 = *v6;
  if ((*v6 & 0x20000000) == 0)
  {
LABEL_50:
    if ((v8 & 0x20000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = PB::Writer::write(a2, *(v3 + 160));
  v8 = *v6;
  if ((*v6 & 0x20000000000) == 0)
  {
LABEL_51:
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_116;
  }

LABEL_115:
  this = PB::Writer::write(a2, *(v3 + 208));
  v8 = *v6;
  if ((*v6 & 0x200000000) == 0)
  {
LABEL_52:
    if ((v8 & 0x10000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_117;
  }

LABEL_116:
  this = PB::Writer::write(a2, *(v3 + 176));
  v8 = *v6;
  if ((*v6 & 0x10000000000) == 0)
  {
LABEL_53:
    if ((v8 & 0x100000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = PB::Writer::write(a2, *(v3 + 204));
  v8 = *v6;
  if ((*v6 & 0x100000000) == 0)
  {
LABEL_54:
    if ((v8 & 0x200000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_119;
  }

LABEL_118:
  this = PB::Writer::write(a2, *(v3 + 172));
  v8 = *v6;
  if ((*v6 & 0x200000000000) == 0)
  {
LABEL_55:
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_120;
  }

LABEL_119:
  this = PB::Writer::write(a2, *(v3 + 224));
  v8 = *v6;
  if ((*v6 & 0x4000000000) == 0)
  {
LABEL_56:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_121;
  }

LABEL_120:
  this = PB::Writer::write(a2, *(v3 + 196));
  v8 = *v6;
  if ((*v6 & 0x80000000) == 0)
  {
LABEL_57:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_122;
  }

LABEL_121:
  this = PB::Writer::write(a2, *(v3 + 168));
  v8 = *v6;
  if ((*v6 & 0x2000000000) == 0)
  {
LABEL_58:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_123;
  }

LABEL_122:
  this = PB::Writer::write(a2, *(v3 + 192));
  v8 = *v6;
  if ((*v6 & 0x40000000) == 0)
  {
LABEL_59:
    if ((v8 & 0x100000000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_124;
  }

LABEL_123:
  this = PB::Writer::write(a2, *(v3 + 164));
  v8 = *v6;
  if ((*v6 & 0x100000000000) == 0)
  {
LABEL_60:
    if ((v8 & 8) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = PB::Writer::write(a2, *(v3 + 220));
  v8 = *v6;
  if ((*v6 & 8) == 0)
  {
LABEL_61:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_126;
  }

LABEL_125:
  v14 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v8 = *v6;
  if ((*v6 & 0x10) == 0)
  {
LABEL_62:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_127;
  }

LABEL_126:
  v15 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v8 = *v6;
  if ((*v6 & 0x1000000) == 0)
  {
LABEL_63:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = PB::Writer::write(a2, *(v3 + 140));
  v8 = *v6;
  if ((*v6 & 0x2000000000000000) == 0)
  {
LABEL_64:
    if ((v8 & 0x40000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = PB::Writer::write(a2, *(v3 + 288));
  v8 = *v6;
  if ((*v6 & 0x40000000000) == 0)
  {
LABEL_65:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = PB::Writer::write(a2, *(v3 + 212));
  v8 = *v6;
  if ((*v6 & 0x40000) == 0)
  {
LABEL_66:
    if ((v8 & 0x80000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = PB::Writer::write(a2, *(v3 + 116));
  v8 = *v6;
  if ((*v6 & 0x80000000000000) == 0)
  {
LABEL_67:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = PB::Writer::write(a2, *(v3 + 264));
  v8 = *v6;
  if ((*v6 & 0x1000000000) == 0)
  {
LABEL_68:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = PB::Writer::write(a2, *(v3 + 188));
  v8 = *v6;
  if ((*v6 & 0x200000) == 0)
  {
LABEL_69:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = PB::Writer::write(a2, *(v3 + 128));
  v8 = *v6;
  if ((*v6 & 0x400000000000000) == 0)
  {
LABEL_70:
    if ((v8 & 0x8000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = PB::Writer::write(a2, *(v3 + 276));
  v8 = *v6;
  if ((*v6 & 0x8000000000) == 0)
  {
LABEL_71:
    if ((v8 & 2) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = PB::Writer::write(a2, *(v3 + 200));
  v8 = *v6;
  if ((*v6 & 2) == 0)
  {
LABEL_72:
    if ((v8 & 4) == 0)
    {
      goto LABEL_73;
    }

LABEL_137:
    v17 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    if ((*v6 & 0x400000000000) == 0)
    {
      return this;
    }

    goto LABEL_138;
  }

LABEL_136:
  v16 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v8 = *v6;
  if ((*v6 & 4) != 0)
  {
    goto LABEL_137;
  }

LABEL_73:
  if ((v8 & 0x400000000000) == 0)
  {
    return this;
  }

LABEL_138:
  v18 = *(v3 + 228);

  return PB::Writer::write(a2, v18);
}

uint64_t CMMsl::KappaPulseResult::hash_value(CMMsl::KappaPulseResult *this)
{
  if ((*(this + 324) & 8) != 0)
  {
    v1 = *(this + 312);
  }

  else
  {
    v1 = 0;
  }

  if ((*(this + 324) & 2) != 0)
  {
    v2 = *(this + 76);
    v3 = LODWORD(v2);
    if (v2 == 0.0)
    {
      v3 = 0;
    }

    v165 = v3;
  }

  else
  {
    v165 = 0;
  }

  v4 = (this + 316);
  if ((*(this + 324) & 4) != 0)
  {
    v5 = *(this + 77);
    v6 = LODWORD(v5);
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    v164 = v6;
  }

  else
  {
    v164 = 0;
  }

  v7 = *v4;
  if ((*v4 & 0x20) != 0)
  {
    v163 = *(this + 6);
    if ((v7 & 0x40) != 0)
    {
LABEL_16:
      v162 = *(this + 7);
      if (v7)
      {
        goto LABEL_17;
      }

      goto LABEL_206;
    }
  }

  else
  {
    v163 = 0;
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_16;
    }
  }

  v162 = 0;
  if (v7)
  {
LABEL_17:
    v161 = *(this + 1);
    if ((v7 & 0x8000) != 0)
    {
      goto LABEL_18;
    }

LABEL_207:
    v160 = 0;
    if ((v7 & 0x80) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_208;
  }

LABEL_206:
  v161 = 0;
  if ((v7 & 0x8000) == 0)
  {
    goto LABEL_207;
  }

LABEL_18:
  v8 = *(this + 26);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  v160 = v9;
  if ((v7 & 0x80) != 0)
  {
LABEL_21:
    v159 = *(this + 8);
    if ((v7 & 0x100) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_209;
  }

LABEL_208:
  v159 = 0;
  if ((v7 & 0x100) != 0)
  {
LABEL_22:
    v158 = *(this + 9);
    if ((v7 & 0x20000) != 0)
    {
      goto LABEL_23;
    }

LABEL_210:
    v157 = 0;
    if ((v7 & 0x10000) != 0)
    {
      goto LABEL_26;
    }

LABEL_211:
    v156 = 0;
    if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_29;
    }

LABEL_212:
    v155 = 0;
    if ((v7 & 0x200) != 0)
    {
      goto LABEL_32;
    }

LABEL_213:
    v154 = 0;
    if ((v7 & 0x400) != 0)
    {
      goto LABEL_35;
    }

LABEL_214:
    v153 = 0;
    if ((v7 & 0x800000) != 0)
    {
      goto LABEL_38;
    }

LABEL_215:
    v152 = 0;
    if ((v7 & 0x4000) != 0)
    {
      goto LABEL_41;
    }

LABEL_216:
    v151 = 0;
    if ((v7 & 0x400000) != 0)
    {
      goto LABEL_44;
    }

LABEL_217:
    v150 = 0;
    if ((v7 & 0x2000) != 0)
    {
      goto LABEL_47;
    }

LABEL_218:
    v149 = 0;
    if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_219:
    v148 = 0;
    if ((v7 & 0x100000) != 0)
    {
      goto LABEL_53;
    }

LABEL_220:
    v147 = 0;
    if ((v7 & 0x1000) != 0)
    {
      goto LABEL_56;
    }

LABEL_221:
    v146 = 0;
    if ((v7 & 0x80000) != 0)
    {
      goto LABEL_59;
    }

LABEL_222:
    v145 = 0;
    if ((v7 & 0x800) != 0)
    {
      goto LABEL_62;
    }

LABEL_223:
    v144 = 0;
    if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_224:
    v143 = 0;
    if ((v7 & 0x40000000000000) != 0)
    {
      goto LABEL_68;
    }

LABEL_225:
    v142 = 0;
    if ((v7 & 0x20000000000000) != 0)
    {
      goto LABEL_71;
    }

LABEL_226:
    v141 = 0;
    if ((v7 & 0x4000000000000000) != 0)
    {
      goto LABEL_74;
    }

LABEL_227:
    v140 = 0;
    if ((v7 & 0x800000000000) != 0)
    {
      goto LABEL_77;
    }

LABEL_228:
    v139 = 0;
    if ((v7 & 0x1000000000000) != 0)
    {
      goto LABEL_80;
    }

LABEL_229:
    v138 = 0;
    if ((v7 & 0x1000000000000000) != 0)
    {
      goto LABEL_83;
    }

LABEL_230:
    v137 = 0;
    if ((v7 & 0x10000000000000) != 0)
    {
      goto LABEL_86;
    }

LABEL_231:
    v136 = 0;
    if ((v7 & 0x800000000000000) != 0)
    {
      goto LABEL_89;
    }

LABEL_232:
    v135 = 0;
    if ((v7 & 0x8000000000000) != 0)
    {
      goto LABEL_92;
    }

LABEL_233:
    v134 = 0;
    if (*(this + 324))
    {
      goto LABEL_95;
    }

LABEL_234:
    v133 = 0;
    if ((v7 & 0x200000000000000) != 0)
    {
      goto LABEL_98;
    }

LABEL_235:
    v132 = 0;
    if ((v7 & 0x4000000000000) != 0)
    {
      goto LABEL_101;
    }

LABEL_236:
    v131 = 0;
    if ((v7 & 0x100000000000000) != 0)
    {
      goto LABEL_104;
    }

LABEL_237:
    v130 = 0;
    if ((v7 & 0x2000000000000) != 0)
    {
      goto LABEL_107;
    }

LABEL_238:
    v129 = 0;
    if (v7 < 0)
    {
      goto LABEL_110;
    }

LABEL_239:
    v128 = 0;
    if ((v7 & 0x800000000) != 0)
    {
      goto LABEL_113;
    }

LABEL_240:
    v127 = 0;
    if ((v7 & 0x400000000) != 0)
    {
      goto LABEL_116;
    }

LABEL_241:
    v126 = 0;
    if ((v7 & 0x80000000000) != 0)
    {
      goto LABEL_119;
    }

LABEL_242:
    v125 = 0;
    if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_122;
    }

LABEL_243:
    v77 = 0;
    if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_126;
    }

LABEL_244:
    v79 = 0;
    if ((v7 & 0x20000000000) != 0)
    {
      goto LABEL_130;
    }

LABEL_245:
    v81 = 0;
    if ((v7 & 0x200000000) != 0)
    {
      goto LABEL_134;
    }

LABEL_246:
    v83 = 0;
    if ((v7 & 0x10000000000) != 0)
    {
      goto LABEL_138;
    }

LABEL_247:
    v85 = 0;
    if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_142;
    }

LABEL_248:
    v87 = 0;
    if ((v7 & 0x200000000000) != 0)
    {
      goto LABEL_146;
    }

LABEL_249:
    v89 = 0;
    if ((v7 & 0x4000000000) != 0)
    {
      goto LABEL_150;
    }

LABEL_250:
    v91 = 0;
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_154;
    }

LABEL_251:
    v93 = 0;
    if ((v7 & 0x2000000000) != 0)
    {
      goto LABEL_158;
    }

LABEL_252:
    v95 = 0;
    if ((v7 & 0x40000000) != 0)
    {
      goto LABEL_162;
    }

LABEL_253:
    v97 = 0;
    if ((v7 & 0x100000000000) != 0)
    {
      goto LABEL_166;
    }

LABEL_254:
    v99 = 0;
    if ((v7 & 8) != 0)
    {
      goto LABEL_170;
    }

    goto LABEL_255;
  }

LABEL_209:
  v158 = 0;
  if ((v7 & 0x20000) == 0)
  {
    goto LABEL_210;
  }

LABEL_23:
  v10 = *(this + 28);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  v157 = v11;
  if ((v7 & 0x10000) == 0)
  {
    goto LABEL_211;
  }

LABEL_26:
  v12 = *(this + 27);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  v156 = v13;
  if ((v7 & 0x2000000) == 0)
  {
    goto LABEL_212;
  }

LABEL_29:
  v14 = *(this + 36);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  v155 = v15;
  if ((v7 & 0x200) == 0)
  {
    goto LABEL_213;
  }

LABEL_32:
  v16 = *(this + 20);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  v154 = v17;
  if ((v7 & 0x400) == 0)
  {
    goto LABEL_214;
  }

LABEL_35:
  v18 = *(this + 21);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  v153 = v19;
  if ((v7 & 0x800000) == 0)
  {
    goto LABEL_215;
  }

LABEL_38:
  v20 = *(this + 34);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  v152 = v21;
  if ((v7 & 0x4000) == 0)
  {
    goto LABEL_216;
  }

LABEL_41:
  v22 = *(this + 25);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  v151 = v23;
  if ((v7 & 0x400000) == 0)
  {
    goto LABEL_217;
  }

LABEL_44:
  v24 = *(this + 33);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  v150 = v25;
  if ((v7 & 0x2000) == 0)
  {
    goto LABEL_218;
  }

LABEL_47:
  v26 = *(this + 24);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  v149 = v27;
  if ((v7 & 0x8000000) == 0)
  {
    goto LABEL_219;
  }

LABEL_50:
  v28 = *(this + 38);
  v29 = LODWORD(v28);
  if (v28 == 0.0)
  {
    v29 = 0;
  }

  v148 = v29;
  if ((v7 & 0x100000) == 0)
  {
    goto LABEL_220;
  }

LABEL_53:
  v30 = *(this + 31);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  v147 = v31;
  if ((v7 & 0x1000) == 0)
  {
    goto LABEL_221;
  }

LABEL_56:
  v32 = *(this + 23);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  v146 = v33;
  if ((v7 & 0x80000) == 0)
  {
    goto LABEL_222;
  }

LABEL_59:
  v34 = *(this + 30);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  v145 = v35;
  if ((v7 & 0x800) == 0)
  {
    goto LABEL_223;
  }

LABEL_62:
  v36 = *(this + 22);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  v144 = v37;
  if ((v7 & 0x4000000) == 0)
  {
    goto LABEL_224;
  }

LABEL_65:
  v38 = *(this + 37);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  v143 = v39;
  if ((v7 & 0x40000000000000) == 0)
  {
    goto LABEL_225;
  }

LABEL_68:
  v40 = *(this + 65);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  v142 = v41;
  if ((v7 & 0x20000000000000) == 0)
  {
    goto LABEL_226;
  }

LABEL_71:
  v42 = *(this + 64);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  v141 = v43;
  if ((v7 & 0x4000000000000000) == 0)
  {
    goto LABEL_227;
  }

LABEL_74:
  v44 = *(this + 73);
  v45 = LODWORD(v44);
  if (v44 == 0.0)
  {
    v45 = 0;
  }

  v140 = v45;
  if ((v7 & 0x800000000000) == 0)
  {
    goto LABEL_228;
  }

LABEL_77:
  v46 = *(this + 58);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  v139 = v47;
  if ((v7 & 0x1000000000000) == 0)
  {
    goto LABEL_229;
  }

LABEL_80:
  v48 = *(this + 59);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  v138 = v49;
  if ((v7 & 0x1000000000000000) == 0)
  {
    goto LABEL_230;
  }

LABEL_83:
  v50 = *(this + 71);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  v137 = v51;
  if ((v7 & 0x10000000000000) == 0)
  {
    goto LABEL_231;
  }

LABEL_86:
  v52 = *(this + 63);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  v136 = v53;
  if ((v7 & 0x800000000000000) == 0)
  {
    goto LABEL_232;
  }

LABEL_89:
  v54 = *(this + 70);
  v55 = LODWORD(v54);
  if (v54 == 0.0)
  {
    v55 = 0;
  }

  v135 = v55;
  if ((v7 & 0x8000000000000) == 0)
  {
    goto LABEL_233;
  }

LABEL_92:
  v56 = *(this + 62);
  v57 = LODWORD(v56);
  if (v56 == 0.0)
  {
    v57 = 0;
  }

  v134 = v57;
  if ((*(this + 324) & 1) == 0)
  {
    goto LABEL_234;
  }

LABEL_95:
  v58 = *(this + 75);
  v59 = LODWORD(v58);
  if (v58 == 0.0)
  {
    v59 = 0;
  }

  v133 = v59;
  if ((v7 & 0x200000000000000) == 0)
  {
    goto LABEL_235;
  }

LABEL_98:
  v60 = *(this + 68);
  v61 = LODWORD(v60);
  if (v60 == 0.0)
  {
    v61 = 0;
  }

  v132 = v61;
  if ((v7 & 0x4000000000000) == 0)
  {
    goto LABEL_236;
  }

LABEL_101:
  v62 = *(this + 61);
  v63 = LODWORD(v62);
  if (v62 == 0.0)
  {
    v63 = 0;
  }

  v131 = v63;
  if ((v7 & 0x100000000000000) == 0)
  {
    goto LABEL_237;
  }

LABEL_104:
  v64 = *(this + 67);
  v65 = LODWORD(v64);
  if (v64 == 0.0)
  {
    v65 = 0;
  }

  v130 = v65;
  if ((v7 & 0x2000000000000) == 0)
  {
    goto LABEL_238;
  }

LABEL_107:
  v66 = *(this + 60);
  v67 = LODWORD(v66);
  if (v66 == 0.0)
  {
    v67 = 0;
  }

  v129 = v67;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_239;
  }

LABEL_110:
  v68 = *(this + 74);
  v69 = LODWORD(v68);
  if (v68 == 0.0)
  {
    v69 = 0;
  }

  v128 = v69;
  if ((v7 & 0x800000000) == 0)
  {
    goto LABEL_240;
  }

LABEL_113:
  v70 = *(this + 46);
  v71 = LODWORD(v70);
  if (v70 == 0.0)
  {
    v71 = 0;
  }

  v127 = v71;
  if ((v7 & 0x400000000) == 0)
  {
    goto LABEL_241;
  }

LABEL_116:
  v72 = *(this + 45);
  v73 = LODWORD(v72);
  if (v72 == 0.0)
  {
    v73 = 0;
  }

  v126 = v73;
  if ((v7 & 0x80000000000) == 0)
  {
    goto LABEL_242;
  }

LABEL_119:
  v74 = *(this + 54);
  v75 = LODWORD(v74);
  if (v74 == 0.0)
  {
    v75 = 0;
  }

  v125 = v75;
  if ((v7 & 0x10000000) == 0)
  {
    goto LABEL_243;
  }

LABEL_122:
  v76 = *(this + 39);
  if (v76 == 0.0)
  {
    v77 = 0;
  }

  else
  {
    v77 = LODWORD(v76);
  }

  if ((v7 & 0x20000000) == 0)
  {
    goto LABEL_244;
  }

LABEL_126:
  v78 = *(this + 40);
  if (v78 == 0.0)
  {
    v79 = 0;
  }

  else
  {
    v79 = LODWORD(v78);
  }

  if ((v7 & 0x20000000000) == 0)
  {
    goto LABEL_245;
  }

LABEL_130:
  v80 = *(this + 52);
  if (v80 == 0.0)
  {
    v81 = 0;
  }

  else
  {
    v81 = LODWORD(v80);
  }

  if ((v7 & 0x200000000) == 0)
  {
    goto LABEL_246;
  }

LABEL_134:
  v82 = *(this + 44);
  if (v82 == 0.0)
  {
    v83 = 0;
  }

  else
  {
    v83 = LODWORD(v82);
  }

  if ((v7 & 0x10000000000) == 0)
  {
    goto LABEL_247;
  }

LABEL_138:
  v84 = *(this + 51);
  if (v84 == 0.0)
  {
    v85 = 0;
  }

  else
  {
    v85 = LODWORD(v84);
  }

  if ((v7 & 0x100000000) == 0)
  {
    goto LABEL_248;
  }

LABEL_142:
  v86 = *(this + 43);
  if (v86 == 0.0)
  {
    v87 = 0;
  }

  else
  {
    v87 = LODWORD(v86);
  }

  if ((v7 & 0x200000000000) == 0)
  {
    goto LABEL_249;
  }

LABEL_146:
  v88 = *(this + 56);
  if (v88 == 0.0)
  {
    v89 = 0;
  }

  else
  {
    v89 = LODWORD(v88);
  }

  if ((v7 & 0x4000000000) == 0)
  {
    goto LABEL_250;
  }

LABEL_150:
  v90 = *(this + 49);
  if (v90 == 0.0)
  {
    v91 = 0;
  }

  else
  {
    v91 = LODWORD(v90);
  }

  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_251;
  }

LABEL_154:
  v92 = *(this + 42);
  if (v92 == 0.0)
  {
    v93 = 0;
  }

  else
  {
    v93 = LODWORD(v92);
  }

  if ((v7 & 0x2000000000) == 0)
  {
    goto LABEL_252;
  }

LABEL_158:
  v94 = *(this + 48);
  if (v94 == 0.0)
  {
    v95 = 0;
  }

  else
  {
    v95 = LODWORD(v94);
  }

  if ((v7 & 0x40000000) == 0)
  {
    goto LABEL_253;
  }

LABEL_162:
  v96 = *(this + 41);
  if (v96 == 0.0)
  {
    v97 = 0;
  }

  else
  {
    v97 = LODWORD(v96);
  }

  if ((v7 & 0x100000000000) == 0)
  {
    goto LABEL_254;
  }

LABEL_166:
  v98 = *(this + 55);
  if (v98 == 0.0)
  {
    v99 = 0;
  }

  else
  {
    v99 = LODWORD(v98);
  }

  if ((v7 & 8) != 0)
  {
LABEL_170:
    v100 = *(this + 4);
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_171;
    }

    goto LABEL_256;
  }

LABEL_255:
  v100 = 0;
  if ((v7 & 0x10) != 0)
  {
LABEL_171:
    v101 = *(this + 5);
    if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_172;
    }

LABEL_257:
    v103 = 0;
    if ((v7 & 0x2000000000000000) != 0)
    {
      goto LABEL_175;
    }

LABEL_258:
    v105 = 0;
    if ((v7 & 0x40000000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_259:
    v107 = 0;
    if ((v7 & 0x40000) != 0)
    {
      goto LABEL_181;
    }

LABEL_260:
    v109 = 0;
    if ((v7 & 0x80000000000000) != 0)
    {
      goto LABEL_184;
    }

LABEL_261:
    v111 = 0;
    if ((v7 & 0x1000000000) != 0)
    {
      goto LABEL_187;
    }

LABEL_262:
    v113 = 0;
    if ((v7 & 0x200000) != 0)
    {
      goto LABEL_190;
    }

LABEL_263:
    v115 = 0;
    if ((v7 & 0x400000000000000) != 0)
    {
      goto LABEL_193;
    }

LABEL_264:
    v117 = 0;
    if ((v7 & 0x8000000000) != 0)
    {
      goto LABEL_196;
    }

LABEL_265:
    v119 = 0;
    if ((v7 & 2) != 0)
    {
      goto LABEL_199;
    }

    goto LABEL_266;
  }

LABEL_256:
  v101 = 0;
  if ((v7 & 0x1000000) == 0)
  {
    goto LABEL_257;
  }

LABEL_172:
  v102 = *(this + 35);
  v103 = LODWORD(v102);
  if (v102 == 0.0)
  {
    v103 = 0;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    goto LABEL_258;
  }

LABEL_175:
  v104 = *(this + 72);
  v105 = LODWORD(v104);
  if (v104 == 0.0)
  {
    v105 = 0;
  }

  if ((v7 & 0x40000000000) == 0)
  {
    goto LABEL_259;
  }

LABEL_178:
  v106 = *(this + 53);
  v107 = LODWORD(v106);
  if (v106 == 0.0)
  {
    v107 = 0;
  }

  if ((v7 & 0x40000) == 0)
  {
    goto LABEL_260;
  }

LABEL_181:
  v108 = *(this + 29);
  v109 = LODWORD(v108);
  if (v108 == 0.0)
  {
    v109 = 0;
  }

  if ((v7 & 0x80000000000000) == 0)
  {
    goto LABEL_261;
  }

LABEL_184:
  v110 = *(this + 66);
  v111 = LODWORD(v110);
  if (v110 == 0.0)
  {
    v111 = 0;
  }

  if ((v7 & 0x1000000000) == 0)
  {
    goto LABEL_262;
  }

LABEL_187:
  v112 = *(this + 47);
  v113 = LODWORD(v112);
  if (v112 == 0.0)
  {
    v113 = 0;
  }

  if ((v7 & 0x200000) == 0)
  {
    goto LABEL_263;
  }

LABEL_190:
  v114 = *(this + 32);
  v115 = LODWORD(v114);
  if (v114 == 0.0)
  {
    v115 = 0;
  }

  if ((v7 & 0x400000000000000) == 0)
  {
    goto LABEL_264;
  }

LABEL_193:
  v116 = *(this + 69);
  v117 = LODWORD(v116);
  if (v116 == 0.0)
  {
    v117 = 0;
  }

  if ((v7 & 0x8000000000) == 0)
  {
    goto LABEL_265;
  }

LABEL_196:
  v118 = *(this + 50);
  v119 = LODWORD(v118);
  if (v118 == 0.0)
  {
    v119 = 0;
  }

  if ((v7 & 2) != 0)
  {
LABEL_199:
    v120 = *(this + 2);
    if ((v7 & 4) != 0)
    {
      goto LABEL_200;
    }

    goto LABEL_267;
  }

LABEL_266:
  v120 = 0;
  if ((v7 & 4) != 0)
  {
LABEL_200:
    v121 = *(this + 3);
    if ((v7 & 0x400000000000) != 0)
    {
      goto LABEL_201;
    }

LABEL_268:
    v123 = 0;
    return v165 ^ v1 ^ v164 ^ v163 ^ v162 ^ v161 ^ v160 ^ v159 ^ v158 ^ v157 ^ v156 ^ v155 ^ v154 ^ v153 ^ v152 ^ v151 ^ v150 ^ v149 ^ v148 ^ v147 ^ v146 ^ v145 ^ v144 ^ v143 ^ v142 ^ v141 ^ v140 ^ v139 ^ v138 ^ v137 ^ v136 ^ v135 ^ v134 ^ v133 ^ v132 ^ v131 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v77 ^ v79 ^ v81 ^ v83 ^ v85 ^ v87 ^ v89 ^ v91 ^ v93 ^ v95 ^ v97 ^ v99 ^ v100 ^ v101 ^ v103 ^ v105 ^ v107 ^ v109 ^ v111 ^ v113 ^ v115 ^ v117 ^ v119 ^ v120 ^ v121 ^ v123;
  }

LABEL_267:
  v121 = 0;
  if ((v7 & 0x400000000000) == 0)
  {
    goto LABEL_268;
  }

LABEL_201:
  v122 = *(this + 57);
  v123 = LODWORD(v122);
  if (v122 == 0.0)
  {
    v123 = 0;
  }

  return v165 ^ v1 ^ v164 ^ v163 ^ v162 ^ v161 ^ v160 ^ v159 ^ v158 ^ v157 ^ v156 ^ v155 ^ v154 ^ v153 ^ v152 ^ v151 ^ v150 ^ v149 ^ v148 ^ v147 ^ v146 ^ v145 ^ v144 ^ v143 ^ v142 ^ v141 ^ v140 ^ v139 ^ v138 ^ v137 ^ v136 ^ v135 ^ v134 ^ v133 ^ v132 ^ v131 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v77 ^ v79 ^ v81 ^ v83 ^ v85 ^ v87 ^ v89 ^ v91 ^ v93 ^ v95 ^ v97 ^ v99 ^ v100 ^ v101 ^ v103 ^ v105 ^ v107 ^ v109 ^ v111 ^ v113 ^ v115 ^ v117 ^ v119 ^ v120 ^ v121 ^ v123;
}

void CMMsl::KappaQuiescenceResult::~KappaQuiescenceResult(CMMsl::KappaQuiescenceResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KappaQuiescenceResult::KappaQuiescenceResult(uint64_t this, const CMMsl::KappaQuiescenceResult *a2)
{
  *this = &unk_286C213E8;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 0x10u;
    *(this + 28) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 28) = v3 | 4;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 3);
  v3 |= 2u;
  *(this + 28) = v3;
  *(this + 12) = v7;
  if ((*(a2 + 28) & 4) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::KappaQuiescenceResult::operator=(uint64_t a1, const CMMsl::KappaQuiescenceResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaQuiescenceResult::KappaQuiescenceResult(&v8, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaQuiescenceResult *a2, CMMsl::KappaQuiescenceResult *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  return result;
}

float CMMsl::KappaQuiescenceResult::KappaQuiescenceResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C213E8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C213E8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KappaQuiescenceResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = &unk_286C213E8;
    v3 = *(a2 + 20);
    v4 = *(a2 + 16);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a2 + 28) = 0;
    v12 = *(a1 + 20);
    v13 = *(a1 + 24);
    v7 = *(a1 + 8);
    *(a1 + 20) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v10[1] = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v4;
    v11 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::KappaQuiescenceResult::formatText(CMMsl::KappaQuiescenceResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "configThreshold1", *(this + 2));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "debugX", *(this + 3));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = *(this + 4);
  PB::TextFormatter::format(a2, "debugY");
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "outputA", *(this + 5));
  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "outputB");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaQuiescenceResult::readFrom(CMMsl::KappaQuiescenceResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 100001)
    {
      if (v22 == 100000)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_48:
          *(a2 + 24) = 1;
          goto LABEL_77;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_66;
      }

      if (v22 == 100001)
      {
        *(this + 28) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_48;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_66;
      }
    }

    else
    {
      switch(v22)
      {
        case 0x186A2:
          *(this + 28) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v39 = 0;
            v40 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v41 = (v32 + v31);
            v42 = v2 - v31;
            v43 = v31 + 1;
            while (1)
            {
              if (!v42)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_72;
              }

              v44 = v43;
              v45 = *v41;
              *(a2 + 1) = v44;
              v35 |= (v45 & 0x7F) << v39;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v41;
              --v42;
              v43 = v44 + 1;
              v14 = v40++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_71;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_71:
            v2 = v44;
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
              *(a2 + 1) = v37;
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

LABEL_72:
          *(this + 6) = v35;
          goto LABEL_77;
        case 0x186A3:
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_48;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_66:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_77;
        case 0x186A4:
          *(this + 28) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v48 = (v24 + v23);
            v49 = v2 - v23;
            v50 = v23 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_76;
              }

              v51 = v50;
              v52 = *v48;
              *(a2 + 1) = v51;
              v27 |= (v52 & 0x7F) << v46;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              ++v48;
              --v49;
              v50 = v51 + 1;
              v14 = v47++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_75;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_75:
            v2 = v51;
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
              *(a2 + 1) = v29;
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

LABEL_76:
          *(this + 4) = v27;
          goto LABEL_77;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_77:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::KappaQuiescenceResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 12));
    if ((*(v3 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v5 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_11:
  v6 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::KappaQuiescenceResult::hash_value(CMMsl::KappaQuiescenceResult *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v3 = 0;
    if ((*(this + 28) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v8 = *(this + 2);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_6:
    v4 = *(this + 6);
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((*(this + 28) & 2) != 0)
  {
LABEL_7:
    v5 = *(this + 3);
    v6 = LODWORD(v5);
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v4 ^ v6 ^ v7;
  }

LABEL_16:
  v6 = 0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v7 = *(this + 4);
  return v3 ^ v1 ^ v4 ^ v6 ^ v7;
}

void CMMsl::KappaRecoveryResult::~KappaRecoveryResult(CMMsl::KappaRecoveryResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KappaRecoveryResult::KappaRecoveryResult(uint64_t this, const CMMsl::KappaRecoveryResult *a2)
{
  *this = &unk_286C21420;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 0x10u;
    *(this + 28) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 28) = v3 | 4;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 3);
  v3 |= 2u;
  *(this + 28) = v3;
  *(this + 12) = v7;
  if ((*(a2 + 28) & 4) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::KappaRecoveryResult::operator=(uint64_t a1, const CMMsl::KappaRecoveryResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaRecoveryResult::KappaRecoveryResult(&v8, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaRecoveryResult *a2, CMMsl::KappaRecoveryResult *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  return result;
}

float CMMsl::KappaRecoveryResult::KappaRecoveryResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21420;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C21420;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KappaRecoveryResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = &unk_286C21420;
    v3 = *(a2 + 20);
    v4 = *(a2 + 16);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a2 + 28) = 0;
    v12 = *(a1 + 20);
    v13 = *(a1 + 24);
    v7 = *(a1 + 8);
    *(a1 + 20) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v10[1] = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v4;
    v11 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::KappaRecoveryResult::formatText(CMMsl::KappaRecoveryResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "configThreshold1", *(this + 2));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "debugX", *(this + 3));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = *(this + 4);
  PB::TextFormatter::format(a2, "debugY");
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "outputA", *(this + 5));
  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_6:
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "outputB");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaRecoveryResult::readFrom(CMMsl::KappaRecoveryResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 100001)
    {
      if (v22 == 100000)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_48:
          *(a2 + 24) = 1;
          goto LABEL_77;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_66;
      }

      if (v22 == 100001)
      {
        *(this + 28) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_48;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_66;
      }
    }

    else
    {
      switch(v22)
      {
        case 0x186A2:
          *(this + 28) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v39 = 0;
            v40 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v41 = (v32 + v31);
            v42 = v2 - v31;
            v43 = v31 + 1;
            while (1)
            {
              if (!v42)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_72;
              }

              v44 = v43;
              v45 = *v41;
              *(a2 + 1) = v44;
              v35 |= (v45 & 0x7F) << v39;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v41;
              --v42;
              v43 = v44 + 1;
              v14 = v40++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_71;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_71:
            v2 = v44;
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
              *(a2 + 1) = v37;
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

LABEL_72:
          *(this + 6) = v35;
          goto LABEL_77;
        case 0x186A3:
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_48;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_66:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_77;
        case 0x186A4:
          *(this + 28) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v48 = (v24 + v23);
            v49 = v2 - v23;
            v50 = v23 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_76;
              }

              v51 = v50;
              v52 = *v48;
              *(a2 + 1) = v51;
              v27 |= (v52 & 0x7F) << v46;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              ++v48;
              --v49;
              v50 = v51 + 1;
              v14 = v47++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_75;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_75:
            v2 = v51;
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
              *(a2 + 1) = v29;
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

LABEL_76:
          *(this + 4) = v27;
          goto LABEL_77;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_77:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::KappaRecoveryResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 12));
    if ((*(v3 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v5 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_11:
  v6 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::KappaRecoveryResult::hash_value(CMMsl::KappaRecoveryResult *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v3 = 0;
    if ((*(this + 28) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v8 = *(this + 2);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_6:
    v4 = *(this + 6);
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((*(this + 28) & 2) != 0)
  {
LABEL_7:
    v5 = *(this + 3);
    v6 = LODWORD(v5);
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v4 ^ v6 ^ v7;
  }

LABEL_16:
  v6 = 0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v7 = *(this + 4);
  return v3 ^ v1 ^ v4 ^ v6 ^ v7;
}

void CMMsl::KappaRemoteAudioResult::~KappaRemoteAudioResult(CMMsl::KappaRemoteAudioResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::KappaRemoteAudioResult::KappaRemoteAudioResult(uint64_t this, const CMMsl::KappaRemoteAudioResult *a2)
{
  *this = &unk_286C21458;
  *(this + 204) = 0;
  *(this + 212) = 0;
  v2 = *(a2 + 204);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 204) = 1;
    *(this + 8) = v4;
    if ((*(a2 + 204) & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 10);
    v3 |= 0x10uLL;
    *(this + 204) = v3;
    *(this + 40) = v5;
  }

LABEL_6:
  if ((*(a2 + 212) & 2) != 0)
  {
    v7 = *(a2 + 188);
    v6 = 2;
    *(this + 212) = 2;
    *(this + 188) = v7;
  }

  else
  {
    v6 = 0;
  }

  if ((*(a2 + 206) & 0x20) != 0)
  {
    v8 = *(a2 + 27);
    v3 |= 0x200000uLL;
    *(this + 204) = v3;
    *(this + 108) = v8;
  }

  if ((*(a2 + 212) & 4) != 0)
  {
    v9 = *(a2 + 189);
    v6 |= 4u;
    *(this + 212) = v6;
    *(this + 189) = v9;
  }

  v10 = *(a2 + 204);
  if ((v10 & 2) != 0)
  {
    v61 = *(a2 + 2);
    v3 |= 2uLL;
    *(this + 204) = v3;
    *(this + 16) = v61;
    v10 = *(a2 + 204);
    if ((v10 & 0x400000) == 0)
    {
LABEL_15:
      if ((v10 & 0x4000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_128;
    }
  }

  else if ((v10 & 0x400000) == 0)
  {
    goto LABEL_15;
  }

  v62 = *(a2 + 28);
  v3 |= 0x400000uLL;
  *(this + 204) = v3;
  *(this + 112) = v62;
  v10 = *(a2 + 204);
  if ((v10 & 0x4000) == 0)
  {
LABEL_16:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_129;
  }

LABEL_128:
  v63 = *(a2 + 20);
  v3 |= 0x4000uLL;
  *(this + 204) = v3;
  *(this + 80) = v63;
  v10 = *(a2 + 204);
  if ((v10 & 0x40) == 0)
  {
LABEL_17:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_130;
  }

LABEL_129:
  v64 = *(a2 + 12);
  v3 |= 0x40uLL;
  *(this + 204) = v3;
  *(this + 48) = v64;
  v10 = *(a2 + 204);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v10 & 0x400000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_131;
  }

LABEL_130:
  v65 = *(a2 + 32);
  v3 |= 0x4000000uLL;
  *(this + 204) = v3;
  *(this + 128) = v65;
  v10 = *(a2 + 204);
  if ((v10 & 0x400000000000000) == 0)
  {
LABEL_19:
    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_131:
  v66 = *(a2 + 181);
  v3 |= 0x400000000000000uLL;
  *(this + 204) = v3;
  *(this + 181) = v66;
  if ((*(a2 + 204) & 0x400000000) != 0)
  {
LABEL_20:
    v11 = *(a2 + 157);
    v3 |= 0x400000000uLL;
    *(this + 204) = v3;
    *(this + 157) = v11;
  }

LABEL_21:
  if ((*(a2 + 213) & 4) != 0)
  {
    v12 = *(a2 + 197);
    v6 |= 0x400u;
    *(this + 212) = v6;
    *(this + 197) = v12;
  }

  v13 = *(a2 + 204);
  if ((v13 & 0x40000000000) != 0)
  {
    v14 = *(a2 + 165);
    v3 |= 0x40000000000uLL;
    *(this + 204) = v3;
    *(this + 165) = v14;
    v13 = *(a2 + 204);
  }

  if ((v13 & 0x4000000000000) != 0)
  {
    v15 = *(a2 + 173);
    v3 |= 0x4000000000000uLL;
    *(this + 204) = v3;
    *(this + 173) = v15;
  }

  if ((*(a2 + 212) & 8) != 0)
  {
    v16 = *(a2 + 190);
    v6 |= 8u;
    *(this + 212) = v6;
    *(this + 190) = v16;
  }

  v17 = *(a2 + 204);
  if ((v17 & 0x40000) != 0)
  {
    v67 = *(a2 + 24);
    v3 |= 0x40000uLL;
    *(this + 204) = v3;
    *(this + 96) = v67;
    v17 = *(a2 + 204);
    if ((v17 & 0x400) == 0)
    {
LABEL_31:
      if ((v17 & 0x40000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_135;
    }
  }

  else if ((v17 & 0x400) == 0)
  {
    goto LABEL_31;
  }

  v68 = *(a2 + 16);
  v3 |= 0x400uLL;
  *(this + 204) = v3;
  *(this + 64) = v68;
  v17 = *(a2 + 204);
  if ((v17 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v17 & 0x4000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_136;
  }

LABEL_135:
  v69 = *(a2 + 36);
  v3 |= 0x40000000uLL;
  *(this + 204) = v3;
  *(this + 144) = v69;
  v17 = *(a2 + 204);
  if ((v17 & 0x4000000000000000) == 0)
  {
LABEL_33:
    if ((v17 & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_136:
  v70 = *(a2 + 185);
  v3 |= 0x4000000000000000uLL;
  *(this + 204) = v3;
  *(this + 185) = v70;
  if ((*(a2 + 204) & 0x4000000000) != 0)
  {
LABEL_34:
    v18 = *(a2 + 161);
    v3 |= 0x4000000000uLL;
    *(this + 204) = v3;
    *(this + 161) = v18;
  }

LABEL_35:
  if ((*(a2 + 213) & 0x40) != 0)
  {
    v19 = *(a2 + 201);
    v6 |= 0x4000u;
    *(this + 212) = v6;
    *(this + 201) = v19;
  }

  v20 = *(a2 + 204);
  if ((v20 & 0x400000000000) != 0)
  {
    v21 = *(a2 + 169);
    v3 |= 0x400000000000uLL;
    *(this + 204) = v3;
    *(this + 169) = v21;
    v20 = *(a2 + 204);
  }

  if ((v20 & 0x40000000000000) != 0)
  {
    v22 = *(a2 + 177);
    v3 |= 0x40000000000000uLL;
    *(this + 204) = v3;
    *(this + 177) = v22;
  }

  if ((*(a2 + 212) & 0x40) != 0)
  {
    v23 = *(a2 + 193);
    v6 |= 0x40u;
    *(this + 212) = v6;
    *(this + 193) = v23;
  }

  v24 = *(a2 + 204);
  if ((v24 & 4) != 0)
  {
    v71 = *(a2 + 3);
    v3 |= 4uLL;
    *(this + 204) = v3;
    *(this + 24) = v71;
    v24 = *(a2 + 204);
    if ((v24 & 0x800000) == 0)
    {
LABEL_45:
      if ((v24 & 0x8000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_140;
    }
  }

  else if ((v24 & 0x800000) == 0)
  {
    goto LABEL_45;
  }

  v72 = *(a2 + 29);
  v3 |= 0x800000uLL;
  *(this + 204) = v3;
  *(this + 116) = v72;
  v24 = *(a2 + 204);
  if ((v24 & 0x8000) == 0)
  {
LABEL_46:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_141;
  }

LABEL_140:
  v73 = *(a2 + 21);
  v3 |= 0x8000uLL;
  *(this + 204) = v3;
  *(this + 84) = v73;
  v24 = *(a2 + 204);
  if ((v24 & 0x80) == 0)
  {
LABEL_47:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_142;
  }

LABEL_141:
  v74 = *(a2 + 13);
  v3 |= 0x80uLL;
  *(this + 204) = v3;
  *(this + 52) = v74;
  v24 = *(a2 + 204);
  if ((v24 & 0x8000000) == 0)
  {
LABEL_48:
    if ((v24 & 0x800000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_143;
  }

LABEL_142:
  v75 = *(a2 + 33);
  v3 |= 0x8000000uLL;
  *(this + 204) = v3;
  *(this + 132) = v75;
  v24 = *(a2 + 204);
  if ((v24 & 0x800000000000000) == 0)
  {
LABEL_49:
    if ((v24 & 0x800000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_143:
  v76 = *(a2 + 182);
  v3 |= 0x800000000000000uLL;
  *(this + 204) = v3;
  *(this + 182) = v76;
  if ((*(a2 + 204) & 0x800000000) != 0)
  {
LABEL_50:
    v25 = *(a2 + 158);
    v3 |= 0x800000000uLL;
    *(this + 204) = v3;
    *(this + 158) = v25;
  }

LABEL_51:
  if ((*(a2 + 213) & 8) != 0)
  {
    v26 = *(a2 + 198);
    v6 |= 0x800u;
    *(this + 212) = v6;
    *(this + 198) = v26;
  }

  v27 = *(a2 + 204);
  if ((v27 & 0x80000000000) != 0)
  {
    v28 = *(a2 + 166);
    v3 |= 0x80000000000uLL;
    *(this + 204) = v3;
    *(this + 166) = v28;
    v27 = *(a2 + 204);
  }

  if ((v27 & 0x8000000000000) != 0)
  {
    v29 = *(a2 + 174);
    v3 |= 0x8000000000000uLL;
    *(this + 204) = v3;
    *(this + 174) = v29;
  }

  if ((*(a2 + 212) & 0x10) != 0)
  {
    v30 = *(a2 + 191);
    v6 |= 0x10u;
    *(this + 212) = v6;
    *(this + 191) = v30;
  }

  v31 = *(a2 + 204);
  if ((v31 & 0x80000) != 0)
  {
    v77 = *(a2 + 25);
    v3 |= 0x80000uLL;
    *(this + 204) = v3;
    *(this + 100) = v77;
    v31 = *(a2 + 204);
    if ((v31 & 0x800) == 0)
    {
LABEL_61:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_147;
    }
  }

  else if ((v31 & 0x800) == 0)
  {
    goto LABEL_61;
  }

  v78 = *(a2 + 17);
  v3 |= 0x800uLL;
  *(this + 204) = v3;
  *(this + 68) = v78;
  v31 = *(a2 + 204);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_148;
  }

LABEL_147:
  v79 = *(a2 + 37);
  v3 |= 0x80000000uLL;
  *(this + 204) = v3;
  *(this + 148) = v79;
  v31 = *(a2 + 204);
  if ((v31 & 0x8000000000000000) == 0)
  {
LABEL_63:
    if ((v31 & 0x8000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_148:
  v80 = *(a2 + 186);
  v3 |= 0x8000000000000000;
  *(this + 204) = v3;
  *(this + 186) = v80;
  if ((*(a2 + 204) & 0x8000000000) != 0)
  {
LABEL_64:
    v32 = *(a2 + 162);
    v3 |= 0x8000000000uLL;
    *(this + 204) = v3;
    *(this + 162) = v32;
  }

LABEL_65:
  if ((*(a2 + 213) & 0x80) != 0)
  {
    v33 = *(a2 + 202);
    v6 |= 0x8000u;
    *(this + 212) = v6;
    *(this + 202) = v33;
  }

  v34 = *(a2 + 204);
  if ((v34 & 0x800000000000) != 0)
  {
    v35 = *(a2 + 170);
    v3 |= 0x800000000000uLL;
    *(this + 204) = v3;
    *(this + 170) = v35;
    v34 = *(a2 + 204);
  }

  if ((v34 & 0x80000000000000) != 0)
  {
    v36 = *(a2 + 178);
    v3 |= 0x80000000000000uLL;
    *(this + 204) = v3;
    *(this + 178) = v36;
  }

  if ((*(a2 + 212) & 0x80) != 0)
  {
    v37 = *(a2 + 194);
    v6 |= 0x80u;
    *(this + 212) = v6;
    *(this + 194) = v37;
  }

  v38 = *(a2 + 204);
  if ((v38 & 8) != 0)
  {
    v81 = *(a2 + 4);
    v3 |= 8uLL;
    *(this + 204) = v3;
    *(this + 32) = v81;
    v38 = *(a2 + 204);
    if ((v38 & 0x1000000) == 0)
    {
LABEL_75:
      if ((v38 & 0x10000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_152;
    }
  }

  else if ((v38 & 0x1000000) == 0)
  {
    goto LABEL_75;
  }

  v82 = *(a2 + 30);
  v3 |= 0x1000000uLL;
  *(this + 204) = v3;
  *(this + 120) = v82;
  v38 = *(a2 + 204);
  if ((v38 & 0x10000) == 0)
  {
LABEL_76:
    if ((v38 & 0x100) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_153;
  }

LABEL_152:
  v83 = *(a2 + 22);
  v3 |= 0x10000uLL;
  *(this + 204) = v3;
  *(this + 88) = v83;
  v38 = *(a2 + 204);
  if ((v38 & 0x100) == 0)
  {
LABEL_77:
    if ((v38 & 0x10000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_154;
  }

LABEL_153:
  v84 = *(a2 + 14);
  v3 |= 0x100uLL;
  *(this + 204) = v3;
  *(this + 56) = v84;
  v38 = *(a2 + 204);
  if ((v38 & 0x10000000) == 0)
  {
LABEL_78:
    if ((v38 & 0x1000000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_155;
  }

LABEL_154:
  v85 = *(a2 + 34);
  v3 |= 0x10000000uLL;
  *(this + 204) = v3;
  *(this + 136) = v85;
  v38 = *(a2 + 204);
  if ((v38 & 0x1000000000000000) == 0)
  {
LABEL_79:
    if ((v38 & 0x1000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_155:
  v86 = *(a2 + 183);
  v3 |= 0x1000000000000000uLL;
  *(this + 204) = v3;
  *(this + 183) = v86;
  if ((*(a2 + 204) & 0x1000000000) != 0)
  {
LABEL_80:
    v39 = *(a2 + 159);
    v3 |= 0x1000000000uLL;
    *(this + 204) = v3;
    *(this + 159) = v39;
  }

LABEL_81:
  if ((*(a2 + 213) & 0x10) != 0)
  {
    v40 = *(a2 + 199);
    v6 |= 0x1000u;
    *(this + 212) = v6;
    *(this + 199) = v40;
  }

  v41 = *(a2 + 204);
  if ((v41 & 0x100000000000) != 0)
  {
    v42 = *(a2 + 167);
    v3 |= 0x100000000000uLL;
    *(this + 204) = v3;
    *(this + 167) = v42;
    v41 = *(a2 + 204);
  }

  if ((v41 & 0x10000000000000) != 0)
  {
    v43 = *(a2 + 175);
    v3 |= 0x10000000000000uLL;
    *(this + 204) = v3;
    *(this + 175) = v43;
  }

  if ((*(a2 + 212) & 0x20) != 0)
  {
    v44 = *(a2 + 192);
    v6 |= 0x20u;
    *(this + 212) = v6;
    *(this + 192) = v44;
  }

  v45 = *(a2 + 204);
  if ((v45 & 0x100000) != 0)
  {
    v87 = *(a2 + 26);
    v3 |= 0x100000uLL;
    *(this + 204) = v3;
    *(this + 104) = v87;
    v45 = *(a2 + 204);
    if ((v45 & 0x1000) == 0)
    {
LABEL_91:
      if ((v45 & 0x100000000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }
  }

  else if ((v45 & 0x1000) == 0)
  {
    goto LABEL_91;
  }

  v88 = *(a2 + 18);
  v3 |= 0x1000uLL;
  *(this + 204) = v3;
  *(this + 72) = v88;
  if ((*(a2 + 204) & 0x100000000) != 0)
  {
LABEL_92:
    v46 = *(a2 + 38);
    v3 |= 0x100000000uLL;
    *(this + 204) = v3;
    *(this + 152) = v46;
  }

LABEL_93:
  if (*(a2 + 212))
  {
    v47 = *(a2 + 187);
    v6 |= 1u;
    *(this + 212) = v6;
    *(this + 187) = v47;
  }

  if (*(a2 + 209))
  {
    v48 = *(a2 + 163);
    v3 |= 0x10000000000uLL;
    *(this + 204) = v3;
    *(this + 163) = v48;
  }

  if (*(a2 + 214))
  {
    v49 = *(a2 + 203);
    v6 |= 0x10000u;
    *(this + 212) = v6;
    *(this + 203) = v49;
  }

  v50 = *(a2 + 204);
  if ((v50 & 0x1000000000000) != 0)
  {
    v51 = *(a2 + 171);
    v3 |= 0x1000000000000uLL;
    *(this + 204) = v3;
    *(this + 171) = v51;
    v50 = *(a2 + 204);
  }

  if ((v50 & 0x100000000000000) != 0)
  {
    v52 = *(a2 + 179);
    v3 |= 0x100000000000000uLL;
    *(this + 204) = v3;
    *(this + 179) = v52;
  }

  if (*(a2 + 213))
  {
    v53 = *(a2 + 195);
    v6 |= 0x100u;
    *(this + 212) = v6;
    *(this + 195) = v53;
  }

  v54 = *(a2 + 204);
  if ((v54 & 0x2000) != 0)
  {
    v89 = *(a2 + 19);
    v3 |= 0x2000uLL;
    *(this + 204) = v3;
    *(this + 76) = v89;
    v54 = *(a2 + 204);
    if ((v54 & 0x20) == 0)
    {
LABEL_107:
      if ((v54 & 0x2000000) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_162;
    }
  }

  else if ((v54 & 0x20) == 0)
  {
    goto LABEL_107;
  }

  v90 = *(a2 + 11);
  v3 |= 0x20uLL;
  *(this + 204) = v3;
  *(this + 44) = v90;
  v54 = *(a2 + 204);
  if ((v54 & 0x2000000) == 0)
  {
LABEL_108:
    if ((v54 & 0x200000000000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_163;
  }

LABEL_162:
  v91 = *(a2 + 31);
  v3 |= 0x2000000uLL;
  *(this + 204) = v3;
  *(this + 124) = v91;
  v54 = *(a2 + 204);
  if ((v54 & 0x200000000000000) == 0)
  {
LABEL_109:
    if ((v54 & 0x200000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

LABEL_163:
  v92 = *(a2 + 180);
  v3 |= 0x200000000000000uLL;
  *(this + 204) = v3;
  *(this + 180) = v92;
  if ((*(a2 + 204) & 0x200000000) != 0)
  {
LABEL_110:
    v55 = *(a2 + 156);
    v3 |= 0x200000000uLL;
    *(this + 204) = v3;
    *(this + 156) = v55;
  }

LABEL_111:
  if ((*(a2 + 213) & 2) != 0)
  {
    v56 = *(a2 + 196);
    v6 |= 0x200u;
    *(this + 212) = v6;
    *(this + 196) = v56;
  }

  v57 = *(a2 + 204);
  if ((v57 & 0x20000000000) != 0)
  {
    v93 = *(a2 + 164);
    v3 |= 0x20000000000uLL;
    *(this + 204) = v3;
    *(this + 164) = v93;
    v57 = *(a2 + 204);
    if ((v57 & 0x2000000000000) == 0)
    {
LABEL_115:
      if ((v57 & 0x20000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_167;
    }
  }

  else if ((v57 & 0x2000000000000) == 0)
  {
    goto LABEL_115;
  }

  v94 = *(a2 + 172);
  v3 |= 0x2000000000000uLL;
  *(this + 204) = v3;
  *(this + 172) = v94;
  v57 = *(a2 + 204);
  if ((v57 & 0x20000) == 0)
  {
LABEL_116:
    if ((v57 & 0x200) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_168;
  }

LABEL_167:
  v95 = *(a2 + 23);
  v3 |= 0x20000uLL;
  *(this + 204) = v3;
  *(this + 92) = v95;
  v57 = *(a2 + 204);
  if ((v57 & 0x200) == 0)
  {
LABEL_117:
    if ((v57 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_169;
  }

LABEL_168:
  v96 = *(a2 + 15);
  v3 |= 0x200uLL;
  *(this + 204) = v3;
  *(this + 60) = v96;
  v57 = *(a2 + 204);
  if ((v57 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v57 & 0x2000000000000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_170;
  }

LABEL_169:
  v97 = *(a2 + 35);
  v3 |= 0x20000000uLL;
  *(this + 204) = v3;
  *(this + 140) = v97;
  v57 = *(a2 + 204);
  if ((v57 & 0x2000000000000000) == 0)
  {
LABEL_119:
    if ((v57 & 0x2000000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_170:
  v98 = *(a2 + 184);
  v3 |= 0x2000000000000000uLL;
  *(this + 204) = v3;
  *(this + 184) = v98;
  if ((*(a2 + 204) & 0x2000000000) != 0)
  {
LABEL_120:
    v58 = *(a2 + 160);
    v3 |= 0x2000000000uLL;
    *(this + 204) = v3;
    *(this + 160) = v58;
  }

LABEL_121:
  if ((*(a2 + 213) & 0x20) != 0)
  {
    v59 = *(a2 + 200);
    *(this + 212) = v6 | 0x2000;
    *(this + 200) = v59;
  }

  v60 = *(a2 + 204);
  if ((v60 & 0x200000000000) == 0)
  {
    if ((v60 & 0x20000000000000) == 0)
    {
      return this;
    }

LABEL_173:
    v100 = *(a2 + 176);
    *(this + 204) = v3 | 0x20000000000000;
    *(this + 176) = v100;
    return this;
  }

  v99 = *(a2 + 168);
  v3 |= 0x200000000000uLL;
  *(this + 204) = v3;
  *(this + 168) = v99;
  if ((*(a2 + 204) & 0x20000000000000) != 0)
  {
    goto LABEL_173;
  }

  return this;
}

CMMsl *CMMsl::KappaRemoteAudioResult::operator=(CMMsl *a1, const CMMsl::KappaRemoteAudioResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaRemoteAudioResult::KappaRemoteAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaRemoteAudioResult *a2, CMMsl::KappaRemoteAudioResult *a3)
{
  v3 = *(this + 53);
  v4 = *(this + 204);
  v5 = *(a2 + 53);
  *(this + 204) = *(a2 + 204);
  *(this + 53) = v5;
  *(a2 + 204) = v4;
  *(a2 + 53) = v3;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  LODWORD(v6) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  LOBYTE(v6) = *(this + 188);
  *(this + 188) = *(a2 + 188);
  *(a2 + 188) = v6;
  v7 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v7;
  LOBYTE(v6) = *(this + 189);
  *(this + 189) = *(a2 + 189);
  *(a2 + 189) = v6;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v9;
  v10 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  LOBYTE(v8) = *(this + 181);
  *(this + 181) = *(a2 + 181);
  *(a2 + 181) = v8;
  LOBYTE(v8) = *(this + 157);
  *(this + 157) = *(a2 + 157);
  *(a2 + 157) = v8;
  LOBYTE(v8) = *(this + 197);
  *(this + 197) = *(a2 + 197);
  *(a2 + 197) = v8;
  LOBYTE(v8) = *(this + 165);
  *(this + 165) = *(a2 + 165);
  *(a2 + 165) = v8;
  LOBYTE(v8) = *(this + 173);
  *(this + 173) = *(a2 + 173);
  *(a2 + 173) = v8;
  LOBYTE(v8) = *(this + 190);
  *(this + 190) = *(a2 + 190);
  *(a2 + 190) = v8;
  v13 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v13;
  v14 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v14;
  v15 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v15;
  LOBYTE(v8) = *(this + 185);
  *(this + 185) = *(a2 + 185);
  *(a2 + 185) = v8;
  LOBYTE(v8) = *(this + 161);
  *(this + 161) = *(a2 + 161);
  *(a2 + 161) = v8;
  LOBYTE(v8) = *(this + 201);
  *(this + 201) = *(a2 + 201);
  *(a2 + 201) = v8;
  LOBYTE(v8) = *(this + 169);
  *(this + 169) = *(a2 + 169);
  *(a2 + 169) = v8;
  LOBYTE(v8) = *(this + 177);
  *(this + 177) = *(a2 + 177);
  *(a2 + 177) = v8;
  LOBYTE(v8) = *(this + 193);
  *(this + 193) = *(a2 + 193);
  *(a2 + 193) = v8;
  v16 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v16;
  v17 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v17;
  v18 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v18;
  v19 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v19;
  v20 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v20;
  LOBYTE(v16) = *(this + 182);
  *(this + 182) = *(a2 + 182);
  *(a2 + 182) = v16;
  LOBYTE(v16) = *(this + 158);
  *(this + 158) = *(a2 + 158);
  *(a2 + 158) = v16;
  LOBYTE(v16) = *(this + 198);
  *(this + 198) = *(a2 + 198);
  *(a2 + 198) = v16;
  LOBYTE(v16) = *(this + 166);
  *(this + 166) = *(a2 + 166);
  *(a2 + 166) = v16;
  LOBYTE(v16) = *(this + 174);
  *(this + 174) = *(a2 + 174);
  *(a2 + 174) = v16;
  LOBYTE(v16) = *(this + 191);
  *(this + 191) = *(a2 + 191);
  *(a2 + 191) = v16;
  v21 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v21;
  v22 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v22;
  v23 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v23;
  LOBYTE(v16) = *(this + 186);
  *(this + 186) = *(a2 + 186);
  *(a2 + 186) = v16;
  LOBYTE(v16) = *(this + 162);
  *(this + 162) = *(a2 + 162);
  *(a2 + 162) = v16;
  LOBYTE(v16) = *(this + 202);
  *(this + 202) = *(a2 + 202);
  *(a2 + 202) = v16;
  LOBYTE(v16) = *(this + 170);
  *(this + 170) = *(a2 + 170);
  *(a2 + 170) = v16;
  LOBYTE(v16) = *(this + 178);
  *(this + 178) = *(a2 + 178);
  *(a2 + 178) = v16;
  LOBYTE(v16) = *(this + 194);
  *(this + 194) = *(a2 + 194);
  *(a2 + 194) = v16;
  v24 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v24;
  v25 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v25;
  v26 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v26;
  v27 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v27;
  v28 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v28;
  LOBYTE(v24) = *(this + 183);
  *(this + 183) = *(a2 + 183);
  *(a2 + 183) = v24;
  LOBYTE(v24) = *(this + 159);
  *(this + 159) = *(a2 + 159);
  *(a2 + 159) = v24;
  LOBYTE(v24) = *(this + 199);
  *(this + 199) = *(a2 + 199);
  *(a2 + 199) = v24;
  LOBYTE(v24) = *(this + 167);
  *(this + 167) = *(a2 + 167);
  *(a2 + 167) = v24;
  LOBYTE(v24) = *(this + 175);
  *(this + 175) = *(a2 + 175);
  *(a2 + 175) = v24;
  LOBYTE(v24) = *(this + 192);
  *(this + 192) = *(a2 + 192);
  *(a2 + 192) = v24;
  v29 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v29;
  v30 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v30;
  v31 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v31;
  LOBYTE(v24) = *(this + 187);
  *(this + 187) = *(a2 + 187);
  *(a2 + 187) = v24;
  LOBYTE(v24) = *(this + 163);
  *(this + 163) = *(a2 + 163);
  *(a2 + 163) = v24;
  LOBYTE(v24) = *(this + 203);
  *(this + 203) = *(a2 + 203);
  *(a2 + 203) = v24;
  LOBYTE(v24) = *(this + 171);
  *(this + 171) = *(a2 + 171);
  *(a2 + 171) = v24;
  LOBYTE(v24) = *(this + 179);
  *(this + 179) = *(a2 + 179);
  *(a2 + 179) = v24;
  LOBYTE(v24) = *(this + 195);
  *(this + 195) = *(a2 + 195);
  *(a2 + 195) = v24;
  v32 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v32;
  v33 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v33;
  v34 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v34;
  LOBYTE(v24) = *(this + 180);
  *(this + 180) = *(a2 + 180);
  *(a2 + 180) = v24;
  LOBYTE(v24) = *(this + 156);
  *(this + 156) = *(a2 + 156);
  *(a2 + 156) = v24;
  LOBYTE(v24) = *(this + 196);
  *(this + 196) = *(a2 + 196);
  *(a2 + 196) = v24;
  LOBYTE(v24) = *(this + 164);
  *(this + 164) = *(a2 + 164);
  *(a2 + 164) = v24;
  LOBYTE(v24) = *(this + 172);
  *(this + 172) = *(a2 + 172);
  *(a2 + 172) = v24;
  v35 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v35;
  v36 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v36;
  result = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = result;
  LOBYTE(v24) = *(this + 184);
  *(this + 184) = *(a2 + 184);
  *(a2 + 184) = v24;
  LOBYTE(v24) = *(this + 160);
  *(this + 160) = *(a2 + 160);
  *(a2 + 160) = v24;
  LOBYTE(v24) = *(this + 200);
  *(this + 200) = *(a2 + 200);
  *(a2 + 200) = v24;
  LOBYTE(v24) = *(this + 168);
  *(this + 168) = *(a2 + 168);
  *(a2 + 168) = v24;
  LOBYTE(v24) = *(this + 176);
  *(this + 176) = *(a2 + 176);
  *(a2 + 176) = v24;
  return result;
}

float CMMsl::KappaRemoteAudioResult::KappaRemoteAudioResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21458;
  v2 = *(a2 + 204);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 204) = v2;
  *(a2 + 212) = 0;
  *(a2 + 204) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 189) = *(a2 + 189);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 181) = *(a2 + 181);
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 197) = *(a2 + 197);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 173) = *(a2 + 173);
  *(a1 + 190) = *(a2 + 190);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 158) = *(a2 + 158);
  *(a1 + 198) = *(a2 + 198);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 174) = *(a2 + 174);
  *(a1 + 191) = *(a2 + 191);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 162) = *(a2 + 162);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 183) = *(a2 + 183);
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 199) = *(a2 + 199);
  *(a1 + 167) = *(a2 + 167);
  *(a1 + 175) = *(a2 + 175);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 187) = *(a2 + 187);
  *(a1 + 163) = *(a2 + 163);
  *(a1 + 203) = *(a2 + 203);
  *(a1 + 171) = *(a2 + 171);
  *(a1 + 179) = *(a2 + 179);
  *(a1 + 195) = *(a2 + 195);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 60) = *(a2 + 60);
  result = *(a2 + 140);
  *(a1 + 140) = result;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  return result;
}

CMMsl *CMMsl::KappaRemoteAudioResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaRemoteAudioResult::KappaRemoteAudioResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaRemoteAudioResult::formatText(CMMsl::KappaRemoteAudioResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 204);
  if ((v5 & 0x200000000) != 0)
  {
    v12 = *(this + 156);
    PB::TextFormatter::format(a2, "chaosMet");
    v5 = *(this + 204);
    if ((v5 & 0x400000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    }
  }

  else if ((v5 & 0x400000000) == 0)
  {
    goto LABEL_3;
  }

  v13 = *(this + 157);
  PB::TextFormatter::format(a2, "chaosMet0");
  v5 = *(this + 204);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_92;
  }

LABEL_91:
  v14 = *(this + 158);
  PB::TextFormatter::format(a2, "chaosMet1");
  v5 = *(this + 204);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_93;
  }

LABEL_92:
  v15 = *(this + 159);
  PB::TextFormatter::format(a2, "chaosMet2");
  v5 = *(this + 204);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_94;
  }

LABEL_93:
  v16 = *(this + 160);
  PB::TextFormatter::format(a2, "chaosMetRollover");
  v5 = *(this + 204);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_95;
  }

LABEL_94:
  v17 = *(this + 161);
  PB::TextFormatter::format(a2, "chaosMetRollover0");
  v5 = *(this + 204);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_96;
  }

LABEL_95:
  v18 = *(this + 162);
  PB::TextFormatter::format(a2, "chaosMetRollover1");
  v5 = *(this + 204);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_97;
  }

LABEL_96:
  v19 = *(this + 163);
  PB::TextFormatter::format(a2, "chaosMetRollover2");
  v5 = *(this + 204);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_98;
  }

LABEL_97:
  v20 = *(this + 164);
  PB::TextFormatter::format(a2, "chaosOrSaturationMet");
  v5 = *(this + 204);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_99;
  }

LABEL_98:
  v21 = *(this + 165);
  PB::TextFormatter::format(a2, "chaosOrSaturationMet0");
  v5 = *(this + 204);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_99:
  v22 = *(this + 166);
  PB::TextFormatter::format(a2, "chaosOrSaturationMet1");
  v5 = *(this + 204);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_101;
  }

LABEL_100:
  v23 = *(this + 167);
  PB::TextFormatter::format(a2, "chaosOrSaturationMet2");
  v5 = *(this + 204);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_102;
  }

LABEL_101:
  v24 = *(this + 168);
  PB::TextFormatter::format(a2, "chaosOrSaturationMetRollover");
  v5 = *(this + 204);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_103;
  }

LABEL_102:
  v25 = *(this + 169);
  PB::TextFormatter::format(a2, "chaosOrSaturationMetRollover0");
  v5 = *(this + 204);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_104;
  }

LABEL_103:
  v26 = *(this + 170);
  PB::TextFormatter::format(a2, "chaosOrSaturationMetRollover1");
  v5 = *(this + 204);
  if ((v5 & 0x1000000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_105;
  }

LABEL_104:
  v27 = *(this + 171);
  PB::TextFormatter::format(a2, "chaosOrSaturationMetRollover2");
  v5 = *(this + 204);
  if ((v5 & 0x2000000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_106;
  }

LABEL_105:
  v28 = *(this + 172);
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMet");
  v5 = *(this + 204);
  if ((v5 & 0x4000000000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_107;
  }

LABEL_106:
  v29 = *(this + 173);
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMet0");
  v5 = *(this + 204);
  if ((v5 & 0x8000000000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x10000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_108;
  }

LABEL_107:
  v30 = *(this + 174);
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMet1");
  v5 = *(this + 204);
  if ((v5 & 0x10000000000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_109;
  }

LABEL_108:
  v31 = *(this + 175);
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMet2");
  v5 = *(this + 204);
  if ((v5 & 0x20000000000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x40000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_110;
  }

LABEL_109:
  v32 = *(this + 176);
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMetRollover");
  v5 = *(this + 204);
  if ((v5 & 0x40000000000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x80000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_111;
  }

LABEL_110:
  v33 = *(this + 177);
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMetRollover0");
  v5 = *(this + 204);
  if ((v5 & 0x80000000000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x100000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_112;
  }

LABEL_111:
  v34 = *(this + 178);
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMetRollover1");
  v5 = *(this + 204);
  if ((v5 & 0x100000000000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x200000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_113;
  }

LABEL_112:
  v35 = *(this + 179);
  PB::TextFormatter::format(a2, "energyAndChaosOrSaturationMetRollover2");
  v5 = *(this + 204);
  if ((v5 & 0x200000000000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x400000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_114;
  }

LABEL_113:
  v36 = *(this + 180);
  PB::TextFormatter::format(a2, "energyMet");
  v5 = *(this + 204);
  if ((v5 & 0x400000000000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x800000000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_115;
  }

LABEL_114:
  v37 = *(this + 181);
  PB::TextFormatter::format(a2, "energyMet0");
  v5 = *(this + 204);
  if ((v5 & 0x800000000000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_116;
  }

LABEL_115:
  v38 = *(this + 182);
  PB::TextFormatter::format(a2, "energyMet1");
  v5 = *(this + 204);
  if ((v5 & 0x1000000000000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x2000000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_117;
  }

LABEL_116:
  v39 = *(this + 183);
  PB::TextFormatter::format(a2, "energyMet2");
  v5 = *(this + 204);
  if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x4000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_118:
    v41 = *(this + 185);
    PB::TextFormatter::format(a2, "energyMetRollover0");
    if ((*(this + 204) & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_119;
  }

LABEL_117:
  v40 = *(this + 184);
  PB::TextFormatter::format(a2, "energyMetRollover");
  v5 = *(this + 204);
  if ((v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_118;
  }

LABEL_31:
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_119:
  v42 = *(this + 186);
  PB::TextFormatter::format(a2, "energyMetRollover1");
LABEL_32:
  if (*(this + 212))
  {
    v6 = *(this + 187);
    PB::TextFormatter::format(a2, "energyMetRollover2");
  }

  v7 = *(this + 204);
  if ((v7 & 0x10) != 0)
  {
    v43 = *(this + 10);
    PB::TextFormatter::format(a2, "epochNumber");
    v7 = *(this + 204);
    if ((v7 & 0x20) == 0)
    {
LABEL_36:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_122;
    }
  }

  else if ((v7 & 0x20) == 0)
  {
    goto LABEL_36;
  }

  PB::TextFormatter::format(a2, "maxChaos", *(this + 11));
  v7 = *(this + 204);
  if ((v7 & 0x40) == 0)
  {
LABEL_37:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_123;
  }

LABEL_122:
  PB::TextFormatter::format(a2, "maxChaos0", *(this + 12));
  v7 = *(this + 204);
  if ((v7 & 0x80) == 0)
  {
LABEL_38:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_124;
  }

LABEL_123:
  PB::TextFormatter::format(a2, "maxChaos1", *(this + 13));
  v7 = *(this + 204);
  if ((v7 & 0x100) == 0)
  {
LABEL_39:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_125;
  }

LABEL_124:
  PB::TextFormatter::format(a2, "maxChaos2", *(this + 14));
  v7 = *(this + 204);
  if ((v7 & 0x200) == 0)
  {
LABEL_40:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_126;
  }

LABEL_125:
  PB::TextFormatter::format(a2, "maxChaosRollover", *(this + 15));
  v7 = *(this + 204);
  if ((v7 & 0x400) == 0)
  {
LABEL_41:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_127;
  }

LABEL_126:
  PB::TextFormatter::format(a2, "maxChaosRollover0", *(this + 16));
  v7 = *(this + 204);
  if ((v7 & 0x800) == 0)
  {
LABEL_42:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_128;
  }

LABEL_127:
  PB::TextFormatter::format(a2, "maxChaosRollover1", *(this + 17));
  v7 = *(this + 204);
  if ((v7 & 0x1000) == 0)
  {
LABEL_43:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_129;
  }

LABEL_128:
  PB::TextFormatter::format(a2, "maxChaosRollover2", *(this + 18));
  v7 = *(this + 204);
  if ((v7 & 0x2000) == 0)
  {
LABEL_44:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_130;
  }

LABEL_129:
  PB::TextFormatter::format(a2, "maxEnergy", *(this + 19));
  v7 = *(this + 204);
  if ((v7 & 0x4000) == 0)
  {
LABEL_45:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_131;
  }

LABEL_130:
  PB::TextFormatter::format(a2, "maxEnergy0", *(this + 20));
  v7 = *(this + 204);
  if ((v7 & 0x8000) == 0)
  {
LABEL_46:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_132;
  }

LABEL_131:
  PB::TextFormatter::format(a2, "maxEnergy1", *(this + 21));
  v7 = *(this + 204);
  if ((v7 & 0x10000) == 0)
  {
LABEL_47:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_133;
  }

LABEL_132:
  PB::TextFormatter::format(a2, "maxEnergy2", *(this + 22));
  v7 = *(this + 204);
  if ((v7 & 0x20000) == 0)
  {
LABEL_48:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_134;
  }

LABEL_133:
  PB::TextFormatter::format(a2, "maxEnergyRollover", *(this + 23));
  v7 = *(this + 204);
  if ((v7 & 0x40000) == 0)
  {
LABEL_49:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_135;
  }

LABEL_134:
  PB::TextFormatter::format(a2, "maxEnergyRollover0", *(this + 24));
  v7 = *(this + 204);
  if ((v7 & 0x80000) == 0)
  {
LABEL_50:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_136;
  }

LABEL_135:
  PB::TextFormatter::format(a2, "maxEnergyRollover1", *(this + 25));
  v7 = *(this + 204);
  if ((v7 & 0x100000) == 0)
  {
LABEL_51:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_137;
  }

LABEL_136:
  PB::TextFormatter::format(a2, "maxEnergyRollover2", *(this + 26));
  v7 = *(this + 204);
  if ((v7 & 0x200000) == 0)
  {
LABEL_52:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_138;
  }

LABEL_137:
  PB::TextFormatter::format(a2, "maxRMS", *(this + 27));
  v7 = *(this + 204);
  if ((v7 & 0x400000) == 0)
  {
LABEL_53:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_139;
  }

LABEL_138:
  PB::TextFormatter::format(a2, "maxRMS0", *(this + 28));
  v7 = *(this + 204);
  if ((v7 & 0x800000) == 0)
  {
LABEL_54:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_140;
  }

LABEL_139:
  PB::TextFormatter::format(a2, "maxRMS1", *(this + 29));
  v7 = *(this + 204);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_55:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_141;
  }

LABEL_140:
  PB::TextFormatter::format(a2, "maxRMS2", *(this + 30));
  v7 = *(this + 204);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_56:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_142;
  }

LABEL_141:
  PB::TextFormatter::format(a2, "maxSaturation", *(this + 31));
  v7 = *(this + 204);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_57:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_143;
  }

LABEL_142:
  PB::TextFormatter::format(a2, "maxSaturation0", *(this + 32));
  v7 = *(this + 204);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_58:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_144;
  }

LABEL_143:
  PB::TextFormatter::format(a2, "maxSaturation1", *(this + 33));
  v7 = *(this + 204);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_59:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_145;
  }

LABEL_144:
  PB::TextFormatter::format(a2, "maxSaturation2", *(this + 34));
  v7 = *(this + 204);
  if ((v7 & 0x20000000) == 0)
  {
LABEL_60:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_146;
  }

LABEL_145:
  PB::TextFormatter::format(a2, "maxSaturationRollover", *(this + 35));
  v7 = *(this + 204);
  if ((v7 & 0x40000000) == 0)
  {
LABEL_61:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_147;
  }

LABEL_146:
  PB::TextFormatter::format(a2, "maxSaturationRollover0", *(this + 36));
  v7 = *(this + 204);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_147:
  PB::TextFormatter::format(a2, "maxSaturationRollover1", *(this + 37));
  if ((*(this + 204) & 0x100000000) != 0)
  {
LABEL_63:
    PB::TextFormatter::format(a2, "maxSaturationRollover2", *(this + 38));
  }

LABEL_64:
  v8 = *(this + 53);
  if ((v8 & 2) != 0)
  {
    v44 = *(this + 188);
    PB::TextFormatter::format(a2, "passThru");
    v8 = *(this + 53);
    if ((v8 & 4) == 0)
    {
LABEL_66:
      if ((v8 & 8) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_151;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_66;
  }

  v45 = *(this + 189);
  PB::TextFormatter::format(a2, "passThruRollover");
  v8 = *(this + 53);
  if ((v8 & 8) == 0)
  {
LABEL_67:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_152;
  }

LABEL_151:
  v46 = *(this + 190);
  PB::TextFormatter::format(a2, "passthru0");
  v8 = *(this + 53);
  if ((v8 & 0x10) == 0)
  {
LABEL_68:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_153;
  }

LABEL_152:
  v47 = *(this + 191);
  PB::TextFormatter::format(a2, "passthru1");
  v8 = *(this + 53);
  if ((v8 & 0x20) == 0)
  {
LABEL_69:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_154;
  }

LABEL_153:
  v48 = *(this + 192);
  PB::TextFormatter::format(a2, "passthru2");
  v8 = *(this + 53);
  if ((v8 & 0x40) == 0)
  {
LABEL_70:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_155;
  }

LABEL_154:
  v49 = *(this + 193);
  PB::TextFormatter::format(a2, "passthruRollover0");
  v8 = *(this + 53);
  if ((v8 & 0x80) == 0)
  {
LABEL_71:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_156;
  }

LABEL_155:
  v50 = *(this + 194);
  PB::TextFormatter::format(a2, "passthruRollover1");
  v8 = *(this + 53);
  if ((v8 & 0x100) == 0)
  {
LABEL_72:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_157;
  }

LABEL_156:
  v51 = *(this + 195);
  PB::TextFormatter::format(a2, "passthruRollover2");
  v8 = *(this + 53);
  if ((v8 & 0x200) == 0)
  {
LABEL_73:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_158;
  }

LABEL_157:
  v52 = *(this + 196);
  PB::TextFormatter::format(a2, "saturationMet");
  v8 = *(this + 53);
  if ((v8 & 0x400) == 0)
  {
LABEL_74:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_159;
  }

LABEL_158:
  v53 = *(this + 197);
  PB::TextFormatter::format(a2, "saturationMet0");
  v8 = *(this + 53);
  if ((v8 & 0x800) == 0)
  {
LABEL_75:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_160;
  }

LABEL_159:
  v54 = *(this + 198);
  PB::TextFormatter::format(a2, "saturationMet1");
  v8 = *(this + 53);
  if ((v8 & 0x1000) == 0)
  {
LABEL_76:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_161;
  }

LABEL_160:
  v55 = *(this + 199);
  PB::TextFormatter::format(a2, "saturationMet2");
  v8 = *(this + 53);
  if ((v8 & 0x2000) == 0)
  {
LABEL_77:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_162;
  }

LABEL_161:
  v56 = *(this + 200);
  PB::TextFormatter::format(a2, "saturationMetRollover");
  v8 = *(this + 53);
  if ((v8 & 0x4000) == 0)
  {
LABEL_78:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_163;
  }

LABEL_162:
  v57 = *(this + 201);
  PB::TextFormatter::format(a2, "saturationMetRollover0");
  v8 = *(this + 53);
  if ((v8 & 0x8000) == 0)
  {
LABEL_79:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_163:
  v58 = *(this + 202);
  PB::TextFormatter::format(a2, "saturationMetRollover1");
  if ((*(this + 53) & 0x10000) != 0)
  {
LABEL_80:
    v9 = *(this + 203);
    PB::TextFormatter::format(a2, "saturationMetRollover2");
  }

LABEL_81:
  v10 = *(this + 204);
  if (v10)
  {
    v59 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
    v10 = *(this + 204);
    if ((v10 & 2) == 0)
    {
LABEL_83:
      if ((v10 & 4) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_167;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_83;
  }

  v60 = *(this + 2);
  PB::TextFormatter::format(a2, "timestamp0");
  v10 = *(this + 204);
  if ((v10 & 4) == 0)
  {
LABEL_84:
    if ((v10 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_167:
  v61 = *(this + 3);
  PB::TextFormatter::format(a2, "timestamp1");
  if ((*(this + 204) & 8) != 0)
  {
LABEL_85:
    v11 = *(this + 4);
    PB::TextFormatter::format(a2, "timestamp2");
  }

LABEL_86:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::KappaRemoteAudioResult::readFrom(CMMsl::KappaRemoteAudioResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_403:
    v319 = v4 ^ 1;
  }

  else
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_403;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 1102)
      {
        if ((v10 >> 3) <= 0x44E)
        {
          switch(v22)
          {
            case 1103:
              *(this + 204) |= 4uLL;
              v51 = *(a2 + 1);
              v50 = *(a2 + 2);
              v52 = *a2;
              if (v51 <= 0xFFFFFFFFFFFFFFF5 && v51 + 10 <= v50)
              {
                v53 = 0;
                v54 = 0;
                v55 = 0;
                v56 = (v52 + v51);
                v57 = v51 + 1;
                do
                {
                  *(a2 + 1) = v57;
                  v58 = *v56++;
                  v55 |= (v58 & 0x7F) << v53;
                  if ((v58 & 0x80) == 0)
                  {
                    goto LABEL_389;
                  }

                  v53 += 7;
                  ++v57;
                  v14 = v54++ > 8;
                }

                while (!v14);
LABEL_270:
                v55 = 0;
                goto LABEL_389;
              }

              v288 = 0;
              v289 = 0;
              v55 = 0;
              v290 = (v52 + v51);
              v18 = v50 >= v51;
              v291 = v50 - v51;
              if (!v18)
              {
                v291 = 0;
              }

              v292 = v51 + 1;
              break;
            case 1104:
              *(this + 204) |= 0x800000uLL;
              v119 = *(a2 + 1);
              if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 29) = *(*a2 + v119);
              goto LABEL_378;
            case 1105:
              *(this + 204) |= 0x8000uLL;
              v101 = *(a2 + 1);
              if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 21) = *(*a2 + v101);
              goto LABEL_378;
            case 1106:
              *(this + 204) |= 0x80uLL;
              v112 = *(a2 + 1);
              if (v112 > 0xFFFFFFFFFFFFFFFBLL || v112 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 13) = *(*a2 + v112);
              goto LABEL_378;
            case 1107:
              *(this + 204) |= 0x8000000uLL;
              v89 = *(a2 + 1);
              if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 33) = *(*a2 + v89);
              goto LABEL_378;
            case 1108:
              *(this + 204) |= 0x800000000000000uLL;
              v152 = *(a2 + 1);
              if (v152 >= *(a2 + 2))
              {
                v155 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v153 = v152 + 1;
                v154 = *(*a2 + v152);
                *(a2 + 1) = v153;
                v155 = v154 != 0;
              }

              *(this + 182) = v155;
              goto LABEL_379;
            case 1109:
              *(this + 204) |= 0x800000000uLL;
              v158 = *(a2 + 1);
              if (v158 >= *(a2 + 2))
              {
                v161 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v159 = v158 + 1;
                v160 = *(*a2 + v158);
                *(a2 + 1) = v159;
                v161 = v160 != 0;
              }

              *(this + 158) = v161;
              goto LABEL_379;
            case 1110:
              *(this + 53) |= 0x800u;
              v114 = *(a2 + 1);
              if (v114 >= *(a2 + 2))
              {
                v117 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v115 = v114 + 1;
                v116 = *(*a2 + v114);
                *(a2 + 1) = v115;
                v117 = v116 != 0;
              }

              *(this + 198) = v117;
              goto LABEL_379;
            case 1111:
              *(this + 204) |= 0x80000000000uLL;
              v175 = *(a2 + 1);
              if (v175 >= *(a2 + 2))
              {
                v178 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v176 = v175 + 1;
                v177 = *(*a2 + v175);
                *(a2 + 1) = v176;
                v178 = v177 != 0;
              }

              *(this + 166) = v178;
              goto LABEL_379;
            case 1112:
              *(this + 204) |= 0x8000000000000uLL;
              v92 = *(a2 + 1);
              if (v92 >= *(a2 + 2))
              {
                v95 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v93 = v92 + 1;
                v94 = *(*a2 + v92);
                *(a2 + 1) = v93;
                v95 = v94 != 0;
              }

              *(this + 174) = v95;
              goto LABEL_379;
            case 1113:
              *(this + 53) |= 0x10u;
              v171 = *(a2 + 1);
              if (v171 >= *(a2 + 2))
              {
                v174 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v172 = v171 + 1;
                v173 = *(*a2 + v171);
                *(a2 + 1) = v172;
                v174 = v173 != 0;
              }

              *(this + 191) = v174;
              goto LABEL_379;
            case 1114:
              *(this + 204) |= 0x80000uLL;
              v88 = *(a2 + 1);
              if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 25) = *(*a2 + v88);
              goto LABEL_378;
            case 1115:
              *(this + 204) |= 0x800uLL;
              v91 = *(a2 + 1);
              if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 17) = *(*a2 + v91);
              goto LABEL_378;
            case 1116:
              *(this + 204) |= 0x80000000uLL;
              v156 = *(a2 + 1);
              if (v156 > 0xFFFFFFFFFFFFFFFBLL || v156 + 4 > *(a2 + 2))
              {
LABEL_218:
                *(a2 + 24) = 1;
              }

              else
              {
                *(this + 37) = *(*a2 + v156);
LABEL_378:
                *(a2 + 1) += 4;
              }

              goto LABEL_379;
            case 1117:
              *(this + 204) |= 0x8000000000000000;
              v63 = *(a2 + 1);
              if (v63 >= *(a2 + 2))
              {
                v66 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v64 = v63 + 1;
                v65 = *(*a2 + v63);
                *(a2 + 1) = v64;
                v66 = v65 != 0;
              }

              *(this + 186) = v66;
              goto LABEL_379;
            case 1118:
              *(this + 204) |= 0x8000000000uLL;
              v104 = *(a2 + 1);
              if (v104 >= *(a2 + 2))
              {
                v107 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v105 = v104 + 1;
                v106 = *(*a2 + v104);
                *(a2 + 1) = v105;
                v107 = v106 != 0;
              }

              *(this + 162) = v107;
              goto LABEL_379;
            case 1119:
              *(this + 53) |= 0x8000u;
              v59 = *(a2 + 1);
              if (v59 >= *(a2 + 2))
              {
                v62 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v60 = v59 + 1;
                v61 = *(*a2 + v59);
                *(a2 + 1) = v60;
                v62 = v61 != 0;
              }

              *(this + 202) = v62;
              goto LABEL_379;
            case 1120:
              *(this + 204) |= 0x800000000000uLL;
              v138 = *(a2 + 1);
              if (v138 >= *(a2 + 2))
              {
                v141 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v139 = v138 + 1;
                v140 = *(*a2 + v138);
                *(a2 + 1) = v139;
                v141 = v140 != 0;
              }

              *(this + 170) = v141;
              goto LABEL_379;
            case 1121:
              *(this + 204) |= 0x80000000000000uLL;
              v163 = *(a2 + 1);
              if (v163 >= *(a2 + 2))
              {
                v166 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v164 = v163 + 1;
                v165 = *(*a2 + v163);
                *(a2 + 1) = v164;
                v166 = v165 != 0;
              }

              *(this + 178) = v166;
              goto LABEL_379;
            case 1122:
              *(this + 53) |= 0x80u;
              v272 = *(a2 + 1);
              if (v272 >= *(a2 + 2))
              {
                v275 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v273 = v272 + 1;
                v274 = *(*a2 + v272);
                *(a2 + 1) = v273;
                v275 = v274 != 0;
              }

              *(this + 194) = v275;
              goto LABEL_379;
            default:
              JUMPOUT(0);
          }

          while (1)
          {
            if (!v291)
            {
              v55 = 0;
              *(a2 + 24) = 1;
              goto LABEL_389;
            }

            v293 = *v290;
            *(a2 + 1) = v292;
            v55 |= (v293 & 0x7F) << v288;
            if ((v293 & 0x80) == 0)
            {
              break;
            }

            v288 += 7;
            ++v290;
            --v291;
            ++v292;
            v14 = v289++ > 8;
            if (v14)
            {
              goto LABEL_270;
            }
          }

          if (*(a2 + 24))
          {
            v55 = 0;
          }

LABEL_389:
          *(this + 3) = v55;
        }

        else
        {
          switch(v22)
          {
            case 1203:
              *(this + 204) |= 8uLL;
              v33 = *(a2 + 1);
              v32 = *(a2 + 2);
              v34 = *a2;
              if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
              {
                v35 = 0;
                v36 = 0;
                v37 = 0;
                v38 = (v34 + v33);
                v39 = v33 + 1;
                do
                {
                  *(a2 + 1) = v39;
                  v40 = *v38++;
                  v37 |= (v40 & 0x7F) << v35;
                  if ((v40 & 0x80) == 0)
                  {
                    goto LABEL_392;
                  }

                  v35 += 7;
                  ++v39;
                  v14 = v36++ > 8;
                }

                while (!v14);
LABEL_290:
                v37 = 0;
                goto LABEL_392;
              }

              v294 = 0;
              v295 = 0;
              v37 = 0;
              v296 = (v34 + v33);
              v18 = v32 >= v33;
              v297 = v32 - v33;
              if (!v18)
              {
                v297 = 0;
              }

              v298 = v33 + 1;
              break;
            case 1204:
              *(this + 204) |= 0x1000000uLL;
              v157 = *(a2 + 1);
              if (v157 > 0xFFFFFFFFFFFFFFFBLL || v157 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 30) = *(*a2 + v157);
              goto LABEL_378;
            case 1205:
              *(this + 204) |= 0x10000uLL;
              v124 = *(a2 + 1);
              if (v124 > 0xFFFFFFFFFFFFFFFBLL || v124 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 22) = *(*a2 + v124);
              goto LABEL_378;
            case 1206:
              *(this + 204) |= 0x100uLL;
              v142 = *(a2 + 1);
              if (v142 > 0xFFFFFFFFFFFFFFFBLL || v142 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 14) = *(*a2 + v142);
              goto LABEL_378;
            case 1207:
              *(this + 204) |= 0x10000000uLL;
              v102 = *(a2 + 1);
              if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 34) = *(*a2 + v102);
              goto LABEL_378;
            case 1208:
              *(this + 204) |= 0x1000000000000000uLL;
              v203 = *(a2 + 1);
              if (v203 >= *(a2 + 2))
              {
                v206 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v204 = v203 + 1;
                v205 = *(*a2 + v203);
                *(a2 + 1) = v204;
                v206 = v205 != 0;
              }

              *(this + 183) = v206;
              goto LABEL_379;
            case 1209:
              *(this + 204) |= 0x1000000000uLL;
              v208 = *(a2 + 1);
              if (v208 >= *(a2 + 2))
              {
                v211 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v209 = v208 + 1;
                v210 = *(*a2 + v208);
                *(a2 + 1) = v209;
                v211 = v210 != 0;
              }

              *(this + 159) = v211;
              goto LABEL_379;
            case 1210:
              *(this + 53) |= 0x1000u;
              v148 = *(a2 + 1);
              if (v148 >= *(a2 + 2))
              {
                v151 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v149 = v148 + 1;
                v150 = *(*a2 + v148);
                *(a2 + 1) = v149;
                v151 = v150 != 0;
              }

              *(this + 199) = v151;
              goto LABEL_379;
            case 1211:
              *(this + 204) |= 0x100000000000uLL;
              v228 = *(a2 + 1);
              if (v228 >= *(a2 + 2))
              {
                v231 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v229 = v228 + 1;
                v230 = *(*a2 + v228);
                *(a2 + 1) = v229;
                v231 = v230 != 0;
              }

              *(this + 167) = v231;
              goto LABEL_379;
            case 1212:
              *(this + 204) |= 0x10000000000000uLL;
              v108 = *(a2 + 1);
              if (v108 >= *(a2 + 2))
              {
                v111 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v109 = v108 + 1;
                v110 = *(*a2 + v108);
                *(a2 + 1) = v109;
                v111 = v110 != 0;
              }

              *(this + 175) = v111;
              goto LABEL_379;
            case 1213:
              *(this + 53) |= 0x20u;
              v224 = *(a2 + 1);
              if (v224 >= *(a2 + 2))
              {
                v227 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v225 = v224 + 1;
                v226 = *(*a2 + v224);
                *(a2 + 1) = v225;
                v227 = v226 != 0;
              }

              *(this + 192) = v227;
              goto LABEL_379;
            case 1214:
              *(this + 204) |= 0x100000uLL;
              v90 = *(a2 + 1);
              if (v90 > 0xFFFFFFFFFFFFFFFBLL || v90 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 26) = *(*a2 + v90);
              goto LABEL_378;
            case 1215:
              *(this + 204) |= 0x1000uLL;
              v103 = *(a2 + 1);
              if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 18) = *(*a2 + v103);
              goto LABEL_378;
            case 1216:
              *(this + 204) |= 0x100000000uLL;
              v207 = *(a2 + 1);
              if (v207 > 0xFFFFFFFFFFFFFFFBLL || v207 + 4 > *(a2 + 2))
              {
                goto LABEL_218;
              }

              *(this + 38) = *(*a2 + v207);
              goto LABEL_378;
            case 1217:
              *(this + 53) |= 1u;
              v79 = *(a2 + 1);
              if (v79 >= *(a2 + 2))
              {
                v82 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v80 = v79 + 1;
                v81 = *(*a2 + v79);
                *(a2 + 1) = v80;
                v82 = v81 != 0;
              }

              *(this + 187) = v82;
              goto LABEL_379;
            case 1218:
              *(this + 204) |= 0x10000000000uLL;
              v134 = *(a2 + 1);
              if (v134 >= *(a2 + 2))
              {
                v137 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v135 = v134 + 1;
                v136 = *(*a2 + v134);
                *(a2 + 1) = v135;
                v137 = v136 != 0;
              }

              *(this + 163) = v137;
              goto LABEL_379;
            case 1219:
              *(this + 53) |= 0x10000u;
              v67 = *(a2 + 1);
              if (v67 >= *(a2 + 2))
              {
                v70 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v68 = v67 + 1;
                v69 = *(*a2 + v67);
                *(a2 + 1) = v68;
                v70 = v69 != 0;
              }

              *(this + 203) = v70;
              goto LABEL_379;
            case 1220:
              *(this + 204) |= 0x1000000000000uLL;
              v180 = *(a2 + 1);
              if (v180 >= *(a2 + 2))
              {
                v183 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v181 = v180 + 1;
                v182 = *(*a2 + v180);
                *(a2 + 1) = v181;
                v183 = v182 != 0;
              }

              *(this + 171) = v183;
              goto LABEL_379;
            case 1221:
              *(this + 204) |= 0x100000000000000uLL;
              v216 = *(a2 + 1);
              if (v216 >= *(a2 + 2))
              {
                v219 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v217 = v216 + 1;
                v218 = *(*a2 + v216);
                *(a2 + 1) = v217;
                v219 = v218 != 0;
              }

              *(this + 179) = v219;
              goto LABEL_379;
            case 1222:
              *(this + 53) |= 0x100u;
              v276 = *(a2 + 1);
              if (v276 >= *(a2 + 2))
              {
                v279 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v277 = v276 + 1;
                v278 = *(*a2 + v276);
                *(a2 + 1) = v277;
                v279 = v278 != 0;
              }

              *(this + 195) = v279;
              goto LABEL_379;
            default:
              goto LABEL_17;
          }

          while (1)
          {
            if (!v297)
            {
              v37 = 0;
              *(a2 + 24) = 1;
              goto LABEL_392;
            }

            v299 = *v296;
            *(a2 + 1) = v298;
            v37 |= (v299 & 0x7F) << v294;
            if ((v299 & 0x80) == 0)
            {
              break;
            }

            v294 += 7;
            ++v296;
            --v297;
            ++v298;
            v14 = v295++ > 8;
            if (v14)
            {
              goto LABEL_290;
            }
          }

          if (*(a2 + 24))
          {
            v37 = 0;
          }

LABEL_392:
          *(this + 4) = v37;
        }
      }

      else
      {
        switch(v22)
        {
          case 'e':
            *(this + 204) |= 1uLL;
            v24 = *(a2 + 1);
            v23 = *(a2 + 2);
            v25 = *a2;
            if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              do
              {
                *(a2 + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  goto LABEL_395;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
              }

              while (!v14);
LABEL_314:
              v28 = 0;
              goto LABEL_395;
            }

            v300 = 0;
            v301 = 0;
            v28 = 0;
            v302 = (v25 + v24);
            v18 = v23 >= v24;
            v303 = v23 - v24;
            if (!v18)
            {
              v303 = 0;
            }

            v304 = v24 + 1;
            while (2)
            {
              if (v303)
              {
                v305 = *v302;
                *(a2 + 1) = v304;
                v28 |= (v305 & 0x7F) << v300;
                if (v305 < 0)
                {
                  v300 += 7;
                  ++v302;
                  --v303;
                  ++v304;
                  v14 = v301++ > 8;
                  if (v14)
                  {
                    goto LABEL_314;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v28 = 0;
                }
              }

              else
              {
                v28 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_395:
            *(this + 1) = v28;
            goto LABEL_379;
          case 'f':
            *(this + 204) |= 0x10uLL;
            v194 = *(a2 + 1);
            v193 = *(a2 + 2);
            v195 = *a2;
            if (v194 <= 0xFFFFFFFFFFFFFFF5 && v194 + 10 <= v193)
            {
              v196 = 0;
              v197 = 0;
              v198 = 0;
              v199 = (v195 + v194);
              v200 = v194 + 1;
              do
              {
                *(a2 + 1) = v200;
                v201 = *v199++;
                v198 |= (v201 & 0x7F) << v196;
                if ((v201 & 0x80) == 0)
                {
                  goto LABEL_398;
                }

                v196 += 7;
                ++v200;
                v14 = v197++ > 8;
              }

              while (!v14);
LABEL_322:
              LODWORD(v198) = 0;
              goto LABEL_398;
            }

            v306 = 0;
            v307 = 0;
            v198 = 0;
            v308 = (v195 + v194);
            v18 = v193 >= v194;
            v309 = v193 - v194;
            if (!v18)
            {
              v309 = 0;
            }

            v310 = v194 + 1;
            while (2)
            {
              if (v309)
              {
                v311 = *v308;
                *(a2 + 1) = v310;
                v198 |= (v311 & 0x7F) << v306;
                if (v311 < 0)
                {
                  v306 += 7;
                  ++v308;
                  --v309;
                  ++v310;
                  v14 = v307++ > 8;
                  if (v14)
                  {
                    goto LABEL_322;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  LODWORD(v198) = 0;
                }
              }

              else
              {
                LODWORD(v198) = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_398:
            *(this + 10) = v198;
            goto LABEL_379;
          case 'g':
            *(this + 53) |= 2u;
            v143 = *(a2 + 1);
            if (v143 >= *(a2 + 2))
            {
              v146 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v144 = v143 + 1;
              v145 = *(*a2 + v143);
              *(a2 + 1) = v144;
              v146 = v145 != 0;
            }

            *(this + 188) = v146;
            goto LABEL_379;
          case 'h':
            *(this + 204) |= 0x200000uLL;
            v179 = *(a2 + 1);
            if (v179 > 0xFFFFFFFFFFFFFFFBLL || v179 + 4 > *(a2 + 2))
            {
              goto LABEL_218;
            }

            *(this + 27) = *(*a2 + v179);
            goto LABEL_378;
          case 'i':
            *(this + 204) |= 0x2000uLL;
            v113 = *(a2 + 1);
            if (v113 > 0xFFFFFFFFFFFFFFFBLL || v113 + 4 > *(a2 + 2))
            {
              goto LABEL_218;
            }

            *(this + 19) = *(*a2 + v113);
            goto LABEL_378;
          case 'j':
            *(this + 204) |= 0x20uLL;
            v236 = *(a2 + 1);
            if (v236 > 0xFFFFFFFFFFFFFFFBLL || v236 + 4 > *(a2 + 2))
            {
              goto LABEL_218;
            }

            *(this + 11) = *(*a2 + v236);
            goto LABEL_378;
          case 'k':
            *(this + 204) |= 0x2000000uLL;
            v242 = *(a2 + 1);
            if (v242 > 0xFFFFFFFFFFFFFFFBLL || v242 + 4 > *(a2 + 2))
            {
              goto LABEL_218;
            }

            *(this + 31) = *(*a2 + v242);
            goto LABEL_378;
          case 'l':
            *(this + 204) |= 0x200000000000000uLL;
            v185 = *(a2 + 1);
            if (v185 >= *(a2 + 2))
            {
              v188 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v186 = v185 + 1;
              v187 = *(*a2 + v185);
              *(a2 + 1) = v186;
              v188 = v187 != 0;
            }

            *(this + 180) = v188;
            goto LABEL_379;
          case 'm':
            *(this + 204) |= 0x200000000uLL;
            v256 = *(a2 + 1);
            if (v256 >= *(a2 + 2))
            {
              v259 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v257 = v256 + 1;
              v258 = *(*a2 + v256);
              *(a2 + 1) = v257;
              v259 = v258 != 0;
            }

            *(this + 156) = v259;
            goto LABEL_379;
          case 'n':
            *(this + 53) |= 0x200u;
            v126 = *(a2 + 1);
            if (v126 >= *(a2 + 2))
            {
              v129 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v127 = v126 + 1;
              v128 = *(*a2 + v126);
              *(a2 + 1) = v127;
              v129 = v128 != 0;
            }

            *(this + 196) = v129;
            goto LABEL_379;
          case 'o':
            *(this + 204) |= 0x20000000000uLL;
            v252 = *(a2 + 1);
            if (v252 >= *(a2 + 2))
            {
              v255 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v253 = v252 + 1;
              v254 = *(*a2 + v252);
              *(a2 + 1) = v253;
              v255 = v254 != 0;
            }

            *(this + 164) = v255;
            goto LABEL_379;
          case 'p':
            *(this + 204) |= 0x2000000000000uLL;
            v96 = *(a2 + 1);
            if (v96 >= *(a2 + 2))
            {
              v99 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v97 = v96 + 1;
              v98 = *(*a2 + v96);
              *(a2 + 1) = v97;
              v99 = v98 != 0;
            }

            *(this + 172) = v99;
            goto LABEL_379;
          case 'q':
            *(this + 53) |= 4u;
            v120 = *(a2 + 1);
            if (v120 >= *(a2 + 2))
            {
              v123 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v121 = v120 + 1;
              v122 = *(*a2 + v120);
              *(a2 + 1) = v121;
              v123 = v122 != 0;
            }

            *(this + 189) = v123;
            goto LABEL_379;
          case 'r':
            *(this + 204) |= 0x20000uLL;
            v241 = *(a2 + 1);
            if (v241 > 0xFFFFFFFFFFFFFFFBLL || v241 + 4 > *(a2 + 2))
            {
              goto LABEL_218;
            }

            *(this + 23) = *(*a2 + v241);
            goto LABEL_378;
          case 's':
            *(this + 204) |= 0x200uLL;
            v83 = *(a2 + 1);
            if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
            {
              goto LABEL_218;
            }

            *(this + 15) = *(*a2 + v83);
            goto LABEL_378;
          case 't':
            *(this + 204) |= 0x20000000uLL;
            v162 = *(a2 + 1);
            if (v162 > 0xFFFFFFFFFFFFFFFBLL || v162 + 4 > *(a2 + 2))
            {
              goto LABEL_218;
            }

            *(this + 35) = *(*a2 + v162);
            goto LABEL_378;
          case 'u':
            *(this + 204) |= 0x2000000000000000uLL;
            v71 = *(a2 + 1);
            if (v71 >= *(a2 + 2))
            {
              v74 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v72 = v71 + 1;
              v73 = *(*a2 + v71);
              *(a2 + 1) = v72;
              v74 = v73 != 0;
            }

            *(this + 184) = v74;
            goto LABEL_379;
          case 'v':
            *(this + 204) |= 0x2000000000uLL;
            v212 = *(a2 + 1);
            if (v212 >= *(a2 + 2))
            {
              v215 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v213 = v212 + 1;
              v214 = *(*a2 + v212);
              *(a2 + 1) = v213;
              v215 = v214 != 0;
            }

            *(this + 160) = v215;
            goto LABEL_379;
          case 'w':
            *(this + 53) |= 0x2000u;
            v244 = *(a2 + 1);
            if (v244 >= *(a2 + 2))
            {
              v247 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v245 = v244 + 1;
              v246 = *(*a2 + v244);
              *(a2 + 1) = v245;
              v247 = v246 != 0;
            }

            *(this + 200) = v247;
            goto LABEL_379;
          case 'x':
            *(this + 204) |= 0x200000000000uLL;
            v280 = *(a2 + 1);
            if (v280 >= *(a2 + 2))
            {
              v283 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v281 = v280 + 1;
              v282 = *(*a2 + v280);
              *(a2 + 1) = v281;
              v283 = v282 != 0;
            }

            *(this + 168) = v283;
            goto LABEL_379;
          case 'y':
            *(this + 204) |= 0x20000000000000uLL;
            v232 = *(a2 + 1);
            if (v232 >= *(a2 + 2))
            {
              v235 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v233 = v232 + 1;
              v234 = *(*a2 + v232);
              *(a2 + 1) = v233;
              v235 = v234 != 0;
            }

            *(this + 176) = v235;
            goto LABEL_379;
          default:
            switch(v22)
            {
              case 1003:
                *(this + 204) |= 2uLL;
                v42 = *(a2 + 1);
                v41 = *(a2 + 2);
                v43 = *a2;
                if (v42 <= 0xFFFFFFFFFFFFFFF5 && v42 + 10 <= v41)
                {
                  v44 = 0;
                  v45 = 0;
                  v46 = 0;
                  v47 = (v43 + v42);
                  v48 = v42 + 1;
                  do
                  {
                    *(a2 + 1) = v48;
                    v49 = *v47++;
                    v46 |= (v49 & 0x7F) << v44;
                    if ((v49 & 0x80) == 0)
                    {
                      goto LABEL_401;
                    }

                    v44 += 7;
                    ++v48;
                    v14 = v45++ > 8;
                  }

                  while (!v14);
LABEL_332:
                  v46 = 0;
                  goto LABEL_401;
                }

                v312 = 0;
                v313 = 0;
                v46 = 0;
                v314 = (v43 + v42);
                v18 = v41 >= v42;
                v315 = v41 - v42;
                if (!v18)
                {
                  v315 = 0;
                }

                v316 = v42 + 1;
                break;
              case 1004:
                *(this + 204) |= 0x400000uLL;
                v202 = *(a2 + 1);
                if (v202 > 0xFFFFFFFFFFFFFFFBLL || v202 + 4 > *(a2 + 2))
                {
                  goto LABEL_218;
                }

                *(this + 28) = *(*a2 + v202);
                goto LABEL_378;
              case 1005:
                *(this + 204) |= 0x4000uLL;
                v147 = *(a2 + 1);
                if (v147 > 0xFFFFFFFFFFFFFFFBLL || v147 + 4 > *(a2 + 2))
                {
                  goto LABEL_218;
                }

                *(this + 20) = *(*a2 + v147);
                goto LABEL_378;
              case 1006:
                *(this + 204) |= 0x40uLL;
                v184 = *(a2 + 1);
                if (v184 > 0xFFFFFFFFFFFFFFFBLL || v184 + 4 > *(a2 + 2))
                {
                  goto LABEL_218;
                }

                *(this + 12) = *(*a2 + v184);
                goto LABEL_378;
              case 1007:
                *(this + 204) |= 0x4000000uLL;
                v118 = *(a2 + 1);
                if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(a2 + 2))
                {
                  goto LABEL_218;
                }

                *(this + 32) = *(*a2 + v118);
                goto LABEL_378;
              case 1008:
                *(this + 204) |= 0x400000000000000uLL;
                v237 = *(a2 + 1);
                if (v237 >= *(a2 + 2))
                {
                  v240 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v238 = v237 + 1;
                  v239 = *(*a2 + v237);
                  *(a2 + 1) = v238;
                  v240 = v239 != 0;
                }

                *(this + 181) = v240;
                goto LABEL_379;
              case 1009:
                *(this + 204) |= 0x400000000uLL;
                v248 = *(a2 + 1);
                if (v248 >= *(a2 + 2))
                {
                  v251 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v249 = v248 + 1;
                  v250 = *(*a2 + v248);
                  *(a2 + 1) = v249;
                  v251 = v250 != 0;
                }

                *(this + 157) = v251;
                goto LABEL_379;
              case 1010:
                *(this + 53) |= 0x400u;
                v189 = *(a2 + 1);
                if (v189 >= *(a2 + 2))
                {
                  v192 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v190 = v189 + 1;
                  v191 = *(*a2 + v189);
                  *(a2 + 1) = v190;
                  v192 = v191 != 0;
                }

                *(this + 197) = v192;
                goto LABEL_379;
              case 1011:
                *(this + 204) |= 0x40000000000uLL;
                v268 = *(a2 + 1);
                if (v268 >= *(a2 + 2))
                {
                  v271 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v269 = v268 + 1;
                  v270 = *(*a2 + v268);
                  *(a2 + 1) = v269;
                  v271 = v270 != 0;
                }

                *(this + 165) = v271;
                goto LABEL_379;
              case 1012:
                *(this + 204) |= 0x4000000000000uLL;
                v130 = *(a2 + 1);
                if (v130 >= *(a2 + 2))
                {
                  v133 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v131 = v130 + 1;
                  v132 = *(*a2 + v130);
                  *(a2 + 1) = v131;
                  v133 = v132 != 0;
                }

                *(this + 173) = v133;
                goto LABEL_379;
              case 1013:
                *(this + 53) |= 8u;
                v264 = *(a2 + 1);
                if (v264 >= *(a2 + 2))
                {
                  v267 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v265 = v264 + 1;
                  v266 = *(*a2 + v264);
                  *(a2 + 1) = v265;
                  v267 = v266 != 0;
                }

                *(this + 190) = v267;
                goto LABEL_379;
              case 1014:
                *(this + 204) |= 0x40000uLL;
                v100 = *(a2 + 1);
                if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(a2 + 2))
                {
                  goto LABEL_218;
                }

                *(this + 24) = *(*a2 + v100);
                goto LABEL_378;
              case 1015:
                *(this + 204) |= 0x400uLL;
                v125 = *(a2 + 1);
                if (v125 > 0xFFFFFFFFFFFFFFFBLL || v125 + 4 > *(a2 + 2))
                {
                  goto LABEL_218;
                }

                *(this + 16) = *(*a2 + v125);
                goto LABEL_378;
              case 1016:
                *(this + 204) |= 0x40000000uLL;
                v243 = *(a2 + 1);
                if (v243 > 0xFFFFFFFFFFFFFFFBLL || v243 + 4 > *(a2 + 2))
                {
                  goto LABEL_218;
                }

                *(this + 36) = *(*a2 + v243);
                goto LABEL_378;
              case 1017:
                *(this + 204) |= 0x4000000000000000uLL;
                v84 = *(a2 + 1);
                if (v84 >= *(a2 + 2))
                {
                  v87 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v85 = v84 + 1;
                  v86 = *(*a2 + v84);
                  *(a2 + 1) = v85;
                  v87 = v86 != 0;
                }

                *(this + 185) = v87;
                goto LABEL_379;
              case 1018:
                *(this + 204) |= 0x4000000000uLL;
                v167 = *(a2 + 1);
                if (v167 >= *(a2 + 2))
                {
                  v170 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v168 = v167 + 1;
                  v169 = *(*a2 + v167);
                  *(a2 + 1) = v168;
                  v170 = v169 != 0;
                }

                *(this + 161) = v170;
                goto LABEL_379;
              case 1019:
                *(this + 53) |= 0x4000u;
                v75 = *(a2 + 1);
                if (v75 >= *(a2 + 2))
                {
                  v78 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v76 = v75 + 1;
                  v77 = *(*a2 + v75);
                  *(a2 + 1) = v76;
                  v78 = v77 != 0;
                }

                *(this + 201) = v78;
                goto LABEL_379;
              case 1020:
                *(this + 204) |= 0x400000000000uLL;
                v220 = *(a2 + 1);
                if (v220 >= *(a2 + 2))
                {
                  v223 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v221 = v220 + 1;
                  v222 = *(*a2 + v220);
                  *(a2 + 1) = v221;
                  v223 = v222 != 0;
                }

                *(this + 169) = v223;
                goto LABEL_379;
              case 1021:
                *(this + 204) |= 0x40000000000000uLL;
                v260 = *(a2 + 1);
                if (v260 >= *(a2 + 2))
                {
                  v263 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v261 = v260 + 1;
                  v262 = *(*a2 + v260);
                  *(a2 + 1) = v261;
                  v263 = v262 != 0;
                }

                *(this + 177) = v263;
                goto LABEL_379;
              case 1022:
                *(this + 53) |= 0x40u;
                v284 = *(a2 + 1);
                if (v284 >= *(a2 + 2))
                {
                  v287 = 0;
                  *(a2 + 24) = 1;
                }

                else
                {
                  v285 = v284 + 1;
                  v286 = *(*a2 + v284);
                  *(a2 + 1) = v285;
                  v287 = v286 != 0;
                }

                *(this + 193) = v287;
                goto LABEL_379;
              default:
                goto LABEL_17;
            }

            break;
        }

        while (1)
        {
          if (!v315)
          {
            v46 = 0;
            *(a2 + 24) = 1;
            goto LABEL_401;
          }

          v317 = *v314;
          *(a2 + 1) = v316;
          v46 |= (v317 & 0x7F) << v312;
          if ((v317 & 0x80) == 0)
          {
            break;
          }

          v312 += 7;
          ++v314;
          --v315;
          ++v316;
          v14 = v313++ > 8;
          if (v14)
          {
            goto LABEL_332;
          }
        }

        if (*(a2 + 24))
        {
          v46 = 0;
        }

LABEL_401:
        *(this + 2) = v46;
      }

LABEL_379:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_403;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_403;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      goto LABEL_379;
    }

    v319 = 0;
  }

  return v319 & 1;
}

uint64_t CMMsl::KappaRemoteAudioResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 204);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 204);
  }

  if ((v4 & 0x10) != 0)
  {
    v6 = *(v3 + 40);
    this = PB::Writer::writeVarInt(a2);
  }

  if ((*(v3 + 212) & 2) != 0)
  {
    v7 = *(v3 + 188);
    this = PB::Writer::write(a2);
  }

  v8 = *(v3 + 204);
  if ((v8 & 0x200000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 108));
    v8 = *(v3 + 204);
    if ((v8 & 0x2000) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_126;
    }
  }

  else if ((v8 & 0x2000) == 0)
  {
    goto LABEL_9;
  }

  this = PB::Writer::write(a2, *(v3 + 76));
  v8 = *(v3 + 204);
  if ((v8 & 0x20) == 0)
  {
LABEL_10:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = PB::Writer::write(a2, *(v3 + 44));
  v8 = *(v3 + 204);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = PB::Writer::write(a2, *(v3 + 124));
  v8 = *(v3 + 204);
  if ((v8 & 0x200000000000000) == 0)
  {
LABEL_12:
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_128:
  v60 = *(v3 + 180);
  this = PB::Writer::write(a2);
  if ((*(v3 + 204) & 0x200000000) != 0)
  {
LABEL_13:
    v9 = *(v3 + 156);
    this = PB::Writer::write(a2);
  }

LABEL_14:
  if ((*(v3 + 213) & 2) != 0)
  {
    v10 = *(v3 + 196);
    this = PB::Writer::write(a2);
  }

  v11 = *(v3 + 204);
  if ((v11 & 0x20000000000) != 0)
  {
    v12 = *(v3 + 164);
    this = PB::Writer::write(a2);
    v11 = *(v3 + 204);
  }

  if ((v11 & 0x2000000000000) != 0)
  {
    v13 = *(v3 + 172);
    this = PB::Writer::write(a2);
  }

  if ((*(v3 + 212) & 4) != 0)
  {
    v14 = *(v3 + 189);
    this = PB::Writer::write(a2);
  }

  v15 = *(v3 + 204);
  if ((v15 & 0x20000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 92));
    v15 = *(v3 + 204);
    if ((v15 & 0x200) == 0)
    {
LABEL_24:
      if ((v15 & 0x20000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_132;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  this = PB::Writer::write(a2, *(v3 + 60));
  v15 = *(v3 + 204);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_25:
    if ((v15 & 0x2000000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = PB::Writer::write(a2, *(v3 + 140));
  v15 = *(v3 + 204);
  if ((v15 & 0x2000000000000000) == 0)
  {
LABEL_26:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_133:
  v61 = *(v3 + 184);
  this = PB::Writer::write(a2);
  if ((*(v3 + 204) & 0x2000000000) != 0)
  {
LABEL_27:
    v16 = *(v3 + 160);
    this = PB::Writer::write(a2);
  }

LABEL_28:
  if ((*(v3 + 213) & 0x20) != 0)
  {
    v17 = *(v3 + 200);
    this = PB::Writer::write(a2);
  }

  v18 = *(v3 + 204);
  if ((v18 & 0x200000000000) != 0)
  {
    v62 = *(v3 + 168);
    this = PB::Writer::write(a2);
    v18 = *(v3 + 204);
    if ((v18 & 0x20000000000000) == 0)
    {
LABEL_32:
      if ((v18 & 2) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_137;
    }
  }

  else if ((v18 & 0x20000000000000) == 0)
  {
    goto LABEL_32;
  }

  v63 = *(v3 + 176);
  this = PB::Writer::write(a2);
  v18 = *(v3 + 204);
  if ((v18 & 2) == 0)
  {
LABEL_33:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_138;
  }

LABEL_137:
  v64 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v18 = *(v3 + 204);
  if ((v18 & 0x400000) == 0)
  {
LABEL_34:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = PB::Writer::write(a2, *(v3 + 112));
  v18 = *(v3 + 204);
  if ((v18 & 0x4000) == 0)
  {
LABEL_35:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = PB::Writer::write(a2, *(v3 + 80));
  v18 = *(v3 + 204);
  if ((v18 & 0x40) == 0)
  {
LABEL_36:
    if ((v18 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_141;
  }

LABEL_140:
  this = PB::Writer::write(a2, *(v3 + 48));
  v18 = *(v3 + 204);
  if ((v18 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v18 & 0x400000000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_142;
  }

LABEL_141:
  this = PB::Writer::write(a2, *(v3 + 128));
  v18 = *(v3 + 204);
  if ((v18 & 0x400000000000000) == 0)
  {
LABEL_38:
    if ((v18 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_142:
  v65 = *(v3 + 181);
  this = PB::Writer::write(a2);
  if ((*(v3 + 204) & 0x400000000) != 0)
  {
LABEL_39:
    v19 = *(v3 + 157);
    this = PB::Writer::write(a2);
  }

LABEL_40:
  if ((*(v3 + 213) & 4) != 0)
  {
    v20 = *(v3 + 197);
    this = PB::Writer::write(a2);
  }

  v21 = *(v3 + 204);
  if ((v21 & 0x40000000000) != 0)
  {
    v22 = *(v3 + 165);
    this = PB::Writer::write(a2);
    v21 = *(v3 + 204);
  }

  if ((v21 & 0x4000000000000) != 0)
  {
    v23 = *(v3 + 173);
    this = PB::Writer::write(a2);
  }

  if ((*(v3 + 212) & 8) != 0)
  {
    v24 = *(v3 + 190);
    this = PB::Writer::write(a2);
  }

  v25 = *(v3 + 204);
  if ((v25 & 0x40000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 96));
    v25 = *(v3 + 204);
    if ((v25 & 0x400) == 0)
    {
LABEL_50:
      if ((v25 & 0x40000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_146;
    }
  }

  else if ((v25 & 0x400) == 0)
  {
    goto LABEL_50;
  }

  this = PB::Writer::write(a2, *(v3 + 64));
  v25 = *(v3 + 204);
  if ((v25 & 0x40000000) == 0)
  {
LABEL_51:
    if ((v25 & 0x4000000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_147;
  }

LABEL_146:
  this = PB::Writer::write(a2, *(v3 + 144));
  v25 = *(v3 + 204);
  if ((v25 & 0x4000000000000000) == 0)
  {
LABEL_52:
    if ((v25 & 0x4000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_147:
  v66 = *(v3 + 185);
  this = PB::Writer::write(a2);
  if ((*(v3 + 204) & 0x4000000000) != 0)
  {
LABEL_53:
    v26 = *(v3 + 161);
    this = PB::Writer::write(a2);
  }

LABEL_54:
  if ((*(v3 + 213) & 0x40) != 0)
  {
    v27 = *(v3 + 201);
    this = PB::Writer::write(a2);
  }

  v28 = *(v3 + 204);
  if ((v28 & 0x400000000000) != 0)
  {
    v29 = *(v3 + 169);
    this = PB::Writer::write(a2);
    v28 = *(v3 + 204);
  }

  if ((v28 & 0x40000000000000) != 0)
  {
    v30 = *(v3 + 177);
    this = PB::Writer::write(a2);
  }

  if ((*(v3 + 212) & 0x40) != 0)
  {
    v31 = *(v3 + 193);
    this = PB::Writer::write(a2);
  }

  v32 = *(v3 + 204);
  if ((v32 & 4) != 0)
  {
    v67 = *(v3 + 24);
    this = PB::Writer::writeVarInt(a2);
    v32 = *(v3 + 204);
    if ((v32 & 0x800000) == 0)
    {
LABEL_64:
      if ((v32 & 0x8000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_151;
    }
  }

  else if ((v32 & 0x800000) == 0)
  {
    goto LABEL_64;
  }

  this = PB::Writer::write(a2, *(v3 + 116));
  v32 = *(v3 + 204);
  if ((v32 & 0x8000) == 0)
  {
LABEL_65:
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_152;
  }

LABEL_151:
  this = PB::Writer::write(a2, *(v3 + 84));
  v32 = *(v3 + 204);
  if ((v32 & 0x80) == 0)
  {
LABEL_66:
    if ((v32 & 0x8000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_153;
  }

LABEL_152:
  this = PB::Writer::write(a2, *(v3 + 52));
  v32 = *(v3 + 204);
  if ((v32 & 0x8000000) == 0)
  {
LABEL_67:
    if ((v32 & 0x800000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_154;
  }

LABEL_153:
  this = PB::Writer::write(a2, *(v3 + 132));
  v32 = *(v3 + 204);
  if ((v32 & 0x800000000000000) == 0)
  {
LABEL_68:
    if ((v32 & 0x800000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_154:
  v68 = *(v3 + 182);
  this = PB::Writer::write(a2);
  if ((*(v3 + 204) & 0x800000000) != 0)
  {
LABEL_69:
    v33 = *(v3 + 158);
    this = PB::Writer::write(a2);
  }

LABEL_70:
  if ((*(v3 + 213) & 8) != 0)
  {
    v34 = *(v3 + 198);
    this = PB::Writer::write(a2);
  }

  v35 = *(v3 + 204);
  if ((v35 & 0x80000000000) != 0)
  {
    v36 = *(v3 + 166);
    this = PB::Writer::write(a2);
    v35 = *(v3 + 204);
  }

  if ((v35 & 0x8000000000000) != 0)
  {
    v37 = *(v3 + 174);
    this = PB::Writer::write(a2);
  }

  if ((*(v3 + 212) & 0x10) != 0)
  {
    v38 = *(v3 + 191);
    this = PB::Writer::write(a2);
  }

  v39 = *(v3 + 204);
  if ((v39 & 0x80000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 100));
    v39 = *(v3 + 204);
    if ((v39 & 0x800) == 0)
    {
LABEL_80:
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_158;
    }
  }

  else if ((v39 & 0x800) == 0)
  {
    goto LABEL_80;
  }

  this = PB::Writer::write(a2, *(v3 + 68));
  v39 = *(v3 + 204);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_81:
    if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_159;
  }

LABEL_158:
  this = PB::Writer::write(a2, *(v3 + 148));
  v39 = *(v3 + 204);
  if ((v39 & 0x8000000000000000) == 0)
  {
LABEL_82:
    if ((v39 & 0x8000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_159:
  v69 = *(v3 + 186);
  this = PB::Writer::write(a2);
  if ((*(v3 + 204) & 0x8000000000) != 0)
  {
LABEL_83:
    v40 = *(v3 + 162);
    this = PB::Writer::write(a2);
  }

LABEL_84:
  if ((*(v3 + 213) & 0x80) != 0)
  {
    v41 = *(v3 + 202);
    this = PB::Writer::write(a2);
  }

  v42 = *(v3 + 204);
  if ((v42 & 0x800000000000) != 0)
  {
    v43 = *(v3 + 170);
    this = PB::Writer::write(a2);
    v42 = *(v3 + 204);
  }

  if ((v42 & 0x80000000000000) != 0)
  {
    v44 = *(v3 + 178);
    this = PB::Writer::write(a2);
  }

  if ((*(v3 + 212) & 0x80) != 0)
  {
    v45 = *(v3 + 194);
    this = PB::Writer::write(a2);
  }

  v46 = *(v3 + 204);
  if ((v46 & 8) != 0)
  {
    v70 = *(v3 + 32);
    this = PB::Writer::writeVarInt(a2);
    v46 = *(v3 + 204);
    if ((v46 & 0x1000000) == 0)
    {
LABEL_94:
      if ((v46 & 0x10000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_163;
    }
  }

  else if ((v46 & 0x1000000) == 0)
  {
    goto LABEL_94;
  }

  this = PB::Writer::write(a2, *(v3 + 120));
  v46 = *(v3 + 204);
  if ((v46 & 0x10000) == 0)
  {
LABEL_95:
    if ((v46 & 0x100) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = PB::Writer::write(a2, *(v3 + 88));
  v46 = *(v3 + 204);
  if ((v46 & 0x100) == 0)
  {
LABEL_96:
    if ((v46 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = PB::Writer::write(a2, *(v3 + 56));
  v46 = *(v3 + 204);
  if ((v46 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v46 & 0x1000000000000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = PB::Writer::write(a2, *(v3 + 136));
  v46 = *(v3 + 204);
  if ((v46 & 0x1000000000000000) == 0)
  {
LABEL_98:
    if ((v46 & 0x1000000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_166:
  v71 = *(v3 + 183);
  this = PB::Writer::write(a2);
  if ((*(v3 + 204) & 0x1000000000) != 0)
  {
LABEL_99:
    v47 = *(v3 + 159);
    this = PB::Writer::write(a2);
  }

LABEL_100:
  if ((*(v3 + 213) & 0x10) != 0)
  {
    v48 = *(v3 + 199);
    this = PB::Writer::write(a2);
  }

  v49 = *(v3 + 204);
  if ((v49 & 0x100000000000) != 0)
  {
    v50 = *(v3 + 167);
    this = PB::Writer::write(a2);
    v49 = *(v3 + 204);
  }

  if ((v49 & 0x10000000000000) != 0)
  {
    v51 = *(v3 + 175);
    this = PB::Writer::write(a2);
  }

  if ((*(v3 + 212) & 0x20) != 0)
  {
    v52 = *(v3 + 192);
    this = PB::Writer::write(a2);
  }

  v53 = *(v3 + 204);
  if ((v53 & 0x100000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 104));
    v53 = *(v3 + 204);
    if ((v53 & 0x1000) == 0)
    {
LABEL_110:
      if ((v53 & 0x100000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_111;
    }
  }

  else if ((v53 & 0x1000) == 0)
  {
    goto LABEL_110;
  }

  this = PB::Writer::write(a2, *(v3 + 72));
  if ((*(v3 + 204) & 0x100000000) != 0)
  {
LABEL_111:
    this = PB::Writer::write(a2, *(v3 + 152));
  }

LABEL_112:
  if (*(v3 + 212))
  {
    v54 = *(v3 + 187);
    this = PB::Writer::write(a2);
  }

  if (*(v3 + 209))
  {
    v55 = *(v3 + 163);
    this = PB::Writer::write(a2);
  }

  if (*(v3 + 214))
  {
    v56 = *(v3 + 203);
    this = PB::Writer::write(a2);
  }

  v57 = *(v3 + 204);
  if ((v57 & 0x1000000000000) != 0)
  {
    v58 = *(v3 + 171);
    this = PB::Writer::write(a2);
    v57 = *(v3 + 204);
  }

  if ((v57 & 0x100000000000000) != 0)
  {
    v59 = *(v3 + 179);
    this = PB::Writer::write(a2);
  }

  if (*(v3 + 213))
  {
    v72 = *(v3 + 195);

    return PB::Writer::write(a2);
  }

  return this;
}