float *physx::Gu::computeOBBAroundConvex(float *result, uint64_t a2, float32x2_t *a3, float32x2_t *a4, double a5, double a6, int32x4_t a7, double a8, int32x4_t a9, int32x4_t a10, int32x4_t a11, int32x4_t a12)
{
  v14 = result;
  a9.i64[0] = *(a2 + 4);
  v15 = *(a2 + 12);
  if (*a9.i32 == 1.0 && COERCE_FLOAT(HIDWORD(*(a2 + 4))) == 1.0 && v15 == 1.0)
  {
    v84 = a4->f32[0];
    v85 = a4->f32[1];
    v86 = a4[1].f32[0];
    v87 = a4[1].f32[1];
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
    v98 = (1.0 - v90) - v91;
    v99 = v92 + v97;
    v100 = v93 - v96;
    v101 = v92 - v97;
    v102 = 1.0 - (v84 * (v84 + v84));
    v103 = v102 - v91;
    v104 = v95 + v94;
    v105 = v93 + v96;
    v106 = v95 - v94;
    v107 = v102 - v90;
    v108 = a3[4].f32[0];
    v109 = a3[4].f32[1];
    v110 = (v108 * v98) + (v101 * v109);
    v111 = (v108 * v99) + (v103 * v109);
    v112 = (v108 * v100) + (v104 * v109);
    v113 = a3[5].f32[0];
    v114 = v106 * v113;
    v115 = v110 + (v105 * v113);
    v116 = (v112 + (v107 * v113)) + a4[3].f32[0];
    v117 = a3[6].i32[1];
    result[2] = v100;
    v118 = a4[2].f32[0];
    v119 = a4[2].f32[1];
    result[5] = v104;
    result[8] = v107;
    result[11] = v116;
    v120 = *(&a3[5] + 4);
    *result = v98;
    result[1] = v99;
    result[3] = v101;
    result[4] = v103;
    result[6] = v105;
    result[7] = v106;
    result[9] = v118 + v115;
    result[10] = (v111 + v114) + v119;
    *(result + 6) = v120;
    *(result + 14) = v117;
  }

  else
  {
    v18 = a4[3].f32[0];
    v19 = *(a2 + 16);
    a7.i32[0] = *(a2 + 20);
    v20 = v19 + v19;
    v21 = *a7.i32 * (*a7.i32 + *a7.i32);
    v22 = (v19 + v19) * *a7.i32;
    v23.f32[0] = 1.0 - v21;
    v24 = 1.0 - (v19 * (v19 + v19));
    *a11.i32 = v24 - v21;
    *v13.i32 = v15 * (v24 - v21);
    *a10.i32 = (v24 - v21) * *v13.i32;
    v25 = a3[5].f32[0];
    v26 = a3[5].f32[1];
    v27 = a4[1];
    v28 = vadd_f32(*a4, *a4);
    v29 = vmul_f32(*a4, v28);
    __asm { FMOV            V21.2S, #1.0 }

    v34.i32[0] = vsub_f32(_D21, v29).u32[0];
    v29.i32[1] = v28.i32[1];
    v35 = vadd_f32(v27, v27);
    v36 = vmul_lane_f32(v28, *a4, 1);
    v37 = vmul_f32(v28, v27);
    v38 = vmul_f32(vext_s8(v29, v28, 4uLL), vzip2_s32(*a4, v27));
    v39 = vmul_lane_f32(v35, v27, 1);
    v35.i32[1] = v29.i32[1];
    v40 = vmul_f32(v27, v35);
    *a12.i32 = (1.0 - v38.f32[0]) - *v40.i32;
    *v12.i8 = vsub_f32(v36, v39);
    _D21.i32[1] = v27.i32[0];
    v41 = vmul_f32(_D21, v29);
    v34.i32[1] = v41.i32[1];
    v42 = vdup_lane_s32(v41, 1);
    v43 = vsub_f32(vzip1_s32(v37, v34), vrev64_s32(v40));
    v44 = vadd_f32(vzip1_s32(v42, v36), vzip1_s32(vdup_lane_s32(v38, 1), v39));
    v39.f32[0] = vadd_f32(v37, vdup_lane_s32(v40, 1)).f32[0];
    v45 = vsub_f32(v34, v38);
    v46 = *(a2 + 24);
    v47 = vmul_n_f32(v46, v20);
    v48 = vrev64_s32(vmul_n_f32(v46, *a7.i32 + *a7.i32));
    v49 = vmul_n_f32(v46, vadd_f32(v46, v46).f32[0]);
    v23.f32[1] = v22;
    v50 = vsub_f32(v23, v49);
    v23.f32[0] = v24;
    v51 = vadd_f32(v23, v49);
    v52 = vext_s8(v51, vsub_f32(v23, v49), 4uLL);
    v53 = vadd_f32(v47, v48);
    *v40.i32 = vsub_f32(v47, v48).f32[0];
    v54 = vmul_n_f32(v50, *a9.i32);
    v55 = vmul_lane_f32(v52, *a9.i8, 1);
    v56 = vmul_n_f32(__PAIR64__(v53.u32[1], v40.u32[0]), v15);
    v57 = vadd_f32(vmul_n_f32(v54, v50.f32[0]), vmul_lane_f32(v55, v51, 1));
    v58 = vmul_n_f32(v56, *v40.i32);
    *v40.i32 = *v13.i32 * *v40.i32;
    v59 = vadd_f32(v58, v57);
    v60 = vzip2_s32(v50, v52);
    v61 = __PAIR64__(v55.u32[1], v54.u32[0]);
    v62 = vsub_f32(v48, v47);
    v63 = vmul_lane_f32(v55, v62, 1);
    v55.i32[1] = v54.i32[1];
    v64 = vmul_lane_f32(v56, v53, 1);
    *v13.i32 = vmuls_lane_f32(*v13.i32, v53, 1);
    v53.i32[1] = v62.i32[1];
    *a9.i8 = vmul_f32(*a9.i8, v53);
    v52.f32[0] = *v40.i32 + vaddv_f32(vmul_f32(vzip1_s32(v50, v52), *a9.i8));
    v65 = vadd_f32(v64, vadd_f32(vmul_f32(v60, v61), vmul_f32(vrev64_s32(v60), v55)));
    *v13.i32 = *v13.i32 + vaddv_f32(vmul_f32(v60, *a9.i8));
    *a9.i8 = vmul_f32(v53, *a9.i8);
    v66 = vadd_f32(vmul_n_f32(v56, *a11.i32), vadd_f32(vmul_n_f32(v54, v53.f32[0]), v63));
    v50.f32[0] = *a10.i32 + vaddv_f32(*a9.i8);
    *a9.i32 = (v52.f32[0] * v39.f32[0]) + ((*a12.i32 * v59.f32[0]) + vmul_lane_f32(*v12.i8, v59, 1).f32[0]);
    *a10.i8 = vadd_f32(vmul_n_f32(v45, v52.f32[0]), vadd_f32(vmul_f32(v43, v59), vmul_f32(v44, vrev64_s32(v59))));
    v67 = vmul_n_f32(v45, *v13.i32);
    *v13.i32 = (*v13.i32 * v39.f32[0]) + ((*a12.i32 * v65.f32[0]) + vmul_lane_f32(*v12.i8, v65, 1).f32[0]);
    *a11.i8 = vadd_f32(v67, vadd_f32(vmul_f32(v43, v65), vmul_f32(v44, vrev64_s32(v65))));
    *v12.i8 = vmul_lane_f32(*v12.i8, v66, 1);
    *v12.i32 = (v50.f32[0] * v39.f32[0]) + ((*a12.i32 * v66.f32[0]) + *v12.i32);
    *a12.i8 = vadd_f32(vmul_n_f32(v45, v50.f32[0]), vadd_f32(vmul_f32(v43, v66), vmul_f32(v44, vrev64_s32(v66))));
    *v121 = ((v26 * 0.0) * *v12.i32) + ((v26 * *a9.i32) + ((v26 * 0.0) * *v13.i32));
    v68 = a3[6];
    *a7.i8 = vmul_f32(v68, 0);
    v69 = vzip1q_s32(a7, a7);
    v69.i32[2] = a7.i32[0];
    v70 = vuzp1q_s32(a9, a10);
    v70.i32[1] = a10.i32[1];
    *&v121[4] = vrev64_s32(vadd_f32(vmul_n_f32(*a12.i8, v26 * 0.0), vadd_f32(vmul_n_f32(*a10.i8, v26), vmul_n_f32(*a11.i8, v26 * 0.0))));
    v70.i32[3] = v70.i32[0];
    *v71.f32 = vdup_lane_s32(v68, 0);
    v72 = __PAIR64__(v68.u32[1], a7.u32[0]);
    v73 = vmul_lane_f32(*a12.i8, v68, 1);
    v68.i32[1] = a7.i32[1];
    v74 = vmulq_f32(v69, v70);
    *&v71.u32[2] = v68;
    v75 = vuzp1q_s32(v13, a11);
    v75.i32[1] = a11.i32[1];
    v75.i32[3] = v75.i32[0];
    *v70.f32 = vdup_lane_s32(*a7.i8, 0);
    v70.i64[1] = v72;
    v76 = vmulq_f32(v71, v75);
    v77 = vuzp1q_s32(v12, a12);
    v77.i32[1] = a12.i32[1];
    v77.i32[3] = v77.i32[0];
    *&v121[12] = vaddq_f32(vmulq_f32(v70, v77), vaddq_f32(v74, v76));
    *&v121[28] = vrev64_s32(vadd_f32(v73, vadd_f32(vmul_lane_f32(*a10.i8, *a7.i8, 1), vmul_lane_f32(*a11.i8, *a7.i8, 1))));
    v78 = v25 * *a12.i32;
    *v77.f32 = a3[4];
    *v74.f32 = vmul_f32(*v77.f32, *a10.i8);
    v79.i32[0] = vdup_lane_s32(*a10.i8, 1).u32[0];
    v79.i32[1] = v13.i32[0];
    v80 = vmul_lane_f32(*a11.i8, *v77.f32, 1);
    a11.i32[0] = a9.i32[0];
    a12.i32[0] = v12.i32[0];
    *&v121[36] = vadd_f32(a4[2], vadd_f32(vmul_n_f32(*a12.i8, v25), vadd_f32(vrev64_s32(vmul_f32(*v77.f32, v79)), vmul_f32(*v77.f32, *a11.i8))));
    *&v121[44] = v18 + (v78 + vadd_f32(*v74.f32, v80).f32[0]);
    result = physx::shdfnd::optimizeBoundingBox(v121, &v122);
    v81 = v123;
    v82 = v122;
    v83 = *&v121[16];
    *v14 = *v121;
    *(v14 + 1) = v83;
    *(v14 + 2) = *&v121[32];
    *(v14 + 6) = v82;
    *(v14 + 14) = v81;
  }

  return result;
}

_DWORD *physx::localSearch(_DWORD *result, float *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *(a4 + 32);
  v6 = *result;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = ((v8 * *(a3 + 12 * v6 + 4)) + (*a2 * *(a3 + 12 * v6))) + (v9 * *(a3 + 12 * v6 + 8));
  do
  {
    v11 = (v4 + 4 * v6);
    v12 = *v11;
    v13 = v11[1];
    *result = v6;
    if (!v12)
    {
      break;
    }

    v14 = (v5 + v13);
    v15 = v6;
    do
    {
      v17 = *v14++;
      v16 = v17;
      v18 = v17 >> 5;
      v19 = *(&v25 + v18);
      v20 = 1 << v17;
      if (((1 << v17) & v19) == 0)
      {
        *(&v25 + v18) = v20 | v19;
        v21 = (a3 + 12 * v16);
        v22 = v21[2];
        v23 = ((v8 * v21[1]) + (v7 * *v21)) + (v9 * v22);
        if (v23 <= v10)
        {
          v15 = v15;
        }

        else
        {
          v15 = v16;
        }

        if (v23 > v10)
        {
          v10 = ((v8 * v21[1]) + (v7 * *v21)) + (v9 * v22);
        }
      }

      --v12;
    }

    while (v12);
    v24 = v15 == v6;
    v6 = v15;
  }

  while (!v24);
  return result;
}

uint64_t physx::Gu::getPolygonalData_Convex(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 28);
  v5 = *(a2 + 32);
  v6 = ((v3 * *(a3 + 8)) + (v4 * *(a3 + 20))) + (v5 * *(a3 + 32));
  *result = vadd_f32(vadd_f32(vmul_n_f32(*a3, v3), vmul_n_f32(*(a3 + 12), v4)), vmul_n_f32(*(a3 + 24), v5));
  *(result + 8) = v6;
  v7 = *(a2 + 38);
  v8 = *(a2 + 39);
  *(result + 12) = v7;
  *(result + 16) = v8;
  v9 = *(a2 + 36);
  v10 = v9;
  v11 = v9 & 0x7FFF;
  *(result + 20) = v11;
  v12 = *(a2 + 40);
  v13 = v12 + 20 * v8;
  *(result + 24) = v12;
  *(result + 32) = v13;
  v14 = v13 + 12 * v7;
  v15 = v14 + 2 * v11;
  v16 = 3 * v7;
  v17 = 4 * v11;
  if (v10 >= 0)
  {
    v17 = 0;
  }

  *(result + 40) = v15 + v16 + v17;
  *(result + 48) = v14;
  *(result + 64) = *(a2 + 56);
  v18 = *(a2 + 48);
  *(result + 80) = v18;
  v19 = v18 == 0;
  v20 = HullProjectionCB_BigConvex;
  if (v19)
  {
    v20 = HullProjectionCB_SmallConvex;
  }

  *(result + 88) = v20;
  *(result + 96) = SelectClosestEdgeCB_Convex;
  return result;
}

float HullProjectionCB_SmallConvex(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a1 + 12);
  if (v9)
  {
    v10 = ((a3[1] * v7) + (*a3 * v6)) + (a3[2] * v8);
    v11 = ((v7 * a3[4]) + (a3[3] * v6)) + (a3[5] * v8);
    v12 = ((v7 * a3[7]) + (a3[6] * v6)) + (a3[8] * v8);
    v13 = v12 * a4[7];
    v14 = v12 * a4[8];
    v15 = ((v10 * *a4) + (v11 * a4[3])) + (v12 * a4[6]);
    v16 = ((v10 * a4[1]) + (v11 * a4[4])) + v13;
    v17 = ((v10 * a4[2]) + (v11 * a4[5])) + v14;
    v18 = *(a1 + 32);
    v19 = -3.4028e38;
    v20 = 3.4028e38;
    do
    {
      v21 = ((v16 * v18[1]) + (*v18 * v15)) + (v18[2] * v17);
      if (v20 >= v21)
      {
        v20 = ((v16 * v18[1]) + (*v18 * v15)) + (v18[2] * v17);
      }

      if (v19 <= v21)
      {
        v19 = ((v16 * v18[1]) + (*v18 * v15)) + (v18[2] * v17);
      }

      v18 += 3;
      --v9;
    }

    while (v9);
  }

  else
  {
    v20 = 3.4028e38;
    v19 = -3.4028e38;
  }

  v22 = ((v7 * a3[10]) + (a3[9] * v6)) + (a3[11] * v8);
  *a5 = v20 + v22;
  result = v19 + v22;
  *a6 = result;
  return result;
}

float HullProjectionCB_BigConvex(uint64_t a1, float *a2, float *a3, uint64_t a4, float *a5, float *a6)
{
  v9 = *(a1 + 32);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = ((a3[1] * v11) + (*a3 * *a2)) + (a3[2] * v12);
  v14 = ((v11 * a3[4]) + (a3[3] * *a2)) + (a3[5] * v12);
  v15 = ((v11 * a3[7]) + (a3[6] * *a2)) + (a3[8] * v12);
  v16 = ((v13 * *(a4 + 8)) + (v14 * *(a4 + 20))) + (v15 * *(a4 + 32));
  v17 = vadd_f32(vadd_f32(vmul_n_f32(*a4, v13), vmul_n_f32(*(a4 + 12), v14)), vmul_n_f32(*(a4 + 24), v15));
  v45 = v17;
  v51 = v17;
  v52 = v16;
  v18 = *(a1 + 80);
  v19 = *v18;
  v20 = -v17.f32[0];
  v21 = -v17.f32[1];
  v46 = -v17.f32[0];
  v47 = -v17.f32[1];
  v48 = -v16;
  v22 = fabsf(v17.f32[0]);
  v23 = fabsf(v17.f32[1]);
  v24 = fabsf(v16);
  v25 = v23 > v22;
  v26 = v24 > v22;
  if (v24 > v22)
  {
    v22 = v24;
  }

  v27 = 2 * v26;
  if (v25 && v23 > v24)
  {
    v28 = 1;
  }

  else
  {
    v23 = v22;
    v28 = v27;
  }

  HIDWORD(v29) = v28;
  *&v29 = *(&v46 + v28);
  v30.f32[0] = *(&v46 + ((v28 + (v28 >> 1) + 1 + (((v28 + (v28 >> 1) + 1) & 3) >> 1) + 1) & 3));
  v30.f32[1] = *(&v46 + ((v28 + (v28 >> 1) + 1) & 3));
  v31 = vmul_n_f32(v30, 1.0 / v23);
  __asm { FMOV            V5.2S, #1.0 }

  v37 = vmul_n_f32(vadd_f32(v31, _D5), vcvts_n_f32_u32(v19 - 1, 1uLL));
  v38 = vcvt_u32_f32(v37);
  v39 = vcgt_f32(vsub_f32(v37, vcvt_f32_u32(v38)), 0x3F0000003F000000);
  v38.i32[1] += (v29 >> 31) * v19;
  v40 = vsub_s32(v38, v39);
  v41 = (*(v18 + 1) + (v40.i32[0] + v40.i32[1] * v19));
  v42 = *v41;
  v49 = v41[v18[1]];
  v50 = v42;
  v46 = v20;
  v47 = v21;
  v48 = -v16;
  physx::localSearch(&v50, &v46, v9, v18);
  physx::localSearch(&v49, &v51, v9, v18);
  v43 = ((v11 * a3[10]) + (a3[9] * v10)) + (a3[11] * v12);
  *a5 = v43 + ((vmuls_lane_f32(*(v9 + 12 * v50 + 4), v45, 1) + (*(v9 + 12 * v50) * v45.f32[0])) + (*(v9 + 12 * v50 + 8) * v16));
  result = v43 + ((vmuls_lane_f32(*(v9 + 12 * v49 + 4), v45, 1) + (*(v9 + 12 * v49) * v45.f32[0])) + (*(v9 + 12 * v49 + 8) * v16));
  *a6 = result;
  return result;
}

uint64_t SelectClosestEdgeCB_Convex(uint64_t a1, float *a2, float *a3)
{
  v4 = a3[1];
  v5 = a3[2];
  v6 = v5 * a2[8];
  v7 = ((*a3 * *a2) + (v4 * a2[3])) + (v5 * a2[6]);
  v8 = ((*a3 * a2[1]) + (v4 * a2[4])) + (v5 * a2[7]);
  v9 = ((*a3 * a2[2]) + (v4 * a2[5])) + v6;
  v10 = *(a1 + 24);
  v11 = *(a1 + 16);
  v12 = ((v8 * v10[1]) + (*v10 * v7)) + (v10[2] * v9);
  if (v11 < 2)
  {
    result = 0;
  }

  else
  {
    LODWORD(result) = 0;
    v14 = v10 + 7;
    for (i = 1; i != v11; ++i)
    {
      v16 = (v8 * *(v14 - 1)) + (*(v14 - 2) * v7);
      v17 = *v14;
      v14 += 5;
      v18 = v16 + (v17 * v9);
      if (v18 <= v12)
      {
        result = result;
      }

      else
      {
        result = i;
      }

      if (v18 > v12)
      {
        v12 = v18;
      }
    }
  }

  v19 = *(a1 + 20);
  if (v19)
  {
    v20 = 0;
    v21 = *(a1 + 48);
    v22 = v12 * v12;
    v23 = -1;
    v24 = 1;
    do
    {
      v25 = &v10[5 * *(v21 + v24 - 1)];
      v26 = &v10[5 * *(v21 + v24)];
      v27 = *v25 + *v26;
      v28 = v25[1] + v26[1];
      v29 = v25[2] + v26[2];
      v30 = ((v28 * v28) + (v27 * v27)) + (v29 * v29);
      v31 = ((v8 * v28) + (v27 * v7)) + (v29 * v9);
      v32 = v31 < 0.0;
      v33 = v31 * v31;
      if (!v32 && v33 > (v22 * v30))
      {
        v23 = v20;
        v22 = v33 / v30;
      }

      ++v20;
      v24 += 2;
    }

    while (v19 != v20);
    if (v23 != -1)
    {
      v35 = (v21 + (2 * v23));
      v36 = *v35;
      v37 = v35[1];
      if ((((v8 * v10[5 * v36 + 1]) + (v10[5 * v36] * v7)) + (v10[5 * v36 + 2] * v9)) <= (((v8 * v10[5 * v37 + 1]) + (v10[5 * v37] * v7)) + (v10[5 * v37 + 2] * v9)))
      {
        return v37;
      }

      else
      {
        return v36;
      }
    }
  }

  return result;
}

float physx::Gu::PolygonalBox::PolygonalBox(uint64_t a1, float *a2)
{
  v2 = 0;
  *a1 = a2;
  v3 = *a2;
  v4 = a2[1];
  v5 = -*a2;
  v6 = a2[2];
  *(a1 + 8) = v5;
  *(a1 + 12) = -v4;
  *(a1 + 16) = -v6;
  *(a1 + 20) = v3;
  *(a1 + 24) = -v4;
  *(a1 + 28) = -v6;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  *(a1 + 40) = -v6;
  *(a1 + 44) = v5;
  *(a1 + 48) = v4;
  *(a1 + 52) = -v6;
  *(a1 + 56) = v5;
  *(a1 + 60) = -v4;
  *(a1 + 64) = v6;
  *(a1 + 68) = v3;
  *(a1 + 72) = -v4;
  *(a1 + 76) = v6;
  *(a1 + 80) = v3;
  *(a1 + 84) = v4;
  *(a1 + 88) = v6;
  *(a1 + 92) = v5;
  v7 = (a1 + 122);
  *(a1 + 96) = v4;
  *(a1 + 100) = v6;
  do
  {
    *v7 = 4;
    *(v7 - 1) = 4 * v2++;
    v7 += 20;
  }

  while (v2 != 6);
  *(a1 + 124) = 1065353216;
  *(a1 + 132) = 0;
  *(a1 + 136) = -*a2;
  *(a1 + 164) = 3212836864;
  *(a1 + 172) = 0;
  *(a1 + 176) = -*a2;
  *(a1 + 143) = 0;
  *(a1 + 183) = 1;
  *(a1 + 184) = 0x3F80000000000000;
  *(a1 + 192) = 0;
  *(a1 + 196) = -a2[1];
  *(a1 + 204) = 0xBF80000000000000;
  *(a1 + 212) = 0;
  *(a1 + 216) = -a2[1];
  *(a1 + 203) = 0;
  *(a1 + 223) = 2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1065353216;
  *(a1 + 156) = -a2[2];
  *(a1 + 104) = 0;
  *(a1 + 112) = -1082130432;
  result = -a2[2];
  *(a1 + 116) = result;
  *(a1 + 163) = 0;
  *(a1 + 123) = 4;
  return result;
}

void *physx::Gu::PolygonalBox::getPolygonalData(uint64_t *a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0x600000008;
  v2 = a1 + 13;
  *(a2 + 20) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v4 = *a1;
  result = a1 + 1;
  *(a2 + 24) = v2;
  *(a2 + 32) = result;
  *(a2 + 40) = &gPxcBoxPolygonData;
  *(a2 + 48) = 0;
  *(a2 + 80) = v4;
  *(a2 + 88) = HullProjectionCB_Box;
  *(a2 + 96) = SelectClosestEdgeCB_Box;
  return result;
}

float HullProjectionCB_Box(uint64_t a1, float *a2, float *a3, uint64_t a4, float *a5, float *a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = ((a3[1] * v6) + (*a3 * *a2)) + (a3[2] * v7);
  v9 = ((v6 * a3[4]) + (a3[3] * *a2)) + (a3[5] * v7);
  v10 = ((v6 * a3[7]) + (a3[6] * *a2)) + (a3[8] * v7);
  v11 = *(a1 + 80);
  v12 = *v11;
  v13 = v11[1];
  if (v8 < 0.0)
  {
    v12 = -*v11;
  }

  if (v9 < 0.0)
  {
    v13 = -v13;
  }

  v14 = v11[2];
  if (v10 < 0.0)
  {
    v14 = -v14;
  }

  v15 = ((v6 * a3[10]) + (a3[9] * *a2)) + (a3[11] * v7);
  v16 = ((v9 * v13) + (v12 * v8)) + (v14 * v10);
  *a6 = v16 + v15;
  result = v15 - v16;
  *a5 = result;
  return result;
}

uint64_t SelectClosestEdgeCB_Box(uint64_t result, uint64_t a2, float *a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = *(v3 + 24);
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = ((v4[1] * v6) + (*v4 * *a3)) + (v4[2] * v7);
  v9 = v4 + 7;
  v10 = -5;
  do
  {
    v11 = (v6 * *(v9 - 1)) + (*(v9 - 2) * v5);
    v12 = *v9;
    v9 += 5;
    v13 = v11 + (v12 * v7);
    if (v13 <= v8)
    {
      result = result;
    }

    else
    {
      result = (v10 + 6);
    }

    if (v13 > v8)
    {
      v8 = v13;
    }
  }

  while (!__CFADD__(v10++, 1));
  v15 = 0;
  v16 = -1;
  v17 = &dword_1E3116A20;
  do
  {
    v18 = (v6 * *(v17 - 1)) + (*(v17 - 2) * v5);
    v19 = *v17;
    v17 += 3;
    v20 = v18 + (v19 * v7);
    if (v20 > v8)
    {
      v8 = v20;
      v16 = v15;
    }

    ++v15;
  }

  while (v15 != 12);
  if (v16 != -1)
  {
    v21 = gPxcBoxEdgeDesc[2 * v16 + 1];
    v22 = gPxcBoxFaceByEdge[v21];
    v23 = gPxcBoxFaceByEdge[(v21 + 1)];
    if ((((v6 * v4[5 * v22 + 1]) + (v4[5 * v22] * v5)) + (v4[5 * v22 + 2] * v7)) <= (((v6 * v4[5 * v23 + 1]) + (v4[5 * v23] * v5)) + (v4[5 * v23 + 2] * v7)))
    {
      return v23;
    }

    else
    {
      return v22;
    }
  }

  return result;
}

float *physx::Gu::distancePointBoxSquared(float *result, float *a2, uint64_t a3, float *a4, uint64_t a5)
{
  v5 = 0;
  v11 = (((result[1] - a2[1]) * a4[7]) + (a4[6] * (*result - *a2))) + (a4[8] * (result[2] - a2[2]));
  v6 = 0.0;
  do
  {
    v7 = *(&v10 + v5);
    v8 = *(a3 + v5);
    v9 = -v8;
    if (v7 >= -v8)
    {
      if (v7 <= v8)
      {
        goto LABEL_7;
      }

      v6 = v6 + ((v7 - v8) * (v7 - v8));
      v9 = *(a3 + v5);
    }

    else
    {
      v6 = v6 + ((v7 + v8) * (v7 + v8));
    }

    *(&v10 + v5) = v9;
LABEL_7:
    v5 += 4;
  }

  while (v5 != 12);
  if (a5)
  {
    *a5 = v10;
    *(a5 + 8) = v11;
  }

  return result;
}

float32x2_t physx::Gu::closestPtPointTriangle@<D0>(float *a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X2>, float32x2_t *a4@<X3>, float *a5@<X4>, float *a6@<X5>, float32x2_t *a7@<X8>)
{
  v7 = *a3;
  v8 = vsub_f32(*a3, *a2);
  v9 = a3[1].f32[0];
  v10 = a2[1].f32[0];
  v11 = v9 - v10;
  v12 = *a4;
  v13 = vsub_f32(*a4, *a2);
  v14 = a4[1].f32[0];
  v15 = v14 - v10;
  v16 = *a1;
  v17 = a1[1];
  v18 = *a1 - COERCE_FLOAT(*a2);
  v19 = v17 - COERCE_FLOAT(HIDWORD(*a2));
  v20 = a1[2];
  v21 = v20 - v10;
  v22 = (vmuls_lane_f32(v19, v8, 1) + (v8.f32[0] * v18)) + ((v9 - v10) * (v20 - v10));
  v23 = (vmuls_lane_f32(v19, v13, 1) + (v13.f32[0] * v18)) + (v15 * v21);
  if (v22 <= 0.0 && v23 <= 0.0)
  {
    *a5 = 0.0;
    *a6 = 0.0;
    result = *a2;
    *a7 = *a2;
    result.i32[0] = a2[1].i32[0];
LABEL_15:
    a7[1].i32[0] = result.i32[0];
    return result;
  }

  v25 = v20 - v9;
  v26 = ((v8.f32[1] * (v17 - v7.f32[1])) + (v8.f32[0] * (v16 - v7.f32[0]))) + (v11 * (v20 - v9));
  v27 = ((v13.f32[1] * (v17 - v7.f32[1])) + (v13.f32[0] * (v16 - v7.f32[0]))) + (v15 * v25);
  if (v26 >= 0.0)
  {
    v29 = v27 == v26;
    v28 = v27 >= v26;
  }

  else
  {
    v28 = 1;
    v29 = 0;
  }

  if (v29 || !v28)
  {
    *a5 = 1.0;
    *a6 = 0.0;
    result = *a3;
    *a7 = *a3;
    result.i32[0] = a3[1].i32[0];
    goto LABEL_15;
  }

  v30 = (v22 * v27) - (v26 * v23);
  if (v26 <= 0.0 && v22 >= 0.0 && v30 <= 0.0)
  {
    v31 = v22 / (v22 - v26);
    *a5 = v31;
    *a6 = 0.0;
    v32 = (v11 * v31) + a2[1].f32[0];
    v33 = vmul_n_f32(v8, v31);
LABEL_13:
    result = vadd_f32(v33, *a2);
LABEL_14:
    *a7 = result;
    a7[1].f32[0] = v32;
    return result;
  }

  v34 = v16 - v12.f32[0];
  v35 = v17 - v12.f32[1];
  v36 = v20 - v14;
  v37 = ((v8.f32[1] * v35) + (v8.f32[0] * v34)) + (v11 * v36);
  v38 = ((v13.f32[1] * v35) + (v13.f32[0] * v34)) + (v15 * v36);
  if (v38 >= 0.0)
  {
    v40 = v37 == v38;
    v39 = v37 >= v38;
  }

  else
  {
    v39 = 1;
    v40 = 0;
  }

  if (v40 || !v39)
  {
    *a5 = 0.0;
    *a6 = 1.0;
    result = *a4;
    *a7 = *a4;
    result.i32[0] = a4[1].i32[0];
    goto LABEL_15;
  }

  v41 = (v37 * v23) - (v22 * v38);
  if (v38 <= 0.0 && v41 <= 0.0 && v23 >= 0.0)
  {
    v42 = v23 / (v23 - v38);
    *a5 = 0.0;
    *a6 = v42;
    v32 = (v15 * v42) + a2[1].f32[0];
    v33 = vmul_n_f32(v13, v42);
    goto LABEL_13;
  }

  v43 = (v26 * v38) - (v37 * v27);
  if (v43 > 0.0 || (v27 - v26) < 0.0 || (v44 = v37 - v38, v44 < 0.0))
  {
    v45 = 1.0 / (v30 + (v43 + v41));
    v46 = v41 * v45;
    v47 = v30 * v45;
    *a5 = v46;
    *a6 = v47;
    v32 = (v15 * v47) + ((v11 * v46) + a2[1].f32[0]);
    result = vadd_f32(vmul_n_f32(v13, v47), vadd_f32(vmul_n_f32(v8, v46), *a2));
    goto LABEL_14;
  }

  v48 = (v27 - v26) / ((v27 - v26) + v44);
  *a5 = 1.0 - v48;
  *a6 = v48;
  v49 = a3[1].f32[0] + (v48 * (a4[1].f32[0] - a3[1].f32[0]));
  result = vadd_f32(*a3, vmul_n_f32(vsub_f32(*a4, *a3), v48));
  *a7 = result;
  a7[1].f32[0] = v49;
  return result;
}

float32x2_t physx::Gu::distancePointTriangleSquared(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x2_t *a5, float32x2_t *a6, float32x4_t *a7)
{
  v7 = *a3;
  v8 = *a2;
  v9 = vsubq_f32(*a3, *a2);
  v10 = *a4;
  v11 = vsubq_f32(*a4, *a2);
  v12 = *a1;
  v13 = vsubq_f32(*a1, *a2);
  v14 = vmulq_f32(v9, v13);
  v14.i64[0] = vpaddq_f32(v14, v14).u64[0];
  v15 = vpadd_f32(*v14.f32, *v14.f32);
  v16 = vmulq_f32(v11, v13);
  v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
  v17 = vpadd_f32(*v16.f32, *v16.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcltz_f32(v17), vcltz_f32(v15)), 0), *a2->f32).u32[0] == -1)
  {
    *a5 = 0;
    *a6 = 0;
    v40 = *a1;
    v41 = *a2;
  }

  else
  {
    v18 = vsubq_f32(v12, v7);
    v19 = vmulq_f32(v9, v18);
    v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
    v20 = vpadd_f32(*v19.f32, *v19.f32);
    v21 = vmulq_f32(v11, v18);
    v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
    v22 = vpadd_f32(*v21.f32, *v21.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcge_f32(v20, v22), vcgez_f32(v20)), 0), *v8.f32).u32[0] == -1)
    {
      __asm { FMOV            V0.2S, #1.0 }

      *a5 = _D0;
      *a6 = 0;
      v40 = *a1;
      v41 = *a3;
    }

    else
    {
      v23 = vsubq_f32(v12, v10);
      v24 = vmulq_f32(v9, v23);
      v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
      v25 = vpadd_f32(*v24.f32, *v24.f32);
      v26 = vmulq_f32(v11, v23);
      v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
      v27 = vpadd_f32(*v26.f32, *v26.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgez_f32(v27), vcge_f32(v27, v25)), 0), *v8.f32).u32[0] != -1)
      {
        v28 = vsub_f32(vmul_f32(v15, v22), vmul_f32(v17, v20));
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcltz_f32(v20), vcgez_f32(v15)), vcltz_f32(v28)), 0), *v8.f32).u32[0] == -1)
        {
          v51 = vsub_f32(v15, v20);
          v52 = vrecpe_f32(v51);
          v53 = 4;
          do
          {
            v52 = vmul_f32(v52, vrecps_f32(v51, v52));
            --v53;
          }

          while (v53);
          v54 = vmul_f32(v15, v52);
          v55 = vmulq_n_f32(v9, v54.f32[0]);
          v55.i32[3] = 0;
          v56 = vaddq_f32(v8, v55);
          *a5 = v54;
          *a6 = 0;
        }

        else
        {
          v29 = vsub_f32(vmul_f32(v20, v27), vmul_f32(v22, v25));
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v25, v27), vcge_f32(v22, v20)), vcltz_f32(v29)), 0), *v8.f32).u32[0] == -1)
          {
            v57 = vsubq_f32(v10, v7);
            v58 = vsub_f32(v22, v20);
            v59 = vadd_f32(v58, vsub_f32(v25, v27));
            v60 = vrecpe_f32(v59);
            v61 = 4;
            do
            {
              v60 = vmul_f32(v60, vrecps_f32(v59, v60));
              --v61;
            }

            while (v61);
            v62 = vmul_f32(v58, v60);
            v63 = vmulq_n_f32(v57, v62.f32[0]);
            v63.i32[3] = 0;
            v56 = vaddq_f32(v7, v63);
            __asm { FMOV            V2.2S, #1.0 }

            *a5 = vsub_f32(_D2, v62);
            *a6 = v62;
          }

          else
          {
            v30 = vsub_f32(vmul_f32(v17, v25), vmul_f32(v15, v27));
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcltz_f32(v27), vcgez_f32(v17)), vcltz_f32(v30)), 0), *v8.f32).u32[0] != -1)
            {
              v31 = vadd_f32(v29, vadd_f32(v28, v30));
              v32 = vrecpe_f32(v31);
              v33 = 4;
              do
              {
                v32 = vmul_f32(v32, vrecps_f32(v31, v32));
                --v33;
              }

              while (v33);
              v34 = vmul_f32(v30, v32);
              v35 = vmulq_n_f32(v9, v34.f32[0]);
              v35.i32[3] = 0;
              v36 = vmul_f32(v28, v32);
              v37 = vmulq_n_f32(v11, v36.f32[0]);
              v37.i32[3] = 0;
              v38 = vaddq_f32(v8, vaddq_f32(v35, v37));
              *a5 = v34;
              *a6 = v36;
              *a7 = v38;
              v39 = vsubq_f32(*a1, v38);
              goto LABEL_14;
            }

            v65 = vsub_f32(v17, v27);
            v66 = vrecpe_f32(v65);
            v67 = 4;
            do
            {
              v66 = vmul_f32(v66, vrecps_f32(v65, v66));
              --v67;
            }

            while (v67);
            v68 = vmul_f32(v17, v66);
            v69 = vmulq_n_f32(v11, v68.f32[0]);
            v69.i32[3] = 0;
            v56 = vaddq_f32(v8, v69);
            *a5 = 0;
            *a6 = v68;
          }
        }

        v70 = vsubq_f32(*a1, v56);
        *a7 = v56;
        v48 = vmulq_f32(v70, v70);
        goto LABEL_15;
      }

      *a5 = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *a6 = _D0;
      v40 = *a1;
      v41 = *a4;
    }
  }

  v39 = vsubq_f32(v40, v41);
  *a7 = v41;
LABEL_14:
  v48 = vmulq_f32(v39, v39);
LABEL_15:
  v49 = vpaddq_f32(v48, v48).u64[0];
  return vpadd_f32(v49, v49);
}

float *physx::Gu::distanceSegmentBoxSquared(float *result, float *a2, float *a3, float32x2_t *a4, float *a5, _DWORD *a6, float32x2_t *a7)
{
  v13 = result;
  v14 = 0;
  v15 = result[1];
  v16 = *a2 - *result;
  v17 = a2[1] - v15;
  v18 = result[2];
  v19 = a2[2] - v18;
  v20 = *result - *a3;
  v21 = v15 - a3[1];
  v22 = v18 - a3[2];
  v23 = *a5;
  v24 = a5[1];
  v25 = a5[2];
  v26 = a5[3];
  *&v27 = ((v21 * v24) + (v20 * *a5)) + (v22 * v25);
  v28 = a5[4];
  v29 = a5[5];
  *&v30 = ((v21 * v28) + (v20 * v26)) + (v22 * v29);
  v31 = a5[6];
  v32 = a5[7];
  v33 = (v21 * v32) + (v20 * v31);
  v34 = a5[8];
  v61 = __PAIR64__(v30, v27);
  v62 = v33 + (v22 * v34);
  v58 = ((v17 * v24) + (v16 * v23)) + (v19 * v25);
  v59 = ((v17 * v28) + (v16 * v26)) + (v19 * v29);
  v60 = ((v17 * v32) + (v16 * v31)) + (v19 * v34);
  do
  {
    v35 = *(&v58 + v14);
    if (v35 >= 0.0)
    {
      v36 = 0;
    }

    else
    {
      v61.f32[v14] = -v61.f32[v14];
      *(&v58 + v14) = -v35;
      v36 = 1;
    }

    *(&v57[2] + ++v14) = v36;
  }

  while (v14 != 3);
  *v57 = 0;
  if (v58 <= 0.0)
  {
    if (v59 > 0.0)
    {
      v39 = 1;
      if (v60 > 0.0)
      {
        v40 = 0;
        v41 = a4;
        v42 = 2;
LABEL_20:
        result = case0(v39, v42, v40, &v61, &v58, v41, v57, &v57[1]);
        goto LABEL_44;
      }

      v43 = 0;
      goto LABEL_23;
    }

    if (v60 > 0.0)
    {
      v39 = 2;
      v43 = 0;
      v44 = a4;
      v45 = 1;
LABEL_24:
      result = case00(v39, v43, v45, &v61, &v58, v44, v57, &v57[1]);
      goto LABEL_44;
    }

    v46 = a4->f32[0];
    v47 = -a4->f32[0];
    if (v61.f32[0] >= v47)
    {
      v48 = 0.0;
      if (v61.f32[0] <= v46)
      {
        goto LABEL_32;
      }

      v48 = ((v61.f32[0] - v46) * (v61.f32[0] - v46)) + 0.0;
      v47 = a4->f32[0];
    }

    else
    {
      v48 = ((v61.f32[0] + v46) * (v61.f32[0] + v46)) + 0.0;
    }

    *&v57[1] = v48;
    v61.f32[0] = v47;
LABEL_32:
    v49 = a4->f32[1];
    v50 = -v49;
    if (v61.f32[1] >= -v49)
    {
      if (v61.f32[1] <= v49)
      {
        goto LABEL_37;
      }

      v48 = v48 + ((v61.f32[1] - v49) * (v61.f32[1] - v49));
      v50 = a4->f32[1];
    }

    else
    {
      v48 = v48 + ((v61.f32[1] + v49) * (v61.f32[1] + v49));
    }

    *&v57[1] = v48;
    v61.f32[1] = v50;
LABEL_37:
    v51 = a4[1].f32[0];
    v52 = -v51;
    if (v62 >= -v51)
    {
      if (v62 <= v51)
      {
LABEL_42:
        v57[0] = 0;
        goto LABEL_44;
      }

      v53 = v48 + ((v62 - v51) * (v62 - v51));
      v52 = a4[1].f32[0];
    }

    else
    {
      v53 = v48 + ((v62 + v51) * (v62 + v51));
    }

    *&v57[1] = v53;
    v62 = v52;
    goto LABEL_42;
  }

  if (v59 <= 0.0)
  {
    v39 = 0;
    if (v60 > 0.0)
    {
      v42 = 2;
      v41 = a4;
      v40 = 1;
      goto LABEL_20;
    }

    v43 = 1;
LABEL_23:
    v44 = a4;
    v45 = 2;
    goto LABEL_24;
  }

  if (v60 <= 0.0)
  {
    v39 = 0;
    v42 = 1;
    v41 = a4;
    v40 = 2;
    goto LABEL_20;
  }

  v37 = v62 - a4[1].f32[0];
  v38 = vsub_f32(v61, *a4);
  v63 = v38;
  v64 = v37;
  if ((v59 * v38.f32[0]) >= vmuls_lane_f32(v58, v38, 1))
  {
    if ((v60 * v38.f32[0]) >= (v58 * v37))
    {
      result = face(0, 1u, 2u, &v61, &v58, a4, &v63, v57, &v57[1]);
      goto LABEL_44;
    }

    goto LABEL_28;
  }

  if ((v60 * v38.f32[1]) < (v59 * v37))
  {
LABEL_28:
    result = face(2, 0, 1u, &v61, &v58, a4, &v63, v57, &v57[1]);
    goto LABEL_44;
  }

  result = face(1, 2u, 0, &v61, &v58, a4, &v63, v57, &v57[1]);
LABEL_44:
  for (i = 0; i != 3; ++i)
  {
    if (*(&v57[2] + i + 1) == 1)
    {
      v61.f32[i] = -v61.f32[i];
    }
  }

  if (*v57 < 0.0)
  {
    if (a6)
    {
      *a6 = 0;
    }

    v55 = v13;
    return physx::Gu::distancePointBoxSquared(v55, a3, a4, a5, a7);
  }

  if (*v57 > 1.0)
  {
    if (a6)
    {
      *a6 = 1065353216;
    }

    v55 = a2;
    return physx::Gu::distancePointBoxSquared(v55, a3, a4, a5, a7);
  }

  if (a6)
  {
    *a6 = v57[0];
  }

  if (a7)
  {
    v56 = v62;
    *a7 = v61;
    a7[1].f32[0] = v56;
  }

  return result;
}

float physx::Gu::distanceSegmentSegmentSquared(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = v7 * 0.5;
  v10 = v8 * 0.5;
  v11 = sqrtf(((v7 * v7) + (v6 * v6)) + (v8 * v8));
  v12 = 0.0;
  if (v11 == 0.0)
  {
    v13 = 0.0;
    v14 = v11;
  }

  else
  {
    v13 = 1.0 / v11;
    v6 = v6 * (1.0 / v11);
    v7 = v7 * (1.0 / v11);
    v8 = v8 * (1.0 / v11);
    v14 = v11 * 0.5;
  }

  v15 = v9 + a1[1];
  v16 = v10 + a1[2];
  v17 = *a4;
  v18 = a4[1];
  v19 = a4[2];
  v20 = (v18 * 0.5) + a3[1];
  v21 = (v19 * 0.5) + a3[2];
  v22 = sqrtf(((v18 * v18) + (v17 * v17)) + (v19 * v19));
  if (v22 == 0.0)
  {
    v23 = v22;
  }

  else
  {
    v12 = 1.0 / v22;
    v17 = v17 * (1.0 / v22);
    v18 = v18 * (1.0 / v22);
    v19 = v19 * (1.0 / v22);
    v23 = v22 * 0.5;
  }

  v24 = ((*a2 * 0.5) + *a1) - ((*a4 * 0.5) + *a3);
  v25 = v15 - v20;
  v26 = v16 - v21;
  v27 = (v7 * v18) + (v6 * v17);
  v28 = v27 + (v8 * v19);
  v29 = ((v7 * v25) + (v24 * v6)) + (v26 * v8);
  v30 = (v25 * v18) + (v24 * v17);
  v31 = v30 + (v26 * v19);
  v32 = ((v25 * v25) + (v24 * v24)) + (v26 * v26);
  v33 = fabsf(1.0 - (v28 * v28));
  if (v33 < 0.000001)
  {
    v34 = v14 + v23;
    v35 = -1.0;
    if (v28 >= 0.0)
    {
      v35 = 1.0;
    }

    v36 = (v29 + (v35 * v31)) * 0.5;
    if (v36 <= v34)
    {
      v37 = -v36;
      if (v34 < -v36)
      {
        v37 = v14 + v23;
      }
    }

    else
    {
      v37 = -v34;
    }

    v44 = (v23 * (v37 * -v35)) / v34;
    v45 = v37 + (v35 * v44);
    v46 = v32 + (v37 * (v37 + (v36 * 2.0)));
    goto LABEL_19;
  }

  v38 = -(v27 + (v8 * v19));
  v39 = -(v30 + (v26 * v19));
  v40 = -(v29 - (v28 * v31));
  v41 = v31 + (v38 * v29);
  v42 = v23 * v33;
  v43 = -(v23 * v33);
  if (v40 >= -(v14 * v33))
  {
    if (v40 <= (v14 * v33))
    {
      if (v41 < v43)
      {
        v44 = -v23;
        v53 = v29 + (v28 * v23);
        v54 = -v53;
        v55 = ((v39 * 2.0) - v23) * -v23;
        v56 = v32 + (v55 + (v14 * (v14 + (-v53 * -2.0))));
        if (v14 < -v53)
        {
          v57 = v14;
        }

        else
        {
          v56 = v32 + (v55 + (v53 * v54));
          v57 = -v53;
        }

        v46 = v32 + (v55 - (v14 * -(v14 - (v54 * -2.0))));
        if (v53 > v14)
        {
          v45 = -v14;
        }

        else
        {
          v46 = v56;
          v45 = v57;
        }

        goto LABEL_19;
      }

      if (v41 <= v42)
      {
        v45 = v40 * (1.0 / v33);
        v44 = v41 * (1.0 / v33);
        v50 = (v44 * ((v44 + (v38 * v45)) + (v39 * 2.0))) + (v45 * ((v45 + (v38 * v44)) + (v29 * 2.0)));
        goto LABEL_105;
      }

      v72 = v29 + (v38 * v23);
      v73 = -v72;
      v74 = v23 * (v23 + (v39 * 2.0));
      v75 = v32 + (v74 + (v14 * (v14 + (-v72 * -2.0))));
      if (v14 < -v72)
      {
        v76 = v14;
      }

      else
      {
        v75 = v32 + (v74 + (v72 * v73));
        v76 = -v72;
      }

      v46 = v32 + (v74 - (v14 * -(v14 - (v73 * -2.0))));
      if (v72 > v14)
      {
        v45 = -v14;
      }

      else
      {
        v46 = v75;
        v45 = v76;
      }
    }

    else
    {
      if (v41 < v43)
      {
        v44 = -v23;
        v48 = v29 + (v28 * v23);
        v49 = -v48;
        if (v48 > v14)
        {
          v45 = -v14;
          v50 = (((v39 * 2.0) - v23) * -v23) - (v14 * -(v14 - (v49 * -2.0)));
LABEL_105:
          v46 = v32 + v50;
          goto LABEL_19;
        }

        v77 = v39 + (v38 * v14);
        v78 = -v77;
        v84 = v77 > v23;
        v79 = v14 * (v14 + (v29 * 2.0));
        v80 = v32 + (v79 + (v77 * -v77));
        if (v84)
        {
          v80 = v32 + (v79 + (-v23 * ((v78 * -2.0) - v23)));
          v81 = -v23;
        }

        else
        {
          v81 = v78;
        }

        v82 = v32 + (v79 + (v23 * (v23 + (v78 * -2.0))));
        if (v23 < v78)
        {
          v83 = v23;
        }

        else
        {
          v82 = v80;
          v83 = v81;
        }

        v46 = v32 + ((((v39 * 2.0) - v23) * -v23) + (v48 * v49));
        v84 = v14 < v49;
        if (v14 < v49)
        {
          v46 = v82;
          v44 = v83;
        }

LABEL_115:
        if (v84)
        {
          v45 = v14;
        }

        else
        {
          v45 = v49;
        }

        goto LABEL_19;
      }

      if (v41 <= v42)
      {
        v94 = v39 + (v38 * v14);
        v95 = -v94;
        v96 = v14 * (v14 + (v29 * 2.0));
        v97 = v32 + (v96 + (v23 * (v23 + (-v94 * -2.0))));
        if (v23 < -v94)
        {
          v98 = v23;
        }

        else
        {
          v97 = v32 + (v96 + (v94 * v95));
          v98 = -v94;
        }

        v46 = v32 + (v96 - (v23 * -(v23 - (v95 * -2.0))));
        if (v94 > v23)
        {
          v44 = -v23;
        }

        else
        {
          v46 = v97;
          v44 = v98;
        }

        goto LABEL_103;
      }

      v66 = v29 + (v38 * v23);
      v49 = -v66;
      if (v66 <= v14)
      {
        v99 = v39 + (v38 * v14);
        v100 = -v99;
        v101 = v14 * (v14 + (v29 * 2.0));
        v102 = v32 + (v101 + (v23 * (v23 + (-v99 * -2.0))));
        if (v23 < -v99)
        {
          v103 = v23;
        }

        else
        {
          v102 = v32 + (v101 + (v99 * v100));
          v103 = -v99;
        }

        v104 = v32 + (v101 - (v23 * -(v23 - (v100 * -2.0))));
        if (v99 > v23)
        {
          v105 = -v23;
        }

        else
        {
          v104 = v102;
          v105 = v103;
        }

        v46 = v32 + ((v23 * (v23 + (v39 * 2.0))) + (v66 * v49));
        v84 = v14 < v49;
        if (v14 >= v49)
        {
          v44 = v23;
        }

        else
        {
          v46 = v104;
          v44 = v105;
        }

        goto LABEL_115;
      }

      v45 = -v14;
      v46 = v32 + ((v23 * (v23 + (v39 * 2.0))) - (v14 * -(v14 - (v49 * -2.0))));
    }

    v44 = v23;
    goto LABEL_19;
  }

  if (v41 >= v43)
  {
    if (v41 <= v42)
    {
      v45 = -v14;
      v67 = v39 + (v28 * v14);
      v68 = -v67;
      v69 = ((v29 * 2.0) - v14) * -v14;
      v70 = v32 + (v69 + (v23 * (v23 + (-v67 * -2.0))));
      if (v23 < -v67)
      {
        v71 = v23;
      }

      else
      {
        v70 = v32 + (v69 + (v67 * v68));
        v71 = -v67;
      }

      v46 = v32 + (v69 - (v23 * -(v23 - (v68 * -2.0))));
      if (v67 > v23)
      {
        v44 = -v23;
      }

      else
      {
        v46 = v70;
        v44 = v71;
      }

      goto LABEL_19;
    }

    v45 = -(v29 + (v38 * v23));
    if (v14 < v45)
    {
      v46 = v32 + ((v23 * (v23 + (v39 * 2.0))) + (v14 * (v14 + (v45 * -2.0))));
      v44 = v23;
      goto LABEL_103;
    }

    v85 = v29 + (v38 * v23);
    v86 = v39 + (v28 * v14);
    v87 = -v86;
    v88 = ((v29 * 2.0) - v14) * -v14;
    v89 = v32 + (v88 + (v23 * (v23 + (-v86 * -2.0))));
    if (v23 < -v86)
    {
      v90 = v23;
    }

    else
    {
      v89 = v32 + (v88 + (v86 * v87));
      v90 = -v86;
    }

    v91 = v32 + (v88 - (v23 * -(v23 - (v87 * -2.0))));
    if (v86 > v23)
    {
      v92 = -v23;
    }

    else
    {
      v91 = v89;
      v92 = v90;
    }

    v46 = v32 + ((v23 * (v23 + (v39 * 2.0))) + (v85 * v45));
    v93 = v85 > v14;
    if (v85 <= v14)
    {
      v44 = v23;
    }

    else
    {
      v46 = v91;
      v44 = v92;
    }

    if (v93)
    {
      v45 = -v14;
    }
  }

  else
  {
    v44 = -v23;
    v45 = -(v29 + (v28 * v23));
    if (v14 < v45)
    {
      v46 = v32 + ((((v39 * 2.0) - v23) * -v23) + (v14 * (v14 + (v45 * -2.0))));
LABEL_103:
      v45 = v14;
      goto LABEL_19;
    }

    v58 = v29 + (v28 * v23);
    v59 = v39 + (v28 * v14);
    v60 = -v59;
    v61 = ((v29 * 2.0) - v14) * -v14;
    v62 = v32 + (v61 + (v23 * (v23 + (-v59 * -2.0))));
    if (v23 < -v59)
    {
      v63 = v23;
    }

    else
    {
      v62 = v32 + (v61 + (v59 * v60));
      v63 = -v59;
    }

    v64 = v32 + (v61 + (-v23 * ((v60 * -2.0) - v23)));
    if (v59 > v23)
    {
      v65 = -v23;
    }

    else
    {
      v64 = v62;
      v65 = v63;
    }

    v46 = v32 + ((((v39 * 2.0) - v23) * -v23) + (v58 * v45));
    if (v58 > v14)
    {
      v46 = v64;
      v44 = v65;
      v45 = -v14;
    }
  }

LABEL_19:
  if (a5)
  {
    *a5 = v45;
  }

  if (a6)
  {
    *a6 = v44;
  }

  if (a5)
  {
    if (v11 == 0.0)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = v13 * (v14 + *a5);
    }

    *a5 = v47;
  }

  if (a6)
  {
    if (v22 == 0.0)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = v12 * (v23 + *a6);
    }

    *a6 = v51;
  }

  result = 0.0;
  if (v46 >= 0.0)
  {
    return v46;
  }

  return result;
}

float32x2_t physx::Gu::distanceSegmentSegmentSquared(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x2_t *a5, void *a6)
{
  v6 = vsubq_f32(*a1, *a3);
  v7 = vmulq_f32(*a2, *a2);
  v8 = *a4;
  v9 = vmulq_f32(v8, v8);
  v10 = vmulq_f32(*a2, *a4);
  v11 = vmulq_f32(*a2, v6);
  v12 = vzip1q_s32(v7, v10);
  v13 = vzip2q_s32(v7, v10);
  v14 = vzip1q_s32(v9, v11);
  v15 = vaddq_f32(vzip1q_s32(v13, vzip2q_s32(v9, v11)), vaddq_f32(vzip1q_s32(v12, v14), vzip2q_s32(v12, v14)));
  v16 = vrecpeq_f32(v15);
  v17 = 4;
  do
  {
    v16 = vmulq_f32(v16, vrecpsq_f32(v16, v15));
    --v17;
  }

  while (v17);
  v18 = vdup_lane_s32(*v15.f32, 1);
  v19 = vextq_s8(v15, v15, 8uLL).u64[0];
  v20 = vsub_f32(vmul_lane_f32(vdup_lane_s32(*v15.f32, 0), *v15.f32, 1), vdup_lane_s32(vmul_f32(v19, v19), 0));
  v21 = vrecpe_f32(v20);
  v22 = 4;
  do
  {
    v21 = vmul_f32(v21, vrecps_f32(v20, v21));
    --v22;
  }

  while (v22);
  v23 = vmulq_f32(v6, v8);
  v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
  *v23.f32 = vpadd_f32(*v23.f32, *v23.f32);
  v24 = vsub_f32(vmul_laneq_f32(*v23.f32, v15, 2), vmul_laneq_f32(v18, v15, 3));
  _Q5.i64[0] = 0x3400000034000000;
  _Q5.i64[1] = 0x3400000034000000;
  v26 = vand_s8(*v16.f32, *&vcgtq_f32(v15, _Q5));
  __asm { FMOV            V5.2S, #1.0 }

  *v23.f32 = vmax_f32(vmin_f32(vmul_lane_f32(vmla_laneq_f32(*v23.f32, vbsl_s8(vdup_lane_s32(vcgt_f32(0x3400000034000000, v20), 0), 0x3F0000003F000000, vmax_f32(vmin_f32(vmul_f32(v21, v24), *_Q5.f32), 0)), v15, 2), v26, 1), *_Q5.f32), 0);
  v31 = vmax_f32(vmin_f32(vmul_n_f32(vsub_f32(vmul_laneq_f32(*v23.f32, v15, 2), vdup_laneq_s32(v15, 3)), v26.f32[0]), *_Q5.f32), 0);
  *a5 = v31;
  *a6 = v23.i64[0];
  v32 = vmlaq_n_f32(*a1, *a2, v31.f32[0]);
  v33 = vmlaq_n_f32(*a3, *a4, v23.f32[0]);
  v34 = vsub_f32(*v32.i8, *v33.i8);
  v35 = vsub_f32(vextq_s8(v32, v32, 8uLL).u32[0], vextq_s8(v33, v33, 8uLL).u32[0]);
  v36 = vpadd_f32(vmul_f32(v34, v34), vmul_f32(v35, v35));
  return vpadd_f32(v36, v36);
}

double physx::Gu::distanceSegmentSegmentSquared4(int32x4_t *a1, int32x2_t *a2, int32x4_t *a3, int32x4_t *a4, int32x4_t *a5, int32x4_t *a6, int32x4_t *a7, int32x4_t *a8, int32x4_t *a9, int32x4_t *a10, float32x4_t *a11, float32x4_t *a12)
{
  v12 = *a2->i8;
  v13 = vdupq_lane_s32(*a2, 1);
  v14 = *a1;
  v15 = *a3;
  v16 = *a5;
  v17 = *a7;
  v18 = *a9;
  v19 = vzip1q_s32(*a4, *a8);
  v20 = vzip1q_s32(*a6, *a10);
  v21 = vzip2q_s32(v19, v20);
  v22 = vmulq_f32(v12, v12);
  v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
  *v25.f32 = vpadd_f32(*v22.f32, *v22.f32);
  v23 = vmulq_f32(v21, v21);
  v24 = vmulq_lane_f32(v21, *a2, 1);
  v25.i64[1] = v25.i64[0];
  v26 = vrecpeq_f32(v25);
  v27 = 4;
  do
  {
    v26 = vmulq_f32(v26, vrecpsq_f32(v26, v25));
    --v27;
  }

  while (v27);
  v28 = vzip1q_s32(v19, v20);
  v29 = vzip1q_s32(vzip2q_s32(*a4, *a8), vzip2q_s32(*a6, *a10));
  v30 = vmlaq_f32(vmlaq_f32(v23, v28, v28), v29, v29);
  v31 = vrecpeq_f32(v30);
  v32 = 4;
  do
  {
    v31 = vmulq_f32(v31, vrecpsq_f32(v31, v30));
    --v32;
  }

  while (v32);
  v33 = vdupq_lane_s32(*v12.f32, 0);
  v34 = vdupq_laneq_s32(v12, 2);
  v35 = vmlaq_laneq_f32(vmlaq_n_f32(v24, v28, v12.f32[0]), v29, v12, 2);
  v36 = vsubq_f32(vmulq_f32(v30, v25), vmulq_f32(v35, v35));
  v37 = vrecpeq_f32(v36);
  v38 = 4;
  do
  {
    v37 = vmulq_f32(v37, vrecpsq_f32(v37, v36));
    --v38;
  }

  while (v38);
  v39 = vdupq_laneq_s32(v14, 2);
  v40 = vzip1q_s32(vzip2q_s32(v15, v17), vzip2q_s32(v16, v18));
  v41 = vdupq_lane_s32(*v14.i8, 0);
  v42 = vsubq_f32(v39, v40);
  v43 = vzip1q_s32(v15, v17);
  v44 = vzip1q_s32(v16, v18);
  v45 = vzip1q_s32(v43, v44);
  v46 = vdupq_lane_s32(*v14.i8, 1);
  v47 = vsubq_f32(v41, v45);
  v48 = vzip2q_s32(v43, v44);
  v49 = vsubq_f32(v46, v48);
  v50 = vmlaq_f32(vmlaq_f32(vmulq_f32(v21, v49), v47, v28), v42, v29);
  v51 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v49, *v12.f32, 1), v47, v33), v42, v34);
  __asm { FMOV            V19.4S, #1.0 }

  v57 = vmaxq_f32(vminq_f32(vmulq_f32(vsubq_f32(vmulq_f32(v35, v50), vmulq_f32(v30, v51)), v37), _Q19), 0);
  v58.i64[0] = 0x3400000034000000;
  v58.i64[1] = 0x3400000034000000;
  v42.i64[0] = 0x3F0000003F000000;
  v42.i64[1] = 0x3F0000003F000000;
  v59 = vmaxq_f32(vminq_f32(vmulq_f32(v31, vaddq_f32(v50, vmulq_f32(v35, vbslq_s8(vcgeq_f32(v58, v36), v42, v57)))), _Q19), 0);
  v60 = vbicq_s8(vmaxq_f32(vminq_f32(vmulq_f32(v26, vsubq_f32(vmulq_f32(v35, v59), v51)), _Q19), 0), vcgeq_f32(v58, v25));
  *a11 = v60;
  *a12 = v59;
  v61 = vmlaq_f32(v39, v60, v34);
  v62 = vmlaq_f32(v48, v59, v21);
  v63 = vsubq_f32(vmlaq_f32(v41, v60, v33), vmlaq_f32(v45, v59, v28));
  v64 = vsubq_f32(vmlaq_f32(v46, v60, v13), v62);
  v65 = vsubq_f32(v61, vmlaq_f32(v40, v59, v29));
  *&result = vmlaq_f32(vmlaq_f32(vmulq_f32(v65, v65), v64, v64), v63, v63).u64[0];
  return result;
}

uint64_t case0(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, float *a8)
{
  v8 = *(a6 + 4 * result);
  v9 = *(a4 + 4 * result) - v8;
  v10 = *(a6 + 4 * a2);
  v11 = *(a4 + 4 * a2) - v10;
  v12 = v9 * *(a5 + 4 * a2);
  v13 = v11 * *(a5 + 4 * result);
  if (v12 >= v13)
  {
    *(a4 + 4 * result) = v8;
    v18 = *(a4 + 4 * a2);
    v11 = v18 + *(a6 + 4 * a2);
    v19 = *(a5 + 4 * result);
    v20 = v12 - (v19 * v11);
    if (v20 < 0.0)
    {
      if (!a7)
      {
        goto LABEL_14;
      }

      v17 = 1.0 / v19;
      *(a4 + 4 * a2) = v18 - (v12 * v17);
      goto LABEL_13;
    }

    v17 = 1.0 / ((*(a5 + 4 * a2) * *(a5 + 4 * a2)) + (v19 * v19));
    *a8 = *a8 + ((v20 * v20) * v17);
    if (!a7)
    {
      goto LABEL_14;
    }

    *(a4 + 4 * a2) = -*(a6 + 4 * a2);
  }

  else
  {
    *(a4 + 4 * a2) = v10;
    v14 = *(a4 + 4 * result);
    v9 = v14 + *(a6 + 4 * result);
    v15 = *(a5 + 4 * a2);
    v16 = v13 - (v15 * v9);
    if (v16 < 0.0)
    {
      if (!a7)
      {
        goto LABEL_14;
      }

      v17 = 1.0 / v15;
      *(a4 + 4 * result) = v14 - (v13 * v17);
      v9 = v11;
      goto LABEL_13;
    }

    v17 = 1.0 / ((v15 * v15) + (*(a5 + 4 * result) * *(a5 + 4 * result)));
    *a8 = *a8 + ((v16 * v16) * v17);
    if (!a7)
    {
      goto LABEL_14;
    }

    *(a4 + 4 * result) = -*(a6 + 4 * result);
  }

  v9 = (v11 * *(a5 + 4 * a2)) + (*(a5 + 4 * result) * v9);
LABEL_13:
  *a7 = -(v9 * v17);
LABEL_14:
  v21 = *(a4 + 4 * a3);
  v22 = *(a6 + 4 * a3);
  if (v21 >= -v22)
  {
    if (v21 <= v22)
    {
      return result;
    }

    *a8 = *a8 + ((v21 - v22) * (v21 - v22));
    v23 = *(a6 + 4 * a3);
  }

  else
  {
    *a8 = *a8 + ((v21 + v22) * (v21 + v22));
    v23 = -*(a6 + 4 * a3);
  }

  *(a4 + 4 * a3) = v23;
  return result;
}

uint64_t case00(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, float *a8)
{
  if (a7)
  {
    *a7 = (*(a6 + 4 * result) - *(a4 + 4 * result)) / *(a5 + 4 * result);
  }

  *(a4 + 4 * result) = *(a6 + 4 * result);
  v8 = *(a4 + 4 * a2);
  v9 = *(a6 + 4 * a2);
  if (v8 >= -v9)
  {
    if (v8 <= v9)
    {
      goto LABEL_8;
    }

    *a8 = *a8 + ((v8 - v9) * (v8 - v9));
    v10 = *(a6 + 4 * a2);
  }

  else
  {
    *a8 = *a8 + ((v8 + v9) * (v8 + v9));
    v10 = -*(a6 + 4 * a2);
  }

  *(a4 + 4 * a2) = v10;
LABEL_8:
  v11 = *(a4 + 4 * a3);
  v12 = *(a6 + 4 * a3);
  if (v11 >= -v12)
  {
    if (v11 <= v12)
    {
      return result;
    }

    *a8 = *a8 + ((v11 - v12) * (v11 - v12));
    v13 = *(a6 + 4 * a3);
  }

  else
  {
    *a8 = *a8 + ((v11 + v12) * (v11 + v12));
    v13 = -*(a6 + 4 * a3);
  }

  *(a4 + 4 * a3) = v13;
  return result;
}

uint64_t face(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float *a8, float *a9)
{
  v9 = *(a6 + 4 * a2);
  v51[a2] = *(a4 + 4 * a2) + v9;
  v10 = *(a6 + 4 * a3);
  v11 = *(a4 + 4 * a3) + v10;
  v51[a3] = v11;
  v12 = *(a5 + 4 * result);
  v13 = v51[a2];
  v14 = *(a5 + 4 * a2);
  v15 = *(a7 + 4 * result);
  v16 = v11 * v12;
  v17 = *(a5 + 4 * a3);
  v18 = v15 * v17;
  if ((v12 * v13) < (v14 * v15))
  {
    if (v16 >= v18)
    {
      v21 = (v14 * v14) + (v12 * v12);
      v22 = (v13 * v14) + (v12 * v15);
      v23 = (v21 * v11) - (v17 * v22);
      goto LABEL_11;
    }

    v19 = (v17 * v17) + (v12 * v12);
    v20 = (v19 * v13) - (v14 * ((v11 * v17) + (v12 * v15)));
    if (v20 < 0.0)
    {
      v21 = (v14 * v14) + (v12 * v12);
      v22 = (v13 * v14) + (v12 * v15);
      v23 = (v21 * v11) - (v17 * v22);
      if (v23 < 0.0)
      {
        v24 = v21 + (v17 * v17);
        v25 = v22 + (v17 * v11);
        v26 = -v25 / v24;
        *a9 = ((((v13 * v13) + (v15 * v15)) + (v11 * v11)) + (v25 * v26)) + *a9;
        if (!a8)
        {
          return result;
        }

        *a8 = v26;
        *(a4 + 4 * result) = *(a6 + 4 * result);
        v27 = -*(a6 + 4 * a2);
LABEL_24:
        *(a4 + 4 * a2) = v27;
        v36 = -*(a6 + 4 * a3);
LABEL_25:
        *(a4 + 4 * a3) = v36;
        return result;
      }

LABEL_11:
      v32 = (v13 * v13) + (v15 * v15);
      v33 = *a9;
      if (v23 <= (v10 * (v21 + v21)))
      {
        v38 = v23 / v21;
        v39 = v11 - v38;
        v40 = v22 + (v17 * (v11 - (v23 / v21)));
        v41 = -(v22 + (v17 * (v11 - v38))) / (v21 + (v17 * v17));
        *a9 = ((v32 + (v39 * v39)) + (v40 * v41)) + v33;
        if (!a8)
        {
          return result;
        }

        *a8 = v41;
        *(a4 + 4 * result) = *(a6 + 4 * result);
        *(a4 + 4 * a2) = -*(a6 + 4 * a2);
        v36 = v38 - *(a6 + 4 * a3);
      }

      else
      {
        v34 = *(a7 + 4 * a3);
        v35 = -(v22 + (v17 * v34)) / (v21 + (v17 * v17));
        *a9 = v33 + ((v32 + (v34 * v34)) + ((v22 + (v17 * v34)) * v35));
        if (!a8)
        {
          return result;
        }

        *a8 = v35;
        *(a4 + 4 * result) = *(a6 + 4 * result);
        *(a4 + 4 * a2) = -*(a6 + 4 * a2);
        v36 = *(a6 + 4 * a3);
      }

      goto LABEL_25;
    }

    v42 = v9 * (v19 + v19);
    v30 = *a9;
    if (v20 > v42)
    {
LABEL_19:
      v43 = *(a7 + 4 * a2);
      v44 = v19 + (v14 * v14);
      v45 = ((v14 * v43) + (v12 * v15)) + (v17 * v11);
      v46 = -v45 / v44;
      *a9 = v30 + ((((v43 * v43) + (v15 * v15)) + (v11 * v11)) + (v45 * v46));
      if (!a8)
      {
        return result;
      }

      *a8 = v46;
      *(a4 + 4 * result) = *(a6 + 4 * result);
      v27 = *(a6 + 4 * a2);
      goto LABEL_24;
    }

    v31 = v20 / v19;
LABEL_22:
    v47 = v19 + (v14 * v14);
    v48 = v13 - v31;
    v49 = ((v14 * v48) + (v12 * v15)) + (v17 * v11);
    v50 = -v49 / v47;
    *a9 = ((((v48 * v48) + (v15 * v15)) + (v11 * v11)) + (v49 * v50)) + v30;
    if (!a8)
    {
      return result;
    }

    *a8 = v50;
    *(a4 + 4 * result) = *(a6 + 4 * result);
    v27 = v31 - *(a6 + 4 * a2);
    goto LABEL_24;
  }

  if (v16 < v18)
  {
    v19 = (v17 * v17) + (v12 * v12);
    v28 = (v19 * v13) - (v14 * ((v11 * v17) + (v12 * v15)));
    v29 = v9 * (v19 + v19);
    v30 = *a9;
    if (v28 > v29)
    {
      goto LABEL_19;
    }

    v31 = v28 / v19;
    goto LABEL_22;
  }

  if (a8)
  {
    *(a4 + 4 * result) = *(a6 + 4 * result);
    v37 = 1.0 / *(a5 + 4 * result);
    *(a4 + 4 * a2) = *(a4 + 4 * a2) + (-(*(a5 + 4 * a2) * *(a7 + 4 * result)) * v37);
    *(a4 + 4 * a3) = *(a4 + 4 * a3) + (-(*(a5 + 4 * a3) * *(a7 + 4 * result)) * v37);
    *a8 = -(*(a7 + 4 * result) * v37);
  }

  return result;
}

void physx::Gu::distanceSegmentTriangleSquared(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v15 = a2->f32[0];
  v16 = a2->f32[1];
  v17 = a2[1].f32[0];
  v18 = ((v16 * v16) + (v15 * v15)) + (v17 * v17);
  if (v18 < 1.0e-12)
  {
    if (a6)
    {
      *a6 = 0;
    }

    v19 = a3[1].f32[0];
    v20 = a4[1].f32[0] + v19;
    v21 = *a3;
    v135 = vadd_f32(*a4, *a3);
    v136 = v20;
    v22 = v19 + a5[1].f32[0];
    v133 = vadd_f32(v21, *a5);
    v134 = v22;
    v124.i32[0] = 0;
    v122.i32[0] = 0;
    physx::Gu::closestPtPointTriangle(a1, a3, &v135, &v133, &v124, &v122, &v131);
    if (a7)
    {
      *a7 = v124.i32[0];
    }

    if (a8)
    {
      *a8 = v122.i32[0];
    }

    return;
  }

  v25 = a3->f32[0];
  v24 = a3->f32[1];
  v26 = a1->f32[0];
  v27 = a1->f32[1];
  v28 = a3[1].f32[0];
  v29 = a1[1].f32[0];
  v31 = a4->f32[0];
  v30 = a4->f32[1];
  v32 = a4[1].f32[0];
  v34 = a5->f32[0];
  v33 = a5->f32[1];
  v35 = a5[1].f32[0];
  v127 = 0;
  memset(v128, 0, sizeof(v128));
  v126 = 0.0;
  v36 = (v30 * v35) - (v32 * v33);
  v37 = (v32 * v34) - (v31 * v35);
  v38 = (v31 * v33) - (v30 * v34);
  v39 = ((v16 * v37) + (v36 * v15)) + (v38 * v17);
  if ((v39 * v39) < ((v18 * 0.000001) * (((v37 * v37) + (v36 * v36)) + (v38 * v38))))
  {
    v40 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v128[8], &v128[4]);
    *v128 = 0;
    v41 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a5, &v127 + 1, &v126);
    LODWORD(v127) = 0;
    if (v40 > v41)
    {
      *&v128[8] = HIDWORD(v127);
      *v128 = LODWORD(v126);
      v40 = v41;
    }

    v42 = a4[1].f32[0];
    v43 = a3[1].f32[0] + v42;
    v44 = *a4;
    v124 = vadd_f32(*a3, *a4);
    v125 = v43;
    v45 = a5[1].f32[0] - v42;
    v122 = vsub_f32(*a5, v44);
    v123 = v45;
    v46 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, &v124, &v122, &v127 + 1, &v126);
    *&v127 = 1.0 - v126;
    if (v40 > v46)
    {
      *&v128[4] = 1.0 - v126;
      *&v128[8] = HIDWORD(v127);
      *v128 = v126;
      v40 = v46;
    }

    v47 = a3[1].f32[0];
    v48 = a4[1].f32[0] + v47;
    v49 = *a3;
    v135 = vadd_f32(*a4, *a3);
    v136 = v48;
    v50 = v47 + a5[1].f32[0];
    v133 = vadd_f32(v49, *a5);
    v134 = v50;
    v120.i32[0] = 0;
    v130 = 0.0;
    physx::Gu::closestPtPointTriangle(a1, a3, &v135, &v133, &v120, &v130, &v131);
    v126 = v130;
    v127 = v120.u32[0];
    v51 = *a1;
    v52 = a1[1].f32[0];
    v53 = (((v131.f32[1] - COERCE_FLOAT(HIDWORD(*a1))) * (v131.f32[1] - COERCE_FLOAT(HIDWORD(*a1)))) + ((v131.f32[0] - COERCE_FLOAT(*a1)) * (v131.f32[0] - COERCE_FLOAT(*a1)))) + ((v132 - v52) * (v132 - v52));
    if (v40 > v53)
    {
      *&v128[8] = 0;
      *v128 = v130;
      *&v128[4] = v120.i32[0];
      v40 = v53;
    }

    v54 = v52 + a2[1].f32[0];
    v120 = vadd_f32(v51, *a2);
    v121 = v54;
    v55 = a3[1].f32[0];
    v56 = a4[1].f32[0] + v55;
    v57 = *a3;
    v135 = vadd_f32(*a4, *a3);
    v136 = v56;
    v58 = v55 + a5[1].f32[0];
    v133 = vadd_f32(v57, *a5);
    v134 = v58;
    v129 = 0;
    v130 = 0.0;
    physx::Gu::closestPtPointTriangle(&v120, a3, &v135, &v133, &v130, &v129, &v131);
    if (v40 <= ((((v131.f32[1] - v120.f32[1]) * (v131.f32[1] - v120.f32[1])) + ((v131.f32[0] - v120.f32[0]) * (v131.f32[0] - v120.f32[0]))) + ((v132 - v121) * (v132 - v121))))
    {
      goto LABEL_64;
    }

    v60 = v129;
    v59 = LODWORD(v130);
LABEL_18:
    *&v128[8] = 1065353216;
LABEL_63:
    *v128 = v60;
    *&v128[4] = v59;
    goto LABEL_64;
  }

  v116 = v26;
  v117 = v25;
  v61 = v25 - v26;
  v118 = v24;
  v119 = v28;
  v62 = v24 - v27;
  v63 = v28 - v29;
  v64 = ((v16 * v30) + (v15 * v31)) + (v17 * v32);
  v65 = ((v16 * v33) + (v15 * v34)) + (v17 * v35);
  v66 = ((v30 * v30) + (v31 * v31)) + (v32 * v32);
  v67 = ((v30 * v33) + (v31 * v34)) + (v32 * v35);
  v68 = ((v33 * v33) + (v34 * v34)) + (v35 * v35);
  v69 = ((v16 * (v24 - v27)) + ((v25 - v26) * v15)) + ((v28 - v29) * v17);
  v70 = (((v24 - v27) * v30) + ((v25 - v26) * v31)) + ((v28 - v29) * v32);
  v71 = (v66 * v65) + (-v64 * v67);
  v72 = (v66 * v68) - (v67 * v67);
  v73 = (v64 * v68) + (-v65 * v67);
  v74 = ((v73 * -v64) + (v18 * v72)) + (-v65 * v71);
  v75 = 1.0 / v74;
  v76 = v74 == 0.0;
  v77 = 0.0;
  if (!v76)
  {
    v77 = v75;
  }

  v78 = v69 * v77;
  v79 = -(v70 * v77);
  v80 = (v73 * v79) + (v72 * v78);
  v81 = (v65 * v64) - (v18 * v67);
  v82 = (((v65 * -v65) + (v18 * v68)) * v79) + (v73 * v78);
  v83 = (v81 * v79) + (v71 * v78);
  v84 = -((((v62 * v33) + (v61 * v34)) + (v63 * v35)) * v77);
  v85 = v80 + (v71 * v84);
  v86 = v82 + (v81 * v84);
  v87 = v83 + (((v64 * -v64) + (v18 * v66)) * v84);
  *&v128[4] = v86;
  *&v128[8] = v85;
  *v128 = v87;
  v88 = v86 + v87;
  if (v85 >= 0.0)
  {
    if (v85 <= 1.0)
    {
      if (v88 <= 1.0)
      {
        if (v86 >= 0.0)
        {
          if (v87 < 0.0)
          {
            physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v128[8], &v128[4]);
            *v128 = 0;
          }
        }

        else
        {
          v98 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a5, &v128[8], v128);
          *&v128[4] = 0;
          if (v87 < 0.0 && v98 > physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v127 + 1, &v127))
          {
            *&v128[4] = v127;
            *v128 = 0;
          }
        }

        goto LABEL_64;
      }

      if (v86 >= 0.0)
      {
        if (v87 >= 0.0)
        {
          v135.f32[0] = v117 + v31;
          v135.f32[1] = v118 + v30;
          v136 = v119 + v32;
          v133.f32[0] = v34 - v31;
          v133.f32[1] = v33 - v30;
          v134 = v35 - v32;
          physx::Gu::distanceSegmentSegmentSquared(a1, a2, &v135, &v133, &v128[8], v128);
          *&v128[4] = 1.0 - *v128;
          goto LABEL_64;
        }

        v92 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v128[8], &v128[4]);
        *v128 = 0;
      }

      else
      {
        v92 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a5, &v128[8], v128);
        *&v128[4] = 0;
      }

      v103 = a4[1].f32[0];
      v104 = a3[1].f32[0] + v103;
      v105 = *a4;
      v135 = vadd_f32(*a3, *a4);
      v136 = v104;
      v106 = a5[1].f32[0] - v103;
      v133 = vsub_f32(*a5, v105);
      v134 = v106;
      if (v92 > physx::Gu::distanceSegmentSegmentSquared(a1, a2, &v135, &v133, &v127 + 1, &v126))
      {
        *&v128[4] = 1.0 - v126;
        *&v128[8] = HIDWORD(v127);
        *v128 = v126;
      }

      goto LABEL_64;
    }

    if (v88 <= 1.0)
    {
      if (v86 >= 0.0)
      {
        if (v87 >= 0.0)
        {
          v124.f32[0] = v15 + v116;
          v124.f32[1] = v16 + v27;
          v125 = v17 + v29;
          v135.f32[0] = v117 + v31;
          v135.f32[1] = v118 + v30;
          v136 = v119 + v32;
          v133.f32[0] = v117 + v34;
          v133.f32[1] = v118 + v33;
          v134 = v119 + v35;
          v122.i32[0] = 0;
          v120.i32[0] = 0;
          physx::Gu::closestPtPointTriangle(&v124, a3, &v135, &v133, &v122, &v120, &v131);
          *v128 = v120.i32[0];
          *&v128[4] = v122.i32[0];
          *&v128[8] = 1065353216;
          goto LABEL_64;
        }

        v90 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v128[8], &v128[4]);
        *v128 = 0;
        goto LABEL_77;
      }

      v90 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a5, &v128[8], v128);
      *&v128[4] = 0;
      if (v87 < 0.0)
      {
        v97 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v127 + 1, &v127);
        v126 = 0.0;
        if (v90 > v97)
        {
          *&v128[4] = v127;
          *v128 = 0;
LABEL_55:
          v90 = v97;
        }
      }
    }

    else
    {
      if (v86 >= 0.0)
      {
        if (v87 >= 0.0)
        {
          v135.f32[0] = v117 + v31;
          v135.f32[1] = v118 + v30;
          v136 = v119 + v32;
          v133.f32[0] = v34 - v31;
          v133.f32[1] = v33 - v30;
          v134 = v35 - v32;
          v90 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, &v135, &v133, &v128[8], v128);
          *&v128[4] = 1.0 - *v128;
          goto LABEL_77;
        }

        v90 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v128[8], &v128[4]);
        *v128 = 0;
      }

      else
      {
        v90 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a5, &v128[8], v128);
        *&v128[4] = 0;
      }

      v99 = a4[1].f32[0];
      v100 = a3[1].f32[0] + v99;
      v101 = *a4;
      v135 = vadd_f32(*a3, *a4);
      v136 = v100;
      v102 = a5[1].f32[0] - v99;
      v133 = vsub_f32(*a5, v101);
      v134 = v102;
      v97 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, &v135, &v133, &v127 + 1, &v126);
      *&v127 = 1.0 - v126;
      if (v90 > v97)
      {
        *&v128[4] = 1.0 - v126;
        *&v128[8] = HIDWORD(v127);
        *v128 = v126;
        goto LABEL_55;
      }
    }

LABEL_77:
    v111 = a1[1].f32[0] + a2[1].f32[0];
    v124 = vadd_f32(*a1, *a2);
    v125 = v111;
    v112 = a3[1].f32[0];
    v113 = a4[1].f32[0] + v112;
    v114 = *a3;
    v135 = vadd_f32(*a4, *a3);
    v136 = v113;
    v115 = v112 + a5[1].f32[0];
    v133 = vadd_f32(v114, *a5);
    v134 = v115;
    v122.i32[0] = 0;
    v120.i32[0] = 0;
    physx::Gu::closestPtPointTriangle(&v124, a3, &v135, &v133, &v122, &v120, &v131);
    if (v90 <= ((((v131.f32[1] - v124.f32[1]) * (v131.f32[1] - v124.f32[1])) + ((v131.f32[0] - v124.f32[0]) * (v131.f32[0] - v124.f32[0]))) + ((v132 - v125) * (v132 - v125))))
    {
      goto LABEL_64;
    }

    v59 = v122.i32[0];
    v60 = v120.i32[0];
    goto LABEL_18;
  }

  if (v88 <= 1.0)
  {
    if (v86 >= 0.0)
    {
      if (v87 >= 0.0)
      {
        v135.f32[0] = v117 + v31;
        v135.f32[1] = v118 + v30;
        v136 = v119 + v32;
        v133.f32[0] = v117 + v34;
        v133.f32[1] = v118 + v33;
        v134 = v119 + v35;
        v124.i32[0] = 0;
        v122.i32[0] = 0;
        physx::Gu::closestPtPointTriangle(a1, a3, &v135, &v133, &v124, &v122, &v131);
        *v128 = v122.i32[0];
        *&v128[4] = v124.i32[0];
        *&v128[8] = 0;
        goto LABEL_64;
      }

      v89 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v128[8], &v128[4]);
      *v128 = 0;
    }

    else
    {
      v89 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a5, &v128[8], v128);
      *&v128[4] = 0;
      if (v87 < 0.0)
      {
        v91 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v127 + 1, &v127);
        v126 = 0.0;
        if (v89 > v91)
        {
          *&v128[4] = v127;
          *v128 = 0;
LABEL_40:
          v89 = v91;
        }
      }
    }
  }

  else
  {
    if (v86 < 0.0)
    {
      v89 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a5, &v128[8], v128);
      *&v128[4] = 0;
LABEL_38:
      v93 = a4[1].f32[0];
      v94 = a3[1].f32[0] + v93;
      v95 = *a4;
      v135 = vadd_f32(*a3, *a4);
      v136 = v94;
      v96 = a5[1].f32[0] - v93;
      v133 = vsub_f32(*a5, v95);
      v134 = v96;
      v91 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, &v135, &v133, &v127 + 1, &v126);
      *&v127 = 1.0 - v126;
      if (v89 <= v91)
      {
        goto LABEL_61;
      }

      *&v128[4] = 1.0 - v126;
      *&v128[8] = HIDWORD(v127);
      *v128 = v126;
      goto LABEL_40;
    }

    if (v87 < 0.0)
    {
      v89 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, a3, a4, &v128[8], &v128[4]);
      *v128 = 0;
      goto LABEL_38;
    }

    v135.f32[0] = v117 + v31;
    v135.f32[1] = v118 + v30;
    v136 = v119 + v32;
    v133.f32[0] = v34 - v31;
    v133.f32[1] = v33 - v30;
    v134 = v35 - v32;
    v89 = physx::Gu::distanceSegmentSegmentSquared(a1, a2, &v135, &v133, &v128[8], v128);
    *&v128[4] = 1.0 - *v128;
  }

LABEL_61:
  v107 = a3[1].f32[0];
  v108 = a4[1].f32[0] + v107;
  v109 = *a3;
  v135 = vadd_f32(*a4, *a3);
  v136 = v108;
  v110 = v107 + a5[1].f32[0];
  v133 = vadd_f32(v109, *a5);
  v134 = v110;
  v124.i32[0] = 0;
  v122.i32[0] = 0;
  physx::Gu::closestPtPointTriangle(a1, a3, &v135, &v133, &v124, &v122, &v131);
  if (v89 > ((((v131.f32[1] - a1->f32[1]) * (v131.f32[1] - a1->f32[1])) + ((v131.f32[0] - a1->f32[0]) * (v131.f32[0] - a1->f32[0]))) + ((v132 - a1[1].f32[0]) * (v132 - a1[1].f32[0]))))
  {
    v59 = v124.i32[0];
    v60 = v122.i32[0];
    *&v128[8] = 0;
    goto LABEL_63;
  }

LABEL_64:
  if (a6)
  {
    *a6 = *&v128[8];
  }

  if (a7)
  {
    *a7 = *&v128[4];
  }

  if (a8)
  {
    *a8 = *v128;
  }
}

void physx::Gu::distanceSegmentTriangleSquared(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7)
{
  v13 = *a2;
  v14 = *a1;
  v15 = vsubq_f32(*a2, *a1);
  v100 = v15;
  v16 = *a4;
  v17 = *a3;
  v18 = vsubq_f32(*a4, *a3);
  v19 = *a5;
  v20 = vsubq_f32(*a5, *a3);
  v98 = v20;
  v99 = v18;
  v97 = vsubq_f32(v19, v16);
  v21 = vmulq_f32(v18, v18);
  v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
  v22 = vpadd_f32(*v21.f32, *v21.f32);
  v23 = vmulq_f32(v18, v20);
  v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
  v24 = vpadd_f32(*v23.f32, *v23.f32);
  v25 = vmulq_f32(v20, v20);
  v25.i64[0] = vpaddq_f32(v25, v25).u64[0];
  v26 = vpadd_f32(*v25.f32, *v25.f32);
  v27 = vsub_f32(vmul_f32(v22, v26), vmul_f32(v24, v24));
  v28 = vrecpe_f32(v27);
  v29 = 4;
  do
  {
    v28 = vmul_f32(v28, vrecps_f32(v27, v28));
    --v29;
  }

  while (v29);
  v30 = vmls_f32(vmul_f32(*v18.f32, *&vextq_s8(v20, v20, 4uLL)), *&vextq_s8(v18, v18, 4uLL), *v20.f32);
  *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(*&vextq_s8(v18, v18, 8uLL), *v20.f32), *v18.f32, *&vextq_s8(v20, v20, 8uLL)), 4uLL);
  v31.i64[1] = v30.u32[0];
  v32 = vcgtz_f32(v27);
  v33 = vpadd_f32(vmul_f32(*v31.f32, *v31.f32), vmul_f32(v30.u32[0], v30.u32[0]));
  v34 = vpadd_f32(v33, v33);
  v35 = vrsqrte_f32(v34);
  v36 = 4;
  do
  {
    v35 = vmul_f32(v35, vrsqrts_f32(vmul_f32(v35, v35), v34));
    --v36;
  }

  while (v36);
  v37 = vand_s8(vdup_lane_s32(v32, 0), v28);
  v38 = vbsl_s8(vdup_lane_s32(vceqz_f32(v34), 0), v34, vmul_f32(v34, v35));
  v39 = vrecpe_f32(v38);
  v40 = 4;
  do
  {
    v39 = vmul_f32(v39, vrecps_f32(v38, v39));
    --v40;
  }

  while (v40);
  v41 = vmulq_n_f32(v31, v39.f32[0]);
  v41.i32[3] = 0;
  v42 = vmulq_f32(vsubq_f32(v14, v17), v41);
  v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
  v43 = vpadd_f32(*v42.f32, *v42.f32);
  v44 = vmulq_f32(vsubq_f32(v13, v17), v41);
  v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
  v45 = vpadd_f32(*v44.f32, *v44.f32);
  if (vuzp1_s8(vdup_lane_s16(vcltz_f32(vmul_f32(v43, v45)), 0), *v14.f32).u32[0] != -1)
  {
    goto LABEL_11;
  }

  v46 = vmulq_f32(v15, v41);
  v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
  v47 = vpadd_f32(*v46.f32, *v46.f32);
  v48 = vrecpe_f32(v47);
  v49 = 4;
  do
  {
    v48 = vmul_f32(v48, vrecps_f32(v47, v48));
    --v49;
  }

  while (v49);
  v50 = vmlaq_n_f32(v14, v15, vmul_f32(v48, vneg_f32(v43)).f32[0]);
  v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
  v51 = vsubq_f32(v50, v17);
  v52 = vmulq_f32(v18, v51);
  v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
  *v52.f32 = vpadd_f32(*v52.f32, *v52.f32);
  v53 = vmulq_f32(v20, v51);
  v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
  *v53.f32 = vpadd_f32(*v53.f32, *v53.f32);
  *v51.f32 = vmul_f32(vsub_f32(vmul_f32(v26, *v52.f32), vmul_f32(v24, *v53.f32)), v37);
  *v53.f32 = vmul_f32(vsub_f32(vmul_f32(v22, *v53.f32), vmul_f32(v24, *v52.f32)), v37);
  v54 = vdup_n_s32(0x3F800001u);
  if (vuzp1_s8(vcltz_s16(vshl_n_s16(vdup_lane_s16(vand_s8(vand_s8(vand_s8(vcge_f32(v54, *v51.f32), vcge_f32(v54, *v53.f32)), vand_s8(vcge_f32(*v51.f32, 0xB4000000B4000000), vcge_f32(*v53.f32, 0xB4000000B4000000))), vcgt_f32(v54, vadd_f32(*v51.f32, *v53.f32))), 0), 0xFuLL)), *v50.f32).u32[0] == -1)
  {
    *a7 = v50;
    *a6 = v50;
  }

  else
  {
LABEL_11:
    v55 = vmul_f32(v43, v43);
    v56 = vmul_f32(v45, v45);
    v95 = 0u;
    v96 = 0u;
    v93 = v41;
    v94 = v45;
    v92 = v43;
    *v57.i64 = physx::Gu::distanceSegmentSegmentSquared4(a1, &v100, a3, &v99, a4, &v97, a3, &v98, a3, &v99, &v96, &v95);
    v58 = vdup_lane_s32(*v57.i8, 0);
    v59 = vdup_lane_s32(*v57.i8, 1);
    v60 = vdup_laneq_s32(v57, 2);
    v61 = vmlaq_n_f32(*a1, v100, v96.f32[0]);
    v61.i64[1] = vextq_s8(v61, v61, 8uLL).u32[0];
    v62 = vmlaq_lane_f32(*a1, v100, *v96.f32, 1);
    v62.i64[1] = vextq_s8(v62, v62, 8uLL).u32[0];
    v63 = vmlaq_laneq_f32(*a1, v100, v96, 2);
    v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
    v64 = vand_s8(vcgt_f32(v59, v58), vcgt_f32(v60, v58));
    v65 = vmovl_s16(vdup_lane_s16(v64, 0));
    v66 = vand_s8(vcge_f32(v58, v59), vcgt_f32(v60, v59));
    v67 = vmovl_s16(vdup_lane_s16(v66, 0));
    v68 = vbsl_s8(vdup_lane_s32(v64, 0), v58, vbsl_s8(vdup_lane_s32(v66, 0), v59, v60));
    v69 = vbslq_s8(v65, v61, vbslq_s8(v67, v62, v63));
    v70 = vmovl_s16(vdup_lane_s16(vcgt_f32(v68, v55), 0));
    v71 = vbslq_s8(v70, *a1, v69);
    v72 = vmlsq_lane_f32(*a1, v93, v92, 0);
    v72.i64[1] = vextq_s8(v72, v72, 8uLL).u32[0];
    v73 = vsubq_f32(v72, *a3);
    v74 = vmlsq_lane_f32(*a2, v93, v94, 0);
    v74.i64[1] = vextq_s8(v74, v74, 8uLL).u32[0];
    v75 = vsubq_f32(v74, *a3);
    v76 = vmlaq_n_f32(*a3, v99, v95.f32[0]);
    v76.i64[1] = vextq_s8(v76, v76, 8uLL).u32[0];
    v77 = vmlaq_lane_f32(*a4, v97, *v95.f32, 1);
    v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
    v78 = vmovl_s16(vdup_lane_s16(vcgt_f32(v56, v55), 0));
    v79 = vmlaq_laneq_f32(*a3, v98, v95, 2);
    v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
    v80 = vbslq_s8(v65, v76, vbslq_s8(v67, v77, v79));
    v81 = vmulq_f32(v99, v73);
    v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
    *v81.f32 = vpadd_f32(*v81.f32, *v81.f32);
    v82 = vmulq_f32(v73, v98);
    v82.i64[0] = vpaddq_f32(v82, v82).u64[0];
    *v82.f32 = vpadd_f32(*v82.f32, *v82.f32);
    *v79.i8 = vmul_f32(vsub_f32(vmul_f32(v26, *v81.f32), vmul_f32(v24, *v82.f32)), v37);
    *v81.f32 = vmul_f32(vsub_f32(vmul_f32(v22, *v82.f32), vmul_f32(v24, *v81.f32)), v37);
    *v76.i8 = vdup_n_s32(0x3F800001u);
    v83 = vdupq_lane_s32(vand_s8(vand_s8(vand_s8(vand_s8(vcge_f32(*v76.i8, *v79.i8), vcge_f32(*v76.i8, *v81.f32)), vand_s8(vcge_f32(*v79.i8, 0xB4000000B4000000), vcge_f32(*v81.f32, 0xB4000000B4000000))), 0x100000001), vcgt_f32(*v76.i8, vadd_f32(*v79.i8, *v81.f32))), 0);
    v84 = vmulq_f32(v99, v75);
    v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
    *v84.f32 = vpadd_f32(*v84.f32, *v84.f32);
    v85 = vmulq_f32(v98, v75);
    v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
    *v85.f32 = vpadd_f32(*v85.f32, *v85.f32);
    *v75.f32 = vmul_f32(vsub_f32(vmul_f32(v26, *v84.f32), vmul_f32(v24, *v85.f32)), v37);
    *v84.f32 = vmul_f32(vsub_f32(vmul_f32(v22, *v85.f32), vmul_f32(v24, *v84.f32)), v37);
    v86 = vdupq_lane_s32(vand_s8(vand_s8(vand_s8(vand_s8(vcge_f32(*v76.i8, *v75.f32), vcge_f32(*v76.i8, *v84.f32)), vand_s8(vcge_f32(*v75.f32, 0xB4000000B4000000), vcge_f32(*v84.f32, 0xB4000000B4000000))), 0x100000001), vcgt_f32(*v76.i8, vadd_f32(*v75.f32, *v84.f32))), 0);
    v87 = vbslq_s8(v70, v72, v80);
    v88 = vandq_s8(v86, v83);
    v89 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vmovn_s32(v86), vdup_lane_s16(vcgt_f32(v68, v56), 0))), 0x1FuLL));
    v90 = vcltzq_s32(vshlq_n_s32(v83, 0x1FuLL));
    v91 = vcltzq_s32(vshlq_n_s32(v88, 0x1FuLL));
    *a6 = vbslq_s8(v91, vbslq_s8(v78, *a1, *a2), vbslq_s8(v90, v71, vbslq_s8(v89, *a2, v69)));
    *a7 = vbslq_s8(v91, vbslq_s8(v78, v72, v74), vbslq_s8(v90, v87, vbslq_s8(v89, v74, v80)));
  }
}

uint64_t physx::Gu::epaPenetration(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v13 = v12;
  v14 = v1;
  v34 = *MEMORY[0x1E69E9840];
  if (v4)
  {
    v15 = v3;
    v16 = v2;
    v17 = v4;
    v18 = v32;
    v19 = v33;
    do
    {
      v20 = *v16++;
      *v21.i64 = (**v14)(v14, v20);
      *v19++ = v21;
      v22 = *v15++;
      *v23.i64 = (**v13)(v13, v22);
      *v18++ = v23;
      --v17;
    }

    while (v17);
  }

  v25 = 0;
  v26 = v27;
  v27[1920] = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  return physx::Gu::EPA::PenetrationDepth(&v25, v14, v13, v33, v32, v11, v10, v6, v8);
}

uint64_t physx::Gu::EPA::PenetrationDepth(uint64_t _X0, void *a2, void *a3, float32x4_t *a4, float32x4_t *a5, int a6, int a7, uint64_t a8, float a9)
{
  v11 = a3;
  v12 = a2;
  v13 = _X0;
  v154 = *MEMORY[0x1E69E9840];
  __asm
  {
    PRFM            #0, [X0,#0xA10]
    PRFM            #0, [X0,#0xA90]
  }

  v151 = vneg_f32(0x80000000800000);
  v19 = *a4;
  *(_X0 + 528) = *a4;
  v20 = a4[1];
  *(_X0 + 544) = v20;
  v21 = a4[2];
  *(_X0 + 560) = v21;
  v22 = a4[3];
  *(_X0 + 576) = v22;
  v23 = *a5;
  *(_X0 + 1552) = *a5;
  v24 = a5[1];
  *(_X0 + 1568) = v24;
  v25 = a5[2];
  *(_X0 + 1584) = v25;
  v26 = a5[3];
  *(_X0 + 1600) = v26;
  v150 = 0;
  *_X0 = 0;
  if (a6 <= 2)
  {
    if (a6 == 1)
    {
      v148 = vsubq_f32(v19, v23);
      v152 = xmmword_1E3047670;
      v153[0] = xmmword_1E30661F0;
      *v46.i64 = (*(*a2 + 8))(a2, v153);
      v145 = v46;
      *v20.i64 = (*(*v11 + 8))(v11, &v152);
      v25.i64[0] = v145.i64[0];
      v21.i64[0] = v148.i64[0];
      *(v13 + 544) = v145;
      *(v13 + 1568) = v20;
      *v20.f32 = vmovn_s32(vceqq_f32(v148, vsubq_f32(v145, v20)));
      *v20.f32 = vuzp1_s8(*v20.f32, *v20.f32);
      if ((~v20.i32[0] & 0xFFFFFF) == 0)
      {
        return 7;
      }
    }

    else if (a6 != 2)
    {
      goto LABEL_17;
    }

    if (physx::Gu::EPA::expandSegment(v13, v12, v11, &v150, &v151, *v20.i64, *v21.i64, *v25.i64, *v24.i64, v22, v26))
    {
      goto LABEL_17;
    }

    return 7;
  }

  if (a6 == 3)
  {
    if (physx::Gu::EPA::expandTriangle(_X0, &v150, &v151))
    {
      goto LABEL_17;
    }

    return 7;
  }

  if (a6 == 4)
  {
    v27 = vsubq_f32(v19, v23);
    v28 = vsubq_f32(vsubq_f32(v20, v24), v27);
    v29 = vsubq_f32(vsubq_f32(v21, v25), v27);
    v30 = vmls_f32(vmul_f32(*v28.i8, *&vextq_s8(v29, v29, 4uLL)), *&vextq_s8(v28, v28, 4uLL), *v29.i8);
    *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(*&vextq_s8(v28, v28, 8uLL), *v29.i8), *v28.i8, *&vextq_s8(v29, v29, 8uLL)), 4uLL);
    v31.i64[1] = v30.u32[0];
    *v29.i8 = vpadd_f32(vmul_f32(*v31.f32, *v31.f32), vmul_f32(v30.u32[0], v30.u32[0]));
    v32 = vpadd_f32(*v29.i8, *v29.i8);
    v33 = vrsqrte_f32(v32);
    v34 = 4;
    do
    {
      v33 = vmul_f32(v33, vrsqrts_f32(vmul_f32(v33, v33), v32));
      --v34;
    }

    while (v34);
    v35 = vbsl_s8(vdup_lane_s32(vceqz_f32(v32), 0), v32, vmul_f32(v32, v33));
    v36 = vrecpe_f32(v35);
    v37 = 4;
    do
    {
      v36 = vmul_f32(v36, vrecps_f32(v35, v36));
      --v37;
    }

    while (v37);
    v40 = vmulq_n_f32(v31, v36.f32[0]);
    v40.i32[3] = 0;
    v41 = vmulq_f32(vsubq_f32(vsubq_f32(v22, v26), v27), v40);
    v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
    if (vpadd_f32(*v41.f32, *v41.f32).f32[0] > 0.0)
    {
      *(_X0 + 1584) = v24;
      *(_X0 + 544) = v21;
      *(_X0 + 560) = v20;
      *(_X0 + 1568) = v25;
    }

    v42 = physx::Gu::EPA::addFacet(_X0, 0, 1u, 2u, &v151);
    v43 = physx::Gu::EPA::addFacet(v13, 0, 3u, 1u, &v151);
    v44 = physx::Gu::EPA::addFacet(v13, 0, 2u, 3u, &v151);
    v45 = physx::Gu::EPA::addFacet(v13, 1u, 3u, 2u, &v151);
    if (!*v13)
    {
      return 7;
    }

    v42[1].i64[1] = v43;
    v42[3].i8[0] = 2;
    v43[2].i64[1] = v42;
    v43[3].i8[2] = 0;
    v42[2].i64[0] = v45;
    v42[3].i8[1] = 2;
    v45[2].i64[1] = v42;
    v45[3].i8[2] = 1;
    v42[2].i64[1] = v44;
    v42[3].i8[2] = 0;
    v44[1].i64[1] = v42;
    v44[3].i8[0] = 2;
    v43[1].i64[1] = v44;
    v43[3].i8[0] = 2;
    v44[2].i64[1] = v43;
    v44[3].i8[2] = 0;
    v43[2].i64[0] = v45;
    v43[3].i8[1] = 0;
    v45[1].i64[1] = v43;
    v45[3].i8[0] = 1;
    v44[2].i64[0] = v45;
    v44[3].i8[1] = 1;
    v45[2].i64[0] = v44;
    v45[3].i8[1] = 1;
    v150 = 4;
    v11 = a3;
    v12 = a2;
  }

LABEL_17:
  v139 = a7;
  v47 = v13 + 528;
  v48 = v13 + 1552;
  v49 = (v12[1] + 20);
  v50 = vld1_dup_f32(v49);
  v51 = (v11[1] + 20);
  v52 = vld1_dup_f32(v51);
  v53 = (v13 + 7704);
  v54 = (v13 + 7968);
  v55 = vmul_f32(vmin_f32(v50, v52), vdup_n_s32(0x3DCCCCCDu));
  v56 = v150;
  v57 = v13 + 7708;
  _X22 = v13 + 6672;
  *v24.f32 = vneg_f32(0x80000000800000);
  v141 = v12;
  v142 = v11;
  while (1)
  {
    v59 = *(v13 + 8224);
    if (v59)
    {
      v60 = v54;
      do
      {
        v62 = *v60++;
        v61 = v62;
        v63 = v53;
        if (*v53 - 1 != v62)
        {
          v64 = *(v13 + 7964);
          *(v13 + 7964) = v64 + 1;
          v63 = (v57 + 4 * v64);
        }

        *v63 = v61;
        --v59;
      }

      while (v59);
    }

    *(v13 + 8224) = 0;
    v65 = *v13 - 1;
    *v13 = v65;
    v66 = *(v13 + 8);
    v67 = *v66;
    v68 = v66[v65];
    if (v65 < 2)
    {
      v75 = 0;
    }

    else
    {
      v69 = 0;
      v70 = 0;
      v71 = v68[1].f32[0];
      v72 = 1;
      while (1)
      {
        v73 = v69 + 2;
        v66 = *(v13 + 8);
        _CF = v66[v73][1].f32[0] >= v66[v72][1].f32[0] || v73 >= v65;
        v75 = _CF ? v72 : v72 + 1;
        v76 = v66[v75];
        if (v71 < v76[1].f32[0])
        {
          break;
        }

        v66[v70] = v76;
        v69 = 2 * v75;
        v72 = (2 * v75) | 1;
        v70 = v75;
        if (v72 >= v65)
        {
          v66 = *(v13 + 8);
          goto LABEL_36;
        }
      }

      v75 = v70;
    }

LABEL_36:
    v66[v75] = v68;
    v67[3].i8[7] = 0;
    if (v67[3].i8[6])
    {
      goto LABEL_56;
    }

    v146 = v24;
    __asm { PRFM            #0, [X22] }

    _X8 = v13 + 6928;
    _X9 = v13 + 6800;
    __asm
    {
      PRFM            #0, [X9]
      PRFM            #0, [X8]
    }

    v152 = 0uLL;
    v152 = *v67;
    f32 = v67[1].f32;
    v83 = vld1_dup_f32(f32);
    v84 = *(*v12 + 8);
    v85 = v12;
    v149 = v56;
    v86 = v67;
    *v87.i64 = v84(v85, &v152);
    v143 = v87;
    v88 = vnegq_f32(v152);
    v88.i32[3] = 0;
    v153[0] = v88;
    *v89.i64 = (*(*v11 + 8))(v11, v153);
    v90 = vsubq_f32(v143, v89);
    _X10 = (v47 + 16 * v149);
    __asm { PRFM            #0, [X10,#0x80] }

    _X11 = (v48 + 16 * v149);
    __asm { PRFM            #0, [X11,#0x80] }

    v95 = vmulq_f32(v90, v152);
    v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
    v96 = vpadd_f32(*v95.f32, *v95.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(v55, vabd_f32(v96, v83)), 0), *v89.f32).u32[0] == -1)
    {
      break;
    }

    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100.i64[1] = v146.i64[1];
    *v100.f32 = vmin_f32(*v146.f32, v96);
    v151 = *v100.f32;
    *_X10 = v143;
    *_X11 = v89;
    *(v13 + 7696) = 0;
    *(v13 + 7700) = 0;
    v86[3].i8[6] = 1;
    do
    {
      v101 = 0;
      v102 = v86[3].i8[v99];
      v153[0].i64[0] = v86[1].i64[v99 + 1];
      v153[0].i32[2] = v102;
      v103 = 1;
      while (1)
      {
        v104 = &v153[v101];
        v105 = v104->i64[0];
        v106 = v104->u32[2];
        if ((*(v104->i64[0] + 54) & 1) == 0)
        {
          break;
        }

LABEL_46:
        v103 = v101--;
        if (!v103)
        {
          goto LABEL_49;
        }
      }

      v107 = vmulq_f32(*v105, vsubq_f32(v90, vsubq_f32(*(v47 + 16 * v105[3].i8[3]), *(v48 + 16 * v105[3].i8[3]))));
      v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
      if (vpadd_f32(*v107.f32, *v107.f32).f32[0] >= 0.0)
      {
        v105[3].i8[6] = 1;
        v108 = physx::Gu::lookUp[v106];
        v109 = physx::Gu::lookUp[v108];
        v110 = v105[1].i64[v109 + 1];
        LODWORD(v109) = v105[3].i8[v109];
        v104->i64[0] = v110;
        v104->i32[2] = v109;
        v111 = v105[1].i64[v108 + 1];
        v112 = v105[3].i8[v108];
        v101 = v103 + 1;
        v113 = v153[v103].f32;
        *v113 = v111;
        *(v113 + 2) = v112;
        if ((v105[3].i8[7] & 1) == 0)
        {
          v114 = v105[3].u8[8];
          v115 = *(v13 + 8224);
          *(v13 + 8224) = v115 + 1;
          *(v13 + 7968 + 4 * v115) = v114;
        }

        goto LABEL_46;
      }

      if (v98 <= 0x3F)
      {
        v116 = _X22 + 16 * v98++;
        *(v13 + 7696) = v98;
        *v116 = v105;
        *(v116 + 8) = v106;
        goto LABEL_46;
      }

      v97 = 1;
      *(v13 + 7700) = 1;
LABEL_49:
      ++v99;
    }

    while (v99 != 3);
    if ((v98 == 0) | v97 & 1 || v98 > *(v13 + 7964) - *(v13 + 7704) + 64)
    {
      v128 = v141[1];
      v129 = v142[1];
      v130 = v13 + 528;
      v131 = v13 + 1552;
      v67 = v86;
LABEL_65:
      physx::Gu::calculateContactInformation(v130, v131, v67, v128, v129, v139, a8);
      return 6;
    }

    v140 = v86;
    v147 = v100;
    v117 = physx::Gu::EPA::addFacet(v13, *(*(v13 + 6672) + 51 + physx::Gu::lookUp[*(v13 + 6680)]), *(*(v13 + 6672) + 51 + *(v13 + 6680)), v149, &v151);
    v118 = *(v13 + 6672);
    v119 = *(v13 + 6680);
    v117[1].i64[1] = v118;
    v117[3].i8[0] = v119;
    *(v118 + 8 * v119 + 24) = v117;
    *(v118 + v119 + 48) = 0;
    v144 = v117;
    if (v98 != 1)
    {
      v120 = v98 - 1;
      v121 = (v13 + 6696);
      v122 = v117;
      do
      {
        v117 = physx::Gu::EPA::addFacet(v13, *(*(v121 - 1) + 51 + physx::Gu::lookUp[*v121]), *(*(v121 - 1) + 51 + *v121), v149, &v151);
        v123 = *(v121 - 1);
        v124 = *v121;
        v121 += 4;
        v117[1].i64[1] = v123;
        v117[3].i8[0] = v124;
        *(v123 + 8 * v124 + 24) = v117;
        *(v123 + v124 + 48) = 0;
        v117[2].i64[1] = v122;
        v117[3].i8[2] = 1;
        v122[2].i64[0] = v117;
        v122[3].i8[1] = 2;
        v122 = v117;
        --v120;
      }

      while (v120);
    }

    v56 = v149 + 1;
    v11 = v142;
    v144[2].i64[1] = v117;
    v144[3].i8[2] = 1;
    v117[2].i64[0] = v144;
    v117[3].i8[1] = 2;
    v54 = (v13 + 7968);
    v12 = v141;
    v57 = v13 + 7708;
    v53 = (v13 + 7704);
    v24 = v147;
    v67 = v140;
LABEL_56:
    v125 = v67[3].u8[8];
    v126 = v53;
    if (*v53 - 1 != v125)
    {
      v127 = *(v13 + 7964);
      *(v13 + 7964) = v127 + 1;
      v126 = (v57 + 4 * v127);
    }

    *v126 = v125;
    if (!*v13 || v24.f32[0] <= *(**(v13 + 8) + 16) || v56 == 64)
    {
      v128 = v12[1];
      v129 = v11[1];
      v130 = v13 + 528;
      v131 = v13 + 1552;
      goto LABEL_65;
    }
  }

  physx::Gu::calculateContactInformation(v13 + 528, v13 + 1552, v86, v141[1], v142[1], v139, a8);
  if (v139)
  {
    v133 = vsubq_f32(*a8, *(a8 + 16));
    v134 = vmulq_f32(v133, v133);
    v134.i64[0] = vpaddq_f32(v134, v134).u64[0];
    v135 = vpadd_f32(*v134.f32, *v134.f32);
    v136 = vrsqrte_f32(v135);
    v137 = 4;
    do
    {
      v136 = vmul_f32(v136, vrsqrts_f32(vmul_f32(v136, v136), v135));
      --v137;
    }

    while (v137);
    if (((0.001 * a9) + vabs_f32(*(a8 + 64)).f32[0]) < *vand_s8(vbsl_s8(vceqz_f32(v135), v135, vmul_f32(v135, v136)), vcgtz_f32(v135)).i32)
    {
      return 6;
    }
  }

  return 5;
}

float32x4_t *physx::Gu::EPA::addFacet(int *a1, unsigned int a2, unsigned int a3, unsigned int a4, float32x2_t *a5)
{
  v5 = a1[1991];
  if (v5)
  {
    v6 = v5 - 1;
    a1[1991] = v6;
    v7 = a1[v6 + 1927];
  }

  else
  {
    v7 = a1[1926];
    a1[1926] = v7 + 1;
  }

  _X8 = &a1[16 * v7];
  __asm { PRFM            #0, [X8,#0xA90] }

  _X8[164].i16[3] = 0;
  _X8[164].i8[3] = a2;
  _X8[164].i8[4] = a3;
  _X8[164].i8[5] = a4;
  _X8[162].i64[1] = 0;
  _X8[163].i64[1] = 0;
  _X8[163].i64[0] = 0;
  _X8[164].i8[2] = -1;
  _X8[164].i16[0] = -1;
  _X8[164].i8[8] = v7;
  v14 = vsubq_f32(*&a1[4 * a2 + 132], *&a1[4 * a2 + 388]);
  v15 = vsubq_f32(vsubq_f32(*&a1[4 * a3 + 132], *&a1[4 * a3 + 388]), v14);
  v16 = vsubq_f32(vsubq_f32(*&a1[4 * a4 + 132], *&a1[4 * a4 + 388]), v14);
  v17 = vmls_f32(vmul_f32(*v15.i8, *&vextq_s8(v16, v16, 4uLL)), *&vextq_s8(v15, v15, 4uLL), *v16.i8);
  *v18.f32 = vext_s8(v17, vmls_f32(vmul_f32(*&vextq_s8(v15, v15, 8uLL), *v16.i8), *v15.i8, *&vextq_s8(v16, v16, 8uLL)), 4uLL);
  v18.i64[1] = v17.u32[0];
  v19 = _X8 + 161;
  *v16.i8 = vpadd_f32(vmul_f32(*v18.f32, *v18.f32), vmul_f32(v17.u32[0], v17.u32[0]));
  v20 = vpadd_f32(*v16.i8, *v16.i8);
  __asm { FMOV            V4.2S, #1.0 }

  v22 = vbsl_s8(vdup_lane_s32(vcgt_f32(v20, 0x3400000034000000), 0), v20, _D4);
  v23 = vrsqrte_f32(v22);
  v24 = 4;
  do
  {
    v23 = vmul_f32(v23, vrsqrts_f32(vmul_f32(v23, v23), v22));
    --v24;
  }

  while (v24);
  v25 = vmulq_n_f32(v18, v23.f32[0]);
  v25.i32[3] = 0;
  v26 = vmulq_f32(v14, v25);
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v27 = vpadd_f32(*v26.f32, *v26.f32);
  *v19 = v25;
  v19[1].i32[0] = v27.i32[0];
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcge_f32(*a5, v27), vcgt_f32(v20, 0x3400000034000000)), 0), v27).u32[0] == -1)
  {
    v29 = *a1;
    if (*a1)
    {
      LODWORD(v30) = *a1;
      while (1)
      {
        v31 = v30 - 1;
        v32 = *(a1 + 1);
        v33 = *(v32 + 8 * ((v30 - 1) >> 1));
        v30 = v30;
        if (v27.f32[0] >= *(v33 + 16))
        {
          break;
        }

        *(v32 + 8 * v30) = v33;
        LODWORD(v30) = v31 >> 1;
        if (v31 <= 1)
        {
          v30 = v31 >> 1;
          break;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    *(*(a1 + 1) + 8 * v30) = v19;
    *a1 = v29 + 1;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  v19[3].i8[7] = v28;
  return v19;
}

BOOL physx::Gu::EPA::expandSegment(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, float32x2_t *a5, double a6, double a7, double a8, double a9, int32x4_t a10, int32x4_t a11)
{
  v15 = vsubq_f32(*(a1 + 528), *(a1 + 1552));
  v16 = vsubq_f32(*(a1 + 544), *(a1 + 1568));
  v17 = vabdq_f32(v16, v15);
  v18 = vdup_lane_s32(*v17.i8, 0);
  *a10.i8 = vdup_lane_s32(*v17.i8, 1);
  *v17.i8 = vdup_laneq_s32(v17, 2);
  *a11.i8 = vcgt_f32(v18, *a10.i8);
  *a10.i8 = vuzp1_s8(vdup_lane_s16(vand_s8(*a11.i8, vcgt_f32(*v17.i8, *a10.i8)), 0), *v15.f32);
  a11.i32[0] = -1;
  v19 = vsubq_f32(v16, v15);
  v20 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a10, a11), 0), xmmword_1E3047680, vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(v18, *v17.i8), 0)), xmmword_1E30476A0, xmmword_1E3047670));
  v17.i64[0] = vextq_s8(v20, v20, 8uLL).u64[0];
  v21 = vmls_f32(vmul_f32(*&vextq_s8(v19, v19, 4uLL), *v20.i8), vext_s8(*v20.i8, *v17.i8, 4uLL), *v19.i8);
  *v22.f32 = vext_s8(v21, vmls_f32(vmul_f32(*v19.i8, *v17.i8), *v20.i8, *&vextq_s8(v19, v19, 8uLL)), 4uLL);
  v22.i64[1] = v21.u32[0];
  *v20.i8 = vpadd_f32(vmul_f32(*v22.f32, *v22.f32), vmul_f32(v21.u32[0], v21.u32[0]));
  v23 = vpadd_f32(*v20.i8, *v20.i8);
  v24 = vrsqrte_f32(v23);
  v25 = 4;
  do
  {
    v24 = vmul_f32(v24, vrsqrts_f32(vmul_f32(v24, v24), v23));
    --v25;
  }

  while (v25);
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
  v30 = vnegq_f32(v29);
  v30.i32[3] = 0;
  v35 = v29;
  v36 = v30;
  *&v31 = (*(*a2 + 8))(a2, &v36);
  v34 = v31;
  *&v32 = (*(*a3 + 8))(a3, &v35);
  *(a1 + 560) = v34;
  *(a1 + 1584) = v32;
  return physx::Gu::EPA::expandTriangle(a1, a4, a5);
}

BOOL physx::Gu::EPA::expandTriangle(int *a1, _DWORD *a2, float32x2_t *a3)
{
  *a2 = 3;
  v5 = physx::Gu::EPA::addFacet(a1, 0, 1u, 2u, a3);
  v6 = physx::Gu::EPA::addFacet(a1, 1u, 0, 2u, a3);
  v7 = *a1;
  if (*a1)
  {
    v5[1].i64[1] = v6;
    v5[3].i8[0] = 0;
    v6[1].i64[1] = v5;
    v6[3].i8[0] = 0;
    v5[2].i64[0] = v6;
    v5[3].i8[1] = 2;
    v6[2].i64[1] = v5;
    v6[3].i8[2] = 1;
    v5[2].i64[1] = v6;
    v5[3].i8[2] = 1;
    v6[2].i64[0] = v5;
    v6[3].i8[1] = 2;
  }

  return v7 != 0;
}

uint64_t physx::Gu::calculateContactInformation(uint64_t result, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v7 = a3[3].i8[3];
  v8 = *(result + 16 * v7);
  v9 = a3[3].i8[4];
  v10 = *(result + 16 * v9);
  v11 = a3[3].i8[5];
  v12 = *(result + 16 * v11);
  v13 = *(a2 + 16 * v7);
  v14 = *(a2 + 16 * v9);
  v15 = *(a2 + 16 * v11);
  v16 = vsubq_f32(v8, v13);
  v19 = vsubq_f32(v12, v15);
  v17 = vsubq_f32(vsubq_f32(v10, v14), v16);
  v18 = vsubq_f32(v19, v16);
  v19.i32[0] = a3[1].i32[0];
  v20 = vmulq_n_f32(*a3, v19.f32[0]);
  v20.i32[3] = 0;
  v21 = vsubq_f32(v20, v16);
  v22 = vmulq_f32(v17, v17);
  v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
  v23 = vpadd_f32(*v22.f32, *v22.f32);
  v24 = vmulq_f32(v17, v18);
  v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
  v25 = vpadd_f32(*v24.f32, *v24.f32);
  v26 = vmulq_f32(v18, v18);
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v27 = vpadd_f32(*v26.f32, *v26.f32);
  v28 = vmulq_f32(v17, v21);
  v29 = vextq_s8(v28, v28, 8uLL).u64[0];
  v30 = vmulq_f32(v18, v21);
  v31 = vextq_s8(v30, v30, 8uLL).u64[0];
  v32 = vneg_f32(v25);
  v33 = vmls_f32(vmul_f32(v23, v27), v25, v25);
  v34 = vrecpe_f32(v33);
  v35 = 4;
  do
  {
    v34 = vmul_f32(v34, vrecps_f32(v33, v34));
    --v35;
  }

  while (v35);
  v36 = vpadd_f32(*v28.i8, v29);
  v37 = vpadd_f32(*v30.i8, v31);
  v38 = vpadd_f32(v36, v36);
  v39 = vpadd_f32(v37, v37);
  v40 = vand_s8(vdup_lane_s32(vcgt_f32(v33, 0x3400000034000000), 0), v34);
  v41 = vmul_f32(vmla_f32(vmul_f32(v27, v38), v39, v32), v40);
  v42 = vmul_f32(vmla_f32(vmul_f32(v23, v39), v38, v32), v40);
  __asm { FMOV            V19.2S, #1.0 }

  LODWORD(v48) = vsub_f32(_D19, vadd_f32(v41, v42)).u32[0];
  v49 = vmulq_n_f32(v12, v42.f32[0]);
  v49.i32[3] = 0;
  v50 = vmlaq_n_f32(v49, v10, v41.f32[0]);
  v10.i32[1] = 0;
  v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
  v51 = vmlaq_n_f32(v50, v8, v48);
  v8.i32[1] = 0;
  v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
  v52 = vmulq_n_f32(v15, v42.f32[0]);
  v52.i32[3] = 0;
  v53 = vmlaq_n_f32(v52, v14, v41.f32[0]);
  v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
  v54 = vmlaq_n_f32(v53, v13, v48);
  v54.i64[1] = vextq_s8(v54, v54, 8uLL).u32[0];
  v55 = vabs_f32(vdup_lane_s32(*v19.f32, 0));
  v56 = vnegq_f32(*a3);
  v56.i32[3] = 0;
  if ((a6 & 1) == 0)
  {
    v8.i32[0] = -*(a4 + 32);
    v57 = vdup_lane_s32(vand_s8(*(a4 + 16), *v8.f32), 0);
    v8.i32[0] = *(a5 + 16);
    v10.i32[0] = -*(a5 + 32);
    v58 = vdup_lane_s32(vand_s8(*v8.f32, *v10.f32), 0);
    v51 = vmlsq_lane_f32(v51, v56, v57, 0);
    v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
    v54 = vmlaq_n_f32(v54, v56, v58.f32[0]);
    v54.i64[1] = vextq_s8(v54, v54, 8uLL).u32[0];
    v55 = vadd_f32(v55, vadd_f32(v57, v58));
  }

  *a7 = v51;
  *(a7 + 16) = v54;
  *(a7 + 32) = v56;
  *(a7 + 64) = vneg_f32(v55);
  return result;
}

void physx::Gu::closestPtPointTetrahedron(float32x4_t *a1, _OWORD *a2, _OWORD *a3, int *a4)
{
  v129 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = vsubq_f32(v7, *a1);
  v12 = vsubq_f32(v9, *a1);
  v13 = vextq_s8(v11, v11, 8uLL).u64[0];
  v14 = vextq_s8(v12, v12, 8uLL).u64[0];
  v15 = vextq_s8(v12, v12, 4uLL).u64[0];
  v16 = vextq_s8(v11, v11, 4uLL).u64[0];
  v17 = vmls_f32(vmul_f32(*v11.i8, v15), v16, *v12.i8);
  *v18.f32 = vext_s8(v17, vmls_f32(vmul_f32(v13, *v12.i8), *v11.i8, v14), 4uLL);
  v18.i64[1] = v17.u32[0];
  v19 = vpadd_f32(vmul_f32(*v18.f32, *v18.f32), vmul_f32(v17.u32[0], v17.u32[0]));
  v20 = vpadd_f32(v19, v19);
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
  v27 = vsubq_f32(v10, v8);
  v28 = vmulq_f32(v27, v26);
  v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
  if (vabs_f32(vpadd_f32(*v28.f32, *v28.f32)).f32[0] < 0.0001)
  {
    *a4 = 3;
    v54 = *a1;
    v55 = a1[1];
    v56 = a1[2];
    v57 = vsubq_f32(v55, *a1);
    v58 = vsubq_f32(v56, *a1);
    v60 = vmls_f32(vmul_f32(*v57.f32, *&vextq_s8(v58, v58, 4uLL)), *&vextq_s8(v57, v57, 4uLL), *v58.f32);
    *v59.f32 = vext_s8(v60, vmls_f32(vmul_f32(*&vextq_s8(v57, v57, 8uLL), *v58.f32), *v57.f32, *&vextq_s8(v58, v58, 8uLL)), 4uLL);
    v60.i32[1] = 0;
    v61 = vpadd_f32(vmul_f32(*v59.f32, *v59.f32), vmul_f32(v60.u32[0], v60.u32[0]));
    v62 = vpadd_f32(v61, v61);
    if (v62.f32[0] <= 0.00000011921)
    {
      *a4 = 2;
      v99 = vsubq_f32(a1[1], *a1);
      v100 = vmulq_f32(v99, v99);
      v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
      v101 = vpadd_f32(*v100.f32, *v100.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v101), 0), *a1->f32).u32[0] == -1)
      {
        *a4 = 1;
      }

      else
      {
        v102 = vrecpe_f32(v101);
        v103 = 4;
        do
        {
          v102 = vmul_f32(v102, vrecps_f32(v101, v102));
          --v103;
        }

        while (v103);
        __asm { FMOV            V3.2S, #1.0 }
      }
    }

    else
    {
      *&v59.u32[2] = v60;
      v63 = vextq_s8(v55, v55, 8uLL).u64[0];
      v64 = vextq_s8(v56, v56, 8uLL).u64[0];
      v65 = vextq_s8(v56, v56, 4uLL).u64[0];
      v66 = vextq_s8(v55, v55, 4uLL).u64[0];
      v67 = vmls_f32(vmul_f32(*v55.f32, v65), v66, *v56.f32);
      *v68.f32 = vext_s8(v67, vmls_f32(vmul_f32(v63, *v56.f32), *v55.f32, v64), 4uLL);
      v68.i64[1] = v67.u32[0];
      v69 = vextq_s8(v54, v54, 8uLL).u64[0];
      v70 = vextq_s8(v54, v54, 4uLL).u64[0];
      v71 = vmls_f32(vmul_f32(v70, *v56.f32), v65, *v54.f32);
      *v72.f32 = vext_s8(v71, vmls_f32(vmul_f32(*v54.f32, v64), *v56.f32, v69), 4uLL);
      v72.i64[1] = v71.u32[0];
      v73 = vmls_f32(vmul_f32(*v54.f32, v66), v70, *v55.f32);
      *v74.f32 = vext_s8(v73, vmls_f32(vmul_f32(v69, *v55.f32), *v54.f32, v63), 4uLL);
      v74.i64[1] = v73.u32[0];
      v75 = vmulq_f32(v68, v59);
      v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
      v76 = vpadd_f32(*v75.f32, *v75.f32);
      v77 = vmulq_f32(v72, v59);
      v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
      v78 = vpadd_f32(*v77.f32, *v77.f32);
      v79 = vmulq_f32(v74, v59);
      v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
      v80 = vpadd_f32(*v79.f32, *v79.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v78), vcgez_f32(v76)), vcgez_f32(v80)), 0), *v54.f32).u32[0] == -1)
      {
        v109 = vrecpe_f32(v62);
        v110 = 4;
        do
        {
          v109 = vmul_f32(v109, vrecps_f32(v62, v109));
          --v110;
        }

        while (v110);
      }

      else
      {
        v81 = vnegq_f32(v54);
        v81.i32[3] = 0;
        v82 = vnegq_f32(v55);
        v82.i32[3] = 0;
        v83 = vmulq_f32(v81, v57);
        v83.i64[0] = vpaddq_f32(v83, v83).u64[0];
        v84 = vpadd_f32(*v83.f32, *v83.f32);
        v85 = vmulq_f32(v57, v82);
        v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
        v86 = vpadd_f32(*v85.f32, *v85.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v80), vand_s8(vclez_f32(v86), vcgez_f32(v84))), 0), *v54.f32).u32[0] == -1)
        {
          v111 = vsub_f32(v84, v86);
          v112 = vrecpe_f32(v111);
          v113 = 4;
          do
          {
            v112 = vmul_f32(v112, vrecps_f32(v111, v112));
            --v113;
          }

          while (v113);
          v98 = 0;
          v114 = 2;
          v97 = 1;
        }

        else
        {
          v87 = vnegq_f32(v56);
          v87.i32[3] = 0;
          v88 = vmulq_f32(v82, v58);
          v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
          v89 = vpadd_f32(*v88.f32, *v88.f32);
          v90 = vmulq_f32(v57, v87);
          v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
          v91 = vpadd_f32(*v90.f32, *v90.f32);
          v92 = vmulq_f32(v58, v87);
          v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
          v93 = vpadd_f32(*v92.f32, *v92.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v89, v86), vcge_f32(v91, v93)), vclez_f32(v76)), 0), *v54.f32).u32[0] == -1)
          {
            v115 = vadd_f32(vsub_f32(v89, v86), vsub_f32(v91, v93));
            v116 = vrecpe_f32(v115);
            v117 = 4;
            do
            {
              v116 = vmul_f32(v116, vrecps_f32(v115, v116));
              --v117;
            }

            while (v117);
            v114 = 2;
            v98 = 1;
            v97 = 2;
          }

          else
          {
            v94 = vmulq_f32(v81, v58);
            v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
            v95 = vpadd_f32(*v94.f32, *v94.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v78), vand_s8(vclez_f32(v93), vcgez_f32(v95))), 0), *v54.f32).u32[0] == -1)
            {
              v118 = vsub_f32(v95, v93);
              v119 = vrecpe_f32(v118);
              v120 = 4;
              do
              {
                v119 = vmul_f32(v119, vrecps_f32(v118, v119));
                --v120;
              }

              while (v120);
              v98 = 0;
              v97 = 2;
            }

            else if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v95), vclez_f32(v84)), 0), *v54.f32).u32[0] == -1)
            {
              v98 = 0;
              v97 = 1;
            }

            else
            {
              v96 = vdup_lane_s16(vand_s8(vcge_f32(v86, v89), vcgez_f32(v86)), 0);
              v97 = 1;
              if (vuzp1_s8(v96, v96).u32[0] == -1)
              {
                v98 = 1;
              }

              else
              {
                v98 = 2;
              }
            }

            v114 = v97;
          }
        }

        v121 = a1[v97];
        v122 = a2[v98];
        v123 = a2[v97];
        v124 = a3[v98];
        v125 = a3[v97];
        *a1 = a1[v98];
        a1[1] = v121;
        *a2 = v122;
        a2[1] = v123;
        *a3 = v124;
        a3[1] = v125;
        *a4 = v114;
      }
    }
  }

  else
  {
    v29 = vsubq_f32(v10, v7);
    v30 = vextq_s8(v27, v27, 8uLL).u64[0];
    v31 = vextq_s8(v27, v27, 4uLL).u64[0];
    v32 = vmls_f32(vmul_f32(*v12.i8, v31), v15, *v27.f32);
    *v33.f32 = vext_s8(v32, vmls_f32(vmul_f32(v14, *v27.f32), *v12.i8, v30), 4uLL);
    v33.i64[1] = v32.u32[0];
    v34 = vmls_f32(vmul_f32(v16, *v27.f32), v31, *v11.i8);
    *v35.f32 = vext_s8(v34, vmls_f32(vmul_f32(*v11.i8, v30), *v27.f32, v13), 4uLL);
    v36 = vsubq_f32(v9, v7);
    v35.i64[1] = v34.u32[0];
    v37 = vmls_f32(vmul_f32(*&vextq_s8(v36, v36, 4uLL), *v29.i8), *&vextq_s8(v29, v29, 4uLL), *v36.f32);
    *v36.f32 = vext_s8(v37, vmls_f32(vmul_f32(*v36.f32, *&vextq_s8(v29, v29, 8uLL)), *v29.i8, *&vextq_s8(v36, v36, 8uLL)), 4uLL);
    v36.i64[1] = v37.u32[0];
    v38 = vmulq_f32(v8, v18);
    v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
    v39 = vmulq_f32(v8, v33);
    v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
    v40 = vmulq_f32(v8, v35);
    v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
    v41 = vmulq_f32(v8, v36);
    v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
    v42 = vmulq_f32(v10, v18);
    v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
    v43 = vmulq_f32(v7, v33);
    v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
    v44 = vmulq_f32(v9, v35);
    v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
    v45 = vmulq_f32(v7, v36);
    v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
    *v35.f32 = vext_s8(vpadd_f32(*v38.f32, *v38.f32), vpadd_f32(*v39.f32, *v39.f32), 4uLL);
    *v42.f32 = vext_s8(vpadd_f32(*v42.f32, *v42.f32), vpadd_f32(*v43.f32, *v43.f32), 4uLL);
    *&v42.u32[2] = vext_s8(vpadd_f32(*v40.f32, *v40.f32), vpadd_f32(*v45.f32, *v45.f32), 4uLL);
    *&v35.u32[2] = vext_s8(vpadd_f32(*v44.f32, *v44.f32), vpadd_f32(*v41.f32, *v41.f32), 4uLL);
    v126 = vcgeq_f32(vmulq_f32(v35, v42), vdupq_n_s32(0xB58637BD));
    *v45.f32 = vmovn_s32(vmvnq_s8(v126));
    if (vuzp1_s8(*v45.f32, *v45.f32).u32[0] != -1)
    {
      v128 = 2;
      v127 = 0x100000000;
      physx::Gu::getClosestPtPointTriangle(a1, &v126, &v127, a4);
      v46 = a1[HIDWORD(v127)];
      v47 = a1[v128];
      v48 = a2[v127];
      v49 = a2[HIDWORD(v127)];
      v50 = a2[v128];
      v51 = a3[v127];
      v52 = a3[HIDWORD(v127)];
      v53 = a3[v128];
      *a1 = a1[v127];
      a1[1] = v46;
      a1[2] = v47;
      *a2 = v48;
      a2[1] = v49;
      a2[2] = v50;
      *a3 = v51;
      a3[1] = v52;
      a3[2] = v53;
    }
  }
}

double physx::Gu::getClosestPtPointTriangle(float32x4_t *a1, int32x4_t *a2, uint64_t a3, int *a4)
{
  v4.i64[0] = -1;
  v4.i64[1] = -1;
  v5 = vneg_f32(0x80000000800000);
  v6.i64[0] = 0;
  if (vdup_lane_s8(vmovn_s32(vceqq_s32(*a2, v4)), 0).u32[0] == -1)
  {
    *a4 = 3;
    v8 = *a1;
    v7 = a1[1];
    v9 = vsubq_f32(v7, *a1);
    v10 = a1[2];
    v11 = vsubq_f32(v10, *a1);
    v13 = vmls_f32(vmul_f32(*v9.f32, *&vextq_s8(v11, v11, 4uLL)), *&vextq_s8(v9, v9, 4uLL), *v11.f32);
    *v12.f32 = vext_s8(v13, vmls_f32(vmul_f32(*&vextq_s8(v9, v9, 8uLL), *v11.f32), *v9.f32, *&vextq_s8(v11, v11, 8uLL)), 4uLL);
    v13.i32[1] = 0;
    v14 = vpadd_f32(vmul_f32(*v12.f32, *v12.f32), vmul_f32(v13.u32[0], v13.u32[0]));
    v15 = vpadd_f32(v14, v14);
    if (v15.f32[0] != 0.0)
    {
      *&v12.u32[2] = v13;
      v16 = vextq_s8(v7, v7, 8uLL).u64[0];
      v17 = vextq_s8(v10, v10, 8uLL).u64[0];
      v18 = vextq_s8(v10, v10, 4uLL).u64[0];
      v19 = vextq_s8(v7, v7, 4uLL).u64[0];
      v20 = vmls_f32(vmul_f32(*v7.f32, v18), v19, *v10.f32);
      *v21.f32 = vext_s8(v20, vmls_f32(vmul_f32(v16, *v10.f32), *v7.f32, v17), 4uLL);
      v21.i64[1] = v20.u32[0];
      v22 = vextq_s8(v8, v8, 8uLL).u64[0];
      v23 = vextq_s8(v8, v8, 4uLL).u64[0];
      v24 = vmls_f32(vmul_f32(v23, *v10.f32), v18, *v8.f32);
      *v25.f32 = vext_s8(v24, vmls_f32(vmul_f32(*v8.f32, v17), *v10.f32, v22), 4uLL);
      v25.i64[1] = v24.u32[0];
      v26 = vmls_f32(vmul_f32(v19, *v8.f32), v23, *v7.f32);
      *v27.f32 = vext_s8(v26, vmls_f32(vmul_f32(*v7.f32, v22), *v8.f32, v16), 4uLL);
      v27.i64[1] = v26.u32[0];
      v28 = vmulq_f32(v21, v12);
      v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
      v29 = vpadd_f32(*v28.f32, *v28.f32);
      v30 = vmulq_f32(v25, v12);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      v31 = vpadd_f32(*v30.f32, *v30.f32);
      v32 = vmulq_f32(v27, v12);
      v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
      v33 = vpadd_f32(*v32.f32, *v32.f32);
      *v32.f32 = vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v31), vcgez_f32(v29)), vcgez_f32(v33)), 0);
      if (vuzp1_s8(*v32.f32, *v32.f32).u32[0] == -1)
      {
        v51 = vmulq_f32(v8, v12);
        v52 = vextq_s8(v51, v51, 8uLL).u64[0];
        v53 = vrecpe_f32(v15);
        v54 = 4;
        do
        {
          v53 = vmul_f32(v53, vrecps_f32(v15, v53));
          --v54;
        }

        while (v54);
        v55 = vpadd_f32(*v51.i8, v52);
        v6 = vmulq_n_f32(v12, vmul_f32(v53, vpadd_f32(v55, v55)).f32[0]);
        v6.i32[3] = 0;
        goto LABEL_24;
      }

      v34 = vnegq_f32(v8);
      v34.i32[3] = 0;
      v35 = vnegq_f32(v7);
      v35.i32[3] = 0;
      v36 = vmulq_f32(v9, v34);
      v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
      v37 = vpadd_f32(*v36.f32, *v36.f32);
      v38 = vmulq_f32(v35, v9);
      v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
      v39 = vpadd_f32(*v38.f32, *v38.f32);
      *a4 = 2;
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v33), vand_s8(vclez_f32(v39), vcgez_f32(v37))), 0), v37).u32[0] == -1)
      {
        v56 = vsub_f32(v37, v39);
        v57 = vrecpe_f32(v56);
        v58 = 4;
        do
        {
          v57 = vmul_f32(v57, vrecps_f32(v56, v57));
          --v58;
        }

        while (v58);
        v6 = vmlaq_n_f32(*a1, v9, vmul_f32(v37, vbsl_s8(vcgt_f32(vabs_f32(v56), 0x3400000034000000), v57, 0)).f32[0]);
      }

      else
      {
        v40 = vnegq_f32(v10);
        v40.i32[3] = 0;
        v41 = vmulq_f32(v35, v11);
        v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
        v42 = vpadd_f32(*v41.f32, *v41.f32);
        v43 = vmulq_f32(v9, v40);
        v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
        v44 = vpadd_f32(*v43.f32, *v43.f32);
        v45 = vmulq_f32(v11, v40);
        v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
        v46 = vpadd_f32(*v45.f32, *v45.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v42, v39), vcge_f32(v44, v46)), vclez_f32(v29)), 0), v37).u32[0] == -1)
        {
          v59 = vsub_f32(v42, v39);
          v60 = vadd_f32(v59, vsub_f32(v44, v46));
          v61 = vrecpe_f32(v60);
          v62 = 4;
          do
          {
            v61 = vmul_f32(v61, vrecps_f32(v60, v61));
            --v62;
          }

          while (v62);
          v11 = vsubq_f32(a1[2], a1[1]);
          v63 = vmul_f32(v59, vbsl_s8(vcgt_f32(vabs_f32(v60), 0x3400000034000000), v61, 0)).u32[0];
          *a3 = *(a3 + 4);
          v64 = a1[1];
        }

        else
        {
          v47 = vmulq_f32(v34, v11);
          v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
          v48 = vpadd_f32(*v47.f32, *v47.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v31), vand_s8(vclez_f32(v46), vcgez_f32(v48))), 0), v37).u32[0] != -1)
          {
            *a4 = 1;
            v49 = vdup_lane_s16(vand_s8(vclez_f32(v48), vclez_f32(v37)), 0);
            if (vuzp1_s8(v49, v49).u32[0] == -1)
            {
              v6 = *a1;
            }

            else
            {
              v50 = vdup_lane_s16(vand_s8(vcge_f32(v39, v42), vcgez_f32(v39)), 0);
              if (vuzp1_s8(v50, v50).u32[0] == -1)
              {
                *a3 = *(a3 + 4);
                v6 = a1[1];
              }

              else
              {
                *a3 = *(a3 + 8);
                v6 = a1[2];
              }
            }

            goto LABEL_24;
          }

          v65 = vsub_f32(v48, v46);
          v66 = vrecpe_f32(v65);
          v67 = 4;
          do
          {
            v66 = vmul_f32(v66, vrecps_f32(v65, v66));
            --v67;
          }

          while (v67);
          v63 = vmul_f32(v48, vbsl_s8(vcgt_f32(vabs_f32(v65), 0x3400000034000000), v66, 0)).u32[0];
          *(a3 + 4) = *(a3 + 8);
          v64 = *a1;
        }

        v6 = vmlaq_n_f32(v64, v11, *&v63);
      }

      v6.i64[1] = vextq_s8(v6, v6, 8uLL).u32[0];
LABEL_24:
      v68 = vmulq_f32(v6, v6);
      v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
      v5 = vpadd_f32(*v68.f32, *v68.f32);
    }
  }

  v69 = *a2;
  if (vdup_lane_s8(vmovn_s32(vceqq_s32(*a2, v4)), 2).u32[0] != -1)
  {
    goto LABEL_52;
  }

  v70 = *a1;
  v71 = a1[2];
  v72 = a1[3];
  v73 = vsubq_f32(v71, *a1);
  v74 = vsubq_f32(v72, *a1);
  v76 = vmls_f32(vmul_f32(*v73.f32, *&vextq_s8(v74, v74, 4uLL)), *&vextq_s8(v73, v73, 4uLL), *v74.f32);
  *v75.f32 = vext_s8(v76, vmls_f32(vmul_f32(*&vextq_s8(v73, v73, 8uLL), *v74.f32), *v73.f32, *&vextq_s8(v74, v74, 8uLL)), 4uLL);
  v76.i32[1] = 0;
  v77 = vpadd_f32(vmul_f32(*v75.f32, *v75.f32), vmul_f32(v76.u32[0], v76.u32[0]));
  v78 = vpadd_f32(v77, v77);
  if (v78.f32[0] == 0.0)
  {
    v112 = 0x200000000;
    v115 = vneg_f32(0x80000000800000);
    v70.i64[0] = 0;
    v114 = 3;
    goto LABEL_50;
  }

  *&v75.u32[2] = v76;
  v79 = vextq_s8(v71, v71, 8uLL).u64[0];
  v80 = vextq_s8(v72, v72, 8uLL).u64[0];
  v81 = vextq_s8(v72, v72, 4uLL).u64[0];
  v82 = vextq_s8(v71, v71, 4uLL).u64[0];
  v83 = vmls_f32(vmul_f32(*v71.f32, v81), v82, *v72.f32);
  *v84.f32 = vext_s8(v83, vmls_f32(vmul_f32(v79, *v72.f32), *v71.f32, v80), 4uLL);
  v84.i64[1] = v83.u32[0];
  v85 = vextq_s8(v70, v70, 8uLL).u64[0];
  v86 = vextq_s8(v70, v70, 4uLL).u64[0];
  v87 = vmls_f32(vmul_f32(v86, *v72.f32), v81, *v70.f32);
  *v88.f32 = vext_s8(v87, vmls_f32(vmul_f32(*v70.f32, v80), *v72.f32, v85), 4uLL);
  v88.i64[1] = v87.u32[0];
  v89 = vmls_f32(vmul_f32(v82, *v70.f32), v86, *v71.f32);
  *v90.f32 = vext_s8(v89, vmls_f32(vmul_f32(*v71.f32, v85), *v70.f32, v79), 4uLL);
  v90.i64[1] = v89.u32[0];
  v91 = vmulq_f32(v84, v75);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  v92 = vpadd_f32(*v91.f32, *v91.f32);
  v93 = vmulq_f32(v88, v75);
  v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
  v94 = vpadd_f32(*v93.f32, *v93.f32);
  v95 = vmulq_f32(v90, v75);
  v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
  v96 = vpadd_f32(*v95.f32, *v95.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v94), vcgez_f32(v92)), vcgez_f32(v96)), 0), *v6.f32).u32[0] == -1)
  {
    v116 = vmulq_f32(v70, v75);
    v117 = vextq_s8(v116, v116, 8uLL).u64[0];
    v118 = vrecpe_f32(v78);
    v119 = 4;
    do
    {
      v118 = vmul_f32(v118, vrecps_f32(v78, v118));
      --v119;
    }

    while (v119);
    v120 = vpadd_f32(*v116.i8, v117);
    v70 = vmulq_n_f32(v75, vmul_f32(v118, vpadd_f32(v120, v120)).f32[0]);
    v70.i32[3] = 0;
    v113 = vmulq_f32(v70, v70);
    v112 = 0x200000000;
    v114 = 3;
    goto LABEL_49;
  }

  v97 = vnegq_f32(v70);
  v97.i32[3] = 0;
  v98 = vnegq_f32(v71);
  v98.i32[3] = 0;
  v99 = vmulq_f32(v73, v97);
  v99.i64[0] = vpaddq_f32(v99, v99).u64[0];
  v100 = vpadd_f32(*v99.f32, *v99.f32);
  v101 = vmulq_f32(v98, v73);
  v101.i64[0] = vpaddq_f32(v101, v101).u64[0];
  v102 = vpadd_f32(*v101.f32, *v101.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v96), vand_s8(vclez_f32(v102), vcgez_f32(v100))), 0), *v6.f32).u32[0] == -1)
  {
    v121 = vsub_f32(v100, v102);
    v122 = vrecpe_f32(v121);
    v123 = 4;
    do
    {
      v122 = vmul_f32(v122, vrecps_f32(v121, v122));
      --v123;
    }

    while (v123);
    v70 = vmlaq_n_f32(v70, v73, vmul_f32(v100, vbsl_s8(vcgt_f32(vabs_f32(v121), 0x3400000034000000), v122, 0)).f32[0]);
    v70.i64[1] = vextq_s8(v70, v70, 8uLL).u32[0];
    v113 = vmulq_f32(v70, v70);
    v112 = 0x200000000;
    goto LABEL_48;
  }

  v103 = vnegq_f32(v72);
  v103.i32[3] = 0;
  v104 = vmulq_f32(v98, v74);
  v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
  v105 = vpadd_f32(*v104.f32, *v104.f32);
  v106 = vmulq_f32(v73, v103);
  v106.i64[0] = vpaddq_f32(v106, v106).u64[0];
  v107 = vpadd_f32(*v106.f32, *v106.f32);
  v108 = vmulq_f32(v74, v103);
  v108.i64[0] = vpaddq_f32(v108, v108).u64[0];
  v109 = vpadd_f32(*v108.f32, *v108.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v105, v102), vcge_f32(v107, v109)), vclez_f32(v92)), 0), *v6.f32).u32[0] == -1)
  {
    v124 = vsub_f32(v105, v102);
    v125 = vadd_f32(v124, vsub_f32(v107, v109));
    v126 = vrecpe_f32(v125);
    v127 = 4;
    do
    {
      v126 = vmul_f32(v126, vrecps_f32(v125, v126));
      --v127;
    }

    while (v127);
    v71 = vmlaq_n_f32(v71, vsubq_f32(v72, v71), vmul_f32(v124, vbsl_s8(vcgt_f32(vabs_f32(v125), 0x3400000034000000), v126, 0)).f32[0]);
    v71.i64[1] = vextq_s8(v71, v71, 8uLL).u32[0];
    v113 = vmulq_f32(v71, v71);
    v112 = 0x300000002;
    v114 = 2;
    goto LABEL_44;
  }

  v110 = vmulq_f32(v97, v74);
  v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
  v111 = vpadd_f32(*v110.f32, *v110.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v94), vand_s8(vclez_f32(v109), vcgez_f32(v111))), 0), *v6.f32).u32[0] == -1)
  {
    v128 = vsub_f32(v111, v109);
    v129 = vrecpe_f32(v128);
    v130 = 4;
    do
    {
      v129 = vmul_f32(v129, vrecps_f32(v128, v129));
      --v130;
    }

    while (v130);
    v70 = vmlaq_n_f32(v70, v74, vmul_f32(v111, vbsl_s8(vcgt_f32(vabs_f32(v128), 0x3400000034000000), v129, 0)).f32[0]);
    v70.i64[1] = vextq_s8(v70, v70, 8uLL).u32[0];
    v113 = vmulq_f32(v70, v70);
    v112 = 0x300000000;
LABEL_48:
    v114 = 2;
    goto LABEL_49;
  }

  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v111), vclez_f32(v100)), 0), *v6.f32).u32[0] == -1)
  {
    v112 = 0x200000000;
    v113 = vmulq_f32(v70, v70);
    v114 = 1;
    goto LABEL_49;
  }

  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcge_f32(v102, v105), vcgez_f32(v102)), 0), *v6.f32).u32[0] == -1)
  {
    v113 = vmulq_f32(v71, v71);
    v112 = 0x200000002;
    v114 = 1;
LABEL_44:
    v70.i64[0] = v71.i64[0];
    goto LABEL_49;
  }

  v112 = 0x200000003;
  v113 = vmulq_f32(v72, v72);
  v114 = 1;
  v70 = a1[3];
LABEL_49:
  v131 = vpaddq_f32(v113, v113).u64[0];
  v115 = vpadd_f32(v131, v131);
LABEL_50:
  if (vuzp1_s8(vdup_lane_s16(vcgt_f32(v5, v115), 0), *v6.f32).u32[0] == -1)
  {
    *a3 = v112;
    *(a3 + 8) = 3;
    *a4 = v114;
    v69 = *a2;
    v6.i64[0] = v70.i64[0];
    v5 = v115;
  }

LABEL_52:
  v132.i64[0] = -1;
  v132.i64[1] = -1;
  if (vdup_lane_s8(vmovn_s32(vceqq_s32(v69, v132)), 4).u32[0] != -1)
  {
    goto LABEL_79;
  }

  v133 = a1[3];
  v134 = *a1;
  v135 = a1[1];
  v136 = vsubq_f32(v133, *a1);
  v137 = vsubq_f32(v135, *a1);
  v139 = vmls_f32(vmul_f32(*v136.f32, *&vextq_s8(v137, v137, 4uLL)), *&vextq_s8(v136, v136, 4uLL), *v137.f32);
  *v138.f32 = vext_s8(v139, vmls_f32(vmul_f32(*&vextq_s8(v136, v136, 8uLL), *v137.f32), *v136.f32, *&vextq_s8(v137, v137, 8uLL)), 4uLL);
  v139.i32[1] = 0;
  v140 = vpadd_f32(vmul_f32(*v138.f32, *v138.f32), vmul_f32(v139.u32[0], v139.u32[0]));
  v141 = vpadd_f32(v140, v140);
  if (v141.f32[0] == 0.0)
  {
    v175 = 0x300000000;
    v178 = vneg_f32(0x80000000800000);
    v134.i64[0] = 0;
    v177 = 3;
    goto LABEL_77;
  }

  *&v138.u32[2] = v139;
  v142 = vextq_s8(v133, v133, 8uLL).u64[0];
  v143 = vextq_s8(v135, v135, 8uLL).u64[0];
  v144 = vextq_s8(v135, v135, 4uLL).u64[0];
  v145 = vextq_s8(v133, v133, 4uLL).u64[0];
  v146 = vmls_f32(vmul_f32(*v133.f32, v144), v145, *v135.f32);
  *v147.f32 = vext_s8(v146, vmls_f32(vmul_f32(v142, *v135.f32), *v133.f32, v143), 4uLL);
  v147.i64[1] = v146.u32[0];
  v148 = vextq_s8(v134, v134, 8uLL).u64[0];
  v149 = vextq_s8(v134, v134, 4uLL).u64[0];
  v150 = vmls_f32(vmul_f32(v149, *v135.f32), v144, *v134.f32);
  *v151.f32 = vext_s8(v150, vmls_f32(vmul_f32(*v134.f32, v143), *v135.f32, v148), 4uLL);
  v151.i64[1] = v150.u32[0];
  v152 = vmls_f32(vmul_f32(v145, *v134.f32), v149, *v133.f32);
  *v153.f32 = vext_s8(v152, vmls_f32(vmul_f32(*v133.f32, v148), *v134.f32, v142), 4uLL);
  v153.i64[1] = v152.u32[0];
  v154 = vmulq_f32(v147, v138);
  v154.i64[0] = vpaddq_f32(v154, v154).u64[0];
  v155 = vpadd_f32(*v154.f32, *v154.f32);
  v156 = vmulq_f32(v151, v138);
  v156.i64[0] = vpaddq_f32(v156, v156).u64[0];
  v157 = vpadd_f32(*v156.f32, *v156.f32);
  v158 = vmulq_f32(v153, v138);
  v158.i64[0] = vpaddq_f32(v158, v158).u64[0];
  v159 = vpadd_f32(*v158.f32, *v158.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v157), vcgez_f32(v155)), vcgez_f32(v159)), 0), *v6.f32).u32[0] == -1)
  {
    v179 = vmulq_f32(v134, v138);
    v180 = vextq_s8(v179, v179, 8uLL).u64[0];
    v181 = vrecpe_f32(v141);
    v182 = 4;
    do
    {
      v181 = vmul_f32(v181, vrecps_f32(v141, v181));
      --v182;
    }

    while (v182);
    v183 = vpadd_f32(*v179.i8, v180);
    v134 = vmulq_n_f32(v138, vmul_f32(v181, vpadd_f32(v183, v183)).f32[0]);
    v134.i32[3] = 0;
    v176 = vmulq_f32(v134, v134);
    v175 = 0x300000000;
    v177 = 3;
    goto LABEL_76;
  }

  v160 = vnegq_f32(v134);
  v160.i32[3] = 0;
  v161 = vnegq_f32(v133);
  v161.i32[3] = 0;
  v162 = vmulq_f32(v136, v160);
  v162.i64[0] = vpaddq_f32(v162, v162).u64[0];
  v163 = vpadd_f32(*v162.f32, *v162.f32);
  v164 = vmulq_f32(v161, v136);
  v164.i64[0] = vpaddq_f32(v164, v164).u64[0];
  v165 = vpadd_f32(*v164.f32, *v164.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v159), vand_s8(vclez_f32(v165), vcgez_f32(v163))), 0), *v6.f32).u32[0] == -1)
  {
    v184 = vsub_f32(v163, v165);
    v185 = vrecpe_f32(v184);
    v186 = 4;
    do
    {
      v185 = vmul_f32(v185, vrecps_f32(v184, v185));
      --v186;
    }

    while (v186);
    v134 = vmlaq_n_f32(v134, v136, vmul_f32(v163, vbsl_s8(vcgt_f32(vabs_f32(v184), 0x3400000034000000), v185, 0)).f32[0]);
    v134.i64[1] = vextq_s8(v134, v134, 8uLL).u32[0];
    v176 = vmulq_f32(v134, v134);
    v175 = 0x300000000;
    goto LABEL_75;
  }

  v166 = vnegq_f32(v135);
  v166.i32[3] = 0;
  v167 = vmulq_f32(v161, v137);
  v167.i64[0] = vpaddq_f32(v167, v167).u64[0];
  v168 = vpadd_f32(*v167.f32, *v167.f32);
  v169 = vmulq_f32(v136, v166);
  v169.i64[0] = vpaddq_f32(v169, v169).u64[0];
  v170 = vpadd_f32(*v169.f32, *v169.f32);
  v171 = vmulq_f32(v137, v166);
  v171.i64[0] = vpaddq_f32(v171, v171).u64[0];
  v172 = vpadd_f32(*v171.f32, *v171.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v168, v165), vcge_f32(v170, v172)), vclez_f32(v155)), 0), *v6.f32).u32[0] == -1)
  {
    v187 = vsub_f32(v168, v165);
    v188 = vadd_f32(v187, vsub_f32(v170, v172));
    v189 = vrecpe_f32(v188);
    v190 = 4;
    do
    {
      v189 = vmul_f32(v189, vrecps_f32(v188, v189));
      --v190;
    }

    while (v190);
    v133 = vmlaq_n_f32(v133, vsubq_f32(v135, v133), vmul_f32(v187, vbsl_s8(vcgt_f32(vabs_f32(v188), 0x3400000034000000), v189, 0)).f32[0]);
    v133.i64[1] = vextq_s8(v133, v133, 8uLL).u32[0];
    v176 = vmulq_f32(v133, v133);
    v175 = 0x100000003;
    v177 = 2;
    goto LABEL_71;
  }

  v173 = vmulq_f32(v160, v137);
  v173.i64[0] = vpaddq_f32(v173, v173).u64[0];
  v174 = vpadd_f32(*v173.f32, *v173.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v157), vand_s8(vclez_f32(v172), vcgez_f32(v174))), 0), *v6.f32).u32[0] == -1)
  {
    v191 = vsub_f32(v174, v172);
    v192 = vrecpe_f32(v191);
    v193 = 4;
    do
    {
      v192 = vmul_f32(v192, vrecps_f32(v191, v192));
      --v193;
    }

    while (v193);
    v134 = vmlaq_n_f32(v134, v137, vmul_f32(v174, vbsl_s8(vcgt_f32(vabs_f32(v191), 0x3400000034000000), v192, 0)).f32[0]);
    v134.i64[1] = vextq_s8(v134, v134, 8uLL).u32[0];
    v176 = vmulq_f32(v134, v134);
    v175 = 0x100000000;
LABEL_75:
    v177 = 2;
    goto LABEL_76;
  }

  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v174), vclez_f32(v163)), 0), *v6.f32).u32[0] == -1)
  {
    v175 = 0x300000000;
    v176 = vmulq_f32(v134, v134);
    v177 = 1;
    goto LABEL_76;
  }

  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcge_f32(v165, v168), vcgez_f32(v165)), 0), *v6.f32).u32[0] == -1)
  {
    v176 = vmulq_f32(v133, v133);
    v175 = 0x300000003;
    v177 = 1;
LABEL_71:
    v134.i64[0] = v133.i64[0];
    goto LABEL_76;
  }

  v175 = 0x300000001;
  v176 = vmulq_f32(v135, v135);
  v177 = 1;
  v134 = a1[1];
LABEL_76:
  v194 = vpaddq_f32(v176, v176).u64[0];
  v178 = vpadd_f32(v194, v194);
LABEL_77:
  if (vuzp1_s8(vdup_lane_s16(vcgt_f32(v5, v178), 0), *v6.f32).u32[0] == -1)
  {
    *a3 = v175;
    *(a3 + 8) = 1;
    *a4 = v177;
    v69 = *a2;
    v6.i64[0] = v134.i64[0];
    v5 = v178;
  }

LABEL_79:
  if (vdup_lane_s8(vmovn_s32(vceqq_s32(v69, v132)), 6).u32[0] != -1)
  {
    return *v6.i64;
  }

  v196 = a1[2];
  v195 = a1[3];
  v197 = a1[1];
  v198 = vsubq_f32(v195, v197);
  v199 = vsubq_f32(v196, v197);
  v201 = vmls_f32(vmul_f32(*v198.f32, *&vextq_s8(v199, v199, 4uLL)), *&vextq_s8(v198, v198, 4uLL), *v199.f32);
  *v200.f32 = vext_s8(v201, vmls_f32(vmul_f32(*&vextq_s8(v198, v198, 8uLL), *v199.f32), *v198.f32, *&vextq_s8(v199, v199, 8uLL)), 4uLL);
  v201.i32[1] = 0;
  v202 = vpadd_f32(vmul_f32(*v200.f32, *v200.f32), vmul_f32(v201.u32[0], v201.u32[0]));
  v203 = vpadd_f32(v202, v202);
  if (v203.f32[0] == 0.0)
  {
    v237 = 0x300000001;
    v240 = vneg_f32(0x80000000800000);
    v197.i64[0] = 0;
    v239 = 3;
    goto LABEL_105;
  }

  *&v200.u32[2] = v201;
  v204 = vextq_s8(v195, v195, 8uLL).u64[0];
  v205 = vextq_s8(v196, v196, 8uLL).u64[0];
  v206 = vextq_s8(v196, v196, 4uLL).u64[0];
  v207 = vextq_s8(v195, v195, 4uLL).u64[0];
  v208 = vmls_f32(vmul_f32(*v195.f32, v206), v207, *v196.f32);
  *v209.f32 = vext_s8(v208, vmls_f32(vmul_f32(v204, *v196.f32), *v195.f32, v205), 4uLL);
  v209.i64[1] = v208.u32[0];
  v210 = vextq_s8(v197, v197, 8uLL).u64[0];
  v211 = vextq_s8(v197, v197, 4uLL).u64[0];
  v212 = vmls_f32(vmul_f32(v211, *v196.f32), v206, *v197.f32);
  *v213.f32 = vext_s8(v212, vmls_f32(vmul_f32(*v197.f32, v205), *v196.f32, v210), 4uLL);
  v213.i64[1] = v212.u32[0];
  v214 = vmls_f32(vmul_f32(v207, *v197.f32), v211, *v195.f32);
  *v215.f32 = vext_s8(v214, vmls_f32(vmul_f32(*v195.f32, v210), *v197.f32, v204), 4uLL);
  v215.i64[1] = v214.u32[0];
  v216 = vmulq_f32(v209, v200);
  v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
  v217 = vpadd_f32(*v216.f32, *v216.f32);
  v218 = vmulq_f32(v213, v200);
  v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
  v219 = vpadd_f32(*v218.f32, *v218.f32);
  v220 = vmulq_f32(v215, v200);
  v220.i64[0] = vpaddq_f32(v220, v220).u64[0];
  v221 = vpadd_f32(*v220.f32, *v220.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v219), vcgez_f32(v217)), vcgez_f32(v221)), 0), *v6.f32).u32[0] == -1)
  {
    v241 = vmulq_f32(v197, v200);
    v242 = vextq_s8(v241, v241, 8uLL).u64[0];
    v243 = vrecpe_f32(v203);
    v244 = 4;
    do
    {
      v243 = vmul_f32(v243, vrecps_f32(v203, v243));
      --v244;
    }

    while (v244);
    v245 = vpadd_f32(*v241.i8, v242);
    v197 = vmulq_n_f32(v200, vmul_f32(v243, vpadd_f32(v245, v245)).f32[0]);
    v197.i32[3] = 0;
    v238 = vmulq_f32(v197, v197);
    v237 = 0x300000001;
    v239 = 3;
    goto LABEL_104;
  }

  v222 = vnegq_f32(v197);
  v222.i32[3] = 0;
  v223 = vnegq_f32(v195);
  v223.i32[3] = 0;
  v224 = vmulq_f32(v198, v222);
  v224.i64[0] = vpaddq_f32(v224, v224).u64[0];
  v225 = vpadd_f32(*v224.f32, *v224.f32);
  v226 = vmulq_f32(v223, v198);
  v226.i64[0] = vpaddq_f32(v226, v226).u64[0];
  v227 = vpadd_f32(*v226.f32, *v226.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v221), vand_s8(vclez_f32(v227), vcgez_f32(v225))), 0), *v6.f32).u32[0] == -1)
  {
    v246 = vsub_f32(v225, v227);
    v247 = vrecpe_f32(v246);
    v248 = 4;
    do
    {
      v247 = vmul_f32(v247, vrecps_f32(v246, v247));
      --v248;
    }

    while (v248);
    v197 = vmlaq_n_f32(v197, v198, vmul_f32(v225, vbsl_s8(vcgt_f32(vabs_f32(v246), 0x3400000034000000), v247, 0)).f32[0]);
    v197.i64[1] = vextq_s8(v197, v197, 8uLL).u32[0];
    v238 = vmulq_f32(v197, v197);
    v237 = 0x300000001;
    goto LABEL_103;
  }

  v228 = vnegq_f32(v196);
  v228.i32[3] = 0;
  v229 = vmulq_f32(v223, v199);
  v229.i64[0] = vpaddq_f32(v229, v229).u64[0];
  v230 = vpadd_f32(*v229.f32, *v229.f32);
  v231 = vmulq_f32(v198, v228);
  v231.i64[0] = vpaddq_f32(v231, v231).u64[0];
  v232 = vpadd_f32(*v231.f32, *v231.f32);
  v233 = vmulq_f32(v199, v228);
  v233.i64[0] = vpaddq_f32(v233, v233).u64[0];
  v234 = vpadd_f32(*v233.f32, *v233.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v230, v227), vcge_f32(v232, v234)), vclez_f32(v217)), 0), *v6.f32).u32[0] == -1)
  {
    v249 = vsub_f32(v230, v227);
    v250 = vadd_f32(v249, vsub_f32(v232, v234));
    v251 = vrecpe_f32(v250);
    v252 = 4;
    do
    {
      v251 = vmul_f32(v251, vrecps_f32(v250, v251));
      --v252;
    }

    while (v252);
    v195 = vmlaq_n_f32(v195, vsubq_f32(v196, v195), vmul_f32(v249, vbsl_s8(vcgt_f32(vabs_f32(v250), 0x3400000034000000), v251, 0)).f32[0]);
    v195.i64[1] = vextq_s8(v195, v195, 8uLL).u32[0];
    v238 = vmulq_f32(v195, v195);
    v237 = 0x200000003;
    v239 = 2;
    goto LABEL_99;
  }

  v235 = vmulq_f32(v222, v199);
  v235.i64[0] = vpaddq_f32(v235, v235).u64[0];
  v236 = vpadd_f32(*v235.f32, *v235.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v219), vand_s8(vclez_f32(v234), vcgez_f32(v236))), 0), *v6.f32).u32[0] == -1)
  {
    v253 = vsub_f32(v236, v234);
    v254 = vrecpe_f32(v253);
    v255 = 4;
    do
    {
      v254 = vmul_f32(v254, vrecps_f32(v253, v254));
      --v255;
    }

    while (v255);
    v197 = vmlaq_n_f32(v197, v199, vmul_f32(v236, vbsl_s8(vcgt_f32(vabs_f32(v253), 0x3400000034000000), v254, 0)).f32[0]);
    v197.i64[1] = vextq_s8(v197, v197, 8uLL).u32[0];
    v238 = vmulq_f32(v197, v197);
    v237 = 0x200000001;
LABEL_103:
    v239 = 2;
    goto LABEL_104;
  }

  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v236), vclez_f32(v225)), 0), *v6.f32).u32[0] == -1)
  {
    v237 = 0x300000001;
    v238 = vmulq_f32(v197, v197);
    v239 = 1;
    goto LABEL_104;
  }

  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcge_f32(v227, v230), vcgez_f32(v227)), 0), *v6.f32).u32[0] == -1)
  {
    v238 = vmulq_f32(v195, v195);
    v237 = 0x300000003;
    v239 = 1;
LABEL_99:
    v197.i64[0] = v195.i64[0];
    goto LABEL_104;
  }

  v237 = 0x300000002;
  v238 = vmulq_f32(v196, v196);
  v239 = 1;
  v197 = a1[2];
LABEL_104:
  v256 = vpaddq_f32(v238, v238).u64[0];
  v240 = vpadd_f32(v256, v256);
LABEL_105:
  if (vuzp1_s8(vdup_lane_s16(vcgt_f32(v5, v240), 0), *v6.f32).u32[0] == -1)
  {
    *a3 = v237;
    *(a3 + 8) = 2;
    *a4 = v239;
    v6.i64[0] = v197.i64[0];
  }

  return *v6.i64;
}

void physx::Gu::closestPtPointTetrahedron(float32x4_t *a1, _OWORD *a2, _OWORD *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  v144 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = vsubq_f32(v11, *a1);
  v16 = vsubq_f32(v13, *a1);
  v17 = vextq_s8(v15, v15, 8uLL).u64[0];
  v18 = vextq_s8(v16, v16, 8uLL).u64[0];
  v19 = vextq_s8(v16, v16, 4uLL).u64[0];
  v20 = vextq_s8(v15, v15, 4uLL).u64[0];
  v21 = vmls_f32(vmul_f32(*v15.i8, v19), v20, *v16.i8);
  *v22.f32 = vext_s8(v21, vmls_f32(vmul_f32(v17, *v16.i8), *v15.i8, v18), 4uLL);
  v22.i64[1] = v21.u32[0];
  v23 = vpadd_f32(vmul_f32(*v22.f32, *v22.f32), vmul_f32(v21.u32[0], v21.u32[0]));
  v24 = vpadd_f32(v23, v23);
  v25 = vrsqrte_f32(v24);
  v26 = 4;
  do
  {
    v25 = vmul_f32(v25, vrsqrts_f32(vmul_f32(v25, v25), v24));
    --v26;
  }

  while (v26);
  v27 = vbsl_s8(vdup_lane_s32(vceqz_f32(v24), 0), v24, vmul_f32(v24, v25));
  v28 = vrecpe_f32(v27);
  v29 = 4;
  do
  {
    v28 = vmul_f32(v28, vrecps_f32(v27, v28));
    --v29;
  }

  while (v29);
  v30 = vmulq_n_f32(v22, v28.f32[0]);
  v30.i32[3] = 0;
  v31 = vsubq_f32(v14, v12);
  v32 = vmulq_f32(v31, v30);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  if (vabs_f32(vpadd_f32(*v32.f32, *v32.f32)).f32[0] >= 0.0001)
  {
    v33 = vsubq_f32(v14, v11);
    v34 = vextq_s8(v31, v31, 8uLL).u64[0];
    v35 = vextq_s8(v31, v31, 4uLL).u64[0];
    v36 = vmls_f32(vmul_f32(*v16.i8, v35), v19, *v31.f32);
    *v37.f32 = vext_s8(v36, vmls_f32(vmul_f32(v18, *v31.f32), *v16.i8, v34), 4uLL);
    v37.i64[1] = v36.u32[0];
    v38 = vmls_f32(vmul_f32(v20, *v31.f32), v35, *v15.i8);
    *v39.f32 = vext_s8(v38, vmls_f32(vmul_f32(*v15.i8, v34), *v31.f32, v17), 4uLL);
    v40 = vsubq_f32(v13, v11);
    v39.i64[1] = v38.u32[0];
    v41 = vmls_f32(vmul_f32(*&vextq_s8(v40, v40, 4uLL), *v33.i8), *&vextq_s8(v33, v33, 4uLL), *v40.f32);
    *v40.f32 = vext_s8(v41, vmls_f32(vmul_f32(*v40.f32, *&vextq_s8(v33, v33, 8uLL)), *v33.i8, *&vextq_s8(v40, v40, 8uLL)), 4uLL);
    v40.i64[1] = v41.u32[0];
    v42 = vmulq_f32(v12, v22);
    v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
    v43 = vmulq_f32(v12, v37);
    v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
    v44 = vmulq_f32(v12, v39);
    v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
    v45 = vmulq_f32(v12, v40);
    v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
    v46 = vmulq_f32(v14, v22);
    v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
    v47 = vmulq_f32(v11, v37);
    v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
    v48 = vmulq_f32(v13, v39);
    v48.i64[0] = vpaddq_f32(v48, v48).u64[0];
    v49 = vmulq_f32(v11, v40);
    v49.i64[0] = vpaddq_f32(v49, v49).u64[0];
    *v39.f32 = vext_s8(vpadd_f32(*v42.f32, *v42.f32), vpadd_f32(*v43.f32, *v43.f32), 4uLL);
    *v46.f32 = vext_s8(vpadd_f32(*v46.f32, *v46.f32), vpadd_f32(*v47.f32, *v47.f32), 4uLL);
    *&v46.u32[2] = vext_s8(vpadd_f32(*v44.f32, *v44.f32), vpadd_f32(*v49.f32, *v49.f32), 4uLL);
    *&v39.u32[2] = vext_s8(vpadd_f32(*v48.f32, *v48.f32), vpadd_f32(*v45.f32, *v45.f32), 4uLL);
    v141 = vcgeq_f32(vmulq_f32(v39, v46), vdupq_n_s32(0xB58637BD));
    *v49.f32 = vmovn_s32(vmvnq_s8(v141));
    if (vuzp1_s8(*v49.f32, *v49.f32).u32[0] != -1)
    {
      v143 = 2;
      v142 = 0x100000000;
      physx::Gu::getClosestPtPointTriangle(a1, &v141, &v142, a6);
      v50 = a1[HIDWORD(v142)];
      v51 = a1[v143];
      v52 = a2[v142];
      v53 = a2[HIDWORD(v142)];
      v54 = a2[v143];
      v55 = a3[v142];
      v56 = a3[HIDWORD(v142)];
      v57 = a3[v143];
      v58 = a4[v142];
      v59 = a4[HIDWORD(v142)];
      v60 = a4[v143];
      v61 = a5[v142];
      v62 = a5[HIDWORD(v142)];
      v63 = a5[v143];
      *a1 = a1[v142];
      a1[1] = v50;
      a1[2] = v51;
      *a2 = v52;
      a2[1] = v53;
      a2[2] = v54;
      *a3 = v55;
      a3[1] = v56;
      a3[2] = v57;
      *a4 = v58;
      a4[1] = v59;
      a4[2] = v60;
      *a5 = v61;
      a5[1] = v62;
      a5[2] = v63;
    }

    return;
  }

  *a6 = 3;
  v64 = *a1;
  v65 = a1[1];
  v66 = a1[2];
  v67 = vsubq_f32(v65, *a1);
  v68 = vsubq_f32(v66, *a1);
  v70 = vmls_f32(vmul_f32(*v67.f32, *&vextq_s8(v68, v68, 4uLL)), *&vextq_s8(v67, v67, 4uLL), *v68.f32);
  *v69.f32 = vext_s8(v70, vmls_f32(vmul_f32(*&vextq_s8(v67, v67, 8uLL), *v68.f32), *v67.f32, *&vextq_s8(v68, v68, 8uLL)), 4uLL);
  v70.i32[1] = 0;
  v71 = vpadd_f32(vmul_f32(*v69.f32, *v69.f32), vmul_f32(v70.u32[0], v70.u32[0]));
  v72 = vpadd_f32(v71, v71);
  if (v72.f32[0] <= 0.00000011921)
  {
    *a6 = 2;
    v109 = vsubq_f32(a1[1], *a1);
    v110 = vmulq_f32(v109, v109);
    v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
    v111 = vpadd_f32(*v110.f32, *v110.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v111), 0), *a1->f32).u32[0] == -1)
    {
      *a6 = 1;
    }

    else
    {
      v112 = vrecpe_f32(v111);
      v113 = 4;
      do
      {
        v112 = vmul_f32(v112, vrecps_f32(v111, v112));
        --v113;
      }

      while (v113);
      __asm { FMOV            V3.2S, #1.0 }
    }
  }

  else
  {
    *&v69.u32[2] = v70;
    v73 = vextq_s8(v65, v65, 8uLL).u64[0];
    v74 = vextq_s8(v66, v66, 8uLL).u64[0];
    v75 = vextq_s8(v66, v66, 4uLL).u64[0];
    v76 = vextq_s8(v65, v65, 4uLL).u64[0];
    v77 = vmls_f32(vmul_f32(*v65.f32, v75), v76, *v66.f32);
    *v78.f32 = vext_s8(v77, vmls_f32(vmul_f32(v73, *v66.f32), *v65.f32, v74), 4uLL);
    v78.i64[1] = v77.u32[0];
    v79 = vextq_s8(v64, v64, 8uLL).u64[0];
    v80 = vextq_s8(v64, v64, 4uLL).u64[0];
    v81 = vmls_f32(vmul_f32(v80, *v66.f32), v75, *v64.f32);
    *v82.f32 = vext_s8(v81, vmls_f32(vmul_f32(*v64.f32, v74), *v66.f32, v79), 4uLL);
    v82.i64[1] = v81.u32[0];
    v83 = vmls_f32(vmul_f32(*v64.f32, v76), v80, *v65.f32);
    *v84.f32 = vext_s8(v83, vmls_f32(vmul_f32(v79, *v65.f32), *v64.f32, v73), 4uLL);
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
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v88), vcgez_f32(v86)), vcgez_f32(v90)), 0), *v64.f32).u32[0] != -1)
    {
      v91 = vnegq_f32(v64);
      v91.i32[3] = 0;
      v92 = vnegq_f32(v65);
      v92.i32[3] = 0;
      v93 = vmulq_f32(v91, v67);
      v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
      v94 = vpadd_f32(*v93.f32, *v93.f32);
      v95 = vmulq_f32(v67, v92);
      v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
      v96 = vpadd_f32(*v95.f32, *v95.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v90), vand_s8(vclez_f32(v96), vcgez_f32(v94))), 0), *v64.f32).u32[0] == -1)
      {
        v121 = vsub_f32(v94, v96);
        v122 = vrecpe_f32(v121);
        v123 = 4;
        do
        {
          v122 = vmul_f32(v122, vrecps_f32(v121, v122));
          --v123;
        }

        while (v123);
        v108 = 0;
        v124 = 2;
        v107 = 1;
      }

      else
      {
        v97 = vnegq_f32(v66);
        v97.i32[3] = 0;
        v98 = vmulq_f32(v92, v68);
        v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
        v99 = vpadd_f32(*v98.f32, *v98.f32);
        v100 = vmulq_f32(v67, v97);
        v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
        v101 = vpadd_f32(*v100.f32, *v100.f32);
        v102 = vmulq_f32(v68, v97);
        v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
        v103 = vpadd_f32(*v102.f32, *v102.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v99, v96), vcge_f32(v101, v103)), vclez_f32(v86)), 0), *v64.f32).u32[0] == -1)
        {
          v125 = vadd_f32(vsub_f32(v99, v96), vsub_f32(v101, v103));
          v126 = vrecpe_f32(v125);
          v127 = 4;
          do
          {
            v126 = vmul_f32(v126, vrecps_f32(v125, v126));
            --v127;
          }

          while (v127);
          v107 = 2;
          v108 = 1;
        }

        else
        {
          v104 = vmulq_f32(v91, v68);
          v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
          v105 = vpadd_f32(*v104.f32, *v104.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v88), vand_s8(vclez_f32(v103), vcgez_f32(v105))), 0), *v64.f32).u32[0] != -1)
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v105), vclez_f32(v94)), 0), *v64.f32).u32[0] == -1)
            {
              v108 = 0;
              v107 = 1;
            }

            else
            {
              v106 = vdup_lane_s16(vand_s8(vcge_f32(v96, v99), vcgez_f32(v96)), 0);
              v107 = 1;
              if (vuzp1_s8(v106, v106).u32[0] == -1)
              {
                v108 = 1;
              }

              else
              {
                v108 = 2;
              }
            }

            v124 = 1;
            goto LABEL_38;
          }

          v128 = vsub_f32(v105, v103);
          v129 = vrecpe_f32(v128);
          v130 = 4;
          do
          {
            v129 = vmul_f32(v129, vrecps_f32(v128, v129));
            --v130;
          }

          while (v130);
          v108 = 0;
          v107 = 2;
        }

        v124 = 2;
      }

LABEL_38:
      v131 = a1[v108];
      v132 = a1[v107];
      v133 = a2[v108];
      v134 = a2[v107];
      v135 = a3[v108];
      v136 = a3[v107];
      v137 = a4[v108];
      v138 = a4[v107];
      v139 = a5[v108];
      v140 = a5[v107];
      *a1 = v131;
      a1[1] = v132;
      *a2 = v133;
      a2[1] = v134;
      *a3 = v135;
      a3[1] = v136;
      *a4 = v137;
      a4[1] = v138;
      *a5 = v139;
      a5[1] = v140;
      *a6 = v124;
      return;
    }

    v119 = vrecpe_f32(v72);
    v120 = 4;
    do
    {
      v119 = vmul_f32(v119, vrecps_f32(v72, v119));
      --v120;
    }

    while (v120);
  }
}

__n128 physx::Gu::HeightField::HeightField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 196609;
  *(a1 + 24) = 1;
  *a1 = &unk_1F5D21FF8;
  *(a1 + 16) = &unk_1F5D220C8;
  *(a1 + 92) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 32) = *a3;
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 48) = *(a3 + 16);
  result = *(a3 + 24);
  v4 = *(a3 + 40);
  *(a1 + 88) = *(a3 + 56);
  *(a1 + 72) = v4;
  *(a1 + 56) = result;
  *(a1 + 92) = *(a3 + 60);
  *(a1 + 96) = *(a3 + 64);
  *(a3 + 48) = 0;
  return result;
}

uint64_t physx::Gu::HeightField::releaseMemory(uint64_t this)
{
  if (*(this + 10))
  {
    v1 = this;
    if (*(this + 80))
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(v1 + 80) = 0;
  }

  return this;
}

void physx::Gu::HeightField::~HeightField(physx::Gu::HeightField *this)
{
  *this = &unk_1F5D21FF8;
  *(this + 2) = &unk_1F5D220C8;
  physx::Gu::HeightField::releaseMemory(this);
}

{
  *this = &unk_1F5D21FF8;
  *(this + 2) = &unk_1F5D220C8;
  physx::Gu::HeightField::releaseMemory(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void non-virtual thunk tophysx::Gu::HeightField::~HeightField(physx::Gu::HeightField *this)
{
  *(this - 2) = &unk_1F5D21FF8;
  *this = &unk_1F5D220C8;
  physx::Gu::HeightField::releaseMemory(this - 16);
}

{
  physx::Gu::HeightField::~HeightField((this - 16));
}

uint64_t physx::Gu::HeightField::onRefCountZero(physx::Gu::HeightField *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (physx::GuMeshFactory::removeHeightField(*(this + 16), this))
  {
    v13 = *(this + 16);
    v14 = *this;
    if (*(this + 5))
    {
      result = (*(v14 + 32))(this);
    }

    else
    {
      result = (*(v14 + 24))(this);
    }

    v17 = *(v13 + 248);
    if (v17)
    {
      v18 = 0;
      v19 = 8 * v17;
      do
      {
        result = (*(**(*(v13 + 240) + v18) + 16))(*(*(v13 + 240) + v18), this, 1);
        v18 += 8;
      }

      while (v19 != v18);
    }
  }

  else
  {
    v16 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v16, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/hf/GuHeightField.cpp", 101, "Gu::HeightField::onRefCountZero: double deletion detected!", v10, v11, v12, a9);
  }

  return result;
}

uint64_t physx::Gu::HeightField::exportExtraData(uint64_t a1, uint64_t a2)
{
  v4 = (4 * *(a1 + 56) * *(a1 + 60));
  (*(*a2 + 24))(a2, 16);
  v5 = *(a1 + 80);
  v6 = *(*a2 + 16);

  return v6(a2, v5, v4);
}

uint64_t physx::Gu::HeightField::release(uint64_t this)
{
  if (atomic_fetch_add((this + 24), 0xFFFFFFFF) == 1)
  {
    return (*(*(this + 16) + 16))();
  }

  return this;
}

uint64_t physx::Gu::HeightField::modifySamples(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v9 = (*(*a1 + 72))(a1);
  v10 = (*(*a1 + 64))(a1);
  v13 = *(a1 + 112);
  v14 = *(a1 + 116);
  v15 = (*a4 + a3) & ~((*a4 + a3) >> 31);
  v39 = v10;
  v40 = v9;
  if (v15 >= v10)
  {
    v15 = v10;
  }

  v16 = a3 & ~(a3 >> 31);
  v44 = v15;
  if (v16 < v15)
  {
    v17 = (*(a4 + 4) + a2) & ~((*(a4 + 4) + a2) >> 31);
    if (v17 >= v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = v17;
    }

    v19 = a2 & ~(a2 >> 31);
    v20 = v16 - a3;
    v21 = -a2;
    v22 = v9 * v16;
    v42 = v9;
    v43 = v19;
    do
    {
      if (v19 < v18)
      {
        v23 = *(a1 + 80);
        v24 = v19;
        do
        {
          v45 = 4 * (v22 + v24);
          v25 = v23 + v45;
          v26 = *(*(a4 + 24) + 4 * (v21 + v24 + v20 * *(a4 + 4)));
          *(v23 + v45) = v26;
          v27 = v16;
          v28 = v18;
          v29 = a4;
          v30 = v22;
          isCollisionVertexPreca = physx::Gu::HeightField::isCollisionVertexPreca(a1, v22 + v24, v16, v24, v11, v12);
          v22 = v30;
          a4 = v29;
          v16 = v27;
          v18 = v28;
          if (isCollisionVertexPreca)
          {
            v32 = 0x80;
          }

          else
          {
            v32 = 0;
          }

          *(v25 + 3) = v32 & 0x80 | HIBYTE(v26) & 0x7F;
          v23 = *(a1 + 80);
          v33 = *(v23 + v45);
          if (v13 > v33)
          {
            v13 = v33;
          }

          if (v14 < v33)
          {
            v14 = v33;
          }

          ++v24;
        }

        while (v28 != v24);
      }

      v16 = (v16 + 1);
      ++v20;
      v19 = v43;
      v22 += v42;
    }

    while (v16 != v44);
  }

  if (a5)
  {
    v34 = v39 * v40;
    if (v34)
    {
      v35 = *(a1 + 80);
      v14 = -3.4028e38;
      v13 = 3.4028e38;
      do
      {
        v36 = *v35;
        v35 += 2;
        v37 = v36;
        if (v13 > v36)
        {
          v13 = v37;
        }

        if (v14 < v37)
        {
          v14 = v37;
        }

        --v34;
      }

      while (v34);
    }

    else
    {
      v13 = 3.4028e38;
      v14 = -3.4028e38;
    }
  }

  *(a1 + 112) = v13;
  *(a1 + 116) = v14;
  *(a1 + 36) = (v14 + v13) * 0.5;
  *(a1 + 48) = (v14 - v13) * 0.5;
  ++*(a1 + 120);
  return 1;
}

BOOL physx::Gu::HeightField::isCollisionVertexPreca(physx::Gu::HeightField *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned __int16 a5, BOOL *a6)
{
  if ((*(this + 46) & 1) == 0)
  {
LABEL_2:
    v16 = 0;
    if (physx::Gu::HeightField::isSolidVertex(this, a2, a3, a4, &v16, a6))
    {
      return 1;
    }

    if (v16 == 1)
    {
      v11 = *(this + 10);
      v12 = 2 * *(v11 + 4 * a2);
      if (a3 && *(this + 14) - 1 > a3)
      {
        v13 = v12 - (*(v11 + 4 * (*(this + 15) + a2)) + *(v11 + 4 * (a2 - *(this + 15))));
        v14 = 1;
        if (!a4)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v14 = 0;
        v13 = 0;
        if (!a4)
        {
          goto LABEL_17;
        }
      }

      if (*(this + 15) - 1 > a4)
      {
        v15 = v12 - (*(v11 + 4 * (a2 + 1)) + *(v11 + 4 * (a2 - 1)));
        goto LABEL_19;
      }

LABEL_17:
      if (!v14)
      {
        return 1;
      }

      v15 = 0;
LABEL_19:
      if ((v15 ^ v13) < 0)
      {
        return *(this + 22) < (v15 + v13);
      }
    }

    return 0;
  }

  result = 0;
  if (a3 && a4)
  {
    if (*(this + 14) - 1 <= a3 || *(this + 15) - 1 <= a4)
    {
      return 0;
    }

    goto LABEL_2;
  }

  return result;
}

uint64_t physx::Gu::HeightField::load(uint64_t a1, void (***a2)(void, unsigned __int32 *, uint64_t))
{
  physx::Gu::HeightField::releaseMemory(a1);
  v23 = 0;
  v4 = physx::readHeader(0x48u, 0x46u, 0x48u, 0x46u, &v24, &v23, a2);
  result = 0;
  if (v4)
  {
    v6 = v23;
    *(a1 + 56) = physx::readDword(v23, a2);
    *(a1 + 60) = physx::readDword(v6, a2);
    *(a1 + 64) = physx::readFloat(v6, a2);
    *(a1 + 68) = physx::readFloat(v6, a2);
    *(a1 + 72) = physx::readFloat(v6, a2);
    physx::readFloat(v6, a2);
    *(a1 + 88) = physx::readFloat(v6, a2);
    v25 = 0;
    (**a2)(a2, &v25, 2);
    if (v6 == 1)
    {
      v7 = v25;
      LOBYTE(v25) = HIBYTE(v25);
      HIBYTE(v25) = v7;
    }

    *(a1 + 92) = v25;
    *(a1 + 96) = physx::readDword(v6, a2);
    Float = physx::readFloat(v6, a2);
    v9 = physx::readFloat(v6, a2);
    v10 = physx::readFloat(v6, a2);
    v11 = physx::readFloat(v6, a2);
    v12 = physx::readFloat(v6, a2);
    v13 = physx::readFloat(v6, a2);
    *(a1 + 32) = (Float + v11) * 0.5;
    *(a1 + 36) = (v9 + v12) * 0.5;
    *(a1 + 40) = (v10 + v13) * 0.5;
    *(a1 + 44) = (v11 - Float) * 0.5;
    *(a1 + 48) = (v12 - v9) * 0.5;
    *(a1 + 52) = (v13 - v10) * 0.5;
    *(a1 + 104) = physx::readDword(v6, a2);
    *(a1 + 108) = physx::readDword(v6, a2);
    *(a1 + 112) = physx::readFloat(v6, a2);
    *(a1 + 116) = physx::readFloat(v6, a2);
    *(a1 + 80) = 0;
    if (!(*(a1 + 60) * *(a1 + 56)))
    {
      return 1;
    }

    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (*(a1 + 60) * *(a1 + 56)), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/hf/GuHeightField.cpp", 259);
    *(a1 + 80) = v14;
    if (v14)
    {
      (**a2)(a2, v14, (4 * *(a1 + 108)));
      if (v6 && *(a1 + 108))
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(a1 + 80) + v18);
          v21 = *v20;
          *v20 = v20[1];
          v20[1] = v21;
          ++v19;
          v18 += 4;
        }

        while (v19 < *(a1 + 108));
      }

      return 1;
    }

    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/hf/GuHeightField.cpp", 262, "Gu::HeightField::load: PX_ALLOC failed!", v15, v16, v17, v22);
    return 0;
  }

  return result;
}

uint64_t physx::Gu::HeightField::loadFromDesc(uint64_t a1, int32x2_t *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  physx::Gu::HeightField::releaseMemory(a1);
  v4 = a1;
  v67 = a1;
  *(a1 + 96) = a2[1].i32[0];
  *(a1 + 88) = a2[4].i32[0];
  *(a1 + 92) = a2[4].i16[2];
  *(a1 + 104) = a2[2].i32[0];
  v5 = *a2;
  v6 = vcvt_f32_u32(vadd_s32(*a2, 0x100000001));
  *(a1 + 56) = *a2;
  *(a1 + 64) = v6;
  v7 = v5.i32[1];
  *(a1 + 72) = v5.u32[1];
  *(a1 + 80) = 0;
  v8 = v5.i32[0];
  v9 = v5.i32[1] * v5.i32[0];
  *(v4 + 112) = 0xFF7FFFFF7F7FFFFFLL;
  if (v5.i32[1] * v5.i32[0])
  {
    v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * (v5.i32[1] * v5.i32[0]), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/hf/GuHeightField.cpp", 308);
    *(v67 + 10) = v10;
    if (!v10)
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/hf/GuHeightField.cpp", 311, "Gu::HeightField::load: PX_ALLOC failed!", v11, v12, v13, v60);
      return 0;
    }

    v14 = a2[3];
    v15 = 0x7FFF;
    v16 = 0x8000;
    do
    {
      *v10++ = *v14;
      v17 = *v14;
      if (v17 < v15)
      {
        v15 = *v14;
      }

      if (v17 > v16)
      {
        v16 = *v14;
      }

      v14 = (v14 + a2[2].i32[0]);
      --v9;
    }

    while (v9);
    *(v67 + 28) = v15;
    *(v67 + 29) = v16;
    v8 = *(v67 + 14);
    v7 = *(v67 + 15);
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extendUninitialized(&v68, v7 + 1);
  bzero(v68, (4 * v69));
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extendUninitialized(&v70, v7 + 1);
  bzero(v70, (4 * v71));
  if (v7)
  {
    v20 = 0;
    v21 = v68;
    v22 = (*(v67 + 10) + 3);
    do
    {
      v23 = *v22 & 0x7F;
      if ((~*(v22 - 1) & 0x7F) == 0 || v23 == 127)
      {
        v21[v20 >> 5] |= 1 << v20;
        v21[(v20 + 1) >> 5] |= 1 << (v20 + 1);
      }

      if (physx::Gu::HeightField::isCollisionVertexPreca(v67, v20, 0, v20, v18, v19))
      {
        v24 = 0x80;
      }

      else
      {
        v24 = 0;
      }

      *v22 = v24 | v23;
      v22 += 4;
      ++v20;
    }

    while (v7 != v20);
  }

  v61 = v8;
  v62 = v7;
  v66 = v8 - 1;
  if (v8 > 1)
  {
    v25 = 0;
    v26 = (v7 - 1);
    v27 = v62;
    v64 = 1;
    v28 = 1;
    while (1)
    {
      v63 = v25;
      v29 = &v68 + 2 * v25;
      v30 = v67;
      if (v62)
      {
        break;
      }

LABEL_45:
      bzero(*v29, (4 * *(v29 + 2)));
      v64 ^= 1uLL;
      v25 = v63 ^ 1;
      ++v28;
      v27 += v62;
      if (v28 == v61)
      {
        goto LABEL_46;
      }
    }

    v31 = 0;
    v32 = *(v67 + 10);
    v65 = &v68 + 2 * v64;
    while (1)
    {
      v33 = v27 + v31;
      v34 = (v32 + 4 * (v27 + v31));
      v35 = *(v34 + 3);
      v36 = v35 & 0x7F;
      v37 = v31 >> 5;
      if ((~*(v34 + 2) & 0x7F) == 0 || v36 == 127)
      {
        v38 = *v29;
        *(*v29 + v37) |= 1 << v31;
        v39 = 1 << (v31 + 1);
        v40 = (v31 + 1) >> 5;
        v38[v40] |= v39;
        v41 = *v65;
        *(*v65 + v37) |= 1 << v31;
        v41[v40] |= v39;
      }

      v42 = v33;
      if (!v31 || v26 == v31 || v28 == v66 || ((*(*v29 + v37) >> v31) & 1) != 0)
      {
        isCollisionVertexPreca = physx::Gu::HeightField::isCollisionVertexPreca(v30, v33, v28, v31, v18, v19);
        v44 = v32 + 4 * v42;
        if (isCollisionVertexPreca)
        {
          *(v44 + 3) = v35 | 0x80;
        }

        else
        {
          *(v44 + 3) = v36;
        }

        v30 = v67;
        goto LABEL_34;
      }

      v45 = 2 * *v34;
      v46 = *(v30 + 15);
      if (*(v30 + 14) - 1 > v28)
      {
        break;
      }

      if (v31 < (v46 - 1))
      {
        v47 = 0;
LABEL_41:
        v48 = v45 - (*(v32 + 4 * (v27 + v31 + 1)) + *(v32 + 4 * (v27 + v31 - 1)));
LABEL_42:
        if (((v48 ^ v47) & 0x80000000) == 0 || *(v30 + 22) >= (v48 + v47))
        {
          goto LABEL_34;
        }
      }

      *(v32 + 4 * v33 + 3) = v35 | 0x80;
LABEL_34:
      if (v62 == ++v31)
      {
        goto LABEL_45;
      }
    }

    v47 = v45 - (*(v32 + 4 * (v27 + v31 + v46)) + *(v32 + 4 * (v27 + v31 - v46)));
    if (v31 < (v46 - 1))
    {
      goto LABEL_41;
    }

    v48 = 0;
    goto LABEL_42;
  }

LABEL_46:
  v49 = 0;
  v50 = v67;
  do
  {
    v51 = &v68 + v49;
    if (*(&v70 + v49))
    {
      if ((*(v51 + 6) & 0x80000000) == 0)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v50 = v67;
      }
    }

    *(v51 + 2) = 0;
    v49 -= 16;
  }

  while (v49 != -32);
  v52 = v50[7].i32[0];
  v53 = v50[7].i32[1];
  v50[13].i32[1] = v53 * v52;
  v54.f32[0] = (v52 - 1);
  v55 = v50[14].f32[0];
  v56 = v50[14].f32[1];
  v57 = vcvts_n_f32_u32(v53 - 1, 1uLL);
  v54.f32[1] = v55 + v56;
  v58 = vmul_f32(v54, 0x3F0000003F000000);
  v50[4] = v58;
  v50[5].f32[0] = v57;
  v50[5].i32[1] = v58.i32[0];
  v50[6].f32[0] = (v56 - v55) * 0.5;
  v50[6].f32[1] = v57;
  return 1;
}

size_t physx::Gu::HeightField::saveCells(physx::Gu::HeightField *this, void *__dst, unsigned int a3)
{
  v3 = 4 * *(this + 15) * *(this + 14);
  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = v3;
  }

  memcpy(__dst, *(this + 10), v4);
  return v4;
}

uint64_t physx::getVertexEdgeIndices(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  v6 = *(a1 + 56);
  v5 = *(a1 + 60);
  v7 = 3 * a2;
  if (a3)
  {
    v8 = a2 - v5;
    v9 = 3 * (a2 - v5);
    *a5 = v9 + 2;
    a5[1] = a2 - v5;
    a5[2] = a3 - 1;
    a5[3] = a4;
    if (v5 - 1 <= a4)
    {
      v11 = 1;
      goto LABEL_12;
    }

    if (*(*(a1 + 80) + 4 * v8 + 2) < 0)
    {
      v10 = 1;
    }

    else
    {
      a5[4] = v9 + 1;
      a5[5] = v8;
      a5[6] = a3 - 1;
      a5[7] = a4;
      v10 = 2;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (v5 - 1 <= a4)
    {
      goto LABEL_12;
    }
  }

  v12 = &a5[4 * v10];
  *v12 = v7;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v11 = v10 + 1;
  if (v6 - 1 > a3 && *(*(a1 + 80) + 4 * a2 + 2) < 0)
  {
    v13 = &a5[4 * v11];
    *v13 = v7 + 1;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
    v11 = v10 + 2;
  }

LABEL_12:
  if (v6 - 1 <= a3)
  {
    if (!a4)
    {
      return v11;
    }

    v16 = a2 - 1;
  }

  else
  {
    v14 = &a5[4 * v11];
    *v14 = v7 + 2;
    v14[1] = a2;
    v14[2] = a3;
    v14[3] = a4;
    v15 = (v11 + 1);
    if (!a4)
    {
      return v15;
    }

    v16 = a2 - 1;
    if (*(*(a1 + 80) + 4 * (a2 - 1) + 2) < 0)
    {
      LODWORD(v11) = v11 + 1;
    }

    else
    {
      v17 = &a5[4 * v15];
      *v17 = 3 * v16 + 1;
      v17[1] = v16;
      v17[2] = a3;
      v17[3] = a4 - 1;
      LODWORD(v11) = v11 + 2;
    }
  }

  v18 = &a5[4 * v11];
  *v18 = 3 * v16;
  v18[1] = v16;
  v18[2] = a3;
  v18[3] = a4 - 1;
  v15 = (v11 + 1);
  if (a3)
  {
    v19 = ~v5 + a2;
    if (*(*(a1 + 80) + 4 * v19 + 2) < 0)
    {
      v20 = &a5[4 * v15];
      *v20 = 3 * v19 + 1;
      v20[1] = v19;
      v20[2] = a3 - 1;
      v20[3] = a4 - 1;
      return (v11 + 2);
    }
  }

  return v15;
}

BOOL physx::Gu::HeightField::isSolidVertex(physx::Gu::HeightField *this, unsigned int a2, unsigned int a3, unsigned int a4, char *a5, BOOL *a6)
{
  v51[15] = *MEMORY[0x1E69E9840];
  VertexEdgeIndices = physx::getVertexEdgeIndices(this, a2, a3, a4, &v50);
  if (!VertexEdgeIndices)
  {
    v46 = 0;
    v30 = 0;
    goto LABEL_44;
  }

  v9 = VertexEdgeIndices;
  v10 = *(this + 15);
  v11 = *(this + 14) - 1;
  v12 = v10 - 1;
  v13 = v51;
  v14 = &v47;
  v15 = v49;
  v16 = VertexEdgeIndices;
  do
  {
    v17 = *(v13 - 1);
    v18 = *v13;
    v19 = v13[1];
    v20 = -3 * v17 + *(v13 - 2);
    if (v20 == 2)
    {
      if (v18 >= v11)
      {
        goto LABEL_17;
      }

      if (v19)
      {
        *v14 = 2 * v17 - 1;
        v21 = 1;
      }

      else
      {
        v21 = 0;
      }

      if (v19 < v12)
      {
        v23 = 2 * v17;
LABEL_27:
        *&v14[4 * v21] = v23;
        LODWORD(v21) = v21 + 1;
      }
    }

    else
    {
      if (v20 == 1)
      {
        if (v18 < v11 && v19 < v12)
        {
          *v14 = 2 * v17;
          *(v14 + 1) = (2 * v17) | 1;
          LODWORD(v21) = 2;
          goto LABEL_18;
        }

LABEL_17:
        LODWORD(v21) = 0;
        goto LABEL_18;
      }

      if (v20 || v19 >= v12)
      {
        goto LABEL_17;
      }

      if (v18)
      {
        *v14 = (*(*(this + 10) + 4 * (v17 - v10) + 2) >> 7) ^ 1 | (2 * (v17 - v10));
        v21 = 1;
      }

      else
      {
        v21 = 0;
      }

      if (v18 < v11)
      {
        v24 = *(*(this + 10) + 4 * v17 + 2);
        v23 = 2 * v17;
        if (v24 < 0)
        {
          v23 |= 1u;
        }

        goto LABEL_27;
      }
    }

LABEL_18:
    v13 += 4;
    *v15++ = v21;
    v14 += 8;
    --v16;
  }

  while (v16);
  *a5 = 0;
  v25 = &v48;
  v26 = *(this + 10);
  v27 = v49;
  v28 = 1;
  v29 = v9;
  v30 = 1;
  while (1)
  {
    v32 = *v27++;
    v31 = v32;
    v33 = *(v25 - 1);
    v34 = v26 + ((2 * v33) & 0x1FFFFFFFCLL);
    v35 = (v34 + 2);
    v36 = (v34 + 3);
    if (v33)
    {
      v37 = v36;
    }

    else
    {
      v37 = v35;
    }

    v38 = *v37 & 0x7F;
    if (v31 < 2)
    {
      if (v38 != 127)
      {
        return v30;
      }

      goto LABEL_41;
    }

    v39 = *v25;
    v40 = v26 + ((2 * v39) & 0x1FFFFFFFCLL);
    v41 = (v40 + 2);
    v42 = (v40 + 3);
    if (v39)
    {
      v43 = v42;
    }

    else
    {
      v43 = v41;
    }

    v44 = *v43 & 0x7F;
    if (v38 != 127)
    {
      *a5 = 1;
      if (v44 == 127)
      {
        return v30;
      }

      goto LABEL_41;
    }

    if (v44 != 127)
    {
      break;
    }

LABEL_41:
    v30 = v28++ < v9;
    v25 += 2;
    if (!--v29)
    {
      return v30;
    }
  }

  v46 = 1;
LABEL_44:
  *a5 = v46;
  return v30;
}

float physx::Gu::HeightFieldUtil::computeLocalBounds(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v6[3].f32[0];
  *&a5 = v7 * 0.0;
  *&v8 = (v7 * 0.0) * 0.0;
  v9 = *(v5 + 32) - *(v5 + 44);
  v10 = *(v5 + 36) - *(v5 + 48);
  v11 = *(v5 + 40) - *(v5 + 52);
  v12 = v6[2];
  v13 = vmul_f32(v12, 0);
  v14 = vaddv_f32(v13) + *&v8;
  v15 = vmul_f32(v13, 0);
  v16 = vrev64_s32(v15);
  v17 = vadd_f32(vadd_f32(v12, v16), vdup_lane_s32(v8, 0));
  v18 = vadd_f32(vdup_lane_s32(*&a5, 0), vadd_f32(v16, v13));
  v12.f32[0] = v7 + vaddv_f32(v15);
  v19 = vmuls_lane_f32(v9, v17, 1);
  v15.f32[0] = v14 * v9;
  v16.f32[0] = v10 * v17.f32[0];
  v20 = vmuls_lane_f32(v9, v18, 1) + (v10 * v18.f32[0]);
  v21 = (v19 + (v14 * v10)) + vmuls_lane_f32(v11, v18, 1);
  result = (v15.f32[0] + v16.f32[0]) + (v11 * v18.f32[0]);
  *a2 = v21;
  *(a2 + 4) = result;
  *(a2 + 8) = v20 + (v12.f32[0] * v11);
  v23 = vadd_f32(*(v5 + 32), *(v5 + 44));
  v24 = *(v5 + 40) + *(v5 + 52);
  v25 = vadd_f32(vadd_f32(vmul_n_f32(v23, v14), vmul_f32(v17, vrev64_s32(v23))), vmul_n_f32(v18, v24));
  *(a2 + 12) = vrev64_s32(v25);
  *(a2 + 20) = (vmuls_lane_f32(v23.f32[0], v18, 1) + vmul_lane_f32(v18, v23, 1).f32[0]) + (v12.f32[0] * v24);
  v26 = (result - *v25.i32) + 0.0005;
  if (v26 > 0.0)
  {
    *(a2 + 16) = *v25.i32 + (v26 * 0.6);
    result = result - (v26 * 0.6);
    *(a2 + 4) = result;
  }

  return result;
}

uint64_t physx::Gu::HeightFieldUtil::getFaceIndexAtShapePoint(physx::Gu::HeightFieldUtil *this, float a2, float a3)
{
  v4 = *this * a2;
  result = 0xFFFFFFFFLL;
  if (v4 >= 0.0)
  {
    v6 = *(this + 2) * a3;
    if (v6 >= 0.0)
    {
      v7 = *(this + 2);
      v8 = *(v7 + 64);
      if (v4 < (v8 + 1.0))
      {
        v9 = *(v7 + 68);
        if (v6 < (v9 + 1.0))
        {
          v10 = fmaxf(v4, 0.0);
          v11 = fmaxf(v6, 0.0);
          v12 = 1.0 - ((v11 + 1.0) * 0.000001);
          v13 = (1.0 - ((v10 + 1.0) * 0.000001)) + v8;
          if (v10 >= v13)
          {
            v10 = v13;
          }

          v14 = v12 + v9;
          if (v11 < (v12 + v9))
          {
            v14 = v11;
          }

          v15 = floorf(v10);
          v16 = v10 - v15;
          v17 = floorf(v14);
          v18 = v14 - v17;
          v19 = (v17 + (v15 * *(v7 + 72)));
          v20 = *(v7 + 80);
          if (*(v20 + 4 * v19 + 2) >= 0)
          {
            v21 = (v16 + v18) > 1.0;
          }

          else
          {
            v21 = v18 > v16;
          }

          v22 = v21 | (2 * v19);
          v23 = v20 + 4 * (v19 & 0x7FFFFFFF);
          v24 = (v23 + 2);
          v25 = (v23 + 3);
          if (!v21)
          {
            v25 = v24;
          }

          if ((~*v25 & 0x7F) != 0)
          {
            return v22;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t physx::Gu::HeightFieldUtil::findClosestPointsOnCell(uint64_t a1, unsigned int a2, unsigned int a3, float *a4, uint64_t a5)
{
  v8 = *(a1 + 16);
  v9 = *(v8 + 60);
  v10 = a3 + v9 * a2;
  v11 = *(v8 + 56) - 2;
  v50 = v11;
  v51 = v9;
  v12 = v9 - 2 == a3;
  HIDWORD(v53) = v12;
  if (v11 != a2)
  {
    v12 = 0;
  }

  v52 = v11 == a2;
  LODWORD(v53) = v12;
  v49 = *(v8 + 80);
  v13 = v49 + 4 * (v10 & 0x7FFFFFFF);
  v14 = *(v13 + 3) & 0x7F;
  if ((~*(v13 + 2) & 0x7F) != 0)
  {
    v15 = a4;
    physx::Gu::HeightFieldUtil::findProjectionOnTriangle(a1, 2 * v10, a2, a3, a4, v55);
    if (v18)
    {
      v52 = 0;
      *a5 = *v55;
      *(a5 + 8) = *&v55[8];
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = v18 ^ 1;
  }

  else
  {
    v15 = a4;
    v16 = 0;
    v17 = 1;
  }

  if (v14 == 127)
  {
    v19 = v17;
    v20 = v15;
    if (v16)
    {
      return v16;
    }
  }

  else
  {
    v20 = v15;
    physx::Gu::HeightFieldUtil::findProjectionOnTriangle(a1, (2 * v10) | 1, a2, a3, v15, v55);
    if (v21)
    {
      v53 = 0;
      v19 = 0;
      v22 = a5 + 12 * v16;
      *v22 = *v55;
      *(v22 + 8) = *&v55[8];
      v16 = (v16 + 1);
      if (v16)
      {
        return v16;
      }
    }

    else
    {
      v19 = v17;
      if (v16)
      {
        return v16;
      }
    }
  }

  v23 = 3 * v10;
  physx::Gu::HeightFieldUtil::findClosestPointOnEdge(a1, 3 * v10, v10, a2, a3, v20, v55);
  v48 = v19;
  if (v24 <= 0.0)
  {
    if (v17)
    {
      if (physx::Gu::HeightFieldUtil::getVertexFaceIndex(v8, v10, a2, a3) == -1)
      {
        v16 = 0;
      }

      else
      {
        *a5 = *v55;
        *(a5 + 8) = *&v55[8];
        v16 = 1;
      }

      v26 = v23 + 2;
      physx::Gu::HeightFieldUtil::findClosestPointOnEdge(a1, v23 + 2, v10, a2, a3, v20, v55);
      if (v31 <= 0.0)
      {
        goto LABEL_43;
      }

      if (v31 < 1.0)
      {
LABEL_37:
        EdgeFaceIndex = physx::Gu::HeightFieldUtil::getEdgeFaceIndex(v8, v26);
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    goto LABEL_26;
  }

  if (v24 >= 1.0)
  {
    if (!HIDWORD(v53))
    {
      goto LABEL_26;
    }

    VertexFaceIndex = physx::Gu::HeightFieldUtil::getVertexFaceIndex(v8, v10 + 1, a2, a3 + 1);
  }

  else
  {
    VertexFaceIndex = physx::Gu::HeightFieldUtil::getEdgeFaceIndex(v8, 3 * v10);
  }

  if (VertexFaceIndex != -1)
  {
    *a5 = *v55;
    *(a5 + 8) = *&v55[8];
    v16 = 1;
    goto LABEL_27;
  }

LABEL_26:
  v16 = 0;
LABEL_27:
  if ((v17 | v52))
  {
    v26 = v23 + 2;
    physx::Gu::HeightFieldUtil::findClosestPointOnEdge(a1, v23 + 2, v10, a2, a3, v20, v55);
    if (v27 <= 0.0)
    {
      if (v17)
      {
        v28 = v8;
        v29 = v10;
        v30 = a2;
LABEL_40:
        EdgeFaceIndex = physx::Gu::HeightFieldUtil::getVertexFaceIndex(v28, v29, v30, a3);
LABEL_41:
        if (EdgeFaceIndex != -1)
        {
          v33 = a5 + 12 * v16;
          *v33 = *v55;
          *(v33 + 4) = *&v55[4];
          v16 = (v16 + 1);
        }
      }

LABEL_43:
      v19 = v48;
      goto LABEL_44;
    }

    if (v27 < 1.0)
    {
      if (!v17)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

LABEL_38:
    if (v52)
    {
      v29 = v10 + v51;
      v30 = a2 + 1;
      v28 = v8;
      goto LABEL_40;
    }

    goto LABEL_43;
  }

LABEL_44:
  if (v50 == a2)
  {
    physx::Gu::HeightFieldUtil::findClosestPointOnEdge(a1, 3 * (v10 + v51), v10 + v51, a2 + 1, a3, v20, v55);
    v35 = v34 > 0.0 && v34 < 1.0;
    if (v35 && physx::Gu::HeightFieldUtil::getEdgeFaceIndex(v8, 3 * (v10 + v51)) != -1)
    {
      v36 = a5 + 12 * v16;
      *v36 = *v55;
      *(v36 + 8) = *&v55[8];
      v16 = (v16 + 1);
    }

    v19 = v48;
  }

  if (HIDWORD(v53))
  {
    physx::Gu::HeightFieldUtil::findClosestPointOnEdge(a1, v23 + 5, v10 + 1, a2, a3 + 1, v20, v55);
    v38 = v37 > 0.0 && v37 < 1.0;
    if (v38 && physx::Gu::HeightFieldUtil::getEdgeFaceIndex(v8, v23 + 5) != -1)
    {
      v39 = a5 + 12 * v16;
      *v39 = *v55;
      *(v39 + 8) = *&v55[8];
      v16 = (v16 + 1);
    }
  }

  if (v53)
  {
    if (physx::Gu::HeightFieldUtil::getVertexFaceIndex(v8, v10 + v51 + 1, a2 + 1, a3 + 1) != -1)
    {
      v40 = *(a1 + 24);
      v41.f32[0] = *(v49 + 4 * (v10 + v51 + 1));
      v42 = v40[3].f32[0] * (a3 + 1);
      v43 = a5 + 12 * v16;
      v41.f32[1] = (a2 + 1);
      *v43 = vrev64_s32(vmul_f32(v40[2], v41));
      *(v43 + 8) = v42;
      v16 = (v16 + 1);
    }

    v19 = v48;
  }

  if (v19 && physx::Gu::HeightFieldUtil::getEdgeFaceIndex(v8, v23 + 1) != -1)
  {
    physx::Gu::HeightFieldUtil::findClosestPointOnEdge(a1, v23 + 1, v10, a2, a3, v20, v55);
    if (v44 > 0.0 && v44 < 1.0)
    {
      v46 = a5 + 12 * v16;
      *v46 = *v55;
      *(v46 + 8) = *&v55[8];
      return (v16 + 1);
    }
  }

  return v16;
}

float physx::Gu::HeightFieldUtil::findProjectionOnTriangle(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, float *a5, float *a6)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = v6[4];
  v9 = *(v7 + 80);
  v10 = (v9 + 4 * (a2 >> 1));
  v11 = v8 * *v10;
  v12 = v8 * *(v9 + 4 * ((a2 >> 1) + 1));
  v13 = v8 * *(v9 + 4 * (*(v7 + 60) + (a2 >> 1)));
  v14 = v8 * *(v9 + 4 * (*(v7 + 60) + (a2 >> 1) + 1));
  if (v10[1] < 0)
  {
    v21 = v6[6];
    v17 = *(a1 + 8);
    if (a2)
    {
      result = v6[5] * a3;
      v16 = v21 * (a4 + 1);
      v17 = -v17;
      v18 = *a1;
      v19 = v12;
      v20 = v14;
      v14 = v11;
    }

    else
    {
      result = v6[5] * (a3 + 1);
      v16 = v21 * a4;
      v18 = -*a1;
      v19 = v13;
      v20 = v11;
    }
  }

  else if (a2)
  {
    result = v6[5] * (a3 + 1);
    v16 = v6[6] * (a4 + 1);
    v17 = -*(a1 + 8);
    v18 = -*a1;
    v19 = v14;
    v20 = v12;
    v14 = v13;
  }

  else
  {
    result = v6[5] * a3;
    v16 = v6[6] * a4;
    v17 = *(a1 + 8);
    v18 = *a1;
    v19 = v11;
    v20 = v13;
    v14 = v12;
  }

  v22 = *a5 - result;
  v23 = a5[1] - v19;
  v24 = a5[2] - v16;
  v25 = -((v14 - v19) * v17);
  v26 = -((v20 - v19) * v18);
  v27 = ((v23 + (v26 * v22)) + (v25 * v24)) * (1.0 / (((v26 * v26) + (v25 * v25)) + 1.0));
  v28 = v22 - (v26 * v27);
  v29 = v24 - (v25 * v27);
  v30 = v18 * v28;
  v31 = v17 * v29;
  v33 = (v30 + v31) < 1.0 && v31 > 0.0;
  if (v30 > 0.0 && v33)
  {
    result = result + v28;
    *a6 = result;
    a6[1] = v19 + (v23 - v27);
    a6[2] = v16 + v29;
  }

  return result;
}

uint64_t physx::Gu::HeightFieldUtil::findClosestPointOnEdge(uint64_t result, int a2, unsigned int a3, unsigned int a4, unsigned int a5, float *a6, float *a7)
{
  v7 = -3 * a3 + a2;
  v8 = 0.0;
  if (v7 == 2)
  {
    v26 = *(result + 16);
    v27 = *(result + 24);
    v28 = *(v26 + 80);
    v29 = v27[4];
    v18 = v27[5];
    v12 = v29 * *(v28 + 4 * a3);
    v30 = v29 * *(v28 + 4 * (*(v26 + 60) + a3));
    v14 = v18 * a4;
    v15 = v27[6] * a5;
    v16 = v30 - v12;
    v17 = (v16 * v16) + (v18 * v18);
  }

  else if (v7 == 1)
  {
    v20 = *(result + 16);
    v19 = *(result + 24);
    v21 = *(v20 + 80);
    v22 = (v21 + 4 * a3);
    v23 = v19[4];
    if (v22[1] < 0)
    {
      v12 = v23 * *v22;
      v18 = v19[5];
      v8 = v19[6];
      v14 = v18 * a4;
      v15 = v8 * a5;
      v16 = (v23 * *(v21 + 4 * (a3 + *(v20 + 60) + 1))) - v12;
      v25 = v8 * v8;
    }

    else
    {
      v12 = v23 * *(v21 + 4 * (a3 + 1));
      v18 = v19[5];
      v24 = v19[6];
      v14 = v18 * a4;
      v15 = v24 * (a5 + 1);
      v16 = (v23 * *(v21 + 4 * (*(v20 + 60) + a3))) - v12;
      v8 = -v24;
      v25 = v24 * v24;
    }

    v17 = (v25 + (v18 * v18)) + (v16 * v16);
  }

  else if (v7)
  {
    v18 = 0.0;
    v16 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    v15 = 0.0;
    v17 = 0.0;
  }

  else
  {
    v9 = *(result + 24);
    v10 = *(*(result + 16) + 80);
    v11 = v9[4];
    v12 = v11 * *(v10 + 4 * a3);
    v13 = v11 * *(v10 + 4 * (a3 + 1));
    v14 = v9[5] * a4;
    v8 = v9[6];
    v15 = v8 * a5;
    v16 = v13 - v12;
    v17 = (v16 * v16) + (v8 * v8);
    v18 = 0.0;
  }

  v31 = (((v16 * (a6[1] - v12)) + ((*a6 - v14) * v18)) + ((a6[2] - v15) * v8)) / v17;
  if (v31 >= 0.0)
  {
    if (v31 <= 1.0)
    {
      v14 = v14 + (v18 * v31);
      v12 = v12 + (v16 * v31);
      v15 = v15 + (v8 * v31);
    }

    else
    {
      v14 = v18 + v14;
      v12 = v16 + v12;
      v15 = v8 + v15;
    }
  }

  *a7 = v14;
  a7[1] = v12;
  a7[2] = v15;
  return result;
}

uint64_t physx::Gu::HeightFieldUtil::getVertexFaceIndex(physx::Gu::HeightFieldUtil *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  VertexEdgeIndices = physx::getVertexEdgeIndices(this, a2, a3, a4, v9);
  if (!VertexEdgeIndices)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = VertexEdgeIndices;
  v7 = 0;
  while (1)
  {
    result = physx::Gu::HeightFieldUtil::getEdgeFaceIndex(this, v9[4 * v7], v9[4 * v7 + 1], v9[4 * v7 + 2], v9[4 * v7 + 3]);
    if (result != -1)
    {
      break;
    }

    v7 += 2;
    if (v7 >= v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t physx::Gu::HeightFieldUtil::getEdgeFaceIndex(physx::Gu::HeightFieldUtil *this, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2 / 3;
  v3 = *(this + 15);
  v4 = a2 / 3 / v3;
  v5 = a2 / 3 % v3;
  LODWORD(v6) = -3 * (a2 / 3);
  v7 = a2 % 3;
  if (a2 % 3 == 2)
  {
    LODWORD(v6) = *(this + 14);
    if (v4 >= v6 - 1)
    {
      goto LABEL_29;
    }

    if (v5)
    {
      LODWORD(v6) = 2 * v2 - 1;
      v19 = v6;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (v5 >= v3 - 1)
    {
      goto LABEL_28;
    }

    v10 = 2 * v2;
  }

  else
  {
    if (v7 == 1)
    {
      LODWORD(v6) = *(this + 14) - 1;
      if (v5 < v3 - 1 && v4 < v6)
      {
        v6 = 2 * v2;
        v20 = (2 * v2) | 1;
        goto LABEL_22;
      }

      goto LABEL_29;
    }

    if (v7 || v5 >= v3 - 1)
    {
LABEL_29:
      v17 = (*(this + 10) + 4 * (v6 >> 1) + 2);
      goto LABEL_30;
    }

    LODWORD(v6) = v2 - v3;
    if (v2 >= v3)
    {
      LODWORD(v6) = (*(*(this + 10) + 4 * v6 + 2) >> 7) + 2 * v6 + 1;
      v19 = v6;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (v4 >= *(this + 14) - 1)
    {
LABEL_28:
      if (v6)
      {
        v17 = (*(this + 10) + 4 * (v6 >> 1) + 3);
LABEL_30:
        if ((~*v17 & 0x7F) != 0)
        {
          return v6;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      goto LABEL_29;
    }

    v10 = (*(*(this + 10) + 4 * v2 + 2) >> 7) | (2 * v2);
  }

  *(&v19 + v8) = v10;
  v6 = v19;
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_22:
  v11 = *(this + 10);
  v12 = v11 + 4 * (v6 >> 1);
  v13 = (v12 + 2);
  v14 = (v12 + 3);
  if ((v6 & 1) == 0)
  {
    v14 = v13;
  }

  if ((~*v14 & 0x7F) == 0)
  {
    LODWORD(v6) = v20;
    v15 = v11 + ((2 * v20) & 0x1FFFFFFFCLL);
    v16 = (v15 + 2);
    v17 = (v15 + 3);
    if ((v20 & 1) == 0)
    {
      v17 = v16;
    }

    goto LABEL_30;
  }

  return v6;
}

uint64_t physx::Gu::HeightFieldUtil::getEdgeFaceIndex(physx::Gu::HeightFieldUtil *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  LODWORD(v5) = -3 * a3;
  v6 = -3 * a3 + a2;
  if (v6 == 2)
  {
    LODWORD(v5) = *(this + 14);
    if (v5 - 1 <= a4)
    {
      goto LABEL_27;
    }

    if (a5)
    {
      LODWORD(v5) = 2 * a3 - 1;
      v18 = v5;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (*(this + 15) - 1 <= a5)
    {
      goto LABEL_26;
    }

    v9 = 2 * a3;
  }

  else
  {
    if (v6 == 1)
    {
      LODWORD(v5) = *(this + 14);
      if (v5 - 1 > a4)
      {
        LODWORD(v5) = *(this + 15);
        if (v5 - 1 > a5)
        {
          v5 = 2 * a3;
          v19 = (2 * a3) | 1;
          goto LABEL_20;
        }
      }

      goto LABEL_27;
    }

    if (v6 || (v7 = *(this + 15), v7 - 1 <= a5))
    {
LABEL_27:
      v16 = (*(this + 10) + 4 * (v5 >> 1) + 2);
      goto LABEL_28;
    }

    if (a4)
    {
      LODWORD(v5) = (*(*(this + 10) + 4 * (a3 - v7) + 2) >> 7) + 2 * (a3 - v7) + 1;
      v18 = v5;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (*(this + 14) - 1 <= a4)
    {
LABEL_26:
      if (v5)
      {
        v16 = (*(this + 10) + 4 * (v5 >> 1) + 3);
LABEL_28:
        if ((~*v16 & 0x7F) != 0)
        {
          return v5;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      goto LABEL_27;
    }

    v9 = (*(*(this + 10) + 4 * a3 + 2) >> 7) | (2 * a3);
  }

  *(&v18 + v8) = v9;
  v5 = v18;
  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_20:
  v10 = *(this + 10);
  v11 = v10 + 4 * (v5 >> 1);
  v12 = (v11 + 2);
  v13 = (v11 + 3);
  if ((v5 & 1) == 0)
  {
    v13 = v12;
  }

  if ((~*v13 & 0x7F) == 0)
  {
    LODWORD(v5) = v19;
    v14 = v10 + ((2 * v19) & 0x1FFFFFFFCLL);
    v15 = (v14 + 2);
    v16 = (v14 + 3);
    if ((v19 & 1) == 0)
    {
      v16 = v15;
    }

    goto LABEL_28;
  }

  return v5;
}

BOOL physx::Gu::HeightFieldUtil::overlapAABBTriangles(uint64_t a1, float *a2, float *a3, char a4, uint64_t a5)
{
  v114 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v14 = a2[4] * -2.0;
    v15 = a2[5] * -2.0;
    v16 = a2[6] * -2.0;
    v18 = a2[2];
    v17 = a2[3];
    v19 = (v17 * v17) + -0.5;
    v20 = a2[1];
    v21 = ((v15 * v20) + (*a2 * v14)) + (v18 * v16);
    v22 = ((v14 * v19) - (((v20 * v16) - (v18 * v15)) * v17)) + (*a2 * v21);
    v23 = ((v15 * v19) - (((v18 * v14) - (*a2 * v16)) * v17)) + (v20 * v21);
    v24 = ((v16 * v19) - (((*a2 * v15) - (v20 * v14)) * v17)) + (v18 * v21);
    v25 = a3[1];
    v27 = a3[2];
    v26 = a3[3];
    v28 = a3[4];
    v29 = a3[5];
    v30 = ((*a3 + v26) * 0.5) + ((*a3 + v26) * 0.5);
    v31 = ((v25 + v28) * 0.5) + ((v25 + v28) * 0.5);
    v32 = ((v27 + v29) * 0.5) + ((v27 + v29) * 0.5);
    v33 = (-(v20 * v31) - (*a2 * v30)) - (v18 * v32);
    v34 = v22 + (((v17 * ((v18 * v31) - (v20 * v32))) + (v30 * v19)) - (*a2 * v33));
    v35 = v23 + (((v17 * ((*a2 * v32) - (v18 * v30))) + (v31 * v19)) - (v20 * v33));
    v36 = v24 + (((v17 * ((v20 * v30) - (*a2 * v31))) + (v32 * v19)) - (v18 * v33));
    v37 = -*a2 - *a2;
    v38 = -v20 - v20;
    v39 = -v18 - v18;
    v40 = -(v20 * v38);
    v41 = -(v18 * v39);
    v42 = -(v20 * v37);
    v43 = -(v18 * v37);
    v44 = v17 * v37;
    v45 = -(v18 * v38);
    v46 = v17 * v38;
    v47 = v17 * v39;
    v48 = v42 + v47;
    v49 = v42 - v47;
    v50 = (*a2 * v37) + 1.0;
    v51 = v50 - v41;
    v52 = (v26 - *a3) * 0.5;
    v53 = (v28 - v25) * 0.5;
    v54 = (v29 - v27) * 0.5;
    v55 = (v50 - v40) * v54;
    v56 = (fabsf(((1.0 - v40) - v41) * v52) + fabsf(v49 * v53)) + fabsf((v43 + v46) * v54);
    v57 = (fabsf(v48 * v52) + fabsf(v51 * v53)) + fabsf((v45 - v44) * v54);
    v58 = (fabsf((v43 - v46) * v52) + fabsf((v44 + v45) * v53)) + fabsf(v55);
    v9 = v34 - v56;
    v8 = v35 - v57;
    v10 = v36 - v58;
    v11 = v56 + v34;
    v12 = v57 + v35;
    v13 = v58 + v36;
  }

  else
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
  }

  v59 = v9 * *a1;
  v60 = *(a1 + 8);
  v61 = v10 * v60;
  v62 = v11 * *a1;
  v63 = v13 * v60;
  v64 = *(a1 + 16);
  v65 = *(a1 + 24);
  v66 = *(v65 + 20);
  v67 = *(v65 + 24);
  if (v66 >= 0.0)
  {
    v68 = v59;
  }

  else
  {
    v68 = v62;
  }

  if (v66 >= 0.0)
  {
    v69 = v62;
  }

  else
  {
    v69 = v59;
  }

  if (v67 >= 0.0)
  {
    v70 = v61;
  }

  else
  {
    v70 = v63;
  }

  if (v67 >= 0.0)
  {
    v71 = v63;
  }

  else
  {
    v71 = v61;
  }

  v72 = *(v64 + 56);
  v73 = v72 - 1;
  v74 = (v72 - 1);
  if (v68 > v74)
  {
    return 0;
  }

  result = 0;
  v76 = *(v64 + 60);
  if (v70 > (v76 - 1) || v69 < 0.0 || v71 < 0.0)
  {
    return result;
  }

  v77 = v72 - 2;
  v78 = vcvtms_u32_f32(v68);
  if (v68 <= v77)
  {
    v77 = v78;
  }

  if (v68 >= 0.0)
  {
    v79 = v77;
  }

  else
  {
    v79 = 0;
  }

  v80 = vcvtps_u32_f32(v69);
  if (v69 <= v74)
  {
    v81 = v80;
  }

  else
  {
    v81 = v73;
  }

  v82 = v76 - 2;
  v83 = vcvtms_u32_f32(v70);
  if (v70 <= (v76 - 2))
  {
    v82 = v83;
  }

  if (v70 >= 0.0)
  {
    v84 = v82;
  }

  else
  {
    v84 = 0;
  }

  v85 = vcvtps_u32_f32(v71);
  if (v71 > (v76 - 1))
  {
    v85 = v76 - 1;
  }

  v86 = v85 - v84;
  if (!(2 * (v81 - v79) * (v85 - v84)))
  {
    return 0;
  }

  if (v81 <= v79)
  {
    v88 = 0;
    return v88 != 0;
  }

  v87 = 0;
  v88 = 0;
  v89 = *(a1 + 4);
  v90 = v8 * v89;
  v91 = v12 * v89;
  v92 = v84 + v79 * v76;
  v111 = v84;
  v112 = v81;
  v109 = v85 - v84;
  v110 = v85;
  while (v85 <= v84)
  {
LABEL_73:
    v92 = v92 - v86 + *(v64 + 60);
    if (++v79 == v81)
    {
      v108 = v87;
      if (v87)
      {
        goto LABEL_78;
      }

      return v88 != 0;
    }
  }

  v93 = 2 * v92;
  while (1)
  {
    v94 = v92;
    v95 = *(a1 + 16);
    v96 = *(v95 + 80);
    v97 = (v96 + 4 * v92);
    v98 = *v97;
    v99 = *(v96 + 4 * ++v92);
    LODWORD(v95) = v94 + *(v95 + 60);
    v100 = *(v96 + 4 * v95);
    v101 = *(v96 + 4 * (v95 + 1));
    v102 = v91 < v98 && v91 < v99;
    v103 = v102 && v91 < v100;
    if (!v103 || v91 >= v101)
    {
      v105 = v90 <= v98 || v90 <= v99;
      v106 = v105 || v90 <= v100;
      if (v106 || v90 <= v101)
      {
        break;
      }
    }

LABEL_71:
    v93 += 2;
    if (!--v86)
    {
      v64 = *(a1 + 16);
      v84 = v111;
      v81 = v112;
      v86 = v109;
      v85 = v110;
      goto LABEL_73;
    }
  }

  if ((~*(v97 + 2) & 0x7F) == 0)
  {
LABEL_67:
    if ((~*(v96 + 4 * v94 + 3) & 0x7F) != 0)
    {
      if (v87 >= 0x40)
      {
        (*(*a5 + 16))(a5);
        LODWORD(v87) = 0;
      }

      v108 = (v87 + 1);
      v113[v87] = v93 + 1;
      ++v88;
      v87 = v108;
      if ((a4 & 2) != 0)
      {
        goto LABEL_78;
      }
    }

    goto LABEL_71;
  }

  if (v87 >= 0x40)
  {
    (*(*a5 + 16))(a5);
    LODWORD(v87) = 0;
  }

  v113[v87] = v93;
  v87 = (v87 + 1);
  ++v88;
  if ((a4 & 2) == 0)
  {
    v96 = *(*(a1 + 16) + 80);
    goto LABEL_67;
  }

  v108 = v87;
LABEL_78:
  (*(*a5 + 16))(a5, v108, v113);
  return v88 != 0;
}

BOOL physx::Gu::HeightFieldUtil::getTriangle(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11 = v8[5];
  v10 = v8[6];
  if (v11 < 0.0)
  {
    v12 = v10 >= 0.0;
  }

  else
  {
    v12 = v10 < 0.0;
  }

  if (v12)
  {
    v13 = 8;
  }

  else
  {
    v13 = 4;
  }

  if (v12)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  v15 = a6 >> 1;
  v16 = *(v9 + 80);
  v17 = v16 + 4 * v15;
  v20 = *(v17 + 2);
  v18 = (v17 + 2);
  v19 = v20;
  if (v20 < 0)
  {
    if (a6)
    {
      v22 = v15 + 1;
      v71 = v15 + 1;
      *(&v71 + v13) = *(v9 + 60) + v15 + 1;
      v21 = a6 >> 1;
    }

    else
    {
      v71 = *(v9 + 60) + v15;
      v22 = v71;
      *(&v71 + v13) = v15;
      v21 = v22 + 1;
    }
  }

  else if (a6)
  {
    v23 = *(v9 + 60);
    v21 = v15 + 1;
    v22 = v23 + v15 + 1;
    v71 = v22;
    *(&v71 + v13) = v23 + v15;
  }

  else
  {
    v71 = a6 >> 1;
    *(&v71 + v13) = v15 + 1;
    v21 = *(v9 + 60) + v15;
    v22 = a6 >> 1;
  }

  *(&v71 + v14) = v21;
  if (!a5)
  {
    goto LABEL_44;
  }

  v24 = !v12;
  v25 = 2;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = 2;
  }

  if (!v24)
  {
    v25 = 0;
  }

  *(a5 + 4 * v26) = -1;
  if (v19 < 0)
  {
    if (a6)
    {
      *(a5 + 4) = a6 - 1;
      *(a5 + 4 * v25) = -1;
      v33 = *(v9 + 60);
      if (v15 % v33 < v33 - 2)
      {
        *(a5 + 4 * v26) = a6 + 1;
        v33 = *(v9 + 60);
      }

      if (v15 < v33 - 1)
      {
        goto LABEL_44;
      }

      v30 = v15 - v33;
      v31 = (*(v16 + 4 * (v15 - v33) + 2) >> 7) ^ 1;
    }

    else
    {
      *(a5 + 4) = a6 | 1;
      *(a5 + 4 * v25) = -1;
      v29 = *(v9 + 60);
      if (v15 % v29)
      {
        *(a5 + 4 * v26) = a6 - 1;
        v29 = *(v9 + 60);
      }

      if (v15 / v29 == *(v9 + 56) - 2)
      {
        goto LABEL_44;
      }

      v30 = v29 + v15;
      v31 = *(v16 + 4 * (v29 + v15) + 2) >> 7;
    }

    v28 = v31 | (2 * v30);
    goto LABEL_43;
  }

  if (a6)
  {
    *(a5 + 4) = a6 - 1;
    *(a5 + 4 * v25) = -1;
    v32 = *(v9 + 60);
    if (v15 / v32 != *(v9 + 56) - 2)
    {
      *(a5 + 4 * v26) = (*(v16 + 4 * (v32 + v15) + 2) >> 7) | (2 * (v32 + v15));
      v32 = *(v9 + 60);
    }

    if (v15 % v32 < v32 - 2)
    {
      v28 = a6 + 1;
      goto LABEL_43;
    }
  }

  else
  {
    *(a5 + 4) = a6 | 1;
    *(a5 + 4 * v25) = -1;
    v27 = *(v9 + 60);
    if (v15 >= v27 - 1)
    {
      *(a5 + 4 * v26) = (*(v16 + 4 * (v15 - v27) + 2) >> 7) ^ 1 | (2 * (v15 - v27));
      v27 = *(v9 + 60);
    }

    if (v15 % v27)
    {
      v28 = a6 - 1;
LABEL_43:
      *(a5 + 4 * v25) = v28;
    }
  }

LABEL_44:
  if (a4)
  {
    *a4 = v22;
    *(a4 + 4) = v72;
  }

  if (a8)
  {
    v34 = *(v9 + 60);
    v35 = v8[4];
    v37 = a2[2];
    v36 = a2[3];
    v38 = (v36 * v36) + -0.5;
    v39 = *a2;
    v40 = a2[1];
    v41 = -v37;
    v42 = -*a2;
    v43 = -v40;
    v44 = 0;
    v45 = (a3 + 8);
    if (a7)
    {
      do
      {
        v46 = *(&v71 + v44);
        v47 = (v11 * (v46 / v34)) + (v11 * (v46 / v34));
        v48 = (v35 * *(v16 + 4 * v46)) + (v35 * *(v16 + 4 * v46));
        v49 = (v10 * (v46 % v34)) + (v10 * (v46 % v34));
        v50 = ((v40 * v48) + (v39 * v47)) + (v37 * v49);
        v51 = (v36 * ((v49 * v42) + (v37 * v47))) + (v48 * v38);
        v52 = ((v36 * ((v48 * v41) + (v40 * v49))) + (v47 * v38)) + (v39 * v50);
        v53 = a2[6] + (((v36 * ((v47 * v43) + (v39 * v48))) + (v49 * v38)) + (v37 * v50));
        v54 = a2[5] + (v51 + (v40 * v50));
        *(v45 - 2) = a2[4] + v52;
        *(v45 - 1) = v54;
        *v45 = v53;
        v45 += 3;
        v44 += 4;
      }

      while (v44 != 12);
    }

    else
    {
      do
      {
        v55 = *(&v71 + v44);
        v56 = (v11 * (v55 / v34)) + (v11 * (v55 / v34));
        v57 = (v35 * *(v16 + 4 * v55)) + (v35 * *(v16 + 4 * v55));
        v58 = (v10 * (v55 % v34)) + (v10 * (v55 % v34));
        v59 = ((v40 * v57) + (v39 * v56)) + (v37 * v58);
        *(v45 - 2) = ((v36 * ((v57 * v41) + (v40 * v58))) + (v56 * v38)) + (v39 * v59);
        *(v45 - 1) = ((v36 * ((v58 * v42) + (v37 * v56))) + (v57 * v38)) + (v40 * v59);
        *v45 = ((v36 * ((v56 * v43) + (v39 * v57))) + (v58 * v38)) + (v37 * v59);
        v45 += 3;
        v44 += 4;
      }

      while (v44 != 12);
    }
  }

  else
  {
    v60 = 0;
    v61 = a2[4];
    v62 = a2[5];
    v63 = a2[6];
    if (!a7)
    {
      v61 = 0.0;
      v62 = 0.0;
      v63 = 0.0;
    }

    v64 = *(v9 + 60);
    v65 = v8[4];
    v66 = (a3 + 8);
    do
    {
      v67 = *(&v71 + v60);
      v68 = v62 + (v65 * *(v16 + 4 * v67));
      *(v66 - 2) = v61 + (v11 * (v67 / v64));
      *(v66 - 1) = v68;
      *v66 = v63 + (v10 * (v67 % v64));
      v66 += 3;
      v60 += 4;
    }

    while (v60 != 12);
  }

  v69 = (v16 + 4 * v15 + 3);
  if ((a6 & 1) == 0)
  {
    v69 = v18;
  }

  return (~*v69 & 0x7F) != 0;
}

BOOL GeomOverlapCallback_SphereHeightfield(uint64_t a1, float *a2, float32x2_t *a3, float *a4)
{
  *&v83[124] = *MEMORY[0x1E69E9840];
  v4 = a2[4] - a4[4];
  v5 = a2[5] - a4[5];
  v6 = a2[6] - a4[6];
  v7 = v4 + v4;
  v8 = v5 + v5;
  v9 = v6 + v6;
  v11 = a4[2];
  v10 = a4[3];
  v12 = (v10 * v10) + -0.5;
  v13 = a4[1];
  v14 = ((v8 * v13) + (*a4 * v7)) + (v11 * v9);
  v15 = ((v7 * v12) - (((v13 * v9) - (v11 * v8)) * v10)) + (*a4 * v14);
  v16 = ((v8 * v12) - (((v11 * v7) - (*a4 * v9)) * v10)) + (v13 * v14);
  v17 = ((v9 * v12) - (((*a4 * v8) - (v13 * v7)) * v10)) + (v11 * v14);
  v18 = *(a1 + 4);
  v19 = a3[1];
  v79 = v19;
  v80 = a3;
  v20 = a3[3].f32[0];
  v21 = a3[2];
  __asm { FMOV            V2.2S, #1.0 }

  v27 = vdiv_f32(_D2, v21);
  v77 = vrev64_s32(v27);
  v28 = 1.0 / v20;
  v78 = 1.0 / v20;
  v29 = vmuls_lane_f32(v15, v27, 1);
  v30 = v17 * (1.0 / v20);
  if (v29 < 0.0)
  {
    goto LABEL_18;
  }

  if (v30 < 0.0)
  {
    goto LABEL_18;
  }

  v31 = *(*&v19 + 64);
  if (v29 >= (v31 + 1.0))
  {
    goto LABEL_18;
  }

  v32 = *(*&v19 + 68);
  if (v30 >= (v32 + 1.0))
  {
    goto LABEL_18;
  }

  v33 = fmaxf(v29, 0.0);
  v34 = fmaxf(v30, 0.0);
  v35 = (1.0 - ((v33 + 1.0) * 0.000001)) + v31;
  if (v33 < v35)
  {
    v35 = v33;
  }

  v36 = (1.0 - ((v34 + 1.0) * 0.000001)) + v32;
  if (v34 < v36)
  {
    v36 = v34;
  }

  v37 = floorf(v35);
  v38 = v35 - v37;
  v39 = floorf(v36);
  v40 = v36 - v39;
  v41 = (v39 + (v37 * *(*&v19 + 72)));
  v42 = *(*&v19 + 80);
  v43 = (v42 + 4 * v41);
  if ((v43[1] & 0x80000000) == 0)
  {
    v44 = *(v42 + 4 * (*(*&v19 + 60) + v41));
    v45 = *(v42 + 4 * (v41 + 1));
    if ((v38 + v40) >= 1.0)
    {
      v52 = *(v42 + 4 * (*(*&v19 + 60) + v41 + 1));
      v47 = v52 + ((1.0 - v40) * (v44 - v52));
      v38 = 1.0 - v38;
      v48 = v45 - v52;
    }

    else
    {
      v46 = *v43;
      v47 = v46 + (v40 * (v45 - v46));
      v48 = v44 - v46;
    }

    goto LABEL_15;
  }

  v49 = *v43;
  v50 = *(v42 + 4 * (*(*&v19 + 60) + v41 + 1));
  if (v40 > v38)
  {
    v51 = *(v42 + 4 * (v41 + 1));
    v47 = v49 + (v40 * (v51 - v49));
    v48 = v50 - v51;
LABEL_15:
    v53 = v47 + (v38 * v48);
    goto LABEL_16;
  }

  v76 = *(v42 + 4 * (*(*&v19 + 60) + v41));
  v53 = (v49 + (v38 * (v76 - v49))) + (v40 * (v50 - v76));
LABEL_16:
  if ((v16 - (v53 * v21.f32[0])) == 0.0)
  {
    return physx::Gu::HeightFieldUtil::getFaceIndexAtShapePoint(&v77, v15, v17) != -1;
  }

LABEL_18:
  v55 = v18 * fabsf(v27.f32[1]);
  v56 = v18 * fabsf(v28);
  v58 = *(*&v19 + 56);
  v57 = *(*&v19 + 60);
  v59 = v58 - 2;
  v60 = vcvtms_u32_f32(v29 - v55);
  if ((v29 - v55) <= (v58 - 2))
  {
    v59 = v60;
  }

  if ((v29 - v55) >= 0.0)
  {
    v61 = v59;
  }

  else
  {
    v61 = 0;
  }

  v62 = v29 + v55;
  v63 = v58 - 1;
  v64 = vcvtps_u32_f32(v62);
  if (v62 <= v63)
  {
    v63 = v64;
  }

  if (v62 >= 0.0)
  {
    v65 = v63;
  }

  else
  {
    v65 = 0;
  }

  v66 = v57 - 2;
  v67 = vcvtms_u32_f32(v30 - v56);
  if ((v30 - v56) <= (v57 - 2))
  {
    v66 = v67;
  }

  if ((v30 - v56) >= 0.0)
  {
    v68 = v66;
  }

  else
  {
    v68 = 0;
  }

  v69 = v30 + v56;
  if (v69 >= 0.0)
  {
    v70 = v57 - 1;
    if (v69 <= (v57 - 1))
    {
      v70 = vcvtps_u32_f32(v69);
    }
  }

  else
  {
    v70 = 0;
  }

  if (v61 >= v65)
  {
    return 0;
  }

  v71 = v18 * v18;
  while (v68 >= v70)
  {
LABEL_46:
    result = 0;
    if (++v61 == v65)
    {
      return result;
    }
  }

  v72 = v68;
  while (1)
  {
    v81[0] = v15;
    v81[1] = v16;
    v81[2] = v17;
    ClosestPointsOnCell = physx::Gu::HeightFieldUtil::findClosestPointsOnCell(&v77, v61, v72, v81, v82);
    if (ClosestPointsOnCell)
    {
      break;
    }

LABEL_45:
    if (++v72 == v70)
    {
      goto LABEL_46;
    }
  }

  v74 = ClosestPointsOnCell;
  v75 = v83;
  while (((((v16 - *(v75 - 1)) * (v16 - *(v75 - 1))) + ((v15 - *(v75 - 2)) * (v15 - *(v75 - 2)))) + ((v17 - *v75) * (v17 - *v75))) > v71)
  {
    v75 += 3;
    if (!--v74)
    {
      goto LABEL_45;
    }
  }

  return 1;
}

uint64_t GeomOverlapCallback_CapsuleHeightfield(uint64_t a1, float *a2, float32x2_t *a3, float *a4, double a5, double a6, double a7, __n128 a8)
{
  LODWORD(v8) = 0;
  v9 = 0;
  v164 = *MEMORY[0x1E69E9840];
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  v13 = a2[4] - a4[4];
  v14 = a2[5] - a4[5];
  v15 = a2[6] - a4[6];
  v16 = v13 + v13;
  v17 = v14 + v14;
  v18 = v15 + v15;
  v19 = (v12 * v12) + -0.5;
  v20 = (-(v10 * (v14 + v14)) - (*a4 * (v13 + v13))) - (v11 * v18);
  v21 = ((v12 * ((v11 * (v14 + v14)) - (v10 * v18))) + ((v13 + v13) * v19)) - (*a4 * v20);
  v22 = ((v12 * ((*a4 * v18) - (v11 * v16))) + ((v14 + v14) * v19)) - (v10 * v20);
  v23 = ((v12 * ((v10 * v16) - (*a4 * v17))) + (v18 * v19)) - (v11 * v20);
  v25 = a2[2];
  v24 = a2[3];
  v26 = a2[1];
  v27 = (((v12 * *a2) - (*a4 * v24)) - (v10 * v25)) + (v26 * v11);
  v28 = (((v12 * v26) - (v10 * v24)) - (v11 * *a2)) + (v25 * *a4);
  v29 = (((v12 * v25) - (v11 * v24)) - (*a4 * v26)) + (*a2 * v10);
  a8.n128_f32[0] = (((*a4 * *a2) + (v12 * v24)) + (v10 * v26)) + (v11 * v25);
  v30 = a3[1];
  v154 = v30;
  v155 = a3;
  v31 = a3[3].f32[0];
  __asm { FMOV            V6.2S, #1.0 }

  v37 = vdiv_f32(_D6, a3[2]);
  v152 = vrev64_s32(v37);
  v38 = 1.0;
  v39 = 1.0 / v31;
  v153 = 1.0 / v31;
  v40 = ((v27 + v27) * v28) + (v29 * (a8.n128_f32[0] + a8.n128_f32[0]));
  v41 = (v29 * (v27 + v27)) - (v28 * (a8.n128_f32[0] + a8.n128_f32[0]));
  v42 = *(a1 + 4);
  _D6.i32[0] = *(a1 + 8);
  a8.n128_f32[0] = (((a8.n128_f32[0] * (a8.n128_f32[0] + a8.n128_f32[0])) + -1.0) + (v27 * (v27 + v27))) * _D6.f32[0];
  v43 = v40 * _D6.f32[0];
  v44 = v41 * _D6.f32[0];
  v45 = v21 + a8.n128_f32[0];
  v46 = v21 - a8.n128_f32[0];
  v143 = a8.n128_f32[0] * -2.0;
  v145 = v43 * -2.0;
  a8.n128_f32[0] = v44 * -2.0;
  v147 = a8;
  v138 = v45;
  v139 = v22 + v43;
  *v162 = v45;
  *&v162[1] = v22 + v43;
  v47 = v162;
  v141 = v23 + v44;
  *&v162[2] = v23 + v44;
  *v163 = v46;
  *&v163[1] = v22 - v43;
  *&v163[2] = v23 - v44;
  v48 = *&v37.i32[1];
  v49 = fabsf(*&v37.i32[1]) * v42;
  v50 = fabsf(v39) * v42;
  v51 = v42 * v42;
  LODWORD(v52) = -1;
  v53 = 1;
  v54 = -1;
  do
  {
    v55 = v53;
    v56 = *v47;
    v57 = v48 * *v47;
    v58 = v47[2];
    v59 = v39 * v58;
    v61 = *(*&v30 + 56);
    v60 = *(*&v30 + 60);
    v62 = v61 - 2;
    v63 = vcvtms_u32_f32(v57 - v49);
    if ((v57 - v49) <= (v61 - 2))
    {
      v62 = v63;
    }

    if ((v57 - v49) >= 0.0)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    v65 = v61 - 1;
    v66 = vcvtps_u32_f32(v49 + v57);
    if ((v49 + v57) <= v65)
    {
      v65 = v66;
    }

    if ((v49 + v57) >= 0.0)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0;
    }

    v68 = v60 - 2;
    v69 = vcvtms_u32_f32(v59 - v50);
    if ((v59 - v50) <= (v60 - 2))
    {
      v68 = v69;
    }

    if ((v59 - v50) >= 0.0)
    {
      v70 = v68;
    }

    else
    {
      v70 = 0;
    }

    v71 = v50 + v59;
    if ((v50 + v59) >= 0.0)
    {
      v72 = v60 - 1;
      if (v71 <= (v60 - 1))
      {
        v72 = vcvtps_u32_f32(v71);
      }
    }

    else
    {
      v72 = 0;
    }

    v73 = v47[1];
    if (v64 >= v52)
    {
      v52 = v52;
    }

    else
    {
      v52 = v64;
    }

    if (v70 < v54)
    {
      v54 = v70;
    }

    if (v67 <= v8)
    {
      v8 = v8;
    }

    else
    {
      v8 = v67;
    }

    if (v72 > v9)
    {
      v9 = v72;
    }

    v150 = v54;
    if (v57 < 0.0)
    {
      goto LABEL_50;
    }

    if (v59 < 0.0)
    {
      goto LABEL_50;
    }

    v74 = *(*&v30 + 64);
    if (v57 >= (v74 + v38))
    {
      goto LABEL_50;
    }

    v75 = *(*&v30 + 68);
    if (v59 >= (v75 + v38))
    {
      goto LABEL_50;
    }

    v76 = fmaxf(v57, 0.0);
    v77 = fmaxf(v59, 0.0);
    v78 = v38 - ((v77 + v38) * 0.000001);
    v79 = (v38 - ((v76 + v38) * 0.000001)) + v74;
    if (v76 >= v79)
    {
      v76 = v79;
    }

    if (v77 >= (v78 + v75))
    {
      v77 = v78 + v75;
    }

    v80 = floorf(v76);
    v81 = v76 - v80;
    v82 = floorf(v77);
    v83 = v77 - v82;
    v84 = (v82 + (v80 * *(*&v30 + 72)));
    v85 = *(*&v30 + 80);
    v86 = (v85 + 4 * v84);
    if ((v86[1] & 0x80000000) == 0)
    {
      v87 = v60 + v84;
      v88 = *(v85 + 4 * v87);
      v89 = *(v85 + 4 * (v84 + 1));
      if ((v81 + v83) < v38)
      {
        v90 = *v86;
        v91 = v90 + (v83 * (v89 - v90));
        v92 = v88 - v90;
LABEL_46:
        v96 = v91 + (v81 * v92);
        goto LABEL_47;
      }

      v95 = *(v85 + 4 * (v87 + 1));
      v91 = v95 + ((v38 - v83) * (v88 - v95));
      v81 = v38 - v81;
LABEL_45:
      v92 = v89 - v95;
      goto LABEL_46;
    }

    v93 = *v86;
    v94 = v60 + v84;
    v89 = *(v85 + 4 * (v94 + 1));
    if (v83 > v81)
    {
      v95 = *(v85 + 4 * (v84 + 1));
      v91 = v93 + (v83 * (v95 - v93));
      goto LABEL_45;
    }

    v107 = *(v85 + 4 * v94);
    v96 = (v93 + (v81 * (v107 - v93))) + (v83 * (v89 - v107));
LABEL_47:
    if ((v73 - (a3[2].f32[0] * v96)) == 0.0)
    {
      v97 = v9;
      if (physx::Gu::HeightFieldUtil::getFaceIndexAtShapePoint(&v152, v56, v58) != -1)
      {
        return 1;
      }

      goto LABEL_60;
    }

LABEL_50:
    v97 = v9;
    if (v64 < v67)
    {
      while (1)
      {
        v98 = v30;
        v99 = v52;
        v100 = v55;
        v101 = v8;
        if (v70 < v72)
        {
          break;
        }

LABEL_59:
        ++v64;
        v8 = v101;
        v55 = v100;
        v52 = v99;
        v30 = v98;
        if (v64 == v67)
        {
          goto LABEL_60;
        }
      }

      v102 = v70;
      while (1)
      {
        v160.i64[0] = __PAIR64__(LODWORD(v73), LODWORD(v56));
        v160.f32[2] = v58;
        ClosestPointsOnCell = physx::Gu::HeightFieldUtil::findClosestPointsOnCell(&v152, v64, v102, v160.f32, &v161);
        if (ClosestPointsOnCell)
        {
          break;
        }

LABEL_58:
        if (++v102 == v72)
        {
          goto LABEL_59;
        }
      }

      v104 = ClosestPointsOnCell;
      v105 = &v161.f32[2];
      while (1)
      {
        v106 = v73 - *(v105 - 1);
        if (v106 > 0.0 && (((v106 * v106) + ((v56 - *(v105 - 2)) * (v56 - *(v105 - 2)))) + ((v58 - *v105) * (v58 - *v105))) <= v51)
        {
          return 1;
        }

        v105 += 3;
        if (!--v104)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_60:
    v53 = 0;
    v47 = v163;
    v9 = v97;
    v54 = v150;
    v38 = 1.0;
  }

  while ((v55 & 1) != 0);
  v108.i64[0] = __PAIR64__(LODWORD(v139), LODWORD(v138));
  v108.i64[1] = LODWORD(v141);
  v161 = v108;
  v109.i64[0] = __PAIR64__(LODWORD(v145), LODWORD(v143));
  v109.i64[1] = v147.n128_u32[0];
  v160 = v109;
  if (v52 > v8)
  {
    return 0;
  }

  v146 = v147;
  v151 = v147;
  v144 = v147;
  v142 = v147;
  v149 = v147;
  v135 = v9;
  v136 = v8;
  while (v150 > v9)
  {
LABEL_67:
    LODWORD(v52) = v52 + 1;
    if (v52 > v8)
    {
      return 0;
    }
  }

  if (v52 == v8)
  {
    v111 = 1;
  }

  else
  {
    v111 = 3;
  }

  v137 = *(*&v30 + 60);
  v112 = v52;
  v113 = v150;
  while (1)
  {
    v114 = 2 * (v113 == v9);
    if (v114 < v111)
    {
      break;
    }

    v134 = v113 + 1;
LABEL_88:
    v113 = v134;
    if (v134 > v9)
    {
      goto LABEL_67;
    }
  }

  v115 = v137 * v52 + v113;
  v140 = (v115 + v137);
  v116 = v113;
  v117 = (v115 + 1);
  while (1)
  {
    if (physx::Gu::HeightFieldUtil::getEdgeFaceIndex(*&v30, 3 * v115 + v114, v115, v52, v113) != -1)
    {
      if (v114 == 2)
      {
        v130 = *(*&v30 + 80);
        v131 = a3[2].f32[0];
        v118.n128_u32[0] = a3[2].u32[1];
        v119.n128_f32[0] = v131 * *(v130 + 4 * v115);
        v120.n128_f32[0] = v118.n128_f32[0] * v112;
        v121.n128_f32[0] = a3[3].f32[0] * v116;
        v123.n128_f32[0] = (v131 * *(v130 + 4 * v140)) - v119.n128_f32[0];
        v122.n128_u64[0] = 0;
      }

      else if (v114 == 1)
      {
        v126 = *(*&v30 + 80);
        v127 = (v126 + 4 * v115);
        v128 = a3[2].f32[0];
        if (v127[1] < 0)
        {
          v119.n128_f32[0] = v128 * *v127;
          v118.n128_u32[0] = a3[2].u32[1];
          v122.n128_u32[0] = a3[3].u32[0];
          v120.n128_f32[0] = v118.n128_f32[0] * v112;
          v121.n128_f32[0] = v122.n128_f32[0] * v116;
          v123.n128_f32[0] = (v128 * *(v126 + 4 * (v117 + v137))) - v119.n128_f32[0];
        }

        else
        {
          v119.n128_f32[0] = v128 * *(v126 + 4 * v117);
          v118.n128_u32[0] = a3[2].u32[1];
          v129 = a3[3].f32[0];
          v120.n128_f32[0] = v118.n128_f32[0] * v112;
          v121.n128_f32[0] = v129 * (v113 + 1);
          v123.n128_f32[0] = (v128 * *(v126 + 4 * v140)) - v119.n128_f32[0];
          v122.n128_f32[0] = -v129;
        }
      }

      else
      {
        v119 = v151;
        v118 = v149;
        v121 = v146;
        v120 = v147;
        v123 = v142;
        v122 = v144;
        if (!v114)
        {
          v124 = *(*&v30 + 80);
          v125 = a3[2].f32[0];
          v119.n128_f32[0] = v125 * *(v124 + 4 * v115);
          v120.n128_f32[0] = a3[2].f32[1] * v112;
          v122.n128_u32[0] = a3[3].u32[0];
          v121.n128_f32[0] = v122.n128_f32[0] * v116;
          v123.n128_f32[0] = (v125 * *(v124 + 4 * v117)) - v119.n128_f32[0];
          v118.n128_u64[0] = 0;
        }
      }

      v146 = v121;
      v147 = v120;
      v132.i64[0] = __PAIR64__(v119.n128_u32[0], v120.n128_u32[0]);
      v151 = v119;
      v132.i64[1] = v121.n128_u32[0];
      v149 = v118;
      v133.i64[0] = __PAIR64__(v123.n128_u32[0], v118.n128_u32[0]);
      v142 = v123;
      v144 = v122;
      v133.i64[1] = v122.n128_u32[0];
      v158 = v133;
      v159 = v132;
      if (physx::Gu::distanceSegmentSegmentSquared(&v161, &v160, &v159, &v158, &v157, &v156).f32[0] < v51)
      {
        return 1;
      }
    }

    if (v111 == ++v114)
    {
      v9 = v135;
      LODWORD(v8) = v136;
      v134 = v113 + 1;
      goto LABEL_88;
    }
  }
}

uint64_t GeomOverlapCallback_BoxHeightfield(uint64_t a1, float *a2, float32x2_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v18 = 0;
  v221[23] = *MEMORY[0x1E69E9840];
  v19 = *(a4 + 4);
  v20 = -*a4;
  v21 = -v19;
  v12.i32[0] = *(a4 + 8);
  v22 = *(a4 + 12);
  v23 = -*v12.i32;
  v24 = a2[4] - *(a4 + 16);
  v25 = a2[5] - *(a4 + 20);
  v26 = a2[6] - *(a4 + 24);
  *v11.i32 = v24 + v24;
  v27 = v25 + v25;
  v28 = v26 + v26;
  v29 = (v22 * v22) + -0.5;
  *&a10 = -(v19 * (v25 + v25)) - (*a4 * *v11.i32);
  *&a11 = (v22 * ((*v12.i32 * v27) - (v19 * (v26 + v26)))) + (*v11.i32 * v29);
  v30 = (v22 * ((*a4 * v28) - (*v12.i32 * *v11.i32))) + (v27 * v29);
  v31 = v22 * ((v19 * *v11.i32) - (*a4 * v27));
  v33 = a2[2];
  v32 = a2[3];
  v34 = a2[1];
  v35 = (((v22 * *a2) - (*a4 * v32)) - (v19 * v33)) + (v34 * *v12.i32);
  *v14.i32 = (((v22 * v34) - (v19 * v32)) - (*v12.i32 * *a2)) + (v33 * *a4);
  *v11.i32 = (((v22 * v33) - (*v12.i32 * v32)) - (*a4 * v34)) + (*a2 * v19);
  v36 = ((*a4 * *a2) + (v22 * v32)) + (v19 * v34);
  v37 = vdup_lane_s32(v11, 0);
  *v12.i32 = v36 + (*v12.i32 * v33);
  v38 = vdup_lane_s32(v12, 0);
  *v15.i32 = v35 + v35;
  v39 = vdup_lane_s32(v15, 0);
  v40 = v31 + (v28 * v29);
  *v16.i32 = *v14.i32 + *v14.i32;
  v41 = vdup_lane_s32(v16, 0);
  *v13.i32 = v35 * (v35 + v35);
  v42 = vmul_n_f32(vdup_lane_s32(v14, 0), *v14.i32 + *v14.i32);
  v43 = vmul_n_f32(v37, *v11.i32 + *v11.i32);
  v44 = vmul_n_f32(v39, *v14.i32);
  v45 = vmul_n_f32(v38, v35 + v35);
  v46 = vmul_n_f32(v37, *v14.i32 + *v14.i32);
  v47 = vmul_n_f32(v38, *v11.i32 + *v11.i32);
  LODWORD(v48) = vadd_f32(v44, v47).u32[0];
  v49 = vsub_f32(v44, v47);
  v204 = vadd_f32(v45, v46);
  v202 = vsub_f32(v46, v45);
  v50 = v49.f32[1];
  v51 = *(a1 + 4);
  v52 = *(a1 + 12);
  v53 = a3[1];
  v211 = v53;
  v212 = a3;
  v54 = a3[3].f32[0];
  v55 = a3[2];
  __asm { FMOV            V27.2S, #1.0 }

  v61 = vdiv_f32(_D27, v55);
  v209 = vrev64_s32(v61);
  v62 = 1.0 / v54;
  v210 = 1.0 / v54;
  do
  {
    v63 = (&physx::Gu::signs + v18 * 8);
    v224 = vld3q_f32(v63);
    v222.val[0] = vmulq_n_f32(v224.val[0], v51.f32[0]);
    v222.val[1] = vmulq_lane_f32(v224.val[1], v51, 1);
    v222.val[2] = vmulq_n_f32(v224.val[2], v52);
    v64 = &v221[v18 + 11];
    vst3q_f32(v64, v222);
    v18 += 6;
  }

  while (v18 != 12);
  v200 = v52;
  v207 = v51;
  v65 = 0;
  v66 = *&a10 + (v23 * v28);
  v67 = *&a11 + (v20 * v66);
  *&a11 = v30 + (v21 * v66);
  *&a10 = v40 + (v23 * v66);
  v68 = vmul_n_f32(v39, *v11.i32);
  v69 = vmul_n_f32(v41, *v12.i32);
  v70 = vsub_f32(_D27, vdup_lane_s32(v13, 0));
  LODWORD(v71) = vsub_f32(v68, v69).u32[0];
  LODWORD(v72) = vsub_f32(v70, v43).u32[0];
  v73 = vadd_f32(v68, v69);
  LODWORD(v74) = vsub_f32(v70, v42).u32[0];
  v75 = (1.0 - v42.f32[1]) - v43.f32[1];
  v76 = v73.f32[1];
  v194 = v67;
  v195 = LODWORD(a11);
  v77 = vdupq_lane_s32(*v224.val[0].f32, 0);
  v78 = vdupq_lane_s32(*&a11, 0);
  v197 = LODWORD(a10);
  v79 = vdupq_lane_s32(*&a10, 0);
  do
  {
    v80 = &v221[v65 + 11];
    v223 = vld3q_f32(v80);
    v81 = vaddq_f32(vmulq_n_f32(v223.val[0], v75), vmulq_lane_f32(v223.val[1], v49, 1));
    v82 = vaddq_f32(vmulq_n_f32(v223.val[0], v48), vmulq_n_f32(v223.val[1], v72));
    v223.val[0] = vaddq_f32(vaddq_f32(vmulq_n_f32(v223.val[0], v71), vmulq_n_f32(v223.val[1], v204.f32[0])), vmulq_n_f32(v223.val[2], v74));
    v223.val[1] = vaddq_f32(v77, vaddq_f32(v81, vmulq_lane_f32(v223.val[2], v73, 1)));
    v223.val[2] = vaddq_f32(v78, vaddq_f32(v82, vmulq_n_f32(v223.val[2], v202.f32[0])));
    v83 = vaddq_f32(v79, v223.val[0]);
    v84 = &v220[v65 * 8];
    vst3q_f32(v84, *(&v223 + 16));
    v65 += 6;
  }

  while (v65 != 12);
  v190 = v75;
  v191 = v71;
  v192 = v72;
  v193 = v74;
  v85 = 0;
  v86 = *&v61.i32[1];
  v206 = v55.i32[0];
  while (1)
  {
    v73.i32[0] = *&v220[v85];
    v78.f32[0] = v86 * v73.f32[0];
    if ((v86 * v73.f32[0]) < 0.0)
    {
      goto LABEL_24;
    }

    v77.i32[0] = *&v220[v85 + 8];
    v87 = v62 * v77.f32[0];
    if ((v62 * v77.f32[0]) < 0.0)
    {
      goto LABEL_24;
    }

    v88 = *(*&v53 + 64);
    if (v78.f32[0] >= (v88 + 1.0))
    {
      goto LABEL_24;
    }

    v89 = *(*&v53 + 68);
    if (v87 >= (v89 + 1.0))
    {
      goto LABEL_24;
    }

    v90 = fmaxf(v78.f32[0], 0.0);
    v91 = fmaxf(v87, 0.0);
    v92 = 1.0 - ((v91 + 1.0) * 0.000001);
    v93 = (1.0 - ((v90 + 1.0) * 0.000001)) + v88;
    if (v90 >= v93)
    {
      v90 = v93;
    }

    if (v91 >= (v92 + v89))
    {
      v91 = v92 + v89;
    }

    v94 = floorf(v90);
    v95 = v90 - v94;
    v96 = floorf(v91);
    v97 = v91 - v96;
    v98 = (v96 + (v94 * *(*&v53 + 72)));
    v99 = *(*&v53 + 80);
    v100 = (v99 + 4 * v98);
    if (v100[1] < 0)
    {
      v106 = *v100;
      v102 = *(v99 + 4 * (*(*&v53 + 60) + v98 + 1));
      if (v97 <= v95)
      {
        v109 = *(v99 + 4 * (*(*&v53 + 60) + v98));
        v108 = (v106 + (v95 * (v109 - v106))) + (v97 * (v102 - v109));
        goto LABEL_22;
      }

      v107 = *(v99 + 4 * (v98 + 1));
      v104 = v106 + (v97 * (v107 - v106));
      goto LABEL_20;
    }

    v101 = *(v99 + 4 * (*(*&v53 + 60) + v98));
    v102 = *(v99 + 4 * (v98 + 1));
    if ((v95 + v97) >= 1.0)
    {
      v107 = *(v99 + 4 * (*(*&v53 + 60) + v98 + 1));
      v104 = v107 + ((1.0 - v97) * (v101 - v107));
      v95 = 1.0 - v95;
LABEL_20:
      v105 = v102 - v107;
      goto LABEL_21;
    }

    v103 = *v100;
    v104 = v103 + (v97 * (v102 - v103));
    v105 = v101 - v103;
LABEL_21:
    v108 = v104 + (v95 * v105);
LABEL_22:
    v78.f32[0] = *&v220[v85 + 4] - (v55.f32[0] * v108);
    if (v78.f32[0] == 0.0)
    {
      v55.i32[0] = v206;
      if (physx::Gu::HeightFieldUtil::getFaceIndexAtShapePoint(&v209, v73.f32[0], v77.f32[0]) != -1)
      {
        return 1;
      }
    }

LABEL_24:
    v85 += 12;
    if (v85 == 96)
    {
      v216 = &v209;
      physx::Gu::HeightFieldUtil::computeLocalBounds(&v209, v217, *&v73, *v77.i64, *v78.i64);
      v110 = v216;
      v111 = 12;
      v112 = &byte_1E3116BD1;
      do
      {
        v113 = &v220[12 * *(v112 - 1)];
        v215 = v113[1].f32[0];
        v114 = &v220[12 * *v112];
        v115 = v114[1].f32[0];
        v213 = 0;
        v214 = *v113;
        v218 = vsub_f32(*v114, v214);
        v219 = v115 - v215;
        physx::Gu::HeightFieldTraceUtil::traceSegment<physx::Gu::TriggerTraceSegmentCallback,false,false>(v110, &v214, &v218, &v213, v217);
        if (v213 == 1)
        {
          return 1;
        }

        v112 += 2;
        --v111;
      }

      while (v111);
      v116.f32[0] = v48 - v50;
      LODWORD(v117) = vsub_f32(v204, v202).u32[0];
      v118 = v193 + ((1.0 - v190) - v192);
      v119 = vadd_f32(v204, v202).u32[0];
      if (v190 < -v192)
      {
        v120 = v193 + ((1.0 - v190) - v192);
      }

      else
      {
        v120 = v193 + (v192 + (v190 + 1.0));
      }

      if (v190 < -v192)
      {
        v121 = v191 + v76;
      }

      else
      {
        v121 = v117;
      }

      if (v190 < -v192)
      {
        v122 = *&v119;
      }

      else
      {
        v122 = v76 - v191;
      }

      if (v190 >= -v192)
      {
        v118 = v48 - v50;
        v116.f32[0] = v193 + (v192 + (v190 + 1.0));
      }

      v123 = (v192 + (1.0 - v190)) - v193;
      v124 = ((v190 + 1.0) - v192) - v193;
      if (v190 > v192)
      {
        v125 = ((v190 + 1.0) - v192) - v193;
      }

      else
      {
        v125 = (v192 + (1.0 - v190)) - v193;
      }

      if (v190 > v192)
      {
        v123 = v48 + v50;
      }

      else
      {
        v124 = v48 + v50;
      }

      if (v190 > v192)
      {
        v126 = v191 + v76;
      }

      else
      {
        v126 = *&v119;
      }

      if (v190 <= v192)
      {
        v117 = v76 - v191;
      }

      if (v193 < 0.0)
      {
        v127 = v125;
      }

      else
      {
        v127 = v120;
      }

      if (v193 < 0.0)
      {
        v116.f32[0] = v117;
      }

      else
      {
        v124 = v121;
        v123 = v122;
        v126 = v118;
      }

      v128 = 0.5 / sqrtf(v127);
      v129.f32[0] = v124 * v128;
      v130 = v123 * v128;
      v131.f32[0] = v124 * v128;
      v131.f32[1] = v130;
      v131.f32[2] = v128 * v126;
      v116.f32[0] = v128 * v116.f32[0];
      v131.i32[3] = v116.i32[0];
      v132.i64[0] = __PAIR64__(v195, LODWORD(v194));
      v132.i64[1] = v197;
      v133 = vnegq_f32(v132);
      v134 = v133;
      v134.i32[3] = 0;
      v135 = v131;
      v135.i32[3] = 0;
      v132.i64[0] = vdupq_lane_s32(v116, 0).u64[0];
      v136 = vmulq_n_f32(v134, vmla_f32(0xBF000000BF000000, *v132.f32, *v132.f32).f32[0]);
      v136.i32[3] = 0;
      v129.f32[1] = v130;
      v137 = vextq_s8(v135, v135, 8uLL).u64[0];
      v138 = vextq_s8(v134, v134, 8uLL).u64[0];
      v139 = vmls_f32(vmul_f32(vext_s8(*v133.f32, v138, 4uLL), v129), vext_s8(v129, v137, 4uLL), *v133.f32);
      *v133.f32 = vext_s8(v139, vmls_f32(vmul_f32(*v133.f32, v137), v129, v138), 4uLL);
      v133.i64[1] = v139.u32[0];
      v140 = vmlsq_lane_f32(v136, v133, v116, 0);
      v140.i64[1] = vextq_s8(v140, v140, 8uLL).u32[0];
      v141 = vmulq_f32(v134, v135);
      v141.i64[0] = vpaddq_f32(v141, v141).u64[0];
      v142 = vmlaq_n_f32(v140, v135, vpadd_f32(*v141.f32, *v141.f32).f32[0]);
      v143 = v221;
      v144 = -3.4028e38;
      v145 = 3.4028e38;
      v146 = 8;
      v147 = 3.4028e38;
      v148 = -3.4028e38;
      do
      {
        v149 = *(v143 - 2);
        if (v149 < v145)
        {
          v145 = *(v143 - 2);
        }

        v150 = *v143;
        v143 += 3;
        v151 = v150;
        if (v150 < v147)
        {
          v147 = v151;
        }

        if (v149 > v144)
        {
          v144 = v149;
        }

        if (v151 > v148)
        {
          v148 = v151;
        }

        --v146;
      }

      while (v146);
      v152 = v86 * v145;
      v154 = *(*&v53 + 56);
      v153 = *(*&v53 + 60);
      v155 = v154 - 2;
      v156 = vcvtms_u32_f32(v152);
      if (v152 <= (v154 - 2))
      {
        v155 = v156;
      }

      if (v152 >= 0.0)
      {
        v157 = v155;
      }

      else
      {
        v157 = 0;
      }

      v158 = v86 * v144;
      v159 = v154 - 1;
      v160 = vcvtps_u32_f32(v158);
      if (v158 <= v159)
      {
        v159 = v160;
      }

      if (v158 >= 0.0)
      {
        v161 = v159;
      }

      else
      {
        v161 = 0;
      }

      v162 = v153 - 2;
      v163 = vcvtms_u32_f32(v62 * v147);
      if ((v62 * v147) <= (v153 - 2))
      {
        v162 = v163;
      }

      if ((v62 * v147) >= 0.0)
      {
        v164 = v162;
      }

      else
      {
        v164 = 0;
      }

      v165 = v62 * v148;
      if (v165 >= 0.0)
      {
        v166 = v153 - 1;
        *v167.f32 = v207;
        v168 = v200;
        if (v165 <= (v153 - 1))
        {
          v166 = vcvtps_u32_f32(v165);
        }
      }

      else
      {
        v166 = 0;
        *v167.f32 = v207;
        v168 = v200;
      }

      if (v157 > v161)
      {
        return 0;
      }

      v170 = vaddq_f32(v142, v142);
      v170.i32[3] = 0;
      v203 = vnegq_f32(v131);
      v205 = v170;
      v171 = v203;
      v171.i32[3] = v116.i32[0];
      v167.i64[1] = LODWORD(v168) | 0x7F7FFFFF00000000;
      v172 = vdupq_laneq_s32(v171, 3);
      v171.i32[3] = 0;
      LODWORD(v198) = vmla_f32(0xBF000000BF000000, *v172.i8, *v172.i8).u32[0];
      v199 = v172;
      v201 = v171;
      v196 = vextq_s8(v171, v171, 8uLL).u64[0];
      v173 = vext_s8(*v203.f32, v196, 4uLL);
      v174 = v53;
      v208 = v167;
      while (v164 > v166)
      {
LABEL_105:
        if (++v157 > v161)
        {
          return 0;
        }
      }

      v175 = v164;
      while (1)
      {
        v176 = v175 + v157 * *(*&v53 + 60);
        (*(*v174 + 104))(&v216, v174);
        if ((v216 & 1) == 0)
        {
          break;
        }

        v174 = v211;
        if (v157 && v175 && *(v211 + 14) - 1 > v157)
        {
          v178 = v208;
          if (*(v211 + 15) - 1 > v175)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v178 = v208;
        }

        if ((~*(*(v211 + 10) + 4 * v176 + 2) & 0x7F) != 0 || (isSolidVertex = physx::Gu::HeightField::isSolidVertex(v211, v176, v157, v175, &v216, v177), v178 = v208, isSolidVertex))
        {
LABEL_103:
          v180.f32[0] = *(*(*&v53 + 80) + 4 * v176);
          v180.f32[1] = v157;
          *v181.f32 = vrev64_s32(vmul_f32(a3[2], v180));
          v181.f32[2] = a3[3].f32[0] * v175;
          v181.i32[3] = 0;
          v182 = vmulq_n_f32(v181, v198);
          v182.i32[3] = 0;
          v183 = vextq_s8(v181, v181, 8uLL).u64[0];
          v184 = vmls_f32(vmul_f32(*v203.f32, vext_s8(*v181.f32, v183, 4uLL)), v173, *v181.f32);
          *v185.f32 = vext_s8(v184, vmls_f32(vmul_f32(v196, *v181.f32), *v203.f32, v183), 4uLL);
          v185.i64[1] = v184.u32[0];
          v186 = vmlaq_f32(v182, v199, v185);
          v186.i64[1] = vextq_s8(v186, v186, 8uLL).u32[0];
          v187 = vmulq_f32(v201, v181);
          v187.i64[0] = vpaddq_f32(v187, v187).u64[0];
          v188 = vmlaq_n_f32(v186, v201, vpadd_f32(*v187.f32, *v187.f32).f32[0]);
          v188.i64[1] = vextq_s8(v188, v188, 8uLL).u32[0];
          v181.i64[0] = 0x4000000040000000;
          v181.i64[1] = 0x4000000040000000;
          v189 = vmlaq_f32(v205, v181, v188);
          v189.i64[1] = vextq_s8(v189, v189, 8uLL).u32[0];
          *v189.f32 = vmovn_s32(vcgtq_f32(v178, vabsq_f32(v189)));
          if (vuzp1_s8(*v189.f32, *v189.f32).u32[0] == -1)
          {
            return 1;
          }
        }

LABEL_104:
        if (++v175 > v166)
        {
          goto LABEL_105;
        }
      }

      v174 = v211;
      v178 = v208;
LABEL_93:
      if (*(*(v174 + 10) + 4 * v176 + 3) < 0)
      {
        goto LABEL_103;
      }

      goto LABEL_104;
    }
  }
}

uint64_t GeomOverlapCallback_ConvexHeightfield(uint64_t a1, float *a2, float32x2_t *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v14 = a3[1];
  v15 = a3;
  v5 = a3[3].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v12 = vrev64_s32(vdiv_f32(_D2, a3[2]));
  v13 = 1.0 / v5;
  return intersectHeightFieldConvex(&v12, a4, v4, a2, (a1 + 4));
}

uint64_t intersectHeightFieldConvex(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5)
{
  v280 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = v8 + v8;
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v12 = v10 + v10;
  v13 = v8 * (v8 + v8);
  v14 = v10 * (v10 + v10);
  v15 = (v7 + v7) * v8;
  v16 = (v7 + v7) * v10;
  v17 = (v7 + v7) * v11;
  v18 = v9 * v10;
  v19 = v9 * v11;
  v20 = v12 * v11;
  v275[0] = (1.0 - v13) - v14;
  v275[1] = v15 + v20;
  v275[2] = v16 - v19;
  v21 = 1.0 - (v7 * (v7 + v7));
  v275[3] = v15 - v20;
  v275[4] = v21 - v14;
  v275[5] = v18 + v17;
  v22 = v21 - v13;
  v275[6] = v16 + v19;
  v275[7] = v18 - v17;
  v23 = *a4;
  v24 = a4[1];
  v25 = a4[2];
  v26 = a4[3];
  v27 = v24 + v24;
  v28 = v25 + v25;
  v275[8] = v22;
  v29 = v23 * (v23 + v23);
  v30 = v24 * (v24 + v24);
  v31 = v25 * (v25 + v25);
  v276 = *(a2 + 16);
  v32 = (v23 + v23) * v24;
  v33 = (v23 + v23) * v25;
  v34 = (v23 + v23) * v26;
  v277 = *(a2 + 24);
  v35 = v27 * v25;
  v36 = v27 * v26;
  v37 = v28 * v26;
  v38 = (1.0 - v30) - v31;
  v39 = v32 + v37;
  v40 = v33 - v36;
  v41 = v32 - v37;
  v42 = 1.0 - v29;
  v43 = (1.0 - v29) - v31;
  v44 = v35 + v34;
  v45 = v33 + v36;
  v46 = v35 - v34;
  v47 = v42 - v30;
  v48 = a5[4];
  v49 = a5[5];
  v50 = a5[6];
  v52 = a5[2];
  v51 = a5[3];
  v53 = v48 + v48;
  v54 = v49 + v49;
  v55 = v48 * (v48 + v48);
  v56 = v49 * (v49 + v49);
  v57 = (v51 + v51) * v48;
  v58 = (v51 + v51) * v49;
  v59 = (v51 + v51) * v50;
  v60 = v53 * v49;
  v61 = v53 * v50;
  v62 = v54 * v50;
  v63 = (1.0 - v55) - v56;
  v64 = v57 + v62;
  v65 = v58 - v61;
  v66 = v57 - v62;
  v67 = 1.0 - (v51 * (v51 + v51));
  v68 = v67 - v56;
  v69 = v60 + v59;
  v70 = v58 + v61;
  v71 = v60 - v59;
  v72 = v67 - v55;
  v73 = a5[1];
  v74 = *a5 * v63;
  v75 = *a5 * v66;
  v76 = *a5 * v70;
  v77 = v64 * v73;
  v78 = v68 * v73;
  v79 = v71 * v73;
  v80 = v65 * v52;
  v81 = v69 * v52;
  v82 = v72 * v52;
  v83 = ((v63 * v74) + (v64 * v77)) + (v65 * v80);
  v84 = ((v63 * v75) + (v64 * v78)) + (v65 * v81);
  v85 = ((v63 * v76) + (v64 * v79)) + (v65 * v82);
  v86 = ((v66 * v74) + (v68 * v77)) + (v69 * v80);
  v87 = ((v66 * v75) + (v68 * v78)) + (v69 * v81);
  v88 = ((v70 * v74) + (v71 * v77)) + (v72 * v80);
  v89 = ((v70 * v75) + (v71 * v78)) + (v72 * v81);
  v90 = ((v70 * v76) + (v71 * v79)) + (v72 * v82);
  v240 = v84;
  v241 = v83;
  v239 = v85;
  v243 = v87;
  v244 = v86;
  v242 = ((v66 * v76) + (v68 * v79)) + (v69 * v82);
  v270[0] = (v45 * v85) + ((v38 * v83) + (v41 * v84));
  v270[1] = (v46 * v85) + ((v39 * v83) + (v43 * v84));
  v270[2] = (v47 * v85) + ((v40 * v83) + (v44 * v84));
  v270[3] = (v45 * v242) + ((v38 * v86) + (v41 * v87));
  v270[4] = (v46 * v242) + ((v39 * v86) + (v43 * v87));
  v270[5] = (v47 * v242) + ((v40 * v86) + (v44 * v87));
  v271[3] = v41;
  v271[6] = v45;
  v270[6] = (v45 * v90) + ((v38 * v88) + (v41 * v89));
  v270[7] = (v46 * v90) + ((v39 * v88) + (v43 * v89));
  v91 = a4[5];
  v272 = a4[4];
  v270[8] = (v47 * v90) + ((v40 * v88) + (v44 * v89));
  v270[9] = ((v45 * 0.0) + ((v38 * 0.0) + (v41 * 0.0))) + v272;
  v271[0] = v38;
  v271[1] = v39;
  v271[4] = v43;
  v271[5] = v44;
  v271[2] = v40;
  v271[7] = v46;
  v271[8] = v47;
  v273 = v91;
  v274 = a4[6];
  v270[10] = ((v46 * 0.0) + ((v39 * 0.0) + (v43 * 0.0))) + v91;
  v270[11] = ((v47 * 0.0) + ((v40 * 0.0) + (v44 * 0.0))) + v274;
  multiplyInverseRTLeft(&v262, v275, v270);
  v92 = *(a3 + 70);
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v227[-v94];
  v247 = v96;
  bzero(&v227[-v94], v96);
  v99 = *(a3 + 72);
  v246 = *(a3 + 71);
  v245 = 5 * v246;
  if (v92)
  {
    v100 = v263;
    v101 = v265;
    v102 = v267;
    v103 = v262;
    v104 = v264;
    v105 = v266;
    v106 = (v95 + 8);
    v107 = v268;
    v108 = (20 * v246 + v99 + 4);
    v109 = v92;
    v110 = v269;
    v111 = v95;
    do
    {
      v112 = *(v108 - 1);
      v113 = v108[1];
      v114 = v110 + (((v100 * v112) + (v101 * *v108)) + (v102 * v113));
      *(v106 - 1) = vadd_f32(v107, vadd_f32(vadd_f32(vmul_n_f32(v103, v112), vmul_n_f32(v104, *v108)), vmul_n_f32(v105, v113)));
      *v106 = v114;
      v106 += 3;
      v108 += 3;
      --v109;
    }

    while (v109);
    v115 = v92 - 1;
    v116 = &v95[12 * (v92 - 1)];
    v117.i64[0] = *v116;
    v117.i64[1] = *(v116 + 2);
    if (v92 == 1)
    {
      v119 = v117;
    }

    else
    {
      v118 = v95;
      v119 = v117;
      do
      {
        v120 = *v118;
        v118 = (v118 + 12);
        v119 = vminq_f32(v119, v120);
        v117 = vmaxq_f32(v117, v120);
        --v115;
      }

      while (v115);
    }

    v122 = v119.f32[1];
    v121 = v119.f32[2];
    v123 = v117.f32[2];
  }

  else
  {
    v121 = 8.5071e37;
    v117.i32[0] = -25165825;
    v122 = 8.5071e37;
    v119.i32[0] = 2122317823;
    v123 = -8.5071e37;
    v111 = v95;
  }

  v124 = *(a1 + 16);
  v125 = *(a1 + 8);
  v126 = *a1;
  v127 = *(v124 + 56);
  v128 = v119.f32[0] * *a1;
  if (*a1 > 0.0)
  {
    if (v128 >= 0.0)
    {
      v129 = v127 - 2;
      if (v128 <= (v127 - 2))
      {
        v129 = vcvtms_u32_f32(v128);
      }
    }

    else
    {
      v129 = 0;
    }

    v131 = v117.f32[0] * v126;
    if (v131 >= 0.0)
    {
      v132 = v127 - 1;
      if (v131 <= (v127 - 1))
      {
        v132 = vcvtps_u32_f32(v131);
      }

      goto LABEL_25;
    }

LABEL_24:
    v132 = 0;
    goto LABEL_25;
  }

  v130 = v117.f32[0] * v126;
  if (v130 >= 0.0)
  {
    v129 = v127 - 2;
    if (v130 <= (v127 - 2))
    {
      v129 = vcvtms_u32_f32(v130);
    }
  }

  else
  {
    v129 = 0;
  }

  if (v128 < 0.0)
  {
    goto LABEL_24;
  }

  v132 = v127 - 1;
  if (v128 <= (v127 - 1))
  {
    v132 = vcvtps_u32_f32(v128);
  }

LABEL_25:
  v133 = *(v124 + 60);
  v134 = v121 * v125;
  if (v125 > 0.0)
  {
    if (v134 >= 0.0)
    {
      v135 = v133 - 2;
      if (v134 <= (v133 - 2))
      {
        v135 = vcvtms_u32_f32(v134);
      }
    }

    else
    {
      v135 = 0;
    }

    *&v98 = v123 * v125;
    if (*&v98 >= 0.0)
    {
      v136 = v133 - 1;
      if (*&v98 <= (v133 - 1))
      {
        v136 = vcvtps_u32_f32(*&v98);
      }

      goto LABEL_41;
    }

LABEL_40:
    v136 = 0;
    goto LABEL_41;
  }

  *&v98 = v123 * v125;
  if (*&v98 >= 0.0)
  {
    v135 = v133 - 2;
    if (*&v98 <= (v133 - 2))
    {
      v135 = vcvtms_u32_f32(*&v98);
    }
  }

  else
  {
    v135 = 0;
  }

  if (v134 < 0.0)
  {
    goto LABEL_40;
  }

  v136 = v133 - 1;
  *&v98 = (v133 - 1);
  if (v134 <= *&v98)
  {
    v136 = vcvtps_u32_f32(v134);
  }

LABEL_41:
  v137 = 1.0 / *(a1 + 4);
  if (v129 <= v132)
  {
    v138 = v129 * v133;
    LODWORD(v97) = -8388609;
    v139 = v129;
    do
    {
      if (v135 <= v136)
      {
        v141 = v135;
        do
        {
          v140 = *(v124 + 80);
          *&v98 = *(v140 + 4 * (v138 + v141));
          if (*&v97 <= *&v98)
          {
            *&v97 = *(v140 + 4 * (v138 + v141));
          }

          ++v141;
        }

        while (v141 <= v136);
      }

      ++v139;
      v138 += v133;
    }

    while (v139 <= v132);
  }

  else
  {
    LODWORD(v97) = -8388609;
  }

  v142 = v137 * *&v97;
  if (v122 > (v137 * *&v97))
  {
    return 0;
  }

  v234 = 1.0 / *(a1 + 4);
  v236 = v135;
  v237 = v132;
  v235 = v129;
  *v248 = v111;
  v238 = v92;
  if (!v92)
  {
LABEL_76:
    v231 = v124;
    v232 = a1;
    v260 = 0u;
    v261 = 0u;
    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v233 = a3;
    v177 = *(a3 + 68);
    v178 = v177 & 0x7FFF;
    if (v177 >= 0)
    {
      v179 = 0;
    }

    else
    {
      v179 = 4 * v178;
    }

    v252 = a1;
    physx::Gu::HeightFieldUtil::computeLocalBounds(a1, v253, 0.0, v97, v98);
    v180 = *v248;
    if (v246)
    {
      v245 = v99 + 4 * v245 + v247 + 2 * v178 + 3 * v238 + v179;
      v181 = v252;
      do
      {
        v247 = v99;
        v182 = *(v99 + 18);
        if (v182)
        {
          v183 = 0;
          v184 = v245 + *(v247 + 16);
          v185 = v182 - 1;
          do
          {
            v186 = *(v184 + v185);
            v187 = *(v184 + v183);
            if (v187 >= v186)
            {
              v188 = *(v184 + v185);
            }

            else
            {
              v188 = *(v184 + v183);
            }

            if (v187 > v186)
            {
              v186 = *(v184 + v183);
            }

            v189 = v186 | (v188 << 8);
            v190 = 9 * ((~(v189 << 15) + v189) ^ ((~(v189 << 15) + v189) >> 10));
            v191 = (v190 ^ (v190 >> 6)) + ~((v190 ^ (v190 >> 6)) << 11);
            v192 = (v191 ^ BYTE2(v191)) & 0x3F;
            if (*(&v254 + v192) == v189)
            {
              v193 = v183;
            }

            else
            {
              *(&v254 + v192) = v189;
              v194 = &v180[12 * v188];
              v195 = &v180[12 * v186];
              v193 = (v183 + 1);
              v196 = v194[1];
              v197 = v195[1];
              if (v196 <= v142 || v197 <= v142)
              {
                v250.f32[0] = *v194;
                v250.f32[1] = v196;
                v251 = v194[2];
                v199 = *v195;
                v200 = v195[2];
                v249 = 0;
                v278.f32[0] = v199 - v250.f32[0];
                v278.f32[1] = v197 - v196;
                v279 = v200 - v251;
                physx::Gu::HeightFieldTraceUtil::traceSegment<physx::Gu::TriggerTraceSegmentCallback,false,false>(v181, &v250, &v278, &v249, v253);
                v180 = *v248;
                v185 = v183;
                if (v249)
                {
                  return 1;
                }
              }

              else
              {
                v185 = v183;
              }
            }

            v183 = v193;
            --v182;
          }

          while (v182);
        }

        v99 = v247 + 20;
        v246 = (v246 - 1);
      }

      while (v246);
    }

    multiplyInverseRTLeft(&v254, v271, v275);
    v201 = v235;
    if (v235 > v237)
    {
      return 0;
    }

    v230 = ((v241 * *&v254) + (v244 * *(&v254 + 1))) + (v88 * *(&v254 + 2));
    v228 = ((v239 * *&v254) + (v242 * *(&v254 + 1))) + (v90 * *(&v254 + 2));
    v229 = ((v240 * *&v254) + (v243 * *(&v254 + 1))) + (v89 * *(&v254 + 2));
    v248[0] = ((v241 * *(&v254 + 3)) + (v244 * *&v255)) + (v88 * *(&v255 + 1));
    *&v247 = ((v240 * *(&v254 + 3)) + (v243 * *&v255)) + (v89 * *(&v255 + 1));
    *&v246 = ((v239 * *(&v254 + 3)) + (v242 * *&v255)) + (v90 * *(&v255 + 1));
    *&v245 = ((v241 * *(&v255 + 2)) + (v244 * *(&v255 + 3))) + (v88 * *&v256);
    *&v238 = ((v240 * *(&v255 + 2)) + (v243 * *(&v255 + 3))) + (v89 * *&v256);
    v202 = ((v239 * *(&v255 + 2)) + (v242 * *(&v255 + 3))) + (v90 * *&v256);
    v203 = v231;
    v204 = v231;
    v205 = ((v240 * *(&v256 + 1)) + (v243 * *(&v256 + 2))) + (v89 * *(&v256 + 3));
    v206 = ((v239 * *(&v256 + 1)) + (v242 * *(&v256 + 2))) + (v90 * *(&v256 + 3));
    v207 = (((v241 * *(&v256 + 1)) + (v244 * *(&v256 + 2))) + (v88 * *(&v256 + 3))) + 0.0;
    v208 = v205 + 0.0;
    v209 = v206 + 0.0;
    v244 = 1.0 / v126;
    v210 = 1.0 / v125;
    v212 = v232;
    v211 = v233;
    while (1)
    {
      v213 = v236;
      if (v236 <= v136)
      {
        break;
      }

LABEL_101:
      if (++v201 > v237)
      {
        return 0;
      }
    }

    v214 = v244 * v201;
    v215 = v230 * v214;
    v216 = v229 * v214;
    v217 = v228 * v214;
    while (1)
    {
      v218 = v213 + *(v203 + 60) * v201;
      (*(*v204 + 104))(&v252, v204);
      if ((v252 & 1) == 0)
      {
        break;
      }

      v204 = *(v212 + 16);
      if (v201 && v213 && *(v204 + 56) - 1 > v201 && *(v204 + 60) - 1 > v213)
      {
        goto LABEL_106;
      }

      if ((~*(*(v204 + 80) + 4 * v218 + 2) & 0x7F) != 0 || physx::Gu::HeightField::isSolidVertex(*(v212 + 16), v218, v201, v213, &v252, v219))
      {
LABEL_114:
        v220 = *(v211 + 71);
        if (!*(v211 + 71))
        {
          return 1;
        }

        v221 = v234 * *(*(v203 + 80) + 4 * v218);
        v222 = v210 * v213;
        v223 = (*&v238 * v222) + (v216 + (*&v247 * v221));
        v224 = (v202 * v222) + (v217 + (*&v246 * v221));
        v225 = v207 + ((*&v245 * v222) + (v215 + (v248[0] * v221)));
        for (i = (*(v211 + 72) + 8); (i[1] + ((((v208 + v223) * *(i - 1)) + (v225 * *(i - 2))) + ((v209 + v224) * *i))) < 0.0; i += 5)
        {
          if (!--v220)
          {
            return 1;
          }
        }
      }

LABEL_119:
      if (++v213 > v136)
      {
        goto LABEL_101;
      }
    }

    v204 = *(v212 + 16);
LABEL_106:
    if (*(*(v204 + 80) + 4 * v218 + 3) < 0)
    {
      goto LABEL_114;
    }

    goto LABEL_119;
  }

  v144 = *(a1 + 24);
  v145 = (v111 + 8);
  v146 = v238;
  while (1)
  {
    *&v98 = *(v145 - 1);
    if (*&v98 >= v142)
    {
      goto LABEL_73;
    }

    v147 = *(v145 - 2);
    v148 = v126 * v147;
    if ((v126 * v147) < 0.0)
    {
      goto LABEL_73;
    }

    *&v97 = *v145;
    v149 = v125 * *v145;
    if (v149 < 0.0)
    {
      goto LABEL_73;
    }

    v150 = *(v124 + 64);
    if (v148 >= (v150 + 1.0))
    {
      goto LABEL_73;
    }

    v151 = *(v124 + 68);
    if (v149 >= (v151 + 1.0))
    {
      goto LABEL_73;
    }

    v152 = fmaxf(v148, 0.0);
    v153 = fmaxf(v149, 0.0);
    v154 = 1.0 - ((v153 + 1.0) * 0.000001);
    v155 = (1.0 - ((v152 + 1.0) * 0.000001)) + v150;
    if (v152 >= v155)
    {
      v152 = v155;
    }

    if (v153 >= (v154 + v151))
    {
      v153 = v154 + v151;
    }

    v156 = floorf(v152);
    v157 = v152 - v156;
    v158 = floorf(v153);
    v159 = v153 - v158;
    v160 = (v158 + (v156 * *(v124 + 72)));
    v161 = *(v124 + 80);
    v162 = (v161 + 4 * v160);
    if (v162[1] < 0)
    {
      v168 = *v162;
      v164 = *(v161 + 4 * (v133 + v160 + 1));
      if (v159 <= v157)
      {
        v176 = *(v161 + 4 * (v133 + v160));
        v170 = (v168 + (v157 * (v176 - v168))) + (v159 * (v164 - v176));
        goto LABEL_71;
      }

      v169 = *(v161 + 4 * (v160 + 1));
      v166 = v168 + (v159 * (v169 - v168));
      goto LABEL_69;
    }

    v163 = *(v161 + 4 * (v133 + v160));
    v164 = *(v161 + 4 * (v160 + 1));
    if ((v157 + v159) >= 1.0)
    {
      v169 = *(v161 + 4 * (v133 + v160 + 1));
      v166 = v169 + ((1.0 - v159) * (v163 - v169));
      v157 = 1.0 - v157;
LABEL_69:
      v167 = v164 - v169;
      goto LABEL_70;
    }

    v165 = *v162;
    v166 = v165 + (v159 * (v164 - v165));
    v167 = v163 - v165;
LABEL_70:
    v170 = v166 + (v157 * v167);
LABEL_71:
    *&v98 = *&v98 - (*(v144 + 16) * v170);
    if (*&v98 == 0.0)
    {
      v171 = a1;
      v172 = a1;
      v173 = a3;
      v174 = v144;
      FaceIndexAtShapePoint = physx::Gu::HeightFieldUtil::getFaceIndexAtShapePoint(v171, v147, *&v97);
      v144 = v174;
      a3 = v173;
      a1 = v172;
      if (FaceIndexAtShapePoint != -1)
      {
        return 1;
      }
    }

LABEL_73:
    v145 += 3;
    if (!--v146)
    {
      goto LABEL_76;
    }
  }
}

uint64_t sweepCapsule_HeightFieldGeom(float32x2_t *a1, float32x2_t *a2, physx::Gu::Box *a3, float a4, float a5, uint64_t a6, float *a7, float32x2_t *a8, uint64_t a9, __int16 *a10)
{
  v13 = a7;
  v232 = *MEMORY[0x1E69E9840];
  v17 = a7[6] + a5;
  v217 = *a7;
  v218 = *(a7 + 2);
  v219 = v17;
  physx::Gu::computeBoxAroundCapsule(&v217, v211, a3);
  v18 = ((fabsf(v211[3]) * v215) + (fabsf(v211[0]) * v214)) + (fabsf(v211[6]) * v216);
  v19 = ((fabsf(v211[4]) * v215) + (fabsf(v211[1]) * v214)) + (fabsf(v211[7]) * v216);
  v20 = ((fabsf(v211[5]) * v215) + (fabsf(v211[2]) * v214)) + (fabsf(v211[8]) * v216);
  v209 = a1[1];
  v210 = a1;
  v21 = a1[3].f32[0];
  __asm { FMOV            V4.2S, #1.0 }

  v207 = vrev64_s32(vdiv_f32(_D4, a1[2]));
  v208 = 1.0 / v21;
  v27 = *a10;
  v197[1] = &v207;
  v198 = v27;
  v199 = 0;
  v200 = (a1[3].i8[4] & 2 | v27 & 0x80) != 0;
  v201 = (v27 & 0x40) != 0;
  v197[0] = &unk_1F5D22150;
  v202 = &v217;
  v203 = a8;
  v204 = a9;
  v205 = a2;
  v206 = a4;
  *(a9 + 16) = -1;
  *(a9 + 48) = 2139095039;
  v28 = a2[3].f32[0] * -2.0;
  v29.i32[0] = a2[1].i32[0];
  v30.i32[0] = a2[1].i32[1];
  v31 = (*v30.i32 * *v30.i32) + -0.5;
  _S26 = v213 + v213;
  _S22 = a8->f32[0] + a8->f32[0];
  _S19 = a8->f32[1] + a8->f32[1];
  _S20 = a8[1].f32[0] + a8[1].f32[0];
  v36 = vdup_lane_s32(v30, 0);
  v37 = a2[2];
  v38 = vmul_f32(v37, 0xC0000000C0000000);
  _D21 = *a2;
  v37.i32[0] = HIDWORD(*a2);
  v40 = (vmuls_lane_f32(v38.f32[1], *a2, 1) + (COERCE_FLOAT(*a2) * v38.f32[0])) + (*v29.i32 * v28);
  _D23 = vzip1_s32(v29, *a2);
  v42.i32[0] = vdup_lane_s32(v38, 1).u32[0];
  v42.f32[1] = v28;
  v43 = vneg_f32(_D23);
  _D9.i32[0] = vdup_lane_s32(*a2, 1).u32[0];
  _D9.i32[1] = v29.i32[0];
  v45 = vneg_f32(vmla_f32(vmul_f32(v42, v43), vext_s8(v42, v38, 4uLL), _D9));
  v46 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v45, *v30.i32), v38, v31), *a2, v40);
  v45.f32[0] = -v37.f32[0];
  v38.f32[0] = ((v28 * v31) - (((-v37.f32[0] * v38.f32[0]) + (COERCE_FLOAT(*a2) * v38.f32[1])) * *v30.i32)) + (*v29.i32 * v40);
  _D29 = vadd_f32(v212, v212);
  _S30 = _D29.i32[1];
  __asm
  {
    FMLS            S9, S29, V23.S[1]
    FMLS            S9, S26, V23.S[0]
  }

  v49.i32[0] = vdup_lane_s32(_D29, 1).u32[0];
  v49.f32[1] = v213 + v213;
  v50 = vdup_lane_s32(v43, 0);
  v50.f32[0] = -v37.f32[0];
  v51 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(_D23, v49), vext_s8(v49, _D29, 4uLL), v50), *v30.i32), _D29, v31), vext_s8(v43, v50, 4uLL), _D9.f32[0]);
  __asm
  {
    FMLS            S29, S30, V23.S[1]
    FMLS            S26, S9, V23.S[0]
  }

  v53 = v38.f32[0] + _S26;
  v195 = vadd_f32(v46, v51);
  v196 = v53;
  __asm
  {
    FMLS            S26, S22, V23.S[1]
    FMLS            S26, S20, V23.S[0]
    FMLS            S24, S20, V21.S[1]
    FMLS            S10, S26, V23.S[1]
    FMLS            S24, S22, V23.S[0]
    FMLS            S12, S26, V21.S[1]
    FMLS            S22, S19, V23.S[1]
    FMLS            S11, S26, V23.S[0]
  }

  v193 = _S10;
  v194 = __PAIR64__(LODWORD(_S11), LODWORD(_S12));
  *v62.i32 = v43.f32[1] - _D21.f32[0];
  v63 = vdup_lane_s32(v62, 0);
  v37.f32[0] = -v37.f32[0] - v37.f32[0];
  *v29.i32 = v43.f32[0] - *v29.i32;
  *v64.i32 = vmuls_lane_f32(v43.f32[1] - _D21.f32[0], v43, 1);
  v65 = vmul_n_f32(vdup_lane_s32(v45, 0), v37.f32[0]);
  v66 = vmul_n_f32(vdup_lane_s32(v29, 0), v43.f32[0]);
  v67 = vmul_n_f32(v63, v45.f32[0]);
  v68 = vmul_n_f32(v63, v43.f32[0]);
  v69 = vmul_n_f32(v36, *v62.i32);
  v70 = vmul_n_f32(vdup_lane_s32(v37, 0), v43.f32[0]);
  v71 = vmul_n_f32(v36, v37.f32[0]);
  v72 = vmul_n_f32(v36, *v29.i32);
  v73 = vsub_f32(_D4, vdup_lane_s32(v64, 0));
  v74 = vdup_lane_s32(vadd_f32(v67, v72), 0);
  v74.f32[0] = (1.0 - v65.f32[1]) - v66.f32[1];
  v75 = vadd_f32(vabs_f32(vmul_n_f32(vext_s8(vadd_f32(v68, v71), vsub_f32(v70, v69), 4uLL), v20)), vadd_f32(vabs_f32(vmul_n_f32(v74, v18)), vabs_f32(vmul_n_f32(vext_s8(vsub_f32(v67, v72), vsub_f32(v73, v66), 4uLL), v19))));
  v76 = fabsf(v20 * vsub_f32(v73, v65).f32[0]) + (fabsf(v18 * vsub_f32(v68, v71).f32[0]) + fabsf(v19 * vadd_f32(v69, v70).f32[0]));
  v187 = v195;
  *&v77 = ((v53 + v76) + (v76 - v53)) * 0.5;
  v191 = COERCE_DOUBLE(vmul_f32(vadd_f32(vadd_f32(v75, v195), vsub_f32(v75, v195)), 0x3F0000003F000000));
  v192 = LODWORD(v77);
  HeightFieldTraceSegmentSweepHelper::HeightFieldTraceSegmentSweepHelper(v188, &v207, &v191, v77, v191, COERCE_DOUBLE(COERCE_UNSIGNED_INT(0.5) | 0x3F00000000000000));
  v78 = v188[0];
  v79 = v188[1];
  v220 = 0;
  if (physx::Gu::intersectRayAABB2(&v189, &v190, &v195, &v193, &v220 + 1, &v220, a4))
  {
    v81 = 0;
    v82 = v187.f32[1];
    v83 = *(v78 + 16);
    v221.i8[0] = 0;
    v221.i64[1] = v78;
    v222 = v83;
    v231 = 0;
    v84 = v187.f32[0] + (_S10 * a4);
    v85 = v187.f32[1] + (_S12 * a4);
    if (v85 >= v187.f32[1])
    {
      v86 = v187.f32[1];
    }

    else
    {
      v86 = v187.f32[1] + (_S12 * a4);
    }

    v87 = v79[1];
    v88 = *(v78 + 4);
    v89 = (v86 - v87) * v88;
    if (v85 > v187.f32[1])
    {
      v82 = v187.f32[1] + (_S12 * a4);
    }

    v226 = v89;
    v227 = (v82 + v87) * v88;
    if (v84 >= v187.f32[0])
    {
      v90 = v187.f32[0];
    }

    else
    {
      v90 = v187.f32[0] + (_S10 * a4);
    }

    v91 = *v79;
    v92 = v90 - *v79;
    v93 = *v78;
    v94 = *v78 * v92;
    v95 = *(v83 + 56);
    if (v94 >= 0.0)
    {
      v81 = v95 - 2;
      if (v94 <= (v95 - 2))
      {
        v81 = vcvtms_u32_f32(v94);
      }
    }

    v96 = v53 + (_S11 * a4);
    v228.i32[0] = v81;
    if (v84 <= v187.f32[0])
    {
      v84 = v187.f32[0];
    }

    v97 = v93 * (v84 + v91);
    if (v97 >= 0.0)
    {
      v98 = v95 - 1;
      if (v97 <= (v95 - 1))
      {
        v98 = vcvtps_u32_f32(v97);
      }
    }

    else
    {
      v98 = 0;
    }

    v228.i32[1] = v98;
    if (v96 >= v53)
    {
      v99 = v53;
    }

    else
    {
      v99 = v53 + (_S11 * a4);
    }

    v100 = v79[2];
    v101 = v99 - v100;
    v102 = *(v78 + 8);
    v103 = v102 * v101;
    v104 = *(v83 + 60);
    if (v103 >= 0.0)
    {
      v105 = v104 - 2;
      if (v103 <= (v104 - 2))
      {
        v105 = vcvtms_u32_f32(v103);
      }
    }

    else
    {
      v105 = 0;
    }

    v228.i32[2] = v105;
    if (v96 <= v53)
    {
      v96 = v53;
    }

    v106 = v102 * (v96 + v100);
    v107 = v104 - 1;
    if (v106 >= 0.0)
    {
      v108 = v104 - 1;
      if (v106 <= v107)
      {
        v108 = vcvtps_u32_f32(v106);
      }
    }

    else
    {
      v108 = 0;
    }

    v177 = v13;
    v178 = a8;
    v179 = a9;
    v228.i32[3] = v108;
    v109 = v91 * v93;
    v110 = ceilf(v91 * v93);
    v111 = v100 * v102;
    v112 = ceilf(v100 * v102);
    v224 = vcvtps_s32_f32(v109) + 1;
    v225 = vcvtps_s32_f32(v111) + 1;
    v113 = (v187.f32[0] + (_S10 * *(&v220 + 1))) * v93;
    v114 = 0.0000001 - v110;
    if (v113 > (0.0000001 - v110))
    {
      v114 = (v187.f32[0] + (_S10 * *(&v220 + 1))) * v93;
    }

    if (v114 >= (v110 + ((v95 - 1) * 1.0)))
    {
      v114 = v110 + ((v95 - 1) * 1.0);
    }

    v115 = (v53 + (_S11 * *(&v220 + 1))) * v102;
    v116 = 0.0000001 - v112;
    if (v115 > (0.0000001 - v112))
    {
      v116 = (v53 + (_S11 * *(&v220 + 1))) * v102;
    }

    v117 = v112 + (v107 * 1.0);
    if (v116 < v117)
    {
      v117 = v116;
    }

    v118 = (v187.f32[0] + (_S10 * *&v220)) * v93;
    v119 = (v53 + (_S11 * *&v220)) * v102;
    if ((v118 - v113) < 0.0)
    {
      v120 = -1.0;
    }

    else
    {
      v120 = 1.0;
    }

    if ((v119 - v115) < 0.0)
    {
      v121 = -1.0;
    }

    else
    {
      v121 = 1.0;
    }

    if (vabds_f32(v118, v113) >= 1.0e-10)
    {
      v122 = v118 - v113;
    }

    else
    {
      v122 = v120 * 1.0e-10;
    }

    if (vabds_f32(v119, v115) >= 1.0e-10)
    {
      v123 = v119 - v115;
    }

    else
    {
      v123 = v121 * 1.0e-10;
    }

    v124 = floorf(v114);
    v125 = ceilf(v114);
    v126 = floorf(v117);
    v127 = ceilf(v117);
    if (v123 <= 0.0)
    {
      v128 = v127;
    }

    else
    {
      v128 = v126;
    }

    v129 = v124 + -1.0;
    if (v124 != v114)
    {
      v129 = v124;
    }

    v130 = v125 + 1.0;
    if (v125 != v114)
    {
      v130 = v125;
    }

    if (v122 <= 0.0)
    {
      v131 = v125;
    }

    else
    {
      v131 = v124;
    }

    if (v122 > 0.0)
    {
      v132 = v130;
    }

    else
    {
      v132 = v129;
    }

    v133 = v126 + -1.0;
    if (v126 != v117)
    {
      v133 = v126;
    }

    if (v127 == v117)
    {
      v134 = v127 + 1.0;
    }

    else
    {
      v134 = v127;
    }

    if (v123 <= 0.0)
    {
      v134 = v133;
    }

    v135 = (v132 - v113) / v122;
    v136 = (v134 - v115) / v123;
    if (v135 < 0.0)
    {
      v135 = fabsf(0.0000001 / v122);
    }

    v137 = v131;
    v138 = v128;
    v139 = v120;
    v140 = v121;
    if (v136 < 0.0)
    {
      v136 = fabsf(0.0000001 / v123);
    }

    v141 = 1.0 / fabsf(v122);
    v142 = fabsf(v123);
    if (v139 >= 1)
    {
      v143 = 0;
    }

    else
    {
      v143 = -1;
    }

    if (v140 >= 1)
    {
      v144 = 0;
    }

    else
    {
      v144 = -1;
    }

    v184 = v144;
    v185 = v104;
    v80.i32[1] = 0;
    v182 = v141;
    v183 = 0.0 - v112;
    v145 = v112 + v104;
    v146 = 0.0 - v110;
    v147 = v110 + v95;
    v148 = 1.0 / v142;
    while (1)
    {
      if (v135 >= v136)
      {
        v149 = v136;
      }

      else
      {
        v149 = v135;
      }

      if ((v221.i8[0] & 1) == 0)
      {
        v221.i8[0] = 1;
        v223 = v197;
        *v229 = v185;
        *&v229[4] = v143;
        v230[0] = xmmword_1E3116B20;
        *&v229[8] = v184;
        *&v229[12] = v137 - v224;
        v153 = v224 + v137;
        *&v229[16] = v224 + v137;
        *&v229[20] = v138 - v225;
        v154 = v225 + v138;
        *&v229[24] = v225 + v138;
        if ((v137 - v224) <= (v224 + v137))
        {
          v155 = v137 - v224 + v143;
          v156 = v184;
          v157 = v143;
          do
          {
            if (v155 >= v228.i32[0])
            {
              if (v155 >= v228.i32[1])
              {
                break;
              }

              if (*&v229[20] <= v154)
              {
                v158 = *&v229[20] + v156;
                do
                {
                  if (v158 >= v228.i32[2])
                  {
                    if (v158 >= v228.i32[3])
                    {
                      break;
                    }

                    if (!physx::Gu::HeightFieldTraceUtil::OverlapTraceSegment<CapsuleTraceSegmentReport>::testVertexIndex(&v221, v158 + v155 * *v229))
                    {
                      goto LABEL_151;
                    }

                    v154 = *&v229[24];
                    v156 = *&v229[8];
                  }

                  v160 = v158++ < v154 + v156;
                }

                while (v160);
                v153 = *&v229[16];
                v157 = *&v229[4];
              }
            }

            v160 = v155++ < (v153 + v157);
          }

          while (v160);
          if (v231)
          {
            if (!(*(*v223 + 16))(v223))
            {
              goto LABEL_151;
            }

            v231 = 0;
          }
        }

        goto LABEL_117;
      }

      v150 = v137 - v224;
      LODWORD(v230[0]) = v137 - v224;
      DWORD1(v230[0]) = v224 + v137;
      v151 = v138 - v225;
      DWORD2(v230[0]) = v138 - v225;
      HIDWORD(v230[0]) = v225 + v138;
      if (v137 - v224 != *&v229[12])
      {
        break;
      }

      if (v151 != *&v229[20])
      {
        if (v151 >= *&v229[20])
        {
          v151 = v225 + v138;
        }

        v181 = v151;
        v186 = v137 - v224;
        v152 = 4;
LABEL_111:
        LODWORD(a10) = *(v230 + v152);
        v180 = v137 - v224 == *&v229[12];
      }

      if (v186 <= a10)
      {
        if (v180)
        {
          v163 = *&v229[8] + v181;
          if (*&v229[8] + v181 >= v228.i32[2] && v163 < v228.i32[3])
          {
            v164 = *&v229[4];
            v165 = *&v229[4] + v186;
            do
            {
              if (v165 >= v228.i32[1])
              {
                break;
              }

              if (v165 >= v228.i32[0])
              {
                if (!physx::Gu::HeightFieldTraceUtil::OverlapTraceSegment<CapsuleTraceSegmentReport>::testVertexIndex(&v221, v163 + *v229 * v165))
                {
                  goto LABEL_151;
                }

                v164 = *&v229[4];
              }

              v160 = v165++ < a10 + v164;
            }

            while (v160);
          }
        }

        else
        {
          v166 = *&v229[4] + v181;
          if (*&v229[4] + v181 >= v228.i32[0] && v166 < v228.i32[1])
          {
            v167 = *&v229[8];
            v168 = *&v229[8] + v186;
            do
            {
              if (v168 >= v228.i32[3])
              {
                break;
              }

              if (v168 >= v228.i32[2])
              {
                if (!physx::Gu::HeightFieldTraceUtil::OverlapTraceSegment<CapsuleTraceSegmentReport>::testVertexIndex(&v221, v168 + *v229 * v166))
                {
                  goto LABEL_151;
                }

                v167 = *&v229[8];
              }

              v160 = v168++ < a10 + v167;
            }

            while (v160);
          }
        }
      }

      if (v231)
      {
        if (!(*(*v223 + 16))(v223))
        {
          goto LABEL_151;
        }

        v231 = 0;
      }

      *&v229[12] = v230[0];
LABEL_117:
      if (v135 >= v136)
      {
        v138 += v140;
        v161 = (v138 + v140);
        if (v183 > v161 || v145 <= v161)
        {
LABEL_151:
          a8 = v178;
          a9 = v179;
          v13 = v177;
          goto LABEL_152;
        }

        v136 = v148 + v136;
      }

      else
      {
        v137 += v139;
        v159 = (v137 + v139);
        v160 = v146 <= v159 && v147 > v159;
        if (!v160)
        {
          goto LABEL_151;
        }

        v135 = v182 + v135;
      }

      if (v149 >= 1.0001)
      {
        goto LABEL_151;
      }
    }

    if (v150 >= *&v229[12])
    {
      v150 = v224 + v137;
    }

    v181 = v150;
    v186 = v138 - v225;
    v152 = 12;
    goto LABEL_111;
  }

LABEL_152:
  v169 = v199;
  if (v199 == 1)
  {
    if (HIBYTE(v199) == 1)
    {
      *(a9 + 20) = 1026;
      if ((v198 & 0x200) == 0 || (v170 = *v13, v170.i64[1] = *(v13 + 2), v171 = *(v13 + 3), v171.i64[1] = *(v13 + 5), v80.i32[0] = v13[6], LOBYTE(v224) = 1, *&v229[16] = vdup_lane_s32(v80, 0), v228 = v170, *v229 = v171, LODWORD(v222) = v80.i32[0], HIDWORD(v222) = v80.i32[0], v223 = (v80.u32[0] | 0x400000000), v172 = vaddq_f32(v170, v171), v171.i64[0] = 0x3F0000003F000000, v171.i64[1] = 0x3F0000003F000000, v173 = vmulq_f32(v172, v171), v173.i32[3] = 0, v221 = v173, (physx::Gu::computeCapsule_HeightFieldMTD(a1) & 1) == 0))
      {
        *(a9 + 48) = 0;
        v175 = -a8[1].f32[0];
        *(a9 + 36) = vneg_f32(*a8);
        *(a9 + 44) = v175;
        return v169;
      }

      v174 = *(a9 + 20) | 1;
    }

    else
    {
      v174 = 1027;
    }

    *(a9 + 20) = v174;
  }

  return v169;
}