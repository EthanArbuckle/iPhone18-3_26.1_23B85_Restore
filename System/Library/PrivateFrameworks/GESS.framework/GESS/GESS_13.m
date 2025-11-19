uint64_t sub_24BD90B14(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (**(a1 + 88) + 4 * *(a1 + 16));
  *(**(v2 + 16) + 4 * *v3) = 2139095039;
  sub_24BD8FB98(v2, v3);
  v4 = *(a1 + 168);
  *(a1 + 152) = 0;
  *(a1 + 16) = -1;
  *(a1 + 112) = *(a1 + 104);
  *(a1 + 136) = *(a1 + 128);
  sub_24BCC8A84(a1 + 160, v4);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 192) = *(a1 + 184);
  return *(a1 + 152);
}

uint64_t sub_24BD90BA0(uint64_t *a1, unsigned int *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = *sub_24BC9ECE4(*a1, *(*a1 + 180), *a2);
  v5 = a2;
  if ((v6 & v4) != 0)
  {
    v5 = sub_24BCB9024(*a1 + 104, a2);
  }

  v70 = *v5;
  v7 = sub_24BC9ECE4(*a1, *(*a1 + 180), *a2);
  v9 = v8;
  v10 = *v7;
  v69 = *sub_24BCB9024(*a1 + 104, &v70);
  v11 = *(sub_24BCB9024(*a1 + 104, &v69) + 4);
  v68 = v11;
  v12 = *(sub_24BCB9024(*a1 + 104, &v69) + 8);
  v67 = v12;
  v66 = *(sub_24BCB9024(*a1 + 104, &v70) + 8);
  v65 = *(sub_24BCB9024(*a1 + 104, &v70) + 4);
  v13 = *sub_24BCB9024(*a1 + 104, &v65);
  v64 = v13;
  v63 = *sub_24BCB9024(*a1 + 104, &v66);
  v62 = *(sub_24BCB9024(*a1 + 104, &v70) + 16);
  v14 = *(sub_24BCB9024(*a1 + 104, &v70) + 12);
  v61 = v14;
  v15 = *a1;
  v16 = sub_24BCB9024(*a1 + 104, &v70);
  v17 = *(sub_24BCB9024(v15 + 104, v16) + 12);
  v60 = v17;
  v59 = *(sub_24BCB9024(*a1 + 104, &v65) + 12);
  if (v11 == v63 && v12 == v13)
  {
    v18 = 0;
    v71 = v70;
    v72 = v66;
    v73 = v65;
    v74 = v11;
    v75 = v69;
    v76 = v12;
    do
    {
      v19 = a1[1];
      v20 = *(*a1[11] + 4 * *(&v71 + v18));
      if (*(v19[3] + 32 * v20 + 20) != -1)
      {
        v21 = *v19;
        sub_24BD8E24C(*v19, v20, -3.4028e38);
        v22 = v19[3] + 32 * sub_24BD8E2F8(v21);
        *v22 = 0;
        *(v22 + 4) = -1;
        *(v22 + 12) = -1;
        *(v22 + 20) = -1;
        *(v22 + 28) = 0;
      }

      v18 += 4;
    }

    while (v18 != 24);
    *sub_24BCB9038(*a1 + 104, &v62) = -1;
    v23 = sub_24BCB9024(*a1 + 104, &v70);
    *v23 = -1;
    *(v23 + 8) = -1;
    *(v23 + 16) = -1;
    v24 = sub_24BCB9024(*a1 + 104, &v66);
    *v24 = -1;
    *(v24 + 8) = -1;
    *(v24 + 16) = -1;
    v25 = sub_24BCB9024(*a1 + 104, &v65);
    *v25 = -1;
    *(v25 + 8) = -1;
    *(v25 + 16) = -1;
    v26 = sub_24BCB9024(*a1 + 104, &v68);
    *v26 = -1;
    *(v26 + 8) = -1;
    *(v26 + 16) = -1;
    v27 = sub_24BCB9024(*a1 + 104, &v69);
    *v27 = -1;
    *(v27 + 8) = -1;
    *(v27 + 16) = -1;
    v28 = sub_24BCB9024(*a1 + 104, &v67);
    *v28 = -1;
    *(v28 + 8) = -1;
    *(v28 + 16) = -1;
    *sub_24BCB9014((*a1 + 104), &v59) = -1;
    *sub_24BCB9014((*a1 + 104), &v61) = -1;
    v29 = sub_24BCB9014((*a1 + 104), &v60);
  }

  else
  {
    sub_24BD8F1C8(a1, v14, v17);
    if (a1[23] != a1[24] || (sub_24BD9125C(a1) & 1) == 0 || (sub_24BD8FBC4(a1) & 1) == 0)
    {
      v32 = sub_24BD90B14(a1);
      goto LABEL_18;
    }

    v33 = v61;
    v34 = (*a1[7] + 24 * v61);
    *v34 = a1[3];
    v34[1] = a1[4];
    v34[2] = a1[5];
    v35 = (*a1[9] + 80 * *(*a1[11] + 4 * *(a1 + 4)));
    v36 = (*a1[6] + 80 * v33);
    *v36 = *v35;
    v37 = v35[1];
    v38 = v35[2];
    v39 = v35[4];
    v36[3] = v35[3];
    v36[4] = v39;
    v36[1] = v37;
    v36[2] = v38;
    sub_24BCB50D4(*a1, &v61, &v60);
    sub_24BCB9048(*a1 + 104, &v68, &v67);
    sub_24BCB9074(*a1 + 104, &v64, &v63);
    v40 = &a1[3 * ((v9 & v10) == 0)];
    v41 = v40[13];
    v42 = v40[14];
    while (v41 != v42)
    {
      sub_24BCB90C8((*a1 + 104), v41++, &v61);
    }

    sub_24BCB90F0((*a1 + 104), &v59, &v63);
    sub_24BCB90F0((*a1 + 104), &v61, &v64);
    v45 = 0;
    v71 = v70;
    v72 = v66;
    do
    {
      v46 = a1[1];
      v47 = *(*a1[11] + 4 * *(&v71 + v45));
      if (*(v46[3] + 32 * v47 + 20) != -1)
      {
        v48 = *v46;
        sub_24BD8E24C(*v46, v47, -3.4028e38);
        v49 = v46[3] + 32 * sub_24BD8E2F8(v48);
        *v49 = 0;
        *(v49 + 4) = -1;
        *(v49 + 12) = -1;
        *(v49 + 20) = -1;
        *(v49 + 28) = 0;
      }

      v45 += 4;
    }

    while (v45 != 8);
    v50 = *a1[11];
    *(v50 + 4 * v63) = *(v50 + 4 * v64);
    v51 = v64;
    *(*a1[12] + 4 * *(v50 + 4 * v64)) = v64;
    v52 = a1[1];
    v53 = *(v50 + 4 * v51);
    v54 = v52[3] + 32 * v53;
    if (*(v54 + 20) == -1)
    {
      *v54 = *(*v52[2] + 4 * v53);
      *(v54 + 12) = -1;
      *(v54 + 4) = -1;
      *(v54 + 20) = v53;
      *(v54 + 24) = -1;
      *(v54 + 28) = 0;
      sub_24BD8E1D8(*v52, *(v50 + 4 * v51));
    }

    sub_24BD8FA14(a1, &v61);
    *sub_24BCB9038(*a1 + 104, &v62) = -1;
    v55 = sub_24BCB9024(*a1 + 104, &v70);
    *v55 = -1;
    *(v55 + 8) = -1;
    *(v55 + 16) = -1;
    v56 = sub_24BCB9024(*a1 + 104, &v66);
    *v56 = -1;
    *(v56 + 8) = -1;
    *(v56 + 16) = -1;
    v57 = sub_24BCB9024(*a1 + 104, &v65);
    *v57 = -1;
    *(v57 + 8) = -1;
    *(v57 + 16) = -1;
    v58 = sub_24BCB9024(*a1 + 104, &v69);
    *v58 = -1;
    *(v58 + 8) = -1;
    *(v58 + 16) = -1;
    v29 = sub_24BCB9014((*a1 + 104), &v60);
  }

  *v29 = -1;
  v31 = a1[21];
  v30 = a1 + 21;
  v32 = (*(v30 - 4) + 1);
  *(v30 - 4) = 0;
  *(v30 - 38) = -1;
  *(v30 - 7) = *(v30 - 8);
  *(v30 - 4) = *(v30 - 5);
  sub_24BCC8A84((v30 - 1), v31);
  *v30 = 0;
  v30[1] = 0;
  *(v30 - 1) = v30;
  v30[3] = v30[2];
LABEL_18:
  v43 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_24BD9125C(double *a1)
{
  v2 = 0;
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = 0x100000000;
  v3 = (a1 + 13);
  while (2)
  {
    v4 = &v3[3 * *(v16 + v2)];
    v5 = *v4;
    v6 = v4[1];
    while (v5 != v6)
    {
      v7 = *(sub_24BCB9024(*a1 + 104, v5) + 12);
      v8 = *a1;
      v9 = sub_24BCB9024(*a1 + 104, v5);
      LODWORD(v8) = *(sub_24BCB9024(*&v8 + 104, v9) + 12);
      v10 = *a1;
      v11 = sub_24BCB9024(*a1 + 104, v5);
      v12 = sub_24BCB9024(*&v10 + 104, (v11 + 8));
      v13 = sub_24BCB9024(*&v10 + 104, v12);
      if (sub_24BD8C5FC((**(a1 + 7) + 24 * v7), (**(a1 + 7) + 24 * LODWORD(v8)), (**(a1 + 7) + 24 * *(v13 + 12)), a1 + 3))
      {
        result = 0;
        goto LABEL_9;
      }

      ++v5;
    }

    v2 += 4;
    if (v2 != 8)
    {
      continue;
    }

    break;
  }

  result = 1;
LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD913A4(uint64_t a1)
{
  v2 = (a1 + 168);
  v1 = *(a1 + 168);
  v3 = *(a1 + 152);
  *(a1 + 152) = 0;
  *(a1 + 16) = -1;
  *(a1 + 112) = *(a1 + 104);
  *(a1 + 136) = *(a1 + 128);
  sub_24BCC8A84(a1 + 160, v1);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  v2[3] = v2[2];
  return v3;
}

uint64_t sub_24BD91404(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24) + 32 * v2;
  *v3 = *(**(a1 + 16) + 4 * v2);
  *(v3 + 12) = -1;
  *(v3 + 4) = -1;
  *(v3 + 20) = v2;
  *(v3 + 24) = -1;
  *(v3 + 28) = 0;
  return sub_24BD8E1D8(*a1, *a2);
}

uint64_t sub_24BD91440(uint64_t a1, unsigned int a2, float a3)
{
  sub_24BD8E24C(a1, a2, -3.4028e38);
  v5 = sub_24BD8E2F8(a1);
  *(**(a1 + 16) + 32 * v5) = a3;

  return sub_24BD8E1D8(a1, v5);
}

uint64_t sub_24BD914A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BD91500(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD9151C(uint64_t result, unsigned int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v9 = a2 - 1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = v8;
          v11 = a2 - v8;
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                return sub_24BD921F8(v10, v10 + 1, v9, a3);
              case 4:
                return sub_24BD923C0(v10, v10 + 1, v10 + 2, v9, a3);
              case 5:
                return sub_24BD92524(v10, v10 + 1, v10 + 2, v10 + 3, v9, a3);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v88 = *a3;
              v89 = *v88;
              v90 = sub_24BCB9024(*v88 + 104, v9);
              v91 = *(sub_24BCB9024(v89 + 104, v90) + 12);
              v92 = *v88;
              v93 = sub_24BCB9024(v92 + 104, v10);
              result = sub_24BCB9024(v92 + 104, v93);
              if (v91 < *(result + 12))
              {
                v94 = *v10;
                *v10 = *v9;
                *v9 = v94;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v95 = v10 + 1;
            v96 = v10 == a2 || v95 == a2;
            v97 = v96;
            if (a5)
            {
              if ((v97 & 1) == 0)
              {
                v98 = 0;
                v99 = v10;
                do
                {
                  v100 = v99;
                  v99 = v95;
                  v101 = *a3;
                  v102 = **a3;
                  v103 = sub_24BCB9024(v102 + 104, v95);
                  LODWORD(v102) = *(sub_24BCB9024(v102 + 104, v103) + 12);
                  v104 = *v101;
                  v105 = sub_24BCB9024(v104 + 104, v100);
                  result = sub_24BCB9024(v104 + 104, v105);
                  if (v102 < *(result + 12))
                  {
                    v191 = *v99;
                    v106 = v98;
                    while (1)
                    {
                      *(v10 + v106 + 4) = *(v10 + v106);
                      if (!v106)
                      {
                        break;
                      }

                      v106 -= 4;
                      v107 = *a3;
                      v108 = **a3;
                      v109 = sub_24BCB9024(v108 + 104, &v191);
                      LODWORD(v108) = *(sub_24BCB9024(v108 + 104, v109) + 12);
                      v110 = *v107;
                      v111 = sub_24BCB9024(v110 + 104, (v10 + v106));
                      result = sub_24BCB9024(v110 + 104, v111);
                      if (v108 >= *(result + 12))
                      {
                        v112 = (v10 + v106 + 4);
                        goto LABEL_79;
                      }
                    }

                    v112 = v10;
LABEL_79:
                    *v112 = v191;
                  }

                  v95 = v99 + 1;
                  v98 += 4;
                }

                while (v99 + 1 != a2);
              }
            }

            else if ((v97 & 1) == 0)
            {
              v174 = v10 - 1;
              do
              {
                v175 = v10;
                v10 = v95;
                v176 = *a3;
                v177 = **a3;
                v178 = sub_24BCB9024(v177 + 104, v95);
                LODWORD(v177) = *(sub_24BCB9024(v177 + 104, v178) + 12);
                v179 = *v176;
                v180 = sub_24BCB9024(v179 + 104, v175);
                result = sub_24BCB9024(v179 + 104, v180);
                if (v177 < *(result + 12))
                {
                  v191 = *v10;
                  v181 = v174;
                  do
                  {
                    v181[2] = v181[1];
                    v182 = *a3;
                    v183 = **a3;
                    v184 = sub_24BCB9024(v183 + 104, &v191);
                    LODWORD(v183) = *(sub_24BCB9024(v183 + 104, v184) + 12);
                    v185 = *v182;
                    v186 = sub_24BCB9024(v185 + 104, v181);
                    result = sub_24BCB9024(v185 + 104, v186);
                    --v181;
                  }

                  while (v183 < *(result + 12));
                  v181[2] = v191;
                }

                v95 = v10 + 1;
                ++v174;
              }

              while (v10 + 1 != a2);
            }

            return result;
          }

          v190 = v10;
          if (!a4)
          {
            if (v10 != a2)
            {
              v113 = v12 >> 1;
              v114 = v12 >> 1;
              do
              {
                v115 = v114;
                if (v113 >= v114)
                {
                  v116 = (2 * v114) | 1;
                  v117 = &v10[v116];
                  if (2 * v114 + 2 < v11)
                  {
                    v118 = *a3;
                    v119 = **a3;
                    v120 = sub_24BCB9024(v119 + 104, v117);
                    LODWORD(v119) = *(sub_24BCB9024(v119 + 104, v120) + 12);
                    v121 = *v118;
                    v122 = sub_24BCB9024(v121 + 104, v117 + 1);
                    v123 = v121 + 104;
                    v10 = v190;
                    if (v119 < *(sub_24BCB9024(v123, v122) + 12))
                    {
                      ++v117;
                      v116 = 2 * v115 + 2;
                    }
                  }

                  v124 = &v10[v115];
                  v125 = *a3;
                  v126 = **a3;
                  v127 = sub_24BCB9024(v126 + 104, v117);
                  LODWORD(v126) = *(sub_24BCB9024(v126 + 104, v127) + 12);
                  v128 = *v125;
                  v129 = sub_24BCB9024(v128 + 104, v124);
                  result = sub_24BCB9024(v128 + 104, v129);
                  v130 = v126 >= *(result + 12);
                  v10 = v190;
                  if (v130)
                  {
                    v187 = v115;
                    v191 = *v124;
                    do
                    {
                      v131 = v117;
                      *v124 = *v117;
                      if (v113 < v116)
                      {
                        break;
                      }

                      v132 = (2 * v116) | 1;
                      v117 = &v190[v132];
                      v133 = 2 * v116 + 2;
                      if (v133 < v11)
                      {
                        v134 = *a3;
                        v135 = **a3;
                        v136 = sub_24BCB9024(v135 + 104, &v190[v132]);
                        LODWORD(v135) = *(sub_24BCB9024(v135 + 104, v136) + 12);
                        v137 = *v134;
                        v138 = sub_24BCB9024(v137 + 104, v117 + 1);
                        if (v135 < *(sub_24BCB9024(v137 + 104, v138) + 12))
                        {
                          ++v117;
                          v132 = v133;
                        }
                      }

                      v139 = *a3;
                      v140 = **a3;
                      v141 = sub_24BCB9024(v140 + 104, v117);
                      LODWORD(v140) = *(sub_24BCB9024(v140 + 104, v141) + 12);
                      v142 = *v139;
                      v143 = sub_24BCB9024(v142 + 104, &v191);
                      result = sub_24BCB9024(v142 + 104, v143);
                      v124 = v131;
                      v116 = v132;
                    }

                    while (v140 >= *(result + 12));
                    *v131 = v191;
                    v10 = v190;
                    v115 = v187;
                  }
                }

                v114 = v115 - 1;
              }

              while (v115);
              do
              {
                v144 = 0;
                v188 = *v10;
                v145 = v10;
                do
                {
                  v146 = &v145[v144];
                  v147 = v146 + 1;
                  v148 = (2 * v144) | 1;
                  v149 = 2 * v144 + 2;
                  if (v149 < v11)
                  {
                    v150 = v146 + 2;
                    v151 = *a3;
                    v152 = **a3;
                    v153 = sub_24BCB9024(v152 + 104, v146 + 1);
                    LODWORD(v152) = *(sub_24BCB9024(v152 + 104, v153) + 12);
                    v154 = *v151;
                    v155 = sub_24BCB9024(v154 + 104, v150);
                    result = sub_24BCB9024(v154 + 104, v155);
                    if (v152 < *(result + 12))
                    {
                      v147 = v150;
                      v148 = v149;
                    }
                  }

                  *v145 = *v147;
                  v145 = v147;
                  v144 = v148;
                }

                while (v148 <= ((v11 - 2) >> 1));
                v156 = a2 - 1;
                v96 = v147 == --a2;
                if (v96)
                {
                  *v147 = v188;
                  v10 = v190;
                }

                else
                {
                  *v147 = *v156;
                  *v156 = v188;
                  v10 = v190;
                  v157 = (v147 - v190 + 4) >> 2;
                  v158 = v157 < 2;
                  v159 = v157 - 2;
                  if (!v158)
                  {
                    v160 = v159 >> 1;
                    v161 = &v190[v159 >> 1];
                    v162 = *a3;
                    v163 = **a3;
                    v164 = sub_24BCB9024(v163 + 104, v161);
                    LODWORD(v163) = *(sub_24BCB9024(v163 + 104, v164) + 12);
                    v165 = *v162;
                    v166 = sub_24BCB9024(v165 + 104, v147);
                    result = sub_24BCB9024(v165 + 104, v166);
                    if (v163 < *(result + 12))
                    {
                      v191 = *v147;
                      do
                      {
                        v167 = v161;
                        *v147 = *v161;
                        if (!v160)
                        {
                          break;
                        }

                        v160 = (v160 - 1) >> 1;
                        v161 = &v190[v160];
                        v168 = *a3;
                        v169 = **a3;
                        v170 = sub_24BCB9024(v169 + 104, v161);
                        v171 = *(sub_24BCB9024(v169 + 104, v170) + 12);
                        v172 = *v168;
                        v173 = sub_24BCB9024(v172 + 104, &v191);
                        result = sub_24BCB9024(v172 + 104, v173);
                        v147 = v167;
                      }

                      while (v171 < *(result + 12));
                      *v167 = v191;
                    }
                  }
                }

                v158 = v11-- <= 2;
              }

              while (!v158);
            }

            return result;
          }

          v13 = v11 >> 1;
          v14 = &v10[v11 >> 1];
          if (v11 < 0x81)
          {
            sub_24BD921F8(&v10[v11 >> 1], v10, v9, a3);
          }

          else
          {
            sub_24BD921F8(v10, &v10[v11 >> 1], v9, a3);
            sub_24BD921F8(v10 + 1, v14 - 1, a2 - 2, a3);
            sub_24BD921F8(v10 + 2, &v10[v13 + 1], a2 - 3, a3);
            sub_24BD921F8(v14 - 1, v14, &v10[v13 + 1], a3);
            v15 = *v10;
            *v10 = *v14;
            *v14 = v15;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v16 = *a3;
          v17 = **a3;
          v18 = sub_24BCB9024(v17 + 104, v10 - 1);
          LODWORD(v17) = *(sub_24BCB9024(v17 + 104, v18) + 12);
          v19 = *v16;
          v20 = sub_24BCB9024(v19 + 104, v10);
          if (v17 < *(sub_24BCB9024(v19 + 104, v20) + 12))
          {
            break;
          }

          v191 = *v10;
          v54 = *a3;
          v55 = **a3;
          v56 = sub_24BCB9024(v55 + 104, &v191);
          LODWORD(v55) = *(sub_24BCB9024(v55 + 104, v56) + 12);
          v57 = *v54;
          v58 = sub_24BCB9024(v57 + 104, v9);
          result = sub_24BCB9024(v57 + 104, v58);
          if (v55 >= *(result + 12))
          {
            v64 = v10 + 1;
            do
            {
              v8 = v64;
              if (v64 >= a2)
              {
                break;
              }

              v65 = *a3;
              v66 = **a3;
              v67 = sub_24BCB9024(v66 + 104, &v191);
              LODWORD(v66) = *(sub_24BCB9024(v66 + 104, v67) + 12);
              v68 = *v65;
              v69 = sub_24BCB9024(v68 + 104, v8);
              result = sub_24BCB9024(v68 + 104, v69);
              v64 = v8 + 1;
            }

            while (v66 >= *(result + 12));
          }

          else
          {
            v8 = v10;
            do
            {
              ++v8;
              v59 = *a3;
              v60 = **a3;
              v61 = sub_24BCB9024(v60 + 104, &v191);
              LODWORD(v60) = *(sub_24BCB9024(v60 + 104, v61) + 12);
              v62 = *v59;
              v63 = sub_24BCB9024(v62 + 104, v8);
              result = sub_24BCB9024(v62 + 104, v63);
            }

            while (v60 >= *(result + 12));
          }

          v70 = a2;
          if (v8 < a2)
          {
            v70 = a2;
            do
            {
              --v70;
              v71 = *a3;
              v72 = **a3;
              v73 = sub_24BCB9024(v72 + 104, &v191);
              LODWORD(v72) = *(sub_24BCB9024(v72 + 104, v73) + 12);
              v74 = *v71;
              v75 = sub_24BCB9024(v74 + 104, v70);
              result = sub_24BCB9024(v74 + 104, v75);
            }

            while (v72 < *(result + 12));
          }

          while (v8 < v70)
          {
            v76 = *v8;
            *v8 = *v70;
            *v70 = v76;
            do
            {
              ++v8;
              v77 = *a3;
              v78 = **a3;
              v79 = sub_24BCB9024(v78 + 104, &v191);
              LODWORD(v78) = *(sub_24BCB9024(v78 + 104, v79) + 12);
              v80 = *v77;
              v81 = sub_24BCB9024(v80 + 104, v8);
            }

            while (v78 >= *(sub_24BCB9024(v80 + 104, v81) + 12));
            do
            {
              --v70;
              v82 = *a3;
              v83 = **a3;
              v84 = sub_24BCB9024(v83 + 104, &v191);
              LODWORD(v83) = *(sub_24BCB9024(v83 + 104, v84) + 12);
              v85 = *v82;
              v86 = sub_24BCB9024(v85 + 104, v70);
              result = sub_24BCB9024(v85 + 104, v86);
            }

            while (v83 < *(result + 12));
          }

          v87 = v8 - 1;
          if (v8 - 1 != v10)
          {
            *v10 = *v87;
          }

          a5 = 0;
          *v87 = v191;
        }

        v21 = 0;
        v191 = *v10;
        do
        {
          ++v21;
          v22 = *a3;
          v23 = **a3;
          v24 = sub_24BCB9024(v23 + 104, &v10[v21]);
          LODWORD(v23) = *(sub_24BCB9024(v23 + 104, v24) + 12);
          v25 = *v22;
          v26 = sub_24BCB9024(v25 + 104, &v191);
        }

        while (v23 < *(sub_24BCB9024(v25 + 104, v26) + 12));
        v27 = &v10[v21];
        v28 = a2;
        if (v21 == 1)
        {
          v28 = a2;
          do
          {
            if (v27 >= v28)
            {
              break;
            }

            --v28;
            v34 = *a3;
            v35 = **a3;
            v36 = sub_24BCB9024(v35 + 104, v28);
            LODWORD(v35) = *(sub_24BCB9024(v35 + 104, v36) + 12);
            v37 = *v34;
            v38 = sub_24BCB9024(v37 + 104, &v191);
          }

          while (v35 >= *(sub_24BCB9024(v37 + 104, v38) + 12));
        }

        else
        {
          do
          {
            --v28;
            v29 = *a3;
            v30 = **a3;
            v31 = sub_24BCB9024(v30 + 104, v28);
            LODWORD(v30) = *(sub_24BCB9024(v30 + 104, v31) + 12);
            v32 = *v29;
            v33 = sub_24BCB9024(v32 + 104, &v191);
          }

          while (v30 >= *(sub_24BCB9024(v32 + 104, v33) + 12));
        }

        if (v27 >= v28)
        {
          v52 = v27 - 1;
        }

        else
        {
          v39 = v27;
          v40 = v28;
          do
          {
            v41 = *v39;
            *v39 = *v40;
            *v40 = v41;
            do
            {
              ++v39;
              v42 = *a3;
              v43 = **a3;
              v44 = sub_24BCB9024(v43 + 104, v39);
              LODWORD(v43) = *(sub_24BCB9024(v43 + 104, v44) + 12);
              v45 = *v42;
              v46 = sub_24BCB9024(v45 + 104, &v191);
            }

            while (v43 < *(sub_24BCB9024(v45 + 104, v46) + 12));
            do
            {
              --v40;
              v47 = *a3;
              v48 = **a3;
              v49 = sub_24BCB9024(v48 + 104, v40);
              LODWORD(v48) = *(sub_24BCB9024(v48 + 104, v49) + 12);
              v50 = *v47;
              v51 = sub_24BCB9024(v50 + 104, &v191);
            }

            while (v48 >= *(sub_24BCB9024(v50 + 104, v51) + 12));
          }

          while (v39 < v40);
          v52 = v39 - 1;
        }

        if (v52 != v190)
        {
          *v190 = *v52;
        }

        *v52 = v191;
        if (v27 >= v28)
        {
          break;
        }

LABEL_38:
        result = sub_24BD9151C(v190, v52, a3, a4, a5 & 1);
        a5 = 0;
        v8 = v52 + 1;
      }

      v53 = sub_24BD926E8(v190, v52, a3);
      v8 = v52 + 1;
      result = sub_24BD926E8(v52 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v53)
      {
        goto LABEL_38;
      }
    }

    a2 = v52;
    v8 = v190;
    if (!v53)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_24BD921F8(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  v8 = *a4;
  v9 = **a4;
  v10 = sub_24BCB9024(v9 + 104, a2);
  LODWORD(v9) = *(sub_24BCB9024(v9 + 104, v10) + 12);
  v11 = *v8;
  v12 = sub_24BCB9024(v11 + 104, a1);
  v13 = *(sub_24BCB9024(v11 + 104, v12) + 12);
  v14 = *a4;
  v15 = **a4;
  v16 = sub_24BCB9024(v15 + 104, a3);
  v17 = *(sub_24BCB9024(v15 + 104, v16) + 12);
  v18 = *v14;
  v19 = sub_24BCB9024(v18 + 104, a2);
  result = sub_24BCB9024(v18 + 104, v19);
  v21 = *(result + 12);
  if (v9 >= v13)
  {
    if (v17 < v21)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *a4;
      v25 = **a4;
      v26 = sub_24BCB9024(v25 + 104, a2);
      LODWORD(v25) = *(sub_24BCB9024(v25 + 104, v26) + 12);
      v27 = *v24;
      v28 = sub_24BCB9024(v27 + 104, a1);
      result = sub_24BCB9024(v27 + 104, v28);
      if (v25 < *(result + 12))
      {
        v29 = *a1;
        *a1 = *a2;
        *a2 = v29;
      }
    }
  }

  else
  {
    v22 = *a1;
    if (v17 >= v21)
    {
      *a1 = *a2;
      *a2 = v22;
      v30 = *a4;
      v31 = **a4;
      v32 = sub_24BCB9024(v31 + 104, a3);
      LODWORD(v31) = *(sub_24BCB9024(v31 + 104, v32) + 12);
      v33 = *v30;
      v34 = sub_24BCB9024(v33 + 104, a2);
      result = sub_24BCB9024(v33 + 104, v34);
      if (v31 >= *(result + 12))
      {
        return result;
      }

      v22 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v22;
  }

  return result;
}

uint64_t sub_24BD923C0(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t **a5)
{
  sub_24BD921F8(a1, a2, a3, a5);
  v10 = *a5;
  v11 = **a5;
  v12 = sub_24BCB9024(v11 + 104, a4);
  LODWORD(v11) = *(sub_24BCB9024(v11 + 104, v12) + 12);
  v13 = *v10;
  v14 = sub_24BCB9024(v13 + 104, a3);
  result = sub_24BCB9024(v13 + 104, v14);
  if (v11 < *(result + 12))
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *a5;
    v18 = **a5;
    v19 = sub_24BCB9024(v18 + 104, a3);
    LODWORD(v18) = *(sub_24BCB9024(v18 + 104, v19) + 12);
    v20 = *v17;
    v21 = sub_24BCB9024(v20 + 104, a2);
    result = sub_24BCB9024(v20 + 104, v21);
    if (v18 < *(result + 12))
    {
      v22 = *a2;
      *a2 = *a3;
      *a3 = v22;
      v23 = *a5;
      v24 = *v23;
      v25 = sub_24BCB9024(*v23 + 104, a2);
      LODWORD(v24) = *(sub_24BCB9024(v24 + 104, v25) + 12);
      v26 = *v23;
      v27 = sub_24BCB9024(v26 + 104, a1);
      result = sub_24BCB9024(v26 + 104, v27);
      if (v24 < *(result + 12))
      {
        v28 = *a1;
        *a1 = *a2;
        *a2 = v28;
      }
    }
  }

  return result;
}

