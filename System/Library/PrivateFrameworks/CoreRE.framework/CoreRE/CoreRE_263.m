uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, float32x4_t a7, float32x2_t a8, double a9, int8x8_t a10)
{
  v10 = a4;
  v11 = a3;
  v359 = *MEMORY[0x1E69E9840];
  v15 = a1->i64[1];
  v16 = (v15 + 20);
  v17 = vld1_dup_f32(v16);
  v18 = *(a2 + 8);
  v19 = &v18[1].f32[1];
  v20 = vld1_dup_f32(v19);
  v21 = vmin_f32(v17, v20);
  v22 = vdup_n_s32(0x3DCCCCCDu);
  v23 = vmul_f32(v21, v22);
  v21.i32[0] = *(v15 + 16);
  v22.i32[0] = v18[1].i32[0];
  a10.i32[0] = -*(v15 + 32);
  v24 = vand_s8(a10, v21);
  v25 = vdup_lane_s32(v24, 0);
  v24.i32[0] = -v18[2].u8[0];
  v26 = vdup_lane_s32(vand_s8(v24, v22), 0);
  v332 = v25;
  v333 = v26.f32[0];
  v27 = vadd_f32(v25, v26);
  v340 = 0;
  v28 = *a5;
  __asm { FMOV            V11.2S, #1.0 }

  if (!*a5)
  {
    v57 = vmulq_f32(a7, a7);
    v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
    v48 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v57.f32, *v57.f32)), 0)), a7, xmmword_1E3047670);
    v58 = vmulq_f32(v48, v48);
    v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
    v59 = vpadd_f32(*v58.f32, *v58.f32);
    v60 = vrsqrte_f32(v59);
    v61 = 4;
    do
    {
      v60 = vmul_f32(v60, vrsqrts_f32(vmul_f32(v60, v60), v59));
      --v61;
    }

    while (v61);
    v62 = vbsl_s8(vdup_lane_s32(vceqz_f32(v59), 0), v59, vmul_f32(v59, v60));
    v63 = vrecpe_f32(v62);
    v64 = 4;
    do
    {
      v63 = vmul_f32(v63, vrecps_f32(v62, v63));
      --v64;
    }

    while (v64);
    v65 = vmulq_n_f32(v48, v63.f32[0]);
    v65.i32[3] = 0;
    v336 = v65;
    v66 = vneg_f32(0x80000000800000);
    v67.i64[0] = -1;
    v67.i64[1] = -1;
    v68 = 0uLL;
    goto LABEL_52;
  }

  v34 = 0;
  v35 = a1[1].i64[0];
  v36 = v15 + 48;
  v37 = v18[3];
  v38 = vnegq_f32(v37);
  v38.i32[3] = 0;
  v39 = -1;
  do
  {
    v40 = a3[v34];
    *(&v347 + v34) = v40;
    v41 = a4[v34];
    *(&v344 + v34) = v41;
    v42 = *(v36 + 16 * v40);
    v43 = vmulq_n_f32(*v35, v42.f32[0]);
    v43.i32[3] = 0;
    v44 = vmulq_lane_f32(v35[1], *v42.f32, 1);
    v44.i32[3] = 0;
    v45 = vmulq_laneq_f32(v35[2], v42, 2);
    v45.i32[3] = 0;
    v46 = vaddq_f32(v35[3], vaddq_f32(vaddq_f32(v43, v44), v45));
    v47 = vbslq_s8(physx::boxVertexTable[v41], v37, v38);
    v48 = vsubq_f32(v46, v47);
    *(&v353 + v34) = v46;
    *(&v350 + v34) = v47;
    *(&v356 + v34) = v48;
    ++v39;
    ++v34;
  }

  while (v28 != v34);
  v340 = v28;
  if (v39 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v356, &v353, &v350, &v347, &v344, &v340);
    goto LABEL_47;
  }

  if (v39 != 2)
  {
    if (v39 != 1)
    {
      goto LABEL_47;
    }

    v48 = v356;
    v49 = vsubq_f32(v357, v356);
    v50 = vmulq_f32(v49, v49);
    v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
    v51 = vpadd_f32(*v50.f32, *v50.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v51), 0), *v356.f32).u32[0] != -1)
    {
      v52 = vnegq_f32(v356);
      v52.i32[3] = 0;
      v53 = vmulq_f32(v52, v49);
      v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
      v54 = vpadd_f32(*v53.f32, *v53.f32);
      v55 = vrecpe_f32(v51);
      v56 = 4;
      do
      {
        v55 = vmul_f32(v55, vrecps_f32(v51, v55));
        --v56;
      }

      while (v56);
      v48 = vmlaq_n_f32(v356, v49, vmax_f32(vmin_f32(vmul_f32(v54, v55), _D11), 0).f32[0]);
LABEL_31:
      v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v340 = 1;
    goto LABEL_47;
  }

  v340 = 3;
  v48 = v356;
  v69 = vsubq_f32(v357, v356);
  v70 = vsubq_f32(v358[0], v356);
  v72 = vmls_f32(vmul_f32(*v69.f32, *&vextq_s8(v70, v70, 4uLL)), *&vextq_s8(v69, v69, 4uLL), *v70.f32);
  *v71.f32 = vext_s8(v72, vmls_f32(vmul_f32(*&vextq_s8(v69, v69, 8uLL), *v70.f32), *v69.f32, *&vextq_s8(v70, v70, 8uLL)), 4uLL);
  v72.i32[1] = 0;
  v73 = vpadd_f32(vmul_f32(*v71.f32, *v71.f32), vmul_f32(v72.u32[0], v72.u32[0]));
  v74 = vpadd_f32(v73, v73);
  if (v74.f32[0] <= 0.00000011921)
  {
    v340 = 2;
    v113 = vmulq_f32(v69, v69);
    v113.i64[0] = vpaddq_f32(v113, v113).u64[0];
    v114 = vpadd_f32(*v113.f32, *v113.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v114), 0), *v356.f32).u32[0] != -1)
    {
      v115 = vnegq_f32(v356);
      v115.i32[3] = 0;
      v116 = vmulq_f32(v115, v69);
      v116.i64[0] = vpaddq_f32(v116, v116).u64[0];
      v117 = vpadd_f32(*v116.f32, *v116.f32);
      v118 = vrecpe_f32(v114);
      v119 = 4;
      do
      {
        v118 = vmul_f32(v118, vrecps_f32(v114, v118));
        --v119;
      }

      while (v119);
      v48 = vmlaq_n_f32(v356, v69, vmax_f32(vmin_f32(vmul_f32(v117, v118), _D11), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v71.u32[2] = v72;
  v75 = vextq_s8(v357, v357, 8uLL).u64[0];
  v76 = vextq_s8(v358[0], v358[0], 8uLL).u64[0];
  v77 = vextq_s8(v358[0], v358[0], 4uLL).u64[0];
  v78 = vextq_s8(v357, v357, 4uLL).u64[0];
  v79 = vmls_f32(vmul_f32(*v357.f32, v77), v78, *v358[0].i8);
  *v80.f32 = vext_s8(v79, vmls_f32(vmul_f32(v75, *v358[0].i8), *v357.f32, v76), 4uLL);
  v80.i64[1] = v79.u32[0];
  v81 = vextq_s8(v356, v356, 8uLL).u64[0];
  v82 = vextq_s8(v356, v356, 4uLL).u64[0];
  v83 = vmls_f32(vmul_f32(v82, *v358[0].i8), v77, *v356.f32);
  *v84.f32 = vext_s8(v83, vmls_f32(vmul_f32(*v356.f32, v76), *v358[0].i8, v81), 4uLL);
  v84.i64[1] = v83.u32[0];
  v85 = vmls_f32(vmul_f32(*v356.f32, v78), v82, *v357.f32);
  *v86.f32 = vext_s8(v85, vmls_f32(vmul_f32(v81, *v357.f32), *v356.f32, v75), 4uLL);
  v86.i64[1] = v85.u32[0];
  v87 = vmulq_f32(v80, v71);
  v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
  v88 = vpadd_f32(*v87.f32, *v87.f32);
  v89 = vmulq_f32(v84, v71);
  v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
  v90 = vpadd_f32(*v89.f32, *v89.f32);
  v91 = vmulq_f32(v86, v71);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  v92 = vpadd_f32(*v91.f32, *v91.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v90), vcgez_f32(v88)), vcgez_f32(v92)), 0), *v356.f32).u32[0] == -1)
  {
    v120 = vmulq_f32(v356, v71);
    v121 = vextq_s8(v120, v120, 8uLL).u64[0];
    v122 = vrecpe_f32(v74);
    v123 = 4;
    do
    {
      v122 = vmul_f32(v122, vrecps_f32(v74, v122));
      --v123;
    }

    while (v123);
    v124 = vpadd_f32(*v120.i8, v121);
    v48 = vmulq_n_f32(v71, vmul_f32(v122, vpadd_f32(v124, v124)).f32[0]);
    v48.i32[3] = 0;
    goto LABEL_47;
  }

  v93 = vnegq_f32(v356);
  v93.i32[3] = 0;
  v94 = vnegq_f32(v357);
  v94.i32[3] = 0;
  v95 = vmulq_f32(v93, v69);
  v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
  v96 = vpadd_f32(*v95.f32, *v95.f32);
  v97 = vmulq_f32(v69, v94);
  v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
  v98 = vpadd_f32(*v97.f32, *v97.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v92), vand_s8(vclez_f32(v98), vcgez_f32(v96))), 0), *v356.f32).u32[0] == -1)
  {
    v125 = vsub_f32(v96, v98);
    v126 = vrecpe_f32(v125);
    v127 = 4;
    do
    {
      v126 = vmul_f32(v126, vrecps_f32(v125, v126));
      --v127;
    }

    while (v127);
    v111 = 0;
    v48 = vmlaq_n_f32(v356, v69, vmul_f32(v96, vbsl_s8(vcgt_f32(vabs_f32(v125), 0x3400000034000000), v126, 0)).f32[0]);
    v110 = 2;
    v112 = &v345;
    v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
  }

  else
  {
    v99 = vnegq_f32(v358[0]);
    v99.i32[3] = 0;
    v100 = vmulq_f32(v94, v70);
    v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
    v101 = vpadd_f32(*v100.f32, *v100.f32);
    v102 = vmulq_f32(v69, v99);
    v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
    v103 = vpadd_f32(*v102.f32, *v102.f32);
    v104 = vmulq_f32(v70, v99);
    v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
    v105 = vpadd_f32(*v104.f32, *v104.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v101, v98), vcge_f32(v103, v105)), vclez_f32(v88)), 0), *v356.f32).u32[0] == -1)
    {
      v132 = vsub_f32(v101, v98);
      v133 = vadd_f32(v132, vsub_f32(v103, v105));
      v134 = vrecpe_f32(v133);
      v135 = 4;
      do
      {
        v134 = vmul_f32(v134, vrecps_f32(v133, v134));
        --v135;
      }

      while (v135);
      v136 = vmlaq_n_f32(v357, vsubq_f32(v358[0], v357), vmul_f32(v132, vbsl_s8(vcgt_f32(vabs_f32(v133), 0x3400000034000000), v134, 0)).f32[0]);
      v110 = 2;
      v111 = 1;
      v128 = &v349;
      v112 = &v346;
      v136.i64[1] = vextq_s8(v136, v136, 8uLL).u32[0];
      v130 = v355;
      v129 = v352;
      v131 = v358;
      v48 = v136;
      goto LABEL_46;
    }

    v106 = vmulq_f32(v93, v70);
    v107 = vpaddq_f32(v106, v106);
    *v107.i8 = vpadd_f32(*v107.i8, *v107.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v90), vand_s8(vclez_f32(v105), vcgez_f32(*v107.i8))), 0), *v356.f32).u32[0] == -1)
    {
      v137 = vsub_f32(*v107.i8, v105);
      v138 = vrecpe_f32(v137);
      v139 = 4;
      do
      {
        v138 = vmul_f32(v138, vrecps_f32(v137, v138));
        --v139;
      }

      while (v139);
      v111 = 0;
      v48 = vmlaq_n_f32(v356, v70, vmul_f32(*v107.i8, vbsl_s8(vcgt_f32(vabs_f32(v137), 0x3400000034000000), v138, 0)).f32[0]);
      v110 = 2;
      v128 = &v349;
      v112 = &v346;
      v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
      v130 = v355;
      v129 = v352;
      v131 = v358;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v107.i8), vclez_f32(v96)), 0), *v356.f32).u32[0] == -1)
    {
      v111 = 0;
      v110 = 1;
      v112 = &v345;
    }

    else
    {
      *v107.i8 = vcge_f32(v98, v101);
      *v48.f32 = vdup_lane_s16(vand_s8(*v107.i8, vcgez_f32(v98)), 0);
      *v48.f32 = vuzp1_s8(*v48.f32, *v48.f32);
      v107.i32[0] = -1;
      v108 = v48.i32[0];
      v109 = vdupq_lane_s32(*&vceqq_s32(v48, v107), 0);
      v110 = 1;
      if (v108 == -1)
      {
        v111 = 1;
      }

      else
      {
        v111 = 2;
      }

      v112 = &v345;
      v48 = vbslq_s8(v109, v357, v358[0]);
    }
  }

  v129 = &v351;
  v128 = &v348;
  v130 = &v354;
  v131 = &v357;
LABEL_46:
  v140 = *(&v356 + v111);
  v141 = *v131;
  v142 = *(&v353 + v111);
  v143 = *v130;
  v144 = *(&v350 + v111);
  v145 = *v129;
  v146 = *(&v347 + v111);
  v147 = *v128;
  v148 = *(&v344 + v111);
  v149 = *v112;
  v356 = v140;
  v357 = v141;
  v353 = v142;
  v354 = v143;
  v350 = v144;
  v351 = v145;
  v347 = v146;
  v348 = v147;
  v344 = v148;
  v345 = v149;
  v340 = v110;
LABEL_47:
  v150 = vmulq_f32(v48, v48);
  v150.i64[0] = vpaddq_f32(v150, v150).u64[0];
  v151 = vpadd_f32(*v150.f32, *v150.f32);
  v152 = vrsqrte_f32(v151);
  v153 = 4;
  do
  {
    v152 = vmul_f32(v152, vrsqrts_f32(vmul_f32(v152, v152), v151));
    --v153;
  }

  while (v153);
  v66 = vbsl_s8(vdup_lane_s32(vceqz_f32(v151), 0), v151, vmul_f32(v151, v152));
  v154 = vrecpe_f32(v66);
  v155 = 4;
  do
  {
    v154 = vmul_f32(v154, vrecps_f32(v66, v154));
    --v155;
  }

  while (v155);
  v156 = vmulq_n_f32(v48, v154.f32[0]);
  v156.i32[3] = 0;
  v336 = v156;
  v67 = vdupq_lane_s32(vcgt_f32(v66, v23), 0);
  v68 = v48;
LABEL_52:
  v157 = vadd_f32(v27, a8);
  v158 = xmmword_1E3102070;
  LODWORD(v158) = -1;
  v331 = v158;
  v159 = v66;
  v160.i64[0] = -1;
  v160.i64[1] = -1;
  while (1)
  {
    v161 = v48;
    v162.i64[0] = -1;
    v162.i64[1] = -1;
    *v162.i8 = vmovn_s32(vceqq_s32(v67, v162));
    if (vuzp1_s8(*v162.i8, *v162.i8).u32[0] != -1)
    {
      break;
    }

    v337 = v66;
    v338 = v161;
    v163 = vnegq_f32(v161);
    v163.i32[3] = 0;
    v341 = v163;
    *v164.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(a1, &v341, &v347 + v340);
    v68 = v338;
    v165 = v164;
    v166 = v340;
    v167 = *(a2 + 8);
    v168 = vcgtzq_f32(v338);
    v169 = v336;
    v170 = vandq_s8(v168, xmmword_1E3102070);
    v170.i64[0] = vpaddq_s32(v170, v170).u64[0];
    *(&v344 + v340) = vpadd_s32(*v170.i8, *v170.i8).u32[0] & 7;
    v171 = v167[3];
    v172 = vnegq_f32(v171);
    v172.i32[3] = 0;
    v173 = vbslq_s8(v168, v171, v172);
    v48 = vsubq_f32(v165, v173);
    v174 = vmulq_f32(v336, v48);
    v174.i64[0] = vpaddq_f32(v174, v174).u64[0];
    v175 = vpadd_f32(*v174.f32, *v174.f32);
    if ((vmvn_s8(vcgt_f32(v175, v157)).u8[0] & 1) == 0)
    {
      if (v11)
      {
        *a5 = v166;
        if (v166)
        {
          v280 = &v344;
          v281 = &v347;
          do
          {
            v282 = *v281++;
            *v11++ = v282;
            v283 = *v280++;
            *v10++ = v283;
            --v166;
          }

          while (v166);
        }
      }

      return 0;
    }

    v176 = v337;
    if (v175.f32[0] > (0.99977 * v337.f32[0]))
    {
      v341 = v338;
      if (v11)
      {
        *a5 = v166;
        if (v166)
        {
          v284 = &v344;
          v285 = &v347;
          v286 = v166;
          do
          {
            v287 = *v285++;
            *v11++ = v287;
            v288 = *v284++;
            *v10++ = v288;
            --v286;
          }

          while (v286);
          goto LABEL_116;
        }

        *(a6 + 32) = v336;
        v289 = 0uLL;
        v290 = 0uLL;
      }

      else
      {
LABEL_116:
        *(a6 + 32) = v336;
        if (v166 == 3)
        {
          v342 = 0;
          v343 = 0;
          physx::Gu::barycentricCoordinates(&v341, &v356, &v357, v358, &v343, &v342);
          v169 = v336;
          v176 = v337;
          v306 = vmulq_n_f32(vsubq_f32(v354, v353), v343.f32[0]);
          v306.i32[3] = 0;
          v307 = vmulq_n_f32(vsubq_f32(v355[0], v353), v342.f32[0]);
          v307.i32[3] = 0;
          v308 = vaddq_f32(v306, v307);
          v309 = vmulq_n_f32(vsubq_f32(v351, v350), v343.f32[0]);
          v309.i32[3] = 0;
          v289 = vaddq_f32(v353, v308);
          v310 = vmulq_n_f32(vsubq_f32(v352[0], v350), v342.f32[0]);
          v310.i32[3] = 0;
          v290 = vaddq_f32(v350, vaddq_f32(v309, v310));
        }

        else if (v166 == 2)
        {
          v298 = vsubq_f32(v356, v338);
          v299 = vsubq_f32(vsubq_f32(v357, v338), v298);
          v300 = vmulq_f32(v299, v299);
          v300.i64[0] = vpaddq_f32(v300, v300).u64[0];
          v301 = vpadd_f32(*v300.f32, *v300.f32);
          v302 = vrecpe_f32(v301);
          v303 = 4;
          do
          {
            v302 = vmul_f32(v302, vrecps_f32(v301, v302));
            --v303;
          }

          while (v303);
          v304 = vnegq_f32(v298);
          v304.i32[3] = 0;
          v305 = vmulq_f32(v304, v299);
          v305.i64[0] = vpaddq_f32(v305, v305).u64[0];
          v304.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v301), v302, 0), vpadd_f32(*v305.f32, *v305.f32)).u32[0];
          v289 = vmlaq_n_f32(v353, vsubq_f32(v354, v353), v304.f32[0]);
          v289.i64[1] = vextq_s8(v289, v289, 8uLL).u32[0];
          v290 = vmlaq_n_f32(v350, vsubq_f32(v351, v350), v304.f32[0]);
          v290.i64[1] = vextq_s8(v290, v290, 8uLL).u32[0];
        }

        else
        {
          v289 = 0uLL;
          v290 = 0uLL;
          if (v166 == 1)
          {
            v289 = v353;
            v290 = v350;
          }
        }
      }

      v311 = vmlsq_lane_f32(v289, v169, v332, 0);
      v311.i64[1] = vextq_s8(v311, v311, 8uLL).u32[0];
      v312 = vmlaq_n_f32(v290, v169, v333);
      v312.i64[1] = vextq_s8(v312, v312, 8uLL).u32[0];
      *a6 = v311;
      *(a6 + 16) = v312;
      *(a6 + 64) = vsub_f32(v176, v27);
      return 2;
    }

    *(&v353 + v166) = v165;
    *(&v350 + v166) = v173;
    v340 = v166 + 1;
    *(&v356 + v166) = v48;
    switch(v166)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v356, &v353, &v350, &v347, &v344, &v340);
        v176 = v337;
        v68 = v338;
        break;
      case 2:
        v48 = v356;
        v185 = vsubq_f32(v357, v356);
        v186 = vsubq_f32(v358[0], v356);
        v188 = vmls_f32(vmul_f32(*v185.f32, *&vextq_s8(v186, v186, 4uLL)), *&vextq_s8(v185, v185, 4uLL), *v186.f32);
        *v187.f32 = vext_s8(v188, vmls_f32(vmul_f32(*&vextq_s8(v185, v185, 8uLL), *v186.f32), *v185.f32, *&vextq_s8(v186, v186, 8uLL)), 4uLL);
        v188.i32[1] = 0;
        v340 = 3;
        v189 = vpadd_f32(vmul_f32(*v187.f32, *v187.f32), vmul_f32(v188.u32[0], v188.u32[0]));
        v190 = vpadd_f32(v189, v189);
        if (v190.f32[0] <= 0.00000011921)
        {
          v340 = 2;
          v229 = vmulq_f32(v185, v185);
          v229.i64[0] = vpaddq_f32(v229, v229).u64[0];
          v230 = vpadd_f32(*v229.f32, *v229.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v230), 0), *v356.f32).u32[0] == -1)
          {
LABEL_79:
            v340 = 1;
            break;
          }

          v231 = vnegq_f32(v356);
          v231.i32[3] = 0;
          v232 = vmulq_f32(v231, v185);
          v232.i64[0] = vpaddq_f32(v232, v232).u64[0];
          v233 = vpadd_f32(*v232.f32, *v232.f32);
          v234 = vrecpe_f32(v230);
          v235 = 4;
          do
          {
            v234 = vmul_f32(v234, vrecps_f32(v230, v234));
            --v235;
          }

          while (v235);
          v48 = vmlaq_n_f32(v356, v185, vmax_f32(vmin_f32(vmul_f32(v233, v234), _D11), 0).f32[0]);
          goto LABEL_78;
        }

        *&v187.u32[2] = v188;
        v191 = vextq_s8(v357, v357, 8uLL).u64[0];
        v192 = vextq_s8(v358[0], v358[0], 8uLL).u64[0];
        v193 = vextq_s8(v358[0], v358[0], 4uLL).u64[0];
        v194 = vextq_s8(v357, v357, 4uLL).u64[0];
        v195 = vmls_f32(vmul_f32(*v357.f32, v193), v194, *v358[0].i8);
        *v196.f32 = vext_s8(v195, vmls_f32(vmul_f32(v191, *v358[0].i8), *v357.f32, v192), 4uLL);
        v196.i64[1] = v195.u32[0];
        v197 = vextq_s8(v356, v356, 8uLL).u64[0];
        v198 = vextq_s8(v356, v356, 4uLL).u64[0];
        v199 = vmls_f32(vmul_f32(v198, *v358[0].i8), v193, *v356.f32);
        *v200.f32 = vext_s8(v199, vmls_f32(vmul_f32(*v356.f32, v192), *v358[0].i8, v197), 4uLL);
        v200.i64[1] = v199.u32[0];
        v201 = vmls_f32(vmul_f32(*v356.f32, v194), v198, *v357.f32);
        *v202.f32 = vext_s8(v201, vmls_f32(vmul_f32(v197, *v357.f32), *v356.f32, v191), 4uLL);
        v202.i64[1] = v201.u32[0];
        v203 = vmulq_f32(v196, v187);
        v203.i64[0] = vpaddq_f32(v203, v203).u64[0];
        v204 = vpadd_f32(*v203.f32, *v203.f32);
        v205 = vmulq_f32(v200, v187);
        v205.i64[0] = vpaddq_f32(v205, v205).u64[0];
        v206 = vpadd_f32(*v205.f32, *v205.f32);
        v207 = vmulq_f32(v202, v187);
        v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
        v208 = vpadd_f32(*v207.f32, *v207.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v206), vcgez_f32(v204)), vcgez_f32(v208)), 0), *v356.f32).u32[0] != -1)
        {
          v209 = vnegq_f32(v356);
          v209.i32[3] = 0;
          v210 = vnegq_f32(v357);
          v210.i32[3] = 0;
          v211 = vmulq_f32(v209, v185);
          v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
          v212 = vpadd_f32(*v211.f32, *v211.f32);
          v213 = vmulq_f32(v185, v210);
          v213.i64[0] = vpaddq_f32(v213, v213).u64[0];
          v214 = vpadd_f32(*v213.f32, *v213.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v208), vand_s8(vclez_f32(v214), vcgez_f32(v212))), 0), *v356.f32).u32[0] == -1)
          {
            v241 = vsub_f32(v212, v214);
            v242 = vrecpe_f32(v241);
            v243 = 4;
            do
            {
              v242 = vmul_f32(v242, vrecps_f32(v241, v242));
              --v243;
            }

            while (v243);
            v227 = 0;
            v48 = vmlaq_n_f32(v356, v185, vmul_f32(v212, vbsl_s8(vcgt_f32(vabs_f32(v241), 0x3400000034000000), v242, 0)).f32[0]);
            v226 = 2;
            v228 = &v345;
            v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
            goto LABEL_86;
          }

          v215 = vnegq_f32(v358[0]);
          v215.i32[3] = 0;
          v216 = vmulq_f32(v210, v186);
          v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
          v217 = vpadd_f32(*v216.f32, *v216.f32);
          v218 = vmulq_f32(v185, v215);
          v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
          v219 = vpadd_f32(*v218.f32, *v218.f32);
          v220 = vmulq_f32(v186, v215);
          v220.i64[0] = vpaddq_f32(v220, v220).u64[0];
          v221 = vpadd_f32(*v220.f32, *v220.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v217, v214), vcge_f32(v219, v221)), vclez_f32(v204)), 0), *v356.f32).u32[0] == -1)
          {
            v248 = vsub_f32(v217, v214);
            v249 = vadd_f32(v248, vsub_f32(v219, v221));
            v250 = vrecpe_f32(v249);
            v251 = 4;
            do
            {
              v250 = vmul_f32(v250, vrecps_f32(v249, v250));
              --v251;
            }

            while (v251);
            v252 = vmlaq_n_f32(v357, vsubq_f32(v358[0], v357), vmul_f32(v248, vbsl_s8(vcgt_f32(vabs_f32(v249), 0x3400000034000000), v250, 0)).f32[0]);
            v252.i64[1] = vextq_s8(v252, v252, 8uLL).u32[0];
            v226 = 2;
            v48 = v252;
            v227 = 1;
            v228 = &v346;
          }

          else
          {
            v222 = vmulq_f32(v209, v186);
            v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
            v223 = vpadd_f32(*v222.f32, *v222.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v206), vand_s8(vclez_f32(v221), vcgez_f32(v223))), 0), *v356.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v223), vclez_f32(v212)), 0), *v356.f32).u32[0] == -1)
              {
                v227 = 0;
                v226 = 1;
                v228 = &v345;
              }

              else
              {
                *v48.f32 = vdup_lane_s16(vand_s8(vcge_f32(v214, v217), vcgez_f32(v214)), 0);
                *v48.f32 = vuzp1_s8(*v48.f32, *v48.f32);
                v224 = v48.i32[0];
                v225 = vdupq_lane_s32(*&vceqq_s32(v48, v331), 0);
                v226 = 1;
                if (v224 == -1)
                {
                  v227 = 1;
                }

                else
                {
                  v227 = 2;
                }

                v228 = &v345;
                v48 = vbslq_s8(v225, v357, v358[0]);
              }

LABEL_86:
              v245 = &v351;
              v244 = &v348;
              v246 = &v354;
              v247 = &v357;
LABEL_94:
              v256 = *(&v356 + v227);
              v257 = *v247;
              v258 = *(&v353 + v227);
              v259 = *v246;
              v260 = *(&v350 + v227);
              v261 = *v245;
              v262 = *(&v347 + v227);
              v263 = *v244;
              v264 = *(&v344 + v227);
              v265 = *v228;
              v356 = v256;
              v357 = v257;
              v353 = v258;
              v354 = v259;
              v350 = v260;
              v351 = v261;
              v347 = v262;
              v348 = v263;
              v344 = v264;
              v345 = v265;
              v340 = v226;
              break;
            }

            v253 = vsub_f32(v223, v221);
            v254 = vrecpe_f32(v253);
            v255 = 4;
            do
            {
              v254 = vmul_f32(v254, vrecps_f32(v253, v254));
              --v255;
            }

            while (v255);
            v227 = 0;
            v48 = vmlaq_n_f32(v356, v186, vmul_f32(v223, vbsl_s8(vcgt_f32(vabs_f32(v253), 0x3400000034000000), v254, 0)).f32[0]);
            v226 = 2;
            v228 = &v346;
            v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
          }

          v245 = v352;
          v244 = &v349;
          v246 = v355;
          v247 = v358;
          goto LABEL_94;
        }

        v236 = vmulq_f32(v356, v187);
        v237 = vextq_s8(v236, v236, 8uLL).u64[0];
        v238 = vrecpe_f32(v190);
        v239 = 4;
        do
        {
          v238 = vmul_f32(v238, vrecps_f32(v190, v238));
          --v239;
        }

        while (v239);
        v240 = vpadd_f32(*v236.i8, v237);
        v48 = vmulq_n_f32(v187, vmul_f32(v238, vpadd_f32(v240, v240)).f32[0]);
        v48.i32[3] = 0;
        break;
      case 1:
        v48 = v356;
        v177 = vsubq_f32(v357, v356);
        v178 = vmulq_f32(v177, v177);
        v178.i64[0] = vpaddq_f32(v178, v178).u64[0];
        v179 = vpadd_f32(*v178.f32, *v178.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v179), 0), *v356.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v180 = vnegq_f32(v356);
        v180.i32[3] = 0;
        v181 = vmulq_f32(v180, v177);
        v181.i64[0] = vpaddq_f32(v181, v181).u64[0];
        v182 = vpadd_f32(*v181.f32, *v181.f32);
        v183 = vrecpe_f32(v179);
        v184 = 4;
        do
        {
          v183 = vmul_f32(v183, vrecps_f32(v179, v183));
          --v184;
        }

        while (v184);
        v48 = vmlaq_n_f32(v356, v177, vmax_f32(vmin_f32(vmul_f32(v182, v183), _D11), 0).f32[0]);
LABEL_78:
        v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
        break;
    }

    v266 = vmulq_f32(v48, v48);
    v266.i64[0] = vpaddq_f32(v266, v266).u64[0];
    v267 = vpadd_f32(*v266.f32, *v266.f32);
    v268 = vrsqrte_f32(v267);
    v269 = 4;
    do
    {
      v268 = vmul_f32(v268, vrsqrts_f32(vmul_f32(v268, v268), v267));
      --v269;
    }

    while (v269);
    v66 = vbsl_s8(vdup_lane_s32(vceqz_f32(v267), 0), v267, vmul_f32(v267, v268));
    v270 = vrecpe_f32(v66);
    v271 = 4;
    do
    {
      v270 = vmul_f32(v270, vrecps_f32(v66, v270));
      --v271;
    }

    while (v271);
    v272 = vmulq_n_f32(v48, v270.f32[0]);
    v272.i32[3] = 0;
    v336 = v272;
    *v272.f32 = vcgt_f32(v176, v66);
    v160 = vdupq_lane_s32(*v272.f32, 0);
    v67 = vdupq_lane_s32(vand_s8(vcgt_f32(v66, v23), *v272.f32), 0);
    v159 = v176;
  }

  v273 = vmovn_s32(vceqzq_s32(v160));
  v274 = v340;
  if (vuzp1_s8(v273, v273).u32[0] == -1)
  {
    if (v11)
    {
      v291 = v340 - 1;
      *a5 = v340 - 1;
      if (v274 == 1)
      {
LABEL_127:
        v296 = v353;
        v297 = v350;
        goto LABEL_138;
      }

      v292 = &v344;
      v293 = &v347;
      do
      {
        v294 = *v293++;
        *v11++ = v294;
        v295 = *v292++;
        *v10++ = v295;
        --v291;
      }

      while (v291);
    }

    v341 = v68;
    if (v274 == 3)
    {
      v342 = 0;
      v343 = 0;
      v339 = v68;
      physx::Gu::barycentricCoordinates(&v341, &v356, &v357, v358, &v343, &v342);
      v321 = vmulq_n_f32(vsubq_f32(v354, v353), v343.f32[0]);
      v321.i32[3] = 0;
      v322 = vmulq_n_f32(vsubq_f32(v355[0], v353), v342.f32[0]);
      v322.i32[3] = 0;
      v323 = vaddq_f32(v321, v322);
      v324 = vmulq_n_f32(vsubq_f32(v351, v350), v343.f32[0]);
      v324.i32[3] = 0;
      v296 = vaddq_f32(v353, v323);
      v325 = vmulq_n_f32(vsubq_f32(v352[0], v350), v342.f32[0]);
      v68 = v339;
      v325.i32[3] = 0;
      v297 = vaddq_f32(v350, vaddq_f32(v324, v325));
    }

    else
    {
      if (v274 == 2)
      {
        v313 = vsubq_f32(v356, v68);
        v314 = vsubq_f32(vsubq_f32(v357, v68), v313);
        v315 = vmulq_f32(v314, v314);
        v315.i64[0] = vpaddq_f32(v315, v315).u64[0];
        v316 = vpadd_f32(*v315.f32, *v315.f32);
        v317 = vrecpe_f32(v316);
        v318 = 4;
        do
        {
          v317 = vmul_f32(v317, vrecps_f32(v316, v317));
          --v318;
        }

        while (v318);
        v319 = vnegq_f32(v313);
        v319.i32[3] = 0;
        v320 = vmulq_f32(v319, v314);
        v320.i64[0] = vpaddq_f32(v320, v320).u64[0];
        v319.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v316), v317, 0), vpadd_f32(*v320.f32, *v320.f32)).u32[0];
        v296 = vmlaq_n_f32(v353, vsubq_f32(v354, v353), v319.f32[0]);
        v296.i64[1] = vextq_s8(v296, v296, 8uLL).u32[0];
        v297 = vmlaq_n_f32(v350, vsubq_f32(v351, v350), v319.f32[0]);
        v297.i64[1] = vextq_s8(v297, v297, 8uLL).u32[0];
        goto LABEL_138;
      }

      v296 = 0uLL;
      v297 = 0uLL;
      if (v274 == 1)
      {
        goto LABEL_127;
      }
    }

LABEL_138:
    v326 = vrecpe_f32(v159);
    v327 = 4;
    do
    {
      v326 = vmul_f32(v326, vrecps_f32(v159, v326));
      --v327;
    }

    while (v327);
    v328 = vmulq_n_f32(v68, v326.f32[0]);
    v328.i32[3] = 0;
    *(a6 + 32) = v328;
    *(a6 + 48) = v336;
    v329 = vmlsq_lane_f32(v296, v328, v332, 0);
    v329.i64[1] = vextq_s8(v329, v329, 8uLL).u32[0];
    v330 = vmlaq_n_f32(v297, v328, v333);
    v330.i64[1] = vextq_s8(v330, v330, 8uLL).u32[0];
    *a6 = v329;
    *(a6 + 16) = v330;
    *(a6 + 64) = vsub_f32(v159, v27);
    if (vcge_f32(v27, v159).u8[0])
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  if (v11)
  {
    *a5 = v340;
    if (v274)
    {
      v275 = &v344;
      v276 = &v347;
      do
      {
        v277 = *v276++;
        *v11++ = v277;
        v278 = *v275++;
        *v10++ = v278;
        --v274;
      }

      while (v274);
    }
  }

  return 5;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, float32x4_t a7, float32x2_t a8, double a9, float32x4_t a10, int8x8_t a11, int8x8_t a12)
{
  v13 = a3;
  v357 = *MEMORY[0x1E69E9840];
  v17 = a1->i64[1];
  v18 = (v17 + 20);
  v19 = vld1_dup_f32(v18);
  v20 = *(a2 + 8);
  v21 = &v20[1].f32[1];
  v22 = vld1_dup_f32(v21);
  a10.i32[0] = *(v17 + 16);
  a11.i32[0] = v20[1].i32[0];
  a12.i32[0] = -*(v17 + 32);
  v23 = vand_s8(a12, *a10.f32);
  v24 = vdup_lane_s32(v23, 0);
  v23.i32[0] = -v20[2].u8[0];
  v25 = vdup_lane_s32(vand_s8(v23, a11), 0);
  v26 = vmul_f32(vmin_f32(v19, v22), vdup_n_s32(0x3DCCCCCDu));
  v329 = v24;
  v330 = v25.f32[0];
  v27 = vadd_f32(v24, v25);
  v340 = 0uLL;
  v339 = 0;
  v28 = *a5;
  __asm { FMOV            V11.2S, #1.0 }

  if (!*a5)
  {
    v61 = vmulq_f32(a7, a7);
    v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
    v53 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v61.f32, *v61.f32)), 0)), a7, xmmword_1E3047670);
    v340 = v53;
    v62 = vmulq_f32(v53, v53);
    v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
    v63 = vpadd_f32(*v62.f32, *v62.f32);
    v64 = vrsqrte_f32(v63);
    v65 = 4;
    do
    {
      v64 = vmul_f32(v64, vrsqrts_f32(vmul_f32(v64, v64), v63));
      --v65;
    }

    while (v65);
    v66 = vbsl_s8(vdup_lane_s32(vceqz_f32(v63), 0), v63, vmul_f32(v63, v64));
    v67 = vrecpe_f32(v66);
    v68 = 4;
    do
    {
      *a10.f32 = vrecps_f32(v66, v67);
      v67 = vmul_f32(v67, *a10.f32);
      --v68;
    }

    while (v68);
    v69 = vmulq_n_f32(v53, v67.f32[0]);
    v69.i32[3] = 0;
    v335 = v69;
    v70 = vneg_f32(0x80000000800000);
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v72 = 0uLL;
    goto LABEL_52;
  }

  v34 = 0;
  v35 = a1[1].i64[0];
  v36 = v17 + 48;
  v37 = v20[10].i64[0];
  v38 = v20[3];
  v39 = v20[4];
  v40 = -1;
  a10 = v20[5];
  do
  {
    v41 = a3[v34];
    *(&v345 + v34) = v41;
    v42 = a4[v34];
    *(&v342 + v34) = v42;
    v43 = *(v36 + 16 * v41);
    v44 = vmulq_n_f32(*v35, v43.f32[0]);
    v44.i32[3] = 0;
    v45 = vmulq_lane_f32(v35[1], *v43.f32, 1);
    v45.i32[3] = 0;
    v46 = vmulq_laneq_f32(v35[2], v43, 2);
    v46.i32[3] = 0;
    v47 = vaddq_f32(v35[3], vaddq_f32(vaddq_f32(v44, v45), v46));
    v48 = *(v37 + 12 * v42);
    v49 = vmulq_n_f32(v38, v48.f32[0]);
    v49.i32[3] = 0;
    v50 = vmulq_lane_f32(v39, *v48.f32, 1);
    v50.i32[3] = 0;
    v51 = vmulq_laneq_f32(a10, v48, 2);
    v51.i32[3] = 0;
    v52 = vaddq_f32(v51, vaddq_f32(v49, v50));
    v53 = vsubq_f32(v47, v52);
    *(&v351 + v34) = v47;
    *(&v348 + v34) = v52;
    *(&v354 + v34) = v53;
    ++v40;
    ++v34;
  }

  while (v28 != v34);
  v339 = v28;
  if (v40 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v354, &v351, &v348, &v345, &v342, &v339);
    goto LABEL_47;
  }

  if (v40 != 2)
  {
    if (v40 != 1)
    {
      goto LABEL_47;
    }

    v53 = v354;
    v54 = vsubq_f32(v355, v354);
    v55 = vmulq_f32(v54, v54);
    v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
    v56 = vpadd_f32(*v55.f32, *v55.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v56), 0), *v354.f32).u32[0] != -1)
    {
      v57 = vnegq_f32(v354);
      v57.i32[3] = 0;
      v58 = vmulq_f32(v57, v54);
      a10 = vpaddq_f32(v58, v58);
      *a10.f32 = vpadd_f32(*a10.f32, *a10.f32);
      v59 = vrecpe_f32(v56);
      v60 = 4;
      do
      {
        v59 = vmul_f32(v59, vrecps_f32(v56, v59));
        --v60;
      }

      while (v60);
      v53 = vmlaq_n_f32(v354, v54, vmax_f32(vmin_f32(vmul_f32(*a10.f32, v59), _D11), 0).f32[0]);
LABEL_31:
      v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v339 = 1;
    goto LABEL_47;
  }

  v339 = 3;
  v53 = v354;
  a10 = vsubq_f32(v355, v354);
  v73 = vsubq_f32(v356[0], v354);
  v75 = vmls_f32(vmul_f32(*a10.f32, *&vextq_s8(v73, v73, 4uLL)), *&vextq_s8(a10, a10, 4uLL), *v73.f32);
  *v74.f32 = vext_s8(v75, vmls_f32(vmul_f32(*&vextq_s8(a10, a10, 8uLL), *v73.f32), *a10.f32, *&vextq_s8(v73, v73, 8uLL)), 4uLL);
  v75.i32[1] = 0;
  v76 = vpadd_f32(vmul_f32(*v74.f32, *v74.f32), vmul_f32(v75.u32[0], v75.u32[0]));
  v77 = vpadd_f32(v76, v76);
  if (v77.f32[0] <= 0.00000011921)
  {
    v339 = 2;
    v116 = vmulq_f32(a10, a10);
    v116.i64[0] = vpaddq_f32(v116, v116).u64[0];
    v117 = vpadd_f32(*v116.f32, *v116.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v117), 0), *v354.f32).u32[0] != -1)
    {
      v118 = vnegq_f32(v354);
      v118.i32[3] = 0;
      v119 = vmulq_f32(v118, a10);
      v119.i64[0] = vpaddq_f32(v119, v119).u64[0];
      v120 = vpadd_f32(*v119.f32, *v119.f32);
      v121 = vrecpe_f32(v117);
      v122 = 4;
      do
      {
        v121 = vmul_f32(v121, vrecps_f32(v117, v121));
        --v122;
      }

      while (v122);
      v53 = vmlaq_n_f32(v354, a10, vmax_f32(vmin_f32(vmul_f32(v120, v121), _D11), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v74.u32[2] = v75;
  v78 = vextq_s8(v355, v355, 8uLL).u64[0];
  v79 = vextq_s8(v356[0], v356[0], 8uLL).u64[0];
  v80 = vextq_s8(v356[0], v356[0], 4uLL).u64[0];
  v81 = vextq_s8(v355, v355, 4uLL).u64[0];
  v82 = vmls_f32(vmul_f32(*v355.f32, v80), v81, *v356[0].f32);
  *v83.f32 = vext_s8(v82, vmls_f32(vmul_f32(v78, *v356[0].f32), *v355.f32, v79), 4uLL);
  v83.i64[1] = v82.u32[0];
  v84 = vextq_s8(v354, v354, 8uLL).u64[0];
  v85 = vextq_s8(v354, v354, 4uLL).u64[0];
  v86 = vmls_f32(vmul_f32(v85, *v356[0].f32), v80, *v354.f32);
  *v87.f32 = vext_s8(v86, vmls_f32(vmul_f32(*v354.f32, v79), *v356[0].f32, v84), 4uLL);
  v87.i64[1] = v86.u32[0];
  v88 = vmls_f32(vmul_f32(*v354.f32, v81), v85, *v355.f32);
  *v89.f32 = vext_s8(v88, vmls_f32(vmul_f32(v84, *v355.f32), *v354.f32, v78), 4uLL);
  v89.i64[1] = v88.u32[0];
  v90 = vmulq_f32(v83, v74);
  v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
  v91 = vpadd_f32(*v90.f32, *v90.f32);
  v92 = vmulq_f32(v87, v74);
  v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
  v93 = vpadd_f32(*v92.f32, *v92.f32);
  v94 = vmulq_f32(v89, v74);
  v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
  v95 = vpadd_f32(*v94.f32, *v94.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v93), vcgez_f32(v91)), vcgez_f32(v95)), 0), *v354.f32).u32[0] == -1)
  {
    v123 = vmulq_f32(v354, v74);
    v124 = vextq_s8(v123, v123, 8uLL).u64[0];
    v125 = vrecpe_f32(v77);
    v126 = 4;
    do
    {
      v125 = vmul_f32(v125, vrecps_f32(v77, v125));
      --v126;
    }

    while (v126);
    v127 = vpadd_f32(*v123.i8, v124);
    v53 = vmulq_n_f32(v74, vmul_f32(v125, vpadd_f32(v127, v127)).f32[0]);
    v53.i32[3] = 0;
    goto LABEL_47;
  }

  v96 = vnegq_f32(v354);
  v96.i32[3] = 0;
  v97 = vnegq_f32(v355);
  v97.i32[3] = 0;
  v98 = vmulq_f32(v96, a10);
  v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
  v99 = vpadd_f32(*v98.f32, *v98.f32);
  v100 = vmulq_f32(a10, v97);
  v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
  v101 = vpadd_f32(*v100.f32, *v100.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v95), vand_s8(vclez_f32(v101), vcgez_f32(v99))), 0), *v354.f32).u32[0] == -1)
  {
    v128 = vsub_f32(v99, v101);
    v129 = vrecpe_f32(v128);
    v130 = 4;
    do
    {
      v129 = vmul_f32(v129, vrecps_f32(v128, v129));
      --v130;
    }

    while (v130);
    v114 = 0;
    v53 = vmlaq_n_f32(v354, a10, vmul_f32(v99, vbsl_s8(vcgt_f32(vabs_f32(v128), 0x3400000034000000), v129, 0)).f32[0]);
    v113 = 2;
    v115 = &v343;
    v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
  }

  else
  {
    v102 = vnegq_f32(v356[0]);
    v102.i32[3] = 0;
    v103 = vmulq_f32(v97, v73);
    v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
    v104 = vpadd_f32(*v103.f32, *v103.f32);
    v105 = vmulq_f32(a10, v102);
    v105.i64[0] = vpaddq_f32(v105, v105).u64[0];
    v106 = vpadd_f32(*v105.f32, *v105.f32);
    v107 = vmulq_f32(v73, v102);
    v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
    v108 = vpadd_f32(*v107.f32, *v107.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v104, v101), vcge_f32(v106, v108)), vclez_f32(v91)), 0), *v354.f32).u32[0] == -1)
    {
      v135 = vsub_f32(v104, v101);
      v136 = vadd_f32(v135, vsub_f32(v106, v108));
      v137 = vrecpe_f32(v136);
      v138 = 4;
      do
      {
        v137 = vmul_f32(v137, vrecps_f32(v136, v137));
        --v138;
      }

      while (v138);
      v139 = vmlaq_n_f32(v355, vsubq_f32(v356[0], v355), vmul_f32(v135, vbsl_s8(vcgt_f32(vabs_f32(v136), 0x3400000034000000), v137, 0)).f32[0]);
      v113 = 2;
      v114 = 1;
      v131 = &v347;
      v115 = &v344;
      v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
      v133 = v353;
      v132 = v350;
      v134 = v356;
      v53 = v139;
      goto LABEL_46;
    }

    v109 = vmulq_f32(v96, v73);
    v110 = vpaddq_f32(v109, v109);
    *v110.i8 = vpadd_f32(*v110.i8, *v110.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v93), vand_s8(vclez_f32(v108), vcgez_f32(*v110.i8))), 0), *v354.f32).u32[0] == -1)
    {
      v140 = vsub_f32(*v110.i8, v108);
      v141 = vrecpe_f32(v140);
      v142 = 4;
      do
      {
        v141 = vmul_f32(v141, vrecps_f32(v140, v141));
        --v142;
      }

      while (v142);
      v114 = 0;
      v53 = vmlaq_n_f32(v354, v73, vmul_f32(*v110.i8, vbsl_s8(vcgt_f32(vabs_f32(v140), 0x3400000034000000), v141, 0)).f32[0]);
      v113 = 2;
      v131 = &v347;
      v115 = &v344;
      v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
      v133 = v353;
      v132 = v350;
      v134 = v356;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v110.i8), vclez_f32(v99)), 0), *v354.f32).u32[0] == -1)
    {
      v114 = 0;
      v113 = 1;
      v115 = &v343;
    }

    else
    {
      *v110.i8 = vcge_f32(v101, v104);
      *v53.f32 = vdup_lane_s16(vand_s8(*v110.i8, vcgez_f32(v101)), 0);
      *v53.f32 = vuzp1_s8(*v53.f32, *v53.f32);
      v110.i32[0] = -1;
      v111 = v53.i32[0];
      v112 = vdupq_lane_s32(*&vceqq_s32(v53, v110), 0);
      v113 = 1;
      if (v111 == -1)
      {
        v114 = 1;
      }

      else
      {
        v114 = 2;
      }

      v115 = &v343;
      v53 = vbslq_s8(v112, v355, v356[0]);
    }
  }

  v132 = &v349;
  v131 = &v346;
  v133 = &v352;
  v134 = &v355;
LABEL_46:
  v143 = *(&v354 + v114);
  v144 = *v134;
  a10 = *(&v351 + v114);
  v145 = *v133;
  v146 = *(&v348 + v114);
  v147 = *v132;
  v148 = *(&v345 + v114);
  v149 = *v131;
  v150 = *(&v342 + v114);
  v151 = *v115;
  v354 = v143;
  v355 = v144;
  v351 = a10;
  v352 = v145;
  v348 = v146;
  v349 = v147;
  v345 = v148;
  v346 = v149;
  v342 = v150;
  v343 = v151;
  v339 = v113;
LABEL_47:
  v340 = v53;
  v152 = vmulq_f32(v53, v53);
  v152.i64[0] = vpaddq_f32(v152, v152).u64[0];
  v153 = vpadd_f32(*v152.f32, *v152.f32);
  v154 = vrsqrte_f32(v153);
  v155 = 4;
  do
  {
    v154 = vmul_f32(v154, vrsqrts_f32(vmul_f32(v154, v154), v153));
    --v155;
  }

  while (v155);
  v70 = vbsl_s8(vdup_lane_s32(vceqz_f32(v153), 0), v153, vmul_f32(v153, v154));
  v156 = vrecpe_f32(v70);
  v157 = 4;
  do
  {
    *a10.f32 = vrecps_f32(v70, v156);
    v156 = vmul_f32(v156, *a10.f32);
    --v157;
  }

  while (v157);
  v158 = vmulq_n_f32(v53, v156.f32[0]);
  v158.i32[3] = 0;
  v335 = v158;
  v71 = vdupq_lane_s32(vcgt_f32(v70, v26), 0);
  v72 = v53;
LABEL_52:
  v159 = vadd_f32(v27, a8);
  a10.i32[0] = -1;
  v328 = a10;
  v160 = v70;
  v161.i64[0] = -1;
  v161.i64[1] = -1;
  while (1)
  {
    v162 = v53;
    v163.i64[0] = -1;
    v163.i64[1] = -1;
    *v163.i8 = vmovn_s32(vceqq_s32(v71, v163));
    if (vuzp1_s8(*v163.i8, *v163.i8).u32[0] != -1)
    {
      break;
    }

    v333 = v162;
    v164 = vnegq_f32(v162);
    v164.i32[3] = 0;
    v336 = v70;
    v338 = v164;
    *v165.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(a1, &v338, &v345 + v339);
    v334 = v165;
    *v166.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v340, &v342 + v339);
    v167 = v335;
    v168 = v166;
    v53 = vsubq_f32(v334, v166);
    v169 = vmulq_f32(v335, v53);
    v169.i64[0] = vpaddq_f32(v169, v169).u64[0];
    v170 = vpadd_f32(*v169.f32, *v169.f32);
    if ((vmvn_s8(vcgt_f32(v170, v159)).u8[0] & 1) == 0)
    {
      if (v13)
      {
        v276 = v339;
        *a5 = v339;
        if (v276)
        {
          v277 = &v342;
          v278 = &v345;
          do
          {
            v279 = *v278++;
            *v13++ = v279;
            v280 = *v277++;
            *a4++ = v280;
            --v276;
          }

          while (v276);
        }
      }

      return 0;
    }

    v171 = v336;
    v172 = v339;
    if (v170.f32[0] > (0.99977 * v336.f32[0]))
    {
      if (v13)
      {
        *a5 = v339;
        if (v172)
        {
          v281 = &v342;
          v282 = &v345;
          v283 = v172;
          do
          {
            v284 = *v282++;
            *v13++ = v284;
            v285 = *v281++;
            *a4++ = v285;
            --v283;
          }

          while (v283);
          goto LABEL_116;
        }

        *(a6 + 32) = v335;
        v286 = 0uLL;
        v287 = 0uLL;
      }

      else
      {
LABEL_116:
        *(a6 + 32) = v335;
        if (v172 == 3)
        {
          v338.i64[0] = 0;
          v341 = 0;
          physx::Gu::barycentricCoordinates(&v340, &v354, &v355, v356, &v338, &v341);
          v167 = v335;
          v171 = v336;
          v303 = vmulq_n_f32(vsubq_f32(v352, v351), v338.f32[0]);
          v303.i32[3] = 0;
          v304 = vmulq_n_f32(vsubq_f32(v353[0], v351), v341.f32[0]);
          v304.i32[3] = 0;
          v305 = vaddq_f32(v303, v304);
          v306 = vmulq_n_f32(vsubq_f32(v349, v348), v338.f32[0]);
          v306.i32[3] = 0;
          v286 = vaddq_f32(v351, v305);
          v307 = vmulq_n_f32(vsubq_f32(v350[0], v348), v341.f32[0]);
          v307.i32[3] = 0;
          v287 = vaddq_f32(v348, vaddq_f32(v306, v307));
        }

        else if (v172 == 2)
        {
          v295 = vsubq_f32(v354, v340);
          v296 = vsubq_f32(vsubq_f32(v355, v340), v295);
          v297 = vmulq_f32(v296, v296);
          v297.i64[0] = vpaddq_f32(v297, v297).u64[0];
          v298 = vpadd_f32(*v297.f32, *v297.f32);
          v299 = vrecpe_f32(v298);
          v300 = 4;
          do
          {
            v299 = vmul_f32(v299, vrecps_f32(v298, v299));
            --v300;
          }

          while (v300);
          v301 = vnegq_f32(v295);
          v301.i32[3] = 0;
          v302 = vmulq_f32(v301, v296);
          v302.i64[0] = vpaddq_f32(v302, v302).u64[0];
          v301.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v298), v299, 0), vpadd_f32(*v302.f32, *v302.f32)).u32[0];
          v286 = vmlaq_n_f32(v351, vsubq_f32(v352, v351), v301.f32[0]);
          v286.i64[1] = vextq_s8(v286, v286, 8uLL).u32[0];
          v287 = vmlaq_n_f32(v348, vsubq_f32(v349, v348), v301.f32[0]);
          v287.i64[1] = vextq_s8(v287, v287, 8uLL).u32[0];
        }

        else
        {
          v286 = 0uLL;
          v287 = 0uLL;
          if (v172 == 1)
          {
            v286 = v351;
            v287 = v348;
          }
        }
      }

      v308 = vmlsq_lane_f32(v286, v167, v329, 0);
      v308.i64[1] = vextq_s8(v308, v308, 8uLL).u32[0];
      v309 = vmlaq_n_f32(v287, v167, v330);
      v309.i64[1] = vextq_s8(v309, v309, 8uLL).u32[0];
      *a6 = v308;
      *(a6 + 16) = v309;
      *(a6 + 64) = vsub_f32(v171, v27);
      return 2;
    }

    *(&v351 + v339) = v334;
    *(&v348 + v172) = v168;
    v339 = v172 + 1;
    *(&v354 + v172) = v53;
    switch(v172)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v354, &v351, &v348, &v345, &v342, &v339);
        v171 = v336;
        break;
      case 2:
        v53 = v354;
        v181 = vsubq_f32(v355, v354);
        v182 = vsubq_f32(v356[0], v354);
        v184 = vmls_f32(vmul_f32(*v181.f32, *&vextq_s8(v182, v182, 4uLL)), *&vextq_s8(v181, v181, 4uLL), *v182.f32);
        *v183.f32 = vext_s8(v184, vmls_f32(vmul_f32(*&vextq_s8(v181, v181, 8uLL), *v182.f32), *v181.f32, *&vextq_s8(v182, v182, 8uLL)), 4uLL);
        v184.i32[1] = 0;
        v339 = 3;
        v185 = vpadd_f32(vmul_f32(*v183.f32, *v183.f32), vmul_f32(v184.u32[0], v184.u32[0]));
        v186 = vpadd_f32(v185, v185);
        if (v186.f32[0] <= 0.00000011921)
        {
          v339 = 2;
          v225 = vmulq_f32(v181, v181);
          v225.i64[0] = vpaddq_f32(v225, v225).u64[0];
          v226 = vpadd_f32(*v225.f32, *v225.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v226), 0), *v354.f32).u32[0] == -1)
          {
LABEL_79:
            v339 = 1;
            break;
          }

          v227 = vnegq_f32(v354);
          v227.i32[3] = 0;
          v228 = vmulq_f32(v227, v181);
          v228.i64[0] = vpaddq_f32(v228, v228).u64[0];
          v229 = vpadd_f32(*v228.f32, *v228.f32);
          v230 = vrecpe_f32(v226);
          v231 = 4;
          do
          {
            v230 = vmul_f32(v230, vrecps_f32(v226, v230));
            --v231;
          }

          while (v231);
          v53 = vmlaq_n_f32(v354, v181, vmax_f32(vmin_f32(vmul_f32(v229, v230), _D11), 0).f32[0]);
          goto LABEL_78;
        }

        *&v183.u32[2] = v184;
        v187 = vextq_s8(v355, v355, 8uLL).u64[0];
        v188 = vextq_s8(v356[0], v356[0], 8uLL).u64[0];
        v189 = vextq_s8(v356[0], v356[0], 4uLL).u64[0];
        v190 = vextq_s8(v355, v355, 4uLL).u64[0];
        v191 = vmls_f32(vmul_f32(*v355.f32, v189), v190, *v356[0].f32);
        *v192.f32 = vext_s8(v191, vmls_f32(vmul_f32(v187, *v356[0].f32), *v355.f32, v188), 4uLL);
        v192.i64[1] = v191.u32[0];
        v193 = vextq_s8(v354, v354, 8uLL).u64[0];
        v194 = vextq_s8(v354, v354, 4uLL).u64[0];
        v195 = vmls_f32(vmul_f32(v194, *v356[0].f32), v189, *v354.f32);
        *v196.f32 = vext_s8(v195, vmls_f32(vmul_f32(*v354.f32, v188), *v356[0].f32, v193), 4uLL);
        v196.i64[1] = v195.u32[0];
        v197 = vmls_f32(vmul_f32(*v354.f32, v190), v194, *v355.f32);
        *v198.f32 = vext_s8(v197, vmls_f32(vmul_f32(v193, *v355.f32), *v354.f32, v187), 4uLL);
        v198.i64[1] = v197.u32[0];
        v199 = vmulq_f32(v192, v183);
        v199.i64[0] = vpaddq_f32(v199, v199).u64[0];
        v200 = vpadd_f32(*v199.f32, *v199.f32);
        v201 = vmulq_f32(v196, v183);
        v201.i64[0] = vpaddq_f32(v201, v201).u64[0];
        v202 = vpadd_f32(*v201.f32, *v201.f32);
        v203 = vmulq_f32(v198, v183);
        v203.i64[0] = vpaddq_f32(v203, v203).u64[0];
        v204 = vpadd_f32(*v203.f32, *v203.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v202), vcgez_f32(v200)), vcgez_f32(v204)), 0), *v354.f32).u32[0] != -1)
        {
          v205 = vnegq_f32(v354);
          v205.i32[3] = 0;
          v206 = vnegq_f32(v355);
          v206.i32[3] = 0;
          v207 = vmulq_f32(v205, v181);
          v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
          v208 = vpadd_f32(*v207.f32, *v207.f32);
          v209 = vmulq_f32(v181, v206);
          v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
          v210 = vpadd_f32(*v209.f32, *v209.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v204), vand_s8(vclez_f32(v210), vcgez_f32(v208))), 0), *v354.f32).u32[0] == -1)
          {
            v237 = vsub_f32(v208, v210);
            v238 = vrecpe_f32(v237);
            v239 = 4;
            do
            {
              v238 = vmul_f32(v238, vrecps_f32(v237, v238));
              --v239;
            }

            while (v239);
            v223 = 0;
            v53 = vmlaq_n_f32(v354, v181, vmul_f32(v208, vbsl_s8(vcgt_f32(vabs_f32(v237), 0x3400000034000000), v238, 0)).f32[0]);
            v222 = 2;
            v224 = &v343;
            v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
            goto LABEL_86;
          }

          v211 = vnegq_f32(v356[0]);
          v211.i32[3] = 0;
          v212 = vmulq_f32(v206, v182);
          v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
          v213 = vpadd_f32(*v212.f32, *v212.f32);
          v214 = vmulq_f32(v181, v211);
          v214.i64[0] = vpaddq_f32(v214, v214).u64[0];
          v215 = vpadd_f32(*v214.f32, *v214.f32);
          v216 = vmulq_f32(v182, v211);
          v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
          v217 = vpadd_f32(*v216.f32, *v216.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v213, v210), vcge_f32(v215, v217)), vclez_f32(v200)), 0), *v354.f32).u32[0] == -1)
          {
            v244 = vsub_f32(v213, v210);
            v245 = vadd_f32(v244, vsub_f32(v215, v217));
            v246 = vrecpe_f32(v245);
            v247 = 4;
            do
            {
              v246 = vmul_f32(v246, vrecps_f32(v245, v246));
              --v247;
            }

            while (v247);
            v248 = vmlaq_n_f32(v355, vsubq_f32(v356[0], v355), vmul_f32(v244, vbsl_s8(vcgt_f32(vabs_f32(v245), 0x3400000034000000), v246, 0)).f32[0]);
            v248.i64[1] = vextq_s8(v248, v248, 8uLL).u32[0];
            v222 = 2;
            v53 = v248;
            v223 = 1;
            v224 = &v344;
          }

          else
          {
            v218 = vmulq_f32(v205, v182);
            v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
            v219 = vpadd_f32(*v218.f32, *v218.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v202), vand_s8(vclez_f32(v217), vcgez_f32(v219))), 0), *v354.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v219), vclez_f32(v208)), 0), *v354.f32).u32[0] == -1)
              {
                v223 = 0;
                v222 = 1;
                v224 = &v343;
              }

              else
              {
                *v53.f32 = vdup_lane_s16(vand_s8(vcge_f32(v210, v213), vcgez_f32(v210)), 0);
                *v53.f32 = vuzp1_s8(*v53.f32, *v53.f32);
                v220 = v53.i32[0];
                v221 = vdupq_lane_s32(*&vceqq_s32(v53, v328), 0);
                v222 = 1;
                if (v220 == -1)
                {
                  v223 = 1;
                }

                else
                {
                  v223 = 2;
                }

                v224 = &v343;
                v53 = vbslq_s8(v221, v355, v356[0]);
              }

LABEL_86:
              v241 = &v349;
              v240 = &v346;
              v242 = &v352;
              v243 = &v355;
LABEL_94:
              v252 = *(&v354 + v223);
              v253 = *v243;
              v254 = *(&v351 + v223);
              v255 = *v242;
              v256 = *(&v348 + v223);
              v257 = *v241;
              v258 = *(&v345 + v223);
              v259 = *v240;
              v260 = *(&v342 + v223);
              v261 = *v224;
              v354 = v252;
              v355 = v253;
              v351 = v254;
              v352 = v255;
              v348 = v256;
              v349 = v257;
              v345 = v258;
              v346 = v259;
              v342 = v260;
              v343 = v261;
              v339 = v222;
              break;
            }

            v249 = vsub_f32(v219, v217);
            v250 = vrecpe_f32(v249);
            v251 = 4;
            do
            {
              v250 = vmul_f32(v250, vrecps_f32(v249, v250));
              --v251;
            }

            while (v251);
            v223 = 0;
            v53 = vmlaq_n_f32(v354, v182, vmul_f32(v219, vbsl_s8(vcgt_f32(vabs_f32(v249), 0x3400000034000000), v250, 0)).f32[0]);
            v222 = 2;
            v224 = &v344;
            v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
          }

          v241 = v350;
          v240 = &v347;
          v242 = v353;
          v243 = v356;
          goto LABEL_94;
        }

        v232 = vmulq_f32(v354, v183);
        v233 = vextq_s8(v232, v232, 8uLL).u64[0];
        v234 = vrecpe_f32(v186);
        v235 = 4;
        do
        {
          v234 = vmul_f32(v234, vrecps_f32(v186, v234));
          --v235;
        }

        while (v235);
        v236 = vpadd_f32(*v232.i8, v233);
        v53 = vmulq_n_f32(v183, vmul_f32(v234, vpadd_f32(v236, v236)).f32[0]);
        v53.i32[3] = 0;
        break;
      case 1:
        v53 = v354;
        v173 = vsubq_f32(v355, v354);
        v174 = vmulq_f32(v173, v173);
        v174.i64[0] = vpaddq_f32(v174, v174).u64[0];
        v175 = vpadd_f32(*v174.f32, *v174.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v175), 0), *v354.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v176 = vnegq_f32(v354);
        v176.i32[3] = 0;
        v177 = vmulq_f32(v176, v173);
        v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
        v178 = vpadd_f32(*v177.f32, *v177.f32);
        v179 = vrecpe_f32(v175);
        v180 = 4;
        do
        {
          v179 = vmul_f32(v179, vrecps_f32(v175, v179));
          --v180;
        }

        while (v180);
        v53 = vmlaq_n_f32(v354, v173, vmax_f32(vmin_f32(vmul_f32(v178, v179), _D11), 0).f32[0]);
LABEL_78:
        v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
        break;
    }

    v340 = v53;
    v262 = vmulq_f32(v53, v53);
    v262.i64[0] = vpaddq_f32(v262, v262).u64[0];
    v263 = vpadd_f32(*v262.f32, *v262.f32);
    v264 = vrsqrte_f32(v263);
    v265 = 4;
    do
    {
      v264 = vmul_f32(v264, vrsqrts_f32(vmul_f32(v264, v264), v263));
      --v265;
    }

    while (v265);
    v70 = vbsl_s8(vdup_lane_s32(vceqz_f32(v263), 0), v263, vmul_f32(v263, v264));
    v266 = vrecpe_f32(v70);
    v267 = 4;
    do
    {
      v266 = vmul_f32(v266, vrecps_f32(v70, v266));
      --v267;
    }

    while (v267);
    v268 = vmulq_n_f32(v53, v266.f32[0]);
    v268.i32[3] = 0;
    v335 = v268;
    *v268.f32 = vcgt_f32(v171, v70);
    v161 = vdupq_lane_s32(*v268.f32, 0);
    v71 = vdupq_lane_s32(vand_s8(vcgt_f32(v70, v26), *v268.f32), 0);
    v160 = v171;
    v72 = v333;
  }

  v269 = vmovn_s32(vceqzq_s32(v161));
  v270 = v339;
  if (vuzp1_s8(v269, v269).u32[0] == -1)
  {
    if (v13)
    {
      v288 = v339 - 1;
      *a5 = v339 - 1;
      if (v270 == 1)
      {
LABEL_127:
        v293 = v351;
        v294 = v348;
        goto LABEL_138;
      }

      v289 = &v342;
      v290 = &v345;
      do
      {
        v291 = *v290++;
        *v13++ = v291;
        v292 = *v289++;
        *a4++ = v292;
        --v288;
      }

      while (v288);
    }

    v340 = v72;
    if (v270 == 3)
    {
      v338.i64[0] = 0;
      v341 = 0;
      v337 = v72;
      physx::Gu::barycentricCoordinates(&v340, &v354, &v355, v356, &v338, &v341);
      v318 = vmulq_n_f32(vsubq_f32(v352, v351), v338.f32[0]);
      v318.i32[3] = 0;
      v319 = vmulq_n_f32(vsubq_f32(v353[0], v351), v341.f32[0]);
      v319.i32[3] = 0;
      v320 = vaddq_f32(v318, v319);
      v321 = vmulq_n_f32(vsubq_f32(v349, v348), v338.f32[0]);
      v321.i32[3] = 0;
      v293 = vaddq_f32(v351, v320);
      v322 = vmulq_n_f32(vsubq_f32(v350[0], v348), v341.f32[0]);
      v72 = v337;
      v322.i32[3] = 0;
      v294 = vaddq_f32(v348, vaddq_f32(v321, v322));
    }

    else
    {
      if (v270 == 2)
      {
        v310 = vsubq_f32(v354, v72);
        v311 = vsubq_f32(vsubq_f32(v355, v72), v310);
        v312 = vmulq_f32(v311, v311);
        v312.i64[0] = vpaddq_f32(v312, v312).u64[0];
        v313 = vpadd_f32(*v312.f32, *v312.f32);
        v314 = vrecpe_f32(v313);
        v315 = 4;
        do
        {
          v314 = vmul_f32(v314, vrecps_f32(v313, v314));
          --v315;
        }

        while (v315);
        v316 = vnegq_f32(v310);
        v316.i32[3] = 0;
        v317 = vmulq_f32(v316, v311);
        v317.i64[0] = vpaddq_f32(v317, v317).u64[0];
        v316.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v313), v314, 0), vpadd_f32(*v317.f32, *v317.f32)).u32[0];
        v293 = vmlaq_n_f32(v351, vsubq_f32(v352, v351), v316.f32[0]);
        v293.i64[1] = vextq_s8(v293, v293, 8uLL).u32[0];
        v294 = vmlaq_n_f32(v348, vsubq_f32(v349, v348), v316.f32[0]);
        v294.i64[1] = vextq_s8(v294, v294, 8uLL).u32[0];
        goto LABEL_138;
      }

      v293 = 0uLL;
      v294 = 0uLL;
      if (v270 == 1)
      {
        goto LABEL_127;
      }
    }

LABEL_138:
    v323 = vrecpe_f32(v160);
    v324 = 4;
    do
    {
      v323 = vmul_f32(v323, vrecps_f32(v160, v323));
      --v324;
    }

    while (v324);
    v325 = vmulq_n_f32(v72, v323.f32[0]);
    v325.i32[3] = 0;
    *(a6 + 32) = v325;
    *(a6 + 48) = v335;
    v326 = vmlsq_lane_f32(v293, v325, v329, 0);
    v326.i64[1] = vextq_s8(v326, v326, 8uLL).u32[0];
    v327 = vmlaq_n_f32(v294, v325, v330);
    v327.i64[1] = vextq_s8(v327, v327, 8uLL).u32[0];
    *a6 = v326;
    *(a6 + 16) = v327;
    *(a6 + 64) = vsub_f32(v160, v27);
    if (vcge_f32(v27, v160).u8[0])
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  if (v13)
  {
    *a5 = v339;
    if (v270)
    {
      v271 = &v342;
      v272 = &v345;
      do
      {
        v273 = *v272++;
        *v13++ = v273;
        v274 = *v271++;
        *a4++ = v274;
        --v270;
      }

      while (v270);
    }
  }

  return 5;
}

uint64_t physx::Gu::contactBoxConvex(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v27[0] = xmmword_1E3047670;
  v27[1] = xmmword_1E3047670;
  v27[2] = xmmword_1E3060D60;
  v27[3] = xmmword_1E3047680;
  v28 = 0x3F80000000000000;
  v29 = 0;
  v12 = *(a1 + 4);
  v13 = *(a1 + 12);
  v23 = vneg_f32(v12);
  v24 = -v13;
  v25 = v12;
  v26 = v13;
  physx::Gu::PolygonalBox::PolygonalBox(v21, (a1 + 4));
  physx::Gu::PolygonalBox::getPolygonalData(v21, v22);
  v18[0] = xmmword_1E3047670;
  v18[1] = xmmword_1E3047670;
  v18[2] = xmmword_1E3060D60;
  v18[3] = xmmword_1E3047680;
  v19 = 0x3F80000000000000;
  v20 = 0;
  ConvexData = physx::Gu::getConvexData(a2, v18, v17, v16);
  return GuContactHullHull(v22, v16, &v23, v17, a3, a4, a5, a7, v27, v18, 1u, ConvexData);
}

uint64_t GuContactHullHull(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6, float *a7, uint64_t a8, float *a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12)
{
  v256 = a4;
  v257 = a8;
  v255 = a3;
  v16 = a9;
  v17 = a10;
  v344 = *MEMORY[0x1E69E9840];
  v18 = *a5;
  v19 = a5[1];
  v20 = a5[2];
  v21 = a5[3];
  v22 = v19 * (v19 + v19);
  v23 = v20 * (v20 + v20);
  v24 = (v18 + v18) * v19;
  v25 = (v18 + v18) * v20;
  v26 = (v18 + v18) * v21;
  v27 = (v19 + v19) * v20;
  v28 = (v19 + v19) * v21;
  v29 = (v20 + v20) * v21;
  v30 = v24 + v29;
  v31 = v25 - v28;
  v335.f32[0] = (1.0 - v22) - v23;
  v335.f32[1] = v24 + v29;
  v32 = v24 - v29;
  v33 = 1.0 - (v18 * (v18 + v18));
  v34 = v27 + v26;
  v336 = v25 - v28;
  v337.f32[0] = v32;
  v337.f32[1] = v33 - v23;
  v338 = v27 + v26;
  v35 = v25 + v28;
  v36 = v27 - v26;
  v37 = v33 - v22;
  v339.f32[0] = v25 + v28;
  v339.f32[1] = v27 - v26;
  v38 = a5[4];
  v39 = a5[5];
  v340 = v37;
  v341 = v38;
  v40 = a5[6];
  v342 = v39;
  v343 = v40;
  v41 = *a6;
  v42 = a6[1];
  v43 = a6[2];
  v44 = a6[3];
  v45 = v42 + v42;
  v46 = v43 + v43;
  v47 = v42 * (v42 + v42);
  v48 = v43 * (v43 + v43);
  v49 = (v41 + v41) * v42;
  v50 = (v41 + v41) * v43;
  v51 = (v41 + v41) * v44;
  v52 = v45 * v43;
  v53 = v45 * v44;
  v54 = v46 * v44;
  v55 = v49 + v54;
  v56 = v50 - v53;
  v326.f32[0] = (1.0 - v47) - v48;
  v326.f32[1] = v49 + v54;
  v57 = v49 - v54;
  v58 = 1.0 - (v41 * (v41 + v41));
  v59 = v58 - v48;
  v60 = v52 + v51;
  v327 = v50 - v53;
  v328.f32[0] = v57;
  v328.f32[1] = v58 - v48;
  v329 = v52 + v51;
  v61 = v58 - v47;
  v330.f32[0] = v50 + v53;
  v330.f32[1] = v52 - v51;
  v62 = a6[4];
  v63 = a6[5];
  v331 = v61;
  v332 = v62;
  v64 = *(a1 + 4);
  v65 = v335.f32[0] * *a1;
  v66 = v30 * *a1;
  v67 = v31 * *a1;
  v68 = a6[6];
  v333 = v63;
  v334 = v68;
  v69 = v65 + (v32 * v64);
  v70 = *(a1 + 8);
  v71 = v38 + (v69 + (v35 * v70));
  v72 = v39 + ((v66 + (v337.f32[1] * v64)) + (v36 * v70));
  v73 = v40 + ((v67 + (v34 * v64)) + (v37 * v70));
  v74 = *(a2 + 4);
  v75 = (v326.f32[0] * *a2) + (v57 * v74);
  v76 = (v55 * *a2) + (v59 * v74);
  v77 = (v56 * *a2) + (v60 * v74);
  v78 = *(a2 + 8);
  v324.f32[0] = (v62 + (v75 + (v330.f32[0] * v78))) - v71;
  v324.f32[1] = (v63 + (v76 + (v330.f32[1] * v78))) - v72;
  v325 = (v68 + (v77 + (v61 * v78))) - v73;
  v266 = a7;
  v79 = *a7;
  v301.i32[0] = 0;
  v290.i32[0] = 0;
  (*(a1 + 88))(a1, &v324, &v335, a9, &v301, &v290);
  v80 = v301.f32[0];
  v81 = v290.f32[0];
  v320[0] = 0.0;
  v319[0] = 0.0;
  (*(a2 + 88))(a2, &v324, &v326, a10, v320, v319);
  if ((v79 + v81) < v320[0] || (v79 + v319[0]) < v80)
  {
    return 0;
  }

  v269 = a12;
  v268 = a11;
  v83 = v81 - v320[0];
  if ((v81 - v320[0]) >= (v319[0] - v80))
  {
    v83 = v319[0] - v80;
  }

  v323 = v83;
  v84 = a6[1];
  v85 = a6[2];
  v86 = a6[3];
  v87 = a5[4];
  v88 = a5[5];
  v89 = a6[4];
  v90 = a6[5];
  v91 = a5[6];
  v92 = a6[6];
  v93 = (v87 - v89) + (v87 - v89);
  v94 = (v88 - v90) + (v88 - v90);
  v95 = (v91 - v92) + (v91 - v92);
  v96 = (v86 * v86) + -0.5;
  v97 = (-(v84 * v94) - (*a6 * v93)) - (v85 * v95);
  v98 = ((v86 * ((v85 * v94) - (v84 * v95))) + (v93 * v96)) - (*a6 * v97);
  v99 = ((v86 * ((*a6 * v95) - (v85 * v93))) + (v94 * v96)) - (v84 * v97);
  v100 = ((v86 * ((v84 * v93) - (*a6 * v94))) + (v95 * v96)) - (v85 * v97);
  v102 = a5[2];
  v101 = a5[3];
  v103 = a5[1];
  v104 = (((v86 * *a5) - (*a6 * v101)) - (v84 * v102)) + (v103 * v85);
  v105 = (((v86 * v103) - (v84 * v101)) - (v85 * *a5)) + (v102 * *a6);
  v106 = (((v86 * v102) - (v85 * v101)) - (*a6 * v103)) + (*a5 * v84);
  v107 = (((*a6 * *a5) + (v86 * v101)) + (v84 * v103)) + (v85 * v102);
  v108 = v89 - v87;
  v109 = v90 - v88;
  v110 = v92 - v91;
  v111 = v108 + v108;
  v112 = v109 + v109;
  v113 = v110 + v110;
  v114 = (v101 * v101) + -0.5;
  v115 = (-(v103 * (v109 + v109)) - (*a5 * (v108 + v108))) - (v102 * v113);
  v116 = ((v101 * (((v109 + v109) * v102) - (v103 * v113))) + ((v108 + v108) * v114)) - (*a5 * v115);
  v117 = ((v101 * ((*a5 * v113) - (v102 * v111))) + ((v109 + v109) * v114)) - (v103 * v115);
  v118 = ((v101 * ((v111 * v103) - (*a5 * v112))) + (v113 * v114)) - (v102 * v115);
  v119 = (((v101 * *a6) - (*a5 * v86)) - (v103 * v85)) + (v84 * v102);
  v120 = (((v101 * v84) - (v103 * v86)) - (v102 * *a6)) + (v85 * *a5);
  v121 = (((v101 * v85) - (v102 * v86)) - (*a5 * v84)) + (*a6 * v103);
  v122 = v104 * (v104 + v104);
  v123 = v105 * (v105 + v105);
  v124 = v106 * (v106 + v106);
  v125 = (v104 + v104) * v105;
  v126 = v106 * (v104 + v104);
  v127 = v107 * (v104 + v104);
  v128 = v106 * (v105 + v105);
  v129 = v107 * (v105 + v105);
  v130 = v107 * (v106 + v106);
  v320[0] = (1.0 - v123) - v124;
  v320[1] = v125 + v130;
  v131 = 1.0 - v122;
  v320[2] = v126 - v129;
  v320[3] = v125 - v130;
  v320[4] = v131 - v124;
  v320[5] = v127 + v128;
  v320[6] = v126 + v129;
  v320[7] = v128 - v127;
  v320[8] = v131 - v123;
  v320[9] = v98;
  v320[10] = v99;
  v320[11] = v100;
  v132 = v119 + v119;
  v133 = v120 + v120;
  v134 = v121 + v121;
  v135 = v119 * (v119 + v119);
  v136 = v120 * (v120 + v120);
  v137 = v121 * (v121 + v121);
  v138 = (v119 + v119) * v120;
  v139 = v132 * v121;
  v140 = v107 * v132;
  v141 = v121 * v133;
  v142 = v107 * v133;
  v143 = v107 * v134;
  v319[0] = (1.0 - v136) - v137;
  v319[1] = v138 + v143;
  v144 = 1.0 - v135;
  v319[2] = v139 - v142;
  v319[3] = v138 - v143;
  v319[4] = v144 - v137;
  v319[5] = v140 + v141;
  v258 = 0x7FFF;
  v319[6] = v139 + v142;
  v319[7] = v141 - v140;
  v319[8] = v144 - v136;
  v319[9] = v116;
  v319[10] = v117;
  v319[11] = v118;
  v145 = -1;
  v146 = 0x7FFF;
  v265 = a10;
  v267 = a9;
  while (1)
  {
    LODWORD(v313) = 0;
    LODWORD(v317) = 0;
    LODWORD(v314) = 0;
    v147 = *v266;
    if (v145)
    {
      v271[0] = 3.4028e38;
      LODWORD(v316) = 2139095039;
      v148 = v324;
      v278 = (vmuls_lane_f32(v335.f32[1], v148, 1) + (v335.f32[0] * v148.f32[0])) + (v336 * v325);
      v279 = (vmuls_lane_f32(v337.f32[1], v148, 1) + (v337.f32[0] * v148.f32[0])) + (v338 * v325);
      v280 = (vmuls_lane_f32(v339.f32[1], v148, 1) + (v339.f32[0] * v148.f32[0])) + (v340 * v325);
      v272 = vneg_f32(v324);
      v273 = -v325;
      if ((GuTestFacesSepAxesBackfaceRoughPass(a1, a2, &v335, &v326, v16, v17, v319, &v278, v147, v271, &v301, &v317, &v272) & 1) == 0 || (v272.f32[0] = -(((v326.f32[1] * v324.f32[1]) + (v326.f32[0] * v324.f32[0])) + (v327 * v325)), v272.f32[1] = -(((v324.f32[1] * v328.f32[1]) + (v328.f32[0] * v324.f32[0])) + (v329 * v325)), v273 = -(((v324.f32[1] * v330.f32[1]) + (v330.f32[0] * v324.f32[0])) + (v331 * v325)), v149 = GuTestFacesSepAxesBackfaceRoughPass(a2, a1, &v326, &v335, v17, v16, v320, &v272, v147, &v316, &v290, &v314, &v324), !v149))
      {
LABEL_42:
        LODWORD(v253) = 0;
        v254 = 1;
        return v254 & v253;
      }

      v152 = v271[0];
      *&v151 = v301;
      v153 = v302;
      LODWORD(v313) = 0;
      if (*&v316 < v271[0])
      {
        *&v151 = v290;
        v153 = v291;
        v152 = *&v316;
        LODWORD(v313) = 1;
      }

      v323 = v152;
      v321 = v151;
      v154 = *(&v151 + 1);
      v322 = v153;
    }

    else
    {
      v149 = PxcBruteForceOverlapBackface(v255, v256, a1, a2, &v335, &v326, v16, v17, v320, v319, &v324, &v317, &v314, &v323, &v321, &v313);
      if (!v149)
      {
        goto LABEL_42;
      }

      v154 = *(&v321 + 1);
      LODWORD(v151) = v321;
      v153 = v322;
    }

    if ((((v154 * v324.f32[1]) + (v324.f32[0] * *&v151)) + (v325 * v153)) < 0.0)
    {
      *&v151 = -*&v151;
      v154 = -v154;
      v153 = -v153;
      v321 = __PAIR64__(LODWORD(v154), v151);
      v322 = v153;
    }

    v270 = v151;
    if (v313 == 2)
    {
      v157 = *(a1 + 96);
      v301.f32[0] = ((v154 * v335.f32[1]) + (v335.f32[0] * *&v151)) + (v336 * v153);
      v301.f32[1] = ((v154 * v337.f32[1]) + (v337.f32[0] * *&v151)) + (v338 * v153);
      v302 = ((v154 * v339.f32[1]) + (v339.f32[0] * *&v151)) + (v340 * v153);
      v155 = v157(a1, v16, &v301);
    }

    else
    {
      if (v313 == 1)
      {
        v156 = *(a1 + 96);
        v301.f32[0] = ((v154 * v335.f32[1]) + (v335.f32[0] * *&v151)) + (v336 * v153);
        v301.f32[1] = ((v154 * v337.f32[1]) + (v337.f32[0] * *&v151)) + (v338 * v153);
        v302 = ((v154 * v339.f32[1]) + (v339.f32[0] * *&v151)) + (v340 * v153);
        v149 = v156(a1, v16, &v301);
        v155 = v149;
        v146 = v314;
        goto LABEL_24;
      }

      v155 = v258;
      if (v313)
      {
        goto LABEL_24;
      }

      v155 = v317;
    }

    v158 = *(a2 + 96);
    v301.f32[0] = (-(v154 * v326.f32[1]) - (v326.f32[0] * *&v270)) - (v327 * v153);
    v301.f32[1] = (-(v154 * v328.f32[1]) - (v328.f32[0] * *&v270)) - (v329 * v153);
    v302 = (-(v154 * v330.f32[1]) - (v330.f32[0] * *&v270)) - (v331 * v153);
    v149 = v158(a2, v17, &v301);
    v146 = v149;
LABEL_24:
    v159 = *(a1 + 24);
    v258 = v155;
    v259 = v146;
    _X21 = (v159 + 20 * v155);
    _X25 = *(a2 + 24) + 20 * v146;
    __asm
    {
      PRFM            #0, [X21]
      PRFM            #0, [X25]
    }

    v168 = 0.0;
    if (v323 < 0.0)
    {
      v168 = -v323;
    }

    v264 = v168;
    if (v268)
    {
      v316 = *_X21;
      v169 = v335;
      *&v150 = vmul_n_f32(v335, *&v316);
      v170 = v336;
      v171 = v336 * *&v316;
      v172 = *(&v316 + 1);
      v173 = (v159 + 20 * v155);
    }

    else
    {
      v173 = &v316;
      physx::Cm::FastVertex2ShapeScaling::transformPlaneToShapeSpace(v267, _X21, &v316, (&v316 | 0xC), _X21[3]);
      v169 = v335;
      v172 = *(&v316 + 1);
      *&v150 = vmul_n_f32(v335, *&v316);
      v170 = v336;
      v171 = *&v316 * v336;
    }

    v174 = v338;
    v175 = v340;
    v176 = v173[2];
    v177 = v337;
    v178 = v339;
    *&v150 = vadd_f32(vadd_f32(*&v150, vmul_n_f32(v337, v172)), vmul_n_f32(v339, v176));
    v262 = v150;
    v317 = v150;
    v263 = (v171 + (v172 * v338)) + (v176 * v340);
    v318 = v263;
    if (v269)
    {
      v313 = *_X25;
      v179 = v313;
      *&v150 = vadd_f32(vmul_n_f32(v326, v179.f32[0]), vmul_lane_f32(v328, v179, 1));
      v180 = (v327 * v179.f32[0]) + vmuls_lane_f32(v329, v179, 1);
    }

    else
    {
      physx::Cm::FastVertex2ShapeScaling::transformPlaneToShapeSpace(v17, _X25, &v313, (&v313 | 0xC), *(_X25 + 12));
      *&v150 = vadd_f32(vmul_n_f32(v326, *&v313), vmul_n_f32(v328, *(&v313 + 1)));
      v180 = (*&v313 * v327) + (*(&v313 + 1) * v329);
    }

    v181 = 0;
    v182 = 0;
    *&v150 = vadd_f32(*&v150, vmul_n_f32(v330, *(&v313 + 2)));
    v260 = v150;
    v314 = v150;
    v261 = v180 + (*(&v313 + 2) * v331);
    v315 = v261;
    v264 = v264 + v266[1];
    v310 = -(v264 * *&v270);
    v311 = -(v264 * v154);
    v312 = -(v264 * v153);
    v301 = v169;
    v303 = v177;
    v302 = v170;
    v304 = v174;
    v305 = v178;
    v306 = v175;
    v307 = v341 - v310;
    v308 = v342 - v311;
    v309 = v343 - v312;
    v183 = a5[1];
    v184 = a5[2];
    v185 = a5[3];
    v186 = a6[1];
    v187 = a6[2];
    v188 = a6[3];
    v189 = a6[4];
    v190 = a6[5];
    v191 = a6[6];
    v192 = (v307 - v189) + (v307 - v189);
    v193 = (v308 - v190) + (v308 - v190);
    v194 = (v309 - v191) + (v309 - v191);
    v195 = (v188 * v188) + -0.5;
    v196 = (-(v186 * v193) - (*a6 * v192)) - (v187 * v194);
    v197 = ((v188 * ((v187 * v193) - (v186 * v194))) + (v192 * v195)) - (*a6 * v196);
    v198 = ((v188 * ((*a6 * v194) - (v187 * v192))) + (v193 * v195)) - (v186 * v196);
    v199 = ((v188 * ((v186 * v192) - (*a6 * v193))) + (v194 * v195)) - (v187 * v196);
    v200 = (((v188 * *a5) - (*a6 * v185)) - (v186 * v184)) + (v183 * v187);
    v201 = (((v188 * v183) - (v186 * v185)) - (v187 * *a5)) + (v184 * *a6);
    v202 = (((v188 * v184) - (v187 * v185)) - (*a6 * v183)) + (*a5 * v186);
    v203 = (((*a5 * *a6) + (v188 * v185)) + (v186 * v183)) + (v187 * v184);
    v204 = (v189 - v307) + (v189 - v307);
    v205 = (v190 - v308) + (v190 - v308);
    v206 = (v191 - v309) + (v191 - v309);
    v207 = (v185 * v185) + -0.5;
    v208 = (-(v183 * v205) - (*a5 * v204)) - (v184 * v206);
    v209 = ((v185 * ((v184 * v205) - (v183 * v206))) + (v204 * v207)) - (*a5 * v208);
    v210 = ((v185 * ((*a5 * v206) - (v184 * v204))) + (v205 * v207)) - (v183 * v208);
    v211 = (v185 * ((v183 * v204) - (*a5 * v205))) + (v206 * v207);
    v212 = (((v185 * *a6) - (*a5 * v188)) - (v183 * v187)) + (v186 * v184);
    v213 = (((v185 * v186) - (v183 * v188)) - (v184 * *a6)) + (v187 * *a5);
    v214 = (((v185 * v187) - (v184 * v188)) - (*a5 * v186)) + (*a6 * v183);
    v215 = v200 + v200;
    v216 = v201 + v201;
    v217 = v202 + v202;
    v218 = v200 * (v200 + v200);
    v219 = v201 * (v201 + v201);
    v220 = v202 * (v202 + v202);
    v221 = v201 * (v200 + v200);
    v222 = v202 * v215;
    v223 = v203 * v215;
    v224 = v202 * v216;
    v225 = v203 * v216;
    v226 = v203 * v217;
    v227 = 1.0 - v218;
    v290.f32[0] = (1.0 - v219) - v220;
    v290.f32[1] = v221 + v226;
    v291 = v222 - v225;
    v292 = v221 - v226;
    v293 = v227 - v220;
    v294 = v224 + v223;
    v295 = v222 + v225;
    v296 = v224 - v223;
    v297 = v227 - v219;
    v298 = v197;
    v299 = v198;
    v300 = v199;
    v228 = v214 + v214;
    v229 = v213 * (v213 + v213);
    v230 = v214 * (v214 + v214);
    v231 = v213 * (v212 + v212);
    v232 = v214 * (v212 + v212);
    v233 = v203 * (v212 + v212);
    v234 = v214 * (v213 + v213);
    v235 = v203 * (v213 + v213);
    v236 = v203 * v228;
    v237 = 1.0 - (v212 * (v212 + v212));
    v278 = (1.0 - v229) - v230;
    v279 = v231 + v236;
    v280 = v232 - v235;
    v281 = v231 - v236;
    v282 = v237 - v230;
    v283 = v234 + v233;
    v284 = v232 + v235;
    v285 = v234 - v233;
    v286 = v237 - v229;
    v287 = v209;
    v288 = v210;
    v289 = v211 - (v184 * v208);
    v276 = 0;
    v277 = 0;
    if ((v268 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v149);
      v181 = &v255 - v238;
      bzero(&v255 - v238, v239);
      MEMORY[0x1EEE9AC00](v240);
      v182 = &v255 - v241;
      bzero(&v255 - v241, v242);
    }

    physx::Gu::getScaledConvex(&v277, &v276, v181, v182, v268, *(a1 + 32), *(a1 + 40) + *(_X21 + 8), *(_X21 + 18), v267);
    v244 = 0;
    v245 = 0;
    v274 = 0;
    v275 = 0;
    if ((v269 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v243);
      v244 = &v255 - v246;
      bzero(&v255 - v246, v247);
      MEMORY[0x1EEE9AC00](v248);
      v245 = &v255 - v249;
      bzero(&v255 - v249, v250);
    }

    v251 = fabsf((vmuls_lane_f32(v154, *&v262, 1) + (*&v262 * *&v270)) + (v263 * v153));
    v252 = fabsf((vmuls_lane_f32(v154, *&v260, 1) + (*&v260 * *&v270)) + (v261 * v153));
    physx::Gu::getScaledConvex(&v275, &v274, v244, v245, v269, *(a2 + 32), *(a2 + 40) + *(_X25 + 16), *(_X25 + 18), v265);
    physx::Gu::findRotationMatrixFromZ(&v272, &v316);
    physx::Gu::findRotationMatrixFromZ(v271, &v313);
    if (v251 <= v252)
    {
      break;
    }

    if (physx::Gu::contactPolygonPolygonExt(*(_X21 + 18), v277, v276, &v301, &v316, &v272, *(_X25 + 18), v275, v264, v274, &v326, &v313, v271, &v317, &v290, &v278, -1, v257, 1u, &v310))
    {
      goto LABEL_43;
    }

LABEL_40:
    ++v145;
    v17 = v265;
    v16 = v267;
    v253 = &v290;
    v146 = v259;
    if (v145 == 1)
    {
      v254 = 0;
      return v254 & v253;
    }
  }

  if (!physx::Gu::contactPolygonPolygonExt(*(_X25 + 18), v275, v274, &v326, &v313, v271, *(_X21 + 18), v277, v264, v276, &v301, &v316, &v272, &v314, &v278, &v290, -1, v257, 0, &v310))
  {
    goto LABEL_40;
  }

LABEL_43:
  v254 = 1;
  LODWORD(v253) = 1;
  return v254 & v253;
}

uint64_t physx::Gu::contactConvexConvex(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v22[0] = xmmword_1E3047670;
  v22[1] = xmmword_1E3047670;
  v22[2] = xmmword_1E3060D60;
  v22[3] = xmmword_1E3047680;
  v23 = 0x3F80000000000000;
  v24 = 0;
  v19[0] = xmmword_1E3047670;
  v19[1] = xmmword_1E3047670;
  v19[2] = xmmword_1E3060D60;
  v19[3] = xmmword_1E3047680;
  v20 = 0x3F80000000000000;
  v21 = 0;
  ConvexData = physx::Gu::getConvexData(a1, v22, v18, v16);
  v13 = physx::Gu::getConvexData(a2, v19, v17, v15);
  return GuContactHullHull(v16, v15, v18, v17, a3, a4, a5, a7, v22, v19, ConvexData, v13);
}

uint64_t physx::Gu::contactConvexMesh(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a2[1];
  v15 = a2[2];
  v13 = a2 + 1;
  v17 = v14 == 1.0 && v15 == 1.0 && a2[3] == 1.0;
  v18 = xmmword_1E3047670;
  v28[0] = xmmword_1E3047670;
  v28[1] = xmmword_1E3047670;
  v19 = xmmword_1E3060D60;
  v20 = xmmword_1E3047680;
  v28[2] = xmmword_1E3060D60;
  v28[3] = xmmword_1E3047680;
  v29 = 0x3F80000000000000;
  v30 = 0;
  if ((v17 & 1) == 0)
  {
    physx::Cm::FastVertex2ShapeScaling::init(v28, v13, a2 + 4);
    v20 = xmmword_1E3047680;
    v19 = xmmword_1E3060D60;
    v18 = xmmword_1E3047670;
  }

  v25[0] = v18;
  v25[1] = v18;
  v25[2] = v19;
  v25[3] = v20;
  v26 = 0x3F80000000000000;
  v27 = 0;
  ConvexData = physx::Gu::getConvexData(a1, v25, v24, v23);
  return contactHullMesh2(v23, v24, a2, a3, a4, a5, a7, v25, v28, ConvexData, v17);
}

uint64_t contactHullMesh2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  v76 = MEMORY[0x1EEE9AC00](a1);
  v77 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v98 = *MEMORY[0x1E69E9840];
  v22 = *v18;
  v23 = v18[1];
  v24 = v18[2];
  v25 = v18[3];
  v26 = v23 * (v23 + v23);
  v27 = v24 * (v24 + v24);
  v28 = (v22 + v22) * v23;
  v29 = (v22 + v22) * v24;
  v30 = (v22 + v22) * v25;
  v31 = (v23 + v23) * v24;
  v32 = (v23 + v23) * v25;
  v33 = (v24 + v24) * v25;
  v86[0] = (1.0 - v26) - v27;
  v86[1] = v28 + v33;
  v34 = 1.0 - (v22 * (v22 + v22));
  v86[2] = v29 - v32;
  v86[3] = v28 - v33;
  v86[4] = v34 - v27;
  v86[5] = v31 + v30;
  v35 = v34 - v26;
  v86[6] = v29 + v32;
  v86[7] = v31 - v30;
  v36 = v18[4];
  v37 = v18[5];
  v86[8] = v35;
  v86[9] = v36;
  v38 = v18[6];
  v86[10] = v37;
  v86[11] = v38;
  v39 = *v16;
  v40 = v16[1];
  v41 = v16[2];
  v42 = v16[3];
  v43 = v40 * (v40 + v40);
  v44 = v41 * (v41 + v41);
  v45 = (v39 + v39) * v40;
  v46 = (v39 + v39) * v41;
  v47 = (v39 + v39) * v42;
  v48 = (v40 + v40) * v41;
  v49 = (v40 + v40) * v42;
  v50 = (v41 + v41) * v42;
  v85[0] = (1.0 - v43) - v44;
  v85[1] = v45 + v50;
  v51 = 1.0 - (v39 * (v39 + v39));
  v85[2] = v46 - v49;
  v85[3] = v45 - v50;
  v85[4] = v51 - v44;
  v85[5] = v48 + v47;
  v85[6] = v46 + v49;
  v85[7] = v48 - v47;
  v52 = v16[4];
  v53 = v16[5];
  v85[8] = v51 - v43;
  v85[9] = v52;
  v54 = v16[6];
  v85[10] = v53;
  v85[11] = v54;
  v55 = (v36 - v52) + (v36 - v52);
  v56 = (v37 - v53) + (v37 - v53);
  v57 = (v38 - v54) + (v38 - v54);
  v58 = (v42 * v42) + -0.5;
  v59 = (-(v40 * v56) - (v39 * v55)) - (v41 * v57);
  v80[0] = (((v42 * v22) - (v39 * v25)) - (v40 * v24)) + (v23 * v41);
  v80[1] = (((v42 * v23) - (v40 * v25)) - (v41 * v22)) + (v24 * v39);
  v80[2] = (((v42 * v24) - (v41 * v25)) - (v39 * v23)) + (v22 * v40);
  v81 = (((v22 * v39) + (v42 * v25)) + (v40 * v23)) + (v41 * v24);
  v82 = ((v42 * ((v41 * v56) - (v40 * v57))) + (v55 * v58)) - (v39 * v59);
  v83 = ((v42 * ((v39 * v57) - (v41 * v55))) + (v56 * v58)) - (v40 * v59);
  v84 = ((v42 * ((v40 * v55) - (v39 * v56))) + (v57 * v58)) - (v41 * v59);
  v60 = (v52 - v36) + (v52 - v36);
  v61 = (v53 - v37) + (v53 - v37);
  v62 = (v54 - v38) + (v54 - v38);
  v63 = (v25 * v25) + -0.5;
  v64 = (-(v23 * v61) - (v22 * v60)) - (v24 * v62);
  v79[0] = (((v25 * v39) - (v22 * v42)) - (v23 * v41)) + (v40 * v24);
  v79[1] = (((v25 * v40) - (v23 * v42)) - (v24 * v39)) + (v41 * v22);
  v79[2] = (((v25 * v41) - (v24 * v42)) - (v22 * v40)) + (v39 * v23);
  v79[3] = v81;
  v79[4] = ((v25 * ((v24 * v61) - (v23 * v62))) + (v60 * v63)) - (v22 * v64);
  v79[5] = ((v25 * ((v22 * v62) - (v24 * v60))) + (v61 * v63)) - (v23 * v64);
  v79[6] = ((v25 * ((v23 * v60) - (v22 * v61))) + (v62 * v63)) - (v24 * v64);
  *&v65 = *v14;
  physx::Gu::computeHullOBB(v78, v66, v86, v85, a9, a11, v65);
  v67 = *(v21 + 48);
  v95[4352] = 1;
  v97 = 0x44000000000;
  v96 = v95;
  v68 = *(v67 + 80);
  v70 = v15[1];
  v69 = v15[2];
  v71 = *v15;
  v88 = 2;
  v87 = &unk_1F5D21D68;
  *(&v75 + 1) = v17;
  *&v75 = v19;
  v90 = a9;
  v91 = v68;
  v92 = a11;
  v93 = v67;
  v94 = v78;
  (physx::Gu::gMidphaseBoxCBOverlapTable[*(v67 + 8) - 3])(v67, v78, &v87, 0, 1, v72);
  v73 = v89[2256];
  if ((v97 & 0x8000000000000000) == 0 && (v97 & 0x7FFFFFFF00000000) != 0 && v96 != v95 && v96)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v73;
}

uint64_t physx::Gu::contactBoxMesh(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  physx::Gu::PolygonalBox::PolygonalBox(v31, (a1 + 4));
  physx::Gu::PolygonalBox::getPolygonalData(v31, v32);
  v13 = *(a1 + 12);
  v14 = *(a1 + 4);
  v27 = vneg_f32(v14);
  v28 = -v13;
  v29 = v14;
  v30 = v13;
  v16 = a2[1] == 1.0 && a2[2] == 1.0 && a2[3] == 1.0;
  v17 = xmmword_1E3047670;
  v24[0] = xmmword_1E3047670;
  v24[1] = xmmword_1E3047670;
  v18 = xmmword_1E3060D60;
  v19 = xmmword_1E3047680;
  v24[2] = xmmword_1E3060D60;
  v24[3] = xmmword_1E3047680;
  v25 = 0x3F80000000000000;
  v26 = 0;
  if ((v16 & 1) == 0)
  {
    physx::Cm::FastVertex2ShapeScaling::init(v24, a2 + 1, a2 + 4);
    v19 = xmmword_1E3047680;
    v18 = xmmword_1E3060D60;
    v17 = xmmword_1E3047670;
  }

  v21[0] = v17;
  v21[1] = v17;
  v21[2] = v18;
  v21[3] = v19;
  v22 = 0x3F80000000000000;
  v23 = 0;
  return contactHullMesh2(v32, &v27, a2, a3, a4, a5, a7, v21, v24, 1, v16);
}

uint64_t physx::Gu::contactConvexHeightfield(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5, uint64_t a6, uint64_t a7)
{
  v19[0] = xmmword_1E3047670;
  v19[1] = xmmword_1E3047670;
  v19[2] = xmmword_1E3060D60;
  v19[3] = xmmword_1E3047680;
  v20 = 0x3F80000000000000;
  v21 = 0;
  ConvexData = physx::Gu::getConvexData(a1, v19, &v17, v16);
  v13 = vld1q_dup_f32(a5);
  v14 = vsubq_f32(v17, v13);
  v14.i32[3] = vaddq_f32(v17, v13).i32[3];
  v17 = v14;
  v18 = vadd_f32(*v13.f32, v18);
  return contactHullHeightfield2(v16, &v17, a2, a3, a4, a5, a7, v19, ConvexData);
}

uint64_t contactHullHeightfield2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  v13 = v12;
  v125 = *MEMORY[0x1E69E9840];
  v117 = v14[1];
  v118 = v14;
  v15 = v14[3].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v115 = vrev64_s32(vdiv_f32(_D2, v14[2]));
  v116 = 1.0 / v15;
  v22 = *v21;
  _D2.i32[0] = *(v21 + 4);
  v23 = *(v21 + 8);
  v24 = *(v21 + 12);
  v25 = _D2.f32[0] * (_D2.f32[0] + _D2.f32[0]);
  v26 = v23 * (v23 + v23);
  v27 = (v22 + v22) * _D2.f32[0];
  v28 = (v22 + v22) * v23;
  v29 = (v22 + v22) * v24;
  v30 = (_D2.f32[0] + _D2.f32[0]) * v23;
  v31 = (_D2.f32[0] + _D2.f32[0]) * v24;
  v32 = (v23 + v23) * v24;
  v114[0] = (1.0 - v25) - v26;
  v114[1] = v27 + v32;
  v33 = 1.0 - (v22 * (v22 + v22));
  v114[2] = v28 - v31;
  v114[3] = v27 - v32;
  v114[4] = v33 - v26;
  v114[5] = v30 + v29;
  v34 = v33 - v25;
  v114[6] = v28 + v31;
  v114[7] = v30 - v29;
  v35 = *(v21 + 16);
  v36 = *(v21 + 20);
  v114[8] = v34;
  v114[9] = v35;
  v37 = *(v21 + 24);
  v114[10] = v36;
  v114[11] = v37;
  v38 = *v10;
  v39 = v10[1];
  v40 = v10[2];
  v41 = v10[3];
  v42 = v39 * (v39 + v39);
  v43 = v40 * (v40 + v40);
  v44 = (v38 + v38) * v39;
  v45 = (v38 + v38) * v40;
  v46 = (v38 + v38) * v41;
  v47 = (v39 + v39) * v40;
  v48 = (v39 + v39) * v41;
  v49 = (v40 + v40) * v41;
  v113[0] = (1.0 - v42) - v43;
  v113[1] = v44 + v49;
  v50 = 1.0 - (v38 * (v38 + v38));
  v113[2] = v45 - v48;
  v113[3] = v44 - v49;
  v113[4] = v50 - v43;
  v113[5] = v47 + v46;
  v113[6] = v45 + v48;
  v113[7] = v47 - v46;
  v51 = v10[4];
  v52 = v10[5];
  v113[8] = v50 - v42;
  v113[9] = v51;
  v53 = v10[6];
  v113[10] = v52;
  v113[11] = v53;
  v54 = (v35 - v51) + (v35 - v51);
  v55 = (v36 - v52) + (v36 - v52);
  v56 = (v37 - v53) + (v37 - v53);
  v57 = (v41 * v41) + -0.5;
  v58 = (-(v39 * v55) - (v38 * v54)) - (v40 * v56);
  v59 = ((v41 * ((v40 * v55) - (v39 * v56))) + (v54 * v57)) - (v38 * v58);
  v60 = ((v41 * ((v38 * v56) - (v40 * v54))) + (v55 * v57)) - (v39 * v58);
  v61 = ((v41 * ((v39 * v54) - (v38 * v55))) + (v56 * v57)) - (v40 * v58);
  v62 = (((v41 * v22) - (v38 * v24)) - (v39 * v23)) + (_D2.f32[0] * v40);
  v63 = (((v41 * _D2.f32[0]) - (v39 * v24)) - (v40 * v22)) + (v23 * v38);
  v64 = (((v41 * v23) - (v40 * v24)) - (v38 * _D2.f32[0])) + (v22 * v39);
  v65 = (((v22 * v38) + (v41 * v24)) + (v39 * _D2.f32[0])) + (v40 * v23);
  v112[0] = v62;
  v112[1] = v63;
  v112[2] = v64;
  v112[3] = v65;
  v112[4] = v59;
  v112[5] = v60;
  v112[6] = v61;
  v66 = (v51 - v35) + (v51 - v35);
  v67 = (v52 - v36) + (v52 - v36);
  v68 = (v53 - v37) + (v53 - v37);
  v69 = (v24 * v24) + -0.5;
  v70 = (-(_D2.f32[0] * v67) - (v22 * v66)) - (v23 * v68);
  v111[0] = (((v24 * v38) - (v22 * v41)) - (_D2.f32[0] * v40)) + (v39 * v23);
  v111[1] = (((v24 * v39) - (_D2.f32[0] * v41)) - (v23 * v38)) + (v40 * v22);
  v111[2] = (((v24 * v40) - (v23 * v41)) - (v22 * v39)) + (v38 * _D2.f32[0]);
  v111[3] = v65;
  v111[4] = ((v24 * ((v23 * v67) - (_D2.f32[0] * v68))) + (v66 * v69)) - (v22 * v70);
  v111[5] = ((v24 * ((v22 * v68) - (v23 * v66))) + (v67 * v69)) - (_D2.f32[0] * v70);
  v111[6] = ((v24 * ((_D2.f32[0] * v66) - (v22 * v67))) + (v68 * v69)) - (v23 * v70);
  v124 = 0x44000000000;
  v122[4352] = 1;
  v123 = v122;
  _D2.f32[0] = v71[1];
  v72 = v71[2];
  v73 = *v71;
  v119 = &unk_1F5D21DB8;
  *(&v109 + 1) = v10;
  *&v109 = v21;
  v121 = &v115;
  v76 = v13[1];
  v78 = v13[2];
  v77 = v13[3];
  v79 = v13[4];
  v80 = v13[5];
  v81 = ((*v13 + v77) * 0.5) + ((*v13 + v77) * 0.5);
  v82 = ((v76 + v79) * 0.5) + ((v76 + v79) * 0.5);
  v83 = ((v78 + v80) * 0.5) + ((v78 + v80) * 0.5);
  v84 = (v65 * v65) + -0.5;
  v85 = ((v63 * v82) + (v62 * v81)) + (v64 * v83);
  v86 = ((v65 * ((v63 * v83) - (v64 * v82))) + (v81 * v84)) + (v62 * v85);
  v87 = ((v65 * ((v64 * v81) - (v62 * v83))) + (v82 * v84)) + (v63 * v85);
  v88 = ((v65 * ((v62 * v82) - (v63 * v81))) + (v83 * v84)) + (v64 * v85);
  v89 = v59 + v86;
  v90 = v60 + v87;
  v91 = v61 + v88;
  v92 = v63 * (v63 + v63);
  v93 = v64 * (v64 + v64);
  v94 = v63 * (v62 + v62);
  v95 = v64 * (v62 + v62);
  v96 = v65 * (v62 + v62);
  v97 = v64 * (v63 + v63);
  v98 = v65 * (v63 + v63);
  v99 = v65 * (v64 + v64);
  v100 = 1.0 - (v62 * (v62 + v62));
  v101 = (v77 - *v13) * 0.5;
  v102 = (v79 - v76) * 0.5;
  v103 = (v80 - v78) * 0.5;
  v104 = (fabsf(((1.0 - v92) - v93) * v101) + fabsf((v94 - v99) * v102)) + fabsf((v95 + v98) * v103);
  v105 = (fabsf((v94 + v99) * v101) + fabsf((v100 - v93) * v102)) + fabsf((v97 - v96) * v103);
  v106 = (fabsf((v95 - v98) * v101) + fabsf((v96 + v97) * v102)) + fabsf((v100 - v92) * v103);
  v110[0] = v89 - v104;
  v110[1] = v90 - v105;
  v110[2] = v91 - v106;
  v110[3] = v104 + v89;
  v110[4] = v105 + v90;
  v110[5] = v106 + v91;
  physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v115, v11, v110, 0, &v119);
  v107 = v120[2256];
  if ((v124 & 0x8000000000000000) == 0 && (v124 & 0x7FFFFFFF00000000) != 0 && v123 != v122 && v123)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v107;
}

uint64_t physx::Gu::contactBoxHeightfield(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int32 *a5, uint64_t a6, uint64_t a7)
{
  physx::Gu::PolygonalBox::PolygonalBox(v24, (a1 + 4));
  physx::Gu::PolygonalBox::getPolygonalData(v24, v25);
  v13.i32[0] = *a5;
  v14 = *a5 + *(a1 + 12);
  v15 = vadd_f32(vdup_lane_s32(v13, 0), *(a1 + 4));
  v20 = vneg_f32(v15);
  v21 = -v14;
  v22 = v15;
  v23 = v14;
  v17[0] = xmmword_1E3047670;
  v17[1] = xmmword_1E3047670;
  v17[2] = xmmword_1E3060D60;
  v17[3] = xmmword_1E3047680;
  v18 = 0x3F80000000000000;
  v19 = 0;
  return contactHullHeightfield2(v25, &v20, a2, a3, a4, a5, a7, v17, 1);
}

BOOL physx::Gu::contactPlaneBox(uint64_t a1, float *a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = -(((v10 * (v10 + v10)) + -1.0) + (v7 * (v7 + v7)));
  v12 = -(((v7 + v7) * v8) + (v9 * (v10 + v10)));
  v13 = -(((v7 + v7) * v9) + (-v8 * (v10 + v10)));
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  v18 = v15 * (v15 + v15);
  v19 = v16 * (v16 + v16);
  v20 = (v14 + v14) * v15;
  v21 = (v14 + v14) * v16;
  v22 = (v14 + v14) * v17;
  v23 = (v15 + v15) * v16;
  v24 = (v15 + v15) * v17;
  v25 = (v16 + v16) * v17;
  v26 = (1.0 - v18) - v19;
  v27 = v20 + v25;
  v28 = v21 - v24;
  v29 = v20 - v25;
  v30 = 1.0 - (v14 * (v14 + v14));
  v31 = v30 - v19;
  v32 = v23 + v22;
  v33 = v21 + v24;
  v34 = v23 - v22;
  v35 = v30 - v18;
  v36 = a4[4];
  v37 = a4[5];
  v38 = a4[6];
  v39 = (v36 - a3[4]) + (v36 - a3[4]);
  v40 = (v37 - a3[5]) + (v37 - a3[5]);
  v41 = (v38 - a3[6]) + (v38 - a3[6]);
  v42 = ((v10 * ((v9 * v40) - (v8 * v41))) + (v39 * ((v10 * v10) + -0.5))) - (*a3 * ((-(v8 * v40) - (*a3 * v39)) - (v9 * v41)));
  v43 = (((v10 * *a4) - (*a3 * v17)) - (v8 * v16)) + (v15 * v9);
  v44 = (((v10 * v15) - (v8 * v17)) - (v9 * *a4)) + (v16 * *a3);
  v45 = (((v10 * v16) - (v9 * v17)) - (*a3 * v15)) + (*a4 * v8);
  v46 = (((*a3 * *a4) + (v10 * v17)) + (v8 * v15)) + (v9 * v16);
  v47 = (1.0 - (v44 * (v44 + v44))) - (v45 * (v45 + v45));
  v48 = (v44 * (v43 + v43)) - (v46 * (v45 + v45));
  v49 = (v45 * (v43 + v43)) + (v46 * (v44 + v44));
  v50 = *a5;
  v51 = *a5 - v42;
  v52 = a2[1];
  v53 = a2[2];
  v54 = a2[3];
  v55 = v47 * v52;
  v56 = v48 * v53;
  v57 = v49 * v54;
  v58 = (v47 * v52) + v56;
  if (v79 < 0)
  {
    v59 = *(a7 + 4096);
    if (v59 <= 0x3F)
    {
      *(a7 + 4096) = v59 + 1;
      v60 = a7 + (v59 << 6);
      *v60 = v11;
      *(v60 + 4) = v12;
      *(v60 + 16) = v36 + (((v26 * v52) + (v29 * v53)) + (v33 * v54));
      *(v60 + 20) = v37 + (((v27 * v52) + (v31 * v53)) + (v34 * v54));
      *(v60 + 24) = v38 + (((v28 * v52) + (v32 * v53)) + (v35 * v54));
      *(v60 + 8) = v13;
      *(v60 + 12) = v50 + ((v58 + v57) - v51);
      *(v60 + 52) = -1;
    }
  }

  if (v80 < 0)
  {
    v61 = *(a7 + 4096);
    if (v61 <= 0x3F)
    {
      *(a7 + 4096) = v61 + 1;
      v62 = a7 + (v61 << 6);
      *v62 = v11;
      *(v62 + 4) = v12;
      *(v62 + 16) = v36 + (((v26 * v52) + (v29 * v53)) - (v33 * v54));
      *(v62 + 20) = v37 + (((v27 * v52) + (v31 * v53)) - (v34 * v54));
      *(v62 + 24) = v38 + (((v28 * v52) + (v32 * v53)) - (v35 * v54));
      *(v62 + 8) = v13;
      *(v62 + 12) = v50 + ((v58 - v57) - v51);
      *(v62 + 52) = -1;
    }
  }

  v63 = v55 - v56;
  if (v81 < 0)
  {
    v64 = *(a7 + 4096);
    if (v64 <= 0x3F)
    {
      *(a7 + 4096) = v64 + 1;
      v65 = a7 + (v64 << 6);
      *v65 = v11;
      *(v65 + 4) = v12;
      *(v65 + 16) = v36 + (((v26 * v52) - (v29 * v53)) + (v33 * v54));
      *(v65 + 20) = v37 + (((v27 * v52) - (v31 * v53)) + (v34 * v54));
      *(v65 + 24) = v38 + (((v28 * v52) - (v32 * v53)) + (v35 * v54));
      *(v65 + 8) = v13;
      *(v65 + 12) = v50 + ((v63 + v57) - v51);
      *(v65 + 52) = -1;
    }
  }

  if (v82 < 0)
  {
    v66 = *(a7 + 4096);
    if (v66 <= 0x3F)
    {
      *(a7 + 4096) = v66 + 1;
      v67 = a7 + (v66 << 6);
      *v67 = v11;
      *(v67 + 4) = v12;
      *(v67 + 16) = v36 + (((v26 * v52) - (v29 * v53)) - (v33 * v54));
      *(v67 + 20) = v37 + (((v27 * v52) - (v31 * v53)) - (v34 * v54));
      *(v67 + 24) = v38 + (((v28 * v52) - (v32 * v53)) - (v35 * v54));
      *(v67 + 8) = v13;
      *(v67 + 12) = v50 + ((v63 - v57) - v51);
      *(v67 + 52) = -1;
    }
  }

  v68 = v56 - v55;
  if (v83 < 0)
  {
    v69 = *(a7 + 4096);
    if (v69 <= 0x3F)
    {
      *(a7 + 4096) = v69 + 1;
      v70 = a7 + (v69 << 6);
      *v70 = v11;
      *(v70 + 4) = v12;
      *(v70 + 16) = v36 + (((v29 * v53) - (v26 * v52)) + (v33 * v54));
      *(v70 + 20) = v37 + (((v31 * v53) - (v27 * v52)) + (v34 * v54));
      *(v70 + 24) = v38 + (((v32 * v53) - (v28 * v52)) + (v35 * v54));
      *(v70 + 8) = v13;
      *(v70 + 12) = v50 + ((v68 + v57) - v51);
      *(v70 + 52) = -1;
    }
  }

  v71 = -(v47 * v52);
  if (v84 < 0)
  {
    v72 = *(a7 + 4096);
    if (v72 <= 0x3F)
    {
      *(a7 + 4096) = v72 + 1;
      v73 = a7 + (v72 << 6);
      *v73 = v11;
      *(v73 + 4) = v12;
      *(v73 + 16) = v36 + (((v29 * v53) - (v26 * v52)) - (v33 * v54));
      *(v73 + 20) = v37 + (((v31 * v53) - (v27 * v52)) - (v34 * v54));
      *(v73 + 24) = v38 + (((v32 * v53) - (v28 * v52)) - (v35 * v54));
      *(v73 + 8) = v13;
      *(v73 + 12) = v50 + ((v68 - v57) - v51);
      *(v73 + 52) = -1;
    }
  }

  v74 = v71 - v56;
  v75 = *(a7 + 4096);
  if (v85 < 0 && v75 <= 0x3F)
  {
    v76 = a7 + (v75 << 6);
    LODWORD(v75) = v75 + 1;
    *(a7 + 4096) = v75;
    *v76 = v11;
    *(v76 + 4) = v12;
    *(v76 + 16) = v36 + ((-(v53 * v29) - (v26 * v52)) + (v33 * v54));
    *(v76 + 20) = v37 + ((-(v53 * v31) - (v27 * v52)) + (v34 * v54));
    *(v76 + 24) = v38 + ((-(v53 * v32) - (v28 * v52)) + (v35 * v54));
    *(v76 + 8) = v13;
    *(v76 + 12) = v50 + ((v74 + v57) - v51);
    *(v76 + 52) = -1;
  }

  if ((v86 & 0x80000000) == 0)
  {
    return v75 != 0;
  }

  if (v75 <= 0x3F)
  {
    *(a7 + 4096) = v75 + 1;
    v78 = a7 + (v75 << 6);
    *v78 = v11;
    *(v78 + 4) = v12;
    *(v78 + 16) = v36 + ((-(v53 * v29) - (v26 * v52)) - (v33 * v54));
    *(v78 + 20) = v37 + ((-(v53 * v31) - (v27 * v52)) - (v34 * v54));
    *(v78 + 24) = v38 + ((-(v53 * v32) - (v28 * v52)) - (v35 * v54));
    *(v78 + 8) = v13;
    *(v78 + 12) = v50 + ((v74 - v57) - v51);
    *(v78 + 52) = -1;
  }

  return 1;
}

BOOL physx::Gu::contactPlaneCapsule(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = -*a3;
  v10 = -v8;
  v12 = a3[2];
  v11 = a3[3];
  v13 = a3[4];
  v14 = a3[5];
  v15 = a3[6];
  v16 = (a4[4] - v13) + (a4[4] - v13);
  v17 = (a4[5] - v14) + (a4[5] - v14);
  v18 = (a4[6] - v15) + (a4[6] - v15);
  v19 = (v11 * v11) + -0.5;
  v20 = (-(v8 * v17) - (*a3 * v16)) - (v12 * v18);
  v21 = ((v11 * ((v12 * v17) - (v8 * v18))) + (v16 * v19)) - (*a3 * v20);
  v22 = ((v11 * ((*a3 * v18) - (v12 * v16))) + (v17 * v19)) - (v8 * v20);
  v23 = ((v11 * ((v8 * v16) - (*a3 * v17))) + (v18 * v19)) - (v12 * v20);
  v25 = a4[2];
  v24 = a4[3];
  v26 = a4[1];
  v27 = (((v11 * *a4) - (*a3 * v24)) - (v8 * v25)) + (v26 * v12);
  v28 = (((v11 * v26) - (v8 * v24)) - (v12 * *a4)) + (v25 * *a3);
  v29 = (((v11 * v25) - (v12 * v24)) - (*a3 * v26)) + (*a4 * v8);
  v30 = (((*a3 * *a4) + (v11 * v24)) + (v8 * v26)) + (v12 * v25);
  v31 = v27 + v27;
  v32 = v30 + v30;
  v33 = ((v30 * (v30 + v30)) + -1.0) + (v27 * (v27 + v27));
  v34 = (v28 * (v27 + v27)) + (v29 * v32);
  v35 = (v29 * v31) - (v28 * v32);
  v37 = *(a2 + 4);
  v36 = *(a2 + 8);
  v38 = v36 * v33;
  v39 = v36 * v34;
  v40 = v36 * v35;
  v41 = v21 + v38;
  v42 = v21 - v38;
  v43 = ((v11 * (v11 + v11)) + -1.0) + (v7 * (v7 + v7));
  v44 = (v8 * (v7 + v7)) + (v12 * (v11 + v11));
  v45 = ((v7 + v7) * v12) - (v8 * (v11 + v11));
  v46 = -v12;
  v47 = v41 - v37;
  v48 = v42 - v37;
  v49 = *a5;
  result = v47 <= *a5;
  if (v47 <= *a5)
  {
    v51 = *(a7 + 4096);
    if (v51 <= 0x3F)
    {
      v52 = (v23 + v40) + (v23 + v40);
      v53 = (v22 + v39) + (v22 + v39);
      v54 = ((v8 * v53) + (v7 * (v47 + v47))) + (v12 * v52);
      *(a7 + 4096) = v51 + 1;
      v55 = a7 + (v51 << 6);
      *v55 = -v43;
      *(v55 + 4) = -v44;
      *(v55 + 16) = v13 + (((v11 * ((v53 * v46) + (v8 * v52))) + ((v47 + v47) * v19)) + (v7 * v54));
      *(v55 + 20) = v14 + (((v11 * ((v52 * v9) + (v12 * (v47 + v47)))) + (v53 * v19)) + (v8 * v54));
      *(v55 + 24) = v15 + (((v11 * (((v47 + v47) * v10) + (v7 * v53))) + (v52 * v19)) + (v12 * v54));
      *(v55 + 8) = -v45;
      *(v55 + 12) = v47;
      *(v55 + 52) = -1;
    }
  }

  if (v48 <= v49)
  {
    v56 = *(a7 + 4096);
    if (v56 <= 0x3F)
    {
      v57 = v22 - v39;
      v58 = -v43;
      v59 = (v23 - v40) + (v23 - v40);
      v60 = v57 + v57;
      v61 = ((v8 * v60) + (v7 * (v48 + v48))) + (v12 * v59);
      v62 = ((v11 * (((v48 + v48) * v10) + (v7 * v60))) + (v59 * v19)) + (v12 * v61);
      v63 = a3[4];
      v64 = (((v11 * ((v59 * v9) + (v12 * (v48 + v48)))) + (v60 * v19)) + (v8 * v61)) + a3[5];
      v65 = a3[6];
      *(a7 + 4096) = v56 + 1;
      v66 = a7 + (v56 << 6);
      *v66 = v58;
      *(v66 + 4) = -v44;
      *(v66 + 16) = (((v11 * ((v60 * v46) + (v8 * v59))) + ((v48 + v48) * v19)) + (v7 * v61)) + v63;
      *(v66 + 20) = v64;
      *(v66 + 24) = v62 + v65;
      *(v66 + 8) = -v45;
      *(v66 + 12) = v48;
      *(v66 + 52) = -1;
    }

    return 1;
  }

  return result;
}

uint64_t physx::Gu::contactPlaneConvex(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v11 = *(a2 + 48);
  if (*(a2 + 4) == 1.0 && *(a2 + 8) == 1.0)
  {
    v10 = *(a2 + 12) == 1.0;
  }

  v13 = *a3;
  v12 = a3[1];
  v14 = a3[2];
  v15 = a3[3];
  v16 = *a4;
  v17 = a4[1];
  v18 = a4[4];
  v19 = a4[5];
  v20 = a3[4];
  v21 = a3[5];
  v22 = a4[6];
  v23 = a3[6];
  v24 = a4[2];
  v25 = a4[3];
  v26 = *(v11 + 39);
  v27 = *(v11 + 40);
  v28 = *(v11 + 38);
  v29 = 0.0;
  v145 = v21;
  v146 = v23;
  v144 = v20;
  v30 = v15;
  v31 = v14;
  v32 = v12;
  v147 = xmmword_1E3047670;
  v148 = xmmword_1E3047670;
  v33 = 1.0;
  v34 = 0.0;
  v35 = 0.0;
  v149 = xmmword_1E3060D60;
  v150 = xmmword_1E3047680;
  v36 = 1.0;
  v37 = 0.0;
  v38 = 0.0;
  v151 = 0x3F80000000000000;
  v39 = 0.0;
  v40 = 1.0;
  v152 = 0;
  if (!v10)
  {
    v141 = v17;
    v142 = v16;
    v41 = v18;
    v42 = v24;
    v139 = v12;
    v140 = v14;
    v137 = v23;
    v138 = v13;
    v43 = v25;
    v44 = v21;
    v45 = v22;
    physx::Cm::FastVertex2ShapeScaling::init(&v147, (a2 + 4), (a2 + 16));
    v22 = v45;
    v21 = v44;
    v25 = v43;
    v23 = v137;
    v13 = v138;
    v12 = v139;
    v14 = v140;
    v24 = v42;
    v18 = v41;
    v39 = *(&v147 + 1);
    v40 = *&v147;
    v37 = *(&v147 + 3);
    v38 = *(&v147 + 2);
    v35 = *(&v148 + 1);
    v36 = *&v148;
    v29 = *(&v148 + 3);
    v34 = *(&v148 + 2);
    v33 = *&v149;
    v31 = a3[2];
    v30 = a3[3];
    v144 = a3[4];
    v145 = a3[5];
    v146 = a3[6];
    v32 = a3[1];
    v17 = v141;
    v16 = v142;
  }

  v46 = 0;
  if (v28)
  {
    v47 = (v18 - v20) + (v18 - v20);
    v48 = (v19 - v21) + (v19 - v21);
    v49 = (v22 - v23) + (v22 - v23);
    v50 = (((v15 * v16) - (v13 * v25)) - (v12 * v24)) + (v17 * v14);
    v51 = (((v15 * v17) - (v12 * v25)) - (v14 * v16)) + (v24 * v13);
    v52 = (((v15 * v24) - (v14 * v25)) - (v13 * v17)) + (v16 * v12);
    v53 = v51 + v51;
    v54 = (((v13 * v16) + (v15 * v25)) + (v12 * v17)) + (v14 * v24);
    v55 = v52 + v52;
    v56 = v30;
    v57 = v29;
    v58 = v51 * (v51 + v51);
    v59 = (v15 * v15) + -0.5;
    v60 = v15 * ((v14 * v48) - (v12 * v49));
    v61 = v15 * ((v13 * v49) - (v14 * v47));
    v62 = v15 * ((v12 * v47) - (v13 * v48));
    v63 = (v50 + v50) * v51;
    v64 = v52 * (v50 + v50);
    v65 = v54 * (v50 + v50);
    v66 = v52 * (v52 + v52);
    v67 = v52 * v53;
    v68 = v54 * v53;
    v69 = v54 * v55;
    v70 = -(v12 * v48) - (v13 * v47);
    v71 = v60 + (v47 * v59);
    v72 = v61 + (v48 * v59);
    v73 = v62 + (v49 * v59);
    v74 = v70 - (v14 * v49);
    v75 = v63 + v69;
    v76 = v63 - v69;
    v77 = v64 - v68;
    v78 = v64 + v68;
    v79 = v65 + v67;
    v80 = v67 - v65;
    v81 = 1.0 - (v50 * (v50 + v50));
    v82 = (1.0 - v58) - v66;
    v83 = v81 - v66;
    v84 = v81 - v58;
    v85 = v71 - (v13 * v74);
    v143 = v72 - (v12 * v74);
    v86 = v73 - (v14 * v74);
    v87 = v82 * v40;
    v88 = (v83 * v39) + (v75 * v40);
    v89 = (v79 * v39) + (v77 * v40);
    v90 = v80 * v38;
    v91 = v84 * v38;
    v92 = (v78 * v38) + ((v76 * v39) + v87);
    v93 = v90 + v88;
    v94 = v91 + v89;
    v95 = (v83 * v36) + (v75 * v37);
    v96 = (v79 * v36) + (v77 * v37);
    v97 = (v78 * v35) + ((v76 * v36) + (v82 * v37));
    v98 = (v80 * v35) + v95;
    v99 = (v27 + 20 * v26);
    v100 = (v84 * v35) + v96;
    v101 = (v83 * v57) + (v75 * v34);
    v102 = v84 * v33;
    v103 = (v78 * v33) + ((v76 * v57) + (v82 * v34));
    v104 = (v80 * v33) + v101;
    v105 = v102 + ((v79 * v57) + (v77 * v34));
    v106 = *a3;
    v107 = v106 * (v106 + v106);
    v108 = v32 * (v32 + v32);
    v109 = v31 * (v31 + v31);
    v110 = v32 * (v106 + v106);
    v111 = v31 * (v106 + v106);
    v112 = v56 * (v106 + v106);
    v113 = v31 * (v32 + v32);
    v114 = v56 * (v32 + v32);
    v115 = v56 * (v31 + v31);
    v116 = (1.0 - v108) - v109;
    v117 = v115 + v110;
    v118 = v111 - v114;
    v119 = v110 - v115;
    v120 = 1.0 - v107;
    v121 = (1.0 - v107) - v109;
    v122 = v113 + v112;
    v123 = v114 + v111;
    v124 = v113 - v112;
    v125 = v120 - v108;
    v126 = -(v111 - v114);
    v127 = *a5;
    v128 = *(a7 + 4096);
    do
    {
      v129 = *v99;
      v130 = v99[1];
      v131 = v99[2];
      v132 = v85 + (((v92 * *v99) + (v97 * v130)) + (v103 * v131));
      if (v132 <= v127)
      {
        if (v128 <= 0x3F)
        {
          v133 = v143 + (((v93 * v129) + (v98 * v130)) + (v104 * v131));
          v134 = v86 + (((v94 * v129) + (v100 * v130)) + (v105 * v131));
          v135 = a7 + (v128++ << 6);
          *(a7 + 4096) = v128;
          *v135 = -v116;
          *(v135 + 4) = -v117;
          *(v135 + 16) = v144 + ((v123 * v134) + ((v116 * v132) + (v119 * v133)));
          *(v135 + 20) = v145 + ((v124 * v134) + ((v117 * v132) + (v121 * v133)));
          *(v135 + 24) = v146 + ((v125 * v134) + ((v118 * v132) + (v122 * v133)));
          *(v135 + 8) = v126;
          *(v135 + 12) = v132;
          *(v135 + 52) = -1;
        }

        v46 = 1;
      }

      v99 += 3;
      --v28;
    }

    while (v28);
  }

  return v46 & 1;
}

float physx::Gu::findRotationMatrixFromZ(float *a1, float32x2_t *a2)
{
  v2 = a2[1].f32[0];
  if (fabsf(v2) <= 0.9999)
  {
    v15 = a2->f32[0];
    v14 = a2->f32[1];
    v16 = 1.0 / (v2 + 1.0);
    v17 = -(v14 * v16);
    v18 = v17 * a2->f32[0];
    v19 = (v16 * 0.0) * a2->f32[0];
    v20 = a2->f32[0] + (v17 * 0.0);
    *a1 = v2 - (v17 * v14);
    a1[1] = v18 + 0.0;
    a1[6] = v20;
    a1[7] = v14 + v19;
    a1[2] = (v17 * 0.0) - v15;
    a1[3] = v18;
    a1[4] = v2 + ((v16 * v15) * v15);
    a1[5] = v19 - v14;
    result = v2 + ((v16 * 0.0) * 0.0);
    a1[8] = result;
  }

  else
  {
    v3 = 0;
    v23 = 0x3F80000000000000;
    v24 = -1082130432;
    v21 = vsub_f32(0x3F80000000000000, *a2);
    v22 = 0.0 - v2;
    v4 = 2.0 / ((vmuls_lane_f32(v21.f32[1], v21, 1) + (v21.f32[0] * v21.f32[0])) + (v22 * v22));
    result = ((v21.f32[1] + (v21.f32[0] * 0.0)) - (0.0 - v2)) * v4;
    v6 = -v4;
    v7 = a1;
    do
    {
      v8 = 0;
      v9 = -*(&v23 + v3);
      v10 = v21.f32[v3];
      v11 = v10 * v6;
      v12 = result * v10;
      v13 = v7;
      do
      {
        *v13 = ((v11 * v21.f32[v8]) + (v9 * *(&v23 + v8 * 4))) + (v12 * *(&v23 + v8 * 4));
        v13 += 3;
        ++v8;
      }

      while (v8 != 3);
      a1[3 * v3 + v3] = a1[3 * v3 + v3] + 1.0;
      ++v3;
      ++v7;
    }

    while (v3 != 3);
  }

  return result;
}

uint64_t physx::Gu::contactPolygonPolygonExt(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, float *a5, float *a6, unsigned int a7, uint64_t a8, float a9, unsigned __int8 *a10, uint64_t a11, float *a12, float *a13, float *a14, uint64_t a15, float *a16, __int32 a17, uint64_t a18, unsigned __int8 a19, uint64_t a20)
{
  v244 = a6;
  v239 = a5;
  v242 = a4;
  v240 = a3;
  v252 = a9;
  v22 = a1;
  v251 = a20;
  v241 = a11;
  v273 = *MEMORY[0x1E69E9840];
  v23 = *a14;
  v253 = a19;
  v257 = a8;
  if (a19)
  {
    v250 = -v23;
    v25 = a14[1];
    v24 = a14[2];
    v249 = -v25;
    v248 = -v24;
  }

  else
  {
    v25 = a14[1];
    v24 = a14[2];
    v250 = v23;
    v249 = v25;
    v248 = v24;
  }

  v247 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v268 = (&v218 - v26);
  bzero(&v218 - v26, v27);
  v258 = v22;
  v28 = v22;
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v218 - ((v22 + 15) & 0x1FFFFFFF0);
  bzero(v30, v22);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v30;
  bzero(v30, v22);
  MEMORY[0x1EEE9AC00](v33);
  v34 = (a7 + 15) & 0x1FFFFFFF0;
  v236 = &v218 - v34;
  bzero(&v218 - v34, a7);
  MEMORY[0x1EEE9AC00](v35);
  v238 = &v218 - v34;
  v237 = a7;
  bzero(&v218 - v34, a7);
  v245 = *(a18 + 4096);
  v270[0] = 0.0;
  v269[0] = 0;
  v271 = 0;
  v267 = a7;
  v254 = a18;
  v233 = v30;
  v232 = v30;
  v235 = a10;
  if (a7 < 3 || (v36 = v241, v37 = ((v25 * v36[1]) + (*v36 * v23)) + (v36[2] * v24), v38 = ((v25 * v36[7]) + (v36[6] * v23)) + (v36[8] * v24), v39 = *a12, v40 = a12[1], v264 = ((v25 * v36[4]) + (v36[3] * v23)) + (v36[5] * v24), v265 = v37, v41 = -(v264 * v40) - (v37 * v39), v42 = a12[2], v263 = v38, v43 = v41 - (v38 * v42), v43 < 0.0000001))
  {
    bzero(v30, v28);
    bzero(v30, v28);
    goto LABEL_19;
  }

  v44 = *(a15 + 4);
  v262 = *a15;
  v261 = v44;
  v45 = a13[6];
  v46 = a13[7];
  v47 = a13[8];
  v48 = *(a15 + 12);
  v243.i32[0] = *(a15 + 8);
  v260 = v48;
  v49 = *(a15 + 16);
  v231.i32[0] = *(a15 + 20);
  v50 = *(a15 + 28);
  v259 = *(a15 + 24);
  v51 = *(a15 + 36);
  LODWORD(v230) = *(a15 + 32);
  v255 = v51;
  v52 = *(a15 + 40);
  v53 = *(a15 + 44);
  v234 = *(a12 + 3);
  transformVertices(v270, v269, &v271 + 1, &v271, v268, v267, v257, a10, a13);
  if (!v258)
  {
LABEL_19:
    v256 = 0;
    v266 = 0.0;
    goto LABEL_20;
  }

  v266 = 0.0;
  v256 = 0;
  *&v246 = 0.0;
  v262 = ((v261 * v46) + (v45 * v262)) + (v47 * *v243.i32);
  v261 = ((v46 * v49) + (v45 * v260)) + (v47 * *v231.i32);
  v260 = ((v46 * v50) + (v45 * v259)) + (v47 * *&v230);
  v259 = ((v46 * v52) + (v45 * v255)) + (v47 * v53);
  v54 = 1.0 / v43;
  v55 = *&v234;
  v255 = -*&v234;
  v56 = v270[0];
  v57 = *v269;
  v58 = v271;
  v59 = v240;
  v243 = vcltz_s32(vshl_n_s32(vdup_n_s32(v253), 0x1FuLL));
  v60 = v28;
  v61 = LODWORD(v245);
  do
  {
    v62 = a2;
    v63 = (a2 + 12 * *v59);
    v64 = v63[1];
    v65 = v63[2];
    v66 = v259 + (((v261 * v64) + (*v63 * v262)) + (v65 * v260));
    v67 = v64 * *(a15 + 16);
    v68 = (*v63 * *(a15 + 8)) + (v64 * *(a15 + 20));
    v69 = v55;
    v70 = v54 * (v55 + v66);
    v71 = (v265 * v70) + ((((*v63 * *a15) + (v64 * *(a15 + 12))) + (v65 * *(a15 + 24))) + *(a15 + 36));
    v72 = (v264 * v70) + ((((*v63 * *(a15 + 4)) + v67) + (v65 * *(a15 + 28))) + *(a15 + 40));
    v73 = (v263 * v70) + ((v68 + (v65 * *(a15 + 32))) + *(a15 + 44));
    v74 = PointInConvexPolygon2D_OutCodes(v268, v267, (((v72 * a13[1]) + (*a13 * v71)) + (a13[2] * v73)) - v56, (((v72 * a13[4]) + (a13[3] * v71)) + (a13[5] * v73)) - v57, *(&v58 + 1), *&v58, v32);
    *v30 = v74;
    if (v74 && (++LODWORD(v266), v66 < v255))
    {
      v55 = v69;
      if (v61 <= 0x3F)
      {
        v75 = v61++;
        v76 = v254;
        *(v254 + 4096) = v61;
        v77 = (v76 + (v75 << 6));
        v78 = v246;
        v272[v246] = *v59;
        v79 = v249;
        v77->f32[0] = v250;
        v77->f32[1] = v79;
        v77[1].f32[0] = v248;
        v80 = v63[1];
        v81 = v63[2];
        v82 = *(v251 + 8);
        if (!v253)
        {
          v82 = 0.0;
        }

        v83 = ((((*v63 * *(v242 + 8)) + (v80 * *(v242 + 20))) + (v81 * *(v242 + 32))) + *(v242 + 44)) + v82;
        v77[2] = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v242, *v63), vmul_n_f32(*(v242 + 12), v80)), vmul_n_f32(*(v242 + 24), v81)), *(v242 + 36)), vand_s8(*v251, v243));
        v77[3].f32[0] = v83;
        v77[1].f32[1] = v70 + v252;
        v77[6].i32[1] = v247;
        v256 = 1;
        v246 = v78 + 1;
      }

      else
      {
        v256 = 1;
      }
    }

    else
    {
      v55 = v69;
    }

    ++v30;
    ++v32;
    ++v59;
    --v60;
    a2 = v62;
  }

  while (v60);
LABEL_20:
  v84 = v258;
  if (LODWORD(v266) == v258)
  {
    v85 = v254;
    v86 = LODWORD(v245);
    v87 = v258;
    v88 = v244;
    v89 = a2;
LABEL_22:
    ContactReductionAllIn(v85, v86, v87, v88, v89, v272);
LABEL_23:
    v90 = v256;
    return v90 & 1;
  }

  v92 = v254;
  v93 = v244;
  ContactReductionAllIn(v254, LODWORD(v245), SLODWORD(v266), v244, a2, v272);
  v230 = a16;
  if (v84 < 3)
  {
    v137 = v236;
    v138 = v237;
    bzero(v236, v237);
    v139 = v238;
    bzero(v238, v138);
    v140 = v239;
    v141 = v240;
    v142 = v233;
    v143 = v232;
    v136 = v267;
    v144 = v257;
    v109 = v235;
    if (!v267)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v94 = *(v92 + 4096);
    v95 = v93[1];
    v259 = *v93;
    v222 = v95;
    v96 = *a16;
    v97 = a16[1];
    v98 = v93[3];
    v221 = v93[2];
    v224 = v98;
    v99 = v93[5];
    v220 = v93[4];
    v223 = v99;
    v100 = *(v93 + 7);
    v228 = v93[6];
    v231.i32[0] = v100;
    v243.i32[0] = v93[8];
    v101 = a16[2];
    v102 = a16[3];
    v103 = a16[4];
    v104 = a16[5];
    v105 = a16[7];
    v260 = a16[6];
    v106 = a16[8];
    v225 = a16[9];
    v107 = a16[11];
    v219 = a16[10];
    v226 = v107;
    v227 = v239[3];
    v218 = a2;
    transformVertices(v270, v269, &v271 + 1, &v271, v268, v84, a2, v240, v93);
    v108 = v238;
    v109 = v235;
    v229 = v94;
    v110 = 0;
    if (v267)
    {
      *&v234 = 0.0;
      v266 = ((v222 * v97) + (v259 * v96)) + (v221 * v101);
      v265 = ((v97 * v220) + (v224 * v96)) + (v223 * v101);
      v255 = ((v97 * *v231.i32) + (v228 * v96)) + (*v243.i32 * v101);
      v264 = ((v222 * v103) + (v259 * v102)) + (v221 * v104);
      v263 = ((v220 * v103) + (v224 * v102)) + (v223 * v104);
      *&v246 = ((*v231.i32 * v103) + (v228 * v102)) + (*v243.i32 * v104);
      v262 = ((v222 * v105) + (v259 * v260)) + (v221 * v106);
      v261 = ((v220 * v105) + (v224 * v260)) + (v223 * v106);
      v245 = ((*v231.i32 * v105) + (v228 * v260)) + (*v243.i32 * v106);
      v111 = v227;
      *&v244 = -v227;
      v260 = v270[0];
      v112 = (v222 * v219) + (v259 * v225);
      v259 = *v269;
      v113 = v112 + (v221 * v226);
      v114 = v271;
      v115 = ((v220 * v219) + (v224 * v225)) + (v223 * v226);
      v116 = *v231.i32 * v219;
      v231 = vcgez_s32(vshl_n_s32(vdup_n_s32(v253), 0x1FuLL));
      v117 = v235;
      v118 = v236;
      v119 = v237;
      v120 = v94;
      *v243.i32 = (v116 + (v228 * v225)) + (*v243.i32 * v226);
      do
      {
        v121 = (v257 + 12 * *v117);
        v123 = *v121;
        v122 = v121[1];
        v124 = v121[2];
        v125 = PointInConvexPolygon2D_OutCodes(v268, v258, (v113 + (((v264 * v122) + (*v121 * v266)) + (v124 * v262))) - v260, (v115 + (((v263 * v122) + (*v121 * v265)) + (v124 * v261))) - v259, *(&v114 + 1), *&v114, v108);
        *v118 = v125;
        if (v125)
        {
          ++v110;
          v126 = *v243.i32 + (((*&v246 * v122) + (v123 * v255)) + (v124 * v245));
          if (v126 < *&v244)
          {
            if (v120 <= 0x3F)
            {
              v127 = v120++;
              v128 = v254;
              *(v254 + 4096) = v120;
              v129 = (v128 + (v127 << 6));
              v130 = v234;
              v272[v234] = *v117;
              v131 = v249;
              v129->f32[0] = v250;
              v129->f32[1] = v131;
              v129[1].f32[0] = v248;
              v132 = v121[1];
              v133 = v121[2];
              v134 = *(v251 + 8);
              if (v253)
              {
                v134 = 0.0;
              }

              v135 = ((((*v121 * *(v241 + 8)) + (v132 * *(v241 + 20))) + (v133 * *(v241 + 32))) + *(v241 + 44)) + v134;
              v129[2] = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v241, *v121), vmul_n_f32(*(v241 + 12), v132)), vmul_n_f32(*(v241 + 24), v133)), *(v241 + 36)), vand_s8(*v251, v231));
              v129[3].f32[0] = v135;
              v129[1].f32[1] = (v111 + v126) + v252;
              v129[6].i32[1] = v247;
              v256 = 1;
              v234 = v130 + 1;
            }

            else
            {
              v256 = 1;
            }
          }
        }

        ++v118;
        ++v108;
        ++v117;
        --v119;
      }

      while (v119);
    }

    v136 = v267;
    if (v110 == v267)
    {
      v85 = v254;
      v86 = v229;
      v87 = v267;
      v88 = a13;
      v89 = v257;
      goto LABEL_22;
    }

    v92 = v254;
    v144 = v257;
    ContactReductionAllIn(v254, v229, v110, a13, v257, v272);
    a2 = v218;
    v141 = v240;
    v142 = v233;
    v143 = v232;
    v138 = v237;
    v137 = v236;
    v139 = v238;
    v140 = v239;
    if (!v136)
    {
      goto LABEL_23;
    }
  }

  v145 = v230[2];
  v146 = v230[5];
  v147 = v230[8];
  v148 = *v230;
  v149 = *(v230 + 3);
  v150 = *(v230 + 6);
  v151 = *(v230 + 9);
  v152 = (v268 + 2);
  v153 = v138;
  v154 = v230[11];
  do
  {
    v155 = *v109++;
    v156 = (v144 + 12 * v155);
    v157 = v156[1];
    v158 = v156[2];
    v159 = v154 + (((v145 * *v156) + (v146 * v157)) + (v147 * v158));
    *(v152 - 1) = vadd_f32(v151, vadd_f32(vadd_f32(vmul_n_f32(v148, *v156), vmul_n_f32(v149, v157)), vmul_n_f32(v150, v158)));
    *v152 = v159;
    v152 += 3;
    --v153;
  }

  while (v153);
  if (v258 < 2 || v136 == 1)
  {
    goto LABEL_23;
  }

  v160 = 0;
  v161 = vcgez_s32(vshl_n_s32(vdup_n_s32(v253), 0x1FuLL));
  v90 = v256;
  do
  {
    v162 = v160 + 1;
    if (v160 + 1 < v138)
    {
      v163 = v160 + 1;
    }

    else
    {
      v163 = 0;
    }

    if ((v137[v160] != 1 || (v137[v163] & 1) == 0) && (v139[v163] & v139[v160]) == 0)
    {
      v164 = &v268[3 * v160];
      v165 = &v268[3 * v163];
      v166 = *v165;
      v167 = v165[1];
      v168 = *v164;
      v169 = v164[1];
      v170 = v165[2];
      v171 = v164[2];
      v270[0] = *v165 - *v164;
      v270[1] = v167 - v169;
      v270[2] = v170 - v171;
      v173 = v140[1];
      v172 = v140[2];
      v174 = ((v167 - v169) * v172) - ((v170 - v171) * v173);
      v175 = ((v170 - v171) * *v140) - (v270[0] * v172);
      v176 = (v270[0] * v173) - ((v167 - v169) * *v140);
      v177 = fabsf(v174);
      v178 = fabsf(v175);
      v179 = fabsf(v176);
      if (v178 <= v177 || v178 <= v179)
      {
        if (v179 <= v177)
        {
          v182 = 1;
          v181 = 2;
        }

        else
        {
          v182 = 0;
          v181 = 1;
        }
      }

      else
      {
        v181 = 0;
        v182 = 2;
      }

      v183 = 0;
      v184 = ((v169 * v175) + (v174 * v168)) + (v176 * v171);
      v185 = v270[v182];
      v186 = v270[v181];
      v187 = -v186;
      v188 = 1.0 / ((v185 * v140[v181]) - (v186 * v140[v182]));
      do
      {
        v189 = v183 + 1;
        if (v183 + 1 < v28)
        {
          v190 = v183 + 1;
        }

        else
        {
          v190 = 0;
        }

        if ((v142[v183] != 1 || (v142[v190] & 1) == 0) && (v143[v190] & v143[v183]) == 0)
        {
          v191 = (a2 + 12 * v141[v183]);
          v192 = (a2 + 12 * v141[v190]);
          v193 = *v191;
          v194 = v191[1];
          v195 = v191[2];
          v196 = (((v175 * v194) + (*v191 * v174)) + (v195 * v176)) - v184;
          v197 = v192[1];
          v198 = v192[2];
          if ((v196 * ((((v175 * v197) + (*v192 * v174)) + (v198 * v176)) - v184)) <= 0.0)
          {
            v199 = *v192 - v193;
            v200 = v197 - v194;
            v201 = v198 - v195;
            v202 = ((v175 * v200) + (v174 * v199)) + (v176 * v201);
            if (v202 != 0.0)
            {
              v203 = v196 / v202;
              v204 = v200 * v203;
              v205 = v201 * v203;
              v206 = v193 - (v199 * v203);
              v207 = v194 - v204;
              v208 = v195 - v205;
              *v269 = v206;
              *&v269[1] = v207;
              *&v269[2] = v195 - v205;
              v209 = v188 * (((*&v269[v182] - v164[v182]) * v187) + (v185 * (*&v269[v181] - v164[v181])));
              if (v209 >= 0.0)
              {
                v210 = v206 - (v209 * *v140);
                v211 = v207 - (v209 * v140[1]);
                v212 = v208 - (v209 * v140[2]);
                if (((((v169 - v211) * (v167 - v211)) + ((v168 - v210) * (v166 - v210))) + ((v171 - v212) * (v170 - v212))) < 0.0)
                {
                  v213 = *(v92 + 4096);
                  if (v213 <= 0x3F)
                  {
                    *(v92 + 4096) = v213 + 1;
                    v214 = (v92 + (v213 << 6));
                    v215 = v249;
                    v214->f32[0] = v250;
                    v214->f32[1] = v215;
                    v214[1].f32[0] = v248;
                    v216 = *(v251 + 8);
                    if (v253)
                    {
                      v216 = 0.0;
                    }

                    v217 = ((((v210 * *(v242 + 8)) + (v211 * *(v242 + 20))) + (v212 * *(v242 + 32))) + *(v242 + 44)) + v216;
                    v214[2] = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v242, v210), vmul_n_f32(*(v242 + 12), v211)), vmul_n_f32(*(v242 + 24), v212)), *(v242 + 36)), vand_s8(*v251, v161));
                    v214[3].f32[0] = v217;
                    v214[1].f32[1] = v252 - v209;
                    v214[6].i32[1] = v247;
                  }

                  v90 = 1;
                }
              }
            }
          }
        }

        v183 = v189;
      }

      while (v28 != v189);
    }

    v160 = v162;
  }

  while (v162 != v138);
  return v90 & 1;
}

float32_t transformVertices(_DWORD *a1, _DWORD *a2, _DWORD *a3, float *a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9)
{
  v9 = 0;
  v10 = 0x80000000800000;
  v11 = vneg_f32(0x80000000800000);
  v12 = a6;
  v13 = a6;
  do
  {
    v14 = *a8++;
    v15 = *a9;
    v16 = *(a9 + 8);
    v17 = *(a9 + 4);
    v17.i32[1] = *(a9 + 16);
    v15.i32[1] = *(a9 + 12);
    v16.i32[1] = *(a9 + 20);
    v18 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v17, *(a7 + 12 * v14 + 4)), v15, *(a7 + 12 * v14)), v16, *(a7 + 12 * v14 + 8));
    v11 = vbsl_s8(vcgt_f32(v18, v11), v11, v18);
    v10 = vbsl_s8(vcgt_f32(v10, v18), v10, v18);
    *(a5 + 4 * (v9 & 0xFFFFFFFE)) = v18;
    v9 += 2;
    --v13;
  }

  while (v13);
  v19 = 0;
  v20 = vmul_f32(vadd_f32(v11, v10), 0x3F0000003F000000);
  v21 = vdup_n_s32(0xB58637BD);
  v22 = vadd_f32(v11, v21);
  v23 = vdup_n_s32(0x358637BDu);
  do
  {
    *(a5 + 4 * (v19 & 0xFFFFFFFE)) = vadd_f32(vsub_f32(*(a5 + 4 * (v19 & 0xFFFFFFFE)), v22), vbsl_s8(vcgez_f32(vsub_f32(*(a5 + 4 * (v19 & 0xFFFFFFFE)), v20)), v23, v21));
    v19 += 2;
    --v12;
  }

  while (v12);
  v10.f32[0] = (v10.f32[0] + 0.000001) - v22.f32[0];
  *a1 = v22.i32[0];
  *a2 = v22.i32[1];
  *a3 = v10.i32[0];
  *a4 = (v10.f32[1] + 0.000001) - v22.f32[1];
  return v10.f32[0];
}

uint64_t PointInConvexPolygon2D_OutCodes(const float *a1, int a2, float a3, float a4, float a5, float a6, unsigned __int8 *a7)
{
  if (a4 >= 0.0)
  {
    v7 = 2 * (a3 < 0.0);
  }

  else
  {
    v7 = (2 * (a3 < 0.0)) | 8;
  }

  if (a3 > a5)
  {
    ++v7;
  }

  if (a4 > a6)
  {
    v7 |= 4u;
  }

  *a7 = v7;
  if (v7)
  {
    return 0;
  }

  if (a2 == 3)
  {
    v9 = a1[1];
    v10 = a1[2] - *a1;
    v11 = a1[3] - v9;
    v12 = a1[4] - *a1;
    v13 = a1[5] - v9;
    v14 = (v11 * v11) + (v10 * v10);
    v15 = (v11 * v13) + (v10 * v12);
    v16 = (v13 * v13) + (v12 * v12);
    v17 = a3 - *a1;
    v18 = a4 - v9;
    v19 = (v18 * v11) + (v17 * v10);
    v20 = (v18 * v13) + (v17 * v12);
    v21 = (v19 * v16) - (v20 * v15);
    v22 = (v20 * v14) - (v19 * v15);
    v24 = v22 > 0.0 && v21 > 0.0;
    return v24 & ((v21 + v22) < ((v14 * v16) - (v15 * v15)));
  }

  else
  {
    v25 = 0;
    v26 = &a1[2 * a2];
    v27 = v26 - 2;
    v28 = *(v26 - 1) >= SLODWORD(a4);
    v29 = a1 + 1;
    do
    {
      v30 = v28;
      v28 = *v29 >= SLODWORD(a4);
      if (v30 != v28 && *v29 >= SLODWORD(a4) != ((*v29 - a4) * (*v27 - *(v29 - 1))) <= ((*(v29 - 1) - a3) * (v27[1] - *v29)))
      {
        if (v25 == 1)
        {
          return 0;
        }

        ++v25;
      }

      v27 = a1;
      a1 += 2;
      v29 += 2;
      --a2;
    }

    while (a2);
    return v25 & 1;
  }
}

void ContactReductionAllIn(uint64_t a1, unsigned int a2, int a3, float *a4, uint64_t a5, uint64_t a6)
{
  v95[9] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4096) - a2;
  if (v6 >= 5)
  {
    v9 = a1 + (a2 << 6);
    if (v6 == a3)
    {
      LODWORD(v10) = 0;
      v11 = *(v9 + 12);
      v12 = (v9 + 76);
      v13 = 1;
      do
      {
        v14 = *v12;
        v12 += 16;
        v15 = v14;
        v16 = v11 <= v14;
        if (v11 <= v14)
        {
          v10 = v10;
        }

        else
        {
          v10 = v13;
        }

        if (!v16)
        {
          v11 = v15;
        }

        ++v13;
      }

      while (a3 != v13);
      v17 = 0;
      v18 = v9 + 44;
      v19 = 1;
      v20 = 4;
      do
      {
        v21 = HIWORD(v17);
        v22 = v9 + (v21 << 6);
        *(v18 - 44) = *v22;
        *(v18 - 28) = *(v22 + 16);
        *(v18 - 12) = *(v22 + 32);
        *(v18 - 4) = *(v22 + 40);
        v23 = *(v22 + 44);
        *(v18 + 16) = *(v22 + 60);
        *v18 = v23;
        v18 += 64;
        v19 &= v21 != v10;
        v17 += a3 << 14;
        --v20;
      }

      while (v20);
      if (v19)
      {
        v24 = v9 + (v10 << 6);
        v25 = *(v24 + 16);
        *(v9 + 256) = *v24;
        *(v9 + 272) = v25;
        *(v9 + 288) = *(v24 + 32);
        *(v9 + 296) = *(v24 + 40);
        v26 = *(v24 + 60);
        *(v9 + 300) = *(v24 + 44);
        *(v9 + 316) = v26;
        v27 = 5;
      }

      else
      {
        v27 = 4;
      }

      v91 = v27 + a2;
    }

    else
    {
      v31 = &v94;
      v32 = 0.0;
      v33 = 8;
      do
      {
        v34 = __sincosf_stret(v32);
        *(v31 - 2) = LODWORD(v34.__cosval);
        *(v31 - 4) = LODWORD(v34.__sinval);
        v31 = (v31 + 12);
        v32 = v32 + 0.3927;
        --v33;
      }

      while (v33);
      memset_pattern16(__b, &unk_1E3113FF0, 0x20uLL);
      memset_pattern16(v92, &unk_1E3116810, 0x20uLL);
      v36 = 0;
      v37 = *a4;
      v38 = a4[1];
      v39 = a4[3];
      v40 = a4[4];
      v41 = a4[6];
      v42 = a4[7];
      do
      {
        v43 = 0;
        v44 = (a5 + 12 * *(a6 + v36));
        v45 = v44[1];
        v46 = v44[2];
        v47 = ((v38 * *v44) + (v40 * v45)) + (v42 * v46);
        v35.f32[0] = ((v37 * *v44) + (v39 * v45)) + (v41 * v46);
        v35 = vdupq_lane_s32(*v35.f32, 0);
        v48 = v95;
        do
        {
          v49.i32[0] = *(v48 - 6);
          v50.i32[0] = *(v48 - 5);
          v49.i32[1] = *(v48 - 3);
          v49.i32[2] = *v48;
          v49.i32[3] = v48[3];
          v50.i32[1] = *(v48 - 2);
          v50.i32[2] = v48[1];
          v50.i32[3] = v48[4];
          v51 = vmlaq_f32(vmulq_n_f32(v50, v47), v35, v49);
          *&__b[v43] = vbslq_s8(vcgtq_f32(v51, *&__b[v43]), *&__b[v43], v51);
          *&v92[v43] = vbslq_s8(vcgtq_f32(*&v92[v43], v51), *&v92[v43], v51);
          v43 += 4;
          v48 += 12;
        }

        while (v43 != 8);
        ++v36;
      }

      while (v36 != v6);
      v52 = 0;
      v53 = v92[0] - __b[0];
      for (i = 1; i != 8; ++i)
      {
        if ((v92[i] - __b[i]) > v53)
        {
          v52 = i;
          v53 = v92[i] - __b[i];
        }
      }

      v55 = 0;
      LODWORD(v56) = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = &__b[3 * v52 + 8];
      v61 = *v60;
      v62 = v60[1];
      v63 = 3.4028e38;
      v64 = -3.4028e38;
      v65 = -3.4028e38;
      v66 = 3.4028e38;
      do
      {
        v67 = (a5 + 12 * *(a6 + v55));
        v68 = v67[1];
        v69 = (v37 * *v67) + (v39 * v68);
        v70 = (v38 * *v67) + (v40 * v68);
        v71 = v67[2];
        v72 = v69 + (v41 * v71);
        v73 = v70 + (v42 * v71);
        v74 = (v62 * v73) + (v61 * v72);
        v75 = (v61 * v73) + (-v62 * v72);
        if (v74 < v66)
        {
          v66 = v74;
          v59 = v55;
        }

        if (v74 > v65)
        {
          v65 = v74;
          v58 = v55;
        }

        if (v75 < v63)
        {
          v63 = v75;
          v57 = v55;
        }

        if (v75 <= v64)
        {
          v56 = v56;
        }

        else
        {
          v64 = v75;
          v56 = v55;
        }

        ++v55;
      }

      while (v6 != v55);
      v76 = 0;
      v77 = 0;
      if (v58 == v59)
      {
        v78 = -1;
      }

      else
      {
        v78 = v58;
      }

      if (v57 == v78 || v57 == v59)
      {
        v80 = -1;
      }

      else
      {
        v80 = v57;
      }

      v82 = v56 == v80 || v56 == v78 || v56 == v59;
      v83 = 0xFFFFFFFFLL;
      if (!v82)
      {
        v83 = v56;
      }

      v84 = v59 << 6;
      v85 = v83 << 6;
      v86 = v80 << 6;
      v87 = v78 << 6;
      do
      {
        if (v84 == v76 || v87 == v76 || v86 == v76 || v85 == v76)
        {
          v88 = v77++;
          v89 = v9 + (v88 << 6);
          *v89 = *(v9 + v76);
          *(v89 + 16) = *(v9 + v76 + 16);
          *(v89 + 32) = *(v9 + v76 + 32);
          *(v89 + 40) = *(v9 + v76 + 40);
          v90 = *(v9 + v76 + 44);
          *(v89 + 60) = *(v9 + v76 + 60);
          *(v89 + 44) = v90;
        }

        v76 += 64;
      }

      while (v6 << 6 != v76);
      v91 = v77 + a2;
    }

    *(a1 + 4096) = v91;
  }
}

uint64_t physx::Gu::contactSphereBox(uint64_t a1, float *a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v7 = a3[4];
  v8 = a3[5];
  v9 = a4[4];
  v10 = a4[5];
  v11 = v7 - v9;
  v12 = v8 - v10;
  v13 = a3[6];
  v14 = a4[6];
  v15 = v13 - v14;
  v17 = a4[2];
  v16 = a4[3];
  v18 = (v16 * v16) + -0.5;
  v19 = *a4;
  v20 = a4[1];
  v21 = (((v12 + v12) * v20) + (*a4 * (v11 + v11))) + (v17 * (v15 + v15));
  v22 = (((v11 + v11) * v18) - (((v20 * (v15 + v15)) - (v17 * (v12 + v12))) * v16)) + (*a4 * v21);
  v23 = (((v12 + v12) * v18) - (((v17 * (v11 + v11)) - (*a4 * (v15 + v15))) * v16)) + (v20 * v21);
  v24 = a2[1];
  v25 = -v24;
  if (v22 >= -v24)
  {
    if (v22 <= v24)
    {
      v26 = 0;
      v25 = (((v11 + v11) * v18) - (((v20 * (v15 + v15)) - (v17 * (v12 + v12))) * v16)) + (*a4 * v21);
    }

    else
    {
      v26 = 1;
      v25 = a2[1];
    }
  }

  else
  {
    v26 = 1;
  }

  v27 = (((v15 + v15) * v18) - (((*a4 * (v12 + v12)) - (v20 * (v11 + v11))) * v16)) + (v17 * v21);
  v28 = a2[2];
  if (v23 >= -v28)
  {
    if (v23 > v28)
    {
      v26 = 1;
      v23 = a2[2];
    }
  }

  else
  {
    v26 = 1;
    v23 = -v28;
  }

  v29 = *(a1 + 4);
  v30 = -v17;
  v31 = -v19;
  v32 = -v20;
  v33 = a2[3];
  v34 = -v33;
  if (v27 >= -v33)
  {
    if (v27 <= v33)
    {
      v34 = v27;
    }

    else
    {
      v26 = 1;
      v34 = a2[3];
    }

    if (v26 != 1)
    {
      v50 = v24 - fabsf(v25);
      v51 = v28 - fabsf(v23);
      v52 = v33 - fabsf(v27);
      if (v51 >= v50)
      {
        if (v50 < v52)
        {
          v48 = -v50;
          v54 = -2.0;
          if (v25 > 0.0)
          {
            v54 = 2.0;
          }

          v53 = 0.0;
          goto LABEL_27;
        }
      }

      else if (v51 < v52)
      {
        v48 = -v51;
        v53 = 2.0;
        if (v23 <= 0.0)
        {
          v53 = -2.0;
        }

        v54 = 0.0;
LABEL_27:
        v55 = 0.0;
LABEL_31:
        v56 = v55 + v55;
        v57 = ((v20 * v53) + (v19 * v54)) + (v17 * v56);
        v45 = ((v16 * ((v53 * v30) + (v20 * v56))) + (v54 * v18)) + (v19 * v57);
        v46 = ((v16 * ((v56 * v31) + (v17 * v54))) + (v53 * v18)) + (v20 * v57);
        v47 = ((v16 * ((v54 * v32) + (v19 * v53))) + (v56 * v18)) + (v17 * v57);
        goto LABEL_32;
      }

      v55 = 1.0;
      if (v27 <= 0.0)
      {
        v55 = -1.0;
      }

      v48 = -v52;
      v54 = 0.0;
      v53 = 0.0;
      goto LABEL_31;
    }
  }

  v35 = v23 + v23;
  v36 = ((v20 * v35) + (v19 * (v25 + v25))) + (v17 * (v34 + v34));
  v37 = ((v16 * ((v35 * v30) + (v20 * (v34 + v34)))) + ((v25 + v25) * v18)) + (v19 * v36);
  v38 = ((v16 * (((v34 + v34) * v31) + (v17 * (v25 + v25)))) + (v35 * v18)) + (v20 * v36);
  v39 = ((v16 * (((v25 + v25) * v32) + (v19 * v35))) + ((v34 + v34) * v18)) + (v17 * v36);
  v40 = v11 - v37;
  v41 = v12 - v38;
  v42 = v15 - v39;
  v43 = ((v41 * v41) + (v40 * v40)) + (v42 * v42);
  if (v43 > ((v29 + *a5) * (v29 + *a5)))
  {
    return 0;
  }

  v44 = 1.0 / sqrtf(v43);
  v45 = v40 * v44;
  v46 = v41 * v44;
  v47 = v42 * v44;
  v48 = v43 * v44;
  v7 = v9 + v37;
  v8 = v10 + v38;
  v13 = v14 + v39;
LABEL_32:
  v58 = *(a7 + 4096);
  if (v58 <= 0x3F)
  {
    *(a7 + 4096) = v58 + 1;
    v59 = a7 + (v58 << 6);
    *v59 = v45;
    *(v59 + 4) = v46;
    *(v59 + 16) = v7;
    *(v59 + 20) = v8;
    *(v59 + 24) = v13;
    *(v59 + 8) = v47;
    *(v59 + 12) = v48 - v29;
    *(v59 + 52) = -1;
  }

  return 1;
}

uint64_t PxcBruteForceOverlapBackface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float32x2_t *a11, float *a12, unsigned int *a13, float *a14, float32x2_t *a15, _DWORD *a16)
{
  v16 = MEMORY[0x1EEE9AC00](a1);
  v128 = v17;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v129 = v28;
  v123 = v16;
  v124 = v29;
  v156[1] = *MEMORY[0x1E69E9840];
  v31 = *(v22 + 4);
  v127 = *v22;
  v32 = a11[1].f32[0];
  v33 = *(v22 + 8);
  v34 = *(v22 + 12);
  v35 = *(v22 + 16);
  v36 = *(v22 + 20);
  v37 = *(v22 + 28);
  LODWORD(v126) = *(v22 + 24);
  v38 = *(v22 + 32);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v119 - ((v39 + 15) & 0x7FFFFFFF0);
  bzero(v40, v39);
  *&v152 = 3.4028e38;
  v153 = 0;
  v41 = *a11;
  v42 = (vmuls_lane_f32(v37, *a11, 1) + (*&v126 * COERCE_FLOAT(*a11))) + (v38 * v32);
  v154[0] = (vmuls_lane_f32(v31, *a11, 1) + (v127 * COERCE_FLOAT(*a11))) + (v33 * v32);
  v154[1] = (vmuls_lane_f32(v35, v41, 1) + (v34 * v41.f32[0])) + (v36 * v32);
  v154[2] = v42;
  v144 = vneg_f32(v41);
  v145 = -v32;
  v126 = a12;
  v43 = v19;
  v44 = v128;
  v45 = PxcTestFacesSepAxesBackface(v27, v25, v23, v21, v43, v128, a10, v154, *&v129, &v152, &v150, a12, v40, &v153, &v144);
  v127 = 0.0;
  if (v45)
  {
    v119 = v40;
    v121 = a10;
    v122 = a13;
    v46 = a11->f32[1];
    v47 = (v21[1] * v46) + (*v21 * a11->f32[0]);
    v48 = a11[1].f32[0];
    v49 = v21[2];
    v50 = v21[5];
    v51 = (v46 * v21[4]) + (v21[3] * a11->f32[0]);
    v52 = (v46 * v21[7]) + (v21[6] * a11->f32[0]);
    v53 = v21[8];
    MEMORY[0x1EEE9AC00](v45);
    v55 = &v119 - ((v54 + 15) & 0x7FFFFFFF0);
    bzero(v55, v54);
    v148 = 3.4028e38;
    v149 = 0;
    v144.f32[0] = -(v47 + (v49 * v48));
    v144.f32[1] = -(v51 + (v50 * v48));
    v145 = -(v52 + (v53 * v48));
    v120 = v55;
    v118 = v55;
    v56 = v122;
    v57 = PxcTestFacesSepAxesBackface(v25, v27, v21, v23, v44, v43, a9, &v144, *&v129, &v148, &v146, v122, v118, &v149, a11);
    v127 = 0.0;
    if (v57)
    {
      v58 = v43;
      v59 = v151;
      v60 = *&v152;
      v61 = v150;
      v125 = a16;
      *a16 = 0;
      v62 = v148;
      if (v148 < v60)
      {
        v61 = v146;
        v59 = v147;
        *v125 = 1;
        v60 = v62;
      }

      v144.i32[0] = 0;
      v142[0] = 0;
      v63 = (*(v27 + 24) + 20 * *v126);
      v64 = (*(v25 + 24) + 20 * *v56);
      physx::Cm::FastVertex2ShapeScaling::transformPlaneToShapeSpace(v58, v63, &v139, &v141, v63[3]);
      v65 = v128;
      physx::Cm::FastVertex2ShapeScaling::transformPlaneToShapeSpace(v128, v64, &v136, &v138, v64[3]);
      v66 = ((v139.f32[0] * *(a9 + 8)) + (v139.f32[1] * *(a9 + 20))) + (v140 * *(a9 + 32));
      v67 = vadd_f32(vadd_f32(vmul_n_f32(*a9, v139.f32[0]), vmul_n_f32(*(a9 + 12), v139.f32[1])), vmul_n_f32(*(a9 + 24), v140));
      v68 = v141 - ((vmuls_lane_f32(*(a9 + 40), v67, 1) + (*(a9 + 36) * v67.f32[0])) + (*(a9 + 44) * v66));
      v139 = v67;
      v140 = v66;
      v141 = v68;
      v69 = v121;
      v70 = ((v136.f32[0] * v69[2]) + (v136.f32[1] * v69[5])) + (v137 * v69[8]);
      v71 = vadd_f32(vadd_f32(vmul_n_f32(*v121, v136.f32[0]), vmul_n_f32(*(v121 + 12), v136.f32[1])), vmul_n_f32(v121[3], v137));
      v72 = v138 - ((vmuls_lane_f32(*(v121 + 10), v71, 1) + (*(v121 + 9) * v71.f32[0])) + (*(v121 + 11) * v70));
      v136 = v71;
      v137 = v70;
      v138 = v72;
      v73 = vdupq_lane_s32(*&v129, 0);
      v74 = vsubq_f32(*v123, v73);
      v74.i32[3] = vaddq_f32(*v123, v73).i32[3];
      v134 = v74;
      v75 = vsubq_f32(*v124, v73);
      v75.i32[3] = vaddq_f32(*v124, v73).i32[3];
      v135 = vadd_f32(*(v123 + 16), *v73.f32);
      v132 = v75;
      v133 = vadd_f32(*(v124 + 16), *v73.f32);
      PxcFindSeparatingAxes(&v144, v119, v153, v27, v23, &v136, a9, v132.f32, *&v129, v58);
      PxcFindSeparatingAxes(v142, v120, v149, v25, v21, &v139, v69, v134.f32, *&v129, v65);
      v124 = v144.u32[0];
      if (v144.i32[0])
      {
        v126 = v58;
        v76 = 0;
        *&v77 = 0.0;
        v78 = v142[0];
        v121 = &v143;
        v122 = &v144 + 1;
        v123 = v142[0];
        do
        {
          if (v78)
          {
            v127 = *&v77;
            v79 = v121;
            v80 = &v122[3 * v76];
            do
            {
              v81 = *(v79 - 1);
              v83 = v80[1];
              v82 = v80[2];
              v84 = *(v79 - 2);
              v85 = (v83 * *v79) - (v82 * v81);
              v86 = (v82 * v84) - (*v80 * *v79);
              v87 = (*v80 * v81) - (v83 * v84);
              if (fabsf(v85) > 0.000001 || fabsf(v86) > 0.000001 || fabsf(v87) > 0.000001)
              {
                v88 = ((v86 * v86) + (v85 * v85)) + (v87 * v87);
                v89 = 0.0;
                v90 = 0.0;
                v91 = 0.0;
                if (v88 > 0.0)
                {
                  v92 = 1.0 / sqrtf(v88);
                  v91 = v85 * v92;
                  v90 = v86 * v92;
                  v89 = v87 * v92;
                }

                v93 = ((v90 * v23[1]) + (*v23 * v91)) + (v23[2] * v89);
                v94 = ((v90 * v23[4]) + (v23[3] * v91)) + (v23[5] * v89);
                v95 = ((v90 * v23[7]) + (v23[6] * v91)) + (v23[8] * v89);
                v96 = ((v90 * v21[1]) + (*v21 * v91)) + (v21[2] * v89);
                v97 = v21[5];
                v98 = (v90 * v21[4]) + (v21[3] * v91);
                v99 = (v90 * v21[7]) + (v21[6] * v91);
                v100 = -(a11->f32[1] * v90) - (a11->f32[0] * v91);
                LODWORD(v101) = *(v27 + 68) | LODWORD(v93) & 0x80000000;
                LODWORD(v102) = *(v27 + 72) | LODWORD(v94) & 0x80000000;
                LODWORD(v103) = *(v27 + 76) | LODWORD(v95) & 0x80000000;
                v104 = *(v25 + 72);
                LODWORD(v105) = *(v25 + 68) | LODWORD(v96) & 0x80000000;
                v130 = __PAIR64__(LODWORD(v90), LODWORD(v91));
                v131 = v89;
                v106 = v98 + (v97 * v89);
                v107 = v99 + (v21[8] * v89);
                v108 = v100 - (a11[1].f32[0] * v89);
                v109 = ((v94 * v102) + (v101 * v93)) + (v103 * v95);
                v110 = ((v106 * COERCE_FLOAT(v104 | LODWORD(v106) & 0x80000000)) + (v105 * v96)) + (COERCE_FLOAT(*(v25 + 76) | LODWORD(v107) & 0x80000000) * v107);
                v111 = *(v27 + 64);
                if (v109 > v111)
                {
                  v111 = v109;
                }

                if (v110 <= *(v25 + 64))
                {
                  v110 = *(v25 + 64);
                }

                v112 = v111 + v110;
                v113 = v108 + v112;
                v114 = v112 - v108;
                if (v113 < v114)
                {
                  v114 = v113;
                }

                if (v114 <= v60)
                {
                  v155 = 0;
                  (*(v27 + 88))(v27, &v130, v23, v126, &v155 + 4, &v155);
                  v115 = v155;
                  v156[0] = 0;
                  (*(v25 + 88))(v25, &v130, v21, v128, v156 + 4, v156);
                  if ((*&v115 + *&v129) < *(v156 + 1) || (*v156 + *&v129) < *(&v115 + 1))
                  {
                    return LOBYTE(v127) & 1;
                  }

                  v116 = *&v115 - *(v156 + 1);
                  if ((*&v115 - *(v156 + 1)) >= (*v156 - *(&v115 + 1)))
                  {
                    v116 = *v156 - *(&v115 + 1);
                  }

                  if (v116 < v60)
                  {
                    v61 = v130;
                    v59 = v131;
                    v60 = v116;
                    *v125 = 2;
                  }
                }
              }

              v79 += 3;
              --v78;
            }

            while (v78);
          }

          ++v76;
          v78 = v123;
          v77 = v76 >= v124;
        }

        while (v76 != v124);
      }

      *a14 = v60;
      *a15 = v61;
      a15[1].f32[0] = v59;
      LODWORD(v127) = 1;
    }
  }

  return LOBYTE(v127) & 1;
}

float physx::Cm::FastVertex2ShapeScaling::transformPlaneToShapeSpace(float *a1, float *a2, float *a3, float *a4, float a5)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = ((a1[10] * v5) + (a1[9] * *a2)) + (a1[11] * v6);
  v8 = ((v5 * a1[13]) + (a1[12] * *a2)) + (a1[14] * v6);
  v9 = ((v5 * a1[16]) + (a1[15] * *a2)) + (a1[17] * v6);
  v10 = 1.0 / sqrtf(((v8 * v8) + (v7 * v7)) + (v9 * v9));
  *a3 = v7 * v10;
  a3[1] = v8 * v10;
  a3[2] = v9 * v10;
  result = v10 * a5;
  *a4 = result;
  return result;
}

uint64_t GuTestFacesSepAxesBackfaceRoughPass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float *a8, float a9, float *a10, float32x2_t *a11, _DWORD *a12, float *a13)
{
  *a12 = -1;
  v13 = *(a1 + 16);
  if (v13)
  {
    v20 = 0;
    v21 = 0;
    v87 = *(a1 + 32);
    v22 = a8[1];
    v23 = (*a8 * *(a5 + 36)) + (v22 * *(a5 + 48));
    v24 = (*a8 * *(a5 + 40)) + (v22 * *(a5 + 52));
    v25 = (*a8 * *(a5 + 44)) + (v22 * *(a5 + 56));
    v26 = a8[2];
    v27 = v23 + (v26 * *(a5 + 60));
    v28 = v24 + (v26 * *(a5 + 64));
    v29 = v25 + (v26 * *(a5 + 68));
    v30 = *(a1 + 24) + 12;
    v31 = 1.0;
    v85 = v28;
    v86 = v27;
    v84 = v29;
    do
    {
      v33 = *(v30 - 12);
      v32 = *(v30 - 8);
      v34 = *(v30 - 4);
      if ((((v28 * v32) + (v33 * v27)) + (v34 * v29)) >= 0.0)
      {
        v35 = ((v33 * *(a5 + 36)) + (v32 * *(a5 + 48))) + (v34 * *(a5 + 60));
        _D2 = vadd_f32(vadd_f32(vmul_n_f32(*(a5 + 40), v33), vmul_n_f32(*(a5 + 52), v32)), vmul_n_f32(*(a5 + 64), v34));
        v93 = v35;
        v94 = _D2;
        _S3 = _D2.i32[1];
        __asm { FMLA            S0, S3, V2.S[1] }

        v43 = sqrtf(_S0);
        if (v43 > 0.0)
        {
          v35 = v35 * (v31 / v43);
          v93 = v35;
          _D2 = vmul_n_f32(_D2, v31 / v43);
          v94 = _D2;
        }

        v44 = *a3;
        v45 = *(a3 + 12);
        v46 = *(a3 + 24);
        v47 = vadd_f32(vadd_f32(vmul_n_f32(*a3, v35), vmul_n_f32(v45, _D2.f32[0])), vmul_lane_f32(v46, _D2, 1));
        v48 = ((v35 * *(a3 + 8)) + (*(a3 + 20) * _D2.f32[0])) + vmuls_lane_f32(*(a3 + 32), _D2, 1);
        v49 = *(a4 + 8);
        v50 = *(a4 + 20);
        v51 = *(a4 + 32);
        v52 = (vmuls_lane_f32(a13[1], v47, 1) + (*a13 * v47.f32[0])) + (a13[2] * v48);
        v53 = *(a2 + 68);
        v54 = *(a2 + 72);
        v55 = *(a2 + 76);
        v56 = *(a1 + 64);
        v57 = *(a2 + 64);
        v58 = vdup_lane_s32(*a3, 0);
        v44.i32[0] = *(a4 + 4);
        v58.i32[0] = *a4;
        v49.i32[1] = *(a3 + 8);
        v59 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(v44, v47, 1), v58, v47.f32[0]), v49, v48);
        v60 = vdup_lane_s32(v45, 0);
        v45.i32[0] = *(a4 + 16);
        v60.i32[0] = *(a4 + 12);
        v50.i32[1] = *(a3 + 20);
        v61 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(v45, v47, 1), v60, v47.f32[0]), v50, v48);
        v62 = vdup_lane_s32(v46, 0);
        v46.i32[0] = *(a4 + 28);
        v62.i32[0] = *(a4 + 24);
        v51.i32[1] = *(a3 + 32);
        v63 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(v46, v47, 1), v62, v47.f32[0]), v51, v48);
        v53.i32[1] = *(a1 + 68);
        v54.i32[1] = *(a1 + 72);
        v55.i32[1] = *(a1 + 76);
        v64 = vmla_f32(vmla_f32(vmul_f32(v61, vorr_s8(v54, vand_s8(v61, 0x8000000080000000))), v59, vorr_s8(v53, vand_s8(v59, 0x8000000080000000))), v63, vorr_s8(v55, vand_s8(v63, 0x8000000080000000)));
        v65 = vcgt_f32(v64, __PAIR64__(LODWORD(v56), LODWORD(v57)));
        if (v65.i8[4])
        {
          v56 = v64.f32[1];
        }

        if (v65.i8[0])
        {
          v57 = v64.f32[0];
        }

        v66 = v56 + v57;
        v67 = v52 + v66;
        v68 = v66 - v52;
        if (v67 < v68)
        {
          v68 = v67;
        }

        if (v68 <= *a10)
        {
          v90 = v48;
          v91 = v47;
          v83 = v21;
          v69 = v31 / v43;
          v70 = (v87 + 12 * *(v30 + 7));
          v71 = *(v30 - 8);
          v92 = *(v30 - 12);
          v72 = *v70;
          v73 = v70[1];
          v74 = v70[2];
          v75 = *(v30 - 4);
          v76 = -(*v30 * (v31 / v43));
          *v95 = 0;
          v77 = a2;
          (*(a2 + 88))(a2, &v93, a7, a6, &v95[1], v95);
          if ((v76 + a9) < v95[1] || (v78 = v69 * (((v71 * v73) + (v92 * v72)) + (v75 * v74)), (v95[0] + a9) < v78))
          {
            v81 = v83;
            return v81 & 1;
          }

          v79 = v76 - v95[1];
          v80 = v95[0] - v78;
          if ((v76 - v95[1]) >= v80)
          {
            v79 = v80;
          }

          a2 = v77;
          v28 = v85;
          v27 = v86;
          v29 = v84;
          v31 = 1.0;
          if (v79 < *a10)
          {
            *a11 = v91;
            a11[1].f32[0] = v90;
            *a10 = v79;
            *a12 = v20;
          }
        }
      }

      v21 = ++v20 >= v13;
      v30 += 20;
    }

    while (v13 != v20);
  }

  v81 = 1;
  return v81 & 1;
}

uint64_t PxcTestFacesSepAxesBackface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float *a8, float a9, float *a10, float32x2_t *a11, _DWORD *a12, char *a13, _DWORD *a14, float *a15)
{
  *a12 = -1;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v95 = *(a1 + 32);
  v23 = *a8;
  v22 = a8[1];
  v24 = a8[2];
  if (20 * v20)
  {
    v25 = 0;
    do
    {
      _X11 = v21 + v25;
      __asm { PRFM            #0, [X11] }

      v25 += 128;
    }

    while (v25 < 20 * v20);
  }

  if (v20)
  {
    v32 = 0;
    v33 = 0;
    v35 = ((v23 * *(a5 + 36)) + (v22 * *(a5 + 48))) + (v24 * *(a5 + 60));
    v36 = ((v23 * *(a5 + 40)) + (v22 * *(a5 + 52))) + (v24 * *(a5 + 64));
    v37 = ((v23 * *(a5 + 44)) + (v22 * *(a5 + 56))) + (v24 * *(a5 + 68));
    v38 = v21 + 12;
    v39 = 1.0;
    v40 = a13;
    v93 = v36;
    v94 = v35;
    v92 = v37;
    v91 = a4;
    while (1)
    {
      v42 = *(v38 - 12);
      v41 = *(v38 - 8);
      v43 = *(v38 - 4);
      if ((((v36 * v41) + (v42 * v35)) + (v43 * v37)) >= 0.0)
      {
        v44 = ((v42 * *(a5 + 36)) + (v41 * *(a5 + 48))) + (v43 * *(a5 + 60));
        _D1 = vadd_f32(vadd_f32(vmul_n_f32(*(a5 + 40), v42), vmul_n_f32(*(a5 + 52), v41)), vmul_n_f32(*(a5 + 64), v43));
        v101 = v44;
        v102 = _D1;
        _S3 = _D1.i32[1];
        __asm { FMLA            S2, S3, V1.S[1] }

        v48 = sqrtf(_S2);
        v49 = v39 / v48;
        if (v48 > 0.0)
        {
          v44 = v44 * v49;
          v101 = v44;
          _D1 = vmul_n_f32(_D1, v49);
          v102 = _D1;
        }

        v50 = *a3;
        v51 = *(a3 + 12);
        v52 = *(a3 + 24);
        v53 = vadd_f32(vadd_f32(vmul_n_f32(*a3, v44), vmul_n_f32(v51, _D1.f32[0])), vmul_lane_f32(v52, _D1, 1));
        v54 = ((v44 * *(a3 + 8)) + (*(a3 + 20) * _D1.f32[0])) + vmuls_lane_f32(*(a3 + 32), _D1, 1);
        v55 = *(a4 + 8);
        v56 = *(a4 + 20);
        v57 = *(a4 + 32);
        v58 = (vmuls_lane_f32(a15[1], v53, 1) + (*a15 * v53.f32[0])) + (a15[2] * v54);
        v59 = *(a2 + 68);
        v60 = *(a2 + 72);
        v61 = *(a2 + 76);
        v62 = *(a1 + 64);
        v63 = *(a2 + 64);
        v64 = vdup_lane_s32(*a3, 0);
        v50.i32[0] = *(a4 + 4);
        v64.i32[0] = *a4;
        v55.i32[1] = *(a3 + 8);
        v65 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(v50, v53, 1), v64, v53.f32[0]), v55, v54);
        v66 = vdup_lane_s32(v51, 0);
        v51.i32[0] = *(a4 + 16);
        v66.i32[0] = *(a4 + 12);
        v56.i32[1] = *(a3 + 20);
        v67 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(v51, v53, 1), v66, v53.f32[0]), v56, v54);
        v68 = vdup_lane_s32(v52, 0);
        v52.i32[0] = *(a4 + 28);
        v68.i32[0] = *(a4 + 24);
        v57.i32[1] = *(a3 + 32);
        v69 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(v52, v53, 1), v68, v53.f32[0]), v57, v54);
        v59.i32[1] = *(a1 + 68);
        v60.i32[1] = *(a1 + 72);
        v61.i32[1] = *(a1 + 76);
        v70 = vmla_f32(vmla_f32(vmul_f32(v67, vorr_s8(v60, vand_s8(v67, 0x8000000080000000))), v65, vorr_s8(v59, vand_s8(v65, 0x8000000080000000))), v69, vorr_s8(v61, vand_s8(v69, 0x8000000080000000)));
        v71 = vcgt_f32(v70, __PAIR64__(LODWORD(v62), LODWORD(v63)));
        if (v71.i8[4])
        {
          v62 = v70.f32[1];
        }

        if (v71.i8[0])
        {
          v63 = v70.f32[0];
        }

        v72 = v62 + v63;
        v73 = v58 + v72;
        v74 = v72 - v58;
        if (v73 < v74)
        {
          v74 = v73;
        }

        if (v74 <= *a10)
        {
          v98 = v54;
          v99 = v53;
          v90 = v33;
          v75 = a15;
          *v40 = v32;
          v40 += 4;
          v76 = (v95 + 12 * *(v38 + 7));
          v78 = *(v38 - 12);
          v77 = *(v38 - 8);
          v79 = *v76;
          v80 = v76[1];
          v81 = v76[2];
          v82 = *(v38 - 4);
          v83 = -(*v38 * v49);
          *v103 = 0;
          v84 = a2;
          v100 = v49;
          (*(a2 + 88))(a2, &v101, a7, a6, &v103[1], v103);
          if ((v83 + a9) < v103[1] || (v85 = v100 * (((v77 * v80) + (v78 * v79)) + (v82 * v81)), (v103[0] + a9) < v85))
          {
            v88 = v90;
            return v88 & 1;
          }

          v86 = v83 - v103[1];
          v87 = v103[0] - v85;
          if ((v83 - v103[1]) >= v87)
          {
            v86 = v87;
          }

          v36 = v93;
          v35 = v94;
          v37 = v92;
          if (v86 < *a10)
          {
            *a11 = v99;
            a11[1].f32[0] = v98;
            *a10 = v86;
            *a12 = v32;
          }

          a15 = v75;
          a2 = v84;
          v39 = 1.0;
          a4 = v91;
        }
      }

      v33 = ++v32 >= v20;
      v38 += 20;
      if (v20 == v32)
      {
        goto LABEL_26;
      }
    }
  }

  v40 = a13;
LABEL_26:
  *a14 = (v40 - a13) >> 2;
  v88 = 1;
  return v88 & 1;
}

uint64_t PxcFindSeparatingAxes(uint64_t result, unsigned int *a2, int a3, void *a4, uint64_t a5, float *a6, float *a7, float *a8, float a9, uint64_t a10)
{
  v93 = result;
  if (a3)
  {
    v15 = a4[3];
    v16 = a4[4];
    v17 = a4[5];
    v91 = v17;
    v92 = v15;
    do
    {
      v18 = *a2++;
      v19 = v15 + 20 * v18;
      v20 = *(v19 + 18);
      if (*(v19 + 18))
      {
        v21 = (v17 + *(v19 + 16));
        v22 = (v16 + 12 * *v21);
        v23 = v22[1];
        v24 = v22[2];
        v25 = ((*v22 * *(a10 + 8)) + (v23 * *(a10 + 20))) + (v24 * *(a10 + 32));
        *&v10 = vadd_f32(vadd_f32(vmul_n_f32(*a10, *v22), vmul_n_f32(*(a10 + 12), v23)), vmul_n_f32(*(a10 + 24), v24));
        v26 = (a6[3] + ((vmuls_lane_f32(a6[1], *&v10, 1) + (*&v10 * *a6)) + (v25 * a6[2]))) <= a9;
        v27 = 1;
        v28 = v20;
        do
        {
          v29 = v10;
          v30 = v25;
          v31 = v26;
          if (v27 >= v20)
          {
            v32 = 0;
          }

          else
          {
            v32 = v27;
          }

          v33 = (v16 + 12 * v21[v32]);
          v34 = v33[1];
          v35 = v33[2];
          *&v10 = vadd_f32(vadd_f32(vmul_n_f32(*a10, *v33), vmul_n_f32(*(a10 + 12), v34)), vmul_n_f32(*(a10 + 24), v35));
          v25 = ((*v33 * *(a10 + 8)) + (v34 * *(a10 + 20))) + (v35 * *(a10 + 32));
          v36 = a6[3] + ((vmuls_lane_f32(a6[1], *&v10, 1) + (*&v10 * *a6)) + (v25 * a6[2]));
          v26 = v36 <= a9;
          if (v31 || v36 <= a9)
          {
            v37 = vsub_f32(*&v10, v29).f32[0];
            v38 = *(&v10 + 1) - v29.f32[1];
            v39 = a7[3];
            v40 = v25 - v30;
            v41 = a7[6];
            v42 = (((*(&v10 + 1) - v29.f32[1]) * v39) + (v37 * *a7)) + ((v25 - v30) * v41);
            v43 = a8[3];
            v44 = v43 - *a8;
            v45 = vadd_f32(v29, *&v10).f32[0];
            v46 = v29.f32[1] + *(&v10 + 1);
            v47 = v30 + v25;
            v48 = ((((v29.f32[1] + *(&v10 + 1)) * v39) + (v45 * *a7)) + ((v30 + v25) * v41)) + (a7[9] * 2.0);
            v49 = v43 + *a8;
            v50 = fabsf(v42);
            if (vabds_f32(v48, v49) <= (v50 + v44))
            {
              v51 = a7[1];
              v52 = a7[4];
              v53 = a7[7];
              v54 = ((v38 * v52) + (v37 * v51)) + (v40 * v53);
              v55 = a8[4];
              v56 = a8[1];
              v57 = v55 - v56;
              v58 = (((v46 * v52) + (v45 * v51)) + (v47 * v53)) + (a7[10] * 2.0);
              v59 = v55 + v56;
              v60 = fabsf(v54);
              if (vabds_f32(v58, v55 + v56) <= ((v55 - v56) + v60))
              {
                v61 = a7[2];
                v62 = a7[5];
                v63 = a7[8];
                v64 = ((v38 * v62) + (v37 * v61)) + (v40 * v63);
                v65 = a8[5];
                v66 = a8[2];
                v67 = v65 - v66;
                v68 = (((v46 * v62) + (v45 * v61)) + (v47 * v63)) + (a7[11] * 2.0);
                v69 = v65 + v66;
                v70 = fabsf(v64);
                if (vabds_f32(v68, v69) <= (v67 + v70))
                {
                  v71 = v48 - v49;
                  v72 = v68 - v69;
                  v73 = fabsf((v54 * v72) - (v64 * (v58 - v59)));
                  v74 = (v60 * v67) + (v57 * v70);
                  v75 = fabsf((v64 * v71) - (v42 * v72));
                  v76 = (v50 * v67) + (v44 * v70);
                  v77 = v73 <= v74 && v75 <= v76;
                  v78 = fabsf((v42 * (v58 - v59)) - (v54 * v71));
                  v79 = (v50 * v57) + (v44 * v60);
                  if (v77 && v78 <= v79)
                  {
                    v81 = vsub_f32(v29, *&v10);
                    v82 = *(a5 + 8);
                    v82.i32[1] = *(a5 + 20);
                    v83 = v30 - v25;
                    v84 = v83 * *(a5 + 32);
                    v85 = vadd_f32(vadd_f32(vmul_n_f32(*a5, v81.f32[0]), vmul_lane_f32(*(a5 + 12), v81, 1)), vmul_n_f32(*(a5 + 24), v83));
                    v86 = vaddv_f32(vmul_f32(v81, v82)) + v84;
                    v87 = (COERCE_FLOAT(vmul_f32(v85, v85).i32[1]) + (v85.f32[0] * v85.f32[0])) + (v86 * v86);
                    v97 = a3;
                    v96 = a2;
                    v95 = v10;
                    if (v87 <= 0.0)
                    {
                      v89 = 0;
                      v90 = 0.0;
                    }

                    else
                    {
                      v88 = 1.0 / sqrtf(v87);
                      v89 = vmul_n_f32(v85, v88);
                      v90 = v86 * v88;
                    }

                    v98 = v89;
                    v99 = v90;
                    result = physx::Gu::SeparatingAxes::addAxis(v93, &v98);
                    a3 = v97;
                    a2 = v96;
                    v17 = v91;
                    v15 = v92;
                    v10 = v95;
                  }
                }
              }
            }
          }

          ++v27;
          --v28;
        }

        while (v28);
      }

      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t anonymous namespace::ConvexMeshContactGeneration::generateLastContacts(uint64_t this)
{
  v5 = *(*this + 4368);
  if (v5 > 0x10)
  {
    v6 = this;
    v7 = 0;
    v8 = *(*this + 4360);
    v9 = v5 / 0x11uLL;
    v10 = this + 1292;
    v11 = this + 1932;
    v12 = this + 1804;
    do
    {
      v13 = v8 + 68 * v7;
      v14 = *v13;
      v15 = *(v13 + 40);
      v16 = *(v13 + 44);
      v17 = *(v13 + 48);
      *&v1 = *(v13 + 4);
      v18 = *(v13 + 24);
      v19 = *(v13 + 12);
      v20 = v18 - v19;
      v21 = *(v13 + 16);
      *&v2 = vsub_f32(v21, *&v1);
      v22 = *(&v1 + 1);
      v23 = *(v13 + 28);
      *&v3 = vsub_f32(v23, *&v1);
      *&v4 = vsub_f32(vzip2_s32(v21, v23), vdup_lane_s32(*&v1, 1));
      v24 = *(v13 + 36);
      v25 = v24 - v19;
      v26 = *&v1 - *(v6 + 2160);
      v27 = *(&v1 + 1) - *(v6 + 2164);
      v28 = v19 - *(v6 + 2168);
      v29 = (vmul_f32(*&v4, *&v4).f32[0] + (*&v2 * *&v2)) + (v20 * v20);
      v30 = *(&v4 + 1);
      v31 = (vmuls_lane_f32(*&v4, *&v4, 1) + (*&v2 * *&v3)) + ((v18 - v19) * (v24 - v19));
      v32 = (vmuls_lane_f32(*(&v4 + 1), *&v4, 1) + (*&v3 * *&v3)) + (v25 * v25);
      v33 = ((v27 * *&v4) + (v26 * *&v2)) + (v28 * (v18 - v19));
      v34 = (vmuls_lane_f32(v27, *&v4, 1) + (v26 * *&v3)) + (v28 * (v24 - v19));
      v35 = (v29 * v32) - (v31 * v31);
      v36 = (v31 * v34) - (v32 * v33);
      v37 = (v31 * v33) - (v29 * v34);
      if ((v36 + v37) <= fabsf(v35))
      {
        if (v36 >= 0.0)
        {
          if (v37 >= 0.0)
          {
            if (v35 == 0.0)
            {
LABEL_51:
              for (i = *(v11 + (v15 & 0x7F)); i != 255; i = *(v12 + i))
              {
                if (*(v10 + 4 * i) == v15)
                {
                  goto LABEL_66;
                }
              }
            }

LABEL_62:
            v52 = (*&v4 * v25) - (v20 * v30);
            v53 = (v20 * *&v3) - (*&v2 * v25);
            v54 = (*&v2 * v30) - (*&v4 * *&v3);
            v55 = ((v53 * v53) + (v52 * v52)) + (v54 * v54);
            v56 = 0.0;
            v57 = 0.0;
            v58 = 0.0;
            if (v55 > 0.0)
            {
              v59 = 1.0 / sqrtf(v55);
              v56 = v52 * v59;
              v57 = v53 * v59;
              v58 = v54 * v59;
            }

            v75 = __PAIR64__(LODWORD(v57), LODWORD(v56));
            v76 = v58;
            v77 = -(((v22 * v57) + (*&v1 * v56)) + (v19 * v58));
            v73 = vmul_f32(vadd_f32(vadd_f32(v21, *&v1), v23), vdup_n_s32(0x3EAAAAABu));
            v74 = ((v18 + v19) + v24) * 0.33333;
            v71 = *(v13 + 52);
            v60 = *(v13 + 64);
            v72 = *(v13 + 60);
            if (this)
            {
              *(v6 + 2256) = 1;
            }

            goto LABEL_66;
          }

          if (v33 >= 0.0)
          {
            goto LABEL_51;
          }
        }

        else if (v37 >= 0.0 || v33 >= 0.0)
        {
          if (v34 >= 0.0)
          {
            goto LABEL_51;
          }

          if (v32 <= -v34)
          {
LABEL_46:
            for (j = *(v11 + (v17 & 0x7F)); j != 255; j = *(v12 + j))
            {
              if (*(v10 + 4 * j) == v17)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_62;
          }

LABEL_30:
          if (v15 >= v17)
          {
            v45 = *(v13 + 48);
          }

          else
          {
            v45 = *(v13 + 40);
          }

          if (v15 <= v17)
          {
            v46 = *(v13 + 48);
          }

          else
          {
            v46 = *(v13 + 40);
          }

LABEL_44:
          v62 = *(v13 + 36);
          LODWORD(v47) = HIDWORD(*(v13 + 4));
          v48 = *(v13 + 24);
          v68 = v2;
          v70 = v1;
          v64 = v4;
          v66 = v3;
          this = physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::contains(v6 + 8, v45, v46);
          v4 = v64;
          v3 = v66;
          v2 = v68;
          v1 = v70;
          v18 = v48;
          v22 = v47;
          v24 = v62;
          if ((this & 1) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_66;
        }

        if (v29 <= -v33)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v36 < 0.0)
        {
          v38 = v31 + v33;
          v39 = v32 + v34;
          if ((v32 + v34) <= v38)
          {
            if (v39 <= 0.0)
            {
              goto LABEL_46;
            }

            if (v34 >= 0.0)
            {
              goto LABEL_51;
            }

            goto LABEL_30;
          }

          v40 = v39 - v38;
          goto LABEL_37;
        }

        if (v37 >= 0.0)
        {
          v40 = ((v32 + v34) - v31) - v33;
          if (v40 <= 0.0)
          {
            goto LABEL_46;
          }

LABEL_37:
          if (v40 >= (v32 + (v29 + (v31 * -2.0))))
          {
            goto LABEL_58;
          }

          goto LABEL_38;
        }

        v41 = v31 + v34;
        v42 = v29 + v33;
        if ((v29 + v33) > v41)
        {
          if ((v42 - v41) >= (v32 + (v29 + (v31 * -2.0))))
          {
            goto LABEL_46;
          }

LABEL_38:
          if (v16 >= v17)
          {
            v45 = *(v13 + 48);
          }

          else
          {
            v45 = *(v13 + 44);
          }

          if (v16 <= v17)
          {
            v46 = *(v13 + 48);
          }

          else
          {
            v46 = *(v13 + 44);
          }

          goto LABEL_44;
        }

        if (v42 <= 0.0)
        {
LABEL_58:
          for (k = *(v11 + (v16 & 0x7F)); k != 255; k = *(v12 + k))
          {
            if (*(v10 + 4 * k) == v16)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_62;
        }

        if (v33 >= 0.0)
        {
          goto LABEL_51;
        }
      }

      if (v15 >= v16)
      {
        v43 = *(v13 + 44);
      }

      else
      {
        v43 = *(v13 + 40);
      }

      if (v15 <= v16)
      {
        v44 = *(v13 + 44);
      }

      else
      {
        v44 = *(v13 + 40);
      }

      v61 = *(v13 + 24);
      v67 = v2;
      v69 = v1;
      v63 = v4;
      v65 = v3;
      this = physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::contains(v6 + 8, v43, v44);
      v4 = v63;
      v3 = v65;
      v2 = v67;
      v1 = v69;
      v18 = v61;
      if ((this & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_66:
      ++v7;
    }

    while (v7 != v9);
  }

  return this;
}

float anonymous namespace::ConvexMeshContactGeneration::ConvexMeshContactGeneration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, char a12, __int128 a13, uint64_t a14)
{
  *a1 = a2;
  *(a1 + 1288) = 0;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  *(a1 + 1160) = v14;
  *(a1 + 1176) = v14;
  *(a1 + 1192) = v14;
  *(a1 + 1208) = v14;
  *(a1 + 1224) = v14;
  *(a1 + 1240) = v14;
  *(a1 + 1256) = v14;
  *(a1 + 1272) = v14;
  *(a1 + 2060) = 0;
  *(a1 + 1932) = v14;
  *(a1 + 1948) = v14;
  *(a1 + 1964) = v14;
  *(a1 + 1980) = v14;
  *(a1 + 1996) = v14;
  *(a1 + 2012) = v14;
  *(a1 + 2028) = v14;
  *(a1 + 2044) = v14;
  LODWORD(v14) = *a3;
  v15 = *(a3 + 4);
  v16 = *(a3 + 8);
  v17 = *(a3 + 12);
  v18 = *&v14 * (*&v14 + *&v14);
  v19 = v15 * (v15 + v15);
  v20 = v16 * (v16 + v16);
  v21 = (*&v14 + *&v14) * v15;
  v22 = (*&v14 + *&v14) * v16;
  v23 = (*&v14 + *&v14) * v17;
  v24 = (v15 + v15) * v16;
  v25 = (v15 + v15) * v17;
  v26 = (v16 + v16) * v17;
  *&v14 = (1.0 - v19) - v20;
  v27 = v21 + v26;
  v28 = v22 - v25;
  *(a1 + 2064) = v14;
  *(a1 + 2068) = v21 + v26;
  *(a1 + 2072) = v22 - v25;
  v29 = v21 - v26;
  v30 = (1.0 - v18) - v20;
  v31 = v24 + v23;
  *(a1 + 2076) = v29;
  *(a1 + 2080) = v30;
  *(a1 + 2084) = v24 + v23;
  v32 = v22 + v25;
  v33 = v24 - v23;
  v34 = (1.0 - v18) - v19;
  *(a1 + 2088) = v32;
  *(a1 + 2092) = v24 - v23;
  *(a1 + 2096) = v34;
  v35 = *(a3 + 16);
  v36 = *(a3 + 20);
  *(a1 + 2100) = v35;
  *(a1 + 2104) = v36;
  v37 = *(a3 + 24);
  *(a1 + 2108) = v37;
  v38 = *a4;
  v39 = *(a4 + 4);
  v40 = *(a4 + 8);
  v41 = *(a4 + 12);
  v42 = v39 + v39;
  v43 = v40 + v40;
  v44 = v39 * (v39 + v39);
  v45 = v40 * (v40 + v40);
  v46 = (v38 + v38) * v39;
  v47 = (v38 + v38) * v40;
  v48 = (v38 + v38) * v41;
  v49 = v42 * v40;
  v50 = v42 * v41;
  v51 = v43 * v41;
  *(a1 + 2112) = (1.0 - v44) - v45;
  *(a1 + 2116) = v46 + v51;
  *(a1 + 2120) = v47 - v50;
  v52 = 1.0 - (v38 * (v38 + v38));
  *(a1 + 2124) = v46 - v51;
  *(a1 + 2128) = v52 - v45;
  *(a1 + 2132) = v49 + v48;
  *(a1 + 2136) = v47 + v50;
  *(a1 + 2140) = v49 - v48;
  *(a1 + 2144) = v52 - v44;
  *(a1 + 2148) = *(a4 + 16);
  *(a1 + 2156) = *(a4 + 24);
  *(a1 + 2184) = a5;
  *(a1 + 2192) = a6;
  *(a1 + 2200) = a7;
  *(a1 + 2208) = a8;
  *(a1 + 2216) = a9;
  *(a1 + 2220) = a10;
  *(a1 + 2225) = a12;
  *(a1 + 2228) = a11;
  *(a1 + 2232) = a13;
  *(a1 + 2248) = a14;
  *(a2 + 4368) = 0;
  *(a1 + 2256) = 0;
  v53 = a5[1];
  v54 = *&v14 * *a5;
  *&v14 = v29 * v53;
  v55 = (v27 * *a5) + (v30 * v53);
  v56 = (v28 * *a5) + (v31 * v53);
  v57 = a5[2];
  *(a1 + 2160) = v35 + ((v54 + *&v14) + (v32 * v57));
  *(a1 + 2164) = v36 + (v55 + (v33 * v57));
  *(a1 + 2168) = v37 + (v56 + (v34 * v57));
  v58 = a5[1];
  v59 = a5[2];
  result = (((*a5 * *(a6 + 8)) + (v58 * *(a6 + 20))) + (v59 * *(a6 + 32))) + *(a6 + 44);
  *(a1 + 2172) = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*a6, *a5), vmul_n_f32(*(a6 + 12), v58)), vmul_n_f32(*(a6 + 24), v59)), *(a6 + 36));
  *(a1 + 2180) = result;
  return result;
}

uint64_t ConvexMeshContactGenerationCallback::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, double a6, float32x4_t a7, float32x4_t a8, uint64_t a9, unsigned int *a10)
{
  v58 = *MEMORY[0x1E69E9840];
  if (physx::Gu::intersectTriangleBox(*(a1 + 2312), a3, a4, a5, a6, a7, a8))
  {
    if (*(a1 + 2296) == 1)
    {
      *&v16 = *a3;
      *(&v16 + 2) = a3[2];
      *(&v16 + 3) = *a4;
      *&v17 = *(a4 + 1);
      *(&v17 + 1) = *a5;
      v56[0] = v16;
      v56[1] = v17;
      v57 = *(a5 + 2);
    }

    else
    {
      v18 = *(a1 + 2280);
      v19 = *(v18 + 72);
      v20 = *(v18 + 8);
      v21 = a3[1];
      v22 = *(v18 + 20);
      v23 = a3[2];
      v24 = *(v18 + 32);
      v25 = ((*a3 * v20) + (v21 * v22)) + (v23 * v24);
      v26 = *v18;
      v27 = *(v18 + 12);
      v28 = *(v18 + 24);
      *&v56[0] = vadd_f32(vadd_f32(vmul_n_f32(*v18, *a3), vmul_n_f32(v27, v21)), vmul_n_f32(v28, v23));
      *(v56 + 2) = v25;
      v29 = a4[1];
      v30 = (*a4 * v26.f32[0]) + (v29 * v27.f32[0]);
      v31 = vmuls_lane_f32(*a4, v26, 1) + vmuls_lane_f32(v29, v27, 1);
      v32 = (v20 * *a4) + (v22 * v29);
      v33 = a4[2];
      v34 = v30 + (v33 * v28.f32[0]);
      v35 = v31 + vmuls_lane_f32(v33, v28, 1);
      v36 = v32 + (v24 * v33);
      v37 = 12;
      if (v19)
      {
        v38 = 24;
      }

      else
      {
        v38 = 12;
      }

      *(v56 + v38) = v34;
      if (v19)
      {
        v39 = 28;
      }

      else
      {
        v39 = 16;
      }

      *(v56 + v39) = v35;
      if (v19)
      {
        v40 = 32;
      }

      else
      {
        v40 = 20;
      }

      *(v56 + v40) = v36;
      v41 = a5[1];
      v42 = *a5 * v26.f32[0];
      v43 = v41 * v27.f32[0];
      v44 = vmuls_lane_f32(*a5, v26, 1) + vmuls_lane_f32(v41, v27, 1);
      v45 = (v20 * *a5) + (v22 * v41);
      v46 = a5[2];
      v47 = v46 * v28.f32[0];
      v48 = v44 + vmuls_lane_f32(v46, v28, 1);
      v49 = v45 + (v24 * v46);
      if (!v19)
      {
        v37 = 24;
      }

      *(v56 + v37) = (v42 + v43) + v47;
      if (v19)
      {
        v50 = 16;
      }

      else
      {
        v50 = 28;
      }

      *(v56 + v50) = v48;
      if (v19)
      {
        v51 = 20;
      }

      else
      {
        v51 = 32;
      }

      *(v56 + v51) = v49;
    }

    v52 = *(a2 + 16);
    v53 = *(a1 + 2288);
    if (v53)
    {
      v54 = *(v53 + v52);
    }

    else
    {
      v54 = 56;
    }
  }

  return 1;
}

__n128 anonymous namespace::ConvexMeshContactGeneration::processTriangle(uint64_t a1, float *a2, __int32 a3, int a4, unsigned int *a5)
{
  result.n128_f32[0] = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = v11 - *a2;
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = v16 - *a2;
  v19 = a2[8];
  v20 = ((v14 - v10) * (v19 - v12)) - ((v15 - v12) * (v17 - v10));
  v21 = ((v15 - v12) * v18) - (v13 * (v19 - v12));
  v22 = (v13 * (v17 - v10)) - ((v14 - v10) * v18);
  v23 = ((v21 * v21) + (v20 * v20)) + (v22 * v22);
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  if (v23 > 0.0)
  {
    v27 = 1.0 / sqrtf(v23);
    v24 = v20 * v27;
    v25 = v21 * v27;
    v26 = v22 * v27;
  }

  v55 = __PAIR64__(LODWORD(v25), LODWORD(v24));
  v28 = ((v10 * v25) + (result.n128_f32[0] * v24)) + (v12 * v26);
  v56 = v26;
  v57 = -v28;
  if ((((v25 * *(a1 + 2164)) + (*(a1 + 2160) * v24)) + (*(a1 + 2168) * v26)) >= v28)
  {
    v52 = ((v11 + result.n128_f32[0]) + v16) * 0.33333;
    v53 = ((v14 + v10) + v17) * 0.33333;
    v54 = ((v15 + v12) + v19) * 0.33333;
    v29 = ((v52 * *(a1 + 2120)) + (v53 * *(a1 + 2132))) + (v54 * *(a1 + 2144));
    v30 = *(a1 + 2156);
    v50 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*(a1 + 2112), v52), vmul_n_f32(*(a1 + 2124), v53)), vmul_n_f32(*(a1 + 2136), v54)), *(a1 + 2148));
    v51 = v29 + v30;
    v47 = 0.0;
    v46 = 0;
    if (triangleConvexTest(*(a1 + 2184), a4, a2, &v55, &v50, *(a1 + 2200), a1 + 2064, (a1 + 2112), *(a1 + 2216), *(a1 + 2208), &v48, &v47, &v46, *(a1 + 2225)))
    {
      if (v46 == 1)
      {
        {
          *(a1 + 2256) = 1;
          v31 = *a5;
          v32 = a5[1];
          if (*a5 >= v32)
          {
            v33 = a5[1];
          }

          else
          {
            v33 = *a5;
          }

          if (v31 <= v32)
          {
            v31 = a5[1];
          }

          v44 = v33;
          v45 = v31;
          physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 8, &v44);
          v34 = *a5;
          v35 = a5[2];
          if (*a5 >= v35)
          {
            v36 = a5[2];
          }

          else
          {
            v36 = *a5;
          }

          if (v34 <= v35)
          {
            v34 = a5[2];
          }

          v44 = v36;
          v45 = v34;
          physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 8, &v44);
          v37 = a5[1];
          v38 = a5[2];
          if (v37 >= v38)
          {
            v39 = a5[2];
          }

          else
          {
            v39 = a5[1];
          }

          if (v37 <= v38)
          {
            v37 = a5[2];
          }

          v44 = v39;
          v45 = v37;
          physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 8, &v44);
          v44 = *a5;
          physx::Gu::CacheMap<physx::Gu::CachedVertex,128u>::addData(a1 + 1292, &v44);
          v44 = a5[1];
          physx::Gu::CacheMap<physx::Gu::CachedVertex,128u>::addData(a1 + 1292, &v44);
          v44 = a5[2];
          physx::Gu::CacheMap<physx::Gu::CachedVertex,128u>::addData(a1 + 1292, &v44);
        }
      }

      else
      {
        v40 = *a1;
        v41 = *(*a1 + 4368);
        v42 = v41 + 17;
        if ((*(*a1 + 4372) & 0x7FFFFFFFu) < v41 + 17)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<4352u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::recreate(v40, v41 + 17);
          v40 = *a1;
          v41 = *(*a1 + 4368);
        }

        v43 = *(v40 + 4360) + 4 * v41;
        *(v40 + 4368) = v42;
        *v43 = a3;
        *(v43 + 4) = *a2;
        *(v43 + 12) = *(a2 + 1);
        *(v43 + 20) = *(a2 + 2);
        *(v43 + 28) = *(a2 + 3);
        *(v43 + 36) = a2[8];
        *(v43 + 40) = *a5;
        *(v43 + 44) = a5[1];
        *(v43 + 48) = a5[2];
        result.n128_u64[0] = v48;
        result.n128_u64[1] = __PAIR64__(LODWORD(v47), v49);
        *(v43 + 52) = result;
      }
    }
  }

  return result;
}

uint64_t triangleConvexTest(uint64_t a1, int a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7, float *a8, float a9, float *a10, float32x2_t *a11, float *a12, char *a13, char a14)
{
  v394 = a6;
  v404 = a9;
  v407 = *&a2;
  v397 = a10;
  v419 = *MEMORY[0x1E69E9840];
  v22 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v400 = &v372 - ((v23 + 15) & 0x7FFFFFFF0);
  bzero(v400, v23);
  v28 = *(a1 + 24);
  v27 = *(a1 + 32);
  if (a14)
  {
    if (v22)
    {
      v29 = 0;
      v30 = *a5;
      v31 = a5[1];
      v32 = a5[2];
      v33 = *a7;
      v412 = *(a7 + 12);
      v411 = *(a7 + 24);
      v34 = *(a7 + 4);
      *&v24 = *(a7 + 16);
      v410 = *(a7 + 28);
      v35 = __PAIR64__(DWORD1(v24), v34.u32[0]);
      v409 = *(a7 + 40);
      v36 = v24;
      v37 = v28 + 12;
      v38 = -1;
      _S6 = *(a7 + 44);
      v40 = 3.4028e38;
      v41 = v400;
      v42 = v400;
      DWORD1(v36) = v34.i32[1];
      v408 = v36;
      v43 = v404;
      while (1)
      {
        v44 = *(v37 - 12);
        v45 = *(v37 - 8);
        v47 = *(v37 - 4);
        v46 = *v37;
        if ((*v37 + (((v31 * v45) + (v30 * v44)) + (v32 * v47))) >= 0.0)
        {
          *v42 = v29;
          v42 += 4;
          v48 = ((v33 * v44) + (v412 * v45)) + (v411 * v47);
          _D22 = vadd_f32(vadd_f32(vmul_n_f32(v34, v44), vmul_n_f32(*&v24, v45)), vmul_n_f32(v410, v47));
          __asm { FMLA            S27, S6, V22.S[1] }

          v54 = (v27 + 12 * *(v37 + 7));
          v55 = _S27 + (((v45 * v54[1]) + (v44 * *v54)) + (v47 * v54[2]));
          v56 = _S27 - v46;
          _S26 = *(a3 + 2);
          __asm { FMLA            S25, S26, V22.S[1] }

          _S28 = *(a3 + 5);
          __asm { FMLA            S26, S28, V22.S[1] }

          if (_S25 >= _S26)
          {
            v61 = _S26;
          }

          else
          {
            v61 = _S25;
          }

          if (_S25 > _S26)
          {
            _S26 = _S25;
          }

          _S25 = *(a3 + 8);
          __asm { FMLA            S28, S25, V22.S[1] }

          if (v61 >= _S28)
          {
            v64 = _S28;
          }

          else
          {
            v64 = v61;
          }

          if (_S26 <= _S28)
          {
            _S26 = _S28;
          }

          if ((v56 + v43) < v64 || (_S26 + v43) < v55)
          {
            return 0;
          }

          v66 = v56 - v64;
          v67 = _S26 - v55;
          if (v66 < v67)
          {
            v67 = v66;
          }

          if (v67 < v40)
          {
            v14 = v48;
            v40 = v67;
            v38 = v29;
            v15 = _D22;
          }
        }

        ++v29;
        v37 += 20;
        if (v22 == v29)
        {
          goto LABEL_52;
        }
      }
    }

    goto LABEL_54;
  }

  if (!v22)
  {
LABEL_54:
    v116 = 0;
    v38 = -1;
    v40 = 3.4028e38;
    goto LABEL_55;
  }

  v68 = 0;
  v69 = v397[9];
  v70 = v397[10];
  v71 = a5[1];
  v72 = v397[11];
  v73 = v397[12];
  v74 = v397[13];
  v75 = v397[14];
  v76 = (*a5 * v69) + (v71 * v73);
  v77 = (*a5 * v70) + (v71 * v74);
  v78 = (*a5 * v72) + (v71 * v75);
  v79 = a5[2];
  v80 = v397[15];
  v81 = v397[16];
  v82 = v397[17];
  v83 = v76 + (v79 * v80);
  v84 = v77 + (v79 * v81);
  v85 = v78 + (v79 * v82);
  v86 = *a7;
  v412 = *(a7 + 12);
  v411 = *(a7 + 24);
  *&v25 = *(a7 + 4);
  *&v26 = *(a7 + 16);
  v410 = *(a7 + 28);
  v409 = *(a7 + 40);
  _S6 = *(a7 + 44);
  v87 = v25;
  DWORD1(v87) = DWORD1(v26);
  v406 = v87;
  v88 = v26;
  DWORD1(v88) = DWORD1(v25);
  v408 = v88;
  v89 = v28 + 12;
  v38 = -1;
  v40 = 3.4028e38;
  v41 = v400;
  v42 = v400;
  v43 = v404;
  do
  {
    v90 = *(v89 - 12);
    v91 = *(v89 - 8);
    v93 = *(v89 - 4);
    v92 = *v89;
    if ((*v89 + (((v84 * v91) + (v83 * v90)) + (v85 * v93))) >= 0.0)
    {
      v94 = ((v69 * v90) + (v73 * v91)) + (v80 * v93);
      v95 = ((v70 * v90) + (v74 * v91)) + (v81 * v93);
      v96 = ((v72 * v90) + (v75 * v91)) + (v82 * v93);
      v97 = sqrtf(((v95 * v95) + (v94 * v94)) + (v96 * v96));
      v98 = 1.0 / v97;
      if (v97 > 0.0)
      {
        v94 = v94 * (1.0 / v97);
        v95 = v95 * (1.0 / v97);
        v96 = v96 * (1.0 / v97);
      }

      *v42 = v68;
      v42 += 4;
      v99 = (v411 * v96) + ((v86 * v94) + (v412 * v95));
      v43 = v404;
      _D12 = vadd_f32(vmul_n_f32(v410, v96), vadd_f32(vmul_n_f32(*&v25, v94), vmul_n_f32(*&v26, v95)));
      __asm { FMLA            S0, S6, V12.S[1] }

      v102 = (v27 + 12 * *(v89 + 7));
      v103 = _S0 + ((((v91 * v102[1]) + (v90 * *v102)) + (v93 * v102[2])) * v98);
      v104 = _S0 - (v92 * v98);
      _S1 = *(a3 + 2);
      __asm { FMLA            S0, S1, V12.S[1] }

      _S3 = *(a3 + 5);
      __asm { FMLA            S1, S3, V12.S[1] }

      if (_S0 >= _S1)
      {
        v109 = _S1;
      }

      else
      {
        v109 = _S0;
      }

      if (_S0 <= _S1)
      {
        _S0 = _S1;
      }

      _S3 = *(a3 + 8);
      __asm { FMLA            S1, S3, V12.S[1] }

      if (v109 >= _S1)
      {
        v112 = _S1;
      }

      else
      {
        v112 = v109;
      }

      if (_S0 <= _S1)
      {
        v113 = _S1;
      }

      else
      {
        v113 = _S0;
      }

      if ((v104 + v404) < v112 || (v113 + v404) < v103)
      {
        return 0;
      }

      if ((v104 - v112) >= (v113 - v103))
      {
        v115 = v113 - v103;
      }

      else
      {
        v115 = v104 - v112;
      }

      if (v115 < v40)
      {
        v14 = v99;
        v40 = v115;
        v38 = v68;
        v15 = _D12;
      }
    }

    ++v68;
    v89 += 20;
  }

  while (v22 != v68);
  v35 = v406;
LABEL_52:
  if (v38 == -1)
  {
    if (a14)
    {
      v132 = 0;
      v133 = *a7;
      _S19 = *(a3 + 2);
      _S22 = *(a3 + 5);
      v136 = v28 + 12;
      v38 = -1;
      _S25 = *(a3 + 8);
      while (1)
      {
        v138 = *(v136 - 4);
        v139 = *(v136 - 12);
        v140 = ((v133 * v139.f32[0]) + vmuls_lane_f32(v412, v139, 1)) + (v411 * v138);
        _D4 = vadd_f32(vadd_f32(vmul_f32(v35, v139), vmul_f32(*&v408, vrev64_s32(v139))), vmul_n_f32(v410, v138));
        __asm { FMLA            S2, S6, V4.S[1] }

        v143 = (v27 + 12 * *(v136 + 7));
        v144 = _S2 + ((vmuls_lane_f32(v143[1], v139, 1) + (v139.f32[0] * *v143)) + (v138 * v143[2]));
        v145 = _S2 - *v136;
        __asm
        {
          FMLA            S0, S19, V4.S[1]
          FMLA            S1, S22, V4.S[1]
        }

        if (_S0 >= _S1)
        {
          v148 = _S1;
        }

        else
        {
          v148 = _S0;
        }

        if (_S0 <= _S1)
        {
          _S0 = _S1;
        }

        __asm { FMLA            S1, S25, V4.S[1] }

        v150 = v148 >= _S1 ? _S1 : v148;
        v151 = _S0 <= _S1 ? _S1 : _S0;
        if ((v145 + v43) < v150 || (v151 + v43) < v144)
        {
          return 0;
        }

        v153 = v145 - v150;
        if ((v145 - v150) >= (v151 - v144))
        {
          v153 = v151 - v144;
        }

        if (v153 < v40)
        {
          v14 = v140;
        }

        v15 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v153 < v40), 0x1FuLL)), _D4, v15);
        if (v153 < v40)
        {
          v40 = v153;
          v38 = v132;
        }

        *&v41[4 * v132] = v132;
        ++v132;
        v136 += 20;
        if (v22 == v132)
        {
          goto LABEL_131;
        }
      }
    }

    v192 = v35;
    v193 = 0;
    *&v406 = *(v397 + 9);
    v194 = v397[11];
    v195 = *(v397 + 12);
    v196 = v397[14];
    v197 = *(v397 + 15);
    v198 = v397[17];
    v199 = *a7;
    _S25 = *(a3 + 2);
    _S28 = *(a3 + 5);
    v202 = v28 + 12;
    v38 = -1;
    _S8 = *(a3 + 8);
    do
    {
      v204 = *(v202 - 12);
      v205 = *(v202 - 8);
      v206 = *(v202 - 4);
      v207 = ((v194 * v204) + (v196 * v205)) + (v198 * v206);
      v208 = vadd_f32(vadd_f32(vmul_n_f32(*&v406, v204), vmul_n_f32(v195, v205)), vmul_n_f32(v197, v206));
      v209 = sqrtf((COERCE_FLOAT(vmul_f32(v208, v208).i32[1]) + (v208.f32[0] * v208.f32[0])) + (v207 * v207));
      v210 = v209 <= 0.0;
      v211 = v209 > 0.0;
      v212 = 1.0 / v209;
      v213 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v211), 0x1FuLL)), vmul_n_f32(v208, v212), v208);
      if (!v210)
      {
        v207 = v207 * v212;
      }

      v214 = (v27 + 12 * *(v202 + 7));
      v215 = (v205 * v214[1]) + (v204 * *v214);
      v216 = (v411 * v207) + ((v199 * v213.f32[0]) + vmuls_lane_f32(v412, v213, 1));
      _D4 = vadd_f32(vmul_n_f32(v410, v207), vadd_f32(vmul_f32(v192, v213), vmul_f32(*&v408, vrev64_s32(v213))));
      __asm { FMLA            S2, S6, V4.S[1] }

      v219 = _S2 + ((v215 + (v206 * v214[2])) * v212);
      v220 = _S2 - (*v202 * v212);
      __asm
      {
        FMLA            S0, S25, V4.S[1]
        FMLA            S1, S28, V4.S[1]
      }

      if (_S0 >= _S1)
      {
        v223 = _S1;
      }

      else
      {
        v223 = _S0;
      }

      if (_S0 <= _S1)
      {
        _S0 = _S1;
      }

      __asm { FMLA            S1, S8, V4.S[1] }

      if (v223 >= _S1)
      {
        v225 = _S1;
      }

      else
      {
        v225 = v223;
      }

      if (_S0 <= _S1)
      {
        v226 = _S1;
      }

      else
      {
        v226 = _S0;
      }

      if ((v220 + v404) < v225 || (v226 + v404) < v219)
      {
        return 0;
      }

      v228 = v220 - v225;
      if ((v220 - v225) >= (v226 - v219))
      {
        v228 = v226 - v219;
      }

      if (v228 < v40)
      {
        v14 = v216;
      }

      v15 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v228 < v40), 0x1FuLL)), _D4, v15);
      if (v228 < v40)
      {
        v40 = v228;
        v38 = v193;
      }

      *&v41[4 * v193] = v193;
      ++v193;
      v202 += 20;
    }

    while (v22 != v193);
LABEL_131:
    v116 = v22;
  }

  else
  {
    v116 = (v42 - v41) >> 2;
  }

LABEL_55:
  *a11 = 0;
  a11[1].i32[0] = 0;
  *a12 = 3.4028e38;
  v415 = 0.0;
  v418[0] = 0.0;
  (*(a1 + 88))(a1, a4, a7, v397, &v415, v418);
  *&v117 = *a4;
  *&_Q21 = *(a4 + 1);
  _S1 = *(a3 + 2);
  __asm { FMLA            S0, S1, V21.S[1] }

  _S3 = *(a3 + 5);
  __asm { FMLA            S1, S3, V21.S[1] }

  if (_S0 >= _S1)
  {
    v123 = _S1;
  }

  else
  {
    v123 = _S0;
  }

  if (_S0 > _S1)
  {
    _S1 = _S0;
  }

  _S0 = *(a3 + 8);
  __asm { FMLA            S3, S0, V21.S[1] }

  if (v123 >= _S3)
  {
    v126 = _S3;
  }

  else
  {
    v126 = v123;
  }

  if (_S1 <= _S3)
  {
    _S1 = _S3;
  }

  v127 = v404;
  if ((v418[0] + v404) < v126 || (_S1 + v404) < v415)
  {
    return 0;
  }

  v129 = v418[0] - v126;
  v130 = _S1 - v415;
  if (v129 >= v130)
  {
    v129 = v130;
  }

  if (v129 >= (v40 + 0.0001))
  {
    v131 = 0;
    *&v117 = v14;
    v129 = v40;
    *&_Q21 = v15;
  }

  else
  {
    v131 = 1;
  }

  v154 = LOBYTE(v407);
  *a13 = v131;
  if (v129 < *a12)
  {
    *a12 = v129;
    v155 = ((*&v117 * *(v394 + 8)) + (*(v394 + 20) * *&_Q21)) + vmuls_lane_f32(*(v394 + 32), *&_Q21, 1);
    *a11 = vadd_f32(vadd_f32(vmul_n_f32(*v394, *&v117), vmul_n_f32(*(v394 + 12), *&_Q21)), vmul_lane_f32(*(v394 + 24), *&_Q21, 1));
    a11[1].f32[0] = v155;
  }

  v396 = *(a1 + 24);
  v156 = (v396 + 20 * v38);
  v157 = *a8;
  v158 = a8[1];
  v159 = v156[1];
  v160 = a8[2];
  v161 = a8[3];
  v162 = a8[4];
  v163 = a8[5];
  v164 = (*v156 * *a8) + (v159 * v161);
  v165 = (*v156 * v158) + (v159 * v162);
  v166 = (*v156 * v160) + (v159 * v163);
  v167 = a8[6];
  v168 = a8[7];
  v169 = v156[2];
  v170 = v156[3];
  v172 = a8[8];
  v171 = a8[9];
  v173 = v164 + (v169 * v167);
  v174 = v165 + (v169 * v168);
  v175 = v166 + (v169 * v172);
  v176 = *v397;
  v177 = v173 * *v397;
  v412 = v397[1];
  v178 = v397[3];
  v411 = v397[2];
  v410.f32[0] = v178;
  v179 = v397[5];
  v409 = v397[4];
  *&v408 = v179;
  v180 = v397[7];
  v407 = v397[6];
  *&v406 = v180;
  v181 = (v177 + (v174 * v178)) + (v175 * v407);
  v405 = v397[8];
  v182 = ((v173 * v412) + (v174 * v409)) + (v175 * v180);
  v183 = ((v173 * v411) + (v174 * v179)) + (v175 * v405);
  v184 = a8[10];
  v185 = a8[11];
  v186 = v170 - (((v174 * v184) + (v171 * v173)) + (v185 * v175));
  v403 = v176;
  if ((v154 & 8) != 0)
  {
    v187 = a3[1];
    v188 = a3[2];
    v189 = a3[3];
    v190 = a3[4];
    if ((v186 + (((v182 * v187) + (*a3 * v181)) + (v188 * v183))) <= v127)
    {
      v191 = a3[5];
    }

    else
    {
      v191 = a3[5];
      v176 = v403;
      if ((v186 + (((v182 * v190) + (v189 * v181)) + (v191 * v183))) > v127)
      {
        goto LABEL_101;
      }
    }

    v418[0] = *a3 - v189;
    v418[1] = v187 - v190;
    v418[2] = v188 - v191;
    v398 = 1;
    if ((v154 & 0x10) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_134;
  }

LABEL_101:
  v398 = 0;
  if ((v154 & 0x10) == 0)
  {
    goto LABEL_139;
  }

LABEL_134:
  v229 = a3[3];
  v230 = a3[4];
  v231 = a3[5];
  v232 = a3[6];
  v233 = a3[7];
  if ((v186 + (((v182 * v230) + (v229 * v181)) + (v231 * v183))) <= v127)
  {
    v234 = a3[8];
    goto LABEL_138;
  }

  v234 = a3[8];
  v176 = v403;
  if ((v186 + (((v182 * v233) + (v232 * v181)) + (v234 * v183))) <= v127)
  {
LABEL_138:
    v235 = &v418[3 * v398];
    v236 = v398 + 1;
    *v235 = v229 - v232;
    v235[1] = v230 - v233;
    v235[2] = v231 - v234;
    v398 = v236;
  }

LABEL_139:
  v390 = a11;
  v391 = a12;
  v392 = _Q21;
  v393 = v117;
  v389 = a13;
  if ((v154 & 0x20) != 0)
  {
    v237 = a3[6];
    v238 = a3[7];
    v239 = a3[8];
    v240 = *a3;
    v241 = a3[1];
    if ((v186 + (((v182 * v238) + (v237 * v181)) + (v239 * v183))) <= v127)
    {
      v243 = a3[2];
    }

    else
    {
      v242 = (v182 * v241) + (v240 * v181);
      v243 = a3[2];
      if ((v186 + (v242 + (v243 * v183))) > v127)
      {
        goto LABEL_145;
      }
    }

    v244 = &v418[3 * v398];
    v245 = v398 + 1;
    *v244 = v237 - v240;
    v244[1] = v238 - v241;
    v244[2] = v239 - v243;
    v398 = v245;
  }

LABEL_145:
  v247 = *a4;
  v246 = a4[1];
  v249 = a4[2];
  v248 = a4[3];
  v250 = *(a1 + 32);
  v415 = 0.0;
  if (!v116)
  {
    goto LABEL_202;
  }

  v386 = a3;
  v388 = a8;
  v383 = v158;
  v384 = v157;
  v251 = v158 * v247;
  v381 = v161;
  v382 = v160;
  v379 = v163;
  v380 = v162;
  v252 = v162 * v246;
  v253 = (v157 * v247) + (v161 * v246);
  v254 = (v160 * v247) + (v163 * v246);
  v377 = v168;
  v378 = v167;
  v375 = v172;
  v255 = v253 + (v167 * v249);
  v256 = (v251 + v252) + (v168 * v249);
  v257 = v254 + (v172 * v249);
  v258 = (v407 * v257) + ((v176 * v255) + (v410.f32[0] * v256));
  v259 = (*&v406 * v257) + ((v412 * v255) + (v409 * v256));
  v260 = (v405 * v257) + ((v411 * v255) + (*&v408 * v256));
  v373 = v185;
  v374 = v184;
  v376 = v171;
  v261 = v248 - (((v184 * v256) + (v171 * v255)) + (v185 * v257));
  v385 = a1;
  v395 = *(a1 + 40);
  v262 = *a7;
  v263 = *(a7 + 12);
  v264 = *(a7 + 24);
  v265 = *(a7 + 4);
  v266 = *(a7 + 16);
  v387 = a7;
  v267 = *(a7 + 28);
  v268 = "nHashTableINS_8StringIDEjNS_4HashIS1_EENS_7EqualToIS1_EELb0ELb0EEE";
  v401 = v263;
  v402 = v262;
  do
  {
    v269 = *v400;
    v399 = v116;
    v400 += 4;
    if (v398)
    {
      v270 = v396 + 20 * v269;
      v271 = (v395 + *(v270 + 16));
      v272 = *(v270 + 18);
      v273 = v418;
      v274 = v398;
      while (!v272)
      {
LABEL_166:
        v273 += 3;
        if (!--v274)
        {
          goto LABEL_167;
        }
      }

      v275 = 1;
      v276 = v272;
      v277 = v271;
      while (1)
      {
        v279 = *v277++;
        v278 = v279;
        v280 = v275 >= v272 ? 0 : v275;
        v281 = (v250 + 12 * v278);
        v282 = (v250 + 12 * v271[v280]);
        v283 = v281[1];
        v284 = v281[2];
        v285 = *v282;
        v286 = v282[1];
        if ((v261 + (((v259 * v283) + (*v281 * v258)) + (v284 * v260))) <= v127)
        {
          break;
        }

        v287 = v282[2];
        if ((v261 + (((v259 * v286) + (v285 * v258)) + (v287 * v260))) <= v127)
        {
          goto LABEL_158;
        }

LABEL_165:
        ++v275;
        if (!--v276)
        {
          goto LABEL_166;
        }
      }

      v287 = v282[2];
LABEL_158:
      v288 = *v281 - v285;
      v289 = v283 - v286;
      v290 = v284 - v287;
      v291 = (v176 * v288) + (v410.f32[0] * v289);
      v292 = (v412 * v288) + (v409 * v289);
      v293 = (v411 * v288) + (*&v408 * v289);
      v294 = v291 + (v407 * v290);
      v295 = v292 + (*&v406 * v290);
      v296 = v293 + (v405 * v290);
      v297 = ((v262 * v294) + (v295 * v263)) + (v296 * v264);
      v298 = vadd_f32(vadd_f32(vmul_n_f32(v265, v294), vmul_n_f32(v266, v295)), vmul_n_f32(v267, v296));
      v299 = *(v273 + 1);
      v300.i32[0] = vdup_lane_s32(v298, 1).u32[0];
      v300.f32[1] = v297;
      v301.i32[0] = vdup_lane_s32(v299, 1).u32[0];
      v301.f32[1] = *v273;
      v302 = vmla_f32(vmul_f32(v299, vneg_f32(v300)), v301, v298);
      v303 = (v297 * v299.f32[0]) - (v298.f32[0] * *v273);
      if (fabsf(v302.f32[0]) > *(v268 + 749) || (v304 = vcgt_f32(vabs_f32(__PAIR64__(v302.u32[1], LODWORD(v303))), vdup_n_s32(0x358637BDu)), (v304.i8[4] & 1) != 0) || (v304.i8[0] & 1) != 0)
      {
        v305 = (COERCE_FLOAT(vmul_f32(v302, v302).i32[1]) + (v302.f32[0] * v302.f32[0])) + (v303 * v303);
        if (v305 <= 0.0)
        {
          v307 = 0;
          v308 = 0.0;
        }

        else
        {
          v306 = 1.0 / sqrtf(v305);
          v307 = vmul_n_f32(v302, v306);
          v308 = v303 * v306;
        }

        v413 = v307;
        v414 = v308;
        physx::Gu::SeparatingAxes::addAxis(&v415, &v413);
        v176 = v403;
        v127 = v404;
        v263 = v401;
        v262 = v402;
        v268 = "N2re22IntrospectionHashTableINS_8StringIDEjNS_4HashIS1_EENS_7EqualToIS1_EELb0ELb0EEE" + 18;
      }

      goto LABEL_165;
    }

LABEL_167:
    v116 = (v399 - 1);
  }

  while (v399 != 1);
  v309 = LODWORD(v415);
  if (v415 != 0.0)
  {
    v310 = v386;
    v311 = v386[1];
    v312 = (v384 * *v386) + (v381 * v311);
    v313 = (v383 * *v386) + (v380 * v311);
    v314 = (v382 * *v386) + (v379 * v311);
    v315 = v386[2];
    v316 = v386[3];
    v317 = v376 + (v312 + (v378 * v315));
    v318 = v374 + (v313 + (v377 * v315));
    v319 = v373 + (v314 + (v375 * v315));
    v320 = v384 * v316;
    v321 = v383 * v316;
    v322 = v382 * v316;
    v323 = v386[4];
    v324 = v386[5];
    v325 = v376 + ((v320 + (v381 * v323)) + (v378 * v324));
    v326 = v374 + ((v321 + (v380 * v323)) + (v377 * v324));
    v327 = v373 + ((v322 + (v379 * v323)) + (v375 * v324));
    v328 = v386[6];
    v329 = v386[7];
    v330 = (v384 * v328) + (v381 * v329);
    v331 = (v383 * v328) + (v380 * v329);
    v332 = (v382 * v328) + (v379 * v329);
    v333 = v386[8];
    v334 = v376 + (v330 + (v378 * v333));
    v335 = &v416;
    v336 = v374 + (v331 + (v377 * v333));
    v337 = 3.4028e38;
    v338 = v373 + (v332 + (v375 * v333));
    v339 = v394;
    v341 = v387;
    v340 = v388;
    v342 = v385;
    v412 = v336;
    v411 = v338;
    while (1)
    {
      v343 = *(v335 - 1);
      v344 = v335[1];
      v345 = ((v343 * *v340) + (*v335 * v340[3])) + (v344 * v340[6]);
      v346 = ((v343 * v340[1]) + (*v335 * v340[4])) + (v344 * v340[7]);
      v347 = ((v343 * v340[2]) + (*v335 * v340[5])) + (v344 * v340[8]);
      v348 = ((v318 * v346) + (v317 * v345)) + (v319 * v347);
      v349 = ((v326 * v346) + (v325 * v345)) + (v327 * v347);
      if (v348 >= v349)
      {
        v350 = ((v326 * v346) + (v325 * v345)) + (v327 * v347);
      }

      else
      {
        v350 = ((v318 * v346) + (v317 * v345)) + (v319 * v347);
      }

      if (v348 <= v349)
      {
        v348 = ((v326 * v346) + (v325 * v345)) + (v327 * v347);
      }

      v351 = ((v336 * v346) + (v334 * v345)) + (v338 * v347);
      if (v350 >= v351)
      {
        v350 = ((v336 * v346) + (v334 * v345)) + (v338 * v347);
      }

      if (v348 <= v351)
      {
        v348 = ((v336 * v346) + (v334 * v345)) + (v338 * v347);
      }

      v352 = ((v346 * *(v342 + 4)) + (*v342 * v345)) + (*(v342 + 8) * v347);
      v353 = ((v346 * COERCE_FLOAT(*(v342 + 72) | LODWORD(v346) & 0x80000000)) + (COERCE_FLOAT(*(v342 + 68) | LODWORD(v345) & 0x80000000) * v345)) + (COERCE_FLOAT(*(v342 + 76) | LODWORD(v347) & 0x80000000) * v347);
      if (v353 <= *(v342 + 64))
      {
        v353 = *(v342 + 64);
      }

      v354 = v352 - v353;
      v355 = (v352 + v353) - v350;
      v356 = v348 - v354;
      if (v355 >= v356)
      {
        v355 = v356;
      }

      if (v355 <= v337)
      {
        v413.i32[0] = 0;
        v417 = 0.0;
        (*(v342 + 88))(v342, v335 - 1, v341, v397, &v413, &v417);
        *&v357 = *(v335 - 1);
        *&_Q1 = *v335;
        _S3 = *(v310 + 2);
        __asm { FMLA            S2, S3, V1.S[1] }

        _S5 = *(v310 + 5);
        __asm { FMLA            S3, S5, V1.S[1] }

        if (_S2 >= _S3)
        {
          v363 = _S3;
        }

        else
        {
          v363 = _S2;
        }

        if (_S2 > _S3)
        {
          _S3 = _S2;
        }

        _S2 = *(v310 + 8);
        __asm { FMLA            S5, S2, V1.S[1] }

        if (v363 >= _S5)
        {
          v366 = _S5;
        }

        else
        {
          v366 = v363;
        }

        if (_S3 <= _S5)
        {
          _S3 = _S5;
        }

        if ((v417 + v404) < v366 || (_S3 + v404) < v413.f32[0])
        {
          return 0;
        }

        v367 = v417 - v366;
        v368 = _S3 - v413.f32[0];
        if (v367 >= v368)
        {
          v367 = v368;
        }

        v336 = v412;
        v338 = v411;
        if (v367 < v337)
        {
          v337 = v367;
          v392 = _Q1;
          v393 = v357;
        }
      }

      v335 += 3;
      if (!--v309)
      {
        goto LABEL_203;
      }
    }
  }

LABEL_202:
  v337 = 3.4028e38;
  v339 = v394;
LABEL_203:
  if (v337 < *v391)
  {
    *v391 = v337;
    v369 = ((*&v393 * *(v339 + 8)) + (*(v339 + 20) * *&v392)) + vmuls_lane_f32(*(v339 + 32), *&v392, 1);
    v370 = v389;
    v371 = v390;
    *v390 = vadd_f32(vadd_f32(vmul_n_f32(*v339, *&v393), vmul_n_f32(*(v339 + 12), *&v392)), vmul_lane_f32(*(v339 + 24), *&v392, 1));
    v371[1].f32[0] = v369;
    *v370 = 0;
  }

  return 1;
}

BOOL anonymous namespace::ConvexMeshContactGeneration::generateContacts(uint64_t a1, float32x2_t *a2, uint64_t a3, float *a4, float *a5, __int32 a6, float a7)
{
  v132 = a3;
  v154 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 2200);
  v13 = a4[1];
  v14 = v13 * v12[3];
  v15 = (*a4 * v12[1]) + (v13 * v12[4]);
  v16 = (*a4 * v12[2]) + (v13 * v12[5]);
  v17 = a4[2];
  v18 = v17 * v12[7];
  v19 = (v16 + (v17 * v12[8])) + v12[11];
  v20 = *(a1 + 2172) - ((((*a4 * *v12) + v14) + (v17 * v12[6])) + v12[9]);
  v21 = *(a1 + 2180) - v19;
  v22 = *a5;
  v23 = a5[1];
  v24 = ((*(a1 + 2176) - ((v15 + v18) + v12[10])) * v23) + (v20 * *a5);
  v25 = a5[2];
  if ((v24 + (v21 * v25)) < 0.0)
  {
    v22 = -v22;
    v23 = -v23;
    v25 = -v25;
    *a5 = v22;
    a5[1] = v23;
    a5[2] = v25;
  }

  v26 = *(*(a1 + 2184) + 96);
  v27 = *(a1 + 2192);
  *&v28 = (-(v23 * v27[1]) - (*v27 * v22)) - (v27[2] * v25);
  *&v29 = (-(v23 * v27[4]) - (v27[3] * v22)) - (v27[5] * v25);
  v30 = (-(v23 * v27[7]) - (v27[6] * v22)) - (v27[8] * v25);
  v139 = __PAIR64__(v29, v28);
  v140 = v30;
  v31 = v26();
  v32 = *(*(a1 + 2184) + 24) + 20 * v31;
  v33 = *(a1 + 2225);
  if (v33 == 1)
  {
    v153 = *v32;
    v34 = v153;
    v35 = vext_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL), 4uLL);
  }

  else
  {
    physx::Cm::FastVertex2ShapeScaling::transformPlaneToShapeSpace(*(a1 + 2208), v32, v153.i32, (&v153 | 0xC), *(v32 + 12));
    v34.i32[0] = v153.i32[0];
    v35 = *(v153.i64 + 4);
  }

  v36 = 0;
  v37 = 0;
  v38 = *a5;
  v39 = a5[1];
  v40 = a5[2];
  v41 = *(a1 + 2200);
  v42 = *(v41 + 8);
  v43 = *(v41 + 20);
  v44 = *(v41 + 32);
  v45 = *v41;
  v46 = *(v41 + 12);
  v47 = *(v41 + 24);
  v48 = *(a1 + 2192);
  v49 = *(v48 + 8);
  v50 = *v48;
  v141 = *(v48 + 12);
  v51 = *(v48 + 20);
  v52 = *(v48 + 32);
  v53 = *(v48 + 36);
  v54 = *(v48 + 24);
  v151 = vadd_f32(vadd_f32(vmul_n_f32(v50, *v34.i32), vmul_n_f32(v141, v35.f32[0])), vmul_lane_f32(v54, v35, 1));
  v152 = ((*v34.i32 * v49) + (v51 * v35.f32[0])) + vmuls_lane_f32(v52, v35, 1);
  v55 = fabsf((vmuls_lane_f32(v39, v151, 1) + (v151.f32[0] * v38)) + (v152 * v40));
  v56 = a2->f32[1];
  v57 = (a2->f32[0] * v42) + (v56 * v43);
  v58 = a2[1].f32[0];
  v149 = vadd_f32(vadd_f32(vmul_n_f32(v45, a2->f32[0]), vmul_n_f32(v46, v56)), vmul_n_f32(v47, v58));
  v150 = v57 + (v58 * v44);
  v59 = fabsf((vmuls_lane_f32(v39, v149, 1) + (v149.f32[0] * v38)) + (v150 * v40));
  v60 = -a7;
  if (a7 > 0.0)
  {
    v60 = 0.0;
  }

  v61 = v60 + *(a1 + 2228);
  v62 = v38 * v61;
  v148[0] = v38 * v61;
  v148[1] = v39 * v61;
  v148[2] = v40 * v61;
  v139 = v50;
  v140 = v49;
  v142 = v51;
  v143 = v54;
  v144 = v52;
  v63 = *(v48 + 40);
  v64 = *(v48 + 44);
  v65 = *(a1 + 2232);
  v66 = *v65;
  v67 = v65[1];
  v68 = v65[2];
  v69 = v65[3];
  v70 = v53 - v62;
  v145 = v53 - v62;
  v146 = v63 - (v39 * v61);
  v71 = v64 - (v40 * v61);
  v147 = v71;
  v72 = *(a1 + 2240);
  v73 = v72[1];
  v74 = v72[2];
  v75 = v72[3];
  v76 = v72[4];
  v77 = v72[5];
  v78 = (v53 - v62) - v76;
  v79 = v72[6];
  v80 = v78 + v78;
  v81 = (v146 - v77) + (v146 - v77);
  v82 = (v71 - v79) + (v71 - v79);
  v83 = (v75 * v75) + -0.5;
  v84 = (-(v73 * v81) - (*v72 * (v78 + v78))) - (v74 * v82);
  v85 = ((v75 * ((v74 * v81) - (v73 * v82))) + ((v78 + v78) * v83)) - (*v72 * v84);
  v86 = ((v75 * ((*v72 * v82) - (v74 * v80))) + (v81 * v83)) - (v73 * v84);
  v87 = ((v75 * ((v73 * v80) - (*v72 * v81))) + (v82 * v83)) - (v74 * v84);
  v88 = (((v75 * v66) - (*v72 * v69)) - (v73 * v68)) + (v67 * v74);
  v89 = (((v75 * v67) - (v73 * v69)) - (v74 * v66)) + (v68 * *v72);
  v90 = (((v75 * v68) - (v74 * v69)) - (*v72 * v67)) + (v66 * v73);
  v91 = (((v66 * *v72) + (v75 * v69)) + (v73 * v67)) + (v74 * v68);
  v92 = (v76 - v70) + (v76 - v70);
  v93 = (v77 - v146) + (v77 - v146);
  v94 = (v79 - v71) + (v79 - v71);
  v95 = (v69 * v69) + -0.5;
  v96 = (-(v67 * v93) - (v66 * v92)) - (v68 * v94);
  v97 = ((v69 * ((v68 * v93) - (v67 * v94))) + (v92 * v95)) - (v66 * v96);
  v98 = ((v69 * ((v66 * v94) - (v68 * v92))) + (v93 * v95)) - (v67 * v96);
  v99 = ((v69 * ((v67 * v92) - (v66 * v93))) + (v94 * v95)) - (v68 * v96);
  v100 = (((v69 * *v72) - (v66 * v75)) - (v67 * v74)) + (v73 * v68);
  v101 = (((v69 * v73) - (v67 * v75)) - (v68 * *v72)) + (v74 * v66);
  v102 = (((v69 * v74) - (v68 * v75)) - (v66 * v73)) + (*v72 * v67);
  v103 = v88 * (v88 + v88);
  v104 = v89 * (v89 + v89);
  v105 = v90 * (v90 + v90);
  v106 = v89 * (v88 + v88);
  v107 = v90 * (v88 + v88);
  v108 = v91 * (v88 + v88);
  v109 = v90 * (v89 + v89);
  v110 = v91 * (v89 + v89);
  v111 = v91 * (v90 + v90);
  v138[0] = (1.0 - v104) - v105;
  v138[1] = v106 + v111;
  v112 = 1.0 - v103;
  v138[2] = v107 - v110;
  v138[3] = v106 - v111;
  v138[4] = v112 - v105;
  v138[5] = v109 + v108;
  v138[6] = v107 + v110;
  v138[7] = v109 - v108;
  v138[8] = v112 - v104;
  v138[9] = v85;
  v138[10] = v86;
  v138[11] = v87;
  v113 = v102 + v102;
  v114 = v101 * (v101 + v101);
  v115 = v102 * (v102 + v102);
  v116 = v101 * (v100 + v100);
  v117 = v102 * (v100 + v100);
  v118 = v91 * (v100 + v100);
  v119 = v102 * (v101 + v101);
  v120 = v91 * (v101 + v101);
  v121 = v91 * v113;
  v137[0] = (1.0 - v114) - v115;
  v137[1] = v116 + v121;
  v137[2] = v117 - v120;
  v137[3] = v116 - v121;
  v122 = 1.0 - (v100 * (v100 + v100));
  v137[4] = v122 - v115;
  v137[5] = v119 + v118;
  v137[6] = v117 + v120;
  v137[7] = v119 - v118;
  v137[8] = v122 - v114;
  v137[9] = v97;
  v137[10] = v98;
  v137[11] = v99;
  v135 = 0;
  v136 = 0;
  v123 = *(v32 + 18);
  if ((v33 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v31);
    v36 = &v133[-2] - v124;
    bzero(&v133[-2] - v124, v125);
    MEMORY[0x1EEE9AC00](v126);
    v37 = &v133[-2] - v127;
    bzero(&v133[-2] - v127, v123);
  }

  physx::Gu::getScaledConvex(&v136, &v135, v36, v37, v33, *(*(a1 + 2184) + 32), *(*(a1 + 2184) + 40) + *(v32 + 16), v123, *(a1 + 2208));
  physx::Gu::findRotationMatrixFromZ(v134, &v153);
  physx::Gu::findRotationMatrixFromZ(v133, a2);
  v128 = *(a1 + 2248);
  if (v55 > v59)
  {
    v129 = *(a1 + 2200);
    v130 = 1;
    if (physx::Gu::contactPolygonPolygonExt(*(v32 + 18), v136, v135, &v139, v153.i32, v134, 3u, v132, v61, byte_1E3116846, v129, a2, v133, &v151, v138, v137, a6, v128, 1u, v148))
    {
      return v130;
    }

    return 0;
  }

  return (physx::Gu::contactPolygonPolygonExt(3, v132, byte_1E3116846, *(a1 + 2200), a2, v133, *(v32 + 18), v136, v61, v135, &v139, v153.i32, v134, &v149, v137, v138, a6, v128, 0, v148) & 1) != 0;
}

uint64_t physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(uint64_t a1, int *a2)
{
  v2 = *(a1 + 1280);
  if (v2 == 128)
  {
    return 0;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = 9 * (((v5 | (v4 << 16)) + ~((v5 | (v4 << 16)) << 15)) ^ (((v5 | (v4 << 16)) + ~((v5 | (v4 << 16)) << 15)) >> 10));
  v7 = (v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11);
  v8 = a1 + ((v7 ^ BYTE2(v7)) & 0x7F);
  v9 = *(v8 + 1152);
  if (v9 != 255)
  {
    v11 = a1 + 1024;
    while (1)
    {
      v12 = (a1 + 8 * v9);
      if (*v12 == v4 && v12[1] == v5)
      {
        return 0;
      }

      v13 = v9;
      v9 = *(v11 + v9);
      if (v9 == 255)
      {
        v10 = (v11 + v13);
        goto LABEL_10;
      }
    }
  }

  v10 = (v8 + 1152);
LABEL_10:
  *v10 = v2;
  *(a1 + v2 + 1024) = -1;
  v14 = *(a1 + 1280);
  *(a1 + 1280) = v14 + 1;
  *(a1 + 8 * v14) = *a2;
  return 1;
}

uint64_t physx::Gu::CacheMap<physx::Gu::CachedVertex,128u>::addData(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 768);
  if (v2 == 128)
  {
    return 0;
  }

  v4 = a1 + (*a2 & 0x7FLL);
  v5 = *(v4 + 640);
  if (v5 != 255)
  {
    v7 = a1 + 512;
    while (*(a1 + 4 * v5) != *a2)
    {
      v8 = v5;
      v5 = *(v7 + v5);
      if (v5 == 255)
      {
        v6 = (v7 + v8);
        goto LABEL_9;
      }
    }

    return 0;
  }

  v6 = (v4 + 640);
LABEL_9:
  *v6 = v2;
  *(a1 + v2 + 512) = -1;
  v9 = *(a1 + 768);
  *(a1 + 768) = v9 + 1;
  *(a1 + 4 * v9) = *a2;
  return 1;
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<4352u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = (4 * a2);
    if (v4 > 0x1100 || (*(result + 4352) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(result, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v5 = result;
    }

    else
    {
      *(result + 4352) = 1;
      v5 = result;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 4368);
  v7 = *(v3 + 4360);
  if (v6)
  {
    v8 = &v5[v6];
    v9 = *(v3 + 4360);
    v10 = v5;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  if ((*(v3 + 4372) & 0x80000000) == 0)
  {
    if (v7 == v3)
    {
      *(v3 + 4352) = 0;
    }

    else if (v7)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 4360) = v5;
  *(v3 + 4372) = a2;
  return result;
}

uint64_t physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::contains(uint64_t a1, int a2, int a3)
{
  v3 = 9 * (((a3 | (a2 << 16)) + ~((a3 | (a2 << 16)) << 15)) ^ (((a3 | (a2 << 16)) + ~((a3 | (a2 << 16)) << 15)) >> 10));
  v4 = *(a1 + ((((v3 ^ (v3 >> 6)) - 1) ^ (((v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11)) >> 16)) & 0x7F) + 1152);
  if (v4 == 255)
  {
    return 0;
  }

  while (1)
  {
    v5 = (a1 + 8 * v4);
    if (*v5 == a2 && v5[1] == a3)
    {
      break;
    }

    v4 = *(a1 + 1024 + v4);
    if (v4 == 255)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t anonymous namespace::ConvexVsHeightfieldContactGenerationCallback::onEvent(_anonymous_namespace_::ConvexVsHeightfieldContactGenerationCallback *this, int a2, unsigned int *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  for (i = a2; i; a3 = v21)
  {
    v4 = *a3;
    v21 = a3 + 1;
    physx::Gu::HeightFieldUtil::getTriangle(*(this + 284), *(this + 281), &v32, v42, v41, *a3, 0, 0);
    v5 = ((v36 - v33) * (v40 - v34)) - ((v37 - v34) * (v39 - v33));
    v6 = ((v37 - v34) * (v38 - v32)) - ((v35 - v32) * (v40 - v34));
    v7 = ((v35 - v32) * (v39 - v33)) - ((v36 - v33) * (v38 - v32));
    v8 = sqrtf(((v6 * v6) + (v5 * v5)) + (v7 * v7));
    if (v8 > 0.0)
    {
      v9 = 1.0 / v8;
      v5 = v5 * v9;
      v6 = v6 * v9;
      v7 = v7 * v9;
    }

    v10 = 0;
    v11 = 0;
    --i;
    do
    {
      v12 = v41[v10];
      if (v12 == -1)
      {
        v11 |= 8 << v10;
      }

      else
      {
        physx::Gu::HeightFieldUtil::getTriangle(*(this + 284), *(this + 281), &v23, 0, 0, v12, 0, 0);
        v13 = ((v27 - v24) * (v31 - v25)) - ((v28 - v25) * (v30 - v24));
        v14 = ((v28 - v25) * (v29 - v23)) - ((v26 - v23) * (v31 - v25));
        v15 = ((v26 - v23) * (v30 - v24)) - ((v27 - v24) * (v29 - v23));
        v16 = &v32 + 3 * byte_1E3116888[v10];
        if ((((v14 * (v16[1] - v24)) + (v13 * (*v16 - v23))) + (v15 * (v16[2] - v25))) < 0.0)
        {
          v17 = sqrtf(((v14 * v14) + (v13 * v13)) + (v15 * v15));
          if (v17 > 0.0)
          {
            v18 = 1.0 / v17;
            v13 = v13 * v18;
            v14 = v14 * v18;
            v15 = v15 * v18;
          }

          v19 = 8 << v10;
          if ((((v6 * v14) + (v13 * v5)) + (v15 * v7)) >= 0.999)
          {
            v19 = 0;
          }

          v11 |= v19;
        }
      }

      ++v10;
    }

    while (v10 != 3);
  }

  return 1;
}

BOOL physx::Gu::contactSphereCapsule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7)
{
  v7 = *a4;
  v8 = v7 + v7;
  v10 = *(a4 + 12);
  v9 = *(a4 + 16);
  v11 = v10 + v10;
  v12 = *(a2 + 8);
  v13 = (((v10 * (v10 + v10)) + -1.0) + (v7 * (v7 + v7))) * v12;
  v14 = *(a3 + 16) - v9;
  v15 = *(a1 + 4);
  v16 = v15 + *(a2 + 4);
  v17 = -v13 - v13;
  v18 = *(a4 + 4);
  v19.i32[0] = vdup_lane_s32(v18, 1).u32[0];
  v19.f32[1] = -v18.f32[0];
  v20 = vmul_n_f32(vmla_n_f32(vmul_n_f32(v18, v8), v19, v11), v12);
  v21 = *(a4 + 20);
  v22 = vsub_f32(*(a3 + 20), v21);
  v23 = vsub_f32(vneg_f32(v20), v20);
  _D20 = vsub_f32(v22, v20);
  _S23 = v23.i32[1];
  __asm { FMLA            S22, S23, V20.S[1] }

  v31 = 0.0;
  if (_S22 > 0.0)
  {
    v32 = (vmul_f32(v23, v23).f32[0] + (v17 * v17)) + (v23.f32[1] * v23.f32[1]);
    if (_S22 >= v32)
    {
      _D20 = vsub_f32(_D20, v23);
      v31 = 1.0;
    }

    else
    {
      v31 = _S22 / v32;
      _D20 = vsub_f32(_D20, vmul_n_f32(v23, v31));
    }
  }

  _S22 = _D20.i32[1];
  __asm { FMLA            S18, S22, V20.S[1] }

  v35 = (v16 + *a5) * (v16 + *a5);
  if (_S18 < v35)
  {
    v36 = v14 - (v13 + (v17 * v31));
    _D7 = vsub_f32(v22, vadd_f32(v20, vmul_n_f32(v23, v31)));
    _S19 = _D7.i32[1];
    __asm { FMLA            S17, S19, V7.S[1] }

    if (_S17 == 0.0)
    {
      v40 = 0;
      v41 = 1.0;
    }

    else
    {
      v42 = 1.0 / sqrtf(_S17);
      v41 = v36 * v42;
      v40 = vmul_n_f32(_D7, v42);
    }

    v43 = *(a7 + 4096);
    if (v43 <= 0x3F)
    {
      *(a7 + 4096) = v43 + 1;
      v44 = a7 + (v43 << 6);
      *v44 = v41;
      *(v44 + 4) = v40;
      *(v44 + 20) = vsub_f32(vadd_f32(v21, v22), vmul_n_f32(v40, v15));
      *(v44 + 12) = sqrtf(_S18) - v16;
      *(v44 + 16) = (v9 + v14) - (v15 * v41);
      *(v44 + 52) = -1;
    }
  }

  return _S18 < v35;
}

BOOL physx::Gu::contactSphereMesh(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a3[4] - a4[4];
  v14 = a3[5] - a4[5];
  v15 = a3[6] - a4[6];
  v16 = v13 + v13;
  v17 = v14 + v14;
  v18 = v15 + v15;
  v20 = a4[2];
  v19 = a4[3];
  v21 = (v19 * v19) + -0.5;
  v22 = a4[1];
  v23 = (((v14 + v14) * v22) + (*a4 * (v13 + v13))) + (v20 * v18);
  v24 = (((v13 + v13) * v21) - (((v22 * v18) - (v20 * (v14 + v14))) * v19)) + (*a4 * v23);
  v25 = (((v14 + v14) * v21) - (((v20 * v16) - (*a4 * v18)) * v19)) + (v22 * v23);
  v26 = ((v18 * v21) - (((*a4 * v17) - (v22 * v16)) * v19)) + (v20 * v23);
  v63 = __PAIR64__(LODWORD(v25), LODWORD(v24));
  v64 = v26;
  v27 = *(a1 + 4) + *a5;
  v28 = *(a2 + 48);
  if (*(a2 + 4) == 1.0 && *(a2 + 8) == 1.0 && *(a2 + 12) == 1.0)
  {
    v43 = 2;
    v42 = &unk_1F5D21F28;
    v44 = a1;
    v45 = a3;
    v46 = a4;
    v47 = a7;
    v48 = &v63;
    v49 = v27 * v27;
    v50 = 0;
    v51 = 0;
    v52 = a8;
    v53 = v28;
    v55[0] = xmmword_1E3047670;
    v55[1] = xmmword_1E3047670;
    v56 = 1065353216;
    v57 = v24;
    v58 = v25;
    v59 = v26;
    v60 = v27;
    v61 = v27;
    v62 = v27;
    (physx::Gu::gMidphaseBoxCBOverlapTable[*(v28 + 8) - 3])(v28, v55, &v42, 1, 1);
    v42 = &unk_1F5D21F28;
  }

  else
  {
    physx::Cm::FastVertex2ShapeScaling::init(v55, (a2 + 4), (a2 + 16));
    v43 = 2;
    v44 = a1;
    v45 = a3;
    v46 = a4;
    v47 = a7;
    v48 = &v63;
    v49 = v27 * v27;
    v50 = 0;
    v51 = 0;
    v52 = a8;
    v53 = v28;
    v42 = &unk_1F5D21F78;
    v54 = v55;
    *v41 = v63;
    *&v41[8] = v64;
    *&v39 = v27;
    *(&v39 + 1) = v27;
    v40 = v27;
    v36 = xmmword_1E3047670;
    v37 = xmmword_1E3047670;
    v38 = 1065353216;
    physx::Cm::FastVertex2ShapeScaling::transformQueryBounds(v55, v41, &v39, &v36);
    *&v31 = __PAIR64__(*v41, v38);
    *(&v31 + 1) = *&v41[4];
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v31;
    v34 = v39;
    v35 = v40;
    (physx::Gu::gMidphaseBoxCBOverlapTable[*(v28 + 8) - 3])(v28, v33, &v42, 1, 1);
    v42 = &unk_1F5D21F28;
  }

  return *(a7 + 4096) != 0;
}

void anonymous namespace::SphereMeshContactGenerationCallback_NoScale::~SphereMeshContactGenerationCallback_NoScale(_anonymous_namespace_::SphereMeshContactGenerationCallback_NoScale *this, double a2, float32x2_t a3)
{
  *this = &unk_1F5D21F28;
}

{
  *this = &unk_1F5D21F28;

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::SphereMeshContactGenerationCallback_Scale::~SphereMeshContactGenerationCallback_Scale(_anonymous_namespace_::SphereMeshContactGenerationCallback_Scale *this, double a2, float32x2_t a3)
{
  *this = &unk_1F5D21F28;
}

{
  *this = &unk_1F5D21F28;

  JUMPOUT(0x1E6906520);
}

BOOL physx::Gu::contactSphereHeightfield(uint64_t a1, float32x2_t *a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a2[1];
  v44 = a2;
  v9 = a2[3].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v41 = vrev64_s32(vdiv_f32(_D2, a2[2]));
  v42 = 1.0 / v9;
  v15 = a3[4] - a4[4];
  v16 = a3[5] - a4[5];
  _D2.f32[0] = a3[6] - a4[6];
  v17 = v15 + v15;
  v18 = v16 + v16;
  _D2.f32[0] = _D2.f32[0] + _D2.f32[0];
  v20 = a4[2];
  v19 = a4[3];
  v21 = (v19 * v19) + -0.5;
  v22 = a4[1];
  v23 = ((v18 * v22) + (*a4 * v17)) + (v20 * _D2.f32[0]);
  v24 = ((v17 * v21) - (((v22 * _D2.f32[0]) - (v20 * v18)) * v19)) + (*a4 * v23);
  *&v25 = ((v18 * v21) - (((v20 * v17) - (*a4 * _D2.f32[0])) * v19)) + (v22 * v23);
  *&v26 = ((_D2.f32[0] * v21) - (((*a4 * v18) - (v22 * v17)) * v19)) + (v20 * v23);
  v39 = v24;
  v40 = __PAIR64__(v26, v25);
  v27 = *(a1 + 4) + *a5;
  v38[0] = v24 - v27;
  v38[1] = *&v25 - v27;
  v38[2] = *&v26 - v27;
  v38[3] = v24 + v27;
  v38[4] = *&v25 + v27;
  v38[5] = *&v26 + v27;
  v31 = &unk_1F5D21FB8;
  v32[0] = a1;
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a7;
  v32[4] = &v39;
  v33 = v27 * v27;
  v34 = 0;
  v35 = 0;
  v36 = a8;
  v37 = &v41;
  physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v41, a4, v38, 0, &v31);
  return *(a7 + 4096) != 0;
}

uint64_t anonymous namespace::SphereMeshContactGeneration::generateLastContacts(uint64_t this, double a2, float32x2_t a3)
{
  v114 = *MEMORY[0x1E69E9840];
  v3 = *(this + 44);
  if (v3)
  {
    v4 = this;
    v5 = this + 2096;
    v6 = v3 - 1;
    if (v3 - 1 >= 1)
    {
      LODWORD(v7) = 0;
      v8 = 0;
      memset(v113, 0, sizeof(v113));
      while (1)
      {
        if (v6 > v8)
        {
          v7 = v7;
          while ((v6 - v8) > 4)
          {
            v9 = (v5 + 8 * ((v8 + v6) / 2));
            v10 = (v5 + 8 * v8);
            v11 = *v9;
            v12 = *v10;
            if (*v9 < *v10)
            {
              v13 = *v10;
              *v10 = *v9;
              *v9 = v13;
              v12 = *v10;
              v11 = *&v13;
            }

            v14 = (v5 + 8 * v6);
            v15 = *v14;
            if (*v14 < v12)
            {
              v16 = *v10;
              *v10 = *v14;
              *v14 = v16;
              v15 = *&v16;
              v11 = *v9;
            }

            v17 = *v9;
            if (v15 < v11)
            {
              *v9 = *v14;
              *v14 = v17;
              v17 = *v9;
            }

            *v9 = *(v14 - 1);
            *(v14 - 1) = v17;
            v18 = v6 - 1;
            v19 = (v5 + 8 * v18);
            v20 = *&v17;
            v21 = v8;
            while (1)
            {
              v22 = 0;
              v23 = v21;
              v24 = 2104;
              v25 = v4 + 8 * v21;
              do
              {
                v26 = *(v25 + v24);
                ++v22;
                v24 += 8;
              }

              while (v26 < v20);
              v27 = v4 + 8 * v23 + 8 * v22;
              v28 = v18;
              v29 = (v4 + 2088 + 8 * v18);
              do
              {
                --v28;
                v30 = *v29;
                v29 -= 2;
              }

              while (v20 < v30);
              if (v23 + v22 >= v28)
              {
                break;
              }

              v31 = v22 + v23;
              v32 = *(v27 + 2096);
              *(v27 + 2096) = *(v5 + 8 * v28);
              *(v5 + 8 * v28) = v32;
              v20 = *v19;
              v21 = v31;
              LODWORD(v18) = v28;
            }

            v33 = *(v27 + 2096);
            *(v27 + 2096) = *v19;
            *v19 = v33;
            v34 = v23 - v8 + v22;
            this = (v6 - v23 - v22);
            v35 = v23 + v22;
            v36 = v23 + v22 - 1;
            v37 = v23 + v22;
            v38 = v37 - 1;
            v39 = v34 < this;
            if (v34 >= this)
            {
              v40 = v35 + 1;
            }

            else
            {
              v40 = v8;
            }

            if (v39)
            {
              v8 = v37 + 1;
            }

            else
            {
              v38 = v6;
            }

            if (!v39)
            {
              v6 = v36;
            }

            *(v113 + v7) = v40;
            *(v113 + v7 + 1) = v38;
            v7 += 2;
            if (v6 <= v8)
            {
              goto LABEL_40;
            }
          }

          v41 = v8;
          v42 = v8 + 1;
          v43 = v4 + 2104 + 8 * v8;
          do
          {
            v44 = v41++;
            v45 = v43;
            v46 = v42;
            v47 = v44;
            LODWORD(this) = v44;
            do
            {
              v48 = *v45;
              v45 += 2;
              if (v48 >= *(v5 + 8 * this))
              {
                this = this;
              }

              else
              {
                this = v46;
              }

              ++v47;
              ++v46;
            }

            while (v47 < v6);
            if (this != v44)
            {
              v49 = *(v5 + 8 * this);
              *(v5 + 8 * this) = *(v5 + 8 * v44);
              *(v5 + 8 * v44) = v49;
            }

            ++v42;
            v43 += 8;
          }

          while (v41 != v6);
        }

        if (!v7)
        {
          break;
        }

LABEL_40:
        v6 = *(v113 + (v7 - 1));
        LODWORD(v7) = v7 - 2;
        v8 = *(v113 + v7);
      }
    }

    v50 = 0;
    v51 = v4 + 48;
    v52 = *(v4 + 2608);
    v112 = v3;
    do
    {
      v53 = v5 + 8 * v50;
      v54 = (v51 + 32 * *(v53 + 4));
      v55 = v54[2].i32[1];
      v56 = v54[3].i32[0];
      v57 = v54[3].i32[1];
      v58 = v54[1].i32[1];
      if (v58 > 2)
      {
        if (v58 == 3)
        {
          this = validateEdge(v54[2].i32[1], v54[3].i32[0], (v4 + 2612), *(v4 + 2608));
          v51 = v4 + 48;
          v3 = v112;
          if (this)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v58 == 4)
          {
            v62 = *(v4 + 2608);
            v63 = v54[3].i32[0];
          }

          else
          {
            if (v58 != 5)
            {
              goto LABEL_79;
            }

            v62 = *(v4 + 2608);
            v63 = v54[2].i32[1];
          }

          this = validateEdge(v63, v54[3].i32[1], (v4 + 2612), v62);
          v51 = v4 + 48;
          v3 = v112;
          if (this)
          {
            goto LABEL_72;
          }
        }
      }

      else
      {
        switch(v58)
        {
          case 0:
            v64 = *(v4 + 2608) + 1;
            v65 = (v4 + 2612);
            while (--v64)
            {
              if (*v65 != v55 && v65[1] != v55)
              {
                v66 = v65[2];
                v65 += 3;
                if (v66 != v55)
                {
                  continue;
                }
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          case 1:
            v67 = *(v4 + 2608) + 1;
            v68 = (v4 + 2612);
            while (--v67)
            {
              if (*v68 != v56 && v68[1] != v56)
              {
                v69 = v68[2];
                v68 += 3;
                if (v69 != v56)
                {
                  continue;
                }
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          case 2:
            v59 = *(v4 + 2608) + 1;
            v60 = (v4 + 2612);
            while (--v59)
            {
              if (*v60 != v57 && v60[1] != v57)
              {
                v61 = v60[2];
                v60 += 3;
                if (v61 != v57)
                {
                  continue;
                }
              }

              goto LABEL_79;
            }

LABEL_72:
            if (*v53 <= 0.0001)
            {
              a3 = *v54;
              v73 = v54[1].f32[0];
              v74 = (COERCE_FLOAT(vmul_f32(a3, a3).i32[1]) + (a3.f32[0] * a3.f32[0])) + (v73 * v73);
              v75 = 0;
              v70 = 0.0;
              v76 = 0.0;
              if (v74 > 0.0)
              {
                v77 = 1.0 / sqrtf(v74);
                v75 = vmul_n_f32(a3, v77);
                v76 = v73 * v77;
              }

              v71 = vneg_f32(v75);
              v72 = -v76;
            }

            else
            {
              v70 = sqrtf(*v53);
              v71 = vmul_n_f32(*v54, 1.0 / v70);
              v72 = (1.0 / v70) * v54[1].f32[0];
            }

            v78 = *(v4 + 24);
            v79 = *(v78 + 4096);
            if (v79 <= 0x3F)
            {
              v80 = v54[2].i32[0];
              v81 = *(*v4 + 4);
              v82 = v70 - v81;
              v83 = *(v4 + 16);
              v84 = *(v4 + 32);
              v85 = ((v72 * v81) + v84[1].f32[0]) + ((v72 * v81) + v84[1].f32[0]);
              a3.i32[0] = *(v83 + 2);
              v86 = *(v83 + 3);
              v87 = (v86 * v86) + -0.5;
              v88 = *(v83 + 6);
              _S4 = v72 + v72;
              v90 = v71.f32[0] + v71.f32[0];
              v91 = v71.f32[1] + v71.f32[1];
              *(v78 + 4096) = v79 + 1;
              v92 = (v78 + (v79 << 6));
              _D6 = *v83;
              v94 = vadd_f32(vmul_n_f32(v71, v81), *v84);
              v95 = vadd_f32(v94, v94);
              LODWORD(v96) = HIDWORD(*v83);
              v97 = (vmuls_lane_f32(v96, v95, 1) + (COERCE_FLOAT(*v83) * v95.f32[0])) + (a3.f32[0] * v85);
              v98 = v88 + (((v86 * ((-v96 * v95.f32[0]) + (COERCE_FLOAT(*v83) * v95.f32[1]))) + (v85 * v87)) + (a3.f32[0] * v97));
              v99 = vneg_f32(vzip1_s32(a3, *v83));
              v100.i32[0] = vdup_lane_s32(v95, 1).u32[0];
              v100.f32[1] = v85;
              v101.i32[0] = vdup_lane_s32(*v83, 1).u32[0];
              v101.i32[1] = a3.i32[0];
              v102 = vadd_f32(v83[2], vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v100, v99), vext_s8(v100, v95, 4uLL), v101), v86), v95, v87), *v83, v97));
              v103 = (vmuls_lane_f32(v91, *v83, 1) + (COERCE_FLOAT(*v83) * v90)) + (a3.f32[0] * _S4);
              v104 = (((COERCE_FLOAT(*v83) * v91) - (v96 * v90)) * v86) + (_S4 * v87);
              v105 = -((((vmuls_lane_f32(_S4, v99, 1) + (a3.f32[0] * v90)) * v86) + (v91 * v87)) + (v96 * v103));
              __asm { FMLA            S7, S4, V6.S[1] }

              v92->f32[0] = -(((_S7 * v86) + (v90 * v87)) + (COERCE_FLOAT(*v83) * v103));
              v92->f32[1] = v105;
              v92[2] = v102;
              v92[3].f32[0] = v98;
              v92[1].f32[0] = -(v104 + (a3.f32[0] * v103));
              v92[1].f32[1] = v82;
              v92[6].i32[1] = v80;
            }

            break;
        }
      }

LABEL_79:
      if (v52 <= 0x3F)
      {
        v111 = (v4 + 2612 + 12 * v52++);
        *(v4 + 2608) = v52;
        *v111 = v55;
        v111[1] = v56;
        v111[2] = v57;
      }

      ++v50;
    }

    while (v50 != v3);
  }

  return this;
}

BOOL physx::Gu::contactSpherePlane(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = (v7 - a4[4]) + (v7 - a4[4]);
  v11 = (v8 - a4[5]) + (v8 - a4[5]);
  v12 = (v9 - a4[6]) + (v9 - a4[6]);
  v14 = a4[2];
  v13 = a4[3];
  v15 = *a4;
  v16 = a4[1];
  v17 = ((v10 * ((v13 * v13) + -0.5)) - (((v16 * v12) - (v14 * v11)) * v13)) + (*a4 * (((v11 * v16) + (*a4 * v10)) + (v14 * v12)));
  v18 = *(a1 + 4);
  v19 = v17 - v18;
  v20 = *a5;
  if (v19 <= *a5)
  {
    v21 = *(a7 + 4096);
    if (v21 <= 0x3F)
    {
      v22 = ((v15 + v15) * v14) - (v16 * (v13 + v13));
      v23 = (v16 * (v15 + v15)) + (v14 * (v13 + v13));
      v24 = ((v13 * (v13 + v13)) + -1.0) + (v15 * (v15 + v15));
      *(a7 + 4096) = v21 + 1;
      v25 = a7 + (v21 << 6);
      *v25 = v24;
      *(v25 + 4) = v23;
      *(v25 + 16) = v7 - (v24 * v18);
      *(v25 + 20) = v8 - (v23 * v18);
      *(v25 + 24) = v9 - (v18 * v22);
      *(v25 + 8) = v22;
      *(v25 + 12) = v19;
      *(v25 + 52) = -1;
    }
  }

  return v19 <= v20;
}

BOOL physx::Gu::contactSphereSphere(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v7 = a3[2];
  v8 = vsub_f32(v7, a4[2]);
  v9 = a3[3].f32[0];
  v10 = v9 - a4[3].f32[0];
  v11 = (COERCE_FLOAT(vmul_f32(v8, v8).i32[1]) + (v8.f32[0] * v8.f32[0])) + (v10 * v10);
  v12 = *(a1 + 4);
  v13 = *(a2 + 4);
  v14 = ((v12 + v13) + *a5) * ((v12 + v13) + *a5);
  if (v11 < v14)
  {
    v15 = sqrtf(v11);
    if (v15 <= 0.00001)
    {
      v16 = 1065353216;
      v17 = 0.0;
    }

    else
    {
      v16 = vmul_n_f32(v8, 1.0 / v15);
      v17 = v10 * (1.0 / v15);
    }

    v18 = *(a7 + 4096);
    if (v18 <= 0x3F)
    {
      v19 = v15 - (v12 + v13);
      v20 = ((v12 + v15) - v13) * -0.5;
      *(a7 + 4096) = v18 + 1;
      v21 = (a7 + (v18 << 6));
      *v21 = v16;
      v21[2] = vadd_f32(v7, vmul_n_f32(v16, v20));
      v21[3].f32[0] = v9 + (v20 * v17);
      v21[1].f32[0] = v17;
      v21[1].f32[1] = v19;
      v21[6].i32[1] = -1;
    }
  }

  return v11 < v14;
}

BOOL physx::Gu::selectNormal(physx::Gu *this, float a2, float a3)
{
  if (a2 == 0.0)
  {
    v3 = (this & 0x30) == 0;
    if (a3 != 1.0)
    {
      v3 = (this & 0x20) == 0;
    }

    if (a3 == 0.0)
    {
      return (this & 0x28) == 0;
    }

    else
    {
      return v3;
    }
  }

  else if (a2 == 1.0)
  {
    return a3 == 0.0 && (this & 0x18) == 0;
  }

  else if (a3 == 0.0)
  {
    return (this & 8) == 0;
  }

  else
  {
    return (a2 + a3) < 0.9999 || (this & 0x10) == 0;
  }
}

void physx::BigConvexData::~BigConvexData(physx::BigConvexData *this)
{
  if (*(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 5))
  {
    goto LABEL_7;
  }

  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 4))
  {
LABEL_7:
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

float32_t physx::Gu::getScaledConvex(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  if (a5)
  {
    *a1 = a6;
    *a2 = a7;
  }

  else
  {
    *a2 = a4;
    *a1 = a3;
    if (a8)
    {
      v9 = 0;
      for (i = 0; i != a8; ++i)
      {
        *(*a2 + i) = i;
        v11 = (a6 + 12 * *(a7 + i));
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        result = ((*v11 * *(a9 + 8)) + (v13 * *(a9 + 20))) + (v14 * *(a9 + 32));
        v16 = (*a1 + v9);
        *v16 = vadd_f32(vadd_f32(vmul_n_f32(*a9, v12), vmul_n_f32(*(a9 + 12), v13)), vmul_n_f32(*(a9 + 24), v14));
        v16[1].f32[0] = result;
        v9 += 12;
      }
    }
  }

  return result;
}

uint64_t physx::Gu::getConvexData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 12);
  v10 = *(a1 + 8) == 1.0 && *(a1 + 4) == 1.0;
  v11 = v10 & (v8 == 1.0);
  if (v10 && v8 == 1.0)
  {
    v12 = *(a1 + 48);
    v13 = *(a2 + 8);
    v14 = v12[1];
    v15 = *(a2 + 20);
    v16 = *(a2 + 32);
    v17 = v12[2];
    v18 = v12[3];
    v19 = ((*v12 * v13) + (v14 * v15)) + (v17 * v16);
    v20 = v12[4];
    v21 = v12[5];
    v22 = (fabsf(v13 * v18) + fabsf(v15 * v20)) + fabsf(v16 * v21);
    v23 = *(a2 + 12);
    v24 = vadd_f32(vmul_n_f32(*a2, *v12), vmul_n_f32(v23, v14));
    v25 = *(a2 + 24);
    v26 = vadd_f32(v24, vmul_n_f32(v25, v17));
    v27 = vadd_f32(vadd_f32(vabs_f32(vmul_n_f32(*a2, v18)), vabs_f32(vmul_n_f32(v23, v20))), vabs_f32(vmul_n_f32(v25, v21)));
    *a3 = vsub_f32(v26, v27);
    *(a3 + 8) = v19 - v22;
    *(a3 + 12) = vadd_f32(v26, v27);
    *(a3 + 20) = v19 + v22;
    physx::Gu::getPolygonalData_Convex(a4, v12, a2);
  }

  else
  {
    physx::Cm::FastVertex2ShapeScaling::init(a2, (a1 + 4), (a1 + 16));
    v28 = *(a1 + 48);
    v29 = *(a2 + 8);
    v30 = v28[1];
    v31 = *(a2 + 20);
    v32 = *(a2 + 32);
    v33 = v28[2];
    v34 = v28[3];
    v35 = ((*v28 * v29) + (v30 * v31)) + (v33 * v32);
    v36 = v28[4];
    v37 = v28[5];
    v38 = (fabsf(v29 * v34) + fabsf(v31 * v36)) + fabsf(v32 * v37);
    v39 = *(a2 + 12);
    v40 = vadd_f32(vmul_n_f32(*a2, *v28), vmul_n_f32(v39, v30));
    v41 = *(a2 + 24);
    v42 = vadd_f32(v40, vmul_n_f32(v41, v33));
    v43 = vadd_f32(vadd_f32(vabs_f32(vmul_n_f32(*a2, v34)), vabs_f32(vmul_n_f32(v39, v36))), vabs_f32(vmul_n_f32(v41, v37)));
    *a3 = vsub_f32(v42, v43);
    *(a3 + 8) = v35 - v38;
    *(a3 + 12) = vadd_f32(v42, v43);
    *(a3 + 20) = v35 + v38;
    physx::Gu::getPolygonalData_Convex(a4, v28, a2);
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
  }

  return v11;
}

uint64_t physx::Gu::findUniqueConvexEdges(uint64_t a1, uint64_t a2, int a3, float32x2_t *a4, uint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = a4[2].u8[2];
    if (a4[2].i8[2])
    {
      v8 = 0;
      v9 = a5 + a4[2].u16[0];
      v10 = v7 - 1;
      do
      {
        v11 = *(v9 + v10);
        v12 = *(v9 + v8);
        if (v12 >= v11)
        {
          v13 = *(v9 + v10);
        }

        else
        {
          v13 = *(v9 + v8);
        }

        if (v12 > v11)
        {
          v11 = *(v9 + v8);
        }

        if (result)
        {
          v14 = result;
          v15 = (a2 + 12);
          while (*(v15 - 12) != v13 || *(v15 - 11) != v11)
          {
            v15 += 4;
            if (!--v14)
            {
              goto LABEL_15;
            }
          }

          *(v15 - 1) = vadd_f32(*a4, *(v15 - 2));
          *v15 = a4[1].f32[0] + *v15;
        }

        else
        {
LABEL_15:
          if (result == a1)
          {
            return a1;
          }

          v16 = a2 + 16 * result;
          *v16 = v13;
          *(v16 + 1) = v11;
          *(v16 + 4) = *a4;
          *(v16 + 12) = a4[1].i32[0];
          result = (result + 1);
        }

        v10 = v8++;
        --v7;
      }

      while (v7);
    }

    a4 = (a4 + 20);
    --a3;
  }

  while (a3);
  return result;
}

BOOL physx::Gu::ConvexMesh::getPolygonData(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 71);
  if (v3 > a2)
  {
    v4 = *(a1 + 72) + 20 * a2;
    *a3 = *v4;
    *(a3 + 4) = *(v4 + 4);
    *(a3 + 8) = *(v4 + 8);
    *(a3 + 12) = *(v4 + 12);
    *(a3 + 16) = *(v4 + 18);
    *(a3 + 18) = *(v4 + 16);
  }

  return v3 > a2;
}

double physx::Gu::ConvexMesh::ConvexMesh(physx::Gu::ConvexMesh *this)
{
  *(this + 2) = 196610;
  *(this + 6) = 1;
  *this = &unk_1F5D21DF8;
  *(this + 2) = &unk_1F5D21EA0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 120) = xmmword_1E3047680;
  *(this + 136) = xmmword_1E3047680;
  *(this + 19) = 0x3F80000000000000;
  *(this + 44) = vdup_n_s32(0xFE7FFFFF);
  *(this + 13) = -25165825;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

__n128 physx::Gu::ConvexMesh::ConvexMesh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 196610;
  *(a1 + 24) = 1;
  *a1 = &unk_1F5D21DF8;
  *(a1 + 16) = &unk_1F5D21EA0;
  *(a1 + 68) = 0;
  *(a1 + 104) = *(a3 + 72);
  *(a1 + 112) = *(a3 + 120);
  *(a1 + 120) = *(a3 + 76);
  *(a1 + 136) = *(a3 + 92);
  *(a1 + 144) = *(a3 + 100);
  *(a1 + 152) = *(a3 + 108);
  *(a1 + 160) = a2;
  *(a1 + 32) = *a3;
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 48) = *(a3 + 16);
  *(a1 + 56) = *(a3 + 24);
  *(a1 + 64) = *(a3 + 32);
  result = *(a3 + 36);
  v4 = *(a3 + 52);
  *(a1 + 100) = *(a3 + 68);
  *(a1 + 84) = v4;
  *(a1 + 68) = result;
  return result;
}

void physx::Gu::ConvexMesh::~ConvexMesh(physx::Gu::ConvexMesh *this)
{
  *this = &unk_1F5D21DF8;
  *(this + 2) = &unk_1F5D21EA0;
  if (*(this + 10))
  {
    if (*(this + 9))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 9) = 0;
    v2 = *(this + 14);
    if (v2)
    {
      physx::BigConvexData::~BigConvexData(*(this + 14));
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
    }

    *(this + 14) = 0;
  }
}

{
  physx::Gu::ConvexMesh::~ConvexMesh(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void non-virtual thunk tophysx::Gu::ConvexMesh::~ConvexMesh(physx::Gu::ConvexMesh *this)
{
  physx::Gu::ConvexMesh::~ConvexMesh((this - 16));
}

{
  physx::Gu::ConvexMesh::~ConvexMesh((this - 16));
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

uint64_t physx::Gu::ConvexMesh::exportExtraData(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(a2, 16);
  v4 = *(a1 + 68) & 0x7FFF;
  if (*(a1 + 68) < 0)
  {
    v5 = 4 * v4;
  }

  else
  {
    v5 = 0;
  }

  result = (*(*a2 + 16))(a2, *(a1 + 72), ((*(a1 + 104) & 0x7FFFFFFF) + 20 * *(a1 + 71) - *(a1 + 70) + 16 * *(a1 + 70) + 2 * v4 + v5 + 3) & 0xFFFFFFFC);
  if (*(a1 + 112))
  {
    (*(*a2 + 24))(a2, 16);
    result = (*(*a2 + 16))(a2, *(a1 + 112), 48);
    v7 = *(a1 + 112);
    if (*(v7 + 8))
    {
      (*(*a2 + 24))(a2, 16);
      result = (*(*a2 + 16))(a2, *(v7 + 8), 2 * *(v7 + 2));
    }

    if (*(v7 + 24))
    {
      (*(*a2 + 24))(a2, 16);
      v8 = *(v7 + 24);
      v9 = *(*a2 + 16);
      v10 = ((4 * *(v7 + 16) + 12) & 0xFFFFFFF0) + *(v7 + 20);

      return v9(a2, v8, v10);
    }
  }

  return result;
}

uint64_t physx::Gu::ConvexMesh::load(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v89 = *MEMORY[0x1E69E9840];
  v80 = 0;
  v79 = 0;
  v7 = physx::readHeader(0x43u, 0x56u, 0x58u, 0x4Du, &v80, &v79, a2);
  result = 0;
  if (v7)
  {
    if (v80 <= 0xC)
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/convex/GuConvexMesh.cpp", 318, "Loading convex mesh failed: Deprecated mesh cooking format.", v4, v5, v6, v75);
      return 0;
    }

    physx::readDword(v79, a2);
    v84 = 0;
    LOBYTE(v82) = 0;
    if (!physx::Gu::ReadHeader(67, 76, 72, 76, &v84, &v82, a2) || v84 <= 8 && !physx::Gu::ReadHeader(67, 86, 72, 76, &v84, &v82, a2))
    {
      return 0;
    }

    v9 = v82;
    physx::readFloatBuffer(&v85, 4u, v82, a2);
    v10 = v85;
    v11 = v86.i16[0];
    v12 = v85;
    *(a1 + 70) = v85;
    v13 = v11;
    *(a1 + 68) = v11;
    v14 = v86.u32[2];
    v15 = v86.u8[4];
    *(a1 + 71) = v86.i8[4];
    v16 = v11 & 0x7FFF;
    if (v13 < 0)
    {
      v17 = 4 * v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = (16 * v12 - v10 + 2 * v16 + v17 + v14 + 20 * v15 + 3) & 0xFFFFFFFC;
    if (*(a1 + 72))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(a1 + 104) = v14;
    if (v18)
    {
      v19 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v18, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/convex/GuConvexMesh.cpp", 199);
    }

    else
    {
      v19 = 0;
    }

    *(a1 + 72) = v19;
    v76 = v19;
    v77 = 5 * *(a1 + 71);
    v20 = (v19 + 20 * *(a1 + 71));
    v21 = 3 * *(a1 + 70);
    v22 = &v20[3 * *(a1 + 70)];
    v23 = *(a1 + 68);
    v24 = v23;
    v25 = v23 & 0x7FFF;
    v78 = v22 + 2 * v25;
    v26 = v78 + v21;
    v27 = 4 * v25;
    if (v24 >= 0)
    {
      v27 = 0;
    }

    v28 = v26 + v27;
    physx::readFloatBuffer(v20, 3 * *(a1 + 70), v9, a2);
    v29 = v82;
    if (v84 < 7)
    {
      LOWORD(v85) = 0;
      (**a2)(a2, &v85, 2);
    }

    (**a2)(a2, *(a1 + 72), 20 * *(a1 + 71));
    if ((v29 & 1) != 0 && *(a1 + 71))
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = (*(a1 + 72) + v30);
        *v32 = vrev32q_s8(*v32);
        v33 = v32[1].i8[0];
        v32[1].i8[0] = v32[1].i8[1];
        v32[1].i8[1] = v33;
        ++v31;
        v30 += 20;
      }

      while (v31 < *(a1 + 71));
    }

    (**a2)(a2, v28, v14);
    (**a2)(a2, v22, 2 * (*(a1 + 68) & 0x7FFFu));
    if (v84 > 5)
    {
      (**a2)(a2, v78, 3 * *(a1 + 70));
      v34 = &re::introspect_BOOL(BOOL)::info;
    }

    else
    {
      v34 = &re::introspect_BOOL(BOOL)::info;
      if (*(a1 + 70))
      {
        v35 = 0;
        LODWORD(v36) = 1;
        while (1)
        {
          v37 = *(a1 + 71);
          if (!*(a1 + 71))
          {
            break;
          }

          v38 = 0;
          v39 = 0;
          v40 = *(a1 + 72);
          while (1)
          {
            v41 = v40 + 20 * v38;
            v42 = *(v41 + 18);
            if (*(v41 + 18))
            {
              v43 = (v28 + *(v41 + 16));
              while (1)
              {
                v44 = *v43++;
                if (v35 == v44)
                {
                  break;
                }

                if (!--v42)
                {
                  goto LABEL_36;
                }
              }

              *(&v85 + v39++) = v38;
              if (v39 == 3)
              {
                break;
              }
            }

LABEL_36:
            if (++v38 == v37)
            {
              goto LABEL_41;
            }
          }

          v45 = v78 + 3 * v35;
          *v45 = v85;
          *(v45 + 1) = *(&v85 + 1);
          ++v35;
          v36 = *(a1 + 70);
          if (v35 >= v36)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v36)
        {
          v46 = 0;
          v47 = 4 * v77 + 4 * v21 + 2 * v25 + v76 + 1;
          do
          {
            *(v47 - 1) = -1;
            *(v47 + 1) = -1;
            ++v46;
            v47 += 3;
          }

          while (v46 < *(a1 + 70));
        }
      }
    }

LABEL_44:
    v48 = *(a1 + 68);
    if (v48 < 0)
    {
      if (v84 > 7)
      {
        physx::readWordBuffer(v26, 2 * (v48 & 0x7FFF), v82, a2);
      }

      else if ((v48 & 0x7FFF) != 0)
      {
        v49 = 0;
        do
        {
          *(v26 + 2 * v49++) = -1;
        }

        while (v49 < 2 * (*(a1 + 68) & 0x7FFF));
      }
    }

    v50 = v79;
    physx::readFloatBuffer(&v85, 8u, v79, a2);
    v51 = vextq_s8(v86, v86, 8uLL);
    v52 = vextq_s8(v86, v51, 0xCuLL);
    v53 = vsubq_f32(v86, v52);
    *&v52.i32[1] = v87;
    v54 = vaddq_f32(v86, v52);
    v54.i32[3] = v53.i32[3];
    v55 = vsub_f32(v87, vext_s8(*v86.i8, *v51.f32, 4uLL));
    v51.i64[0] = 0x3F0000003F000000;
    v51.i64[1] = 0x3F0000003F000000;
    *(a1 + 32) = vmulq_f32(v54, v51);
    *(a1 + 48) = vmul_f32(v55, 0x3F0000003F000000);
    v55.i32[0] = v88;
    *(a1 + 120) = v88;
    if (v55.f32[0] != -1.0)
    {
      physx::readFloatBuffer((a1 + 124), 9u, v50, a2);
      physx::readFloatBuffer((a1 + 56), 3u, v50, a2);
    }

    if (physx::readFloat(v50, a2) != -1.0)
    {
      if (*(a1 + 112))
      {
        physx::BigConvexData::~BigConvexData(*(a1 + 112));
        (*(*(v34[428] + 24) + 24))();
      }

      *(a1 + 112) = 0;
      v56 = v34[428];
      if ((*(*v56 + 40))(v56))
      {
        v57 = "static const char *physx::shdfnd::ReflectionAllocator<physx::BigConvexData>::getName() [T = physx::BigConvexData]";
      }

      else
      {
        v57 = "<allocation names disabled>";
      }

      v58 = (*(v56[3] + 16))(v56 + 3, 48, v57, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/convex/GuConvexMesh.cpp", 351);
      *v58 = 0;
      *(v58 + 8) = 0u;
      *(v58 + 24) = 0u;
      *(v58 + 40) = 0;
      *(a1 + 112) = v58;
      v81 = 0;
      if (physx::Gu::ReadHeader(83, 85, 80, 77, &v82, &v81, a2) && physx::Gu::ReadHeader(71, 65, 85, 83, &v82, &v81, a2))
      {
        v59 = v81;
        *v58 = physx::readDword(v81, a2);
        Dword = physx::readDword(v59, a2);
        *(v58 + 2) = Dword;
        v61 = 2 * Dword ? (*(*(v34[428] + 24) + 16))() : 0;
        *(v58 + 8) = v61;
        (**a2)(a2);
        v83 = 0;
        if (physx::Gu::ReadHeader(86, 65, 76, 69, &v84, &v83, a2))
        {
          v62 = v83;
          *(v58 + 16) = physx::readDword(v83, a2);
          v63 = physx::readDword(v62, a2);
          *(v58 + 20) = v63;
          if (*(v58 + 40))
          {
            (*(*(v34[428] + 24) + 24))();
            v63 = *(v58 + 20);
          }

          v64 = 4 * ((*(v58 + 16) + 3) & 0xFFFFFFFC);
          if (v63 + v64)
          {
            v65 = (*(*(v34[428] + 24) + 16))();
          }

          else
          {
            v65 = 0;
          }

          *(v58 + 24) = v65;
          *(v58 + 32) = v65 + v64;
          *(v58 + 40) = v65;
          v66 = physx::readDword(v62, a2);
          physx::Gu::ReadIndices(v66, *(v58 + 16), v65, a2, v62);
          v67 = *(v58 + 16);
          if (v67)
          {
            v68 = *(v58 + 24);
            v69 = -v67;
            v70 = v67 - 1;
            do
            {
              *(v68 + 4 * v70) = *(v65 + 2 * v70);
              --v70;
            }

            while (!__CFADD__(v69++, 1));
          }

          (**a2)(a2, *(v58 + 32), *(v58 + 20));
          v72 = *(v58 + 24);
          v72[1] = 0;
          v73 = *(v58 + 16);
          if (v73 >= 2)
          {
            v74 = v73 - 1;
            do
            {
              v72[3] = *v72 + v72[1];
              v72 += 2;
              --v74;
            }

            while (v74);
          }
        }
      }

      *(a1 + 80) = *(a1 + 112);
    }

    physx::readFloatBuffer((a1 + 88), 4u, v50, a2);
    return 1;
  }

  return result;
}

uint64_t physx::Gu::ConvexMesh::release(uint64_t this)
{
  if (atomic_fetch_add((this + 24), 0xFFFFFFFF) == 1)
  {
    return (*(*(this + 16) + 16))();
  }

  return this;
}

uint64_t physx::Gu::ConvexMesh::onRefCountZero(physx::Gu::ConvexMesh *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *(this + 34) & 0x7FFF;
  if (*(this + 34) < 0)
  {
    v11 = 4 * v10;
  }

  else
  {
    v11 = 0;
  }

  if ((*(this + 26) & 0x7FFFFFFF) + 20 * *(this + 71) - *(this + 70) + 16 * *(this + 70) + 2 * v10 + v11 + 3 < 4 || physx::GuMeshFactory::removeConvexMesh(*(this + 20), this))
  {
    v15 = *(this + 20);
    v16 = *this;
    if (*(this + 5))
    {
      result = (*(v16 + 32))(this);
    }

    else
    {
      result = (*(v16 + 24))(this);
    }

    v18 = *(v15 + 248);
    if (v18)
    {
      v19 = 0;
      v20 = 8 * v18;
      do
      {
        result = (*(**(*(v15 + 240) + v19) + 16))(*(*(v15 + 240) + v19), this, 2);
        v19 += 8;
      }

      while (v20 != v19);
    }
  }

  else
  {
    v21 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v21, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/convex/GuConvexMesh.cpp", 396, "Gu::ConvexMesh::release: double deletion detected!", v12, v13, v14, a9);
  }

  return result;
}

float physx::Gu::ConvexMesh::getMassInformation(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  *a2 = *(a1 + 120);
  *a3 = *(a1 + 124);
  *(a3 + 8) = *(a1 + 132);
  *(a3 + 16) = *(a1 + 140);
  *(a3 + 24) = *(a1 + 148);
  *(a3 + 32) = *(a1 + 156);
  *a4 = *(a1 + 56);
  result = *(a1 + 64);
  *(a4 + 8) = result;
  return result;
}

float32x2_t physx::Gu::ConvexMesh::getLocalBounds@<D0>(physx::Gu::ConvexMesh *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 2);
  v3 = vextq_s8(v2, v2, 8uLL);
  v4 = vextq_s8(v2, v3, 0xCuLL);
  v5 = vaddq_f32(v2, v4);
  *(v4.i64 + 4) = *(this + 6);
  v6 = vsubq_f32(v2, v4);
  v6.i32[3] = v5.i32[3];
  result = vadd_f32(vext_s8(*v2.f32, *v3.i8, 4uLL), *(this + 48));
  *a2 = v6;
  *(a2 + 16) = result;
  return result;
}

uint64_t physx::Gu::ConvexMesh::getIndexBuffer(physx::Gu::ConvexMesh *this)
{
  v1 = *(this + 34);
  v2 = v1;
  v3 = v1 & 0x7FFF;
  v4 = *(this + 9) + 20 * *(this + 71) + 12 * *(this + 70) + 2 * v3;
  v5 = 4 * v3;
  if (v2 >= 0)
  {
    v5 = 0;
  }

  return v4 + 3 * *(this + 70) + v5;
}

uint64_t anonymous namespace::SphereMeshContactGeneration::processTriangle(uint64_t result, __int32 a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, uint64_t *a6)
{
  v6 = *(result + 32);
  v7 = a4[1].f32[0];
  v8 = a3[1].f32[0];
  v9 = v7 - v8;
  v10 = a5[1].f32[0];
  v11 = v10 - v8;
  v12 = *a4;
  v13 = *a3;
  v14 = vsub_f32(*a4, *a3);
  v15 = *a5;
  v16 = vsub_f32(*a5, *a3);
  v17 = *v6;
  v18 = vsub_f32(*v6, *a3);
  v19 = v6[1].f32[0];
  v20 = (vmuls_lane_f32(v14.f32[1], v18, 1) + (v14.f32[0] * v18.f32[0])) + ((v7 - v8) * (v19 - v8));
  v21 = (vmuls_lane_f32(v16.f32[1], v18, 1) + (v16.f32[0] * v18.f32[0])) + ((v10 - v8) * (v19 - v8));
  if (v20 > 0.0 || v21 > 0.0)
  {
    v24 = vsub_f32(v17, v12);
    v25 = (vmuls_lane_f32(v14.f32[1], v24, 1) + (v14.f32[0] * v24.f32[0])) + (v9 * (v19 - v7));
    v26 = (vmuls_lane_f32(v16.f32[1], v24, 1) + (v16.f32[0] * v24.f32[0])) + (v11 * (v19 - v7));
    if (v25 < 0.0 || v26 > v25)
    {
      v28 = (v20 * v26) - (v25 * v21);
      if (v25 > 0.0 || v20 < 0.0 || v28 > 0.0)
      {
        v72 = vsub_f32(v17, v15);
        v73 = (vmuls_lane_f32(v14.f32[1], v72, 1) + (v14.f32[0] * v72.f32[0])) + (v9 * (v19 - v10));
        v74 = (vmuls_lane_f32(v16.f32[1], v72, 1) + (v16.f32[0] * v72.f32[0])) + (v11 * (v19 - v10));
        if (v74 < 0.0 || v73 > v74)
        {
          v76 = (v73 * v21) - (v20 * v74);
          if (v74 > 0.0 || v76 > 0.0 || v21 < 0.0)
          {
            v81 = (v25 * v74) - (v73 * v26);
            if (v81 <= 0.0 && (v82 = v26 - v25, v82 >= 0.0) && (v73 - v74) >= 0.0)
            {
              v22 = 0;
              v87 = v82 / (v82 + (v73 - v74));
              v12 = vadd_f32(v12, vmul_n_f32(vsub_f32(v15, v12), v87));
              v7 = v7 + ((v10 - v7) * v87);
              v23 = 4;
            }

            else
            {
              v83 = 1.0 / (v28 + (v81 + v76));
              v84 = v76 * v83;
              v85 = v28 * v83;
              v86 = v8 + (v9 * v84);
              v12 = vadd_f32(vmul_n_f32(v16, v85), vadd_f32(v13, vmul_n_f32(v14, v84)));
              v7 = (v11 * v85) + v86;
              v23 = 6;
              v22 = 1;
            }
          }

          else
          {
            v22 = 0;
            v77 = v21 / (v21 - v74);
            v12 = vadd_f32(v13, vmul_n_f32(v16, v77));
            v7 = v8 + (v11 * v77);
            v23 = 5;
          }
        }

        else
        {
          v22 = 0;
          v23 = 2;
          v7 = a5[1].f32[0];
          v12 = *a5;
        }
      }

      else
      {
        v22 = 0;
        v29 = v20 / (v20 - v25);
        v12 = vadd_f32(v13, vmul_n_f32(v14, v29));
        v7 = v8 + (v9 * v29);
        v23 = 3;
      }
    }

    else
    {
      v22 = 0;
      v23 = 1;
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v7 = a3[1].f32[0];
    v12 = *a3;
  }

  v30 = vsub_f32(v12, v17);
  v31 = v7 - v19;
  v32 = (COERCE_FLOAT(vmul_f32(v30, v30).i32[1]) + (v30.f32[0] * v30.f32[0])) + (v31 * v31);
  if (v32 >= *(result + 40))
  {
    return result;
  }

  v33 = vdup_lane_s32(v14, 0);
  v33.f32[0] = v9;
  v34.i32[0] = vdup_lane_s32(v16, 1).u32[0];
  v34.f32[1] = v11;
  v35 = vmla_f32(vmul_f32(v34, vneg_f32(v33)), vext_s8(v34, v16, 4uLL), vext_s8(v14, v33, 4uLL));
  v36 = (v14.f32[0] * v16.f32[1]) - (v14.f32[1] * v16.f32[0]);
  v37.f32[0] = v19;
  v37.i32[1] = a3[1].i32[0];
  v38 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(vzip2_s32(v17, v13), v35, 1), vzip1_s32(v17, v13), v35.f32[0]), v37, v36);
  if (vcgt_f32(vdup_lane_s32(v38, 1), v38).u8[0])
  {
    return result;
  }

  if (v32 <= 0.0001)
  {
    if (v22)
    {
      v42 = (COERCE_FLOAT(vmul_f32(v35, v35).i32[1]) + (v35.f32[0] * v35.f32[0])) + (v36 * v36);
      v43 = 0;
      v39 = 0.0;
      v44 = 0.0;
      if (v42 > 0.0)
      {
        v45 = 1.0 / sqrtf(v42);
        v43 = vmul_n_f32(v35, v45);
        v44 = v36 * v45;
      }

      v40 = vneg_f32(v43);
      v41 = -v44;
      goto LABEL_23;
    }
  }

  else
  {
    if (v22)
    {
      v39 = sqrtf(v32);
      v40 = vmul_n_f32(v30, 1.0 / v39);
      v41 = v31 * (1.0 / v39);
LABEL_23:
      v46 = *(result + 24);
      v47 = *(v46 + 4096);
      if (v47 <= 0x3F)
      {
        v48 = *(*result + 4);
        v49 = v39 - v48;
        v50 = *(result + 16);
        v51 = (v19 + (v41 * v48)) + (v19 + (v41 * v48));
        v17.f32[0] = (v17.f32[0] + (v48 * v40.f32[0])) + (v17.f32[0] + (v48 * v40.f32[0]));
        v52 = v50[1];
        v53 = vmuls_lane_f32(v48, v40, 1);
        v54 = (v17.f32[1] + v53) + (v17.f32[1] + v53);
        v55 = v50[2];
        v56 = v50[3];
        v57 = ((v54 * v52) + (*v50 * v17.f32[0])) + (v55 * v51);
        v58 = (v56 * v56) + -0.5;
        v59 = v50[6] + (((v56 * ((*v50 * v54) - (v52 * v17.f32[0]))) + (v51 * v58)) + (v55 * v57));
        v60 = v50[5] + (((((v55 * v17.f32[0]) - (*v50 * v51)) * v56) + (v54 * v58)) + (v52 * v57));
        v61 = (((((v52 * v51) - (v55 * v54)) * v56) + (v17.f32[0] * v58)) + (*v50 * v57)) + v50[4];
        v40.f32[0] = v40.f32[0] + v40.f32[0];
        v62 = (((v40.f32[1] + v40.f32[1]) * v52) + (*v50 * v40.f32[0])) + (v55 * (v41 + v41));
        v63 = (v56 * ((*v50 * (v40.f32[1] + v40.f32[1])) - (v52 * v40.f32[0]))) + ((v41 + v41) * v58);
        v64 = -(((((v55 * v40.f32[0]) - (*v50 * (v41 + v41))) * v56) + ((v40.f32[1] + v40.f32[1]) * v58)) + (v52 * v62));
        v65 = -(((((v52 * (v41 + v41)) - (v55 * (v40.f32[1] + v40.f32[1]))) * v56) + (v40.f32[0] * v58)) + (*v50 * v62));
        *(v46 + 4096) = v47 + 1;
        v66 = v46 + (v47 << 6);
        *v66 = v65;
        *(v66 + 4) = v64;
        *(v66 + 16) = v61;
        *(v66 + 20) = v60;
        *(v66 + 24) = v59;
        *(v66 + 8) = -(v63 + (v55 * v62));
        *(v66 + 12) = v49;
        *(v66 + 52) = a2;
      }

      v67 = *(result + 2608);
      if (v67 <= 0x3F)
      {
        v68 = *(a6 + 2);
        v69 = v67 + 1;
        v70 = result + 12 * v67;
        v71 = *a6;
        *(result + 2608) = v69;
        *(v70 + 2612) = v71;
        *(v70 + 2620) = v68;
      }

      return result;
    }

    v36 = v31;
    v35 = v30;
  }

  v78 = *(result + 44);
  if (v78 <= 0x3F)
  {
    *(result + 44) = v78 + 1;
    v79 = result + 8 * v78;
    *(v79 + 2096) = v32;
    *(v79 + 2100) = v78;
    v80 = (result + 32 * v78);
    v80[6] = v35;
    v80[7].f32[0] = v36;
    v80[8].i32[1] = *a6;
    v80[9].i32[0] = *(a6 + 1);
    v80[9].i32[1] = *(a6 + 2);
    v80[7].i32[1] = v23;
    v80[8].i32[0] = a2;
  }

  return result;
}

uint64_t anonymous namespace::SphereMeshContactGenerationCallback_Scale::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t *a7)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 3416);
  v8 = *(v7 + 72);
  v9 = *(v7 + 8);
  v10 = a3[1];
  v11 = *(v7 + 20);
  v12 = a3[2];
  v13 = *(v7 + 32);
  v14 = ((*a3 * v9) + (v10 * v11)) + (v12 * v13);
  v15 = *v7;
  v16 = *(v7 + 12);
  v17 = *(v7 + 24);
  v43 = vadd_f32(vadd_f32(vmul_n_f32(*v7, *a3), vmul_n_f32(v16, v10)), vmul_n_f32(v17, v12));
  v44 = v14;
  v18 = a4[1];
  v19 = (*a4 * v15.f32[0]) + (v18 * v16.f32[0]);
  v20 = vmuls_lane_f32(*a4, v15, 1) + vmuls_lane_f32(v18, v16, 1);
  v21 = (v9 * *a4) + (v11 * v18);
  v22 = a4[2];
  v23 = v19 + (v22 * v17.f32[0]);
  v24 = v20 + vmuls_lane_f32(v22, v17, 1);
  v25 = v21 + (v13 * v22);
  v26 = v8 == 0;
  v27 = 3;
  if (v26)
  {
    v28 = 3;
  }

  else
  {
    v28 = 6;
  }

  v43.f32[v28] = v23;
  if (v26)
  {
    v29 = 4;
  }

  else
  {
    v29 = 7;
  }

  v43.f32[v29] = v24;
  if (v26)
  {
    v30 = 5;
  }

  else
  {
    v30 = 8;
  }

  v43.f32[v30] = v25;
  v31 = a5[1];
  v32 = *a5 * v15.f32[0];
  v33 = v31 * v16.f32[0];
  v34 = vmuls_lane_f32(*a5, v15, 1) + vmuls_lane_f32(v31, v16, 1);
  v35 = (v9 * *a5) + (v11 * v31);
  v36 = a5[2];
  v37 = v36 * v17.f32[0];
  v38 = v34 + vmuls_lane_f32(v36, v17, 1);
  v39 = v35 + (v13 * v36);
  if (v26)
  {
    v27 = 6;
  }

  v43.f32[v27] = (v32 + v33) + v37;
  if (v26)
  {
    v40 = 7;
  }

  else
  {
    v40 = 4;
  }

  v43.f32[v40] = v38;
  if (v26)
  {
    v41 = 8;
  }

  else
  {
    v41 = 5;
  }

  v43.f32[v41] = v39;
  return 1;
}

uint64_t anonymous namespace::SphereHeightfieldContactGenerationCallback::onEvent(_anonymous_namespace_::SphereHeightfieldContactGenerationCallback *this, int a2, unsigned int *a3)
{
  *&v11[3] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
    do
    {
      --v4;
      v6 = *a3++;
      physx::Gu::HeightFieldUtil::getTriangle(*(this + 425), *(this + 3), &v8, v11, 0, v6, 0, 0);
    }

    while (v4);
  }

  return 1;
}

uint64_t validateEdge(int a1, int a2, int *a3, int a4)
{
  if (a4)
  {
    while (1)
    {
      v4 = *a3;
      v5 = a3[1];
      v6 = a3[2];
      if (*a3 == a1)
      {
        break;
      }

      if (v5 == a1)
      {
        v7 = v4 == a2;
LABEL_6:
        if (v7 || v6 == a2)
        {
          return 0;
        }

        goto LABEL_10;
      }

      if (v6 == a1 && (v4 == a2 || v5 == a2))
      {
        return 0;
      }

LABEL_10:
      a3 += 3;
      if (!--a4)
      {
        return 1;
      }
    }

    v7 = v5 == a2;
    goto LABEL_6;
  }

  return 1;
}

float physx::Gu::computeHullOBB(float *a1, uint64_t a2, float *a3, float *a4, uint64_t a5, char a6, double a7)
{
  v7 = a4[1];
  v8 = a3[1];
  v9 = a4[2];
  v10 = a4[3];
  v11 = a3[2];
  v12 = a3[3];
  v13 = ((v7 * v8) + (*a4 * *a3)) + (v9 * v11);
  v15 = a4[4];
  v14 = a4[5];
  v16 = ((v8 * v15) + (v10 * *a3)) + (v14 * v11);
  v17 = a4[6];
  v18 = a4[7];
  v19 = a4[8];
  v20 = ((v8 * v18) + (v17 * *a3)) + (v19 * v11);
  v21 = a3[4];
  v22 = a3[5];
  v23 = ((v7 * v21) + (*a4 * v12)) + (v9 * v22);
  v24 = ((v15 * v21) + (v10 * v12)) + (v14 * v22);
  v25 = ((v18 * v21) + (v17 * v12)) + (v19 * v22);
  v26 = a3[6];
  v27 = a3[7];
  v28 = a3[8];
  v29 = ((v7 * v27) + (*a4 * v26)) + (v9 * v28);
  v30 = ((v15 * v27) + (v10 * v26)) + (v14 * v28);
  v31 = ((v18 * v27) + (v17 * v26)) + (v19 * v28);
  v32 = a3[9] - a4[9];
  v33 = a3[10] - a4[10];
  v34 = a3[11] - a4[11];
  v35 = ((v7 * v33) + (*a4 * v32)) + (v9 * v34);
  v36 = ((v15 * v33) + (v10 * v32)) + (v14 * v34);
  v37 = ((*(a2 + 20) - *(a2 + 8)) * 0.5) + *&a7;
  *(a1 + 6) = vadd_f32(vmul_f32(vsub_f32(*(a2 + 12), *a2), 0x3F0000003F000000), vdup_lane_s32(*&a7, 0));
  a1[14] = v37;
  v38 = (*a2 + *(a2 + 12)) * 0.5;
  v39 = (*(a2 + 4) + *(a2 + 16)) * 0.5;
  v40 = (*(a2 + 8) + *(a2 + 20)) * 0.5;
  a1[9] = v35 + (((v13 * v38) + (v23 * v39)) + (v29 * v40));
  v41 = v36 + (((v16 * v38) + (v24 * v39)) + (v30 * v40));
  result = (((v18 * v33) + (v17 * v32)) + (v19 * v34)) + (((v20 * v38) + (v25 * v39)) + (v31 * v40));
  a1[10] = v41;
  a1[11] = result;
  *a1 = v13;
  a1[1] = v16;
  a1[2] = v20;
  a1[3] = v23;
  a1[4] = v24;
  a1[5] = v25;
  a1[6] = v29;
  a1[7] = v30;
  a1[8] = v31;
  if ((a6 & 1) == 0)
  {
    return physx::Cm::FastVertex2ShapeScaling::transformQueryBounds(a5, a1 + 9, a1 + 12, a1);
  }

  return result;
}

float physx::Gu::computeVertexSpaceOBB(uint64_t a1, uint64_t a2, float *a3, float *a4, int8x16_t a5, int32x4_t a6)
{
  v7 = 1.0 / *a4;
  v8 = 1.0 / a4[1];
  v9 = a4[3];
  v10 = 1.0 / a4[2];
  v11 = a3[4] * -2.0;
  v12 = a3[5] * -2.0;
  *a5.i32 = a3[6] * -2.0;
  v14 = a3[2];
  v13 = a3[3];
  v15 = (v13 * v13) + -0.5;
  v16 = a3[1];
  v17 = ((v12 * v16) + (*a3 * v11)) + (v14 * *a5.i32);
  v18 = ((v11 * v15) - (((v16 * *a5.i32) - (v14 * v12)) * v13)) + (*a3 * v17);
  *a6.i32 = ((v12 * v15) - (((v14 * v11) - (*a3 * *a5.i32)) * v13)) + (v16 * v17);
  v92 = ((*a5.i32 * v15) - (((*a3 * v12) - (v16 * v11)) * v13)) + (v14 * v17);
  v19 = -*a3 - *a3;
  v20 = -v16 - v16;
  v21 = -v14 - v14;
  v22 = -(v16 * v20);
  v23 = -(v14 * v21);
  v24 = -(v16 * v19);
  v25 = -(v14 * v19);
  v26 = v13 * v19;
  v27 = -(v14 * v20);
  v28 = v13 * v20;
  v29 = v13 * v21;
  v30 = (1.0 - v22) - v23;
  v31 = v24 + v29;
  v32 = v25 - v28;
  v33 = v24 - v29;
  v34 = (*a3 * v19) + 1.0;
  v35 = v34 - v23;
  v36 = v26 + v27;
  v37 = v25 + v28;
  v38 = v27 - v26;
  v39 = v34 - v22;
  v40 = a4[4];
  v41 = a4[5];
  v42 = v40 + v40;
  v43 = v41 + v41;
  v44 = v40 * (v40 + v40);
  v45 = v41 * (v41 + v41);
  v46 = (v9 + v9) * v40;
  v47 = (v9 + v9) * v41;
  v48 = a4[6];
  v49 = (v9 + v9) * v48;
  v50 = v42 * v41;
  v51 = v42 * v48;
  v52 = v43 * v48;
  v53 = (1.0 - v44) - v45;
  v54 = v46 + v52;
  v55 = v47 - v51;
  v56 = v46 - v52;
  v57 = 1.0 - (v9 * (v9 + v9));
  v58 = v57 - v45;
  v59 = v50 + v49;
  v60 = v47 + v51;
  v61 = v50 - v49;
  v62 = v57 - v44;
  v63 = v7 * v53;
  v64 = v7 * v56;
  v65 = v7 * v60;
  v66 = v8 * v54;
  v67 = v8 * v58;
  v68 = v8 * v61;
  *a5.i32 = v10 * v55;
  v69 = v53 * (v7 * v53);
  v70 = (v53 * (v7 * v56)) + (v54 * v67);
  v71 = v10 * v59;
  v72 = v10 * v62;
  v73 = (v53 * v65) + (v54 * v68);
  v74 = (v55 * *a5.i32) + (v69 + (v54 * v66));
  v75 = (v55 * v71) + v70;
  v76 = (v55 * v72) + v73;
  v77 = (v56 * v63) + (v58 * v66);
  v78 = (v56 * v64) + (v58 * v67);
  v79 = (v56 * v65) + (v58 * v68);
  v80 = (v59 * *a5.i32) + v77;
  v81 = (v59 * v71) + v78;
  v82 = (v59 * v72) + v79;
  v83 = v60 * v63;
  v84 = v61 * v66;
  v85 = (v60 * v64) + (v61 * v67);
  v86 = (v60 * v65) + (v61 * v68);
  v87 = (v62 * *a5.i32) + (v83 + v84);
  v88 = (v62 * v71) + v85;
  v89 = (v62 * v72) + v86;
  v93[0] = (v87 * v32) + ((v74 * v30) + (v80 * v31));
  v93[1] = (v88 * v32) + ((v75 * v30) + (v81 * v31));
  v93[2] = (v89 * v32) + ((v76 * v30) + (v82 * v31));
  v93[3] = (v87 * v36) + ((v74 * v33) + (v80 * v35));
  v93[4] = (v88 * v36) + ((v75 * v33) + (v81 * v35));
  v93[5] = (v89 * v36) + ((v76 * v33) + (v82 * v35));
  v93[6] = (v87 * v39) + ((v74 * v37) + (v80 * v38));
  v93[7] = (v88 * v39) + ((v75 * v37) + (v81 * v38));
  v93[8] = (v89 * v39) + ((v76 * v37) + (v82 * v38));
  v93[9] = (v87 * v92) + ((v80 * *a6.i32) + (v74 * v18));
  *a5.i32 = (v88 * v92) + ((v81 * *a6.i32) + (v75 * v18));
  *a6.i32 = (v89 * v92) + ((v82 * *a6.i32) + (v76 * v18));
  v93[10] = *a5.i32;
  v93[11] = *a6.i32;
  physx::transform(v93, a2, v94, a5, a6);
  v90 = v94[1];
  *a1 = v94[0];
  *(a1 + 16) = v90;
  *(a1 + 32) = v94[2];
  *(a1 + 48) = v95;
  result = v96;
  *(a1 + 56) = v96;
  return result;
}

float physx::transform@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int32x4_t a5@<Q1>)
{
  a5.i64[0] = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 4);
  v13 = *a1;
  a4.i32[0] = *(a1 + 8);
  v14 = *(a2 + 48);
  a5.i32[1] = *(a2 + 12);
  *a5.i8 = vmul_f32(v14, *a5.i8);
  v15 = vzip1q_s32(a5, a5);
  v15.i32[2] = a5.i32[0];
  v12.i32[1] = *(a2 + 16);
  *v5.i8 = vmul_f32(v14, v12);
  v16 = vzip1q_s32(v5, v5);
  v16.i32[2] = v5.i32[0];
  v11.i32[1] = *(a2 + 20);
  v7.i64[0] = *(a1 + 12);
  *v6.i8 = vmul_f32(v14, v11);
  v17 = vzip1q_s32(v6, v6);
  v17.i32[2] = v6.i32[0];
  v18.i64[0] = *a1;
  v18.i32[2] = a4.i32[0];
  v18.i32[3] = *a1;
  v19 = vmulq_f32(v18, v15);
  v8.i32[0] = *(a2 + 56);
  v20 = *(a2 + 24);
  v18.f32[0] = *v8.i32 * *(a2 + 28);
  *v15.f32 = vrev64_s32(*a1);
  v15.i64[1] = __PAIR64__(v15.u32[0], a4.u32[0]);
  *v21.f32 = vrev64_s32(*v7.f32);
  v22.i32[0] = vdup_lane_s32(*v5.i8, 1).u32[0];
  v22.f32[1] = v18.f32[0];
  v22.i64[1] = v22.i64[0];
  v23.i32[0] = vdup_lane_s32(*v6.i8, 1).u32[0];
  v23.f32[1] = *v8.i32 * *(a2 + 32);
  v23.i64[1] = v23.i64[0];
  v24 = *(a2 + 36);
  v25.i64[0] = vzip1q_s32(v8, v7).u64[0];
  v25.i32[2] = HIDWORD(*a1);
  v13.i32[1] = v7.i32[1];
  *v9.i8 = vmul_f32(v13, v24);
  v26 = *(a1 + 40);
  v27 = *(a1 + 20);
  v7.i64[1] = __PAIR64__(v7.u32[0], v27.u32[0]);
  v28 = vaddq_f32(v19, vmulq_f32(v7, v16));
  v29 = vextq_s8(v27, a4, 4uLL);
  v29.i32[3] = v29.i32[0];
  v19.f32[0] = vmuls_lane_f32(v23.f32[1], v27, 3);
  v18.i32[1] = *(a2 + 44);
  v19.i32[1] = *(a1 + 36);
  v25.i32[3] = v27.i32[0];
  v30 = vmulq_f32(v29, v17);
  HIDWORD(v20) = v24.i32[1];
  v29.i64[0] = v20;
  *&v29.u32[2] = v24;
  v31 = vaddq_f32(v28, v30);
  v32 = vmulq_f32(v25, v29);
  *v33.f32 = vzip1_s32(vdup_lane_s32(*a5.i8, 1), *v32.f32);
  v33.i64[1] = v33.i64[0];
  v21.i64[1] = __PAIR64__(v21.u32[0], v27.u32[0]);
  v34 = vaddq_f32(vmulq_f32(v15, v33), vmulq_f32(v21, v22));
  v35 = vzip2q_s32(v27, vzip1q_s32(v27, v27));
  v35.i32[3] = v35.i32[0];
  v36 = vaddq_f32(v34, vmulq_f32(v35, v23));
  *a3 = v31;
  *(a3 + 16) = vuzp1q_s32(v36, vrev64q_s32(v36));
  v37 = vextq_s8(a4, v9, 0xCuLL);
  v37.f32[3] = *a4.i32 * v24.f32[0];
  v38 = vaddq_f32(v37, v32);
  v38.i32[0] = vmulq_f32(a4, v32).u32[0];
  v19.i64[1] = v26;
  *(a3 + 32) = vaddq_f32(v19, vaddq_f32(v38, vmulq_f32(v27, vzip1q_s32(v18, vdupq_lane_s32(*v18.f32, 1)))));
  physx::shdfnd::optimizeBoundingBox(a3, &v40);
  *(a3 + 48) = v40;
  result = v41;
  *(a3 + 56) = v41;
  return result;
}