uint64_t CMMsl::AuxiliaryDeviceMotion::readFrom(CMMsl::AuxiliaryDeviceMotion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
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
            goto LABEL_21;
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
        goto LABEL_267;
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

LABEL_21:
      v22 = v10 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        goto LABEL_267;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        break;
      }

      if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v101 = *(a2 + 1);
            v102 = *(a2 + 2);
            while (v101 < v102 && (*(a2 + 24) & 1) == 0)
            {
              v104 = *(this + 2);
              v103 = *(this + 3);
              if (v104 >= v103)
              {
                v106 = *(this + 1);
                v107 = v104 - v106;
                v108 = (v104 - v106) >> 2;
                v109 = v108 + 1;
                if ((v108 + 1) >> 62)
                {
                  goto LABEL_271;
                }

                v110 = v103 - v106;
                if (v110 >> 1 > v109)
                {
                  v109 = v110 >> 1;
                }

                if (v110 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v111 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v111 = v109;
                }

                if (v111)
                {
                  sub_25AD288E8(v111);
                }

                v112 = (v104 - v106) >> 2;
                v113 = (4 * v108);
                v114 = (4 * v108 - 4 * v112);
                *v113 = 0;
                v105 = v113 + 1;
                memcpy(v114, v106, v107);
                v115 = *(this + 1);
                *(this + 1) = v114;
                *(this + 2) = v105;
                *(this + 3) = 0;
                if (v115)
                {
                  operator delete(v115);
                }
              }

              else
              {
                *v104 = 0;
                v105 = v104 + 4;
              }

              *(this + 2) = v105;
              v116 = *(a2 + 1);
              if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(a2 + 2))
              {
                goto LABEL_158;
              }

              *(v105 - 1) = *(*a2 + v116);
              v102 = *(a2 + 2);
              v101 = *(a2 + 1) + 4;
              *(a2 + 1) = v101;
            }

            goto LABEL_159;
          }

          v159 = *(this + 2);
          v158 = *(this + 3);
          if (v159 >= v158)
          {
            v180 = *(this + 1);
            v181 = v159 - v180;
            v182 = (v159 - v180) >> 2;
            v183 = v182 + 1;
            if ((v182 + 1) >> 62)
            {
              goto LABEL_271;
            }

            v184 = v158 - v180;
            if (v184 >> 1 > v183)
            {
              v183 = v184 >> 1;
            }

            if (v184 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v185 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v185 = v183;
            }

            if (v185)
            {
              sub_25AD288E8(v185);
            }

            v204 = (v159 - v180) >> 2;
            v205 = (4 * v182);
            v206 = (4 * v182 - 4 * v204);
            *v205 = 0;
            v135 = v205 + 1;
            memcpy(v206, v180, v181);
            v207 = *(this + 1);
            *(this + 1) = v206;
            *(this + 2) = v135;
            *(this + 3) = 0;
            if (v207)
            {
              operator delete(v207);
            }
          }

          else
          {
            *v159 = 0;
            v135 = v159 + 4;
          }

          *(this + 2) = v135;
          goto LABEL_261;
        }

        if (v23 != 6)
        {
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_269;
          }

          goto LABEL_18;
        }

        *(this + 152) |= 8u;
        v66 = *(a2 + 1);
        v65 = *(a2 + 2);
        v67 = *a2;
        if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v65)
        {
          v138 = 0;
          v139 = 0;
          v70 = 0;
          v140 = (v67 + v66);
          v18 = v65 >= v66;
          v141 = v65 - v66;
          if (!v18)
          {
            v141 = 0;
          }

          v142 = v66 + 1;
          while (1)
          {
            if (!v141)
            {
              LODWORD(v70) = 0;
              *(a2 + 24) = 1;
              goto LABEL_239;
            }

            v143 = *v140;
            *(a2 + 1) = v142;
            v70 |= (v143 & 0x7F) << v138;
            if ((v143 & 0x80) == 0)
            {
              break;
            }

            v138 += 7;
            ++v140;
            --v141;
            ++v142;
            v14 = v139++ > 8;
            if (v14)
            {
LABEL_171:
              LODWORD(v70) = 0;
              goto LABEL_239;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v70) = 0;
          }
        }

        else
        {
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v71 = (v67 + v66);
          v72 = v66 + 1;
          while (1)
          {
            *(a2 + 1) = v72;
            v73 = *v71++;
            v70 |= (v73 & 0x7F) << v68;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            ++v72;
            v14 = v69++ > 8;
            if (v14)
            {
              goto LABEL_171;
            }
          }
        }

LABEL_239:
        *(this + 37) = v70;
      }

      else
      {
        if (v23 == 7)
        {
          *(this + 152) |= 1u;
          v93 = *(a2 + 1);
          v92 = *(a2 + 2);
          v94 = *a2;
          if (v93 > 0xFFFFFFFFFFFFFFF5 || v93 + 10 > v92)
          {
            v144 = 0;
            v145 = 0;
            v97 = 0;
            v146 = (v94 + v93);
            v18 = v92 >= v93;
            v147 = v92 - v93;
            if (!v18)
            {
              v147 = 0;
            }

            v148 = v93 + 1;
            while (1)
            {
              if (!v147)
              {
                v97 = 0;
                *(a2 + 24) = 1;
                goto LABEL_242;
              }

              v149 = *v146;
              *(a2 + 1) = v148;
              v97 |= (v149 & 0x7F) << v144;
              if ((v149 & 0x80) == 0)
              {
                break;
              }

              v144 += 7;
              ++v146;
              --v147;
              ++v148;
              v14 = v145++ > 8;
              if (v14)
              {
LABEL_179:
                v97 = 0;
                goto LABEL_242;
              }
            }

            if (*(a2 + 24))
            {
              v97 = 0;
            }
          }

          else
          {
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = (v94 + v93);
            v99 = v93 + 1;
            while (1)
            {
              *(a2 + 1) = v99;
              v100 = *v98++;
              v97 |= (v100 & 0x7F) << v95;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              ++v99;
              v14 = v96++ > 8;
              if (v14)
              {
                goto LABEL_179;
              }
            }
          }

LABEL_242:
          *(this + 16) = v97;
          goto LABEL_18;
        }

        if (v23 == 8)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_269:
              v213 = 0;
              return v213 & 1;
            }

            v117 = *(a2 + 1);
            v118 = *(a2 + 2);
            while (v117 < v118 && (*(a2 + 24) & 1) == 0)
            {
              v120 = *(this + 14);
              v119 = *(this + 15);
              if (v120 >= v119)
              {
                v122 = *(this + 13);
                v123 = v120 - v122;
                v124 = (v120 - v122) >> 2;
                v125 = v124 + 1;
                if ((v124 + 1) >> 62)
                {
                  goto LABEL_271;
                }

                v126 = v119 - v122;
                if (v126 >> 1 > v125)
                {
                  v125 = v126 >> 1;
                }

                if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v127 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v127 = v125;
                }

                if (v127)
                {
                  sub_25AD288E8(v127);
                }

                v128 = (v120 - v122) >> 2;
                v129 = (4 * v124);
                v130 = (4 * v124 - 4 * v128);
                *v129 = 0;
                v121 = v129 + 1;
                memcpy(v130, v122, v123);
                v131 = *(this + 13);
                *(this + 13) = v130;
                *(this + 14) = v121;
                *(this + 15) = 0;
                if (v131)
                {
                  operator delete(v131);
                }
              }

              else
              {
                *v120 = 0;
                v121 = v120 + 4;
              }

              *(this + 14) = v121;
              v132 = *(a2 + 1);
              if (v132 > 0xFFFFFFFFFFFFFFFBLL || v132 + 4 > *(a2 + 2))
              {
                goto LABEL_158;
              }

              *(v121 - 1) = *(*a2 + v132);
              v118 = *(a2 + 2);
              v117 = *(a2 + 1) + 4;
              *(a2 + 1) = v117;
            }

            goto LABEL_159;
          }

          v161 = *(this + 14);
          v160 = *(this + 15);
          if (v161 >= v160)
          {
            v186 = *(this + 13);
            v187 = v161 - v186;
            v188 = (v161 - v186) >> 2;
            v189 = v188 + 1;
            if ((v188 + 1) >> 62)
            {
LABEL_271:
              sub_25AAE66B8();
            }

            v190 = v160 - v186;
            if (v190 >> 1 > v189)
            {
              v189 = v190 >> 1;
            }

            if (v190 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v191 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v191 = v189;
            }

            if (v191)
            {
              sub_25AD288E8(v191);
            }

            v208 = (v161 - v186) >> 2;
            v209 = (4 * v188);
            v210 = (4 * v188 - 4 * v208);
            *v209 = 0;
            v135 = v209 + 1;
            memcpy(v210, v186, v187);
            v211 = *(this + 13);
            *(this + 13) = v210;
            *(this + 14) = v135;
            *(this + 15) = 0;
            if (v211)
            {
              operator delete(v211);
            }
          }

          else
          {
            *v161 = 0;
            v135 = v161 + 4;
          }

          *(this + 14) = v135;
          goto LABEL_261;
        }

        if (v23 != 9)
        {
          goto LABEL_17;
        }

        *(this + 152) |= 4u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v152 = 0;
          v153 = 0;
          v29 = 0;
          v154 = (v26 + v25);
          v18 = v24 >= v25;
          v155 = v24 - v25;
          if (!v18)
          {
            v155 = 0;
          }

          v156 = v25 + 1;
          while (1)
          {
            if (!v155)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_245;
            }

            v157 = *v154;
            *(a2 + 1) = v156;
            v29 |= (v157 & 0x7F) << v152;
            if ((v157 & 0x80) == 0)
            {
              break;
            }

            v152 += 7;
            ++v154;
            --v155;
            ++v156;
            v14 = v153++ > 8;
            if (v14)
            {
LABEL_189:
              LODWORD(v29) = 0;
              goto LABEL_245;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v29) = 0;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (v26 + v25);
          v31 = v25 + 1;
          while (1)
          {
            *(a2 + 1) = v31;
            v32 = *v30++;
            v29 |= (v32 & 0x7F) << v27;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            ++v31;
            v14 = v28++ > 8;
            if (v14)
            {
              goto LABEL_189;
            }
          }
        }

LABEL_245:
        *(this + 36) = v29;
      }

LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_267;
      }
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_269;
          }

          v76 = *(a2 + 1);
          v77 = *(a2 + 2);
          while (v76 < v77 && (*(a2 + 24) & 1) == 0)
          {
            v79 = *(this + 11);
            v78 = *(this + 12);
            if (v79 >= v78)
            {
              v81 = *(this + 10);
              v82 = v79 - v81;
              v83 = (v79 - v81) >> 2;
              v84 = v83 + 1;
              if ((v83 + 1) >> 62)
              {
                goto LABEL_271;
              }

              v85 = v78 - v81;
              if (v85 >> 1 > v84)
              {
                v84 = v85 >> 1;
              }

              if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v86 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v86 = v84;
              }

              if (v86)
              {
                sub_25AD288E8(v86);
              }

              v87 = (v79 - v81) >> 2;
              v88 = (4 * v83);
              v89 = (4 * v83 - 4 * v87);
              *v88 = 0;
              v80 = v88 + 1;
              memcpy(v89, v81, v82);
              v90 = *(this + 10);
              *(this + 10) = v89;
              *(this + 11) = v80;
              *(this + 12) = 0;
              if (v90)
              {
                operator delete(v90);
              }
            }

            else
            {
              *v79 = 0;
              v80 = v79 + 4;
            }

            *(this + 11) = v80;
            v91 = *(a2 + 1);
            if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(a2 + 2))
            {
LABEL_158:
              *(a2 + 24) = 1;
              goto LABEL_159;
            }

            *(v80 - 1) = *(*a2 + v91);
            v77 = *(a2 + 2);
            v76 = *(a2 + 1) + 4;
            *(a2 + 1) = v76;
          }

          goto LABEL_159;
        }

        v151 = *(this + 11);
        v150 = *(this + 12);
        if (v151 >= v150)
        {
          v174 = *(this + 10);
          v175 = v151 - v174;
          v176 = (v151 - v174) >> 2;
          v177 = v176 + 1;
          if ((v176 + 1) >> 62)
          {
            goto LABEL_271;
          }

          v178 = v150 - v174;
          if (v178 >> 1 > v177)
          {
            v177 = v178 >> 1;
          }

          if (v178 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v179 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v179 = v177;
          }

          if (v179)
          {
            sub_25AD288E8(v179);
          }

          v200 = (v151 - v174) >> 2;
          v201 = (4 * v176);
          v202 = (4 * v176 - 4 * v200);
          *v201 = 0;
          v135 = v201 + 1;
          memcpy(v202, v174, v175);
          v203 = *(this + 10);
          *(this + 10) = v202;
          *(this + 11) = v135;
          *(this + 12) = 0;
          if (v203)
          {
            operator delete(v203);
          }
        }

        else
        {
          *v151 = 0;
          v135 = v151 + 4;
        }

        *(this + 11) = v135;
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_17;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_269;
          }

          v49 = *(a2 + 1);
          v50 = *(a2 + 2);
          while (v49 < v50 && (*(a2 + 24) & 1) == 0)
          {
            v52 = *(this + 5);
            v51 = *(this + 6);
            if (v52 >= v51)
            {
              v54 = *(this + 4);
              v55 = v52 - v54;
              v56 = (v52 - v54) >> 2;
              v57 = v56 + 1;
              if ((v56 + 1) >> 62)
              {
                goto LABEL_271;
              }

              v58 = v51 - v54;
              if (v58 >> 1 > v57)
              {
                v57 = v58 >> 1;
              }

              if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v59 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v57;
              }

              if (v59)
              {
                sub_25AD288E8(v59);
              }

              v60 = (v52 - v54) >> 2;
              v61 = (4 * v56);
              v62 = (4 * v56 - 4 * v60);
              *v61 = 0;
              v53 = v61 + 1;
              memcpy(v62, v54, v55);
              v63 = *(this + 4);
              *(this + 4) = v62;
              *(this + 5) = v53;
              *(this + 6) = 0;
              if (v63)
              {
                operator delete(v63);
              }
            }

            else
            {
              *v52 = 0;
              v53 = v52 + 4;
            }

            *(this + 5) = v53;
            v64 = *(a2 + 1);
            if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
            {
              goto LABEL_158;
            }

            *(v53 - 1) = *(*a2 + v64);
            v50 = *(a2 + 2);
            v49 = *(a2 + 1) + 4;
            *(a2 + 1) = v49;
          }

          goto LABEL_159;
        }

        v137 = *(this + 5);
        v136 = *(this + 6);
        if (v137 >= v136)
        {
          v168 = *(this + 4);
          v169 = v137 - v168;
          v170 = (v137 - v168) >> 2;
          v171 = v170 + 1;
          if ((v170 + 1) >> 62)
          {
            goto LABEL_271;
          }

          v172 = v136 - v168;
          if (v172 >> 1 > v171)
          {
            v171 = v172 >> 1;
          }

          if (v172 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v173 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v173 = v171;
          }

          if (v173)
          {
            sub_25AD288E8(v173);
          }

          v196 = (v137 - v168) >> 2;
          v197 = (4 * v170);
          v198 = (4 * v170 - 4 * v196);
          *v197 = 0;
          v135 = v197 + 1;
          memcpy(v198, v168, v169);
          v199 = *(this + 4);
          *(this + 4) = v198;
          *(this + 5) = v135;
          *(this + 6) = 0;
          if (v199)
          {
            operator delete(v199);
          }
        }

        else
        {
          *v137 = 0;
          v135 = v137 + 4;
        }

        *(this + 5) = v135;
      }
    }

    else
    {
      if (v23 == 1)
      {
        *(this + 152) |= 2u;
        v74 = *(a2 + 1);
        if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(a2 + 2))
        {
LABEL_263:
          *(a2 + 24) = 1;
          goto LABEL_18;
        }

        *(this + 17) = *(*a2 + v74);
        v75 = *(a2 + 1) + 8;
        goto LABEL_265;
      }

      if (v23 != 2)
      {
        goto LABEL_17;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_269;
        }

        v33 = *(a2 + 1);
        v34 = *(a2 + 2);
        while (v33 < v34 && (*(a2 + 24) & 1) == 0)
        {
          v36 = *(this + 8);
          v35 = *(this + 9);
          if (v36 >= v35)
          {
            v38 = *(this + 7);
            v39 = v36 - v38;
            v40 = (v36 - v38) >> 2;
            v41 = v40 + 1;
            if ((v40 + 1) >> 62)
            {
              goto LABEL_271;
            }

            v42 = v35 - v38;
            if (v42 >> 1 > v41)
            {
              v41 = v42 >> 1;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v43 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              sub_25AD288E8(v43);
            }

            v44 = (v36 - v38) >> 2;
            v45 = (4 * v40);
            v46 = (4 * v40 - 4 * v44);
            *v45 = 0;
            v37 = v45 + 1;
            memcpy(v46, v38, v39);
            v47 = *(this + 7);
            *(this + 7) = v46;
            *(this + 8) = v37;
            *(this + 9) = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            *v36 = 0;
            v37 = v36 + 4;
          }

          *(this + 8) = v37;
          v48 = *(a2 + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
          {
            goto LABEL_158;
          }

          *(v37 - 1) = *(*a2 + v48);
          v34 = *(a2 + 2);
          v33 = *(a2 + 1) + 4;
          *(a2 + 1) = v33;
        }

LABEL_159:
        PB::Reader::recallMark();
        goto LABEL_18;
      }

      v134 = *(this + 8);
      v133 = *(this + 9);
      if (v134 >= v133)
      {
        v162 = *(this + 7);
        v163 = v134 - v162;
        v164 = (v134 - v162) >> 2;
        v165 = v164 + 1;
        if ((v164 + 1) >> 62)
        {
          goto LABEL_271;
        }

        v166 = v133 - v162;
        if (v166 >> 1 > v165)
        {
          v165 = v166 >> 1;
        }

        if (v166 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v167 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v167 = v165;
        }

        if (v167)
        {
          sub_25AD288E8(v167);
        }

        v192 = (v134 - v162) >> 2;
        v193 = (4 * v164);
        v194 = (4 * v164 - 4 * v192);
        *v193 = 0;
        v135 = v193 + 1;
        memcpy(v194, v162, v163);
        v195 = *(this + 7);
        *(this + 7) = v194;
        *(this + 8) = v135;
        *(this + 9) = 0;
        if (v195)
        {
          operator delete(v195);
        }
      }

      else
      {
        *v134 = 0;
        v135 = v134 + 4;
      }

      *(this + 8) = v135;
    }

LABEL_261:
    v212 = *(a2 + 1);
    if (v212 > 0xFFFFFFFFFFFFFFFBLL || v212 + 4 > *(a2 + 2))
    {
      goto LABEL_263;
    }

    *(v135 - 1) = *(*a2 + v212);
    v75 = *(a2 + 1) + 4;
LABEL_265:
    *(a2 + 1) = v75;
    goto LABEL_18;
  }

LABEL_267:
  v213 = v4 ^ 1;
  return v213 & 1;
}

uint64_t CMMsl::AuxiliaryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 152) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 136));
  }

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12);
  }

  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15);
  }

  v16 = *(v3 + 152);
  if ((v16 & 8) != 0)
  {
    v17 = *(v3 + 148);
    this = PB::Writer::writeVarInt(a2);
    v16 = *(v3 + 152);
  }

  if (v16)
  {
    v18 = *(v3 + 128);
    this = PB::Writer::writeVarInt(a2);
  }

  v19 = *(v3 + 104);
  v20 = *(v3 + 112);
  while (v19 != v20)
  {
    v21 = *v19++;
    this = PB::Writer::write(a2, v21);
  }

  if ((*(v3 + 152) & 4) != 0)
  {
    v22 = *(v3 + 144);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::AuxiliaryDeviceMotion::hash_value(CMMsl::AuxiliaryDeviceMotion *this)
{
  if ((*(this + 152) & 2) != 0)
  {
    if (*(this + 17) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 17);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 7);
  v4 = *(this + 8);
  v5 = PBHashBytes();
  v6 = *(this + 10);
  v7 = *(this + 11);
  v8 = PBHashBytes();
  v9 = *(this + 4);
  v10 = *(this + 5);
  v11 = PBHashBytes();
  v12 = *(this + 1);
  v13 = *(this + 2);
  v14 = PBHashBytes();
  if ((*(this + 152) & 8) != 0)
  {
    v15 = *(this + 37);
    if (*(this + 152))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
    if (*(this + 152))
    {
LABEL_8:
      v16 = *(this + 16);
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_11:
  v17 = *(this + 13);
  v18 = *(this + 14);
  v19 = PBHashBytes();
  if ((*(this + 152) & 4) != 0)
  {
    v20 = *(this + 36);
  }

  else
  {
    v20 = 0;
  }

  return v5 ^ v2 ^ v8 ^ v11 ^ v14 ^ v15 ^ v16 ^ v19 ^ v20;
}

uint64_t CMMsl::AveragedALSData::AveragedALSData(uint64_t this)
{
  *this = &unk_286C1EA90;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1EA90;
  *(this + 20) = 0;
  return this;
}

void CMMsl::AveragedALSData::~AveragedALSData(CMMsl::AveragedALSData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::AveragedALSData::AveragedALSData(CMMsl::AveragedALSData *this, const CMMsl::AveragedALSData *a2)
{
  *this = &unk_286C1EA90;
  *(this + 5) = 0;
  if ((*(a2 + 20) & 1) == 0)
  {
    v2 = 2;
    if ((*(a2 + 20) & 2) == 0)
    {
      return *&v3;
    }

    goto LABEL_5;
  }

  v3 = *(a2 + 1);
  *(this + 20) = 1;
  *(this + 1) = v3;
  v2 = 3;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    LODWORD(v3) = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 4) = v3;
  }

  return *&v3;
}

uint64_t CMMsl::AveragedALSData::operator=(uint64_t a1, const CMMsl::AveragedALSData *a2)
{
  if (a1 != a2)
  {
    CMMsl::AveragedALSData::AveragedALSData(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AveragedALSData *a2, CMMsl::AveragedALSData *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::AveragedALSData::AveragedALSData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EA90;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C1EA90;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::AveragedALSData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C1EA90;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v4;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::AveragedALSData::formatText(CMMsl::AveragedALSData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "alsTrustedLux", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "startTime", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::AveragedALSData::readFrom(CMMsl::AveragedALSData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
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
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
LABEL_30:
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 20) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 4) = *(*a2 + v2);
    v2 = *(a2 + 1) + 4;
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::AveragedALSData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL CMMsl::AveragedALSData::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::AveragedALSData::hash_value(CMMsl::AveragedALSData *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = 0;
    return v3 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ *&v1;
}

uint64_t CMMsl::BTConnection::BTConnection(uint64_t this)
{
  *this = &unk_286C1EAC8;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1EAC8;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BTConnection::~BTConnection(CMMsl::BTConnection *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BTConnection::BTConnection(uint64_t this, const CMMsl::BTConnection *a2)
{
  *this = &unk_286C1EAC8;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 28) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 28))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 28) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    *(this + 28) = v3 | 4;
    *(this + 24) = v6;
  }

  return this;
}

uint64_t CMMsl::BTConnection::operator=(uint64_t a1, const CMMsl::BTConnection *a2)
{
  if (a1 != a2)
  {
    CMMsl::BTConnection::BTConnection(&v6, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BTConnection *a2, CMMsl::BTConnection *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  return result;
}

double CMMsl::BTConnection::BTConnection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EAC8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

{
  *a1 = &unk_286C1EAC8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::BTConnection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C1EAC8;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v11 = *(a1 + 28);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 28) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::BTConnection::formatText(CMMsl::BTConnection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    v6 = *(this + 24);
    PB::TextFormatter::format(a2, "fConnected");
    v5 = *(this + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "fEndTime", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "fStartTime", *(this + 2));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BTConnection::readFrom(CMMsl::BTConnection *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
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
        goto LABEL_39;
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
        goto LABEL_39;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 24) = v24;
        goto LABEL_35;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_34:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_35;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(a2 + 1);
LABEL_35:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_39;
      }
    }

    *(this + 28) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_35;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_34;
  }

LABEL_39:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::BTConnection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 2) == 0)
  {
    if ((*(this + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 16));
  v4 = *(v3 + 28);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2);
}

