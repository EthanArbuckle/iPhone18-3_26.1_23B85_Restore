uint64_t compute_pixel_region_variance(uint64_t a1, uint64_t *a2)
{
  v181 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v154 = *(a2 + 12);
  v155 = *(a2 + 11);
  v152 = *(a2 + 13);
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  v9 = *(a1 + 136);
  v176 = *(a2 + 9);
  v177 = a2[7];
  v10 = 2 * v7;
  result = (2 * v7) | 1u;
  v159 = *(a2 + 24);
  v160 = v7;
  if (!*(a2 + 24))
  {
    v7 = 0;
  }

  v175 = *(a2 + 8);
  v12 = result + v8;
  v169 = result + *(a2 + 9);
  v156 = v10;
  if (*(a2 + 24))
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = 0;
  }

  v161 = *(a2 + 10);
  v171 = (v13 + *(a2 + 10));
  v174 = *v2;
  v14 = v2[3];
  v151 = v2[1];
  v153 = result;
  if (v14)
  {
    if (v14 == 1)
    {
      DWORD2(v179) = 1006632960;
      if (v171 > v159)
      {
        v15 = v159;
        v164 = v152 - v159 - v7;
        v16 = v154 + ~v160;
        v17 = (v8 + v10 + 1);
        v18 = (v176 + v10 + 1);
        v19 = v177 + 16;
        result = (v17 * v18);
        v20 = 16 * (v175 + v156 + 1);
        v21 = &v179 + v4;
        v22 = result * v159;
        v23 = &v179 + v5;
        v24 = &v179 + v6;
        do
        {
          v25 = v2[2] - 1;
          if (v164 + v15 <= v25)
          {
            v25 = (v164 + v15) & ~((v164 + v15) >> 31);
          }

          if (v169 >= 2)
          {
            v26 = (v19 + 16 * (v17 + result * v171 + v22));
            v27 = *(*(v2 + 2) + 8 * v25);
            v28 = 1;
            v29 = (v19 + 16 * ((v175 + v156 + 1) + v22));
            do
            {
              if (v16 + v28 <= v2[1] - 1)
              {
                v30 = (v16 + v28) & ~((v16 + v28) >> 31);
              }

              else
              {
                v30 = v2[1] - 1;
              }

              v31 = v17 - 1;
              v32 = v155 - v160;
              v33 = v29;
              v34 = v26;
              if (v12 >= 2)
              {
                do
                {
                  v35 = v32 & ~(v32 >> 31);
                  if (v32 > *v2 - 1)
                  {
                    v35 = *v2 - 1;
                  }

                  *&v179 = *(v27 + 2 * (4 * v35 + 4 * *v2 * v30));
                  v36.i16[0] = *(&v179 + v3);
                  v36.i16[1] = *v21;
                  v36.i16[2] = *v23;
                  v36.i16[3] = *v24;
                  v37 = vcvtq_f32_f16(v36);
                  *v33++ = v37;
                  *v34++ = vmulq_f32(v37, v37);
                  ++v32;
                  --v31;
                }

                while (v31);
              }

              ++v28;
              v26 = (v26 + v20);
              v29 = (v29 + v20);
            }

            while (v28 != v18);
          }

          ++v15;
          v22 += result;
        }

        while (v15 != v171);
      }
    }

    else
    {
      if (v14 != 2)
      {
        sub_22FA018A8();
      }

      v180 = 0x3F80000000000000;
      if (v171 > v159)
      {
        v60 = v159;
        v166 = v152 - v159 - v7;
        v61 = v154 + ~v160;
        v62 = (v8 + v10 + 1);
        v63 = (v176 + v10 + 1);
        v64 = v177 + 16;
        result = (v62 * v63);
        v65 = result * v159;
        v66 = 16 * (v175 + v156 + 1);
        do
        {
          v67 = v2[2] - 1;
          if (v166 + v60 <= v67)
          {
            v67 = (v166 + v60) & ~((v166 + v60) >> 31);
          }

          if (v169 >= 2)
          {
            v68 = (v64 + 16 * (v62 + result * v171 + v65));
            v69 = *(*(v2 + 2) + 8 * v67);
            v70 = 1;
            v71 = (v64 + 16 * ((v175 + v156 + 1) + v65));
            do
            {
              if (v61 + v70 <= v2[1] - 1)
              {
                v72 = (v61 + v70) & ~((v61 + v70) >> 31);
              }

              else
              {
                v72 = v2[1] - 1;
              }

              v73 = v62 - 1;
              v74 = v155 - v160;
              v75 = v71;
              v76 = v68;
              if (v12 >= 2)
              {
                do
                {
                  v77 = v74 & ~(v74 >> 31);
                  if (v74 > *v2 - 1)
                  {
                    v77 = *v2 - 1;
                  }

                  v179 = *(v69 + 4 * (4 * v77 + 4 * *v2 * v72));
                  v78.i32[0] = *(&v179 + v3);
                  v78.i32[1] = *(&v179 + v4);
                  v78.i32[2] = *(&v179 + v5);
                  v78.i32[3] = *(&v179 + v6);
                  *v75++ = v78;
                  *v76++ = vmulq_f32(v78, v78);
                  ++v74;
                  --v73;
                }

                while (v73);
              }

              ++v70;
              v68 = (v68 + v66);
              v71 = (v71 + v66);
            }

            while (v70 != v63);
          }

          ++v60;
          v65 += result;
        }

        while (v60 != v171);
      }
    }
  }

  else
  {
    WORD2(v179) = -256;
    if (v171 > v159)
    {
      v38 = v159;
      v165 = v152 - v159 - v7;
      v39 = v154 + ~v160;
      v40 = (v8 + v10 + 1);
      v41 = (v176 + v10 + 1);
      v42 = v177 + 16;
      result = (v40 * v41);
      v157 = v40 + result * v171;
      v43 = result * v159;
      v44 = 16 * (v8 + v156 + 1);
      v45 = v40 - 1;
      v46 = vdupq_n_s32(0x3B808081u);
      do
      {
        v47 = v2[2] - 1;
        if (v165 + v38 <= v47)
        {
          v47 = (v165 + v38) & ~((v165 + v38) >> 31);
        }

        if (v169 >= 2)
        {
          v48 = (v42 + 16 * (v157 + v43));
          v49 = *(*(v2 + 2) + 8 * v47);
          v50 = 1;
          v51 = (v42 + 16 * ((v175 + v156 + 1) + v43));
          do
          {
            if (v39 + v50 <= v2[1] - 1)
            {
              v52 = (v39 + v50) & ~((v39 + v50) >> 31);
            }

            else
            {
              v52 = v2[1] - 1;
            }

            v53 = v45;
            v54 = v155 - v160;
            v55 = v51;
            v56 = v48;
            if (v12 >= 2)
            {
              do
              {
                v57 = v54 & ~(v54 >> 31);
                if (v54 > *v2 - 1)
                {
                  v57 = *v2 - 1;
                }

                LODWORD(v179) = *(v49 + (4 * v57 + 4 * *v2 * v52));
                v58.i16[0] = *(&v179 + v3);
                v58.i16[1] = *(&v179 + v4);
                v58.i16[2] = *(&v179 + v5);
                v58.i16[3] = *(&v179 + v6);
                v59 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v58)), v46);
                *v55++ = v59;
                *v56++ = vmulq_f32(v59, v59);
                ++v54;
                --v53;
              }

              while (v53);
            }

            ++v50;
            v48 = (v48 + v44);
            v51 = (v51 + v44);
          }

          while (v50 != v41);
        }

        ++v38;
        v43 += result;
      }

      while (v38 != v171);
    }
  }

  v158 = v171 - 1;
  if (v171 >= 1)
  {
    v79 = 0;
    v80 = v176 + v156 + 1;
    v81 = v175 + v156 + 1;
    v82 = v81 * v80 * v171;
    v83 = v177;
    result = v169;
    do
    {
      v84 = (v176 + v156 + 1);
      v85 = v83;
      if (v169 >= 1)
      {
        do
        {
          *v85 = 0uLL;
          v85[v82] = 0uLL;
          v85 += v81;
          --v84;
        }

        while (v84);
      }

      v86 = (v175 + v156 + 1);
      v87 = v83;
      if (v12 >= 1)
      {
        do
        {
          *v87 = 0uLL;
          v87[v82] = 0uLL;
          ++v87;
          --v86;
        }

        while (v86);
      }

      ++v79;
      v83 += v81 * v80;
    }

    while (v79 != v171);
  }

  if (v159 && v169 >= 1)
  {
    v88 = 0;
    v89 = (v176 + v156 + 1);
    v90 = v177;
    do
    {
      v91 = (v175 + v156 + 1);
      v92 = v90;
      if (v12 >= 1)
      {
        do
        {
          *v92 = 0uLL;
          v92[(v175 + v156 + 1) * v89 * v171] = 0uLL;
          ++v92;
          --v91;
        }

        while (v91);
      }

      ++v88;
      v90 += (v175 + v156 + 1);
    }

    while (v88 != v89);
  }

  v93 = v12 * v169;
  if (v171 > v159)
  {
    v94 = v177;
    v95 = (v176 + v156 + 1);
    v96 = v175 + v156 + 1;
    v167 = v96 * v95;
    v97 = v175 + v96 * v95 * v159 + v156 + 2;
    v162 = v95 - 1;
    v98 = v159;
    do
    {
      v99 = v162;
      v100 = v97;
      if (v169 >= 2)
      {
        do
        {
          sub_22FA01724(v177 + 16 * v100, v12 - 1, 1);
          result = sub_22FA01724(v177 + 16 * v93 * v171 + 16 * v100, v12 - 1, 1);
          v94 = v177;
          v100 += v96;
          --v99;
        }

        while (v99);
      }

      ++v98;
      v97 += v167;
    }

    while (v98 != v171);
    v101 = v169 - 1;
    v102 = (v175 + v156 + 1);
    v103 = v102 + v102 * (v176 + v156);
    v104 = v159;
    v105 = v102 + v159 * v103;
    v106 = v94 + 16 * v105 + 16;
    v168 = 16 * v103;
    v107 = v94 + 16 * (v105 + v103 * v171) + 16;
    v163 = v102 - 1;
    do
    {
      v108 = v163;
      v109 = v107;
      v110 = v106;
      if (v12 >= 2)
      {
        do
        {
          sub_22FA01724(v110, v101, v12);
          result = sub_22FA01724(v109, v101, v12);
          v110 += 16;
          v109 += 16;
          --v108;
        }

        while (v108);
      }

      ++v104;
      v106 += v168;
      v107 += v168;
    }

    while (v104 != v171);
  }

  if (v159 && v169 >= 2)
  {
    v111 = (v175 + v156 + 1);
    v170 = (v176 + v156 + 1);
    v112 = (v176 + v156 + 2) * v111;
    v113 = 16 * v111 * v170 * v171;
    v172 = v111 - 1;
    v114 = 1;
    do
    {
      if (v12 >= 2)
      {
        v115 = v177 + 16 + 16 * v112;
        v116 = v172;
        do
        {
          sub_22FA01724(v115, v158, v93);
          result = sub_22FA01724(v115 + v113, v158, v93);
          v115 += 16;
          --v116;
        }

        while (v116);
      }

      ++v114;
      v112 += v175 + v156 + 1;
    }

    while (v114 != v170);
  }

  if (v159)
  {
    v117 = v153;
  }

  else
  {
    v117 = 1.0;
  }

  v118 = 1.0 / ((v117 * v153) * v153);
  if (v159)
  {
    if (v161 >= 1)
    {
      v119 = 0;
      v120 = v12;
      v121 = v177 + 12;
      v122 = v156 + 1;
      v123 = v156 + 1 + v175;
      v178 = (v122 + v175) * v122;
      v124 = (v122 + v175) * (v122 + v176);
      result = 16 * v123;
      v173 = (v122 + v175 + v124) * v122;
      v125 = v124 * (v156 + 1);
      v126 = v155 + v174 * (v154 + v152 * v151);
      v127 = v121;
      do
      {
        if (v176 >= 1)
        {
          v128 = 0;
          v129 = v121 + 16 * v125;
          v130 = v126;
          v131 = v173;
          v132 = v127;
          v133 = v178;
          do
          {
            if (v175 >= 1)
            {
              v134 = 0;
              v135 = v156 + 1;
              v136 = v130;
              do
              {
                *(v9 + 4 * v136) = v118 * ((((*(v129 + v134) - *(v121 + 16 * (v160 + 1 + v160 + v119) * v93 + 16 * v128 * v120 + 16 * v135)) - *(v121 + 16 * v131 + v134)) + *(v121 + 16 * (v131 + v135))) - (((*(v132 + v134) - *(v121 + 16 * v119 * v93 + 16 * v128 * v120 + 16 * v135)) - *(v121 + 16 * v133 + v134)) + *(v121 + 16 * (v133 + v135))));
                v134 += 16;
                ++v136;
                ++v135;
              }

              while (16 * v175 != v134);
            }

            ++v128;
            v133 += v123;
            v132 += result;
            v131 += v123;
            v129 += result;
            v130 += v174;
          }

          while (v128 != v176);
        }

        ++v119;
        v178 += v124;
        v127 += 16 * v124;
        v173 += v124;
        v125 += v124;
        v126 += v151 * v174;
      }

      while (v119 != v161);
    }
  }

  else if (v176 >= 1)
  {
    v137 = 0;
    v138 = v177 + 12;
    v139 = v156 + 1 + v175;
    v140 = v139 * (v156 + 1);
    v141 = v155 + v154 * v174;
    v142 = (v177 + 12);
    do
    {
      if (v175 >= 1)
      {
        v143 = (v138 + 16 * v140);
        result = v138 + 16 * v137 * v12;
        v144 = v175;
        v145 = v156 + 1;
        v146 = v141;
        v147 = v142;
        do
        {
          v148 = *v147;
          v147 += 4;
          v149 = v148 - *(result + 16 * v145);
          v150 = *v143;
          v143 += 4;
          *(v9 + 4 * v146++) = v118 * ((v149 - v150) + *(v138 + 16 * (v140 + v145++)));
          --v144;
        }

        while (v144);
      }

      ++v137;
      v140 += v139;
      v142 += 4 * v139;
      v141 += v174;
    }

    while (v137 != v176);
  }

  return result;
}

uint64_t sub_22FA01724(uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = 2;
    v4 = 1;
    do
    {
      v5 = a2 >> v4;
      if (a2 >> v4)
      {
        v6 = result;
        do
        {
          *(v6 + 16 * a3 * (v3 - 1)) = vaddq_f32(*(v6 + 16 * a3 * (v3 - 1)), *(v6 + a3 * (16 * v3 - 16 * (v3 >> 1) - 16)));
          v6 += 16 * (a3 << v4);
          --v5;
        }

        while (v5);
      }

      ++v4;
      v3 *= 2;
    }

    while (v3 <= a2);
    do
    {
      --v4;
      v7 = v3 >> 1;
      v8 = (a2 - (v3 >> 2)) >> v4;
      if (v8)
      {
        v10 = result;
        do
        {
          v9 = 16 * a3 * (v7 + (v3 >> 2) - 1);
          *(v10 + v9) = vaddq_f32(*(v10 + v9), *(v10 + a3 * (16 * v7 - 16)));
          v10 += 16 * (a3 << v4);
          --v8;
        }

        while (v8);
      }

      v11 = v3 > 5;
      v3 >>= 1;
    }

    while (v11);
  }

  return result;
}

uint64_t init_compute_averages(int *a1, int a2, _OWORD *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (v6 <= 1)
  {
    v7 = 32;
  }

  else
  {
    v7 = 16;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 16;
  }

  if (v6 > 1)
  {
    v9 = 2 * a2 + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 > 1)
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  if (v6 < v8)
  {
    v8 = a1[2];
  }

  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = a1;
  *(a4 + 8) = *a3;
  *(a4 + 24) = v6 > 1;
  *(a4 + 28) = a2;
  *(a4 + 64) = v4;
  *(a4 + 68) = v5;
  *(a4 + 72) = v6;
  *(a4 + 76) = v7;
  *(a4 + 80) = v8;
  *(a4 + 84) = 2 * (v7 + ((2 * a2) | 1)) * (v7 + ((2 * a2) | 1)) * (v8 + v9);
  return (v6 + v8 - 1) / v8 * ((v5 + v7 - 1) >> v10);
}