uint64_t sub_24BD92524(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t **a6)
{
  sub_24BD923C0(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = **a6;
  v14 = sub_24BCB9024(v13 + 104, a5);
  LODWORD(v13) = *(sub_24BCB9024(v13 + 104, v14) + 12);
  v15 = *v12;
  v16 = sub_24BCB9024(v15 + 104, a4);
  result = sub_24BCB9024(v15 + 104, v16);
  if (v13 < *(result + 12))
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    v19 = *a6;
    v20 = **a6;
    v21 = sub_24BCB9024(v20 + 104, a4);
    LODWORD(v20) = *(sub_24BCB9024(v20 + 104, v21) + 12);
    v22 = *v19;
    v23 = sub_24BCB9024(v22 + 104, a3);
    result = sub_24BCB9024(v22 + 104, v23);
    if (v20 < *(result + 12))
    {
      v24 = *a3;
      *a3 = *a4;
      *a4 = v24;
      v25 = *a6;
      v26 = **a6;
      v27 = sub_24BCB9024(v26 + 104, a3);
      LODWORD(v26) = *(sub_24BCB9024(v26 + 104, v27) + 12);
      v28 = *v25;
      v29 = sub_24BCB9024(v28 + 104, a2);
      result = sub_24BCB9024(v28 + 104, v29);
      if (v26 < *(result + 12))
      {
        v30 = *a2;
        *a2 = *a3;
        *a3 = v30;
        v31 = *a6;
        v32 = *v31;
        v33 = sub_24BCB9024(*v31 + 104, a2);
        LODWORD(v32) = *(sub_24BCB9024(v32 + 104, v33) + 12);
        v34 = *v31;
        v35 = sub_24BCB9024(v34 + 104, a1);
        result = sub_24BCB9024(v34 + 104, v35);
        if (v32 < *(result + 12))
        {
          v36 = *a1;
          *a1 = *a2;
          *a2 = v36;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BD926E8(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = a2 - 1;
        v8 = *a3;
        v9 = **a3;
        v10 = sub_24BCB9024(v9 + 104, a2 - 1);
        LODWORD(v9) = *(sub_24BCB9024(v9 + 104, v10) + 12);
        v11 = *v8;
        v12 = sub_24BCB9024(v11 + 104, a1);
        if (v9 < *(sub_24BCB9024(v11 + 104, v12) + 12))
        {
          v13 = *a1;
          *a1 = *v7;
          *v7 = v13;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_24BD921F8(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      sub_24BD923C0(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_24BD92524(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v14 = a1 + 2;
  sub_24BD921F8(a1, a1 + 1, a1 + 2, a3);
  v15 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *a3;
    v19 = **a3;
    v20 = sub_24BCB9024(v19 + 104, v15);
    LODWORD(v19) = *(sub_24BCB9024(v19 + 104, v20) + 12);
    v21 = *v18;
    v22 = sub_24BCB9024(v21 + 104, v14);
    if (v19 < *(sub_24BCB9024(v21 + 104, v22) + 12))
    {
      v31 = *v15;
      v23 = v16;
      while (1)
      {
        *(a1 + v23 + 12) = *(a1 + v23 + 8);
        if (v23 == -8)
        {
          break;
        }

        v24 = *a3;
        v25 = **a3;
        v26 = sub_24BCB9024(v25 + 104, &v31);
        LODWORD(v25) = *(sub_24BCB9024(v25 + 104, v26) + 12);
        v27 = *v24;
        v28 = sub_24BCB9024(v27 + 104, (a1 + v23 + 4));
        v23 -= 4;
        if (v25 >= *(sub_24BCB9024(v27 + 104, v28) + 12))
        {
          v29 = (a1 + v23 + 12);
          goto LABEL_19;
        }
      }

      v29 = a1;
LABEL_19:
      *v29 = v31;
      if (++v17 == 8)
      {
        return v15 + 1 == a2;
      }
    }

    v14 = v15;
    v16 += 4;
    if (++v15 == a2)
    {
      return 1;
    }
  }
}

float32x4_t sub_24BD9295C(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t result)
{
  v6 = vsubq_f32(*a4, *a3);
  v7 = vsubq_f32(*a5, *a4);
  v8 = vuzp2q_s32(vextq_s8(v7, v7, 4uLL), v7);
  v9 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v6, vextq_s8(v6, v6, 0xCuLL)), v6), v8), vzip2q_s32(vzip1q_s32(v7, vextq_s8(v7, v7, 0xCuLL)), v7), vuzp2q_s32(vextq_s8(v6, v6, 4uLL), v6));
  v10 = vmulq_f32(v9, v9);
  v10.i32[3] = 0;
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  v10.f32[0] = sqrtf(vaddv_f32(*v10.f32));
  v11 = vdivq_f32(v9, vdupq_lane_s32(*v10.f32, 0));
  v12 = vmulq_f32(*a2, v11);
  v12.i32[3] = 0;
  v13 = vpaddq_f32(v12, v12);
  v13.f32[0] = vaddv_f32(*v13.f32);
  v8.i64[0] = 0;
  v14 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v8, v13), 0), vnegq_f32(v11), v11);
  v15 = vmulq_f32(*a3, v14);
  v15.i32[3] = 0;
  v16 = vaddv_f32(*&vpaddq_f32(v15, v15));
  v17 = vmulq_f32(*a4, v14);
  v17.i32[3] = 0;
  v18 = vaddv_f32(*&vpaddq_f32(v17, v17));
  v19 = vmulq_f32(*a5, v14);
  v19.i32[3] = 0;
  v20 = vaddv_f32(*&vpaddq_f32(v19, v19));
  if (v18 > v16)
  {
    v16 = v18;
  }

  if (v20 <= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v20;
  }

  v22 = vmulq_f32(v14, *a1);
  v22.i32[3] = 0;
  v23 = vaddv_f32(*&vpaddq_f32(v22, v22));
  if (v21 > v23)
  {
    result = vaddq_f32(*a1, vmulq_n_f32(*a2, (v21 - v23) + result.f32[0]));
    *a1 = result;
  }

  return result;
}

BOOL sub_24BD92A58(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5, float32_t a6, uint64_t a7, void *a8, char a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v260 = *MEMORY[0x277D85DE8];
  v249 = 0;
  sub_24BE47938(a5, &v249);
  v248 = 0x100000000;
  sub_24BE46DA0(a5, &v248, v15, v16);
  v210 = a2[1] * *a2;
  v17 = v210 >> 7;
  if (v210 >> 7 >= 0x2000)
  {
    v17 = 0x2000;
  }

  v230 = v17;
  context = objc_autoreleasePoolPush();
  v18 = sub_24BE4857C(a5);
  v214 = objc_msgSend_newCommandQueue(v18, v19, v20, v21);
  v247 = 0;
  v208 = v18;
  v209 = sub_24BD4C428(v18, &v247, a10, a12);
  v22 = v247;
  if (v22)
  {
    if (a9)
    {
      sub_24BCA2D38(v259, a11);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a8, v259, 5, &__p);
      if (v240 < 0)
      {
        operator delete(__p.i64[0]);
      }

      v23 = v259;
    }

    else
    {
      LODWORD(v244) = 0;
      v245 = std::system_category();
      sub_24BCA2D38(v258, a11);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&v244, v258, 5, &__p);
      if (v240 < 0)
      {
        operator delete(__p.i64[0]);
      }

      v23 = v258;
    }

    sub_24BC9F08C(v23);

    v192 = 0;
    v219 = 0;
    v220 = 0;
    v211 = 0;
    v212 = 0;
    v207 = 0;
    v213 = 0;
    goto LABEL_104;
  }

  v24 = sub_24BE485A4(a5);
  v212 = sub_24BE485C4(a5);
  v213 = v24;
  v25 = objc_alloc_init(MEMORY[0x277CD6D30]);
  objc_msgSend_setThreadGroupSizeIsMultipleOfThreadExecutionWidth_(v25, v26, 1, v27);
  v30 = objc_msgSend_newFunctionWithName_(v209, v28, @"rcdBOOL", v29);
  objc_msgSend_setComputeFunction_(v25, v31, v30, v32);

  v246 = 0;
  v34 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v18, v33, v25, 0, 0, &v246);
  v35 = v246;
  v220 = v34;
  if (v34)
  {

    v217 = (v230 << 7);
    v37 = objc_msgSend_newBufferWithLength_options_(v18, v36, 32 * v217, 0);
    v39 = objc_msgSend_newBufferWithLength_options_(v18, v38, 16 * v217, 32);
    v215 = objc_msgSend_newBufferWithLength_options_(v208, v40, v217, 0);
    v219 = v39;
    v211 = v37;
    v44 = objc_msgSend_contents(v37, v41, v42, v43);
    sub_24BCA123C(&v244, (2 * v230));
    sub_24BCB2008(v243, 3uLL);
    sub_24BC836D4(&__p, off_27F078F98[0]);
    *&v254[8] = 0;
    *v254 = 0;
    v45 = sub_24BCB6470((a1 + 8), v254, &__p);
    v207 = v45 != -1;
    if (v240 < 0)
    {
      operator delete(__p.i64[0]);
    }

    v46 = a1;
    v47 = (*(a1 + 8) + 16 * v45);
    v48 = v47[1];
    v216 = *v47;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v48);
      v46 = a1;
    }

    __p = 0uLL;
    v239 = 0;
    v49.i64[0] = 0x80000000800000;
    v49.i64[1] = 0x80000000800000;
    v241 = vnegq_f32(v49);
    v242 = v49;
    sub_24BE24B50(v46, &__p);
    v53 = vsubq_f32(v242, v241);
    v54 = v53.f32[1];
    if (v53.f32[0] >= v53.f32[1])
    {
      v54 = v53.f32[0];
    }

    v53.i32[0] = v53.i32[2];
    if (v54 >= v53.f32[2])
    {
      v53.f32[0] = v54;
    }

    if (a2[1])
    {
      v226 = v53.i32[0];
      v224 = 0;
      v55 = 0;
      v56 = v44 + 16;
      v57 = 0.5;
      v58 = 1.0;
      v59 = -0.5;
      v60 = a2;
      v227 = a6;
      while (1)
      {
        v61 = *v60;
        if (!*v60)
        {
          goto LABEL_65;
        }

        v62 = 0;
        while (*(*(a2 + 2) + a2[2] * (v62 + v61 * v224)) != 1)
        {
LABEL_55:
          if (++v62 >= v61)
          {
            goto LABEL_65;
          }
        }

        v63 = (*(a3 + 16) + 16 * ((v62 + *a3 * v224) * *(a3 + 8)));
        v237 = *(v63 + 1);
        sub_24BCD567C(a1, &v237, v243);
        v65 = v243[0];
        v66 = *(a1 + 176);
        v67 = *v243[0];
        v68 = *(a1 + 8);
        v69 = (v68 + 16 * v66);
        v71 = *v69;
        v70 = v69[1];
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v70);
          v65 = v243[0];
          v66 = *(a1 + 176);
          v68 = *(a1 + 8);
          v72 = (v68 + 16 * v66);
          v73 = *v72;
          v70 = v72[1];
        }

        else
        {
          v73 = *v69;
        }

        v228 = v63[2];
        v231 = *(*(v71 + 40) + 16 * v67);
        v74 = v65[1];
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v70);
          v65 = v243[0];
          v66 = *(a1 + 176);
          v68 = *(a1 + 8);
          v75 = (v68 + 16 * v66);
          v76 = *v75;
          v70 = v75[1];
        }

        else
        {
          v76 = v73;
        }

        v77 = *(*(v73 + 40) + 16 * v74);
        v64.i32[0] = v63[3];
        v78 = v65[2];
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          v221 = v64.i32[0];
          v222 = v77;
          sub_24BC9EC78(v70);
          v64.i32[0] = v221;
          v77 = v222;
          v79.i32[0] = v63[3];
          v65 = v243[0];
          v66 = *(a1 + 176);
          v68 = *(a1 + 8);
          v80 = vdupq_lane_s32(v79, 0);
        }

        else
        {
          v80 = vdupq_lane_s32(v64, 0);
          v79.i32[0] = v63[3];
        }

        v81 = vaddq_f32(vmulq_n_f32(v231, v228), vmulq_n_f32(v77, *v64.i32));
        v82 = v63[2];
        v83 = (1.0 - v82) - *v79.i32;
        v236 = vaddq_f32(v81, vmulq_n_f32(*(*(v76 + 40) + 16 * v78), v83));
        v84 = *v65;
        v85 = vaddq_f32(vaddq_f32(vmulq_n_f32(*(*(v216 + 40) + 16 * v84), v82), vmulq_f32(v80, *(*(v216 + 40) + 16 * v65[1]))), vmulq_n_f32(*(*(v216 + 40) + 16 * v65[2]), v83));
        v86 = vmulq_f32(v85, v85);
        v86.i32[3] = 0;
        v86.i64[0] = vpaddq_f32(v86, v86).u64[0];
        v86.f32[0] = sqrtf(vaddv_f32(*v86.f32));
        v235 = vdivq_f32(v85, vdupq_lane_s32(*v86.f32, 0));
        v87 = (v68 + 16 * v66);
        v89 = *v87;
        v88 = v87[1];
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v88);
          v65 = v243[0];
          v66 = *(a1 + 176);
          v68 = *(a1 + 8);
        }

        *v254 = *(*(v89 + 40) + 16 * v84);
        v90 = v65[1];
        v91 = (v68 + 16 * v66);
        v93 = *v91;
        v92 = v91[1];
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v92);
          v65 = v243[0];
          v66 = *(a1 + 176);
          v68 = *(a1 + 8);
        }

        *v233 = *(*(v93 + 40) + 16 * v90);
        v94 = v65[2];
        v95 = (v68 + 16 * v66);
        v97 = *v95;
        v96 = v95[1];
        if (v96)
        {
          atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v96);
        }

        v234 = *(*(v97 + 40) + 16 * v94);
        v98 = v234;
        v98.f32[0] = a6;
        sub_24BD9295C(&v236, &v235, v254, v233, &v234, v98);
        v99 = 0;
        v100 = v244;
        *(v244 + ((v55 >> 4) & 0xFFFFFFFFFFFFFF8)) = v62;
        *&v100[(v55 >> 4) & 0xFFFFFFFFFFFFFF8 | 4] = v224;
        v101 = v236.i64[0];
        v102 = 0.0;
        v103 = v236.i32[2];
        do
        {
          v229 = v102;
          v104 = (v102 + v57) * -0.0625 + v58;
          v106 = __sincos_stret((v104 + v59 + v104 + v59) * 3.14159265);
          v105.f64[0] = v106.__cosval;
          v105.f64[1] = v106.__sinval;
          v232 = v105;
          v107 = v56 + 32 * v55;
          v55 += 8;
          v108 = 8;
          v109 = 0.0;
          do
          {
            v110 = (v109 + 0.5) * -0.125 + 1.0;
            *&v111 = sin((v110 + -0.5) * 3.14159265);
            v112 = sqrt(1.0 - (*&v111 * *&v111));
            *v113.f32 = vcvt_f32_f64(vmulq_n_f64(v232, v112));
            v113.i64[1] = v111;
            v114 = vmulq_f32(v113, v113);
            v114.i32[3] = 0;
            v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
            v114.f32[0] = sqrtf(vaddv_f32(*v114.f32));
            v115 = vdivq_f32(v113, vdupq_lane_s32(*v114.f32, 0));
            *(v107 - 16) = v101;
            *v107 = v115.i64[0];
            *(v107 + 8) = v115.i32[2];
            *(v107 - 8) = v103;
            *(v107 - 4) = v227;
            *(v107 + 12) = v226;
            v109 = v109 + 1.0;
            v107 += 32;
            --v108;
          }

          while (v108);
          v102 = v229 + 1.0;
          ++v99;
          v57 = 0.5;
          v59 = -0.5;
          v58 = 1.0;
        }

        while (v99 != 16);
        a6 = v227;
        if (v217 != v55)
        {
          goto LABEL_54;
        }

        v116 = objc_msgSend_commandBuffer(v214, v50, v51, v52, v102);
        objc_msgSend_encodeIntersectionToCommandBuffer_intersectionType_rayBuffer_rayBufferOffset_intersectionBuffer_intersectionBufferOffset_rayCount_accelerationStructure_(v213, v117, v116, 1, v211, 0, v219, 0, v217, v212);
        v121 = objc_msgSend_maxTotalThreadsPerThreadgroup(v220, v118, v119, v120);
        v125 = v121 >= v217 ? v217 : v121;
        v126 = objc_msgSend_computeCommandEncoder(v116, v122, v123, v124);
        objc_msgSend_setBuffer_offset_atIndex_(v126, v127, v219, 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v126, v128, v215, 0, 1);
        objc_msgSend_setComputePipelineState_(v126, v129, v220, v130);
        *v254 = v217;
        *&v254[8] = vdupq_n_s64(1uLL);
        *v233 = v125;
        *&v233[8] = *&v254[8];
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v126, v131, v254, v233);
        objc_msgSend_endEncoding(v126, v132, v133, v134);
        sub_24BCDF83C();
        objc_msgSend_commit(v116, v135, v136, v137);
        objc_msgSend_waitUntilCompleted(v116, v138, v139, v140);
        v144 = objc_msgSend_error(v116, v141, v142, v143);
        v145 = sub_24BD4C518(v144);

        if (!v145)
        {
          break;
        }

        if (a9)
        {
          sub_24BCA2D38(v253, a11);
          sub_24BC836D4(v254, &unk_24C0435AF);
          sub_24BD6B844(a8, v253, 16, v254);
          if ((v254[23] & 0x80000000) != 0)
          {
            operator delete(*v254);
          }

          v157 = v253;
        }

        else
        {
          *v233 = 0;
          *&v233[8] = std::system_category();
          sub_24BCA2D38(v252, a11);
          sub_24BC836D4(v254, &unk_24C0435AF);
          sub_24BD6B844(v233, v252, 16, v254);
          if ((v254[23] & 0x80000000) != 0)
          {
            operator delete(*v254);
          }

          v157 = v252;
        }

        sub_24BC9F08C(v157);

        v207 = 0;
        v55 = v217;
LABEL_65:
        v60 = a2;
        if (++v224 >= a2[1])
        {
          if (v207 && v55 != 0)
          {
            v158 = objc_msgSend_commandBuffer(v214, v50, v51, v52);
            objc_msgSend_encodeIntersectionToCommandBuffer_intersectionType_rayBuffer_rayBufferOffset_intersectionBuffer_intersectionBufferOffset_rayCount_accelerationStructure_(v213, v159, v158, 1, v211, 0, v219, 0, v55, v212);
            v163 = objc_msgSend_maxTotalThreadsPerThreadgroup(v220, v160, v161, v162);
            if (v163 >= v55)
            {
              v167 = v55;
            }

            else
            {
              v167 = v163;
            }

            v168 = objc_msgSend_computeCommandEncoder(v158, v164, v165, v166);
            objc_msgSend_setBuffer_offset_atIndex_(v168, v169, v219, 0, 0);
            objc_msgSend_setBuffer_offset_atIndex_(v168, v170, v215, 0, 1);
            objc_msgSend_setComputePipelineState_(v168, v171, v220, v172);
            *v254 = v55;
            *&v254[8] = vdupq_n_s64(1uLL);
            *v233 = v167;
            *&v233[8] = *&v254[8];
            objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v168, v173, v254, v233);
            objc_msgSend_endEncoding(v168, v174, v175, v176);
            sub_24BCDF83C();
            objc_msgSend_commit(v158, v177, v178, v179);
            objc_msgSend_waitUntilCompleted(v158, v180, v181, v182);
            v186 = objc_msgSend_error(v158, v183, v184, v185);
            v187 = sub_24BD4C518(v186);

            if (v187)
            {
              if (a9)
              {
                sub_24BCA2D38(v251, a11);
                sub_24BC836D4(v254, &unk_24C0435AF);
                sub_24BD6B844(a8, v251, 16, v254);
                if ((v254[23] & 0x80000000) != 0)
                {
                  operator delete(*v254);
                }

                v191 = v251;
              }

              else
              {
                *v233 = 0;
                *&v233[8] = std::system_category();
                sub_24BCA2D38(v250, a11);
                sub_24BC836D4(v254, &unk_24C0435AF);
                sub_24BD6B844(v233, v250, 16, v254);
                if ((v254[23] & 0x80000000) != 0)
                {
                  operator delete(*v254);
                }

                v191 = v250;
              }

              sub_24BC9F08C(v191);
            }

            else
            {
              v194 = objc_msgSend_contents(v215, v188, v189, v190);
              LODWORD(v195) = 0;
              do
              {
                v196 = 0;
                v197 = v194 + v195;
                v198 = *(v244 + (v195 >> 6));
                v199 = *(v244 + ((v195 >> 6) | 1));
                do
                {
                  v200 = 0;
                  v201 = 0;
                  do
                  {
                    v201 = *(v197 + v200++) | (2 * v201);
                  }

                  while (v200 != 8);
                  v254[v196++] = v201;
                  v197 += 8;
                }

                while (v196 != 16);
                *(*(a4 + 16) + 4 * ((v198 + *a4 * v199) * *(a4 + 8))) = *v254;
                v195 = (v195 + 128);
              }

              while (v55 > v195);
            }

            v207 = !v187;
          }

          goto LABEL_99;
        }
      }

      v149 = objc_msgSend_contents(v215, v146, v147, v148);
      if (v210 >= 0x80)
      {
        v150 = 0;
        do
        {
          v151 = 0;
          v152 = *(v244 + (v150 >> 6));
          v153 = *(v244 + ((v150 >> 6) | 1));
          v154 = v149;
          do
          {
            v155 = 0;
            v156 = 0;
            do
            {
              v156 = *(v154 + v155++) | (2 * v156);
            }

            while (v155 != 8);
            v256[v151++ - 16] = v156;
            v154 += 8;
          }

          while (v151 != 16);
          *(*(a4 + 16) + 4 * ((v152 + *a4 * v153) * *(a4 + 8))) = v255;
          v150 += 128;
          v149 += 128;
        }

        while (v217 > v150);
      }

      v55 = 0;
LABEL_54:
      v61 = *a2;
      goto LABEL_55;
    }

LABEL_99:
    if (v243[0])
    {
      v243[1] = v243[0];
      operator delete(v243[0]);
    }

    if (v244)
    {
      v245 = v244;
      operator delete(v244);
    }

    v192 = v215;
  }

  else
  {
    if (a9)
    {
      sub_24BCA2D38(v257, a11);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a8, v257, 5, &__p);
      if (v240 < 0)
      {
        operator delete(__p.i64[0]);
      }

      v193 = v257;
    }

    else
    {
      LODWORD(v244) = 0;
      v245 = std::system_category();
      sub_24BCA2D38(v256, a11);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&v244, v256, 5, &__p);
      if (v240 < 0)
      {
        operator delete(__p.i64[0]);
      }

      v193 = v256;
    }

    sub_24BC9F08C(v193);

    v192 = 0;
    v219 = 0;
    v220 = 0;
    v211 = 0;
    v207 = 0;
  }