BOOL CMMsl::BTConnection::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 4) == 0;
  if ((*(a1 + 28) & 4) != 0)
  {
    return (*(a2 + 28) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::BTConnection::hash_value(CMMsl::BTConnection *this)
{
  if ((*(this + 28) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 28))
    {
LABEL_3:
      v2 = *(this + 1);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if ((*(this + 28) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      v3 = 0;
      return *&v2 ^ *&v1 ^ v3;
    }
  }

  else
  {
    v1 = 0.0;
    if (*(this + 28))
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(this + 24);
  return *&v2 ^ *&v1 ^ v3;
}

uint64_t CMMsl::BacklightState::BacklightState(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286C1EB00;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286C1EB00;
  return this;
}

void CMMsl::BacklightState::~BacklightState(CMMsl::BacklightState *this)
{
  *this = &unk_286C1EB00;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    sub_25AD28A30(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    sub_25AD28A30(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BacklightState::~BacklightState(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BacklightState::BacklightState(uint64_t this, const CMMsl::BacklightState *a2)
{
  *this = &unk_286C1EB00;
  *(this + 8) = 0;
  *(this + 28) = 0;
  *(this + 16) = 0;
  if (*(a2 + 28))
  {
    v2 = *(a2 + 6);
    *(this + 28) = 1;
    *(this + 24) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BacklightState::operator=(uint64_t a1, const CMMsl::BacklightState *a2)
{
  if (a1 != a2)
  {
    CMMsl::BacklightState::BacklightState(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    CMMsl::BacklightState::~BacklightState(&v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BacklightState *a2, CMMsl::BacklightState *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  return this;
}

uint64_t CMMsl::BacklightState::BacklightState(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_286C1EB00;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    sub_25AD28A30(v5);
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7)
  {
    sub_25AD28A30(v7);
  }

  return a1;
}

uint64_t CMMsl::BacklightState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BacklightState::BacklightState(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    CMMsl::BacklightState::~BacklightState(&v6);
  }

  return a1;
}

uint64_t CMMsl::BacklightState::formatText(CMMsl::BacklightState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 28))
  {
    v5 = *(this + 6);
    PB::TextFormatter::format(a2, "backlightState");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BacklightState::readFrom(CMMsl::BacklightState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
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
        goto LABEL_48;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        operator new();
      }

      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_43;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_39:
              LODWORD(v28) = 0;
              goto LABEL_43;
            }
          }

          if (*(a2 + 24))
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
            *(a2 + 1) = v30;
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
              goto LABEL_39;
            }
          }
        }

LABEL_43:
        *(this + 6) = v28;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_48;
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
  }

LABEL_48:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::BacklightState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 28))
  {
    v4 = *(this + 24);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::BacklightState::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = *(v6 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 8);
    }

    if (v8 != v9)
    {
      return 0;
    }

    v11 = v7 >= 0 ? *(a1 + 8) : *v5;
    v12 = v10 >= 0 ? *(a2 + 8) : *v6;
    if (memcmp(v11, v12, v8))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  result = v15 == 0;
  if (v14)
  {
    if (v15)
    {
      v16 = *(v14 + 23);
      if (v16 >= 0)
      {
        v17 = *(v14 + 23);
      }

      else
      {
        v17 = *(v14 + 8);
      }

      v18 = *(v15 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v15 + 8);
      }

      if (v17 == v18)
      {
        v20 = v16 >= 0 ? *(a1 + 16) : *v14;
        v21 = v19 >= 0 ? *(a2 + 16) : *v15;
        if (!memcmp(v20, v21, v17))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t CMMsl::BacklightState::hash_value(CMMsl::BacklightState *this)
{
  if (*(this + 28))
  {
    v2 = *(this + 6);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = sub_25AD28AE4(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 2);
  if (v5)
  {
    v5 = sub_25AD28AE4(v5);
  }

  return v4 ^ v2 ^ v5;
}

uint64_t CMMsl::BasebandCompassCoex::BasebandCompassCoex(uint64_t this)
{
  *this = &unk_286C1EB38;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1EB38;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BasebandCompassCoex::~BasebandCompassCoex(CMMsl::BasebandCompassCoex *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BasebandCompassCoex::BasebandCompassCoex(uint64_t this, const CMMsl::BasebandCompassCoex *a2)
{
  *this = &unk_286C1EB38;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 4);
    *(this + 28) = v3 | 2;
    *(this + 16) = v7;
    return this;
  }

  v6 = *(a2 + 24);
  v3 |= 8u;
  *(this + 28) = v3;
  *(this + 24) = v6;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::BasebandCompassCoex::operator=(uint64_t a1, const CMMsl::BasebandCompassCoex *a2)
{
  if (a1 != a2)
  {
    CMMsl::BasebandCompassCoex::BasebandCompassCoex(&v9, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v3;
    v5 = *(a1 + 16);
    v4 = *(a1 + 20);
    v6 = v12;
    *(a1 + 16) = v11;
    *(a1 + 20) = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v11 = v5;
    v12 = v4;
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BasebandCompassCoex *a2, CMMsl::BasebandCompassCoex *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  LOBYTE(v5) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

double CMMsl::BasebandCompassCoex::BasebandCompassCoex(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EB38;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C1EB38;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::BasebandCompassCoex::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v13[0] = &unk_286C1EB38;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
    v8 = *(a1 + 28);
    *(a1 + 28) = v3;
    v17 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v4;
    v13[1] = v9;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v5;
    v16 = v3;
    v11 = *(a1 + 16);
    v10 = *(a1 + 20);
    *(a1 + 16) = v7;
    *(a1 + 20) = v6;
    v14 = v11;
    v15 = v10;
    PB::Base::~Base(v13);
  }

  return a1;
}

uint64_t CMMsl::BasebandCompassCoex::formatText(CMMsl::BasebandCompassCoex *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 8) != 0)
  {
    v6 = *(this + 24);
    PB::TextFormatter::format(a2, "inCoex");
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 4);
  PB::TextFormatter::format(a2, "reserved");
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v8 = *(this + 5);
  PB::TextFormatter::format(a2, "subType");
  if (*(this + 28))
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BasebandCompassCoex::readFrom(CMMsl::BasebandCompassCoex *this, PB::Reader *a2)
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
          goto LABEL_22;
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

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 28) |= 8u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v40 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v39 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v40 = v39 != 0;
        }

        *(this + 24) = v40;
        goto LABEL_19;
      }

      if (v22 == 4)
      {
        *(this + 28) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v48 = 0;
          v49 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v50 = (v32 + v31);
          v51 = v2 - v31;
          v52 = v31 + 1;
          while (1)
          {
            if (!v51)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_75;
            }

            v53 = v52;
            v54 = *v50;
            *(a2 + 1) = v53;
            v35 |= (v54 & 0x7F) << v48;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            ++v50;
            --v51;
            v52 = v53 + 1;
            v14 = v49++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_74;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_74:
          v2 = v53;
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

LABEL_75:
        *(this + 4) = v35;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 4u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v41 = 0;
          v42 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v43 = (v24 + v23);
          v44 = v2 - v23;
          v45 = v23 + 1;
          while (1)
          {
            if (!v44)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_71;
            }

            v46 = v45;
            v47 = *v43;
            *(a2 + 1) = v46;
            v27 |= (v47 & 0x7F) << v41;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v43;
            --v44;
            v45 = v46 + 1;
            v14 = v42++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_70;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_70:
          v2 = v46;
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

LABEL_71:
        *(this + 5) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v55 = 0;
      return v55 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t CMMsl::BasebandCompassCoex::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = *(v3 + 24);
      this = PB::Writer::write(a2);
      if ((*(v3 + 28) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 20);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::BasebandCompassCoex::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    if ((*(a2 + 28) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::BasebandCompassCoex::hash_value(CMMsl::BasebandCompassCoex *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 28) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      if ((*(this + 28) & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v3 = 0;
      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v4 = 0;
      return v2 ^ *&v1 ^ v3 ^ v4;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v3 = *(this + 24);
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = *(this + 4);
  return v2 ^ *&v1 ^ v3 ^ v4;
}

uint64_t CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(uint64_t this)
{
  *this = &unk_286C1EB70;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_286C1EB70;
  *(this + 48) = 0;
  return this;
}

void CMMsl::BasebandCompassCoexConstraints::~BasebandCompassCoexConstraints(CMMsl::BasebandCompassCoexConstraints *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(uint64_t this, const CMMsl::BasebandCompassCoexConstraints *a2)
{
  *this = &unk_286C1EB70;
  *(this + 48) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 48) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 48) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 10);
    v3 |= 0x40u;
    *(this + 48) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 24);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 8u;
  *(this + 48) = v3;
  *(this + 28) = v7;
  v2 = *(a2 + 24);
  if ((v2 & 0x400) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 47);
  v3 |= 0x400u;
  *(this + 48) = v3;
  *(this + 47) = v8;
  v2 = *(a2 + 24);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 45);
  v3 |= 0x100u;
  *(this + 48) = v3;
  *(this + 45) = v9;
  v2 = *(a2 + 24);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 44);
  v3 |= 0x80u;
  *(this + 48) = v3;
  *(this + 44) = v10;
  v2 = *(a2 + 24);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 48) = v3;
  *(this + 36) = v11;
  v2 = *(a2 + 24);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 48) = v3;
  *(this + 32) = v12;
  v2 = *(a2 + 24);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x200) == 0)
    {
      return this;
    }

LABEL_24:
    v14 = *(a2 + 46);
    *(this + 48) = v3 | 0x200;
    *(this + 46) = v14;
    return this;
  }

LABEL_23:
  v13 = *(a2 + 6);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 24) = v13;
  if ((*(a2 + 24) & 0x200) != 0)
  {
    goto LABEL_24;
  }

  return this;
}

CMMsl *CMMsl::BasebandCompassCoexConstraints::operator=(CMMsl *a1, const CMMsl::BasebandCompassCoexConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::BasebandCompassCoexConstraints *a2, CMMsl::BasebandCompassCoexConstraints *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  LODWORD(v5) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  LOBYTE(v3) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v3;
  LOBYTE(v3) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v3;
  LOBYTE(v3) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  LOBYTE(v6) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v6;
  return result;
}

float CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EB70;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 46) = *(a2 + 46);
  return result;
}

CMMsl *CMMsl::BasebandCompassCoexConstraints::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::BasebandCompassCoexConstraints::formatText(CMMsl::BasebandCompassCoexConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 0x80) != 0)
  {
    v6 = *(this + 44);
    PB::TextFormatter::format(a2, "activeCoex");
    v5 = *(this + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "avgTemperature", *(this + 6));
  v5 = *(this + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(this + 45);
  PB::TextFormatter::format(a2, "blackout");
  v5 = *(this + 24);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "gradient", *(this + 7));
  v5 = *(this + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "instTemperature", *(this + 8));
  v5 = *(this + 24);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = *(this + 46);
  PB::TextFormatter::format(a2, "isSettle");
  v5 = *(this + 24);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(this + 47);
  PB::TextFormatter::format(a2, "rapidGradientChange");
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "startTime", *(this + 1));
  v5 = *(this + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(this + 9);
  PB::TextFormatter::format(a2, "state");
  v5 = *(this + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "temperature", *(this + 10));
  if ((*(this + 24) & 2) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BasebandCompassCoexConstraints::readFrom(CMMsl::BasebandCompassCoexConstraints *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 24) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_67:
            *(a2 + 24) = 1;
            goto LABEL_92;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_51:
          v2 = *(a2 + 1) + 8;
LABEL_86:
          *(a2 + 1) = v2;
          goto LABEL_92;
        }

        if (v22 == 2)
        {
          *(this + 24) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_67;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_51;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 24) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_67;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_85;
          case 4:
            *(this + 24) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_67;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_85;
          case 5:
            *(this + 24) |= 0x400u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v32 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v31 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v32 = v31 != 0;
            }

            *(this + 47) = v32;
            goto LABEL_92;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 24) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_67;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_85;
        case 0xA:
          *(this + 24) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_67;
          }

          *(this + 6) = *(*a2 + v2);
LABEL_85:
          v2 = *(a2 + 1) + 4;
          goto LABEL_86;
        case 0xB:
          *(this + 24) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v34 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v33 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v34 = v33 != 0;
          }

          *(this + 46) = v34;
          goto LABEL_92;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 24) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v38 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v37 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v38 = v37 != 0;
          }

          *(this + 45) = v38;
          goto LABEL_92;
        case 7:
          *(this + 24) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v36 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v35 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v36 = v35 != 0;
          }

          *(this + 44) = v36;
          goto LABEL_92;
        case 8:
          *(this + 24) |= 0x20u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v39 = 0;
            v40 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v41 = (v24 + v23);
            v42 = v2 - v23;
            v43 = v23 + 1;
            while (1)
            {
              if (!v42)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_91;
              }

              v44 = v43;
              v45 = *v41;
              *(a2 + 1) = v44;
              v27 |= (v45 & 0x7F) << v39;
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
                LODWORD(v27) = 0;
                goto LABEL_90;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_90:
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

