_DWORD *sub_255AF54AC(_DWORD *result, int16x8_t **a2, uint64_t a3, int16x8_t *a4, int16x4_t a5)
{
  if (result[5])
  {
    for (i = 0; i < result[5]; ++i)
    {
      *a2 = a4;
      v6 = result[3];
      v7 = *(a3 + 8);
      if (!v6)
      {
        v9 = a4;
        *a2 = a4;
        v22 = *v7;
        if (v22 >= 1)
        {
          goto LABEL_30;
        }

        goto LABEL_3;
      }

      if (*v7 < 1)
      {
        v9 = (a4 + (2 * (v6 - 1) + 2) * result[4]);
        *a2 = v9;
        v22 = *v7;
        if (v22 < 1)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }

      v8 = 0;
      v9 = a4;
      do
      {
        *a2 = v9;
        v10 = **(a3 + 8);
        if (v10 >= 1)
        {
          a5.i16[0] = **(a3 + 16);
          v11 = **(a3 + 8);
          v12 = v9;
          if (v10 < 4)
          {
            goto LABEL_22;
          }

          if (v10 >= 0x10)
          {
            v13 = v10 & 0x7FFFFFFFFFFFFFF0;
            v14 = vdupq_lane_s16(a5, 0);
            v15 = v9 + 1;
            v16 = v10 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v15[-1] = v14;
              *v15 = v14;
              v15 += 2;
              v16 -= 16;
            }

            while (v16);
            if (v10 != v13)
            {
              if ((v10 & 0xC) != 0)
              {
                goto LABEL_17;
              }

              v12 = (v9 + 2 * v13);
              v11 = v10 & 0xF;
LABEL_22:
              v20 = v11 + 1;
              do
              {
                v12->i16[0] = a5.i16[0];
                v12 = (v12 + 2);
                --v20;
              }

              while (v20 > 1);
            }
          }

          else
          {
            v13 = 0;
LABEL_17:
            v11 = v10 & 3;
            v12 = (v9 + 2 * (v10 & 0x7FFFFFFFFFFFFFFCLL));
            v17 = vdup_lane_s16(a5, 0);
            v18 = (v9 + 2 * v13);
            v19 = v13 - (v10 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              *v18++ = v17;
              v19 += 4;
            }

            while (v19);
            if (v10 != (v10 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_22;
            }
          }

          v6 = result[3];
        }

        v9 = (v9 + 2 * result[4]);
        ++v8;
      }

      while (v8 < v6);
      v21 = *(a3 + 8);
      *a2 = v9;
      v22 = *v21;
      if (v22 < 1)
      {
        goto LABEL_3;
      }

LABEL_30:
      a5.i16[0] = **(a3 + 16);
      if (v22 < 4)
      {
        v23 = v22;
        v24 = v9;
        goto LABEL_43;
      }

      if (v22 >= 0x10)
      {
        v25 = v22 & 0x7FFFFFFFFFFFFFF0;
        v26 = vdupq_lane_s16(a5, 0);
        v27 = v9 + 1;
        v28 = v22 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v27[-1] = v26;
          *v27 = v26;
          v27 += 2;
          v28 -= 16;
        }

        while (v28);
        if (v22 != v25)
        {
          if ((v22 & 0xC) == 0)
          {
            v24 = (v9 + 2 * v25);
            v23 = v22 & 0xF;
            goto LABEL_43;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v25 = 0;
LABEL_38:
        v23 = v22 & 3;
        v24 = (v9 + 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL));
        v29 = vdup_lane_s16(a5, 0);
        v30 = (v9 + 2 * v25);
        v31 = v25 - (v22 & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          *v30++ = v29;
          v31 += 4;
        }

        while (v31);
        if (v22 != (v22 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_43:
          v32 = v23 + 1;
          do
          {
            v24->i16[0] = a5.i16[0];
            v24 = (v24 + 2);
            --v32;
          }

          while (v32 > 1);
        }
      }

LABEL_3:
      a4 = (a4 + 2 * result[6]);
    }
  }

  *a2 = a4;
  v33 = result[3];
  if (v33)
  {
    if (**(a3 + 8) >= 1)
    {
      v34 = 0;
      while (1)
      {
        *a2 = a4;
        v35 = **(a3 + 8);
        if (v35 < 1)
        {
          goto LABEL_50;
        }

        a5.i16[0] = **(a3 + 16);
        v36 = **(a3 + 8);
        v37 = a4;
        if (v35 >= 4)
        {
          if (v35 < 0x10)
          {
            v38 = 0;
LABEL_59:
            v36 = v35 & 3;
            v37 = (a4 + 2 * (v35 & 0x7FFFFFFFFFFFFFFCLL));
            v42 = vdup_lane_s16(a5, 0);
            v43 = (a4 + 2 * v38);
            v44 = v38 - (v35 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              *v43++ = v42;
              v44 += 4;
            }

            while (v44);
            if (v35 == (v35 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_49;
            }

            goto LABEL_64;
          }

          v38 = v35 & 0x7FFFFFFFFFFFFFF0;
          v39 = vdupq_lane_s16(a5, 0);
          v40 = a4 + 1;
          v41 = v35 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v40[-1] = v39;
            *v40 = v39;
            v40 += 2;
            v41 -= 16;
          }

          while (v41);
          if (v35 == v38)
          {
            goto LABEL_49;
          }

          if ((v35 & 0xC) != 0)
          {
            goto LABEL_59;
          }

          v37 = (a4 + 2 * v38);
          v36 = v35 & 0xF;
        }

LABEL_64:
        v45 = v36 + 1;
        do
        {
          v37->i16[0] = a5.i16[0];
          v37 = (v37 + 2);
          --v45;
        }

        while (v45 > 1);
LABEL_49:
        v33 = result[3];
LABEL_50:
        a4 = (a4 + 2 * result[4]);
        if (++v34 >= v33)
        {
          goto LABEL_68;
        }
      }
    }

    a4 = (a4 + (2 * (v33 - 1) + 2) * result[4]);
  }

LABEL_68:
  *a2 = a4;
  v46 = **(a3 + 8);
  if (v46 >= 1)
  {
    a5.i16[0] = **(a3 + 16);
    if (v46 < 4)
    {
      v47 = **(a3 + 8);
      v48 = a4;
      goto LABEL_82;
    }

    if (v46 >= 0x10)
    {
      v49 = v46 & 0x7FFFFFFFFFFFFFF0;
      v50 = vdupq_lane_s16(a5, 0);
      v51 = a4 + 1;
      v52 = v46 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v51[-1] = v50;
        *v51 = v50;
        v51 += 2;
        v52 -= 16;
      }

      while (v52);
      if (v46 == v49)
      {
        return result;
      }

      if ((v46 & 0xC) == 0)
      {
        v48 = (a4 + 2 * v49);
        v47 = v46 & 0xF;
LABEL_82:
        v56 = v47 + 1;
        do
        {
          v48->i16[0] = a5.i16[0];
          v48 = (v48 + 2);
          --v56;
        }

        while (v56 > 1);
        return result;
      }
    }

    else
    {
      v49 = 0;
    }

    v47 = v46 & 3;
    v48 = (a4 + 2 * (v46 & 0x7FFFFFFFFFFFFFFCLL));
    v53 = vdup_lane_s16(a5, 0);
    v54 = (a4 + 2 * v49);
    v55 = v49 - (v46 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      *v54++ = v53;
      v55 += 4;
    }

    while (v55);
    if (v46 != (v46 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_82;
    }
  }

  return result;
}

__int16 sub_255AF5898@<H0>(void *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 20) == 1 && *(v2 + 20) == 1;
  if (v3)
  {
    v22 = *(v1 + 24);
    v23 = *(v2 + 24);
    v24 = *(v1 + 8);
    if (v22 != v23 || v22 != v24)
    {
      v26 = *(v1 + 12);
      v27 = *(v1 + 16);
      if (v24)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28 || v27 == 0)
      {
        return v99;
      }

      v30 = v26 - 1;
      v31 = *v1;
      v32 = *v2;
      v33 = 2 * v23;
      v34 = v27 - 1;
      v202 = *(v2 + 24);
      v203 = *(v1 + 24);
      v201 = *(v1 + 12);
      if (v27 != 1)
      {
        v35 = *(v2 + 28);
        v36 = *(v1 + 28);
        if (v26 != 1)
        {
          v37 = 0;
          v38 = 2 * v22;
          v206 = &v32[v33 / 2] - v31 - 2 * v22;
          v205 = 2 * (v35 - v36);
          v204 = v33 - 2 * v22;
          v39 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v40 = v39 + 1;
          v41 = 2 * v35;
          v42 = 2 * v36;
          v43 = &v32[v24 + v23 * (v26 - 2)];
          v44 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
          v45 = v44;
          v46 = (v39 + 1) & 0xC;
          v47 = (v39 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v48 = v47;
          v49 = &v31[v24 + v22 * (v26 - 2)];
          while (1)
          {
            v50 = 0;
            v52 = v32 < (v49 + v42 * v37) && v31 < (v43 + v41 * v37);
            v53 = v32;
            v54 = v31;
            do
            {
              v55 = v50;
              v56 = v53;
              v57 = v54;
              if (v39 < 3 || v52)
              {
                goto LABEL_54;
              }

              if (v39 >= 0xF)
              {
                v59 = 0;
                v60 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v61 = &v53[v59];
                  v62 = *&v54[v59 + 8];
                  *v61 = *&v54[v59];
                  *(v61 + 1) = v62;
                  v59 += 16;
                  v60 -= 16;
                }

                while (v60);
                if (v40 == v44)
                {
                  goto LABEL_41;
                }

                v58 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v46)
                {
                  v57 = &v54[v45];
                  v56 = &v53[v45];
                  do
                  {
LABEL_54:
                    v65 = *v57++;
                    *v56++ = v65;
                  }

                  while (v57 != &v54[v24]);
                  goto LABEL_41;
                }
              }

              else
              {
                v58 = 0;
              }

              v56 = &v53[v48];
              v57 = &v54[v48];
              v63 = v58;
              v64 = v58 - v47;
              do
              {
                *&v53[v63] = *&v54[v63];
                v63 += 4;
                v64 += 4;
              }

              while (v64);
              if (v40 != v47)
              {
                goto LABEL_54;
              }

LABEL_41:
              v54 = (v54 + v38);
              v53 = (v53 + v33);
              v50 = v55 + 1;
            }

            while (v55 + 1 != v30);
            if (v39 < 3 || (v206 + v205 * v37 + v204 * v55) < 0x20)
            {
              v66 = v53;
              v67 = v54;
              goto LABEL_59;
            }

            if (v39 >= 0xF)
            {
              v71 = 0;
              v72 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v73 = &v53[v71];
                v74 = *&v54[v71 + 8];
                *v73 = *&v54[v71];
                *(v73 + 1) = v74;
                v71 += 16;
                v72 -= 16;
              }

              while (v72);
              if (v40 != v44)
              {
                v70 = (v39 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v46)
                {
                  v67 = &v54[v45];
                  v66 = &v53[v45];
                  goto LABEL_59;
                }

                goto LABEL_68;
              }
            }

            else
            {
              v70 = 0;
LABEL_68:
              v66 = &v53[v48];
              v67 = &v54[v48];
              v75 = v70;
              v76 = v70 - v47;
              do
              {
                *&v53[v75] = *&v54[v75];
                v75 += 4;
                v76 += 4;
              }

              while (v76);
              if (v40 != v47)
              {
LABEL_59:
                v68 = &v54[v24];
                do
                {
                  v69 = *v67++;
                  *v66++ = v69;
                }

                while (v67 != v68);
              }
            }

            v31 = (v31 + v42);
            v32 = (v32 + v41);
            if (++v37 == v34)
            {
              goto LABEL_145;
            }
          }
        }

        v121 = 0;
        v122 = v27 - 2;
        v123 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v124 = v123 + 1;
        v125 = v32 >= &v31[v24 + v36 * v122] || v31 >= &v32[v24 + v35 * v122];
        v126 = v124 & 0xFFFFFFFFFFFFFFF0;
        v127 = v124 & 0xFFFFFFFFFFFFFFFCLL;
        v128 = v124 & 0xFFFFFFFFFFFFFFFCLL;
        v129 = !v125;
        v130 = 2 * v36;
        do
        {
          v131 = v32;
          v132 = v31;
          if (!((v123 < 3) | v129 & 1))
          {
            if (v123 < 0xF)
            {
              v133 = 0;
LABEL_138:
              v131 = &v32[v128];
              v132 = &v31[v128];
              v138 = v133;
              v139 = v133 - v127;
              do
              {
                *&v32[v138] = *&v31[v138];
                v138 += 4;
                v139 += 4;
              }

              while (v139);
              if (v124 == v127)
              {
                goto LABEL_130;
              }

              goto LABEL_143;
            }

            v134 = 0;
            v135 = v124 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v136 = &v32[v134];
              v137 = *&v31[v134 + 8];
              *v136 = *&v31[v134];
              *(v136 + 1) = v137;
              v134 += 16;
              v135 -= 16;
            }

            while (v135);
            if (v124 == (v124 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_130;
            }

            v133 = v124 & 0xFFFFFFFFFFFFFFF0;
            if ((v124 & 0xC) != 0)
            {
              goto LABEL_138;
            }

            v132 = &v31[v126];
            v131 = &v32[v126];
          }

          do
          {
LABEL_143:
            v140 = *v132++;
            *v131++ = v140;
          }

          while (v132 != &v31[v24]);
LABEL_130:
          v31 = (v31 + v130);
          v32 += v35;
          ++v121;
        }

        while (v121 != v34);
      }

LABEL_145:
      if (v30)
      {
        v141 = 0;
        v142 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v143 = v142 + 1;
        v145 = v32 < &v31[v24 + v203 * (v201 - 2)] && v31 < &v32[v24 + v202 * (v201 - 2)];
        v146 = v143 & 0xFFFFFFFFFFFFFFF0;
        v147 = v143 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v148 = v32;
          v149 = v31;
          if (v142 >= 3 && !v145)
          {
            if (v142 < 0xF)
            {
              v150 = 0;
LABEL_161:
              v148 = &v32[v147];
              v149 = &v31[v147];
              v155 = v150;
              v156 = v150 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v32[v155] = *&v31[v155];
                v155 += 4;
                v156 += 4;
              }

              while (v156);
              if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_153;
              }

              goto LABEL_166;
            }

            v151 = 0;
            v152 = v143 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v153 = &v32[v151];
              v154 = *&v31[v151 + 8];
              *v153 = *&v31[v151];
              *(v153 + 1) = v154;
              v151 += 16;
              v152 -= 16;
            }

            while (v152);
            if (v143 == (v143 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_153;
            }

            v150 = v143 & 0xFFFFFFFFFFFFFFF0;
            if ((v143 & 0xC) != 0)
            {
              goto LABEL_161;
            }

            v149 = &v31[v146];
            v148 = &v32[v146];
          }

          do
          {
LABEL_166:
            v157 = *v149++;
            *v148++ = v157;
          }

          while (v149 != &v31[v24]);