LABEL_104:

  objc_autoreleasePoolPop(context);
  v202 = *MEMORY[0x277D85DE8];
  return v207;
}

void sub_24BD93980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  sub_24BC9F08C(&a71);

  if (a61)
  {
    operator delete(a61);
  }

  if (a64)
  {
    operator delete(a64);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BD93C54(double *a1, double *a2)
{
  if (sub_24BE3EFB0(a1, a1 + 2, a2) != 2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = v4 >= *a1 ? *a1 : a1[2];
  if (v5 > *a2)
  {
    return 0;
  }

  if (*a1 >= v4)
  {
    v4 = *a1;
  }

  if (v4 < *a2)
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a1[1];
  v8 = v6 >= v7 ? a1[1] : a1[3];
  v9 = a2[1];
  if (v8 > v9)
  {
    return 0;
  }

  if (v7 >= v6)
  {
    v6 = a1[1];
  }

  return v6 >= v9;
}

BOOL sub_24BD93CEC(double *a1, double *a2, double *a3)
{
  v3 = a1[1];
  v4 = a2[1];
  v5 = a2[2] - *a2;
  v6 = a2[3] - v4;
  v7 = (a1[2] - *a1) * v6 - (a1[3] - v3) * v5;
  v8 = fabs(v7);
  if (v8 > 2.22044605e-16)
  {
    *a3 = ((*a2 - *a1) * v6 - (v4 - v3) * v5) / v7;
  }

  return v8 > 2.22044605e-16;
}

BOOL sub_24BD93D50(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v8 = sub_24BCB9024(a1 + 104, a2);
  v9 = sub_24BC9ECE4(a1, *(a1 + 180), *v8);
  if ((v10 & *v9) != 0)
  {
    return 1;
  }

  v11 = (*(a1 + 56) + 16 * *a3);
  v13 = *v11;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v12);
  }

  v14 = *(*(v13 + 40) + 4 * *(sub_24BCB9024(a1 + 104, a2) + 16));
  v15 = (*(a1 + 56) + 16 * *a3);
  v17 = *v15;
  v16 = v15[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v16);
  }

  v18 = sub_24BCB9024(a1 + 104, a2);
  if (v14 != *(*(v17 + 40) + 4 * *(sub_24BCB9024(a1 + 104, v18) + 16)))
  {
    return 1;
  }

  v19 = (*(a1 + 56) + 16 * *a4);
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
  }

  v22 = sub_24BCB9024(a1 + 104, a2);
  v23 = *(v21 + 40) + 12 * *(sub_24BCB9024(a1 + 104, v22) + 16);
  v24 = (*(a1 + 56) + 16 * *a4);
  v26 = *v24;
  v25 = v24[1];
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v25);
  }

  v27 = sub_24BCB9024(a1 + 104, a2);
  v28 = 0;
  v29 = 0;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      if (*(v23 + 4 * v28) == *(*(v26 + 40) + 12 * *(v27 + 16) + i))
      {
        ++v29;
      }
    }

    ++v28;
  }

  while (v28 != 3);
  return v29 < 2u;
}

uint64_t sub_24BD93F10(uint64_t a1, float *a2, uint64_t *a3, void *a4, _DWORD *a5)
{
  sub_24BD22E84();
  v9 = cosf(*a2);
  sub_24BCB3B5C(a1);
  sub_24BC836D4(__p, off_27F078FD0[0]);
  v172 = 0;
  v173 = 0;
  v146 = sub_24BCB6470((a1 + 56), &v172, __p);
  if (SBYTE7(v161) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  v11 = v10;
  sub_24BD98A10(&v172, v10);
  if (v10)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      LODWORD(__p[0]) = v13;
      v12 = sub_24BC96B00(a1, __p);
      v15 = &v172[v14];
      *v15 = *__p;
      v15[1] = v12;
      v14 += 8;
      ++v13;
    }

    while (8 * v10 != v14);
  }

  v16 = 126 - 2 * __clz((v173 - v172) >> 3);
  if (v173 == v172)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  sub_24BD98A84(v172, v173, v17, 1, v12);
  sub_24BCB58AC(a4, 0x32uLL);
  LOBYTE(__p[0]) = 0;
  sub_24BC9FEFC(&v170, v10);
  v167 = 0;
  v168 = 0;
  v169 = 0;
  sub_24BCB8D20(&v167, vcvts_n_f32_u32(v10, 1uLL));
  v149 = v10;
  if (v10)
  {
    v18 = 0;
    v147 = a5;
    do
    {
      if ((*&v170[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v18))
      {
        ++v18;
      }

      else
      {
        v168 = v167;
        v19 = v172;
        v20 = 8 * v18;
        v21 = *&v172[8 * v18];
        v22 = (*(a1 + 56) + 16 * v146);
        v24 = *v22;
        v23 = v22[1];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v23);
          v19 = v172;
        }

        v25 = *(v24 + 40);
        v153 = *&v19[8 * v18 + 4];
        v151 = *(v25 + 16 * v21);
        LODWORD(__p[0]) = v18;
        sub_24BC97D60(&v167, __p);
        v154 = vaddq_f32(vmulq_n_f32(v151, v153), 0);
        v26 = v18 + 1;
        v27 = v172;
        for (i = v26; v26 < (v173 - v27) >> 3; v20 += 8)
        {
          v28 = *&v27[v20 + 8];
          v29 = (*(a1 + 56) + 16 * v146);
          v31 = *v29;
          v30 = v29[1];
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v30);
            v27 = v172;
          }

          v32 = vmulq_f32(*(*(v31 + 40) + 16 * v28), *(v25 + 16 * v21));
          v32.i32[3] = 0;
          if (vaddv_f32(*&vpaddq_f32(v32, v32)) > v9)
          {
            v150 = *&v27[v20 + 12];
            v152 = *(*(v31 + 40) + 16 * v28);
            LODWORD(__p[0]) = v26;
            sub_24BC97D60(&v167, __p);
            v154 = vaddq_f32(v154, vmulq_n_f32(v152, v150));
            v27 = v172;
          }

          ++v26;
        }

        v33 = vmulq_f32(v154, v154);
        v33.i32[3] = 0;
        v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
        v33.f32[0] = sqrtf(vaddv_f32(*v33.f32));
        v34 = vdivq_f32(v154, vdupq_lane_s32(*v33.f32, 0));
        *__p = v34;
        v35 = a4;
        v36 = a4[1];
        if (v36 >= a4[2])
        {
          v37 = sub_24BD47100(a4, __p);
          v11 = v149;
          v35 = a4;
        }

        else
        {
          *v36 = v34;
          v37 = &v36[1];
          v11 = v149;
        }

        v35[1] = v37;
        v38 = v167;
        v39 = v168;
        while (v38 != v39)
        {
          v40 = *&v172[8 * *v38];
          v41 = (*(a1 + 56) + 16 * v146);
          v43 = *v41;
          v42 = v41[1];
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v42);
          }

          v44 = vmulq_f32(*(*(v43 + 40) + 16 * v40), *__p);
          v44.i32[3] = 0;
          if (vaddv_f32(*&vpaddq_f32(v44, v44)) > v9)
          {
            *&v170[(*v38 >> 3) & 0x1FFFFFF8] |= 1 << *v38;
          }

          ++v38;
        }

        a5 = v147;
        v18 = i;
      }
    }

    while (v18 != v11);
  }

  v173 = v172;
  sub_24BC8CAB0(a3, v11);
  v45 = *a4;
  v46 = a4[1] - *a4;
  *a5 = v46 >> 4;
  if (v11)
  {
    v47 = 0;
    v48 = (v46 >> 4);
    if (v48)
    {
      goto LABEL_37;
    }

LABEL_44:
    v50 = 0;
    while (1)
    {
      *(*a3 + 4 * v47++) = v50;
      v11 = v149;
      if (v47 == v149)
      {
        break;
      }

      v48 = *a5;
      if (!*a5)
      {
        goto LABEL_44;
      }

LABEL_37:
      v49 = 0;
      v50 = 0;
      v51 = -3.4028e38;
      do
      {
        v52 = (*(a1 + 56) + 16 * v146);
        v54 = *v52;
        v53 = v52[1];
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v53);
          v45 = *a4;
          v48 = *a5;
        }

        v55 = vmulq_f32(*(*(v54 + 40) + 16 * v47), *(v45 + 16 * v49));
        v55.i32[3] = 0;
        v56 = vaddv_f32(*&vpaddq_f32(v55, v55));
        if (v56 > v51)
        {
          v51 = v56;
          v50 = v49;
        }

        ++v49;
      }

      while (v49 < v48);
    }
  }

  v164 = 0;
  v165 = 0;
  v166 = 0;
  sub_24BCA123C(v163, v11);
  sub_24BCB29DC(&v170, v11, 0);
  if (v171 >= 1)
  {
    __p[0] = v170;
    LODWORD(__p[1]) = 0;
    sub_24BCA00C8(__p, v171);
  }

  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if ((*&v170[8 * (j >> 6)] & (1 << j)) == 0)
      {
        LODWORD(__p[0]) = 1;
        sub_24BC97D60(&v164, __p);
        v59 = v164;
        v58 = v165;
        v161 = 0u;
        v162 = 0u;
        *__p = 0u;
        v159 = j;
        sub_24BD94C40(__p, &v159);
        v60 = ((v58 - v59) >> 2) - 1;
        *&v170[8 * (j >> 6)] |= 1 << j;
        *(v163[0] + j) = v60;
        v61 = *(&v162 + 1);
        if (*(&v162 + 1))
        {
          v62 = *(*a3 + 4 * j);
          do
          {
            v159 = *(*(__p[1] + ((v162 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v162 & 0x3FF));
            *&v162 = v162 + 1;
            *(&v162 + 1) = v61 - 1;
            if (v162 >= 0x800)
            {
              operator delete(*__p[1]);
              __p[1] = __p[1] + 8;
              *&v162 = v162 - 1024;
            }

            v63 = *sub_24BCB9038(a1 + 104, &v159);
            v158 = v63;
            do
            {
              v158 = *(sub_24BCB9024(a1 + 104, &v158) + 8);
              v64 = sub_24BCB9024(a1 + 104, &v158);
              v65 = sub_24BC9ECE4(a1, *(a1 + 180), *v64);
              if ((*v65 & v66) == 0)
              {
                v67 = sub_24BCB9024(a1 + 104, &v158);
                v157 = *(sub_24BCB9024(a1 + 104, v67) + 16);
                if (((*&v170[(v157 >> 3) & 0x1FFFFFF8] >> v157) & 1) == 0 && *(*a3 + 4 * v157) == v62)
                {
                  sub_24BD94C40(__p, &v157);
                  v68 = v157;
                  *&v170[(v157 >> 3) & 0x1FFFFFF8] |= 1 << v157;
                  *(v163[0] + v68) = v60;
                  ++*(v164 + v60);
                }
              }
            }

            while (v158 != v63);
            v61 = *(&v162 + 1);
          }

          while (*(&v162 + 1));
        }

        sub_24BCA102C(__p);
      }
    }

    v69 = 0;
    v70 = v146;
    do
    {
      if (*(v164 + *(v163[0] + v69)) == 1)
      {
        v71 = (*(a1 + 56) + 16 * v70);
        v73 = *v71;
        v72 = v71[1];
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v72);
        }

        v74 = v70;
        v75 = *(v73 + 40);
        v76 = *(*a3 + 4 * v69);
        LODWORD(__p[0]) = v69;
        v77 = *sub_24BCB9038(a1 + 104, __p);
        LODWORD(__p[0]) = v77;
        v78 = 0.5;
        v79 = 0xFFFFFFFFLL;
        do
        {
          LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
          v80 = sub_24BCB9024(a1 + 104, __p);
          v81 = sub_24BC9ECE4(a1, *(a1 + 180), *v80);
          if ((*v81 & v82) == 0)
          {
            v83 = sub_24BCB9024(a1 + 104, __p);
            v84 = sub_24BCB9024(a1 + 104, v83);
            v85 = *(v84 + 16);
            v86 = vmulq_f32(*(*a4 + 16 * *(*a3 + 4 * v85)), *(v75 + 16 * v69));
            v86.i32[3] = 0;
            v87 = vaddv_f32(*&vpaddq_f32(v86, v86));
            if (v87 > v78)
            {
              v88 = v87 * *(v164 + *(v163[0] + v85));
              if (v88 > v9)
              {
                v79 = *(v84 + 16);
                v78 = v88;
                v76 = *(*a3 + 4 * v85);
              }
            }
          }
        }

        while (LODWORD(__p[0]) != v77);
        v70 = v74;
        if (*(*a3 + 4 * v69) != v76)
        {
          *(*a3 + 4 * v69) = v76;
          v89 = v163[0];
          v90 = v164;
          *(v164 + *(v163[0] + v69)) = 0;
          v91 = v89[v79];
          v89[v69] = v91;
          ++v90[v91];
        }

        v11 = v149;
      }

      ++v69;
    }

    while (v69 != v11);
    v92 = 0;
    do
    {
      if (*(v164 + *(v163[0] + v92)) == 2)
      {
        LODWORD(__p[0]) = v92;
        v93 = *sub_24BCB9038(a1 + 104, __p);
        LODWORD(__p[0]) = v93;
        while (1)
        {
          LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
          v94 = sub_24BCB9024(a1 + 104, __p);
          v95 = sub_24BC9ECE4(a1, *(a1 + 180), *v94);
          if ((*v95 & v96) == 0)
          {
            v97 = sub_24BCB9024(a1 + 104, __p);
            v98 = *(sub_24BCB9024(a1 + 104, v97) + 16);
            if (*(*a3 + 4 * v98) == *(*a3 + 4 * v92))
            {
              break;
            }
          }

          if (LODWORD(__p[0]) == v93)
          {
            goto LABEL_84;
          }
        }

        if (v98 != -1)
        {
          v99 = (*(a1 + 56) + 16 * v70);
          v101 = *v99;
          v100 = v99[1];
          if (v100)
          {
            atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v100);
            v102 = (*(a1 + 56) + 16 * v70);
            v104 = *v102;
            v103 = v102[1];
            v105 = (*(v101 + 40) + 16 * v92);
            if (v103)
            {
              atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v103);
            }

            v101 = v104;
          }

          else
          {
            v105 = (*(v101 + 40) + 16 * v92);
          }

          v106 = *(v101 + 40);
          v107 = *(*a3 + 4 * v92);
          v159 = v92;
          v108 = *sub_24BCB9038(a1 + 104, &v159);
          LODWORD(__p[0]) = v108;
          v109 = 0.5;
          v155 = 0xFFFFFFFFLL;
          do
          {
            LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
            v110 = sub_24BCB9024(a1 + 104, __p);
            v111 = sub_24BC9ECE4(a1, *(a1 + 180), *v110);
            if ((*v111 & v112) == 0)
            {
              v113 = sub_24BCB9024(a1 + 104, __p);
              v114 = sub_24BCB9024(a1 + 104, v113);
              v115 = *(v114 + 16);
              v116 = *(*a3 + 4 * v115);
              if (v116 != *(*a3 + 4 * v92))
              {
                v117 = *(*a4 + 16 * v116);
                v118 = vmulq_f32(*v105, v117);
                v118.i32[3] = 0;
                v119 = vaddv_f32(*&vpaddq_f32(v118, v118));
                v120 = vmulq_f32(v117, *(v106 + 16 * v98));
                v120.i32[3] = 0;
                v121 = vaddv_f32(*&vpaddq_f32(v120, v120));
                if (v119 > v9 && v121 > v9)
                {
                  v123 = (v119 + v121) * *(v164 + *(v163[0] + v115));
                  if (v123 > v109)
                  {
                    v155 = *(v114 + 16);
                    v107 = *(*a3 + 4 * v115);
                    v109 = v123;
                  }
                }
              }
            }
          }

          while (LODWORD(__p[0]) != v108);
          v159 = v98;
          v124 = *sub_24BCB9038(a1 + 104, &v159);
          LODWORD(__p[0]) = v124;
          do
          {
            LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
            v125 = sub_24BCB9024(a1 + 104, __p);
            v126 = sub_24BC9ECE4(a1, *(a1 + 180), *v125);
            if ((*v126 & v127) == 0)
            {
              v128 = sub_24BCB9024(a1 + 104, __p);
              v129 = sub_24BCB9024(a1 + 104, v128);
              v130 = *(v129 + 16);
              v131 = *(*a3 + 4 * v130);
              if (v131 != *(*a3 + 4 * v98))
              {
                v132 = *(*a4 + 16 * v131);
                v133 = vmulq_f32(*v105, v132);
                v133.i32[3] = 0;
                v134 = vaddv_f32(*&vpaddq_f32(v133, v133));
                v135 = vmulq_f32(v132, *(v106 + 16 * v98));
                v135.i32[3] = 0;
                v136 = vaddv_f32(*&vpaddq_f32(v135, v135));
                if (v134 > v9 && v136 > v9)
                {
                  v138 = (v134 + v136) * *(v164 + *(v163[0] + v130));
                  if (v138 > v109)
                  {
                    v155 = *(v129 + 16);
                    v107 = *(*a3 + 4 * v130);
                    v109 = v138;
                  }
                }
              }
            }
          }

          while (LODWORD(__p[0]) != v124);
          v139 = *a3;
          if (*(*a3 + 4 * v92) != v107 && *(v139 + 4 * v98) != v107)
          {
            *(v139 + 4 * v98) = v107;
            *(v139 + 4 * v92) = v107;
            v140 = v163[0];
            v141 = v164;
            *(v164 + *(v163[0] + v92)) = 0;
            v142 = v140[v155];
            v140[v98] = v142;
            v140[v92] = v142;
            v141[v142] += 2;
          }
        }

LABEL_84:
        v11 = v149;
      }

      ++v92;
    }

    while (v92 != v11);
  }

  if (v146 != -1)
  {
    v143 = (*(a1 + 56) + 16 * v146);
    v144 = v143[1];
    *v143 = 0;
    v143[1] = 0;
    if (v144)
    {
      sub_24BC9EC78(v144);
    }
  }

  if (v163[0])
  {
    v163[1] = v163[0];
    operator delete(v163[0]);
  }

  if (v164)
  {
    v165 = v164;
    operator delete(v164);
  }

  if (v167)
  {
    v168 = v167;
    operator delete(v167);
  }

  if (v170)
  {
    operator delete(v170);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  return 1;
}

void sub_24BD94B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  v39 = *(v37 - 192);
  if (v39)
  {
    *(v37 - 184) = v39;
    operator delete(v39);
  }

  if (*v36)
  {
    operator delete(*v36);
  }

  v40 = *(v36 + 24);
  if (v40)
  {
    *(v36 + 32) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD94C40(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 7) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_24BD99C90(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  ++v3[5];
  return result;
}

void sub_24BD94CCC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v78 = *MEMORY[0x277D85DE8];
  v70 = -1;
  v71 = -1;
  sub_24BC836D4(&v75, off_27F078FE8[0]);
  v7 = sub_24BD265CC(a1, &v71, &v75);
  v8 = v7;
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if (v8)
    {
LABEL_3:
      v9 = (*(a1 + 80) + 16 * v71);
      v11 = *v9;
      v10 = v9[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v10);
      }

      (*(*v11 + 40))(v11);
      sub_24BC836D4(&v75, off_27F078FC8[0]);
      LODWORD(v72) = 0;
      v12 = sub_24BCCA8D0((a1 + 56), &v72, &v75);
      v13 = v12;
      v70 = v12;
      if (SBYTE7(v76) < 0)
      {
        operator delete(v75);
      }

      if (v13 == -1)
      {
        sub_24BC836D4(&v75, off_27F078FC8[0]);
        sub_24BD95714(a1);
      }

      v14 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
      LOBYTE(v75) = 0;
      sub_24BC9FEFC(&__p, v14);
      v63 = v14;
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          if ((*(__p + (i >> 6)) & (1 << i)) == 0)
          {
            v16 = (*(a1 + 80) + 16 * v71);
            v18 = *v16;
            v17 = v16[1];
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v17);
            }

            (*(*v18 + 48))(v18);
            v19 = (*(a1 + 80) + 16 * v71);
            v21 = *v19;
            v20 = v19[1];
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v20);
            }

            v22 = (*(*v21 + 16))(v21) - 1;
            std::to_string(&v75, v22);
            v23 = std::string::insert(&v75, 0, "g");
            v24 = v23->__r_.__value_.__r.__words[0];
            *&v72 = v23->__r_.__value_.__l.__size_;
            *(&v72 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
            v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            v26 = (*(a1 + 80) + 16 * v71);
            v28 = *v26;
            v27 = v26[1];
            if (v27)
            {
              atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v27);
            }

            v29 = *(v28 + 40) + 24 * v22;
            if (*(v29 + 23) < 0)
            {
              operator delete(*v29);
            }

            *v29 = v24;
            *(v29 + 8) = v72;
            *(v29 + 15) = *(&v72 + 7);
            *(v29 + 23) = v25;
            if (SBYTE7(v76) < 0)
            {
              operator delete(v75);
            }

            v76 = 0u;
            v77 = 0u;
            v75 = 0u;
            LODWORD(v72) = i;
            sub_24BD94C40(&v75, &v72);
            *(__p + (i >> 6)) |= 1 << i;
            v30 = *(&v77 + 1);
            if (*(&v77 + 1))
            {
              v31 = *(*a5 + 4 * i);
              do
              {
                v32 = *(*(&v75 + 1) + ((v77 >> 7) & 0x1FFFFFFFFFFFFF8));
                v33 = *(v32 + 4 * (v77 & 0x3FF));
                LODWORD(v72) = *(v32 + 4 * (v77 & 0x3FF));
                *&v77 = v77 + 1;
                *(&v77 + 1) = v30 - 1;
                if (v77 >= 0x800)
                {
                  operator delete(**(&v75 + 1));
                  *(&v75 + 1) += 8;
                  *&v77 = v77 - 1024;
                  v33 = v72;
                }

                v34 = (*(a1 + 56) + 16 * v70);
                v36 = *v34;
                v35 = v34[1];
                if (v35)
                {
                  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v35);
                }

                *(*(v36 + 40) + 4 * v33) = v22;
                v37 = *sub_24BCB9038(a1 + 104, &v72);
                v68 = v37;
                do
                {
                  v68 = *(sub_24BCB9024(a1 + 104, &v68) + 8);
                  v38 = sub_24BCB9024(a1 + 104, &v68);
                  v39 = sub_24BC9ECE4(a1, *(a1 + 180), *v38);
                  if ((*v39 & v40) == 0)
                  {
                    v41 = sub_24BCB9024(a1 + 104, &v68);
                    v67 = *(sub_24BCB9024(a1 + 104, v41) + 16);
                    if (((*(__p + ((v67 >> 3) & 0x1FFFFFF8)) >> v67) & 1) == 0 && *(*a5 + 4 * v67) == v31)
                    {
                      sub_24BD94C40(&v75, &v67);
                      *(__p + ((v67 >> 3) & 0x1FFFFFF8)) |= 1 << v67;
                    }
                  }
                }

                while (v68 != v37);
                v30 = *(&v77 + 1);
              }

              while (*(&v77 + 1));
            }

            sub_24BCA102C(&v75);
            v14 = v63;
          }
        }
      }

      *&v75 = &unk_285F962C8;
      *(&v75 + 1) = a5;
      *(&v76 + 1) = &v75;
      sub_24BE4C8DC(a1, &v75);
      sub_24BD99F28(&v75);
      v42 = *a3;
      if (a3[1] != *a3)
      {
        v43 = 0;
        v44 = 0;
        v45 = xmmword_24BFED0C0;
        v46 = unk_24BFED0D0;
        do
        {
          v47 = 0;
          v48 = *(*a4 + 16 * v43);
          v49 = v42 + 36 * v43;
          v50 = vuzp2q_s32(vextq_s8(v48, v48, 4uLL), v48);
          v51 = vmulq_f32(v48, xmmword_24BFD2970);
          v52 = vmulq_f32(v48, xmmword_24BFBD200);
          v52.i32[3] = 0;
          v66 = v52;
          v53 = vmlsq_f32(vzip2q_s32(vzip1q_s32(v51, vextq_s8(v51, v51, 0xCuLL)), v51), xmmword_24BFD2970, v50);
          v54 = vmulq_f32(v53, v53);
          v54.i32[3] = 0;
          LODWORD(v72) = 0;
          DWORD1(v72) = v53.i32[2];
          LODWORD(v73) = 0;
          *(&v73 + 3) = -v53.f32[0];
          *(&v72 + 1) = vneg_f32(*&vextq_s8(v53, v53, 4uLL));
          v55 = vaddv_f32(*&vpaddq_f32(v54, v54));
          *(&v73 + 4) = v53.i64[0];
          v74 = 0;
          *v49 = xmmword_24BFBD1C0;
          *(v49 + 16) = xmmword_24BFBD1C0;
          *(v49 + 32) = 1065353216;
          v75 = v45;
          v76 = v46;
          LODWORD(v77) = 1065353216;
          do
          {
            *(&v75 + v47) = *(v42 + 36 * v44 + v47) + *(&v72 + v47);
            v47 += 4;
          }

          while (v47 != 36);
          *v49 = v75;
          *(v49 + 16) = v76;
          *(v49 + 32) = v77;
          sub_24BD95788(&v72, &v72);
          v56 = sqrtf(v55);
          v46 = unk_24BFED0D0;
          v45 = xmmword_24BFED0C0;
          if (fabsf(v56) > 0.00000001)
          {
            v57 = 0;
            LODWORD(v77) = 1065353216;
            v58 = (1.0 - vaddv_f32(*&vpaddq_f32(v66, v66))) / (v56 * v56);
            v75 = xmmword_24BFED0C0;
            v76 = unk_24BFED0D0;
            do
            {
              *(&v75 + v57) = *(&v72 + v57) * v58;
              v57 += 4;
            }

            while (v57 != 36);
            v72 = v75;
            v73 = v76;
            v74 = v77;
          }

          v59 = 0;
          LODWORD(v77) = 1065353216;
          v75 = xmmword_24BFED0C0;
          v76 = unk_24BFED0D0;
          do
          {
            *(&v75 + v59) = *(v42 + 36 * v44 + v59) + *(&v72 + v59);
            v59 += 4;
          }

          while (v59 != 36);
          *v49 = v75;
          *(v49 + 16) = v76;
          *(v49 + 32) = v77;
          v42 = *a3;
          v43 = ++v44;
        }

        while (0x8E38E38E38E38E39 * ((a3[1] - *a3) >> 2) > v44);
      }

      v68 = -1;
      sub_24BC836D4(&v75, off_27F078FB8[0]);
      DWORD2(v72) = 0;
      *&v72 = 0;
      v60 = sub_24BCCAA0C((a1 + 56), &v72, &v75);
      v68 = v60;
      if (SBYTE7(v76) < 0)
      {
        operator delete(v75);
      }

      if (v60 != -1)
      {
        if (v68 != -1)
        {
          v61 = (*(a1 + 56) + 16 * v68);
          v62 = v61[1];
          *v61 = 0;
          v61[1] = 0;
          if (v62)
          {
            sub_24BC9EC78(v62);
          }
        }

        v68 = -1;
      }

      sub_24BC836D4(&v75, off_27F078FB8[0]);
      sub_24BCD5A78(a1);
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  sub_24BC836D4(&v75, off_27F078FE8[0]);
  sub_24BD2CC04(a1);
}