float *compute_ideal_colors_and_weights_1plane(uint64_t a1, unsigned __int16 *a2, _BYTE *a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 3536);
  v12 = *(a1 + 3568);
  {
    v61 = v12;
    v62 = v11;
    sub_22F9F25EC();
    v12 = v61;
    v11 = v62;
  }

  v13 = vmovn_s32(vceqq_f32(v11, v12));
  v14 = 0;
  v14.i16[3] = v13.i16[3];
  v15 = vmovl_u16(v14);
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = vandq_s8(v15, v16);
  v18 = *&mask(vmask4)::shift;
  v19 = vshlq_u32(v17, mask(vmask4)::shift);
  v19.i32[0] = vaddvq_s32(v19);
  if (v19.i32[0])
  {

    return sub_22FA01C38(a1, a2, a3, 3, *v19.i64, v18, a6, a7, a8);
  }

  else
  {
    v21 = *(a1 + 3516);
    if (!*(a1 + 3516))
    {
      sub_22FA04038();
    }

    v22 = *a2;
    if (!*a2)
    {
      sub_22FA0400C();
    }

    v23 = vadd_f32(*&vextq_s8(*(a1 + 3584), *(a1 + 3584), 8uLL), *(a1 + 3584));
    v24 = 0.25 * vpadd_f32(v23, v23).f32[0];
    v29 = compute_avgs_and_dirs_4_comp(a2, a1, v63);
    v26 = 0;
    v27 = a2 + 2;
    v28 = a2 + 120;
    v29.i64[0] = 0;
    v30 = a3 + 160;
    result = (a3 + 1024);
    v31 = 1;
    v32 = 0.0;
    do
    {
      v33 = &v63[2 * v26];
      v34 = v33[1];
      v25.f32[0] = COERCE_FLOAT(v33[1].i64[1]) + vaddv_f32(*v34.f32);
      v35 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v29, v25), 0), vsubq_f32(0, v34), v34);
      v36 = vmulq_f32(v35, v35);
      *v36.i8 = vadd_f32(*&vextq_s8(v36, v36, 8uLL), *v36.i8);
      v37 = vpadd_f32(*v36.i8, *v36.i8);
      if (*v37.i32 == 0.0)
      {
        v38.i64[0] = 0x3F0000003F000000;
        v38.i64[1] = 0x3F0000003F000000;
      }

      else
      {
        v38 = vdivq_f32(v35, vsqrtq_f32(vdupq_lane_s32(v37, 0)));
      }

      v25 = *v33;
      v39 = *(v27 + v26);
      v40 = -1.0e10;
      v41 = 1.0e10;
      if (*(v27 + v26))
      {
        v42 = v28;
        v43 = *(v27 + v26);
        v41 = 1.0e10;
        v40 = -1.0e10;
        do
        {
          v44 = *v42;
          v42 = (v42 + 1);
          v45.i32[0] = *(a1 + 4 * v44);
          v45.i32[1] = *(a1 + 880 + 4 * v44);
          v45.i32[2] = *(a1 + 1760 + 4 * v44);
          v45.i32[3] = *(a1 + 2640 + 4 * v44);
          v46 = vmulq_f32(v38, vsubq_f32(v45, v25));
          *v46.i8 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.i8);
          v47 = vpadd_f32(*v46.i8, *v46.i8).f32[0];
          *&v30[4 * v44] = v47;
          if (v47 < v41)
          {
            v41 = v47;
          }

          if (v47 > v40)
          {
            v40 = v47;
          }

          --v43;
        }

        while (v43);
      }

      if (v40 <= v41)
      {
        v48 = 0.0000001;
      }

      else
      {
        v48 = v40;
      }

      if (v40 <= v41)
      {
        v41 = 0.0;
      }

      v49 = v48 - v41;
      if (v26)
      {
        v31 &= (v49 * v49) == v32;
      }

      else
      {
        v32 = v49 * v49;
      }

      *&a3[16 * v26 + 32] = vaddq_f32(v25, vmulq_n_f32(v38, v41));
      *&a3[16 * v26 + 96] = vaddq_f32(v25, vmulq_n_f32(v38, v48));
      if (v39)
      {
        v50 = 0;
        v51 = v24 * (v49 * v49);
        v52 = 1.0 / v49;
        do
        {
          v53 = *(v28 + v50);
          v54 = v52 * (*&v30[4 * v53] - v41);
          v55 = fmaxf(v54, 0.0);
          if (v54 <= 1.0)
          {
            v56 = v55;
          }

          else
          {
            v56 = 1.0;
          }

          *&v30[4 * v53] = v56;
          result[v53] = v51;
          ++v50;
        }

        while (v39 != v50);
      }

      ++v26;
      v28 += 108;
    }

    while (v26 != v22);
    v57 = (v21 + 3) & 0x1FC;
    if (v57 > v21)
    {
      v58 = v21 - v57;
      v59 = &a3[4 * v21];
      do
      {
        *(v59 + 40) = 0;
        *(v59 + 256) = 0;
        v59 += 4;
      }

      while (!__CFADD__(v58++, 1));
    }

    *a3 = v31 & 1;
  }

  return result;
}

void *sub_22FA01C38(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  *(a3 + 16) = v9;
  if (!v9)
  {
    sub_22FA040BC();
  }

  v11 = *(a1 + 3516);
  if (!*(a1 + 3516))
  {
    sub_22FA04090();
  }

  v15 = *(a1 + 3584);
  if (a4 == 2)
  {
    v21.i64[0] = 0;
    v21.i64[1] = HIDWORD(v15);
    v18 = vadd_f32(*&v15, *&vextq_s8(v21, v21, 8uLL));
    v18.i32[0] = vpadd_f32(v18, v18).u32[0];
    v20 = 880;
    goto LABEL_9;
  }

  v16 = *(a1 + 3584);
  if (a4 == 1)
  {
    v16.i32[1] = *(a1 + 3592);
    v16.i64[1] = HIDWORD(v15);
    v18 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.i8);
    v18.i32[0] = vpadd_f32(v18, v18).u32[0];
    v20 = 1760;
LABEL_9:
    v19 = a1;
    goto LABEL_10;
  }

  v16.i32[3] = 0;
  v16.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
  v17 = vadd_f32(*&v15, *v16.i8);
  v18 = vpadd_f32(v17, v17);
  if (!a4)
  {
    v19 = a1 + 880;
    v20 = 1760;
LABEL_10:
    v22 = a1 + v20;
    v23 = v18.f32[0] * 0.33333;
    v24 = 2640;
    goto LABEL_11;
  }

  v22 = a1 + 880;
  v16.i32[0] = 1051372203;
  v23 = 0.33333 * v18.f32[0];
  if (a4 == 3)
  {
    v25 = compute_avgs_and_dirs_3_comp_rgb(a2, a1, v68, *&v18, *v16.i64, a7, a8, a9);
    v24 = 1760;
    v19 = a1;
    goto LABEL_12;
  }

  v24 = 1760;
  v19 = a1;
LABEL_11:
  v25 = compute_avgs_and_dirs_3_comp(a2, a1, a4, v68);
LABEL_12:
  v28 = 0;
  v29 = a2 + 2;
  v30 = a2 + 120;
  v31 = a3 + 160;
  v25.i64[0] = 0;
  v32 = a3 + 32;
  result = &unk_22FA11000;
  v34 = 1;
  v35 = 0.0;
  do
  {
    v36 = &v68[2 * v28];
    v37 = v36[1];
    v26.f32[0] = COERCE_FLOAT(v36[1].i64[1]) + vaddv_f32(*v37.f32);
    v38 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, v26), 0), vsubq_f32(0, v37), v37);
    v39 = vmulq_f32(v38, v38);
    *v39.i8 = vadd_f32(*&vextq_s8(v39, v39, 8uLL), *v39.i8);
    v40 = vpadd_f32(*v39.i8, *v39.i8);
    v41 = xmmword_22FA104E0;
    if (*v40.i32 != 0.0)
    {
      v41 = vdivq_f32(v38, vsqrtq_f32(vdupq_lane_s32(v40, 0)));
    }

    v42 = *v36;
    v43 = *(v29 + v28);
    v44 = -1.0e10;
    v45 = 1.0e10;
    if (*(v29 + v28))
    {
      v44 = -1.0e10;
      v45 = 1.0e10;
      v46 = *(v29 + v28);
      v47 = v30;
      do
      {
        v48 = *v47;
        v47 = (v47 + 1);
        v27.i32[0] = *(v19 + 4 * v48);
        v27.i32[1] = *(v22 + 4 * v48);
        v27.i32[2] = *(a1 + v24 + 4 * v48);
        v27 = vmulq_f32(v41, vsubq_f32(v27, v42));
        v49 = vaddv_f32(*v27.f32);
        *(v31 + 4 * v48) = v27.f32[2] + v49;
        if ((v27.f32[2] + v49) < v45)
        {
          v45 = v27.f32[2] + v49;
        }

        if ((v27.f32[2] + v49) > v44)
        {
          v44 = v27.f32[2] + v49;
        }

        --v46;
      }

      while (v46);
    }

    if (v44 <= v45)
    {
      v44 = 0.0000001;
      v45 = 0.0;
    }

    v50 = v44 - v45;
    if (v28)
    {
      v34 &= (v50 * v50) == v35;
    }

    else
    {
      v35 = v50 * v50;
    }

    if (v43)
    {
      v51 = 0;
      v52 = v23 * (v50 * v50);
      v53 = 1.0 / v50;
      do
      {
        v54 = *(v30 + v51);
        v55 = v53 * (*(v31 + 4 * v54) - v45);
        v56 = fmaxf(v55, 0.0);
        if (v55 <= 1.0)
        {
          v57 = v56;
        }

        else
        {
          v57 = 1.0;
        }

        *(v31 + 4 * v54) = v57;
        *(a3 + 1024 + 4 * v54) = v52;
        ++v51;
      }

      while (v43 != v51);
    }

    v58 = vaddq_f32(v42, vmulq_n_f32(v41, v45));
    v59 = vaddq_f32(v42, vmulq_n_f32(v41, v44));
    v60 = *(a1 + 3536);
    v61 = *(a1 + 3568);
    if (a4)
    {
      if (a4 == 1)
      {
        v63 = vzip1q_s32(v60, v58);
        *(v32 + 16 * v28) = vtrn2q_s32(v63, vuzp1q_s32(v63, v58));
        v64 = vzip1q_s32(v61, v59);
        v26 = vtrn2q_s32(v64, vuzp1q_s32(v64, v59));
      }

      else if (a4 == 2)
      {
        v62 = vtrn1q_s32(v60, v58);
        v62.i64[0] = v58.i64[0];
        *(v32 + 16 * v28) = v62;
        v26 = vtrn1q_s32(v61, v59);
        v26.i64[0] = v59.i64[0];
      }

      else
      {
        v58.i32[3] = HIDWORD(*(a1 + 3536));
        *(v32 + 16 * v28) = v58;
        v59.i32[3] = v61.i32[3];
        v26 = v59;
      }
    }

    else
    {
      *(v32 + 16 * v28) = vextq_s8(vextq_s8(v60, v60, 4uLL), v58, 0xCuLL);
      v26 = vextq_s8(vextq_s8(v61, v61, 4uLL), v59, 0xCuLL);
    }

    *(a3 + 96 + 16 * v28++) = v26;
    v30 += 108;
  }

  while (v28 != v9);
  if (((v11 + 3) & 0x1FCu) > v11)
  {
    v65 = a3 + 4 * v11;
    v66 = v11 - ((v11 + 3) & 0x1FC);
    do
    {
      *(v65 + 160) = 0;
      *(v65 + 1024) = 0;
      v65 += 4;
    }

    while (!__CFADD__(v66++, 1));
  }

  *a3 = v34 & 1;
  return result;
}

uint64_t compute_ideal_colors_and_weights_2planes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22F9F1DD0(a1, 1u, 0);
  v13 = *(a2 + 3536);
  v14 = *(a2 + 3568);
  {
    v26 = v14;
    v27 = v13;
    sub_22F9F25EC();
    v14 = v26;
    v13 = v27;
  }

  if (a3 >= 4)
  {
    sub_22FA04114();
  }

  v15 = vmovn_s32(vceqq_f32(v13, v14));
  v16 = 0;
  v16.i16[3] = v15.i16[3];
  v17 = vmovl_u16(v16);
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  v19 = vshlq_u32(vandq_s8(v17, v18), mask(vmask4)::shift);
  v19.i32[0] = vaddvq_s32(v19);
  switch(a3)
  {
    case 2u:
      if (v19.i32[0])
      {
        sub_22FA021CC(a2, v9, a4, 0, 1u, *v19.i64, mask(vmask4)::shift, v10, v11);
        v20 = 2;
        goto LABEL_20;
      }

      v20 = 2;
      v21 = a2;
      v22 = v9;
      v23 = a4;
      v24 = 2;
      break;
    case 1u:
      if (v19.i32[0])
      {
        sub_22FA021CC(a2, v9, a4, 0, 2u, *v19.i64, mask(vmask4)::shift, v10, v11);
        v20 = 1;
        goto LABEL_20;
      }

      v20 = 1;
      v21 = a2;
      v22 = v9;
      v23 = a4;
      v24 = 1;
      break;
    case 0u:
      if (v19.i32[0])
      {
        sub_22FA021CC(a2, v9, a4, 1u, 2u, *v19.i64, mask(vmask4)::shift, v10, v11);
      }

      else
      {
        sub_22FA01C38(a2, v9, a4, 0, *v19.i64, *&mask(vmask4)::shift, v10, *v11.i64, v12);
      }

      v20 = 0;
      goto LABEL_20;
    default:
      if (v19.i32[0])
      {
        sub_22FA040E8();
      }

      v20 = 3;
      v21 = a2;
      v22 = v9;
      v23 = a4;
      v24 = 3;
      break;
  }

  sub_22FA01C38(v21, v22, v23, v24, *v19.i64, *&mask(vmask4)::shift, v10, *v11.i64, v12);
LABEL_20:

  return sub_22FA02538(a2, v9, a5, v20);
}

unsigned __int32 *sub_22FA021CC(uint64_t a1, _WORD *a2, uint64_t a3, unsigned int a4, unsigned int a5, double a6, __n128 a7, double a8, int32x4_t a9)
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  *(a3 + 16) = v9;
  if (!v9)
  {
    sub_22FA041C4();
  }

  v11 = *(a1 + 3516);
  if (!*(a1 + 3516))
  {
    sub_22FA04198();
  }

  if (!a4 && a5 == 1)
  {
    a7.n128_u32[1] = 0;
    v16 = vadd_f32(*(a1 + 3584), 0);
    v17 = vpadd_f32(v16, v16);
    v18 = 880;
LABEL_9:
    v22 = a1;
    goto LABEL_13;
  }

  if (!a4 && a5 == 2)
  {
    v19 = (a1 + 3584);
    *(&a7 - 8) = vld2_f32(v19);
    a8 = 0.0;
    v21 = vadd_f32(v20, 0);
    v17 = vpadd_f32(v21, v21);
    v18 = 1760;
    goto LABEL_9;
  }

  if (a4 != 1 || a5 != 2)
  {
    sub_22FA04140();
  }

  v23 = *(a1 + 3584);
  a7 = vextq_s8(v23, v23, 8uLL);
  *v23.i8 = vext_s8(*v23.i8, a7.n128_u64[0], 4uLL);
  a7.n128_u32[1] = 0;
  *v23.i8 = vadd_f32(*v23.i8, 0);
  v17 = vpadd_f32(*v23.i8, *v23.i8);
  v22 = a1 + 880;
  v18 = 1760;