LABEL_153:
          v31 += v203;
          v32 = (v32 + v33);
          ++v141;
        }

        while (v141 != v30);
      }

      v158 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v158 < 3 || (v32 - v31) < 0x20)
      {
        v161 = v32;
        v162 = v31;
        goto LABEL_200;
      }

      v159 = v158 + 1;
      if (v158 >= 0xF)
      {
        v160 = v159 & 0xFFFFFFFFFFFFFFF0;
        v163 = (v31 + 8);
        v164 = v32 + 8;
        v165 = v159 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v99 = *(v163 - 1);
          v166 = *v163;
          *(v164 - 1) = v99;
          *v164 = v166;
          v163 += 2;
          v164 += 2;
          v165 -= 16;
        }

        while (v165);
        if (v159 == v160)
        {
          return v99;
        }

        if ((v159 & 0xC) == 0)
        {
          v193 = v160;
          v162 = &v31[v193];
          v161 = &v32[v193];
          goto LABEL_200;
        }
      }

      else
      {
        v160 = 0;
      }

      v167 = v159 & 0xFFFFFFFFFFFFFFFCLL;
      v161 = &v32[v167];
      v162 = &v31[v167];
      v168 = &v31[v160];
      v169 = &v32[v160];
      v170 = v160 - (v159 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v171 = *v168++;
        LOWORD(v99) = v171;
        *v169 = v171;
        v169 += 4;
        v170 += 4;
      }

      while (v170);
      if (v159 == (v159 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v99;
      }

LABEL_200:
      v194 = &v31[v24];
      do
      {
        v195 = *v162++;
        LOWORD(v99) = v195;
        *v161++ = v195;
      }

      while (v162 != v194);
      return v99;
    }

    v77 = *(v1 + 28);
    v78 = *(v2 + 28);
    v79 = *(v1 + 12);
    v80 = (v79 * v22);
    if (v77 != v78 || v77 != v80)
    {
      v82 = *(v1 + 16);
      if (v22)
      {
        v83 = v79 == 0;
      }

      else
      {
        v83 = 1;
      }

      if (v83 || v82 == 0)
      {
        return v99;
      }

      v85 = *v1;
      v86 = *v2;
      if (v82 == 1)
      {
LABEL_85:
        if (!v80)
        {
          return v99;
        }

        v87 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v87 < 3 || (v86 - v85) < 0x20)
        {
          v182 = v86;
          v183 = v85;
          goto LABEL_208;
        }

        v88 = v87 + 1;
        if (v87 >= 0xF)
        {
          v89 = v88 & 0xFFFFFFFFFFFFFFF0;
          v184 = (v85 + 8);
          v185 = v86 + 8;
          v186 = v88 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = *(v184 - 1);
            v187 = *v184;
            *(v185 - 1) = v99;
            *v185 = v187;
            v184 += 2;
            v185 += 2;
            v186 -= 16;
          }

          while (v186);
          if (v88 == v89)
          {
            return v99;
          }

          if ((v88 & 0xC) == 0)
          {
            v183 = &v85[v89];
            v182 = &v86[v89];
            goto LABEL_208;
          }
        }

        else
        {
          v89 = 0;
        }

        v188 = v88 & 0xFFFFFFFFFFFFFFFCLL;
        v182 = &v86[v188];
        v183 = &v85[v188];
        v189 = &v85[v89];
        v190 = &v86[v89];
        v191 = v89 - (v88 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v192 = *v189++;
          LOWORD(v99) = v192;
          *v190 = v192;
          v190 += 4;
          v191 += 4;
        }

        while (v191);
        if (v88 == (v88 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v99;
        }

LABEL_208:
        v198 = &v85[v80];
        do
        {
          v199 = *v183++;
          LOWORD(v99) = v199;
          *v182++ = v199;
        }

        while (v183 != v198);
        return v99;
      }

      if (!v80)
      {
        return v99;
      }

      v100 = 0;
      v101 = v82 - 2;
      v102 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v103 = v102 + 1;
      v104 = v86 >= &v85[v80 + v77 * v101] || v85 >= &v86[v80 + v78 * v101];
      v105 = v103 & 0xFFFFFFFFFFFFFFF0;
      v106 = v103 & 0xFFFFFFFFFFFFFFFCLL;
      v107 = v103 & 0xFFFFFFFFFFFFFFFCLL;
      v108 = !v104;
      v109 = 2 * v77;
      v110 = 2 * v78;
      while (1)
      {
        v111 = v86;
        v112 = v85;
        if (!((v102 < 3) | v108 & 1))
        {
          if (v102 < 0xF)
          {
            v113 = 0;
LABEL_116:
            v111 = &v86[v107];
            v112 = &v85[v107];
            v118 = v113;
            v119 = v113 - v106;
            do
            {
              *&v99 = *&v85[v118];
              *&v86[v118] = v99;
              v118 += 4;
              v119 += 4;
            }

            while (v119);
            if (v103 == v106)
            {
              goto LABEL_108;
            }

            goto LABEL_121;
          }

          v114 = 0;
          v115 = v103 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v116 = &v86[v114];
            v99 = *&v85[v114];
            v117 = *&v85[v114 + 8];
            *v116 = v99;
            *(v116 + 1) = v117;
            v114 += 16;
            v115 -= 16;
          }

          while (v115);
          if (v103 == (v103 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_108;
          }

          v113 = v103 & 0xFFFFFFFFFFFFFFF0;
          if ((v103 & 0xC) != 0)
          {
            goto LABEL_116;
          }

          v112 = &v85[v105];
          v111 = &v86[v105];
        }

        do
        {
LABEL_121:
          v120 = *v112++;
          LOWORD(v99) = v120;
          *v111++ = v120;
        }

        while (v112 != &v85[v80]);
LABEL_108:
        v85 = (v85 + v109);
        v86 = (v86 + v110);
        v3 = v100++ == v101;
        if (v3)
        {
          goto LABEL_85;
        }
      }
    }

    v90 = (*(v1 + 16) * v77);
    if (!v90)
    {
      return v99;
    }

    v91 = *v1;
    v92 = *v2;
    v93 = (v90 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v93 < 3)
    {
      v94 = *v1;
      goto LABEL_204;
    }

    v94 = *v1;
    if ((v92 - v91) < 0x20)
    {
      goto LABEL_204;
    }

    v95 = v93 + 1;
    if (v93 >= 0xF)
    {
      v96 = v95 & 0xFFFFFFFFFFFFFFF0;
      v172 = (v91 + 8);
      v173 = v92 + 8;
      v174 = v95 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v99 = *(v172 - 1);
        v175 = *v172;
        *(v173 - 1) = v99;
        *v173 = v175;
        v172 += 2;
        v173 += 2;
        v174 -= 16;
      }

      while (v174);
      if (v95 == v96)
      {
        return v99;
      }

      if ((v95 & 0xC) == 0)
      {
        v94 = &v91[v96];
        v92 += v96;
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
    }

    v176 = v95 & 0xFFFFFFFFFFFFFFFCLL;
    v177 = &v92[v176];
    v94 = &v91[v176];
    v178 = &v91[v96];
    v179 = &v92[v96];
    v180 = v96 - (v95 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v181 = *v178++;
      LOWORD(v99) = v181;
      *v179 = v181;
      v179 += 4;
      v180 += 4;
    }

    while (v180);
    v92 = v177;
    if (v95 == (v95 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v99;
    }

LABEL_204:
    v196 = &v91[v90];
    do
    {
      v197 = *v94++;
      LOWORD(v99) = v197;
      *v92++ = v197;
    }

    while (v94 != v196);
    return v99;
  }

  v4 = *(v1 + 12);
  v5 = *(v1 + 16);
  if (*(v1 + 8))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = v4 - 1;
    v9 = *v1;
    v10 = *v2;
    v11 = 2 * *(v1 + 24);
    v12 = 2 * *(v2 + 24);
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 28);
      v15 = *(v1 + 28);
      if (v8)
      {
        v16 = 0;
        v17 = v9 + 1;
        v18 = v10 + 1;
        do
        {
          v19 = v18;
          v20 = v17;
          v21 = v8;
          do
          {
            *(v19 - 1) = *(v20 - 1);
            *v19 = *v20;
            v20 = (v20 + v11);
            v19 = (v19 + v12);
            --v21;
          }

          while (v21);
          *(v19 - 1) = *(v20 - 1);
          *v19 = *v20;
          v9 += v15;
          v10 += v14;
          ++v16;
          v17 += v15;
          v18 += v14;
        }

        while (v16 != v13);
        goto LABEL_98;
      }

      v97 = 2 * v15;
      v98 = 2 * v14;
      do
      {
        *v10 = *v9;
        v10[1] = v9[1];
        v9 = (v9 + v97);
        v10 = (v10 + v98);
        --v13;
      }

      while (v13);
    }

    if (!v8)
    {
LABEL_99:
      *v10 = *v9;
      LOWORD(v99) = v9[1];
      v10[1] = v99;
      return v99;
    }

    do
    {
LABEL_98:
      *v10 = *v9;
      v10[1] = v9[1];
      v9 = (v9 + v11);
      v10 = (v10 + v12);
      --v8;
    }

    while (v8);
    goto LABEL_99;
  }

  return v99;
}

void sub_255AF62AC(uint64_t *a1, int16x4_t a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v59[0] = a1[1];
    if (*(v2 + 8))
    {
      v12 = *(v2 + 12) == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && *(v2 + 16) != 0)
    {
      v60 = v59;
      sub_255AF6618(&v60, v2);
    }

    return;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    v14 = a1[1];
    v58 = 0;
    v57 = v4;
    v59[0] = &v58;
    v59[1] = &v57;
    v59[2] = v14;
    v16 = *(v2 + 12);
    v15 = *(v2 + 16);
    if (v4)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17 && v15 != 0)
    {
      LODWORD(v60) = 0;
      HIDWORD(v60) = v4 - 1;
      v61 = 1;
      v62 = v16 - 1;
      v63 = v3;
      v64 = v15 - 1;
      v65 = *(v2 + 28);
      v19 = *v2;
      v66[0] = 0;
      v66[1] = 0;
      sub_255AF54AC(&v60, v66, v59, v19, a2);
    }

    return;
  }

  v5 = *(v2 + 28);
  v6 = *(v2 + 12);
  v7 = (v6 * v3);
  if (v5 != v7)
  {
    v20 = *(v2 + 16);
    if (v3)
    {
      v21 = v6 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21 || v20 == 0)
    {
      return;
    }

    v23 = a1[1];
    v24 = *v2;
    v25 = v20 - 1;
    if (v25)
    {
      if (!v7)
      {
        return;
      }

      v26 = 0;
      v27 = v24 + 1;
      v28 = 2 * v5;
      do
      {
        a2.i16[0] = *v23;
        v29 = v7;
        v30 = v24;
        if (v7 >= 4)
        {
          if (v7 < 0x10)
          {
            v31 = 0;
LABEL_42:
            v30 = (v24 + 2 * (v7 & 0xFFFFFFFC));
            v35 = vdup_lane_s16(a2, 0);
            v36 = 2 * v31;
            v37 = v31 - (v7 & 0xFFFFFFFC);
            do
            {
              *&v24->i8[v36] = v35;
              v36 += 8;
              v37 += 4;
            }

            while (v37);
            v29 = v7 & 3;
            if ((v7 & 0xFFFFFFFC) == v7)
            {
              goto LABEL_34;
            }

            goto LABEL_47;
          }

          v32 = vdupq_lane_s16(a2, 0);
          v33 = v7 & 0xFFFFFFF0;
          v34 = v27;
          do
          {
            v34[-1] = v32;
            *v34 = v32;
            v34 += 2;
            v33 -= 16;
          }

          while (v33);
          if ((v7 & 0xFFFFFFF0) == v7)
          {
            goto LABEL_34;
          }

          v31 = v7 & 0xFFFFFFF0;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_42;
          }

          v30 = (v24 + 2 * (v7 & 0xFFFFFFF0));
          v29 = v7 & 0xF;
        }

LABEL_47:
        v38 = v29 + 1;
        do
        {
          v30->i16[0] = a2.i16[0];
          v30 = (v30 + 2);
          --v38;
        }

        while (v38 > 1);
LABEL_34:
        v24 = (v24 + v28);
        ++v26;
        v27 = (v27 + v28);
      }

      while (v26 != v25);
    }

    if (!v7)
    {
      return;
    }

    a2.i16[0] = *v23;
    if (v7 < 4)
    {
      v39 = v7;
      v40 = v24;
      goto LABEL_78;
    }

    if (v7 >= 0x10)
    {
      v48 = v7 & 0xFFFFFFF0;
      v49 = vdupq_lane_s16(a2, 0);
      v50 = v24 + 1;
      v51 = v48;
      do
      {
        v50[-1] = v49;
        *v50 = v49;
        v50 += 2;
        v51 -= 16;
      }

      while (v51);
      if (v48 == v7)
      {
        return;
      }

      if ((v7 & 0xC) == 0)
      {
        v40 = (v24 + 2 * v48);
        v39 = v7 & 0xF;
        goto LABEL_78;
      }
    }

    else
    {
      v48 = 0;
    }

    v39 = v7 & 3;
    v40 = (v24 + 2 * (v7 & 0xFFFFFFFC));
    v52 = vdup_lane_s16(a2, 0);
    v53 = (v24 + 2 * v48);
    v54 = v48 - (v7 & 0xFFFFFFFC);
    do
    {
      *v53++ = v52;
      v54 += 4;
    }

    while (v54);
    if ((v7 & 0xFFFFFFFC) == v7)
    {
      return;
    }

LABEL_78:
    v56 = v39 + 1;
    do
    {
      v40->i16[0] = a2.i16[0];
      v40 = (v40 + 2);
      --v56;
    }

    while (v56 > 1);
    return;
  }

  v8 = (*(v2 + 16) * v5);
  if (!v8)
  {
    return;
  }

  v9 = *v2;
  a2.i16[0] = *a1[1];
  if (v8 < 4)
  {
    v10 = (*(v2 + 16) * v5);
    v11 = *v2;
    goto LABEL_74;
  }

  if (v8 >= 0x10)
  {
    v41 = v8 & 0xFFFFFFF0;
    v42 = vdupq_lane_s16(a2, 0);
    v43 = v9 + 1;
    v44 = v41;
    do
    {
      v43[-1] = v42;
      *v43 = v42;
      v43 += 2;
      v44 -= 16;
    }

    while (v44);
    if (v41 == v8)
    {
      return;
    }

    if ((v8 & 0xC) == 0)
    {
      v11 = (v9 + 2 * v41);
      v10 = v8 & 0xF;
LABEL_74:
      v55 = v10 + 1;
      do
      {
        v11->i16[0] = a2.i16[0];
        v11 = (v11 + 2);
        --v55;
      }

      while (v55 > 1);
      return;
    }
  }

  else
  {
    v41 = 0;
  }

  v10 = v8 & 3;
  v11 = (v9 + 2 * (v8 & 0xFFFFFFFC));
  v45 = vdup_lane_s16(a2, 0);
  v46 = (v9 + 2 * v41);
  v47 = v41 - (v8 & 0xFFFFFFFC);
  do
  {
    *v46++ = v45;
    v47 += 4;
  }

  while (v47);
  if ((v8 & 0xFFFFFFFC) != v8)
  {
    goto LABEL_74;
  }
}

__int16 sub_255AF6618@<H0>(__int16 ***a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = v2 - 1;
    v7 = *a2;
    v8 = 2 * *(a2 + 24);
    v9 = v3 - 1;
    if (v9)
    {
      v10 = *(a2 + 28);
      if (v6)
      {
        v11 = 0;
        v12 = v7 + 2;
        do
        {
          v13 = v12;
          v14 = v6;
          do
          {
            *(v13 - 2) = ***a1;
            *(v13 - 1) = ***a1;
            *v13 = ***a1;
            v13[1] = ***a1;
            v13 = (v13 + v8);
            --v14;
          }

          while (v14);
          *(v13 - 2) = ***a1;
          *(v13 - 1) = ***a1;
          *v13 = ***a1;
          v13[1] = ***a1;
          v7 += v10;
          ++v11;
          v12 += v10;
        }

        while (v11 != v9);
        goto LABEL_18;
      }

      v15 = 2 * v10;
      do
      {
        *v7 = ***a1;
        v7[1] = ***a1;
        v7[2] = ***a1;
        v7[3] = ***a1;
        v7 = (v7 + v15);
        --v9;
      }

      while (v9);
    }

    if (!v6)
    {
LABEL_19:
      *v7 = ***a1;
      v7[1] = ***a1;
      v7[2] = ***a1;
      v16 = **a1;
      result = *v16;
      v7[3] = *v16;
      return result;
    }

    do
    {
LABEL_18:
      *v7 = ***a1;
      v7[1] = ***a1;
      v7[2] = ***a1;
      v7[3] = ***a1;
      v7 = (v7 + v8);
      --v6;
    }

    while (v6);
    goto LABEL_19;
  }

  return result;
}