void sub_24BD95660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  if (*(v29 - 153) < 0)
  {
    operator delete(*(v29 - 176));
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_24BD95788(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v14 = 1065353216;
  v12 = xmmword_24BFED0C0;
  v13 = unk_24BFED0D0;
  v3 = a1;
  do
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = 0;
      v7 = 0.0;
      v8 = v3;
      do
      {
        v9 = *v8;
        v8 += 3;
        v7 = v7 + (v9 * *(v5 + v6));
        v6 += 4;
      }

      while (v6 != 12);
      *(&v12 + 3 * v4++ + v2) = v7;
      v5 += 12;
    }

    while (v4 != 3);
    ++v2;
    ++v3;
  }

  while (v2 != 3);
  result = *&v12;
  v11 = v13;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v14;
  return result;
}

BOOL sub_24BD95820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 12);
  switch(v4)
  {
    case 2:
      v10[0] = *(a2 + 8);
      sub_24BDB2E98(a1, (a2 + 4), v10, (a2 + 16), 0, 0);
      break;
    case 1:
      sub_24BDE2DA4(v10, a1, a3, a2 + 4, a2 + 8, a2 + 16, 1, 0);
      sub_24BDE2DA8(v10);
      sub_24BD98828(v10);
      break;
    case 0:
      sub_24BDB024C(v10, a1, a2 + 4, a2 + 8);
      sub_24BDB0250(v10);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      break;
  }

  v5 = sub_24BD6A604(0x191u);
  result = *(a3 + 8) != v6 || *a3 != v5;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD9593C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD95984(void *a1, float *a2, uint64_t a3)
{
  std::chrono::system_clock::now();
  LODWORD(v13) = 0;
  v14 = std::system_category();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v18, 0, 28);
  sub_24BD6B968(v12, a3);
  v11 = 0;
  sub_24BE3F390(a1, 1, &v11, 0.001);
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  sub_24BD93F10(a1, a2, v10, v9, &v8);
  memset(&v7[3], 0, 24);
  sub_24BD99FA8(v7, v8);
  sub_24BD94CCC(a1, v6, v7, v9, v10);
}

void sub_24BD9634C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  sub_24BCA3B84(&a40);
  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  if (a54)
  {
    a55 = a54;
    operator delete(a54);
  }

  if (a58)
  {
    a59 = a58;
    operator delete(a58);
  }

  v61 = *(v59 - 256);
  if (v61)
  {
    *(v59 - 248) = v61;
    operator delete(v61);
  }

  sub_24BD6B9D8(v59 - 224);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD96498(void *a1, unsigned int **a2, unsigned int *a3)
{
  v24 = -1;
  v23 = -1;
  v6 = sub_24BD970B0(a1, a2, a3, &v24, &v23);
  if (v6)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    __p = 0;
    v18 = 0;
    v19 = 0;
    sub_24BD97E34(a1, a2, a3, &v24, &v23, &v20, &__p);
    v7 = v20;
    v8 = v21;
    v9 = __p;
    if (v21 - v20 < (v18 - __p))
    {
      v20 = __p;
      v21 = v18;
      __p = v7;
      v18 = v8;
      v10 = v22;
      v22 = v19;
      v19 = v10;
      v7 = v9;
    }

    v11 = *v7;
    v12 = (a1[7] + 16 * a3[1]);
    v14 = *v12;
    v13 = v12[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v13);
    }

    v16 = *(*(v14 + 40) + 4 * v11);
    sub_24BD981D4(a1, &__p, a3, &v16);
    sub_24BD96498(a1, &v20, a3);
    sub_24BD96498(a1, &__p, a3);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }

  return v6;
}

void sub_24BD965E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD96618(float *a1, float *a2)
{
  v4 = 0x3F50624DD2F1A9FCLL;
  v3 = 0x3EB0C6F7A0B5ED8DLL;
  return sub_24BE3F5C0(a1, a1 + 2, a2, a2 + 2, &v4, &v3) != 3;
}

uint64_t sub_24BD9667C(_DWORD *a1, int *a2)
{
  v2 = *a2;
  if (*a2 == *a1)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v5 = v2 == a1[1] || v2 == a1[2];
    v3 = v5 << 31 >> 31;
  }

  return v3 & 1;
}

uint64_t sub_24BD966B0(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, int *a5, void *a6)
{
  sub_24BCB9454(v142, (a1 + 104), a2);
  v10 = sub_24BCB947C(v142);
  v141 = v10;
  __p = 0;
  v139 = 0;
  v140 = 0;
  memset(v137, 0, sizeof(v137));
  if (v10 != -1)
  {
    while (1)
    {
      v11 = sub_24BC9ECE4(a1, *(a1 + 180), v10);
      if ((*v11 & v12) != 0)
      {
        v13 = *a5;
        v14 = (*(a1 + 56) + 16 * a4[1]);
        v16 = *v14;
        v15 = v14[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v15);
        }

        v17 = sub_24BCB9024(a1 + 104, &v141);
        if (v13 != *(*(v16 + 40) + 4 * *(sub_24BCB9024(a1 + 104, v17) + 16)))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v18 = sub_24BCB9024(a1 + 104, &v141);
        v19 = *sub_24BC9ECE4(a1, *(a1 + 180), *v18);
        v20 = *a5;
        v21 = (*(a1 + 56) + 16 * a4[1]);
        v23 = *v21;
        v22 = v21[1];
        if ((v19 & v24) != 0)
        {
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v22);
          }

          if (v20 != *(*(v23 + 40) + 4 * *(sub_24BCB9024(a1 + 104, &v141) + 16)))
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v22);
        }

        if (v20 == *(*(v23 + 40) + 4 * *(sub_24BCB9024(a1 + 104, &v141) + 16)))
        {
          goto LABEL_18;
        }

        v25 = *a5;
        v26 = (*(a1 + 56) + 16 * a4[1]);
        v28 = *v26;
        v27 = v26[1];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v27);
        }

        v29 = sub_24BCB9024(a1 + 104, &v141);
        if (v25 != *(*(v28 + 40) + 4 * *(sub_24BCB9024(a1 + 104, v29) + 16)))
        {
LABEL_18:
          v30 = *a5;
          v31 = (*(a1 + 56) + 16 * a4[1]);
          v33 = *v31;
          v32 = v31[1];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v32);
          }

          if (v30 != *(*(v33 + 40) + 4 * *(sub_24BCB9024(a1 + 104, &v141) + 16)))
          {
            goto LABEL_25;
          }

          v34 = *a5;
          v35 = (*(a1 + 56) + 16 * a4[1]);
          v37 = *v35;
          v36 = v35[1];
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v36);
          }

          v38 = sub_24BCB9024(a1 + 104, &v141);
          if (v34 == *(*(v37 + 40) + 4 * *(sub_24BCB9024(a1 + 104, v38) + 16)))
          {
            goto LABEL_25;
          }

LABEL_24:
          sub_24BCB4670(&__p, &v141);
          LOBYTE(v134) = 1;
          sub_24BCAC930(v137, &v134);
          goto LABEL_25;
        }
      }

      sub_24BCB4670(&__p, &v141);
      LOBYTE(v134) = 0;
      sub_24BCAC930(v137, &v134);
LABEL_25:
      v10 = sub_24BCB947C(v142);
      v141 = v10;
      if (v10 == -1)
      {
        v39 = __p;
        v40 = v139;
        v41 = v137[0];
        goto LABEL_28;
      }
    }
  }

  v41 = 0;
  v39 = 0;
  v40 = 0;
LABEL_28:
  if (v40 - v39 == 8)
  {
    v42 = 0;
    if (!v41)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v134 = 0;
  v135 = 0;
  v136 = 0;
  v127 = a6;
  if (v139 == v39)
  {
    v70 = 0;
    v71 = 0;
  }

  else
  {
    v44 = *v41 & 1;
    v45 = (v139 - v39) >> 2;
    v46 = 2;
    do
    {
      v47 = (v44 + v46 - 2) ^ 1;
      LODWORD(v131) = *&v39[4 * v47];
      HIDWORD(v131) = *&v39[4 * ((v47 + 1) % v45)];
      v48 = (*(a1 + 56) + 16 * a4[2]);
      v50 = *v48;
      v49 = v48[1];
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v49);
      }

      v51 = *(sub_24BCB9024(a1 + 104, &v131) + 16);
      v52 = *(v50 + 40);
      v53 = (*(a1 + 56) + 16 * a4[2]);
      v55 = *v53;
      v54 = v53[1];
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v54);
      }

      v56 = sub_24BCB9024(a1 + 104, &v131 + 1);
      v57 = sub_24BCB9024(a1 + 104, v56);
      v58 = (v52 + 12 * v51);
      v59 = *a3;
      if (*a3 == *v58 || v59 == v58[1] || v59 == v58[2])
      {
        v60 = (*(v55 + 40) + 12 * *(v57 + 16));
        if (v59 == *v60 || v59 == v60[1] || v59 == v60[2])
        {
          v61 = v135;
          if (v135 >= v136)
          {
            v63 = (v135 - v134) >> 3;
            if ((v63 + 1) >> 61)
            {
              sub_24BC8E01C();
            }

            v64 = (v136 - v134) >> 2;
            if (v64 <= v63 + 1)
            {
              v64 = v63 + 1;
            }

            if (v136 - v134 >= 0x7FFFFFFFFFFFFFF8)
            {
              v65 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v65 = v64;
            }

            if (v65)
            {
              sub_24BC91F60(&v134, v65);
            }

            v66 = (8 * v63);
            *v66 = v131;
            v62 = 8 * v63 + 8;
            v67 = v66 - (v135 - v134);
            memcpy(v67, v134, v135 - v134);
            v68 = v134;
            v134 = v67;
            v135 = v62;
            v136 = 0;
            if (v68)
            {
              operator delete(v68);
            }
          }

          else
          {
            *v135 = v131;
            v62 = (v61 + 8);
          }

          v135 = v62;
        }
      }

      v39 = __p;
      v45 = (v139 - __p) >> 2;
      v69 = v45 > v46;
      v46 += 2;
    }

    while (v69);
    v70 = v134;
    v71 = v135;
    a6 = v127;
  }

  if ((v71 - v70) < 9)
  {
    v42 = 0;
    if (!v70)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v131 = 0;
  v132 = 0;
  v133 = 0;
  if (v135 == v70)
  {
    v117 = 0;
    v116 = 0;
LABEL_102:
    v118 = (v116 - v117) >> 3;
    if (v118 == 1)
    {
LABEL_110:
      v42 = 0;
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 2;
      while (1)
      {
        v122 = v119;
        v119 = (v120 + 1);
        if (v118 > v119)
        {
          break;
        }

LABEL_109:
        ++v121;
        v120 = v119;
        if (v118 - 1 <= v119)
        {
          goto LABEL_110;
        }
      }

      v123 = &v117[8 * v122];
      v124 = v121;
      v125 = v119;
      while (1)
      {
        v126 = &v117[8 * v125];
        if (v123[1] >= (*v126 + -0.000001) && *v123 <= (v126[1] + 0.000001))
        {
          break;
        }

        v125 = v124;
        v69 = v118 > v124++;
        if (!v69)
        {
          goto LABEL_109;
        }
      }

      sub_24BC9A554(a6, 2uLL);
      **a6 = *(sub_24BCB9024(a1 + 104, v134 + 2 * v122) + 16);
      *(*a6 + 4) = *(sub_24BCB9024(a1 + 104, v134 + 2 * v125) + 16);
      v42 = 1;
    }
  }

  else
  {
    v72 = 0;
    v73 = 0;
    while (1)
    {
      v74 = (*(a1 + 56) + 16 * a4[2]);
      v76 = *v74;
      v75 = v74[1];
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v75);
        v70 = v134;
      }

      v77 = *(sub_24BCB9024(a1 + 104, &v70[2 * v72]) + 16);
      v78 = *(v76 + 40);
      v79 = (*(a1 + 56) + 16 * a4[2]);
      v81 = *v79;
      v80 = v79[1];
      if (v80)
      {
        atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v80);
      }

      v82 = sub_24BCB9024(a1 + 104, v134 + 2 * v72 + 1);
      v83 = sub_24BCB9024(a1 + 104, v82);
      v84 = 0;
      v85 = v78 + 12 * v77;
      v86 = *(v81 + 40) + 12 * *(v83 + 16);
      v87 = *a3;
      while (*(v85 + 4 * v84) != v87)
      {
        if (++v84 == 3)
        {
          v88 = 99;
          goto LABEL_78;
        }
      }

      v88 = *(v85 + 4 * ((v84 + 1) % 3u));
LABEL_78:
      v89 = 0;
      while (*(v86 + 4 * v89) != v87)
      {
        if (++v89 == 3)
        {
          goto LABEL_110;
        }
      }

      v42 = 0;
      if (v88 == 99)
      {
        break;
      }

      v90 = *(v86 + 4 * ((v89 + 2) % 3u));
      if (v90 == 99)
      {
        break;
      }

      v91 = (*(a1 + 80) + 16 * a4[3]);
      v93 = *v91;
      v92 = v91[1];
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v92);
        v94 = (*(a1 + 80) + 16 * a4[3]);
        v95 = *v94;
        v92 = v94[1];
        v96 = (*(v93 + 40) + 8 * v88);
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v92);
          v97 = (*(a1 + 80) + 16 * a4[3]);
          v93 = v95;
          v95 = *v97;
          v92 = v97[1];
        }

        else
        {
          v93 = *v94;
        }
      }

      else
      {
        v96 = (*(v93 + 40) + 8 * v88);
        v95 = *v91;
      }

      v98 = (*(v93 + 40) + 8 * *a3);
      v99 = *v96;
      v100 = v96[1];
      v101 = *v98;
      v102 = v98[1];
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v92);
        v103 = (*(a1 + 80) + 16 * a4[3]);
        v105 = *v103;
        v104 = v103[1];
        v106 = (*(v95 + 40) + 8 * v90);
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v104);
        }

        v95 = v105;
      }

      else
      {
        v106 = (*(v95 + 40) + 8 * v90);
      }

      v107 = v99 - v101;
      v108 = v100 - v102;
      v109 = (*(v95 + 40) + 8 * *a3);
      v110 = *v106 - *v109;
      v111 = v106[1] - v109[1];
      v112 = atan2f(v108, v107);
      v113 = atan2f(v111, v110);
      if (v113 < v112)
      {
        v114 = v113 + 6.28318531;
        v113 = v114;
      }

      v129 = v112;
      v130 = v113;
      v115 = v132;
      if (v132 >= v133)
      {
        v116 = sub_24BCDBE20(&v131, &v129);
      }

      else
      {
        *v132 = v112;
        v115[1] = v130;
        v116 = (v115 + 2);
      }

      v132 = v116;
      v70 = v134;
      v72 = ++v73;
      if (v73 >= ((v135 - v134) >> 3))
      {
        v117 = v131;
        a6 = v127;
        goto LABEL_102;
      }
    }
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  v70 = v134;
  if (v134)
  {
LABEL_64:
    v135 = v70;
    operator delete(v70);
  }

LABEL_65:
  v41 = v137[0];
  if (v137[0])
  {
LABEL_30:
    operator delete(v41);
  }

LABEL_31:
  if (__p)
  {
    v139 = __p;
    operator delete(__p);
  }

  return v42;
}

void sub_24BD97030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD970B0(uint64_t a1, unsigned int **a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  v5 = a3;
  v7 = a1;
  v8 = a3 + 1;
  v9 = **a2;
  v10 = (*(a1 + 56) + 16 * a3[1]);
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
  }

  v187[0] = *(*(v12 + 40) + 4 * v9);
  sub_24BCB7458(v186, 3uLL);
  v183 = 0;
  v184 = 0;
  v185 = 0;
  v13 = *a2;
  if (a2[1] == *a2)
  {
    goto LABEL_145;
  }

  v14 = 0;
  v15 = 0;
  v171 = v5;
  v172 = v7;
  do
  {
    v166 = v15;
    sub_24BCD573C(v7, (v13 + 4 * v14), v186);
    v16 = 0;
    do
    {
      if (sub_24BD93D50(v7, v186[0] + v16, v8, v5 + 2))
      {
        v17 = (*a2)[v14];
        v18 = (*(v7 + 56) + 16 * v5[2]);
        v20 = *v18;
        v19 = v18[1];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v19);
          v21 = (*a2)[v14];
          v22 = (*(v7 + 56) + 16 * v5[2]);
          v24 = *v22;
          v23 = v22[1];
          v25 = *(*(v20 + 40) + 12 * v17 + 4 * v16);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v23);
          }

          v20 = v24;
          v17 = v21;
          v7 = v172;
        }

        else
        {
          v25 = *(*(v20 + 40) + 12 * v17 + 4 * v16);
        }

        v26 = (v16 + 1);
        if (v16 == 2)
        {
          v26 = 0;
        }

        v27 = *(*(v20 + 40) + 12 * v17 + 4 * v26);
        v28 = (*(v7 + 80) + 16 * v5[3]);
        v29 = v7;
        v31 = *v28;
        v30 = v28[1];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v30);
          v32 = (*(v29 + 80) + 16 * v5[3]);
          v34 = *v32;
          v33 = v32[1];
          v35 = (*(v31 + 40) + 8 * v25);
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v33);
          }

          v31 = v34;
          v5 = v171;
        }

        else
        {
          v35 = (*(v31 + 40) + 8 * v25);
        }

        v36 = (*(v31 + 40) + 8 * v27);
        v37 = (*a2)[v14];
        *&v181 = *v35;
        *(&v181 + 1) = *v36;
        *&v182 = __PAIR64__(v27, v25);
        DWORD2(v182) = v37;
        HIDWORD(v182) = *(v186[0] + v16);
        sub_24BD97DCC(&v183, &v181);
        ++v16;
        v7 = v172;
      }

      else
      {
        ++v16;
      }
    }

    while (v16 != 3);
    v14 = (v166 + 1);
    v13 = *a2;
    v15 = v166 + 1;
  }

  while (v14 < a2[1] - *a2);
  v38 = v183;
  v179 = 0x3EB0C6F7A0B5ED8DLL;
  v180 = 0x3F50624DD2F1A9FCLL;
  if (v183 == v184)
  {
    goto LABEL_145;
  }

  __p = 0;
  v177 = 0;
  v178 = 0;
  v39 = v184;
  if (v184 - v183 == 32)
  {
LABEL_26:
    v40 = 1;
    goto LABEL_142;
  }

  v42 = 0;
  v43 = 0;
  while (1)
  {
    v44 = v42;
    v42 = ++v43;
    v45 = (v39 - v38) >> 5;
    if (v45 > v43)
    {
      break;
    }

LABEL_138:
    if (v45 - 1 <= v42)
    {
      goto LABEL_26;
    }
  }

  v157 = v43;
  v158 = v43;
  v159 = v44;
  while (1)
  {
    v46 = &v38[32 * v44];
    v47 = &v38[32 * v42];
    if (*(v46 + 6) == *(v47 + 6))
    {
      goto LABEL_132;
    }

    v49 = (v46 + 16);
    v48 = *(v46 + 4);
    v50 = (v47 + 16);
    v51 = *(v47 + 4);
    if (v48 == v51)
    {
      break;
    }

    v52 = *(v46 + 5);
    v53 = *(v47 + 5);
    if (v52 == v53)
    {
      break;
    }

    if (v52 != v51 && v48 != v53)
    {
      *&v181 = 0x3F50624DD2F1A9FCLL;
      *&v173 = 0x3EB0C6F7A0B5ED8DLL;
      v95 = sub_24BE3F5C0(v46, v46 + 2, v47, v47 + 2, &v181, &v173);
      if (v95 != 3)
      {
LABEL_140:
        v40 = 0;
        *a4 = *(v46 + 6);
        *a5 = *(v47 + 6);
        goto LABEL_142;
      }

      goto LABEL_132;
    }

    v181 = 0uLL;
    *&v182 = -1;
    *(&v182 + 1) = -1;
    v173 = 0uLL;
    *&v174 = -1;
    *(&v174 + 1) = -1;
    v60 = *(v46 + 4);
    v61 = *(v47 + 5);
    v62 = v60 == v61;
    if (v60 == v61)
    {
      v63 = v46;
    }

    else
    {
      v63 = v47;
    }

    if (v62)
    {
      v64 = (v46 + 16);
    }

    else
    {
      v64 = (v47 + 16);
    }

    if (v62)
    {
      v65 = v47;
    }

    else
    {
      v65 = v46;
    }

    if (!v62)
    {
      v50 = (v46 + 16);
    }

    v181 = *v63;
    v182 = *v64;
    v173 = *v65;
    v174 = *v50;
    v66 = v5[2];
    v167 = *(sub_24BCB9024(v7 + 104, &v182 + 3) + 16);
    v67 = (*(v7 + 56) + 16 * v66);
    v69 = *v67;
    v68 = v67[1];
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v68);
    }

    v160 = *(v69 + 40);
    v70 = v5[2];
    v71 = *(sub_24BCB9024(v7 + 104, &v174 + 3) + 16);
    v72 = (*(v7 + 56) + 16 * v70);
    v74 = *v72;
    v73 = v72[1];
    if (v73)
    {
      atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v73);
    }

    v75 = (*(v74 + 40) + 12 * v71);
    v76 = v172;
    v77 = (*(v172 + 80) + 16 * v171[3]);
    v79 = *v77;
    v78 = v77[1];
    if (!v78)
    {
      v84 = (*(v79 + 40) + 8 * DWORD1(v182));
      goto LABEL_87;
    }

    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v78);
    v80 = (*(v172 + 80) + 16 * v171[3]);
    v82 = *v80;
    v81 = v80[1];
    v83 = *(v79 + 40);
    v84 = (v83 + 8 * DWORD1(v182));
    if (!v81)
    {
      v79 = *v80;
LABEL_87:
      v87 = (*(v79 + 40) + 8 * *v75);
      v76 = v172;
LABEL_88:
      v91 = (*(v79 + 40) + 8 * v75[1]);
      v90 = v79;
      goto LABEL_89;
    }

    v156 = (v83 + 8 * DWORD1(v182));
    atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v81);
    v85 = (*(v172 + 80) + 16 * v171[3]);
    v79 = *v85;
    v86 = v85[1];
    v87 = (*(v82 + 40) + 8 * *v75);
    if (!v86)
    {
      v84 = v156;
      goto LABEL_88;
    }

    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v86);
    v88 = (*(v172 + 80) + 16 * v171[3]);
    v90 = *v88;
    v89 = v88[1];
    v91 = (*(v79 + 40) + 8 * v75[1]);
    if (v89)
    {
      atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v89);
    }

    v84 = v156;
LABEL_89:
    if (sub_24BE3F508(v84, v87, v91, (*(v90 + 40) + 8 * v75[2])))
    {
      goto LABEL_140;
    }

    v99 = (v160 + 12 * v167);
    v100 = v76;
    v101 = (*(v76 + 80) + 16 * v171[3]);
    v103 = *v101;
    v102 = v101[1];
    if (!v102)
    {
      v108 = (*(v103 + 40) + 8 * v174);
      goto LABEL_98;
    }

    atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v102);
    v104 = (*(v100 + 80) + 16 * v171[3]);
    v106 = *v104;
    v105 = v104[1];
    v107 = *(v103 + 40);
    v108 = (v107 + 8 * v174);
    if (!v105)
    {
      v103 = *v104;
LABEL_98:
      v111 = (*(v103 + 40) + 8 * *v99);
LABEL_99:
      v115 = (*(v103 + 40) + 8 * v99[1]);
      v114 = v103;
      goto LABEL_100;
    }

    v168 = (v107 + 8 * v174);
    atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v105);
    v109 = (*(v100 + 80) + 16 * v171[3]);
    v103 = *v109;
    v110 = v109[1];
    v111 = (*(v106 + 40) + 8 * *v99);
    if (!v110)
    {
      v108 = v168;
      goto LABEL_99;
    }

    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v110);
    v112 = (*(v100 + 80) + 16 * v171[3]);
    v114 = *v112;
    v113 = v112[1];
    v115 = (*(v103 + 40) + 8 * v99[1]);
    if (v113)
    {
      atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v113);
    }

    v108 = v168;
LABEL_100:
    if (sub_24BE3F508(v108, v111, v115, (*(v114 + 40) + 8 * v99[2])))
    {
      goto LABEL_140;
    }

    v116 = 0;
    while (v99[v116] != v182)
    {
      if (++v116 == 3)
      {
        LODWORD(v116) = 99;
        break;
      }
    }

    v117 = 0;
    while (v75[v117] != v182)
    {
      if (++v117 == 3)
      {
        LOBYTE(v117) = 99;
        break;
      }
    }

    v118 = v172;
    v119 = (*(v172 + 80) + 16 * v171[3]);
    v121 = *v119;
    v120 = v119[1];
    if (!v120)
    {
      v126 = (*(v121 + 40) + 8 * v174);
      goto LABEL_117;
    }

    atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v120);
    v122 = (*(v172 + 80) + 16 * v171[3]);
    v124 = *v122;
    v123 = v122[1];
    v125 = *(v121 + 40);
    v126 = (v125 + 8 * v174);
    if (!v123)
    {
      v121 = *v122;
LABEL_117:
      v130 = (*(v121 + 40) + 8 * DWORD1(v174));
      v118 = v172;
LABEL_118:
      v134 = (*(v121 + 40) + 8 * v99[(v116 + 1) % 3u]);
      v133 = v121;
      goto LABEL_119;
    }

    v169 = (v125 + 8 * v174);
    atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
    v161 = v124;
    sub_24BC9EC78(v123);
    v127 = (*(v172 + 80) + 16 * v171[3]);
    v121 = *v127;
    v128 = v127[1];
    v129 = *(v161 + 40);
    v130 = (v129 + 8 * DWORD1(v174));
    if (!v128)
    {
      v126 = v169;
      goto LABEL_118;
    }

    v162 = (v129 + 8 * DWORD1(v174));
    atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v128);
    v131 = (*(v172 + 80) + 16 * v171[3]);
    v133 = *v131;
    v132 = v131[1];
    v134 = (*(v121 + 40) + 8 * v99[(v116 + 1) % 3u]);
    if (v132)
    {
      atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
      v135 = v134;
      sub_24BC9EC78(v132);
      v134 = v135;
    }

    v126 = v169;
    v130 = v162;
