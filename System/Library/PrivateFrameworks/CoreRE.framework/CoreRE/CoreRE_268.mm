uint64_t physx::Gu::generateOrProcessContactsConvexConvex(uint64_t a1, uint64_t a2, uint64_t a3, int32x4_t *a4, float32x4_t *a5, int a6, uint64_t a7, uint64_t a8, float32x2_t a9, float32x2_t a10, double a11, float32x4_t *a12, unsigned int a13, char a14, char a15)
{
  v132 = *MEMORY[0x1E69E9840];
  v121 = a10;
  if (!a6)
  {
    return 0;
  }

  v21 = *(a8 + 64);
  if (*(a8 + 64))
  {
    v22 = *(a8 + 80);
    v23 = v22[2];
    if (v21 != 1)
    {
      v24 = v21 - 1;
      v25 = v22 + 5;
      do
      {
        v26 = *v25;
        v25 += 3;
        v23 = vaddq_f32(v23, v26);
        --v24;
      }

      while (v24);
    }

    v23.i32[3] = 0;
    v27 = vmulq_f32(v23, v23);
    v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
    v28 = vpadd_f32(*v27.f32, *v27.f32);
    v29 = vrsqrte_f32(v28);
    v30 = 4;
    do
    {
      v29 = vmul_f32(v29, vrsqrts_f32(vmul_f32(v29, v29), v28));
      --v30;
    }

    while (v30);
    v31 = vbsl_s8(vdup_lane_s32(vceqz_f32(v28), 0), v28, vmul_f32(v28, v29));
    v32 = vrecpe_f32(v31);
    v33 = 4;
    do
    {
      v32 = vmul_f32(v32, vrecps_f32(v31, v32));
      --v33;
    }

    while (v33);
    v34 = vmulq_n_f32(v23, v32.f32[0]);
    v34.i32[3] = 0;
  }

  else
  {
    v34 = 0uLL;
  }

  v120 = v34;
  v36 = physx::Gu::addGJKEPAContacts(a1, a2, a5, a6, a12, a7, a8, vmul_f32(a9, vdup_n_s32(0x3D4CCCCDu)));
  v37 = *(a7 + 32);
  if ((v36 & 1) == 0 && ((v38 = vmulq_f32(v120, v37), v38.i64[0] = vpaddq_f32(v38, v38).u64[0], vpadd_f32(*v38.f32, *v38.f32).f32[0] >= 0.70711) ? (v39 = *(a8 + 64) >= a13) : (v39 = 0), v39))
  {
    v40 = vaddq_f32(v120, v37);
    v41 = *a4;
    v41.i32[3] = 0;
    v42 = vdupq_laneq_s32(*a4, 3).u64[0];
    v43 = vmulq_n_f32(v40, vmla_f32(0xBF000000BF000000, v42, v42).f32[0]);
    v43.i32[3] = 0;
    v44 = vextq_s8(v41, v41, 8uLL).u64[0];
    v45 = vmls_f32(vmul_f32(*&vextq_s8(v40, v40, 4uLL), *a4->i8), vext_s8(*a4->i8, v44, 4uLL), *v40.f32);
    *v46.f32 = vext_s8(v45, vmls_f32(vmul_f32(*v40.f32, v44), *a4->i8, *&vextq_s8(v40, v40, 8uLL)), 4uLL);
    v46.i64[1] = v45.u32[0];
    v47 = vmlaq_laneq_f32(v43, v46, *a4, 3);
    v47.i64[1] = vextq_s8(v47, v47, 8uLL).u32[0];
    v48 = vmulq_f32(v40, v41);
    v48.i64[0] = vpaddq_f32(v48, v48).u64[0];
    v49 = vmlaq_n_f32(v47, v41, vpadd_f32(*v48.f32, *v48.f32).f32[0]);
    v50 = vaddq_f32(v49, v49);
    v50.i32[3] = 0;
    v51 = vmulq_f32(v50, v50);
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
    v55 = vbsl_s8(vdup_lane_s32(vceqz_f32(v52), 0), v52, vmul_f32(v52, v53));
    v56 = vrecpe_f32(v55);
    v57 = 4;
    do
    {
      v56 = vmul_f32(v56, vrecps_f32(v55, v56));
      --v57;
    }

    while (v57);
    v58 = vmulq_n_f32(v50, v56.f32[0]);
    v58.i32[3] = 0;
    v125[0] = v58;
    physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(a8, a12, v125, a4, &v121);
    return 1;
  }

  else
  {
    v59 = *(a1 + 8);
    v60 = *(a2 + 8);
    physx::Gu::getPCMConvexData(v59, a14, v125);
    physx::Gu::getPCMConvexData(v60, a15, v124);
    if (a14)
    {
      v61 = 1;
      v62 = &unk_1F5D216F0;
    }

    else
    {
      v61 = 0;
      v62 = &unk_1F5D21740;
    }

    v129[5] = v59 + 3;
    v129[6] = v59 + 6;
    v130 = v61;
    v129[4] = a3;
    v129[0] = v62;
    v131 = v59;
    if (a15)
    {
      v63 = 1;
      v64 = &unk_1F5D216F0;
    }

    else
    {
      v63 = 0;
      v64 = &unk_1F5D21740;
    }

    v126[5] = v60 + 3;
    v126[6] = v60 + 6;
    v127 = v63;
    v126[4] = a4;
    v126[0] = v64;
    v128 = v60;
    v123 = 0;
    v35 = physx::Gu::generateFullContactManifold(v125, v124, v129, v126, a12, &v123, &v121, (a7 + 32), v59[1].f32[0], v60[1].f32[0], *&a11, a7, (a7 + 16), v36);
    if (v35)
    {
      if (v123)
      {
        physx::Gu::PersistentContactManifold::addBatchManifoldContacts(a8, a12, v123, a11);
        v65 = *(a8 + 80);
        v66 = *(v65 + 32);
        v67 = *(a8 + 64);
        v68 = v66;
        if (v67 >= 2)
        {
          v69 = v67 - 1;
          v70 = (v65 + 80);
          v68 = v66;
          do
          {
            v71 = *v70;
            v70 += 3;
            v68 = vaddq_f32(v68, v71);
            --v69;
          }

          while (v69);
        }

        v68.i32[3] = 0;
        v72 = vmulq_f32(v68, v68);
        v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
        v66.i32[3] = 0;
        v73 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v72.f32, *v72.f32), 0x3400000034000000), 0)), 0x1FuLL)), v68, v66);
        v74 = *a4;
        v74.i32[3] = 0;
        v75 = vdupq_laneq_s32(*a4, 3).u64[0];
        v76 = vmulq_n_f32(v73, vmla_f32(0xBF000000BF000000, v75, v75).f32[0]);
        v76.i32[3] = 0;
        v77 = vextq_s8(v74, v74, 8uLL).u64[0];
        v78 = vextq_s8(v73, v73, 8uLL).u64[0];
        v79 = vmls_f32(vmul_f32(*a4->i8, vext_s8(*v73.f32, v78, 4uLL)), vext_s8(*a4->i8, v77, 4uLL), *v73.f32);
        *v80.f32 = vext_s8(v79, vmls_f32(vmul_f32(v77, *v73.f32), *a4->i8, v78), 4uLL);
        v80.i64[1] = v79.u32[0];
        v81 = vmlaq_laneq_f32(v76, v80, *a4, 3);
        v81.i64[1] = vextq_s8(v81, v81, 8uLL).u32[0];
        v82 = vmulq_f32(v74, v73);
        v82.i64[0] = vpaddq_f32(v82, v82).u64[0];
        v83 = vmlaq_n_f32(v81, v74, vpadd_f32(*v82.f32, *v82.f32).f32[0]);
        v84 = vaddq_f32(v83, v83);
        v84.i32[3] = 0;
        v85 = vmulq_f32(v84, v84);
        v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
        v86 = vpadd_f32(*v85.f32, *v85.f32);
        v87 = vrsqrte_f32(v86);
        v88 = 4;
        do
        {
          v87 = vmul_f32(v87, vrsqrts_f32(vmul_f32(v87, v87), v86));
          --v88;
        }

        while (v88);
        v89 = vbsl_s8(vdup_lane_s32(vceqz_f32(v86), 0), v86, vmul_f32(v86, v87));
        v90 = vrecpe_f32(v89);
        v91 = 4;
        do
        {
          v90 = vmul_f32(v90, vrecps_f32(v89, v90));
          --v91;
        }

        while (v91);
LABEL_48:
        v117 = vmulq_n_f32(v84, v90.f32[0]);
        v117.i32[3] = 0;
        v122 = v117;
        physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(a8, a12, &v122, a4, &v121);
        return v35;
      }

      if ((v36 & 1) == 0)
      {
        v92 = *(a8 + 80);
        v93 = *(v92 + 32);
        v94 = *(a8 + 64);
        v95 = v93;
        if (v94 >= 2)
        {
          v96 = v94 - 1;
          v97 = (v92 + 80);
          v95 = v93;
          do
          {
            v98 = *v97;
            v97 += 3;
            v95 = vaddq_f32(v95, v98);
            --v96;
          }

          while (v96);
        }

        v95.i32[3] = 0;
        v99 = vmulq_f32(v95, v95);
        v99.i64[0] = vpaddq_f32(v99, v99).u64[0];
        v93.i32[3] = 0;
        v100 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v99.f32, *v99.f32), 0x3400000034000000), 0)), 0x1FuLL)), v95, v93);
        v101 = *a4;
        v101.i32[3] = 0;
        v102 = vdupq_laneq_s32(*a4, 3).u64[0];
        v103 = vmulq_n_f32(v100, vmla_f32(0xBF000000BF000000, v102, v102).f32[0]);
        v103.i32[3] = 0;
        v104 = vextq_s8(v101, v101, 8uLL).u64[0];
        v105 = vextq_s8(v100, v100, 8uLL).u64[0];
        v106 = vmls_f32(vmul_f32(*a4->i8, vext_s8(*v100.f32, v105, 4uLL)), vext_s8(*a4->i8, v104, 4uLL), *v100.f32);
        *v107.f32 = vext_s8(v106, vmls_f32(vmul_f32(v104, *v100.f32), *a4->i8, v105), 4uLL);
        v107.i64[1] = v106.u32[0];
        v108 = vmlaq_laneq_f32(v103, v107, *a4, 3);
        v108.i64[1] = vextq_s8(v108, v108, 8uLL).u32[0];
        v109 = vmulq_f32(v101, v100);
        v109.i64[0] = vpaddq_f32(v109, v109).u64[0];
        v110 = vmlaq_n_f32(v108, v101, vpadd_f32(*v109.f32, *v109.f32).f32[0]);
        v84 = vaddq_f32(v110, v110);
        v84.i32[3] = 0;
        v111 = vmulq_f32(v84, v84);
        v111.i64[0] = vpaddq_f32(v111, v111).u64[0];
        v112 = vpadd_f32(*v111.f32, *v111.f32);
        v113 = vrsqrte_f32(v112);
        v114 = 4;
        do
        {
          v113 = vmul_f32(v113, vrsqrts_f32(vmul_f32(v113, v113), v112));
          --v114;
        }

        while (v114);
        v115 = vbsl_s8(vdup_lane_s32(vceqz_f32(v112), 0), v112, vmul_f32(v112, v113));
        v90 = vrecpe_f32(v115);
        v116 = 4;
        do
        {
          v90 = vmul_f32(v90, vrecps_f32(v115, v90));
          --v116;
        }

        while (v116);
        goto LABEL_48;
      }
    }
  }

  return v35;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, float32x4_t *a6, float32x4_t a7, float32x2_t a8, double a9, float32x4_t a10, int8x8_t a11)
{
  v12 = a3;
  v346 = *MEMORY[0x1E69E9840];
  v16 = a1->i64[1];
  v17 = (v16 + 20);
  v18 = vld1_dup_f32(v17);
  v19 = *(a2 + 8);
  v20 = &v19[1].f32[1];
  v21 = vld1_dup_f32(v20);
  v22 = vmin_f32(v18, v21);
  v23 = vdup_n_s32(0x3DCCCCCDu);
  v24 = vmul_f32(v22, v23);
  v22.i32[0] = *(v16 + 16);
  v23.i32[0] = v19[1].i32[0];
  a10.i32[0] = -*(v16 + 32);
  a11.i32[0] = -v19[2].u8[0];
  v25 = vadd_f32(vand_s8(*a10.f32, v22), vand_s8(a11, v23));
  v329 = 0uLL;
  v328 = 0;
  v26 = *a5;
  __asm { FMOV            V10.2S, #1.0 }

  if (!*a5)
  {
    v59 = vmulq_f32(a7, a7);
    v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
    v51 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v59.f32, *v59.f32)), 0)), a7, xmmword_1E3047670);
    v329 = v51;
    v60 = vmulq_f32(v51, v51);
    v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
    v61 = vpadd_f32(*v60.f32, *v60.f32);
    v62 = vrsqrte_f32(v61);
    v63 = 4;
    do
    {
      v62 = vmul_f32(v62, vrsqrts_f32(vmul_f32(v62, v62), v61));
      --v63;
    }

    while (v63);
    v64 = vbsl_s8(vdup_lane_s32(vceqz_f32(v61), 0), v61, vmul_f32(v61, v62));
    v65 = vrecpe_f32(v64);
    v66 = 4;
    do
    {
      *a10.f32 = vrecps_f32(v64, v65);
      v65 = vmul_f32(v65, *a10.f32);
      --v66;
    }

    while (v66);
    v67 = vmulq_n_f32(v51, v65.f32[0]);
    v67.i32[3] = 0;
    v324 = v67;
    v68 = vneg_f32(0x80000000800000);
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70 = 0uLL;
    goto LABEL_52;
  }

  v32 = 0;
  v33 = a1[1].i64[0];
  v34 = *(v16 + 160);
  v35 = v19[10].i64[0];
  v36 = v19[3];
  v37 = v19[4];
  v38 = -1;
  a10 = v19[5];
  do
  {
    v39 = a3[v32];
    *(&v334 + v32) = v39;
    v40 = a4[v32];
    *(&v331 + v32) = v40;
    v41 = *(v34 + 12 * v39);
    v42 = vmulq_n_f32(*v33, v41.f32[0]);
    v42.i32[3] = 0;
    v43 = vmulq_lane_f32(v33[1], *v41.f32, 1);
    v43.i32[3] = 0;
    v44 = vmulq_laneq_f32(v33[2], v41, 2);
    v44.i32[3] = 0;
    v45 = vaddq_f32(v33[3], vaddq_f32(vaddq_f32(v42, v43), v44));
    v46 = *(v35 + 12 * v40);
    v47 = vmulq_n_f32(v36, v46.f32[0]);
    v47.i32[3] = 0;
    v48 = vmulq_lane_f32(v37, *v46.f32, 1);
    v48.i32[3] = 0;
    v49 = vmulq_laneq_f32(a10, v46, 2);
    v49.i32[3] = 0;
    v50 = vaddq_f32(v49, vaddq_f32(v47, v48));
    v51 = vsubq_f32(v45, v50);
    *(&v340 + v32) = v45;
    *(&v337 + v32) = v50;
    *(&v343 + v32) = v51;
    ++v38;
    ++v32;
  }

  while (v26 != v32);
  v328 = v26;
  if (v38 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v343, &v340, &v337, &v334, &v331, &v328);
    goto LABEL_47;
  }

  if (v38 != 2)
  {
    if (v38 != 1)
    {
      goto LABEL_47;
    }

    v51 = v343;
    v52 = vsubq_f32(v344, v343);
    v53 = vmulq_f32(v52, v52);
    v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
    v54 = vpadd_f32(*v53.f32, *v53.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v54), 0), *v343.f32).u32[0] != -1)
    {
      v55 = vnegq_f32(v343);
      v55.i32[3] = 0;
      v56 = vmulq_f32(v55, v52);
      a10 = vpaddq_f32(v56, v56);
      *a10.f32 = vpadd_f32(*a10.f32, *a10.f32);
      v57 = vrecpe_f32(v54);
      v58 = 4;
      do
      {
        v57 = vmul_f32(v57, vrecps_f32(v54, v57));
        --v58;
      }

      while (v58);
      v51 = vmlaq_n_f32(v343, v52, vmax_f32(vmin_f32(vmul_f32(*a10.f32, v57), _D10), 0).f32[0]);
LABEL_31:
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v328 = 1;
    goto LABEL_47;
  }

  v328 = 3;
  v51 = v343;
  a10 = vsubq_f32(v344, v343);
  v71 = vsubq_f32(v345[0], v343);
  v73 = vmls_f32(vmul_f32(*a10.f32, *&vextq_s8(v71, v71, 4uLL)), *&vextq_s8(a10, a10, 4uLL), *v71.f32);
  *v72.f32 = vext_s8(v73, vmls_f32(vmul_f32(*&vextq_s8(a10, a10, 8uLL), *v71.f32), *a10.f32, *&vextq_s8(v71, v71, 8uLL)), 4uLL);
  v73.i32[1] = 0;
  v74 = vpadd_f32(vmul_f32(*v72.f32, *v72.f32), vmul_f32(v73.u32[0], v73.u32[0]));
  v75 = vpadd_f32(v74, v74);
  if (v75.f32[0] <= 0.00000011921)
  {
    v328 = 2;
    v114 = vmulq_f32(a10, a10);
    v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
    v115 = vpadd_f32(*v114.f32, *v114.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v115), 0), *v343.f32).u32[0] != -1)
    {
      v116 = vnegq_f32(v343);
      v116.i32[3] = 0;
      v117 = vmulq_f32(v116, a10);
      v117.i64[0] = vpaddq_f32(v117, v117).u64[0];
      v118 = vpadd_f32(*v117.f32, *v117.f32);
      v119 = vrecpe_f32(v115);
      v120 = 4;
      do
      {
        v119 = vmul_f32(v119, vrecps_f32(v115, v119));
        --v120;
      }

      while (v120);
      v51 = vmlaq_n_f32(v343, a10, vmax_f32(vmin_f32(vmul_f32(v118, v119), _D10), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v72.u32[2] = v73;
  v76 = vextq_s8(v344, v344, 8uLL).u64[0];
  v77 = vextq_s8(v345[0], v345[0], 8uLL).u64[0];
  v78 = vextq_s8(v345[0], v345[0], 4uLL).u64[0];
  v79 = vextq_s8(v344, v344, 4uLL).u64[0];
  v80 = vmls_f32(vmul_f32(*v344.f32, v78), v79, *v345[0].f32);
  *v81.f32 = vext_s8(v80, vmls_f32(vmul_f32(v76, *v345[0].f32), *v344.f32, v77), 4uLL);
  v81.i64[1] = v80.u32[0];
  v82 = vextq_s8(v343, v343, 8uLL).u64[0];
  v83 = vextq_s8(v343, v343, 4uLL).u64[0];
  v84 = vmls_f32(vmul_f32(v83, *v345[0].f32), v78, *v343.f32);
  *v85.f32 = vext_s8(v84, vmls_f32(vmul_f32(*v343.f32, v77), *v345[0].f32, v82), 4uLL);
  v85.i64[1] = v84.u32[0];
  v86 = vmls_f32(vmul_f32(*v343.f32, v79), v83, *v344.f32);
  *v87.f32 = vext_s8(v86, vmls_f32(vmul_f32(v82, *v344.f32), *v343.f32, v76), 4uLL);
  v87.i64[1] = v86.u32[0];
  v88 = vmulq_f32(v81, v72);
  v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
  v89 = vpadd_f32(*v88.f32, *v88.f32);
  v90 = vmulq_f32(v85, v72);
  v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
  v91 = vpadd_f32(*v90.f32, *v90.f32);
  v92 = vmulq_f32(v87, v72);
  v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
  v93 = vpadd_f32(*v92.f32, *v92.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v91), vcgez_f32(v89)), vcgez_f32(v93)), 0), *v343.f32).u32[0] == -1)
  {
    v121 = vmulq_f32(v343, v72);
    v122 = vextq_s8(v121, v121, 8uLL).u64[0];
    v123 = vrecpe_f32(v75);
    v124 = 4;
    do
    {
      v123 = vmul_f32(v123, vrecps_f32(v75, v123));
      --v124;
    }

    while (v124);
    v125 = vpadd_f32(*v121.i8, v122);
    v51 = vmulq_n_f32(v72, vmul_f32(v123, vpadd_f32(v125, v125)).f32[0]);
    v51.i32[3] = 0;
    goto LABEL_47;
  }

  v94 = vnegq_f32(v343);
  v94.i32[3] = 0;
  v95 = vnegq_f32(v344);
  v95.i32[3] = 0;
  v96 = vmulq_f32(v94, a10);
  v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
  v97 = vpadd_f32(*v96.f32, *v96.f32);
  v98 = vmulq_f32(a10, v95);
  v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
  v99 = vpadd_f32(*v98.f32, *v98.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v93), vand_s8(vclez_f32(v99), vcgez_f32(v97))), 0), *v343.f32).u32[0] == -1)
  {
    v126 = vsub_f32(v97, v99);
    v127 = vrecpe_f32(v126);
    v128 = 4;
    do
    {
      v127 = vmul_f32(v127, vrecps_f32(v126, v127));
      --v128;
    }

    while (v128);
    v112 = 0;
    v51 = vmlaq_n_f32(v343, a10, vmul_f32(v97, vbsl_s8(vcgt_f32(vabs_f32(v126), 0x3400000034000000), v127, 0)).f32[0]);
    v111 = 2;
    v113 = &v332;
    v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
  }

  else
  {
    v100 = vnegq_f32(v345[0]);
    v100.i32[3] = 0;
    v101 = vmulq_f32(v95, v71);
    v101.i64[0] = vpaddq_f32(v101, v101).u64[0];
    v102 = vpadd_f32(*v101.f32, *v101.f32);
    v103 = vmulq_f32(a10, v100);
    v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
    v104 = vpadd_f32(*v103.f32, *v103.f32);
    v105 = vmulq_f32(v71, v100);
    v105.i64[0] = vpaddq_f32(v105, v105).u64[0];
    v106 = vpadd_f32(*v105.f32, *v105.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v102, v99), vcge_f32(v104, v106)), vclez_f32(v89)), 0), *v343.f32).u32[0] == -1)
    {
      v133 = vsub_f32(v102, v99);
      v134 = vadd_f32(v133, vsub_f32(v104, v106));
      v135 = vrecpe_f32(v134);
      v136 = 4;
      do
      {
        v135 = vmul_f32(v135, vrecps_f32(v134, v135));
        --v136;
      }

      while (v136);
      v137 = vmlaq_n_f32(v344, vsubq_f32(v345[0], v344), vmul_f32(v133, vbsl_s8(vcgt_f32(vabs_f32(v134), 0x3400000034000000), v135, 0)).f32[0]);
      v111 = 2;
      v112 = 1;
      v129 = &v336;
      v113 = &v333;
      v137.i64[1] = vextq_s8(v137, v137, 8uLL).u32[0];
      v131 = v342;
      v130 = v339;
      v132 = v345;
      v51 = v137;
      goto LABEL_46;
    }

    v107 = vmulq_f32(v94, v71);
    v108 = vpaddq_f32(v107, v107);
    *v108.i8 = vpadd_f32(*v108.i8, *v108.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v91), vand_s8(vclez_f32(v106), vcgez_f32(*v108.i8))), 0), *v343.f32).u32[0] == -1)
    {
      v138 = vsub_f32(*v108.i8, v106);
      v139 = vrecpe_f32(v138);
      v140 = 4;
      do
      {
        v139 = vmul_f32(v139, vrecps_f32(v138, v139));
        --v140;
      }

      while (v140);
      v112 = 0;
      v51 = vmlaq_n_f32(v343, v71, vmul_f32(*v108.i8, vbsl_s8(vcgt_f32(vabs_f32(v138), 0x3400000034000000), v139, 0)).f32[0]);
      v111 = 2;
      v129 = &v336;
      v113 = &v333;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
      v131 = v342;
      v130 = v339;
      v132 = v345;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v108.i8), vclez_f32(v97)), 0), *v343.f32).u32[0] == -1)
    {
      v112 = 0;
      v111 = 1;
      v113 = &v332;
    }

    else
    {
      *v108.i8 = vcge_f32(v99, v102);
      *v51.f32 = vdup_lane_s16(vand_s8(*v108.i8, vcgez_f32(v99)), 0);
      *v51.f32 = vuzp1_s8(*v51.f32, *v51.f32);
      v108.i32[0] = -1;
      v109 = v51.i32[0];
      v110 = vdupq_lane_s32(*&vceqq_s32(v51, v108), 0);
      v111 = 1;
      if (v109 == -1)
      {
        v112 = 1;
      }

      else
      {
        v112 = 2;
      }

      v113 = &v332;
      v51 = vbslq_s8(v110, v344, v345[0]);
    }
  }

  v130 = &v338;
  v129 = &v335;
  v131 = &v341;
  v132 = &v344;
LABEL_46:
  v141 = *(&v343 + v112);
  v142 = *v132;
  a10 = *(&v340 + v112);
  v143 = *v131;
  v144 = *(&v337 + v112);
  v145 = *v130;
  v146 = *(&v334 + v112);
  v147 = *v129;
  v148 = *(&v331 + v112);
  v149 = *v113;
  v343 = v141;
  v344 = v142;
  v340 = a10;
  v341 = v143;
  v337 = v144;
  v338 = v145;
  v334 = v146;
  v335 = v147;
  v331 = v148;
  v332 = v149;
  v328 = v111;
LABEL_47:
  v329 = v51;
  v150 = vmulq_f32(v51, v51);
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
  v68 = vbsl_s8(vdup_lane_s32(vceqz_f32(v151), 0), v151, vmul_f32(v151, v152));
  v154 = vrecpe_f32(v68);
  v155 = 4;
  do
  {
    *a10.f32 = vrecps_f32(v68, v154);
    v154 = vmul_f32(v154, *a10.f32);
    --v155;
  }

  while (v155);
  v156 = vmulq_n_f32(v51, v154.f32[0]);
  v156.i32[3] = 0;
  v324 = v156;
  v69 = vdupq_lane_s32(vcgt_f32(v68, v24), 0);
  v70 = v51;
LABEL_52:
  v157 = vadd_f32(v25, a8);
  a10.i32[0] = -1;
  v319 = a10;
  v158 = v68;
  v159.i64[0] = -1;
  v159.i64[1] = -1;
  while (1)
  {
    v160 = v51;
    v161.i64[0] = -1;
    v161.i64[1] = -1;
    *v161.i8 = vmovn_s32(vceqq_s32(v69, v161));
    if (vuzp1_s8(*v161.i8, *v161.i8).u32[0] != -1)
    {
      break;
    }

    v322 = v160;
    v162 = vnegq_f32(v160);
    v162.i32[3] = 0;
    v325 = v68;
    v327 = v162;
    *v163.i64 = physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>::support(a1, &v327, &v334 + v328);
    v323 = v163;
    *v164.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v329, &v331 + v328);
    v165 = v164;
    v51 = vsubq_f32(v323, v164);
    v166 = vmulq_f32(v324, v51);
    v166.i64[0] = vpaddq_f32(v166, v166).u64[0];
    v167 = vpadd_f32(*v166.f32, *v166.f32);
    if ((vmvn_s8(vcgt_f32(v167, v157)).u8[0] & 1) == 0)
    {
      if (v12)
      {
        v273 = v328;
        *a5 = v328;
        if (v273)
        {
          v274 = &v331;
          v275 = &v334;
          do
          {
            v276 = *v275++;
            *v12++ = v276;
            v277 = *v274++;
            *a4++ = v277;
            --v273;
          }

          while (v273);
        }
      }

      return 0;
    }

    v168 = v325;
    v169 = v328;
    if (v167.f32[0] > (0.99977 * v325.f32[0]))
    {
      v278 = a6;
      if (!v12)
      {
        goto LABEL_116;
      }

      *a5 = v328;
      if (v169)
      {
        v279 = &v331;
        v280 = &v334;
        v281 = v169;
        do
        {
          v282 = *v280++;
          *v12++ = v282;
          v283 = *v279++;
          *a4++ = v283;
          --v281;
        }

        while (v281);
LABEL_116:
        a6[2] = v324;
        switch(v169)
        {
          case 3:
            v327.i64[0] = 0;
            v330 = 0;
            physx::Gu::barycentricCoordinates(&v329, &v343, &v344, v345, &v327, &v330);
            v168 = v325;
            v299 = vmulq_n_f32(vsubq_f32(v341, v340), v327.f32[0]);
            v299.i32[3] = 0;
            v300 = vmulq_n_f32(vsubq_f32(v342[0], v340), v330.f32[0]);
            v300.i32[3] = 0;
            v284 = vaddq_f32(v340, vaddq_f32(v299, v300));
            v301 = vmulq_n_f32(vsubq_f32(v338, v337), v327.f32[0]);
            v301.i32[3] = 0;
            v302 = vmulq_n_f32(vsubq_f32(v339[0], v337), v330.f32[0]);
            v302.i32[3] = 0;
            v285 = vaddq_f32(v337, vaddq_f32(v301, v302));
            break;
          case 2:
            v291 = vsubq_f32(v343, v329);
            v292 = vsubq_f32(vsubq_f32(v344, v329), v291);
            v293 = vmulq_f32(v292, v292);
            v293.i64[0] = vpaddq_f32(v293, v293).u64[0];
            v294 = vpadd_f32(*v293.f32, *v293.f32);
            v295 = vrecpe_f32(v294);
            v296 = 4;
            do
            {
              v295 = vmul_f32(v295, vrecps_f32(v294, v295));
              --v296;
            }

            while (v296);
            v297 = vnegq_f32(v291);
            v297.i32[3] = 0;
            v298 = vmulq_f32(v297, v292);
            v298.i64[0] = vpaddq_f32(v298, v298).u64[0];
            v297.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v294), v295, 0), vpadd_f32(*v298.f32, *v298.f32)).u32[0];
            v284 = vmlaq_n_f32(v340, vsubq_f32(v341, v340), v297.f32[0]);
            v284.i64[1] = vextq_s8(v284, v284, 8uLL).u32[0];
            v285 = vmlaq_n_f32(v337, vsubq_f32(v338, v337), v297.f32[0]);
            v285.i64[1] = vextq_s8(v285, v285, 8uLL).u32[0];
            break;
          case 1:
            v284 = v340;
            result = 2;
            v285 = v337;
LABEL_142:
            *v278 = v284;
            v278[1] = v285;
            *v278[4].f32 = v168;
            return result;
          default:
LABEL_129:
            result = 2;
            v284 = 0uLL;
            v285 = 0uLL;
            goto LABEL_142;
        }

        result = 2;
        goto LABEL_142;
      }

      a6[2] = v324;
      goto LABEL_129;
    }

    *(&v340 + v328) = v323;
    *(&v337 + v169) = v165;
    v328 = v169 + 1;
    *(&v343 + v169) = v51;
    switch(v169)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v343, &v340, &v337, &v334, &v331, &v328);
        v168 = v325;
        break;
      case 2:
        v51 = v343;
        v178 = vsubq_f32(v344, v343);
        v179 = vsubq_f32(v345[0], v343);
        v181 = vmls_f32(vmul_f32(*v178.f32, *&vextq_s8(v179, v179, 4uLL)), *&vextq_s8(v178, v178, 4uLL), *v179.f32);
        *v180.f32 = vext_s8(v181, vmls_f32(vmul_f32(*&vextq_s8(v178, v178, 8uLL), *v179.f32), *v178.f32, *&vextq_s8(v179, v179, 8uLL)), 4uLL);
        v181.i32[1] = 0;
        v328 = 3;
        v182 = vpadd_f32(vmul_f32(*v180.f32, *v180.f32), vmul_f32(v181.u32[0], v181.u32[0]));
        v183 = vpadd_f32(v182, v182);
        if (v183.f32[0] <= 0.00000011921)
        {
          v328 = 2;
          v222 = vmulq_f32(v178, v178);
          v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
          v223 = vpadd_f32(*v222.f32, *v222.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v223), 0), *v343.f32).u32[0] == -1)
          {
LABEL_79:
            v328 = 1;
            break;
          }

          v224 = vnegq_f32(v343);
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
          v51 = vmlaq_n_f32(v343, v178, vmax_f32(vmin_f32(vmul_f32(v226, v227), _D10), 0).f32[0]);
          goto LABEL_78;
        }

        *&v180.u32[2] = v181;
        v184 = vextq_s8(v344, v344, 8uLL).u64[0];
        v185 = vextq_s8(v345[0], v345[0], 8uLL).u64[0];
        v186 = vextq_s8(v345[0], v345[0], 4uLL).u64[0];
        v187 = vextq_s8(v344, v344, 4uLL).u64[0];
        v188 = vmls_f32(vmul_f32(*v344.f32, v186), v187, *v345[0].f32);
        *v189.f32 = vext_s8(v188, vmls_f32(vmul_f32(v184, *v345[0].f32), *v344.f32, v185), 4uLL);
        v189.i64[1] = v188.u32[0];
        v190 = vextq_s8(v343, v343, 8uLL).u64[0];
        v191 = vextq_s8(v343, v343, 4uLL).u64[0];
        v192 = vmls_f32(vmul_f32(v191, *v345[0].f32), v186, *v343.f32);
        *v193.f32 = vext_s8(v192, vmls_f32(vmul_f32(*v343.f32, v185), *v345[0].f32, v190), 4uLL);
        v193.i64[1] = v192.u32[0];
        v194 = vmls_f32(vmul_f32(*v343.f32, v187), v191, *v344.f32);
        *v195.f32 = vext_s8(v194, vmls_f32(vmul_f32(v190, *v344.f32), *v343.f32, v184), 4uLL);
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
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v199), vcgez_f32(v197)), vcgez_f32(v201)), 0), *v343.f32).u32[0] != -1)
        {
          v202 = vnegq_f32(v343);
          v202.i32[3] = 0;
          v203 = vnegq_f32(v344);
          v203.i32[3] = 0;
          v204 = vmulq_f32(v202, v178);
          v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
          v205 = vpadd_f32(*v204.f32, *v204.f32);
          v206 = vmulq_f32(v178, v203);
          v206.i64[0] = vpaddq_f32(v206, v206).u64[0];
          v207 = vpadd_f32(*v206.f32, *v206.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v201), vand_s8(vclez_f32(v207), vcgez_f32(v205))), 0), *v343.f32).u32[0] == -1)
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
            v51 = vmlaq_n_f32(v343, v178, vmul_f32(v205, vbsl_s8(vcgt_f32(vabs_f32(v234), 0x3400000034000000), v235, 0)).f32[0]);
            v219 = 2;
            v221 = &v332;
            v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
            goto LABEL_86;
          }

          v208 = vnegq_f32(v345[0]);
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
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v210, v207), vcge_f32(v212, v214)), vclez_f32(v197)), 0), *v343.f32).u32[0] == -1)
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
            v245 = vmlaq_n_f32(v344, vsubq_f32(v345[0], v344), vmul_f32(v241, vbsl_s8(vcgt_f32(vabs_f32(v242), 0x3400000034000000), v243, 0)).f32[0]);
            v245.i64[1] = vextq_s8(v245, v245, 8uLL).u32[0];
            v219 = 2;
            v51 = v245;
            v220 = 1;
            v221 = &v333;
          }

          else
          {
            v215 = vmulq_f32(v202, v179);
            v215.i64[0] = vpaddq_f32(v215, v215).u64[0];
            v216 = vpadd_f32(*v215.f32, *v215.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v199), vand_s8(vclez_f32(v214), vcgez_f32(v216))), 0), *v343.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v216), vclez_f32(v205)), 0), *v343.f32).u32[0] == -1)
              {
                v220 = 0;
                v219 = 1;
                v221 = &v332;
              }

              else
              {
                *v51.f32 = vdup_lane_s16(vand_s8(vcge_f32(v207, v210), vcgez_f32(v207)), 0);
                *v51.f32 = vuzp1_s8(*v51.f32, *v51.f32);
                v217 = v51.i32[0];
                v218 = vdupq_lane_s32(*&vceqq_s32(v51, v319), 0);
                v219 = 1;
                if (v217 == -1)
                {
                  v220 = 1;
                }

                else
                {
                  v220 = 2;
                }

                v221 = &v332;
                v51 = vbslq_s8(v218, v344, v345[0]);
              }

LABEL_86:
              v238 = &v338;
              v237 = &v335;
              v239 = &v341;
              v240 = &v344;
LABEL_94:
              v249 = *(&v343 + v220);
              v250 = *v240;
              v251 = *(&v340 + v220);
              v252 = *v239;
              v253 = *(&v337 + v220);
              v254 = *v238;
              v255 = *(&v334 + v220);
              v256 = *v237;
              v257 = *(&v331 + v220);
              v258 = *v221;
              v343 = v249;
              v344 = v250;
              v340 = v251;
              v341 = v252;
              v337 = v253;
              v338 = v254;
              v334 = v255;
              v335 = v256;
              v331 = v257;
              v332 = v258;
              v328 = v219;
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
            v51 = vmlaq_n_f32(v343, v179, vmul_f32(v216, vbsl_s8(vcgt_f32(vabs_f32(v246), 0x3400000034000000), v247, 0)).f32[0]);
            v219 = 2;
            v221 = &v333;
            v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
          }

          v238 = v339;
          v237 = &v336;
          v239 = v342;
          v240 = v345;
          goto LABEL_94;
        }

        v229 = vmulq_f32(v343, v180);
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
        v51 = vmulq_n_f32(v180, vmul_f32(v231, vpadd_f32(v233, v233)).f32[0]);
        v51.i32[3] = 0;
        break;
      case 1:
        v51 = v343;
        v170 = vsubq_f32(v344, v343);
        v171 = vmulq_f32(v170, v170);
        v171.i64[0] = vpaddq_f32(v171, v171).u64[0];
        v172 = vpadd_f32(*v171.f32, *v171.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v172), 0), *v343.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v173 = vnegq_f32(v343);
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
        v51 = vmlaq_n_f32(v343, v170, vmax_f32(vmin_f32(vmul_f32(v175, v176), _D10), 0).f32[0]);
LABEL_78:
        v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
        break;
    }

    v329 = v51;
    v259 = vmulq_f32(v51, v51);
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
    v68 = vbsl_s8(vdup_lane_s32(vceqz_f32(v260), 0), v260, vmul_f32(v260, v261));
    v263 = vrecpe_f32(v68);
    v264 = 4;
    do
    {
      v263 = vmul_f32(v263, vrecps_f32(v68, v263));
      --v264;
    }

    while (v264);
    v265 = vmulq_n_f32(v51, v263.f32[0]);
    v265.i32[3] = 0;
    v324 = v265;
    *v265.f32 = vcgt_f32(v168, v68);
    v159 = vdupq_lane_s32(*v265.f32, 0);
    v69 = vdupq_lane_s32(vand_s8(vcgt_f32(v68, v24), *v265.f32), 0);
    v158 = v168;
    v70 = v322;
  }

  v266 = vmovn_s32(vceqzq_s32(v159));
  v267 = v328;
  if (vuzp1_s8(v266, v266).u32[0] == -1)
  {
    v278 = a6;
    if (v12)
    {
      v286 = v328 - 1;
      *a5 = v328 - 1;
      if (v267 == 1)
      {
LABEL_127:
        v284 = v340;
        v285 = v337;
        goto LABEL_139;
      }

      v287 = &v331;
      v288 = &v334;
      do
      {
        v289 = *v288++;
        *v12++ = v289;
        v290 = *v287++;
        *a4++ = v290;
        --v286;
      }

      while (v286);
    }

    v329 = v70;
    if (v267 == 3)
    {
      v327.i64[0] = 0;
      v330 = 0;
      v326 = v70;
      physx::Gu::barycentricCoordinates(&v329, &v343, &v344, v345, &v327, &v330);
      v311 = vmulq_n_f32(vsubq_f32(v341, v340), v327.f32[0]);
      v311.i32[3] = 0;
      v312 = vmulq_n_f32(vsubq_f32(v342[0], v340), v330.f32[0]);
      v312.i32[3] = 0;
      v313 = vaddq_f32(v311, v312);
      v314 = vmulq_n_f32(vsubq_f32(v338, v337), v327.f32[0]);
      v314.i32[3] = 0;
      v284 = vaddq_f32(v340, v313);
      v315 = vmulq_n_f32(vsubq_f32(v339[0], v337), v330.f32[0]);
      v70 = v326;
      v315.i32[3] = 0;
      v285 = vaddq_f32(v337, vaddq_f32(v314, v315));
    }

    else
    {
      if (v267 == 2)
      {
        v303 = vsubq_f32(v343, v70);
        v304 = vsubq_f32(vsubq_f32(v344, v70), v303);
        v305 = vmulq_f32(v304, v304);
        v305.i64[0] = vpaddq_f32(v305, v305).u64[0];
        v306 = vpadd_f32(*v305.f32, *v305.f32);
        v307 = vrecpe_f32(v306);
        v308 = 4;
        do
        {
          v307 = vmul_f32(v307, vrecps_f32(v306, v307));
          --v308;
        }

        while (v308);
        v309 = vnegq_f32(v303);
        v309.i32[3] = 0;
        v310 = vmulq_f32(v309, v304);
        v310.i64[0] = vpaddq_f32(v310, v310).u64[0];
        v309.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v306), v307, 0), vpadd_f32(*v310.f32, *v310.f32)).u32[0];
        v284 = vmlaq_n_f32(v340, vsubq_f32(v341, v340), v309.f32[0]);
        v284.i64[1] = vextq_s8(v284, v284, 8uLL).u32[0];
        v285 = vmlaq_n_f32(v337, vsubq_f32(v338, v337), v309.f32[0]);
        v285.i64[1] = vextq_s8(v285, v285, 8uLL).u32[0];
        goto LABEL_139;
      }

      v284 = 0uLL;
      v285 = 0uLL;
      if (v267 == 1)
      {
        goto LABEL_127;
      }
    }

LABEL_139:
    v316 = vrecpe_f32(v158);
    v317 = 4;
    do
    {
      v316 = vmul_f32(v316, vrecps_f32(v158, v316));
      --v317;
    }

    while (v317);
    v318 = vmulq_n_f32(v70, v316.f32[0]);
    v318.i32[3] = 0;
    a6[2] = v318;
    a6[3] = v324;
    result = 4;
    v168 = v158;
    goto LABEL_142;
  }

  if (v12)
  {
    *a5 = v328;
    if (v267)
    {
      v268 = &v331;
      v269 = &v334;
      do
      {
        v270 = *v269++;
        *v12++ = v270;
        v271 = *v268++;
        *a4++ = v271;
        --v267;
      }

      while (v267);
    }
  }

  return 5;
}

double physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>::supportPoint(uint64_t a1, int a2)
{
  v2 = *(*(*(a1 + 8) + 160) + 12 * a2);
  v3 = *(a1 + 16);
  v4 = vmulq_n_f32(*v3, v2.f32[0]);
  v4.i32[3] = 0;
  v5 = vmulq_lane_f32(v3[1], *v2.f32, 1);
  v5.i32[3] = 0;
  v6 = vmulq_laneq_f32(v3[2], v2, 2);
  v6.i32[3] = 0;
  *&result = vaddq_f32(v3[3], vaddq_f32(vaddq_f32(v4, v5), v6)).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>::support(float32x4_t *a1, float32x2_t *a2)
{
  v2 = a1->i64[1];
  v3 = a1[1].i64[0];
  v4 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v4.i32[3] = 0;
  v5 = vmulq_lane_f32(a1[3], *a2, 1);
  v5.i32[3] = 0;
  v6 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v6.i32[3] = 0;
  v12 = vaddq_f32(vaddq_f32(v4, v5), v6);
  v7 = *(*(v2 + 160) + 12 * physx::Gu::ConvexHullV::supportVertexIndex(v2, &v12));
  v8 = vmulq_n_f32(*v3, v7.f32[0]);
  v8.i32[3] = 0;
  v9 = vmulq_lane_f32(v3[1], *v7.f32, 1);
  v9.i32[3] = 0;
  v10 = vmulq_laneq_f32(v3[2], v7, 2);
  v10.i32[3] = 0;
  *&result = vaddq_f32(v3[3], vaddq_f32(vaddq_f32(v8, v9), v10)).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>::support(float32x4_t *a1, float32x2_t *a2, _DWORD *a3)
{
  v4 = a1->i64[1];
  v5 = a1[1].i64[0];
  v6 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v6.i32[3] = 0;
  v7 = vmulq_lane_f32(a1[3], *a2, 1);
  v7.i32[3] = 0;
  v8 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v8.i32[3] = 0;
  v15 = vaddq_f32(vaddq_f32(v6, v7), v8);
  v9 = physx::Gu::ConvexHullV::supportVertexIndex(v4, &v15);
  *a3 = v9;
  v10 = *(*(v4 + 160) + 12 * v9);
  v11 = vmulq_n_f32(*v5, v10.f32[0]);
  v11.i32[3] = 0;
  v12 = vmulq_lane_f32(v5[1], *v10.f32, 1);
  v12.i32[3] = 0;
  v13 = vmulq_laneq_f32(v5[2], v10, 2);
  v13.i32[3] = 0;
  *&result = vaddq_f32(v5[3], vaddq_f32(vaddq_f32(v11, v12), v13)).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>::getCenter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = vmulq_n_f32(*v1, COERCE_FLOAT(*v2->f32));
  v3.i32[3] = 0;
  v4 = vmulq_lane_f32(v1[1], *v2, 1);
  v4.i32[3] = 0;
  v5 = vmulq_laneq_f32(v1[2], *v2->f32, 2);
  v5.i32[3] = 0;
  *&result = vaddq_f32(v1[3], vaddq_f32(vaddq_f32(v3, v4), v5)).u64[0];
  return result;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, float32x4_t *a6, float32x4_t a7, float32x2_t a8, double a9, float32x4_t a10, int8x8_t a11)
{
  v349 = *MEMORY[0x1E69E9840];
  v16 = a1->i64[1];
  v17 = &v16[1].f32[1];
  v18 = vld1_dup_f32(v17);
  v19 = *(a2 + 8);
  v20 = (v19 + 20);
  v21 = vld1_dup_f32(v20);
  v22 = vmin_f32(v18, v21);
  v23 = vdup_n_s32(0x3DCCCCCDu);
  v24 = vmul_f32(v22, v23);
  v22.i32[0] = v16[1].i32[0];
  v23.i32[0] = *(v19 + 16);
  a10.i32[0] = -v16[2].u8[0];
  a11.i32[0] = -*(v19 + 32);
  v25 = vadd_f32(vand_s8(*a10.f32, v22), vand_s8(a11, v23));
  v332 = 0uLL;
  v331 = 0;
  v26 = *a5;
  __asm { FMOV            V10.2S, #1.0 }

  if (!*a5)
  {
    v60 = vmulq_f32(a7, a7);
    v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
    v52 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v60.f32, *v60.f32)), 0)), a7, xmmword_1E3047670);
    v332 = v52;
    v61 = vmulq_f32(v52, v52);
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
      *a10.f32 = vrecps_f32(v65, v66);
      v66 = vmul_f32(v66, *a10.f32);
      --v67;
    }

    while (v67);
    v68 = vmulq_n_f32(v52, v66.f32[0]);
    v68.i32[3] = 0;
    v327 = v68;
    v69 = vneg_f32(0x80000000800000);
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v71 = 0uLL;
    goto LABEL_52;
  }

  v32 = 0;
  v33 = a1[1].i64[0];
  v34 = v16[10].i64[0];
  v35 = v16[3];
  v36 = v16[4];
  a10 = v16[5];
  v37 = -1;
  v38 = *(v19 + 160);
  do
  {
    v39 = a3[v32];
    *(&v337 + v32) = v39;
    v40 = a4[v32];
    *(&v334 + v32) = v40;
    v41 = *(v34 + 12 * v39);
    v42 = vmulq_n_f32(v35, v41.f32[0]);
    v42.i32[3] = 0;
    v43 = vmulq_lane_f32(v36, *v41.f32, 1);
    v43.i32[3] = 0;
    v44 = vmulq_laneq_f32(a10, v41, 2);
    v44.i32[3] = 0;
    v45 = vaddq_f32(v44, vaddq_f32(v42, v43));
    v46 = vmulq_n_f32(*v33, v45.f32[0]);
    v46.i32[3] = 0;
    v47 = vmulq_lane_f32(v33[1], *v45.f32, 1);
    v47.i32[3] = 0;
    v48 = vmulq_laneq_f32(v33[2], v45, 2);
    v48.i32[3] = 0;
    v49 = vaddq_f32(v48, vaddq_f32(v46, v47));
    v50 = *(v38 + 12 * v40);
    v50.i32[3] = 0;
    v51 = vaddq_f32(v33[3], v49);
    v52 = vsubq_f32(v51, v50);
    *(&v343 + v32) = v51;
    *(&v340 + v32) = v50;
    *(&v346 + v32) = v52;
    ++v37;
    ++v32;
  }

  while (v26 != v32);
  v331 = v26;
  if (v37 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v346, &v343, &v340, &v337, &v334, &v331);
    goto LABEL_47;
  }

  if (v37 != 2)
  {
    if (v37 != 1)
    {
      goto LABEL_47;
    }

    v52 = v346;
    v53 = vsubq_f32(v347, v346);
    v54 = vmulq_f32(v53, v53);
    v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
    v55 = vpadd_f32(*v54.f32, *v54.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v55), 0), *v346.f32).u32[0] != -1)
    {
      v56 = vnegq_f32(v346);
      v56.i32[3] = 0;
      v57 = vmulq_f32(v56, v53);
      a10 = vpaddq_f32(v57, v57);
      *a10.f32 = vpadd_f32(*a10.f32, *a10.f32);
      v58 = vrecpe_f32(v55);
      v59 = 4;
      do
      {
        v58 = vmul_f32(v58, vrecps_f32(v55, v58));
        --v59;
      }

      while (v59);
      v52 = vmlaq_n_f32(v346, v53, vmax_f32(vmin_f32(vmul_f32(*a10.f32, v58), _D10), 0).f32[0]);
LABEL_31:
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v331 = 1;
    goto LABEL_47;
  }

  v331 = 3;
  v52 = v346;
  a10 = vsubq_f32(v347, v346);
  v72 = vsubq_f32(v348[0], v346);
  v74 = vmls_f32(vmul_f32(*a10.f32, *&vextq_s8(v72, v72, 4uLL)), *&vextq_s8(a10, a10, 4uLL), *v72.f32);
  *v73.f32 = vext_s8(v74, vmls_f32(vmul_f32(*&vextq_s8(a10, a10, 8uLL), *v72.f32), *a10.f32, *&vextq_s8(v72, v72, 8uLL)), 4uLL);
  v74.i32[1] = 0;
  v75 = vpadd_f32(vmul_f32(*v73.f32, *v73.f32), vmul_f32(v74.u32[0], v74.u32[0]));
  v76 = vpadd_f32(v75, v75);
  if (v76.f32[0] <= 0.00000011921)
  {
    v331 = 2;
    v115 = vmulq_f32(a10, a10);
    v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
    v116 = vpadd_f32(*v115.f32, *v115.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v116), 0), *v346.f32).u32[0] != -1)
    {
      v117 = vnegq_f32(v346);
      v117.i32[3] = 0;
      v118 = vmulq_f32(v117, a10);
      v118.i64[0] = vpaddq_f32(v118, v118).u64[0];
      v119 = vpadd_f32(*v118.f32, *v118.f32);
      v120 = vrecpe_f32(v116);
      v121 = 4;
      do
      {
        v120 = vmul_f32(v120, vrecps_f32(v116, v120));
        --v121;
      }

      while (v121);
      v52 = vmlaq_n_f32(v346, a10, vmax_f32(vmin_f32(vmul_f32(v119, v120), _D10), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v73.u32[2] = v74;
  v77 = vextq_s8(v347, v347, 8uLL).u64[0];
  v78 = vextq_s8(v348[0], v348[0], 8uLL).u64[0];
  v79 = vextq_s8(v348[0], v348[0], 4uLL).u64[0];
  v80 = vextq_s8(v347, v347, 4uLL).u64[0];
  v81 = vmls_f32(vmul_f32(*v347.f32, v79), v80, *v348[0].f32);
  *v82.f32 = vext_s8(v81, vmls_f32(vmul_f32(v77, *v348[0].f32), *v347.f32, v78), 4uLL);
  v82.i64[1] = v81.u32[0];
  v83 = vextq_s8(v346, v346, 8uLL).u64[0];
  v84 = vextq_s8(v346, v346, 4uLL).u64[0];
  v85 = vmls_f32(vmul_f32(v84, *v348[0].f32), v79, *v346.f32);
  *v86.f32 = vext_s8(v85, vmls_f32(vmul_f32(*v346.f32, v78), *v348[0].f32, v83), 4uLL);
  v86.i64[1] = v85.u32[0];
  v87 = vmls_f32(vmul_f32(*v346.f32, v80), v84, *v347.f32);
  *v88.f32 = vext_s8(v87, vmls_f32(vmul_f32(v83, *v347.f32), *v346.f32, v77), 4uLL);
  v88.i64[1] = v87.u32[0];
  v89 = vmulq_f32(v82, v73);
  v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
  v90 = vpadd_f32(*v89.f32, *v89.f32);
  v91 = vmulq_f32(v86, v73);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  v92 = vpadd_f32(*v91.f32, *v91.f32);
  v93 = vmulq_f32(v88, v73);
  v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
  v94 = vpadd_f32(*v93.f32, *v93.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v92), vcgez_f32(v90)), vcgez_f32(v94)), 0), *v346.f32).u32[0] == -1)
  {
    v122 = vmulq_f32(v346, v73);
    v123 = vextq_s8(v122, v122, 8uLL).u64[0];
    v124 = vrecpe_f32(v76);
    v125 = 4;
    do
    {
      v124 = vmul_f32(v124, vrecps_f32(v76, v124));
      --v125;
    }

    while (v125);
    v126 = vpadd_f32(*v122.i8, v123);
    v52 = vmulq_n_f32(v73, vmul_f32(v124, vpadd_f32(v126, v126)).f32[0]);
    v52.i32[3] = 0;
    goto LABEL_47;
  }

  v95 = vnegq_f32(v346);
  v95.i32[3] = 0;
  v96 = vnegq_f32(v347);
  v96.i32[3] = 0;
  v97 = vmulq_f32(v95, a10);
  v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
  v98 = vpadd_f32(*v97.f32, *v97.f32);
  v99 = vmulq_f32(a10, v96);
  v99.i64[0] = vpaddq_f32(v99, v99).u64[0];
  v100 = vpadd_f32(*v99.f32, *v99.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v94), vand_s8(vclez_f32(v100), vcgez_f32(v98))), 0), *v346.f32).u32[0] == -1)
  {
    v127 = vsub_f32(v98, v100);
    v128 = vrecpe_f32(v127);
    v129 = 4;
    do
    {
      v128 = vmul_f32(v128, vrecps_f32(v127, v128));
      --v129;
    }

    while (v129);
    v113 = 0;
    v52 = vmlaq_n_f32(v346, a10, vmul_f32(v98, vbsl_s8(vcgt_f32(vabs_f32(v127), 0x3400000034000000), v128, 0)).f32[0]);
    v112 = 2;
    v114 = &v335;
    v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
  }

  else
  {
    v101 = vnegq_f32(v348[0]);
    v101.i32[3] = 0;
    v102 = vmulq_f32(v96, v72);
    v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
    v103 = vpadd_f32(*v102.f32, *v102.f32);
    v104 = vmulq_f32(a10, v101);
    v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
    v105 = vpadd_f32(*v104.f32, *v104.f32);
    v106 = vmulq_f32(v72, v101);
    v106.i64[0] = vpaddq_f32(v106, v106).u64[0];
    v107 = vpadd_f32(*v106.f32, *v106.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v103, v100), vcge_f32(v105, v107)), vclez_f32(v90)), 0), *v346.f32).u32[0] == -1)
    {
      v134 = vsub_f32(v103, v100);
      v135 = vadd_f32(v134, vsub_f32(v105, v107));
      v136 = vrecpe_f32(v135);
      v137 = 4;
      do
      {
        v136 = vmul_f32(v136, vrecps_f32(v135, v136));
        --v137;
      }

      while (v137);
      v138 = vmlaq_n_f32(v347, vsubq_f32(v348[0], v347), vmul_f32(v134, vbsl_s8(vcgt_f32(vabs_f32(v135), 0x3400000034000000), v136, 0)).f32[0]);
      v112 = 2;
      v113 = 1;
      v130 = &v339;
      v114 = &v336;
      v138.i64[1] = vextq_s8(v138, v138, 8uLL).u32[0];
      v132 = v345;
      v131 = v342;
      v133 = v348;
      v52 = v138;
      goto LABEL_46;
    }

    v108 = vmulq_f32(v95, v72);
    v109 = vpaddq_f32(v108, v108);
    *v109.i8 = vpadd_f32(*v109.i8, *v109.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v92), vand_s8(vclez_f32(v107), vcgez_f32(*v109.i8))), 0), *v346.f32).u32[0] == -1)
    {
      v139 = vsub_f32(*v109.i8, v107);
      v140 = vrecpe_f32(v139);
      v141 = 4;
      do
      {
        v140 = vmul_f32(v140, vrecps_f32(v139, v140));
        --v141;
      }

      while (v141);
      v113 = 0;
      v52 = vmlaq_n_f32(v346, v72, vmul_f32(*v109.i8, vbsl_s8(vcgt_f32(vabs_f32(v139), 0x3400000034000000), v140, 0)).f32[0]);
      v112 = 2;
      v130 = &v339;
      v114 = &v336;
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
      v132 = v345;
      v131 = v342;
      v133 = v348;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v109.i8), vclez_f32(v98)), 0), *v346.f32).u32[0] == -1)
    {
      v113 = 0;
      v112 = 1;
      v114 = &v335;
    }

    else
    {
      *v109.i8 = vcge_f32(v100, v103);
      *v52.f32 = vdup_lane_s16(vand_s8(*v109.i8, vcgez_f32(v100)), 0);
      *v52.f32 = vuzp1_s8(*v52.f32, *v52.f32);
      v109.i32[0] = -1;
      v110 = v52.i32[0];
      v111 = vdupq_lane_s32(*&vceqq_s32(v52, v109), 0);
      v112 = 1;
      if (v110 == -1)
      {
        v113 = 1;
      }

      else
      {
        v113 = 2;
      }

      v114 = &v335;
      v52 = vbslq_s8(v111, v347, v348[0]);
    }
  }

  v131 = &v341;
  v130 = &v338;
  v132 = &v344;
  v133 = &v347;
LABEL_46:
  v142 = *(&v346 + v113);
  v143 = *v133;
  a10 = *(&v343 + v113);
  v144 = *v132;
  v145 = *(&v340 + v113);
  v146 = *v131;
  v147 = *(&v337 + v113);
  v148 = *v130;
  v149 = *(&v334 + v113);
  v150 = *v114;
  v346 = v142;
  v347 = v143;
  v343 = a10;
  v344 = v144;
  v340 = v145;
  v341 = v146;
  v337 = v147;
  v338 = v148;
  v334 = v149;
  v335 = v150;
  v331 = v112;
LABEL_47:
  v332 = v52;
  v151 = vmulq_f32(v52, v52);
  v151.i64[0] = vpaddq_f32(v151, v151).u64[0];
  v152 = vpadd_f32(*v151.f32, *v151.f32);
  v153 = vrsqrte_f32(v152);
  v154 = 4;
  do
  {
    v153 = vmul_f32(v153, vrsqrts_f32(vmul_f32(v153, v153), v152));
    --v154;
  }

  while (v154);
  v69 = vbsl_s8(vdup_lane_s32(vceqz_f32(v152), 0), v152, vmul_f32(v152, v153));
  v155 = vrecpe_f32(v69);
  v156 = 4;
  do
  {
    *a10.f32 = vrecps_f32(v69, v155);
    v155 = vmul_f32(v155, *a10.f32);
    --v156;
  }

  while (v156);
  v157 = vmulq_n_f32(v52, v155.f32[0]);
  v157.i32[3] = 0;
  v327 = v157;
  v70 = vdupq_lane_s32(vcgt_f32(v69, v24), 0);
  v71 = v52;
LABEL_52:
  v158 = vadd_f32(v25, a8);
  a10.i32[0] = -1;
  v322 = a10;
  v159.i64[0] = -1;
  v159.i64[1] = -1;
  v160 = v69;
  while (1)
  {
    v161 = v52;
    v162.i64[0] = -1;
    v162.i64[1] = -1;
    *v162.i8 = vmovn_s32(vceqq_s32(v70, v162));
    if (vuzp1_s8(*v162.i8, *v162.i8).u32[0] != -1)
    {
      break;
    }

    v325 = v161;
    v163 = vnegq_f32(v161);
    v163.i32[3] = 0;
    v328 = v69;
    v330 = v163;
    *v164.i64 = physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::support(a1, &v330, &v337 + v331);
    v326 = v164;
    v165 = v331;
    v166 = *(a2 + 8);
    v167 = physx::Gu::ConvexHullV::supportVertexIndex(v166, &v332);
    *(&v334 + v165) = v167;
    v168 = *(*(v166 + 160) + 12 * v167);
    v168.i32[3] = 0;
    v52 = vsubq_f32(v326, v168);
    v169 = vmulq_f32(v327, v52);
    v169.i64[0] = vpaddq_f32(v169, v169).u64[0];
    v170 = vpadd_f32(*v169.f32, *v169.f32);
    if ((vmvn_s8(vcgt_f32(v170, v158)).u8[0] & 1) == 0)
    {
      if (a3)
      {
        v276 = v331;
        *a5 = v331;
        if (v276)
        {
          v277 = &v334;
          v278 = &v337;
          do
          {
            v279 = *v278++;
            *a3++ = v279;
            v280 = *v277++;
            *a4++ = v280;
            --v276;
          }

          while (v276);
        }
      }

      return 0;
    }

    v171 = v328;
    v172 = v331;
    if (v170.f32[0] > (0.99977 * v328.f32[0]))
    {
      if (!a3)
      {
        goto LABEL_116;
      }

      *a5 = v331;
      if (v172)
      {
        v281 = &v334;
        v282 = &v337;
        v283 = v172;
        do
        {
          v284 = *v282++;
          *a3++ = v284;
          v285 = *v281++;
          *a4++ = v285;
          --v283;
        }

        while (v283);
LABEL_116:
        v286 = a6;
        a6[2] = v327;
        switch(v172)
        {
          case 3:
            v330.i64[0] = 0;
            v333 = 0;
            physx::Gu::barycentricCoordinates(&v332, &v346, &v347, v348, &v330, &v333);
            v171 = v328;
            v302 = vmulq_n_f32(vsubq_f32(v344, v343), v330.f32[0]);
            v302.i32[3] = 0;
            v303 = vmulq_n_f32(vsubq_f32(v345[0], v343), v333.f32[0]);
            v303.i32[3] = 0;
            v287 = vaddq_f32(v343, vaddq_f32(v302, v303));
            v304 = vmulq_n_f32(vsubq_f32(v341, v340), v330.f32[0]);
            v304.i32[3] = 0;
            v305 = vmulq_n_f32(vsubq_f32(v342[0], v340), v333.f32[0]);
            v305.i32[3] = 0;
            v288 = vaddq_f32(v340, vaddq_f32(v304, v305));
            break;
          case 2:
            v294 = vsubq_f32(v346, v332);
            v295 = vsubq_f32(vsubq_f32(v347, v332), v294);
            v296 = vmulq_f32(v295, v295);
            v296.i64[0] = vpaddq_f32(v296, v296).u64[0];
            v297 = vpadd_f32(*v296.f32, *v296.f32);
            v298 = vrecpe_f32(v297);
            v299 = 4;
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
            v287 = vmlaq_n_f32(v343, vsubq_f32(v344, v343), v300.f32[0]);
            v287.i64[1] = vextq_s8(v287, v287, 8uLL).u32[0];
            v288 = vmlaq_n_f32(v340, vsubq_f32(v341, v340), v300.f32[0]);
            v288.i64[1] = vextq_s8(v288, v288, 8uLL).u32[0];
            break;
          case 1:
            v287 = v343;
            result = 2;
            v288 = v340;
LABEL_142:
            *v286 = v287;
            v286[1] = v288;
            *v286[4].f32 = v171;
            return result;
          default:
LABEL_129:
            result = 2;
            v287 = 0uLL;
            v288 = 0uLL;
            goto LABEL_142;
        }

        result = 2;
        goto LABEL_142;
      }

      v286 = a6;
      a6[2] = v327;
      goto LABEL_129;
    }

    *(&v343 + v331) = v326;
    *(&v340 + v172) = v168;
    v331 = v172 + 1;
    *(&v346 + v172) = v52;
    switch(v172)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v346, &v343, &v340, &v337, &v334, &v331);
        v171 = v328;
        break;
      case 2:
        v52 = v346;
        v181 = vsubq_f32(v347, v346);
        v182 = vsubq_f32(v348[0], v346);
        v184 = vmls_f32(vmul_f32(*v181.f32, *&vextq_s8(v182, v182, 4uLL)), *&vextq_s8(v181, v181, 4uLL), *v182.f32);
        *v183.f32 = vext_s8(v184, vmls_f32(vmul_f32(*&vextq_s8(v181, v181, 8uLL), *v182.f32), *v181.f32, *&vextq_s8(v182, v182, 8uLL)), 4uLL);
        v184.i32[1] = 0;
        v331 = 3;
        v185 = vpadd_f32(vmul_f32(*v183.f32, *v183.f32), vmul_f32(v184.u32[0], v184.u32[0]));
        v186 = vpadd_f32(v185, v185);
        if (v186.f32[0] <= 0.00000011921)
        {
          v331 = 2;
          v225 = vmulq_f32(v181, v181);
          v225.i64[0] = vpaddq_f32(v225, v225).u64[0];
          v226 = vpadd_f32(*v225.f32, *v225.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v226), 0), *v346.f32).u32[0] == -1)
          {
LABEL_79:
            v331 = 1;
            break;
          }

          v227 = vnegq_f32(v346);
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
          v52 = vmlaq_n_f32(v346, v181, vmax_f32(vmin_f32(vmul_f32(v229, v230), _D10), 0).f32[0]);
          goto LABEL_78;
        }

        *&v183.u32[2] = v184;
        v187 = vextq_s8(v347, v347, 8uLL).u64[0];
        v188 = vextq_s8(v348[0], v348[0], 8uLL).u64[0];
        v189 = vextq_s8(v348[0], v348[0], 4uLL).u64[0];
        v190 = vextq_s8(v347, v347, 4uLL).u64[0];
        v191 = vmls_f32(vmul_f32(*v347.f32, v189), v190, *v348[0].f32);
        *v192.f32 = vext_s8(v191, vmls_f32(vmul_f32(v187, *v348[0].f32), *v347.f32, v188), 4uLL);
        v192.i64[1] = v191.u32[0];
        v193 = vextq_s8(v346, v346, 8uLL).u64[0];
        v194 = vextq_s8(v346, v346, 4uLL).u64[0];
        v195 = vmls_f32(vmul_f32(v194, *v348[0].f32), v189, *v346.f32);
        *v196.f32 = vext_s8(v195, vmls_f32(vmul_f32(*v346.f32, v188), *v348[0].f32, v193), 4uLL);
        v196.i64[1] = v195.u32[0];
        v197 = vmls_f32(vmul_f32(*v346.f32, v190), v194, *v347.f32);
        *v198.f32 = vext_s8(v197, vmls_f32(vmul_f32(v193, *v347.f32), *v346.f32, v187), 4uLL);
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
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v202), vcgez_f32(v200)), vcgez_f32(v204)), 0), *v346.f32).u32[0] != -1)
        {
          v205 = vnegq_f32(v346);
          v205.i32[3] = 0;
          v206 = vnegq_f32(v347);
          v206.i32[3] = 0;
          v207 = vmulq_f32(v205, v181);
          v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
          v208 = vpadd_f32(*v207.f32, *v207.f32);
          v209 = vmulq_f32(v181, v206);
          v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
          v210 = vpadd_f32(*v209.f32, *v209.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v204), vand_s8(vclez_f32(v210), vcgez_f32(v208))), 0), *v346.f32).u32[0] == -1)
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
            v52 = vmlaq_n_f32(v346, v181, vmul_f32(v208, vbsl_s8(vcgt_f32(vabs_f32(v237), 0x3400000034000000), v238, 0)).f32[0]);
            v222 = 2;
            v224 = &v335;
            v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
            goto LABEL_86;
          }

          v211 = vnegq_f32(v348[0]);
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
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v213, v210), vcge_f32(v215, v217)), vclez_f32(v200)), 0), *v346.f32).u32[0] == -1)
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
            v248 = vmlaq_n_f32(v347, vsubq_f32(v348[0], v347), vmul_f32(v244, vbsl_s8(vcgt_f32(vabs_f32(v245), 0x3400000034000000), v246, 0)).f32[0]);
            v248.i64[1] = vextq_s8(v248, v248, 8uLL).u32[0];
            v222 = 2;
            v52 = v248;
            v223 = 1;
            v224 = &v336;
          }

          else
          {
            v218 = vmulq_f32(v205, v182);
            v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
            v219 = vpadd_f32(*v218.f32, *v218.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v202), vand_s8(vclez_f32(v217), vcgez_f32(v219))), 0), *v346.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v219), vclez_f32(v208)), 0), *v346.f32).u32[0] == -1)
              {
                v223 = 0;
                v222 = 1;
                v224 = &v335;
              }

              else
              {
                *v52.f32 = vdup_lane_s16(vand_s8(vcge_f32(v210, v213), vcgez_f32(v210)), 0);
                *v52.f32 = vuzp1_s8(*v52.f32, *v52.f32);
                v220 = v52.i32[0];
                v221 = vdupq_lane_s32(*&vceqq_s32(v52, v322), 0);
                v222 = 1;
                if (v220 == -1)
                {
                  v223 = 1;
                }

                else
                {
                  v223 = 2;
                }

                v224 = &v335;
                v52 = vbslq_s8(v221, v347, v348[0]);
              }

LABEL_86:
              v241 = &v341;
              v240 = &v338;
              v242 = &v344;
              v243 = &v347;
LABEL_94:
              v252 = *(&v346 + v223);
              v253 = *v243;
              v254 = *(&v343 + v223);
              v255 = *v242;
              v256 = *(&v340 + v223);
              v257 = *v241;
              v258 = *(&v337 + v223);
              v259 = *v240;
              v260 = *(&v334 + v223);
              v261 = *v224;
              v346 = v252;
              v347 = v253;
              v343 = v254;
              v344 = v255;
              v340 = v256;
              v341 = v257;
              v337 = v258;
              v338 = v259;
              v334 = v260;
              v335 = v261;
              v331 = v222;
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
            v52 = vmlaq_n_f32(v346, v182, vmul_f32(v219, vbsl_s8(vcgt_f32(vabs_f32(v249), 0x3400000034000000), v250, 0)).f32[0]);
            v222 = 2;
            v224 = &v336;
            v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
          }

          v241 = v342;
          v240 = &v339;
          v242 = v345;
          v243 = v348;
          goto LABEL_94;
        }

        v232 = vmulq_f32(v346, v183);
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
        v52 = vmulq_n_f32(v183, vmul_f32(v234, vpadd_f32(v236, v236)).f32[0]);
        v52.i32[3] = 0;
        break;
      case 1:
        v52 = v346;
        v173 = vsubq_f32(v347, v346);
        v174 = vmulq_f32(v173, v173);
        v174.i64[0] = vpaddq_f32(v174, v174).u64[0];
        v175 = vpadd_f32(*v174.f32, *v174.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v175), 0), *v346.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v176 = vnegq_f32(v346);
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
        v52 = vmlaq_n_f32(v346, v173, vmax_f32(vmin_f32(vmul_f32(v178, v179), _D10), 0).f32[0]);
LABEL_78:
        v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
        break;
    }

    v332 = v52;
    v262 = vmulq_f32(v52, v52);
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
    v69 = vbsl_s8(vdup_lane_s32(vceqz_f32(v263), 0), v263, vmul_f32(v263, v264));
    v266 = vrecpe_f32(v69);
    v267 = 4;
    do
    {
      v266 = vmul_f32(v266, vrecps_f32(v69, v266));
      --v267;
    }

    while (v267);
    v268 = vmulq_n_f32(v52, v266.f32[0]);
    v268.i32[3] = 0;
    v327 = v268;
    *v268.f32 = vcgt_f32(v171, v69);
    v159 = vdupq_lane_s32(*v268.f32, 0);
    v70 = vdupq_lane_s32(vand_s8(vcgt_f32(v69, v24), *v268.f32), 0);
    v160 = v171;
    v71 = v325;
  }

  v269 = vmovn_s32(vceqzq_s32(v159));
  v270 = v331;
  if (vuzp1_s8(v269, v269).u32[0] == -1)
  {
    if (a3)
    {
      v289 = v331 - 1;
      *a5 = v331 - 1;
      if (v270 == 1)
      {
LABEL_127:
        v287 = v343;
        v288 = v340;
        goto LABEL_139;
      }

      v290 = &v334;
      v291 = &v337;
      do
      {
        v292 = *v291++;
        *a3++ = v292;
        v293 = *v290++;
        *a4++ = v293;
        --v289;
      }

      while (v289);
    }

    v332 = v71;
    if (v270 == 3)
    {
      v330.i64[0] = 0;
      v333 = 0;
      v329 = v71;
      physx::Gu::barycentricCoordinates(&v332, &v346, &v347, v348, &v330, &v333);
      v314 = vmulq_n_f32(vsubq_f32(v344, v343), v330.f32[0]);
      v314.i32[3] = 0;
      v315 = vmulq_n_f32(vsubq_f32(v345[0], v343), v333.f32[0]);
      v315.i32[3] = 0;
      v316 = vaddq_f32(v314, v315);
      v317 = vmulq_n_f32(vsubq_f32(v341, v340), v330.f32[0]);
      v317.i32[3] = 0;
      v287 = vaddq_f32(v343, v316);
      v318 = vmulq_n_f32(vsubq_f32(v342[0], v340), v333.f32[0]);
      v71 = v329;
      v318.i32[3] = 0;
      v288 = vaddq_f32(v340, vaddq_f32(v317, v318));
    }

    else
    {
      if (v270 == 2)
      {
        v306 = vsubq_f32(v346, v71);
        v307 = vsubq_f32(vsubq_f32(v347, v71), v306);
        v308 = vmulq_f32(v307, v307);
        v308.i64[0] = vpaddq_f32(v308, v308).u64[0];
        v309 = vpadd_f32(*v308.f32, *v308.f32);
        v310 = vrecpe_f32(v309);
        v311 = 4;
        do
        {
          v310 = vmul_f32(v310, vrecps_f32(v309, v310));
          --v311;
        }

        while (v311);
        v312 = vnegq_f32(v306);
        v312.i32[3] = 0;
        v313 = vmulq_f32(v312, v307);
        v313.i64[0] = vpaddq_f32(v313, v313).u64[0];
        v312.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v309), v310, 0), vpadd_f32(*v313.f32, *v313.f32)).u32[0];
        v287 = vmlaq_n_f32(v343, vsubq_f32(v344, v343), v312.f32[0]);
        v287.i64[1] = vextq_s8(v287, v287, 8uLL).u32[0];
        v288 = vmlaq_n_f32(v340, vsubq_f32(v341, v340), v312.f32[0]);
        v288.i64[1] = vextq_s8(v288, v288, 8uLL).u32[0];
        goto LABEL_139;
      }

      v287 = 0uLL;
      v288 = 0uLL;
      if (v270 == 1)
      {
        goto LABEL_127;
      }
    }

LABEL_139:
    v319 = vrecpe_f32(v160);
    v320 = 4;
    do
    {
      v319 = vmul_f32(v319, vrecps_f32(v160, v319));
      --v320;
    }

    while (v320);
    v321 = vmulq_n_f32(v71, v319.f32[0]);
    v321.i32[3] = 0;
    v286 = a6;
    a6[2] = v321;
    a6[3] = v327;
    result = 4;
    v171 = v160;
    goto LABEL_142;
  }

  if (a3)
  {
    *a5 = v331;
    if (v270)
    {
      v271 = &v334;
      v272 = &v337;
      do
      {
        v273 = *v272++;
        *a3++ = v273;
        v274 = *v271++;
        *a4++ = v274;
        --v270;
      }

      while (v270);
    }
  }

  return 5;
}

uint64_t physx::Gu::PCMHeightfieldContactGenerationCallback<physx::PCMConvexVsHeightfieldContactGenerationCallback>::onEvent(uint64_t a1, unsigned int a2, unsigned int *a3, double a4, double a5, __n128 a6, double a7, double a8, __n128 a9)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a2 + 15 >= 0x10)
  {
    v11 = 0;
    v32 = (a2 + 15) >> 4;
    do
    {
      v58 = 0;
      if (a2 >= 0x10)
      {
        v12 = 16;
      }

      else
      {
        v12 = a2;
      }

      v34 = v11;
      v35 = a2;
      v33 = v12;
      if (a2)
      {
        v38 = v12;
        do
        {
          v36 = *a3;
          physx::Gu::HeightFieldUtil::getTriangle(*(a1 + 8), *(a1 + 16), &v48, v56, v55, *a3, 0, 0);
          a6.n128_f32[0] = *&v50 - *&v48;
          *&a8 = *(&v50 + 1) - *(&v48 + 1);
          *&a5 = *(&v52 + 1) - *(&v48 + 1);
          a9.n128_f32[0] = -((v51 - v49) * (*(&v52 + 1) - *(&v48 + 1)));
          v13 = ((*(&v50 + 1) - *(&v48 + 1)) * (v53 - v49)) - ((v51 - v49) * (*(&v52 + 1) - *(&v48 + 1)));
          *&a7 = -((*&v50 - *&v48) * (v53 - v49));
          v14 = ((v51 - v49) * (*&v52 - *&v48)) - ((*&v50 - *&v48) * (v53 - v49));
          v15 = ((*&v50 - *&v48) * (*(&v52 + 1) - *(&v48 + 1))) - ((*(&v50 + 1) - *(&v48 + 1)) * (*&v52 - *&v48));
          v16 = sqrtf(((v14 * v14) + (v13 * v13)) + (v15 * v15));
          v37 = a3 + 1;
          if (v16 > 0.0)
          {
            v17 = 1.0 / v16;
            v13 = v13 * v17;
            v14 = v14 * v17;
            v15 = v15 * v17;
          }

          v18 = 0;
          v19 = 0;
          --v38;
          do
          {
            v20 = v55[v18];
            if (v20 == -1)
            {
              if (*(a1 + 24) == 1)
              {
                v19 |= 8 << v18;
              }

              else
              {
                v19 |= 1 << v18;
              }
            }

            else
            {
              physx::Gu::HeightFieldUtil::getTriangle(*(a1 + 8), *(a1 + 16), &v39, v54, 0, v20, 0, 0);
              v21 = ((v43 - v40) * (v47 - v41)) - ((v44 - v41) * (v46 - v40));
              *&a5 = ((v44 - v41) * (v45 - v39)) - ((v42 - v39) * (v47 - v41));
              a6.n128_f32[0] = ((v42 - v39) * (v46 - v40)) - ((v43 - v40) * (v45 - v39));
              v22 = &v48 + 3 * byte_1E3117328[v18];
              a9.n128_f32[0] = v22[2] - v41;
              *&a8 = *&a5 * (v22[1] - v40);
              *&a7 = (*&a8 + (v21 * (*v22 - v39))) + (a6.n128_f32[0] * a9.n128_f32[0]);
              if (*&a7 < 0.0)
              {
                *&a7 = sqrtf(((*&a5 * *&a5) + (v21 * v21)) + (a6.n128_f32[0] * a6.n128_f32[0]));
                if (*&a7 > 0.0)
                {
                  *&a7 = 1.0 / *&a7;
                  v21 = v21 * *&a7;
                  *&a5 = *&a5 * *&a7;
                  a6.n128_f32[0] = a6.n128_f32[0] * *&a7;
                }

                v23 = ((v14 * *&a5) + (v21 * v13)) + (a6.n128_f32[0] * v15);
                v24 = 8 << v18;
                LODWORD(a5) = 1065302884;
                if (v23 >= 0.997)
                {
                  v24 = 0;
                }

                v19 |= v24;
              }
            }

            ++v18;
          }

          while (v18 != 3);
          v25 = v58++;
          v26 = &v57[3 * (3 * v25)];
          *v26 = v48;
          v26[2] = v49;
          LODWORD(v26) = 3 * v25 + 1;
          v27 = &v57[3 * v26];
          *v27 = v50;
          v27[2] = v51;
          v28 = v56[1];
          v57[(3 * v25) + 144] = v56[0];
          v29 = 3 * v25 + 2;
          v30 = &v57[3 * v29];
          HIDWORD(a4) = HIDWORD(v52);
          *v30 = v52;
          v57[v26 + 144] = v28;
          v57[v29 + 144] = v56[2];
          *&a4 = v53;
          v30[2] = v53;
          v57[v25 + 192] = v36;
          *(&v57[208] + v25) = v19;
          a3 = v37;
        }

        while (v38);
      }

      physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMConvexVsMeshContactGeneration>(a1 + 32, v57, a4, a5, a6, a7, a8, a9);
      a2 = v35 - v33;
      v11 = v34 + 1;
    }

    while (v34 + 1 != v32);
  }

  return 1;
}

float physx::Gu::PCMConvexVsMeshContactGeneration::PCMConvexVsMeshContactGeneration(unint64_t a1, void *a2, float32x2_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, float32x4_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, uint64_t a14)
{
  v15 = a1 + 4096;
  physx::Gu::PCMMeshContactGeneration::PCMMeshContactGeneration(a1, a2, a3, a4, a5, a6, a7, a10, a14);
  *(v16 + 4520) = 0;
  *&v17 = -1;
  *(&v17 + 1) = -1;
  *(v16 + 4488) = v17;
  *(v16 + 4504) = v17;
  *(v16 + 4456) = v17;
  *(v16 + 4472) = v17;
  *(v16 + 4424) = v17;
  *(v16 + 4440) = v17;
  *(v16 + 4392) = v17;
  *(v16 + 4408) = v17;
  *(v16 + 4544) = a8;
  *(v16 + 4552) = a9;
  *(v16 + 4560) = a11;
  *(v15 + 472) = a12;
  *(v15 + 473) = a13;
  v18 = *a8;
  v18.i64[1] = a8->u32[2];
  v19 = vsubq_f32(v18, *(v16 + 2416));
  v20 = vmulq_f32(*(v16 + 2368), v19);
  v20.i64[0] = vpaddq_f32(v20, v20).u64[0];
  v21 = vmulq_f32(v19, *(v16 + 2384));
  v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
  v22 = vmulq_f32(v19, *(v16 + 2400));
  v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
  LODWORD(result) = vpadd_f32(*v22.f32, *v22.f32).u32[0];
  *v20.f32 = vext_s8(vpadd_f32(*v20.f32, *v20.f32), vpadd_f32(*v21.f32, *v21.f32), 4uLL);
  v20.i64[1] = LODWORD(result);
  *(v16 + 4528) = v20;
  return result;
}

uint64_t physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMConvexVsMeshContactGeneration>(uint64_t a1, uint64_t a2, double a3, double a4, __n128 a5, double a6, double a7, __n128 a8)
{
  v8 = *(a2 + 848);
  if (v8)
  {
    v9 = a2;
    v11 = (a2 + 832);
    v12 = (a2 + 768);
    v13 = (a2 + 576);
    do
    {
      --v8;
      v15 = *v12++;
      v14 = v15;
      LOBYTE(v15) = *v11++;
      physx::Gu::PCMConvexVsMeshContactGeneration::processTriangle(a1, v9, v14, v15, v13, a3, a4, a5, a6, a7, a8);
      v9 += 9;
      v13 += 3;
    }

    while (v8);
  }

  return 1;
}

double physx::Gu::SupportLocalImpl<physx::Gu::TriangleV>::doSupport(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 64);
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

float32x2_t physx::Gu::SupportLocalImpl<physx::Gu::TriangleV>::doSupport(uint64_t a1, float32x4_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = *(a1 + 64);
  v5 = vmulq_f32(v4[3], *a2);
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  *v5.f32 = vpadd_f32(*v5.f32, *v5.f32);
  v6 = vmulq_f32(v4[4], *a2);
  v6.i64[0] = vpaddq_f32(v6, v6).u64[0];
  *v6.f32 = vpadd_f32(*v6.f32, *v6.f32);
  v7 = vmulq_f32(v4[5], *a2);
  v7.i64[0] = vpaddq_f32(v7, v7).u64[0];
  *v7.f32 = vpadd_f32(*v7.f32, *v7.f32);
  *a4 = vmax_f32(*v5.f32, vmax_f32(*v6.f32, *v7.f32));
  result = vmin_f32(*v5.f32, vmin_f32(*v6.f32, *v7.f32));
  *a3 = result;
  return result;
}

float physx::Gu::SupportLocalImpl<physx::Gu::TriangleV>::populateVerts(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, _OWORD *a5)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      v7 = a4 + 12 * v6;
      *&v8 = *v7;
      *(&v8 + 1) = *(v7 + 8);
      *a5++ = v8;
      --v5;
    }

    while (v5);
  }

  return *&v8;
}

uint64_t physx::shdfnd::Array<physx::Gu::SortedTriangle,physx::shdfnd::InlineAllocator<1024u,physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>>>::growAndPushBack(uint64_t result, _OWORD *a2)
{
  v3 = result;
  v4 = *(result + 1044);
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
    result = (16 * v5);
    if (result > 0x400 || (*(v3 + 1024) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 1024) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 1040);
  if (v7)
  {
    v8 = &v6[v7];
    v9 = *(v3 + 1032);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
    v12 = *(v3 + 1040);
  }

  else
  {
    v12 = 0;
  }

  v6[v12] = *a2;
  if ((*(v3 + 1044) & 0x80000000) == 0)
  {
    v13 = *(v3 + 1032);
    if (v13 == v3)
    {
      *(v3 + 1024) = 0;
    }

    else if (v13)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 1032) = v6;
  *(v3 + 1044) = v5;
  ++*(v3 + 1040);
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>::getName() [T = physx::Gu::SortedTriangle]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = *(*(v6 + 24) + 16);

    return v8(v6 + 24, v5, v7, a2, a3);
  }

  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

BOOL physx::Gu::PCMContactConvexMesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, float32x4_t *a12, uint64_t a13)
{
  v20 = MEMORY[0x1EEE9AC00](a1);
  v23 = v22;
  v190 = *MEMORY[0x1E69E9840];
  v24 = *v17;
  v25.i64[0] = v17[1].i64[0];
  v25.i64[1] = v17[1].u32[2];
  v26.i64[0] = v18[1].i64[0];
  v26.i64[1] = v18[1].u32[2];
  v27 = *v18;
  v173 = vdup_lane_s32(v21, 0);
  v172[0] = v24;
  v172[1] = v25;
  v171[0] = v27;
  v171[1] = v26;
  v28 = vnegq_f32(v27);
  v29 = v28;
  v29.i32[3] = 0;
  v30 = vsubq_f32(v25, v26);
  v31 = vdupq_laneq_s32(v27, 3).u64[0];
  v32 = vmulq_n_f32(v30, vmla_f32(0xBF000000BF000000, v31, v31).f32[0]);
  v32.i32[3] = 0;
  v33 = vextq_s8(v29, v29, 8uLL).u64[0];
  v34 = vext_s8(*v28.f32, v33, 4uLL);
  v35 = vmls_f32(vmul_f32(*v28.f32, *&vextq_s8(v30, v30, 4uLL)), v34, *v30.f32);
  *v36.f32 = vext_s8(v35, vmls_f32(vmul_f32(v33, *v30.f32), *v28.f32, *&vextq_s8(v30, v30, 8uLL)), 4uLL);
  v36.i64[1] = v35.u32[0];
  v37 = vmlaq_laneq_f32(v32, v36, v27, 3);
  v37.i64[1] = vextq_s8(v37, v37, 8uLL).u32[0];
  v38 = vmulq_f32(v29, v30);
  v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
  v39 = vmlaq_n_f32(v37, v29, vpadd_f32(*v38.f32, *v38.f32).f32[0]);
  v40 = vaddq_f32(v39, v39);
  v40.i32[3] = 0;
  v41 = v24;
  v41.i32[3] = 0;
  v42 = vmulq_f32(v41, v29);
  v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
  v43 = vsub_f32(vmul_f32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vpadd_f32(*v42.f32, *v42.f32));
  v44 = vmulq_laneq_f32(v29, v24, 3);
  v42.i64[0] = vextq_s8(v41, v41, 8uLL).u64[0];
  v45 = vmls_f32(vmul_f32(vext_s8(*v24.f32, *v42.f32, 4uLL), *v28.f32), v34, *v24.f32);
  *v24.f32 = vext_s8(v45, vmls_f32(vmul_f32(*v24.f32, v33), *v28.f32, *v42.f32), 4uLL);
  *&v24.u32[2] = v45;
  v46 = vaddq_f32(vaddq_f32(v44, vmulq_laneq_f32(v41, v27, 3)), v24);
  v47 = v46;
  v47.i32[3] = v43.i32[1];
  v48 = vabdq_f32(v40, a12[1]);
  *v48.i8 = vpmax_f32(*&vextq_s8(v48, v48, 8uLL), *v48.i8);
  v49 = vmulq_f32(v47, *a12);
  v49.i64[0] = vpaddq_f32(v49, v49).u64[0];
  if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v49.f32, *v49.f32)), vcgt_f32(vpmax_f32(*v48.i8, *v48.i8), vmul_f32(*&v20, vdup_n_s32(0x3E4CCCCDu)))), 0), *&v20).u32[0] == -1)
  {
    v170 = vmul_f32(*&v20, vdup_n_s32(0x3D4CCCCDu));
    a12[3].i8[14] = 0;
    *a12 = v47;
    a12[1] = v40;
    v83 = *(v16 + 48);
    v84 = v17->f32[0];
    v85 = v17->f32[1];
    v86 = v17->f32[2];
    v87 = v17->f32[3];
    v88 = v85 + v85;
    v89 = v86 + v86;
    v90 = v85 * (v85 + v85);
    v91 = v86 * (v86 + v86);
    v92 = (v84 + v84) * v85;
    v93 = (v84 + v84) * v86;
    v94 = (v84 + v84) * v87;
    v95 = v88 * v86;
    v96 = v88 * v87;
    v97 = v89 * v87;
    v167[0] = (1.0 - v90) - v91;
    v167[1] = v92 + v97;
    v98 = 1.0 - (v84 * (v84 + v84));
    v167[2] = v93 - v96;
    v167[3] = v92 - v97;
    v167[4] = v98 - v91;
    v167[5] = v95 + v94;
    v167[6] = v93 + v96;
    v167[7] = v95 - v94;
    v168 = v17[1].i64[0];
    v99 = v17[1].i32[2];
    v167[8] = v98 - v90;
    v169 = v99;
    v100 = v18->f32[0];
    v101 = v18->f32[1];
    v102 = v18->f32[2];
    v103 = v18->f32[3];
    v104 = v101 + v101;
    v105 = v102 + v102;
    v106 = v101 * (v101 + v101);
    v107 = v102 * (v102 + v102);
    v108 = (v100 + v100) * v101;
    v109 = (v100 + v100) * v102;
    v110 = (v100 + v100) * v103;
    v111 = v104 * v102;
    v112 = v104 * v103;
    v113 = v105 * v103;
    v164[0] = (1.0 - v106) - v107;
    v164[1] = v108 + v113;
    v114 = 1.0 - (v100 * (v100 + v100));
    v164[2] = v109 - v112;
    v164[3] = v108 - v113;
    v164[4] = v114 - v107;
    v164[5] = v111 + v110;
    v164[6] = v109 + v112;
    v164[7] = v111 - v110;
    v164[8] = v114 - v106;
    v165 = v18[1].i64[0];
    v166 = v18[1].i32[2];
    v115 = v13;
    v116 = v14;
    v117 = v19;
    physx::Gu::computeHullOBB(v163, v15, v167, v164, a9, a11, COERCE_DOUBLE(__PAIR64__(HIDWORD(v165), v21.u32[0])));
    v189 = 0x44000000000;
    v187 = 1;
    v188 = v186;
    v118 = *(v83 + 80);
    v174.i32[2] = 2;
    *&v175 = a9;
    *(&v175 + 1) = v118;
    LOBYTE(v176[0]) = a11;
    v177 = 0;
    v174.i64[0] = &unk_1F5D22EC8;
    v119 = physx::Gu::PCMConvexVsMeshContactGeneration::PCMConvexVsMeshContactGeneration(v178, &v173, &v170, v172, v171, a12, v23, v115, v116, v186, v117, a10, 1, a13);
    v185 = v163;
    (physx::Gu::gMidphaseBoxCBOverlapTable[*(v83 + 8) - 3])(v83, v163, &v174, 1, 1, v119);
    if (v177)
    {
      physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMConvexVsMeshContactGeneration>(v178, v176 + 4, v120, v121, v122, v123, v124, v125);
      v177 = 0;
    }

    physx::Gu::PCMConvexVsMeshContactGeneration::generateLastContacts(v178);
    v126 = v183;
    if (v183)
    {
      v127 = v184;
      if (v184 >= 2)
      {
        v128 = 0;
        v129 = -1;
        v130 = 1;
        do
        {
          v131 = v179[v130 - 1];
          v132 = v179[v130];
          if (COERCE_FLOAT(*(v131 + 40)) > COERCE_FLOAT(*(v132 + 40)))
          {
            v179[v130 - 1] = v132;
            v179[v130] = v131;
            if (v130 - 2 >= 0)
            {
              v133 = &v179[v129 + 1];
              v134 = v128;
              do
              {
                v136 = *(v133 - 1);
                v135 = *v133;
                if (COERCE_FLOAT(*(*v133 + 40)) >= COERCE_FLOAT(*(v136 + 40)))
                {
                  break;
                }

                *v133 = v136;
                *--v133 = v135;
                --v134;
              }

              while (v134 > 0);
            }
          }

          ++v130;
          ++v129;
          ++v128;
        }

        while (v130 != v127);
      }

      if (v127)
      {
        v137 = 0;
        for (i = 0; i != v127; ++i)
        {
          v139 = v179[i];
          v139[1].i64[1] = v139;
          v139[2].i64[0] = v139;
          v140 = v139[3].i32[1] - v139[3].i32[0];
          v139[3].i32[2] = v140;
          v139[1].i64[0] = 0;
          v141 = v137;
          while (v141)
          {
            v142 = *(&v178[127].i64[1] + v141);
            v143 = *(v142 + 32);
            v144 = vmulq_f32(*v139, *v143);
            v144.i64[0] = vpaddq_f32(v144, v144).u64[0];
            v141 -= 8;
            if (vpadd_f32(*v144.f32, *v144.f32).f32[0] >= *&v180)
            {
              *(v142 + 16) = v139;
              v143[1].i64[1] = v139;
              v139[2].i64[0] = v143;
              *(*(v142 + 32) + 56) += v140;
              break;
            }
          }

          v137 += 8;
        }

        v145 = 0;
        v146 = v182;
        do
        {
          v147 = v179[v145];
          if (v147)
          {
            _ZF = *(v147 + 32) == v147;
          }

          else
          {
            _ZF = 0;
          }

          if (_ZF)
          {
            while (*(v147 + 16))
            {
              v149 = v147;
              v147 = *(v147 + 16);
              v150 = *(v149 + 48);
              v151 = *(v149 + 52);
              if (v150 < v151)
              {
                v152 = *(v147 + 52);
                do
                {
                  v153 = *(v147 + 48);
                  if (v153 < v152)
                  {
                    do
                    {
                      v154 = v146 + (v153 << 6);
                      v155 = vsubq_f32(*(v154 + 16), *(v146 + (v150 << 6) + 16));
                      v156 = vmulq_f32(v155, v155);
                      v156.i64[0] = vpaddq_f32(v156, v156).u64[0];
                      if (*v181 > vpadd_f32(*v156.f32, *v156.f32).f32[0])
                      {
                        v157 = (v146 + ((v152 - 1) << 6));
                        v158 = *v157;
                        v159 = v157[1];
                        v160 = v157[2];
                        *(v154 + 48) = *(v157 + 12);
                        *(v154 + 16) = v159;
                        *(v154 + 32) = v160;
                        *v154 = v158;
                        v152 = *(v147 + 52) - 1;
                        *(v147 + 52) = v152;
                        --v153;
                      }

                      ++v153;
                    }

                    while (v153 < v152);
                    v151 = *(v149 + 52);
                  }

                  ++v150;
                }

                while (v150 < v151);
              }
            }
          }

          ++v145;
        }

        while (v145 != v127);
        v161 = v182;
        v126 = v183;
        v162 = v184;
      }

      else
      {
        v162 = 0;
        v161 = v182;
      }

      physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(v179[36], v161, v126, v179, v162, v181, &v180, 6);
    }

    if ((v189 & 0x8000000000000000) == 0 && (v189 & 0x7FFFFFFF00000000) != 0 && v188 != v186 && v188)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  else
  {
    v50 = vdup_lane_s32(*v46.f32, 1);
    v51 = vdup_laneq_s32(v46, 2);
    v52 = vaddq_f32(v46, v46);
    v53 = vdup_laneq_s32(v52, 2);
    v176[1] = v40;
    v54 = vdup_lane_s32(vmul_f32(*v46.f32, *v52.f32), 0);
    v55 = vmul_lane_f32(v50, *v52.f32, 1);
    v56 = vmul_laneq_f32(v51, v52, 2);
    v57 = vmul_n_f32(v50, v52.f32[0]);
    v58 = vmul_n_f32(v51, v52.f32[0]);
    v59 = vmul_lane_f32(vdup_lane_s32(*v52.f32, 0), v43, 1);
    v60 = vmul_lane_f32(v51, *v52.f32, 1);
    *v52.f32 = vmul_lane_f32(vdup_lane_s32(*v52.f32, 1), v43, 1);
    v61 = vmul_lane_f32(v53, v43, 1);
    __asm { FMOV            V16.2S, #1.0 }

    v66 = vsub_f32(_D16, v54);
    *v67.f32 = vext_s8(vsub_f32(vsub_f32(_D16, v55), v56), vadd_f32(v57, v61), 4uLL);
    v67.i64[1] = vsub_f32(v58, *v52.f32).u32[0];
    v174 = v67;
    *&v68 = vext_s8(vsub_f32(v57, v61), vsub_f32(v66, v56), 4uLL);
    *(&v68 + 1) = vadd_f32(v60, v59).u32[0];
    v175 = v68;
    *&v68 = vext_s8(vadd_f32(v58, *v52.f32), vsub_f32(v60, v59), 4uLL);
    *(&v68 + 1) = vsub_f32(v66, v55).u32[0];
    v176[0] = v68;
    v186[0] = vmul_f32(*&v20, vdup_n_s32(0x3F4CCCCDu));
    v69 = a12[3].u8[14];
    if (a12[3].i8[14])
    {
      v70 = 0;
      v71 = &a12[3].i8[8];
      v72 = a12 + 4;
      do
      {
        v73 = v71[v70];
        LODWORD(v74) = v69 - 2;
        if (v70 >= v74)
        {
          v74 = v74;
        }

        else
        {
          v74 = v70;
        }

        _X8 = &v72[25 * v71[v74 + 1]];
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X8,#0x80]
          PRFM            #0, [X8,#0x100]
        }

        v79 = physx::Gu::SinglePersistentContactManifold::refreshContactPoints(&v72[25 * v71[v70]], &v174, v186).u32[0];
        if (v72[25 * v73 + 24].i32[0])
        {
          a12[2].i32[v73] = v79;
          ++v70;
        }

        else
        {
          v80 = a12[3].i8[14] - 1;
          a12[3].i8[14] = v80;
          v81 = v71[v80];
          v71[v80] = v73;
          v71[v70] = v81;
        }

        v69 = a12[3].u8[14];
      }

      while (v70 < v69);
    }
  }

  return physx::Gu::MultiplePersistentContactManifold::addManifoldContactsToContactBuffer(a12, v23, v171);
}

BOOL physx::Gu::pcmContactConvexMesh(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t **a6, uint64_t a7, uint64_t a8)
{
  v130 = *MEMORY[0x1E69E9840];
  v8 = *a6;
  if (!*a6)
  {
    return 0;
  }

  v16 = *(a1 + 48);
  *&v17 = *(a3 + 16);
  *(&v17 + 1) = *(a3 + 24);
  v110[0] = *a3;
  v110[1] = v17;
  v19 = a2[1];
  v20 = a2[2];
  v18 = a2 + 1;
  v22 = v19 == 1.0 && v20 == 1.0 && a2[3] == 1.0;
  v24 = xmmword_1E3047670;
  v107[0] = xmmword_1E3047670;
  v107[1] = xmmword_1E3047670;
  v25 = xmmword_1E3060D60;
  v26 = xmmword_1E3047680;
  v107[2] = xmmword_1E3060D60;
  v107[3] = xmmword_1E3047680;
  v108 = 0x3F80000000000000;
  v109 = 0;
  if ((v22 & 1) == 0)
  {
    physx::Cm::FastVertex2ShapeScaling::init(v107, v18, a2 + 4);
    v25 = xmmword_1E3060D60;
    v26 = xmmword_1E3047680;
    v24 = xmmword_1E3047670;
  }

  v104[0] = v24;
  v104[1] = v24;
  v104[2] = v25;
  v104[3] = v26;
  v105 = 0x3F80000000000000;
  v106 = 0;
  PCMConvexData = physx::Gu::getPCMConvexData(a1, v104, v103, v102);
  v28 = *(a1 + 16);
  v29 = *(a1 + 4);
  v30 = v29;
  v30.i32[3] = 0;
  v31.i64[0] = *(v16 + 60);
  v31.i64[1] = *(v16 + 68);
  v32 = vmulq_f32(v30, v31);
  *v32.i8 = vpmin_f32(vdup_laneq_s32(v32, 2), *v32.i8);
  *v32.i8 = vpmin_f32(*v32.i8, *v32.i8);
  *v33.i32 = *(a5 + 8) * 0.05;
  __asm { FMOV            V5.2S, #0.25 }

  v38 = vmin_f32(vmul_f32(*v32.i8, _D5), vdup_lane_s32(v33, 0));
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v126 = v16;
  v128 = *(v16 + 40) + 20 * *(v16 + 39);
  v129 = *(v16 + 38);
  *&v118 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v32.i32);
  *(&v118 + 2) = 0.025 * *v32.i32;
  if (PCMConvexData)
  {
    v120 = xmmword_1E3047670;
    v121 = xmmword_1E3047680;
    v122 = xmmword_1E30476A0;
    v123 = xmmword_1E3047670;
    v124 = xmmword_1E3047680;
    v125 = xmmword_1E30476A0;
    v127 = *(v16 + 48);
    v112 = v110;
    v113 = &v120;
    v114 = &v123;
    v115 = 1;
    v111[0] = &unk_1F5D216F0;
    v116 = &v117;
    return physx::Gu::PCMContactConvexMesh(v102, v111, v103, a2, a3, a4, a7, v104, v107, 1, v22, v8, a8);
  }

  else
  {
    v39 = vrecpeq_f32(v30);
    v40 = 4;
    do
    {
      v39 = vmulq_f32(v39, vrecpsq_f32(v39, v30));
      --v40;
    }

    while (v40);
    *v41.f32 = vdup_lane_s32(*v29.f32, 0);
    v41.i64[1] = v41.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v41, v30)), v38).u32[0] & 0xFFFFFF) != 0)
    {
      v48 = vdup_lane_s32(*v28.f32, 1);
      v49 = vdup_laneq_s32(v28, 2);
      v50 = vdup_laneq_s32(v28, 3);
      v51 = vaddq_f32(v28, v28);
      v52 = vmul_lane_f32(v48, *v51.f32, 1);
      v53 = vmul_laneq_f32(v49, v51, 2);
      v54 = vmul_n_f32(v48, v51.f32[0]);
      v55 = vmul_n_f32(v49, v51.f32[0]);
      v56 = vmul_n_f32(v50, v51.f32[0]);
      v57 = vmul_lane_f32(v49, *v51.f32, 1);
      v58 = vmul_lane_f32(v50, *v51.f32, 1);
      v59 = vmul_laneq_f32(v50, v51, 2);
      __asm { FMOV            V6.2S, #1.0 }

      v61 = vsub_f32(_D6, vdup_lane_s32(vmul_f32(*v28.f32, *v51.f32), 0));
      v62 = vsub_f32(vsub_f32(_D6, v52), v53);
      *v51.f32 = vadd_f32(v54, v59);
      v63 = vsub_f32(v55, v58);
      v64 = vsub_f32(v54, v59);
      v65 = vadd_f32(v55, v58);
      v66 = vsub_f32(v57, v56);
      v67 = vext_s8(v65, v66, 4uLL);
      v68 = vsub_f32(v61, v53);
      *v69.f32 = vext_s8(v62, *&vdupq_lane_s32(v64, 1), 4uLL);
      v69.i64[1] = vdup_lane_s32(v67, 0).u32[0];
      v70 = vsub_f32(v61, v52);
      *v71.f32 = vext_s8(*&vdupq_lane_s32(*v51.f32, 0), v68, 4uLL);
      v71.i64[1] = vdup_lane_s32(v67, 1).u32[0];
      v72 = vadd_f32(v57, v56);
      *v73.f32 = vext_s8(*&vdupq_lane_s32(v63, 0), v72, 4uLL);
      v73.i64[1] = vdup_lane_s32(v70, 0).u32[0];
      v74 = vmulq_n_f32(v69, v29.f32[0]);
      v74.i32[3] = 0;
      v75 = vmulq_lane_f32(v71, *v29.f32, 1);
      v75.i32[3] = 0;
      v76 = vmulq_laneq_f32(v73, v29, 2);
      v76.i32[3] = 0;
      v77 = vmulq_lane_f32(v74, v62, 1);
      v77.i32[3] = 0;
      v78 = vmulq_n_f32(v75, v51.f32[0]);
      v78.i32[3] = 0;
      v79 = vmulq_n_f32(v76, *v63.i32);
      v79.i32[3] = 0;
      v42 = vaddq_f32(v79, vaddq_f32(v77, v78));
      v80 = vmulq_lane_f32(v74, v64, 1);
      v80.i32[3] = 0;
      v81 = vmulq_n_f32(v75, *v68.i32);
      v81.i32[3] = 0;
      v82 = vmulq_n_f32(v76, *v72.i32);
      v82.i32[3] = 0;
      v43 = vaddq_f32(v82, vaddq_f32(v80, v81));
      v83 = vmulq_lane_f32(v74, v65, 1);
      v83.i32[3] = 0;
      v84 = vmulq_n_f32(v75, *v66.i32);
      v84.i32[3] = 0;
      v85 = vmulq_n_f32(v76, *v70.i32);
      v85.i32[3] = 0;
      v44 = vaddq_f32(v85, vaddq_f32(v83, v84));
      v120 = v42;
      v121 = v43;
      v86 = vmulq_n_f32(v69, v39.f32[0]);
      v86.i32[3] = 0;
      v87 = vmulq_lane_f32(v71, *v39.f32, 1);
      v87.i32[3] = 0;
      v88 = vmulq_laneq_f32(v73, v39, 2);
      v88.i32[3] = 0;
      v89 = vmulq_lane_f32(v86, v62, 1);
      v89.i32[3] = 0;
      v90 = vmulq_n_f32(v87, v51.f32[0]);
      v90.i32[3] = 0;
      v91 = vmulq_n_f32(v88, *v63.i32);
      v91.i32[3] = 0;
      v92 = vaddq_f32(v91, vaddq_f32(v89, v90));
      v93 = vmulq_lane_f32(v86, v64, 1);
      v93.i32[3] = 0;
      v94 = vmulq_n_f32(v87, *v68.i32);
      v94.i32[3] = 0;
      v95 = vmulq_n_f32(v88, *v72.i32);
      v95.i32[3] = 0;
      v96 = vmulq_lane_f32(v86, v65, 1);
      v96.i32[3] = 0;
      v97 = vmulq_n_f32(v87, *v66.i32);
      v97.i32[3] = 0;
      v98 = vmulq_n_f32(v88, *v70.i32);
      v98.i32[3] = 0;
      v46 = vaddq_f32(v95, vaddq_f32(v93, v94));
      v47 = vaddq_f32(v98, vaddq_f32(v96, v97));
      v122 = v44;
      v123 = v92;
    }

    else
    {
      v39.i32[3] = 0;
      v42 = vmulq_f32(v30, xmmword_1E3047670);
      v43 = vmulq_f32(v30, xmmword_1E3047680);
      v44 = vmulq_f32(v30, xmmword_1E30476A0);
      v120 = v42;
      v121 = v43;
      v45 = vmulq_f32(v39, xmmword_1E3047670);
      v46 = vmulq_f32(v39, xmmword_1E3047680);
      v47 = vmulq_f32(v39, xmmword_1E30476A0);
      v122 = v44;
      v123 = v45;
    }

    v124 = v46;
    v125 = v47;
    v99 = vmulq_f32(v42, 0);
    v100 = vmulq_f32(v43, 0);
    v101 = vmulq_f32(v44, 0);
    v99.i32[3] = 0;
    v100.i32[3] = 0;
    v101.i32[3] = 0;
    v117 = vaddq_f32(v101, vaddq_f32(v100, v99));
    v127 = *(v16 + 48);
    v112 = v110;
    v113 = &v120;
    v114 = &v123;
    v115 = 0;
    v111[0] = &unk_1F5D21740;
    v116 = &v117;
    return physx::Gu::PCMContactConvexMesh(v102, v111, v103, a2, a3, a4, a7, v104, v107, 0, v22, v8, a8);
  }
}

BOOL physx::Gu::pcmContactBoxMesh(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t **a6, uint64_t a7, uint64_t a8)
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = *a6;
  if (!*a6)
  {
    return 0;
  }

  v14 = (a1 + 4);
  v15 = *(a1 + 4);
  v16 = *(a1 + 8);
  v55 = vneg_f32(*(a1 + 4));
  v56 = -*&v16.i32[1];
  v57 = v15;
  v58 = v16;
  v18 = a2[1];
  v19 = a2[2];
  v17 = a2 + 1;
  v21 = v18 == 1.0 && v19 == 1.0 && a2[3] == 1.0;
  v52[0] = xmmword_1E3047670;
  v52[1] = xmmword_1E3047670;
  v23 = xmmword_1E3060D60;
  v52[2] = xmmword_1E3060D60;
  v52[3] = xmmword_1E3047680;
  v53 = 0x3F80000000000000;
  v54 = 0;
  if ((v21 & 1) == 0)
  {
    physx::Cm::FastVertex2ShapeScaling::init(v52, v17, a2 + 4);
    v23 = xmmword_1E3060D60;
    v15 = *(a1 + 4);
    v16 = *(a1 + 8);
  }

  v49[0] = xmmword_1E3047670;
  v49[1] = xmmword_1E3047670;
  v49[2] = v23;
  v49[3] = xmmword_1E3047680;
  v50 = 0x3F80000000000000;
  v51 = 0;
  *&v24 = __PAIR64__(v16.u32[0], v15);
  v25 = vpmin_f32(vdup_lane_s32(v16, 1), __PAIR64__(v16.u32[0], v15));
  *(&v24 + 1) = v16.u32[1];
  v25.f32[0] = vpmin_f32(v25, v25).f32[0];
  v46 = 3;
  v47 = 0;
  v42[1] = 0;
  v42[0] = 0;
  v48 = v24;
  v43 = 0.15 * v25.f32[0];
  v44 = 0.05 * v25.f32[0];
  v45 = 0.05 * v25.f32[0];
  *&v26 = *(a3 + 16);
  *(&v26 + 1) = *(a3 + 24);
  v41[0] = *a3;
  v41[1] = v26;
  physx::Gu::PolygonalBox::PolygonalBox(v29, v14);
  v32 = 0;
  v34 = 0x600000008;
  v33 = 0;
  v35 = 0;
  v36 = &v31;
  v37 = &v30;
  v38 = &physx::Gu::gPCMBoxPolygonData;
  v39 = 0u;
  v40 = 0u;
  v28[0] = xmmword_1E3047670;
  v28[1] = xmmword_1E3047680;
  v28[2] = xmmword_1E30476A0;
  v59[4] = v41;
  v59[5] = v28;
  v59[6] = v28;
  v60 = 1;
  v59[0] = &unk_1F5D21690;
  v61 = v42;
  return physx::Gu::PCMContactConvexMesh(&v32, v59, &v55, a2, a3, a4, a7, v49, v52, 1, v21, v8, a8);
}

uint64_t physx::Gu::buildPartialHull(uint64_t result, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t a5)
{
  v8 = result;
  v9 = vmulq_f32(a5, a5);
  v9.i64[0] = vpaddq_f32(v9, v9).u64[0];
  v10 = vpadd_f32(*v9.f32, *v9.f32);
  v11 = vrsqrte_f32(v10);
  v12 = 4;
  do
  {
    v11 = vmul_f32(v11, vrsqrts_f32(vmul_f32(v11, v11), v10));
    --v12;
  }

  while (v12);
  v13 = vbsl_s8(vdup_lane_s32(vceqz_f32(v10), 0), v10, vmul_f32(v10, v11));
  v14 = vrecpe_f32(v13);
  v15 = 4;
  do
  {
    v14 = vmul_f32(v14, vrecps_f32(v13, v14));
    --v15;
  }

  while (v15);
  v16 = *(result + 16);
  if (v16)
  {
    v17 = 0;
    v18 = vmulq_n_f32(a5, v14.f32[0]);
    v18.i32[3] = 0;
    v49 = v18;
    do
    {
      v19 = *(v8 + 24) + 20 * v17;
      v20 = *(v19 + 18);
      if (*(v19 + 18))
      {
        v21 = 0;
        v22 = (*(v8 + 40) + *(v19 + 16));
        v23 = *(*(v8 + 32) + 12 * *v22);
        v24 = *(a2 + 40);
        v25 = vmulq_n_f32(*v24, v23.f32[0]);
        v25.i32[3] = 0;
        v26 = vmulq_lane_f32(v24[1], *v23.f32, 1);
        v26.i32[3] = 0;
        v27 = v20 - 1;
        v28 = vmulq_laneq_f32(v24[2], v23, 2);
        v28.i32[3] = 0;
        v29 = vaddq_f32(vaddq_f32(v25, v26), v28);
        v30 = vmulq_f32(v18, vsubq_f32(v29, *a4));
        v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
        v31 = vpadd_f32(*v30.f32, *v30.f32);
        do
        {
          v32 = v31;
          v33 = *(a2 + 40);
          v34 = *(*(v8 + 32) + 12 * v22[v27]);
          v35 = vmulq_n_f32(*v33, v34.f32[0]);
          v35.i32[3] = 0;
          v36 = vmulq_lane_f32(v33[1], *v34.f32, 1);
          v36.i32[3] = 0;
          v37 = vmulq_laneq_f32(v33[2], v34, 2);
          v37.i32[3] = 0;
          v38 = vaddq_f32(vaddq_f32(v35, v36), v37);
          v39 = vmulq_f32(v18, vsubq_f32(v38, *a4));
          v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
          v31 = vpadd_f32(*v39.f32, *v39.f32);
          if (vuzp1_s8(vdup_lane_s16(vcgtz_f32(vmaxnm_f32(v31, v32)), 0), *v29.f32).u32[0] == -1)
          {
            _Q0 = vsubq_f32(v29, v38);
            _S1 = _Q0.i32[2];
            __asm { FMLA            S2, S1, V0.S[2] }

            v50 = v38;
            if (_S2 <= 0.0)
            {
              _Q0.i64[0] = 0;
              v48 = 0.0;
            }

            else
            {
              v47 = 1.0 / sqrtf(_S2);
              *_Q0.f32 = vmul_n_f32(*_Q0.f32, v47);
              v48 = _Q0.f32[2] * v47;
            }

            v51 = _Q0.i64[0];
            v52 = v48;
            result = physx::Gu::SeparatingAxes::addAxis(a3, &v51);
            LOBYTE(v20) = *(v19 + 18);
            v18 = v49;
            v38 = v50;
          }

          v27 = v21++;
          v29 = v38;
        }

        while (v21 < v20);
        v16 = *(v8 + 16);
      }

      ++v17;
    }

    while (v17 < v16);
  }

  return result;
}

uint64_t physx::Gu::generatedContacts(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, void *a5, uint64_t a6, float32x4_t *a7, uint64_t a8, _DWORD *a9, void *a10)
{
  v241 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 40);
  v235 = a1;
  v236 = v15;
  v16 = a5[6];
  v17 = *a3;
  v17.i64[1] = a3->u32[2];
  v18 = vmulq_f32(*v16, v17);
  v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
  v19 = vmulq_f32(v17, v16[1]);
  v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
  v20 = vmulq_f32(v17, v16[2]);
  v20.i64[0] = vpaddq_f32(v20, v20).u64[0];
  v21 = vpadd_f32(*v20.f32, *v20.f32).u32[0];
  *v22.f32 = vext_s8(vpadd_f32(*v18.f32, *v18.f32), vpadd_f32(*v19.f32, *v19.f32), 4uLL);
  v22.i64[1] = v21;
  v234 = a3[1].u16[0];
  *v18.f32 = vpadd_f32(vmul_f32(*v22.f32, *v22.f32), vmul_f32(*&v22.u32[2], *&v22.u32[2]));
  v23 = vpadd_f32(*v18.f32, *v18.f32);
  v24 = vrsqrte_f32(v23);
  v25 = 4;
  do
  {
    v24 = vmul_f32(v24, vrsqrts_f32(vmul_f32(v24, v24), v23));
    --v25;
  }

  while (v25);
  v237 = a6;
  v238 = a10;
  v239 = a8;
  v26 = vbsl_s8(vdup_lane_s32(vceqz_f32(v23), 0), v23, vmul_f32(v23, v24));
  v27 = vrecpe_f32(v26);
  v28 = 4;
  do
  {
    v27 = vmul_f32(v27, vrecps_f32(v26, v27));
    --v28;
  }

  while (v28);
  v29 = vmulq_n_f32(v22, v27.f32[0]);
  v29.i32[3] = 0;
  v240 = v29;
  *v30.f32 = physx::Gu::findRotationMatrixFromZAxis(&v240);
  v232 = v31;
  v233 = v30;
  v231 = v32;
  v33 = *(a2 + 40);
  v229 = a4[1].u16[0];
  v230 = v33;
  v34 = a3[1].u8[2];
  MEMORY[0x1EEE9AC00](v35);
  v228 = a2;
  v37 = &v227 - v36;
  bzero(&v227 - v36, v36);
  v38 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a4[1].u8[2];
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v227 - v41;
  bzero(&v227 - v41, v41);
  v43 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v227 - v45;
  bzero(&v227 - v45, v39);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v227 - v48;
  bzero(&v227 - v48, v50);
  v51 = (v49 + 15);
  (*(*a5 + 32))(a5, v236 + v234, v34, *(v235 + 32), v38);
  v52 = v237;
  result = (*(*v237 + 32))(v237, v230 + v229, a4[1].u8[2], *(v228 + 32), v43);
  v54 = v231;
  v55 = v232;
  v56 = v233;
  v57 = *v43;
  v58 = xmmword_1E3116F50;
  v59 = xmmword_1E31137A0;
  v60 = xmmword_1E31137A0;
  v61 = xmmword_1E3116F50;
  if (a3[1].i8[2])
  {
    v62 = 0;
    v63 = xmmword_1E31137A0;
    v64 = xmmword_1E3116F50;
    do
    {
      v65 = v38[v62];
      v66 = vmulq_n_f32(v56, v65.f32[0]);
      v66.i32[3] = 0;
      v67 = vmulq_lane_f32(v55, *v65.f32, 1);
      v67.i32[3] = 0;
      v68 = vmulq_laneq_f32(v54, v65, 2);
      v68.i32[3] = 0;
      v69 = vaddq_f32(v68, vaddq_f32(v66, v67));
      v38[v62] = v69;
      v63 = vminq_f32(v63, v69);
      v64 = vmaxq_f32(v64, v69);
      ++v62;
    }

    while (v62 < a3[1].u8[2]);
    v60 = vaddq_f32(v63, xmmword_1E3117360);
    v61 = vaddq_f32(v64, xmmword_1E3117370);
  }

  v70 = 0;
  v71 = v51 & 0xFFFFFFFFFFFFFFF0;
  v72 = *v38;
  LODWORD(v73) = a4[1].u8[2];
  v74 = *a9;
  v75 = v238;
  if (a4[1].i8[2])
  {
    v76 = v239;
    if (v74 <= 0x3F)
    {
      v77 = 0;
      v70 = 0;
      v78 = v72.f32[2] + COERCE_FLOAT(*v238);
      v79 = xmmword_1E31137A0;
      v80 = xmmword_1E3116F50;
      v81 = vextq_s8(v72, v72, 8uLL).u64[0];
      v82.i64[0] = -1;
      v82.i64[1] = -1;
      do
      {
        v83 = v43[v77];
        v84 = vsubq_f32(v83, a7[3]);
        v85 = vmulq_f32(*a7, v84);
        v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
        v86 = vmulq_f32(v84, a7[1]);
        v86.i64[0] = vpaddq_f32(v86, v86).u64[0];
        v87 = vmulq_f32(v84, a7[2]);
        v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
        v88 = vmulq_lane_f32(v56, vpadd_f32(*v85.f32, *v85.f32), 1);
        v88.i32[3] = 0;
        v89 = vmulq_n_f32(v55, vpadd_f32(*v86.f32, *v86.f32).f32[0]);
        v89.i32[3] = 0;
        v90 = vmulq_n_f32(v54, vpadd_f32(*v87.f32, *v87.f32).f32[0]);
        v90.i32[3] = 0;
        v91 = vaddq_f32(v90, vaddq_f32(v88, v89));
        v43[v77] = v91;
        *(v71 + 8 * v77) = vdup_lane_s32(vsub_f32(*&vextq_s8(v91, v91, 8uLL), v81), 0);
        v92 = v43[v77];
        v93 = v92;
        v93.i32[2] = v72.i32[2];
        v43[v77] = v93;
        if (v78 > *&v91.i32[2])
        {
          v46[v77] = 1;
          v94 = a3[1].u8[2];
          v95 = vorrq_s8(vcgtq_f32(v60, v93), vcgtq_f32(v93, v61)).u64[0];
          if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v95, 0), vdupq_lane_s32(v95, 1)), v82)), *v72.f32).u32[0] != -1 && v94 != 0)
          {
            v97 = 0;
            v98 = vdup_lane_s32(*v92.f32, 0);
            v99 = vdup_lane_s32(*v92.f32, 1);
            LODWORD(v100) = v94 - 1;
            result = 1;
            while (1)
            {
              v101 = v38[v100];
              v100 = v97;
              v102 = vdup_lane_s32(*v101.f32, 1);
              v103 = v38[v97];
              v104 = vdup_lane_s32(*v103.f32, 1);
              v105 = vdup_lane_s32(*v101.f32, 0);
              v106 = vdup_lane_s32(*v103.f32, 0);
              if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v98, v106), vceq_f32(v99, v104)), vand_s8(vceq_f32(v98, v105), vceq_f32(v99, v102))), 0), *v72.f32).u32[0] == -1)
              {
                break;
              }

              if (veor_s8(vcgt_f32(v102, v99), vcgt_f32(v104, v99)).u8[0] & 1) != 0 && (v107 = vsub_f32(v104, v102), v108 = vmul_f32(vsub_f32(v99, v102), vsub_f32(v106, v105)), v109 = vmul_n_f32(v107, v92.f32[0]), v110 = vadd_f32(v108, vmul_f32(vadd_f32(v105, 0x3400000034000000), v107)), v111 = vdup_lane_s32(vcgtz_f32(v107), 0), (vcge_f32(vbsl_s8(v111, v110, v109), vbsl_s8(v111, v109, v110)).u8[0]))
              {
                if ((result & 1) == 0)
                {
                  goto LABEL_29;
                }

                result = 0;
                ++v97;
                if (v94 - 1 == v100)
                {
                  break;
                }
              }

              else
              {
                ++v97;
                if (v94 == v100 + 1)
                {
                  if (result)
                  {
                    goto LABEL_29;
                  }

                  break;
                }
              }
            }

            ++v70;
            v112 = v240;
            v112.i32[3] = HIDWORD(*(v71 + 8 * v77));
            *(v76 + 48 * *a9) = v83;
            v113 = v43[v77];
            v114 = vmulq_f32(v56, v113);
            v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
            v115 = vmulq_f32(v55, v113);
            v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
            v116 = vmulq_f32(v54, v113);
            v116.i64[0] = vpaddq_f32(v116, v116).u64[0];
            *v114.f32 = vext_s8(vpadd_f32(*v114.f32, *v114.f32), vpadd_f32(*v115.f32, *v115.f32), 4uLL);
            v114.i64[1] = vpadd_f32(*v116.f32, *v116.f32).u32[0];
            *(v76 + 48 * *a9 + 16) = v114;
            v117 = (*a9)++;
            *(v76 + 48 * v117 + 32) = v112;
          }
        }

        else
        {
          v46[v77] = 0;
        }

LABEL_29:
        v79 = vminq_f32(v79, v93);
        v80 = vmaxq_f32(v80, v93);
        ++v77;
        v73 = a4[1].u8[2];
        v74 = *a9;
      }

      while (v77 < v73 && v74 < 0x40);
      v59 = vaddq_f32(v79, xmmword_1E3117360);
      v58 = vaddq_f32(v80, xmmword_1E3117370);
    }
  }

  else
  {
    v76 = v239;
  }

  if (v70 != v73)
  {
    v118 = vdup_laneq_s32(v72, 2);
    v119 = *(v52 + 48);
    v120 = *a4;
    v120.i64[1] = a4->u32[2];
    v121 = vmulq_f32(*v119, v120);
    v121.i64[0] = vpaddq_f32(v121, v121).u64[0];
    v122 = vmulq_f32(v120, v119[1]);
    v122.i64[0] = vpaddq_f32(v122, v122).u64[0];
    v123 = vmulq_f32(v120, v119[2]);
    v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
    *v124.f32 = vext_s8(vpadd_f32(*v121.f32, *v121.f32), vpadd_f32(*v122.f32, *v122.f32), 4uLL);
    v124.i64[1] = vpadd_f32(*v123.f32, *v123.f32).u32[0];
    *v123.f32 = vpadd_f32(vmul_f32(*v124.f32, *v124.f32), vmul_f32(*&v124.u32[2], *&v124.u32[2]));
    v125 = vpadd_f32(*v123.f32, *v123.f32);
    v126 = vrsqrte_f32(v125);
    v127 = 4;
    do
    {
      v126 = vmul_f32(v126, vrsqrts_f32(vmul_f32(v126, v126), v125));
      --v127;
    }

    while (v127);
    v128 = vbsl_s8(vdup_lane_s32(vceqz_f32(v125), 0), v125, vmul_f32(v125, v126));
    v129 = vrecpe_f32(v128);
    v130 = 4;
    do
    {
      v129 = vmul_f32(v129, vrecps_f32(v128, v129));
      --v130;
    }

    while (v130);
    v131 = 0;
    v132 = v240;
    v133 = a3[1].u8[2];
    if (a3[1].i8[2] && v74 <= 0x3F)
    {
      v134 = 0;
      v131 = 0;
      v135 = vmulq_n_f32(v124, v129.f32[0]);
      v135.i32[3] = 0;
      v136 = vmulq_n_f32(*a7, v240.f32[0]);
      v136.i32[3] = 0;
      v137 = vmulq_lane_f32(a7[1], *v240.f32, 1);
      v137.i32[3] = 0;
      v138 = vmulq_laneq_f32(a7[2], v240, 2);
      v138.i32[3] = 0;
      v139 = vaddq_f32(vaddq_f32(v136, v137), v138);
      v140 = vmulq_f32(v135, v139);
      v141.i64[0] = -1;
      v141.i64[1] = -1;
      *v140.i8 = vpadd_f32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
      v142 = vpadd_f32(*v140.i8, *v140.i8);
      v143 = vrecpe_f32(v142);
      do
      {
        v144 = a4[1].u8[2];
        v145 = v38[v134];
        v146 = vorrq_s8(vcgtq_f32(v59, v145), vcgtq_f32(v145, v58)).u64[0];
        if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v146, 0), vdupq_lane_s32(v146, 1)), v141)), *v72.f32).u32[0] != -1 && v144 != 0)
        {
          v148 = 0;
          v149 = vdup_lane_s32(*v145.f32, 0);
          v150 = vdup_lane_s32(*v145.f32, 1);
          LODWORD(result) = v144 - 1;
          v151 = 1;
          while (1)
          {
            v152 = v43[result];
            result = v148;
            v153 = vdup_lane_s32(*v152.f32, 1);
            v154 = v43[v148];
            v155 = vdup_lane_s32(*v154.f32, 1);
            v156 = vdup_lane_s32(*v152.f32, 0);
            v157 = vdup_lane_s32(*v154.f32, 0);
            if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v149, v157), vceq_f32(v150, v155)), vand_s8(vceq_f32(v149, v156), vceq_f32(v150, v153))), 0), *v72.f32).u32[0] == -1)
            {
              break;
            }

            if (veor_s8(vcgt_f32(v153, v150), vcgt_f32(v155, v150)).u8[0] & 1) != 0 && (v158 = vsub_f32(v155, v153), v159 = vmul_f32(vsub_f32(v150, v153), vsub_f32(v157, v156)), v160 = vmul_n_f32(v158, v145.f32[0]), v161 = vadd_f32(v159, vmul_f32(vadd_f32(v156, 0x3400000034000000), v158)), v162 = vdup_lane_s32(vcgtz_f32(v158), 0), (vcge_f32(vbsl_s8(v162, v161, v160), vbsl_s8(v162, v160, v161)).u8[0]))
            {
              if ((v151 & 1) == 0)
              {
                goto LABEL_46;
              }

              v151 = 0;
              ++v148;
              if (v144 - 1 == result)
              {
                break;
              }
            }

            else
            {
              ++v148;
              if (v144 == result + 1)
              {
                if (v151)
                {
                  goto LABEL_46;
                }

                break;
              }
            }
          }

          v163 = vmulq_f32(v56, v145);
          v163.i64[0] = vpaddq_f32(v163, v163).u64[0];
          v164 = vmulq_f32(v55, v145);
          v164.i64[0] = vpaddq_f32(v164, v164).u64[0];
          v165 = vmulq_f32(v54, v145);
          v165.i64[0] = vpaddq_f32(v165, v165).u64[0];
          v166 = vpadd_f32(*v165.f32, *v165.f32).u32[0];
          *v167.f32 = vext_s8(vpadd_f32(*v163.f32, *v163.f32), vpadd_f32(*v164.f32, *v164.f32), 4uLL);
          v167.i64[1] = v166;
          v168 = vmulq_n_f32(*a7, v167.f32[0]);
          v168.i32[3] = 0;
          v169 = vmulq_lane_f32(a7[1], *v167.f32, 1);
          v169.i32[3] = 0;
          v170 = vmulq_laneq_f32(a7[2], v167, 2);
          v170.i32[3] = 0;
          v171 = vaddq_f32(a7[3], vaddq_f32(v170, vaddq_f32(v168, v169)));
          v172 = vmulq_f32(v135, vsubq_f32(v57, v171));
          v173 = vextq_s8(v172, v172, 8uLL).u64[0];
          v174 = 4;
          v175 = v143;
          do
          {
            v175 = vmul_f32(v175, vrecps_f32(v142, v175));
            --v174;
          }

          while (v174);
          v176 = vpadd_f32(*v172.i8, v173);
          v177 = vmul_f32(v175, vpadd_f32(v176, v176));
          if (v177.f32[0] <= COERCE_FLOAT(*v75))
          {
            ++v131;
            v178 = vmlaq_n_f32(v171, v139, v177.f32[0]);
            v178.i64[1] = vextq_s8(v178, v178, 8uLL).u32[0];
            v179 = v132;
            v179.i32[3] = v177.i32[1];
            *(v76 + 48 * v74) = v178;
            *(v76 + 48 * *a9 + 16) = v167;
            v180 = (*a9)++;
            *(v76 + 48 * v180 + 32) = v179;
            v133 = a3[1].u8[2];
            v74 = *a9;
          }
        }

LABEL_46:
        ++v134;
      }

      while (v134 < v133 && v74 < 0x40);
    }

    if (v131 != v133)
    {
      v181 = a4[1].u8[2];
      if (a4[1].i8[2])
      {
        v182 = 0;
        LODWORD(v183) = v181 - 1;
        v184.i64[0] = -1;
        v184.i64[1] = -1;
        do
        {
          v185 = v183;
          v183 = v182;
          if (((v46[v182] & 1) != 0 || v46[v185] == 1) && v133 && v74 <= 0x3F)
          {
            v186 = 0;
            v187 = v43[v183];
            v188 = v43[v185];
            v189 = v187;
            v189.i32[2] = vadd_f32(v118, *(v71 + 8 * v183)).u32[0];
            v190 = vminq_f32(v187, v188);
            v191 = vmaxq_f32(v187, v188);
            LODWORD(v192) = v133 - 1;
            v193 = v188;
            v193.i32[2] = vadd_f32(v118, *(v71 + 8 * v185)).u32[0];
            v194 = vnegq_f32(vsubq_f32(v193, v189));
            do
            {
              v195 = v38[v192];
              v192 = v186;
              v196 = v38[v186];
              v197 = vorrq_s8(vcgtq_f32(v190, vmaxq_f32(v196, v195)), vcgtq_f32(vminq_f32(v196, v195), v191)).u64[0];
              if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v197, 0), vdupq_lane_s32(v197, 1)), v184)), *v72.f32).u32[0] != -1)
              {
                v198 = vsub_f32(*v196.f32, *v187.f32);
                v199 = vsub_f32(*v195.f32, *v187.f32);
                v200 = vsub_f32(vmul_lane_f32(vdup_lane_s32(v198, 0), v199, 1), vmul_n_f32(vdup_lane_s32(v198, 1), v199.f32[0]));
                v201 = vsub_f32(*v196.f32, *v188.f32);
                v202 = vsub_f32(*v195.f32, *v188.f32);
                v203 = vsub_f32(vmul_lane_f32(vdup_lane_s32(v201, 0), v202, 1), vmul_n_f32(vdup_lane_s32(v201, 1), v202.f32[0]));
                if (vmul_f32(v200, v203).f32[0] < 0.0)
                {
                  v204 = vsub_f32(*v187.f32, *v196.f32);
                  v205 = vsub_f32(*v188.f32, *v196.f32);
                  v206 = vsub_f32(vmul_lane_f32(v204, v205, 1), vmul_lane_f32(v205, v204, 1));
                  v207 = vsub_f32(*v187.f32, *v195.f32);
                  v208 = vsub_f32(*v188.f32, *v195.f32);
                  if (vmul_f32(v206, vsub_f32(vmul_lane_f32(v207, v208, 1), vmul_lane_f32(v208, v207, 1))).f32[0] < 0.0)
                  {
                    v209 = vsub_f32(v203, v200);
                    v210 = vrecpe_f32(v209);
                    v211 = 4;
                    do
                    {
                      v210 = vmul_f32(v210, vrecps_f32(v209, v210));
                      --v211;
                    }

                    while (v211);
                    v212 = vmlaq_n_f32(v189, v194, vmul_f32(v200, v210).f32[0]);
                    v213 = vsubq_f32(v212, v72);
                    if (*&v213.i32[2] <= COERCE_FLOAT(*v75))
                    {
                      v212.i64[1] = vextq_s8(v212, v212, 8uLL).u32[0];
                      v214 = v212;
                      v214.i32[2] = v72.i32[2];
                      v215 = vmulq_f32(v56, v212);
                      v215.i64[0] = vpaddq_f32(v215, v215).u64[0];
                      v216 = vmulq_f32(v55, v212);
                      v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
                      v217 = vmulq_f32(v54, v212);
                      v217.i64[0] = vpaddq_f32(v217, v217).u64[0];
                      v218 = vmulq_lane_f32(*a7, vpadd_f32(*v215.f32, *v215.f32), 1);
                      v218.i32[3] = 0;
                      v219 = vmulq_n_f32(a7[1], vpadd_f32(*v216.f32, *v216.f32).f32[0]);
                      v219.i32[3] = 0;
                      v220 = vmulq_n_f32(a7[2], vpadd_f32(*v217.f32, *v217.f32).f32[0]);
                      v220.i32[3] = 0;
                      v221 = vaddq_f32(a7[3], vaddq_f32(v220, vaddq_f32(v218, v219)));
                      v222 = vmulq_f32(v56, v214);
                      v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
                      v223 = vmulq_f32(v55, v214);
                      v223.i64[0] = vpaddq_f32(v223, v223).u64[0];
                      *v222.f32 = vext_s8(vpadd_f32(*v222.f32, *v222.f32), vpadd_f32(*v223.f32, *v223.f32), 4uLL);
                      v224 = vmulq_f32(v54, v214);
                      v224.i64[0] = vpaddq_f32(v224, v224).u64[0];
                      v222.i64[1] = vpadd_f32(*v224.f32, *v224.f32).u32[0];
                      v225 = v132;
                      v225.i32[3] = vdupq_laneq_s32(v213, 2).i32[3];
                      *(v76 + 48 * v74) = v221;
                      *(v76 + 48 * *a9 + 16) = v222;
                      v226 = (*a9)++;
                      *(v76 + 48 * v226 + 32) = v225;
                      v133 = a3[1].u8[2];
                      v74 = *a9;
                    }
                  }
                }
              }

              v186 = v192 + 1;
            }

            while (v192 + 1 < v133 && v74 < 0x40);
            v181 = a4[1].u8[2];
          }

          v182 = v183 + 1;
        }

        while (v183 + 1 < v181);
      }
    }
  }

  return result;
}

BOOL physx::Gu::generateFullContactManifold(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _DWORD *a6, float32x2_t *a7, float32x4_t *a8, float a9, float a10, float a11, float32x4_t *a12, float32x2_t *a13, char a14)
{
  v448 = *MEMORY[0x1E69E9840];
  v21 = a3[4];
  v22 = a4[4];
  v23 = *v21;
  v24 = v21[1];
  v25 = vnegq_f32(*v21);
  v26 = v25;
  v26.i32[3] = 0;
  v27 = *v22;
  v28 = v22[1];
  v29 = vsubq_f32(v28, v24);
  v30 = vdupq_laneq_s32(*v21, 3).u64[0];
  v31 = vmulq_n_f32(v29, vmla_f32(0xBF000000BF000000, v30, v30).f32[0]);
  v31.i32[3] = 0;
  v32 = vextq_s8(v26, v26, 8uLL).u64[0];
  v33 = vext_s8(*v25.f32, v32, 4uLL);
  v34 = vmls_f32(vmul_f32(*v25.f32, *&vextq_s8(v29, v29, 4uLL)), v33, *v29.f32);
  *v35.f32 = vext_s8(v34, vmls_f32(vmul_f32(v32, *v29.f32), *v25.f32, *&vextq_s8(v29, v29, 8uLL)), 4uLL);
  v35.i64[1] = v34.u32[0];
  v36 = vmlaq_laneq_f32(v31, v35, *v21, 3);
  v36.i64[1] = vextq_s8(v36, v36, 8uLL).u32[0];
  v37 = vmulq_f32(v26, v29);
  v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
  v38 = vmlaq_n_f32(v36, v26, vpadd_f32(*v37.f32, *v37.f32).f32[0]);
  v39 = vaddq_f32(v38, v38);
  v39.i32[3] = 0;
  v40 = *v22;
  v40.i32[3] = 0;
  *v37.f32 = vmul_f32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v27, v27, 8uLL));
  v41 = vmulq_f32(v26, v40);
  v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
  v42 = vsub_f32(*v37.f32, vpadd_f32(*v41.f32, *v41.f32));
  v41.i64[0] = vdupq_laneq_s32(*v22, 3).u64[0];
  v43 = vmulq_laneq_f32(v40, *v21, 3);
  v40.i64[0] = vextq_s8(v40, v40, 8uLL).u64[0];
  v44 = vmls_f32(vmul_f32(*v25.f32, vext_s8(*v22->f32, *v40.f32, 4uLL)), v33, *v22->f32);
  *v25.f32 = vext_s8(v44, vmls_f32(vmul_f32(v32, *v22->f32), *v25.f32, *v40.f32), 4uLL);
  *&v25.u32[2] = v44;
  _Q16 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v26, *v22, 3), v43), v25);
  *v26.f32 = vdup_lane_s32(*_Q16.f32, 1);
  v46 = vdup_laneq_s32(_Q16, 2);
  *v40.f32 = vdup_lane_s32(v42, 1);
  v446[3] = v39;
  v47 = vaddq_f32(_Q16, _Q16);
  v48 = vdup_lane_s32(vmul_f32(*_Q16.f32, *v47.f32), 0);
  v49 = vmul_lane_f32(*v26.f32, *v47.f32, 1);
  *v43.f32 = vmul_laneq_f32(v46, v47, 2);
  *v26.f32 = vmul_n_f32(*v26.f32, v47.f32[0]);
  v50 = vmul_n_f32(v46, v47.f32[0]);
  v51 = vmul_n_f32(*v40.f32, v47.f32[0]);
  v52 = vmul_lane_f32(v46, *v47.f32, 1);
  v53 = vmul_lane_f32(*v40.f32, *v47.f32, 1);
  *v47.f32 = vmul_laneq_f32(*v40.f32, v47, 2);
  __asm { FMOV            V16.2S, #1.0 }

  *v40.f32 = vsub_f32(*_Q16.f32, v48);
  *v58.f32 = vext_s8(vsub_f32(vsub_f32(*_Q16.f32, v49), *v43.f32), vadd_f32(*v26.f32, *v47.f32), 4uLL);
  v58.i64[1] = vsub_f32(v50, v53).u32[0];
  *v26.f32 = vext_s8(vsub_f32(*v26.f32, *v47.f32), vsub_f32(*v40.f32, *v43.f32), 4uLL);
  v26.i64[1] = vadd_f32(v52, v51).u32[0];
  v435 = v26;
  v436 = v58;
  v446[0] = v58;
  v446[1] = v26;
  *v26.f32 = vext_s8(vadd_f32(v50, v53), vsub_f32(v52, v51), 4uLL);
  v26.i64[1] = vsub_f32(*v40.f32, v49).u32[0];
  v434 = v26;
  v446[2] = v26;
  v59 = vnegq_f32(v27);
  v60 = vsubq_f32(v24, v28);
  v61 = v59;
  v61.i32[3] = 0;
  v62 = vmulq_n_f32(v60, vmla_f32(0xBF000000BF000000, *v41.f32, *v41.f32).f32[0]);
  v62.i32[3] = 0;
  v63 = vextq_s8(v61, v61, 8uLL).u64[0];
  *v40.f32 = vext_s8(*v59.f32, v63, 4uLL);
  v64 = vmls_f32(vmul_f32(*&vextq_s8(v60, v60, 4uLL), *v59.f32), *v40.f32, *v60.f32);
  *v41.f32 = vext_s8(v64, vmls_f32(vmul_f32(*v60.f32, v63), *v59.f32, *&vextq_s8(v60, v60, 8uLL)), 4uLL);
  v41.i64[1] = v64.u32[0];
  v65 = vmlaq_laneq_f32(v62, v41, v27, 3);
  v65.i64[1] = vextq_s8(v65, v65, 8uLL).u32[0];
  v66 = vmulq_f32(v60, v61);
  v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
  v67 = vmlaq_n_f32(v65, v61, vpadd_f32(*v66.f32, *v66.f32).f32[0]);
  v68 = vaddq_f32(v67, v67);
  v68.i32[3] = 0;
  v69 = v23;
  v69.i32[3] = 0;
  v70 = vmulq_f32(v69, v61);
  v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
  v71 = vmulq_laneq_f32(v61, v23, 3);
  v72 = vmulq_laneq_f32(v69, v27, 3);
  v69.i64[0] = vextq_s8(v69, v69, 8uLL).u64[0];
  v73 = vmls_f32(vmul_f32(vext_s8(*v23.f32, *v69.f32, 4uLL), *v59.f32), *v40.f32, *v23.f32);
  *v23.f32 = vext_s8(v73, vmls_f32(vmul_f32(*v23.f32, v63), *v59.f32, *v69.f32), 4uLL);
  *&v23.u32[2] = v73;
  v74 = vaddq_f32(vaddq_f32(v71, v72), v23);
  *v72.f32 = vdup_lane_s32(*v74.f32, 1);
  *v69.f32 = vdup_laneq_s32(v74, 2);
  v75 = vaddq_f32(v74, v74);
  v76 = vdup_laneq_s32(v75, 2);
  *v37.f32 = vsub_f32(*v37.f32, vpadd_f32(*v70.f32, *v70.f32));
  *v74.f32 = vdup_lane_s32(vmul_f32(*v74.f32, *v75.f32), 0);
  *v70.f32 = vmul_lane_f32(*v72.f32, *v75.f32, 1);
  *v40.f32 = vmul_laneq_f32(*v69.f32, v75, 2);
  *v72.f32 = vmul_n_f32(*v72.f32, v75.f32[0]);
  v77 = vmul_n_f32(*v69.f32, v75.f32[0]);
  *v59.f32 = vmul_lane_f32(vdup_lane_s32(*v75.f32, 0), *v37.f32, 1);
  *v69.f32 = vmul_lane_f32(*v69.f32, *v75.f32, 1);
  *v75.f32 = vmul_lane_f32(vdup_lane_s32(*v75.f32, 1), *v37.f32, 1);
  *v37.f32 = vmul_lane_f32(v76, *v37.f32, 1);
  *v74.f32 = vsub_f32(*_Q16.f32, *v74.f32);
  *v78.f32 = vext_s8(vsub_f32(vsub_f32(*_Q16.f32, *v70.f32), *v40.f32), vadd_f32(*v72.f32, *v37.f32), 4uLL);
  v78.i64[1] = vsub_f32(v77, *v75.f32).u32[0];
  *v79.f32 = vext_s8(vsub_f32(*v72.f32, *v37.f32), vsub_f32(*v74.f32, *v40.f32), 4uLL);
  v79.i64[1] = vadd_f32(*v69.f32, *v59.f32).u32[0];
  v445[0] = v78;
  v445[1] = v79;
  *v80.f32 = vext_s8(vadd_f32(v77, *v75.f32), vsub_f32(*v69.f32, *v59.f32), 4uLL);
  v80.i64[1] = vsub_f32(*v74.f32, *v70.f32).u32[0];
  v445[2] = v80;
  v445[3] = v68;
  v439 = v79;
  v440 = v78;
  v438 = v80;
  if (a14)
  {
    v444 = 0;
    v443 = vneg_f32(0x80000000800000);
    v447[0] = 0uLL;
    v442 = 0;
    if (physx::Gu::testFaceNormal(a1, a2, a3, a4, v445, v446, a7, &v443, &v442, v447, 0, &v444))
    {
      v441 = 0;
      v81 = physx::Gu::testFaceNormal(a2, a1, a4, a3, v446, v445, a7, &v443, &v441, v447, 1, &v444);
      result = 0;
      if (v81)
      {
        v83 = 0;
        v432 = v441;
        v431 = v442;
        while (1)
        {
          if (v83)
          {
            result = physx::Gu::testEdgeNormal(a1, a2, a3, a4, v445, v446, a7, &v443, v447, &v444);
            if (!result || v444 != 2)
            {
              return result;
            }
          }

          else
          {
            if (v444 == 1)
            {
              v197 = vmulq_n_f32(v436, v447[0].f32[0]);
              v197.i32[3] = 0;
              v198 = vmulq_lane_f32(v435, *v447[0].f32, 1);
              v198.i32[3] = 0;
              v199 = vmulq_laneq_f32(v434, v447[0], 2);
              v199.i32[3] = 0;
              v200 = *(a1 + 24);
              v201 = vaddq_f32(v199, vaddq_f32(v197, v198));
              v202 = a3[5];
              v203 = vmulq_f32(*v202, v201);
              v203.i64[0] = vpaddq_f32(v203, v203).u64[0];
              v204 = vmulq_f32(v202[1], v201);
              v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
              v205 = vmulq_f32(v201, v202[2]);
              v205.i64[0] = vpaddq_f32(v205, v205).u64[0];
              v206 = vpadd_f32(*v205.f32, *v205.f32).u32[0];
              *v207.f32 = vext_s8(vpadd_f32(*v203.f32, *v203.f32), vpadd_f32(*v204.f32, *v204.f32), 4uLL);
              v207.i64[1] = v206;
              v208 = *v200;
              v208.i32[3] = 0;
              v209 = vmulq_f32(v208, v207);
              v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
              v210 = vpadd_f32(*v209.f32, *v209.f32);
              v211 = *(a1 + 16);
              if (v211 < 2)
              {
                v212 = 0;
              }

              else
              {
                v212 = 0;
                v213 = (v200 + 20);
                for (i = 1; i != v211; ++i)
                {
                  v215 = *v213;
                  v213 = (v213 + 20);
                  v216 = v215;
                  v216.i32[3] = 0;
                  v217 = vmulq_f32(v216, v207);
                  v217.i64[0] = vpaddq_f32(v217, v217).u64[0];
                  v218 = vpadd_f32(*v217.f32, *v217.f32);
                  if (vcgt_f32(v210, v218).u8[0])
                  {
                    v212 = i;
                    v219 = -1;
                  }

                  else
                  {
                    v219 = 0;
                  }

                  v210 = vbsl_s8(vdup_n_s32(v219), v218, v210);
                }
              }

              v248 = *(a1 + 20);
              if (v248)
              {
                v249 = 0;
                v250 = vnegq_f32(v207);
                v250.i32[3] = 0;
                v251 = *(a1 + 48);
                v252 = vmul_f32(v210, v210);
                v253 = -1;
                do
                {
                  v254 = (v251 + (2 * v249));
                  v255 = *(v200 + 20 * *v254);
                  v255.i32[3] = 0;
                  v256 = *(v200 + 20 * v254[1]);
                  v256.i32[3] = 0;
                  v257 = vaddq_f32(v255, v256);
                  v258 = vmulq_f32(v257, v257);
                  v258.i64[0] = vpaddq_f32(v258, v258).u64[0];
                  v259 = vpadd_f32(*v258.f32, *v258.f32);
                  v260 = vmulq_f32(v250, v257);
                  v260.i64[0] = vpaddq_f32(v260, v260).u64[0];
                  v261 = vpadd_f32(*v260.f32, *v260.f32);
                  v262 = vmul_f32(v261, v261);
                  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v262, vmul_f32(v252, v259)), vcgez_f32(v261)), 0), *v250.f32).u32[0] == -1)
                  {
                    v263 = vrecpe_f32(v259);
                    v264 = 4;
                    do
                    {
                      v263 = vmul_f32(v263, vrecps_f32(v259, v263));
                      --v264;
                    }

                    while (v264);
                    v252 = vmul_f32(v262, v263);
                    v253 = v249;
                  }

                  ++v249;
                }

                while (v249 != v248);
                if (v253 != -1)
                {
                  v265 = (v251 + (2 * v253));
                  v266 = *v265;
                  v267 = *(v200 + 20 * *v265);
                  v212 = v265[1];
                  v267.i32[3] = 0;
                  v268 = *(v200 + 20 * v212);
                  v268.i32[3] = 0;
                  v269 = vmulq_f32(v250, v267);
                  v269.i64[0] = vpaddq_f32(v269, v269).u64[0];
                  v270 = vmulq_f32(v250, v268);
                  v270.i64[0] = vpaddq_f32(v270, v270).u64[0];
                  if (vcgt_f32(vpadd_f32(*v269.f32, *v269.f32), vpadd_f32(*v270.f32, *v270.f32)).u8[0])
                  {
                    v212 = v266;
                  }
                }
              }

              v196 = (*(a2 + 24) + 20 * v432);
              v195 = (v200 + 20 * v212);
              goto LABEL_89;
            }

            if (!v444)
            {
              v84 = vmulq_n_f32(v440, v447[0].f32[0]);
              v84.i32[3] = 0;
              v85 = vmulq_lane_f32(v439, *v447[0].f32, 1);
              v85.i32[3] = 0;
              v86 = vmulq_laneq_f32(v438, v447[0], 2);
              v86.i32[3] = 0;
              v87 = vaddq_f32(v86, vaddq_f32(v84, v85));
              v88 = *(a2 + 24);
              v89 = a4[5];
              v90 = vmulq_f32(*v89, v87);
              v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
              v91 = vmulq_f32(v87, v89[1]);
              v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
              v92 = vmulq_f32(v87, v89[2]);
              v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
              *v93.f32 = vext_s8(vpadd_f32(*v90.f32, *v90.f32), vpadd_f32(*v91.f32, *v91.f32), 4uLL);
              v93.i64[1] = vpadd_f32(*v92.f32, *v92.f32).u32[0];
              v94 = *v88;
              v94.i32[3] = 0;
              v95 = vmulq_f32(v94, v93);
              v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
              v96 = vpadd_f32(*v95.f32, *v95.f32);
              v97 = *(a2 + 16);
              if (v97 < 2)
              {
                v98 = 0;
              }

              else
              {
                v98 = 0;
                v99 = (v88 + 20);
                for (j = 1; j != v97; ++j)
                {
                  v101 = *v99;
                  v99 = (v99 + 20);
                  v102 = v101;
                  v102.i32[3] = 0;
                  v103 = vmulq_f32(v102, v93);
                  v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
                  v104 = vpadd_f32(*v103.f32, *v103.f32);
                  if (vcgt_f32(v96, v104).u8[0])
                  {
                    v98 = j;
                    v105 = -1;
                  }

                  else
                  {
                    v105 = 0;
                  }

                  v96 = vbsl_s8(vdup_n_s32(v105), v104, v96);
                }
              }

              v220 = *(a2 + 20);
              v433 = v87;
              if (v220)
              {
                v221 = 0;
                v222 = vnegq_f32(v93);
                v222.i32[3] = 0;
                v223 = *(a2 + 48);
                v224 = vmul_f32(v96, v96);
                v225 = -1;
                do
                {
                  v226 = (v223 + (2 * v221));
                  v227 = *(v88 + 20 * *v226);
                  v227.i32[3] = 0;
                  v228 = *(v88 + 20 * v226[1]);
                  v228.i32[3] = 0;
                  v229 = vaddq_f32(v227, v228);
                  v230 = vmulq_f32(v229, v229);
                  v230.i64[0] = vpaddq_f32(v230, v230).u64[0];
                  v231 = vpadd_f32(*v230.f32, *v230.f32);
                  v232 = vmulq_f32(v222, v229);
                  v232.i64[0] = vpaddq_f32(v232, v232).u64[0];
                  v233 = vpadd_f32(*v232.f32, *v232.f32);
                  v234 = vmul_f32(v233, v233);
                  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v234, vmul_f32(v224, v231)), vcgez_f32(v233)), 0), *v222.f32).u32[0] == -1)
                  {
                    v235 = vrecpe_f32(v231);
                    v236 = 4;
                    do
                    {
                      v235 = vmul_f32(v235, vrecps_f32(v231, v235));
                      --v236;
                    }

                    while (v236);
                    v224 = vmul_f32(v234, v235);
                    v225 = v221;
                  }

                  ++v221;
                }

                while (v221 != v220);
                if (v225 != -1)
                {
                  v237 = (v223 + (2 * v225));
                  v238 = *v237;
                  v239 = *(v88 + 20 * *v237);
                  v98 = v237[1];
                  v239.i32[3] = 0;
                  v240 = *(v88 + 20 * v98);
                  v240.i32[3] = 0;
                  v241 = vmulq_f32(v222, v239);
                  v241.i64[0] = vpaddq_f32(v241, v241).u64[0];
                  v242 = vmulq_f32(v222, v240);
                  v242.i64[0] = vpaddq_f32(v242, v242).u64[0];
                  if (vcgt_f32(vpadd_f32(*v241.f32, *v241.f32), vpadd_f32(*v242.f32, *v242.f32)).u8[0])
                  {
                    v98 = v238;
                  }
                }
              }

              physx::Gu::generatedContacts(a1, a2, (*(a1 + 24) + 20 * v431), (v88 + 20 * v98), a3, a4, v445, a5, a6, a7);
              if (*a6)
              {
                v243 = 0;
                v244 = vnegq_f32(v433);
                v245 = a5 + 32;
                do
                {
                  v246 = *(v245 - 32);
                  v247 = v244;
                  v247.i32[3] = *(v245 + 12);
                  *(v245 - 32) = *(v245 - 16);
                  *(v245 - 16) = v246;
                  *v245 = v247;
                  v245 += 48;
                  ++v243;
                }

                while (v243 < *a6);
              }

              goto LABEL_90;
            }
          }

          v106 = *(a1 + 24);
          v107 = vnegq_f32(v447[0]);
          v107.i32[3] = 0;
          v108 = a3[5];
          v109 = vmulq_f32(v107, *v108);
          v109.i64[0] = vpaddq_f32(v109, v109).u64[0];
          v110 = vmulq_f32(v107, v108[1]);
          v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
          v111 = vmulq_f32(v107, v108[2]);
          v111.i64[0] = vpaddq_f32(v111, v111).u64[0];
          v112 = vpadd_f32(*v111.f32, *v111.f32).u32[0];
          *v113.f32 = vext_s8(vpadd_f32(*v109.f32, *v109.f32), vpadd_f32(*v110.f32, *v110.f32), 4uLL);
          v113.i64[1] = v112;
          v114 = *v106;
          v114.i32[3] = 0;
          v115 = vmulq_f32(v114, v113);
          v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
          v116 = vpadd_f32(*v115.f32, *v115.f32);
          v117 = *(a1 + 16);
          if (v117 < 2)
          {
            v118 = 0;
          }

          else
          {
            v118 = 0;
            v119 = (v106 + 20);
            for (k = 1; k != v117; ++k)
            {
              v121 = *v119;
              v119 = (v119 + 20);
              v122 = v121;
              v122.i32[3] = 0;
              v123 = vmulq_f32(v122, v113);
              v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
              v124 = vpadd_f32(*v123.f32, *v123.f32);
              if (vcgt_f32(v116, v124).u8[0])
              {
                v118 = k;
                v125 = -1;
              }

              else
              {
                v125 = 0;
              }

              v116 = vbsl_s8(vdup_n_s32(v125), v124, v116);
            }
          }

          v126 = *(a1 + 20);
          if (v126)
          {
            v127 = 0;
            v128 = vnegq_f32(v113);
            v128.i32[3] = 0;
            v129 = *(a1 + 48);
            v130 = vmul_f32(v116, v116);
            v131 = -1;
            do
            {
              v132 = (v129 + (2 * v127));
              v133 = *(v106 + 20 * *v132);
              v133.i32[3] = 0;
              v134 = *(v106 + 20 * v132[1]);
              v134.i32[3] = 0;
              v135 = vaddq_f32(v133, v134);
              v136 = vmulq_f32(v135, v135);
              v136.i64[0] = vpaddq_f32(v136, v136).u64[0];
              v137 = vpadd_f32(*v136.f32, *v136.f32);
              v138 = vmulq_f32(v128, v135);
              v138.i64[0] = vpaddq_f32(v138, v138).u64[0];
              v139 = vpadd_f32(*v138.f32, *v138.f32);
              v140 = vmul_f32(v139, v139);
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v140, vmul_f32(v130, v137)), vcgez_f32(v139)), 0), *v447[0].f32).u32[0] == -1)
              {
                v141 = vrecpe_f32(v137);
                v142 = 4;
                do
                {
                  v141 = vmul_f32(v141, vrecps_f32(v137, v141));
                  --v142;
                }

                while (v142);
                v130 = vmul_f32(v140, v141);
                v131 = v127;
              }

              ++v127;
            }

            while (v127 != v126);
            if (v131 != -1)
            {
              v143 = (v129 + (2 * v131));
              v144 = *v143;
              v145 = *(v106 + 20 * *v143);
              v118 = v143[1];
              v145.i32[3] = 0;
              v146 = *(v106 + 20 * v118);
              v146.i32[3] = 0;
              v147 = vmulq_f32(v128, v145);
              v147.i64[0] = vpaddq_f32(v147, v147).u64[0];
              v148 = vmulq_f32(v128, v146);
              v148.i64[0] = vpaddq_f32(v148, v148).u64[0];
              if (vcgt_f32(vpadd_f32(*v147.f32, *v147.f32), vpadd_f32(*v148.f32, *v148.f32)).u8[0])
              {
                v118 = v144;
              }
            }
          }

          v149 = vmulq_n_f32(v440, v447[0].f32[0]);
          v149.i32[3] = 0;
          v150 = vmulq_lane_f32(v439, *v447[0].f32, 1);
          v150.i32[3] = 0;
          v151 = vmulq_laneq_f32(v438, v447[0], 2);
          v151.i32[3] = 0;
          v152 = *(a2 + 24);
          v153 = vaddq_f32(v151, vaddq_f32(v149, v150));
          v154 = a4[5];
          v155 = vmulq_f32(v153, *v154);
          v155.i64[0] = vpaddq_f32(v155, v155).u64[0];
          v156 = vmulq_f32(v153, v154[1]);
          v156.i64[0] = vpaddq_f32(v156, v156).u64[0];
          v157 = vmulq_f32(v153, v154[2]);
          v157.i64[0] = vpaddq_f32(v157, v157).u64[0];
          v158 = vpadd_f32(*v157.f32, *v157.f32).u32[0];
          *v159.f32 = vext_s8(vpadd_f32(*v155.f32, *v155.f32), vpadd_f32(*v156.f32, *v156.f32), 4uLL);
          v159.i64[1] = v158;
          v160 = *v152;
          v160.i32[3] = 0;
          v161 = vmulq_f32(v160, v159);
          v161.i64[0] = vpaddq_f32(v161, v161).u64[0];
          v162 = vpadd_f32(*v161.f32, *v161.f32);
          v163 = *(a2 + 16);
          if (v163 < 2)
          {
            v164 = 0;
          }

          else
          {
            v164 = 0;
            v165 = (v152 + 20);
            for (m = 1; m != v163; ++m)
            {
              v167 = *v165;
              v165 = (v165 + 20);
              v168 = v167;
              v168.i32[3] = 0;
              v169 = vmulq_f32(v168, v159);
              v169.i64[0] = vpaddq_f32(v169, v169).u64[0];
              v170 = vpadd_f32(*v169.f32, *v169.f32);
              if (vcgt_f32(v162, v170).u8[0])
              {
                v164 = m;
                v171 = -1;
              }

              else
              {
                v171 = 0;
              }

              v162 = vbsl_s8(vdup_n_s32(v171), v170, v162);
            }
          }

          v172 = *(a2 + 20);
          if (v172)
          {
            v173 = 0;
            v174 = vnegq_f32(v159);
            v174.i32[3] = 0;
            v175 = *(a2 + 48);
            v176 = vmul_f32(v162, v162);
            v177 = -1;
            do
            {
              v178 = (v175 + (2 * v173));
              v179 = *(v152 + 20 * *v178);
              v179.i32[3] = 0;
              v180 = *(v152 + 20 * v178[1]);
              v180.i32[3] = 0;
              v181 = vaddq_f32(v179, v180);
              v182 = vmulq_f32(v181, v181);
              v182.i64[0] = vpaddq_f32(v182, v182).u64[0];
              v183 = vpadd_f32(*v182.f32, *v182.f32);
              v184 = vmulq_f32(v174, v181);
              v184.i64[0] = vpaddq_f32(v184, v184).u64[0];
              v185 = vpadd_f32(*v184.f32, *v184.f32);
              v186 = vmul_f32(v185, v185);
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v186, vmul_f32(v176, v183)), vcgez_f32(v185)), 0), *v174.f32).u32[0] == -1)
              {
                v187 = vrecpe_f32(v183);
                v188 = 4;
                do
                {
                  v187 = vmul_f32(v187, vrecps_f32(v183, v187));
                  --v188;
                }

                while (v188);
                v176 = vmul_f32(v186, v187);
                v177 = v173;
              }

              ++v173;
            }

            while (v173 != v172);
            if (v177 != -1)
            {
              v189 = (v175 + (2 * v177));
              v190 = *v189;
              v191 = *(v152 + 20 * *v189);
              v164 = v189[1];
              v191.i32[3] = 0;
              v192 = *(v152 + 20 * v164);
              v192.i32[3] = 0;
              v193 = vmulq_f32(v174, v191);
              v193.i64[0] = vpaddq_f32(v193, v193).u64[0];
              v194 = vmulq_f32(v174, v192);
              v194.i64[0] = vpaddq_f32(v194, v194).u64[0];
              if (vcgt_f32(vpadd_f32(*v193.f32, *v193.f32), vpadd_f32(*v194.f32, *v194.f32)).u8[0])
              {
                v164 = v190;
              }
            }
          }

          v195 = (v106 + 20 * v118);
          v196 = (v152 + 20 * v164);
LABEL_89:
          physx::Gu::generatedContacts(a2, a1, v196, v195, a4, a3, v446, a5, a6, a7);
LABEL_90:
          v271 = v83 | (*a6 != 0);
          v83 = 1;
          if (v271)
          {
            return 1;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v272 = a11 * 0.01;
    v273 = a11 * 0.05;
    if ((a11 * 0.01) > a9)
    {
      a9 = a11 * 0.01;
    }

    if (v273 >= a9)
    {
      v274 = a9;
    }

    else
    {
      v274 = a11 * 0.05;
    }

    if (v272 <= a10)
    {
      v275 = a10;
    }

    else
    {
      v275 = v272;
    }

    if (v273 >= v275)
    {
      v276 = v275;
    }

    else
    {
      v276 = v273;
    }

    v277 = vnegq_f32(*a8);
    v278 = vmulq_f32(*a8, v78);
    v278.i64[0] = vpaddq_f32(v278, v278).u64[0];
    v279 = vpadd_f32(*v278.f32, *v278.f32);
    v280 = vmulq_f32(*a8, v79);
    v280.i64[0] = vpaddq_f32(v280, v280).u64[0];
    v281 = vpadd_f32(*v280.f32, *v280.f32);
    v282 = vmulq_f32(*a8, v80);
    v282.i64[0] = vpaddq_f32(v282, v282).u64[0];
    v283 = vpadd_f32(*v282.f32, *v282.f32).u32[0];
    v284 = a4[6];
    v286 = *v284;
    v285 = v284[1];
    v287 = v284[2];
    _Q19 = vaddq_f32(vaddq_f32(vmulq_n_f32(*v284, COERCE_FLOAT(*a13->f32)), vmulq_lane_f32(v285, *a13, 1)), vmulq_laneq_f32(v287, *a13->f32, 2));
    v289 = *(a2 + 24);
    _S22 = *(v289 + 8);
    __asm { FMLA            S17, S22, V19.S[2] }

    v292 = *(v289 + 12) + _S17;
    v293 = fabsf(v292);
    if (v292 < -v276)
    {
      v293 = 3.4028e38;
    }

    v447[0].f32[0] = v293;
    v294 = *(a2 + 16);
    if (v294 < 2)
    {
      v296 = 0;
      v295 = 0;
    }

    else
    {
      v295 = 0;
      v296 = 0;
      v297 = (v289 + 32);
      for (n = 1; n != v294; ++n)
      {
        v299 = *v297 + (((_Q19.f32[1] * *(v297 - 2)) + (_Q19.f32[0] * *(v297 - 3))) + (_Q19.f32[2] * *(v297 - 1)));
        v300 = fabsf(v299);
        if (v299 < -v276)
        {
          v300 = 3.4028e38;
        }

        v447[0].f32[n] = v300;
        if (v293 > v300)
        {
          v296 = n;
          v293 = v300;
        }

        if (v299 > v292)
        {
          v292 = v299;
          v295 = n;
        }

        v297 += 5;
      }
    }

    *v301.f32 = vext_s8(v279, v281, 4uLL);
    v277.i32[3] = 0;
    if (v293 != 3.4028e38)
    {
      v302 = *(v289 + 20 * v296);
      v302.i32[3] = 0;
      v303 = vmulq_f32(v286, v302);
      v303.i64[0] = vpaddq_f32(v303, v303).u64[0];
      v304 = vmulq_f32(v285, v302);
      v304.i64[0] = vpaddq_f32(v304, v304).u64[0];
      v305 = vmulq_f32(v287, v302);
      v305.i64[0] = vpaddq_f32(v305, v305).u64[0];
      v306 = vpadd_f32(*v305.f32, *v305.f32).u32[0];
      *v307.f32 = vext_s8(vpadd_f32(*v303.f32, *v303.f32), vpadd_f32(*v304.f32, *v304.f32), 4uLL);
      v307.i64[1] = v306;
      v308 = v296;
      *v303.f32 = vpadd_f32(vmul_f32(*v307.f32, *v307.f32), vmul_f32(*&v307.u32[2], *&v307.u32[2]));
      v309 = vpadd_f32(*v303.f32, *v303.f32);
      v310 = vrsqrte_f32(v309);
      v311 = 4;
      do
      {
        v310 = vmul_f32(v310, vrsqrts_f32(vmul_f32(v310, v310), v309));
        --v311;
      }

      while (v311);
      v312 = vbsl_s8(vdup_lane_s32(vceqz_f32(v309), 0), v309, vmul_f32(v309, v310));
      v313 = vrecpe_f32(v312);
      v314 = 4;
      do
      {
        v313 = vmul_f32(v313, vrecps_f32(v312, v313));
        --v314;
      }

      while (v314);
      if (v294)
      {
        v315 = 0;
        v316 = vmulq_n_f32(v307, v313.f32[0]);
        v316.i32[3] = 0;
        v317 = vmulq_f32(v277, v316);
        v317.i64[0] = vpaddq_f32(v317, v317).u64[0];
        v318 = vpadd_f32(*v317.f32, *v317.f32);
        v295 = v296;
        do
        {
          if (v315 != v308 && (v447[0].f32[v315] - v293) < v276)
          {
            v319 = *(v289 + 20 * v315);
            v319.i32[3] = 0;
            v320 = vmulq_f32(v286, v319);
            v320.i64[0] = vpaddq_f32(v320, v320).u64[0];
            v321 = vmulq_f32(v285, v319);
            v321.i64[0] = vpaddq_f32(v321, v321).u64[0];
            v322 = vmulq_f32(v287, v319);
            v322.i64[0] = vpaddq_f32(v322, v322).u64[0];
            v323 = vpadd_f32(*v322.f32, *v322.f32).u32[0];
            *v324.f32 = vext_s8(vpadd_f32(*v320.f32, *v320.f32), vpadd_f32(*v321.f32, *v321.f32), 4uLL);
            *&v324.u32[2] = v323;
            *v320.f32 = vpadd_f32(vmul_f32(*v324.f32, *v324.f32), vmul_f32(v323, v323));
            v325 = vpadd_f32(*v320.f32, *v320.f32);
            v326 = vrsqrte_f32(v325);
            v327 = 4;
            do
            {
              v326 = vmul_f32(v326, vrsqrts_f32(vmul_f32(v326, v326), v325));
              --v327;
            }

            while (v327);
            v328 = vbsl_s8(vdup_lane_s32(vceqz_f32(v325), 0), v325, vmul_f32(v325, v326));
            v329 = vrecpe_f32(v328);
            v330 = 4;
            do
            {
              v329 = vmul_f32(v329, vrecps_f32(v328, v329));
              --v330;
            }

            while (v330);
            v331 = vmulq_n_f32(v324, v329.f32[0]);
            v331.i32[3] = 0;
            v332 = vmulq_f32(v277, v331);
            v332.i64[0] = vpaddq_f32(v332, v332).u64[0];
            v333 = vpadd_f32(*v332.f32, *v332.f32);
            if (vcgt_f32(v318, v333).u8[0])
            {
              v295 = v315;
              v334 = -1;
            }

            else
            {
              v334 = 0;
            }

            v318 = vbsl_s8(vdup_n_s32(v334), v333, v318);
          }

          ++v315;
        }

        while (v315 != v294);
      }

      else
      {
        v295 = v296;
      }
    }

    v335 = vsubq_f32(*a12, v68);
    v336 = vmulq_f32(v335, v440);
    v336.i64[0] = vpaddq_f32(v336, v336).u64[0];
    _D18 = vpadd_f32(*v336.f32, *v336.f32);
    v338 = vmulq_f32(v335, v439);
    v338.i64[0] = vpaddq_f32(v338, v338).u64[0];
    LODWORD(v339) = vpadd_f32(*v338.f32, *v338.f32).u32[0];
    v340 = vmulq_f32(v335, v438);
    v340.i64[0] = vpaddq_f32(v340, v340).u64[0];
    LODWORD(v341) = vpadd_f32(*v340.f32, *v340.f32).u32[0];
    v342 = a3[6];
    v344 = *v342;
    v343 = v342[1];
    v345 = v342[2];
    _Q19 = vaddq_f32(vmulq_n_f32(v345, v341), vaddq_f32(vmulq_lane_f32(*v342, _D18, 1), vmulq_n_f32(v343, v339)));
    v347 = *(a1 + 24);
    _S22 = *(v347 + 8);
    __asm { FMLA            S18, S22, V19.S[2] }

    v349 = *(v347 + 12) + _D18.f32[0];
    v350 = fabsf(v349);
    if (v349 < -v274)
    {
      v350 = 3.4028e38;
    }

    v447[0].f32[0] = v350;
    v351 = *(a1 + 16);
    if (v351 < 2)
    {
      v353 = 0;
      v352 = 0;
    }

    else
    {
      v352 = 0;
      v353 = 0;
      v354 = (v347 + 32);
      for (ii = 1; ii != v351; ++ii)
      {
        v356 = *v354 + (((_Q19.f32[1] * *(v354 - 2)) + (_Q19.f32[0] * *(v354 - 3))) + (_Q19.f32[2] * *(v354 - 1)));
        v357 = fabsf(v356);
        if (v356 < -v274)
        {
          v357 = 3.4028e38;
        }

        v447[0].f32[ii] = v357;
        if (v350 > v357)
        {
          v353 = ii;
          v350 = v357;
        }

        if (v356 > v349)
        {
          v349 = v356;
          v352 = ii;
        }

        v354 += 5;
      }
    }

    v301.i64[1] = v283;
    if (v350 != 3.4028e38)
    {
      v358 = *(v347 + 20 * v353);
      v358.i32[3] = 0;
      v359 = vmulq_f32(v344, v358);
      v359.i64[0] = vpaddq_f32(v359, v359).u64[0];
      v360 = vmulq_f32(v343, v358);
      v360.i64[0] = vpaddq_f32(v360, v360).u64[0];
      v361 = vmulq_f32(v345, v358);
      v361.i64[0] = vpaddq_f32(v361, v361).u64[0];
      v362 = vpadd_f32(*v361.f32, *v361.f32).u32[0];
      *v363.f32 = vext_s8(vpadd_f32(*v359.f32, *v359.f32), vpadd_f32(*v360.f32, *v360.f32), 4uLL);
      v363.i64[1] = v362;
      v364 = v353;
      *v359.f32 = vpadd_f32(vmul_f32(*v363.f32, *v363.f32), vmul_f32(*&v363.u32[2], *&v363.u32[2]));
      v365 = vpadd_f32(*v359.f32, *v359.f32);
      v366 = vrsqrte_f32(v365);
      v367 = 4;
      do
      {
        v366 = vmul_f32(v366, vrsqrts_f32(vmul_f32(v366, v366), v365));
        --v367;
      }

      while (v367);
      v368 = vbsl_s8(vdup_lane_s32(vceqz_f32(v365), 0), v365, vmul_f32(v365, v366));
      v369 = vrecpe_f32(v368);
      v370 = 4;
      do
      {
        v369 = vmul_f32(v369, vrecps_f32(v368, v369));
        --v370;
      }

      while (v370);
      if (v351)
      {
        v371 = 0;
        v372 = vmulq_n_f32(v363, v369.f32[0]);
        v372.i32[3] = 0;
        v373 = vmulq_f32(v372, v301);
        v373.i64[0] = vpaddq_f32(v373, v373).u64[0];
        v374 = vpadd_f32(*v373.f32, *v373.f32);
        v352 = v353;
        do
        {
          if (v371 != v364 && (v447[0].f32[v371] - v350) < v274)
          {
            v375 = *(v347 + 20 * v371);
            v375.i32[3] = 0;
            v376 = vmulq_f32(v344, v375);
            v376.i64[0] = vpaddq_f32(v376, v376).u64[0];
            v377 = vmulq_f32(v343, v375);
            v377.i64[0] = vpaddq_f32(v377, v377).u64[0];
            v378 = vmulq_f32(v345, v375);
            v378.i64[0] = vpaddq_f32(v378, v378).u64[0];
            v379 = vpadd_f32(*v378.f32, *v378.f32).u32[0];
            *v380.f32 = vext_s8(vpadd_f32(*v376.f32, *v376.f32), vpadd_f32(*v377.f32, *v377.f32), 4uLL);
            *&v380.u32[2] = v379;
            *v376.f32 = vpadd_f32(vmul_f32(*v380.f32, *v380.f32), vmul_f32(v379, v379));
            v381 = vpadd_f32(*v376.f32, *v376.f32);
            v382 = vrsqrte_f32(v381);
            v383 = 4;
            do
            {
              v382 = vmul_f32(v382, vrsqrts_f32(vmul_f32(v382, v382), v381));
              --v383;
            }

            while (v383);
            v384 = vbsl_s8(vdup_lane_s32(vceqz_f32(v381), 0), v381, vmul_f32(v381, v382));
            v385 = vrecpe_f32(v384);
            v386 = 4;
            do
            {
              v385 = vmul_f32(v385, vrecps_f32(v384, v385));
              --v386;
            }

            while (v386);
            v387 = vmulq_n_f32(v380, v385.f32[0]);
            v387.i32[3] = 0;
            v388 = vmulq_f32(v387, v301);
            v388.i64[0] = vpaddq_f32(v388, v388).u64[0];
            v389 = vpadd_f32(*v388.f32, *v388.f32);
            if (vcgt_f32(v374, v389).u8[0])
            {
              v352 = v371;
              v390 = -1;
            }

            else
            {
              v390 = 0;
            }

            v374 = vbsl_s8(vdup_n_s32(v390), v389, v374);
          }

          ++v371;
        }

        while (v371 != v351);
      }

      else
      {
        v352 = v353;
      }
    }

    v391 = (v289 + 20 * v295);
    v392.i64[0] = v391->i64[0];
    v392.i64[1] = v391->u32[2];
    v393 = vmulq_f32(v286, v392);
    v393.i64[0] = vpaddq_f32(v393, v393).u64[0];
    v394 = vmulq_f32(v285, v392);
    v394.i64[0] = vpaddq_f32(v394, v394).u64[0];
    v395 = vmulq_f32(v287, v392);
    v395.i64[0] = vpaddq_f32(v395, v395).u64[0];
    v396 = vpadd_f32(*v395.f32, *v395.f32).u32[0];
    *v397.f32 = vext_s8(vpadd_f32(*v393.f32, *v393.f32), vpadd_f32(*v394.f32, *v394.f32), 4uLL);
    v397.i64[1] = v396;
    v398 = vpadd_f32(vmul_f32(*v397.f32, *v397.f32), vmul_f32(*&v397.u32[2], *&v397.u32[2]));
    v399 = vpadd_f32(v398, v398);
    v400 = vrsqrte_f32(v399);
    v401 = 4;
    do
    {
      v400 = vmul_f32(v400, vrsqrts_f32(vmul_f32(v400, v400), v399));
      --v401;
    }

    while (v401);
    v402 = vbsl_s8(vdup_lane_s32(vceqz_f32(v399), 0), v399, vmul_f32(v399, v400));
    v403 = vrecpe_f32(v402);
    v404 = 4;
    do
    {
      v403 = vmul_f32(v403, vrecps_f32(v402, v403));
      --v404;
    }

    while (v404);
    v405 = v347 + 20 * v352;
    v406.i64[0] = *v405;
    v406.i64[1] = *(v405 + 8);
    v407 = vmulq_f32(v344, v406);
    v407.i64[0] = vpaddq_f32(v407, v407).u64[0];
    v408 = vmulq_f32(v343, v406);
    v408.i64[0] = vpaddq_f32(v408, v408).u64[0];
    v409 = vmulq_f32(v345, v406);
    v409.i64[0] = vpaddq_f32(v409, v409).u64[0];
    v410 = vpadd_f32(*v409.f32, *v409.f32).u32[0];
    *v411.f32 = vext_s8(vpadd_f32(*v407.f32, *v407.f32), vpadd_f32(*v408.f32, *v408.f32), 4uLL);
    v411.i64[1] = v410;
    *v407.f32 = vpadd_f32(vmul_f32(*v411.f32, *v411.f32), vmul_f32(*&v411.u32[2], *&v411.u32[2]));
    v412 = vpadd_f32(*v407.f32, *v407.f32);
    v413 = vrsqrte_f32(v412);
    v414 = 4;
    do
    {
      v413 = vmul_f32(v413, vrsqrts_f32(vmul_f32(v413, v413), v412));
      --v414;
    }

    while (v414);
    v415 = vbsl_s8(vdup_lane_s32(vceqz_f32(v412), 0), v412, vmul_f32(v412, v413));
    v416 = vrecpe_f32(v415);
    v417 = 4;
    do
    {
      v416 = vmul_f32(v416, vrecps_f32(v415, v416));
      --v417;
    }

    while (v417);
    v418 = vmulq_n_f32(v397, v403.f32[0]);
    v418.i32[3] = 0;
    v419 = vmulq_n_f32(v411, v416.f32[0]);
    v420 = v419;
    v420.i32[3] = 0;
    v421 = vmulq_f32(v277, v418);
    v421.i64[0] = vpaddq_f32(v421, v421).u64[0];
    v422 = vmulq_f32(v420, v301);
    v422.i64[0] = vpaddq_f32(v422, v422).u64[0];
    if (vcage_f32(vpadd_f32(*v421.f32, *v421.f32), vpadd_f32(*v422.f32, *v422.f32)).u8[0])
    {
      physx::Gu::generatedContacts(a2, a1, v391, (v347 + 20 * v352), a4, a3, v446, a5, a6, a7);
    }

    else
    {
      v437 = v419;
      physx::Gu::generatedContacts(a1, a2, (v347 + 20 * v352), v391, a3, a4, v445, a5, a6, a7);
      if (*a6)
      {
        v423 = 0;
        v424 = vmulq_n_f32(v440, v437.f32[0]);
        v424.i32[3] = 0;
        v425 = vmulq_lane_f32(v439, *v437.f32, 1);
        v425.i32[3] = 0;
        v426 = vmulq_laneq_f32(v438, v437, 2);
        v426.i32[3] = 0;
        v427 = vnegq_f32(vaddq_f32(v426, vaddq_f32(v424, v425)));
        v428 = a5 + 32;
        do
        {
          v429 = *(v428 - 32);
          v430 = v427;
          v430.i32[3] = *(v428 + 12);
          *(v428 - 32) = *(v428 - 16);
          *(v428 - 16) = v429;
          *v428 = v430;
          v428 += 48;
          ++v423;
        }

        while (v423 < *a6);
      }
    }

    return 1;
  }

  return result;
}

uint64_t physx::Gu::testFaceNormal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, float32x2_t *a7, void *a8, _DWORD *a9, int8x16_t *a10, int a11, _DWORD *a12)
{
  v13 = *a10;
  v14 = *(a1 + 16);
  if (v14)
  {
    v20 = 0;
    v21 = 0;
    v22 = vmulq_n_f32(*a6, COERCE_FLOAT(*a2));
    v22.i32[3] = 0;
    v23 = vmulq_n_f32(a6[1], COERCE_FLOAT(*(a2 + 4)));
    v23.i32[3] = 0;
    v24 = a6[3];
    v25 = vmulq_n_f32(a6[2], COERCE_FLOAT(*(a2 + 8)));
    v25.i32[3] = 0;
    v26 = vaddq_f32(v24, vaddq_f32(vaddq_f32(v22, v23), v25));
    v27 = vdup_lane_s32(*(a2 + 64), 0);
    v28.i32[0] = HIDWORD(*(a2 + 64));
    v28.i32[1] = *(a2 + 72);
    v28.i64[1] = *(a2 + 76);
    v29 = vnegq_f32(v28);
    v29.i32[3] = 0;
    v75 = 0;
    v76[0] = 0;
    *&v12 = vneg_f32(0x80000000800000);
    v69 = v26;
    v70 = v24;
    v67 = v29;
    v68 = v28;
    while (1)
    {
      v30 = *(a1 + 24) + 20 * v20;
      v31 = *(a1 + 32) + 12 * *(v30 + 19);
      v32.i64[0] = *v31;
      v33 = *(v31 + 8);
      v34.i64[0] = *v30;
      v34.i64[1] = *(v30 + 8);
      v35 = *(a3 + 48);
      v36 = vmulq_f32(v34, *v35);
      v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
      v37 = vmulq_f32(v34, v35[1]);
      v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
      v40 = vpadd_f32(*v37.f32, *v37.f32);
      v38 = vmulq_f32(v34, v35[2]);
      v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
      *v39.f32 = vext_s8(vpadd_f32(*v36.f32, *v36.f32), v40, 4uLL);
      v39.i64[1] = vpadd_f32(*v38.f32, *v38.f32).u32[0];
      v40.i32[0] = *(v30 + 12);
      *v38.f32 = vpadd_f32(vmul_f32(*v39.f32, *v39.f32), vmul_f32(*&v39.u32[2], *&v39.u32[2]));
      v41 = vpadd_f32(*v38.f32, *v38.f32);
      v42 = vrsqrte_f32(v41);
      v43 = 4;
      do
      {
        v42 = vmul_f32(v42, vrsqrts_f32(vmul_f32(v42, v42), v41));
        --v43;
      }

      while (v43);
      v44 = vbsl_s8(vdup_lane_s32(vceqz_f32(v41), 0), v41, vmul_f32(v41, v42));
      v45 = vrecpe_f32(v44);
      v46 = 4;
      do
      {
        v45 = vmul_f32(v45, vrecps_f32(v44, v45));
        --v46;
      }

      while (v46);
      v32.i64[1] = v33;
      v47 = vmulq_f32(v32, v34);
      v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
      v48 = vmul_f32(v45, vpadd_f32(*v47.f32, *v47.f32));
      *v47.f32 = vneg_f32(vdup_lane_s32(v40, 0));
      v49 = vmulq_n_f32(v39, v45.f32[0]);
      v50 = vmulq_n_f32(*a5, v49.f32[0]);
      v51 = vmulq_lane_f32(a5[1], *v49.f32, 1);
      v52 = vmulq_laneq_f32(a5[2], v49, 2);
      v53 = v49;
      v53.i32[3] = 0;
      v50.i32[3] = 0;
      v54 = vmul_f32(v45, *v47.f32);
      v51.i32[3] = 0;
      v52.i32[3] = 0;
      v74 = vaddq_f32(vaddq_f32(v50, v51), v52);
      v55 = vmulq_f32(v74, vbslq_s8(vcgtzq_f32(v74), v28, v29));
      v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
      *v55.f32 = vmax_f32(vpadd_f32(*v55.f32, *v55.f32), v27);
      v56 = vmulq_f32(v26, v53);
      v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
      *v56.f32 = vpadd_f32(*v56.f32, *v56.f32);
      if ((vcgt_f32(vsub_f32(vmin_f32(v54, vadd_f32(*v55.f32, *v56.f32)), vmax_f32(v48, vsub_f32(*v56.f32, *v55.f32))), *&v12).u8[0] & 1) == 0)
      {
        v72 = v12;
        v73 = v13;
        v71 = v53;
        v57 = vmulq_f32(v70, v53);
        v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
        v58 = vpadd_f32(*v57.f32, *v57.f32);
        (*(*a4 + 24))(a4, &v74, v76, &v75);
        v59 = vadd_f32(v58, v76[0]);
        v75 = vadd_f32(v58, v75);
        v76[0] = v59;
        if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v59, vadd_f32(v54, *a7)), vcgt_f32(v48, vadd_f32(v75, *a7))), 0), v59).u32[0] == -1)
        {
          return 0;
        }

        v60 = vsub_f32(v54, v59);
        *(&v12 + 1) = *(&v72 + 1);
        v61 = vcgt_f32(*&v72, v60).u8[0];
        v62 = (v61 & 1) == 0;
        if (v61)
        {
          v63 = -1;
        }

        else
        {
          v63 = 0;
        }

        v64 = vdupq_n_s32(v63);
        v13 = vbslq_s8(v64, v71, v73);
        if (!v62)
        {
          v21 = v20;
        }

        *&v12 = vbsl_s8(*v64.i8, v60, *&v72);
        v14 = *(a1 + 16);
        v28 = v68;
        v26 = v69;
        v29 = v67;
      }

      if (++v20 >= v14)
      {
        goto LABEL_18;
      }
    }
  }

  v21 = 0;
  *&v12 = vneg_f32(0x80000000800000);
LABEL_18:
  if (COERCE_FLOAT(*a8) > *&v12)
  {
    *a10 = v13;
    *a8 = v12;
    *a12 = a11;
  }

  *a9 = v21;
  return 1;
}

BOOL physx::Gu::testEdgeNormal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, _DWORD *a10)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v86 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v11;
  v100 = 0;
  v101[0] = 0;
  v98 = 0;
  v99 = 0;
  v24 = *v11;
  v24.i64[1] = *(v11 + 8);
  v25 = vmulq_n_f32(*v13, COERCE_FLOAT(*v21));
  v25.i32[3] = 0;
  v26 = vmulq_n_f32(v13[1], COERCE_FLOAT(*(v21 + 4)));
  v26.i32[3] = 0;
  v27 = vmulq_n_f32(v13[2], COERCE_FLOAT(*(v21 + 8)));
  v27.i32[3] = 0;
  v85 = v13[3];
  v28 = vsubq_f32(vaddq_f32(v85, vaddq_f32(vaddq_f32(v25, v26), v27)), v24);
  v81 = *(v21 + 64);
  v25.i32[0] = v81.i32[1];
  v25.i32[1] = *(v21 + 72);
  v25.i64[1] = *(v21 + 76);
  v88 = v25;
  v89 = v28;
  v79 = *(v11 + 64);
  v26.i32[0] = v79.i32[1];
  v26.i32[1] = *(v11 + 72);
  v26.i64[1] = *(v11 + 76);
  v87 = v26;
  v78 = v29;
  v30 = *v29;
  v97 = v28;
  *v31.i64 = (*(*v19 + 16))(v19, &v97);
  v83 = v31;
  v32 = vnegq_f32(v97);
  v33 = vmulq_n_f32(*v16, v32.f32[0]);
  v33.i32[3] = 0;
  v34 = vmulq_lane_f32(v16[1], *v32.f32, 1);
  v34.i32[3] = 0;
  v35 = vmulq_laneq_f32(v16[2], v32, 2);
  v35.i32[3] = 0;
  v96 = vaddq_f32(vaddq_f32(v33, v34), v35);
  *v36.i64 = (*(*v18 + 16))(v18, &v96);
  v37 = vmulq_n_f32(*v16, v83.f32[0]);
  v37.i32[3] = 0;
  v38 = vmulq_lane_f32(v16[1], *v83.f32, 1);
  v38.i32[3] = 0;
  v39 = vmulq_laneq_f32(v16[2], v83, 2);
  v39.i32[3] = 0;
  v40 = vaddq_f32(v16[3], vaddq_f32(vaddq_f32(v37, v38), v39));
  v41 = vmulq_n_f32(*v14, v36.f32[0]);
  v41.i32[3] = 0;
  v42 = vmulq_lane_f32(v14[1], *v36.f32, 1);
  v42.i32[3] = 0;
  v43 = vmulq_laneq_f32(v14[2], v36, 2);
  v43.i32[3] = 0;
  v94 = vaddq_f32(v14[3], vaddq_f32(vaddq_f32(v41, v42), v43));
  v95 = v40;
  v93[0] = 0;
  v92[0] = 0;
  physx::Gu::buildPartialHull(v23, v20, v93, &v94, v97);
  physx::Gu::buildPartialHull(v22, v18, v92, &v95, v96);
  v80 = v93[0];
  if (v93[0])
  {
    v44 = 0;
    v45 = 0;
    v46 = vdup_lane_s32(v81, 0);
    v48 = v87;
    v47 = v88;
    v49 = vnegq_f32(v88);
    v49.i32[3] = 0;
    v50 = vdup_lane_s32(v79, 0);
    v51 = vnegq_f32(v87);
    v51.i32[3] = 0;
    v52 = v92[0];
    v82 = v51;
    v84 = v49;
    do
    {
      if (v52)
      {
        v53 = 0;
        v54 = &v93[3 * v44 + 1];
        v55 = *v54;
        v10.i32[0] = v54[1].i32[0];
        v56 = vext_s8(*v54, v10, 4uLL);
        do
        {
          v57 = &v92[3 * v53 + 1];
          v58 = vmulq_n_f32(*v14, *v57);
          v58.i32[3] = 0;
          v59 = vmulq_n_f32(v14[1], v57[1]);
          v59.i32[3] = 0;
          v60 = vmulq_n_f32(v14[2], v57[2]);
          v60.i32[3] = 0;
          v61 = vaddq_f32(vaddq_f32(v58, v59), v60);
          v62 = vmls_f32(vmul_f32(v55, *&vextq_s8(v61, v61, 4uLL)), v56, *v61.f32);
          *v61.f32 = vext_s8(v62, vmls_f32(vmul_f32(v10, *v61.f32), v55, *&vextq_s8(v61, v61, 8uLL)), 4uLL);
          v62.i32[1] = 0;
          *v59.f32 = vpadd_f32(vmul_f32(*v61.f32, *v61.f32), vmul_f32(v62.u32[0], v62.u32[0]));
          v63 = vpadd_f32(*v59.f32, *v59.f32);
          if (v63.f32[0] >= 0.00000011921)
          {
            *&v61.u32[2] = v62;
            v64 = vrsqrte_f32(v63);
            v65 = 4;
            do
            {
              v64 = vmul_f32(v64, vrsqrts_f32(vmul_f32(v64, v64), v63));
              --v65;
            }

            while (v65);
            v66 = vmulq_n_f32(v61, v64.f32[0]);
            v67 = vmulq_n_f32(*v16, v66.f32[0]);
            v68 = vmulq_lane_f32(v16[1], *v66.f32, 1);
            v69 = vmulq_laneq_f32(v16[2], v66, 2);
            v66.i32[3] = 0;
            v67.i32[3] = 0;
            v68.i32[3] = 0;
            v69.i32[3] = 0;
            v90 = vaddq_f32(vaddq_f32(v67, v68), v69);
            v91 = v66;
            v70 = vmulq_f32(v90, vbslq_s8(vcgtzq_f32(v90), v47, v49));
            v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
            *v70.f32 = vmax_f32(vpadd_f32(*v70.f32, *v70.f32), v46);
            v71 = vmulq_f32(v89, v66);
            v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
            *v71.f32 = vpadd_f32(*v71.f32, *v71.f32);
            v72 = vmulq_f32(v66, vbslq_s8(vcgtzq_f32(v66), v48, v51));
            v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
            *v72.f32 = vmax_f32(vpadd_f32(*v72.f32, *v72.f32), v50);
            if ((vcgt_f32(vsub_f32(vmin_f32(*v72.f32, vadd_f32(*v70.f32, *v71.f32)), vmax_f32(vneg_f32(*v72.f32), vsub_f32(*v71.f32, *v70.f32))), v30).u32[0] & 1) == 0)
            {
              (*(*v20 + 24))(v20, &v91, v101, &v100);
              v73 = vmulq_f32(v85, v91);
              v73.i64[0] = vpaddq_f32(v73, v73).u64[0];
              v74 = vpadd_f32(*v73.f32, *v73.f32);
              (*(*v18 + 24))(v18, &v90, &v99, &v98);
              v75 = vadd_f32(v74, v99);
              v98 = vadd_f32(v74, v98);
              v99 = v75;
              if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v75, vadd_f32(v100, *v86)), vcgt_f32(v101[0], vadd_f32(v98, *v86))), 0), v75).u32[0] == -1)
              {
                return v45;
              }

              v76 = vsub_f32(v100, v75);
              v48 = v87;
              v47 = v88;
              v51 = v82;
              v49 = v84;
              if (vcgt_f32(v30, v76).u8[0])
              {
                *a9 = v91;
                *a10 = 2;
                v30 = v76;
              }
            }
          }

          ++v53;
        }

        while (v53 != v52);
      }

      v45 = ++v44 >= v80;
    }

    while (v44 != v80);
  }

  *v78 = v30;
  return 1;
}

uint64_t physx::Gu::addGJKEPAContacts(uint64_t a1, uint64_t a2, float32x4_t *a3, int a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, float32x2_t a8)
{
  if (a4 == 2)
  {
    goto LABEL_11;
  }

  if (a4 != 4)
  {
    v27 = 1;
    if (physx::Gu::epaPenetration(a1) != 5)
    {
      return v27;
    }

LABEL_11:
    physx::Gu::addManifoldPoint(a5, a7, a6, a3, a8);
    return 0;
  }

  v14 = vmulq_f32(a6[2], a6[3]);
  v14.i64[0] = vpaddq_f32(v14, v14).u64[0];
  if (vpadd_f32(*v14.f32, *v14.f32).f32[0] > 0.9999)
  {
    v30 = a6[2];
    *v15.i64 = (*(*a1 + 32))(a1);
    v29 = v15;
    *v16.i64 = (*(*a2 + 32))(a2);
    v17 = vsubq_f32(v29, v16);
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
    v25 = vmulq_n_f32(v17, v23.f32[0]);
    v25.i32[3] = 0;
    v26 = vmulq_f32(v30, v25);
    v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
    if (vpadd_f32(*v26.f32, *v26.f32).f32[0] > 0.707)
    {
      goto LABEL_11;
    }
  }

  return 1;
}

uint64_t physx::Gu::computeMTD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5, float32x4_t *a6)
{
  v12 = *(a3 + 32);
  v13 = *(a4 + 32);
  v14 = *v12;
  v15 = v12[1];
  v16 = vnegq_f32(*v12);
  v17 = *v13;
  v18 = v13[1];
  v19 = vsubq_f32(v18, v15);
  v20 = v16;
  v20.i32[3] = 0;
  v21 = vdupq_laneq_s32(*v12, 3).u64[0];
  v22 = vmulq_n_f32(v19, vmla_f32(0xBF000000BF000000, v21, v21).f32[0]);
  v22.i32[3] = 0;
  v23 = vextq_s8(v20, v20, 8uLL).u64[0];
  v24 = vext_s8(*v16.f32, v23, 4uLL);
  v25 = vmls_f32(vmul_f32(*v16.f32, *&vextq_s8(v19, v19, 4uLL)), v24, *v19.f32);
  *v26.f32 = vext_s8(v25, vmls_f32(vmul_f32(v23, *v19.f32), *v16.f32, *&vextq_s8(v19, v19, 8uLL)), 4uLL);
  v26.i64[1] = v25.u32[0];
  v27 = vmlaq_laneq_f32(v22, v26, *v12, 3);
  v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
  v28 = vmulq_f32(v20, v19);
  v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
  v29 = vmlaq_n_f32(v27, v20, vpadd_f32(*v28.f32, *v28.f32).f32[0]);
  v30 = vaddq_f32(v29, v29);
  v30.i32[3] = 0;
  v31 = *v13;
  v31.i32[3] = 0;
  *v28.f32 = vmul_f32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v17, v17, 8uLL));
  v32 = vmulq_f32(v20, v31);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vpadd_f32(*v32.f32, *v32.f32);
  v32.i64[0] = vdupq_laneq_s32(*v13, 3).u64[0];
  v34 = vmulq_laneq_f32(v31, *v12, 3);
  v31.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
  v35 = vmls_f32(vmul_f32(*v16.f32, vext_s8(*v13->f32, *v31.f32, 4uLL)), v24, *v13->f32);
  *v16.f32 = vext_s8(v35, vmls_f32(vmul_f32(v23, *v13->f32), *v16.f32, *v31.f32), 4uLL);
  *&v16.u32[2] = v35;
  _Q5 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v20, *v13, 3), v34), v16);
  *v20.f32 = vdup_lane_s32(*_Q5.f32, 1);
  v37 = vdup_laneq_s32(_Q5, 2);
  *v31.f32 = vdup_lane_s32(vsub_f32(*v28.f32, v33), 1);
  v38 = vaddq_f32(_Q5, _Q5);
  v39 = vdup_lane_s32(vmul_f32(*_Q5.f32, *v38.f32), 0);
  *v34.f32 = vmul_lane_f32(*v20.f32, *v38.f32, 1);
  v40 = vmul_laneq_f32(v37, v38, 2);
  *v20.f32 = vmul_n_f32(*v20.f32, v38.f32[0]);
  v41 = vmul_n_f32(v37, v38.f32[0]);
  v42 = vmul_n_f32(*v31.f32, v38.f32[0]);
  v43 = vmul_lane_f32(v37, *v38.f32, 1);
  v44 = vmul_lane_f32(*v31.f32, *v38.f32, 1);
  *v31.f32 = vmul_laneq_f32(*v31.f32, v38, 2);
  __asm { FMOV            V5.2S, #1.0 }

  *v38.f32 = vext_s8(vsub_f32(vsub_f32(*_Q5.f32, *v34.f32), v40), vadd_f32(*v20.f32, *v31.f32), 4uLL);
  v38.i64[1] = vsub_f32(v41, v44).u32[0];
  v49 = vsub_f32(*_Q5.f32, v39);
  *v20.f32 = vext_s8(vsub_f32(*v20.f32, *v31.f32), vsub_f32(v49, v40), 4uLL);
  v20.i64[1] = vadd_f32(v43, v42).u32[0];
  *v50.f32 = vext_s8(vadd_f32(v41, v44), vsub_f32(v43, v42), 4uLL);
  v50.i64[1] = vsub_f32(v49, *v34.f32).u32[0];
  v101[0] = v38;
  v101[1] = v20;
  v51 = vnegq_f32(v17);
  v52 = vsubq_f32(v15, v18);
  v53 = v51;
  v53.i32[3] = 0;
  v54 = vmulq_n_f32(v52, vmla_f32(0xBF000000BF000000, *v32.f32, *v32.f32).f32[0]);
  v54.i32[3] = 0;
  v32.i64[0] = vextq_s8(v53, v53, 8uLL).u64[0];
  v55 = vext_s8(*v51.f32, *v32.f32, 4uLL);
  *v38.f32 = vmls_f32(vmul_f32(*&vextq_s8(v52, v52, 4uLL), *v51.f32), v55, *v52.f32);
  *v31.f32 = vext_s8(*v38.f32, vmls_f32(vmul_f32(*v52.f32, *v32.f32), *v51.f32, *&vextq_s8(v52, v52, 8uLL)), 4uLL);
  v31.i64[1] = v38.u32[0];
  v56 = vmlaq_laneq_f32(v54, v31, v17, 3);
  v56.i64[1] = vextq_s8(v56, v56, 8uLL).u32[0];
  v101[2] = v50;
  v101[3] = v30;
  v57 = vmulq_f32(v52, v53);
  v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
  v58 = vmlaq_n_f32(v56, v53, vpadd_f32(*v57.f32, *v57.f32).f32[0]);
  v59 = vaddq_f32(v58, v58);
  v59.i32[3] = 0;
  v60 = v14;
  v60.i32[3] = 0;
  v61 = vmulq_f32(v60, v53);
  v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
  v62 = vmulq_laneq_f32(v53, v14, 3);
  v63 = vmulq_laneq_f32(v60, v17, 3);
  v60.i64[0] = vextq_s8(v60, v60, 8uLL).u64[0];
  *v50.f32 = vmls_f32(vmul_f32(vext_s8(*v14.f32, *v60.f32, 4uLL), *v51.f32), v55, *v14.f32);
  *v14.f32 = vext_s8(*v50.f32, vmls_f32(vmul_f32(*v14.f32, *v32.f32), *v51.f32, *v60.f32), 4uLL);
  v14.i64[1] = v50.i64[0];
  v64 = vaddq_f32(vaddq_f32(v62, v63), v14);
  *v63.f32 = vdup_lane_s32(*v64.f32, 1);
  *v62.f32 = vdup_laneq_s32(v64, 2);
  *v60.f32 = vpadd_f32(*v61.f32, *v61.f32);
  v65 = vaddq_f32(v64, v64);
  *v28.f32 = vsub_f32(*v28.f32, *v60.f32);
  *v60.f32 = vdup_laneq_s32(v65, 2);
  *v64.f32 = vdup_lane_s32(vmul_f32(*v64.f32, *v65.f32), 0);
  *v50.f32 = vmul_lane_f32(*v63.f32, *v65.f32, 1);
  *v31.f32 = vmul_laneq_f32(*v62.f32, v65, 2);
  *v63.f32 = vmul_n_f32(*v63.f32, v65.f32[0]);
  *v38.f32 = vmul_n_f32(*v62.f32, v65.f32[0]);
  *v32.f32 = vmul_lane_f32(vdup_lane_s32(*v65.f32, 0), *v28.f32, 1);
  *v62.f32 = vmul_lane_f32(*v62.f32, *v65.f32, 1);
  *v65.f32 = vmul_lane_f32(vdup_lane_s32(*v65.f32, 1), *v28.f32, 1);
  *v28.f32 = vmul_lane_f32(*v60.f32, *v28.f32, 1);
  *v64.f32 = vsub_f32(*_Q5.f32, *v64.f32);
  *_Q5.f32 = vext_s8(vsub_f32(vsub_f32(*_Q5.f32, *v50.f32), *v31.f32), vadd_f32(*v63.f32, *v28.f32), 4uLL);
  _Q5.i64[1] = vsub_f32(*v38.f32, *v65.f32).u32[0];
  *v63.f32 = vext_s8(vsub_f32(*v63.f32, *v28.f32), vsub_f32(*v64.f32, *v31.f32), 4uLL);
  v63.i64[1] = vadd_f32(*v62.f32, *v32.f32).u32[0];
  v100[0] = _Q5;
  v100[1] = v63;
  *v63.f32 = vext_s8(vadd_f32(*v38.f32, *v65.f32), vsub_f32(*v62.f32, *v32.f32), 4uLL);
  v63.i64[1] = vsub_f32(*v64.f32, *v50.f32).u32[0];
  v100[2] = v63;
  v100[3] = v59;
  v99 = 0;
  v98 = vneg_f32(0x80000000800000);
  v97 = 0uLL;
  v96 = 0;
  v66 = physx::Gu::testFaceNormal(a1, a2, a3, a4, v100, v101, &v96, &v98, &v95, &v97, 0, &v99);
  result = 0;
  if (v66)
  {
    result = physx::Gu::testFaceNormal(a2, a1, a4, a3, v101, v100, &v96, &v98, &v94, &v97, 1, &v99);
    if (result)
    {
      result = physx::Gu::testEdgeNormal(a1, a2, a3, a4, v100, v101, &v96, &v98, &v97, &v99);
      if (result)
      {
        *a5 = v98;
        v68 = vextq_s8(v97, v97, 8uLL).u64[0];
        v69 = vext_s8(*v97.i8, v68, 4uLL);
        v70 = vneg_f32(v68);
        v71 = vneg_f32(*v97.i8);
        if (v99 == 1)
        {
          v72 = **(a4 + 32);
          v73 = v72;
          v73.i32[3] = 0;
          v74 = vdupq_laneq_s32(v72, 3).u64[0];
          v75 = vmulq_n_f32(v97, vmla_f32(0xBF000000BF000000, v74, v74).f32[0]);
          v75.i32[3] = 0;
          v76 = vextq_s8(v73, v73, 8uLL).u64[0];
          v77 = vmla_f32(vmul_f32(v69, *v72.f32), vext_s8(*v72.f32, v76, 4uLL), v71);
          *v78.f32 = vext_s8(v77, vmla_f32(vmul_f32(*v97.i8, v76), *v72.f32, v70), 4uLL);
          v78.i64[1] = v77.u32[0];
          v79 = vmlaq_laneq_f32(v75, v78, v72, 3);
          v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
          v80 = vmulq_f32(v97, v73);
          v80.i64[0] = vpaddq_f32(v80, v80).u64[0];
          v81 = vmlaq_n_f32(v79, v73, vpadd_f32(*v80.f32, *v80.f32).f32[0]);
          v82 = vaddq_f32(v81, v81);
        }

        else
        {
          v83 = **(a3 + 32);
          v84 = v83;
          v84.i32[3] = 0;
          v85 = vdupq_laneq_s32(v83, 3).u64[0];
          v86 = vmulq_n_f32(v97, vmla_f32(0xBF000000BF000000, v85, v85).f32[0]);
          v86.i32[3] = 0;
          v87 = vextq_s8(v84, v84, 8uLL).u64[0];
          v88 = vmla_f32(vmul_f32(v69, *v83.f32), vext_s8(*v83.f32, v87, 4uLL), v71);
          *v89.f32 = vext_s8(v88, vmla_f32(vmul_f32(*v97.i8, v87), *v83.f32, v70), 4uLL);
          v89.i64[1] = v88.u32[0];
          v90 = vmlaq_laneq_f32(v86, v89, v83, 3);
          v90.i64[1] = vextq_s8(v90, v90, 8uLL).u32[0];
          v91 = vmulq_f32(v97, v84);
          v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
          v92 = vmlaq_n_f32(v90, v84, vpadd_f32(*v91.f32, *v91.f32).f32[0]);
          v93 = vaddq_f32(v92, v92);
          v93.i32[3] = 0;
          v82 = vnegq_f32(v93);
        }

        v82.i32[3] = 0;
        *a6 = v82;
        return 1;
      }
    }
  }

  return result;
}

float32x4_t physx::Gu::generatedCapsuleBoxFaceContacts(float32x4_t *a1, uint64_t a2, float32x4_t *a3, void *a4, float32x4_t *a5, uint64_t a6, _DWORD *a7, float32x4_t *a8, float32x4_t result)
{
  v149 = *MEMORY[0x1E69E9840];
  v13 = a4[6];
  v14 = *a3;
  v14.i64[1] = a3->u32[2];
  v15 = vmulq_f32(*v13, v14);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = vmulq_f32(v14, v13[1]);
  v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
  v17 = vmulq_f32(v14, v13[2]);
  v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
  *v18.f32 = vext_s8(vpadd_f32(*v15.f32, *v15.f32), vpadd_f32(*v16.f32, *v16.f32), 4uLL);
  v18.i64[1] = vpadd_f32(*v17.f32, *v17.f32).u32[0];
  v19 = *a1[5].f32;
  *v16.f32 = vpadd_f32(vmul_f32(*v18.f32, *v18.f32), vmul_f32(*&v18.u32[2], *&v18.u32[2]));
  v20 = vpadd_f32(*v16.f32, *v16.f32);
  v21 = vrsqrte_f32(v20);
  v22 = 4;
  do
  {
    v21 = vmul_f32(v21, vrsqrts_f32(vmul_f32(v21, v21), v20));
    --v22;
  }

  while (v22);
  v23 = vbsl_s8(vdup_lane_s32(vceqz_f32(v20), 0), v20, vmul_f32(v20, v21));
  v24 = vrecpe_f32(v23);
  v25 = 4;
  do
  {
    v24 = vmul_f32(v24, vrecps_f32(v23, v24));
    --v25;
  }

  while (v25);
  v26 = vmulq_n_f32(v18, v24.f32[0]);
  v26.i32[3] = 0;
  v148 = v26;
  v27 = a3[1].u16[0];
  v28 = *(a2 + 40);
  v29 = *(*(a2 + 32) + 12 * *(v28 + v27));
  v30 = a4[5];
  v31 = vmulq_n_f32(*v30, v29.f32[0]);
  v31.i32[3] = 0;
  v32 = vmulq_lane_f32(v30[1], *v29.f32, 1);
  v32.i32[3] = 0;
  v33 = vmulq_laneq_f32(v30[2], v29, 2);
  v33.i32[3] = 0;
  v34 = vaddq_f32(vaddq_f32(v31, v32), v33);
  v35 = vmulq_f32(v26, vsubq_f32(a1[3], v34));
  v36 = vextq_s8(v35, v35, 8uLL);
  v37 = vmulq_f32(v26, vsubq_f32(a1[4], v34));
  v38 = vextq_s8(v37, v37, 8uLL).u64[0];
  v39 = vmulq_f32(v26, *a8);
  v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
  v40 = vpadd_f32(*v39.f32, *v39.f32);
  v41 = vrecpe_f32(v40);
  v42 = 4;
  do
  {
    v41 = vmul_f32(v41, vrecps_f32(v40, v41));
    --v42;
  }

  while (v42);
  v43 = vpadd_f32(*v35.i8, *v36.i8);
  v44 = vpadd_f32(*v37.i8, v38);
  v45 = vadd_f32(v19, *result.f32);
  v46 = vpadd_f32(v43, v43);
  v47 = vpadd_f32(v44, v44);
  v48 = vand_s8(vdup_lane_s32(vcgtz_f32(v40), 0), v41);
  *v36.i8 = vmul_f32(v46, v48);
  *v35.i8 = vmul_f32(v47, v48);
  v49 = vdupq_lane_s32(vcge_f32(v45, *v36.i8), 0);
  v50 = vdupq_lane_s32(vcge_f32(v45, *v35.i8), 0);
  v51.i64[0] = -1;
  v51.i64[1] = -1;
  v52 = vmovn_s32(vceqq_s32(vorrq_s8(v50, v49), v51));
  *result.f32 = vuzp1_s8(v52, v52);
  if (result.i32[0] == -1)
  {
    v139 = v36;
    v140 = v49;
    v143 = v50;
    v145 = v35;
    v146 = a5;
    v147 = a8;
    *v55.f32 = physx::Gu::findRotationMatrixFromZAxis(&v148);
    v141 = v55;
    v142 = v56;
    v144 = v57;
    v58 = a3[1].u8[2];
    MEMORY[0x1EEE9AC00](v59);
    v61 = &v139.i8[-v60];
    bzero(&v139 - v60, v60);
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(*a4 + 32))(a4, v28 + v27, v58, *(a2 + 32), v62);
    if (a3[1].i8[2])
    {
      v63 = 0;
      v64 = xmmword_1E31137A0;
      result = xmmword_1E3116F50;
      v65 = v144;
      v67 = v141;
      v66 = v142;
      do
      {
        v68 = *(v62 + 16 * v63);
        v69 = vmulq_n_f32(v67, v68.f32[0]);
        v69.i32[3] = 0;
        v70 = vmulq_lane_f32(v66, *v68.f32, 1);
        v70.i32[3] = 0;
        v71 = vmulq_laneq_f32(v65, v68, 2);
        v71.i32[3] = 0;
        v72 = vaddq_f32(v71, vaddq_f32(v69, v70));
        *(v62 + 16 * v63) = v72;
        v64 = vminq_f32(v64, v72);
        result = vmaxq_f32(result, v72);
        ++v63;
        v73 = a3[1].u8[2];
      }

      while (v63 < v73);
      v75 = v146;
      v74 = v147;
    }

    else
    {
      LODWORD(v73) = 0;
      result = xmmword_1E3116F50;
      v64 = xmmword_1E31137A0;
      v75 = v146;
      v74 = v147;
      v65 = v144;
      v67 = v141;
      v66 = v142;
    }

    v76.i64[0] = -1;
    v76.i64[1] = -1;
    if (vuzp1_s8(vmovn_s32(vceqq_s32(v140, v76)), *result.f32).u32[0] == -1)
    {
      v77 = v73;
      v78 = vmlsq_lane_f32(a1[3], *v74, *v139.i8, 0);
      v79 = vmulq_n_f32(v67, v78.f32[0]);
      v79.i32[3] = 0;
      v80 = vmulq_lane_f32(v66, *v78.f32, 1);
      v80.i32[3] = 0;
      v81 = vmulq_laneq_f32(v65, v78, 2);
      v81.i32[3] = 0;
      v82 = vaddq_f32(v81, vaddq_f32(v79, v80));
      v80.i64[0] = vorrq_s8(vcgtq_f32(v64, v82), vcgtq_f32(v82, result)).u64[0];
      if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(*v80.f32, 0), vdupq_lane_s32(*v80.f32, 1)), v76)), *result.f32).u32[0] != -1 && v73 != 0)
      {
        v84 = 0;
        v78.i64[1] = vextq_s8(v78, v78, 8uLL).u32[0];
        v85 = vdup_lane_s32(*v82.f32, 0);
        v86 = vdup_lane_s32(*v82.f32, 1);
        LODWORD(v87) = v73 - 1;
        v88 = v73 - 1;
        v89 = 1;
        while (1)
        {
          v90 = *(v62 + 16 * v87);
          v87 = v84;
          v91 = vdup_lane_s32(*&v90, 1);
          v92 = *(v62 + 16 * v84);
          v93 = vdup_lane_s32(*&v92, 1);
          v94 = vdup_lane_s32(*&v90, 0);
          v95 = vdup_lane_s32(*&v92, 0);
          if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v85, v95), vceq_f32(v86, v93)), vand_s8(vceq_f32(v85, v94), vceq_f32(v86, v91))), 0), *result.f32).u32[0] == -1)
          {
            break;
          }

          if (veor_s8(vcgt_f32(v91, v86), vcgt_f32(v93, v86)).u8[0] & 1) != 0 && (v96 = vsub_f32(v93, v91), v97 = vmul_f32(vsub_f32(v86, v91), vsub_f32(v95, v94)), v98 = vmul_n_f32(v96, v82.f32[0]), v99 = vadd_f32(v97, vmul_f32(vadd_f32(v94, 0x3400000034000000), v96)), v100 = vdup_lane_s32(vcgtz_f32(v96), 0), (vcge_f32(vbsl_s8(v100, v99, v98), vbsl_s8(v100, v98, v99)).u8[0]))
          {
            if ((v89 & 1) == 0)
            {
              goto LABEL_29;
            }

            v89 = 0;
            ++v84;
            if (v88 == v87)
            {
              break;
            }
          }

          else
          {
            ++v84;
            if (v77 == v87 + 1)
            {
              if (v89)
              {
                goto LABEL_29;
              }

              break;
            }
          }
        }

        v101 = vsubq_f32(a1[3], v75[3]);
        v102 = vmulq_f32(*v75, v101);
        v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
        v103 = vmulq_f32(v101, v75[1]);
        v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
        v104 = vmulq_f32(v101, v75[2]);
        v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
        *v102.f32 = vext_s8(vpadd_f32(*v102.f32, *v102.f32), vpadd_f32(*v103.f32, *v103.f32), 4uLL);
        v102.i64[1] = vpadd_f32(*v104.f32, *v104.f32).u32[0];
        *(a6 + 48 * *a7) = v102;
        *(a6 + 48 * *a7 + 16) = v78;
        v105 = *v74;
        v105.i32[3] = v139.i32[1];
        v106 = (*a7)++;
        *(a6 + 48 * v106 + 32) = v105;
      }
    }

LABEL_29:
    v107 = v145.u32[1];
    if (vuzp1_s8(vmovn_s32(vceqq_s32(v143, v76)), *result.f32).u32[0] == -1)
    {
      v108 = vmlsq_lane_f32(a1[4], *v74, *v145.i8, 0);
      v109 = vmulq_n_f32(v67, v108.f32[0]);
      v109.i32[3] = 0;
      v110 = vmulq_lane_f32(v66, *v108.f32, 1);
      v110.i32[3] = 0;
      v111 = vmulq_laneq_f32(v65, v108, 2);
      v111.i32[3] = 0;
      v112 = vaddq_f32(v111, vaddq_f32(v109, v110));
      v113 = a3[1].u8[2];
      v114 = vorrq_s8(vcgtq_f32(v64, v112), vcgtq_f32(v112, result)).u64[0];
      v115.i64[0] = -1;
      v115.i64[1] = -1;
      v116 = vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v114, 0), vdupq_lane_s32(v114, 1)), v115));
      *result.f32 = vuzp1_s8(v116, v116);
      if (result.i32[0] != -1 && v113 != 0)
      {
        v118 = 0;
        v108.i64[1] = vextq_s8(v108, v108, 8uLL).u32[0];
        *result.f32 = vdup_lane_s32(*v112.f32, 0);
        v119 = vdup_lane_s32(*v112.f32, 1);
        LODWORD(v120) = v113 - 1;
        v121 = 1;
        while (1)
        {
          v122 = *(v62 + 16 * v120);
          v120 = v118;
          v123 = vdup_lane_s32(*&v122, 1);
          v124 = *(v62 + 16 * v118);
          v125 = vdup_lane_s32(*&v124, 1);
          v126 = vdup_lane_s32(*&v122, 0);
          v127 = vdup_lane_s32(*&v124, 0);
          if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(*result.f32, v127), vceq_f32(v119, v125)), vand_s8(vceq_f32(*result.f32, v126), vceq_f32(v119, v123))), 0), *result.f32).u32[0] == -1)
          {
            break;
          }

          if (veor_s8(vcgt_f32(v123, v119), vcgt_f32(v125, v119)).u8[0] & 1) != 0 && (v128 = vsub_f32(v125, v123), v129 = vmul_f32(vsub_f32(v119, v123), vsub_f32(v127, v126)), v130 = vmul_n_f32(v128, v112.f32[0]), v131 = vadd_f32(v129, vmul_f32(vadd_f32(v126, 0x3400000034000000), v128)), v132 = vdup_lane_s32(vcgtz_f32(v128), 0), (vcge_f32(vbsl_s8(v132, v131, v130), vbsl_s8(v132, v130, v131)).u8[0]))
          {
            if ((v121 & 1) == 0)
            {
              return result;
            }

            v121 = 0;
            ++v118;
            if (v113 - 1 == v120)
            {
              break;
            }
          }

          else
          {
            ++v118;
            if (v113 == v120 + 1)
            {
              if (v121)
              {
                return result;
              }

              break;
            }
          }
        }

        v133 = vsubq_f32(a1[4], v75[3]);
        v134 = vmulq_f32(*v75, v133);
        v134.i64[0] = vpaddq_f32(v134, v134).u64[0];
        v135 = vmulq_f32(v133, v75[1]);
        v135.i64[0] = vpaddq_f32(v135, v135).u64[0];
        v136 = vmulq_f32(v133, v75[2]);
        v136.i64[0] = vpaddq_f32(v136, v136).u64[0];
        *&v137 = vext_s8(vpadd_f32(*v134.f32, *v134.f32), vpadd_f32(*v135.f32, *v135.f32), 4uLL);
        *(&v137 + 1) = vpadd_f32(*v136.f32, *v136.f32).u32[0];
        *(a6 + 48 * *a7) = v137;
        *(a6 + 48 * *a7 + 16) = v108;
        result = *v74;
        result.i32[3] = v107;
        v138 = (*a7)++;
        *(a6 + 48 * v138 + 32) = result;
      }
    }
  }

  return result;
}

uint64_t physx::Gu::generatedContactsEEContacts(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t *a6, uint64_t a7, uint64_t a8, void *a9, int8x8_t *a10)
{
  v70[0] = a8;
  v70[1] = *MEMORY[0x1E69E9840];
  v17 = *(a4 + 16);
  v18 = *(a4 + 18);
  MEMORY[0x1EEE9AC00](a1);
  v20 = v70 - v19;
  bzero(v70 - v19, v19);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  result = (*(*a5 + 32))(a5, a3 + v17, v18, a2, v21);
  v23 = a6;
  v24 = v70[0];
  v25 = *(a4 + 18);
  if (*(a4 + 18))
  {
    v26 = 0;
    LODWORD(v27) = v25 - 1;
    v28 = COERCE_FLOAT(*a9) + COERCE_FLOAT(a1[5].i64[0]);
    do
    {
      v29 = *(v21 + 16 * v27);
      v27 = v26;
      v30 = *(v21 + 16 * v26);
      v31 = vsubq_f32(v29, v30);
      v32 = *a10->i8;
      v33 = vextq_s8(v32, v32, 8uLL).u64[0];
      v34 = vext_s8(*a10, v33, 4uLL);
      v35 = vmls_f32(vmul_f32(*v31.f32, v34), *&vextq_s8(v31, v31, 4uLL), *a10);
      *v36.f32 = vext_s8(v35, vmls_f32(vmul_f32(*&vextq_s8(v31, v31, 8uLL), *a10), *v31.f32, v33), 4uLL);
      v36.i64[1] = v35.u32[0];
      v37 = vmulq_f32(v30, v36);
      v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
      v38 = vpadd_f32(*v37.f32, *v37.f32);
      v39 = a1[3];
      v40 = a1[4];
      v41 = vmulq_f32(v39, v36);
      v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
      v42 = vpadd_f32(*v41.f32, *v41.f32);
      v43 = vmulq_f32(v40, v36);
      v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
      if (vmul_f32(vsub_f32(v42, v38), vsub_f32(vpadd_f32(*v43.f32, *v43.f32), v38)).f32[0] <= 0.0)
      {
        v44 = vsubq_f32(v40, v39);
        v45 = vmulq_f32(v36, v44);
        v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
        v46 = vpadd_f32(*v45.f32, *v45.f32);
        if (v46.f32[0] != 0.0)
        {
          v47 = vrecpe_f32(v46);
          v48 = 4;
          do
          {
            v47 = vmul_f32(v47, vrecps_f32(v46, v47));
            --v48;
          }

          while (v48);
          v49 = vmlaq_n_f32(v39, v44, vmul_f32(vsub_f32(v38, v42), v47).f32[0]);
          v49.i64[1] = vextq_s8(v49, v49, 8uLL).u32[0];
          v50 = vmls_f32(vmul_f32(*v32.f32, *&vextq_s8(v44, v44, 4uLL)), v34, *v44.f32);
          *v51.f32 = vext_s8(v50, vmls_f32(vmul_f32(v33, *v44.f32), *v32.f32, *&vextq_s8(v44, v44, 8uLL)), 4uLL);
          v51.i64[1] = v50.u32[0];
          v52 = vsubq_f32(v49, v30);
          v53 = vmulq_f32(v51, v52);
          v54 = vmulq_f32(v31, v51);
          v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
          v55 = vpadd_f32(*v54.f32, *v54.f32);
          v56 = vrecpe_f32(v55);
          v57 = 4;
          do
          {
            v56 = vmul_f32(v56, vrecps_f32(v55, v56));
            --v57;
          }

          while (v57);
          v58 = vpaddq_f32(v53, v53).u64[0];
          v59 = vmul_f32(v56, vpadd_f32(v58, v58));
          if (v59.f32[0] <= 1.005 && v59.f32[0] >= -0.005)
          {
            v60 = vmlsq_lane_f32(v52, v31, v59, 0);
            v60.i64[1] = vextq_s8(v60, v60, 8uLL).u32[0];
            v61 = vmulq_f32(v32, v60);
            v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
            v62 = vpadd_f32(*v61.f32, *v61.f32);
            if (v28 >= v62.f32[0])
            {
              v63 = vsubq_f32(v49, v60);
              v64 = vsubq_f32(v49, v23[3]);
              v65 = vmulq_f32(*v23, v64);
              v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
              v66 = vmulq_f32(v64, v23[1]);
              v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
              v67 = vmulq_f32(v64, v23[2]);
              v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
              *v65.f32 = vext_s8(vpadd_f32(*v65.f32, *v65.f32), vpadd_f32(*v66.f32, *v66.f32), 4uLL);
              v65.i64[1] = vpadd_f32(*v67.f32, *v67.f32).u32[0];
              *(a7 + 48 * *v24) = v65;
              *(a7 + 48 * *v24 + 16) = v63;
              v68 = *a10->i8;
              HIDWORD(v68) = v62.i32[1];
              v69 = (*v24)++;
              *(a7 + 48 * v69 + 32) = v68;
              v25 = *(a4 + 18);
            }
          }
        }
      }

      v26 = v27 + 1;
    }

    while (v27 + 1 < v25);
  }

  return result;
}

uint64_t physx::Gu::generateCapsuleBoxFullContactManifold(float32x4_t *a1, uint64_t a2, void *a3, float32x4_t *a4, uint64_t a5, int *a6, float32x2_t *a7, int8x16_t *a8, float32x4_t a9, float a10, float32x2_t *a11, char a12)
{
  v122[128] = *MEMORY[0x1E69E9840];
  v20 = *a6;
  if (a12)
  {
    if ((physx::Gu::testSATCapsulePoly(a1, a2, a3, a7, v122, a8) & 1) == 0)
    {
      return 0;
    }

    v21 = *(a2 + 24);
    v22 = vnegq_f32(*a8);
    v22.i32[3] = 0;
    v23 = a3[5];
    v24 = vmulq_f32(v22, *v23);
    v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
    v25 = vmulq_f32(v22, v23[1]);
    v25.i64[0] = vpaddq_f32(v25, v25).u64[0];
    v26 = vmulq_f32(v22, v23[2]);
    v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
    v27 = vpadd_f32(*v26.f32, *v26.f32).u32[0];
    *a9.f32 = vext_s8(vpadd_f32(*v24.f32, *v24.f32), vpadd_f32(*v25.f32, *v25.f32), 4uLL);
    a9.i64[1] = v27;
    v28 = *v21;
    v28.i32[3] = 0;
    v29 = vmulq_f32(v28, a9);
    v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
    v30 = vpadd_f32(*v29.f32, *v29.f32);
    v31 = *(a2 + 16);
    if (v31 < 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = 0;
      v33 = (v21 + 20);
      for (i = 1; i != v31; ++i)
      {
        v35 = *v33;
        v33 = (v33 + 20);
        v36 = v35;
        v36.i32[3] = 0;
        v37 = vmulq_f32(v36, a9);
        v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
        v38 = vpadd_f32(*v37.f32, *v37.f32);
        if (vcgt_f32(v30, v38).u8[0])
        {
          v32 = i;
          v39 = -1;
        }

        else
        {
          v39 = 0;
        }

        v30 = vbsl_s8(vdup_n_s32(v39), v38, v30);
      }
    }

    v99 = *(a2 + 20);
    if (v99)
    {
      v100 = 0;
      a9 = vnegq_f32(a9);
      a9.i32[3] = 0;
      v101 = *(a2 + 48);
      v102 = vmul_f32(v30, v30);
      v103 = -1;
      do
      {
        v104 = (v101 + (2 * v100));
        v105 = *(v21 + 20 * *v104);
        v105.i32[3] = 0;
        v106 = *(v21 + 20 * v104[1]);
        v106.i32[3] = 0;
        v107 = vaddq_f32(v105, v106);
        v108 = vmulq_f32(v107, v107);
        v108.i64[0] = vpaddq_f32(v108, v108).u64[0];
        v109 = vpadd_f32(*v108.f32, *v108.f32);
        v110 = vmulq_f32(a9, v107);
        v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
        v111 = vpadd_f32(*v110.f32, *v110.f32);
        v112 = vmul_f32(v111, v111);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v112, vmul_f32(v102, v109)), vcgez_f32(v111)), 0), *a9.f32).u32[0] == -1)
        {
          v113 = vrecpe_f32(v109);
          v114 = 4;
          do
          {
            v113 = vmul_f32(v113, vrecps_f32(v109, v113));
            --v114;
          }

          while (v114);
          v102 = vmul_f32(v112, v113);
          v103 = v100;
        }

        ++v100;
      }

      while (v100 != v99);
      if (v103 != -1)
      {
        v115 = (v101 + (2 * v103));
        v116 = *v115;
        v117 = *(v21 + 20 * *v115);
        v32 = v115[1];
        v117.i32[3] = 0;
        v118 = *(v21 + 20 * v32);
        v118.i32[3] = 0;
        v119 = vmulq_f32(a9, v117);
        v119.i64[0] = vpaddq_f32(v119, v119).u64[0];
        v120 = vmulq_f32(a9, v118);
        a9 = vpaddq_f32(v120, v120);
        if (vcgt_f32(vpadd_f32(*v119.f32, *v119.f32), vpadd_f32(*a9.f32, *a9.f32)).u8[0])
        {
          v32 = v116;
        }
      }
    }

    v121 = (v21 + 20 * v32);
  }

  else
  {
    v40 = a10 * 0.01;
    v41 = a10 * 0.05;
    if (v40 > a9.f32[0])
    {
      a9.f32[0] = v40;
    }

    if (v41 < a9.f32[0])
    {
      a9.f32[0] = v41;
    }

    v42 = *a8;
    v43 = a3[6];
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    _Q6 = vaddq_f32(vaddq_f32(vmulq_n_f32(*v43, COERCE_FLOAT(*a11->f32)), vmulq_lane_f32(v45, *a11, 1)), vmulq_laneq_f32(v46, *a11->f32, 2));
    v48 = *(a2 + 24);
    _S17 = *(v48 + 8);
    __asm { FMLA            S4, S17, V6.S[2] }

    v55 = *(v48 + 12) + _S4;
    v56 = fabsf(v55);
    if (v55 < -a9.f32[0])
    {
      v56 = 3.4028e38;
    }

    v122[0].f32[0] = v56;
    v57 = *(a2 + 16);
    if (v57 < 2)
    {
      v59 = 0;
      v58 = 0;
    }

    else
    {
      v58 = 0;
      v59 = 0;
      v60 = (v48 + 32);
      for (j = 1; j != v57; ++j)
      {
        v62 = *v60 + (((_Q6.f32[1] * *(v60 - 2)) + (_Q6.f32[0] * *(v60 - 3))) + (_Q6.f32[2] * *(v60 - 1)));
        v63 = fabsf(v62);
        if (v62 < -a9.f32[0])
        {
          v63 = 3.4028e38;
        }

        v122[0].f32[j] = v63;
        if (v56 > v63)
        {
          v59 = j;
          v56 = v63;
        }

        if (v62 > v55)
        {
          v55 = v62;
          v58 = j;
        }

        v60 += 5;
      }
    }

    if (v56 != 3.4028e38)
    {
      v65 = vnegq_f32(v42);
      v65.i32[3] = 0;
      v66 = *(v48 + 20 * v59);
      v66.i32[3] = 0;
      v67 = vmulq_f32(v44, v66);
      v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
      v68 = vmulq_f32(v45, v66);
      v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
      v69 = vmulq_f32(v46, v66);
      v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
      v70 = vpadd_f32(*v69.f32, *v69.f32).u32[0];
      *v71.f32 = vext_s8(vpadd_f32(*v67.f32, *v67.f32), vpadd_f32(*v68.f32, *v68.f32), 4uLL);
      v71.i64[1] = v70;
      v72 = v59;
      *v67.f32 = vpadd_f32(vmul_f32(*v71.f32, *v71.f32), vmul_f32(*&v71.u32[2], *&v71.u32[2]));
      v73 = vpadd_f32(*v67.f32, *v67.f32);
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
        v77 = vmul_f32(v77, vrecps_f32(v76, v77));
        --v78;
      }

      while (v78);
      if (v57)
      {
        v79 = 0;
        v80 = vmulq_n_f32(v71, v77.f32[0]);
        v80.i32[3] = 0;
        v81 = vmulq_f32(v65, v80);
        v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
        v82 = vpadd_f32(*v81.f32, *v81.f32);
        v58 = v59;
        do
        {
          if (v79 != v72 && (v122[0].f32[v79] - v56) < a9.f32[0])
          {
            v83 = *(v48 + 20 * v79);
            v83.i32[3] = 0;
            v84 = vmulq_f32(v44, v83);
            v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
            v85 = vmulq_f32(v45, v83);
            v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
            v86 = vmulq_f32(v46, v83);
            v86.i64[0] = vpaddq_f32(v86, v86).u64[0];
            v87 = vpadd_f32(*v86.f32, *v86.f32).u32[0];
            *v88.f32 = vext_s8(vpadd_f32(*v84.f32, *v84.f32), vpadd_f32(*v85.f32, *v85.f32), 4uLL);
            *&v88.u32[2] = v87;
            *v84.f32 = vpadd_f32(vmul_f32(*v88.f32, *v88.f32), vmul_f32(v87, v87));
            v89 = vpadd_f32(*v84.f32, *v84.f32);
            v90 = vrsqrte_f32(v89);
            v91 = 4;
            do
            {
              v90 = vmul_f32(v90, vrsqrts_f32(vmul_f32(v90, v90), v89));
              --v91;
            }

            while (v91);
            v92 = vbsl_s8(vdup_lane_s32(vceqz_f32(v89), 0), v89, vmul_f32(v89, v90));
            v93 = vrecpe_f32(v92);
            v94 = 4;
            do
            {
              v93 = vmul_f32(v93, vrecps_f32(v92, v93));
              --v94;
            }

            while (v94);
            v95 = vmulq_n_f32(v88, v93.f32[0]);
            v95.i32[3] = 0;
            v96 = vmulq_f32(v65, v95);
            v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
            v97 = vpadd_f32(*v96.f32, *v96.f32);
            if (vcgt_f32(v82, v97).u8[0])
            {
              v58 = v79;
              v98 = -1;
            }

            else
            {
              v98 = 0;
            }

            v82 = vbsl_s8(vdup_n_s32(v98), v97, v82);
          }

          ++v79;
        }

        while (v79 != v57);
      }

      else
      {
        v58 = v59;
      }
    }

    v121 = (v48 + 20 * v58);
  }

  *a9.f32 = *a7;
  physx::Gu::generatedCapsuleBoxFaceContacts(a1, a2, v121, a3, a4, a5, a6, a8, a9);
  if ((*a6 - v20) <= 1)
  {
    physx::Gu::generatedContactsEEContacts(a1, *(a2 + 32), *(a2 + 40), v121, a3, a4, a5, a6, a7, a8);
  }

  return 1;
}

uint64_t physx::Gu::testSATCapsulePoly(float32x4_t *a1, uint64_t a2, void *a3, float32x2_t *a4, float32x2_t *a5, int8x16_t *a6)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v11 = 0;
    v86 = 0;
    v87 = 0;
    v12 = a3[6];
    v13 = *v12;
    v14 = a1[3];
    v15 = a1[4];
    v16 = *a1[5].f32;
    v17 = xmmword_1E3047680;
    v18 = vneg_f32(0x80000000800000);
    do
    {
      v19 = *(a2 + 24) + 20 * v11;
      v20 = *(*(a2 + 32) + 12 * *(v19 + 19));
      v21 = *v19;
      v21.i32[3] = 0;
      v22 = vmulq_f32(v13, v21);
      v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
      v23 = vmulq_f32(v12[1], v21);
      v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
      v26 = vpadd_f32(*v23.f32, *v23.f32);
      v24 = vmulq_f32(v12[2], v21);
      v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
      *v25.f32 = vext_s8(vpadd_f32(*v22.f32, *v22.f32), v26, 4uLL);
      v25.i64[1] = vpadd_f32(*v24.f32, *v24.f32).u32[0];
      v26.i32[0] = *(v19 + 12);
      *v24.f32 = vpadd_f32(vmul_f32(*v25.f32, *v25.f32), vmul_f32(*&v25.u32[2], *&v25.u32[2]));
      v27 = vpadd_f32(*v24.f32, *v24.f32);
      v28 = vrsqrte_f32(v27);
      v29 = 4;
      do
      {
        v28 = vmul_f32(v28, vrsqrts_f32(vmul_f32(v28, v28), v27));
        --v29;
      }

      while (v29);
      v30 = vbsl_s8(vdup_lane_s32(vceqz_f32(v27), 0), v27, vmul_f32(v27, v28));
      v31 = vrecpe_f32(v30);
      v32 = 4;
      do
      {
        v31 = vmul_f32(v31, vrecps_f32(v30, v31));
        --v32;
      }

      while (v32);
      v20.i32[3] = 0;
      v33 = vmulq_n_f32(v25, v31.f32[0]);
      v33.i32[3] = 0;
      v34 = vmulq_f32(v20, v21);
      v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
      v35 = vmul_f32(v31, vpadd_f32(*v34.f32, *v34.f32));
      v36 = vmul_f32(v31, vneg_f32(vdup_lane_s32(v26, 0)));
      v37 = vmulq_f32(v14, v33);
      v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
      *v37.f32 = vpadd_f32(*v37.f32, *v37.f32);
      v38 = vmulq_f32(v15, v33);
      v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
      *v38.f32 = vpadd_f32(*v38.f32, *v38.f32);
      v39 = vmin_f32(*v37.f32, *v38.f32);
      *v38.f32 = vmax_f32(*v37.f32, *v38.f32);
      v40 = vsub_f32(v39, v16);
      if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v35, vadd_f32(*a4, vadd_f32(v16, *v38.f32))), vcgt_f32(v40, vadd_f32(*a4, v36))), 0), *v13.f32).u32[0] == -1)
      {
        return 0;
      }

      v41 = vsub_f32(v36, v40);
      if (vcgt_f32(v18, v41).u8[0])
      {
        v42 = -1;
      }

      else
      {
        v42 = 0;
      }

      v43 = vdupq_n_s32(v42);
      v17 = vbslq_s8(v43, v33, v17);
      v18 = vbsl_s8(*v43.i8, v41, v18);
      ++v11;
    }

    while (v11 != v6);
    v44 = a6;
    v80 = a5;
    v45 = 0;
    v46 = vsubq_f32(v15, v14);
    v47 = vextq_s8(v46, v46, 8uLL).u64[0];
    v48 = vextq_s8(v46, v46, 4uLL).u64[0];
    v82 = v47;
    v83 = v46.i64[0];
    v81 = v48;
    do
    {
      v49 = *(a2 + 24) + 20 * v45;
      if (*(v49 + 18))
      {
        v50 = 0;
        v51 = *(a2 + 40) + *(v49 + 16);
        LODWORD(v52) = *(v49 + 18) - 1;
        v53 = *(v49 + 18);
        do
        {
          v54 = *(v51 + v52);
          v52 = v50;
          v55 = *(a2 + 32);
          v56 = *(v55 + 12 * *(v51 + v50));
          v56.i32[3] = 0;
          v57 = *(v55 + 12 * v54);
          v57.i32[3] = 0;
          v58 = vsubq_f32(v57, v56);
          v59 = a3[6];
          v60 = vmulq_f32(*v59, v58);
          v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
          v61 = vmulq_f32(v58, v59[1]);
          v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
          v62 = vmulq_f32(v58, v59[2]);
          v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
          v62.i32[0] = vpadd_f32(*v62.f32, *v62.f32).u32[0];
          *v60.f32 = vext_s8(vpadd_f32(*v60.f32, *v60.f32), vpadd_f32(*v61.f32, *v61.f32), 4uLL);
          v63 = vmls_f32(vmul_f32(*v46.i8, vext_s8(*v60.f32, v62.u32[0], 4uLL)), v48, *v60.f32);
          *v62.f32 = vext_s8(v63, vmls_f32(vmul_f32(v47, *v60.f32), *v46.i8, v62.u32[0]), 4uLL);
          v63.i32[1] = 0;
          *v60.f32 = vpadd_f32(vmul_f32(*v62.f32, *v62.f32), vmul_f32(v63.u32[0], v63.u32[0]));
          v64 = vpadd_f32(*v60.f32, *v60.f32);
          if (v64.f32[0] >= 0.00000011921)
          {
            *&v62.u32[2] = v63;
            v65 = vrsqrte_f32(v64);
            v66 = 4;
            do
            {
              v65 = vmul_f32(v65, vrsqrts_f32(vmul_f32(v65, v65), v64));
              --v66;
            }

            while (v66);
            v84 = v17;
            v67 = vbsl_s8(vdup_lane_s32(vceqz_f32(v64), 0), v64, vmul_f32(v64, v65));
            v68 = vrecpe_f32(v67);
            v69 = 4;
            do
            {
              v68 = vmul_f32(v68, vrecps_f32(v67, v68));
              --v69;
            }

            while (v69);
            v70 = vmulq_n_f32(v62, v68.f32[0]);
            v70.i32[3] = 0;
            v85 = v70;
            (*(*a3 + 24))(a3, &v85, &v87, &v86);
            v71 = vmulq_f32(a1[3], v85);
            v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
            *v71.f32 = vpadd_f32(*v71.f32, *v71.f32);
            v72 = vmulq_f32(v85, a1[4]);
            v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
            *v72.f32 = vpadd_f32(*v72.f32, *v72.f32);
            v73 = vmin_f32(*v71.f32, *v72.f32);
            *v72.f32 = vmax_f32(*v71.f32, *v72.f32);
            v74 = *a1[5].f32;
            v75 = vsub_f32(v73, v74);
            if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v75, vadd_f32(v86, *a4)), vcgt_f32(v87, vadd_f32(vadd_f32(*v72.f32, v74), *a4))), 0), *v85.f32).u32[0] == -1)
            {
              return 0;
            }

            v76 = vsub_f32(v86, v75);
            if (vcgt_f32(v18, v76).u8[0])
            {
              v77 = -1;
            }

            else
            {
              v77 = 0;
            }

            v78 = vdupq_n_s32(v77);
            v18 = vbsl_s8(*v78.i8, v76, v18);
            v46.i64[0] = v83;
            v17 = vbslq_s8(v78, v85, v84);
            v53 = *(v49 + 18);
            v48 = v81;
            v47 = v82;
          }

          v50 = v52 + 1;
        }

        while (v52 + 1 < v53);
        v6 = *(a2 + 16);
      }

      ++v45;
    }

    while (v45 < v6);
  }

  else
  {
    v44 = a6;
    v80 = a5;
    v17 = xmmword_1E3047680;
    v18 = vneg_f32(0x80000000800000);
  }

  *v44 = v17;
  *v80 = v18;
  return 1;
}

uint64_t physx::Gu::generateFullContactManifold(float32x4_t *a1, uint64_t a2, void *a3, float32x4_t *a4, uint64_t a5, int *a6, float32x2_t *a7, float32x4_t *a8, float a9, float a10, float32x2_t *a11, char a12)
{
  v128[128] = *MEMORY[0x1E69E9840];
  v21 = *a6;
  v22 = *a8;
  v127 = *a8;
  if (!a12)
  {
    v126 = v22;
    physx::Gu::generatedFaceContacts(a1, a2, a3, a4, a5, a6, &v127, *a7);
    if ((*a6 - v21) > 1)
    {
LABEL_64:
      v67 = v126;
      goto LABEL_65;
    }

    v45 = a10 * 0.01;
    if ((a10 * 0.01) <= a9)
    {
      v45 = a9;
    }

    if ((a10 * 0.05) < v45)
    {
      v45 = a10 * 0.05;
    }

    v46 = a3[6];
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[2];
    _Q5 = vaddq_f32(vaddq_f32(vmulq_n_f32(*v46, COERCE_FLOAT(*a11->f32)), vmulq_lane_f32(v48, *a11, 1)), vmulq_laneq_f32(v49, *a11->f32, 2));
    v51 = *(a2 + 24);
    _S16 = *(v51 + 8);
    __asm { FMLA            S4, S16, V5.S[2] }

    v58 = *(v51 + 12) + _S4;
    v59 = fabsf(v58);
    if (v58 < -v45)
    {
      v59 = 3.4028e38;
    }

    v128[0].f32[0] = v59;
    v60 = *(a2 + 16);
    if (v60 < 2)
    {
      v62 = 0;
      v61 = 0;
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v63 = (v51 + 32);
      for (i = 1; i != v60; ++i)
      {
        v65 = *v63 + (((_Q5.f32[1] * *(v63 - 2)) + (_Q5.f32[0] * *(v63 - 3))) + (_Q5.f32[2] * *(v63 - 1)));
        v66 = fabsf(v65);
        if (v65 < -v45)
        {
          v66 = 3.4028e38;
        }

        v128[0].f32[i] = v66;
        if (v59 > v66)
        {
          v62 = i;
          v59 = v66;
        }

        if (v65 > v58)
        {
          v58 = v65;
          v61 = i;
        }

        v63 += 5;
      }
    }

    if (v59 != 3.4028e38)
    {
      v68 = vnegq_f32(v126);
      v68.i32[3] = 0;
      v69 = *(v51 + 20 * v62);
      v69.i32[3] = 0;
      v70 = vmulq_f32(v47, v69);
      v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
      v71 = vmulq_f32(v48, v69);
      v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
      v72 = vmulq_f32(v49, v69);
      v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
      v73 = vpadd_f32(*v72.f32, *v72.f32).u32[0];
      *v74.f32 = vext_s8(vpadd_f32(*v70.f32, *v70.f32), vpadd_f32(*v71.f32, *v71.f32), 4uLL);
      v74.i64[1] = v73;
      v75 = v62;
      *v70.f32 = vpadd_f32(vmul_f32(*v74.f32, *v74.f32), vmul_f32(*&v74.u32[2], *&v74.u32[2]));
      v76 = vpadd_f32(*v70.f32, *v70.f32);
      v77 = vrsqrte_f32(v76);
      v78 = 4;
      do
      {
        v77 = vmul_f32(v77, vrsqrts_f32(vmul_f32(v77, v77), v76));
        --v78;
      }

      while (v78);
      v79 = vbsl_s8(vdup_lane_s32(vceqz_f32(v76), 0), v76, vmul_f32(v76, v77));
      v80 = vrecpe_f32(v79);
      v81 = 4;
      do
      {
        v80 = vmul_f32(v80, vrecps_f32(v79, v80));
        --v81;
      }

      while (v81);
      if (v60)
      {
        v82 = 0;
        v83 = vmulq_n_f32(v74, v80.f32[0]);
        v83.i32[3] = 0;
        v84 = vmulq_f32(v68, v83);
        v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
        v85 = vpadd_f32(*v84.f32, *v84.f32);
        v61 = v62;
        do
        {
          if (v82 != v75 && (v128[0].f32[v82] - v59) < v45)
          {
            v86 = *(v51 + 20 * v82);
            v86.i32[3] = 0;
            v87 = vmulq_f32(v47, v86);
            v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
            v88 = vmulq_f32(v48, v86);
            v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
            v89 = vmulq_f32(v49, v86);
            v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
            v90 = vpadd_f32(*v89.f32, *v89.f32).u32[0];
            *v91.f32 = vext_s8(vpadd_f32(*v87.f32, *v87.f32), vpadd_f32(*v88.f32, *v88.f32), 4uLL);
            *&v91.u32[2] = v90;
            *v87.f32 = vpadd_f32(vmul_f32(*v91.f32, *v91.f32), vmul_f32(v90, v90));
            v92 = vpadd_f32(*v87.f32, *v87.f32);
            v93 = vrsqrte_f32(v92);
            v94 = 4;
            do
            {
              v93 = vmul_f32(v93, vrsqrts_f32(vmul_f32(v93, v93), v92));
              --v94;
            }

            while (v94);
            v95 = vbsl_s8(vdup_lane_s32(vceqz_f32(v92), 0), v92, vmul_f32(v92, v93));
            v96 = vrecpe_f32(v95);
            v97 = 4;
            do
            {
              v96 = vmul_f32(v96, vrecps_f32(v95, v96));
              --v97;
            }

            while (v97);
            v98 = vmulq_n_f32(v91, v96.f32[0]);
            v98.i32[3] = 0;
            v99 = vmulq_f32(v68, v98);
            v99.i64[0] = vpaddq_f32(v99, v99).u64[0];
            v100 = vpadd_f32(*v99.f32, *v99.f32);
            if (vcgt_f32(v85, v100).u8[0])
            {
              v61 = v82;
              v101 = -1;
            }

            else
            {
              v101 = 0;
            }

            v85 = vbsl_s8(vdup_n_s32(v101), v100, v85);
          }

          ++v82;
        }

        while (v82 != v60);
      }

      else
      {
        v61 = v62;
      }
    }

    v125 = v51 + 20 * v61;
LABEL_63:
    physx::Gu::generatedContactsEEContacts(a1, *(a2 + 32), *(a2 + 40), v125, a3, a4, a5, a6, a7, &v127);
    goto LABEL_64;
  }

  result = physx::Gu::testSATCapsulePoly(a1, a2, a3, a7, v128, &v127);
  if (!result)
  {
    return result;
  }

  physx::Gu::generatedFaceContacts(a1, a2, a3, a4, a5, a6, &v127, *a7);
  if ((*a6 - v21) < 2)
  {
    v24 = *(a2 + 24);
    v25 = vnegq_f32(v127);
    v25.i32[3] = 0;
    v26 = a3[5];
    v27 = vmulq_f32(v25, *v26);
    v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
    v28 = vmulq_f32(v25, v26[1]);
    v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
    v29 = vmulq_f32(v25, v26[2]);
    v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
    v30 = vpadd_f32(*v29.f32, *v29.f32).u32[0];
    *v31.f32 = vext_s8(vpadd_f32(*v27.f32, *v27.f32), vpadd_f32(*v28.f32, *v28.f32), 4uLL);
    v31.i64[1] = v30;
    v32 = *v24;
    v32.i32[3] = 0;
    v33 = vmulq_f32(v32, v31);
    v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
    v34 = vpadd_f32(*v33.f32, *v33.f32);
    v35 = *(a2 + 16);
    if (v35 < 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = 0;
      v37 = (v24 + 20);
      for (j = 1; j != v35; ++j)
      {
        v39 = *v37;
        v37 = (v37 + 20);
        v40 = v39;
        v40.i32[3] = 0;
        v41 = vmulq_f32(v40, v31);
        v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
        v42 = vpadd_f32(*v41.f32, *v41.f32);
        if (vcgt_f32(v34, v42).u8[0])
        {
          v36 = j;
          v43 = -1;
        }

        else
        {
          v43 = 0;
        }

        v34 = vbsl_s8(vdup_n_s32(v43), v42, v34);
      }
    }

    v102 = *(a2 + 20);
    v126 = v127;
    if (v102)
    {
      v103 = 0;
      v104 = vnegq_f32(v31);
      v104.i32[3] = 0;
      v105 = *(a2 + 48);
      v106 = vmul_f32(v34, v34);
      v107 = -1;
      do
      {
        v108 = (v105 + (2 * v103));
        v109 = *(v24 + 20 * *v108);
        v109.i32[3] = 0;
        v110 = *(v24 + 20 * v108[1]);
        v110.i32[3] = 0;
        v111 = vaddq_f32(v109, v110);
        v112 = vmulq_f32(v111, v111);
        v112.i64[0] = vpaddq_f32(v112, v112).u64[0];
        v113 = vpadd_f32(*v112.f32, *v112.f32);
        v114 = vmulq_f32(v104, v111);
        v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
        v115 = vpadd_f32(*v114.f32, *v114.f32);
        v116 = vmul_f32(v115, v115);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v116, vmul_f32(v106, v113)), vcgez_f32(v115)), 0), *v104.f32).u32[0] == -1)
        {
          v117 = vrecpe_f32(v113);
          v118 = 4;
          do
          {
            v117 = vmul_f32(v117, vrecps_f32(v113, v117));
            --v118;
          }

          while (v118);
          v106 = vmul_f32(v116, v117);
          v107 = v103;
        }

        ++v103;
      }

      while (v103 != v102);
      if (v107 != -1)
      {
        v119 = (v105 + (2 * v107));
        v120 = *v119;
        v121 = *(v24 + 20 * *v119);
        v36 = v119[1];
        v121.i32[3] = 0;
        v122 = *(v24 + 20 * v36);
        v122.i32[3] = 0;
        v123 = vmulq_f32(v104, v121);
        v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
        v124 = vmulq_f32(v104, v122);
        v124.i64[0] = vpaddq_f32(v124, v124).u64[0];
        if (vcgt_f32(vpadd_f32(*v123.f32, *v123.f32), vpadd_f32(*v124.f32, *v124.f32)).u8[0])
        {
          v36 = v120;
        }
      }
    }

    v125 = v24 + 20 * v36;
    goto LABEL_63;
  }

  v67 = v127;
LABEL_65:
  *a8 = v67;
  return 1;
}

__n128 physx::Gu::generatedFaceContacts(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, _DWORD *a6, float32x4_t *a7, float32x2_t a8)
{
  v15 = vnegq_f32(*a7);
  v8 = *(a3 + 48);
  v9 = *v8;
  v10 = v8[1];
  v11 = vmulq_n_f32(*v8, v15.f32[0]);
  v12 = vmulq_lane_f32(v10, *v15.f32, 1);
  v13 = v8[2];
  v14 = vmulq_laneq_f32(v13, v15, 2);
  v15.i32[3] = 0;
  v11.i32[3] = 0;
  v12.i32[3] = 0;
  v14.i32[3] = 0;
  result.n128_u64[0] = vadd_f32(*(a1 + 80), a8);
  v17 = vaddq_f32(vaddq_f32(v11, v12), v14);
  v18 = *(a1 + 48);
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = vmulq_n_f32(v9, v18.f32[0]);
    v21.i32[3] = 0;
    v22 = vmulq_lane_f32(v10, *v18.f32, 1);
    v22.i32[3] = 0;
    v23 = vmulq_laneq_f32(v13, v18, 2);
    v23.i32[3] = 0;
    v24 = vaddq_f32(v23, vaddq_f32(v21, v22));
    __asm { FMOV            V17.2S, #1.0 }

    v30 = 0;
    while (1)
    {
      v31 = *(*(a2 + 24) + 20 * v20);
      v32 = vdup_laneq_s32(v31, 3);
      v31.i32[3] = 0;
      v33 = vmulq_f32(v17, v31);
      v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
      v34 = vpadd_f32(*v33.f32, *v33.f32);
      v35 = vmulq_f32(v24, v31);
      v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
      v36 = vadd_f32(v32, vpadd_f32(*v35.f32, *v35.f32));
      if (vabs_f32(v34).f32[0] < 0.0000001)
      {
        if (v36.f32[0] > 0.0)
        {
          break;
        }
      }

      else
      {
        v37 = vrecpe_f32(v34);
        v38 = 4;
        do
        {
          v37 = vmul_f32(v37, vrecps_f32(v34, v37));
          --v38;
        }

        while (v38);
        v39 = vmul_f32(v37, vneg_f32(v36));
        v40 = vcltz_f32(v34);
        v30 = vbsl_s8(vdup_lane_s32(vand_s8(vcgt_f32(v39, v30), v40), 0), v39, v30);
        _D17 = vbsl_s8(vdup_lane_s32(vbic_s8(vcgt_f32(_D17, v39), v40), 0), v39, _D17);
      }

      if (vcgt_f32(v30, _D17).u8[0])
      {
        break;
      }

      if (++v20 == v19)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v30 = 0;
LABEL_12:
    if (vcge_f32(result.n128_u64[0], v30).u8[0])
    {
      v41 = vsubq_f32(v18, a4[3]);
      v42 = vmulq_f32(*a4, v41);
      v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
      v43 = vmulq_f32(v41, a4[1]);
      v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
      v44 = vmulq_f32(v41, a4[2]);
      v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
      *&v45 = vext_s8(vpadd_f32(*v42.f32, *v42.f32), vpadd_f32(*v43.f32, *v43.f32), 4uLL);
      *(&v45 + 1) = vpadd_f32(*v44.f32, *v44.f32).u32[0];
      *(a5 + 48 * *a6) = v45;
      v46 = vmlaq_n_f32(*(a1 + 48), v15, v30.f32[0]);
      v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
      *(a5 + 48 * *a6 + 16) = v46;
      v47 = *a7;
      v47.i32[3] = v30.i32[1];
      v48 = (*a6)++;
      *(a5 + 48 * v48 + 32) = v47;
      v19 = *(a3 + 48);
      v9 = *v19;
      v10 = v19[1];
      v13 = v19[2];
      LODWORD(v19) = *(a2 + 16);
    }
  }

  v49 = *(a1 + 64);
  if (v19)
  {
    v50 = 0;
    v51 = vmulq_n_f32(v9, v49.f32[0]);
    v51.i32[3] = 0;
    v52 = vmulq_lane_f32(v10, *v49.f32, 1);
    v52.i32[3] = 0;
    v53 = vmulq_laneq_f32(v13, v49, 2);
    v53.i32[3] = 0;
    v54 = vaddq_f32(v53, vaddq_f32(v51, v52));
    __asm { FMOV            V5.2S, #1.0 }

    v56 = 0;
    while (1)
    {
      v57 = *(*(a2 + 24) + 20 * v50);
      v58 = vdup_laneq_s32(v57, 3);
      v57.i32[3] = 0;
      v59 = vmulq_f32(v17, v57);
      v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
      v60 = vpadd_f32(*v59.f32, *v59.f32);
      v61 = vmulq_f32(v54, v57);
      v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
      v62 = vadd_f32(v58, vpadd_f32(*v61.f32, *v61.f32));
      if (vabs_f32(v60).f32[0] < 0.0000001)
      {
        if (v62.f32[0] > 0.0)
        {
          return result;
        }
      }

      else
      {
        v63 = vrecpe_f32(v60);
        v64 = 4;
        do
        {
          v63 = vmul_f32(v63, vrecps_f32(v60, v63));
          --v64;
        }

        while (v64);
        v65 = vmul_f32(v63, vneg_f32(v62));
        v66 = vcltz_f32(v60);
        v56 = vbsl_s8(vdup_lane_s32(vand_s8(vcgt_f32(v65, v56), v66), 0), v65, v56);
        _D5 = vbsl_s8(vdup_lane_s32(vbic_s8(vcgt_f32(_D5, v65), v66), 0), v65, _D5);
      }

      if (vcgt_f32(v56, _D5).u8[0])
      {
        break;
      }

      if (++v50 == v19)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v56 = 0;
LABEL_25:
    result.n128_u64[0] = vcge_f32(result.n128_u64[0], v56);
    if (result.n128_u8[0])
    {
      v67 = vsubq_f32(v49, a4[3]);
      v68 = vmulq_f32(*a4, v67);
      v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
      v69 = vmulq_f32(v67, a4[1]);
      v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
      v70 = vmulq_f32(v67, a4[2]);
      v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
      *&v71 = vext_s8(vpadd_f32(*v68.f32, *v68.f32), vpadd_f32(*v69.f32, *v69.f32), 4uLL);
      *(&v71 + 1) = vpadd_f32(*v70.f32, *v70.f32).u32[0];
      *(a5 + 48 * *a6) = v71;
      v72 = vmlaq_n_f32(*(a1 + 64), v15, v56.f32[0]);
      v72.i64[1] = vextq_s8(v72, v72, 8uLL).u32[0];
      *(a5 + 48 * *a6 + 16) = v72;
      result = *a7;
      result.n128_u32[3] = v56.u32[1];
      v73 = (*a6)++;
      *(a5 + 48 * v73 + 32) = result;
    }
  }

  return result;
}

uint64_t physx::Gu::generateSphereFullContactManifold(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, float32x2_t *a6, float32x4_t *a7, char a8)
{
  if ((a8 & 1) == 0)
  {
    v12 = *a7;
LABEL_17:
    v39 = vnegq_f32(v12);
    v40 = *(a2 + 16);
    if (v40)
    {
      v41 = 0;
      v42 = *(a3 + 48);
      v43 = v42[1];
      v44 = vmulq_n_f32(*v42, v39.f32[0]);
      v44.i32[3] = 0;
      v45 = vmulq_lane_f32(v43, *v39.f32, 1);
      v45.i32[3] = 0;
      v46 = v42[2];
      v47 = vmulq_laneq_f32(v46, v39, 2);
      v47.i32[3] = 0;
      v48 = vaddq_f32(v44, v45);
      v49 = a1[3];
      v50 = vmulq_n_f32(*v42, v49.f32[0]);
      v50.i32[3] = 0;
      v51 = vmulq_lane_f32(v43, *v49.f32, 1);
      v51.i32[3] = 0;
      v52 = vaddq_f32(v48, v47);
      v53 = vmulq_laneq_f32(v46, v49, 2);
      v53.i32[3] = 0;
      v54 = vaddq_f32(v53, vaddq_f32(v50, v51));
      __asm { FMOV            V6.2S, #1.0 }

      v60 = 0;
      while (1)
      {
        v61 = *(*(a2 + 24) + 20 * v41);
        v62 = vdup_laneq_s32(v61, 3);
        v61.i32[3] = 0;
        v63 = vmulq_f32(v52, v61);
        v63.i64[0] = vpaddq_f32(v63, v63).u64[0];
        v64 = vpadd_f32(*v63.f32, *v63.f32);
        v65 = vmulq_f32(v54, v61);
        v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
        v66 = vadd_f32(v62, vpadd_f32(*v65.f32, *v65.f32));
        if (vabs_f32(v64).f32[0] < 0.0000001)
        {
          if (v66.f32[0] > 0.0)
          {
            return 1;
          }
        }

        else
        {
          v67 = vrecpe_f32(v64);
          v68 = 4;
          do
          {
            v67 = vmul_f32(v67, vrecps_f32(v64, v67));
            --v68;
          }

          while (v68);
          v69 = vmul_f32(v67, vneg_f32(v66));
          v70 = vcltz_f32(v64);
          v60 = vbsl_s8(vdup_lane_s32(vand_s8(vcgt_f32(v69, v60), v70), 0), v69, v60);
          _D6 = vbsl_s8(vdup_lane_s32(vbic_s8(vcgt_f32(_D6, v69), v70), 0), v69, _D6);
        }

        if (vcgt_f32(v60, _D6).u8[0])
        {
          break;
        }

        if (++v41 == v40)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v60 = 0;
LABEL_28:
      if ((COERCE_FLOAT(a1[5].i64[0]) + COERCE_FLOAT(*a6)) >= v60.f32[0])
      {
        v39.i32[3] = 0;
        v71 = (a4 + 48 * *a5);
        *v71 = 0;
        v71[1] = 0;
        v72 = vmlaq_n_f32(a1[3], v39, v60.f32[0]);
        v72.i64[1] = vextq_s8(v72, v72, 8uLL).u32[0];
        *(a4 + 48 * *a5 + 16) = v72;
        v73 = *a7;
        v73.i32[3] = v60.i32[1];
        LODWORD(v71) = (*a5)++;
        *(a4 + 48 * v71 + 32) = v73;
      }
    }

    return 1;
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    v12 = xmmword_1E3047680;
LABEL_16:
    *a7 = v12;
    goto LABEL_17;
  }

  v9 = 0;
  v10 = *(a3 + 48);
  v11 = *a1[5].f32;
  v12 = xmmword_1E3047680;
  v13 = vneg_f32(0x80000000800000);
  while (1)
  {
    v14 = *(a2 + 24) + 20 * v9;
    v15 = *(*(a2 + 32) + 12 * *(v14 + 19));
    v16 = *v14;
    v16.i32[3] = 0;
    v17 = vmulq_f32(*v10, v16);
    v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
    v18 = vmulq_f32(v10[1], v16);
    v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
    v21 = vpadd_f32(*v18.f32, *v18.f32);
    v19 = vmulq_f32(v10[2], v16);
    v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
    *v20.f32 = vext_s8(vpadd_f32(*v17.f32, *v17.f32), v21, 4uLL);
    v20.i64[1] = vpadd_f32(*v19.f32, *v19.f32).u32[0];
    v21.i32[0] = *(v14 + 12);
    *v19.f32 = vpadd_f32(vmul_f32(*v20.f32, *v20.f32), vmul_f32(*&v20.u32[2], *&v20.u32[2]));
    v22 = vpadd_f32(*v19.f32, *v19.f32);
    v23 = vrsqrte_f32(v22);
    v24 = 4;
    do
    {
      v23 = vmul_f32(v23, vrsqrts_f32(vmul_f32(v23, v23), v22));
      --v24;
    }

    while (v24);
    v25 = vbsl_s8(vdup_lane_s32(vceqz_f32(v22), 0), v22, vmul_f32(v22, v23));
    v26 = vrecpe_f32(v25);
    v27 = 4;
    do
    {
      v26 = vmul_f32(v26, vrecps_f32(v25, v26));
      --v27;
    }

    while (v27);
    v15.i32[3] = 0;
    v28 = vmulq_n_f32(v20, v26.f32[0]);
    v28.i32[3] = 0;
    v29 = vmulq_f32(v15, v16);
    v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
    v30 = vmul_f32(v26, vpadd_f32(*v29.f32, *v29.f32));
    v31 = vmul_f32(v26, vneg_f32(vdup_lane_s32(v21, 0)));
    v32 = vmulq_f32(a1[3], v28);
    v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
    *v32.f32 = vpadd_f32(*v32.f32, *v32.f32);
    v33 = vmulq_f32(a1[4], v28);
    v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
    *v33.f32 = vpadd_f32(*v33.f32, *v33.f32);
    v34 = vmin_f32(*v32.f32, *v33.f32);
    *v33.f32 = vmax_f32(*v32.f32, *v33.f32);
    v35 = vsub_f32(v34, v11);
    if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v30, vadd_f32(*a6, vadd_f32(v11, *v33.f32))), vcgt_f32(v35, vadd_f32(*a6, v31))), 0), *v12.f32).u32[0] == -1)
    {
      return 0;
    }

    v36 = vsub_f32(v31, v35);
    if (vcgt_f32(v13, v36).u8[0])
    {
      v37 = -1;
    }

    else
    {
      v37 = 0;
    }

    v38 = vdupq_n_s32(v37);
    v12 = vbslq_s8(v38, v28, v12);
    v13 = vbsl_s8(*v38.i8, v36, v13);
    if (++v9 == v8)
    {
      goto LABEL_16;
    }
  }
}

double physx::Gu::computeMTD(float32x4_t *a1, uint64_t a2, void *a3, float32x2_t *a4, float32x4_t *a5)
{
  v23 = 0;
  v22 = 0uLL;
  v21 = 0.0;
  if (physx::Gu::testSATCapsulePoly(a1, a2, a3, &v23, &v21, &v22))
  {
    v9 = a3[4];
    v10 = *v9;
    v10.i32[3] = 0;
    v11 = vdupq_laneq_s32(*v9, 3).u64[0];
    v12 = vmulq_n_f32(v22, vmla_f32(0xBF000000BF000000, v11, v11).f32[0]);
    v12.i32[3] = 0;
    v13 = vextq_s8(v10, v10, 8uLL).u64[0];
    v14 = vextq_s8(v22, v22, 8uLL).u64[0];
    v15 = vmls_f32(vmul_f32(*v9->i8, vext_s8(*v22.i8, v14, 4uLL)), vext_s8(*v9->i8, v13, 4uLL), *v22.i8);
    *v16.f32 = vext_s8(v15, vmls_f32(vmul_f32(v13, *v22.i8), *v9->i8, v14), 4uLL);
    v16.i64[1] = v15.u32[0];
    v17 = vmlaq_laneq_f32(v12, v16, *v9, 3);
    v17.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
    v18 = vmulq_f32(v10, v22);
    v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
    v19 = vmlaq_n_f32(v17, v10, vpadd_f32(*v18.f32, *v18.f32).f32[0]);
    v20 = vaddq_f32(v19, v19);
    v20.i32[3] = 0;
    *a5 = v20;
    result = v21;
    *a4 = v21;
  }

  return result;
}

BOOL physx::Gu::pcmContactPlaneBox(uint64_t a1, _DWORD *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, float32x4_t **a6, uint64_t a7)
{
  _X20 = *a6;
  __asm { PRFM            #0, [X20,#0x100] }

  v14 = *a4;
  v15.i64[0] = a4[1].i64[0];
  v15.i64[1] = a4[1].u32[2];
  v16.i64[0] = a3[1].i64[0];
  v16.i64[1] = a3[1].u32[2];
  v199[0] = *a3;
  v199[1] = v16;
  v17 = vnegq_f32(v199[0]);
  v18 = vextq_s8(v199[0], v199[0], 8uLL).u64[0];
  v19 = vdupq_laneq_s32(v199[0], 3).u64[0];
  v20 = vsubq_f32(v15, v16);
  v21 = v17;
  v21.i32[3] = 0;
  v22 = vmulq_n_f32(v20, vmla_f32(0xBF000000BF000000, v19, v19).f32[0]);
  v22.i32[3] = 0;
  v23 = vextq_s8(v21, v21, 8uLL).u64[0];
  v24 = vext_s8(*v17.f32, v23, 4uLL);
  v25 = vmls_f32(vmul_f32(*v17.f32, *&vextq_s8(v20, v20, 4uLL)), v24, *v20.f32);
  *v26.f32 = vext_s8(v25, vmls_f32(vmul_f32(v23, *v20.f32), *v17.f32, *&vextq_s8(v20, v20, 8uLL)), 4uLL);
  v26.i64[1] = v25.u32[0];
  v27 = vmlaq_laneq_f32(v22, v26, v199[0], 3);
  v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
  v28 = vmulq_f32(v21, v20);
  v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
  v29 = vmlaq_n_f32(v27, v21, vpadd_f32(*v28.f32, *v28.f32).f32[0]);
  v30 = v14;
  v30.i32[3] = 0;
  v31 = vmulq_f32(v14, v199[0]);
  v32 = vmulq_f32(v30, v21);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vpadd_f32(*v32.f32, *v32.f32);
  v34 = vmulq_laneq_f32(v30, v199[0], 3);
  v30.i64[0] = vextq_s8(v30, v30, 8uLL).u64[0];
  v35 = vmulq_n_f32(v199[0], vadd_f32(*v199[0].f32, *v199[0].f32).f32[0]);
  *_Q17.f32 = vext_s8(v19, v18, 4uLL);
  _Q17.i64[1] = vneg_f32(vdup_lane_s32(*v199[0].f32, 1)).u32[0];
  v35.i32[3] = 0;
  v37 = vmlaq_n_f32(v35, _Q17, *vdup_lane_s32(vadd_f32(v18, v18), 1).i32);
  __asm { FMOV            V17.2S, #-1.0 }

  v38 = vadd_f32(*v37.f32, *_Q17.f32).u32[0];
  v39 = vneg_f32(*v30.f32);
  v37.i64[1] = vextq_s8(v37, v37, 8uLL).u32[0];
  v40 = vmls_f32(vmul_f32(vext_s8(*v14.f32, *v30.f32, 4uLL), *v17.f32), v24, *v14.f32);
  v37.i32[0] = v38;
  v41 = vnegq_f32(v37);
  v41.i32[3] = 0;
  v42 = vaddq_f32(vmulq_laneq_f32(v21, v14, 3), v34);
  v43 = vmulq_f32(v41, v41);
  v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
  v44 = vpadd_f32(*v43.f32, *v43.f32);
  v45 = vrsqrte_f32(v44);
  v46 = 4;
  do
  {
    *v34.f32 = vrsqrts_f32(vmul_f32(v45, v45), v44);
    v45 = vmul_f32(v45, *v34.f32);
    --v46;
  }

  while (v46);
  v47 = vextq_s8(v31, v31, 8uLL).u64[0];
  *v48.f32 = vext_s8(v40, vmla_f32(vmul_f32(*v14.f32, v23), *v17.f32, v39), 4uLL);
  *&v48.u32[2] = v40;
  v49 = vbsl_s8(vdup_lane_s32(vceqz_f32(v44), 0), v44, vmul_f32(v44, v45));
  v50 = vrecpe_f32(v49);
  v51 = 4;
  do
  {
    v50 = vmul_f32(v50, vrecps_f32(v49, v50));
    --v51;
  }

  while (v51);
  v52 = vaddq_f32(v29, v29);
  v53 = vsub_f32(v47, v33);
  v54 = v52;
  v54.i32[3] = 0;
  _Q1 = vmulq_n_f32(v41, v50.f32[0]);
  _Q1.i32[3] = 0;
  v56 = vaddq_f32(v42, v48);
  v198 = _Q1;
  _Q1.i64[0] = *a5;
  v57 = vdup_lane_s32(*a5, 0);
  v197 = v57;
  v34.i32[0] = a2[1];
  v58 = v34;
  v58.i32[1] = a2[2];
  v59 = v58;
  v59.i32[2] = a2[3];
  v60 = vdup_laneq_s32(v59, 2);
  v61 = vpmin_f32(v60, *v58.f32);
  _Q1.f32[0] = *(a5 + 8) * 0.15;
  v62 = vdup_lane_s32(*v56.f32, 1);
  v63 = vdup_laneq_s32(v56, 2);
  *_Q1.f32 = vmin_f32(vmul_f32(vpmin_f32(v61, v61), vdup_n_s32(0x3E19999Au)), vdup_lane_s32(*_Q1.f32, 0));
  v64 = vaddq_f32(v56, v56);
  v65 = vmul_f32(*_Q1.f32, vdup_n_s32(0x3E4CCCCDu));
  v66 = vdup_lane_s32(vmul_f32(*v56.f32, *v64.f32), 0);
  v67 = _X20[4].u8[0];
  v68 = vmul_lane_f32(v62, *v64.f32, 1);
  v69 = vmul_laneq_f32(v63, v64, 2);
  v70 = vmul_n_f32(v62, v64.f32[0]);
  v71 = vmul_n_f32(v63, v64.f32[0]);
  v72 = vmul_lane_f32(vdup_lane_s32(*v64.f32, 0), v53, 1);
  v73 = vmul_lane_f32(v63, *v64.f32, 1);
  v74 = vmul_lane_f32(vdup_lane_s32(*v64.f32, 1), v53, 1);
  *v64.f32 = vmul_lane_f32(vdup_laneq_s32(v64, 2), v53, 1);
  __asm { FMOV            V1.2S, #1.0 }

  v75 = vsub_f32(*_Q1.f32, v66);
  *v76.f32 = vext_s8(vsub_f32(vsub_f32(*_Q1.f32, v68), v69), vadd_f32(v70, *v64.f32), 4uLL);
  v76.i64[1] = vsub_f32(v71, v74).u32[0];
  *v77.f32 = vext_s8(vsub_f32(v70, *v64.f32), vsub_f32(v75, v69), 4uLL);
  v77.i64[1] = vadd_f32(v73, v72).u32[0];
  v78 = vsub_f32(v73, v72);
  v72.i32[0] = vsub_f32(v75, v68).u32[0];
  *v79.f32 = vext_s8(vadd_f32(v71, v74), v78, 4uLL);
  v79.i64[1] = v72.u32[0];
  if (_X20[4].i8[0])
  {
    v80 = vmul_f32(v65, v65);
    v81 = 48 * v67;
    do
    {
      v82 = _X20[5].i64[0];
      v83 = (v82 + v81 - 48);
      v84 = vmulq_n_f32(v76, COERCE_FLOAT(*v83));
      v84.i32[3] = 0;
      v85 = vmulq_lane_f32(v77, *v83->f32, 1);
      v85.i32[3] = 0;
      v86 = vmulq_laneq_f32(v79, *v83, 2);
      v86.i32[3] = 0;
      v87 = vaddq_f32(v54, vaddq_f32(v86, vaddq_f32(v84, v85)));
      v89 = *(v82 + v81 - 32);
      v88 = *(v82 + v81 - 16);
      v90 = v88;
      v90.i32[3] = 0;
      v91 = vmulq_f32(v90, vsubq_f32(v87, v89));
      v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
      v92 = vpadd_f32(*v91.f32, *v91.f32);
      v93 = vmlsq_lane_f32(v87, v90, v92, 0);
      v93.i64[1] = vextq_s8(v93, v93, 8uLL).u32[0];
      v94 = vsubq_f32(v89, v93);
      v95 = vmulq_f32(v94, v94);
      v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v95.f32, *v95.f32), v80), 0), *v54.f32).u32[0] == -1)
      {
        v96 = _X20[4].i8[0] - 1;
        _X20[4].i8[0] = v96;
        v97 = (v82 + 48 * v96);
        v98 = *v97;
        v99 = v97[2];
        v83[1] = v97[1];
        v83[2] = v99;
        *v83 = v98;
      }

      else
      {
        v88.i32[3] = v92.i32[1];
        *(v82 + v81 - 16) = v88;
      }

      v81 -= 48;
    }

    while (v81);
    v100 = _X20[4].u8[0];
  }

  else
  {
    v100 = 0;
  }

  v56.i32[3] = v53.i32[1];
  if (v100 != v67 || (v101 = vabdq_f32(v54, _X20[1]), *v101.i8 = vpmax_f32(*&vextq_s8(v101, v101, 8uLL), *v101.i8), v102 = vmulq_f32(v56, *_X20), v102.i64[0] = vpaddq_f32(v102, v102).u64[0], vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v102.f32, *v102.f32)), vcgt_f32(vpmax_f32(*v101.i8, *v101.i8), v65)), 0), *v54.f32).u32[0] == -1))
  {
    v103 = 0;
    v104 = vdupq_lane_s32(*v34.f32, 0).u64[0];
    v105 = vdupq_lane_s32(*v58.f32, 1).u64[0];
    v106 = vmulq_n_f32(v76, v34.f32[0]);
    v107 = vmulq_lane_f32(v77, *v58.f32, 1);
    v108 = vsub_f32(*v106.f32, *v107.f32);
    v106.i32[3] = 0;
    v109 = v107;
    v109.i32[3] = 0;
    _X20[4].i8[0] = 0;
    v110 = vmulq_laneq_f32(v79, v59, 2);
    v111 = v110;
    v111.i32[3] = 0;
    *_X20 = v56;
    _X20[1] = v54;
    v112 = vnegq_f32(v111).u64[0];
    v113 = vdup_lane_s32(*v52.f32, 0);
    v114 = vaddq_f32(v106, v109);
    v115 = vaddq_f32(v111, v114);
    v116 = vdup_lane_s32(*v115.f32, 0);
    v117 = vdup_lane_s32(vadd_f32(*v114.f32, v112), 0);
    v118 = vadd_f32(*v110.f32, v108);
    v119 = vsub_f32(v108, *v110.f32);
    v120 = vsub_f32(v57, v113);
    if (vcgt_f32(v120, v116).u8[0])
    {
      v121 = vadd_f32(v113, v116);
      v122 = vmlaq_n_f32(vaddq_f32(v54, v115), xmmword_1E3117380, v121.f32[0]);
      v122.i64[1] = vextq_s8(v122, v122, 8uLL).u32[0];
      *a7 = v59;
      *(a7 + 16) = v122;
      v122.i64[0] = 0;
      v122.i32[2] = 0;
      v122.i32[3] = v121.i32[1];
      *(a7 + 32) = vorrq_s8(v122, xmmword_1E3047670);
      v103 = 1;
    }

    v123 = vsub_f32(*v110.f32, v108);
    v124 = vneg_f32(v105);
    v125 = vneg_f32(v60).u32[0];
    v126 = vdup_lane_s32(v118, 0);
    if (vcgt_f32(v120, v117).u8[0])
    {
      v127 = vadd_f32(v113, v117);
      *v128.f32 = vext_s8(v104, v105, 4uLL);
      v128.i64[1] = v125;
      v129 = vmulq_n_f32(v76, v128.f32[0]);
      v129.i32[3] = 0;
      v130 = vmulq_lane_f32(v77, *v128.f32, 1);
      v130.i32[3] = 0;
      v131 = a7 + 48 * v103;
      v132 = vaddq_f32(v129, v130);
      v133 = vmulq_laneq_f32(v79, v128, 2);
      v133.i32[3] = 0;
      v134 = vmlaq_n_f32(vaddq_f32(v54, vaddq_f32(v133, v132)), xmmword_1E3117380, v127.f32[0]);
      v134.i64[1] = vextq_s8(v134, v134, 8uLL).u32[0];
      *v131 = v128;
      *(v131 + 16) = v134;
      v134.i64[0] = 0;
      v134.i32[2] = 0;
      v134.i32[3] = v127.i32[1];
      ++v103;
      *(v131 + 32) = vorrq_s8(v134, xmmword_1E3047670);
    }

    v135 = vsub_f32(v112, v108);
    v136 = vdup_lane_s32(v119, 0);
    *v137.f32 = vext_s8(v104, v124, 4uLL);
    if (vcgt_f32(v120, v126).u32[0])
    {
      v138 = vadd_f32(v113, v126);
      v139.i64[0] = v137.i64[0];
      v139.i64[1] = v60.u32[0];
      v140 = vmulq_n_f32(v76, v137.f32[0]);
      v140.i32[3] = 0;
      v141 = vmulq_lane_f32(v77, *v137.f32, 1);
      v141.i32[3] = 0;
      v142 = a7 + 48 * v103;
      v143 = vaddq_f32(v140, v141);
      v144 = vmulq_laneq_f32(v79, v139, 2);
      v144.i32[3] = 0;
      v145 = vmlaq_n_f32(vaddq_f32(v54, vaddq_f32(v144, v143)), xmmword_1E3117380, v138.f32[0]);
      v145.i64[1] = vextq_s8(v145, v145, 8uLL).u32[0];
      *v142 = v139;
      *(v142 + 16) = v145;
      v145.i64[0] = 0;
      v145.i32[2] = 0;
      v145.i32[3] = v138.i32[1];
      ++v103;
      *(v142 + 32) = vorrq_s8(v145, xmmword_1E3047670);
    }

    v146 = vsub_f32(*v110.f32, *v114.f32);
    v147 = vneg_f32(v104);
    v148 = vdup_lane_s32(v123, 0);
    if (vcgt_f32(v120, v136).u8[0])
    {
      v149 = vadd_f32(v113, v136);
      v137.i64[1] = v125;
      v150 = vmulq_n_f32(v76, v137.f32[0]);
      v150.i32[3] = 0;
      v151 = vmulq_lane_f32(v77, *v137.f32, 1);
      v151.i32[3] = 0;
      v152 = a7 + 48 * v103;
      v153 = vaddq_f32(v150, v151);
      v154 = vmulq_laneq_f32(v79, v137, 2);
      v154.i32[3] = 0;
      v155 = vmlaq_n_f32(vaddq_f32(v54, vaddq_f32(v154, v153)), xmmword_1E3117380, v149.f32[0]);
      v155.i64[1] = vextq_s8(v155, v155, 8uLL).u32[0];
      *v152 = v137;
      *(v152 + 16) = v155;
      v156 = v149.i32[1];
      v157.i64[0] = 0;
      v157.i32[2] = 0;
      v157.i32[3] = v156;
      ++v103;
      *(v152 + 32) = vorrq_s8(v157, xmmword_1E3047670);
    }

    v158 = vsub_f32(v112, *v114.f32);
    v159 = vdup_lane_s32(v135, 0);
    *v160.f32 = vext_s8(v147, v105, 4uLL);
    if (vcgt_f32(v120, v148).u8[0])
    {
      v161 = vadd_f32(v113, v148);
      v162.i64[0] = v160.i64[0];
      v162.i64[1] = v60.u32[0];
      v163 = vmulq_n_f32(v76, v160.f32[0]);
      v163.i32[3] = 0;
      v164 = vmulq_lane_f32(v77, *v160.f32, 1);
      v164.i32[3] = 0;
      v165 = a7 + 48 * v103;
      v166 = vaddq_f32(v163, v164);
      v167 = vmulq_laneq_f32(v79, v162, 2);
      v167.i32[3] = 0;
      v168 = vmlaq_n_f32(vaddq_f32(v54, vaddq_f32(v167, v166)), xmmword_1E3117380, v161.f32[0]);
      v168.i64[1] = vextq_s8(v168, v168, 8uLL).u32[0];
      *v165 = v162;
      *(v165 + 16) = v168;
      v168.i64[0] = 0;
      v168.i32[2] = 0;
      v168.i32[3] = v161.i32[1];
      ++v103;
      *(v165 + 32) = vorrq_s8(v168, xmmword_1E3047670);
    }

    v169 = vdup_lane_s32(v146, 0);
    if (vcgt_f32(v120, v159).u8[0])
    {
      v170 = vadd_f32(v113, v159);
      v160.i64[1] = v125;
      v171 = vmulq_n_f32(v76, v160.f32[0]);
      v171.i32[3] = 0;
      v172 = vmulq_lane_f32(v77, *v160.f32, 1);
      v172.i32[3] = 0;
      v173 = a7 + 48 * v103;
      v174 = vaddq_f32(v171, v172);
      v175 = vmulq_laneq_f32(v79, v160, 2);
      v175.i32[3] = 0;
      v176 = vmlaq_n_f32(vaddq_f32(v54, vaddq_f32(v175, v174)), xmmword_1E3117380, v170.f32[0]);
      v176.i64[1] = vextq_s8(v176, v176, 8uLL).u32[0];
      *v173 = v160;
      *(v173 + 16) = v176;
      v177 = v170.i32[1];
      v178.i64[0] = 0;
      v178.i32[2] = 0;
      v178.i32[3] = v177;
      ++v103;
      *(v173 + 32) = vorrq_s8(v178, xmmword_1E3047670);
    }

    v179 = vdup_lane_s32(v158, 0);
    *v180.f32 = vext_s8(v147, v124, 4uLL);
    if (vcgt_f32(v120, v169).u8[0])
    {
      v181 = vadd_f32(v113, v169);
      v182.i64[0] = v180.i64[0];
      v182.i64[1] = v60.u32[0];
      v183 = vmulq_n_f32(v76, v180.f32[0]);
      v183.i32[3] = 0;
      v184 = vmulq_lane_f32(v77, *v180.f32, 1);
      v184.i32[3] = 0;
      v185 = a7 + 48 * v103;
      v186 = vaddq_f32(v183, v184);
      v187 = vmulq_laneq_f32(v79, v182, 2);
      v187.i32[3] = 0;
      v188 = vmlaq_n_f32(vaddq_f32(v54, vaddq_f32(v187, v186)), xmmword_1E3117380, v181.f32[0]);
      v188.i64[1] = vextq_s8(v188, v188, 8uLL).u32[0];
      *v185 = v182;
      *(v185 + 16) = v188;
      v188.i32[0] = v181.i32[1];
      v189.i64[0] = 0;
      v189.i32[2] = 0;
      v189.i32[3] = v188.i32[0];
      ++v103;
      *(v185 + 32) = vorrq_s8(v189, xmmword_1E3047670);
    }

    if (vcgt_f32(v120, v179).u8[0])
    {
      v190 = vadd_f32(v113, v179);
      v180.i64[1] = v125;
      v191 = vmulq_n_f32(v76, v180.f32[0]);
      v191.i32[3] = 0;
      v192 = vmulq_lane_f32(v77, *v180.f32, 1);
      v192.i32[3] = 0;
      v193 = a7 + 48 * v103;
      v194 = vmulq_laneq_f32(v79, v180, 2);
      v194.i32[3] = 0;
      v195 = vmlaq_n_f32(vaddq_f32(v54, vaddq_f32(v194, vaddq_f32(v191, v192))), xmmword_1E3117380, v190.f32[0]);
      v195.i64[1] = vextq_s8(v195, v195, 8uLL).u32[0];
      *v193 = v180;
      *(v193 + 16) = v195;
      v191.i64[0] = 0;
      v191.i32[2] = 0;
      v191.i32[3] = v190.i32[1];
      ++v103;
      *(v193 + 32) = vorrq_s8(v191, xmmword_1E3047670);
    }

    physx::Gu::PersistentContactManifold::addBatchManifoldContactsCluster(_X20, a7, v103);
  }

  physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(_X20, a7, &v198, v199, &v197);
  return _X20[4].i8[0] != 0;
}

BOOL physx::Gu::pcmContactPlaneCapsule(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, int32x2_t *a5, float32x4_t **a6, uint64_t a7)
{
  _X20 = *a6;
  __asm { PRFM            #0, [X20,#0x100] }

  v14.i64[0] = a4[1].i64[0];
  v14.i64[1] = a4[1].u32[2];
  v150[0] = *a4;
  v150[1] = v14;
  v15 = *a3;
  v16.i64[0] = a3[1].i64[0];
  v16.i64[1] = a3[1].u32[2];
  v17 = vnegq_f32(*a3);
  v18 = vdupq_laneq_s32(*a3, 3).u64[0];
  v19 = vsubq_f32(v14, v16);
  v20 = v17;
  v20.i32[3] = 0;
  v21 = vmulq_n_f32(v19, vmla_f32(0xBF000000BF000000, v18, v18).f32[0]);
  v21.i32[3] = 0;
  v22 = vextq_s8(v20, v20, 8uLL).u64[0];
  v23 = vext_s8(*v17.f32, v22, 4uLL);
  v24 = vmls_f32(vmul_f32(*v17.f32, *&vextq_s8(v19, v19, 4uLL)), v23, *v19.f32);
  *v25.f32 = vext_s8(v24, vmls_f32(vmul_f32(v22, *v19.f32), *v17.f32, *&vextq_s8(v19, v19, 8uLL)), 4uLL);
  v25.i64[1] = v24.u32[0];
  v26 = vmlaq_laneq_f32(v21, v25, *a3, 3);
  v26.i64[1] = vextq_s8(v26, v26, 8uLL).u32[0];
  v27 = vextq_s8(v15, v15, 8uLL).u64[0];
  v28 = vmulq_f32(v20, v19);
  v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
  v29 = vmlaq_n_f32(v26, v20, vpadd_f32(*v28.f32, *v28.f32).f32[0]);
  v30 = v150[0];
  v30.i32[3] = 0;
  v31 = vextq_s8(v30, v30, 8uLL).u64[0];
  v32 = vmulq_n_f32(*a3, vadd_f32(*v15.i8, *v15.i8).f32[0]);
  v32.i32[3] = 0;
  v33 = vmls_f32(vmul_f32(vext_s8(*v150[0].f32, v31, 4uLL), *v17.f32), v23, *v150[0].f32);
  *v34.f32 = vext_s8(v18, v27, 4uLL);
  v34.i64[1] = vneg_f32(vdup_lane_s32(*a3->f32, 1)).u32[0];
  v35 = vmlaq_n_f32(v32, v34, *vdup_lane_s32(vadd_f32(v27, v27), 1).i32);
  v42.i32[1] = v35.i32[1];
  __asm { FMOV            V0.2S, #-1.0 }

  v37 = vmulq_f32(v150[0], *a3);
  v38 = vmulq_laneq_f32(v30, *a3, 3);
  v39 = vmulq_f32(v30, v20);
  v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
  v40 = vpadd_f32(*v39.f32, *v39.f32);
  v41 = vneg_f32(v31);
  v42.i64[1] = vextq_s8(v35, v35, 8uLL).u32[0];
  v42.i32[0] = vadd_f32(*v35.i8, _D0).u32[0];
  v43 = vaddq_f32(vmulq_laneq_f32(v20, v150[0], 3), v38);
  v44 = vmulq_f32(v42, v42);
  v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
  v45 = vpadd_f32(*v44.f32, *v44.f32);
  v46 = vrsqrte_f32(v45);
  v47 = 4;
  do
  {
    v46 = vmul_f32(v46, vrsqrts_f32(vmul_f32(v46, v46), v45));
    --v47;
  }

  while (v47);
  v48 = vextq_s8(v37, v37, 8uLL).u64[0];
  *v49.f32 = vext_s8(v33, vmla_f32(vmul_f32(*v150[0].f32, v22), *v17.f32, v41), 4uLL);
  *&v49.u32[2] = v33;
  v50 = vbsl_s8(vdup_lane_s32(vceqz_f32(v45), 0), v45, vmul_f32(v45, v46));
  v51 = vrecpe_f32(v50);
  v52 = 4;
  do
  {
    v51 = vmul_f32(v51, vrecps_f32(v50, v51));
    --v52;
  }

  while (v52);
  v55 = vaddq_f32(v29, v29);
  v53 = vsub_f32(v48, v40);
  v54 = vaddq_f32(v43, v49);
  v55.i32[3] = 0;
  v56 = vmulq_n_f32(v42, v51.f32[0]);
  v56.i32[3] = 0;
  v149 = v56;
  v57 = vnegq_f32(v56);
  v57.i32[3] = 0;
  v148 = v57;
  v58 = vdup_lane_s32(*a5, 0);
  v147 = v58;
  v59 = *(a2 + 4);
  v60 = vdup_lane_s32(v59, 0);
  v61 = *(a2 + 8);
  v62 = vdup_lane_s32(*v54.f32, 1);
  v145 = vmul_n_f32(vdup_n_s32(0x3A83126Fu), *v59.i32);
  v146 = v60;
  v63 = _X20[4].u8[0];
  if (_X20[4].i8[0])
  {
    v64 = vmul_n_f32(vdup_n_s32(0x3D4CCCCDu), *v59.i32);
    v65 = vdup_laneq_s32(v54, 2);
    v66 = vaddq_f32(v54, v54);
    v67 = vdup_lane_s32(vmul_f32(*v54.f32, *v66.f32), 0);
    v68 = vmul_lane_f32(v62, *v66.f32, 1);
    v69 = vmul_laneq_f32(v65, v66, 2);
    v70 = vmul_n_f32(v62, v66.f32[0]);
    v71 = vmul_n_f32(v65, v66.f32[0]);
    v72 = vmul_lane_f32(vdup_lane_s32(*v66.f32, 0), v53, 1);
    v73 = vmul_lane_f32(v65, *v66.f32, 1);
    v74 = vmul_lane_f32(vdup_lane_s32(*v66.f32, 1), v53, 1);
    *v66.f32 = vmul_lane_f32(vdup_laneq_s32(v66, 2), v53, 1);
    __asm { FMOV            V6.2S, #1.0 }

    v76 = vsub_f32(_D6, v67);
    *v77.f32 = vext_s8(vsub_f32(vsub_f32(_D6, v68), v69), vadd_f32(v70, *v66.f32), 4uLL);
    *&v77.u32[2] = vsub_f32(v71, v74);
    *v78.f32 = vext_s8(vsub_f32(v70, *v66.f32), vsub_f32(v76, v69), 4uLL);
    *&v78.u32[2] = vadd_f32(v73, v72);
    *v79.f32 = vext_s8(vadd_f32(v71, v74), vsub_f32(v73, v72), 4uLL);
    *&v79.u32[2] = vsub_f32(v76, v68);
    v80 = vmul_f32(v64, v64);
    v81 = 48 * v63;
    do
    {
      v82 = _X20[5].i64[0];
      v83 = (v82 + v81 - 48);
      v84 = vmulq_n_f32(v77, COERCE_FLOAT(*v83));
      v84.i32[3] = 0;
      v85 = vmulq_lane_f32(v78, *v83->f32, 1);
      v85.i32[3] = 0;
      v86 = vmulq_laneq_f32(v79, *v83, 2);
      v86.i32[3] = 0;
      v87 = vaddq_f32(v55, vaddq_f32(v86, vaddq_f32(v84, v85)));
      v89 = *(v82 + v81 - 32);
      v88 = *(v82 + v81 - 16);
      v90 = v88;
      v90.i32[3] = 0;
      v91 = vmulq_f32(v90, vsubq_f32(v87, v89));
      v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
      v92 = vpadd_f32(*v91.f32, *v91.f32);
      v93 = vmlsq_lane_f32(v87, v90, v92, 0);
      v93.i64[1] = vextq_s8(v93, v93, 8uLL).u32[0];
      v94 = vsubq_f32(v89, v93);
      v95 = vmulq_f32(v94, v94);
      v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v95.f32, *v95.f32), v80), 0), _D0).u32[0] == -1)
      {
        v96 = _X20[4].i8[0] - 1;
        _X20[4].i8[0] = v96;
        v97 = (v82 + 48 * v96);
        v98 = *v97;
        v99 = v97[2];
        v83[1] = v97[1];
        v83[2] = v99;
        *v83 = v98;
      }

      else
      {
        v88.i32[3] = v92.i32[1];
        *(v82 + v81 - 16) = v88;
      }

      v81 -= 48;
    }

    while (v81);
    v100 = _X20[4].u8[0];
  }

  else
  {
    v100 = 0;
  }

  v101 = v54;
  v101.i32[3] = v53.i32[1];
  if (v100 != v63 || (v102 = vabdq_f32(v55, _X20[1]), *v102.i8 = vpmax_f32(*&vextq_s8(v102, v102, 8uLL), *v102.i8), v103 = vmulq_f32(v101, *_X20), v103.i64[0] = vpaddq_f32(v103, v103).u64[0], vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v103.f32, *v103.f32)), vcgt_f32(vpmax_f32(*v102.i8, *v102.i8), vmul_n_f32(vdup_n_s32(0x3CA3D70Au), *v59.i32))), 0), _D0).u32[0] == -1))
  {
    v104 = v101;
    v104.i32[3] = 0;
    *v105.f32 = vext_s8(v53, *&vextq_s8(v54, v54, 8uLL), 4uLL);
    v106 = vmulq_n_f32(v104, vadd_f32(*v54.f32, *v54.f32).f32[0]);
    v106.i32[3] = 0;
    v105.i64[1] = vneg_f32(v62).u32[0];
    v107 = vmlaq_n_f32(v106, v105, *vdup_lane_s32(vadd_f32(v53, v53), 1).i32);
    v107.i32[0] = vadd_f32(*v107.f32, _D0).u32[0];
    v108 = vmulq_n_f32(v107, *&v61);
    v109 = vextq_s8(v104, v104, 8uLL).u64[0];
    v108.i32[3] = 0;
    v110 = vdup_lane_s32(v53, 1);
    v111 = vaddq_f32(v55, v108);
    v112 = vsubq_f32(v55, v108);
    v113 = vadd_f32(v58, v60);
    _X20[4].i8[0] = 0;
    *_X20 = v101;
    _X20[1] = v55;
    v114 = vext_s8(*v54.f32, v109, 4uLL);
    if (vcgt_f32(v113, vdup_lane_s32(*v111.f32, 0)).u8[0])
    {
      v115 = vsubq_f32(v111, v55);
      v116 = vmulq_n_f32(v115, vmla_f32(0xBF000000BF000000, v110, v110).f32[0]);
      v116.i32[3] = 0;
      v137 = v112;
      v117 = vmls_f32(vmul_f32(*v54.f32, *&vextq_s8(v115, v115, 4uLL)), v114, *v115.f32);
      *v118.f32 = vext_s8(v117, vmls_f32(vmul_f32(v109, *v115.f32), *v54.f32, *&vextq_s8(v115, v115, 8uLL)), 4uLL);
      v118.i64[1] = v117.u32[0];
      v119 = vmlsq_lane_f32(v116, v118, v53, 1);
      v119.i64[1] = vextq_s8(v119, v119, 8uLL).u32[0];
      v120 = vmulq_f32(v104, v115);
      v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
      v121 = vmlaq_n_f32(v119, v104, vpadd_f32(*v120.f32, *v120.f32).f32[0]);
      v122 = vaddq_f32(v121, v121);
      v122.i32[3] = 0;
      v144 = v122;
      v123 = vdupq_lane_s32(*v111.f32, 0);
      v124 = vmlaq_n_f32(v111, xmmword_1E3117380, v111.f32[0]);
      v124.i64[1] = vextq_s8(v124, v124, 8uLL).u32[0];
      v143 = v124;
      v124.i64[0] = 0;
      v124.i32[2] = 0;
      v124.i32[3] = v123.i32[3];
      v141 = v53;
      v142 = vorrq_s8(v124, xmmword_1E3047670);
      v139 = v55;
      v140 = v54.i64[0];
      v138 = v104;
      v136 = v109;
      physx::Gu::PersistentContactManifold::addManifoldPoint2(_X20, &v144, &v143, &v142, &v145);
      v109 = v136;
      v112 = v137;
      v104 = v138;
      v55 = v139;
      v54.i64[0] = v140;
      v53 = v141;
    }

    if (vcgt_f32(v113, vdup_lane_s32(*v112.f32, 0)).u8[0])
    {
      v125 = vsubq_f32(v112, v55);
      v126 = vmulq_n_f32(v125, vmla_f32(0xBF000000BF000000, v110, v110).f32[0]);
      v126.i32[3] = 0;
      v127 = vmls_f32(vmul_f32(*v54.f32, *&vextq_s8(v125, v125, 4uLL)), v114, *v125.f32);
      *v128.f32 = vext_s8(v127, vmls_f32(vmul_f32(v109, *v125.f32), *v54.f32, *&vextq_s8(v125, v125, 8uLL)), 4uLL);
      v128.i64[1] = v127.u32[0];
      v129 = vmlsq_lane_f32(v126, v128, v53, 1);
      v129.i64[1] = vextq_s8(v129, v129, 8uLL).u32[0];
      v130 = vmulq_f32(v104, v125);
      v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
      v131 = vmlaq_n_f32(v129, v104, vpadd_f32(*v130.f32, *v130.f32).f32[0]);
      v132 = vaddq_f32(v131, v131);
      v132.i32[3] = 0;
      v144 = v132;
      v133 = vdupq_lane_s32(*v112.f32, 0);
      v134 = vmlaq_n_f32(v112, xmmword_1E3117380, v112.f32[0]);
      v134.i64[1] = vextq_s8(v134, v134, 8uLL).u32[0];
      v132.i64[0] = 0;
      v132.i32[2] = 0;
      v132.i32[3] = v133.i32[3];
      v142 = vorrq_s8(v132, xmmword_1E3047670);
      v143 = v134;
      physx::Gu::PersistentContactManifold::addManifoldPoint2(_X20, &v144, &v143, &v142, &v145);
    }
  }

  physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(_X20, a7, &v148, &v149, v150, &v146, &v147);
  return _X20[4].i8[0] != 0;
}

BOOL physx::Gu::pcmContactPlaneConvex(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, float32x4_t **a6, int32x4_t *a7)
{
  _X20 = *a6;
  __asm { PRFM            #0, [X20,#0x100] }

  v14.i64[0] = a4[1].i64[0];
  v14.i64[1] = a4[1].u32[2];
  v15 = *a4;
  v17.i64[0] = a3[1].i64[0];
  v17.i64[1] = a3[1].u32[2];
  v186[0] = *a3;
  v16 = v186[0];
  v186[1] = v17;
  v18 = vnegq_f32(v186[0]);
  v19 = vextq_s8(v16, v16, 8uLL).u64[0];
  v20 = vdupq_laneq_s32(v186[0], 3).u64[0];
  v21 = vsubq_f32(v14, v17);
  v22 = v18;
  v22.i32[3] = 0;
  v23 = vmulq_n_f32(v21, vmla_f32(0xBF000000BF000000, v20, v20).f32[0]);
  v23.i32[3] = 0;
  v24 = vextq_s8(v22, v22, 8uLL).u64[0];
  v25 = vext_s8(*v18.f32, v24, 4uLL);
  v26 = vmls_f32(vmul_f32(*v18.f32, *&vextq_s8(v21, v21, 4uLL)), v25, *v21.f32);
  *v27.f32 = vext_s8(v26, vmls_f32(vmul_f32(v24, *v21.f32), *v18.f32, *&vextq_s8(v21, v21, 8uLL)), 4uLL);
  v27.i64[1] = v26.u32[0];
  v28 = vmlaq_laneq_f32(v23, v27, v186[0], 3);
  v28.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
  v29 = vmulq_f32(v22, v21);
  v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
  v30 = v15;
  v30.i32[3] = 0;
  v31 = vmlaq_n_f32(v28, v22, vpadd_f32(*v29.f32, *v29.f32).f32[0]);
  v32 = vmulq_f32(v15, v186[0]);
  v33 = vmulq_f32(v30, v22);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v34 = vpadd_f32(*v33.f32, *v33.f32);
  v35 = vmulq_laneq_f32(v22, v15, 3);
  v36 = vmulq_laneq_f32(v30, v186[0], 3);
  v30.i64[0] = vextq_s8(v30, v30, 8uLL).u64[0];
  *v22.f32 = vmul_f32(vext_s8(*v15.f32, *v30.f32, 4uLL), *v18.f32);
  v37 = vneg_f32(*v30.f32);
  v38 = vmls_f32(*v22.f32, v25, *v15.f32);
  v39 = vaddq_f32(v35, v36);
  v40 = *(a2 + 4);
  v41 = v40;
  v41.i32[3] = 0;
  v42 = *(a2 + 48);
  v43.i64[0] = *(v42 + 60);
  v43.i64[1] = *(v42 + 68);
  v44 = *(a5 + 8);
  v45 = vmulq_f32(v41, v43);
  v46 = vpmin_f32(vdup_laneq_s32(v45, 2), *v45.i8);
  LODWORD(v47) = vdup_lane_s32(vadd_f32(v19, v19), 1).u32[0];
  v48 = vmulq_n_f32(v186[0], vadd_f32(*v16.i8, *v16.i8).f32[0]);
  v48.i32[3] = 0;
  *v49.f32 = vext_s8(v20, v19, 4uLL);
  v49.i64[1] = vneg_f32(vdup_lane_s32(*v186[0].f32, 1)).u32[0];
  v50 = vmlaq_n_f32(v48, v49, v47);
  __asm { FMOV            V17.2S, #-1.0 }

  v52 = vadd_f32(*v50.i8, _D17);
  v53.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
  v53.i64[0] = __PAIR64__(v50.u32[1], v52.u32[0]);
  v54 = vmulq_f32(v53, v53);
  v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
  v55 = vpadd_f32(*v54.f32, *v54.f32);
  v56 = vrsqrte_f32(v55);
  v57 = 4;
  do
  {
    v56 = vmul_f32(v56, vrsqrts_f32(vmul_f32(v56, v56), v55));
    --v57;
  }

  while (v57);
  v58 = vextq_s8(v32, v32, 8uLL).u64[0];
  *v59.f32 = vext_s8(v38, vmla_f32(vmul_f32(*v15.f32, v24), *v18.f32, v37), 4uLL);
  v60 = vpmin_f32(v46, v46);
  *&v59.u32[2] = v38;
  v61 = vaddq_f32(v39, v59);
  v62 = vbsl_s8(vdup_lane_s32(vceqz_f32(v55), 0), v55, vmul_f32(v55, v56));
  v63 = vrecpe_f32(v62);
  v64 = 4;
  do
  {
    v63 = vmul_f32(v63, vrecps_f32(v62, v63));
    --v64;
  }

  while (v64);
  v67 = vaddq_f32(v31, v31);
  v65 = vsub_f32(v58, v34);
  __asm { FMOV            V1.2S, #0.25 }

  *v52.i32 = v44 * 0.05;
  v67.i32[3] = 0;
  v68 = vmulq_n_f32(v53, v63.f32[0]);
  v68.i32[3] = 0;
  v69 = vnegq_f32(v68);
  v69.i32[3] = 0;
  v70 = vmin_f32(vmul_f32(v60, _D1), vdup_lane_s32(v52, 0));
  v185 = v69;
  v71 = *a5;
  v72 = vdup_lane_s32(*v61.f32, 1);
  v73 = vdup_laneq_s32(v61, 2);
  v184 = vdup_lane_s32(*a5, 0);
  v74 = vaddq_f32(v61, v61);
  v75 = vmul_f32(v70, vdup_n_s32(0x3E4CCCCDu));
  *v69.f32 = vdup_lane_s32(vmul_f32(*v61.f32, *v74.f32), 0);
  v76 = _X20[4].u8[0];
  v77 = vmul_lane_f32(v72, *v74.f32, 1);
  v78 = vmul_laneq_f32(v73, v74, 2);
  v79 = vmul_n_f32(v72, v74.f32[0]);
  v80 = vmul_n_f32(v73, v74.f32[0]);
  v81 = vmul_lane_f32(vdup_lane_s32(*v74.f32, 0), v65, 1);
  v82 = vmul_lane_f32(v73, *v74.f32, 1);
  v83 = vmul_lane_f32(vdup_lane_s32(*v74.f32, 1), v65, 1);
  *v74.f32 = vmul_lane_f32(vdup_laneq_s32(v74, 2), v65, 1);
  __asm { FMOV            V5.2S, #1.0 }

  *v69.f32 = vsub_f32(_D5, *v69.f32);
  *v85.f32 = vext_s8(vsub_f32(vsub_f32(_D5, v77), v78), vadd_f32(v79, *v74.f32), 4uLL);
  v85.i64[1] = vsub_f32(v80, v83).u32[0];
  *v86.f32 = vext_s8(vsub_f32(v79, *v74.f32), vsub_f32(*v69.f32, v78), 4uLL);
  v86.i64[1] = vadd_f32(v82, v81).u32[0];
  v87 = vsub_f32(v82, v81);
  v81.i32[0] = vsub_f32(*v69.f32, v77).u32[0];
  *v88.f32 = vext_s8(vadd_f32(v80, v83), v87, 4uLL);
  v88.i64[1] = v81.u32[0];
  if (_X20[4].i8[0])
  {
    v89 = vmul_f32(v75, v75);
    v90 = 48 * v76;
    do
    {
      v91 = _X20[5].i64[0];
      v92 = (v91 + v90 - 48);
      v93 = vmulq_n_f32(v85, COERCE_FLOAT(*v92));
      v93.i32[3] = 0;
      v94 = vmulq_lane_f32(v86, *v92->f32, 1);
      v94.i32[3] = 0;
      v95 = vmulq_laneq_f32(v88, *v92, 2);
      v95.i32[3] = 0;
      v96 = vaddq_f32(v67, vaddq_f32(v95, vaddq_f32(v93, v94)));
      v98 = *(v91 + v90 - 32);
      v97 = *(v91 + v90 - 16);
      v99 = v97;
      v99.i32[3] = 0;
      v100 = vmulq_f32(v99, vsubq_f32(v96, v98));
      v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
      v101 = vpadd_f32(*v100.f32, *v100.f32);
      v102 = vmlsq_lane_f32(v96, v99, v101, 0);
      v102.i64[1] = vextq_s8(v102, v102, 8uLL).u32[0];
      v103 = vsubq_f32(v98, v102);
      v104 = vmulq_f32(v103, v103);
      v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v104.f32, *v104.f32), v89), 0), *v40.f32).u32[0] == -1)
      {
        v105 = _X20[4].i8[0] - 1;
        _X20[4].i8[0] = v105;
        v106 = (v91 + 48 * v105);
        v107 = *v106;
        v108 = v106[2];
        v92[1] = v106[1];
        v92[2] = v108;
        *v92 = v107;
      }

      else
      {
        v97.i32[3] = v101.i32[1];
        *(v91 + v90 - 16) = v97;
      }

      v90 -= 48;
    }

    while (v90);
    v109 = _X20[4].u8[0];
  }

  else
  {
    v109 = 0;
  }

  v61.i32[3] = v65.i32[1];
  if (v109 != v76 || (v110 = vabdq_f32(v67, _X20[1]), *v110.i8 = vpmax_f32(*&vextq_s8(v110, v110, 8uLL), *v110.i8), v111 = vmulq_f32(v61, *_X20), v111.i64[0] = vpaddq_f32(v111, v111).u64[0], vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v111.f32, *v111.f32)), vcgt_f32(vpmax_f32(*v110.i8, *v110.i8), v75)), 0), *v40.f32).u32[0] == -1))
  {
    v112 = *(a2 + 16);
    _X20[4].i8[0] = 0;
    *_X20 = v61;
    _X20[1] = v67;
    v113 = *(v42 + 38);
    if (*(v42 + 38))
    {
      v114 = 0;
      v115 = 0;
      v116 = vdup_lane_s32(*v112.f32, 1);
      v117 = vdup_laneq_s32(v112, 2);
      v118 = vdup_laneq_s32(v112, 3);
      v119 = vaddq_f32(v112, v112);
      v120 = vmul_lane_f32(v116, *v119.f32, 1);
      v121 = vmul_laneq_f32(v117, v119, 2);
      v122 = vmul_n_f32(v116, v119.f32[0]);
      v123 = vmul_n_f32(v117, v119.f32[0]);
      v124 = vmul_n_f32(v118, v119.f32[0]);
      v125 = vmul_lane_f32(v117, *v119.f32, 1);
      v126 = vmul_lane_f32(v118, *v119.f32, 1);
      v127 = vmul_laneq_f32(v118, v119, 2);
      v128 = vsub_f32(_D5, vdup_lane_s32(vmul_f32(*v112.f32, *v119.f32), 0));
      v129 = vsub_f32(vsub_f32(_D5, v120), v121);
      *v119.f32 = vadd_f32(v122, v127);
      v130 = vsub_f32(v123, v126);
      v131 = vsub_f32(v122, v127);
      v132 = vsub_f32(v128, v121);
      v128.i32[0] = vsub_f32(v128, v120).u32[0];
      v133 = vadd_f32(v123, v126);
      *v134.f32 = vext_s8(v129, *&vdupq_lane_s32(v131, 1), 4uLL);
      v134.i64[1] = vdupq_lane_s32(v133, 1).u64[0];
      *v135.f32 = vext_s8(*&vdupq_lane_s32(*v119.f32, 0), v132, 4uLL);
      *&v135.u32[2] = vsub_f32(v125, v124);
      v136 = vadd_f32(v125, v124);
      *v137.f32 = vext_s8(*&vdupq_lane_s32(v130, 0), v136, 4uLL);
      v137.i64[1] = v128.u32[0];
      v138 = vmulq_n_f32(v134, v40.f32[0]);
      v139 = vmulq_lane_f32(v135, *v40.f32, 1);
      v140 = vmulq_laneq_f32(v137, v40, 2);
      v141 = vmulq_lane_f32(v138, v129, 1);
      v141.i32[3] = 0;
      v142 = vmulq_n_f32(v139, v119.f32[0]);
      v142.i32[3] = 0;
      v143 = vmulq_n_f32(v140, *v130.i32);
      v143.i32[3] = 0;
      v144 = vaddq_f32(v143, vaddq_f32(v141, v142));
      v145 = vmulq_lane_f32(v138, v131, 1);
      v145.i32[3] = 0;
      v146 = vmulq_n_f32(v139, *v132.i32);
      v146.i32[3] = 0;
      v147 = vmulq_n_f32(v140, *v136.i32);
      v147.i32[3] = 0;
      v148 = vaddq_f32(v147, vaddq_f32(v145, v146));
      v149 = vmulq_lane_f32(v138, v133, 1);
      v149.i32[3] = 0;
      v150 = vmulq_n_f32(v139, v135.f32[2]);
      v150.i32[3] = 0;
      v151 = vmulq_n_f32(v140, v128.f32[0]);
      v151.i32[3] = 0;
      v152 = vaddq_f32(v151, vaddq_f32(v149, v150));
      v153 = *(v42 + 40) + 20 * *(v42 + 39);
      v154 = vaddq_f32(vmulq_laneq_f32(v88, v144, 2), vaddq_f32(vmulq_n_f32(v85, v144.f32[0]), vmulq_lane_f32(v86, *v144.f32, 1)));
      v155 = vaddq_f32(vmulq_laneq_f32(v88, v148, 2), vaddq_f32(vmulq_n_f32(v85, v148.f32[0]), vmulq_lane_f32(v86, *v148.f32, 1)));
      v156 = vaddq_f32(vmulq_laneq_f32(v88, v152, 2), vaddq_f32(vmulq_n_f32(v85, v152.f32[0]), vmulq_lane_f32(v86, *v152.f32, 1)));
      v182 = v71.i32[0];
      v183 = v67;
      v180 = v148;
      v181 = v144;
      v178 = v154;
      v179 = v152;
      v176 = v156;
      v177 = v155;
      do
      {
        v157 = (v153 + 12 * v114);
        v159 = vld1q_dup_f32(v157);
        v158 = (v157 + 1);
        v160 = *(v153 + 12 * v114 + 8);
        v161 = vmulq_f32(v154, v159);
        v161.i32[3] = 0;
        v162 = vmulq_n_f32(v155, *v158);
        v162.i32[3] = 0;
        v163 = vmulq_n_f32(v156, v160);
        v163.i32[3] = 0;
        v40 = vaddq_f32(v67, vaddq_f32(vaddq_f32(v161, v162), v163));
        if (*v71.i32 > v40.f32[0])
        {
          v164 = vmulq_f32(v144, v159);
          v164.i32[3] = 0;
          v165 = vmulq_n_f32(v148, *v158);
          v165.i32[3] = 0;
          v166 = vmulq_n_f32(v152, v160);
          v166.i32[3] = 0;
          v167 = vaddq_f32(vaddq_f32(v164, v165), v166);
          i8 = a7[3 * v115].i8;
          v169 = vdupq_lane_s32(*v40.f32, 0);
          v170 = vmlaq_n_f32(v40, xmmword_1E3117380, v40.f32[0]);
          v170.i64[1] = vextq_s8(v170, v170, 8uLL).u32[0];
          v165.i64[0] = 0;
          v165.i32[2] = 0;
          v165.i32[3] = v169.i32[3];
          *i8 = v167;
          i8[1] = v170;
          v40 = vorrq_s8(v165, xmmword_1E3047670);
          ++v115;
          i8[2] = v40;
          if (v115 >= 0x40)
          {
            v40.f32[0] = v44;
            physx::Gu::PersistentContactManifold::reduceBatchContacts(_X20, a7, v115, *v40.i64);
            for (i = 0; i != 12; i += 3)
            {
              v172 = (_X20[5].i64[0] + i * 16);
              v173 = a7[i].i8;
              v40 = *v172;
              v174 = v172[2];
              v173[1] = v172[1];
              v173[2] = v174;
              *v173 = v40;
            }

            v115 = 4;
            v71.i32[0] = v182;
            v67 = v183;
            v148 = v180;
            v144 = v181;
            v154 = v178;
            v152 = v179;
            v156 = v176;
            v155 = v177;
          }
        }

        ++v114;
      }

      while (v114 != v113);
    }

    else
    {
      v115 = 0;
    }

    v40.f32[0] = v44;
    physx::Gu::PersistentContactManifold::addBatchManifoldContacts(_X20, a7, v115, *v40.i64);
  }

  physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(_X20, a7, &v185, v186, &v184);
  return _X20[4].i8[0] != 0;
}

uint64_t physx::Gu::pcmContactSphereBox(uint64_t a1, uint64_t a2, uint64_t a3, int32x4_t *a4, float32x2_t *a5, uint64_t a6, uint64_t a7)
{
  v7.i64[0] = *(a3 + 16);
  v7.i64[1] = *(a3 + 24);
  v8 = *a4;
  v9.i64[0] = a4[1].i64[0];
  v9.i64[1] = a4[1].u32[2];
  v10 = *(a2 + 4);
  v10.i64[1] = *(a2 + 12);
  v11 = *(a1 + 4);
  v12 = *a4;
  v12.i32[3] = 0;
  v13 = vdupq_laneq_s32(*a4, 3);
  v14 = vsubq_f32(v7, v9);
  v15 = vmla_f32(0xBF000000BF000000, *v13.f32, *v13.f32);
  v16 = vmulq_n_f32(v14, *v15.i32);
  v16.i32[3] = 0;
  v17 = vextq_s8(v12, v12, 8uLL).u64[0];
  v18 = vext_s8(*a4->i8, v17, 4uLL);
  v19 = vmls_f32(vmul_f32(*a4->i8, *&vextq_s8(v14, v14, 4uLL)), v18, *v14.f32);
  *v20.f32 = vext_s8(v19, vmls_f32(vmul_f32(v17, *v14.f32), *a4->i8, *&vextq_s8(v14, v14, 8uLL)), 4uLL);
  v20.i64[1] = v19.u32[0];
  v21 = vmlsq_laneq_f32(v16, v20, *a4, 3);
  v21.i64[1] = vextq_s8(v21, v21, 8uLL).u32[0];
  v22 = vmulq_f32(v12, v14);
  v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
  v23 = vmlaq_n_f32(v21, v12, vpadd_f32(*v22.f32, *v22.f32).f32[0]);
  v24 = vaddq_f32(v23, v23);
  v24.i32[3] = 0;
  v25 = vnegq_f32(v10);
  v25.i32[3] = 0;
  *v23.f32 = vadd_f32(v11, *a5);
  v26 = vdup_lane_s32(vmul_f32(*v23.f32, *v23.f32), 0);
  v27 = vmaxq_f32(vminq_f32(v24, v10), v25);
  v28 = vsubq_f32(v24, v27);
  v29 = vmulq_f32(v28, v28);
  v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
  v30 = vpadd_f32(*v29.f32, *v29.f32);
  v31 = vcgt_f32(v26, v30).u8[0];
  if (v31)
  {
    v32 = vcgeq_f32(v10, vabsq_f32(v24));
    v33 = vextq_s8(v32, v32, 8uLL).u64[0];
    *v32.i8 = vmovn_s32(v32);
    v32.i64[1] = v33;
    if (vuzp1_s8(vdup_lane_s16(vceq_s32((*&vmovn_s16(v32) & 0xFFFFFF00FFFFFFLL), 0xFFFFFF00FFFFFFLL), 0), v11).u32[0] == -1)
    {
      v55 = vsubq_f32(v10, vabsq_f32(v27));
      v56 = vdup_lane_s32(*v55.f32, 0);
      v57 = vdup_lane_s32(*v55.f32, 1);
      v58 = vdup_laneq_s32(v55, 2);
      *v59.f32 = v56;
      v59.i64[1] = v56.u32[0];
      *v60.f32 = v58;
      v60.i64[1] = v58.u32[0];
      v61 = vcgeq_f32(v55, v60);
      v60.i64[0] = vextq_s8(v61, v61, 8uLL).u64[0];
      *v61.i8 = vmovn_s32(v61);
      v61.i64[1] = v60.i64[0];
      *v61.i8 = vceq_s32((*&vmovn_s16(v61) & 0xFFFFFF00FFFFFFLL), 0xFFFFFF00FFFFFFLL);
      v62 = vcgeq_f32(v55, v59);
      v59.i64[0] = vextq_s8(v62, v62, 8uLL).u64[0];
      *v62.i8 = vmovn_s32(v62);
      v62.i64[1] = v59.i64[0];
      v63 = vceq_s32((*&vmovn_s16(v62) & 0xFFFFFF00FFFFFFLL), 0xFFFFFF00FFFFFFLL);
      v64 = vmulq_f32(vbslq_s8(vcgezq_f32(v27), xmmword_1E304F3C0, xmmword_1E30DA660), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(*v61.i8, 0)), 0x1FuLL)), xmmword_1E30476A0, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(v63, 0)), 0x1FuLL)), xmmword_1E3047670, xmmword_1E3047680)));
      v65 = vmulq_n_f32(v64, *v15.i32);
      v65.i32[3] = 0;
      v66 = vbsl_s8(vdup_lane_s32(*v61.i8, 0), v58, vbsl_s8(vdup_lane_s32(v63, 0), v56, v57));
      v67 = vmls_f32(vmul_f32(*v8.i8, *&vextq_s8(v64, v64, 4uLL)), v18, *v64.f32);
      *v68.f32 = vext_s8(v67, vmls_f32(vmul_f32(v17, *v64.f32), *v8.i8, *&vextq_s8(v64, v64, 8uLL)), 4uLL);
      v68.i64[1] = v67.u32[0];
      v69 = vmlaq_f32(v65, v13, v68);
      v69.i64[1] = vextq_s8(v69, v69, 8uLL).u32[0];
      v37 = vneg_f32(v66);
      v70 = vmulq_f32(v12, v64);
      v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
      v71 = vmlaq_n_f32(v69, v12, vpadd_f32(*v70.f32, *v70.f32).f32[0]);
      v47 = vaddq_f32(v71, v71);
      v47.i32[3] = 0;
      v72 = vmulq_n_f32(v47, v37.f32[0]);
      v72.i32[3] = 0;
      v54 = vsubq_f32(v7, v72);
    }

    else
    {
      v34 = vdupq_lane_s32(v15, 0);
      v35 = vrsqrte_f32(v30);
      v36 = 4;
      do
      {
        v35 = vmul_f32(v35, vrsqrts_f32(vmul_f32(v35, v35), v30));
        --v36;
      }

      while (v36);
      v37 = vrecpe_f32(v35);
      v38 = 4;
      do
      {
        v37 = vmul_f32(v37, vrecps_f32(v35, v37));
        --v38;
      }

      while (v38);
      v39 = vmulq_n_f32(v28, v35.f32[0]);
      v40 = v39;
      v40.i32[3] = 0;
      v41 = vmulq_n_f32(v40, *v15.i32);
      v41.i32[3] = 0;
      v42 = vextq_s8(v40, v40, 8uLL).u64[0];
      v43 = vmls_f32(vmul_f32(*v8.i8, vext_s8(*v39.f32, v42, 4uLL)), v18, *v39.f32);
      *v39.f32 = vext_s8(v43, vmls_f32(vmul_f32(v17, *v39.f32), *v8.i8, v42), 4uLL);
      v39.i64[1] = v43.u32[0];
      v44 = vmlaq_f32(v41, v13, v39);
      v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
      v45 = vmulq_f32(v12, v40);
      v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
      v46 = vmlaq_n_f32(v44, v12, vpadd_f32(*v45.f32, *v45.f32).f32[0]);
      v47 = vaddq_f32(v46, v46);
      v47.i32[3] = 0;
      v48 = vmulq_f32(v34, v27);
      v48.i32[3] = 0;
      *v40.f32 = vmls_f32(vmul_f32(*v8.i8, *&vextq_s8(v27, v27, 4uLL)), v18, *v27.f32);
      *v49.f32 = vext_s8(*v40.f32, vmls_f32(vmul_f32(v17, *v27.f32), *v8.i8, *&vextq_s8(v27, v27, 8uLL)), 4uLL);
      v49.i64[1] = v40.u32[0];
      v50 = vmlaq_f32(v48, v13, v49);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
      v51 = vmulq_f32(v12, v27);
      v51.i64[0] = vpaddq_f32(v51, v51).u64[0];
      v52 = vmlaq_n_f32(v50, v12, vpadd_f32(*v51.f32, *v51.f32).f32[0]);
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
      v53.i64[0] = 0x4000000040000000;
      v53.i64[1] = 0x4000000040000000;
      v54 = vmlaq_f32(v9, v53, v52);
      v54.i64[1] = vextq_s8(v54, v54, 8uLL).u32[0];
    }

    v73 = *(a7 + 4096);
    *(a7 + 4096) = v73 + 1;
    v74 = a7 + (v73 << 6);
    *v74 = v47;
    *(v74 + 16) = v54;
    *(v74 + 12) = vsub_f32(v37, v11).u32[0];
    *(v74 + 52) = -1;
  }

  return v31 & 1;
}

uint64_t physx::Gu::pcmContactSphereCapsule(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x2_t *a5, uint64_t a6, uint64_t a7)
{
  v7.i64[0] = *(a3 + 16);
  v7.i64[1] = *(a3 + 24);
  v8.i64[0] = a4[1].i64[0];
  v8.i64[1] = a4[1].u32[2];
  _Q4 = *a4;
  v10 = *(a1 + 4);
  v11 = vextq_s8(_Q4, _Q4, 8uLL).u64[0];
  v12 = vmulq_n_f32(*a4, vadd_f32(*_Q4.i8, *_Q4.i8).f32[0]);
  v12.i32[3] = 0;
  *v13.f32 = vext_s8(vdup_laneq_s32(*a4, 3), v11, 4uLL);
  v13.i64[1] = vneg_f32(vdup_lane_s32(*a4->f32, 1)).u32[0];
  v14 = vmlaq_n_f32(v12, v13, *vdup_lane_s32(vadd_f32(v11, v11), 1).i32);
  __asm { FMOV            V4.2S, #-1.0 }

  v14.i32[0] = vadd_f32(*v14.f32, *_Q4.i8).u32[0];
  v19 = vmulq_n_f32(v14, COERCE_FLOAT(*(a2 + 8)));
  v19.i32[3] = 0;
  v20 = vaddq_f32(v8, v19);
  v21 = vsubq_f32(v8, v19);
  v22 = vsubq_f32(v7, v20);
  v23 = vsubq_f32(v21, v20);
  v24 = vmulq_f32(v22, v23);
  v25 = vextq_s8(v24, v24, 8uLL).u64[0];
  v26 = vmulq_f32(v23, v23);
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v27 = vpadd_f32(*v26.f32, *v26.f32);
  v28 = vrecpe_f32(v27);
  v29 = 4;
  do
  {
    v28 = vmul_f32(v28, vrecps_f32(v27, v28));
    --v29;
  }

  while (v29);
  v30 = vadd_f32(v10, *(a2 + 4));
  v31 = vpadd_f32(*v24.i8, v25);
  v32 = vadd_f32(v30, *a5);
  v33 = vmul_f32(v28, vpadd_f32(v31, v31));
  __asm { FMOV            V16.2S, #1.0 }

  v35 = vbic_s8(vmax_f32(vmin_f32(v33, _D16), 0), vceqz_f32(v27));
  v36 = vmlsq_lane_f32(v22, v23, v35, 0);
  v37 = vextq_s8(v36, v36, 8uLL).u32[0];
  *v36.i8 = vpadd_f32(vmul_f32(*v36.i8, *v36.i8), vmul_f32(v37, v37));
  v38 = vpadd_f32(*v36.i8, *v36.i8);
  v39 = vcgt_f32(vdup_lane_s32(vmul_f32(v32, v32), 0), v38).u8[0];
  if (v39)
  {
    v40 = vmlaq_f32(v20, vdupq_lane_s32(v35, 0), v23);
    v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
    v41 = vsubq_f32(v7, v40);
    v42 = vmulq_f32(v41, v41);
    v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
    v43 = vpadd_f32(*v42.f32, *v42.f32);
    v44 = vrsqrte_f32(v43);
    v45 = 4;
    do
    {
      v44 = vmul_f32(v44, vrsqrts_f32(vmul_f32(v44, v44), v43));
      --v45;
    }

    while (v45);
    v46 = vbsl_s8(vdup_lane_s32(vceqz_f32(v43), 0), v43, vmul_f32(v43, v44));
    v47 = vrecpe_f32(v46);
    v48 = 4;
    do
    {
      v47 = vmul_f32(v47, vrecps_f32(v46, v47));
      --v48;
    }

    while (v48);
    v49 = vmulq_n_f32(v41, v47.f32[0]);
    v49.i32[3] = 0;
    v50 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgtz_f32(v46), 0)), 0x1FuLL)), v49, xmmword_1E3047670);
    v51 = vmlsq_lane_f32(v7, v50, v10, 0);
    v52 = vextq_s8(v51, v51, 8uLL).u32[0];
    v53 = vrsqrte_f32(v38);
    v54 = 4;
    do
    {
      v53 = vmul_f32(v53, vrsqrts_f32(vmul_f32(v53, v53), v38));
      --v54;
    }

    while (v54);
    v51.i64[1] = v52;
    v55 = *(a7 + 4096);
    *(a7 + 4096) = v55 + 1;
    v56 = a7 + (v55 << 6);
    *v56 = v50;
    *(v56 + 16) = v51;
    *(v56 + 12) = vsub_f32(vbsl_s8(vceqz_f32(v38), v38, vmul_f32(v38, v53)), v30).u32[0];
    *(v56 + 52) = -1;
  }

  return v39 & 1;
}

uint64_t physx::Gu::PCMMeshContactGenerationCallback<physx::PCMConvexVsMeshContactGenerationCallback>::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, double a6, float32x4_t a7, float32x4_t a8, uint64_t a9, _DWORD *a10)
{
  v56 = *MEMORY[0x1E69E9840];
  if (physx::Gu::intersectTriangleBox(*(a1 + 5472), a3, a4, a5, a6, a7, a8))
  {
    if (*(a1 + 32) == 1)
    {
      *&v16 = *a3;
      *(&v16 + 2) = a3[2];
      *(&v16 + 3) = *a4;
      *&v17 = *(a4 + 1);
      v18.n128_u64[0] = *a5;
      *(&v17 + 1) = *a5;
      v54[0] = v16;
      v54[1] = v17;
      *&v16 = a5[2];
      v55 = v16;
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *(v22 + 72);
      v24 = *(v22 + 8);
      v25 = a3[1];
      v26 = *(v22 + 20);
      v27 = a3[2];
      v28 = *(v22 + 32);
      v29 = ((*a3 * v24) + (v25 * v26)) + (v27 * v28);
      v20 = *v22;
      v21.n128_u64[0] = *(v22 + 12);
      v19 = *(v22 + 24);
      *&v54[0] = vadd_f32(vadd_f32(vmul_n_f32(*v22, *a3), vmul_n_f32(v21.n128_u64[0], v25)), vmul_n_f32(*&v19, v27));
      *(v54 + 2) = v29;
      v30 = a4[1];
      v31 = (*a4 * v20.f32[0]) + (v30 * v21.n128_f32[0]);
      v32 = vmuls_lane_f32(*a4, v20, 1) + vmuls_lane_f32(v30, v21.n128_u64[0], 1);
      v33 = (v24 * *a4) + (v26 * v30);
      v34 = a4[2];
      v35 = v31 + (v34 * *&v19);
      v36 = v32 + vmuls_lane_f32(v34, *&v19, 1);
      v37 = v33 + (v28 * v34);
      v38 = 12;
      if (v23)
      {
        v39 = 24;
      }

      else
      {
        v39 = 12;
      }

      *(v54 + v39) = v35;
      if (v23)
      {
        v40 = 28;
      }

      else
      {
        v40 = 16;
      }

      *(v54 + v40) = v36;
      if (v23)
      {
        v41 = 32;
      }

      else
      {
        v41 = 20;
      }

      *(v54 + v41) = v37;
      v42 = a5[1];
      v43 = *a5 * v20.f32[0];
      v44 = v42 * v21.n128_f32[0];
      v20.f32[0] = vmuls_lane_f32(*a5, v20, 1) + vmuls_lane_f32(v42, v21.n128_u64[0], 1);
      *&v17 = (v24 * *a5) + (v26 * v42);
      v45 = a5[2];
      v21.n128_f32[0] = v45 * *&v19;
      v46 = vmuls_lane_f32(v45, *&v19, 1);
      v47 = v28 * v45;
      v18.n128_f32[0] = (v43 + v44) + v21.n128_f32[0];
      *&v19 = v20.f32[0] + v46;
      *&v16 = *&v17 + v47;
      if (!v23)
      {
        v38 = 24;
      }

      *(v54 + v38) = v18.n128_u32[0];
      if (v23)
      {
        v48 = 16;
      }

      else
      {
        v48 = 28;
      }

      *(v54 + v48) = LODWORD(v19);
      if (v23)
      {
        v49 = 20;
      }

      else
      {
        v49 = 32;
      }

      *(v54 + v49) = v16;
    }

    v50 = *(a2 + 16);
    v51 = *(a1 + 24);
    if (v51)
    {
      v52 = *(v51 + v50);
    }

    else
    {
      v52 = 56;
    }

    if (*(a1 + 884) == 16)
    {
      physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMConvexVsMeshContactGeneration>(a1 + 896, a1 + 36, *&v16, *&v17, v18, v19, *&v20, v21);
      *(a1 + 884) = 0;
    }

    physx::Gu::TriangleCache<16u>::addTriangle(a1 + 36, v54, a10, v50, v52);
  }

  return 1;
}

void physx::Gu::pcmContactSphereConvex(uint64_t a1, uint64_t a2, float32x4_t *a3, int32x4_t *a4, uint64_t a5, float32x4_t **a6, uint64_t a7)
{
  v229 = *MEMORY[0x1E69E9840];
  v9 = *a6;
  _X8 = *(a2 + 48);
  __asm { PRFM            #0, [X8] }

  v16 = *(a2 + 4);
  v17 = v16;
  v17.i32[3] = 0;
  v7.i32[0] = *(a1 + 4);
  v18 = vdup_lane_s32(v7, 0);
  v200 = vdup_lane_s32(*a5, 0);
  v19.i64[0] = a3[1].i64[0];
  v19.i64[1] = a3[1].u32[2];
  v198 = *a3;
  v199 = v19;
  v20.i64[0] = a4[1].i64[0];
  v20.i64[1] = a4[1].u32[2];
  v197[0] = *a4;
  v197[1] = v20;
  v21 = vnegq_f32(v197[0]);
  v22 = v21;
  v22.i32[3] = 0;
  v23 = vdupq_laneq_s32(v197[0], 3).u64[0];
  v24 = vsubq_f32(v19, v20);
  v25 = vmulq_n_f32(v24, vmla_f32(0xBF000000BF000000, v23, v23).f32[0]);
  v25.i32[3] = 0;
  v26 = vextq_s8(v22, v22, 8uLL).u64[0];
  v27 = vext_s8(*v21.f32, v26, 4uLL);
  v28 = vmls_f32(vmul_f32(*v21.f32, *&vextq_s8(v24, v24, 4uLL)), v27, *v24.f32);
  *v29.f32 = vext_s8(v28, vmls_f32(vmul_f32(v26, *v24.f32), *v21.f32, *&vextq_s8(v24, v24, 8uLL)), 4uLL);
  v29.i64[1] = v28.u32[0];
  v30 = vmlaq_laneq_f32(v25, v29, v197[0], 3);
  v30.i64[1] = vextq_s8(v30, v30, 8uLL).u32[0];
  v31 = vmulq_f32(v22, v24);
  v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
  v32 = vmlaq_n_f32(v30, v22, vpadd_f32(*v31.f32, *v31.f32).f32[0]);
  v33 = vaddq_f32(v32, v32);
  v33.i32[3] = 0;
  v34 = v198;
  v34.i32[3] = 0;
  v36 = vextq_s8(v198, v198, 8uLL);
  _Q18 = vmulq_f32(v34, v22);
  _Q18.i64[0] = vpaddq_f32(_Q18, _Q18).u64[0];
  *v36.i8 = vsub_f32(vmul_f32(*v36.i8, *&vextq_s8(v197[0], v197[0], 8uLL)), vpadd_f32(*_Q18.f32, *_Q18.f32));
  v37 = vmulq_laneq_f32(v34, v197[0], 3);
  _Q18.i64[0] = vextq_s8(v34, v34, 8uLL).u64[0];
  *v34.f32 = vmls_f32(vmul_f32(vext_s8(*v198.f32, *_Q18.f32, 4uLL), *v21.f32), v27, *v198.f32);
  *v38.f32 = vext_s8(*v34.f32, vmls_f32(vmul_f32(*v198.f32, v26), *v21.f32, *_Q18.f32), 4uLL);
  v38.i64[1] = v34.i64[0];
  v39 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v22, v198, 3), v37), v38);
  __asm { FMOV            V5.2S, #1.0 }

  v21.i64[0] = *(_X8 + 60);
  v21.i64[1] = *(_X8 + 68);
  v41 = vmulq_f32(v17, v21);
  *v22.f32 = vdup_laneq_s32(v41, 2);
  *v41.i8 = vpmin_f32(*v22.f32, *v41.i8);
  v22.f32[0] = *(a5 + 8) * 0.05;
  __asm { FMOV            V18.2S, #0.25 }

  v42 = v9[4].u8[0];
  v43 = vmin_f32(vmin_f32(vmul_f32(vpmin_f32(*v41.i8, *v41.i8), *_Q18.f32), vdup_lane_s32(*v22.f32, 0)), v18);
  if (v9[4].i8[0])
  {
    v44 = vdup_lane_s32(*v39.f32, 1);
    v45 = vdup_laneq_s32(v39, 2);
    v46 = vaddq_f32(v39, v39);
    v47 = vdup_lane_s32(*v46.f32, 1);
    v48 = vdup_laneq_s32(v46, 2);
    v49 = vdup_lane_s32(vmul_f32(*v39.f32, *v46.f32), 0);
    v50 = vmul_lane_f32(v44, *v46.f32, 1);
    v51 = vmul_laneq_f32(v45, v46, 2);
    v52 = vmul_n_f32(v44, v46.f32[0]);
    v53 = vmul_n_f32(v45, v46.f32[0]);
    v54 = vmul_lane_f32(vdup_lane_s32(*v46.f32, 0), *v36.i8, 1);
    *v46.f32 = vmul_lane_f32(v45, *v46.f32, 1);
    v55 = vmul_lane_f32(v47, *v36.i8, 1);
    v56 = vmul_lane_f32(v48, *v36.i8, 1);
    v57 = vsub_f32(_D5, v49);
    *v58.f32 = vext_s8(vsub_f32(vsub_f32(_D5, v50), v51), vadd_f32(v52, v56), 4uLL);
    *&v58.u32[2] = vsub_f32(v53, v55);
    *v59.f32 = vext_s8(vsub_f32(v52, v56), vsub_f32(v57, v51), 4uLL);
    *&v59.u32[2] = vadd_f32(*v46.f32, v54);
    *v60.f32 = vext_s8(vadd_f32(v53, v55), vsub_f32(*v46.f32, v54), 4uLL);
    *&v60.u32[2] = vsub_f32(v57, v50);
    v61 = vmul_f32(v43, vdup_n_s32(0x3D4CCCCDu));
    v62 = vmul_f32(v61, v61);
    v63 = 48 * v42;
    do
    {
      v64 = v9[5].i64[0];
      v65 = (v64 + v63 - 48);
      v66 = vmulq_n_f32(v58, COERCE_FLOAT(*v65));
      v66.i32[3] = 0;
      v67 = vmulq_lane_f32(v59, *v65->f32, 1);
      v67.i32[3] = 0;
      v68 = vmulq_laneq_f32(v60, *v65, 2);
      v68.i32[3] = 0;
      v69 = vaddq_f32(v33, vaddq_f32(v68, vaddq_f32(v66, v67)));
      v71 = *(v64 + v63 - 32);
      v70 = *(v64 + v63 - 16);
      v72 = v70;
      v72.i32[3] = 0;
      v73 = vmulq_f32(v72, vsubq_f32(v69, v71));
      v73.i64[0] = vpaddq_f32(v73, v73).u64[0];
      v74 = vpadd_f32(*v73.f32, *v73.f32);
      v75 = vmlsq_lane_f32(v69, v72, v74, 0);
      v75.i64[1] = vextq_s8(v75, v75, 8uLL).u32[0];
      v76 = vsubq_f32(v71, v75);
      v77 = vmulq_f32(v76, v76);
      v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v77.f32, *v77.f32), v62), 0), v18).u32[0] == -1)
      {
        v78 = v9[4].i8[0] - 1;
        v9[4].i8[0] = v78;
        v79 = (v64 + 48 * v78);
        v80 = *v79;
        v81 = v79[2];
        v65[1] = v79[1];
        v65[2] = v81;
        *v65 = v80;
      }

      else
      {
        v70.i32[3] = v74.i32[1];
        *(v64 + v63 - 16) = v70;
      }

      v63 -= 48;
    }

    while (v63);
    v82 = v9[4].u8[0];
  }

  else
  {
    v82 = 0;
  }

  v39.i32[3] = v36.i32[1];
  if (v82 != v42 || (v83 = vmul_n_f32(v43, physx::Gu::invalidateThresholds2[v42]), v84 = vabdq_f32(v33, v9[1]), *v84.i8 = vpmax_f32(*&vextq_s8(v84, v84, 8uLL), *v84.i8), v85 = (&physx::Gu::invalidateQuatThresholds2 + 4 * v42), v86 = vld1_dup_f32(v85), v87 = vmulq_f32(v39, *v9), v87.i64[0] = vpaddq_f32(v87, v87).u64[0], *v36.i8 = vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v86, vpadd_f32(*v87.f32, *v87.f32)), vcgt_f32(vpmax_f32(*v84.i8, *v84.i8), v83)), 0), v18), v36.i32[0] == -1))
  {
    v104 = 0;
    *v9 = v39;
    v9[1] = v33;
    if (*(a2 + 4) == 1.0 && *(a2 + 8) == 1.0)
    {
      v104 = *(a2 + 12) == 1.0;
    }

    v105 = *(a2 + 16);
    v36.i32[0] = *(_X8 + 24);
    v106 = v36;
    v106.i32[1] = *(_X8 + 28);
    v107 = v106;
    v107.i32[2] = *(_X8 + 32);
    v217 = 0;
    v218 = 0;
    v214 = v107;
    v225 = _X8;
    v227 = *(_X8 + 40) + 20 * *(_X8 + 39);
    v228 = *(_X8 + 38);
    v108.i64[0] = *(_X8 + 60);
    v108.i64[1] = *(_X8 + 68);
    v109 = vmulq_f32(v17, v108);
    *v109.i8 = vpmin_f32(vdup_laneq_s32(v109, 2), *v109.i8);
    *v109.i32 = vpmin_f32(*v109.i8, *v109.i8).f32[0];
    v215 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v109.i32);
    v216 = 0.025 * *v109.i32;
    if (v104)
    {
      v110.i64[0] = 1065353216;
      v111 = xmmword_1E3047680;
      v219 = xmmword_1E3047670;
      v220 = xmmword_1E3047680;
      v221 = xmmword_1E30476A0;
      v222 = xmmword_1E3047670;
      v223 = xmmword_1E3047680;
      v224 = xmmword_1E30476A0;
    }

    else
    {
      v112 = vrecpeq_f32(v17);
      v113 = 4;
      do
      {
        v112 = vmulq_f32(v112, vrecpsq_f32(v112, v17));
        --v113;
      }

      while (v113);
      *v114.f32 = vdup_lane_s32(*v16.f32, 0);
      v114.i64[1] = v114.u32[0];
      if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v114, v17)), v18).u32[0] & 0xFFFFFF) != 0)
      {
        v119 = vdup_lane_s32(*v105.f32, 1);
        v120 = vdup_laneq_s32(v105, 2);
        v121 = vdup_laneq_s32(v105, 3);
        v122 = vaddq_f32(v105, v105);
        v123 = vmul_lane_f32(v119, *v122.f32, 1);
        v124 = vmul_laneq_f32(v120, v122, 2);
        v125 = vmul_n_f32(v119, v122.f32[0]);
        v126 = vmul_n_f32(v120, v122.f32[0]);
        v127 = vmul_n_f32(v121, v122.f32[0]);
        v128 = vmul_lane_f32(v120, *v122.f32, 1);
        v129 = vmul_lane_f32(v121, *v122.f32, 1);
        v130 = vmul_laneq_f32(v121, v122, 2);
        v131 = vsub_f32(_D5, vdup_lane_s32(vmul_f32(*v105.f32, *v122.f32), 0));
        *v122.f32 = vsub_f32(vsub_f32(_D5, v123), v124);
        v132 = vadd_f32(v125, v130);
        v133 = vsub_f32(v126, v129);
        v134 = vsub_f32(v125, v130);
        v135 = vadd_f32(v126, v129);
        v136 = vsub_f32(v128, v127);
        v137 = vext_s8(v135, v136, 4uLL);
        v138 = vsub_f32(v131, v124);
        *v139.f32 = vext_s8(*v122.f32, *&vdupq_lane_s32(v134, 1), 4uLL);
        v139.i64[1] = vdup_lane_s32(v137, 0).u32[0];
        v140 = vsub_f32(v131, v123);
        *v141.f32 = vext_s8(*&vdupq_lane_s32(v132, 0), v138, 4uLL);
        v141.i64[1] = vdup_lane_s32(v137, 1).u32[0];
        v142 = vadd_f32(v128, v127);
        *v143.f32 = vext_s8(*&vdupq_lane_s32(v133, 0), v142, 4uLL);
        v143.i64[1] = vdup_lane_s32(v140, 0).u32[0];
        v144 = vmulq_n_f32(v139, v16.f32[0]);
        v144.i32[3] = 0;
        v145 = vmulq_lane_f32(v141, *v16.f32, 1);
        v145.i32[3] = 0;
        v146 = vmulq_laneq_f32(v143, v16, 2);
        v146.i32[3] = 0;
        v147 = vmulq_lane_f32(v144, *v122.f32, 1);
        v147.i32[3] = 0;
        v148 = vmulq_n_f32(v145, *v132.i32);
        v148.i32[3] = 0;
        v149 = vmulq_n_f32(v146, *v133.i32);
        v149.i32[3] = 0;
        v115 = vaddq_f32(v149, vaddq_f32(v147, v148));
        v150 = vmulq_lane_f32(v144, v134, 1);
        v150.i32[3] = 0;
        v151 = vmulq_n_f32(v145, *v138.i32);
        v151.i32[3] = 0;
        v152 = vmulq_n_f32(v146, *v142.i32);
        v152.i32[3] = 0;
        v116 = vaddq_f32(v152, vaddq_f32(v150, v151));
        v153 = vmulq_lane_f32(v144, v135, 1);
        v153.i32[3] = 0;
        v154 = vmulq_n_f32(v145, *v136.i32);
        v154.i32[3] = 0;
        v155 = vmulq_n_f32(v146, *v140.i32);
        v155.i32[3] = 0;
        v117 = vaddq_f32(v155, vaddq_f32(v153, v154));
        v219 = v115;
        v220 = v116;
        v156 = vmulq_n_f32(v139, v112.f32[0]);
        v156.i32[3] = 0;
        v157 = vmulq_lane_f32(v141, *v112.f32, 1);
        v157.i32[3] = 0;
        v158 = vmulq_laneq_f32(v143, v112, 2);
        v158.i32[3] = 0;
        v159 = vmulq_lane_f32(v156, *v122.f32, 1);
        v159.i32[3] = 0;
        v160 = vmulq_n_f32(v157, *v132.i32);
        v160.i32[3] = 0;
        v161 = vmulq_n_f32(v158, *v133.i32);
        v161.i32[3] = 0;
        v162 = vaddq_f32(v161, vaddq_f32(v159, v160));
        v163 = vmulq_lane_f32(v156, v134, 1);
        v163.i32[3] = 0;
        v164 = vmulq_n_f32(v157, *v138.i32);
        v164.i32[3] = 0;
        v165 = vmulq_n_f32(v158, *v142.i32);
        v165.i32[3] = 0;
        v166 = vmulq_lane_f32(v156, v135, 1);
        v166.i32[3] = 0;
        v167 = vmulq_n_f32(v157, *v136.i32);
        v167.i32[3] = 0;
        v168 = vmulq_n_f32(v158, *v140.i32);
        v168.i32[3] = 0;
        v118 = vaddq_f32(v165, vaddq_f32(v163, v164));
        v111 = vaddq_f32(v168, vaddq_f32(v166, v167));
        v221 = v117;
        v222 = v162;
      }

      else
      {
        v112.i32[3] = 0;
        v115 = vmulq_f32(v17, xmmword_1E3047670);
        v116 = vmulq_f32(v17, xmmword_1E3047680);
        v117 = vmulq_f32(v17, xmmword_1E30476A0);
        v219 = v115;
        v220 = v116;
        v118 = vmulq_f32(v112, xmmword_1E3047680);
        v111 = vmulq_f32(v112, xmmword_1E30476A0);
        v221 = v117;
        v222 = vmulq_f32(v112, xmmword_1E3047670);
      }

      v223 = v118;
      v224 = v111;
      v169 = vmulq_n_f32(v115, *v36.i32);
      v169.i32[3] = 0;
      v170 = vmulq_lane_f32(v116, *v106.f32, 1);
      v170.i32[3] = 0;
      v171 = vmulq_laneq_f32(v117, v107, 2);
      v171.i32[3] = 0;
      v110 = vaddq_f32(v170, v169);
      v107 = vaddq_f32(v171, v110);
      v214 = v107;
    }

    v226 = *(_X8 + 48);
    v209 = 4;
    v205 = v33;
    v213 = v18;
    v211 = v33;
    v212 = v33;
    v206 = v7.i32[0];
    v207 = v7.i32[0];
    v208 = v7.i32[0];
    v210 = 1;
    v204 = 0;
    v201 = 0u;
    v202 = 0u;
    v203[0] = 0u;
    v196[1] = &v205;
    v196[0] = &unk_1F5D217B8;
    v172 = vsubq_f32(v33, v107);
    v195 = v172;
    v194 = &v214;
    if (v104)
    {
      v193 = &unk_1F5D22C50;
      v173 = physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(v196, &v193, &v195, &v200, 1, &v9[4].i8[3], &v9[4].i8[7], &v9[4].i8[2], *v172.i64, *v33.i64, *v110.f32, v111, *v107.f32, &v201);
    }

    else
    {
      v193 = &unk_1F5D21818;
      v173 = physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v196, &v193, &v195, &v200, 1, &v9[4].i8[3], &v9[4].i8[7], &v9[4].i8[2], *v172.i64, *v33.i64, *v110.f32, v111, *v107.f32, &v201);
    }

    if (v173 > 3)
    {
      if (v173 == 4)
      {
        goto LABEL_38;
      }

      if (v173 != 5)
      {
        return;
      }

      v194 = &v214;
      v175 = v104 ? &unk_1F5D22C50 : &unk_1F5D21818;
      v193 = v175;
      v176 = physx::Gu::epaPenetration(v196);
      v174 = v7;
      if (v176 != 5)
      {
LABEL_38:
        physx::Gu::fullContactsGenerationSphereConvex(&v205, &v214, &v198, v197, a7, a7, v104, v9, v203, &v200);
        return;
      }
    }

    else
    {
      v174 = v7;
      if (v173 != 2)
      {
        return;
      }
    }

    v177 = v9[5].i64[0];
    *v177 = 0;
    *(v177 + 8) = 0;
    *(v177 + 16) = v202;
    v178 = v203[0];
    v178.i32[3] = HIDWORD(v204);
    *(v177 + 32) = v178;
    v179 = v197[0];
    v179.i32[3] = 0;
    v180 = vdupq_laneq_s32(v197[0], 3).u64[0];
    v181 = vmulq_n_f32(v203[0], vmla_f32(0xBF000000BF000000, v180, v180).f32[0]);
    v181.i32[3] = 0;
    v182 = vextq_s8(v179, v179, 8uLL).u64[0];
    v183 = vextq_s8(v203[0], v203[0], 8uLL).u64[0];
    v184 = vmls_f32(vmul_f32(*v197[0].i8, vext_s8(*v203[0].i8, v183, 4uLL)), vext_s8(*v197[0].i8, v182, 4uLL), *v203[0].i8);
    *v185.f32 = vext_s8(v184, vmls_f32(vmul_f32(v182, *v203[0].i8), *v197[0].i8, v183), 4uLL);
    v185.i64[1] = v184.u32[0];
    v186 = vmlaq_laneq_f32(v181, v185, v197[0], 3);
    v186.i64[1] = vextq_s8(v186, v186, 8uLL).u32[0];
    v187 = vmulq_f32(v179, v203[0]);
    v187.i64[0] = vpaddq_f32(v187, v187).u64[0];
    v188 = vmlaq_n_f32(v186, v179, vpadd_f32(*v187.f32, *v187.f32).f32[0]);
    v189 = vaddq_f32(v188, v188);
    v189.i32[3] = 0;
    v190 = vmlsq_lane_f32(v199, v189, v174, 0);
    v190.i64[1] = vextq_s8(v190, v190, 8uLL).u32[0];
    v9[4].i8[0] = 1;
    v179.i32[0] = v204;
    v191 = *(a7 + 4096);
    *(a7 + 4096) = v191 + 1;
    v192 = a7 + (v191 << 6);
    *v192 = v189;
    *(v192 + 16) = v190;
    *(v192 + 12) = v179.f32[0] - v174.f32[0];
    *(v192 + 52) = -1;
    return;
  }

  if (v42)
  {
    v88 = *(v9[5].i64[0] + 32);
    v89 = v88;
    v89.i32[3] = 0;
    v90 = v197[0];
    v90.i32[3] = 0;
    v91 = vdupq_laneq_s32(v197[0], 3).u64[0];
    v92 = vmulq_n_f32(v89, vmla_f32(0xBF000000BF000000, v91, v91).f32[0]);
    v92.i32[3] = 0;
    v93 = vextq_s8(v90, v90, 8uLL).u64[0];
    v94 = vextq_s8(v89, v89, 8uLL).u64[0];
    v95 = vmls_f32(vmul_f32(*v197[0].i8, vext_s8(*v88.i8, v94, 4uLL)), vext_s8(*v197[0].i8, v93, 4uLL), *v88.i8);
    *v96.f32 = vext_s8(v95, vmls_f32(vmul_f32(*v88.i8, v93), *v197[0].i8, v94), 4uLL);
    v96.i64[1] = v95.u32[0];
    v97 = vmlaq_laneq_f32(v92, v96, v197[0], 3);
    v97.i64[1] = vextq_s8(v97, v97, 8uLL).u32[0];
    v98 = vmulq_f32(v89, v90);
    v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
    v99 = vmlaq_n_f32(v97, v90, vpadd_f32(*v98.f32, *v98.f32).f32[0]);
    v100 = vaddq_f32(v99, v99);
    v100.i32[3] = 0;
    v101 = vmlsq_lane_f32(v19, v100, v7, 0);
    v101.i64[1] = vextq_s8(v101, v101, 8uLL).u32[0];
    v102 = *(a7 + 4096);
    *(a7 + 4096) = v102 + 1;
    v103 = a7 + (v102 << 6);
    *v103 = v100;
    *(v103 + 16) = v101;
    *(v103 + 12) = vsub_f32(vdup_laneq_s32(v88, 3), v18).u32[0];
    *(v103 + 52) = -1;
  }
}

float32x4_t physx::Gu::fullContactsGenerationSphereConvex(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int32x4_t *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, float32x4_t *a9, float32x2_t *a10)
{
  v41 = *MEMORY[0x1E69E9840];
  physx::Gu::getPCMConvexData(a2, a7, v37);
  if (a7)
  {
    v17 = 1;
    v18 = &unk_1F5D216F0;
  }

  else
  {
    v17 = 0;
    v18 = &unk_1F5D21740;
  }

  v38[4] = a4;
  v38[5] = a2 + 3;
  v38[6] = a2 + 6;
  v39 = v17;
  v38[0] = v18;
  v40 = a2;
  v36 = 0;
  v19 = physx::Gu::generateSphereFullContactManifold(a1, v37, v38, a5, &v36, a10, a9, 1);
  if (!v36)
  {
    v19 = 0;
  }

  if (v19 == 1)
  {
    v21 = *(a8 + 80);
    *v21 = *a5;
    v21[1] = *(a5 + 16);
    v21[2] = *(a5 + 32);
    *(a8 + 64) = 1;
    v22 = *a4;
    v22.i32[3] = 0;
    v23 = vdupq_laneq_s32(*a4, 3).u64[0];
    v24 = vmulq_n_f32(*a9, vmla_f32(0xBF000000BF000000, v23, v23).f32[0]);
    v24.i32[3] = 0;
    v25 = vextq_s8(v22, v22, 8uLL).u64[0];
    v26 = vextq_s8(*a9, *a9, 8uLL).u64[0];
    v27 = vmls_f32(vmul_f32(*a4->i8, vext_s8(*a9->f32, v26, 4uLL)), vext_s8(*a4->i8, v25, 4uLL), *a9->f32);
    *v28.f32 = vext_s8(v27, vmls_f32(vmul_f32(v25, *a9->f32), *a4->i8, v26), 4uLL);
    v28.i64[1] = v27.u32[0];
    v29 = vmlaq_laneq_f32(v24, v28, *a4, 3);
    v29.i64[1] = vextq_s8(v29, v29, 8uLL).u32[0];
    v30 = vmulq_f32(v22, *a9);
    v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
    v31 = vmlaq_n_f32(v29, v22, vpadd_f32(*v30.f32, *v30.f32).f32[0]);
    result = vaddq_f32(v31, v31);
    result.i32[3] = 0;
    v22.i64[0] = a1[5].i64[0];
    v32 = vmlsq_lane_f32(a3[1], result, *v22.f32, 0);
    v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
    v22.i32[0] = vsub_f32(vdup_laneq_s32(*(a5 + 32), 3), *v22.f32).u32[0];
    v33 = *(a6 + 4096);
    *(a6 + 4096) = v33 + 1;
    v34 = a6 + (v33 << 6);
    *v34 = result;
    *(v34 + 16) = v32;
    *(v34 + 12) = v22.i32[0];
    *(v34 + 52) = -1;
  }

  return result;
}

BOOL physx::Gu::pcmContactSphereHeightField(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = v6;
  v156 = *MEMORY[0x1E69E9840];
  v9 = *v8;
  v10.i64[0] = v3[1].i64[0];
  v10.i64[1] = v3[1].u32[2];
  v11 = *v3;
  v12 = *v4;
  v13.i64[0] = v4[1].i64[0];
  v13.i64[1] = v4[1].u32[2];
  v14 = *(v1 + 4);
  v15 = vdup_lane_s32(v14, 0);
  v135 = vdup_lane_s32(*v5, 0);
  v136 = v15;
  v134[0] = v11;
  v134[1] = v10;
  v133[0] = v12;
  v133[1] = v13;
  v16 = vnegq_f32(v12);
  v17 = v16;
  v17.i32[3] = 0;
  v18 = vsubq_f32(v10, v13);
  v19 = vdupq_laneq_s32(v12, 3).u64[0];
  v20 = vmulq_n_f32(v18, vmla_f32(0xBF000000BF000000, v19, v19).f32[0]);
  v20.i32[3] = 0;
  v21 = vextq_s8(v17, v17, 8uLL).u64[0];
  v22 = vext_s8(*v16.f32, v21, 4uLL);
  v23 = vmls_f32(vmul_f32(*v16.f32, *&vextq_s8(v18, v18, 4uLL)), v22, *v18.f32);
  *v24.f32 = vext_s8(v23, vmls_f32(vmul_f32(v21, *v18.f32), *v16.f32, *&vextq_s8(v18, v18, 8uLL)), 4uLL);
  v24.i64[1] = v23.u32[0];
  v25 = vmlaq_laneq_f32(v20, v24, v12, 3);
  v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
  v26 = vmulq_f32(v17, v18);
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v27 = vmlaq_n_f32(v25, v17, vpadd_f32(*v26.f32, *v26.f32).f32[0]);
  v28 = vaddq_f32(v27, v27);
  v28.i32[3] = 0;
  v29 = v11;
  v29.i32[3] = 0;
  v30 = vmulq_f32(v29, v17);
  v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
  v31 = vsub_f32(vmul_f32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vpadd_f32(*v30.f32, *v30.f32));
  v32 = vmulq_laneq_f32(v17, v11, 3);
  v30.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
  v33 = vmls_f32(vmul_f32(vext_s8(*v11.f32, *v30.f32, 4uLL), *v16.f32), v22, *v11.f32);
  *v11.f32 = vext_s8(v33, vmls_f32(vmul_f32(*v11.f32, v21), *v16.f32, *v30.f32), 4uLL);
  *&v11.u32[2] = v33;
  v34 = vaddq_f32(vaddq_f32(v32, vmulq_laneq_f32(v29, v12, 3)), v11);
  v35 = v34;
  v35.i32[3] = v31.i32[1];
  v36 = vabdq_f32(v28, v9[1]);
  *v36.i8 = vpmax_f32(*&vextq_s8(v36, v36, 8uLL), *v36.i8);
  v37 = vmulq_f32(v35, *v9);
  v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
  if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v37.f32, *v37.f32)), vcgt_f32(vpmax_f32(*v36.i8, *v36.i8), vmul_n_f32(vdup_n_s32(0x3CA3D70Au), *v14.i32))), 0), v14).u32[0] == -1)
  {
    v71 = v4;
    v9[3].i8[14] = 0;
    *v9 = v35;
    v9[1] = v28;
    v132 = vmul_n_f32(vdup_n_s32(0x3A83126Fu), *v14.i32);
    v130 = v2[1];
    v131 = v2;
    v72 = v2[3].f32[0];
    __asm { FMOV            V2.2S, #1.0 }

    v128 = vrev64_s32(vdiv_f32(_D2, v2[2]));
    v129 = 1.0 / v72;
    v74 = v3[1].f32[0] - v4[1].f32[0];
    v75 = v3[1].f32[1] - v4[1].f32[1];
    _D2.f32[0] = v3[1].f32[2] - v4[1].f32[2];
    v76 = v74 + v74;
    v77 = v75 + v75;
    _D2.f32[0] = _D2.f32[0] + _D2.f32[0];
    v79 = v4->f32[2];
    v78 = v4->f32[3];
    v80 = (v78 * v78) + -0.5;
    v81 = v4->f32[1];
    v82 = ((v77 * v81) + (v4->f32[0] * v76)) + (v79 * _D2.f32[0]);
    *&v83 = ((v76 * v80) - (((v81 * _D2.f32[0]) - (v79 * v77)) * v78)) + (v4->f32[0] * v82);
    *&v84 = ((v77 * v80) - (((v79 * v76) - (v4->f32[0] * _D2.f32[0])) * v78)) + (v81 * v82);
    *&v85 = ((_D2.f32[0] * v80) - (((v4->f32[0] * v77) - (v81 * v76)) * v78)) + (v79 * v82);
    *&v86 = __PAIR64__(v84, v83);
    *(&v86 + 1) = v85;
    v126 = v86;
    *&v86 = *(v1 + 4) + *v5->i32;
    v127[0] = *&v83 - *&v86;
    v127[1] = *&v84 - *&v86;
    v127[2] = *&v85 - *&v86;
    v127[3] = *&v86 + *&v83;
    v127[4] = *&v86 + *&v84;
    v127[5] = *&v86 + *&v85;
    v155 = 0x44000000000;
    v153 = 1;
    v154 = v152;
    v138.i64[0] = &unk_1F5D22F88;
    v138.i64[1] = &v128;
    *&v139 = v4;
    (*(**&v130 + 104))(v137, v130);
    BYTE8(v139) = (v137[0] & 1) == 0;
    v138.i64[0] = &unk_1F5D22F30;
    physx::Gu::PCMMeshContactGeneration::PCMMeshContactGeneration(v140, &v135, &v132, v134, v133, v9, v7, v152, 0);
    v146 = v126;
    v147 = v15;
    v149[1024] = 1;
    v151 = 0x4000000000;
    v150 = v149;
    v87 = vadd_f32(v15, v135);
    v148 = vmul_f32(v87, v87);
    physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v128, v71, v127, 0, &v138);
    physx::Gu::PCMSphereVsMeshContactGeneration::generateLastContacts(v140);
    v89 = v145;
    if (v145)
    {
      v90 = HIDWORD(v145);
      if (HIDWORD(v145) >= 2)
      {
        v91 = 0;
        v92 = -1;
        v93 = 1;
        do
        {
          v94 = v141[v93 - 1];
          v95 = v141[v93];
          if (COERCE_FLOAT(*(v94 + 40)) > COERCE_FLOAT(*(v95 + 40)))
          {
            v141[v93 - 1] = v95;
            v141[v93] = v94;
            if (v93 - 2 >= 0)
            {
              v96 = &v141[v92 + 1];
              v97 = v91;
              do
              {
                v99 = *(v96 - 1);
                v98 = *v96;
                if (COERCE_FLOAT(*(*v96 + 40)) >= COERCE_FLOAT(*(v99 + 40)))
                {
                  break;
                }

                *v96 = v99;
                *--v96 = v98;
                --v97;
              }

              while (v97 > 0);
            }
          }

          ++v93;
          ++v92;
          ++v91;
        }

        while (v93 != v90);
      }

      if (v90)
      {
        v100 = 0;
        for (i = 0; i != v90; ++i)
        {
          v102 = v141[i];
          v102[1].i64[1] = v102;
          v102[2].i64[0] = v102;
          v103 = v102[3].i32[1] - v102[3].i32[0];
          v102[3].i32[2] = v103;
          v102[1].i64[0] = 0;
          v104 = v100;
          while (v104)
          {
            v105 = *(&v140[127] + v104 + 8);
            v106 = *(v105 + 32);
            v107 = vmulq_f32(*v102, *v106);
            v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
            v104 -= 8;
            if (vpadd_f32(*v107.f32, *v107.f32).f32[0] >= *&v142)
            {
              *(v105 + 16) = v102;
              v106[1].i64[1] = v102;
              v102[2].i64[0] = v106;
              *(*(v105 + 32) + 56) += v103;
              break;
            }
          }

          v100 += 8;
        }

        v108 = 0;
        v109 = v144;
        do
        {
          v110 = v141[v108];
          if (v110)
          {
            _ZF = *(v110 + 32) == v110;
          }

          else
          {
            _ZF = 0;
          }

          if (_ZF)
          {
            while (*(v110 + 16))
            {
              v112 = v110;
              v110 = *(v110 + 16);
              v113 = *(v112 + 48);
              v114 = *(v112 + 52);
              if (v113 < v114)
              {
                v115 = *(v110 + 52);
                do
                {
                  v116 = *(v110 + 48);
                  if (v116 < v115)
                  {
                    do
                    {
                      v117 = v109 + (v116 << 6);
                      v118 = vsubq_f32(*(v117 + 16), *(v109 + (v113 << 6) + 16));
                      v119 = vmulq_f32(v118, v118);
                      v119.i64[0] = vpaddq_f32(v119, v119).u64[0];
                      if (*&v143 > vpadd_f32(*v119.f32, *v119.f32).f32[0])
                      {
                        v120 = (v109 + ((v115 - 1) << 6));
                        v121 = *v120;
                        v122 = v120[1];
                        v123 = v120[2];
                        *(v117 + 48) = *(v120 + 12);
                        *(v117 + 16) = v122;
                        *(v117 + 32) = v123;
                        *v117 = v121;
                        v115 = *(v110 + 52) - 1;
                        *(v110 + 52) = v115;
                        --v116;
                      }

                      ++v116;
                    }

                    while (v116 < v115);
                    v114 = *(v112 + 52);
                  }

                  ++v113;
                }

                while (v113 < v114);
              }
            }
          }

          ++v108;
        }

        while (v108 != v90);
        v124 = v144;
        v89 = v145;
        v125 = HIDWORD(v145);
      }

      else
      {
        v125 = 0;
        v124 = v144;
      }

      physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(v141[36], v124, v89, v141, v125, v88, &v142, 1);
      v145 = 0;
    }

    v138.i64[0] = &unk_1F5D22F30;
    if ((v151 & 0x8000000000000000) == 0 && (v151 & 0x7FFFFFFF00000000) != 0 && v150 != v149 && v150)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    if ((v155 & 0x8000000000000000) == 0 && (v155 & 0x7FFFFFFF00000000) != 0 && v154 != v152 && v154)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  else
  {
    v38 = vdup_lane_s32(*v34.f32, 1);
    v39 = vdup_laneq_s32(v34, 2);
    v40 = vaddq_f32(v34, v34);
    v41 = vdup_laneq_s32(v40, 2);
    v42 = vdup_lane_s32(vmul_f32(*v34.f32, *v40.f32), 0);
    v43 = vmul_lane_f32(v38, *v40.f32, 1);
    v44 = vmul_laneq_f32(v39, v40, 2);
    v45 = vmul_n_f32(v38, v40.f32[0]);
    v46 = vmul_n_f32(v39, v40.f32[0]);
    v47 = vmul_lane_f32(vdup_lane_s32(*v40.f32, 0), v31, 1);
    v48 = vmul_lane_f32(v39, *v40.f32, 1);
    *v40.f32 = vmul_lane_f32(vdup_lane_s32(*v40.f32, 1), v31, 1);
    v49 = vmul_lane_f32(v41, v31, 1);
    __asm { FMOV            V16.2S, #1.0 }

    v54 = vsub_f32(_D16, v42);
    *v55.f32 = vext_s8(vsub_f32(vsub_f32(_D16, v43), v44), vadd_f32(v45, v49), 4uLL);
    v55.i64[1] = vsub_f32(v46, *v40.f32).u32[0];
    *&v56 = vext_s8(vsub_f32(v45, v49), vsub_f32(v54, v44), 4uLL);
    *(&v56 + 1) = vadd_f32(v48, v47).u32[0];
    v138 = v55;
    v139 = v56;
    *&v56 = vext_s8(vadd_f32(v46, *v40.f32), vsub_f32(v48, v47), 4uLL);
    *(&v56 + 1) = vsub_f32(v54, v43).u32[0];
    v140[0] = v56;
    v140[1] = v28;
    v152[0] = vmul_n_f32(vdup_n_s32(0x3D4CCCCDu), *v14.i32);
    v57 = v9[3].u8[14];
    if (v9[3].i8[14])
    {
      v58 = 0;
      v59 = &v9[3].i8[8];
      v60 = v9 + 4;
      do
      {
        v61 = v59[v58];
        LODWORD(v62) = v57 - 2;
        if (v58 >= v62)
        {
          v62 = v62;
        }

        else
        {
          v62 = v58;
        }

        _X8 = &v60[25 * v59[v62 + 1]];
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X8,#0x80]
          PRFM            #0, [X8,#0x100]
        }

        v67 = physx::Gu::SinglePersistentContactManifold::refreshContactPoints(&v60[25 * v59[v58]], &v138, v152).u32[0];
        if (v60[25 * v61 + 24].i32[0])
        {
          v9[2].i32[v61] = v67;
          ++v58;
        }

        else
        {
          v68 = v9[3].i8[14] - 1;
          v9[3].i8[14] = v68;
          v69 = v59[v68];
          v59[v68] = v61;
          v59[v58] = v69;
        }

        v57 = v9[3].u8[14];
      }

      while (v58 < v57);
    }
  }

  return physx::Gu::MultiplePersistentContactManifold::addManifoldContactsToContactBuffer(v9, v7, v134, v133, &v136);
}