__int16 sub_255AF67EC@<H0>(uint64_t *a1@<X0>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 20) == 1 && *(v2 + 20) == 1;
  if (!v3)
  {
    v191 = 0;
    if (*(v1 + 8))
    {
      v4 = *(v1 + 12) == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && *(v1 + 16) != 0)
    {
      v192 = &v191;
      LOWORD(v6) = sub_255AF711C(&v192, v1, v2);
    }

    return v6;
  }

  v7 = *(v1 + 24);
  v8 = *(v2 + 24);
  v9 = *(v1 + 8);
  if (v7 == v8 && v7 == v9)
  {
    v63 = *(v1 + 28);
    v64 = *(v2 + 28);
    v65 = *(v1 + 12);
    v66 = (v65 * v7);
    if (v63 != v64 || v63 != v66)
    {
      v68 = *(v1 + 16);
      if (v7)
      {
        v69 = v65 == 0;
      }

      else
      {
        v69 = 1;
      }

      if (v69 || v68 == 0)
      {
        return v6;
      }

      v71 = *v1;
      v72 = *v2;
      if (v68 == 1)
      {
LABEL_79:
        if (!v66)
        {
          return v6;
        }

        v73 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v73 < 3 || (v72 - v71) < 0x20)
        {
          v166 = v72;
          v167 = v71;
          goto LABEL_197;
        }

        v74 = v73 + 1;
        if (v73 >= 0xF)
        {
          v75 = v74 & 0xFFFFFFFFFFFFFFF0;
          v168 = (v71 + 8);
          v169 = v72 + 8;
          v170 = v74 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v6 = *(v168 - 1);
            v171 = *v168;
            *(v169 - 1) = v6;
            *v169 = v171;
            v168 += 2;
            v169 += 2;
            v170 -= 16;
          }

          while (v170);
          if (v74 == v75)
          {
            return v6;
          }

          if ((v74 & 0xC) == 0)
          {
            v167 = &v71[v75];
            v166 = &v72[v75];
            goto LABEL_197;
          }
        }

        else
        {
          v75 = 0;
        }

        v172 = v74 & 0xFFFFFFFFFFFFFFFCLL;
        v166 = &v72[v172];
        v167 = &v71[v172];
        v173 = &v71[v75];
        v174 = &v72[v75];
        v175 = v75 - (v74 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v176 = *v173++;
          LOWORD(v6) = v176;
          *v174 = v176;
          v174 += 4;
          v175 += 4;
        }

        while (v175);
        if (v74 == (v74 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v6;
        }

LABEL_197:
        v182 = &v71[v66];
        do
        {
          v183 = *v167++;
          LOWORD(v6) = v183;
          *v166++ = v183;
        }

        while (v167 != v182);
        return v6;
      }

      if (!v66)
      {
        return v6;
      }

      v83 = 0;
      v84 = v68 - 2;
      v85 = (v66 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v86 = v85 + 1;
      v87 = v72 >= &v71[v66 + v63 * v84] || v71 >= &v72[v66 + v64 * v84];
      v88 = v86 & 0xFFFFFFFFFFFFFFF0;
      v89 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v90 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      v91 = !v87;
      v92 = 2 * v63;
      v93 = 2 * v64;
      while (1)
      {
        v94 = v72;
        v95 = v71;
        if (!((v85 < 3) | v91 & 1))
        {
          if (v85 < 0xF)
          {
            v96 = 0;
LABEL_105:
            v94 = &v72[v90];
            v95 = &v71[v90];
            v101 = v96;
            v102 = v96 - v89;
            do
            {
              *&v6 = *&v71[v101];
              *&v72[v101] = v6;
              v101 += 4;
              v102 += 4;
            }

            while (v102);
            if (v86 == v89)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }

          v97 = 0;
          v98 = v86 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v99 = &v72[v97];
            v6 = *&v71[v97];
            v100 = *&v71[v97 + 8];
            *v99 = v6;
            *(v99 + 1) = v100;
            v97 += 16;
            v98 -= 16;
          }

          while (v98);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_97;
          }

          v96 = v86 & 0xFFFFFFFFFFFFFFF0;
          if ((v86 & 0xC) != 0)
          {
            goto LABEL_105;
          }

          v95 = &v71[v88];
          v94 = &v72[v88];
        }

        do
        {
LABEL_110:
          v103 = *v95++;
          LOWORD(v6) = v103;
          *v94++ = v103;
        }

        while (v95 != &v71[v66]);
LABEL_97:
        v71 = (v71 + v92);
        v72 = (v72 + v93);
        v3 = v83++ == v84;
        if (v3)
        {
          goto LABEL_79;
        }
      }
    }

    v76 = (*(v1 + 16) * v63);
    if (!v76)
    {
      return v6;
    }

    v77 = *v1;
    v78 = *v2;
    v79 = (v76 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v79 < 3)
    {
      v80 = *v1;
      goto LABEL_193;
    }

    v80 = *v1;
    if ((v78 - v77) < 0x20)
    {
      goto LABEL_193;
    }

    v81 = v79 + 1;
    if (v79 >= 0xF)
    {
      v82 = v81 & 0xFFFFFFFFFFFFFFF0;
      v156 = (v77 + 8);
      v157 = v78 + 8;
      v158 = v81 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v156 - 1);
        v159 = *v156;
        *(v157 - 1) = v6;
        *v157 = v159;
        v156 += 2;
        v157 += 2;
        v158 -= 16;
      }

      while (v158);
      if (v81 == v82)
      {
        return v6;
      }

      if ((v81 & 0xC) == 0)
      {
        v80 = &v77[v82];
        v78 += v82;
        goto LABEL_193;
      }
    }

    else
    {
      v82 = 0;
    }

    v160 = v81 & 0xFFFFFFFFFFFFFFFCLL;
    v161 = &v78[v160];
    v80 = &v77[v160];
    v162 = &v77[v82];
    v163 = &v78[v82];
    v164 = v82 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      LOWORD(v6) = v165;
      *v163 = v165;
      v163 += 4;
      v164 += 4;
    }

    while (v164);
    v78 = v161;
    if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_193:
    v180 = &v77[v76];
    do
    {
      v181 = *v80++;
      LOWORD(v6) = v181;
      *v78++ = v181;
    }

    while (v80 != v180);
    return v6;
  }

  v12 = *(v1 + 12);
  v11 = *(v1 + 16);
  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v11 != 0)
  {
    v15 = v12 - 1;
    v16 = *v1;
    v17 = *v2;
    v18 = 2 * v8;
    v19 = v11 - 1;
    v186 = *(v2 + 24);
    v187 = *(v1 + 24);
    v185 = *(v1 + 12);
    if (v11 != 1)
    {
      v20 = *(v2 + 28);
      v21 = *(v1 + 28);
      if (v12 != 1)
      {
        v22 = 0;
        v23 = 2 * v7;
        v190 = v18 + v17 - v16 - 2 * v7;
        v189 = 2 * (v20 - v21);
        v188 = v18 - 2 * v7;
        v24 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v25 = v24 + 1;
        v26 = v12 - 2;
        v27 = 2 * v20;
        v28 = 2 * v21;
        v29 = v17 + 2 * (v9 + v8 * v26);
        v30 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
        v31 = v30;
        v32 = (v24 + 1) & 0xC;
        v33 = (v24 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v34 = v33;
        v35 = v16 + 2 * (v9 + v7 * v26);
        while (1)
        {
          v36 = 0;
          v38 = v17 < v35 + v28 * v22 && v16 < v29 + v27 * v22;
          v39 = v17;
          v40 = v16;
          do
          {
            v41 = v36;
            v42 = v39;
            v43 = v40;
            if (v24 < 3 || v38)
            {
              goto LABEL_48;
            }

            if (v24 >= 0xF)
            {
              v45 = 0;
              v46 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v47 = &v39[v45];
                v48 = *&v40[v45 + 8];
                *v47 = *&v40[v45];
                v47[1] = v48;
                v45 += 16;
                v46 -= 16;
              }

              while (v46);
              if (v25 == v30)
              {
                goto LABEL_35;
              }

              v44 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v43 = &v40[v31];
                v42 = &v39[v31];
                do
                {
LABEL_48:
                  v51 = *v43++;
                  *v42++ = v51;
                }

                while (v43 != &v40[v9]);
                goto LABEL_35;
              }
            }

            else
            {
              v44 = 0;
            }

            v42 = &v39[v34];
            v43 = &v40[v34];
            v49 = v44;
            v50 = v44 - v33;
            do
            {
              *&v39[v49] = *&v40[v49];
              v49 += 4;
              v50 += 4;
            }

            while (v50);
            if (v25 != v33)
            {
              goto LABEL_48;
            }

LABEL_35:
            v40 = (v40 + v23);
            v39 = (v39 + v18);
            v36 = v41 + 1;
          }

          while (v41 + 1 != v15);
          if (v24 < 3 || (v190 + v189 * v22 + v188 * v41) < 0x20)
          {
            v52 = v39;
            v53 = v40;
            goto LABEL_53;
          }

          if (v24 >= 0xF)
          {
            v57 = 0;
            v58 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v59 = &v39[v57];
              v60 = *&v40[v57 + 8];
              *v59 = *&v40[v57];
              v59[1] = v60;
              v57 += 16;
              v58 -= 16;
            }

            while (v58);
            if (v25 != v30)
            {
              v56 = (v24 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v32)
              {
                v53 = &v40[v31];
                v52 = &v39[v31];
                goto LABEL_53;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v56 = 0;
LABEL_62:
            v52 = &v39[v34];
            v53 = &v40[v34];
            v61 = v56;
            v62 = v56 - v33;
            do
            {
              *&v39[v61] = *&v40[v61];
              v61 += 4;
              v62 += 4;
            }

            while (v62);
            if (v25 != v33)
            {
LABEL_53:
              v54 = &v40[v9];
              do
              {
                v55 = *v53++;
                *v52++ = v55;
              }

              while (v53 != v54);
            }
          }

          v16 += v28;
          v17 += v27;
          if (++v22 == v19)
          {
            goto LABEL_134;
          }
        }
      }

      v104 = 0;
      v105 = v11 - 2;
      v106 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v107 = v106 + 1;
      v108 = v17 >= v16 + 2 * (v9 + v21 * v105) || v16 >= v17 + 2 * (v9 + v20 * v105);
      v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFF0);
      v110 = v107 & 0xFFFFFFFFFFFFFFFCLL;
      v111 = 2 * (v107 & 0xFFFFFFFFFFFFFFFCLL);
      v112 = !v108;
      v113 = 2 * v21;
      v114 = 2 * v20;
      do
      {
        v115 = v17;
        v116 = v16;
        if (!((v106 < 3) | v112 & 1))
        {
          if (v106 < 0xF)
          {
            v117 = 0;
LABEL_127:
            v115 = (v17 + v111);
            v116 = (v16 + v111);
            v122 = 2 * v117;
            v123 = v117 - v110;
            do
            {
              *(v17 + v122) = *(v16 + v122);
              v122 += 8;
              v123 += 4;
            }

            while (v123);
            if (v107 == v110)
            {
              goto LABEL_119;
            }

            goto LABEL_132;
          }

          v118 = 0;
          v119 = v107 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v120 = (v17 + v118);
            v121 = *(v16 + v118 + 16);
            *v120 = *(v16 + v118);
            v120[1] = v121;
            v118 += 32;
            v119 -= 16;
          }

          while (v119);
          if (v107 == (v107 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_119;
          }

          v117 = v107 & 0xFFFFFFFFFFFFFFF0;
          if ((v107 & 0xC) != 0)
          {
            goto LABEL_127;
          }

          v116 = (v16 + v109);
          v115 = (v17 + v109);
        }

        do
        {
LABEL_132:
          v124 = *v116++;
          *v115++ = v124;
        }

        while (v116 != (v16 + 2 * v9));
LABEL_119:
        v16 += v113;
        v17 += v114;
        ++v104;
      }

      while (v104 != v19);
    }

LABEL_134:
    if (v15)
    {
      v125 = 0;
      v126 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v127 = v126 + 1;
      v129 = v17 < v16 + 2 * (v9 + v187 * (v185 - 2)) && v16 < v17 + 2 * (v9 + v186 * (v185 - 2));
      v130 = 2 * (v127 & 0xFFFFFFFFFFFFFFF0);
      v131 = 2 * (v127 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v132 = v17;
        v133 = v16;
        if (v126 >= 3 && !v129)
        {
          if (v126 < 0xF)
          {
            v134 = 0;
LABEL_150:
            v132 = (v17 + v131);
            v133 = (v16 + v131);
            v139 = 2 * v134;
            v140 = v134 - (v127 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *(v17 + v139) = *(v16 + v139);
              v139 += 8;
              v140 += 4;
            }

            while (v140);
            if (v127 == (v127 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_142;
            }

            goto LABEL_155;
          }

          v135 = 0;
          v136 = v127 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v137 = (v17 + v135);
            v138 = *(v16 + v135 + 16);
            *v137 = *(v16 + v135);
            v137[1] = v138;
            v135 += 32;
            v136 -= 16;
          }

          while (v136);
          if (v127 == (v127 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_142;
          }

          v134 = v127 & 0xFFFFFFFFFFFFFFF0;
          if ((v127 & 0xC) != 0)
          {
            goto LABEL_150;
          }

          v133 = (v16 + v130);
          v132 = (v17 + v130);
        }

        do
        {
LABEL_155:
          v141 = *v133++;
          *v132++ = v141;
        }

        while (v133 != (v16 + 2 * v9));
LABEL_142:
        v16 += 2 * v187;
        v17 += v18;
        ++v125;
      }

      while (v125 != v15);
    }

    v142 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v142 < 3 || v17 - v16 < 0x20)
    {
      v145 = v17;
      v146 = v16;
      goto LABEL_189;
    }

    v143 = v142 + 1;
    if (v142 >= 0xF)
    {
      v144 = v143 & 0xFFFFFFFFFFFFFFF0;
      v147 = (v16 + 16);
      v148 = (v17 + 16);
      v149 = v143 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v6 = *(v147 - 1);
        v150 = *v147;
        *(v148 - 1) = v6;
        *v148 = v150;
        v147 += 2;
        v148 += 2;
        v149 -= 16;
      }

      while (v149);
      if (v143 == v144)
      {
        return v6;
      }

      if ((v143 & 0xC) == 0)
      {
        v177 = 2 * v144;
        v146 = (v16 + v177);
        v145 = (v17 + v177);
        goto LABEL_189;
      }
    }

    else
    {
      v144 = 0;
    }

    v151 = 2 * (v143 & 0xFFFFFFFFFFFFFFFCLL);
    v145 = (v17 + v151);
    v146 = (v16 + v151);
    v152 = (v16 + 2 * v144);
    v153 = (v17 + 2 * v144);
    v154 = v144 - (v143 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v155 = *v152++;
      LOWORD(v6) = v155;
      *v153++ = v155;
      v154 += 4;
    }

    while (v154);
    if (v143 == (v143 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v6;
    }

LABEL_189:
    v178 = (v16 + 2 * v9);
    do
    {
      v179 = *v146++;
      LOWORD(v6) = v179;
      *v145++ = v179;
    }

    while (v146 != v178);
  }

  return v6;
}

