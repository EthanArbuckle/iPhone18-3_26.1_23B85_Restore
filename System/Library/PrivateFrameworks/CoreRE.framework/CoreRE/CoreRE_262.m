BOOL physx::Gu::SweepGeomGeom<physx::Gu::BoxV,physx::Gu::BoxV>(uint64_t *a1, uint64_t *a2, int8x8_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, float32x4_t a10)
{
  v12 = *a1;
  v13 = *a2;
  v93 = 3;
  v91[0] = 0;
  v91[1] = 0;
  a10.i64[0] = *(v12 + 4);
  v14 = a10;
  v14.i32[2] = *(v12 + 12);
  v94 = 0;
  v15 = vdup_laneq_s32(v14, 2);
  v14.i32[3] = 0;
  v95 = v14;
  *a10.f32 = vpmin_f32(v15, *a10.f32);
  a10.f32[0] = vpmin_f32(*a10.f32, *a10.f32).f32[0];
  v91[2] = vmul_n_f32(0x3BA3D70A3C23D70ALL, a10.f32[0]);
  v92 = 0.05 * a10.f32[0];
  v86[0] = 0;
  v86[1] = 0;
  a10.i64[0] = *(v13 + 4);
  v16 = a10;
  v16.i32[2] = *(v13 + 12);
  v88 = 3;
  v17 = vdup_laneq_s32(v16, 2);
  v16.i32[3] = 0;
  v89 = 0;
  v90 = v16;
  v18 = vpmin_f32(v17, *a10.f32);
  v18.f32[0] = vpmin_f32(v18, v18).f32[0];
  v86[2] = vmul_n_f32(0x3BA3D70A3C23D70ALL, v18.f32[0]);
  v87 = 0.05 * v18.f32[0];
  *&a9 = *&a9 + 0.0;
  v19.i64[0] = *(a5 + 16);
  v19.i64[1] = *(a5 + 24);
  v20 = *a4;
  v21.i64[0] = *(a6 + 16);
  v21.i64[1] = *(a6 + 24);
  v22 = vnegq_f32(*a4);
  v23 = v22;
  v23.i32[3] = 0;
  v24 = vsubq_f32(v19, v21);
  v84 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v25) = vmla_f32(0xBF000000BF000000, *v84.f32, *v84.f32).u32[0];
  v26 = vmulq_n_f32(v24, v25);
  v26.i32[3] = 0;
  v27 = vextq_s8(v23, v23, 8uLL).u64[0];
  v28 = vext_s8(*v22.i8, v27, 4uLL);
  v29 = vmls_f32(vmul_f32(*v22.i8, *&vextq_s8(v24, v24, 4uLL)), v28, *v24.f32);
  *v30.f32 = vext_s8(v29, vmls_f32(vmul_f32(v27, *v24.f32), *v22.i8, *&vextq_s8(v24, v24, 8uLL)), 4uLL);
  v30.i64[1] = v29.u32[0];
  v31 = vmlaq_laneq_f32(v26, v30, *a4, 3);
  v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
  v32 = vmulq_f32(v23, v24);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vmlaq_n_f32(v31, v23, vpadd_f32(*v32.f32, *v32.f32).f32[0]);
  v34 = *a3->i8;
  v34.i32[3] = 0;
  v35 = vmulq_f32(v34, v23);
  v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
  v36 = vmulq_laneq_f32(v34, *a4, 3);
  v34.i64[0] = vextq_s8(v34, v34, 8uLL).u64[0];
  v37 = vmls_f32(vmul_f32(vext_s8(*a3, *v34.f32, 4uLL), *v22.i8), v28, *a3);
  *v14.f32 = vext_s8(v37, vmls_f32(vmul_f32(*a3, v27), *v22.i8, *v34.f32), 4uLL);
  *&v14.u32[2] = v37;
  v38 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v23, *a3->i8, 3), v36), v14);
  *v22.i8 = vdup_lane_s32(*v38.f32, 1);
  *v23.f32 = vdup_laneq_s32(v38, 2);
  v39 = vaddq_f32(v38, v38);
  *v34.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a3->i8, *a3->i8, 8uLL), *&vextq_s8(v20, v20, 8uLL)), vpadd_f32(*v35.f32, *v35.f32));
  v40 = vdup_laneq_s32(v39, 2);
  v41 = vmul_f32(*v38.f32, *v39.f32);
  v42 = vmul_lane_f32(*v22.i8, *v39.f32, 1);
  v43 = vmul_laneq_f32(*v23.f32, v39, 2);
  *v22.i8 = vmul_n_f32(*v22.i8, v39.f32[0]);
  v44 = vmul_n_f32(*v23.f32, v39.f32[0]);
  *v35.f32 = vmul_lane_f32(vdup_lane_s32(*v39.f32, 0), *v34.f32, 1);
  *v23.f32 = vmul_lane_f32(*v23.f32, *v39.f32, 1);
  *v39.f32 = vmul_lane_f32(vdup_lane_s32(*v39.f32, 1), *v34.f32, 1);
  *v34.f32 = vmul_lane_f32(v40, *v34.f32, 1);
  __asm { FMOV            V7.2S, #1.0 }

  *v36.f32 = vext_s8(vsub_f32(vsub_f32(_D7, v42), v43), vadd_f32(*v22.i8, *v34.f32), 4uLL);
  v36.i64[1] = vsub_f32(v44, *v39.f32).u32[0];
  v112 = 0u;
  v50 = vaddq_f32(v33, v33);
  v50.i32[3] = 0;
  v51 = vsub_f32(_D7, vdup_lane_s32(v41, 0));
  *v34.f32 = vext_s8(vsub_f32(*v22.i8, *v34.f32), vsub_f32(v51, v43), 4uLL);
  v34.i64[1] = vadd_f32(*v23.f32, *v35.f32).u32[0];
  *v22.i8 = vext_s8(vadd_f32(v44, *v39.f32), vsub_f32(*v23.f32, *v35.f32), 4uLL);
  v22.i64[1] = vsub_f32(v51, v42).u32[0];
  *v23.f32 = a3[2];
  v23.i64[1] = a3[3].u32[0];
  v52.i64[0] = a4[1].i64[0];
  v52.i64[1] = a4[1].u32[2];
  v108 = v36;
  v109 = v34;
  v85 = v21;
  v53 = v20;
  v53.i32[3] = 0;
  v80 = vsubq_f32(v23, v19);
  v54 = vsubq_f32(vsubq_f32(v52, v21), v80);
  v82 = v25;
  v83 = *v20.f32;
  v55 = vmulq_n_f32(v54, v25);
  v55.i32[3] = 0;
  v39.i64[0] = vextq_s8(v53, v53, 8uLL).u64[0];
  v56 = vext_s8(*v20.f32, *v39.f32, 4uLL);
  v79 = *v39.f32;
  *v52.f32 = vmls_f32(vmul_f32(*v20.f32, *&vextq_s8(v54, v54, 4uLL)), v56, *v54.f32);
  *v34.f32 = vext_s8(*v52.f32, vmls_f32(vmul_f32(*v39.f32, *v54.f32), *v20.f32, *&vextq_s8(v54, v54, 8uLL)), 4uLL);
  v34.i64[1] = v52.u32[0];
  v57 = vmlsq_laneq_f32(v55, v34, v20, 3);
  v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
  v110 = v22;
  v111 = v50;
  v58 = vmulq_f32(v53, v54);
  v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
  v81 = v53;
  v59 = vmlaq_n_f32(v57, v53, vpadd_f32(*v58.f32, *v58.f32).f32[0]);
  v60 = vaddq_f32(v59, v59);
  v60.i32[3] = 0;
  v107 = v60;
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v103 = 0;
  v97.i64[1] = v91;
  v98 = &v108;
  v102 = v50;
  v61 = vzip1q_s32(v36, v22);
  v62 = vzip1q_s32(v109, 0);
  v99 = vzip1q_s32(v61, v62);
  v100 = vzip2q_s32(v61, v62);
  v101 = vzip1q_s32(vzip2q_s32(v36, v22), vzip2q_s32(v109, 0));
  v96[1] = v86;
  v97.i64[0] = &unk_1F5D21AE0;
  v96[0] = &unk_1F5D21A80;
  result = physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(&v97, v96, &v111, &v103, &v112, &v107, &v106, &v104, *&a9, &v105, 1);
  if (result)
  {
    v64 = vmulq_n_f32(v105, v82);
    v64.i32[3] = 0;
    v65 = vextq_s8(v105, v105, 8uLL).u64[0];
    v66 = vmls_f32(vmul_f32(v83, vext_s8(*v105.i8, v65, 4uLL)), v56, *v105.i8);
    *v67.f32 = vext_s8(v66, vmls_f32(vmul_f32(v79, *v105.i8), v83, v65), 4uLL);
    v67.i64[1] = v66.u32[0];
    v68 = vmlaq_f32(v64, v84, v67);
    v68.i64[1] = vextq_s8(v68, v68, 8uLL).u32[0];
    v69 = vmulq_f32(v81, v105);
    v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
    v70 = vmlaq_n_f32(v68, v81, vpadd_f32(*v69.f32, *v69.f32).f32[0]);
    v70.i64[1] = vextq_s8(v70, v70, 8uLL).u32[0];
    v69.i64[0] = 0x4000000040000000;
    v69.i64[1] = 0x4000000040000000;
    v71 = vmlaq_f32(v85, v69, v70);
    v71.i64[1] = vextq_s8(v71, v71, 8uLL).u32[0];
    v72 = vmlaq_n_f32(v71, v80, vmax_f32(v106, 0).f32[0]);
    v73 = vmulq_n_f32(v104, v82);
    v73.i32[3] = 0;
    v67.i64[0] = vextq_s8(v104, v104, 8uLL).u64[0];
    v74 = vmls_f32(vmul_f32(v83, vext_s8(*v104.f32, *v67.f32, 4uLL)), v56, *v104.f32);
    *v67.f32 = vext_s8(v74, vmls_f32(vmul_f32(v79, *v104.f32), v83, *v67.f32), 4uLL);
    v67.i64[1] = v74.u32[0];
    v75 = vmlaq_f32(v73, v84, v67);
    v75.i64[1] = vextq_s8(v75, v75, 8uLL).u32[0];
    v76 = vmulq_f32(v81, v104);
    v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
    v77 = vmlaq_n_f32(v75, v81, vpadd_f32(*v76.f32, *v76.f32).f32[0]);
    v78 = vaddq_f32(v77, v77);
    *a7 = v78.i64[0];
    *(a7 + 8) = v78.i32[2];
    *a8 = v72.i64[0];
    *(a8 + 8) = v72.i32[2];
  }

  return result;
}

BOOL physx::Gu::SweepGeomGeom<physx::Gu::BoxV,physx::Gu::ConvexHullV>(uint64_t *a1, uint64_t *a2, int8x8_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int32x4_t a10)
{
  v190 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = *a2;
  v157 = 3;
  v158 = 0;
  v155[0] = 0;
  v155[1] = 0;
  a10.i64[0] = *(v12 + 4);
  v14 = a10;
  v14.i32[2] = *(v12 + 12);
  v15 = vdup_laneq_s32(v14, 2);
  v14.i32[3] = 0;
  v159 = v14;
  *a10.i8 = vpmin_f32(v15, *a10.i8);
  *a10.i32 = vpmin_f32(*a10.i8, *a10.i8).f32[0];
  v155[2] = vmul_n_f32(0x3BA3D70A3C23D70ALL, *a10.i32);
  v156 = 0.05 * *a10.i32;
  v179 = 0;
  v177 = 0u;
  v178 = 0u;
  v16 = *(v13 + 48);
  v17 = *(v13 + 4);
  v18 = v17;
  v18.i32[3] = 0;
  v19 = *(v13 + 16);
  a10.i32[0] = HIDWORD(*(v13 + 4));
  v20 = COERCE_FLOAT(*(v13 + 12)) == 1.0;
  if (v17.f32[0] != 1.0 || *a10.i32 != 1.0)
  {
    v20 = 0;
  }

  v22 = *(v16 + 40) + 20 * *(v16 + 39);
  v186 = v16;
  v188 = v22;
  v23.i64[0] = *(v16 + 60);
  v23.i64[1] = *(v16 + 68);
  v24 = vmulq_f32(v18, v23);
  v189 = *(v16 + 38);
  *v24.i8 = vpmin_f32(vdup_laneq_s32(v24, 2), *v24.i8);
  *v24.i32 = vpmin_f32(*v24.i8, *v24.i8).f32[0];
  *&v178 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v24.i32);
  *(&v178 + 2) = 0.025 * *v24.i32;
  __asm { FMOV            V1.2S, #1.0 }

  if (v20)
  {
    v180 = xmmword_1E3047670;
    v181 = xmmword_1E3047680;
    v182 = xmmword_1E30476A0;
    v183 = xmmword_1E3047670;
    v184 = xmmword_1E3047680;
    v185 = xmmword_1E30476A0;
  }

  else
  {
    v29 = vrecpeq_f32(v18);
    v30 = 4;
    do
    {
      v29 = vmulq_f32(v29, vrecpsq_f32(v29, v18));
      --v30;
    }

    while (v30);
    *v31.f32 = vdup_lane_s32(*v17.f32, 0);
    v31.i64[1] = v31.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v31, v18)), *&a9).u32[0] & 0xFFFFFF) != 0)
    {
      v38 = vdup_lane_s32(*v19.f32, 1);
      v39 = vdup_laneq_s32(v19, 2);
      v40 = vdup_laneq_s32(v19, 3);
      v41 = vaddq_f32(v19, v19);
      v42 = vmul_lane_f32(v38, *v41.f32, 1);
      v43 = vmul_laneq_f32(v39, v41, 2);
      v44 = vmul_n_f32(v38, v41.f32[0]);
      v45 = vmul_n_f32(v39, v41.f32[0]);
      v46 = vmul_n_f32(v40, v41.f32[0]);
      v47 = vmul_lane_f32(v39, *v41.f32, 1);
      v48 = vmul_lane_f32(v40, *v41.f32, 1);
      v49 = vmul_laneq_f32(v40, v41, 2);
      v50 = vsub_f32(_D1, vdup_lane_s32(vmul_f32(*v19.f32, *v41.f32), 0));
      v51 = vsub_f32(vsub_f32(_D1, v42), v43);
      *v41.f32 = vadd_f32(v44, v49);
      v52 = vsub_f32(v45, v48);
      v53 = vsub_f32(v44, v49);
      v54 = vadd_f32(v45, v48);
      v55 = vsub_f32(v47, v46);
      v56 = vext_s8(v54, v55, 4uLL);
      v57 = vsub_f32(v50, v43);
      *v58.f32 = vext_s8(v51, *&vdupq_lane_s32(v53, 1), 4uLL);
      v58.i64[1] = vdup_lane_s32(v56, 0).u32[0];
      v59 = vsub_f32(v50, v42);
      *v60.f32 = vext_s8(*&vdupq_lane_s32(*v41.f32, 0), v57, 4uLL);
      v60.i64[1] = vdup_lane_s32(v56, 1).u32[0];
      v61 = vadd_f32(v47, v46);
      *v62.f32 = vext_s8(*&vdupq_lane_s32(v52, 0), v61, 4uLL);
      v62.i64[1] = vdup_lane_s32(v59, 0).u32[0];
      v63 = vmulq_n_f32(v58, v17.f32[0]);
      v63.i32[3] = 0;
      v64 = vmulq_lane_f32(v60, *v17.f32, 1);
      v64.i32[3] = 0;
      v65 = vmulq_laneq_f32(v62, v17, 2);
      v65.i32[3] = 0;
      v66 = vmulq_lane_f32(v63, v51, 1);
      v66.i32[3] = 0;
      v67 = vmulq_n_f32(v64, v41.f32[0]);
      v67.i32[3] = 0;
      v68 = vmulq_n_f32(v65, *v52.i32);
      v68.i32[3] = 0;
      v32 = vaddq_f32(v68, vaddq_f32(v66, v67));
      v69 = vmulq_lane_f32(v63, v53, 1);
      v69.i32[3] = 0;
      v70 = vmulq_n_f32(v64, *v57.i32);
      v70.i32[3] = 0;
      v71 = vmulq_n_f32(v65, *v61.i32);
      v71.i32[3] = 0;
      v33 = vaddq_f32(v71, vaddq_f32(v69, v70));
      v72 = vmulq_lane_f32(v63, v54, 1);
      v72.i32[3] = 0;
      v73 = vmulq_n_f32(v64, *v55.i32);
      v73.i32[3] = 0;
      v74 = vmulq_n_f32(v65, *v59.i32);
      v74.i32[3] = 0;
      v34 = vaddq_f32(v74, vaddq_f32(v72, v73));
      v180 = v32;
      v181 = v33;
      v75 = vmulq_n_f32(v58, v29.f32[0]);
      v75.i32[3] = 0;
      v76 = vmulq_lane_f32(v60, *v29.f32, 1);
      v76.i32[3] = 0;
      v77 = vmulq_laneq_f32(v62, v29, 2);
      v77.i32[3] = 0;
      v78 = vmulq_lane_f32(v75, v51, 1);
      v78.i32[3] = 0;
      v79 = vmulq_n_f32(v76, v41.f32[0]);
      v79.i32[3] = 0;
      v80 = vmulq_n_f32(v77, *v52.i32);
      v80.i32[3] = 0;
      v81 = vaddq_f32(v80, vaddq_f32(v78, v79));
      v82 = vmulq_lane_f32(v75, v53, 1);
      v82.i32[3] = 0;
      v83 = vmulq_n_f32(v76, *v57.i32);
      v83.i32[3] = 0;
      v84 = vmulq_n_f32(v77, *v61.i32);
      v84.i32[3] = 0;
      v85 = vmulq_lane_f32(v75, v54, 1);
      v85.i32[3] = 0;
      v86 = vmulq_n_f32(v76, *v55.i32);
      v86.i32[3] = 0;
      v87 = vmulq_n_f32(v77, *v59.i32);
      v87.i32[3] = 0;
      v37 = vaddq_f32(v87, vaddq_f32(v85, v86));
      v182 = v34;
      v183 = v81;
      v184 = vaddq_f32(v84, vaddq_f32(v82, v83));
    }

    else
    {
      v29.i32[3] = 0;
      v32 = vmulq_f32(v18, xmmword_1E3047670);
      v33 = vmulq_f32(v18, xmmword_1E3047680);
      v34 = vmulq_f32(v18, xmmword_1E30476A0);
      v180 = v32;
      v181 = v33;
      v35 = vmulq_f32(v29, xmmword_1E3047670);
      v36 = vmulq_f32(v29, xmmword_1E3047680);
      v37 = vmulq_f32(v29, xmmword_1E30476A0);
      v182 = v34;
      v183 = v35;
      v184 = v36;
    }

    v88 = vmulq_f32(v32, 0);
    v88.i32[3] = 0;
    v89 = vmulq_f32(v33, 0);
    v89.i32[3] = 0;
    v90 = vmulq_f32(v34, 0);
    v90.i32[3] = 0;
    v185 = v37;
    v177 = vaddq_f32(v90, vaddq_f32(v89, v88));
  }

  v187 = *(v16 + 48);
  *&a9 = *&a9 + 0.0;
  v91.i64[0] = *(a5 + 16);
  v91.i64[1] = *(a5 + 24);
  v92 = *a4;
  v93.i64[0] = *(a6 + 16);
  v93.i64[1] = *(a6 + 24);
  v94 = vnegq_f32(*a4);
  v95 = v94;
  v95.i32[3] = 0;
  v96 = vsubq_f32(v91, v93);
  v153 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v97) = vmla_f32(0xBF000000BF000000, *v153.f32, *v153.f32).u32[0];
  v98 = vmulq_n_f32(v96, v97);
  v98.i32[3] = 0;
  v99 = vextq_s8(v95, v95, 8uLL).u64[0];
  v100 = vext_s8(*v94.f32, v99, 4uLL);
  v101 = vmls_f32(vmul_f32(*v94.f32, *&vextq_s8(v96, v96, 4uLL)), v100, *v96.f32);
  *v102.f32 = vext_s8(v101, vmls_f32(vmul_f32(v99, *v96.f32), *v94.f32, *&vextq_s8(v96, v96, 8uLL)), 4uLL);
  v102.i64[1] = v101.u32[0];
  v103 = vmlaq_laneq_f32(v98, v102, *a4, 3);
  v103.i64[1] = vextq_s8(v103, v103, 8uLL).u32[0];
  v104 = vmulq_f32(v95, v96);
  v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
  v105 = vmlaq_n_f32(v103, v95, vpadd_f32(*v104.f32, *v104.f32).f32[0]);
  v106 = *a3->i8;
  v106.i32[3] = 0;
  v107 = vmulq_f32(v106, v95);
  v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
  v108 = vmulq_laneq_f32(v106, *a4, 3);
  v106.i64[0] = vextq_s8(v106, v106, 8uLL).u64[0];
  v109 = vmls_f32(vmul_f32(vext_s8(*a3, *v106.f32, 4uLL), *v94.f32), v100, *a3);
  *v94.f32 = vext_s8(v109, vmls_f32(vmul_f32(*a3, v99), *v94.f32, *v106.f32), 4uLL);
  *&v94.u32[2] = v109;
  v110 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v95, *a3->i8, 3), v108), v94);
  v111 = vdup_lane_s32(*v110.f32, 1);
  *v95.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a3->i8, *a3->i8, 8uLL), *&vextq_s8(v92, v92, 8uLL)), vpadd_f32(*v107.f32, *v107.f32));
  *v106.f32 = vdup_laneq_s32(v110, 2);
  v112 = vaddq_f32(v110, v110);
  v113 = vdup_laneq_s32(v112, 2);
  *v108.f32 = vmul_f32(*v110.f32, *v112.f32);
  v114 = vmul_lane_f32(v111, *v112.f32, 1);
  v115 = vmul_laneq_f32(*v106.f32, v112, 2);
  v116 = vmul_n_f32(v111, v112.f32[0]);
  v117 = vmul_n_f32(*v106.f32, v112.f32[0]);
  *v102.f32 = vmul_lane_f32(vdup_lane_s32(*v112.f32, 0), *v95.f32, 1);
  *v106.f32 = vmul_lane_f32(*v106.f32, *v112.f32, 1);
  *v112.f32 = vmul_lane_f32(vdup_lane_s32(*v112.f32, 1), *v95.f32, 1);
  *v95.f32 = vmul_lane_f32(v113, *v95.f32, 1);
  *v107.f32 = vext_s8(vsub_f32(vsub_f32(_D1, v114), v115), vadd_f32(v116, *v95.f32), 4uLL);
  v107.i64[1] = vsub_f32(v117, *v112.f32).u32[0];
  v176 = 0u;
  v118 = vaddq_f32(v105, v105);
  v118.i32[3] = 0;
  v119 = vsub_f32(_D1, vdup_lane_s32(*v108.f32, 0));
  *v120.i8 = vext_s8(vsub_f32(v116, *v95.f32), vsub_f32(v119, v115), 4uLL);
  v120.i64[1] = vadd_f32(*v106.f32, *v102.f32).u32[0];
  *v95.f32 = vadd_f32(v117, *v112.f32);
  v112.i32[0] = vsub_f32(v119, v114).u32[0];
  *v121.i8 = vext_s8(*v95.f32, vsub_f32(*v106.f32, *v102.f32), 4uLL);
  v121.i64[1] = v112.u32[0];
  *v95.f32 = a3[2];
  v95.i64[1] = a3[3].u32[0];
  v106.i64[0] = a4[1].i64[0];
  v106.i64[1] = a4[1].u32[2];
  v172 = v107;
  v173 = v120;
  v154 = v93;
  v122 = v92;
  v122.i32[3] = 0;
  v149 = vsubq_f32(v95, v91);
  v123 = vsubq_f32(vsubq_f32(v106, v93), v149);
  v151 = v97;
  v152 = *v92.f32;
  v124 = vmulq_n_f32(v123, v97);
  v124.i32[3] = 0;
  v112.i64[0] = vextq_s8(v122, v122, 8uLL).u64[0];
  v125 = vext_s8(*v92.f32, *v112.f32, 4uLL);
  v148 = *v112.f32;
  *v106.f32 = vmls_f32(vmul_f32(*v92.f32, *&vextq_s8(v123, v123, 4uLL)), v125, *v123.f32);
  *v95.f32 = vext_s8(*v106.f32, vmls_f32(vmul_f32(*v112.f32, *v123.f32), *v92.f32, *&vextq_s8(v123, v123, 8uLL)), 4uLL);
  v95.i64[1] = v106.u32[0];
  v126 = vmlsq_laneq_f32(v124, v95, v92, 3);
  v126.i64[1] = vextq_s8(v126, v126, 8uLL).u32[0];
  v174 = v121;
  v175 = v118;
  v127 = vmulq_f32(v122, v123);
  v127.i64[0] = vpaddq_f32(v127, v127).u64[0];
  v150 = v122;
  v128 = vmlaq_n_f32(v126, v122, vpadd_f32(*v127.f32, *v127.f32).f32[0]);
  v129 = vaddq_f32(v128, v128);
  v129.i32[3] = 0;
  v171 = v129;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v167 = 0;
  v161.i64[1] = v155;
  v162 = &v172;
  v166 = v118;
  v130 = vzip1q_s32(v107, v174);
  v131 = vzip1q_s32(v173, 0);
  v163 = vzip1q_s32(v130, v131);
  v164 = vzip2q_s32(v130, v131);
  v165 = vzip1q_s32(vzip2q_s32(v107, v174), vzip2q_s32(v173, 0));
  v160[1] = &v177;
  v161.i64[0] = &unk_1F5D21AE0;
  v160[0] = &unk_1F5D21818;
  result = physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v161, v160, &v175, &v167, &v176, &v171, &v170, &v168, *&a9, &v169, 1);
  if (result)
  {
    v133 = vmulq_n_f32(v169, v151);
    v133.i32[3] = 0;
    v134 = vextq_s8(v169, v169, 8uLL).u64[0];
    v135 = vmls_f32(vmul_f32(v152, vext_s8(*v169.i8, v134, 4uLL)), v125, *v169.i8);
    *v136.f32 = vext_s8(v135, vmls_f32(vmul_f32(v148, *v169.i8), v152, v134), 4uLL);
    v136.i64[1] = v135.u32[0];
    v137 = vmlaq_f32(v133, v153, v136);
    v137.i64[1] = vextq_s8(v137, v137, 8uLL).u32[0];
    v138 = vmulq_f32(v150, v169);
    v138.i64[0] = vpaddq_f32(v138, v138).u64[0];
    v139 = vmlaq_n_f32(v137, v150, vpadd_f32(*v138.f32, *v138.f32).f32[0]);
    v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
    v138.i64[0] = 0x4000000040000000;
    v138.i64[1] = 0x4000000040000000;
    v140 = vmlaq_f32(v154, v138, v139);
    v140.i64[1] = vextq_s8(v140, v140, 8uLL).u32[0];
    v141 = vmlaq_n_f32(v140, v149, vmax_f32(v170, 0).f32[0]);
    v142 = vmulq_n_f32(v168, v151);
    v142.i32[3] = 0;
    v136.i64[0] = vextq_s8(v168, v168, 8uLL).u64[0];
    v143 = vmls_f32(vmul_f32(v152, vext_s8(*v168.f32, *v136.f32, 4uLL)), v125, *v168.f32);
    *v136.f32 = vext_s8(v143, vmls_f32(vmul_f32(v148, *v168.f32), v152, *v136.f32), 4uLL);
    v136.i64[1] = v143.u32[0];
    v144 = vmlaq_f32(v142, v153, v136);
    v144.i64[1] = vextq_s8(v144, v144, 8uLL).u32[0];
    v145 = vmulq_f32(v150, v168);
    v145.i64[0] = vpaddq_f32(v145, v145).u64[0];
    v146 = vmlaq_n_f32(v144, v150, vpadd_f32(*v145.f32, *v145.f32).f32[0]);
    v147 = vaddq_f32(v146, v146);
    *a7 = v147.i64[0];
    *(a7 + 8) = v147.i32[2];
    *a8 = v141.i64[0];
    *(a8 + 8) = v141.i32[2];
  }

  return result;
}

BOOL physx::Gu::SweepGeomGeom<physx::Gu::ConvexHullV,physx::Gu::ConvexHullV>(uint64_t *a1, uint64_t *a2, int8x8_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v266 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *a2;
  v255 = 0;
  v253 = 0u;
  v254 = 0u;
  v13 = *(v11 + 48);
  v14 = *(v11 + 4);
  v15 = v14;
  v15.i32[3] = 0;
  v16 = *(v11 + 16);
  LODWORD(v17) = HIDWORD(*(v11 + 4));
  v18 = COERCE_FLOAT(*(v11 + 12)) == 1.0;
  if (v14.f32[0] != 1.0 || v17 != 1.0)
  {
    v18 = 0;
  }

  v20 = *(v13 + 40) + 20 * *(v13 + 39);
  v262 = v13;
  v264 = v20;
  v21.i64[0] = *(v13 + 60);
  v21.i64[1] = *(v13 + 68);
  v22 = vmulq_f32(v15, v21);
  v265 = *(v13 + 38);
  *v22.i8 = vpmin_f32(vdup_laneq_s32(v22, 2), *v22.i8);
  *v22.i32 = vpmin_f32(*v22.i8, *v22.i8).f32[0];
  *&v254 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v22.i32);
  *(&v254 + 2) = 0.025 * *v22.i32;
  __asm { FMOV            V1.2S, #1.0 }

  if (v18)
  {
    v256 = xmmword_1E3047670;
    v257 = xmmword_1E3047680;
    v258 = xmmword_1E30476A0;
    v259 = xmmword_1E3047670;
    v260 = xmmword_1E3047680;
    v261 = xmmword_1E30476A0;
  }

  else
  {
    v27 = vrecpeq_f32(v15);
    v28 = 4;
    do
    {
      v27 = vmulq_f32(v27, vrecpsq_f32(v27, v15));
      --v28;
    }

    while (v28);
    *v29.f32 = vdup_lane_s32(*v14.f32, 0);
    v29.i64[1] = v29.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v29, v15)), *&a9).u32[0] & 0xFFFFFF) != 0)
    {
      v36 = vdup_lane_s32(*v16.f32, 1);
      v37 = vdup_laneq_s32(v16, 2);
      v38 = vdup_laneq_s32(v16, 3);
      v39 = vaddq_f32(v16, v16);
      v40 = vmul_lane_f32(v36, *v39.f32, 1);
      v41 = vmul_laneq_f32(v37, v39, 2);
      v42 = vmul_n_f32(v36, v39.f32[0]);
      v43 = vmul_n_f32(v37, v39.f32[0]);
      v44 = vmul_n_f32(v38, v39.f32[0]);
      v45 = vmul_lane_f32(v37, *v39.f32, 1);
      v46 = vmul_lane_f32(v38, *v39.f32, 1);
      v47 = vmul_laneq_f32(v38, v39, 2);
      v48 = vsub_f32(_D1, vdup_lane_s32(vmul_f32(*v16.f32, *v39.f32), 0));
      v49 = vsub_f32(vsub_f32(_D1, v40), v41);
      *v39.f32 = vadd_f32(v42, v47);
      v50 = vsub_f32(v43, v46);
      v51 = vsub_f32(v42, v47);
      v52 = vadd_f32(v43, v46);
      v53 = vsub_f32(v45, v44);
      v54 = vext_s8(v52, v53, 4uLL);
      v55 = vsub_f32(v48, v41);
      *v56.f32 = vext_s8(v49, *&vdupq_lane_s32(v51, 1), 4uLL);
      v56.i64[1] = vdup_lane_s32(v54, 0).u32[0];
      v57 = vsub_f32(v48, v40);
      *v58.f32 = vext_s8(*&vdupq_lane_s32(*v39.f32, 0), v55, 4uLL);
      v58.i64[1] = vdup_lane_s32(v54, 1).u32[0];
      v59 = vadd_f32(v45, v44);
      *v60.f32 = vext_s8(*&vdupq_lane_s32(v50, 0), v59, 4uLL);
      v60.i64[1] = vdup_lane_s32(v57, 0).u32[0];
      v61 = vmulq_n_f32(v56, v14.f32[0]);
      v61.i32[3] = 0;
      v62 = vmulq_lane_f32(v58, *v14.f32, 1);
      v62.i32[3] = 0;
      v63 = vmulq_laneq_f32(v60, v14, 2);
      v63.i32[3] = 0;
      v64 = vmulq_lane_f32(v61, v49, 1);
      v64.i32[3] = 0;
      v65 = vmulq_n_f32(v62, v39.f32[0]);
      v65.i32[3] = 0;
      v66 = vmulq_n_f32(v63, *v50.i32);
      v66.i32[3] = 0;
      v30 = vaddq_f32(v66, vaddq_f32(v64, v65));
      v67 = vmulq_lane_f32(v61, v51, 1);
      v67.i32[3] = 0;
      v68 = vmulq_n_f32(v62, *v55.i32);
      v68.i32[3] = 0;
      v69 = vmulq_n_f32(v63, *v59.i32);
      v69.i32[3] = 0;
      v31 = vaddq_f32(v69, vaddq_f32(v67, v68));
      v70 = vmulq_lane_f32(v61, v52, 1);
      v70.i32[3] = 0;
      v71 = vmulq_n_f32(v62, *v53.i32);
      v71.i32[3] = 0;
      v72 = vmulq_n_f32(v63, *v57.i32);
      v72.i32[3] = 0;
      v32 = vaddq_f32(v72, vaddq_f32(v70, v71));
      v256 = v30;
      v257 = v31;
      v73 = vmulq_n_f32(v56, v27.f32[0]);
      v73.i32[3] = 0;
      v74 = vmulq_lane_f32(v58, *v27.f32, 1);
      v74.i32[3] = 0;
      v75 = vmulq_laneq_f32(v60, v27, 2);
      v75.i32[3] = 0;
      v76 = vmulq_lane_f32(v73, v49, 1);
      v76.i32[3] = 0;
      v77 = vmulq_n_f32(v74, v39.f32[0]);
      v77.i32[3] = 0;
      v78 = vmulq_n_f32(v75, *v50.i32);
      v78.i32[3] = 0;
      v79 = vaddq_f32(v78, vaddq_f32(v76, v77));
      v80 = vmulq_lane_f32(v73, v51, 1);
      v80.i32[3] = 0;
      v81 = vmulq_n_f32(v74, *v55.i32);
      v81.i32[3] = 0;
      v82 = vmulq_n_f32(v75, *v59.i32);
      v82.i32[3] = 0;
      v83 = vmulq_lane_f32(v73, v52, 1);
      v83.i32[3] = 0;
      v84 = vmulq_n_f32(v74, *v53.i32);
      v84.i32[3] = 0;
      v85 = vmulq_n_f32(v75, *v57.i32);
      v85.i32[3] = 0;
      v35 = vaddq_f32(v85, vaddq_f32(v83, v84));
      v258 = v32;
      v259 = v79;
      v260 = vaddq_f32(v82, vaddq_f32(v80, v81));
    }

    else
    {
      v27.i32[3] = 0;
      v30 = vmulq_f32(v15, xmmword_1E3047670);
      v31 = vmulq_f32(v15, xmmword_1E3047680);
      v32 = vmulq_f32(v15, xmmword_1E30476A0);
      v256 = v30;
      v257 = v31;
      v33 = vmulq_f32(v27, xmmword_1E3047670);
      v34 = vmulq_f32(v27, xmmword_1E3047680);
      v35 = vmulq_f32(v27, xmmword_1E30476A0);
      v258 = v32;
      v259 = v33;
      v260 = v34;
    }

    v86 = vmulq_f32(v30, 0);
    v86.i32[3] = 0;
    v87 = vmulq_f32(v31, 0);
    v87.i32[3] = 0;
    v88 = vmulq_f32(v32, 0);
    v88.i32[3] = 0;
    v261 = v35;
    v253 = vaddq_f32(v88, vaddq_f32(v87, v86));
  }

  v89 = 0;
  v263 = *(v13 + 48);
  v242 = 0;
  v240 = 0u;
  v241 = 0u;
  v90 = *(v12 + 48);
  v91 = *(v12 + 4);
  v92 = v91;
  v92.i32[3] = 0;
  if (v91.f32[0] == 1.0 && v91.f32[1] == 1.0)
  {
    v89 = v91.f32[2] == 1.0;
  }

  v93 = *(v12 + 16);
  v94 = *(v90 + 40) + 20 * *(v90 + 39);
  v249 = v90;
  v251 = v94;
  v95.i64[0] = *(v90 + 60);
  v95.i32[2] = *(v90 + 68);
  v252 = *(v90 + 38);
  v95.i64[1] = v95.u32[2];
  v96 = vmulq_f32(v92, v95);
  *v96.i8 = vpmin_f32(vdup_laneq_s32(v96, 2), *v96.i8);
  *v96.i32 = vpmin_f32(*v96.i8, *v96.i8).f32[0];
  *&v241 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v96.i32);
  *(&v241 + 2) = 0.025 * *v96.i32;
  if (v89)
  {
    v243 = xmmword_1E3047670;
    v244 = xmmword_1E3047680;
    v245 = xmmword_1E30476A0;
    v246 = xmmword_1E3047670;
    v247 = xmmword_1E3047680;
    v248 = xmmword_1E30476A0;
  }

  else
  {
    v97 = vrecpeq_f32(v92);
    v98 = 4;
    do
    {
      v97 = vmulq_f32(v97, vrecpsq_f32(v97, v92));
      --v98;
    }

    while (v98);
    *v99.f32 = vdup_lane_s32(*v91.f32, 0);
    v99.i64[1] = v99.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v99, v92)), *&a9).u32[0] & 0xFFFFFF) != 0)
    {
      v106 = vdup_lane_s32(*v93.f32, 1);
      v107 = vdup_laneq_s32(v93, 2);
      v108 = vdup_laneq_s32(v93, 3);
      v109 = vaddq_f32(v93, v93);
      v110 = vmul_lane_f32(v106, *v109.f32, 1);
      v111 = vmul_laneq_f32(v107, v109, 2);
      v112 = vmul_n_f32(v106, v109.f32[0]);
      v113 = vmul_n_f32(v107, v109.f32[0]);
      v114 = vmul_n_f32(v108, v109.f32[0]);
      v115 = vmul_lane_f32(v107, *v109.f32, 1);
      v116 = vmul_lane_f32(v108, *v109.f32, 1);
      v117 = vmul_laneq_f32(v108, v109, 2);
      v118 = vsub_f32(_D1, vdup_lane_s32(vmul_f32(*v93.f32, *v109.f32), 0));
      v119 = vsub_f32(vsub_f32(_D1, v110), v111);
      *v109.f32 = vadd_f32(v112, v117);
      v120 = vsub_f32(v113, v116);
      v121 = vsub_f32(v112, v117);
      v122 = vadd_f32(v113, v116);
      v123 = vsub_f32(v115, v114);
      v124 = vext_s8(v122, v123, 4uLL);
      v125 = vsub_f32(v118, v111);
      *v126.f32 = vext_s8(v119, *&vdupq_lane_s32(v121, 1), 4uLL);
      v126.i64[1] = vdup_lane_s32(v124, 0).u32[0];
      v127 = vsub_f32(v118, v110);
      *v128.f32 = vext_s8(*&vdupq_lane_s32(*v109.f32, 0), v125, 4uLL);
      v128.i64[1] = vdup_lane_s32(v124, 1).u32[0];
      v129 = vadd_f32(v115, v114);
      *v130.f32 = vext_s8(*&vdupq_lane_s32(v120, 0), v129, 4uLL);
      v130.i64[1] = vdup_lane_s32(v127, 0).u32[0];
      v131 = vmulq_n_f32(v126, v91.f32[0]);
      v131.i32[3] = 0;
      v132 = vmulq_lane_f32(v128, *v91.f32, 1);
      v132.i32[3] = 0;
      v133 = vmulq_laneq_f32(v130, v91, 2);
      v133.i32[3] = 0;
      v134 = vmulq_lane_f32(v131, v119, 1);
      v134.i32[3] = 0;
      v135 = vmulq_n_f32(v132, v109.f32[0]);
      v135.i32[3] = 0;
      v136 = vmulq_n_f32(v133, *v120.i32);
      v136.i32[3] = 0;
      v100 = vaddq_f32(v136, vaddq_f32(v134, v135));
      v137 = vmulq_lane_f32(v131, v121, 1);
      v137.i32[3] = 0;
      v138 = vmulq_n_f32(v132, *v125.i32);
      v138.i32[3] = 0;
      v139 = vmulq_n_f32(v133, *v129.i32);
      v139.i32[3] = 0;
      v101 = vaddq_f32(v139, vaddq_f32(v137, v138));
      v140 = vmulq_lane_f32(v131, v122, 1);
      v140.i32[3] = 0;
      v141 = vmulq_n_f32(v132, *v123.i32);
      v141.i32[3] = 0;
      v142 = vmulq_n_f32(v133, *v127.i32);
      v142.i32[3] = 0;
      v102 = vaddq_f32(v142, vaddq_f32(v140, v141));
      v243 = v100;
      v244 = v101;
      v143 = vmulq_n_f32(v126, v97.f32[0]);
      v143.i32[3] = 0;
      v144 = vmulq_lane_f32(v128, *v97.f32, 1);
      v144.i32[3] = 0;
      v145 = vmulq_laneq_f32(v130, v97, 2);
      v145.i32[3] = 0;
      v146 = vmulq_lane_f32(v143, v119, 1);
      v146.i32[3] = 0;
      v147 = vmulq_n_f32(v144, v109.f32[0]);
      v147.i32[3] = 0;
      v148 = vmulq_n_f32(v145, *v120.i32);
      v148.i32[3] = 0;
      v149 = vaddq_f32(v148, vaddq_f32(v146, v147));
      v150 = vmulq_lane_f32(v143, v121, 1);
      v150.i32[3] = 0;
      v151 = vmulq_n_f32(v144, *v125.i32);
      v151.i32[3] = 0;
      v152 = vmulq_n_f32(v145, *v129.i32);
      v152.i32[3] = 0;
      v153 = vmulq_lane_f32(v143, v122, 1);
      v153.i32[3] = 0;
      v154 = vmulq_n_f32(v144, *v123.i32);
      v154.i32[3] = 0;
      v155 = vmulq_n_f32(v145, *v127.i32);
      v155.i32[3] = 0;
      v105 = vaddq_f32(v155, vaddq_f32(v153, v154));
      v245 = v102;
      v246 = v149;
      v247 = vaddq_f32(v152, vaddq_f32(v150, v151));
    }

    else
    {
      v97.i32[3] = 0;
      v100 = vmulq_f32(v92, xmmword_1E3047670);
      v101 = vmulq_f32(v92, xmmword_1E3047680);
      v102 = vmulq_f32(v92, xmmword_1E30476A0);
      v243 = v100;
      v244 = v101;
      v103 = vmulq_f32(v97, xmmword_1E3047670);
      v104 = vmulq_f32(v97, xmmword_1E3047680);
      v105 = vmulq_f32(v97, xmmword_1E30476A0);
      v245 = v102;
      v246 = v103;
      v247 = v104;
    }

    v156 = vmulq_f32(v100, 0);
    v156.i32[3] = 0;
    v157 = vmulq_f32(v101, 0);
    v157.i32[3] = 0;
    v158 = vmulq_f32(v102, 0);
    v158.i32[3] = 0;
    v248 = v105;
    v240 = vaddq_f32(v158, vaddq_f32(v157, v156));
  }

  v250 = *(v90 + 48);
  *&a9 = *&a9 + 0.0;
  v159.i64[0] = *(a5 + 16);
  v159.i64[1] = *(a5 + 24);
  v160 = *a4;
  v161.i64[0] = *(a6 + 16);
  v161.i64[1] = *(a6 + 24);
  v162 = vnegq_f32(*a4);
  v163 = v162;
  v163.i32[3] = 0;
  v164 = vsubq_f32(v159, v161);
  v221 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v165) = vmla_f32(0xBF000000BF000000, *v221.f32, *v221.f32).u32[0];
  v166 = vmulq_n_f32(v164, v165);
  v166.i32[3] = 0;
  v167 = vextq_s8(v163, v163, 8uLL).u64[0];
  v168 = vext_s8(*v162.f32, v167, 4uLL);
  v169 = vmls_f32(vmul_f32(*v162.f32, *&vextq_s8(v164, v164, 4uLL)), v168, *v164.f32);
  *v170.f32 = vext_s8(v169, vmls_f32(vmul_f32(v167, *v164.f32), *v162.f32, *&vextq_s8(v164, v164, 8uLL)), 4uLL);
  v170.i64[1] = v169.u32[0];
  v171 = vmlaq_laneq_f32(v166, v170, *a4, 3);
  v171.i64[1] = vextq_s8(v171, v171, 8uLL).u32[0];
  v172 = vmulq_f32(v163, v164);
  v172.i64[0] = vpaddq_f32(v172, v172).u64[0];
  v173 = vmlaq_n_f32(v171, v163, vpadd_f32(*v172.f32, *v172.f32).f32[0]);
  v174 = *a3->i8;
  v174.i32[3] = 0;
  v175 = vmulq_f32(v174, v163);
  v175.i64[0] = vpaddq_f32(v175, v175).u64[0];
  v176 = vmulq_laneq_f32(v174, *a4, 3);
  v174.i64[0] = vextq_s8(v174, v174, 8uLL).u64[0];
  v177 = vmls_f32(vmul_f32(vext_s8(*a3, *v174.f32, 4uLL), *v162.f32), v168, *a3);
  *v162.f32 = vext_s8(v177, vmls_f32(vmul_f32(*a3, v167), *v162.f32, *v174.f32), 4uLL);
  *&v162.u32[2] = v177;
  v178 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v163, *a3->i8, 3), v176), v162);
  v179 = vdup_lane_s32(*v178.f32, 1);
  *v163.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a3->i8, *a3->i8, 8uLL), *&vextq_s8(v160, v160, 8uLL)), vpadd_f32(*v175.f32, *v175.f32));
  *v174.f32 = vdup_laneq_s32(v178, 2);
  v180 = vaddq_f32(v178, v178);
  v181 = vdup_laneq_s32(v180, 2);
  *v176.f32 = vmul_f32(*v178.f32, *v180.f32);
  v182 = vmul_lane_f32(v179, *v180.f32, 1);
  v183 = vmul_laneq_f32(*v174.f32, v180, 2);
  v184 = vmul_n_f32(v179, v180.f32[0]);
  v185 = vmul_n_f32(*v174.f32, v180.f32[0]);
  *v170.f32 = vmul_lane_f32(vdup_lane_s32(*v180.f32, 0), *v163.f32, 1);
  *v174.f32 = vmul_lane_f32(*v174.f32, *v180.f32, 1);
  *v180.f32 = vmul_lane_f32(vdup_lane_s32(*v180.f32, 1), *v163.f32, 1);
  *v163.f32 = vmul_lane_f32(v181, *v163.f32, 1);
  *v175.f32 = vext_s8(vsub_f32(vsub_f32(_D1, v182), v183), vadd_f32(v184, *v163.f32), 4uLL);
  v175.i64[1] = vsub_f32(v185, *v180.f32).u32[0];
  v239 = 0u;
  v186 = vaddq_f32(v173, v173);
  v186.i32[3] = 0;
  v187 = vsub_f32(_D1, vdup_lane_s32(*v176.f32, 0));
  *v188.i8 = vext_s8(vsub_f32(v184, *v163.f32), vsub_f32(v187, v183), 4uLL);
  v188.i64[1] = vadd_f32(*v174.f32, *v170.f32).u32[0];
  *v163.f32 = vadd_f32(v185, *v180.f32);
  v180.i32[0] = vsub_f32(v187, v182).u32[0];
  *v189.i8 = vext_s8(*v163.f32, vsub_f32(*v174.f32, *v170.f32), 4uLL);
  v189.i64[1] = v180.u32[0];
  *v163.f32 = a3[2];
  v163.i64[1] = a3[3].u32[0];
  v174.i64[0] = a4[1].i64[0];
  v174.i64[1] = a4[1].u32[2];
  v235 = v175;
  v236 = v188;
  v222 = v161;
  v190 = v160;
  v190.i32[3] = 0;
  v217 = vsubq_f32(v163, v159);
  v191 = vsubq_f32(vsubq_f32(v174, v161), v217);
  v219 = v165;
  v220 = *v160.f32;
  v192 = vmulq_n_f32(v191, v165);
  v192.i32[3] = 0;
  v180.i64[0] = vextq_s8(v190, v190, 8uLL).u64[0];
  v193 = vext_s8(*v160.f32, *v180.f32, 4uLL);
  v216 = *v180.f32;
  *v174.f32 = vmls_f32(vmul_f32(*v160.f32, *&vextq_s8(v191, v191, 4uLL)), v193, *v191.f32);
  *v163.f32 = vext_s8(*v174.f32, vmls_f32(vmul_f32(*v180.f32, *v191.f32), *v160.f32, *&vextq_s8(v191, v191, 8uLL)), 4uLL);
  v163.i64[1] = v174.u32[0];
  v194 = vmlsq_laneq_f32(v192, v163, v160, 3);
  v194.i64[1] = vextq_s8(v194, v194, 8uLL).u32[0];
  v237 = v189;
  v238 = v186;
  v195 = vmulq_f32(v190, v191);
  v195.i64[0] = vpaddq_f32(v195, v195).u64[0];
  v218 = v190;
  v196 = vmlaq_n_f32(v194, v190, vpadd_f32(*v195.f32, *v195.f32).f32[0]);
  v197 = vaddq_f32(v196, v196);
  v197.i32[3] = 0;
  v234 = v197;
  v233 = 0;
  v231 = 0u;
  v232 = 0u;
  v230 = 0;
  v224.i64[1] = &v253;
  v225 = &v235;
  v229 = v186;
  v198 = vzip1q_s32(v175, v237);
  v199 = vzip1q_s32(v236, 0);
  v226 = vzip1q_s32(v198, v199);
  v227 = vzip2q_s32(v198, v199);
  v228 = vzip1q_s32(vzip2q_s32(v175, v237), vzip2q_s32(v236, 0));
  v223[1] = &v240;
  v224.i64[0] = &unk_1F5D21B40;
  v223[0] = &unk_1F5D21818;
  result = physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v224, v223, &v238, &v230, &v239, &v234, &v233, &v231, *&a9, &v232, 1);
  if (result)
  {
    v201 = vmulq_n_f32(v232, v219);
    v201.i32[3] = 0;
    v202 = vextq_s8(v232, v232, 8uLL).u64[0];
    v203 = vmls_f32(vmul_f32(v220, vext_s8(*v232.i8, v202, 4uLL)), v193, *v232.i8);
    *v204.f32 = vext_s8(v203, vmls_f32(vmul_f32(v216, *v232.i8), v220, v202), 4uLL);
    v204.i64[1] = v203.u32[0];
    v205 = vmlaq_f32(v201, v221, v204);
    v205.i64[1] = vextq_s8(v205, v205, 8uLL).u32[0];
    v206 = vmulq_f32(v218, v232);
    v206.i64[0] = vpaddq_f32(v206, v206).u64[0];
    v207 = vmlaq_n_f32(v205, v218, vpadd_f32(*v206.f32, *v206.f32).f32[0]);
    v207.i64[1] = vextq_s8(v207, v207, 8uLL).u32[0];
    v206.i64[0] = 0x4000000040000000;
    v206.i64[1] = 0x4000000040000000;
    v208 = vmlaq_f32(v222, v206, v207);
    v208.i64[1] = vextq_s8(v208, v208, 8uLL).u32[0];
    v209 = vmlaq_n_f32(v208, v217, vmax_f32(v233, 0).f32[0]);
    v210 = vmulq_n_f32(v231, v219);
    v210.i32[3] = 0;
    v204.i64[0] = vextq_s8(v231, v231, 8uLL).u64[0];
    v211 = vmls_f32(vmul_f32(v220, vext_s8(*v231.f32, *v204.f32, 4uLL)), v193, *v231.f32);
    *v204.f32 = vext_s8(v211, vmls_f32(vmul_f32(v216, *v231.f32), v220, *v204.f32), 4uLL);
    v204.i64[1] = v211.u32[0];
    v212 = vmlaq_f32(v210, v221, v204);
    v212.i64[1] = vextq_s8(v212, v212, 8uLL).u32[0];
    v213 = vmulq_f32(v218, v231);
    v213.i64[0] = vpaddq_f32(v213, v213).u64[0];
    v214 = vmlaq_n_f32(v212, v218, vpadd_f32(*v213.f32, *v213.f32).f32[0]);
    v215 = vaddq_f32(v214, v214);
    *a7 = v215.i64[0];
    *(a7 + 8) = v215.i32[2];
    *a8 = v209.i64[0];
    *(a8 + 8) = v209.i32[2];
  }

  return result;
}

float32_t physx::Gu::SweepGeomTriangles<physx::Gu::CapsuleV>(int32x2_t *a1, double a2, uint64_t a3, float32x4_t *a4, int8x8_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v310 = *MEMORY[0x1E69E9840];
  v11 = 4;
  v292 = 4;
  v288[1] = 0;
  v288[0] = 0;
  v13 = a1[1];
  v12 = vmulq_n_f32(xmmword_1E3047670, *v13.i32);
  v12.i32[3] = 0;
  v13.i32[0] = a1->i32[1];
  v14 = vnegq_f32(v12);
  v14.i32[3] = 0;
  v294 = v12;
  v295 = v14;
  v296 = vdup_lane_s32(v13, 0);
  v289 = *v13.i32;
  v290 = v13.i32[0];
  v291 = v13.i32[0];
  v293 = 1;
  v15.i64[0] = *(a7 + 16);
  v15.i64[1] = *(a7 + 24);
  v16 = *a4;
  v17.i64[0] = *(a6 + 16);
  v17.i64[1] = *(a6 + 24);
  v18 = vnegq_f32(*a4);
  v19 = vsubq_f32(v15, v17);
  v20 = v18;
  v20.i32[3] = 0;
  v259 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v21) = vmla_f32(0xBF000000BF000000, *v259.f32, *v259.f32).u32[0];
  v22 = vmulq_n_f32(v19, v21);
  v22.i32[3] = 0;
  v23 = vextq_s8(v20, v20, 8uLL).u64[0];
  v24 = vext_s8(*v18.f32, v23, 4uLL);
  v25 = vmls_f32(vmul_f32(*v18.f32, *&vextq_s8(v19, v19, 4uLL)), v24, *v19.f32);
  *v26.f32 = vext_s8(v25, vmls_f32(vmul_f32(v23, *v19.f32), *v18.f32, *&vextq_s8(v19, v19, 8uLL)), 4uLL);
  v26.i64[1] = v25.u32[0];
  v27 = vmlaq_laneq_f32(v22, v26, *a4, 3);
  v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
  v28 = vmulq_f32(v20, v19);
  v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
  v29 = vmlaq_n_f32(v27, v20, vpadd_f32(*v28.f32, *v28.f32).f32[0]);
  v30 = vaddq_f32(v29, v29);
  v30.i32[3] = 0;
  v31 = *a5->i8;
  v31.i32[3] = 0;
  v32 = vmulq_f32(v31, v20);
  v33 = vmulq_laneq_f32(v31, *a4, 3);
  v31.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
  v34 = vmls_f32(vmul_f32(vext_s8(*a5, *v31.f32, 4uLL), *v18.f32), v24, *a5);
  *v14.f32 = vext_s8(v34, vmls_f32(vmul_f32(*a5, v23), *v18.f32, *v31.f32), 4uLL);
  *&v14.u32[2] = v34;
  v35 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v20, *a5->i8, 3), v33), v14);
  *v18.f32 = vdup_lane_s32(*v35.f32, 1);
  *v20.f32 = vdup_laneq_s32(v35, 2);
  v36 = vpaddq_f32(v32, v32).u64[0];
  v37 = vaddq_f32(v35, v35);
  *v33.f32 = vdup_laneq_s32(v37, 2);
  *v35.f32 = vdup_lane_s32(vmul_f32(*v35.f32, *v37.f32), 0);
  *v29.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a5->i8, *a5->i8, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vpadd_f32(v36, v36));
  v38 = vmul_lane_f32(*v18.f32, *v37.f32, 1);
  v39 = vmul_laneq_f32(*v20.f32, v37, 2);
  *v18.f32 = vmul_n_f32(*v18.f32, v37.f32[0]);
  v40 = vmul_n_f32(*v20.f32, v37.f32[0]);
  *v32.f32 = vmul_lane_f32(vdup_lane_s32(*v37.f32, 0), *v29.f32, 1);
  *v20.f32 = vmul_lane_f32(*v20.f32, *v37.f32, 1);
  *v37.f32 = vmul_lane_f32(vdup_lane_s32(*v37.f32, 1), *v29.f32, 1);
  *v29.f32 = vmul_lane_f32(*v33.f32, *v29.f32, 1);
  __asm { FMOV            V9.2S, #1.0 }

  *v35.f32 = vsub_f32(_D9, *v35.f32);
  *v46.i8 = vext_s8(vsub_f32(vsub_f32(_D9, v38), v39), vadd_f32(*v18.f32, *v29.f32), 4uLL);
  v46.i64[1] = vsub_f32(v40, *v37.f32).u32[0];
  *v18.f32 = vext_s8(vsub_f32(*v18.f32, *v29.f32), vsub_f32(*v35.f32, v39), 4uLL);
  v18.i64[1] = vadd_f32(*v20.f32, *v32.f32).u32[0];
  v280 = v46;
  v281 = v18;
  *v18.f32 = vext_s8(vadd_f32(v40, *v37.f32), vsub_f32(*v20.f32, *v32.f32), 4uLL);
  v18.i64[1] = vsub_f32(*v35.f32, v38).u32[0];
  *v35.f32 = a5[2];
  v35.i64[1] = a5[3].u32[0];
  v20.i64[0] = a4[1].i64[0];
  v20.i64[1] = a4[1].u32[2];
  v260 = v17;
  v255 = vsubq_f32(v35, v15);
  v47 = vsubq_f32(vsubq_f32(v20, v17), v255);
  v48 = v16;
  v48.i32[3] = 0;
  v257 = v21;
  v258 = *v16.f32;
  v49 = vmulq_n_f32(v47, v21);
  v49.i32[3] = 0;
  v282 = v18;
  v283 = v30;
  v254 = vextq_s8(v48, v48, 8uLL).u64[0];
  v253 = vext_s8(*v16.f32, v254, 4uLL);
  *v20.f32 = vmls_f32(vmul_f32(*v16.f32, *&vextq_s8(v47, v47, 4uLL)), v253, *v47.f32);
  *v18.f32 = vext_s8(*v20.f32, vmls_f32(vmul_f32(v254, *v47.f32), *v16.f32, *&vextq_s8(v47, v47, 8uLL)), 4uLL);
  v18.i64[1] = v20.u32[0];
  v50 = vmlsq_laneq_f32(v49, v18, v16, 3);
  v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
  v51 = vmulq_f32(v48, v47);
  v51.i64[0] = vpaddq_f32(v51, v51).u64[0];
  v256 = v48;
  v52 = vmlaq_n_f32(v50, v48, vpadd_f32(*v51.f32, *v51.f32).f32[0]);
  v264 = vaddq_f32(v52, v52);
  v274.i64[1] = a11;
  v275 = &v280;
  v279 = v30;
  v53 = vzip1q_s32(v46, v282);
  v54 = vzip1q_s32(v281, 0);
  v276 = vzip1q_s32(v53, v54);
  v277 = vzip2q_s32(v53, v54);
  v278 = vzip1q_s32(vzip2q_s32(v46, v282), vzip2q_s32(v281, 0));
  v274.i64[0] = &unk_1F5D21D08;
  v285 = 1;
  v55 = vmulq_f32(v30, v30);
  v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
  v56 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v55.f32, *v55.f32), 0x3400000034000000), 0)), 0x1FuLL)), v30, xmmword_1E3047670);
  v57 = vmulq_f32(v56, v56);
  v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
  v58 = vpadd_f32(*v57.f32, *v57.f32);
  v59 = vrsqrte_f32(v58);
  do
  {
    v59 = vmul_f32(v59, vrsqrts_f32(vmul_f32(v59, v59), v58));
    --v11;
  }

  while (v11);
  v60 = v264;
  v60.i32[3] = 0;
  v265 = v60;
  v61 = vbsl_s8(vdup_lane_s32(vceqz_f32(v58), 0), v58, vmul_f32(v58, v59));
  v62 = vrecpe_f32(v61);
  v63 = 4;
  do
  {
    v62 = vmul_f32(v62, vrecps_f32(v61, v62));
    --v63;
  }

  while (v63);
  *&a2 = *v13.i32 + *&a2;
  v64 = vmlaq_f32(0, 0, v60);
  v65 = vdup_lane_s32(*&a2, 0);
  v64.i64[1] = vextq_s8(v64, v64, 8uLL).u32[0];
  v268 = v64;
  v66 = vmulq_n_f32(v56, v62.f32[0]);
  v66.i32[3] = 0;
  v271 = v66;
  v67 = vnegq_f32(v66);
  v67.i32[3] = 0;
  v297 = v67;
  *v68.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(&v274, &v297);
  v69 = v68;
  v70 = vmulq_f32(v271, v294);
  v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
  v71 = vmulq_f32(v271, v295);
  v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
  v72 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v70.f32, *v70.f32), vpadd_f32(*v71.f32, *v71.f32)), 0)), v294, v295);
  v73 = vsubq_f32(v68, v72);
  v297 = v73;
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  v303 = v69;
  v304 = 0u;
  memset(v305, 0, sizeof(v305));
  v74 = vnegq_f32(v73);
  v74.i32[3] = 0;
  v75 = vadd_f32(v65, 0);
  v76 = vmul_f32(v75, v75);
  v77 = vmulq_f32(v74, v74);
  v78 = vpaddq_f32(v77, v77);
  v79 = vpadd_f32(*v78.f32, *v78.f32);
  *v78.f32 = vcgtz_f32(v79);
  v80 = vdupq_lane_s32(*v78.f32, 0);
  v307 = v72;
  v308 = 0u;
  memset(v309, 0, sizeof(v309));
  v78.i32[0] = -1;
  v252 = v78;
  v81 = vneg_f32(0x80000000800000);
  v82 = v73;
  v83.i64[0] = -1;
  v83.i64[1] = -1;
  v263 = v74;
  v84 = v74;
  v266 = 0;
  while (1)
  {
    v85 = v73;
    v86.i64[0] = -1;
    v86.i64[1] = -1;
    *v86.i8 = vmovn_s32(vceqq_s32(v80, v86));
    v87 = vuzp1_s8(*v86.i8, *v86.i8).u32[0];
    if (v87 != -1)
    {
      break;
    }

    v88 = vmulq_f32(v84, v84);
    v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
    v89 = vpadd_f32(*v88.f32, *v88.f32);
    v90 = vrsqrte_f32(v89);
    v91 = 4;
    do
    {
      v90 = vmul_f32(v90, vrsqrts_f32(vmul_f32(v90, v90), v89));
      --v91;
    }

    while (v91);
    v269 = v85;
    v92 = vbsl_s8(vdup_lane_s32(vceqz_f32(v89), 0), v89, vmul_f32(v89, v90));
    v93 = vrecpe_f32(v92);
    v94 = 4;
    do
    {
      v93 = vmul_f32(v93, vrecps_f32(v92, v93));
      --v94;
    }

    while (v94);
    v267 = v84;
    v95 = vmulq_n_f32(v84, v93.f32[0]);
    v95.i32[3] = 0;
    v284 = v95;
    v96 = vnegq_f32(v95);
    v96.i32[3] = 0;
    v272 = v96;
    *v97.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(&v274, &v284);
    v98 = v97;
    v99 = vmulq_f32(v272, v294);
    v99.i64[0] = vpaddq_f32(v99, v99).u64[0];
    v100 = vmulq_f32(v272, v295);
    v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
    v101 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v99.f32, *v99.f32), vpadd_f32(*v100.f32, *v100.f32)), 0)), v294, v295);
    v102 = vaddq_f32(v268, v101);
    v73 = vsubq_f32(v97, v102);
    v103 = vnegq_f32(v73);
    v103.i32[3] = 0;
    v104 = vmulq_f32(v284, v103);
    v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
    v105 = vsub_f32(vpadd_f32(*v104.f32, *v104.f32), v75);
    if (v105.f32[0] > 0.0)
    {
      v106 = vmulq_f32(v265, v284);
      v106.i64[0] = vpaddq_f32(v106, v106).u64[0];
      v107 = vpadd_f32(*v106.f32, *v106.f32);
      if (v107.f32[0] >= 0.0)
      {
        goto LABEL_69;
      }

      v108 = vrecpe_f32(v107);
      v109 = 4;
      do
      {
        v108 = vmul_f32(v108, vrecps_f32(v107, v108));
        --v109;
      }

      while (v109);
      v110 = vsub_f32(v266, vmul_f32(v105, v108));
      if (vcgt_f32(v110, v266).u8[0])
      {
        if (v110.f32[0] > 1.0)
        {
LABEL_69:
          v205 = 0;
          v208 = 0uLL;
          v211 = 0uLL;
          goto LABEL_75;
        }

        v111 = vmlaq_n_f32(0, v265, v110.f32[0]);
        v111.i64[1] = vextq_s8(v111, v111, 8uLL).u32[0];
        v112 = vsubq_f32(v111, v268);
        v307 = vaddq_f32(v112, v307);
        v308 = vaddq_f32(v112, v308);
        v309[0] = vaddq_f32(v112, v309[0]);
        v297 = vsubq_f32(v303, v307);
        v298 = vsubq_f32(v304, v308);
        v299 = vsubq_f32(v305[0], v309[0]);
        v102 = vaddq_f32(v101, v111);
        v73 = vsubq_f32(v98, v102);
        v79 = v81;
        v263 = v267;
        v268 = v111;
      }

      v266 = v110;
    }

    v113 = v285;
    *(&v303 + v285) = v98;
    *(&v307 + v113) = v102;
    v285 = v113 + 1;
    *(&v297 + v113) = v73;
    if (v113 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v297, &v303, &v307, &v285);
LABEL_36:
      v82 = v269;
      goto LABEL_60;
    }

    if (v113 == 2)
    {
      v73 = v297;
      v122 = vsubq_f32(v298, v297);
      v123 = vsubq_f32(v299, v297);
      v125 = vmls_f32(vmul_f32(*v122.f32, *&vextq_s8(v123, v123, 4uLL)), *&vextq_s8(v122, v122, 4uLL), *v123.f32);
      *v124.f32 = vext_s8(v125, vmls_f32(vmul_f32(*&vextq_s8(v122, v122, 8uLL), *v123.f32), *v122.f32, *&vextq_s8(v123, v123, 8uLL)), 4uLL);
      v125.i32[1] = 0;
      v285 = 3;
      v126 = vpadd_f32(vmul_f32(*v124.f32, *v124.f32), vmul_f32(v125.u32[0], v125.u32[0]));
      v127 = vpadd_f32(v126, v126);
      if (v127.f32[0] <= 0.00000011921)
      {
        v285 = 2;
        v164 = vmulq_f32(v122, v122);
        v164.i64[0] = vpaddq_f32(v164, v164).u64[0];
        v165 = vpadd_f32(*v164.f32, *v164.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v165), 0), *v297.f32).u32[0] == -1)
        {
          v285 = 1;
          goto LABEL_36;
        }

        v166 = vnegq_f32(v297);
        v166.i32[3] = 0;
        v167 = vmulq_f32(v166, v122);
        v167.i64[0] = vpaddq_f32(v167, v167).u64[0];
        v168 = vpadd_f32(*v167.f32, *v167.f32);
        v169 = vrecpe_f32(v165);
        v170 = 4;
        v82 = v269;
        do
        {
          v169 = vmul_f32(v169, vrecps_f32(v165, v169));
          --v170;
        }

        while (v170);
        v73 = vmlaq_n_f32(v297, v122, vmax_f32(vmin_f32(vmul_f32(v168, v169), _D9), 0).f32[0]);
        goto LABEL_41;
      }

      *&v124.u32[2] = v125;
      v128 = vextq_s8(v298, v298, 8uLL).u64[0];
      v129 = vextq_s8(v299, v299, 8uLL).u64[0];
      v130 = vextq_s8(v299, v299, 4uLL).u64[0];
      v131 = vextq_s8(v298, v298, 4uLL).u64[0];
      v132 = vmls_f32(vmul_f32(*v298.f32, v130), v131, *v299.f32);
      *v133.f32 = vext_s8(v132, vmls_f32(vmul_f32(v128, *v299.f32), *v298.f32, v129), 4uLL);
      v133.i64[1] = v132.u32[0];
      v134 = vextq_s8(v297, v297, 8uLL).u64[0];
      v135 = vextq_s8(v297, v297, 4uLL).u64[0];
      v136 = vmls_f32(vmul_f32(v135, *v299.f32), v130, *v297.f32);
      *v137.f32 = vext_s8(v136, vmls_f32(vmul_f32(*v297.f32, v129), *v299.f32, v134), 4uLL);
      v137.i64[1] = v136.u32[0];
      v138 = vmls_f32(vmul_f32(*v297.f32, v131), v135, *v298.f32);
      *v139.f32 = vext_s8(v138, vmls_f32(vmul_f32(v134, *v298.f32), *v297.f32, v128), 4uLL);
      v139.i64[1] = v138.u32[0];
      v140 = vmulq_f32(v133, v124);
      v140.i64[0] = vpaddq_f32(v140, v140).u64[0];
      v141 = vpadd_f32(*v140.f32, *v140.f32);
      v142 = vmulq_f32(v137, v124);
      v142.i64[0] = vpaddq_f32(v142, v142).u64[0];
      v143 = vpadd_f32(*v142.f32, *v142.f32);
      v144 = vmulq_f32(v139, v124);
      v144.i64[0] = vpaddq_f32(v144, v144).u64[0];
      v145 = vpadd_f32(*v144.f32, *v144.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v143), vcgez_f32(v141)), vcgez_f32(v145)), 0), *v297.f32).u32[0] == -1)
      {
        v171 = vrecpe_f32(v127);
        v172 = 4;
        do
        {
          v171 = vmul_f32(v171, vrecps_f32(v127, v171));
          --v172;
        }

        while (v172);
        v173 = vmulq_f32(v297, v124);
        v173.i64[0] = vpaddq_f32(v173, v173).u64[0];
        v73 = vmulq_n_f32(v124, vmul_f32(v171, vpadd_f32(*v173.f32, *v173.f32)).f32[0]);
        v73.i32[3] = 0;
        goto LABEL_36;
      }

      v146 = vnegq_f32(v297);
      v146.i32[3] = 0;
      v147 = vnegq_f32(v298);
      v147.i32[3] = 0;
      v148 = vmulq_f32(v146, v122);
      v148.i64[0] = vpaddq_f32(v148, v148).u64[0];
      v149 = vpadd_f32(*v148.f32, *v148.f32);
      v150 = vmulq_f32(v122, v147);
      v150.i64[0] = vpaddq_f32(v150, v150).u64[0];
      v151 = vpadd_f32(*v150.f32, *v150.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v145), vand_s8(vclez_f32(v151), vcgez_f32(v149))), 0), *v297.f32).u32[0] == -1)
      {
        v174 = vsub_f32(v149, v151);
        v175 = vrecpe_f32(v174);
        v176 = 4;
        v82 = v269;
        do
        {
          v175 = vmul_f32(v175, vrecps_f32(v174, v175));
          --v176;
        }

        while (v176);
        v163 = 0;
        v73 = vmlaq_n_f32(v297, v122, vmul_f32(v149, vbsl_s8(vcgt_f32(vabs_f32(v174), 0x3400000034000000), v175, 0)).f32[0]);
        v73.i64[1] = vextq_s8(v73, v73, 8uLL).u32[0];
        v162 = 2;
        v177 = &v308;
        v178 = &v304;
        v179 = &v298;
      }

      else
      {
        v152 = vnegq_f32(v299);
        v152.i32[3] = 0;
        v153 = vmulq_f32(v147, v123);
        v153.i64[0] = vpaddq_f32(v153, v153).u64[0];
        v154 = vpadd_f32(*v153.f32, *v153.f32);
        v155 = vmulq_f32(v122, v152);
        v155.i64[0] = vpaddq_f32(v155, v155).u64[0];
        v156 = vpadd_f32(*v155.f32, *v155.f32);
        v157 = vmulq_f32(v123, v152);
        v157.i64[0] = vpaddq_f32(v157, v157).u64[0];
        v158 = vpadd_f32(*v157.f32, *v157.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v154, v151), vcge_f32(v156, v158)), vclez_f32(v141)), 0), *v297.f32).u32[0] == -1)
        {
          v180 = vsub_f32(v154, v151);
          v181 = vadd_f32(v180, vsub_f32(v156, v158));
          v182 = vrecpe_f32(v181);
          v183 = 4;
          do
          {
            v182 = vmul_f32(v182, vrecps_f32(v181, v182));
            --v183;
          }

          while (v183);
          v184 = vmlaq_n_f32(v298, vsubq_f32(v299, v298), vmul_f32(v180, vbsl_s8(vcgt_f32(vabs_f32(v181), 0x3400000034000000), v182, 0)).f32[0]);
          v162 = 2;
          v178 = v305;
          v177 = v309;
          v184.i64[1] = vextq_s8(v184, v184, 8uLL).u32[0];
          v179 = &v299;
          v163 = 1;
          v73 = v184;
        }

        else
        {
          v159 = vmulq_f32(v146, v123);
          v159.i64[0] = vpaddq_f32(v159, v159).u64[0];
          v160 = vpadd_f32(*v159.f32, *v159.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v143), vand_s8(vclez_f32(v158), vcgez_f32(v160))), 0), *v297.f32).u32[0] == -1)
          {
            v185 = vsub_f32(v160, v158);
            v186 = vrecpe_f32(v185);
            v187 = 4;
            do
            {
              v186 = vmul_f32(v186, vrecps_f32(v185, v186));
              --v187;
            }

            while (v187);
            v163 = 0;
            v73 = vmlaq_n_f32(v297, v123, vmul_f32(v160, vbsl_s8(vcgt_f32(vabs_f32(v185), 0x3400000034000000), v186, 0)).f32[0]);
            v73.i64[1] = vextq_s8(v73, v73, 8uLL).u32[0];
            v162 = 2;
            v178 = v305;
            v177 = v309;
            v179 = &v299;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v160), vclez_f32(v149)), 0), *v297.f32).u32[0] == -1)
            {
              v163 = 0;
              v162 = 1;
            }

            else
            {
              *v73.f32 = vdup_lane_s16(vand_s8(vcge_f32(v151, v154), vcgez_f32(v151)), 0);
              *v73.f32 = vuzp1_s8(*v73.f32, *v73.f32);
              v161 = v73.i32[0];
              v162 = 1;
              v73 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v73, v252), 0), v298, v299);
              if (v161 == -1)
              {
                v163 = 1;
              }

              else
              {
                v163 = 2;
              }
            }

            v177 = &v308;
            v178 = &v304;
            v179 = &v298;
          }
        }

        v82 = v269;
      }

      v188 = *(&v303 + v163);
      v189 = *v179;
      v190 = *v178;
      v191 = *(&v307 + v163);
      v192 = *v177;
      v297 = *(&v297 + v163);
      v298 = v189;
      v303 = v188;
      v304 = v190;
      v307 = v191;
      v308 = v192;
      v285 = v162;
    }

    else
    {
      v82 = v269;
      if (v113 != 1)
      {
        goto LABEL_60;
      }

      v73 = v297;
      v114 = vsubq_f32(v298, v297);
      v115 = vmulq_f32(v114, v114);
      v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
      v116 = vpadd_f32(*v115.f32, *v115.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v116), 0), *v297.f32).u32[0] != -1)
      {
        v117 = vnegq_f32(v297);
        v117.i32[3] = 0;
        v118 = vmulq_f32(v117, v114);
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
        v73 = vmlaq_n_f32(v297, v114, vmax_f32(vmin_f32(vmul_f32(v119, v120), _D9), 0).f32[0]);
LABEL_41:
        v73.i64[1] = vextq_s8(v73, v73, 8uLL).u32[0];
        goto LABEL_60;
      }

      v285 = 1;
    }

LABEL_60:
    v84 = vnegq_f32(v73);
    v84.i32[3] = 0;
    v193 = vmulq_f32(v73, v73);
    v193.i64[0] = vpaddq_f32(v193, v193).u64[0];
    v194 = vpadd_f32(*v193.f32, *v193.f32);
    v195 = vcgt_f32(v79, v194);
    v83 = vdupq_lane_s32(vand_s8(v195, 0x100000001), 0);
    v80 = vdupq_lane_s32(vand_s8(vcgt_f32(v194, v76), v195), 0);
    v79 = v194;
  }

  v196 = v274.i64[1];
  v197 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v79, 0), 0), v83), 0x1FuLL)), v84, v263);
  v198 = vmulq_f32(v197, v197);
  v198.i64[0] = vpaddq_f32(v198, v198).u64[0];
  v199 = vpadd_f32(*v198.f32, *v198.f32);
  v200 = vrsqrte_f32(v199);
  v201 = 4;
  do
  {
    v200 = vmul_f32(v200, vrsqrts_f32(vmul_f32(v200, v200), v199));
    --v201;
  }

  while (v201);
  v202 = vbsl_s8(vdup_lane_s32(vceqz_f32(v199), 0), v199, vmul_f32(v199, v200));
  v203 = vrecpe_f32(v202);
  v204 = 4;
  v205 = v266;
  do
  {
    v203 = vmul_f32(v203, vrecps_f32(v202, v203));
    --v204;
  }

  while (v204);
  v206 = vdupq_n_s32(-*(v274.i64[1] + 32));
  v207 = vmulq_n_f32(v197, v203.f32[0]);
  v207.i32[3] = 0;
  v208 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v202), 0), v207));
  v208.i32[3] = 0;
  v209 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v83, 0x1FuLL)), v85, v82);
  v284 = v209;
  if (v285 == 3)
  {
    v287 = 0;
    v286 = 0;
    v270 = v206;
    v273 = v208;
    physx::Gu::barycentricCoordinates(&v284, &v297, &v298, &v299, &v287, &v286);
    v206 = v270;
    v208 = v273;
    v205 = v266;
    v83.i32[1] = v303.i32[1];
    v220 = vmulq_n_f32(vsubq_f32(v304, v303), v287.f32[0]);
    v220.i32[3] = 0;
    v221 = vmulq_n_f32(vsubq_f32(v305[0], v303), v286.f32[0]);
    v221.i32[3] = 0;
    v210 = vaddq_f32(v303, vaddq_f32(v220, v221));
  }

  else if (v285 == 2)
  {
    v212 = vsubq_f32(v297, v209);
    v213 = vsubq_f32(vsubq_f32(v298, v209), v212);
    v214 = vmulq_f32(v213, v213);
    v214.i64[0] = vpaddq_f32(v214, v214).u64[0];
    v215 = vpadd_f32(*v214.f32, *v214.f32);
    v216 = vrecpe_f32(v215);
    v217 = 4;
    do
    {
      v216 = vmul_f32(v216, vrecps_f32(v215, v216));
      --v217;
    }

    while (v217);
    v218 = vnegq_f32(v212);
    v218.i32[3] = 0;
    v219 = vmulq_f32(v218, v213);
    v219.i64[0] = vpaddq_f32(v219, v219).u64[0];
    v210 = vmlaq_n_f32(v303, vsubq_f32(v304, v303), vmul_f32(vbsl_s8(vcgtz_f32(v215), v216, 0), vpadd_f32(*v219.f32, *v219.f32)).f32[0]);
    v83.i32[1] = 0;
    v210.i64[1] = vextq_s8(v210, v210, 8uLL).u32[0];
  }

  else
  {
    v210 = 0uLL;
    if (v285 == 1)
    {
      v210 = v303;
    }
  }

  v83.i32[0] = *(v196 + 16);
  v222 = vmlsq_lane_f32(v210, v208, *v83.i8, 0);
  v222.i64[1] = vextq_s8(v222, v222, 8uLL).u32[0];
  v211 = vbslq_s8(v206, v222, v210);
LABEL_75:
  if (v87 == -1)
  {
    v205.i32[0] = 2139095039;
  }

  else
  {
    if (v205.f32[0] == 0.0)
    {
      v211.f32[0] = (*(v274.i64[1] + 16) + v289) * 100.0;
      v286.i8[0] = 0;
      v306 = 0;
      v303 = 0u;
      v304 = 0u;
      v305[0] = 0u;
      v297.i64[1] = v274.i64[1];
      v297.i64[0] = &unk_1F5D21D08;
      v298.i64[0] = v275;
      v224 = v275[2];
      v223 = v275[3];
      v225 = v275[1];
      v299 = *v275;
      v302 = v223;
      v226 = vzip1q_s32(v299, v224);
      v227 = vzip2q_s32(v299, v224);
      v228 = vzip1q_s32(v225, 0);
      v299 = vzip1q_s32(v226, v228);
      v300 = vzip2q_s32(v226, v228);
      v301 = vzip1q_s32(v227, vzip2q_s32(v225, 0));
      v307.i64[0] = &unk_1F5D217B8;
      v307.i64[1] = v288;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::CapsuleV>>(&v297, &v307, &v284, &v287, &v286, &v303, v283, vdup_lane_s32(*v211.f32, 0), *v227.i64, v300) != 5)
      {
        goto LABEL_79;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(&v274) - 5 >= 2)
      {
        v230 = vnegq_f32(v265);
        v230.i32[3] = 0;
        v231 = vmulq_f32(v230, v230);
        v231.i64[0] = vpaddq_f32(v231, v231).u64[0];
        v232 = vpadd_f32(*v231.f32, *v231.f32);
        v233 = vrsqrte_f32(v232);
        v234 = 4;
        do
        {
          v233 = vmul_f32(v233, vrsqrts_f32(vmul_f32(v233, v233), v232));
          --v234;
        }

        while (v234);
        v235 = vbsl_s8(vdup_lane_s32(vceqz_f32(v232), 0), v232, vmul_f32(v232, v233));
        v236 = vrecpe_f32(v235);
        v237 = 4;
        do
        {
          v236 = vmul_f32(v236, vrecps_f32(v235, v236));
          --v237;
        }

        while (v237);
        v208 = vmulq_n_f32(v230, v236.f32[0]);
        v208.i32[3] = 0;
        v205 = 0;
        v211 = 0uLL;
      }

      else
      {
LABEL_79:
        v208 = v305[0];
        v211 = v303;
        v205 = vmin_f32(v306, 0);
      }
    }

    v238 = vmulq_n_f32(v211, v257);
    v238.i32[3] = 0;
    v239 = vmls_f32(vmul_f32(v258, *&vextq_s8(v211, v211, 4uLL)), v253, *v211.f32);
    *v240.f32 = vext_s8(v239, vmls_f32(vmul_f32(v254, *v211.f32), v258, *&vextq_s8(v211, v211, 8uLL)), 4uLL);
    v240.i64[1] = v239.u32[0];
    v241 = vmlaq_f32(v238, v259, v240);
    v241.i64[1] = vextq_s8(v241, v241, 8uLL).u32[0];
    v242 = vmulq_f32(v256, v211);
    v242.i64[0] = vpaddq_f32(v242, v242).u64[0];
    v243 = vmlaq_n_f32(v241, v256, vpadd_f32(*v242.f32, *v242.f32).f32[0]);
    v243.i64[1] = vextq_s8(v243, v243, 8uLL).u32[0];
    v240.i64[0] = 0x4000000040000000;
    v240.i64[1] = 0x4000000040000000;
    v244 = vmlaq_f32(v260, v240, v243);
    v244.i64[1] = vextq_s8(v244, v244, 8uLL).u32[0];
    v245 = vmlaq_n_f32(v244, v255, vmax_f32(v205, 0).f32[0]);
    v246 = vmulq_n_f32(v208, v257);
    v246.i32[3] = 0;
    *v240.f32 = vmls_f32(vmul_f32(v258, *&vextq_s8(v208, v208, 4uLL)), v253, *v208.f32);
    *v243.f32 = vext_s8(*v240.f32, vmls_f32(vmul_f32(v254, *v208.f32), v258, *&vextq_s8(v208, v208, 8uLL)), 4uLL);
    v243.i64[1] = v240.u32[0];
    v247 = vmlaq_f32(v246, v259, v243);
    v247.i64[1] = vextq_s8(v247, v247, 8uLL).u32[0];
    v248 = vmulq_f32(v256, v208);
    v248.i64[0] = vpaddq_f32(v248, v248).u64[0];
    v249 = vmlaq_n_f32(v247, v256, vpadd_f32(*v248.f32, *v248.f32).f32[0]);
    v250 = vaddq_f32(v249, v249);
    *a8 = v250.i64[0];
    *(a8 + 8) = v250.i32[2];
    *a9 = v245.i64[0];
    *(a9 + 8) = v245.i32[2];
  }

  return v205.f32[0];
}

float32_t physx::Gu::SweepGeomTriangles<physx::Gu::BoxV>(uint64_t a1, double a2, uint64_t a3, float32x4_t *a4, int8x8_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v311 = *MEMORY[0x1E69E9840];
  v279 = 3;
  v280 = 0;
  v11 = *(a1 + 4);
  v12 = v11;
  v12.i32[2] = *(a1 + 12);
  v13 = vdup_laneq_s32(v12, 2);
  v12.i32[3] = 0;
  v277[0] = 0;
  v277[1] = 0;
  v281 = v12;
  *v11.f32 = vpmin_f32(v13, *v11.f32);
  v11.f32[0] = vpmin_f32(*v11.f32, *v11.f32).f32[0];
  v277[2] = vmul_n_f32(0x3BA3D70A3C23D70ALL, v11.f32[0]);
  v278 = 0.05 * v11.f32[0];
  v12.i64[0] = *(a7 + 16);
  v12.i64[1] = *(a7 + 24);
  v14 = *a4;
  v15.i64[0] = *(a6 + 16);
  v15.i64[1] = *(a6 + 24);
  v16 = vnegq_f32(*a4);
  v17 = vsubq_f32(v12, v15);
  v18 = v16;
  v18.i32[3] = 0;
  v262 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v19) = vmla_f32(0xBF000000BF000000, *v262.f32, *v262.f32).u32[0];
  v20 = vmulq_n_f32(v17, v19);
  v20.i32[3] = 0;
  v21 = vextq_s8(v18, v18, 8uLL).u64[0];
  v22 = vext_s8(*v16.f32, v21, 4uLL);
  v23 = vmls_f32(vmul_f32(*v16.f32, *&vextq_s8(v17, v17, 4uLL)), v22, *v17.f32);
  *v24.f32 = vext_s8(v23, vmls_f32(vmul_f32(v21, *v17.f32), *v16.f32, *&vextq_s8(v17, v17, 8uLL)), 4uLL);
  v24.i64[1] = v23.u32[0];
  v25 = vmlaq_laneq_f32(v20, v24, *a4, 3);
  v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
  v26 = vmulq_f32(v18, v17);
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v27 = vmlaq_n_f32(v25, v18, vpadd_f32(*v26.f32, *v26.f32).f32[0]);
  v28 = vaddq_f32(v27, v27);
  v28.i32[3] = 0;
  v29 = *a5->i8;
  v29.i32[3] = 0;
  v30 = vmulq_f32(v29, v18);
  v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
  v31 = vmulq_laneq_f32(v29, *a4, 3);
  v29.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
  v32 = vmls_f32(vmul_f32(vext_s8(*a5, *v29.f32, 4uLL), *v16.f32), v22, *a5);
  *v33.f32 = vext_s8(v32, vmls_f32(vmul_f32(*a5, v21), *v16.f32, *v29.f32), 4uLL);
  *&v33.u32[2] = v32;
  v34 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v18, *a5->i8, 3), v31), v33);
  *v16.f32 = vdup_lane_s32(*v34.f32, 1);
  *v18.f32 = vdup_laneq_s32(v34, 2);
  v35 = vsub_f32(vmul_f32(*&vextq_s8(*a5->i8, *a5->i8, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vpadd_f32(*v30.f32, *v30.f32));
  v36 = vaddq_f32(v34, v34);
  *v31.f32 = vdup_laneq_s32(v36, 2);
  *v34.f32 = vdup_lane_s32(vmul_f32(*v34.f32, *v36.f32), 0);
  v37 = vmul_lane_f32(*v16.f32, *v36.f32, 1);
  v38 = vmul_laneq_f32(*v18.f32, v36, 2);
  *v16.f32 = vmul_n_f32(*v16.f32, v36.f32[0]);
  v39 = vmul_n_f32(*v18.f32, v36.f32[0]);
  v40 = vmul_lane_f32(vdup_lane_s32(*v36.f32, 0), v35, 1);
  *v18.f32 = vmul_lane_f32(*v18.f32, *v36.f32, 1);
  *v36.f32 = vmul_lane_f32(vdup_lane_s32(*v36.f32, 1), v35, 1);
  v41 = vmul_lane_f32(*v31.f32, v35, 1);
  __asm { FMOV            V9.2S, #1.0 }

  *v34.f32 = vsub_f32(_D9, *v34.f32);
  *v30.f32 = vext_s8(vsub_f32(vsub_f32(_D9, v37), v38), vadd_f32(*v16.f32, v41), 4uLL);
  v30.i64[1] = vsub_f32(v39, *v36.f32).u32[0];
  *v16.f32 = vext_s8(vsub_f32(*v16.f32, v41), vsub_f32(*v34.f32, v38), 4uLL);
  v16.i64[1] = vadd_f32(*v18.f32, v40).u32[0];
  v290 = v30;
  v291 = v16;
  *v16.f32 = vext_s8(vadd_f32(v39, *v36.f32), vsub_f32(*v18.f32, v40), 4uLL);
  v16.i64[1] = vsub_f32(*v34.f32, v37).u32[0];
  v292 = v16;
  v293 = v28;
  *v34.f32 = a5[2];
  v34.i64[1] = a5[3].u32[0];
  v16.i64[0] = a4[1].i64[0];
  v16.i64[1] = a4[1].u32[2];
  v263 = v15;
  v258 = vsubq_f32(v34, v12);
  v47 = vsubq_f32(vsubq_f32(v16, v15), v258);
  v48 = v14;
  v48.i32[3] = 0;
  v260 = v19;
  v261 = *v14.f32;
  v49 = vmulq_n_f32(v47, v19);
  v49.i32[3] = 0;
  v257 = vextq_s8(v48, v48, 8uLL).u64[0];
  v256 = vext_s8(*v14.f32, v257, 4uLL);
  *v18.f32 = vmls_f32(vmul_f32(*v14.f32, *&vextq_s8(v47, v47, 4uLL)), v256, *v47.f32);
  *v16.f32 = vext_s8(*v18.f32, vmls_f32(vmul_f32(v257, *v47.f32), *v14.f32, *&vextq_s8(v47, v47, 8uLL)), 4uLL);
  v16.i64[1] = v18.u32[0];
  v50 = vmlsq_laneq_f32(v49, v16, v14, 3);
  v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
  v51 = vmulq_f32(v48, v47);
  v51.i64[0] = vpaddq_f32(v51, v51).u64[0];
  v259 = v48;
  v52 = vmlaq_n_f32(v50, v48, vpadd_f32(*v51.f32, *v51.f32).f32[0]);
  v267 = vaddq_f32(v52, v52);
  v284.i64[1] = a11;
  v285 = &v290;
  v289 = v28;
  v53 = vzip1q_s32(v30, v292);
  v54 = vzip1q_s32(v291, 0);
  v286 = vzip1q_s32(v53, v54);
  v287 = vzip2q_s32(v53, v54);
  v288 = vzip1q_s32(vzip2q_s32(v30, v292), vzip2q_s32(v291, 0));
  v283 = v277;
  v284.i64[0] = &unk_1F5D21D08;
  v282 = &unk_1F5D21A80;
  v55 = vmulq_f32(v28, v28);
  v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
  v295 = 1;
  v56 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v55.f32, *v55.f32), 0x3400000034000000), 0)), 0x1FuLL)), v28, xmmword_1E3047670);
  v57 = vmulq_f32(v56, v56);
  v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
  v58 = vpadd_f32(*v57.f32, *v57.f32);
  v59 = vrsqrte_f32(v58);
  v60 = 4;
  do
  {
    v59 = vmul_f32(v59, vrsqrts_f32(vmul_f32(v59, v59), v58));
    --v60;
  }

  while (v60);
  v61 = v267;
  v61.i32[3] = 0;
  v268 = v61;
  v62 = vbsl_s8(vdup_lane_s32(vceqz_f32(v58), 0), v58, vmul_f32(v58, v59));
  v63 = vrecpe_f32(v62);
  v64 = 4;
  do
  {
    v63 = vmul_f32(v63, vrecps_f32(v62, v63));
    --v64;
  }

  while (v64);
  *&a2 = *&a2 + 0.0;
  v65 = vmlaq_f32(0, 0, v61);
  v66 = vdup_lane_s32(*&a2, 0);
  v65.i64[1] = vextq_s8(v65, v65, 8uLL).u32[0];
  v271 = v65;
  v67 = vmulq_n_f32(v56, v63.f32[0]);
  v67.i32[3] = 0;
  v274 = v67;
  v68 = vnegq_f32(v67);
  v68.i32[3] = 0;
  v298 = v68;
  *v69.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(&v284, &v298);
  v70 = v69;
  v71 = v283[3];
  v72 = vnegq_f32(v71);
  v72.i32[3] = 0;
  v73 = vbslq_s8(vcgtzq_f32(v274), v71, v72);
  v74 = vsubq_f32(v69, v73);
  v298 = v74;
  v299 = 0u;
  v300 = 0u;
  v301 = 0u;
  v304 = v70;
  v305 = 0u;
  memset(v306, 0, sizeof(v306));
  v75 = vnegq_f32(v74);
  v75.i32[3] = 0;
  v76 = &v283[1].f32[2];
  v308 = v73;
  v309 = 0u;
  memset(v310, 0, sizeof(v310));
  *v70.f32 = vld1_dup_f32(v76);
  v77 = vneg_f32(0x80000000800000);
  *v70.f32 = vmul_f32(vmin_f32(*v70.f32, v77), vdup_n_s32(0x3DCCCCCDu));
  v78 = vadd_f32(v66, *v70.f32);
  *v73.f32 = vmul_f32(*v70.f32, *v70.f32);
  v79 = vmul_f32(v78, v78);
  v80 = vmulq_f32(v75, v75);
  v81 = vpaddq_f32(v80, v80);
  v82 = vpadd_f32(*v81.f32, *v81.f32);
  v255 = *v73.f32;
  *v81.f32 = vcgt_f32(v82, *v73.f32);
  v83 = vdupq_lane_s32(*v81.f32, 0);
  v81.i32[0] = -1;
  v254 = v81;
  v84 = v74;
  v85.i64[0] = -1;
  v85.i64[1] = -1;
  v266 = v75;
  v86 = v75;
  v269 = 0;
  while (1)
  {
    v87 = v74;
    v88.i64[0] = -1;
    v88.i64[1] = -1;
    *v88.i8 = vmovn_s32(vceqq_s32(v83, v88));
    v89 = vuzp1_s8(*v88.i8, *v88.i8).u32[0];
    if (v89 != -1)
    {
      break;
    }

    v90 = vmulq_f32(v86, v86);
    v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
    v91 = vpadd_f32(*v90.f32, *v90.f32);
    v92 = vrsqrte_f32(v91);
    v93 = 4;
    do
    {
      v92 = vmul_f32(v92, vrsqrts_f32(vmul_f32(v92, v92), v91));
      --v93;
    }

    while (v93);
    v272 = v87;
    v94 = vbsl_s8(vdup_lane_s32(vceqz_f32(v91), 0), v91, vmul_f32(v91, v92));
    v95 = vrecpe_f32(v94);
    v96 = 4;
    do
    {
      v95 = vmul_f32(v95, vrecps_f32(v94, v95));
      --v96;
    }

    while (v96);
    v270 = v86;
    v97 = vmulq_n_f32(v86, v95.f32[0]);
    v97.i32[3] = 0;
    v294 = v97;
    v98 = vnegq_f32(v97);
    v98.i32[3] = 0;
    v275 = v98;
    *v99.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(&v284, &v294);
    v100 = v99;
    v101 = v283[3];
    v102 = vnegq_f32(v101);
    v102.i32[3] = 0;
    v103 = vbslq_s8(vcgtzq_f32(v275), v101, v102);
    v104 = vaddq_f32(v271, v103);
    v74 = vsubq_f32(v99, v104);
    v105 = vnegq_f32(v74);
    v105.i32[3] = 0;
    v106 = vmulq_f32(v294, v105);
    v106.i64[0] = vpaddq_f32(v106, v106).u64[0];
    v107 = vsub_f32(vpadd_f32(*v106.f32, *v106.f32), v78);
    if (v107.f32[0] > 0.0)
    {
      v108 = vmulq_f32(v268, v294);
      v108.i64[0] = vpaddq_f32(v108, v108).u64[0];
      v109 = vpadd_f32(*v108.f32, *v108.f32);
      if (v109.f32[0] >= 0.0)
      {
        goto LABEL_69;
      }

      v110 = vrecpe_f32(v109);
      v111 = 4;
      do
      {
        v110 = vmul_f32(v110, vrecps_f32(v109, v110));
        --v111;
      }

      while (v111);
      v112 = vsub_f32(v269, vmul_f32(v107, v110));
      if (vcgt_f32(v112, v269).u8[0])
      {
        if (v112.f32[0] > 1.0)
        {
LABEL_69:
          v207 = 0;
          v210 = 0uLL;
          v213 = 0uLL;
          goto LABEL_75;
        }

        v113 = vmlaq_n_f32(0, v268, v112.f32[0]);
        v113.i64[1] = vextq_s8(v113, v113, 8uLL).u32[0];
        v114 = vsubq_f32(v113, v271);
        v308 = vaddq_f32(v114, v308);
        v309 = vaddq_f32(v114, v309);
        v310[0] = vaddq_f32(v114, v310[0]);
        v298 = vsubq_f32(v304, v308);
        v299 = vsubq_f32(v305, v309);
        v300 = vsubq_f32(v306[0], v310[0]);
        v104 = vaddq_f32(v103, v113);
        v74 = vsubq_f32(v100, v104);
        v82 = v77;
        v266 = v270;
        v271 = v113;
      }

      v269 = v112;
    }

    v115 = v295;
    *(&v304 + v295) = v100;
    *(&v308 + v115) = v104;
    v295 = v115 + 1;
    *(&v298 + v115) = v74;
    if (v115 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v298, &v304, &v308, &v295);
LABEL_36:
      v84 = v272;
      goto LABEL_60;
    }

    if (v115 == 2)
    {
      v74 = v298;
      v124 = vsubq_f32(v299, v298);
      v125 = vsubq_f32(v300, v298);
      v127 = vmls_f32(vmul_f32(*v124.f32, *&vextq_s8(v125, v125, 4uLL)), *&vextq_s8(v124, v124, 4uLL), *v125.f32);
      *v126.f32 = vext_s8(v127, vmls_f32(vmul_f32(*&vextq_s8(v124, v124, 8uLL), *v125.f32), *v124.f32, *&vextq_s8(v125, v125, 8uLL)), 4uLL);
      v127.i32[1] = 0;
      v295 = 3;
      v128 = vpadd_f32(vmul_f32(*v126.f32, *v126.f32), vmul_f32(v127.u32[0], v127.u32[0]));
      v129 = vpadd_f32(v128, v128);
      if (v129.f32[0] <= 0.00000011921)
      {
        v295 = 2;
        v166 = vmulq_f32(v124, v124);
        v166.i64[0] = vpaddq_f32(v166, v166).u64[0];
        v167 = vpadd_f32(*v166.f32, *v166.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v167), 0), *v298.f32).u32[0] == -1)
        {
          v295 = 1;
          goto LABEL_36;
        }

        v168 = vnegq_f32(v298);
        v168.i32[3] = 0;
        v169 = vmulq_f32(v168, v124);
        v169.i64[0] = vpaddq_f32(v169, v169).u64[0];
        v170 = vpadd_f32(*v169.f32, *v169.f32);
        v171 = vrecpe_f32(v167);
        v172 = 4;
        v84 = v272;
        do
        {
          v171 = vmul_f32(v171, vrecps_f32(v167, v171));
          --v172;
        }

        while (v172);
        v74 = vmlaq_n_f32(v298, v124, vmax_f32(vmin_f32(vmul_f32(v170, v171), _D9), 0).f32[0]);
        goto LABEL_41;
      }

      *&v126.u32[2] = v127;
      v130 = vextq_s8(v299, v299, 8uLL).u64[0];
      v131 = vextq_s8(v300, v300, 8uLL).u64[0];
      v132 = vextq_s8(v300, v300, 4uLL).u64[0];
      v133 = vextq_s8(v299, v299, 4uLL).u64[0];
      v134 = vmls_f32(vmul_f32(*v299.f32, v132), v133, *v300.f32);
      *v135.f32 = vext_s8(v134, vmls_f32(vmul_f32(v130, *v300.f32), *v299.f32, v131), 4uLL);
      v135.i64[1] = v134.u32[0];
      v136 = vextq_s8(v298, v298, 8uLL).u64[0];
      v137 = vextq_s8(v298, v298, 4uLL).u64[0];
      v138 = vmls_f32(vmul_f32(v137, *v300.f32), v132, *v298.f32);
      *v139.f32 = vext_s8(v138, vmls_f32(vmul_f32(*v298.f32, v131), *v300.f32, v136), 4uLL);
      v139.i64[1] = v138.u32[0];
      v140 = vmls_f32(vmul_f32(*v298.f32, v133), v137, *v299.f32);
      *v141.f32 = vext_s8(v140, vmls_f32(vmul_f32(v136, *v299.f32), *v298.f32, v130), 4uLL);
      v141.i64[1] = v140.u32[0];
      v142 = vmulq_f32(v135, v126);
      v142.i64[0] = vpaddq_f32(v142, v142).u64[0];
      v143 = vpadd_f32(*v142.f32, *v142.f32);
      v144 = vmulq_f32(v139, v126);
      v144.i64[0] = vpaddq_f32(v144, v144).u64[0];
      v145 = vpadd_f32(*v144.f32, *v144.f32);
      v146 = vmulq_f32(v141, v126);
      v146.i64[0] = vpaddq_f32(v146, v146).u64[0];
      v147 = vpadd_f32(*v146.f32, *v146.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v145), vcgez_f32(v143)), vcgez_f32(v147)), 0), *v298.f32).u32[0] == -1)
      {
        v173 = vrecpe_f32(v129);
        v174 = 4;
        do
        {
          v173 = vmul_f32(v173, vrecps_f32(v129, v173));
          --v174;
        }

        while (v174);
        v175 = vmulq_f32(v298, v126);
        v175.i64[0] = vpaddq_f32(v175, v175).u64[0];
        v74 = vmulq_n_f32(v126, vmul_f32(v173, vpadd_f32(*v175.f32, *v175.f32)).f32[0]);
        v74.i32[3] = 0;
        goto LABEL_36;
      }

      v148 = vnegq_f32(v298);
      v148.i32[3] = 0;
      v149 = vnegq_f32(v299);
      v149.i32[3] = 0;
      v150 = vmulq_f32(v148, v124);
      v150.i64[0] = vpaddq_f32(v150, v150).u64[0];
      v151 = vpadd_f32(*v150.f32, *v150.f32);
      v152 = vmulq_f32(v124, v149);
      v152.i64[0] = vpaddq_f32(v152, v152).u64[0];
      v153 = vpadd_f32(*v152.f32, *v152.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v147), vand_s8(vclez_f32(v153), vcgez_f32(v151))), 0), *v298.f32).u32[0] == -1)
      {
        v176 = vsub_f32(v151, v153);
        v177 = vrecpe_f32(v176);
        v178 = 4;
        v84 = v272;
        do
        {
          v177 = vmul_f32(v177, vrecps_f32(v176, v177));
          --v178;
        }

        while (v178);
        v165 = 0;
        v74 = vmlaq_n_f32(v298, v124, vmul_f32(v151, vbsl_s8(vcgt_f32(vabs_f32(v176), 0x3400000034000000), v177, 0)).f32[0]);
        v74.i64[1] = vextq_s8(v74, v74, 8uLL).u32[0];
        v164 = 2;
        v179 = &v309;
        v180 = &v305;
        v181 = &v299;
      }

      else
      {
        v154 = vnegq_f32(v300);
        v154.i32[3] = 0;
        v155 = vmulq_f32(v149, v125);
        v155.i64[0] = vpaddq_f32(v155, v155).u64[0];
        v156 = vpadd_f32(*v155.f32, *v155.f32);
        v157 = vmulq_f32(v124, v154);
        v157.i64[0] = vpaddq_f32(v157, v157).u64[0];
        v158 = vpadd_f32(*v157.f32, *v157.f32);
        v159 = vmulq_f32(v125, v154);
        v159.i64[0] = vpaddq_f32(v159, v159).u64[0];
        v160 = vpadd_f32(*v159.f32, *v159.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v156, v153), vcge_f32(v158, v160)), vclez_f32(v143)), 0), *v298.f32).u32[0] == -1)
        {
          v182 = vsub_f32(v156, v153);
          v183 = vadd_f32(v182, vsub_f32(v158, v160));
          v184 = vrecpe_f32(v183);
          v185 = 4;
          do
          {
            v184 = vmul_f32(v184, vrecps_f32(v183, v184));
            --v185;
          }

          while (v185);
          v186 = vmlaq_n_f32(v299, vsubq_f32(v300, v299), vmul_f32(v182, vbsl_s8(vcgt_f32(vabs_f32(v183), 0x3400000034000000), v184, 0)).f32[0]);
          v164 = 2;
          v180 = v306;
          v179 = v310;
          v186.i64[1] = vextq_s8(v186, v186, 8uLL).u32[0];
          v181 = &v300;
          v165 = 1;
          v74 = v186;
        }

        else
        {
          v161 = vmulq_f32(v148, v125);
          v161.i64[0] = vpaddq_f32(v161, v161).u64[0];
          v162 = vpadd_f32(*v161.f32, *v161.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v145), vand_s8(vclez_f32(v160), vcgez_f32(v162))), 0), *v298.f32).u32[0] == -1)
          {
            v187 = vsub_f32(v162, v160);
            v188 = vrecpe_f32(v187);
            v189 = 4;
            do
            {
              v188 = vmul_f32(v188, vrecps_f32(v187, v188));
              --v189;
            }

            while (v189);
            v165 = 0;
            v74 = vmlaq_n_f32(v298, v125, vmul_f32(v162, vbsl_s8(vcgt_f32(vabs_f32(v187), 0x3400000034000000), v188, 0)).f32[0]);
            v74.i64[1] = vextq_s8(v74, v74, 8uLL).u32[0];
            v164 = 2;
            v180 = v306;
            v179 = v310;
            v181 = &v300;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v162), vclez_f32(v151)), 0), *v298.f32).u32[0] == -1)
            {
              v165 = 0;
              v164 = 1;
            }

            else
            {
              *v74.f32 = vdup_lane_s16(vand_s8(vcge_f32(v153, v156), vcgez_f32(v153)), 0);
              *v74.f32 = vuzp1_s8(*v74.f32, *v74.f32);
              v163 = v74.i32[0];
              v164 = 1;
              v74 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v74, v254), 0), v299, v300);
              if (v163 == -1)
              {
                v165 = 1;
              }

              else
              {
                v165 = 2;
              }
            }

            v179 = &v309;
            v180 = &v305;
            v181 = &v299;
          }
        }

        v84 = v272;
      }

      v190 = *(&v304 + v165);
      v191 = *v181;
      v192 = *v180;
      v193 = *(&v308 + v165);
      v194 = *v179;
      v298 = *(&v298 + v165);
      v299 = v191;
      v304 = v190;
      v305 = v192;
      v308 = v193;
      v309 = v194;
      v295 = v164;
    }

    else
    {
      v84 = v272;
      if (v115 != 1)
      {
        goto LABEL_60;
      }

      v74 = v298;
      v116 = vsubq_f32(v299, v298);
      v117 = vmulq_f32(v116, v116);
      v117.i64[0] = vpaddq_f32(v117, v117).u64[0];
      v118 = vpadd_f32(*v117.f32, *v117.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v118), 0), *v298.f32).u32[0] != -1)
      {
        v119 = vnegq_f32(v298);
        v119.i32[3] = 0;
        v120 = vmulq_f32(v119, v116);
        v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
        v121 = vpadd_f32(*v120.f32, *v120.f32);
        v122 = vrecpe_f32(v118);
        v123 = 4;
        do
        {
          v122 = vmul_f32(v122, vrecps_f32(v118, v122));
          --v123;
        }

        while (v123);
        v74 = vmlaq_n_f32(v298, v116, vmax_f32(vmin_f32(vmul_f32(v121, v122), _D9), 0).f32[0]);
LABEL_41:
        v74.i64[1] = vextq_s8(v74, v74, 8uLL).u32[0];
        goto LABEL_60;
      }

      v295 = 1;
    }

LABEL_60:
    v86 = vnegq_f32(v74);
    v86.i32[3] = 0;
    v195 = vmulq_f32(v74, v74);
    v195.i64[0] = vpaddq_f32(v195, v195).u64[0];
    v196 = vpadd_f32(*v195.f32, *v195.f32);
    v197 = vcgt_f32(v82, v196);
    v85 = vdupq_lane_s32(vand_s8(v197, 0x100000001), 0);
    v83 = vdupq_lane_s32(vand_s8(vcgt_f32(v196, v79), v197), 0);
    v82 = v196;
  }

  v198 = v284.i64[1];
  v199 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v82, v255), 0), v85), 0x1FuLL)), v86, v266);
  v200 = vmulq_f32(v199, v199);
  v200.i64[0] = vpaddq_f32(v200, v200).u64[0];
  v201 = vpadd_f32(*v200.f32, *v200.f32);
  v202 = vrsqrte_f32(v201);
  v203 = 4;
  do
  {
    v202 = vmul_f32(v202, vrsqrts_f32(vmul_f32(v202, v202), v201));
    --v203;
  }

  while (v203);
  v204 = vbsl_s8(vdup_lane_s32(vceqz_f32(v201), 0), v201, vmul_f32(v201, v202));
  v205 = vrecpe_f32(v204);
  v206 = 4;
  v207 = v269;
  do
  {
    v205 = vmul_f32(v205, vrecps_f32(v204, v205));
    --v206;
  }

  while (v206);
  v208 = vdupq_n_s32(-*(v284.i64[1] + 32));
  v209 = vmulq_n_f32(v199, v205.f32[0]);
  v209.i32[3] = 0;
  v210 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v204), 0), v209));
  v210.i32[3] = 0;
  v211 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v85, 0x1FuLL)), v87, v84);
  v294 = v211;
  if (v295 == 3)
  {
    v297 = 0;
    v296 = 0;
    v273 = v208;
    v276 = v210;
    physx::Gu::barycentricCoordinates(&v294, &v298, &v299, &v300, &v297, &v296);
    v208 = v273;
    v210 = v276;
    v207 = v269;
    v85.i32[1] = v304.i32[1];
    v222 = vmulq_n_f32(vsubq_f32(v305, v304), v297.f32[0]);
    v222.i32[3] = 0;
    v223 = vmulq_n_f32(vsubq_f32(v306[0], v304), v296.f32[0]);
    v223.i32[3] = 0;
    v212 = vaddq_f32(v304, vaddq_f32(v222, v223));
  }

  else if (v295 == 2)
  {
    v214 = vsubq_f32(v298, v211);
    v215 = vsubq_f32(vsubq_f32(v299, v211), v214);
    v216 = vmulq_f32(v215, v215);
    v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
    v217 = vpadd_f32(*v216.f32, *v216.f32);
    v218 = vrecpe_f32(v217);
    v219 = 4;
    do
    {
      v218 = vmul_f32(v218, vrecps_f32(v217, v218));
      --v219;
    }

    while (v219);
    v220 = vnegq_f32(v214);
    v220.i32[3] = 0;
    v221 = vmulq_f32(v220, v215);
    v221.i64[0] = vpaddq_f32(v221, v221).u64[0];
    v212 = vmlaq_n_f32(v304, vsubq_f32(v305, v304), vmul_f32(vbsl_s8(vcgtz_f32(v217), v218, 0), vpadd_f32(*v221.f32, *v221.f32)).f32[0]);
    v85.i32[1] = 0;
    v212.i64[1] = vextq_s8(v212, v212, 8uLL).u32[0];
  }

  else
  {
    v212 = 0uLL;
    if (v295 == 1)
    {
      v212 = v304;
    }
  }

  v85.i32[0] = *(v198 + 16);
  v224 = vmlsq_lane_f32(v212, v210, *v85.i8, 0);
  v224.i64[1] = vextq_s8(v224, v224, 8uLL).u32[0];
  v213 = vbslq_s8(v208, v224, v212);
LABEL_75:
  if (v89 == -1)
  {
    v207.i32[0] = 2139095039;
  }

  else
  {
    if (v207.f32[0] == 0.0)
    {
      v213.f32[0] = (*(v284.i64[1] + 16) + v283[1].f32[0]) * 100.0;
      v296.i8[0] = 0;
      v307 = 0;
      v304 = 0u;
      v305 = 0u;
      v306[0] = 0u;
      v298.i64[1] = v284.i64[1];
      v298.i64[0] = &unk_1F5D21D08;
      v299.i64[0] = v285;
      v226 = v285[2];
      v225 = v285[3];
      v227 = v285[1];
      v300 = *v285;
      v303 = v225;
      v228 = vzip1q_s32(v300, v226);
      v229 = vzip2q_s32(v300, v226);
      v230 = vzip1q_s32(v227, 0);
      v300 = vzip1q_s32(v228, v230);
      v301 = vzip2q_s32(v228, v230);
      v302 = vzip1q_s32(v229, vzip2q_s32(v227, 0));
      v308.i64[0] = &unk_1F5D21A80;
      v308.i64[1] = v283;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(&v298, &v308, &v294, &v297, &v296, &v304, v293, vdup_lane_s32(*v213.f32, 0), *v229.i64, *v301.i8) != 5)
      {
        goto LABEL_79;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(&v284) - 5 >= 2)
      {
        v232 = vnegq_f32(v268);
        v232.i32[3] = 0;
        v233 = vmulq_f32(v232, v232);
        v233.i64[0] = vpaddq_f32(v233, v233).u64[0];
        v234 = vpadd_f32(*v233.f32, *v233.f32);
        v235 = vrsqrte_f32(v234);
        v236 = 4;
        do
        {
          v235 = vmul_f32(v235, vrsqrts_f32(vmul_f32(v235, v235), v234));
          --v236;
        }

        while (v236);
        v237 = vbsl_s8(vdup_lane_s32(vceqz_f32(v234), 0), v234, vmul_f32(v234, v235));
        v238 = vrecpe_f32(v237);
        v239 = 4;
        do
        {
          v238 = vmul_f32(v238, vrecps_f32(v237, v238));
          --v239;
        }

        while (v239);
        v210 = vmulq_n_f32(v232, v238.f32[0]);
        v210.i32[3] = 0;
        v207 = 0;
        v213 = 0uLL;
      }

      else
      {
LABEL_79:
        v210 = v306[0];
        v213 = v304;
        v207 = vmin_f32(v307, 0);
      }
    }

    v240 = vmulq_n_f32(v213, v260);
    v240.i32[3] = 0;
    v241 = vmls_f32(vmul_f32(v261, *&vextq_s8(v213, v213, 4uLL)), v256, *v213.f32);
    *v242.f32 = vext_s8(v241, vmls_f32(vmul_f32(v257, *v213.f32), v261, *&vextq_s8(v213, v213, 8uLL)), 4uLL);
    v242.i64[1] = v241.u32[0];
    v243 = vmlaq_f32(v240, v262, v242);
    v243.i64[1] = vextq_s8(v243, v243, 8uLL).u32[0];
    v244 = vmulq_f32(v259, v213);
    v244.i64[0] = vpaddq_f32(v244, v244).u64[0];
    v245 = vmlaq_n_f32(v243, v259, vpadd_f32(*v244.f32, *v244.f32).f32[0]);
    v245.i64[1] = vextq_s8(v245, v245, 8uLL).u32[0];
    v242.i64[0] = 0x4000000040000000;
    v242.i64[1] = 0x4000000040000000;
    v246 = vmlaq_f32(v263, v242, v245);
    v246.i64[1] = vextq_s8(v246, v246, 8uLL).u32[0];
    v247 = vmlaq_n_f32(v246, v258, vmax_f32(v207, 0).f32[0]);
    v248 = vmulq_n_f32(v210, v260);
    v248.i32[3] = 0;
    *v242.f32 = vmls_f32(vmul_f32(v261, *&vextq_s8(v210, v210, 4uLL)), v256, *v210.f32);
    *v245.f32 = vext_s8(*v242.f32, vmls_f32(vmul_f32(v257, *v210.f32), v261, *&vextq_s8(v210, v210, 8uLL)), 4uLL);
    v245.i64[1] = v242.u32[0];
    v249 = vmlaq_f32(v248, v262, v245);
    v249.i64[1] = vextq_s8(v249, v249, 8uLL).u32[0];
    v250 = vmulq_f32(v259, v210);
    v250.i64[0] = vpaddq_f32(v250, v250).u64[0];
    v251 = vmlaq_n_f32(v249, v259, vpadd_f32(*v250.f32, *v250.f32).f32[0]);
    v252 = vaddq_f32(v251, v251);
    *a8 = v252.i64[0];
    *(a8 + 8) = v252.i32[2];
    *a9 = v247.i64[0];
    *(a9 + 8) = v247.i32[2];
  }

  return v207.f32[0];
}

float32_t physx::Gu::SweepGeomTriangles<physx::Gu::ConvexHullV>(uint64_t a1, double a2, uint64_t a3, float32x4_t *a4, int8x8_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v388 = *MEMORY[0x1E69E9840];
  v364 = 0;
  v362 = 0u;
  v363 = 0u;
  v11 = *(a1 + 48);
  v12 = *(a1 + 4);
  v13 = v12;
  v13.i32[3] = 0;
  v14 = *(a1 + 16);
  v15 = COERCE_FLOAT(*(a1 + 12)) == 1.0;
  _ZF = v12.f32[0] == 1.0 && COERCE_FLOAT(HIDWORD(*(a1 + 4))) == 1.0;
  v371 = *(a1 + 48);
  v373 = *(v11 + 40) + 20 * *(v11 + 39);
  v374 = *(v11 + 38);
  v18 = _ZF && v15;
  v17.i64[1] = *(v11 + 68);
  v17.i64[0] = *(v11 + 60);
  v19 = vmulq_f32(v13, v17);
  *v19.i8 = vpmin_f32(vdup_laneq_s32(v19, 2), *v19.i8);
  *v19.i32 = vpmin_f32(*v19.i8, *v19.i8).f32[0];
  *&v363 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v19.i32);
  *(&v363 + 2) = 0.025 * *v19.i32;
  __asm { FMOV            V9.2S, #1.0 }

  if (v18)
  {
    v365 = xmmword_1E3047670;
    v366 = xmmword_1E3047680;
    v367 = xmmword_1E30476A0;
    v368 = xmmword_1E3047670;
    v369 = xmmword_1E3047680;
    v370 = xmmword_1E30476A0;
  }

  else
  {
    v24 = vrecpeq_f32(v13);
    v25 = 4;
    do
    {
      v24 = vmulq_f32(v24, vrecpsq_f32(v24, v13));
      --v25;
    }

    while (v25);
    *v26.f32 = vdup_lane_s32(*v12.f32, 0);
    v26.i64[1] = v26.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v26, v13)), *&a2).u32[0] & 0xFFFFFF) != 0)
    {
      v33 = vdup_lane_s32(*v14.f32, 1);
      v34 = vdup_laneq_s32(v14, 2);
      v35 = vdup_laneq_s32(v14, 3);
      v36 = vaddq_f32(v14, v14);
      v37 = vmul_lane_f32(v33, *v36.f32, 1);
      v38 = vmul_laneq_f32(v34, v36, 2);
      v39 = vmul_n_f32(v33, v36.f32[0]);
      v40 = vmul_n_f32(v34, v36.f32[0]);
      v41 = vmul_n_f32(v35, v36.f32[0]);
      v42 = vmul_lane_f32(v34, *v36.f32, 1);
      v43 = vmul_lane_f32(v35, *v36.f32, 1);
      v44 = vmul_laneq_f32(v35, v36, 2);
      v45 = vsub_f32(_D9, vdup_lane_s32(vmul_f32(*v14.f32, *v36.f32), 0));
      v46 = vsub_f32(vsub_f32(_D9, v37), v38);
      *v36.f32 = vadd_f32(v39, v44);
      v47 = vsub_f32(v40, v43);
      v48 = vsub_f32(v39, v44);
      v49 = vadd_f32(v40, v43);
      v50 = vsub_f32(v42, v41);
      v51 = vext_s8(v49, v50, 4uLL);
      v52 = vsub_f32(v45, v38);
      *v53.f32 = vext_s8(v46, *&vdupq_lane_s32(v48, 1), 4uLL);
      v53.i64[1] = vdup_lane_s32(v51, 0).u32[0];
      v54 = vsub_f32(v45, v37);
      *v55.f32 = vext_s8(*&vdupq_lane_s32(*v36.f32, 0), v52, 4uLL);
      v55.i64[1] = vdup_lane_s32(v51, 1).u32[0];
      v56 = vadd_f32(v42, v41);
      *v57.f32 = vext_s8(*&vdupq_lane_s32(v47, 0), v56, 4uLL);
      v57.i64[1] = vdup_lane_s32(v54, 0).u32[0];
      v58 = vmulq_n_f32(v53, v12.f32[0]);
      v58.i32[3] = 0;
      v59 = vmulq_lane_f32(v55, *v12.f32, 1);
      v59.i32[3] = 0;
      v60 = vmulq_laneq_f32(v57, v12, 2);
      v60.i32[3] = 0;
      v61 = vmulq_lane_f32(v58, v46, 1);
      v61.i32[3] = 0;
      v62 = vmulq_n_f32(v59, v36.f32[0]);
      v62.i32[3] = 0;
      v63 = vmulq_n_f32(v60, *v47.i32);
      v63.i32[3] = 0;
      v27 = vaddq_f32(v63, vaddq_f32(v61, v62));
      v64 = vmulq_lane_f32(v58, v48, 1);
      v64.i32[3] = 0;
      v65 = vmulq_n_f32(v59, *v52.i32);
      v65.i32[3] = 0;
      v66 = vmulq_n_f32(v60, *v56.i32);
      v66.i32[3] = 0;
      v28 = vaddq_f32(v66, vaddq_f32(v64, v65));
      v67 = vmulq_lane_f32(v58, v49, 1);
      v67.i32[3] = 0;
      v68 = vmulq_n_f32(v59, *v50.i32);
      v68.i32[3] = 0;
      v69 = vmulq_n_f32(v60, *v54.i32);
      v69.i32[3] = 0;
      v29 = vaddq_f32(v69, vaddq_f32(v67, v68));
      v365 = v27;
      v366 = v28;
      v70 = vmulq_n_f32(v53, v24.f32[0]);
      v70.i32[3] = 0;
      v71 = vmulq_lane_f32(v55, *v24.f32, 1);
      v71.i32[3] = 0;
      v72 = vmulq_laneq_f32(v57, v24, 2);
      v72.i32[3] = 0;
      v73 = vmulq_lane_f32(v70, v46, 1);
      v73.i32[3] = 0;
      v74 = vmulq_n_f32(v71, v36.f32[0]);
      v74.i32[3] = 0;
      v75 = vmulq_n_f32(v72, *v47.i32);
      v75.i32[3] = 0;
      v76 = vaddq_f32(v75, vaddq_f32(v73, v74));
      v77 = vmulq_lane_f32(v70, v48, 1);
      v77.i32[3] = 0;
      v78 = vmulq_n_f32(v71, *v52.i32);
      v78.i32[3] = 0;
      v79 = vmulq_n_f32(v72, *v56.i32);
      v79.i32[3] = 0;
      v80 = vmulq_lane_f32(v70, v49, 1);
      v80.i32[3] = 0;
      v81 = vmulq_n_f32(v71, *v50.i32);
      v81.i32[3] = 0;
      v82 = vmulq_n_f32(v72, *v54.i32);
      v82.i32[3] = 0;
      v32 = vaddq_f32(v82, vaddq_f32(v80, v81));
      v367 = v29;
      v368 = v76;
      v369 = vaddq_f32(v79, vaddq_f32(v77, v78));
    }

    else
    {
      v24.i32[3] = 0;
      v27 = vmulq_f32(v13, xmmword_1E3047670);
      v28 = vmulq_f32(v13, xmmword_1E3047680);
      v29 = vmulq_f32(v13, xmmword_1E30476A0);
      v365 = v27;
      v366 = v28;
      v30 = vmulq_f32(v24, xmmword_1E3047670);
      v31 = vmulq_f32(v24, xmmword_1E3047680);
      v32 = vmulq_f32(v24, xmmword_1E30476A0);
      v367 = v29;
      v368 = v30;
      v369 = v31;
    }

    v83 = vmulq_f32(v27, 0);
    v83.i32[3] = 0;
    v84 = vmulq_f32(v28, 0);
    v84.i32[3] = 0;
    v85 = vmulq_f32(v29, 0);
    v85.i32[3] = 0;
    v370 = v32;
    v362 = vaddq_f32(v85, vaddq_f32(v84, v83));
  }

  v372 = *(v11 + 48);
  v86.i64[0] = *(a7 + 16);
  v86.i64[1] = *(a7 + 24);
  v87 = *a4;
  v88.i64[0] = *(a6 + 16);
  v88.i64[1] = *(a6 + 24);
  v89 = vnegq_f32(*a4);
  v90 = vsubq_f32(v86, v88);
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
  v102 = *a5->i8;
  v102.i32[3] = 0;
  v103 = vmulq_f32(v102, v91);
  v104 = vmulq_laneq_f32(v102, *a4, 3);
  v102.i64[0] = vextq_s8(v102, v102, 8uLL).u64[0];
  v105 = vmls_f32(vmul_f32(vext_s8(*a5, *v102.f32, 4uLL), *v89.f32), v95, *a5);
  *v106.f32 = vext_s8(v105, vmls_f32(vmul_f32(*a5, v94), *v89.f32, *v102.f32), 4uLL);
  *&v106.u32[2] = v105;
  v107 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v91, *a5->i8, 3), v104), v106);
  *v89.f32 = vdup_lane_s32(*v107.f32, 1);
  *v91.f32 = vdup_laneq_s32(v107, 2);
  v108 = vpaddq_f32(v103, v103).u64[0];
  v109 = vaddq_f32(v107, v107);
  *v104.f32 = vdup_laneq_s32(v109, 2);
  *v107.f32 = vdup_lane_s32(vmul_f32(*v107.f32, *v109.f32), 0);
  *v100.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a5->i8, *a5->i8, 8uLL), *&vextq_s8(v87, v87, 8uLL)), vpadd_f32(v108, v108));
  v110 = vmul_lane_f32(*v89.f32, *v109.f32, 1);
  v111 = vmul_laneq_f32(*v91.f32, v109, 2);
  *v89.f32 = vmul_n_f32(*v89.f32, v109.f32[0]);
  v112 = vmul_n_f32(*v91.f32, v109.f32[0]);
  *v103.f32 = vmul_lane_f32(vdup_lane_s32(*v109.f32, 0), *v100.f32, 1);
  *v91.f32 = vmul_lane_f32(*v91.f32, *v109.f32, 1);
  *v109.f32 = vmul_lane_f32(vdup_lane_s32(*v109.f32, 1), *v100.f32, 1);
  *v100.f32 = vmul_lane_f32(*v104.f32, *v100.f32, 1);
  *v113.i8 = vext_s8(vsub_f32(vsub_f32(_D9, v110), v111), vadd_f32(*v89.f32, *v100.f32), 4uLL);
  v113.i64[1] = vsub_f32(v112, *v109.f32).u32[0];
  *v107.f32 = vsub_f32(_D9, *v107.f32);
  *v89.f32 = vext_s8(vsub_f32(*v89.f32, *v100.f32), vsub_f32(*v107.f32, v111), 4uLL);
  v89.i64[1] = vadd_f32(*v91.f32, *v103.f32).u32[0];
  v110.i32[0] = vsub_f32(*v107.f32, v110).u32[0];
  *v107.f32 = vext_s8(vadd_f32(v112, *v109.f32), vsub_f32(*v91.f32, *v103.f32), 4uLL);
  v107.i64[1] = v110.u32[0];
  *v91.f32 = a5[2];
  v91.i64[1] = a5[3].u32[0];
  v100.i64[0] = a4[1].i64[0];
  v100.i64[1] = a4[1].u32[2];
  v353 = v113;
  v354 = v89;
  v329 = v88;
  v114 = v87;
  v114.i32[3] = 0;
  v324 = vsubq_f32(v91, v86);
  v115 = vsubq_f32(vsubq_f32(v100, v88), v324);
  v326 = v92;
  v327 = *v87.f32;
  v116 = vmulq_n_f32(v115, v92);
  v116.i32[3] = 0;
  v323 = vextq_s8(v114, v114, 8uLL).u64[0];
  v322 = vext_s8(*v87.f32, v323, 4uLL);
  *v100.f32 = vmls_f32(vmul_f32(*v87.f32, *&vextq_s8(v115, v115, 4uLL)), v322, *v115.f32);
  *v91.f32 = vext_s8(*v100.f32, vmls_f32(vmul_f32(v323, *v115.f32), *v87.f32, *&vextq_s8(v115, v115, 8uLL)), 4uLL);
  v91.i64[1] = v100.u32[0];
  v117 = vmlsq_laneq_f32(v116, v91, v87, 3);
  v117.i64[1] = vextq_s8(v117, v117, 8uLL).u32[0];
  v355 = v107;
  v356 = v101;
  v118 = vmulq_f32(v114, v115);
  v118.i64[0] = vpaddq_f32(v118, v118).u64[0];
  v325 = v114;
  v119 = vmlaq_n_f32(v117, v114, vpadd_f32(*v118.f32, *v118.f32).f32[0]);
  v334 = vaddq_f32(v119, v119);
  v347.i64[1] = a11;
  v348 = &v353;
  v352 = v101;
  v120 = vzip1q_s32(v113, v107);
  v121 = vzip1q_s32(v354, 0);
  v349 = vzip1q_s32(v120, v121);
  v350 = vzip2q_s32(v120, v121);
  v351 = vzip1q_s32(vzip2q_s32(v113, v107), vzip2q_s32(v354, 0));
  v346 = &v362;
  v347.i64[0] = &unk_1F5D21D08;
  v345 = &unk_1F5D21818;
  v360 = 1;
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
  v128 = v334;
  v128.i32[3] = 0;
  v335 = v128;
  v129 = vbsl_s8(vdup_lane_s32(vceqz_f32(v125), 0), v125, vmul_f32(v125, v126));
  v130 = vrecpe_f32(v129);
  v131 = 4;
  do
  {
    v130 = vmul_f32(v130, vrecps_f32(v129, v130));
    --v131;
  }

  while (v131);
  *&a2 = *&a2 + 0.0;
  v132 = vmlaq_f32(0, 0, v128);
  v133 = vdup_lane_s32(*&a2, 0);
  v132.i64[1] = vextq_s8(v132, v132, 8uLL).u32[0];
  v339 = v132;
  v134 = vmulq_n_f32(v123, v130.f32[0]);
  v134.i32[3] = 0;
  v359 = v134;
  v135 = vnegq_f32(v134);
  v135.i32[3] = 0;
  v375 = v135;
  *v136.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(&v347, &v375);
  v342 = v136;
  *v137.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v345, &v359);
  v138 = v137;
  v139 = vsubq_f32(v342, v137);
  v375 = v139;
  v376 = 0u;
  v377 = 0u;
  v378 = 0u;
  v381 = v342;
  v382 = 0u;
  memset(v383, 0, sizeof(v383));
  v140 = vnegq_f32(v139);
  v140.i32[3] = 0;
  v385 = v138;
  v386 = 0u;
  memset(v387, 0, sizeof(v387));
  v141 = &v346[1].f32[2];
  *v138.f32 = vld1_dup_f32(v141);
  v142 = vneg_f32(0x80000000800000);
  *v138.f32 = vmul_f32(vmin_f32(*v138.f32, v142), vdup_n_s32(0x3DCCCCCDu));
  v143 = vadd_f32(v133, *v138.f32);
  v144 = vmul_f32(*v138.f32, *v138.f32);
  v145 = vmul_f32(v143, v143);
  v146 = vmulq_f32(v140, v140);
  v147 = vpaddq_f32(v146, v146);
  v148 = vpadd_f32(*v147.f32, *v147.f32);
  v321 = v144;
  *v147.f32 = vcgt_f32(v148, v144);
  v149 = vdupq_lane_s32(*v147.f32, 0);
  v147.i32[0] = -1;
  v320 = v147;
  v150 = v139;
  v151.i64[0] = -1;
  v151.i64[1] = -1;
  v332 = v140;
  v152 = v140;
  v336 = 0;
  while (1)
  {
    v153 = v139;
    v154.i64[0] = -1;
    v154.i64[1] = -1;
    *v154.i8 = vmovn_s32(vceqq_s32(v149, v154));
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
    v340 = v153;
    v160 = vbsl_s8(vdup_lane_s32(vceqz_f32(v157), 0), v157, vmul_f32(v157, v158));
    v161 = vrecpe_f32(v160);
    v162 = 4;
    do
    {
      v161 = vmul_f32(v161, vrecps_f32(v160, v161));
      --v162;
    }

    while (v162);
    v338 = v152;
    v163 = vmulq_n_f32(v152, v161.f32[0]);
    v163.i32[3] = 0;
    v358 = v163;
    v164 = vnegq_f32(v163);
    v164.i32[3] = 0;
    v357 = v164;
    *v165.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(&v347, &v358);
    v343 = v165;
    *v166.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v345, &v357);
    v167 = v343;
    v168 = vaddq_f32(v339, v166);
    v139 = vsubq_f32(v343, v168);
    v169 = vnegq_f32(v139);
    v169.i32[3] = 0;
    v170 = vmulq_f32(v358, v169);
    v170.i64[0] = vpaddq_f32(v170, v170).u64[0];
    v171 = vsub_f32(vpadd_f32(*v170.f32, *v170.f32), v143);
    if (v171.f32[0] > 0.0)
    {
      v172 = vmulq_f32(v335, v358);
      v172.i64[0] = vpaddq_f32(v172, v172).u64[0];
      v173 = vpadd_f32(*v172.f32, *v172.f32);
      if (v173.f32[0] >= 0.0)
      {
        goto LABEL_84;
      }

      v174 = vrecpe_f32(v173);
      v175 = 4;
      do
      {
        v174 = vmul_f32(v174, vrecps_f32(v173, v174));
        --v175;
      }

      while (v175);
      v176 = vsub_f32(v336, vmul_f32(v171, v174));
      if (vcgt_f32(v176, v336).u8[0])
      {
        if (v176.f32[0] > 1.0)
        {
LABEL_84:
          v273 = 0;
          v276 = 0uLL;
          v279 = 0uLL;
          goto LABEL_90;
        }

        v177 = vmlaq_n_f32(0, v335, v176.f32[0]);
        v177.i64[1] = vextq_s8(v177, v177, 8uLL).u32[0];
        v337 = v177;
        v178 = vsubq_f32(v177, v339);
        v333 = v176;
        v385 = vaddq_f32(v178, v385);
        v386 = vaddq_f32(v178, v386);
        v387[0] = vaddq_f32(v178, v387[0]);
        v375 = vsubq_f32(v381, v385);
        v376 = vsubq_f32(v382, v386);
        v377 = vsubq_f32(v383[0], v387[0]);
        *v179.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v345, &v357);
        v167 = v343;
        v168 = vaddq_f32(v337, v179);
        v139 = vsubq_f32(v343, v168);
        v148 = v142;
        v332 = v338;
        v339 = v337;
        v180 = v333;
      }

      else
      {
        v180 = v176;
      }

      v336 = v180;
    }

    v181 = v360;
    *(&v381 + v360) = v167;
    *(&v385 + v181) = v168;
    v360 = v181 + 1;
    *(&v375 + v181) = v139;
    if (v181 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v375, &v381, &v385, &v360);
LABEL_51:
      v150 = v340;
      goto LABEL_75;
    }

    if (v181 == 2)
    {
      v139 = v375;
      v190 = vsubq_f32(v376, v375);
      v191 = vsubq_f32(v377, v375);
      v193 = vmls_f32(vmul_f32(*v190.f32, *&vextq_s8(v191, v191, 4uLL)), *&vextq_s8(v190, v190, 4uLL), *v191.f32);
      *v192.f32 = vext_s8(v193, vmls_f32(vmul_f32(*&vextq_s8(v190, v190, 8uLL), *v191.f32), *v190.f32, *&vextq_s8(v191, v191, 8uLL)), 4uLL);
      v193.i32[1] = 0;
      v360 = 3;
      v194 = vpadd_f32(vmul_f32(*v192.f32, *v192.f32), vmul_f32(v193.u32[0], v193.u32[0]));
      v195 = vpadd_f32(v194, v194);
      if (v195.f32[0] <= 0.00000011921)
      {
        v360 = 2;
        v232 = vmulq_f32(v190, v190);
        v232.i64[0] = vpaddq_f32(v232, v232).u64[0];
        v233 = vpadd_f32(*v232.f32, *v232.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v233), 0), *v375.f32).u32[0] == -1)
        {
          v360 = 1;
          goto LABEL_51;
        }

        v234 = vnegq_f32(v375);
        v234.i32[3] = 0;
        v235 = vmulq_f32(v234, v190);
        v235.i64[0] = vpaddq_f32(v235, v235).u64[0];
        v236 = vpadd_f32(*v235.f32, *v235.f32);
        v237 = vrecpe_f32(v233);
        v238 = 4;
        v150 = v340;
        do
        {
          v237 = vmul_f32(v237, vrecps_f32(v233, v237));
          --v238;
        }

        while (v238);
        v139 = vmlaq_n_f32(v375, v190, vmax_f32(vmin_f32(vmul_f32(v236, v237), _D9), 0).f32[0]);
        goto LABEL_56;
      }

      *&v192.u32[2] = v193;
      v196 = vextq_s8(v376, v376, 8uLL).u64[0];
      v197 = vextq_s8(v377, v377, 8uLL).u64[0];
      v198 = vextq_s8(v377, v377, 4uLL).u64[0];
      v199 = vextq_s8(v376, v376, 4uLL).u64[0];
      v200 = vmls_f32(vmul_f32(*v376.f32, v198), v199, *v377.f32);
      *v201.f32 = vext_s8(v200, vmls_f32(vmul_f32(v196, *v377.f32), *v376.f32, v197), 4uLL);
      v201.i64[1] = v200.u32[0];
      v202 = vextq_s8(v375, v375, 8uLL).u64[0];
      v203 = vextq_s8(v375, v375, 4uLL).u64[0];
      v204 = vmls_f32(vmul_f32(v203, *v377.f32), v198, *v375.f32);
      *v205.f32 = vext_s8(v204, vmls_f32(vmul_f32(*v375.f32, v197), *v377.f32, v202), 4uLL);
      v205.i64[1] = v204.u32[0];
      v206 = vmls_f32(vmul_f32(*v375.f32, v199), v203, *v376.f32);
      *v207.f32 = vext_s8(v206, vmls_f32(vmul_f32(v202, *v376.f32), *v375.f32, v196), 4uLL);
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
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v211), vcgez_f32(v209)), vcgez_f32(v213)), 0), *v375.f32).u32[0] == -1)
      {
        v239 = vrecpe_f32(v195);
        v240 = 4;
        do
        {
          v239 = vmul_f32(v239, vrecps_f32(v195, v239));
          --v240;
        }

        while (v240);
        v241 = vmulq_f32(v375, v192);
        v241.i64[0] = vpaddq_f32(v241, v241).u64[0];
        v139 = vmulq_n_f32(v192, vmul_f32(v239, vpadd_f32(*v241.f32, *v241.f32)).f32[0]);
        v139.i32[3] = 0;
        goto LABEL_51;
      }

      v214 = vnegq_f32(v375);
      v214.i32[3] = 0;
      v215 = vnegq_f32(v376);
      v215.i32[3] = 0;
      v216 = vmulq_f32(v214, v190);
      v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
      v217 = vpadd_f32(*v216.f32, *v216.f32);
      v218 = vmulq_f32(v190, v215);
      v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
      v219 = vpadd_f32(*v218.f32, *v218.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v213), vand_s8(vclez_f32(v219), vcgez_f32(v217))), 0), *v375.f32).u32[0] == -1)
      {
        v242 = vsub_f32(v217, v219);
        v243 = vrecpe_f32(v242);
        v244 = 4;
        v150 = v340;
        do
        {
          v243 = vmul_f32(v243, vrecps_f32(v242, v243));
          --v244;
        }

        while (v244);
        v231 = 0;
        v139 = vmlaq_n_f32(v375, v190, vmul_f32(v217, vbsl_s8(vcgt_f32(vabs_f32(v242), 0x3400000034000000), v243, 0)).f32[0]);
        v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
        v230 = 2;
        v245 = &v386;
        v246 = &v382;
        v247 = &v376;
      }

      else
      {
        v220 = vnegq_f32(v377);
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
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v222, v219), vcge_f32(v224, v226)), vclez_f32(v209)), 0), *v375.f32).u32[0] == -1)
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
          v252 = vmlaq_n_f32(v376, vsubq_f32(v377, v376), vmul_f32(v248, vbsl_s8(vcgt_f32(vabs_f32(v249), 0x3400000034000000), v250, 0)).f32[0]);
          v230 = 2;
          v246 = v383;
          v245 = v387;
          v252.i64[1] = vextq_s8(v252, v252, 8uLL).u32[0];
          v247 = &v377;
          v231 = 1;
          v139 = v252;
        }

        else
        {
          v227 = vmulq_f32(v214, v191);
          v227.i64[0] = vpaddq_f32(v227, v227).u64[0];
          v228 = vpadd_f32(*v227.f32, *v227.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v211), vand_s8(vclez_f32(v226), vcgez_f32(v228))), 0), *v375.f32).u32[0] == -1)
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
            v139 = vmlaq_n_f32(v375, v191, vmul_f32(v228, vbsl_s8(vcgt_f32(vabs_f32(v253), 0x3400000034000000), v254, 0)).f32[0]);
            v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
            v230 = 2;
            v246 = v383;
            v245 = v387;
            v247 = &v377;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v228), vclez_f32(v217)), 0), *v375.f32).u32[0] == -1)
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
              v139 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v139, v320), 0), v376, v377);
              if (v229 == -1)
              {
                v231 = 1;
              }

              else
              {
                v231 = 2;
              }
            }

            v245 = &v386;
            v246 = &v382;
            v247 = &v376;
          }
        }

        v150 = v340;
      }

      v256 = *(&v381 + v231);
      v257 = *v247;
      v258 = *v246;
      v259 = *(&v385 + v231);
      v260 = *v245;
      v375 = *(&v375 + v231);
      v376 = v257;
      v381 = v256;
      v382 = v258;
      v385 = v259;
      v386 = v260;
      v360 = v230;
    }

    else
    {
      v150 = v340;
      if (v181 != 1)
      {
        goto LABEL_75;
      }

      v139 = v375;
      v182 = vsubq_f32(v376, v375);
      v183 = vmulq_f32(v182, v182);
      v183.i64[0] = vpaddq_f32(v183, v183).u64[0];
      v184 = vpadd_f32(*v183.f32, *v183.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v184), 0), *v375.f32).u32[0] != -1)
      {
        v185 = vnegq_f32(v375);
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
        v139 = vmlaq_n_f32(v375, v182, vmax_f32(vmin_f32(vmul_f32(v187, v188), _D9), 0).f32[0]);
LABEL_56:
        v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
        goto LABEL_75;
      }

      v360 = 1;
    }

LABEL_75:
    v152 = vnegq_f32(v139);
    v152.i32[3] = 0;
    v261 = vmulq_f32(v139, v139);
    v261.i64[0] = vpaddq_f32(v261, v261).u64[0];
    v262 = vpadd_f32(*v261.f32, *v261.f32);
    v263 = vcgt_f32(v148, v262);
    v151 = vdupq_lane_s32(vand_s8(v263, 0x100000001), 0);
    v149 = vdupq_lane_s32(vand_s8(vcgt_f32(v262, v145), v263), 0);
    v148 = v262;
  }

  v264 = v347.i64[1];
  v265 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v148, v321), 0), v151), 0x1FuLL)), v152, v332);
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
  v273 = v336;
  do
  {
    v271 = vmul_f32(v271, vrecps_f32(v270, v271));
    --v272;
  }

  while (v272);
  v274 = vdupq_n_s32(-*(v347.i64[1] + 32));
  v275 = vmulq_n_f32(v265, v271.f32[0]);
  v275.i32[3] = 0;
  v276 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v270), 0), v275));
  v276.i32[3] = 0;
  v277 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v151, 0x1FuLL)), v153, v150);
  v358 = v277;
  if (v360 == 3)
  {
    v357.i64[0] = 0;
    v361 = 0;
    v341 = v274;
    v344 = v276;
    physx::Gu::barycentricCoordinates(&v358, &v375, &v376, &v377, &v357, &v361);
    v274 = v341;
    v276 = v344;
    v273 = v336;
    v151.i32[1] = v381.i32[1];
    v288 = vmulq_n_f32(vsubq_f32(v382, v381), v357.f32[0]);
    v288.i32[3] = 0;
    v289 = vmulq_n_f32(vsubq_f32(v383[0], v381), v361.f32[0]);
    v289.i32[3] = 0;
    v278 = vaddq_f32(v381, vaddq_f32(v288, v289));
  }

  else if (v360 == 2)
  {
    v280 = vsubq_f32(v375, v277);
    v281 = vsubq_f32(vsubq_f32(v376, v277), v280);
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
    v278 = vmlaq_n_f32(v381, vsubq_f32(v382, v381), vmul_f32(vbsl_s8(vcgtz_f32(v283), v284, 0), vpadd_f32(*v287.f32, *v287.f32)).f32[0]);
    v151.i32[1] = 0;
    v278.i64[1] = vextq_s8(v278, v278, 8uLL).u32[0];
  }

  else
  {
    v278 = 0uLL;
    if (v360 == 1)
    {
      v278 = v381;
    }
  }

  v151.i32[0] = *(v264 + 16);
  v290 = vmlsq_lane_f32(v278, v276, *v151.i8, 0);
  v290.i64[1] = vextq_s8(v290, v290, 8uLL).u32[0];
  v279 = vbslq_s8(v274, v290, v278);
LABEL_90:
  if (v155 == -1)
  {
    v273.i32[0] = 2139095039;
  }

  else
  {
    if (v273.f32[0] == 0.0)
    {
      v279.f32[0] = (*(v347.i64[1] + 16) + v346[1].f32[0]) * 100.0;
      v357.i8[0] = 0;
      v384 = 0;
      v381 = 0u;
      v382 = 0u;
      v383[0] = 0u;
      v375.i64[1] = v347.i64[1];
      v375.i64[0] = &unk_1F5D21D08;
      v376.i64[0] = v348;
      v292 = v348[2];
      v291 = v348[3];
      v293 = v348[1];
      v377 = *v348;
      v380 = v291;
      v294 = vzip1q_s32(v377, v292);
      v295 = vzip2q_s32(v377, v292);
      v296 = vzip1q_s32(v293, 0);
      v377 = vzip1q_s32(v294, v296);
      v378 = vzip2q_s32(v294, v296);
      v379 = vzip1q_s32(v295, vzip2q_s32(v293, 0));
      v385.i64[0] = &unk_1F5D21818;
      v385.i64[1] = v346;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v375, &v385, &v359, &v358, &v357, &v381, v356, vdup_lane_s32(*v279.f32, 0), *v295.i64, v378, *v377.f32, *v294.i8) != 5)
      {
        goto LABEL_94;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(&v347) - 5 >= 2)
      {
        v298 = vnegq_f32(v335);
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
LABEL_94:
        v276 = v383[0];
        v279 = v381;
        v273 = vmin_f32(v384, 0);
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
    *a8 = v318.i64[0];
    *(a8 + 8) = v318.i32[2];
    *a9 = v313.i64[0];
    *(a9 + 8) = v313.i32[2];
  }

  return v273.f32[0];
}

float32x2_t physx::Gu::barycentricCoordinates(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x2_t *a5, float32x2_t *a6)
{
  v6 = vsubq_f32(*a3, *a2);
  v7 = vsubq_f32(*a4, *a2);
  v8 = vmls_f32(vmul_f32(*v6.i8, *&vextq_s8(v7, v7, 4uLL)), *&vextq_s8(v6, v6, 4uLL), *v7.i8);
  *v6.i8 = vext_s8(v8, vmls_f32(vmul_f32(*&vextq_s8(v6, v6, 8uLL), *v7.i8), *v6.i8, *&vextq_s8(v7, v7, 8uLL)), 4uLL);
  v9 = vsubq_f32(*a2, *a1);
  v10 = vsubq_f32(*a3, *a1);
  v11 = vsubq_f32(*a4, *a1);
  v7.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
  v12 = vextq_s8(v11, v11, 8uLL).u64[0];
  v13 = vextq_s8(v11, v11, 4uLL).u64[0];
  v14 = vextq_s8(v10, v10, 4uLL).u64[0];
  v15 = vmls_f32(vmul_f32(*v10.i8, v13), v14, *v11.i8);
  v16 = vext_s8(v15, vmls_f32(vmul_f32(*v7.i8, *v11.i8), *v10.i8, v12), 4uLL);
  v17 = vextq_s8(v9, v9, 8uLL).u64[0];
  v18 = vextq_s8(v9, v9, 4uLL).u64[0];
  v19 = vmls_f32(vmul_f32(*v11.i8, v18), v13, *v9.i8);
  *v11.i8 = vext_s8(v19, vmls_f32(vmul_f32(v12, *v9.i8), *v11.i8, v17), 4uLL);
  v20 = vmls_f32(vmul_f32(*v9.i8, v14), v18, *v10.i8);
  *v9.i8 = vext_s8(v20, vmls_f32(vmul_f32(v17, *v10.i8), *v9.i8, *v7.i8), 4uLL);
  *v10.i8 = vpadd_f32(vmul_f32(*v6.i8, v16), vmul_f32(v8.u32[0], v15.u32[0]));
  *v7.i8 = vpadd_f32(*v10.i8, *v10.i8);
  *v10.i8 = vpadd_f32(vmul_f32(*v6.i8, *v11.i8), vmul_f32(v8.u32[0], v19.u32[0]));
  v21 = vpadd_f32(*v10.i8, *v10.i8);
  v22 = vpadd_f32(vmul_f32(*v6.i8, *v9.i8), vmul_f32(v8.u32[0], v20.u32[0]));
  v23 = vpadd_f32(v22, v22);
  v24 = vadd_f32(*v7.i8, vadd_f32(v21, v23));
  v25 = vrecpe_f32(v24);
  v26 = 4;
  do
  {
    v25 = vmul_f32(v25, vrecps_f32(v24, v25));
    --v26;
  }

  while (v26);
  v27 = vand_s8(vdup_lane_s32(vmvn_s8(vceqz_f32(v24)), 0), v25);
  *a5 = vmul_f32(v21, v27);
  result = vmul_f32(v23, v27);
  *a6 = result;
  return result;
}

uint64_t physx::Gu::SeparatingAxes::addAxis(unsigned int *a1, float *a2)
{
  v2 = a1 + 1;
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (*a1)
  {
    v7 = (a1 + 1);
    while (fabsf(((v5 * v7[1]) + (v4 * *v7)) + (v6 * v7[2])) <= 0.9999)
    {
      v7 += 3;
      if (v7 >= &v2[3 * v3])
      {
        if (v3 <= 0xFF)
        {
          goto LABEL_6;
        }

        return 0;
      }
    }

    return 0;
  }

  else
  {
LABEL_6:
    *a1 = v3 + 1;
    v8 = &v2[3 * v3];
    *v8 = v4;
    v8[1] = v5;
    v8[2] = v6;
    return 1;
  }
}

BOOL physx::Gu::contactBoxBox(float *a1, float *a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  v231 = *MEMORY[0x1E69E9840];
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  v19 = a3[3];
  v20 = v17 + v17;
  v21 = v18 + v18;
  v22 = v17 * (v17 + v17);
  v23 = v18 * (v18 + v18);
  v24 = (v16 + v16) * v17;
  v25 = (v16 + v16) * v18;
  v26 = (v16 + v16) * v19;
  v27 = v20 * v18;
  v28 = v20 * v19;
  v29 = v21 * v19;
  v30 = (1.0 - v22) - v23;
  v31 = v24 + v29;
  v32 = v25 - v28;
  v201 = v24 - v29;
  v33 = 1.0 - (v16 * (v16 + v16));
  v199 = v27 + v26;
  v200 = v33 - v23;
  v34 = v25 + v28;
  v202 = v27 - v26;
  v35 = v33 - v22;
  v37 = a3[4];
  v36 = a3[5];
  v38 = a3[6];
  v39 = *a4;
  v40 = a4[1];
  v41 = a4[2];
  v42 = a4[3];
  v43 = v40 + v40;
  v44 = v41 + v41;
  v45 = v40 * (v40 + v40);
  v46 = v41 * (v41 + v41);
  v47 = (v39 + v39) * v40;
  v48 = (v39 + v39) * v41;
  v49 = (v39 + v39) * v42;
  v50 = v43 * v41;
  v51 = v43 * v42;
  v52 = v44 * v42;
  v53 = (1.0 - v45) - v46;
  v54 = v47 + v52;
  v55 = v48 - v51;
  v56 = v47 - v52;
  v57 = 1.0 - (v39 * (v39 + v39));
  v58 = v57 - v46;
  v59 = v50 + v49;
  v60 = v48 + v51;
  v61 = v50 - v49;
  v62 = v57 - v45;
  v63 = a4[4];
  v64 = a4[5];
  v65 = a4[6];
  v66 = v64 - v36;
  v67 = v65 - v38;
  v68 = ((v31 * (v57 - v46)) + (v30 * v56)) + (v32 * v59);
  v197 = v63 - v37;
  v69 = ((v31 * (v64 - v36)) + (v30 * (v63 - v37))) + (v32 * (v65 - v38));
  v190 = ((v31 * v54) + (v30 * v53)) + (v32 * v55);
  v191 = v68;
  v192 = ((v31 * v61) + (v30 * v60)) + (v32 * v62);
  v70 = fabsf(v68) + 0.000001;
  v71 = fabsf(v192) + 0.000001;
  v72 = a1 + 1;
  v73 = a2[1];
  v193 = fabsf(v190) + 0.000001;
  v194 = a1[1];
  v74 = a2[2];
  v75 = a2[3];
  v76 = *a5;
  v219 = *a5 + ((((v194 + (v73 * v193)) + (v74 * v70)) + (v75 * v71)) - fabsf(v69));
  v77 = *(a6 + 10);
  v187 = v30;
  v188 = v31;
  *v204 = v30;
  *&v204[1] = v31;
  v78 = v56;
  v189 = v32;
  *&v204[2] = v32;
  v79 = v58;
  *&v204[3] = v201;
  *&v204[4] = v200;
  *&v204[5] = v199;
  *&v204[6] = v34;
  v195 = v35;
  v196 = v34;
  v80 = v60;
  v81 = v74;
  *&v204[7] = v202;
  *&v204[8] = v35;
  v82 = v62;
  v83 = v61;
  v84 = v38;
  v85 = v36;
  *&v204[9] = v37;
  *&v204[10] = v36;
  v183 = v84;
  v184 = v63;
  *&v204[11] = v84;
  *v203 = v53;
  *&v203[1] = v54;
  *&v203[2] = v55;
  *&v203[3] = v56;
  *&v203[4] = v58;
  *&v203[5] = v59;
  *&v203[6] = v80;
  *&v203[7] = v61;
  *&v203[8] = v82;
  *&v203[9] = v63;
  v185 = v64;
  v186 = v65;
  *&v203[10] = v64;
  *&v203[11] = v65;
  v225 = v69;
  if (v219 < 0.0)
  {
    goto LABEL_44;
  }

  v86 = v73;
  v87 = v75;
  v88 = v37;
  v89 = ((v200 * v83) + (v201 * v80)) + (v199 * v82);
  v178 = ((v200 * v54) + (v201 * v53)) + (v199 * v55);
  v179 = ((v200 * v58) + (v201 * v56)) + (v199 * v59);
  v90 = fabsf(v178) + 0.000001;
  v226 = ((v200 * v66) + (v201 * v197)) + (v199 * v67);
  v181 = fabsf(v179) + 0.000001;
  v182 = a1[2];
  v180 = fabsf(v89) + 0.000001;
  v220 = v76 + ((((v182 + (v86 * v90)) + (v81 * v181)) + (v75 * v180)) - fabsf(v226));
  if (v220 < 0.0)
  {
    goto LABEL_44;
  }

  v91 = v90;
  v92 = v87;
  v93 = v86;
  v175 = v82;
  v176 = v83;
  v94 = v81;
  v174 = v80;
  v95 = ((v202 * v54) + (v196 * v53)) + (v35 * v55);
  v96 = ((v202 * v83) + (v196 * v80)) + (v35 * v82);
  v97 = v92;
  v98 = v94;
  v99 = ((v202 * v66) + (v196 * v197)) + (v35 * v67);
  v100 = fabsf(v95) + 0.000001;
  v101 = ((v202 * v58) + (v196 * v56)) + (v195 * v59);
  v102 = fabsf(v101) + 0.000001;
  v103 = fabsf(v96) + 0.000001;
  v227 = v99;
  v104 = a1[3];
  v177 = v98;
  v221 = v76 + ((((v104 + (v93 * v100)) + (v98 * v102)) + (v97 * v103)) - fabsf(v99));
  if (v221 < 0.0)
  {
    goto LABEL_44;
  }

  v105 = v102;
  v228 = ((v54 * v66) + (v53 * v197)) + (v55 * v67);
  v222 = v76 + ((((v93 + (v194 * v193)) + (v182 * v91)) + (v104 * v100)) - fabsf(v228));
  if (v222 < 0.0)
  {
    goto LABEL_44;
  }

  v229 = ((v58 * v66) + (v56 * v197)) + (v59 * v67);
  v106 = v104;
  *&a15 = v182;
  v223 = v76 + ((((v177 + (v194 * v70)) + (v182 * v181)) + (v104 * v105)) - fabsf(v229));
  if (v223 < 0.0)
  {
    goto LABEL_44;
  }

  v230 = ((v176 * v66) + (v174 * v197)) + (v175 * v67);
  v224 = v76 + ((((v97 + (v194 * v71)) + (v182 * v180)) + (v104 * v103)) - fabsf(v230));
  if (v224 < 0.0)
  {
    goto LABEL_44;
  }

  v198 = v76;
  if (v77)
  {
    *(&v219 + (v77 - 1)) = *(&v219 + (v77 - 1)) * 0.999;
  }

  else
  {
    v120 = fabsf((v101 * -v226) + (v99 * v179));
    v121 = fabsf((v99 * v178) - (v226 * v95)) <= ((((v76 + (v182 * v100)) + (v104 * v91)) + (v177 * v71)) + (v97 * v70)) && v120 <= ((((v76 + (v182 * v105)) + (v104 * v181)) + (v93 * v71)) + (v97 * v193));
    v122 = fabsf((v96 * -v226) + (v99 * v89));
    v123 = v121 && v122 <= ((((v76 + (v182 * v103)) + (v104 * v180)) + (v93 * v70)) + (v177 * v193));
    v124 = -v99;
    *&a15 = v194;
    v125 = fabsf((v69 * v95) - (v99 * v190));
    v126 = v123 && v125 <= ((((v76 + (v194 * v100)) + (v104 * v193)) + (v177 * v180)) + (v97 * v181));
    v127 = fabsf((v191 * v124) + (v69 * v101));
    v128 = v126 && v127 <= ((((v76 + (v194 * v105)) + (v104 * v70)) + (v93 * v180)) + (v97 * v91));
    v129 = fabsf((v192 * v124) + (v69 * v96));
    v130 = v128 && v129 <= ((((v76 + (v194 * v103)) + (v104 * v71)) + (v93 * v181)) + (v177 * v91));
    v131 = -v69;
    v132 = fabsf((v226 * v190) - (v69 * v178));
    v133 = v130 && v132 <= ((((v76 + (v194 * v91)) + (v182 * v193)) + (v177 * v103)) + (v97 * v105));
    v134 = (((v76 + (v194 * v181)) + (v182 * v70)) + (v93 * v103)) + (v97 * v100);
    v135 = fabsf((v179 * v131) + (v226 * v191));
    v136 = v133 && v135 <= v134;
    v137 = fabsf((v89 * v131) + (v226 * v192));
    if (!v136 || v137 > ((((v76 + (v194 * v180)) + (v182 * v71)) + (v93 * v105)) + (v177 * v100)))
    {
      goto LABEL_44;
    }
  }

  v107 = 0;
  v108 = 0;
  v109 = 3.4028e38;
  do
  {
    if (*(&v219 + v107) >= 0.0 && *(&v219 + v107) < v109)
    {
      v109 = *(&v219 + v107);
      v108 = v107;
    }

    ++v107;
  }

  while (v107 != 6);
  v110 = *(&v225 + v108);
  if (v108 <= 2)
  {
    if (!v108)
    {
      v148 = v182;
      v149 = v201;
      *&a12 = v202;
      *&a13 = v196;
      v150 = v199;
      v151 = v200;
      v153 = v188;
      v152 = v189;
      v154 = v187;
      if (v110 >= 0.0)
      {
        v154 = -v187;
        v153 = -v188;
        v152 = -v189;
        v149 = -v201;
        v151 = -v200;
        v150 = -v199;
        *&a14 = v88 + (v187 * v194);
        v155 = v85 + (v188 * v194);
        v156 = v183 + (v189 * v194);
      }

      else
      {
        *&a14 = v88 - (v187 * v194);
        v155 = v85 - (v188 * v194);
        v156 = v183 - (v189 * v194);
      }

      v163 = v198;
      *&a11 = v195;
      v205 = __PAIR64__(LODWORD(v153), LODWORD(v154));
      v206 = v152;
      v207 = v154;
      v208 = v153;
      v209 = v152;
      v210 = v149;
      v211 = v151;
      v212 = v150;
      v213 = v196;
      v214 = v202;
      v215 = v195;
      v216 = *&a14;
      v217 = v155;
      v218 = v156;
      v168 = v203;
      v169 = a7;
      v170 = v106;
      goto LABEL_69;
    }

    *&a13 = v104;
    v111 = v201;
    *&a12 = v202;
    *&a14 = v196;
    v112 = v199;
    v113 = v200;
    v114 = v188;
    *&a15 = v189;
    v115 = v187;
    if (v108 == 1)
    {
      v213 = v187;
      v214 = v188;
      v215 = v189;
      if (v110 >= 0.0)
      {
        v111 = -v201;
        v113 = -v200;
        v112 = -v199;
        *&a14 = -v196;
        *&a12 = -v202;
        *&a11 = -v195;
        *&a15 = v88 + (v201 * v182);
        v161 = v85 + (v200 * v182);
        v162 = v183 + (v199 * v182);
        v163 = v198;
      }

      else
      {
        *&a15 = v88 - (v201 * v182);
        v161 = v85 - (v200 * v182);
        v162 = v183 - (v199 * v182);
        v163 = v198;
        *&a11 = v195;
      }

      v148 = v104;
      v205 = __PAIR64__(LODWORD(v113), LODWORD(v111));
      v206 = v112;
      v207 = v111;
      v208 = v113;
      v209 = v112;
      v210 = *&a14;
      v211 = *&a12;
      v212 = *&a11;
      v216 = *&a15;
      v217 = v161;
      v218 = v162;
      v168 = v203;
      v169 = a7;
      v170 = v194;
      goto LABEL_69;
    }

    if (v108 == 2)
    {
      v213 = v201;
      v214 = v200;
      v215 = v199;
      v116 = v196 * v104;
      if (v110 >= 0.0)
      {
        *&a11 = -v196;
        *&a12 = -v202;
        *&a13 = -v195;
        v115 = -v187;
        v114 = -v188;
        *&a15 = -v189;
        v117 = v88 + v116;
        v118 = v85 + (v202 * v104);
        v119 = v183 + (v195 * v104);
        *&a14 = -v196;
      }

      else
      {
        *&a13 = v195;
        v117 = v88 - v116;
        v118 = v85 - (v202 * v104);
        *&a11 = v183;
        v119 = v183 - (v195 * v104);
      }

      v163 = v198;
      v205 = __PAIR64__(LODWORD(a12), LODWORD(a14));
      v206 = *&a13;
      v207 = *&a14;
      v208 = *&a12;
      v209 = *&a13;
      v210 = v115;
      v211 = v114;
      v212 = *&a15;
      v216 = v117;
      v217 = v118;
      v218 = v119;
      v168 = v203;
      v169 = a7;
      v148 = v194;
      v170 = v182;
LABEL_69:
      v72 = a2 + 1;
      v171 = v163;
      goto LABEL_73;
    }

LABEL_44:
    result = 0;
    v140 = 0;
    goto LABEL_45;
  }

  if (v108 == 3)
  {
    v157 = -v53;
    v158 = -v54;
    v159 = -v55;
    if (v110 >= 0.0)
    {
      *&a11 = v184 - (v53 * v93);
      *&a12 = v185 - (v54 * v93);
      *&a14 = -v53;
      *&a15 = -v54;
      *&a13 = v186 - (v55 * v93);
      v160 = -v55;
      v157 = v53;
      v158 = v54;
      v159 = v55;
    }

    else
    {
      v78 = -v78;
      v79 = -v79;
      v59 = -v59;
      *&a11 = v184 + (v53 * v93);
      *&a12 = v185 + (v54 * v93);
      *&a13 = v186 + (v55 * v93);
      *&a14 = v53;
      *&a15 = v54;
      v160 = v55;
    }

    v205 = __PAIR64__(LODWORD(a15), LODWORD(a14));
    v206 = v160;
    v207 = v157;
    v208 = v158;
    v209 = v159;
    v210 = v78;
    v211 = v79;
    v212 = v59;
    v213 = v174;
    v214 = v176;
    v215 = v175;
    v216 = *&a11;
    v217 = *&a12;
    v218 = *&a13;
    v168 = v204;
    v169 = a7;
    v170 = v97;
    v148 = v177;
  }

  else
  {
    v142 = v175;
    v141 = v176;
    v143 = v174;
    if (v108 == 4)
    {
      v213 = v53;
      v214 = v54;
      v164 = -v78;
      v165 = -v79;
      v166 = -v59;
      v215 = v55;
      if (v110 >= 0.0)
      {
        *&a11 = v184 - (v78 * v177);
        *&a12 = v185 - (v79 * v177);
        *&a14 = -v78;
        *&a15 = -v79;
        *&a13 = v186 - (v59 * v177);
        v167 = -v59;
        v164 = v78;
        v165 = v79;
        v166 = v59;
      }

      else
      {
        v143 = -v174;
        v141 = -v176;
        v142 = -v175;
        *&a11 = v184 + (v78 * v177);
        *&a12 = v185 + (v79 * v177);
        *&a13 = v186 + (v59 * v177);
        *&a14 = v78;
        *&a15 = v79;
        v167 = v59;
      }

      v205 = __PAIR64__(LODWORD(a15), LODWORD(a14));
      v206 = v167;
      v207 = v164;
      v208 = v165;
      v209 = v166;
      v210 = v143;
      v211 = v141;
      v212 = v142;
      v216 = *&a11;
      v217 = *&a12;
      v218 = *&a13;
      v168 = v204;
      v169 = a7;
      v148 = v97;
      v170 = v93;
    }

    else
    {
      if (v108 != 5)
      {
        goto LABEL_44;
      }

      v213 = v78;
      v214 = v79;
      v144 = -v174;
      v145 = -v176;
      v146 = -v175;
      v215 = v59;
      if (v110 >= 0.0)
      {
        *&a11 = v184 - (v174 * v97);
        *&a12 = v185 - (v176 * v97);
        *&a14 = -v174;
        *&a15 = -v176;
        *&a13 = v186 - (v175 * v97);
        v147 = -v175;
        v144 = v174;
        v145 = v176;
        v146 = v175;
      }

      else
      {
        v53 = -v53;
        v54 = -v54;
        v55 = -v55;
        *&a11 = v184 + (v174 * v97);
        *&a12 = v185 + (v176 * v97);
        *&a13 = v186 + (v175 * v97);
        *&a14 = v174;
        *&a15 = v176;
        v147 = v175;
      }

      v148 = v93;
      v205 = __PAIR64__(LODWORD(a15), LODWORD(a14));
      v206 = v147;
      v207 = v144;
      v208 = v145;
      v209 = v146;
      v210 = v53;
      v211 = v54;
      v212 = v55;
      v216 = *&a11;
      v217 = *&a12;
      v218 = *&a13;
      v168 = v204;
      v169 = a7;
      v170 = v177;
    }
  }

  v171 = v198;
LABEL_73:
  Contacts = generateContacts(v169, &v205, v72, &v207, v168, v148, v170, v171, a11, a12, a13, *&a14, a15);
  v173 = Contacts == 0;
  result = Contacts != 0;
  if (v173)
  {
    v140 = 0;
  }

  else
  {
    v140 = v108 + 1;
  }

LABEL_45:
  *(a6 + 10) = v140;
  return result;
}

BOOL physx::Gu::contactCapsuleBox(uint64_t a1, uint64_t a2, float *a3, int32x2_t *a4, float *a5, uint64_t a6, float32x2_t *a7)
{
  v202 = *MEMORY[0x1E69E9840];
  v10 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v12 = a3[3];
  v14 = v12 + v12;
  v15 = ((v12 * (v12 + v12)) + -1.0) + (v10 * (v10 + v10));
  v16 = ((v10 + v10) * v11) + (v13 * v14);
  v17 = ((v10 + v10) * v13) - (v11 * v14);
  v18 = *(a1 + 4);
  v19 = *(a1 + 8);
  v20 = v15 * v19;
  v21 = v19 * v16;
  v22 = v17 * v19;
  v23 = a3[4];
  v24 = a3[5];
  v25 = a3[6];
  v182.f32[0] = v23 + v20;
  v182.f32[1] = v24 + v21;
  v183 = v22 + v25;
  v184.f32[0] = v23 - v20;
  v184.f32[1] = v24 - v21;
  v185 = v25 - v22;
  v26 = *a5;
  v27 = vdup_lane_s32(*a4, 1);
  v28 = vdup_laneq_s32(*a4->i8, 2);
  v29 = vdup_laneq_s32(*a4->i8, 3);
  _Q6 = vaddq_f32(*a4->i8, *a4->i8);
  v31 = vdup_lane_s32(vmul_f32(*a4, *_Q6.f32), 0);
  v32 = vmul_lane_f32(v27, *_Q6.f32, 1);
  v33 = vmul_laneq_f32(v28, _Q6, 2);
  v34 = vmul_n_f32(v27, _Q6.f32[0]);
  v35 = vmul_n_f32(v28, _Q6.f32[0]);
  v36 = vmul_n_f32(v29, _Q6.f32[0]);
  v37 = vmul_lane_f32(v28, *_Q6.f32, 1);
  v38 = vmul_lane_f32(v29, *_Q6.f32, 1);
  v39 = vmul_laneq_f32(v29, _Q6, 2);
  __asm { FMOV            V6.2S, #1.0 }

  v44 = vsub_f32(*_Q6.f32, v31);
  LODWORD(v45) = vsub_f32(v35, v38).u32[0];
  v46 = vadd_f32(v35, v38);
  v38.i32[0] = vadd_f32(v37, v36).u32[0];
  v177.f32[0] = (1.0 - v32.f32[1]) - v33.f32[1];
  v177.i32[1] = vadd_f32(v34, v39).u32[0];
  HIDWORD(v45) = vsub_f32(v34, v39).i32[1];
  *v178 = v45;
  *&v178[8] = vsub_f32(v44, v33).u32[0];
  v38.i32[1] = v46.i32[1];
  *&v179 = v38;
  *(&v179 + 1) = vzip1_s32(vsub_f32(v37, v36), vsub_f32(v44, v32));
  *&v47 = a4[2];
  DWORD2(v47) = a4[3].i32[0];
  HIDWORD(v47) = *(a2 + 4);
  v180 = v47;
  v48 = v18 + v26;
  v181 = *(a2 + 8);
  v176 = 0.0;
  physx::Gu::distanceSegmentBoxSquared(&v182, &v184, &v180, (&v180 + 12), &v177, &v176, &v174);
  v50 = v49;
  result = 0;
  if (v49 < (v48 * v48))
  {
    if (v49 != 0.0)
    {
      v52 = v175;
      v175 = (((v174.f32[0] * *v178) + (v174.f32[1] * *&v179)) + (v175 * *(&v179 + 3))) + *(&v180 + 2);
      v174 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v177, v174.f32[0]), vmul_n_f32(*&v178[4], v174.f32[1])), vmul_n_f32(*(&v179 + 4), v52)), *&v180);
      v53 = vsub_f32(vadd_f32(v182, vmul_n_f32(vsub_f32(v184, v182), v176)), v174);
      v54 = (v183 + (v176 * (v185 - v183))) - v175;
      v55 = sqrtf((COERCE_FLOAT(vmul_f32(v53, v53).i32[1]) + (v53.f32[0] * v53.f32[0])) + (v54 * v54));
      if (v55 > 0.0)
      {
        v56 = 1.0 / v55;
        v170 = vmul_n_f32(v53, v56);
        v172 = v170;
        v57 = v54 * v56;
        v173 = v54 * v56;
        GuGenerateVFContacts(a7, &v182, &v177, &v172, *(a1 + 4), *a5);
        if (a7[512].i32[0] == 2)
        {
          return 1;
        }

        v58 = *(a1 + 4);
        v59 = *a5;
        physx::Gu::computeOBBPoints(v201, &v180, &v180 + 3, &v177, &v178[4], (&v179 + 4));
        v61 = v182.f32[1];
        v60 = v182.f32[0];
        v199 = v182;
        v62 = v183;
        v200 = v183;
        v197 = v184;
        v198 = v185;
        _S5 = v184.f32[0] - v182.f32[0];
        v64 = v184.f32[1] - v182.f32[1];
        v65 = v185 - v183;
        v66 = sqrtf(((v64 * v64) + (_S5 * _S5)) + (v65 * v65));
        if (v66 > 0.0)
        {
          v67 = 0.01 / v66;
          v68 = _S5 * v67;
          v69 = v64 * v67;
          v70 = v65 * v67;
          v60 = v182.f32[0] - v68;
          v61 = v182.f32[1] - v69;
          v199.f32[0] = v182.f32[0] - v68;
          v199.f32[1] = v182.f32[1] - v69;
          v62 = v183 - v70;
          v200 = v183 - v70;
          v197.f32[0] = v184.f32[0] + v68;
          v197.f32[1] = v184.f32[1] + v69;
          v198 = v185 + v70;
          _S5 = (v184.f32[0] + v68) - (v182.f32[0] - v68);
          v64 = (v184.f32[1] + v69) - (v182.f32[1] - v69);
          v65 = (v185 + v70) - (v183 - v70);
        }

        v195 = __PAIR64__(LODWORD(v64), LODWORD(_S5));
        v196 = v65;
        _V20.S[1] = v170.i32[1];
        v72 = vmuls_lane_f32(-v65, v170, 1) + (v64 * v57);
        v73 = (v65 * v170.f32[0]) - (_S5 * v57);
        __asm { FMLA            S19, S5, V20.S[1] }

        v191 = -v72;
        v192 = -v73;
        v193 = -((-v64 * v170.f32[0]) + (_S5 * v170.f32[1]));
        v194 = -((-(v73 * v61) - (v72 * v60)) + (v193 * v62));
        v75 = fabsf(v72);
        v76 = fabsf(v73);
        v77 = fabsf(_S19);
        if (v76 <= v75 || v76 <= v77)
        {
          v125 = 1;
          if (v77 <= v75)
          {
            v127 = 2;
LABEL_55:
            v136 = 0;
            v137 = 1.0 / ((*(&v195 + v127) * v172.f32[v125]) - (*(&v195 + v125) * v172.f32[v127]));
            v138 = v58 + v59;
            v139 = a7[512].u32[0];
            v140 = vneg_f32(v170);
            do
            {
              v141 = &v201[3 * physx::Gu::getBoxEdges(void)::Indices[v136]];
              v142 = physx::Gu::getBoxEdges(void)::Indices[v136 + 1];
              v188 = 0.0;
              v186 = v140;
              v187 = -v57;
              if (intersectEdgeEdgePreca(&v199, &v197, &v195, &v191, v125, v127, &v186, v141, v137, &v201[3 * v142], &v188, &v189))
              {
                v143 = v188;
                if (v188 < v138 && v139 <= 0x3F)
                {
                  v144 = v188 - v58;
                  v145 = v190 - (v57 * v188);
                  v146 = &a7[8 * v139++];
                  a7[512].i32[0] = v139;
                  *v146 = v170;
                  v146[2] = vsub_f32(v189, vmul_n_f32(v170, v143));
                  v146[3].f32[0] = v145;
                  v146[1].f32[0] = v57;
                  v146[1].f32[1] = v144;
                  v146[6].i32[1] = -1;
                }
              }

              v136 += 2;
            }

            while (v136 != 24);
            if (!v139)
            {
              v147 = *(a1 + 4);
              a7[512].i32[0] = 1;
              *a7 = v170;
              a7[2] = v174;
              a7[3].f32[0] = v175;
              a7[1].f32[0] = v57;
              a7[1].f32[1] = sqrtf(v50) - v147;
              a7[6].i32[1] = -1;
            }

            return 1;
          }

          v126 = 0;
        }

        else
        {
          v125 = 0;
          v126 = 2;
        }

        v127 = v125;
        v125 = v126;
        goto LABEL_55;
      }
    }

    v79 = 0;
    v80 = *(a1 + 4);
    v81 = 0.0;
    v82 = 3.4028e38;
    *&v83 = 0.0;
    *&v84 = 0.0;
    do
    {
      v201[0] = 0.0;
      result = GuTestAxis((&v177 + v79 * 4), &v182, &v177, v201, v80);
      if (!result)
      {
        return result;
      }

      if (v201[0] < v82)
      {
        v84 = v177.i32[v79];
        v83 = v177.i32[v79 + 1];
        v81 = *(&v177 + v79 * 4 + 8);
        v82 = v201[0];
      }

      v79 += 3;
    }

    while (v79 != 9);
    v166 = *&v84;
    v167 = *&v83;
    v168 = v81;
    v171 = v82;
    v164 = v182.f32[1];
    v165 = v182.f32[0];
    v162 = v183;
    v163 = v184.f32[0];
    v85 = v184.f32[0] - v182.f32[0];
    v160 = v185;
    v161 = v184.f32[1];
    v86 = v184.f32[1] - v182.f32[1];
    v87 = v185 - v183;
    v88 = ((v86 * v86) + (v85 * v85)) + (v87 * v87);
    v89 = 0.0;
    v90 = 0.0;
    v91 = 0.0;
    if (v88 > 0.0)
    {
      v92 = 1.0 / sqrtf(v88);
      v89 = v85 * v92;
      v90 = v86 * v92;
      v91 = v87 * v92;
    }

    v93 = 0;
    v94 = -v91;
    v95 = -v89;
    v96 = -v90;
    do
    {
      v98 = v177.f32[v93 + 1];
      v97 = *(&v177 + v93 * 4 + 8);
      v99 = v177.f32[v93];
      v100 = (v98 * v94) + (v90 * v97);
      v101 = (v97 * v95) + (v91 * v99);
      v102 = (v99 * v96) + (v89 * v98);
      if (fabsf(v100) > 0.000001 || fabsf(v101) > 0.000001 || fabsf(v102) > 0.000001)
      {
        v103 = ((v101 * v101) + (v100 * v100)) + (v102 * v102);
        v104 = 0.0;
        v105 = 0.0;
        v106 = 0.0;
        if (v103 > 0.0)
        {
          v107 = 1.0 / sqrtf(v103);
          v106 = v100 * v107;
          v105 = v101 * v107;
          v104 = v102 * v107;
        }

        v201[0] = v106;
        v201[1] = v105;
        v201[2] = v104;
        v191 = 0.0;
        result = GuTestAxis(v201, &v182, &v177, &v191, v80);
        if (!result)
        {
          return result;
        }

        if (v191 < v171)
        {
          v166 = v106;
          v167 = v105;
          v168 = v104;
          v171 = v191;
        }

        v95 = -v89;
        v94 = -v91;
        v96 = -v90;
      }

      v93 += 3;
    }

    while (v93 != 9);
    v108 = ((v167 * (((v161 + v164) * 0.5) - *(&v180 + 1))) + (v166 * (((v163 + v165) * 0.5) - *&v180))) + (v168 * (((v160 + v162) * 0.5) - *(&v180 + 2)));
    if (v108 >= 0.0)
    {
      v109 = v166;
    }

    else
    {
      v109 = -v166;
    }

    if (v108 >= 0.0)
    {
      v110 = v167;
    }

    else
    {
      v110 = -v167;
    }

    if (v108 >= 0.0)
    {
      _S10 = v168;
    }

    else
    {
      _S10 = -v168;
    }

    v186 = __PAIR64__(LODWORD(v110), LODWORD(v109));
    v187 = _S10;
    GuGenerateVFContacts(a7, &v182, &v177, &v186, v80, *a5);
    if (a7[512].i32[0] == 2)
    {
      return 1;
    }

    v112 = *(a1 + 4);
    physx::Gu::computeOBBPoints(v201, &v180, &v180 + 3, &v177, &v178[4], (&v179 + 4));
    v113 = v183;
    v200 = v183;
    v199 = v182;
    v114 = v184;
    v197 = v184;
    v115 = v185;
    v198 = v185;
    _D0 = vsub_f32(v184, v182);
    v117 = v185 - v183;
    v118 = sqrtf((COERCE_FLOAT(vmul_f32(_D0, _D0).i32[1]) + (_D0.f32[0] * _D0.f32[0])) + (v117 * v117));
    if (v118 <= 0.0)
    {
      v124 = v182.f32[1];
      v121 = v183;
      v123.i32[0] = v182.i32[0];
    }

    else
    {
      v119 = 0.01 / v118;
      v120 = v117 * (0.01 / v118);
      v121 = v183 - v120;
      v200 = v183 - v120;
      v122 = vmul_n_f32(_D0, v119);
      v123 = vsub_f32(v182, v122);
      v199 = v123;
      v197 = vadd_f32(v184, v122);
      v198 = v185 + v120;
      _D0 = vsub_f32(v197, v123);
      v117 = (v185 + v120) - (v183 - v120);
      v124 = v123.f32[1];
    }

    v195 = _D0;
    v196 = v117;
    __asm { FMLA            S5, S10, V0.S[1] }

    v191 = _S5;
    v192 = (v117 * v109) - (_D0.f32[0] * _S10);
    v193 = (_D0.f32[0] * v110) - (_D0.f32[1] * v109);
    v194 = -(((v124 * v192) + (_S5 * v123.f32[0])) + (v193 * v121));
    v129 = fabsf(_S5);
    v130 = fabsf(v192);
    v131 = fabsf(v193);
    v132 = v130 <= v129 || v130 <= v131;
    v169 = v182;
    if (v132)
    {
      v133 = 1;
      if (v131 <= v129)
      {
        v135 = 2;
        goto LABEL_64;
      }

      v134 = 0;
    }

    else
    {
      v133 = 0;
      v134 = 2;
    }

    v135 = v133;
    v133 = v134;
LABEL_64:
    v148 = 0;
    v149 = 1.0 / ((*(&v195 + v133) * *(&v186 + v135)) - (*(&v195 + v135) * *(&v186 + v133)));
    v150 = a7[512].u32[0];
    do
    {
      v151 = &v201[3 * physx::Gu::getBoxEdges(void)::Indices[v148]];
      v152 = &v201[3 * physx::Gu::getBoxEdges(void)::Indices[v148 + 1]];
      v172.i32[0] = 0;
      if (intersectEdgeEdgePreca(&v199, &v197, &v195, &v191, v133, v135, &v186, v151, v149, v152, &v172, &v189) && v150 <= 0x3F)
      {
        v153 = v190 - (_S10 * v172.f32[0]);
        v154 = v189.f32[0];
        v155 = v189.f32[1] - (v110 * v172.f32[0]);
        v156 = -(v112 + v172.f32[0]);
        v157 = v109 * v172.f32[0];
        v158 = &a7[8 * v150++];
        a7[512].i32[0] = v150;
        v158->f32[0] = v109;
        v158->f32[1] = v110;
        v158[2].f32[0] = v154 - v157;
        v158[2].f32[1] = v155;
        v158[3].f32[0] = v153;
        v158[1].f32[0] = _S10;
        v158[1].f32[1] = v156;
        v158[6].i32[1] = -1;
      }

      v148 += 2;
    }

    while (v148 != 24);
    if (!v150)
    {
      v159 = v171 + *(a1 + 4);
      result = 1;
      a7[512].i32[0] = 1;
      a7->f32[0] = v109;
      a7->f32[1] = v110;
      a7[2] = vmul_f32(vadd_f32(v169, v114), 0x3F0000003F000000);
      a7[3].f32[0] = (v113 + v115) * 0.5;
      a7[1].f32[0] = _S10;
      a7[1].f32[1] = -v159;
      a7[6].i32[1] = -1;
      return result;
    }

    return 1;
  }

  return result;
}

uint64_t GuGenerateVFContacts(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, float a5, float a6)
{
  v11 = 0;
  v43 = a3[7].f32[0];
  v42 = a3[6];
  v40 = vneg_f32(v42);
  v41 = -v43;
  v12 = a4->f32[1];
  v13 = a4[1].f32[0];
  v14 = -(((a3->f32[1] * v12) + (a3->f32[0] * a4->f32[0])) + (a3[1].f32[0] * v13));
  v15 = -(((v12 * a3[2].f32[0]) + (a3[1].f32[1] * a4->f32[0])) + (a3[2].f32[1] * v13));
  v16 = -(((v12 * a3[3].f32[1]) + (a3[3].f32[0] * a4->f32[0])) + (a3[4].f32[0] * v13));
  *v39 = v14;
  *&v39[1] = v15;
  *&v39[2] = v16;
  v17 = a5 + a6;
  v18 = *(a1 + 4096);
  v19 = 1;
  do
  {
    v20 = (a2 + 12 * v11);
    v21 = COERCE_FLOAT(*v20) - a3[4].f32[1];
    v36 = *v20;
    v22 = COERCE_FLOAT(HIDWORD(*v20)) - a3[5].f32[0];
    v23 = v20[1].f32[0];
    v24 = v23 - a3[5].f32[1];
    v25 = ((v22 * a3->f32[1]) + (a3->f32[0] * v21)) + (a3[1].f32[0] * v24);
    v26 = ((v22 * a3[2].f32[0]) + (a3[1].f32[1] * v21)) + (a3[2].f32[1] * v24);
    v27 = v19;
    v28 = ((v22 * a3[3].f32[1]) + (a3[3].f32[0] * v21)) + (a3[4].f32[0] * v24);
    *v38 = v25;
    *&v38[1] = v26;
    *&v38[2] = v28;
    v37 = 0;
    result = physx::Gu::intersectRayAABB(&v40, &v42, v38, v39, &v37 + 1, &v37);
    if (result != -1)
    {
      v30 = *(&v37 + 1);
      if (*(&v37 + 1) < v17 && v18 <= 0x3F)
      {
        v31 = *(&v37 + 1) - a5;
        v32 = a4[1].f32[0];
        v33 = v23 - (*(&v37 + 1) * v32);
        v34 = (a1 + (v18++ << 6));
        *(a1 + 4096) = v18;
        v34[1].f32[0] = v32;
        v35 = vsub_f32(v36, vmul_n_f32(*a4, v30));
        *v34 = *a4;
        v34[2] = v35;
        v34[3].f32[0] = v33;
        v34[1].f32[1] = v31;
        v34[6].i32[1] = -1;
      }
    }

    v19 = 0;
    v11 = 1;
  }

  while ((v27 & 1) != 0);
  return result;
}

BOOL physx::Gu::contactCapsuleCapsule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, uint64_t a7)
{
  v10 = a2;
  v122 = *MEMORY[0x1E69E9840];
  v12 = *a3;
  v13 = *(a3 + 12);
  v14 = *(a1 + 8);
  v15 = *a4;
  v16 = v15 + v15;
  v17 = *(a4 + 12);
  v18 = *(a2 + 8);
  v19 = (((v17 * (v17 + v17)) + -1.0) + (v15 * (v15 + v15))) * v18;
  v20 = *(a4 + 16) - *(a3 + 16);
  v109 = (((v13 * (v13 + v13)) + -1.0) + (v12 * (v12 + v12))) * v14;
  v111 = -v109;
  v21 = *(a3 + 4);
  v22.i32[0] = vdup_lane_s32(v21, 1).u32[0];
  v22.f32[1] = -v21.f32[0];
  v110 = vmul_n_f32(vmla_n_f32(vmul_n_f32(v21, v12 + v12), v22, v13 + v13), v14);
  v99 = vmul_f32(v110, 0xC0000000C0000000);
  v100 = v109 * -2.0;
  v117 = v109 * -2.0;
  v118 = v99;
  v113 = v19 + v20;
  v115 = v20 - v19;
  v23 = v19 * -2.0;
  v102 = 0.0;
  v103 = 0.0;
  *v106 = -v109 - v109;
  v112 = vneg_f32(v110);
  *&v106[4] = vsub_f32(v112, v110);
  v104 = (v20 - v19) - (v19 + v20);
  v24 = *(a4 + 4);
  v25 = -v24.f32[0];
  v26 = vmul_n_f32(v24, v16);
  v24.i32[0] = vdup_lane_s32(v24, 1).u32[0];
  v24.f32[1] = v25;
  v27 = vmul_n_f32(vmla_n_f32(v26, v24, v17 + v17), v18);
  v28 = vsub_f32(*(a4 + 20), *(a3 + 20));
  v114 = vadd_f32(v27, v28);
  v116 = vsub_f32(v28, v27);
  v29 = -2.0 * v27.f32[0];
  _S9 = vmuls_lane_f32(-2.0, v27, 1);
  v119 = v19 * -2.0;
  v120 = -2.0 * v27.f32[0];
  v121 = _S9;
  v105 = vsub_f32(v116, v114);
  v31 = physx::Gu::distanceSegmentSegmentSquared(&v109, v106, &v113, &v104, &v103, &v102);
  v32 = *(a1 + 4);
  v33 = v32 + *(v10 + 4);
  v34 = (v33 + *a5) * (v33 + *a5);
  if (v31 < v34)
  {
    _D12 = v99;
    v35 = v100;
    _S5 = v99.i32[1];
    __asm { FMLA            S4, S5, V12.S[1] }

    v41 = sqrtf(_S4);
    v104 = v41;
    v42 = sqrtf(((v29 * v29) + (v23 * v23)) + (_S9 * _S9));
    v101 = v42;
    if (v41 != 0.0)
    {
      v35 = v100 * (1.0 / v41);
      v117 = v35;
      _D12 = vmul_n_f32(v99, 1.0 / v41);
      v118 = _D12;
    }

    if (v42 != 0.0)
    {
      v119 = v23 * (1.0 / v42);
      v120 = v29 * (1.0 / v42);
      _S9 = _S9 * (1.0 / v42);
      v121 = _S9;
    }

    __asm { FMLA            S6, S9, V12.S[1] }

    if (fabsf(_S6) <= 0.9998)
    {
      goto LABEL_31;
    }

    v44 = 0;
    v45 = *(a7 + 4096);
    v46 = &v117;
    v47 = &v109;
    v48 = &v104;
    v49 = v106;
    v50 = 1;
    v51 = v41;
    v52 = &v107;
    v53 = &v113;
    do
    {
      v54 = v50;
      v55 = v51 * 0.001;
      v56 = v47[2];
      v57 = *v47;
      v58 = *v46;
      v59 = v46[2];
      v60 = -(v51 * 0.001);
      LODWORD(v61) = HIDWORD(*v47);
      LODWORD(v62) = HIDWORD(*v46);
      v63 = 1;
      v64 = v45;
      do
      {
        v65 = v63;
        _ZF = (v63 & 1) == 0;
        if (v63)
        {
          v67 = 0;
        }

        else
        {
          v67 = 3;
        }

        v68 = v53[v67];
        if (_ZF)
        {
          v69 = 4;
        }

        else
        {
          v69 = 1;
        }

        v70 = v53[v69];
        v49->f32[0] = v68;
        v49->f32[1] = v70;
        if (_ZF)
        {
          v71 = 5;
        }

        else
        {
          v71 = 2;
        }

        v72 = v53[v71];
        v49[1].f32[0] = v72;
        v73 = ((v62 * (v70 - v61)) + (v58.f32[0] * (v68 - v57.f32[0]))) + (v59 * (v72 - v56));
        if (v73 >= v60 && v73 <= (v55 + *v48))
        {
          *v52 = vadd_f32(v57, vmul_n_f32(v58, v73));
          v52[1].f32[0] = v56 + (v59 * v73);
          v74 = v107;
          v75 = vsub_f32(v107, *v106);
          v76 = v108 - *&v106[8];
          v77 = (COERCE_FLOAT(vmul_f32(v75, v75).i32[1]) + (v75.f32[0] * v75.f32[0])) + (v76 * v76);
          if (v77 > 0.000001 && v77 < v34)
          {
            if (v64 <= 0x3F)
            {
              v79 = sqrtf(v77);
              v80 = v76 * (1.0 / v79);
              v81 = *(v10 + 4);
              v82 = *(a3 + 24) + (v108 - (v80 * v81));
              v45 = v64 + 1;
              *(a7 + 4096) = v64 + 1;
              v83 = (a7 + (v64 << 6));
              v83[1].f32[0] = v80;
              v84 = vmul_n_f32(v75, 1.0 / v79);
              v85 = vadd_f32(vsub_f32(v74, vmul_n_f32(v84, v81)), *(a3 + 16));
              *v83 = v84;
              v83[2] = v85;
              v83[3].f32[0] = v82;
              v83[1].f32[1] = v79 - v33;
              v83[6].i32[1] = -1;
              v64 = v45;
            }

            ++v44;
          }
        }

        v63 = 0;
      }

      while ((v65 & 1) != 0);
      v50 = 0;
      v53 = &v109;
      v52 = v106;
      v48 = &v101;
      v10 = a1;
      v49 = &v107;
      v51 = v42;
      v47 = &v113;
      v46 = &v119;
    }

    while ((v54 & 1) != 0);
    if (!v44)
    {
LABEL_31:
      v86 = v109 + (v103 * (v111 - v109));
      v87 = vadd_f32(v110, vmul_n_f32(vsub_f32(v112, v110), v103));
      _D16 = vsub_f32(v87, vadd_f32(v114, vmul_n_f32(vsub_f32(v116, v114), v102)));
      _S18 = _D16.i32[1];
      __asm { FMLA            S17, S18, V16.S[1] }

      if (_S17 >= 0.000001)
      {
        v91 = 1.0 / sqrtf(_S17);
        v35 = (v86 - (v113 + (v102 * (v115 - v113)))) * v91;
        _D12 = vmul_n_f32(_D16, v91);
      }

      else if (v41 <= 0.000001)
      {
        _D12 = 0;
        v35 = 1.0;
      }

      v92 = *(a7 + 4096);
      if (v92 <= 0x3F)
      {
        v93 = (v87.f32[1] + *(a3 + 24)) - vmuls_lane_f32(v32, _D12, 1);
        *(a7 + 4096) = v92 + 1;
        v94 = a7 + (v92 << 6);
        v95 = vdup_lane_s32(v87, 0);
        v95.f32[0] = v86;
        v96 = vdup_lane_s32(_D12, 0);
        v97 = vadd_f32(v95, *(a3 + 16));
        v96.f32[0] = v35;
        *v94 = v35;
        *(v94 + 4) = _D12;
        *(v94 + 16) = vsub_f32(v97, vmul_n_f32(v96, v32));
        *(v94 + 24) = v93;
        *(v94 + 12) = sqrtf(v31) - v33;
        *(v94 + 52) = -1;
      }
    }
  }

  return v31 < v34;
}

uint64_t physx::Gu::anonymous namespace::EntityReportContainerCallback::onEvent(physx::Gu::_anonymous_namespace_::EntityReportContainerCallback *this, unsigned int a2, unsigned int *a3)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = *(this + 1);
      v7 = *(v6 + 272);
      if ((*(v6 + 276) & 0x7FFFFFFFu) <= v7)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<256u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::growAndPushBack(v6, a3);
      }

      else
      {
        *(*(v6 + 264) + 4 * v7) = *a3;
        ++*(v6 + 272);
      }

      ++a3;
      --v5;
    }

    while (v5);
  }

  return 1;
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<256u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::growAndPushBack(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 276);
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
    v6 = (4 * v5);
    if (v6 > 0x100 || (*(result + 256) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(result, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v7 = result;
    }

    else
    {
      *(result + 256) = 1;
      v7 = result;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 272);
  v9 = *(v3 + 264);
  if (v8)
  {
    v10 = &v7[v8];
    v11 = *(v3 + 264);
    v12 = v7;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 272);
  }

  else
  {
    v14 = 0;
  }

  v7[v14] = *a2;
  if ((*(v3 + 276) & 0x80000000) == 0)
  {
    if (v9 == v3)
    {
      *(v3 + 256) = 0;
    }

    else if (v9)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 264) = v7;
  *(v3 + 276) = v5;
  ++*(v3 + 272);
  return result;
}

uint64_t physx::Gu::anonymous namespace::AccumCallback::processHit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 272);
  if ((*(v2 + 276) & 0x7FFFFFFFu) <= v3)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<256u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::growAndPushBack(v2, (a2 + 16));
  }

  else
  {
    *(*(v2 + 264) + 4 * v3) = *(a2 + 16);
    ++*(v2 + 272);
  }

  return 1;
}

BOOL physx::Gu::SweepEstimateAnyShapeMesh(physx::Gu::CCDShape const&,physx::Gu::CCDShape const&,physx::PxTransform const&,physx::PxTransform const&,physx::PxTransform const&,physx::PxTransform const&,float,float)::CB::processHit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v63 = 0;
  v56 = *(a1 + 24);
  v57 = a2 + 16;
  v58 = 1;
  v59 = &v63;
  v60 = xmmword_1E3113BA0;
  v61 = vdup_n_s32(0xFE7FFFFF);
  v62[0] = 0;
  *(v62 + 5) = 0;
  v8 = *(a1 + 64);
  v10 = v8[1].f32[0];
  v9 = v8[1].f32[1];
  v11 = (v9 * v9) + -0.5;
  v12 = v8->f32[1];
  v13 = (((v52.f32[1] + v52.f32[1]) * v12) + (v8->f32[0] * (v52.f32[0] + v52.f32[0]))) + (v10 * (v53 + v53));
  v14 = *(a1 + 40);
  LODWORD(v15) = *(v14 + 8);
  *&v16 = (-((((v9 * ((v10 * (v52.f32[0] + v52.f32[0])) - (v8->f32[0] * (v53 + v53)))) + ((v52.f32[1] + v52.f32[1]) * v11)) + (v12 * v13)) * *(v14 + 4)) - (*v14 * (((v9 * ((v12 * (v53 + v53)) - (v10 * (v52.f32[1] + v52.f32[1])))) + ((v52.f32[0] + v52.f32[0]) * v11)) + (v8->f32[0] * v13)))) - (*&v15 * (((v9 * ((v8->f32[0] * (v52.f32[1] + v52.f32[1])) - (v12 * (v52.f32[0] + v52.f32[0])))) + ((v53 + v53) * v11)) + (v10 * v13)));
  LODWORD(v17) = *(a1 + 16);
  if (*&v16 >= *&v17)
  {
    v18 = *(a1 + 72);
    v19 = *(a1 + 80);
    v20 = v19[1].f32[0] * 1.1;
    v21 = (v53 + v55) * 0.5;
    v22 = vmul_f32(vadd_f32(v52, v54), 0x3F0000003F000000);
    v23 = vdup_n_s32(0x3F8CCCCDu);
    v24 = vmul_f32(vadd_f32(vmul_f32(vsub_f32(v54, v52), 0x3F0000003F000000), vdup_n_s32(0x3C23D70Au)), v23);
    v25 = (((v55 - v53) * 0.5) + 0.01) * 1.1;
    v26 = vmul_f32(*v19, v23);
    v27 = *v18;
    v28 = v18[1].f32[0];
    if (fabsf(vsub_f32(*v18, v22).f32[0]) > vadd_f32(v26, v24).f32[0] || (v29.i32[1] = HIDWORD(*v18), v29.i32[0] = v18[1].i32[0], v30.i32[1] = v22.i32[1], v30.f32[0] = (v53 + v55) * 0.5, v31.i32[1] = v26.i32[1], v31.f32[0] = v19[1].f32[0] * 1.1, v32.i32[1] = v24.i32[1], v32.f32[0] = (((v55 - v53) * 0.5) + 0.01) * 1.1, v33 = vmvn_s8(vcge_f32(vadd_f32(v31, v32), vabd_f32(v29, v30))), (v33.i8[4] & 1) != 0) || (v34 = v33.i8[0], v35 = 0.0, (v34 & 1) != 0))
    {
      v36 = 0;
      v38 = *(a1 + 48);
      v37 = *(a1 + 56);
      v39 = v37[1].f32[0] - v38[1].f32[0];
      v72 = vsub_f32(*v37, *v38);
      v73 = v39;
      v70 = vadd_f32(v26, v27);
      v71 = v20 + v28;
      v68 = vsub_f32(v27, v26);
      v69 = v28 - v20;
      v66 = vadd_f32(v22, v24);
      v67 = v21 + v25;
      v64 = vsub_f32(v22, v24);
      v65 = v21 - v25;
      v35 = 0.0;
      v40 = 1.0;
      do
      {
        v41 = v72.f32[v36];
        if (v41 >= -0.000001)
        {
          if (v41 <= 0.000001)
          {
            if (v66.f32[v36] < v68.f32[v36] || v64.f32[v36] > v70.f32[v36])
            {
LABEL_27:
              v35 = 3.4028e38;
              break;
            }
          }

          else
          {
            v42 = v64.f32[v36];
            v43 = v70.f32[v36];
            if (v42 > v43)
            {
              goto LABEL_27;
            }

            v47 = v66.f32[v36];
            v48 = v68.f32[v36];
            if (v47 < v48)
            {
              v49 = (v48 - v47) / v41;
              if (v49 > v35)
              {
                v35 = v49;
              }
            }

            if (v43 > v42)
            {
LABEL_19:
              v50 = (v43 - v42) / v41;
              if (v50 < v40)
              {
                v40 = v50;
              }
            }
          }
        }

        else
        {
          v42 = v66.f32[v36];
          v43 = v68.f32[v36];
          if (v42 < v43)
          {
            goto LABEL_27;
          }

          v44 = v70.f32[v36];
          v45 = v64.f32[v36];
          if (v44 < v45)
          {
            v46 = (v44 - v45) / v41;
            if (v46 > v35)
            {
              v35 = v46;
            }
          }

          if (v42 > v43)
          {
            goto LABEL_19;
          }
        }

        if (v35 > v40)
        {
          goto LABEL_27;
        }

        ++v36;
      }

      while (v36 != 3);
    }

    if (*(a1 + 12) < v35)
    {
      v35 = *(a1 + 12);
    }

    *(a1 + 12) = v35;
    *a6 = v35;
  }

  return *(a1 + 12) > 0.0;
}

unint64_t generateContacts(uint64_t a1, int32x2_t *a2, float *a3, uint64_t a4, float *a5, float a6, float a7, float a8, double a9, double a10, double a11, int32x2_t a12, double a13)
{
  v14 = 0;
  v15 = 0;
  v217 = *MEMORY[0x1E69E9840];
  v16 = *(a4 + 4);
  v17 = *(a4 + 40);
  v18 = *(a4 + 44);
  v19 = *(a4 + 36);
  v20 = -(v17 * v16) - (*a4 * v19);
  v21 = *(a4 + 16);
  v22 = *(a4 + 20);
  v23 = *(a4 + 8);
  v24 = *(a4 + 12);
  v25 = -(v17 * v21) - (v24 * v19);
  v26 = *(a4 + 24);
  v27 = *(a4 + 28);
  v28 = -(v17 * v27) - (v26 * v19);
  v29 = a5[1];
  v31 = a5[2];
  v30 = a5[3];
  v32 = ((v24 * *a5) + (v21 * v29)) + (v22 * v31);
  v33 = a5[4];
  v34 = a5[5];
  v35 = ((v24 * v30) + (v21 * v33)) + (v22 * v34);
  v36 = a5[6];
  v37 = a5[7];
  v38 = a5[8];
  v39 = a5[9];
  v40 = ((v24 * v36) + (v21 * v37)) + (v22 * v38);
  v41 = a5[10];
  v42 = a5[11];
  v43 = *(a4 + 32);
  v44 = v25 - (v22 * v18);
  v45 = ((v24 * v39) + (v21 * v41)) + (v22 * v42);
  v46 = ((v26 * v39) + (v27 * v41)) + (v43 * v42);
  v47 = v44 + v45;
  v48 = v20 - (v23 * v18);
  v49 = v28 - (v43 * v18);
  v50 = ((*a4 * *a5) + (v16 * v29)) + (v23 * v31);
  v51 = ((v26 * *a5) + (v27 * v29)) + (v43 * v31);
  v52 = ((*a4 * v30) + (v16 * v33)) + (v23 * v34);
  v53 = ((v26 * v30) + (v27 * v33)) + (v43 * v34);
  v54 = ((*a4 * v36) + (v16 * v37)) + (v23 * v38);
  v55 = ((v26 * v36) + (v27 * v37)) + (v43 * v38);
  v56 = v48 + (((*a4 * v39) + (v16 * v41)) + (v23 * v42));
  v57 = v49 + v46;
  v58 = a3[1];
  v59 = v50 * *a3;
  v60 = v32 * *a3;
  v61 = v51 * *a3;
  v62 = v52 * v58;
  v63 = v35 * v58;
  v64 = v53 * v58;
  v65 = a3[2];
  v66 = v54 * v65;
  v67 = v40 * v65;
  v68 = v56 - v59;
  v69 = v47 - v60;
  v70 = v62 + (v54 * v65);
  v216[0] = (v56 - v59) - v70;
  v216[1] = (v47 - v60) - (v63 + v67);
  v71 = v55 * v65;
  v72 = v57 - v61;
  v73 = v56 + v59;
  v216[2] = (v57 - v61) - (v64 + v71);
  v74 = v47 + v60;
  v75 = v57 + v61;
  v216[4] = v73 - v70;
  v216[5] = v74 - (v63 + v67);
  v216[6] = v75 - (v64 + v71);
  v216[24] = v68 + v70;
  v216[25] = v69 + (v63 + v67);
  v216[26] = v72 + (v64 + v71);
  v216[28] = v73 + v70;
  v216[29] = v74 + (v63 + v67);
  v216[30] = v75 + (v64 + v71);
  v76 = v63 - v67;
  v216[8] = v68 + (v62 - v66);
  v216[9] = v69 + v76;
  v77 = v64 - v71;
  v216[10] = v72 + v77;
  v216[12] = v73 + (v62 - v66);
  v216[13] = v74 + v76;
  v216[14] = v75 + v77;
  v216[16] = v68 - (v62 - v66);
  v216[17] = v69 - v76;
  v216[18] = v72 - v77;
  v216[20] = v73 - (v62 - v66);
  v216[21] = v74 - v76;
  v216[22] = v75 - v77;
  *(a1 + 4096) = 0;
  v78 = a6 + a8;
  v79 = a7 + a8;
  do
  {
    v80 = v216[v14];
    v81 = &v216[v14];
    if (v80 >= -a8)
    {
      *(v81 + 12) = 1;
      v82 = v81[1];
      if (fabsf(v82) <= v78 && (v83 = v81[2], fabsf(v83) <= v79))
      {
        BYTE1(v216[v14 + 3]) = 1;
        if (v15 <= 0x3F)
        {
          v84 = a1 + (v15++ << 6);
          *(a1 + 4096) = v15;
          *v84 = *a2;
          v85 = a2[1].i32[0];
          *(v84 + 16) = v80;
          *(v84 + 20) = v82;
          *(v84 + 24) = v83;
          *(v84 + 8) = v85;
          *(v84 + 12) = -v80;
          *(v84 + 52) = -1;
        }
      }

      else
      {
        *(v81 + 13) = 0;
      }
    }

    else
    {
      *(v81 + 6) = 0;
    }

    v14 += 4;
  }

  while (v14 != 32);
  v86 = -v78;
  v87 = -v79;
  v88 = 96;
  v89 = &unk_1E31166F4;
  do
  {
    v90 = &v216[4 * *(v89 - 1)];
    v91 = &v216[4 * *v89];
    if ((v90[3] & 1) != 0 || *(v91 + 12) == 1)
    {
      if (*(v90 + 13) != 1 || (*(v91 + 13) & 1) == 0)
      {
        v92 = v90 + 1;
        v93 = v90[1];
        v94 = v91 + 1;
        v95 = v91[1];
        if (v93 <= v95)
        {
          v96 = &v216[4 * *v89];
        }

        else
        {
          v96 = &v216[4 * *(v89 - 1)];
        }

        if (v93 <= v95)
        {
          v97 = &v216[4 * *(v89 - 1)];
        }

        else
        {
          v97 = &v216[4 * *v89];
        }

        if (v93 <= v95)
        {
          v98 = v90[1];
        }

        else
        {
          v98 = v91[1];
        }

        if (v93 <= v95)
        {
          v99 = v90 + 1;
        }

        else
        {
          v99 = v91 + 1;
        }

        if (v98 < v78)
        {
          v100 = v93 <= v95 ? v91[1] : v90[1];
          if (v100 >= v78)
          {
            v101 = (v78 - v98) / (v100 - v98);
            v102 = v93 <= v95 ? &v216[4 * *(v89 - 1)] : &v216[4 * *v89];
            v103 = v102[2];
            v104 = v93 <= v95 ? &v216[4 * *v89] : &v216[4 * *(v89 - 1)];
            v105 = v103 + ((v104[2] - v103) * v101);
            if (fabsf(v105) <= v79)
            {
              v106 = *v97 + ((*v96 - *v97) * v101);
              if ((v106 + a8) >= 0.0 && v15 <= 0x3F)
              {
                v107 = a1 + (v15++ << 6);
                *(a1 + 4096) = v15;
                *v107 = *a2;
                v108 = a2[1].i32[0];
                *(v107 + 16) = v106;
                *(v107 + 20) = v78;
                *(v107 + 24) = v105;
                *(v107 + 8) = v108;
                *(v107 + 12) = -v106;
                *(v107 + 52) = -1;
              }
            }
          }
        }

        if (v98 < v86)
        {
          v109 = v93 <= v95 ? v91 + 1 : v90 + 1;
          if (*v109 >= v86)
          {
            v110 = (v86 - v98) / (*v109 - v98);
            v111 = v93 <= v95 ? v90 : v91;
            v112 = v111[2];
            v113 = v93 <= v95 ? v91 : v90;
            v114 = v112 + ((v113[2] - v112) * v110);
            if (fabsf(v114) <= v79)
            {
              v115 = *v97 + ((*v96 - *v97) * v110);
              if ((v115 + a8) >= 0.0 && v15 <= 0x3F)
              {
                v116 = a1 + (v15++ << 6);
                *(a1 + 4096) = v15;
                *v116 = *a2;
                v117 = a2[1].i32[0];
                *(v116 + 16) = v115;
                *(v116 + 20) = v86;
                *(v116 + 24) = v114;
                *(v116 + 8) = v117;
                *(v116 + 12) = -v115;
                *(v116 + 52) = -1;
              }
            }
          }
        }

        v118 = v91 + 2;
        if (v93 <= v95)
        {
          v119 = v90;
        }

        else
        {
          v119 = v91;
        }

        if (v93 <= v95)
        {
          v120 = v90 + 2;
        }

        else
        {
          v120 = v91 + 2;
        }

        v121 = v119[2];
        if (v93 > v95)
        {
          v91 = v90;
          v118 = v90 + 2;
        }

        v122 = v91[2];
        if (v121 <= v122)
        {
          v91 = v96;
        }

        else
        {
          v91 = v97;
        }

        if (v121 <= v122)
        {
          v90 = v97;
        }

        else
        {
          v90 = v96;
        }

        if (v121 <= v122)
        {
          v123 = v119[2];
        }

        else
        {
          v123 = v122;
        }

        if (v123 < v79)
        {
          v124 = v121 <= v122 ? v122 : v119[2];
          if (v124 >= v79)
          {
            v125 = (v79 - v123) / (v124 - v123);
            if (v93 <= v95)
            {
              v126 = v94;
            }

            else
            {
              v126 = v92;
            }

            if (v121 <= v122)
            {
              v127 = v99;
            }

            else
            {
              v127 = v126;
            }

            if (v121 > v122)
            {
              v126 = v99;
            }

            v128 = *v127 + ((*v126 - *v127) * v125);
            if (fabsf(v128) <= v78)
            {
              v129 = *v90 + ((*v91 - *v90) * v125);
              if ((v129 + a8) >= 0.0 && v15 <= 0x3F)
              {
                v130 = a1 + (v15++ << 6);
                *(a1 + 4096) = v15;
                *v130 = *a2;
                v131 = a2[1].i32[0];
                *(v130 + 16) = v129;
                *(v130 + 20) = v128;
                *(v130 + 24) = v79;
                *(v130 + 8) = v131;
                *(v130 + 12) = -v129;
                *(v130 + 52) = -1;
              }
            }
          }
        }

        if (v123 < v87)
        {
          v132 = v121 <= v122 ? v118 : v120;
          if (*v132 >= v87)
          {
            v133 = (v87 - v123) / (*v132 - v123);
            if (v93 <= v95)
            {
              v92 = v94;
            }

            if (v121 <= v122)
            {
              v134 = v99;
            }

            else
            {
              v134 = v92;
            }

            if (v121 > v122)
            {
              v92 = v99;
            }

            v135 = *v134 + ((*v92 - *v134) * v133);
            if (fabsf(v135) <= v78)
            {
              v136 = *v90 + ((*v91 - *v90) * v133);
              if ((v136 + a8) >= 0.0 && v15 <= 0x3F)
              {
                v137 = a1 + (v15++ << 6);
                *(a1 + 4096) = v15;
                *v137 = *a2;
                v138 = a2[1].i32[0];
                *(v137 + 16) = v136;
                *(v137 + 20) = v135;
                *(v137 + 24) = v87;
                *(v137 + 8) = v138;
                *(v137 + 12) = -v136;
                *(v137 + 52) = -1;
              }
            }
          }
        }
      }

      if ((v90[3] & 1) == 0 && *(v91 + 13) != 1 || (v91[3] & 1) == 0 && (*(v90 + 13) & 1) == 0)
      {
        v139 = -*v90 / (*v91 - *v90);
        v140 = v90[1] + ((v91[1] - v90[1]) * v139);
        if (fabsf(v140) <= v78)
        {
          v141 = v90[2] + ((v91[2] - v90[2]) * v139);
          if (fabsf(v141) <= v79 && v15 <= 0x3F)
          {
            v142 = a1 + (v15++ << 6);
            *(a1 + 4096) = v15;
            a13 = *a2;
            *v142 = *a2;
            *(v142 + 8) = a2[1].i32[0];
            *(v142 + 20) = v140;
            *(v142 + 24) = v141;
            *(v142 + 12) = 0;
            *(v142 + 16) = 0;
            *(v142 + 52) = -1;
          }
        }
      }
    }

    v89 += 2;
    v88 -= 8;
  }

  while (v88);
  v143 = 0;
  do
  {
    v144 = (&generateContacts(physx::Gu::ContactBuffer &,physx::PxVec3 const&,float,float,physx::PxVec3 const&,physx::Cm::Matrix34 const&,physx::Cm::Matrix34 const&,float)::face + 16 * v88);
    v145 = &v216[4 * *v144];
    v215[0] = v145;
    if (*(v145 + 12) == 1)
    {
      v146 = &v216[4 * v144[1]];
      v215[1] = v146;
      if (*(v146 + 12) == 1)
      {
        v147 = &v216[4 * v144[2]];
        v215[2] = v147;
        if (*(v147 + 12) == 1)
        {
          v148 = &v216[4 * v144[3]];
          v215[3] = v148;
          if (*(v148 + 12) == 1 && (*(v145 + 13) != 1 || *(v146 + 13) != 1 || *(v147 + 13) != 1 || (*(v148 + 13) & 1) == 0))
          {
            if ((v143 & 1) == 0)
            {
              v149 = 0;
              v150 = v148[1];
              v151 = v148[2];
              while (1)
              {
                v152 = v151;
                v153 = v150;
                v154 = v215[v149];
                v150 = *(v154 + 4);
                v151 = *(v154 + 8);
                if ((((v150 - v153) * (v87 - v152)) - ((v151 - v152) * (v86 - v153))) >= 0.0)
                {
                  break;
                }

                if (++v149 == 4)
                {
                  a12.i32[0] = *v145;
                  *&a13 = v145[1];
                  v13.i32[0] = v145[2];
                  v155.f32[0] = *v148;
                  v155.f32[1] = *v146;
                  v156.f32[1] = v146[1];
                  v157 = vsub_f32(v155, vdup_lane_s32(a12, 0));
                  v156.f32[0] = v148[1];
                  v158 = vsub_f32(v156, vdup_lane_s32(*&a13, 0));
                  v159.f32[1] = v146[2];
                  v159.f32[0] = v148[2];
                  v160 = vsub_f32(v159, vdup_lane_s32(v13, 0));
                  a13 = COERCE_DOUBLE(vmul_f32(vmla_n_f32(vmul_n_f32(v160, v87 - *v13.i32), v158, v86 - *&a13), v157));
                  v161 = vdiv_f32(*&a13, vmla_f32(vmla_f32(vmul_f32(v158, v158), v157, v157), v160, v160));
                  v162 = v161.f32[0] + (*v145 + v161.f32[1]);
                  if (v162 >= 0.0)
                  {
                    v143 |= 1u;
                    if (v15 <= 0x3F)
                    {
                      v163 = a1 + (v15++ << 6);
                      *(a1 + 4096) = v15;
                      a12 = *a2;
                      *v163 = *a2;
                      a12.i32[0] = a2[1].i32[0];
                      *(v163 + 16) = v162;
                      *(v163 + 20) = v86;
                      *(v163 + 24) = v87;
                      *(v163 + 8) = a12.i32[0];
                      *(v163 + 12) = -v162;
                      *(v163 + 52) = -1;
                    }
                  }

                  break;
                }
              }
            }

            if ((v143 & 2) == 0)
            {
              v164 = 0;
              v165 = v148[1];
              v166 = v148[2];
              while (1)
              {
                v167 = v166;
                v168 = v165;
                v169 = v215[v164];
                v165 = *(v169 + 4);
                v166 = *(v169 + 8);
                if ((((v165 - v168) * (v87 - v167)) - ((v166 - v167) * (v78 - v168))) >= 0.0)
                {
                  break;
                }

                if (++v164 == 4)
                {
                  a12.i32[0] = *v145;
                  *&a13 = v145[1];
                  v13.i32[0] = v145[2];
                  v170.f32[0] = *v148;
                  v170.f32[1] = *v146;
                  v171.f32[1] = v146[1];
                  v172 = vsub_f32(v170, vdup_lane_s32(a12, 0));
                  v171.f32[0] = v148[1];
                  v173 = vsub_f32(v171, vdup_lane_s32(*&a13, 0));
                  v174.f32[1] = v146[2];
                  v174.f32[0] = v148[2];
                  v175 = vsub_f32(v174, vdup_lane_s32(v13, 0));
                  a13 = COERCE_DOUBLE(vmul_f32(vmla_n_f32(vmul_n_f32(v175, v87 - *v13.i32), v173, v78 - *&a13), v172));
                  v176 = vdiv_f32(*&a13, vmla_f32(vmla_f32(vmul_f32(v173, v173), v172, v172), v175, v175));
                  v177 = v176.f32[0] + (*v145 + v176.f32[1]);
                  if (v177 >= 0.0)
                  {
                    v143 |= 2u;
                    if (v15 <= 0x3F)
                    {
                      v178 = a1 + (v15++ << 6);
                      *(a1 + 4096) = v15;
                      a12 = *a2;
                      *v178 = *a2;
                      a12.i32[0] = a2[1].i32[0];
                      *(v178 + 16) = v177;
                      *(v178 + 20) = v78;
                      *(v178 + 24) = v87;
                      *(v178 + 8) = a12.i32[0];
                      *(v178 + 12) = -v177;
                      *(v178 + 52) = -1;
                    }
                  }

                  break;
                }
              }
            }

            if ((v143 & 4) == 0)
            {
              v179 = 0;
              v180 = v148[1];
              v181 = v148[2];
              while (1)
              {
                v182 = v181;
                v183 = v180;
                v184 = v215[v179];
                v180 = *(v184 + 4);
                v181 = *(v184 + 8);
                if ((((v180 - v183) * (v79 - v182)) - ((v181 - v182) * (v86 - v183))) >= 0.0)
                {
                  break;
                }

                if (++v179 == 4)
                {
                  a12.i32[0] = *v145;
                  *&a13 = v145[1];
                  v13.i32[0] = v145[2];
                  v185.f32[0] = *v148;
                  v185.f32[1] = *v146;
                  v186.f32[1] = v146[1];
                  v187 = vsub_f32(v185, vdup_lane_s32(a12, 0));
                  v186.f32[0] = v148[1];
                  v188 = vsub_f32(v186, vdup_lane_s32(*&a13, 0));
                  v189.f32[1] = v146[2];
                  v189.f32[0] = v148[2];
                  v190 = vsub_f32(v189, vdup_lane_s32(v13, 0));
                  a13 = COERCE_DOUBLE(vmul_f32(vmla_n_f32(vmul_n_f32(v190, v79 - *v13.i32), v188, v86 - *&a13), v187));
                  v191 = vdiv_f32(*&a13, vmla_f32(vmla_f32(vmul_f32(v188, v188), v187, v187), v190, v190));
                  v192 = v191.f32[0] + (*v145 + v191.f32[1]);
                  if (v192 >= 0.0)
                  {
                    v143 |= 4u;
                    if (v15 <= 0x3F)
                    {
                      v193 = a1 + (v15++ << 6);
                      *(a1 + 4096) = v15;
                      a12 = *a2;
                      *v193 = *a2;
                      a12.i32[0] = a2[1].i32[0];
                      *(v193 + 16) = v192;
                      *(v193 + 20) = v86;
                      *(v193 + 24) = v79;
                      *(v193 + 8) = a12.i32[0];
                      *(v193 + 12) = -v192;
                      *(v193 + 52) = -1;
                    }
                  }

                  break;
                }
              }
            }

            if ((v143 & 8) == 0)
            {
              v194 = 0;
              v195 = v148[1];
              v196 = v148[2];
              while (1)
              {
                v197 = v196;
                v198 = v195;
                v199 = v215[v194];
                v195 = *(v199 + 4);
                v196 = *(v199 + 8);
                if ((((v195 - v198) * (v79 - v197)) - ((v196 - v197) * (v78 - v198))) >= 0.0)
                {
                  break;
                }

                if (++v194 == 4)
                {
                  a12.i32[0] = *v145;
                  *&a13 = v145[1];
                  v13.i32[0] = v145[2];
                  v200.f32[0] = *v148;
                  v200.f32[1] = *v146;
                  v201.f32[1] = v146[1];
                  v202 = vsub_f32(v200, vdup_lane_s32(a12, 0));
                  v201.f32[0] = v148[1];
                  v203 = vsub_f32(v201, vdup_lane_s32(*&a13, 0));
                  v204.f32[1] = v146[2];
                  v204.f32[0] = v148[2];
                  v205 = vsub_f32(v204, vdup_lane_s32(v13, 0));
                  a13 = COERCE_DOUBLE(vmul_f32(vmla_n_f32(vmul_n_f32(v205, v79 - *v13.i32), v203, v78 - *&a13), v202));
                  v206 = vdiv_f32(*&a13, vmla_f32(vmla_f32(vmul_f32(v203, v203), v202, v202), v205, v205));
                  v207 = v206.f32[0] + (*v145 + v206.f32[1]);
                  if (v207 >= 0.0)
                  {
                    v143 |= 8u;
                    if (v15 <= 0x3F)
                    {
                      v208 = a1 + (v15++ << 6);
                      *(a1 + 4096) = v15;
                      a12 = *a2;
                      *v208 = *a2;
                      a12.i32[0] = a2[1].i32[0];
                      *(v208 + 16) = v207;
                      *(v208 + 20) = v78;
                      *(v208 + 24) = v79;
                      *(v208 + 8) = a12.i32[0];
                      *(v208 + 12) = -v207;
                      *(v208 + 52) = -1;
                    }
                  }

                  break;
                }
              }
            }
          }
        }
      }
    }

    if (v88 > 4)
    {
      break;
    }

    ++v88;
  }

  while (v143 != 15);
  if (v15)
  {
    v209 = (a1 + 24);
    v210 = v15;
    do
    {
      v211 = *(v209 - 2);
      v212 = *(v209 - 1);
      v213 = (((v211 * *(a4 + 8)) + (v212 * *(a4 + 20))) + (*v209 * *(a4 + 32))) + *(a4 + 44);
      *(v209 - 1) = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*a4, v211), vmul_n_f32(*(a4 + 12), v212)), vmul_n_f32(*(a4 + 24), *v209)), *(a4 + 36));
      *v209 = v213;
      v209 += 16;
      --v210;
    }

    while (v210);
  }

  return v15;
}

BOOL intersectEdgeEdgePreca(float *a1, float *a2, uint64_t a3, float *a4, unsigned int a5, unsigned int a6, float32x2_t *a7, float *a8, float a9, float *a10, float *a11, float32x2_t *a12)
{
  v12 = *a8;
  v13 = a8[1];
  v14 = a4[1];
  v15 = a8[2];
  v16 = a4[2];
  v17 = a4[3];
  v18 = (((v13 * v14) + (*a8 * *a4)) + (v15 * v16)) + v17;
  v19 = a10[1];
  v20 = a10[2];
  if ((v18 * (v17 + (((v14 * v19) + (*a10 * *a4)) + (v20 * v16)))) > 0.0)
  {
    return 0;
  }

  v21 = *a10 - v12;
  v22 = v19 - v13;
  v23 = v20 - v15;
  v24 = ((v14 * v22) + (*a4 * v21)) + (v16 * v23);
  if (v24 == 0.0)
  {
    return 0;
  }

  v25 = v18 / v24;
  a12->f32[0] = v12 - (v21 * v25);
  a12->f32[1] = v13 - (v22 * v25);
  a12[1].f32[0] = v15 - (v23 * v25);
  v26 = ((*(a3 + 4 * a5) * (a12->f32[a6] - a1[a6])) - (*(a3 + 4 * a6) * (a12->f32[a5] - a1[a5]))) * a9;
  *a11 = v26;
  if (v26 < 0.0)
  {
    return 0;
  }

  v28 = v26 * a7[1].f32[0];
  v29 = vsub_f32(*a12, vmul_n_f32(*a7, v26));
  *a12 = v29;
  v30 = a12[1].f32[0] - v28;
  a12[1].f32[0] = v30;
  return ((((a1[1] - v29.f32[1]) * (a2[1] - v29.f32[1])) + ((*a1 - v29.f32[0]) * (*a2 - v29.f32[0]))) + ((a1[2] - v30) * (a2[2] - v30))) < 0.0;
}

BOOL GuTestAxis(float *a1, float *a2, float *a3, float *a4, float a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a2[3];
  v9 = ((a2[1] * v6) + (*a2 * *a1)) + (a2[2] * v7);
  v10 = a2[5];
  v11 = ((v6 * a2[4]) + (v8 * *a1)) + (v10 * v7);
  if (v9 <= v11)
  {
    v12 = ((a2[1] * v6) + (*a2 * *a1)) + (a2[2] * v7);
  }

  else
  {
    v12 = ((v6 * a2[4]) + (v8 * *a1)) + (v10 * v7);
  }

  if (v9 > v11)
  {
    v11 = ((a2[1] * v6) + (*a2 * *a1)) + (a2[2] * v7);
  }

  v13 = v12 - a5;
  v14 = v11 + a5;
  v15 = ((v6 * a3[10]) + (a3[9] * v5)) + (a3[11] * v7);
  v16 = ((a3[13] * fabsf(((v6 * a3[4]) + (a3[3] * v5)) + (a3[5] * v7))) + (fabsf(((v6 * a3[1]) + (*a3 * v5)) + (a3[2] * v7)) * a3[12])) + (fabsf(((v6 * a3[7]) + (a3[6] * v5)) + (a3[8] * v7)) * a3[14]);
  v17 = v15 - v16;
  v18 = v15 + v16;
  result = v18 >= v13 && v14 >= v17;
  if (result)
  {
    v20 = v14 - v17;
    if (v20 >= (v18 - v13))
    {
      v20 = v18 - v13;
    }

    *a4 = v20;
  }

  return result;
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<256u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  v4 = (4 * a2);
  if (v4 > 0x100 || (*(result + 256) & 1) != 0)
  {
    result = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(result, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v5 = result;
  }

  else
  {
    *(result + 256) = 1;
    v5 = result;
  }

  v6 = *(v3 + 272);
  v7 = *(v3 + 264);
  if (v6)
  {
    v8 = &v5[v6];
    v9 = *(v3 + 264);
    v10 = v5;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  if ((*(v3 + 276) & 0x80000000) == 0)
  {
    if (v7 == v3)
    {
      *(v3 + 256) = 0;
    }

    else if (v7)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 264) = v5;
  *(v3 + 276) = a2;
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::supportPoint(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(*(a1 + 8) + 16 * (1 - a2) + 48);
  v4 = vmulq_n_f32(*v2, v3.f32[0]);
  v4.i32[3] = 0;
  v5 = vmulq_lane_f32(v2[1], *v3.f32, 1);
  v5.i32[3] = 0;
  v6 = vmulq_laneq_f32(v2[2], v3, 2);
  v6.i32[3] = 0;
  *&result = vaddq_f32(v2[3], vaddq_f32(vaddq_f32(v4, v5), v6)).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(float32x4_t *a1, float32x2_t *a2)
{
  v2 = a1->i64[1];
  v3 = a1[1].i64[0];
  v4 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v4.i32[3] = 0;
  v5 = vmulq_lane_f32(a1[3], *a2, 1);
  v5.i32[3] = 0;
  v6 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v6.i32[3] = 0;
  v7 = vaddq_f32(vaddq_f32(v4, v5), v6);
  v8 = v2[3];
  v9 = v2[4];
  v10 = vmulq_f32(v8, v7);
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  v11 = vmulq_f32(v7, v9);
  v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
  v12 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v10.f32, *v10.f32), vpadd_f32(*v11.f32, *v11.f32)), 0)), v8, v9);
  v13 = vmulq_n_f32(*v3, v12.f32[0]);
  v13.i32[3] = 0;
  v14 = vmulq_lane_f32(v3[1], *v12.f32, 1);
  v14.i32[3] = 0;
  v15 = vmulq_laneq_f32(v3[2], v12, 2);
  v15.i32[3] = 0;
  *&result = vaddq_f32(v3[3], vaddq_f32(v15, vaddq_f32(v13, v14))).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(float32x4_t *a1, float32x2_t *a2, _DWORD *a3)
{
  v3 = a1->i64[1];
  v4 = a1[1].i64[0];
  v5 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v5.i32[3] = 0;
  v6 = vmulq_lane_f32(a1[3], *a2, 1);
  v6.i32[3] = 0;
  v7 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v7.i32[3] = 0;
  v8 = vaddq_f32(vaddq_f32(v5, v6), v7);
  v9 = vmulq_f32(v3[3], v8);
  v9.i64[0] = vpaddq_f32(v9, v9).u64[0];
  v10 = vmulq_f32(v8, v3[4]);
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  *v10.f32 = vand_s8(vcgt_f32(vpadd_f32(*v9.f32, *v9.f32), vpadd_f32(*v10.f32, *v10.f32)), 0x100000001);
  *a3 = v10.i32[0];
  v11 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vdupq_lane_s32(*v10.f32, 0), 0x1FuLL)), v3[3], v3[4]);
  v12 = vmulq_n_f32(*v4, v11.f32[0]);
  v12.i32[3] = 0;
  v13 = vmulq_lane_f32(v4[1], *v11.f32, 1);
  v13.i32[3] = 0;
  v14 = vmulq_laneq_f32(v4[2], v11, 2);
  v14.i32[3] = 0;
  *&result = vaddq_f32(v4[3], vaddq_f32(v14, vaddq_f32(v12, v13))).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::getCenter(uint64_t a1)
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

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::CapsuleV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, float32x4_t a7, float32x2_t a8, double a9, float32x4_t a10)
{
  v10 = a4;
  v354 = *MEMORY[0x1E69E9840];
  v15 = a1->i64[1];
  v16 = (v15 + 20);
  v17 = vld1_dup_f32(v16);
  v18 = *(a2 + 8);
  v19 = (v18 + 20);
  v20 = vld1_dup_f32(v19);
  v21 = vmin_f32(v17, v20);
  v22 = vdup_n_s32(0x3DCCCCCDu);
  v23 = vmul_f32(v21, v22);
  v21.i32[0] = *(v15 + 16);
  v22.i32[0] = *(v18 + 16);
  a10.i32[0] = -*(v15 + 32);
  v24 = vand_s8(*a10.f32, v21);
  v25 = vdup_lane_s32(v24, 0);
  v24.i32[0] = -*(v18 + 32);
  v26 = vdup_lane_s32(vand_s8(v24, v22), 0);
  v326 = v25;
  v327 = v26.f32[0];
  v27 = vadd_f32(v25, v26);
  v335 = 0;
  v28 = *a5;
  __asm { FMOV            V11.2S, #1.0 }

  if (!*a5)
  {
    v56 = vmulq_f32(a7, a7);
    v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
    v48 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v56.f32, *v56.f32)), 0)), a7, xmmword_1E3047670);
    v57 = vmulq_f32(v48, v48);
    v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
    v58 = vpadd_f32(*v57.f32, *v57.f32);
    v59 = vrsqrte_f32(v58);
    v60 = 4;
    do
    {
      v59 = vmul_f32(v59, vrsqrts_f32(vmul_f32(v59, v59), v58));
      --v60;
    }

    while (v60);
    v61 = vbsl_s8(vdup_lane_s32(vceqz_f32(v58), 0), v58, vmul_f32(v58, v59));
    v62 = vrecpe_f32(v61);
    v63 = 4;
    do
    {
      *a10.f32 = vrecps_f32(v61, v62);
      v62 = vmul_f32(v62, *a10.f32);
      --v63;
    }

    while (v63);
    v64 = vmulq_n_f32(v48, v62.f32[0]);
    v64.i32[3] = 0;
    v331 = v64;
    v65 = vneg_f32(0x80000000800000);
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67 = 0uLL;
    goto LABEL_52;
  }

  v34 = 0;
  v35 = a1[1].i64[0];
  v36 = v15 + 48;
  v37 = v18 + 48;
  v38 = -1;
  do
  {
    v39 = a3[v34];
    *(&v342 + v34) = v39;
    v40 = a4[v34];
    *(&v339 + v34) = v40;
    v41 = *(v36 + 16 * (1 - v39));
    v42 = vmulq_n_f32(*v35, v41.f32[0]);
    v42.i32[3] = 0;
    v43 = vmulq_lane_f32(v35[1], *v41.f32, 1);
    v43.i32[3] = 0;
    a10 = v35[3];
    v44 = vmulq_laneq_f32(v35[2], v41, 2);
    v44.i32[3] = 0;
    v45 = vaddq_f32(vaddq_f32(v42, v43), v44);
    v46 = *(v37 + 16 * (1 - v40));
    v47 = vaddq_f32(a10, v45);
    v48 = vsubq_f32(v47, v46);
    *(&v348 + v34) = v47;
    *(&v345 + v34) = v46;
    *(&v351 + v34) = v48;
    ++v38;
    ++v34;
  }

  while (v28 != v34);
  v335 = v28;
  if (v38 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v351, &v348, &v345, &v342, &v339, &v335);
    goto LABEL_47;
  }

  if (v38 != 2)
  {
    if (v38 != 1)
    {
      goto LABEL_47;
    }

    v48 = v351;
    v49 = vsubq_f32(v352, v351);
    v50 = vmulq_f32(v49, v49);
    v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
    v51 = vpadd_f32(*v50.f32, *v50.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v51), 0), *v351.f32).u32[0] != -1)
    {
      v52 = vnegq_f32(v351);
      v52.i32[3] = 0;
      v53 = vmulq_f32(v52, v49);
      a10 = vpaddq_f32(v53, v53);
      *a10.f32 = vpadd_f32(*a10.f32, *a10.f32);
      v54 = vrecpe_f32(v51);
      v55 = 4;
      do
      {
        v54 = vmul_f32(v54, vrecps_f32(v51, v54));
        --v55;
      }

      while (v55);
      v48 = vmlaq_n_f32(v351, v49, vmax_f32(vmin_f32(vmul_f32(*a10.f32, v54), _D11), 0).f32[0]);
LABEL_31:
      v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v335 = 1;
    goto LABEL_47;
  }

  v335 = 3;
  v48 = v351;
  a10 = vsubq_f32(v352, v351);
  v68 = vsubq_f32(v353[0], v351);
  v70 = vmls_f32(vmul_f32(*a10.f32, *&vextq_s8(v68, v68, 4uLL)), *&vextq_s8(a10, a10, 4uLL), *v68.f32);
  *v69.f32 = vext_s8(v70, vmls_f32(vmul_f32(*&vextq_s8(a10, a10, 8uLL), *v68.f32), *a10.f32, *&vextq_s8(v68, v68, 8uLL)), 4uLL);
  v70.i32[1] = 0;
  v71 = vpadd_f32(vmul_f32(*v69.f32, *v69.f32), vmul_f32(v70.u32[0], v70.u32[0]));
  v72 = vpadd_f32(v71, v71);
  if (v72.f32[0] <= 0.00000011921)
  {
    v335 = 2;
    v111 = vmulq_f32(a10, a10);
    v111.i64[0] = vpaddq_f32(v111, v111).u64[0];
    v112 = vpadd_f32(*v111.f32, *v111.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v112), 0), *v351.f32).u32[0] != -1)
    {
      v113 = vnegq_f32(v351);
      v113.i32[3] = 0;
      v114 = vmulq_f32(v113, a10);
      v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
      v115 = vpadd_f32(*v114.f32, *v114.f32);
      v116 = vrecpe_f32(v112);
      v117 = 4;
      do
      {
        v116 = vmul_f32(v116, vrecps_f32(v112, v116));
        --v117;
      }

      while (v117);
      v48 = vmlaq_n_f32(v351, a10, vmax_f32(vmin_f32(vmul_f32(v115, v116), _D11), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v69.u32[2] = v70;
  v73 = vextq_s8(v352, v352, 8uLL).u64[0];
  v74 = vextq_s8(v353[0], v353[0], 8uLL).u64[0];
  v75 = vextq_s8(v353[0], v353[0], 4uLL).u64[0];
  v76 = vextq_s8(v352, v352, 4uLL).u64[0];
  v77 = vmls_f32(vmul_f32(*v352.f32, v75), v76, *v353[0].i8);
  *v78.f32 = vext_s8(v77, vmls_f32(vmul_f32(v73, *v353[0].i8), *v352.f32, v74), 4uLL);
  v78.i64[1] = v77.u32[0];
  v79 = vextq_s8(v351, v351, 8uLL).u64[0];
  v80 = vextq_s8(v351, v351, 4uLL).u64[0];
  v81 = vmls_f32(vmul_f32(v80, *v353[0].i8), v75, *v351.f32);
  *v82.f32 = vext_s8(v81, vmls_f32(vmul_f32(*v351.f32, v74), *v353[0].i8, v79), 4uLL);
  v82.i64[1] = v81.u32[0];
  v83 = vmls_f32(vmul_f32(*v351.f32, v76), v80, *v352.f32);
  *v84.f32 = vext_s8(v83, vmls_f32(vmul_f32(v79, *v352.f32), *v351.f32, v73), 4uLL);
  v84.i64[1] = v83.u32[0];
  v85 = vmulq_f32(v78, v69);
  v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
  v86 = vpadd_f32(*v85.f32, *v85.f32);
  v87 = vmulq_f32(v82, v69);
  v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
  v88 = vpadd_f32(*v87.f32, *v87.f32);
  v89 = vmulq_f32(v84, v69);
  v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
  v90 = vpadd_f32(*v89.f32, *v89.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v88), vcgez_f32(v86)), vcgez_f32(v90)), 0), *v351.f32).u32[0] == -1)
  {
    v118 = vmulq_f32(v351, v69);
    v119 = vextq_s8(v118, v118, 8uLL).u64[0];
    v120 = vrecpe_f32(v72);
    v121 = 4;
    do
    {
      v120 = vmul_f32(v120, vrecps_f32(v72, v120));
      --v121;
    }

    while (v121);
    v122 = vpadd_f32(*v118.i8, v119);
    v48 = vmulq_n_f32(v69, vmul_f32(v120, vpadd_f32(v122, v122)).f32[0]);
    v48.i32[3] = 0;
    goto LABEL_47;
  }

  v91 = vnegq_f32(v351);
  v91.i32[3] = 0;
  v92 = vnegq_f32(v352);
  v92.i32[3] = 0;
  v93 = vmulq_f32(v91, a10);
  v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
  v94 = vpadd_f32(*v93.f32, *v93.f32);
  v95 = vmulq_f32(a10, v92);
  v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
  v96 = vpadd_f32(*v95.f32, *v95.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v90), vand_s8(vclez_f32(v96), vcgez_f32(v94))), 0), *v351.f32).u32[0] == -1)
  {
    v123 = vsub_f32(v94, v96);
    v124 = vrecpe_f32(v123);
    v125 = 4;
    do
    {
      v124 = vmul_f32(v124, vrecps_f32(v123, v124));
      --v125;
    }

    while (v125);
    v109 = 0;
    v48 = vmlaq_n_f32(v351, a10, vmul_f32(v94, vbsl_s8(vcgt_f32(vabs_f32(v123), 0x3400000034000000), v124, 0)).f32[0]);
    v108 = 2;
    v110 = &v340;
    v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
  }

  else
  {
    v97 = vnegq_f32(v353[0]);
    v97.i32[3] = 0;
    v98 = vmulq_f32(v92, v68);
    v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
    v99 = vpadd_f32(*v98.f32, *v98.f32);
    v100 = vmulq_f32(a10, v97);
    v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
    v101 = vpadd_f32(*v100.f32, *v100.f32);
    v102 = vmulq_f32(v68, v97);
    v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
    v103 = vpadd_f32(*v102.f32, *v102.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v99, v96), vcge_f32(v101, v103)), vclez_f32(v86)), 0), *v351.f32).u32[0] == -1)
    {
      v130 = vsub_f32(v99, v96);
      v131 = vadd_f32(v130, vsub_f32(v101, v103));
      v132 = vrecpe_f32(v131);
      v133 = 4;
      do
      {
        v132 = vmul_f32(v132, vrecps_f32(v131, v132));
        --v133;
      }

      while (v133);
      v134 = vmlaq_n_f32(v352, vsubq_f32(v353[0], v352), vmul_f32(v130, vbsl_s8(vcgt_f32(vabs_f32(v131), 0x3400000034000000), v132, 0)).f32[0]);
      v108 = 2;
      v109 = 1;
      v126 = &v344;
      v110 = &v341;
      v134.i64[1] = vextq_s8(v134, v134, 8uLL).u32[0];
      v128 = v350;
      v127 = v347;
      v129 = v353;
      v48 = v134;
      goto LABEL_46;
    }

    v104 = vmulq_f32(v91, v68);
    v105 = vpaddq_f32(v104, v104);
    *v105.i8 = vpadd_f32(*v105.i8, *v105.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v88), vand_s8(vclez_f32(v103), vcgez_f32(*v105.i8))), 0), *v351.f32).u32[0] == -1)
    {
      v135 = vsub_f32(*v105.i8, v103);
      v136 = vrecpe_f32(v135);
      v137 = 4;
      do
      {
        v136 = vmul_f32(v136, vrecps_f32(v135, v136));
        --v137;
      }

      while (v137);
      v109 = 0;
      v48 = vmlaq_n_f32(v351, v68, vmul_f32(*v105.i8, vbsl_s8(vcgt_f32(vabs_f32(v135), 0x3400000034000000), v136, 0)).f32[0]);
      v108 = 2;
      v126 = &v344;
      v110 = &v341;
      v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
      v128 = v350;
      v127 = v347;
      v129 = v353;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v105.i8), vclez_f32(v94)), 0), *v351.f32).u32[0] == -1)
    {
      v109 = 0;
      v108 = 1;
      v110 = &v340;
    }

    else
    {
      *v105.i8 = vcge_f32(v96, v99);
      *v48.f32 = vdup_lane_s16(vand_s8(*v105.i8, vcgez_f32(v96)), 0);
      *v48.f32 = vuzp1_s8(*v48.f32, *v48.f32);
      v105.i32[0] = -1;
      v106 = v48.i32[0];
      v107 = vdupq_lane_s32(*&vceqq_s32(v48, v105), 0);
      v108 = 1;
      if (v106 == -1)
      {
        v109 = 1;
      }

      else
      {
        v109 = 2;
      }

      v110 = &v340;
      v48 = vbslq_s8(v107, v352, v353[0]);
    }
  }

  v127 = &v346;
  v126 = &v343;
  v128 = &v349;
  v129 = &v352;
LABEL_46:
  v138 = *(&v351 + v109);
  v139 = *v129;
  a10 = *(&v348 + v109);
  v140 = *v128;
  v141 = *(&v345 + v109);
  v142 = *v127;
  v143 = *(&v342 + v109);
  v144 = *v126;
  v145 = *(&v339 + v109);
  v146 = *v110;
  v351 = v138;
  v352 = v139;
  v348 = a10;
  v349 = v140;
  v345 = v141;
  v346 = v142;
  v342 = v143;
  v343 = v144;
  v339 = v145;
  v340 = v146;
  v335 = v108;
LABEL_47:
  v147 = vmulq_f32(v48, v48);
  v147.i64[0] = vpaddq_f32(v147, v147).u64[0];
  v148 = vpadd_f32(*v147.f32, *v147.f32);
  v149 = vrsqrte_f32(v148);
  v150 = 4;
  do
  {
    v149 = vmul_f32(v149, vrsqrts_f32(vmul_f32(v149, v149), v148));
    --v150;
  }

  while (v150);
  v65 = vbsl_s8(vdup_lane_s32(vceqz_f32(v148), 0), v148, vmul_f32(v148, v149));
  v151 = vrecpe_f32(v65);
  v152 = 4;
  do
  {
    *a10.f32 = vrecps_f32(v65, v151);
    v151 = vmul_f32(v151, *a10.f32);
    --v152;
  }

  while (v152);
  v153 = vmulq_n_f32(v48, v151.f32[0]);
  v153.i32[3] = 0;
  v331 = v153;
  v66 = vdupq_lane_s32(vcgt_f32(v65, v23), 0);
  v67 = v48;
LABEL_52:
  v328 = v27;
  v154 = vadd_f32(v27, a8);
  a10.i32[0] = -1;
  v325 = a10;
  v155 = v65;
  v156.i64[0] = -1;
  v156.i64[1] = -1;
  while (1)
  {
    v157 = v48;
    v158.i64[0] = -1;
    v158.i64[1] = -1;
    *v158.i8 = vmovn_s32(vceqq_s32(v66, v158));
    if (vuzp1_s8(*v158.i8, *v158.i8).u32[0] != -1)
    {
      break;
    }

    v332 = v65;
    v333 = v157;
    v159 = vnegq_f32(v157);
    v159.i32[3] = 0;
    v336 = v159;
    v160 = v335;
    *v161.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(a1, &v336, &v342 + v335);
    v67 = v333;
    v162 = v161;
    v163 = *(a2 + 8);
    v164 = vmulq_f32(v333, v163[3]);
    v164.i64[0] = vpaddq_f32(v164, v164).u64[0];
    v165 = vmulq_f32(v333, v163[4]);
    v165.i64[0] = vpaddq_f32(v165, v165).u64[0];
    *v164.f32 = vand_s8(vcgt_f32(vpadd_f32(*v164.f32, *v164.f32), vpadd_f32(*v165.f32, *v165.f32)), 0x100000001);
    *(&v339 + v160) = v164.i32[0];
    v166 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vdupq_lane_s32(*v164.f32, 0), 0x1FuLL)), v163[3], v163[4]);
    v48 = vsubq_f32(v162, v166);
    v167 = v331;
    v168 = vmulq_f32(v331, v48);
    v168.i64[0] = vpaddq_f32(v168, v168).u64[0];
    v169 = vpadd_f32(*v168.f32, *v168.f32);
    if ((vmvn_s8(vcgt_f32(v169, v154)).u8[0] & 1) == 0)
    {
      if (a3)
      {
        *a5 = v160;
        if (v160)
        {
          v274 = &v339;
          v275 = &v342;
          do
          {
            v276 = *v275++;
            *a3++ = v276;
            v277 = *v274++;
            *v10++ = v277;
            --v160;
          }

          while (v160);
        }
      }

      return 0;
    }

    v170 = v332;
    if (v169.f32[0] > (0.99977 * v332.f32[0]))
    {
      v336 = v333;
      if (a3)
      {
        *a5 = v160;
        if (v160)
        {
          v278 = &v339;
          v279 = &v342;
          v280 = v160;
          do
          {
            v281 = *v279++;
            *a3++ = v281;
            v282 = *v278++;
            *v10++ = v282;
            --v280;
          }

          while (v280);
          goto LABEL_116;
        }

        *(a6 + 32) = v331;
        v283 = 0uLL;
        v284 = 0uLL;
      }

      else
      {
LABEL_116:
        *(a6 + 32) = v331;
        if (v160 == 3)
        {
          v337 = 0;
          v338 = 0;
          physx::Gu::barycentricCoordinates(&v336, &v351, &v352, v353, &v338, &v337);
          v167 = v331;
          v170 = v332;
          v300 = vmulq_n_f32(vsubq_f32(v349, v348), v338.f32[0]);
          v300.i32[3] = 0;
          v301 = vmulq_n_f32(vsubq_f32(v350[0], v348), v337.f32[0]);
          v301.i32[3] = 0;
          v302 = vaddq_f32(v300, v301);
          v303 = vmulq_n_f32(vsubq_f32(v346, v345), v338.f32[0]);
          v303.i32[3] = 0;
          v283 = vaddq_f32(v348, v302);
          v304 = vmulq_n_f32(vsubq_f32(v347[0], v345), v337.f32[0]);
          v304.i32[3] = 0;
          v284 = vaddq_f32(v345, vaddq_f32(v303, v304));
        }

        else if (v160 == 2)
        {
          v292 = vsubq_f32(v351, v333);
          v293 = vsubq_f32(vsubq_f32(v352, v333), v292);
          v294 = vmulq_f32(v293, v293);
          v294.i64[0] = vpaddq_f32(v294, v294).u64[0];
          v295 = vpadd_f32(*v294.f32, *v294.f32);
          v296 = vrecpe_f32(v295);
          v297 = 4;
          do
          {
            v296 = vmul_f32(v296, vrecps_f32(v295, v296));
            --v297;
          }

          while (v297);
          v298 = vnegq_f32(v292);
          v298.i32[3] = 0;
          v299 = vmulq_f32(v298, v293);
          v299.i64[0] = vpaddq_f32(v299, v299).u64[0];
          v298.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v295), v296, 0), vpadd_f32(*v299.f32, *v299.f32)).u32[0];
          v283 = vmlaq_n_f32(v348, vsubq_f32(v349, v348), v298.f32[0]);
          v283.i64[1] = vextq_s8(v283, v283, 8uLL).u32[0];
          v284 = vmlaq_n_f32(v345, vsubq_f32(v346, v345), v298.f32[0]);
          v284.i64[1] = vextq_s8(v284, v284, 8uLL).u32[0];
        }

        else
        {
          v283 = 0uLL;
          v284 = 0uLL;
          if (v160 == 1)
          {
            v283 = v348;
            v284 = v345;
          }
        }
      }

      v305 = vmlsq_lane_f32(v283, v167, v326, 0);
      v305.i64[1] = vextq_s8(v305, v305, 8uLL).u32[0];
      v306 = vmlaq_n_f32(v284, v167, v327);
      v306.i64[1] = vextq_s8(v306, v306, 8uLL).u32[0];
      *a6 = v305;
      *(a6 + 16) = v306;
      *(a6 + 64) = vsub_f32(v170, v328);
      return 2;
    }

    *(&v348 + v160) = v162;
    *(&v345 + v160) = v166;
    v335 = v160 + 1;
    *(&v351 + v160) = v48;
    switch(v160)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v351, &v348, &v345, &v342, &v339, &v335);
        v170 = v332;
        v67 = v333;
        break;
      case 2:
        v48 = v351;
        v179 = vsubq_f32(v352, v351);
        v180 = vsubq_f32(v353[0], v351);
        v182 = vmls_f32(vmul_f32(*v179.f32, *&vextq_s8(v180, v180, 4uLL)), *&vextq_s8(v179, v179, 4uLL), *v180.f32);
        *v181.f32 = vext_s8(v182, vmls_f32(vmul_f32(*&vextq_s8(v179, v179, 8uLL), *v180.f32), *v179.f32, *&vextq_s8(v180, v180, 8uLL)), 4uLL);
        v182.i32[1] = 0;
        v335 = 3;
        v183 = vpadd_f32(vmul_f32(*v181.f32, *v181.f32), vmul_f32(v182.u32[0], v182.u32[0]));
        v184 = vpadd_f32(v183, v183);
        if (v184.f32[0] <= 0.00000011921)
        {
          v335 = 2;
          v223 = vmulq_f32(v179, v179);
          v223.i64[0] = vpaddq_f32(v223, v223).u64[0];
          v224 = vpadd_f32(*v223.f32, *v223.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v224), 0), *v351.f32).u32[0] == -1)
          {
LABEL_79:
            v335 = 1;
            break;
          }

          v225 = vnegq_f32(v351);
          v225.i32[3] = 0;
          v226 = vmulq_f32(v225, v179);
          v226.i64[0] = vpaddq_f32(v226, v226).u64[0];
          v227 = vpadd_f32(*v226.f32, *v226.f32);
          v228 = vrecpe_f32(v224);
          v229 = 4;
          do
          {
            v228 = vmul_f32(v228, vrecps_f32(v224, v228));
            --v229;
          }

          while (v229);
          v48 = vmlaq_n_f32(v351, v179, vmax_f32(vmin_f32(vmul_f32(v227, v228), _D11), 0).f32[0]);
          goto LABEL_78;
        }

        *&v181.u32[2] = v182;
        v185 = vextq_s8(v352, v352, 8uLL).u64[0];
        v186 = vextq_s8(v353[0], v353[0], 8uLL).u64[0];
        v187 = vextq_s8(v353[0], v353[0], 4uLL).u64[0];
        v188 = vextq_s8(v352, v352, 4uLL).u64[0];
        v189 = vmls_f32(vmul_f32(*v352.f32, v187), v188, *v353[0].i8);
        *v190.f32 = vext_s8(v189, vmls_f32(vmul_f32(v185, *v353[0].i8), *v352.f32, v186), 4uLL);
        v190.i64[1] = v189.u32[0];
        v191 = vextq_s8(v351, v351, 8uLL).u64[0];
        v192 = vextq_s8(v351, v351, 4uLL).u64[0];
        v193 = vmls_f32(vmul_f32(v192, *v353[0].i8), v187, *v351.f32);
        *v194.f32 = vext_s8(v193, vmls_f32(vmul_f32(*v351.f32, v186), *v353[0].i8, v191), 4uLL);
        v194.i64[1] = v193.u32[0];
        v195 = vmls_f32(vmul_f32(*v351.f32, v188), v192, *v352.f32);
        *v196.f32 = vext_s8(v195, vmls_f32(vmul_f32(v191, *v352.f32), *v351.f32, v185), 4uLL);
        v196.i64[1] = v195.u32[0];
        v197 = vmulq_f32(v190, v181);
        v197.i64[0] = vpaddq_f32(v197, v197).u64[0];
        v198 = vpadd_f32(*v197.f32, *v197.f32);
        v199 = vmulq_f32(v194, v181);
        v199.i64[0] = vpaddq_f32(v199, v199).u64[0];
        v200 = vpadd_f32(*v199.f32, *v199.f32);
        v201 = vmulq_f32(v196, v181);
        v201.i64[0] = vpaddq_f32(v201, v201).u64[0];
        v202 = vpadd_f32(*v201.f32, *v201.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v200), vcgez_f32(v198)), vcgez_f32(v202)), 0), *v351.f32).u32[0] != -1)
        {
          v203 = vnegq_f32(v351);
          v203.i32[3] = 0;
          v204 = vnegq_f32(v352);
          v204.i32[3] = 0;
          v205 = vmulq_f32(v203, v179);
          v205.i64[0] = vpaddq_f32(v205, v205).u64[0];
          v206 = vpadd_f32(*v205.f32, *v205.f32);
          v207 = vmulq_f32(v179, v204);
          v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
          v208 = vpadd_f32(*v207.f32, *v207.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v202), vand_s8(vclez_f32(v208), vcgez_f32(v206))), 0), *v351.f32).u32[0] == -1)
          {
            v235 = vsub_f32(v206, v208);
            v236 = vrecpe_f32(v235);
            v237 = 4;
            do
            {
              v236 = vmul_f32(v236, vrecps_f32(v235, v236));
              --v237;
            }

            while (v237);
            v221 = 0;
            v48 = vmlaq_n_f32(v351, v179, vmul_f32(v206, vbsl_s8(vcgt_f32(vabs_f32(v235), 0x3400000034000000), v236, 0)).f32[0]);
            v220 = 2;
            v222 = &v340;
            v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
            goto LABEL_86;
          }

          v209 = vnegq_f32(v353[0]);
          v209.i32[3] = 0;
          v210 = vmulq_f32(v204, v180);
          v210.i64[0] = vpaddq_f32(v210, v210).u64[0];
          v211 = vpadd_f32(*v210.f32, *v210.f32);
          v212 = vmulq_f32(v179, v209);
          v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
          v213 = vpadd_f32(*v212.f32, *v212.f32);
          v214 = vmulq_f32(v180, v209);
          v214.i64[0] = vpaddq_f32(v214, v214).u64[0];
          v215 = vpadd_f32(*v214.f32, *v214.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v211, v208), vcge_f32(v213, v215)), vclez_f32(v198)), 0), *v351.f32).u32[0] == -1)
          {
            v242 = vsub_f32(v211, v208);
            v243 = vadd_f32(v242, vsub_f32(v213, v215));
            v244 = vrecpe_f32(v243);
            v245 = 4;
            do
            {
              v244 = vmul_f32(v244, vrecps_f32(v243, v244));
              --v245;
            }

            while (v245);
            v246 = vmlaq_n_f32(v352, vsubq_f32(v353[0], v352), vmul_f32(v242, vbsl_s8(vcgt_f32(vabs_f32(v243), 0x3400000034000000), v244, 0)).f32[0]);
            v246.i64[1] = vextq_s8(v246, v246, 8uLL).u32[0];
            v220 = 2;
            v48 = v246;
            v221 = 1;
            v222 = &v341;
          }

          else
          {
            v216 = vmulq_f32(v203, v180);
            v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
            v217 = vpadd_f32(*v216.f32, *v216.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v200), vand_s8(vclez_f32(v215), vcgez_f32(v217))), 0), *v351.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v217), vclez_f32(v206)), 0), *v351.f32).u32[0] == -1)
              {
                v221 = 0;
                v220 = 1;
                v222 = &v340;
              }

              else
              {
                *v48.f32 = vdup_lane_s16(vand_s8(vcge_f32(v208, v211), vcgez_f32(v208)), 0);
                *v48.f32 = vuzp1_s8(*v48.f32, *v48.f32);
                v218 = v48.i32[0];
                v219 = vdupq_lane_s32(*&vceqq_s32(v48, v325), 0);
                v220 = 1;
                if (v218 == -1)
                {
                  v221 = 1;
                }

                else
                {
                  v221 = 2;
                }

                v222 = &v340;
                v48 = vbslq_s8(v219, v352, v353[0]);
              }

LABEL_86:
              v239 = &v346;
              v238 = &v343;
              v240 = &v349;
              v241 = &v352;
LABEL_94:
              v250 = *(&v351 + v221);
              v251 = *v241;
              v252 = *(&v348 + v221);
              v253 = *v240;
              v254 = *(&v345 + v221);
              v255 = *v239;
              v256 = *(&v342 + v221);
              v257 = *v238;
              v258 = *(&v339 + v221);
              v259 = *v222;
              v351 = v250;
              v352 = v251;
              v348 = v252;
              v349 = v253;
              v345 = v254;
              v346 = v255;
              v342 = v256;
              v343 = v257;
              v339 = v258;
              v340 = v259;
              v335 = v220;
              break;
            }

            v247 = vsub_f32(v217, v215);
            v248 = vrecpe_f32(v247);
            v249 = 4;
            do
            {
              v248 = vmul_f32(v248, vrecps_f32(v247, v248));
              --v249;
            }

            while (v249);
            v221 = 0;
            v48 = vmlaq_n_f32(v351, v180, vmul_f32(v217, vbsl_s8(vcgt_f32(vabs_f32(v247), 0x3400000034000000), v248, 0)).f32[0]);
            v220 = 2;
            v222 = &v341;
            v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
          }

          v239 = v347;
          v238 = &v344;
          v240 = v350;
          v241 = v353;
          goto LABEL_94;
        }

        v230 = vmulq_f32(v351, v181);
        v231 = vextq_s8(v230, v230, 8uLL).u64[0];
        v232 = vrecpe_f32(v184);
        v233 = 4;
        do
        {
          v232 = vmul_f32(v232, vrecps_f32(v184, v232));
          --v233;
        }

        while (v233);
        v234 = vpadd_f32(*v230.i8, v231);
        v48 = vmulq_n_f32(v181, vmul_f32(v232, vpadd_f32(v234, v234)).f32[0]);
        v48.i32[3] = 0;
        break;
      case 1:
        v48 = v351;
        v171 = vsubq_f32(v352, v351);
        v172 = vmulq_f32(v171, v171);
        v172.i64[0] = vpaddq_f32(v172, v172).u64[0];
        v173 = vpadd_f32(*v172.f32, *v172.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v173), 0), *v351.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v174 = vnegq_f32(v351);
        v174.i32[3] = 0;
        v175 = vmulq_f32(v174, v171);
        v175.i64[0] = vpaddq_f32(v175, v175).u64[0];
        v176 = vpadd_f32(*v175.f32, *v175.f32);
        v177 = vrecpe_f32(v173);
        v178 = 4;
        do
        {
          v177 = vmul_f32(v177, vrecps_f32(v173, v177));
          --v178;
        }

        while (v178);
        v48 = vmlaq_n_f32(v351, v171, vmax_f32(vmin_f32(vmul_f32(v176, v177), _D11), 0).f32[0]);
LABEL_78:
        v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
        break;
    }

    v260 = vmulq_f32(v48, v48);
    v260.i64[0] = vpaddq_f32(v260, v260).u64[0];
    v261 = vpadd_f32(*v260.f32, *v260.f32);
    v262 = vrsqrte_f32(v261);
    v263 = 4;
    do
    {
      v262 = vmul_f32(v262, vrsqrts_f32(vmul_f32(v262, v262), v261));
      --v263;
    }

    while (v263);
    v65 = vbsl_s8(vdup_lane_s32(vceqz_f32(v261), 0), v261, vmul_f32(v261, v262));
    v264 = vrecpe_f32(v65);
    v265 = 4;
    do
    {
      v264 = vmul_f32(v264, vrecps_f32(v65, v264));
      --v265;
    }

    while (v265);
    v266 = vmulq_n_f32(v48, v264.f32[0]);
    v266.i32[3] = 0;
    v331 = v266;
    *v266.f32 = vcgt_f32(v170, v65);
    v156 = vdupq_lane_s32(*v266.f32, 0);
    v66 = vdupq_lane_s32(vand_s8(vcgt_f32(v65, v23), *v266.f32), 0);
    v155 = v170;
  }

  v267 = vmovn_s32(vceqzq_s32(v156));
  v268 = v335;
  if (vuzp1_s8(v267, v267).u32[0] == -1)
  {
    if (a3)
    {
      v285 = v335 - 1;
      *a5 = v335 - 1;
      if (v268 == 1)
      {
LABEL_127:
        v290 = v348;
        v291 = v345;
        goto LABEL_138;
      }

      v286 = &v339;
      v287 = &v342;
      do
      {
        v288 = *v287++;
        *a3++ = v288;
        v289 = *v286++;
        *v10++ = v289;
        --v285;
      }

      while (v285);
    }

    v336 = v67;
    if (v268 == 3)
    {
      v337 = 0;
      v338 = 0;
      v334 = v67;
      physx::Gu::barycentricCoordinates(&v336, &v351, &v352, v353, &v338, &v337);
      v315 = vmulq_n_f32(vsubq_f32(v349, v348), v338.f32[0]);
      v315.i32[3] = 0;
      v316 = vmulq_n_f32(vsubq_f32(v350[0], v348), v337.f32[0]);
      v316.i32[3] = 0;
      v317 = vaddq_f32(v315, v316);
      v318 = vmulq_n_f32(vsubq_f32(v346, v345), v338.f32[0]);
      v318.i32[3] = 0;
      v290 = vaddq_f32(v348, v317);
      v319 = vmulq_n_f32(vsubq_f32(v347[0], v345), v337.f32[0]);
      v67 = v334;
      v319.i32[3] = 0;
      v291 = vaddq_f32(v345, vaddq_f32(v318, v319));
    }

    else
    {
      if (v268 == 2)
      {
        v307 = vsubq_f32(v351, v67);
        v308 = vsubq_f32(vsubq_f32(v352, v67), v307);
        v309 = vmulq_f32(v308, v308);
        v309.i64[0] = vpaddq_f32(v309, v309).u64[0];
        v310 = vpadd_f32(*v309.f32, *v309.f32);
        v311 = vrecpe_f32(v310);
        v312 = 4;
        do
        {
          v311 = vmul_f32(v311, vrecps_f32(v310, v311));
          --v312;
        }

        while (v312);
        v313 = vnegq_f32(v307);
        v313.i32[3] = 0;
        v314 = vmulq_f32(v313, v308);
        v314.i64[0] = vpaddq_f32(v314, v314).u64[0];
        v313.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v310), v311, 0), vpadd_f32(*v314.f32, *v314.f32)).u32[0];
        v290 = vmlaq_n_f32(v348, vsubq_f32(v349, v348), v313.f32[0]);
        v290.i64[1] = vextq_s8(v290, v290, 8uLL).u32[0];
        v291 = vmlaq_n_f32(v345, vsubq_f32(v346, v345), v313.f32[0]);
        v291.i64[1] = vextq_s8(v291, v291, 8uLL).u32[0];
        goto LABEL_138;
      }

      v290 = 0uLL;
      v291 = 0uLL;
      if (v268 == 1)
      {
        goto LABEL_127;
      }
    }

LABEL_138:
    v320 = vrecpe_f32(v155);
    v321 = 4;
    do
    {
      v320 = vmul_f32(v320, vrecps_f32(v155, v320));
      --v321;
    }

    while (v321);
    v322 = vmulq_n_f32(v67, v320.f32[0]);
    v322.i32[3] = 0;
    *(a6 + 32) = v322;
    *(a6 + 48) = v331;
    v323 = vmlsq_lane_f32(v290, v322, v326, 0);
    v323.i64[1] = vextq_s8(v323, v323, 8uLL).u32[0];
    v324 = vmlaq_n_f32(v291, v322, v327);
    v324.i64[1] = vextq_s8(v324, v324, 8uLL).u32[0];
    *a6 = v323;
    *(a6 + 16) = v324;
    *(a6 + 64) = vsub_f32(v155, v328);
    if (vcge_f32(v328, v155).u8[0])
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  if (a3)
  {
    *a5 = v335;
    if (v268)
    {
      v269 = &v339;
      v270 = &v342;
      do
      {
        v271 = *v270++;
        *a3++ = v271;
        v272 = *v269++;
        *v10++ = v272;
        --v268;
      }

      while (v268);
    }
  }

  return 5;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, float32x4_t a7, float32x2_t a8, double a9, int8x8_t a10)
{
  v10 = a4;
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
    v42 = *(v36 + 16 * (1 - v40));
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
    v164 = v340;
    *v165.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(a1, &v341, &v347 + v340);
    v68 = v338;
    v166 = v165;
    v167 = *(a2 + 8);
    v168 = vcgtzq_f32(v338);
    v169 = v336;
    v170 = vandq_s8(v168, xmmword_1E3102070);
    v170.i64[0] = vpaddq_s32(v170, v170).u64[0];
    *(&v344 + v164) = vpadd_s32(*v170.i8, *v170.i8).u32[0] & 7;
    v171 = v167[3];
    v172 = vnegq_f32(v171);
    v172.i32[3] = 0;
    v173 = vbslq_s8(v168, v171, v172);
    v48 = vsubq_f32(v166, v173);
    v174 = vmulq_f32(v336, v48);
    v174.i64[0] = vpaddq_f32(v174, v174).u64[0];
    v175 = vpadd_f32(*v174.f32, *v174.f32);
    if ((vmvn_s8(vcgt_f32(v175, v157)).u8[0] & 1) == 0)
    {
      if (a3)
      {
        *a5 = v164;
        if (v164)
        {
          v280 = &v344;
          v281 = &v347;
          do
          {
            v282 = *v281++;
            *a3++ = v282;
            v283 = *v280++;
            *v10++ = v283;
            --v164;
          }

          while (v164);
        }
      }

      return 0;
    }

    v176 = v337;
    if (v175.f32[0] > (0.99977 * v337.f32[0]))
    {
      v341 = v338;
      if (a3)
      {
        *a5 = v164;
        if (v164)
        {
          v284 = &v344;
          v285 = &v347;
          v286 = v164;
          do
          {
            v287 = *v285++;
            *a3++ = v287;
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
        if (v164 == 3)
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

        else if (v164 == 2)
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
          if (v164 == 1)
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

    *(&v353 + v164) = v166;
    *(&v350 + v164) = v173;
    v340 = v164 + 1;
    *(&v356 + v164) = v48;
    switch(v164)
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
    if (a3)
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
        *a3++ = v294;
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

  if (a3)
  {
    *a5 = v340;
    if (v274)
    {
      v275 = &v344;
      v276 = &v347;
      do
      {
        v277 = *v276++;
        *a3++ = v277;
        v278 = *v275++;
        *v10++ = v278;
        --v274;
      }

      while (v274);
    }
  }

  return 5;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, float32x4_t a7, float32x2_t a8, double a9, float32x4_t a10, int8x8_t a11, int8x8_t a12)
{
  v12 = a4;
  v13 = a3;
  v358 = *MEMORY[0x1E69E9840];
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
  v330 = v24;
  v331 = v25.f32[0];
  v27 = vadd_f32(v24, v25);
  v341 = 0uLL;
  v340 = 0;
  v28 = *a5;
  __asm { FMOV            V11.2S, #1.0 }

  if (!*a5)
  {
    v61 = vmulq_f32(a7, a7);
    v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
    v53 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v61.f32, *v61.f32)), 0)), a7, xmmword_1E3047670);
    v341 = v53;
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
    v336 = v69;
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
    *(&v346 + v34) = v41;
    v42 = a4[v34];
    *(&v343 + v34) = v42;
    v43 = *(v36 + 16 * (1 - v41));
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
    *(&v352 + v34) = v47;
    *(&v349 + v34) = v52;
    *(&v355 + v34) = v53;
    ++v40;
    ++v34;
  }

  while (v28 != v34);
  v340 = v28;
  if (v40 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v355, &v352, &v349, &v346, &v343, &v340);
    goto LABEL_47;
  }

  if (v40 != 2)
  {
    if (v40 != 1)
    {
      goto LABEL_47;
    }

    v53 = v355;
    v54 = vsubq_f32(v356, v355);
    v55 = vmulq_f32(v54, v54);
    v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
    v56 = vpadd_f32(*v55.f32, *v55.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v56), 0), *v355.f32).u32[0] != -1)
    {
      v57 = vnegq_f32(v355);
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
      v53 = vmlaq_n_f32(v355, v54, vmax_f32(vmin_f32(vmul_f32(*a10.f32, v59), _D11), 0).f32[0]);
LABEL_31:
      v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v340 = 1;
    goto LABEL_47;
  }

  v340 = 3;
  v53 = v355;
  a10 = vsubq_f32(v356, v355);
  v73 = vsubq_f32(v357[0], v355);
  v75 = vmls_f32(vmul_f32(*a10.f32, *&vextq_s8(v73, v73, 4uLL)), *&vextq_s8(a10, a10, 4uLL), *v73.f32);
  *v74.f32 = vext_s8(v75, vmls_f32(vmul_f32(*&vextq_s8(a10, a10, 8uLL), *v73.f32), *a10.f32, *&vextq_s8(v73, v73, 8uLL)), 4uLL);
  v75.i32[1] = 0;
  v76 = vpadd_f32(vmul_f32(*v74.f32, *v74.f32), vmul_f32(v75.u32[0], v75.u32[0]));
  v77 = vpadd_f32(v76, v76);
  if (v77.f32[0] <= 0.00000011921)
  {
    v340 = 2;
    v116 = vmulq_f32(a10, a10);
    v116.i64[0] = vpaddq_f32(v116, v116).u64[0];
    v117 = vpadd_f32(*v116.f32, *v116.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v117), 0), *v355.f32).u32[0] != -1)
    {
      v118 = vnegq_f32(v355);
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
      v53 = vmlaq_n_f32(v355, a10, vmax_f32(vmin_f32(vmul_f32(v120, v121), _D11), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v74.u32[2] = v75;
  v78 = vextq_s8(v356, v356, 8uLL).u64[0];
  v79 = vextq_s8(v357[0], v357[0], 8uLL).u64[0];
  v80 = vextq_s8(v357[0], v357[0], 4uLL).u64[0];
  v81 = vextq_s8(v356, v356, 4uLL).u64[0];
  v82 = vmls_f32(vmul_f32(*v356.f32, v80), v81, *v357[0].f32);
  *v83.f32 = vext_s8(v82, vmls_f32(vmul_f32(v78, *v357[0].f32), *v356.f32, v79), 4uLL);
  v83.i64[1] = v82.u32[0];
  v84 = vextq_s8(v355, v355, 8uLL).u64[0];
  v85 = vextq_s8(v355, v355, 4uLL).u64[0];
  v86 = vmls_f32(vmul_f32(v85, *v357[0].f32), v80, *v355.f32);
  *v87.f32 = vext_s8(v86, vmls_f32(vmul_f32(*v355.f32, v79), *v357[0].f32, v84), 4uLL);
  v87.i64[1] = v86.u32[0];
  v88 = vmls_f32(vmul_f32(*v355.f32, v81), v85, *v356.f32);
  *v89.f32 = vext_s8(v88, vmls_f32(vmul_f32(v84, *v356.f32), *v355.f32, v78), 4uLL);
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
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v93), vcgez_f32(v91)), vcgez_f32(v95)), 0), *v355.f32).u32[0] == -1)
  {
    v123 = vmulq_f32(v355, v74);
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

  v96 = vnegq_f32(v355);
  v96.i32[3] = 0;
  v97 = vnegq_f32(v356);
  v97.i32[3] = 0;
  v98 = vmulq_f32(v96, a10);
  v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
  v99 = vpadd_f32(*v98.f32, *v98.f32);
  v100 = vmulq_f32(a10, v97);
  v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
  v101 = vpadd_f32(*v100.f32, *v100.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v95), vand_s8(vclez_f32(v101), vcgez_f32(v99))), 0), *v355.f32).u32[0] == -1)
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
    v53 = vmlaq_n_f32(v355, a10, vmul_f32(v99, vbsl_s8(vcgt_f32(vabs_f32(v128), 0x3400000034000000), v129, 0)).f32[0]);
    v113 = 2;
    v115 = &v344;
    v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
  }

  else
  {
    v102 = vnegq_f32(v357[0]);
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
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v104, v101), vcge_f32(v106, v108)), vclez_f32(v91)), 0), *v355.f32).u32[0] == -1)
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
      v139 = vmlaq_n_f32(v356, vsubq_f32(v357[0], v356), vmul_f32(v135, vbsl_s8(vcgt_f32(vabs_f32(v136), 0x3400000034000000), v137, 0)).f32[0]);
      v113 = 2;
      v114 = 1;
      v131 = &v348;
      v115 = &v345;
      v139.i64[1] = vextq_s8(v139, v139, 8uLL).u32[0];
      v133 = v354;
      v132 = v351;
      v134 = v357;
      v53 = v139;
      goto LABEL_46;
    }

    v109 = vmulq_f32(v96, v73);
    v110 = vpaddq_f32(v109, v109);
    *v110.i8 = vpadd_f32(*v110.i8, *v110.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v93), vand_s8(vclez_f32(v108), vcgez_f32(*v110.i8))), 0), *v355.f32).u32[0] == -1)
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
      v53 = vmlaq_n_f32(v355, v73, vmul_f32(*v110.i8, vbsl_s8(vcgt_f32(vabs_f32(v140), 0x3400000034000000), v141, 0)).f32[0]);
      v113 = 2;
      v131 = &v348;
      v115 = &v345;
      v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
      v133 = v354;
      v132 = v351;
      v134 = v357;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v110.i8), vclez_f32(v99)), 0), *v355.f32).u32[0] == -1)
    {
      v114 = 0;
      v113 = 1;
      v115 = &v344;
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

      v115 = &v344;
      v53 = vbslq_s8(v112, v356, v357[0]);
    }
  }

  v132 = &v350;
  v131 = &v347;
  v133 = &v353;
  v134 = &v356;
LABEL_46:
  v143 = *(&v355 + v114);
  v144 = *v134;
  a10 = *(&v352 + v114);
  v145 = *v133;
  v146 = *(&v349 + v114);
  v147 = *v132;
  v148 = *(&v346 + v114);
  v149 = *v131;
  v150 = *(&v343 + v114);
  v151 = *v115;
  v355 = v143;
  v356 = v144;
  v352 = a10;
  v353 = v145;
  v349 = v146;
  v350 = v147;
  v346 = v148;
  v347 = v149;
  v343 = v150;
  v344 = v151;
  v340 = v113;
LABEL_47:
  v341 = v53;
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
  v336 = v158;
  v71 = vdupq_lane_s32(vcgt_f32(v70, v26), 0);
  v72 = v53;
LABEL_52:
  v159 = vadd_f32(v27, a8);
  a10.i32[0] = -1;
  v329 = a10;
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

    v334 = v162;
    v164 = vnegq_f32(v162);
    v164.i32[3] = 0;
    v337 = v70;
    v339 = v164;
    v165 = v340;
    *v166.i64 = physx::Gu::RelativeConvex<physx::Gu::CapsuleV>::support(a1, &v339, &v346 + v340);
    v335 = v166;
    *v167.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v341, &v343 + v165);
    v168 = v336;
    v169 = v167;
    v53 = vsubq_f32(v335, v167);
    v170 = vmulq_f32(v336, v53);
    v170.i64[0] = vpaddq_f32(v170, v170).u64[0];
    v171 = vpadd_f32(*v170.f32, *v170.f32);
    if ((vmvn_s8(vcgt_f32(v171, v159)).u8[0] & 1) == 0)
    {
      if (v13)
      {
        v277 = v340;
        *a5 = v340;
        if (v277)
        {
          v278 = &v343;
          v279 = &v346;
          do
          {
            v280 = *v279++;
            *v13++ = v280;
            v281 = *v278++;
            *v12++ = v281;
            --v277;
          }

          while (v277);
        }
      }

      return 0;
    }

    v172 = v337;
    v173 = v340;
    if (v171.f32[0] > (0.99977 * v337.f32[0]))
    {
      if (v13)
      {
        *a5 = v340;
        if (v173)
        {
          v282 = &v343;
          v283 = &v346;
          v284 = v173;
          do
          {
            v285 = *v283++;
            *v13++ = v285;
            v286 = *v282++;
            *v12++ = v286;
            --v284;
          }

          while (v284);
          goto LABEL_116;
        }

        *(a6 + 32) = v336;
        v287 = 0uLL;
        v288 = 0uLL;
      }

      else
      {
LABEL_116:
        *(a6 + 32) = v336;
        if (v173 == 3)
        {
          v339.i64[0] = 0;
          v342 = 0;
          physx::Gu::barycentricCoordinates(&v341, &v355, &v356, v357, &v339, &v342);
          v168 = v336;
          v172 = v337;
          v304 = vmulq_n_f32(vsubq_f32(v353, v352), v339.f32[0]);
          v304.i32[3] = 0;
          v305 = vmulq_n_f32(vsubq_f32(v354[0], v352), v342.f32[0]);
          v305.i32[3] = 0;
          v306 = vaddq_f32(v304, v305);
          v307 = vmulq_n_f32(vsubq_f32(v350, v349), v339.f32[0]);
          v307.i32[3] = 0;
          v287 = vaddq_f32(v352, v306);
          v308 = vmulq_n_f32(vsubq_f32(v351[0], v349), v342.f32[0]);
          v308.i32[3] = 0;
          v288 = vaddq_f32(v349, vaddq_f32(v307, v308));
        }

        else if (v173 == 2)
        {
          v296 = vsubq_f32(v355, v341);
          v297 = vsubq_f32(vsubq_f32(v356, v341), v296);
          v298 = vmulq_f32(v297, v297);
          v298.i64[0] = vpaddq_f32(v298, v298).u64[0];
          v299 = vpadd_f32(*v298.f32, *v298.f32);
          v300 = vrecpe_f32(v299);
          v301 = 4;
          do
          {
            v300 = vmul_f32(v300, vrecps_f32(v299, v300));
            --v301;
          }

          while (v301);
          v302 = vnegq_f32(v296);
          v302.i32[3] = 0;
          v303 = vmulq_f32(v302, v297);
          v303.i64[0] = vpaddq_f32(v303, v303).u64[0];
          v302.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v299), v300, 0), vpadd_f32(*v303.f32, *v303.f32)).u32[0];
          v287 = vmlaq_n_f32(v352, vsubq_f32(v353, v352), v302.f32[0]);
          v287.i64[1] = vextq_s8(v287, v287, 8uLL).u32[0];
          v288 = vmlaq_n_f32(v349, vsubq_f32(v350, v349), v302.f32[0]);
          v288.i64[1] = vextq_s8(v288, v288, 8uLL).u32[0];
        }

        else
        {
          v287 = 0uLL;
          v288 = 0uLL;
          if (v173 == 1)
          {
            v287 = v352;
            v288 = v349;
          }
        }
      }

      v309 = vmlsq_lane_f32(v287, v168, v330, 0);
      v309.i64[1] = vextq_s8(v309, v309, 8uLL).u32[0];
      v310 = vmlaq_n_f32(v288, v168, v331);
      v310.i64[1] = vextq_s8(v310, v310, 8uLL).u32[0];
      *a6 = v309;
      *(a6 + 16) = v310;
      *(a6 + 64) = vsub_f32(v172, v27);
      return 2;
    }

    *(&v352 + v340) = v335;
    *(&v349 + v173) = v169;
    v340 = v173 + 1;
    *(&v355 + v173) = v53;
    switch(v173)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v355, &v352, &v349, &v346, &v343, &v340);
        v172 = v337;
        break;
      case 2:
        v53 = v355;
        v182 = vsubq_f32(v356, v355);
        v183 = vsubq_f32(v357[0], v355);
        v185 = vmls_f32(vmul_f32(*v182.f32, *&vextq_s8(v183, v183, 4uLL)), *&vextq_s8(v182, v182, 4uLL), *v183.f32);
        *v184.f32 = vext_s8(v185, vmls_f32(vmul_f32(*&vextq_s8(v182, v182, 8uLL), *v183.f32), *v182.f32, *&vextq_s8(v183, v183, 8uLL)), 4uLL);
        v185.i32[1] = 0;
        v340 = 3;
        v186 = vpadd_f32(vmul_f32(*v184.f32, *v184.f32), vmul_f32(v185.u32[0], v185.u32[0]));
        v187 = vpadd_f32(v186, v186);
        if (v187.f32[0] <= 0.00000011921)
        {
          v340 = 2;
          v226 = vmulq_f32(v182, v182);
          v226.i64[0] = vpaddq_f32(v226, v226).u64[0];
          v227 = vpadd_f32(*v226.f32, *v226.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v227), 0), *v355.f32).u32[0] == -1)
          {
LABEL_79:
            v340 = 1;
            break;
          }

          v228 = vnegq_f32(v355);
          v228.i32[3] = 0;
          v229 = vmulq_f32(v228, v182);
          v229.i64[0] = vpaddq_f32(v229, v229).u64[0];
          v230 = vpadd_f32(*v229.f32, *v229.f32);
          v231 = vrecpe_f32(v227);
          v232 = 4;
          do
          {
            v231 = vmul_f32(v231, vrecps_f32(v227, v231));
            --v232;
          }

          while (v232);
          v53 = vmlaq_n_f32(v355, v182, vmax_f32(vmin_f32(vmul_f32(v230, v231), _D11), 0).f32[0]);
          goto LABEL_78;
        }

        *&v184.u32[2] = v185;
        v188 = vextq_s8(v356, v356, 8uLL).u64[0];
        v189 = vextq_s8(v357[0], v357[0], 8uLL).u64[0];
        v190 = vextq_s8(v357[0], v357[0], 4uLL).u64[0];
        v191 = vextq_s8(v356, v356, 4uLL).u64[0];
        v192 = vmls_f32(vmul_f32(*v356.f32, v190), v191, *v357[0].f32);
        *v193.f32 = vext_s8(v192, vmls_f32(vmul_f32(v188, *v357[0].f32), *v356.f32, v189), 4uLL);
        v193.i64[1] = v192.u32[0];
        v194 = vextq_s8(v355, v355, 8uLL).u64[0];
        v195 = vextq_s8(v355, v355, 4uLL).u64[0];
        v196 = vmls_f32(vmul_f32(v195, *v357[0].f32), v190, *v355.f32);
        *v197.f32 = vext_s8(v196, vmls_f32(vmul_f32(*v355.f32, v189), *v357[0].f32, v194), 4uLL);
        v197.i64[1] = v196.u32[0];
        v198 = vmls_f32(vmul_f32(*v355.f32, v191), v195, *v356.f32);
        *v199.f32 = vext_s8(v198, vmls_f32(vmul_f32(v194, *v356.f32), *v355.f32, v188), 4uLL);
        v199.i64[1] = v198.u32[0];
        v200 = vmulq_f32(v193, v184);
        v200.i64[0] = vpaddq_f32(v200, v200).u64[0];
        v201 = vpadd_f32(*v200.f32, *v200.f32);
        v202 = vmulq_f32(v197, v184);
        v202.i64[0] = vpaddq_f32(v202, v202).u64[0];
        v203 = vpadd_f32(*v202.f32, *v202.f32);
        v204 = vmulq_f32(v199, v184);
        v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
        v205 = vpadd_f32(*v204.f32, *v204.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v203), vcgez_f32(v201)), vcgez_f32(v205)), 0), *v355.f32).u32[0] != -1)
        {
          v206 = vnegq_f32(v355);
          v206.i32[3] = 0;
          v207 = vnegq_f32(v356);
          v207.i32[3] = 0;
          v208 = vmulq_f32(v206, v182);
          v208.i64[0] = vpaddq_f32(v208, v208).u64[0];
          v209 = vpadd_f32(*v208.f32, *v208.f32);
          v210 = vmulq_f32(v182, v207);
          v210.i64[0] = vpaddq_f32(v210, v210).u64[0];
          v211 = vpadd_f32(*v210.f32, *v210.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v205), vand_s8(vclez_f32(v211), vcgez_f32(v209))), 0), *v355.f32).u32[0] == -1)
          {
            v238 = vsub_f32(v209, v211);
            v239 = vrecpe_f32(v238);
            v240 = 4;
            do
            {
              v239 = vmul_f32(v239, vrecps_f32(v238, v239));
              --v240;
            }

            while (v240);
            v224 = 0;
            v53 = vmlaq_n_f32(v355, v182, vmul_f32(v209, vbsl_s8(vcgt_f32(vabs_f32(v238), 0x3400000034000000), v239, 0)).f32[0]);
            v223 = 2;
            v225 = &v344;
            v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
            goto LABEL_86;
          }

          v212 = vnegq_f32(v357[0]);
          v212.i32[3] = 0;
          v213 = vmulq_f32(v207, v183);
          v213.i64[0] = vpaddq_f32(v213, v213).u64[0];
          v214 = vpadd_f32(*v213.f32, *v213.f32);
          v215 = vmulq_f32(v182, v212);
          v215.i64[0] = vpaddq_f32(v215, v215).u64[0];
          v216 = vpadd_f32(*v215.f32, *v215.f32);
          v217 = vmulq_f32(v183, v212);
          v217.i64[0] = vpaddq_f32(v217, v217).u64[0];
          v218 = vpadd_f32(*v217.f32, *v217.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v214, v211), vcge_f32(v216, v218)), vclez_f32(v201)), 0), *v355.f32).u32[0] == -1)
          {
            v245 = vsub_f32(v214, v211);
            v246 = vadd_f32(v245, vsub_f32(v216, v218));
            v247 = vrecpe_f32(v246);
            v248 = 4;
            do
            {
              v247 = vmul_f32(v247, vrecps_f32(v246, v247));
              --v248;
            }

            while (v248);
            v249 = vmlaq_n_f32(v356, vsubq_f32(v357[0], v356), vmul_f32(v245, vbsl_s8(vcgt_f32(vabs_f32(v246), 0x3400000034000000), v247, 0)).f32[0]);
            v249.i64[1] = vextq_s8(v249, v249, 8uLL).u32[0];
            v223 = 2;
            v53 = v249;
            v224 = 1;
            v225 = &v345;
          }

          else
          {
            v219 = vmulq_f32(v206, v183);
            v219.i64[0] = vpaddq_f32(v219, v219).u64[0];
            v220 = vpadd_f32(*v219.f32, *v219.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v203), vand_s8(vclez_f32(v218), vcgez_f32(v220))), 0), *v355.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v220), vclez_f32(v209)), 0), *v355.f32).u32[0] == -1)
              {
                v224 = 0;
                v223 = 1;
                v225 = &v344;
              }

              else
              {
                *v53.f32 = vdup_lane_s16(vand_s8(vcge_f32(v211, v214), vcgez_f32(v211)), 0);
                *v53.f32 = vuzp1_s8(*v53.f32, *v53.f32);
                v221 = v53.i32[0];
                v222 = vdupq_lane_s32(*&vceqq_s32(v53, v329), 0);
                v223 = 1;
                if (v221 == -1)
                {
                  v224 = 1;
                }

                else
                {
                  v224 = 2;
                }

                v225 = &v344;
                v53 = vbslq_s8(v222, v356, v357[0]);
              }

LABEL_86:
              v242 = &v350;
              v241 = &v347;
              v243 = &v353;
              v244 = &v356;
LABEL_94:
              v253 = *(&v355 + v224);
              v254 = *v244;
              v255 = *(&v352 + v224);
              v256 = *v243;
              v257 = *(&v349 + v224);
              v258 = *v242;
              v259 = *(&v346 + v224);
              v260 = *v241;
              v261 = *(&v343 + v224);
              v262 = *v225;
              v355 = v253;
              v356 = v254;
              v352 = v255;
              v353 = v256;
              v349 = v257;
              v350 = v258;
              v346 = v259;
              v347 = v260;
              v343 = v261;
              v344 = v262;
              v340 = v223;
              break;
            }

            v250 = vsub_f32(v220, v218);
            v251 = vrecpe_f32(v250);
            v252 = 4;
            do
            {
              v251 = vmul_f32(v251, vrecps_f32(v250, v251));
              --v252;
            }

            while (v252);
            v224 = 0;
            v53 = vmlaq_n_f32(v355, v183, vmul_f32(v220, vbsl_s8(vcgt_f32(vabs_f32(v250), 0x3400000034000000), v251, 0)).f32[0]);
            v223 = 2;
            v225 = &v345;
            v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
          }

          v242 = v351;
          v241 = &v348;
          v243 = v354;
          v244 = v357;
          goto LABEL_94;
        }

        v233 = vmulq_f32(v355, v184);
        v234 = vextq_s8(v233, v233, 8uLL).u64[0];
        v235 = vrecpe_f32(v187);
        v236 = 4;
        do
        {
          v235 = vmul_f32(v235, vrecps_f32(v187, v235));
          --v236;
        }

        while (v236);
        v237 = vpadd_f32(*v233.i8, v234);
        v53 = vmulq_n_f32(v184, vmul_f32(v235, vpadd_f32(v237, v237)).f32[0]);
        v53.i32[3] = 0;
        break;
      case 1:
        v53 = v355;
        v174 = vsubq_f32(v356, v355);
        v175 = vmulq_f32(v174, v174);
        v175.i64[0] = vpaddq_f32(v175, v175).u64[0];
        v176 = vpadd_f32(*v175.f32, *v175.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v176), 0), *v355.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v177 = vnegq_f32(v355);
        v177.i32[3] = 0;
        v178 = vmulq_f32(v177, v174);
        v178.i64[0] = vpaddq_f32(v178, v178).u64[0];
        v179 = vpadd_f32(*v178.f32, *v178.f32);
        v180 = vrecpe_f32(v176);
        v181 = 4;
        do
        {
          v180 = vmul_f32(v180, vrecps_f32(v176, v180));
          --v181;
        }

        while (v181);
        v53 = vmlaq_n_f32(v355, v174, vmax_f32(vmin_f32(vmul_f32(v179, v180), _D11), 0).f32[0]);
LABEL_78:
        v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
        break;
    }

    v341 = v53;
    v263 = vmulq_f32(v53, v53);
    v263.i64[0] = vpaddq_f32(v263, v263).u64[0];
    v264 = vpadd_f32(*v263.f32, *v263.f32);
    v265 = vrsqrte_f32(v264);
    v266 = 4;
    do
    {
      v265 = vmul_f32(v265, vrsqrts_f32(vmul_f32(v265, v265), v264));
      --v266;
    }

    while (v266);
    v70 = vbsl_s8(vdup_lane_s32(vceqz_f32(v264), 0), v264, vmul_f32(v264, v265));
    v267 = vrecpe_f32(v70);
    v268 = 4;
    do
    {
      v267 = vmul_f32(v267, vrecps_f32(v70, v267));
      --v268;
    }

    while (v268);
    v269 = vmulq_n_f32(v53, v267.f32[0]);
    v269.i32[3] = 0;
    v336 = v269;
    *v269.f32 = vcgt_f32(v172, v70);
    v161 = vdupq_lane_s32(*v269.f32, 0);
    v71 = vdupq_lane_s32(vand_s8(vcgt_f32(v70, v26), *v269.f32), 0);
    v160 = v172;
    v72 = v334;
  }

  v270 = vmovn_s32(vceqzq_s32(v161));
  v271 = v340;
  if (vuzp1_s8(v270, v270).u32[0] == -1)
  {
    if (v13)
    {
      v289 = v340 - 1;
      *a5 = v340 - 1;
      if (v271 == 1)
      {
LABEL_127:
        v294 = v352;
        v295 = v349;
        goto LABEL_138;
      }

      v290 = &v343;
      v291 = &v346;
      do
      {
        v292 = *v291++;
        *v13++ = v292;
        v293 = *v290++;
        *v12++ = v293;
        --v289;
      }

      while (v289);
    }

    v341 = v72;
    if (v271 == 3)
    {
      v339.i64[0] = 0;
      v342 = 0;
      v338 = v72;
      physx::Gu::barycentricCoordinates(&v341, &v355, &v356, v357, &v339, &v342);
      v319 = vmulq_n_f32(vsubq_f32(v353, v352), v339.f32[0]);
      v319.i32[3] = 0;
      v320 = vmulq_n_f32(vsubq_f32(v354[0], v352), v342.f32[0]);
      v320.i32[3] = 0;
      v321 = vaddq_f32(v319, v320);
      v322 = vmulq_n_f32(vsubq_f32(v350, v349), v339.f32[0]);
      v322.i32[3] = 0;
      v294 = vaddq_f32(v352, v321);
      v323 = vmulq_n_f32(vsubq_f32(v351[0], v349), v342.f32[0]);
      v72 = v338;
      v323.i32[3] = 0;
      v295 = vaddq_f32(v349, vaddq_f32(v322, v323));
    }

    else
    {
      if (v271 == 2)
      {
        v311 = vsubq_f32(v355, v72);
        v312 = vsubq_f32(vsubq_f32(v356, v72), v311);
        v313 = vmulq_f32(v312, v312);
        v313.i64[0] = vpaddq_f32(v313, v313).u64[0];
        v314 = vpadd_f32(*v313.f32, *v313.f32);
        v315 = vrecpe_f32(v314);
        v316 = 4;
        do
        {
          v315 = vmul_f32(v315, vrecps_f32(v314, v315));
          --v316;
        }

        while (v316);
        v317 = vnegq_f32(v311);
        v317.i32[3] = 0;
        v318 = vmulq_f32(v317, v312);
        v318.i64[0] = vpaddq_f32(v318, v318).u64[0];
        v317.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v314), v315, 0), vpadd_f32(*v318.f32, *v318.f32)).u32[0];
        v294 = vmlaq_n_f32(v352, vsubq_f32(v353, v352), v317.f32[0]);
        v294.i64[1] = vextq_s8(v294, v294, 8uLL).u32[0];
        v295 = vmlaq_n_f32(v349, vsubq_f32(v350, v349), v317.f32[0]);
        v295.i64[1] = vextq_s8(v295, v295, 8uLL).u32[0];
        goto LABEL_138;
      }

      v294 = 0uLL;
      v295 = 0uLL;
      if (v271 == 1)
      {
        goto LABEL_127;
      }
    }

LABEL_138:
    v324 = vrecpe_f32(v160);
    v325 = 4;
    do
    {
      v324 = vmul_f32(v324, vrecps_f32(v160, v324));
      --v325;
    }

    while (v325);
    v326 = vmulq_n_f32(v72, v324.f32[0]);
    v326.i32[3] = 0;
    *(a6 + 32) = v326;
    *(a6 + 48) = v336;
    v327 = vmlsq_lane_f32(v294, v326, v330, 0);
    v327.i64[1] = vextq_s8(v327, v327, 8uLL).u32[0];
    v328 = vmlaq_n_f32(v295, v326, v331);
    v328.i64[1] = vextq_s8(v328, v328, 8uLL).u32[0];
    *a6 = v327;
    *(a6 + 16) = v328;
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
    *a5 = v340;
    if (v271)
    {
      v272 = &v343;
      v273 = &v346;
      do
      {
        v274 = *v273++;
        *v13++ = v274;
        v275 = *v272++;
        *v12++ = v275;
        --v271;
      }

      while (v271);
    }
  }

  return 5;
}

double physx::Gu::RelativeConvex<physx::Gu::TriangleV>::supportPoint(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(*(a1 + 8) + 16 * a2 + 48);
  v4 = vmulq_n_f32(*v2, v3.f32[0]);
  v4.i32[3] = 0;
  v5 = vmulq_lane_f32(v2[1], *v3.f32, 1);
  v5.i32[3] = 0;
  v6 = vmulq_laneq_f32(v2[2], v3, 2);
  v6.i32[3] = 0;
  *&result = vaddq_f32(v2[3], vaddq_f32(vaddq_f32(v4, v5), v6)).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(float32x4_t *a1, float32x2_t *a2)
{
  v2 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v2.i32[3] = 0;
  v3 = vmulq_lane_f32(a1[3], *a2, 1);
  v3.i32[3] = 0;
  v4 = a1->i64[1];
  v5 = a1[1].i64[0];
  v6 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v6.i32[3] = 0;
  v7 = vaddq_f32(vaddq_f32(v2, v3), v6);
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = vmulq_f32(v8, v7);
  v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
  *v11.f32 = vpadd_f32(*v11.f32, *v11.f32);
  v12 = vmulq_f32(v9, v7);
  v12.i64[0] = vpaddq_f32(v12, v12).u64[0];
  *v12.f32 = vpadd_f32(*v12.f32, *v12.f32);
  v13 = vmulq_f32(v10, v7);
  v13.i64[0] = vpaddq_f32(v13, v13).u64[0];
  *v13.f32 = vpadd_f32(*v13.f32, *v13.f32);
  v14 = vbslq_s8(vmovl_s16(vdup_lane_s16(vand_s8(vcgt_f32(*v11.f32, *v13.f32), vcgt_f32(*v11.f32, *v12.f32)), 0)), v8, vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(*v12.f32, *v13.f32), 0)), v9, v10));
  v15 = vmulq_n_f32(*v5, v14.f32[0]);
  v15.i32[3] = 0;
  v16 = vmulq_lane_f32(v5[1], *v14.f32, 1);
  v16.i32[3] = 0;
  v17 = vmulq_laneq_f32(v5[2], v14, 2);
  v17.i32[3] = 0;
  *&result = vaddq_f32(v5[3], vaddq_f32(v17, vaddq_f32(v15, v16))).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(float32x4_t *a1, float32x2_t *a2, unsigned __int32 *a3)
{
  v3 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v3.i32[3] = 0;
  v4 = vmulq_lane_f32(a1[3], *a2, 1);
  v4.i32[3] = 0;
  v5 = a1->i64[1];
  v6 = a1[1].i64[0];
  v7 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v7.i32[3] = 0;
  v8 = vaddq_f32(vaddq_f32(v3, v4), v7);
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = vmulq_f32(v9, v8);
  v12.i64[0] = vpaddq_f32(v12, v12).u64[0];
  *v12.f32 = vpadd_f32(*v12.f32, *v12.f32);
  v13 = vmulq_f32(v10, v8);
  v13.i64[0] = vpaddq_f32(v13, v13).u64[0];
  *v13.f32 = vpadd_f32(*v13.f32, *v13.f32);
  v14 = vmulq_f32(v11, v8);
  v14.i64[0] = vpaddq_f32(v14, v14).u64[0];
  *v14.f32 = vpadd_f32(*v14.f32, *v14.f32);
  *v12.f32 = vand_s8(vcgt_f32(*v12.f32, *v14.f32), vcgt_f32(*v12.f32, *v13.f32));
  v15 = vmovl_s16(vdup_lane_s16(vcgt_f32(*v13.f32, *v14.f32), 0));
  v13.i64[0] = 0x200000002;
  v13.i64[1] = 0x200000002;
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  *a3 = vbslq_s8(v15, v16, v13).u32[0] & ~v12.i32[0];
  v17 = vbslq_s8(vdupq_lane_s32(*v12.f32, 0), v9, vbslq_s8(v15, v10, v11));
  v18 = vmulq_n_f32(*v6, v17.f32[0]);
  v18.i32[3] = 0;
  v19 = vmulq_lane_f32(v6[1], *v17.f32, 1);
  v19.i32[3] = 0;
  v20 = vmulq_laneq_f32(v6[2], v17, 2);
  v20.i32[3] = 0;
  *&result = vaddq_f32(v6[3], vaddq_f32(v20, vaddq_f32(v18, v19))).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::TriangleV>::getCenter(uint64_t a1)
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

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::CapsuleV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, float32x4_t a7, float32x2_t a8, double a9, float32x4_t a10)
{
  v10 = a4;
  v354 = *MEMORY[0x1E69E9840];
  v15 = a1->i64[1];
  v16 = (v15 + 20);
  v17 = vld1_dup_f32(v16);
  v18 = *(a2 + 8);
  v19 = (v18 + 20);
  v20 = vld1_dup_f32(v19);
  v21 = vmin_f32(v17, v20);
  v22 = vdup_n_s32(0x3DCCCCCDu);
  v23 = vmul_f32(v21, v22);
  v21.i32[0] = *(v15 + 16);
  v22.i32[0] = *(v18 + 16);
  a10.i32[0] = -*(v15 + 32);
  v24 = vand_s8(*a10.f32, v21);
  v25 = vdup_lane_s32(v24, 0);
  v24.i32[0] = -*(v18 + 32);
  v26 = vdup_lane_s32(vand_s8(v24, v22), 0);
  v326 = v25;
  v327 = v26.f32[0];
  v27 = vadd_f32(v25, v26);
  v335 = 0;
  v28 = *a5;
  __asm { FMOV            V11.2S, #1.0 }

  if (!*a5)
  {
    v56 = vmulq_f32(a7, a7);
    v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
    v48 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v56.f32, *v56.f32)), 0)), a7, xmmword_1E3047670);
    v57 = vmulq_f32(v48, v48);
    v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
    v58 = vpadd_f32(*v57.f32, *v57.f32);
    v59 = vrsqrte_f32(v58);
    v60 = 4;
    do
    {
      v59 = vmul_f32(v59, vrsqrts_f32(vmul_f32(v59, v59), v58));
      --v60;
    }

    while (v60);
    v61 = vbsl_s8(vdup_lane_s32(vceqz_f32(v58), 0), v58, vmul_f32(v58, v59));
    v62 = vrecpe_f32(v61);
    v63 = 4;
    do
    {
      *a10.f32 = vrecps_f32(v61, v62);
      v62 = vmul_f32(v62, *a10.f32);
      --v63;
    }

    while (v63);
    v64 = vmulq_n_f32(v48, v62.f32[0]);
    v64.i32[3] = 0;
    v331 = v64;
    v65 = vneg_f32(0x80000000800000);
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67 = 0uLL;
    goto LABEL_52;
  }

  v34 = 0;
  v35 = a1[1].i64[0];
  v36 = v15 + 48;
  v37 = v18 + 48;
  v38 = -1;
  do
  {
    v39 = a3[v34];
    *(&v342 + v34) = v39;
    v40 = a4[v34];
    *(&v339 + v34) = v40;
    v41 = *(v36 + 16 * v39);
    v42 = vmulq_n_f32(*v35, v41.f32[0]);
    v42.i32[3] = 0;
    v43 = vmulq_lane_f32(v35[1], *v41.f32, 1);
    v43.i32[3] = 0;
    a10 = v35[3];
    v44 = vmulq_laneq_f32(v35[2], v41, 2);
    v44.i32[3] = 0;
    v45 = vaddq_f32(vaddq_f32(v42, v43), v44);
    v46 = *(v37 + 16 * (1 - v40));
    v47 = vaddq_f32(a10, v45);
    v48 = vsubq_f32(v47, v46);
    *(&v348 + v34) = v47;
    *(&v345 + v34) = v46;
    *(&v351 + v34) = v48;
    ++v38;
    ++v34;
  }

  while (v28 != v34);
  v335 = v28;
  if (v38 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v351, &v348, &v345, &v342, &v339, &v335);
    goto LABEL_47;
  }

  if (v38 != 2)
  {
    if (v38 != 1)
    {
      goto LABEL_47;
    }

    v48 = v351;
    v49 = vsubq_f32(v352, v351);
    v50 = vmulq_f32(v49, v49);
    v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
    v51 = vpadd_f32(*v50.f32, *v50.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v51), 0), *v351.f32).u32[0] != -1)
    {
      v52 = vnegq_f32(v351);
      v52.i32[3] = 0;
      v53 = vmulq_f32(v52, v49);
      a10 = vpaddq_f32(v53, v53);
      *a10.f32 = vpadd_f32(*a10.f32, *a10.f32);
      v54 = vrecpe_f32(v51);
      v55 = 4;
      do
      {
        v54 = vmul_f32(v54, vrecps_f32(v51, v54));
        --v55;
      }

      while (v55);
      v48 = vmlaq_n_f32(v351, v49, vmax_f32(vmin_f32(vmul_f32(*a10.f32, v54), _D11), 0).f32[0]);
LABEL_31:
      v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v335 = 1;
    goto LABEL_47;
  }

  v335 = 3;
  v48 = v351;
  a10 = vsubq_f32(v352, v351);
  v68 = vsubq_f32(v353[0], v351);
  v70 = vmls_f32(vmul_f32(*a10.f32, *&vextq_s8(v68, v68, 4uLL)), *&vextq_s8(a10, a10, 4uLL), *v68.f32);
  *v69.f32 = vext_s8(v70, vmls_f32(vmul_f32(*&vextq_s8(a10, a10, 8uLL), *v68.f32), *a10.f32, *&vextq_s8(v68, v68, 8uLL)), 4uLL);
  v70.i32[1] = 0;
  v71 = vpadd_f32(vmul_f32(*v69.f32, *v69.f32), vmul_f32(v70.u32[0], v70.u32[0]));
  v72 = vpadd_f32(v71, v71);
  if (v72.f32[0] <= 0.00000011921)
  {
    v335 = 2;
    v111 = vmulq_f32(a10, a10);
    v111.i64[0] = vpaddq_f32(v111, v111).u64[0];
    v112 = vpadd_f32(*v111.f32, *v111.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v112), 0), *v351.f32).u32[0] != -1)
    {
      v113 = vnegq_f32(v351);
      v113.i32[3] = 0;
      v114 = vmulq_f32(v113, a10);
      v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
      v115 = vpadd_f32(*v114.f32, *v114.f32);
      v116 = vrecpe_f32(v112);
      v117 = 4;
      do
      {
        v116 = vmul_f32(v116, vrecps_f32(v112, v116));
        --v117;
      }

      while (v117);
      v48 = vmlaq_n_f32(v351, a10, vmax_f32(vmin_f32(vmul_f32(v115, v116), _D11), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v69.u32[2] = v70;
  v73 = vextq_s8(v352, v352, 8uLL).u64[0];
  v74 = vextq_s8(v353[0], v353[0], 8uLL).u64[0];
  v75 = vextq_s8(v353[0], v353[0], 4uLL).u64[0];
  v76 = vextq_s8(v352, v352, 4uLL).u64[0];
  v77 = vmls_f32(vmul_f32(*v352.f32, v75), v76, *v353[0].i8);
  *v78.f32 = vext_s8(v77, vmls_f32(vmul_f32(v73, *v353[0].i8), *v352.f32, v74), 4uLL);
  v78.i64[1] = v77.u32[0];
  v79 = vextq_s8(v351, v351, 8uLL).u64[0];
  v80 = vextq_s8(v351, v351, 4uLL).u64[0];
  v81 = vmls_f32(vmul_f32(v80, *v353[0].i8), v75, *v351.f32);
  *v82.f32 = vext_s8(v81, vmls_f32(vmul_f32(*v351.f32, v74), *v353[0].i8, v79), 4uLL);
  v82.i64[1] = v81.u32[0];
  v83 = vmls_f32(vmul_f32(*v351.f32, v76), v80, *v352.f32);
  *v84.f32 = vext_s8(v83, vmls_f32(vmul_f32(v79, *v352.f32), *v351.f32, v73), 4uLL);
  v84.i64[1] = v83.u32[0];
  v85 = vmulq_f32(v78, v69);
  v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
  v86 = vpadd_f32(*v85.f32, *v85.f32);
  v87 = vmulq_f32(v82, v69);
  v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
  v88 = vpadd_f32(*v87.f32, *v87.f32);
  v89 = vmulq_f32(v84, v69);
  v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
  v90 = vpadd_f32(*v89.f32, *v89.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v88), vcgez_f32(v86)), vcgez_f32(v90)), 0), *v351.f32).u32[0] == -1)
  {
    v118 = vmulq_f32(v351, v69);
    v119 = vextq_s8(v118, v118, 8uLL).u64[0];
    v120 = vrecpe_f32(v72);
    v121 = 4;
    do
    {
      v120 = vmul_f32(v120, vrecps_f32(v72, v120));
      --v121;
    }

    while (v121);
    v122 = vpadd_f32(*v118.i8, v119);
    v48 = vmulq_n_f32(v69, vmul_f32(v120, vpadd_f32(v122, v122)).f32[0]);
    v48.i32[3] = 0;
    goto LABEL_47;
  }

  v91 = vnegq_f32(v351);
  v91.i32[3] = 0;
  v92 = vnegq_f32(v352);
  v92.i32[3] = 0;
  v93 = vmulq_f32(v91, a10);
  v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
  v94 = vpadd_f32(*v93.f32, *v93.f32);
  v95 = vmulq_f32(a10, v92);
  v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
  v96 = vpadd_f32(*v95.f32, *v95.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v90), vand_s8(vclez_f32(v96), vcgez_f32(v94))), 0), *v351.f32).u32[0] == -1)
  {
    v123 = vsub_f32(v94, v96);
    v124 = vrecpe_f32(v123);
    v125 = 4;
    do
    {
      v124 = vmul_f32(v124, vrecps_f32(v123, v124));
      --v125;
    }

    while (v125);
    v109 = 0;
    v48 = vmlaq_n_f32(v351, a10, vmul_f32(v94, vbsl_s8(vcgt_f32(vabs_f32(v123), 0x3400000034000000), v124, 0)).f32[0]);
    v108 = 2;
    v110 = &v340;
    v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
  }

  else
  {
    v97 = vnegq_f32(v353[0]);
    v97.i32[3] = 0;
    v98 = vmulq_f32(v92, v68);
    v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
    v99 = vpadd_f32(*v98.f32, *v98.f32);
    v100 = vmulq_f32(a10, v97);
    v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
    v101 = vpadd_f32(*v100.f32, *v100.f32);
    v102 = vmulq_f32(v68, v97);
    v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
    v103 = vpadd_f32(*v102.f32, *v102.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v99, v96), vcge_f32(v101, v103)), vclez_f32(v86)), 0), *v351.f32).u32[0] == -1)
    {
      v130 = vsub_f32(v99, v96);
      v131 = vadd_f32(v130, vsub_f32(v101, v103));
      v132 = vrecpe_f32(v131);
      v133 = 4;
      do
      {
        v132 = vmul_f32(v132, vrecps_f32(v131, v132));
        --v133;
      }

      while (v133);
      v134 = vmlaq_n_f32(v352, vsubq_f32(v353[0], v352), vmul_f32(v130, vbsl_s8(vcgt_f32(vabs_f32(v131), 0x3400000034000000), v132, 0)).f32[0]);
      v108 = 2;
      v109 = 1;
      v126 = &v344;
      v110 = &v341;
      v134.i64[1] = vextq_s8(v134, v134, 8uLL).u32[0];
      v128 = v350;
      v127 = v347;
      v129 = v353;
      v48 = v134;
      goto LABEL_46;
    }

    v104 = vmulq_f32(v91, v68);
    v105 = vpaddq_f32(v104, v104);
    *v105.i8 = vpadd_f32(*v105.i8, *v105.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v88), vand_s8(vclez_f32(v103), vcgez_f32(*v105.i8))), 0), *v351.f32).u32[0] == -1)
    {
      v135 = vsub_f32(*v105.i8, v103);
      v136 = vrecpe_f32(v135);
      v137 = 4;
      do
      {
        v136 = vmul_f32(v136, vrecps_f32(v135, v136));
        --v137;
      }

      while (v137);
      v109 = 0;
      v48 = vmlaq_n_f32(v351, v68, vmul_f32(*v105.i8, vbsl_s8(vcgt_f32(vabs_f32(v135), 0x3400000034000000), v136, 0)).f32[0]);
      v108 = 2;
      v126 = &v344;
      v110 = &v341;
      v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
      v128 = v350;
      v127 = v347;
      v129 = v353;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v105.i8), vclez_f32(v94)), 0), *v351.f32).u32[0] == -1)
    {
      v109 = 0;
      v108 = 1;
      v110 = &v340;
    }

    else
    {
      *v105.i8 = vcge_f32(v96, v99);
      *v48.f32 = vdup_lane_s16(vand_s8(*v105.i8, vcgez_f32(v96)), 0);
      *v48.f32 = vuzp1_s8(*v48.f32, *v48.f32);
      v105.i32[0] = -1;
      v106 = v48.i32[0];
      v107 = vdupq_lane_s32(*&vceqq_s32(v48, v105), 0);
      v108 = 1;
      if (v106 == -1)
      {
        v109 = 1;
      }

      else
      {
        v109 = 2;
      }

      v110 = &v340;
      v48 = vbslq_s8(v107, v352, v353[0]);
    }
  }

  v127 = &v346;
  v126 = &v343;
  v128 = &v349;
  v129 = &v352;
LABEL_46:
  v138 = *(&v351 + v109);
  v139 = *v129;
  a10 = *(&v348 + v109);
  v140 = *v128;
  v141 = *(&v345 + v109);
  v142 = *v127;
  v143 = *(&v342 + v109);
  v144 = *v126;
  v145 = *(&v339 + v109);
  v146 = *v110;
  v351 = v138;
  v352 = v139;
  v348 = a10;
  v349 = v140;
  v345 = v141;
  v346 = v142;
  v342 = v143;
  v343 = v144;
  v339 = v145;
  v340 = v146;
  v335 = v108;
LABEL_47:
  v147 = vmulq_f32(v48, v48);
  v147.i64[0] = vpaddq_f32(v147, v147).u64[0];
  v148 = vpadd_f32(*v147.f32, *v147.f32);
  v149 = vrsqrte_f32(v148);
  v150 = 4;
  do
  {
    v149 = vmul_f32(v149, vrsqrts_f32(vmul_f32(v149, v149), v148));
    --v150;
  }

  while (v150);
  v65 = vbsl_s8(vdup_lane_s32(vceqz_f32(v148), 0), v148, vmul_f32(v148, v149));
  v151 = vrecpe_f32(v65);
  v152 = 4;
  do
  {
    *a10.f32 = vrecps_f32(v65, v151);
    v151 = vmul_f32(v151, *a10.f32);
    --v152;
  }

  while (v152);
  v153 = vmulq_n_f32(v48, v151.f32[0]);
  v153.i32[3] = 0;
  v331 = v153;
  v66 = vdupq_lane_s32(vcgt_f32(v65, v23), 0);
  v67 = v48;
LABEL_52:
  v328 = v27;
  v154 = vadd_f32(v27, a8);
  a10.i32[0] = -1;
  v325 = a10;
  v155 = v65;
  v156.i64[0] = -1;
  v156.i64[1] = -1;
  while (1)
  {
    v157 = v48;
    v158.i64[0] = -1;
    v158.i64[1] = -1;
    *v158.i8 = vmovn_s32(vceqq_s32(v66, v158));
    if (vuzp1_s8(*v158.i8, *v158.i8).u32[0] != -1)
    {
      break;
    }

    v332 = v65;
    v333 = v157;
    v159 = vnegq_f32(v157);
    v159.i32[3] = 0;
    v336 = v159;
    *v160.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(a1, &v336, &v342 + v335);
    v67 = v333;
    v161 = v160;
    v162 = v335;
    v163 = *(a2 + 8);
    v164 = vmulq_f32(v333, v163[3]);
    v164.i64[0] = vpaddq_f32(v164, v164).u64[0];
    v165 = vmulq_f32(v333, v163[4]);
    v165.i64[0] = vpaddq_f32(v165, v165).u64[0];
    *v164.f32 = vand_s8(vcgt_f32(vpadd_f32(*v164.f32, *v164.f32), vpadd_f32(*v165.f32, *v165.f32)), 0x100000001);
    *(&v339 + v335) = v164.i32[0];
    v166 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vdupq_lane_s32(*v164.f32, 0), 0x1FuLL)), v163[3], v163[4]);
    v48 = vsubq_f32(v161, v166);
    v167 = v331;
    v168 = vmulq_f32(v331, v48);
    v168.i64[0] = vpaddq_f32(v168, v168).u64[0];
    v169 = vpadd_f32(*v168.f32, *v168.f32);
    if ((vmvn_s8(vcgt_f32(v169, v154)).u8[0] & 1) == 0)
    {
      if (a3)
      {
        *a5 = v162;
        if (v162)
        {
          v274 = &v339;
          v275 = &v342;
          do
          {
            v276 = *v275++;
            *a3++ = v276;
            v277 = *v274++;
            *v10++ = v277;
            --v162;
          }

          while (v162);
        }
      }

      return 0;
    }

    v170 = v332;
    if (v169.f32[0] > (0.99977 * v332.f32[0]))
    {
      v336 = v333;
      if (a3)
      {
        *a5 = v162;
        if (v162)
        {
          v278 = &v339;
          v279 = &v342;
          v280 = v162;
          do
          {
            v281 = *v279++;
            *a3++ = v281;
            v282 = *v278++;
            *v10++ = v282;
            --v280;
          }

          while (v280);
          goto LABEL_116;
        }

        *(a6 + 32) = v331;
        v283 = 0uLL;
        v284 = 0uLL;
      }

      else
      {
LABEL_116:
        *(a6 + 32) = v331;
        if (v162 == 3)
        {
          v337 = 0;
          v338 = 0;
          physx::Gu::barycentricCoordinates(&v336, &v351, &v352, v353, &v338, &v337);
          v167 = v331;
          v170 = v332;
          v300 = vmulq_n_f32(vsubq_f32(v349, v348), v338.f32[0]);
          v300.i32[3] = 0;
          v301 = vmulq_n_f32(vsubq_f32(v350[0], v348), v337.f32[0]);
          v301.i32[3] = 0;
          v302 = vaddq_f32(v300, v301);
          v303 = vmulq_n_f32(vsubq_f32(v346, v345), v338.f32[0]);
          v303.i32[3] = 0;
          v283 = vaddq_f32(v348, v302);
          v304 = vmulq_n_f32(vsubq_f32(v347[0], v345), v337.f32[0]);
          v304.i32[3] = 0;
          v284 = vaddq_f32(v345, vaddq_f32(v303, v304));
        }

        else if (v162 == 2)
        {
          v292 = vsubq_f32(v351, v333);
          v293 = vsubq_f32(vsubq_f32(v352, v333), v292);
          v294 = vmulq_f32(v293, v293);
          v294.i64[0] = vpaddq_f32(v294, v294).u64[0];
          v295 = vpadd_f32(*v294.f32, *v294.f32);
          v296 = vrecpe_f32(v295);
          v297 = 4;
          do
          {
            v296 = vmul_f32(v296, vrecps_f32(v295, v296));
            --v297;
          }

          while (v297);
          v298 = vnegq_f32(v292);
          v298.i32[3] = 0;
          v299 = vmulq_f32(v298, v293);
          v299.i64[0] = vpaddq_f32(v299, v299).u64[0];
          v298.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v295), v296, 0), vpadd_f32(*v299.f32, *v299.f32)).u32[0];
          v283 = vmlaq_n_f32(v348, vsubq_f32(v349, v348), v298.f32[0]);
          v283.i64[1] = vextq_s8(v283, v283, 8uLL).u32[0];
          v284 = vmlaq_n_f32(v345, vsubq_f32(v346, v345), v298.f32[0]);
          v284.i64[1] = vextq_s8(v284, v284, 8uLL).u32[0];
        }

        else
        {
          v283 = 0uLL;
          v284 = 0uLL;
          if (v162 == 1)
          {
            v283 = v348;
            v284 = v345;
          }
        }
      }

      v305 = vmlsq_lane_f32(v283, v167, v326, 0);
      v305.i64[1] = vextq_s8(v305, v305, 8uLL).u32[0];
      v306 = vmlaq_n_f32(v284, v167, v327);
      v306.i64[1] = vextq_s8(v306, v306, 8uLL).u32[0];
      *a6 = v305;
      *(a6 + 16) = v306;
      *(a6 + 64) = vsub_f32(v170, v328);
      return 2;
    }

    *(&v348 + v162) = v161;
    *(&v345 + v162) = v166;
    v335 = v162 + 1;
    *(&v351 + v162) = v48;
    switch(v162)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v351, &v348, &v345, &v342, &v339, &v335);
        v170 = v332;
        v67 = v333;
        break;
      case 2:
        v48 = v351;
        v179 = vsubq_f32(v352, v351);
        v180 = vsubq_f32(v353[0], v351);
        v182 = vmls_f32(vmul_f32(*v179.f32, *&vextq_s8(v180, v180, 4uLL)), *&vextq_s8(v179, v179, 4uLL), *v180.f32);
        *v181.f32 = vext_s8(v182, vmls_f32(vmul_f32(*&vextq_s8(v179, v179, 8uLL), *v180.f32), *v179.f32, *&vextq_s8(v180, v180, 8uLL)), 4uLL);
        v182.i32[1] = 0;
        v335 = 3;
        v183 = vpadd_f32(vmul_f32(*v181.f32, *v181.f32), vmul_f32(v182.u32[0], v182.u32[0]));
        v184 = vpadd_f32(v183, v183);
        if (v184.f32[0] <= 0.00000011921)
        {
          v335 = 2;
          v223 = vmulq_f32(v179, v179);
          v223.i64[0] = vpaddq_f32(v223, v223).u64[0];
          v224 = vpadd_f32(*v223.f32, *v223.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v224), 0), *v351.f32).u32[0] == -1)
          {
LABEL_79:
            v335 = 1;
            break;
          }

          v225 = vnegq_f32(v351);
          v225.i32[3] = 0;
          v226 = vmulq_f32(v225, v179);
          v226.i64[0] = vpaddq_f32(v226, v226).u64[0];
          v227 = vpadd_f32(*v226.f32, *v226.f32);
          v228 = vrecpe_f32(v224);
          v229 = 4;
          do
          {
            v228 = vmul_f32(v228, vrecps_f32(v224, v228));
            --v229;
          }

          while (v229);
          v48 = vmlaq_n_f32(v351, v179, vmax_f32(vmin_f32(vmul_f32(v227, v228), _D11), 0).f32[0]);
          goto LABEL_78;
        }

        *&v181.u32[2] = v182;
        v185 = vextq_s8(v352, v352, 8uLL).u64[0];
        v186 = vextq_s8(v353[0], v353[0], 8uLL).u64[0];
        v187 = vextq_s8(v353[0], v353[0], 4uLL).u64[0];
        v188 = vextq_s8(v352, v352, 4uLL).u64[0];
        v189 = vmls_f32(vmul_f32(*v352.f32, v187), v188, *v353[0].i8);
        *v190.f32 = vext_s8(v189, vmls_f32(vmul_f32(v185, *v353[0].i8), *v352.f32, v186), 4uLL);
        v190.i64[1] = v189.u32[0];
        v191 = vextq_s8(v351, v351, 8uLL).u64[0];
        v192 = vextq_s8(v351, v351, 4uLL).u64[0];
        v193 = vmls_f32(vmul_f32(v192, *v353[0].i8), v187, *v351.f32);
        *v194.f32 = vext_s8(v193, vmls_f32(vmul_f32(*v351.f32, v186), *v353[0].i8, v191), 4uLL);
        v194.i64[1] = v193.u32[0];
        v195 = vmls_f32(vmul_f32(*v351.f32, v188), v192, *v352.f32);
        *v196.f32 = vext_s8(v195, vmls_f32(vmul_f32(v191, *v352.f32), *v351.f32, v185), 4uLL);
        v196.i64[1] = v195.u32[0];
        v197 = vmulq_f32(v190, v181);
        v197.i64[0] = vpaddq_f32(v197, v197).u64[0];
        v198 = vpadd_f32(*v197.f32, *v197.f32);
        v199 = vmulq_f32(v194, v181);
        v199.i64[0] = vpaddq_f32(v199, v199).u64[0];
        v200 = vpadd_f32(*v199.f32, *v199.f32);
        v201 = vmulq_f32(v196, v181);
        v201.i64[0] = vpaddq_f32(v201, v201).u64[0];
        v202 = vpadd_f32(*v201.f32, *v201.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v200), vcgez_f32(v198)), vcgez_f32(v202)), 0), *v351.f32).u32[0] != -1)
        {
          v203 = vnegq_f32(v351);
          v203.i32[3] = 0;
          v204 = vnegq_f32(v352);
          v204.i32[3] = 0;
          v205 = vmulq_f32(v203, v179);
          v205.i64[0] = vpaddq_f32(v205, v205).u64[0];
          v206 = vpadd_f32(*v205.f32, *v205.f32);
          v207 = vmulq_f32(v179, v204);
          v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
          v208 = vpadd_f32(*v207.f32, *v207.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v202), vand_s8(vclez_f32(v208), vcgez_f32(v206))), 0), *v351.f32).u32[0] == -1)
          {
            v235 = vsub_f32(v206, v208);
            v236 = vrecpe_f32(v235);
            v237 = 4;
            do
            {
              v236 = vmul_f32(v236, vrecps_f32(v235, v236));
              --v237;
            }

            while (v237);
            v221 = 0;
            v48 = vmlaq_n_f32(v351, v179, vmul_f32(v206, vbsl_s8(vcgt_f32(vabs_f32(v235), 0x3400000034000000), v236, 0)).f32[0]);
            v220 = 2;
            v222 = &v340;
            v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
            goto LABEL_86;
          }

          v209 = vnegq_f32(v353[0]);
          v209.i32[3] = 0;
          v210 = vmulq_f32(v204, v180);
          v210.i64[0] = vpaddq_f32(v210, v210).u64[0];
          v211 = vpadd_f32(*v210.f32, *v210.f32);
          v212 = vmulq_f32(v179, v209);
          v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
          v213 = vpadd_f32(*v212.f32, *v212.f32);
          v214 = vmulq_f32(v180, v209);
          v214.i64[0] = vpaddq_f32(v214, v214).u64[0];
          v215 = vpadd_f32(*v214.f32, *v214.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v211, v208), vcge_f32(v213, v215)), vclez_f32(v198)), 0), *v351.f32).u32[0] == -1)
          {
            v242 = vsub_f32(v211, v208);
            v243 = vadd_f32(v242, vsub_f32(v213, v215));
            v244 = vrecpe_f32(v243);
            v245 = 4;
            do
            {
              v244 = vmul_f32(v244, vrecps_f32(v243, v244));
              --v245;
            }

            while (v245);
            v246 = vmlaq_n_f32(v352, vsubq_f32(v353[0], v352), vmul_f32(v242, vbsl_s8(vcgt_f32(vabs_f32(v243), 0x3400000034000000), v244, 0)).f32[0]);
            v246.i64[1] = vextq_s8(v246, v246, 8uLL).u32[0];
            v220 = 2;
            v48 = v246;
            v221 = 1;
            v222 = &v341;
          }

          else
          {
            v216 = vmulq_f32(v203, v180);
            v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
            v217 = vpadd_f32(*v216.f32, *v216.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v200), vand_s8(vclez_f32(v215), vcgez_f32(v217))), 0), *v351.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v217), vclez_f32(v206)), 0), *v351.f32).u32[0] == -1)
              {
                v221 = 0;
                v220 = 1;
                v222 = &v340;
              }

              else
              {
                *v48.f32 = vdup_lane_s16(vand_s8(vcge_f32(v208, v211), vcgez_f32(v208)), 0);
                *v48.f32 = vuzp1_s8(*v48.f32, *v48.f32);
                v218 = v48.i32[0];
                v219 = vdupq_lane_s32(*&vceqq_s32(v48, v325), 0);
                v220 = 1;
                if (v218 == -1)
                {
                  v221 = 1;
                }

                else
                {
                  v221 = 2;
                }

                v222 = &v340;
                v48 = vbslq_s8(v219, v352, v353[0]);
              }

LABEL_86:
              v239 = &v346;
              v238 = &v343;
              v240 = &v349;
              v241 = &v352;
LABEL_94:
              v250 = *(&v351 + v221);
              v251 = *v241;
              v252 = *(&v348 + v221);
              v253 = *v240;
              v254 = *(&v345 + v221);
              v255 = *v239;
              v256 = *(&v342 + v221);
              v257 = *v238;
              v258 = *(&v339 + v221);
              v259 = *v222;
              v351 = v250;
              v352 = v251;
              v348 = v252;
              v349 = v253;
              v345 = v254;
              v346 = v255;
              v342 = v256;
              v343 = v257;
              v339 = v258;
              v340 = v259;
              v335 = v220;
              break;
            }

            v247 = vsub_f32(v217, v215);
            v248 = vrecpe_f32(v247);
            v249 = 4;
            do
            {
              v248 = vmul_f32(v248, vrecps_f32(v247, v248));
              --v249;
            }

            while (v249);
            v221 = 0;
            v48 = vmlaq_n_f32(v351, v180, vmul_f32(v217, vbsl_s8(vcgt_f32(vabs_f32(v247), 0x3400000034000000), v248, 0)).f32[0]);
            v220 = 2;
            v222 = &v341;
            v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
          }

          v239 = v347;
          v238 = &v344;
          v240 = v350;
          v241 = v353;
          goto LABEL_94;
        }

        v230 = vmulq_f32(v351, v181);
        v231 = vextq_s8(v230, v230, 8uLL).u64[0];
        v232 = vrecpe_f32(v184);
        v233 = 4;
        do
        {
          v232 = vmul_f32(v232, vrecps_f32(v184, v232));
          --v233;
        }

        while (v233);
        v234 = vpadd_f32(*v230.i8, v231);
        v48 = vmulq_n_f32(v181, vmul_f32(v232, vpadd_f32(v234, v234)).f32[0]);
        v48.i32[3] = 0;
        break;
      case 1:
        v48 = v351;
        v171 = vsubq_f32(v352, v351);
        v172 = vmulq_f32(v171, v171);
        v172.i64[0] = vpaddq_f32(v172, v172).u64[0];
        v173 = vpadd_f32(*v172.f32, *v172.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v173), 0), *v351.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v174 = vnegq_f32(v351);
        v174.i32[3] = 0;
        v175 = vmulq_f32(v174, v171);
        v175.i64[0] = vpaddq_f32(v175, v175).u64[0];
        v176 = vpadd_f32(*v175.f32, *v175.f32);
        v177 = vrecpe_f32(v173);
        v178 = 4;
        do
        {
          v177 = vmul_f32(v177, vrecps_f32(v173, v177));
          --v178;
        }

        while (v178);
        v48 = vmlaq_n_f32(v351, v171, vmax_f32(vmin_f32(vmul_f32(v176, v177), _D11), 0).f32[0]);
LABEL_78:
        v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
        break;
    }

    v260 = vmulq_f32(v48, v48);
    v260.i64[0] = vpaddq_f32(v260, v260).u64[0];
    v261 = vpadd_f32(*v260.f32, *v260.f32);
    v262 = vrsqrte_f32(v261);
    v263 = 4;
    do
    {
      v262 = vmul_f32(v262, vrsqrts_f32(vmul_f32(v262, v262), v261));
      --v263;
    }

    while (v263);
    v65 = vbsl_s8(vdup_lane_s32(vceqz_f32(v261), 0), v261, vmul_f32(v261, v262));
    v264 = vrecpe_f32(v65);
    v265 = 4;
    do
    {
      v264 = vmul_f32(v264, vrecps_f32(v65, v264));
      --v265;
    }

    while (v265);
    v266 = vmulq_n_f32(v48, v264.f32[0]);
    v266.i32[3] = 0;
    v331 = v266;
    *v266.f32 = vcgt_f32(v170, v65);
    v156 = vdupq_lane_s32(*v266.f32, 0);
    v66 = vdupq_lane_s32(vand_s8(vcgt_f32(v65, v23), *v266.f32), 0);
    v155 = v170;
  }

  v267 = vmovn_s32(vceqzq_s32(v156));
  v268 = v335;
  if (vuzp1_s8(v267, v267).u32[0] == -1)
  {
    if (a3)
    {
      v285 = v335 - 1;
      *a5 = v335 - 1;
      if (v268 == 1)
      {
LABEL_127:
        v290 = v348;
        v291 = v345;
        goto LABEL_138;
      }

      v286 = &v339;
      v287 = &v342;
      do
      {
        v288 = *v287++;
        *a3++ = v288;
        v289 = *v286++;
        *v10++ = v289;
        --v285;
      }

      while (v285);
    }

    v336 = v67;
    if (v268 == 3)
    {
      v337 = 0;
      v338 = 0;
      v334 = v67;
      physx::Gu::barycentricCoordinates(&v336, &v351, &v352, v353, &v338, &v337);
      v315 = vmulq_n_f32(vsubq_f32(v349, v348), v338.f32[0]);
      v315.i32[3] = 0;
      v316 = vmulq_n_f32(vsubq_f32(v350[0], v348), v337.f32[0]);
      v316.i32[3] = 0;
      v317 = vaddq_f32(v315, v316);
      v318 = vmulq_n_f32(vsubq_f32(v346, v345), v338.f32[0]);
      v318.i32[3] = 0;
      v290 = vaddq_f32(v348, v317);
      v319 = vmulq_n_f32(vsubq_f32(v347[0], v345), v337.f32[0]);
      v67 = v334;
      v319.i32[3] = 0;
      v291 = vaddq_f32(v345, vaddq_f32(v318, v319));
    }

    else
    {
      if (v268 == 2)
      {
        v307 = vsubq_f32(v351, v67);
        v308 = vsubq_f32(vsubq_f32(v352, v67), v307);
        v309 = vmulq_f32(v308, v308);
        v309.i64[0] = vpaddq_f32(v309, v309).u64[0];
        v310 = vpadd_f32(*v309.f32, *v309.f32);
        v311 = vrecpe_f32(v310);
        v312 = 4;
        do
        {
          v311 = vmul_f32(v311, vrecps_f32(v310, v311));
          --v312;
        }

        while (v312);
        v313 = vnegq_f32(v307);
        v313.i32[3] = 0;
        v314 = vmulq_f32(v313, v308);
        v314.i64[0] = vpaddq_f32(v314, v314).u64[0];
        v313.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v310), v311, 0), vpadd_f32(*v314.f32, *v314.f32)).u32[0];
        v290 = vmlaq_n_f32(v348, vsubq_f32(v349, v348), v313.f32[0]);
        v290.i64[1] = vextq_s8(v290, v290, 8uLL).u32[0];
        v291 = vmlaq_n_f32(v345, vsubq_f32(v346, v345), v313.f32[0]);
        v291.i64[1] = vextq_s8(v291, v291, 8uLL).u32[0];
        goto LABEL_138;
      }

      v290 = 0uLL;
      v291 = 0uLL;
      if (v268 == 1)
      {
        goto LABEL_127;
      }
    }

LABEL_138:
    v320 = vrecpe_f32(v155);
    v321 = 4;
    do
    {
      v320 = vmul_f32(v320, vrecps_f32(v155, v320));
      --v321;
    }

    while (v321);
    v322 = vmulq_n_f32(v67, v320.f32[0]);
    v322.i32[3] = 0;
    *(a6 + 32) = v322;
    *(a6 + 48) = v331;
    v323 = vmlsq_lane_f32(v290, v322, v326, 0);
    v323.i64[1] = vextq_s8(v323, v323, 8uLL).u32[0];
    v324 = vmlaq_n_f32(v291, v322, v327);
    v324.i64[1] = vextq_s8(v324, v324, 8uLL).u32[0];
    *a6 = v323;
    *(a6 + 16) = v324;
    *(a6 + 64) = vsub_f32(v155, v328);
    if (vcge_f32(v328, v155).u8[0])
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  if (a3)
  {
    *a5 = v335;
    if (v268)
    {
      v269 = &v339;
      v270 = &v342;
      do
      {
        v271 = *v270++;
        *a3++ = v271;
        v272 = *v269++;
        *v10++ = v272;
        --v268;
      }

      while (v268);
    }
  }

  return 5;
}