LABEL_13:
  v24 = a1 + v18;
  a7.n128_u32[0] = 0.5;
  v25 = v17.f32[0] * 0.5;
  result = compute_avgs_and_dirs_2_comp(a2, a1, a4, a5, v63, *&v17, a7, a8, a9);
  v28 = 0;
  v29 = a2 + 2;
  v30 = (a2 + 120);
  v31 = a3 + 160;
  v32.i64[0] = 0;
  v33 = 1;
  v34 = vceqq_s32(vdupq_n_s32(a5), xmmword_22FA083F0);
  v35 = vceqq_s32(vdupq_n_s32(a4), xmmword_22FA083F0);
  v36 = 0.0;
  do
  {
    v37 = &v63[2 * v28];
    v38 = v37[1];
    v39 = vextq_s8(v38, v38, 8uLL);
    *v39.f32 = vadd_f32(*v39.f32, *v38.f32);
    *v39.f32 = vpadd_f32(*v39.f32, *v39.f32);
    v40 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v32, v39), 0), vsubq_f32(0, v38), v38);
    v41 = vmulq_f32(v40, v40);
    *v41.i8 = vadd_f32(*&vextq_s8(v41, v41, 8uLL), *v41.i8);
    v42 = vpadd_f32(*v41.i8, *v41.i8);
    v43 = xmmword_22FA11810;
    if (*v42.i32 != 0.0)
    {
      v43 = vdivq_f32(v40, vsqrtq_f32(vdupq_lane_s32(v42, 0)));
    }

    v44 = *v37;
    v45 = *(v29 + v28);
    v46 = -1.0e10;
    v47 = 1.0e10;
    if (*(v29 + v28))
    {
      v48 = *(v29 + v28);
      result = v30;
      v47 = 1.0e10;
      v46 = -1.0e10;
      do
      {
        v49 = *result;
        result = (result + 1);
        v27.i32[0] = *(v22 + 4 * v49);
        v27.i32[1] = *(v24 + 4 * v49);
        v27 = vmulq_f32(v43, vsubq_f32(v27, v44));
        *v27.f32 = vadd_f32(*&vextq_s8(v27, v27, 8uLL), *v27.f32);
        v27.f32[0] = vpadd_f32(*v27.f32, *v27.f32).f32[0];
        *(v31 + 4 * v49) = v27.i32[0];
        if (v27.f32[0] < v47)
        {
          v47 = v27.f32[0];
        }

        if (v27.f32[0] > v46)
        {
          v46 = v27.f32[0];
        }

        --v48;
      }

      while (v48);
    }

    if (v46 <= v47)
    {
      v46 = 0.0000001;
      v47 = 0.0;
    }

    v50 = v46 - v47;
    if (v28)
    {
      v33 &= (v50 * v50) == v36;
    }

    else
    {
      v36 = v50 * v50;
    }

    if (v45)
    {
      v51 = 0;
      v52 = v25 * (v50 * v50);
      v53 = 1.0 / v50;
      do
      {
        result = *(v30 + v51);
        v54 = v53 * (*(v31 + 4 * result) - v47);
        v55 = fmaxf(v54, 0.0);
        if (v54 <= 1.0)
        {
          v56 = v55;
        }

        else
        {
          v56 = 1.0;
        }

        *(v31 + 4 * result) = v56;
        *(a3 + 1024 + 4 * result) = v52;
        ++v51;
      }

      while (v45 != v51);
    }

    v57 = vaddq_f32(v44, vmulq_n_f32(v43, v47)).u64[0];
    v58 = vaddq_f32(v44, vmulq_n_f32(v43, v46)).u64[0];
    v27 = vdupq_lane_s32(v58, 0);
    v59 = vbslq_s8(v35, v27, *(a1 + 3568));
    *(a3 + 32 + 16 * v28) = vbslq_s8(v34, vdupq_lane_s32(v57, 1), vbslq_s8(v35, vdupq_lane_s32(v57, 0), *(a1 + 3536)));
    *(a3 + 96 + 16 * v28++) = vbslq_s8(v34, vdupq_lane_s32(v58, 1), v59);
    v30 += 54;
  }

  while (v28 != v9);
  if (((v11 + 3) & 0x1FCu) > v11)
  {
    v60 = a3 + 4 * v11;
    v61 = v11 - ((v11 + 3) & 0x1FC);
    do
    {
      *(v60 + 160) = 0;
      *(v60 + 1024) = 0;
      v60 += 4;
    }

    while (!__CFADD__(v61++, 1));
  }

  *a3 = v33 & 1;
  return result;
}

uint64_t sub_22FA02538(uint64_t result, unsigned __int16 *a2, uint64_t a3, signed int a4)
{
  v6 = *a2;
  *(a3 + 16) = v6;
  if (!v6)
  {
    sub_22FA04274();
  }

  v7 = *(result + 3516);
  if (!*(result + 3516))
  {
    sub_22FA04248();
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v8 = *(result + 3592);
      v9 = result + 1760;
      goto LABEL_12;
    }

    if (a4 == 3)
    {
      v8 = *(result + 3596);
      v9 = result + 2640;
      goto LABEL_12;
    }

LABEL_39:
    sub_22FA0421C();
  }

  if (!a4)
  {
    v8 = *(result + 3584);
    v9 = result;
    goto LABEL_12;
  }

  if (a4 != 1)
  {
    goto LABEL_39;
  }

  v8 = *(result + 3588);
  v9 = result + 880;
LABEL_12:
  v10 = 0;
  v11 = a2 + 2;
  v12 = a2 + 120;
  v13 = 1;
  v14 = vceqq_s32(vdupq_n_s32(a4), xmmword_22FA083F0);
  v15 = 0.0;
  do
  {
    v16 = *(v11 + v10);
    v4.i32[0] = -803929351;
    v5.i32[0] = 1343554297;
    if (*(v11 + v10))
    {
      v17 = *(v11 + v10);
      v18 = v12;
      v5.i32[0] = 1343554297;
      v4.i32[0] = -803929351;
      do
      {
        v19 = *v18;
        v18 = (v18 + 1);
        v20 = *(v9 + 4 * v19);
        if (v20 < *v5.i32)
        {
          *v5.i32 = v20;
        }

        if (v20 > *v4.i32)
        {
          *v4.i32 = v20;
        }

        --v17;
      }

      while (v17);
    }

    if (*v4.i32 <= *v5.i32)
    {
      *v4.i32 = 0.0000001;
      *v5.i32 = 0.0;
    }

    v21 = *v4.i32 - *v5.i32;
    if (v10)
    {
      v13 &= (v21 * v21) == v15;
    }

    else
    {
      v15 = v21 * v21;
    }

    if (*(v11 + v10))
    {
      v22 = 0;
      v23 = v8 * (v21 * v21);
      v24 = 1.0 / v21;
      do
      {
        v25 = *(v12 + v22);
        v26 = v24 * (*(v9 + 4 * v25) - *v5.i32);
        v27 = fmaxf(v26, 0.0);
        if (v26 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        *(a3 + 160 + 4 * v25) = v28;
        *(a3 + 1024 + 4 * v25) = v23;
        ++v22;
      }

      while (v16 != v22);
    }

    *(a3 + 32 + 16 * v10) = vbslq_s8(v14, vdupq_lane_s32(*v5.i8, 0), *(result + 3536));
    v5 = *(result + 3568);
    v4 = vbslq_s8(v14, vdupq_lane_s32(*v4.i8, 0), v5);
    *(a3 + 96 + 16 * v10++) = v4;
    v12 += 108;
  }

  while (v10 != v6);
  if (((v7 + 3) & 0x1FCu) > v7)
  {
    v29 = a3 + 4 * v7;
    v30 = v7 - ((v7 + 3) & 0x1FC);
    do
    {
      *(v29 + 160) = 0;
      *(v29 + 1024) = 0;
      v29 += 4;
    }

    while (!__CFADD__(v30++, 1));
  }

  *a3 = v13 & 1;
  return result;
}

float32x2_t compute_error_of_weight_set_1plane(float32x4_t *a1, unsigned __int8 *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, double a6, uint8x8_t a7)
{
  v7 = *a2;
  if (!*a2)
  {
    sub_22FA042A0();
  }

  v11 = a2[1];
  if (v11 < 3)
  {
    if (v11 == 2)
    {
      v16 = 0;
      v13 = 0uLL;
      do
      {
        v25 = v13;
        *v17.i64 = sub_22FA0297C(a2, a3, v16, *a4.f32, *a5.f32);
        v18 = vsubq_f32(v17, a1[10]);
        a5 = a1[64];
        a4 = vmulq_f32(a5, vmulq_f32(v18, v18));
        v13 = vaddq_f32(v25, a4);
        v16 += 4;
        ++a1;
      }

      while (v16 < v7);
    }

    else
    {
      v19 = 0;
      v13 = 0uLL;
      do
      {
        v20 = *a3++;
        v21 = vsubq_f32(v20, a1[10]);
        v13 = vaddq_f32(v13, vmulq_f32(a1[64], vmulq_f32(v21, v21)));
        v19 += 4;
        ++a1;
      }

      while (v19 < v7);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0uLL;
    do
    {
      v24 = v13;
      *v14.i64 = sub_22FA02864(a2, a3, v12, *a4.f32, *a5.f32, *v13.f32, a7);
      v15 = vsubq_f32(v14, a1[10]);
      a5 = a1[64];
      a4 = vmulq_f32(a5, vmulq_f32(v15, v15));
      v13 = vaddq_f32(v24, a4);
      v12 += 4;
      ++a1;
    }

    while (v12 < v7);
  }

  v22 = vadd_f32(*&vextq_s8(v13, v13, 8uLL), *v13.f32);
  return vpadd_f32(v22, v22);
}

double sub_22FA02864(uint64_t a1, uint64_t a2, unsigned int a3, uint8x8_t a4, uint8x8_t a5, uint8x8_t a6, uint8x8_t a7)
{
  v7 = (a1 + a3);
  a4.i32[0] = v7[60];
  v8 = vmovl_u16(*&vmovl_u8(a4));
  a5.i32[0] = v7[114];
  v9 = vmovl_u16(*&vmovl_u8(a5));
  a6.i32[0] = v7[168];
  v10 = vmovl_u16(*&vmovl_u8(a6));
  a7.i32[0] = v7[222];
  v11 = vmovl_u16(*&vmovl_u8(a7));
  v8.i32[0] = *(a2 + 4 * v8.u32[0]);
  v8.i32[1] = *(a2 + 4 * v8.u32[1]);
  v8.i32[2] = *(a2 + 4 * v8.u32[2]);
  v8.i32[3] = *(a2 + 4 * v8.u32[3]);
  v9.i32[0] = *(a2 + 4 * v9.u32[0]);
  v9.i32[1] = *(a2 + 4 * v9.u32[1]);
  v9.i32[2] = *(a2 + 4 * v9.u32[2]);
  v9.i32[3] = *(a2 + 4 * v9.u32[3]);
  v10.i32[0] = *(a2 + 4 * v10.u32[0]);
  v10.i32[1] = *(a2 + 4 * v10.u32[1]);
  v10.i32[2] = *(a2 + 4 * v10.u32[2]);
  v10.i32[3] = *(a2 + 4 * v10.u32[3]);
  v11.i32[0] = *(a2 + 4 * v11.u32[0]);
  v11.i32[1] = *(a2 + 4 * v11.u32[1]);
  v11.i32[2] = *(a2 + 4 * v11.u32[2]);
  v11.i32[3] = *(a2 + 4 * v11.u32[3]);
  *&result = vaddq_f32(vaddq_f32(vmulq_f32(v8, *(a1 + 4 * a3 + 1968)), vmulq_f32(v9, *(a1 + 4 * a3 + 2832))), vaddq_f32(vmulq_f32(v10, *(a1 + 4 * a3 + 3696)), vmulq_f32(v11, *(a1 + 4 * a3 + 4560)))).u64[0];
  return result;
}

double sub_22FA0297C(uint64_t a1, uint64_t a2, unsigned int a3, uint8x8_t a4, uint8x8_t a5)
{
  v5 = a1 + a3;
  a4.i32[0] = *(v5 + 240);
  v6 = vmovl_u16(*&vmovl_u8(a4));
  a5.i32[0] = *(v5 + 456);
  v7 = vmovl_u16(*&vmovl_u8(a5));
  v6.i32[0] = *(a2 + 4 * v6.u32[0]);
  v6.i32[1] = *(a2 + 4 * v6.u32[1]);
  v6.i32[2] = *(a2 + 4 * v6.u32[2]);
  v6.i32[3] = *(a2 + 4 * v6.u32[3]);
  v7.i32[0] = *(a2 + 4 * v7.u32[0]);
  v7.i32[1] = *(a2 + 4 * v7.u32[1]);
  v7.i32[2] = *(a2 + 4 * v7.u32[2]);
  v7.i32[3] = *(a2 + 4 * v7.u32[3]);
  *&result = vaddq_f32(vmulq_f32(v6, *(a1 + 4 * a3 + 1968)), vmulq_f32(v7, *(a1 + 4 * a3 + 2832))).u64[0];
  return result;
}

float32x2_t compute_error_of_weight_set_2planes(float32x4_t *a1, float32x4_t *a2, unsigned __int8 *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t a6, uint8x8_t a7, uint8x8_t a8)
{
  v8 = *a3;
  if (!*a3)
  {
    sub_22FA042CC();
  }

  v14 = a3[1];
  if (v14 < 3)
  {
    if (v14 == 2)
    {
      v24 = 0;
      v16 = 0uLL;
      do
      {
        v40 = v16;
        *v25.i64 = sub_22FA0297C(a3, a4, v24, *a6.f32, a7);
        v26 = vsubq_f32(v25, a1[10]);
        v27 = a1[64];
        v38 = vmulq_f32(v27, vmulq_f32(v26, v26));
        *v28.i64 = sub_22FA0297C(a3, a5, v24, *v38.f32, *v27.f32);
        v29 = vsubq_f32(v28, a2[10]);
        a7 = *v38.f32;
        a6 = vaddq_f32(v38, vmulq_f32(a2[64], vmulq_f32(v29, v29)));
        v16 = vaddq_f32(v40, a6);
        v24 += 4;
        ++a1;
        ++a2;
      }

      while (v24 < v8);
    }

    else
    {
      v30 = 0;
      v16 = 0uLL;
      do
      {
        v31 = *a4++;
        v32 = vsubq_f32(v31, a1[10]);
        v33 = *a5++;
        v34 = vsubq_f32(v33, a2[10]);
        v16 = vaddq_f32(v16, vaddq_f32(vmulq_f32(a1[64], vmulq_f32(v32, v32)), vmulq_f32(a2[64], vmulq_f32(v34, v34))));
        v30 += 4;
        ++a1;
        ++a2;
      }

      while (v30 < v8);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0uLL;
    do
    {
      v39 = v16;
      *v17.i64 = sub_22FA02864(a3, a4, v15, *a6.f32, a7, a8, *v16.f32);
      v18 = vsubq_f32(v17, a1[10]);
      v19 = a1[64];
      v37 = vmulq_f32(v19, vmulq_f32(v18, v18));
      *v22.i64 = sub_22FA02864(a3, a5, v15, *v37.f32, *v19.f32, v20, v21);
      v23 = vsubq_f32(v22, a2[10]);
      a7 = *v37.f32;
      a6 = vaddq_f32(v37, vmulq_f32(a2[64], vmulq_f32(v23, v23)));
      v16 = vaddq_f32(v39, a6);
      v15 += 4;
      ++a1;
      ++a2;
    }

    while (v15 < v8);
  }

  v35 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
  return vpadd_f32(v35, v35);
}

int32x2_t *compute_ideal_weights_for_decimation(int32x2_t *result, float32x4_t *a2, _OWORD *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a2->u8[0];
  if (!a2->i8[0])
  {
    sub_22FA0437C();
  }

  v5 = a2->u8[2];
  if (!v5)
  {
    sub_22FA04350();
  }

  v6 = a3;
  v7 = (a3 + 4 * ((v5 - 1) & 0xFFFFFFFC));
  *v7 = 0;
  v7[1] = 0;
  if (v3 == v5)
  {
    v8 = 0;
    v9 = result + 20;
    do
    {
      v10 = *v9->i8;
      v9 += 2;
      *v6++ = v10;
      v8 += 4;
    }

    while (v8 < v3);
  }

  else
  {
    v11 = 0;
    v12 = result->u8[0];
    v13 = result + 128;
    v14 = vdupq_lane_s32(result[128], 0);
    v15 = 5488;
    v16 = &a2[343];
    v17 = 19312;
    v18 = a2 + 1207;
    v19 = result + 20;
    v20 = vdupq_n_s32(0x2EDBE6FFu);
    do
    {
      v21 = &a2[339].f32[v11 / 4];
      v22 = vld1_dup_f32(v21);
      v22.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v22)));
      v23 = v22.u32[0];
      if (!v22.i32[0])
      {
        sub_22FA04324();
      }

      v24 = 0uLL;
      v25 = v17;
      v26 = v15;
      v27 = v20;
      do
      {
        v28 = (a2->f32 + v26);
        v29 = vld1_dup_f32(v28);
        v30 = vmovl_u16(*&vmovl_u8(v29));
        v31 = v30.u32[0];
        v32 = v30.u32[1];
        v33 = vextq_s8(v30, v30, 8uLL).u64[0];
        if (!v12)
        {
          v14.i32[0] = v13->i32[v31];
          v14.i32[1] = v13->i32[v32];
          v14.i32[2] = v13->i32[v33];
          v14.i32[3] = v13->i32[HIDWORD(v33)];
        }

        v34 = vmulq_f32(*(a2 + v25), v14);
        v35 = v19 + v33;
        v36 = v19 + BYTE4(v33);
        v37.i32[0] = v19->i32[v31];
        v37.i32[1] = v19->i32[v32];
        v37.i32[2] = *v35;
        v37.i32[3] = *v36;
        v27 = vaddq_f32(v27, v34);
        v38 = vmulq_f32(v34, v37);
        v24 = vaddq_f32(v24, v38);
        v25 += 256;
        v26 += 64;
        --v23;
      }

      while (v23);
      v39 = vdivq_f32(v24, v27);
      a3[v11 / 4] = v39;
      v11 += 4;
      v15 += 4;
      v17 += 16;
    }

    while (v11 < v5);
    v72 = v14;
    v73 = v5;
    if (a2->u8[1] >= 3u)
    {
      v42 = 0;
      v43 = v74;
      do
      {
        *v20.i64 = sub_22FA02864(a2, v6, v42, *v20.i8, *v39.f32, *v27.f32, *v38.f32);
        *v43++ = v20;
        v42 += 4;
      }

      while (v42 < v3);
    }

    else
    {
      v40 = 0;
      v41 = v74;
      do
      {
        *v20.i64 = sub_22FA0297C(a2, v6, v40, *v20.i8, *v39.f32);
        *v41++ = v20;
        v40 += 4;
      }

      while (v40 < v3);
    }

    v44 = 0;
    v45 = vdupq_n_s32(0x2EDBE6FFu);
    __asm
    {
      FMOV            V1.4S, #-16.0
      FMOV            V2.4S, #-0.25
      FMOV            V3.4S, #0.25
    }

    v53 = v72;
    do
    {
      v54 = &a2[339].f32[v44 / 4];
      v55 = vld1_dup_f32(v54);
      v55.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v55)));
      v56 = v55.u32[0];
      if (!v55.i32[0])
      {
        sub_22FA042F8();
      }

      v57 = 0uLL;
      v58 = v18;
      v59 = v16;
      v60 = v45;
      do
      {
        v61 = *v59;
        v59 += 16;
        v62 = vmovl_u16(*&vmovl_u8(vdup_n_s32(v61)));
        v63 = v62.u32[0];
        v64 = v62.u32[1];
        v65 = vextq_s8(v62, v62, 8uLL).u64[0];
        if (!v12)
        {
          v53.i32[0] = v13->i32[v63];
          v53.i32[1] = v13->i32[v64];
          v53.i32[2] = v13->i32[v65];
          v53.i32[3] = v13->i32[HIDWORD(v65)];
        }

        v66 = vmulq_f32(*v58, v53);
        v67 = v65;
        result = &v74[v65];
        v68 = BYTE4(v65);
        v69 = &v74[BYTE4(v65)];
        v70.i32[0] = v74[v63];
        v70.i32[1] = v74[v64];
        v70.i32[2] = result->i32[0];
        v70.i32[3] = *v69;
        v71.i32[0] = v19->i32[v63];
        v71.i32[1] = v19->i32[v64];
        v71.i32[2] = v19->i32[v67];
        v71.i32[3] = v19->i32[v68];
        v60 = vaddq_f32(v60, vmulq_f32(*v58, v66));
        v57 = vaddq_f32(v57, vmulq_f32(v66, vsubq_f32(v70, v71)));
        v58 += 16;
        --v56;
      }

      while (v56);
      v6[v44 / 4] = vaddq_f32(v6[v44 / 4], vminnmq_f32(vmaxnmq_f32(vdivq_f32(vmulq_f32(v57, _Q1), v60), _Q2), _Q3));
      v44 += 4;
      ++v16;
      ++v18;
    }

    while (v44 < v73);
  }

  return result;
}

