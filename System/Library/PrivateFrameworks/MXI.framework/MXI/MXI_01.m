uint64_t sub_22F9F0510(uint64_t a1, uint64_t a2)
{
  if (sub_22F9F055C(a2, &unk_28449BF68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_22F9F055C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_22F9F05B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22F9E1F24(result, a4);
  }

  return result;
}

unint64_t compress_block(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v269 = *MEMORY[0x277D85DE8];
  v8 = 30720.0;
  if (!*(a2 + 3818))
  {
    v8 = 65535.0;
  }

  if (*(a2 + 3548) == v8)
  {
    v9 = *(a2 + 3580);
    v194 = (a2 + 3600);
    if (v9 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a2 + 3600);
    }

    if ((*(a2 + 3600) & (v9 == v8)) != 0)
    {
      v11 = 0.66667;
    }

    else
    {
      v11 = 1.0;
    }
  }

  else
  {
    v194 = (a2 + 3600);
    v10 = *(a2 + 3600);
    v11 = 1.0;
  }

  v12 = *(a1 + 16);
  v13 = *a1;
  v192 = a1[11];
  v239 = *(a1 + 6);
  v240 = a1[14];
  v237 = *(a1 + 9);
  v238 = a1[20];
  v14 = *(a2 + 3536);
  v15 = *(a2 + 3568);
  {
    v218 = v15;
    v219 = v14;
    sub_22F9F25EC();
    v15 = v218;
    v14 = v219;
  }

  v16 = vceqq_f32(v14, v15);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v16, v17), mask(vmask4)::shift)) == 15)
  {
    BYTE1(v241) = 0;
    v18 = *(a2 + 3520);
    if ((v13 & 0xFFFFFFFE) == 2)
    {
      v19 = vmovl_u16(vcvt_f16_f32(v18));
      v20 = 1;
    }

    else
    {
      __asm { FMOV            V1.4S, #1.0 }

      v30 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v18, 0), _Q1), vdupq_n_s32(0x477FFF00u));
      _Q1.i64[0] = 0x3F0000003F000000;
      _Q1.i64[1] = 0x3F0000003F000000;
      v19 = vcvtq_s32_f32(vaddq_f32(v30, _Q1));
      v20 = 2;
    }

    LOBYTE(v241) = v20;
    *&v242[4] = v19;
    v31 = v12;
    v32 = a3;
    return symbolic_to_physical(v31, &v241, v32);
  }

  if (v10)
  {
    v21 = 0.95238;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = *(a2 + 3584);
  v23 = vextq_s8(v22, v22, 8uLL).u64[0];
  *v22.i8 = vadd_f32(v23, *v22.i8);
  v23.i8[0] = *(v12 + 3);
  v24 = *(v7 + 21) * (v23.u32[0] * vpadd_f32(*v22.i8, *v22.i8).f32[0]);
  *v242 = 1900671690;
  LOBYTE(v241) = 0;
  v236 = xmmword_22FA0C1F0;
  v234 = *(v7 + 23);
  v233 = 0;
  v235 = 0;
  v232[0] = 1.0 / *(v7 + 22);
  v232[1] = 1.0;
  if ((atomic_load_explicit(&qword_27DAD28D8, memory_order_acquire) & 1) == 0)
  {
    sub_22F9F2644(v7 + 22);
  }

  v205 = a2;
  v191 = a3;
  v25 = *(v7 + 26) < 0.85 || *(v12 + 2) != 1;
  v33 = v21 * (v11 * v24);
  v197 = v12 + 11306336;
  v198 = v12;
  v34 = *&v236;
  v220 = v7;
  do
  {
    v35 = v25;
    v36 = v33 * v232[v25];
    v37 = sub_22F9F1528(v7, v12, v205, !v25, 1u, 0, &v241, a4, v36 * *&dword_27DAD28D0, 11);
    v40 = *(v12 + 11302240 + 2 * WORD2(v241));
    if (v40 == 0xFFFF || *(v12 + 28) <= v40)
    {
      sub_22F9F2878();
    }

    if (v37 < v36)
    {
      goto LABEL_132;
    }

    if (v34 >= v37)
    {
      v34 = v37;
    }

    v25 = 1;
    v7 = v220;
  }

  while (!v35);
  v193 = *(v197 + 6 * *(v12 + 11302240 + 2 * WORD2(v241)) + 3);
  *&v236 = v34;
  v41 = *(v12 + 3);
  if (!*(v12 + 3))
  {
    sub_22F9F284C();
  }

  v42 = v205;
  v43 = vadd_f32(*&vextq_s8(*(v205 + 3584), *(v205 + 3584), 8uLL), *(v205 + 3584));
  v44 = 0.25 * vpadd_f32(v43, v43).f32[0];
  if (v44 < 0.0)
  {
    sub_22F9F2820();
  }

  v45 = 0uLL;
  _D4 = 0;
  v47 = 0.0;
  _D6 = 0;
  v49.i64[0] = 0;
  v38.i64[0] = 0;
  do
  {
    v47 = v44 + v47;
    v50 = v42[440];
    _Q19.i32[0] = v42[660];
    _D20.i32[0] = v42[220];
    _D20.i32[1] = *v42++;
    *_Q21.f32 = vmul_n_f32(_D20, v44);
    __asm { FMLA            S2, S17, V21.S[1] }

    _D6 = vadd_f32(_D6, *_Q21.f32);
    *v49.f32 = vmla_f32(*v49.f32, *_Q21.f32, _D20);
    v54 = _Q19;
    v54.i32[1] = v50;
    _D20 = vmul_n_f32(*v54.i8, v44);
    __asm { FMLA            S1, S19, V20.S[1] }

    _Q19.i32[1] = v50;
    _Q21.i64[1] = _Q21.i64[0];
    v45 = vmlaq_f32(v45, _Q21, vzip1q_s32(_Q19, _Q19));
    _D4 = vadd_f32(_D4, _D20);
    *v38.i8 = vmla_f32(*v38.i8, _D20, *v54.i8);
    --v41;
  }

  while (v41);
  v57 = 1.0 / fmaxf(v47, 0.0000001);
  *v58.f32 = vneg_f32(_D6);
  *v54.i8 = vneg_f32(_D4);
  *v59.f32 = vmul_n_f32(_D6, v57);
  _S19 = v59.i32[1];
  v59.i64[1] = v59.i64[0];
  __asm { FMLS            S2, S19, V6.S[0] }

  v58.i64[1] = v58.i64[0];
  v49.i64[1] = v49.i64[0];
  v62 = vmlaq_f32(v49, v59, v58);
  v63 = vmul_n_f32(_D4, v57);
  _S7 = v63.i32[1];
  __asm { FMLS            S1, S7, V4.S[0] }

  *v38.i8 = vmls_f32(*v38.i8, v63, _D4);
  v66 = _S2 * (1.0 / sqrtf(vmuls_lane_f32(v62.f32[0], *v62.f32, 1)));
  v67 = vsqrtq_f32(vmulq_f32(v62, vzip1q_s32(v38, v38)));
  __asm { FMOV            V5.4S, #1.0 }

  v188 = _Q5;
  v69 = vmulq_f32(vmlaq_f32(v45, v59, vzip1q_s32(v54, v54)), vdivq_f32(_Q5, v67));
  v70 = _S1 * (1.0 / sqrtf(vmuls_lane_f32(*v38.i32, *v38.i8, 1)));
  v71 = vmovn_s32(vmvnq_s8(vceqq_f32(v69, v69)));
  v72 = fabsf(v66);
  v73 = fabsf(v69.f32[3]);
  if (v71.i8[6])
  {
    v73 = 1.0;
  }

  if (v72 >= v73)
  {
    v72 = v73;
  }

  v74 = fabsf(v69.f32[1]);
  if (v71.i8[2])
  {
    v74 = 1.0;
  }

  if (v72 >= v74)
  {
    v72 = v74;
  }

  v75 = fabsf(v69.f32[2]);
  if (v71.i8[4])
  {
    v75 = 1.0;
  }

  if (v72 >= v75)
  {
    v72 = v75;
  }

  v76 = fabsf(v69.f32[0]);
  if (v71.i8[0])
  {
    v76 = 1.0;
  }

  if (v72 < v76)
  {
    v76 = v72;
  }

  v77 = fabsf(v70);
  if (v76 >= v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = v76;
  }

  v79 = v193;
  if (v193 >= 11)
  {
    v79 = 11;
  }

  v201 = a4 + 3776;
  v206 = a4 + 26048;
  v195 = v79;
  v196 = ~(-2 << v79);
  v207 = a4;
  v208 = (v12 + 592);
  v189 = (v12 + 68);
  v187 = v12 + 11306341;
  v80 = 3;
  v81 = &unk_22FA08000;
  v82 = *(v220 + 25);
  v83.i64[0] = 0x100000001;
  v83.i64[1] = 0x100000001;
  while (1)
  {
    v84 = v80;
    if (v78 <= v82 && (v80 == 3 || (*v194 & 1) == 0))
    {
      v85 = *(v205 + 3536);
      v86 = *(v205 + 3568);
      {
        v213 = v86;
        v217 = v85;
        sub_22F9F26A8();
        v86 = v213;
        v85 = v217;
        v83.i64[0] = 0x100000001;
        v83.i64[1] = 0x100000001;
      }

      v87 = vceqq_s32(vdupq_n_s32(v84), v81[63]);
      if (!vaddvq_s32(vshlq_u32(vandq_s8(vandq_s8(vceqq_f32(v85, v86), v83), v87), mask(vmask4)::shift)))
      {
        break;
      }
    }

LABEL_130:
    v80 = v84 - 1;
    if (!v84)
    {
      goto LABEL_131;
    }
  }

  if (!v220[17])
  {
    sub_22F9F27F4();
  }

  if (!v220[16])
  {
    sub_22F9F27C8();
  }

  if (!*(v198 + 8))
  {
    sub_22F9F279C();
  }

  v199 = v87;
  v88 = *&dword_27DAD28D0;
  v209 = v84;
  compute_ideal_colors_and_weights_2planes(v198, v205, v84, a4, a4 + 1888);
  v89 = *(v198 + 8);
  if (v89)
  {
    v90 = 0;
    v91 = 0;
    v92 = v189;
    v93 = v208;
    do
    {
      v94 = *v92;
      v92 += 3;
      if ((v94 & v196) != 0)
      {
        compute_ideal_weights_for_decimation(a4, v93, (v201 + 4 * (v90 & 0xFFFFFFC0)));
        compute_ideal_weights_for_decimation((a4 + 1888), v93, (v201 + 4 * (v90 & 0xFFFFFFC0) + 128));
        v89 = *(v198 + 8);
      }

      ++v91;
      v90 += 64;
      v93 += 8119;
    }

    while (v91 < v89);
  }

  v210 = *(a4 + 96);
  v214 = *(a4 + 32);
  v202 = *(a4 + 1920);
  v190 = *(a4 + 1984);
  compute_angular_endpoints_2planes(v198, v201, v195, a4);
  v95 = *(v198 + 20);
  v96 = *(v198 + 24);
  if (v96 > v95)
  {
    v97 = vdivq_f32(vsubq_f32(v188, v202), vsubq_f32(v190, v202));
    v98.i64[0] = 0x3F0000003F000000;
    v98.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V2.4S, #10.0 }

    v100 = vdupq_n_s32(0x7149F2CAu);
    v97.f32[0] = vminvq_f32(vbslq_s8(v199, vbslq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(v97, v98)), vcgtq_f32(_Q2, v97)), _Q2, v97), v100));
    v101 = vdivq_f32(vsubq_f32(v188, v214), vsubq_f32(v210, v214));
    v102 = vmvnq_s8(vcgtq_f32(v101, v98));
    v103 = vcgtq_f32(_Q2, v101);
    v104 = vornq_s8(v102, v103);
    v106 = vbslq_s8(v104, _Q2, v101);
    v105 = vbslq_s8(v199, v100, v106);
    v106.i32[0] = 1065520988;
    v107 = vminvq_f32(v105) * 1.02;
    v108 = v97.f32[0] * 1.02;
    v109 = 4 * v95 + 179648;
    v110 = v96 - v95;
    v111 = 4 * v95 + 209792;
    v112 = v95 << 6;
    v113 = 4 * v95 + 217984;
    v114 = 4 * v95 + 196032;
    v115 = v95 + 177600;
    v116 = (v187 + 6 * v95);
    v117 = v116;
    do
    {
      v118 = *v117;
      v117 += 6;
      if ((v118 & 1) == 0)
      {
        sub_22F9F2770();
      }

      if (v195 >= *(v116 - 2))
      {
        *(a4 + v115) = 109 - *(v116 - 1);
        v105.i32[0] = *(a4 + v114);
        if (v105.f32[0] > v107)
        {
          *(a4 + v114) = 1065353216;
          v105.i32[0] = 1.0;
        }

        if (*(a4 + v113) > v108)
        {
          *(a4 + v113) = 1065353216;
        }

        v211 = &v208[8119 * *(v116 - 3)];
        v215 = (a4 + v109);
        v203 = (v201 + (*(v116 - 3) << 8));
        compute_quantized_weights_for_decimation(v211, v203, &v260, v206 + (v112 & 0xFFFFFFC0), *(v116 - 2), *(a4 + v109 + 0x2000), *v105.i64, *v106.i64, *v101.i64, *v104.i64, *v103.i64);
        LODWORD(v119) = *(v207->i32 + v113);
        a4 = v207;
        compute_quantized_weights_for_decimation(v211, v203 + 8, v268, v206 + (v112 & 0xFFFFFFC0) + 32, *(v116 - 2), *(v207->f32 + v111), v119, v120, v121, v122, v123);
        *v215 = compute_error_of_weight_set_2planes(v207, v207 + 118, v211, &v260, v268, v124, v125, v126).u32[0];
      }

      else
      {
        *(a4 + v109) = 2123789977;
      }

      v109 += 4;
      v111 += 4;
      v112 += 64;
      v113 += 4;
      v114 += 4;
      ++v115;
      v116 = v117;
      --v110;
    }

    while (v110);
  }

  if (*(a4 + 16) != 1)
  {
    sub_22F9F26EC();
  }

  v260.i32[0] = 1;
  v127 = vbslq_s8(v199, *(a4 + 1984), *(a4 + 96));
  v261 = vbslq_s8(v199, *(a4 + 1920), *(a4 + 32));
  v265 = v127;
  v128 = sub_22F9F1DD0(v198, 1u, 0);
  v129 = v220;
  v204 = compute_ideal_endpoint_formats(v128, v205, &v260, a4 + 177600, a4 + 179648, v220[17], *(v198 + 20), *(v198 + 24), v259, v258, v257, v256, a4);
  if (v204)
  {
    v132 = 0;
    v133 = v33 * v88;
    v134 = *v242;
    v135 = 1.0e30;
    do
    {
      v136 = v258[v132];
      if (v136 < *(v198 + 20) || v136 >= *(v198 + 24))
      {
        sub_22F9F2744();
      }

      v138 = v258[v132];
      v216 = v197 + 6 * v136;
      v139 = &v208[8119 * *(v216 + 2)];
      v140 = *(v139 + 2);
      if (!*(v139 + 2))
      {
        sub_22F9F2718();
      }

      v141 = v132;
      v227 = v266;
      v228 = v267;
      v229 = v268[0];
      v223 = v262;
      v224 = v263;
      v225 = v264;
      v226 = v265;
      v143 = *v260.i64;
      v142 = *v261.i64;
      v144 = (v206 + (v138 << 6) + 32);
      v145 = &v254;
      v221 = v260;
      v222 = v261;
      do
      {
        *(v145 - 32) = *(v144 - 32);
        v146 = *v144++;
        *v145 = v146;
        v145 = (v145 + 1);
        --v140;
      }

      while (v140);
      if (v129[16])
      {
        v200 = v132;
        v212 = &v259[4 * v132];
        v147 = 1;
        v148 = -1;
        while (1)
        {
          recompute_ideal_colors_2planes(v205, v198, v139, &v252, &v254, &v221, &v231, &v230, v142, v143, v130, v131, v209);
          BYTE8(v248) = pack_color_endpoints(*v212, &v249 + 4, v257[v141], v222, v226, v231, v230);
          WORD3(v248) = 0;
          HIDWORD(v248) = v257[v141];
          BYTE2(v248) = 0;
          WORD2(v248) = *v216;
          BYTE3(v248) = v209;
          LOWORD(v248) = 259;
          if (v147 != 1)
          {
            goto LABEL_106;
          }

          v157 = compute_symbolic_block_difference_2plane(v129, v198, &v248, v205, v149, v150, v151, v152, v153, v154, v155, v156);
          if (v157 == -1.0e30)
          {
            LOBYTE(v248) = 0;
            v157 = 1.0e30;
          }

          if (v157 < v135)
          {
            v135 = v157;
          }

          v130.i32[0] = 1027101164;
          if (v157 > (v134 * ((v129[16] * 0.045) + 1.08)))
          {
            goto LABEL_123;
          }

          if (v157 < v134)
          {
            *&v249 = v157;
            v244 = v252;
            v245 = v253;
            v246 = v254;
            v247 = v255;
            *&v242[16] = v250;
            v243 = v251;
            v241 = v248;
            *v242 = v249;
            if (v157 < v133)
            {
              v132 = v204;
              v134 = v157;
              goto LABEL_125;
            }
          }

          else
          {
LABEL_106:
            v157 = v134;
          }

          v158 = *v129;
          if (*(v139 + 2) == *(v198 + 3))
          {
            v159 = sub_22F9F22F8(v158, v198, v205, &v248);
          }

          else
          {
            v159 = sub_22F9F1E64(v158, v198, v205, &v248);
          }

          v168 = v159;
          *&v142 = compute_symbolic_block_difference_2plane(v220, v198, &v248, v205, v160, v161, v162, v163, v164, v165, v166, v167);
          if (*&v142 == -1.0e30)
          {
            LOBYTE(v248) = 0;
            LODWORD(v142) = 1900671690;
          }

          if (*&v142 < v135)
          {
            v135 = *&v142;
          }

          v169 = v220[16];
          v130.i32[0] = 1027101164;
          *&v143 = v157 * (((v148 + v169) * 0.045) + 1.0);
          if (*&v142 > *&v143)
          {
            v134 = v157;
            v129 = v220;
LABEL_123:
            v132 = v200;
            goto LABEL_125;
          }

          v134 = v157;
          if (*&v142 < v157)
          {
            LODWORD(v249) = LODWORD(v142);
            v244 = v252;
            v245 = v253;
            v246 = v254;
            v247 = v255;
            *&v242[16] = v250;
            v243 = v251;
            v143 = *&v248;
            v130 = v249;
            v241 = v248;
            *v242 = v249;
            v134 = *&v142;
            if (*&v142 < v133)
            {
              break;
            }
          }

          if (v147 < v169)
          {
            v170 = v168;
          }

          else
          {
            v170 = 0;
          }

          ++v147;
          --v148;
          v129 = v220;
          if ((v170 & 1) == 0)
          {
            goto LABEL_123;
          }
        }

        v132 = v204;
        v134 = *&v142;
        v129 = v220;
      }

LABEL_125:
      ++v132;
    }

    while (v132 < v204);
  }

  else
  {
    v135 = 1.0e30;
  }

  a4 = v207;
  v81 = &unk_22FA08000;
  v83.i64[0] = 0x100000001;
  v83.i64[1] = 0x100000001;
  if (v135 <= (*&v236 * 1.85))
  {
    v84 = v209;
    if (v135 < v33)
    {
      goto LABEL_132;
    }

    goto LABEL_130;
  }

LABEL_131:
  if (v192 >= 2)
  {
    v174 = 2;
    while (1)
    {
      v175 = 4 * v174 - 8;
      v176 = *(&v239 + v175);
      v177 = *(&v237 + v175) >= v176 ? *(&v239 + v175) : *(&v237 + v175);
      best_partition_candidates = find_best_partition_candidates(v198, v205, v174, v176, &v260, v177);
      v179 = *(&v236 + v175);
      v180 = v174 - 1;
      if (best_partition_candidates)
      {
        break;
      }

      v185 = *(&v233 + v180);
      v184 = *(&v236 + v180);
LABEL_149:
      ++v174;
      if (v184 > (v179 * v185) || v174 == v192 + 1)
      {
        goto LABEL_132;
      }
    }

    v181 = 0;
    v182 = 4 * best_partition_candidates;
    while (1)
    {
      v183 = sub_22F9F1528(v220, v198, v205, 0, v174, v260.i32[v181 / 4], &v241, v207, v33 * *&dword_27DAD28D0, v193);
      v184 = *(&v236 + v180);
      if (v184 >= v183)
      {
        v184 = v183;
      }

      *(&v236 + v180) = v184;
      v185 = *(&v233 + v180);
      if (v184 > (v179 * (v185 * 1.85)) || v183 < v33)
      {
        break;
      }

      v181 += 4;
      if (v182 == v181)
      {
        goto LABEL_149;
      }
    }
  }

LABEL_132:
  if (!v241)
  {
    LOBYTE(v241) = 2;
    __asm { FMOV            V1.4S, #1.0 }

    v172 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(*(v205 + 3520), 0), _Q1), vdupq_n_s32(0x477FFF00u));
    _Q1.i64[0] = 0x3F0000003F000000;
    _Q1.i64[1] = 0x3F0000003F000000;
    *&v242[4] = vcvtq_s32_f32(vaddq_f32(v172, _Q1));
  }

  v31 = v198;
  v32 = v191;
  return symbolic_to_physical(v31, &v241, v32);
}

float sub_22F9F1528(int *a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, __int16 a6, uint64_t a7, _BYTE *a8, float a9, int a10)
{
  v157 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    sub_22F9F29D8();
  }

  if (!a1[17])
  {
    sub_22F9F29AC();
  }

  if (!a1[16])
  {
    sub_22F9F2980();
  }

  if (a10 >= 11)
  {
    v16 = 11;
  }

  else
  {
    v16 = a10;
  }

  _ZF = (a1[1] & 0x40) == 0 && a5 == 1;
  v18 = compute_symbolic_block_difference_1plane;
  if (_ZF)
  {
    v18 = compute_symbolic_block_difference_1plane_1partition;
  }

  v133 = v18;
  v129 = sub_22F9F1DD0(a2, a5, a6);
  compute_ideal_colors_and_weights_1plane(a3, v129, a8, v19, v20, v21, v22, v23);
  v24 = 8;
  if (a4)
  {
    v24 = 4;
  }

  v25 = *(a2 + v24);
  if (!v25)
  {
    sub_22F9F2954();
  }

  v126 = a6;
  v26 = 0;
  v27 = (a8 + 3776);
  v124 = a8;
  v122 = a8 + 26048;
  v137 = v16;
  v28 = ~(-1 << (v16 + 1));
  v29 = (a2 + 592);
  v30 = v25 << 6;
  v31 = 66;
  v123 = a2 + 592;
  do
  {
    if ((*(a2 + v31) & v28) != 0)
    {
      compute_ideal_weights_for_decimation(v124, v29, (v27 + 4 * (v26 & 0xFFFFFFC0)));
    }

    v26 += 64;
    v29 += 8119;
    v31 += 6;
  }

  while (v30 != v26);
  v32 = v124;
  v33 = (v124 + 96);
  __asm
  {
    FMOV            V5.4S, #10.0
    FMOV            V0.4S, #1.0
  }

  v39.i64[0] = 0x3F0000003F000000;
  v39.i64[1] = 0x3F0000003F000000;
  v40 = a5;
  do
  {
    v41 = v33[-4];
    v42 = *v33++;
    v43 = vdivq_f32(vsubq_f32(_Q0, v41), vsubq_f32(v42, v41));
    _Q5 = vbslq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(v43, v39)), vcgtq_f32(_Q5, v43)), _Q5, v43);
    --v40;
  }

  while (v40);
  v138 = _Q5;
  v44 = v137;
  compute_angular_endpoints_1plane(a4, a2, v27, v137, v124);
  v50 = 20;
  if (a4)
  {
    v50 = 16;
  }

  if (!*(a2 + v50))
  {
    sub_22F9F2928();
  }

  v127 = a3;
  v51 = 0;
  v52 = 177600;
  v132 = a2;
  v119 = a2 + 11306336;
  v53 = vminvq_f32(v138) * 1.02;
  v134 = *(a2 + v50);
  v54 = 179648;
  v55 = 11306341;
  v56 = 196032;
  do
  {
    if (v44 < *(v132 + v55 - 2))
    {
      goto LABEL_31;
    }

    if (*(v132 + v55))
    {
      sub_22F9F28A4();
    }

    v57 = aOa[a5 - 1];
    v58 = *(v132 + v55 - 1);
    _VF = __OFSUB__(v57, v58);
    v59 = v57 - v58;
    if ((v59 < 0) ^ _VF | (v59 == 0))
    {
LABEL_31:
      *(v32 + v54) = 2123789977;
    }

    else
    {
      if (*(v32 + v56) > v53)
      {
        *(v32 + v56) = 1065353216;
      }

      v60 = *(v132 + v55 - 3);
      v61 = (v123 + 129904 * v60);
      *(v32 + v52) = v59;
      LODWORD(v45) = *(v124 + v56);
      compute_quantized_weights_for_decimation(v61, (v27 + (v60 << 8)), v155, &v122[v51 & 0xFFFFFFC0], *(v132 + v55 - 2), *(v124 + v54 + 0x2000), v45, v46, v47, v48, v49);
      *(v124 + v54) = compute_error_of_weight_set_1plane(v124, v61, v155, v62, v63, v64, v65).u32[0];
      v32 = v124;
      v44 = v137;
    }

    v51 += 64;
    v55 += 6;
    v54 += 4;
    v56 += 4;
    ++v52;
  }

  while (v134 << 6 != v51);
  v66 = a1;
  v67 = v127;
  v121 = compute_ideal_endpoint_formats(v129, v127, v32 + 16, v32 + 177600, v32 + 179648, a1[17], 0, v134, v154, v153, v152, v151, v32);
  if (!v121)
  {
    return 1.0e30;
  }

  v68 = 0;
  v69 = *(a7 + 16);
  v70 = 1.0e30;
  v71 = v132;
  do
  {
    v72 = v153[v68];
    if ((v72 & 0x80000000) != 0 || v72 >= *(v71 + 20))
    {
      sub_22F9F28FC();
    }

    v131 = v119 + 6 * v72;
    v73 = v123 + 129904 * *(v131 + 2);
    v74 = *(v73 + 2);
    if (!*(v73 + 2))
    {
      sub_22F9F28D0();
    }

    v75 = *(v124 + 128);
    v156[1] = *(v124 + 112);
    v156[2] = v75;
    v156[3] = *(v124 + 144);
    v76 = *(v124 + 64);
    v155[2] = *(v124 + 48);
    v155[3] = v76;
    v77 = *(v124 + 96);
    v155[4] = *(v124 + 80);
    v156[0] = v77;
    v78 = *(v124 + 32);
    v155[0] = *(v124 + 16);
    v155[1] = v78;
    memcpy(&v145, &v122[64 * v72], v74);
    if (v66[16])
    {
      v83 = 0;
      v120 = v68;
      v84 = v68;
      v85 = &v152[v68];
      v139 = &v151[v84];
      v86 = &v154[4 * v84];
      v130 = v73;
      while (1)
      {
        v135 = v83;
        recompute_ideal_colors_1plane(v67, v129, v73, &v145, v155, v150, v149, v79, v80, *&v81, v82);
        v87 = 0;
        LOBYTE(v88) = *v85 != *v139;
        v89 = 20;
        v90 = v156;
        do
        {
          v91 = v90[-4];
          v92 = *v90++;
          v93 = pack_color_endpoints(v86[v87], &v141 + v89, *v85, v91, v92, v150[v87], v149[v87]);
          *(&v141 + v87 + 8) = v93;
          v88 = v88 & (v93 == BYTE8(v141));
          ++v87;
          v89 += 8;
        }

        while (a5 != v87);
        BYTE2(v141) = 0;
        v94 = v85;
        if (a5 != 1)
        {
          v94 = v85;
          if (((v88 ^ 1) & 1) == 0)
          {
            v95 = 0;
            v96 = v150;
            v140[0] = 0;
            v97 = v149;
            v98 = v140;
            v99 = v86;
            v100 = v156;
            while (1)
            {
              v101 = *v99++;
              v102 = pack_color_endpoints(v101, &v140[v95 + 1], *v139, v100[-4], *v100, *v96, *v97);
              *v98 = v102;
              if (v102 != LOBYTE(v140[0]))
              {
                break;
              }

              ++v100;
              ++v96;
              ++v97;
              v95 += 2;
              ++v98;
              if (2 * a5 == v95)
              {
                v103 = 0;
                BYTE2(v141) = 1;
                do
                {
                  *(&v142 + 8 * v103 + 4) = *&v140[2 * v103 + 1];
                  *(&v141 + v103 + 8) = *(v140 + v103);
                  ++v103;
                }

                while (v103 != 4);
                v94 = v139;
                goto LABEL_52;
              }
            }

            v94 = v139;
            if (!BYTE2(v141))
            {
              v94 = v85;
            }
          }
        }

LABEL_52:
        BYTE1(v141) = a5;
        WORD3(v141) = v126;
        BYTE3(v141) = -1;
        HIDWORD(v141) = *v94;
        v71 = v132;
        WORD2(v141) = *v131;
        LOBYTE(v141) = 3;
        v73 = v130;
        if (v135)
        {
          v104 = v69;
          v67 = v127;
          v66 = a1;
        }

        else
        {
          v67 = v127;
          v66 = a1;
          v105 = v133(a1, v132, &v141, v127);
          if (v105 == -1.0e30)
          {
            LOBYTE(v141) = 0;
            v104 = 1.0e30;
          }

          else
          {
            v104 = v105;
          }

          if (v104 < v70)
          {
            v70 = v104;
          }

          if (v104 > (v69 * ((a1[16] * 0.045) + 1.08)))
          {
LABEL_79:
            v68 = v120;
            break;
          }

          if (v104 >= v69)
          {
            v104 = v69;
          }

          else
          {
            *&v142 = v104;
            v106 = v146;
            *(a7 + 64) = v145;
            *(a7 + 80) = v106;
            v107 = v148;
            *(a7 + 96) = v147;
            *(a7 + 112) = v107;
            v108 = v144;
            *(a7 + 32) = v143;
            *(a7 + 48) = v108;
            v109 = v142;
            *a7 = v141;
            *(a7 + 16) = v109;
            if (v104 < a9)
            {
              v68 = v121;
              v69 = v104;
              break;
            }
          }
        }

        v110 = *v66;
        if (*(v130 + 2) == *(v132 + 3))
        {
          v111 = sub_22F9F22F8(v110, v132, v67, &v141);
        }

        else
        {
          v111 = sub_22F9F1E64(v110, v132, v67, &v141);
        }

        v112 = v111;
        *&v79 = v133(v66, v132, &v141, v67);
        if (*&v79 == -1.0e30)
        {
          LOBYTE(v141) = 0;
          LODWORD(v79) = 1900671690;
        }

        if (*&v79 < v70)
        {
          v70 = *&v79;
        }

        v113 = v66[16];
        *&v80 = v104 * (((v113 + ~v135) * 0.045) + 1.0);
        if (*&v79 > *&v80)
        {
          v69 = v104;
          v68 = v120;
          break;
        }

        v69 = v104;
        if (*&v79 < v104)
        {
          LODWORD(v142) = LODWORD(v79);
          v114 = v146;
          *(a7 + 64) = v145;
          *(a7 + 80) = v114;
          v115 = v148;
          *(a7 + 96) = v147;
          *(a7 + 112) = v115;
          v116 = v144;
          *(a7 + 32) = v143;
          *(a7 + 48) = v116;
          v80 = *&v141;
          v81 = v142;
          *a7 = v141;
          *(a7 + 16) = v81;
          if (*&v79 < a9)
          {
            v68 = v121;
            v69 = *&v79;
            break;
          }

          v113 = v66[16];
          v69 = *&v79;
        }

        v83 = v135 + 1;
        if (v135 + 1 < v113)
        {
          v117 = v112;
        }

        else
        {
          v117 = 0;
        }

        if ((v117 & 1) == 0)
        {
          goto LABEL_79;
        }
      }
    }

    ++v68;
  }

  while (v68 < v121);
  return v70;
}

uint64_t sub_22F9F1DD0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + ((a2 - 2) << 11) + 2 * a3 + 14711216);
    if (v3 == 0xFFFF)
    {
LABEL_10:
      sub_22F9F2A30();
    }
  }

  if (v3 >= *(a1 + 4 * (a2 - 1) + 48))
  {
    goto LABEL_10;
  }

  v4 = (a2 << 10) - 2048;
  if (a2 == 1)
  {
    v4 = 3072;
  }

  v5 = a1 + 1104 * v4;
  result = v5 + 1104 * v3 + 11318624;
  if (*(v5 + 1104 * v3 + 11318626) != a3)
  {
    sub_22F9F2A04();
  }

  return result;
}

uint64_t sub_22F9F1E64(int a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = *(a4 + 1);
  v9 = sub_22F9F1DD0(a2, *(a4 + 1), *(a4 + 6));
  v12 = *(a2 + 2 * *(a4 + 4) + 11302240);
  if (v12 == 0xFFFF || *(a2 + 28) <= v12)
  {
    sub_22F9F2878();
  }

  v14 = a2 + 129904 * *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11302240) + 11306338);
  v15 = *(v14 + 594);
  if (v15 == *(a2 + 3))
  {
    sub_22F9F2AE0();
  }

  v16 = *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11302240) + 11306339);
  v17 = *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11302240) + 11306341);
  v18 = *(a4 + 3);
  v82 = 0;
  if (!v8)
  {
    sub_22F9F2AB4();
  }

  if (!v15)
  {
    sub_22F9F2A88();
  }

  v73 = v16;
  v77 = v9;
  v19 = 0;
  v20 = v14 + 592;
  v71 = v17 & 1;
  v21 = xmmword_22FA083F0;
  v22 = (a4 + 8);
  v23 = vceqq_s32(vdupq_n_s32(v18), xmmword_22FA083F0);
  v80 = v23;
  v24 = (a4 + 20);
  v75 = 16 * v8;
  do
  {
    v25 = *v22++;
    unpack_color_endpoints(a1, v25, v24, &v82 + 1, &v82, &v83[v19 / 4 + 112], &v83[v19 / 4 + 96], v23, v21, v10, v11);
    v26 = 16 * v8;
    v24 += 8;
    v19 += 16;
  }

  while (v75 != v19);
  v76 = 0;
  v27 = 0;
  v28 = a4 + 64;
  v79 = v20 + 5424;
  v29 = v77 + 16;
  v72 = v71 + 1;
  v30 = vdupq_n_s32(0x3C800000u);
  v78 = &quant_and_xfer_tables + 226 * v73;
  v31 = v80;
  do
  {
    v32 = 0;
    v31 = vmvnq_s8(v31);
    do
    {
      v33 = *&v83[v32 / 4 + 112];
      v34 = vandq_s8(vsubq_s32(*&v83[v32 / 4 + 96], v33), v31);
      *&v83[v32 / 4 + 80] = vcvtq_f32_s32(v33);
      *&v83[v32 / 4 + 64] = vmulq_f32(vcvtq_f32_s32(v34), v30);
      v32 += 16;
    }

    while (v26 != v32);
    v74 = v27;
    v35 = 0;
    v36 = v83;
    do
    {
      v37 = (v28 + v35);
      v38 = vld1_dup_f32(v37);
      *v36++ = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v38)));
      v35 += 4;
    }

    while (v35 < v15);
    v39 = 0;
    v40 = (v20 + 74608);
    v41 = (v20 + 5488);
    v81 = v28;
    do
    {
      v42 = *(v79 + v39);
      if (!*(v79 + v39))
      {
        sub_22F9F2A5C();
      }

      v43 = *(v28 + v39);
      v44 = *&v78[2 * *(v28 + v39) + 96];
      v45 = *&v83[v39];
      v46 = *&v78[2 * *(v28 + v39) + 96];
      v47 = v44 >> 8;
      v48 = v46 - v45;
      v49 = (v44 >> 8) - v45;
      v50 = 0uLL;
      v51 = v40;
      v52 = v41;
      v53 = 0uLL;
      v54 = 0uLL;
      do
      {
        v55 = *v52;
        v52 += 64;
        v56 = ((*&v83[*(v20 + 456 + v55)] * *(v20 + 2832 + 4 * v55)) + (*&v83[*(v20 + 240 + v55)] * *(v20 + 1968 + 4 * v55))) + ((*&v83[*(v20 + 888 + v55)] * *(v20 + 4560 + 4 * v55)) + (*&v83[*(v20 + 672 + v55)] * *(v20 + 3696 + 4 * v55)));
        v57 = *(v29 + v55);
        v58 = *&v83[4 * v57 + 64];
        v59.i32[0] = a3->i32[v55];
        v59.i32[1] = a3[55].i32[v55];
        v59.i32[2] = a3[110].i32[v55];
        v59.i32[3] = a3[165].i32[v55];
        v60 = vsubq_f32(vaddq_f32(*&v83[4 * v57 + 80], vmulq_n_f32(v58, v56)), v59);
        v61 = vaddq_f32(vmulq_n_f32(v58, (v56 + (v48 * *v51)) - v56), v60);
        v62 = vaddq_f32(vmulq_n_f32(v58, (v56 + (v49 * *v51)) - v56), v60);
        v50 = vaddq_f32(v50, vmulq_f32(v60, v60));
        v53 = vaddq_f32(v53, vmulq_f32(v61, v61));
        v54 = vaddq_f32(v54, vmulq_f32(v62, v62));
        v51 += 64;
        --v42;
      }

      while (v42);
      v63 = a3[224];
      v64 = vmulq_f32(v50, v63);
      *v64.i8 = vadd_f32(*&vextq_s8(v64, v64, 8uLL), *v64.i8);
      v65 = vpadd_f32(*v64.i8, *v64.i8);
      v66 = vmulq_f32(v53, v63);
      *v66.i8 = vadd_f32(*&vextq_s8(v66, v66, 8uLL), *v66.i8);
      v67 = vpadd_f32(*v66.i8, *v66.i8);
      v68 = vmulq_f32(v54, v63);
      *v68.i8 = vadd_f32(*&vextq_s8(v68, v68, 8uLL), *v68.i8);
      v69 = vpadd_f32(*v68.i8, *v68.i8);
      if (vcgt_f32(v65, v69).u8[0] & 1) != 0 && v43 <= 0x3F && (vcgt_f32(v67, v69).u8[0])
      {
        *&v83[v39] = (v44 >> 8);
        v28 = v81;
LABEL_27:
        *(v28 + v39) = v47;
        v76 = 1;
        goto LABEL_28;
      }

      v28 = v81;
      if (v43 && (vcgt_f32(v65, v67).u8[0] & 1) != 0)
      {
        *&v83[v39] = v46;
        LOBYTE(v47) = v44;
        goto LABEL_27;
      }

LABEL_28:
      ++v39;
      ++v41;
      ++v40;
    }

    while (v39 != v15);
    v28 += 32;
    ++v27;
    v26 = v75;
  }

  while (v74 + 1 != v72);
  return v76 & 1;
}

uint64_t sub_22F9F22F8(int a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = *(a4 + 1);
  v9 = sub_22F9F1DD0(a2, *(a4 + 1), *(a4 + 6));
  v12 = *(a2 + 2 * *(a4 + 4) + 11302240);
  if (v12 == 0xFFFF || *(a2 + 28) <= v12)
  {
    sub_22F9F2878();
  }

  v14 = *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11302240) + 11306339);
  v15 = *(a2 + 6 * *(a2 + 2 * *(a4 + 4) + 11302240) + 11306341);
  v16 = *(a4 + 3);
  v55[0] = 0;
  if (!v8)
  {
    sub_22F9F2B38();
  }

  v52 = v14;
  v53 = v9;
  v17 = 0;
  v51 = v15 & 1;
  v18 = xmmword_22FA083F0;
  v19 = (a4 + 8);
  v20 = vceqq_s32(vdupq_n_s32(v16), xmmword_22FA083F0);
  v54 = v20;
  v21 = (a4 + 20);
  v22 = 16 * v8;
  do
  {
    v23 = *v19++;
    unpack_color_endpoints(a1, v23, v21, v55 + 1, v55, &v55[v17 / 2 + 97], &v55[v17 / 2 + 65], v20, v18, v10, v11);
    v21 += 8;
    v17 += 16;
  }

  while (v22 != v17);
  v24 = 0;
  v25 = 0;
  v26 = a4 + 64;
  v27 = vdupq_n_s32(0x3C800000u);
  v28 = &quant_and_xfer_tables + 226 * v52;
  v29 = v54;
  do
  {
    v30 = 0;
    v29 = vmvnq_s8(v29);
    do
    {
      v31 = *&v55[v30 / 2 + 97];
      v32 = vandq_s8(vsubq_s32(*&v55[v30 / 2 + 65], v31), v29);
      *&v55[v30 / 2 + 33] = vcvtq_f32_s32(v31);
      *&v55[v30 / 2 + 1] = vmulq_f32(vcvtq_f32_s32(v32), v27);
      v30 += 16;
    }

    while (v22 != v30);
    if (!*(a2 + 3))
    {
      sub_22F9F2B0C();
    }

    v33 = 0;
    v34 = a3;
    do
    {
      v35 = *(v26 + v33);
      v36 = HIBYTE(*&v28[2 * v35 + 96]);
      v37 = *(v53 + 16 + v33);
      v38 = *&v55[8 * v37 + 1];
      v39.i32[0] = *v34;
      v39.i32[1] = v34[220];
      v39.i32[2] = v34[440];
      v39.i32[3] = v34[660];
      v40 = a3[224];
      v41 = vsubq_f32(vaddq_f32(*&v55[8 * v37 + 33], vmulq_n_f32(v38, v35)), v39);
      v42 = vaddq_f32(vmulq_n_f32(v38, (*&v28[2 * v35 + 96] - v35)), v41);
      v43 = vaddq_f32(vmulq_n_f32(v38, (v36 - v35)), v41);
      v44 = vmulq_f32(v40, vmulq_f32(v41, v41));
      *v44.i8 = vadd_f32(*&vextq_s8(v44, v44, 8uLL), *v44.i8);
      v45 = vpadd_f32(*v44.i8, *v44.i8);
      v46 = vmulq_f32(v40, vmulq_f32(v42, v42));
      *v46.i8 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.i8);
      v47 = vpadd_f32(*v46.i8, *v46.i8);
      v48 = vmulq_f32(v40, vmulq_f32(v43, v43));
      *v48.i8 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), *v48.i8);
      v49 = vpadd_f32(*v48.i8, *v48.i8);
      if (vcgt_f32(v45, v49).u8[0] & 1) != 0 && v35 <= 0x3F && (vcgt_f32(v47, v49).u8[0])
      {
        goto LABEL_20;
      }

      if (*(v26 + v33) && (vcgt_f32(v45, v47).u8[0] & 1) != 0)
      {
        LOBYTE(v36) = *&v28[2 * v35 + 96];
LABEL_20:
        *(v26 + v33) = v36;
        v24 = 1;
      }

      ++v33;
      ++v34;
    }

    while (v33 < *(a2 + 3));
    v26 += 32;
    ++v25;
  }

  while (v25 != v51 + 1);
  return v24 & 1;
}

void sub_22F9F25EC()
{
  {
    mask(vmask4)::shift = xmmword_22FA083F0;
  }
}

void sub_22F9F2644(float *a1)
{
  if (__cxa_guard_acquire(&qword_27DAD28D8))
  {
    *&dword_27DAD28D0 = 1.0 / *a1;

    __cxa_guard_release(&qword_27DAD28D8);
  }
}

void sub_22F9F26A8()
{
  {
    mask(vmask4)::shift = xmmword_22FA083F0;
  }
}

id image::ReadKTX(uint64_t a1, void *a2, int a3, int a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v110 = a2;
  (*(*a1 + 16))(a1, v123, 64);
  (*(*a1 + 24))(a1, v130);
  v10 = &unk_22FA0C238;
  v11 = 37;
  while (*(v10 + 5) != v124 || *(v10 + 6) != v125)
  {
    v10 += 32;
    if (!--v11)
    {
      v10 = &unk_22FA0C218;
      break;
    }
  }

  v12 = *(v10 + 1);
  if (v12)
  {
    v107 = v10[29];
    v108 = v10[28];
    v106 = v10[30];
    if (v128 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v128;
    }

    v112 = v13;
    if (a4)
    {
      v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v7, v12, v8, v9);
      if (qword_27DAD28E8 != -1)
      {
        sub_22F9F3B90();
      }

      v18 = objc_msgSend_objectForKeyedSubscript_(qword_27DAD28E0, v14, v17, v15, v16);

      if (v18)
      {
        v12 = objc_msgSend_unsignedIntValue(v18, v19, v20, v21, v22);
      }
    }

    v23 = objc_opt_new();
    v27 = v23;
    if (v128)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v105 = v23;
    objc_msgSend_setTextureType_(v23, v24, v28, v25, v26);
    objc_msgSend_setWidth_(v27, v29, v126, v30, v31);
    objc_msgSend_setHeight_(v27, v32, v127, v33, v34);
    objc_msgSend_setArrayLength_(v27, v35, v112, v36, v37);
    objc_msgSend_setMipmapLevelCount_(v27, v38, v129, v39, v40);
    objc_msgSend_setPixelFormat_(v27, v41, v12, v42, v43);
    objc_msgSend_setUsage_(v27, v44, 3, v45, v46);
    if (a3)
    {
      objc_msgSend_setStorageMode_(v105, v47, 2, v48, v49);
      v53 = objc_msgSend_newSharedTextureWithDescriptor_(v110, v50, v105, v51, v52);
    }

    else
    {
      v53 = objc_msgSend_newTextureWithDescriptor_(v110, v47, v105, v48, v49);
    }

    v111 = v53;
    if (objc_msgSend_storageMode(v53, v54, v55, v56, v57) == 2)
    {
      v104 = objc_msgSend_newCommandQueue(v110, v59, v60, v61, v62);
      v109 = objc_msgSend_commandBuffer(v104, v63, v64, v65, v66);
      if (v129)
      {
        for (i = 0; i < v129; ++i)
        {
          v122 = 0;
          (*(*a1 + 16))(a1, &v122, 4);
          v72 = 0;
          v73 = v126 >> i;
          v74 = v127 >> i;
          v75 = v122 / v112;
          do
          {
            v76 = objc_msgSend_newBufferWithLength_options_(v110, v67, v75, 0, v70);
            v77 = v76;
            v82 = objc_msgSend_contents(v76, v78, v79, v80, v81);
            (*(*a1 + 16))(a1, v82, v75);
            v87 = objc_msgSend_blitCommandEncoder(v109, v83, v84, v85, v86);
            *buf = v73;
            v114 = v74;
            v115 = 1;
            __p = 0;
            v120 = 0;
            v121 = 0;
            objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v87, v88, v76, 0, (v108 - 1 + v73) / v108 * v106, (v108 - 1 + v73) / v108 * v106 * ((v107 - 1 + v74) / v107), buf, v111, v72, i, &__p);
            objc_msgSend_endEncoding(v87, v89, v90, v91, v92);

            ++v72;
          }

          while (v112 != v72);
        }
      }

      objc_msgSend_commit(v109, v67, v68, v69, v70);
      objc_msgSend_waitUntilCompleted(v109, v93, v94, v95, v96);
    }

    else
    {
      __p = 0;
      v120 = 0;
      v121 = 0;
      if (v129)
      {
        for (j = 0; j < v129; ++j)
        {
          v122 = 0;
          (*(*a1 + 16))(a1, &v122, 4);
          v98 = v122 / v112;
          if (v98 <= v120 - __p)
          {
            if (v98 < v120 - __p)
            {
              v120 = __p + v98;
            }
          }

          else
          {
            sub_22F9F3A58(&__p, v98 - (v120 - __p));
          }

          v99 = 0;
          v100 = v126 >> j;
          v101 = v127 >> j;
          do
          {
            (*(*a1 + 16))(a1, __p, v98);
            *buf = 0;
            v114 = 0;
            v115 = 0;
            v116 = v100;
            v117 = v101;
            v118 = 1;
            objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v111, v102, buf, j, v99++, __p, (v108 - 1 + v100) / v108 * v106, (v108 - 1 + v100) / v108 * v106 * ((v107 - 1 + v101) / v107));
          }

          while (v112 != v99);
        }

        if (__p)
        {
          v120 = __p;
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v58 = _mxi_log();
    v105 = v58;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v58, OS_LOG_TYPE_ERROR, "[Image/ImageKTX.mm:242] Invalid format reading ktx", buf, 2u);
    }

    v111 = 0;
  }

  return v111;
}

uint64_t WriteKTX(uint64_t a1, void *a2, uint64_t a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v100 = a2;
  if (objc_msgSend_count(v100, v5, v6, v7, v8))
  {
    v95 = objc_msgSend_objectAtIndex_(v100, v9, 0, v10, v11);
    v16 = objc_msgSend_pixelFormat(v95, v12, v13, v14, v15);
    v21 = &byte_22FA0C256;
    v22 = 37;
    while (*(v21 - 22) != v16)
    {
      v21 += 32;
      if (!--v22)
      {
        goto LABEL_23;
      }
    }

    if (!v16)
    {
LABEL_23:
      v87 = _mxi_log();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v87, OS_LOG_TYPE_ERROR, "[Image/ImageKTX.mm:351] Invalid texture pixel format writing ktx", buf, 2u);
      }

      goto LABEL_26;
    }

    v24 = *(v21 - 30);
    v25 = *(v21 - 10);
    v91 = *(v21 - 1);
    v92 = *(v21 - 2);
    v90 = *v21;
    v94 = objc_msgSend_width(v95, v17, v18, v19, v20);
    v93 = objc_msgSend_height(v95, v26, v27, v28, v29);
    v34 = objc_msgSend_count(v100, v30, v31, v32, v33);
    v39 = v34;
    *buf = 0u;
    v111 = 0x100000000;
    v113 = 0u;
    v114 = 0u;
    *&buf[12] = 67305985;
    v112 = v25;
    *&v113 = __PAIR64__(v94, v24);
    if (a3 == 2)
    {
      v40 = 0;
    }

    else
    {
      v40 = v34;
    }

    DWORD2(v113) = v93;
    *&v114 = v40 | 0x100000000;
    *(&v114 + 1) = objc_msgSend_mipmapLevelCount(v95, v35, v36, v37, v38);
    *&buf[8] = 169478669;
    *buf = 0xBB31312058544BABLL;
    (*(*a1 + 16))(a1, buf, 64);
    v97 = objc_msgSend_device(v95, v41, v42, v43, v44);
    v98 = objc_msgSend_newCommandQueue(v97, v45, v46, v47, v48);
    v53 = 0;
    v96 = v39;
    v99 = v39;
    while (objc_msgSend_mipmapLevelCount(v95, v49, v50, v51, v52) > v53)
    {
      v54 = (v92 - 1 + (v94 >> v53)) / v92 * v90;
      v55 = v54 * ((v91 - 1 + (v93 >> v53)) / v91);
      v109 = v55 * v96;
      (*(*a1 + 16))(a1, &v109, 4);
      sub_22F9E1DE0(__p, v55);
      if (v96)
      {
        v56 = 0;
        do
        {
          v57 = objc_msgSend_objectAtIndex_(v100, v49, v56, v51, v52);
          if (objc_msgSend_storageMode(v57, v58, v59, v60, v61) == 2)
          {
            v66 = objc_msgSend_commandBuffer(v98, v62, v63, v64, v65);
            v68 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v97, v67, __p[0], v55, 0, 0);
            v73 = objc_msgSend_blitCommandEncoder(v66, v69, v70, v71, v72);
            v101 = 0;
            v102 = 0;
            v103 = 0;
            v107[0] = v94 >> v53;
            v107[1] = v93 >> v53;
            v107[2] = 1;
            objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v73, v74, v57, 0, v53, &v101, v107, v68, 0, v54, v55);
            objc_msgSend_endEncoding(v73, v75, v76, v77, v78);
            objc_msgSend_commit(v66, v79, v80, v81, v82);
            objc_msgSend_waitUntilCompleted(v66, v83, v84, v85, v86);
          }

          else
          {
            v101 = 0;
            v102 = 0;
            v103 = 0;
            v104 = v94 >> v53;
            v105 = v93 >> v53;
            v106 = 1;
            objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v57, v62, __p[0], v54, v55, &v101, v53, 0);
          }

          (*(*a1 + 16))(a1, __p[0], v55);

          ++v56;
        }

        while (v99 != v56);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v53;
    }

    v88 = 1;
  }

  else
  {
    v23 = _mxi_log();
    v95 = v23;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v23, OS_LOG_TYPE_ERROR, "[Image/ImageKTX.mm:344] Texture array with 0 slices", buf, 2u);
    }

LABEL_26:
    v88 = 0;
  }

  return v88;
}

uint64_t image::WriteKTX(uint64_t a1, void *a2)
{
  return WriteKTX(a1, a2, 3);
}

{
  v3 = a2;
  v8 = objc_opt_new();
  for (i = 0; objc_msgSend_arrayLength(v3, v4, v5, v6, v7) > i; ++i)
  {
    v14 = objc_msgSend_pixelFormat(v3, v10, v11, v12, v13);
    v19 = objc_msgSend_mipmapLevelCount(v3, v15, v16, v17, v18);
    v21 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v3, v20, v14, 2, 0, v19, i, 1);
    objc_msgSend_addObject_(v8, v22, v21, v23, v24);
  }

  v25 = objc_msgSend_textureType(v3, v10, v11, v12, v13);
  v26 = WriteKTX(a1, v8, v25);

  return v26;
}

void sub_22F9F386C()
{
  v3[28] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2844A1840;
  v2[1] = &unk_2844A1870;
  v3[0] = &unk_2844A1858;
  v3[1] = &unk_2844A1888;
  v2[2] = &unk_2844A18A0;
  v2[3] = &unk_2844A18D0;
  v3[2] = &unk_2844A18B8;
  v3[3] = &unk_2844A18E8;
  v2[4] = &unk_2844A1900;
  v2[5] = &unk_2844A1930;
  v3[4] = &unk_2844A1918;
  v3[5] = byte_2844A1948;
  v2[6] = &unk_2844A1960;
  v2[7] = &unk_2844A1990;
  v3[6] = &unk_2844A1978;
  v3[7] = &unk_2844A19A8;
  v2[8] = &unk_2844A19C0;
  v2[9] = &unk_2844A19F0;
  v3[8] = &unk_2844A19D8;
  v3[9] = &unk_2844A1A08;
  v2[10] = &unk_2844A1A20;
  v2[11] = &unk_2844A1A50;
  v3[10] = &unk_2844A1A38;
  v3[11] = &unk_2844A1A68;
  v2[12] = &unk_2844A1A80;
  v2[13] = &unk_2844A1AB0;
  v3[12] = &unk_2844A1A98;
  v3[13] = &unk_2844A1AC8;
  v2[14] = &unk_2844A1858;
  v2[15] = &unk_2844A1888;
  v3[14] = &unk_2844A1840;
  v3[15] = &unk_2844A1870;
  v2[16] = &unk_2844A18B8;
  v2[17] = &unk_2844A18E8;
  v3[16] = &unk_2844A18A0;
  v3[17] = &unk_2844A18D0;
  v2[18] = &unk_2844A1918;
  v2[19] = byte_2844A1948;
  v3[18] = &unk_2844A1900;
  v3[19] = &unk_2844A1930;
  v2[20] = &unk_2844A1978;
  v2[21] = &unk_2844A19A8;
  v3[20] = &unk_2844A1960;
  v3[21] = &unk_2844A1990;
  v2[22] = &unk_2844A19D8;
  v2[23] = &unk_2844A1A08;
  v3[22] = &unk_2844A19C0;
  v3[23] = &unk_2844A19F0;
  v2[24] = &unk_2844A1A38;
  v2[25] = &unk_2844A1A68;
  v3[24] = &unk_2844A1A20;
  v3[25] = &unk_2844A1A50;
  v2[26] = &unk_2844A1A98;
  v2[27] = &unk_2844A1AC8;
  v3[26] = &unk_2844A1A80;
  v3[27] = &unk_2844A1AB0;
  v0 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], byte_2844A1948, v3, v2, 28);
  v1 = qword_27DAD28E0;
  qword_27DAD28E0 = v0;
}

void sub_22F9F3A58(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_22F9C7AD4();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

unint64_t symbolic_to_physical(unint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (v5 == 2)
  {
    v19 = 0;
    *a3 = -516;
    v20 = a3 + 9;
    do
    {
      *(v20 - 1) = *&a2[v19 + 20];
      v20 += 2;
      v19 += 4;
    }

    while (v19 != 16);
    return result;
  }

  if (v5 == 1)
  {
    v21 = 0;
    *a3 = -4;
    v22 = a3 + 9;
    do
    {
      *(v22 - 1) = *&a2[v21 + 20];
      v22 += 2;
      v21 += 4;
    }

    while (v21 != 16);
    return result;
  }

  if (!*a2)
  {
    sub_22F9F46C4();
  }

  v6 = a2[1];
  v71 = 0uLL;
  v7 = *(result + 2 * *(a2 + 2) + 11302240);
  if (v7 == 0xFFFF || *(result + 28) <= v7)
  {
    sub_22F9F2878();
  }

  v9 = *(result + 129904 * *(result + 6 * *(result + 2 * *(a2 + 2) + 11302240) + 11306338) + 594);
  v10 = *(result + 6 * *(result + 2 * *(a2 + 2) + 11302240) + 11306339);
  v11 = -1.0;
  if (v10 <= 0x14)
  {
    v11 = flt_22FA0C6EC[*(result + 6 * *(result + 2 * *(a2 + 2) + 11302240) + 11306339)];
  }

  v12 = *(result + 6 * *(result + 2 * *(a2 + 2) + 11302240) + 11306341);
  v13 = &quant_and_xfer_tables + 226 * *(result + 6 * *(result + 2 * *(a2 + 2) + 11302240) + 11306339);
  v14 = v9 << (v12 & 1);
  ise_sequence_bitcount = get_ise_sequence_bitcount(v14, v10);
  if (v12)
  {
    if (v9)
    {
      v23 = v13 + 32;
      v24 = a2 + 96;
      v25 = v70;
      do
      {
        v26 = ((v11 * vcvts_n_f32_u32(*(v24 - 32), 6uLL)) + 0.5);
        v27 = *v24++;
        *(v25 - 1) = v23[v26];
        *v25 = v23[((v11 * vcvts_n_f32_u32(v27, 6uLL)) + 0.5)];
        v25 += 2;
        --v9;
      }

      while (v9);
    }
  }

  else if (v9)
  {
    v16 = a2 + 64;
    v17 = &v69;
    do
    {
      v18 = *v16++;
      *v17++ = v13[((v11 * vcvts_n_f32_u32(v18, 6uLL)) + 0.5) + 32];
      --v9;
    }

    while (v9);
  }

  encode_ise(v10, v14, &v69, &v71, 0);
  v28 = vrev64q_s8(v71);
  *a3 = vrbitq_s8(vextq_s8(v28, v28, 8uLL));
  v29 = *(a2 + 2);
  *a3 = v29;
  v30 = (v29 >> 8) & 7;
  v31 = (8 * v6 + 24) & 0x18;
  *(a3 + 1) = *(a3 + 1) & 0xE0 | v31 | BYTE1(v29) & 7;
  v32 = *(a3 + 2);
  v33 = 128 - ise_sequence_bitcount;
  if (v6 >= 2)
  {
    v34 = *(a2 + 3);
    *(a3 + 1) = v31 | (32 * v34) | v30;
    v35 = (v34 >> 3) & 7;
    v36 = v32 & 0xF8 | (v34 >> 3) & 7;
    *(a3 + 2) = v36;
    v37 = (*(a2 + 3) >> 3) & 0x78;
    *(a3 + 2) = v36 & 0x87 | (*(a2 + 3) >> 3) & 0x78;
    v38 = *(a3 + 3);
    v39 = (a2 + 8);
    if (a2[2])
    {
      v40 = *v39;
      *(a3 + 2) = v37 | v35;
      *(a3 + 3) = v38 & 0xE0 | (2 * (v40 & 0xF));
      if ((v12 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v54 = 4;
      v55 = v6;
      v56 = a2 + 8;
      do
      {
        v57 = *v56++;
        v58 = v57 >> 2;
        if ((v57 >> 2) < v54)
        {
          v54 = v58;
        }

        --v55;
      }

      while (v55);
      v59 = 2;
      if (v54 == 3)
      {
        v60 = 2;
      }

      else
      {
        v60 = v54;
      }

      v61 = v60 + 1;
      v62 = v6;
      v63 = a2 + 8;
      do
      {
        v64 = *v63++;
        v61 |= ((v64 >> 2) - v60) << v59++;
        --v62;
      }

      while (v62);
      v65 = v6 + 2;
      v66 = v6;
      do
      {
        v67 = *v39++;
        v61 |= (v67 & 3) << v65;
        v65 += 2;
        --v66;
      }

      while (v66);
      v33 -= 3 * v6 - 4;
      *(a3 + 2) = v35 | (v61 << 7) | v37;
      *(a3 + 3) = v38 & 0xE0 | (v61 >> 1) & 0x1F;
      *(a3 + (v33 >> 3)) = *(a3 + (v33 >> 3)) & ~(~(-1 << (3 * v6 - 4)) << (v33 & 7)) | (((v61 >> 6) & ~(-1 << (3 * v6 - 4))) << (v33 & 7));
      if ((v12 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  v41 = a2[8];
  *(a3 + 1) = v31 | (32 * v41) | v30;
  *(a3 + 2) = v32 & 0xFE | ((v41 & 8) != 0);
  if (v12)
  {
LABEL_30:
    *(a3 + ((v33 - 2) >> 3)) = *(a3 + ((v33 - 2) >> 3)) & ~(3 << ((v33 - 2) & 7)) | ((a2[3] & 3) << ((v33 - 2) & 7));
  }

LABEL_31:
  v42 = *(a2 + 3);
  v43 = a2[1];
  if (a2[1])
  {
    v44 = 0;
    v45 = 0;
    v46 = a2 + 20;
    do
    {
      v47 = (a2[v44 + 8] >> 1) & 0x7E;
      if (v47 > 6)
      {
        sub_22F9F46F0();
      }

      v48 = v47 + 2;
      v49 = &v68[v45];
      v50 = v48;
      v51 = v46;
      do
      {
        v52 = *v51++;
        *v49++ = color_uquant_to_scrambled_pquant_tables[256 * v42 - 1024 + v52];
        --v50;
      }

      while (v50);
      v45 += v48;
      ++v44;
      v46 += 8;
    }

    while (v44 != v43);
  }

  else
  {
    v45 = 0;
  }

  if (v43 == 1)
  {
    v53 = 17;
  }

  else
  {
    v53 = 29;
  }

  return encode_ise(v42, v45, v68, a3, v53);
}

unint64_t physical_to_symbolic(unint64_t result, int8x16_t *a2, uint64_t a3)
{
  v101 = *MEMORY[0x277D85DE8];
  *a3 = 3;
  v5 = a2->u8[1];
  v6 = a2->u8[0] | ((v5 & 7) << 8);
  if ((a2->u8[0] | ((v5 & 7) << 8) & 0x1FF) == 0x1FC)
  {
    if ((v5 & 2) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    *a3 = v7;
    *(a3 + 1) = 0;
    v8 = &a2->i8[9];
    for (i = 20; i != 36; i += 4)
    {
      *(a3 + i) = *(v8 - 1);
      v8 += 2;
    }

    v10 = a2->u8[1];
    if (*(result + 2) == 1)
    {
      if ((~v10 & 0xC) == 0)
      {
        v11 = a2->u8[3];
        v12 = ((16 * a2->u8[2]) | (v11 << 12)) & 0x1F00 | ((v10 | (a2->u8[2] << 8)) >> 4);
        v13 = a2->u8[4];
        v14 = ((v11 | (v13 << 8)) >> 1) & 0x1FFF;
        v15 = a2->u8[6];
        v16 = ((4 * a2->u8[5]) | (v15 << 10)) & 0x1F00 | ((v13 | (a2->u8[5] << 8)) >> 6);
        v17 = (v15 | (a2->u8[7] << 8)) >> 3;
        v21 = v12 == 0x1FFF && v14 == 0x1FFF && v16 == 0x1FFF && v17 == 0x1FFF;
        if (v12 >= v14)
        {
          if (v21)
          {
            return result;
          }
        }

        else
        {
          v22 = v16 < v17 || v21;
          if (v22)
          {
            return result;
          }
        }
      }

      goto LABEL_93;
    }

    v40 = a2->u8[2];
    v41 = ((v10 | (v40 << 8)) >> 2) & 0x1FF;
    v42 = a2->u8[3];
    v43 = ((v40 | (v42 << 8)) >> 3) & 0x1FF;
    v44 = a2->u8[4];
    v45 = ((v42 | (v44 << 8)) >> 4) & 0x1FF;
    v46 = a2->u8[5];
    v47 = ((v44 | (v46 << 8)) >> 5) & 0x1FF;
    v48 = a2->u8[6];
    v49 = ((v46 | (v48 << 8)) >> 6) & 0x1FF;
    v50 = (v48 | (a2->u8[7] << 8)) >> 7;
    v56 = v41 == 511 && v43 == 511 && v45 == 511 && v47 == 511 && v49 == 511 && v50 == 511;
    if (v41 >= v43 || v45 >= v47)
    {
      if (v56)
      {
        return result;
      }

      goto LABEL_93;
    }

    v57 = v49 < v50 || v56;
    if ((v57 & 1) == 0)
    {
LABEL_93:
      *a3 = 0;
    }
  }

  else
  {
    v23 = *(result + 2 * v6 + 11302240);
    if (v23 == 0xFFFF)
    {
      goto LABEL_93;
    }

    if (*(result + 28) <= v23)
    {
      sub_22F9F2878();
    }

    v24 = (result + 129904 * *(result + 6 * *(result + 2 * v6 + 11302240) + 11306338));
    v25 = v24[594];
    if (!v24[594])
    {
      sub_22F9F471C();
    }

    v26 = *(result + 6 * *(result + 2 * v6 + 11302240) + 11306339);
    v27 = *(result + 6 * *(result + 2 * v6 + 11302240) + 11306341);
    v95 = (v5 >> 3) & 3;
    v28 = (v95 + 1);
    *(a3 + 4) = v6;
    *(a3 + 1) = v95 + 1;
    v29 = vrev64q_s8(*a2);
    v100 = vrbitq_s8(vextq_s8(v29, v29, 8uLL));
    ise_sequence_bitcount = get_ise_sequence_bitcount(v25 << (v27 & 1), v26);
    result = decode_ise(v26, (v25 << (v27 & 1)), &v100, &__dst, 0, v30, v31, v32);
    if (v27)
    {
      v36 = (a3 + 96);
      v37 = v99;
      v38 = &quant_and_xfer_tables[226 * v26 + 64];
      do
      {
        *(v36 - 32) = v38[*(v37 - 1)];
        v39 = *v37;
        v37 += 2;
        *v36++ = v38[v39];
        --v25;
      }

      while (v25);
    }

    else
    {
      v58 = (a3 + 64);
      p_dst = &__dst;
      do
      {
        v60 = *p_dst++;
        *v58++ = quant_and_xfer_tables[226 * v26 + 64 + v60];
        --v25;
      }

      while (v25);
    }

    if ((v27 & 1) != 0 && v95 == 3)
    {
      goto LABEL_93;
    }

    v61 = 128 - ise_sequence_bitcount;
    *(a3 + 2) = 0;
    if (v95)
    {
      v62 = a2->u8[2];
      v63 = a2->u8[3];
      v64 = v62 | (v63 << 8);
      v65 = (v64 >> 7) & 3;
      if (v65)
      {
        v66 = 3 * v28 - 4;
        v61 -= v66;
        v67 = (v64 >> 7) & 0x3F | (((*(a2->u16 + (v61 >> 3)) >> (v61 & 7)) & ~(-1 << (3 * (v95 + 1) - 4))) << 6);
        v68 = v65 - 1;
        v69 = 2;
        v70 = v97;
        v71 = (v95 + 1);
        do
        {
          *v70++ = 4 * (v68 + ((v67 >> v69++) & 1));
          --v71;
        }

        while (v71);
        v72 = v97;
        v73 = (v95 + 1);
        do
        {
          *v72++ |= (v67 >> v69) & 3;
          v69 += 2;
          --v73;
        }

        while (v73);
      }

      else
      {
        v75 = (v63 >> 1) & 0xF;
        v76 = vdupq_n_s64(v95);
        v77 = vmovn_s64(vcgeq_u64(v76, xmmword_22FA07DE0));
        v35 = vuzp1_s16(v77, *v76.i8);
        if (v35.i8[0])
        {
          v97[0] = v75;
        }

        if (vuzp1_s16(v77, *&v76).i8[2])
        {
          v97[1] = v75;
        }

        v78 = vmovn_s64(vcgeq_u64(v76, xmmword_22FA07DD0));
        v34 = vuzp1_s16(v78, v78);
        if (v34.i8[4])
        {
          v97[2] = v75;
        }

        v33 = COERCE_DOUBLE(vuzp1_s16(v78, v78));
        if (BYTE6(v33))
        {
          v97[3] = v75;
        }

        v66 = 0;
        *(a3 + 2) = 1;
        v62 = a2->u8[2];
      }

      v74 = ((a2->u8[1] | (v62 << 8)) >> 5) & 0x3FF;
    }

    else
    {
      LOWORD(v74) = 0;
      v66 = 0;
      v97[0] = ((a2->u8[1] | (a2->u8[2] << 8)) >> 5) & 0xF;
    }

    v79 = 0;
    *(a3 + 6) = v74;
    do
    {
      *(a3 + v79 + 8) = v97[v79];
      ++v79;
    }

    while (v28 != v79);
    v80 = 0;
    LODWORD(v81) = 0;
    do
    {
      v81 = (v81 + 2 * (v97[v80 / 4] >> 2) + 2);
      v80 += 4;
    }

    while (4 * ((v5 >> 3) & 3) + 4 != v80);
    if (v81 > 18)
    {
      goto LABEL_93;
    }

    v82 = dword_22FA0C6D8[v28] - (v66 + ise_sequence_bitcount);
    if (v27)
    {
      v82 -= 2;
    }

    result = quant_mode_table[128 * (v81 >> 1) + (v82 & ~(v82 >> 31))];
    if (result <= 3)
    {
      goto LABEL_93;
    }

    *(a3 + 12) = result;
    if (v95)
    {
      v83 = 29;
    }

    else
    {
      v83 = 17;
    }

    result = decode_ise(result, v81, a2, v96, v83, v33, v34, v35);
    v84 = 0;
    v85 = 0;
    v86 = *(&color_scrambled_pquant_to_uquant_tables + *(a3 + 12) - 4);
    v87 = (a3 + 20);
    do
    {
      v88 = v97[v84] >> 1;
      v89 = (v88 & 0xFFFFFFFE) + 2;
      if ((v88 & 0x80000000) == 0)
      {
        v90 = &v96[v85];
        v91 = v89;
        v92 = v87;
        do
        {
          v93 = *v90++;
          *v92++ = *(v86 + v93);
          --v91;
        }

        while (v91);
      }

      v85 += v89;
      ++v84;
      v87 += 8;
    }

    while (v84 != v28);
    *(a3 + 3) = -1;
    if (v27)
    {
      *(a3 + 3) = (*(a2->u16 + ((v61 - 2) >> 3)) >> ((v61 - 2) & 7)) & 3;
    }
  }

  return result;
}

double astc::rand_init(astc *this, unint64_t *a2)
{
  result = -2.40530959e284;
  *this = xmmword_22FA0C740;
  return result;
}

uint64_t astc::rand(astc *this, unint64_t *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = __ROR8__(v3 ^ *this, 27);
  *this ^= __ROR8__(*this, 40) ^ ((v3 ^ *this) << 16) ^ v3;
  *(this + 1) = v4;
  return v3 + v2;
}

void load_image_block(__int32 a1, int *a2, int8x16_t *a3, unsigned __int8 *a4, unsigned int a5, int a6, int a7, _DWORD *a8, float a9)
{
  v11 = a3;
  v12 = a2[1];
  v77 = *a2;
  v13 = a2[2];
  a3[252].i32[1] = a5;
  a3[252].i32[2] = a6;
  a3[252].i32[3] = a7;
  if (a8[3] == 3 && a8[2] == 2 && a8[1] == 1 && *a8 == 0)
  {
    v17 = nullsub_4;
  }

  else
  {
    v17 = sub_22F9F4C4C;
  }

  LOBYTE(a9) = a4[3];
  v18 = 1.0 / LODWORD(a9);
  v19.i32[0] = a1 & 0xFFFFFFFE;
  v19.i32[1] = a1;
  v20 = vceq_s32(v19, 0x300000002);
  v21 = vuzp1_s16(v20, v19);
  v22 = vzip1_s16(v21, v21);
  v22.i16[2] = v21.i16[0];
  v23 = v20.i8[0] & 1;
  v24.i64[0] = 0x100000001;
  v24.i64[1] = 0x100000001;
  v69 = vmovl_u16(v22);
  v25 = vandq_s8(v69, v24);
  v26 = a2[3];
  v27 = sub_22F9F4C08;
  if (v26 == 2)
  {
    v27 = sub_22F9F4C3C;
  }

  if (v26 == 1)
  {
    v28 = sub_22F9F4C2C;
  }

  else
  {
    v28 = v27;
  }

  {
    v68 = v20.i8[0] & 1;
    v84 = v18;
    v92 = v22;
    v95 = v20.i8[4];
    v90 = v25;
    sub_22F9F25EC();
    v25 = v90;
    v22 = v92;
    v20.i8[4] = v95;
    v24.i64[0] = 0x100000001;
    v24.i64[1] = 0x100000001;
    v18 = v84;
    v23 = v68;
  }

  v29 = sub_22F9F4CE0;
  if (!vaddvq_s32(vshlq_u32(v25, mask(vmask4)::shift)))
  {
    v29 = sub_22F9F4CCC;
  }

  v30 = a4[2];
  if (a4[2])
  {
    v82 = v29;
    v85 = v17;
    v86 = a8;
    v31 = 0;
    v32 = 0;
    v33 = v20.i8[4] & 1;
    v73 = v12 - 1;
    v34 = a4[1];
    v35 = vdupq_n_s32(0xFE967699);
    v36 = vdupq_n_s32(0x7E967699u);
    v72 = &v11[238].i8[10];
    v37.i64[0] = -1;
    v37.i64[1] = -1;
    v38 = 0uLL;
    v39 = v34;
    v74 = v11;
    v83 = v18;
    v81 = vmovl_s16(v22);
    do
    {
      v40 = v32 + a7;
      if (v32 + a7 >= v13 - 1)
      {
        v40 = v13 - 1;
      }

      if (v39)
      {
        v41 = 0;
        v42 = *(*(a2 + 2) + 8 * v40);
        v43 = *a4;
        v78 = v32;
        do
        {
          if (v43)
          {
            v44 = 0;
            v45 = a5;
            v79 = v41;
            v80 = v31;
            v46 = v41 + a6;
            if (v41 + a6 >= v73)
            {
              v46 = v73;
            }

            v87 = v46 * v77;
            v47 = &v11->i32[v31];
            v48 = &v72[v31];
            do
            {
              v93 = v37;
              v88 = v38;
              v89 = v36;
              v91 = v35;
              if (v45 >= v77 - 1)
              {
                v49 = v77 - 1;
              }

              else
              {
                v49 = v45;
              }

              v50 = v23;
              v28(v42, 4 * (v49 + v87));
              v51 = (v85)(v86);
              *v52.i64 = v82(v51, v81);
              v23 = v50;
              v36 = vminnmq_f32(v89, v52);
              v38 = vaddq_f32(v88, vmulq_n_f32(v52, v83));
              v35 = vmaxnmq_f32(v91, v52);
              v53 = vextq_s8(v52, v52, 4uLL);
              v37 = vandq_s8(v93, vceqq_f32(vdupq_lane_s32(*v52.f32, 0), vzip1q_s32(v53, v53)));
              v47[220] = v52.i32[1];
              v47[440] = v52.i32[2];
              *v47 = v52.i32[0];
              v47[660] = v52.i32[3];
              *(v48 - 216) = v50;
              *v48++ = v33;
              ++v44;
              v43 = *a4;
              ++v47;
              ++v45;
            }

            while (v44 < v43);
            v41 = v79;
            v31 = v80 + v44;
            v34 = a4[1];
            v11 = v74;
            v32 = v78;
          }

          ++v41;
        }

        while (v41 < v34);
        v30 = a4[2];
        v39 = v34;
      }

      ++v32;
    }

    while (v32 < v30);
    v24 = vshrq_n_u32(v37, 0x1FuLL);
  }

  else
  {
    v36 = vdupq_n_s32(0x7E967699u);
    v35 = vdupq_n_s32(0xFE967699);
    v38 = 0uLL;
  }

  v54 = *v11;
  v54.i32[1] = v11[55].i32[0];
  v54.i32[2] = v11[110].i32[0];
  v54.i32[3] = v11[165].i32[0];
  v55 = vdivq_f32(v54, vdupq_n_s32(0x477FFF00u));
  v56 = 0uLL;
  if (v23)
  {
    v57 = vcvtq_s32_f32(v54);
    v58.i64[0] = 0x700000007;
    v58.i64[1] = 0x700000007;
    v59 = vandq_s8(v57, v58);
    v60 = vmovn_s32(v59);
    v61.i64[0] = 0x100000001;
    v61.i64[1] = 0x100000001;
    v62 = vcgtq_u32(v59, v61);
    v63.i64[0] = 0x100000001;
    v63.i64[1] = 0x100000001;
    v64 = vaddq_s32(vshlq_n_s32(v59, 2uLL), v63);
    v63.i64[0] = 0x500000005;
    v63.i64[1] = 0x500000005;
    v65 = vcgtq_u32(v59, v63);
    v63.i16[1] = 5;
    v63.i16[3] = 5;
    v66.i64[0] = 0x700000007;
    v66.i64[1] = 0x700000007;
    v67 = vorrq_s8(vshrq_n_u32(vbslq_s8(v62, vbslq_s8(v65, vmlal_u16(v66, v60, *v63.i8), v64), vmull_u16(v60, 0x3000300030003)), 3uLL), vshlq_n_s32(vshrq_n_u32(v57, 0xBuLL), 0xAuLL));
    v65.i64[0] = 0x7B0000007BLL;
    v65.i64[1] = 0x7B0000007BLL;
    v56 = vcvtq_f32_f16(vmovn_s32(vminq_s32(v67, v65)));
  }

  v11[220] = vbslq_s8(vcltzq_s32(vshlq_n_s32(v69, 0x1FuLL)), v56, v55);
  v11[221] = v36;
  v11[222] = v38;
  v11[223] = v35;
  {
    v94 = v24;
    sub_22F9F25EC();
    v24 = v94;
  }

  v11[225].i8[0] = vaddvq_s32(vshlq_u32(v24, mask(vmask4)::shift)) == 15;
}

double sub_22F9F4C08(uint64_t a1, int a2)
{
  v2 = (a1 + a2);
  v3 = vld1_dup_f32(v2);
  *&result = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v3))), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

__n64 sub_22F9F4C4C(unsigned int *a1, __n128 a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = 0x3F80000000000000;
  result.n64_u32[0] = v3.n128_u32[*a1];
  result.n64_u32[1] = v3.n128_u32[a1[1]];
  return result;
}

double sub_22F9F4CE0(float32x4_t a1, int8x16_t a2)
{
  v2 = vdupq_n_s32(0x477FFF00u);
  v3 = vmulq_f32(a1, v2);
  v4 = *&vshrq_n_u32(a1, 0x17uLL) & __PAIR128__(0xFFFFFEFFFFFFFEFFLL, 0xFFFFFEFFFFFFFEFFLL);
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v6 = *&vandq_s8(a1, vnegq_f32(v5)) | __PAIR128__(0x3F0000003F000000, 0x3F0000003F000000);
  v7 = vcgtq_f32(a1, vdupq_n_s32(0x32800000u));
  v8 = vcgeq_f32(a1, vdupq_n_s32(0x47800000u));
  v9.i64[0] = 0x7000000070;
  v9.i64[1] = 0x7000000070;
  v10.i64[0] = 0x4C0000004C000000;
  v10.i64[1] = 0x4C0000004C000000;
  v11 = vmulq_f32(a1, v10);
  v10.i64[0] = 0xBF000000BF000000;
  v10.i64[1] = 0xBF000000BF000000;
  v12 = vbslq_s8(vcgtq_u32(v4, v9), vmulq_f32(vaddq_f32(v6, v10), vdupq_n_s32(0x45800000u)), v11);
  v10.i64[0] = 0x4300000043000000;
  v10.i64[1] = 0x4300000043000000;
  v13.i64[0] = 0x4400000044000000;
  v13.i64[1] = 0x4400000044000000;
  v14 = vaddq_f32(vbslq_s8(vcgtq_f32(vdupq_n_s32(0x43C00000u), v12), vmulq_f32(v12, vdupq_n_s32(0x3FAAAAABu)), vbslq_s8(vcgeq_f32(vdupq_n_s32(0x44B00000u), v12), vaddq_f32(v12, v10), vmulq_f32(vaddq_f32(v12, v13), vdupq_n_s32(0x3F4CCCCDu)))), vcvtq_f32_u32(vshlq_n_s32(vqsubq_u32(v4, v9), 0xBuLL)));
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vbslq_s8(a2, vandq_s8(vbslq_s8(v8, v2, vaddq_f32(v14, _Q4)), v7), v3).u64[0];
  return result;
}

void load_image_block_fast_ldr(double a1, double a2, double a3, double a4, double a5, float32x4_t a6, uint64_t a7, int *a8, float32x4_t *a9, unsigned __int8 *a10, unsigned int a11, unsigned __int32 a12, __int32 a13)
{
  v14 = *a8;
  v13 = a8[1];
  a9[252].i32[1] = a11;
  a9[252].i32[2] = a12;
  a9[252].i32[3] = a13;
  v15 = a10[1] + a12;
  if (v15 <= a12)
  {
    v22 = vdupq_n_s32(0xFE967699);
    v21 = vdupq_n_s32(0x7E967699u);
    v33.i64[0] = 0x100000001;
    v33.i64[1] = 0x100000001;
    v24 = 0uLL;
  }

  else
  {
    v16 = 0;
    v17 = **(a8 + 2);
    v18 = 4 * v14;
    v19 = v13 - 1;
    v20 = *a10;
    v21 = vdupq_n_s32(0x7E967699u);
    v22 = vdupq_n_s32(0xFE967699);
    v23 = v14 - 1;
    v24 = 0uLL;
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    do
    {
      if (v20 + a11 > a11)
      {
        if (a12 >= v19)
        {
          v26 = v19;
        }

        else
        {
          v26 = a12;
        }

        v27 = v17 + v18 * v26;
        v28 = &a9->i32[v16];
        v29 = v20;
        v30 = a11;
        do
        {
          if (v30 >= v23)
          {
            v31 = v23;
          }

          else
          {
            v31 = v30;
          }

          a6.i32[0] = *(v27 + 4 * v31);
          a6 = vcvtq_f32_u32(vmovl_u16(vmul_s16(*&vmovl_u8(*a6.f32), 0x101010101010101)));
          v21 = vminnmq_f32(v21, a6);
          v24 = vaddq_f32(v24, a6);
          v22 = vmaxnmq_f32(v22, a6);
          v32 = vextq_s8(a6, a6, 4uLL);
          v25 = vandq_s8(v25, vceqq_f32(vdupq_lane_s32(*a6.f32, 0), vzip1q_s32(v32, v32)));
          *v28 = a6.i32[0];
          v28[220] = a6.i32[1];
          v28[440] = a6.i32[2];
          v28[660] = a6.i32[3];
          ++v30;
          ++v28;
          ++v16;
          --v29;
        }

        while (v29);
      }

      ++a12;
    }

    while (a12 != v15);
    v33 = vshrq_n_u32(v25, 0x1FuLL);
  }

  v34 = *a9;
  v34.i32[1] = a9[55].i32[0];
  v34.i32[2] = a9[110].i32[0];
  v34.i32[3] = a9[165].i32[0];
  a9[220] = vdivq_f32(v34, vdupq_n_s32(0x477FFF00u));
  a9[225].i8[2] = 0;
  a9[238].i8[10] = 0;
  a9[221] = v21;
  v21.i8[0] = a10[3];
  v21.f32[0] = v21.u32[0];
  a9[222] = vdivq_f32(v24, vdupq_lane_s32(*v21.f32, 0));
  a9[223] = v22;
  {
    v36 = a9;
    v35 = v33;
    sub_22F9F25EC();
    v33 = v35;
    a9 = v36;
  }

  a9[225].i8[0] = vaddvq_s32(vshlq_u32(v33, mask(vmask4)::shift)) == 15;
}

unint64_t store_image_block(unint64_t result, uint64_t a2, unsigned __int8 *a3, int a4, unsigned int a5, unsigned int a6, unsigned int *a7)
{
  v126 = *MEMORY[0x277D85DE8];
  v9 = *a3;
  v11 = *result;
  v10 = *(result + 4);
  if (*result >= (v9 + a4))
  {
    v12 = v9 + a4;
  }

  else
  {
    v12 = *result;
  }

  v13 = a3[1] + a5;
  if (v10 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  v111 = result;
  LODWORD(v15) = *(result + 8);
  v16 = a3[2] + a6;
  if (v15 >= v16)
  {
    v15 = v16;
  }

  else
  {
    v15 = v15;
  }

  v113 = v15;
  v17 = *a7;
  v18 = a7[1];
  v19 = a7[2];
  v20 = 1;
  if (__PAIR64__(v18, v17) == 0x100000000 && v19 == 2)
  {
    v20 = a7[3] != 3;
  }

  v21 = v13 - v14;
  v117 = 1;
  if (v17 != 6 && v18 != 6 && v19 != 6)
  {
    v117 = a7[3] == 6;
  }

  v116 = v9 - (v12 - a4);
  v112 = v21 * v9;
  v22 = *(result + 12);
  v115 = v14;
  v114 = v12 - a4;
  if (v22)
  {
    if (v22 == 1)
    {
      if (v113 > a6)
      {
        v23 = 0;
        v24 = *(result + 16);
        v25 = 4 * v11;
        v26 = a2 + 880;
        result = &v118;
        v27 = a6;
        do
        {
          if (v14 > a5)
          {
            v28 = *(v24 + 8 * v27) + 2 * (4 * a4);
            v29 = a5;
            do
            {
              if (v12 != a4)
              {
                v30 = (v28 + 2 * (v25 * v29));
                v31 = v23;
                v32 = a2 + 4 * v23;
                v33 = &v118.i32[a7[3]];
                v34 = v12 - a4;
                do
                {
                  if (v20)
                  {
                    v119.i64[0] = 0x3F80000000000000;
                    v35 = *v32;
                    v36 = *(v32 + 880);
                    v118.i32[0] = *v32;
                    v118.i32[1] = v36;
                    v37 = *(v32 + 2640);
                    v118.i32[2] = *(v32 + 1760);
                    *&v118.i32[3] = v37;
                    if (v117)
                    {
                      v38 = (1.0 - (((v35 * 2.0) + -1.0) * ((v35 * 2.0) + -1.0))) - (((v37 * 2.0) + -1.0) * ((v37 * 2.0) + -1.0));
                      if (v38 < 0.0)
                      {
                        v38 = 0.0;
                      }

                      *&v119.i32[2] = (sqrtf(v38) * 0.5) + 0.5;
                    }

                    v39.i32[0] = v118.i32[v17];
                    v39.i32[1] = v118.i32[v18];
                    v39.i32[2] = v118.i32[v19];
                    v39.i32[3] = *v33;
                  }

                  else
                  {
                    v40 = 4 * v31;
                    v39.i32[0] = *(a2 + v40);
                    v39.i32[1] = *(v26 + v40);
                    v39.i32[2] = *(a2 + 1760 + v40);
                    v39.i32[3] = *(a2 + 2640 + v40);
                  }

                  *v30++ = vcvt_f16_f32(v39);
                  ++v31;
                  v32 += 4;
                  --v34;
                }

                while (v34);
                v23 = v31;
              }

              v23 += v116;
              v29 = (v29 + 1);
            }

            while (v29 != v14);
          }

          v23 += v112;
          ++v27;
        }

        while (v27 != v113);
      }
    }

    else
    {
      if (v22 != 2)
      {
        sub_22F9F568C();
      }

      if (v113 > a6)
      {
        v79 = 0;
        v80 = 4 * v11;
        v81 = a2 + 1760;
        v82 = a2 + 2640;
        v83 = a6;
        do
        {
          if (v14 > a5)
          {
            v84 = *(*(v111 + 16) + 8 * v83) + 4 * (4 * a4);
            result = a5;
            do
            {
              if (v12 != a4)
              {
                v85 = (v84 + 4 * (v80 * result));
                v86 = v12 - a4;
                do
                {
                  LODWORD(v87) = *(a2 + 4 * v79);
                  v88 = *(a2 + 880 + 4 * v79);
                  v89 = *(v81 + 4 * v79);
                  v90 = *(v82 + 4 * v79);
                  if (v20)
                  {
                    v119.i64[0] = 0x3F80000000000000;
                    v118.i64[0] = __PAIR64__(v88, v87);
                    v118.i64[1] = __PAIR64__(LODWORD(v90), v89);
                    if (v117)
                    {
                      v91 = (1.0 - (((*&v87 * 2.0) + -1.0) * ((*&v87 * 2.0) + -1.0))) - (((v90 * 2.0) + -1.0) * ((v90 * 2.0) + -1.0));
                      if (v91 < 0.0)
                      {
                        v91 = 0.0;
                      }

                      *&v119.i32[2] = (sqrtf(v91) * 0.5) + 0.5;
                    }

                    LODWORD(v87) = v118.i32[*a7];
                    DWORD1(v87) = v118.i32[a7[1]];
                    DWORD2(v87) = v118.i32[a7[2]];
                    HIDWORD(v87) = v118.i32[a7[3]];
                  }

                  else
                  {
                    DWORD1(v87) = *(a2 + 880 + 4 * v79);
                    DWORD2(v87) = *(v81 + 4 * v79);
                    HIDWORD(v87) = *(v82 + 4 * v79);
                  }

                  *v85++ = v87;
                  ++v79;
                  --v86;
                }

                while (v86);
              }

              v79 += v116;
              ++result;
            }

            while (result != v14);
          }

          v79 += v112;
          ++v83;
        }

        while (v83 != v113);
      }
    }
  }

  else if (v113 > a6)
  {
    v41 = 0;
    v42 = 4 * v11;
    v43 = (4 * a4);
    v44 = a2 + 880;
    v45 = a2 + 1760;
    __asm { FMOV            V4.4S, #1.0 }

    v51 = vdupq_n_s32(0x437F0000u);
    v52.i64[0] = 0x3F0000003F000000;
    v52.i64[1] = 0x3F0000003F000000;
    v53.i64[0] = 0xFF000000FFLL;
    v53.i64[1] = 0xFF000000FFLL;
    v54 = a5;
    __asm { FMOV            V16.4S, #-1.0 }

    v56 = 0uLL;
    v57.i64[0] = 0x100000001;
    v57.i64[1] = 0x100000001;
    result = a6;
    v58 = xmmword_22FA083F0;
    do
    {
      if (v115 > a5)
      {
        v59 = *(*(v111 + 16) + 8 * result) + v43;
        v60 = v54;
        v61 = v114;
        do
        {
          if (v12 != a4)
          {
            v62 = 0;
            v63 = (v59 + (v42 * v60));
            v64 = v61;
            do
            {
              v65 = v64;
              _CF = v64 >= 4;
              v64 -= 4;
              if (_CF)
              {
                v66 = 4;
              }

              else
              {
                v66 = v65;
              }

              v67 = 4 * v41;
              v68 = *(a2 + v67);
              v69 = *(a2 + 2640 + v67);
              v70 = vcvtq_s32_f32(vaddq_f32(vmulq_f32(vminnmq_f32(v68, _Q4), v51), v52));
              v71 = vcvtq_s32_f32(vaddq_f32(vmulq_f32(vminnmq_f32(*(v44 + v67), _Q4), v51), v52));
              v72 = vcvtq_s32_f32(vaddq_f32(vmulq_f32(vminnmq_f32(*(v45 + v67), _Q4), v51), v52));
              v73 = vcvtq_s32_f32(vaddq_f32(vmulq_f32(vminnmq_f32(v69, _Q4), v51), v52));
              if (v20)
              {
                v122 = 0;
                v123 = 0;
                v124 = v53;
                v118 = v70;
                v119 = v71;
                v120 = v72;
                v121 = v73;
                if (v117)
                {
                  v74 = vaddq_f32(vaddq_f32(v68, v68), _Q16);
                  v75 = vaddq_f32(vaddq_f32(v69, v69), _Q16);
                  v125 = vcvtq_s32_f32(vaddq_f32(vmulq_f32(vminnmq_f32(vaddq_f32(vmulq_f32(vsqrtq_f32(vmaxnmq_f32(vsubq_f32(vsubq_f32(_Q4, vmulq_f32(v74, v74)), vmulq_f32(v75, v75)), v56)), v52), v52), _Q4), v51), v52));
                }

                v70 = *(&v118 + *a7);
                v71 = *(&v118 + a7[1]);
                v72 = *(&v118 + a7[2]);
                v73 = *(&v118 + a7[3]);
              }

              {
                v109 = a4;
                v110 = a5;
                v108 = v42;
                v106 = v44;
                v107 = v43;
                v105 = v45;
                v103 = v51;
                v104 = _Q4;
                v102 = v54;
                v101 = _Q16;
                v100 = result;
                v99 = v58;
                v97 = v60;
                v98 = v59;
                v95 = v70;
                v96 = v68;
                v93 = v72;
                v94 = v71;
                v92 = v73;
                sub_22F9F25EC();
                v73 = v92;
                v72 = v93;
                v71 = v94;
                v70 = v95;
                v68 = v96;
                v60 = v97;
                v59 = v98;
                v58 = v99;
                result = v100;
                v57.i64[0] = 0x100000001;
                v57.i64[1] = 0x100000001;
                v56 = 0uLL;
                _Q16 = v101;
                v54 = v102;
                v53.i64[0] = 0xFF000000FFLL;
                v53.i64[1] = 0xFF000000FFLL;
                v52.i64[0] = 0x3F0000003F000000;
                v52.i64[1] = 0x3F0000003F000000;
                v51 = v103;
                _Q4 = v104;
                v45 = v105;
                v44 = v106;
                v43 = v107;
                v42 = v108;
                v61 = v114;
                a4 = v109;
                a5 = v110;
              }

              v76 = vceqq_f32(v68, v68);
              if (vaddvq_s32(vshlq_u32(vbicq_s8(v57, v76), mask(vmask4)::shift)))
              {
                v70 = vbslq_s8(v76, v70, v53);
                v71 = vandq_s8(v71, v76);
                v72 = vbslq_s8(v76, v72, v53);
                v73 = vbslq_s8(v76, v73, v53);
              }

              v77 = vaddq_s32(vaddq_s32(vshlq_n_s32(v71, 8uLL), v70), vaddq_s32(vshlq_n_s32(v72, 0x10uLL), vshlq_n_s32(v73, 0x18uLL)));
              v78 = vcgtq_u32(vdupq_n_s32(v66), v58);
              if (v78.i32[3])
              {
                *v63 = v77;
              }

              else if (v78.i32[2])
              {
                v63->i64[0] = v77.i64[0];
                v63->i32[2] = v77.i32[2];
              }

              else if (v78.i32[1])
              {
                v63->i64[0] = v77.i64[0];
              }

              else if (v78.i32[0])
              {
                v63->i32[0] = v77.i32[0];
              }

              ++v63;
              v41 += v66;
              v62 += 4;
            }

            while (v62 < v61);
          }

          v41 += v116;
          ++v60;
        }

        while (v60 != v115);
      }

      v41 += v112;
      ++result;
    }

    while (result != v113);
  }

  return result;
}

uint64_t is_legal_2d_block_size(int a1, int a2)
{
  v2 = a2 | (a1 << 8);
  result = 1;
  if (v2 > 2564)
  {
    v4 = (v2 - 2565) > 5 || ((1 << (v2 - 5)) & 0x2B) == 0;
    if (v4 && v2 != 3082 && v2 != 3084)
    {
      return 0;
    }
  }

  else if (v2 > 2052)
  {
    v5 = v2 - 2053;
    if (v5 > 3 || v5 == 2)
    {
      return 0;
    }
  }

  else if ((v2 - 1284) >= 2 && (v2 - 1541) >= 2 && v2 != 1028)
  {
    return 0;
  }

  return result;
}

uint64_t is_legal_3d_block_size(int a1, int a2, int a3)
{
  v3 = (a2 << 8) | (a1 << 16) | a3;
  result = 1;
  if (v3 > 328963)
  {
    v5 = (v3 - 328964) >= 2 && (v3 - 394757) >= 2;
    v6 = 394501;
LABEL_8:
    if (v5 && v3 != v6)
    {
      return 0;
    }

    return result;
  }

  if (v3 > 263170)
  {
    v5 = (v3 - 263171) >= 2;
    v6 = 328708;
    goto LABEL_8;
  }

  if (v3 != 197379 && v3 != 262915)
  {
    return 0;
  }

  return result;
}

void prepare_angular_tables(void)
{
  v0 = 0;
  v1 = &dword_27DAD28F0;
  v2 = &dword_27DAD48F0;
  do
  {
    v3 = 0;
    ++v0;
    v4 = v2;
    v5 = v1;
    do
    {
      v6 = __sincosf_stret((v0 * 0.099733) * v3);
      *v5 = v6.__sinval;
      v5 += 32;
      *v4 = v6.__cosval;
      v4 += 32;
      ++v3;
    }

    while (v3 != 64);
    ++v1;
    ++v2;
  }

  while (v0 != 32);
}

void compute_angular_endpoints_1plane(int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = 8;
  if (a1)
  {
    v5 = 4;
  }

  v6 = *(a2 + v5);
  if (!v6)
  {
    sub_22F9F631C();
  }

  v9 = 0;
  v10 = (a5 + 187840);
  v11 = (a5 + 204224);
  v26 = a5 + 207008;
  v27 = a5 + 204224;
  v12 = ~(-1 << (a4 + 1));
  v13 = (a2 + 66);
  v14 = (a2 + 594);
  v15 = v6 << 6;
  v16 = (a2 + 66);
  do
  {
    v17 = *v16;
    v16 += 3;
    if ((v17 & v12) != 0)
    {
      v18 = *(v13 - 2);
      if (v18 >= a4)
      {
        v18 = a4;
      }

      if (v18 >= 7)
      {
        v19 = 7;
      }

      else
      {
        v19 = v18;
      }

      sub_22F9F5C08(*v14, (a3 + 4 * (v9 & 0xFFFFFFC0)), v19, v11, v11 + 696);
    }

    v9 += 64;
    v11 += 8;
    v14 += 129904;
    v13 = v16;
  }

  while (v15 != v9);
  v20 = 20;
  if (a1)
  {
    v20 = 16;
  }

  v21 = *(a2 + v20);
  if (!v21)
  {
    sub_22F9F62F0();
  }

  v22 = (a2 + 11306338);
  do
  {
    if (v22[3])
    {
      sub_22F9F62C4();
    }

    v23 = v22[1];
    if (v23 > 7)
    {
      *v10 = 0.0;
      v25 = 1.0;
    }

    else
    {
      v24 = *v22;
      *v10 = *(v27 + 32 * v24 + 4 * v23);
      v25 = *(v26 + 32 * v24 + 4 * v23);
    }

    v10[2048] = v25;
    ++v10;
    v22 += 6;
    --v21;
  }

  while (v21);
}

void sub_22F9F5C08(unsigned int a1, float *a2, int a3, float *a4, float *a5)
{
  v89 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_22F9F639C();
  }

  v8 = 0;
  v9 = 0;
  v10 = byte_22FA104C0[a3];
  v11 = vdupq_n_s32(0x427C0000u);
  v12 = vdupq_n_s32(0x4B400000u);
  v13 = a1;
  v14.i64[0] = 0x3F0000003FLL;
  v14.i64[1] = 0x3F0000003FLL;
  do
  {
    *&__b[v8 * 4] = vandq_s8(vaddq_f32(vmulq_f32(*&a2[v8], v11), v12), v14);
    v9 += 4;
    v8 += 4;
  }

  while (v9 < a1);
  v15 = 0;
  v16 = 4 * a1;
  __asm { FMOV            V0.4S, #1.0 }

  v87 = _Q0;
  v83 = vdupq_n_s32(0x3E8F5C29u);
  v84 = vdupq_n_s32(0x3FC90FDBu);
  v82 = vdupq_n_s32(0x40490FDBu);
  v81 = vdupq_n_s32(0x3E22F983u);
  do
  {
    v22 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v25 = *&__b[v22] << 7;
      v23 = vaddq_f32(v23, *(&dword_27DAD48F0[v15] + v25));
      v24 = vaddq_f32(v24, *(&dword_27DAD28F0[v15] + v25));
      v22 += 4;
    }

    while (v16 != v22);
    v85 = v23;
    v86 = v24;
    {
      sub_22F9F6348();
    }

    v26 = vdivq_f32(v86, v85);
    v27 = vmaxq_f32(v26, vsubq_f32(0, v26));
    v28 = vcgtq_f32(vmaxq_f32(v27, vsubq_f32(0, v27)), v87);
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v30 = vorrq_s8(vandq_s8(v27, v29), v84);
    v31 = vbslq_s8(v28, vdivq_f32(v87, v27), v27);
    v32 = vdivq_f32(v31, vaddq_f32(vmulq_f32(vmulq_f32(v31, v31), v83), v87));
    v33 = vbslq_s8(v28, vsubq_f32(v30, v32), v32);
    *&__b[4 * v15 + 1216] = vmulq_f32(veorq_s8(vandq_s8(v86, v29), vbslq_s8(vcgtq_u32(select_msb(vfloat4,vfloat4,vmask4)::msb, v85), v33, vsubq_f32(v82, v33))), v81);
    v15 += 4;
  }

  while (v15 < v10);
  v34 = 0;
  v35 = xmmword_22FA104A0;
  v36 = vdupq_n_s32(v10 + 3);
  v37.i64[0] = 0x200000002;
  v37.i64[1] = 0x200000002;
  __asm { FMOV            V3.4S, #4.0 }

  v39 = v87;
  do
  {
    v40.i64[0] = 0xC3000000C3000000;
    v40.i64[1] = 0xC3000000C3000000;
    v41.i64[0] = 0x4300000043000000;
    v41.i64[1] = 0x4300000043000000;
    v42 = 0uLL;
    v43 = a2;
    v44 = v13;
    v45 = 0uLL;
    v46 = 0uLL;
    do
    {
      v47 = *v43++;
      v48 = vsubq_f32(vmulq_n_f32(v35, v47), *&__b[4 * v34 + 1216]);
      v49 = vrndnq_f32(v48);
      v50 = vsubq_f32(v48, v49);
      v46 = vaddq_f32(v46, vmulq_f32(v50, v50));
      v51 = vcgtq_f32(v41, v49);
      v41 = vbslq_s8(v51, v49, v41);
      v52 = vbicq_s8(v42, v51);
      v53 = vaddq_f32(v50, v50);
      v42 = vbslq_s8(vceqq_f32(v49, v41), vsubq_f32(vaddq_f32(v52, v39), v53), v52);
      v54 = vcgtq_f32(v49, v40);
      v40 = vbslq_s8(v54, v49, v40);
      v55 = vbicq_s8(v45, v54);
      v45 = vbslq_s8(vceqq_f32(v49, v40), vaddq_f32(v53, vaddq_f32(v55, v39)), v55);
      --v44;
    }

    while (v44);
    *&__b[4 * v34 + 1088] = v41;
    *&__b[4 * v34 + 960] = vmaxq_s32(vminq_s32(vcvtq_s32_f32(vaddq_f32(vsubq_f32(v40, v41), v39)), v36), v37);
    v56 = vdivq_f32(v39, v35);
    v57 = vmulq_f32(v56, v56);
    *&__b[4 * v34 + 832] = vmulq_f32(v57, v46);
    *&__b[4 * v34 + 704] = vmulq_f32(v57, v42);
    *&__b[4 * v34 + 576] = vmulq_f32(v57, v45);
    v35 = vaddq_f32(v35, _Q3);
    v34 += 4;
  }

  while (v34 < v10);
  memset_pattern16(__b, &unk_22FA104B0, 16 * v10 + 64);
  v61 = 0;
  if (v10 <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = v10;
  }

  do
  {
    v58.i32[0] = *&__b[4 * v61 + 832];
    v59.f32[0] = v58.f32[0] + *&__b[4 * v61 + 704];
    v63 = *&__b[4 * v61 + 576];
    v64 = &__b[16 * *&__b[4 * v61 + 960]];
    LODWORD(v65) = v58.i32[0];
    *(&v65 + 1) = v61;
    v66.i64[1] = 1065353216;
    *v66.i32 = v59.f32[0];
    v67 = v64[-2];
    *&v66.i32[1] = v61;
    v68 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v64[-1], v59)), 0)), v66, v64[-1]);
    v59.f32[0] = v59.f32[0] + v63;
    *&v69 = v58.f32[0] + v63;
    v60.f32[0] = *&v69;
    *v64 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(*v64, v58)), 0)), v65, *v64);
    *(&v69 + 1) = v61;
    v70 = vcgtq_f32(v68, v60);
    v60.i64[1] = 1065353216;
    v60.i32[0] = v59.i32[0];
    v60.f32[1] = v61;
    v71 = vmovl_s16(vdup_lane_s16(vmovn_s32(v70), 0));
    v58 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v67, v59)), 0)), v60, v67);
    v64[-2] = v58;
    v64[-1] = vbslq_s8(v71, v69, v68);
    ++v61;
  }

  while (v62 != v61);
  v72 = byte_22FA104C0;
  if ((a3 + 1) > 1)
  {
    v73 = (a3 + 1);
  }

  else
  {
    v73 = 1;
  }

  do
  {
    v74 = *v72++;
    v75 = &__b[16 * v74];
    v76 = v75[2];
    LODWORD(v75) = v75[1] & ~(v75[1] >> 31);
    v77 = *&__b[4 * v75 + 1088] + v76;
    v78 = 1.0 / (v75 + 1.0);
    v79 = *&__b[4 * v75 + 1216];
    *a4++ = (v79 + v77) * v78;
    *a5++ = (v79 + ((v77 + v74) + -1.0)) * v78;
    --v73;
  }

  while (v73);
}

uint64_t compute_angular_endpoints_2planes(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a1[2];
  if (!v4)
  {
    sub_22F9F63C8();
  }

  v6 = 0;
  v7 = 0;
  v8 = (a4 + 204224);
  v32 = a4 + 226176;
  v33 = a4 + 207008;
  v9 = (a4 + 228960);
  v37 = ~(-1 << (a3 + 1));
  v10 = a1 + 17;
  v11 = a1 + 594;
  v31 = a4 + 228960;
  v34 = a4 + 204224;
  v12 = a1 + 17;
  v35 = a3;
  do
  {
    v13 = *v12;
    v12 = (v12 + 6);
    if ((v13 & v37) != 0)
    {
      v14 = *v11;
      v15 = *(v10 - 3);
      if (v15 >= a3)
      {
        v15 = a3;
      }

      if (v15 >= 7)
      {
        v16 = 7;
      }

      else
      {
        v16 = v15;
      }

      sub_22F9F5C08(*v11, (a2 + 4 * (v6 & 0xFFFFFFC0)), v16, v8, v8 + 696);
      sub_22F9F5C08(v14, (a2 + 4 * (v6 & 0xFFFFFFC0) + 128), v16, v9 - 696, v9);
      a3 = v35;
      v4 = a1[2];
    }

    ++v7;
    v6 += 64;
    v8 += 8;
    v9 += 8;
    v11 += 129904;
    v10 = v12;
  }

  while (v7 < v4);
  v18 = a1[5];
  v17 = a1[6];
  result = v33;
  if (v18 < v17)
  {
    v20 = a4 + 4 * v18;
    v21 = (v20 + 217984);
    v22 = v17 - v18;
    v23 = a1 + 6 * v18 + 11306339;
    v24 = (v20 + 187840);
    v25 = v23;
    do
    {
      v27 = *v25;
      v25 += 6;
      v26 = v27;
      if (v27 > 7uLL)
      {
        *v24 = 0;
        v24[2048] = 1065353216;
        v29 = 1.0;
        *(v21 - 2048) = 0.0;
      }

      else
      {
        v28 = *(v23 - 1);
        *v24 = *(v34 + 32 * v28 + 4 * v26);
        v24[2048] = *(v33 + 32 * v28 + 4 * v26);
        *(v21 - 2048) = *(v32 + 32 * v28 + 4 * v26);
        v29 = *(v31 + 32 * v28 + 4 * v26);
      }

      *v21++ = v29;
      ++v24;
      v23 = v25;
      --v22;
    }

    while (v22);
  }

  return result;
}

void sub_22F9F6348()
{
  {
    *&v0 = 0x8000000080000000;
    *(&v0 + 1) = 0x8000000080000000;
    select_msb(vfloat4,vfloat4,vmask4)::msb = v0;
  }
}

__CFData *image::toPNG(void *a1, const __CFString *a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  if (!v3)
  {
    __assert_rtn("toPNG", "ImagePNG.mm", 17, "texture");
  }

  v9 = v4;
  v10 = objc_msgSend_width(v3, v5, v6, v7, v8);
  v15 = objc_msgSend_height(v3, v11, v12, v13, v14);
  v19 = v15;
  __p = 0;
  v77 = 0;
  v78 = 0;
  v20 = ((4 * v10 * v15) & 0x3FFFFFFFCLL);
  if (v20)
  {
    sub_22F9F3A58(&__p, v20);
  }

  if (objc_msgSend_storageMode(v3, v20, v16, v17, v18) == 2)
  {
    v25 = objc_msgSend_device(v3, v21, v22, v23, v24);
    v30 = objc_msgSend_newCommandQueue(v25, v26, v27, v28, v29);
    v68 = v9;
    v35 = objc_msgSend_commandBuffer(v30, v31, v32, v33, v34);
    v37 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v25, v36, __p, v77 - __p, 0, 0);
    v42 = objc_msgSend_blitCommandEncoder(v35, v38, v39, v40, v41);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v75[0] = v10;
    v75[1] = v19;
    v75[2] = 1;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v42, v43, v3, 0, 0, &v69, v75, v37, 0, (4 * v10), 4 * v10 * v19);
    objc_msgSend_endEncoding(v42, v44, v45, v46, v47);
    objc_msgSend_commit(v35, v48, v49, v50, v51);
    objc_msgSend_waitUntilCompleted(v35, v52, v53, v54, v55);

    v9 = v68;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = v10;
    v73 = v19;
    v74 = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v3, v21, __p, (4 * v10), &v69, 0);
  }

  if (!a2)
  {
    v56 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CBF3E0]) || CFEqual(a2, *MEMORY[0x277CBF4B8]))
  {
    v56 = CGColorSpaceCreateWithName(a2);
LABEL_12:
    v57 = v56;
    v58 = CGDataProviderCreateWithData(0, __p, v77 - __p, 0);
    v59 = CGImageCreate(v10, v19, 8uLL, 0x20uLL, (4 * v10), v57, 3u, v58, 0, 0, kCGRenderingIntentDefault);
    CFRelease(v58);
    CFRelease(v57);
    v60 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v65 = objc_msgSend_identifier(*MEMORY[0x277CE1E10], v61, v62, v63, v64);
    v66 = CGImageDestinationCreateWithData(v60, v65, 1uLL, 0);

    CGImageDestinationAddImage(v66, v59, 0);
    CGImageDestinationFinalize(v66);
    CFRelease(v66);
    CGImageRelease(v59);
    goto LABEL_13;
  }

  v60 = 0;
LABEL_13:
  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  objc_autoreleasePoolPop(v9);

  return v60;
}

void sub_22F9F6708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t find_best_partition_candidates(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v293 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 3);
  if (v7 >= 0x15)
  {
    if (v7 >= 0x20)
    {
      v8 = flt_22FA104D8[v7 < 0x2A];
    }

    else
    {
      v8 = 0.04;
    }
  }

  else
  {
    v8 = 0.03;
  }

  if (!a3)
  {
    sub_22F9F7A24();
  }

  if (!a4)
  {
    sub_22F9F79F8();
  }

  v9 = 0;
  v263 = (a1 + 14758408);
  v10 = (a1 + 14733824);
  v11 = (a1 + 14717432);
  v12 = a3;
  v13 = v8 * v8;
  v14 = a2 + 880;
  v15 = a2 + 1760;
  v16 = a2 + 2640;
  if (a3 <= 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = a3;
  }

  v18 = (v17 - 1);
  v19 = *(a2 + 3584);
  do
  {
    if (v9)
    {
      memset(v287, 0, 64);
      v20 = v291;
      v21 = a2;
      v22 = v7;
      v288[0] = 0;
      do
      {
        v23 = *v20++;
        v24.i32[0] = *v21;
        v24.i32[1] = v21[220];
        v24.i32[2] = v21[440];
        v24.i32[3] = v21[660];
        v25 = vaddq_f32(v287[v23], v24);
        v287[v23] = v25;
        ++*(v288 + v23);
        ++v21;
        --v22;
      }

      while (v22);
      for (i = 0; i != a3; v282[i++] = v25)
      {
        v25.i8[0] = *(v288 + i);
        v25 = vmulq_n_f32(v287[i], 1.0 / v25.u32[0]);
      }
    }

    else
    {
      v40 = 0;
      v41.i32[0] = *(a2 + 4 * (0x239E9 % v7));
      v41.i32[1] = *(v14 + 4 * (0x239E9 % v7));
      v41.i32[2] = *(v15 + 4 * (0x239E9 % v7));
      v41.i32[3] = *(v16 + 4 * (0x239E9 % v7));
      v282[0] = v41;
      v42 = 0.0;
      v43 = a2;
      do
      {
        v44.i32[0] = *v43;
        v44.i32[1] = v43[220];
        v44.i32[2] = v43[440];
        v44.i32[3] = v43[660];
        v45 = vsubq_f32(v44, v41);
        v46 = vmulq_f32(v19, vmulq_f32(v45, v45));
        *v46.i8 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.i8);
        *v46.i32 = vpadd_f32(*v46.i8, *v46.i8).f32[0];
        v42 = v42 + *v46.i32;
        v287[0].i32[v40++] = v46.i32[0];
        ++v43;
      }

      while (v7 != v40);
      v47 = 1;
      v48 = 3 * a3 - 6;
      while (1)
      {
        v49 = 0;
        v50 = flt_22FA104F0[v48++];
        v51 = v42 * v50;
        v52 = 0.0;
        while (1)
        {
          v52 = v52 + v287[0].f32[v49];
          if (v52 >= v51)
          {
            break;
          }

          if (v7 == ++v49)
          {
            LODWORD(v49) = v7;
            break;
          }
        }

        if (v49 >= v7 - 1)
        {
          LODWORD(v49) = v7 - 1;
        }

        v53.i32[0] = *(a2 + 4 * v49);
        v53.i32[1] = *(v14 + 4 * v49);
        v53.i32[2] = *(v15 + 4 * v49);
        v53.i32[3] = *(v16 + 4 * v49);
        v282[v47] = v53;
        if (v47 == v18)
        {
          break;
        }

        ++v47;
        v42 = 0.0;
        v54 = v287;
        v55 = a2;
        v56 = v7;
        do
        {
          v57.i32[0] = *v55;
          v57.i32[1] = v55[220];
          v57.i32[2] = v55[440];
          v57.i32[3] = v55[660];
          v58 = vsubq_f32(v57, v53);
          v59 = vmulq_f32(v19, vmulq_f32(v58, v58));
          *v59.i8 = vadd_f32(*&vextq_s8(v59, v59, 8uLL), *v59.i8);
          v60 = vpadd_f32(*v59.i8, *v59.i8).f32[0];
          if (v60 >= *v54)
          {
            v60 = *v54;
          }

          v42 = v42 + v60;
          *v54++ = v60;
          ++v55;
          --v56;
        }

        while (v56);
      }
    }

    v27 = 0;
    v287[0].i32[0] = 0;
    do
    {
      v28 = 0;
      v29 = 0;
      v31 = 3.4028e38;
      do
      {
        v30.i32[3] = *(v16 + 4 * v27);
        v30.i32[2] = *(v15 + 4 * v27);
        v30.i32[1] = *(v14 + 4 * v27);
        v30.i32[0] = *(a2 + 4 * v27);
        v32 = vsubq_f32(v30, v282[v28]);
        v33 = vmulq_f32(v19, vmulq_f32(v32, v32));
        *v33.i8 = vadd_f32(*&vextq_s8(v33, v33, 8uLL), *v33.i8);
        v34 = vpadd_f32(*v33.i8, *v33.i8).f32[0];
        if (v34 < v31)
        {
          v29 = v28;
          v31 = v34;
        }

        ++v28;
      }

      while (a3 != v28);
      v291[v27] = v29;
      ++v287[0].i8[v29];
      ++v27;
    }

    while (v27 != v7);
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = v36;
      if (!v287[0].i8[v35])
      {
        --v287[0].i8[v291[v35]];
        ++v287[0].i8[v35];
        v291[v35] = v35;
        v37 = 1;
      }

      v38 = v35 + 1 == a3;
      v39 = v35 + 1 != a3;
      if (v35 + 1 == a3)
      {
        v35 = 0;
      }

      else
      {
        ++v35;
      }

      v36 = v39 & v37;
    }

    while (!v38 || (v37 & 1) != 0);
    ++v9;
  }

  while (v9 != 3);
  v61 = 0;
  if (v7 >= 0x40)
  {
    v62 = 64;
  }

  else
  {
    v62 = v7;
  }

  v280 = 0uLL;
  v281 = 0uLL;
  do
  {
    v63 = v291[*(a1 + 14717360 + v61)];
    *(&v280 + v63) |= 1 << v61++;
  }

  while (v62 != v61);
  v64 = a1 + 4 * (a3 - 1);
  v65 = *(v64 + 32);
  if (!v65)
  {
    sub_22F9F7974();
  }

  v270 = *(v64 + 32);
  v267 = v62;
  if (a3 == 2)
  {
    v97 = v288;
    v98 = v280;
    do
    {
      v99 = *(v11 - 1);
      v100 = vcnt_s8((v99 ^ v98));
      v100.i16[0] = vaddlv_u8(v100);
      v101 = v100.i32[0];
      v102 = vcnt_s8((*v11 ^ *(&v98 + 1)));
      v102.i16[0] = vaddlv_u8(v102);
      v103 = v102.i32[0] + v101;
      v104 = vcnt_s8((*v11 ^ v98));
      v104.i16[0] = vaddlv_u8(v104);
      v105 = v104.i32[0];
      v106 = vcnt_s8((v99 ^ *(&v98 + 1)));
      v106.i16[0] = vaddlv_u8(v106);
      if (v103 >= v106.i32[0] + v105)
      {
        v107 = v106.i32[0] + v105;
      }

      else
      {
        v107 = v103;
      }

      *v97 = v107 >> 1;
      if ((v107 >> 1) >= 0x40u)
      {
        sub_22F9F78F0();
      }

      if (v7 <= (v107 >> 1))
      {
        sub_22F9F78C4();
      }

      v11 += 2;
      ++v97;
      --v65;
    }

    while (v65);
  }

  else if (a3 == 3)
  {
    v66 = v280;
    v67 = v288;
    v68 = v281;
    do
    {
      v69 = *(v10 - 2);
      v70 = *(v10 - 1);
      v71 = vcnt_s8((v69 ^ v66));
      v71.i16[0] = vaddlv_u8(v71);
      v72 = v71.i32[0];
      v73 = vcnt_s8((v70 ^ v66));
      v73.i16[0] = vaddlv_u8(v73);
      v74 = v73.i32[0];
      v75 = vcnt_s8((*v10 ^ v66));
      v75.i16[0] = vaddlv_u8(v75);
      v76 = v75.i32[0];
      v77 = vcnt_s8((v69 ^ *(&v66 + 1)));
      v77.i16[0] = vaddlv_u8(v77);
      v78 = v77.i32[0];
      v79 = vcnt_s8((v70 ^ *(&v66 + 1)));
      v79.i16[0] = vaddlv_u8(v79);
      v80 = v79.i32[0];
      v81 = vcnt_s8((*v10 ^ *(&v66 + 1)));
      v81.i16[0] = vaddlv_u8(v81);
      v82 = v81.i32[0];
      v83 = vcnt_s8((v69 ^ v68));
      v83.i16[0] = vaddlv_u8(v83);
      v84 = v83.i32[0];
      v85 = vcnt_s8((v70 ^ v68));
      v85.i16[0] = vaddlv_u8(v85);
      v86 = v85.i32[0];
      v87 = vcnt_s8((*v10 ^ v68));
      v87.i16[0] = vaddlv_u8(v87);
      v88 = v87.i32[0] + v80;
      if (v87.i32[0] + v80 >= (v86 + v82))
      {
        v88 = v86 + v82;
      }

      v89 = v88 + v72;
      v90 = v87.i32[0] + v78;
      v91 = v84 + v82;
      if (v87.i32[0] + v78 >= v91)
      {
        v90 = v91;
      }

      v92 = v90 + v74;
      v93 = v86 + v78;
      v94 = v84 + v80;
      if (v93 < v94)
      {
        v94 = v93;
      }

      v95 = v94 + v76;
      if (v89 >= v92)
      {
        v96 = v92;
      }

      else
      {
        v96 = v89;
      }

      if (v96 >= v95)
      {
        v96 = v95;
      }

      *v67 = v96 >> 1;
      if ((v96 >> 1) >= 0x40u)
      {
        sub_22F9F7898();
      }

      if (v7 <= (v96 >> 1))
      {
        sub_22F9F786C();
      }

      v10 += 3;
      ++v67;
      --v65;
    }

    while (v65);
  }

  else
  {
    v108 = *(&v280 + 1);
    v276 = v280;
    v109 = v288;
    v110 = v281;
    v111 = v263;
    do
    {
      v112 = *(v111 - 3);
      v113 = *(v111 - 2);
      v114 = vcnt_s8((v112 ^ v276));
      v114.i16[0] = vaddlv_u8(v114);
      v115 = v114.i32[0];
      v116 = vcnt_s8((v113 ^ v276));
      v116.i16[0] = vaddlv_u8(v116);
      v117 = v116.i32[0];
      v118 = *(v111 - 1);
      v119 = v111;
      v120 = vcnt_s8((v118 ^ v276));
      v120.i16[0] = vaddlv_u8(v120);
      v121 = v120.i32[0];
      v122 = vcnt_s8((*v111 ^ v276));
      v122.i16[0] = vaddlv_u8(v122);
      v123 = v122.i32[0];
      v124 = vcnt_s8((v112 ^ v108));
      v124.i16[0] = vaddlv_u8(v124);
      v125 = v124.i32[0];
      v126 = vcnt_s8((v113 ^ v108));
      v126.i16[0] = vaddlv_u8(v126);
      v127 = v126.i32[0];
      v128 = vcnt_s8((v118 ^ v108));
      v128.i16[0] = vaddlv_u8(v128);
      v129 = v128.i32[0];
      v130 = vcnt_s8((*v111 ^ v108));
      v130.i16[0] = vaddlv_u8(v130);
      v131 = v130.i32[0];
      v132 = vcnt_s8((v112 ^ v110));
      v132.i16[0] = vaddlv_u8(v132);
      v133 = v132.i32[0];
      v134 = vcnt_s8((v113 ^ v110));
      v134.i16[0] = vaddlv_u8(v134);
      v135 = v134.i32[0];
      v136 = vcnt_s8((v118 ^ v110));
      v136.i16[0] = vaddlv_u8(v136);
      v137 = v136.i32[0];
      v138 = vcnt_s8((*v111 ^ v110));
      v138.i16[0] = vaddlv_u8(v138);
      v139 = v138.i32[0];
      v140 = vcnt_s8((v112 ^ *(&v110 + 1)));
      v140.i16[0] = vaddlv_u8(v140);
      v141 = v140.i32[0];
      v142 = vcnt_s8((v113 ^ *(&v110 + 1)));
      v142.i16[0] = vaddlv_u8(v142);
      v143 = v142.i32[0];
      v144 = vcnt_s8((v118 ^ *(&v110 + 1)));
      v144.i16[0] = vaddlv_u8(v144);
      v145 = v144.i32[0];
      v146 = vcnt_s8((*v111 ^ *(&v110 + 1)));
      v146.i16[0] = vaddlv_u8(v146);
      v147 = v145 + v139;
      if (v146.i32[0] + v137 < (v145 + v139))
      {
        v147 = v146.i32[0] + v137;
      }

      v148 = v143 + v139;
      if (v146.i32[0] + v135 < (v143 + v139))
      {
        v148 = v146.i32[0] + v135;
      }

      v149 = v143 + v137;
      if (v145 + v135 < (v143 + v137))
      {
        v149 = v145 + v135;
      }

      v150 = v146.i32[0] + v133;
      v151 = v141 + v139;
      if (v146.i32[0] + v133 >= v151)
      {
        v150 = v151;
      }

      v152 = v145 + v133;
      v153 = v141 + v137;
      if (v152 >= v153)
      {
        v152 = v153;
      }

      v154 = v141 + v135;
      if (v154 >= v143 + v133)
      {
        v154 = v143 + v133;
      }

      v155 = v147 + v127;
      if (v147 + v127 >= (v148 + v129))
      {
        v155 = v148 + v129;
      }

      if (v155 >= v149 + v131)
      {
        v155 = v149 + v131;
      }

      v156 = v155 + v115;
      v157 = v147 + v125;
      if (v157 >= v150 + v129)
      {
        v157 = v150 + v129;
      }

      if (v157 >= v152 + v131)
      {
        v157 = v152 + v131;
      }

      v158 = v157 + v117;
      v159 = v150 + v127;
      v160 = v154 + v131;
      if (v150 + v127 >= v148 + v125)
      {
        v159 = v148 + v125;
      }

      if (v159 >= v160)
      {
        v159 = v160;
      }

      v161 = v159 + v121;
      v162 = v152 + v127;
      v163 = v154 + v129;
      v164 = v149 + v125;
      if (v152 + v127 >= v163)
      {
        v162 = v163;
      }

      if (v162 < v164)
      {
        v164 = v162;
      }

      v165 = v164 + v123;
      if (v156 < v158)
      {
        v158 = v156;
      }

      if (v161 < v165)
      {
        v165 = v161;
      }

      if (v158 < v165)
      {
        v165 = v158;
      }

      *v109 = v165 >> 1;
      if ((v165 >> 1) >= 0x40u)
      {
        sub_22F9F7948();
      }

      if (v7 <= (v165 >> 1))
      {
        sub_22F9F791C();
      }

      v111 = v119 + 4;
      ++v109;
      --v65;
    }

    while (v65);
  }

  v166 = 0;
  memset(v292, 0, 128);
  v167 = v270;
  do
  {
    ++*(v292 + *(v288 + v166++));
  }

  while (v270 != v166);
  v168 = 0;
  v169 = 0;
  do
  {
    v170 = *(v292 + v168);
    *(v292 + v168) = v169;
    v169 += v170;
    ++v168;
  }

  while (v267 != v168);
  v171 = 0;
  do
  {
    v172 = *(v288 + v171);
    v173 = *(v292 + v172);
    *(v292 + v172) = v173 + 1;
    v287[0].i16[v173] = v171++;
  }

  while (v270 != v171);
  if (a4 >= v270)
  {
    v174 = v270;
  }

  else
  {
    v174 = a4;
  }

  v175 = a6;
  if (v174 >= a6)
  {
    v176 = a6;
  }

  else
  {
    v176 = v174;
  }

  v277 = v176;
  v177 = *(a2 + 3536);
  v178 = *(a2 + 3568);
  {
    v269 = v177;
    v264 = v178;
    sub_22F9F25EC();
    v178 = v264;
    v177 = v269;
    v167 = v270;
    v175 = a6;
  }

  v179 = vmovn_s32(vceqq_f32(v177, v178));
  v180 = 0;
  v180.i16[3] = v179.i16[3];
  v181 = vmovl_u16(v180);
  v182.i64[0] = 0x100000001;
  v182.i64[1] = 0x100000001;
  v183 = vaddvq_s32(vshlq_u32(vandq_s8(v181, v182), mask(vmask4)::shift));
  if (v175)
  {
    if (v167 >= v175)
    {
      v184 = v175;
    }

    else
    {
      v184 = v167;
    }

    if (v184 >= a4)
    {
      v184 = a4;
    }

    if (v184 <= 1)
    {
      v184 = 1;
    }

    v185 = 4 * v184;
    memset_pattern16(__b, &xmmword_22FA0C1F0, v185);
    memset_pattern16(v284, &xmmword_22FA0C1F0, v185);
  }

  if (v174 <= 1)
  {
    v186 = 1;
  }

  else
  {
    v186 = v174;
  }

  v273 = v186;
  if (v183)
  {
    for (j = 0; j != v273; ++j)
    {
      v188 = v287[0].u16[j];
      v189 = sub_22F9F7750(a1, a3, v188);
      v190 = v291;
      compute_avgs_and_dirs_3_comp_rgb(v189, a2, v291, v191, v192, v193, v194, v195);
      v196 = v12;
      v197 = v289;
      do
      {
        v198 = v190[1];
        v197[-4] = *v190;
        v199 = vmulq_f32(v198, v198);
        *v199.i8 = vadd_f32(*&vextq_s8(v199, v199, 8uLL), *v199.i8);
        v200 = vpadd_f32(*v199.i8, *v199.i8);
        v201 = xmmword_22FA104E0;
        if (*v200.i32 != 0.0)
        {
          v201 = vdivq_f32(v198, vsqrtq_f32(vdupq_lane_s32(v200, 0)));
        }

        v197[-3] = v201;
        v202 = v197 - 3;
        v202[1].i64[0] = 0;
        v202[1].i64[1] = 0;
        v203 = *v190;
        v204 = vmulq_f32(v203, v203);
        *v204.i8 = vadd_f32(*&vextq_s8(v204, v204, 8uLL), *v204.i8);
        v205 = vpadd_f32(*v204.i8, *v204.i8);
        v206 = xmmword_22FA104E0;
        if (*v205.i32 != 0.0)
        {
          v206 = vdivq_f32(v203, vsqrtq_f32(vdupq_lane_s32(v205, 0)));
        }

        v207 = v197[-4];
        v208 = vmulq_f32(v201, v207);
        v208.f32[0] = v208.f32[2] + vaddv_f32(*v208.f32);
        v209 = vdupq_lane_s32(*v208.f32, 0);
        v209.i32[3] = 0;
        v197[-1] = v206;
        *v197 = vsubq_f32(v207, vmulq_f32(v201, v209));
        v197[1] = *v202;
        v197[2].i64[0] = 0;
        v197[2].i64[1] = 0;
        v197[3] = v197[-1];
        v190 += 2;
        v197 += 9;
        --v196;
      }

      while (v196);
      v292[0] = 0;
      v282[0].i32[0] = 0;
      compute_error_squared_rgb(v189, a2, v288, v292, v282);
      v210 = (v189 + 2);
      v211 = __PAIR64__(v282[0].u32[0], v292[0]);
      v212 = v12;
      v213 = &v290;
      do
      {
        v214 = *v210++;
        v215 = v13 * v214;
        v216 = vmulq_n_f32(*(v213 - 28), *v213);
        v217 = vmulq_n_f32(*(v213 - 20), *v213);
        v218 = vmulq_n_f32(vmulq_f32(v216, v216), v215);
        v219 = vmulq_n_f32(vmulq_f32(v217, v217), v215);
        v211 = vadd_f32(v211, vadd_f32(vzip1_s32(*&vextq_s8(v218, v218, 8uLL), *&vextq_s8(v219, v219, 8uLL)), vadd_f32(vzip1_s32(*v218.i8, *v219.i8), vzip2_s32(*v218.i8, *v219.i8))));
        v213 += 36;
        --v212;
      }

      while (v212);
      v282[0].i32[0] = v211.i32[1];
      v292[0] = v211.i32[0];
      sub_22F9F77AC(v277, v188, __b, v285, v211.f32[0]);
      sub_22F9F77AC(v277, v188, v284, v283, v282[0].f32[0]);
    }
  }

  else
  {
    v220 = 0;
    do
    {
      v271 = v220;
      v268 = v287[0].u16[v220];
      v221 = sub_22F9F7750(a1, a3, v268);
      compute_avgs_and_dirs_4_comp(v221, a2, v288);
      v222 = 0;
      do
      {
        v223 = *&v288[v222 / 4 + 4];
        *&v291[v222] = *&v288[v222 / 4];
        v224 = vmulq_f32(v223, v223);
        *v224.i8 = vadd_f32(*&vextq_s8(v224, v224, 8uLL), *v224.i8);
        v225 = vpadd_f32(*v224.i8, *v224.i8);
        v226.i64[0] = 0x3F0000003F000000;
        v226.i64[1] = 0x3F0000003F000000;
        v227.i64[0] = 0x3F0000003F000000;
        v227.i64[1] = 0x3F0000003F000000;
        if (*v225.i32 != 0.0)
        {
          v227 = vdivq_f32(v223, vsqrtq_f32(vdupq_lane_s32(v225, 0)));
        }

        *&v291[v222 + 16] = v227;
        v228 = *&v291[v222];
        v229 = *&v291[v222 + 16];
        v230 = vmulq_f32(v227, v228);
        *v230.i8 = vadd_f32(*&vextq_s8(v230, v230, 8uLL), *v230.i8);
        f32 = v282[v222 / 0x10].f32;
        *f32 = vsubq_f32(v228, vmulq_n_f32(v227, vpadd_f32(*v230.i8, *v230.i8).f32[0]));
        f32[1] = v229;
        v232 = &v292[v222 / 4];
        v232->i64[0] = 0;
        v232->i64[1] = 0;
        v233 = *&v288[v222 / 4];
        v234 = vmulq_f32(v233, v233);
        *v234.i8 = vadd_f32(*&vextq_s8(v234, v234, 8uLL), *v234.i8);
        v235 = vpadd_f32(*v234.i8, *v234.i8);
        if (*v235.i32 != 0.0)
        {
          v226 = vdivq_f32(v233, vsqrtq_f32(vdupq_lane_s32(v235, 0)));
        }

        v232[1] = v226;
        v236 = (&v280 + v222);
        v236->i64[0] = 0;
        v236->i64[1] = 0;
        v236[1] = v232[1];
        v222 += 32;
      }

      while (32 * v12 != v222);
      v278 = 0;
      compute_error_squared_rgba(v221, a2, v282, &v280, v279, &v278 + 1, &v278);
      v238 = 0;
      v239 = *(&v278 + 1);
      LODWORD(v240) = v278;
      v241 = 4;
      do
      {
        LOBYTE(v237) = v221[v238 + 4];
        v242 = v13 * LODWORD(v237);
        v243 = v279[v238];
        v244 = vmulq_n_f32(*&v291[v241 * 4], v243);
        v245 = vmulq_n_f32(*&v292[v241], v243);
        v246 = vmulq_n_f32(vmulq_f32(v244, v244), v242);
        *v246.i8 = vadd_f32(*&vextq_s8(v246, v246, 8uLL), *v246.i8);
        v239 = v239 + vpadd_f32(*v246.i8, *v246.i8).f32[0];
        v247 = vmulq_n_f32(vmulq_f32(v245, v245), v242);
        *v247.i8 = vadd_f32(*&vextq_s8(v247, v247, 8uLL), *v247.i8);
        v237 = vpadd_f32(*v247.i8, *v247.i8).f32[0];
        v240 = v240 + v237;
        ++v238;
        v241 += 8;
      }

      while (v12 != v238);
      v278 = __PAIR64__(LODWORD(v239), LODWORD(v240));
      sub_22F9F77AC(v277, v268, __b, v285, v239);
      sub_22F9F77AC(v277, v268, v284, v283, *&v278);
      v220 = v271 + 1;
    }

    while (v271 + 1 != v273);
  }

  if (a6)
  {
    v248 = 0;
    v249 = v277;
    if (v277 <= 1)
    {
      v249 = 1;
    }

    v250 = 2 * v249;
    v251 = v285;
    v252 = v283;
    do
    {
      v253 = *v251++;
      *&v291[4 * v248] = *(sub_22F9F7750(a1, a3, v253) + 2);
      v254 = *v252++;
      *&v291[4 * (v248 + 1)] = *(sub_22F9F7750(a1, a3, v254) + 2);
      v248 += 2;
    }

    while (v250 != v248);
  }

  memset(v289, 0, sizeof(v289));
  v255 = 2 * v277;
  memset(v288, 0, sizeof(v288));
  result = 0;
  if (v255)
  {
    v257 = v291;
    while (1)
    {
      v259 = *v257++;
      v258 = v259;
      v260 = v259 >> 6;
      v261 = *&v288[2 * v260];
      v262 = 1 << v259;
      if (((1 << v259) & v261) == 0)
      {
        *(a5 + 4 * result) = v258;
        *&v288[2 * v260] = v262 | v261;
        result = (result + 1);
        if (result == v277)
        {
          break;
        }
      }

      if (!--v255)
      {
        return result;
      }
    }

    return v277;
  }

  return result;
}

uint64_t sub_22F9F7750(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 == 0xFFFF || *(a1 + 4 * (a2 - 1) + 48) <= a3)
  {
    sub_22F9F7A50();
  }

  v3 = (a2 << 10) - 2048;
  if (a2 == 1)
  {
    v3 = 3072;
  }

  return a1 + 1104 * v3 + 1104 * a3 + 11318624;
}

uint64_t sub_22F9F77AC(uint64_t result, int a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!result)
  {
    sub_22F9F7A7C();
  }

  v5 = (result - 1);
  if (*(a3 + 4 * v5) > a5)
  {
    v6 = 0;
    while (*(a3 + 4 * v6) < a5)
    {
      if (result == ++v6)
      {
        return result;
      }
    }

    if (v5 > v6)
    {
      v7 = (a3 + 4 * v5);
      v8 = (a4 + 4 * v5);
      v9 = v7;
      v10 = v8;
      do
      {
        --v5;
        v11 = *--v9;
        *v7 = v11;
        v12 = *--v10;
        *v8 = v12;
        v8 = v10;
        v7 = v9;
      }

      while (v5 > v6);
    }

    *(a3 + 4 * v6) = a5;
    *(a4 + 4 * v6) = a2;
  }

  return result;
}

int8x16_t compute_avgs_and_dirs_4_comp(_BYTE *a1, float32x4_t *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!*a1)
  {
    sub_22F9F924C();
  }

  sub_22F9F7C70(a1, a2, v34);
  v7 = 0;
  v8 = a1 + 240;
  v9 = a1 + 4;
  do
  {
    v10 = v9[v7];
    if (!v9[v7])
    {
      sub_22F9F9220();
    }

    v11 = v34[v7];
    v12 = a3 + 32 * v7;
    *v12 = v11;
    v13 = 0uLL;
    v14 = v8;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v14++;
      v19.i32[0] = a2->i32[v18];
      v19.i32[1] = a2[55].i32[v18];
      v19.i32[2] = a2[110].i32[v18];
      v19.i32[3] = a2[165].i32[v18];
      v20 = vsubq_f32(v19, v11);
      v21 = vmovn_s32(vcgtzq_f32(v20));
      v13 = vaddq_f32(v13, vandq_s8(v20, vmovl_s16(vdup_lane_s16(v21, 0))));
      v15 = vaddq_f32(v15, vandq_s8(v20, vmovl_s16(vdup_lane_s16(v21, 1))));
      v16 = vaddq_f32(v16, vandq_s8(v20, vmovl_s16(vdup_lane_s16(v21, 2))));
      v17 = vaddq_f32(v17, vandq_s8(v20, vmovl_s16(vdup_lane_s16(v21, 3))));
      --v10;
    }

    while (v10);
    v22 = vmulq_f32(v13, v13);
    *v22.i8 = vadd_f32(*&vextq_s8(v22, v22, 8uLL), *v22.i8);
    v23 = vdupq_lane_s32(vpadd_f32(*v22.i8, *v22.i8), 0);
    v24 = vmulq_f32(v15, v15);
    *v24.i8 = vadd_f32(*&vextq_s8(v24, v24, 8uLL), *v24.i8);
    v25 = vdupq_lane_s32(vpadd_f32(*v24.i8, *v24.i8), 0);
    v26 = vmulq_f32(v16, v16);
    *v26.i8 = vadd_f32(*&vextq_s8(v26, v26, 8uLL), *v26.i8);
    v27 = vdupq_lane_s32(vpadd_f32(*v26.i8, *v26.i8), 0);
    v28 = vmulq_f32(v17, v17);
    *v28.i8 = vadd_f32(*&vextq_s8(v28, v28, 8uLL), *v28.i8);
    v29 = vcgtq_f32(v25, v23);
    v30 = vbslq_s8(v29, v15, v13);
    v31 = vbslq_s8(v29, v25, v23);
    v32 = vcgtq_f32(v27, v31);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v28.i8, *v28.i8), 0), vbslq_s8(v32, v27, v31)), v17, vbslq_s8(v32, v16, v30));
    *(v12 + 16) = result;
    ++v7;
    v8 += 216;
  }

  while (v7 != v3);
  return result;
}

float32x4_t sub_22F9F7C70(_BYTE *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = a2[219].u8[12];
  if (!a2[219].i8[12])
  {
    sub_22F9F9278();
  }

  v4 = *a1;
  switch(v4)
  {
    case 1:
      result = a2[222];
      *a3 = result;
      break;
    case 2:
      v42 = 0;
      v43 = vdupq_n_s32(v3);
      v44 = xmmword_22FA083F0;
      v45 = 0uLL;
      v46.i64[0] = 0x400000004;
      v46.i64[1] = 0x400000004;
      v47 = a2;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v51 = &a1[v42 + 16];
        v52 = vld1_dup_f32(v51);
        v53 = vcgtq_s32(v43, v44);
        v44 = vaddq_s32(v44, v46);
        v54 = vandq_s8(vmovl_s16(vceqz_s16(*&vmovl_u8(v52))), v53);
        v50 = vaddq_f32(v50, vandq_s8(*v47, v54));
        v49 = vaddq_f32(v49, vandq_s8(v47[55], v54));
        v48 = vaddq_f32(v48, vandq_s8(v47[110], v54));
        v45 = vaddq_f32(v45, vandq_s8(v47[165], v54));
        v42 += 4;
        ++v47;
      }

      while (v42 < v3);
      v55 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.f32);
      v56 = vadd_f32(*&vextq_s8(v49, v49, 8uLL), *v49.f32);
      v57 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), *v48.f32);
      v58 = vpadd_f32(v57, v57);
      v59 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.f32);
      *v60.f32 = vzip1_s32(vpadd_f32(v55, v55), vpadd_f32(v56, v56));
      v60.i64[1] = __PAIR64__(vpadd_f32(v59, v59).u32[0], v58.u32[0]);
      v61 = vsubq_f32(vmulq_n_f32(a2[222], v3), v60);
      v58.i8[0] = a1[4];
      *v58.i32 = v58.u32[0];
      v62 = vdivq_f32(v60, vdupq_lane_s32(v58, 0));
      *a3 = v62;
      v62.i8[0] = a1[5];
      v62.f32[0] = v62.u32[0];
      result = vdivq_f32(v61, vdupq_lane_s32(*v62.f32, 0));
      a3[1] = result;
      break;
    case 3:
      v5 = 0;
      v6 = vdupq_n_s32(v3);
      v7 = 0uLL;
      v8.i64[0] = 0x400000004;
      v8.i64[1] = 0x400000004;
      v9 = 0uLL;
      v10 = xmmword_22FA083F0;
      v11 = a2;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = &a1[v5 + 16];
        v19 = vld1_dup_f32(v18);
        v20 = vmovl_u8(v19).u64[0];
        v21 = vcgtq_s32(v6, v10);
        v10 = vaddq_s32(v10, v8);
        v22 = vandq_s8(vmovl_s16(vceqz_s16(v20)), v21);
        v23 = vandq_s8(vmovl_s16(vceq_s16(v20, 0x1000100010001)), v21);
        v17 = vaddq_f32(v17, vandq_s8(*v11, v22));
        v13 = vaddq_f32(v13, vandq_s8(*v11, v23));
        v24 = v11[55];
        v16 = vaddq_f32(v16, vandq_s8(v24, v22));
        v12 = vaddq_f32(v12, vandq_s8(v24, v23));
        v25 = v11[110];
        v15 = vaddq_f32(v15, vandq_s8(v25, v22));
        v9 = vaddq_f32(v9, vandq_s8(v25, v23));
        v26 = v11[165];
        v14 = vaddq_f32(v14, vandq_s8(v26, v22));
        v7 = vaddq_f32(v7, vandq_s8(v26, v23));
        v5 += 4;
        ++v11;
      }

      while (v5 < v3);
      v27 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), *v17.f32);
      v28 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
      v29 = vadd_f32(*&vextq_s8(v15, v15, 8uLL), *v15.f32);
      v30 = vadd_f32(*&vextq_s8(v14, v14, 8uLL), *v14.f32);
      *v31.f32 = vzip1_s32(vpadd_f32(v27, v27), vpadd_f32(v28, v28));
      v31.i32[2] = vpadd_f32(v29, v29).u32[0];
      v31.i32[3] = vpadd_f32(v30, v30).u32[0];
      v32 = vadd_f32(*&vextq_s8(v13, v13, 8uLL), *v13.f32);
      v33 = vadd_f32(*&vextq_s8(v12, v12, 8uLL), *v12.f32);
      v34 = vadd_f32(*&vextq_s8(v9, v9, 8uLL), *v9.f32);
      v35 = vpadd_f32(v34, v34);
      v36 = vadd_f32(*&vextq_s8(v7, v7, 8uLL), *v7.f32);
      *v37.f32 = vzip1_s32(vpadd_f32(v32, v32), vpadd_f32(v33, v33));
      v37.i32[2] = v35.i32[0];
      v37.i32[3] = vpadd_f32(v36, v36).u32[0];
      v38 = vsubq_f32(vsubq_f32(vmulq_n_f32(a2[222], v3), v31), v37);
      v35.i8[0] = a1[4];
      *v35.i32 = v35.u32[0];
      v39 = vdivq_f32(v31, vdupq_lane_s32(v35, 0));
      *a3 = v39;
      v39.i8[0] = a1[5];
      v39.f32[0] = v39.u32[0];
      v40 = vdivq_f32(v37, vdupq_lane_s32(*v39.f32, 0));
      a3[1] = v40;
      v40.i8[0] = a1[6];
      v40.f32[0] = v40.u32[0];
      result = vdivq_f32(v38, vdupq_lane_s32(*v40.f32, 0));
      a3[2] = result;
      break;
    default:
      v63 = 0;
      v64 = vdupq_n_s32(v3);
      v65 = 0uLL;
      v66.i64[0] = 0x400000004;
      v66.i64[1] = 0x400000004;
      v67 = xmmword_22FA083F0;
      v68 = 0uLL;
      v69 = a2;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      do
      {
        v80 = &a1[v63 + 16];
        v81 = vld1_dup_f32(v80);
        v82 = vmovl_u8(v81).u64[0];
        v83 = vcgtq_s32(v64, v67);
        v67 = vaddq_s32(v67, v66);
        v84 = vandq_s8(vmovl_s16(vceqz_s16(v82)), v83);
        v85 = vandq_s8(vmovl_s16(vceq_s16(v82, 0x1000100010001)), v83);
        v86 = vandq_s8(vmovl_s16(vceq_s16(v82, 0x2000200020002)), v83);
        v65 = vaddq_f32(v65, vandq_s8(*v69, v84));
        v72 = vaddq_f32(v72, vandq_s8(*v69, v85));
        v76 = vaddq_f32(v76, vandq_s8(*v69, v86));
        v87 = v69[55];
        v68 = vaddq_f32(v68, vandq_s8(v87, v84));
        v73 = vaddq_f32(v73, vandq_s8(v87, v85));
        v77 = vaddq_f32(v77, vandq_s8(v87, v86));
        v88 = v69[110];
        v70 = vaddq_f32(v70, vandq_s8(v88, v84));
        v74 = vaddq_f32(v74, vandq_s8(v88, v85));
        v78 = vaddq_f32(v78, vandq_s8(v88, v86));
        v89 = v69[165];
        v71 = vaddq_f32(v71, vandq_s8(v89, v84));
        v75 = vaddq_f32(v75, vandq_s8(v89, v85));
        v79 = vaddq_f32(v79, vandq_s8(v89, v86));
        v63 += 4;
        ++v69;
      }

      while (v63 < v3);
      v90 = vadd_f32(*&vextq_s8(v65, v65, 8uLL), *v65.f32);
      v91 = vadd_f32(*&vextq_s8(v68, v68, 8uLL), *v68.f32);
      v92 = vadd_f32(*&vextq_s8(v70, v70, 8uLL), *v70.f32);
      v93 = vadd_f32(*&vextq_s8(v71, v71, 8uLL), *v71.f32);
      *v94.f32 = vzip1_s32(vpadd_f32(v90, v90), vpadd_f32(v91, v91));
      v94.i32[2] = vpadd_f32(v92, v92).u32[0];
      v94.i32[3] = vpadd_f32(v93, v93).u32[0];
      v95 = vadd_f32(*&vextq_s8(v72, v72, 8uLL), *v72.f32);
      v96 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.f32);
      v97 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.f32);
      v98 = vadd_f32(*&vextq_s8(v75, v75, 8uLL), *v75.f32);
      *v99.f32 = vzip1_s32(vpadd_f32(v95, v95), vpadd_f32(v96, v96));
      v99.i32[2] = vpadd_f32(v97, v97).u32[0];
      v99.i32[3] = vpadd_f32(v98, v98).u32[0];
      v100 = vadd_f32(*&vextq_s8(v76, v76, 8uLL), *v76.f32);
      v101 = vadd_f32(*&vextq_s8(v77, v77, 8uLL), *v77.f32);
      v102 = vadd_f32(*&vextq_s8(v78, v78, 8uLL), *v78.f32);
      v103 = vpadd_f32(v102, v102);
      v104 = vadd_f32(*&vextq_s8(v79, v79, 8uLL), *v79.f32);
      *v105.f32 = vzip1_s32(vpadd_f32(v100, v100), vpadd_f32(v101, v101));
      v105.i32[2] = v103.i32[0];
      v105.i32[3] = vpadd_f32(v104, v104).u32[0];
      v106 = vsubq_f32(vsubq_f32(vsubq_f32(vmulq_n_f32(a2[222], v3), v94), v99), v105);
      v103.i8[0] = a1[4];
      *v103.i32 = v103.u32[0];
      v107 = vdivq_f32(v94, vdupq_lane_s32(v103, 0));
      *a3 = v107;
      v107.i8[0] = a1[5];
      v107.f32[0] = v107.u32[0];
      v108 = vdivq_f32(v99, vdupq_lane_s32(*v107.f32, 0));
      a3[1] = v108;
      v108.i8[0] = a1[6];
      v108.f32[0] = v108.u32[0];
      v109 = vdivq_f32(v105, vdupq_lane_s32(*v108.f32, 0));
      a3[2] = v109;
      v109.i8[0] = a1[7];
      v109.f32[0] = v109.u32[0];
      result = vdivq_f32(v106, vdupq_lane_s32(*v109.f32, 0));
      a3[3] = result;
      break;
  }

  return result;
}

int8x16_t compute_avgs_and_dirs_3_comp(_BYTE *a1, float32x4_t *a2, int a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  sub_22F9F7C70(a1, a2, &v40);
  v9 = a2 + 55;
  if (a3 == 2)
  {
    v15.i64[0] = v40.i64[0];
    v16.i64[0] = v41.i64[0];
    v15.i64[1] = v40.u32[3];
    v16.i64[1] = v41.u32[3];
    v17.i64[0] = v42.i64[0];
    v18.i64[0] = v43.i64[0];
    v17.i64[1] = v42.u32[3];
    v18.i64[1] = v43.u32[3];
    v40 = v15;
    v41 = v16;
    v42 = v17;
    v43 = v18;
    v12 = 165;
    v10 = a2 + 55;
    goto LABEL_7;
  }

  v10 = a2 + 110;
  if (a3 == 1)
  {
    v13.i64[0] = __PAIR64__(v40.u32[2], v40.u32[0]);
    v13.i64[1] = v40.u32[3];
    v14.i64[0] = __PAIR64__(v41.u32[2], v41.u32[0]);
    v14.i64[1] = v41.u32[3];
    v40 = v13;
    v41 = v14;
    v13.i64[0] = __PAIR64__(v42.u32[2], v42.u32[0]);
    v13.i64[1] = v42.u32[3];
    v14.i64[0] = __PAIR64__(v43.u32[2], v43.u32[0]);
    v14.i64[1] = v43.u32[3];
    v42 = v13;
    v43 = v14;
    v12 = 165;
LABEL_7:
    v9 = a2;
    goto LABEL_9;
  }

  if (a3)
  {
    v40.i32[3] = 0;
    v41.i32[3] = 0;
    v12 = 110;
    v10 = a2 + 55;
    v9 = a2;
    v42.i32[3] = 0;
    v43.i32[3] = 0;
  }

  else
  {
    v11 = vextq_s8(0, 0, 0xCuLL);
    v40 = vextq_s8(v40, v11, 4uLL);
    v41 = vextq_s8(v41, v11, 4uLL);
    v42 = vextq_s8(v42, v11, 4uLL);
    v43 = vextq_s8(v43, v11, 4uLL);
    v12 = 165;
  }

LABEL_9:
  v19 = *a1;
  if (!*a1)
  {
    sub_22F9F92D0();
  }

  v20 = 0;
  v21 = a1 + 240;
  v22 = a1 + 4;
  v23 = &a2[v12];
  do
  {
    v24 = v22[v20];
    if (!v22[v20])
    {
      sub_22F9F92A4();
    }

    v25 = *(&v40 + v20);
    v26 = a4 + 32 * v20;
    *v26 = v25;
    v27 = 0uLL;
    v28 = v21;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      v31 = *v28++;
      v8.i32[0] = v9->i32[v31];
      v8.i32[1] = v10->i32[v31];
      v8.i32[2] = v23->i32[v31];
      v32 = vsubq_f32(v8, v25);
      v33 = vmovn_s32(vcgtzq_f32(v32));
      v27 = vaddq_f32(v27, vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 0))));
      v29 = vaddq_f32(v29, vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 1))));
      v8 = vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 2)));
      v30 = vaddq_f32(v30, v8);
      --v24;
    }

    while (v24);
    v34 = vmulq_f32(v27, v27);
    *v34.i8 = vadd_f32(*&vextq_s8(v34, v34, 8uLL), *v34.i8);
    v35 = vdupq_lane_s32(vpadd_f32(*v34.i8, *v34.i8), 0);
    v36 = vmulq_f32(v29, v29);
    *v36.i8 = vadd_f32(*&vextq_s8(v36, v36, 8uLL), *v36.i8);
    v8 = vdupq_lane_s32(vpadd_f32(*v36.i8, *v36.i8), 0);
    v37 = vmulq_f32(v30, v30);
    *v37.i8 = vadd_f32(*&vextq_s8(v37, v37, 8uLL), *v37.i8);
    v38 = vcgtq_f32(v8, v35);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v37.i8, *v37.i8), 0), vbslq_s8(v38, v8, v35)), v30, vbslq_s8(v38, v29, v27));
    *(v26 + 16) = result;
    ++v20;
    v21 += 216;
  }

  while (v20 != v19);
  return result;
}

int8x16_t compute_avgs_and_dirs_3_comp_rgb(unsigned __int16 *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v120 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (!*a1)
  {
    sub_22F9F9354();
  }

  v9 = *(a2 + 3516);
  if (!*(a2 + 3516))
  {
    sub_22F9F9328();
  }

  switch(v8)
  {
    case 1:
      v59 = *(a2 + 3552);
      v59.i32[3] = 0;
      v116 = v59;
      break;
    case 2:
      v40 = 0;
      v41 = vdupq_n_s32(v9);
      v42 = xmmword_22FA083F0;
      v43 = 0uLL;
      v44.i64[0] = 0x400000004;
      v44.i64[1] = 0x400000004;
      v45 = a2;
      v46 = 0uLL;
      v47 = 0uLL;
      do
      {
        v48 = &a1[v40 / 2 + 8];
        v49 = vld1_dup_f32(v48);
        v50 = vcgtq_s32(v41, v42);
        v42 = vaddq_s32(v42, v44);
        v51 = vandq_s8(vmovl_s16(vceqz_s16(*&vmovl_u8(v49))), v50);
        v47 = vaddq_f32(v47, vandq_s8(*v45, v51));
        v46 = vaddq_f32(v46, vandq_s8(v45[55], v51));
        v43 = vaddq_f32(v43, vandq_s8(v45[110], v51));
        v40 += 4;
        ++v45;
      }

      while (v40 < v9);
      v52 = *(a2 + 3552);
      v52.i32[3] = 0;
      *v53.f32 = vadd_f32(*&vextq_s8(v47, v47, 8uLL), *v47.f32);
      v53.i32[0] = vpadd_f32(*v53.f32, *v53.f32).u32[0];
      v54 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.f32);
      v55 = vpadd_f32(v54, v54);
      a8 = vextq_s8(v43, v43, 8uLL);
      v56 = vadd_f32(*a8.f32, *v43.f32);
      v53.i32[1] = v55.i32[0];
      v53.i64[1] = vpadd_f32(v56, v56).u32[0];
      v57 = vsubq_f32(vmulq_n_f32(v52, v9), v53);
      v55.i8[0] = *(a1 + 4);
      *v55.i32 = v55.u32[0];
      v58 = vdivq_f32(v53, vdupq_lane_s32(v55, 0));
      v53.i8[0] = *(a1 + 5);
      v53.f32[0] = v53.u32[0];
      v116 = v58;
      v117 = vdivq_f32(v57, vdupq_lane_s32(*v53.f32, 0));
      break;
    case 3:
      v10 = 0;
      v11 = vdupq_n_s32(v9);
      v12 = 0uLL;
      v13.i64[0] = 0x400000004;
      v13.i64[1] = 0x400000004;
      v14 = xmmword_22FA083F0;
      v15 = a2;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v21 = &a1[v10 / 2 + 8];
        v22 = vld1_dup_f32(v21);
        v23 = vmovl_u8(v22).u64[0];
        v24 = vcgtq_s32(v11, v14);
        v14 = vaddq_s32(v14, v13);
        v25 = vandq_s8(vmovl_s16(vceqz_s16(v23)), v24);
        v26 = vandq_s8(vmovl_s16(vceq_s16(v23, 0x1000100010001)), v24);
        v20 = vaddq_f32(v20, vandq_s8(*v15, v25));
        v17 = vaddq_f32(v17, vandq_s8(*v15, v26));
        v27 = v15[55];
        v19 = vaddq_f32(v19, vandq_s8(v27, v25));
        v16 = vaddq_f32(v16, vandq_s8(v27, v26));
        v28 = v15[110];
        v18 = vaddq_f32(v18, vandq_s8(v28, v25));
        v12 = vaddq_f32(v12, vandq_s8(v28, v26));
        v10 += 4;
        ++v15;
      }

      while (v10 < v9);
      v29 = *(a2 + 3552);
      v29.i32[3] = 0;
      *v30.f32 = vadd_f32(*&vextq_s8(v20, v20, 8uLL), *v20.f32);
      v31 = vadd_f32(*&vextq_s8(v19, v19, 8uLL), *v19.f32);
      v32 = vadd_f32(*&vextq_s8(v18, v18, 8uLL), *v18.f32);
      v30.i32[0] = vpadd_f32(*v30.f32, *v30.f32).u32[0];
      v30.i32[1] = vpadd_f32(v31, v31).u32[0];
      v30.i64[1] = vpadd_f32(v32, v32).u32[0];
      v33 = vmulq_n_f32(v29, v9);
      *v34.f32 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), *v17.f32);
      v34.i32[0] = vpadd_f32(*v34.f32, *v34.f32).u32[0];
      v35 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
      v36 = vpadd_f32(v35, v35);
      a8 = vextq_s8(v12, v12, 8uLL);
      v37 = vadd_f32(*a8.f32, *v12.f32);
      v34.i32[1] = v36.i32[0];
      v34.i64[1] = vpadd_f32(v37, v37).u32[0];
      v38 = vsubq_f32(vsubq_f32(v33, v30), v34);
      v36.i8[0] = *(a1 + 4);
      *v36.i32 = v36.u32[0];
      v39 = vdivq_f32(v30, vdupq_lane_s32(v36, 0));
      v33.i8[0] = *(a1 + 5);
      v33.f32[0] = v33.u32[0];
      v116 = v39;
      v117 = vdivq_f32(v34, vdupq_lane_s32(*v33.f32, 0));
      v39.i8[0] = *(a1 + 6);
      v39.f32[0] = v39.u32[0];
      v118 = vdivq_f32(v38, vdupq_lane_s32(*v39.f32, 0));
      break;
    default:
      v60 = 0;
      v61 = vdupq_n_s32(v9);
      v62 = 0uLL;
      v63.i64[0] = 0x400000004;
      v63.i64[1] = 0x400000004;
      v64 = xmmword_22FA083F0;
      v65 = 0uLL;
      v66 = a2;
      v67 = 0uLL;
      v68 = 0uLL;
      a8 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      do
      {
        v73 = &a1[v60 / 2 + 8];
        v74 = vld1_dup_f32(v73);
        v75 = vmovl_u8(v74).u64[0];
        v76 = vcgtq_s32(v61, v64);
        v64 = vaddq_s32(v64, v63);
        v77 = vandq_s8(vmovl_s16(vceqz_s16(v75)), v76);
        v78 = vandq_s8(vmovl_s16(vceq_s16(v75, 0x1000100010001)), v76);
        v79 = vandq_s8(vmovl_s16(vceq_s16(v75, 0x2000200020002)), v76);
        v62 = vaddq_f32(v62, vandq_s8(*v66, v77));
        v68 = vaddq_f32(v68, vandq_s8(*v66, v78));
        v70 = vaddq_f32(v70, vandq_s8(*v66, v79));
        v80 = v66[55];
        v65 = vaddq_f32(v65, vandq_s8(v80, v77));
        a8 = vaddq_f32(a8, vandq_s8(v80, v78));
        v71 = vaddq_f32(v71, vandq_s8(v80, v79));
        v81 = v66[110];
        v67 = vaddq_f32(v67, vandq_s8(v81, v77));
        v69 = vaddq_f32(v69, vandq_s8(v81, v78));
        v72 = vaddq_f32(v72, vandq_s8(v81, v79));
        v60 += 4;
        ++v66;
      }

      while (v60 < v9);
      v82 = *(a2 + 3552);
      v82.i32[3] = 0;
      *v83.f32 = vadd_f32(*&vextq_s8(v62, v62, 8uLL), *v62.f32);
      v84 = vadd_f32(*&vextq_s8(v65, v65, 8uLL), *v65.f32);
      v85 = vadd_f32(*&vextq_s8(v67, v67, 8uLL), *v67.f32);
      v83.i32[0] = vpadd_f32(*v83.f32, *v83.f32).u32[0];
      v83.i32[1] = vpadd_f32(v84, v84).u32[0];
      v83.i64[1] = vpadd_f32(v85, v85).u32[0];
      *v86.f32 = vadd_f32(*&vextq_s8(v68, v68, 8uLL), *v68.f32);
      v86.i32[0] = vpadd_f32(*v86.f32, *v86.f32).u32[0];
      v87 = vadd_f32(*&vextq_s8(a8, a8, 8uLL), *a8.f32);
      v88 = vadd_f32(*&vextq_s8(v69, v69, 8uLL), *v69.f32);
      v86.i32[1] = vpadd_f32(v87, v87).u32[0];
      v86.i64[1] = vpadd_f32(v88, v88).u32[0];
      *v89.f32 = vadd_f32(*&vextq_s8(v70, v70, 8uLL), *v70.f32);
      v89.i32[0] = vpadd_f32(*v89.f32, *v89.f32).u32[0];
      v90 = vadd_f32(*&vextq_s8(v71, v71, 8uLL), *v71.f32);
      v91 = vpadd_f32(v90, v90);
      v92 = vextq_s8(v72, v72, 8uLL).u64[0];
      v93 = vadd_f32(v92, *v72.f32);
      v89.i32[1] = v91.i32[0];
      v89.i64[1] = vpadd_f32(v93, v93).u32[0];
      v94 = vsubq_f32(vsubq_f32(vsubq_f32(vmulq_n_f32(v82, v9), v83), v86), v89);
      v91.i8[0] = *(a1 + 4);
      *v91.i32 = v91.u32[0];
      v95 = vdivq_f32(v83, vdupq_lane_s32(v91, 0));
      v92.i8[0] = *(a1 + 5);
      v92.f32[0] = v92.u32[0];
      v116 = v95;
      v117 = vdivq_f32(v86, vdupq_lane_s32(v92, 0));
      v95.i8[0] = *(a1 + 6);
      v95.f32[0] = v95.u32[0];
      v96 = vdivq_f32(v89, vdupq_lane_s32(*v95.f32, 0));
      v89.i8[0] = *(a1 + 7);
      v89.f32[0] = v89.u32[0];
      v118 = v96;
      v119 = vdivq_f32(v94, vdupq_lane_s32(*v89.f32, 0));
      break;
  }

  v97 = 0;
  v98 = a1 + 120;
  v99 = a1 + 2;
  do
  {
    v100 = *(v99 + v97);
    if (!*(v99 + v97))
    {
      sub_22F9F92FC();
    }

    v101 = *(&v116 + v97);
    v102 = a3 + 32 * v97;
    *v102 = v101;
    v103 = 0uLL;
    v104 = v98;
    v105 = 0uLL;
    v106 = 0uLL;
    do
    {
      v107 = *v104;
      v104 = (v104 + 1);
      a8.i32[0] = *(a2 + 4 * v107);
      a8.i32[1] = *(a2 + 880 + 4 * v107);
      a8.i32[2] = *(a2 + 1760 + 4 * v107);
      v108 = vsubq_f32(a8, v101);
      v109 = vmovn_s32(vcgtzq_f32(v108));
      v103 = vaddq_f32(v103, vandq_s8(v108, vmovl_s16(vdup_lane_s16(v109, 0))));
      v105 = vaddq_f32(v105, vandq_s8(v108, vmovl_s16(vdup_lane_s16(v109, 1))));
      a8 = vandq_s8(v108, vmovl_s16(vdup_lane_s16(v109, 2)));
      v106 = vaddq_f32(v106, a8);
      --v100;
    }

    while (v100);
    v110 = vmulq_f32(v103, v103);
    *v110.i8 = vadd_f32(*&vextq_s8(v110, v110, 8uLL), *v110.i8);
    v111 = vdupq_lane_s32(vpadd_f32(*v110.i8, *v110.i8), 0);
    v112 = vmulq_f32(v105, v105);
    *v112.i8 = vadd_f32(*&vextq_s8(v112, v112, 8uLL), *v112.i8);
    a8 = vdupq_lane_s32(vpadd_f32(*v112.i8, *v112.i8), 0);
    v113 = vmulq_f32(v106, v106);
    *v113.i8 = vadd_f32(*&vextq_s8(v113, v113, 8uLL), *v113.i8);
    v114 = vcgtq_f32(a8, v111);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v113.i8, *v113.i8), 0), vbslq_s8(v114, a8, v111)), v106, vbslq_s8(v114, v105, v103));
    *(v102 + 16) = result;
    ++v97;
    v98 += 108;
  }

  while (v97 != v8);
  return result;
}

unsigned __int32 *compute_avgs_and_dirs_2_comp(_WORD *a1, int32x4_t *a2, int a3, int a4, uint64_t a5, double a6, __n128 a7, double a8, int32x4_t a9)
{
  if (!a3 && a4 == 1)
  {
    v9 = a2[222];
    v9.i64[1] = 0;
    v10 = 55;
LABEL_7:
    v11 = a2;
    goto LABEL_11;
  }

  if (!a3 && a4 == 2)
  {
    a7 = vzip2q_s32(0, 0);
    v9 = vuzp1q_s32(a2[222], a7);
    v10 = 110;
    goto LABEL_7;
  }

  if (a3 != 1 || a4 != 2)
  {
    sub_22F9F9380();
  }

  a7.n128_u64[1] = 0;
  v9 = vextq_s8(a2[222], 0, 4uLL).u64[0];
  v11 = a2 + 55;
  v10 = 110;
LABEL_11:
  v12 = *a1;
  if (!*a1)
  {
    sub_22F9F93D8();
  }

  v13 = 0;
  v14 = &a2[v10];
  v15 = (a1 + 120);
  v16 = a1 + 2;
  do
  {
    v17 = *(v16 + v13);
    if (!*(v16 + v13))
    {
      sub_22F9F93AC();
    }

    if (v12 != 1)
    {
      v18 = 0uLL;
      v19 = *(v16 + v13);
      v20 = v15;
      do
      {
        v21 = *v20++;
        a7.n128_u32[0] = v11->u32[v21];
        a7.n128_u32[1] = v14->u32[v21];
        v18 = vaddq_f32(v18, a7);
        --v19;
      }

      while (v19);
      a7.n128_f32[0] = v17;
      v9 = vdivq_f32(v18, vdupq_lane_s32(a7.n128_u64[0], 0));
    }

    v22 = 0;
    v23 = a5 + 32 * v13;
    *v23 = v9;
    v24 = 0uLL;
    v25 = 0uLL;
    do
    {
      v26 = v15[v22];
      result = v11 + v26;
      a9.i32[0] = *result;
      a9.i32[1] = v14->i32[v26];
      v28 = vsubq_f32(a9, v9);
      v29 = vmovn_s32(vcgtzq_f32(v28));
      v24 = vaddq_f32(v24, vandq_s8(v28, vmovl_s16(vdup_lane_s16(v29, 0))));
      a9 = vandq_s8(v28, vmovl_s16(vdup_lane_s16(v29, 1)));
      v25 = vaddq_f32(v25, a9);
      ++v22;
    }

    while (v17 != v22);
    v30 = vmulq_f32(v24, v24);
    *v30.i8 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), *v30.i8);
    v31 = vmulq_f32(v25, v25);
    *v31.i8 = vadd_f32(*&vextq_s8(v31, v31, 8uLL), *v31.i8);
    a9 = vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v31.i8, *v31.i8), vpadd_f32(*v30.i8, *v30.i8)), 0));
    a7 = vbslq_s8(a9, v25, v24);
    *(v23 + 16) = a7;
    ++v13;
    v15 += 216;
  }

  while (v13 != v12);
  return result;
}

float32x2_t compute_error_squared_rgba(_WORD *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v8 = *a1;
  if (!*a1)
  {
    sub_22F9F945C();
  }

  v9 = 0;
  v10 = a1 + 120;
  v11 = a1 + 2;
  v12 = a2 + 55;
  v13 = 0uLL;
  v14 = a2 + 110;
  v15 = a2 + 165;
  v16 = vdupq_n_s32(0xD01502F9);
  v17 = vdupq_n_s32(0x501502F9u);
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  v19.i64[0] = 0x400000004;
  v19.i64[1] = 0x400000004;
  v20 = &quant_mode_table[842];
  v21 = 0uLL;
  do
  {
    v22 = *(v11 + v9);
    if (!*(v11 + v9))
    {
      sub_22F9F9430();
    }

    v23 = (a4 + 32 * v9);
    v24 = *v23;
    v25 = v23[1];
    v26 = (a3 + 32 * v9);
    v27 = *v26;
    v28 = *(v26 + 1);
    {
      v83 = a7;
      v75 = a6;
      v82 = a5;
      v74 = a4;
      v81 = a3;
      v73 = a2;
      v80 = v8;
      v72 = v9;
      v79 = v10;
      v71 = v11;
      v78 = v12;
      v70 = v14;
      v76 = v22;
      v77 = v15;
      v68 = v21;
      v69 = v13;
      v66 = v17;
      v67 = v16;
      v65 = v27;
      v64 = v24;
      sub_22F9F25EC();
      v24 = v64;
      v27 = v65;
      v19.i64[0] = 0x400000004;
      v19.i64[1] = 0x400000004;
      v17 = v66;
      v18.i64[0] = 0x100000001;
      v18.i64[1] = 0x100000001;
      v16 = v67;
      v21 = v68;
      v13 = v69;
      v22 = v76;
      v15 = v77;
      v20 = quant_mode_table + 842;
      v14 = v70;
      v11 = v71;
      v12 = v78;
      v10 = v79;
      v9 = v72;
      a2 = v73;
      v8 = v80;
      a3 = v81;
      a4 = v74;
      a6 = v75;
      a5 = v82;
      a7 = v83;
    }

    if (vaddvq_s32(vshlq_u32(vandq_s8(vceqzq_f32(v24), v18), mask(vmask4)::shift)) != 15)
    {
      sub_22F9F9404();
    }

    v29 = 0;
    v30 = vdupq_lane_s32(*v27.i8, 0);
    v31 = vdupq_lane_s32(*v27.i8, 1);
    v32 = vdupq_laneq_s32(v27, 2);
    v33 = vdupq_laneq_s32(v27, 3);
    v34 = a2[224];
    v35 = xmmword_22FA083F0;
    v36 = v17;
    v37 = v16;
    v38 = vdupq_n_s32(v22);
    do
    {
      v7.i32[0] = *&v10[v29 / 2];
      v39 = vmovl_u16(*&vmovl_u8(*v7.f32));
      v40 = v39.u32[1];
      v41 = v39.u32[2];
      v42 = v39.u32[3];
      v43 = v39.i32[0];
      v39.i32[0] = a2->i32[v39.u32[0]];
      v44 = &v12->i32[v39.u32[1]];
      v39.i32[1] = a2->i32[v39.u32[1]];
      v45.i32[0] = v12->i32[v43];
      v45.i32[1] = *v44;
      v39.i32[2] = a2->i32[v39.u32[2]];
      v46 = &v12->i32[v39.u32[3]];
      v45.i32[2] = v12->i32[v41];
      v39.i32[3] = a2->i32[v39.u32[3]];
      v47.i32[0] = v14->i32[v43];
      v45.i32[3] = *v46;
      v47.i32[1] = v14->i32[v40];
      v47.i32[2] = v14->i32[v41];
      v48.i32[0] = v15->i32[v43];
      v47.i32[3] = v14->i32[v42];
      v48.i32[1] = v15->i32[v40];
      v48.i32[2] = v15->i32[v41];
      v48.i32[3] = v15->i32[v42];
      v49 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v39, v28.f32[0]), vmulq_lane_f32(v45, *v28.f32, 1)), vmulq_laneq_f32(v47, v28, 2)), vmulq_laneq_f32(v48, v28, 3));
      v36 = vminnmq_f32(v49, v36);
      v37 = vmaxnmq_f32(v49, v37);
      v50 = vaddq_f32(vsubq_f32(v30, v39), vmulq_n_f32(v49, v28.f32[0]));
      v51 = vaddq_f32(vsubq_f32(v31, v45), vmulq_lane_f32(v49, *v28.f32, 1));
      v52 = vaddq_f32(vsubq_f32(v32, v47), vmulq_laneq_f32(v49, v28, 2));
      v53 = vaddq_f32(vsubq_f32(v33, v48), vmulq_laneq_f32(v49, v28, 3));
      v54 = vcgtq_s32(v38, v35);
      v55 = vaddq_f32(vmulq_f32(v50, vmulq_n_f32(v50, v34.f32[0])), vmulq_f32(v51, vmulq_lane_f32(v51, *v34.f32, 1)));
      v56 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v39, v25.f32[0]), vmulq_lane_f32(v45, *v25.f32, 1)), vmulq_laneq_f32(v47, v25, 2)), vmulq_laneq_f32(v48, v25, 3));
      v57 = vsubq_f32(vmulq_n_f32(v56, v25.f32[0]), v39);
      v58 = vsubq_f32(vmulq_lane_f32(v56, *v25.f32, 1), v45);
      v59 = vsubq_f32(vmulq_laneq_f32(v56, v25, 2), v47);
      v60 = vsubq_f32(vmulq_laneq_f32(v56, v25, 3), v48);
      v13 = vaddq_f32(v13, vandq_s8(vaddq_f32(vmulq_f32(v53, vmulq_laneq_f32(v53, v34, 3)), vaddq_f32(vmulq_f32(v52, vmulq_laneq_f32(v52, v34, 2)), v55)), v54));
      v7 = vandq_s8(vaddq_f32(vmulq_f32(v60, vmulq_laneq_f32(v60, v34, 3)), vaddq_f32(vmulq_f32(v59, vmulq_laneq_f32(v59, v34, 2)), vaddq_f32(vmulq_f32(v57, vmulq_n_f32(v57, v34.f32[0])), vmulq_f32(v58, vmulq_lane_f32(v58, *v34.f32, 1))))), v54);
      v21 = vaddq_f32(v21, v7);
      v35 = vaddq_s32(v35, v19);
      v29 += 4;
    }

    while (v29 < v22);
    *(a5 + 4 * v9++) = fmaxf(vmaxvq_f32(v37) - vminvq_f32(v36), *(v20 + 114));
    v10 += 108;
  }

  while (v9 != v8);
  v61 = vadd_f32(*&vextq_s8(v13, v13, 8uLL), *v13.f32);
  *a6 = vpadd_f32(v61, v61).u32[0];
  v62 = vadd_f32(*&vextq_s8(v21, v21, 8uLL), *v21.f32);
  result = vpadd_f32(v62, v62);
  *a7 = result.i32[0];
  return result;
}

float32x2_t compute_error_squared_rgb(_WORD *a1, float32x4_t *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v6 = *a1;
  if (!*a1)
  {
    sub_22F9F94E0();
  }

  v7 = 0;
  v8 = a1 + 120;
  v9 = a1 + 2;
  v10 = a2 + 55;
  v11 = 0uLL;
  v12 = a2 + 110;
  v13 = vdupq_n_s32(0xD01502F9);
  v14 = vdupq_n_s32(0x501502F9u);
  v15.i64[0] = 0x100000001;
  v15.i64[1] = 0x100000001;
  v16 = xmmword_22FA083F0;
  v17.i64[0] = 0x400000004;
  v17.i64[1] = 0x400000004;
  v18 = &quant_mode_table[842];
  v19 = 0uLL;
  do
  {
    v20 = *(v9 + v7);
    if (!*(v9 + v7))
    {
      sub_22F9F94B4();
    }

    v21 = a3 + 144 * v7;
    v22 = *(v21 + 64);
    v23 = *(v21 + 80);
    v24 = *(v21 + 96);
    v25 = *(v21 + 112);
    {
      v73 = a3;
      v74 = a5;
      v67 = a2;
      v68 = a4;
      v72 = v6;
      v66 = v7;
      v71 = v8;
      v65 = v9;
      v70 = v10;
      v64 = v12;
      v75 = a3 + 144 * v7;
      v69 = v20;
      v62 = v19;
      v63 = v11;
      v60 = v14;
      v61 = v13;
      v58 = v23;
      v59 = v16;
      v57 = v22;
      v56 = v24;
      sub_22F9F25EC();
      v24 = v56;
      v22 = v57;
      v23 = v58;
      v17.i64[0] = 0x400000004;
      v17.i64[1] = 0x400000004;
      v16 = v59;
      v14 = v60;
      v15.i64[0] = 0x100000001;
      v15.i64[1] = 0x100000001;
      v13 = v61;
      v19 = v62;
      v11 = v63;
      v20 = v69;
      v10 = v70;
      a5 = v74;
      v21 = v75;
      v18 = quant_mode_table + 842;
      v12 = v64;
      v9 = v65;
      v8 = v71;
      v6 = v72;
      v7 = v66;
      a2 = v67;
      a4 = v68;
      a3 = v73;
    }

    if (vaddvq_s32(vshlq_u32(vandq_s8(vceqzq_f32(v24), v15), mask(vmask4)::shift)) != 15)
    {
      sub_22F9F9488();
    }

    v26 = 0;
    v27 = vdupq_lane_s32(*v22.i8, 0);
    v28 = vdupq_lane_s32(*v22.i8, 1);
    v29 = vdupq_laneq_s32(v22, 2);
    v30 = a2[224];
    v31 = v16;
    v32 = v14;
    v33 = v13;
    v34 = vdupq_n_s32(v20);
    do
    {
      v5.i32[0] = *&v8[v26 / 2];
      v35 = vmovl_u16(*&vmovl_u8(*v5.f32));
      v36 = v35.u32[2];
      v37 = v35.u32[1];
      v38 = v35.u32[3];
      v39 = v35.i32[0];
      v35.i32[0] = a2->i32[v35.u32[0]];
      v35.i32[1] = a2->i32[v35.u32[1]];
      v40.i32[0] = v10->i32[v39];
      v35.i32[2] = a2->i32[v35.u32[2]];
      v40.i32[1] = v10->i32[v37];
      v41 = &v10->i32[v35.u32[3]];
      v35.i32[3] = a2->i32[v35.u32[3]];
      v40.i32[2] = v10->i32[v36];
      v40.i32[3] = *v41;
      v42.i32[0] = v12->i32[v39];
      v42.i32[1] = v12->i32[v37];
      v42.i32[2] = v12->i32[v36];
      v42.i32[3] = v12->i32[v38];
      v43 = vaddq_f32(vaddq_f32(vmulq_n_f32(v35, v23.f32[0]), vmulq_lane_f32(v40, *v23.f32, 1)), vmulq_laneq_f32(v42, v23, 2));
      v32 = vminnmq_f32(v43, v32);
      v33 = vmaxnmq_f32(v43, v33);
      v44 = vaddq_f32(vsubq_f32(v27, v35), vmulq_n_f32(v43, v23.f32[0]));
      v45 = vaddq_f32(vsubq_f32(v28, v40), vmulq_lane_f32(v43, *v23.f32, 1));
      v46 = vaddq_f32(vsubq_f32(v29, v42), vmulq_laneq_f32(v43, v23, 2));
      v47 = vcgtq_s32(v34, v31);
      v48 = vaddq_f32(vmulq_f32(v44, vmulq_n_f32(v44, v30.f32[0])), vmulq_f32(v45, vmulq_lane_f32(v45, *v30.f32, 1)));
      v49 = vaddq_f32(vaddq_f32(vmulq_n_f32(v35, v25.f32[0]), vmulq_lane_f32(v40, *v25.f32, 1)), vmulq_laneq_f32(v42, v25, 2));
      v50 = vsubq_f32(vmulq_n_f32(v49, v25.f32[0]), v35);
      v51 = vsubq_f32(vmulq_lane_f32(v49, *v25.f32, 1), v40);
      v52 = vsubq_f32(vmulq_laneq_f32(v49, v25, 2), v42);
      v11 = vaddq_f32(v11, vandq_s8(vaddq_f32(vmulq_f32(v46, vmulq_laneq_f32(v46, v30, 2)), v48), v47));
      v5 = vandq_s8(vaddq_f32(vmulq_f32(v52, vmulq_laneq_f32(v52, v30, 2)), vaddq_f32(vmulq_f32(v50, vmulq_n_f32(v50, v30.f32[0])), vmulq_f32(v51, vmulq_lane_f32(v51, *v30.f32, 1)))), v47);
      v19 = vaddq_f32(v19, v5);
      v31 = vaddq_s32(v31, v17);
      v26 += 4;
    }

    while (v26 < v20);
    *(v21 + 128) = fmaxf(vmaxvq_f32(v33) - vminvq_f32(v32), *(v18 + 114));
    ++v7;
    v8 += 108;
  }

  while (v7 != v6);
  v53 = vadd_f32(*&vextq_s8(v11, v11, 8uLL), *v11.f32);
  *a4 = vpadd_f32(v53, v53).u32[0];
  v54 = vadd_f32(*&vextq_s8(v19, v19, 8uLL), *v19.f32);
  result = vpadd_f32(v54, v54);
  *a5 = result.i32[0];
  return result;
}

NSObject *image::toHEIC(image *this, size_t a2, unsigned int a3, unsigned int a4, unsigned int a5, float a6)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v12 = objc_autoreleasePoolPush();
  v13 = CGDataProviderCreateWithData(0, this, a2, 0);
  if (!v13)
  {
    v17 = _mxi_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v38 = "[Image/ImageHEIC.mm:18] toHEIC, dataProvider not created";
LABEL_12:
      _os_log_impl(&dword_22F9C3000, v17, OS_LOG_TYPE_ERROR, v38, buf, 2u);
    }

LABEL_13:
    v37 = 0;
    goto LABEL_21;
  }

  v14 = v13;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = CGImageCreate(a3, a4, 8uLL, 0x20uLL, a5, DeviceRGB, 3u, v14, 0, 0, kCGRenderingIntentDefault);
  CFRelease(DeviceRGB);
  CFRelease(v14);
  if (!v16)
  {
    v17 = _mxi_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v38 = "[Image/ImageHEIC.mm:28] toHEIC, image not created";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v22 = objc_msgSend_identifier(*MEMORY[0x277CE1D90], v18, v19, v20, v21);
  v23 = CGImageDestinationCreateWithData(v17, v22, 1uLL, 0);

  if (v23)
  {
    v45 = *MEMORY[0x277CD2D48];
    *&v28 = a6;
    v29 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v24, v25, v26, v27, v28);
    v46[0] = v29;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v46, &v45, 1);

    CGImageDestinationAddImage(v23, v16, v31);
    LOBYTE(v29) = CGImageDestinationFinalize(v23);
    CGImageRelease(v16);
    CFRelease(v23);
    if (v29)
    {
      v32 = _mxi_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v42 = a2;
        v43 = 2048;
        v44 = objc_msgSend_length(v17, v33, v34, v35, v36);
        _os_log_impl(&dword_22F9C3000, v32, OS_LOG_TYPE_DEBUG, "[Image] toHEIC done, uncompressed image bytes %lu, heic bytes %lu", buf, 0x16u);
      }

      v37 = v17;
      goto LABEL_20;
    }

    v39 = _mxi_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v39, OS_LOG_TYPE_ERROR, "[Image/ImageHEIC.mm:47] toHEIC, failed to finalize image destination", buf, 2u);
    }
  }

  else
  {
    CGImageRelease(v16);
    v31 = _mxi_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v31, OS_LOG_TYPE_ERROR, "[Image/ImageHEIC.mm:36] toHEIC, image destination not created", buf, 2u);
    }
  }

  v37 = 0;
LABEL_20:

LABEL_21:
  objc_autoreleasePoolPop(v12);

  return v37;
}

CFDataRef image::fromHEIC(image *this, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_dataWithBytesNoCopy_length_(MEMORY[0x277CBEA90], v5, this, a2, v6);
  v8 = CGImageSourceCreateWithData(v7, 0);
  if (!v8)
  {
    v13 = _mxi_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      v18 = "[Image/ImageHEIC.mm:62] fromHEIC, image source not created";
LABEL_9:
      _os_log_impl(&dword_22F9C3000, v13, OS_LOG_TYPE_ERROR, v18, &v20, 2u);
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, 0);
  v10 = ImageAtIndex;
  if (!ImageAtIndex)
  {
    v13 = _mxi_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      v18 = "[Image/ImageHEIC.mm:67] fromHEIC, image not created";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  DataProvider = CGImageGetDataProvider(ImageAtIndex);
  v12 = CGDataProviderCopyData(DataProvider);
  CGImageRelease(v10);
  v13 = _mxi_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218240;
    v21 = a2;
    v22 = 2048;
    v23 = objc_msgSend_length(v12, v14, v15, v16, v17);
    _os_log_impl(&dword_22F9C3000, v13, OS_LOG_TYPE_DEBUG, "[Image] fromHEIC done, heic bytes %lu, decompressed image bytes %lu", &v20, 0x16u);
  }

LABEL_11:

  objc_autoreleasePoolPop(v4);

  return v12;
}

id image::toHEIC(void *a1, unsigned int a2, unsigned int a3, float a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v12 = objc_autoreleasePoolPush();
  if (!v7)
  {
    v66 = _mxi_log();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v66, OS_LOG_TYPE_ERROR, "[Image/ImageHEIC.mm:85] toHEIC, texture not available", buf, 2u);
    }

    goto LABEL_12;
  }

  v13 = objc_msgSend_mipmapLevelCount(v7, v8, v9, v10, v11);
  v22 = objc_msgSend_arrayLength(v7, v14, v15, v16, v17);
  if (v22 <= a2 || v13 <= a3)
  {
    v67 = _mxi_log();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      *&buf[4] = a3;
      LOWORD(v77) = 1024;
      *(&v77 + 2) = v13;
      HIWORD(v77) = 1024;
      LODWORD(v78) = a2;
      WORD2(v78) = 1024;
      *(&v78 + 6) = v22;
      _os_log_impl(&dword_22F9C3000, v67, OS_LOG_TYPE_ERROR, "[Image/ImageHEIC.mm:92] toHEIC, mipmap %u (%u), slice %u (%u) out of scope", buf, 0x1Au);
    }

LABEL_12:
    v68 = 0;
    goto LABEL_16;
  }

  v27 = objc_msgSend_width(v7, v18, v19, v20, v21) >> a3;
  v28 = objc_msgSend_height(v7, v23, v24, v25, v26) >> a3;
  v29 = 4 * v27;
  sub_22F9E1DE0(&__p, (4 * v27 * v28));
  if (objc_msgSend_storageMode(v7, v30, v31, v32, v33) == 2)
  {
    v72 = objc_msgSend_device(v7, v34, v35, v36, v37);
    v70 = objc_msgSend_newCommandQueue(v72, v38, v39, v40, v41);
    v46 = objc_msgSend_commandBuffer(v70, v42, v43, v44, v45);
    v71 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v72, v47, __p, v75 - __p, 0, 0);
    v52 = objc_msgSend_blitCommandEncoder(v46, v48, v49, v50, v51);
    *buf = 0;
    v77 = 0;
    *&v78 = 0;
    v73[0] = v27;
    v73[1] = v28;
    v73[2] = 1;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v52, v53, v7, a2, a3, buf, v73, v71, 0, (4 * v27), (v29 * v28));
    objc_msgSend_endEncoding(v52, v54, v55, v56, v57);
    objc_msgSend_commit(v46, v58, v59, v60, v61);
    objc_msgSend_waitUntilCompleted(v46, v62, v63, v64, v65);
  }

  else
  {
    *buf = 0;
    v77 = 0;
    *&v78 = 0;
    *(&v78 + 1) = v27;
    v79 = v28;
    v80 = 1;
    objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v7, v34, __p, (4 * v27), (v29 * v28), buf, a3, a2);
  }

  v68 = image::toHEIC(__p, v75 - __p, v27, v28, 4 * v27, a4);
  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

LABEL_16:
  objc_autoreleasePoolPop(v12);

  return v68;
}

void sub_22F9F9DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t image::fromHEIC(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v109 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (!v7)
  {
    v21 = _mxi_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v21, OS_LOG_TYPE_ERROR, "[Image/ImageHEIC.mm:143] fromHEIC, texture not available", buf, 2u);
    }

    goto LABEL_11;
  }

  v10 = v8;
  v15 = objc_msgSend_bytes(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_length(v8, v16, v17, v18, v19);
  v21 = image::fromHEIC(v15, v20);
  v26 = objc_msgSend_mipmapLevelCount(v7, v22, v23, v24, v25);
  v35 = objc_msgSend_arrayLength(v7, v27, v28, v29, v30);
  if (v35 <= a2 || v26 <= a3)
  {
    v89 = _mxi_log();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      *&buf[4] = a3;
      LOWORD(v105) = 1024;
      *(&v105 + 2) = v26;
      HIWORD(v105) = 1024;
      LODWORD(v106) = a2;
      WORD2(v106) = 1024;
      *(&v106 + 6) = v35;
      _os_log_impl(&dword_22F9C3000, v89, OS_LOG_TYPE_ERROR, "[Image/ImageHEIC.mm:152] fromHEIC, mipmap %u (%u), slice %u (%u) out of scope", buf, 0x1Au);
    }

LABEL_11:
    v90 = 0;
    goto LABEL_14;
  }

  v48 = objc_msgSend_width(v7, v31, v32, v33, v34) >> a3;
  v49 = objc_msgSend_height(v7, v36, v37, v38, v39) >> a3;
  v50 = (4 * v48);
  if (objc_msgSend_storageMode(v7, v40, v41, v42, v43) == 2)
  {
    v101 = objc_msgSend_device(v7, v44, v45, v46, v47);
    v99 = objc_msgSend_newCommandQueue(v101, v51, v52, v53, v54);
    v102 = objc_msgSend_commandBuffer(v99, v55, v56, v57, v58);
    v59 = v21;
    v64 = objc_msgSend_bytes(v59, v60, v61, v62, v63);
    v69 = objc_msgSend_length(v21, v65, v66, v67, v68);
    v100 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v101, v70, v64, v69, 0, 0);
    v75 = objc_msgSend_blitCommandEncoder(v102, v71, v72, v73, v74);
    *buf = v48;
    v105 = v49;
    *&v106 = 1;
    memset(v103, 0, sizeof(v103));
    objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v75, v76, v100, 0, v50, (v50 * v49), buf, v7, a2, a3, v103);
    objc_msgSend_endEncoding(v75, v77, v78, v79, v80);
    objc_msgSend_commit(v102, v81, v82, v83, v84);
    objc_msgSend_waitUntilCompleted(v102, v85, v86, v87, v88);
  }

  else
  {
    *buf = 0;
    v105 = 0;
    *&v106 = 0;
    *(&v106 + 1) = v48;
    v107 = v49;
    v108 = 1;
    v91 = v21;
    v96 = objc_msgSend_bytes(v91, v92, v93, v94, v95);
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v7, v97, buf, a3, a2, v96, (4 * v48), (v50 * v49));
  }

  v90 = 1;
LABEL_14:

  objc_autoreleasePoolPop(v9);
  return v90;
}

uint64_t pack_color_endpoints(int a1, _BYTE *a2, unsigned int a3, float32x4_t a4, float32x4_t a5, int8x16_t a6, float32x4_t a7)
{
  v229 = *MEMORY[0x277D85DE8];
  if (a3 - 21 <= 0xFFFFFFEE)
  {
    sub_22F9FC6B0();
  }

  v10 = 0;
  v11 = vdupq_n_s32(0x477FFF00u);
  v12 = vminnmq_f32(vmaxnmq_f32(a4, 0), v11);
  v13 = vminnmq_f32(vmaxnmq_f32(a5, 0), v11);
  v14 = vdupq_n_s32(0x3B7F00FFu);
  v15 = vmulq_f32(v12, v14);
  v16 = vmulq_f32(v13, v14);
  if (a1 <= 7)
  {
    if (a1 <= 3)
    {
      if ((a1 - 2) >= 2)
      {
        if (!a1)
        {
          v10 = 0;
          v43 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vadd_f32(vzip1_s32(*v15.f32, *v16.f32), vzip2_s32(*v15.f32, *v16.f32))), vdup_n_s32(0x3EAAAAABu));
          v44 = v43.f32[1];
          v45 = vaddv_f32(v43) * 0.5;
          if (v43.f32[0] > v43.f32[1])
          {
            v44 = v45;
            v43.f32[0] = v45;
          }

          v46 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
          *a2 = v46[((v43.f32[0] - (v43.f32[0] + 0.5)) >= -0.1) | (2 * (v43.f32[0] + 0.5))];
          a2[1] = v46[((v44 - (v44 + 0.5)) >= -0.1) | (2 * (v44 + 0.5))];
        }
      }

      else
      {
        v17 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vadd_f32(vzip1_s32(*v12.f32, *v13.f32), vzip2_s32(*v12.f32, *v13.f32)));
        v18 = vdup_n_s32(0x3EAAAAABu);
        v19 = vmul_f32(v17, v18);
        v18.f32[0] = vaddv_f32(v19) * 0.5;
        v20 = vcvt_s32_f32(vadd_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v19.f32[1] < v19.f32[0]), 0x1FuLL)), vdup_lane_s32(v18, 0), v19), 0x3F0000003F000000));
        if (v20.i32[1] - v20.i32[0] < 2049)
        {
          if ((((v20.i32[0] + 16) >> 5) & ~((v20.i32[0] + 16) >> 31)) >= 2047)
          {
            v47 = 2047;
          }

          else
          {
            v47 = ((v20.i32[0] + 16) >> 5) & ~((v20.i32[0] + 16) >> 31);
          }

          v21 = a3 - 4;
          v48 = &color_unquant_to_uquant_tables + 512 * v21;
          v49 = v48[(2 * (v47 & 0x7F)) | 1];
          if ((v49 & 0x80000000) == 0 && ((((v20.i32[1] + 16) >> 5) & ~((v20.i32[1] + 16) >> 31)) >= 2047 ? (v50 = 2047) : (v50 = ((v20.i32[1] + 16) >> 5) & ~((v20.i32[1] + 16) >> 31)), (v51 = v50 - (v47 & 0x780 | v49), v51 <= 0xF) && (v52 = (v47 >> 3) & 0xF0, v53 = v48[(2 * (v51 | v52)) | 1], v52 == (v53 & 0xF0))) || ((((v20.i32[0] + 32) >> 6) & ~((v20.i32[0] + 32) >> 31)) >= 1023 ? (v54 = 1023) : (v54 = ((v20.i32[0] + 32) >> 6) & ~((v20.i32[0] + 32) >> 31)), (v49 = v48[(2 * (v54 & 0x7F)) | 0x101], v49 < 0) && ((((v20.i32[1] + 32) >> 6) & ~((v20.i32[1] + 32) >> 31)) >= 1023 ? (v55 = 1023) : (v55 = ((v20.i32[1] + 32) >> 6) & ~((v20.i32[1] + 32) >> 31)), (v56 = v55 - (v54 & 0x380 | v49 & 0x7F), v56 <= 0x1F) && (v57 = (v54 >> 2) & 0xE0, v53 = v48[(2 * (v56 | v57)) | 1], v57 == (v53 & 0xE0)))))
          {
            *a2 = v49;
            a2[1] = v53;
            return 3;
          }
        }

        else
        {
          v21 = a3 - 4;
        }

        v58 = vmin_s32(vmax_s32(vshr_n_s32(vadd_s32(v20, 0x8000000080), 8uLL), 0), 0xFF000000FFLL);
        v59 = vsub_s32(vshl_n_s32(v58, 8uLL), v20);
        v60 = vmul_s32(v59, v59);
        v61.i32[0] = v20.i32[0];
        v61.i32[1] = v20.i32[1] + 256;
        v62 = vmin_s32(vmax_s32(vshr_n_s32(v61, 8uLL), 0), 0xFF000000FFLL);
        v63 = vadd_s32(vsub_s32(vshl_n_s32(v62, 8uLL), v20), 0xFFFFFF8000000080);
        v64 = vmul_s32(v63, v63);
        v65 = vext_s8(v60, v64, 4uLL);
        v60.i32[1] = v64.i32[1];
        v66 = vadd_s32(v60, v65);
        v67 = vcgt_u32(vdup_lane_s32(v66, 1), v66).u8[0];
        if (v67)
        {
          v68 = v58.i32[0];
        }

        else
        {
          v68 = v62.i32[1];
        }

        v69 = v62.i32[0];
        if (v67)
        {
          v69 = v58.i32[1];
        }

        v70 = &color_unquant_to_uquant_tables + 512 * v21;
        *a2 = v70[(2 * v68) | 1];
        a2[1] = v70[(2 * v69) | 1];
        return 2;
      }

      return v10;
    }

    if (a1 == 4)
    {
      v74 = (v15.f32[2] + vaddv_f32(*v15.f32)) * 0.33333;
      v75 = (v16.f32[2] + vaddv_f32(*v16.f32)) * 0.33333;
      v76 = (v74 + 0.5);
      if (a3 >= 0x13)
      {
        v78 = 2 * v76;
        v80 = a3 - 4;
        v83 = (v75 + 0.5);
        v77 = (v15.f32[3] + 0.5);
        v86 = 2 * v83;
        v79 = 2 * v77;
        v84 = (v16.f32[3] + 0.5);
        v87 = 2 * v84;
      }

      else
      {
        v77 = (v15.f32[3] + 0.5);
        v78 = 2 * v76;
        v79 = 2 * v77;
        v80 = a3 - 4;
        v81 = &color_unquant_to_uquant_tables + 512 * v80;
        v82 = v81[(4 * ((v74 + 0.5) & 0x7F)) | 1];
        v83 = (v75 + 0.5);
        v84 = (v16.f32[3] + 0.5);
        v85 = v82 | (((v76 >> 7) & 1) << 8);
        v86 = 2 * v83;
        v87 = 2 * v84;
        v88 = 2 * v83 - v85;
        if ((v88 - 64) >= 0xFFFFFF80)
        {
          v89 = v81[(4 * ((v15.f32[3] + 0.5) & 0x7F)) | 1];
          v90 = v89 & 0xFFFFFEFF | (((v77 >> 7) & 1) << 8);
          if (v87 - v90 - 64 >= 0xFFFFFF80)
          {
            v91 = v88 & 0x7F | ((v78 & 0x100) >> 1);
            v92 = v81[(2 * v91) | 1];
            if ((v91 ^ v92) <= 0x3F)
            {
              v93 = (v87 - v89) & 0x7F | ((v79 & 0x100) >> 1);
              v94 = v81[(2 * v93) | 1];
              if ((v93 ^ v94) <= 0x3F && (v92 & 0x7F) + v85 + (((v92 << 25) >> 31) & 0xFFFFFF80) <= 0x1FF && (v94 & 0x7F) + v90 + (((v94 << 25) >> 31) & 0xFFFFFF80) <= 0x1FF)
              {
                *a2 = v82;
                a2[1] = v92;
                a2[2] = v89;
                v10 = 5;
                a2[3] = v94;
                return v10;
              }
            }
          }
        }
      }

      if ((v74 - v76) >= -0.1)
      {
        ++v78;
      }

      v113 = &color_unquant_to_uquant_tables + 512 * v80;
      *a2 = v113[v78];
      if ((v75 - v83) < -0.1)
      {
        v114 = v86;
      }

      else
      {
        v114 = v86 + 1;
      }

      a2[1] = v113[v114];
      if ((v15.f32[3] - v77) < -0.1)
      {
        v115 = v79;
      }

      else
      {
        v115 = v79 + 1;
      }

      a2[2] = v113[v115];
      if ((v16.f32[3] - v84) < -0.1)
      {
        v116 = v87;
      }

      else
      {
        v116 = v87 + 1;
      }

      a2[3] = v113[v116];
      return 4;
    }

    if (a1 == 6)
    {
      sub_22F9FBE38(a2, a3, a6);
      return 6;
    }

    if (a1 != 7)
    {
      return v10;
    }

    v22.i64[0] = vaddq_f32(a7, vdupq_laneq_s32(a7, 3)).u64[0];
    v22.f32[2] = a7.f32[2] + a7.f32[3];
    v22.i32[3] = a7.i32[3];
    v23 = vminnmq_f32(vmaxnmq_f32(v22, 0), vdupq_n_s32(0x477FFF00u));
    if (*v23.i32 <= *&v23.i32[1] || *v23.i32 <= *&v23.i32[2])
    {
      if (*&v23.i32[1] <= *&v23.i32[2])
      {
        v136 = vrev64q_s32(v23);
        v112 = vextq_s8(v136, v136, 0xCuLL);
        v111 = 2;
      }

      else
      {
        v112.i64[0] = vrev64q_s32(v23).u64[0];
        v112.i64[1] = v23.i64[1];
        v111 = 1;
      }
    }

    else
    {
      v111 = 0;
      v112 = v23;
    }

    v137 = 0;
    v138 = 4 * v111;
    v139 = v111 | 0xC;
    v140 = vextq_s8(v112, v112, 4uLL).u64[0];
    v141 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
    v142 = vdup_n_s32(0x477FFF00u);
    while (1)
    {
      v143 = (&unk_22FA105AC + 8 * v137);
      v144 = (*v112.i32 - *&v112.i32[1]) <= *v143 && (*v112.i32 - *&v112.i32[2]) <= *v143;
      if (!v144 || *&v112.i32[3] > v143[1])
      {
        goto LABEL_166;
      }

      v145 = flt_22FA105E8[v137];
      v146 = v137 == 4 ? v139 : v138 | v137;
      v147 = flt_22FA105D4[v137];
      v148 = &unk_22FA10570 + 12 * v137;
      v150 = *(v148 + 1);
      v149 = *(v148 + 2);
      v151 = ((*v112.i32 * v145) + 0.5);
      v152 = v151 & 0x3F | (v146 << 6);
      do
      {
        v153 = v141[(2 * v152) | 1];
        v154 = v152 & 0xC0;
        v152 -= v154 != (v153 & 0xC0);
      }

      while (v154 != (v153 & 0xC0));
      *v7.i32 = v147 * (v151 & 0xFFFFFFC0 | v153 & 0x3F);
      v155 = vdup_lane_s32(v7, 0);
      v156 = vsub_f32(v155, v140);
      v157 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(vcgt_f32(v156, v142), v142, vmaxnm_f32(v156, 0)), v145), 0x3F0000003F000000));
      if (1 << v150 <= v157.i32[0] || 1 << v150 <= v157.i32[1])
      {
        goto LABEL_166;
      }

      if (v137 > 5)
      {
        v159 = 0;
      }

      else if (((1 << v137) & 5) != 0)
      {
        v159 = (v151 >> 9) & 1;
      }

      else if (((1 << v137) & 0xA) != 0)
      {
        v159 = (v151 >> 8) & 1;
      }

      else
      {
        v159 = (v157.i32[0] >> 6) & 1;
      }

      if (v137 >= 4)
      {
        if ((v137 - 4) >= 2)
        {
          v160 = 0;
        }

        else
        {
          v160 = (v157.i32[1] >> 6) & 1;
        }
      }

      else
      {
        v160 = (v151 >> 7) & 1;
      }

      if (v137 > 5)
      {
        v161 = 0;
      }

      else if (((1 << v137) & 0x3A) != 0)
      {
        v161 = (v157.i32[0] >> 5) & 1;
      }

      else
      {
        v161 = (v151 >> 8) & 1;
      }

      v162 = 0;
      if (v137 > 2)
      {
        if ((v137 - 3) < 3)
        {
          goto LABEL_157;
        }
      }

      else
      {
        switch(v137)
        {
          case 0:
            v162 = (v151 >> 10) & 1;
            break;
          case 1:
LABEL_157:
            v162 = (v157.i32[1] >> 5) & 1;
            break;
          case 2:
            v162 = (v151 >> 6) & 1;
            break;
        }
      }

      v163 = 1 << v149;
      v164 = 16 * v146;
      v165 = v157.i8[0] & 0x1F | (((v146 >> 2) & 1) << 7) | (v159 << 6) | (32 * v161);
      v166 = v160 << 6;
      do
      {
        v167 = v141[(2 * v165) | 1];
        v168 = v165 & 0xF0;
        v165 -= v168 != (v167 & 0xF0);
      }

      while (v168 != (v167 & 0xF0));
      v169 = v166 | v164 & 0x80 | v157.i8[4] & 0x1F | (32 * v162);
      do
      {
        v170 = v141[(2 * v169) | 1];
        v171 = v169 & 0xF0;
        v169 -= v171 != (v170 & 0xF0);
      }

      while (v171 != (v170 & 0xF0));
      v172.i32[0] = v167 & 0x1F;
      v172.i32[1] = v170 & 0xFFFFFF1F;
      v173 = vsub_f32(vsub_f32(v155, vmul_n_f32(vcvt_f32_s32(vorr_s8((*&v157 & 0xFFFFFFE0FFFFFFE0), v172)), v147)), v140);
      v173.f32[0] = *&v112.i32[3] + ((((*v7.i32 - *v112.i32) + v173.f32[0]) + v173.f32[1]) * 0.33333);
      v174 = fmaxf(v173.f32[0], 0.0);
      if (v173.f32[0] <= 1000000000.0)
      {
        v175 = v174;
      }

      else
      {
        v175 = *"(knN";
      }

      v176 = ((v145 * v175) + 0.5);
      if (v163 > v176)
      {
        v206 = v151 >> 9;
        if (v137 != 1)
        {
          LOBYTE(v206) = v176 >> 5;
        }

        v207 = v151 >> 10;
        v208 = v176 >> 6;
        if (v137 == 4)
        {
          LOBYTE(v208) = v151 >> 7;
        }

        if (v137 != 1)
        {
          LOBYTE(v207) = v208;
        }

        if (v137 == 2)
        {
          v209 = v176 >> 7;
        }

        else
        {
          v209 = v151 >> 6;
        }

        v210 = ((v145 * v175) + 0.5) & 0x1F | (v209 << 7) | (32 * (v206 & 1)) & 0xBF | ((v207 & 1) << 6);
        do
        {
          v211 = v141[(2 * v210) | 1];
          v212 = v210 & 0xF0;
          v210 -= v212 != (v211 & 0xF0);
        }

        while (v212 != (v211 & 0xF0));
        *a2 = v153;
        a2[1] = v167;
        a2[2] = v170;
        v10 = 7;
        a2[3] = v211;
        return v10;
      }

LABEL_166:
      if (++v137 == 5)
      {
        v177 = 0;
        v228 = v23;
        do
        {
          v178 = *&v228.i32[v177];
          v179 = fmaxf(v178, 0.0);
          if (v178 <= 65020.0)
          {
            v180 = v179;
          }

          else
          {
            v180 = *"";
          }

          *&v228.i32[v177] = v180;
          v181 = (v180 * 0.0019531) + 0.5;
          v227.i32[v177] = v181;
          *&v225.i32[v177++] = v181 * 512.0;
        }

        while (v177 != 3);
        v182 = 0;
        v183 = vsub_f32(*(v225.i64 + 4), *(v228.i64 + 4));
        v184 = *&v228.i32[3] + ((((*v225.i32 - *v228.i32) + v183.f32[0]) + v183.f32[1]) * 0.33333);
        v185 = (fmaxf(v184, 0.0) * 0.0019531) + 0.5;
        v186 = 127.49;
        if (v184 <= 65020.0)
        {
          v186 = v185;
        }

        v187.i64[0] = v227.i64[0];
        v187.i32[2] = v227.i32[2];
        v187.i32[3] = v186;
        v188.i64[0] = 0x80000000C0;
        v188.i32[2] = 128;
        v188.i32[3] = (2 * v227.i32[0]) & 0x80;
        v226 = vorrq_s8(vandq_s8(v187, xmmword_22FA10550), v188);
        do
        {
          v189 = v226.i32[v182];
          do
          {
            v190 = v141[(2 * v189) | 1];
            v191 = v189 & 0xF0;
            v189 -= v191 != (v190 & 0xF0);
          }

          while (v191 != (v190 & 0xF0));
          a2[v182++] = v190;
        }

        while (v182 != 4);
        return 7;
      }
    }
  }

  if (a1 <= 11)
  {
    if (a1 != 8)
    {
      if (a1 == 10)
      {
        v100 = vzip2_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v15, v15, 8uLL));
        v101 = vcvt_s32_f32(vadd_f32(v100, 0x3F0000003F000000));
        v102 = vcge_f32(vsub_f32(v100, vcvt_f32_s32(v101)), vdup_n_s32(0xBDCCCCCD));
        v103 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
        a2[4] = v103[2 * v101.i32[1] - v102.i32[1]];
        a2[5] = v103[2 * v101.i32[0] - v102.i32[0]];
        sub_22F9FBE38(a2, a3, a6);
        return 10;
      }

      else if (a1 == 11)
      {
        sub_22F9FBFA8(a2, a3, v12, v13, *a6.i64, *a7.i64, *v16.i64, *v15.i64, *v12.i64);
        return 11;
      }

      return v10;
    }

    v217 = v16;
    v220 = v15;
    if (a3 > 0x12)
    {
      v10 = 0;
      v215 = 1.0e30;
      if (a3 != 19)
      {
LABEL_189:
        sub_22F9FBD38(&v226, &v225, a3, v15, v16);
        rgba_unpack(&v224, &v223, v226, v225);
        v200 = vsubq_f32(v220, vcvtq_f32_s32(v224));
        v201 = vsubq_f32(v217, vcvtq_f32_s32(v223));
        v202 = vaddq_f32(vmulq_f32(v200, v200), vmulq_f32(v201, v201));
        *v202.i8 = vadd_f32(*&vextq_s8(v202, v202, 8uLL), *v202.i8);
        if (vpadd_f32(*v202.i8, *v202.i8).f32[0] < v215)
        {
          v227 = v225;
          v228 = v226;
          v10 = 8;
        }

        v204 = v227;
        v203 = v228;
        *a2 = v228.i8[0];
        a2[1] = v204.i8[0];
        a2[2] = v203.i8[4];
        a2[3] = v204.i8[4];
        a2[4] = v203.i8[8];
        a2[5] = v204.i8[8];
        return v10;
      }
    }

    else
    {
      if (sub_22F9FB610(&v228, &v227, a3, v15, v16))
      {
        rgba_delta_unpack(&v226, &v225, v228, v227);
        v71 = vsubq_f32(v220, vcvtq_f32_s32(v226));
        v72 = vsubq_f32(v217, vcvtq_f32_s32(v225));
        v73 = vaddq_f32(vmulq_f32(v71, v71), vmulq_f32(v72, v72));
        *v73.i8 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.i8);
        LODWORD(v215) = vpadd_f32(*v73.i8, *v73.i8).u32[0];
        v10 = 9;
      }

      else
      {
        v10 = 0;
        v215 = 1.0e30;
      }

      if (sub_22F9FB928(&v226, &v225, a3, v220, v217))
      {
        rgba_delta_unpack(&v224, &v223, v226, v225);
        v16 = v217;
        v15 = v220;
        v192 = vsubq_f32(v220, vcvtq_f32_s32(v224));
        v193 = vsubq_f32(v217, vcvtq_f32_s32(v223));
        v194 = vaddq_f32(vmulq_f32(v192, v192), vmulq_f32(v193, v193));
        *v194.i8 = vadd_f32(*&vextq_s8(v194, v194, 8uLL), *v194.i8);
        v195 = vpadd_f32(*v194.i8, *v194.i8).f32[0];
        if (v195 < v215)
        {
          v227 = v225;
          v228 = v226;
          v10 = 9;
          v215 = v195;
        }
      }

      else
      {
        v16 = v217;
        v15 = v220;
      }
    }

    if (sub_22F9FBBA0(&v226, &v225, a3, v15, v16))
    {
      rgba_unpack(&v224, &v223, v226, v225);
      v16 = v217;
      v15 = v220;
      v196 = vsubq_f32(v220, vcvtq_f32_s32(v224));
      v197 = vsubq_f32(v217, vcvtq_f32_s32(v223));
      v198 = vaddq_f32(vmulq_f32(v196, v196), vmulq_f32(v197, v197));
      *v198.i8 = vadd_f32(*&vextq_s8(v198, v198, 8uLL), *v198.i8);
      v199 = vpadd_f32(*v198.i8, *v198.i8).f32[0];
      if (v199 < v215)
      {
        v227 = v225;
        v228 = v226;
        v10 = 8;
        v215 = v199;
      }
    }

    else
    {
      v16 = v217;
      v15 = v220;
    }

    goto LABEL_189;
  }

  switch(a1)
  {
    case 12:
      v213 = vextq_s8(v15, v15, 8uLL).u64[0];
      v214 = vextq_s8(v16, v16, 8uLL).u64[0];
      v218 = v16;
      v221 = v15;
      if (a3 > 0x12)
      {
        v10 = 0;
        v216 = 1.0e30;
        if (a3 != 19)
        {
LABEL_114:
          sub_22F9FBD38(&v226, &v225, a3, v15, v16);
          v129 = vzip2_s32(v214, v213);
          v130 = vcvt_s32_f32(vadd_f32(v129, 0x3F0000003F000000));
          v131 = vcge_f32(vsub_f32(v129, vcvt_f32_s32(v130)), vdup_n_s32(0xBDCCCCCD));
          v132 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
          v226.i32[3] = v132[2 * v130.i32[1] - v131.i32[1]];
          v225.i32[3] = v132[2 * v130.i32[0] - v131.i32[0]];
          rgba_unpack(&v224, &v223, v226, v225);
          v133 = vsubq_f32(v221, vcvtq_f32_s32(v224));
          v134 = vsubq_f32(v218, vcvtq_f32_s32(v223));
          v135 = vaddq_f32(vmulq_f32(v133, v133), vmulq_f32(v134, v134));
          *v135.i8 = vadd_f32(*&vextq_s8(v135, v135, 8uLL), *v135.i8);
          if (vpadd_f32(*v135.i8, *v135.i8).f32[0] < v216)
          {
            v227 = v225;
            v228 = v226;
            v10 = 12;
          }

          v230.val[1] = v227;
          v230.val[0] = v228;
          *a2 = vqtbl2q_s8(v230, xmmword_22FA10560).u64[0];
          return v10;
        }
      }

      else
      {
        v216 = 1.0e30;
        if (sub_22F9FB610(&v228, &v227, a3, v15, v16) && sub_22F9FC5F8(&v228, &v227, a3, v218, v221))
        {
          rgba_delta_unpack(&v226, &v225, v228, v227);
          v95 = vsubq_f32(v221, vcvtq_f32_s32(v226));
          v96 = vsubq_f32(v218, vcvtq_f32_s32(v225));
          v97 = vaddq_f32(vmulq_f32(v95, v95), vmulq_f32(v96, v96));
          *v97.i8 = vadd_f32(*&vextq_s8(v97, v97, 8uLL), *v97.i8);
          LODWORD(v216) = vpadd_f32(*v97.i8, *v97.i8).u32[0];
          v10 = 13;
          v98 = v218;
          v99 = v221;
        }

        else
        {
          v10 = 0;
          v98 = v218;
          v99 = v221;
        }

        if (sub_22F9FB928(&v226, &v225, a3, v99, v98) && sub_22F9FC5F8(&v226, &v225, a3, v221, v218))
        {
          rgba_delta_unpack(&v224, &v223, v226, v225);
          v16 = v218;
          v15 = v221;
          v117 = vsubq_f32(v221, vcvtq_f32_s32(v224));
          v118 = vsubq_f32(v218, vcvtq_f32_s32(v223));
          v119 = vaddq_f32(vmulq_f32(v117, v117), vmulq_f32(v118, v118));
          *v119.i8 = vadd_f32(*&vextq_s8(v119, v119, 8uLL), *v119.i8);
          v120 = vpadd_f32(*v119.i8, *v119.i8).f32[0];
          if (v120 < v216)
          {
            v227 = v225;
            v228 = v226;
            v10 = 13;
            v216 = v120;
          }
        }

        else
        {
          v16 = v218;
          v15 = v221;
        }
      }

      if (sub_22F9FBBA0(&v226, &v225, a3, v15, v16))
      {
        v121 = vzip2_s32(v213, v214);
        v122 = vcvt_s32_f32(vadd_f32(v121, 0x3F0000003F000000));
        v123 = vcge_f32(vsub_f32(v121, vcvt_f32_s32(v122)), vdup_n_s32(0xBDCCCCCD));
        v124 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
        v226.i32[3] = v124[2 * v122.i32[1] - v123.i32[1]];
        v225.i32[3] = v124[2 * v122.i32[0] - v123.i32[0]];
        rgba_unpack(&v224, &v223, v226, v225);
        v16 = v218;
        v15 = v221;
        v125 = vsubq_f32(v221, vcvtq_f32_s32(v224));
        v126 = vsubq_f32(v218, vcvtq_f32_s32(v223));
        v127 = vaddq_f32(vmulq_f32(v125, v125), vmulq_f32(v126, v126));
        *v127.i8 = vadd_f32(*&vextq_s8(v127, v127, 8uLL), *v127.i8);
        v128 = vpadd_f32(*v127.i8, *v127.i8).f32[0];
        if (v128 < v216)
        {
          v227 = v225;
          v228 = v226;
          v10 = 12;
          v216 = v128;
        }
      }

      else
      {
        v16 = v218;
        v15 = v221;
      }

      goto LABEL_114;
    case 14:
      v104 = vmul_f32(vzip2_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vdup_n_s32(0x3B7F00FFu));
      v105 = vdup_n_s32(0x437F0000u);
      v106 = vbsl_s8(vcgt_f32(v104, v105), v105, vmaxnm_f32(v104, 0));
      v107 = vcvt_s32_f32(vadd_f32(v106, 0x3F0000003F000000));
      v108 = vdup_n_s32(0xBDCCCCCD);
      v109 = vcge_f32(vsub_f32(v106, vcvt_f32_s32(v107)), v108);
      v110 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
      a2[6] = v110[2 * v107.i32[1] - v109.i32[1]];
      a2[7] = v110[2 * v107.i32[0] - v109.i32[0]];
      sub_22F9FBFA8(a2, a3, v12, v13, *&v108, *&v107, *&v105, *v15.i64, *v12.i64);
      return 14;
    case 15:
      v219 = v12.f32[3];
      v222 = v13.f32[3];
      sub_22F9FBFA8(a2, a3, v12, v13, *a6.i64, *a7.i64, *v16.i64, *v15.i64, *v12.i64);
      v25 = fmaxf(v219, 0.0) + 0.5;
      v26 = 65280.0;
      if (v219 > 65280.0)
      {
        v25 = 65280.0;
      }

      v27 = v25;
      v28 = fmaxf(v222, 0.0) + 0.5;
      if (v222 <= 65280.0)
      {
        v26 = v28;
      }

      v29 = v26;
      v30 = -3;
      v31 = 256;
      v32 = 2;
      v33 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
      v34 = 0x80;
      while (1)
      {
        v35 = ((0x80u >> v32) + v27) >> (v30 + 9);
        v36 = v33[(2 * (v31 & 0x80 | v35 & 0x7F)) | 1];
        if (((v31 ^ v36) & 0x80) == 0)
        {
          v37 = (((0x80u >> v32) + v29) >> (v30 + 9)) - (v35 & 0xFFFFFF80 | v36 & 0x7F);
          v38 = 0x20u >> v32;
          if (v37 + v38 < 0 == __OFADD__(v37, v38) && v37 < v38)
          {
            v40 = (v35 >> 7 << (v30 + 7)) | v34 & 0x80 | v37 & (2 * v38 - 1);
            v41 = v33[2 * v40 + 1];
            if (((v40 ^ v41) & dword_22FA1073C[v32]) == 0)
            {
              break;
            }
          }
        }

        --v32;
        v34 -= 64;
        v31 -= 128;
        if (__CFADD__(v30++, 1))
        {
          a2[6] = v33[((v27 + 256) >> 8) | 0x101];
          LOBYTE(v41) = v33[((v29 + 256) >> 8) | 0x101];
LABEL_193:
          a2[7] = v41;
          return 15;
        }
      }

      a2[6] = v36;
      goto LABEL_193;
  }

  return v10;
}

uint64_t sub_22F9FB610(int8x16_t *a1, int8x16_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(a5, vsubq_f32(a5, vzip2q_s32(vtrn1q_s32(a5, a5), a5)));
  v6 = vaddq_f32(a4, vsubq_f32(a4, vzip2q_s32(vtrn1q_s32(a4, a4), a4)));
  v7 = vmovn_s32(vorrq_s8(vcltzq_f32(vminnmq_f32(v6, v5)), vcgtq_f32(vmaxnmq_f32(v6, v5), vdupq_n_s32(0x437F0000u))));
  {
    v50 = a1;
    v54 = a2;
    v46 = a3;
    v42 = v7;
    v35 = v5;
    v38 = v6;
    sub_22F9F25EC();
    v5 = v35;
    v6 = v38;
    v7 = v42;
    a3 = v46;
    a1 = v50;
    a2 = v54;
  }

  if (vaddvq_s32(vshlq_u32(vmovl_u16(vand_s8(v7, 0x1000100010001)), mask(vmask4)::shift)))
  {
    return 0;
  }

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vcvtq_s32_f32(vaddq_f32(v5, v8));
  v10 = vaddq_s32(v9, v9);
  v11 = vandq_s8(vaddq_s32(v10, v10), vdupq_n_s32(0x1FEu));
  v12 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v13.i32[0] = v12[v11.i32[0] | 1];
  v13.i32[1] = v12[v11.i32[1] | 1];
  v13.i64[1] = v12[v11.i32[2] | 1];
  v11.i64[0] = 0x10000000100;
  v11.i64[1] = 0x10000000100;
  v14 = vandq_s8(v10, v11);
  v15 = vcvtq_s32_f32(vaddq_f32(v6, v8));
  v16 = vsubq_s32(vaddq_s32(v15, v15), vorrq_s8(v13, v14));
  v16.i32[3] = 0;
  v15.i64[0] = 0x3F0000003FLL;
  v15.i64[1] = 0x3F0000003FLL;
  v17 = vaddq_s32(v16, v15);
  {
    v51 = a1;
    v55 = a2;
    v43 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v47 = v13;
    v36 = v16;
    v39 = v14;
    v34 = v17;
    sub_22F9F25EC();
    v17 = v34;
    v16 = v36;
    v14 = v39;
    v13 = v47;
    v12 = v43;
    a1 = v51;
    a2 = v55;
  }

  v18.i64[0] = 0x7F0000007FLL;
  v18.i64[1] = 0x7F0000007FLL;
  v19 = vcgtq_u32(v18, v17);
  v20.i64[0] = 0x100000001;
  v20.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v19, v20), mask(vmask4)::shift)))
  {
    return 0;
  }

  v21.i64[0] = 0x7F0000007FLL;
  v21.i64[1] = 0x7F0000007FLL;
  v22 = vorrq_s8(vshrq_n_u32(v14, 1uLL), vandq_s8(v16, v21));
  v23 = vaddq_s32(v22, v22);
  v24.i32[0] = v12[v23.i32[0] | 1];
  v24.i32[1] = v12[v23.i32[1] | 1];
  v24.i64[1] = v12[v23.i32[2] | 1];
  v23.i64[0] = 0xC0000000C0;
  v23.i64[1] = 0xC0000000C0;
  v25 = vandq_s8(veorq_s8(v24, v22), v23);
  v25.i32[3] = 0;
  {
    v52 = a1;
    v56 = a2;
    v48 = v13;
    v40 = v25;
    v44 = v24;
    sub_22F9F25EC();
    v25 = v40;
    v24 = v44;
    v13 = v48;
    a1 = v52;
    a2 = v56;
  }

  v26.i64[0] = 0x100000001;
  v26.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vbicq_s8(v26, vceqzq_s32(v25)), mask(vmask4)::shift)))
  {
    return 0;
  }

  v27 = vshrq_n_u32(v24, 1uLL);
  v28 = vorrq_s8((*&vtstq_s32((*&v27 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v27 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v27 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
  if (v28.i32[0] + v28.i32[1] + v28.i32[2] >= 0)
  {
    return 0;
  }

  v29 = vaddq_s32(vsraq_n_u32((*&v24 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v13, 1uLL), v28);
  v30 = vshrq_n_u32(v29, 0x1FuLL);
  {
    v53 = a1;
    v57 = a2;
    v49 = v13;
    v41 = v29;
    v45 = v24;
    v37 = v30;
    sub_22F9F25EC();
    v30 = v37;
    v29 = v41;
    v24 = v45;
    v13 = v49;
    a1 = v53;
    a2 = v57;
  }

  v31.i64[0] = 0xFF000000FFLL;
  v31.i64[1] = 0xFF000000FFLL;
  v32 = vcgtq_s32(v29, v31);
  if (vaddvq_s32(vshlq_u32(vsubq_s32(vbicq_s8(v30, v32), v32), mask(vmask4)::shift)))
  {
    return 0;
  }

  *a1 = v13;
  *a2 = v24;
  return 1;
}

uint64_t sub_22F9FB928(int8x16_t *a1, int8x16_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vcvtq_s32_f32(vaddq_f32(a4, v5));
  v7 = vaddq_s32(v6, v6);
  v8 = vandq_s8(vaddq_s32(v7, v7), vdupq_n_s32(0x1FEu));
  v9 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v10.i32[0] = v9[v8.i32[0] | 1];
  v10.i32[1] = v9[v8.i32[1] | 1];
  v10.i64[1] = v9[v8.i32[2] | 1];
  v8.i64[0] = 0x10000000100;
  v8.i64[1] = 0x10000000100;
  v11 = vandq_s8(v7, v8);
  v12 = vcvtq_s32_f32(vaddq_f32(a5, v5));
  v13 = vsubq_s32(vaddq_s32(v12, v12), vorrq_s8(v10, v11));
  v13.i32[3] = 0;
  v12.i64[0] = 0x3F0000003FLL;
  v12.i64[1] = 0x3F0000003FLL;
  v14 = vaddq_s32(v13, v12);
  {
    v43 = a1;
    v46 = a2;
    v37 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v40 = v10;
    v32 = v13;
    v34 = v11;
    v31 = v14;
    sub_22F9F25EC();
    v14 = v31;
    v13 = v32;
    v11 = v34;
    v10 = v40;
    v9 = v37;
    a1 = v43;
    a2 = v46;
  }

  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v16 = vcgtq_u32(v15, v14);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v16, v17), mask(vmask4)::shift)))
  {
    return 0;
  }

  v18.i64[0] = 0x7F0000007FLL;
  v18.i64[1] = 0x7F0000007FLL;
  v19 = vorrq_s8(vshrq_n_u32(v11, 1uLL), vandq_s8(v13, v18));
  v20 = vaddq_s32(v19, v19);
  v21.i32[0] = v9[v20.i32[0] | 1];
  v21.i32[1] = v9[v20.i32[1] | 1];
  v21.i64[1] = v9[v20.i32[2] | 1];
  v20.i64[0] = 0xC0000000C0;
  v20.i64[1] = 0xC0000000C0;
  v22 = vandq_s8(veorq_s8(v21, v19), v20);
  v22.i32[3] = 0;
  {
    v44 = a1;
    v47 = a2;
    v41 = v10;
    v35 = v22;
    v38 = v21;
    sub_22F9F25EC();
    v22 = v35;
    v21 = v38;
    v10 = v41;
    a1 = v44;
    a2 = v47;
  }

  v23.i64[0] = 0x100000001;
  v23.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vbicq_s8(v23, vceqzq_s32(v22)), mask(vmask4)::shift)))
  {
    return 0;
  }

  v25 = vshrq_n_u32(v21, 1uLL);
  v26 = vorrq_s8((*&vtstq_s32((*&v25 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v25 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v25 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
  if (v26.i32[0] + v26.i32[1] + v26.i32[2] < 0)
  {
    return 0;
  }

  v27 = vaddq_s32(vsraq_n_u32((*&v21 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v10, 1uLL), v26);
  v28 = vshrq_n_u32(v27, 0x1FuLL);
  {
    v45 = a1;
    v48 = a2;
    v42 = v10;
    v36 = v27;
    v39 = v21;
    v33 = v28;
    sub_22F9F25EC();
    v28 = v33;
    v27 = v36;
    v21 = v39;
    v10 = v42;
    a1 = v45;
    a2 = v48;
  }

  v29.i64[0] = 0xFF000000FFLL;
  v29.i64[1] = 0xFF000000FFLL;
  v30 = vcgtq_s32(v27, v29);
  if (vaddvq_s32(vshlq_u32(vsubq_s32(vbicq_s8(v28, v30), v30), mask(vmask4)::shift)))
  {
    return 0;
  }

  *a1 = v10;
  *a2 = v21;
  return 1;
}

uint64_t sub_22F9FBBA0(_OWORD *a1, _OWORD *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(a4, vsubq_f32(a4, vzip2q_s32(vtrn1q_s32(a4, a4), a4)));
  v6 = vaddq_f32(a5, vsubq_f32(a5, vzip2q_s32(vtrn1q_s32(a5, a5), a5)));
  v7 = vmovn_s32(vorrq_s8(vcltzq_f32(vminnmq_f32(v5, v6)), vcgtq_f32(vmaxnmq_f32(v5, v6), vdupq_n_s32(0x437F0000u))));
  {
    v27 = a3;
    v28 = a2;
    v26 = a1;
    v25 = v7;
    v23 = v5;
    v24 = v6;
    sub_22F9F25EC();
    v5 = v23;
    v6 = v24;
    v7 = v25;
    a1 = v26;
    a3 = v27;
    a2 = v28;
  }

  if (vaddvq_s32(vshlq_u32(vmovl_u16(vand_s8(v7, 0x1000100010001)), mask(vmask4)::shift)))
  {
    return 0;
  }

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vcvtq_s32_f32(vaddq_f32(v5, v8));
  v10 = vaddq_s32(v9, v9);
  v11 = vsubq_f32(v5, vcvtq_f32_s32(v9));
  v12 = vdupq_n_s32(0xBDCCCCCD);
  v13 = vsubq_s32(v10, vcgeq_f32(v11, v12));
  v14 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v15 = v14[v13.i32[0]];
  v16 = v14[v13.i32[1]];
  v17 = v14[v13.i32[2]];
  v18 = vcvtq_s32_f32(vaddq_f32(v6, v8));
  v19 = vsubq_s32(vaddq_s32(v18, v18), vcgeq_f32(vsubq_f32(v6, vcvtq_f32_s32(v18)), v12));
  if (v14[v19.i32[1]] + v14[v19.i32[0]] + v14[v19.i32[2]] <= v16 + v15 + v17)
  {
    return 0;
  }

  LODWORD(v20) = v14[v19.i32[0]];
  DWORD1(v20) = v14[v19.i32[1]];
  *(&v20 + 1) = v14[v19.i32[2]];
  *&v21 = __PAIR64__(v16, v15);
  *(&v21 + 1) = v17;
  *a1 = v20;
  *a2 = v21;
  return 1;
}

float sub_22F9FBD38(_OWORD *a1, _OWORD *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vdupq_n_s32(0xBDCCCCCD);
  v7 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v8 = vdupq_n_s32(0xBE4CCCCD);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vdupq_n_s32(0x3E4CCCCDu);
  do
  {
    v11 = vmaxq_s32(vcvtq_s32_f32(vaddq_f32(a4, v5)), 0);
    v12 = vsubq_s32(vaddq_s32(v11, v11), vcgeq_f32(vsubq_f32(a4, vcvtq_f32_s32(v11)), v6));
    v13 = v7[v12.i32[0]];
    v14 = v7[v12.i32[1]];
    v15 = v7[v12.i32[2]];
    a4 = vaddq_f32(a4, v8);
    v16 = vminq_s32(vcvtq_s32_f32(vaddq_f32(a5, v5)), v9);
    v17 = vsubq_s32(vaddq_s32(v16, v16), vcgeq_f32(vsubq_f32(a5, vcvtq_f32_s32(v16)), v6));
    a5 = vaddq_f32(a5, v10);
  }

  while (v14 + v13 + v15 > v7[v17.i32[1]] + v7[v17.i32[0]] + v7[v17.i32[2]]);
  LODWORD(v18) = v7[v17.i32[0]];
  DWORD1(v18) = v7[v17.i32[1]];
  *(&v18 + 1) = v7[v17.i32[2]];
  *&v19 = __PAIR64__(v14, v13);
  *(&v19 + 1) = v15;
  *a1 = v19;
  *a2 = v18;
  return *&v19;
}

_BYTE *sub_22F9FBE38(_BYTE *result, int a2, int8x16_t a3)
{
  v3 = fmaxf(0.0038911 * *a3.i32, 0.0);
  v4 = vdup_n_s32(0x437F0000u);
  if ((0.0038911 * *a3.i32) > 255.0)
  {
    v3 = 255.0;
  }

  v5 = &color_unquant_to_uquant_tables + 512 * a2 - 2048;
  v6 = v5[((v3 - (v3 + 0.5)) >= -0.1) | (2 * (v3 + 0.5))];
  v7 = vmul_f32(vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL), vdup_n_s32(0x3B7F00FFu));
  v8 = vbsl_s8(vcgt_f32(v7, v4), v4, vmaxnm_f32(v7, 0));
  v9 = vcvt_s32_f32(vadd_f32(v8, 0x3F0000003F000000));
  v10 = vcge_f32(vsub_f32(v8, vcvt_f32_s32(v9)), vdup_n_s32(0xBDCCCCCD));
  v11 = v5[2 * v9.i32[0] - v10.i32[0]];
  v12 = v5[2 * v9.i32[1] - v10.i32[1]];
  v13 = vmuls_lane_f32(((*&a3.i32[2] + vaddv_f32(*a3.i8)) * 0.0038911) + 1.0e-10, a3, 3) / ((v11 + v6 + v12) + 1.0e-10);
  v14 = (fmaxf(v13, 0.0) * 256.0) + 0.5;
  v15 = v13 == 1.0;
  v16 = v13 < 1.0;
  v17 = 256.5;
  if (v16 || v15)
  {
    v17 = v14;
  }

  v18 = v17 & ~(v17 >> 31);
  if (v18 >= 255)
  {
    v18 = 255;
  }

  *result = v6;
  result[1] = v11;
  result[2] = v12;
  result[3] = v5[(2 * v18) | 1];
  return result;
}

_BYTE *sub_22F9FBFA8(_BYTE *result, int a2, float32x4_t a3, float32x4_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v86 = *MEMORY[0x277D85DE8];
  v10 = vdupq_n_s32(0x477FFF00u);
  v11 = vminnmq_f32(vmaxnmq_f32(a3, 0), v10);
  v12 = vminnmq_f32(vmaxnmq_f32(a4, 0), v10);
  if (*v12.i32 <= *&v12.i32[1] || *v12.i32 <= *&v12.i32[2])
  {
    if (*&v12.i32[1] <= *&v12.i32[2])
    {
      v17 = vrev64q_s32(v11);
      v16 = vextq_s8(v17, v17, 0xCuLL);
      v18 = vrev64q_s32(v12);
      v15 = vextq_s8(v18, v18, 0xCuLL);
      v14 = 2;
    }

    else
    {
      v16.i64[0] = vrev64q_s32(v11).u64[0];
      v16.i64[1] = v11.i64[1];
      v15.i64[0] = vrev64q_s32(v12).u64[0];
      v15.i64[1] = v12.i64[1];
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v15 = v12;
    v16 = v11;
  }

  *&a8 = fmaxf(*v15.i32, 0.0);
  if (*v15.i32 > 65535.0)
  {
    *&a8 = 65535.0;
  }

  *&a9 = *&a8 - *v16.i32;
  v19 = vdup_lane_s32(*&a8, 0);
  v20 = vextq_s8(v15, v15, 4uLL).u64[0];
  v21 = vsub_f32(v19, v20);
  v22 = vsub_f32(vsub_f32(v19, v21), vdup_lane_s32(*&a9, 0));
  v23 = vextq_s8(v16, v16, 4uLL).u64[0];
  v24 = vabd_f32(v22, v23);
  v25 = 7;
  v26 = &color_unquant_to_uquant_tables + 512 * a2 - 2048;
  v27 = vdup_n_s32(0x477FFF00u);
  v28 = vdup_n_s32(0xC77FFF00);
  do
  {
    v29 = v25;
    v30 = (&unk_22FA1067C + 16 * v25);
    if (v21.f32[0] <= *v30 && v21.f32[1] <= *v30 && *&a9 <= v30[1])
    {
      v33 = v30 + 2;
      v34 = vld1_dup_f32(v33);
      v35 = vcgt_f32(v24, v34);
      if ((v35.i8[0] & 1) == 0 && (v35.i8[4] & 1) == 0)
      {
        v36 = flt_22FA106FC[v25];
        v37 = flt_22FA1071C[v25];
        v38 = (&unk_22FA105FC + 16 * v25);
        v39 = ((*&a8 * v36) + 0.5);
        v40 = v26[(2 * v39) | 1];
        v9.f32[0] = v37 * (v39 & 0xFFFFFF00 | v40);
        v41 = fmaxf(v9.f32[0] - *v16.i32, 0.0);
        v42 = (v9.f32[0] - *v16.i32) <= 65535.0 ? v41 : 65535.0;
        v43 = ((v36 * v42) + 0.5);
        if (1 << v38[2] > v43)
        {
          v44 = 1 << v38[1];
          v45 = 1 << (v38[3] - 1);
          v46 = ((v36 * v42) + 0.5) & 0x3F | (v29 << 7) | (v39 >> 2) & 0x40;
          do
          {
            v47 = v26[(2 * v46) | 1];
            v48 = v46 & 0xC0;
            v46 -= v48 != (v47 & 0xC0);
          }

          while (v48 != (v47 & 0xC0));
          v9 = vdup_lane_s32(v9, 0);
          v49 = vsub_f32(v9, v20);
          v50 = vcgt_f32(v49, v27);
          v51 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(v50, v27, vmaxnm_f32(v49, 0)), v36), 0x3F0000003F000000));
          if (v44 > v51.i32[0] && v44 > v51.i32[1])
          {
            if (v29 > 7)
            {
              v53 = 0;
            }

            else
            {
              v53 = ((1 << v29) & 0x5B) != 0 ? (v51.i32[0] >> 6) & 1 : (v39 >> 9) & 1;
            }

            if (v29 > 7)
            {
              v54 = 0;
            }

            else if (((1 << v29) & 0x5B) != 0)
            {
              v54 = (v51.i32[1] >> 6) & 1;
            }

            else
            {
              v54 = ((1 << v29) & 0xA0) != 0 ? (v39 >> 10) & 1 : (v43 >> 6) & 1;
            }

            v55 = v54 << 6;
            v56 = v51.i8[0] & 0x3F | (v53 << 6) & 0xFFFFFF7F | (((v29 >> 1) & 1) << 7);
            do
            {
              v57 = v26[(2 * v56) | 1];
              v58 = v56 & 0xC0;
              v56 -= v58 != (v57 & 0xC0);
            }

            while (v58 != (v57 & 0xC0));
            v59 = v55 | v51.i8[4] & 0x3F | (32 * v29) & 0x80;
            do
            {
              v60 = v26[(2 * v59) | 1];
              v61 = v59 & 0xC0;
              v59 -= v61 != (v60 & 0xC0);
            }

            while (v61 != (v60 & 0xC0));
            v62.i32[0] = v57 & 0x3F;
            v62.i32[1] = v60 & 0xFFFFFF3F;
            *v50.i32 = v37 * (v43 & 0xFFFFFFC0 | v47 & 0x3F);
            v63 = vsub_f32(vsub_f32(vsub_f32(v9, vmul_n_f32(vcvt_f32_s32(vorr_s8((*&v51 & 0xFFFFFFC0FFFFFFC0), v62)), v37)), vdup_lane_s32(v50, 0)), v23);
            v64 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(vcgt_f32(v63, v27), v27, vmaxnm_f32(v63, v28)), v36), 0x3F0000003F000000));
            v9 = vabs_s32(v64);
            v65 = vcgt_s32(vdup_n_s32(v45), v9);
            if (v65.i32[0] & v65.i32[1])
            {
              v74 = 0;
              if (v29 > 3)
              {
                if ((v29 - 6) < 2)
                {
                  v74 = (v39 >> 11) & 1;
                  goto LABEL_75;
                }

                if (v29 == 4)
                {
                  goto LABEL_73;
                }

                if (v29 == 5)
                {
                  v74 = (v43 >> 7) & 1;
                  goto LABEL_77;
                }
              }

              else
              {
                if (v29 > 1)
                {
                  if (v29 != 2)
                  {
                    v74 = (v39 >> 9) & 1;
                    goto LABEL_77;
                  }
                }

                else if (v29)
                {
                  if (v29 != 1)
                  {
                    goto LABEL_75;
                  }

LABEL_73:
                  v74 = (v51.i32[0] >> 7) & 1;
                  goto LABEL_75;
                }

                v74 = (v64.i32[0] >> 6) & 1;
              }

LABEL_75:
              if (v29 > 7)
              {
                v75 = 0;
                goto LABEL_80;
              }

              if (((1 << v29) & 0xE8) == 0)
              {
                v75 = (v64.i32[1] >> 6) & 1;
                if (((1 << v29) & 5) == 0)
                {
                  v75 = (v51.i32[1] >> 7) & 1;
                }

                goto LABEL_80;
              }

LABEL_77:
              v75 = (v43 >> 6) & 1;
LABEL_80:
              if ((v29 | 2) == 6)
              {
                v76 = vshl_u32(vdup_n_s32(v39), 0xFFFFFFF6FFFFFFF7);
              }

              else
              {
                v76 = vshr_n_u32(v64, 5uLL);
              }

              v77 = v64.i8[0] & 0x1F | (v74 << 6) | (32 * (v76.i8[0] & 1)) | (v14 << 7);
              v78 = (v14 << 6) & 0x80;
              do
              {
                v79 = v26[(2 * v77) | 1];
                v80 = v77 & 0xF0;
                v77 -= v80 != (v79 & 0xF0);
              }

              while (v80 != (v79 & 0xF0));
              v81 = (32 * (v76.i8[4] & 1)) | (v75 << 6) | v64.i8[4] & 0x1F | v78;
              do
              {
                v82 = v26[(2 * v81) | 1];
                v83 = v81 & 0xF0;
                v81 -= v83 != (v82 & 0xF0);
              }

              while (v83 != (v82 & 0xF0));
              *result = v40;
              result[1] = v47;
              result[2] = v57;
              result[3] = v60;
              result[4] = v79;
              result[5] = v82;
              return result;
            }
          }
        }
      }
    }

    v25 = v29 - 1;
  }

  while (v29);
  v66 = 0;
  v84 = vzip1q_s32(v11, v12);
  v85 = vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL));
  do
  {
    v67 = *&v84.i32[v66];
    v68 = fmaxf(v67, 0.0);
    if (v67 <= 65020.0)
    {
      v69 = v68;
    }

    else
    {
      v69 = *"";
    }

    *&v84.i32[v66++] = v69;
  }

  while (v66 != 6);
  for (i = 0; i != 4; ++i)
  {
    result[i] = v26[2 * ((*&v84.i32[i] * 0.0039062) + 0.5) + 1];
  }

  do
  {
    v71 = ((*&v84.i32[i] * 0.0019531) + 0.5) ^ 0xFFFFFF80;
    do
    {
      v72 = v26[(2 * v71) | 1];
      v73 = v71 & 0xC0;
      v71 -= v73 != (v72 & 0xC0);
    }

    while (v73 != (v72 & 0xC0));
    result[i++] = v72;
  }

  while (i != 6);
  return result;
}

uint64_t sub_22F9FC5F8(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5)
{
  v5 = (a4.n128_f32[3] + 0.5);
  v6 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v7 = v6[(4 * (v5 & 0x7F)) | 1];
  v8 = v7 | (((v5 >> 7) & 1) << 8);
  v9 = 2 * (a5.n128_f32[3] + 0.5) - v8;
  if ((v9 - 64) < 0xFFFFFF80)
  {
    return 0;
  }

  v10 = v9 & 0x7F | (((2 * v5) & 0x100) >> 1);
  v11 = v6[(2 * v10) | 1];
  if ((v10 ^ v11) > 0x3F || (v11 & 0x7F) + v8 + ((v11 << 25 >> 31) & 0xFFFFFF80) > 0x1FF)
  {
    return 0;
  }

  *(a1 + 12) = v7;
  *(a2 + 12) = v11;
  return 1;
}

uint64_t get_ise_sequence_bitcount(int a1, unsigned int a2)
{
  if (a2 > 0x14)
  {
    return 1024;
  }

  else
  {
    return (((byte_22FA10748[a2] >> 5) | 1) + (byte_22FA10748[a2] & 0x3Fu) * a1 - 1) / ((byte_22FA10748[a2] >> 5) | 1u);
  }
}

unint64_t encode_ise(unint64_t result, unsigned int a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  if (!a2)
  {
    sub_22F9FD090();
  }

  v5 = byte_22FA1075D[result];
  v6 = v5 & 0x3F;
  v7 = ~(-1 << v5);
  if ((v5 & 0x40) != 0)
  {
    if (a2 >= 5)
    {
      v11 = a2 / 5;
      v12 = v6 + 2;
      v13 = ~(-4 << v6);
      v14 = ~(-2 << v6);
      v15 = a3 + 2;
      result = (3 * v6 + 5);
      v10 = 5 * (a2 / 5);
      do
      {
        v17 = *(v15 - 1) >> v6;
        v18 = *(v15 - 2);
        v19 = byte_22FA10772[81 * (v15[2] >> v6) + 27 * (v15[1] >> v6) + 9 * (*v15 >> v6) + 2 * v17 + v17 + (v18 >> v6)];
        *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(v13 << (a5 & 7)) | (((((v19 & 3) << v6) | v18 & v7) & v13) << (a5 & 7));
        v20 = a5 + v12;
        *(a4 + (v20 >> 3)) = *(a4 + (v20 >> 3)) & ~(v13 << ((a5 + v12) & 7)) | (((*(v15 - 1) & v7 | (((v19 >> 2) & 3) << v6)) & v13) << ((a5 + v12) & 7));
        v16 = 2 * v6 + 4;
        *(a4 + ((v16 + a5) >> 3)) = *(a4 + ((v16 + a5) >> 3)) & ~(v14 << ((v16 + a5) & 7)) | (((*v15 & v7 | (((v19 >> 4) & 1) << v6)) & v14) << ((v16 + a5) & 7));
        *(a4 + ((result + a5) >> 3)) = *(a4 + ((result + a5) >> 3)) & ~(v13 << ((result + a5) & 7)) | (((v15[1] & v7 | (((v19 >> 5) & 3) << v6)) & v13) << ((result + a5) & 7));
        v21 = 4 * v6 + 7 + a5;
        *(a4 + (v21 >> 3)) = *(a4 + (v21 >> 3)) & ~(v14 << (v21 & 7)) | (((v15[2] & v7 | (v19 >> 7 << v6)) & v14) << (v21 & 7));
        a5 = v20 + v12 + v6 + 1 + v12 + v6 + 1;
        v15 += 5;
        --v11;
      }

      while (v11);
    }

    else
    {
      v10 = 0;
    }

    if (a2 != v10)
    {
      v22 = v10 + 3 >= a2 ? 0 : a3[v10 + 3] >> v6;
      v24 = v10 + 2 >= a2 ? 0 : a3[v10 + 2] >> v6;
      v25 = v10 + 1 >= a2 ? 0 : a3[v10 + 1] >> v6;
      v26 = a2 - v10;
      if (a2 > v10)
      {
        v27 = &a3[v10];
        v28 = byte_22FA10772[27 * v22 + 9 * v24 + 3 * v25 + (*v27 >> v6)];
        v29 = &byte_22FA10869;
        v30 = &byte_22FA10865;
        do
        {
          v31 = *v27++;
          v32 = v31 & v7;
          LOBYTE(v31) = *v29++;
          v33 = v28 >> v31;
          v34 = *v30++;
          result = a4 + (a5 >> 3);
          *result = *result & ~(~(-1 << (v34 + v6)) << (a5 & 7)) | (((((v33 & ~(-1 << v34)) << v6) | v32) & ~(-1 << (v34 + v6))) << (a5 & 7));
          a5 += v34 + v6;
          --v26;
        }

        while (v26);
      }
    }
  }

  else if ((byte_22FA1075D[result] & 0x80) != 0)
  {
    if (a2 >= 3)
    {
      v35 = a2 / 3;
      v37 = ~(-4 << v6);
      v38 = a3 + 2;
      v23 = 3 * (a2 / 3);
      result = byte_22FA1086D;
      do
      {
        v40 = *(v38 - 1) >> v6;
        v41 = *(v38 - 2);
        v42 = byte_22FA1086D[25 * (*v38 >> v6) + 4 * v40 + v40 + (v41 >> v6)];
        *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(~(-8 << v6) << (a5 & 7)) | (((((v42 & 7) << v6) | v41 & v7) & ~(-8 << v6)) << (a5 & 7));
        v36 = v6 + 3;
        *(a4 + ((v36 + a5) >> 3)) = *(a4 + ((v36 + a5) >> 3)) & ~(v37 << ((v36 + a5) & 7)) | (((*(v38 - 1) & v7 | (((v42 >> 3) & 3) << v6)) & v37) << ((v36 + a5) & 7));
        v43 = *v38;
        v38 += 3;
        v39 = 2 * v6 + 5;
        *(a4 + ((v39 + a5) >> 3)) = *(a4 + ((v39 + a5) >> 3)) & ~(v37 << ((v39 + a5) & 7)) | (((v43 & v7 | (((v42 >> 5) & 3) << v6)) & v37) << ((v39 + a5) & 7));
        a5 += 3 * v6 + 7;
        --v35;
      }

      while (v35);
    }

    else
    {
      v23 = 0;
    }

    if (a2 != v23)
    {
      if (v23 + 1 >= a2)
      {
        v44 = 0;
      }

      else
      {
        v44 = a3[v23 + 1] >> v6;
      }

      v45 = a2 - v23;
      if (a2 > v23)
      {
        v46 = &a3[v23];
        v47 = byte_22FA1086D[5 * v44 + (*v46 >> v6)];
        v48 = &byte_22FA108EC;
        v49 = &byte_22FA108EA;
        do
        {
          v50 = *v46++;
          v51 = v50 & v7;
          LOBYTE(v50) = *v48++;
          v52 = v47 >> v50;
          v53 = *v49++;
          result = a4 + (a5 >> 3);
          *result = *result & ~(~(-1 << (v53 + v6)) << (a5 & 7)) | (((((v52 & ~(-1 << v53)) << v6) | v51) & ~(-1 << (v53 + v6))) << (a5 & 7));
          a5 += v53 + v6;
          --v45;
        }

        while (v45);
      }
    }
  }

  else
  {
    v8 = a2;
    do
    {
      v9 = *a3++;
      *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(v7 << (a5 & 7)) | ((v9 & v7) << (a5 & 7));
      a5 += v6;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *decode_ise(int a1, size_t __n, uint64_t a3, void *__dst, unint64_t a5, double a6, uint8x8_t a7, uint8x8_t a8)
{
  v31[8] = *MEMORY[0x277D85DE8];
  if (!__n)
  {
    sub_22F9FD114();
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = byte_22FA1075D[a1];
  v27 = 0;
  v28[0] = 0;
  v12 = v11 & 0x3F;
  *(v28 + 6) = 0;
  do
  {
    __src[v8] = (*(a3 + (a5 >> 3)) >> (a5 & 7)) & ~(-1 << v11);
    a5 = a5 + v12;
    if ((v11 & 0x40) != 0)
    {
      v13 = byte_22FA108EE[v9];
      *(&v28[-1] + v10) |= ((*(a3 + (a5 >> 3)) >> (a5 & 7)) & ~(-1 << v13)) << byte_22FA108F3[v9];
      LODWORD(a5) = a5 + v13;
      v10 += byte_22FA108F8[v9];
      v9 = asc_22FA1B1B8[v9];
    }

    if (v11 < 0)
    {
      v14 = byte_22FA108FD[v9];
      *(&v28[-1] + v10) |= ((*(a3 + (a5 >> 3)) >> (a5 & 7)) & ~(-1 << v14)) << byte_22FA10900[v9];
      LODWORD(a5) = a5 + v14;
      v10 += byte_22FA10903[v9];
      v9 = asc_22FA1B1BD[v9];
    }

    ++v8;
  }

  while (__n != v8);
  if ((v11 & 0x40) != 0)
  {
    if ((__n + 4) < 5)
    {
      sub_22F9FD0BC();
    }

    v15 = vdupq_n_s32(v12);
    v16 = (__n + 4) / 5uLL;
    v17 = v31;
    v18 = &v27;
    do
    {
      v19 = *v18++;
      v20 = &unk_22FA10906 + 5 * v19;
      a7.i32[0] = *v20;
      a8.i32[0] = *(v17 - 1);
      a8 = vmovl_u8(a8).u64[0];
      a7 = vuzp1_s8(vorr_s8(a8, vmovn_s32(vshlq_u32(vmovl_u16(*&vmovl_u8(a7)), v15))), *v15.i8);
      *(v17 - 1) = a7.i32[0];
      *v17 |= v20[4] << v12;
      v17 += 5;
      --v16;
    }

    while (v16);
  }

  if (v11 < 0)
  {
    if ((__n + 2) < 3)
    {
      sub_22F9FD0E8();
    }

    v21 = (__n + 2) / 3uLL;
    v22 = &v30;
    v23 = &v27;
    do
    {
      v24 = *v23++;
      v25 = &unk_22FA10E06 + 3 * v24;
      *(v22 - 2) |= *v25 << v12;
      *(v22 - 1) |= v25[1] << v12;
      *v22 |= v25[2] << v12;
      v22 = (v22 + 3);
      --v21;
    }

    while (v21);
  }

  return memcpy(__dst, __src, __n);
}

uint64_t astcenc_config_init(unsigned int a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6, float a7)
{
  if (((2.51 + 12583000.0) + -12583000.0) != 3.0)
  {
    return 2;
  }

  *(a6 + 112) = 0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  *a6 = 0uLL;
  result = sub_22F9FD544(a2, a3, v13);
  if (!result)
  {
    *(a6 + 8) = a2;
    *(a6 + 12) = a3;
    *(a6 + 16) = v13;
    v15 = a3 * a2 * v13;
    v16 = logf(v15);
    result = 6;
    if (a7 >= 0.0 && a7 <= 100.0)
    {
      v19 = 0;
      v20 = &unk_22FA11330;
      if (v15 < 0x40)
      {
        v20 = &unk_22FA11180;
      }

      v21 = &unk_22FA10FD0;
      if (v15 >= 25)
      {
        v21 = v20;
      }

      qword_27DAD68F0 = v21;
      v22 = v21;
      v23 = v16 / 2.3026;
      do
      {
        if (*v22 >= a7)
        {
          break;
        }

        ++v19;
        v22 += 18;
      }

      while (v19 != 6);
      v24 = v19 - 1;
      if (!v19)
      {
        v24 = 0;
      }

      if (v24 == v19)
      {
        v25 = &v21[18 * v19];
        *(a6 + 44) = *(v25 + 1);
        *(a6 + 60) = *(v25 + 5);
        *(a6 + 76) = *(v25 + 9);
        v26 = v25[11] + (v23 * -35.0);
        v27 = v25[12] + (v23 * -19.0);
        if (v26 > v27)
        {
          v27 = v26;
        }

        v28 = *(v25 + 13);
        *(a6 + 84) = v27;
        *(a6 + 88) = v28;
        v29 = *(v25 + 14);
        *(a6 + 92) = v29;
        v30 = v25[17];
        *(a6 + 100) = v25[16];
      }

      else
      {
        v31 = &v21[18 * v24];
        v32 = &v21[18 * v19];
        *v18.i32 = *v32 - *v31;
        if (*v18.i32 <= 0.0)
        {
          sub_22F9FF1D8();
        }

        *v17.i32 = (*v32 - a7) / *v18.i32;
        *v18.i32 = (a7 - *v31) / *v18.i32;
        v33 = vdupq_lane_s32(v18, 0).u64[0];
        v34 = vdupq_lane_s32(v17, 0).u64[0];
        v35.i64[0] = 0x3F0000003F000000;
        v35.i64[1] = 0x3F0000003F000000;
        *(a6 + 44) = vcvtq_s32_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_u32(*(v32 + 1)), *v18.i32), vcvtq_f32_u32(*(v31 + 1)), *v17.i32), v35));
        *(a6 + 60) = vcvtq_s32_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_u32(*(v32 + 5)), *v18.i32), vcvtq_f32_u32(*(v31 + 5)), *v17.i32), v35));
        *(a6 + 76) = vcvt_s32_f32(vadd_f32(vmla_f32(vmul_f32(v33, vcvt_f32_u32(*(v32 + 9))), v34, vcvt_f32_u32(*(v31 + 9))), 0x3F0000003F000000));
        v36 = vmla_n_f32(vmla_f32(vmul_f32(v33, *(v32 + 11)), v34, *(v31 + 11)), 0xC1980000C20C0000, v23);
        v27 = v36.f32[1];
        if (v36.f32[0] > v36.f32[1])
        {
          v27 = v36.f32[0];
        }

        v37 = (*v18.i32 * v32[13]) + (v31[13] * *v17.i32);
        *(a6 + 84) = v27;
        *(a6 + 88) = v37;
        v29 = vmla_f32(vmul_f32(v33, *(v32 + 14)), v34, *(v31 + 14));
        *(a6 + 92) = v29;
        v38 = v32[17];
        v39 = v31[17];
        *(a6 + 100) = (*v18.i32 * v32[16]) + (v31[16] * *v17.i32);
        v30 = (*v18.i32 * v38) + (v39 * *v17.i32);
      }

      *(a6 + 104) = v30;
      __asm { FMOV            V2.4S, #1.0 }

      *(a6 + 20) = _Q2;
      *(a6 + 36) = 0;
      *a6 = a1;
      if (a1 >= 2)
      {
        if (a1 - 2 > 1)
        {
          return 5;
        }

        *(a6 + 84) = 1148829696;
        *(a6 + 104) = 0;
        v27 = 999.0;
      }

      LODWORD(_Q2) = a5 & 0xFFFFFF80;
      *&_Q2 = vcnt_s8(*&_Q2);
      LOWORD(_Q2) = vaddlv_u8(*&_Q2);
      if (_Q2)
      {
        return 8;
      }

      LODWORD(_Q2) = a5 & 0x41;
      if ((vaddlv_u8(vcnt_s8(*&_Q2)) & 0x7FE) != 0)
      {
        return 8;
      }

      else if ((a1 & 0xFFFFFFFE) == 2 && (a5 & 2) != 0)
      {
        return 11;
      }

      else
      {
        if (a5)
        {
          v45 = *(a6 + 44);
          if ((v45 + 1) < 4)
          {
            v46 = v45 + 1;
          }

          else
          {
            v46 = 4;
          }

          *(a6 + 44) = v46;
          *(a6 + 24) = 0;
          __asm { FMOV            V2.2S, #1.5 }

          *(a6 + 92) = vmul_f32(v29, _D2);
          *(a6 + 100) = 1065185444;
          *(a6 + 84) = v27 * 1.03;
        }

        else if ((a5 & 0x40) != 0)
        {
          *(a6 + 40) = 1084227584;
          *(a6 + 32) = 1092616192;
        }

        else if ((a5 & 8) != 0)
        {
          *(a6 + 20) = 0x3FA9EB853F2CCCCDLL;
          *(a6 + 28) = 1048408228;
        }

        result = 0;
        *(a6 + 4) = a5;
      }
    }
  }

  return result;
}

uint64_t sub_22F9FD544(int a1, int a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (!is_legal_3d_block_size(a1, a2, a3))
    {
      return 4;
    }
  }

  else if ((is_legal_2d_block_size(a1, a2) & 1) == 0)
  {
    return 4;
  }

  if (a2 * a1 * a3 >= 0xD9)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t astcenc_context_alloc(uint64_t a1, int a2)
{
  LODWORD(memptr) = 1075880919;
  if (((2.51 + 12583000.0) + -12583000.0) != 3.0)
  {
    return 2;
  }

  if (a2)
  {
    operator new();
  }

  return 3;
}

uint64_t astcenc_context_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 144));
    free(*(v1 + 128));
    std::mutex::~mutex((v1 + 816));
    std::condition_variable::~condition_variable((v1 + 744));
    std::mutex::~mutex((v1 + 672));
    std::mutex::~mutex((v1 + 600));
    std::condition_variable::~condition_variable((v1 + 528));
    std::mutex::~mutex((v1 + 456));
    std::mutex::~mutex((v1 + 384));
    std::condition_variable::~condition_variable((v1 + 312));
    std::mutex::~mutex((v1 + 240));

    JUMPOUT(0x2319050F0);
  }

  return result;
}

uint64_t astcenc_compress_image()
{
  v0 = MEMORY[0x28223BE20]();
  v50 = v5;
  v46 = v1;
  v64 = *MEMORY[0x277D85DE8];
  if ((*(v0 + 4) & 0x10) != 0)
  {
    return 9;
  }

  v6 = v2;
  v7.i64[0] = 0x500000005;
  v7.i64[1] = 0x500000005;
  if (vmaxv_u16(vmovn_s32(vcgtq_u32(*v2, v7))))
  {
    return 7;
  }

  v9 = v0;
  v10 = *(v0 + 120);
  if (v10 <= v4)
  {
    return 3;
  }

  if (16 * (*(v0 + 8) + *v1 - 1) / *(v0 + 8) * ((*(v0 + 12) + v1[1] - 1) / *(v0 + 12)) * ((*(v0 + 16) + v1[2] - 1) / *(v0 + 16)) > v3)
  {
    return 1;
  }

  v47 = v4;
  if (v10 == 1)
  {
    astcenc_compress_reset(v0);
  }

  v45 = v6;
  if (*(v9 + 36))
  {
    operator new();
  }

  sub_22F9FE3B0(v9 + 240);
  v11 = *(v9 + 128);
  v43 = *v9;
  v12 = *v11;
  v13 = v11[1];
  v42 = v11;
  v14 = v11[2];
  v56 = v13 * v12 * v14;
  v15 = *v46;
  v53 = v12;
  v16 = (v12 + *v46 - 1) / v12;
  v41 = v46[1];
  v51 = v13;
  v52 = v14;
  v49 = (v13 + v41 - 1) / v13;
  v17 = v49 * v16;
  v18 = v49 * v16 * ((v14 + v46[2] - 1) / v14);
  v63 = (*(v9 + 4) & 2) != 0;
  v61 = *(v9 + 20);
  v19 = *(v9 + 144);
  sub_22F9FE778(v9 + 456, v18, *(v9 + 112));
  v20 = vmvnq_s8(vceqq_s32(*v45, xmmword_22FA083F0));
  v20.n128_u64[0] = vmovn_s32(v20);
  v20.n128_u16[0] = vmaxv_u16(v20.n128_u64[0]);
  v44 = load_image_block;
  if ((v20.n128_u8[0] & 1) == 0)
  {
    v44 = load_image_block;
    if ((v43 & 0xFFFFFFFE) != 2 && v52 == 1)
    {
      v21 = load_image_block;
      if (!v46[3])
      {
        v21 = load_image_block_fast_ldr;
      }

      v44 = v21;
    }
  }

  add_explicit = atomic_fetch_add_explicit((v9 + 576), 0x10u, memory_order_relaxed);
  v23 = *(v9 + 584);
  v24 = v23 >= add_explicit;
  v25 = v23 - add_explicit;
  if (v25 != 0 && v24)
  {
    v48 = v19 + 231744 * v47;
    if (v25 >= 0x10)
    {
      v26 = 16;
    }

    else
    {
      v26 = v25;
    }

    do
    {
      v40 = v26;
      v27 = v26 + add_explicit;
      if (add_explicit < v26 + add_explicit)
      {
        do
        {
          v28 = add_explicit % v17 / v16;
          v29 = add_explicit % v17 % v16;
          v30 = v29 * v53;
          if (v52 != 1)
          {
            goto LABEL_40;
          }

          v31 = *(v9 + 36);
          if (!v31)
          {
            goto LABEL_40;
          }

          v32 = v30 + v53;
          if (v15 < v30 + v53)
          {
            v32 = v15;
          }

          v33 = v28 * v51 + v51;
          if (v41 < v33)
          {
            v33 = v41;
          }

          if (v41 <= (v28 * v51))
          {
            goto LABEL_39;
          }

          v34 = 0;
          v20.n128_f32[0] = 0.9 / (((2 * v31 - 2 + v53) * (2 * v31 - 2 + v51)) * 255.0);
          v35 = v28 * v51;
          do
          {
            v36 = v29 * v53;
            if (v15 > v30)
            {
              do
              {
                v37 = *(*(v9 + 136) + 4 * (v36 + v35 * v15));
                if (v37 > v20.n128_f32[0])
                {
                  v36 = v32;
                  v35 = v33;
                }

                v34 |= v37 > v20.n128_f32[0];
                ++v36;
              }

              while (v36 < v32);
            }

            ++v35;
          }

          while (v35 < v33);
          if ((v34 & 1) == 0)
          {
LABEL_39:
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v62 = 1;
          }

          else
          {
LABEL_40:
            (v44)(v43, v46, &v55, v42, v20);
            if ((*(v9 + 4) & 4) != 0)
            {
              *&v38 = vmul_n_f32(*(v9 + 20), *(&v60 + 3) * 0.000015259);
              *(&v38 + 2) = (*(&v60 + 3) * 0.000015259) * *(v9 + 28);
              HIDWORD(v38) = *(v9 + 32);
              v61 = v38;
            }
          }

          compress_block(v9, &v55, v50 + (16 * (v29 + (v28 + add_explicit / v17 * v49) * v16)), v48);
          ++add_explicit;
        }

        while (add_explicit != v27);
      }

      sub_22F9FE800(v9 + 456, v40);
      add_explicit = atomic_fetch_add_explicit((v9 + 576), 0x10u, memory_order_relaxed);
      v39 = *(v9 + 584);
      v26 = v39 - add_explicit;
      if (v39 - add_explicit >= 0x10)
      {
        v26 = 16;
      }
    }

    while (v39 > add_explicit);
  }

  sub_22F9FE3B0(v9 + 456);
  v54[0] = &unk_28449C038;
  v54[1] = v9;
  v54[3] = v54;
  sub_22F9FE41C(v9 + 456, v54);
  sub_22F9DEC90(v54);
  return 0;
}

uint64_t astcenc_compress_reset(uint64_t a1)
{
  if ((*(a1 + 4) & 0x10) != 0)
  {
    return 9;
  }

  result = 0;
  *(a1 + 304) = 0;
  atomic_store(0, (a1 + 360));
  *(a1 + 364) = 0;
  *(a1 + 376) = 0;
  *(a1 + 448) = 1065353216;
  *(a1 + 520) = 0;
  atomic_store(0, (a1 + 576));
  *(a1 + 580) = 0;
  *(a1 + 592) = 0;
  *(a1 + 664) = 1065353216;
  return result;
}

void sub_22F9FE318(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      sub_22F9DEC44();
    }

    *(a1 + 128) = (*(*v4 + 48))(v4);
    *(a1 + 64) = 1;
  }

  std::mutex::unlock(a1);
}

void sub_22F9FE3B0(uint64_t a1)
{
  v2.__m_ = a1;
  v2.__owns_ = 1;
  std::mutex::lock(a1);
  if (*(a1 + 124) == *(a1 + 128))
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((a1 + 72), &v2);
  }

  while (*(a1 + 124) != *(a1 + 128));
  if (v2.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v2.__m_);
  }
}

void sub_22F9FE41C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  if ((*(a1 + 65) & 1) == 0)
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      sub_22F9DEC44();
    }

    (*(*v4 + 48))(v4);
    *(a1 + 65) = 1;
  }

  std::mutex::unlock(a1);
}

uint64_t astcenc_decompress_image()
{
  v0 = MEMORY[0x28223BE20]();
  v41 = *MEMORY[0x277D85DE8];
  v5 = v0[30];
  if (v5 <= v6)
  {
    return 3;
  }

  v7 = v4;
  v8.i64[0] = 0x600000006;
  v8.i64[1] = 0x600000006;
  if (vmaxv_u16(vmovn_s32(vcgtq_u32(*v4, v8))))
  {
    return 7;
  }

  v10 = v3;
  v11 = v0;
  v12 = v0[2];
  v13 = v0[3];
  v14 = v0[4];
  v15 = (v12 + *v3 - 1) / v12;
  v16 = (v13 + v3[1] - 1) / v13 * v15 * ((v14 + v3[2] - 1) / v14);
  if (16 * v16 > v2)
  {
    return 1;
  }

  v33 = (v13 + v3[1] - 1) / v13 * v15;
  v34 = (v12 + *v3 - 1) / v12;
  v35 = v1;
  bzero(v40, 0xFD0uLL);
  v38 = v14;
  v40[3516] = v13 * v12 * v14;
  v40[3601] = *(v10 + 12) == 0;
  if (v5 == 1)
  {
    *(v11 + 368) = 0;
    atomic_store(0, v11 + 198);
    *(v11 + 199) = 0;
    *(v11 + 101) = 0;
    *(v11 + 110) = 1065353216;
  }

  sub_22F9FE778((v11 + 168), v16, 0);
  add_explicit = atomic_fetch_add_explicit(v11 + 198, 0x80u, memory_order_relaxed);
  v18 = v11[200];
  v19 = v18 >= add_explicit;
  v20 = v18 - add_explicit;
  if (v20 != 0 && v19)
  {
    if (v20 >= 0x80)
    {
      v21 = 128;
    }

    else
    {
      v21 = v20;
    }

    v37 = v7;
    do
    {
      v36 = v21;
      if (add_explicit < v21 + add_explicit)
      {
        v22 = 16 * add_explicit;
        v23 = v21;
        do
        {
          physical_to_symbolic(*(v11 + 16), (v35 + v22), v39);
          v24 = add_explicit % v33 % v34 * v12;
          v25 = add_explicit % v33 / v34 * v13;
          v26 = add_explicit / v33 * v38;
          decompress_symbolic_block(*v11, *(v11 + 16), v24, v25, v26, v39, v40, v27, v28, v29, v30);
          store_image_block(v10, v40, *(v11 + 16), v24, v25, v26, v37);
          ++add_explicit;
          v22 += 16;
          --v23;
        }

        while (v23);
      }

      sub_22F9FE800((v11 + 168), v36);
      v31 = atomic_fetch_add_explicit(v11 + 198, 0x80u, memory_order_relaxed);
      v32 = v11[200];
      v21 = v32 - v31;
      if (v32 - v31 >= 0x80)
      {
        v21 = 128;
      }

      if (v32 <= v31)
      {
        add_explicit = 0;
      }

      else
      {
        add_explicit = v31;
      }
    }

    while (v32 > v31);
  }

  return 0;
}

uint64_t astcenc_decompress_reset(uint64_t a1)
{
  *(a1 + 736) = 0;
  atomic_store(0, (a1 + 792));
  *(a1 + 796) = 0;
  *(a1 + 808) = 0;
  *(a1 + 880) = 1065353216;
  return 0;
}

void sub_22F9FE778(uint64_t a1, unsigned int a2, uint64_t a3)
{
  std::mutex::lock(a1);
  if ((*(a1 + 64) & 1) == 0)
  {
    *(a1 + 136) = a3;
    *(a1 + 128) = a2;
    *(a1 + 64) = 1;
    *(a1 + 208) = fmaxf((4096.0 / a2) * 100.0, 1.0);
  }

  std::mutex::unlock(a1);
}

void sub_22F9FE800(uint64_t a1, int a2)
{
  std::mutex::lock(a1);
  v4 = *(a1 + 128);
  v5 = *(a1 + 124) + a2;
  *(a1 + 124) = v5;
  v6 = *(a1 + 212);
  if (v5 == v4)
  {
    if (*(a1 + 136))
    {
      std::mutex::lock((a1 + 144));
      (*(a1 + 136))(100.0);
      *(a1 + 212) = 1120403456;
      std::mutex::unlock((a1 + 144));
    }

    std::mutex::unlock(a1);
    std::condition_variable::notify_all((a1 + 72));
  }

  else
  {
    std::mutex::unlock(a1);
  }

  if (*(a1 + 136))
  {
    v7 = (v5 / *(a1 + 128)) * 100.0;
    if ((v7 - v6) > *(a1 + 208))
    {
      std::mutex::lock((a1 + 144));
      if ((v7 - *(a1 + 212)) > *(a1 + 208))
      {
        (*(a1 + 136))(v7);
        *(a1 + 212) = v7;
      }

      std::mutex::unlock((a1 + 144));
    }
  }
}

uint64_t astcenc_get_block_info(uint64_t a1, int8x16_t *a2, _DWORD *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  physical_to_symbolic(*(a1 + 128), a2, v67);
  v5 = *(a1 + 128);
  bzero(a3, 0x860uLL);
  *a3 = *a1;
  *(a3 + 1) = *(a1 + 8);
  a3[3] = *(a1 + 16);
  a3[4] = *(v5 + 3);
  v6 = LOBYTE(v67[0]);
  *(a3 + 20) = LOBYTE(v67[0]) == 0;
  if (v6)
  {
    *(a3 + 21) = v6 < 3;
    if (v6 >= 3)
    {
      v7 = sub_22F9F1DD0(v5, BYTE1(v67[0]), WORD3(v67[0]));
      v16 = *(v5 + 2 * WORD2(v67[0]) + 11302240);
      if (v16 == 0xFFFF || *(v5 + 28) <= v16)
      {
        sub_22F9F2878();
      }

      v17 = v5 + 6 * *(v5 + 2 * WORD2(v67[0]) + 11302240) + 11306336;
      v18 = (v5 + 129904 * *(v5 + 6 * *(v5 + 2 * WORD2(v67[0]) + 11302240) + 11306338));
      a3[15] = v18[595];
      a3[16] = v18[596];
      v61 = v18;
      a3[17] = v18[597];
      *(a3 + 23) = *(v5 + 6 * v16 + 11306341) & 1;
      v19 = BYTE1(v67[0]);
      LODWORD(v18) = WORD3(v67[0]);
      a3[6] = BYTE1(v67[0]);
      a3[7] = v18;
      a3[8] = SBYTE3(v67[0]);
      if (HIDWORD(v67[0]) > 0x14)
      {
        v20 = 0;
      }

      else
      {
        v20 = dword_22FA116EC[HIDWORD(v67[0])];
      }

      v62 = v17;
      a3[13] = v20;
      v21 = *(v17 + 3);
      v60 = v7;
      if (v21 > 0x14)
      {
        v22 = 0;
      }

      else
      {
        v22 = dword_22FA116EC[v21];
      }

      a3[14] = v22;
      if (v19)
      {
        v23 = 0;
        do
        {
          v64[0] = 0;
          v63 = 0;
          v24 = v65;
          unpack_color_endpoints(*a1, *(v67 + v23 + 8), &v67[1] + 8 * v23 + 4, v64, &v63, v65, v66, v8, v9, v10, v11);
          v25.i64[0] = 0x3C0000003C00;
          v25.i64[1] = 0x3C0000003C00;
          v26.i64[0] = 0x1E0000001ELL;
          v26.i64[1] = 0x1E0000001ELL;
          v27.i64[0] = 0x7000000070;
          v27.i64[1] = 0x7000000070;
          v28.i64[0] = 0xFFFF0000FFFFLL;
          v28.i64[1] = 0xFFFF0000FFFFLL;
          v29.i64[0] = 0x300000003;
          v29.i64[1] = 0x300000003;
          v30.i64[0] = 0x100000001;
          v30.i64[1] = 0x100000001;
          v31.i64[0] = 0x1F0000001FLL;
          v31.i64[1] = 0x1F0000001FLL;
          v32.i64[0] = 0xE0000000ELL;
          v32.i64[1] = 0xE0000000ELL;
          v33.i64[0] = 0x2000000020;
          v33.i64[1] = 0x2000000020;
          v34 = 0uLL;
          v35.i64[0] = 0x9E0000009ELL;
          v35.i64[1] = 0x9E0000009ELL;
          v36.i64[0] = 0x7B0000007BLL;
          v36.i64[1] = 0x7B0000007BLL;
          v37.i64[0] = 0x500000005;
          v37.i64[1] = 0x500000005;
          v38.i64[0] = 0x100000001;
          v38.i64[1] = 0x100000001;
          v39.i64[0] = 0x100000001;
          v39.i64[1] = 0x100000001;
          v40.i64[0] = 0x700000007;
          v40.i64[1] = 0x700000007;
          v41 = 0;
          a3[v23 + 9] = *(v67 + v23 + 8);
          v42.i32[0] = v64[0];
          v43 = v42;
          v43.i16[1] = v63;
          v44 = vzip1_s16(v43, v43);
          v44.i16[2] = v64[0];
          *(a3 + 22) = (*(a3 + 22) | v64[0] | v63) & 1;
          v45 = 1;
          v46 = vcltzq_s32(vshlq_n_s32(vmovl_u16(v44), 0x1FuLL));
          do
          {
            v47 = v45;
            v48 = *v24;
            {
              sub_22F9F26A8();
              v25.i64[0] = 0x3C0000003C00;
              v25.i64[1] = 0x3C0000003C00;
              v26.i64[0] = 0x1E0000001ELL;
              v26.i64[1] = 0x1E0000001ELL;
              v27.i64[0] = 0x7000000070;
              v27.i64[1] = 0x7000000070;
              v28.i64[0] = 0xFFFF0000FFFFLL;
              v28.i64[1] = 0xFFFF0000FFFFLL;
              v29.i64[0] = 0x300000003;
              v29.i64[1] = 0x300000003;
              v30.i64[0] = 0x100000001;
              v30.i64[1] = 0x100000001;
              v31.i64[0] = 0x1F0000001FLL;
              v31.i64[1] = 0x1F0000001FLL;
              v32.i64[0] = 0xE0000000ELL;
              v32.i64[1] = 0xE0000000ELL;
              v33.i64[0] = 0x2000000020;
              v33.i64[1] = 0x2000000020;
              v34 = 0uLL;
              v35.i64[0] = 0x9E0000009ELL;
              v35.i64[1] = 0x9E0000009ELL;
              v36.i64[0] = 0x7B0000007BLL;
              v36.i64[1] = 0x7B0000007BLL;
              v37.i64[0] = 0x500000005;
              v37.i64[1] = 0x500000005;
              v38.i64[0] = 0x100000001;
              v38.i64[1] = 0x100000001;
              v39.i64[0] = 0x100000001;
              v39.i64[1] = 0x100000001;
              v40.i64[0] = 0x700000007;
              v40.i64[1] = 0x700000007;
            }

            v49 = vminq_s32(vmaxq_s32(vsubq_s32(v35, vshrq_n_u32(vcvtq_f32_s32(vbicq_s8(v48, vshrq_n_u32(v48, 8uLL))), 0x17uLL)), v34), v33);
            if (vaddvq_s32(vshlq_u32(vandq_s8(vcgtq_s32(v31, vaddq_s32(v49, v32)), v30), mask(vmask4)::shift)) != 15)
            {
              sub_22F9FF204();
            }

            v45 = 0;
            v50 = vandq_s8(v48, v40);
            v51 = vmovn_s32(v50);
            v14 = vaddq_s32(vshlq_n_s32(v50, 2uLL), v38);
            v52.i64[0] = 0x700000007;
            v52.i64[1] = 0x700000007;
            v15 = vmlal_u16(v52, v51, 0x5000500050005);
            v9 = vminq_s32(vorrq_s8(vshrq_n_u32(vbslq_s8(vcgtq_u32(v50, v39), vbslq_s8(vcgtq_u32(v50, v37), v15, v14), vmull_u16(v51, 0x3000300030003)), 3uLL), vshlq_n_s32(vshrq_n_u32(v48, 0xBuLL), 0xAuLL)), v36);
            v10 = vshlq_n_s32(v48, 8uLL);
            v11 = vcgtq_s32(v48, v29);
            v12 = vceqq_s32(v48, v28);
            v13 = vshrq_n_u32(vandq_s8(vmulq_s32(vcvtq_s32_f32(vshlq_n_s32(vaddq_s32(v49, v27), 0x17uLL)), v48), v28), 6uLL);
            v8 = vcvtq_f32_f16(vmovn_s32(vbslq_s8(v46, v9, vbslq_s8(v11, vbslq_s8(v12, v25, vorrq_s8(vshlq_n_s32(vsubq_s32(v26, v49), 0xAuLL), v13)), v10))));
            *&a3[8 * v23 + 18 + 4 * v41] = v8;
            v24 = v66;
            v41 = 1;
          }

          while ((v47 & 1) != 0);
          ++v23;
        }

        while (v23 < BYTE1(v67[0]));
      }

      unpack_weights(v5, v67, (v61 + 592), *(v62 + 5) & 1, v65, v64, v8.n128_f64[0], *v9.i64, *v10.i64, *v11.i64, *v12.i64, v13, v14, v15);
      v53 = *(v5 + 3);
      if (*(v5 + 3))
      {
        v54 = *(a3 + 23);
        v55 = v65;
        v56 = v64;
        v57 = a3;
        do
        {
          v58 = *v55++;
          v57[50] = v58 * 0.0625;
          if (v54)
          {
            v57[266] = *v56 * 0.0625;
          }

          ++v57;
          ++v56;
          --v53;
        }

        while (v53);
        do
        {
          *(a3 + v53 + 1928) = *(v60 + 16 + v53);
          ++v53;
        }

        while (v53 < *(v5 + 3));
      }
    }
  }

  return 0;
}

char *astcenc_get_error_string(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_2788AE080[a1];
  }
}

uint64_t sub_22F9FEE48(uint64_t a1)
{
  std::mutex::~mutex((a1 + 816));
  std::condition_variable::~condition_variable((a1 + 744));
  std::mutex::~mutex((a1 + 672));
  std::mutex::~mutex((a1 + 600));
  std::condition_variable::~condition_variable((a1 + 528));
  std::mutex::~mutex((a1 + 456));
  std::mutex::~mutex((a1 + 384));
  std::condition_variable::~condition_variable((a1 + 312));
  std::mutex::~mutex((a1 + 240));
  return a1;
}

__n128 sub_22F9FEF30(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28449BFA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_22F9FEFDC(uint64_t a1, uint64_t a2)
{
  if (sub_22F9F055C(a2, &unk_28449C018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F9FF028(uint64_t a1)
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

uint64_t sub_22F9FF118(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28449C038;
  a2[1] = v2;
  return result;
}

uint64_t sub_22F9FF144(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 136);
  if (result)
  {
    result = MEMORY[0x2319050D0](result, 0x1000C8052888210);
    v2 = *(a1 + 8);
  }

  *(v2 + 136) = 0;
  return result;
}

uint64_t sub_22F9FF18C(uint64_t a1, uint64_t a2)
{
  if (sub_22F9F055C(a2, &unk_28449C098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t compute_ideal_endpoint_formats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = MEMORY[0x28223BE20]();
  v417[44] = *MEMORY[0x277D85DE8];
  if (!*v13)
  {
    sub_22FA00ABC();
  }

  v26 = v15;
  v27 = v14;
  v28 = v13;
  v375 = v19;
  v373 = v16;
  v371 = v17;
  v374 = v20;
  v372 = v18;
  v387 = *(v14 + 3602);
  v389 = *(v14 + 3818);
  v388 = *v13;
  compute_avgs_and_dirs_3_comp_rgb(v13, v14, v412, v21, v22, v23, v24, v25);
  v30 = v388;
  v31 = 0;
  v32 = v28 + 2;
  v33 = v28 + 120;
  v34 = v27 + 330;
  v35 = v27 + 110;
  v36 = v27 + 220;
  v37 = v26 + 16;
  v38 = xmmword_22FA104E0;
  v39 = v26 + 80;
  v40 = vdupq_n_s32(0x3F13CD3Au);
  v41.i64[0] = 0x400000004;
  v41.i64[1] = 0x400000004;
  v42 = 0uLL;
  v43.i64[0] = 0x100000001;
  v43.i64[1] = 0x100000001;
  v384 = v26 + 16;
  v385 = v32;
  v382 = v26 + 80;
  do
  {
    v44 = &v412[2 * v31];
    v45 = v44[1];
    v46 = vmulq_f32(v45, v45);
    *v46.i8 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.i8);
    v47 = vpadd_f32(*v46.i8, *v46.i8);
    v48 = v38;
    if (*v47.i32 != 0.0)
    {
      v48 = vdivq_f32(v45, vsqrtq_f32(vdupq_lane_s32(v47, 0)));
    }

    v49 = *v44;
    v50 = vmulq_f32(v49, v49);
    *v50.i8 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.i8);
    v51 = vpadd_f32(*v50.i8, *v50.i8);
    v52 = v38;
    if (*v51.i32 != 0.0)
    {
      v52 = vdivq_f32(v49, vsqrtq_f32(vdupq_lane_s32(v51, 0)));
    }

    v53 = *(v32 + v31);
    if (!*(v32 + v31))
    {
      sub_22FA00A90();
    }

    v54 = 0;
    v55 = *v27[448].f32;
    v56 = vmulq_f32(v49, v40);
    v56.f32[0] = v56.f32[2] + vaddv_f32(*v56.f32);
    v57 = vdupq_lane_s32(*v56.f32, 0);
    v57.i32[3] = 0;
    v58 = vaddq_f32(v49, vmulq_f32(v57, xmmword_22FA11740));
    v59 = vmulq_f32(v49, v48);
    v59.f32[0] = v59.f32[2] + vaddv_f32(*v59.f32);
    v60 = vdupq_lane_s32(*v59.f32, 0);
    v60.i32[3] = 0;
    v61 = vsubq_f32(v49, vmulq_f32(v48, v60));
    v49.i32[0] = 1190133760;
    if (!v27[477].i8[2])
    {
      v49.f32[0] = 65535.0;
    }

    v62 = vdupq_lane_s32(*v49.f32, 0);
    v63 = vdupq_lane_s32(*v61.i8, 0);
    v64 = vdupq_lane_s32(*v61.i8, 1);
    v65 = vdupq_laneq_s32(v61, 2);
    v66 = vdupq_lane_s32(*v58.i8, 0);
    v67 = vdupq_lane_s32(*v58.i8, 1);
    v68 = vdupq_laneq_s32(v58, 2);
    v69 = vdupq_n_s32(v53);
    v70 = 0uLL;
    v71 = xmmword_22FA083F0;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    v75 = 0uLL;
    do
    {
      v395 = v72;
      v29.i32[0] = *&v33[v54 / 2];
      v76 = vmovl_u16(*&vmovl_u8(*v29.f32));
      v77 = v76.u32[2];
      v78 = v76.u32[1];
      v79 = v76.u32[3];
      v80 = vcgtq_s32(v69, v71);
      v81 = v76.i32[0];
      v82.i32[0] = v34->i32[v76.u32[0]];
      v82.i32[1] = v34->i32[v76.u32[1]];
      v82.i32[2] = v34->i32[v76.u32[2]];
      v76.i32[0] = v27->i32[v76.u32[0]];
      v76.i32[1] = v27->i32[v76.u32[1]];
      v76.i32[2] = v27->i32[v76.u32[2]];
      v83.i32[0] = v35->i32[v81];
      v82.i32[3] = v34->i32[v76.u32[3]];
      v83.i32[1] = v35->i32[v78];
      v84 = v35 + v76.u32[3];
      v76.i32[3] = v27->i32[v76.u32[3]];
      v83.i32[2] = v35->i32[v77];
      v83.i32[3] = *v84;
      v85 = vsubq_f32(v82, v62);
      v82.i32[0] = v36->i32[v81];
      v82.i32[1] = v36->i32[v78];
      v82.i32[2] = v36->i32[v77];
      v82.i32[3] = v36->i32[v79];
      v86 = vaddq_f32(vaddq_f32(vmulq_n_f32(v76, v48.f32[0]), vmulq_lane_f32(v83, *v48.f32, 1)), vmulq_laneq_f32(v82, v48, 2));
      v392 = vaddq_f32(v70, vandq_s8(vmulq_f32(v85, v85), v80));
      v87 = vsubq_f32(vaddq_f32(v63, vmulq_n_f32(v86, v48.f32[0])), v76);
      v88 = vsubq_f32(vaddq_f32(v64, vmulq_lane_f32(v86, *v48.f32, 1)), v83);
      v89 = vsubq_f32(vaddq_f32(v65, vmulq_laneq_f32(v86, v48, 2)), v82);
      v90 = vaddq_f32(vaddq_f32(vmulq_n_f32(v76, v52.f32[0]), vmulq_lane_f32(v83, *v52.f32, 1)), vmulq_laneq_f32(v82, v52, 2));
      v91 = vsubq_f32(vmulq_n_f32(v90, v52.f32[0]), v76);
      v92 = vsubq_f32(vmulq_lane_f32(v90, *v52.f32, 1), v83);
      v93 = vsubq_f32(vmulq_laneq_f32(v90, v52, 2), v82);
      v94 = vaddq_f32(vmulq_n_f32(vmulq_f32(v87, v87), v55.f32[0]), vmulq_lane_f32(vmulq_f32(v88, v88), *v55.f32, 1));
      v95 = vmulq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v76, v40), vmulq_f32(v83, v40)), vmulq_f32(v82, v40)), v40);
      v96 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v93, v93), v55, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v91, v91), v55.f32[0]), vmulq_lane_f32(vmulq_f32(v92, v92), *v55.f32, 1)));
      v97 = vsubq_f32(vaddq_f32(v66, v95), v76);
      v98 = vsubq_f32(vaddq_f32(v67, v95), v83);
      v99 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v89, v89), v55, 2), v94);
      v71 = vaddq_s32(v71, v41);
      v74 = vaddq_f32(v74, vandq_s8(v96, v80));
      v100 = vsubq_f32(vaddq_f32(v68, v95), v82);
      v101 = vandq_s8(vaddq_f32(vmulq_laneq_f32(vmulq_f32(v100, v100), v55, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v97, v97), v55.f32[0]), vmulq_lane_f32(vmulq_f32(v98, v98), *v55.f32, 1))), v80);
      v102 = vsubq_f32(v95, v76);
      v103 = vsubq_f32(v95, v83);
      v104 = vsubq_f32(v95, v82);
      v70 = v392;
      v396 = vaddq_f32(v395, vandq_s8(v99, v80));
      v72 = v396;
      v75 = vaddq_f32(v75, v101);
      v29 = vandq_s8(vaddq_f32(vmulq_laneq_f32(vmulq_f32(v104, v104), v55, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v102, v102), v55.f32[0]), vmulq_lane_f32(vmulq_f32(v103, v103), *v55.f32, 1))), v80);
      v73 = vaddq_f32(v73, v29);
      v54 += 4;
    }

    while (v54 < v53);
    v105 = *(v37 + 16 * v31);
    v106 = *(v39 + 16 * v31);
    {
      v377 = v40;
      v380 = v38;
      v370 = v105;
      v369 = v106;
      sub_22F9F26A8();
      v106 = v369;
      v105 = v370;
      v70 = v392;
      v72 = v396;
      v40 = v377;
      v43.i64[0] = 0x100000001;
      v43.i64[1] = 0x100000001;
      v42 = 0uLL;
      v41.i64[0] = 0x400000004;
      v41.i64[1] = 0x400000004;
      v38 = v380;
      v39 = v26 + 80;
      v37 = v26 + 16;
      v32 = v385;
      v30 = v388;
    }

    v107 = vadd_f32(*&vextq_s8(v70, v70, 8uLL), *v70.f32);
    v108 = vadd_f32(*&vextq_s8(v72, v72, 8uLL), *v72.i8);
    v109 = vpadd_f32(v108, v108);
    v110 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.f32);
    v111 = vadd_f32(*&vextq_s8(v75, v75, 8uLL), *v75.f32);
    v112 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.f32);
    v113 = vsubq_f32(v106, v105);
    v114 = (~vaddvq_s32(vshlq_u32(vandq_s8(vcgtq_f32(vdupq_n_s32(0x45F5C199u), vmaxq_f32(v113, vsubq_f32(v42, v113))), v43), mask(vmask4)::shift)) & 7) == 0;
    *v115.f32 = vsub_f32(vzip1_s32(vpadd_f32(v110, v110), vpadd_f32(v111, v111)), vdup_lane_s32(v109, 0));
    v116 = (&v417[34] + 20 * v31);
    v117 = vsub_f32(vpadd_f32(v112, v112), v109);
    v115.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(vpadd_f32(v107, v107).f32[0], v55, 3)), v117.u32[0]);
    *v116 = vmulq_f32(v115, xmmword_22FA11750);
    v116[1].i8[0] = v114;
    v118 = 30720.0;
    if (!v27[477].i8[2])
    {
      v118 = 65535.0;
    }

    v116[1].i8[1] = v27[450].i8[0] ^ 1 | (v27[443].f32[1] != v118) | (v27[447].f32[1] != v118);
    ++v31;
    v33 += 108;
  }

  while (v31 != v30);
  v119 = 0;
  v120 = COERCE_FLOAT(*&v27[449]) + vaddv_f32(v27[448]);
  v121 = 61440.0;
  if (v387)
  {
    *v117.i32 = 61440.0;
  }

  else
  {
    *v117.i32 = 65535.0;
  }

  if (!v389)
  {
    v121 = 65535.0;
  }

  v122 = vdupq_lane_s32(v117, 0);
  *&v122.i32[3] = v121;
  v378 = v122;
  v381 = *v27[448].f32;
  if (v389)
  {
    v123 = 15;
  }

  else
  {
    v123 = 14;
  }

  v124.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v124.i8[8] = v123;
  v124.i8[9] = v123;
  v124.i8[10] = v123;
  v124.i8[11] = v123;
  v124.i8[12] = v123;
  v124.i8[13] = v123;
  v124.i8[14] = v123;
  v124.i8[15] = v123;
  v125 = v414;
  v126 = v408;
  v397 = &v413;
  v393 = v407;
  v127 = 0uLL;
  v128 = 0.5;
  v376 = vdupq_lane_s32(201852416, 0);
  v391 = v124;
  do
  {
    v129 = &v412[21 * v119];
    v130 = &v417[34] + 5 * v119;
    v131 = *(v37 + 16 * v119);
    v132 = *(v39 + 16 * v119);
    v133 = vmaxnmq_f32(vsubq_f32(v131, v378), v127);
    v134 = vmaxnmq_f32(vsubq_f32(v132, v378), v127);
    v135 = vminnmq_f32(v131, v127);
    v136 = vminnmq_f32(v132, v127);
    v138 = vaddq_f32(vmulq_f32(v135, v135), vmulq_f32(v136, v136));
    v137 = vmulq_f32(v381, vaddq_f32(vmulq_f32(v134, v134), vaddq_f32(vmulq_f32(v133, v133), v138)));
    v138.i32[0] = v137.i32[2];
    v138.i8[0] = *(v32 + v119);
    v139 = v138.u32[0];
    v140 = ((v137.f32[2] + vaddv_f32(*v137.f32)) * v128) * v138.u32[0];
    v141 = vmuls_lane_f32(v128, v137, 3) * v138.u32[0];
    if (v387)
    {
      v142 = *(v39 + 16 * v119);
      v142.i32[3] = v142.i32[0];
      v143 = fmaxf(vminvq_f32(v142), 0.0);
      LODWORD(v144) = HIDWORD(*(v39 + 16 * v119));
      v145 = v132.f32[0] > v132.f32[1];
      v146 = v132.f32[0] > v132.f32[2];
      if (v132.f32[1] > v132.f32[2])
      {
        v147 = 1;
      }

      else
      {
        v147 = 2;
      }

      if (v144 <= v132.f32[2])
      {
        LODWORD(v144) = *(v39 + 16 * v119 + 8);
      }

      v148 = !v145 || !v146;
      if (v145 && v146)
      {
        v149 = 0;
      }

      else
      {
        v149 = v147;
      }

      v150 = (v399 | (4 * v149));
      if (!v148)
      {
        LODWORD(v144) = *(v39 + 16 * v119);
      }

      v399[0] = *(v37 + 16 * v119);
      v138.f32[0] = v144 - *v150;
      v151 = (v144 - v143);
      v152 = v138.f32[0];
      v153 = v151 < 0x2000;
      v154 = v151 < 2048;
      v155 = v151 < 1024;
      v156 = v138.f32[0] < 2048 && v151 < 0x2000;
      v157 = v152 < 2048 && v151 < 2048;
      v158 = v152 < 2048 && v151 < 1024;
      v159 = v152 < 0x2000 && v151 < 0x2000;
      v160 = v152 < 0x2000 && v151 < 2048;
      v161 = v151 < 4096;
      if (v152 >= 0x2000)
      {
        v161 = 0;
      }

      v162 = v151 < 0x8000;
      v163 = v152 < 0x2000 && v151 < 0x8000;
      v164 = v151 < 0x4000;
      v165 = vsubq_f32(v132, vdupq_lane_s32(*v138.f32, 0));
      v165.i32[3] = 0;
      v166 = v131;
      v166.i32[3] = 0;
      v167 = vsubq_f32(v165, v166);
      v168 = vmaxvq_f32(vmaxq_f32(v167, vsubq_f32(v127, v167)));
      if (v152 >= 0x2000)
      {
        v164 = 0;
      }

      v169 = v152 < 0x4000;
      if (v162 && v169)
      {
        v170 = 4;
      }

      else
      {
        v170 = 5;
      }

      v171 = &v417[34] + 5 * v119;
      if (v153 && v169)
      {
        v172 = 3;
      }

      else
      {
        v172 = v170;
      }

      v173 = v152 < 1024;
      if (v154 && v169)
      {
        v172 = 2;
      }

      v174 = v152 < 4096;
      if (v154 && v173)
      {
        v172 = 1;
      }

      if (v164 && v168 < 0x2000)
      {
        v175 = 0;
      }

      else
      {
        v175 = 8;
      }

      v176 = v168 < 4096;
      if (v163 && v176)
      {
        v175 = 1;
      }

      if (v161 && v176)
      {
        v175 = 2;
      }

      if (v159 && v168 < 2048)
      {
        v175 = 3;
      }

      v177 = v168 < 512;
      if (v156 && v177)
      {
        v178 = 4;
      }

      else
      {
        v178 = v175;
      }

      if (v160 && v168 < 1024)
      {
        v178 = 5;
      }

      if (v157 && v168 < 256)
      {
        v179 = 6;
      }

      else
      {
        v179 = v178;
      }

      v148 = !v158 || !v177;
      v180 = 7;
      if (v148)
      {
        v180 = v179;
      }

      if (v155 && v174)
      {
        v181 = 0;
      }

      else
      {
        v181 = v172;
      }

      v182 = flt_22FA117C4[v181];
      v183 = flt_22FA117DC[v180];
      v184 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v132, v132, 8uLL), *&vextq_s8(v131, v131, 8uLL)), vadd_f32(vzip1_s32(*v132.f32, *v131.f32), vzip2_s32(*v132.f32, *v131.f32))), vdup_n_s32(0x3EAAAAABu));
      v390 = vsub_f32(v184, vdup_lane_s32(v184, 1)).f32[0];
      memset_pattern16(v129, &xmmword_22FA0C1F0, 0x80uLL);
      v186 = 0;
      v187 = 0x202020202020202;
      v188 = 0x707070707070707;
      v189 = v391;
      v190 = vextq_s8(v189, v189, 8uLL).u64[0];
      v191 = &v406[84 * v119 + 884];
      vst4_s8(v191, *&v187);
      v192 = flt_22FA11770[v390 < 3968.0];
      v193 = v183 * 0.01;
      v128 = 0.5;
      if (v390 < 960.0)
      {
        v192 = 0.002;
      }

      v195 = v171[2];
      v194 = v171[3];
      v196 = v171[1];
      v197 = v126;
      v198 = v125;
      do
      {
        v199 = *&dword_22FA11780[v186 + 4] * v139;
        v200 = (v120 * v199) + (v120 * v199);
        *v197 = v123;
        *(v197 - 1) = 11;
        *(v198 - 1) = v194 + (v140 + (v200 * v193));
        *v198 = v141 + (v140 + (v200 + ((v381.f32[3] * v199) + (v381.f32[3] * v199))));
        *(v198 - 3) = (v194 + (v140 + (v200 * v192))) + v195;
        *(v198 - 2) = (v194 + (v140 + (v200 * (v182 * 0.0015)))) + v196;
        *(v197 - 3) = 1794;
        ++v186;
        v198 += 4;
        v197 += 4;
      }

      while (v186 != 13);
    }

    else
    {
      memset_pattern16(v129, &xmmword_22FA0C1F0, 0x40uLL);
      *&v406[84 * v119 + 884] = v376;
      v201 = 0.625;
      if (*(v130 + 17))
      {
        v202 = v128;
      }

      else
      {
        v201 = 1.0;
        v202 = 1.0;
      }

      if (*(v130 + 16))
      {
        v203 = v128;
      }

      else
      {
        v203 = 1.0;
      }

      v204 = 0.25;
      if (!*(v130 + 16))
      {
        v204 = 1.0;
      }

      v205 = *v130;
      v207 = v130[2];
      v206 = v130[3];
      v208 = v393;
      v209 = v397;
      v210 = dword_22FA11780;
      for (i = 4; i != 21; ++i)
      {
        if (i > 0x12)
        {
          v203 = 1.0;
        }

        v212 = *v210++;
        v213 = v212;
        if (i > 0x12)
        {
          v204 = 1.0;
        }

        v214 = (v120 * v139) * v213;
        v215 = ((v381.f32[3] * v139) + (v120 * v139)) * v213;
        *v208 = 12;
        v216 = v141 + (v140 + ((v201 * v215) * v203));
        v217 = (v140 + ((v202 * v214) * v204)) + v206;
        if ((v141 + (v140 + (v215 + v205))) >= v217)
        {
          v218 = 8;
        }

        else
        {
          v217 = v141 + (v140 + (v215 + v205));
          v218 = 10;
        }

        v219 = (v140 + v214) + v206;
        *(v208 - 1) = v218;
        v220 = (v141 + (v140 + v215)) + v207;
        *(v209 - 1) = v217;
        *v209 = v216;
        if ((v219 + v205) >= v220)
        {
          v221 = 4;
        }

        else
        {
          v220 = v219 + v205;
          v221 = 6;
        }

        *(v208 - 2) = v221;
        *(v209 - 3) = v219 + v207;
        *(v209 - 2) = v220;
        *(v208 - 3) = 0;
        v209 += 4;
        v208 += 4;
      }
    }

    ++v119;
    v125 += 84;
    v126 += 84;
    v397 += 84;
    v393 += 84;
    v222 = v388;
    v37 = v384;
    v32 = v385;
    v39 = v382;
    v127 = 0uLL;
  }

  while (v119 != v388);
  v223 = a13 + 157120;
  v224 = a13 + 165312;
  v225 = a13 + 167360;
  v226 = v375 & 0xFFFFFFFC;
  v227 = vdupq_n_s32(0x7149F2CAu);
  *(v223 + 4 * v226) = v227;
  *(v224 + v226) = 0;
  *(v225 + v226) = 0;
  v228 = v374;
  v229 = (v374 - 1) & 0xFFFFFFFC;
  *(v223 + 4 * v229) = v227;
  v386 = a13 + 169408;
  *(v224 + v229) = 0;
  *(v225 + v229) = 0;
  if (v388 > 2)
  {
    v231 = a10;
    v379 = a13 + 165312;
    v383 = a13 + 167360;
    if (v388 == 3)
    {
      for (j = 0; j != 210; j += 10)
      {
        memset_pattern16(&v403[j], &xmmword_22FA0C1F0, 0x28uLL);
      }

      v267 = &v410;
      v268 = &v416;
      v269 = &v405;
      v270 = v401;
      v271 = 4;
      do
      {
        v272 = 0;
        v273 = v270;
        v274 = v269;
        do
        {
          v275 = 0;
          v276 = v273;
          v277 = v274;
          do
          {
            if (v272 >= v275)
            {
              v278 = v275;
            }

            else
            {
              v278 = v272;
            }

            if (v272 <= v275)
            {
              v279 = v275;
            }

            else
            {
              v279 = v272;
            }

            if (v279 - v278 <= 1)
            {
              v280 = 0;
              v281 = v276;
              do
              {
                if (v280 >= v278)
                {
                  v282 = v278;
                }

                else
                {
                  v282 = v280;
                }

                if (v280 <= v279)
                {
                  v283 = v279;
                }

                else
                {
                  v283 = v280;
                }

                if (v283 - v282 <= 1)
                {
                  v284 = fminf((*(&v412[v271] + v272) + *&v414[16 * v271 + 196 + 4 * v275]) + v268[v280], 1.0e10);
                  if (v284 <= *&v277[v280])
                  {
                    *&v277[v280] = v284;
                    *(v281 - 2) = v406[4 * v271 + 884 + v272];
                    *(v281 - 1) = v408[4 * v271 + 49 + v275];
                    *v281 = *(v267 + v280);
                  }
                }

                ++v280;
                v281 += 3;
              }

              while (v280 != 4);
            }

            ++v275;
            ++v277;
            v276 += 3;
          }

          while (v275 != 4);
          ++v272;
          ++v274;
          v273 += 3;
        }

        while (v272 != 4);
        ++v271;
        v267 = (v267 + 4);
        v268 += 4;
        v269 += 10;
        v270 += 30;
      }

      while (v271 != 21);
      if (v375)
      {
        sub_22FA009B4();
      }

      v228 = v374;
      v225 = a13 + 167360;
      if (v374)
      {
        v285 = 0;
        v250 = -1;
        v286 = 1.0e30;
        v238 = v372;
        v222 = v388;
        v240 = a11;
        v239 = a12;
        v230 = a9;
        v224 = a13 + 165312;
        do
        {
          if (*(v371 + 4 * v285) >= 1.0e30)
          {
            *(v223 + 4 * v285) = 1900671690;
          }

          else
          {
            v287 = 0;
            v288 = *(v373 + v285);
            v289 = v386 + 4 * v285;
            v290 = &quant_mode_table[v288 + 384];
            v291 = -7;
            v292 = v403;
            v293 = 1.0e30;
            do
            {
              v295 = *v290;
              v290 += 128;
              v294 = v295;
              if (v295 < 4)
              {
                break;
              }

              v296 = 10 * v294;
              if (*&v292[v296] < v293)
              {
                v293 = *&v292[v296];
                v287 = v291 + 10;
              }

              ++v292;
              v262 = __CFADD__(v291++, 1);
            }

            while (!v262);
            v297 = &quant_mode_table[128 * v287 + v288];
            v298 = *v297;
            LOBYTE(v297) = v297[5];
            *(v379 + v285) = v298;
            *(v383 + v285) = v297;
            if (v298 <= 3)
            {
              *(v289 + 2) = 0;
              *v289 = 0;
            }

            else
            {
              v299 = v399 + 30 * v298 + 3 * v287 + 15;
              *v289 = *v299;
              *(v289 + 2) = v299[2];
            }

            v300 = v293 + *(v371 + 4 * v285);
            *(v223 + 4 * v285) = v300;
            if (v300 < v286)
            {
              v250 = v285;
              v286 = v300;
            }
          }

          ++v285;
        }

        while (v285 != v374);
      }

      else
      {
        v250 = -1;
        v238 = v372;
        v222 = v388;
        v240 = a11;
        v239 = a12;
        v230 = a9;
        v224 = a13 + 165312;
      }

      LODWORD(v226) = v375 & 0xFFFFFFFC;
      goto LABEL_274;
    }

    if (v388 == 4)
    {
      for (k = 0; k != 273; k += 13)
      {
        memset_pattern16(&v403[k], &xmmword_22FA0C1F0, 0x34uLL);
      }

      v315 = &v411;
      v316 = v417;
      v317 = v406;
      v318 = v402;
      v319 = 4;
      do
      {
        v320 = 0;
        v394 = v318;
        v398 = v317;
        do
        {
          v321 = 0;
          v322 = v318;
          v323 = v317;
          do
          {
            if (v320 >= v321)
            {
              v324 = v321;
            }

            else
            {
              v324 = v320;
            }

            if (v320 <= v321)
            {
              v325 = v321;
            }

            else
            {
              v325 = v320;
            }

            if (v325 - v324 <= 1)
            {
              v326 = 0;
              v327 = v322;
              v328 = v323;
              do
              {
                if (v326 >= v324)
                {
                  v329 = v324;
                }

                else
                {
                  v329 = v326;
                }

                if (v326 <= v325)
                {
                  v330 = v325;
                }

                else
                {
                  v330 = v326;
                }

                if (v330 - v329 <= 1)
                {
                  v331 = 0;
                  v332 = v327;
                  do
                  {
                    if (v331 >= v329)
                    {
                      v333 = v329;
                    }

                    else
                    {
                      v333 = v331;
                    }

                    if (v331 <= v330)
                    {
                      v334 = v330;
                    }

                    else
                    {
                      v334 = v331;
                    }

                    if (v334 - v333 <= 1)
                    {
                      v335 = fminf(((*(&v412[v319] + v320) + *&v414[16 * v319 + 196 + 4 * v321]) + *&v415[16 * v319 + 272 + 4 * v326]) + v316[v331], 1.0e10);
                      if (v335 <= *&v328[4 * v331])
                      {
                        *&v328[4 * v331] = v335;
                        *(v332 - 3) = v406[4 * v319 + 884 + v320];
                        *(v332 - 2) = v408[4 * v319 + 49 + v321];
                        *(v332 - 1) = v409[4 * v319 + 68 + v326];
                        *v332 = *(v315 + v331);
                      }
                    }

                    ++v331;
                    v332 += 4;
                  }

                  while (v331 != 4);
                }

                ++v326;
                v328 += 4;
                v327 += 4;
              }

              while (v326 != 4);
            }

            ++v321;
            v323 += 4;
            v322 += 4;
          }

          while (v321 != 4);
          ++v320;
          v317 += 4;
          v318 += 4;
        }

        while (v320 != 4);
        ++v319;
        ++v315;
        v316 += 4;
        v317 = v398 + 52;
        v318 = v394 + 52;
      }

      while (v319 != 21);
      if (v375)
      {
        sub_22FA00988();
      }

      v228 = v374;
      LODWORD(v226) = v375 & 0xFFFFFFFC;
      if (v374)
      {
        v336 = 0;
        v250 = -1;
        v337 = 1.0e30;
        v238 = v372;
        v222 = v388;
        v240 = a11;
        v239 = a12;
        v230 = a9;
        v231 = a10;
        v224 = a13 + 165312;
        v225 = a13 + 167360;
        do
        {
          if (*(v371 + 4 * v336) >= 1.0e30)
          {
            *(v223 + 4 * v336) = 1900671690;
          }

          else
          {
            v338 = 0;
            v339 = *(v373 + v336);
            v340 = &quant_mode_table[v339 + 512];
            v341 = -6;
            v342 = v403;
            v343 = 1.0e30;
            do
            {
              v345 = *v340;
              v340 += 128;
              v344 = v345;
              if (v345 < 4)
              {
                break;
              }

              v346 = 13 * v344;
              if (*&v342[v346] < v343)
              {
                v343 = *&v342[v346];
                v338 = v341 + 10;
              }

              ++v342;
              v262 = __CFADD__(v341++, 1);
            }

            while (!v262);
            v347 = &quant_mode_table[128 * v338 + v339];
            v348 = *v347;
            LOBYTE(v347) = v347[8];
            *(v379 + v336) = v348;
            *(v383 + v336) = v347;
            if (v348 <= 3)
            {
              *(v386 + 4 * v336) = 0;
            }

            else
            {
              *(v386 + 4 * v336) = *(v399 + 13 * v348 + v338 + 2);
            }

            v349 = v343 + *(v371 + 4 * v336);
            *(v223 + 4 * v336) = v349;
            if (v349 < v337)
            {
              v250 = v336;
              v337 = v349;
            }
          }

          ++v336;
        }

        while (v336 != v374);
        goto LABEL_274;
      }

      v250 = -1;
      v238 = v372;
      v222 = v388;
      v240 = a11;
      v239 = a12;
      v230 = a9;
      v231 = a10;
      v224 = a13 + 165312;
LABEL_273:
      v225 = v383;
      goto LABEL_274;
    }

LABEL_300:
    sub_22FA00A64();
  }

  v230 = a9;
  v231 = a10;
  if (v388 != 1)
  {
    if (v388 == 2)
    {
      v383 = a13 + 167360;
      for (m = 0; m != 147; m += 7)
      {
        memset_pattern16(&v403[m], &xmmword_22FA0C1F0, 0x1CuLL);
      }

      v233 = v409;
      v234 = v415;
      v235 = v400;
      v236 = &v404;
      v237 = 4;
      v238 = v372;
      v240 = a11;
      v239 = a12;
      do
      {
        v241 = 0;
        v242 = v236;
        v243 = v235;
        do
        {
          v244 = 0;
          v245 = v241;
          v246 = v243;
          do
          {
            if (v245 >= 0)
            {
              v247 = v245;
            }

            else
            {
              v247 = -v245;
            }

            if (v247 <= 1)
            {
              v248 = fminf(*(&v412[v237] + v241) + *&v234[4 * v244], 1.0e10);
              if (v248 <= *&v242[v244])
              {
                *&v242[v244] = v248;
                *(v246 - 1) = v406[4 * v237 + 884 + v241];
                *v246 = v233[v244];
              }
            }

            ++v244;
            v246 += 2;
            --v245;
          }

          while (v244 != 4);
          ++v241;
          v243 += 2;
          ++v242;
        }

        while (v241 != 4);
        ++v237;
        v233 += 4;
        v234 += 16;
        v235 += 14;
        v236 += 7;
      }

      while (v237 != 21);
      if (v375)
      {
        sub_22FA009E0();
      }

      LODWORD(v226) = v375 & 0xFFFFFFFC;
      if (v374)
      {
        v249 = 0;
        v250 = -1;
        v251 = 1.0e30;
        v222 = v388;
        do
        {
          if (*(v371 + 4 * v249) >= 1.0e30)
          {
            *(v223 + 4 * v249) = 1900671690;
          }

          else
          {
            v252 = 0;
            v253 = *(v373 + v249);
            v254 = (v386 + 4 * v249);
            v255 = &quant_mode_table[v253 + 256];
            v256 = -7;
            v257 = v403;
            v258 = 1.0e30;
            do
            {
              v260 = *v255;
              v255 += 128;
              v259 = v260;
              if (v260 < 4)
              {
                break;
              }

              v261 = 7 * v259;
              if (*&v257[v261] < v258)
              {
                v258 = *&v257[v261];
                v252 = v256 + 9;
              }

              ++v257;
              v262 = __CFADD__(v256++, 1);
            }

            while (!v262);
            v263 = &quant_mode_table[128 * v252 + v253];
            v264 = *v263;
            LOBYTE(v263) = v263[2];
            *(v224 + v249) = v264;
            *(v225 + v249) = v263;
            if (v264 <= 3)
            {
              *v254 = 0;
            }

            else
            {
              *v254 = *(&v399[1] + 7 * v264 + v252 + 2);
            }

            v265 = v258 + *(v371 + 4 * v249);
            *(v223 + 4 * v249) = v265;
            if (v265 < v251)
            {
              v250 = v249;
              v251 = v265;
            }
          }

          ++v249;
        }

        while (v249 != v374);
        goto LABEL_274;
      }

      v250 = -1;
      v222 = v388;
      goto LABEL_273;
    }

    goto LABEL_300;
  }

  v238 = v372;
  v240 = a11;
  v239 = a12;
  if (v375 >= v374)
  {
    v403[0] = -1;
    goto LABEL_276;
  }

  v301 = v375;
  v250 = -1;
  v302 = 1.0e30;
  do
  {
    if (*(v371 + 4 * v301) >= 1.0e30)
    {
      *(v223 + 4 * v301) = 1900671690;
    }

    else
    {
      v303 = 0;
      v304 = 0;
      v305 = *(v373 + v301);
      v306 = &quant_mode_table[v305 + 128];
      v307 = 1.0e30;
      do
      {
        v309 = *v306;
        v306 += 128;
        v308 = v309;
        if (v309 >= 4)
        {
          v310 = &v412[v308];
          if (v310[v303] < v307)
          {
            v307 = v310[v303];
            v304 = v303;
          }
        }

        ++v303;
      }

      while (v303 != 4);
      v311 = quant_mode_table[128 * v304 + 128 + v305];
      v312 = (v386 + 4 * v301);
      *(v224 + v301) = v311;
      *v312 = 0;
      if (v311 > 3)
      {
        *v312 = v406[4 * v311 + 884 + v304];
      }

      v313 = v307 + *(v371 + 4 * v301);
      *(v223 + 4 * v301) = v313;
      *(v225 + v301) = *(v224 + v301);
      if (v313 < v302)
      {
        v250 = v301;
        v302 = v313;
      }
    }

    ++v301;
  }

  while (v301 != v374);
LABEL_274:
  v403[0] = v250;
  if ((v250 & 0x80000000) == 0)
  {
    *(v223 + 4 * v250) = 1900671690;
  }

LABEL_276:
  if (v238 >= 2)
  {
    v350 = vorrq_s8(vdupq_n_s32(v226), xmmword_22FA083F0);
    v351 = 1;
    v352 = vdupq_n_s32(0x7149F2CAu);
    v353.i64[0] = 0x400000004;
    v353.i64[1] = 0x400000004;
    do
    {
      v354.i64[0] = -1;
      v354.i64[1] = -1;
      v355 = v352;
      if (v226 < v228)
      {
        v356 = v226;
        v355 = v352;
        v185 = v350;
        do
        {
          v357 = *(v223 + 4 * v356);
          v358 = vcgtq_f32(v355, v357);
          v355 = vbslq_s8(v358, v357, v355);
          v354 = vbslq_s8(v358, v185, v354);
          v185 = vaddq_s32(v185, v353);
          v356 += 4;
        }

        while (v356 < v228);
      }

      *&v185 = vminvq_f32(v355);
      v359 = vceqq_f32(v355, vdupq_lane_s32(*&v185, 0));
      v185 = *&vmvnq_s8(v359) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
      v360 = vminvq_s32(vorrq_s8(v185, vandq_s8(v354, v359)));
      v403[v351] = v360;
      if ((v360 & 0x80000000) != 0)
      {
        break;
      }

      *(v223 + 4 * v360) = 1900671690;
      ++v351;
    }

    while (v351 != v238);
  }

  v361 = 0;
  if (v238)
  {
    while (1)
    {
      v362 = v403[v361];
      if ((v362 & 0x80000000) != 0)
      {
        break;
      }

      *(v231 + 4 * v361) = v362;
      *(v240 + 4 * v361) = *(v224 + v362);
      v363 = *(v225 + v362);
      *(v239 + 4 * v361) = v363;
      if ((*(v240 + 4 * v361) - 21) <= 0xFFFFFFEE)
      {
        sub_22FA00A38();
      }

      if ((v363 - 21) < 0xFFFFFFEF)
      {
        sub_22FA00A0C();
      }

      v364 = (a13 + 169408 + 4 * v362);
      v365 = v222;
      v366 = v230;
      do
      {
        v367 = *v364++;
        *v366++ = v367;
        --v365;
      }

      while (v365);
      ++v361;
      v230 += 4;
      if (v361 == v238)
      {
        v361 = v238;
        break;
      }
    }
  }

  if (v361 >= v238)
  {
    return v238;
  }

  else
  {
    return v361;
  }
}