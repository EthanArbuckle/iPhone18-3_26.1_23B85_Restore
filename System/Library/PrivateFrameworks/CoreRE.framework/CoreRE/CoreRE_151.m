uint64_t re::internal::GeomKDTree<re::Vector4<float>>::findWithinRadiusHelper(uint64_t result, uint64_t **a2, float32x4_t *a3, void *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = (*v9 + 16 * *(v8 + 4));
      v13 = *(v8 + 20);
      v14 = a3->f32[v13];
      v15 = v12->f32[v13];
      if (v14 == v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = (v14 - v15);
      }

      if (v16 >= v10)
      {
        if (v16 <= a5)
        {
          if ((vminvq_u32(vceqq_f32(*v12, *a3)) & 0x80000000) != 0)
          {
            v19 = 0.0;
          }

          else
          {
            v17 = vsubq_f32(*v12, *a3);
            v18 = vmulq_f32(v17, v17);
            v19 = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)));
          }

          if (v19 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v20 = *v8++;
          result = re::internal::GeomKDTree<re::Vector4<float>>::findWithinRadiusHelper(v9, v20, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<signed char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v167 = *(a2 - 1);
        v168 = *v10;
        v169 = *(*a3 + v168);
        if (*(*a3 + v167) == v169)
        {
          v170 = v167 < v168;
        }

        else
        {
          v170 = *(*a3 + v167) < v169;
        }

        if (v170)
        {
          *v10 = v167;
          *(a2 - 1) = v168;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v181 = *a3;
    }

    if (v11 == 5)
    {
      v149 = *a3;
      v150 = *(a2 - 1);
      v151 = v10[3];
      v152 = *(*a3 + v151);
      v153 = *(*a3 + v150) < v152;
      if (*(*a3 + v150) == v152)
      {
        v153 = v150 < v151;
      }

      if (!v153)
      {
        return result;
      }

      v10[3] = v150;
      *(a2 - 1) = v151;
      v155 = v10[2];
      v154 = v10[3];
      v156 = *(v149 + v155);
      v157 = *(v149 + v154) < v156;
      if (*(v149 + v154) == v156)
      {
        v157 = v154 < v155;
      }

      if (!v157)
      {
        return result;
      }

      v10[2] = v154;
      v10[3] = v155;
      v158 = v10[1];
      v159 = *(v149 + v158);
      v160 = *(v149 + v154) < v159;
      if (*(v149 + v154) == v159)
      {
        v160 = v154 < v158;
      }

      if (!v160)
      {
        return result;
      }

      v10[1] = v154;
      v10[2] = v158;
      v161 = *(v149 + v154);
      v162 = *(v149 + v154);
      v163 = *v10;
      v164 = *(v149 + v163);
      v165 = v161 < v164;
      v166 = v162 == v164 ? v154 < v163 : v165;
      if (v166 != 1)
      {
        return result;
      }

      *v10 = v154;
LABEL_282:
      v10[1] = v163;
      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v182 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v183 = *a3;
            v184 = 4;
            v185 = v10;
            do
            {
              v187 = *v185;
              v186 = v185[1];
              v185 = v182;
              v188 = *(v183 + v187);
              LODWORD(v182) = v187;
              v189 = v186 < v187;
              if (*(v183 + v186) != v188)
              {
                v189 = *(v183 + v186) < v188;
              }

              if (v189)
              {
                v190 = v184;
                while (1)
                {
                  *(v10 + v190) = v182;
                  v191 = v190 - 4;
                  if (v190 == 4)
                  {
                    break;
                  }

                  v182 = *(v10 + v190 - 8);
                  v192 = *(v182 + v183);
                  v193 = *(v183 + v186) < v192;
                  if (*(v183 + v186) == v192)
                  {
                    v193 = v186 < v182;
                  }

                  v190 -= 4;
                  if (!v193)
                  {
                    v194 = (v10 + v191);
                    goto LABEL_221;
                  }
                }

                v194 = v10;
LABEL_221:
                *v194 = v186;
              }

              v182 = v185 + 1;
              v184 += 4;
            }

            while (v185 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v247 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v248 = *a3;
          do
          {
            v250 = *v9;
            v249 = v9[1];
            v9 = v247;
            v251 = *(v248 + v250);
            LODWORD(v247) = v250;
            v252 = v249 < v250;
            if (*(v248 + v249) != v251)
            {
              v252 = *(v248 + v249) < v251;
            }

            if (v252)
            {
              v253 = v9;
              do
              {
                *v253 = v247;
                v247 = *(v253 - 2);
                v254 = *(v247 + v248);
                v255 = *(v248 + v249) < v254;
                if (*(v248 + v249) == v254)
                {
                  v255 = v249 < v247;
                }

                --v253;
              }

              while (v255);
              *v253 = v249;
            }

            v247 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v195 = (v11 - 2) >> 1;
        v196 = *a3;
        v197 = v195;
        do
        {
          v198 = v197;
          if (v195 >= v197)
          {
            v199 = (2 * v197) | 1;
            v200 = &v10[v199];
            if (2 * v198 + 2 >= v11)
            {
              LODWORD(v206) = *v200;
            }

            else
            {
              v201 = *v200;
              v202 = v200[1];
              v203 = *(v196 + v202);
              v204 = *(v196 + v201) < v203;
              if (*(v196 + v201) == v203)
              {
                v204 = v201 < v202;
              }

              v205 = !v204;
              if (v204)
              {
                LODWORD(v206) = v200[1];
              }

              else
              {
                LODWORD(v206) = *v200;
              }

              if (!v205)
              {
                ++v200;
                v199 = 2 * v198 + 2;
              }
            }

            v207 = &v10[v198];
            result = *(v196 + v206);
            v208 = *v207;
            v209 = *(v196 + *v207);
            v210 = *(v196 + v206) < v209;
            if (result == v209)
            {
              v210 = v206 < *v207;
            }

            if (!v210)
            {
              do
              {
                *v207 = v206;
                v207 = v200;
                if (v195 < v199)
                {
                  break;
                }

                v211 = (2 * v199) | 1;
                v200 = &v10[v211];
                v199 = 2 * v199 + 2;
                if (v199 >= v11)
                {
                  LODWORD(v206) = *v200;
                  v199 = v211;
                }

                else
                {
                  v206 = *v200;
                  v212 = v200[1];
                  v213 = *(v196 + v212);
                  v214 = *(v196 + v206) < v213;
                  if (*(v196 + v206) == v213)
                  {
                    v214 = v206 < v212;
                  }

                  if (v214)
                  {
                    LODWORD(v206) = v200[1];
                    ++v200;
                  }

                  else
                  {
                    v199 = v211;
                  }
                }

                result = *(v196 + v206);
                v215 = *(v196 + v208);
                v216 = *(v196 + v206) < v215;
                if (result == v215)
                {
                  v216 = v206 < v208;
                }
              }

              while (!v216);
              *v207 = v208;
            }
          }

          v197 = v198 - 1;
        }

        while (v198);
        do
        {
          v217 = 0;
          v218 = *v10;
          v219 = *a3;
          v220 = v10;
          do
          {
            v221 = &v220[v217];
            v222 = v221 + 1;
            v223 = (2 * v217) | 1;
            v217 = 2 * v217 + 2;
            if (v217 >= v11)
            {
              v225 = *v222;
              v217 = v223;
            }

            else
            {
              v226 = v221[2];
              v224 = v221 + 2;
              v225 = v226;
              result = *(v224 - 1);
              v227 = *(v219 + v226);
              v228 = result < v226;
              v229 = *(v219 + result) < v227;
              if (*(v219 + result) == v227)
              {
                v229 = v228;
              }

              if (v229)
              {
                v222 = v224;
              }

              else
              {
                v225 = *(v224 - 1);
                v217 = v223;
              }
            }

            *v220 = v225;
            v220 = v222;
          }

          while (v217 <= ((v11 - 2) >> 1));
          if (v222 == --a2)
          {
            *v222 = v218;
          }

          else
          {
            *v222 = *a2;
            *a2 = v218;
            v230 = (v222 - v10 + 4) >> 2;
            v231 = v230 < 2;
            v232 = v230 - 2;
            if (!v231)
            {
              v233 = v232 >> 1;
              v234 = &v10[v233];
              v235 = *v234;
              v236 = *v222;
              v237 = *(v219 + *v222);
              result = v235 < *v222;
              v238 = *(v219 + v235) < v237;
              if (*(v219 + v235) == v237)
              {
                v238 = v235 < *v222;
              }

              if (v238)
              {
                do
                {
                  *v222 = v235;
                  v222 = v234;
                  if (!v233)
                  {
                    break;
                  }

                  v233 = (v233 - 1) >> 1;
                  v234 = &v10[v233];
                  v235 = *v234;
                  v239 = *(v219 + v236);
                  result = v235 < v236;
                  v240 = *(v219 + v235) < v239;
                  if (*(v219 + v235) == v239)
                  {
                    v240 = v235 < v236;
                  }
                }

                while (v240);
                *v222 = v236;
              }
            }
          }

          v231 = v11-- <= 2;
        }

        while (!v231);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + v17);
      v19 = *v10;
      v20 = *(v14 + *v10);
      if (*(v14 + v17) == v20)
      {
        v21 = v17 < *v10;
      }

      else
      {
        v21 = v18 < v20;
      }

      if (v16 == v18)
      {
        v22 = v15 < v17;
      }

      else
      {
        v22 = v18 > v16;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_45;
        }

        *v10 = v17;
        *v12 = v19;
        v37 = *(a2 - 1);
        v38 = *(v14 + v19);
        v39 = *(v14 + v37) < v38;
        if (*(v14 + v37) == v38)
        {
          v39 = v37 < v19;
        }

        if (v39)
        {
          *v12 = v37;
LABEL_45:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *v10;
        v31 = *(v14 + v30);
        v32 = *(v14 + v29) < v31;
        if (*(v14 + v29) == v31)
        {
          v32 = v29 < v30;
        }

        if (v32)
        {
          *v10 = v29;
          *v12 = v30;
        }
      }

      v40 = v12 - 1;
      v41 = *(v12 - 1);
      v42 = *(v14 + v41);
      v43 = *(v14 + v41);
      v44 = v10[1];
      v45 = *(v14 + v44);
      v46 = v41 < v44;
      if (v43 != v45)
      {
        v46 = v42 < v45;
      }

      v47 = *(a2 - 2);
      v48 = *(v14 + v47);
      v49 = v48 < v42;
      if (v43 == v48)
      {
        v49 = v47 < v41;
      }

      if (v46)
      {
        if (v49)
        {
          v10[1] = v47;
          goto LABEL_67;
        }

        v10[1] = v41;
        *v40 = v44;
        v57 = *(a2 - 2);
        v58 = *(v14 + v44);
        v59 = *(v14 + v57) < v58;
        if (*(v14 + v57) == v58)
        {
          v59 = v57 < v44;
        }

        if (v59)
        {
          *v40 = v57;
LABEL_67:
          *(a2 - 2) = v44;
        }
      }

      else if (v49)
      {
        *v40 = v47;
        *(a2 - 2) = v41;
        v50 = *v40;
        v51 = v10[1];
        v52 = *(v14 + v51);
        v53 = *(v14 + v50) < v52;
        if (*(v14 + v50) == v52)
        {
          v53 = v50 < v51;
        }

        if (v53)
        {
          v10[1] = v50;
          *v40 = v51;
        }
      }

      v62 = v12[1];
      v60 = v12 + 1;
      v61 = v62;
      v63 = *(v14 + v62);
      v64 = *(v14 + v62);
      v65 = v10[2];
      v66 = *(v14 + v65);
      v67 = v62 < v65;
      if (v64 != v66)
      {
        v67 = v63 < v66;
      }

      v68 = *(a2 - 3);
      v69 = *(v14 + v68);
      v70 = v69 < v63;
      if (v64 == v69)
      {
        v70 = v68 < v61;
      }

      if (v67)
      {
        if (v70)
        {
          v10[2] = v68;
          goto LABEL_84;
        }

        v10[2] = v61;
        *v60 = v65;
        v75 = *(a2 - 3);
        v76 = *(v14 + v65);
        v77 = *(v14 + v75) < v76;
        if (*(v14 + v75) == v76)
        {
          v77 = v75 < v65;
        }

        if (v77)
        {
          *v60 = v75;
LABEL_84:
          *(a2 - 3) = v65;
        }
      }

      else if (v70)
      {
        *v60 = v68;
        *(a2 - 3) = v61;
        v71 = *v60;
        v72 = v10[2];
        v73 = *(v14 + v72);
        v74 = *(v14 + v71) < v73;
        if (*(v14 + v71) == v73)
        {
          v74 = v71 < v72;
        }

        if (v74)
        {
          v10[2] = v71;
          *v60 = v72;
        }
      }

      v78 = *v13;
      v79 = *(v14 + v78);
      v80 = *(v14 + v78);
      v81 = *v40;
      v82 = *(v14 + *v40);
      v83 = v78 < *v40;
      if (v80 != v82)
      {
        v83 = v79 < v82;
      }

      v84 = *v60;
      result = *(v14 + *v60);
      v85 = result < v79;
      if (v80 == *(v14 + *v60))
      {
        v85 = *v60 < v78;
      }

      if (v83)
      {
        if (!v85)
        {
          *v40 = v78;
          *v13 = v81;
          v86 = *(v14 + v81);
          v87 = *(v14 + v84) == v86 ? v84 < v81 : *(v14 + v84) < v86;
          v40 = v13;
          LODWORD(v78) = v84;
          if (!v87)
          {
            LODWORD(v78) = v81;
LABEL_102:
            v90 = *v10;
            *v10 = v78;
            *v13 = v90;
            goto LABEL_103;
          }
        }
      }

      else
      {
        if (!v85)
        {
          goto LABEL_102;
        }

        *v13 = v84;
        *v60 = v78;
        v88 = *(v14 + v81);
        if (*(v14 + v84) == v88)
        {
          v89 = v84 < v81;
        }

        else
        {
          v89 = *(v14 + v84) < v88;
        }

        v60 = v13;
        LODWORD(v78) = v81;
        if (!v89)
        {
          LODWORD(v78) = v84;
          goto LABEL_102;
        }
      }

      *v40 = v84;
      *v60 = v81;
      goto LABEL_102;
    }

    v23 = *v10;
    v24 = *(v14 + v23);
    v25 = *v13;
    v26 = *(v14 + *v13);
    result = v24 < v26;
    if (*(v14 + v23) == v26)
    {
      v27 = v23 < *v13;
    }

    else
    {
      v27 = v24 < v26;
    }

    if (v16 == v24)
    {
      v28 = v15 < v23;
    }

    else
    {
      v28 = v24 > v16;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_62:
        *(a2 - 1) = v25;
        goto LABEL_103;
      }

      *v13 = v23;
      *v10 = v25;
      v54 = *(a2 - 1);
      v55 = *(v14 + v25);
      v56 = *(v14 + v54) < v55;
      if (*(v14 + v54) == v55)
      {
        v56 = v54 < v25;
      }

      if (v56)
      {
        *v10 = v54;
        goto LABEL_62;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v33 = *v10;
      v34 = *v13;
      v35 = *(v14 + v34);
      v36 = *(v14 + v33) < v35;
      if (*(v14 + v33) == v35)
      {
        v36 = v33 < v34;
      }

      if (v36)
      {
        *v13 = v33;
        *v10 = v34;
      }
    }

LABEL_103:
    --a4;
    v91 = *v10;
    if (a5)
    {
      v92 = *(v14 + v91);
      goto LABEL_108;
    }

    v93 = *(v10 - 1);
    v94 = *(v14 + v93);
    v92 = *(v14 + v91);
    v95 = v93 < v91;
    if (v92 != v94)
    {
      v95 = v94 < *(v14 + v91);
    }

    if (v95)
    {
LABEL_108:
      v96 = 0;
      do
      {
        v97 = v10[v96 + 1];
        v98 = *(v14 + v97);
        if (v92 == v98)
        {
          v99 = v97 < v91;
        }

        else
        {
          v99 = v98 < v92;
        }

        ++v96;
      }

      while (v99);
      v100 = &v10[v96];
      v101 = a2;
      if (v96 == 1)
      {
        v101 = a2;
        do
        {
          if (v100 >= v101)
          {
            break;
          }

          v105 = *--v101;
          v106 = *(v14 + v105);
          v107 = v105 < v91;
          if (v92 != v106)
          {
            v107 = v106 < v92;
          }
        }

        while (!v107);
      }

      else
      {
        do
        {
          v102 = *--v101;
          v103 = *(v14 + v102);
          v104 = v102 < v91;
          if (v92 != v103)
          {
            v104 = v103 < v92;
          }
        }

        while (!v104);
      }

      if (v100 >= v101)
      {
        v121 = v100 - 1;
      }

      else
      {
        v108 = *v101;
        v109 = v97;
        v110 = v100;
        v111 = v101;
        do
        {
          *v110 = v108;
          *v111 = v109;
          v112 = *(v14 + v91);
          do
          {
            v113 = v110[1];
            ++v110;
            v109 = v113;
            v114 = *(v14 + v113);
            v115 = v113 < v91;
            if (v112 == v114)
            {
              v116 = v115;
            }

            else
            {
              v116 = v114 < v112;
            }
          }

          while (v116);
          do
          {
            v117 = *--v111;
            v108 = v117;
            v118 = *(v14 + v117);
            v119 = v117 < v91;
            if (v112 == v118)
            {
              v120 = v119;
            }

            else
            {
              v120 = v118 < v112;
            }
          }

          while (!v120);
        }

        while (v110 < v111);
        v121 = v110 - 1;
      }

      if (v121 != v10)
      {
        *v10 = *v121;
      }

      *v121 = v91;
      if (v100 < v101)
      {
        goto LABEL_142;
      }

      v10 = v121 + 1;
      if (result)
      {
        a2 = v121;
        if (!v122)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v122)
      {
LABEL_142:
        a5 = 0;
        v10 = v121 + 1;
      }
    }

    else
    {
      v123 = *(a2 - 1);
      v124 = *(v14 + v123);
      v125 = v91 < v123;
      if (v92 != v124)
      {
        v125 = v124 > v92;
      }

      if (v125)
      {
        do
        {
          v126 = v10[1];
          ++v10;
          v127 = *(v14 + v126);
          v128 = v91 < v126;
          if (v92 != v127)
          {
            v128 = v127 > v92;
          }
        }

        while (!v128);
      }

      else
      {
        v129 = v10 + 1;
        do
        {
          v10 = v129;
          if (v129 >= a2)
          {
            break;
          }

          ++v129;
          v130 = *v10;
          v131 = *(v14 + v130);
          v132 = v91 < v130;
          if (v92 != v131)
          {
            v132 = v131 > v92;
          }
        }

        while (!v132);
      }

      v133 = a2;
      if (v10 < a2)
      {
        v133 = a2;
        do
        {
          v134 = *--v133;
          v135 = *(v14 + v134);
          v136 = v91 < v134;
          if (v92 != v135)
          {
            v136 = v135 > v92;
          }
        }

        while (v136);
      }

      if (v10 < v133)
      {
        v137 = *v10;
        v138 = *v133;
        do
        {
          *v10 = v138;
          *v133 = v137;
          v139 = *(v14 + v91);
          do
          {
            v140 = v10[1];
            ++v10;
            v137 = v140;
            v141 = *(v14 + v140);
            v142 = v91 < v140;
            if (v139 == v141)
            {
              v143 = v142;
            }

            else
            {
              v143 = v141 > v139;
            }
          }

          while (!v143);
          do
          {
            v144 = *--v133;
            v138 = v144;
            v145 = *(v14 + v144);
            v146 = v91 < v144;
            if (v139 == v145)
            {
              v147 = v146;
            }

            else
            {
              v147 = v145 > v139;
            }
          }

          while (v147);
        }

        while (v10 < v133);
      }

      v148 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v148;
      }

      a5 = 0;
      *v148 = v91;
    }
  }

  v171 = *a3;
  v172 = *v10;
  v173 = v10[1];
  v174 = *(*a3 + v173);
  v175 = *(*a3 + v173);
  v176 = *(*a3 + *v10);
  v177 = v173 < *v10;
  if (v175 != v176)
  {
    v177 = v174 < v176;
  }

  v178 = *(a2 - 1);
  v179 = *(v171 + v178);
  v180 = v179 < v174;
  if (v175 == v179)
  {
    v180 = v178 < v173;
  }

  if (v177)
  {
    if (v180)
    {
      *v10 = v178;
    }

    else
    {
      *v10 = v173;
      v10[1] = v172;
      v256 = *(a2 - 1);
      v257 = *(v171 + v256);
      v258 = *(v171 + v256);
      v259 = *(v171 + v172);
      v260 = v257 < v259;
      if (v258 == v259)
      {
        v261 = v256 < v172;
      }

      else
      {
        v261 = v260;
      }

      if (!v261)
      {
        return result;
      }

      v10[1] = v256;
    }

    *(a2 - 1) = v172;
    return result;
  }

  if (v180)
  {
    v10[1] = v178;
    *(a2 - 1) = v173;
    v163 = *v10;
    v241 = v10[1];
    v242 = *(v171 + v241);
    v243 = *(v171 + v241);
    v244 = *(v171 + v163);
    v245 = v242 < v244;
    v246 = v243 == v244 ? v241 < v163 : v245;
    if (v246 == 1)
    {
      *v10 = v241;
      goto LABEL_282;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<signed char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + v5);
  v7 = *(a5 + v5);
  v8 = *result;
  v9 = *(a5 + v8);
  v10 = v5 < v8;
  if (v7 != v9)
  {
    v10 = v6 < v9;
  }

  v11 = *a3;
  v12 = *(a5 + *a3);
  v13 = v12 < v6;
  if (v7 == v12)
  {
    v13 = *a3 < v5;
  }

  if (v10)
  {
    if (v13)
    {
      *result = v11;
LABEL_17:
      *a3 = v8;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v8;
    v11 = *a3;
    v18 = *(a5 + v8);
    v19 = *(a5 + *a3) < v18;
    if (*(a5 + *a3) == v18)
    {
      v19 = *a3 < v8;
    }

    if (v19)
    {
      *a2 = v11;
      goto LABEL_17;
    }

    v8 = *a3;
  }

  else if (v13)
  {
    *a2 = v11;
    *a3 = v5;
    v14 = *a2;
    v15 = *result;
    v16 = *(a5 + v15);
    v17 = *(a5 + v14) < v16;
    if (*(a5 + v14) == v16)
    {
      v17 = v14 < v15;
    }

    if (v17)
    {
      *result = v14;
      *a2 = v15;
      v8 = *a3;
LABEL_18:
      v11 = v8;
      goto LABEL_22;
    }

    v8 = v5;
    v11 = v5;
  }

  else
  {
    v8 = *a3;
  }

LABEL_22:
  v20 = *a4;
  v21 = *(a5 + v8);
  if (*(a5 + v20) == v21)
  {
    v22 = v20 < v11;
  }

  else
  {
    v22 = *(a5 + v20) < v21;
  }

  if (v22)
  {
    *a3 = v20;
    *a4 = v11;
    v23 = *a3;
    v24 = *a2;
    v25 = *(a5 + v24);
    v26 = *(a5 + v23) < v25;
    if (*(a5 + v23) == v25)
    {
      v26 = v23 < v24;
    }

    if (v26)
    {
      *a2 = v23;
      *a3 = v24;
      v27 = *a2;
      v28 = *result;
      v29 = *(a5 + v28);
      v30 = *(a5 + v27) < v29;
      if (*(a5 + v27) == v29)
      {
        v30 = v27 < v28;
      }

      if (v30)
      {
        *result = v27;
        *a2 = v28;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<signed char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v29 = *a3;
        v30 = *a1;
        v31 = a1[1];
        v32 = *(*a3 + v31);
        v33 = *(*a3 + v31);
        v34 = *(*a3 + *a1);
        v35 = v31 < *a1;
        if (v33 != v34)
        {
          v35 = v32 < v34;
        }

        v36 = *(a2 - 1);
        v37 = *(v29 + v36);
        v38 = v37 < v32;
        if (v33 == v37)
        {
          v38 = v36 < v31;
        }

        if (v35)
        {
          if (v38)
          {
            *a1 = v36;
          }

          else
          {
            *a1 = v31;
            a1[1] = v30;
            v75 = *(a2 - 1);
            v76 = *(v29 + v75);
            v77 = *(v29 + v75);
            v78 = *(v29 + v30);
            v79 = v76 < v78;
            if (v77 == v78)
            {
              v80 = v75 < v30;
            }

            else
            {
              v80 = v79;
            }

            if (!v80)
            {
              return 1;
            }

            a1[1] = v75;
          }

          *(a2 - 1) = v30;
          return 1;
        }

        if (!v38)
        {
          return 1;
        }

        a1[1] = v36;
        *(a2 - 1) = v31;
        v25 = *a1;
        v55 = a1[1];
        v56 = *(v29 + v55);
        v57 = *(v29 + v55);
        v58 = *(v29 + v25);
        v59 = v56 < v58;
        v60 = v57 == v58 ? v55 < v25 : v59;
        if (v60 != 1)
        {
          return 1;
        }

        *a1 = v55;
        break;
      case 4:
        return 1;
      case 5:
        v11 = *a3;
        v12 = *(a2 - 1);
        v13 = a1[3];
        v14 = *(*a3 + v13);
        v15 = *(*a3 + v12) < v14;
        if (*(*a3 + v12) == v14)
        {
          v15 = v12 < v13;
        }

        if (!v15)
        {
          return 1;
        }

        a1[3] = v12;
        *(a2 - 1) = v13;
        v17 = a1[2];
        v16 = a1[3];
        v18 = *(v11 + v17);
        v19 = *(v11 + v16) < v18;
        if (*(v11 + v16) == v18)
        {
          v19 = v16 < v17;
        }

        if (!v19)
        {
          return 1;
        }

        a1[2] = v16;
        a1[3] = v17;
        v20 = a1[1];
        v21 = *(v11 + v20);
        v22 = *(v11 + v16) < v21;
        if (*(v11 + v16) == v21)
        {
          v22 = v16 < v20;
        }

        if (!v22)
        {
          return 1;
        }

        a1[1] = v16;
        a1[2] = v20;
        v23 = *(v11 + v16);
        v24 = *(v11 + v16);
        v25 = *a1;
        v26 = *(v11 + v25);
        v27 = v23 < v26;
        v28 = v24 == v26 ? v16 < v25 : v27;
        if (v28 != 1)
        {
          return 1;
        }

        *a1 = v16;
        break;
      default:
        goto LABEL_33;
    }

    a1[1] = v25;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = *(*a3 + v8);
    if (*(*a3 + v7) == v9)
    {
      v10 = v7 < v8;
    }

    else
    {
      v10 = *(*a3 + v7) < v9;
    }

    if (v10)
    {
      *a1 = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_33:
  v39 = a1 + 2;
  v40 = a1[2];
  v41 = a1[1];
  v42 = *a3;
  v43 = *(*a3 + v41);
  v44 = *(*a3 + v41);
  v45 = *a1;
  v46 = *(*a3 + *a1);
  v47 = v41 < *a1;
  if (v44 != v46)
  {
    v47 = v43 < v46;
  }

  v48 = *(v42 + v40);
  v49 = v48 < v43;
  if (v44 == v48)
  {
    v50 = v40 < v41;
  }

  else
  {
    v50 = v49;
  }

  if (v47)
  {
    v51 = a1;
    v52 = a1 + 2;
    if (!v50)
    {
      *a1 = v41;
      a1[1] = v45;
      v53 = *(v42 + v45);
      v54 = *(v42 + v40) < v53;
      if (*(v42 + v40) == v53)
      {
        v54 = v40 < v45;
      }

      v51 = a1 + 1;
      v52 = a1 + 2;
      if (!v54)
      {
        goto LABEL_57;
      }
    }

LABEL_56:
    *v51 = v40;
    *v52 = v45;
    goto LABEL_57;
  }

  if (v50)
  {
    a1[1] = v40;
    *v39 = v41;
    v61 = *(v42 + v45);
    v62 = *(v42 + v40) < v61;
    if (*(v42 + v40) == v61)
    {
      v62 = v40 < v45;
    }

    v51 = a1;
    v52 = a1 + 1;
    if (v62)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  v63 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v64 = 0;
  for (i = 12; ; i += 4)
  {
    v66 = *v63;
    v67 = *v39;
    v68 = *(v42 + v67);
    v69 = *(v42 + *v63) < v68;
    if (*(v42 + *v63) == v68)
    {
      v69 = *v63 < v67;
    }

    if (v69)
    {
      v70 = i;
      while (1)
      {
        *(a1 + v70) = v67;
        v71 = v70 - 4;
        if (v70 == 4)
        {
          break;
        }

        v67 = *(a1 + v70 - 8);
        v72 = *(v42 + v67);
        v73 = *(v42 + v66) < v72;
        if (*(v42 + v66) == v72)
        {
          v73 = v66 < v67;
        }

        v70 -= 4;
        if (!v73)
        {
          v74 = (a1 + v71);
          goto LABEL_69;
        }
      }

      v74 = a1;
LABEL_69:
      *v74 = v66;
      if (++v64 == 8)
      {
        break;
      }
    }

    v39 = v63++;
    if (v63 == a2)
    {
      return 1;
    }
  }

  return v63 + 1 == a2;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v170 = *(a2 - 1);
      v171 = *v10;
      v172 = *(*a3 + 2 * v171);
      if (*(*a3 + 2 * v170) == v172)
      {
        v173 = v170 < v171;
      }

      else
      {
        v173 = *(*a3 + 2 * v170) < v172;
      }

      if (v173)
      {
        *v10 = v170;
LABEL_316:
        *(a2 - 1) = v171;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v184 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v185 = *a3;
            v186 = 4;
            v187 = v10;
            do
            {
              v189 = *v187;
              v188 = v187[1];
              v187 = v184;
              v190 = *(v185 + 2 * v188);
              v191 = *(v185 + 2 * v189);
              v192 = *(v185 + 2 * v188) < v191;
              if (v190 == v191)
              {
                v192 = v188 < v189;
              }

              if (v192)
              {
                v193 = v186;
                while (1)
                {
                  *(v10 + v193) = v189;
                  v194 = v193 - 4;
                  if (v193 == 4)
                  {
                    break;
                  }

                  v189 = *(v10 + v193 - 8);
                  v195 = *(v185 + 2 * v189);
                  v196 = v188 < v189;
                  if (v190 != v195)
                  {
                    v196 = v195 > v190;
                  }

                  v193 = v194;
                  if (!v196)
                  {
                    v197 = (v10 + v194);
                    goto LABEL_232;
                  }
                }

                v197 = v10;
LABEL_232:
                *v197 = v188;
              }

              v184 = v187 + 1;
              v186 += 4;
            }

            while (v187 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v248 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v249 = *a3;
          do
          {
            v251 = *v9;
            v250 = v9[1];
            v9 = v248;
            v252 = *(v249 + 2 * v250);
            v253 = *(v249 + 2 * v251);
            v254 = *(v249 + 2 * v250) < v253;
            if (v252 == v253)
            {
              v254 = v250 < v251;
            }

            if (v254)
            {
              v255 = v9;
              do
              {
                *v255 = v251;
                v251 = *(v255 - 2);
                v256 = *(v249 + 2 * v251);
                if (v252 == v256)
                {
                  v257 = v250 < v251;
                }

                else
                {
                  v257 = v256 > v252;
                }

                --v255;
              }

              while (v257);
              *v255 = v250;
            }

            v248 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v198 = (v11 - 2) >> 1;
        v199 = *a3;
        v200 = v198;
        do
        {
          v201 = v200;
          if (v198 >= v200)
          {
            v202 = (2 * v200) | 1;
            v203 = &v10[v202];
            if (2 * v201 + 2 >= v11)
            {
              LODWORD(v208) = *v203;
            }

            else
            {
              v204 = *v203;
              v205 = v203[1];
              v206 = *(v199 + 2 * v205);
              v207 = *(v199 + 2 * v204) < v206;
              if (*(v199 + 2 * v204) == v206)
              {
                v207 = v204 < v205;
              }

              if (v207)
              {
                LODWORD(v208) = v203[1];
              }

              else
              {
                LODWORD(v208) = *v203;
              }

              if (v207)
              {
                ++v203;
                v202 = 2 * v201 + 2;
              }
            }

            v209 = &v10[v201];
            v210 = *(v199 + 2 * v208);
            v211 = *v209;
            v212 = *(v199 + 2 * v211);
            if (v212 == v210)
            {
              result = v208 < v211;
            }

            else
            {
              result = v210 < *(v199 + 2 * v211);
            }

            if ((result & 1) == 0)
            {
              do
              {
                *v209 = v208;
                v209 = v203;
                if (v198 < v202)
                {
                  break;
                }

                v213 = (2 * v202) | 1;
                v203 = &v10[v213];
                v202 = 2 * v202 + 2;
                if (v202 >= v11)
                {
                  LODWORD(v208) = *v203;
                  v202 = v213;
                }

                else
                {
                  v208 = *v203;
                  v214 = v203[1];
                  v215 = *(v199 + 2 * v214);
                  v216 = *(v199 + 2 * v208) < v215;
                  if (*(v199 + 2 * v208) == v215)
                  {
                    v216 = v208 < v214;
                  }

                  if (v216)
                  {
                    LODWORD(v208) = v203[1];
                    ++v203;
                  }

                  else
                  {
                    v202 = v213;
                  }
                }

                v217 = *(v199 + 2 * v208);
                result = v212 == v217 ? v208 < v211 : v217 < v212;
              }

              while (result != 1);
              *v209 = v211;
            }
          }

          v200 = v201 - 1;
        }

        while (v201);
        do
        {
          v218 = 0;
          v219 = *v10;
          v220 = *a3;
          v221 = v10;
          do
          {
            v222 = &v221[v218];
            v223 = v222 + 1;
            v224 = (2 * v218) | 1;
            v218 = 2 * v218 + 2;
            if (v218 >= v11)
            {
              v226 = *v223;
              v218 = v224;
            }

            else
            {
              v227 = v222[2];
              v225 = v222 + 2;
              v226 = v227;
              result = *(v225 - 1);
              v228 = *(v220 + 2 * v227);
              v229 = result < v227;
              v230 = *(v220 + 2 * result) < v228;
              if (*(v220 + 2 * result) == v228)
              {
                v230 = v229;
              }

              if (v230)
              {
                v223 = v225;
              }

              else
              {
                v226 = *(v225 - 1);
                v218 = v224;
              }
            }

            *v221 = v226;
            v221 = v223;
          }

          while (v218 <= ((v11 - 2) >> 1));
          if (v223 == --a2)
          {
            *v223 = v219;
          }

          else
          {
            *v223 = *a2;
            *a2 = v219;
            v231 = (v223 - v10 + 4) >> 2;
            v232 = v231 < 2;
            v233 = v231 - 2;
            if (!v232)
            {
              v234 = v233 >> 1;
              v235 = &v10[v234];
              v236 = *v235;
              v237 = *(v220 + 2 * v236);
              v238 = *v223;
              v239 = *(v220 + 2 * v238);
              result = v236 < v238;
              if (v239 == v237 ? v236 < v238 : v237 < *(v220 + 2 * v238))
              {
                do
                {
                  *v223 = v236;
                  v223 = v235;
                  if (!v234)
                  {
                    break;
                  }

                  v234 = (v234 - 1) >> 1;
                  v235 = &v10[v234];
                  v236 = *v235;
                  v241 = *(v220 + 2 * v236);
                  result = v241 < v239;
                }

                while (v239 == v241 ? v236 < v238 : v241 < v239);
                *v223 = v238;
              }
            }
          }

          v232 = v11-- <= 2;
        }

        while (!v232);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 2 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 2 * v17);
      v19 = *v10;
      v20 = *(v14 + 2 * v19);
      if (*(v14 + 2 * v17) == v20)
      {
        v21 = v17 < v19;
      }

      else
      {
        v21 = v18 < v20;
      }

      if (v16 == v18)
      {
        v22 = v15 < v17;
      }

      else
      {
        v22 = v18 > v16;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_48;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + 2 * v39);
        if (v20 == v40)
        {
          v41 = v39 < v19;
        }

        else
        {
          v41 = v40 < v20;
        }

        if (v41)
        {
          *v12 = v39;
LABEL_48:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + 2 * v29);
        v31 = *v10;
        v32 = *(v14 + 2 * v31);
        if (v30 == v32 ? v29 < v31 : v30 < v32)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v42 = v12 - 1;
      v43 = *(v12 - 1);
      v44 = *(v14 + 2 * v43);
      v45 = *(v14 + 2 * v43);
      v46 = v10[1];
      v47 = *(v14 + 2 * v46);
      v48 = v44 < v47;
      if (v45 == v47)
      {
        v48 = v43 < v46;
      }

      v49 = *(a2 - 2);
      v50 = *(v14 + 2 * v49);
      v51 = v50 < v44;
      if (v45 == v50)
      {
        v51 = v49 < v43;
      }

      if (v48)
      {
        if (v51)
        {
          v10[1] = v49;
          goto LABEL_73;
        }

        v62 = *(v14 + 2 * v46);
        v10[1] = v43;
        *v42 = v46;
        v63 = *(a2 - 2);
        v64 = *(v14 + 2 * v63);
        if (v62 == v64)
        {
          v65 = v63 < v46;
        }

        else
        {
          v65 = v64 < v62;
        }

        if (v65)
        {
          *v42 = v63;
LABEL_73:
          *(a2 - 2) = v46;
        }
      }

      else if (v51)
      {
        *v42 = v49;
        *(a2 - 2) = v43;
        v52 = *v42;
        v53 = *(v14 + 2 * v52);
        v54 = v10[1];
        v55 = *(v14 + 2 * v54);
        if (v53 == v55 ? v52 < v54 : v53 < v55)
        {
          v10[1] = v52;
          *v42 = v54;
        }
      }

      v68 = v12[1];
      v66 = v12 + 1;
      v67 = v68;
      v69 = *(v14 + 2 * v68);
      v70 = *(v14 + 2 * v68);
      v71 = v10[2];
      v72 = *(v14 + 2 * v71);
      v73 = v68 < v71;
      v74 = v69 < v72;
      if (v70 == v72)
      {
        v74 = v73;
      }

      v75 = *(a2 - 3);
      v76 = *(v14 + 2 * v75);
      v77 = v76 < v69;
      if (v70 == v76)
      {
        v77 = v75 < v67;
      }

      if (v74)
      {
        if (v77)
        {
          v10[2] = v75;
          goto LABEL_92;
        }

        v83 = *(v14 + 2 * v71);
        v10[2] = v67;
        *v66 = v71;
        v84 = *(a2 - 3);
        v85 = *(v14 + 2 * v84);
        if (v83 == v85)
        {
          v86 = v84 < v71;
        }

        else
        {
          v86 = v85 < v83;
        }

        if (v86)
        {
          *v66 = v84;
LABEL_92:
          *(a2 - 3) = v71;
        }
      }

      else if (v77)
      {
        *v66 = v75;
        *(a2 - 3) = v67;
        v78 = *v66;
        v79 = *(v14 + 2 * v78);
        v80 = v10[2];
        v81 = *(v14 + 2 * v80);
        if (v79 == v81 ? v78 < v80 : v79 < v81)
        {
          v10[2] = v78;
          *v66 = v80;
        }
      }

      v87 = *v13;
      v88 = *(v14 + 2 * v87);
      v89 = *v42;
      v90 = *(v14 + 2 * v89);
      v91 = *(v14 + 2 * v89);
      if (*(v14 + 2 * v87) == v90)
      {
        result = v87 < v89;
      }

      else
      {
        result = v88 < v90;
      }

      v92 = *v66;
      v93 = *(v14 + 2 * v92);
      if (v93 == v88)
      {
        v94 = v92 < v87;
      }

      else
      {
        v94 = *(v14 + 2 * v92) < v88;
      }

      if (result)
      {
        if (!v94)
        {
          *v42 = v87;
          *v13 = v89;
          v95 = v93 == v91 ? v92 < v89 : v93 < v91;
          v42 = v13;
          LODWORD(v87) = v92;
          if (!v95)
          {
            LODWORD(v87) = v89;
LABEL_112:
            v97 = *v10;
            *v10 = v87;
            *v13 = v97;
            goto LABEL_113;
          }
        }
      }

      else
      {
        if (!v94)
        {
          goto LABEL_112;
        }

        *v13 = v92;
        *v66 = v87;
        if (v93 == v91)
        {
          v96 = v92 < v89;
        }

        else
        {
          v96 = v93 < v91;
        }

        v66 = v13;
        LODWORD(v87) = v89;
        if (!v96)
        {
          LODWORD(v87) = v92;
          goto LABEL_112;
        }
      }

      *v42 = v92;
      *v66 = v89;
      goto LABEL_112;
    }

    v23 = *v10;
    v24 = *(v14 + 2 * v23);
    v25 = *v13;
    v26 = *(v14 + 2 * v25);
    if (*(v14 + 2 * v23) == v26)
    {
      v27 = v23 < v25;
    }

    else
    {
      v27 = v24 < v26;
    }

    result = v24 > v16;
    if (v16 == v24)
    {
      v28 = v15 < v23;
    }

    else
    {
      v28 = v24 > v16;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_67:
        *(a2 - 1) = v25;
        goto LABEL_113;
      }

      v57 = *(v14 + 2 * v25);
      *v13 = v23;
      *v10 = v25;
      v58 = *(a2 - 1);
      v59 = *(v14 + 2 * v58);
      v60 = v59 < v26;
      if (v57 == v59)
      {
        v61 = v58 < v25;
      }

      else
      {
        v61 = v60;
      }

      if (v61)
      {
        *v10 = v58;
        goto LABEL_67;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + 2 * v34);
      v36 = *v13;
      v37 = *(v14 + 2 * v36);
      if (v35 == v37 ? v34 < v36 : v35 < v37)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_113:
    --a4;
    v98 = *v10;
    if (a5)
    {
      v99 = *(v14 + 2 * v98);
      goto LABEL_118;
    }

    v100 = *(v10 - 1);
    v101 = *(v14 + 2 * v100);
    v99 = *(v14 + 2 * v98);
    v102 = v100 < v98;
    if (v99 != v101)
    {
      v102 = v101 < *(v14 + 2 * v98);
    }

    if (v102)
    {
LABEL_118:
      v103 = 0;
      do
      {
        v104 = v10[v103 + 1];
        v105 = *(v14 + 2 * v104);
        if (v99 == v105)
        {
          v106 = v104 < v98;
        }

        else
        {
          v106 = v105 < v99;
        }

        ++v103;
      }

      while (v106);
      v107 = &v10[v103];
      v108 = a2;
      if (v103 == 1)
      {
        v108 = a2;
        do
        {
          if (v107 >= v108)
          {
            break;
          }

          v112 = *--v108;
          v113 = *(v14 + 2 * v112);
          v114 = v112 < v98;
          if (v99 != v113)
          {
            v114 = v113 < v99;
          }
        }

        while (!v114);
      }

      else
      {
        do
        {
          v109 = *--v108;
          v110 = *(v14 + 2 * v109);
          v111 = v109 < v98;
          if (v99 != v110)
          {
            v111 = v110 < v99;
          }
        }

        while (!v111);
      }

      if (v107 >= v108)
      {
        v127 = v107 - 1;
      }

      else
      {
        v115 = *v108;
        v116 = v104;
        v117 = v107;
        v118 = v108;
        do
        {
          *v117 = v115;
          *v118 = v116;
          do
          {
            v119 = v117[1];
            ++v117;
            v116 = v119;
            v120 = *(v14 + 2 * v119);
            v121 = v119 < v98;
            if (v99 == v120)
            {
              v122 = v121;
            }

            else
            {
              v122 = v120 < v99;
            }
          }

          while (v122);
          do
          {
            v123 = *--v118;
            v115 = v123;
            v124 = *(v14 + 2 * v123);
            v125 = v123 < v98;
            if (v99 == v124)
            {
              v126 = v125;
            }

            else
            {
              v126 = v124 < v99;
            }
          }

          while (!v126);
        }

        while (v117 < v118);
        v127 = v117 - 1;
      }

      if (v127 != v10)
      {
        *v10 = *v127;
      }

      *v127 = v98;
      if (v107 < v108)
      {
        goto LABEL_152;
      }

      v10 = v127 + 1;
      if (result)
      {
        a2 = v127;
        if (!v128)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v128)
      {
LABEL_152:
        a5 = 0;
        v10 = v127 + 1;
      }
    }

    else
    {
      v129 = *(a2 - 1);
      v130 = *(v14 + 2 * v129);
      v131 = v98 < v129;
      if (v99 != v130)
      {
        v131 = v130 > v99;
      }

      if (v131)
      {
        do
        {
          v132 = v10[1];
          ++v10;
          v133 = *(v14 + 2 * v132);
          v134 = v98 < v132;
          if (v99 != v133)
          {
            v134 = v133 > v99;
          }
        }

        while (!v134);
      }

      else
      {
        v135 = v10 + 1;
        do
        {
          v10 = v135;
          if (v135 >= a2)
          {
            break;
          }

          ++v135;
          v136 = *v10;
          v137 = *(v14 + 2 * v136);
          v138 = v98 < v136;
          if (v99 != v137)
          {
            v138 = v137 > v99;
          }
        }

        while (!v138);
      }

      v139 = a2;
      if (v10 < a2)
      {
        v139 = a2;
        do
        {
          v140 = *--v139;
          v141 = *(v14 + 2 * v140);
          v142 = v98 < v140;
          if (v99 != v141)
          {
            v142 = v141 > v99;
          }
        }

        while (v142);
      }

      if (v10 < v139)
      {
        v143 = *v10;
        v144 = *v139;
        do
        {
          *v10 = v144;
          *v139 = v143;
          do
          {
            v145 = v10[1];
            ++v10;
            v143 = v145;
            v146 = *(v14 + 2 * v145);
            v147 = v98 < v145;
            if (v99 == v146)
            {
              v148 = v147;
            }

            else
            {
              v148 = v146 > v99;
            }
          }

          while (!v148);
          do
          {
            v149 = *--v139;
            v144 = v149;
            v150 = *(v14 + 2 * v149);
            v151 = v98 < v149;
            if (v99 == v150)
            {
              v152 = v151;
            }

            else
            {
              v152 = v150 > v99;
            }
          }

          while (v152);
        }

        while (v10 < v139);
      }

      v153 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v153;
      }

      a5 = 0;
      *v153 = v98;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v183 = *a3;
    }

    if (v11 == 5)
    {
      v154 = *a3;
      v155 = *(a2 - 1);
      v156 = v10[3];
      v157 = *(*a3 + 2 * v156);
      v158 = *(*a3 + 2 * v155) < v157;
      if (*(*a3 + 2 * v155) == v157)
      {
        v158 = v155 < v156;
      }

      if (v158)
      {
        v10[3] = v155;
        *(a2 - 1) = v156;
        v160 = v10[2];
        v159 = v10[3];
        v161 = *(v154 + 2 * v159);
        v162 = *(v154 + 2 * v160);
        v163 = *(v154 + 2 * v159) < v162;
        if (v161 == v162)
        {
          v163 = v159 < v160;
        }

        if (v163)
        {
          v10[2] = v159;
          v10[3] = v160;
          v164 = v10[1];
          v165 = *(v154 + 2 * v164);
          if (v161 == v165 ? v159 < v164 : v165 > v161)
          {
            v10[1] = v159;
            v10[2] = v164;
            v167 = *v10;
            v168 = *(v154 + 2 * v167);
            if (v161 == v168 ? v159 < v167 : v168 > v161)
            {
              *v10 = v159;
              v10[1] = v167;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v174 = *a3;
  v171 = *v10;
  v175 = v10[1];
  v176 = *(*a3 + 2 * v175);
  v177 = *(*a3 + 2 * v175);
  v178 = *(*a3 + 2 * v171);
  v179 = v176 < v178;
  if (v177 == v178)
  {
    v179 = v175 < v171;
  }

  v180 = *(a2 - 1);
  v181 = *(v174 + 2 * v180);
  v182 = v181 < v176;
  if (v177 == v181)
  {
    v182 = v180 < v175;
  }

  if (v179)
  {
    if (v182)
    {
      *v10 = v180;
      goto LABEL_316;
    }

    v258 = *(*a3 + 2 * v171);
    *v10 = v175;
    v10[1] = v171;
    v259 = *(a2 - 1);
    v260 = *(v174 + 2 * v259);
    if (v258 == v260)
    {
      v261 = v259 < v171;
    }

    else
    {
      v261 = v260 < v258;
    }

    if (v261)
    {
      v10[1] = v259;
      goto LABEL_316;
    }
  }

  else if (v182)
  {
    v10[1] = v180;
    *(a2 - 1) = v175;
    v244 = *v10;
    v243 = v10[1];
    v245 = *(v174 + 2 * v243);
    v246 = *(v174 + 2 * v244);
    if (v245 == v246 ? v243 < v244 : v245 < v246)
    {
      *v10 = v243;
      v10[1] = v244;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + 2 * v5);
  v7 = *(a5 + 2 * v5);
  v8 = *result;
  v9 = *(a5 + 2 * v8);
  v10 = v6 < v9;
  if (v7 == v9)
  {
    v10 = v5 < v8;
  }

  v11 = *a3;
  v12 = *(a5 + 2 * *a3);
  v13 = v12 < v6;
  if (v7 == v12)
  {
    v13 = *a3 < v5;
  }

  if (v10)
  {
    if (v13)
    {
      *result = v11;
LABEL_19:
      *a3 = v8;
      goto LABEL_20;
    }

    v19 = *(a5 + 2 * v8);
    *result = v5;
    *a2 = v8;
    v11 = *a3;
    v20 = *(a5 + 2 * *a3);
    if (v19 == v20)
    {
      v21 = *a3 < v8;
    }

    else
    {
      v21 = v20 < v19;
    }

    if (v21)
    {
      *a2 = v11;
      goto LABEL_19;
    }

    v8 = *a3;
  }

  else if (v13)
  {
    *a2 = v11;
    *a3 = v5;
    v14 = *a2;
    v15 = *(a5 + 2 * v14);
    v16 = *result;
    v17 = *(a5 + 2 * v16);
    if (v15 == v17)
    {
      v18 = v14 < v16;
    }

    else
    {
      v18 = v15 < v17;
    }

    if (v18)
    {
      *result = v14;
      *a2 = v16;
      v8 = *a3;
LABEL_20:
      v11 = v8;
      goto LABEL_24;
    }

    v8 = v5;
    v11 = v5;
  }

  else
  {
    v8 = *a3;
  }

LABEL_24:
  v22 = *a4;
  v23 = *(a5 + 2 * v8);
  if (*(a5 + 2 * v22) == v23)
  {
    v24 = v22 < v11;
  }

  else
  {
    v24 = *(a5 + 2 * v22) < v23;
  }

  if (v24)
  {
    *a3 = v22;
    *a4 = v11;
    v25 = *a3;
    v26 = *(a5 + 2 * v25);
    v27 = *a2;
    v28 = *(a5 + 2 * v27);
    if (v26 == v28 ? v25 < v27 : v26 < v28)
    {
      *a2 = v25;
      *a3 = v27;
      v30 = *a2;
      v31 = *(a5 + 2 * v30);
      v32 = *result;
      v33 = *(a5 + 2 * v32);
      if (v31 == v33)
      {
        v34 = v30 < v32;
      }

      else
      {
        v34 = v31 < v33;
      }

      if (v34)
      {
        *result = v30;
        *a2 = v32;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v27 = *a3;
      v8 = *a1;
      v28 = a1[1];
      v29 = *(*a3 + 2 * v28);
      v30 = *(*a3 + 2 * v28);
      v31 = *(*a3 + 2 * v8);
      v32 = v29 < v31;
      if (v30 == v31)
      {
        v32 = v28 < v8;
      }

      v33 = *(a2 - 1);
      v34 = *(v27 + 2 * v33);
      v35 = v34 < v29;
      if (v30 == v34)
      {
        v35 = v33 < v28;
      }

      if (!v32)
      {
        if (v35)
        {
          a1[1] = v33;
          *(a2 - 1) = v28;
          v52 = *a1;
          v51 = a1[1];
          v53 = *(v27 + 2 * v51);
          v54 = *(v27 + 2 * v52);
          if (v53 == v54 ? v51 < v52 : v53 < v54)
          {
            *a1 = v51;
            a1[1] = v52;
          }
        }

        return 1;
      }

      if (v35)
      {
        *a1 = v33;
      }

      else
      {
        v70 = *(*a3 + 2 * v8);
        *a1 = v28;
        a1[1] = v8;
        v71 = *(a2 - 1);
        v72 = *(v27 + 2 * v71);
        if (v70 == v72)
        {
          v73 = v71 < v8;
        }

        else
        {
          v73 = v72 < v70;
        }

        if (!v73)
        {
          return 1;
        }

        a1[1] = v71;
      }

LABEL_79:
      *(a2 - 1) = v8;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v11 = *a3;
        v12 = *(a2 - 1);
        v13 = a1[3];
        v14 = *(*a3 + 2 * v13);
        v15 = *(*a3 + 2 * v12) < v14;
        if (*(*a3 + 2 * v12) == v14)
        {
          v15 = v12 < v13;
        }

        if (v15)
        {
          a1[3] = v12;
          *(a2 - 1) = v13;
          v17 = a1[2];
          v16 = a1[3];
          v18 = *(v11 + 2 * v16);
          v19 = *(v11 + 2 * v17);
          v20 = *(v11 + 2 * v16) < v19;
          if (v18 == v19)
          {
            v20 = v16 < v17;
          }

          if (v20)
          {
            a1[2] = v16;
            a1[3] = v17;
            v21 = a1[1];
            v22 = *(v11 + 2 * v21);
            if (v18 == v22 ? v16 < v21 : v22 > v18)
            {
              a1[1] = v16;
              a1[2] = v21;
              v24 = *a1;
              v25 = *(v11 + 2 * v24);
              if (v18 == v25 ? v16 < v24 : v25 > v18)
              {
                *a1 = v16;
                a1[1] = v24;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_34;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = *(*a3 + 2 * v8);
    if (*(*a3 + 2 * v7) == v9)
    {
      v10 = v7 < v8;
    }

    else
    {
      v10 = *(*a3 + 2 * v7) < v9;
    }

    if (!v10)
    {
      return 1;
    }

    *a1 = v7;
    goto LABEL_79;
  }

LABEL_34:
  v36 = a1 + 2;
  v37 = a1[2];
  v38 = a1 + 1;
  v39 = a1[1];
  v40 = *a3;
  v41 = *(*a3 + 2 * v39);
  v42 = *a1;
  v43 = *(*a3 + 2 * v42);
  v44 = *(*a3 + 2 * v42);
  if (*(*a3 + 2 * v39) == v43)
  {
    v45 = v39 < v42;
  }

  else
  {
    v45 = v41 < v43;
  }

  v46 = *(v40 + 2 * v37);
  v47 = *(v40 + 2 * v37) < v41;
  if (v46 == v41)
  {
    v47 = v37 < v39;
  }

  if (v45)
  {
    v48 = a1;
    v49 = a1 + 2;
    if (!v47)
    {
      *a1 = v39;
      a1[1] = v42;
      v50 = v46 == v44 ? v37 < v42 : v46 < v44;
      v48 = a1 + 1;
      v49 = a1 + 2;
      if (!v50)
      {
        goto LABEL_59;
      }
    }

LABEL_58:
    *v48 = v37;
    *v49 = v42;
    goto LABEL_59;
  }

  if (v47)
  {
    *v38 = v37;
    *v36 = v39;
    v56 = v46 == v44 ? v37 < v42 : v46 < v44;
    v48 = a1;
    v49 = a1 + 1;
    if (v56)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v57 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v58 = 0;
  for (i = 12; ; i += 4)
  {
    v60 = *v57;
    v61 = *(v40 + 2 * v60);
    v62 = *v36;
    v63 = *(v40 + 2 * v62);
    v64 = *(v40 + 2 * v60) < v63;
    if (v61 == v63)
    {
      v64 = v60 < v62;
    }

    if (v64)
    {
      v65 = i;
      while (1)
      {
        *(a1 + v65) = v62;
        v66 = v65 - 4;
        if (v65 == 4)
        {
          break;
        }

        v62 = *(a1 + v65 - 8);
        v67 = *(v40 + 2 * v62);
        v68 = v60 < v62;
        if (v61 != v67)
        {
          v68 = v67 > v61;
        }

        v65 = v66;
        if (!v68)
        {
          v69 = (a1 + v66);
          goto LABEL_71;
        }
      }

      v69 = a1;
LABEL_71:
      *v69 = v60;
      if (++v58 == 8)
      {
        break;
      }
    }

    v36 = v57++;
    if (v57 == a2)
    {
      return 1;
    }
  }

  return v57 + 1 == a2;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v187 = *(a2 - 1);
        v188 = *(*a3 + v187);
        v189 = *v10;
        v190 = *(*a3 + v189);
        v191 = v188 == v190;
        v192 = v188 < v190;
        if (v191)
        {
          v192 = v187 < v189;
        }

        if (v192)
        {
          *v10 = v187;
          *(a2 - 1) = v189;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v203 = *a3;
    }

    if (v11 == 5)
    {
      v168 = *a3;
      v169 = *(a2 - 1);
      v170 = *(*a3 + v169);
      v171 = v10[3];
      v172 = *(*a3 + v171);
      v191 = v170 == v172;
      v173 = v170 < v172;
      if (v191)
      {
        v173 = v169 < v171;
      }

      if (!v173)
      {
        return result;
      }

      v10[3] = v169;
      *(a2 - 1) = v171;
      v175 = v10[2];
      v174 = v10[3];
      v176 = *(v168 + v174);
      v177 = *(v168 + v175);
      v191 = v176 == v177;
      v178 = v176 < v177;
      if (v191)
      {
        v178 = v174 < v175;
      }

      if (!v178)
      {
        return result;
      }

      v10[2] = v174;
      v10[3] = v175;
      v179 = *(v168 + v174);
      v180 = v10[1];
      v181 = *(v168 + v180);
      v191 = v179 == v181;
      v182 = v179 < v181;
      if (v191)
      {
        v182 = v174 < v180;
      }

      if (!v182)
      {
        return result;
      }

      v10[1] = v174;
      v10[2] = v180;
      v183 = *(v168 + v174);
      v184 = *v10;
      v185 = *(v168 + v184);
      v191 = v183 == v185;
      v186 = v183 < v185;
      if (v191)
      {
        v186 = v174 < v184;
      }

      if (!v186)
      {
        return result;
      }

      *v10 = v174;
LABEL_269:
      v10[1] = v184;
      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v204 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v205 = *a3;
            v206 = 4;
            v207 = v10;
            do
            {
              v209 = *v207;
              v208 = v207[1];
              v207 = v204;
              v210 = *(v205 + v208);
              v211 = *(v205 + v209);
              LODWORD(v204) = v209;
              v212 = v208 < v209;
              v191 = v210 == v211;
              v213 = v210 < v211;
              if (!v191)
              {
                v212 = v213;
              }

              if (v212)
              {
                v214 = v206;
                while (1)
                {
                  *(v10 + v214) = v204;
                  v215 = v214 - 4;
                  if (v214 == 4)
                  {
                    break;
                  }

                  v216 = v10 + v214;
                  v217 = *(v205 + v208);
                  v204 = *(v216 - 2);
                  v218 = *(v204 + v205);
                  v191 = v217 == v218;
                  v219 = v217 < v218;
                  if (v191)
                  {
                    v220 = v208 < v204;
                  }

                  else
                  {
                    v220 = v219;
                  }

                  v214 = v215;
                  if (!v220)
                  {
                    v221 = (v10 + v215);
                    goto LABEL_209;
                  }
                }

                v221 = v10;
LABEL_209:
                *v221 = v208;
              }

              v204 = v207 + 1;
              v206 += 4;
            }

            while (v207 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v277 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v278 = *a3;
          do
          {
            v280 = *v9;
            v279 = v9[1];
            v9 = v277;
            v281 = *(v278 + v279);
            v282 = *(v278 + v280);
            LODWORD(v277) = v280;
            v283 = v279 < v280;
            v191 = v281 == v282;
            v284 = v281 < v282;
            if (!v191)
            {
              v283 = v284;
            }

            if (v283)
            {
              v285 = v9;
              do
              {
                *v285 = v277;
                v286 = *(v278 + v279);
                v277 = *(v285 - 2);
                v287 = *(v277 + v278);
                v191 = v286 == v287;
                v288 = v286 < v287;
                if (v191)
                {
                  v288 = v279 < v277;
                }

                --v285;
              }

              while (v288);
              *v285 = v279;
            }

            v277 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v222 = (v11 - 2) >> 1;
        v223 = *a3;
        v224 = v222;
        do
        {
          v225 = v224;
          if (v222 >= v224)
          {
            v226 = (2 * v224) | 1;
            v227 = &v10[v226];
            if (2 * v225 + 2 >= v11)
            {
              LODWORD(v234) = *v227;
            }

            else
            {
              v228 = *v227;
              v229 = *(v223 + v228);
              v230 = v227[1];
              v231 = *(v223 + v230);
              v191 = v229 == v231;
              v232 = v229 < v231;
              if (v191)
              {
                v232 = v228 < v230;
              }

              v233 = !v232;
              if (v232)
              {
                LODWORD(v234) = v227[1];
              }

              else
              {
                LODWORD(v234) = *v227;
              }

              if (!v233)
              {
                ++v227;
                v226 = 2 * v225 + 2;
              }
            }

            v235 = &v10[v225];
            v236 = *(v223 + v234);
            v237 = *v235;
            result = *(v223 + *v235);
            v191 = v236 == result;
            v238 = v236 < result;
            if (v191)
            {
              v238 = v234 < *v235;
            }

            if (!v238)
            {
              do
              {
                *v235 = v234;
                v235 = v227;
                if (v222 < v226)
                {
                  break;
                }

                v239 = (2 * v226) | 1;
                v227 = &v10[v239];
                v226 = 2 * v226 + 2;
                if (v226 >= v11)
                {
                  LODWORD(v234) = *v227;
                  v226 = v239;
                }

                else
                {
                  v234 = *v227;
                  v240 = *(v223 + v234);
                  v241 = v227[1];
                  v242 = *(v223 + v241);
                  v191 = v240 == v242;
                  v243 = v240 < v242;
                  if (v191)
                  {
                    v243 = v234 < v241;
                  }

                  if (v243)
                  {
                    LODWORD(v234) = v227[1];
                    ++v227;
                  }

                  else
                  {
                    v226 = v239;
                  }
                }

                v244 = *(v223 + v234);
                result = *(v223 + v237);
                v191 = v244 == result;
                v245 = v244 < result;
                if (v191)
                {
                  v245 = v234 < v237;
                }
              }

              while (!v245);
              *v235 = v237;
            }
          }

          v224 = v225 - 1;
        }

        while (v225);
        do
        {
          v246 = 0;
          v247 = *v10;
          v248 = *a3;
          v249 = v10;
          do
          {
            v250 = &v249[v246];
            v251 = v250 + 1;
            v252 = (2 * v246) | 1;
            v246 = 2 * v246 + 2;
            if (v246 >= v11)
            {
              v254 = *v251;
              v246 = v252;
            }

            else
            {
              v255 = v250[2];
              v253 = v250 + 2;
              v254 = v255;
              result = *(v253 - 1);
              v256 = *(v248 + result);
              v257 = *(v248 + v255);
              v258 = result < v255;
              v191 = v256 == v257;
              v259 = v256 < v257;
              if (v191)
              {
                v259 = v258;
              }

              if (v259)
              {
                v251 = v253;
              }

              else
              {
                v254 = *(v253 - 1);
                v246 = v252;
              }
            }

            *v249 = v254;
            v249 = v251;
          }

          while (v246 <= ((v11 - 2) >> 1));
          if (v251 == --a2)
          {
            *v251 = v247;
          }

          else
          {
            *v251 = *a2;
            *a2 = v247;
            v260 = (v251 - v10 + 4) >> 2;
            v261 = v260 < 2;
            v262 = v260 - 2;
            if (!v261)
            {
              v263 = v262 >> 1;
              v264 = &v10[v263];
              v265 = *v264;
              v266 = *(v248 + v265);
              v267 = *v251;
              v268 = *(v248 + *v251);
              v191 = v266 == v268;
              v269 = v266 < v268;
              if (v191)
              {
                v269 = v265 < *v251;
              }

              if (v269)
              {
                do
                {
                  *v251 = v265;
                  v251 = v264;
                  if (!v263)
                  {
                    break;
                  }

                  v263 = (v263 - 1) >> 1;
                  v264 = &v10[v263];
                  v265 = *v264;
                  v270 = *(v248 + v265);
                  v271 = *(v248 + v267);
                  v191 = v270 == v271;
                  v272 = v270 < v271;
                  if (v191)
                  {
                    v272 = v265 < v267;
                  }
                }

                while (v272);
                *v251 = v267;
              }
            }
          }

          v261 = v11-- <= 2;
        }

        while (!v261);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + v17);
      v19 = *v10;
      v20 = *(v14 + *v10);
      v191 = v18 == v20;
      v21 = v18 < v20;
      if (v191)
      {
        v21 = v17 < *v10;
      }

      v191 = v16 == v18;
      v22 = v16 < v18;
      if (v191)
      {
        v22 = v15 < v17;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + v39);
        v41 = *(v14 + v19);
        v191 = v40 == v41;
        v42 = v40 < v41;
        if (v191)
        {
          v42 = v39 < v19;
        }

        if (v42)
        {
          *v12 = v39;
LABEL_41:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + v29);
        v31 = *v10;
        v32 = *(v14 + v31);
        v191 = v30 == v32;
        v33 = v30 < v32;
        if (v191)
        {
          v33 = v29 < v31;
        }

        if (v33)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v43 = v12 - 1;
      v44 = *(v12 - 1);
      v45 = *(v14 + v44);
      v46 = v10[1];
      v47 = *(v14 + v46);
      v48 = v44 < v46;
      v191 = v45 == v47;
      v49 = v45 < v47;
      v50 = *(a2 - 2);
      v51 = *(v14 + v50);
      if (!v191)
      {
        v48 = v49;
      }

      v191 = v51 == v45;
      v52 = v51 < v45;
      if (v191)
      {
        v52 = v50 < v44;
      }

      if (v48)
      {
        if (v52)
        {
          v10[1] = v50;
          goto LABEL_63;
        }

        v10[1] = v44;
        *v43 = v46;
        v62 = *(a2 - 2);
        v63 = *(v14 + v62);
        v64 = *(v14 + v46);
        v191 = v63 == v64;
        v65 = v63 < v64;
        if (v191)
        {
          v65 = v62 < v46;
        }

        if (v65)
        {
          *v43 = v62;
LABEL_63:
          *(a2 - 2) = v46;
        }
      }

      else if (v52)
      {
        *v43 = v50;
        *(a2 - 2) = v44;
        v53 = *v43;
        v54 = *(v14 + v53);
        v55 = v10[1];
        v56 = *(v14 + v55);
        v191 = v54 == v56;
        v57 = v54 < v56;
        if (v191)
        {
          v57 = v53 < v55;
        }

        if (v57)
        {
          v10[1] = v53;
          *v43 = v55;
        }
      }

      v68 = v12[1];
      v66 = v12 + 1;
      v67 = v68;
      v69 = *(v14 + v68);
      v70 = v10[2];
      v71 = *(v14 + v70);
      v72 = v68 < v70;
      v191 = v69 == v71;
      v73 = v69 < v71;
      v74 = *(a2 - 3);
      v75 = *(v14 + v74);
      if (!v191)
      {
        v72 = v73;
      }

      v191 = v75 == v69;
      v76 = v75 < v69;
      if (v191)
      {
        v76 = v74 < v67;
      }

      if (v72)
      {
        if (v76)
        {
          v10[2] = v74;
          goto LABEL_80;
        }

        v10[2] = v67;
        *v66 = v70;
        v82 = *(a2 - 3);
        v83 = *(v14 + v82);
        v84 = *(v14 + v70);
        v191 = v83 == v84;
        v85 = v83 < v84;
        if (v191)
        {
          v85 = v82 < v70;
        }

        if (v85)
        {
          *v66 = v82;
LABEL_80:
          *(a2 - 3) = v70;
        }
      }

      else if (v76)
      {
        *v66 = v74;
        *(a2 - 3) = v67;
        v77 = *v66;
        v78 = *(v14 + v77);
        v79 = v10[2];
        v80 = *(v14 + v79);
        v191 = v78 == v80;
        v81 = v78 < v80;
        if (v191)
        {
          v81 = v77 < v79;
        }

        if (v81)
        {
          v10[2] = v77;
          *v66 = v79;
        }
      }

      v86 = *v13;
      v87 = *(v14 + v86);
      v88 = *v43;
      v89 = *(v14 + *v43);
      v90 = v86 < *v43;
      v191 = v87 == v89;
      v91 = v87 < v89;
      v92 = *v66;
      result = *(v14 + *v66);
      if (!v191)
      {
        v90 = v91;
      }

      v191 = result == v87;
      v93 = result < v87;
      if (v191)
      {
        v93 = v92 < v86;
      }

      if (v90)
      {
        if (!v93)
        {
          *v43 = v86;
          *v13 = v88;
          v94 = *(v14 + v92);
          v95 = *(v14 + v88);
          v96 = v92 < v88;
          v191 = v94 == v95;
          v97 = v94 < v95;
          if (!v191)
          {
            v96 = v97;
          }

          v43 = v13;
          LODWORD(v86) = v92;
          if (!v96)
          {
            LODWORD(v86) = v88;
LABEL_96:
            v102 = *v10;
            *v10 = v86;
            *v13 = v102;
            goto LABEL_97;
          }
        }
      }

      else
      {
        if (!v93)
        {
          goto LABEL_96;
        }

        *v13 = v92;
        *v66 = v86;
        v98 = *(v14 + v92);
        v99 = *(v14 + v88);
        v100 = v92 < v88;
        v191 = v98 == v99;
        v101 = v98 < v99;
        if (!v191)
        {
          v100 = v101;
        }

        v66 = v13;
        LODWORD(v86) = v88;
        if (!v100)
        {
          LODWORD(v86) = v92;
          goto LABEL_96;
        }
      }

      *v43 = v92;
      *v66 = v88;
      goto LABEL_96;
    }

    v23 = *v10;
    v24 = *(v14 + v23);
    v25 = *v13;
    v26 = *(v14 + *v13);
    v191 = v24 == v26;
    v27 = v24 < v26;
    if (v191)
    {
      v27 = v23 < *v13;
    }

    v191 = v16 == v24;
    v28 = v16 < v24;
    if (v191)
    {
      v28 = v15 < v23;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v25;
        goto LABEL_97;
      }

      *v13 = v23;
      *v10 = v25;
      v58 = *(a2 - 1);
      v59 = *(v14 + v58);
      v60 = *(v14 + v25);
      v191 = v59 == v60;
      v61 = v59 < v60;
      if (v191)
      {
        v61 = v58 < v25;
      }

      if (v61)
      {
        *v10 = v58;
        goto LABEL_58;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + v34);
      v36 = *v13;
      v37 = *(v14 + v36);
      v191 = v35 == v37;
      v38 = v35 < v37;
      if (v191)
      {
        v38 = v34 < v36;
      }

      if (v38)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_97:
    --a4;
    v103 = *v10;
    if (a5)
    {
      v104 = *(v14 + v103);
      goto LABEL_102;
    }

    v105 = *(v10 - 1);
    v106 = *(v14 + v105);
    v104 = *(v14 + v103);
    v107 = v105 < v103;
    v191 = v106 == v104;
    v108 = v106 < v104;
    if (!v191)
    {
      v107 = v108;
    }

    if (v107)
    {
LABEL_102:
      v109 = 0;
      do
      {
        v110 = v10[v109 + 1];
        v111 = *(v14 + v110);
        v191 = v111 == v104;
        v112 = v111 < v104;
        if (v191)
        {
          v112 = v110 < v103;
        }

        ++v109;
      }

      while (v112);
      v113 = &v10[v109];
      v114 = a2;
      if (v109 == 1)
      {
        v114 = a2;
        do
        {
          if (v113 >= v114)
          {
            break;
          }

          v119 = *--v114;
          v120 = *(v14 + v119);
          v121 = v119 < v103;
          v191 = v120 == v104;
          v122 = v120 < v104;
          if (!v191)
          {
            v121 = v122;
          }
        }

        while (!v121);
      }

      else
      {
        do
        {
          v115 = *--v114;
          v116 = *(v14 + v115);
          v117 = v115 < v103;
          v191 = v116 == v104;
          v118 = v116 < v104;
          if (!v191)
          {
            v117 = v118;
          }
        }

        while (!v117);
      }

      if (v113 >= v114)
      {
        v136 = v113 - 1;
      }

      else
      {
        v123 = *v114;
        v124 = v110;
        v125 = v113;
        v126 = v114;
        do
        {
          *v125 = v123;
          *v126 = v124;
          v127 = *(v14 + v103);
          do
          {
            v128 = v125[1];
            ++v125;
            v124 = v128;
            v129 = *(v14 + v128);
            v130 = v128 < v103;
            v191 = v129 == v127;
            v131 = v129 < v127;
            if (v191)
            {
              v131 = v130;
            }
          }

          while (v131);
          do
          {
            v132 = *--v126;
            v123 = v132;
            v133 = *(v14 + v132);
            v134 = v132 < v103;
            v191 = v133 == v127;
            v135 = v133 < v127;
            if (v191)
            {
              v135 = v134;
            }
          }

          while (!v135);
        }

        while (v125 < v126);
        v136 = v125 - 1;
      }

      if (v136 != v10)
      {
        *v10 = *v136;
      }

      *v136 = v103;
      if (v113 < v114)
      {
        goto LABEL_133;
      }

      v10 = v136 + 1;
      if (result)
      {
        a2 = v136;
        if (!v137)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v137)
      {
LABEL_133:
        a5 = 0;
        v10 = v136 + 1;
      }
    }

    else
    {
      v138 = *(a2 - 1);
      v139 = *(v14 + v138);
      v140 = v103 < v138;
      v191 = v104 == v139;
      v141 = v104 < v139;
      if (!v191)
      {
        v140 = v141;
      }

      if (v140)
      {
        do
        {
          v142 = v10[1];
          ++v10;
          v143 = *(v14 + v142);
          v144 = v103 < v142;
          v191 = v104 == v143;
          v145 = v104 < v143;
          if (!v191)
          {
            v144 = v145;
          }
        }

        while (!v144);
      }

      else
      {
        v146 = v10 + 1;
        do
        {
          v10 = v146;
          if (v146 >= a2)
          {
            break;
          }

          ++v146;
          v147 = *v10;
          v148 = *(v14 + v147);
          v149 = v103 < v147;
          v191 = v104 == v148;
          v150 = v104 < v148;
          if (!v191)
          {
            v149 = v150;
          }
        }

        while (!v149);
      }

      v151 = a2;
      if (v10 < a2)
      {
        v151 = a2;
        do
        {
          v152 = *--v151;
          v153 = *(v14 + v152);
          v154 = v103 < v152;
          v191 = v104 == v153;
          v155 = v104 < v153;
          if (!v191)
          {
            v154 = v155;
          }
        }

        while (v154);
      }

      if (v10 < v151)
      {
        v156 = *v10;
        v157 = *v151;
        do
        {
          *v10 = v157;
          *v151 = v156;
          v158 = *(v14 + v103);
          do
          {
            v159 = v10[1];
            ++v10;
            v156 = v159;
            v160 = *(v14 + v159);
            v161 = v103 < v159;
            v191 = v158 == v160;
            v162 = v158 < v160;
            if (v191)
            {
              v162 = v161;
            }
          }

          while (!v162);
          do
          {
            v163 = *--v151;
            v157 = v163;
            v164 = *(v14 + v163);
            v165 = v103 < v163;
            v191 = v158 == v164;
            v166 = v158 < v164;
            if (v191)
            {
              v166 = v165;
            }
          }

          while (v166);
        }

        while (v10 < v151);
      }

      v167 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v167;
      }

      a5 = 0;
      *v167 = v103;
    }
  }

  v193 = *a3;
  v194 = *v10;
  v195 = v10[1];
  v196 = *(*a3 + v195);
  v197 = *(*a3 + *v10);
  v198 = v195 < *v10;
  v191 = v196 == v197;
  v199 = v196 < v197;
  v200 = *(a2 - 1);
  v201 = *(*a3 + v200);
  if (!v191)
  {
    v198 = v199;
  }

  v191 = v201 == v196;
  v202 = v201 < v196;
  if (v191)
  {
    v202 = v200 < v195;
  }

  if (v198)
  {
    if (v202)
    {
      *v10 = v200;
    }

    else
    {
      *v10 = v195;
      v10[1] = v194;
      v289 = *(a2 - 1);
      v290 = *(v193 + v289);
      v291 = *(v193 + v194);
      v191 = v290 == v291;
      v292 = v290 < v291;
      if (v191)
      {
        v292 = v289 < v194;
      }

      if (!v292)
      {
        return result;
      }

      v10[1] = v289;
    }

    *(a2 - 1) = v194;
    return result;
  }

  if (v202)
  {
    v10[1] = v200;
    *(a2 - 1) = v195;
    v184 = *v10;
    v273 = v10[1];
    v274 = *(v193 + v273);
    v275 = *(v193 + v184);
    v191 = v274 == v275;
    v276 = v274 < v275;
    if (v191)
    {
      v276 = v273 < v184;
    }

    if (v276)
    {
      *v10 = v273;
      goto LABEL_269;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + v5);
  v7 = *result;
  v8 = *(a5 + v7);
  v9 = v5 < v7;
  v10 = v6 == v8;
  v11 = v6 < v8;
  v12 = *a3;
  v13 = *(a5 + *a3);
  if (!v10)
  {
    v9 = v11;
  }

  v10 = v13 == v6;
  v14 = v13 < v6;
  if (v10)
  {
    v14 = v12 < v5;
  }

  if (v9)
  {
    if (v14)
    {
      *result = v12;
LABEL_17:
      *a3 = v7;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v7;
    v12 = *a3;
    v20 = *(a5 + *a3);
    v21 = *(a5 + v7);
    v10 = v20 == v21;
    v22 = v20 < v21;
    if (v10)
    {
      v22 = *a3 < v7;
    }

    if (v22)
    {
      *a2 = v12;
      goto LABEL_17;
    }

    v7 = *a3;
  }

  else if (v14)
  {
    *a2 = v12;
    *a3 = v5;
    v15 = *a2;
    v16 = *(a5 + v15);
    v17 = *result;
    v18 = *(a5 + v17);
    v10 = v16 == v18;
    v19 = v16 < v18;
    if (v10)
    {
      v19 = v15 < v17;
    }

    if (v19)
    {
      *result = v15;
      *a2 = v17;
      v7 = *a3;
LABEL_18:
      v12 = v7;
      goto LABEL_22;
    }

    v7 = v5;
    v12 = v5;
  }

  else
  {
    v7 = *a3;
  }

LABEL_22:
  v23 = *a4;
  v24 = *(a5 + v23);
  v25 = *(a5 + v7);
  v10 = v24 == v25;
  v26 = v24 < v25;
  if (v10)
  {
    v26 = v23 < v12;
  }

  if (v26)
  {
    *a3 = v23;
    *a4 = v12;
    v27 = *a3;
    v28 = *(a5 + v27);
    v29 = *a2;
    v30 = *(a5 + v29);
    v10 = v28 == v30;
    v31 = v28 < v30;
    if (v10)
    {
      v31 = v27 < v29;
    }

    if (v31)
    {
      *a2 = v27;
      *a3 = v29;
      v32 = *a2;
      v33 = *(a5 + v32);
      v34 = *result;
      v35 = *(a5 + v34);
      v10 = v33 == v35;
      v36 = v33 < v35;
      if (v10)
      {
        v36 = v32 < v34;
      }

      if (v36)
      {
        *result = v32;
        *a2 = v34;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v32 = *a3;
        v33 = *a1;
        v34 = a1[1];
        v35 = *(*a3 + v34);
        v36 = *(*a3 + *a1);
        v37 = v34 < *a1;
        v11 = v35 == v36;
        v38 = v35 < v36;
        v39 = *(a2 - 1);
        v40 = *(*a3 + v39);
        if (!v11)
        {
          v37 = v38;
        }

        v11 = v40 == v35;
        v41 = v40 < v35;
        if (v11)
        {
          v41 = v39 < v34;
        }

        if (v37)
        {
          if (v41)
          {
            *a1 = v39;
          }

          else
          {
            *a1 = v34;
            a1[1] = v33;
            v81 = *(a2 - 1);
            v82 = *(v32 + v81);
            v83 = *(v32 + v33);
            v11 = v82 == v83;
            v84 = v82 < v83;
            if (v11)
            {
              v84 = v81 < v33;
            }

            if (!v84)
            {
              return 1;
            }

            a1[1] = v81;
          }

          *(a2 - 1) = v33;
          return 1;
        }

        if (!v41)
        {
          return 1;
        }

        a1[1] = v39;
        *(a2 - 1) = v34;
        v29 = *a1;
        v58 = a1[1];
        v59 = *(v32 + v58);
        v60 = *(v32 + v29);
        v11 = v59 == v60;
        v61 = v59 < v60;
        if (v11)
        {
          v61 = v58 < v29;
        }

        if (!v61)
        {
          return 1;
        }

        *a1 = v58;
        break;
      case 4:
        return 1;
      case 5:
        v13 = *a3;
        v14 = *(a2 - 1);
        v15 = *(*a3 + v14);
        v16 = a1[3];
        v17 = *(*a3 + v16);
        v11 = v15 == v17;
        v18 = v15 < v17;
        if (v11)
        {
          v18 = v14 < v16;
        }

        if (!v18)
        {
          return 1;
        }

        a1[3] = v14;
        *(a2 - 1) = v16;
        v20 = a1[2];
        v19 = a1[3];
        v21 = *(v13 + v19);
        v22 = *(v13 + v20);
        v11 = v21 == v22;
        v23 = v21 < v22;
        if (v11)
        {
          v23 = v19 < v20;
        }

        if (!v23)
        {
          return 1;
        }

        a1[2] = v19;
        a1[3] = v20;
        v24 = *(v13 + v19);
        v25 = a1[1];
        v26 = *(v13 + v25);
        v11 = v24 == v26;
        v27 = v24 < v26;
        if (v11)
        {
          v27 = v19 < v25;
        }

        if (!v27)
        {
          return 1;
        }

        a1[1] = v19;
        a1[2] = v25;
        v28 = *(v13 + v19);
        v29 = *a1;
        v30 = *(v13 + v29);
        v11 = v28 == v30;
        v31 = v28 < v30;
        if (v11)
        {
          v31 = v19 < v29;
        }

        if (!v31)
        {
          return 1;
        }

        *a1 = v19;
        break;
      default:
        goto LABEL_31;
    }

    a1[1] = v29;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *(*a3 + v7);
    v9 = *a1;
    v10 = *(*a3 + v9);
    v11 = v8 == v10;
    v12 = v8 < v10;
    if (v11)
    {
      v12 = v7 < v9;
    }

    if (v12)
    {
      *a1 = v7;
      *(a2 - 1) = v9;
    }

    return 1;
  }

LABEL_31:
  v42 = a1 + 2;
  v43 = a1[2];
  v44 = a1[1];
  v45 = *a3;
  v46 = *(*a3 + v44);
  v47 = *a1;
  v48 = *(*a3 + *a1);
  v11 = v46 == v48;
  v49 = v46 < v48;
  v50 = *(*a3 + v43);
  if (v11)
  {
    v49 = v44 < *a1;
  }

  v51 = v43 < v44;
  v11 = v50 == v46;
  v52 = v50 < v46;
  if (!v11)
  {
    v51 = v52;
  }

  if (v49)
  {
    v53 = a1;
    v54 = a1 + 2;
    if (!v51)
    {
      *a1 = v44;
      a1[1] = v47;
      v55 = *(v45 + v43);
      v56 = *(v45 + v47);
      v11 = v55 == v56;
      v57 = v55 < v56;
      if (v11)
      {
        v57 = v43 < v47;
      }

      v53 = a1 + 1;
      v54 = a1 + 2;
      if (!v57)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    *v53 = v43;
    *v54 = v47;
    goto LABEL_53;
  }

  if (v51)
  {
    a1[1] = v43;
    *v42 = v44;
    v62 = *(v45 + v43);
    v63 = *(v45 + v47);
    v11 = v62 == v63;
    v64 = v62 < v63;
    if (v11)
    {
      v64 = v43 < v47;
    }

    v53 = a1;
    v54 = a1 + 1;
    if (v64)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v65 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v66 = 0;
  for (i = 12; ; i += 4)
  {
    v68 = *v65;
    v69 = *(v45 + *v65);
    v70 = *v42;
    v71 = *(v45 + v70);
    v11 = v69 == v71;
    v72 = v69 < v71;
    if (v11)
    {
      v72 = *v65 < v70;
    }

    if (v72)
    {
      v73 = i;
      while (1)
      {
        *(a1 + v73) = v70;
        v74 = v73 - 4;
        if (v73 == 4)
        {
          break;
        }

        v75 = a1 + v73;
        v76 = *(v45 + v68);
        v70 = *(v75 - 2);
        v77 = *(v45 + v70);
        v11 = v76 == v77;
        v78 = v76 < v77;
        if (v11)
        {
          v79 = v68 < v70;
        }

        else
        {
          v79 = v78;
        }

        v73 = v74;
        if (!v79)
        {
          v80 = (a1 + v74);
          goto LABEL_66;
        }
      }

      v80 = a1;
LABEL_66:
      *v80 = v68;
      if (++v66 == 8)
      {
        break;
      }
    }

    v42 = v65++;
    if (v65 == a2)
    {
      return 1;
    }
  }

  return v65 + 1 == a2;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v170 = *(a2 - 1);
      v171 = *(*a3 + 2 * v170);
      v172 = *v10;
      v173 = *(*a3 + 2 * v172);
      v174 = v171 == v173;
      v175 = v171 < v173;
      if (v174)
      {
        v175 = v170 < v172;
      }

      if (v175)
      {
        *v10 = v170;
LABEL_287:
        *(a2 - 1) = v172;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v185 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v186 = *a3;
            v187 = 4;
            v188 = v10;
            do
            {
              v190 = *v188;
              v189 = v188[1];
              v188 = v185;
              v191 = *(v186 + 2 * v189);
              v192 = *(v186 + 2 * v190);
              v174 = v191 == v192;
              v193 = v191 < v192;
              if (v174)
              {
                v193 = v189 < v190;
              }

              if (v193)
              {
                v194 = v187;
                while (1)
                {
                  *(v10 + v194) = v190;
                  v195 = v194 - 4;
                  if (v194 == 4)
                  {
                    break;
                  }

                  v190 = *(v10 + v194 - 8);
                  v196 = *(v186 + 2 * v190);
                  v197 = v189 < v190;
                  v174 = v191 == v196;
                  v198 = v191 < v196;
                  if (!v174)
                  {
                    v197 = v198;
                  }

                  v194 = v195;
                  if (!v197)
                  {
                    v199 = (v10 + v195);
                    goto LABEL_211;
                  }
                }

                v199 = v10;
LABEL_211:
                *v199 = v189;
              }

              v185 = v188 + 1;
              v187 += 4;
            }

            while (v188 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v252 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v253 = *a3;
          do
          {
            v255 = *v9;
            v254 = v9[1];
            v9 = v252;
            v256 = *(v253 + 2 * v254);
            v257 = *(v253 + 2 * v255);
            v174 = v256 == v257;
            v258 = v256 < v257;
            if (v174)
            {
              v258 = v254 < v255;
            }

            if (v258)
            {
              v259 = v9;
              do
              {
                *v259 = v255;
                v255 = *(v259 - 2);
                v260 = *(v253 + 2 * v255);
                v174 = v256 == v260;
                v261 = v256 < v260;
                if (v174)
                {
                  v261 = v254 < v255;
                }

                --v259;
              }

              while (v261);
              *v259 = v254;
            }

            v252 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v200 = (v11 - 2) >> 1;
        v201 = *a3;
        v202 = v200;
        do
        {
          v203 = v202;
          if (v200 >= v202)
          {
            v204 = (2 * v202) | 1;
            v205 = &v10[v204];
            if (2 * v203 + 2 >= v11)
            {
              LODWORD(v208) = *v205;
            }

            else
            {
              v206 = *v205;
              v207 = *(v201 + 2 * v206);
              v208 = v205[1];
              v209 = *(v201 + 2 * v208);
              v174 = v207 == v209;
              v210 = v207 < v209;
              if (v174)
              {
                v210 = v206 < v208;
              }

              if (v210)
              {
                ++v205;
                v204 = 2 * v203 + 2;
              }

              else
              {
                LODWORD(v208) = *v205;
              }
            }

            v211 = &v10[v203];
            v212 = *(v201 + 2 * v208);
            v213 = *v211;
            v214 = *(v201 + 2 * v213);
            v174 = v212 == v214;
            LODWORD(result) = v212 < v214;
            if (v174)
            {
              result = v208 < v213;
            }

            else
            {
              result = result;
            }

            if ((result & 1) == 0)
            {
              do
              {
                *v211 = v208;
                v211 = v205;
                if (v200 < v204)
                {
                  break;
                }

                v215 = (2 * v204) | 1;
                v205 = &v10[v215];
                v204 = 2 * v204 + 2;
                if (v204 >= v11)
                {
                  LODWORD(v208) = *v205;
                  v204 = v215;
                }

                else
                {
                  v208 = *v205;
                  v216 = *(v201 + 2 * v208);
                  v217 = v205[1];
                  v218 = *(v201 + 2 * v217);
                  v174 = v216 == v218;
                  v219 = v216 < v218;
                  if (v174)
                  {
                    v219 = v208 < v217;
                  }

                  if (v219)
                  {
                    LODWORD(v208) = v205[1];
                    ++v205;
                  }

                  else
                  {
                    v204 = v215;
                  }
                }

                v220 = *(v201 + 2 * v208);
                v174 = v220 == v214;
                LODWORD(result) = v220 < v214;
                result = v174 ? v208 < v213 : result;
              }

              while (result != 1);
              *v211 = v213;
            }
          }

          v202 = v203 - 1;
        }

        while (v203);
        do
        {
          v221 = 0;
          v222 = *v10;
          v223 = *a3;
          v224 = v10;
          do
          {
            v225 = &v224[v221];
            v226 = v225 + 1;
            v227 = (2 * v221) | 1;
            v221 = 2 * v221 + 2;
            if (v221 >= v11)
            {
              v229 = *v226;
              v221 = v227;
            }

            else
            {
              v230 = v225[2];
              v228 = v225 + 2;
              v229 = v230;
              result = *(v228 - 1);
              v231 = *(v223 + 2 * result);
              v232 = *(v223 + 2 * v230);
              v233 = result < v230;
              v174 = v231 == v232;
              v234 = v231 < v232;
              if (v174)
              {
                v234 = v233;
              }

              if (v234)
              {
                v226 = v228;
              }

              else
              {
                v229 = *(v228 - 1);
                v221 = v227;
              }
            }

            *v224 = v229;
            v224 = v226;
          }

          while (v221 <= ((v11 - 2) >> 1));
          if (v226 == --a2)
          {
            *v226 = v222;
          }

          else
          {
            *v226 = *a2;
            *a2 = v222;
            v235 = (v226 - v10 + 4) >> 2;
            v236 = v235 < 2;
            v237 = v235 - 2;
            if (!v236)
            {
              v238 = v237 >> 1;
              v239 = &v10[v238];
              v240 = *v239;
              v241 = *(v223 + 2 * v240);
              v242 = *v226;
              v243 = *(v223 + 2 * v242);
              v174 = v241 == v243;
              v244 = v241 < v243;
              if (v174)
              {
                v244 = v240 < v242;
              }

              if (v244)
              {
                do
                {
                  *v226 = v240;
                  v226 = v239;
                  if (!v238)
                  {
                    break;
                  }

                  v238 = (v238 - 1) >> 1;
                  v239 = &v10[v238];
                  v240 = *v239;
                  v245 = *(v223 + 2 * v240);
                  v174 = v245 == v243;
                  v246 = v245 < v243;
                  if (v174)
                  {
                    v246 = v240 < v242;
                  }
                }

                while (v246);
                *v226 = v242;
              }
            }
          }

          v236 = v11-- <= 2;
        }

        while (!v236);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 2 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 2 * v17);
      v19 = *v10;
      v20 = *(v14 + 2 * v19);
      v21 = v17 < v19;
      if (v18 != v20)
      {
        v21 = v18 < v20;
      }

      v174 = v16 == v18;
      v22 = v16 < v18;
      if (v174)
      {
        v22 = v15 < v17;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + 2 * v39);
        v174 = v40 == v20;
        v41 = v40 < v20;
        if (v174)
        {
          v41 = v39 < v19;
        }

        if (v41)
        {
          *v12 = v39;
LABEL_41:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + 2 * v29);
        v31 = *v10;
        v32 = *(v14 + 2 * v31);
        v174 = v30 == v32;
        v33 = v30 < v32;
        if (v174)
        {
          v33 = v29 < v31;
        }

        if (v33)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v42 = v12 - 1;
      v43 = *(v12 - 1);
      v44 = *(v14 + 2 * v43);
      v45 = v10[1];
      v46 = *(v14 + 2 * v45);
      v47 = v43 < v45;
      v48 = *(a2 - 2);
      v49 = *(v14 + 2 * v48);
      if (v44 != v46)
      {
        v47 = v44 < v46;
      }

      v174 = v49 == v44;
      v50 = v49 < v44;
      if (v174)
      {
        v50 = v48 < v43;
      }

      if (v47)
      {
        if (v50)
        {
          v10[1] = v48;
          goto LABEL_63;
        }

        v10[1] = v43;
        *v42 = v45;
        v59 = *(a2 - 2);
        v60 = *(v14 + 2 * v59);
        v174 = v60 == v46;
        v61 = v60 < v46;
        if (v174)
        {
          v61 = v59 < v45;
        }

        if (v61)
        {
          *v42 = v59;
LABEL_63:
          *(a2 - 2) = v45;
        }
      }

      else if (v50)
      {
        *v42 = v48;
        *(a2 - 2) = v43;
        v51 = *v42;
        v52 = *(v14 + 2 * v51);
        v53 = v10[1];
        v54 = *(v14 + 2 * v53);
        v174 = v52 == v54;
        v55 = v52 < v54;
        if (v174)
        {
          v55 = v51 < v53;
        }

        if (v55)
        {
          v10[1] = v51;
          *v42 = v53;
        }
      }

      v64 = v12[1];
      v62 = v12 + 1;
      v63 = v64;
      v65 = *(v14 + 2 * v64);
      v66 = v10[2];
      v67 = *(v14 + 2 * v66);
      v68 = v64 < v66;
      v69 = *(a2 - 3);
      v70 = *(v14 + 2 * v69);
      if (v65 != v67)
      {
        v68 = v65 < v67;
      }

      v174 = v70 == v65;
      v71 = v70 < v65;
      if (v174)
      {
        v71 = v69 < v63;
      }

      if (v68)
      {
        if (v71)
        {
          v10[2] = v69;
          goto LABEL_80;
        }

        v10[2] = v63;
        *v62 = v66;
        v77 = *(a2 - 3);
        v78 = *(v14 + 2 * v77);
        v174 = v78 == v67;
        v79 = v78 < v67;
        if (v174)
        {
          v79 = v77 < v66;
        }

        if (v79)
        {
          *v62 = v77;
LABEL_80:
          *(a2 - 3) = v66;
        }
      }

      else if (v71)
      {
        *v62 = v69;
        *(a2 - 3) = v63;
        v72 = *v62;
        v73 = *(v14 + 2 * v72);
        v74 = v10[2];
        v75 = *(v14 + 2 * v74);
        v174 = v73 == v75;
        v76 = v73 < v75;
        if (v174)
        {
          v76 = v72 < v74;
        }

        if (v76)
        {
          v10[2] = v72;
          *v62 = v74;
        }
      }

      v80 = *v13;
      v81 = *(v14 + 2 * v80);
      v82 = *v42;
      v83 = *(v14 + 2 * v82);
      v84 = *v62;
      v85 = *(v14 + 2 * v84);
      if (v81 == v83)
      {
        result = v80 < v82;
      }

      else
      {
        result = v81 < v83;
      }

      v174 = v85 == v81;
      v86 = v85 < v81;
      if (v174)
      {
        v86 = v84 < v80;
      }

      if (result)
      {
        if (!v86)
        {
          *v42 = v80;
          *v13 = v82;
          v87 = v85 == v83 ? v84 < v82 : v85 < v83;
          v42 = v13;
          LODWORD(v80) = v84;
          if (!v87)
          {
            LODWORD(v80) = v82;
LABEL_99:
            v89 = *v10;
            *v10 = v80;
            *v13 = v89;
            goto LABEL_100;
          }
        }
      }

      else
      {
        if (!v86)
        {
          goto LABEL_99;
        }

        *v13 = v84;
        *v62 = v80;
        if (v85 == v83)
        {
          v88 = v84 < v82;
        }

        else
        {
          v88 = v85 < v83;
        }

        v62 = v13;
        LODWORD(v80) = v82;
        if (!v88)
        {
          LODWORD(v80) = v84;
          goto LABEL_99;
        }
      }

      *v42 = v84;
      *v62 = v82;
      goto LABEL_99;
    }

    v23 = *v10;
    v24 = *(v14 + 2 * v23);
    v25 = *v13;
    v26 = *(v14 + 2 * v25);
    v27 = v23 < v25;
    if (v24 != v26)
    {
      v27 = v24 < v26;
    }

    v174 = v16 == v24;
    v28 = v16 < v24;
    if (v174)
    {
      v28 = v15 < v23;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v25;
        goto LABEL_100;
      }

      *v13 = v23;
      *v10 = v25;
      v56 = *(a2 - 1);
      v57 = *(v14 + 2 * v56);
      v174 = v57 == v26;
      v58 = v57 < v26;
      if (v174)
      {
        v58 = v56 < v25;
      }

      if (v58)
      {
        *v10 = v56;
        goto LABEL_58;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + 2 * v34);
      v36 = *v13;
      v37 = *(v14 + 2 * v36);
      v174 = v35 == v37;
      v38 = v35 < v37;
      if (v174)
      {
        v38 = v34 < v36;
      }

      if (v38)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_100:
    --a4;
    v90 = *v10;
    if (a5)
    {
      v91 = *(v14 + 2 * v90);
      goto LABEL_105;
    }

    v92 = *(v10 - 1);
    v93 = *(v14 + 2 * v92);
    v91 = *(v14 + 2 * v90);
    v94 = v92 < v90;
    v174 = v93 == v91;
    v95 = v93 < v91;
    if (!v174)
    {
      v94 = v95;
    }

    if (v94)
    {
LABEL_105:
      v96 = 0;
      do
      {
        v97 = v10[v96 + 1];
        v98 = *(v14 + 2 * v97);
        v174 = v98 == v91;
        v99 = v98 < v91;
        if (v174)
        {
          v99 = v97 < v90;
        }

        ++v96;
      }

      while (v99);
      v100 = &v10[v96];
      v101 = a2;
      if (v96 == 1)
      {
        v101 = a2;
        do
        {
          if (v100 >= v101)
          {
            break;
          }

          v106 = *--v101;
          v107 = *(v14 + 2 * v106);
          v108 = v106 < v90;
          v174 = v107 == v91;
          v109 = v107 < v91;
          if (!v174)
          {
            v108 = v109;
          }
        }

        while (!v108);
      }

      else
      {
        do
        {
          v102 = *--v101;
          v103 = *(v14 + 2 * v102);
          v104 = v102 < v90;
          v174 = v103 == v91;
          v105 = v103 < v91;
          if (!v174)
          {
            v104 = v105;
          }
        }

        while (!v104);
      }

      if (v100 >= v101)
      {
        v122 = v100 - 1;
      }

      else
      {
        v110 = *v101;
        v111 = v97;
        v112 = v100;
        v113 = v101;
        do
        {
          *v112 = v110;
          *v113 = v111;
          do
          {
            v114 = v112[1];
            ++v112;
            v111 = v114;
            v115 = *(v14 + 2 * v114);
            v116 = v114 < v90;
            v174 = v115 == v91;
            v117 = v115 < v91;
            if (v174)
            {
              v117 = v116;
            }
          }

          while (v117);
          do
          {
            v118 = *--v113;
            v110 = v118;
            v119 = *(v14 + 2 * v118);
            v120 = v118 < v90;
            v174 = v119 == v91;
            v121 = v119 < v91;
            if (v174)
            {
              v121 = v120;
            }
          }

          while (!v121);
        }

        while (v112 < v113);
        v122 = v112 - 1;
      }

      if (v122 != v10)
      {
        *v10 = *v122;
      }

      *v122 = v90;
      if (v100 < v101)
      {
        goto LABEL_136;
      }

      v10 = v122 + 1;
      if (result)
      {
        a2 = v122;
        if (!v123)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v123)
      {
LABEL_136:
        a5 = 0;
        v10 = v122 + 1;
      }
    }

    else
    {
      v124 = *(a2 - 1);
      v125 = *(v14 + 2 * v124);
      v126 = v90 < v124;
      v174 = v91 == v125;
      v127 = v91 < v125;
      if (!v174)
      {
        v126 = v127;
      }

      if (v126)
      {
        do
        {
          v128 = v10[1];
          ++v10;
          v129 = *(v14 + 2 * v128);
          v130 = v90 < v128;
          v174 = v91 == v129;
          v131 = v91 < v129;
          if (!v174)
          {
            v130 = v131;
          }
        }

        while (!v130);
      }

      else
      {
        v132 = v10 + 1;
        do
        {
          v10 = v132;
          if (v132 >= a2)
          {
            break;
          }

          ++v132;
          v133 = *v10;
          v134 = *(v14 + 2 * v133);
          v135 = v90 < v133;
          v174 = v91 == v134;
          v136 = v91 < v134;
          if (!v174)
          {
            v135 = v136;
          }
        }

        while (!v135);
      }

      v137 = a2;
      if (v10 < a2)
      {
        v137 = a2;
        do
        {
          v138 = *--v137;
          v139 = *(v14 + 2 * v138);
          v140 = v90 < v138;
          v174 = v91 == v139;
          v141 = v91 < v139;
          if (!v174)
          {
            v140 = v141;
          }
        }

        while (v140);
      }

      if (v10 < v137)
      {
        v142 = *v10;
        v143 = *v137;
        do
        {
          *v10 = v143;
          *v137 = v142;
          do
          {
            v144 = v10[1];
            ++v10;
            v142 = v144;
            v145 = *(v14 + 2 * v144);
            v146 = v90 < v144;
            v174 = v91 == v145;
            v147 = v91 < v145;
            if (v174)
            {
              v147 = v146;
            }
          }

          while (!v147);
          do
          {
            v148 = *--v137;
            v143 = v148;
            v149 = *(v14 + 2 * v148);
            v150 = v90 < v148;
            v174 = v91 == v149;
            v151 = v91 < v149;
            if (v174)
            {
              v151 = v150;
            }
          }

          while (v151);
        }

        while (v10 < v137);
      }

      v152 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v152;
      }

      a5 = 0;
      *v152 = v90;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v184 = *a3;
    }

    if (v11 == 5)
    {
      v153 = *a3;
      v154 = *(a2 - 1);
      v155 = *(*a3 + 2 * v154);
      v156 = v10[3];
      v157 = *(*a3 + 2 * v156);
      v174 = v155 == v157;
      v158 = v155 < v157;
      if (v174)
      {
        v158 = v154 < v156;
      }

      if (v158)
      {
        v10[3] = v154;
        *(a2 - 1) = v156;
        v160 = v10[2];
        v159 = v10[3];
        v161 = *(v153 + 2 * v159);
        v162 = *(v153 + 2 * v160);
        v174 = v161 == v162;
        v163 = v161 < v162;
        if (v174)
        {
          v163 = v159 < v160;
        }

        if (v163)
        {
          v10[2] = v159;
          v10[3] = v160;
          v164 = v10[1];
          v165 = *(v153 + 2 * v164);
          v174 = v161 == v165;
          v166 = v161 < v165;
          if (v174)
          {
            v166 = v159 < v164;
          }

          if (v166)
          {
            v10[1] = v159;
            v10[2] = v164;
            v167 = *v10;
            v168 = *(v153 + 2 * v167);
            v174 = v161 == v168;
            v169 = v161 < v168;
            if (v174)
            {
              v169 = v159 < v167;
            }

            if (v169)
            {
              *v10 = v159;
              v10[1] = v167;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v176 = *a3;
  v172 = *v10;
  v177 = v10[1];
  v178 = *(*a3 + 2 * v177);
  v179 = *(*a3 + 2 * v172);
  v180 = v177 < v172;
  v181 = *(a2 - 1);
  v182 = *(*a3 + 2 * v181);
  if (v178 != v179)
  {
    v180 = v178 < v179;
  }

  v174 = v182 == v178;
  v183 = v182 < v178;
  if (v174)
  {
    v183 = v181 < v177;
  }

  if (v180)
  {
    if (v183)
    {
      *v10 = v181;
      goto LABEL_287;
    }

    *v10 = v177;
    v10[1] = v172;
    v262 = *(a2 - 1);
    v263 = *(v176 + 2 * v262);
    v174 = v263 == v179;
    v264 = v263 < v179;
    if (v174)
    {
      v264 = v262 < v172;
    }

    if (v264)
    {
      v10[1] = v262;
      goto LABEL_287;
    }
  }

  else if (v183)
  {
    v10[1] = v181;
    *(a2 - 1) = v177;
    v248 = *v10;
    v247 = v10[1];
    v249 = *(v176 + 2 * v247);
    v250 = *(v176 + 2 * v248);
    v174 = v249 == v250;
    v251 = v249 < v250;
    if (v174)
    {
      v251 = v247 < v248;
    }

    if (v251)
    {
      *v10 = v247;
      v10[1] = v248;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + 2 * v5);
  v7 = *result;
  v8 = *(a5 + 2 * v7);
  v9 = v5 < v7;
  v10 = *a3;
  v11 = *(a5 + 2 * *a3);
  if (v6 != v8)
  {
    v9 = v6 < v8;
  }

  v12 = v11 == v6;
  v13 = v11 < v6;
  if (v12)
  {
    v13 = v10 < v5;
  }

  if (v9)
  {
    if (v13)
    {
      *result = v10;
LABEL_17:
      *a3 = v7;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v7;
    v10 = *a3;
    v19 = *(a5 + 2 * *a3);
    v12 = v19 == v8;
    v20 = v19 < v8;
    if (v12)
    {
      v20 = *a3 < v7;
    }

    if (v20)
    {
      *a2 = v10;
      goto LABEL_17;
    }

    v7 = *a3;
  }

  else if (v13)
  {
    *a2 = v10;
    *a3 = v5;
    v14 = *a2;
    v15 = *(a5 + 2 * v14);
    v16 = *result;
    v17 = *(a5 + 2 * v16);
    v12 = v15 == v17;
    v18 = v15 < v17;
    if (v12)
    {
      v18 = v14 < v16;
    }

    if (v18)
    {
      *result = v14;
      *a2 = v16;
      v7 = *a3;
LABEL_18:
      v10 = v7;
      goto LABEL_22;
    }

    v7 = v5;
    v10 = v5;
  }

  else
  {
    v7 = *a3;
  }

LABEL_22:
  v21 = *a4;
  v22 = *(a5 + 2 * v21);
  v23 = *(a5 + 2 * v7);
  v12 = v22 == v23;
  v24 = v22 < v23;
  if (v12)
  {
    v24 = v21 < v10;
  }

  if (v24)
  {
    *a3 = v21;
    *a4 = v10;
    v25 = *a3;
    v26 = *(a5 + 2 * v25);
    v27 = *a2;
    v28 = *(a5 + 2 * v27);
    v12 = v26 == v28;
    v29 = v26 < v28;
    if (v12)
    {
      v29 = v25 < v27;
    }

    if (v29)
    {
      *a2 = v25;
      *a3 = v27;
      v30 = *a2;
      v31 = *(a5 + 2 * v30);
      v32 = *result;
      v33 = *(a5 + 2 * v32);
      v12 = v31 == v33;
      v34 = v31 < v33;
      if (v12)
      {
        v34 = v30 < v32;
      }

      if (v34)
      {
        *result = v30;
        *a2 = v32;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v30 = *a3;
      v9 = *a1;
      v31 = a1[1];
      v32 = *(*a3 + 2 * v31);
      v33 = *(*a3 + 2 * v9);
      v34 = v31 < v9;
      v35 = *(a2 - 1);
      v36 = *(*a3 + 2 * v35);
      if (v32 != v33)
      {
        v34 = v32 < v33;
      }

      v11 = v36 == v32;
      v37 = v36 < v32;
      if (v11)
      {
        v37 = v35 < v31;
      }

      if (!v34)
      {
        if (v37)
        {
          a1[1] = v35;
          *(a2 - 1) = v31;
          v55 = *a1;
          v54 = a1[1];
          v56 = *(v30 + 2 * v54);
          v57 = *(v30 + 2 * v55);
          v11 = v56 == v57;
          v58 = v56 < v57;
          if (v11)
          {
            v58 = v54 < v55;
          }

          if (v58)
          {
            *a1 = v54;
            a1[1] = v55;
          }
        }

        return 1;
      }

      if (v37)
      {
        *a1 = v35;
      }

      else
      {
        *a1 = v31;
        a1[1] = v9;
        v75 = *(a2 - 1);
        v76 = *(v30 + 2 * v75);
        v11 = v76 == v33;
        v77 = v76 < v33;
        if (v11)
        {
          v77 = v75 < v9;
        }

        if (!v77)
        {
          return 1;
        }

        a1[1] = v75;
      }

LABEL_71:
      *(a2 - 1) = v9;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v13 = *a3;
        v14 = *(a2 - 1);
        v15 = *(*a3 + 2 * v14);
        v16 = a1[3];
        v17 = *(*a3 + 2 * v16);
        v11 = v15 == v17;
        v18 = v15 < v17;
        if (v11)
        {
          v18 = v14 < v16;
        }

        if (v18)
        {
          a1[3] = v14;
          *(a2 - 1) = v16;
          v20 = a1[2];
          v19 = a1[3];
          v21 = *(v13 + 2 * v19);
          v22 = *(v13 + 2 * v20);
          v11 = v21 == v22;
          v23 = v21 < v22;
          if (v11)
          {
            v23 = v19 < v20;
          }

          if (v23)
          {
            a1[2] = v19;
            a1[3] = v20;
            v24 = a1[1];
            v25 = *(v13 + 2 * v24);
            v11 = v21 == v25;
            v26 = v21 < v25;
            if (v11)
            {
              v26 = v19 < v24;
            }

            if (v26)
            {
              a1[1] = v19;
              a1[2] = v24;
              v27 = *a1;
              v28 = *(v13 + 2 * v27);
              v11 = v21 == v28;
              v29 = v21 < v28;
              if (v11)
              {
                v29 = v19 < v27;
              }

              if (v29)
              {
                *a1 = v19;
                a1[1] = v27;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_31;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *(*a3 + 2 * v7);
    v9 = *a1;
    v10 = *(*a3 + 2 * v9);
    v11 = v8 == v10;
    v12 = v8 < v10;
    if (v11)
    {
      v12 = v7 < v9;
    }

    if (!v12)
    {
      return 1;
    }

    *a1 = v7;
    goto LABEL_71;
  }

LABEL_31:
  v38 = a1 + 2;
  v39 = a1[2];
  v40 = a1 + 1;
  v41 = a1[1];
  v42 = *a3;
  v43 = *(*a3 + 2 * v41);
  v44 = *a1;
  v45 = *(*a3 + 2 * v44);
  v46 = v41 < v44;
  v47 = *(*a3 + 2 * v39);
  if (v43 != v45)
  {
    v46 = v43 < v45;
  }

  v48 = v39 < v41;
  v11 = v47 == v43;
  v49 = v47 < v43;
  if (!v11)
  {
    v48 = v49;
  }

  if (v46)
  {
    v50 = a1;
    v51 = a1 + 2;
    if (!v48)
    {
      *a1 = v41;
      a1[1] = v44;
      v52 = v39 < v44;
      v11 = v47 == v45;
      v53 = v47 < v45;
      if (!v11)
      {
        v52 = v53;
      }

      v50 = a1 + 1;
      v51 = a1 + 2;
      if (!v52)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    *v50 = v39;
    *v51 = v44;
    goto LABEL_52;
  }

  if (v48)
  {
    *v40 = v39;
    *v38 = v41;
    v59 = v39 < v44;
    v11 = v47 == v45;
    v60 = v47 < v45;
    if (!v11)
    {
      v59 = v60;
    }

    v50 = a1;
    v51 = a1 + 1;
    if (v59)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  v61 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v62 = 0;
  for (i = 12; ; i += 4)
  {
    v64 = *v61;
    v65 = *(v42 + 2 * v64);
    v66 = *v38;
    v67 = *(v42 + 2 * v66);
    v11 = v65 == v67;
    v68 = v65 < v67;
    if (v11)
    {
      v68 = v64 < v66;
    }

    if (v68)
    {
      v69 = i;
      while (1)
      {
        *(a1 + v69) = v66;
        v70 = v69 - 4;
        if (v69 == 4)
        {
          break;
        }

        v66 = *(a1 + v69 - 8);
        v71 = *(v42 + 2 * v66);
        v72 = v64 < v66;
        v11 = v65 == v71;
        v73 = v65 < v71;
        if (!v11)
        {
          v72 = v73;
        }

        v69 = v70;
        if (!v72)
        {
          v74 = (a1 + v70);
          goto LABEL_64;
        }
      }

      v74 = a1;
LABEL_64:
      *v74 = v64;
      if (++v62 == 8)
      {
        break;
      }
    }

    v38 = v61++;
    if (v61 == a2)
    {
      return 1;
    }
  }

  return v61 + 1 == a2;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v187 = *(a2 - 1);
        v188 = *(*a3 + 4 * v187);
        v189 = *v10;
        v190 = *(*a3 + 4 * v189);
        v191 = v188 == v190;
        v192 = v188 < v190;
        if (v191)
        {
          v192 = v187 < v189;
        }

        if (v192)
        {
          *v10 = v187;
          *(a2 - 1) = v189;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v203 = *a3;
    }

    if (v11 == 5)
    {
      v168 = *a3;
      v169 = *(a2 - 1);
      v170 = *(*a3 + 4 * v169);
      v171 = v10[3];
      v172 = *(*a3 + 4 * v171);
      v191 = v170 == v172;
      v173 = v170 < v172;
      if (v191)
      {
        v173 = v169 < v171;
      }

      if (!v173)
      {
        return result;
      }

      v10[3] = v169;
      *(a2 - 1) = v171;
      v175 = v10[2];
      v174 = v10[3];
      v176 = *(v168 + 4 * v174);
      v177 = *(v168 + 4 * v175);
      v191 = v176 == v177;
      v178 = v176 < v177;
      if (v191)
      {
        v178 = v174 < v175;
      }

      if (!v178)
      {
        return result;
      }

      v10[2] = v174;
      v10[3] = v175;
      v179 = *(v168 + 4 * v174);
      v180 = v10[1];
      v181 = *(v168 + 4 * v180);
      v191 = v179 == v181;
      v182 = v179 < v181;
      if (v191)
      {
        v182 = v174 < v180;
      }

      if (!v182)
      {
        return result;
      }

      v10[1] = v174;
      v10[2] = v180;
      v183 = *(v168 + 4 * v174);
      v184 = *v10;
      v185 = *(v168 + 4 * v184);
      v191 = v183 == v185;
      v186 = v183 < v185;
      if (v191)
      {
        v186 = v174 < v184;
      }

      if (!v186)
      {
        return result;
      }

      *v10 = v174;
LABEL_269:
      v10[1] = v184;
      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v204 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v205 = *a3;
            v206 = 4;
            v207 = v10;
            do
            {
              v209 = *v207;
              v208 = v207[1];
              v207 = v204;
              v210 = *(v205 + 4 * v208);
              v211 = *(v205 + 4 * v209);
              LODWORD(v204) = v209;
              v212 = v208 < v209;
              v191 = v210 == v211;
              v213 = v210 < v211;
              if (!v191)
              {
                v212 = v213;
              }

              if (v212)
              {
                v214 = v206;
                while (1)
                {
                  *(v10 + v214) = v204;
                  v215 = v214 - 4;
                  if (v214 == 4)
                  {
                    break;
                  }

                  v216 = v10 + v214;
                  v217 = *(v205 + 4 * v208);
                  v204 = *(v216 - 2);
                  v218 = *(v205 + 4 * v204);
                  v191 = v217 == v218;
                  v219 = v217 < v218;
                  if (v191)
                  {
                    v220 = v208 < v204;
                  }

                  else
                  {
                    v220 = v219;
                  }

                  v214 = v215;
                  if (!v220)
                  {
                    v221 = (v10 + v215);
                    goto LABEL_209;
                  }
                }

                v221 = v10;
LABEL_209:
                *v221 = v208;
              }

              v204 = v207 + 1;
              v206 += 4;
            }

            while (v207 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v277 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v278 = *a3;
          do
          {
            v280 = *v9;
            v279 = v9[1];
            v9 = v277;
            v281 = *(v278 + 4 * v279);
            v282 = *(v278 + 4 * v280);
            LODWORD(v277) = v280;
            v283 = v279 < v280;
            v191 = v281 == v282;
            v284 = v281 < v282;
            if (!v191)
            {
              v283 = v284;
            }

            if (v283)
            {
              v285 = v9;
              do
              {
                *v285 = v277;
                v286 = *(v278 + 4 * v279);
                v277 = *(v285 - 2);
                v287 = *(v278 + 4 * v277);
                v191 = v286 == v287;
                v288 = v286 < v287;
                if (v191)
                {
                  v288 = v279 < v277;
                }

                --v285;
              }

              while (v288);
              *v285 = v279;
            }

            v277 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v222 = (v11 - 2) >> 1;
        v223 = *a3;
        v224 = v222;
        do
        {
          v225 = v224;
          if (v222 >= v224)
          {
            v226 = (2 * v224) | 1;
            v227 = &v10[v226];
            if (2 * v225 + 2 >= v11)
            {
              LODWORD(v234) = *v227;
            }

            else
            {
              v228 = *v227;
              v229 = *(v223 + 4 * v228);
              v230 = v227[1];
              v231 = *(v223 + 4 * v230);
              v191 = v229 == v231;
              v232 = v229 < v231;
              if (v191)
              {
                v232 = v228 < v230;
              }

              v233 = !v232;
              if (v232)
              {
                LODWORD(v234) = v227[1];
              }

              else
              {
                LODWORD(v234) = *v227;
              }

              if (!v233)
              {
                ++v227;
                v226 = 2 * v225 + 2;
              }
            }

            v235 = &v10[v225];
            v236 = *(v223 + 4 * v234);
            v237 = *v235;
            result = *(v223 + 4 * *v235);
            v191 = v236 == result;
            v238 = v236 < result;
            if (v191)
            {
              v238 = v234 < *v235;
            }

            if (!v238)
            {
              do
              {
                *v235 = v234;
                v235 = v227;
                if (v222 < v226)
                {
                  break;
                }

                v239 = (2 * v226) | 1;
                v227 = &v10[v239];
                v226 = 2 * v226 + 2;
                if (v226 >= v11)
                {
                  LODWORD(v234) = *v227;
                  v226 = v239;
                }

                else
                {
                  v234 = *v227;
                  v240 = *(v223 + 4 * v234);
                  v241 = v227[1];
                  v242 = *(v223 + 4 * v241);
                  v191 = v240 == v242;
                  v243 = v240 < v242;
                  if (v191)
                  {
                    v243 = v234 < v241;
                  }

                  if (v243)
                  {
                    LODWORD(v234) = v227[1];
                    ++v227;
                  }

                  else
                  {
                    v226 = v239;
                  }
                }

                v244 = *(v223 + 4 * v234);
                result = *(v223 + 4 * v237);
                v191 = v244 == result;
                v245 = v244 < result;
                if (v191)
                {
                  v245 = v234 < v237;
                }
              }

              while (!v245);
              *v235 = v237;
            }
          }

          v224 = v225 - 1;
        }

        while (v225);
        do
        {
          v246 = 0;
          v247 = *v10;
          v248 = *a3;
          v249 = v10;
          do
          {
            v250 = &v249[v246];
            v251 = v250 + 1;
            v252 = (2 * v246) | 1;
            v246 = 2 * v246 + 2;
            if (v246 >= v11)
            {
              v254 = *v251;
              v246 = v252;
            }

            else
            {
              v255 = v250[2];
              v253 = v250 + 2;
              v254 = v255;
              result = *(v253 - 1);
              v256 = *(v248 + 4 * result);
              v257 = *(v248 + 4 * v255);
              v258 = result < v255;
              v191 = v256 == v257;
              v259 = v256 < v257;
              if (v191)
              {
                v259 = v258;
              }

              if (v259)
              {
                v251 = v253;
              }

              else
              {
                v254 = *(v253 - 1);
                v246 = v252;
              }
            }

            *v249 = v254;
            v249 = v251;
          }

          while (v246 <= ((v11 - 2) >> 1));
          if (v251 == --a2)
          {
            *v251 = v247;
          }

          else
          {
            *v251 = *a2;
            *a2 = v247;
            v260 = (v251 - v10 + 4) >> 2;
            v261 = v260 < 2;
            v262 = v260 - 2;
            if (!v261)
            {
              v263 = v262 >> 1;
              v264 = &v10[v263];
              v265 = *v264;
              v266 = *(v248 + 4 * v265);
              v267 = *v251;
              v268 = *(v248 + 4 * *v251);
              v191 = v266 == v268;
              v269 = v266 < v268;
              if (v191)
              {
                v269 = v265 < *v251;
              }

              if (v269)
              {
                do
                {
                  *v251 = v265;
                  v251 = v264;
                  if (!v263)
                  {
                    break;
                  }

                  v263 = (v263 - 1) >> 1;
                  v264 = &v10[v263];
                  v265 = *v264;
                  v270 = *(v248 + 4 * v265);
                  v271 = *(v248 + 4 * v267);
                  v191 = v270 == v271;
                  v272 = v270 < v271;
                  if (v191)
                  {
                    v272 = v265 < v267;
                  }
                }

                while (v272);
                *v251 = v267;
              }
            }
          }

          v261 = v11-- <= 2;
        }

        while (!v261);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 4 * v17);
      v19 = *v10;
      v20 = *(v14 + 4 * *v10);
      v191 = v18 == v20;
      v21 = v18 < v20;
      if (v191)
      {
        v21 = v17 < *v10;
      }

      v191 = v16 == v18;
      v22 = v16 < v18;
      if (v191)
      {
        v22 = v15 < v17;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + 4 * v39);
        v41 = *(v14 + 4 * v19);
        v191 = v40 == v41;
        v42 = v40 < v41;
        if (v191)
        {
          v42 = v39 < v19;
        }

        if (v42)
        {
          *v12 = v39;
LABEL_41:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + 4 * v29);
        v31 = *v10;
        v32 = *(v14 + 4 * v31);
        v191 = v30 == v32;
        v33 = v30 < v32;
        if (v191)
        {
          v33 = v29 < v31;
        }

        if (v33)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v43 = v12 - 1;
      v44 = *(v12 - 1);
      v45 = *(v14 + 4 * v44);
      v46 = v10[1];
      v47 = *(v14 + 4 * v46);
      v48 = v44 < v46;
      v191 = v45 == v47;
      v49 = v45 < v47;
      v50 = *(a2 - 2);
      v51 = *(v14 + 4 * v50);
      if (!v191)
      {
        v48 = v49;
      }

      v191 = v51 == v45;
      v52 = v51 < v45;
      if (v191)
      {
        v52 = v50 < v44;
      }

      if (v48)
      {
        if (v52)
        {
          v10[1] = v50;
          goto LABEL_63;
        }

        v10[1] = v44;
        *v43 = v46;
        v62 = *(a2 - 2);
        v63 = *(v14 + 4 * v62);
        v64 = *(v14 + 4 * v46);
        v191 = v63 == v64;
        v65 = v63 < v64;
        if (v191)
        {
          v65 = v62 < v46;
        }

        if (v65)
        {
          *v43 = v62;
LABEL_63:
          *(a2 - 2) = v46;
        }
      }

      else if (v52)
      {
        *v43 = v50;
        *(a2 - 2) = v44;
        v53 = *v43;
        v54 = *(v14 + 4 * v53);
        v55 = v10[1];
        v56 = *(v14 + 4 * v55);
        v191 = v54 == v56;
        v57 = v54 < v56;
        if (v191)
        {
          v57 = v53 < v55;
        }

        if (v57)
        {
          v10[1] = v53;
          *v43 = v55;
        }
      }

      v68 = v12[1];
      v66 = v12 + 1;
      v67 = v68;
      v69 = *(v14 + 4 * v68);
      v70 = v10[2];
      v71 = *(v14 + 4 * v70);
      v72 = v68 < v70;
      v191 = v69 == v71;
      v73 = v69 < v71;
      v74 = *(a2 - 3);
      v75 = *(v14 + 4 * v74);
      if (!v191)
      {
        v72 = v73;
      }

      v191 = v75 == v69;
      v76 = v75 < v69;
      if (v191)
      {
        v76 = v74 < v67;
      }

      if (v72)
      {
        if (v76)
        {
          v10[2] = v74;
          goto LABEL_80;
        }

        v10[2] = v67;
        *v66 = v70;
        v82 = *(a2 - 3);
        v83 = *(v14 + 4 * v82);
        v84 = *(v14 + 4 * v70);
        v191 = v83 == v84;
        v85 = v83 < v84;
        if (v191)
        {
          v85 = v82 < v70;
        }

        if (v85)
        {
          *v66 = v82;
LABEL_80:
          *(a2 - 3) = v70;
        }
      }

      else if (v76)
      {
        *v66 = v74;
        *(a2 - 3) = v67;
        v77 = *v66;
        v78 = *(v14 + 4 * v77);
        v79 = v10[2];
        v80 = *(v14 + 4 * v79);
        v191 = v78 == v80;
        v81 = v78 < v80;
        if (v191)
        {
          v81 = v77 < v79;
        }

        if (v81)
        {
          v10[2] = v77;
          *v66 = v79;
        }
      }

      v86 = *v13;
      v87 = *(v14 + 4 * v86);
      v88 = *v43;
      v89 = *(v14 + 4 * *v43);
      v90 = v86 < *v43;
      v191 = v87 == v89;
      v91 = v87 < v89;
      v92 = *v66;
      result = *(v14 + 4 * *v66);
      if (!v191)
      {
        v90 = v91;
      }

      v191 = result == v87;
      v93 = result < v87;
      if (v191)
      {
        v93 = v92 < v86;
      }

      if (v90)
      {
        if (!v93)
        {
          *v43 = v86;
          *v13 = v88;
          v94 = *(v14 + 4 * v92);
          v95 = *(v14 + 4 * v88);
          v96 = v92 < v88;
          v191 = v94 == v95;
          v97 = v94 < v95;
          if (!v191)
          {
            v96 = v97;
          }

          v43 = v13;
          LODWORD(v86) = v92;
          if (!v96)
          {
            LODWORD(v86) = v88;
LABEL_96:
            v102 = *v10;
            *v10 = v86;
            *v13 = v102;
            goto LABEL_97;
          }
        }
      }

      else
      {
        if (!v93)
        {
          goto LABEL_96;
        }

        *v13 = v92;
        *v66 = v86;
        v98 = *(v14 + 4 * v92);
        v99 = *(v14 + 4 * v88);
        v100 = v92 < v88;
        v191 = v98 == v99;
        v101 = v98 < v99;
        if (!v191)
        {
          v100 = v101;
        }

        v66 = v13;
        LODWORD(v86) = v88;
        if (!v100)
        {
          LODWORD(v86) = v92;
          goto LABEL_96;
        }
      }

      *v43 = v92;
      *v66 = v88;
      goto LABEL_96;
    }

    v23 = *v10;
    v24 = *(v14 + 4 * v23);
    v25 = *v13;
    v26 = *(v14 + 4 * *v13);
    v191 = v24 == v26;
    v27 = v24 < v26;
    if (v191)
    {
      v27 = v23 < *v13;
    }

    v191 = v16 == v24;
    v28 = v16 < v24;
    if (v191)
    {
      v28 = v15 < v23;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v25;
        goto LABEL_97;
      }

      *v13 = v23;
      *v10 = v25;
      v58 = *(a2 - 1);
      v59 = *(v14 + 4 * v58);
      v60 = *(v14 + 4 * v25);
      v191 = v59 == v60;
      v61 = v59 < v60;
      if (v191)
      {
        v61 = v58 < v25;
      }

      if (v61)
      {
        *v10 = v58;
        goto LABEL_58;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + 4 * v34);
      v36 = *v13;
      v37 = *(v14 + 4 * v36);
      v191 = v35 == v37;
      v38 = v35 < v37;
      if (v191)
      {
        v38 = v34 < v36;
      }

      if (v38)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_97:
    --a4;
    v103 = *v10;
    if (a5)
    {
      v104 = *(v14 + 4 * v103);
      goto LABEL_102;
    }

    v105 = *(v10 - 1);
    v106 = *(v14 + 4 * v105);
    v104 = *(v14 + 4 * v103);
    v107 = v105 < v103;
    v191 = v106 == v104;
    v108 = v106 < v104;
    if (!v191)
    {
      v107 = v108;
    }

    if (v107)
    {
LABEL_102:
      v109 = 0;
      do
      {
        v110 = v10[v109 + 1];
        v111 = *(v14 + 4 * v110);
        v191 = v111 == v104;
        v112 = v111 < v104;
        if (v191)
        {
          v112 = v110 < v103;
        }

        ++v109;
      }

      while (v112);
      v113 = &v10[v109];
      v114 = a2;
      if (v109 == 1)
      {
        v114 = a2;
        do
        {
          if (v113 >= v114)
          {
            break;
          }

          v119 = *--v114;
          v120 = *(v14 + 4 * v119);
          v121 = v119 < v103;
          v191 = v120 == v104;
          v122 = v120 < v104;
          if (!v191)
          {
            v121 = v122;
          }
        }

        while (!v121);
      }

      else
      {
        do
        {
          v115 = *--v114;
          v116 = *(v14 + 4 * v115);
          v117 = v115 < v103;
          v191 = v116 == v104;
          v118 = v116 < v104;
          if (!v191)
          {
            v117 = v118;
          }
        }

        while (!v117);
      }

      if (v113 >= v114)
      {
        v136 = v113 - 1;
      }

      else
      {
        v123 = *v114;
        v124 = v110;
        v125 = v113;
        v126 = v114;
        do
        {
          *v125 = v123;
          *v126 = v124;
          v127 = *(v14 + 4 * v103);
          do
          {
            v128 = v125[1];
            ++v125;
            v124 = v128;
            v129 = *(v14 + 4 * v128);
            v130 = v128 < v103;
            v191 = v129 == v127;
            v131 = v129 < v127;
            if (v191)
            {
              v131 = v130;
            }
          }

          while (v131);
          do
          {
            v132 = *--v126;
            v123 = v132;
            v133 = *(v14 + 4 * v132);
            v134 = v132 < v103;
            v191 = v133 == v127;
            v135 = v133 < v127;
            if (v191)
            {
              v135 = v134;
            }
          }

          while (!v135);
        }

        while (v125 < v126);
        v136 = v125 - 1;
      }

      if (v136 != v10)
      {
        *v10 = *v136;
      }

      *v136 = v103;
      if (v113 < v114)
      {
        goto LABEL_133;
      }

      v10 = v136 + 1;
      if (result)
      {
        a2 = v136;
        if (!v137)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v137)
      {
LABEL_133:
        a5 = 0;
        v10 = v136 + 1;
      }
    }

    else
    {
      v138 = *(a2 - 1);
      v139 = *(v14 + 4 * v138);
      v140 = v103 < v138;
      v191 = v104 == v139;
      v141 = v104 < v139;
      if (!v191)
      {
        v140 = v141;
      }

      if (v140)
      {
        do
        {
          v142 = v10[1];
          ++v10;
          v143 = *(v14 + 4 * v142);
          v144 = v103 < v142;
          v191 = v104 == v143;
          v145 = v104 < v143;
          if (!v191)
          {
            v144 = v145;
          }
        }

        while (!v144);
      }

      else
      {
        v146 = v10 + 1;
        do
        {
          v10 = v146;
          if (v146 >= a2)
          {
            break;
          }

          ++v146;
          v147 = *v10;
          v148 = *(v14 + 4 * v147);
          v149 = v103 < v147;
          v191 = v104 == v148;
          v150 = v104 < v148;
          if (!v191)
          {
            v149 = v150;
          }
        }

        while (!v149);
      }

      v151 = a2;
      if (v10 < a2)
      {
        v151 = a2;
        do
        {
          v152 = *--v151;
          v153 = *(v14 + 4 * v152);
          v154 = v103 < v152;
          v191 = v104 == v153;
          v155 = v104 < v153;
          if (!v191)
          {
            v154 = v155;
          }
        }

        while (v154);
      }

      if (v10 < v151)
      {
        v156 = *v10;
        v157 = *v151;
        do
        {
          *v10 = v157;
          *v151 = v156;
          v158 = *(v14 + 4 * v103);
          do
          {
            v159 = v10[1];
            ++v10;
            v156 = v159;
            v160 = *(v14 + 4 * v159);
            v161 = v103 < v159;
            v191 = v158 == v160;
            v162 = v158 < v160;
            if (v191)
            {
              v162 = v161;
            }
          }

          while (!v162);
          do
          {
            v163 = *--v151;
            v157 = v163;
            v164 = *(v14 + 4 * v163);
            v165 = v103 < v163;
            v191 = v158 == v164;
            v166 = v158 < v164;
            if (v191)
            {
              v166 = v165;
            }
          }

          while (v166);
        }

        while (v10 < v151);
      }

      v167 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v167;
      }

      a5 = 0;
      *v167 = v103;
    }
  }

  v193 = *a3;
  v194 = *v10;
  v195 = v10[1];
  v196 = *(*a3 + 4 * v195);
  v197 = *(*a3 + 4 * *v10);
  v198 = v195 < *v10;
  v191 = v196 == v197;
  v199 = v196 < v197;
  v200 = *(a2 - 1);
  v201 = *(*a3 + 4 * v200);
  if (!v191)
  {
    v198 = v199;
  }

  v191 = v201 == v196;
  v202 = v201 < v196;
  if (v191)
  {
    v202 = v200 < v195;
  }

  if (v198)
  {
    if (v202)
    {
      *v10 = v200;
    }

    else
    {
      *v10 = v195;
      v10[1] = v194;
      v289 = *(a2 - 1);
      v290 = *(v193 + 4 * v289);
      v291 = *(v193 + 4 * v194);
      v191 = v290 == v291;
      v292 = v290 < v291;
      if (v191)
      {
        v292 = v289 < v194;
      }

      if (!v292)
      {
        return result;
      }

      v10[1] = v289;
    }

    *(a2 - 1) = v194;
    return result;
  }

  if (v202)
  {
    v10[1] = v200;
    *(a2 - 1) = v195;
    v184 = *v10;
    v273 = v10[1];
    v274 = *(v193 + 4 * v273);
    v275 = *(v193 + 4 * v184);
    v191 = v274 == v275;
    v276 = v274 < v275;
    if (v191)
    {
      v276 = v273 < v184;
    }

    if (v276)
    {
      *v10 = v273;
      goto LABEL_269;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + 4 * v5);
  v7 = *result;
  v8 = *(a5 + 4 * v7);
  v9 = v5 < v7;
  v10 = v6 == v8;
  v11 = v6 < v8;
  v12 = *a3;
  v13 = *(a5 + 4 * *a3);
  if (!v10)
  {
    v9 = v11;
  }

  v10 = v13 == v6;
  v14 = v13 < v6;
  if (v10)
  {
    v14 = v12 < v5;
  }

  if (v9)
  {
    if (v14)
    {
      *result = v12;
LABEL_17:
      *a3 = v7;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v7;
    v12 = *a3;
    v20 = *(a5 + 4 * *a3);
    v21 = *(a5 + 4 * v7);
    v10 = v20 == v21;
    v22 = v20 < v21;
    if (v10)
    {
      v22 = *a3 < v7;
    }

    if (v22)
    {
      *a2 = v12;
      goto LABEL_17;
    }

    v7 = *a3;
  }

  else if (v14)
  {
    *a2 = v12;
    *a3 = v5;
    v15 = *a2;
    v16 = *(a5 + 4 * v15);
    v17 = *result;
    v18 = *(a5 + 4 * v17);
    v10 = v16 == v18;
    v19 = v16 < v18;
    if (v10)
    {
      v19 = v15 < v17;
    }

    if (v19)
    {
      *result = v15;
      *a2 = v17;
      v7 = *a3;
LABEL_18:
      v12 = v7;
      goto LABEL_22;
    }

    v7 = v5;
    v12 = v5;
  }

  else
  {
    v7 = *a3;
  }

LABEL_22:
  v23 = *a4;
  v24 = *(a5 + 4 * v23);
  v25 = *(a5 + 4 * v7);
  v10 = v24 == v25;
  v26 = v24 < v25;
  if (v10)
  {
    v26 = v23 < v12;
  }

  if (v26)
  {
    *a3 = v23;
    *a4 = v12;
    v27 = *a3;
    v28 = *(a5 + 4 * v27);
    v29 = *a2;
    v30 = *(a5 + 4 * v29);
    v10 = v28 == v30;
    v31 = v28 < v30;
    if (v10)
    {
      v31 = v27 < v29;
    }

    if (v31)
    {
      *a2 = v27;
      *a3 = v29;
      v32 = *a2;
      v33 = *(a5 + 4 * v32);
      v34 = *result;
      v35 = *(a5 + 4 * v34);
      v10 = v33 == v35;
      v36 = v33 < v35;
      if (v10)
      {
        v36 = v32 < v34;
      }

      if (v36)
      {
        *result = v32;
        *a2 = v34;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v32 = *a3;
        v33 = *a1;
        v34 = a1[1];
        v35 = *(*a3 + 4 * v34);
        v36 = *(*a3 + 4 * *a1);
        v37 = v34 < *a1;
        v11 = v35 == v36;
        v38 = v35 < v36;
        v39 = *(a2 - 1);
        v40 = *(*a3 + 4 * v39);
        if (!v11)
        {
          v37 = v38;
        }

        v11 = v40 == v35;
        v41 = v40 < v35;
        if (v11)
        {
          v41 = v39 < v34;
        }

        if (v37)
        {
          if (v41)
          {
            *a1 = v39;
          }

          else
          {
            *a1 = v34;
            a1[1] = v33;
            v81 = *(a2 - 1);
            v82 = *(v32 + 4 * v81);
            v83 = *(v32 + 4 * v33);
            v11 = v82 == v83;
            v84 = v82 < v83;
            if (v11)
            {
              v84 = v81 < v33;
            }

            if (!v84)
            {
              return 1;
            }

            a1[1] = v81;
          }

          *(a2 - 1) = v33;
          return 1;
        }

        if (!v41)
        {
          return 1;
        }

        a1[1] = v39;
        *(a2 - 1) = v34;
        v29 = *a1;
        v58 = a1[1];
        v59 = *(v32 + 4 * v58);
        v60 = *(v32 + 4 * v29);
        v11 = v59 == v60;
        v61 = v59 < v60;
        if (v11)
        {
          v61 = v58 < v29;
        }

        if (!v61)
        {
          return 1;
        }

        *a1 = v58;
        break;
      case 4:
        return 1;
      case 5:
        v13 = *a3;
        v14 = *(a2 - 1);
        v15 = *(*a3 + 4 * v14);
        v16 = a1[3];
        v17 = *(*a3 + 4 * v16);
        v11 = v15 == v17;
        v18 = v15 < v17;
        if (v11)
        {
          v18 = v14 < v16;
        }

        if (!v18)
        {
          return 1;
        }

        a1[3] = v14;
        *(a2 - 1) = v16;
        v20 = a1[2];
        v19 = a1[3];
        v21 = *(v13 + 4 * v19);
        v22 = *(v13 + 4 * v20);
        v11 = v21 == v22;
        v23 = v21 < v22;
        if (v11)
        {
          v23 = v19 < v20;
        }

        if (!v23)
        {
          return 1;
        }

        a1[2] = v19;
        a1[3] = v20;
        v24 = *(v13 + 4 * v19);
        v25 = a1[1];
        v26 = *(v13 + 4 * v25);
        v11 = v24 == v26;
        v27 = v24 < v26;
        if (v11)
        {
          v27 = v19 < v25;
        }

        if (!v27)
        {
          return 1;
        }

        a1[1] = v19;
        a1[2] = v25;
        v28 = *(v13 + 4 * v19);
        v29 = *a1;
        v30 = *(v13 + 4 * v29);
        v11 = v28 == v30;
        v31 = v28 < v30;
        if (v11)
        {
          v31 = v19 < v29;
        }

        if (!v31)
        {
          return 1;
        }

        *a1 = v19;
        break;
      default:
        goto LABEL_31;
    }

    a1[1] = v29;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *(*a3 + 4 * v7);
    v9 = *a1;
    v10 = *(*a3 + 4 * v9);
    v11 = v8 == v10;
    v12 = v8 < v10;
    if (v11)
    {
      v12 = v7 < v9;
    }

    if (v12)
    {
      *a1 = v7;
      *(a2 - 1) = v9;
    }

    return 1;
  }

LABEL_31:
  v42 = a1 + 2;
  v43 = a1[2];
  v44 = a1[1];
  v45 = *a3;
  v46 = *(*a3 + 4 * v44);
  v47 = *a1;
  v48 = *(*a3 + 4 * *a1);
  v11 = v46 == v48;
  v49 = v46 < v48;
  v50 = *(*a3 + 4 * v43);
  if (v11)
  {
    v49 = v44 < *a1;
  }

  v51 = v43 < v44;
  v11 = v50 == v46;
  v52 = v50 < v46;
  if (!v11)
  {
    v51 = v52;
  }

  if (v49)
  {
    v53 = a1;
    v54 = a1 + 2;
    if (!v51)
    {
      *a1 = v44;
      a1[1] = v47;
      v55 = *(v45 + 4 * v43);
      v56 = *(v45 + 4 * v47);
      v11 = v55 == v56;
      v57 = v55 < v56;
      if (v11)
      {
        v57 = v43 < v47;
      }

      v53 = a1 + 1;
      v54 = a1 + 2;
      if (!v57)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    *v53 = v43;
    *v54 = v47;
    goto LABEL_53;
  }

  if (v51)
  {
    a1[1] = v43;
    *v42 = v44;
    v62 = *(v45 + 4 * v43);
    v63 = *(v45 + 4 * v47);
    v11 = v62 == v63;
    v64 = v62 < v63;
    if (v11)
    {
      v64 = v43 < v47;
    }

    v53 = a1;
    v54 = a1 + 1;
    if (v64)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v65 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v66 = 0;
  for (i = 12; ; i += 4)
  {
    v68 = *v65;
    v69 = *(v45 + 4 * *v65);
    v70 = *v42;
    v71 = *(v45 + 4 * v70);
    v11 = v69 == v71;
    v72 = v69 < v71;
    if (v11)
    {
      v72 = *v65 < v70;
    }

    if (v72)
    {
      v73 = i;
      while (1)
      {
        *(a1 + v73) = v70;
        v74 = v73 - 4;
        if (v73 == 4)
        {
          break;
        }

        v75 = a1 + v73;
        v76 = *(v45 + 4 * v68);
        v70 = *(v75 - 2);
        v77 = *(v45 + 4 * v70);
        v11 = v76 == v77;
        v78 = v76 < v77;
        if (v11)
        {
          v79 = v68 < v70;
        }

        else
        {
          v79 = v78;
        }

        v73 = v74;
        if (!v79)
        {
          v80 = (a1 + v74);
          goto LABEL_66;
        }
      }

      v80 = a1;
LABEL_66:
      *v80 = v68;
      if (++v66 == 8)
      {
        break;
      }
    }

    v42 = v65++;
    if (v65 == a2)
    {
      return 1;
    }
  }

  return v65 + 1 == a2;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v187 = *(a2 - 1);
        v188 = *(*a3 + 4 * v187);
        v189 = *v10;
        v190 = *(*a3 + 4 * v189);
        v191 = v188 == v190;
        v192 = v188 < v190;
        if (v191)
        {
          v192 = v187 < v189;
        }

        if (v192)
        {
          *v10 = v187;
          *(a2 - 1) = v189;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v203 = *a3;
    }

    if (v11 == 5)
    {
      v168 = *a3;
      v169 = *(a2 - 1);
      v170 = *(*a3 + 4 * v169);
      v171 = v10[3];
      v172 = *(*a3 + 4 * v171);
      v191 = v170 == v172;
      v173 = v170 < v172;
      if (v191)
      {
        v173 = v169 < v171;
      }

      if (!v173)
      {
        return result;
      }

      v10[3] = v169;
      *(a2 - 1) = v171;
      v175 = v10[2];
      v174 = v10[3];
      v176 = *(v168 + 4 * v174);
      v177 = *(v168 + 4 * v175);
      v191 = v176 == v177;
      v178 = v176 < v177;
      if (v191)
      {
        v178 = v174 < v175;
      }

      if (!v178)
      {
        return result;
      }

      v10[2] = v174;
      v10[3] = v175;
      v179 = *(v168 + 4 * v174);
      v180 = v10[1];
      v181 = *(v168 + 4 * v180);
      v191 = v179 == v181;
      v182 = v179 < v181;
      if (v191)
      {
        v182 = v174 < v180;
      }

      if (!v182)
      {
        return result;
      }

      v10[1] = v174;
      v10[2] = v180;
      v183 = *(v168 + 4 * v174);
      v184 = *v10;
      v185 = *(v168 + 4 * v184);
      v191 = v183 == v185;
      v186 = v183 < v185;
      if (v191)
      {
        v186 = v174 < v184;
      }

      if (!v186)
      {
        return result;
      }

      *v10 = v174;
LABEL_269:
      v10[1] = v184;
      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v204 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v205 = *a3;
            v206 = 4;
            v207 = v10;
            do
            {
              v209 = *v207;
              v208 = v207[1];
              v207 = v204;
              v210 = *(v205 + 4 * v208);
              v211 = *(v205 + 4 * v209);
              LODWORD(v204) = v209;
              v212 = v208 < v209;
              v191 = v210 == v211;
              v213 = v210 < v211;
              if (!v191)
              {
                v212 = v213;
              }

              if (v212)
              {
                v214 = v206;
                while (1)
                {
                  *(v10 + v214) = v204;
                  v215 = v214 - 4;
                  if (v214 == 4)
                  {
                    break;
                  }

                  v216 = v10 + v214;
                  v217 = *(v205 + 4 * v208);
                  v204 = *(v216 - 2);
                  v218 = *(v205 + 4 * v204);
                  v191 = v217 == v218;
                  v219 = v217 < v218;
                  if (v191)
                  {
                    v220 = v208 < v204;
                  }

                  else
                  {
                    v220 = v219;
                  }

                  v214 = v215;
                  if (!v220)
                  {
                    v221 = (v10 + v215);
                    goto LABEL_209;
                  }
                }

                v221 = v10;
LABEL_209:
                *v221 = v208;
              }

              v204 = v207 + 1;
              v206 += 4;
            }

            while (v207 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v277 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v278 = *a3;
          do
          {
            v280 = *v9;
            v279 = v9[1];
            v9 = v277;
            v281 = *(v278 + 4 * v279);
            v282 = *(v278 + 4 * v280);
            LODWORD(v277) = v280;
            v283 = v279 < v280;
            v191 = v281 == v282;
            v284 = v281 < v282;
            if (!v191)
            {
              v283 = v284;
            }

            if (v283)
            {
              v285 = v9;
              do
              {
                *v285 = v277;
                v286 = *(v278 + 4 * v279);
                v277 = *(v285 - 2);
                v287 = *(v278 + 4 * v277);
                v191 = v286 == v287;
                v288 = v286 < v287;
                if (v191)
                {
                  v288 = v279 < v277;
                }

                --v285;
              }

              while (v288);
              *v285 = v279;
            }

            v277 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v222 = (v11 - 2) >> 1;
        v223 = *a3;
        v224 = v222;
        do
        {
          v225 = v224;
          if (v222 >= v224)
          {
            v226 = (2 * v224) | 1;
            v227 = &v10[v226];
            if (2 * v225 + 2 >= v11)
            {
              LODWORD(v234) = *v227;
            }

            else
            {
              v228 = *v227;
              v229 = *(v223 + 4 * v228);
              v230 = v227[1];
              v231 = *(v223 + 4 * v230);
              v191 = v229 == v231;
              v232 = v229 < v231;
              if (v191)
              {
                v232 = v228 < v230;
              }

              v233 = !v232;
              if (v232)
              {
                LODWORD(v234) = v227[1];
              }

              else
              {
                LODWORD(v234) = *v227;
              }

              if (!v233)
              {
                ++v227;
                v226 = 2 * v225 + 2;
              }
            }

            v235 = &v10[v225];
            v236 = *(v223 + 4 * v234);
            v237 = *v235;
            result = *(v223 + 4 * *v235);
            v191 = v236 == result;
            v238 = v236 < result;
            if (v191)
            {
              v238 = v234 < *v235;
            }

            if (!v238)
            {
              do
              {
                *v235 = v234;
                v235 = v227;
                if (v222 < v226)
                {
                  break;
                }

                v239 = (2 * v226) | 1;
                v227 = &v10[v239];
                v226 = 2 * v226 + 2;
                if (v226 >= v11)
                {
                  LODWORD(v234) = *v227;
                  v226 = v239;
                }

                else
                {
                  v234 = *v227;
                  v240 = *(v223 + 4 * v234);
                  v241 = v227[1];
                  v242 = *(v223 + 4 * v241);
                  v191 = v240 == v242;
                  v243 = v240 < v242;
                  if (v191)
                  {
                    v243 = v234 < v241;
                  }

                  if (v243)
                  {
                    LODWORD(v234) = v227[1];
                    ++v227;
                  }

                  else
                  {
                    v226 = v239;
                  }
                }

                v244 = *(v223 + 4 * v234);
                result = *(v223 + 4 * v237);
                v191 = v244 == result;
                v245 = v244 < result;
                if (v191)
                {
                  v245 = v234 < v237;
                }
              }

              while (!v245);
              *v235 = v237;
            }
          }

          v224 = v225 - 1;
        }

        while (v225);
        do
        {
          v246 = 0;
          v247 = *v10;
          v248 = *a3;
          v249 = v10;
          do
          {
            v250 = &v249[v246];
            v251 = v250 + 1;
            v252 = (2 * v246) | 1;
            v246 = 2 * v246 + 2;
            if (v246 >= v11)
            {
              v254 = *v251;
              v246 = v252;
            }

            else
            {
              v255 = v250[2];
              v253 = v250 + 2;
              v254 = v255;
              result = *(v253 - 1);
              v256 = *(v248 + 4 * result);
              v257 = *(v248 + 4 * v255);
              v258 = result < v255;
              v191 = v256 == v257;
              v259 = v256 < v257;
              if (v191)
              {
                v259 = v258;
              }

              if (v259)
              {
                v251 = v253;
              }

              else
              {
                v254 = *(v253 - 1);
                v246 = v252;
              }
            }

            *v249 = v254;
            v249 = v251;
          }

          while (v246 <= ((v11 - 2) >> 1));
          if (v251 == --a2)
          {
            *v251 = v247;
          }

          else
          {
            *v251 = *a2;
            *a2 = v247;
            v260 = (v251 - v10 + 4) >> 2;
            v261 = v260 < 2;
            v262 = v260 - 2;
            if (!v261)
            {
              v263 = v262 >> 1;
              v264 = &v10[v263];
              v265 = *v264;
              v266 = *(v248 + 4 * v265);
              v267 = *v251;
              v268 = *(v248 + 4 * *v251);
              v191 = v266 == v268;
              v269 = v266 < v268;
              if (v191)
              {
                v269 = v265 < *v251;
              }

              if (v269)
              {
                do
                {
                  *v251 = v265;
                  v251 = v264;
                  if (!v263)
                  {
                    break;
                  }

                  v263 = (v263 - 1) >> 1;
                  v264 = &v10[v263];
                  v265 = *v264;
                  v270 = *(v248 + 4 * v265);
                  v271 = *(v248 + 4 * v267);
                  v191 = v270 == v271;
                  v272 = v270 < v271;
                  if (v191)
                  {
                    v272 = v265 < v267;
                  }
                }

                while (v272);
                *v251 = v267;
              }
            }
          }

          v261 = v11-- <= 2;
        }

        while (!v261);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 4 * v17);
      v19 = *v10;
      v20 = *(v14 + 4 * *v10);
      v191 = v18 == v20;
      v21 = v18 < v20;
      if (v191)
      {
        v21 = v17 < *v10;
      }

      v191 = v16 == v18;
      v22 = v16 < v18;
      if (v191)
      {
        v22 = v15 < v17;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + 4 * v39);
        v41 = *(v14 + 4 * v19);
        v191 = v40 == v41;
        v42 = v40 < v41;
        if (v191)
        {
          v42 = v39 < v19;
        }

        if (v42)
        {
          *v12 = v39;
LABEL_41:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + 4 * v29);
        v31 = *v10;
        v32 = *(v14 + 4 * v31);
        v191 = v30 == v32;
        v33 = v30 < v32;
        if (v191)
        {
          v33 = v29 < v31;
        }

        if (v33)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v43 = v12 - 1;
      v44 = *(v12 - 1);
      v45 = *(v14 + 4 * v44);
      v46 = v10[1];
      v47 = *(v14 + 4 * v46);
      v48 = v44 < v46;
      v191 = v45 == v47;
      v49 = v45 < v47;
      v50 = *(a2 - 2);
      v51 = *(v14 + 4 * v50);
      if (!v191)
      {
        v48 = v49;
      }

      v191 = v51 == v45;
      v52 = v51 < v45;
      if (v191)
      {
        v52 = v50 < v44;
      }

      if (v48)
      {
        if (v52)
        {
          v10[1] = v50;
          goto LABEL_63;
        }

        v10[1] = v44;
        *v43 = v46;
        v62 = *(a2 - 2);
        v63 = *(v14 + 4 * v62);
        v64 = *(v14 + 4 * v46);
        v191 = v63 == v64;
        v65 = v63 < v64;
        if (v191)
        {
          v65 = v62 < v46;
        }

        if (v65)
        {
          *v43 = v62;
LABEL_63:
          *(a2 - 2) = v46;
        }
      }

      else if (v52)
      {
        *v43 = v50;
        *(a2 - 2) = v44;
        v53 = *v43;
        v54 = *(v14 + 4 * v53);
        v55 = v10[1];
        v56 = *(v14 + 4 * v55);
        v191 = v54 == v56;
        v57 = v54 < v56;
        if (v191)
        {
          v57 = v53 < v55;
        }

        if (v57)
        {
          v10[1] = v53;
          *v43 = v55;
        }
      }

      v68 = v12[1];
      v66 = v12 + 1;
      v67 = v68;
      v69 = *(v14 + 4 * v68);
      v70 = v10[2];
      v71 = *(v14 + 4 * v70);
      v72 = v68 < v70;
      v191 = v69 == v71;
      v73 = v69 < v71;
      v74 = *(a2 - 3);
      v75 = *(v14 + 4 * v74);
      if (!v191)
      {
        v72 = v73;
      }

      v191 = v75 == v69;
      v76 = v75 < v69;
      if (v191)
      {
        v76 = v74 < v67;
      }

      if (v72)
      {
        if (v76)
        {
          v10[2] = v74;
          goto LABEL_80;
        }

        v10[2] = v67;
        *v66 = v70;
        v82 = *(a2 - 3);
        v83 = *(v14 + 4 * v82);
        v84 = *(v14 + 4 * v70);
        v191 = v83 == v84;
        v85 = v83 < v84;
        if (v191)
        {
          v85 = v82 < v70;
        }

        if (v85)
        {
          *v66 = v82;
LABEL_80:
          *(a2 - 3) = v70;
        }
      }

      else if (v76)
      {
        *v66 = v74;
        *(a2 - 3) = v67;
        v77 = *v66;
        v78 = *(v14 + 4 * v77);
        v79 = v10[2];
        v80 = *(v14 + 4 * v79);
        v191 = v78 == v80;
        v81 = v78 < v80;
        if (v191)
        {
          v81 = v77 < v79;
        }

        if (v81)
        {
          v10[2] = v77;
          *v66 = v79;
        }
      }

      v86 = *v13;
      v87 = *(v14 + 4 * v86);
      v88 = *v43;
      v89 = *(v14 + 4 * *v43);
      v90 = v86 < *v43;
      v191 = v87 == v89;
      v91 = v87 < v89;
      v92 = *v66;
      result = *(v14 + 4 * *v66);
      if (!v191)
      {
        v90 = v91;
      }

      v191 = result == v87;
      v93 = result < v87;
      if (v191)
      {
        v93 = v92 < v86;
      }

      if (v90)
      {
        if (!v93)
        {
          *v43 = v86;
          *v13 = v88;
          v94 = *(v14 + 4 * v92);
          v95 = *(v14 + 4 * v88);
          v96 = v92 < v88;
          v191 = v94 == v95;
          v97 = v94 < v95;
          if (!v191)
          {
            v96 = v97;
          }

          v43 = v13;
          LODWORD(v86) = v92;
          if (!v96)
          {
            LODWORD(v86) = v88;
LABEL_96:
            v102 = *v10;
            *v10 = v86;
            *v13 = v102;
            goto LABEL_97;
          }
        }
      }

      else
      {
        if (!v93)
        {
          goto LABEL_96;
        }

        *v13 = v92;
        *v66 = v86;
        v98 = *(v14 + 4 * v92);
        v99 = *(v14 + 4 * v88);
        v100 = v92 < v88;
        v191 = v98 == v99;
        v101 = v98 < v99;
        if (!v191)
        {
          v100 = v101;
        }

        v66 = v13;
        LODWORD(v86) = v88;
        if (!v100)
        {
          LODWORD(v86) = v92;
          goto LABEL_96;
        }
      }

      *v43 = v92;
      *v66 = v88;
      goto LABEL_96;
    }

    v23 = *v10;
    v24 = *(v14 + 4 * v23);
    v25 = *v13;
    v26 = *(v14 + 4 * *v13);
    v191 = v24 == v26;
    v27 = v24 < v26;
    if (v191)
    {
      v27 = v23 < *v13;
    }

    v191 = v16 == v24;
    v28 = v16 < v24;
    if (v191)
    {
      v28 = v15 < v23;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v25;
        goto LABEL_97;
      }

      *v13 = v23;
      *v10 = v25;
      v58 = *(a2 - 1);
      v59 = *(v14 + 4 * v58);
      v60 = *(v14 + 4 * v25);
      v191 = v59 == v60;
      v61 = v59 < v60;
      if (v191)
      {
        v61 = v58 < v25;
      }

      if (v61)
      {
        *v10 = v58;
        goto LABEL_58;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + 4 * v34);
      v36 = *v13;
      v37 = *(v14 + 4 * v36);
      v191 = v35 == v37;
      v38 = v35 < v37;
      if (v191)
      {
        v38 = v34 < v36;
      }

      if (v38)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_97:
    --a4;
    v103 = *v10;
    if (a5)
    {
      v104 = *(v14 + 4 * v103);
      goto LABEL_102;
    }

    v105 = *(v10 - 1);
    v106 = *(v14 + 4 * v105);
    v104 = *(v14 + 4 * v103);
    v107 = v105 < v103;
    v191 = v106 == v104;
    v108 = v106 < v104;
    if (!v191)
    {
      v107 = v108;
    }

    if (v107)
    {
LABEL_102:
      v109 = 0;
      do
      {
        v110 = v10[v109 + 1];
        v111 = *(v14 + 4 * v110);
        v191 = v111 == v104;
        v112 = v111 < v104;
        if (v191)
        {
          v112 = v110 < v103;
        }

        ++v109;
      }

      while (v112);
      v113 = &v10[v109];
      v114 = a2;
      if (v109 == 1)
      {
        v114 = a2;
        do
        {
          if (v113 >= v114)
          {
            break;
          }

          v119 = *--v114;
          v120 = *(v14 + 4 * v119);
          v121 = v119 < v103;
          v191 = v120 == v104;
          v122 = v120 < v104;
          if (!v191)
          {
            v121 = v122;
          }
        }

        while (!v121);
      }

      else
      {
        do
        {
          v115 = *--v114;
          v116 = *(v14 + 4 * v115);
          v117 = v115 < v103;
          v191 = v116 == v104;
          v118 = v116 < v104;
          if (!v191)
          {
            v117 = v118;
          }
        }

        while (!v117);
      }

      if (v113 >= v114)
      {
        v136 = v113 - 1;
      }

      else
      {
        v123 = *v114;
        v124 = v110;
        v125 = v113;
        v126 = v114;
        do
        {
          *v125 = v123;
          *v126 = v124;
          v127 = *(v14 + 4 * v103);
          do
          {
            v128 = v125[1];
            ++v125;
            v124 = v128;
            v129 = *(v14 + 4 * v128);
            v130 = v128 < v103;
            v191 = v129 == v127;
            v131 = v129 < v127;
            if (v191)
            {
              v131 = v130;
            }
          }

          while (v131);
          do
          {
            v132 = *--v126;
            v123 = v132;
            v133 = *(v14 + 4 * v132);
            v134 = v132 < v103;
            v191 = v133 == v127;
            v135 = v133 < v127;
            if (v191)
            {
              v135 = v134;
            }
          }

          while (!v135);
        }

        while (v125 < v126);
        v136 = v125 - 1;
      }

      if (v136 != v10)
      {
        *v10 = *v136;
      }

      *v136 = v103;
      if (v113 < v114)
      {
        goto LABEL_133;
      }

      v10 = v136 + 1;
      if (result)
      {
        a2 = v136;
        if (!v137)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v137)
      {
LABEL_133:
        a5 = 0;
        v10 = v136 + 1;
      }
    }

    else
    {
      v138 = *(a2 - 1);
      v139 = *(v14 + 4 * v138);
      v140 = v103 < v138;
      v191 = v104 == v139;
      v141 = v104 < v139;
      if (!v191)
      {
        v140 = v141;
      }

      if (v140)
      {
        do
        {
          v142 = v10[1];
          ++v10;
          v143 = *(v14 + 4 * v142);
          v144 = v103 < v142;
          v191 = v104 == v143;
          v145 = v104 < v143;
          if (!v191)
          {
            v144 = v145;
          }
        }

        while (!v144);
      }

      else
      {
        v146 = v10 + 1;
        do
        {
          v10 = v146;
          if (v146 >= a2)
          {
            break;
          }

          ++v146;
          v147 = *v10;
          v148 = *(v14 + 4 * v147);
          v149 = v103 < v147;
          v191 = v104 == v148;
          v150 = v104 < v148;
          if (!v191)
          {
            v149 = v150;
          }
        }

        while (!v149);
      }

      v151 = a2;
      if (v10 < a2)
      {
        v151 = a2;
        do
        {
          v152 = *--v151;
          v153 = *(v14 + 4 * v152);
          v154 = v103 < v152;
          v191 = v104 == v153;
          v155 = v104 < v153;
          if (!v191)
          {
            v154 = v155;
          }
        }

        while (v154);
      }

      if (v10 < v151)
      {
        v156 = *v10;
        v157 = *v151;
        do
        {
          *v10 = v157;
          *v151 = v156;
          v158 = *(v14 + 4 * v103);
          do
          {
            v159 = v10[1];
            ++v10;
            v156 = v159;
            v160 = *(v14 + 4 * v159);
            v161 = v103 < v159;
            v191 = v158 == v160;
            v162 = v158 < v160;
            if (v191)
            {
              v162 = v161;
            }
          }

          while (!v162);
          do
          {
            v163 = *--v151;
            v157 = v163;
            v164 = *(v14 + 4 * v163);
            v165 = v103 < v163;
            v191 = v158 == v164;
            v166 = v158 < v164;
            if (v191)
            {
              v166 = v165;
            }
          }

          while (v166);
        }

        while (v10 < v151);
      }

      v167 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v167;
      }

      a5 = 0;
      *v167 = v103;
    }
  }

  v193 = *a3;
  v194 = *v10;
  v195 = v10[1];
  v196 = *(*a3 + 4 * v195);
  v197 = *(*a3 + 4 * *v10);
  v198 = v195 < *v10;
  v191 = v196 == v197;
  v199 = v196 < v197;
  v200 = *(a2 - 1);
  v201 = *(*a3 + 4 * v200);
  if (!v191)
  {
    v198 = v199;
  }

  v191 = v201 == v196;
  v202 = v201 < v196;
  if (v191)
  {
    v202 = v200 < v195;
  }

  if (v198)
  {
    if (v202)
    {
      *v10 = v200;
    }

    else
    {
      *v10 = v195;
      v10[1] = v194;
      v289 = *(a2 - 1);
      v290 = *(v193 + 4 * v289);
      v291 = *(v193 + 4 * v194);
      v191 = v290 == v291;
      v292 = v290 < v291;
      if (v191)
      {
        v292 = v289 < v194;
      }

      if (!v292)
      {
        return result;
      }

      v10[1] = v289;
    }

    *(a2 - 1) = v194;
    return result;
  }

  if (v202)
  {
    v10[1] = v200;
    *(a2 - 1) = v195;
    v184 = *v10;
    v273 = v10[1];
    v274 = *(v193 + 4 * v273);
    v275 = *(v193 + 4 * v184);
    v191 = v274 == v275;
    v276 = v274 < v275;
    if (v191)
    {
      v276 = v273 < v184;
    }

    if (v276)
    {
      *v10 = v273;
      goto LABEL_269;
    }
  }

  return result;
}