uint64_t compute_quantized_weights_for_decimation(uint64_t result, float32x4_t *a2, float32x4_t *a3, uint64_t a4, unsigned int a5, float a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 2);
  if (!*(result + 2))
  {
    sub_22FA043A8();
  }

  v12 = (&quant_and_xfer_tables + 226 * a5);
  if (a5 > 0x14)
  {
    v13 = -1;
  }

  else
  {
    v13 = dword_22FA11860[a5];
  }

  v14 = vdupq_n_s32(v13);
  if (*&a7 > a6)
  {
    *&a11 = a6;
  }

  else
  {
    *&a7 = 1.0;
    *&a11 = 0.0;
  }

  v16 = *&a7 - *&a11;
  v17 = 1.0 / (*&a7 - *&a11);
  *&a7 = *&a11 * v17;
  v18 = vdupq_lane_s32(*&a7, 0);
  v15 = (&unk_22FA11830 + 4 * a5);
  v19 = vld1q_dup_f32(v15);
  v20 = v16 * 0.015625;
  v21 = vdupq_lane_s32(*&a11, 0);
  v22 = *v12;
  if (a5 - 9 >= 0xC)
  {
    v42 = 0;
    __asm { FMOV            V17.4S, #1.0 }

    v44.i64[0] = 0x100000001;
    v44.i64[1] = 0x100000001;
    v45.i64[0] = 0xFFFFFF00FFFFFF00;
    v45.i64[1] = 0xFFFFFF00FFFFFF00;
    v46.i64[0] = 0x4300000043000000;
    v46.i64[1] = 0x4300000043000000;
    do
    {
      v47 = *a2++;
      v48 = vminnmq_f32(vmaxnmq_f32(vsubq_f32(vmulq_n_f32(v47, v17), v18), 0), _Q17);
      v49 = vcvtq_s32_f32(vmulq_f32(v19, v48));
      v50 = vminq_s32(vaddq_s32(v49, v44), v14);
      v51 = vqtbl1q_s8(v22, vorrq_s8(v49, v45));
      v52 = vqtbl1q_s8(v22, vorrq_s8(v50, v45));
      v53 = vcvtq_f32_s32(v51);
      v54 = vcvtq_f32_s32(v52);
      v55 = vcgtq_f32(vmulq_f32(v48, v46), vaddq_f32(v53, v54));
      *a3++ = vaddq_f32(v21, vmulq_n_f32(vbslq_s8(v55, v54, v53), v20));
      *(a4 + v42) = vqtbl1q_s8(vbslq_s8(v55, v52, v51), xmmword_22FA11820).u32[0];
      v42 += 4;
    }

    while (v42 < v11);
  }

  else
  {
    v23 = 0;
    v24 = v12[1];
    __asm { FMOV            V17.4S, #1.0 }

    v30.i64[0] = 0x100000001;
    v30.i64[1] = 0x100000001;
    v31.i64[0] = 0xFFFFFF00FFFFFF00;
    v31.i64[1] = 0xFFFFFF00FFFFFF00;
    v32.i64[0] = 0x4300000043000000;
    v32.i64[1] = 0x4300000043000000;
    do
    {
      v33 = *a2++;
      v34 = vminnmq_f32(vmaxnmq_f32(vsubq_f32(vmulq_n_f32(v33, v17), v18), 0), _Q17);
      v35 = vcvtq_s32_f32(vmulq_f32(v19, v34));
      v36 = vminq_s32(vaddq_s32(v35, v30), v14);
      v37 = vqtbl2q_s8(*v22.i8, vorrq_s8(v35, v31));
      v38 = vqtbl2q_s8(*v22.i8, vorrq_s8(v36, v31));
      v39 = vcvtq_f32_s32(v37);
      v40 = vcvtq_f32_s32(v38);
      v41 = vcgtq_f32(vmulq_f32(v34, v32), vaddq_f32(v39, v40));
      *a3++ = vaddq_f32(v21, vmulq_n_f32(vbslq_s8(v41, v40, v39), v20));
      *(a4 + v23) = vqtbl1q_s8(vbslq_s8(v41, v38, v37), xmmword_22FA11820).u32[0];
      v23 += 4;
    }

    while (v23 < v11);
  }

  return result;
}

void *recompute_ideal_colors_1plane(float32x4_t *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, uint8x8_t a10, uint8x8_t a11)
{
  v123 = *MEMORY[0x277D85DE8];
  v13 = *(a3 + 2);
  if (!*(a3 + 2))
  {
    sub_22FA04458();
  }

  v15 = a1[219].u8[12];
  if (!a1[219].i8[12])
  {
    sub_22FA0442C();
  }

  v17 = *a2;
  if (!*a2)
  {
    sub_22FA04400();
  }

  v22 = 0;
  v23 = v122;
  v24 = vdupq_n_s32(0x3C800000u);
  do
  {
    v25 = (a4 + v22);
    v26 = vld1_dup_f32(v25);
    v27 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v26))), v24);
    *v23++ = v27;
    v22 += 4;
  }

  while (v22 < v13);
  v28 = *(a3 + 1);
  if (v28 == 1)
  {
    v29 = v122;
  }

  else
  {
    if (v28 >= 3)
    {
      v32 = 0;
      v33 = v121;
      do
      {
        *v24.i64 = sub_22FA02864(a3, v122, v32, *v24.f32, *v27.f32, a10, a11);
        *v33++ = v24;
        v32 += 4;
      }

      while (v32 < v15);
    }

    else
    {
      v30 = 0;
      v31 = v121;
      do
      {
        *v24.i64 = sub_22FA0297C(a3, v122, v30, *v24.f32, *v27.f32);
        *v31++ = v24;
        v30 += 4;
      }

      while (v30 < v15);
    }

    v29 = v121;
  }

  v34 = 0;
  v35 = vmulq_n_f32(a1[222], v15);
  v36 = (a2 + 120);
  v37 = a1 + 55;
  v38 = a1 + 110;
  v39 = a1 + 165;
  v40 = a5 + 16;
  v41 = a5 + 80;
  v42 = vdupq_n_s32(0x233877AAu);
  result = &unk_22FA11000;
  __asm { FMOV            V7.4S, #1.0 }

  v48 = vdupq_n_s32(0x38D1B717u);
  do
  {
    v49 = *(a2 + v34 + 4);
    if (v17 != 1)
    {
      if (!*(a2 + v34 + 4))
      {
        sub_22FA043D4();
      }

      v35 = 0uLL;
      v50 = *(a2 + v34 + 4);
      v51 = v36;
      do
      {
        v52 = *v51++;
        v53.i32[0] = a1->i32[v52];
        v53.i32[1] = v37->i32[v52];
        v53.i32[2] = v38->i32[v52];
        v53.i32[3] = v39->i32[v52];
        v35 = vaddq_f32(v35, v53);
        --v50;
      }

      while (v50);
    }

    v54 = a1[224];
    v35 = vmulq_f32(v35, v54);
    _Q21 = vmaxnmq_f32(vmulq_n_f32(v54, v49), v42);
    v56 = vdivq_f32(v35, _Q21);
    v56.i32[3] = 0;
    v57 = vmulq_f32(v56, v56);
    *v57.i8 = vadd_f32(*&vextq_s8(v57, v57, 8uLL), *v57.i8);
    v58 = vdivq_f32(v56, vsqrtq_f32(vdupq_lane_s32(vpadd_f32(*v57.i8, *v57.i8), 0)));
    v59 = COERCE_FLOAT(a1[224].i64[1]) + vaddv_f32(*v54.f32);
    if (*(a2 + v34 + 4))
    {
      v60 = 0;
      v61 = 0uLL;
      v62 = 1.0;
      v63 = 0.0;
      v64 = 1.0e-17;
      v65 = 1.0e10;
      v66 = 0.0;
      v12.i64[0] = 0;
      v67 = 0.0;
      v68 = 0.0;
      v69 = 0uLL;
      v70 = 0uLL;
      do
      {
        v71 = v36[v60];
        v11.i32[0] = a1->i32[v71];
        v11.i32[1] = v37->i32[v71];
        v11.i32[2] = v38->i32[v71];
        v72 = vmulq_f32(v58, v11);
        v73 = *&v29[4 * v71];
        v74.i32[3] = v39->i32[v71];
        v75 = 1.0 - v73;
        if (v73 < v62)
        {
          v62 = *&v29[4 * v71];
        }

        if (v73 > v66)
        {
          v66 = *&v29[4 * v71];
        }

        v76 = v72.f32[2] + vaddv_f32(*v72.f32);
        v12.f32[0] = v12.f32[0] + (v75 * v75);
        v67 = v67 + (v75 * v73);
        if (v76 < v65)
        {
          v65 = v76;
        }

        v68 = v68 + (v73 * v73);
        v64 = v64 + v73;
        v77 = vmulq_n_f32(v74, v73);
        v69 = vaddq_f32(v69, v77);
        v11 = vsubq_f32(v74, v77);
        v77.i32[3] = 0;
        if (v76 > v63)
        {
          v63 = v76;
        }

        v61 = vaddq_f32(v61, v11);
        *(v77.i64 + 4) = *&v29[4 * v71];
        v77.f32[0] = 1.0 - v73;
        v70 = vaddq_f32(v70, vmulq_n_f32(v77, v59 * v76));
        ++v60;
      }

      while (v49 != v60);
      v78 = v66 * 0.999;
    }

    else
    {
      v62 = 1.0;
      v68 = 0.0;
      v70.i64[0] = 0;
      v69 = 0uLL;
      v61 = 0uLL;
      v64 = 1.0e-17;
      v67 = 0.0;
      v12.i64[0] = 0;
      v78 = 0.0;
      v65 = 1.0e10;
      v63 = 0.0;
    }

    v79 = vmulq_f32(v54, v61);
    v80 = vmulq_f32(v54, v69);
    v81 = v65 / fmaxf(v63, 1.0e-10);
    v82 = fmaxf(v81, 0.0);
    if (v81 <= 1.0)
    {
      v83 = v82;
    }

    else
    {
      v83 = 1.0;
    }

    v84 = vmulq_n_f32(v58, v63);
    v85 = v84;
    v85.f32[3] = v83;
    *(a6 + 16 * v34) = v85;
    if (v62 >= v78)
    {
      v102 = vdivq_f32(vaddq_f32(v80, v79), _Q21);
      v103 = vceqq_f32(v102, v102);
      *(v40 + 16 * v34) = vbslq_s8(v103, v102, *(v40 + 16 * v34));
      *(v41 + 16 * v34) = vbslq_s8(v103, v102, *(v41 + 16 * v34));
      v84.i32[3] = 1.0;
      goto LABEL_44;
    }

    v86 = v12;
    v86.f32[1] = v67;
    v86.f32[2] = v68;
    _Q19 = vmulq_n_f32(v86, v59);
    v88 = vmulq_n_f32(v54, v68);
    v89 = vmulq_n_f32(v54, v67);
    v90 = vmulq_n_f32(v54, v12.f32[0]);
    v91 = vsubq_f32(vmulq_f32(v88, v90), vmulq_f32(v89, v89));
    v92 = vdivq_f32(_Q7, v91);
    _S11 = _Q19.i32[2];
    v94 = vmuls_lane_f32(-_Q19.f32[1], *_Q19.f32, 1) + (_Q19.f32[0] * _Q19.f32[2]);
    v95 = vaddq_f32(vmulq_f32(v88, v88), vaddq_f32(vmulq_f32(v90, v90), vmulq_f32(v89, vaddq_f32(v89, v89))));
    __asm { FMLA            S20, S11, V19.S[2] }

    v11 = vmulq_f32(v80, v89);
    v97 = vmulq_f32(vsubq_f32(vmulq_f32(v79, v88), v11), v92);
    v12 = vmulq_f32(vsubq_f32(vmulq_f32(v80, v90), vmulq_f32(v79, v89)), v92);
    v98 = vornq_s8(vmvnq_s8(vcgtq_f32(vmaxq_f32(v91, vsubq_f32(0, v91)), vmulq_f32(v95, v48))), vorrq_s8(vcgtq_f32(v12, v97), vcgeq_f32(v97, v12)));
    *(v40 + 16 * v34) = vbslq_s8(v98, *(v40 + 16 * v34), v97);
    *(v41 + 16 * v34) = vbslq_s8(v98, *(v41 + 16 * v34), v12);
    v99 = (vmuls_lane_f32(-_Q19.f32[1], *v70.f32, 1) + (_Q19.f32[2] * v70.f32[0])) * (1.0 / v94);
    v100 = ((-_Q19.f32[1] * v70.f32[0]) + (_Q19.f32[0] * v70.f32[1])) * (1.0 / v94);
    if (fabsf(v94) > (_S20 * 0.0001) && v99 < v100)
    {
      v84 = vmulq_n_f32(v58, v100);
      v84.f32[3] = v99 / v100;
LABEL_44:
      *(a6 + 16 * v34) = v84;
    }

    if (a1[225].u8[2] | a1[238].u8[10])
    {
      _Q27 = vmulq_n_f32(v54, v64);
      _S23 = v59 * v68;
      v106 = vaddq_f32(v80, v79);
      v106.f32[3] = v80.f32[2] + vaddv_f32(*v80.f32);
      v107 = vmulq_f32(_Q27, _Q27).f32[0];
      __asm
      {
        FMLA            S30, S23, V21.S[2]
        FMLA            S20, S30, V21.S[1]
      }

      v110.f32[0] = vmuls_lane_f32(*&_Q21.i32[2], *_Q27.f32, 1) * _Q27.f32[0];
      *v111.f32 = vmul_f32(vrev64_s32(*_Q21.i8), *_Q27.f32);
      *v112.f32 = vmul_laneq_f32(*v111.f32, _Q27, 2);
      v113 = vdupq_laneq_s32(_Q21, 2);
      v113.f32[0] = -*&_Q21.i32[2];
      v113.f32[1] = -*&_Q21.i32[2];
      v113.f32[2] = -_Q27.f32[2];
      v111.i32[2] = vmuls_lane_f32(*_Q21.i32, *_Q21.i8, 1);
      v111.i32[3] = v111.i32[2];
      v114 = vmulq_f32(v113, v111);
      v115 = vmulq_f32(_Q27, v114).f32[0];
      _Q20.i32[1] = v110.i32[0];
      _Q20.i64[1] = __PAIR64__(v114.u32[0], v112.u32[0]);
      v110.f32[1] = (-*&_Q21.i32[2] * v107) + (_S30 * *_Q21.i32);
      v110.i64[1] = __PAIR64__(v114.u32[1], v112.u32[1]);
      __asm { FMLA            S27, S23, V21.S[1] }

      v112.f32[2] = (-*&_Q21.i32[1] * v107) + (_Q27.f32[0] * *_Q21.i32);
      v112.i32[3] = v114.i32[2];
      v116 = vmulq_n_f32(v106, 1.0 / (v115 + (_Q20.f32[0] * *_Q21.i32)));
      v117 = vmulq_f32(_Q20, v116);
      *v117.i8 = vadd_f32(*&vextq_s8(v117, v117, 8uLL), *v117.i8);
      v118 = vmulq_f32(v110, v116);
      *v118.i8 = vadd_f32(*&vextq_s8(v118, v118, 8uLL), *v118.i8);
      v119 = vmulq_f32(v112, v116);
      *v119.i8 = vadd_f32(*&vextq_s8(v119, v119, 8uLL), *v119.i8);
      v120 = vmulq_f32(v114, v116);
      *v120.i8 = vadd_f32(*&vextq_s8(v120, v120, 8uLL), *v120.i8);
      *v116.f32 = vzip1_s32(vpadd_f32(*v117.i8, *v117.i8), vpadd_f32(*v118.i8, *v118.i8));
      v116.i64[1] = __PAIR64__(vpadd_f32(*v120.i8, *v120.i8).u32[0], vpadd_f32(*v119.i8, *v119.i8).u32[0]);
      *(a7 + 16 * v34) = v116;
    }

    ++v34;
    v36 += 216;
  }

  while (v34 != v17);
  return result;
}