__int16 sub_255AF711C@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v9 + 2;
        v17 = v8 + 2;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 2) = *(v18 - 2);
            *(v19 - 1) = *(v18 - 1);
            *v19 = *v18;
            v19[1] = v18[1];
            v19 = (v19 + v11);
            v18 = (v18 + v10);
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v8 += v14;
          v9 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_18;
      }

      v21 = 2 * v14;
      v22 = 2 * v13;
      do
      {
        *v9 = *v8;
        v9[1] = v8[1];
        v9[2] = v8[2];
        v9[3] = v8[3];
        v8 = (v8 + v21);
        v9 = (v9 + v22);
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      result = v8[3];
      v9[3] = result;
      return result;
    }

    do
    {
LABEL_18:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_255AF7284(uint64_t result, int32x2_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3 != 1)
  {
    v11 = *(v2 + 8);
    v12 = *(v2 + 12);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return result;
    }

    v14 = *(result + 8);
    v15 = v11 - 1;
    v16 = *v2;
    v17 = 4 * v3;
    v18 = v12 - 1;
    if (v18)
    {
      v19 = *(v2 + 20);
      if (!v15)
      {
        v48 = *v14;
        do
        {
          v16->i32[0] = v48;
          v16 = (v16 + 4 * v19);
          --v18;
        }

        while (v18);
        goto LABEL_50;
      }

      v20 = 0;
      v21 = *v14;
      v22 = 4 * v19;
      do
      {
        v23 = v16;
        v24 = v15;
        do
        {
          v23->i32[0] = v21;
          v23 = (v23 + v17);
          --v24;
        }

        while (v24);
        v21 = *v14;
        v23->i32[0] = *v14;
        v16 = (v16 + v22);
        ++v20;
      }

      while (v20 != v18);
    }

    else
    {
      v21 = *v14;
      if (!v15)
      {
LABEL_51:
        v16->i32[0] = v21;
        return result;
      }
    }

    do
    {
      v16->i32[0] = v21;
      v16 = (v16 + v17);
      --v15;
    }

    while (v15);
LABEL_50:
    v21 = *v14;
    goto LABEL_51;
  }

  v4 = *(v2 + 20);
  v5 = *(v2 + 8);
  if (v4 == v5)
  {
    v6 = *(v2 + 12);
    v7 = (v6 * v4);
    if (!v7)
    {
      return result;
    }

    v8 = *v2;
    a2.i32[0] = **(result + 8);
    if (v7 < 8)
    {
      v9 = (v6 * v4);
      v10 = *v2;
LABEL_39:
      v43 = v9 + 1;
      do
      {
        v10->i32[0] = a2.i32[0];
        v10 = (v10 + 4);
        --v43;
      }

      while (v43 > 1);
      return result;
    }

    v9 = (v6 * v4) & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v40 = vdupq_lane_s32(a2, 0);
    v41 = v8 + 1;
    v42 = v7 & 0xFFFFFFF8;
    do
    {
      v41[-1] = v40;
      *v41 = v40;
      v41 += 2;
      v42 -= 8;
    }

    while (v42);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v25 = *(v2 + 12);
    if (v5)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = *(result + 8);
      v28 = *v2;
      v29 = v25 - 1;
      if (v29)
      {
        v30 = 0;
        v31 = v28 + 1;
        result = 4 * v4;
        do
        {
          a2.i32[0] = *v27;
          v32 = v5;
          v33 = v28;
          if (v5 < 8)
          {
            goto LABEL_28;
          }

          v33 = (v28 + 4 * (v5 & 0xFFFFFFF8));
          v34 = vdupq_lane_s32(a2, 0);
          v35 = v5 & 0xFFFFFFF8;
          v36 = v31;
          do
          {
            v36[-1] = v34;
            *v36 = v34;
            v36 += 2;
            v35 -= 8;
          }

          while (v35);
          v32 = v5 & 7;
          if ((v5 & 0xFFFFFFF8) != v5)
          {
LABEL_28:
            v37 = v32 + 1;
            do
            {
              v33->i32[0] = a2.i32[0];
              v33 = (v33 + 4);
              --v37;
            }

            while (v37 > 1);
          }

          v28 = (v28 + 4 * v4);
          ++v30;
          v31 = (v31 + result);
        }

        while (v30 != v29);
      }

      a2.i32[0] = *v27;
      v38 = v5 - (v5 != 0) + 1;
      if (v38 >= 8)
      {
        v5 -= v38 & 0xFFFFFFFFFFFFFFF8;
        v39 = (v28 + 4 * (v38 & 0xFFFFFFFFFFFFFFF8));
        v44 = vdupq_lane_s32(a2, 0);
        v45 = v28 + 1;
        v46 = v38 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45[-1] = v44;
          *v45 = v44;
          v45 += 2;
          v46 -= 8;
        }

        while (v46);
        if (v38 == (v38 & 0xFFFFFFFFFFFFFFF8))
        {
          return result;
        }
      }

      else
      {
        v39 = v28;
      }

      v47 = v5 + 1;
      do
      {
        v39->i32[0] = a2.i32[0];
        v39 = (v39 + 4);
        --v47;
      }

      while (v47 > 1);
    }
  }

  return result;
}

float sub_255AF74DC(char **a1, char **a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v22 = *(a1 + 5);
    v23 = *(a2 + 5);
    v24 = *(a1 + 2);
    if (v22 == v23 && v22 == v24)
    {
      v38 = *(a1 + 3) * v22;
      if (!v38)
      {
        return result;
      }

      v36 = 4 * v38;
      v39 = *a2;
      v35 = *a1;
      v34 = v39;
    }

    else
    {
      v26 = *(a1 + 3);
      if (v24)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return result;
      }

      v28 = *a1;
      v29 = *a2;
      v30 = 4 * v24;
      v31 = v26 - 1;
      if (v26 != 1)
      {
        v32 = 4 * v22;
        v33 = 4 * v23;
        do
        {
          memmove(v29, v28, v30);
          v28 += v32;
          v29 += v33;
          --v31;
        }

        while (v31);
      }

      v34 = v29;
      v35 = v28;
      v36 = v30;
    }

    memmove(v34, v35, v36);
    return result;
  }

  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *a1;
    v10 = *a2;
    v11 = 4 * v2;
    v12 = 4 * v3;
    v13 = v6 - 1;
    if (v13)
    {
      v14 = *(a2 + 5);
      v15 = *(a1 + 5);
      if (!v8)
      {
        do
        {
          *v10 = *v9;
          v9 += v15;
          v10 += 4 * v14;
          --v13;
        }

        while (v13);
        goto LABEL_38;
      }

      v16 = 0;
      v17 = 4 * v15;
      v18 = 4 * v14;
      do
      {
        v19 = v10;
        v20 = v9;
        v21 = v8;
        do
        {
          *v19 = *v20;
          v20 = (v20 + v11);
          v19 = (v19 + v12);
          --v21;
        }

        while (v21);
        *v19 = *v20;
        v9 = (v9 + v17);
        v10 += v18;
        ++v16;
      }

      while (v16 != v13);
    }

    else if (!v8)
    {
LABEL_38:
      result = *v9;
      *v10 = *v9;
      return result;
    }

    do
    {
      *v10 = *v9;
      v9 = (v9 + v11);
      v10 += v12;
      --v8;
    }

    while (v8);
    goto LABEL_38;
  }

  return result;
}

float sub_255AF76C0(void *a1, double a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return *&a2;
    }

    v15 = a1[1];
    v16 = v11 - 1;
    v17 = *v2;
    v18 = 4 * *(v2 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v2 + 28);
      if (!v16)
      {
        do
        {
          v43 = *v15;
          v17->i32[0] = *v15;
          v17->i32[1] = v43;
          v17 = (v17 + 4 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_45;
      }

      v21 = 0;
      v22 = &v17->i32[1];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 1) = *v15;
          *v23 = v25;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v26 = *v15;
        *(v23 - 1) = *v15;
        *v23 = v26;
        v17 = (v17 + 4 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_45:
      LODWORD(a2) = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = LODWORD(a2);
      return *&a2;
    }

    do
    {
      v42 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v42;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_45;
  }

  v3 = *(v2 + 24);
  if (v3 != *(v2 + 8))
  {
    v27 = a1[1];
    v55[0] = *a1;
    v55[1] = v27;
    sub_255AF7974(v55, *&a2);
    return *&a2;
  }

  v4 = *(v2 + 28);
  v5 = *(v2 + 12);
  v6 = (v5 * v3);
  if (v4 == v6)
  {
    v7 = (*(v2 + 16) * v4);
    if (!v7)
    {
      return *&a2;
    }

    v8 = *v2;
    LODWORD(a2) = *a1[1];
    if (v7 < 8)
    {
      v9 = v7;
      v10 = *v2;
LABEL_52:
      v49 = v9 + 1;
      do
      {
        v10->i32[0] = LODWORD(a2);
        v10 = (v10 + 4);
        --v49;
      }

      while (v49 > 1);
      return *&a2;
    }

    v9 = v7 & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v46 = vdupq_lane_s32(*&a2, 0);
    v47 = v8 + 1;
    v48 = v7 & 0xFFFFFFF8;
    do
    {
      v47[-1] = v46;
      *v47 = v46;
      v47 += 2;
      v48 -= 8;
    }

    while (v48);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v28 = *(v2 + 16);
    if (v3)
    {
      v29 = v5 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29 && v28 != 0)
    {
      v31 = a1[1];
      v32 = *v2;
      v33 = v28 - 1;
      if (v33)
      {
        if (!v6)
        {
          return *&a2;
        }

        v34 = 0;
        v35 = v32 + 1;
        do
        {
          LODWORD(a2) = *v31;
          v36 = v6;
          v37 = v32;
          if (v6 < 8)
          {
            goto LABEL_38;
          }

          v37 = (v32 + 4 * (v6 & 0xFFFFFFF8));
          v38 = vdupq_lane_s32(*&a2, 0);
          v39 = v6 & 0xFFFFFFF8;
          v40 = v35;
          do
          {
            v40[-1] = v38;
            *v40 = v38;
            v40 += 2;
            v39 -= 8;
          }

          while (v39);
          v36 = v6 & 7;
          if ((v6 & 0xFFFFFFF8) != v6)
          {
LABEL_38:
            v41 = v36 + 1;
            do
            {
              v37->i32[0] = LODWORD(a2);
              v37 = (v37 + 4);
              --v41;
            }

            while (v41 > 1);
          }

          v32 = (v32 + 4 * v4);
          ++v34;
          v35 = (v35 + 4 * v4);
        }

        while (v34 != v33);
      }

      if (!v6)
      {
        return *&a2;
      }

      LODWORD(a2) = *v31;
      if (v6 >= 8)
      {
        v44 = v6 & 7;
        v45 = (v32 + 4 * (v6 & 0xFFFFFFF8));
        v50 = vdupq_lane_s32(*&a2, 0);
        v51 = v32 + 1;
        v52 = v6 & 0xFFFFFFF8;
        do
        {
          v51[-1] = v50;
          *v51 = v50;
          v51 += 2;
          v52 -= 8;
        }

        while (v52);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          return *&a2;
        }
      }

      else
      {
        v44 = v6;
        v45 = v32;
      }

      v53 = v44 + 1;
      do
      {
        v45->i32[0] = LODWORD(a2);
        v45 = (v45 + 4);
        --v53;
      }

      while (v53 > 1);
    }
  }

  return *&a2;
}

unint64_t sub_255AF7974(unint64_t result, int32x2_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 12);
  v5 = *(*result + 16);
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = *(result + 8);
    v9 = v4 - 1;
    v10 = *(v2 + 6);
    v11 = *v2;
    v12 = 4 * v10;
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 7);
      v15 = v3 & 0xFFFFFFF8;
      v16 = 4 * v15;
      LODWORD(result) = 0;
      v17 = v11 + 1;
      if (v9)
      {
        v18 = 4 * v14;
        do
        {
          v19 = 0;
          v20 = v11;
          v21 = v17;
          v22 = v11;
          do
          {
            a2.i32[0] = *v8;
            v23 = v3;
            v24 = v22;
            if (v3 < 8)
            {
              goto LABEL_18;
            }

            v24 = (v22 + v16);
            v25 = vdupq_lane_s32(a2, 0);
            v26 = v3 & 0xFFFFFFF8;
            v27 = v21;
            do
            {
              v27[-1] = v25;
              *v27 = v25;
              v27 += 2;
              v26 -= 8;
            }

            while (v26);
            v23 = v3 & 7;
            if (v15 != v3)
            {
LABEL_18:
              v28 = v23 + 1;
              do
              {
                v24->i32[0] = a2.i32[0];
                v24 = (v24 + 4);
                --v28;
              }

              while (v28 > 1);
            }

            v22 = (v22 + 4 * v10);
            ++v19;
            v21 = (v21 + v12);
            v20 = (v20 + v12);
          }

          while (v19 != v9);
          a2.i32[0] = *v8;
          v29 = v3;
          if (v3 < 8)
          {
            goto LABEL_25;
          }

          v30 = 0;
          v22 = (v22 + v16);
          v31 = vdupq_lane_s32(a2, 0);
          do
          {
            v20[v30 / 0x10] = v31;
            v21[v30 / 0x10] = v31;
            v30 += 32;
          }

          while (v16 != v30);
          v29 = v3 & 7;
          if (v15 != v3)
          {
LABEL_25:
            v32 = v29 + 1;
            do
            {
              v22->i32[0] = a2.i32[0];
              v22 = (v22 + 4);
              --v32;
            }

            while (v32 > 1);
          }

          v11 = (v11 + v18);
          result = (result + 1);
          v17 = (v17 + v18);
        }

        while (result != v13);
      }

      else
      {
        do
        {
          a2.i32[0] = *v8;
          v33 = v3;
          v34 = v11;
          if (v3 < 8)
          {
            goto LABEL_34;
          }

          v34 = (v11 + v16);
          v35 = vdupq_lane_s32(a2, 0);
          v36 = v3 & 0xFFFFFFF8;
          v37 = v17;
          do
          {
            v37[-1] = v35;
            *v37 = v35;
            v37 += 2;
            v36 -= 8;
          }

          while (v36);
          v33 = v3 & 7;
          if (v15 != v3)
          {
LABEL_34:
            v38 = v33 + 1;
            do
            {
              v34->i32[0] = a2.i32[0];
              v34 = (v34 + 4);
              --v38;
            }

            while (v38 > 1);
          }

          v11 = (v11 + 4 * v14);
          result = (result + 1);
          v17 = (v17 + 4 * v14);
        }

        while (result != v13);
      }
    }

    if (v9)
    {
      v39 = 0;
      v40 = v3 - (v3 != 0) + 1;
      result = 4 * (v40 & 0xFFFFFFFFFFFFFFF8);
      v41 = v11 + 1;
      do
      {
        a2.i32[0] = *v8;
        v42 = v3;
        v43 = v11;
        if (v40 < 8)
        {
          goto LABEL_44;
        }

        v43 = (v11 + result);
        v44 = vdupq_lane_s32(a2, 0);
        v45 = v40 & 0xFFFFFFFFFFFFFFF8;
        v46 = v41;
        do
        {
          v46[-1] = v44;
          *v46 = v44;
          v46 += 2;
          v45 -= 8;
        }

        while (v45);
        v42 = v3 - (v40 & 0xFFFFFFFFFFFFFFF8);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_44:
          v47 = v42 + 1;
          do
          {
            v43->i32[0] = a2.i32[0];
            v43 = (v43 + 4);
            --v47;
          }

          while (v47 > 1);
        }

        v11 = (v11 + 4 * v10);
        ++v39;
        v41 = (v41 + v12);
      }

      while (v39 != v9);
    }

    a2.i32[0] = *v8;
    v48 = v3 - (v3 != 0) + 1;
    if (v48 < 8)
    {
      v49 = v11;
LABEL_52:
      v53 = v3 + 1;
      do
      {
        v49->i32[0] = a2.i32[0];
        v49 = (v49 + 4);
        --v53;
      }

      while (v53 > 1);
      return result;
    }

    v3 -= v48 & 0xFFFFFFFFFFFFFFF8;
    v49 = (v11 + 4 * (v48 & 0xFFFFFFFFFFFFFFF8));
    v50 = vdupq_lane_s32(a2, 0);
    v51 = v11 + 1;
    v52 = v48 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 8;
    }

    while (v52);
    if (v48 != (v48 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_52;
    }
  }

  return result;
}