LABEL_119:
    if (sub_24BE3F5C0(v126, v130, v134, (*(v133 + 40) + 8 * v99[(v116 + 2) % 3u]), &v180, &v179) != 3)
    {
      goto LABEL_140;
    }

    v136 = (*(v118 + 80) + 16 * v171[3]);
    v138 = *v136;
    v137 = v136[1];
    if (!v137)
    {
      v144 = (*(v138 + 40) + 8 * v182);
LABEL_128:
      v148 = (*(v138 + 40) + 8 * DWORD1(v182));
      v7 = v172;
      goto LABEL_129;
    }

    v139 = v118;
    atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v137);
    v140 = (*(v118 + 80) + 16 * v171[3]);
    v142 = *v140;
    v141 = v140[1];
    v143 = *(v138 + 40);
    v144 = (v143 + 8 * v182);
    if (!v141)
    {
      v138 = *v140;
      goto LABEL_128;
    }

    v170 = (v143 + 8 * v182);
    atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v141);
    v145 = (*(v139 + 80) + 16 * v171[3]);
    v138 = *v145;
    v146 = v145[1];
    v147 = *(v142 + 40);
    v148 = (v147 + 8 * DWORD1(v182));
    if (v146)
    {
      v163 = (v147 + 8 * DWORD1(v182));
      atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v146);
      v149 = (*(v139 + 80) + 16 * v171[3]);
      v151 = *v149;
      v150 = v149[1];
      v152 = (*(v138 + 40) + 8 * v75[(v117 + 1) % 3u]);
      v7 = v139;
      if (v150)
      {
        atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v150);
      }

      v144 = v170;
      v148 = v163;
      goto LABEL_130;
    }

    v7 = v139;
    v144 = v170;
LABEL_129:
    v152 = (*(v138 + 40) + 8 * v75[(v117 + 1) % 3u]);
    v151 = v138;
LABEL_130:
    v153 = sub_24BE3F5C0(v144, v148, v152, (*(v151 + 40) + 8 * v75[(v117 + 2) % 3u]), &v180, &v179);
    v44 = v159;
    if (v153 != 3)
    {
      goto LABEL_140;
    }

    v5 = v171;
LABEL_132:
    v38 = v183;
    v39 = v184;
    v45 = (v184 - v183) >> 5;
    v42 = ++v43;
    if (v45 <= v43)
    {
      v43 = v158;
      v42 = v157;
      goto LABEL_138;
    }
  }

  LODWORD(v173) = -1;
  v175 = 0;
  if (*(v46 + 4) == *v50)
  {
    v54 = *(sub_24BCB9024(v7 + 104, v46 + 7) + 12);
    LODWORD(v173) = v54;
  }

  else
  {
    v55 = sub_24BCB9024(v7 + 104, v46 + 7);
    v54 = *(sub_24BCB9024(v7 + 104, v55) + 12);
    LODWORD(v173) = v54;
    v49 = (v46 + 20);
  }

  v175 = *v49;
  v56 = __p;
  if (__p != v177)
  {
    while (*v56 != v54)
    {
      v56 += 4;
      if (v56 == v177)
      {
        goto LABEL_42;
      }
    }
  }

  if (v56 != v177)
  {
    goto LABEL_132;
  }

LABEL_42:
  v181 = 0uLL;
  *&v182 = 0;
  if ((sub_24BD966B0(v7, &v173, &v175, v5, v187, &v181) & 1) == 0)
  {
    v57 = v177;
    if (v177 >= v178)
    {
      v92 = (v177 - __p) >> 2;
      if ((v92 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v93 = (v178 - __p) >> 1;
      if (v93 <= v92 + 1)
      {
        v93 = v92 + 1;
      }

      if (v178 - __p >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v94 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v94 = v93;
      }

      if (v94)
      {
        sub_24BC92E0C(&__p, v94);
      }

      v96 = (4 * v92);
      *v96 = v173;
      v58 = 4 * v92 + 4;
      v97 = v96 - (v177 - __p);
      memcpy(v97, __p, v177 - __p);
      v98 = __p;
      __p = v97;
      v177 = v58;
      v178 = 0;
      if (v98)
      {
        operator delete(v98);
      }
    }

    else
    {
      *v177 = v173;
      v58 = (v57 + 4);
    }

    v177 = v58;
    if (v181)
    {
      *(&v181 + 1) = v181;
      operator delete(v181);
    }

    goto LABEL_132;
  }

  v154 = v181;
  *a4 = *v181;
  *a5 = v154[1];
  *(&v181 + 1) = v154;
  operator delete(v154);
  v40 = 0;
LABEL_142:
  if (__p)
  {
    v177 = __p;
    operator delete(__p);
  }

  if (v40)
  {
LABEL_145:
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }

  if (v186[0])
  {
    v186[1] = v186[0];
    operator delete(v186[0]);
  }

  return v41;
}

void sub_24BD97D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 144);
  if (v32)
  {
    *(v30 - 136) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 120);
  if (v33)
  {
    *(v30 - 112) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD97DCC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BD9A384(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BD97E34(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, void *a6, void *a7)
{
  v33 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  memset(v30, 0, sizeof(v30));
  sub_24BD94C40(v32, a4);
  sub_24BD94C40(v30, a5);
  v15 = *(a1 + 152);
  v14 = *(a1 + 160);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_24BC8E01C();
  }

  *(4 * *a4) = 1;
  *(4 * *a5) = 2;
  while (*(&v33 + 1))
  {
    v29 = *(*(*(&v32[0] + 1) + ((v33 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v33 & 0x3FF));
    *&v33 = v33 + 1;
    --*(&v33 + 1);
    if (v33 >= 0x800)
    {
      operator delete(**(&v32[0] + 1));
      *(&v32[0] + 1) += 8;
      *&v33 = v33 - 1024;
    }

    v16 = *sub_24BCB9038(a1 + 104, &v29);
    v28 = v16;
    do
    {
      v28 = *(sub_24BCB9024(a1 + 104, &v28) + 8);
      if (!sub_24BD93D50(a1, &v28, (a3 + 4), (a3 + 8)))
      {
        v17 = sub_24BCB9024(a1 + 104, &v28);
        v27 = *(sub_24BCB9024(a1 + 104, v17) + 16);
        if (!*(4 * v27))
        {
          sub_24BD94C40(v32, &v27);
          *(4 * v27) = 1;
        }
      }
    }

    while (v28 != v16);
    v18 = *(&v31 + 1);
    if (*(&v31 + 1))
    {
LABEL_16:
      v29 = *(*(*(&v30[0] + 1) + ((v31 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v31 & 0x3FF));
      *&v31 = v31 + 1;
      *(&v31 + 1) = v18 - 1;
      if (v31 >= 0x800)
      {
        operator delete(**(&v30[0] + 1));
        *(&v30[0] + 1) += 8;
        *&v31 = v31 - 1024;
      }

      v19 = *sub_24BCB9038(a1 + 104, &v29);
      v28 = v19;
      do
      {
        v28 = *(sub_24BCB9024(a1 + 104, &v28) + 8);
        if (!sub_24BD93D50(a1, &v28, (a3 + 4), (a3 + 8)))
        {
          v20 = sub_24BCB9024(a1 + 104, &v28);
          v27 = *(sub_24BCB9024(a1 + 104, v20) + 16);
          if (!*(4 * v27))
          {
            sub_24BD94C40(v30, &v27);
            *(4 * v27) = 2;
          }
        }
      }

      while (v28 != v19);
    }
  }

  v18 = *(&v31 + 1);
  if (*(&v31 + 1))
  {
    goto LABEL_16;
  }

  a6[1] = *a6;
  a7[1] = *a7;
  v21 = *a2;
  if (a2[1] != *a2)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(4 * *(v21 + v22));
      v25 = a7;
      if (v24 != 2)
      {
        v25 = a6;
        if (v24 == 1)
        {
          v25 = a6;
        }
      }

      sub_24BCB4670(v25, (v21 + v22));
      ++v23;
      v21 = *a2;
      v22 += 4;
    }

    while (v23 < (a2[1] - *a2) >> 2);
    operator delete(0);
  }

  sub_24BCA102C(v30);
  sub_24BCA102C(v32);
  return 1;
}

void sub_24BD98184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_24BCA102C(va);
  sub_24BCA102C(va1);
  _Unwind_Resume(a1);
}

void sub_24BD981D4(void *a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v7 = (a1[10] + 16 * *a3);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  (*(*v9 + 48))(v9);
  v10 = (a1[10] + 16 * *a3);
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
  }

  v13 = (*(*v12 + 16))(v12) - 1;
  v15 = *a2;
  v14 = a2[1];
  if (v14 != *a2)
  {
    v16 = 0;
    do
    {
      v17 = *(v15 + 4 * v16);
      v18 = (a1[7] + 16 * a3[1]);
      v20 = *v18;
      v19 = v18[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v19);
        v15 = *a2;
        v14 = a2[1];
      }

      *(*(v20 + 40) + 4 * v17) = v13;
      ++v16;
    }

    while (v16 < (v14 - v15) >> 2);
  }

  sub_24BCB7458(v80, 3uLL);
  sub_24BCB2008(__p, 3uLL);
  v78[0] = 0;
  v78[1] = 0;
  v77 = v78;
  v21 = *a2;
  if (a2[1] == *a2)
  {
    v68 = 0;
  }

  else
  {
    v22 = 0;
    do
    {
      sub_24BCD573C(a1, (v21 + 4 * v22), v80);
      v69 = v22;
      v23 = *(*a2 + 4 * v22);
      v24 = (a1[7] + 16 * a3[2]);
      v26 = *v24;
      v25 = v24[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v25);
      }

      v27 = 0;
      v28 = 0;
      v71 = *(v26 + 40) + 12 * v23;
      do
      {
        v28 |= sub_24BD93D50(a1, (v80[0] + v27), a3 + 1, a3 + 2);
        v27 += 4;
      }

      while (v27 != 12);
      if (v28)
      {
        sub_24BCD567C(a1, (*a2 + 4 * v69), __p);
        for (i = 0; i != 3; ++i)
        {
          sub_24BCB9454(v76, a1 + 13, __p[0] + i);
          for (j = sub_24BCB947C(v76); ; j = sub_24BCB947C(v76))
          {
            v75 = j;
            if (j == -1)
            {
              break;
            }

            if (*(sub_24BCB9024((a1 + 13), &v75) + 16) != -1)
            {
              v31 = a3[1];
              v32 = *(sub_24BCB9024((a1 + 13), &v75) + 16);
              v33 = (a1[7] + 16 * v31);
              v35 = *v33;
              v34 = v33[1];
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v34);
              }

              if (*(*(v35 + 40) + 4 * v32) == *a4)
              {
                v36 = *(v71 + 4 * i);
                v74 = v36;
                v37 = v78[0];
                if (!v78[0])
                {
                  goto LABEL_33;
                }

                v38 = v78;
                do
                {
                  v39 = *(v37 + 28);
                  v40 = v39 >= v36;
                  v41 = v39 < v36;
                  if (v40)
                  {
                    v38 = v37;
                  }

                  v37 = *(v37 + 8 * v41);
                }

                while (v37);
                if (v38 != v78 && v36 >= *(v38 + 7))
                {
                  *(v71 + 4 * i) = *sub_24BD987D0(&v77, &v74);
                }

                else
                {
LABEL_33:
                  v42 = (a1[10] + 16 * a3[3]);
                  v44 = *v42;
                  v43 = v42[1];
                  if (v43)
                  {
                    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v43);
                  }

                  (*(*v44 + 48))(v44);
                  v45 = (a1[10] + 16 * a3[3]);
                  v47 = *v45;
                  v46 = v45[1];
                  if (v46)
                  {
                    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v46);
                  }

                  v48 = (*(*v47 + 16))(v47);
                  v49 = (a1[10] + 16 * a3[3]);
                  v51 = *v49;
                  v50 = v49[1];
                  if (v50)
                  {
                    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v50);
                    v52 = (a1[10] + 16 * a3[3]);
                    v54 = *v52;
                    v53 = v52[1];
                    v55 = (*(v51 + 40) + 8 * v74);
                    if (v53)
                    {
                      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_24BC9EC78(v53);
                    }

                    v51 = v54;
                  }

                  else
                  {
                    v55 = (*(v51 + 40) + 8 * v74);
                  }

                  v56 = v48 - 1;
                  v57 = (*(v51 + 40) + 8 * v56);
                  *v57 = *v55;
                  v57[1] = v55[1];
                  v73[0] = &v74;
                  *(sub_24BD8151C(&v77, &v74) + 8) = v56;
                  *(v71 + 4 * i) = v56;
                  sub_24BCB9454(v73, a1 + 13, __p[0] + i);
                  for (k = sub_24BCB947C(v73); ; k = sub_24BCB947C(v73))
                  {
                    v72 = k;
                    if (k == -1)
                    {
                      break;
                    }

                    v59 = *(sub_24BCB9024((a1 + 13), &v72) + 16);
                    if (v59 != -1)
                    {
                      v60 = (a1[7] + 16 * a3[1]);
                      v62 = *v60;
                      v61 = v60[1];
                      if (v61)
                      {
                        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                        sub_24BC9EC78(v61);
                      }

                      if (*(*(v62 + 40) + 4 * v59) == v13)
                      {
                        v63 = (a1[7] + 16 * a3[2]);
                        v65 = *v63;
                        v64 = v63[1];
                        if (v64)
                        {
                          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
                          sub_24BC9EC78(v64);
                        }

                        v66 = 0;
                        v67 = *(v65 + 40) + 12 * v59;
                        do
                        {
                          if (*(v67 + v66) == v74)
                          {
                            *(v67 + v66) = v56;
                          }

                          v66 += 4;
                        }

                        while (v66 != 12);
                      }
                    }
                  }
                }

                break;
              }
            }
          }
        }
      }

      v22 = v69 + 1;
      v21 = *a2;
    }

    while (v69 + 1 < ((a2[1] - *a2) >> 2));
    v68 = v78[0];
  }

  sub_24BCC8A84(&v77, v68);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v80[0])
  {
    v80[1] = v80[0];
    operator delete(v80[0]);
  }
}