void recompute_ideal_colors_2planes(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6, float32x4_t *a7, int8x16_t *a8, double a9, double a10, uint8x8_t a11, uint8x8_t a12, unsigned int a13)
{
  v147 = *MEMORY[0x277D85DE8];
  v17 = a1[219].u8[12];
  if (!a1[219].i8[12])
  {
    sub_22FA044DC();
  }

  v19 = *(a3 + 2);
  if (!*(a3 + 2))
  {
    sub_22FA044B0();
  }

  if (v19 > 0x20)
  {
    sub_22FA04484();
  }

  v23 = 0;
  v24 = 0;
  v25 = vdupq_n_s32(0x3C800000u);
  do
  {
    v26 = (a4 + v24);
    v27 = vld1_dup_f32(v26);
    *&v146[v23] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v27))), v25);
    v28 = (a5 + v24);
    v29 = vld1_dup_f32(v28);
    v30 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v29))), v25);
    *&v145[v23] = v30;
    v24 += 4;
    v23 += 16;
  }

  while (v24 < v19);
  v31 = *(a3 + 1);
  if (v31 == 1)
  {
    v32 = v146;
    v33 = v145;
  }

  else
  {
    v142 = a7;
    v34 = a8;
    if (v31 >= 3)
    {
      v39 = 0;
      v40 = 0;
      do
      {
        *&v41 = sub_22FA02864(a3, v146, v40, *v25.f32, *v30.f32, a11, a12);
        v32 = v144;
        *&v144[v39] = v41;
        *v25.i64 = sub_22FA02864(a3, v145, v40, *&v41, v42, v43, v44);
        v33 = v143;
        *&v143[v39] = v25;
        v40 += 4;
        v39 += 16;
      }

      while (v40 < v17);
    }

    else
    {
      v35 = 0;
      v36 = 0;
      do
      {
        *&v37 = sub_22FA0297C(a3, v146, v36, *v25.f32, *v30.f32);
        v32 = v144;
        *&v144[v35] = v37;
        *v25.i64 = sub_22FA0297C(a3, v145, v36, *&v37, v38);
        v33 = v143;
        *&v143[v35] = v25;
        v36 += 4;
        v35 += 16;
      }

      while (v36 < v17);
    }

    a8 = v34;
    a7 = v142;
  }

  v45 = *(a2 + 3);
  v46 = a1[224];
  v47 = vdupq_n_s32(0x233877AAu);
  v48 = a1[222];
  v48.i32[3] = 0;
  v49 = vmulq_f32(v48, v48);
  *v49.i8 = vadd_f32(*&vextq_s8(v49, v49, 8uLL), *v49.i8);
  v50 = vmulq_n_f32(v46, v45);
  v51 = vdivq_f32(v48, vsqrtq_f32(vdupq_lane_s32(vpadd_f32(*v49.i8, *v49.i8), 0)));
  v52 = vdupq_n_s32(a13);
  v53 = COERCE_FLOAT(a1[224].i64[1]) + vaddv_f32(*v46.f32);
  v54 = 1.0;
  if (*(a2 + 3))
  {
    v55 = vdupq_n_s32(0x233877AAu);
    v56 = 0uLL;
    v57 = 0.0;
    v58 = 1.0e10;
    v59 = vceqq_s32(v52, xmmword_22FA083F0);
    v60 = a1;
    v61 = 1.0;
    v62 = 0.0;
    v63 = 1.0;
    v64 = 0.0;
    v16.i64[0] = 0;
    v65 = 0.0;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0uLL;
    v71 = 0uLL;
    do
    {
      v13.i32[0] = *v60;
      v13.i32[1] = v60[220];
      v13.i32[2] = v60[440];
      v72 = *v32++;
      *v14.i32 = v72;
      v73 = vmulq_f32(v51, v13);
      v74 = 1.0 - v72;
      if (v72 < v61)
      {
        v61 = *v14.i32;
      }

      v13.i32[3] = v60[660];
      v75 = vaddv_f32(*v73.f32);
      v76 = *v33;
      v33 += 4;
      v15.i32[0] = v76;
      if (*v14.i32 > v62)
      {
        v62 = *v14.i32;
      }

      v67 = v67 + ((1.0 - *v15.i32) * (1.0 - *v15.i32));
      v68 = v68 + ((1.0 - *v15.i32) * *v15.i32);
      v77 = v73.f32[2] + v75;
      v78 = vbslq_s8(v59, vdupq_lane_s32(v15, 0), vdupq_lane_s32(v14, 0));
      v79 = vmulq_f32(v13, v78);
      v70 = vaddq_f32(v70, v79);
      v80 = vsubq_f32(v13, v79);
      if (v77 < v58)
      {
        v58 = v77;
      }

      v16.f32[0] = v16.f32[0] + (v74 * v74);
      v65 = v65 + (v74 * *v14.i32);
      if (v77 > v57)
      {
        v57 = v77;
      }

      v66 = v66 + (*v14.i32 * *v14.i32);
      if (*v15.i32 < v63)
      {
        v63 = *v15.i32;
      }

      v69 = v69 + (*v15.i32 * *v15.i32);
      v56 = vaddq_f32(v56, v80);
      if (*v15.i32 > v64)
      {
        v64 = *v15.i32;
      }

      v13 = vmulq_n_f32(__PAIR64__(v14.u32[0], LODWORD(v74)), v53 * v77);
      v71 = vaddq_f32(v71, v13);
      v55 = vaddq_f32(v55, v78);
      ++v60;
      --v45;
    }

    while (v45);
    v81 = v64 * 0.999;
  }

  else
  {
    v71.i64[0] = 0;
    v58 = 1.0e10;
    v70 = 0uLL;
    v55 = v47;
    v56 = 0uLL;
    v69 = 0.0;
    v68 = 0.0;
    v67 = 0.0;
    v66 = 0.0;
    v65 = 0.0;
    v16.i64[0] = 0;
    v81 = 0.0;
    v63 = 1.0;
    v57 = 0.0;
  }

  _Q16 = vmaxnmq_f32(v50, v47);
  v83 = vmulq_n_f32(v46, v66);
  v84 = vmulq_f32(v46, v56);
  v85 = vmulq_f32(v46, v70);
  v86 = v58 / fmaxf(v57, 1.0e-10);
  v87 = fmaxf(v86, 0.0);
  if (v86 <= 1.0)
  {
    v54 = v87;
  }

  v88 = vmulq_n_f32(v51, v57);
  v89 = v88;
  v89.f32[3] = v54;
  *a7 = v89;
  __asm { FMOV            V19.4S, #1.0 }

  if (_NF == _VF)
  {
    v110 = vdivq_f32(vaddq_f32(v85, v84), _Q16);
    v111 = vornq_s8(vceqq_s32(v52, xmmword_22FA083F0), vceqq_f32(v110, v110));
    a6[1] = vbslq_s8(v111, a6[1], v110);
    a6[5] = vbslq_s8(v111, a6[5], v110);
    v88.i32[3] = 1.0;
LABEL_42:
    *a7 = v88;
    goto LABEL_43;
  }

  v94 = v16;
  v94.f32[1] = v65;
  v94.f32[2] = v66;
  _Q24 = vmulq_n_f32(v94, v53);
  v96 = vmulq_n_f32(v46, v65);
  v97 = vmulq_n_f32(v46, v16.f32[0]);
  v98 = vsubq_f32(vmulq_f32(v83, v97), vmulq_f32(v96, v96));
  v99 = vdivq_f32(_Q19, v98);
  _S28 = _Q24.i32[2];
  v101 = vmuls_lane_f32(-_Q24.f32[1], *_Q24.f32, 1) + (_Q24.f32[0] * _Q24.f32[2]);
  v102 = vaddq_f32(vmulq_f32(v83, v83), vaddq_f32(vmulq_f32(v97, v97), vmulq_f32(v96, vaddq_f32(v96, v96))));
  __asm { FMLA            S29, S28, V24.S[2] }

  v104 = vmulq_f32(vsubq_f32(vmulq_f32(v84, v83), vmulq_f32(v85, v96)), v99);
  v105 = vmulq_f32(vsubq_f32(vmulq_f32(v85, v97), vmulq_f32(v84, v96)), v99);
  v106 = (vmuls_lane_f32(-_Q24.f32[1], *v71.f32, 1) + (_Q24.f32[2] * v71.f32[0])) * (1.0 / v101);
  v107 = ((-_Q24.f32[1] * v71.f32[0]) + (_Q24.f32[0] * v71.f32[1])) * (1.0 / v101);
  v108 = vorrq_s8(vornq_s8(vmvnq_s8(vorrq_s8(vcgtq_f32(v105, v104), vcgeq_f32(v104, v105))), vcgtq_f32(vmaxq_f32(v98, vsubq_f32(0, v98)), vmulq_f32(v102, vdupq_n_s32(0x38D1B717u)))), vceqq_s32(v52, xmmword_22FA083F0));
  a6[1] = vbslq_s8(v108, a6[1], v104);
  a6[5] = vbslq_s8(v108, a6[5], v105);
  _NF = fabsf(v101) > (_S29 * 0.0001) && v106 < v107;
  if (_NF)
  {
    v88 = vmulq_n_f32(v51, v107);
    v88.f32[3] = v106 / v107;
    goto LABEL_42;
  }

LABEL_43:
  v112 = vmulq_n_f32(v46, v69);
  if (v63 >= v81)
  {
    v122 = vdivq_f32(vaddq_f32(v85, v84), _Q16);
    v123 = vandq_s8(vceqq_f32(v122, v122), vceqq_s32(v52, xmmword_22FA083F0));
    a6[1] = vbslq_s8(v123, v122, a6[1]);
    v121 = vbslq_s8(v123, v122, a6[5]);
  }

  else
  {
    v113 = vmulq_n_f32(v46, v67);
    v114 = vmulq_n_f32(v46, v68);
    v115 = vsubq_f32(vmulq_f32(v112, v113), vmulq_f32(v114, v114));
    v116 = vdivq_f32(_Q19, v115);
    v117 = vaddq_f32(vmulq_f32(v112, v112), vaddq_f32(vmulq_f32(v113, v113), vmulq_f32(v114, vaddq_f32(v114, v114))));
    v118 = vmulq_f32(vsubq_f32(vmulq_f32(v84, v112), vmulq_f32(v85, v114)), v116);
    v119 = vmulq_f32(vsubq_f32(vmulq_f32(v85, v113), vmulq_f32(v84, v114)), v116);
    v120 = vandq_s8(vandq_s8(vorrq_s8(vcgtq_f32(v119, v118), vcgeq_f32(v118, v119)), vceqq_s32(v52, xmmword_22FA083F0)), vcgtq_f32(vmaxq_f32(v115, vsubq_f32(0, v115)), vmulq_f32(v117, vdupq_n_s32(0x38D1B717u))));
    a6[1] = vbslq_s8(v120, v118, a6[1]);
    v121 = vbslq_s8(v120, v119, a6[5]);
  }

  a6[5] = v121;
  if (a1[225].u8[2] | a1[238].u8[10])
  {
    v124 = vmulq_f32(v46, v55);
    v125 = vmulq_f32(v46, vbslq_s8(vceqq_s32(v52, xmmword_22FA083F0), v112, v83));
    _S1 = v125.f32[2] + vaddv_f32(*v125.f32);
    v127 = vaddq_f32(v85, v84);
    v127.f32[3] = v85.f32[2] + vaddv_f32(*v85.f32);
    v128 = vmulq_f32(v124, v124).f32[0];
    __asm
    {
      FMLA            S7, S1, V16.S[2]
      FMLA            S18, S7, V16.S[1]
    }

    *v131.f32 = vmul_f32(vrev64_s32(*_Q16.i8), *v124.f32);
    *v132.f32 = vmul_laneq_f32(*v131.f32, v124, 2);
    v133 = vdupq_laneq_s32(_Q16, 2);
    v133.f32[0] = -*&_Q16.i32[2];
    v133.f32[1] = -*&_Q16.i32[2];
    v133.f32[2] = -v124.f32[2];
    v131.i32[2] = vmuls_lane_f32(*_Q16.i32, *_Q16.i8, 1);
    v134.f32[0] = vmuls_lane_f32(*&_Q16.i32[2], *v124.f32, 1) * v124.f32[0];
    v131.i32[3] = v131.i32[2];
    v135 = vmulq_f32(v133, v131);
    _Q18.i32[1] = v134.i32[0];
    _Q18.i64[1] = __PAIR64__(v135.u32[0], v132.u32[0]);
    v134.f32[1] = (-*&_Q16.i32[2] * v128) + (_S7 * *_Q16.i32);
    v134.i64[1] = __PAIR64__(v135.u32[1], v132.u32[1]);
    __asm { FMLA            S6, S1, V16.S[1] }

    v132.f32[2] = (-*&_Q16.i32[1] * v128) + (_S6 * *_Q16.i32);
    v132.i32[3] = v135.i32[2];
    v137 = vmulq_n_f32(v127, 1.0 / (vmulq_f32(v124, v135).f32[0] + (_Q18.f32[0] * *_Q16.i32)));
    v138 = vmulq_f32(_Q18, v137);
    *v138.i8 = vadd_f32(*&vextq_s8(v138, v138, 8uLL), *v138.i8);
    v139 = vmulq_f32(v134, v137);
    *v139.i8 = vadd_f32(*&vextq_s8(v139, v139, 8uLL), *v139.i8);
    v140 = vmulq_f32(v132, v137);
    *v140.i8 = vadd_f32(*&vextq_s8(v140, v140, 8uLL), *v140.i8);
    v141 = vmulq_f32(v135, v137);
    *v141.i8 = vadd_f32(*&vextq_s8(v141, v141, 8uLL), *v141.i8);
    *v138.i8 = vzip1_s32(vpadd_f32(*v138.i8, *v138.i8), vpadd_f32(*v139.i8, *v139.i8));
    v138.i64[1] = __PAIR64__(vpadd_f32(*v141.i8, *v141.i8).u32[0], vpadd_f32(*v140.i8, *v140.i8).u32[0]);
    *a8 = v138;
  }
}