float sub_255AF7C3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == 1 && *(a2 + 20) == 1)
  {
    v23 = *(a1 + 24);
    v24 = *(a1 + 8);
    if (v23 != *(a2 + 24) || v23 != v24)
    {
      v45 = *(a1 + 8);
      if (v24)
      {
        v26 = *(a1 + 12) == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26 && *(a1 + 16) != 0)
      {
        sub_255AF7EB0(&v45, a1, a2);
      }

      return result;
    }

    v29 = *(a1 + 28);
    v30 = *(a2 + 28);
    v31 = *(a1 + 12);
    v32 = (v31 * v23);
    if (v29 == v30 && v29 == v32)
    {
      v43 = *(a1 + 16) * v29;
      if (!v43)
      {
        return result;
      }

      v40 = 4 * v43;
      v41 = *a2;
      v42 = *a1;
    }

    else
    {
      if (!v23)
      {
        return result;
      }

      if (!v31)
      {
        return result;
      }

      v34 = *(a1 + 16);
      if (!v34)
      {
        return result;
      }

      v35 = *a1;
      v36 = *a2;
      v37 = v34 - 1;
      if (v34 != 1)
      {
        if (!v32)
        {
          return result;
        }

        v38 = 4 * v29;
        v39 = 4 * v30;
        do
        {
          memmove(v36, v35, 4 * v32);
          v35 += v38;
          v36 += v39;
          --v37;
        }

        while (v37);
      }

      if (!v32)
      {
        return result;
      }

      v40 = 4 * v32;
      v41 = v36;
      v42 = v35;
    }

    memmove(v41, v42, v40);
    return result;
  }

  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 != 0)
  {
    v9 = v5 - 1;
    v10 = *a1;
    v11 = *a2;
    v12 = 4 * *(a1 + 24);
    v13 = 4 * *(a2 + 24);
    v14 = v6 - 1;
    if (v14)
    {
      v15 = *(a2 + 28);
      v16 = *(a1 + 28);
      if (!v9)
      {
        v44 = 4 * v15;
        do
        {
          *v11 = *v10;
          *(v11 + 1) = *(v10 + 1);
          v10 += 4 * v16;
          v11 += v44;
          --v14;
        }

        while (v14);
        goto LABEL_54;
      }

      v17 = 0;
      v18 = v10 + 4;
      v19 = v11 + 4;
      do
      {
        v20 = v19;
        v21 = v18;
        v22 = v9;
        do
        {
          *(v20 - 1) = *(v21 - 1);
          *v20 = *v21;
          v21 = (v21 + v12);
          v20 = (v20 + v13);
          --v22;
        }

        while (v22);
        *(v20 - 1) = *(v21 - 1);
        *v20 = *v21;
        v10 += 4 * v16;
        v11 += 4 * v15;
        ++v17;
        v18 += 4 * v16;
        v19 += 4 * v15;
      }

      while (v17 != v14);
    }

    else if (!v9)
    {
LABEL_54:
      *v11 = *v10;
      result = *(v10 + 1);
      *(v11 + 1) = result;
      return result;
    }

    do
    {
      *v11 = *v10;
      *(v11 + 1) = *(v10 + 1);
      v10 += v12;
      v11 += v13;
      --v9;
    }

    while (v9);
    goto LABEL_54;
  }

  return result;
}

uint64_t *sub_255AF7EB0(uint64_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 6);
    v10 = *(a3 + 6);
    v11 = *a2;
    v12 = *a3;
    v35 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 7);
      v14 = *(a2 + 7);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v30 = 0;
        v31 = *(a2 + 3);
        v25 = v4 - 2;
LABEL_27:
        result = memmove(v12, v11, 4 * v15);
        while (v25)
        {
          v15 = *v7;
          --v25;
          v11 += 4 * v14;
          v12 += 4 * v13;
          if (*v7)
          {
            goto LABEL_27;
          }
        }

        v11 += 4 * v14;
        v12 += 4 * v13;
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v30 = v3 - 1;
        v31 = *(a2 + 3);
        v16 = 0;
        v32 = v3 - 2;
        v28 = *(a3 + 6);
        v29 = *(a2 + 6);
        v17 = 4 * v9;
        v18 = &v11[4 * v9];
        v19 = 4 * v14;
        v20 = 4 * v10;
        v21 = &v12[4 * v10];
        v33 = 4 * v13;
        v34 = v19;
LABEL_14:
        v36 = v18;
        v22 = 0;
        v23 = 0;
        v24 = v32;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v22], &v11[v23], 4 * v15);
        }

        while (v24)
        {
          v15 = *v7;
          --v24;
          v23 += v17;
          v22 += v20;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        v18 = v36;
        if (*v7)
        {
          result = memmove(&v21[v22], &v36[v23], 4 * *v7);
        }

        while (1)
        {
          v11 += v34;
          v12 += v33;
          if (++v16 == v35)
          {
            break;
          }

          v15 = *v7;
          v18 += v34;
          v21 += v33;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v10 = v28;
        v9 = v29;
      }

      v8 = v30;
      v3 = v31;
    }

    v26 = *v7;
    if (v8)
    {
      if (!v26)
      {
        return result;
      }

      v27 = v3 - 2;
LABEL_36:
      result = memmove(v12, v11, 4 * v26);
      while (v27)
      {
        v26 = *v7;
        --v27;
        v11 += 4 * v9;
        v12 += 4 * v10;
        if (*v7)
        {
          goto LABEL_36;
        }
      }

      v26 = *v7;
      v11 += 4 * v9;
      v12 += 4 * v10;
    }

    if (v26)
    {

      return memmove(v12, v11, 4 * v26);
    }
  }

  return result;
}

float sub_255AF80F8(void *a1, double a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return *&a2;
    }

    v15 = a1[1];
    v16 = v11 - 1;
    v17 = *v2;
    v18 = 4 * *(v2 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v2 + 28);
      if (!v16)
      {
        do
        {
          v46 = *v15;
          v17->i32[0] = *v15;
          v17->i32[1] = v46;
          v47 = *v15;
          v17->i32[2] = *v15;
          v17->i32[3] = v47;
          v17 = (v17 + 4 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_45;
      }

      v21 = 0;
      v22 = &v17->i32[2];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 2) = *v15;
          *(v23 - 1) = v25;
          v26 = *v15;
          *v23 = *v15;
          v23[1] = v26;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v27 = *v15;
        *(v23 - 2) = *v15;
        *(v23 - 1) = v27;
        v28 = *v15;
        *v23 = *v15;
        v23[1] = v28;
        v17 = (v17 + 4 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_45:
      v48 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v48;
      LODWORD(a2) = *v15;
      v17->i32[2] = *v15;
      v17->i32[3] = LODWORD(a2);
      return *&a2;
    }

    do
    {
      v44 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v44;
      v45 = *v15;
      v17->i32[2] = *v15;
      v17->i32[3] = v45;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_45;
  }

  v3 = *(v2 + 24);
  if (v3 != *(v2 + 8))
  {
    v29 = a1[1];
    v60[0] = *a1;
    v60[1] = v29;
    sub_255AF7974(v60, *&a2);
    return *&a2;
  }

  v4 = *(v2 + 28);
  v5 = *(v2 + 12);
  v6 = (v5 * v3);
  if (v4 == v6)
  {
    v7 = (*(v2 + 16) * v4);
    if (!v7)
    {
      return *&a2;
    }

    v8 = *v2;
    LODWORD(a2) = *a1[1];
    if (v7 < 8)
    {
      v9 = v7;
      v10 = *v2;
LABEL_52:
      v54 = v9 + 1;
      do
      {
        v10->i32[0] = LODWORD(a2);
        v10 = (v10 + 4);
        --v54;
      }

      while (v54 > 1);
      return *&a2;
    }

    v9 = v7 & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v51 = vdupq_lane_s32(*&a2, 0);
    v52 = v8 + 1;
    v53 = v7 & 0xFFFFFFF8;
    do
    {
      v52[-1] = v51;
      *v52 = v51;
      v52 += 2;
      v53 -= 8;
    }

    while (v53);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v30 = *(v2 + 16);
    if (v3)
    {
      v31 = v5 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (!v31 && v30 != 0)
    {
      v33 = a1[1];
      v34 = *v2;
      v35 = v30 - 1;
      if (v35)
      {
        if (!v6)
        {
          return *&a2;
        }

        v36 = 0;
        v37 = v34 + 1;
        do
        {
          LODWORD(a2) = *v33;
          v38 = v6;
          v39 = v34;
          if (v6 < 8)
          {
            goto LABEL_38;
          }

          v39 = (v34 + 4 * (v6 & 0xFFFFFFF8));
          v40 = vdupq_lane_s32(*&a2, 0);
          v41 = v6 & 0xFFFFFFF8;
          v42 = v37;
          do
          {
            v42[-1] = v40;
            *v42 = v40;
            v42 += 2;
            v41 -= 8;
          }

          while (v41);
          v38 = v6 & 7;
          if ((v6 & 0xFFFFFFF8) != v6)
          {
LABEL_38:
            v43 = v38 + 1;
            do
            {
              v39->i32[0] = LODWORD(a2);
              v39 = (v39 + 4);
              --v43;
            }

            while (v43 > 1);
          }

          v34 = (v34 + 4 * v4);
          ++v36;
          v37 = (v37 + 4 * v4);
        }

        while (v36 != v35);
      }

      if (!v6)
      {
        return *&a2;
      }

      LODWORD(a2) = *v33;
      if (v6 >= 8)
      {
        v49 = v6 & 7;
        v50 = (v34 + 4 * (v6 & 0xFFFFFFF8));
        v55 = vdupq_lane_s32(*&a2, 0);
        v56 = v34 + 1;
        v57 = v6 & 0xFFFFFFF8;
        do
        {
          v56[-1] = v55;
          *v56 = v55;
          v56 += 2;
          v57 -= 8;
        }

        while (v57);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          return *&a2;
        }
      }

      else
      {
        v49 = v6;
        v50 = v34;
      }

      v58 = v49 + 1;
      do
      {
        v50->i32[0] = LODWORD(a2);
        v50 = (v50 + 4);
        --v58;
      }

      while (v58 > 1);
    }
  }

  return *&a2;
}

float sub_255AF83D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 4 * *(a2 + 24);
    v11 = 4 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
          v9[3] = v8[3];
          v8 += v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_19;
      }

      v15 = 0;
      v16 = v9 + 2;
      v17 = v8 + 2;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v19[1] = v18[1];
        v8 += v14;
        v9 += v13;
        ++v15;
        v16 += v13;
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      result = v8[3];
      v9[3] = result;
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }

  return result;
}