LABEL_91:
          *(this + 9) = v27;
          goto LABEL_92;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v46 = 0;
      return v46 & 1;
    }

    v2 = *(a2 + 1);
LABEL_92:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v46 = v4 ^ 1;
  return v46 & 1;
}

uint64_t CMMsl::BasebandCompassCoexConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 48);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = *(v3 + 47);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 48);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = *(v3 + 45);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = *(v3 + 44);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 48) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v9 = *(v3 + 46);

  return PB::Writer::write(a2);
}

BOOL CMMsl::BasebandCompassCoexConstraints::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 0x400) != 0)
  {
    if ((*(a2 + 48) & 0x400) == 0 || *(a1 + 47) != *(a2 + 47))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 0x100) != 0)
  {
    if ((*(a2 + 48) & 0x100) == 0 || *(a1 + 45) != *(a2 + 45))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x200) == 0;
  if ((*(a1 + 48) & 0x200) != 0)
  {
    return (*(a2 + 48) & 0x200) != 0 && *(a1 + 46) == *(a2 + 46);
  }

  return v4;
}

uint64_t CMMsl::BasebandCompassCoexConstraints::hash_value(CMMsl::BasebandCompassCoexConstraints *this)
{
  v1 = *(this + 24);
  if ((v1 & 2) == 0)
  {
    v2 = 0.0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_26:
    v3 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v5 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    v7 = 0;
    if ((*(this + 24) & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v4 = *(this + 10);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  v6 = *(this + 7);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 24) & 0x400) != 0)
  {
LABEL_12:
    v8 = *(this + 47);
    if ((*(this + 24) & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = 0;
  if ((*(this + 24) & 0x100) != 0)
  {
LABEL_13:
    v9 = *(this + 45);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v10 = *(this + 44);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_15:
    v11 = *(this + 9);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    v13 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_32:
  v11 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  v12 = *(this + 8);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_19:
    v14 = *(this + 6);
    v15 = LODWORD(v14);
    if (v14 == 0.0)
    {
      v15 = 0;
    }

    if ((*(this + 24) & 0x200) != 0)
    {
      goto LABEL_22;
    }

LABEL_35:
    v16 = 0;
    return *&v3 ^ *&v2 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v15 ^ v16;
  }

LABEL_34:
  v15 = 0;
  if ((*(this + 24) & 0x200) == 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  v16 = *(this + 46);
  return *&v3 ^ *&v2 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v15 ^ v16;
}

uint64_t CMMsl::BasebandSpeed::BasebandSpeed(uint64_t this)
{
  *this = &unk_286C1EBA8;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C1EBA8;
  *(this + 32) = 0;
  return this;
}

void CMMsl::BasebandSpeed::~BasebandSpeed(CMMsl::BasebandSpeed *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BasebandSpeed::BasebandSpeed(uint64_t this, const CMMsl::BasebandSpeed *a2)
{
  *this = &unk_286C1EBA8;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 32) = v3;
    *(this + 28) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 32) = v3 | 2;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 5);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 20) = v7;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::BasebandSpeed::operator=(uint64_t a1, const CMMsl::BasebandSpeed *a2)
{
  if (a1 != a2)
  {
    CMMsl::BasebandSpeed::BasebandSpeed(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BasebandSpeed *a2, CMMsl::BasebandSpeed *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::BasebandSpeed::BasebandSpeed(uint64_t result, uint64_t a2)
{
  *result = &unk_286C1EBA8;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 28) = *(a2 + 28);
  *(result + 24) = *(a2 + 24);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C1EBA8;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 28) = *(a2 + 28);
  *(result + 24) = *(a2 + 24);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::BasebandSpeed::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 32);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[0] = &unk_286C1EBA8;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 32) = v3;
    *(a1 + 16) = v7;
    v10 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::BasebandSpeed::formatText(CMMsl::BasebandSpeed *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    v7 = *(this + 4);
    PB::TextFormatter::format(a2, "reserved");
    v5 = *(this + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 5);
  PB::TextFormatter::format(a2, "scaledValue");
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(this + 6);
  PB::TextFormatter::format(a2, "speedRange");
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = *(this + 7);
  PB::TextFormatter::format(a2, "speedThreshold");
  if (*(this + 32))
  {
LABEL_6:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BasebandSpeed::readFrom(CMMsl::BasebandSpeed *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v3);
      v18 = v2 >= v3;
      v19 = v2 - v3;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v3 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
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
    v11 = (v7 + v3);
    v12 = v3 + 1;
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

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v55 = *(a2 + 1);
        v2 = *(a2 + 2);
        v56 = *a2;
        if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
        {
          v77 = 0;
          v78 = 0;
          v59 = 0;
          if (v2 <= v55)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v79 = (v56 + v55);
          v80 = v3 - v55;
          v81 = v55 + 1;
          while (1)
          {
            if (!v80)
            {
              v59 = 0;
              *(a2 + 24) = 1;
              goto LABEL_125;
            }

            v82 = v81;
            v83 = *v79;
            *(a2 + 1) = v82;
            v59 |= (v83 & 0x7F) << v77;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            ++v79;
            --v80;
            v81 = v82 + 1;
            v14 = v78++ > 8;
            if (v14)
            {
              v59 = 0;
              goto LABEL_124;
            }
          }

          if (*(a2 + 24))
          {
            v59 = 0;
          }

LABEL_124:
          v3 = v82;
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
            v3 = v61;
            *(a2 + 1) = v61;
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
              v59 = 0;
              break;
            }
          }
        }

LABEL_125:
        *(this + 1) = v59;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 0x10u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v91 = 0;
          v92 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v93 = (v32 + v31);
          v94 = v3 - v31;
          v95 = v31 + 1;
          while (1)
          {
            if (!v94)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_133;
            }

            v96 = v95;
            v97 = *v93;
            *(a2 + 1) = v96;
            v35 |= (v97 & 0x7F) << v91;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            ++v93;
            --v94;
            v95 = v96 + 1;
            v14 = v92++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_132;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_132:
          v3 = v96;
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
            v3 = v37;
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

LABEL_133:
        *(this + 7) = v35;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 32) |= 8u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v65 = (v40 + v39);
            v66 = v3 - v39;
            v67 = v39 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_117;
              }

              v68 = v67;
              v69 = *v65;
              *(a2 + 1) = v68;
              v43 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v65;
              --v66;
              v67 = v68 + 1;
              v14 = v64++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_116;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_116:
            v3 = v68;
          }

          else
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = (v40 + v39);
            v45 = v39 + 1;
            while (1)
            {
              v3 = v45;
              *(a2 + 1) = v45;
              v46 = *v44++;
              v43 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                break;
              }
            }
          }

LABEL_117:
          *(this + 6) = v43;
          goto LABEL_19;
        case 4:
          *(this + 32) |= 4u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v72 = (v48 + v47);
            v73 = v3 - v47;
            v74 = v47 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_121;
              }

              v75 = v74;
              v76 = *v72;
              *(a2 + 1) = v75;
              v51 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              ++v72;
              --v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                goto LABEL_120;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_120:
            v3 = v75;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            while (1)
            {
              v3 = v53;
              *(a2 + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                break;
              }
            }
          }

LABEL_121:
          *(this + 5) = v51;
          goto LABEL_19;
        case 5:
          *(this + 32) |= 2u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v84 = 0;
            v85 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v86 = (v24 + v23);
            v87 = v3 - v23;
            v88 = v23 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_129;
              }

              v89 = v88;
              v90 = *v86;
              *(a2 + 1) = v89;
              v27 |= (v90 & 0x7F) << v84;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              ++v86;
              --v87;
              v88 = v89 + 1;
              v14 = v85++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_128;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_128:
            v3 = v89;
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
              v3 = v29;
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