void init_partition_tables(uint64_t a1, double a2, uint32x2_t a3)
{
  sub_22FA045FC(a1, 1, 0, 0, a1 + 14710112, a2, a3);
  *(a1 + 32) = 1;
  *(a1 + 48) = 1;
  operator new[]();
}

BOOL sub_22FA045FC(unsigned __int8 *a1, signed int a2, int a3, int a4, uint64_t a5, double a6, uint32x2_t a7)
{
  v99 = a3;
  v103 = *MEMORY[0x277D85DE8];
  v9 = a1[3];
  v100 = (a5 + 16);
  v102 = 0uLL;
  v10 = a1[2];
  if (a1[2])
  {
    v11 = 0;
    v12 = 0;
    v13 = v9 < 0x20;
    v14 = 65537 * ((-287438703 * (a3 + (a2 << 10) - 1024)) ^ ((-287438703 * (a3 + (a2 << 10) - 1024)) >> 5));
    v15 = v14 ^ (v14 >> 7) ^ ((v14 ^ (v14 >> 7)) >> 3);
    v16 = v15 ^ (v15 << 6);
    v17 = v16 ^ (v16 >> 17);
    v18 = (v16 ^ (v16 >> 17)) >> 12;
    HIDWORD(v19) = v17;
    LODWORD(v19) = v17;
    v20 = (v17 & 0xF) * (v17 & 0xF);
    v21 = (v16 ^ (v16 >> 17)) >> 4;
    v22 = v21 * v21;
    v23 = ((v17 >> 8) & 0xF) * ((v17 >> 8) & 0xF);
    v24 = vdup_n_s32(v16);
    v25 = v18 * v18;
    a7.i32[0] = v16;
    v26 = vshl_u32(v24, 0xFFFFFFF0FFFFFFE8);
    v27 = vshl_u32(v24, 0xFFFFFFEEFFFFFFEALL);
    v24.i32[1] = v16 >> 20;
    v28 = vand_s8(v26, 0xF0000000FLL);
    v29.i32[0] = vshr_n_u32(a7, 0x1CuLL).u32[0];
    v29.i32[1] = vand_s8(v24, 0xF0000000FLL).i32[1];
    v30 = vand_s8(v27, 0xF0000000FLL);
    v31 = vmul_s32(v28, v28);
    v32 = vmul_s32(v29, v29);
    v33 = vmul_s32(v30, v30);
    v34 = ((v16 >> 26) & 0xF) * ((v16 >> 26) & 0xF);
    v35 = ((v19 >> 30) & 0xF) * ((v19 >> 30) & 0xF);
    if ((a3 & 2) != 0)
    {
      v36 = 4;
    }

    else
    {
      v36 = 5;
    }

    if (a2 == 3)
    {
      v37 = 6;
    }

    else
    {
      v37 = 5;
    }

    v38 = v17 >> 14;
    v39 = v17 >> 10;
    v40 = vshl_u32(vdup_n_s32(v17), 0xFFFFFFFAFFFFFFFELL);
    v41 = vdup_n_s32(a2);
    v42 = a5 + 240;
    v43 = a1[1];
    if (v99)
    {
      v44 = v36;
    }

    else
    {
      v44 = v37;
    }

    if (v99)
    {
      v36 = v37;
    }

    if ((v99 & 0x10) != 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = v36;
    }

    v46 = v20 >> v44;
    v47 = v22 >> v36;
    v48 = v23 >> v44;
    v49 = vshl_u32(v31, vneg_s32(vdup_n_s32(v44)));
    v50 = v25 >> v36;
    v51 = vshl_u32(v32, vneg_s32(vdup_n_s32(v36)));
    v52 = vshl_u32(v33, vneg_s32(vdup_n_s32(v45)));
    v53 = v34 >> v45;
    v54 = v35 >> v45;
    v55 = vcgt_s32(0x300000004, v41);
    v56 = a1[1];
    v57 = v100;
    do
    {
      if (v56)
      {
        v58 = 0;
        v59 = *a1;
        v60 = vmul_s32(v52, vdup_n_s32(v12 << v13));
        do
        {
          if (v59)
          {
            v61 = 0;
            v62 = vadd_s32(vmul_s32(v51, vdup_n_s32(v58 << v13)), v60);
            do
            {
              v63 = (v38 + v46 * (v61 << v13) + v47 * (v58 << v13) + v53 * (v12 << v13)) & 0x3F;
              v64 = vand_s8(vbic_s8(vadd_s32(vmla_s32(v40, v49, vdup_n_s32(v61 << v13)), v62), v55), 0x3F0000003FLL);
              if (a2 >= 2)
              {
                v65 = (v39 + v48 * (v61 << v13) + v50 * (v58 << v13) + v54 * (v12 << v13)) & 0x3F;
              }

              else
              {
                v65 = 0;
              }

              v66 = v64.u32[1];
              v67 = v64.i32[0];
              if (v63 < v65 || ((v68 = 0, v63 >= v64.i32[1]) ? (v69 = v63 >= v64.i32[0]) : (v69 = 0), !v69))
              {
                v70 = vcgt_u32(v64, vdup_n_s32(v65));
                if ((v70.i32[1] | v70.i32[0]))
                {
                  if (v66 >= v67)
                  {
                    v68 = 2;
                  }

                  else
                  {
                    v68 = 3;
                  }
                }

                else
                {
                  v68 = 1;
                }
              }

              v71 = v102.i32[v68];
              v102.i32[v68] = v71 + 1;
              *(v42 + 216 * v68 + v71) = v11++;
              *v57++ = v68;
              ++v61;
              v59 = *a1;
            }

            while (v61 < v59);
            v43 = a1[1];
          }

          ++v58;
        }

        while (v58 < v43);
        v10 = a1[2];
        v56 = v43;
      }

      ++v12;
    }

    while (v12 < v10);
  }

  if (a2)
  {
    v72 = 0;
    v73 = a5 + 255;
    do
    {
      v74 = v102.i32[v72];
      v75 = (v74 + 3) & 0xFFFFFFFC;
      if (v74 < v75)
      {
        v76 = 0;
        v77 = *(v74 + a5 + 240 + 216 * v72 - 1);
        v78 = v75 - v74;
        v79 = vdupq_n_s64(v78 - 1);
        v80 = v73 + v74;
        do
        {
          v81 = vdupq_n_s64(v76);
          v82 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_22FA07DE0)));
          if (vuzp1_s8(vuzp1_s16(v82, 14), 14).u8[0])
          {
            *(v80 + v76 - 15) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(v82, 14), 14).i8[1])
          {
            *(v80 + v76 - 14) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_22FA07DD0)))), 14).i8[2])
          {
            *(v80 + v76 - 13) = v77;
            *(v80 + v76 - 12) = v77;
          }

          v83 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_22FA08370)));
          if (vuzp1_s8(14, vuzp1_s16(v83, 14)).i32[1])
          {
            *(v80 + v76 - 11) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(v83, 14)).i8[5])
          {
            *(v80 + v76 - 10) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_22FA08360))))).i8[6])
          {
            *(v80 + v76 - 9) = v77;
            *(v80 + v76 - 8) = v77;
          }

          v84 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_22FA08350)));
          if (vuzp1_s8(vuzp1_s16(v84, 14), 14).u8[0])
          {
            *(v80 + v76 - 7) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(v84, 14), 14).i8[1])
          {
            *(v80 + v76 - 6) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_22FA08340)))), 14).i8[2])
          {
            *(v80 + v76 - 5) = v77;
            *(v80 + v76 - 4) = v77;
          }

          v85 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_22FA08330)));
          if (vuzp1_s8(14, vuzp1_s16(v85, 14)).i32[1])
          {
            *(v80 + v76 - 3) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(v85, 14)).i8[5])
          {
            *(v80 + v76 - 2) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_22FA08320))))).i8[6])
          {
            *(v80 + v76 - 1) = v77;
            *(v80 + v76) = v77;
          }

          v76 += 16;
        }

        while (((v78 + 15) & 0xFFFFFFFFFFFFFFF0) != v76);
      }

      ++v72;
      v73 += 216;
    }

    while (v72 != a2);
  }

  LOWORD(v86) = v102.i16[0];
  if (v102.i32[0])
  {
    v87 = a4;
    if (v102.i32[1])
    {
      if (v102.i32[2])
      {
        if (v102.i32[3])
        {
          v86 = 4;
        }

        else
        {
          v86 = 3;
        }

        v88 = v86;
      }

      else
      {
        LOWORD(v86) = 2;
        v88 = 2;
      }
    }

    else
    {
      LOWORD(v86) = 1;
      v88 = 1;
    }
  }

  else
  {
    v88 = 0;
    v87 = a4;
  }

  *a5 = v86;
  *(a5 + 2) = v99;
  v89 = &a1[32 * v87 + 14758384];
  v90 = &a1[24 * v87 + 14733808];
  v91 = &a1[16 * v87 + 14717424];
  if (a2 != 2)
  {
    v91 = 0;
  }

  if (a2 != 3)
  {
    v90 = v91;
  }

  if (a2 == 4)
  {
    v92 = v89;
  }

  else
  {
    v92 = v90;
  }

  v93 = vmovn_s32(v102);
  *(a5 + 4) = vuzp1_s8(v93, v93).u32[0];
  if (v92)
  {
    if (a2)
    {
      bzero(v92, 8 * a2);
    }

    if (a1[3])
    {
      v94 = 0;
      if (a1[3] >= 0x40u)
      {
        v95 = 64;
      }

      else
      {
        v95 = a1[3];
      }

      do
      {
        v96 = v100[a1[v94 + 14717360]];
        *(v92 + v96) |= 1 << v94++;
      }

      while (v95 != v94);
    }
  }

  return v88 == a2;
}

void sub_22FA04CE0(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v10 = a4 - 1;
  v29 = a1 + 32;
  *&a1[4 * v10 + 32] = 0;
  v31 = a1 + 48;
  *&a1[4 * v10 + 48] = 0;
  if (a2)
  {
    if (a4 > a3)
    {
      return;
    }

    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v28 = v11;
  bzero(v32, 0x400uLL);
  v14 = 0;
  v15 = 0;
  v30 = &a1[2048 * (a4 - 2) + 14711216];
  do
  {
    for (i = 0; i != 1024; ++i)
    {
      if (v15 == 1)
      {
        if (v32[i])
        {
          continue;
        }

        v17 = v14;
        v18 = sub_22FA045FC(a1, a4, i, v14, a5 + 1104 * v14, v12, v13);
LABEL_12:
        v19 = a1[3];
        v20 = a6 + 56 * v14;
        *(v20 + 48) = 0;
        v12 = 0.0;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *v20 = 0u;
        v33[0] = -1;
        v33[1] = -1;
        if (v19)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = *(a5 + 1104 * v17 + 16 + v22);
            v25 = *(v33 + v24);
            if (v25 < 0)
            {
              *(v33 + v24) = v23;
              v25 = v23++;
            }

            *(v20 + 8 * (v22++ >> 5)) |= v25 << (v21 & 0x3E);
            v21 += 2;
          }

          while (v19 != v22);
        }

        if (v14)
        {
          v26 = 0;
          while (1)
          {
            v27 = (a6 + 8 * v26);
            if (*v20 == *v27 && *(v20 + 8) == v27[1] && *(v20 + 16) == v27[2] && *(v20 + 24) == v27[3] && *(v20 + 32) == v27[4] && *(v20 + 40) == v27[5] && *(v20 + 48) == v27[6])
            {
              break;
            }

            v26 += 7;
            if (!--v17)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          if (v18)
          {
            if (v15)
            {
              continue;
            }

            *(v30 + 2 * i) = v14;
            ++*&v29[4 * v10];
            ++*&v31[4 * v10];
            v32[i] = 1;
LABEL_32:
            ++v14;
            continue;
          }
        }

        if (v15 != 1)
        {
          continue;
        }

        *(v30 + 2 * i) = v14;
        ++*&v31[4 * v10];
        goto LABEL_32;
      }

      v17 = v14;
      v18 = sub_22FA045FC(a1, a4, i, v14, a5 + 1104 * v14, v12, v13);
      if (v15 || v18)
      {
        goto LABEL_12;
      }
    }

    ++v15;
  }

  while (v15 != v28);
}

uint64_t unpack_weights(uint64_t result, _OWORD *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13, int32x4_t a14)
{
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  if (a4)
  {
    if (*(result + 3))
    {
      v18 = 0;
      v19 = a3 + 16;
      do
      {
        v20 = (v19 + v18);
        v21 = vld1_dup_f32(v20);
        v21.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v21)));
        v22 = v21.u32[0];
        if (v21.i32[0] < 1)
        {
          sub_22FA06218();
        }

        v23.i64[0] = 0x800000008;
        v23.i64[1] = 0x800000008;
        v24 = a3;
        v25.i64[0] = 0x800000008;
        v25.i64[1] = 0x800000008;
        do
        {
          a13.i32[0] = *(v24 + 240);
          a14.i32[0] = *(v24 + 1104);
          a14 = vmovl_u16(*&vmovl_u8(*a14.i8));
          v26 = vmovl_s16((vmovl_u8(*a13.i8).u64[0] | 0xFF00FF00FF00FF00));
          v23 = vmlaq_s32(v23, a14, vqtbl2q_s8(*&v14, v26));
          a13 = vqtbl2q_s8(*&v16, v26);
          v25 = vmlaq_s32(v25, a14, a13);
          v24 += 216;
          --v22;
        }

        while (v22);
        v27 = 4 * v18;
        *(a5 + v27) = vshrq_n_u32(v23, 4uLL);
        *(a6 + v27) = vshrq_n_u32(v25, 4uLL);
        v18 += 4;
        a3 += 4;
      }

      while (v18 < *(result + 3));
    }
  }

  else if (*(result + 3))
  {
    v28 = 0;
    v29 = a3 + 16;
    do
    {
      v30 = (v29 + v28);
      v31 = vld1_dup_f32(v30);
      v31.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v31)));
      v32 = v31.u32[0];
      if (v31.i32[0] < 1)
      {
        sub_22FA061EC();
      }

      v33.i64[0] = 0x800000008;
      v33.i64[1] = 0x800000008;
      v34 = a3;
      do
      {
        a12.i32[0] = *(v34 + 240);
        a13.i32[0] = *(v34 + 1104);
        a13 = vmovl_u16(*&vmovl_u8(*a13.i8));
        a12 = vqtbl4q_s8(*&v14, vmovl_s16((vmovl_u8(*a12.i8).u64[0] | 0xFF00FF00FF00FF00)));
        v33 = vmlaq_s32(v33, a13, a12);
        v34 += 216;
        --v32;
      }

      while (v32);
      *(a5 + 4 * v28) = vshrq_n_u32(v33, 4uLL);
      v28 += 4;
      a3 += 4;
    }

    while (v28 < *(result + 3));
  }

  return result;
}