void sub_24BD98760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD987D0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_24BC8E244("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_24BD98828(uint64_t a1)
{
  v2 = *(a1 + 728);
  if (v2)
  {
    *(a1 + 736) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 704);
  if (v3)
  {
    *(a1 + 712) = v3;
    operator delete(v3);
  }

  v13 = (a1 + 680);
  sub_24BD98944(&v13);
  v4 = *(a1 + 632);
  if (v4)
  {
    *(a1 + 640) = v4;
    operator delete(v4);
  }

  v13 = (a1 + 608);
  sub_24BC8EE84(&v13);
  v13 = (a1 + 584);
  sub_24BC8EE84(&v13);
  for (i = 0; i != -96; i -= 24)
  {
    v6 = *(a1 + i + 560);
    if (v6)
    {
      *(a1 + i + 568) = v6;
      operator delete(v6);
    }
  }

  for (j = 0; j != -96; j -= 24)
  {
    v8 = *(a1 + j + 464);
    if (v8)
    {
      *(a1 + j + 472) = v8;
      operator delete(v8);
    }
  }

  for (k = 0; k != -96; k -= 24)
  {
    v10 = *(a1 + k + 368);
    if (v10)
    {
      *(a1 + k + 376) = v10;
      operator delete(v10);
    }
  }

  v13 = (a1 + 224);
  sub_24BC8EE84(&v13);
  v11 = *(a1 + 80);
  if (v11)
  {
    *(a1 + 88) = v11;
    operator delete(v11);
  }

  return sub_24BC9F10C(a1);
}

void sub_24BD98944(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BD98998(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BD98998(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 232)
  {
    v5 = 0;
    v6 = i;
    do
    {
      v7 = *(v6 + v5 - 24);
      if (v7)
      {
        *(v6 + v5 - 16) = v7;
        operator delete(v7);
      }

      v5 -= 72;
    }

    while (v5 != -216);
  }

  *(a1 + 8) = a2;
}

void *sub_24BD98A10(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BD98A68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BD98A84(uint64_t a1, unint64_t a2, uint64_t a3, char a4, float result)
{
  while (2)
  {
    v9 = (a2 - 4);
    v10 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = (a2 - v10) >> 3;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v114 = *(v10 + 8);
                v115 = *(v10 + 4);
                result = *(v10 + 12);
                v116 = *(a2 - 8);
                if (result <= v115)
                {
                  if (*(&v116 + 1) <= result)
                  {
                    return result;
                  }

                  *(v10 + 8) = v116;
                  *(a2 - 8) = v114;
                  v9 = (v10 + 12);
                  v162 = *(v10 + 12);
                  *(v10 + 12) = *(a2 - 4);
                  *(a2 - 4) = v162;
                  v163 = *v10;
                  v164 = *(v10 + 8);
                  result = *(&v164 + 1);
                  if (*(&v164 + 1) <= COERCE_FLOAT(HIDWORD(*v10)))
                  {
                    return result;
                  }

                  *v10 = v164;
                  *(v10 + 8) = v163;
                  v118 = (v10 + 4);
                }

                else
                {
                  v117 = *v10;
                  if (*(&v116 + 1) <= result)
                  {
                    *(v10 + 4) = *(v10 + 12);
                    *(v10 + 8) = v117;
                    *(v10 + 12) = v115;
                    *v10 = v114;
                    v173 = *(a2 - 8);
                    v174 = *(v10 + 8);
                    result = *(&v173 + 1);
                    if (*(&v173 + 1) <= *(&v174 + 1))
                    {
                      return result;
                    }

                    *(v10 + 8) = v173;
                    *(a2 - 8) = v174;
                    v118 = (v10 + 12);
                  }

                  else
                  {
                    *v10 = v116;
                    v118 = (v10 + 4);
                    *(a2 - 8) = v117;
                  }
                }

                result = *v118;
                *v118 = *v9;
                *v9 = result;
                return result;
              case 4:

                return sub_24BD99740(v10, (v10 + 8), (v10 + 16), a2 - 8);
              case 5:
                sub_24BD99740(v10, (v10 + 8), (v10 + 16), v10 + 24);
                v101 = *(a2 - 8);
                v102 = *(v10 + 24);
                result = *(&v101 + 1);
                if (*(&v101 + 1) > *(&v102 + 1))
                {
                  *(v10 + 24) = v101;
                  *(a2 - 8) = v102;
                  v103 = *(v10 + 28);
                  *(v10 + 28) = *(a2 - 4);
                  *(a2 - 4) = v103;
                  v104 = *(v10 + 16);
                  v105 = *(v10 + 24);
                  v106 = HIDWORD(v105);
                  result = *(&v105 + 1);
                  if (*(&v105 + 1) > *(&v104 + 1))
                  {
                    *(v10 + 16) = v105;
                    *(v10 + 24) = v104;
                    v107 = *(v10 + 8);
                    v108 = *(v10 + 16);
                    result = *(&v108 + 1);
                    if (*(&v108 + 1) > *(&v107 + 1))
                    {
                      *(v10 + 8) = v108;
                      *(v10 + 12) = v106;
                      *(v10 + 16) = v107;
                      v109 = *v10;
                      v110 = *(v10 + 8);
                      result = *(&v110 + 1);
                      v111 = HIDWORD(*v10);
                      if (*(&v110 + 1) > COERCE_FLOAT(HIDWORD(*v10)))
                      {
                        *v10 = v110;
                        *(v10 + 4) = v106;
                        *(v10 + 8) = v109;
                        *(v10 + 12) = v111;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v112 = *(a2 - 8);
              v113 = *v10;
              result = *(&v112 + 1);
              if (*(&v112 + 1) > COERCE_FLOAT(HIDWORD(*v10)))
              {
                *v10 = v112;
                *(a2 - 8) = v113;
                result = *(v10 + 4);
                *(v10 + 4) = *(a2 - 4);
                *(a2 - 4) = result;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v119 = v10 + 8;
            v121 = v10 == a2 || v119 == a2;
            if (a4)
            {
              if (!v121)
              {
                v122 = 0;
                v123 = v10;
                do
                {
                  v124 = v119;
                  v125 = *v123;
                  result = *(v123 + 12);
                  if (result > COERCE_FLOAT(HIDWORD(*v123)))
                  {
                    v126 = *(v123 + 8);
                    v127 = *(v123 + 12);
                    result = v127;
                    v128 = v122;
                    while (1)
                    {
                      v129 = v10 + v128;
                      *(v129 + 8) = v125;
                      *(v129 + 12) = *(v10 + v128 + 4);
                      if (!v128)
                      {
                        break;
                      }

                      v125 = *(v129 - 8);
                      v128 -= 8;
                      if (v127 <= *(&v125 + 1))
                      {
                        v130 = v10 + v128 + 8;
                        goto LABEL_141;
                      }
                    }

                    v130 = v10;
LABEL_141:
                    *v130 = v126;
                    *(v130 + 4) = v127;
                  }

                  v119 = v124 + 8;
                  v122 += 8;
                  v123 = v124;
                }

                while (v124 + 8 != a2);
              }
            }

            else if (!v121)
            {
              v165 = (v10 + 12);
              do
              {
                v166 = v119;
                v167 = *a1;
                result = *(a1 + 12);
                if (result > COERCE_FLOAT(HIDWORD(*a1)))
                {
                  v168 = *(a1 + 8);
                  v169 = *(a1 + 12);
                  result = v169;
                  v170 = v165;
                  do
                  {
                    v171 = v170;
                    v172 = *(v170 - 2);
                    v170 -= 2;
                    *(v171 - 1) = v167;
                    *v171 = v172;
                    v167 = *(v171 - 5);
                  }

                  while (v169 > *(&v167 + 1));
                  *(v170 - 1) = v168;
                  *v170 = v169;
                }

                v119 = v166 + 8;
                v165 += 2;
                a1 = v166;
              }

              while (v166 + 8 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v131 = (v11 - 2) >> 1;
              v132 = v131;
              do
              {
                v133 = v132;
                if (v131 >= v132)
                {
                  v134 = (2 * v132) | 1;
                  v135 = (v10 + 8 * v134);
                  if (2 * v133 + 2 < v11)
                  {
                    v136 = vshrn_n_s64(*v135, 0x20uLL);
                    if (vcgt_f32(v136, vdup_lane_s32(v136, 1)).u32[0])
                    {
                      v135 = (v135 + 8);
                      v134 = 2 * v133 + 2;
                    }
                  }

                  v137 = (v10 + 8 * v133);
                  v138 = v135->i64[0];
                  v139 = *&v137->i32[1];
                  if (COERCE_FLOAT(HIDWORD(v135->i64[0])) <= v139)
                  {
                    v140 = v137->i32[0];
                    do
                    {
                      v141 = v137;
                      v137 = v135;
                      v141->i32[0] = v138;
                      v141->i32[1] = v135->i32[1];
                      if (v131 < v134)
                      {
                        break;
                      }

                      v142 = (2 * v134) | 1;
                      v135 = (v10 + 8 * v142);
                      v143 = 2 * v134 + 2;
                      if (v143 < v11)
                      {
                        v144 = vshrn_n_s64(*v135, 0x20uLL);
                        if (vcgt_f32(v144, vdup_lane_s32(v144, 1)).u8[0])
                        {
                          v135 = (v135 + 8);
                          v142 = v143;
                        }
                      }

                      v138 = v135->i64[0];
                      v134 = v142;
                    }

                    while (COERCE_FLOAT(HIDWORD(v135->i64[0])) <= v139);
                    v137->i32[0] = v140;
                    *&v137->i32[1] = v139;
                  }
                }

                v132 = v133 - 1;
              }

              while (v133);
              do
              {
                v145 = 0;
                v146 = *v10;
                result = *(v10 + 4);
                v147 = v10;
                do
                {
                  v148 = &v147[2 * v145];
                  v149 = v148 + 2;
                  v150 = (2 * v145) | 1;
                  v145 = 2 * v145 + 2;
                  if (v145 >= v11)
                  {
                    v145 = v150;
                  }

                  else
                  {
                    v151 = vshrn_n_s64(*(v148 + 2), 0x20uLL);
                    v152 = v148 + 4;
                    if (vcgt_f32(v151, vdup_lane_s32(v151, 1)).u8[0])
                    {
                      v149 = v152;
                    }

                    else
                    {
                      v145 = v150;
                    }
                  }

                  *v147 = *v149;
                  v147[1] = v149[1];
                  v147 = v149;
                }

                while (v145 <= ((v11 - 2) >> 1));
                if (v149 == (a2 - 8))
                {
                  *v149 = v146;
                  *(v149 + 1) = result;
                }

                else
                {
                  *v149 = *(a2 - 8);
                  v149[1] = *(a2 - 4);
                  *(a2 - 8) = v146;
                  *(a2 - 4) = result;
                  v153 = (v149 - v10 + 8) >> 3;
                  v154 = v153 < 2;
                  v155 = v153 - 2;
                  if (!v154)
                  {
                    v156 = v155 >> 1;
                    v157 = (v10 + 8 * (v155 >> 1));
                    v158 = *v157;
                    v159 = *(v149 + 1);
                    result = v159;
                    if (COERCE_FLOAT(HIDWORD(*v157)) > v159)
                    {
                      v160 = *v149;
                      do
                      {
                        v161 = v149;
                        v149 = v157;
                        *v161 = v158;
                        v161[1] = v157[1];
                        if (!v156)
                        {
                          break;
                        }

                        v156 = (v156 - 1) >> 1;
                        v157 = (v10 + 8 * v156);
                        v158 = *v157;
                      }

                      while (COERCE_FLOAT(HIDWORD(*v157)) > v159);
                      *v149 = v160;
                      *(v149 + 1) = v159;
                    }
                  }
                }

                a2 -= 8;
                v154 = v11-- <= 2;
              }

              while (!v154);
            }

            return result;
          }

          v12 = v10 + 8 * (v11 >> 1);
          v13 = v12;
          v14 = *(a2 - 8);
          if (v11 >= 0x81)
          {
            v15 = *v12;
            v16 = *(v12 + 4);
            v17 = *(v10 + 4);
            if (v16 <= v17)
            {
              if (*(&v14 + 1) <= v16 || (*v12 = v14, *(a2 - 8) = v15, v25 = (v12 + 4), v26 = *(v12 + 4), *(v12 + 4) = *(a2 - 4), *(a2 - 4) = v26, v27 = *v10, COERCE_FLOAT(HIDWORD(*v12)) <= COERCE_FLOAT(HIDWORD(*v10))))
              {
LABEL_28:
                v34 = v12 - 8;
                v35 = *(v12 - 8);
                v36 = *(v10 + 12);
                v37 = *(a2 - 16);
                if (*(&v35 + 1) <= v36)
                {
                  if (*(&v37 + 1) <= *(&v35 + 1) || (*v34 = v37, *(a2 - 16) = v35, v40 = (v12 - 4), v41 = *(v12 - 4), *(v12 - 4) = *(a2 - 12), *(a2 - 12) = v41, v42 = *(v10 + 8), COERCE_FLOAT(HIDWORD(*v34)) <= *(&v42 + 1)))
                  {
LABEL_42:
                    v51 = *(v12 + 8);
                    v49 = (v12 + 8);
                    LODWORD(v50) = v51;
                    v52 = *(v10 + 20);
                    v53 = HIDWORD(v51);
                    v54 = *(&v51 + 1);
                    v55 = *(a2 - 24);
                    if (*(&v51 + 1) <= v52)
                    {
                      if (*(&v55 + 1) <= v54)
                      {
                        goto LABEL_52;
                      }

                      *v49 = v55;
                      *(a2 - 24) = v50;
                      v58 = v49 + 1;
                      v59 = v49[1];
                      v49[1] = *(a2 - 20);
                      *(a2 - 20) = v59;
                      v50 = *v49;
                      v60 = *(v10 + 16);
                      LODWORD(v54) = HIDWORD(*v49);
                      if (v54 <= *(&v60 + 1))
                      {
LABEL_52:
                        v63 = *v13;
                        v64 = *(v13 + 4);
                        v65 = *v34;
                        v66 = *(v34 + 4);
                        v67 = v66;
                        if (v64 <= v66)
                        {
                          if (v54 <= v64)
                          {
                            v54 = *(v13 + 4);
                            goto LABEL_64;
                          }

                          *v13 = v50;
                          *(v13 + 4) = v54;
                          v70 = (v13 + 4);
                          *v49 = v63;
                          *(v49 + 1) = v64;
                          v63 = *v13;
                          if (v54 <= v66)
                          {
LABEL_64:
                            v71 = *v10;
                            *v10 = v63;
                            *v13 = v71;
                            v72 = *(v10 + 4);
                            *(v10 + 4) = v54;
                            *(v13 + 4) = v72;
                            goto LABEL_65;
                          }

                          *v34 = v63;
                          v68 = (v34 + 4);
                          *v13 = v65;
                        }

                        else
                        {
                          if (v54 <= v64)
                          {
                            *v13 = v65;
                            *(v13 + 4) = v66;
                            *v34 = v63;
                            *(v34 + 4) = v64;
                            v67 = v66;
                            if (v54 <= v66)
                            {
                              v54 = v66;
                              v63 = v65;
                              goto LABEL_64;
                            }

                            *v13 = v50;
                            *v49 = v65;
                            v69 = (v49 + 1);
                            v68 = (v13 + 4);
                          }

                          else
                          {
                            *v34 = v50;
                            v68 = (v34 + 4);
                            *v49 = v65;
                            v69 = (v49 + 1);
                          }

                          v70 = v69;
                        }

                        *v68 = v54;
                        *v70 = v67;
                        v63 = *v13;
                        v54 = *(v13 + 4);
                        goto LABEL_64;
                      }

                      *(v10 + 16) = v50;
                      *v49 = v60;
                      v57 = (v10 + 20);
                    }

                    else
                    {
                      v56 = *(v10 + 16);
                      if (*(&v55 + 1) <= v54)
                      {
                        *(v10 + 16) = v50;
                        *(v10 + 20) = v53;
                        *v49 = v56;
                        *(v49 + 1) = v52;
                        v57 = v49 + 1;
                        v61 = *(a2 - 24);
                        v50 = *v49;
                        LODWORD(v54) = HIDWORD(*v49);
                        if (*(&v61 + 1) <= v54)
                        {
                          goto LABEL_52;
                        }

                        *v49 = v61;
                        *(a2 - 24) = v50;
                      }

                      else
                      {
                        *(v10 + 16) = v55;
                        *(a2 - 24) = v56;
                        v57 = (v10 + 20);
                      }

                      v58 = (a2 - 20);
                    }

                    v62 = *v57;
                    *v57 = *v58;
                    *v58 = v62;
                    v50 = *v49;
                    LODWORD(v54) = HIDWORD(*v49);
                    goto LABEL_52;
                  }

                  *(v10 + 8) = *v34;
                  *v34 = v42;
                  v39 = (v10 + 12);
                }

                else
                {
                  v38 = *(v10 + 8);
                  if (*(&v37 + 1) <= *(&v35 + 1))
                  {
                    *(v10 + 8) = v35;
                    *v34 = v38;
                    *(v12 - 4) = v36;
                    v39 = (v12 - 4);
                    v46 = *(a2 - 16);
                    v47 = *v34;
                    if (*(&v46 + 1) <= COERCE_FLOAT(HIDWORD(*v34)))
                    {
                      goto LABEL_42;
                    }

                    *v34 = v46;
                    *(a2 - 16) = v47;
                  }

                  else
                  {
                    *(v10 + 8) = v37;
                    *(a2 - 16) = v38;
                    v39 = (v10 + 12);
                  }

                  v40 = (a2 - 12);
                }

                v48 = *v39;
                *v39 = *v40;
                *v40 = v48;
                goto LABEL_42;
              }

              *v10 = *v12;
              v19 = (v10 + 4);
              *v12 = v27;
            }

            else
            {
              v18 = *v10;
              if (*(&v14 + 1) <= v16)
              {
                *v10 = v15;
                *(v10 + 4) = v16;
                *v12 = v18;
                *(v12 + 4) = v17;
                v19 = (v12 + 4);
                v31 = *(a2 - 8);
                v32 = *v12;
                if (*(&v31 + 1) <= COERCE_FLOAT(HIDWORD(*v12)))
                {
                  goto LABEL_28;
                }

                *v12 = v31;
                *(a2 - 8) = v32;
              }

              else
              {
                *v10 = v14;
                v19 = (v10 + 4);
                *(a2 - 8) = v18;
              }

              v25 = (a2 - 4);
            }

            v33 = *v19;
            *v19 = *v25;
            *v25 = v33;
            goto LABEL_28;
          }

          v20 = *v10;
          v21 = *(v10 + 4);
          v22 = *(v13 + 4);
          if (v21 > v22)
          {
            v23 = *v13;
            if (*(&v14 + 1) <= v21)
            {
              *v13 = v20;
              *(v13 + 4) = v21;
              *v10 = v23;
              *(v10 + 4) = v22;
              v24 = (v10 + 4);
              v43 = *(a2 - 8);
              v44 = *v10;
              if (*(&v43 + 1) <= COERCE_FLOAT(HIDWORD(*v10)))
              {
                goto LABEL_65;
              }

              *v10 = v43;
              *(a2 - 8) = v44;
            }

            else
            {
              *v13 = v14;
              v24 = (v13 + 4);
              *(a2 - 8) = v23;
            }

            v28 = (a2 - 4);
            goto LABEL_37;
          }

          if (*(&v14 + 1) > v21)
          {
            *v10 = v14;
            *(a2 - 8) = v20;
            v28 = (v10 + 4);
            v29 = *(v10 + 4);
            *(v10 + 4) = *(a2 - 4);
            *(a2 - 4) = v29;
            v30 = *v13;
            if (COERCE_FLOAT(HIDWORD(*v10)) > COERCE_FLOAT(HIDWORD(*v13)))
            {
              *v13 = *v10;
              v24 = (v13 + 4);
              *v10 = v30;
LABEL_37:
              v45 = *v24;
              *v24 = *v28;
              *v28 = v45;
            }
          }

LABEL_65:
          --a3;
          if (a4)
          {
            break;
          }

          v73 = *v10;
          v74 = *(v10 + 4);
          result = v74;
          if (*(v10 - 4) > v74)
          {
            goto LABEL_68;
          }

          if (v74 <= *(a2 - 4))
          {
            v91 = v10 + 8;
            do
            {
              v10 = v91;
              if (v91 >= a2)
              {
                break;
              }

              v92 = *(v91 + 4);
              v91 += 8;
            }

            while (v74 <= v92);
          }

          else
          {
            v89 = v10;
            do
            {
              v10 = v89 + 8;
              v90 = *(v89 + 12);
              v89 += 8;
            }

            while (v74 <= v90);
          }

          v93 = a2;
          if (v10 < a2)
          {
            v94 = a2;
            do
            {
              v93 = (v94 - 8);
              v95 = *(v94 - 4);
              v94 -= 8;
            }

            while (v74 > v95);
          }

          if (v10 < v93)
          {
            v96 = *v10;
            v97 = *v93;
            do
            {
              *v10 = v97;
              *v93 = v96;
              v98 = *(v10 + 4);
              *(v10 + 4) = v93[1];
              v93[1] = v98;
              do
              {
                v99 = *(v10 + 8);
                v10 += 8;
                v96 = v99;
              }

              while (v74 <= *(&v99 + 1));
              do
              {
                v100 = *(v93 - 1);
                v93 -= 2;
                v97 = v100;
              }

              while (v74 > *(&v100 + 1));
            }

            while (v10 < v93);
          }

          if (v10 - 8 != a1)
          {
            *a1 = *(v10 - 8);
            result = *(v10 - 4);
            *(a1 + 4) = result;
          }

          a4 = 0;
          *(v10 - 8) = v73;
          *(v10 - 4) = v74;
        }

        v73 = *v10;
        v74 = *(v10 + 4);
        result = v74;
LABEL_68:
        v75 = 0;
        do
        {
          v76 = *(v10 + v75 + 8);
          v75 += 8;
        }

        while (result < *(&v76 + 1));
        v77 = v10 + v75;
        v78 = a2;
        if (v75 == 8)
        {
          v81 = a2;
          while (v77 < v81)
          {
            v79 = v81 - 2;
            v82 = *(v81 - 1);
            v81 -= 2;
            if (result < v82)
            {
              goto LABEL_78;
            }
          }

          v79 = v81;
        }

        else
        {
          do
          {
            v79 = (v78 - 8);
            v80 = *(v78 - 4);
            v78 -= 8;
          }

          while (result >= v80);
        }

LABEL_78:
        if (v77 >= v79)
        {
          v10 = v77;
        }

        else
        {
          v83 = *v79;
          v10 = v77;
          v84 = v79;
          do
          {
            *v10 = v83;
            *v84 = v76;
            v85 = *(v10 + 4);
            *(v10 + 4) = v84[1];
            *(v84 + 1) = v85;
            do
            {
              v86 = *(v10 + 8);
              v10 += 8;
              LODWORD(v76) = v86;
            }

            while (result < *(&v86 + 1));
            do
            {
              v87 = *(v84 - 1);
              v84 -= 2;
              v83 = v87;
            }

            while (result >= *(&v87 + 1));
          }

          while (v10 < v84);
        }

        if (v10 - 8 != a1)
        {
          *a1 = *(v10 - 8);
          *(a1 + 4) = *(v10 - 4);
        }

        *(v10 - 8) = v73;
        *(v10 - 4) = v74;
        if (v77 >= v79)
        {
          break;
        }

LABEL_91:
        sub_24BD98A84(a1, v10 - 8, a3, a4 & 1);
        a4 = 0;
      }

      v88 = sub_24BD998D8(a1, v10 - 8);
      if (sub_24BD998D8(v10, a2))
      {
        break;
      }

      if (!v88)
      {
        goto LABEL_91;
      }
    }

    a2 = v10 - 8;
    if (!v88)
    {
      continue;
    }

    return result;
  }
}

float sub_24BD99740(uint64_t *a1, float *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  LODWORD(v7) = HIDWORD(*a3);
  if (v5 <= *(a1 + 1))
  {
    if (v7 > v5)
    {
      *a2 = v6;
      *a3 = v4;
      v10 = (a2 + 1);
      v11 = *(a2 + 1);
      a2[1] = *(a3 + 1);
      *(a3 + 1) = v11;
      v12 = *a1;
      if (COERCE_FLOAT(HIDWORD(*a2)) > COERCE_FLOAT(HIDWORD(*a1)))
      {
        *a1 = *a2;
        v9 = a1 + 1;
        *a2 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = *a1;
    if (v7 > v5)
    {
      *a1 = v6;
      v9 = a1 + 1;
      *a3 = v8;
      v10 = a3 + 1;
LABEL_9:
      v15 = *v9;
      *v9 = *v10;
      *v10 = v15;
      goto LABEL_10;
    }

    *a1 = v4;
    *a2 = v8;
    v9 = (a2 + 1);
    v13 = *(a1 + 1);
    *(a1 + 1) = a2[1];
    *(a2 + 1) = v13;
    v14 = *a2;
    if (COERCE_FLOAT(HIDWORD(*a3)) > COERCE_FLOAT(HIDWORD(*a2)))
    {
      *a2 = *a3;
      *a3 = v14;
      v10 = a3 + 1;
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = *a3;
  LODWORD(result) = HIDWORD(*a4);
  if (result > COERCE_FLOAT(HIDWORD(*a3)))
  {
    *a3 = *a4;
    *a4 = v16;
    v18 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 4);
    *(a4 + 4) = v18;
    v19 = *a2;
    LODWORD(result) = HIDWORD(*a3);
    if (result > COERCE_FLOAT(HIDWORD(*a2)))
    {
      *a2 = *a3;
      *a3 = v19;
      v20 = *(a2 + 1);
      a2[1] = *(a3 + 1);
      *(a3 + 1) = v20;
      v21 = *a1;
      LODWORD(result) = HIDWORD(*a2);
      if (result > COERCE_FLOAT(HIDWORD(*a1)))
      {
        *a1 = *a2;
        *a2 = v21;
        result = *(a1 + 1);
        *(a1 + 1) = a2[1];
        a2[1] = result;
      }
    }
  }

  return result;
}

BOOL sub_24BD998D8(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 4);
      v22 = *(a1 + 12);
      v23 = *(a2 - 8);
      if (v22 <= v21)
      {
        if (*(&v23 + 1) <= v22)
        {
          return 1;
        }

        *(a1 + 8) = v23;
        *(a2 - 8) = v20;
        v26 = (a1 + 12);
        v36 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 4);
        *(a2 - 4) = v36;
        v37 = *a1;
        v38 = *(a1 + 8);
        if (*(&v38 + 1) <= COERCE_FLOAT(HIDWORD(*a1)))
        {
          return 1;
        }

        *a1 = v38;
        *(a1 + 8) = v37;
        v25 = (a1 + 4);
      }

      else
      {
        v24 = *a1;
        if (*(&v23 + 1) <= v22)
        {
          *(a1 + 4) = *(a1 + 12);
          *(a1 + 8) = v24;
          *(a1 + 12) = v21;
          *a1 = v20;
          v41 = *(a2 - 8);
          v42 = *(a1 + 8);
          if (*(&v41 + 1) <= *(&v42 + 1))
          {
            return 1;
          }

          *(a1 + 8) = v41;
          *(a2 - 8) = v42;
          v26 = (a2 - 4);
          v25 = (a1 + 12);
        }

        else
        {
          *a1 = v23;
          v25 = (a1 + 4);
          *(a2 - 8) = v24;
          v26 = (a2 - 4);
        }
      }

      v43 = *v25;
      *v25 = *v26;
      *v26 = v43;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_24BD99740(a1, (a1 + 8), (a1 + 16), a1 + 24);
        v8 = *(a2 - 8);
        v9 = *(a1 + 24);
        if (*(&v8 + 1) > *(&v9 + 1))
        {
          *(a1 + 24) = v8;
          *(a2 - 8) = v9;
          v10 = *(a1 + 28);
          *(a1 + 28) = *(a2 - 4);
          *(a2 - 4) = v10;
          v11 = *(a1 + 16);
          v12 = *(a1 + 24);
          v13 = HIDWORD(v12);
          if (*(&v12 + 1) > *(&v11 + 1))
          {
            *(a1 + 16) = v12;
            *(a1 + 24) = v11;
            v14 = *(a1 + 8);
            v15 = *(a1 + 16);
            if (*(&v15 + 1) > *(&v14 + 1))
            {
              *(a1 + 8) = v15;
              *(a1 + 12) = v13;
              *(a1 + 16) = v14;
              v16 = *a1;
              v17 = *(a1 + 8);
              v18 = HIDWORD(*a1);
              if (*(&v17 + 1) > COERCE_FLOAT(HIDWORD(*a1)))
              {
                *a1 = v17;
                *(a1 + 4) = v13;
                result = 1;
                *(a1 + 8) = v16;
                *(a1 + 12) = v18;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_24BD99740(a1, (a1 + 8), (a1 + 16), a2 - 8);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 8);
    v6 = *a1;
    if (*(&v5 + 1) > COERCE_FLOAT(HIDWORD(*a1)))
    {
      *a1 = v5;
      *(a2 - 8) = v6;
      v7 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 4);
      *(a2 - 4) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = (a1 + 16);
  v28 = *(a1 + 16);
  v30 = *(a1 + 8);
  v29 = *(a1 + 12);
  v31 = *a1;
  v32 = *(a1 + 4);
  v33 = v32;
  v34 = HIDWORD(v28);
  if (v29 > v32)
  {
    if (*(&v28 + 1) <= v29)
    {
      *(a1 + 4) = v29;
      *(a1 + 8) = v31;
      *(a1 + 12) = v32;
      v35 = (a1 + 12);
      *a1 = v30;
      v44 = *(a1 + 8);
      v33 = *(&v44 + 1);
      if (*(&v28 + 1) <= *(&v44 + 1))
      {
        goto LABEL_34;
      }

      *(a1 + 8) = v28;
      *(a1 + 16) = v44;
    }

    else
    {
      *a1 = v28;
      *(a1 + 16) = v31;
      v35 = (a1 + 4);
    }

    v39 = (a1 + 20);
    goto LABEL_33;
  }

  if (*(&v28 + 1) > v29)
  {
    *(a1 + 8) = v28;
    v39 = (a1 + 12);
    *(a1 + 16) = v30;
    *(a1 + 20) = v29;
    v40 = *(a1 + 8);
    v34 = HIDWORD(v40);
    if (*(&v40 + 1) > v33)
    {
      *a1 = v40;
      *(a1 + 8) = v31;
      v35 = (a1 + 4);
LABEL_33:
      *v35 = v34;
      *v39 = v33;
    }
  }

LABEL_34:
  v45 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *(v45 + 4);
    v49 = *v27;
    if (v48 > COERCE_FLOAT(HIDWORD(*v27)))
    {
      v50 = *v45;
      v51 = v46;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 24) = v49;
        *(v52 + 28) = *(a1 + v51 + 20);
        if (v51 == -16)
        {
          break;
        }

        v49 = *(v52 + 8);
        v51 -= 8;
        if (v48 <= *(&v49 + 1))
        {
          v53 = a1 + v51 + 24;
          goto LABEL_42;
        }
      }

      v53 = a1;
LABEL_42:
      *v53 = v50;
      *(v53 + 4) = v48;
      if (++v47 == 8)
      {
        return v45 + 8 == a2;
      }
    }

    v27 = v45;
    v46 += 8;
    v45 += 8;
    if (v45 == a2)
    {
      return 1;
    }
  }
}

void *sub_24BD99C90(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24BCAD8CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BD413CC(a1, &v10);
}

void sub_24BD99E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BD99ED4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F962C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BD99F00(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = **(result + 8);
  v5 = *(v4 + 4 * v3);
  *(v4 + 4 * v3) = *(v4 + 4 * *a3);
  *(v4 + 4 * *a3) = v5;
  return result;
}

uint64_t sub_24BD99F28(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_24BD99FA8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BD9A038(result, a2);
  }

  return result;
}

void sub_24BD9A01C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD9A038(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    sub_24BD9A088(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BD9A088(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t *sub_24BD9A0E4(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_24BD9A318(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_24BD9A384(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_24BCA3670(a1, v7);
  }

  v8 = 32 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 4) = *(a2 + 4);
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 16) = *(a2 + 16);
  v13 = 32 * v2 + 32;
  sub_24BD9A4C8(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BD9A490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD9A4C8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 4) = *(v2 + 4);
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      *(v5 + 16) = *(v2 + 16);
      v2 += 32;
      v5 += 32;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_24BD9A558(uint64_t a1, float *a2, uint64_t a3)
{
  std::chrono::system_clock::now();
  LODWORD(v50) = 0;
  v51 = std::system_category();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, 28);
  sub_24BD6B968(v49, a3);
  v48 = 0;
  sub_24BC836D4(__p, "h:is_quadmesh_diagonal");
  LOBYTE(v47[0]) = 0;
  v6 = sub_24BCDCDF8((a1 + 32), v47, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 != -1)
  {
    v48 = 1;
  }

  memset(v47, 0, sizeof(v47));
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  sub_24BD93F10(a1, a2, v47, v46, &v45);
  v7 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LOBYTE(__p[0]) = 0;
  sub_24BD54AD8(&v44, v7);
  if (v48 == 1 && v6 != -1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
    LOBYTE(v43[0]) = 0;
    sub_24BC9FEFC(__p, v8);
    v9 = (*(a1 + 160) - *(a1 + 152)) >> 2;
    LOBYTE(v42[0]) = 0;
    sub_24BC9FEFC(v43, v9);
    v10 = a2;
    sub_24BCB7458(v42, 3uLL);
    if (*(a1 + 160) != *(a1 + 152))
    {
      v11 = 0;
      v12 = 0;
      do
      {
        LODWORD(v39) = v12;
        sub_24BCD573C(a1, &v39, v42);
        for (i = 0; i != 12; i += 4)
        {
          v14 = (*(a1 + 32) + 16 * v6);
          v16 = *v14;
          v15 = v14[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v15);
          }

          if ((*(*(v16 + 40) + ((*(v42[0] + i) >> 3) & 0x1FFFFFF8)) >> *(v42[0] + i)))
          {
            ++*(v44 + v11);
          }
        }

        v18 = *(a1 + 152);
        v17 = *(a1 + 160);
        v11 = ++v12;
      }

      while (v12 < ((v17 - v18) >> 2));
      if (v17 != v18)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = *(v43[0] + (v19 >> 6));
          if ((v21 & (1 << v19)) == 0)
          {
            *(v43[0] + (v19 >> 6)) = v21 | (1 << v19);
            LODWORD(v39) = v20;
            sub_24BCD573C(a1, &v39, v42);
            for (j = 0; j != 12; j += 4)
            {
              v23 = v42[0];
              v24 = *(v42[0] + j);
              v25 = v24 >> 6;
              v26 = 1 << v24;
              v27 = *(__p[0] + v25);
              if ((v26 & v27) == 0)
              {
                *(__p[0] + v25) = v26 | v27;
                v28 = sub_24BCB9024(a1 + 104, &v23[j]);
                *(__p[0] + ((*v28 >> 3) & 0x1FFFFFF8)) |= 1 << *v28;
                v29 = sub_24BCB9024(a1 + 104, (v42[0] + j));
                v30 = sub_24BC9ECE4(a1, *(a1 + 180), *v29);
                if ((*v30 & v31) == 0)
                {
                  v32 = (*(a1 + 32) + 16 * v6);
                  v34 = *v32;
                  v33 = v32[1];
                  if (v33)
                  {
                    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v33);
                  }

                  if ((*(*(v34 + 40) + ((*(v42[0] + j) >> 3) & 0x1FFFFFF8)) >> *(v42[0] + j)))
                  {
                    v35 = sub_24BCB9024(a1 + 104, (v42[0] + j));
                    v36 = *(sub_24BCB9024(a1 + 104, v35) + 16);
                    v37 = *(v47[0] + 4 * v19);
                    v38 = *(v47[0] + 4 * v36);
                    if (v37 != v38)
                    {
                      if (*(v44 + v36) == 2)
                      {
                        *(v47[0] + 4 * v19) = v38;
                      }

                      else
                      {
                        *(v47[0] + 4 * v36) = v37;
                        *(v43[0] + ((v36 >> 3) & 0x1FFFFFF8)) |= 1 << v36;
                      }
                    }
                  }
                }
              }
            }

            v18 = *(a1 + 152);
            v17 = *(a1 + 160);
          }

          v19 = ++v20;
        }

        while (v20 < ((v17 - v18) >> 2));
      }
    }

    if (v42[0])
    {
      v42[1] = v42[0];
      operator delete(v42[0]);
    }

    a2 = v10;
    if (v43[0])
    {
      operator delete(v43[0]);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  memset(v43, 0, sizeof(v43));
  sub_24BD99FA8(v42, v45);
  sub_24BD94CCC(a1, a2, v42, v46, v47);
}

void sub_24BD9B078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  sub_24BCA3B84(&a38);
  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  if (a60)
  {
    a61 = a60;
    operator delete(a60);
  }

  v63 = *(v61 - 256);
  if (v63)
  {
    *(v61 - 248) = v63;
    operator delete(v63);
  }

  sub_24BD6B9D8(v61 - 224);
  _Unwind_Resume(a1);
}

BOOL sub_24BD9B230(void *a1, uint64_t *a2, void *a3, unsigned int *a4, _BYTE *a5)
{
  v30 = -1;
  v29 = -1;
  if (!sub_24BD9B404(a1, a2, a4, a5, &v30, &v29))
  {
    return 0;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_24BD9BA44(a1, a2, a3, a4, &v30, &v29, a5, &v26, &__p);
  v10 = v26;
  v11 = v27;
  v13 = __p;
  v12 = v24;
  if (v27 - v26 >= (v24 - __p))
  {
    v15 = v26;
    v10 = __p;
  }

  else
  {
    v26 = __p;
    v27 = v24;
    __p = v10;
    v24 = v11;
    v14 = v28;
    v28 = v25;
    v25 = v14;
    v15 = v13;
    v12 = v11;
  }

  v16 = v10 != v12;
  if (v10 != v12)
  {
    v17 = *v15;
    v18 = (a1[7] + 16 * a4[1]);
    v20 = *v18;
    v19 = v18[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v19);
    }

    v22 = *(*(v20 + 40) + 4 * v17);
    sub_24BD981D4(a1, &__p, a4, &v22);
    sub_24BD9B230(a1, &v26, a3, a4, a5);
    sub_24BD9B230(a1, &__p, a3, a4, a5);
    v10 = __p;
  }

  if (v10)
  {
    v24 = v10;
    operator delete(v10);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  return v16;
}

void sub_24BD9B3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD9B404(void *a1, void *a2, unsigned int *a3, _BYTE *a4, _DWORD *a5, _DWORD *a6)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  v7 = a2;
  sub_24BCB7458(v86, 3uLL);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v9 = *v7;
  if (v7[1] == *v7)
  {
    goto LABEL_64;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v71 = v11;
    sub_24BCD573C(a1, (v9 + 4 * v10), v86);
    v12 = 0;
    v73 = v10;
    do
    {
      if (sub_24BD93D50(a1, v86[0] + v12, a3 + 1, a3 + 2))
      {
        v13 = *(*v7 + 4 * v10);
        v14 = (a1[7] + 16 * a3[2]);
        v16 = *v14;
        v15 = v14[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v15);
          v17 = *(*v7 + 4 * v10);
          v18 = (a1[7] + 16 * a3[2]);
          v20 = *v18;
          v19 = v18[1];
          v21 = *(*(v16 + 40) + 12 * v13 + 4 * v12);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v19);
          }

          v16 = v20;
          v13 = v17;
        }

        else
        {
          v21 = *(*(v16 + 40) + 12 * v13 + 4 * v12);
        }

        v22 = (v12 + 1);
        if (v12 == 2)
        {
          v22 = 0;
        }

        v23 = *(*(v16 + 40) + 12 * v13 + 4 * v22);
        v24 = (a1[10] + 16 * a3[3]);
        v26 = *v24;
        v25 = v24[1];
        if (v25)
        {
          v27 = v7;
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v25);
          v28 = (a1[10] + 16 * a3[3]);
          v30 = *v28;
          v29 = v28[1];
          v31 = (*(v26 + 40) + 8 * v21);
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v29);
          }

          v26 = v30;
          v7 = v27;
          v10 = v73;
        }

        else
        {
          v31 = (*(v26 + 40) + 8 * v21);
        }

        v32 = (*(v26 + 40) + 8 * v23);
        v33 = *(*v7 + 4 * v10);
        v77 = *v31;
        v78 = *v32;
        v79 = v21;
        v80 = v23;
        v81 = v33;
        v82 = *(v86[0] + v12);
        sub_24BD9B9DC(&v83, &v77);
        ++v12;
      }

      else
      {
        ++v12;
      }
    }

    while (v12 != 3);
    v10 = (v71 + 1);
    v9 = *v7;
    v11 = v71 + 1;
  }

  while (v10 < (v7[1] - *v7) >> 2);
  if (v83 == v84)
  {
    goto LABEL_64;
  }

  sub_24BCB7458(&v77, 3uLL);
  sub_24BCB7458(__p, 3uLL);
  v34 = v83;
  v35 = v84;
  if (v84 - v83 == 32)
  {
LABEL_55:
    v64 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    while (1)
    {
      v74 = v36;
      v36 = ++v37;
      v38 = (v35 - v34) >> 5;
      if (v38 > v37)
      {
        break;
      }

LABEL_54:
      if (v38 - 1 <= v36)
      {
        goto LABEL_55;
      }
    }

    v39 = v37;
    v40 = v37;
    while (1)
    {
      v41 = &v34[32 * v74];
      v42 = &v34[32 * v39];
      if (*(v41 + 6) != *(v42 + 6))
      {
        v43 = *(v41 + 4);
        v44 = *(v42 + 4);
        if (v43 != v44)
        {
          v45 = *(v42 + 5);
          if (v43 != v45)
          {
            v46 = *(v41 + 5);
            v47 = v46 == v44 || v46 == v45;
            if (!v47 && sub_24BD96618(v41, v42))
            {
              if (*a4 != 1 || a3[4] == -1)
              {
                break;
              }

              v75 = *(v41 + 6);
              sub_24BCD573C(a1, &v75, &v77);
              v69 = v36;
              v72 = v37;
              v75 = *(v42 + 6);
              sub_24BCD573C(a1, &v75, __p);
              v48 = 0;
              v49 = 0;
              do
              {
                v50 = (a1[4] + 16 * a3[4]);
                v52 = *v50;
                v51 = v50[1];
                if (v51)
                {
                  atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v51);
                }

                if ((*(*(v52 + 40) + ((*(v77 + v48) >> 3) & 0x1FFFFFF8)) >> *(v77 + v48)))
                {
                  for (i = 0; i != 12; i += 4)
                  {
                    v54 = (a1[4] + 16 * a3[4]);
                    v56 = *v54;
                    v55 = v54[1];
                    if (v55)
                    {
                      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_24BC9EC78(v55);
                    }

                    if ((*(*(v56 + 40) + ((*(__p[0] + i) >> 3) & 0x1FFFFFF8)) >> *(__p[0] + i)))
                    {
                      v57 = sub_24BCB9024((a1 + 13), v77 + v48);
                      if (*v57 == *(__p[0] + i) || (v58 = sub_24BCB9024((a1 + 13), v77 + v48), v59 = sub_24BCB9024((a1 + 13), v58), v60 = sub_24BCB9024((a1 + 13), (__p[0] + i)), *(v59 + 16) == *(sub_24BCB9024((a1 + 13), v60) + 16)))
                      {
                        v61 = (a1[4] + 16 * a3[4]);
                        v63 = *v61;
                        v62 = v61[1];
                        if (v62)
                        {
                          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
                          sub_24BC9EC78(v62);
                        }

                        v49 |= *(*(v63 + 40) + ((*(v77 + v48) >> 3) & 0x1FFFFFF8)) >> *(v77 + v48);
                      }
                    }
                  }
                }

                ++v48;
              }

              while (v48 != 3);
              v37 = v72;
              v36 = v69;
              if ((v49 & 1) == 0)
              {
                break;
              }
            }
          }
        }
      }

      v34 = v83;
      v35 = v84;
      v38 = (v84 - v83) >> 5;
      v39 = ++v40;
      if (v38 <= v40)
      {
        goto LABEL_54;
      }
    }

    *a5 = *(v41 + 6);
    *a6 = *(v42 + 6);
    v64 = 1;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if ((v64 & 1) == 0)
  {
LABEL_64:
    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v86[0])
  {
    v86[1] = v86[0];
    operator delete(v86[0]);
  }

  return v65;
}