LABEL_129:
          *(this + 4) = v27;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v98 = 0;
      return v98 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t CMMsl::BasebandSpeed::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v3 + 20);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v9 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::BasebandSpeed::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::BasebandSpeed::hash_value(CMMsl::BasebandSpeed *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if ((*(this + 32) & 0x10) != 0)
    {
LABEL_3:
      v2 = *(this + 7);
      if ((*(this + 32) & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 8) != 0)
  {
LABEL_4:
    v3 = *(this + 6);
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v5 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5;
  }

LABEL_9:
  v3 = 0;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = *(this + 5);
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v5 = *(this + 4);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5;
}

uint64_t CMMsl::BaselineResetCheck::BaselineResetCheck(uint64_t this)
{
  *this = &unk_286C1EBE0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_286C1EBE0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BaselineResetCheck::~BaselineResetCheck(CMMsl::BaselineResetCheck *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::BaselineResetCheck::BaselineResetCheck(CMMsl::BaselineResetCheck *this, const CMMsl::BaselineResetCheck *a2)
{
  *this = &unk_286C1EBE0;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 25);
    v3 |= 0x10u;
    *(this + 28) = v3;
    *(this + 25) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 4);
      *(this + 28) = v3 | 2;
      *(this + 4) = result;
      return result;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 28) = v3;
  *(this + 5) = result;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::BaselineResetCheck::operator=(uint64_t a1, const CMMsl::BaselineResetCheck *a2)
{
  if (a1 != a2)
  {
    CMMsl::BaselineResetCheck::BaselineResetCheck(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LOWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::BaselineResetCheck *a2, CMMsl::BaselineResetCheck *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LOBYTE(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::BaselineResetCheck::BaselineResetCheck(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EBE0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C1EBE0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::BaselineResetCheck::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v12 = *(a1 + 28);
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[0] = &unk_286C1EBE0;
    v10[1] = v6;
    LOWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v4;
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    *(a1 + 28) = v3;
    *(a1 + 16) = v8;
    v10[2] = v7;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::BaselineResetCheck::formatText(CMMsl::BaselineResetCheck *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "lux", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "minPostSUIProx", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = *(this + 24);
  PB::TextFormatter::format(a2, "possibleObstructed");
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v8 = *(this + 25);
  PB::TextFormatter::format(a2, "resetTriggered");
  if (*(this + 28))
  {
LABEL_6:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BaselineResetCheck::readFrom(CMMsl::BaselineResetCheck *this, PB::Reader *a2)
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
          goto LABEL_22;
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

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v27 = *(a2 + 1);
        v2 = *(a2 + 2);
        v28 = *a2;
        if (v27 > 0xFFFFFFFFFFFFFFF5 || v27 + 10 > v2)
        {
          v35 = 0;
          v36 = 0;
          v31 = 0;
          if (v2 <= v27)
          {
            v2 = *(a2 + 1);
          }

          v37 = (v28 + v27);
          v38 = v2 - v27;
          v39 = v27 + 1;
          while (1)
          {
            if (!v38)
            {
              v31 = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v40 = v39;
            v41 = *v37;
            *(a2 + 1) = v40;
            v31 |= (v41 & 0x7F) << v35;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v37;
            --v38;
            v39 = v40 + 1;
            v14 = v36++ > 8;
            if (v14)
            {
              v31 = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            v31 = 0;
          }

LABEL_63:
          v2 = v40;
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = (v28 + v27);
          v33 = v27 + 1;
          while (1)
          {
            v2 = v33;
            *(a2 + 1) = v33;
            v34 = *v32++;
            v31 |= (v34 & 0x7F) << v29;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            ++v33;
            v14 = v30++ > 8;
            if (v14)
            {
              v31 = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 1) = v31;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 25) = v24;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v26 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v25 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v26 = v25 != 0;
          }

          *(this + 24) = v26;
          goto LABEL_19;
        case 4:
          *(this + 28) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_38:
            *(a2 + 24) = 1;
            goto LABEL_19;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_59;
        case 5:
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_38;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_59:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v42 = 0;
      return v42 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v42 = v4 ^ 1;
  return v42 & 1;
}

uint64_t CMMsl::BaselineResetCheck::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 28);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 25);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 28);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 20));
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v3 + 24);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v3 + 16);

  return PB::Writer::write(a2, v8);
}

BOOL CMMsl::BaselineResetCheck::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 0x10) != 0)
  {
    if ((*(a2 + 28) & 0x10) == 0 || *(a1 + 25) != *(a2 + 25))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    if ((*(a2 + 28) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::BaselineResetCheck::hash_value(CMMsl::BaselineResetCheck *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if ((*(this + 28) & 0x10) != 0)
    {
LABEL_3:
      v2 = *(this + 25);
      if ((*(this + 28) & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 8) != 0)
  {
LABEL_4:
    v3 = *(this + 24);
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v3 = 0;
  if ((*(this + 28) & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v5 ^ v7;
  }

LABEL_14:
  v5 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v6 = *(this + 4);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v2 ^ v1 ^ v3 ^ v5 ^ v7;
}

uint64_t CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(uint64_t this)
{
  *this = &unk_286C1EC18;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C1EC18;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::BatchedLocationFromOdometer::~BatchedLocationFromOdometer(CMMsl::BatchedLocationFromOdometer *this)
{
  v2 = *(this + 1);
  *this = &unk_286C1EC18;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BatchedLocationFromOdometer::~BatchedLocationFromOdometer(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(uint64_t this, const CMMsl::BatchedLocationFromOdometer *a2)
{
  *this = &unk_286C1EC18;
  *(this + 8) = 0;
  *(this + 20) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 4);
    *(this + 20) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

const CMMsl::BatchedLocationFromOdometer *CMMsl::BatchedLocationFromOdometer::operator=(const CMMsl::BatchedLocationFromOdometer *a1, const CMMsl::BatchedLocationFromOdometer *a2)
{
  if (a1 != a2)
  {
    CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(v6, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v3;
    v4 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v4;
    CMMsl::BatchedLocationFromOdometer::~BatchedLocationFromOdometer(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BatchedLocationFromOdometer *a2, CMMsl::BatchedLocationFromOdometer *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EC18;
  *(a1 + 8) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t CMMsl::BatchedLocationFromOdometer::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::BatchedLocationFromOdometer::~BatchedLocationFromOdometer(v6);
  }

  return a1;
}

uint64_t CMMsl::BatchedLocationFromOdometer::formatText(CMMsl::BatchedLocationFromOdometer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 20))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "batchedLocationFixType");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BatchedLocationFromOdometer::readFrom(CMMsl::BatchedLocationFromOdometer *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
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
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v33 = (v24 + v23);
          v18 = v22 >= v23;
          v34 = v22 - v23;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v36 = *v33;
            *(a2 + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_38:
              LODWORD(v27) = 0;
              goto LABEL_42;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }
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
              goto LABEL_38;
            }
          }
        }

LABEL_42:
        *(this + 4) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::MotionGPSLocation::MotionGPSLocation(uint64_t this)
{
  *this = &unk_286C21D88;
  *(this + 112) = 0;
  *(this + 180) = 0;
  return this;
}

{
  *this = &unk_286C21D88;
  *(this + 112) = 0;
  *(this + 180) = 0;
  return this;
}

uint64_t CMMsl::BatchedLocationFromOdometer::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::BatchedLocationFromOdometer::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::MotionGPSLocation::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

BOOL CMMsl::MotionGPSLocation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 180);
  v3 = *(a2 + 180);
  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 180);
  v10 = *(a2 + 180);
  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x20000) != 0)
  {
    if ((v10 & 0x20000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v10 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x80000) != 0)
  {
    if ((v10 & 0x80000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v10 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v9 & 0x200000) != 0)
  {
    if ((v10 & 0x200000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v10 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x100000) != 0)
  {
    if ((v10 & 0x100000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v10 & 0x100000) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 112);
  v6 = *(a2 + 112);
  if (v5)
  {
    if (!v6 || !CMMsl::TrackRunData::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((v9 & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    return 0;
  }

  result = (v10 & 0x4000) == 0;
  if ((v9 & 0x4000) == 0)
  {
    return result;
  }

  return (v10 & 0x4000) != 0 && *(a1 + 128) == *(a2 + 128);
}

unint64_t CMMsl::BatchedLocationFromOdometer::hash_value(CMMsl::BatchedLocationFromOdometer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::MotionGPSLocation::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

uint64_t CMMsl::BatchedLocationFromOdometer::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

double CMMsl::BatchedPPGData::BatchedPPGData(CMMsl::BatchedPPGData *this)
{
  *this = &unk_286C1EC50;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = &unk_286C1EC50;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

void CMMsl::BatchedPPGData::~BatchedPPGData(CMMsl::BatchedPPGData *this)
{
  *this = &unk_286C1EC50;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BatchedPPGData::~BatchedPPGData(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::BatchedPPGData *CMMsl::BatchedPPGData::BatchedPPGData(CMMsl::BatchedPPGData *this, const CMMsl::BatchedPPGData *a2)
{
  *this = &unk_286C1EC50;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 35) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v6 = *(a2 + 70);
  if ((v6 & 0x100) != 0)
  {
    v8 = *(a2 + 34);
    v7 = 256;
    *(this + 70) = 256;
    *(this + 34) = v8;
    v6 = *(a2 + 70);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if ((v6 & 0x10) != 0)
  {
LABEL_5:
    v9 = *(a2 + 30);
    v7 |= 0x10u;
    *(this + 70) = v7;
    *(this + 30) = v9;
    v6 = *(a2 + 70);
  }

LABEL_6:
  if ((v6 & 0x40) != 0)
  {
    v15 = *(a2 + 32);
    v7 |= 0x40u;
    *(this + 70) = v7;
    *(this + 32) = v15;
    v6 = *(a2 + 70);
    if ((v6 & 0x20) == 0)
    {
LABEL_8:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v16 = *(a2 + 31);
  v7 |= 0x20u;
  *(this + 70) = v7;
  *(this + 31) = v16;
  if ((*(a2 + 70) & 0x80) != 0)
  {
LABEL_9:
    v10 = *(a2 + 33);
    *(this + 70) = v7 | 0x80;
    *(this + 33) = v10;
  }

LABEL_10:
  if (this != a2)
  {
    sub_25AD287AC(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_25AD287AC(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  v11 = *(a2 + 70);
  if ((v11 & 8) != 0)
  {
    v17 = *(a2 + 29);
    *(this + 70) |= 8u;
    *(this + 29) = v17;
    v11 = *(a2 + 70);
    if ((v11 & 4) == 0)
    {
LABEL_14:
      if ((v11 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(a2 + 28);
  *(this + 70) |= 4u;
  *(this + 28) = v18;
  if ((*(a2 + 70) & 2) != 0)
  {
LABEL_15:
    v12 = *(a2 + 27);
    *(this + 70) |= 2u;
    *(this + 27) = v12;
  }

LABEL_16:
  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if (*(a2 + 70))
  {
    v13 = *(a2 + 26);
    *(this + 70) |= 1u;
    *(this + 26) = v13;
  }

  return this;
}

uint64_t CMMsl::BatchedPPGData::operator=(uint64_t a1, const CMMsl::BatchedPPGData *a2)
{
  if (a1 != a2)
  {
    CMMsl::BatchedPPGData::BatchedPPGData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BatchedPPGData::~BatchedPPGData(v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BatchedPPGData *a2, CMMsl::BatchedPPGData *a3)
{
  v3 = *(this + 140);
  *(this + 140) = *(a2 + 35);
  *(a2 + 35) = v3;
  v4 = *(this + 136);
  *(this + 136) = *(a2 + 34);
  *(a2 + 34) = v4;
  v5 = *(this + 120);
  *(this + 120) = *(a2 + 30);
  *(a2 + 30) = v5;
  v6 = *(this + 128);
  *(this + 128) = *(a2 + 32);
  *(a2 + 32) = v6;
  v7 = *(this + 124);
  *(this + 124) = *(a2 + 31);
  *(a2 + 31) = v7;
  v8 = *(this + 132);
  *(this + 132) = *(a2 + 33);
  *(a2 + 33) = v8;
  v9 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 96);
  *(this + 96) = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v14;
  LODWORD(v14) = *(this + 116);
  *(this + 116) = *(a2 + 29);
  *(a2 + 29) = v14;
  LODWORD(v14) = *(this + 112);
  *(this + 112) = *(a2 + 28);
  *(a2 + 28) = v14;
  LODWORD(v14) = *(this + 108);
  *(this + 108) = *(a2 + 27);
  *(a2 + 27) = v14;
  v15 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v15;
  v16 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v16;
  v17 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v17;
  v18 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v18;
  v19 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v19;
  v20 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v20;
  LODWORD(v20) = *(this + 104);
  *(this + 104) = *(a2 + 26);
  *(a2 + 26) = v20;
  return this;
}

uint64_t CMMsl::BatchedPPGData::BatchedPPGData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C1EC50;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 140) = *(a2 + 140);
  *(a2 + 140) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 132) = *(a2 + 132);
  sub_25AD28758(a1 + 80, (a2 + 80));
  sub_25AD28758(v5, (a2 + 56));
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 108) = *(a2 + 108);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t CMMsl::BatchedPPGData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BatchedPPGData::BatchedPPGData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BatchedPPGData::~BatchedPPGData(v5);
  }

  return a1;
}

uint64_t CMMsl::BatchedPPGData::formatText(CMMsl::BatchedPPGData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 70);
  if ((v5 & 0x80) != 0)
  {
    v6 = *(this + 33);
    PB::TextFormatter::format(a2, "TIA");
    v5 = *(this + 70);
  }

  if (v5)
  {
    v7 = *(this + 26);
    PB::TextFormatter::format(a2, "blankDacOffset");
  }

  v8 = *(this + 1);
  v9 = *(this + 2);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "blankDark");
  }

  v11 = *(this + 4);
  v12 = *(this + 5);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "blankLight");
  }

  v14 = *(this + 70);
  if ((v14 & 2) != 0)
  {
    v28 = *(this + 27);
    PB::TextFormatter::format(a2, "blankTIA");
    v14 = *(this + 70);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v14 & 4) == 0)
  {
    goto LABEL_11;
  }

  v29 = *(this + 28);
  PB::TextFormatter::format(a2, "blankiLED");
  if ((*(this + 70) & 8) != 0)
  {
LABEL_12:
    v15 = *(this + 29);
    PB::TextFormatter::format(a2, "dacOffset");
  }

LABEL_13:
  v16 = *(this + 7);
  v17 = *(this + 8);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(a2, "dark");
  }

  v19 = *(this + 70);
  if ((v19 & 0x10) != 0)
  {
    v20 = *(this + 30);
    PB::TextFormatter::format(a2, "flagBitfield");
    v19 = *(this + 70);
  }

  if ((v19 & 0x20) != 0)
  {
    v21 = *(this + 31);
    PB::TextFormatter::format(a2, "iLED");
  }

  v22 = *(this + 10);
  v23 = *(this + 11);
  while (v22 != v23)
  {
    v24 = *v22++;
    PB::TextFormatter::format(a2, "light");
  }

  v25 = *(this + 70);
  if ((v25 & 0x40) != 0)
  {
    v26 = *(this + 32);
    PB::TextFormatter::format(a2, "samplingFrequency");
    v25 = *(this + 70);
  }

  if ((v25 & 0x100) != 0)
  {
    v27 = *(this + 34);
    PB::TextFormatter::format(a2, "timestampRel");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::BatchedPPGData::readFrom(CMMsl::BatchedPPGData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 <= 0xFFFFFFFFFFFFFFF5 && v2 + 10 <= v3)
      {
        break;
      }

      v14 = 0;
      v15 = 0;
      v10 = 0;
      v16 = (v7 + v2);
      v17 = v3 >= v2;
      v18 = v3 - v2;
      if (!v17)
      {
        v18 = 0;
      }

      v19 = v2 + 1;
      do
      {
        if (!v18)
        {
          v4 = 1;
          *(a2 + 24) = 1;
          goto LABEL_465;
        }

        v20 = *v16;
        *(a2 + 1) = v19;
        v10 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_21;
        }

        v14 += 7;
        ++v16;
        --v18;
        ++v19;
        v48 = v15++ > 8;
      }

      while (!v48);
LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        goto LABEL_467;
      }

LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_465;
      }
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
      v48 = v9++ > 8;
      if (v48)
      {
        goto LABEL_17;
      }
    }

LABEL_21:
    v21 = v10 & 7;
    if (v21 != 4)
    {
      switch((v10 >> 3))
      {
        case 1u:
          *(this + 70) |= 0x100u;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_385;
              }

              v25 += 7;
              ++v29;
              v48 = v26++ > 8;
            }

            while (!v48);
LABEL_301:
            LODWORD(v27) = 0;
            goto LABEL_385;
          }

          v247 = 0;
          v248 = 0;
          v27 = 0;
          v249 = (v24 + v23);
          v17 = v22 >= v23;
          v250 = v22 - v23;
          if (!v17)
          {
            v250 = 0;
          }

          v251 = v23 + 1;
          while (2)
          {
            if (v250)
            {
              v252 = *v249;
              *(a2 + 1) = v251;
              v27 |= (v252 & 0x7F) << v247;
              if (v252 < 0)
              {
                v247 += 7;
                ++v249;
                --v250;
                ++v251;
                v48 = v248++ > 8;
                if (v48)
                {
                  goto LABEL_301;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }
            }

            else
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_385:
          *(this + 34) = v27;
          goto LABEL_18;
        case 2u:
          *(this + 70) |= 0x10u;
          v113 = *(a2 + 1);
          v112 = *(a2 + 2);
          v114 = *a2;
          if (v113 <= 0xFFFFFFFFFFFFFFF5 && v113 + 10 <= v112)
          {
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = (v114 + v113);
            v119 = v113 + 1;
            do
            {
              *(a2 + 1) = v119;
              v120 = *v118++;
              v117 |= (v120 & 0x7F) << v115;
              if ((v120 & 0x80) == 0)
              {
                goto LABEL_388;
              }

              v115 += 7;
              ++v119;
              v48 = v116++ > 8;
            }

            while (!v48);
LABEL_309:
            LODWORD(v117) = 0;
            goto LABEL_388;
          }

          v253 = 0;
          v254 = 0;
          v117 = 0;
          v255 = (v114 + v113);
          v17 = v112 >= v113;
          v256 = v112 - v113;
          if (!v17)
          {
            v256 = 0;
          }

          v257 = v113 + 1;
          while (2)
          {
            if (v256)
            {
              v258 = *v255;
              *(a2 + 1) = v257;
              v117 |= (v258 & 0x7F) << v253;
              if (v258 < 0)
              {
                v253 += 7;
                ++v255;
                --v256;
                ++v257;
                v48 = v254++ > 8;
                if (v48)
                {
                  goto LABEL_309;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v117) = 0;
              }
            }

            else
            {
              LODWORD(v117) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_388:
          *(this + 30) = v117;
          goto LABEL_18;
        case 3u:
          *(this + 70) |= 0x40u;
          v86 = *(a2 + 1);
          v85 = *(a2 + 2);
          v87 = *a2;
          if (v86 <= 0xFFFFFFFFFFFFFFF5 && v86 + 10 <= v85)
          {
            v88 = 0;
            v89 = 0;
            v90 = 0;
            v91 = (v87 + v86);
            v92 = v86 + 1;
            do
            {
              *(a2 + 1) = v92;
              v93 = *v91++;
              v90 |= (v93 & 0x7F) << v88;
              if ((v93 & 0x80) == 0)
              {
                goto LABEL_376;
              }

              v88 += 7;
              ++v92;
              v48 = v89++ > 8;
            }

            while (!v48);
LABEL_277:
            LODWORD(v90) = 0;
            goto LABEL_376;
          }

          v229 = 0;
          v230 = 0;
          v90 = 0;
          v231 = (v87 + v86);
          v17 = v85 >= v86;
          v232 = v85 - v86;
          if (!v17)
          {
            v232 = 0;
          }

          v233 = v86 + 1;
          while (2)
          {
            if (v232)
            {
              v234 = *v231;
              *(a2 + 1) = v233;
              v90 |= (v234 & 0x7F) << v229;
              if (v234 < 0)
              {
                v229 += 7;
                ++v231;
                --v232;
                ++v233;
                v48 = v230++ > 8;
                if (v48)
                {
                  goto LABEL_277;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v90) = 0;
              }
            }

            else
            {
              LODWORD(v90) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_376:
          *(this + 32) = v90;
          goto LABEL_18;
        case 4u:
          *(this + 70) |= 0x20u;
          v95 = *(a2 + 1);
          v94 = *(a2 + 2);
          v96 = *a2;
          if (v95 <= 0xFFFFFFFFFFFFFFF5 && v95 + 10 <= v94)
          {
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = (v96 + v95);
            v101 = v95 + 1;
            do
            {
              *(a2 + 1) = v101;
              v102 = *v100++;
              v99 |= (v102 & 0x7F) << v97;
              if ((v102 & 0x80) == 0)
              {
                goto LABEL_379;
              }

              v97 += 7;
              ++v101;
              v48 = v98++ > 8;
            }

            while (!v48);
LABEL_285:
            LODWORD(v99) = 0;
            goto LABEL_379;
          }

          v235 = 0;
          v236 = 0;
          v99 = 0;
          v237 = (v96 + v95);
          v17 = v94 >= v95;
          v238 = v94 - v95;
          if (!v17)
          {
            v238 = 0;
          }

          v239 = v95 + 1;
          while (2)
          {
            if (v238)
            {
              v240 = *v237;
              *(a2 + 1) = v239;
              v99 |= (v240 & 0x7F) << v235;
              if (v240 < 0)
              {
                v235 += 7;
                ++v237;
                --v238;
                ++v239;
                v48 = v236++ > 8;
                if (v48)
                {
                  goto LABEL_285;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v99) = 0;
              }
            }

            else
            {
              LODWORD(v99) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_379:
          *(this + 31) = v99;
          goto LABEL_18;
        case 5u:
          *(this + 70) |= 0x80u;
          v59 = *(a2 + 1);
          v58 = *(a2 + 2);
          v60 = *a2;
          if (v59 <= 0xFFFFFFFFFFFFFFF5 && v59 + 10 <= v58)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = (v60 + v59);
            v65 = v59 + 1;
            do
            {
              *(a2 + 1) = v65;
              v66 = *v64++;
              v63 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                goto LABEL_367;
              }

              v61 += 7;
              ++v65;
              v48 = v62++ > 8;
            }

            while (!v48);
LABEL_253:
            LODWORD(v63) = 0;
            goto LABEL_367;
          }

          v211 = 0;
          v212 = 0;
          v63 = 0;
          v213 = (v60 + v59);
          v17 = v58 >= v59;
          v214 = v58 - v59;
          if (!v17)
          {
            v214 = 0;
          }

          v215 = v59 + 1;
          while (2)
          {
            if (v214)
            {
              v216 = *v213;
              *(a2 + 1) = v215;
              v63 |= (v216 & 0x7F) << v211;
              if (v216 < 0)
              {
                v211 += 7;
                ++v213;
                --v214;
                ++v215;
                v48 = v212++ > 8;
                if (v48)
                {
                  goto LABEL_253;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v63) = 0;
              }
            }

            else
            {
              LODWORD(v63) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_367:
          *(this + 33) = v63;
          goto LABEL_18;
        case 6u:
          if (v21 == 2)
          {
            if ((PB::Reader::placeMark() & 1) == 0)
            {
              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v31 = *(this + 11);
                do
                {
                  v121 = *(this + 12);
                  if (v31 >= v121)
                  {
                    v122 = *(this + 10);
                    v123 = v31 - v122;
                    v124 = (v31 - v122) >> 2;
                    v125 = v124 + 1;
                    if ((v124 + 1) >> 62)
                    {
                      goto LABEL_469;
                    }

                    v126 = v121 - v122;
                    if (v126 >> 1 > v125)
                    {
                      v125 = v126 >> 1;
                    }

                    if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v127 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v127 = v125;
                    }

                    if (v127)
                    {
                      sub_25AD288E8(v127);
                    }

                    v128 = (v31 - v122) >> 2;
                    v129 = (4 * v124);
                    v130 = (4 * v124 - 4 * v128);
                    *v129 = 0;
                    v31 = (v129 + 1);
                    memcpy(v130, v122, v123);
                    v131 = *(this + 10);
                    *(this + 10) = v130;
                    *(this + 11) = v31;
                    *(this + 12) = 0;
                    if (v131)
                    {
                      operator delete(v131);
                    }
                  }

                  else
                  {
                    *v31 = 0;
                    v31 += 4;
                  }

                  *(this + 11) = v31;
                  v133 = *(a2 + 1);
                  v132 = *(a2 + 2);
                  v134 = *a2;
                  v135 = 0;
                  v136 = 0;
                  if (v133 > 0xFFFFFFFFFFFFFFF5 || v133 + 10 > v132)
                  {
                    v143 = 0;
                    v138 = (v134 + v133);
                    v139 = v132 - v133;
                    if (v132 < v133)
                    {
                      v139 = 0;
                    }

                    v140 = v133 + 1;
                    while (1)
                    {
                      if (!v139)
                      {
                        goto LABEL_242;
                      }

                      v141 = v140;
                      v142 = *v138;
                      *(a2 + 1) = v141;
                      v143 |= (v142 & 0x7F) << v135;
                      if ((v142 & 0x80) == 0)
                      {
                        break;
                      }

                      v135 += 7;
                      ++v138;
                      --v139;
                      v140 = v141 + 1;
                      v48 = v136++ > 8;
                      if (v48)
                      {
LABEL_151:
                        LODWORD(v143) = 0;
                        goto LABEL_154;
                      }
                    }

                    if (*(a2 + 24))
                    {
                      LODWORD(v143) = 0;
                    }
                  }

                  else
                  {
                    v143 = 0;
                    v144 = (v134 + v133);
                    v145 = v133 + 1;
                    while (1)
                    {
                      v141 = v145;
                      *(a2 + 1) = v145;
                      v146 = *v144++;
                      v143 |= (v146 & 0x7F) << v135;
                      if ((v146 & 0x80) == 0)
                      {
                        break;
                      }

                      v135 += 7;
                      ++v145;
                      v48 = v136++ > 8;
                      if (v48)
                      {
                        goto LABEL_151;
                      }
                    }
                  }

LABEL_154:
                  *(v31 - 1) = v143;
                }

                while (v141 < v132 && (*(a2 + 24) & 1) == 0);
              }

LABEL_243:
              PB::Reader::recallMark();
              goto LABEL_18;
            }

            goto LABEL_467;
          }

          v260 = *(this + 11);
          v259 = *(this + 12);
          if (v260 < v259)
          {
            *v260 = 0;
            v210 = v260 + 4;
LABEL_411:
            *(this + 11) = v210;
            v319 = *(a2 + 1);
            v318 = *(a2 + 2);
            v320 = *a2;
            if (v319 <= 0xFFFFFFFFFFFFFFF5 && v319 + 10 <= v318)
            {
              v321 = 0;
              v322 = 0;
              v304 = 0;
              v323 = (v320 + v319);
              v324 = v319 + 1;
              while (1)
              {
                *(a2 + 1) = v324;
                v325 = *v323++;
                v304 |= (v325 & 0x7F) << v321;
                if ((v325 & 0x80) == 0)
                {
                  goto LABEL_463;
                }

                v321 += 7;
                ++v324;
                v48 = v322++ > 8;
                if (v48)
                {
                  goto LABEL_459;
                }
              }
            }

            v326 = 0;
            v327 = 0;
            v304 = 0;
            v328 = (v320 + v319);
            v17 = v318 >= v319;
            v329 = v318 - v319;
            if (!v17)
            {
              v329 = 0;
            }

            v330 = v319 + 1;
            while (v329)
            {
              v331 = *v328;
              *(a2 + 1) = v330;
              v304 |= (v331 & 0x7F) << v326;
              if ((v331 & 0x80) == 0)
              {
                goto LABEL_461;
              }

              v326 += 7;
              ++v328;
              --v329;
              ++v330;
              v48 = v327++ > 8;
              if (v48)
              {
                goto LABEL_459;
              }
            }

LABEL_460:
            LODWORD(v304) = 0;
            *(a2 + 24) = 1;
LABEL_463:
            *(v210 - 1) = v304;
            goto LABEL_18;
          }

          v277 = *(this + 10);
          v278 = v260 - v277;
          v279 = (v260 - v277) >> 2;
          v280 = v279 + 1;
          if (!((v279 + 1) >> 62))
          {
            v281 = v259 - v277;
            if (v281 >> 1 > v280)
            {
              v280 = v281 >> 1;
            }

            if (v281 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v282 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v282 = v280;
            }

            if (v282)
            {
              sub_25AD288E8(v282);
            }

            v314 = (v260 - v277) >> 2;
            v315 = (4 * v279);
            v316 = (4 * v279 - 4 * v314);
            *v315 = 0;
            v210 = v315 + 1;
            memcpy(v316, v277, v278);
            v317 = *(this + 10);
            *(this + 10) = v316;
            *(this + 11) = v210;
            *(this + 12) = 0;
            if (v317)
            {
              operator delete(v317);
            }

            goto LABEL_411;
          }

          goto LABEL_469;
        case 7u:
          if (v21 == 2)
          {
            if ((PB::Reader::placeMark() & 1) == 0)
            {
              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v31 = *(this + 8);
                do
                {
                  v147 = *(this + 9);
                  if (v31 >= v147)
                  {
                    v148 = *(this + 7);
                    v149 = v31 - v148;
                    v150 = (v31 - v148) >> 2;
                    v151 = v150 + 1;
                    if ((v150 + 1) >> 62)
                    {
                      goto LABEL_469;
                    }

                    v152 = v147 - v148;
                    if (v152 >> 1 > v151)
                    {
                      v151 = v152 >> 1;
                    }

                    if (v152 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v153 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v153 = v151;
                    }

                    if (v153)
                    {
                      sub_25AD288E8(v153);
                    }

                    v154 = (v31 - v148) >> 2;
                    v155 = (4 * v150);
                    v156 = (4 * v150 - 4 * v154);
                    *v155 = 0;
                    v31 = (v155 + 1);
                    memcpy(v156, v148, v149);
                    v157 = *(this + 7);
                    *(this + 7) = v156;
                    *(this + 8) = v31;
                    *(this + 9) = 0;
                    if (v157)
                    {
                      operator delete(v157);
                    }
                  }

                  else
                  {
                    *v31 = 0;
                    v31 += 4;
                  }

                  *(this + 8) = v31;
                  v159 = *(a2 + 1);
                  v158 = *(a2 + 2);
                  v160 = *a2;
                  v161 = 0;
                  v162 = 0;
                  if (v159 > 0xFFFFFFFFFFFFFFF5 || v159 + 10 > v158)
                  {
                    v169 = 0;
                    v164 = (v160 + v159);
                    v165 = v158 - v159;
                    if (v158 < v159)
                    {
                      v165 = 0;
                    }

                    v166 = v159 + 1;
                    while (1)
                    {
                      if (!v165)
                      {
                        goto LABEL_242;
                      }

                      v167 = v166;
                      v168 = *v164;
                      *(a2 + 1) = v167;
                      v169 |= (v168 & 0x7F) << v161;
                      if ((v168 & 0x80) == 0)
                      {
                        break;
                      }

                      v161 += 7;
                      ++v164;
                      --v165;
                      v166 = v167 + 1;
                      v48 = v162++ > 8;
                      if (v48)
                      {
LABEL_190:
                        LODWORD(v169) = 0;
                        goto LABEL_193;
                      }
                    }

                    if (*(a2 + 24))
                    {
                      LODWORD(v169) = 0;
                    }
                  }

                  else
                  {
                    v169 = 0;
                    v170 = (v160 + v159);
                    v171 = v159 + 1;
                    while (1)
                    {
                      v167 = v171;
                      *(a2 + 1) = v171;
                      v172 = *v170++;
                      v169 |= (v172 & 0x7F) << v161;
                      if ((v172 & 0x80) == 0)
                      {
                        break;
                      }

                      v161 += 7;
                      ++v171;
                      v48 = v162++ > 8;
                      if (v48)
                      {
                        goto LABEL_190;
                      }
                    }
                  }

LABEL_193:
                  *(v31 - 1) = v169;
                }

                while (v167 < v158 && (*(a2 + 24) & 1) == 0);
              }

              goto LABEL_243;
            }

            goto LABEL_467;
          }

          v268 = *(this + 8);
          v267 = *(this + 9);
          if (v268 < v267)
          {
            *v268 = 0;
            v210 = v268 + 4;
LABEL_428:
            *(this + 8) = v210;
            v337 = *(a2 + 1);
            v336 = *(a2 + 2);
            v338 = *a2;
            if (v337 <= 0xFFFFFFFFFFFFFFF5 && v337 + 10 <= v336)
            {
              v339 = 0;
              v340 = 0;
              v304 = 0;
              v341 = (v338 + v337);
              v342 = v337 + 1;
              while (1)
              {
                *(a2 + 1) = v342;
                v343 = *v341++;
                v304 |= (v343 & 0x7F) << v339;
                if ((v343 & 0x80) == 0)
                {
                  goto LABEL_463;
                }

                v339 += 7;
                ++v342;
                v48 = v340++ > 8;
                if (v48)
                {
                  goto LABEL_459;
                }
              }
            }

            v344 = 0;
            v345 = 0;
            v304 = 0;
            v346 = (v338 + v337);
            v17 = v336 >= v337;
            v347 = v336 - v337;
            if (!v17)
            {
              v347 = 0;
            }

            v348 = v337 + 1;
            while (v347)
            {
              v349 = *v346;
              *(a2 + 1) = v348;
              v304 |= (v349 & 0x7F) << v344;
              if ((v349 & 0x80) == 0)
              {
                goto LABEL_461;
              }

              v344 += 7;
              ++v346;
              --v347;
              ++v348;
              v48 = v345++ > 8;
              if (v48)
              {
                goto LABEL_459;
              }
            }

            goto LABEL_460;
          }

          v283 = *(this + 7);
          v284 = v268 - v283;
          v285 = (v268 - v283) >> 2;
          v286 = v285 + 1;
          if (!((v285 + 1) >> 62))
          {
            v287 = v267 - v283;
            if (v287 >> 1 > v286)
            {
              v286 = v287 >> 1;
            }

            if (v287 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v288 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v288 = v286;
            }

            if (v288)
            {
              sub_25AD288E8(v288);
            }

            v332 = (v268 - v283) >> 2;
            v333 = (4 * v285);
            v334 = (4 * v285 - 4 * v332);
            *v333 = 0;
            v210 = v333 + 1;
            memcpy(v334, v283, v284);
            v335 = *(this + 7);
            *(this + 7) = v334;
            *(this + 8) = v210;
            *(this + 9) = 0;
            if (v335)
            {
              operator delete(v335);
            }

            goto LABEL_428;
          }

          goto LABEL_469;
        case 8u:
          *(this + 70) |= 8u;
          v104 = *(a2 + 1);
          v103 = *(a2 + 2);
          v105 = *a2;
          if (v104 <= 0xFFFFFFFFFFFFFFF5 && v104 + 10 <= v103)
          {
            v106 = 0;
            v107 = 0;
            v108 = 0;
            v109 = (v105 + v104);
            v110 = v104 + 1;
            do
            {
              *(a2 + 1) = v110;
              v111 = *v109++;
              v108 |= (v111 & 0x7F) << v106;
              if ((v111 & 0x80) == 0)
              {
                goto LABEL_382;
              }

              v106 += 7;
              ++v110;
              v48 = v107++ > 8;
            }

            while (!v48);
LABEL_293:
            LODWORD(v108) = 0;
            goto LABEL_382;
          }

          v241 = 0;
          v242 = 0;
          v108 = 0;
          v243 = (v105 + v104);
          v17 = v103 >= v104;
          v244 = v103 - v104;
          if (!v17)
          {
            v244 = 0;
          }

          v245 = v104 + 1;
          while (2)
          {
            if (v244)
            {
              v246 = *v243;
              *(a2 + 1) = v245;
              v108 |= (v246 & 0x7F) << v241;
              if (v246 < 0)
              {
                v241 += 7;
                ++v243;
                --v244;
                ++v245;
                v48 = v242++ > 8;
                if (v48)
                {
                  goto LABEL_293;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v108) = 0;
              }
            }

            else
            {
              LODWORD(v108) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_382:
          *(this + 29) = v108;
          goto LABEL_18;
        case 9u:
          *(this + 70) |= 4u;
          v200 = *(a2 + 1);
          v199 = *(a2 + 2);
          v201 = *a2;
          if (v200 <= 0xFFFFFFFFFFFFFFF5 && v200 + 10 <= v199)
          {
            v202 = 0;
            v203 = 0;
            v204 = 0;
            v205 = (v201 + v200);
            v206 = v200 + 1;
            do
            {
              *(a2 + 1) = v206;
              v207 = *v205++;
              v204 |= (v207 & 0x7F) << v202;
              if ((v207 & 0x80) == 0)
              {
                goto LABEL_391;
              }

              v202 += 7;
              ++v206;
              v48 = v203++ > 8;
            }

            while (!v48);
LABEL_319:
            LODWORD(v204) = 0;
            goto LABEL_391;
          }

          v261 = 0;
          v262 = 0;
          v204 = 0;
          v263 = (v201 + v200);
          v17 = v199 >= v200;
          v264 = v199 - v200;
          if (!v17)
          {
            v264 = 0;
          }

          v265 = v200 + 1;
          while (2)
          {
            if (v264)
            {
              v266 = *v263;
              *(a2 + 1) = v265;
              v204 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                ++v263;
                --v264;
                ++v265;
                v48 = v262++ > 8;
                if (v48)
                {
                  goto LABEL_319;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v204) = 0;
              }
            }

            else
            {
              LODWORD(v204) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_391:
          *(this + 28) = v204;
          goto LABEL_18;
        case 0xAu:
          *(this + 70) |= 2u;
          v77 = *(a2 + 1);
          v76 = *(a2 + 2);
          v78 = *a2;
          if (v77 <= 0xFFFFFFFFFFFFFFF5 && v77 + 10 <= v76)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v82 = (v78 + v77);
            v83 = v77 + 1;
            do
            {
              *(a2 + 1) = v83;
              v84 = *v82++;
              v81 |= (v84 & 0x7F) << v79;
              if ((v84 & 0x80) == 0)
              {
                goto LABEL_373;
              }

              v79 += 7;
              ++v83;
              v48 = v80++ > 8;
            }

            while (!v48);
LABEL_269:
            LODWORD(v81) = 0;
            goto LABEL_373;
          }

          v223 = 0;
          v224 = 0;
          v81 = 0;
          v225 = (v78 + v77);
          v17 = v76 >= v77;
          v226 = v76 - v77;
          if (!v17)
          {
            v226 = 0;
          }

          v227 = v77 + 1;
          while (2)
          {
            if (v226)
            {
              v228 = *v225;
              *(a2 + 1) = v227;
              v81 |= (v228 & 0x7F) << v223;
              if (v228 < 0)
              {
                v223 += 7;
                ++v225;
                --v226;
                ++v227;
                v48 = v224++ > 8;
                if (v48)
                {
                  goto LABEL_269;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              LODWORD(v81) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_373:
          *(this + 27) = v81;
          goto LABEL_18;
        case 0xBu:
          if (v21 == 2)
          {
            if ((PB::Reader::placeMark() & 1) == 0)
            {
              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v31 = *(this + 5);
                do
                {
                  v173 = *(this + 6);
                  if (v31 >= v173)
                  {
                    v174 = *(this + 4);
                    v175 = v31 - v174;
                    v176 = (v31 - v174) >> 2;
                    v177 = v176 + 1;
                    if ((v176 + 1) >> 62)
                    {
                      goto LABEL_469;
                    }

                    v178 = v173 - v174;
                    if (v178 >> 1 > v177)
                    {
                      v177 = v178 >> 1;
                    }

                    if (v178 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v179 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v179 = v177;
                    }

                    if (v179)
                    {
                      sub_25AD288E8(v179);
                    }

                    v180 = (v31 - v174) >> 2;
                    v181 = (4 * v176);
                    v182 = (4 * v176 - 4 * v180);
                    *v181 = 0;
                    v31 = (v181 + 1);
                    memcpy(v182, v174, v175);
                    v183 = *(this + 4);
                    *(this + 4) = v182;
                    *(this + 5) = v31;
                    *(this + 6) = 0;
                    if (v183)
                    {
                      operator delete(v183);
                    }
                  }

                  else
                  {
                    *v31 = 0;
                    v31 += 4;
                  }

                  *(this + 5) = v31;
                  v185 = *(a2 + 1);
                  v184 = *(a2 + 2);
                  v186 = *a2;
                  v187 = 0;
                  v188 = 0;
                  if (v185 > 0xFFFFFFFFFFFFFFF5 || v185 + 10 > v184)
                  {
                    v195 = 0;
                    v190 = (v186 + v185);
                    v191 = v184 - v185;
                    if (v184 < v185)
                    {
                      v191 = 0;
                    }

                    v192 = v185 + 1;
                    while (1)
                    {
                      if (!v191)
                      {
                        goto LABEL_242;
                      }

                      v193 = v192;
                      v194 = *v190;
                      *(a2 + 1) = v193;
                      v195 |= (v194 & 0x7F) << v187;
                      if ((v194 & 0x80) == 0)
                      {
                        break;
                      }

                      v187 += 7;
                      ++v190;
                      --v191;
                      v192 = v193 + 1;
                      v48 = v188++ > 8;
                      if (v48)
                      {
LABEL_229:
                        LODWORD(v195) = 0;
                        goto LABEL_232;
                      }
                    }

                    if (*(a2 + 24))
                    {
                      LODWORD(v195) = 0;
                    }
                  }

                  else
                  {
                    v195 = 0;
                    v196 = (v186 + v185);
                    v197 = v185 + 1;
                    while (1)
                    {
                      v193 = v197;
                      *(a2 + 1) = v197;
                      v198 = *v196++;
                      v195 |= (v198 & 0x7F) << v187;
                      if ((v198 & 0x80) == 0)
                      {
                        break;
                      }

                      v187 += 7;
                      ++v197;
                      v48 = v188++ > 8;
                      if (v48)
                      {
                        goto LABEL_229;
                      }
                    }
                  }

LABEL_232:
                  *(v31 - 1) = v195;
                }

                while (v193 < v184 && (*(a2 + 24) & 1) == 0);
              }

              goto LABEL_243;
            }

            goto LABEL_467;
          }

          v270 = *(this + 5);
          v269 = *(this + 6);
          if (v270 < v269)
          {
            *v270 = 0;
            v210 = v270 + 4;
LABEL_445:
            *(this + 5) = v210;
            v355 = *(a2 + 1);
            v354 = *(a2 + 2);
            v356 = *a2;
            if (v355 <= 0xFFFFFFFFFFFFFFF5 && v355 + 10 <= v354)
            {
              v357 = 0;
              v358 = 0;
              v304 = 0;
              v359 = (v356 + v355);
              v360 = v355 + 1;
              while (1)
              {
                *(a2 + 1) = v360;
                v361 = *v359++;
                v304 |= (v361 & 0x7F) << v357;
                if ((v361 & 0x80) == 0)
                {
                  goto LABEL_463;
                }

                v357 += 7;
                ++v360;
                v48 = v358++ > 8;
                if (v48)
                {
                  goto LABEL_459;
                }
              }
            }

            v362 = 0;
            v363 = 0;
            v304 = 0;
            v364 = (v356 + v355);
            v17 = v354 >= v355;
            v365 = v354 - v355;
            if (!v17)
            {
              v365 = 0;
            }

            v366 = v355 + 1;
            while (v365)
            {
              v367 = *v364;
              *(a2 + 1) = v366;
              v304 |= (v367 & 0x7F) << v362;
              if ((v367 & 0x80) == 0)
              {
                goto LABEL_461;
              }

              v362 += 7;
              ++v364;
              --v365;
              ++v366;
              v48 = v363++ > 8;
              if (v48)
              {
                goto LABEL_459;
              }
            }

            goto LABEL_460;
          }

          v289 = *(this + 4);
          v290 = v270 - v289;
          v291 = (v270 - v289) >> 2;
          v292 = v291 + 1;
          if (!((v291 + 1) >> 62))
          {
            v293 = v269 - v289;
            if (v293 >> 1 > v292)
            {
              v292 = v293 >> 1;
            }

            if (v293 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v294 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v294 = v292;
            }

            if (v294)
            {
              sub_25AD288E8(v294);
            }

            v350 = (v270 - v289) >> 2;
            v351 = (4 * v291);
            v352 = (4 * v291 - 4 * v350);
            *v351 = 0;
            v210 = v351 + 1;
            memcpy(v352, v289, v290);
            v353 = *(this + 4);
            *(this + 4) = v352;
            *(this + 5) = v210;
            *(this + 6) = 0;
            if (v353)
            {
              operator delete(v353);
            }

            goto LABEL_445;
          }

          goto LABEL_469;
        case 0xCu:
          if (v21 == 2)
          {
            if ((PB::Reader::placeMark() & 1) == 0)
            {
              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v31 = *(this + 2);
                while (1)
                {
                  v32 = *(this + 3);
                  if (v31 >= v32)
                  {
                    v33 = *(this + 1);
                    v34 = v31 - v33;
                    v35 = (v31 - v33) >> 2;
                    v36 = v35 + 1;
                    if ((v35 + 1) >> 62)
                    {
                      goto LABEL_469;
                    }

                    v37 = v32 - v33;
                    if (v37 >> 1 > v36)
                    {
                      v36 = v37 >> 1;
                    }

                    if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v38 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v38 = v36;
                    }

                    if (v38)
                    {
                      sub_25AD288E8(v38);
                    }

                    v39 = (v31 - v33) >> 2;
                    v40 = (4 * v35);
                    v41 = (4 * v35 - 4 * v39);
                    *v40 = 0;
                    v31 = (v40 + 1);
                    memcpy(v41, v33, v34);
                    v42 = *(this + 1);
                    *(this + 1) = v41;
                    *(this + 2) = v31;
                    *(this + 3) = 0;
                    if (v42)
                    {
                      operator delete(v42);
                    }
                  }

                  else
                  {
                    *v31 = 0;
                    v31 += 4;
                  }

                  *(this + 2) = v31;
                  v44 = *(a2 + 1);
                  v43 = *(a2 + 2);
                  v45 = *a2;
                  v46 = 0;
                  v47 = 0;
                  v48 = v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43;
                  if (v48)
                  {
                    break;
                  }

                  v54 = 0;
                  v55 = (v45 + v44);
                  v56 = v44 + 1;
                  while (1)
                  {
                    v52 = v56;
                    *(a2 + 1) = v56;
                    v57 = *v55++;
                    v54 |= (v57 & 0x7F) << v46;
                    if ((v57 & 0x80) == 0)
                    {
                      break;
                    }

                    v46 += 7;
                    ++v56;
                    v48 = v47++ > 8;
                    if (v48)
                    {
                      goto LABEL_63;
                    }
                  }

LABEL_66:
                  *(v31 - 1) = v54;
                  if (v52 >= v43 || (*(a2 + 24) & 1) != 0)
                  {
                    goto LABEL_243;
                  }
                }

                v54 = 0;
                v49 = (v45 + v44);
                v50 = v43 - v44;
                if (v43 < v44)
                {
                  v50 = 0;
                }

                v51 = v44 + 1;
                while (v50)
                {
                  v52 = v51;
                  v53 = *v49;
                  *(a2 + 1) = v52;
                  v54 |= (v53 & 0x7F) << v46;
                  if ((v53 & 0x80) == 0)
                  {
                    if (*(a2 + 24))
                    {
                      LODWORD(v54) = 0;
                    }

                    goto LABEL_66;
                  }

                  v46 += 7;
                  ++v49;
                  --v50;
                  v51 = v52 + 1;
                  v48 = v47++ > 8;
                  if (v48)
                  {
LABEL_63:
                    LODWORD(v54) = 0;
                    goto LABEL_66;
                  }
                }

LABEL_242:
                *(a2 + 24) = 1;
                *(v31 - 1) = 0;
              }

              goto LABEL_243;
            }

LABEL_467:
            v368 = 0;
            return v368 & 1;
          }

          v209 = *(this + 2);
          v208 = *(this + 3);
          if (v209 >= v208)
          {
            v271 = *(this + 1);
            v272 = v209 - v271;
            v273 = (v209 - v271) >> 2;
            v274 = v273 + 1;
            if ((v273 + 1) >> 62)
            {
LABEL_469:
              sub_25AAE66B8();
            }

            v275 = v208 - v271;
            if (v275 >> 1 > v274)
            {
              v274 = v275 >> 1;
            }

            if (v275 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v276 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v276 = v274;
            }

            if (v276)
            {
              sub_25AD288E8(v276);
            }

            v295 = (v209 - v271) >> 2;
            v296 = (4 * v273);
            v297 = (4 * v273 - 4 * v295);
            *v296 = 0;
            v210 = v296 + 1;
            memcpy(v297, v271, v272);
            v298 = *(this + 1);
            *(this + 1) = v297;
            *(this + 2) = v210;
            *(this + 3) = 0;
            if (v298)
            {
              operator delete(v298);
            }
          }

          else
          {
            *v209 = 0;
            v210 = v209 + 4;
          }

          *(this + 2) = v210;
          v300 = *(a2 + 1);
          v299 = *(a2 + 2);
          v301 = *a2;
          if (v300 <= 0xFFFFFFFFFFFFFFF5 && v300 + 10 <= v299)
          {
            v302 = 0;
            v303 = 0;
            v304 = 0;
            v305 = (v301 + v300);
            v306 = v300 + 1;
            while (1)
            {
              *(a2 + 1) = v306;
              v307 = *v305++;
              v304 |= (v307 & 0x7F) << v302;
              if ((v307 & 0x80) == 0)
              {
                goto LABEL_463;
              }

              v302 += 7;
              ++v306;
              v48 = v303++ > 8;
              if (v48)
              {
                goto LABEL_459;
              }
            }
          }

          v308 = 0;
          v309 = 0;
          v304 = 0;
          v310 = (v301 + v300);
          v17 = v299 >= v300;
          v311 = v299 - v300;
          if (!v17)
          {
            v311 = 0;
          }

          v312 = v300 + 1;
          while (v311)
          {
            v313 = *v310;
            *(a2 + 1) = v312;
            v304 |= (v313 & 0x7F) << v308;
            if ((v313 & 0x80) == 0)
            {
LABEL_461:
              if (*(a2 + 24))
              {
                LODWORD(v304) = 0;
              }

              goto LABEL_463;
            }

            v308 += 7;
            ++v310;
            --v311;
            ++v312;
            v48 = v309++ > 8;
            if (v48)
            {
LABEL_459:
              LODWORD(v304) = 0;
              goto LABEL_463;
            }
          }

          goto LABEL_460;
        case 0xDu:
          *(this + 70) |= 1u;
          v68 = *(a2 + 1);
          v67 = *(a2 + 2);
          v69 = *a2;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(a2 + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_370;
              }

              v70 += 7;
              ++v74;
              v48 = v71++ > 8;
            }

            while (!v48);
LABEL_261:
            LODWORD(v72) = 0;
            goto LABEL_370;
          }

          v217 = 0;
          v218 = 0;
          v72 = 0;
          v219 = (v69 + v68);
          v17 = v67 >= v68;
          v220 = v67 - v68;
          if (!v17)
          {
            v220 = 0;
          }

          v221 = v68 + 1;
          while (2)
          {
            if (v220)
            {
              v222 = *v219;
              *(a2 + 1) = v221;
              v72 |= (v222 & 0x7F) << v217;
              if (v222 < 0)
              {
                v217 += 7;
                ++v219;
                --v220;
                ++v221;
                v48 = v218++ > 8;
                if (v48)
                {
                  goto LABEL_261;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v72) = 0;
              }
            }

            else
            {
              LODWORD(v72) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_370:
          *(this + 26) = v72;
          goto LABEL_18;
        default:
          goto LABEL_17;
      }
    }

    v4 = 0;
  }

LABEL_465:
  v368 = v4 ^ 1;
  return v368 & 1;
}

uint64_t CMMsl::BatchedPPGData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 140);
  if ((v4 & 0x100) != 0)
  {
    v20 = *(this + 136);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 140);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v21 = *(v3 + 120);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 140);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_28:
    v23 = *(v3 + 124);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 140) & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  v22 = *(v3 + 128);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 140);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_5:
  if ((v4 & 0x80) != 0)
  {
LABEL_6:
    v5 = *(v3 + 132);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_7:
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::writeVarInt(a2);
  }

  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeVarInt(a2);
  }

  v12 = *(v3 + 140);
  if ((v12 & 8) == 0)
  {
    if ((v12 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v25 = *(v3 + 112);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 140) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v24 = *(v3 + 116);
  this = PB::Writer::writeVarInt(a2);
  v12 = *(v3 + 140);
  if ((v12 & 4) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v12 & 2) != 0)
  {
LABEL_16:
    v13 = *(v3 + 108);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_17:
  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::writeVarInt(a2);
  }

  v17 = *(v3 + 8);
  v18 = *(v3 + 16);
  while (v17 != v18)
  {
    v19 = *v17++;
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 140))
  {
    v26 = *(v3 + 104);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}