void sub_255AF8558(uint64_t a1, int a2, unint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      *v59 = &unk_2867C6040;
      if (a3 <= 0x20)
      {
        v3 = 32;
      }

      else
      {
        v3 = a3;
      }

      v4 = v3 << 32;
      if (!HIDWORD(a3))
      {
        v4 = 0x2000000000;
      }

      v49 = &unk_2867C8EC0;
      if (a3)
      {
        ++v4;
      }

      *v61 = a3;
      *&v61[8] = v4;
      sub_255ABBB08(&v49, 0, 1, v61, 0);
      v49 = &unk_2867C8EC0;
      operator new();
    case 2:
      v55 = &unk_2867C5DC0;
      if (a3 <= 0x10)
      {
        v19 = 16;
      }

      else
      {
        v19 = a3;
      }

      v20 = v19 << 32;
      if (!HIDWORD(a3))
      {
        v20 = 0x1000000000;
      }

      if (a3)
      {
        ++v20;
      }

      *&v58 = a3;
      *(&v58 + 1) = v20;
      LOWORD(v48) = 0;
      v49 = &unk_2867C8120;
      v50 = 0;
      sub_255AC1964(v51, &v58);
      if (v58 && DWORD1(v58))
      {
        *&v52 = sub_255AC1A9C(v51);
        *(&v52 + 1) = v21;
      }

      else
      {
        v52 = v58;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255AC2474(v61, &v49);
        sub_255AC2880(v59, &v49);
        v56 = v59;
        v57 = &v48;
        sub_255AF3560(&v56);
        sub_255B01ABC(v61);
      }

      v49 = &unk_2867C8C80;
      operator new();
    case 3:
      *v59 = &unk_2867C5B00;
      if (a3 <= 0x10)
      {
        v9 = 16;
      }

      else
      {
        v9 = a3;
      }

      v10 = v9 << 32;
      if (!HIDWORD(a3))
      {
        v10 = 0x1000000000;
      }

      v49 = &unk_2867C89B0;
      if (a3)
      {
        ++v10;
      }

      *v61 = a3;
      *&v61[8] = v10;
      sub_255AC6660(&v49, 0, 3, v61, 0);
      v49 = &unk_2867C89B0;
      operator new();
    case 4:
      v55 = &unk_2867C5A80;
      if (a3 <= 8)
      {
        v24 = 8;
      }

      else
      {
        v24 = a3;
      }

      v25 = v24 << 32;
      if (!HIDWORD(a3))
      {
        v25 = 0x800000000;
      }

      if (a3)
      {
        ++v25;
      }

      *&v58 = a3;
      *(&v58 + 1) = v25;
      v48 = 0;
      v49 = &unk_2867C8510;
      v50 = 0;
      sub_255ACA4A8(v51, &v58);
      if (v58 && DWORD1(v58))
      {
        *&v52 = sub_255ACA5E0(v51);
        *(&v52 + 1) = v26;
      }

      else
      {
        v52 = v58;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255ACAFB8(v61, &v49);
        sub_255ACB3C4(v59, &v49);
        v56 = v59;
        v57 = &v48;
        sub_255AF7284(&v56, v35);
        sub_255B01ABC(v61);
      }

      v49 = &unk_2867C8920;
      operator new();
    case 5:
      v55 = &unk_2867C5A20;
      v15 = 2 * (a3 != 0);
      LODWORD(v16) = v15 * a3;
      if ((v15 * a3) <= 0x20)
      {
        LODWORD(v16) = 32;
      }

      if (HIDWORD(a3))
      {
        v16 = v16;
      }

      else
      {
        v16 = 32;
      }

      *v61 = 2;
      *&v61[4] = a3;
      *v59 = *v61;
      *v61 = 1;
      *&v61[4] = v15 & 0x1FFFFFFFFLL | ((v16 >> 1) << 33);
      *&v59[12] = *v61;
      *&v59[8] = HIDWORD(a3);
      *&v59[20] = v16;
      *&v59[24] = a3;
      v60 = *&v61[4];
      LOBYTE(v48) = 0;
      v49 = &unk_2867C82D0;
      v50 = 0;
      sub_255ABCFFC(v51, v59);
      if (*&v59[24] && *&v59[28])
      {
        sub_255ABD134(&v52, v51);
      }

      else
      {
        v52 = *v59;
        v53 = *&v59[16];
        v54 = v60;
      }

      if (sub_255ABC258(&v49))
      {
        goto LABEL_177;
      }

      sub_255ABDBB8(&v56, &v49);
      sub_255ABDFC4(v61, &v49);
      *&v58 = v61;
      *(&v58 + 1) = &v48;
      if (v62 == 1)
      {
        sub_255AF2530(&v58);
LABEL_176:
        sub_255B01ABC(&v56);
LABEL_177:
        v49 = &unk_2867C8890;
        operator new();
      }

      if (!*&v61[8] || !*&v61[12] || !*&v61[16])
      {
        goto LABEL_176;
      }

      v38 = *&v61[12] - 1;
      v39 = v63;
      v40 = *v61;
      v41 = *&v61[16] - 1;
      if (*&v61[16] == 1)
      {
        v43 = 0;
      }

      else
      {
        v42 = HIDWORD(v63);
        v43 = 0;
        if (*&v61[12] != 1)
        {
          v44 = 0;
          v45 = *v61 + 1;
          do
          {
            v46 = v45;
            v47 = v38;
            do
            {
              *(v46 - 1) = v43;
              v43 = v48;
              *v46 = v48;
              v46 += v39;
              --v47;
            }

            while (v47);
            *(v46 - 1) = v43;
            v43 = v48;
            *v46 = v48;
            v40 += v42;
            ++v44;
            v45 += v42;
          }

          while (v44 != v41);
          goto LABEL_174;
        }

        do
        {
          *v40 = v43;
          v43 = v48;
          v40[1] = v48;
          v40 += v42;
          --v41;
        }

        while (v41);
      }

      if (!v38)
      {
LABEL_175:
        *v40 = v43;
        v40[1] = v48;
        goto LABEL_176;
      }

      do
      {
LABEL_174:
        *v40 = v43;
        v43 = v48;
        v40[1] = v48;
        v40 += v39;
        --v38;
      }

      while (v38);
      goto LABEL_175;
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, &unk_255C2500B, 0, "The buffer does not support the given format", 0x2CuLL, sub_255C101E0);
      abort();
    case 7:
      v55 = &unk_2867C59A0;
      v27 = 2 * (a3 != 0);
      LODWORD(v28) = v27 * a3;
      if ((v27 * a3) <= 0x10)
      {
        LODWORD(v28) = 16;
      }

      if (HIDWORD(a3))
      {
        v28 = v28;
      }

      else
      {
        v28 = 16;
      }

      *v61 = 2;
      *&v61[4] = a3;
      *v59 = *v61;
      *v61 = 1;
      *&v61[4] = v27 & 0x1FFFFFFFFLL | ((v28 >> 1) << 33);
      *&v59[12] = *v61;
      *&v59[8] = HIDWORD(a3);
      *&v59[20] = v28;
      *&v59[24] = a3;
      v60 = *&v61[4];
      LOWORD(v48) = 0;
      v49 = &unk_2867C8630;
      v50 = 0;
      sub_255AC7B40(v51, v59);
      if (*&v59[24] && *&v59[28])
      {
        sub_255AC7C78(&v52, v51);
      }

      else
      {
        v52 = *v59;
        v53 = *&v59[16];
        v54 = v60;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255AC870C(&v56, &v49);
        sub_255AC8B18(v61, &v49);
        *&v58 = v61;
        *(&v58 + 1) = &v48;
        sub_255AF5094(&v58, v36);
        sub_255B01ABC(&v56);
      }

      v49 = &unk_2867C8800;
      operator new();
    case 8:
      v55 = &unk_2867C5940;
      v17 = 2 * (a3 != 0);
      LODWORD(v18) = v17 * a3;
      if ((v17 * a3) <= 8)
      {
        LODWORD(v18) = 8;
      }

      if (HIDWORD(a3))
      {
        v18 = v18;
      }

      else
      {
        v18 = 8;
      }

      *v61 = 2;
      *&v61[4] = a3;
      *v59 = *v61;
      *v61 = 1;
      *&v61[4] = v17 & 0x1FFFFFFFFLL | ((v18 >> 1) << 33);
      *&v59[12] = *v61;
      *&v59[8] = HIDWORD(a3);
      *&v59[20] = v18;
      *&v59[24] = a3;
      v60 = *&v61[4];
      v48 = 0;
      v49 = &unk_2867C8480;
      v50 = 0;
      sub_255ACBB28(v51, v59);
      if (*&v59[24] && *&v59[28])
      {
        sub_255ACBC60(&v52, v51);
      }

      else
      {
        v52 = *v59;
        v53 = *&v59[16];
        v54 = v60;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255ACC6EC(&v56, &v49);
        sub_255ACCAF8(v61, &v49);
        *&v58 = v61;
        *(&v58 + 1) = &v48;
        sub_255AF76C0(&v58, v33);
        sub_255B01ABC(&v56);
      }

      v49 = &unk_2867C8770;
      operator new();
    case 21:
      v55 = &unk_2867C5FC0;
      if (a3)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }

      LODWORD(v8) = v7 * a3;
      if ((v7 * a3) <= 0x20)
      {
        LODWORD(v8) = 32;
      }

      if (HIDWORD(a3))
      {
        v8 = v8;
      }

      else
      {
        v8 = 32;
      }

      *v61 = 3;
      *&v61[4] = a3;
      *v59 = *v61;
      *v61 = 1;
      *&v61[4] = v7 | (v8 << 32);
      *&v59[12] = *v61;
      *&v59[8] = HIDWORD(a3);
      *&v59[20] = v8;
      *&v59[24] = a3;
      v60 = *&v61[4];
      LOBYTE(v48) = 0;
      v49 = &unk_2867C8240;
      v50 = 0;
      sub_255ABE668(v51, v59);
      if (*&v59[24] && *&v59[28])
      {
        sub_255ABE79C(&v52, v51);
      }

      else
      {
        v52 = *v59;
        v53 = *&v59[16];
        v54 = v60;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255ABF220(&v56, &v49);
        sub_255ABF62C(v61, &v49);
        *&v58 = v61;
        *(&v58 + 1) = &v48;
        sub_255AF2B3C(&v58);
        sub_255B01ABC(&v56);
      }

      v49 = &unk_2867C8E30;
      operator new();
    case 22:
      v55 = &unk_2867C5F60;
      if (a3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      LODWORD(v12) = v11 * a3;
      if ((v11 * a3) <= 0x10)
      {
        LODWORD(v12) = 16;
      }

      if (HIDWORD(a3))
      {
        v12 = v12;
      }

      else
      {
        v12 = 16;
      }

      *v61 = 3;
      *&v61[4] = a3;
      *v59 = *v61;
      *v61 = 1;
      *&v61[4] = v11 | (v12 << 32);
      *&v59[12] = *v61;
      *&v59[8] = HIDWORD(a3);
      *&v59[20] = v12;
      *&v59[24] = a3;
      v60 = *&v61[4];
      LOWORD(v48) = 0;
      v49 = &unk_2867C8090;
      v50 = 0;
      sub_255AC2FE4(v51, v59);
      if (*&v59[24] && *&v59[28])
      {
        sub_255AC311C(&v52, v51);
      }

      else
      {
        v52 = *v59;
        v53 = *&v59[16];
        v54 = v60;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255AC3BA8(&v56, &v49);
        sub_255AC3FB4(v61, &v49);
        *&v58 = v61;
        *(&v58 + 1) = &v48;
        sub_255AF3A94(&v58);
        sub_255B01ABC(&v56);
      }

      v49 = &unk_2867C8DA0;
      operator new();
    case 25:
      v56 = &unk_2867C5EC0;
      v13 = 4 * (a3 != 0);
      LODWORD(v14) = v13 * a3;
      if ((v13 * a3) <= 0x20)
      {
        LODWORD(v14) = 32;
      }

      v49 = &unk_2867C8D10;
      if (HIDWORD(a3))
      {
        v14 = v14;
      }

      else
      {
        v14 = 32;
      }

      *&v61[4] = a3;
      *v61 = 4;
      *v59 = 1;
      *&v59[4] = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
      *&v61[12] = *v59;
      v62 = v14;
      v63 = a3;
      v64 = *&v59[4];
      sub_255AC03FC(&v49, 25, v61);
      v49 = &unk_2867C8D10;
      operator new();
    case 31:
      v55 = &unk_2867C5D40;
      v22 = 4 * (a3 != 0);
      LODWORD(v23) = v22 * a3;
      if ((v22 * a3) <= 0x10)
      {
        LODWORD(v23) = 16;
      }

      if (HIDWORD(a3))
      {
        v23 = v23;
      }

      else
      {
        v23 = 16;
      }

      *v61 = 4;
      *&v61[4] = a3;
      *v59 = *v61;
      *v61 = 1;
      *&v61[4] = v22 & 0x3FFFFFFFFLL | ((v23 >> 2) << 34);
      *&v59[12] = *v61;
      *&v59[8] = HIDWORD(a3);
      *&v59[20] = v23;
      *&v59[24] = a3;
      v60 = *&v61[4];
      LOWORD(v48) = 0;
      v49 = &unk_2867C85A0;
      v50 = 0;
      sub_255AC91BC(v51, v59);
      if (*&v59[24] && *&v59[28])
      {
        sub_255AC92F4(&v52, v51);
      }

      else
      {
        v52 = *v59;
        v53 = *&v59[16];
        v54 = v60;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255AC99F8(&v56, &v49);
        sub_255AC9E04(v61, &v49);
        *&v58 = v61;
        *(&v58 + 1) = &v48;
        sub_255AF62AC(&v58, v34);
        sub_255B01ABC(&v56);
      }

      v49 = &unk_2867C8BF0;
      operator new();
    case 32:
      v55 = &unk_2867C5CE0;
      v31 = 4 * (a3 != 0);
      LODWORD(v32) = v31 * a3;
      if ((v31 * a3) <= 8)
      {
        LODWORD(v32) = 8;
      }

      if (HIDWORD(a3))
      {
        v32 = v32;
      }

      else
      {
        v32 = 8;
      }

      *v61 = 4;
      *&v61[4] = a3;
      *v59 = *v61;
      *v61 = 1;
      *&v61[4] = v31 & 0x3FFFFFFFFLL | ((v32 >> 2) << 34);
      *&v59[12] = *v61;
      *&v59[8] = HIDWORD(a3);
      *&v59[20] = v32;
      *&v59[24] = a3;
      v60 = *&v61[4];
      v48 = 0;
      v49 = &unk_2867C83F0;
      v50 = 0;
      sub_255ACD19C(v51, v59);
      if (*&v59[24] && *&v59[28])
      {
        sub_255ACD2D4(&v52, v51);
      }

      else
      {
        v52 = *v59;
        v53 = *&v59[16];
        v54 = v60;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255ACDD60(&v56, &v49);
        sub_255ACE16C(v61, &v49);
        *&v58 = v61;
        *(&v58 + 1) = &v48;
        sub_255AF80F8(&v58, v37);
        sub_255B01ABC(&v56);
      }

      v49 = &unk_2867C8B60;
      operator new();
    case 37:
      v56 = &unk_2867C5BE0;
      v29 = 4 * (a3 != 0);
      LODWORD(v30) = v29 * a3;
      if ((v29 * a3) <= 0x20)
      {
        LODWORD(v30) = 32;
      }

      v49 = &unk_2867C8AD0;
      if (HIDWORD(a3))
      {
        v30 = v30;
      }

      else
      {
        v30 = 32;
      }

      *&v61[4] = a3;
      *v61 = 4;
      *v59 = 1;
      *&v59[4] = v29 & 0x3FFFFFFFFLL | ((v30 >> 2) << 34);
      *&v61[12] = *v59;
      v62 = v30;
      v63 = a3;
      v64 = *&v59[4];
      sub_255AC03FC(&v49, 37, v61);
      v49 = &unk_2867C8AD0;
      operator new();
    case 38:
      v55 = &unk_2867C5B80;
      v5 = 4 * (a3 != 0);
      LODWORD(v6) = v5 * a3;
      if ((v5 * a3) <= 0x10)
      {
        LODWORD(v6) = 16;
      }

      if (HIDWORD(a3))
      {
        v6 = v6;
      }

      else
      {
        v6 = 16;
      }

      *v61 = 4;
      *&v61[4] = a3;
      *v59 = *v61;
      *v61 = 1;
      *&v61[4] = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
      *&v59[12] = *v61;
      *&v59[8] = HIDWORD(a3);
      *&v59[20] = v6;
      *&v59[24] = a3;
      v60 = *&v61[4];
      LOWORD(v48) = 0;
      v49 = &unk_2867C8000;
      v50 = 0;
      sub_255AC45DC(v51, v59);
      if (*&v59[24] && *&v59[28])
      {
        sub_255AC4714(&v52, v51);
      }

      else
      {
        v52 = *v59;
        v53 = *&v59[16];
        v54 = v60;
      }

      if (!sub_255ABC258(&v49))
      {
        sub_255AC51A0(&v56, &v49);
        sub_255AC55AC(v61, &v49);
        *&v58 = v61;
        *(&v58 + 1) = &v48;
        sub_255AF47F0(&v58);
        sub_255B01ABC(&v56);
      }

      v49 = &unk_2867C8A40;
      operator new();
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_255C2500B, 0, "Runtime format not in given Formats list", 0x28uLL, sub_255C101E0);
      abort();
  }
}