void decompress_symbolic_block(int a1, uint64_t a2, int a3, int a4, int a5, unsigned __int8 *a6, uint64_t a7, double a8, int32x2_t a9, double a10, int32x2_t a11)
{
  v11 = a7;
  v131 = *MEMORY[0x277D85DE8];
  *(a7 + 4036) = a3;
  *(a7 + 4040) = a4;
  *(a7 + 4044) = a5;
  *(a7 + 3600) = 0;
  *(a7 + 3536) = 0u;
  *(a7 + 3552) = 0u;
  *(a7 + 3568) = 0u;
  v14 = *a6;
  if (v14 == 2)
  {
    a9.i32[0] = 0;
    v20 = *(a6 + 20);
    a11.i32[0] = a1;
    v21 = vand_s8(vdup_lane_s32(vceq_s32(a11, a9), 0), 0xFFFFFFFFFFFFLL);
    v22 = vshrq_n_s32(v20, 8uLL);
    v23 = vdupq_n_s32(0x101u);
    if (*(a7 + 3601))
    {
      v24 = -1;
    }

    else
    {
      v24 = 0;
    }

    v25 = vbslq_s8(vmovl_s16(vorr_s8(v21, vdup_n_s16(v24))), vmulq_s32(v22, v23), v20);
    v26.i64[0] = 0x9E0000009ELL;
    v26.i64[1] = 0x9E0000009ELL;
    v27.i64[0] = 0x2000000020;
    v27.i64[1] = 0x2000000020;
    v28 = vminq_s32(vmaxq_s32(vsubq_s32(v26, vshrq_n_u32(vcvtq_f32_s32(vbicq_s8(v25, vshrq_n_u32(v25, 8uLL))), 0x17uLL)), 0), v27);
    v29.i64[0] = 0xE0000000ELL;
    v29.i64[1] = 0xE0000000ELL;
    v30 = vaddq_s32(v28, v29);
    {
      v123 = v28;
      v125 = v25;
      v121 = v30;
      sub_22F9F25EC();
      v30 = v121;
      v28 = v123;
      v25 = v125;
    }

    v31.i64[0] = 0x1F0000001FLL;
    v31.i64[1] = 0x1F0000001FLL;
    v32 = vcgtq_s32(v31, v30);
    v33.i64[0] = 0x100000001;
    v33.i64[1] = 0x100000001;
    if (vaddvq_s32(vshlq_u32(vandq_s8(v32, v33), mask(vmask4)::shift)) != 15)
    {
      sub_22F9FF204();
    }

    v19 = 0;
    v34.i64[0] = 0x300000003;
    v34.i64[1] = 0x300000003;
    v35.i64[0] = 0xFFFF0000FFFFLL;
    v35.i64[1] = 0xFFFF0000FFFFLL;
    v36 = vceqq_s32(v25, v35);
    v37.i64[0] = 0x7000000070;
    v37.i64[1] = 0x7000000070;
    v38 = vshrq_n_u32(vandq_s8(vmulq_s32(vcvtq_s32_f32(vshlq_n_s32(vaddq_s32(v28, v37), 0x17uLL)), v25), v35), 6uLL);
    v37.i64[0] = 0x1E0000001ELL;
    v37.i64[1] = 0x1E0000001ELL;
    v39 = vorrq_s8(vshlq_n_s32(vsubq_s32(v37, v28), 0xAuLL), v38);
    v37.i64[0] = 0x3C0000003C00;
    v37.i64[1] = 0x3C0000003C00;
    v18 = vbslq_s8(vcgtq_s32(v25, v34), vbslq_s8(v36, v37, v39), vshlq_n_s32(v25, 8uLL));
    goto LABEL_17;
  }

  if (v14 != 1)
  {
    if (*a6)
    {
      v41 = a6[1];
      v42 = sub_22F9F1DD0(a2, a6[1], *(a6 + 3));
      v51 = *(a2 + 2 * *(a6 + 2) + 11302240);
      if (v51 == 0xFFFF || *(a2 + 28) <= v51)
      {
        sub_22F9F2878();
      }

      v53 = v42;
      unpack_weights(a2, a6, a2 + 129904 * *(a2 + 6 * v51 + 11306338) + 592, *(a2 + 6 * v51 + 11306341) & 1, v130, v129, v43, v44, v45, v46, v47, v48, v49, v50);
      if (v41)
      {
        v54.i32[0] = 0;
        v57 = 0;
        v58 = vdupq_n_s32(a6[3]);
        v55.i32[0] = a1;
        v59 = vand_s8(vdup_lane_s32(vceq_s32(v55, v54), 0), 0xFFFFFFFFFFFFLL);
        if (*(v11 + 3601))
        {
          v60 = -1;
        }

        else
        {
          v60 = 0;
        }

        v61 = xmmword_22FA083F0;
        v62 = vshlq_n_s32(vmovl_u16(vorr_s8(v59, vdup_n_s16(v60))), 0x1FuLL);
        v117 = v53 + 4;
        v63 = (v53 + 240);
        v116 = v41;
        v119 = vdupq_n_s32(0x101u);
        v120 = vceqq_s32(v58, xmmword_22FA083F0);
        v118 = vcltzq_s32(v62);
        do
        {
          v124 = v63;
          v126 = 0;
          unpack_color_endpoints(a1, a6[v57 + 8], &a6[8 * v57 + 20], &v126 + 1, &v126, &v128, &v127, v62, v58, v61, v56);
          v64.i64[0] = 0x7B0000007BLL;
          v64.i64[1] = 0x7B0000007BLL;
          v65.i64[0] = 0x500000005;
          v65.i64[1] = 0x500000005;
          v66.i64[0] = 0x100000001;
          v66.i64[1] = 0x100000001;
          v67.i64[0] = 0x100000001;
          v67.i64[1] = 0x100000001;
          v68.i64[0] = 0x700000007;
          v68.i64[1] = 0x700000007;
          v69.i64[0] = 0x3C0000003C00;
          v69.i64[1] = 0x3C0000003C00;
          v70.i64[0] = 0x1E0000001ELL;
          v70.i64[1] = 0x1E0000001ELL;
          v71.i64[0] = 0x7000000070;
          v71.i64[1] = 0x7000000070;
          v72.i64[0] = 0xFFFF0000FFFFLL;
          v72.i64[1] = 0xFFFF0000FFFFLL;
          v73.i64[0] = 0x300000003;
          v73.i64[1] = 0x300000003;
          v74.i64[0] = 0x100000001;
          v74.i64[1] = 0x100000001;
          v75.i64[0] = 0x1F0000001FLL;
          v75.i64[1] = 0x1F0000001FLL;
          v76.i64[0] = 0xE0000000ELL;
          v76.i64[1] = 0xE0000000ELL;
          v77 = v124;
          v78 = 0uLL;
          v79.i64[0] = 0x9E0000009ELL;
          v79.i64[1] = 0x9E0000009ELL;
          v81 = v118;
          v80 = v119;
          v82.i64[0] = 0x2000000020;
          v82.i64[1] = 0x2000000020;
          v83.i64[0] = 0x4000000040;
          v83.i64[1] = 0x4000000040;
          v84 = v120;
          v85 = *(v117 + v57);
          if (*(v117 + v57))
          {
            v62.n128_u8[0] = HIBYTE(v126);
            v86 = v62.n128_u64[0];
            v86.i8[2] = v126;
            v87 = vzip1_s16(v86, v86);
            v87.i16[2] = v62.n128_u16[0];
            v88 = vmovl_u16(vand_s8(v87, 0x1000100010001));
            v89 = vcltzq_s32(vshlq_n_s32(vmovl_u16(v87), 0x1FuLL));
            v90 = v124;
            do
            {
              v92 = *v90++;
              v91 = v92;
              v93 = &v130[v92];
              v94 = vld1q_dup_f32(v93);
              v95 = &v129[v92];
              v96 = vld1q_dup_f32(v95);
              v61 = v127;
              v56 = v128;
              {
                v112 = v61;
                v115 = v94;
                v110 = v96;
                v111 = v56;
                sub_22F9F26A8();
                v96 = v110;
                v56 = v111;
                v61 = v112;
                v94 = v115;
                v64.i64[0] = 0x7B0000007BLL;
                v64.i64[1] = 0x7B0000007BLL;
                v65.i64[0] = 0x500000005;
                v65.i64[1] = 0x500000005;
                v66.i64[0] = 0x100000001;
                v66.i64[1] = 0x100000001;
                v67.i64[0] = 0x100000001;
                v67.i64[1] = 0x100000001;
                v68.i64[0] = 0x700000007;
                v68.i64[1] = 0x700000007;
                v69.i64[0] = 0x3C0000003C00;
                v69.i64[1] = 0x3C0000003C00;
                v70.i64[0] = 0x1E0000001ELL;
                v70.i64[1] = 0x1E0000001ELL;
                v71.i64[0] = 0x7000000070;
                v71.i64[1] = 0x7000000070;
                v72.i64[0] = 0xFFFF0000FFFFLL;
                v72.i64[1] = 0xFFFF0000FFFFLL;
                v73.i64[0] = 0x300000003;
                v73.i64[1] = 0x300000003;
                v74.i64[0] = 0x100000001;
                v74.i64[1] = 0x100000001;
                v75.i64[0] = 0x1F0000001FLL;
                v75.i64[1] = 0x1F0000001FLL;
                v76.i64[0] = 0xE0000000ELL;
                v76.i64[1] = 0xE0000000ELL;
                v77 = v124;
                v78 = 0uLL;
                v79.i64[0] = 0x9E0000009ELL;
                v79.i64[1] = 0x9E0000009ELL;
                v81 = v118;
                v80 = v119;
                v82.i64[0] = 0x2000000020;
                v82.i64[1] = 0x2000000020;
                v83.i64[0] = 0x4000000040;
                v83.i64[1] = 0x4000000040;
                v84 = v120;
              }

              v97 = vbslq_s8(v84, v96, v94);
              v98 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v83, v97), v56), v97, v61), v82), 6uLL);
              v58 = vmulq_s32(vshrq_n_s32(v98, 8uLL), v80);
              v99 = vbslq_s8(v81, v58, v98);
              if (vaddvq_s32(vshlq_u32(v88, mask(vmask4)::shift)))
              {
                v100 = vandq_s8(v99, v68);
                v101 = vmovn_s32(v100);
                v61 = vshrq_n_u32(v99, 0xBuLL);
                v56 = vmull_u16(v101, 0x3000300030003);
                v102.i64[0] = 0x700000007;
                v102.i64[1] = 0x700000007;
                v103 = vbslq_s8(vcgtq_u32(v100, v67), vbslq_s8(vcgtq_u32(v100, v65), vmlal_u16(v102, v101, 0x5000500050005), vaddq_s32(vshlq_n_s32(v100, 2uLL), v66)), v56);
                v58 = vshlq_n_s32(v61, 0xAuLL);
                v104 = vminq_s32(vorrq_s8(vshrq_n_u32(v103, 3uLL), v58), v64);
              }

              else
              {
                v104 = 0uLL;
              }

              {
                v113 = v104;
                sub_22F9F26A8();
                v104 = v113;
                v64.i64[0] = 0x7B0000007BLL;
                v64.i64[1] = 0x7B0000007BLL;
                v65.i64[0] = 0x500000005;
                v65.i64[1] = 0x500000005;
                v66.i64[0] = 0x100000001;
                v66.i64[1] = 0x100000001;
                v67.i64[0] = 0x100000001;
                v67.i64[1] = 0x100000001;
                v68.i64[0] = 0x700000007;
                v68.i64[1] = 0x700000007;
                v69.i64[0] = 0x3C0000003C00;
                v69.i64[1] = 0x3C0000003C00;
                v70.i64[0] = 0x1E0000001ELL;
                v70.i64[1] = 0x1E0000001ELL;
                v71.i64[0] = 0x7000000070;
                v71.i64[1] = 0x7000000070;
                v72.i64[0] = 0xFFFF0000FFFFLL;
                v72.i64[1] = 0xFFFF0000FFFFLL;
                v73.i64[0] = 0x300000003;
                v73.i64[1] = 0x300000003;
                v74.i64[0] = 0x100000001;
                v74.i64[1] = 0x100000001;
                v75.i64[0] = 0x1F0000001FLL;
                v75.i64[1] = 0x1F0000001FLL;
                v76.i64[0] = 0xE0000000ELL;
                v76.i64[1] = 0xE0000000ELL;
                v77 = v124;
                v78 = 0uLL;
                v79.i64[0] = 0x9E0000009ELL;
                v79.i64[1] = 0x9E0000009ELL;
                v81 = v118;
                v80 = v119;
                v82.i64[0] = 0x2000000020;
                v82.i64[1] = 0x2000000020;
                v83.i64[0] = 0x4000000040;
                v83.i64[1] = 0x4000000040;
                v84 = v120;
              }

              v105 = 0uLL;
              if (vaddvq_s32(vshlq_u32(v88, mask(vmask4)::shift)) != 15)
              {
                {
                  v114 = v104;
                  sub_22F9F26A8();
                  v104 = v114;
                  v64.i64[0] = 0x7B0000007BLL;
                  v64.i64[1] = 0x7B0000007BLL;
                  v65.i64[0] = 0x500000005;
                  v65.i64[1] = 0x500000005;
                  v66.i64[0] = 0x100000001;
                  v66.i64[1] = 0x100000001;
                  v67.i64[0] = 0x100000001;
                  v67.i64[1] = 0x100000001;
                  v68.i64[0] = 0x700000007;
                  v68.i64[1] = 0x700000007;
                  v69.i64[0] = 0x3C0000003C00;
                  v69.i64[1] = 0x3C0000003C00;
                  v70.i64[0] = 0x1E0000001ELL;
                  v70.i64[1] = 0x1E0000001ELL;
                  v71.i64[0] = 0x7000000070;
                  v71.i64[1] = 0x7000000070;
                  v72.i64[0] = 0xFFFF0000FFFFLL;
                  v72.i64[1] = 0xFFFF0000FFFFLL;
                  v73.i64[0] = 0x300000003;
                  v73.i64[1] = 0x300000003;
                  v74.i64[0] = 0x100000001;
                  v74.i64[1] = 0x100000001;
                  v75.i64[0] = 0x1F0000001FLL;
                  v75.i64[1] = 0x1F0000001FLL;
                  v76.i64[0] = 0xE0000000ELL;
                  v76.i64[1] = 0xE0000000ELL;
                  v77 = v124;
                  v78 = 0uLL;
                  v79.i64[0] = 0x9E0000009ELL;
                  v79.i64[1] = 0x9E0000009ELL;
                  v81 = v118;
                  v80 = v119;
                  v82.i64[0] = 0x2000000020;
                  v82.i64[1] = 0x2000000020;
                  v83.i64[0] = 0x4000000040;
                  v83.i64[1] = 0x4000000040;
                  v84 = v120;
                }

                v106 = vminq_s32(vmaxq_s32(vsubq_s32(v79, vshrq_n_u32(vcvtq_f32_s32(vbicq_s8(v99, vshrq_n_u32(v99, 8uLL))), 0x17uLL)), v78), v82);
                if (vaddvq_s32(vshlq_u32(vandq_s8(vcgtq_s32(v75, vaddq_s32(v106, v76)), v74), mask(vmask4)::shift)) != 15)
                {
                  sub_22F9FF204();
                }

                v58 = vshlq_n_s32(v99, 8uLL);
                v61 = vcgtq_s32(v99, v73);
                v56 = vceqq_s32(v99, v72);
                v105 = vbslq_s8(v61, vbslq_s8(v56, v69, vorrq_s8(vshlq_n_s32(vsubq_s32(v70, v106), 0xAuLL), vshrq_n_u32(vandq_s8(vmulq_s32(vcvtq_s32_f32(vshlq_n_s32(vaddq_s32(v106, v71), 0x17uLL)), v99), v72), 6uLL))), v58);
              }

              v62 = vcvtq_f32_f16(vmovn_s32(vbslq_s8(v89, v104, v105)));
              *(v11 + 4 * v91) = v62.n128_u32[0];
              *(v11 + 880 + 4 * v91) = v62.n128_u32[1];
              *(v11 + 1760 + 4 * v91) = v62.n128_u32[2];
              *(v11 + 2640 + 4 * v91) = v62.n128_u32[3];
              --v85;
            }

            while (v85);
          }

          ++v57;
          v63 = v77 + 216;
        }

        while (v57 != v116);
      }
    }

    else if (*(a2 + 3))
    {
      v15 = (a7 + 3602);
      v16 = 3818;
      do
      {
        *v11 = -8192;
        *(v11 + 880) = -8192;
        *(v11 + 1760) = -8192;
        *(v11 + 2640) = -8192;
        *v15 = 0;
        v15[216] = 0;
        v11 += 4;
        v17 = v16 - 3817;
        ++v16;
        ++v15;
      }

      while (v17 < *(a2 + 3));
    }

    return;
  }

  if ((a1 & 0xFFFFFFFE) == 2)
  {
    v18 = *(a6 + 20);
    v19 = 1;
LABEL_17:
    v40 = vcvtq_f32_f16(vmovn_s32(v18));
    goto LABEL_46;
  }

  v19 = 0;
  v40.i64[0] = 0x1F0000001FLL;
  v40.i64[1] = 0x1F0000001FLL;
