uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t *a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, double a9, double a10, int8x8_t a11, float32x4_t a12, uint64_t a13)
{
  v13 = a7;
  v14 = a6;
  v366 = *MEMORY[0x1E69E9840];
  v17 = a1->i64[1];
  v18 = &v17[1].f32[1];
  v19 = vld1_dup_f32(v18);
  v20 = *(a2 + 8);
  v21 = &v20[1].f32[1];
  v22 = vld1_dup_f32(v21);
  v23 = vmin_f32(v19, v22);
  v24 = vdup_n_s32(0x3DCCCCCDu);
  v25 = vmul_f32(v23, v24);
  v23.i32[0] = v17[1].i32[0];
  v24.i32[0] = v20[1].i32[0];
  a11.i32[0] = -v17[2].u8[0];
  v26 = vand_s8(a11, v23);
  v27 = vdup_lane_s32(v26, 0);
  v26.i32[0] = -v20[2].u8[0];
  v28 = vdup_lane_s32(vand_s8(v26, v24), 0);
  v336 = v27;
  v337 = v28.f32[0];
  v29 = vadd_f32(v27, v28);
  v30 = *a4;
  v349 = 0uLL;
  v348 = 0;
  v31 = *a8;
  __asm { FMOV            V9.2S, #1.0 }

  v340 = v29;
  if (!*a8)
  {
    v65 = vmulq_f32(*a3, *a3);
    v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
    v57 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v65.f32, *v65.f32)), 0)), *a3, xmmword_1E3047670);
    v349 = v57;
    v66 = vmulq_f32(v57, v57);
    v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
    v67 = vpadd_f32(*v66.f32, *v66.f32);
    v68 = vrsqrte_f32(v67);
    v69 = 4;
    do
    {
      v68 = vmul_f32(v68, vrsqrts_f32(vmul_f32(v68, v68), v67));
      --v69;
    }

    while (v69);
    v70 = vbsl_s8(vdup_lane_s32(vceqz_f32(v67), 0), v67, vmul_f32(v67, v68));
    v71 = vrecpe_f32(v70);
    v72 = 4;
    do
    {
      *a12.f32 = vrecps_f32(v70, v71);
      v71 = vmul_f32(v71, *a12.f32);
      --v72;
    }

    while (v72);
    v73 = vmulq_n_f32(v57, v71.f32[0]);
    v73.i32[3] = 0;
    v343 = v73;
    v74 = vneg_f32(0x80000000800000);
    v75.i64[0] = -1;
    v75.i64[1] = -1;
    v76 = 0uLL;
    goto LABEL_52;
  }

  v37 = 0;
  v38 = a1[1].i64[0];
  v39 = v17[3];
  v40 = v20[10].i64[0];
  v41 = v20[3];
  a12 = v20[4];
  v42 = v20[5];
  v43 = vnegq_f32(v39);
  v43.i32[3] = 0;
  v44 = -1;
  do
  {
    v45 = a6[v37];
    *(&v354 + v37) = v45;
    v46 = a7[v37];
    *(&v351 + v37) = v46;
    v47 = vbslq_s8(physx::boxVertexTable[v45], v39, v43);
    v48 = vmulq_n_f32(*v38, v47.f32[0]);
    v48.i32[3] = 0;
    v49 = vmulq_lane_f32(v38[1], *v47.f32, 1);
    v49.i32[3] = 0;
    v50 = vmulq_laneq_f32(v38[2], v47, 2);
    v50.i32[3] = 0;
    v51 = vaddq_f32(v38[3], vaddq_f32(v50, vaddq_f32(v48, v49)));
    v52 = *(v40 + 12 * v46);
    v53 = vmulq_n_f32(v41, v52.f32[0]);
    v53.i32[3] = 0;
    v54 = vmulq_lane_f32(a12, *v52.f32, 1);
    v54.i32[3] = 0;
    v55 = vmulq_laneq_f32(v42, v52, 2);
    v55.i32[3] = 0;
    v56 = vaddq_f32(v55, vaddq_f32(v53, v54));
    v57 = vsubq_f32(v51, v56);
    *(&v360 + v37) = v51;
    *(&v357 + v37) = v56;
    *(&v363 + v37) = v57;
    ++v44;
    ++v37;
  }

  while (v31 != v37);
  v348 = v31;
  if (v44 == 3)
  {
    v344 = v30;
    physx::Gu::closestPtPointTetrahedron(&v363, &v360, &v357, &v354, &v351, &v348);
    LODWORD(v30) = v344;
    v29.i32[0] = v340.i32[0];
    goto LABEL_47;
  }

  if (v44 != 2)
  {
    if (v44 != 1)
    {
      goto LABEL_47;
    }

    v57 = v363;
    v58 = vsubq_f32(v364, v363);
    v59 = vmulq_f32(v58, v58);
    v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
    v60 = vpadd_f32(*v59.f32, *v59.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v60), 0), *v363.f32).u32[0] != -1)
    {
      v61 = vnegq_f32(v363);
      v61.i32[3] = 0;
      v62 = vmulq_f32(v61, v58);
      a12 = vpaddq_f32(v62, v62);
      *a12.f32 = vpadd_f32(*a12.f32, *a12.f32);
      v63 = vrecpe_f32(v60);
      v64 = 4;
      do
      {
        v63 = vmul_f32(v63, vrecps_f32(v60, v63));
        --v64;
      }

      while (v64);
      v57 = vmlaq_n_f32(v363, v58, vmax_f32(vmin_f32(vmul_f32(*a12.f32, v63), _D9), 0).f32[0]);
LABEL_31:
      v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v348 = 1;
    goto LABEL_47;
  }

  v348 = 3;
  v57 = v363;
  a12 = vsubq_f32(v364, v363);
  v77 = vsubq_f32(v365[0], v363);
  v79 = vmls_f32(vmul_f32(*a12.f32, *&vextq_s8(v77, v77, 4uLL)), *&vextq_s8(a12, a12, 4uLL), *v77.f32);
  *v78.f32 = vext_s8(v79, vmls_f32(vmul_f32(*&vextq_s8(a12, a12, 8uLL), *v77.f32), *a12.f32, *&vextq_s8(v77, v77, 8uLL)), 4uLL);
  v79.i32[1] = 0;
  v80 = vpadd_f32(vmul_f32(*v78.f32, *v78.f32), vmul_f32(v79.u32[0], v79.u32[0]));
  v81 = vpadd_f32(v80, v80);
  if (v81.f32[0] <= 0.00000011921)
  {
    v348 = 2;
    v120 = vmulq_f32(a12, a12);
    v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
    v121 = vpadd_f32(*v120.f32, *v120.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v121), 0), *v363.f32).u32[0] != -1)
    {
      v122 = vnegq_f32(v363);
      v122.i32[3] = 0;
      v123 = vmulq_f32(v122, a12);
      v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
      v124 = vpadd_f32(*v123.f32, *v123.f32);
      v125 = vrecpe_f32(v121);
      v126 = 4;
      do
      {
        v125 = vmul_f32(v125, vrecps_f32(v121, v125));
        --v126;
      }

      while (v126);
      v57 = vmlaq_n_f32(v363, a12, vmax_f32(vmin_f32(vmul_f32(v124, v125), _D9), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v78.u32[2] = v79;
  v82 = vextq_s8(v364, v364, 8uLL).u64[0];
  v83 = vextq_s8(v365[0], v365[0], 8uLL).u64[0];
  v84 = vextq_s8(v365[0], v365[0], 4uLL).u64[0];
  v85 = vextq_s8(v364, v364, 4uLL).u64[0];
  v86 = vmls_f32(vmul_f32(*v364.f32, v84), v85, *v365[0].f32);
  *v87.f32 = vext_s8(v86, vmls_f32(vmul_f32(v82, *v365[0].f32), *v364.f32, v83), 4uLL);
  v87.i64[1] = v86.u32[0];
  v88 = vextq_s8(v363, v363, 8uLL).u64[0];
  v89 = vextq_s8(v363, v363, 4uLL).u64[0];
  v90 = vmls_f32(vmul_f32(v89, *v365[0].f32), v84, *v363.f32);
  *v91.f32 = vext_s8(v90, vmls_f32(vmul_f32(*v363.f32, v83), *v365[0].f32, v88), 4uLL);
  v91.i64[1] = v90.u32[0];
  v92 = vmls_f32(vmul_f32(*v363.f32, v85), v89, *v364.f32);
  *v93.f32 = vext_s8(v92, vmls_f32(vmul_f32(v88, *v364.f32), *v363.f32, v82), 4uLL);
  v93.i64[1] = v92.u32[0];
  v94 = vmulq_f32(v87, v78);
  v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
  v95 = vpadd_f32(*v94.f32, *v94.f32);
  v96 = vmulq_f32(v91, v78);
  v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
  v97 = vpadd_f32(*v96.f32, *v96.f32);
  v98 = vmulq_f32(v93, v78);
  v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
  v99 = vpadd_f32(*v98.f32, *v98.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v97), vcgez_f32(v95)), vcgez_f32(v99)), 0), *v363.f32).u32[0] == -1)
  {
    v127 = vmulq_f32(v363, v78);
    v128 = vextq_s8(v127, v127, 8uLL).u64[0];
    v129 = vrecpe_f32(v81);
    v130 = 4;
    do
    {
      v129 = vmul_f32(v129, vrecps_f32(v81, v129));
      --v130;
    }

    while (v130);
    v131 = vpadd_f32(*v127.i8, v128);
    v57 = vmulq_n_f32(v78, vmul_f32(v129, vpadd_f32(v131, v131)).f32[0]);
    v57.i32[3] = 0;
    goto LABEL_47;
  }

  v100 = vnegq_f32(v363);
  v100.i32[3] = 0;
  v101 = vnegq_f32(v364);
  v101.i32[3] = 0;
  v102 = vmulq_f32(v100, a12);
  v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
  v103 = vpadd_f32(*v102.f32, *v102.f32);
  v104 = vmulq_f32(a12, v101);
  v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
  v105 = vpadd_f32(*v104.f32, *v104.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v99), vand_s8(vclez_f32(v105), vcgez_f32(v103))), 0), *v363.f32).u32[0] == -1)
  {
    v132 = vsub_f32(v103, v105);
    v133 = vrecpe_f32(v132);
    v134 = 4;
    do
    {
      v133 = vmul_f32(v133, vrecps_f32(v132, v133));
      --v134;
    }

    while (v134);
    v118 = 0;
    v57 = vmlaq_n_f32(v363, a12, vmul_f32(v103, vbsl_s8(vcgt_f32(vabs_f32(v132), 0x3400000034000000), v133, 0)).f32[0]);
    v117 = 2;
    v119 = &v352;
    v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
  }

  else
  {
    v106 = vnegq_f32(v365[0]);
    v106.i32[3] = 0;
    v107 = vmulq_f32(v101, v77);
    v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
    v108 = vpadd_f32(*v107.f32, *v107.f32);
    v109 = vmulq_f32(a12, v106);
    v109.i64[0] = vpaddq_f32(v109, v109).u64[0];
    v110 = vpadd_f32(*v109.f32, *v109.f32);
    v111 = vmulq_f32(v77, v106);
    v111.i64[0] = vpaddq_f32(v111, v111).u64[0];
    v112 = vpadd_f32(*v111.f32, *v111.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v108, v105), vcge_f32(v110, v112)), vclez_f32(v95)), 0), *v363.f32).u32[0] == -1)
    {
      v139 = vsub_f32(v108, v105);
      v140 = vadd_f32(v139, vsub_f32(v110, v112));
      v141 = vrecpe_f32(v140);
      v142 = 4;
      do
      {
        v141 = vmul_f32(v141, vrecps_f32(v140, v141));
        --v142;
      }

      while (v142);
      v143 = vmlaq_n_f32(v364, vsubq_f32(v365[0], v364), vmul_f32(v139, vbsl_s8(vcgt_f32(vabs_f32(v140), 0x3400000034000000), v141, 0)).f32[0]);
      v117 = 2;
      v118 = 1;
      v135 = &v356;
      v119 = &v353;
      v143.i64[1] = vextq_s8(v143, v143, 8uLL).u32[0];
      v137 = v362;
      v136 = v359;
      v138 = v365;
      v57 = v143;
      goto LABEL_46;
    }

    v113 = vmulq_f32(v100, v77);
    v114 = vpaddq_f32(v113, v113);
    *v114.i8 = vpadd_f32(*v114.i8, *v114.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v97), vand_s8(vclez_f32(v112), vcgez_f32(*v114.i8))), 0), *v363.f32).u32[0] == -1)
    {
      v144 = vsub_f32(*v114.i8, v112);
      v145 = vrecpe_f32(v144);
      v146 = 4;
      do
      {
        v145 = vmul_f32(v145, vrecps_f32(v144, v145));
        --v146;
      }

      while (v146);
      v118 = 0;
      v57 = vmlaq_n_f32(v363, v77, vmul_f32(*v114.i8, vbsl_s8(vcgt_f32(vabs_f32(v144), 0x3400000034000000), v145, 0)).f32[0]);
      v117 = 2;
      v135 = &v356;
      v119 = &v353;
      v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
      v137 = v362;
      v136 = v359;
      v138 = v365;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v114.i8), vclez_f32(v103)), 0), *v363.f32).u32[0] == -1)
    {
      v118 = 0;
      v117 = 1;
      v119 = &v352;
    }

    else
    {
      *v114.i8 = vcge_f32(v105, v108);
      *v57.f32 = vdup_lane_s16(vand_s8(*v114.i8, vcgez_f32(v105)), 0);
      *v57.f32 = vuzp1_s8(*v57.f32, *v57.f32);
      v114.i32[0] = -1;
      v115 = v57.i32[0];
      v116 = vdupq_lane_s32(*&vceqq_s32(v57, v114), 0);
      v117 = 1;
      if (v115 == -1)
      {
        v118 = 1;
      }

      else
      {
        v118 = 2;
      }

      v119 = &v352;
      v57 = vbslq_s8(v116, v364, v365[0]);
    }
  }

  v136 = &v358;
  v135 = &v355;
  v137 = &v361;
  v138 = &v364;
LABEL_46:
  v147 = *(&v363 + v118);
  v148 = *v138;
  a12 = *(&v360 + v118);
  v149 = *v137;
  v150 = *(&v357 + v118);
  v151 = *v136;
  v152 = *(&v354 + v118);
  v153 = *v135;
  v154 = *(&v351 + v118);
  v155 = *v119;
  v363 = v147;
  v364 = v148;
  v360 = a12;
  v361 = v149;
  v357 = v150;
  v358 = v151;
  v354 = v152;
  v355 = v153;
  v351 = v154;
  v352 = v155;
  v348 = v117;
LABEL_47:
  v349 = v57;
  v156 = vmulq_f32(v57, v57);
  v156.i64[0] = vpaddq_f32(v156, v156).u64[0];
  v157 = vpadd_f32(*v156.f32, *v156.f32);
  v158 = vrsqrte_f32(v157);
  v159 = 4;
  do
  {
    v158 = vmul_f32(v158, vrsqrts_f32(vmul_f32(v158, v158), v157));
    --v159;
  }

  while (v159);
  v74 = vbsl_s8(vdup_lane_s32(vceqz_f32(v157), 0), v157, vmul_f32(v157, v158));
  v160 = vrecpe_f32(v74);
  v161 = 4;
  do
  {
    *a12.f32 = vrecps_f32(v74, v160);
    v160 = vmul_f32(v160, *a12.f32);
    --v161;
  }

  while (v161);
  v162 = vmulq_n_f32(v57, v160.f32[0]);
  v162.i32[3] = 0;
  v343 = v162;
  v75 = vdupq_lane_s32(vcgt_f32(v74, v25), 0);
  v76 = v57;
LABEL_52:
  v163 = *&v30 + v29.f32[0];
  a12.i32[0] = -1;
  v335 = a12;
  v164 = v74;
  v165.i64[0] = -1;
  v165.i64[1] = -1;
  while (1)
  {
    v166 = v57;
    v167.i64[0] = -1;
    v167.i64[1] = -1;
    *v167.i8 = vmovn_s32(vceqq_s32(v75, v167));
    if (vuzp1_s8(*v167.i8, *v167.i8).u32[0] != -1)
    {
      break;
    }

    v341 = v166;
    v168 = vnegq_f32(v166);
    v168.i32[3] = 0;
    v345 = v74;
    v347 = v168;
    *v169.i64 = physx::Gu::RelativeConvex<physx::Gu::BoxV>::support(a1, &v347, &v354 + v348);
    v342 = v169;
    *v170.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v349, &v351 + v348);
    v171 = v343;
    v172 = v170;
    v57 = vsubq_f32(v342, v170);
    v173 = vmulq_f32(v343, v57);
    v173.i64[0] = vpaddq_f32(v173, v173).u64[0];
    v174 = vpadd_f32(*v173.f32, *v173.f32).f32[0];
    if (v174 > v163)
    {
      if (v14)
      {
        v280 = v348;
        *a8 = v348;
        if (v280)
        {
          v281 = &v351;
          v282 = &v354;
          do
          {
            v283 = *v282++;
            *v14++ = v283;
            v284 = *v281++;
            *v13++ = v284;
            --v280;
          }

          while (v280);
        }
      }

      return 0;
    }

    v175 = v345;
    v176 = v348;
    if (v174 > (0.99977 * v345.f32[0]))
    {
      v285 = v340;
      if (!v14)
      {
        goto LABEL_116;
      }

      *a8 = v348;
      if (v176)
      {
        v286 = &v351;
        v287 = &v354;
        v288 = v176;
        do
        {
          v289 = *v287++;
          *v14++ = v289;
          v290 = *v286++;
          *v13++ = v290;
          --v288;
        }

        while (v288);
LABEL_116:
        *(a13 + 32) = v343;
        if (v176 != 3)
        {
          if (v176 == 2)
          {
            v302 = vsubq_f32(v363, v349);
            v303 = vsubq_f32(vsubq_f32(v364, v349), v302);
            v304 = vmulq_f32(v303, v303);
            v304.i64[0] = vpaddq_f32(v304, v304).u64[0];
            v305 = vpadd_f32(*v304.f32, *v304.f32);
            v306 = vrecpe_f32(v305);
            v307 = 4;
            v293 = a5;
            do
            {
              v306 = vmul_f32(v306, vrecps_f32(v305, v306));
              --v307;
            }

            while (v307);
            v308 = vnegq_f32(v302);
            v308.i32[3] = 0;
            v309 = vmulq_f32(v308, v303);
            v309.i64[0] = vpaddq_f32(v309, v309).u64[0];
            v308.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v305), v306, 0), vpadd_f32(*v309.f32, *v309.f32)).u32[0];
            v291 = vmlaq_n_f32(v360, vsubq_f32(v361, v360), v308.f32[0]);
            v291.i64[1] = vextq_s8(v291, v291, 8uLL).u32[0];
            v292 = vmlaq_n_f32(v357, vsubq_f32(v358, v357), v308.f32[0]);
            v292.i64[1] = vextq_s8(v292, v292, 8uLL).u32[0];
          }

          else
          {
            v291 = 0uLL;
            v292 = 0uLL;
            v293 = a5;
            if (v176 == 1)
            {
              v291 = v360;
              v292 = v357;
              if (!a5)
              {
LABEL_137:
                v315 = vmlsq_lane_f32(v291, v171, v336, 0);
                v315.i64[1] = vextq_s8(v315, v315, 8uLL).u32[0];
                v316 = vmlaq_n_f32(v292, v171, v337);
                v316.i64[1] = vextq_s8(v316, v316, 8uLL).u32[0];
                *a13 = v315;
                *(a13 + 16) = v316;
                *(a13 + 64) = vsub_f32(v175, v285);
                return 2;
              }

LABEL_134:
              *a13 = v291;
              *(a13 + 16) = v292;
              result = 2;
              *(a13 + 64) = v175;
              return result;
            }
          }

          if (!v293)
          {
            goto LABEL_137;
          }

          goto LABEL_134;
        }

        v347.i64[0] = 0;
        v350 = 0;
        physx::Gu::barycentricCoordinates(&v349, &v363, &v364, v365, &v347, &v350);
        v171 = v343;
        v175 = v345;
        v285 = v340;
        v310 = vmulq_n_f32(vsubq_f32(v361, v360), v347.f32[0]);
        v310.i32[3] = 0;
        v311 = vmulq_n_f32(vsubq_f32(v362[0], v360), v350.f32[0]);
        v311.i32[3] = 0;
        v312 = vaddq_f32(v310, v311);
        v313 = vmulq_n_f32(vsubq_f32(v358, v357), v347.f32[0]);
        v313.i32[3] = 0;
        v291 = vaddq_f32(v360, v312);
        v314 = vmulq_n_f32(vsubq_f32(v359[0], v357), v350.f32[0]);
        v314.i32[3] = 0;
        v292 = vaddq_f32(v357, vaddq_f32(v313, v314));
      }

      else
      {
        *(a13 + 32) = v343;
        v291 = 0uLL;
        v292 = 0uLL;
      }

      if (!a5)
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }

    *(&v360 + v348) = v342;
    *(&v357 + v176) = v172;
    v348 = v176 + 1;
    *(&v363 + v176) = v57;
    switch(v176)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v363, &v360, &v357, &v354, &v351, &v348);
        v175 = v345;
        break;
      case 2:
        v57 = v363;
        v185 = vsubq_f32(v364, v363);
        v186 = vsubq_f32(v365[0], v363);
        v188 = vmls_f32(vmul_f32(*v185.f32, *&vextq_s8(v186, v186, 4uLL)), *&vextq_s8(v185, v185, 4uLL), *v186.f32);
        *v187.f32 = vext_s8(v188, vmls_f32(vmul_f32(*&vextq_s8(v185, v185, 8uLL), *v186.f32), *v185.f32, *&vextq_s8(v186, v186, 8uLL)), 4uLL);
        v188.i32[1] = 0;
        v348 = 3;
        v189 = vpadd_f32(vmul_f32(*v187.f32, *v187.f32), vmul_f32(v188.u32[0], v188.u32[0]));
        v190 = vpadd_f32(v189, v189);
        if (v190.f32[0] <= 0.00000011921)
        {
          v348 = 2;
          v229 = vmulq_f32(v185, v185);
          v229.i64[0] = vpaddq_f32(v229, v229).u64[0];
          v230 = vpadd_f32(*v229.f32, *v229.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v230), 0), *v363.f32).u32[0] == -1)
          {
LABEL_79:
            v348 = 1;
            break;
          }

          v231 = vnegq_f32(v363);
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
          v57 = vmlaq_n_f32(v363, v185, vmax_f32(vmin_f32(vmul_f32(v233, v234), _D9), 0).f32[0]);
          goto LABEL_78;
        }

        *&v187.u32[2] = v188;
        v191 = vextq_s8(v364, v364, 8uLL).u64[0];
        v192 = vextq_s8(v365[0], v365[0], 8uLL).u64[0];
        v193 = vextq_s8(v365[0], v365[0], 4uLL).u64[0];
        v194 = vextq_s8(v364, v364, 4uLL).u64[0];
        v195 = vmls_f32(vmul_f32(*v364.f32, v193), v194, *v365[0].f32);
        *v196.f32 = vext_s8(v195, vmls_f32(vmul_f32(v191, *v365[0].f32), *v364.f32, v192), 4uLL);
        v196.i64[1] = v195.u32[0];
        v197 = vextq_s8(v363, v363, 8uLL).u64[0];
        v198 = vextq_s8(v363, v363, 4uLL).u64[0];
        v199 = vmls_f32(vmul_f32(v198, *v365[0].f32), v193, *v363.f32);
        *v200.f32 = vext_s8(v199, vmls_f32(vmul_f32(*v363.f32, v192), *v365[0].f32, v197), 4uLL);
        v200.i64[1] = v199.u32[0];
        v201 = vmls_f32(vmul_f32(*v363.f32, v194), v198, *v364.f32);
        *v202.f32 = vext_s8(v201, vmls_f32(vmul_f32(v197, *v364.f32), *v363.f32, v191), 4uLL);
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
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v206), vcgez_f32(v204)), vcgez_f32(v208)), 0), *v363.f32).u32[0] != -1)
        {
          v209 = vnegq_f32(v363);
          v209.i32[3] = 0;
          v210 = vnegq_f32(v364);
          v210.i32[3] = 0;
          v211 = vmulq_f32(v209, v185);
          v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
          v212 = vpadd_f32(*v211.f32, *v211.f32);
          v213 = vmulq_f32(v185, v210);
          v213.i64[0] = vpaddq_f32(v213, v213).u64[0];
          v214 = vpadd_f32(*v213.f32, *v213.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v208), vand_s8(vclez_f32(v214), vcgez_f32(v212))), 0), *v363.f32).u32[0] == -1)
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
            v57 = vmlaq_n_f32(v363, v185, vmul_f32(v212, vbsl_s8(vcgt_f32(vabs_f32(v241), 0x3400000034000000), v242, 0)).f32[0]);
            v226 = 2;
            v228 = &v352;
            v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
            goto LABEL_86;
          }

          v215 = vnegq_f32(v365[0]);
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
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v217, v214), vcge_f32(v219, v221)), vclez_f32(v204)), 0), *v363.f32).u32[0] == -1)
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
            v252 = vmlaq_n_f32(v364, vsubq_f32(v365[0], v364), vmul_f32(v248, vbsl_s8(vcgt_f32(vabs_f32(v249), 0x3400000034000000), v250, 0)).f32[0]);
            v252.i64[1] = vextq_s8(v252, v252, 8uLL).u32[0];
            v226 = 2;
            v57 = v252;
            v227 = 1;
            v228 = &v353;
          }

          else
          {
            v222 = vmulq_f32(v209, v186);
            v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
            v223 = vpadd_f32(*v222.f32, *v222.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v206), vand_s8(vclez_f32(v221), vcgez_f32(v223))), 0), *v363.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v223), vclez_f32(v212)), 0), *v363.f32).u32[0] == -1)
              {
                v227 = 0;
                v226 = 1;
                v228 = &v352;
              }

              else
              {
                *v57.f32 = vdup_lane_s16(vand_s8(vcge_f32(v214, v217), vcgez_f32(v214)), 0);
                *v57.f32 = vuzp1_s8(*v57.f32, *v57.f32);
                v224 = v57.i32[0];
                v225 = vdupq_lane_s32(*&vceqq_s32(v57, v335), 0);
                v226 = 1;
                if (v224 == -1)
                {
                  v227 = 1;
                }

                else
                {
                  v227 = 2;
                }

                v228 = &v352;
                v57 = vbslq_s8(v225, v364, v365[0]);
              }

LABEL_86:
              v245 = &v358;
              v244 = &v355;
              v246 = &v361;
              v247 = &v364;
LABEL_94:
              v256 = *(&v363 + v227);
              v257 = *v247;
              v258 = *(&v360 + v227);
              v259 = *v246;
              v260 = *(&v357 + v227);
              v261 = *v245;
              v262 = *(&v354 + v227);
              v263 = *v244;
              v264 = *(&v351 + v227);
              v265 = *v228;
              v363 = v256;
              v364 = v257;
              v360 = v258;
              v361 = v259;
              v357 = v260;
              v358 = v261;
              v354 = v262;
              v355 = v263;
              v351 = v264;
              v352 = v265;
              v348 = v226;
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
            v57 = vmlaq_n_f32(v363, v186, vmul_f32(v223, vbsl_s8(vcgt_f32(vabs_f32(v253), 0x3400000034000000), v254, 0)).f32[0]);
            v226 = 2;
            v228 = &v353;
            v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
          }

          v245 = v359;
          v244 = &v356;
          v246 = v362;
          v247 = v365;
          goto LABEL_94;
        }

        v236 = vmulq_f32(v363, v187);
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
        v57 = vmulq_n_f32(v187, vmul_f32(v238, vpadd_f32(v240, v240)).f32[0]);
        v57.i32[3] = 0;
        break;
      case 1:
        v57 = v363;
        v177 = vsubq_f32(v364, v363);
        v178 = vmulq_f32(v177, v177);
        v178.i64[0] = vpaddq_f32(v178, v178).u64[0];
        v179 = vpadd_f32(*v178.f32, *v178.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v179), 0), *v363.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v180 = vnegq_f32(v363);
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
        v57 = vmlaq_n_f32(v363, v177, vmax_f32(vmin_f32(vmul_f32(v182, v183), _D9), 0).f32[0]);
LABEL_78:
        v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
        break;
    }

    v349 = v57;
    v266 = vmulq_f32(v57, v57);
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
    v74 = vbsl_s8(vdup_lane_s32(vceqz_f32(v267), 0), v267, vmul_f32(v267, v268));
    v270 = vrecpe_f32(v74);
    v271 = 4;
    do
    {
      v270 = vmul_f32(v270, vrecps_f32(v74, v270));
      --v271;
    }

    while (v271);
    v272 = vmulq_n_f32(v57, v270.f32[0]);
    v272.i32[3] = 0;
    v343 = v272;
    *v272.f32 = vcgt_f32(v175, v74);
    v165 = vdupq_lane_s32(*v272.f32, 0);
    v75 = vdupq_lane_s32(vand_s8(vcgt_f32(v74, v25), *v272.f32), 0);
    v164 = v175;
    v76 = v341;
  }

  v273 = vmovn_s32(vceqzq_s32(v165));
  v274 = v348;
  if (vuzp1_s8(v273, v273).u32[0] != -1)
  {
    if (v14)
    {
      *a8 = v348;
      if (v274)
      {
        v275 = &v351;
        v276 = &v354;
        do
        {
          v277 = *v276++;
          *v14++ = v277;
          v278 = *v275++;
          *v13++ = v278;
          --v274;
        }

        while (v274);
      }
    }

    return 5;
  }

  v294 = v340;
  if (v14)
  {
    v295 = v348 - 1;
    *a8 = v348 - 1;
    if (v274 != 1)
    {
      v296 = &v351;
      v297 = &v354;
      do
      {
        v298 = *v297++;
        *v14++ = v298;
        v299 = *v296++;
        *v13++ = v299;
        --v295;
      }

      while (v295);
      goto LABEL_125;
    }

LABEL_128:
    v300 = v360;
    v301 = v357;
  }

  else
  {
LABEL_125:
    v349 = v76;
    if (v274 == 3)
    {
      v347.i64[0] = 0;
      v350 = 0;
      v346 = v76;
      physx::Gu::barycentricCoordinates(&v349, &v363, &v364, v365, &v347, &v350);
      v294 = v340;
      v325 = vmulq_n_f32(vsubq_f32(v361, v360), v347.f32[0]);
      v325.i32[3] = 0;
      v326 = vmulq_n_f32(vsubq_f32(v362[0], v360), v350.f32[0]);
      v326.i32[3] = 0;
      v327 = vaddq_f32(v325, v326);
      v328 = vmulq_n_f32(vsubq_f32(v358, v357), v347.f32[0]);
      v328.i32[3] = 0;
      v300 = vaddq_f32(v360, v327);
      v329 = vmulq_n_f32(vsubq_f32(v359[0], v357), v350.f32[0]);
      v76 = v346;
      v329.i32[3] = 0;
      v301 = vaddq_f32(v357, vaddq_f32(v328, v329));
    }

    else if (v274 == 2)
    {
      v317 = vsubq_f32(v363, v76);
      v318 = vsubq_f32(vsubq_f32(v364, v76), v317);
      v319 = vmulq_f32(v318, v318);
      v319.i64[0] = vpaddq_f32(v319, v319).u64[0];
      v320 = vpadd_f32(*v319.f32, *v319.f32);
      v321 = vrecpe_f32(v320);
      v322 = 4;
      do
      {
        v321 = vmul_f32(v321, vrecps_f32(v320, v321));
        --v322;
      }

      while (v322);
      v323 = vnegq_f32(v317);
      v323.i32[3] = 0;
      v324 = vmulq_f32(v323, v318);
      v324.i64[0] = vpaddq_f32(v324, v324).u64[0];
      v323.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v320), v321, 0), vpadd_f32(*v324.f32, *v324.f32)).u32[0];
      v300 = vmlaq_n_f32(v360, vsubq_f32(v361, v360), v323.f32[0]);
      v300.i64[1] = vextq_s8(v300, v300, 8uLL).u32[0];
      v301 = vmlaq_n_f32(v357, vsubq_f32(v358, v357), v323.f32[0]);
      v301.i64[1] = vextq_s8(v301, v301, 8uLL).u32[0];
    }

    else
    {
      v300 = 0uLL;
      v301 = 0uLL;
      if (v274 == 1)
      {
        goto LABEL_128;
      }
    }
  }

  v330 = vrecpe_f32(v164);
  v331 = 4;
  do
  {
    v330 = vmul_f32(v330, vrecps_f32(v164, v330));
    --v331;
  }

  while (v331);
  v332 = vmulq_n_f32(v76, v330.f32[0]);
  v332.i32[3] = 0;
  *(a13 + 32) = v332;
  *(a13 + 48) = v343;
  if (a5)
  {
    *a13 = v300;
    *(a13 + 16) = v301;
    *(a13 + 64) = v164;
  }

  else
  {
    v333 = vmlsq_lane_f32(v300, v332, v336, 0);
    v333.i64[1] = vextq_s8(v333, v333, 8uLL).u32[0];
    v334 = vmlaq_n_f32(v301, v332, v337);
    v334.i64[1] = vextq_s8(v334, v334, 8uLL).u32[0];
    *a13 = v333;
    *(a13 + 16) = v334;
    *(a13 + 64) = vsub_f32(v164, v294);
    if (vcge_f32(v294, v164).u32[0])
    {
      return 2;
    }
  }

  return 4;
}

BOOL physx::Gu::gjkRaycast<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, int32x2_t a4, uint64_t a5, float32x4_t *a6, float32x4_t *a7, float32x2_t *a8, float32x4_t *a9, int8x16_t *a10)
{
  v224 = *MEMORY[0x1E69E9840];
  v203 = vmlaq_f32(*a6, 0, *a7);
  v14 = vextq_s8(v203, v203, 8uLL).u32[0];
  v213 = 1;
  v15 = vmulq_f32(*a3, *a3);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v15.f32, *v15.f32), 0x3400000034000000), 0)), *a3, xmmword_1E3047670);
  v17 = vmulq_f32(v16, v16);
  v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
  v18 = vpadd_f32(*v17.f32, *v17.f32);
  v19 = vrsqrte_f32(v18);
  v20 = 4;
  do
  {
    v19 = vmul_f32(v19, vrsqrts_f32(vmul_f32(v19, v19), v18));
    --v20;
  }

  while (v20);
  v21 = vbsl_s8(vdup_lane_s32(vceqz_f32(v18), 0), v18, vmul_f32(v18, v19));
  v22 = vrecpe_f32(v21);
  v23 = 4;
  do
  {
    v22 = vmul_f32(v22, vrecps_f32(v21, v22));
    --v23;
  }

  while (v23);
  v24 = vdup_lane_s32(a4, 0);
  v25.i64[0] = v203.i64[0];
  v25.i64[1] = v14;
  v204 = v25;
  v26 = vmulq_n_f32(v16, v22.f32[0]);
  v26.i32[3] = 0;
  v212 = v26;
  v27 = vnegq_f32(v26);
  v27.i32[3] = 0;
  v221 = v27;
  *v28.i64 = physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::support(a1, &v221);
  v207 = v28;
  *v29.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v212);
  v30 = v29;
  v31 = vsubq_f32(v207, v29);
  v221 = v31;
  v222 = 0u;
  memset(v223, 0, sizeof(v223));
  v218 = v207;
  v219 = 0u;
  memset(v220, 0, sizeof(v220));
  v32 = vnegq_f32(v31);
  v32.i32[3] = 0;
  v216 = 0u;
  memset(v217, 0, sizeof(v217));
  v33 = (a1->i64[1] + 24);
  v34 = vld1_dup_f32(v33);
  v215 = v30;
  v35 = (*(a2 + 8) + 24);
  *v30.f32 = vld1_dup_f32(v35);
  *v30.f32 = vmul_f32(vmin_f32(v34, *v30.f32), vdup_n_s32(0x3DCCCCCDu));
  v36 = vadd_f32(v24, *v30.f32);
  v37 = vmul_f32(*v30.f32, *v30.f32);
  v38 = vmulq_f32(v32, v32);
  v39 = vpaddq_f32(v38, v38);
  v40 = vpadd_f32(*v39.f32, *v39.f32);
  v196 = v37;
  *v39.f32 = vcgt_f32(v40, v37);
  v41 = vdupq_lane_s32(*v39.f32, 0);
  v42 = vmul_f32(v36, v36);
  v39.i32[0] = -1;
  v195 = v39;
  v43 = vneg_f32(0x80000000800000);
  v44 = v31;
  v45.i64[0] = -1;
  v45.i64[1] = -1;
  v199 = v32;
  v46 = v32;
  v47 = 0;
  while (1)
  {
    v48 = v31;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
    *v49.i8 = vmovn_s32(vceqq_s32(v41, v49));
    v50 = vuzp1_s8(*v49.i8, *v49.i8).u32[0];
    if (v50 != -1)
    {
      break;
    }

    v51 = vmulq_f32(v46, v46);
    v51.i64[0] = vpaddq_f32(v51, v51).u64[0];
    v52 = vpadd_f32(*v51.f32, *v51.f32);
    v53 = vrsqrte_f32(v52);
    v54 = 4;
    do
    {
      v53 = vmul_f32(v53, vrsqrts_f32(vmul_f32(v53, v53), v52));
      --v54;
    }

    while (v54);
    v205 = v48;
    v55 = vbsl_s8(vdup_lane_s32(vceqz_f32(v52), 0), v52, vmul_f32(v52, v53));
    v56 = vrecpe_f32(v55);
    v57 = 4;
    do
    {
      v56 = vmul_f32(v56, vrecps_f32(v55, v56));
      --v57;
    }

    while (v57);
    v202 = v46;
    v58 = vmulq_n_f32(v46, v56.f32[0]);
    v58.i32[3] = 0;
    v211 = v58;
    v59 = vnegq_f32(v58);
    v59.i32[3] = 0;
    v210 = v59;
    *v60.i64 = physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::support(a1, &v211);
    v208 = v60;
    *v61.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v210);
    v62 = v208;
    v63 = vaddq_f32(v204, v61);
    v31 = vsubq_f32(v208, v63);
    v64 = vnegq_f32(v31);
    v64.i32[3] = 0;
    v65 = vmulq_f32(v211, v64);
    v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
    v66 = vsub_f32(vpadd_f32(*v65.f32, *v65.f32), v36);
    if (v66.f32[0] > 0.0)
    {
      v67 = vmulq_f32(v211, *a7);
      v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
      v68 = vpadd_f32(*v67.f32, *v67.f32);
      if (v68.f32[0] >= 0.0)
      {
        return v50 != -1;
      }

      v69 = vrecpe_f32(v68);
      v70 = 4;
      do
      {
        v69 = vmul_f32(v69, vrecps_f32(v68, v69));
        --v70;
      }

      while (v70);
      v71 = vsub_f32(v47, vmul_f32(v66, v69));
      if (vcgt_f32(v71, v47).u8[0])
      {
        if (v71.f32[0] > 1.0)
        {
          return v50 != -1;
        }

        v72 = vmlaq_n_f32(*a6, *a7, v71.f32[0]);
        v72.i64[1] = vextq_s8(v72, v72, 8uLL).u32[0];
        v200 = v71;
        v201 = v72;
        v73 = vsubq_f32(v72, v204);
        v215 = vaddq_f32(v215, v73);
        v216 = vaddq_f32(v216, v73);
        v217[0] = vaddq_f32(v217[0], v73);
        v221 = vsubq_f32(v218, v215);
        v222 = vsubq_f32(v219, v216);
        v223[0] = vsubq_f32(v220[0], v217[0]);
        *v74.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v210);
        v62 = v208;
        v63 = vaddq_f32(v201, v74);
        v31 = vsubq_f32(v208, v63);
        v40 = v43;
        v199 = v202;
        v204 = v201;
        v47 = v200;
      }

      else
      {
        v47 = v71;
      }
    }

    v75 = v213;
    *(&v218 + v213) = v62;
    *(&v215 + v75) = v63;
    v213 = v75 + 1;
    *(&v221 + v75) = v31;
    if (v75 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v221, &v218, &v215, &v213);
LABEL_36:
      v44 = v205;
      goto LABEL_60;
    }

    if (v75 == 2)
    {
      v31 = v221;
      v90 = vsubq_f32(v222, v221);
      v91 = vsubq_f32(v223[0], v221);
      v93 = vmls_f32(vmul_f32(*v90.f32, *&vextq_s8(v91, v91, 4uLL)), *&vextq_s8(v90, v90, 4uLL), *v91.f32);
      *v92.f32 = vext_s8(v93, vmls_f32(vmul_f32(*&vextq_s8(v90, v90, 8uLL), *v91.f32), *v90.f32, *&vextq_s8(v91, v91, 8uLL)), 4uLL);
      v93.i32[1] = 0;
      v213 = 3;
      v94 = vpadd_f32(vmul_f32(*v92.f32, *v92.f32), vmul_f32(v93.u32[0], v93.u32[0]));
      v95 = vpadd_f32(v94, v94);
      if (v95.f32[0] <= 0.00000011921)
      {
        v213 = 2;
        v132 = vmulq_f32(v90, v90);
        v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
        v133 = vpadd_f32(*v132.f32, *v132.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v133), 0), *v221.f32).u32[0] == -1)
        {
          v213 = 1;
          goto LABEL_36;
        }

        v134 = vnegq_f32(v221);
        v134.i32[3] = 0;
        v135 = vmulq_f32(v134, v90);
        v135.i64[0] = vpaddq_f32(v135, v135).u64[0];
        v136 = vpadd_f32(*v135.f32, *v135.f32);
        v137 = vrecpe_f32(v133);
        v138 = 4;
        v44 = v205;
        do
        {
          v137 = vmul_f32(v137, vrecps_f32(v133, v137));
          --v138;
        }

        while (v138);
        v139 = vmul_f32(v136, v137);
        __asm { FMOV            V2.2S, #1.0 }

        v31 = vmlaq_n_f32(v221, v90, vmax_f32(vmin_f32(v139, _D2), 0).f32[0]);
        goto LABEL_41;
      }

      *&v92.u32[2] = v93;
      v96 = vextq_s8(v222, v222, 8uLL).u64[0];
      v97 = vextq_s8(v223[0], v223[0], 8uLL).u64[0];
      v98 = vextq_s8(v223[0], v223[0], 4uLL).u64[0];
      v99 = vextq_s8(v222, v222, 4uLL).u64[0];
      v100 = vmls_f32(vmul_f32(*v222.f32, v98), v99, *v223[0].f32);
      *v101.f32 = vext_s8(v100, vmls_f32(vmul_f32(v96, *v223[0].f32), *v222.f32, v97), 4uLL);
      v101.i64[1] = v100.u32[0];
      v102 = vextq_s8(v221, v221, 8uLL).u64[0];
      v103 = vextq_s8(v221, v221, 4uLL).u64[0];
      v104 = vmls_f32(vmul_f32(v103, *v223[0].f32), v98, *v221.f32);
      *v105.f32 = vext_s8(v104, vmls_f32(vmul_f32(*v221.f32, v97), *v223[0].f32, v102), 4uLL);
      v105.i64[1] = v104.u32[0];
      v106 = vmls_f32(vmul_f32(*v221.f32, v99), v103, *v222.f32);
      *v107.f32 = vext_s8(v106, vmls_f32(vmul_f32(v102, *v222.f32), *v221.f32, v96), 4uLL);
      v107.i64[1] = v106.u32[0];
      v108 = vmulq_f32(v101, v92);
      v108.i64[0] = vpaddq_f32(v108, v108).u64[0];
      v109 = vpadd_f32(*v108.f32, *v108.f32);
      v110 = vmulq_f32(v105, v92);
      v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
      v111 = vpadd_f32(*v110.f32, *v110.f32);
      v112 = vmulq_f32(v107, v92);
      v112.i64[0] = vpaddq_f32(v112, v112).u64[0];
      v113 = vpadd_f32(*v112.f32, *v112.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v111), vcgez_f32(v109)), vcgez_f32(v113)), 0), *v221.f32).u32[0] == -1)
      {
        v141 = vmulq_f32(v221, v92);
        v142 = vextq_s8(v141, v141, 8uLL).u64[0];
        v143 = vrecpe_f32(v95);
        v144 = 4;
        do
        {
          v143 = vmul_f32(v143, vrecps_f32(v95, v143));
          --v144;
        }

        while (v144);
        v145 = vpadd_f32(*v141.i8, v142);
        v31 = vmulq_n_f32(v92, vmul_f32(v143, vpadd_f32(v145, v145)).f32[0]);
        v31.i32[3] = 0;
        goto LABEL_36;
      }

      v114 = vnegq_f32(v221);
      v114.i32[3] = 0;
      v115 = vnegq_f32(v222);
      v115.i32[3] = 0;
      v116 = vmulq_f32(v114, v90);
      v116.i64[0] = vpaddq_f32(v116, v116).u64[0];
      v117 = vpadd_f32(*v116.f32, *v116.f32);
      v118 = vmulq_f32(v90, v115);
      v118.i64[0] = vpaddq_f32(v118, v118).u64[0];
      v119 = vpadd_f32(*v118.f32, *v118.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v113), vand_s8(vclez_f32(v119), vcgez_f32(v117))), 0), *v221.f32).u32[0] == -1)
      {
        v146 = vsub_f32(v117, v119);
        v147 = vrecpe_f32(v146);
        v148 = 4;
        v44 = v205;
        do
        {
          v147 = vmul_f32(v147, vrecps_f32(v146, v147));
          --v148;
        }

        while (v148);
        v131 = 0;
        v31 = vmlaq_n_f32(v221, v90, vmul_f32(v117, vbsl_s8(vcgt_f32(vabs_f32(v146), 0x3400000034000000), v147, 0)).f32[0]);
        v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
        v130 = 2;
        v149 = &v216;
        v150 = &v219;
        v151 = &v222;
      }

      else
      {
        v120 = vnegq_f32(v223[0]);
        v120.i32[3] = 0;
        v121 = vmulq_f32(v115, v91);
        v121.i64[0] = vpaddq_f32(v121, v121).u64[0];
        v122 = vpadd_f32(*v121.f32, *v121.f32);
        v123 = vmulq_f32(v90, v120);
        v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
        v124 = vpadd_f32(*v123.f32, *v123.f32);
        v125 = vmulq_f32(v91, v120);
        v125.i64[0] = vpaddq_f32(v125, v125).u64[0];
        v126 = vpadd_f32(*v125.f32, *v125.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v122, v119), vcge_f32(v124, v126)), vclez_f32(v109)), 0), *v221.f32).u32[0] == -1)
        {
          v152 = vsub_f32(v122, v119);
          v153 = vadd_f32(v152, vsub_f32(v124, v126));
          v154 = vrecpe_f32(v153);
          v155 = 4;
          do
          {
            v154 = vmul_f32(v154, vrecps_f32(v153, v154));
            --v155;
          }

          while (v155);
          v156 = vmlaq_n_f32(v222, vsubq_f32(v223[0], v222), vmul_f32(v152, vbsl_s8(vcgt_f32(vabs_f32(v153), 0x3400000034000000), v154, 0)).f32[0]);
          v130 = 2;
          v150 = v220;
          v149 = v217;
          v156.i64[1] = vextq_s8(v156, v156, 8uLL).u32[0];
          v151 = v223;
          v131 = 1;
          v31 = v156;
        }

        else
        {
          v127 = vmulq_f32(v114, v91);
          v127.i64[0] = vpaddq_f32(v127, v127).u64[0];
          v128 = vpadd_f32(*v127.f32, *v127.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v111), vand_s8(vclez_f32(v126), vcgez_f32(v128))), 0), *v221.f32).u32[0] == -1)
          {
            v157 = vsub_f32(v128, v126);
            v158 = vrecpe_f32(v157);
            v159 = 4;
            do
            {
              v158 = vmul_f32(v158, vrecps_f32(v157, v158));
              --v159;
            }

            while (v159);
            v131 = 0;
            v31 = vmlaq_n_f32(v221, v91, vmul_f32(v128, vbsl_s8(vcgt_f32(vabs_f32(v157), 0x3400000034000000), v158, 0)).f32[0]);
            v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
            v130 = 2;
            v150 = v220;
            v149 = v217;
            v151 = v223;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v128), vclez_f32(v117)), 0), *v221.f32).u32[0] == -1)
            {
              v131 = 0;
              v130 = 1;
            }

            else
            {
              *v31.f32 = vdup_lane_s16(vand_s8(vcge_f32(v119, v122), vcgez_f32(v119)), 0);
              *v31.f32 = vuzp1_s8(*v31.f32, *v31.f32);
              v129 = v31.i32[0];
              v130 = 1;
              v31 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v31, v195), 0), v222, v223[0]);
              if (v129 == -1)
              {
                v131 = 1;
              }

              else
              {
                v131 = 2;
              }
            }

            v149 = &v216;
            v150 = &v219;
            v151 = &v222;
          }
        }

        v44 = v205;
      }

      v160 = *(&v218 + v131);
      v161 = *v151;
      v162 = *v150;
      v163 = *(&v215 + v131);
      v164 = *v149;
      v221 = *(&v221 + v131);
      v222 = v161;
      v218 = v160;
      v219 = v162;
      v215 = v163;
      v216 = v164;
      v213 = v130;
    }

    else
    {
      v44 = v205;
      if (v75 != 1)
      {
        goto LABEL_60;
      }

      v31 = v221;
      v76 = vsubq_f32(v222, v221);
      v77 = vmulq_f32(v76, v76);
      v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
      v78 = vpadd_f32(*v77.f32, *v77.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v78), 0), *v221.f32).u32[0] != -1)
      {
        v79 = vnegq_f32(v221);
        v79.i32[3] = 0;
        v80 = vmulq_f32(v79, v76);
        v80.i64[0] = vpaddq_f32(v80, v80).u64[0];
        v81 = vpadd_f32(*v80.f32, *v80.f32);
        v82 = vrecpe_f32(v78);
        v83 = 4;
        do
        {
          v82 = vmul_f32(v82, vrecps_f32(v78, v82));
          --v83;
        }

        while (v83);
        v84 = vmul_f32(v81, v82);
        __asm { FMOV            V3.2S, #1.0 }

        v31 = vmlaq_n_f32(v221, v76, vmax_f32(vmin_f32(v84, _D3), 0).f32[0]);
LABEL_41:
        v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
        goto LABEL_60;
      }

      v213 = 1;
    }

LABEL_60:
    v46 = vnegq_f32(v31);
    v46.i32[3] = 0;
    v165 = vmulq_f32(v31, v31);
    v165.i64[0] = vpaddq_f32(v165, v165).u64[0];
    v166 = vpadd_f32(*v165.f32, *v165.f32);
    v167 = vcgt_f32(v40, v166);
    v45 = vdupq_lane_s32(vand_s8(v167, 0x100000001), 0);
    v41 = vdupq_lane_s32(vand_s8(vcgt_f32(v166, v42), v167), 0);
    v40 = v166;
  }

  v168 = v44;
  v169 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v40, v196), 0), v45), 0x1FuLL)), v46, v199);
  v170 = vmulq_f32(v169, v169);
  v170.i64[0] = vpaddq_f32(v170, v170).u64[0];
  v171 = vpadd_f32(*v170.f32, *v170.f32);
  v172 = vrsqrte_f32(v171);
  v173 = 4;
  do
  {
    v172 = vmul_f32(v172, vrsqrts_f32(vmul_f32(v172, v172), v171));
    --v173;
  }

  while (v173);
  v174 = vbsl_s8(vdup_lane_s32(vceqz_f32(v171), 0), v171, vmul_f32(v171, v172));
  v175 = vrecpe_f32(v174);
  v176 = 4;
  do
  {
    v175 = vmul_f32(v175, vrecps_f32(v174, v175));
    --v176;
  }

  while (v176);
  v177 = vdupq_n_s32(-*(a1->i64[1] + 32));
  v178 = vmulq_n_f32(v169, v175.f32[0]);
  v178.i32[3] = 0;
  v179 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v174), 0), v178));
  v179.i32[3] = 0;
  *a9 = v179;
  *a8 = v47;
  v180 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v45, 0x1FuLL)), v48, v168);
  v211 = v180;
  if (v213 == 3)
  {
    v210.i64[0] = 0;
    v214 = 0;
    v206 = v179;
    v209 = v177;
    physx::Gu::barycentricCoordinates(&v211, &v221, &v222, v223, &v210, &v214);
    v179 = v206;
    v177 = v209;
    v45.i32[1] = v218.i32[1];
    v191 = vmulq_n_f32(vsubq_f32(v219, v218), v210.f32[0]);
    v191.i32[3] = 0;
    v192 = vmulq_n_f32(vsubq_f32(v220[0], v218), v214.f32[0]);
    v192.i32[3] = 0;
    v181 = vaddq_f32(v218, vaddq_f32(v191, v192));
    v182 = a10;
  }

  else if (v213 == 2)
  {
    v183 = vsubq_f32(v221, v180);
    v184 = vsubq_f32(vsubq_f32(v222, v180), v183);
    v185 = vmulq_f32(v184, v184);
    v185.i64[0] = vpaddq_f32(v185, v185).u64[0];
    v186 = vpadd_f32(*v185.f32, *v185.f32);
    v187 = vrecpe_f32(v186);
    v188 = 4;
    v182 = a10;
    do
    {
      v187 = vmul_f32(v187, vrecps_f32(v186, v187));
      --v188;
    }

    while (v188);
    v189 = vnegq_f32(v183);
    v189.i32[3] = 0;
    v190 = vmulq_f32(v189, v184);
    v190.i64[0] = vpaddq_f32(v190, v190).u64[0];
    v181 = vmlaq_n_f32(v218, vsubq_f32(v219, v218), vmul_f32(vbsl_s8(vcgtz_f32(v186), v187, 0), vpadd_f32(*v190.f32, *v190.f32)).f32[0]);
    v45.i32[1] = 0;
    v181.i64[1] = vextq_s8(v181, v181, 8uLL).u32[0];
  }

  else
  {
    v181 = 0uLL;
    v182 = a10;
    if (v213 == 1)
    {
      v181 = v218;
    }
  }

  v45.i32[0] = *(a1->i64[1] + 16);
  v193 = vmlsq_lane_f32(v181, v179, *v45.i8, 0);
  v193.i64[1] = vextq_s8(v193, v193, 8uLL).u32[0];
  *v182 = vbslq_s8(v177, v193, v181);
  return v50 != -1;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t *a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, double a9, double a10, int8x8_t a11, float32x4_t a12, uint64_t a13)
{
  v13 = a7;
  v14 = a6;
  v372 = *MEMORY[0x1E69E9840];
  v17 = a1->i64[1];
  v18 = &v17[1].f32[1];
  v19 = vld1_dup_f32(v18);
  v20 = *(a2 + 8);
  v21 = &v20[1].f32[1];
  v22 = vld1_dup_f32(v21);
  v23 = vmin_f32(v19, v22);
  v24 = vdup_n_s32(0x3DCCCCCDu);
  v25 = vmul_f32(v23, v24);
  v23.i32[0] = v17[1].i32[0];
  v24.i32[0] = v20[1].i32[0];
  a11.i32[0] = -v17[2].u8[0];
  v26 = vand_s8(a11, v23);
  v27 = vdup_lane_s32(v26, 0);
  v26.i32[0] = -v20[2].u8[0];
  v28 = vdup_lane_s32(vand_s8(v26, v24), 0);
  v342 = v27;
  v343 = v28.f32[0];
  v29 = vadd_f32(v27, v28);
  v30 = *a4;
  v355 = 0uLL;
  v354 = 0;
  v31 = *a8;
  __asm { FMOV            V9.2S, #1.0 }

  v346 = v29;
  if (!*a8)
  {
    v71 = vmulq_f32(*a3, *a3);
    v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
    v63 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v71.f32, *v71.f32)), 0)), *a3, xmmword_1E3047670);
    v355 = v63;
    v72 = vmulq_f32(v63, v63);
    v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
    v73 = vpadd_f32(*v72.f32, *v72.f32);
    v74 = vrsqrte_f32(v73);
    v75 = 4;
    do
    {
      v74 = vmul_f32(v74, vrsqrts_f32(vmul_f32(v74, v74), v73));
      --v75;
    }

    while (v75);
    v76 = vbsl_s8(vdup_lane_s32(vceqz_f32(v73), 0), v73, vmul_f32(v73, v74));
    v77 = vrecpe_f32(v76);
    v78 = 4;
    do
    {
      *a12.f32 = vrecps_f32(v76, v77);
      v77 = vmul_f32(v77, *a12.f32);
      --v78;
    }

    while (v78);
    v79 = vmulq_n_f32(v63, v77.f32[0]);
    v79.i32[3] = 0;
    v349 = v79;
    v80 = vneg_f32(0x80000000800000);
    v81.i64[0] = -1;
    v81.i64[1] = -1;
    v82 = 0uLL;
    goto LABEL_52;
  }

  v37 = 0;
  v38 = a1[1].i64[0];
  v39 = v17[10].i64[0];
  v40 = v17[3];
  v41 = v17[4];
  a12 = v17[5];
  v42 = v20[10].i64[0];
  v43 = v20[3];
  v44 = v20[4];
  v45 = -1;
  v46 = v20[5];
  do
  {
    v47 = a6[v37];
    *(&v360 + v37) = v47;
    v48 = a7[v37];
    *(&v357 + v37) = v48;
    v49 = *(v39 + 12 * v47);
    v50 = vmulq_n_f32(v40, v49.f32[0]);
    v50.i32[3] = 0;
    v51 = vmulq_lane_f32(v41, *v49.f32, 1);
    v51.i32[3] = 0;
    v52 = vmulq_laneq_f32(a12, v49, 2);
    v52.i32[3] = 0;
    v53 = vaddq_f32(v52, vaddq_f32(v50, v51));
    v54 = vmulq_n_f32(*v38, v53.f32[0]);
    v54.i32[3] = 0;
    v55 = vmulq_lane_f32(v38[1], *v53.f32, 1);
    v55.i32[3] = 0;
    v56 = vmulq_laneq_f32(v38[2], v53, 2);
    v56.i32[3] = 0;
    v57 = vaddq_f32(v38[3], vaddq_f32(v56, vaddq_f32(v54, v55)));
    v58 = *(v42 + 12 * v48);
    v59 = vmulq_n_f32(v43, v58.f32[0]);
    v59.i32[3] = 0;
    v60 = vmulq_lane_f32(v44, *v58.f32, 1);
    v60.i32[3] = 0;
    v61 = vmulq_laneq_f32(v46, v58, 2);
    v61.i32[3] = 0;
    v62 = vaddq_f32(v61, vaddq_f32(v59, v60));
    v63 = vsubq_f32(v57, v62);
    *(&v366 + v37) = v57;
    *(&v363 + v37) = v62;
    *(&v369 + v37) = v63;
    ++v45;
    ++v37;
  }

  while (v31 != v37);
  v354 = v31;
  if (v45 == 3)
  {
    v350 = v30;
    physx::Gu::closestPtPointTetrahedron(&v369, &v366, &v363, &v360, &v357, &v354);
    LODWORD(v30) = v350;
    v29.i32[0] = v346.i32[0];
    goto LABEL_47;
  }

  if (v45 != 2)
  {
    if (v45 != 1)
    {
      goto LABEL_47;
    }

    v63 = v369;
    v64 = vsubq_f32(v370, v369);
    v65 = vmulq_f32(v64, v64);
    v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
    v66 = vpadd_f32(*v65.f32, *v65.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v66), 0), *v369.f32).u32[0] != -1)
    {
      v67 = vnegq_f32(v369);
      v67.i32[3] = 0;
      v68 = vmulq_f32(v67, v64);
      a12 = vpaddq_f32(v68, v68);
      *a12.f32 = vpadd_f32(*a12.f32, *a12.f32);
      v69 = vrecpe_f32(v66);
      v70 = 4;
      do
      {
        v69 = vmul_f32(v69, vrecps_f32(v66, v69));
        --v70;
      }

      while (v70);
      v63 = vmlaq_n_f32(v369, v64, vmax_f32(vmin_f32(vmul_f32(*a12.f32, v69), _D9), 0).f32[0]);
LABEL_31:
      v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v354 = 1;
    goto LABEL_47;
  }

  v354 = 3;
  v63 = v369;
  a12 = vsubq_f32(v370, v369);
  v83 = vsubq_f32(v371[0], v369);
  v85 = vmls_f32(vmul_f32(*a12.f32, *&vextq_s8(v83, v83, 4uLL)), *&vextq_s8(a12, a12, 4uLL), *v83.f32);
  *v84.f32 = vext_s8(v85, vmls_f32(vmul_f32(*&vextq_s8(a12, a12, 8uLL), *v83.f32), *a12.f32, *&vextq_s8(v83, v83, 8uLL)), 4uLL);
  v85.i32[1] = 0;
  v86 = vpadd_f32(vmul_f32(*v84.f32, *v84.f32), vmul_f32(v85.u32[0], v85.u32[0]));
  v87 = vpadd_f32(v86, v86);
  if (v87.f32[0] <= 0.00000011921)
  {
    v354 = 2;
    v126 = vmulq_f32(a12, a12);
    v126.i64[0] = vpaddq_f32(v126, v126).u64[0];
    v127 = vpadd_f32(*v126.f32, *v126.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v127), 0), *v369.f32).u32[0] != -1)
    {
      v128 = vnegq_f32(v369);
      v128.i32[3] = 0;
      v129 = vmulq_f32(v128, a12);
      v129.i64[0] = vpaddq_f32(v129, v129).u64[0];
      v130 = vpadd_f32(*v129.f32, *v129.f32);
      v131 = vrecpe_f32(v127);
      v132 = 4;
      do
      {
        v131 = vmul_f32(v131, vrecps_f32(v127, v131));
        --v132;
      }

      while (v132);
      v63 = vmlaq_n_f32(v369, a12, vmax_f32(vmin_f32(vmul_f32(v130, v131), _D9), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v84.u32[2] = v85;
  v88 = vextq_s8(v370, v370, 8uLL).u64[0];
  v89 = vextq_s8(v371[0], v371[0], 8uLL).u64[0];
  v90 = vextq_s8(v371[0], v371[0], 4uLL).u64[0];
  v91 = vextq_s8(v370, v370, 4uLL).u64[0];
  v92 = vmls_f32(vmul_f32(*v370.f32, v90), v91, *v371[0].f32);
  *v93.f32 = vext_s8(v92, vmls_f32(vmul_f32(v88, *v371[0].f32), *v370.f32, v89), 4uLL);
  v93.i64[1] = v92.u32[0];
  v94 = vextq_s8(v369, v369, 8uLL).u64[0];
  v95 = vextq_s8(v369, v369, 4uLL).u64[0];
  v96 = vmls_f32(vmul_f32(v95, *v371[0].f32), v90, *v369.f32);
  *v97.f32 = vext_s8(v96, vmls_f32(vmul_f32(*v369.f32, v89), *v371[0].f32, v94), 4uLL);
  v97.i64[1] = v96.u32[0];
  v98 = vmls_f32(vmul_f32(*v369.f32, v91), v95, *v370.f32);
  *v99.f32 = vext_s8(v98, vmls_f32(vmul_f32(v94, *v370.f32), *v369.f32, v88), 4uLL);
  v99.i64[1] = v98.u32[0];
  v100 = vmulq_f32(v93, v84);
  v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
  v101 = vpadd_f32(*v100.f32, *v100.f32);
  v102 = vmulq_f32(v97, v84);
  v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
  v103 = vpadd_f32(*v102.f32, *v102.f32);
  v104 = vmulq_f32(v99, v84);
  v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
  v105 = vpadd_f32(*v104.f32, *v104.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v103), vcgez_f32(v101)), vcgez_f32(v105)), 0), *v369.f32).u32[0] == -1)
  {
    v133 = vmulq_f32(v369, v84);
    v134 = vextq_s8(v133, v133, 8uLL).u64[0];
    v135 = vrecpe_f32(v87);
    v136 = 4;
    do
    {
      v135 = vmul_f32(v135, vrecps_f32(v87, v135));
      --v136;
    }

    while (v136);
    v137 = vpadd_f32(*v133.i8, v134);
    v63 = vmulq_n_f32(v84, vmul_f32(v135, vpadd_f32(v137, v137)).f32[0]);
    v63.i32[3] = 0;
    goto LABEL_47;
  }

  v106 = vnegq_f32(v369);
  v106.i32[3] = 0;
  v107 = vnegq_f32(v370);
  v107.i32[3] = 0;
  v108 = vmulq_f32(v106, a12);
  v108.i64[0] = vpaddq_f32(v108, v108).u64[0];
  v109 = vpadd_f32(*v108.f32, *v108.f32);
  v110 = vmulq_f32(a12, v107);
  v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
  v111 = vpadd_f32(*v110.f32, *v110.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v105), vand_s8(vclez_f32(v111), vcgez_f32(v109))), 0), *v369.f32).u32[0] == -1)
  {
    v138 = vsub_f32(v109, v111);
    v139 = vrecpe_f32(v138);
    v140 = 4;
    do
    {
      v139 = vmul_f32(v139, vrecps_f32(v138, v139));
      --v140;
    }

    while (v140);
    v124 = 0;
    v63 = vmlaq_n_f32(v369, a12, vmul_f32(v109, vbsl_s8(vcgt_f32(vabs_f32(v138), 0x3400000034000000), v139, 0)).f32[0]);
    v123 = 2;
    v125 = &v358;
    v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
  }

  else
  {
    v112 = vnegq_f32(v371[0]);
    v112.i32[3] = 0;
    v113 = vmulq_f32(v107, v83);
    v113.i64[0] = vpaddq_f32(v113, v113).u64[0];
    v114 = vpadd_f32(*v113.f32, *v113.f32);
    v115 = vmulq_f32(a12, v112);
    v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
    v116 = vpadd_f32(*v115.f32, *v115.f32);
    v117 = vmulq_f32(v83, v112);
    v117.i64[0] = vpaddq_f32(v117, v117).u64[0];
    v118 = vpadd_f32(*v117.f32, *v117.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v114, v111), vcge_f32(v116, v118)), vclez_f32(v101)), 0), *v369.f32).u32[0] == -1)
    {
      v145 = vsub_f32(v114, v111);
      v146 = vadd_f32(v145, vsub_f32(v116, v118));
      v147 = vrecpe_f32(v146);
      v148 = 4;
      do
      {
        v147 = vmul_f32(v147, vrecps_f32(v146, v147));
        --v148;
      }

      while (v148);
      v149 = vmlaq_n_f32(v370, vsubq_f32(v371[0], v370), vmul_f32(v145, vbsl_s8(vcgt_f32(vabs_f32(v146), 0x3400000034000000), v147, 0)).f32[0]);
      v123 = 2;
      v124 = 1;
      v141 = &v362;
      v125 = &v359;
      v149.i64[1] = vextq_s8(v149, v149, 8uLL).u32[0];
      v143 = v368;
      v142 = v365;
      v144 = v371;
      v63 = v149;
      goto LABEL_46;
    }

    v119 = vmulq_f32(v106, v83);
    v120 = vpaddq_f32(v119, v119);
    *v120.i8 = vpadd_f32(*v120.i8, *v120.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v103), vand_s8(vclez_f32(v118), vcgez_f32(*v120.i8))), 0), *v369.f32).u32[0] == -1)
    {
      v150 = vsub_f32(*v120.i8, v118);
      v151 = vrecpe_f32(v150);
      v152 = 4;
      do
      {
        v151 = vmul_f32(v151, vrecps_f32(v150, v151));
        --v152;
      }

      while (v152);
      v124 = 0;
      v63 = vmlaq_n_f32(v369, v83, vmul_f32(*v120.i8, vbsl_s8(vcgt_f32(vabs_f32(v150), 0x3400000034000000), v151, 0)).f32[0]);
      v123 = 2;
      v141 = &v362;
      v125 = &v359;
      v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
      v143 = v368;
      v142 = v365;
      v144 = v371;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v120.i8), vclez_f32(v109)), 0), *v369.f32).u32[0] == -1)
    {
      v124 = 0;
      v123 = 1;
      v125 = &v358;
    }

    else
    {
      *v120.i8 = vcge_f32(v111, v114);
      *v63.f32 = vdup_lane_s16(vand_s8(*v120.i8, vcgez_f32(v111)), 0);
      *v63.f32 = vuzp1_s8(*v63.f32, *v63.f32);
      v120.i32[0] = -1;
      v121 = v63.i32[0];
      v122 = vdupq_lane_s32(*&vceqq_s32(v63, v120), 0);
      v123 = 1;
      if (v121 == -1)
      {
        v124 = 1;
      }

      else
      {
        v124 = 2;
      }

      v125 = &v358;
      v63 = vbslq_s8(v122, v370, v371[0]);
    }
  }

  v142 = &v364;
  v141 = &v361;
  v143 = &v367;
  v144 = &v370;
LABEL_46:
  v153 = *(&v369 + v124);
  v154 = *v144;
  a12 = *(&v366 + v124);
  v155 = *v143;
  v156 = *(&v363 + v124);
  v157 = *v142;
  v158 = *(&v360 + v124);
  v159 = *v141;
  v160 = *(&v357 + v124);
  v161 = *v125;
  v369 = v153;
  v370 = v154;
  v366 = a12;
  v367 = v155;
  v363 = v156;
  v364 = v157;
  v360 = v158;
  v361 = v159;
  v357 = v160;
  v358 = v161;
  v354 = v123;
LABEL_47:
  v355 = v63;
  v162 = vmulq_f32(v63, v63);
  v162.i64[0] = vpaddq_f32(v162, v162).u64[0];
  v163 = vpadd_f32(*v162.f32, *v162.f32);
  v164 = vrsqrte_f32(v163);
  v165 = 4;
  do
  {
    v164 = vmul_f32(v164, vrsqrts_f32(vmul_f32(v164, v164), v163));
    --v165;
  }

  while (v165);
  v80 = vbsl_s8(vdup_lane_s32(vceqz_f32(v163), 0), v163, vmul_f32(v163, v164));
  v166 = vrecpe_f32(v80);
  v167 = 4;
  do
  {
    *a12.f32 = vrecps_f32(v80, v166);
    v166 = vmul_f32(v166, *a12.f32);
    --v167;
  }

  while (v167);
  v168 = vmulq_n_f32(v63, v166.f32[0]);
  v168.i32[3] = 0;
  v349 = v168;
  v81 = vdupq_lane_s32(vcgt_f32(v80, v25), 0);
  v82 = v63;
LABEL_52:
  v169 = *&v30 + v29.f32[0];
  a12.i32[0] = -1;
  v341 = a12;
  v170 = v80;
  v171.i64[0] = -1;
  v171.i64[1] = -1;
  while (1)
  {
    v172 = v63;
    v173.i64[0] = -1;
    v173.i64[1] = -1;
    *v173.i8 = vmovn_s32(vceqq_s32(v81, v173));
    if (vuzp1_s8(*v173.i8, *v173.i8).u32[0] != -1)
    {
      break;
    }

    v347 = v172;
    v174 = vnegq_f32(v172);
    v174.i32[3] = 0;
    v351 = v80;
    v353 = v174;
    *v175.i64 = physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::support(a1, &v353, &v360 + v354);
    v348 = v175;
    *v176.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v355, &v357 + v354);
    v177 = v349;
    v178 = v176;
    v63 = vsubq_f32(v348, v176);
    v179 = vmulq_f32(v349, v63);
    v179.i64[0] = vpaddq_f32(v179, v179).u64[0];
    v180 = vpadd_f32(*v179.f32, *v179.f32).f32[0];
    if (v180 > v169)
    {
      if (v14)
      {
        v286 = v354;
        *a8 = v354;
        if (v286)
        {
          v287 = &v357;
          v288 = &v360;
          do
          {
            v289 = *v288++;
            *v14++ = v289;
            v290 = *v287++;
            *v13++ = v290;
            --v286;
          }

          while (v286);
        }
      }

      return 0;
    }

    v181 = v351;
    v182 = v354;
    if (v180 > (0.99977 * v351.f32[0]))
    {
      v291 = v346;
      if (!v14)
      {
        goto LABEL_116;
      }

      *a8 = v354;
      if (v182)
      {
        v292 = &v357;
        v293 = &v360;
        v294 = v182;
        do
        {
          v295 = *v293++;
          *v14++ = v295;
          v296 = *v292++;
          *v13++ = v296;
          --v294;
        }

        while (v294);
LABEL_116:
        *(a13 + 32) = v349;
        if (v182 != 3)
        {
          if (v182 == 2)
          {
            v308 = vsubq_f32(v369, v355);
            v309 = vsubq_f32(vsubq_f32(v370, v355), v308);
            v310 = vmulq_f32(v309, v309);
            v310.i64[0] = vpaddq_f32(v310, v310).u64[0];
            v311 = vpadd_f32(*v310.f32, *v310.f32);
            v312 = vrecpe_f32(v311);
            v313 = 4;
            v299 = a5;
            do
            {
              v312 = vmul_f32(v312, vrecps_f32(v311, v312));
              --v313;
            }

            while (v313);
            v314 = vnegq_f32(v308);
            v314.i32[3] = 0;
            v315 = vmulq_f32(v314, v309);
            v315.i64[0] = vpaddq_f32(v315, v315).u64[0];
            v314.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v311), v312, 0), vpadd_f32(*v315.f32, *v315.f32)).u32[0];
            v297 = vmlaq_n_f32(v366, vsubq_f32(v367, v366), v314.f32[0]);
            v297.i64[1] = vextq_s8(v297, v297, 8uLL).u32[0];
            v298 = vmlaq_n_f32(v363, vsubq_f32(v364, v363), v314.f32[0]);
            v298.i64[1] = vextq_s8(v298, v298, 8uLL).u32[0];
          }

          else
          {
            v297 = 0uLL;
            v298 = 0uLL;
            v299 = a5;
            if (v182 == 1)
            {
              v297 = v366;
              v298 = v363;
              if (!a5)
              {
LABEL_137:
                v321 = vmlsq_lane_f32(v297, v177, v342, 0);
                v321.i64[1] = vextq_s8(v321, v321, 8uLL).u32[0];
                v322 = vmlaq_n_f32(v298, v177, v343);
                v322.i64[1] = vextq_s8(v322, v322, 8uLL).u32[0];
                *a13 = v321;
                *(a13 + 16) = v322;
                *(a13 + 64) = vsub_f32(v181, v291);
                return 2;
              }

LABEL_134:
              *a13 = v297;
              *(a13 + 16) = v298;
              result = 2;
              *(a13 + 64) = v181;
              return result;
            }
          }

          if (!v299)
          {
            goto LABEL_137;
          }

          goto LABEL_134;
        }

        v353.i64[0] = 0;
        v356 = 0;
        physx::Gu::barycentricCoordinates(&v355, &v369, &v370, v371, &v353, &v356);
        v177 = v349;
        v181 = v351;
        v291 = v346;
        v316 = vmulq_n_f32(vsubq_f32(v367, v366), v353.f32[0]);
        v316.i32[3] = 0;
        v317 = vmulq_n_f32(vsubq_f32(v368[0], v366), v356.f32[0]);
        v317.i32[3] = 0;
        v318 = vaddq_f32(v316, v317);
        v319 = vmulq_n_f32(vsubq_f32(v364, v363), v353.f32[0]);
        v319.i32[3] = 0;
        v297 = vaddq_f32(v366, v318);
        v320 = vmulq_n_f32(vsubq_f32(v365[0], v363), v356.f32[0]);
        v320.i32[3] = 0;
        v298 = vaddq_f32(v363, vaddq_f32(v319, v320));
      }

      else
      {
        *(a13 + 32) = v349;
        v297 = 0uLL;
        v298 = 0uLL;
      }

      if (!a5)
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }

    *(&v366 + v354) = v348;
    *(&v363 + v182) = v178;
    v354 = v182 + 1;
    *(&v369 + v182) = v63;
    switch(v182)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v369, &v366, &v363, &v360, &v357, &v354);
        v181 = v351;
        break;
      case 2:
        v63 = v369;
        v191 = vsubq_f32(v370, v369);
        v192 = vsubq_f32(v371[0], v369);
        v194 = vmls_f32(vmul_f32(*v191.f32, *&vextq_s8(v192, v192, 4uLL)), *&vextq_s8(v191, v191, 4uLL), *v192.f32);
        *v193.f32 = vext_s8(v194, vmls_f32(vmul_f32(*&vextq_s8(v191, v191, 8uLL), *v192.f32), *v191.f32, *&vextq_s8(v192, v192, 8uLL)), 4uLL);
        v194.i32[1] = 0;
        v354 = 3;
        v195 = vpadd_f32(vmul_f32(*v193.f32, *v193.f32), vmul_f32(v194.u32[0], v194.u32[0]));
        v196 = vpadd_f32(v195, v195);
        if (v196.f32[0] <= 0.00000011921)
        {
          v354 = 2;
          v235 = vmulq_f32(v191, v191);
          v235.i64[0] = vpaddq_f32(v235, v235).u64[0];
          v236 = vpadd_f32(*v235.f32, *v235.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v236), 0), *v369.f32).u32[0] == -1)
          {
LABEL_79:
            v354 = 1;
            break;
          }

          v237 = vnegq_f32(v369);
          v237.i32[3] = 0;
          v238 = vmulq_f32(v237, v191);
          v238.i64[0] = vpaddq_f32(v238, v238).u64[0];
          v239 = vpadd_f32(*v238.f32, *v238.f32);
          v240 = vrecpe_f32(v236);
          v241 = 4;
          do
          {
            v240 = vmul_f32(v240, vrecps_f32(v236, v240));
            --v241;
          }

          while (v241);
          v63 = vmlaq_n_f32(v369, v191, vmax_f32(vmin_f32(vmul_f32(v239, v240), _D9), 0).f32[0]);
          goto LABEL_78;
        }

        *&v193.u32[2] = v194;
        v197 = vextq_s8(v370, v370, 8uLL).u64[0];
        v198 = vextq_s8(v371[0], v371[0], 8uLL).u64[0];
        v199 = vextq_s8(v371[0], v371[0], 4uLL).u64[0];
        v200 = vextq_s8(v370, v370, 4uLL).u64[0];
        v201 = vmls_f32(vmul_f32(*v370.f32, v199), v200, *v371[0].f32);
        *v202.f32 = vext_s8(v201, vmls_f32(vmul_f32(v197, *v371[0].f32), *v370.f32, v198), 4uLL);
        v202.i64[1] = v201.u32[0];
        v203 = vextq_s8(v369, v369, 8uLL).u64[0];
        v204 = vextq_s8(v369, v369, 4uLL).u64[0];
        v205 = vmls_f32(vmul_f32(v204, *v371[0].f32), v199, *v369.f32);
        *v206.f32 = vext_s8(v205, vmls_f32(vmul_f32(*v369.f32, v198), *v371[0].f32, v203), 4uLL);
        v206.i64[1] = v205.u32[0];
        v207 = vmls_f32(vmul_f32(*v369.f32, v200), v204, *v370.f32);
        *v208.f32 = vext_s8(v207, vmls_f32(vmul_f32(v203, *v370.f32), *v369.f32, v197), 4uLL);
        v208.i64[1] = v207.u32[0];
        v209 = vmulq_f32(v202, v193);
        v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
        v210 = vpadd_f32(*v209.f32, *v209.f32);
        v211 = vmulq_f32(v206, v193);
        v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
        v212 = vpadd_f32(*v211.f32, *v211.f32);
        v213 = vmulq_f32(v208, v193);
        v213.i64[0] = vpaddq_f32(v213, v213).u64[0];
        v214 = vpadd_f32(*v213.f32, *v213.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v212), vcgez_f32(v210)), vcgez_f32(v214)), 0), *v369.f32).u32[0] != -1)
        {
          v215 = vnegq_f32(v369);
          v215.i32[3] = 0;
          v216 = vnegq_f32(v370);
          v216.i32[3] = 0;
          v217 = vmulq_f32(v215, v191);
          v217.i64[0] = vpaddq_f32(v217, v217).u64[0];
          v218 = vpadd_f32(*v217.f32, *v217.f32);
          v219 = vmulq_f32(v191, v216);
          v219.i64[0] = vpaddq_f32(v219, v219).u64[0];
          v220 = vpadd_f32(*v219.f32, *v219.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v214), vand_s8(vclez_f32(v220), vcgez_f32(v218))), 0), *v369.f32).u32[0] == -1)
          {
            v247 = vsub_f32(v218, v220);
            v248 = vrecpe_f32(v247);
            v249 = 4;
            do
            {
              v248 = vmul_f32(v248, vrecps_f32(v247, v248));
              --v249;
            }

            while (v249);
            v233 = 0;
            v63 = vmlaq_n_f32(v369, v191, vmul_f32(v218, vbsl_s8(vcgt_f32(vabs_f32(v247), 0x3400000034000000), v248, 0)).f32[0]);
            v232 = 2;
            v234 = &v358;
            v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
            goto LABEL_86;
          }

          v221 = vnegq_f32(v371[0]);
          v221.i32[3] = 0;
          v222 = vmulq_f32(v216, v192);
          v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
          v223 = vpadd_f32(*v222.f32, *v222.f32);
          v224 = vmulq_f32(v191, v221);
          v224.i64[0] = vpaddq_f32(v224, v224).u64[0];
          v225 = vpadd_f32(*v224.f32, *v224.f32);
          v226 = vmulq_f32(v192, v221);
          v226.i64[0] = vpaddq_f32(v226, v226).u64[0];
          v227 = vpadd_f32(*v226.f32, *v226.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v223, v220), vcge_f32(v225, v227)), vclez_f32(v210)), 0), *v369.f32).u32[0] == -1)
          {
            v254 = vsub_f32(v223, v220);
            v255 = vadd_f32(v254, vsub_f32(v225, v227));
            v256 = vrecpe_f32(v255);
            v257 = 4;
            do
            {
              v256 = vmul_f32(v256, vrecps_f32(v255, v256));
              --v257;
            }

            while (v257);
            v258 = vmlaq_n_f32(v370, vsubq_f32(v371[0], v370), vmul_f32(v254, vbsl_s8(vcgt_f32(vabs_f32(v255), 0x3400000034000000), v256, 0)).f32[0]);
            v258.i64[1] = vextq_s8(v258, v258, 8uLL).u32[0];
            v232 = 2;
            v63 = v258;
            v233 = 1;
            v234 = &v359;
          }

          else
          {
            v228 = vmulq_f32(v215, v192);
            v228.i64[0] = vpaddq_f32(v228, v228).u64[0];
            v229 = vpadd_f32(*v228.f32, *v228.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v212), vand_s8(vclez_f32(v227), vcgez_f32(v229))), 0), *v369.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v229), vclez_f32(v218)), 0), *v369.f32).u32[0] == -1)
              {
                v233 = 0;
                v232 = 1;
                v234 = &v358;
              }

              else
              {
                *v63.f32 = vdup_lane_s16(vand_s8(vcge_f32(v220, v223), vcgez_f32(v220)), 0);
                *v63.f32 = vuzp1_s8(*v63.f32, *v63.f32);
                v230 = v63.i32[0];
                v231 = vdupq_lane_s32(*&vceqq_s32(v63, v341), 0);
                v232 = 1;
                if (v230 == -1)
                {
                  v233 = 1;
                }

                else
                {
                  v233 = 2;
                }

                v234 = &v358;
                v63 = vbslq_s8(v231, v370, v371[0]);
              }

LABEL_86:
              v251 = &v364;
              v250 = &v361;
              v252 = &v367;
              v253 = &v370;
LABEL_94:
              v262 = *(&v369 + v233);
              v263 = *v253;
              v264 = *(&v366 + v233);
              v265 = *v252;
              v266 = *(&v363 + v233);
              v267 = *v251;
              v268 = *(&v360 + v233);
              v269 = *v250;
              v270 = *(&v357 + v233);
              v271 = *v234;
              v369 = v262;
              v370 = v263;
              v366 = v264;
              v367 = v265;
              v363 = v266;
              v364 = v267;
              v360 = v268;
              v361 = v269;
              v357 = v270;
              v358 = v271;
              v354 = v232;
              break;
            }

            v259 = vsub_f32(v229, v227);
            v260 = vrecpe_f32(v259);
            v261 = 4;
            do
            {
              v260 = vmul_f32(v260, vrecps_f32(v259, v260));
              --v261;
            }

            while (v261);
            v233 = 0;
            v63 = vmlaq_n_f32(v369, v192, vmul_f32(v229, vbsl_s8(vcgt_f32(vabs_f32(v259), 0x3400000034000000), v260, 0)).f32[0]);
            v232 = 2;
            v234 = &v359;
            v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
          }

          v251 = v365;
          v250 = &v362;
          v252 = v368;
          v253 = v371;
          goto LABEL_94;
        }

        v242 = vmulq_f32(v369, v193);
        v243 = vextq_s8(v242, v242, 8uLL).u64[0];
        v244 = vrecpe_f32(v196);
        v245 = 4;
        do
        {
          v244 = vmul_f32(v244, vrecps_f32(v196, v244));
          --v245;
        }

        while (v245);
        v246 = vpadd_f32(*v242.i8, v243);
        v63 = vmulq_n_f32(v193, vmul_f32(v244, vpadd_f32(v246, v246)).f32[0]);
        v63.i32[3] = 0;
        break;
      case 1:
        v63 = v369;
        v183 = vsubq_f32(v370, v369);
        v184 = vmulq_f32(v183, v183);
        v184.i64[0] = vpaddq_f32(v184, v184).u64[0];
        v185 = vpadd_f32(*v184.f32, *v184.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v185), 0), *v369.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v186 = vnegq_f32(v369);
        v186.i32[3] = 0;
        v187 = vmulq_f32(v186, v183);
        v187.i64[0] = vpaddq_f32(v187, v187).u64[0];
        v188 = vpadd_f32(*v187.f32, *v187.f32);
        v189 = vrecpe_f32(v185);
        v190 = 4;
        do
        {
          v189 = vmul_f32(v189, vrecps_f32(v185, v189));
          --v190;
        }

        while (v190);
        v63 = vmlaq_n_f32(v369, v183, vmax_f32(vmin_f32(vmul_f32(v188, v189), _D9), 0).f32[0]);
LABEL_78:
        v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
        break;
    }

    v355 = v63;
    v272 = vmulq_f32(v63, v63);
    v272.i64[0] = vpaddq_f32(v272, v272).u64[0];
    v273 = vpadd_f32(*v272.f32, *v272.f32);
    v274 = vrsqrte_f32(v273);
    v275 = 4;
    do
    {
      v274 = vmul_f32(v274, vrsqrts_f32(vmul_f32(v274, v274), v273));
      --v275;
    }

    while (v275);
    v80 = vbsl_s8(vdup_lane_s32(vceqz_f32(v273), 0), v273, vmul_f32(v273, v274));
    v276 = vrecpe_f32(v80);
    v277 = 4;
    do
    {
      v276 = vmul_f32(v276, vrecps_f32(v80, v276));
      --v277;
    }

    while (v277);
    v278 = vmulq_n_f32(v63, v276.f32[0]);
    v278.i32[3] = 0;
    v349 = v278;
    *v278.f32 = vcgt_f32(v181, v80);
    v171 = vdupq_lane_s32(*v278.f32, 0);
    v81 = vdupq_lane_s32(vand_s8(vcgt_f32(v80, v25), *v278.f32), 0);
    v170 = v181;
    v82 = v347;
  }

  v279 = vmovn_s32(vceqzq_s32(v171));
  v280 = v354;
  if (vuzp1_s8(v279, v279).u32[0] != -1)
  {
    if (v14)
    {
      *a8 = v354;
      if (v280)
      {
        v281 = &v357;
        v282 = &v360;
        do
        {
          v283 = *v282++;
          *v14++ = v283;
          v284 = *v281++;
          *v13++ = v284;
          --v280;
        }

        while (v280);
      }
    }

    return 5;
  }

  v300 = v346;
  if (v14)
  {
    v301 = v354 - 1;
    *a8 = v354 - 1;
    if (v280 != 1)
    {
      v302 = &v357;
      v303 = &v360;
      do
      {
        v304 = *v303++;
        *v14++ = v304;
        v305 = *v302++;
        *v13++ = v305;
        --v301;
      }

      while (v301);
      goto LABEL_125;
    }

LABEL_128:
    v306 = v366;
    v307 = v363;
  }

  else
  {
LABEL_125:
    v355 = v82;
    if (v280 == 3)
    {
      v353.i64[0] = 0;
      v356 = 0;
      v352 = v82;
      physx::Gu::barycentricCoordinates(&v355, &v369, &v370, v371, &v353, &v356);
      v300 = v346;
      v331 = vmulq_n_f32(vsubq_f32(v367, v366), v353.f32[0]);
      v331.i32[3] = 0;
      v332 = vmulq_n_f32(vsubq_f32(v368[0], v366), v356.f32[0]);
      v332.i32[3] = 0;
      v333 = vaddq_f32(v331, v332);
      v334 = vmulq_n_f32(vsubq_f32(v364, v363), v353.f32[0]);
      v334.i32[3] = 0;
      v306 = vaddq_f32(v366, v333);
      v335 = vmulq_n_f32(vsubq_f32(v365[0], v363), v356.f32[0]);
      v82 = v352;
      v335.i32[3] = 0;
      v307 = vaddq_f32(v363, vaddq_f32(v334, v335));
    }

    else if (v280 == 2)
    {
      v323 = vsubq_f32(v369, v82);
      v324 = vsubq_f32(vsubq_f32(v370, v82), v323);
      v325 = vmulq_f32(v324, v324);
      v325.i64[0] = vpaddq_f32(v325, v325).u64[0];
      v326 = vpadd_f32(*v325.f32, *v325.f32);
      v327 = vrecpe_f32(v326);
      v328 = 4;
      do
      {
        v327 = vmul_f32(v327, vrecps_f32(v326, v327));
        --v328;
      }

      while (v328);
      v329 = vnegq_f32(v323);
      v329.i32[3] = 0;
      v330 = vmulq_f32(v329, v324);
      v330.i64[0] = vpaddq_f32(v330, v330).u64[0];
      v329.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v326), v327, 0), vpadd_f32(*v330.f32, *v330.f32)).u32[0];
      v306 = vmlaq_n_f32(v366, vsubq_f32(v367, v366), v329.f32[0]);
      v306.i64[1] = vextq_s8(v306, v306, 8uLL).u32[0];
      v307 = vmlaq_n_f32(v363, vsubq_f32(v364, v363), v329.f32[0]);
      v307.i64[1] = vextq_s8(v307, v307, 8uLL).u32[0];
    }

    else
    {
      v306 = 0uLL;
      v307 = 0uLL;
      if (v280 == 1)
      {
        goto LABEL_128;
      }
    }
  }

  v336 = vrecpe_f32(v170);
  v337 = 4;
  do
  {
    v336 = vmul_f32(v336, vrecps_f32(v170, v336));
    --v337;
  }

  while (v337);
  v338 = vmulq_n_f32(v82, v336.f32[0]);
  v338.i32[3] = 0;
  *(a13 + 32) = v338;
  *(a13 + 48) = v349;
  if (a5)
  {
    *a13 = v306;
    *(a13 + 16) = v307;
    *(a13 + 64) = v170;
  }

  else
  {
    v339 = vmlsq_lane_f32(v306, v338, v342, 0);
    v339.i64[1] = vextq_s8(v339, v339, 8uLL).u32[0];
    v340 = vmlaq_n_f32(v307, v338, v343);
    v340.i64[1] = vextq_s8(v340, v340, 8uLL).u32[0];
    *a13 = v339;
    *(a13 + 16) = v340;
    *(a13 + 64) = vsub_f32(v170, v300);
    if (vcge_f32(v300, v170).u32[0])
    {
      return 2;
    }
  }

  return 4;
}

double physx::Gu::LocalConvex<physx::Gu::BoxV>::supportPoint(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 48);
  v3 = vnegq_f32(v2);
  v3.i32[3] = 0;
  *&result = vbslq_s8(physx::boxVertexTable[a2], v2, v3).u64[0];
  return result;
}

double physx::Gu::LocalConvex<physx::Gu::BoxV>::support(uint64_t a1, float32x4_t *a2)
{
  v2 = *(*(a1 + 8) + 48);
  v3 = vnegq_f32(v2);
  v3.i32[3] = 0;
  *&result = vbslq_s8(vcgtzq_f32(*a2), v2, v3).u64[0];
  return result;
}

double physx::Gu::LocalConvex<physx::Gu::BoxV>::support(uint64_t a1, float32x4_t *a2, unsigned __int32 *a3)
{
  v3 = *(a1 + 8);
  v4 = vcgtzq_f32(*a2);
  v5 = vandq_s8(v4, xmmword_1E3102070);
  v5.i64[0] = vpaddq_s32(v5, v5).u64[0];
  *a3 = vpadd_s32(*v5.i8, *v5.i8).u32[0] & 7;
  v6 = v3[3];
  v7 = vnegq_f32(v6);
  v7.i32[3] = 0;
  *&result = vbslq_s8(v4, v6, v7).u64[0];
  return result;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t *a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, double a9, double a10, int8x8_t a11, float32x4_t a12, int8x8_t a13, uint64_t a14)
{
  v15 = a7;
  v16 = a6;
  v359 = *MEMORY[0x1E69E9840];
  v19 = *(a1 + 8);
  v20 = (v19 + 20);
  v21 = vld1_dup_f32(v20);
  v22 = *(a2 + 8);
  v23 = &v22[1].f32[1];
  v24 = vld1_dup_f32(v23);
  a11.i32[0] = *(v19 + 16);
  a12.i32[0] = v22[1].i32[0];
  a13.i32[0] = -*(v19 + 32);
  v25 = vand_s8(a13, a11);
  v26 = vdup_lane_s32(v25, 0);
  v25.i32[0] = -v22[2].u8[0];
  v27 = vdup_lane_s32(vand_s8(v25, *a12.f32), 0);
  v28 = vmul_f32(vmin_f32(v21, v24), vdup_n_s32(0x3DCCCCCDu));
  v328 = v26;
  v329 = v27.f32[0];
  *&v14 = vadd_f32(v26, v27);
  v29 = *a4;
  v341 = 0uLL;
  v340 = 0;
  v30 = *a8;
  __asm { FMOV            V9.2S, #1.0 }

  v332 = v14;
  if (!*a8)
  {
    v52 = vmulq_f32(*a3, *a3);
    v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
    v44 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v52.f32, *v52.f32)), 0)), *a3, xmmword_1E3047670);
    v341 = v44;
    v53 = vmulq_f32(v44, v44);
    v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
    v54 = vpadd_f32(*v53.f32, *v53.f32);
    v55 = vrsqrte_f32(v54);
    v56 = 4;
    do
    {
      v55 = vmul_f32(v55, vrsqrts_f32(vmul_f32(v55, v55), v54));
      --v56;
    }

    while (v56);
    v57 = vbsl_s8(vdup_lane_s32(vceqz_f32(v54), 0), v54, vmul_f32(v54, v55));
    v58 = vrecpe_f32(v57);
    v59 = 4;
    do
    {
      *a12.f32 = vrecps_f32(v57, v58);
      v58 = vmul_f32(v58, *a12.f32);
      --v59;
    }

    while (v59);
    v60 = vmulq_n_f32(v44, v58.f32[0]);
    v60.i32[3] = 0;
    v61 = vneg_f32(0x80000000800000);
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v63 = 0uLL;
    goto LABEL_52;
  }

  v36 = 0;
  v37 = v19 + 48;
  v38 = v22[3];
  v39 = vnegq_f32(v38);
  v39.i32[3] = 0;
  v40 = -1;
  do
  {
    v41 = a6[v36];
    *(&v347 + v36) = v41;
    v42 = a7[v36];
    *(&v344 + v36) = v42;
    a12 = *(v37 + 16 * (1 - v41));
    v43 = vbslq_s8(physx::boxVertexTable[v42], v38, v39);
    v44 = vsubq_f32(a12, v43);
    *(&v353 + v36) = a12;
    *(&v350 + v36) = v43;
    *(&v356 + v36) = v44;
    ++v40;
    ++v36;
  }

  while (v30 != v36);
  v340 = v30;
  if (v40 == 3)
  {
    v336 = v29;
    physx::Gu::closestPtPointTetrahedron(&v356, &v353, &v350, &v347, &v344, &v340);
    LODWORD(v29) = v336;
    v14 = v332;
    goto LABEL_47;
  }

  if (v40 != 2)
  {
    if (v40 != 1)
    {
      goto LABEL_47;
    }

    v44 = v356;
    v45 = vsubq_f32(v357, v356);
    v46 = vmulq_f32(v45, v45);
    v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
    v47 = vpadd_f32(*v46.f32, *v46.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v47), 0), *v356.f32).u32[0] != -1)
    {
      v48 = vnegq_f32(v356);
      v48.i32[3] = 0;
      v49 = vmulq_f32(v48, v45);
      a12 = vpaddq_f32(v49, v49);
      *a12.f32 = vpadd_f32(*a12.f32, *a12.f32);
      v50 = vrecpe_f32(v47);
      v51 = 4;
      do
      {
        v50 = vmul_f32(v50, vrecps_f32(v47, v50));
        --v51;
      }

      while (v51);
      v44 = vmlaq_n_f32(v356, v45, vmax_f32(vmin_f32(vmul_f32(*a12.f32, v50), _D9), 0).f32[0]);
LABEL_31:
      v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v340 = 1;
    goto LABEL_47;
  }

  v340 = 3;
  v44 = v356;
  a12 = vsubq_f32(v357, v356);
  v64 = vsubq_f32(v358[0], v356);
  v66 = vmls_f32(vmul_f32(*a12.f32, *&vextq_s8(v64, v64, 4uLL)), *&vextq_s8(a12, a12, 4uLL), *v64.f32);
  *v65.f32 = vext_s8(v66, vmls_f32(vmul_f32(*&vextq_s8(a12, a12, 8uLL), *v64.f32), *a12.f32, *&vextq_s8(v64, v64, 8uLL)), 4uLL);
  v66.i32[1] = 0;
  v67 = vpadd_f32(vmul_f32(*v65.f32, *v65.f32), vmul_f32(v66.u32[0], v66.u32[0]));
  v68 = vpadd_f32(v67, v67);
  if (v68.f32[0] <= 0.00000011921)
  {
    v340 = 2;
    v107 = vmulq_f32(a12, a12);
    v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
    v108 = vpadd_f32(*v107.f32, *v107.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v108), 0), *v356.f32).u32[0] != -1)
    {
      v109 = vnegq_f32(v356);
      v109.i32[3] = 0;
      v110 = vmulq_f32(v109, a12);
      v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
      v111 = vpadd_f32(*v110.f32, *v110.f32);
      v112 = vrecpe_f32(v108);
      v113 = 4;
      do
      {
        v112 = vmul_f32(v112, vrecps_f32(v108, v112));
        --v113;
      }

      while (v113);
      v44 = vmlaq_n_f32(v356, a12, vmax_f32(vmin_f32(vmul_f32(v111, v112), _D9), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v65.u32[2] = v66;
  v69 = vextq_s8(v357, v357, 8uLL).u64[0];
  v70 = vextq_s8(v358[0], v358[0], 8uLL).u64[0];
  v71 = vextq_s8(v358[0], v358[0], 4uLL).u64[0];
  v72 = vextq_s8(v357, v357, 4uLL).u64[0];
  v73 = vmls_f32(vmul_f32(*v357.f32, v71), v72, *v358[0].i8);
  *v74.f32 = vext_s8(v73, vmls_f32(vmul_f32(v69, *v358[0].i8), *v357.f32, v70), 4uLL);
  v74.i64[1] = v73.u32[0];
  v75 = vextq_s8(v356, v356, 8uLL).u64[0];
  v76 = vextq_s8(v356, v356, 4uLL).u64[0];
  v77 = vmls_f32(vmul_f32(v76, *v358[0].i8), v71, *v356.f32);
  *v78.f32 = vext_s8(v77, vmls_f32(vmul_f32(*v356.f32, v70), *v358[0].i8, v75), 4uLL);
  v78.i64[1] = v77.u32[0];
  v79 = vmls_f32(vmul_f32(*v356.f32, v72), v76, *v357.f32);
  *v80.f32 = vext_s8(v79, vmls_f32(vmul_f32(v75, *v357.f32), *v356.f32, v69), 4uLL);
  v80.i64[1] = v79.u32[0];
  v81 = vmulq_f32(v74, v65);
  v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
  v82 = vpadd_f32(*v81.f32, *v81.f32);
  v83 = vmulq_f32(v78, v65);
  v83.i64[0] = vpaddq_f32(v83, v83).u64[0];
  v84 = vpadd_f32(*v83.f32, *v83.f32);
  v85 = vmulq_f32(v80, v65);
  v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
  v86 = vpadd_f32(*v85.f32, *v85.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v84), vcgez_f32(v82)), vcgez_f32(v86)), 0), *v356.f32).u32[0] == -1)
  {
    v114 = vmulq_f32(v356, v65);
    v115 = vextq_s8(v114, v114, 8uLL).u64[0];
    v116 = vrecpe_f32(v68);
    v117 = 4;
    do
    {
      v116 = vmul_f32(v116, vrecps_f32(v68, v116));
      --v117;
    }

    while (v117);
    v118 = vpadd_f32(*v114.i8, v115);
    v44 = vmulq_n_f32(v65, vmul_f32(v116, vpadd_f32(v118, v118)).f32[0]);
    v44.i32[3] = 0;
    goto LABEL_47;
  }

  v87 = vnegq_f32(v356);
  v87.i32[3] = 0;
  v88 = vnegq_f32(v357);
  v88.i32[3] = 0;
  v89 = vmulq_f32(v87, a12);
  v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
  v90 = vpadd_f32(*v89.f32, *v89.f32);
  v91 = vmulq_f32(a12, v88);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  v92 = vpadd_f32(*v91.f32, *v91.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v86), vand_s8(vclez_f32(v92), vcgez_f32(v90))), 0), *v356.f32).u32[0] == -1)
  {
    v119 = vsub_f32(v90, v92);
    v120 = vrecpe_f32(v119);
    v121 = 4;
    do
    {
      v120 = vmul_f32(v120, vrecps_f32(v119, v120));
      --v121;
    }

    while (v121);
    v105 = 0;
    v44 = vmlaq_n_f32(v356, a12, vmul_f32(v90, vbsl_s8(vcgt_f32(vabs_f32(v119), 0x3400000034000000), v120, 0)).f32[0]);
    v104 = 2;
    v106 = &v345;
    v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
  }

  else
  {
    v93 = vnegq_f32(v358[0]);
    v93.i32[3] = 0;
    v94 = vmulq_f32(v88, v64);
    v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
    v95 = vpadd_f32(*v94.f32, *v94.f32);
    v96 = vmulq_f32(a12, v93);
    v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
    v97 = vpadd_f32(*v96.f32, *v96.f32);
    v98 = vmulq_f32(v64, v93);
    v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
    v99 = vpadd_f32(*v98.f32, *v98.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v95, v92), vcge_f32(v97, v99)), vclez_f32(v82)), 0), *v356.f32).u32[0] == -1)
    {
      v126 = vsub_f32(v95, v92);
      v127 = vadd_f32(v126, vsub_f32(v97, v99));
      v128 = vrecpe_f32(v127);
      v129 = 4;
      do
      {
        v128 = vmul_f32(v128, vrecps_f32(v127, v128));
        --v129;
      }

      while (v129);
      v130 = vmlaq_n_f32(v357, vsubq_f32(v358[0], v357), vmul_f32(v126, vbsl_s8(vcgt_f32(vabs_f32(v127), 0x3400000034000000), v128, 0)).f32[0]);
      v104 = 2;
      v105 = 1;
      v122 = &v349;
      v106 = &v346;
      v130.i64[1] = vextq_s8(v130, v130, 8uLL).u32[0];
      v124 = v355;
      v123 = v352;
      v125 = v358;
      v44 = v130;
      goto LABEL_46;
    }

    v100 = vmulq_f32(v87, v64);
    v101 = vpaddq_f32(v100, v100);
    *v101.i8 = vpadd_f32(*v101.i8, *v101.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v84), vand_s8(vclez_f32(v99), vcgez_f32(*v101.i8))), 0), *v356.f32).u32[0] == -1)
    {
      v131 = vsub_f32(*v101.i8, v99);
      v132 = vrecpe_f32(v131);
      v133 = 4;
      do
      {
        v132 = vmul_f32(v132, vrecps_f32(v131, v132));
        --v133;
      }

      while (v133);
      v105 = 0;
      v44 = vmlaq_n_f32(v356, v64, vmul_f32(*v101.i8, vbsl_s8(vcgt_f32(vabs_f32(v131), 0x3400000034000000), v132, 0)).f32[0]);
      v104 = 2;
      v122 = &v349;
      v106 = &v346;
      v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
      v124 = v355;
      v123 = v352;
      v125 = v358;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v101.i8), vclez_f32(v90)), 0), *v356.f32).u32[0] == -1)
    {
      v105 = 0;
      v104 = 1;
      v106 = &v345;
    }

    else
    {
      *v101.i8 = vcge_f32(v92, v95);
      *v44.f32 = vdup_lane_s16(vand_s8(*v101.i8, vcgez_f32(v92)), 0);
      *v44.f32 = vuzp1_s8(*v44.f32, *v44.f32);
      v101.i32[0] = -1;
      v102 = v44.i32[0];
      v103 = vdupq_lane_s32(*&vceqq_s32(v44, v101), 0);
      v104 = 1;
      if (v102 == -1)
      {
        v105 = 1;
      }

      else
      {
        v105 = 2;
      }

      v106 = &v345;
      v44 = vbslq_s8(v103, v357, v358[0]);
    }
  }

  v123 = &v351;
  v122 = &v348;
  v124 = &v354;
  v125 = &v357;
LABEL_46:
  v134 = *(&v356 + v105);
  v135 = *v125;
  a12 = *(&v353 + v105);
  v136 = *v124;
  v137 = *(&v350 + v105);
  v138 = *v123;
  v139 = *(&v347 + v105);
  v140 = *v122;
  v141 = *(&v344 + v105);
  v142 = *v106;
  v356 = v134;
  v357 = v135;
  v353 = a12;
  v354 = v136;
  v350 = v137;
  v351 = v138;
  v347 = v139;
  v348 = v140;
  v344 = v141;
  v345 = v142;
  v340 = v104;
LABEL_47:
  v341 = v44;
  v143 = vmulq_f32(v44, v44);
  v143.i64[0] = vpaddq_f32(v143, v143).u64[0];
  v144 = vpadd_f32(*v143.f32, *v143.f32);
  v145 = vrsqrte_f32(v144);
  v146 = 4;
  do
  {
    v145 = vmul_f32(v145, vrsqrts_f32(vmul_f32(v145, v145), v144));
    --v146;
  }

  while (v146);
  v61 = vbsl_s8(vdup_lane_s32(vceqz_f32(v144), 0), v144, vmul_f32(v144, v145));
  v147 = vrecpe_f32(v61);
  v148 = 4;
  do
  {
    *a12.f32 = vrecps_f32(v61, v147);
    v147 = vmul_f32(v147, *a12.f32);
    --v148;
  }

  while (v148);
  v60 = vmulq_n_f32(v44, v147.f32[0]);
  v60.i32[3] = 0;
  v62 = vdupq_lane_s32(vcgt_f32(v61, v28), 0);
  v63 = v44;
LABEL_52:
  v149 = *&v29 + *&v14;
  v150.i64[0] = -1;
  v150.i64[1] = -1;
  v151 = xmmword_1E3102070;
  a12.i32[0] = -1;
  v327 = a12;
  v152 = v61;
  v153.i64[0] = -1;
  v153.i64[1] = -1;
  while (1)
  {
    v154 = v44;
    v155 = vmovn_s32(vceqq_s32(v62, v150));
    if (vuzp1_s8(v155, v155).u32[0] != -1)
    {
      break;
    }

    *&v14 = v61;
    v156 = vnegq_f32(v154);
    v156.i32[3] = 0;
    v157 = v340;
    v158 = *(a1 + 8);
    v159 = vmulq_f32(v156, v158[3]);
    v159.i64[0] = vpaddq_f32(v159, v159).u64[0];
    v160 = vmulq_f32(v156, v158[4]);
    v160.i64[0] = vpaddq_f32(v160, v160).u64[0];
    *v160.f32 = vand_s8(vcgt_f32(vpadd_f32(*v159.f32, *v159.f32), vpadd_f32(*v160.f32, *v160.f32)), 0x100000001);
    *(&v347 + v340) = v160.i32[0];
    v161 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vdupq_lane_s32(*v160.f32, 0), 0x1FuLL)), v158[3], v158[4]);
    v162 = *(a2 + 8);
    v163 = vcgtzq_f32(v154);
    v164 = vandq_s8(v163, v151);
    v164.i64[0] = vpaddq_s32(v164, v164).u64[0];
    *(&v344 + v157) = vpadd_s32(*v164.i8, *v164.i8).u8[0] & 7;
    v165 = v162[3];
    v166 = vnegq_f32(v165);
    v166.i32[3] = 0;
    v167 = vbslq_s8(v163, v165, v166);
    v44 = vsubq_f32(v161, v167);
    v168 = vmulq_f32(v60, v44);
    v168.i64[0] = vpaddq_f32(v168, v168).u64[0];
    v169 = vpadd_f32(*v168.f32, *v168.f32).f32[0];
    if (v169 > v149)
    {
      if (v16)
      {
        *a8 = v157;
        if (v157)
        {
          v273 = &v344;
          v274 = &v347;
          do
          {
            v275 = *v274++;
            *v16++ = v275;
            v276 = *v273++;
            *v15++ = v276;
            --v157;
          }

          while (v157);
        }
      }

      return 0;
    }

    if (v169 > (0.99977 * *&v14))
    {
      v277 = v332;
      if (!v16)
      {
        goto LABEL_116;
      }

      *a8 = v157;
      if (v157)
      {
        v278 = &v344;
        v279 = &v347;
        v280 = v157;
        do
        {
          v281 = *v279++;
          *v16++ = v281;
          v282 = *v278++;
          *v15++ = v282;
          --v280;
        }

        while (v280);
LABEL_116:
        *(a14 + 32) = v60;
        if (v157 != 3)
        {
          if (v157 == 2)
          {
            v294 = vsubq_f32(v356, v154);
            v295 = vsubq_f32(vsubq_f32(v357, v154), v294);
            v296 = vmulq_f32(v295, v295);
            v296.i64[0] = vpaddq_f32(v296, v296).u64[0];
            v297 = vpadd_f32(*v296.f32, *v296.f32);
            v298 = vrecpe_f32(v297);
            v299 = 4;
            v285 = a5;
            do
            {
              v298 = vmul_f32(v298, vrecps_f32(v297, v298));
              --v299;
            }

            while (v299);
            v300 = vnegq_f32(v294);
            v300.i32[3] = 0;
            v301 = vmulq_f32(v300, v295);
            v301.i64[0] = vpaddq_f32(v301, v301).u64[0];
            v300.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v297), v298, 0), vpadd_f32(*v301.f32, *v301.f32)).u32[0];
            v283 = vmlaq_n_f32(v353, vsubq_f32(v354, v353), v300.f32[0]);
            v283.i64[1] = vextq_s8(v283, v283, 8uLL).u32[0];
            v284 = vmlaq_n_f32(v350, vsubq_f32(v351, v350), v300.f32[0]);
            v284.i64[1] = vextq_s8(v284, v284, 8uLL).u32[0];
          }

          else
          {
            v283 = 0uLL;
            v284 = 0uLL;
            v285 = a5;
            if (v157 == 1)
            {
              v283 = v353;
              v284 = v350;
              if (!a5)
              {
LABEL_137:
                v307 = vmlsq_lane_f32(v283, v60, v328, 0);
                v307.i64[1] = vextq_s8(v307, v307, 8uLL).u32[0];
                v308 = vmlaq_n_f32(v284, v60, v329);
                v308.i64[1] = vextq_s8(v308, v308, 8uLL).u32[0];
                *a14 = v307;
                *(a14 + 16) = v308;
                *(a14 + 64) = vsub_f32(*&v14, v277);
                return 2;
              }

LABEL_134:
              *a14 = v283;
              *(a14 + 16) = v284;
              result = 2;
              *(a14 + 64) = v14;
              return result;
            }
          }

          if (!v285)
          {
            goto LABEL_137;
          }

          goto LABEL_134;
        }

        v342 = 0;
        v343 = 0;
        v334 = v60;
        v338 = v14;
        physx::Gu::barycentricCoordinates(&v341, &v356, &v357, v358, &v343, &v342);
        v277 = v332;
        v302 = vmulq_n_f32(vsubq_f32(v354, v353), v343.f32[0]);
        v302.i32[3] = 0;
        v303 = vmulq_n_f32(vsubq_f32(v355[0], v353), v342.f32[0]);
        v303.i32[3] = 0;
        v304 = vaddq_f32(v302, v303);
        v305 = vmulq_n_f32(vsubq_f32(v351, v350), v343.f32[0]);
        v305.i32[3] = 0;
        v283 = vaddq_f32(v353, v304);
        v306 = vmulq_n_f32(vsubq_f32(v352[0], v350), v342.f32[0]);
        v60 = v334;
        *&v14 = v338;
        v306.i32[3] = 0;
        v284 = vaddq_f32(v350, vaddq_f32(v305, v306));
      }

      else
      {
        *(a14 + 32) = v60;
        v283 = 0uLL;
        v284 = 0uLL;
      }

      if (!a5)
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }

    *(&v353 + v157) = v161;
    *(&v350 + v157) = v167;
    v340 = v157 + 1;
    *(&v356 + v157) = v44;
    switch(v157)
    {
      case 3:
        v333 = v154;
        v337 = v14;
        physx::Gu::closestPtPointTetrahedron(&v356, &v353, &v350, &v347, &v344, &v340);
        v151 = xmmword_1E3102070;
        v154 = v333;
        v150.i64[0] = -1;
        v150.i64[1] = -1;
        v14 = v337;
        break;
      case 2:
        v44 = v356;
        v178 = vsubq_f32(v357, v356);
        v179 = vsubq_f32(v358[0], v356);
        v181 = vmls_f32(vmul_f32(*v178.f32, *&vextq_s8(v179, v179, 4uLL)), *&vextq_s8(v178, v178, 4uLL), *v179.f32);
        *v180.f32 = vext_s8(v181, vmls_f32(vmul_f32(*&vextq_s8(v178, v178, 8uLL), *v179.f32), *v178.f32, *&vextq_s8(v179, v179, 8uLL)), 4uLL);
        v181.i32[1] = 0;
        v340 = 3;
        v182 = vpadd_f32(vmul_f32(*v180.f32, *v180.f32), vmul_f32(v181.u32[0], v181.u32[0]));
        v183 = vpadd_f32(v182, v182);
        if (v183.f32[0] <= 0.00000011921)
        {
          v340 = 2;
          v222 = vmulq_f32(v178, v178);
          v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
          v223 = vpadd_f32(*v222.f32, *v222.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v223), 0), *v356.f32).u32[0] == -1)
          {
LABEL_79:
            v340 = 1;
            break;
          }

          v224 = vnegq_f32(v356);
          v224.i32[3] = 0;
          v225 = vmulq_f32(v224, v178);
          v225.i64[0] = vpaddq_f32(v225, v225).u64[0];
          v226 = vpadd_f32(*v225.f32, *v225.f32);
          v227 = vrecpe_f32(v223);
          v228 = 4;
          do
          {
            v227 = vmul_f32(v227, vrecps_f32(v223, v227));
            --v228;
          }

          while (v228);
          v44 = vmlaq_n_f32(v356, v178, vmax_f32(vmin_f32(vmul_f32(v226, v227), _D9), 0).f32[0]);
          goto LABEL_78;
        }

        *&v180.u32[2] = v181;
        v184 = vextq_s8(v357, v357, 8uLL).u64[0];
        v185 = vextq_s8(v358[0], v358[0], 8uLL).u64[0];
        v186 = vextq_s8(v358[0], v358[0], 4uLL).u64[0];
        v187 = vextq_s8(v357, v357, 4uLL).u64[0];
        v188 = vmls_f32(vmul_f32(*v357.f32, v186), v187, *v358[0].i8);
        *v189.f32 = vext_s8(v188, vmls_f32(vmul_f32(v184, *v358[0].i8), *v357.f32, v185), 4uLL);
        v189.i64[1] = v188.u32[0];
        v190 = vextq_s8(v356, v356, 8uLL).u64[0];
        v191 = vextq_s8(v356, v356, 4uLL).u64[0];
        v192 = vmls_f32(vmul_f32(v191, *v358[0].i8), v186, *v356.f32);
        *v193.f32 = vext_s8(v192, vmls_f32(vmul_f32(*v356.f32, v185), *v358[0].i8, v190), 4uLL);
        v193.i64[1] = v192.u32[0];
        v194 = vmls_f32(vmul_f32(*v356.f32, v187), v191, *v357.f32);
        *v195.f32 = vext_s8(v194, vmls_f32(vmul_f32(v190, *v357.f32), *v356.f32, v184), 4uLL);
        v195.i64[1] = v194.u32[0];
        v196 = vmulq_f32(v189, v180);
        v196.i64[0] = vpaddq_f32(v196, v196).u64[0];
        v197 = vpadd_f32(*v196.f32, *v196.f32);
        v198 = vmulq_f32(v193, v180);
        v198.i64[0] = vpaddq_f32(v198, v198).u64[0];
        v199 = vpadd_f32(*v198.f32, *v198.f32);
        v200 = vmulq_f32(v195, v180);
        v200.i64[0] = vpaddq_f32(v200, v200).u64[0];
        v201 = vpadd_f32(*v200.f32, *v200.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v199), vcgez_f32(v197)), vcgez_f32(v201)), 0), *v356.f32).u32[0] != -1)
        {
          v202 = vnegq_f32(v356);
          v202.i32[3] = 0;
          v203 = vnegq_f32(v357);
          v203.i32[3] = 0;
          v204 = vmulq_f32(v202, v178);
          v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
          v205 = vpadd_f32(*v204.f32, *v204.f32);
          v206 = vmulq_f32(v178, v203);
          v206.i64[0] = vpaddq_f32(v206, v206).u64[0];
          v207 = vpadd_f32(*v206.f32, *v206.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v201), vand_s8(vclez_f32(v207), vcgez_f32(v205))), 0), *v356.f32).u32[0] == -1)
          {
            v234 = vsub_f32(v205, v207);
            v235 = vrecpe_f32(v234);
            v236 = 4;
            do
            {
              v235 = vmul_f32(v235, vrecps_f32(v234, v235));
              --v236;
            }

            while (v236);
            v220 = 0;
            v44 = vmlaq_n_f32(v356, v178, vmul_f32(v205, vbsl_s8(vcgt_f32(vabs_f32(v234), 0x3400000034000000), v235, 0)).f32[0]);
            v219 = 2;
            v221 = &v345;
            v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
            goto LABEL_86;
          }

          v208 = vnegq_f32(v358[0]);
          v208.i32[3] = 0;
          v209 = vmulq_f32(v203, v179);
          v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
          v210 = vpadd_f32(*v209.f32, *v209.f32);
          v211 = vmulq_f32(v178, v208);
          v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
          v212 = vpadd_f32(*v211.f32, *v211.f32);
          v213 = vmulq_f32(v179, v208);
          v213.i64[0] = vpaddq_f32(v213, v213).u64[0];
          v214 = vpadd_f32(*v213.f32, *v213.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v210, v207), vcge_f32(v212, v214)), vclez_f32(v197)), 0), *v356.f32).u32[0] == -1)
          {
            v241 = vsub_f32(v210, v207);
            v242 = vadd_f32(v241, vsub_f32(v212, v214));
            v243 = vrecpe_f32(v242);
            v244 = 4;
            do
            {
              v243 = vmul_f32(v243, vrecps_f32(v242, v243));
              --v244;
            }

            while (v244);
            v245 = vmlaq_n_f32(v357, vsubq_f32(v358[0], v357), vmul_f32(v241, vbsl_s8(vcgt_f32(vabs_f32(v242), 0x3400000034000000), v243, 0)).f32[0]);
            v245.i64[1] = vextq_s8(v245, v245, 8uLL).u32[0];
            v219 = 2;
            v44 = v245;
            v220 = 1;
            v221 = &v346;
          }

          else
          {
            v215 = vmulq_f32(v202, v179);
            v215.i64[0] = vpaddq_f32(v215, v215).u64[0];
            v216 = vpadd_f32(*v215.f32, *v215.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v199), vand_s8(vclez_f32(v214), vcgez_f32(v216))), 0), *v356.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v216), vclez_f32(v205)), 0), *v356.f32).u32[0] == -1)
              {
                v220 = 0;
                v219 = 1;
                v221 = &v345;
              }

              else
              {
                *v44.f32 = vdup_lane_s16(vand_s8(vcge_f32(v207, v210), vcgez_f32(v207)), 0);
                *v44.f32 = vuzp1_s8(*v44.f32, *v44.f32);
                v217 = v44.i32[0];
                v218 = vdupq_lane_s32(*&vceqq_s32(v44, v327), 0);
                v219 = 1;
                if (v217 == -1)
                {
                  v220 = 1;
                }

                else
                {
                  v220 = 2;
                }

                v221 = &v345;
                v44 = vbslq_s8(v218, v357, v358[0]);
              }

LABEL_86:
              v238 = &v351;
              v237 = &v348;
              v239 = &v354;
              v240 = &v357;
LABEL_94:
              v249 = *(&v356 + v220);
              v250 = *v240;
              v251 = *(&v353 + v220);
              v252 = *v239;
              v253 = *(&v350 + v220);
              v254 = *v238;
              v255 = *(&v347 + v220);
              v256 = *v237;
              v257 = *(&v344 + v220);
              v258 = *v221;
              v356 = v249;
              v357 = v250;
              v353 = v251;
              v354 = v252;
              v350 = v253;
              v351 = v254;
              v347 = v255;
              v348 = v256;
              v344 = v257;
              v345 = v258;
              v340 = v219;
              break;
            }

            v246 = vsub_f32(v216, v214);
            v247 = vrecpe_f32(v246);
            v248 = 4;
            do
            {
              v247 = vmul_f32(v247, vrecps_f32(v246, v247));
              --v248;
            }

            while (v248);
            v220 = 0;
            v44 = vmlaq_n_f32(v356, v179, vmul_f32(v216, vbsl_s8(vcgt_f32(vabs_f32(v246), 0x3400000034000000), v247, 0)).f32[0]);
            v219 = 2;
            v221 = &v346;
            v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
          }

          v238 = v352;
          v237 = &v349;
          v239 = v355;
          v240 = v358;
          goto LABEL_94;
        }

        v229 = vmulq_f32(v356, v180);
        v230 = vextq_s8(v229, v229, 8uLL).u64[0];
        v231 = vrecpe_f32(v183);
        v232 = 4;
        do
        {
          v231 = vmul_f32(v231, vrecps_f32(v183, v231));
          --v232;
        }

        while (v232);
        v233 = vpadd_f32(*v229.i8, v230);
        v44 = vmulq_n_f32(v180, vmul_f32(v231, vpadd_f32(v233, v233)).f32[0]);
        v44.i32[3] = 0;
        break;
      case 1:
        v44 = v356;
        v170 = vsubq_f32(v357, v356);
        v171 = vmulq_f32(v170, v170);
        v171.i64[0] = vpaddq_f32(v171, v171).u64[0];
        v172 = vpadd_f32(*v171.f32, *v171.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v172), 0), *v356.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v173 = vnegq_f32(v356);
        v173.i32[3] = 0;
        v174 = vmulq_f32(v173, v170);
        v174.i64[0] = vpaddq_f32(v174, v174).u64[0];
        v175 = vpadd_f32(*v174.f32, *v174.f32);
        v176 = vrecpe_f32(v172);
        v177 = 4;
        do
        {
          v176 = vmul_f32(v176, vrecps_f32(v172, v176));
          --v177;
        }

        while (v177);
        v44 = vmlaq_n_f32(v356, v170, vmax_f32(vmin_f32(vmul_f32(v175, v176), _D9), 0).f32[0]);
LABEL_78:
        v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
        break;
    }

    v341 = v44;
    v259 = vmulq_f32(v44, v44);
    v259.i64[0] = vpaddq_f32(v259, v259).u64[0];
    v260 = vpadd_f32(*v259.f32, *v259.f32);
    v261 = vrsqrte_f32(v260);
    v262 = 4;
    do
    {
      v261 = vmul_f32(v261, vrsqrts_f32(vmul_f32(v261, v261), v260));
      --v262;
    }

    while (v262);
    v61 = vbsl_s8(vdup_lane_s32(vceqz_f32(v260), 0), v260, vmul_f32(v260, v261));
    v263 = vrecpe_f32(v61);
    v264 = 4;
    do
    {
      v263 = vmul_f32(v263, vrecps_f32(v61, v263));
      --v264;
    }

    while (v264);
    v60 = vmulq_n_f32(v44, v263.f32[0]);
    v60.i32[3] = 0;
    v265 = vcgt_f32(*&v14, v61);
    v153 = vdupq_lane_s32(v265, 0);
    v62 = vdupq_lane_s32(vand_s8(vcgt_f32(v61, v28), v265), 0);
    v152 = v14;
    v63 = v154;
  }

  v266 = vmovn_s32(vceqzq_s32(v153));
  v267 = v340;
  if (vuzp1_s8(v266, v266).u32[0] != -1)
  {
    if (v16)
    {
      *a8 = v340;
      if (v267)
      {
        v268 = &v344;
        v269 = &v347;
        do
        {
          v270 = *v269++;
          *v16++ = v270;
          v271 = *v268++;
          *v15++ = v271;
          --v267;
        }

        while (v267);
      }
    }

    return 5;
  }

  v286 = v332;
  if (v16)
  {
    v287 = v340 - 1;
    *a8 = v340 - 1;
    if (v267 != 1)
    {
      v288 = &v344;
      v289 = &v347;
      do
      {
        v290 = *v289++;
        *v16++ = v290;
        v291 = *v288++;
        *v15++ = v291;
        --v287;
      }

      while (v287);
      goto LABEL_125;
    }

LABEL_128:
    v292 = v353;
    v293 = v350;
  }

  else
  {
LABEL_125:
    v341 = v63;
    if (v267 == 3)
    {
      v342 = 0;
      v343 = 0;
      v335 = v60;
      v339 = v63;
      physx::Gu::barycentricCoordinates(&v341, &v356, &v357, v358, &v343, &v342);
      v286 = v332;
      v317 = vmulq_n_f32(vsubq_f32(v354, v353), v343.f32[0]);
      v317.i32[3] = 0;
      v318 = vmulq_n_f32(vsubq_f32(v355[0], v353), v342.f32[0]);
      v318.i32[3] = 0;
      v319 = vaddq_f32(v317, v318);
      v320 = vmulq_n_f32(vsubq_f32(v351, v350), v343.f32[0]);
      v320.i32[3] = 0;
      v292 = vaddq_f32(v353, v319);
      v321 = vmulq_n_f32(vsubq_f32(v352[0], v350), v342.f32[0]);
      v60 = v335;
      v63 = v339;
      v321.i32[3] = 0;
      v293 = vaddq_f32(v350, vaddq_f32(v320, v321));
    }

    else if (v267 == 2)
    {
      v309 = vsubq_f32(v356, v63);
      v310 = vsubq_f32(vsubq_f32(v357, v63), v309);
      v311 = vmulq_f32(v310, v310);
      v311.i64[0] = vpaddq_f32(v311, v311).u64[0];
      v312 = vpadd_f32(*v311.f32, *v311.f32);
      v313 = vrecpe_f32(v312);
      v314 = 4;
      do
      {
        v313 = vmul_f32(v313, vrecps_f32(v312, v313));
        --v314;
      }

      while (v314);
      v315 = vnegq_f32(v309);
      v315.i32[3] = 0;
      v316 = vmulq_f32(v315, v310);
      v316.i64[0] = vpaddq_f32(v316, v316).u64[0];
      v315.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v312), v313, 0), vpadd_f32(*v316.f32, *v316.f32)).u32[0];
      v292 = vmlaq_n_f32(v353, vsubq_f32(v354, v353), v315.f32[0]);
      v292.i64[1] = vextq_s8(v292, v292, 8uLL).u32[0];
      v293 = vmlaq_n_f32(v350, vsubq_f32(v351, v350), v315.f32[0]);
      v293.i64[1] = vextq_s8(v293, v293, 8uLL).u32[0];
    }

    else
    {
      v292 = 0uLL;
      v293 = 0uLL;
      if (v267 == 1)
      {
        goto LABEL_128;
      }
    }
  }

  v322 = vrecpe_f32(v152);
  v323 = 4;
  do
  {
    v322 = vmul_f32(v322, vrecps_f32(v152, v322));
    --v323;
  }

  while (v323);
  v324 = vmulq_n_f32(v63, v322.f32[0]);
  v324.i32[3] = 0;
  *(a14 + 32) = v324;
  *(a14 + 48) = v60;
  if (a5)
  {
    *a14 = v292;
    *(a14 + 16) = v293;
    *(a14 + 64) = v152;
  }

  else
  {
    v325 = vmlsq_lane_f32(v292, v324, v328, 0);
    v325.i64[1] = vextq_s8(v325, v325, 8uLL).u32[0];
    v326 = vmlaq_n_f32(v293, v324, v329);
    v326.i64[1] = vextq_s8(v326, v326, 8uLL).u32[0];
    *a14 = v325;
    *(a14 + 16) = v326;
    *(a14 + 64) = vsub_f32(v152, v286);
    if (vcge_f32(v286, v152).u32[0])
    {
      return 2;
    }
  }

  return 4;
}

BOOL physx::Gu::gjkRaycast<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, int32x2_t a4, uint64_t a5, float32x4_t *a6, float32x4_t *a7, float32x2_t *a8, float32x4_t *a9, int8x16_t *a10)
{
  v239 = *MEMORY[0x1E69E9840];
  v14 = vmlaq_f32(*a6, 0, *a7);
  v15 = vextq_s8(v14, v14, 8uLL).u32[0];
  v227 = 1;
  v16 = vmulq_f32(*a3, *a3);
  v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
  v17 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v16.f32, *v16.f32), 0x3400000034000000), 0)), *a3, xmmword_1E3047670);
  v18 = vmulq_f32(v17, v17);
  v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
  v19 = vpadd_f32(*v18.f32, *v18.f32);
  v20 = vrsqrte_f32(v19);
  v21 = 4;
  do
  {
    v20 = vmul_f32(v20, vrsqrts_f32(vmul_f32(v20, v20), v19));
    --v21;
  }

  while (v21);
  v22 = vbsl_s8(vdup_lane_s32(vceqz_f32(v19), 0), v19, vmul_f32(v19, v20));
  v23 = vrecpe_f32(v22);
  v24 = 4;
  do
  {
    v23 = vmul_f32(v23, vrecps_f32(v22, v23));
    --v24;
  }

  while (v24);
  v25 = vdup_lane_s32(a4, 0);
  v14.i64[1] = v15;
  v26 = vmulq_n_f32(v17, v23.f32[0]);
  v26.i32[3] = 0;
  v27 = vnegq_f32(v26);
  v28 = vmulq_n_f32(a1[2], v27.f32[0]);
  v28.i32[3] = 0;
  v29 = vmulq_lane_f32(a1[3], *v27.f32, 1);
  v29.i32[3] = 0;
  v30 = vmulq_laneq_f32(a1[4], v27, 2);
  v30.i32[3] = 0;
  v31 = a1->i64[1];
  v32 = a1[1].i64[0];
  v33 = vcgtzq_f32(vaddq_f32(vaddq_f32(v28, v29), v30));
  v34 = v31[3];
  v35 = vnegq_f32(v34);
  v35.i32[3] = 0;
  v36 = vbslq_s8(v33, v34, v35);
  v37 = vmulq_n_f32(*v32, v36.f32[0]);
  v37.i32[3] = 0;
  v38 = vmulq_lane_f32(v32[1], *v36.f32, 1);
  v38.i32[3] = 0;
  v39 = vmulq_laneq_f32(v32[2], v36, 2);
  v39.i32[3] = 0;
  v40 = vaddq_f32(v32[3], vaddq_f32(v39, vaddq_f32(v37, v38)));
  v41 = *(a2 + 8);
  v42 = v41[3];
  v43 = vnegq_f32(v42);
  v43.i32[3] = 0;
  v44 = vbslq_s8(vcgtzq_f32(v26), v42, v43);
  v45 = vsubq_f32(v40, v44);
  v236 = v45;
  v237 = 0u;
  memset(v238, 0, sizeof(v238));
  v233 = v40;
  v234 = 0u;
  memset(v235, 0, sizeof(v235));
  v46 = vnegq_f32(v45);
  v46.i32[3] = 0;
  v31 = (v31 + 24);
  v231 = 0u;
  memset(v232, 0, sizeof(v232));
  *v40.f32 = vld1_dup_f32(v31->f32);
  v47 = &v41[1].f32[2];
  *v43.i8 = vld1_dup_f32(v47);
  v230 = v44;
  *v40.f32 = vmul_f32(vmin_f32(*v40.f32, *v43.i8), vdup_n_s32(0x3DCCCCCDu));
  v48 = vadd_f32(v25, *v40.f32);
  v49 = vmul_f32(v48, v48);
  v50 = vmulq_f32(v46, v46);
  v51 = vpaddq_f32(v50, v50);
  v52 = vpadd_f32(*v51.f32, *v51.f32);
  v218 = vmul_f32(*v40.f32, *v40.f32);
  v53 = vcgt_f32(v52, v218);
  v54.i64[0] = -1;
  v54.i64[1] = -1;
  v51.i32[0] = -1;
  v217 = v51;
  v55 = vneg_f32(0x80000000800000);
  v56 = v45;
  v221 = v46;
  v57 = v46;
  v58 = 0;
  while (1)
  {
    v59 = v45;
    v60 = vcltz_s16(vshl_n_s16(vdup_lane_s16(v53, 0), 0xFuLL));
    v61 = vuzp1_s8(v60, v60).u32[0];
    if (v61 != -1)
    {
      break;
    }

    v62 = vmulq_f32(v57, v57);
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
      v67 = vmul_f32(v67, vrecps_f32(v66, v67));
      --v68;
    }

    while (v68);
    v72 = vmulq_n_f32(v57, v67.f32[0]);
    v69 = vmulq_n_f32(a1[2], v72.f32[0]);
    v70 = vmulq_lane_f32(a1[3], *v72.f32, 1);
    v71 = vmulq_laneq_f32(a1[4], v72, 2);
    v72.i32[3] = 0;
    v73 = vnegq_f32(v72);
    v73.i32[3] = 0;
    v69.i32[3] = 0;
    v74 = a1[1].i64[0];
    v70.i32[3] = 0;
    v71.i32[3] = 0;
    v75 = vcgtzq_f32(vaddq_f32(vaddq_f32(v69, v70), v71));
    v76 = *(a1->i64[1] + 48);
    v77 = vnegq_f32(v76);
    v77.i32[3] = 0;
    v78 = vbslq_s8(v75, v76, v77);
    v79 = vmulq_n_f32(*v74, v78.f32[0]);
    v79.i32[3] = 0;
    v80 = vmulq_lane_f32(v74[1], *v78.f32, 1);
    v80.i32[3] = 0;
    v81 = vmulq_laneq_f32(v74[2], v78, 2);
    v81.i32[3] = 0;
    v82 = vaddq_f32(v74[3], vaddq_f32(v81, vaddq_f32(v79, v80)));
    v83 = vcgtzq_f32(v73);
    v84 = *(*(a2 + 8) + 48);
    v85 = vnegq_f32(v84);
    v85.i32[3] = 0;
    v86 = vbslq_s8(v83, v84, v85);
    v87 = vaddq_f32(v14, v86);
    v45 = vsubq_f32(v82, v87);
    v88 = vnegq_f32(v45);
    v88.i32[3] = 0;
    v89 = vmulq_f32(v72, v88);
    v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
    v90 = vsub_f32(vpadd_f32(*v89.f32, *v89.f32), v48);
    if (v90.f32[0] > 0.0)
    {
      v91 = vmulq_f32(v72, *a7);
      v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
      v92 = vpadd_f32(*v91.f32, *v91.f32);
      if (v92.f32[0] >= 0.0)
      {
        return v61 != -1;
      }

      v93 = vrecpe_f32(v92);
      v94 = 4;
      do
      {
        v93 = vmul_f32(v93, vrecps_f32(v92, v93));
        --v94;
      }

      while (v94);
      v95 = vsub_f32(v58, vmul_f32(v90, v93));
      if (vcgt_f32(v95, v58).u8[0])
      {
        if (v95.f32[0] > 1.0)
        {
          return v61 != -1;
        }

        v96 = vmlaq_n_f32(*a6, *a7, v95.f32[0]);
        v96.i64[1] = vextq_s8(v96, v96, 8uLL).u32[0];
        v97 = vsubq_f32(v96, v14);
        v230 = vaddq_f32(v230, v97);
        v231 = vaddq_f32(v231, v97);
        v232[0] = vaddq_f32(v232[0], v97);
        v236 = vsubq_f32(v233, v230);
        v237 = vsubq_f32(v234, v231);
        v238[0] = vsubq_f32(v235[0], v232[0]);
        v87 = vaddq_f32(v86, v96);
        v45 = vsubq_f32(v82, v87);
        v52 = v55;
        v221 = v57;
        v14 = v96;
      }

      v58 = v95;
    }

    v224 = v59;
    v98 = v227;
    *(&v233 + v227) = v82;
    *(&v230 + v98) = v87;
    v227 = v98 + 1;
    *(&v236 + v98) = v45;
    if (v98 == 3)
    {
      v222 = v14;
      physx::Gu::closestPtPointTetrahedron(&v236, &v233, &v230, &v227);
      v14 = v222;
LABEL_36:
      v56 = v224;
      goto LABEL_60;
    }

    if (v98 == 2)
    {
      v45 = v236;
      v113 = vsubq_f32(v237, v236);
      v114 = vsubq_f32(v238[0], v236);
      v116 = vmls_f32(vmul_f32(*v113.f32, *&vextq_s8(v114, v114, 4uLL)), *&vextq_s8(v113, v113, 4uLL), *v114.f32);
      *v115.f32 = vext_s8(v116, vmls_f32(vmul_f32(*&vextq_s8(v113, v113, 8uLL), *v114.f32), *v113.f32, *&vextq_s8(v114, v114, 8uLL)), 4uLL);
      v116.i32[1] = 0;
      v227 = 3;
      v117 = vpadd_f32(vmul_f32(*v115.f32, *v115.f32), vmul_f32(v116.u32[0], v116.u32[0]));
      v118 = vpadd_f32(v117, v117);
      if (v118.f32[0] <= 0.00000011921)
      {
        v227 = 2;
        v155 = vmulq_f32(v113, v113);
        v155.i64[0] = vpaddq_f32(v155, v155).u64[0];
        v156 = vpadd_f32(*v155.f32, *v155.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v156), 0), *v236.f32).u32[0] == -1)
        {
          v227 = 1;
          goto LABEL_36;
        }

        v157 = vnegq_f32(v236);
        v157.i32[3] = 0;
        v158 = vmulq_f32(v157, v113);
        v158.i64[0] = vpaddq_f32(v158, v158).u64[0];
        v159 = vpadd_f32(*v158.f32, *v158.f32);
        v160 = vrecpe_f32(v156);
        v161 = 4;
        v56 = v59;
        do
        {
          v160 = vmul_f32(v160, vrecps_f32(v156, v160));
          --v161;
        }

        while (v161);
        v162 = vmul_f32(v159, v160);
        __asm { FMOV            V2.2S, #1.0 }

        v45 = vmlaq_n_f32(v236, v113, vmax_f32(vmin_f32(v162, _D2), 0).f32[0]);
        goto LABEL_41;
      }

      *&v115.u32[2] = v116;
      v119 = vextq_s8(v237, v237, 8uLL).u64[0];
      v120 = vextq_s8(v238[0], v238[0], 8uLL).u64[0];
      v121 = vextq_s8(v238[0], v238[0], 4uLL).u64[0];
      v122 = vextq_s8(v237, v237, 4uLL).u64[0];
      v123 = vmls_f32(vmul_f32(*v237.f32, v121), v122, *v238[0].f32);
      *v124.f32 = vext_s8(v123, vmls_f32(vmul_f32(v119, *v238[0].f32), *v237.f32, v120), 4uLL);
      v124.i64[1] = v123.u32[0];
      v125 = vextq_s8(v236, v236, 8uLL).u64[0];
      v126 = vextq_s8(v236, v236, 4uLL).u64[0];
      v127 = vmls_f32(vmul_f32(v126, *v238[0].f32), v121, *v236.f32);
      *v128.f32 = vext_s8(v127, vmls_f32(vmul_f32(*v236.f32, v120), *v238[0].f32, v125), 4uLL);
      v128.i64[1] = v127.u32[0];
      v129 = vmls_f32(vmul_f32(*v236.f32, v122), v126, *v237.f32);
      *v130.f32 = vext_s8(v129, vmls_f32(vmul_f32(v125, *v237.f32), *v236.f32, v119), 4uLL);
      v130.i64[1] = v129.u32[0];
      v131 = vmulq_f32(v124, v115);
      v131.i64[0] = vpaddq_f32(v131, v131).u64[0];
      v132 = vpadd_f32(*v131.f32, *v131.f32);
      v133 = vmulq_f32(v128, v115);
      v133.i64[0] = vpaddq_f32(v133, v133).u64[0];
      v134 = vpadd_f32(*v133.f32, *v133.f32);
      v135 = vmulq_f32(v130, v115);
      v135.i64[0] = vpaddq_f32(v135, v135).u64[0];
      v136 = vpadd_f32(*v135.f32, *v135.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v134), vcgez_f32(v132)), vcgez_f32(v136)), 0), *v236.f32).u32[0] == -1)
      {
        v164 = vmulq_f32(v236, v115);
        v165 = vextq_s8(v164, v164, 8uLL).u64[0];
        v166 = vrecpe_f32(v118);
        v167 = 4;
        do
        {
          v166 = vmul_f32(v166, vrecps_f32(v118, v166));
          --v167;
        }

        while (v167);
        v168 = vpadd_f32(*v164.i8, v165);
        v45 = vmulq_n_f32(v115, vmul_f32(v166, vpadd_f32(v168, v168)).f32[0]);
        v45.i32[3] = 0;
        goto LABEL_36;
      }

      v137 = vnegq_f32(v236);
      v137.i32[3] = 0;
      v138 = vnegq_f32(v237);
      v138.i32[3] = 0;
      v139 = vmulq_f32(v137, v113);
      v139.i64[0] = vpaddq_f32(v139, v139).u64[0];
      v140 = vpadd_f32(*v139.f32, *v139.f32);
      v141 = vmulq_f32(v113, v138);
      v141.i64[0] = vpaddq_f32(v141, v141).u64[0];
      v142 = vpadd_f32(*v141.f32, *v141.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v136), vand_s8(vclez_f32(v142), vcgez_f32(v140))), 0), *v236.f32).u32[0] == -1)
      {
        v169 = vsub_f32(v140, v142);
        v170 = vrecpe_f32(v169);
        v171 = 4;
        v56 = v224;
        do
        {
          v170 = vmul_f32(v170, vrecps_f32(v169, v170));
          --v171;
        }

        while (v171);
        v154 = 0;
        v45 = vmlaq_n_f32(v236, v113, vmul_f32(v140, vbsl_s8(vcgt_f32(vabs_f32(v169), 0x3400000034000000), v170, 0)).f32[0]);
        v45.i64[1] = vextq_s8(v45, v45, 8uLL).u32[0];
        v153 = 2;
        v172 = &v231;
        v173 = &v234;
        v174 = &v237;
      }

      else
      {
        v143 = vnegq_f32(v238[0]);
        v143.i32[3] = 0;
        v144 = vmulq_f32(v138, v114);
        v144.i64[0] = vpaddq_f32(v144, v144).u64[0];
        v145 = vpadd_f32(*v144.f32, *v144.f32);
        v146 = vmulq_f32(v113, v143);
        v146.i64[0] = vpaddq_f32(v146, v146).u64[0];
        v147 = vpadd_f32(*v146.f32, *v146.f32);
        v148 = vmulq_f32(v114, v143);
        v148.i64[0] = vpaddq_f32(v148, v148).u64[0];
        v149 = vpadd_f32(*v148.f32, *v148.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v145, v142), vcge_f32(v147, v149)), vclez_f32(v132)), 0), *v236.f32).u32[0] == -1)
        {
          v175 = vsub_f32(v145, v142);
          v176 = vadd_f32(v175, vsub_f32(v147, v149));
          v177 = vrecpe_f32(v176);
          v178 = 4;
          do
          {
            v177 = vmul_f32(v177, vrecps_f32(v176, v177));
            --v178;
          }

          while (v178);
          v179 = vmlaq_n_f32(v237, vsubq_f32(v238[0], v237), vmul_f32(v175, vbsl_s8(vcgt_f32(vabs_f32(v176), 0x3400000034000000), v177, 0)).f32[0]);
          v153 = 2;
          v173 = v235;
          v172 = v232;
          v179.i64[1] = vextq_s8(v179, v179, 8uLL).u32[0];
          v174 = v238;
          v154 = 1;
          v45 = v179;
        }

        else
        {
          v150 = vmulq_f32(v137, v114);
          v150.i64[0] = vpaddq_f32(v150, v150).u64[0];
          v151 = vpadd_f32(*v150.f32, *v150.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v134), vand_s8(vclez_f32(v149), vcgez_f32(v151))), 0), *v236.f32).u32[0] == -1)
          {
            v180 = vsub_f32(v151, v149);
            v181 = vrecpe_f32(v180);
            v182 = 4;
            do
            {
              v181 = vmul_f32(v181, vrecps_f32(v180, v181));
              --v182;
            }

            while (v182);
            v154 = 0;
            v45 = vmlaq_n_f32(v236, v114, vmul_f32(v151, vbsl_s8(vcgt_f32(vabs_f32(v180), 0x3400000034000000), v181, 0)).f32[0]);
            v45.i64[1] = vextq_s8(v45, v45, 8uLL).u32[0];
            v153 = 2;
            v173 = v235;
            v172 = v232;
            v174 = v238;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v151), vclez_f32(v140)), 0), *v236.f32).u32[0] == -1)
            {
              v154 = 0;
              v153 = 1;
            }

            else
            {
              *v45.f32 = vdup_lane_s16(vand_s8(vcge_f32(v142, v145), vcgez_f32(v142)), 0);
              *v45.f32 = vuzp1_s8(*v45.f32, *v45.f32);
              v152 = v45.i32[0];
              v153 = 1;
              v45 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v45, v217), 0), v237, v238[0]);
              if (v152 == -1)
              {
                v154 = 1;
              }

              else
              {
                v154 = 2;
              }
            }

            v172 = &v231;
            v173 = &v234;
            v174 = &v237;
          }
        }

        v56 = v224;
      }

      v183 = *(&v233 + v154);
      v184 = *v174;
      v185 = *v173;
      v186 = *(&v230 + v154);
      v187 = *v172;
      v236 = *(&v236 + v154);
      v237 = v184;
      v233 = v183;
      v234 = v185;
      v230 = v186;
      v231 = v187;
      v227 = v153;
    }

    else
    {
      v56 = v59;
      if (v98 != 1)
      {
        goto LABEL_60;
      }

      v45 = v236;
      v99 = vsubq_f32(v237, v236);
      v100 = vmulq_f32(v99, v99);
      v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
      v101 = vpadd_f32(*v100.f32, *v100.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v101), 0), *v236.f32).u32[0] != -1)
      {
        v102 = vnegq_f32(v236);
        v102.i32[3] = 0;
        v103 = vmulq_f32(v102, v99);
        v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
        v104 = vpadd_f32(*v103.f32, *v103.f32);
        v105 = vrecpe_f32(v101);
        v106 = 4;
        do
        {
          v105 = vmul_f32(v105, vrecps_f32(v101, v105));
          --v106;
        }

        while (v106);
        v107 = vmul_f32(v104, v105);
        __asm { FMOV            V3.2S, #1.0 }

        v45 = vmlaq_n_f32(v236, v99, vmax_f32(vmin_f32(v107, _D3), 0).f32[0]);
LABEL_41:
        v45.i64[1] = vextq_s8(v45, v45, 8uLL).u32[0];
        goto LABEL_60;
      }

      v227 = 1;
    }

LABEL_60:
    v57 = vnegq_f32(v45);
    v57.i32[3] = 0;
    v188 = vmulq_f32(v45, v45);
    v188.i64[0] = vpaddq_f32(v188, v188).u64[0];
    v189 = vpadd_f32(*v188.f32, *v188.f32);
    v190 = vcgt_f32(v52, v189);
    v54 = vdupq_lane_s32(vand_s8(v190, 0x100000001), 0);
    v53 = vand_s8(vcgt_f32(v189, v49), v190);
    v52 = v189;
  }

  v191 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v52, v218), 0), v54), 0x1FuLL)), v57, v221);
  v192 = vmulq_f32(v191, v191);
  v192.i64[0] = vpaddq_f32(v192, v192).u64[0];
  v193 = vpadd_f32(*v192.f32, *v192.f32);
  v194 = vrsqrte_f32(v193);
  v195 = 4;
  do
  {
    v194 = vmul_f32(v194, vrsqrts_f32(vmul_f32(v194, v194), v193));
    --v195;
  }

  while (v195);
  v196 = vbsl_s8(vdup_lane_s32(vceqz_f32(v193), 0), v193, vmul_f32(v193, v194));
  v197 = vrecpe_f32(v196);
  v198 = 4;
  do
  {
    v197 = vmul_f32(v197, vrecps_f32(v196, v197));
    --v198;
  }

  while (v198);
  v199 = vdupq_n_s32(-*(a1->i64[1] + 32));
  v200 = vmulq_n_f32(v191, v197.f32[0]);
  v200.i32[3] = 0;
  v201 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v196), 0), v200));
  v201.i32[3] = 0;
  *a9 = v201;
  *a8 = v58;
  v202 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v54, 0x1FuLL)), v59, v56);
  v226 = v202;
  if (v227 == 3)
  {
    v228 = 0;
    v229 = 0;
    v223 = v201;
    v225 = v199;
    physx::Gu::barycentricCoordinates(&v226, &v236, &v237, v238, &v229, &v228);
    v201 = v223;
    v199 = v225;
    v197.i32[1] = v233.i32[1];
    v213 = vmulq_n_f32(vsubq_f32(v234, v233), v229.f32[0]);
    v213.i32[3] = 0;
    v214 = vmulq_n_f32(vsubq_f32(v235[0], v233), v228.f32[0]);
    v214.i32[3] = 0;
    v203 = vaddq_f32(v233, vaddq_f32(v213, v214));
    v204 = a10;
  }

  else if (v227 == 2)
  {
    v205 = vsubq_f32(v236, v202);
    v206 = vsubq_f32(vsubq_f32(v237, v202), v205);
    v207 = vmulq_f32(v206, v206);
    v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
    v208 = vpadd_f32(*v207.f32, *v207.f32);
    v209 = vrecpe_f32(v208);
    v210 = 4;
    v204 = a10;
    do
    {
      v209 = vmul_f32(v209, vrecps_f32(v208, v209));
      --v210;
    }

    while (v210);
    v211 = vnegq_f32(v205);
    v211.i32[3] = 0;
    v212 = vmulq_f32(v211, v206);
    v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
    v203 = vmlaq_n_f32(v233, vsubq_f32(v234, v233), vmul_f32(vbsl_s8(vcgtz_f32(v208), v209, 0), vpadd_f32(*v212.f32, *v212.f32)).f32[0]);
    v197.i32[1] = 0;
    v203.i64[1] = vextq_s8(v203, v203, 8uLL).u32[0];
  }

  else
  {
    v203 = 0uLL;
    v204 = a10;
    if (v227 == 1)
    {
      v203 = v233;
    }
  }

  v197.i32[0] = *(a1->i64[1] + 16);
  v215 = vmlsq_lane_f32(v203, v201, v197, 0);
  v215.i64[1] = vextq_s8(v215, v215, 8uLL).u32[0];
  *v204 = vbslq_s8(v199, v215, v203);
  return v61 != -1;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t *a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, double a9, double a10, int8x8_t a11, uint64_t a12)
{
  v12 = a7;
  v13 = a6;
  v369 = *MEMORY[0x1E69E9840];
  v16 = a1->i64[1];
  v17 = &v16[1].f32[1];
  v18 = vld1_dup_f32(v17);
  v19 = *(a2 + 8);
  v20 = &v19[1].f32[1];
  v21 = vld1_dup_f32(v20);
  v22 = vmin_f32(v18, v21);
  v23 = vdup_n_s32(0x3DCCCCCDu);
  v24 = vmul_f32(v22, v23);
  v22.i32[0] = v16[1].i32[0];
  v23.i32[0] = v19[1].i32[0];
  a11.i32[0] = -v16[2].u8[0];
  v25 = vand_s8(a11, v22);
  v26 = vdup_lane_s32(v25, 0);
  v25.i32[0] = -v19[2].u8[0];
  v27 = vdup_lane_s32(vand_s8(v25, v23), 0);
  v340 = v26;
  v341 = v27.f32[0];
  v28 = vadd_f32(v26, v27);
  v29 = *a4;
  v352 = 0uLL;
  v351 = 0;
  v30 = *a8;
  __asm { FMOV            V9.2S, #1.0 }

  v344 = v28;
  if (!*a8)
  {
    v60 = vmulq_f32(*a3, *a3);
    v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
    v51 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v60.f32, *v60.f32)), 0)), *a3, xmmword_1E3047670);
    v352 = v51;
    v61 = vmulq_f32(v51, v51);
    v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
    v62 = vpadd_f32(*v61.f32, *v61.f32);
    v63 = vrsqrte_f32(v62);
    v64 = 4;
    do
    {
      v63 = vmul_f32(v63, vrsqrts_f32(vmul_f32(v63, v63), v62));
      --v64;
    }

    while (v64);
    v65 = vbsl_s8(vdup_lane_s32(vceqz_f32(v62), 0), v62, vmul_f32(v62, v63));
    v66 = vrecpe_f32(v65);
    v67 = 4;
    do
    {
      v66 = vmul_f32(v66, vrecps_f32(v65, v66));
      --v67;
    }

    while (v67);
    v68 = vmulq_n_f32(v51, v66.f32[0]);
    v68.i32[3] = 0;
    v346 = v68;
    v69 = vneg_f32(0x80000000800000);
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v71 = 0uLL;
    goto LABEL_52;
  }

  v36 = 0;
  v37 = a1[1].i64[0];
  v38 = v16[3];
  v39 = v19[3];
  v40 = vnegq_f32(v38);
  v40.i32[3] = 0;
  v41 = vnegq_f32(v39);
  v41.i32[3] = 0;
  v42 = -1;
  do
  {
    v43 = a6[v36];
    *(&v357 + v36) = v43;
    v44 = a7[v36];
    *(&v354 + v36) = v44;
    v45 = vbslq_s8(physx::boxVertexTable[v43], v38, v40);
    v46 = vmulq_n_f32(*v37, v45.f32[0]);
    v46.i32[3] = 0;
    v47 = vmulq_lane_f32(v37[1], *v45.f32, 1);
    v47.i32[3] = 0;
    v48 = vmulq_laneq_f32(v37[2], v45, 2);
    v48.i32[3] = 0;
    v49 = vaddq_f32(v37[3], vaddq_f32(v48, vaddq_f32(v46, v47)));
    v50 = vbslq_s8(physx::boxVertexTable[v44], v39, v41);
    v51 = vsubq_f32(v49, v50);
    *(&v363 + v36) = v49;
    *(&v360 + v36) = v50;
    *(&v366 + v36) = v51;
    ++v42;
    ++v36;
  }

  while (v30 != v36);
  v351 = v30;
  if (v42 == 3)
  {
    v347 = v29;
    physx::Gu::closestPtPointTetrahedron(&v366, &v363, &v360, &v357, &v354, &v351);
    LODWORD(v29) = v347;
    v28.i32[0] = v344.i32[0];
    goto LABEL_47;
  }

  if (v42 != 2)
  {
    if (v42 != 1)
    {
      goto LABEL_47;
    }

    v51 = v366;
    v52 = vsubq_f32(v367, v366);
    v53 = vmulq_f32(v52, v52);
    v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
    v54 = vpadd_f32(*v53.f32, *v53.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v54), 0), *v366.f32).u32[0] != -1)
    {
      v55 = vnegq_f32(v366);
      v55.i32[3] = 0;
      v56 = vmulq_f32(v55, v52);
      v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
      v57 = vpadd_f32(*v56.f32, *v56.f32);
      v58 = vrecpe_f32(v54);
      v59 = 4;
      do
      {
        v58 = vmul_f32(v58, vrecps_f32(v54, v58));
        --v59;
      }

      while (v59);
      v51 = vmlaq_n_f32(v366, v52, vmax_f32(vmin_f32(vmul_f32(v57, v58), _D9), 0).f32[0]);
LABEL_31:
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v351 = 1;
    goto LABEL_47;
  }

  v351 = 3;
  v51 = v366;
  v72 = vsubq_f32(v367, v366);
  v73 = vsubq_f32(v368[0], v366);
  v75 = vmls_f32(vmul_f32(*v72.f32, *&vextq_s8(v73, v73, 4uLL)), *&vextq_s8(v72, v72, 4uLL), *v73.f32);
  *v74.f32 = vext_s8(v75, vmls_f32(vmul_f32(*&vextq_s8(v72, v72, 8uLL), *v73.f32), *v72.f32, *&vextq_s8(v73, v73, 8uLL)), 4uLL);
  v75.i32[1] = 0;
  v76 = vpadd_f32(vmul_f32(*v74.f32, *v74.f32), vmul_f32(v75.u32[0], v75.u32[0]));
  v77 = vpadd_f32(v76, v76);
  if (v77.f32[0] <= 0.00000011921)
  {
    v351 = 2;
    v116 = vmulq_f32(v72, v72);
    v116.i64[0] = vpaddq_f32(v116, v116).u64[0];
    v117 = vpadd_f32(*v116.f32, *v116.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v117), 0), *v366.f32).u32[0] != -1)
    {
      v118 = vnegq_f32(v366);
      v118.i32[3] = 0;
      v119 = vmulq_f32(v118, v72);
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
      v51 = vmlaq_n_f32(v366, v72, vmax_f32(vmin_f32(vmul_f32(v120, v121), _D9), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v74.u32[2] = v75;
  v78 = vextq_s8(v367, v367, 8uLL).u64[0];
  v79 = vextq_s8(v368[0], v368[0], 8uLL).u64[0];
  v80 = vextq_s8(v368[0], v368[0], 4uLL).u64[0];
  v81 = vextq_s8(v367, v367, 4uLL).u64[0];
  v82 = vmls_f32(vmul_f32(*v367.f32, v80), v81, *v368[0].f32);
  *v83.f32 = vext_s8(v82, vmls_f32(vmul_f32(v78, *v368[0].f32), *v367.f32, v79), 4uLL);
  v83.i64[1] = v82.u32[0];
  v84 = vextq_s8(v366, v366, 8uLL).u64[0];
  v85 = vextq_s8(v366, v366, 4uLL).u64[0];
  v86 = vmls_f32(vmul_f32(v85, *v368[0].f32), v80, *v366.f32);
  *v87.f32 = vext_s8(v86, vmls_f32(vmul_f32(*v366.f32, v79), *v368[0].f32, v84), 4uLL);
  v87.i64[1] = v86.u32[0];
  v88 = vmls_f32(vmul_f32(*v366.f32, v81), v85, *v367.f32);
  *v89.f32 = vext_s8(v88, vmls_f32(vmul_f32(v84, *v367.f32), *v366.f32, v78), 4uLL);
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
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v93), vcgez_f32(v91)), vcgez_f32(v95)), 0), *v366.f32).u32[0] == -1)
  {
    v123 = vmulq_f32(v366, v74);
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
    v51 = vmulq_n_f32(v74, vmul_f32(v125, vpadd_f32(v127, v127)).f32[0]);
    v51.i32[3] = 0;
    goto LABEL_47;
  }

  v96 = vnegq_f32(v366);
  v96.i32[3] = 0;
  v97 = vnegq_f32(v367);
  v97.i32[3] = 0;
  v98 = vmulq_f32(v96, v72);
  v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
  v99 = vpadd_f32(*v98.f32, *v98.f32);
  v100 = vmulq_f32(v72, v97);
  v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
  v101 = vpadd_f32(*v100.f32, *v100.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v95), vand_s8(vclez_f32(v101), vcgez_f32(v99))), 0), *v366.f32).u32[0] == -1)
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
    v51 = vmlaq_n_f32(v366, v72, vmul_f32(v99, vbsl_s8(vcgt_f32(vabs_f32(v128), 0x3400000034000000), v129, 0)).f32[0]);
    v113 = 2;
    v115 = &v355;
    v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
  }

  else
  {
    v102 = vnegq_f32(v368[0]);
    v102.i32[3] = 0;
    v103 = vmulq_f32(v97, v73);
    v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
    v104 = vpadd_f32(*v103.f32, *v103.f32);
    v105 = vmulq_f32(v72, v102);
    v105.i64[0] = vpaddq_f32(v105, v105).u64[0];
    v106 = vpadd_f32(*v105.f32, *v105.f32);
    v107 = vmulq_f32(v73, v102);
    v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
    v108 = vpadd_f32(*v107.f32, *v107.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v104, v101), vcge_f32(v106, v108)), vclez_f32(v91)), 0), *v366.f32).u32[0] == -1)
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
      v139 = vmlaq_n_f32(v367, vsubq_f32(v368[0], v367), vmul_f32(v135, vbsl_s8(vcgt_f32(vabs_f32(v136), 0x3400000034000000), v137, 0)).f32[0]);
      v113 = 2;
      v114 = 1;
      v131 = &v359;
      v115 = &v356;
      v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
      v133 = v365;
      v132 = v362;
      v134 = v368;
      v51 = v139;
      goto LABEL_46;
    }

    v109 = vmulq_f32(v96, v73);
    v110 = vpaddq_f32(v109, v109);
    *v110.i8 = vpadd_f32(*v110.i8, *v110.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v93), vand_s8(vclez_f32(v108), vcgez_f32(*v110.i8))), 0), *v366.f32).u32[0] == -1)
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
      v51 = vmlaq_n_f32(v366, v73, vmul_f32(*v110.i8, vbsl_s8(vcgt_f32(vabs_f32(v140), 0x3400000034000000), v141, 0)).f32[0]);
      v113 = 2;
      v131 = &v359;
      v115 = &v356;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
      v133 = v365;
      v132 = v362;
      v134 = v368;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v110.i8), vclez_f32(v99)), 0), *v366.f32).u32[0] == -1)
    {
      v114 = 0;
      v113 = 1;
      v115 = &v355;
    }

    else
    {
      *v110.i8 = vcge_f32(v101, v104);
      *v51.f32 = vdup_lane_s16(vand_s8(*v110.i8, vcgez_f32(v101)), 0);
      *v51.f32 = vuzp1_s8(*v51.f32, *v51.f32);
      v110.i32[0] = -1;
      v111 = v51.i32[0];
      v112 = vdupq_lane_s32(*&vceqq_s32(v51, v110), 0);
      v113 = 1;
      if (v111 == -1)
      {
        v114 = 1;
      }

      else
      {
        v114 = 2;
      }

      v115 = &v355;
      v51 = vbslq_s8(v112, v367, v368[0]);
    }
  }

  v132 = &v361;
  v131 = &v358;
  v133 = &v364;
  v134 = &v367;
LABEL_46:
  v143 = *(&v366 + v114);
  v144 = *v134;
  v145 = *(&v363 + v114);
  v146 = *v133;
  v147 = *(&v360 + v114);
  v148 = *v132;
  v149 = *(&v357 + v114);
  v150 = *v131;
  v151 = *(&v354 + v114);
  v152 = *v115;
  v366 = v143;
  v367 = v144;
  v363 = v145;
  v364 = v146;
  v360 = v147;
  v361 = v148;
  v357 = v149;
  v358 = v150;
  v354 = v151;
  v355 = v152;
  v351 = v113;
LABEL_47:
  v352 = v51;
  v153 = vmulq_f32(v51, v51);
  v153.i64[0] = vpaddq_f32(v153, v153).u64[0];
  v154 = vpadd_f32(*v153.f32, *v153.f32);
  v155 = vrsqrte_f32(v154);
  v156 = 4;
  do
  {
    v155 = vmul_f32(v155, vrsqrts_f32(vmul_f32(v155, v155), v154));
    --v156;
  }

  while (v156);
  v69 = vbsl_s8(vdup_lane_s32(vceqz_f32(v154), 0), v154, vmul_f32(v154, v155));
  v157 = vrecpe_f32(v69);
  v158 = 4;
  do
  {
    v157 = vmul_f32(v157, vrecps_f32(v69, v157));
    --v158;
  }

  while (v158);
  v159 = vmulq_n_f32(v51, v157.f32[0]);
  v159.i32[3] = 0;
  v346 = v159;
  v70 = vdupq_lane_s32(vcgt_f32(v69, v24), 0);
  v71 = v51;
LABEL_52:
  v160 = *&v29 + v28.f32[0];
  v161 = xmmword_1E3102070;
  LODWORD(v161) = -1;
  v339 = v161;
  v162 = v69;
  v163.i64[0] = -1;
  v163.i64[1] = -1;
  while (1)
  {
    v164 = v51;
    v165.i64[0] = -1;
    v165.i64[1] = -1;
    *v165.i8 = vmovn_s32(vceqq_s32(v70, v165));
    if (vuzp1_s8(*v165.i8, *v165.i8).u32[0] != -1)
    {
      break;
    }

    v345 = v164;
    v166 = vnegq_f32(v164);
    v166.i32[3] = 0;
    v348 = v69;
    v350 = v166;
    *v167.i64 = physx::Gu::RelativeConvex<physx::Gu::BoxV>::support(a1, &v350, &v357 + v351);
    v168 = v167;
    v169 = v351;
    v170 = *(a2 + 8);
    v171 = v352;
    v172 = vcgtzq_f32(v352);
    v173 = vandq_s8(v172, xmmword_1E3102070);
    v173.i64[0] = vpaddq_s32(v173, v173).u64[0];
    *(&v354 + v351) = vpadd_s32(*v173.i8, *v173.i8).u8[0] & 7;
    v174 = v170[3];
    v175 = vnegq_f32(v174);
    v175.i32[3] = 0;
    v176 = vbslq_s8(v172, v174, v175);
    v51 = vsubq_f32(v168, v176);
    v177 = v346;
    v178 = vmulq_f32(v346, v51);
    v178.i64[0] = vpaddq_f32(v178, v178).u64[0];
    v179 = vpadd_f32(*v178.f32, *v178.f32).f32[0];
    if (v179 > v160)
    {
      if (v13)
      {
        *a8 = v169;
        if (v169)
        {
          v284 = &v354;
          v285 = &v357;
          do
          {
            v286 = *v285++;
            *v13++ = v286;
            v287 = *v284++;
            *v12++ = v287;
            --v169;
          }

          while (v169);
        }
      }

      return 0;
    }

    v180 = v348;
    if (v179 > (0.99977 * v348.f32[0]))
    {
      v288 = v344;
      if (!v13)
      {
        goto LABEL_116;
      }

      *a8 = v169;
      if (v169)
      {
        v289 = &v354;
        v290 = &v357;
        v291 = v169;
        do
        {
          v292 = *v290++;
          *v13++ = v292;
          v293 = *v289++;
          *v12++ = v293;
          --v291;
        }

        while (v291);
LABEL_116:
        *(a12 + 32) = v346;
        if (v169 != 3)
        {
          if (v169 == 2)
          {
            v305 = vsubq_f32(v366, v171);
            v306 = vsubq_f32(vsubq_f32(v367, v171), v305);
            v307 = vmulq_f32(v306, v306);
            v307.i64[0] = vpaddq_f32(v307, v307).u64[0];
            v308 = vpadd_f32(*v307.f32, *v307.f32);
            v309 = vrecpe_f32(v308);
            v310 = 4;
            v296 = a5;
            do
            {
              v309 = vmul_f32(v309, vrecps_f32(v308, v309));
              --v310;
            }

            while (v310);
            v311 = vnegq_f32(v305);
            v311.i32[3] = 0;
            v312 = vmulq_f32(v311, v306);
            v312.i64[0] = vpaddq_f32(v312, v312).u64[0];
            LODWORD(v313) = vmul_f32(vbsl_s8(vcgtz_f32(v308), v309, 0), vpadd_f32(*v312.f32, *v312.f32)).u32[0];
            v294 = vmlaq_n_f32(v363, vsubq_f32(v364, v363), v313);
            v294.i64[1] = vextq_s8(v294, v294, 8uLL).u32[0];
            v295 = vmlaq_n_f32(v360, vsubq_f32(v361, v360), v313);
            v295.i64[1] = vextq_s8(v295, v295, 8uLL).u32[0];
          }

          else
          {
            v294 = 0uLL;
            v295 = 0uLL;
            v296 = a5;
            if (v169 == 1)
            {
              v294 = v363;
              v295 = v360;
              if (!a5)
              {
LABEL_137:
                v319 = vmlsq_lane_f32(v294, v177, v340, 0);
                v319.i64[1] = vextq_s8(v319, v319, 8uLL).u32[0];
                v320 = vmlaq_n_f32(v295, v177, v341);
                v320.i64[1] = vextq_s8(v320, v320, 8uLL).u32[0];
                *a12 = v319;
                *(a12 + 16) = v320;
                *(a12 + 64) = vsub_f32(v180, v288);
                return 2;
              }

LABEL_134:
              *a12 = v294;
              *(a12 + 16) = v295;
              result = 2;
              *(a12 + 64) = v180;
              return result;
            }
          }

          if (!v296)
          {
            goto LABEL_137;
          }

          goto LABEL_134;
        }

        v350.i64[0] = 0;
        v353 = 0;
        physx::Gu::barycentricCoordinates(&v352, &v366, &v367, v368, &v350, &v353);
        v177 = v346;
        v180 = v348;
        v288 = v344;
        v314 = vmulq_n_f32(vsubq_f32(v364, v363), v350.f32[0]);
        v314.i32[3] = 0;
        v315 = vmulq_n_f32(vsubq_f32(v365[0], v363), v353.f32[0]);
        v315.i32[3] = 0;
        v316 = vaddq_f32(v314, v315);
        v317 = vmulq_n_f32(vsubq_f32(v361, v360), v350.f32[0]);
        v317.i32[3] = 0;
        v294 = vaddq_f32(v363, v316);
        v318 = vmulq_n_f32(vsubq_f32(v362[0], v360), v353.f32[0]);
        v318.i32[3] = 0;
        v295 = vaddq_f32(v360, vaddq_f32(v317, v318));
      }

      else
      {
        *(a12 + 32) = v346;
        v294 = 0uLL;
        v295 = 0uLL;
      }

      if (!a5)
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }

    *(&v363 + v169) = v168;
    *(&v360 + v169) = v176;
    v351 = v169 + 1;
    *(&v366 + v169) = v51;
    switch(v169)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v366, &v363, &v360, &v357, &v354, &v351);
        v180 = v348;
        break;
      case 2:
        v51 = v366;
        v189 = vsubq_f32(v367, v366);
        v190 = vsubq_f32(v368[0], v366);
        v192 = vmls_f32(vmul_f32(*v189.f32, *&vextq_s8(v190, v190, 4uLL)), *&vextq_s8(v189, v189, 4uLL), *v190.f32);
        *v191.f32 = vext_s8(v192, vmls_f32(vmul_f32(*&vextq_s8(v189, v189, 8uLL), *v190.f32), *v189.f32, *&vextq_s8(v190, v190, 8uLL)), 4uLL);
        v192.i32[1] = 0;
        v351 = 3;
        v193 = vpadd_f32(vmul_f32(*v191.f32, *v191.f32), vmul_f32(v192.u32[0], v192.u32[0]));
        v194 = vpadd_f32(v193, v193);
        if (v194.f32[0] <= 0.00000011921)
        {
          v351 = 2;
          v233 = vmulq_f32(v189, v189);
          v233.i64[0] = vpaddq_f32(v233, v233).u64[0];
          v234 = vpadd_f32(*v233.f32, *v233.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v234), 0), *v366.f32).u32[0] == -1)
          {
LABEL_79:
            v351 = 1;
            break;
          }

          v235 = vnegq_f32(v366);
          v235.i32[3] = 0;
          v236 = vmulq_f32(v235, v189);
          v236.i64[0] = vpaddq_f32(v236, v236).u64[0];
          v237 = vpadd_f32(*v236.f32, *v236.f32);
          v238 = vrecpe_f32(v234);
          v239 = 4;
          do
          {
            v238 = vmul_f32(v238, vrecps_f32(v234, v238));
            --v239;
          }

          while (v239);
          v51 = vmlaq_n_f32(v366, v189, vmax_f32(vmin_f32(vmul_f32(v237, v238), _D9), 0).f32[0]);
          goto LABEL_78;
        }

        *&v191.u32[2] = v192;
        v195 = vextq_s8(v367, v367, 8uLL).u64[0];
        v196 = vextq_s8(v368[0], v368[0], 8uLL).u64[0];
        v197 = vextq_s8(v368[0], v368[0], 4uLL).u64[0];
        v198 = vextq_s8(v367, v367, 4uLL).u64[0];
        v199 = vmls_f32(vmul_f32(*v367.f32, v197), v198, *v368[0].f32);
        *v200.f32 = vext_s8(v199, vmls_f32(vmul_f32(v195, *v368[0].f32), *v367.f32, v196), 4uLL);
        v200.i64[1] = v199.u32[0];
        v201 = vextq_s8(v366, v366, 8uLL).u64[0];
        v202 = vextq_s8(v366, v366, 4uLL).u64[0];
        v203 = vmls_f32(vmul_f32(v202, *v368[0].f32), v197, *v366.f32);
        *v204.f32 = vext_s8(v203, vmls_f32(vmul_f32(*v366.f32, v196), *v368[0].f32, v201), 4uLL);
        v204.i64[1] = v203.u32[0];
        v205 = vmls_f32(vmul_f32(*v366.f32, v198), v202, *v367.f32);
        *v206.f32 = vext_s8(v205, vmls_f32(vmul_f32(v201, *v367.f32), *v366.f32, v195), 4uLL);
        v206.i64[1] = v205.u32[0];
        v207 = vmulq_f32(v200, v191);
        v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
        v208 = vpadd_f32(*v207.f32, *v207.f32);
        v209 = vmulq_f32(v204, v191);
        v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
        v210 = vpadd_f32(*v209.f32, *v209.f32);
        v211 = vmulq_f32(v206, v191);
        v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
        v212 = vpadd_f32(*v211.f32, *v211.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v210), vcgez_f32(v208)), vcgez_f32(v212)), 0), *v366.f32).u32[0] != -1)
        {
          v213 = vnegq_f32(v366);
          v213.i32[3] = 0;
          v214 = vnegq_f32(v367);
          v214.i32[3] = 0;
          v215 = vmulq_f32(v213, v189);
          v215.i64[0] = vpaddq_f32(v215, v215).u64[0];
          v216 = vpadd_f32(*v215.f32, *v215.f32);
          v217 = vmulq_f32(v189, v214);
          v217.i64[0] = vpaddq_f32(v217, v217).u64[0];
          v218 = vpadd_f32(*v217.f32, *v217.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v212), vand_s8(vclez_f32(v218), vcgez_f32(v216))), 0), *v366.f32).u32[0] == -1)
          {
            v245 = vsub_f32(v216, v218);
            v246 = vrecpe_f32(v245);
            v247 = 4;
            do
            {
              v246 = vmul_f32(v246, vrecps_f32(v245, v246));
              --v247;
            }

            while (v247);
            v231 = 0;
            v51 = vmlaq_n_f32(v366, v189, vmul_f32(v216, vbsl_s8(vcgt_f32(vabs_f32(v245), 0x3400000034000000), v246, 0)).f32[0]);
            v230 = 2;
            v232 = &v355;
            v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
            goto LABEL_86;
          }

          v219 = vnegq_f32(v368[0]);
          v219.i32[3] = 0;
          v220 = vmulq_f32(v214, v190);
          v220.i64[0] = vpaddq_f32(v220, v220).u64[0];
          v221 = vpadd_f32(*v220.f32, *v220.f32);
          v222 = vmulq_f32(v189, v219);
          v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
          v223 = vpadd_f32(*v222.f32, *v222.f32);
          v224 = vmulq_f32(v190, v219);
          v224.i64[0] = vpaddq_f32(v224, v224).u64[0];
          v225 = vpadd_f32(*v224.f32, *v224.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v221, v218), vcge_f32(v223, v225)), vclez_f32(v208)), 0), *v366.f32).u32[0] == -1)
          {
            v252 = vsub_f32(v221, v218);
            v253 = vadd_f32(v252, vsub_f32(v223, v225));
            v254 = vrecpe_f32(v253);
            v255 = 4;
            do
            {
              v254 = vmul_f32(v254, vrecps_f32(v253, v254));
              --v255;
            }

            while (v255);
            v256 = vmlaq_n_f32(v367, vsubq_f32(v368[0], v367), vmul_f32(v252, vbsl_s8(vcgt_f32(vabs_f32(v253), 0x3400000034000000), v254, 0)).f32[0]);
            v256.i64[1] = vextq_s8(v256, v256, 8uLL).u32[0];
            v230 = 2;
            v51 = v256;
            v231 = 1;
            v232 = &v356;
          }

          else
          {
            v226 = vmulq_f32(v213, v190);
            v226.i64[0] = vpaddq_f32(v226, v226).u64[0];
            v227 = vpadd_f32(*v226.f32, *v226.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v210), vand_s8(vclez_f32(v225), vcgez_f32(v227))), 0), *v366.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v227), vclez_f32(v216)), 0), *v366.f32).u32[0] == -1)
              {
                v231 = 0;
                v230 = 1;
                v232 = &v355;
              }

              else
              {
                *v51.f32 = vdup_lane_s16(vand_s8(vcge_f32(v218, v221), vcgez_f32(v218)), 0);
                *v51.f32 = vuzp1_s8(*v51.f32, *v51.f32);
                v228 = v51.i32[0];
                v229 = vdupq_lane_s32(*&vceqq_s32(v51, v339), 0);
                v230 = 1;
                if (v228 == -1)
                {
                  v231 = 1;
                }

                else
                {
                  v231 = 2;
                }

                v232 = &v355;
                v51 = vbslq_s8(v229, v367, v368[0]);
              }

LABEL_86:
              v249 = &v361;
              v248 = &v358;
              v250 = &v364;
              v251 = &v367;
LABEL_94:
              v260 = *(&v366 + v231);
              v261 = *v251;
              v262 = *(&v363 + v231);
              v263 = *v250;
              v264 = *(&v360 + v231);
              v265 = *v249;
              v266 = *(&v357 + v231);
              v267 = *v248;
              v268 = *(&v354 + v231);
              v269 = *v232;
              v366 = v260;
              v367 = v261;
              v363 = v262;
              v364 = v263;
              v360 = v264;
              v361 = v265;
              v357 = v266;
              v358 = v267;
              v354 = v268;
              v355 = v269;
              v351 = v230;
              break;
            }

            v257 = vsub_f32(v227, v225);
            v258 = vrecpe_f32(v257);
            v259 = 4;
            do
            {
              v258 = vmul_f32(v258, vrecps_f32(v257, v258));
              --v259;
            }

            while (v259);
            v231 = 0;
            v51 = vmlaq_n_f32(v366, v190, vmul_f32(v227, vbsl_s8(vcgt_f32(vabs_f32(v257), 0x3400000034000000), v258, 0)).f32[0]);
            v230 = 2;
            v232 = &v356;
            v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
          }

          v249 = v362;
          v248 = &v359;
          v250 = v365;
          v251 = v368;
          goto LABEL_94;
        }

        v240 = vmulq_f32(v366, v191);
        v241 = vextq_s8(v240, v240, 8uLL).u64[0];
        v242 = vrecpe_f32(v194);
        v243 = 4;
        do
        {
          v242 = vmul_f32(v242, vrecps_f32(v194, v242));
          --v243;
        }

        while (v243);
        v244 = vpadd_f32(*v240.i8, v241);
        v51 = vmulq_n_f32(v191, vmul_f32(v242, vpadd_f32(v244, v244)).f32[0]);
        v51.i32[3] = 0;
        break;
      case 1:
        v51 = v366;
        v181 = vsubq_f32(v367, v366);
        v182 = vmulq_f32(v181, v181);
        v182.i64[0] = vpaddq_f32(v182, v182).u64[0];
        v183 = vpadd_f32(*v182.f32, *v182.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v183), 0), *v366.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v184 = vnegq_f32(v366);
        v184.i32[3] = 0;
        v185 = vmulq_f32(v184, v181);
        v185.i64[0] = vpaddq_f32(v185, v185).u64[0];
        v186 = vpadd_f32(*v185.f32, *v185.f32);
        v187 = vrecpe_f32(v183);
        v188 = 4;
        do
        {
          v187 = vmul_f32(v187, vrecps_f32(v183, v187));
          --v188;
        }

        while (v188);
        v51 = vmlaq_n_f32(v366, v181, vmax_f32(vmin_f32(vmul_f32(v186, v187), _D9), 0).f32[0]);
LABEL_78:
        v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
        break;
    }

    v352 = v51;
    v270 = vmulq_f32(v51, v51);
    v270.i64[0] = vpaddq_f32(v270, v270).u64[0];
    v271 = vpadd_f32(*v270.f32, *v270.f32);
    v272 = vrsqrte_f32(v271);
    v273 = 4;
    do
    {
      v272 = vmul_f32(v272, vrsqrts_f32(vmul_f32(v272, v272), v271));
      --v273;
    }

    while (v273);
    v69 = vbsl_s8(vdup_lane_s32(vceqz_f32(v271), 0), v271, vmul_f32(v271, v272));
    v274 = vrecpe_f32(v69);
    v275 = 4;
    do
    {
      v274 = vmul_f32(v274, vrecps_f32(v69, v274));
      --v275;
    }

    while (v275);
    v276 = vmulq_n_f32(v51, v274.f32[0]);
    v276.i32[3] = 0;
    v346 = v276;
    *v276.f32 = vcgt_f32(v180, v69);
    v163 = vdupq_lane_s32(*v276.f32, 0);
    v70 = vdupq_lane_s32(vand_s8(vcgt_f32(v69, v24), *v276.f32), 0);
    v162 = v180;
    v71 = v345;
  }

  v277 = vmovn_s32(vceqzq_s32(v163));
  v278 = v351;
  if (vuzp1_s8(v277, v277).u32[0] != -1)
  {
    if (v13)
    {
      *a8 = v351;
      if (v278)
      {
        v279 = &v354;
        v280 = &v357;
        do
        {
          v281 = *v280++;
          *v13++ = v281;
          v282 = *v279++;
          *v12++ = v282;
          --v278;
        }

        while (v278);
      }
    }

    return 5;
  }

  v297 = v344;
  if (v13)
  {
    v298 = v351 - 1;
    *a8 = v351 - 1;
    if (v278 != 1)
    {
      v299 = &v354;
      v300 = &v357;
      do
      {
        v301 = *v300++;
        *v13++ = v301;
        v302 = *v299++;
        *v12++ = v302;
        --v298;
      }

      while (v298);
      goto LABEL_125;
    }

LABEL_128:
    v303 = v363;
    v304 = v360;
  }

  else
  {
LABEL_125:
    v352 = v71;
    if (v278 == 3)
    {
      v350.i64[0] = 0;
      v353 = 0;
      v349 = v71;
      physx::Gu::barycentricCoordinates(&v352, &v366, &v367, v368, &v350, &v353);
      v297 = v344;
      v329 = vmulq_n_f32(vsubq_f32(v364, v363), v350.f32[0]);
      v329.i32[3] = 0;
      v330 = vmulq_n_f32(vsubq_f32(v365[0], v363), v353.f32[0]);
      v330.i32[3] = 0;
      v331 = vaddq_f32(v329, v330);
      v332 = vmulq_n_f32(vsubq_f32(v361, v360), v350.f32[0]);
      v332.i32[3] = 0;
      v303 = vaddq_f32(v363, v331);
      v333 = vmulq_n_f32(vsubq_f32(v362[0], v360), v353.f32[0]);
      v71 = v349;
      v333.i32[3] = 0;
      v304 = vaddq_f32(v360, vaddq_f32(v332, v333));
    }

    else if (v278 == 2)
    {
      v321 = vsubq_f32(v366, v71);
      v322 = vsubq_f32(vsubq_f32(v367, v71), v321);
      v323 = vmulq_f32(v322, v322);
      v323.i64[0] = vpaddq_f32(v323, v323).u64[0];
      v324 = vpadd_f32(*v323.f32, *v323.f32);
      v325 = vrecpe_f32(v324);
      v326 = 4;
      do
      {
        v325 = vmul_f32(v325, vrecps_f32(v324, v325));
        --v326;
      }

      while (v326);
      v327 = vnegq_f32(v321);
      v327.i32[3] = 0;
      v328 = vmulq_f32(v327, v322);
      v328.i64[0] = vpaddq_f32(v328, v328).u64[0];
      v327.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v324), v325, 0), vpadd_f32(*v328.f32, *v328.f32)).u32[0];
      v303 = vmlaq_n_f32(v363, vsubq_f32(v364, v363), v327.f32[0]);
      v303.i64[1] = vextq_s8(v303, v303, 8uLL).u32[0];
      v304 = vmlaq_n_f32(v360, vsubq_f32(v361, v360), v327.f32[0]);
      v304.i64[1] = vextq_s8(v304, v304, 8uLL).u32[0];
    }

    else
    {
      v303 = 0uLL;
      v304 = 0uLL;
      if (v278 == 1)
      {
        goto LABEL_128;
      }
    }
  }

  v334 = vrecpe_f32(v162);
  v335 = 4;
  do
  {
    v334 = vmul_f32(v334, vrecps_f32(v162, v334));
    --v335;
  }

  while (v335);
  v336 = vmulq_n_f32(v71, v334.f32[0]);
  v336.i32[3] = 0;
  *(a12 + 32) = v336;
  *(a12 + 48) = v346;
  if (a5)
  {
    *a12 = v303;
    *(a12 + 16) = v304;
    *(a12 + 64) = v162;
  }

  else
  {
    v337 = vmlsq_lane_f32(v303, v336, v340, 0);
    v337.i64[1] = vextq_s8(v337, v337, 8uLL).u32[0];
    v338 = vmlaq_n_f32(v304, v336, v341);
    v338.i64[1] = vextq_s8(v338, v338, 8uLL).u32[0];
    *a12 = v337;
    *(a12 + 16) = v338;
    *(a12 + 64) = vsub_f32(v162, v297);
    if (vcge_f32(v297, v162).u32[0])
    {
      return 2;
    }
  }

  return 4;
}

double physx::Gu::LocalConvex<physx::Gu::TriangleV>::support(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 8);
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = vmulq_f32(v3, *a2);
  v6.i64[0] = vpaddq_f32(v6, v6).u64[0];
  *v6.f32 = vpadd_f32(*v6.f32, *v6.f32);
  v7 = vmulq_f32(v4, *a2);
  v7.i64[0] = vpaddq_f32(v7, v7).u64[0];
  *v7.f32 = vpadd_f32(*v7.f32, *v7.f32);
  v8 = vmulq_f32(v5, *a2);
  v8.i64[0] = vpaddq_f32(v8, v8).u64[0];
  *v8.f32 = vpadd_f32(*v8.f32, *v8.f32);
  *&result = vbslq_s8(vmovl_s16(vdup_lane_s16(vand_s8(vcgt_f32(*v6.f32, *v8.f32), vcgt_f32(*v6.f32, *v7.f32)), 0)), v3, vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(*v7.f32, *v8.f32), 0)), v4, v5)).u64[0];
  return result;
}

double physx::Gu::LocalConvex<physx::Gu::TriangleV>::support(uint64_t a1, float32x4_t *a2, unsigned __int32 *a3)
{
  v3 = *(a1 + 8);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = vmulq_f32(v4, *a2);
  v7.i64[0] = vpaddq_f32(v7, v7).u64[0];
  *v7.f32 = vpadd_f32(*v7.f32, *v7.f32);
  v8 = vmulq_f32(v5, *a2);
  v8.i64[0] = vpaddq_f32(v8, v8).u64[0];
  *v8.f32 = vpadd_f32(*v8.f32, *v8.f32);
  v9 = vmulq_f32(v6, *a2);
  v9.i64[0] = vpaddq_f32(v9, v9).u64[0];
  *v9.f32 = vpadd_f32(*v9.f32, *v9.f32);
  *v7.f32 = vand_s8(vcgt_f32(*v7.f32, *v9.f32), vcgt_f32(*v7.f32, *v8.f32));
  v10 = vmovl_s16(vdup_lane_s16(vcgt_f32(*v8.f32, *v9.f32), 0));
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  *a3 = vbslq_s8(v10, v11, v8).u32[0] & ~v7.i32[0];
  *&result = vbslq_s8(vdupq_lane_s32(*v7.f32, 0), v4, vbslq_s8(v10, v5, v6)).u64[0];
  return result;
}

BOOL physx::Gu::gjkRaycast<physx::Gu::LocalConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(uint64_t a1, uint64_t a2, float32x4_t *a3, int32x2_t a4, uint64_t a5, float32x4_t *a6, float32x4_t *a7, float32x2_t *a8, float32x4_t *a9, int8x16_t *a10)
{
  v227 = *MEMORY[0x1E69E9840];
  v14 = vmlaq_f32(*a6, 0, *a7);
  v15 = vextq_s8(v14, v14, 8uLL).u32[0];
  v215 = 1;
  v16 = vmulq_f32(*a3, *a3);
  v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
  v17 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v16.f32, *v16.f32), 0x3400000034000000), 0)), *a3, xmmword_1E3047670);
  v18 = vmulq_f32(v17, v17);
  v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
  v19 = vpadd_f32(*v18.f32, *v18.f32);
  v20 = vrsqrte_f32(v19);
  v21 = 4;
  do
  {
    v20 = vmul_f32(v20, vrsqrts_f32(vmul_f32(v20, v20), v19));
    --v21;
  }

  while (v21);
  v22 = vbsl_s8(vdup_lane_s32(vceqz_f32(v19), 0), v19, vmul_f32(v19, v20));
  v23 = vrecpe_f32(v22);
  v24 = 4;
  do
  {
    v23 = vmul_f32(v23, vrecps_f32(v22, v23));
    --v24;
  }

  while (v24);
  v25 = vdup_lane_s32(a4, 0);
  v14.i64[1] = v15;
  v26 = vmulq_n_f32(v17, v23.f32[0]);
  v26.i32[3] = 0;
  v27 = vnegq_f32(v26);
  v27.i32[3] = 0;
  v28 = *(a1 + 8);
  v29 = v28[3];
  v30 = v28[4];
  v31 = v28[5];
  v32 = vmulq_f32(v27, v29);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  *v32.f32 = vpadd_f32(*v32.f32, *v32.f32);
  v33 = vmulq_f32(v27, v30);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  *v33.f32 = vpadd_f32(*v33.f32, *v33.f32);
  v34 = vmulq_f32(v27, v31);
  v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
  *v34.f32 = vpadd_f32(*v34.f32, *v34.f32);
  v35 = vbslq_s8(vmovl_s16(vdup_lane_s16(vand_s8(vcgt_f32(*v32.f32, *v34.f32), vcgt_f32(*v32.f32, *v33.f32)), 0)), v29, vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(*v33.f32, *v34.f32), 0)), v30, v31));
  v36 = *(a2 + 8);
  v37 = v36[3];
  v38 = vnegq_f32(v37);
  v38.i32[3] = 0;
  v39 = vbslq_s8(vcgtzq_f32(v26), v37, v38);
  v40 = vsubq_f32(v35, v39);
  v224 = v40;
  v225 = 0u;
  memset(v226, 0, sizeof(v226));
  v221 = v35;
  v222 = 0u;
  memset(v223, 0, sizeof(v223));
  v41 = vnegq_f32(v40);
  v41.i32[3] = 0;
  v36 = (v36 + 24);
  v219 = 0u;
  memset(v220, 0, sizeof(v220));
  *v35.f32 = vld1_dup_f32(v36->f32);
  v218 = v39;
  v42 = vneg_f32(0x80000000800000);
  *v35.f32 = vmul_f32(vmin_f32(*v35.f32, v42), vdup_n_s32(0x3DCCCCCDu));
  v43 = vadd_f32(v25, *v35.f32);
  *v39.f32 = vmul_f32(*v35.f32, *v35.f32);
  v44 = vmul_f32(v43, v43);
  v45 = vmulq_f32(v41, v41);
  v46 = vpaddq_f32(v45, v45);
  v47 = vpadd_f32(*v46.f32, *v46.f32);
  v206 = *v39.f32;
  v48 = vcgt_f32(v47, *v39.f32);
  v49.i64[0] = -1;
  v49.i64[1] = -1;
  v46.i32[0] = -1;
  v205 = v46;
  v50 = v40;
  v209 = v41;
  v51 = v41;
  v52 = 0;
  while (1)
  {
    v53 = v40;
    v54 = vcltz_s16(vshl_n_s16(vdup_lane_s16(v48, 0), 0xFuLL));
    v55 = vuzp1_s8(v54, v54).u32[0];
    if (v55 != -1)
    {
      break;
    }

    v56 = vmulq_f32(v51, v51);
    v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
    v57 = vpadd_f32(*v56.f32, *v56.f32);
    v58 = vrsqrte_f32(v57);
    v59 = 4;
    do
    {
      v58 = vmul_f32(v58, vrsqrts_f32(vmul_f32(v58, v58), v57));
      --v59;
    }

    while (v59);
    v60 = vbsl_s8(vdup_lane_s32(vceqz_f32(v57), 0), v57, vmul_f32(v57, v58));
    v61 = vrecpe_f32(v60);
    v62 = 4;
    do
    {
      v61 = vmul_f32(v61, vrecps_f32(v60, v61));
      --v62;
    }

    while (v62);
    v63 = vmulq_n_f32(v51, v61.f32[0]);
    v63.i32[3] = 0;
    v64 = vnegq_f32(v63);
    v64.i32[3] = 0;
    v65 = *(a1 + 8);
    v66 = v65[3];
    v67 = v65[4];
    v68 = v65[5];
    v69 = vmulq_f32(v63, v66);
    v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
    *v69.f32 = vpadd_f32(*v69.f32, *v69.f32);
    v70 = vmulq_f32(v63, v67);
    v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
    *v70.f32 = vpadd_f32(*v70.f32, *v70.f32);
    v71 = vmulq_f32(v63, v68);
    v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
    *v71.f32 = vpadd_f32(*v71.f32, *v71.f32);
    v72 = vbslq_s8(vmovl_s16(vdup_lane_s16(vand_s8(vcgt_f32(*v69.f32, *v71.f32), vcgt_f32(*v69.f32, *v70.f32)), 0)), v66, vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(*v70.f32, *v71.f32), 0)), v67, v68));
    v73 = *(*(a2 + 8) + 48);
    v74 = vnegq_f32(v73);
    v74.i32[3] = 0;
    v75 = vbslq_s8(vcgtzq_f32(v64), v73, v74);
    v76 = vaddq_f32(v14, v75);
    v40 = vsubq_f32(v72, v76);
    v77 = vnegq_f32(v40);
    v77.i32[3] = 0;
    v78 = vmulq_f32(v63, v77);
    v78.i64[0] = vpaddq_f32(v78, v78).u64[0];
    v79 = vsub_f32(vpadd_f32(*v78.f32, *v78.f32), v43);
    if (v79.f32[0] > 0.0)
    {
      v80 = vmulq_f32(v63, *a7);
      v80.i64[0] = vpaddq_f32(v80, v80).u64[0];
      v81 = vpadd_f32(*v80.f32, *v80.f32);
      if (v81.f32[0] >= 0.0)
      {
        return v55 != -1;
      }

      v82 = vrecpe_f32(v81);
      v83 = 4;
      do
      {
        v82 = vmul_f32(v82, vrecps_f32(v81, v82));
        --v83;
      }

      while (v83);
      v84 = vsub_f32(v52, vmul_f32(v79, v82));
      if (vcgt_f32(v84, v52).u8[0])
      {
        if (v84.f32[0] > 1.0)
        {
          return v55 != -1;
        }

        v85 = vmlaq_n_f32(*a6, *a7, v84.f32[0]);
        v85.i64[1] = vextq_s8(v85, v85, 8uLL).u32[0];
        v86 = vsubq_f32(v85, v14);
        v218 = vaddq_f32(v218, v86);
        v219 = vaddq_f32(v219, v86);
        v220[0] = vaddq_f32(v220[0], v86);
        v224 = vsubq_f32(v221, v218);
        v225 = vsubq_f32(v222, v219);
        v226[0] = vsubq_f32(v223[0], v220[0]);
        v76 = vaddq_f32(v75, v85);
        v40 = vsubq_f32(v72, v76);
        v47 = v42;
        v209 = v51;
        v14 = v85;
      }

      v52 = v84;
    }

    v212 = v53;
    v87 = v215;
    *(&v221 + v215) = v72;
    *(&v218 + v87) = v76;
    v215 = v87 + 1;
    *(&v224 + v87) = v40;
    if (v87 == 3)
    {
      v210 = v14;
      physx::Gu::closestPtPointTetrahedron(&v224, &v221, &v218, &v215);
      v14 = v210;
LABEL_36:
      v50 = v212;
      goto LABEL_60;
    }

    if (v87 == 2)
    {
      v40 = v224;
      v102 = vsubq_f32(v225, v224);
      v103 = vsubq_f32(v226[0], v224);
      v105 = vmls_f32(vmul_f32(*v102.f32, *&vextq_s8(v103, v103, 4uLL)), *&vextq_s8(v102, v102, 4uLL), *v103.f32);
      *v104.f32 = vext_s8(v105, vmls_f32(vmul_f32(*&vextq_s8(v102, v102, 8uLL), *v103.f32), *v102.f32, *&vextq_s8(v103, v103, 8uLL)), 4uLL);
      v105.i32[1] = 0;
      v215 = 3;
      v106 = vpadd_f32(vmul_f32(*v104.f32, *v104.f32), vmul_f32(v105.u32[0], v105.u32[0]));
      v107 = vpadd_f32(v106, v106);
      if (v107.f32[0] <= 0.00000011921)
      {
        v215 = 2;
        v144 = vmulq_f32(v102, v102);
        v144.i64[0] = vpaddq_f32(v144, v144).u64[0];
        v145 = vpadd_f32(*v144.f32, *v144.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v145), 0), *v224.f32).u32[0] == -1)
        {
          v215 = 1;
          goto LABEL_36;
        }

        v146 = vnegq_f32(v224);
        v146.i32[3] = 0;
        v147 = vmulq_f32(v146, v102);
        v147.i64[0] = vpaddq_f32(v147, v147).u64[0];
        v148 = vpadd_f32(*v147.f32, *v147.f32);
        v149 = vrecpe_f32(v145);
        v150 = 4;
        v50 = v53;
        do
        {
          v149 = vmul_f32(v149, vrecps_f32(v145, v149));
          --v150;
        }

        while (v150);
        v151 = vmul_f32(v148, v149);
        __asm { FMOV            V2.2S, #1.0 }

        v40 = vmlaq_n_f32(v224, v102, vmax_f32(vmin_f32(v151, _D2), 0).f32[0]);
        goto LABEL_41;
      }

      *&v104.u32[2] = v105;
      v108 = vextq_s8(v225, v225, 8uLL).u64[0];
      v109 = vextq_s8(v226[0], v226[0], 8uLL).u64[0];
      v110 = vextq_s8(v226[0], v226[0], 4uLL).u64[0];
      v111 = vextq_s8(v225, v225, 4uLL).u64[0];
      v112 = vmls_f32(vmul_f32(*v225.f32, v110), v111, *v226[0].f32);
      *v113.f32 = vext_s8(v112, vmls_f32(vmul_f32(v108, *v226[0].f32), *v225.f32, v109), 4uLL);
      v113.i64[1] = v112.u32[0];
      v114 = vextq_s8(v224, v224, 8uLL).u64[0];
      v115 = vextq_s8(v224, v224, 4uLL).u64[0];
      v116 = vmls_f32(vmul_f32(v115, *v226[0].f32), v110, *v224.f32);
      *v117.f32 = vext_s8(v116, vmls_f32(vmul_f32(*v224.f32, v109), *v226[0].f32, v114), 4uLL);
      v117.i64[1] = v116.u32[0];
      v118 = vmls_f32(vmul_f32(*v224.f32, v111), v115, *v225.f32);
      *v119.f32 = vext_s8(v118, vmls_f32(vmul_f32(v114, *v225.f32), *v224.f32, v108), 4uLL);
      v119.i64[1] = v118.u32[0];
      v120 = vmulq_f32(v113, v104);
      v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
      v121 = vpadd_f32(*v120.f32, *v120.f32);
      v122 = vmulq_f32(v117, v104);
      v122.i64[0] = vpaddq_f32(v122, v122).u64[0];
      v123 = vpadd_f32(*v122.f32, *v122.f32);
      v124 = vmulq_f32(v119, v104);
      v124.i64[0] = vpaddq_f32(v124, v124).u64[0];
      v125 = vpadd_f32(*v124.f32, *v124.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v123), vcgez_f32(v121)), vcgez_f32(v125)), 0), *v224.f32).u32[0] == -1)
      {
        v153 = vmulq_f32(v224, v104);
        v154 = vextq_s8(v153, v153, 8uLL).u64[0];
        v155 = vrecpe_f32(v107);
        v156 = 4;
        do
        {
          v155 = vmul_f32(v155, vrecps_f32(v107, v155));
          --v156;
        }

        while (v156);
        v157 = vpadd_f32(*v153.i8, v154);
        v40 = vmulq_n_f32(v104, vmul_f32(v155, vpadd_f32(v157, v157)).f32[0]);
        v40.i32[3] = 0;
        goto LABEL_36;
      }

      v126 = vnegq_f32(v224);
      v126.i32[3] = 0;
      v127 = vnegq_f32(v225);
      v127.i32[3] = 0;
      v128 = vmulq_f32(v126, v102);
      v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
      v129 = vpadd_f32(*v128.f32, *v128.f32);
      v130 = vmulq_f32(v102, v127);
      v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
      v131 = vpadd_f32(*v130.f32, *v130.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v125), vand_s8(vclez_f32(v131), vcgez_f32(v129))), 0), *v224.f32).u32[0] == -1)
      {
        v158 = vsub_f32(v129, v131);
        v159 = vrecpe_f32(v158);
        v160 = 4;
        v50 = v212;
        do
        {
          v159 = vmul_f32(v159, vrecps_f32(v158, v159));
          --v160;
        }

        while (v160);
        v143 = 0;
        v40 = vmlaq_n_f32(v224, v102, vmul_f32(v129, vbsl_s8(vcgt_f32(vabs_f32(v158), 0x3400000034000000), v159, 0)).f32[0]);
        v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
        v142 = 2;
        v161 = &v219;
        v162 = &v222;
        v163 = &v225;
      }

      else
      {
        v132 = vnegq_f32(v226[0]);
        v132.i32[3] = 0;
        v133 = vmulq_f32(v127, v103);
        v133.i64[0] = vpaddq_f32(v133, v133).u64[0];
        v134 = vpadd_f32(*v133.f32, *v133.f32);
        v135 = vmulq_f32(v102, v132);
        v135.i64[0] = vpaddq_f32(v135, v135).u64[0];
        v136 = vpadd_f32(*v135.f32, *v135.f32);
        v137 = vmulq_f32(v103, v132);
        v137.i64[0] = vpaddq_f32(v137, v137).u64[0];
        v138 = vpadd_f32(*v137.f32, *v137.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v134, v131), vcge_f32(v136, v138)), vclez_f32(v121)), 0), *v224.f32).u32[0] == -1)
        {
          v164 = vsub_f32(v134, v131);
          v165 = vadd_f32(v164, vsub_f32(v136, v138));
          v166 = vrecpe_f32(v165);
          v167 = 4;
          do
          {
            v166 = vmul_f32(v166, vrecps_f32(v165, v166));
            --v167;
          }

          while (v167);
          v168 = vmlaq_n_f32(v225, vsubq_f32(v226[0], v225), vmul_f32(v164, vbsl_s8(vcgt_f32(vabs_f32(v165), 0x3400000034000000), v166, 0)).f32[0]);
          v142 = 2;
          v162 = v223;
          v161 = v220;
          v168.i64[1] = vextq_s8(v168, v168, 8uLL).u32[0];
          v163 = v226;
          v143 = 1;
          v40 = v168;
        }

        else
        {
          v139 = vmulq_f32(v126, v103);
          v139.i64[0] = vpaddq_f32(v139, v139).u64[0];
          v140 = vpadd_f32(*v139.f32, *v139.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v123), vand_s8(vclez_f32(v138), vcgez_f32(v140))), 0), *v224.f32).u32[0] == -1)
          {
            v169 = vsub_f32(v140, v138);
            v170 = vrecpe_f32(v169);
            v171 = 4;
            do
            {
              v170 = vmul_f32(v170, vrecps_f32(v169, v170));
              --v171;
            }

            while (v171);
            v143 = 0;
            v40 = vmlaq_n_f32(v224, v103, vmul_f32(v140, vbsl_s8(vcgt_f32(vabs_f32(v169), 0x3400000034000000), v170, 0)).f32[0]);
            v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
            v142 = 2;
            v162 = v223;
            v161 = v220;
            v163 = v226;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v140), vclez_f32(v129)), 0), *v224.f32).u32[0] == -1)
            {
              v143 = 0;
              v142 = 1;
            }

            else
            {
              *v40.f32 = vdup_lane_s16(vand_s8(vcge_f32(v131, v134), vcgez_f32(v131)), 0);
              *v40.f32 = vuzp1_s8(*v40.f32, *v40.f32);
              v141 = v40.i32[0];
              v142 = 1;
              v40 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v40, v205), 0), v225, v226[0]);
              if (v141 == -1)
              {
                v143 = 1;
              }

              else
              {
                v143 = 2;
              }
            }

            v161 = &v219;
            v162 = &v222;
            v163 = &v225;
          }
        }

        v50 = v212;
      }

      v172 = *(&v221 + v143);
      v173 = *v163;
      v174 = *v162;
      v175 = *(&v218 + v143);
      v176 = *v161;
      v224 = *(&v224 + v143);
      v225 = v173;
      v221 = v172;
      v222 = v174;
      v218 = v175;
      v219 = v176;
      v215 = v142;
    }

    else
    {
      v50 = v53;
      if (v87 != 1)
      {
        goto LABEL_60;
      }

      v40 = v224;
      v88 = vsubq_f32(v225, v224);
      v89 = vmulq_f32(v88, v88);
      v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
      v90 = vpadd_f32(*v89.f32, *v89.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v90), 0), *v224.f32).u32[0] != -1)
      {
        v91 = vnegq_f32(v224);
        v91.i32[3] = 0;
        v92 = vmulq_f32(v91, v88);
        v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
        v93 = vpadd_f32(*v92.f32, *v92.f32);
        v94 = vrecpe_f32(v90);
        v95 = 4;
        do
        {
          v94 = vmul_f32(v94, vrecps_f32(v90, v94));
          --v95;
        }

        while (v95);
        v96 = vmul_f32(v93, v94);
        __asm { FMOV            V3.2S, #1.0 }

        v40 = vmlaq_n_f32(v224, v88, vmax_f32(vmin_f32(v96, _D3), 0).f32[0]);
LABEL_41:
        v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
        goto LABEL_60;
      }

      v215 = 1;
    }

LABEL_60:
    v51 = vnegq_f32(v40);
    v51.i32[3] = 0;
    v177 = vmulq_f32(v40, v40);
    v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
    v178 = vpadd_f32(*v177.f32, *v177.f32);
    v179 = vcgt_f32(v47, v178);
    v49 = vdupq_lane_s32(vand_s8(v179, 0x100000001), 0);
    v48 = vand_s8(vcgt_f32(v178, v44), v179);
    v47 = v178;
  }

  v180 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v47, v206), 0), v49), 0x1FuLL)), v51, v209);
  v181 = vmulq_f32(v180, v180);
  v181.i64[0] = vpaddq_f32(v181, v181).u64[0];
  v182 = vpadd_f32(*v181.f32, *v181.f32);
  v183 = vrsqrte_f32(v182);
  v184 = 4;
  do
  {
    v183 = vmul_f32(v183, vrsqrts_f32(vmul_f32(v183, v183), v182));
    --v184;
  }

  while (v184);
  v185 = vbsl_s8(vdup_lane_s32(vceqz_f32(v182), 0), v182, vmul_f32(v182, v183));
  v186 = vrecpe_f32(v185);
  v187 = 4;
  do
  {
    v186 = vmul_f32(v186, vrecps_f32(v185, v186));
    --v187;
  }

  while (v187);
  v188 = vdupq_n_s32(-*(*(a1 + 8) + 32));
  v189 = vmulq_n_f32(v180, v186.f32[0]);
  v189.i32[3] = 0;
  v190 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v185), 0), v189));
  v190.i32[3] = 0;
  *a9 = v190;
  *a8 = v52;
  v191 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v49, 0x1FuLL)), v53, v50);
  v214 = v191;
  if (v215 == 3)
  {
    v216 = 0;
    v217 = 0;
    v211 = v190;
    v213 = v188;
    physx::Gu::barycentricCoordinates(&v214, &v224, &v225, v226, &v217, &v216);
    v190 = v211;
    v188 = v213;
    v186.i32[1] = v221.i32[1];
    v201 = vmulq_n_f32(vsubq_f32(v222, v221), v217.f32[0]);
    v201.i32[3] = 0;
    v202 = vmulq_n_f32(vsubq_f32(v223[0], v221), v216.f32[0]);
    v202.i32[3] = 0;
    v192 = vaddq_f32(v221, vaddq_f32(v201, v202));
  }

  else if (v215 == 2)
  {
    v193 = vsubq_f32(v224, v191);
    v194 = vsubq_f32(vsubq_f32(v225, v191), v193);
    v195 = vmulq_f32(v194, v194);
    v195.i64[0] = vpaddq_f32(v195, v195).u64[0];
    v196 = vpadd_f32(*v195.f32, *v195.f32);
    v197 = vrecpe_f32(v196);
    v198 = 4;
    do
    {
      v197 = vmul_f32(v197, vrecps_f32(v196, v197));
      --v198;
    }

    while (v198);
    v199 = vnegq_f32(v193);
    v199.i32[3] = 0;
    v200 = vmulq_f32(v199, v194);
    v200.i64[0] = vpaddq_f32(v200, v200).u64[0];
    v192 = vmlaq_n_f32(v221, vsubq_f32(v222, v221), vmul_f32(vbsl_s8(vcgtz_f32(v196), v197, 0), vpadd_f32(*v200.f32, *v200.f32)).f32[0]);
    v186.i32[1] = 0;
    v192.i64[1] = vextq_s8(v192, v192, 8uLL).u32[0];
  }

  else
  {
    v192 = 0uLL;
    if (v215 == 1)
    {
      v192 = v221;
    }
  }

  v186.i32[0] = *(*(a1 + 8) + 16);
  v203 = vmlsq_lane_f32(v192, v190, v186, 0);
  v203.i64[1] = vextq_s8(v203, v203, 8uLL).u32[0];
  *a10 = vbslq_s8(v188, v203, v192);
  return v55 != -1;
}

uint64_t physx::shdfnd::Array<physx::Gu::NodeAllocator::Slab,physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>>::resize(uint64_t result, unsigned int a2, _OWORD *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Gu::NodeAllocator::Slab,physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 16 * a2;
    v8 = (*v5 + 16 * v6);
    do
    {
      *v8++ = *a3;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Gu::NodeAllocator::Slab,physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>::getName() [T = physx::Gu::NodeAllocator::Slab]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 16 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode>::getName() [T = physx::Gu::AABBTreeBuildNode]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Gu::NodeAllocator::Slab,physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>>::growAndPushBack(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>::getName() [T = physx::Gu::NodeAllocator::Slab]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 16 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v8 + 16 * v9;
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(a1 + 8);
  }

  else
  {
    v14 = 0;
  }

  *(v8 + 16 * v14) = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  v15 = *(a1 + 8);
  *(a1 + 8) = v15 + 1;
  *(a1 + 12) = v5;
  return v8 + 16 * v15;
}

uint64_t physx::shdfnd::Array<physx::Gu::BVHNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Gu::BVHNode const*>>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 2068) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Gu::BVHNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Gu::BVHNode const*>>>::recreate(result, a2);
  }

  *(v3 + 2064) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Gu::BVHNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Gu::BVHNode const*>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  v4 = (8 * a2);
  if (v4 > 0x800 || (*(result + 2048) & 1) != 0)
  {
    if (v4)
    {
      v6 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v7 = "static const char *physx::shdfnd::ReflectionAllocator<const physx::Gu::BVHNode *>::getName() [T = const physx::Gu::BVHNode *]";
      }

      else
      {
        v7 = "<allocation names disabled>";
      }

      result = (*(*(v6 + 24) + 16))(v6 + 24, v4, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v5 = result;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    *(result + 2048) = 1;
    v5 = result;
  }

  v8 = *(v3 + 2064);
  v9 = *(v3 + 2056);
  if (v8)
  {
    v10 = &v5[v8];
    v11 = v5;
    do
    {
      v12 = *v9++;
      *v11++ = v12;
    }

    while (v11 < v10);
    v9 = *(v3 + 2056);
  }

  if ((*(v3 + 2068) & 0x80000000) == 0)
  {
    if (v9 == v3)
    {
      *(v3 + 2048) = 0;
    }

    else if (v9)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 2056) = v5;
  *(v3 + 2068) = a2;
  return result;
}

float physx::Gu::SweepAnyShapeHeightfield(int **a1, float *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, uint64_t a7, uint64_t a8, float a9, double a10, float a11, double a12, double a13, __n128 a14, unsigned int *a15)
{
  a14.n128_f32[0] = a9;
  v216 = *MEMORY[0x1E69E9840];
  v17 = *a2;
  v204 = *(*a2 + 8);
  v205 = v17;
  v18 = v17[3].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v202 = vrev64_s32(vdiv_f32(_D2, v17[2]));
  v203 = 1.0 / v18;
  v213[256] = 1;
  v215 = 0x4000000000;
  v214 = v213;
  v201[0] = &unk_1F5D21BD8;
  v201[1] = v213;
  v24 = a3[3].f32[0] - a5[3].f32[0];
  v25 = vsub_f32(a3[2], a5[2]);
  v26 = vsub_f32(a4[2], a6[2]);
  v27 = a4[3].f32[0] - a6[3].f32[0];
  v28 = (v24 - v27) * 0.5;
  v29 = (*(a1 + 19) + fabsf(v28)) + a14.n128_f32[0];
  v30 = v28 + *(a1 + 22);
  _D2.f32[0] = v30 - v29;
  v31 = v29 + v30;
  v171 = vsub_f32(v25, v26);
  v172 = a14;
  v32 = vmul_f32(v171, 0x3F0000003F000000);
  v33 = vdup_lane_s32(a14.n128_u64[0], 0);
  v34 = vadd_f32(vadd_f32(vabs_f32(v32), *(a1 + 68)), v33);
  v35 = vadd_f32(v32, a1[10]);
  v197 = vsub_f32(v35, v34);
  v199 = vadd_f32(v34, v35);
  v198 = _D2.i32[0];
  v200 = v31;
  physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v202, a4, &v197, 1, v201);
  *v179 = 0;
  v196 = 0;
  v195 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&v195, v215, v179);
  *v179 = 0;
  v193 = 0;
  v194 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&v193, v215, v179);
  v36 = v195;
  v37 = v215;
  if (!v215)
  {
    v39 = 0;
    goto LABEL_56;
  }

  v38 = 0;
  v39 = 0;
  v166 = v193;
  v40 = a1[10];
  v41 = v214;
  v42 = *(a1 + 22);
  v43 = vadd_f32(*(a1 + 68), v33);
  v44 = vdup_n_s32(0x3F8CCCCDu);
  v45 = vmul_f32(v43, v44);
  v46 = (*(a1 + 19) + v172.n128_f32[0]) * 1.1;
  v160 = vsub_f32(v26, v25);
  v157 = vadd_f32(v40, v45);
  v155 = v42 + v46;
  v153 = vsub_f32(v40, v45);
  v151 = v42 - v46;
  v168 = v45;
  v169 = v40;
  v40.f32[0] = v42;
  v45.f32[0] = v46;
  v162 = v45;
  v164 = v40;
  do
  {
    physx::Gu::HeightFieldUtil::getTriangle(&v202, a2 + 3, v179, 0, 0, *&v41[4 * v38], 1, 1);
    v47 = *&v179[20];
    v48 = *&v179[8];
    _D16 = vsub_f32(*&v179[12], *v179);
    v50 = vsub_f32(v180, *v179);
    v51 = v181;
    _S20 = v181 - *&v179[8];
    v53 = -(vmuls_lane_f32(-(*&v179[20] - *&v179[8]), v50, 1) + (_D16.f32[1] * (v181 - *&v179[8])));
    __asm { FMLA            S21, S20, V16.S[1] }

    v55 = ((*&v179[20] - *&v179[8]) * v50.f32[0]) - (_D16.f32[0] * (v181 - *&v179[8]));
    v56 = (-_D16.f32[1] * v50.f32[0]) + (_D16.f32[0] * v50.f32[1]);
    v57 = -v55;
    v58 = -v56;
    v59 = sqrtf(((v55 * v55) + (_S21 * _S21)) + (v56 * v56));
    if (v59 > 0.0)
    {
      v60 = 1.0 / v59;
      v53 = v60 * v53;
      v57 = v60 * v57;
      v58 = v60 * v58;
    }

    if ((((v171.f32[1] * v57) + (v171.f32[0] * v53)) + ((v24 - v27) * v58)) < a11)
    {
      goto LABEL_53;
    }

    v61 = vdup_n_s32(0x7E7FFFFFu);
    v62 = vcgt_f32(*v179, v61);
    v63 = 8.5071e37;
    v64 = vdup_n_s32(0xFE7FFFFF);
    if (*&v179[8] <= 8.5071e37)
    {
      v63 = *&v179[8];
    }

    v65 = vcgt_f32(v64, *v179);
    if (*&v179[8] < -8.5071e37)
    {
      v48 = -8.5071e37;
    }

    if (v63 >= *&v179[20])
    {
      v63 = *&v179[20];
    }

    if (v48 > *&v179[20])
    {
      v47 = v48;
    }

    if (v63 >= v181)
    {
      v66 = v181;
    }

    else
    {
      v66 = v63;
    }

    if (v47 > v181)
    {
      v51 = v47;
    }

    v67 = (v66 + v51) * 0.5;
    v68 = ((v51 - v66) * 0.5) + 0.01;
    v69 = vbsl_s8(v62, v61, *v179);
    v70 = vbsl_s8(v65, v64, *v179);
    v71 = vbsl_s8(vcgt_f32(*&v179[12], v69), v69, *&v179[12]);
    v72 = vbsl_s8(vcgt_f32(v70, *&v179[12]), v70, *&v179[12]);
    v73 = vbsl_s8(vcgt_f32(v180, v71), v71, v180);
    v74 = vbsl_s8(vcgt_f32(v72, v180), v72, v180);
    v75 = vmul_f32(vadd_f32(v73, v74), 0x3F0000003F000000);
    v76 = vmul_f32(vadd_f32(vmul_f32(vsub_f32(v74, v73), 0x3F0000003F000000), vdup_n_s32(0x3C23D70Au)), v44);
    v77 = v68 * 1.1;
    if (fabsf(vsub_f32(v169, v75).f32[0]) <= vadd_f32(v168, v76).f32[0])
    {
      v78 = vmvn_s8(vcge_f32(vadd_f32(v162, __PAIR64__(v76.u32[1], LODWORD(v77))), vabd_f32(v164, __PAIR64__(v75.u32[1], LODWORD(v67)))));
      if ((v78.i8[4] & 1) == 0)
      {
        v79 = v78.i8[0];
        v80 = 0.0;
        if ((v79 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v85 = 0;
    *&v176[0] = v160;
    *(v176 + 2) = v27 - v24;
    v187 = v157;
    *&v188 = v155;
    v211 = v153;
    v212 = v151;
    v208 = vadd_f32(v75, v76);
    v209 = v67 + v77;
    v206 = vsub_f32(v75, v76);
    v207 = v67 - v77;
    v80 = 0.0;
    v86 = 1.0;
    do
    {
      v87 = *(v176 + v85 * 4);
      if (v87 >= -0.000001)
      {
        if (v87 <= 0.000001)
        {
          if (v208.f32[v85] < v211.f32[v85] || *(&v206 + v85 * 4) > v187.f32[v85])
          {
            goto LABEL_53;
          }
        }

        else
        {
          v88 = *(&v206 + v85 * 4);
          v89 = v187.f32[v85];
          if (v88 > v89)
          {
            goto LABEL_53;
          }

          v93 = v208.f32[v85];
          v94 = v211.f32[v85];
          if (v93 < v94)
          {
            v95 = (v94 - v93) / v87;
            if (v95 > v80)
            {
              v80 = v95;
            }
          }

          if (v89 > v88)
          {
LABEL_41:
            v96 = (v89 - v88) / v87;
            if (v96 < v86)
            {
              v86 = v96;
            }
          }
        }
      }

      else
      {
        v88 = v208.f32[v85];
        v89 = v211.f32[v85];
        if (v88 < v89)
        {
          goto LABEL_53;
        }

        v90 = v187.f32[v85];
        v91 = *(&v206 + v85 * 4);
        if (v90 < v91)
        {
          v92 = (v90 - v91) / v87;
          if (v92 > v80)
          {
            v80 = v92;
          }
        }

        if (v88 > v89)
        {
          goto LABEL_41;
        }
      }

      if (v80 > v86)
      {
        goto LABEL_53;
      }

      ++v85;
    }

    while (v85 != 3);
    if (v80 > 1.0)
    {
      goto LABEL_53;
    }

LABEL_22:
    if (v39)
    {
      v81 = v39;
      v82 = &v36[v39];
      v83 = (v166 + 4 * v39);
      while (1)
      {
        v84 = *(v83 - 1);
        if (v84 <= v80)
        {
          break;
        }

        *v83-- = v84;
        *v82 = *(v82 - 1);
        --v82;
        if (!--v81)
        {
          goto LABEL_52;
        }
      }

      v81 = v81;
    }

    else
    {
      v81 = 0;
    }

LABEL_52:
    v36[v81] = *&v41[4 * v38];
    *(v166 + 4 * v81) = v80;
    ++v39;
LABEL_53:
    ++v38;
  }

  while (v38 != v37);
LABEL_56:
  v97 = 0;
  *a7 = 0;
  *(a7 + 8) = 0;
  *a8 = 0;
  *(a8 + 8) = 0;
  v98 = *(a1 + 2);
  v99 = a4[2].f32[0];
  v100 = a4[2].f32[1];
  v101 = a4[3].f32[0];
  v102 = (*(a1 + 7) - v99) + (*(a1 + 7) - v99);
  v103 = (*(a1 + 8) - v100) + (*(a1 + 8) - v100);
  v104 = (*(a1 + 9) - v101) + (*(a1 + 9) - v101);
  v106 = a4[1].f32[0];
  v105 = a4[1].f32[1];
  v107 = (v105 * v105) + -0.5;
  v108 = a4->f32[0];
  v109 = a4->f32[1];
  v110 = ((v103 * v109) + (a4->f32[0] * v102)) + (v106 * v104);
  *&v111 = ((v102 * v107) - (((v109 * v104) - (v106 * v103)) * v105)) + (a4->f32[0] * v110);
  *&v112 = ((v103 * v107) - (((v106 * v102) - (a4->f32[0] * v104)) * v105)) + (v109 * v110);
  v113 = ((v104 * v107) - (((a4->f32[0] * v103) - (v109 * v102)) * v105)) + (v106 * v110);
  v206 = __PAIR64__(v112, v111);
  v207 = v113;
  if (v39)
  {
    v159 = v98 * v98;
    v114 = (a5[2].f32[0] - v99) + (a5[2].f32[0] - v99);
    v115 = (a5[2].f32[1] - v100) + (a5[2].f32[1] - v100);
    v116 = (a5[3].f32[0] - v101) + (a5[3].f32[0] - v101);
    v117 = ((v109 * v115) + (v108 * v114)) + (v106 * v116);
    v156 = ((v114 * v107) - (((v109 * v116) - (v106 * v115)) * v105)) + (v108 * v117);
    v158 = v98;
    v152 = ((v116 * v107) - (((v108 * v115) - (v109 * v114)) * v105)) + (v106 * v117);
    v154 = ((v115 * v107) - (((v106 * v114) - (v108 * v116)) * v105)) + (v109 * v117);
    v118 = v39;
    v163 = 0;
    v119 = 0.0;
    v120 = -1;
    v121 = 3.4028e38;
    v122 = 0.0;
    v123 = 0.0;
    v161 = 0;
    do
    {
      physx::Gu::HeightFieldUtil::getTriangle(&v202, a6, &v187, 0, 0, *v36, 0, 0);
      *v124.f32 = v187;
      v124.i64[1] = v188;
      *v125.f32 = v189;
      v125.i64[1] = LODWORD(v190);
      *v126.f32 = v191;
      v126.i64[1] = LODWORD(v192);
      v127 = vmulq_f32(vaddq_f32(vaddq_f32(v124, v125), v126), vdupq_n_s32(0x3EAAAA9Fu));
      v127.i32[3] = 0;
      LOBYTE(v181) = 0;
      *v179 = v127;
      v182 = v124;
      v183 = v125;
      v184 = v126;
      *&v179[16] = 0x7F7FFFFF00000000;
      v180 = 0x57F7FFFFFLL;
      v128 = *a1;
      v176[0] = xmmword_1E3047670;
      v176[1] = xmmword_1E3047670;
      v176[2] = xmmword_1E3060D60;
      v176[3] = xmmword_1E3047680;
      v177 = 0x3F80000000000000;
      v178 = 0;
      v129 = (*(&physx::Gu::g_TriangleSweepMethodTable + *v128))(v172, 0.0);
      if (v129 <= 0.0)
      {
        v130 = v190 - *&v188;
        _S15 = v192 - *&v188;
        v167 = vsub_f32(v189, v187);
        *&v176[0] = vadd_f32(v187, v167);
        *(v176 + 2) = *&v188 + (v190 - *&v188);
        v165 = vsub_f32(v191, v187);
        v211 = vadd_f32(v187, v165);
        v212 = *&v188 + (v192 - *&v188);
        v210 = 0;
        physx::Gu::closestPtPointTriangle(&v206, &v187, v176, &v211, &v210 + 1, &v210, &v208);
        v132 = (((v208.f32[1] - *(&v206 + 1)) * (v208.f32[1] - *(&v206 + 1))) + ((v208.f32[0] - *&v206) * (v208.f32[0] - *&v206))) + ((v209 - v207) * (v209 - v207));
        v129 = 0.0;
        if (v132 < v159)
        {
          _S3 = v167.i32[1];
          __asm { FMLA            S0, S15, V5.S[1] }

          v135 = sqrtf(v132);
          v136 = v135 - v158;
          v137 = -((v158 * 2.0) - v135);
          if ((((v154 * ((v130 * v165.f32[0]) - (v167.f32[0] * _S15))) + (_S0 * v156)) + (((-v167.f32[1] * v165.f32[0]) + (v167.f32[0] * v165.f32[1])) * v152)) <= (((((v130 * v165.f32[0]) - (v167.f32[0] * _S15)) * v187.f32[1]) + (_S0 * v187.f32[0])) + (((-v167.f32[1] * v165.f32[0]) + (v167.f32[0] * v165.f32[1])) * *&v188)))
          {
            v129 = v136;
          }

          else
          {
            v129 = v137;
          }
        }
      }

      if (v129 < v121)
      {
        v123 = ((v189.f32[1] - v187.f32[1]) * (v192 - *&v188)) - ((v190 - *&v188) * (v191.f32[1] - v187.f32[1]));
        v122 = ((v190 - *&v188) * (v191.f32[0] - v187.f32[0])) - ((v189.f32[0] - v187.f32[0]) * (v192 - *&v188));
        v119 = ((v189.f32[0] - v187.f32[0]) * (v191.f32[1] - v187.f32[1])) - ((v189.f32[1] - v187.f32[1]) * (v191.f32[0] - v187.f32[0]));
        v138 = sqrtf(((v122 * v122) + (v123 * v123)) + (v119 * v119));
        if (v138 > 0.0)
        {
          v139 = 1.0 / v138;
          v123 = v123 * v139;
          v122 = v122 * v139;
          v119 = v119 * v139;
        }

        v163 = v185;
        v161 = v186;
        v121 = v129;
        v120 = *v36;
      }

      ++v36;
      --v118;
    }

    while (v118);
    v108 = a4->f32[0];
    v109 = a4->f32[1];
    v106 = a4[1].f32[0];
    v105 = a4[1].f32[1];
    v107 = (v105 * v105) + -0.5;
    v140 = -v106;
    v141 = -a4->f32[0];
    v142 = -v109;
    v143 = v123 + v123;
    v144 = v122 + v122;
    v145 = v119 + v119;
    v97 = v163;
    v146 = v161;
  }

  else
  {
    v140 = -v106;
    v141 = -v108;
    v142 = -v109;
    v120 = -1;
    v146 = 0;
    v121 = 3.4028e38;
    v143 = 0.0;
    v144 = 0.0;
    v145 = 0.0;
  }

  v147 = ((v109 * v144) + (v108 * v143)) + (v106 * v145);
  *a7 = ((v105 * ((v140 * v144) + (v109 * v145))) + (v143 * v107)) + (v108 * v147);
  *(a7 + 4) = ((v105 * ((v141 * v145) + (v106 * v143))) + (v144 * v107)) + (v109 * v147);
  *(a7 + 8) = ((v105 * ((v142 * v143) + (v108 * v144))) + (v145 * v107)) + (v106 * v147);
  *a8 = v97;
  *(a8 + 8) = v146;
  *a15 = v120;
  if ((v194 & 0x8000000000000000) == 0 && (v194 & 0x7FFFFFFF00000000) != 0 && v193)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if ((v196 & 0x8000000000000000) == 0 && (v196 & 0x7FFFFFFF00000000) != 0 && v195)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if ((v215 & 0x8000000000000000) == 0 && (v215 & 0x7FFFFFFF00000000) != 0 && v214 != v213 && v214)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v121;
}

float physx::Gu::SweepEstimateAnyShapeHeightfield(uint64_t a1, float *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, double a7, float a8)
{
  v125 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v110 = *(*a2 + 8);
  v111 = v11;
  v12 = v11[3].f32[0];
  __asm { FMOV            V3.2S, #1.0 }

  v108 = vrev64_s32(vdiv_f32(_D3, v11[2]));
  v109 = 1.0 / v12;
  v122[256] = 1;
  v124 = 0x4000000000;
  v123 = v122;
  v107[0] = &unk_1F5D21BD8;
  v107[1] = v122;
  v18 = a3[3].f32[0] - a5[3].f32[0];
  v19 = vsub_f32(a3[2], a5[2]);
  v20 = vsub_f32(a4[2], a6[2]);
  v21 = a4[3].f32[0] - a6[3].f32[0];
  v22 = v18 - v21;
  v23 = (v18 - v21) * 0.5;
  v24 = (*(a1 + 76) + fabsf(v23)) + *&a7;
  v25 = v23 + *(a1 + 88);
  _D3.f32[0] = v25 - v24;
  v26 = v24 + v25;
  v96 = vsub_f32(v19, v20);
  v27 = vmul_f32(v96, 0x3F0000003F000000);
  v28 = vadd_f32(vadd_f32(vabs_f32(v27), *(a1 + 68)), vdup_lane_s32(*&a7, 0));
  v29 = vadd_f32(v27, *(a1 + 80));
  v103 = vsub_f32(v29, v28);
  v104 = _D3.i32[0];
  v105 = vadd_f32(v28, v29);
  v106 = v26;
  physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v108, a4, &v103, 1, v107);
  v30 = v124;
  v31 = v123;
  if (v124)
  {
    v32 = 0;
    v33 = *(a1 + 80);
    v34 = *(a1 + 88);
    v35 = vdup_n_s32(0x3F8CCCCDu);
    v36 = vmul_f32(*(a1 + 68), v35);
    v37 = *(a1 + 76) * 1.1;
    v91 = vsub_f32(v20, v19);
    v90 = v21 - v18;
    v89 = vadd_f32(v33, v36);
    v88 = v34 + v37;
    v87 = vsub_f32(v33, v36);
    v86 = v34 - v37;
    v94 = v36;
    v95 = v33;
    v33.f32[0] = v34;
    v36.f32[0] = v37;
    v92 = v36;
    v93 = v33;
    v38 = 3.4028e38;
    do
    {
      physx::Gu::HeightFieldUtil::getTriangle(&v108, a2 + 3, &v97, 0, 0, *&v31[4 * v32], 1, 1);
      v39 = v100;
      v40 = v98;
      _D16 = vsub_f32(v99, v97);
      v42 = vsub_f32(v101, v97);
      v43 = v102;
      _S20 = v102 - v98;
      v45 = -(vmuls_lane_f32(-(v100 - v98), v42, 1) + (_D16.f32[1] * (v102 - v98)));
      __asm { FMLA            S21, S20, V16.S[1] }

      v47 = ((v100 - v98) * v42.f32[0]) - (_D16.f32[0] * (v102 - v98));
      v48 = (-_D16.f32[1] * v42.f32[0]) + (_D16.f32[0] * v42.f32[1]);
      v49 = -v47;
      v50 = -v48;
      v51 = sqrtf(((v47 * v47) + (_S21 * _S21)) + (v48 * v48));
      if (v51 > 0.0)
      {
        v52 = 1.0 / v51;
        v45 = v52 * v45;
        v49 = v52 * v49;
        v50 = v52 * v50;
      }

      if ((((v96.f32[1] * v49) + (v96.f32[0] * v45)) + (v22 * v50)) >= a8)
      {
        v53 = vdup_n_s32(0x7E7FFFFFu);
        v54 = vcgt_f32(v97, v53);
        v55 = 8.5071e37;
        v56 = vdup_n_s32(0xFE7FFFFF);
        if (v98 <= 8.5071e37)
        {
          v55 = v98;
        }

        v57 = vcgt_f32(v56, v97);
        if (v98 < -8.5071e37)
        {
          v40 = -8.5071e37;
        }

        if (v55 >= v100)
        {
          v55 = v100;
        }

        if (v40 > v100)
        {
          v39 = v40;
        }

        if (v55 >= v102)
        {
          v58 = v102;
        }

        else
        {
          v58 = v55;
        }

        if (v39 > v102)
        {
          v43 = v39;
        }

        v59 = (v58 + v43) * 0.5;
        v60 = ((v43 - v58) * 0.5) + 0.01;
        v61 = vbsl_s8(v54, v53, v97);
        v62 = vbsl_s8(v57, v56, v97);
        v63 = vbsl_s8(vcgt_f32(v99, v61), v61, v99);
        v64 = vbsl_s8(vcgt_f32(v62, v99), v62, v99);
        v65 = vbsl_s8(vcgt_f32(v101, v63), v63, v101);
        v66 = vbsl_s8(vcgt_f32(v64, v101), v64, v101);
        v67 = vmul_f32(vadd_f32(v65, v66), 0x3F0000003F000000);
        v68 = vmul_f32(vadd_f32(vmul_f32(vsub_f32(v66, v65), 0x3F0000003F000000), vdup_n_s32(0x3C23D70Au)), v35);
        v69 = v60 * 1.1;
        if (fabsf(vsub_f32(v95, v67).f32[0]) > vadd_f32(v94, v68).f32[0] || (v70 = vmvn_s8(vcge_f32(vadd_f32(v92, __PAIR64__(v68.u32[1], LODWORD(v69))), vabd_f32(v93, __PAIR64__(v67.u32[1], LODWORD(v59))))), (v70.i8[4] & 1) != 0) || (v71 = v70.i8[0], v72 = 0.0, (v71 & 1) != 0))
        {
          v73 = 0;
          v120 = v91;
          v121 = v90;
          v118 = v89;
          v119 = v88;
          v116 = v87;
          v117 = v86;
          v114 = vadd_f32(v67, v68);
          v115 = v59 + v69;
          v112 = vsub_f32(v67, v68);
          v113 = v59 - v69;
          v72 = 0.0;
          v74 = 1.0;
          do
          {
            v75 = v120.f32[v73];
            if (v75 >= -0.000001)
            {
              if (v75 <= 0.000001)
              {
                if (v114.f32[v73] < v116.f32[v73] || v112.f32[v73] > v118.f32[v73])
                {
LABEL_44:
                  v72 = 3.4028e38;
                  break;
                }
              }

              else
              {
                v76 = v112.f32[v73];
                v77 = v118.f32[v73];
                if (v76 > v77)
                {
                  goto LABEL_44;
                }

                v81 = v114.f32[v73];
                v82 = v116.f32[v73];
                if (v81 < v82)
                {
                  v83 = (v82 - v81) / v75;
                  if (v83 > v72)
                  {
                    v72 = v83;
                  }
                }

                if (v77 > v76)
                {
LABEL_36:
                  v84 = (v77 - v76) / v75;
                  if (v84 < v74)
                  {
                    v74 = v84;
                  }
                }
              }
            }

            else
            {
              v76 = v114.f32[v73];
              v77 = v116.f32[v73];
              if (v76 < v77)
              {
                goto LABEL_44;
              }

              v78 = v118.f32[v73];
              v79 = v112.f32[v73];
              if (v78 < v79)
              {
                v80 = (v78 - v79) / v75;
                if (v80 > v72)
                {
                  v72 = v80;
                }
              }

              if (v76 > v77)
              {
                goto LABEL_36;
              }
            }

            if (v72 > v74)
            {
              goto LABEL_44;
            }

            ++v73;
          }

          while (v73 != 3);
        }

        if (v38 >= v72)
        {
          v38 = v72;
        }
      }

      ++v32;
    }

    while (v32 != v30);
    v31 = v123;
  }

  else
  {
    v38 = 3.4028e38;
  }

  if ((v124 & 0x8000000000000000) == 0 && (v124 & 0x7FFFFFFF00000000) != 0 && v31 != v122 && v31)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v31);
  }

  return v38;
}

float physx::Gu::SweepAnyShapeMesh(int **a1, uint64_t *a2, float32x2_t *a3, uint64_t a4, float32x2_t *a5, float32x2_t *a6, __int32 *a7, uint64_t a8, __n128 a9, double a10, float a11, int *a12)
{
  v305 = *MEMORY[0x1E69E9840];
  v19 = (*a2 + 4);
  v227 = *a2;
  physx::Cm::FastVertex2ShapeScaling::init(&v279, v19, (*a2 + 16));
  v20 = a3[3].f32[0] - a5[3].f32[0];
  v21 = vsub_f32(a3[2], a5[2]);
  v22 = vsub_f32(*(a4 + 16), a6[2]);
  v23 = *(a4 + 24) - a6[3].f32[0];
  v24 = vsub_f32(v21, v22);
  v25 = v20 - v23;
  v277 = v24;
  v278 = v25;
  v26 = v24.f32[1];
  v223 = *&v24;
  v27 = sqrtf((vmuls_lane_f32(v24.f32[1], v24, 1) + (v24.f32[0] * v24.f32[0])) + (v25 * v25));
  if (v27 > 0.0)
  {
    v277 = vmul_n_f32(v24, 1.0 / v27);
    v278 = v25 * (1.0 / v27);
  }

  v275[0] = xmmword_1E3047670;
  v275[1] = xmmword_1E3047670;
  v276 = 1065353216;
  *v35.i8 = physx::Gu::computeSweptBox(&v261, a1 + 17, a1 + 10, v275, &v277, v27);
  v34.i32[0] = *v19;
  v35.i32[0] = 1.0;
  if (*v19 == 1.0 && (v34.i32[0] = *(v227 + 8), *v34.i32 == 1.0) && (v35.i32[0] = *(v227 + 12), v34.i32[0] = 1.0, *v35.i32 == 1.0))
  {
    v36 = *(a4 + 12);
    _S17 = *(a4 + 16) * -2.0;
    v38 = *(a4 + 20) * -2.0;
    _S2 = *(a4 + 24) * -2.0;
    v40 = (v36 * v36) + -0.5;
    v29.i32[0] = *a4;
    _D5 = *(a4 + 4);
    v30.i32[0] = _D5.i32[1];
    __asm { FMLA            S19, S2, V5.S[1] }

    v47 = -_D5.f32[1];
    v48 = ((_S17 * v40) - (((_D5.f32[0] * _S2) - (_D5.f32[1] * v38)) * v36)) + (*a4 * _S19);
    v28.f32[0] = -*a4;
    __asm { FMLA            S7, S17, V5.S[1] }

    v50 = ((v38 * v40) - (_S7 * v36)) + (_D5.f32[0] * _S19);
    v51 = -_D5.f32[0];
    __asm { FMLA            S2, S19, V5.S[1] }

    _S19 = v267 + v267;
    _S24 = v269 + v269;
    __asm { FMLS            S28, S24, V5.S[1] }

    v55 = ((v36 * (vmuls_lane_f32(v268 + v268, _D5, 1) - ((v269 + v269) * _D5.f32[0]))) + ((v267 + v267) * v40)) - (*a4 * *_Q28.i32);
    __asm { FMLS            S18, S19, V5.S[1] }

    v57 = ((v36 * _S18) + ((v268 + v268) * v40)) - (*_Q28.i32 * _D5.f32[0]);
    __asm { FMLS            S19, S28, V5.S[1] }

    _S22 = v270 + v270;
    _S24 = v272 + v272;
    __asm
    {
      FMLS            S28, S24, V5.S[1]
      FMLS            S30, S22, V5.S[1]
      FMLS            S22, S28, V5.S[1]
    }

    v63 = v48 + (((v36 * (vmuls_lane_f32(v271 + v271, _D5, 1) - ((v272 + v272) * _D5.f32[0]))) + ((v270 + v270) * v40)) - (*a4 * *_Q28.i32));
    v64 = v50 + (((v36 * _S30) + ((v271 + v271) * v40)) - (*_Q28.i32 * _D5.f32[0]));
    v65 = v273;
    v66 = v274;
    *v32.i8 = vadd_f32(__PAIR64__(v265, v262), __PAIR64__(v265, v262));
    *v31.i8 = vadd_f32(__PAIR64__(v266, v263), __PAIR64__(v266, v263));
    v67 = vadd_f32(__PAIR64__(v264, v261), __PAIR64__(v264, v261));
    *_Q28.i8 = vmls_lane_f32(vmls_lane_f32(vmul_n_f32(*v32.i8, -_D5.f32[0]), v67, v29, 0), *v31.i8, v30, 0);
    v68 = ((v36 * (vmuls_lane_f32(*v32.i32, _D5, 1) - (*v31.i32 * _D5.f32[0]))) + (v67.f32[0] * v40)) - (*_Q28.i32 * *a4);
    *v69.f32 = _D5;
    v69.i32[2] = *a4;
    v70 = ((v36 * ((*a4 * *v31.i32) - (v67.f32[0] * _D5.f32[1]))) + (*v32.i32 * v40)) - (*_Q28.i32 * _D5.f32[0]);
    v69.i32[3] = _D5.i32[0];
    v71.i64[0] = __PAIR64__(v32.u32[1], v67.u32[0]);
    v71.i64[1] = __PAIR64__(v67.u32[1], v31.u32[1]);
    v72 = v28;
    v72.f32[1] = v51;
    v72.f32[2] = v47;
    v73 = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
    v72.f32[3] = v28.f32[0];
    v74 = vextq_s8(v71, vrev64q_s32(v32), 8uLL);
    v75 = vextq_s8(v74, v74, 0xCuLL);
    v76 = vmulq_n_f32(vmlaq_f32(vmulq_f32(v69, v71), v75, v72), v36);
    v77 = vextq_s8(v75, vrev64q_s32(v31), 8uLL);
    *v251 = v68;
    *&v251[1] = v70;
    v252 = vmlaq_f32(vmlaq_n_f32(v76, vextq_s8(v77, v77, 0xCuLL), v40), vzip1q_s32(_Q28, vdupq_lane_s32(*_Q28.i8, 1)), v73);
    v253 = v55;
    v254 = v57;
    v255 = _S19;
    v256 = v63;
    v257 = v64;
    v258 = _S2 + _S22;
  }

  else
  {
    physx::Gu::computeVertexSpaceOBB(v251, &v261, a4, v19, v35, v34);
    v65 = v259;
    v66 = v260;
  }

  v78 = vdup_lane_s32(a9.n128_u64[0], 0);
  v259 = vadd_f32(v65, v78);
  v260 = v66 + a9.n128_f32[0];
  v302[256] = 1;
  v304 = 0x4000000000;
  v303 = v302;
  v249[7] = 2;
  *&v249[5] = &unk_1F5D21C18;
  v250 = v302;
  physx::Gu::gMidphaseBoxCBOverlapTable[*(*(v227 + 48) + 8) - 3]();
  v79 = v304;
  if (!v304)
  {
    v138 = 3.4028e38;
    goto LABEL_90;
  }

  v201 = a8;
  v220 = v303;
  v226 = v20;
  v80 = *(a1 + 22);
  v216 = a1[10];
  v213 = vadd_f32(*(a1 + 68), v78);
  v81 = *(a1 + 19) + a9.n128_f32[0];
  v299[256] = 1;
  v301 = 0x4000000000;
  v300 = v299;
  v295[0] = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<256u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::resize(v299, v304, v295);
  v296 = 1;
  v298 = 0x4000000000;
  v297 = v295;
  LODWORD(v242) = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<256u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::resize(v295, v304, &v242);
  v82 = 0;
  v218 = 0;
  v83 = v300;
  v212 = v297;
  v208 = vsub_f32(v22, v21);
  v206 = vadd_f32(v216, v213).u32[0];
  v202 = vsub_f32(v216, v213).u32[0];
  v84 = vdup_n_s32(0xFE7FFFFF);
  do
  {
    LODWORD(v239) = 0;
    v242 = v227;
    v243 = &v279;
    v244 = &v220[4 * v82];
    v245 = 1;
    v246 = &v239;
    v247 = xmmword_1E3113BA0;
    v248 = v84;
    *v249 = 0;
    *(&v249[1] + 1) = 0;
    v86 = *(a4 + 8);
    v85 = *(a4 + 12);
    v87 = (v85 * v85) + -0.5;
    v88 = *(a4 + 4);
    v89 = (((*&v231[4] + *&v231[4]) * v88) + (*a4 * (*v231 + *v231))) + (v86 * (*&v231[8] + *&v231[8]));
    *&v90 = -((((v85 * ((v86 * (*v231 + *v231)) - (*a4 * (*&v231[8] + *&v231[8])))) + ((*&v231[4] + *&v231[4]) * v87)) + (v88 * v89)) * v26) - (*&v223 * (((v85 * ((v88 * (*&v231[8] + *&v231[8])) - (v86 * (*&v231[4] + *&v231[4])))) + ((*v231 + *v231) * v87)) + (*a4 * v89)));
    *&v91 = *&v90 - (v25 * (((v85 * ((*a4 * (*&v231[4] + *&v231[4])) - (v88 * (*v231 + *v231)))) + ((*&v231[8] + *&v231[8]) * v87)) + (v86 * v89)));
    if (*&v91 < a11)
    {
      goto LABEL_45;
    }

    v92 = (*&v231[8] + *&v231[20]) * 0.5;
    v93 = vmul_f32(vadd_f32(*v231, *&v231[12]), 0x3F0000003F000000);
    v94 = vadd_f32(vmul_f32(vsub_f32(*&v231[12], *v231), 0x3F0000003F000000), vdup_n_s32(0x3CA3D70Au));
    v95 = ((*&v231[20] - *&v231[8]) * 0.5) + 0.02;
    v96 = vmvn_s8(vcge_f32(vadd_f32(v213, v94), vabd_f32(v216, v93)));
    if ((v96.i8[0] & 1) != 0 || (v96.i8[4] & 1) != 0 || (v97 = 0.0, vabds_f32(v80, v92) > (v81 + v95)))
    {
      v102 = 0;
      *&v228[0] = v208;
      *(v228 + 2) = v23 - v226;
      v293.i32[0] = v206;
      v293.f32[1] = v216.f32[1] + v213.f32[1];
      v294 = v80 + v81;
      v290.i32[0] = v202;
      v290.f32[1] = v216.f32[1] - v213.f32[1];
      v291 = v80 - v81;
      v288 = vadd_f32(v93, v94);
      v289 = v92 + v95;
      v103 = v92 - v95;
      v286 = vsub_f32(v93, v94);
      v97 = 0.0;
      v104 = 1.0;
      v287 = v103;
      while (1)
      {
        v105 = *(v228 + v102 * 4);
        if (v105 < -0.000001)
        {
          break;
        }

        if (v105 <= 0.000001)
        {
          if (*(&v288 + v102 * 4) < v290.f32[v102] || v286.f32[v102] > v293.f32[v102])
          {
            goto LABEL_45;
          }

          goto LABEL_38;
        }

        v106 = v286.f32[v102];
        v107 = v293.f32[v102];
        if (v106 > v107)
        {
          goto LABEL_45;
        }

        v111 = *(&v288 + v102 * 4);
        v112 = v290.f32[v102];
        if (v111 < v112)
        {
          v113 = (v112 - v111) / v105;
          if (v113 > v97)
          {
            v97 = v113;
          }
        }

        if (v107 > v106)
        {
          goto LABEL_33;
        }

LABEL_38:
        if (v97 > v104)
        {
          goto LABEL_45;
        }

        if (++v102 == 3)
        {
          if (v97 > 1.0)
          {
            goto LABEL_45;
          }

          goto LABEL_14;
        }
      }

      v106 = *(&v288 + v102 * 4);
      v107 = v290.f32[v102];
      if (v106 < v107)
      {
        goto LABEL_45;
      }

      v108 = v293.f32[v102];
      v109 = v286.f32[v102];
      if (v108 < v109)
      {
        v110 = (v108 - v109) / v105;
        if (v110 > v97)
        {
          v97 = v110;
        }
      }

      if (v106 <= v107)
      {
        goto LABEL_38;
      }

LABEL_33:
      v114 = (v107 - v106) / v105;
      if (v114 < v104)
      {
        v104 = v114;
      }

      goto LABEL_38;
    }

LABEL_14:
    if (v218)
    {
      v98 = v218;
      v99 = &v83[v218];
      v100 = &v212[v218];
      while (1)
      {
        v101 = *(v100 - 1);
        if (v101 <= v97)
        {
          break;
        }

        *v100-- = v101;
        *v99 = *(v99 - 1);
        --v99;
        if (!--v98)
        {
          goto LABEL_44;
        }
      }

      v98 = v98;
    }

    else
    {
      v98 = 0;
    }

LABEL_44:
    v83[v98] = *&v220[4 * v82];
    *&v212[v98] = v97;
    ++v218;
LABEL_45:
    ++v82;
  }

  while (v82 != v79);
  v115 = *(a1 + 2);
  v116 = *(a4 + 16);
  v117 = *(a4 + 20);
  v118 = *(a4 + 24);
  v119 = (a6[2].f32[0] - v116) + (a6[2].f32[0] - v116);
  v120 = (a6[2].f32[1] - v117) + (a6[2].f32[1] - v117);
  v121 = (a6[3].f32[0] - v118) + (a6[3].f32[0] - v118);
  v123 = *(a4 + 8);
  v122 = *(a4 + 12);
  v124 = (v122 * v122) + -0.5;
  v125 = *a4;
  v126 = *(a4 + 4);
  v127 = ((v120 * v126) + (*a4 * v119)) + (v123 * v121);
  *&v128 = ((v119 * v124) - (((v126 * v121) - (v123 * v120)) * v122)) + (*a4 * v127);
  *&v129 = ((v120 * v124) - (((v123 * v119) - (*a4 * v121)) * v122)) + (v126 * v127);
  v130 = ((v121 * v124) - (((*a4 * v120) - (v126 * v119)) * v122)) + (v123 * v127);
  v288 = __PAIR64__(v129, v128);
  v289 = v130;
  if (v218)
  {
    v131 = (a5[2].f32[0] - v116) + (a5[2].f32[0] - v116);
    v132 = (a5[2].f32[1] - v117) + (a5[2].f32[1] - v117);
    v133 = (a5[3].f32[0] - v118) + (a5[3].f32[0] - v118);
    v134 = ((v126 * v132) + (v125 * v131)) + (v123 * v133);
    v207 = ((v131 * v124) - (((v126 * v133) - (v123 * v132)) * v122)) + (v125 * v134);
    v205 = ((v132 * v124) - (((v123 * v131) - (v125 * v133)) * v122)) + (v126 * v134);
    v204 = ((v133 * v124) - (((v125 * v132) - (v126 * v131)) * v122)) + (v123 * v134);
    v135 = a9;
    v203 = v115 + a9.n128_f32[0];
    v136 = v218;
    v211 = 0;
    v210 = 0.0;
    v137 = -1;
    v138 = 3.4028e38;
    v139 = 0.0;
    v140 = 0;
    v209 = 0;
    v142 = a7;
    v141 = v201;
    do
    {
      v241 = 0;
      v242 = v227;
      v243 = &v279;
      v244 = v83;
      v245 = 1;
      v246 = &v241;
      v247 = xmmword_1E3113BA0;
      v248 = vdup_n_s32(0xFE7FFFFF);
      *v249 = 0;
      *(&v249[1] + 1) = 0;
      v143 = *(v227 + 48);
      v144 = *(v143 + 48);
      v145 = (3 * *v83);
      if ((*(v143 + 92) & 2) != 0)
      {
        v150 = (v144 + 2 * v145);
        v148 = *v150;
        v147 = v150[1];
        v149 = v150[2];
      }

      else
      {
        v146 = (v144 + 4 * v145);
        v148 = *v146;
        v147 = v146[1];
        v149 = v146[2];
      }

      v151 = *(v143 + 40);
      v152 = (v151 + 12 * v148);
      v153 = v152[1];
      v154 = v152[2];
      v155 = *v152;
      v156 = (v151 + 12 * v147);
      v158 = v156[1];
      v157 = v156[2];
      v159 = *v156;
      v160 = (v151 + 12 * v149);
      v161 = *v160;
      v162 = v160[1];
      v163 = v160[2];
      v164 = ((*v152 * v280) + (v153 * v282)) + (v154 * v284);
      v238 = v164;
      if (v285)
      {
        v165 = v161;
      }

      else
      {
        v165 = v159;
      }

      if (v285)
      {
        v166 = v162;
      }

      else
      {
        v166 = v158;
      }

      v167 = (v165 * v280) + (v166 * v282);
      if (v285)
      {
        v168 = v163;
      }

      else
      {
        v168 = v157;
      }

      *v169.f32 = vadd_f32(vadd_f32(vmul_n_f32(v279, v155), vmul_n_f32(v281, v153)), vmul_n_f32(v283, v154));
      v237 = *v169.f32;
      v170 = vadd_f32(vadd_f32(vmul_n_f32(v279, v165), vmul_n_f32(v281, v166)), vmul_n_f32(v283, v168));
      v171 = v167 + (v168 * v284);
      if (v285)
      {
        v172 = v159;
      }

      else
      {
        v172 = v161;
      }

      if (!v285)
      {
        v158 = v162;
      }

      v173 = (v172 * v280) + (v158 * v282);
      if (!v285)
      {
        v157 = v163;
      }

      v174 = v157 * v284;
      v175 = vadd_f32(vadd_f32(vmul_n_f32(v279, v172), vmul_n_f32(v281, v158)), vmul_n_f32(v283, v157));
      v169.i64[1] = LODWORD(v164);
      v221 = v171;
      v224 = v170;
      *v176.f32 = v170;
      v176.i64[1] = LODWORD(v171);
      v217 = v173 + v174;
      v219 = v175;
      *v177.f32 = v175;
      v177.i64[1] = LODWORD(v217);
      v178 = vmulq_f32(vaddq_f32(v177, vaddq_f32(v169, v176)), vdupq_n_s32(0x3EAAAA9Fu));
      v178.i32[3] = 0;
      v233 = 0;
      *v231 = v178;
      v234 = v169;
      v235 = v176;
      v236 = v177;
      *&v231[16] = 0x7F7FFFFF00000000;
      v232 = 0x57F7FFFFFLL;
      v179 = *a1;
      v228[0] = xmmword_1E3047670;
      v228[1] = xmmword_1E3047670;
      v228[2] = xmmword_1E3060D60;
      v228[3] = xmmword_1E3047680;
      v229 = 0x3F80000000000000;
      v230 = 0;
      v180 = (*(&physx::Gu::g_TriangleSweepMethodTable + *v179))(v135, 0.0);
      v181 = -v287;
      v182 = vneg_f32(v286);
      v286 = v182;
      v287 = -v287;
      if (v180 <= 0.0)
      {
        v184 = v221 - v238;
        _S12 = v217 - v238;
        v225 = vsub_f32(v224, v237);
        *&v228[0] = vadd_f32(v237, v225);
        *(v228 + 2) = v238 + (v221 - v238);
        v222 = vsub_f32(v219, v237);
        v293 = vadd_f32(v237, v222);
        v294 = v238 + (v217 - v238);
        v292 = 0;
        physx::Gu::closestPtPointTriangle(&v288, &v237, v228, &v293, &v292 + 1, &v292, &v290);
        v186 = (((v290.f32[1] - *(&v288 + 1)) * (v290.f32[1] - *(&v288 + 1))) + ((v290.f32[0] - *&v288) * (v290.f32[0] - *&v288))) + ((v291 - v289) * (v291 - v289));
        v180 = 0.0;
        if (v186 < (v203 * v203))
        {
          _V4.S[1] = v225.i32[1];
          __asm { FMLA            S3, S12, V4.S[1] }

          v189 = sqrtf(v186);
          v190 = v189 - v203;
          v191 = -((v203 * 2.0) - v189);
          if ((((v205 * ((v184 * v222.f32[0]) - (v225.f32[0] * _S12))) + (_S3 * v207)) + (((-v225.f32[1] * v222.f32[0]) + (v225.f32[0] * v222.f32[1])) * v204)) >= (((((v184 * v222.f32[0]) - (v225.f32[0] * _S12)) * v237.f32[1]) + (_S3 * v237.f32[0])) + (((-v225.f32[1] * v222.f32[0]) + (v225.f32[0] * v222.f32[1])) * v238)))
          {
            v180 = v190;
          }

          else
          {
            v180 = v191;
          }
        }

        v193 = *(a4 + 8);
        v192 = *(a4 + 12);
        v194 = (v192 * v192) + -0.5;
        v195 = *(a4 + 4);
        v196 = (((*(v228 + 1) + *(v228 + 1)) * v195) + (*a4 * (*v228 + *v228))) + (v193 * (*(v228 + 2) + *(v228 + 2)));
        v182.f32[0] = ((v192 * ((v195 * (*(v228 + 2) + *(v228 + 2))) - (v193 * (*(v228 + 1) + *(v228 + 1))))) + ((*v228 + *v228) * v194)) + (*a4 * v196);
        v183 = ((v192 * ((v193 * (*v228 + *v228)) - (*a4 * (*(v228 + 2) + *(v228 + 2))))) + ((*(v228 + 1) + *(v228 + 1)) * v194)) + (v195 * v196);
        v181 = ((v192 * ((*a4 * (*(v228 + 1) + *(v228 + 1))) - (v195 * (*v228 + *v228)))) + ((*(v228 + 2) + *(v228 + 2)) * v194)) + (v193 * v196);
      }

      else
      {
        v183 = v182.f32[1];
      }

      v135 = a9;
      if (v180 < v138)
      {
        v211 = v239;
        v209 = v240;
        v140 = v182.i32[0];
        v139 = v183;
        v210 = v181;
        v138 = v180;
        v137 = *v83;
      }

      ++v83;
      --v136;
    }

    while (v136);
    v212 = v297;
    v197 = v211;
    v198 = v210;
    v199 = v209;
  }

  else
  {
    v197 = 0;
    v137 = -1;
    v199 = 0;
    v138 = 3.4028e38;
    v140 = 0;
    v139 = 0.0;
    v198 = 0.0;
    v142 = a7;
    v141 = v201;
  }

  *v142 = v140;
  *(v142 + 1) = v139;
  *(v142 + 2) = v198;
  *v141 = v197;
  *(v141 + 8) = v199;
  *a12 = v137;
  if ((v298 & 0x8000000000000000) == 0 && (v298 & 0x7FFFFFFF00000000) != 0 && v212 != v295 && v212)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v212);
  }

  if ((v301 & 0x8000000000000000) == 0 && (v301 & 0x7FFFFFFF00000000) != 0 && v300 != v299 && v300)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

LABEL_90:
  if ((v304 & 0x8000000000000000) == 0 && (v304 & 0x7FFFFFFF00000000) != 0 && v303 != v302 && v303)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v138;
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<256u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::resize(uint64_t result, unsigned int a2, int *a3)
{
  v5 = result;
  if ((*(result + 276) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<256u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::recreate(result, a2);
  }

  v6 = *(v5 + 272);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = *(v5 + 264);
    v9 = v8 + 4 * v6;
    v10 = v8 + 4 * a2;
    if (v9 + 4 > v10)
    {
      v10 = v9 + 4;
    }

    v11 = *a3;
    v12 = (v10 + ~v8 - 4 * v6) >> 2;
    v13 = vdupq_n_s64(v12);
    v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v15 = (v9 + 8);
    do
    {
      v16 = vdupq_n_s64(v7);
      v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_1E3049620)));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        *(v15 - 2) = v11;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        *(v15 - 1) = v11;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_1E3049640)))).i32[1])
      {
        *v15 = v11;
        v15[1] = v11;
      }

      v7 += 4;
      v15 += 4;
    }

    while (v14 != v7);
  }

  *(v5 + 272) = a2;
  return result;
}

float32x2_t *physx::Gu::anonymous namespace::ConvexTriangles::getPolygonNormal(float32x2_t *this, uint64_t a2)
{
  v2 = *(*a2 + 48);
  v3 = *(v2 + 92);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = (3 * **(a2 + 16));
  if ((v3 & 2) != 0)
  {
    v11 = (v5 + 2 * v6);
    v9 = *v11;
    v8 = v11[1];
    v10 = v11[2];
  }

  else
  {
    v7 = (v5 + 4 * v6);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
  }

  v12 = (v4 + 12 * v9);
  v14 = v12[1];
  v13 = v12[2];
  v15 = v4 + 12 * v8;
  v16 = *(v15 + 8);
  v17 = v4 + 12 * v10;
  v18 = *(a2 + 8);
  v19 = *(v18 + 12);
  v20 = *(v18 + 24);
  v21 = ((*v12 * *v18) + (v14 * v19)) + (v13 * v20);
  if (*(v18 + 72))
  {
    v22 = *(v17 + 8);
  }

  else
  {
    v22 = *(v15 + 8);
  }

  v23 = v22 * v20;
  if (!*(v18 + 72))
  {
    v16 = *(v17 + 8);
  }

  v24 = *(v18 + 4);
  v25 = *(v18 + 16);
  v26 = *(v18 + 28);
  v27 = vadd_f32(vadd_f32(vmul_n_f32(v24, *v12), vmul_n_f32(v25, v14)), vmul_n_f32(v26, v13));
  if (*(v18 + 72))
  {
    LODWORD(v28) = *v17;
  }

  else
  {
    LODWORD(v28) = *v15;
  }

  v29 = *v18 * v28;
  v30 = vmul_n_f32(v24, v28);
  LODWORD(v31) = HIDWORD(*v15);
  if (*(v18 + 72))
  {
    LODWORD(v31) = HIDWORD(*v17);
  }

  v32 = v31 * v19;
  v33 = vadd_f32(vadd_f32(v30, vmul_n_f32(v25, v31)), vmul_n_f32(v26, v22));
  v34 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(v18 + 72)), 0x1FuLL)), *v15, *v17);
  v35 = vzip1_s32(v24, v25);
  v24.i32[0] = *(v18 + 12);
  v25.i32[0] = *v18;
  v36 = v16 * v26.f32[0];
  v37.i32[0] = vdup_lane_s32(v26, 1).u32[0];
  v37.i32[1] = *(v18 + 24);
  v38 = vadd_f32(vrev64_s32(vadd_f32(vmul_f32(v34, v25), vmul_f32(vrev64_s32(v34), v24))), vmul_n_f32(v37, v16));
  v39 = v21 - ((v29 + v32) + v23);
  v40 = vsub_f32(v27, v33);
  v41 = v27.f32[0] - (vaddv_f32(vmul_f32(v34, v35)) + v36);
  v42.i32[0] = vdup_lane_s32(v27, 1).u32[0];
  v42.f32[1] = v21;
  v43.i32[0] = vdup_lane_s32(v40, 1).u32[0];
  v44 = vsub_f32(v42, v38);
  v43.f32[1] = v39;
  v45 = vdup_lane_s32(v44, 0);
  v45.f32[0] = v41;
  v46 = vmla_f32(vmul_f32(v45, vneg_f32(v43)), v44, v40);
  v47 = vmuls_lane_f32(-v40.f32[0], v44, 1) + (v39 * v41);
  v48 = (COERCE_FLOAT(vmul_f32(v46, v46).i32[1]) + (v46.f32[0] * v46.f32[0])) + (v47 * v47);
  if (v48 <= 0.0)
  {
    v50 = 0;
    v51 = 0.0;
  }

  else
  {
    v49 = 1.0 / sqrtf(v48);
    v50 = vmul_n_f32(v46, v49);
    v51 = v47 * v49;
  }

  *this = v50;
  this[1].f32[0] = v51;
  return this;
}

float physx::Gu::anonymous namespace::ConvexTriangles::getBounds(uint64_t a1, uint64_t a2, float32x2_t *a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = *(*a1 + 48);
    v10 = *(v9 + 92);
    LODWORD(a5) = a3[1].i32[0];
    v11 = a3[1].f32[1];
    *&a6 = (v11 * v11) + -0.5;
    _D3 = *a3;
    v13 = vneg_f32(vzip1_s32(*&a5, *a3));
    LODWORD(v14) = HIDWORD(*a3);
    v15 = *(v9 + 40);
    v16 = *(v9 + 48);
    v17 = vdup_lane_s32(*&a6, 0);
    v18 = vdup_lane_s32(*&a5, 0);
    v18.f32[0] = v14;
    v19 = *(a1 + 24);
    do
    {
      v20 = *v7++;
      v21 = (3 * v20);
      if ((v10 & 2) != 0)
      {
        v26 = (v16 + 2 * v21);
        v23 = *v26;
        v24 = v26[1];
        v25 = v26[2];
      }

      else
      {
        v22 = (v16 + 4 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
      }

      v27 = (v15 + 12 * v23);
      v29 = v27[1];
      v28 = v27[2];
      v30 = (v15 + 12 * v24);
      v32 = v30[1];
      v31 = v30[2];
      v33 = *v30;
      v34 = (v15 + 12 * v25);
      v36 = v34[1];
      v35 = v34[2];
      v37 = *v34;
      _D27 = vmul_n_f32(*(v8 + 12), v29);
      v39 = ((*v27 * *(v8 + 8)) + (v29 * *(v8 + 20))) + (v28 * *(v8 + 32));
      v40 = *(a1 + 92);
      v41 = *(a1 + 76);
      v42 = *(a1 + 80);
      v43 = vadd_f32(vadd_f32(vmul_n_f32(*v8, *v27), _D27), vmul_n_f32(*(v8 + 24), v28));
      _D22 = vadd_f32(v43, v43);
      v45.i32[0] = vdup_lane_s32(_D22, 1).u32[0];
      v45.f32[1] = v39 + v39;
      v46 = (vmuls_lane_f32(v14, _D22, 1) + (_D3.f32[0] * _D22.f32[0])) + (*&a5 * (v39 + v39));
      __asm { FMLA            S27, S3, V22.S[1] }

      v51 = vadd_f32(a3[2], vmla_n_f32(vmla_f32(vmul_n_f32(vmla_f32(vmul_f32(v45, v13), vext_s8(v45, _D22, 4uLL), v18), v11), v17, _D22), _D3, v46));
      v52 = a3[3].f32[0] + (((v11 * _D27.f32[0]) + ((v39 + v39) * *&a6)) + (*&a5 * v46));
      v53 = vadd_f32(*(a1 + 84), v51);
      *(a1 + 84) = v53;
      v54 = v52 + v40;
      *(a1 + 92) = v52 + v40;
      v55 = v51.f32[1];
      if (v41 > v51.f32[1])
      {
        v55 = v41;
      }

      if (v42 <= v52)
      {
        v56 = v52;
      }

      else
      {
        v56 = v42;
      }

      *(a1 + 76) = v55;
      *(a1 + 80) = v56;
      v57 = vbsl_s8(vcgt_f32(v51, *(a1 + 60)), *(a1 + 60), v51);
      *(a1 + 60) = v57;
      v58 = *(v8 + 4);
      v59 = *(v8 + 16);
      v60 = vdup_lane_s32(v51, 0);
      v61.i32[1] = v60.i32[1];
      v61.i32[0] = *(a1 + 68);
      v62.i32[1] = HIDWORD(*(a1 + 68));
      v62.f32[0] = v52;
      *v60.i32 = v52;
      v63 = vbsl_s8(vcgt_f32(v62, v61), *(a1 + 68), v60);
      *(a1 + 68) = v63;
      v64 = ((v33 * *(v8 + 8)) + (v32 * *(v8 + 20))) + (v31 * *(v8 + 32));
      v65 = v64 + v64;
      v66 = *v8;
      v66.i32[1] = v58;
      _D29 = *(v8 + 12);
      _D29.i32[1] = v59;
      v68 = vadd_f32(vadd_f32(vmul_n_f32(v66, v33), vmul_n_f32(_D29, v32)), vmul_n_f32(*(v8 + 24), v31));
      _D20 = vadd_f32(v68, v68);
      v70 = (vmuls_lane_f32(v14, _D20, 1) + (_D3.f32[0] * _D20.f32[0])) + (*&a5 * v65);
      v71.i32[0] = vdup_lane_s32(_D20, 1).u32[0];
      v71.f32[1] = v65;
      v72 = vmla_n_f32(vmla_f32(vmul_n_f32(vmla_f32(vmul_f32(v71, v13), vext_s8(v71, _D20, 4uLL), v18), v11), v17, _D20), _D3, v70);
      __asm { FMLA            S29, S3, V20.S[1] }

      _D20.f32[0] = ((v11 * _D29.f32[0]) + (v65 * *&a6)) + (*&a5 * v70);
      v73 = vadd_f32(a3[2], v72);
      v74 = a3[3].f32[0] + _D20.f32[0];
      v75 = vadd_f32(v53, v73);
      *(a1 + 84) = v75;
      v76 = v54 + v74;
      *(a1 + 92) = v54 + v74;
      v77 = vbsl_s8(vcgt_f32(v73, v57), v57, v73);
      v78 = vdup_lane_s32(v73, 0);
      *(a1 + 60) = v77;
      *v78.i32 = v74;
      v79 = vbsl_s8(vcgt_f32(__PAIR64__(v63.u32[1], LODWORD(v74)), __PAIR64__(v78.u32[1], v63.u32[0])), v63, v78);
      v80 = v73.f32[1];
      if (v55 > v73.f32[1])
      {
        v80 = v55;
      }

      if (v56 <= v74)
      {
        v81 = v74;
      }

      else
      {
        v81 = v56;
      }

      *(a1 + 68) = v79;
      *(a1 + 76) = v80;
      *(a1 + 80) = v81;
      v82 = vadd_f32(vmul_n_f32(*v8, v37), vmul_n_f32(*(v8 + 12), v36));
      v83 = (v37 * *(v8 + 8)) + (v36 * *(v8 + 20));
      v84 = vadd_f32(v82, vmul_n_f32(*(v8 + 24), v35));
      v85 = v83 + (v35 * *(v8 + 32));
      _D18 = vadd_f32(v84, v84);
      v87 = v85 + v85;
      v84.f32[0] = (vmuls_lane_f32(v14, _D18, 1) + (_D3.f32[0] * _D18.f32[0])) + (*&a5 * v87);
      v82.i32[0] = vdup_lane_s32(_D18, 1).u32[0];
      v82.f32[1] = v87;
      __asm { FMLA            S27, S3, V18.S[1] }

      v89 = vadd_f32(a3[2], vmla_n_f32(vmla_f32(vmul_n_f32(vmla_f32(vmul_f32(v82, v13), vext_s8(v82, _D18, 4uLL), v18), v11), v17, _D18), _D3, v84.f32[0]));
      v90 = a3[3].f32[0] + (((v11 * _S27) + (v87 * *&a6)) + (*&a5 * v84.f32[0]));
      v91 = vadd_f32(v75, v89);
      *(a1 + 84) = v91;
      v92 = v76 + v90;
      *(a1 + 92) = v76 + v90;
      v93 = vbsl_s8(vcgt_f32(v89, v77), v77, v89);
      *(a1 + 60) = v93;
      v94 = vdup_lane_s32(v89, 0);
      *v94.i32 = v90;
      v95 = vbsl_s8(vcgt_f32(__PAIR64__(v79.u32[1], LODWORD(v90)), __PAIR64__(v94.u32[1], v79.u32[0])), v79, v94);
      v96 = v89.f32[1];
      if (v80 > v89.f32[1])
      {
        v96 = v80;
      }

      *(a1 + 68) = v95;
      if (v81 <= v90)
      {
        v81 = v90;
      }

      *(a1 + 76) = v96;
      *(a1 + 80) = v81;
      --v19;
    }

    while (v19);
  }

  else
  {
    v91 = *(a1 + 84);
    v92 = *(a1 + 92);
    v93 = *(a1 + 60);
    v95.i32[0] = *(a1 + 68);
  }

  v97 = 1.0 / (3 * v6);
  *(a1 + 84) = vmul_n_f32(v91, v97);
  *(a1 + 92) = v97 * v92;
  *(a1 + 96) = 1;
  *a2 = v93;
  *(a2 + 8) = v95.i32[0];
  *(a2 + 12) = *(a1 + 72);
  result = *(a1 + 80);
  *(a2 + 20) = result;
  return result;
}

float physx::Gu::SweepEstimateAnyShapeMesh(float32x2_t *a1, uint64_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, double a7)
{
  v12 = *a2;
  physx::Cm::FastVertex2ShapeScaling::init(v34, (*a2 + 4), (*a2 + 16));
  v33 = a3[3].f32[0] - a5[3].f32[0];
  v31 = a4[3].f32[0] - a6[3].f32[0];
  v32 = vsub_f32(a3[2], a5[2]);
  v30 = vsub_f32(a4[2], a6[2]);
  v13 = vsub_f32(v32, v30);
  v14 = v33 - v31;
  v28 = v13;
  v29 = v14;
  v26 = v13;
  v27 = v33 - v31;
  v15 = sqrtf((COERCE_FLOAT(vmul_f32(v13, v13).i32[1]) + (v13.f32[0] * v13.f32[0])) + (v14 * v14));
  if (v15 > 0.0)
  {
    v26 = vmul_n_f32(v13, 1.0 / v15);
    v27 = v14 * (1.0 / v15);
  }

  v24[0] = xmmword_1E3047670;
  v24[1] = xmmword_1E3047670;
  v25 = 1065353216;
  *v16.i8 = physx::Gu::computeSweptBox(v23, &a1[8] + 1, a1 + 10, v24, &v26, v15);
  physx::Gu::computeVertexSpaceOBB(v20, v23, a4, (v12 + 4), v16, v17);
  v21 = vadd_f32(v21, vdup_lane_s32(*&a7, 0));
  v22 = v22 + *&a7;
  physx::Gu::gMidphaseBoxCBOverlapTable[*(*(v12 + 48) + 8) - 3]();
  return 3.4028e38;
}

float32_t physx::Gu::SweepGeomGeom<physx::Gu::CapsuleV,physx::Gu::CapsuleV>(uint64_t *a1, uint64_t *a2, int8x8_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v328 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = *a2;
  v14 = 4;
  v310 = 4;
  v306[1] = 0;
  v306[0] = 0;
  LODWORD(a12) = *(v12 + 4);
  v16 = vmulq_n_f32(xmmword_1E3047670, *(v12 + 8));
  v16.i32[3] = 0;
  v15 = vnegq_f32(v16);
  v15.i32[3] = 0;
  v312 = v16;
  v313 = v15;
  v314 = vdup_lane_s32(*&a12, 0);
  v307 = LODWORD(a12);
  v308 = LODWORD(a12);
  v309 = LODWORD(a12);
  v311 = 1;
  v301 = 4;
  v297[1] = 0;
  v297[0] = 0;
  v16.i32[0] = *(v13 + 4);
  v17 = vmulq_n_f32(xmmword_1E3047670, *(v13 + 8));
  v17.i32[3] = 0;
  v18 = vnegq_f32(v17);
  v18.i32[3] = 0;
  v277 = v18;
  v280 = v17;
  v303 = v17;
  v304 = v18;
  v305 = vdup_lane_s32(*v16.f32, 0);
  v298 = v16.f32[0];
  v299 = v16.i32[0];
  v300 = v16.i32[0];
  v302 = 1;
  *&a9 = *&a12 + *&a9;
  v19.i64[0] = *(a5 + 16);
  v19.i64[1] = *(a5 + 24);
  v20.i64[0] = *(a6 + 16);
  v21 = *a4;
  v20.i64[1] = *(a6 + 24);
  v22 = vnegq_f32(*a4);
  v23 = vsubq_f32(v19, v20);
  v24 = v22;
  v24.i32[3] = 0;
  v265 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v25) = vmla_f32(0xBF000000BF000000, *v265.f32, *v265.f32).u32[0];
  v26 = vmulq_n_f32(v23, v25);
  v26.i32[3] = 0;
  v27 = vextq_s8(v24, v24, 8uLL).u64[0];
  v28 = vext_s8(*v22.f32, v27, 4uLL);
  v29 = vmls_f32(vmul_f32(*v22.f32, *&vextq_s8(v23, v23, 4uLL)), v28, *v23.f32);
  *v30.f32 = vext_s8(v29, vmls_f32(vmul_f32(v27, *v23.f32), *v22.f32, *&vextq_s8(v23, v23, 8uLL)), 4uLL);
  v30.i64[1] = v29.u32[0];
  v31 = vmlaq_laneq_f32(v26, v30, *a4, 3);
  v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
  v32 = vmulq_f32(v24, v23);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vmlaq_n_f32(v31, v24, vpadd_f32(*v32.f32, *v32.f32).f32[0]);
  v34 = vaddq_f32(v33, v33);
  v34.i32[3] = 0;
  v35 = *a3->i8;
  v35.i32[3] = 0;
  v36 = vmulq_f32(v35, v24);
  v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
  v37 = vmulq_laneq_f32(v35, *a4, 3);
  v35.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
  v38 = vmls_f32(vmul_f32(vext_s8(*a3, *v35.f32, 4uLL), *v22.f32), v28, *a3);
  *v17.f32 = vext_s8(v38, vmls_f32(vmul_f32(*a3, v27), *v22.f32, *v35.f32), 4uLL);
  *&v17.u32[2] = v38;
  v39 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v24, *a3->i8, 3), v37), v17);
  *v22.f32 = vdup_lane_s32(*v39.f32, 1);
  *v24.f32 = vdup_laneq_s32(v39, 2);
  v40 = vaddq_f32(v39, v39);
  v41 = vsub_f32(vmul_f32(*&vextq_s8(*a3->i8, *a3->i8, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vpadd_f32(*v36.f32, *v36.f32));
  *v35.f32 = vdup_laneq_s32(v40, 2);
  *v39.f32 = vdup_lane_s32(vmul_f32(*v39.f32, *v40.f32), 0);
  v42 = vmul_lane_f32(*v22.f32, *v40.f32, 1);
  v43 = vmul_laneq_f32(*v24.f32, v40, 2);
  *v22.f32 = vmul_n_f32(*v22.f32, v40.f32[0]);
  v44 = vmul_n_f32(*v24.f32, v40.f32[0]);
  *v36.f32 = vmul_lane_f32(vdup_lane_s32(*v40.f32, 0), v41, 1);
  *v24.f32 = vmul_lane_f32(*v24.f32, *v40.f32, 1);
  *v40.f32 = vmul_lane_f32(vdup_lane_s32(*v40.f32, 1), v41, 1);
  v45 = vmul_lane_f32(*v35.f32, v41, 1);
  __asm { FMOV            V9.2S, #1.0 }

  *v35.f32 = vext_s8(vsub_f32(vsub_f32(_D9, v42), v43), vadd_f32(*v22.f32, v45), 4uLL);
  v35.i64[1] = vsub_f32(v44, *v40.f32).u32[0];
  *v39.f32 = vsub_f32(_D9, *v39.f32);
  *v22.f32 = vext_s8(vsub_f32(*v22.f32, v45), vsub_f32(*v39.f32, v43), 4uLL);
  v22.i64[1] = vadd_f32(*v24.f32, *v36.f32).u32[0];
  v51 = vadd_f32(v44, *v40.f32);
  v40.i32[0] = vsub_f32(*v39.f32, v42).u32[0];
  *v39.f32 = vext_s8(v51, vsub_f32(*v24.f32, *v36.f32), 4uLL);
  v39.i64[1] = v40.u32[0];
  *v24.f32 = a3[2];
  v24.i64[1] = a3[3].u32[0];
  v52.i64[0] = a4[1].i64[0];
  v52.i64[1] = a4[1].u32[2];
  v289 = v35;
  v290 = v22;
  v266 = v20;
  v53 = v21;
  v53.i32[3] = 0;
  v261 = vsubq_f32(v24, v19);
  v54 = vsubq_f32(vsubq_f32(v52, v20), v261);
  v263 = v25;
  v264 = *v21.f32;
  v55 = vmulq_n_f32(v54, v25);
  v55.i32[3] = 0;
  v260 = vextq_s8(v53, v53, 8uLL).u64[0];
  v259 = vext_s8(*v21.f32, v260, 4uLL);
  *v52.f32 = vmls_f32(vmul_f32(*v21.f32, *&vextq_s8(v54, v54, 4uLL)), v259, *v54.f32);
  *v24.f32 = vext_s8(*v52.f32, vmls_f32(vmul_f32(v260, *v54.f32), *v21.f32, *&vextq_s8(v54, v54, 8uLL)), 4uLL);
  v24.i64[1] = v52.u32[0];
  v56 = vmlsq_laneq_f32(v55, v24, v21, 3);
  v56.i64[1] = vextq_s8(v56, v56, 8uLL).u32[0];
  v291 = v39;
  v292 = v34;
  v57 = vmulq_f32(v53, v54);
  v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
  v262 = v53;
  v58 = vmlaq_n_f32(v56, v53, vpadd_f32(*v57.f32, *v57.f32).f32[0]);
  v270 = vaddq_f32(v58, v58);
  v283.i64[1] = v306;
  v284 = &v289;
  v288 = v34;
  v59 = vzip1q_s32(v35, v39);
  v60 = vzip1q_s32(v290, 0);
  v285 = vzip1q_s32(v59, v60);
  v286 = vzip2q_s32(v59, v60);
  v287 = vzip1q_s32(vzip2q_s32(v35, v39), vzip2q_s32(v290, 0));
  v283.i64[0] = &unk_1F5D21CA8;
  v294 = 1;
  v61 = vmulq_f32(v34, v34);
  v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
  v62 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v61.f32, *v61.f32), 0x3400000034000000), 0)), 0x1FuLL)), v34, xmmword_1E3047670);
  v63 = vmulq_f32(v62, v62);
  v63.i64[0] = vpaddq_f32(v63, v63).u64[0];
  v64 = vpadd_f32(*v63.f32, *v63.f32);
  v65 = vrsqrte_f32(v64);
  do
  {
    v65 = vmul_f32(v65, vrsqrts_f32(vmul_f32(v65, v65), v64));
    --v14;
  }

  while (v14);
  v66 = v270;
  v66.i32[3] = 0;
  v271 = v66;
  v67 = vbsl_s8(vdup_lane_s32(vceqz_f32(v64), 0), v64, vmul_f32(v64, v65));
  v68 = vrecpe_f32(v67);
  v69 = 4;
  do
  {
    v68 = vmul_f32(v68, vrecps_f32(v67, v68));
    --v69;
  }

  while (v69);
  *&a9 = *&a9 + v16.f32[0];
  v70 = vmlaq_f32(0, 0, v66);
  v71 = vdup_lane_s32(*&a9, 0);
  v70.i64[1] = vextq_s8(v70, v70, 8uLL).u32[0];
  v72 = vmulq_n_f32(v62, v68.f32[0]);
  v72.i32[3] = 0;
  v274 = v70;
  v275 = v72;
  v73 = vnegq_f32(v72);
  v73.i32[3] = 0;
  v315 = v73;
  *v74.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(&v283, &v315);
  v75 = v74;
  v76 = vmulq_f32(v280, v275);
  v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
  v77 = vmulq_f32(v277, v275);
  v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
  v78 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v76.f32, *v76.f32), vpadd_f32(*v77.f32, *v77.f32)), 0)), v280, v277);
  v79 = vsubq_f32(v75, v78);
  v315 = v79;
  v316 = 0u;
  v317 = 0u;
  v318 = 0u;
  v321 = v75;
  v322 = 0u;
  memset(v323, 0, sizeof(v323));
  v80 = vnegq_f32(v79);
  v80.i32[3] = 0;
  v81 = vadd_f32(v71, 0);
  v82 = vmul_f32(v81, v81);
  v83 = vmulq_f32(v80, v80);
  v84 = vpaddq_f32(v83, v83);
  v85 = vpadd_f32(*v84.f32, *v84.f32);
  *v84.f32 = vcgtz_f32(v85);
  v86 = vdupq_lane_s32(*v84.f32, 0);
  v325 = v78;
  v326 = 0u;
  memset(v327, 0, sizeof(v327));
  v84.i32[0] = -1;
  v258 = v84;
  v87 = vneg_f32(0x80000000800000);
  v88 = v79;
  v89.i64[0] = -1;
  v89.i64[1] = -1;
  v269 = v80;
  v90 = v80;
  v272 = 0;
  while (1)
  {
    v91 = v79;
    v92.i64[0] = -1;
    v92.i64[1] = -1;
    *v92.i8 = vmovn_s32(vceqq_s32(v86, v92));
    v93 = vuzp1_s8(*v92.i8, *v92.i8).u32[0];
    if (v93 != -1)
    {
      break;
    }

    v94 = vmulq_f32(v90, v90);
    v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
    v95 = vpadd_f32(*v94.f32, *v94.f32);
    v96 = vrsqrte_f32(v95);
    v97 = 4;
    do
    {
      v96 = vmul_f32(v96, vrsqrts_f32(vmul_f32(v96, v96), v95));
      --v97;
    }

    while (v97);
    v276 = v91;
    v98 = vbsl_s8(vdup_lane_s32(vceqz_f32(v95), 0), v95, vmul_f32(v95, v96));
    v99 = vrecpe_f32(v98);
    v100 = 4;
    do
    {
      v99 = vmul_f32(v99, vrecps_f32(v98, v99));
      --v100;
    }

    while (v100);
    v273 = v90;
    v101 = vmulq_n_f32(v90, v99.f32[0]);
    v101.i32[3] = 0;
    v278 = v101;
    v293 = v101;
    v102 = vnegq_f32(v101);
    v102.i32[3] = 0;
    v281 = v102;
    *v103.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(&v283, &v293);
    v104 = v103;
    v105 = vmulq_f32(v281, v303);
    v105.i64[0] = vpaddq_f32(v105, v105).u64[0];
    v106 = vmulq_f32(v281, v304);
    v106.i64[0] = vpaddq_f32(v106, v106).u64[0];
    v107 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v105.f32, *v105.f32), vpadd_f32(*v106.f32, *v106.f32)), 0)), v303, v304);
    v108 = vaddq_f32(v274, v107);
    v79 = vsubq_f32(v103, v108);
    v109 = vnegq_f32(v79);
    v109.i32[3] = 0;
    v110 = vmulq_f32(v278, v109);
    v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
    v111 = vsub_f32(vpadd_f32(*v110.f32, *v110.f32), v81);
    if (v111.f32[0] > 0.0)
    {
      v112 = vmulq_f32(v271, v278);
      v112.i64[0] = vpaddq_f32(v112, v112).u64[0];
      v113 = vpadd_f32(*v112.f32, *v112.f32);
      if (v113.f32[0] >= 0.0)
      {
        goto LABEL_69;
      }

      v114 = vrecpe_f32(v113);
      v115 = 4;
      do
      {
        v114 = vmul_f32(v114, vrecps_f32(v113, v114));
        --v115;
      }

      while (v115);
      v116 = vsub_f32(v272, vmul_f32(v111, v114));
      if (vcgt_f32(v116, v272).u8[0])
      {
        if (v116.f32[0] > 1.0)
        {
LABEL_69:
          v211 = 0;
          v214 = 0uLL;
          v217 = 0uLL;
          goto LABEL_75;
        }

        v117 = vmlaq_n_f32(0, v271, v116.f32[0]);
        v117.i64[1] = vextq_s8(v117, v117, 8uLL).u32[0];
        v118 = vsubq_f32(v117, v274);
        v325 = vaddq_f32(v118, v325);
        v326 = vaddq_f32(v118, v326);
        v327[0] = vaddq_f32(v118, v327[0]);
        v315 = vsubq_f32(v321, v325);
        v316 = vsubq_f32(v322, v326);
        v317 = vsubq_f32(v323[0], v327[0]);
        v108 = vaddq_f32(v107, v117);
        v79 = vsubq_f32(v104, v108);
        v85 = v87;
        v269 = v273;
        v274 = v117;
      }

      v272 = v116;
    }

    v119 = v294;
    *(&v321 + v294) = v104;
    *(&v325 + v119) = v108;
    v294 = v119 + 1;
    *(&v315 + v119) = v79;
    if (v119 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v315, &v321, &v325, &v294);
LABEL_36:
      v88 = v276;
      goto LABEL_60;
    }

    if (v119 == 2)
    {
      v79 = v315;
      v128 = vsubq_f32(v316, v315);
      v129 = vsubq_f32(v317, v315);
      v131 = vmls_f32(vmul_f32(*v128.f32, *&vextq_s8(v129, v129, 4uLL)), *&vextq_s8(v128, v128, 4uLL), *v129.f32);
      *v130.f32 = vext_s8(v131, vmls_f32(vmul_f32(*&vextq_s8(v128, v128, 8uLL), *v129.f32), *v128.f32, *&vextq_s8(v129, v129, 8uLL)), 4uLL);
      v131.i32[1] = 0;
      v294 = 3;
      v132 = vpadd_f32(vmul_f32(*v130.f32, *v130.f32), vmul_f32(v131.u32[0], v131.u32[0]));
      v133 = vpadd_f32(v132, v132);
      if (v133.f32[0] <= 0.00000011921)
      {
        v294 = 2;
        v170 = vmulq_f32(v128, v128);
        v170.i64[0] = vpaddq_f32(v170, v170).u64[0];
        v171 = vpadd_f32(*v170.f32, *v170.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v171), 0), *v315.f32).u32[0] == -1)
        {
          v294 = 1;
          goto LABEL_36;
        }

        v172 = vnegq_f32(v315);
        v172.i32[3] = 0;
        v173 = vmulq_f32(v172, v128);
        v173.i64[0] = vpaddq_f32(v173, v173).u64[0];
        v174 = vpadd_f32(*v173.f32, *v173.f32);
        v175 = vrecpe_f32(v171);
        v176 = 4;
        v88 = v276;
        do
        {
          v175 = vmul_f32(v175, vrecps_f32(v171, v175));
          --v176;
        }

        while (v176);
        v79 = vmlaq_n_f32(v315, v128, vmax_f32(vmin_f32(vmul_f32(v174, v175), _D9), 0).f32[0]);
        goto LABEL_41;
      }

      *&v130.u32[2] = v131;
      v134 = vextq_s8(v316, v316, 8uLL).u64[0];
      v135 = vextq_s8(v317, v317, 8uLL).u64[0];
      v136 = vextq_s8(v317, v317, 4uLL).u64[0];
      v137 = vextq_s8(v316, v316, 4uLL).u64[0];
      v138 = vmls_f32(vmul_f32(*v316.f32, v136), v137, *v317.f32);
      *v139.f32 = vext_s8(v138, vmls_f32(vmul_f32(v134, *v317.f32), *v316.f32, v135), 4uLL);
      v139.i64[1] = v138.u32[0];
      v140 = vextq_s8(v315, v315, 8uLL).u64[0];
      v141 = vextq_s8(v315, v315, 4uLL).u64[0];
      v142 = vmls_f32(vmul_f32(v141, *v317.f32), v136, *v315.f32);
      *v143.f32 = vext_s8(v142, vmls_f32(vmul_f32(*v315.f32, v135), *v317.f32, v140), 4uLL);
      v143.i64[1] = v142.u32[0];
      v144 = vmls_f32(vmul_f32(*v315.f32, v137), v141, *v316.f32);
      *v145.f32 = vext_s8(v144, vmls_f32(vmul_f32(v140, *v316.f32), *v315.f32, v134), 4uLL);
      v145.i64[1] = v144.u32[0];
      v146 = vmulq_f32(v139, v130);
      v146.i64[0] = vpaddq_f32(v146, v146).u64[0];
      v147 = vpadd_f32(*v146.f32, *v146.f32);
      v148 = vmulq_f32(v143, v130);
      v148.i64[0] = vpaddq_f32(v148, v148).u64[0];
      v149 = vpadd_f32(*v148.f32, *v148.f32);
      v150 = vmulq_f32(v145, v130);
      v150.i64[0] = vpaddq_f32(v150, v150).u64[0];
      v151 = vpadd_f32(*v150.f32, *v150.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v149), vcgez_f32(v147)), vcgez_f32(v151)), 0), *v315.f32).u32[0] == -1)
      {
        v177 = vrecpe_f32(v133);
        v178 = 4;
        do
        {
          v177 = vmul_f32(v177, vrecps_f32(v133, v177));
          --v178;
        }

        while (v178);
        v179 = vmulq_f32(v315, v130);
        v179.i64[0] = vpaddq_f32(v179, v179).u64[0];
        v79 = vmulq_n_f32(v130, vmul_f32(v177, vpadd_f32(*v179.f32, *v179.f32)).f32[0]);
        v79.i32[3] = 0;
        goto LABEL_36;
      }

      v152 = vnegq_f32(v315);
      v152.i32[3] = 0;
      v153 = vnegq_f32(v316);
      v153.i32[3] = 0;
      v154 = vmulq_f32(v152, v128);
      v154.i64[0] = vpaddq_f32(v154, v154).u64[0];
      v155 = vpadd_f32(*v154.f32, *v154.f32);
      v156 = vmulq_f32(v128, v153);
      v156.i64[0] = vpaddq_f32(v156, v156).u64[0];
      v157 = vpadd_f32(*v156.f32, *v156.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v151), vand_s8(vclez_f32(v157), vcgez_f32(v155))), 0), *v315.f32).u32[0] == -1)
      {
        v180 = vsub_f32(v155, v157);
        v181 = vrecpe_f32(v180);
        v182 = 4;
        v88 = v276;
        do
        {
          v181 = vmul_f32(v181, vrecps_f32(v180, v181));
          --v182;
        }

        while (v182);
        v169 = 0;
        v79 = vmlaq_n_f32(v315, v128, vmul_f32(v155, vbsl_s8(vcgt_f32(vabs_f32(v180), 0x3400000034000000), v181, 0)).f32[0]);
        v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
        v168 = 2;
        v183 = &v326;
        v184 = &v322;
        v185 = &v316;
      }

      else
      {
        v158 = vnegq_f32(v317);
        v158.i32[3] = 0;
        v159 = vmulq_f32(v153, v129);
        v159.i64[0] = vpaddq_f32(v159, v159).u64[0];
        v160 = vpadd_f32(*v159.f32, *v159.f32);
        v161 = vmulq_f32(v128, v158);
        v161.i64[0] = vpaddq_f32(v161, v161).u64[0];
        v162 = vpadd_f32(*v161.f32, *v161.f32);
        v163 = vmulq_f32(v129, v158);
        v163.i64[0] = vpaddq_f32(v163, v163).u64[0];
        v164 = vpadd_f32(*v163.f32, *v163.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v160, v157), vcge_f32(v162, v164)), vclez_f32(v147)), 0), *v315.f32).u32[0] == -1)
        {
          v186 = vsub_f32(v160, v157);
          v187 = vadd_f32(v186, vsub_f32(v162, v164));
          v188 = vrecpe_f32(v187);
          v189 = 4;
          do
          {
            v188 = vmul_f32(v188, vrecps_f32(v187, v188));
            --v189;
          }

          while (v189);
          v190 = vmlaq_n_f32(v316, vsubq_f32(v317, v316), vmul_f32(v186, vbsl_s8(vcgt_f32(vabs_f32(v187), 0x3400000034000000), v188, 0)).f32[0]);
          v168 = 2;
          v184 = v323;
          v183 = v327;
          v190.i64[1] = vextq_s8(v190, v190, 8uLL).u32[0];
          v185 = &v317;
          v169 = 1;
          v79 = v190;
        }

        else
        {
          v165 = vmulq_f32(v152, v129);
          v165.i64[0] = vpaddq_f32(v165, v165).u64[0];
          v166 = vpadd_f32(*v165.f32, *v165.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v149), vand_s8(vclez_f32(v164), vcgez_f32(v166))), 0), *v315.f32).u32[0] == -1)
          {
            v191 = vsub_f32(v166, v164);
            v192 = vrecpe_f32(v191);
            v193 = 4;
            do
            {
              v192 = vmul_f32(v192, vrecps_f32(v191, v192));
              --v193;
            }

            while (v193);
            v169 = 0;
            v79 = vmlaq_n_f32(v315, v129, vmul_f32(v166, vbsl_s8(vcgt_f32(vabs_f32(v191), 0x3400000034000000), v192, 0)).f32[0]);
            v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
            v168 = 2;
            v184 = v323;
            v183 = v327;
            v185 = &v317;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v166), vclez_f32(v155)), 0), *v315.f32).u32[0] == -1)
            {
              v169 = 0;
              v168 = 1;
            }

            else
            {
              *v79.f32 = vdup_lane_s16(vand_s8(vcge_f32(v157, v160), vcgez_f32(v157)), 0);
              *v79.f32 = vuzp1_s8(*v79.f32, *v79.f32);
              v167 = v79.i32[0];
              v168 = 1;
              v79 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v79, v258), 0), v316, v317);
              if (v167 == -1)
              {
                v169 = 1;
              }

              else
              {
                v169 = 2;
              }
            }

            v183 = &v326;
            v184 = &v322;
            v185 = &v316;
          }
        }

        v88 = v276;
      }

      v194 = *(&v321 + v169);
      v195 = *v185;
      v196 = *v184;
      v197 = *(&v325 + v169);
      v198 = *v183;
      v315 = *(&v315 + v169);
      v316 = v195;
      v321 = v194;
      v322 = v196;
      v325 = v197;
      v326 = v198;
      v294 = v168;
    }

    else
    {
      v88 = v276;
      if (v119 != 1)
      {
        goto LABEL_60;
      }

      v79 = v315;
      v120 = vsubq_f32(v316, v315);
      v121 = vmulq_f32(v120, v120);
      v121.i64[0] = vpaddq_f32(v121, v121).u64[0];
      v122 = vpadd_f32(*v121.f32, *v121.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v122), 0), *v315.f32).u32[0] != -1)
      {
        v123 = vnegq_f32(v315);
        v123.i32[3] = 0;
        v124 = vmulq_f32(v123, v120);
        v124.i64[0] = vpaddq_f32(v124, v124).u64[0];
        v125 = vpadd_f32(*v124.f32, *v124.f32);
        v126 = vrecpe_f32(v122);
        v127 = 4;
        do
        {
          v126 = vmul_f32(v126, vrecps_f32(v122, v126));
          --v127;
        }

        while (v127);
        v79 = vmlaq_n_f32(v315, v120, vmax_f32(vmin_f32(vmul_f32(v125, v126), _D9), 0).f32[0]);
LABEL_41:
        v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
        goto LABEL_60;
      }

      v294 = 1;
    }

LABEL_60:
    v90 = vnegq_f32(v79);
    v90.i32[3] = 0;
    v199 = vmulq_f32(v79, v79);
    v199.i64[0] = vpaddq_f32(v199, v199).u64[0];
    v200 = vpadd_f32(*v199.f32, *v199.f32);
    v201 = vcgt_f32(v85, v200);
    v89 = vdupq_lane_s32(vand_s8(v201, 0x100000001), 0);
    v86 = vdupq_lane_s32(vand_s8(vcgt_f32(v200, v82), v201), 0);
    v85 = v200;
  }

  v202 = v283.i64[1];
  v203 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v85, 0), 0), v89), 0x1FuLL)), v90, v269);
  v204 = vmulq_f32(v203, v203);
  v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
  v205 = vpadd_f32(*v204.f32, *v204.f32);
  v206 = vrsqrte_f32(v205);
  v207 = 4;
  do
  {
    v206 = vmul_f32(v206, vrsqrts_f32(vmul_f32(v206, v206), v205));
    --v207;
  }

  while (v207);
  v208 = vbsl_s8(vdup_lane_s32(vceqz_f32(v205), 0), v205, vmul_f32(v205, v206));
  v209 = vrecpe_f32(v208);
  v210 = 4;
  v211 = v272;
  do
  {
    v209 = vmul_f32(v209, vrecps_f32(v208, v209));
    --v210;
  }

  while (v210);
  v212 = vdupq_n_s32(-*(v283.i64[1] + 32));
  v213 = vmulq_n_f32(v203, v209.f32[0]);
  v213.i32[3] = 0;
  v214 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v208), 0), v213));
  v214.i32[3] = 0;
  v215 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v89, 0x1FuLL)), v91, v88);
  v293 = v215;
  if (v294 == 3)
  {
    v296 = 0;
    v295 = 0;
    v279 = v212;
    v282 = v214;
    physx::Gu::barycentricCoordinates(&v293, &v315, &v316, &v317, &v296, &v295);
    v212 = v279;
    v214 = v282;
    v211 = v272;
    v89.i32[1] = v321.i32[1];
    v226 = vmulq_n_f32(vsubq_f32(v322, v321), v296.f32[0]);
    v226.i32[3] = 0;
    v227 = vmulq_n_f32(vsubq_f32(v323[0], v321), v295.f32[0]);
    v227.i32[3] = 0;
    v216 = vaddq_f32(v321, vaddq_f32(v226, v227));
  }

  else if (v294 == 2)
  {
    v218 = vsubq_f32(v315, v215);
    v219 = vsubq_f32(vsubq_f32(v316, v215), v218);
    v220 = vmulq_f32(v219, v219);
    v220.i64[0] = vpaddq_f32(v220, v220).u64[0];
    v221 = vpadd_f32(*v220.f32, *v220.f32);
    v222 = vrecpe_f32(v221);
    v223 = 4;
    do
    {
      v222 = vmul_f32(v222, vrecps_f32(v221, v222));
      --v223;
    }

    while (v223);
    v224 = vnegq_f32(v218);
    v224.i32[3] = 0;
    v225 = vmulq_f32(v224, v219);
    v225.i64[0] = vpaddq_f32(v225, v225).u64[0];
    v216 = vmlaq_n_f32(v321, vsubq_f32(v322, v321), vmul_f32(vbsl_s8(vcgtz_f32(v221), v222, 0), vpadd_f32(*v225.f32, *v225.f32)).f32[0]);
    v89.i32[1] = 0;
    v216.i64[1] = vextq_s8(v216, v216, 8uLL).u32[0];
  }

  else
  {
    v216 = 0uLL;
    if (v294 == 1)
    {
      v216 = v321;
    }
  }

  v89.i32[0] = *(v202 + 16);
  v228 = vmlsq_lane_f32(v216, v214, *v89.i8, 0);
  v228.i64[1] = vextq_s8(v228, v228, 8uLL).u32[0];
  v217 = vbslq_s8(v212, v228, v216);
LABEL_75:
  if (v93 == -1)
  {
    v211.i32[0] = 2139095039;
  }

  else
  {
    if (v211.f32[0] == 0.0)
    {
      v217.f32[0] = (*(v283.i64[1] + 16) + v298) * 100.0;
      v295.i8[0] = 0;
      v324 = 0;
      v321 = 0u;
      v322 = 0u;
      v323[0] = 0u;
      v315.i64[1] = v283.i64[1];
      v315.i64[0] = &unk_1F5D21CA8;
      v316.i64[0] = v284;
      v230 = v284[2];
      v229 = v284[3];
      v231 = v284[1];
      v317 = *v284;
      v320 = v229;
      v232 = vzip1q_s32(v317, v230);
      v233 = vzip2q_s32(v317, v230);
      v234 = vzip1q_s32(v231, 0);
      v317 = vzip1q_s32(v232, v234);
      v318 = vzip2q_s32(v232, v234);
      v319 = vzip1q_s32(v233, vzip2q_s32(v231, 0));
      v325.i64[0] = &unk_1F5D217B8;
      v325.i64[1] = v297;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::CapsuleV>>(&v315, &v325, &v293, &v296, &v295, &v321, v292, vdup_lane_s32(*v217.f32, 0), *v233.i64, v318) != 5)
      {
        goto LABEL_79;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(&v283) - 5 >= 2)
      {
        v236 = vnegq_f32(v271);
        v236.i32[3] = 0;
        v237 = vmulq_f32(v236, v236);
        v237.i64[0] = vpaddq_f32(v237, v237).u64[0];
        v238 = vpadd_f32(*v237.f32, *v237.f32);
        v239 = vrsqrte_f32(v238);
        v240 = 4;
        do
        {
          v239 = vmul_f32(v239, vrsqrts_f32(vmul_f32(v239, v239), v238));
          --v240;
        }

        while (v240);
        v241 = vbsl_s8(vdup_lane_s32(vceqz_f32(v238), 0), v238, vmul_f32(v238, v239));
        v242 = vrecpe_f32(v241);
        v243 = 4;
        do
        {
          v242 = vmul_f32(v242, vrecps_f32(v241, v242));
          --v243;
        }

        while (v243);
        v214 = vmulq_n_f32(v236, v242.f32[0]);
        v214.i32[3] = 0;
        v217 = 0uLL;
        v211 = 0;
      }

      else
      {
LABEL_79:
        v214 = v323[0];
        v217 = v321;
        v211 = vmin_f32(v324, 0);
      }
    }

    v244 = vmulq_n_f32(v217, v263);
    v244.i32[3] = 0;
    v245 = vmls_f32(vmul_f32(v264, *&vextq_s8(v217, v217, 4uLL)), v259, *v217.f32);
    *v246.f32 = vext_s8(v245, vmls_f32(vmul_f32(v260, *v217.f32), v264, *&vextq_s8(v217, v217, 8uLL)), 4uLL);
    v246.i64[1] = v245.u32[0];
    v247 = vmlaq_f32(v244, v265, v246);
    v247.i64[1] = vextq_s8(v247, v247, 8uLL).u32[0];
    v248 = vmulq_f32(v262, v217);
    v248.i64[0] = vpaddq_f32(v248, v248).u64[0];
    v249 = vmlaq_n_f32(v247, v262, vpadd_f32(*v248.f32, *v248.f32).f32[0]);
    v249.i64[1] = vextq_s8(v249, v249, 8uLL).u32[0];
    v246.i64[0] = 0x4000000040000000;
    v246.i64[1] = 0x4000000040000000;
    v250 = vmlaq_f32(v266, v246, v249);
    v250.i64[1] = vextq_s8(v250, v250, 8uLL).u32[0];
    v251 = vmlaq_n_f32(v250, v261, vmax_f32(v211, 0).f32[0]);
    v252 = vmulq_n_f32(v214, v263);
    v252.i32[3] = 0;
    *v246.f32 = vmls_f32(vmul_f32(v264, *&vextq_s8(v214, v214, 4uLL)), v259, *v214.f32);
    *v249.f32 = vext_s8(*v246.f32, vmls_f32(vmul_f32(v260, *v214.f32), v264, *&vextq_s8(v214, v214, 8uLL)), 4uLL);
    v249.i64[1] = v246.u32[0];
    v253 = vmlaq_f32(v252, v265, v249);
    v253.i64[1] = vextq_s8(v253, v253, 8uLL).u32[0];
    v254 = vmulq_f32(v262, v214);
    v254.i64[0] = vpaddq_f32(v254, v254).u64[0];
    v255 = vmlaq_n_f32(v253, v262, vpadd_f32(*v254.f32, *v254.f32).f32[0]);
    v256 = vaddq_f32(v255, v255);
    *a7 = v256.i64[0];
    *(a7 + 8) = v256.i32[2];
    *a8 = v251.i64[0];
    *(a8 + 8) = v251.i32[2];
  }

  return v211.f32[0];
}

float32_t physx::Gu::SweepGeomGeom<physx::Gu::CapsuleV,physx::Gu::BoxV>(uint64_t *a1, uint64_t *a2, int8x8_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v325 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = 4;
  v307 = 4;
  v303[1] = 0;
  v303[0] = 0;
  LODWORD(a12) = *(v12 + 4);
  v14 = vmulq_n_f32(xmmword_1E3047670, *(v12 + 8));
  v14.i32[3] = 0;
  v15 = *a2;
  v16 = vnegq_f32(v14);
  v16.i32[3] = 0;
  v309 = v14;
  v310 = v16;
  v311 = vdup_lane_s32(*&a12, 0);
  v304 = LODWORD(a12);
  v305 = LODWORD(a12);
  v306 = LODWORD(a12);
  v308 = 1;
  v284 = 3;
  v285 = 0;
  v282[0] = 0;
  v282[1] = 0;
  v14.i64[0] = *(v15 + 4);
  v17 = v14;
  v17.i32[2] = *(v15 + 12);
  *v16.f32 = vdup_laneq_s32(v17, 2);
  v17.i32[3] = 0;
  v276 = v17;
  v286 = v17;
  *v14.f32 = vpmin_f32(*v16.f32, *v14.f32);
  *v14.f32 = vpmin_f32(*v14.f32, *v14.f32);
  v282[2] = vmul_n_f32(0x3BA3D70A3C23D70ALL, v14.f32[0]);
  v14.f32[0] = 0.05 * v14.f32[0];
  v279 = *v14.f32;
  v283 = v14.i32[0];
  *&a9 = *&a12 + *&a9;
  v17.i64[0] = *(a5 + 16);
  v17.i64[1] = *(a5 + 24);
  v18.i64[0] = *(a6 + 16);
  v19 = *a4;
  v18.i64[1] = *(a6 + 24);
  v20 = vnegq_f32(*a4);
  v21 = vsubq_f32(v17, v18);
  v22 = v20;
  v22.i32[3] = 0;
  v264 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v23) = vmla_f32(0xBF000000BF000000, *v264.f32, *v264.f32).u32[0];
  v24 = vmulq_n_f32(v21, v23);
  v24.i32[3] = 0;
  v25 = vextq_s8(v22, v22, 8uLL).u64[0];
  v26 = vext_s8(*v20.f32, v25, 4uLL);
  v27 = vmls_f32(vmul_f32(*v20.f32, *&vextq_s8(v21, v21, 4uLL)), v26, *v21.f32);
  *v28.f32 = vext_s8(v27, vmls_f32(vmul_f32(v25, *v21.f32), *v20.f32, *&vextq_s8(v21, v21, 8uLL)), 4uLL);
  v28.i64[1] = v27.u32[0];
  v29 = vmlaq_laneq_f32(v24, v28, *a4, 3);
  v29.i64[1] = vextq_s8(v29, v29, 8uLL).u32[0];
  v30 = vmulq_f32(v22, v21);
  v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
  v31 = vmlaq_n_f32(v29, v22, vpadd_f32(*v30.f32, *v30.f32).f32[0]);
  v32 = vaddq_f32(v31, v31);
  v32.i32[3] = 0;
  v33 = *a3->i8;
  v33.i32[3] = 0;
  v34 = vmulq_f32(v33, v22);
  v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
  v35 = vmulq_laneq_f32(v33, *a4, 3);
  v33.i64[0] = vextq_s8(v33, v33, 8uLL).u64[0];
  v36 = vmls_f32(vmul_f32(vext_s8(*a3, *v33.f32, 4uLL), *v20.f32), v26, *a3);
  *v37.f32 = vext_s8(v36, vmls_f32(vmul_f32(*a3, v25), *v20.f32, *v33.f32), 4uLL);
  *&v37.u32[2] = v36;
  v38 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v22, *a3->i8, 3), v35), v37);
  *v20.f32 = vdup_lane_s32(*v38.f32, 1);
  *v22.f32 = vdup_laneq_s32(v38, 2);
  v39 = vaddq_f32(v38, v38);
  v40 = vsub_f32(vmul_f32(*&vextq_s8(*a3->i8, *a3->i8, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vpadd_f32(*v34.f32, *v34.f32));
  *v33.f32 = vdup_laneq_s32(v39, 2);
  *v38.f32 = vdup_lane_s32(vmul_f32(*v38.f32, *v39.f32), 0);
  v41 = vmul_lane_f32(*v20.f32, *v39.f32, 1);
  v42 = vmul_laneq_f32(*v22.f32, v39, 2);
  *v20.f32 = vmul_n_f32(*v20.f32, v39.f32[0]);
  v43 = vmul_n_f32(*v22.f32, v39.f32[0]);
  *v34.f32 = vmul_lane_f32(vdup_lane_s32(*v39.f32, 0), v40, 1);
  *v22.f32 = vmul_lane_f32(*v22.f32, *v39.f32, 1);
  *v39.f32 = vmul_lane_f32(vdup_lane_s32(*v39.f32, 1), v40, 1);
  v44 = vmul_lane_f32(*v33.f32, v40, 1);
  __asm { FMOV            V9.2S, #1.0 }

  *v33.f32 = vext_s8(vsub_f32(vsub_f32(_D9, v41), v42), vadd_f32(*v20.f32, v44), 4uLL);
  v33.i64[1] = vsub_f32(v43, *v39.f32).u32[0];
  *v38.f32 = vsub_f32(_D9, *v38.f32);
  *v20.f32 = vext_s8(vsub_f32(*v20.f32, v44), vsub_f32(*v38.f32, v42), 4uLL);
  v20.i64[1] = vadd_f32(*v22.f32, *v34.f32).u32[0];
  v50 = vadd_f32(v43, *v39.f32);
  v39.i32[0] = vsub_f32(*v38.f32, v41).u32[0];
  *v38.f32 = vext_s8(v50, vsub_f32(*v22.f32, *v34.f32), 4uLL);
  v38.i64[1] = v39.u32[0];
  *v22.f32 = a3[2];
  v22.i64[1] = a3[3].u32[0];
  v51.i64[0] = a4[1].i64[0];
  v51.i64[1] = a4[1].u32[2];
  v295 = v33;
  v296 = v20;
  v265 = v18;
  v52 = v19;
  v52.i32[3] = 0;
  v260 = vsubq_f32(v22, v17);
  v53 = vsubq_f32(vsubq_f32(v51, v18), v260);
  v262 = v23;
  v263 = *v19.f32;
  v54 = vmulq_n_f32(v53, v23);
  v54.i32[3] = 0;
  v259 = vextq_s8(v52, v52, 8uLL).u64[0];
  v258 = vext_s8(*v19.f32, v259, 4uLL);
  *v51.f32 = vmls_f32(vmul_f32(*v19.f32, *&vextq_s8(v53, v53, 4uLL)), v258, *v53.f32);
  *v22.f32 = vext_s8(*v51.f32, vmls_f32(vmul_f32(v259, *v53.f32), *v19.f32, *&vextq_s8(v53, v53, 8uLL)), 4uLL);
  v22.i64[1] = v51.u32[0];
  v55 = vmlsq_laneq_f32(v54, v22, v19, 3);
  v55.i64[1] = vextq_s8(v55, v55, 8uLL).u32[0];
  v297 = v38;
  v298 = v32;
  v56 = vmulq_f32(v52, v53);
  v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
  v261 = v52;
  v57 = vmlaq_n_f32(v55, v52, vpadd_f32(*v56.f32, *v56.f32).f32[0]);
  v269 = vaddq_f32(v57, v57);
  v289.i64[1] = v303;
  v290 = &v295;
  v294 = v32;
  v58 = vzip1q_s32(v33, v38);
  v59 = vzip1q_s32(v296, 0);
  v291 = vzip1q_s32(v58, v59);
  v292 = vzip2q_s32(v58, v59);
  v293 = vzip1q_s32(vzip2q_s32(v33, v38), vzip2q_s32(v296, 0));
  v288 = v282;
  v289.i64[0] = &unk_1F5D21CA8;
  v287 = &unk_1F5D21A80;
  v300 = 1;
  v60 = vmulq_f32(v32, v32);
  v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
  v61 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v60.f32, *v60.f32), 0x3400000034000000), 0)), 0x1FuLL)), v32, xmmword_1E3047670);
  v62 = vmulq_f32(v61, v61);
  v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
  v63 = vpadd_f32(*v62.f32, *v62.f32);
  v64 = vrsqrte_f32(v63);
  do
  {
    v64 = vmul_f32(v64, vrsqrts_f32(vmul_f32(v64, v64), v63));
    --v13;
  }

  while (v13);
  v65 = v269;
  v65.i32[3] = 0;
  v270 = v65;
  v66 = vbsl_s8(vdup_lane_s32(vceqz_f32(v63), 0), v63, vmul_f32(v63, v64));
  v67 = vrecpe_f32(v66);
  v68 = 4;
  do
  {
    v67 = vmul_f32(v67, vrecps_f32(v66, v67));
    --v68;
  }

  while (v68);
  *&a9 = *&a9 + 0.0;
  v69 = vmlaq_f32(0, 0, v65);
  v70 = vdup_lane_s32(*&a9, 0);
  v69.i64[1] = vextq_s8(v69, v69, 8uLL).u32[0];
  v71 = vmulq_n_f32(v61, v67.f32[0]);
  v71.i32[3] = 0;
  v273 = v69;
  v274 = v71;
  v72 = vnegq_f32(v71);
  v72.i32[3] = 0;
  v312 = v72;
  *v73.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(&v289, &v312);
  v74 = v73;
  v75 = vnegq_f32(v276);
  v75.i32[3] = 0;
  v76 = vbslq_s8(vcgtzq_f32(v274), v276, v75);
  v77 = vsubq_f32(v73, v76);
  v312 = v77;
  v313 = 0u;
  v314 = 0u;
  v315 = 0u;
  v318 = v74;
  v319 = 0u;
  memset(v320, 0, sizeof(v320));
  v78 = vnegq_f32(v77);
  v78.i32[3] = 0;
  v322 = v76;
  v323 = 0u;
  memset(v324, 0, sizeof(v324));
  *v74.f32 = vmul_f32(vmin_f32(vdup_lane_s32(v279, 0), 0), vdup_n_s32(0x3DCCCCCDu));
  v79 = vadd_f32(v70, *v74.f32);
  *v76.f32 = vmul_f32(*v74.f32, *v74.f32);
  v80 = vmul_f32(v79, v79);
  v81 = vmulq_f32(v78, v78);
  v82 = vpaddq_f32(v81, v81);
  v83 = vpadd_f32(*v82.f32, *v82.f32);
  v257 = *v76.f32;
  *v82.f32 = vcgt_f32(v83, *v76.f32);
  v84 = vdupq_lane_s32(*v82.f32, 0);
  v82.i32[0] = -1;
  v256 = v82;
  v85 = vneg_f32(0x80000000800000);
  v86 = v77;
  v87.i64[0] = -1;
  v87.i64[1] = -1;
  v268 = v78;
  v88 = v78;
  v271 = 0;
  while (1)
  {
    v89 = v77;
    v90.i64[0] = -1;
    v90.i64[1] = -1;
    *v90.i8 = vmovn_s32(vceqq_s32(v84, v90));
    v91 = vuzp1_s8(*v90.i8, *v90.i8).u32[0];
    if (v91 != -1)
    {
      break;
    }

    v92 = vmulq_f32(v88, v88);
    v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
    v93 = vpadd_f32(*v92.f32, *v92.f32);
    v94 = vrsqrte_f32(v93);
    v95 = 4;
    do
    {
      v94 = vmul_f32(v94, vrsqrts_f32(vmul_f32(v94, v94), v93));
      --v95;
    }

    while (v95);
    v275 = v89;
    v96 = vbsl_s8(vdup_lane_s32(vceqz_f32(v93), 0), v93, vmul_f32(v93, v94));
    v97 = vrecpe_f32(v96);
    v98 = 4;
    do
    {
      v97 = vmul_f32(v97, vrecps_f32(v96, v97));
      --v98;
    }

    while (v98);
    v272 = v88;
    v99 = vmulq_n_f32(v88, v97.f32[0]);
    v99.i32[3] = 0;
    v299 = v99;
    v100 = vnegq_f32(v99);
    v100.i32[3] = 0;
    v277 = v99;
    v280 = v100;
    *v101.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(&v289, &v299);
    v102 = v101;
    v103 = v288[3];
    v104 = vnegq_f32(v103);
    v104.i32[3] = 0;
    v105 = vbslq_s8(vcgtzq_f32(v280), v103, v104);
    v106 = vaddq_f32(v273, v105);
    v77 = vsubq_f32(v101, v106);
    v107 = vnegq_f32(v77);
    v107.i32[3] = 0;
    v108 = vmulq_f32(v277, v107);
    v108.i64[0] = vpaddq_f32(v108, v108).u64[0];
    v109 = vsub_f32(vpadd_f32(*v108.f32, *v108.f32), v79);
    if (v109.f32[0] > 0.0)
    {
      v110 = vmulq_f32(v270, v277);
      v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
      v111 = vpadd_f32(*v110.f32, *v110.f32);
      if (v111.f32[0] >= 0.0)
      {
        goto LABEL_69;
      }

      v112 = vrecpe_f32(v111);
      v113 = 4;
      do
      {
        v112 = vmul_f32(v112, vrecps_f32(v111, v112));
        --v113;
      }

      while (v113);
      v114 = vsub_f32(v271, vmul_f32(v109, v112));
      if (vcgt_f32(v114, v271).u8[0])
      {
        if (v114.f32[0] > 1.0)
        {
LABEL_69:
          v209 = 0;
          v212 = 0uLL;
          v215 = 0uLL;
          goto LABEL_75;
        }

        v115 = vmlaq_n_f32(0, v270, v114.f32[0]);
        v115.i64[1] = vextq_s8(v115, v115, 8uLL).u32[0];
        v116 = vsubq_f32(v115, v273);
        v322 = vaddq_f32(v116, v322);
        v323 = vaddq_f32(v116, v323);
        v324[0] = vaddq_f32(v116, v324[0]);
        v312 = vsubq_f32(v318, v322);
        v313 = vsubq_f32(v319, v323);
        v314 = vsubq_f32(v320[0], v324[0]);
        v106 = vaddq_f32(v105, v115);
        v77 = vsubq_f32(v102, v106);
        v83 = v85;
        v268 = v272;
        v273 = v115;
      }

      v271 = v114;
    }

    v117 = v300;
    *(&v318 + v300) = v102;
    *(&v322 + v117) = v106;
    v300 = v117 + 1;
    *(&v312 + v117) = v77;
    if (v117 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v312, &v318, &v322, &v300);
LABEL_36:
      v86 = v275;
      goto LABEL_60;
    }

    if (v117 == 2)
    {
      v77 = v312;
      v126 = vsubq_f32(v313, v312);
      v127 = vsubq_f32(v314, v312);
      v129 = vmls_f32(vmul_f32(*v126.f32, *&vextq_s8(v127, v127, 4uLL)), *&vextq_s8(v126, v126, 4uLL), *v127.f32);
      *v128.f32 = vext_s8(v129, vmls_f32(vmul_f32(*&vextq_s8(v126, v126, 8uLL), *v127.f32), *v126.f32, *&vextq_s8(v127, v127, 8uLL)), 4uLL);
      v129.i32[1] = 0;
      v300 = 3;
      v130 = vpadd_f32(vmul_f32(*v128.f32, *v128.f32), vmul_f32(v129.u32[0], v129.u32[0]));
      v131 = vpadd_f32(v130, v130);
      if (v131.f32[0] <= 0.00000011921)
      {
        v300 = 2;
        v168 = vmulq_f32(v126, v126);
        v168.i64[0] = vpaddq_f32(v168, v168).u64[0];
        v169 = vpadd_f32(*v168.f32, *v168.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v169), 0), *v312.f32).u32[0] == -1)
        {
          v300 = 1;
          goto LABEL_36;
        }

        v170 = vnegq_f32(v312);
        v170.i32[3] = 0;
        v171 = vmulq_f32(v170, v126);
        v171.i64[0] = vpaddq_f32(v171, v171).u64[0];
        v172 = vpadd_f32(*v171.f32, *v171.f32);
        v173 = vrecpe_f32(v169);
        v174 = 4;
        v86 = v275;
        do
        {
          v173 = vmul_f32(v173, vrecps_f32(v169, v173));
          --v174;
        }

        while (v174);
        v77 = vmlaq_n_f32(v312, v126, vmax_f32(vmin_f32(vmul_f32(v172, v173), _D9), 0).f32[0]);
        goto LABEL_41;
      }

      *&v128.u32[2] = v129;
      v132 = vextq_s8(v313, v313, 8uLL).u64[0];
      v133 = vextq_s8(v314, v314, 8uLL).u64[0];
      v134 = vextq_s8(v314, v314, 4uLL).u64[0];
      v135 = vextq_s8(v313, v313, 4uLL).u64[0];
      v136 = vmls_f32(vmul_f32(*v313.f32, v134), v135, *v314.f32);
      *v137.f32 = vext_s8(v136, vmls_f32(vmul_f32(v132, *v314.f32), *v313.f32, v133), 4uLL);
      v137.i64[1] = v136.u32[0];
      v138 = vextq_s8(v312, v312, 8uLL).u64[0];
      v139 = vextq_s8(v312, v312, 4uLL).u64[0];
      v140 = vmls_f32(vmul_f32(v139, *v314.f32), v134, *v312.f32);
      *v141.f32 = vext_s8(v140, vmls_f32(vmul_f32(*v312.f32, v133), *v314.f32, v138), 4uLL);
      v141.i64[1] = v140.u32[0];
      v142 = vmls_f32(vmul_f32(*v312.f32, v135), v139, *v313.f32);
      *v143.f32 = vext_s8(v142, vmls_f32(vmul_f32(v138, *v313.f32), *v312.f32, v132), 4uLL);
      v143.i64[1] = v142.u32[0];
      v144 = vmulq_f32(v137, v128);
      v144.i64[0] = vpaddq_f32(v144, v144).u64[0];
      v145 = vpadd_f32(*v144.f32, *v144.f32);
      v146 = vmulq_f32(v141, v128);
      v146.i64[0] = vpaddq_f32(v146, v146).u64[0];
      v147 = vpadd_f32(*v146.f32, *v146.f32);
      v148 = vmulq_f32(v143, v128);
      v148.i64[0] = vpaddq_f32(v148, v148).u64[0];
      v149 = vpadd_f32(*v148.f32, *v148.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v147), vcgez_f32(v145)), vcgez_f32(v149)), 0), *v312.f32).u32[0] == -1)
      {
        v175 = vrecpe_f32(v131);
        v176 = 4;
        do
        {
          v175 = vmul_f32(v175, vrecps_f32(v131, v175));
          --v176;
        }

        while (v176);
        v177 = vmulq_f32(v312, v128);
        v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
        v77 = vmulq_n_f32(v128, vmul_f32(v175, vpadd_f32(*v177.f32, *v177.f32)).f32[0]);
        v77.i32[3] = 0;
        goto LABEL_36;
      }

      v150 = vnegq_f32(v312);
      v150.i32[3] = 0;
      v151 = vnegq_f32(v313);
      v151.i32[3] = 0;
      v152 = vmulq_f32(v150, v126);
      v152.i64[0] = vpaddq_f32(v152, v152).u64[0];
      v153 = vpadd_f32(*v152.f32, *v152.f32);
      v154 = vmulq_f32(v126, v151);
      v154.i64[0] = vpaddq_f32(v154, v154).u64[0];
      v155 = vpadd_f32(*v154.f32, *v154.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v149), vand_s8(vclez_f32(v155), vcgez_f32(v153))), 0), *v312.f32).u32[0] == -1)
      {
        v178 = vsub_f32(v153, v155);
        v179 = vrecpe_f32(v178);
        v180 = 4;
        v86 = v275;
        do
        {
          v179 = vmul_f32(v179, vrecps_f32(v178, v179));
          --v180;
        }

        while (v180);
        v167 = 0;
        v77 = vmlaq_n_f32(v312, v126, vmul_f32(v153, vbsl_s8(vcgt_f32(vabs_f32(v178), 0x3400000034000000), v179, 0)).f32[0]);
        v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
        v166 = 2;
        v181 = &v323;
        v182 = &v319;
        v183 = &v313;
      }

      else
      {
        v156 = vnegq_f32(v314);
        v156.i32[3] = 0;
        v157 = vmulq_f32(v151, v127);
        v157.i64[0] = vpaddq_f32(v157, v157).u64[0];
        v158 = vpadd_f32(*v157.f32, *v157.f32);
        v159 = vmulq_f32(v126, v156);
        v159.i64[0] = vpaddq_f32(v159, v159).u64[0];
        v160 = vpadd_f32(*v159.f32, *v159.f32);
        v161 = vmulq_f32(v127, v156);
        v161.i64[0] = vpaddq_f32(v161, v161).u64[0];
        v162 = vpadd_f32(*v161.f32, *v161.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v158, v155), vcge_f32(v160, v162)), vclez_f32(v145)), 0), *v312.f32).u32[0] == -1)
        {
          v184 = vsub_f32(v158, v155);
          v185 = vadd_f32(v184, vsub_f32(v160, v162));
          v186 = vrecpe_f32(v185);
          v187 = 4;
          do
          {
            v186 = vmul_f32(v186, vrecps_f32(v185, v186));
            --v187;
          }

          while (v187);
          v188 = vmlaq_n_f32(v313, vsubq_f32(v314, v313), vmul_f32(v184, vbsl_s8(vcgt_f32(vabs_f32(v185), 0x3400000034000000), v186, 0)).f32[0]);
          v166 = 2;
          v182 = v320;
          v181 = v324;
          v188.i64[1] = vextq_s8(v188, v188, 8uLL).u32[0];
          v183 = &v314;
          v167 = 1;
          v77 = v188;
        }

        else
        {
          v163 = vmulq_f32(v150, v127);
          v163.i64[0] = vpaddq_f32(v163, v163).u64[0];
          v164 = vpadd_f32(*v163.f32, *v163.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v147), vand_s8(vclez_f32(v162), vcgez_f32(v164))), 0), *v312.f32).u32[0] == -1)
          {
            v189 = vsub_f32(v164, v162);
            v190 = vrecpe_f32(v189);
            v191 = 4;
            do
            {
              v190 = vmul_f32(v190, vrecps_f32(v189, v190));
              --v191;
            }

            while (v191);
            v167 = 0;
            v77 = vmlaq_n_f32(v312, v127, vmul_f32(v164, vbsl_s8(vcgt_f32(vabs_f32(v189), 0x3400000034000000), v190, 0)).f32[0]);
            v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
            v166 = 2;
            v182 = v320;
            v181 = v324;
            v183 = &v314;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v164), vclez_f32(v153)), 0), *v312.f32).u32[0] == -1)
            {
              v167 = 0;
              v166 = 1;
            }

            else
            {
              *v77.f32 = vdup_lane_s16(vand_s8(vcge_f32(v155, v158), vcgez_f32(v155)), 0);
              *v77.f32 = vuzp1_s8(*v77.f32, *v77.f32);
              v165 = v77.i32[0];
              v166 = 1;
              v77 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v77, v256), 0), v313, v314);
              if (v165 == -1)
              {
                v167 = 1;
              }

              else
              {
                v167 = 2;
              }
            }

            v181 = &v323;
            v182 = &v319;
            v183 = &v313;
          }
        }

        v86 = v275;
      }

      v192 = *(&v318 + v167);
      v193 = *v183;
      v194 = *v182;
      v195 = *(&v322 + v167);
      v196 = *v181;
      v312 = *(&v312 + v167);
      v313 = v193;
      v318 = v192;
      v319 = v194;
      v322 = v195;
      v323 = v196;
      v300 = v166;
    }

    else
    {
      v86 = v275;
      if (v117 != 1)
      {
        goto LABEL_60;
      }

      v77 = v312;
      v118 = vsubq_f32(v313, v312);
      v119 = vmulq_f32(v118, v118);
      v119.i64[0] = vpaddq_f32(v119, v119).u64[0];
      v120 = vpadd_f32(*v119.f32, *v119.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v120), 0), *v312.f32).u32[0] != -1)
      {
        v121 = vnegq_f32(v312);
        v121.i32[3] = 0;
        v122 = vmulq_f32(v121, v118);
        v122.i64[0] = vpaddq_f32(v122, v122).u64[0];
        v123 = vpadd_f32(*v122.f32, *v122.f32);
        v124 = vrecpe_f32(v120);
        v125 = 4;
        do
        {
          v124 = vmul_f32(v124, vrecps_f32(v120, v124));
          --v125;
        }

        while (v125);
        v77 = vmlaq_n_f32(v312, v118, vmax_f32(vmin_f32(vmul_f32(v123, v124), _D9), 0).f32[0]);
LABEL_41:
        v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
        goto LABEL_60;
      }

      v300 = 1;
    }

LABEL_60:
    v88 = vnegq_f32(v77);
    v88.i32[3] = 0;
    v197 = vmulq_f32(v77, v77);
    v197.i64[0] = vpaddq_f32(v197, v197).u64[0];
    v198 = vpadd_f32(*v197.f32, *v197.f32);
    v199 = vcgt_f32(v83, v198);
    v87 = vdupq_lane_s32(vand_s8(v199, 0x100000001), 0);
    v84 = vdupq_lane_s32(vand_s8(vcgt_f32(v198, v80), v199), 0);
    v83 = v198;
  }

  v200 = v289.i64[1];
  v201 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v83, v257), 0), v87), 0x1FuLL)), v88, v268);
  v202 = vmulq_f32(v201, v201);
  v202.i64[0] = vpaddq_f32(v202, v202).u64[0];
  v203 = vpadd_f32(*v202.f32, *v202.f32);
  v204 = vrsqrte_f32(v203);
  v205 = 4;
  do
  {
    v204 = vmul_f32(v204, vrsqrts_f32(vmul_f32(v204, v204), v203));
    --v205;
  }

  while (v205);
  v206 = vbsl_s8(vdup_lane_s32(vceqz_f32(v203), 0), v203, vmul_f32(v203, v204));
  v207 = vrecpe_f32(v206);
  v208 = 4;
  v209 = v271;
  do
  {
    v207 = vmul_f32(v207, vrecps_f32(v206, v207));
    --v208;
  }

  while (v208);
  v210 = vdupq_n_s32(-*(v289.i64[1] + 32));
  v211 = vmulq_n_f32(v201, v207.f32[0]);
  v211.i32[3] = 0;
  v212 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v206), 0), v211));
  v212.i32[3] = 0;
  v213 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v87, 0x1FuLL)), v89, v86);
  v299 = v213;
  if (v300 == 3)
  {
    v302 = 0;
    v301 = 0;
    v278 = v210;
    v281 = v212;
    physx::Gu::barycentricCoordinates(&v299, &v312, &v313, &v314, &v302, &v301);
    v210 = v278;
    v212 = v281;
    v209 = v271;
    v87.i32[1] = v318.i32[1];
    v224 = vmulq_n_f32(vsubq_f32(v319, v318), v302.f32[0]);
    v224.i32[3] = 0;
    v225 = vmulq_n_f32(vsubq_f32(v320[0], v318), v301.f32[0]);
    v225.i32[3] = 0;
    v214 = vaddq_f32(v318, vaddq_f32(v224, v225));
  }

  else if (v300 == 2)
  {
    v216 = vsubq_f32(v312, v213);
    v217 = vsubq_f32(vsubq_f32(v313, v213), v216);
    v218 = vmulq_f32(v217, v217);
    v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
    v219 = vpadd_f32(*v218.f32, *v218.f32);
    v220 = vrecpe_f32(v219);
    v221 = 4;
    do
    {
      v220 = vmul_f32(v220, vrecps_f32(v219, v220));
      --v221;
    }

    while (v221);
    v222 = vnegq_f32(v216);
    v222.i32[3] = 0;
    v223 = vmulq_f32(v222, v217);
    v223.i64[0] = vpaddq_f32(v223, v223).u64[0];
    v214 = vmlaq_n_f32(v318, vsubq_f32(v319, v318), vmul_f32(vbsl_s8(vcgtz_f32(v219), v220, 0), vpadd_f32(*v223.f32, *v223.f32)).f32[0]);
    v87.i32[1] = 0;
    v214.i64[1] = vextq_s8(v214, v214, 8uLL).u32[0];
  }

  else
  {
    v214 = 0uLL;
    if (v300 == 1)
    {
      v214 = v318;
    }
  }

  v87.i32[0] = *(v200 + 16);
  v226 = vmlsq_lane_f32(v214, v212, *v87.i8, 0);
  v226.i64[1] = vextq_s8(v226, v226, 8uLL).u32[0];
  v215 = vbslq_s8(v210, v226, v214);
LABEL_75:
  if (v91 == -1)
  {
    v209.i32[0] = 2139095039;
  }

  else
  {
    if (v209.f32[0] == 0.0)
    {
      v215.f32[0] = (*(v289.i64[1] + 16) + v288[1].f32[0]) * 100.0;
      v301.i8[0] = 0;
      v321 = 0;
      v318 = 0u;
      v319 = 0u;
      v320[0] = 0u;
      v312.i64[1] = v289.i64[1];
      v312.i64[0] = &unk_1F5D21CA8;
      v313.i64[0] = v290;
      v228 = v290[2];
      v227 = v290[3];
      v229 = v290[1];
      v314 = *v290;
      v317 = v227;
      v230 = vzip1q_s32(v314, v228);
      v231 = vzip2q_s32(v314, v228);
      v232 = vzip1q_s32(v229, 0);
      v314 = vzip1q_s32(v230, v232);
      v315 = vzip2q_s32(v230, v232);
      v316 = vzip1q_s32(v231, vzip2q_s32(v229, 0));
      v322.i64[0] = &unk_1F5D21A80;
      v322.i64[1] = v288;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(&v312, &v322, &v299, &v302, &v301, &v318, v298, vdup_lane_s32(*v215.f32, 0), *v231.i64, *v315.i8) != 5)
      {
        goto LABEL_79;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(&v289) - 5 >= 2)
      {
        v234 = vnegq_f32(v270);
        v234.i32[3] = 0;
        v235 = vmulq_f32(v234, v234);
        v235.i64[0] = vpaddq_f32(v235, v235).u64[0];
        v236 = vpadd_f32(*v235.f32, *v235.f32);
        v237 = vrsqrte_f32(v236);
        v238 = 4;
        do
        {
          v237 = vmul_f32(v237, vrsqrts_f32(vmul_f32(v237, v237), v236));
          --v238;
        }

        while (v238);
        v239 = vbsl_s8(vdup_lane_s32(vceqz_f32(v236), 0), v236, vmul_f32(v236, v237));
        v240 = vrecpe_f32(v239);
        v241 = 4;
        do
        {
          v240 = vmul_f32(v240, vrecps_f32(v239, v240));
          --v241;
        }

        while (v241);
        v212 = vmulq_n_f32(v234, v240.f32[0]);
        v212.i32[3] = 0;
        v209 = 0;
        v215 = 0uLL;
      }

      else
      {
LABEL_79:
        v212 = v320[0];
        v215 = v318;
        v209 = vmin_f32(v321, 0);
      }
    }

    v242 = vmulq_n_f32(v215, v262);
    v242.i32[3] = 0;
    v243 = vmls_f32(vmul_f32(v263, *&vextq_s8(v215, v215, 4uLL)), v258, *v215.f32);
    *v244.f32 = vext_s8(v243, vmls_f32(vmul_f32(v259, *v215.f32), v263, *&vextq_s8(v215, v215, 8uLL)), 4uLL);
    v244.i64[1] = v243.u32[0];
    v245 = vmlaq_f32(v242, v264, v244);
    v245.i64[1] = vextq_s8(v245, v245, 8uLL).u32[0];
    v246 = vmulq_f32(v261, v215);
    v246.i64[0] = vpaddq_f32(v246, v246).u64[0];
    v247 = vmlaq_n_f32(v245, v261, vpadd_f32(*v246.f32, *v246.f32).f32[0]);
    v247.i64[1] = vextq_s8(v247, v247, 8uLL).u32[0];
    v244.i64[0] = 0x4000000040000000;
    v244.i64[1] = 0x4000000040000000;
    v248 = vmlaq_f32(v265, v244, v247);
    v248.i64[1] = vextq_s8(v248, v248, 8uLL).u32[0];
    v249 = vmlaq_n_f32(v248, v260, vmax_f32(v209, 0).f32[0]);
    v250 = vmulq_n_f32(v212, v262);
    v250.i32[3] = 0;
    *v244.f32 = vmls_f32(vmul_f32(v263, *&vextq_s8(v212, v212, 4uLL)), v258, *v212.f32);
    *v247.f32 = vext_s8(*v244.f32, vmls_f32(vmul_f32(v259, *v212.f32), v263, *&vextq_s8(v212, v212, 8uLL)), 4uLL);
    v247.i64[1] = v244.u32[0];
    v251 = vmlaq_f32(v250, v264, v247);
    v251.i64[1] = vextq_s8(v251, v251, 8uLL).u32[0];
    v252 = vmulq_f32(v261, v212);
    v252.i64[0] = vpaddq_f32(v252, v252).u64[0];
    v253 = vmlaq_n_f32(v251, v261, vpadd_f32(*v252.f32, *v252.f32).f32[0]);
    v254 = vaddq_f32(v253, v253);
    *a7 = v254.i64[0];
    *(a7 + 8) = v254.i32[2];
    *a8 = v249.i64[0];
    *(a8 + 8) = v249.i32[2];
  }

  return v209.f32[0];
}

float32_t physx::Gu::SweepGeomGeom<physx::Gu::CapsuleV,physx::Gu::ConvexHullV>(uint64_t *a1, uint64_t *a2, int8x8_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, float32x4_t a10)
{
  v398 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v380 = 4;
  v376[1] = 0;
  v376[0] = 0;
  a10.i32[0] = *(v10 + 4);
  v11 = vmulq_n_f32(xmmword_1E3047670, *(v10 + 8));
  v11.i32[3] = 0;
  v12 = *a2;
  v13 = vnegq_f32(v11);
  v13.i32[3] = 0;
  v382 = v11;
  v383 = v13;
  v384 = vdup_lane_s32(*a10.f32, 0);
  v377 = a10.i32[0];
  v378 = a10.i32[0];
  v379 = a10.i32[0];
  v381 = 1;
  v365 = 0;
  v363 = 0u;
  v364 = 0u;
  v14 = *(v12 + 48);
  v15 = *(v12 + 4);
  v16 = v15;
  v16.i32[3] = 0;
  v17 = *(v12 + 16);
  v11.i32[0] = HIDWORD(*(v12 + 4));
  v18 = COERCE_FLOAT(*(v12 + 12)) == 1.0;
  if (v11.f32[0] != 1.0)
  {
    v18 = 0;
  }

  v372 = v14;
  v374 = *(v14 + 40) + 20 * *(v14 + 39);
  v375 = *(v14 + 38);
  v20 = v15.f32[0] == 1.0 && v18;
  v19.i64[1] = *(v14 + 68);
  v19.i64[0] = *(v14 + 60);
  v21 = vmulq_f32(v16, v19);
  *v21.i8 = vpmin_f32(vdup_laneq_s32(v21, 2), *v21.i8);
  *v21.i32 = vpmin_f32(*v21.i8, *v21.i8).f32[0];
  *&v364 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v21.i32);
  *(&v364 + 2) = 0.025 * *v21.i32;
  __asm { FMOV            V9.2S, #1.0 }

  if (v20)
  {
    v366 = xmmword_1E3047670;
    v367 = xmmword_1E3047680;
    v368 = xmmword_1E30476A0;
    v369 = xmmword_1E3047670;
    v370 = xmmword_1E3047680;
    v371 = xmmword_1E30476A0;
  }

  else
  {
    v27 = vrecpeq_f32(v16);
    v28 = 4;
    do
    {
      v27 = vmulq_f32(v27, vrecpsq_f32(v27, v16));
      --v28;
    }

    while (v28);
    *v29.f32 = vdup_lane_s32(*v15.f32, 0);
    v29.i64[1] = v29.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v29, v16)), *&a9).u32[0] & 0xFFFFFF) != 0)
    {
      v33 = vdup_lane_s32(*v17.f32, 1);
      v34 = vdup_laneq_s32(v17, 2);
      v35 = vdup_laneq_s32(v17, 3);
      v36 = vaddq_f32(v17, v17);
      v37 = vmul_lane_f32(v33, *v36.f32, 1);
      v38 = vmul_laneq_f32(v34, v36, 2);
      v39 = vmul_n_f32(v33, v36.f32[0]);
      v40 = vmul_n_f32(v34, v36.f32[0]);
      v41 = vmul_n_f32(v35, v36.f32[0]);
      v42 = vmul_lane_f32(v34, *v36.f32, 1);
      v43 = vmul_lane_f32(v35, *v36.f32, 1);
      v44 = vmul_laneq_f32(v35, v36, 2);
      v45 = vsub_f32(_D9, vdup_lane_s32(vmul_f32(*v17.f32, *v36.f32), 0));
      v46 = vsub_f32(vsub_f32(_D9, v37), v38);
      v47 = vadd_f32(v39, v44);
      *v36.f32 = vsub_f32(v40, v43);
      v48 = vsub_f32(v39, v44);
      v49 = vsub_f32(v45, v38);
      v50 = vadd_f32(v40, v43);
      v51 = vsub_f32(v42, v41);
      v52 = vext_s8(v50, v51, 4uLL);
      v53 = vadd_f32(v42, v41);
      *v54.f32 = vext_s8(v46, *&vdupq_lane_s32(v48, 1), 4uLL);
      v54.i64[1] = vdup_lane_s32(v52, 0).u32[0];
      v55 = vsub_f32(v45, v37);
      *v56.f32 = vext_s8(*&vdupq_lane_s32(v47, 0), v49, 4uLL);
      v56.i64[1] = vdup_lane_s32(v52, 1).u32[0];
      *v57.f32 = vext_s8(*&vdupq_lane_s32(*v36.f32, 0), v53, 4uLL);
      v57.i64[1] = vdup_lane_s32(v55, 0).u32[0];
      v58 = vmulq_n_f32(v54, v15.f32[0]);
      v58.i32[3] = 0;
      v59 = vmulq_lane_f32(v56, *v15.f32, 1);
      v59.i32[3] = 0;
      v60 = vmulq_laneq_f32(v57, v15, 2);
      v60.i32[3] = 0;
      v61 = vmulq_lane_f32(v58, v46, 1);
      v61.i32[3] = 0;
      v62 = vmulq_n_f32(v59, *v47.i32);
      v62.i32[3] = 0;
      v63 = vmulq_n_f32(v60, v36.f32[0]);
      v63.i32[3] = 0;
      v64 = vaddq_f32(v61, v62);
      v65 = vmulq_lane_f32(v58, v48, 1);
      v65.i32[3] = 0;
      v66 = vmulq_n_f32(v59, *v49.i32);
      v66.i32[3] = 0;
      v30 = vaddq_f32(v63, v64);
      v67 = vmulq_n_f32(v60, *v53.i32);
      v67.i32[3] = 0;
      v31 = vaddq_f32(v67, vaddq_f32(v65, v66));
      v68 = vmulq_lane_f32(v58, v50, 1);
      v68.i32[3] = 0;
      v69 = vmulq_n_f32(v59, *v51.i32);
      v69.i32[3] = 0;
      v70 = vmulq_n_f32(v60, *v55.i32);
      v70.i32[3] = 0;
      v32 = vaddq_f32(v70, vaddq_f32(v68, v69));
      v71 = vmulq_n_f32(v54, v27.f32[0]);
      v71.i32[3] = 0;
      v72 = vmulq_lane_f32(v56, *v27.f32, 1);
      v72.i32[3] = 0;
      v73 = vmulq_laneq_f32(v57, v27, 2);
      v73.i32[3] = 0;
      v74 = vmulq_lane_f32(v71, v46, 1);
      v74.i32[3] = 0;
      v75 = vmulq_n_f32(v72, *v47.i32);
      v75.i32[3] = 0;
      v76 = vmulq_n_f32(v73, v36.f32[0]);
      v76.i32[3] = 0;
      v366 = v30;
      v367 = v31;
      v77 = vaddq_f32(v76, vaddq_f32(v74, v75));
      v78 = vmulq_lane_f32(v71, v48, 1);
      v78.i32[3] = 0;
      v79 = vmulq_n_f32(v72, *v49.i32);
      v79.i32[3] = 0;
      v80 = vmulq_n_f32(v73, *v53.i32);
      v80.i32[3] = 0;
      v81 = vmulq_lane_f32(v71, v50, 1);
      v81.i32[3] = 0;
      a10 = vmulq_n_f32(v72, *v51.i32);
      a10.i32[3] = 0;
      v82 = vmulq_n_f32(v73, *v55.i32);
      v82.i32[3] = 0;
      v368 = v32;
      v369 = v77;
      v370 = vaddq_f32(v80, vaddq_f32(v78, v79));
      v371 = vaddq_f32(v82, vaddq_f32(v81, a10));
      a10.i32[0] = *(v10 + 4);
    }

    else
    {
      v27.i32[3] = 0;
      v30 = vmulq_f32(v16, xmmword_1E3047670);
      v31 = vmulq_f32(v16, xmmword_1E3047680);
      v32 = vmulq_f32(v16, xmmword_1E30476A0);
      v366 = v30;
      v367 = v31;
      v368 = v32;
      v369 = vmulq_f32(v27, xmmword_1E3047670);
      v370 = vmulq_f32(v27, xmmword_1E3047680);
      v371 = vmulq_f32(v27, xmmword_1E30476A0);
    }

    v83 = vmulq_f32(v30, 0);
    v83.i32[3] = 0;
    v84 = vmulq_f32(v31, 0);
    v84.i32[3] = 0;
    v85 = vmulq_f32(v32, 0);
    v85.i32[3] = 0;
    v363 = vaddq_f32(v85, vaddq_f32(v84, v83));
  }

  v373 = *(v14 + 48);
  *&a9 = a10.f32[0] + *&a9;
  v86.i64[0] = *(a5 + 16);
  v86.i64[1] = *(a5 + 24);
  v87.i64[0] = *(a6 + 16);
  v88 = *a4;
  v87.i64[1] = *(a6 + 24);
  v89 = vnegq_f32(*a4);
  v90 = vsubq_f32(v86, v87);
  v91 = v89;
  v91.i32[3] = 0;
  v328 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v92) = vmla_f32(0xBF000000BF000000, *v328.f32, *v328.f32).u32[0];
  v93 = vmulq_n_f32(v90, v92);
  v93.i32[3] = 0;
  v94 = vextq_s8(v91, v91, 8uLL).u64[0];
  v95 = vext_s8(*v89.f32, v94, 4uLL);
  v96 = vmls_f32(vmul_f32(*v89.f32, *&vextq_s8(v90, v90, 4uLL)), v95, *v90.f32);
  *v97.f32 = vext_s8(v96, vmls_f32(vmul_f32(v94, *v90.f32), *v89.f32, *&vextq_s8(v90, v90, 8uLL)), 4uLL);
  v97.i64[1] = v96.u32[0];
  v98 = vmlaq_laneq_f32(v93, v97, *a4, 3);
  v98.i64[1] = vextq_s8(v98, v98, 8uLL).u32[0];
  v99 = vmulq_f32(v91, v90);
  v99.i64[0] = vpaddq_f32(v99, v99).u64[0];
  v100 = vmlaq_n_f32(v98, v91, vpadd_f32(*v99.f32, *v99.f32).f32[0]);
  v101 = vaddq_f32(v100, v100);
  v101.i32[3] = 0;
  v102 = *a3->i8;
  v102.i32[3] = 0;
  v103 = vmulq_f32(v102, v91);
  v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
  v104 = vmulq_laneq_f32(v102, *a4, 3);
  v102.i64[0] = vextq_s8(v102, v102, 8uLL).u64[0];
  v105 = vmls_f32(vmul_f32(vext_s8(*a3, *v102.f32, 4uLL), *v89.f32), v95, *a3);
  *v106.f32 = vext_s8(v105, vmls_f32(vmul_f32(*a3, v94), *v89.f32, *v102.f32), 4uLL);
  *&v106.u32[2] = v105;
  v107 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v91, *a3->i8, 3), v104), v106);
  *v89.f32 = vdup_lane_s32(*v107.f32, 1);
  *v91.f32 = vdup_laneq_s32(v107, 2);
  v108 = vaddq_f32(v107, v107);
  v109 = vsub_f32(vmul_f32(*&vextq_s8(*a3->i8, *a3->i8, 8uLL), *&vextq_s8(v88, v88, 8uLL)), vpadd_f32(*v103.f32, *v103.f32));
  *v102.f32 = vdup_laneq_s32(v108, 2);
  *v107.f32 = vdup_lane_s32(vmul_f32(*v107.f32, *v108.f32), 0);
  v110 = vmul_lane_f32(*v89.f32, *v108.f32, 1);
  v111 = vmul_laneq_f32(*v91.f32, v108, 2);
  *v89.f32 = vmul_n_f32(*v89.f32, v108.f32[0]);
  v112 = vmul_n_f32(*v91.f32, v108.f32[0]);
  *v103.f32 = vmul_lane_f32(vdup_lane_s32(*v108.f32, 0), v109, 1);
  *v91.f32 = vmul_lane_f32(*v91.f32, *v108.f32, 1);
  *v108.f32 = vmul_lane_f32(vdup_lane_s32(*v108.f32, 1), v109, 1);
  v113 = vmul_lane_f32(*v102.f32, v109, 1);
  *v107.f32 = vsub_f32(_D9, *v107.f32);
  *v102.f32 = vext_s8(vsub_f32(vsub_f32(_D9, v110), v111), vadd_f32(*v89.f32, v113), 4uLL);
  v102.i64[1] = vsub_f32(v112, *v108.f32).u32[0];
  *v89.f32 = vext_s8(vsub_f32(*v89.f32, v113), vsub_f32(*v107.f32, v111), 4uLL);
  v89.i64[1] = vadd_f32(*v91.f32, *v103.f32).u32[0];
  v354 = v102;
  v355 = v89;
  *v89.f32 = vext_s8(vadd_f32(v112, *v108.f32), vsub_f32(*v91.f32, *v103.f32), 4uLL);
  v89.i64[1] = vsub_f32(*v107.f32, v110).u32[0];
  v356 = v89;
  v357 = v101;
  *v107.f32 = a3[2];
  v107.i64[1] = a3[3].u32[0];
  v89.i64[0] = a4[1].i64[0];
  v89.i64[1] = a4[1].u32[2];
  v329 = v87;
  v324 = vsubq_f32(v107, v86);
  v114 = vsubq_f32(vsubq_f32(v89, v87), v324);
  v115 = v88;
  v115.i32[3] = 0;
  v326 = v92;
  v327 = *v88.f32;
  v116 = vmulq_n_f32(v114, v92);
  v116.i32[3] = 0;
  v323 = vextq_s8(v115, v115, 8uLL).u64[0];
  v322 = vext_s8(*v88.f32, v323, 4uLL);
  *v91.f32 = vmls_f32(vmul_f32(*v88.f32, *&vextq_s8(v114, v114, 4uLL)), v322, *v114.f32);
  *v89.f32 = vext_s8(*v91.f32, vmls_f32(vmul_f32(v323, *v114.f32), *v88.f32, *&vextq_s8(v114, v114, 8uLL)), 4uLL);
  v89.i64[1] = v91.u32[0];
  v117 = vmlsq_laneq_f32(v116, v89, v88, 3);
  v117.i64[1] = vextq_s8(v117, v117, 8uLL).u32[0];
  v118 = vmulq_f32(v115, v114);
  v118.i64[0] = vpaddq_f32(v118, v118).u64[0];
  v325 = v115;
  v119 = vmlaq_n_f32(v117, v115, vpadd_f32(*v118.f32, *v118.f32).f32[0]);
  v333 = vaddq_f32(v119, v119);
  v348.i64[1] = v376;
  v349 = &v354;
  v353 = v101;
  v120 = vzip1q_s32(v354, v356);
  v121 = vzip1q_s32(v355, 0);
  v350 = vzip1q_s32(v120, v121);
  v351 = vzip2q_s32(v120, v121);
  v352 = vzip1q_s32(vzip2q_s32(v354, v356), vzip2q_s32(v355, 0));
  v347 = &v363;
  v348.i64[0] = &unk_1F5D21CA8;
  v346 = &unk_1F5D21818;
  v361 = 1;
  v122 = vmulq_f32(v101, v101);
  v122.i64[0] = vpaddq_f32(v122, v122).u64[0];
  v123 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v122.f32, *v122.f32), 0x3400000034000000), 0)), 0x1FuLL)), v101, xmmword_1E3047670);
  v124 = vmulq_f32(v123, v123);
  v124.i64[0] = vpaddq_f32(v124, v124).u64[0];
  v125 = vpadd_f32(*v124.f32, *v124.f32);
  v126 = vrsqrte_f32(v125);
  v127 = 4;
  do
  {
    v126 = vmul_f32(v126, vrsqrts_f32(vmul_f32(v126, v126), v125));
    --v127;
  }

  while (v127);
  v128 = v333;
  v128.i32[3] = 0;
  v334 = v128;
  v129 = vbsl_s8(vdup_lane_s32(vceqz_f32(v125), 0), v125, vmul_f32(v125, v126));
  v130 = vrecpe_f32(v129);
  v131 = 4;
  do
  {
    v130 = vmul_f32(v130, vrecps_f32(v129, v130));
    --v131;
  }

  while (v131);
  *&a9 = *&a9 + 0.0;
  v132 = vmlaq_f32(0, 0, v128);
  v133 = vdup_lane_s32(*&a9, 0);
  v132.i64[1] = vextq_s8(v132, v132, 8uLL).u32[0];
  v338 = v132;
  v134 = vmulq_n_f32(v123, v130.f32[0]);
  v134.i32[3] = 0;
  v360 = v134;
  v135 = vnegq_f32(v134);
  v135.i32[3] = 0;
  v385 = v135;
  *v136.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(&v348, &v385);
  v343 = v136;
  *v137.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v346, &v360);
  v138 = v137;
  v139 = vsubq_f32(v343, v137);
  v385 = v139;
  v386 = 0u;
  v387 = 0u;
  v388 = 0u;
  v391 = v343;
  v392 = 0u;
  memset(v393, 0, sizeof(v393));
  v140 = vnegq_f32(v139);
  v140.i32[3] = 0;
  v395 = v138;
  v396 = 0u;
  memset(v397, 0, sizeof(v397));
  v141 = &v347[1].f32[2];
  *v138.f32 = vld1_dup_f32(v141);
  *v138.f32 = vmul_f32(vmin_f32(*v138.f32, 0), vdup_n_s32(0x3DCCCCCDu));
  v142 = vadd_f32(v133, *v138.f32);
  v143 = vmul_f32(*v138.f32, *v138.f32);
  v144 = vmul_f32(v142, v142);
  v145 = vmulq_f32(v140, v140);
  v146 = vpaddq_f32(v145, v145);
  v147 = vpadd_f32(*v146.f32, *v146.f32);
  v321 = v143;
  *v146.f32 = vcgt_f32(v147, v143);
  v148 = vdupq_lane_s32(*v146.f32, 0);
  v146.i32[0] = -1;
  v320 = v146;
  v149 = vneg_f32(0x80000000800000);
  v150 = v139;
  v151.i64[0] = -1;
  v151.i64[1] = -1;
  v332 = v140;
  v152 = v140;
  v335 = 0;
  while (1)
  {
    v153 = v139;
    v154.i64[0] = -1;
    v154.i64[1] = -1;
    *v154.i8 = vmovn_s32(vceqq_s32(v148, v154));
    v155 = vuzp1_s8(*v154.i8, *v154.i8).u32[0];
    if (v155 != -1)
    {
      break;
    }

    v156 = vmulq_f32(v152, v152);
    v156.i64[0] = vpaddq_f32(v156, v156).u64[0];
    v157 = vpadd_f32(*v156.f32, *v156.f32);
    v158 = vrsqrte_f32(v157);
    v159 = 4;
    do
    {
      v158 = vmul_f32(v158, vrsqrts_f32(vmul_f32(v158, v158), v157));
      --v159;
    }

    while (v159);
    v339 = v153;
    v160 = vbsl_s8(vdup_lane_s32(vceqz_f32(v157), 0), v157, vmul_f32(v157, v158));
    v161 = vrecpe_f32(v160);
    v162 = 4;
    do
    {
      v161 = vmul_f32(v161, vrecps_f32(v160, v161));
      --v162;
    }

    while (v162);
    v337 = v152;
    v163 = vmulq_n_f32(v152, v161.f32[0]);
    v163.i32[3] = 0;
    v340 = v163;
    v359 = v163;
    v164 = vnegq_f32(v163);
    v164.i32[3] = 0;
    v358 = v164;
    *v165.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(&v348, &v359);
    v344 = v165;
    *v166.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v346, &v358);
    v167 = v344;
    v168 = vaddq_f32(v338, v166);
    v139 = vsubq_f32(v344, v168);
    v169 = vnegq_f32(v139);
    v169.i32[3] = 0;
    v170 = vmulq_f32(v340, v169);
    v170.i64[0] = vpaddq_f32(v170, v170).u64[0];
    v171 = vsub_f32(vpadd_f32(*v170.f32, *v170.f32), v142);
    if (v171.f32[0] > 0.0)
    {
      v172 = vmulq_f32(v334, v340);
      v172.i64[0] = vpaddq_f32(v172, v172).u64[0];
      v173 = vpadd_f32(*v172.f32, *v172.f32);
      if (v173.f32[0] >= 0.0)
      {
        goto LABEL_83;
      }

      v174 = vrecpe_f32(v173);
      v175 = 4;
      do
      {
        v174 = vmul_f32(v174, vrecps_f32(v173, v174));
        --v175;
      }

      while (v175);
      v176 = vsub_f32(v335, vmul_f32(v171, v174));
      if (vcgt_f32(v176, v335).u8[0])
      {
        if (v176.f32[0] > 1.0)
        {
LABEL_83:
          v273 = 0;
          v276 = 0uLL;
          v279 = 0uLL;
          goto LABEL_89;
        }

        v177 = vmlaq_n_f32(0, v334, v176.f32[0]);
        v177.i64[1] = vextq_s8(v177, v177, 8uLL).u32[0];
        v341 = v177;
        v178 = vsubq_f32(v177, v338);
        v336 = v176;
        v395 = vaddq_f32(v178, v395);
        v396 = vaddq_f32(v178, v396);
        v397[0] = vaddq_f32(v178, v397[0]);
        v385 = vsubq_f32(v391, v395);
        v386 = vsubq_f32(v392, v396);
        v387 = vsubq_f32(v393[0], v397[0]);
        *v179.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v346, &v358);
        v167 = v344;
        v168 = vaddq_f32(v341, v179);
        v139 = vsubq_f32(v344, v168);
        v147 = v149;
        v180 = v336;
        v332 = v337;
        v338 = v341;
      }

      else
      {
        v180 = v176;
      }

      v335 = v180;
    }

    v181 = v361;
    *(&v391 + v361) = v167;
    *(&v395 + v181) = v168;
    v361 = v181 + 1;
    *(&v385 + v181) = v139;
    if (v181 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v385, &v391, &v395, &v361);
LABEL_50:
      v150 = v339;
      goto LABEL_74;
    }

    if (v181 == 2)
    {
      v139 = v385;
      v190 = vsubq_f32(v386, v385);
      v191 = vsubq_f32(v387, v385);
      v193 = vmls_f32(vmul_f32(*v190.f32, *&vextq_s8(v191, v191, 4uLL)), *&vextq_s8(v190, v190, 4uLL), *v191.f32);
      *v192.f32 = vext_s8(v193, vmls_f32(vmul_f32(*&vextq_s8(v190, v190, 8uLL), *v191.f32), *v190.f32, *&vextq_s8(v191, v191, 8uLL)), 4uLL);
      v193.i32[1] = 0;
      v361 = 3;
      v194 = vpadd_f32(vmul_f32(*v192.f32, *v192.f32), vmul_f32(v193.u32[0], v193.u32[0]));
      v195 = vpadd_f32(v194, v194);
      if (v195.f32[0] <= 0.00000011921)
      {
        v361 = 2;
        v232 = vmulq_f32(v190, v190);
        v232.i64[0] = vpaddq_f32(v232, v232).u64[0];
        v233 = vpadd_f32(*v232.f32, *v232.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v233), 0), *v385.f32).u32[0] == -1)
        {
          v361 = 1;
          goto LABEL_50;
        }

        v234 = vnegq_f32(v385);
        v234.i32[3] = 0;
        v235 = vmulq_f32(v234, v190);
        v235.i64[0] = vpaddq_f32(v235, v235).u64[0];
        v236 = vpadd_f32(*v235.f32, *v235.f32);
        v237 = vrecpe_f32(v233);
        v238 = 4;
        v150 = v339;
        do
        {
          v237 = vmul_f32(v237, vrecps_f32(v233, v237));
          --v238;
        }

        while (v238);
        v139 = vmlaq_n_f32(v385, v190, vmax_f32(vmin_f32(vmul_f32(v236, v237), _D9), 0).f32[0]);
        goto LABEL_55;
      }

      *&v192.u32[2] = v193;
      v196 = vextq_s8(v386, v386, 8uLL).u64[0];
      v197 = vextq_s8(v387, v387, 8uLL).u64[0];
      v198 = vextq_s8(v387, v387, 4uLL).u64[0];
      v199 = vextq_s8(v386, v386, 4uLL).u64[0];
      v200 = vmls_f32(vmul_f32(*v386.f32, v198), v199, *v387.f32);
      *v201.f32 = vext_s8(v200, vmls_f32(vmul_f32(v196, *v387.f32), *v386.f32, v197), 4uLL);
      v201.i64[1] = v200.u32[0];
      v202 = vextq_s8(v385, v385, 8uLL).u64[0];
      v203 = vextq_s8(v385, v385, 4uLL).u64[0];
      v204 = vmls_f32(vmul_f32(v203, *v387.f32), v198, *v385.f32);
      *v205.f32 = vext_s8(v204, vmls_f32(vmul_f32(*v385.f32, v197), *v387.f32, v202), 4uLL);
      v205.i64[1] = v204.u32[0];
      v206 = vmls_f32(vmul_f32(*v385.f32, v199), v203, *v386.f32);
      *v207.f32 = vext_s8(v206, vmls_f32(vmul_f32(v202, *v386.f32), *v385.f32, v196), 4uLL);
      v207.i64[1] = v206.u32[0];
      v208 = vmulq_f32(v201, v192);
      v208.i64[0] = vpaddq_f32(v208, v208).u64[0];
      v209 = vpadd_f32(*v208.f32, *v208.f32);
      v210 = vmulq_f32(v205, v192);
      v210.i64[0] = vpaddq_f32(v210, v210).u64[0];
      v211 = vpadd_f32(*v210.f32, *v210.f32);
      v212 = vmulq_f32(v207, v192);
      v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
      v213 = vpadd_f32(*v212.f32, *v212.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v211), vcgez_f32(v209)), vcgez_f32(v213)), 0), *v385.f32).u32[0] == -1)
      {
        v239 = vrecpe_f32(v195);
        v240 = 4;
        do
        {
          v239 = vmul_f32(v239, vrecps_f32(v195, v239));
          --v240;
        }

        while (v240);
        v241 = vmulq_f32(v385, v192);
        v241.i64[0] = vpaddq_f32(v241, v241).u64[0];
        v139 = vmulq_n_f32(v192, vmul_f32(v239, vpadd_f32(*v241.f32, *v241.f32)).f32[0]);
        v139.i32[3] = 0;
        goto LABEL_50;
      }

      v214 = vnegq_f32(v385);
      v214.i32[3] = 0;
      v215 = vnegq_f32(v386);
      v215.i32[3] = 0;
      v216 = vmulq_f32(v214, v190);
      v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
      v217 = vpadd_f32(*v216.f32, *v216.f32);
      v218 = vmulq_f32(v190, v215);
      v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
      v219 = vpadd_f32(*v218.f32, *v218.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v213), vand_s8(vclez_f32(v219), vcgez_f32(v217))), 0), *v385.f32).u32[0] == -1)
      {
        v242 = vsub_f32(v217, v219);
        v243 = vrecpe_f32(v242);
        v244 = 4;
        v150 = v339;
        do
        {
          v243 = vmul_f32(v243, vrecps_f32(v242, v243));
          --v244;
        }

        while (v244);
        v231 = 0;
        v139 = vmlaq_n_f32(v385, v190, vmul_f32(v217, vbsl_s8(vcgt_f32(vabs_f32(v242), 0x3400000034000000), v243, 0)).f32[0]);
        v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
        v230 = 2;
        v245 = &v396;
        v246 = &v392;
        v247 = &v386;
      }

      else
      {
        v220 = vnegq_f32(v387);
        v220.i32[3] = 0;
        v221 = vmulq_f32(v215, v191);
        v221.i64[0] = vpaddq_f32(v221, v221).u64[0];
        v222 = vpadd_f32(*v221.f32, *v221.f32);
        v223 = vmulq_f32(v190, v220);
        v223.i64[0] = vpaddq_f32(v223, v223).u64[0];
        v224 = vpadd_f32(*v223.f32, *v223.f32);
        v225 = vmulq_f32(v191, v220);
        v225.i64[0] = vpaddq_f32(v225, v225).u64[0];
        v226 = vpadd_f32(*v225.f32, *v225.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v222, v219), vcge_f32(v224, v226)), vclez_f32(v209)), 0), *v385.f32).u32[0] == -1)
        {
          v248 = vsub_f32(v222, v219);
          v249 = vadd_f32(v248, vsub_f32(v224, v226));
          v250 = vrecpe_f32(v249);
          v251 = 4;
          do
          {
            v250 = vmul_f32(v250, vrecps_f32(v249, v250));
            --v251;
          }

          while (v251);
          v252 = vmlaq_n_f32(v386, vsubq_f32(v387, v386), vmul_f32(v248, vbsl_s8(vcgt_f32(vabs_f32(v249), 0x3400000034000000), v250, 0)).f32[0]);
          v230 = 2;
          v246 = v393;
          v245 = v397;
          v252.i64[1] = vextq_s8(v252, v252, 8uLL).u32[0];
          v247 = &v387;
          v231 = 1;
          v139 = v252;
        }

        else
        {
          v227 = vmulq_f32(v214, v191);
          v227.i64[0] = vpaddq_f32(v227, v227).u64[0];
          v228 = vpadd_f32(*v227.f32, *v227.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v211), vand_s8(vclez_f32(v226), vcgez_f32(v228))), 0), *v385.f32).u32[0] == -1)
          {
            v253 = vsub_f32(v228, v226);
            v254 = vrecpe_f32(v253);
            v255 = 4;
            do
            {
              v254 = vmul_f32(v254, vrecps_f32(v253, v254));
              --v255;
            }

            while (v255);
            v231 = 0;
            v139 = vmlaq_n_f32(v385, v191, vmul_f32(v228, vbsl_s8(vcgt_f32(vabs_f32(v253), 0x3400000034000000), v254, 0)).f32[0]);
            v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
            v230 = 2;
            v246 = v393;
            v245 = v397;
            v247 = &v387;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v228), vclez_f32(v217)), 0), *v385.f32).u32[0] == -1)
            {
              v231 = 0;
              v230 = 1;
            }

            else
            {
              *v139.f32 = vdup_lane_s16(vand_s8(vcge_f32(v219, v222), vcgez_f32(v219)), 0);
              *v139.f32 = vuzp1_s8(*v139.f32, *v139.f32);
              v229 = v139.i32[0];
              v230 = 1;
              v139 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v139, v320), 0), v386, v387);
              if (v229 == -1)
              {
                v231 = 1;
              }

              else
              {
                v231 = 2;
              }
            }

            v245 = &v396;
            v246 = &v392;
            v247 = &v386;
          }
        }

        v150 = v339;
      }

      v256 = *(&v391 + v231);
      v257 = *v247;
      v258 = *v246;
      v259 = *(&v395 + v231);
      v260 = *v245;
      v385 = *(&v385 + v231);
      v386 = v257;
      v391 = v256;
      v392 = v258;
      v395 = v259;
      v396 = v260;
      v361 = v230;
    }

    else
    {
      v150 = v339;
      if (v181 != 1)
      {
        goto LABEL_74;
      }

      v139 = v385;
      v182 = vsubq_f32(v386, v385);
      v183 = vmulq_f32(v182, v182);
      v183.i64[0] = vpaddq_f32(v183, v183).u64[0];
      v184 = vpadd_f32(*v183.f32, *v183.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v184), 0), *v385.f32).u32[0] != -1)
      {
        v185 = vnegq_f32(v385);
        v185.i32[3] = 0;
        v186 = vmulq_f32(v185, v182);
        v186.i64[0] = vpaddq_f32(v186, v186).u64[0];
        v187 = vpadd_f32(*v186.f32, *v186.f32);
        v188 = vrecpe_f32(v184);
        v189 = 4;
        do
        {
          v188 = vmul_f32(v188, vrecps_f32(v184, v188));
          --v189;
        }

        while (v189);
        v139 = vmlaq_n_f32(v385, v182, vmax_f32(vmin_f32(vmul_f32(v187, v188), _D9), 0).f32[0]);
LABEL_55:
        v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
        goto LABEL_74;
      }

      v361 = 1;
    }

LABEL_74:
    v152 = vnegq_f32(v139);
    v152.i32[3] = 0;
    v261 = vmulq_f32(v139, v139);
    v261.i64[0] = vpaddq_f32(v261, v261).u64[0];
    v262 = vpadd_f32(*v261.f32, *v261.f32);
    v263 = vcgt_f32(v147, v262);
    v151 = vdupq_lane_s32(vand_s8(v263, 0x100000001), 0);
    v148 = vdupq_lane_s32(vand_s8(vcgt_f32(v262, v144), v263), 0);
    v147 = v262;
  }

  v264 = v348.i64[1];
  v265 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v147, v321), 0), v151), 0x1FuLL)), v152, v332);
  v266 = vmulq_f32(v265, v265);
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
  v270 = vbsl_s8(vdup_lane_s32(vceqz_f32(v267), 0), v267, vmul_f32(v267, v268));
  v271 = vrecpe_f32(v270);
  v272 = 4;
  v273 = v335;
  do
  {
    v271 = vmul_f32(v271, vrecps_f32(v270, v271));
    --v272;
  }

  while (v272);
  v274 = vdupq_n_s32(-*(v348.i64[1] + 32));
  v275 = vmulq_n_f32(v265, v271.f32[0]);
  v275.i32[3] = 0;
  v276 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v270), 0), v275));
  v276.i32[3] = 0;
  v277 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v151, 0x1FuLL)), v153, v150);
  v359 = v277;
  if (v361 == 3)
  {
    v358.i64[0] = 0;
    v362 = 0;
    v342 = v274;
    v345 = v276;
    physx::Gu::barycentricCoordinates(&v359, &v385, &v386, &v387, &v358, &v362);
    v274 = v342;
    v276 = v345;
    v273 = v335;
    v151.i32[1] = v391.i32[1];
    v288 = vmulq_n_f32(vsubq_f32(v392, v391), v358.f32[0]);
    v288.i32[3] = 0;
    v289 = vmulq_n_f32(vsubq_f32(v393[0], v391), v362.f32[0]);
    v289.i32[3] = 0;
    v278 = vaddq_f32(v391, vaddq_f32(v288, v289));
  }

  else if (v361 == 2)
  {
    v280 = vsubq_f32(v385, v277);
    v281 = vsubq_f32(vsubq_f32(v386, v277), v280);
    v282 = vmulq_f32(v281, v281);
    v282.i64[0] = vpaddq_f32(v282, v282).u64[0];
    v283 = vpadd_f32(*v282.f32, *v282.f32);
    v284 = vrecpe_f32(v283);
    v285 = 4;
    do
    {
      v284 = vmul_f32(v284, vrecps_f32(v283, v284));
      --v285;
    }

    while (v285);
    v286 = vnegq_f32(v280);
    v286.i32[3] = 0;
    v287 = vmulq_f32(v286, v281);
    v287.i64[0] = vpaddq_f32(v287, v287).u64[0];
    v278 = vmlaq_n_f32(v391, vsubq_f32(v392, v391), vmul_f32(vbsl_s8(vcgtz_f32(v283), v284, 0), vpadd_f32(*v287.f32, *v287.f32)).f32[0]);
    v151.i32[1] = 0;
    v278.i64[1] = vextq_s8(v278, v278, 8uLL).u32[0];
  }

  else
  {
    v278 = 0uLL;
    if (v361 == 1)
    {
      v278 = v391;
    }
  }

  v151.i32[0] = *(v264 + 16);
  v290 = vmlsq_lane_f32(v278, v276, *v151.i8, 0);
  v290.i64[1] = vextq_s8(v290, v290, 8uLL).u32[0];
  v279 = vbslq_s8(v274, v290, v278);
LABEL_89:
  if (v155 == -1)
  {
    v273.i32[0] = 2139095039;
  }

  else
  {
    if (v273.f32[0] == 0.0)
    {
      v279.f32[0] = (*(v348.i64[1] + 16) + v347[1].f32[0]) * 100.0;
      v358.i8[0] = 0;
      v394 = 0;
      v391 = 0u;
      v392 = 0u;
      v393[0] = 0u;
      v385.i64[1] = v348.i64[1];
      v385.i64[0] = &unk_1F5D21CA8;
      v386.i64[0] = v349;
      v292 = v349[2];
      v291 = v349[3];
      v293 = v349[1];
      v387 = *v349;
      v390 = v291;
      v294 = vzip1q_s32(v387, v292);
      v295 = vzip2q_s32(v387, v292);
      v296 = vzip1q_s32(v293, 0);
      v387 = vzip1q_s32(v294, v296);
      v388 = vzip2q_s32(v294, v296);
      v389 = vzip1q_s32(v295, vzip2q_s32(v293, 0));
      v395.i64[0] = &unk_1F5D21818;
      v395.i64[1] = v347;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v385, &v395, &v360, &v359, &v358, &v391, v357, vdup_lane_s32(*v279.f32, 0), *v295.i64, v388, *v387.f32, *v294.i8) != 5)
      {
        goto LABEL_93;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(&v348) - 5 >= 2)
      {
        v298 = vnegq_f32(v334);
        v298.i32[3] = 0;
        v299 = vmulq_f32(v298, v298);
        v299.i64[0] = vpaddq_f32(v299, v299).u64[0];
        v300 = vpadd_f32(*v299.f32, *v299.f32);
        v301 = vrsqrte_f32(v300);
        v302 = 4;
        do
        {
          v301 = vmul_f32(v301, vrsqrts_f32(vmul_f32(v301, v301), v300));
          --v302;
        }

        while (v302);
        v303 = vbsl_s8(vdup_lane_s32(vceqz_f32(v300), 0), v300, vmul_f32(v300, v301));
        v304 = vrecpe_f32(v303);
        v305 = 4;
        do
        {
          v304 = vmul_f32(v304, vrecps_f32(v303, v304));
          --v305;
        }

        while (v305);
        v276 = vmulq_n_f32(v298, v304.f32[0]);
        v276.i32[3] = 0;
        v273 = 0;
        v279 = 0uLL;
      }

      else
      {
LABEL_93:
        v276 = v393[0];
        v279 = v391;
        v273 = vmin_f32(v394, 0);
      }
    }

    v306 = vmulq_n_f32(v279, v326);
    v306.i32[3] = 0;
    v307 = vmls_f32(vmul_f32(v327, *&vextq_s8(v279, v279, 4uLL)), v322, *v279.f32);
    *v308.f32 = vext_s8(v307, vmls_f32(vmul_f32(v323, *v279.f32), v327, *&vextq_s8(v279, v279, 8uLL)), 4uLL);
    v308.i64[1] = v307.u32[0];
    v309 = vmlaq_f32(v306, v328, v308);
    v309.i64[1] = vextq_s8(v309, v309, 8uLL).u32[0];
    v310 = vmulq_f32(v325, v279);
    v310.i64[0] = vpaddq_f32(v310, v310).u64[0];
    v311 = vmlaq_n_f32(v309, v325, vpadd_f32(*v310.f32, *v310.f32).f32[0]);
    v311.i64[1] = vextq_s8(v311, v311, 8uLL).u32[0];
    v308.i64[0] = 0x4000000040000000;
    v308.i64[1] = 0x4000000040000000;
    v312 = vmlaq_f32(v329, v308, v311);
    v312.i64[1] = vextq_s8(v312, v312, 8uLL).u32[0];
    v313 = vmlaq_n_f32(v312, v324, vmax_f32(v273, 0).f32[0]);
    v314 = vmulq_n_f32(v276, v326);
    v314.i32[3] = 0;
    *v308.f32 = vmls_f32(vmul_f32(v327, *&vextq_s8(v276, v276, 4uLL)), v322, *v276.f32);
    *v311.f32 = vext_s8(*v308.f32, vmls_f32(vmul_f32(v323, *v276.f32), v327, *&vextq_s8(v276, v276, 8uLL)), 4uLL);
    v311.i64[1] = v308.u32[0];
    v315 = vmlaq_f32(v314, v328, v311);
    v315.i64[1] = vextq_s8(v315, v315, 8uLL).u32[0];
    v316 = vmulq_f32(v325, v276);
    v316.i64[0] = vpaddq_f32(v316, v316).u64[0];
    v317 = vmlaq_n_f32(v315, v325, vpadd_f32(*v316.f32, *v316.f32).f32[0]);
    v318 = vaddq_f32(v317, v317);
    *a7 = v318.i64[0];
    *(a7 + 8) = v318.i32[2];
    *a8 = v313.i64[0];
    *(a8 + 8) = v313.i32[2];
  }

  return v273.f32[0];
}