void sub_24BD9B968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v27 = *(v25 - 112);
  if (v27)
  {
    *(v25 - 104) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD9B9DC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BD9C214(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BD9BA44(uint64_t a1, uint64_t *a2, void *a3, unsigned int *a4, _DWORD *a5, _DWORD *a6, _BYTE *a7, void *a8, void *a9)
{
  v54 = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  memset(v51, 0, sizeof(v51));
  sub_24BD94C40(v53, a5);
  sub_24BD94C40(v51, a6);
  v16 = *(a1 + 152);
  v15 = *(a1 + 160);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_24BC8E01C();
  }

  *(4 * *a5) = 1;
  *(4 * *a6) = 2;
  while (*(&v54 + 1))
  {
    LODWORD(v49[0]) = *(*(*(&v53[0] + 1) + ((v54 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v54 & 0x3FF));
    *&v54 = v54 + 1;
    --*(&v54 + 1);
    if (v54 >= 0x800)
    {
      operator delete(**(&v53[0] + 1));
      *(&v53[0] + 1) += 8;
      *&v54 = v54 - 1024;
    }

    v17 = *sub_24BCB9038(a1 + 104, v49);
    LODWORD(__p[0]) = v17;
    do
    {
      LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
      if (!sub_24BD93D50(a1, __p, a4 + 1, a4 + 2))
      {
        v18 = sub_24BCB9024(a1 + 104, __p);
        v50 = *(sub_24BCB9024(a1 + 104, v18) + 16);
        if (!*(4 * v50))
        {
          sub_24BD94C40(v53, &v50);
          *(4 * v50) = 1;
        }
      }
    }

    while (LODWORD(__p[0]) != v17);
    v19 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
LABEL_16:
      LODWORD(v49[0]) = *(*(*(&v51[0] + 1) + ((v52 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v52 & 0x3FF));
      *&v52 = v52 + 1;
      *(&v52 + 1) = v19 - 1;
      if (v52 >= 0x800)
      {
        operator delete(**(&v51[0] + 1));
        *(&v51[0] + 1) += 8;
        *&v52 = v52 - 1024;
      }

      v20 = *sub_24BCB9038(a1 + 104, v49);
      LODWORD(__p[0]) = v20;
      do
      {
        LODWORD(__p[0]) = *(sub_24BCB9024(a1 + 104, __p) + 8);
        if (!sub_24BD93D50(a1, __p, a4 + 1, a4 + 2))
        {
          v21 = sub_24BCB9024(a1 + 104, __p);
          v50 = *(sub_24BCB9024(a1 + 104, v21) + 16);
          if (!*(4 * v50))
          {
            sub_24BD94C40(v51, &v50);
            *(4 * v50) = 2;
          }
        }
      }

      while (LODWORD(__p[0]) != v20);
    }
  }

  v19 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    goto LABEL_16;
  }

  v22 = a8;
  if (*a7 == 1 && a4[4] != -1)
  {
    sub_24BCB7458(v49, 3uLL);
    v23 = (*(a1 + 160) - *(a1 + 152)) >> 2;
    LOBYTE(v50) = 0;
    sub_24BC9FEFC(__p, v23);
    v25 = *(a1 + 152);
    v24 = *(a1 + 160);
    if (v24 != v25)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(__p[0] + (v26 >> 6));
        if ((v28 & (1 << v26)) == 0)
        {
          *(__p[0] + (v26 >> 6)) = v28 | (1 << v26);
          if (*(4 * v26))
          {
            v50 = v27;
            sub_24BCD573C(a1, &v50, v49);
            for (i = 0; i != 12; i += 4)
            {
              v30 = sub_24BCB9024(a1 + 104, (v49[0] + i));
              v31 = sub_24BC9ECE4(a1, *(a1 + 180), *v30);
              if ((*v31 & v32) == 0)
              {
                v33 = (*(a1 + 32) + 16 * a4[4]);
                v35 = *v33;
                v34 = v33[1];
                if (v34)
                {
                  atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v34);
                }

                if ((*(*(v35 + 40) + ((*(v49[0] + i) >> 3) & 0x1FFFFFF8)) >> *(v49[0] + i)))
                {
                  v36 = sub_24BCB9024(a1 + 104, (v49[0] + i));
                  v37 = *(sub_24BCB9024(a1 + 104, v36) + 16);
                  v38 = *(4 * v37);
                  if (v38)
                  {
                    v39 = *(4 * v26);
                    if (v38 != v39)
                    {
                      if (*(*a3 + v37) == 2)
                      {
                        *(4 * v26) = v38;
                      }

                      else
                      {
                        *(4 * v37) = v39;
                        *(__p[0] + ((v37 >> 3) & 0x1FFFFFF8)) |= 1 << v37;
                      }
                    }
                  }
                }
              }
            }

            v25 = *(a1 + 152);
            v24 = *(a1 + 160);
          }
        }

        v26 = ++v27;
      }

      while (v27 < ((v24 - v25) >> 2));
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v22 = a8;
    if (v49[0])
    {
      v49[1] = v49[0];
      operator delete(v49[0]);
    }
  }

  v22[1] = *v22;
  a9[1] = *a9;
  v40 = *a2;
  if (a2[1] != *a2)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = *(4 * *(v40 + v41));
      v44 = a9;
      if (v43 != 2)
      {
        v44 = v22;
        if (v43 == 1)
        {
          v44 = v22;
        }
      }

      sub_24BCB4670(v44, (v40 + v41));
      ++v42;
      v40 = *a2;
      v41 += 4;
    }

    while (v42 < (a2[1] - *a2) >> 2);
    operator delete(0);
  }

  sub_24BCA102C(v51);
  sub_24BCA102C(v53);
  return 1;
}

void sub_24BD9BF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v25)
  {
    operator delete(v25);
  }

  sub_24BCA102C(&a19);
  sub_24BCA102C(&a25);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BD9BFE0(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_24BD9C214(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_24BCA3670(a1, v7);
  }

  v8 = 32 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 4) = *(a2 + 4);
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 16) = *(a2 + 16);
  v13 = 32 * v2 + 32;
  sub_24BD9A4C8(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BD9C320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD9C358(uint64_t a1)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *a1 = 1;
  sub_24BC836D4((a1 + 8), "usdz");
  *(a1 + 56) = 0;
  v4[0] = &unk_285F96310;
  v4[3] = v4;
  sub_24BDAE36C(v4, (a1 + 32));
  sub_24BD2A214(v4);
  v2 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BD9C404(const std::error_code *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = 0;
  sub_24BC848F0(&v4);
  sub_24BD6A950(a1);
}

void sub_24BD9DBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, ...)
{
  va_start(va, a4);
  sub_24BC9F18C((v4 + 8), LOBYTE(STACK[0x520]));
  sub_24BC9F18C(&STACK[0x5A8], LOBYTE(STACK[0x5A0]));
  v7 = (v5 - 120);
  v8 = -64;
  do
  {
    sub_24BC9F18C(v7, *(v7 - 8));
    v7 -= 4;
    v8 += 32;
  }

  while (v8);
  sub_24BC9F18C(&STACK[0x568], LOBYTE(STACK[0x560]));
  sub_24BC84B94(&STACK[0x5E0]);
  sub_24BC9F18C(va, a4);
  _Unwind_Resume(a1);
}