void sub_255AFA35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFA858(uint64_t a1, int a2, _DWORD *a3)
{
  v113 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      *v106 = &unk_2867C6040;
      LODWORD(v3) = *a3;
      v4 = *a3 != 0;
      if (a3[1])
      {
        v3 = v3;
      }

      else
      {
        v3 = 0;
      }

      *v110 = *a3;
      *&v110[8] = v4 | (v3 << 32);
      sub_255ACE998(&v96, v110);
      operator new();
    case 2:
      v105 = &unk_2867C5DC0;
      LODWORD(v54) = *a3;
      v55 = *a3 != 0;
      if (*a3 <= 0x10u)
      {
        LODWORD(v54) = 16;
      }

      if (a3[1])
      {
        v54 = v54;
      }

      else
      {
        v54 = 16;
      }

      *&v108 = *a3;
      *(&v108 + 1) = v55 | (v54 << 32);
      v96 = &unk_2867C8120;
      v97 = 0;
      sub_255AC1964(&v98, &v108);
      if (v108 && DWORD1(v108))
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v56 = v99;
        *&v106[8] = v99;
        *&v106[16] = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v56 = *&v106[8];
        }

        *v106 = &unk_2867C7FE0;
        if (v56)
        {
          v58 = *v56;
          v57 = v56[1];
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v57->__on_zero_shared)(v57);
              std::__shared_weak_count::__release_weak(v57);
            }
          }

          if (v58)
          {
            sub_255B0A2E4(*&v106[8]);
          }
        }

        sub_255AC1BB8(v110, v106);
        v59 = *&v110[8];
        v60 = *&v110[16];
        sub_255B01870(v106);
        *&v102 = v59;
        *(&v102 + 1) = v60;
      }

      else
      {
        v102 = v108;
      }

      v96 = &unk_2867C8C80;
      operator new();
    case 3:
      v105 = &unk_2867C5B00;
      LODWORD(v19) = *a3;
      v20 = *a3 != 0;
      if (*a3 <= 0x10u)
      {
        LODWORD(v19) = 16;
      }

      if (a3[1])
      {
        v19 = v19;
      }

      else
      {
        v19 = 16;
      }

      *&v108 = *a3;
      *(&v108 + 1) = v20 | (v19 << 32);
      v96 = &unk_2867C86C0;
      v97 = 0;
      sub_255AC5DD8(0, 3, &v108, &v98);
      if (v108 && DWORD1(v108))
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v21 = v99;
        *&v106[8] = v99;
        *&v106[16] = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v21 = *&v106[8];
        }

        *v106 = &unk_2867C7FE0;
        if (v21)
        {
          v23 = *v21;
          v22 = v21[1];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }
          }

          if (v23)
          {
            sub_255B0A2E4(*&v106[8]);
          }
        }

        sub_255AC1BB8(v110, v106);
        v24 = *&v110[8];
        v25 = *&v110[16];
        sub_255B01870(v106);
        *&v102 = v24;
        *(&v102 + 1) = v25;
      }

      else
      {
        v102 = v108;
      }

      v96 = &unk_2867C89B0;
      operator new();
    case 4:
      v105 = &unk_2867C5A80;
      LODWORD(v68) = *a3;
      v69 = *a3 != 0;
      if (*a3 <= 8u)
      {
        LODWORD(v68) = 8;
      }

      if (a3[1])
      {
        v68 = v68;
      }

      else
      {
        v68 = 8;
      }

      *&v108 = *a3;
      *(&v108 + 1) = v69 | (v68 << 32);
      v96 = &unk_2867C8510;
      v97 = 0;
      sub_255ACA4A8(&v98, &v108);
      if (v108 && DWORD1(v108))
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v70 = v99;
        *&v106[8] = v99;
        *&v106[16] = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v70 = *&v106[8];
        }

        *v106 = &unk_2867C7FE0;
        if (v70)
        {
          v72 = *v70;
          v71 = v70[1];
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v71->__on_zero_shared)(v71);
              std::__shared_weak_count::__release_weak(v71);
            }
          }

          if (v72)
          {
            sub_255B0A2E4(*&v106[8]);
          }
        }

        sub_255ACA6FC(v110, v106);
        v73 = *&v110[8];
        v74 = *&v110[16];
        sub_255B01870(v106);
        *&v102 = v73;
        *(&v102 + 1) = v74;
      }

      else
      {
        v102 = v108;
      }

      v96 = &unk_2867C8920;
      operator new();
    case 5:
      v105 = &unk_2867C5A20;
      v40 = 2 * (*a3 != 0);
      LODWORD(v41) = v40 * *a3;
      if (v41 <= 0x20)
      {
        LODWORD(v41) = 32;
      }

      v42 = *a3;
      v43 = HIDWORD(*a3);
      if (a3[1])
      {
        v41 = v41;
      }

      else
      {
        v41 = 32;
      }

      *v110 = 2;
      *&v110[4] = v42;
      *v106 = *v110;
      *&v106[8] = v43;
      *v110 = 1;
      *&v110[4] = v40 & 0x1FFFFFFFFLL | ((v41 >> 1) << 33);
      *&v106[12] = *v110;
      *&v106[20] = v41;
      *&v106[24] = v42;
      v107 = *&v110[4];
      v96 = &unk_2867C82D0;
      v97 = 0;
      sub_255ABCFFC(&v98, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v44 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v44 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v44)
        {
          v46 = *v44;
          v45 = v44[1];
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v45->__on_zero_shared)(v45);
              std::__shared_weak_count::__release_weak(v45);
            }
          }

          if (v46)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255ABD264(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8890;
      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, &unk_255C2500B, 0, "The buffer does not support the given format", 0x2CuLL, sub_255C101E0);
      abort();
    case 7:
      v105 = &unk_2867C59A0;
      v75 = 2 * (*a3 != 0);
      LODWORD(v76) = v75 * *a3;
      if (v76 <= 0x10)
      {
        LODWORD(v76) = 16;
      }

      v77 = *a3;
      v78 = HIDWORD(*a3);
      if (a3[1])
      {
        v76 = v76;
      }

      else
      {
        v76 = 16;
      }

      *v110 = 2;
      *&v110[4] = v77;
      *v106 = *v110;
      *&v106[8] = v78;
      *v110 = 1;
      *&v110[4] = v75 & 0x1FFFFFFFFLL | ((v76 >> 1) << 33);
      *&v106[12] = *v110;
      *&v106[20] = v76;
      *&v106[24] = v77;
      v107 = *&v110[4];
      v96 = &unk_2867C8630;
      v97 = 0;
      sub_255AC7B40(&v98, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v79 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v79 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v79)
        {
          v81 = *v79;
          v80 = v79[1];
          if (v80)
          {
            atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v80->__on_zero_shared)(v80);
              std::__shared_weak_count::__release_weak(v80);
            }
          }

          if (v81)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255AC7DA8(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8800;
      operator new();
    case 8:
      v105 = &unk_2867C5940;
      v47 = 2 * (*a3 != 0);
      LODWORD(v48) = v47 * *a3;
      if (v48 <= 8)
      {
        LODWORD(v48) = 8;
      }

      v49 = *a3;
      v50 = HIDWORD(*a3);
      if (a3[1])
      {
        v48 = v48;
      }

      else
      {
        v48 = 8;
      }

      *v110 = 2;
      *&v110[4] = v49;
      *v106 = *v110;
      *&v106[8] = v50;
      *v110 = 1;
      *&v110[4] = v47 & 0x1FFFFFFFFLL | ((v48 >> 1) << 33);
      *&v106[12] = *v110;
      *&v106[20] = v48;
      *&v106[24] = v49;
      v107 = *&v110[4];
      v96 = &unk_2867C8480;
      v97 = 0;
      sub_255ACBB28(&v98, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v51 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v51 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v51)
        {
          v53 = *v51;
          v52 = v51[1];
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v52->__on_zero_shared)(v52);
              std::__shared_weak_count::__release_weak(v52);
            }
          }

          if (v53)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255ACBD90(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8770;
      operator new();
    case 21:
      v105 = &unk_2867C5FC0;
      if (*a3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      LODWORD(v13) = v12 * *a3;
      if (v13 <= 0x20)
      {
        LODWORD(v13) = 32;
      }

      v14 = *a3;
      v15 = HIDWORD(*a3);
      if (a3[1])
      {
        v13 = v13;
      }

      else
      {
        v13 = 32;
      }

      *v110 = 3;
      *&v110[4] = v14;
      *v106 = *v110;
      *&v106[8] = v15;
      *v110 = 1;
      *&v110[4] = v12 | (v13 << 32);
      *&v106[12] = *v110;
      *&v106[20] = v13;
      *&v106[24] = v14;
      v107 = *&v110[4];
      v96 = &unk_2867C8240;
      v97 = 0;
      sub_255ABE668(&v98, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v16 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v16 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v16)
        {
          v18 = *v16;
          v17 = v16[1];
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v17->__on_zero_shared)(v17);
              std::__shared_weak_count::__release_weak(v17);
            }
          }

          if (v18)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255ABE8CC(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8E30;
      operator new();
    case 22:
      v105 = &unk_2867C5F60;
      if (*a3)
      {
        v26 = 3;
      }

      else
      {
        v26 = 0;
      }

      LODWORD(v27) = v26 * *a3;
      if (v27 <= 0x10)
      {
        LODWORD(v27) = 16;
      }

      v28 = *a3;
      v29 = HIDWORD(*a3);
      if (a3[1])
      {
        v27 = v27;
      }

      else
      {
        v27 = 16;
      }

      *v110 = 3;
      *&v110[4] = v28;
      *v106 = *v110;
      *&v106[8] = v29;
      *v110 = 1;
      *&v110[4] = v26 | (v27 << 32);
      *&v106[12] = *v110;
      *&v106[20] = v27;
      *&v106[24] = v28;
      v107 = *&v110[4];
      v96 = &unk_2867C8090;
      v97 = 0;
      sub_255AC2FE4(&v98, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v30 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v30 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v30)
        {
          v32 = *v30;
          v31 = v30[1];
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v31->__on_zero_shared)(v31);
              std::__shared_weak_count::__release_weak(v31);
            }
          }

          if (v32)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255AC324C(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8DA0;
      operator new();
    case 25:
      v105 = &unk_2867C5EC0;
      v33 = 4 * (*a3 != 0);
      LODWORD(v34) = v33 * *a3;
      if (v34 <= 0x20)
      {
        LODWORD(v34) = 32;
      }

      v35 = *a3;
      v36 = HIDWORD(*a3);
      if (a3[1])
      {
        v34 = v34;
      }

      else
      {
        v34 = 32;
      }

      *v110 = 4;
      *&v110[4] = v35;
      *v106 = *v110;
      *&v106[8] = v36;
      *v110 = 1;
      *&v110[4] = v33 & 0x3FFFFFFFFLL | ((v34 >> 2) << 34);
      *&v106[12] = *v110;
      *&v106[20] = v34;
      *&v106[24] = v35;
      v107 = *&v110[4];
      v96 = &unk_2867C81B0;
      v97 = 0;
      sub_255ABFC54(&v98, 25, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v37 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v37 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v37)
        {
          v39 = *v37;
          v38 = v37[1];
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v38->__on_zero_shared)(v38);
              std::__shared_weak_count::__release_weak(v38);
            }
          }

          if (v39)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255ABFEF0(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8D10;
      operator new();
    case 31:
      v105 = &unk_2867C5D40;
      v61 = 4 * (*a3 != 0);
      LODWORD(v62) = v61 * *a3;
      if (v62 <= 0x10)
      {
        LODWORD(v62) = 16;
      }

      v63 = *a3;
      v64 = HIDWORD(*a3);
      if (a3[1])
      {
        v62 = v62;
      }

      else
      {
        v62 = 16;
      }

      *v110 = 4;
      *&v110[4] = v63;
      *v106 = *v110;
      *&v106[8] = v64;
      *v110 = 1;
      *&v110[4] = v61 & 0x3FFFFFFFFLL | ((v62 >> 2) << 34);
      *&v106[12] = *v110;
      *&v106[20] = v62;
      *&v106[24] = v63;
      v107 = *&v110[4];
      v96 = &unk_2867C85A0;
      v97 = 0;
      sub_255AC91BC(&v98, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v65 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v65 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v65)
        {
          v67 = *v65;
          v66 = v65[1];
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v66->__on_zero_shared)(v66);
              std::__shared_weak_count::__release_weak(v66);
            }
          }

          if (v67)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255AC4844(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8BF0;
      operator new();
    case 32:
      v105 = &unk_2867C5CE0;
      v89 = 4 * (*a3 != 0);
      LODWORD(v90) = v89 * *a3;
      if (v90 <= 8)
      {
        LODWORD(v90) = 8;
      }

      v91 = *a3;
      v92 = HIDWORD(*a3);
      if (a3[1])
      {
        v90 = v90;
      }

      else
      {
        v90 = 8;
      }

      *v110 = 4;
      *&v110[4] = v91;
      *v106 = *v110;
      *&v106[8] = v92;
      *v110 = 1;
      *&v110[4] = v89 & 0x3FFFFFFFFLL | ((v90 >> 2) << 34);
      *&v106[12] = *v110;
      *&v106[20] = v90;
      *&v106[24] = v91;
      v107 = *&v110[4];
      v96 = &unk_2867C83F0;
      v97 = 0;
      sub_255ACD19C(&v98, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v93 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v93 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v93)
        {
          v95 = *v93;
          v94 = v93[1];
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v94->__on_zero_shared)(v94);
              std::__shared_weak_count::__release_weak(v94);
            }
          }

          if (v95)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255ACD404(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8B60;
      operator new();
    case 37:
      v105 = &unk_2867C5BE0;
      v82 = 4 * (*a3 != 0);
      LODWORD(v83) = v82 * *a3;
      if (v83 <= 0x20)
      {
        LODWORD(v83) = 32;
      }

      v84 = *a3;
      v85 = HIDWORD(*a3);
      if (a3[1])
      {
        v83 = v83;
      }

      else
      {
        v83 = 32;
      }

      *v110 = 4;
      *&v110[4] = v84;
      *v106 = *v110;
      *&v106[8] = v85;
      *v110 = 1;
      *&v110[4] = v82 & 0x3FFFFFFFFLL | ((v83 >> 2) << 34);
      *&v106[12] = *v110;
      *&v106[20] = v83;
      *&v106[24] = v84;
      v107 = *&v110[4];
      v96 = &unk_2867C81B0;
      v97 = 0;
      sub_255ABFC54(&v98, 37, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v86 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v86 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v86)
        {
          v88 = *v86;
          v87 = v86[1];
          if (v87)
          {
            atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v87->__on_zero_shared)(v87);
              std::__shared_weak_count::__release_weak(v87);
            }
          }

          if (v88)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255ABFEF0(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8AD0;
      operator new();
    case 38:
      v105 = &unk_2867C5B80;
      v5 = 4 * (*a3 != 0);
      LODWORD(v6) = v5 * *a3;
      if (v6 <= 0x10)
      {
        LODWORD(v6) = 16;
      }

      v7 = *a3;
      v8 = HIDWORD(*a3);
      if (a3[1])
      {
        v6 = v6;
      }

      else
      {
        v6 = 16;
      }

      *v110 = 4;
      *&v110[4] = v7;
      *v106 = *v110;
      *&v106[8] = v8;
      *v110 = 1;
      *&v110[4] = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
      *&v106[12] = *v110;
      *&v106[20] = v6;
      *&v106[24] = v7;
      v107 = *&v110[4];
      v96 = &unk_2867C8000;
      v97 = 0;
      sub_255AC45DC(&v98, v106);
      if (*&v106[24] && *&v106[28])
      {
        if (v101)
        {
          sub_255A7C284();
        }

        v9 = v99;
        *(&v108 + 1) = v99;
        v109 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
          v9 = *(&v108 + 1);
        }

        *&v108 = &unk_2867C7FE0;
        if (v9)
        {
          v11 = *v9;
          v10 = v9[1];
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          if (v11)
          {
            sub_255B0A2E4(*(&v108 + 1));
          }
        }

        sub_255AC4844(v110, &v108);
        v102 = *&v110[8];
        v103 = v111;
        v104 = v112;
        sub_255B01870(&v108);
      }

      else
      {
        v102 = *v106;
        v103 = *&v106[16];
        v104 = v107;
      }

      v96 = &unk_2867C8A40;
      operator new();
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_255C2500B, 0, "Runtime format not in given Formats list", 0x28uLL, sub_255C101E0);
      abort();
  }
}

void sub_255AFCC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_255B016E0(&a27);
  sub_255ABBCA4(v27 + 16);
  _Unwind_Resume(a1);
}

void sub_255AFCCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_255B01870(&a27);
  sub_255ABBCA4(v27 + 16);
  _Unwind_Resume(a1);
}

void sub_255AFCE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFD0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFD0EC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray8u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFD1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFD2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFD30C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray16u]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFD3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFD4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFD52C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray16f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFD610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFD71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFD74C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray32f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFD830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFD93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFD96C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Two8u]", 29, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFDA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFDB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFDB8C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Two16f]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFDC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFDD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFDDAC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Two32f]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFDE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFDF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFDFCC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgb8u]", 29, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFE0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFE1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFE1EC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgb16u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFE2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFE3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFE40C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra8u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFE4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFE5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFE62C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgba16f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFE710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFE81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFE84C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgba32f]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFE930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFEA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFEA6C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Argb8u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFEB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFEC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AFEC8C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Argb16u]", 31, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255AFED70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255AFF044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  v27 = a15;
  a15 = 0;
  if (!v27)
  {
    _Unwind_Resume(exception_object);
  }

  sub_255C0EE90(&a15, v27);
  _Unwind_Resume(exception_object);
}

uint64_t sub_255AFF0CC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2867CFAD0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_255A7C284();
  }

  v17 = &v12;
  (off_2867CF158[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_2867CFAD0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_255A7C284();
  }

  v17 = &v12;
  (off_2867CF158[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_255A7C284();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_2867CFAD0 + v9))(&v11, a2);
}