LABEL_46:
  if (*(a2 + 3))
  {
    v107 = (v11 + 3602);
    v108 = 3818;
    do
    {
      *v11 = v40.i32[0];
      *(v11 + 880) = v40.i32[1];
      *(v11 + 1760) = v40.i32[2];
      *(v11 + 2640) = v40.i32[3];
      *v107 = v19;
      v107[216] = v19;
      v11 += 4;
      v109 = v108 - 3817;
      ++v108;
      ++v107;
    }

    while (v109 < *(a2 + 3));
  }
}

float32_t compute_symbolic_block_difference_2plane(int *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, double a5, double a6, double a7, double a8, double a9, int32x4_t a10, int32x4_t a11, int32x4_t a12)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    return 1.0e30;
  }

  if (*(a3 + 1) != 1)
  {
    sub_22FA06244();
  }

  v14 = *(a2 + 2 * *(a3 + 4) + 11302240);
  if (v14 == 0xFFFF || *(a2 + 28) <= v14)
  {
    sub_22F9F2878();
  }

  if ((*(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11302240) + 11306341) & 1) == 0)
  {
    sub_22FA06270();
  }

  unpack_weights(a2, a3, a2 + 129904 * *(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11302240) + 11306338) + 592, 1, v58, v57, a5, a6, a7, a8, a9, a10, a11, a12);
  v18 = *(a3 + 3);
  v54 = 0;
  unpack_color_endpoints(*a1, *(a3 + 8), (a3 + 20), &v54 + 1, &v54, &v56, &v55, v19, v20, v21, v22);
  v25 = *(a2 + 3);
  if (*(a2 + 3))
  {
    v23.i32[0] = 0;
    v26 = vdupq_n_s32(v18);
    v24.i32[0] = *a1;
    v27 = vand_s8(vdup_lane_s32(vceq_s32(v24, v23), 0), 0xFFFFFFFFFFFFLL);
    if (a4[225].i8[1])
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    v30 = vdup_n_s16(v28);
    v29 = vorr_s8(v27, v30);
    v30.i32[0] = a1[10];
    v31 = a4[224];
    v32 = vdupq_lane_s32(v30, 0).u64[0];
    v33 = v58;
    v34 = v57;
    v35 = vceqq_s32(v26, xmmword_22FA083F0);
    v36.i64[0] = 0x4000000040;
    v36.i64[1] = 0x4000000040;
    v37.i64[0] = 0x2000000020;
    v37.i64[1] = 0x2000000020;
    v38 = vdupq_n_s32(0x101u);
    v39 = vcltzq_s32(vshlq_n_s32(vmovl_u16(v29), 0x1FuLL));
    v40 = vdupq_n_s32(0x58635FA9u);
    v41 = vdupq_n_s32(0x7149F2CAu);
    result = -1.0e30;
    v43 = 0uLL;
    do
    {
      v44 = vld1q_dup_f32(v33++);
      v48 = vld1q_dup_f32(v34++);
      v45 = vbslq_s8(v35, v48, v44);
      v46 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v36, v45), v56), v45, v55), v37), 6uLL);
      v47 = vcvtq_f32_s32(vbslq_s8(v39, vmulq_s32(vshrq_n_s32(v46, 8uLL), v38), v46));
      v48.i32[0] = a4->i32[0];
      v49 = a4[165].f32[0];
      if ((a1[1] & 0x40) != 0)
      {
        if (v47.f32[3] == 0.0)
        {
          return result;
        }

        *&v50 = vmuls_lane_f32(v47.f32[3], v47, 2) * *v30.i32;
        v47.i64[0] = vmulq_n_f32(vmulq_laneq_f32(v47, v47, 3), *v30.i32).u64[0];
        v47.i64[1] = __PAIR64__(1.0, v50);
        v48.i32[1] = a4[55].i32[0];
        *v48.f32 = vmul_f32(vmul_n_f32(*v48.f32, v49), v32);
        v48.f32[2] = (a4[110].f32[0] * v49) * *v30.i32;
        v48.i32[3] = 1.0;
      }

      else
      {
        v48.i32[1] = a4[55].i32[0];
        v48.i32[2] = a4[110].i32[0];
        v48.i32[3] = a4[165].i32[0];
      }

      v51 = vsubq_f32(v48, v47);
      v52 = vminnmq_f32(vmaxq_f32(v51, vsubq_f32(0, v51)), v40);
      v53 = vmulq_f32(vmulq_f32(v52, v52), v31);
      *v53.i8 = vadd_f32(*&vextq_s8(v53, v53, 8uLL), *v53.i8);
      v43 = vaddq_f32(v43, vminnmq_f32(vdupq_lane_s32(vpadd_f32(*v53.i8, *v53.i8), 0), v41));
      a4 = (a4 + 4);
      --v25;
    }

    while (v25);
  }

  else
  {
    v43.i32[0] = 0;
  }

  return v43.f32[0];
}

double compute_symbolic_block_difference_1plane(int *a1, uint64_t a2, uint64_t a3, int32x4_t *a4, float32x4_t a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2 + 11302240;
  v6 = *(a2 + 11302240 + 2 * *(a3 + 4));
  if (v6 == 0xFFFF || *(a2 + 28) <= v6)
  {
    sub_22F9F2878();
  }

  if (*(a2 + 11306336 + 6 * *(a2 + 11302240 + 2 * *(a3 + 4)) + 5))
  {
    sub_22FA0629C();
  }

  if (*a3)
  {
    v11 = *(a3 + 1);
    v12 = sub_22F9F1DD0(a2, *(a3 + 1), *(a3 + 6));
    v21 = *(v5 + 2 * *(a3 + 4));
    if (v21 == 0xFFFF || *(a2 + 28) <= v21)
    {
      sub_22F9F2878();
    }

    v23 = v12;
    unpack_weights(a2, a3, a2 + 129904 * *(a2 + 11306336 + 6 * *(v5 + 2 * *(a3 + 4)) + 2) + 592, 0, v61, 0, v13, v14, v15, v16, v17, v18, v19, v20);
    if (!v11)
    {
      a5.i64[0] = 0;
      return *a5.i64;
    }

    v24.i32[0] = 0;
    v28 = 0;
    v25.i32[0] = *a1;
    v29 = vand_s8(vdup_lane_s32(vceq_s32(*v25.i8, v24), 0), 0xFFFFFFFFFFFFLL);
    v30 = v23 + 4;
    v31 = (v23 + 240);
    if (a4[225].i8[1])
    {
      v32 = -1;
    }

    else
    {
      v32 = 0;
    }

    *v25.i8 = vdup_n_s16(v32);
    v33 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(v29, *v25.i8)), 0x1FuLL));
    a5 = 0uLL;
    v55 = vdupq_n_s32(0x58635FA9u);
    v56 = vdupq_n_s32(0x101u);
    v53 = v33;
    v54 = vdupq_n_s32(0x7149F2CAu);
    do
    {
      v57 = a5;
      v58 = 0;
      unpack_color_endpoints(*a1, *(a3 + 8 + v28), (a3 + 20 + 8 * v28), &v58 + 1, &v58, &v60, &v59, a5, v25, v26, v27);
      v34 = *(v30 + v28);
      if (*(v30 + v28))
      {
        v25 = v59;
        v26.i32[0] = a1[10];
        v27 = a4[224];
        v35 = vdupq_lane_s32(*v26.i8, 0).u64[0];
        v36 = v31;
        a5 = v57;
        v37.i64[0] = 0x4000000040;
        v37.i64[1] = 0x4000000040;
        v38.i64[0] = 0x2000000020;
        v38.i64[1] = 0x2000000020;
        while (1)
        {
          v39 = *v36++;
          v40 = &v61[v39];
          v41 = vld1q_dup_f32(v40);
          v42 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v37, v41), v60), v41, v59), v38), 6uLL);
          v43 = vcvtq_f32_s32(vbslq_s8(v53, vmulq_s32(vshrq_n_s32(v42, 8uLL), v56), v42));
          v44.i32[0] = a4->i32[v39];
          v45 = a4[55].i32[v39];
          v46 = *&a4[110].i32[v39];
          v47 = *&a4[165].i32[v39];
          if ((a1[1] & 0x40) != 0)
          {
            if (v43.f32[3] == 0.0)
            {
              a5.i32[0] = -246811958;
              return *a5.i64;
            }

            v48 = vmuls_lane_f32(v43.f32[3], v43, 2);
            v43.i64[0] = vmulq_n_f32(vmulq_laneq_f32(v43, v43, 3), *v26.i32).u64[0];
            v43.f32[2] = v48 * *v26.i32;
            v43.i32[3] = 1.0;
            v44.i32[1] = v45;
            *v44.f32 = vmul_f32(vmul_n_f32(*v44.f32, v47), v35);
            v44.f32[2] = (v46 * v47) * *v26.i32;
            v44.i32[3] = 1.0;
          }

          else
          {
            v44.i32[1] = v45;
            v44.i64[1] = __PAIR64__(LODWORD(v47), LODWORD(v46));
          }

          v49 = vsubq_f32(v44, v43);
          v50 = vminnmq_f32(vmaxq_f32(v49, vsubq_f32(0, v49)), v55);
          v51 = vmulq_f32(vmulq_f32(v50, v50), v27);
          *v51.i8 = vadd_f32(*&vextq_s8(v51, v51, 8uLL), *v51.i8);
          a5 = vaddq_f32(a5, vminnmq_f32(vdupq_lane_s32(vpadd_f32(*v51.i8, *v51.i8), 0), v54));
          if (!--v34)
          {
            goto LABEL_24;
          }
        }
      }

      a5 = v57;
LABEL_24:
      ++v28;
      v31 += 216;
    }

    while (v28 != v11);
  }

  else
  {
    a5.i32[0] = 1900671690;
  }

  return *a5.i64;
}

void compute_symbolic_block_difference_1plane_1partition(int *a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    if (*sub_22F9F1DD0(a2, *(a3 + 1), *(a3 + 6)) != 1)
    {
      sub_22FA062C8();
    }

    v16 = *(a2 + 2 * *(a3 + 4) + 11302240);
    if (v16 == 0xFFFF || *(a2 + 28) <= v16)
    {
      sub_22F9F2878();
    }

    unpack_weights(a2, a3, a2 + 129904 * *(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11302240) + 11306338) + 592, 0, v77, 0, v8, v9, v10, v11, v12, v13, v14, v15);
    v74 = 0;
    unpack_color_endpoints(*a1, *(a3 + 8), (a3 + 20), &v74 + 1, &v74, &v76, &v75, v18, v19, v20, v21);
    v24 = *(a2 + 3);
    if (*(a2 + 3))
    {
      v22.i32[0] = 0;
      v25 = 0;
      v23.i32[0] = *a1;
      v26 = vandq_s8(vdupq_lane_s32(*&vceqq_s32(v23, v22), 0), xmmword_22FA118E0);
      if (a4[225].i8[1])
      {
        v27 = -1;
      }

      else
      {
        v27 = 0;
      }

      v28 = vorrq_s8(v26, vdupq_n_s32(v27));
      v29 = v28.i32[1];
      v30 = v28.i32[2];
      v31 = v28.i32[3];
      if (v28.i32[0])
      {
        v32 = -1;
      }

      else
      {
        v32 = 0;
      }

      v33 = vdupq_n_s32(v32);
      if (v29)
      {
        v34 = -1;
      }

      else
      {
        v34 = 0;
      }

      v35 = vdupq_n_s32(v34);
      if (v30)
      {
        v36 = -1;
      }

      else
      {
        v36 = 0;
      }

      v37 = vdupq_n_s32(v36);
      v38 = vdupq_lane_s32(*v75.i8, 0);
      v39 = vdupq_lane_s32(*v75.i8, 1);
      v40 = vdupq_laneq_s32(v75, 2);
      v41 = vdupq_laneq_s32(v75, 3);
      v42 = vdupq_lane_s32(*v76.i8, 0);
      v43 = vdupq_lane_s32(*v76.i8, 1);
      v44 = vdupq_laneq_s32(v76, 2);
      v45 = vdupq_laneq_s32(v76, 3);
      if (v31)
      {
        v46 = -1;
      }

      else
      {
        v46 = 0;
      }

      v47 = vdupq_n_s32(v46);
      v48 = a4[224];
      v49 = vdupq_n_s32(v24);
      v50 = xmmword_22FA083F0;
      v51 = vdupq_n_s32(0x101u);
      v52 = vdupq_n_s32(0x58635FA9u);
      v53 = v77;
      v54.i64[0] = 0x4000000040;
      v54.i64[1] = 0x4000000040;
      v55.i64[0] = 0x2000000020;
      v55.i64[1] = 0x2000000020;
      v56.i64[0] = 0x400000004;
      v56.i64[1] = 0x400000004;
      v57 = 0uLL;
      do
      {
        v58 = *v53++;
        v59 = vsubq_s32(v54, v58);
        v60 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v42, v59), v38, v58), v55), 6uLL);
        v61 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v43, v59), v39, v58), v55), 6uLL);
        v62 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v44, v59), v40, v58), v55), 6uLL);
        v63 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v45, v59), v41, v58), v55), 6uLL);
        v64 = vsubq_f32(*a4, vcvtq_f32_s32(vbslq_s8(v33, vmulq_s32(vshrq_n_s32(v60, 8uLL), v51), v60)));
        v65 = vminnmq_f32(vmaxq_f32(v64, vsubq_f32(0, v64)), v52);
        v66 = vsubq_f32(a4[55], vcvtq_f32_s32(vbslq_s8(v35, vmulq_s32(vshrq_n_s32(v61, 8uLL), v51), v61)));
        v67 = vsubq_f32(a4[110], vcvtq_f32_s32(vbslq_s8(v37, vmulq_s32(vshrq_n_s32(v62, 8uLL), v51), v62)));
        v68 = vminnmq_f32(vmaxq_f32(v66, vsubq_f32(0, v66)), v52);
        v69 = vminnmq_f32(vmaxq_f32(v67, vsubq_f32(0, v67)), v52);
        v70 = vsubq_f32(a4[165], vcvtq_f32_s32(vbslq_s8(v47, vmulq_s32(vshrq_n_s32(v63, 8uLL), v51), v63)));
        v71 = vminnmq_f32(vmaxq_f32(v70, vsubq_f32(0, v70)), v52);
        v72 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v71, v71), v48, 3), vaddq_f32(vmulq_laneq_f32(vmulq_f32(v69, v69), v48, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v65, v65), v48.f32[0]), vmulq_lane_f32(vmulq_f32(v68, v68), *v48.f32, 1))));
        v73 = vcgtq_s32(v49, v50);
        v50 = vaddq_s32(v50, v56);
        v57 = vaddq_f32(v57, vandq_s8(v72, v73));
        v25 += 4;
        ++a4;
      }

      while (v25 < v24);
    }
  }
}

void sub_22FA062F4()
{
  v0 = _mxi_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_22F9C7D74(&dword_22F9C3000, v1, v2, "[MXI.framework/MXISceneBuilderBase.mm:158] getLayerRange should not be used if layer depths was overridden", v3, v4, v5, v6, 0);
  }

  __assert_rtn("[MXISceneBuilder getLayerRange:]", "MXISceneBuilderBase.mm", 158, "mxi_expect(!_overriddenLayerDepths, getLayerRange should not be used if layer depths was overridden)");
}

void sub_22FA0635C()
{
  v0 = _mxi_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_22F9C7D74(&dword_22F9C3000, v1, v2, "[MXI.framework/MXISceneBuilderBase.mm:166] getLayerViewMatrix should not be used if layer depths was overridden", v3, v4, v5, v6, 0);
  }

  __assert_rtn("[MXISceneBuilder getLayerViewMatrix:]", "MXISceneBuilderBase.mm", 166, "mxi_expect(!_overriddenLayerDepths, getLayerViewMatrix should not be used if layer depths was overridden)");
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}