void sub_24BD9E348(uint64_t a1, void *a2)
{
  v118[0] = 0;
  v119 = 0;
  sub_24BC9C7E0(a2, v118);
  if (v118[0] == 1)
  {
    v3 = sub_24BCB0080(v119, "high_mesh_topology");
    if (v119 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v118, "high_mesh_topology");
      LOBYTE(v115) = 0;
      v116 = 0;
      v5 = sub_24BCB01B0(v4, &v115);
      sub_24BC9F18C(&v116, v115);
      if ((v5 & 1) == 0)
      {
        sub_24BC848F0(&v115);
        *(v118 + 8 * *(v117 - 24) + 272) = 2;
        sub_24BC9C8EC(v118, "high_mesh_topology");
        sub_24BC9BD14(&v117);
      }
    }

    if (v118[0] == 1)
    {
      v6 = sub_24BCB0080(v119, "high_mesh_geometry");
      if (v119 + 8 != v6)
      {
        v7 = sub_24BC9C8EC(v118, "high_mesh_geometry");
        LOBYTE(v115) = 0;
        v116 = 0;
        v8 = sub_24BCB01B0(v7, &v115);
        sub_24BC9F18C(&v116, v115);
        if ((v8 & 1) == 0)
        {
          sub_24BC848F0(&v115);
          *(v118 + 8 * *(v117 - 24) + 272) = 2;
          sub_24BC9C8EC(v118, "high_mesh_geometry");
          sub_24BC9BD14(&v117);
        }
      }

      if (v118[0] == 1)
      {
        v9 = sub_24BCB0080(v119, "low_mesh_topology");
        if (v119 + 8 != v9)
        {
          v10 = sub_24BC9C8EC(v118, "low_mesh_topology");
          LOBYTE(v115) = 0;
          v116 = 0;
          v11 = sub_24BCB01B0(v10, &v115);
          sub_24BC9F18C(&v116, v115);
          if ((v11 & 1) == 0)
          {
            sub_24BC848F0(&v115);
            *(v118 + 8 * *(v117 - 24) + 272) = 2;
            sub_24BC9C8EC(v118, "low_mesh_topology");
            sub_24BC9BD14(&v117);
          }
        }

        if (v118[0] == 1)
        {
          v12 = sub_24BCB0080(v119, "low_mesh_geometry");
          if (v119 + 8 != v12)
          {
            v13 = sub_24BC9C8EC(v118, "low_mesh_geometry");
            LOBYTE(v115) = 0;
            v116 = 0;
            v14 = sub_24BCB01B0(v13, &v115);
            sub_24BC9F18C(&v116, v115);
            if ((v14 & 1) == 0)
            {
              sub_24BC848F0(&v115);
              *(v118 + 8 * *(v117 - 24) + 272) = 2;
              sub_24BC9C8EC(v118, "low_mesh_geometry");
              sub_24BC9BD14(&v117);
            }
          }

          if (v118[0] == 1)
          {
            v15 = sub_24BCB0080(v119, "load_high_time");
            if (v119 + 8 != v15)
            {
              v16 = sub_24BC9C8EC(v118, "load_high_time");
              LOBYTE(v115) = 0;
              v116 = 0;
              v17 = sub_24BCB01B0(v16, &v115);
              sub_24BC9F18C(&v116, v115);
              if ((v17 & 1) == 0)
              {
                v18 = sub_24BC9C8EC(v118, "load_high_time");
                v115 = 0;
                sub_24BCB0BDC(v18, &v115);
                *(a1 + 16) = v115;
                sub_24BC836D4(&v115, "load_high_time");
                sub_24BC9CAB4(v118, &v115);
                if (SHIBYTE(v117) < 0)
                {
                  operator delete(v115);
                }
              }
            }

            if (v118[0] == 1)
            {
              v19 = sub_24BCB0080(v119, "load_low_time");
              if (v119 + 8 != v19)
              {
                v20 = sub_24BC9C8EC(v118, "load_low_time");
                LOBYTE(v115) = 0;
                v116 = 0;
                v21 = sub_24BCB01B0(v20, &v115);
                sub_24BC9F18C(&v116, v115);
                if ((v21 & 1) == 0)
                {
                  v22 = sub_24BC9C8EC(v118, "load_low_time");
                  v115 = 0;
                  sub_24BCB0BDC(v22, &v115);
                  *(a1 + 128) = v115;
                  sub_24BC836D4(&v115, "load_low_time");
                  sub_24BC9CAB4(v118, &v115);
                  if (SHIBYTE(v117) < 0)
                  {
                    operator delete(v115);
                  }
                }
              }

              if (v118[0] == 1)
              {
                v23 = sub_24BCB0080(v119, "simplify_time");
                if (v119 + 8 != v23)
                {
                  v24 = sub_24BC9C8EC(v118, "simplify_time");
                  LOBYTE(v115) = 0;
                  v116 = 0;
                  v25 = sub_24BCB01B0(v24, &v115);
                  sub_24BC9F18C(&v116, v115);
                  if ((v25 & 1) == 0)
                  {
                    v26 = sub_24BC9C8EC(v118, "simplify_time");
                    v115 = 0;
                    sub_24BCB0BDC(v26, &v115);
                    *(a1 + 136) = v115;
                    sub_24BC836D4(&v115, "simplify_time");
                    sub_24BC9CAB4(v118, &v115);
                    if (SHIBYTE(v117) < 0)
                    {
                      operator delete(v115);
                    }
                  }
                }

                if (v118[0] == 1)
                {
                  v27 = sub_24BCB0080(v119, "chart_time");
                  if (v119 + 8 != v27)
                  {
                    v28 = sub_24BC9C8EC(v118, "chart_time");
                    LOBYTE(v115) = 0;
                    v116 = 0;
                    v29 = sub_24BCB01B0(v28, &v115);
                    sub_24BC9F18C(&v116, v115);
                    if ((v29 & 1) == 0)
                    {
                      v30 = sub_24BC9C8EC(v118, "chart_time");
                      v115 = 0;
                      sub_24BCB0BDC(v30, &v115);
                      *(a1 + 240) = v115;
                      sub_24BC836D4(&v115, "chart_time");
                      sub_24BC9CAB4(v118, &v115);
                      if (SHIBYTE(v117) < 0)
                      {
                        operator delete(v115);
                      }
                    }
                  }

                  if (v118[0] == 1)
                  {
                    v31 = sub_24BCB0080(v119, "chart_number");
                    if (v119 + 8 != v31)
                    {
                      v32 = sub_24BC9C8EC(v118, "chart_number");
                      LOBYTE(v115) = 0;
                      v116 = 0;
                      v33 = sub_24BCB01B0(v32, &v115);
                      sub_24BC9F18C(&v116, v115);
                      if ((v33 & 1) == 0)
                      {
                        v34 = sub_24BC9C8EC(v118, "chart_number");
                        v115 = 0;
                        sub_24BDAE90C(v34, &v115);
                        *(a1 + 248) = v115;
                        sub_24BC836D4(&v115, "chart_number");
                        sub_24BC9CAB4(v118, &v115);
                        if (SHIBYTE(v117) < 0)
                        {
                          operator delete(v115);
                        }
                      }
                    }

                    if (v118[0] == 1)
                    {
                      v35 = sub_24BCB0080(v119, "max_stretch_ratio");
                      if (v119 + 8 != v35)
                      {
                        v36 = sub_24BC9C8EC(v118, "max_stretch_ratio");
                        LOBYTE(v115) = 0;
                        v116 = 0;
                        v37 = sub_24BCB01B0(v36, &v115);
                        sub_24BC9F18C(&v116, v115);
                        if ((v37 & 1) == 0)
                        {
                          v38 = sub_24BC9C8EC(v118, "max_stretch_ratio");
                          LODWORD(v115) = 0;
                          sub_24BCB0594(v38, &v115, v39);
                          *(a1 + 256) = v115;
                          sub_24BC836D4(&v115, "max_stretch_ratio");
                          sub_24BC9CAB4(v118, &v115);
                          if (SHIBYTE(v117) < 0)
                          {
                            operator delete(v115);
                          }
                        }
                      }

                      if (v118[0] == 1)
                      {
                        v40 = sub_24BCB0080(v119, "avg_stretch_ratio");
                        if (v119 + 8 != v40)
                        {
                          v41 = sub_24BC9C8EC(v118, "avg_stretch_ratio");
                          LOBYTE(v115) = 0;
                          v116 = 0;
                          v42 = sub_24BCB01B0(v41, &v115);
                          sub_24BC9F18C(&v116, v115);
                          if ((v42 & 1) == 0)
                          {
                            v43 = sub_24BC9C8EC(v118, "avg_stretch_ratio");
                            LODWORD(v115) = 0;
                            sub_24BCB0594(v43, &v115, v44);
                            *(a1 + 260) = v115;
                            sub_24BC836D4(&v115, "avg_stretch_ratio");
                            sub_24BC9CAB4(v118, &v115);
                            if (SHIBYTE(v117) < 0)
                            {
                              operator delete(v115);
                            }
                          }
                        }

                        if (v118[0] == 1)
                        {
                          v45 = sub_24BCB0080(v119, "self_intersect_ratio");
                          if (v119 + 8 != v45)
                          {
                            v46 = sub_24BC9C8EC(v118, "self_intersect_ratio");
                            LOBYTE(v115) = 0;
                            v116 = 0;
                            v47 = sub_24BCB01B0(v46, &v115);
                            sub_24BC9F18C(&v116, v115);
                            if ((v47 & 1) == 0)
                            {
                              v48 = sub_24BC9C8EC(v118, "self_intersect_ratio");
                              LODWORD(v115) = 0;
                              sub_24BCB0594(v48, &v115, v49);
                              *(a1 + 264) = v115;
                              sub_24BC836D4(&v115, "self_intersect_ratio");
                              sub_24BC9CAB4(v118, &v115);
                              if (SHIBYTE(v117) < 0)
                              {
                                operator delete(v115);
                              }
                            }
                          }

                          if (v118[0] == 1)
                          {
                            v50 = sub_24BCB0080(v119, "pack_time");
                            if (v119 + 8 != v50)
                            {
                              v51 = sub_24BC9C8EC(v118, "pack_time");
                              LOBYTE(v115) = 0;
                              v116 = 0;
                              v52 = sub_24BCB01B0(v51, &v115);
                              sub_24BC9F18C(&v116, v115);
                              if ((v52 & 1) == 0)
                              {
                                v53 = sub_24BC9C8EC(v118, "pack_time");
                                v115 = 0;
                                sub_24BCB0BDC(v53, &v115);
                                *(a1 + 272) = v115;
                                sub_24BC836D4(&v115, "pack_time");
                                sub_24BC9CAB4(v118, &v115);
                                if (SHIBYTE(v117) < 0)
                                {
                                  operator delete(v115);
                                }
                              }
                            }

                            if (v118[0] == 1)
                            {
                              v54 = sub_24BCB0080(v119, "pack_img_number");
                              if (v119 + 8 != v54)
                              {
                                v55 = sub_24BC9C8EC(v118, "pack_img_number");
                                LOBYTE(v115) = 0;
                                v116 = 0;
                                v56 = sub_24BCB01B0(v55, &v115);
                                sub_24BC9F18C(&v116, v115);
                                if ((v56 & 1) == 0)
                                {
                                  v57 = sub_24BC9C8EC(v118, "pack_img_number");
                                  v115 = 0;
                                  sub_24BDAE90C(v57, &v115);
                                  *(a1 + 280) = v115;
                                  sub_24BC836D4(&v115, "pack_img_number");
                                  sub_24BC9CAB4(v118, &v115);
                                  if (SHIBYTE(v117) < 0)
                                  {
                                    operator delete(v115);
                                  }
                                }
                              }

                              if (v118[0] == 1)
                              {
                                v58 = sub_24BCB0080(v119, "mesh_repair");
                                if (v119 + 8 != v58)
                                {
                                  v59 = sub_24BC9C8EC(v118, "mesh_repair");
                                  LOBYTE(v115) = 0;
                                  v116 = 0;
                                  v60 = sub_24BCB01B0(v59, &v115);
                                  sub_24BC9F18C(&v116, v115);
                                  if ((v60 & 1) == 0)
                                  {
                                    v61 = sub_24BC9C8EC(v118, "mesh_repair");
                                    v115 = 0;
                                    sub_24BDAE90C(v61, &v115);
                                    *(a1 + 288) = v115;
                                    sub_24BC836D4(&v115, "mesh_repair");
                                    sub_24BC9CAB4(v118, &v115);
                                    if (SHIBYTE(v117) < 0)
                                    {
                                      operator delete(v115);
                                    }
                                  }
                                }

                                if (v118[0] == 1)
                                {
                                  v62 = sub_24BCB0080(v119, "mesh_processing_time");
                                  if (v119 + 8 != v62)
                                  {
                                    v63 = sub_24BC9C8EC(v118, "mesh_processing_time");
                                    LOBYTE(v115) = 0;
                                    v116 = 0;
                                    v64 = sub_24BCB01B0(v63, &v115);
                                    sub_24BC9F18C(&v116, v115);
                                    if ((v64 & 1) == 0)
                                    {
                                      v65 = sub_24BC9C8EC(v118, "mesh_processing_time");
                                      v115 = 0;
                                      sub_24BCB0BDC(v65, &v115);
                                      *(a1 + 296) = v115;
                                      sub_24BC836D4(&v115, "mesh_processing_time");
                                      sub_24BC9CAB4(v118, &v115);
                                      if (SHIBYTE(v117) < 0)
                                      {
                                        operator delete(v115);
                                      }
                                    }
                                  }

                                  if (v118[0] == 1)
                                  {
                                    v66 = sub_24BCB0080(v119, "rasterize_time");
                                    if (v119 + 8 != v66)
                                    {
                                      v67 = sub_24BC9C8EC(v118, "rasterize_time");
                                      LOBYTE(v115) = 0;
                                      v116 = 0;
                                      v68 = sub_24BCB01B0(v67, &v115);
                                      sub_24BC9F18C(&v116, v115);
                                      if ((v68 & 1) == 0)
                                      {
                                        v69 = sub_24BC9C8EC(v118, "rasterize_time");
                                        v115 = 0;
                                        sub_24BCB0BDC(v69, &v115);
                                        *(a1 + 304) = v115;
                                        sub_24BC836D4(&v115, "rasterize_time");
                                        sub_24BC9CAB4(v118, &v115);
                                        if (SHIBYTE(v117) < 0)
                                        {
                                          operator delete(v115);
                                        }
                                      }
                                    }

                                    if (v118[0] == 1)
                                    {
                                      v70 = sub_24BCB0080(v119, "build_ray_time");
                                      if (v119 + 8 != v70)
                                      {
                                        v71 = sub_24BC9C8EC(v118, "build_ray_time");
                                        LOBYTE(v115) = 0;
                                        v116 = 0;
                                        v72 = sub_24BCB01B0(v71, &v115);
                                        sub_24BC9F18C(&v116, v115);
                                        if ((v72 & 1) == 0)
                                        {
                                          v73 = sub_24BC9C8EC(v118, "build_ray_time");
                                          v115 = 0;
                                          sub_24BCB0BDC(v73, &v115);
                                          *(a1 + 312) = v115;
                                          sub_24BC836D4(&v115, "build_ray_time");
                                          sub_24BC9CAB4(v118, &v115);
                                          if (SHIBYTE(v117) < 0)
                                          {
                                            operator delete(v115);
                                          }
                                        }
                                      }

                                      if (v118[0] == 1)
                                      {
                                        v74 = sub_24BCB0080(v119, "retrieve_attribute_time");
                                        if (v119 + 8 != v74)
                                        {
                                          v75 = sub_24BC9C8EC(v118, "retrieve_attribute_time");
                                          LOBYTE(v115) = 0;
                                          v116 = 0;
                                          v76 = sub_24BCB01B0(v75, &v115);
                                          sub_24BC9F18C(&v116, v115);
                                          if ((v76 & 1) == 0)
                                          {
                                            v77 = sub_24BC9C8EC(v118, "retrieve_attribute_time");
                                            v115 = 0;
                                            sub_24BCB0BDC(v77, &v115);
                                            *(a1 + 320) = v115;
                                            sub_24BC836D4(&v115, "retrieve_attribute_time");
                                            sub_24BC9CAB4(v118, &v115);
                                            if (SHIBYTE(v117) < 0)
                                            {
                                              operator delete(v115);
                                            }
                                          }
                                        }

                                        if (v118[0] == 1)
                                        {
                                          v78 = sub_24BCB0080(v119, "intersected_number_of_rays");
                                          if (v119 + 8 != v78)
                                          {
                                            v79 = sub_24BC9C8EC(v118, "intersected_number_of_rays");
                                            LOBYTE(v115) = 0;
                                            v116 = 0;
                                            v80 = sub_24BCB01B0(v79, &v115);
                                            sub_24BC9F18C(&v116, v115);
                                            if ((v80 & 1) == 0)
                                            {
                                              v81 = sub_24BC9C8EC(v118, "intersected_number_of_rays");
                                              v115 = 0;
                                              sub_24BDAE90C(v81, &v115);
                                              *(a1 + 328) = v115;
                                              sub_24BC836D4(&v115, "intersected_number_of_rays");
                                              sub_24BC9CAB4(v118, &v115);
                                              if (SHIBYTE(v117) < 0)
                                              {
                                                operator delete(v115);
                                              }
                                            }
                                          }

                                          if (v118[0] == 1)
                                          {
                                            v82 = sub_24BCB0080(v119, "total_number_of_rays");
                                            if (v119 + 8 != v82)
                                            {
                                              v83 = sub_24BC9C8EC(v118, "total_number_of_rays");
                                              LOBYTE(v115) = 0;
                                              v116 = 0;
                                              v84 = sub_24BCB01B0(v83, &v115);
                                              sub_24BC9F18C(&v116, v115);
                                              if ((v84 & 1) == 0)
                                              {
                                                v85 = sub_24BC9C8EC(v118, "total_number_of_rays");
                                                v115 = 0;
                                                sub_24BDAE90C(v85, &v115);
                                                *(a1 + 336) = v115;
                                                sub_24BC836D4(&v115, "total_number_of_rays");
                                                sub_24BC9CAB4(v118, &v115);
                                                if (SHIBYTE(v117) < 0)
                                                {
                                                  operator delete(v115);
                                                }
                                              }
                                            }

                                            if (v118[0] == 1)
                                            {
                                              v86 = sub_24BCB0080(v119, "intersected_rate");
                                              if (v119 + 8 != v86)
                                              {
                                                v87 = sub_24BC9C8EC(v118, "intersected_rate");
                                                LOBYTE(v115) = 0;
                                                v116 = 0;
                                                v88 = sub_24BCB01B0(v87, &v115);
                                                sub_24BC9F18C(&v116, v115);
                                                if ((v88 & 1) == 0)
                                                {
                                                  v89 = sub_24BC9C8EC(v118, "intersected_rate");
                                                  LODWORD(v115) = 0;
                                                  sub_24BCB0594(v89, &v115, v90);
                                                  *(a1 + 344) = v115;
                                                  sub_24BC836D4(&v115, "intersected_rate");
                                                  sub_24BC9CAB4(v118, &v115);
                                                  if (SHIBYTE(v117) < 0)
                                                  {
                                                    operator delete(v115);
                                                  }
                                                }
                                              }

                                              if (v118[0] == 1)
                                              {
                                                v91 = sub_24BCB0080(v119, "min_disp");
                                                if (v119 + 8 != v91)
                                                {
                                                  v92 = sub_24BC9C8EC(v118, "min_disp");
                                                  LOBYTE(v115) = 0;
                                                  v116 = 0;
                                                  v93 = sub_24BCB01B0(v92, &v115);
                                                  sub_24BC9F18C(&v116, v115);
                                                  if ((v93 & 1) == 0)
                                                  {
                                                    v94 = sub_24BC9C8EC(v118, "min_disp");
                                                    v115 = 0;
                                                    sub_24BCB0BDC(v94, &v115);
                                                    *(a1 + 352) = v115;
                                                    sub_24BC836D4(&v115, "min_disp");
                                                    sub_24BC9CAB4(v118, &v115);
                                                    if (SHIBYTE(v117) < 0)
                                                    {
                                                      operator delete(v115);
                                                    }
                                                  }
                                                }

                                                if (v118[0] == 1)
                                                {
                                                  v95 = sub_24BCB0080(v119, "max_disp");
                                                  if (v119 + 8 != v95)
                                                  {
                                                    v96 = sub_24BC9C8EC(v118, "max_disp");
                                                    LOBYTE(v115) = 0;
                                                    v116 = 0;
                                                    v97 = sub_24BCB01B0(v96, &v115);
                                                    sub_24BC9F18C(&v116, v115);
                                                    if ((v97 & 1) == 0)
                                                    {
                                                      v98 = sub_24BC9C8EC(v118, "max_disp");
                                                      v115 = 0;
                                                      sub_24BCB0BDC(v98, &v115);
                                                      *(a1 + 360) = v115;
                                                      sub_24BC836D4(&v115, "max_disp");
                                                      sub_24BC9CAB4(v118, &v115);
                                                      if (SHIBYTE(v117) < 0)
                                                      {
                                                        operator delete(v115);
                                                      }
                                                    }
                                                  }

                                                  if (v118[0] == 1)
                                                  {
                                                    v99 = sub_24BCB0080(v119, "imaging_time");
                                                    if (v119 + 8 != v99)
                                                    {
                                                      v100 = sub_24BC9C8EC(v118, "imaging_time");
                                                      LOBYTE(v115) = 0;
                                                      v116 = 0;
                                                      v101 = sub_24BCB01B0(v100, &v115);
                                                      sub_24BC9F18C(&v116, v115);
                                                      if ((v101 & 1) == 0)
                                                      {
                                                        v102 = sub_24BC9C8EC(v118, "imaging_time");
                                                        v115 = 0;
                                                        sub_24BCB0BDC(v102, &v115);
                                                        *(a1 + 368) = v115;
                                                        sub_24BC836D4(&v115, "imaging_time");
                                                        sub_24BC9CAB4(v118, &v115);
                                                        if (SHIBYTE(v117) < 0)
                                                        {
                                                          operator delete(v115);
                                                        }
                                                      }
                                                    }

                                                    if (v118[0] == 1)
                                                    {
                                                      v103 = sub_24BCB0080(v119, "generate_ao_time");
                                                      if (v119 + 8 != v103)
                                                      {
                                                        v104 = sub_24BC9C8EC(v118, "generate_ao_time");
                                                        LOBYTE(v115) = 0;
                                                        v116 = 0;
                                                        v105 = sub_24BCB01B0(v104, &v115);
                                                        sub_24BC9F18C(&v116, v115);
                                                        if ((v105 & 1) == 0)
                                                        {
                                                          v106 = sub_24BC9C8EC(v118, "generate_ao_time");
                                                          v115 = 0;
                                                          sub_24BCB0BDC(v106, &v115);
                                                          *(a1 + 376) = v115;
                                                          sub_24BC836D4(&v115, "generate_ao_time");
                                                          sub_24BC9CAB4(v118, &v115);
                                                          if (SHIBYTE(v117) < 0)
                                                          {
                                                            operator delete(v115);
                                                          }
                                                        }
                                                      }

                                                      if (v118[0] == 1)
                                                      {
                                                        v107 = sub_24BCB0080(v119, "generate_maps_time");
                                                        if (v119 + 8 != v107)
                                                        {
                                                          v108 = sub_24BC9C8EC(v118, "generate_maps_time");
                                                          LOBYTE(v115) = 0;
                                                          v116 = 0;
                                                          v109 = sub_24BCB01B0(v108, &v115);
                                                          sub_24BC9F18C(&v116, v115);
                                                          if ((v109 & 1) == 0)
                                                          {
                                                            v110 = sub_24BC9C8EC(v118, "generate_maps_time");
                                                            v115 = 0;
                                                            sub_24BCB0BDC(v110, &v115);
                                                            *(a1 + 384) = v115;
                                                            sub_24BC836D4(&v115, "generate_maps_time");
                                                            sub_24BC9CAB4(v118, &v115);
                                                            if (SHIBYTE(v117) < 0)
                                                            {
                                                              operator delete(v115);
                                                            }
                                                          }
                                                        }

                                                        if (v118[0] == 1)
                                                        {
                                                          v111 = sub_24BCB0080(v119, "save_time");
                                                          if (v119 + 8 != v111)
                                                          {
                                                            v112 = sub_24BC9C8EC(v118, "save_time");
                                                            LOBYTE(v115) = 0;
                                                            v116 = 0;
                                                            v113 = sub_24BCB01B0(v112, &v115);
                                                            sub_24BC9F18C(&v116, v115);
                                                            if ((v113 & 1) == 0)
                                                            {
                                                              v114 = sub_24BC9C8EC(v118, "save_time");
                                                              v115 = 0;
                                                              sub_24BCB0BDC(v114, &v115);
                                                              *(a1 + 392) = v115;
                                                              sub_24BC836D4(&v115, "save_time");
                                                              sub_24BC9CAB4(v118, &v115);
                                                              if (SHIBYTE(v117) < 0)
                                                              {
                                                                operator delete(v115);
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&v115);
  *(v118 + 8 * *(v117 - 24) + 272) = 2;
  sub_24BC9BD14(&v117);
}

void sub_24BDA005C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v20 + 8), *(v21 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BD9EDA4);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA020C(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BD9C404(a1);
}

uint64_t sub_24BDA0360(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BD9E348(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDA04CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDA0548()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE8B0();
}

void sub_24BDA0870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_24BC9F18C((v30 + 8), a10);
  v34 = (v32 - 96);
  v35 = -96;
  do
  {
    sub_24BC9F18C(v34, *(v34 - 8));
    v34 -= 4;
    v35 += 32;
  }

  while (v35);
  v36 = &a19;
  v37 = -64;
  do
  {
    sub_24BC9F18C(v36, *(v36 - 8));
    v36 -= 4;
    v37 += 32;
  }

  while (v37);
  v38 = &a27;
  v39 = -64;
  do
  {
    sub_24BC9F18C(v38, *(v38 - 8));
    v38 -= 4;
    v39 += 32;
  }

  while (v39);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a30 + i + 40), *(&a30 + i + 32));
  }

  sub_24BC9F18C((v31 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BDA09A8(_DWORD *a1, void *a2)
{
  v19[0] = 0;
  v20 = 0;
  sub_24BC9C7E0(a2, v19);
  if (v19[0] == 1)
  {
    v3 = sub_24BCB0080(v20, "strength");
    if (v20 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v19, "strength");
      LOBYTE(__p) = 0;
      v17 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v17, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v19, "strength");
        LODWORD(__p) = 0;
        sub_24BCB0594(v6, &__p, v7);
        *a1 = __p;
        sub_24BC836D4(&__p, "strength");
        sub_24BC9CAB4(v19, &__p);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v19[0] == 1)
    {
      v8 = sub_24BCB0080(v20, "low_obj_face_min");
      if (v20 + 8 != v8)
      {
        v9 = sub_24BC9C8EC(v19, "low_obj_face_min");
        LOBYTE(__p) = 0;
        v17 = 0;
        v10 = sub_24BCB01B0(v9, &__p);
        sub_24BC9F18C(&v17, __p);
        if ((v10 & 1) == 0)
        {
          v11 = sub_24BC9C8EC(v19, "low_obj_face_min");
          LODWORD(__p) = 0;
          sub_24BCB07E0(v11, &__p);
          a1[1] = __p;
          sub_24BC836D4(&__p, "low_obj_face_min");
          sub_24BC9CAB4(v19, &__p);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v19[0] == 1)
      {
        v12 = sub_24BCB0080(v20, "low_obj_face_max");
        if (v20 + 8 != v12)
        {
          v13 = sub_24BC9C8EC(v19, "low_obj_face_max");
          LOBYTE(__p) = 0;
          v17 = 0;
          v14 = sub_24BCB01B0(v13, &__p);
          sub_24BC9F18C(&v17, __p);
          if ((v14 & 1) == 0)
          {
            v15 = sub_24BC9C8EC(v19, "low_obj_face_max");
            LODWORD(__p) = 0;
            sub_24BCB07E0(v15, &__p);
            a1[2] = __p;
            sub_24BC836D4(&__p, "low_obj_face_max");
            sub_24BC9CAB4(v19, &__p);
            if (SHIBYTE(v18) < 0)
            {
              operator delete(__p);
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v19 + 8 * *(v18 - 24) + 272) = 2;
  sub_24BC9BD14(&v18);
}

void sub_24BDA0E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA0E00);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA0EB0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAEA6C();
}

void sub_24BDA1228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_24BC9F18C((v35 + 8), a15);
  v39 = (v37 - 96);
  v40 = -96;
  do
  {
    sub_24BC9F18C(v39, *(v39 - 8));
    v39 -= 4;
    v40 += 32;
  }

  while (v40);
  v41 = &a24;
  v42 = -64;
  do
  {
    sub_24BC9F18C(v41, *(v41 - 8));
    v41 -= 4;
    v42 += 32;
  }

  while (v42);
  v43 = &a32;
  v44 = -64;
  do
  {
    sub_24BC9F18C(v43, *(v43 - 8));
    v43 -= 4;
    v44 += 32;
  }

  while (v44);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a35 + i + 40), *(&a35 + i + 32));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v36 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_24BDA139C(_DWORD *a1, void *a2)
{
  v16[0] = 0;
  v17 = 0;
  sub_24BC9C7E0(a2, v16);
  v3 = sub_24BC9C8EC(v16, "method");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v16, "method");
    sub_24BDAEAC8(v5, &__p);
    *a1 = sub_24BD564A0(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "method");
    sub_24BC9CAB4(v16, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v16[0] == 1)
  {
    v6 = sub_24BCB0080(v17, "min_chart_number");
    if (v17 + 8 != v6)
    {
      v7 = sub_24BC9C8EC(v16, "min_chart_number");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v8 = sub_24BCB01B0(v7, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v8 & 1) == 0)
      {
        v9 = sub_24BC9C8EC(v16, "min_chart_number");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB07E0(v9, &__p);
        a1[1] = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "min_chart_number");
        sub_24BC9CAB4(v16, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v16[0] == 1)
    {
      v10 = sub_24BCB0080(v17, "max_stretch_ratio");
      if (v17 + 8 != v10)
      {
        v11 = sub_24BC9C8EC(v16, "max_stretch_ratio");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v12 = sub_24BCB01B0(v11, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v12 & 1) == 0)
        {
          v13 = sub_24BC9C8EC(v16, "max_stretch_ratio");
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          sub_24BCB0594(v13, &__p, v14);
          a1[2] = __p.__r_.__value_.__l.__data_;
          sub_24BC836D4(&__p, "max_stretch_ratio");
          sub_24BC9CAB4(v16, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BDA17F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA17D8);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA1890()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAEA6C();
}

void sub_24BDA1B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_24BC9F18C((v27 + 8), a15);
  v31 = (v29 - 96);
  v32 = -64;
  do
  {
    sub_24BC9F18C(v31, *(v31 - 8));
    v31 -= 4;
    v32 += 32;
  }

  while (v32);
  v33 = &a24;
  v34 = -64;
  do
  {
    sub_24BC9F18C(v33, *(v33 - 8));
    v33 -= 4;
    v34 += 32;
  }

  while (v34);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a27 + i + 40), *(&a27 + i + 32));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v28 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_24BDA1CC0(_DWORD *a1, void *a2)
{
  v12[0] = 0;
  v13 = 0;
  sub_24BC9C7E0(a2, v12);
  v3 = sub_24BC9C8EC(v12, "method");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v12, "method");
    sub_24BDAEAC8(v5, &__p);
    *a1 = sub_24BD566C8(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "method");
    sub_24BC9CAB4(v12, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v12[0] == 1)
  {
    v6 = sub_24BCB0080(v13, "gutter");
    if (v13 + 8 != v6)
    {
      v7 = sub_24BC9C8EC(v12, "gutter");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v8 = sub_24BCB01B0(v7, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v8 & 1) == 0)
      {
        v9 = sub_24BC9C8EC(v12, "gutter");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB0594(v9, &__p, v10);
        a1[1] = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "gutter");
        sub_24BC9CAB4(v12, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BDA2064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA2048);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA20F8()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAEC54();
}

void sub_24BDA26B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, unsigned __int8 a27, uint64_t a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BC9F18C((v71 + 8), a27);
  v74 = &STACK[0x290];
  v75 = -192;
  do
  {
    sub_24BC9F18C(v74, *(v74 - 8));
    v74 -= 4;
    v75 += 32;
  }

  while (v75);
  v76 = &a36;
  v77 = -64;
  do
  {
    sub_24BC9F18C(v76, *(v76 - 8));
    v76 -= 4;
    v77 += 32;
  }

  while (v77);
  v78 = &a44;
  v79 = -64;
  do
  {
    sub_24BC9F18C(v78, *(v78 - 8));
    v78 -= 4;
    v79 += 32;
  }

  while (v79);
  v80 = &a52;
  v81 = -64;
  do
  {
    sub_24BC9F18C(v80, *(v80 - 8));
    v80 -= 4;
    v81 += 32;
  }

  while (v81);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v82 = &a60;
  v83 = -64;
  do
  {
    sub_24BC9F18C(v82, *(v82 - 8));
    v82 -= 4;
    v83 += 32;
  }

  while (v83);
  v84 = &a68;
  v85 = -64;
  do
  {
    sub_24BC9F18C(v84, *(v84 - 8));
    v84 -= 4;
    v85 += 32;
  }

  while (v85);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a71 + i + 40), *(&a71 + i + 32));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_24BC9F18C((v72 + 8), a29);
  _Unwind_Resume(a1);
}

void sub_24BDA293C(uint64_t a1, void *a2)
{
  v27[0] = 0;
  v28 = 0;
  sub_24BC9C7E0(a2, v27);
  v3 = sub_24BC9C8EC(v27, "input_tangential_spec");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v27, "input_tangential_spec");
    sub_24BDAEAC8(v5, &__p);
    *a1 = sub_24BD568E8(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "input_tangential_spec");
    sub_24BC9CAB4(v27, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v6 = sub_24BC9C8EC(v27, "tangential_spec");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v7 = sub_24BCB01B0(v6, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v7 & 1) == 0)
  {
    v8 = sub_24BC9C8EC(v27, "tangential_spec");
    sub_24BDAEAC8(v8, &__p);
    *(a1 + 4) = sub_24BD568E8(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "tangential_spec");
    sub_24BC9CAB4(v27, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v27[0] == 1)
  {
    v9 = sub_24BCB0080(v28, "intersect_range");
    if (v28 + 8 != v9)
    {
      v10 = sub_24BC9C8EC(v27, "intersect_range");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v11 = sub_24BCB01B0(v10, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v11 & 1) == 0)
      {
        v12 = sub_24BC9C8EC(v27, "intersect_range");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB0594(v12, &__p, v13);
        *(a1 + 8) = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "intersect_range");
        sub_24BC9CAB4(v27, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v14 = sub_24BC9C8EC(v27, "ao_cull_mode");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v15 = sub_24BCB01B0(v14, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v15 & 1) == 0)
  {
    v16 = sub_24BC9C8EC(v27, "ao_cull_mode");
    sub_24BDAEAC8(v16, &__p);
    *(a1 + 12) = sub_24BD56B1C(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_24BC836D4(&__p, "ao_cull_mode");
    sub_24BC9CAB4(v27, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v27[0] == 1)
  {
    v17 = sub_24BCB0080(v28, "ao_range_absolute_far");
    if (v28 + 8 != v17)
    {
      v18 = sub_24BC9C8EC(v27, "ao_range_absolute_far");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v19 = sub_24BCB01B0(v18, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v19 & 1) == 0)
      {
        v20 = sub_24BC9C8EC(v27, "ao_range_absolute_far");
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        sub_24BCB0594(v20, &__p, v21);
        *(a1 + 16) = __p.__r_.__value_.__l.__data_;
        sub_24BC836D4(&__p, "ao_range_absolute_far");
        sub_24BC9CAB4(v27, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v27[0] == 1)
    {
      v22 = sub_24BCB0080(v28, "ao_weaken_by_gradient_magnitude");
      if (v28 + 8 != v22)
      {
        v23 = sub_24BC9C8EC(v27, "ao_weaken_by_gradient_magnitude");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v24 = sub_24BCB01B0(v23, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v24 & 1) == 0)
        {
          v25 = sub_24BC9C8EC(v27, "ao_weaken_by_gradient_magnitude");
          __p.__r_.__value_.__s.__data_[0] = 0;
          sub_24BCB0940(v25, &__p);
          *(a1 + 20) = __p.__r_.__value_.__s.__data_[0];
          sub_24BC836D4(&__p, "ao_weaken_by_gradient_magnitude");
          sub_24BC9CAB4(v27, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BDA2F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA2F5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA303C()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BD6C038();
}

void sub_24BDA337C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_24BC9F18C((v30 + 8), a10);
  v34 = (v32 - 96);
  v35 = -96;
  do
  {
    sub_24BC9F18C(v34, *(v34 - 8));
    v34 -= 4;
    v35 += 32;
  }

  while (v35);
  v36 = &a19;
  v37 = -64;
  do
  {
    sub_24BC9F18C(v36, *(v36 - 8));
    v36 -= 4;
    v37 += 32;
  }

  while (v37);
  v38 = &a27;
  v39 = -64;
  do
  {
    sub_24BC9F18C(v38, *(v38 - 8));
    v38 -= 4;
    v39 += 32;
  }

  while (v39);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a30 + i + 40), *(&a30 + i + 32));
  }

  sub_24BC9F18C((v31 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BDA34DC(std::string *a1, void *a2)
{
  v16[0] = 0;
  v17 = 0;
  sub_24BC9C7E0(a2, v16);
  v3 = sub_24BC9C8EC(v16, "gpu_ids");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v16, "gpu_ids");
    sub_24BDAEE94(v5, &__p);
    if (&__p != a1)
    {
      sub_24BD07E64(a1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
    }

    sub_24BC836D4(&v14, "gpu_ids");
    sub_24BC9CAB4(v16, &v14.__locale_);
    if (v15 < 0)
    {
      operator delete(v14.__locale_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v6 = sub_24BC9C8EC(v16, "metal_lib_path");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  v7 = sub_24BCB01B0(v6, &__p);
  sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if ((v7 & 1) == 0)
  {
    v8 = sub_24BC9C8EC(v16, "metal_lib_path");
    sub_24BDAEAC8(v8, &__p);
    sub_24BD82B5C(a1 + 1, &__p);
    sub_24BC836D4(&v14, "metal_lib_path");
    sub_24BC9CAB4(v16, &v14.__locale_);
    if (v15 < 0)
    {
      operator delete(v14.__locale_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v16[0] == 1)
  {
    v9 = sub_24BCB0080(v17, "runtime_metal_lib");
    if (v17 + 8 != v9)
    {
      v10 = sub_24BC9C8EC(v16, "runtime_metal_lib");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v11 = sub_24BCB01B0(v10, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v11 & 1) == 0)
      {
        v12 = sub_24BC9C8EC(v16, "runtime_metal_lib");
        __p.__r_.__value_.__s.__data_[0] = 0;
        sub_24BCB0940(v12, &__p);
        a1[2].__r_.__value_.__s.__data_[0] = __p.__r_.__value_.__s.__data_[0];
        sub_24BC836D4(&__p, "runtime_metal_lib");
        sub_24BC9CAB4(v16, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BDA392C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 64));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA3910);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA3A14()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE8B0();
}

void sub_24BDA3D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_24BC9F18C((v30 + 8), a10);
  v34 = (v32 - 96);
  v35 = -96;
  do
  {
    sub_24BC9F18C(v34, *(v34 - 8));
    v34 -= 4;
    v35 += 32;
  }

  while (v35);
  v36 = &a19;
  v37 = -64;
  do
  {
    sub_24BC9F18C(v36, *(v36 - 8));
    v36 -= 4;
    v37 += 32;
  }

  while (v37);
  v38 = &a27;
  v39 = -64;
  do
  {
    sub_24BC9F18C(v38, *(v38 - 8));
    v38 -= 4;
    v39 += 32;
  }

  while (v39);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a30 + i + 40), *(&a30 + i + 32));
  }

  sub_24BC9F18C((v31 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BDA3E94(uint64_t a1, void *a2)
{
  v17[0] = 0;
  v18 = 0;
  sub_24BC9C7E0(a2, v17);
  if (v17[0] == 1)
  {
    v3 = sub_24BCB0080(v18, "generate");
    if (v18 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v17, "generate");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v17, "generate");
        __p.__r_.__value_.__s.__data_[0] = 0;
        sub_24BCB0940(v6, &__p);
        *a1 = __p.__r_.__value_.__s.__data_[0];
        sub_24BC836D4(&__p, "generate");
        sub_24BC9CAB4(v17, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v17[0] == 1)
    {
      v7 = sub_24BCB0080(v18, "format");
      if (v18 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v17, "format");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v17, "format");
          sub_24BDAEAC8(v10, &__p);
          if (*(a1 + 31) < 0)
          {
            operator delete(*(a1 + 8));
          }

          *(a1 + 8) = __p;
          sub_24BC836D4(&__p, "format");
          sub_24BC9CAB4(v17, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v17[0] == 1)
      {
        v11 = sub_24BCB0080(v18, "lossy_compression_quality");
        if (v18 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v17, "lossy_compression_quality");
          __p.__r_.__value_.__s.__data_[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v17, "lossy_compression_quality");
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            sub_24BCB0594(v14, &__p, v15);
            *(a1 + 32) = __p.__r_.__value_.__l.__data_;
            sub_24BC836D4(&__p, "lossy_compression_quality");
            sub_24BC9CAB4(v17, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}