void sub_255AFF268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255AFF29C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255AFF69C(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255AFF39C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CF140[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255AFF490(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CF140[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255AFF650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255AFF69C(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255AFF838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

size_t sub_255AFF84C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CF140[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255AFF940(uint64_t a1, int a2)
{
  v2 = a2;
  v4[0] = 0;
  v4[1] = 0;
  value = v4;
  sub_255C02920();
}

void sub_255AFFC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A7A508(&a12);
  sub_255A7A508(&a9);
  sub_255A7A508(v12);
  _Unwind_Resume(a1);
}

CFTypeID sub_255AFFCD4@<X0>(CFTypeID result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v8 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v8;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CC4DE8];
  value = 0;
  if (v5)
  {
    result = CFDictionaryGetValueIfPresent(*result, v5, &value);
    if (result)
    {
      v6 = value;
      if (value)
      {
        TypeID = CFDictionaryGetTypeID();
        result = CFGetTypeID(v6);
        if (result == TypeID)
        {
          CFRetain(v6);
          sub_255B00140(&v12, v6);
        }
      }

      v9 = 0;
      v10 = 0;
    }
  }

LABEL_12:
  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_255AFFF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255A7A508(v5 - 48);
  sub_255B00480(va);
  _Unwind_Resume(a1);
}

void sub_255B00014(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_255B00140(&v4, v3);
}

void sub_255B00344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255B003C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B003FC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255B00420(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255B00480(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

void sub_255B004FC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_255B00628(&v4, v3);
}

void sub_255B0082C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A7A508(v15);
  _Unwind_Resume(a1);
}

void sub_255B008AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B008E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_255B00908(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255B00968(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_255C01BC4(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_255B00B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B00B74(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_255C01BC4(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_255B00D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B00F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B00FAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 323, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetPixelFormatType(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetPixelFormatType(v6);
}

BOOL sub_255B011E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 266, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_17;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_17:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

LABEL_18:
      v6 = 0;
      return CVPixelBufferIsPlanar(v6) != 0;
    }

LABEL_20:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_6:
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v8;
    }
  }

  return CVPixelBufferIsPlanar(v6) != 0;
}

uint64_t sub_255B013DC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 340, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = a2;
  v19 = *(a1 + 8);
  v12 = v19;
  if (atomic_load_explicit((v19 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v19 + 104), &v20, sub_255B07AD4);
  }

  if (v11 >= (*(v12 + 120) - *(v12 + 112)) >> 3)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 341, "idx < p_->GetCachedBaseAddress().size()", 0x27uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v13 = qword_27F7DD608, v14 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "idx < p_->GetCachedBaseAddress().size()", 39, &unk_255C2500B, 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_27F7DD608;
      v14 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v16 = *v13;
      v15 = *(v13 + 8);
      v13 += 16;
      v16(v15, "idx < p_->GetCachedBaseAddress().size()", 39, &unk_255C2500B, 0);
    }

    while (v13 != v14);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_29:
    abort();
  }

LABEL_24:
  v17 = *(a1 + 8);
  v19 = v17;
  if (atomic_load_explicit((v17 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v17 + 104), &v20, sub_255B07AD4);
  }

  return *(*(v17 + 112) + 8 * v11);
}

void *sub_255B016E0(void *result)
{
  *result = &unk_2867C8750;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B01774(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_255B0A4E8(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_255B01870(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_255B0A4E8(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_2867C8750;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_255B01988(void *a1)
{
  sub_255B01870(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B019C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_255B0A5EC(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_255B01ABC(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_255B0A5EC(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_2867C8750;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_255B01BD4(void *a1)
{
  sub_255B01ABC(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B01C0C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v4;
    *(a1 + 8) = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = a3;
  v6 = vceq_s32(vdup_n_s32(a3), 0x200000001);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  *(a1 + 24) = vandq_s8(v7, vdupq_n_s64(1uLL));
  *(a1 + 40) = 850045863;
  v8 = 0uLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = a2;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v8 = 0uLL;
      a2 = v9;
    }
  }

  *(a1 + 120) = v8;
  *(a1 + 104) = v8;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = &unk_2867C4068;
  IOSurface = CVPixelBufferGetIOSurface(*a2);
  sub_255BF988C(&v11, IOSurface, 1);
}

void sub_255B01E14(_Unwind_Exception *a1)
{
  sub_255BFA730(v2);
  v4 = *(v1 + 112);
  if (v4)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  sub_255B05EB4(v1);
  _Unwind_Resume(a1);
}

void sub_255B01E40(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_255B09F2C(&v4, cf);
}

void sub_255B02028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  sub_255A7A508(&a11);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

void sub_255B02050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_255A7A508(&a11);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

void sub_255B0206C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  pixelBufferOut = 0;
  sub_255B00014(v5, a5);
}

void sub_255B028D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
    if ((v30 & 1) == 0)
    {
LABEL_6:
      sub_255AEC9E0(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_255B029DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_255A7A508(v14 - 128);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B02A14()
{
  if (*(v0 - 129) < 0)
  {
    operator delete(*(v0 - 152));
  }

  JUMPOUT(0x255B02A70);
}

void sub_255B02A30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x255B02A70);
}

void sub_255B02A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_255A993DC(&a26);
  sub_255A7A508(&a22);
  _Unwind_Resume(a1);
}

void sub_255B02A88()
{
  v1 = *(v0 - 128);
  *(v0 - 128) = 0;
  if (v1)
  {
    sub_255C0EE90(v0 - 128, v1);
  }

  JUMPOUT(0x255B02A70);
}

void *sub_255B02AA4(void *result)
{
  *result = &unk_2867C8750;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_255B02C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B02C58(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void sub_255B02E1C(void *a1)
{
  *a1 = &unk_2867C8750;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

void sub_255B02EC4(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  if (sub_255B011E8(a1))
  {
    if (sub_255B04284(a1) > a2)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v8 = *v6;
        v7 = v6[1];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        if (v8)
        {
LABEL_51:
          v19 = *(a1 + 8);
          size = *(v19 + 144);
          v21 = *(v19 + 152);
          v43.__r_.__value_.__r.__words[0] = &unk_2867C4068;
          v43.__r_.__value_.__l.__size_ = size;
          v43.__r_.__value_.__r.__words[2] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            size = v43.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v23 = *size;
            v22 = size[1];
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v22->__on_zero_shared)(v22);
                std::__shared_weak_count::__release_weak(v22);
              }
            }

            if (v23)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Cannot create child pixel buffer for pixel buffer with iosurface. Use kcv::Shared instead to create an IOSurface image child");
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_2798073B8, MEMORY[0x277D82610]);
            }
          }

          v43.__r_.__value_.__r.__words[0] = &unk_2867C4068;
          if (v43.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v43.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v43.__r_.__value_.__r.__words[2] + 16))(v43.__r_.__value_.__r.__words[2]);
            std::__shared_weak_count::__release_weak(v43.__r_.__value_.__r.__words[2]);
          }

          v24 = *(a1 + 8);
          v25 = *(a1 + 16);
          v41 = v24;
          v42 = v25;
          if (v25)
          {
            atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
            v24 = v41;
          }

          v40 = &unk_2867C7FC0;
          if (v24)
          {
            v27 = *v24;
            v26 = v24[1];
            if (v26)
            {
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v26->__on_zero_shared)(v26);
                std::__shared_weak_count::__release_weak(v26);
              }
            }

            if (v27)
            {
              sub_255B0A3E8(v41);
            }
          }

          sub_255AE0150(&v43, &v40, a2);
          v29 = v43.__r_.__value_.__r.__words[2];
          v28 = v43.__r_.__value_.__l.__size_;
          v37 = &unk_2867C56D0;
          v38 = *&v43.__r_.__value_.__r.__words[1];
          *&v39[14] = *&v44[14];
          *v39 = *v44;
          v30 = (*&v44[22] >> 16) - 1;
          if (v30 > 0x25)
          {
            v32 = *&v39[16];
            if (v39[28] != 1)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v31 = (dword_255C388BC[v30] | *&a8[4 * v30]);
            v32 = *&v39[16];
            if (v39[28] != 1)
            {
              goto LABEL_78;
            }
          }

          if (v32)
          {
            if (v43.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v43.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v33 = v28;
                (v29->__on_zero_shared)(v29);
                std::__shared_weak_count::__release_weak(v29);
                v28 = v33;
              }
            }

            (*(*v28 + 88))(v28, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          }

LABEL_78:
          v34 = *(a1 + 8);
          v35 = *(a1 + 16);
          if (v35)
          {
            atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
          }

          v43.__r_.__value_.__r.__words[0] = &unk_2867C8750;
          v43.__r_.__value_.__l.__size_ = v34;
          v43.__r_.__value_.__r.__words[2] = v35;
          v52 = 0;
          operator new();
        }
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 347, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v9 = qword_27F7DD608, v10 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_50:
          qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
          goto LABEL_51;
        }
      }

      else
      {
        v9 = qword_27F7DD608;
        v10 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_91;
        }
      }

      do
      {
        v18 = *v9;
        v17 = *(v9 + 8);
        v9 += 16;
        v18(v17, "IsValid()", 9, &unk_255C2500B, 0);
      }

      while (v9 != v10);
      if (byte_27F7DD630)
      {
        goto LABEL_50;
      }

LABEL_91:
      abort();
    }

    v13 = sub_255B04284(a1);
    *v39 = 0;
    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = "CreateChildBuffer";
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = "CreateChildBuffer";
    *&v44[8] = "CreateChildBuffer";
    v53.__r_.__value_.__r.__words[0] = &v43;
    sub_255AFF84C(&v53);
    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = "(";
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = "(";
    *&v44[8] = "(";
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v53.__r_.__value_.__r.__words[0] = &v43;
    (*(&off_2867CFC40 + *v39))(&v53, &v37);
    std::to_string(&v53, a2);
    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = &v53;
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = &v53;
    *&v44[8] = &v53;
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v48 = &v43;
    (off_2867CFB68[*v39])(&v48, &v37);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = "): Invalid plane index, buffer has only ";
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = "): Invalid plane index, buffer has only ";
    *&v44[8] = "): Invalid plane index, buffer has only ";
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v53.__r_.__value_.__r.__words[0] = &v43;
    (off_2867CFC58[*v39])(&v53, &v37);
    std::to_string(&v53, v13);
    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = &v53;
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = &v53;
    *&v44[8] = &v53;
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v48 = &v43;
    (off_2867CFB68[*v39])(&v48, &v37);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = " planes";
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = " planes";
    *&v44[8] = " planes";
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v53.__r_.__value_.__r.__words[0] = &v43;
    (*(&off_2867CFB50 + *v39))(&v53, &v37);
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v43.__r_.__value_.__r.__words[0] = &v53;
    (off_2867CFB80[*v39])(&v49, &v43, &v37);
    if (*v39 != -1)
    {
      (off_2867CFB38[*v39])(&v43, &v37);
    }

    if ((v51 & 0x80u) == 0)
    {
      v11 = &v49;
    }

    else
    {
      v11 = v49;
    }

    if ((v51 & 0x80u) == 0)
    {
      v12 = v51;
    }

    else
    {
      v12 = v50;
    }
  }

  else
  {
    *v39 = 0;
    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = "CreateChildBuffer";
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = "CreateChildBuffer";
    *&v44[8] = "CreateChildBuffer";
    v53.__r_.__value_.__r.__words[0] = &v43;
    sub_255AFF84C(&v53);
    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = "(";
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = "(";
    *&v44[8] = "(";
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v53.__r_.__value_.__r.__words[0] = &v43;
    (*(&off_2867CFC40 + *v39))(&v53, &v37);
    std::to_string(&v53, a2);
    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = &v53;
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = &v53;
    *&v44[8] = &v53;
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v48 = &v43;
    (off_2867CFB68[*v39])(&v48, &v37);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v43.__r_.__value_.__r.__words[0] = &v37;
    v43.__r_.__value_.__l.__size_ = "): Cannot create child for nonplanar buffer";
    v43.__r_.__value_.__r.__words[2] = &v37;
    *v44 = "): Cannot create child for nonplanar buffer";
    *&v44[8] = "): Cannot create child for nonplanar buffer";
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v53.__r_.__value_.__r.__words[0] = &v43;
    (off_2867CFC28[*v39])(&v53, &v37);
    if (*v39 == -1)
    {
      sub_255A7C284();
    }

    v43.__r_.__value_.__r.__words[0] = &v53;
    (off_2867CFB80[*v39])(&v49, &v43, &v37);
    if (*v39 != -1)
    {
      (off_2867CFB38[*v39])(&v43, &v37);
    }

    if ((v51 & 0x80u) == 0)
    {
      v11 = &v49;
    }

    else
    {
      v11 = v49;
    }

    if ((v51 & 0x80u) == 0)
    {
      v12 = v51;
    }

    else
    {
      v12 = v50;
    }
  }

  sub_255B057D0(&v45, -6661, v11, v12);
  v14 = v45;
  v15 = v47;
  *(a3 + 8) = v46;
  *(a3 + 16) = v15;
  *(a3 + 23) = *(&v47 + 7);
  LOBYTE(v15) = HIBYTE(v47);
  v47 = 0uLL;
  v46 = 0;
  *a3 = v14;
  *(a3 + 31) = v15;
  if (v51 < 0)
  {
    operator delete(v49);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_255B04050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  MEMORY[0x259C49320](v49, 0x1020C40A5B76CDFLL);
  sub_255B02C58(v50 - 128);
  sub_255B02C58(v50 - 168);
  sub_255B016E0(&a12);
  sub_255AA07D8(&a18);
  sub_255B01ABC(&a25);
  _Unwind_Resume(a1);
}

void sub_255B04238()
{
  if (*(v0 - 105) < 0)
  {
    operator delete(*(v0 - 128));
  }

  JUMPOUT(0x255B04274);
}

void sub_255B04270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

size_t sub_255B04284(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 272, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetPlaneCount(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetPlaneCount(v6);
}

void sub_255B044C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 347, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v7 = qword_27F7DD608, v8 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27F7DD608;
      v8 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v7 != v8);
    if (byte_27F7DD630)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = *(v11 + 144);
  v12 = *(v11 + 152);
  *a2 = &unk_2867C4068;
  a2[1] = v13;
  a2[2] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_255B04680(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  result = *v1;
  v3 = v1[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

unint64_t sub_255B04718(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_14:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 277, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_21;
      }

      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
LABEL_21:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_25:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v6 = v8;
      }
    }

    Width = CVPixelBufferGetWidth(v6);
    v10 = *(a1 + 8);
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_23:
    v11 = 0;
    return Width | (CVPixelBufferGetHeight(v11) << 32);
  }

LABEL_22:
  Width = CVPixelBufferGetWidth(0);
  v10 = *(a1 + 8);
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_10:
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v13 = v11;
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
      v11 = v13;
    }
  }

  return Width | (CVPixelBufferGetHeight(v11) << 32);
}

unint64_t sub_255B04988(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_14:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 287, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_21;
      }

      v16 = qword_27F7DD608;
      v17 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = qword_27F7DD608;
      v17 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v19 = *v16;
      v18 = *(v16 + 8);
      v16 += 16;
      v19(v18, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v16 != v17);
    if (byte_27F7DD630)
    {
LABEL_21:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_25:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (v7)
  {
LABEL_6:
    v8 = *v7;
    v9 = *(v7 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v8;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v8 = v10;
      }
    }

    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v8, planeIndex);
    v12 = *(a1 + 8);
    if (v12)
    {
      goto LABEL_10;
    }

LABEL_23:
    v13 = 0;
    return WidthOfPlane | (CVPixelBufferGetHeightOfPlane(v13, planeIndex) << 32);
  }

LABEL_22:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(0, planeIndex);
  v12 = *(a1 + 8);
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_10:
  v13 = *v12;
  v14 = *(v12 + 8);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v13;
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v13 = v15;
    }
  }

  return WidthOfPlane | (CVPixelBufferGetHeightOfPlane(v13, planeIndex) << 32);
}

size_t sub_255B04C10(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 293, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetWidth(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetWidth(v6);
}

size_t sub_255B04E4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 303, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetHeight(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetHeight(v6);
}

size_t sub_255B05088(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 313, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27F7DD608;
      v10 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v9 != v10);
    if (byte_27F7DD630)
    {
LABEL_19:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetBytesPerRow(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetBytesPerRow(v6);
}

size_t sub_255B052C4(uint64_t a1, size_t planeIndex)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 318, "IsValid()", 9uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_17;
      }

      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_27F7DD608;
      v12 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "IsValid()", 9, &unk_255C2500B, 0);
    }

    while (v11 != v12);
    if (byte_27F7DD630)
    {
LABEL_17:
      qword_27F7DD620(*algn_27F7DD628, "IsValid()", 9, &unk_255C2500B, 0);
      v7 = *(a1 + 8);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

LABEL_22:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_6:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }
  }

LABEL_19:

  return CVPixelBufferGetBytesPerRowOfPlane(v8, planeIndex);
}