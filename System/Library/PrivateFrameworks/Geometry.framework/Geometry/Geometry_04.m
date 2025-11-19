uint64_t geom::intersect_line_segment_line_segment<float>(float *a1, _DWORD *a2, int8x8_t a3, int8x8_t a4, int8x8_t a5, int8x8_t a6)
{
  v6 = 0;
  v69[4] = *MEMORY[0x277D85DE8];
  v69[0] = a3;
  v69[1] = a4;
  v69[2] = a5;
  v69[3] = a6;
  v7 = 0x7F0000007FLL;
  v8 = vneg_f32(0x7F0000007FLL);
  do
  {
    v9 = v69[v6];
    v8 = vminnm_f32(v9, v8);
    v7 = vmaxnm_f32(v9, v7);
    ++v6;
  }

  while (v6 != 4);
  v10 = vsub_f32(v7, v8);
  v11 = vcgt_f32(vdup_lane_s32(v10, 1), v10).u8[0];
  v65 = a3;
  v12 = (&v68 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
  v13 = *(&v65 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
  v66 = a4;
  v14 = *(&v66 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(&v66 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
  }

  v67 = a5;
  v16 = *(&v67 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
  v68 = a6;
  if (*v12 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *v12;
  }

  v18 = v15 < v17;
  v19 = (v13 >= v14) ^ v18;
  v20 = (v16 >= *v12) ^ v18;
  if (v19)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  v22 = vdup_n_s32(v21);
  v23 = vbsl_s8(v22, a4, a3);
  if (v20)
  {
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  v25 = vdup_n_s32(v24);
  v26 = vbsl_s8(v25, a5, a6);
  v27 = vbsl_s8(v22, vsub_f32(a3, a4), vsub_f32(a4, a3));
  v28 = vbsl_s8(v25, vsub_f32(a6, a5), vsub_f32(a5, a6));
  v29 = vmul_f32(v27, v27);
  v30 = vmul_f32(v28, v28);
  v31 = vadd_f32(vzip1_s32(v30, v29), vzip2_s32(v30, v29));
  v32 = vabs_f32(v31);
  v33 = vcge_f32(0x3400000034000000, v32);
  v34 = v33.i8[4];
  v35 = v33.i8[0];
  if (v33.i32[1] & v33.i32[0])
  {
    v36 = vsub_f32(v23, v26);
    v37 = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
    v38 = 0;
    if (v37 > 0.00001)
    {
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  v39 = vsub_f32(v26, v23);
  v40 = v34 | v35;
  if (v34)
  {
    v41 = v31.f32[0];
  }

  else
  {
    v41 = v31.f32[1];
  }

  if (v34)
  {
    v42 = -1;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = vbsl_s8(vdup_n_s32(v42), v28, v27);
    if (v34)
    {
      v44 = -1;
    }

    else
    {
      v44 = 0;
    }

    v45 = vbsl_s8(vdup_n_s32(v44), vneg_f32(v39), v39);
    if ((((-v43.f32[1] * v45.f32[0]) + (v43.f32[0] * v45.f32[1])) * ((-v43.f32[1] * v45.f32[0]) + (v43.f32[0] * v45.f32[1]))) > (v41 * 1.0e-10))
    {
      goto LABEL_42;
    }

    v46 = vmul_f32(v43, v45);
    v46.f32[0] = vaddv_f32(v46) / v41;
    v38 = vbic_s8(vdup_lane_s32(v46, 0), vcge_f32(0x3400000034000000, v32));
    goto LABEL_32;
  }

  v26.f32[0] = (-v27.f32[1] * v28.f32[0]) + (v27.f32[0] * v28.f32[1]);
  if (fabsf(v26.f32[0] * v26.f32[0]) > ((v31.f32[1] * v31.f32[0]) * 1.0e-10))
  {
    v38 = vdiv_f32(vmla_n_f32(vmul_n_f32(vzip1_s32(v27, v28), -v39.f32[1]), vzip2_s32(v27, v28), v39.f32[0]), vdup_lane_s32(v26, 0));
LABEL_32:
    v47 = (v31.f32[1] * v31.f32[0]) + 1.0;
    v48 = -(v47 * 0.000005);
    v49 = vneg_f32(0x3F0000003FLL);
    if (v38.f32[1] < v48 || ((v50 = (v47 * 0.000005) + 1.0, v38.f32[1] <= v50) ? (_NF = v38.f32[0] < v48) : (_NF = 1), !_NF ? (v52 = v38.f32[0] <= v50) : (v52 = 0), !v52))
    {
      v53 = 0;
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (fabsf(((v39.f32[0] * v27.f32[1]) - (v39.f32[1] * v27.f32[0])) * ((v39.f32[0] * v27.f32[1]) - (v39.f32[1] * v27.f32[0]))) > ((v31.f32[1] * vaddv_f32(vmul_f32(v39, v39))) * 1.0e-10))
  {
LABEL_42:
    v53 = 0;
    v49 = vneg_f32(0x3F0000003FLL);
    goto LABEL_47;
  }

  v54 = vmul_f32(v27, v39);
  v55 = vmul_f32(v28, vneg_f32(v39));
  v38 = vdiv_f32(vadd_f32(vzip1_s32(v55, v54), vzip2_s32(v55, v54)), v31);
  v56 = vcge_f32(vdup_n_s32(0x36A7C5ACu), vabs_f32(v38));
  if ((v56.i32[1] | v56.i32[0]))
  {
    v38 = 0;
LABEL_45:
    v53 = 1;
LABEL_46:
    v57 = vbic_s8(v38, vcltz_f32(v38));
    __asm { FMOV            V1.2S, #1.0 }

    v49 = vbsl_s8(vcgt_f32(v57, _D1), _D1, v57);
    goto LABEL_47;
  }

  v53 = 0;
  v49 = vneg_f32(0x3F0000003FLL);
  if (v38.f32[1] >= 0.0 && v38.f32[0] >= 0.0)
  {
    v53 = 2;
    goto LABEL_46;
  }

LABEL_47:
  if (a1)
  {
    v62 = v49.f32[1];
    if (v19)
    {
      v62 = 1.0 - v49.f32[1];
    }

    *a1 = v62;
  }

  if (a2)
  {
    if (!v20)
    {
      v49.f32[0] = 1.0 - v49.f32[0];
    }

    *a2 = v49.i32[0];
  }

  v63 = *MEMORY[0x277D85DE8];
  return v53;
}

uint64_t geom::intersect_line_segment_line_segment<double>(double *a1, void *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6)
{
  v6 = 0;
  v63 = *MEMORY[0x277D85DE8];
  v62[0] = a3;
  v62[1] = a4;
  v62[2] = a5;
  v62[3] = a6;
  v7 = vdupq_n_s64(0x7FF0000000000000uLL);
  v8 = vdupq_n_s64(0xFFF0000000000000);
  do
  {
    v9 = v62[v6];
    v7 = vminnmq_f64(v9, v7);
    v8 = vmaxnmq_f64(v9, v8);
    ++v6;
  }

  while (v6 != 4);
  v10 = vsubq_f64(v8, v7);
  v11 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v10, 1), v10)).u8[0];
  v58 = a3;
  v12 = (&v61 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1)));
  v13 = *(&v58 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1)));
  v59 = a4;
  v14 = *(&v59 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1)));
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(&v59 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1)));
  }

  v60 = a5;
  v16 = *(&v60 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1)));
  v61 = a6;
  if (*v12 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *v12;
  }

  v18 = v15 < v17;
  v19 = (v13 >= v14) ^ v18;
  v20 = (v16 >= *v12) ^ v18;
  if (v19)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  v22 = vdupq_n_s64(v21);
  v23 = vbslq_s8(v22, a4, a3);
  if (v20)
  {
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  v25 = vdupq_n_s64(v24);
  v26 = vbslq_s8(v25, a5, a6);
  v27 = vbslq_s8(v22, vsubq_f64(a3, a4), vsubq_f64(a4, a3));
  v28 = vbslq_s8(v25, vsubq_f64(a6, a5), vsubq_f64(a5, a6));
  v29 = vpaddq_f64(vmulq_f64(v28, v28), vmulq_f64(v27, v27));
  v30 = vabsq_f64(v29);
  v31 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3CB0000000000000uLL), v30));
  if (v31.i8[4] & v31.i8[0])
  {
    v32 = vsubq_f64(v23, v26);
    v33 = sqrt(vaddvq_f64(vmulq_f64(v32, v32)));
    v34 = 0uLL;
    if (v33 > 0.000001)
    {
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  v35 = vsubq_f64(v26, v23);
  if (v31.i8[4])
  {
    v36 = v29.f64[0];
  }

  else
  {
    v36 = v29.f64[1];
  }

  if (v31.i8[4])
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  if ((v31.i8[4] | v31.i8[0]))
  {
    v38 = vbslq_s8(vdupq_n_s64(v37), v28, v27);
    if (v31.i8[4])
    {
      v39 = -1;
    }

    else
    {
      v39 = 0;
    }

    v40 = vbslq_s8(vdupq_n_s64(v39), vnegq_f64(v35), v35);
    if ((-v38.f64[1] * v40.f64[0] + v38.f64[0] * v40.f64[1]) * (-v38.f64[1] * v40.f64[0] + v38.f64[0] * v40.f64[1]) > v36 * 1.0e-12)
    {
      goto LABEL_42;
    }

    v34 = vbicq_s8(vdupq_lane_s64(COERCE__INT64(vaddvq_f64(vmulq_f64(v38, v40)) / v36), 0), vcgeq_f64(vdupq_n_s64(0x3CB0000000000000uLL), v30));
    goto LABEL_32;
  }

  v41 = -v27.f64[1] * v28.f64[0] + v27.f64[0] * v28.f64[1];
  if (fabs(v41 * v41) > v29.f64[1] * v29.f64[0] * 1.0e-12)
  {
    v34 = vdivq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v27, v28), -v35.f64[1]), vzip2q_s64(v27, v28), v35.f64[0]), vdupq_lane_s64(*&v41, 0));
LABEL_32:
    v42 = v29.f64[1] * v29.f64[0] + 1.0;
    v43 = -(v42 * 1.0e-10);
    v44 = vdupq_n_s64(0x7FF8000000000000uLL);
    if (v34.f64[1] < v43 || ((v45 = v42 * 1.0e-10 + 1.0, v34.f64[1] <= v45) ? (_NF = v34.f64[0] < v43) : (_NF = 1), !_NF ? (v47 = v34.f64[0] <= v45) : (v47 = 0), !v47))
    {
      v48 = 0;
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (fabs((v35.f64[0] * v27.f64[1] - v35.f64[1] * v27.f64[0]) * (v35.f64[0] * v27.f64[1] - v35.f64[1] * v27.f64[0])) > v29.f64[1] * vaddvq_f64(vmulq_f64(v35, v35)) * 1.0e-12)
  {
LABEL_42:
    v48 = 0;
    v44 = vdupq_n_s64(0x7FF8000000000000uLL);
    goto LABEL_47;
  }

  v34 = vdivq_f64(vpaddq_f64(vmulq_f64(v28, vnegq_f64(v35)), vmulq_f64(v27, v35)), v29);
  v49 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL), vabsq_f64(v34)));
  if ((v49.i32[1] | v49.i32[0]))
  {
    v34 = 0uLL;
LABEL_45:
    v48 = 1;
LABEL_46:
    v50 = vbicq_s8(v34, vcltzq_f64(v34));
    __asm { FMOV            V1.2D, #1.0 }

    v44 = vbslq_s8(vcgtq_f64(v50, _Q1), _Q1, v50);
    goto LABEL_47;
  }

  v48 = 0;
  v44 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (v34.f64[1] >= 0.0 && v34.f64[0] >= 0.0)
  {
    v48 = 2;
    goto LABEL_46;
  }

LABEL_47:
  if (a1)
  {
    v55 = *&v44.i64[1];
    if (v19)
    {
      v55 = 1.0 - *&v44.i64[1];
    }

    *a1 = v55;
  }

  if (a2)
  {
    if (!v20)
    {
      *v44.i64 = 1.0 - *v44.i64;
    }

    *a2 = v44.i64[0];
  }

  v56 = *MEMORY[0x277D85DE8];
  return v48;
}

uint64_t geom::intersect_line_line_segment<float>(uint64_t a1, int a2, float *a3, float32x2_t a4, float32x2_t a5, double a6, double a7, double a8, double _D5)
{
  if ((*&a2 * *&a2) <= (vaddv_f32(vmul_f32(a1, a1)) * 1.0e-10))
  {
    v12 = 0;
  }

  else
  {
    v10 = fabsf(*(&a1 + 1)) > COERCE_FLOAT(a1 & 0x7FFFFFFF);
    v41 = a1;
    v11 = -*&a2 / *(&v41 | (4 * v10));
    v42 = 0;
    *(&v42 & 0xFFFFFFFFFFFFFFFBLL | (4 * v10)) = v11;
    v12 = v42;
  }

  *&_D5 = -*(&a1 + 1);
  v13 = vzip1_s32(*&_D5, a1);
  _D1 = vsub_f32(a5, a4);
  v15 = vmul_f32(v13, v13);
  v16 = vaddv_f32(v15);
  v17 = vmul_f32(_D1, _D1);
  v18 = vaddv_f32(v17);
  v9.f32[0] = fabsf(v16);
  v19 = fabsf(v18);
  if (v19 <= 0.00000011921 && v9.f32[0] <= 0.00000011921)
  {
    v27 = vsub_f32(v12, a4);
    v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27)));
    v26 = 0.0;
    if (v28 > 0.00001)
    {
      v29 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v21 = vsub_f32(a4, v12);
  if (v9.f32[0] > 0.00000011921)
  {
    v22 = v16;
  }

  else
  {
    v22 = v18;
  }

  if (v19 <= 0.00000011921 || v9.f32[0] <= 0.00000011921)
  {
    v24 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, v9), 0), _D1, v13);
    v25 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, v9), 0), vneg_f32(v21), v21);
    if ((((-v24.f32[1] * v25.f32[0]) + (v24.f32[0] * v25.f32[1])) * ((-v24.f32[1] * v25.f32[0]) + (v24.f32[0] * v25.f32[1]))) <= (v22 * 1.0e-10))
    {
      v26 = vaddv_f32(vmul_f32(v24, v25)) / v22;
      if (v19 <= 0.00000011921)
      {
        v26 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_26:
    v29 = 0;
    v26 = 0.0;
    goto LABEL_28;
  }

  v30 = vadd_f32(v15, vdup_lane_s32(v15, 1));
  v31 = vadd_f32(v17, vdup_lane_s32(v17, 1));
  __asm { FMLA            S16, S5, V1.S[1] }

  if (fabsf(_S16 * _S16) > (1.0e-10 * vmul_f32(v31, v30).f32[0]))
  {
    v26 = (vmuls_lane_f32(*(&a1 + 1), v21, 1) + (v21.f32[0] * *&a1)) / _S16;
LABEL_24:
    v29 = 1;
    goto LABEL_28;
  }

  v36 = vmul_f32(v21, v21);
  v37 = vmuls_lane_f32(*(&a1 + 1), v21, 1);
  if (fabsf((v37 + (v21.f32[0] * *&a1)) * (v37 + (v21.f32[0] * *&a1))) > (1.0e-10 * vmul_f32(v30, vadd_f32(v36, vdup_lane_s32(v36, 1))).f32[0]))
  {
    goto LABEL_26;
  }

  v38 = vmul_f32(_D1, vneg_f32(v21));
  LODWORD(v26) = vdiv_f32(vadd_f32(v38, vdup_lane_s32(v38, 1)), v31).u32[0];
  v29 = 2;
LABEL_28:
  if (v26 > 1.0 || v26 < 0.0)
  {
    result = 0;
  }

  else
  {
    result = v29;
  }

  if (a3)
  {
    if (!result)
    {
      v26 = NAN;
    }

    *a3 = v26;
  }

  return result;
}

uint64_t geom::intersect_line_line_segment<double>(float64x2_t *a1, double *a2, float64x2_t a3, float64x2_t a4, double a5, double a6, double a7, double a8, int64x2_t _Q6)
{
  v11 = a1[1].f64[0];
  v12 = *a1;
  v13 = a1->f64[1];
  if (v11 * v11 <= vaddvq_f64(vmulq_f64(v12, v12)) * 1.0e-12)
  {
    v16 = 0uLL;
  }

  else
  {
    v14 = fabs(v12.f64[1]) > fabs(v12.f64[0]);
    v46 = *a1;
    v15 = -v11 / *(&v46 | (8 * v14));
    _Q6.i64[1] = 0;
    v47 = 0u;
    *(&v47 & 0xFFFFFFFFFFFFFFF7 | (8 * v14)) = v15;
    v16 = v47;
  }

  *_Q6.i64 = -v13;
  v17 = vzip1q_s64(_Q6, v12);
  _Q1 = vsubq_f64(a4, a3);
  v19 = vmulq_f64(v17, v17);
  v20 = vaddvq_f64(v19);
  v21 = vmulq_f64(_Q1, _Q1);
  v22 = vaddvq_f64(v21);
  v9.f64[0] = fabs(v20);
  v23 = fabs(v22);
  if (v23 <= 2.22044605e-16 && v9.f64[0] <= 2.22044605e-16)
  {
    v32 = vsubq_f64(v16, a3);
    v33 = sqrt(vaddvq_f64(vmulq_f64(v32, v32)));
    v31 = 0.0;
    if (v33 > 0.000001)
    {
      v34 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v25 = vsubq_f64(a3, v16);
  v10.f64[0] = 2.22044605e-16;
  if (v9.f64[0] > 2.22044605e-16)
  {
    v26 = v20;
  }

  else
  {
    v26 = v22;
  }

  if (v23 <= 2.22044605e-16 || v9.f64[0] <= 2.22044605e-16)
  {
    v28 = vdupq_lane_s64(vcgeq_f64(v10, v9).i64[0], 0);
    v29 = vbslq_s8(v28, _Q1, v17);
    v28.f64[0] = 2.22044605e-16;
    v30 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v28, v9).i64[0], 0), vnegq_f64(v25), v25);
    if ((-v29.f64[1] * v30.f64[0] + v29.f64[0] * v30.f64[1]) * (-v29.f64[1] * v30.f64[0] + v29.f64[0] * v30.f64[1]) <= v26 * 1.0e-12)
    {
      v31 = vaddvq_f64(vmulq_f64(v29, v30)) / v26;
      if (v23 <= 2.22044605e-16)
      {
        v31 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_26:
    v34 = 0;
    v31 = 0.0;
    goto LABEL_28;
  }

  v35 = vaddq_f64(v19, vdupq_laneq_s64(v19, 1));
  v36 = vaddq_f64(v21, vdupq_laneq_s64(v21, 1));
  __asm { FMLA            D16, D6, V1.D[1] }

  if (fabs(_D16 * _D16) > 1.0e-12 * vmulq_f64(v36, v35).f64[0])
  {
    v31 = (vmuld_lane_f64(v13, v25, 1) + v25.f64[0] * v12.f64[0]) / _D16;
LABEL_24:
    v34 = 1;
    goto LABEL_28;
  }

  v41 = vmulq_f64(v25, v25);
  v42 = vmuld_lane_f64(v13, v25, 1);
  if (fabs((v42 + v25.f64[0] * v12.f64[0]) * (v42 + v25.f64[0] * v12.f64[0])) > 1.0e-12 * vmulq_f64(v35, vaddq_f64(v41, vdupq_laneq_s64(v41, 1))).f64[0])
  {
    goto LABEL_26;
  }

  v43 = vmulq_f64(_Q1, vnegq_f64(v25));
  *&v31 = *&vdivq_f64(vaddq_f64(v43, vdupq_laneq_s64(v43, 1)), v36);
  v34 = 2;
LABEL_28:
  if (v31 > 1.0 || v31 < 0.0)
  {
    result = 0;
  }

  else
  {
    result = v34;
  }

  if (a2)
  {
    if (!result)
    {
      v31 = NAN;
    }

    *a2 = v31;
  }

  return result;
}

uint64_t geom::intersect_line_line<float>(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  v5 = vmul_f32(a1, a1);
  v6 = vmul_f32(a3, a3);
  v7 = vaddv_f32(v6);
  if (vaddv_f32(v5) <= 0.00000011921 || v7 <= 0.00000011921)
  {
    return 0;
  }

  v10 = *&a2;
  v11 = *&a1;
  v12 = vadd_f32(v6, vdup_lane_s32(v6, 1));
  v13 = (*&a1 * *(&a3 + 1)) - (*(&a1 + 1) * *&a3);
  v14 = 1.0e-10 * vmul_f32(vadd_f32(v5, vdup_lane_s32(v5, 1)), v12).f32[0];
  if ((v13 * v13) <= v14)
  {
    v26[0] = a1;
    v26[1] = a3;
    v16 = 4;
    v17 = v26;
    do
    {
      if (v11 < *(v26 + v16))
      {
        v11 = *(v26 + v16);
        v17 = v26 + v16;
      }

      v16 += 4;
    }

    while (v16 != 16);
    v18 = vceqd_s64((v17 - v26) & 0x3F8, 0);
    v19 = vbsl_s8(v18, a1, a3);
    v20 = vbsl_s8(v18, a3, a1);
    if (((v17 - v26) & 0x3F8) != 0)
    {
      v21 = *&a4;
    }

    else
    {
      v21 = *&a2;
    }

    if (((v17 - v26) & 0x3F8) == 0)
    {
      v10 = *&a4;
    }

    v24 = v20;
    v22 = *(&v24 | (4 * (((v17 - v26) >> 2) & 1))) * v21;
    v25 = v19;
    v23 = *(&v25 & 0xFFFFFFFFFFFFFFFBLL | (4 * (((v17 - v26) >> 2) & 1)));
    return 2 * (((v10 - (v22 / v23)) * (v10 - (v22 / v23))) <= v14);
  }

  else
  {
    if (a5)
    {
      *&v15 = ((*(&a1 + 1) * *&a4) - (*(&a3 + 1) * *&a2)) / v13;
      *(&v15 + 1) = ((*&a1 * *&a4) - (*&a3 * *&a2)) / -v13;
      *a5 = v15;
    }

    return 1;
  }
}

uint64_t geom::intersect_line_line<double>(float64x2_t *a1, float64x2_t *a2, _OWORD *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = vmulq_f64(v3, v3);
  v6 = vmulq_f64(v4, v4);
  v7 = vaddvq_f64(v6);
  if (vaddvq_f64(v5) <= 2.22044605e-16 || v7 <= 2.22044605e-16)
  {
    return 0;
  }

  v10 = vaddq_f64(v6, vdupq_laneq_s64(v6, 1));
  v11 = -v4.f64[0];
  v12 = vmuld_lane_f64(-v4.f64[0], v3, 1) + v3.f64[0] * v4.f64[1];
  v13 = 1.0e-12 * vmulq_f64(vaddq_f64(v5, vdupq_laneq_s64(v5, 1)), v10).f64[0];
  if (v12 * v12 <= v13)
  {
    v21[0] = *a1;
    v21[1] = v4;
    v16 = 8;
    v17 = v21;
    do
    {
      if (v3.f64[0] < *(v21 + v16))
      {
        v3.f64[0] = *(v21 + v16);
        v17 = v21 + v16;
      }

      v16 += 8;
    }

    while (v16 != 32);
    if (((v17 - v21) & 0x7F0) != 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = a1;
    }

    if (((v17 - v21) & 0x7F0) != 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = a2;
    }

    v20 = v19[1].f64[0] - *(v19->f64 + (v17 & 8)) * v18[1].f64[0] / *(v18->f64 + (v17 & 8));
    return 2 * (v20 * v20 <= v13);
  }

  else
  {
    if (a3)
    {
      v14 = a1[1].f64[0];
      v4.f64[0] = a2[1].f64[0];
      *&v15 = (v3.f64[1] * v4.f64[0] - v4.f64[1] * v14) / v12;
      *(&v15 + 1) = (v14 * v11 + v3.f64[0] * v4.f64[0]) / -v12;
      *a3 = v15;
    }

    return 1;
  }
}

uint64_t geom_arap_deformer_create_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 3 * a3;
  v8 = geom_arap_deformer_3f_obj_alloc();
  geom::arap_deformer<float>::arap_deformer(v8 + 16, a2, a1, a4, v7);
  return v8;
}

void *geom_arap_deformer_deformed_vertices_3f(uint64_t a1, uint64_t a2)
{
  v3 = geom::arap_deformer<float>::deformed_vertices(a1 + 16);
  result = geom::collection_to_vector<float>(a2);
  if (result != v3)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = &v6[-*v3] >> 4;

    return _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPS1_S6_EEvT_T0_l(result, v5, v6, v7);
  }

  return result;
}

uint64_t geom_arap_deformer_create_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 3 * a3;
  v8 = geom_arap_deformer_3d_obj_alloc();
  geom::arap_deformer<double>::arap_deformer(v8 + 16, a2, a1, a4, v7);
  return v8;
}

void *geom_arap_deformer_deformed_vertices_3d(uint64_t a1, uint64_t a2)
{
  v3 = geom::arap_deformer<float>::deformed_vertices(a1 + 16);
  result = geom::collection_to_vector<float>(a2);
  if (result != v3)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = &v6[-*v3] >> 5;

    return _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPS1_S6_EEvT_T0_l(result, v5, v6, v7);
  }

  return result;
}

uint64_t geom::polynomial_roots(geom *this, uint64_t a2, const double *a3, double *a4)
{
  v4 = MEMORY[0x28223BE20](this, a2);
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  v36[4095] = *MEMORY[0x277D85DE8];
  v12 = v4 - 1;
  v34 = v12;
  v13 = (v12 + v12 * v4);
  if (v4 >= 4 && fabs(v5[v12]) <= 0.000001)
  {
    v11 = geom::polynomial_roots((v4 - 1), v5, v6, v7);
  }

  if (v13 <= 0xFFF)
  {
    if (v10 < 3)
    {
      v16 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = vdupq_n_s64(v12 - 1);
      v18 = v36;
      v19 = vdupq_n_s64(2uLL);
      do
      {
        ++v15;
        v20 = v18;
        v21 = v10 & 0xFE;
        v22 = v14;
        v23 = xmmword_2500C1680;
        do
        {
          v24 = vmovn_s64(vcgeq_u64(v17, v23));
          if (v24.i8[0])
          {
            if (v22 == 1)
            {
              v25 = 1.0;
            }

            else
            {
              v25 = 0.0;
            }

            *(v20 - 1) = v25;
          }

          if (v24.i8[4])
          {
            if (v22)
            {
              v26 = 0.0;
            }

            else
            {
              v26 = 1.0;
            }

            *v20 = v26;
          }

          v23 = vaddq_s64(v23, v19);
          v22 += 2;
          v20 += 2;
          v21 -= 2;
        }

        while (v21);
        v16 += v12;
        --v14;
        v18 += v12;
      }

      while (v15 != v10 - 2);
    }

    if (v10 >= 2)
    {
      v27 = v9[v12];
      v28 = &v35[8 * v16];
      do
      {
        v29 = *v9++;
        *v28++ = -v29 / v27;
        --v12;
      }

      while (v12);
    }

    dgeev_NEWLAPACK();
    if ((v13 + 0.0) < 0x1000)
    {
      v30 = &v35[8 * v34 * v34];
      dgeev_NEWLAPACK();
      v31 = v34;
      if (v34 >= 1)
      {
        do
        {
          if (v30[v34] == 0.0)
          {
            v8[v11++] = *v30;
          }

          ++v30;
          --v31;
        }

        while (v31);
      }
    }
  }

  std::__sort<std::__less<double,double> &,double *>();
  v32 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t geom_quadratic_roots_f(float *a1, float *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (fabsf(v3) <= 0.00001)
  {
    if (fabsf(v2) > 0.00001)
    {
      *a2 = -v4 / v2;
      return 1;
    }

    return 0;
  }

  v5 = ((v3 * -4.0) * v4) + (v2 * v2);
  if (v5 < 0.0)
  {
    return 0;
  }

  v6 = 1.0;
  if (v2 < 0.0)
  {
    v6 = -1.0;
  }

  v7 = (v2 + (v6 * sqrtf(v5))) * -0.5;
  v8 = v4 / v7;
  *a2 = v7 / v3;
  a2[1] = v8;
  if (v8 < (v7 / v3))
  {
    *a2 = v8;
    a2[1] = v7 / v3;
  }

  if (v5 <= 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t geom_quadratic_roots_d(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (fabs(v3) <= 0.000001)
  {
    if (fabs(v2) > 0.000001)
    {
      *a2 = -v4 / v2;
      return 1;
    }

    return 0;
  }

  v5 = v3 * -4.0 * v4 + v2 * v2;
  if (v5 < 0.0)
  {
    return 0;
  }

  v6 = 1.0;
  if (v2 < 0.0)
  {
    v6 = -1.0;
  }

  v7 = (v2 + v6 * sqrt(v5)) * -0.5;
  v8 = v4 / v7;
  *a2 = v7 / v3;
  a2[1] = v8;
  if (v8 < v7 / v3)
  {
    *a2 = v8;
    a2[1] = v7 / v3;
  }

  if (v5 <= 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t geom::cubic_roots<float>(float *a1, float *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (fabsf(v4) > 0.00001)
  {
    v5 = v3 / v4;
    v6 = a1[1] / v4;
    v7 = ((v5 * v5) + (v6 * -3.0)) / 9.0;
    v8 = v7 * (v7 * v7);
    v9 = ((((v5 * -9.0) * v6) + ((v5 * (v5 * v5)) * 2.0)) + ((*a1 / v4) * 27.0)) / 54.0;
    if ((v9 * v9) < v8)
    {
      v10 = acosf(v9 / sqrtf(v8));
      v11 = sqrtf(v7) * -2.0;
      v12 = v5 / -3.0;
      *a2 = v12 + (v11 * cosf(v10 / 3.0));
      v13 = v12;
      v14 = v10;
      v15 = v13 + v11 * cos((v14 + 6.28318531) / 3.0);
      a2[1] = v15;
      v16 = v13 + v11 * cos((v14 + -6.28318531) / 3.0);
      a2[2] = v16;
      std::__sort<std::__less<float,float> &,float *>();
      return 3;
    }

    v25 = powf(fabsf(v9) + sqrtf(-(v8 - (v9 * v9))), 0.33333);
    v26 = -v25;
    if (v9 < 0.0)
    {
      v26 = v25;
    }

    v27 = fabsf(v25) > 0.00001;
    v28 = 0.0;
    if (v27)
    {
      v28 = v7 / v26;
    }

    v29 = (v26 + v28) + (v5 / -3.0);
    goto LABEL_21;
  }

  v18 = *a1;
  v19 = a1[1];
  if (fabsf(v3) <= 0.00001)
  {
    if (fabsf(v19) > 0.00001)
    {
      v29 = -v18 / v19;
LABEL_21:
      *a2 = v29;
      return 1;
    }

    return 0;
  }

  v20 = ((v3 * -4.0) * v18) + (v19 * v19);
  if (v20 < 0.0)
  {
    return 0;
  }

  v21 = 1.0;
  if (v19 < 0.0)
  {
    v21 = -1.0;
  }

  v22 = (v19 + (v21 * sqrtf(v20))) * -0.5;
  v23 = v22 / v3;
  v24 = v18 / v22;
  *a2 = v23;
  a2[1] = v24;
  if (v24 < v23)
  {
    *a2 = v24;
    a2[1] = v23;
  }

  if (v20 <= 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t geom::cubic_roots<double>(double *a1, long double *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (fabs(v4) > 0.000001)
  {
    v5 = v3 / v4;
    v6 = a1[1] / v4;
    v7 = (v5 * v5 + v6 * -3.0) / 9.0;
    v8 = v7 * (v7 * v7);
    v9 = (v5 * -9.0 * v6 + v5 * (v5 * v5) * 2.0 + *a1 / v4 * 27.0) / 54.0;
    if (v9 * v9 < v8)
    {
      v10 = acos(v9 / sqrt(v8));
      v11 = sqrt(v7) * -2.0;
      v12 = v5 / -3.0;
      *a2 = v12 + v11 * cos(v10 / 3.0);
      a2[1] = v12 + v11 * cos((v10 + 6.28318531) / 3.0);
      a2[2] = v12 + v11 * cos((v10 + -6.28318531) / 3.0);
      std::__sort<std::__less<double,double> &,double *>();
      return 3;
    }

    v21 = pow(fabs(v9) + sqrt(-(v8 - v9 * v9)), 0.333333333);
    v22 = -v21;
    if (v9 < 0.0)
    {
      v22 = v21;
    }

    v23 = fabs(v21) > 0.000001;
    v24 = 0.0;
    if (v23)
    {
      v24 = v7 / v22;
    }

    v25 = v22 + v24 + v5 / -3.0;
    goto LABEL_21;
  }

  v14 = *a1;
  v15 = a1[1];
  if (fabs(v3) <= 0.000001)
  {
    if (fabs(v15) > 0.000001)
    {
      v25 = -v14 / v15;
LABEL_21:
      *a2 = v25;
      return 1;
    }

    return 0;
  }

  v16 = v3 * -4.0 * v14 + v15 * v15;
  if (v16 < 0.0)
  {
    return 0;
  }

  v17 = 1.0;
  if (v15 < 0.0)
  {
    v17 = -1.0;
  }

  v18 = (v15 + v17 * sqrt(v16)) * -0.5;
  v19 = v18 / v3;
  v20 = v14 / v18;
  *a2 = v19;
  a2[1] = v20;
  if (v20 < v19)
  {
    *a2 = v20;
    a2[1] = v19;
  }

  if (v16 <= 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t geom_polynomial_roots_f(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v6 = v5;
  v7 = 0;
  v15[256] = *MEMORY[0x277D85DE8];
  do
  {
    *&v15[v7] = *(v3 + 4 * v7);
    ++v7;
  }

  while (v2 + 1 != v7);
  result = geom::polynomial_roots(v2, v15, v14, v4);
  if (result)
  {
    v9 = result;
    v10 = v14;
    do
    {
      v11 = *v10++;
      v12 = v11;
      *v6++ = v12;
      --v9;
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_create_quadtree_create_opt_f()
{
  result = geom_quadtree_create_opt_f_obj_alloc();
  *(result + 20) = 0;
  *(result + 16) = 68097;
  return result;
}

uint64_t geom_create_quadtree_f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a3 + 16))
    {
      operator new[]();
    }

    v5 = a2;
    v6 = a1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 0;
  v3 = _ZN4geom24construct_runtime_objectIP17geom_quadtree_f_sJNS_14external_arrayIDv2_fEERKhRKtRKbEEET_DpOT0_(&v5, (a3 + 17), (a3 + 18), (a3 + 20));
  if (v7 == 1 && v5)
  {
    MEMORY[0x25305E3D0](v5, 0x1000C8000313F17);
  }

  return v3;
}

void sub_24FFCC410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    geom_create_quadtree_f_cold_1(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN4geom24construct_runtime_objectIP17geom_quadtree_f_sJNS_14external_arrayIDv2_fEERKhRKtRKbEEET_DpOT0_(uint64_t a1, unsigned __int8 *a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  v8 = geom_quadtree_f_obj_alloc();
  v9 = *(a1 + 8);
  v11[0] = *a1;
  v11[1] = v9;
  v12 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  geom::point_tree<float,(unsigned char)2>::point_tree(v8 + 16, v11, *a2, *a3, *a4);
  if (v12 == 1 && v11[0])
  {
    MEMORY[0x25305E3D0](v11[0], 0x1000C8000313F17);
  }

  return v8;
}

void sub_24FFCC4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    geom_create_quadtree_f_cold_1(&a10);
  }

  _Unwind_Resume(exception_object);
}

double geom_quadtree_get_bbox_f(uint64_t a1)
{
  result = *(a1 + 24);
  v2 = *(a1 + 32);
  return result;
}

uint64_t geom_quadtree_get_node_child_f(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a1 + 152) + 8 * a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 + a3;
  }
}

uint64_t geom_quadtree_get_data_f(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (*(a1 + 200) + 16 * a2);
  v4 = *v3;
  v5 = *(a1 + 80);
  if (a3)
  {
    *a3 = v3[1] - v4;
  }

  return v5 + 8 * v4;
}

void geom_quadtree_find_k_nearest_f(uint64_t a1, unsigned int a2, uint64_t a3, float32x2_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);

  geom::point_tree<float,(unsigned char)2>::find_k_nearest(a1 + 16, a2, v7, a4);
}

void geom_quadtree_traverse_f(uint64_t a1, int a2, void *aBlock)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = _Block_copy(aBlock);
  v7[0] = &unk_2862905F8;
  v7[1] = a1;
  v7[2] = _Block_copy(v5);
  v7[3] = v7;
  geom::point_tree<float,(unsigned char)2>::traverse(a1 + 16, a2, v7);
  std::__function::__value_func<void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::~__value_func[abi:nn200100](v7);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24FFCC6E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t geom_create_quadtree_create_opt_d()
{
  result = geom_quadtree_create_opt_d_obj_alloc();
  *(result + 20) = 0;
  *(result + 16) = 68097;
  return result;
}

uint64_t geom_create_quadtree_d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a3 + 16))
    {
      operator new[]();
    }

    v5 = a2;
    v6 = a1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 0;
  v3 = _ZN4geom24construct_runtime_objectIP17geom_quadtree_d_sJNS_14external_arrayIDv2_dEERKhRKtRKbEEET_DpOT0_(&v5, (a3 + 17), (a3 + 18), (a3 + 20));
  if (v7 == 1 && v5)
  {
    MEMORY[0x25305E3D0](v5, 0x1000C80451B5BE8);
  }

  return v3;
}

void sub_24FFCC854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    geom_create_quadtree_d_cold_1(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN4geom24construct_runtime_objectIP17geom_quadtree_d_sJNS_14external_arrayIDv2_dEERKhRKtRKbEEET_DpOT0_(uint64_t a1, unsigned __int8 *a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  v8 = geom_quadtree_d_obj_alloc();
  v9 = *(a1 + 8);
  v11[0] = *a1;
  v11[1] = v9;
  v12 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  geom::point_tree<double,(unsigned char)2>::point_tree(v8 + 16, v11, *a2, *a3, *a4);
  if (v12 == 1 && v11[0])
  {
    MEMORY[0x25305E3D0](v11[0], 0x1000C80451B5BE8);
  }

  return v8;
}

void sub_24FFCC91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    geom_create_quadtree_d_cold_1(&a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 geom_quadtree_get_bbox_d(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  return result;
}

uint64_t geom_quadtree_get_node_child_d(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a1 + 192) + 8 * a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 + a3;
  }
}

uint64_t geom_quadtree_get_data_d(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (*(a1 + 240) + 16 * a2);
  v4 = *v3;
  v5 = *(a1 + 120);
  if (a3)
  {
    *a3 = v3[1] - v4;
  }

  return v5 + 8 * v4;
}

void geom_quadtree_find_k_nearest_d(uint64_t a1, unsigned int a2, uint64_t a3, float64x2_t a4)
{
  v6 = geom::collection_to_vector<float>(a3);

  geom::point_tree<double,(unsigned char)2>::find_k_nearest((a1 + 16), a2, v6, a4);
}

void geom_quadtree_traverse_d(uint64_t a1, int a2, void *aBlock)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = _Block_copy(aBlock);
  v7[0] = &unk_286290688;
  v7[1] = a1;
  v7[2] = _Block_copy(v5);
  v7[3] = v7;
  geom::point_tree<double,(unsigned char)2>::traverse(a1 + 16, a2, v7);
  std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::~__value_func[abi:nn200100](v7);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24FFCCB24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t geom_create_octree_create_opt_f()
{
  result = geom_octree_create_opt_f_obj_alloc();
  *(result + 20) = 0;
  *(result + 16) = 68097;
  return result;
}

uint64_t geom_create_octree_f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a3 + 16))
    {
      operator new[]();
    }

    v5 = a2;
    v6 = a1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 0;
  v3 = _ZN4geom24construct_runtime_objectIP15geom_octree_f_sJNS_14external_arrayIDv3_fEERKhRKtRKbEEET_DpOT0_(&v5, (a3 + 17), (a3 + 18), (a3 + 20));
  if (v7 == 1 && v5)
  {
    MEMORY[0x25305E3D0](v5, 0x1000C80451B5BE8);
  }

  return v3;
}

void sub_24FFCCC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    geom_create_quadtree_d_cold_1(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN4geom24construct_runtime_objectIP15geom_octree_f_sJNS_14external_arrayIDv3_fEERKhRKtRKbEEET_DpOT0_(uint64_t a1, unsigned __int8 *a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  v8 = geom_octree_f_obj_alloc();
  v9 = *(a1 + 8);
  v11[0] = *a1;
  v11[1] = v9;
  v12 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  geom::point_tree<float,(unsigned char)3>::point_tree(v8 + 16, v11, *a2, *a3, *a4);
  if (v12 == 1 && v11[0])
  {
    MEMORY[0x25305E3D0](v11[0], 0x1000C80451B5BE8);
  }

  return v8;
}

void sub_24FFCCD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    geom_create_quadtree_d_cold_1(&a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 geom_octree_get_bbox_f(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  return result;
}

uint64_t geom_octree_get_node_child_f(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a1 + 192) + 8 * a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 + a3;
  }
}

uint64_t geom_octree_get_data_f(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (*(a1 + 240) + 16 * a2);
  v4 = *v3;
  v5 = *(a1 + 120);
  if (a3)
  {
    *a3 = v3[1] - v4;
  }

  return v5 + 8 * v4;
}

void geom_octree_find_k_nearest_f(uint64_t a1, unsigned int a2, uint64_t a3, float32x4_t a4)
{
  v6 = geom::collection_to_vector<float>(a3);

  geom::point_tree<float,(unsigned char)3>::find_k_nearest((a1 + 16), a2, v6, a4);
}

void geom_octree_traverse_f(uint64_t a1, int a2, void *aBlock)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = _Block_copy(aBlock);
  v7[0] = &unk_286290718;
  v7[1] = a1;
  v7[2] = _Block_copy(v5);
  v7[3] = v7;
  geom::point_tree<float,(unsigned char)3>::traverse(a1 + 16, a2, v7);
  std::__function::__value_func<void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](v7);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24FFCCF68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t geom_create_octree_create_opt_d()
{
  result = geom_octree_create_opt_d_obj_alloc();
  *(result + 20) = 0;
  *(result + 16) = 68097;
  return result;
}

uint64_t geom_create_octree_d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a3 + 16))
    {
      operator new[]();
    }

    v5 = a2;
    v6 = a1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 0;
  v3 = _ZN4geom24construct_runtime_objectIP15geom_octree_d_sJNS_14external_arrayIDv3_dEERKhRKtRKbEEET_DpOT0_(&v5, (a3 + 17), (a3 + 18), (a3 + 20));
  if (v7 == 1 && v5)
  {
    MEMORY[0x25305E3D0](v5, 0x1000C80E0EAB150);
  }

  return v3;
}

void sub_24FFCD0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    geom_create_octree_d_cold_1(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN4geom24construct_runtime_objectIP15geom_octree_d_sJNS_14external_arrayIDv3_dEERKhRKtRKbEEET_DpOT0_(uint64_t a1, unsigned __int8 *a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  v8 = geom_octree_d_obj_alloc();
  v9 = *(a1 + 8);
  v11[0] = *a1;
  v11[1] = v9;
  v12 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  geom::point_tree<double,(unsigned char)3>::point_tree(v8 + 16, v11, *a2, *a3, *a4);
  if (v12 == 1 && v11[0])
  {
    MEMORY[0x25305E3D0](v11[0], 0x1000C80E0EAB150);
  }

  return v8;
}

void sub_24FFCD1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    geom_create_octree_d_cold_1(&a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 geom_octree_get_bbox_d@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t geom_octree_get_node_child_d(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a1 + 256) + 8 * a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 + a3;
  }
}

double geom_octree_get_centroid_d@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>, __n128 a4@<Q0>)
{
  geom::point_tree<double,(unsigned char)3>::centroid(a1 + 16, a2, v7, a4);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t geom_octree_locate_d(uint64_t a1, float64x2_t *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return geom::point_tree<double,(unsigned char)3>::locate(a1 + 16, v4);
}

uint64_t geom_octree_get_data_d(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (*(a1 + 304) + 16 * a2);
  v4 = *v3;
  v5 = *(a1 + 184);
  if (a3)
  {
    *a3 = v3[1] - v4;
  }

  return v5 + 8 * v4;
}

uint64_t geom_octree_find_closest_point_d(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return geom::point_tree<double,(unsigned char)3>::find_closest_point((a1 + 16), v4);
}

__n128 geom_octree_find_k_nearest_d(uint64_t a1, __int128 *a2, unsigned int a3, uint64_t a4)
{
  v8 = a2[1];
  v9 = *a2;
  v6 = geom::collection_to_vector<float>(a4);
  v10[0] = v9;
  v10[1] = v8;
  geom::point_tree<double,(unsigned char)3>::find_k_nearest((a1 + 16), v10, a3, v6);
  return result;
}

void geom_octree_traverse_d(uint64_t a1, int a2, void *aBlock)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = _Block_copy(aBlock);
  v7[0] = &unk_286290798;
  v7[1] = a1;
  v7[2] = _Block_copy(v5);
  v7[3] = v7;
  geom::point_tree<double,(unsigned char)3>::traverse(a1 + 16, a2, v7);
  std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](v7);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24FFCD418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void std::__function::__func<geom_quadtree_traverse_f::$_0,std::allocator<geom_quadtree_traverse_f::$_0>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x25305E3F0);
}

void *std::__function::__func<geom_quadtree_traverse_f::$_0,std::allocator<geom_quadtree_traverse_f::$_0>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2862905F8;
  a2[1] = v4;
  result = _Block_copy(v3);
  a2[2] = result;
  return result;
}

void std::__function::__func<geom_quadtree_traverse_f::$_0,std::allocator<geom_quadtree_traverse_f::$_0>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<geom_quadtree_traverse_f::$_0,std::allocator<geom_quadtree_traverse_f::$_0>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<geom_quadtree_traverse_d::$_0,std::allocator<geom_quadtree_traverse_d::$_0>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x25305E3F0);
}

void *std::__function::__func<geom_quadtree_traverse_d::$_0,std::allocator<geom_quadtree_traverse_d::$_0>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_286290688;
  a2[1] = v4;
  result = _Block_copy(v3);
  a2[2] = result;
  return result;
}

void std::__function::__func<geom_quadtree_traverse_d::$_0,std::allocator<geom_quadtree_traverse_d::$_0>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<geom_quadtree_traverse_d::$_0,std::allocator<geom_quadtree_traverse_d::$_0>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<geom_octree_traverse_f::$_0,std::allocator<geom_octree_traverse_f::$_0>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x25305E3F0);
}

void *std::__function::__func<geom_octree_traverse_f::$_0,std::allocator<geom_octree_traverse_f::$_0>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_286290718;
  a2[1] = v4;
  result = _Block_copy(v3);
  a2[2] = result;
  return result;
}

void std::__function::__func<geom_octree_traverse_f::$_0,std::allocator<geom_octree_traverse_f::$_0>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<geom_octree_traverse_f::$_0,std::allocator<geom_octree_traverse_f::$_0>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<geom_octree_traverse_d::$_0,std::allocator<geom_octree_traverse_d::$_0>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x25305E3F0);
}

void *std::__function::__func<geom_octree_traverse_d::$_0,std::allocator<geom_octree_traverse_d::$_0>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_286290798;
  a2[1] = v4;
  result = _Block_copy(v3);
  a2[2] = result;
  return result;
}

void std::__function::__func<geom_octree_traverse_d::$_0,std::allocator<geom_octree_traverse_d::$_0>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<geom_octree_traverse_d::$_0,std::allocator<geom_octree_traverse_d::$_0>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_0()
{

  JUMPOUT(0x25305E3D0);
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x25305E3D0);
}

void _ZN4geom23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS1_6vectorINS_11vector_typeISB_Lh2EvE5valueENS1_9allocatorISG_EEEERNSD_IjNSH_IjEEEE(float32x2_t a1, float32x2_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6)
{
  v17 = *MEMORY[0x277D85DE8];
  a5[1] = *a5;
  a6[1] = *a6;
  v6 = vsub_f32(a2, a1);
  v7 = vmul_f32(v6, v6);
  if (sqrtf(vaddv_f32(v7)) > 0.00000011921)
  {
    v7.f32[0] = fminf(v6.f32[0], v6.f32[1]) / a4;
    v10 = vcvt_s32_f32(vrndp_f32(vdiv_f32(v6, vdup_lane_s32(v7, 0))));
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v15, 1uLL);
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v13, 1uLL);
    v11 = v10;
    v8 = *(&v11 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*&vcgt_u32(v10, vand_s8(vdup_lane_s32(v10, 1), 0xFFFF0000FFFFLL)) & 1))) + 1;
    memset(v12, 0, sizeof(v12));
    std::vector<float>::__vallocate[abi:nn200100](v12, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void _ZN4geom23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS1_6vectorINS_11vector_typeISB_Lh2EvE5valueENS1_9allocatorISG_EEEERNSD_IjNSH_IjEEEE(float64x2_t a1, float64x2_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6)
{
  v16 = *MEMORY[0x277D85DE8];
  a5[1] = *a5;
  a6[1] = *a6;
  v6 = vsubq_f64(a2, a1);
  if (sqrt(vaddvq_f64(vmulq_f64(v6, v6))) > 2.22044605e-16)
  {
    v9 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vdivq_f64(v6, vdupq_lane_s64(COERCE__INT64(vpminq_f64(v6) / a4), 0)))));
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v14, 1uLL);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v12, 1uLL);
    v10 = v9;
    v7 = *(&v10 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*&vcgt_u32(v9, vand_s8(vdup_lane_s32(v9, 1), 0xFFFF0000FFFFLL)) & 1))) + 1;
    memset(__p, 0, sizeof(__p));
    std::vector<double>::__vallocate[abi:nn200100](__p, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void geom_marching_squares_with_default_options_2f(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, float32x2_t a6, float32x2_t a7)
{
  v13 = geom::collection_to_vector<float>(a4);
  v14 = geom::collection_to_vector<float>(a5);
  v15[0] = a1;
  v15[1] = a2;
  _ZN4geom23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS1_12placeholders4__phILi1EEERS5_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS1_6vectorINS_11vector_typeISK_Lh2EvE5valueENS1_9allocatorISP_EEEERNSM_IjNSQ_IjEEEE(a6, a7, v15, a3, v13, v14);
}

void _ZN4geom23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS1_12placeholders4__phILi1EEERS5_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS1_6vectorINS_11vector_typeISK_Lh2EvE5valueENS1_9allocatorISP_EEEERNSM_IjNSQ_IjEEEE(float32x2_t a1, float32x2_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6)
{
  v17 = *MEMORY[0x277D85DE8];
  a5[1] = *a5;
  a6[1] = *a6;
  v6 = vsub_f32(a2, a1);
  v7 = vmul_f32(v6, v6);
  if (sqrtf(vaddv_f32(v7)) > 0.00000011921)
  {
    v7.f32[0] = fminf(v6.f32[0], v6.f32[1]) / a4;
    v10 = vcvt_s32_f32(vrndp_f32(vdiv_f32(v6, vdup_lane_s32(v7, 0))));
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v15, 1uLL);
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v13, 1uLL);
    v11 = v10;
    v8 = *(&v11 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*&vcgt_u32(v10, vand_s8(vdup_lane_s32(v10, 1), 0xFFFF0000FFFFLL)) & 1))) + 1;
    memset(v12, 0, sizeof(v12));
    std::vector<float>::__vallocate[abi:nn200100](v12, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void geom_marching_squares_with_default_options_2d(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, float64x2_t a6, float64x2_t a7)
{
  v11 = geom::collection_to_vector<float>(a4);
  v12 = geom::collection_to_vector<float>(a5);
  v15[0] = a1;
  v15[1] = a2;
  _ZN4geom23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS1_12placeholders4__phILi1EEERS5_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS1_6vectorINS_11vector_typeISK_Lh2EvE5valueENS1_9allocatorISP_EEEERNSM_IjNSQ_IjEEEE(a6, a7, v15, a3, v11, v12);
}

void _ZN4geom23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS1_12placeholders4__phILi1EEERS5_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS1_6vectorINS_11vector_typeISK_Lh2EvE5valueENS1_9allocatorISP_EEEERNSM_IjNSQ_IjEEEE(float64x2_t a1, float64x2_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6)
{
  v16 = *MEMORY[0x277D85DE8];
  a5[1] = *a5;
  a6[1] = *a6;
  v6 = vsubq_f64(a2, a1);
  if (sqrt(vaddvq_f64(vmulq_f64(v6, v6))) > 2.22044605e-16)
  {
    v9 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vdivq_f64(v6, vdupq_lane_s64(COERCE__INT64(vpminq_f64(v6) / a4), 0)))));
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v14, 1uLL);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v12, 1uLL);
    v10 = v9;
    v7 = *(&v10 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*&vcgt_u32(v9, vand_s8(vdup_lane_s32(v9, 1), 0xFFFF0000FFFFLL)) & 1))) + 1;
    memset(__p, 0, sizeof(__p));
    std::vector<double>::__vallocate[abi:nn200100](__p, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void geom_marching_squares_with_options_2f(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, float32x2_t a6, float32x2_t a7)
{
  v13 = geom::collection_to_vector<float>(a4);
  v14 = geom::collection_to_vector<float>(a5);
  v15[0] = a1;
  v15[1] = a2;
  _ZN4geom23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS1_12placeholders4__phILi1EEERS5_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS1_6vectorINS_11vector_typeISK_Lh2EvE5valueENS1_9allocatorISP_EEEERNSM_IjNSQ_IjEEEE(a6, a7, v15, a3, v13, v14);
}

void geom_marching_squares_with_options_2d(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, float64x2_t a6, float64x2_t a7)
{
  v11 = geom::collection_to_vector<float>(a4);
  v12 = geom::collection_to_vector<float>(a5);
  v15[0] = a1;
  v15[1] = a2;
  _ZN4geom23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS1_12placeholders4__phILi1EEERS5_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS1_6vectorINS_11vector_typeISK_Lh2EvE5valueENS1_9allocatorISP_EEEERNSM_IjNSQ_IjEEEE(a6, a7, v15, a3, v11, v12);
}

uint64_t _ZNKSt3__18functionIFfDv2_fEEclES1_(uint64_t a1, double a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v4);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEED1Ev(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void *_ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(void *result, unint64_t a2)
{
  v2 = result;
  result[4] = 0;
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 151 * v3;
  v5 = ((151 * v3) >> 7) + 15;
  *result = 0;
  result[1] = 0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) == 0)
  {
    goto LABEL_18;
  }

  if ((((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0) <= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = ((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0;
  }

  *result = malloc_type_aligned_alloc(0x40uLL, v6, 0x1000040451B5BE8uLL);
  if (v4 >= 0x80)
  {
    v7 = 0;
    *&v8 = -1;
    *(&v8 + 1) = -1;
    do
    {
      *(*v2 + 16 * v7++) = v8;
    }

    while (v5 >> 4 != v7);
  }

  v9 = ((12 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0) <= 0x40 ? 64 : (12 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0;
  result = malloc_type_aligned_alloc(0x40uLL, v9, 0x10000402841957BuLL);
  v2[1] = result;
  if (v2[2])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v2[1] + v10;
      *v12 = 0;
      *(v12 + 8) = 0;
      ++v11;
      v13 = v2[2];
      v10 += 12;
    }

    while (v11 < v13);
  }

  else
  {
LABEL_18:
    v13 = 0;
  }

  v2[3] = 0;
  v2[4] = v13;
  return result;
}

void *_ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(void *result, unint64_t a2)
{
  v2 = result;
  result[4] = 0;
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 151 * v3;
  v5 = ((151 * v3) >> 7) + 15;
  *result = 0;
  result[1] = 0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) == 0)
  {
    goto LABEL_18;
  }

  if ((((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0) <= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = ((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0;
  }

  *result = malloc_type_aligned_alloc(0x40uLL, v6, 0x1000040451B5BE8uLL);
  if (v4 >= 0x80)
  {
    v7 = 0;
    *&v8 = -1;
    *(&v8 + 1) = -1;
    do
    {
      *(*v2 + 16 * v7++) = v8;
    }

    while (v5 >> 4 != v7);
  }

  v9 = ((16 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0) <= 0x40 ? 64 : (16 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0;
  result = malloc_type_aligned_alloc(0x40uLL, v9, 0x1000040A517B1A3uLL);
  v2[1] = result;
  if (v2[2])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v2[1] + v10);
      *v12 = 0;
      v12[1] = 0;
      ++v11;
      v13 = v2[2];
      v10 += 16;
    }

    while (v11 < v13);
  }

  else
  {
LABEL_18:
    v13 = 0;
  }

  v2[3] = 0;
  v2[4] = v13;
  return result;
}

int64x2_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addISR_EEmRKSP_SC_(uint64_t a1, unsigned __int16 *a2, char a3)
{
  if (!*(a1 + 32))
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(a1);
  }

  v6 = (a2[1] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v7 = *(a2 + 4);
  v8 = *(a1 + 16) >> 4;
  v9 = ((v7 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6) % v8;
  v10 = *a1;
  v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v11 >= 0x40)
  {
    do
    {
      if (v9 + 1 == v8)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v11 > 0x3F);
  }

  v12 = v10 + 16 * v9;
  v13 = ((v7 + (v6 << 6) + (v6 >> 2) + 23) ^ v6) & 0x7F;
  v14 = *(v12 + v11);
  *(v12 + v11) = v13;
  v15 = *(a1 + 8) + 12 * (v11 + 16 * v9);
  *v15 = *a2;
  *(v15 + 8) = a3;
  if (v14 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  result = vaddq_s64(*(a1 + 24), v17);
  *(a1 + 24) = result;
  return result;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(uint64_t result)
{
  v2 = *(result + 16);
  v1 = *(result + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(result, v1);
  }

  if (!*(result + 32))
  {
    return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(result, v1);
  }

  return result;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(&v23, a2);
  v21[0] = a1;
  v4 = *(a1 + 2);
  if (v4 >= 0x10)
  {
    v5 = 0;
    v6 = *a1;
    v7 = v4 >> 4;
    v8 = xmmword_2500C4D40;
    v3.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v5;
    v21[1] = v9 ^ 0xFFFFLL;
    v22 = v10 - v5;
    if (v10 + 1 != v5)
    {
      do
      {
        v12 = *(v21[0] + 8) + 12 * v11;
        v19 = *v12;
        v20 = *(v12 + 8);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addISR_EEmRKSP_SC_(&v23, &v19, v20, v8, v3);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_SR_EEEppEv(v21);
        v11 = v22;
      }

      while (v22 != -1);
    }
  }

LABEL_10:
  if (&v23 != a1)
  {
    v13 = v24;
    v14 = *a1;
    v15 = a1[1];
    *a1 = v23;
    a1[1] = v13;
    v23 = v14;
    v24 = v15;
    v16 = *(a1 + 4);
    *(a1 + 4) = v25;
    v25 = v16;
  }

  result = _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEED1Ev(&v23);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

int64x2_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addIS4_EEmRKSP_SC_(uint64_t a1, unsigned __int16 *a2, double a3)
{
  if (!*(a1 + 32))
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(a1);
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 4);
  v9 = *(a1 + 16) >> 4;
  v10 = (v8 | (2 * ((v7 + (v6 << 6) + (v6 >> 2) + 0x1E3779B97F4A7C17) ^ v6))) % v9;
  v11 = *a1;
  v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v10)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v12 >= 0x40)
  {
    do
    {
      if (v10 + 1 == v9)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }

      v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v10)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v12 > 0x3F);
  }

  v13 = v11 + 16 * v10;
  v14 = (v8 | (2 * ((v7 + (v6 >> 2) + 23) ^ v6))) & 0x7F;
  v15 = *(v13 + v12);
  *(v13 + v12) = v14;
  v16 = *(a1 + 8) + 16 * (v12 + 16 * v10);
  *v16 = *a2;
  *(v16 + 8) = a3;
  if (v15 == 255)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v18.i64[1] = v17;
  result = vaddq_s64(*(a1 + 24), v18);
  *(a1 + 24) = result;
  return result;
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(a1, v1);
  }
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(&v19, a2);
  v17[0] = a1;
  v4 = *(a1 + 2);
  if (v4 >= 0x10)
  {
    v5 = 0;
    v6 = *a1;
    v7 = v4 >> 4;
    v3.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v17[1] = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v18 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        v16 = *(*(v17[0] + 8) + 16 * v10);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addIS4_EEmRKSP_SC_(&v19, &v16, *(&v16 + 1), v3);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v17);
        v10 = v18;
      }

      while (v18 != -1);
    }
  }

LABEL_10:
  if (&v19 != a1)
  {
    v11 = v20;
    v12 = *a1;
    v13 = a1[1];
    *a1 = v19;
    a1[1] = v11;
    v19 = v12;
    v20 = v13;
    v14 = *(a1 + 4);
    *(a1 + 4) = v21;
    v21 = v14;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v19);
  v15 = *MEMORY[0x277D85DE8];
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIZN4geom23marching_squares_2_implIfRKNS_8functionIFfDv2_fEEEEEvOT0_tNS2_4bboxIT_Lh2EEERNS_6vectorINS2_11vector_typeISD_Lh2EvE5valueENS1_ISI_EEEERNSF_IjNS1_IjEEEEE14edge_map_queryEEEENS_19__allocation_resultINS_16allocator_traitsISD_E7pointerEEERSD_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t _ZNKSt3__18functionIFdDv2_dEEclES1_(uint64_t a1, __n128 a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(v4);
}

void *_ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(void *result, unint64_t a2)
{
  v2 = result;
  result[4] = 0;
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 151 * v3;
  v5 = ((151 * v3) >> 7) + 15;
  *result = 0;
  result[1] = 0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) == 0)
  {
    goto LABEL_18;
  }

  if ((((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0) <= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = ((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0;
  }

  *result = malloc_type_aligned_alloc(0x40uLL, v6, 0x1000040451B5BE8uLL);
  if (v4 >= 0x80)
  {
    v7 = 0;
    *&v8 = -1;
    *(&v8 + 1) = -1;
    do
    {
      *(*v2 + 16 * v7++) = v8;
    }

    while (v5 >> 4 != v7);
  }

  v9 = ((32 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0) <= 0x40 ? 64 : (32 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0;
  result = malloc_type_aligned_alloc(0x40uLL, v9, 0x10000407FA86E72uLL);
  v2[1] = result;
  if (v2[2])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v2[1] + v10);
      v12[2] = 0;
      v12[3] = 0;
      *v12 = 0;
      ++v11;
      v13 = v2[2];
      v10 += 32;
    }

    while (v11 < v13);
  }

  else
  {
LABEL_18:
    v13 = 0;
  }

  v2[3] = 0;
  v2[4] = v13;
  return result;
}

int64x2_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addISR_EEmRKSP_SC_(uint64_t a1, unsigned __int16 *a2, char a3)
{
  if (!*(a1 + 32))
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(a1);
  }

  v6 = (a2[1] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v7 = *(a2 + 4);
  v8 = *(a1 + 16) >> 4;
  v9 = ((v7 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6) % v8;
  v10 = *a1;
  v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v11 >= 0x40)
  {
    do
    {
      if (v9 + 1 == v8)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v11 > 0x3F);
  }

  v12 = v10 + 16 * v9;
  v13 = ((v7 + (v6 << 6) + (v6 >> 2) + 23) ^ v6) & 0x7F;
  v14 = *(v12 + v11);
  *(v12 + v11) = v13;
  v15 = *(a1 + 8) + 12 * (v11 + 16 * v9);
  *v15 = *a2;
  *(v15 + 8) = a3;
  if (v14 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  result = vaddq_s64(*(a1 + 24), v17);
  *(a1 + 24) = result;
  return result;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(uint64_t result)
{
  v2 = *(result + 16);
  v1 = *(result + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(result, v1);
  }

  if (!*(result + 32))
  {
    return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(result, v1);
  }

  return result;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(&v23, a2);
  v21[0] = a1;
  v4 = *(a1 + 2);
  if (v4 >= 0x10)
  {
    v5 = 0;
    v6 = *a1;
    v7 = v4 >> 4;
    v8 = xmmword_2500C4D40;
    v3.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v5;
    v21[1] = v9 ^ 0xFFFFLL;
    v22 = v10 - v5;
    if (v10 + 1 != v5)
    {
      do
      {
        v12 = *(v21[0] + 8) + 12 * v11;
        v19 = *v12;
        v20 = *(v12 + 8);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addISR_EEmRKSP_SC_(&v23, &v19, v20, v8, v3);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_SR_EEEppEv(v21);
        v11 = v22;
      }

      while (v22 != -1);
    }
  }

LABEL_10:
  if (&v23 != a1)
  {
    v13 = v24;
    v14 = *a1;
    v15 = a1[1];
    *a1 = v23;
    a1[1] = v13;
    v23 = v14;
    v24 = v15;
    v16 = *(a1 + 4);
    *(a1 + 4) = v25;
    v25 = v16;
  }

  result = _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEED1Ev(&v23);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

int64x2_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addIS4_EEmRKSP_SC_(uint64_t a1, unsigned __int16 *a2, __n128 a3)
{
  if (!*(a1 + 32))
  {
    v19 = a3;
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(a1);
    a3 = v19;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a1 + 16) >> 4;
  v9 = (v7 | (2 * ((v6 + (v5 << 6) + (v5 >> 2) + 0x1E3779B97F4A7C17) ^ v5))) % v8;
  v10 = *a1;
  v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v11 >= 0x40)
  {
    do
    {
      if (v9 + 1 == v8)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v11 > 0x3F);
  }

  v12 = v10 + 16 * v9;
  v13 = (v7 | (2 * ((v6 + (v5 >> 2) + 23) ^ v5))) & 0x7F;
  v14 = *(v12 + v11);
  *(v12 + v11) = v13;
  v15 = (*(a1 + 8) + 32 * (v11 + 16 * v9));
  v15->n128_u64[0] = *a2;
  v15[1] = a3;
  if (v14 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  result = vaddq_s64(*(a1 + 24), v17);
  *(a1 + 24) = result;
  return result;
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(a1, v1);
  }
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(&v20, a2);
  v18[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v18[1] = v7 ^ 0xFFFFLL;
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v9 = v8 - v4;
    v19 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = (*(v18[0] + 8) + 32 * v9);
        v11 = v10[1];
        v17[0] = *v10;
        v17[1] = v11;
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addIS4_EEmRKSP_SC_(&v20, v17, v11);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v18);
        v9 = v19;
      }

      while (v19 != -1);
    }
  }

LABEL_10:
  if (&v20 != a1)
  {
    v12 = v21;
    v13 = *a1;
    v14 = a1[1];
    *a1 = v20;
    a1[1] = v12;
    v20 = v13;
    v21 = v14;
    v15 = *(a1 + 4);
    *(a1 + 4) = v22;
    v22 = v15;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v20);
  v16 = *MEMORY[0x277D85DE8];
}

int64x2_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS10_EEmRKSY_SL_(uint64_t a1, unsigned __int16 *a2, char a3)
{
  if (!*(a1 + 32))
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(a1);
  }

  v6 = (a2[1] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v7 = *(a2 + 4);
  v8 = *(a1 + 16) >> 4;
  v9 = ((v7 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6) % v8;
  v10 = *a1;
  v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v11 >= 0x40)
  {
    do
    {
      if (v9 + 1 == v8)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v11 > 0x3F);
  }

  v12 = v10 + 16 * v9;
  v13 = ((v7 + (v6 << 6) + (v6 >> 2) + 23) ^ v6) & 0x7F;
  v14 = *(v12 + v11);
  *(v12 + v11) = v13;
  v15 = *(a1 + 8) + 12 * (v11 + 16 * v9);
  *v15 = *a2;
  *(v15 + 8) = a3;
  if (v14 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  result = vaddq_s64(*(a1 + 24), v17);
  *(a1 + 24) = result;
  return result;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(uint64_t result)
{
  v2 = *(result + 16);
  v1 = *(result + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(result, v1);
  }

  if (!*(result + 32))
  {
    return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(result, v1);
  }

  return result;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(&v23, a2);
  v21[0] = a1;
  v4 = *(a1 + 2);
  if (v4 >= 0x10)
  {
    v5 = 0;
    v6 = *a1;
    v7 = v4 >> 4;
    v8 = xmmword_2500C4D40;
    v3.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v5;
    v21[1] = v9 ^ 0xFFFFLL;
    v22 = v10 - v5;
    if (v10 + 1 != v5)
    {
      do
      {
        v12 = *(v21[0] + 8) + 12 * v11;
        v19 = *v12;
        v20 = *(v12 + 8);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS10_EEmRKSY_SL_(&v23, &v19, v20, v8, v3);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_SR_EEEppEv(v21);
        v11 = v22;
      }

      while (v22 != -1);
    }
  }

LABEL_10:
  if (&v23 != a1)
  {
    v13 = v24;
    v14 = *a1;
    v15 = a1[1];
    *a1 = v23;
    a1[1] = v13;
    v23 = v14;
    v24 = v15;
    v16 = *(a1 + 4);
    *(a1 + 4) = v25;
    v25 = v16;
  }

  result = _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEED1Ev(&v23);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

int64x2_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS4_EEmRKSY_SL_(uint64_t a1, unsigned __int16 *a2, double a3)
{
  if (!*(a1 + 32))
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(a1);
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 4);
  v9 = *(a1 + 16) >> 4;
  v10 = (v8 | (2 * ((v7 + (v6 << 6) + (v6 >> 2) + 0x1E3779B97F4A7C17) ^ v6))) % v9;
  v11 = *a1;
  v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v10)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v12 >= 0x40)
  {
    do
    {
      if (v10 + 1 == v9)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }

      v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v10)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v12 > 0x3F);
  }

  v13 = v11 + 16 * v10;
  v14 = (v8 | (2 * ((v7 + (v6 >> 2) + 23) ^ v6))) & 0x7F;
  v15 = *(v13 + v12);
  *(v13 + v12) = v14;
  v16 = *(a1 + 8) + 16 * (v12 + 16 * v10);
  *v16 = *a2;
  *(v16 + 8) = a3;
  if (v15 == 255)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v18.i64[1] = v17;
  result = vaddq_s64(*(a1 + 24), v18);
  *(a1 + 24) = result;
  return result;
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(a1, v1);
  }
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(&v19, a2);
  v17[0] = a1;
  v4 = *(a1 + 2);
  if (v4 >= 0x10)
  {
    v5 = 0;
    v6 = *a1;
    v7 = v4 >> 4;
    v3.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v17[1] = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v18 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        v16 = *(*(v17[0] + 8) + 16 * v10);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS4_EEmRKSY_SL_(&v19, &v16, *(&v16 + 1), v3);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v17);
        v10 = v18;
      }

      while (v18 != -1);
    }
  }

LABEL_10:
  if (&v19 != a1)
  {
    v11 = v20;
    v12 = *a1;
    v13 = a1[1];
    *a1 = v19;
    a1[1] = v11;
    v19 = v12;
    v20 = v13;
    v14 = *(a1 + 4);
    *(a1 + 4) = v21;
    v21 = v14;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v19);
  v15 = *MEMORY[0x277D85DE8];
}

int64x2_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS10_EEmRKSY_SL_(uint64_t a1, unsigned __int16 *a2, char a3)
{
  if (!*(a1 + 32))
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(a1);
  }

  v6 = (a2[1] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v7 = *(a2 + 4);
  v8 = *(a1 + 16) >> 4;
  v9 = ((v7 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6) % v8;
  v10 = *a1;
  v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v11 >= 0x40)
  {
    do
    {
      if (v9 + 1 == v8)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v11 > 0x3F);
  }

  v12 = v10 + 16 * v9;
  v13 = ((v7 + (v6 << 6) + (v6 >> 2) + 23) ^ v6) & 0x7F;
  v14 = *(v12 + v11);
  *(v12 + v11) = v13;
  v15 = *(a1 + 8) + 12 * (v11 + 16 * v9);
  *v15 = *a2;
  *(v15 + 8) = a3;
  if (v14 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  result = vaddq_s64(*(a1 + 24), v17);
  *(a1 + 24) = result;
  return result;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(uint64_t result)
{
  v2 = *(result + 16);
  v1 = *(result + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(result, v1);
  }

  if (!*(result + 32))
  {
    return _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(result, v1);
  }

  return result;
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(&v23, a2);
  v21[0] = a1;
  v4 = *(a1 + 2);
  if (v4 >= 0x10)
  {
    v5 = 0;
    v6 = *a1;
    v7 = v4 >> 4;
    v8 = xmmword_2500C4D40;
    v3.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v5;
    v21[1] = v9 ^ 0xFFFFLL;
    v22 = v10 - v5;
    if (v10 + 1 != v5)
    {
      do
      {
        v12 = *(v21[0] + 8) + 12 * v11;
        v19 = *v12;
        v20 = *(v12 + 8);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS10_EEmRKSY_SL_(&v23, &v19, v20, v8, v3);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_SR_EEEppEv(v21);
        v11 = v22;
      }

      while (v22 != -1);
    }
  }

LABEL_10:
  if (&v23 != a1)
  {
    v13 = v24;
    v14 = *a1;
    v15 = a1[1];
    *a1 = v23;
    a1[1] = v13;
    v23 = v14;
    v24 = v15;
    v16 = *(a1 + 4);
    *(a1 + 4) = v25;
    v25 = v16;
  }

  result = _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEED1Ev(&v23);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

int64x2_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS4_EEmRKSY_SL_(uint64_t a1, unsigned __int16 *a2, __n128 a3)
{
  if (!*(a1 + 32))
  {
    v19 = a3;
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(a1);
    a3 = v19;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a1 + 16) >> 4;
  v9 = (v7 | (2 * ((v6 + (v5 << 6) + (v5 >> 2) + 0x1E3779B97F4A7C17) ^ v5))) % v8;
  v10 = *a1;
  v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v11 >= 0x40)
  {
    do
    {
      if (v9 + 1 == v8)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      v11 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v10 + 16 * v9)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v11 > 0x3F);
  }

  v12 = v10 + 16 * v9;
  v13 = (v7 | (2 * ((v6 + (v5 >> 2) + 23) ^ v5))) & 0x7F;
  v14 = *(v12 + v11);
  *(v12 + v11) = v13;
  v15 = (*(a1 + 8) + 32 * (v11 + 16 * v9));
  v15->n128_u64[0] = *a2;
  v15[1] = a3;
  if (v14 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  result = vaddq_s64(*(a1 + 24), v17);
  *(a1 + 24) = result;
  return result;
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(a1, v1);
  }
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE4initEm(&v20, a2);
  v18[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v18[1] = v7 ^ 0xFFFFLL;
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v9 = v8 - v4;
    v19 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = (*(v18[0] + 8) + 32 * v9);
        v11 = v10[1];
        v17[0] = *v10;
        v17[1] = v11;
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS4_EEmRKSY_SL_(&v20, v17, v11);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v18);
        v9 = v19;
      }

      while (v19 != -1);
    }
  }

LABEL_10:
  if (&v20 != a1)
  {
    v12 = v21;
    v13 = *a1;
    v14 = a1[1];
    *a1 = v20;
    a1[1] = v12;
    v20 = v13;
    v21 = v14;
    v15 = *(a1 + 4);
    *(a1 + 4) = v22;
    v22 = v15;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v20);
  v16 = *MEMORY[0x277D85DE8];
}

double OUTLINED_FUNCTION_0_0(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = (a2[1] + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2;
  v3 = *a1;
  *&result = vdupq_n_s8(((*(a2 + 4) + (v2 << 6) + (v2 >> 2) + 23) ^ v2) & 0x7F).u64[0];
  v5 = *a2;
  v6 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *v3 = v4;
  *(v3 + 8) = a2;
  *(v3 + 16) = result;
  *(v3 + 24) = v2;
  return result;
}

int64x2_t OUTLINED_FUNCTION_13@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q1>)
{
  *(a2 + v3) = v5;
  a3.i64[1] = v4;
  result = vaddq_s64(*(a1 + 24), a3);
  *(a1 + 24) = result;
  return result;
}

double OUTLINED_FUNCTION_14(void *a1, uint64_t a2)
{
  v2.i64[0] = -1;
  v2.i64[1] = -1;
  *&result = vceqq_s8(*(*a1 + (a2 & 0xFFFFFFFFFFFFFFF0)), v2).u64[0];
  return result;
}

void *OUTLINED_FUNCTION_18(void *result)
{
  v1 = result[2] >> 4;
  v2 = *(*result + 16);
  return result;
}

uint64_t geom::anonymous namespace::split_triangle_mesh_with_plane_impl<float>(uint64_t *a1, uint64_t *a2, float32x4_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t *a8, std::vector<unsigned int> *a9, std::vector<unsigned int> *a10, std::vector<unsigned int> *a11)
{
  v11 = a8;
  a4[1] = *a4;
  a5[1] = *a5;
  a6[1] = *a6;
  a7[1] = *a7;
  a8[1] = *a8;
  a9->__end_ = a9->__begin_;
  a10->__end_ = a10->__begin_;
  std::vector<signed char>::reserve(a8, a1[1]);
  std::vector<float>::reserve(a9, a1[1]);
  std::vector<float>::reserve(a10, a1[1]);
  if (a1[1])
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = (*a1 + 16 * v14);
      v17 = vmulq_f32(*v16, *a3);
      v17.f32[0] = a3[1].f32[0] + (v17.f32[2] + vaddv_f32(*v17.f32));
      LOBYTE(v128[0]) = (v17.f32[0] > 0.00000011921) - (v17.f32[0] < -0.00000011921);
      std::vector<signed char>::push_back[abi:nn200100](v11, v128);
      if (*(v11[1] - 1) < 0)
      {
        LODWORD(v128[0]) = -1;
        std::vector<unsigned int>::push_back[abi:nn200100](&a10->__begin_, v128);
      }

      else
      {
        LODWORD(v128[0]) = (a6[1] - *a6) >> 4;
        std::vector<unsigned int>::push_back[abi:nn200100](&a10->__begin_, v128);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a6, v16);
      }

      if (*(v11[1] - 1) <= 0)
      {
        LODWORD(v128[0]) = (a4[1] - *a4) >> 4;
        std::vector<unsigned int>::push_back[abi:nn200100](&a9->__begin_, v128);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, v16);
      }

      else
      {
        LODWORD(v128[0]) = -1;
        std::vector<unsigned int>::push_back[abi:nn200100](&a9->__begin_, v128);
      }

      v14 = v15;
      v38 = a1[1] > v15++;
    }

    while (v38);
  }

  v115 = a1;
  v116 = a3;
  v131 = 0u;
  v130 = 0u;
  v132 = 1065353216;
  v128[0] = v11;
  v128[1] = a9;
  v128[2] = a10;
  v128[3] = &v130;
  v128[4] = &v129;
  v128[5] = a5;
  v128[6] = a7;
  v127[0] = &v130;
  v127[1] = v11;
  v127[2] = a9;
  v127[3] = a10;
  v127[4] = &v129;
  v127[5] = a5;
  v127[6] = a7;
  if ((a2[1] / 3uLL))
  {
    v18 = 0;
    v119 = 3 * (a2[1] / 3uLL);
    v120 = v11;
    while (1)
    {
      v19 = *a2;
      v20 = *(*a2 + 4 * v18);
      v21 = *v11;
      v22 = *(*a2 + 4 * (v18 + 1));
      v126 = v18 + 2;
      v23 = *(*a2 + 4 * (v18 + 2));
      v24 = *(*v11 + v22);
      if (v24 * *(*v11 + v20) == -1)
      {
        v135.i32[0] = *(*a2 + 4 * v18);
        v135.i32[1] = v22;
        {
          break;
        }
      }

LABEL_24:
      v44 = *(v21 + v23);
      v45 = *(v21 + v23);
      v125 = v18 + 1;
      if (v24 * v44 == -1)
      {
        v46 = *(v19 + 4 * (v18 + 1));
        v47 = *(v19 + 4 * v126);
        v135.i64[0] = __PAIR64__(v47, v46);
        {
          v49 = *a4;
          v48 = a4[1];
          v51 = *a6;
          v50 = a6[1];
          v52 = *v115;
          *(v135.i64 + 4) = 0;
          v135.i32[0] = 0;
          v53 = *(v52 + 16 * v46);
          v54 = *(v52 + 16 * v47);
          v55 = vsubq_f32(v54, v53);
          v56 = vmulq_f32(*v116, v55);
          v57 = v56.f32[2] + vaddv_f32(*v56.f32);
          v58 = v116[1].f32[0];
          v59 = vmulq_f32(v53, *v116);
          v60 = v23;
          if (fabsf(v57) <= 0.00000011921)
          {
            if ((v58 + (v59.f32[2] + vaddv_f32(*v59.f32))) <= 0.00000011921)
            {
              v64.i64[0] = 0x3F0000003F000000;
              v64.i64[1] = 0x3F0000003F000000;
              v63 = vmulq_f32(vaddq_f32(v53, v54), v64);
LABEL_34:
              v135 = v63;
            }
          }

          else
          {
            v61 = (-v58 - (v59.f32[2] + vaddv_f32(*v59.f32))) / v57;
            if (v61 >= 0.0 && v61 <= 1.0)
            {
              v63 = vmlaq_n_f32(v53, v55, v61);
              goto LABEL_34;
            }
          }

          v65 = (v48 - v49) >> 4;
          v66 = (v50 - v51) >> 4;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v135);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a6, &v135);
          v133 = v46;
          v134 = v47;
          *v67 = v65;
          *(v67 + 1) = v66;
          v23 = v60;
          v44 = *(v21 + v60);
          v45 = v44;
        }
      }

      v122 = v23;
      v68 = *(v21 + v20);
      if (v44 * *(v21 + v20) != -1)
      {
        goto LABEL_48;
      }

      v69 = *(v19 + 4 * v18);
      v70 = *(v19 + 4 * v126);
      v135.i64[0] = __PAIR64__(v70, v69);
      {
        goto LABEL_48;
      }

      v72 = *a4;
      v71 = a4[1];
      v74 = *a6;
      v73 = a6[1];
      v75 = *v115;
      *(v135.i64 + 4) = 0;
      v135.i32[0] = 0;
      v76 = *(v75 + 16 * v69);
      v77 = *(v75 + 16 * v70);
      v78 = vsubq_f32(v77, v76);
      v79 = vmulq_f32(*v116, v78);
      v80 = v79.f32[2] + vaddv_f32(*v79.f32);
      v81 = v116[1].f32[0];
      v82 = vmulq_f32(v76, *v116);
      if (fabsf(v80) > 0.00000011921)
      {
        v83 = (-v81 - (v82.f32[2] + vaddv_f32(*v82.f32))) / v80;
        if (v83 < 0.0 || v83 > 1.0)
        {
          goto LABEL_47;
        }

        v85 = vmlaq_n_f32(v76, v78, v83);
        goto LABEL_46;
      }

      if ((v81 + (v82.f32[2] + vaddv_f32(*v82.f32))) <= 0.00000011921)
      {
        v86.i64[0] = 0x3F0000003F000000;
        v86.i64[1] = 0x3F0000003F000000;
        v85 = vmulq_f32(vaddq_f32(v76, v77), v86);
LABEL_46:
        v135 = v85;
      }

LABEL_47:
      v87 = (v71 - v72) >> 4;
      v88 = (v73 - v74) >> 4;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v135);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a6, &v135);
      v133 = v69;
      v134 = v70;
      *v89 = v87;
      *(v89 + 1) = v88;
      v45 = *(v21 + v122);
      v68 = *(v21 + v20);
LABEL_48:
      v90 = *(v21 + v22);
      if (v68)
      {
        v91 = 0;
      }

      else
      {
        v91 = v90 == 0;
      }

      if (v91 && v45 == 0)
      {
        v96 = a10->__begin_[*(v19 + 4 * v125)];
        v97 = a10->__begin_[*(v19 + 4 * v126)];
        v135.i32[0] = a10->__begin_[*(v19 + 4 * v18)];
        v133 = v96;
        v136[0] = v97;
        std::vector<unsigned int>::push_back[abi:nn200100](a7, &v135);
        std::vector<unsigned int>::push_back[abi:nn200100](a7, &v133);
        std::vector<unsigned int>::push_back[abi:nn200100](a7, v136);
        begin = a9->__begin_;
        v99 = a9->__begin_[*(v19 + 4 * v18)];
        v100 = a9->__begin_[*(v19 + 4 * v125)];
        v101 = *(v19 + 4 * v126);
        goto LABEL_60;
      }

      if ((v68 & 0x80) == 0 && (v90 & 0x80000000) == 0 && (v45 & 0x80) == 0)
      {
        v93 = a7;
        v94 = a10->__begin_[*(v19 + 4 * v125)];
        v95 = a10->__begin_[*(v19 + 4 * v126)];
        v135.i32[0] = a10->__begin_[*(v19 + 4 * v18)];
        v133 = v94;
        v136[0] = v95;
        goto LABEL_61;
      }

      v103 = v68 <= 0 && v90 <= 0;
      v104 = v45;
      if (v103 && v45 <= 0)
      {
        begin = a9->__begin_;
        v99 = a9->__begin_[*(v19 + 4 * v18)];
        v100 = a9->__begin_[*(v19 + 4 * v125)];
        v101 = *(v19 + 4 * v126);
LABEL_60:
        v102 = begin[v101];
        v135.i32[0] = v99;
        v133 = v100;
        v136[0] = v102;
        v93 = a5;
LABEL_61:
        std::vector<unsigned int>::push_back[abi:nn200100](v93, &v135);
        std::vector<unsigned int>::push_back[abi:nn200100](v93, &v133);
        std::vector<unsigned int>::push_back[abi:nn200100](v93, v136);
LABEL_62:
        v11 = v120;
        goto LABEL_63;
      }

      if (!v68)
      {
        v106 = *(v19 + 4 * v18);
        v107 = v18 + 2;
        v108 = *(v19 + 4 * v125);
        goto LABEL_81;
      }

      if (!v90)
      {
        v106 = *(v19 + 4 * v125);
        v108 = *(v19 + 4 * v126);
        v109 = *(v19 + 4 * v18);
        goto LABEL_82;
      }

      if (!v45)
      {
        v107 = v18 + 1;
        v106 = *(v19 + 4 * v126);
        v108 = *(v19 + 4 * v18);
LABEL_81:
        v109 = *(v19 + 4 * v107);
LABEL_82:
        goto LABEL_62;
      }

      if (v90 * v45 == 1)
      {
        goto LABEL_62;
      }

      v11 = v120;
      if (v68 * v104 == 1)
      {
        v110 = *(v19 + 4 * v125);
        v111 = *(v19 + 4 * v126);
        v112 = *(v19 + 4 * v18);
LABEL_87:
        goto LABEL_63;
      }

      if (v90 * v68 == 1)
      {
        v110 = *(v19 + 4 * v126);
        v111 = *(v19 + 4 * v18);
        v112 = *(v19 + 4 * v125);
        goto LABEL_87;
      }

LABEL_63:
      v18 += 3;
      if (v119 == v18)
      {
        goto LABEL_88;
      }
    }

    v26 = *a4;
    v25 = a4[1];
    v28 = *a6;
    v27 = a6[1];
    v29 = *v115;
    *(v135.i64 + 4) = 0;
    v135.i32[0] = 0;
    v30 = *(v29 + 16 * v20);
    v31 = *(v29 + 16 * v22);
    v32 = vsubq_f32(v31, v30);
    v33 = vmulq_f32(*v116, v32);
    v34 = v33.f32[2] + vaddv_f32(*v33.f32);
    v35 = v116[1].f32[0];
    v36 = vmulq_f32(v30, *v116);
    if (fabsf(v34) <= 0.00000011921)
    {
      if ((v35 + (v36.f32[2] + vaddv_f32(*v36.f32))) > 0.00000011921)
      {
LABEL_23:
        v41 = (v25 - v26) >> 4;
        v42 = (v27 - v28) >> 4;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v135);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a6, &v135);
        v133 = v20;
        v134 = v22;
        *v43 = v41;
        *(v43 + 1) = v42;
        v24 = *(v21 + v22);
        goto LABEL_24;
      }

      v40.i64[0] = 0x3F0000003F000000;
      v40.i64[1] = 0x3F0000003F000000;
      v39 = vmulq_f32(vaddq_f32(v30, v31), v40);
    }

    else
    {
      v37 = (-v35 - (v36.f32[2] + vaddv_f32(*v36.f32))) / v34;
      v38 = v37 < 0.0 || v37 > 1.0;
      if (v38)
      {
        goto LABEL_23;
      }

      v39 = vmlaq_n_f32(v30, v32, v37);
    }

    v135 = v39;
    goto LABEL_23;
  }

LABEL_88:
  if (a11)
  {
    a11->__end_ = a11->__begin_;
    std::vector<float>::reserve(a11, 4 * *(&v131 + 1));
    for (i = v131; i; i = *i)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](&a11->__begin_, i + 4);
      std::vector<unsigned int>::push_back[abi:nn200100](&a11->__begin_, i + 5);
      std::vector<unsigned int>::push_back[abi:nn200100](&a11->__begin_, i + 6);
      std::vector<unsigned int>::push_back[abi:nn200100](&a11->__begin_, i + 7);
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v130);
}

uint64_t geom::anonymous namespace::split_triangle_mesh_with_plane_impl<double>(void *a1, uint64_t *a2, float64x2_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t *a8, std::vector<unsigned int> *a9, std::vector<unsigned int> *a10, std::vector<unsigned int> *a11)
{
  v11 = a8;
  a4[1] = *a4;
  a5[1] = *a5;
  a6[1] = *a6;
  a7[1] = *a7;
  a8[1] = *a8;
  a9->__end_ = a9->__begin_;
  a10->__end_ = a10->__begin_;
  std::vector<signed char>::reserve(a8, a1[1]);
  std::vector<float>::reserve(a9, a1[1]);
  std::vector<float>::reserve(a10, a1[1]);
  if (a1[1])
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = (*a1 + 32 * v14);
      v17 = a3[2].f64[0] + vmulq_f64(v16[1], a3[1]).f64[0] + vaddvq_f64(vmulq_f64(*v16, *a3));
      LOBYTE(v144[0]) = (v17 > 2.22044605e-16) - (v17 < -2.22044605e-16);
      std::vector<signed char>::push_back[abi:nn200100](v11, v144);
      if (*(v11[1] - 1) < 0)
      {
        LODWORD(v144[0]) = -1;
        std::vector<unsigned int>::push_back[abi:nn200100](&a10->__begin_, v144);
      }

      else
      {
        LODWORD(v144[0]) = (a6[1] - *a6) >> 5;
        std::vector<unsigned int>::push_back[abi:nn200100](&a10->__begin_, v144);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a6, v16);
      }

      if (*(v11[1] - 1) <= 0)
      {
        LODWORD(v144[0]) = (a4[1] - *a4) >> 5;
        std::vector<unsigned int>::push_back[abi:nn200100](&a9->__begin_, v144);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, v16);
      }

      else
      {
        LODWORD(v144[0]) = -1;
        std::vector<unsigned int>::push_back[abi:nn200100](&a9->__begin_, v144);
      }

      v14 = v15;
      v46 = a1[1] > v15++;
    }

    while (v46);
  }

  v131 = a1;
  v132 = a3;
  v147 = 0u;
  v146 = 0u;
  v148 = 1065353216;
  v144[0] = v11;
  v144[1] = a9;
  v144[2] = a10;
  v144[3] = &v146;
  v144[4] = &v145;
  v144[5] = a5;
  v144[6] = a7;
  v143[0] = &v146;
  v143[1] = v11;
  v143[2] = a9;
  v143[3] = a10;
  v143[4] = &v145;
  v143[5] = a5;
  v143[6] = a7;
  if ((a2[1] / 3uLL))
  {
    v18 = 0;
    v135 = 3 * (a2[1] / 3uLL);
    v136 = v11;
    __asm { FMOV            V0.2D, #0.5 }

    v130 = _Q0;
    while (1)
    {
      v23 = *a2;
      v24 = *(*a2 + 4 * v18);
      v25 = *v11;
      v141 = v18 + 1;
      v142 = v18 + 2;
      v26 = *(*a2 + 4 * (v18 + 1));
      v27 = *(*a2 + 4 * (v18 + 2));
      v28 = *(*v11 + v26);
      if (v28 * *(*v11 + v24) == -1)
      {
        v151.i64[0] = __PAIR64__(v26, v24);
        {
          break;
        }
      }

LABEL_24:
      v139 = v27;
      v52 = *(v25 + v27);
      v53 = v52;
      if (v28 * v52 == -1)
      {
        v54 = *(v23 + 4 * v141);
        v55 = *(v23 + 4 * v142);
        v151.i32[0] = *(v23 + 4 * v141);
        v151.i32[1] = v55;
        {
          v57 = *a4;
          v56 = a4[1];
          v59 = *a6;
          v58 = a6[1];
          v60 = *v131 + 32 * v54;
          v61 = *v131 + 32 * v55;
          v152.f64[0] = 0.0;
          v151 = 0uLL;
          v62 = *v60;
          v63 = *(v60 + 16);
          v64 = *v61;
          v65 = *(v61 + 16);
          v66 = vsubq_f64(*v61, *v60);
          v67 = vsubq_f64(v65, v63);
          v68 = v132[1];
          v69 = vmulq_f64(v68, v67).f64[0] + vaddvq_f64(vmulq_f64(*v132, v66));
          v70 = v132[2].f64[0];
          *&v71 = *&vmulq_f64(v63, v68);
          v72 = vmulq_f64(*v60, *v132);
          if (fabs(v69) <= 2.22044605e-16)
          {
            if (v70 + v71 + vaddvq_f64(v72) <= 2.22044605e-16)
            {
              v75 = vmulq_f64(vaddq_f64(v62, v64), v130);
              v74 = vmulq_f64(vaddq_f64(v63, v65), v130);
LABEL_34:
              v75.i64[1] = vextq_s8(v75, v75, 8uLL).u64[0];
              v151 = v75;
              v152 = v74;
            }
          }

          else
          {
            v64.f64[0] = (-v70 - (v71 + vaddvq_f64(v72))) / v69;
            if (v64.f64[0] >= 0.0 && v64.f64[0] <= 1.0)
            {
              v74 = vmlaq_f64(v63, v67, v64);
              *&v66.f64[1] = vextq_s8(v66, v66, 8uLL).u64[0];
              v75 = vmlaq_n_f64(v62, v66, v64.f64[0]);
              goto LABEL_34;
            }
          }

          v76 = (v56 - v57) >> 5;
          v77 = (v58 - v59) >> 5;
          _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v151);
          _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a6, &v151);
          v149 = v54;
          v150 = v55;
          *v78 = v76;
          *(v78 + 1) = v77;
          v52 = *(v25 + v139);
          v53 = *(v25 + v139);
        }
      }

      v79 = *(v25 + v24);
      if (v52 * *(v25 + v24) != -1)
      {
        goto LABEL_48;
      }

      v80 = *(v23 + 4 * v18);
      v81 = *(v23 + 4 * v142);
      v151.i32[0] = *(v23 + 4 * v18);
      v151.i32[1] = v81;
      {
        goto LABEL_48;
      }

      v83 = *a4;
      v82 = a4[1];
      v85 = *a6;
      v84 = a6[1];
      v86 = *v131 + 32 * v80;
      v87 = *v131 + 32 * v81;
      v152.f64[0] = 0.0;
      v151 = 0uLL;
      v88 = *v86;
      v89 = *(v86 + 16);
      v90 = *v87;
      v91 = *(v87 + 16);
      v92 = vsubq_f64(*v87, *v86);
      v93 = vsubq_f64(v91, v89);
      v94 = v132[1];
      v95 = vmulq_f64(v94, v93).f64[0] + vaddvq_f64(vmulq_f64(*v132, v92));
      v96 = v132[2].f64[0];
      *&v97 = *&vmulq_f64(v89, v94);
      v98 = vmulq_f64(*v86, *v132);
      if (fabs(v95) > 2.22044605e-16)
      {
        v90.f64[0] = (-v96 - (v97 + vaddvq_f64(v98))) / v95;
        if (v90.f64[0] < 0.0 || v90.f64[0] > 1.0)
        {
          goto LABEL_47;
        }

        v100 = vmlaq_f64(v89, v93, v90);
        *&v92.f64[1] = vextq_s8(v92, v92, 8uLL).u64[0];
        v101 = vmlaq_n_f64(v88, v92, v90.f64[0]);
        goto LABEL_46;
      }

      if (v96 + v97 + vaddvq_f64(v98) <= 2.22044605e-16)
      {
        v101 = vmulq_f64(vaddq_f64(v88, v90), v130);
        v100 = vmulq_f64(vaddq_f64(v89, v91), v130);
LABEL_46:
        v101.i64[1] = vextq_s8(v101, v101, 8uLL).u64[0];
        v151 = v101;
        v152 = v100;
      }

LABEL_47:
      v102 = (v82 - v83) >> 5;
      v103 = (v84 - v85) >> 5;
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v151);
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a6, &v151);
      v149 = v80;
      v150 = v81;
      *v104 = v102;
      *(v104 + 1) = v103;
      v53 = *(v25 + v139);
      v79 = *(v25 + v24);
LABEL_48:
      v105 = *(v25 + v26);
      if (v79)
      {
        _ZF = 0;
      }

      else
      {
        _ZF = v105 == 0;
      }

      if (_ZF && v53 == 0)
      {
        v111 = a10->__begin_[*(v23 + 4 * v141)];
        v112 = a10->__begin_[*(v23 + 4 * v142)];
        v151.i32[0] = a10->__begin_[*(v23 + 4 * v18)];
        v149 = v111;
        v153[0] = v112;
        std::vector<unsigned int>::push_back[abi:nn200100](a7, &v151);
        std::vector<unsigned int>::push_back[abi:nn200100](a7, &v149);
        std::vector<unsigned int>::push_back[abi:nn200100](a7, v153);
        begin = a9->__begin_;
        v114 = a9->__begin_[*(v23 + 4 * v18)];
        v115 = a9->__begin_[*(v23 + 4 * v141)];
        v116 = *(v23 + 4 * v142);
        goto LABEL_60;
      }

      if ((v79 & 0x80) == 0 && (v105 & 0x80000000) == 0 && (v53 & 0x80) == 0)
      {
        v108 = a7;
        v109 = a10->__begin_[*(v23 + 4 * v141)];
        v110 = a10->__begin_[*(v23 + 4 * v142)];
        v151.i32[0] = a10->__begin_[*(v23 + 4 * v18)];
        v149 = v109;
        v153[0] = v110;
        goto LABEL_61;
      }

      v118 = v79;
      if (v79 <= 0 && v105 <= 0 && v53 <= 0)
      {
        begin = a9->__begin_;
        v114 = a9->__begin_[*(v23 + 4 * v18)];
        v115 = a9->__begin_[*(v23 + 4 * v141)];
        v116 = *(v23 + 4 * v142);
LABEL_60:
        v117 = begin[v116];
        v151.i32[0] = v114;
        v149 = v115;
        v153[0] = v117;
        v108 = a5;
LABEL_61:
        std::vector<unsigned int>::push_back[abi:nn200100](v108, &v151);
        std::vector<unsigned int>::push_back[abi:nn200100](v108, &v149);
        std::vector<unsigned int>::push_back[abi:nn200100](v108, v153);
LABEL_62:
        v11 = v136;
        goto LABEL_63;
      }

      if (!v79)
      {
        v125 = *(v23 + 4 * v18);
        v126 = *(v23 + 4 * v141);
        v127 = *(v23 + 4 * v142);
LABEL_81:
        goto LABEL_62;
      }

      if (!v105)
      {
        v125 = *(v23 + 4 * v141);
        v126 = *(v23 + 4 * v142);
        v127 = *(v23 + 4 * v18);
        goto LABEL_81;
      }

      v11 = v136;
      if (v53)
      {
        if (v105 * v53 == 1)
        {
          v121 = *(v23 + 4 * v18);
          v122 = v18 + 2;
          v123 = *(v23 + 4 * v141);
          goto LABEL_77;
        }

        if (v118 * v53 == 1)
        {
          v121 = *(v23 + 4 * v141);
          v123 = *(v23 + 4 * v142);
          v124 = *(v23 + 4 * v18);
        }

        else
        {
          if (v105 * v118 != 1)
          {
            goto LABEL_63;
          }

          v122 = v18 + 1;
          v121 = *(v23 + 4 * v142);
          v123 = *(v23 + 4 * v18);
LABEL_77:
          v124 = *(v23 + 4 * v122);
        }

        goto LABEL_63;
      }

LABEL_63:
      v18 += 3;
      if (v135 == v18)
      {
        goto LABEL_88;
      }
    }

    v30 = *a4;
    v29 = a4[1];
    v32 = *a6;
    v31 = a6[1];
    v33 = *v131 + 32 * v24;
    v34 = *v131 + 32 * v26;
    v152.f64[0] = 0.0;
    v151 = 0uLL;
    v35 = *v33;
    v36 = *(v33 + 16);
    v37 = *v34;
    v38 = *(v34 + 16);
    v39 = vsubq_f64(*v34, *v33);
    v40 = vsubq_f64(v38, v36);
    v41 = v132[1];
    v42 = vmulq_f64(v41, v40).f64[0] + vaddvq_f64(vmulq_f64(*v132, v39));
    v43 = v132[2].f64[0];
    *&v44 = *&vmulq_f64(v36, v41);
    v45 = vmulq_f64(*v33, *v132);
    if (fabs(v42) <= 2.22044605e-16)
    {
      if (v43 + v44 + vaddvq_f64(v45) > 2.22044605e-16)
      {
LABEL_23:
        v49 = (v29 - v30) >> 5;
        v50 = (v31 - v32) >> 5;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v151);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a6, &v151);
        v149 = v24;
        v150 = v26;
        *v51 = v49;
        *(v51 + 1) = v50;
        v28 = *(v25 + v26);
        goto LABEL_24;
      }

      v48 = vmulq_f64(vaddq_f64(v35, v37), v130);
      v47 = vmulq_f64(vaddq_f64(v36, v38), v130);
    }

    else
    {
      v37.f64[0] = (-v43 - (v44 + vaddvq_f64(v45))) / v42;
      v46 = v37.f64[0] < 0.0 || v37.f64[0] > 1.0;
      if (v46)
      {
        goto LABEL_23;
      }

      v47 = vmlaq_f64(v36, v40, v37);
      *&v39.f64[1] = vextq_s8(v39, v39, 8uLL).u64[0];
      v48 = vmlaq_n_f64(v35, v39, v37.f64[0]);
    }

    v48.i64[1] = vextq_s8(v48, v48, 8uLL).u64[0];
    v151 = v48;
    v152 = v47;
    goto LABEL_23;
  }

LABEL_88:
  if (a11)
  {
    a11->__end_ = a11->__begin_;
    std::vector<float>::reserve(a11, 4 * *(&v147 + 1));
    for (i = v147; i; i = *i)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](&a11->__begin_, i + 4);
      std::vector<unsigned int>::push_back[abi:nn200100](&a11->__begin_, i + 5);
      std::vector<unsigned int>::push_back[abi:nn200100](&a11->__begin_, i + 6);
      std::vector<unsigned int>::push_back[abi:nn200100](&a11->__begin_, i + 7);
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v146);
}

void geom::split_triangle_mesh_with_plane<float>(uint64_t *a1, uint64_t *a2, float32x4_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(&v8, 0, sizeof(v8));
  memset(&__p, 0, sizeof(__p));
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v8.__begin_)
  {
    v8.__end_ = v8.__begin_;
    operator delete(v8.__begin_);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void geom::split_triangle_mesh_with_plane<double>(void *a1, uint64_t *a2, float64x2_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(&v8, 0, sizeof(v8));
  memset(&__p, 0, sizeof(__p));
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v8.__begin_)
  {
    v8.__end_ = v8.__begin_;
    operator delete(v8.__begin_);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

uint64_t geom_split_triangle_mesh_with_plane_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27[0] = a2;
  v27[1] = a1;
  v26[0] = a4;
  v26[1] = 3 * a3;
  v15 = a5[1];
  v25[0] = *a5;
  v25[1] = v15;
  v16 = geom::collection_to_vector<float>(a6);
  v17 = geom::collection_to_vector<float>(a7);
  v18 = geom::collection_to_vector<float>(a8);
  v19 = geom::collection_to_vector<float>(a9);
  v20 = geom::collection_to_vector<float>(a10);
  v21 = geom::collection_to_vector<float>(a11);
  v22 = geom::collection_to_vector<float>(a12);
  v23 = geom::collection_to_vector<float>(a13);
}

uint64_t geom_split_triangle_mesh_with_plane_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = *MEMORY[0x277D85DE8];
  v27[0] = a2;
  v27[1] = a1;
  v26[0] = a4;
  v26[1] = 3 * a3;
  v15 = a5[1];
  v28[0] = *a5;
  v28[1] = v15;
  v28[2] = a5[2];
  v16 = geom::collection_to_vector<float>(a6);
  v17 = geom::collection_to_vector<float>(a7);
  v18 = geom::collection_to_vector<float>(a8);
  v19 = geom::collection_to_vector<float>(a9);
  v20 = geom::collection_to_vector<float>(a10);
  v21 = geom::collection_to_vector<float>(a11);
  v22 = geom::collection_to_vector<float>(a12);
  v23 = geom::collection_to_vector<float>(a13);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::vector<signed char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<signed char>::push_back[abi:nn200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v3 - v6;
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

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void geom::anonymous namespace::split_triangle_mesh_with_plane_impl<float>(geom::slice<geom::vector_type<float,(unsigned char)3,void>::value> const&,geom::slice<unsigned int> const&,geom::general_plane<float,(unsigned char)3> const&,std::vector<geom::vector_type<float,(unsigned char)3,void>::value,std::allocator<geom::vector_type<float,(unsigned char)3,void>::value>> &,std::vector<unsigned int> &,std::vector<geom::vector_type<float,(unsigned char)3,void>::value,std::allocator<geom::vector_type<float,(unsigned char)3,void>::value>> &,std::vector<unsigned int> &,std::vector<signed char> &,std::vector<unsigned int> &,std::vector<unsigned int> &,std::vector<unsigned int>*)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(uint64_t **a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = **a1;
  v9 = *a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = *v11;
  v24[0] = a3;
  v24[1] = a4;
  if (!v13)
  {
    abort();
  }

  v14 = *(v13 + 6);
  v15 = *(v13 + 7);
  v16 = *(v8 + a3);
  v17 = a1[5];
  v18 = *(v9 + 4 * a2);
  if (v16 < 0)
  {
    v22 = *(v9 + 4 * a3);
    v23 = *(v12 + 4 * a4);
    v24[0] = *(v9 + 4 * a2);
    v25 = v22;
    v26 = v14;
    std::vector<unsigned int>::push_back[abi:nn200100](v17, v24);
    std::vector<unsigned int>::push_back[abi:nn200100](v17, &v26);
    std::vector<unsigned int>::push_back[abi:nn200100](v17, &v25);
    v21 = a1[6];
    v24[0] = *(v12 + 4 * a2);
    v25 = v15;
    v26 = v23;
  }

  else
  {
    v19 = *(v9 + 4 * a4);
    v20 = *(v12 + 4 * a3);
    v24[0] = *(v9 + 4 * a2);
    v25 = v14;
    v26 = v19;
    std::vector<unsigned int>::push_back[abi:nn200100](v17, v24);
    std::vector<unsigned int>::push_back[abi:nn200100](v17, &v26);
    std::vector<unsigned int>::push_back[abi:nn200100](v17, &v25);
    v21 = a1[6];
    v24[0] = *(v12 + 4 * a2);
    v25 = v20;
    v26 = v15;
  }

  std::vector<unsigned int>::push_back[abi:nn200100](v21, v24);
  std::vector<unsigned int>::push_back[abi:nn200100](v21, &v26);
  std::vector<unsigned int>::push_back[abi:nn200100](v21, &v25);
}

void geom::anonymous namespace::split_triangle_mesh_with_plane_impl<float>(geom::slice<geom::vector_type<float,(unsigned char)3,void>::value> const&,geom::slice<unsigned int> const&,geom::general_plane<float,(unsigned char)3> const&,std::vector<geom::vector_type<float,(unsigned char)3,void>::value,std::allocator<geom::vector_type<float,(unsigned char)3,void>::value>> &,std::vector<unsigned int> &,std::vector<geom::vector_type<float,(unsigned char)3,void>::value,std::allocator<geom::vector_type<float,(unsigned char)3,void>::value>> &,std::vector<unsigned int> &,std::vector<signed char> &,std::vector<unsigned int> &,std::vector<unsigned int> &,std::vector<unsigned int>*)::{lambda(unsigned int,unsigned int,unsigned int)#2}::operator()(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = *a1;
  v28 = a2;
  v29 = a3;
  {
    abort();
  }

  v13 = *(v12 + 6);
  v14 = *(v12 + 7);
  if (*(**(a1 + 8) + a2) < 0)
  {
    v22 = *(**(a1 + 16) + 4 * a2);
    v23 = **(a1 + 24);
    v24 = *(v23 + 4 * a3);
    v25 = *(v23 + 4 * a4);
    v26 = *(a1 + 40);
    v28 = v22;
    v30 = v13;
    v31 = v10;
    std::vector<unsigned int>::push_back[abi:nn200100](v26, &v28);
    std::vector<unsigned int>::push_back[abi:nn200100](v26, &v31);
    std::vector<unsigned int>::push_back[abi:nn200100](v26, &v30);
    v27 = *(a1 + 48);
    v28 = v24;
    v30 = v11;
    v31 = v25;
    std::vector<unsigned int>::push_back[abi:nn200100](v27, &v28);
    std::vector<unsigned int>::push_back[abi:nn200100](v27, &v31);
    std::vector<unsigned int>::push_back[abi:nn200100](v27, &v30);
    v21 = *(a1 + 48);
    v28 = v25;
    v30 = v11;
    v31 = v14;
  }

  else
  {
    v15 = *(**(a1 + 24) + 4 * a2);
    v16 = **(a1 + 16);
    v17 = *(v16 + 4 * a3);
    v18 = *(v16 + 4 * a4);
    v19 = *(a1 + 48);
    v28 = v15;
    v30 = v14;
    v31 = v11;
    std::vector<unsigned int>::push_back[abi:nn200100](v19, &v28);
    std::vector<unsigned int>::push_back[abi:nn200100](v19, &v31);
    std::vector<unsigned int>::push_back[abi:nn200100](v19, &v30);
    v20 = *(a1 + 40);
    v28 = v17;
    v30 = v10;
    v31 = v18;
    std::vector<unsigned int>::push_back[abi:nn200100](v20, &v28);
    std::vector<unsigned int>::push_back[abi:nn200100](v20, &v31);
    std::vector<unsigned int>::push_back[abi:nn200100](v20, &v30);
    v21 = *(a1 + 40);
    v28 = v18;
    v30 = v10;
    v31 = v13;
  }

  std::vector<unsigned int>::push_back[abi:nn200100](v21, &v28);
  std::vector<unsigned int>::push_back[abi:nn200100](v21, &v31);
  std::vector<unsigned int>::push_back[abi:nn200100](v21, &v30);
}

uint64_t *std::unordered_map<geom::anonymous namespace::edge,geom::anonymous namespace::edge_cut,geom::anonymous namespace::edge_hash,std::equal_to<geom::anonymous namespace::edge>,std::allocator<std::pair<geom::anonymous namespace::edge const,geom::anonymous namespace::edge_cut>>>::find[abi:nn200100](void *a1, unsigned int *a2)
{
  v3 = *a2;
  LODWORD(v2) = a2[1];
  if (v2 >= *a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v3 <= v2)
  {
    v2 = v2;
  }

  else
  {
    v2 = v3;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = (v2 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (v2 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
    if (v6 >= *&v5)
    {
      v8 = v6 % *&v5;
    }
  }

  else
  {
    v8 = v6 & (*&v5 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      v13 = *(result + 4);
      v12 = *(result + 5);
      if (v12 >= v13)
      {
        v14 = *(result + 4);
      }

      else
      {
        v14 = *(result + 5);
      }

      if (v12 <= v13)
      {
        v12 = *(result + 4);
      }

      if (v4 == v14 && v2 == v12)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::unordered_map<geom::anonymous namespace::edge,geom::anonymous namespace::edge_cut,geom::anonymous namespace::edge_hash,std::equal_to<geom::anonymous namespace::edge>,std::allocator<std::pair<geom::anonymous namespace::edge const,geom::anonymous namespace::edge_cut>>>::operator[](void *a1, unsigned int *a2)
{
  v3 = *a2;
  LODWORD(v2) = a2[1];
  if (v2 >= *a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v3 <= v2)
  {
    v2 = v2;
  }

  else
  {
    v2 = v3;
  }

  v5 = (v2 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_33;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (v2 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_33:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_33;
    }

LABEL_32:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_33;
    }
  }

  v13 = *(v10 + 4);
  v12 = *(v10 + 5);
  if (v12 >= v13)
  {
    v14 = *(v10 + 4);
  }

  else
  {
    v14 = *(v10 + 5);
  }

  if (v12 <= v13)
  {
    v12 = *(v10 + 4);
  }

  if (v4 != v14 || v2 != v12)
  {
    goto LABEL_32;
  }

  return v10 + 3;
}

uint64_t geom_create_interpolating_curve_1f(uint64_t a1, uint64_t a2)
{
  v2 = std::vector<geom::interpolating_key<float>>::vector[abi:nn200100]<geom::interpolating_key<float> const*,0>(v6, a2, a2 + 20 * a1);
  geom::interpolating_curve<float>::build(v2, v5);
  v3 = geom_interpolating_curve_1f_obj_alloc();
  geom::interpolating_curve<float>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<float>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD50C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<float>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t geom_create_interpolating_curve_arc_length_parameterized_1f(uint64_t a1, uint64_t a2)
{
  v2 = std::vector<geom::interpolating_key<float>>::vector[abi:nn200100]<geom::interpolating_key<float> const*,0>(v6, a2, a2 + 20 * a1);
  geom::interpolating_curve<float>::build_arc_length_parameterized(v2, v5);
  v3 = geom_interpolating_curve_1f_obj_alloc();
  geom::interpolating_curve<float>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<float>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<float>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

float geom_interpolating_curve_get_knots_1f(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4, double a5, double a6, float a7)
{
  v10 = 0;
  geom::interpolating_curve<float>::span_knots(a1 + 16, a2, &v10 + 1, &v10, a5, a6, a7);
  if (a3)
  {
    result = *(&v10 + 1);
    *a3 = HIDWORD(v10);
  }

  if (a4)
  {
    result = *&v10;
    *a4 = v10;
  }

  return result;
}

uint64_t geom_create_interpolating_curve_1d(uint64_t a1, uint64_t a2)
{
  v2 = std::vector<geom::interpolating_key<double>>::vector[abi:nn200100]<geom::interpolating_key<double> const*,0>(v6, a2, a2 + 40 * a1);
  geom::interpolating_curve<double>::build(v2, v5);
  v3 = geom_interpolating_curve_1d_obj_alloc();
  geom::interpolating_curve<double>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<double>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD528C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<double>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t geom_create_interpolating_curve_arc_length_parameterized_1d(uint64_t a1, uint64_t a2)
{
  v2 = std::vector<geom::interpolating_key<double>>::vector[abi:nn200100]<geom::interpolating_key<double> const*,0>(v6, a2, a2 + 40 * a1);
  geom::interpolating_curve<double>::build_arc_length_parameterized(v2, v5);
  v3 = geom_interpolating_curve_1d_obj_alloc();
  geom::interpolating_curve<double>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<double>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<double>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

double geom_interpolating_curve_get_knots_1d(uint64_t a1, unsigned int a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v10 = 0.0;
  v11 = 0.0;
  geom::interpolating_curve<double>::span_knots(a1 + 16, a2, &v11, &v10, a5, a6, a7);
  if (a3)
  {
    result = v11;
    *a3 = v11;
  }

  if (a4)
  {
    result = v10;
    *a4 = v10;
  }

  return result;
}

uint64_t geom_create_interpolating_curve_2f(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv2_fEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + 32 * a1);
  _ZN4geom19interpolating_curveIDv2_fE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_2f_obj_alloc();
  geom::interpolating_curve<float>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<float>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<float>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t geom_create_interpolating_curve_arc_length_parameterized_2f(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv2_fEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + 32 * a1);
  _ZN4geom19interpolating_curveIDv2_fE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_2f_obj_alloc();
  geom::interpolating_curve<float>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<float>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD54E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<float>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

float geom_interpolating_curve_get_knots_2f(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4, double a5, double a6, float a7)
{
  v10 = 0;
  _ZNK4geom19interpolating_curveIDv2_fE10span_knotsEtRfS3_(a1 + 16, a2, &v10 + 1, &v10, a5, a6, a7);
  if (a3)
  {
    result = *(&v10 + 1);
    *a3 = HIDWORD(v10);
  }

  if (a4)
  {
    result = *&v10;
    *a4 = v10;
  }

  return result;
}

uint64_t geom_create_interpolating_curve_2d(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv2_dEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + (a1 << 6));
  _ZN4geom19interpolating_curveIDv2_dE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_2d_obj_alloc();
  geom::interpolating_curve<double>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<double>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<double>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t geom_create_interpolating_curve_arc_length_parameterized_2d(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv2_dEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + (a1 << 6));
  _ZN4geom19interpolating_curveIDv2_dE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_2d_obj_alloc();
  geom::interpolating_curve<double>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<double>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD56AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<double>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

double geom_interpolating_curve_get_knots_2d(uint64_t a1, unsigned int a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v10 = 0.0;
  v11 = 0.0;
  _ZNK4geom19interpolating_curveIDv2_dE10span_knotsEtRdS3_(a1 + 16, a2, &v11, &v10, a5, a6, a7);
  if (a3)
  {
    result = v11;
    *a3 = v11;
  }

  if (a4)
  {
    result = v10;
    *a4 = v10;
  }

  return result;
}

uint64_t geom_create_interpolating_curve_3f(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_fEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + (a1 << 6));
  _ZN4geom19interpolating_curveIDv3_fE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_3f_obj_alloc();
  geom::interpolating_curve<float>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<float>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD57DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<float>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t geom_create_interpolating_curve_arc_length_parameterized_3f(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_fEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + (a1 << 6));
  _ZN4geom19interpolating_curveIDv3_fE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_3f_obj_alloc();
  geom::interpolating_curve<float>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<float>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<float>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

float geom_interpolating_curve_get_knots_3f(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4, double a5, double a6, float a7)
{
  v10 = 0;
  _ZNK4geom19interpolating_curveIDv3_fE10span_knotsEtRfS3_(a1 + 16, a2, &v10 + 1, &v10, a5, a6, a7);
  if (a3)
  {
    result = *(&v10 + 1);
    *a3 = HIDWORD(v10);
  }

  if (a4)
  {
    result = *&v10;
    *a4 = v10;
  }

  return result;
}

uint64_t geom_create_interpolating_curve_3d(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_dEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + 112 * a1);
  _ZN4geom19interpolating_curveIDv3_dE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_3d_obj_alloc();
  geom::interpolating_curve<double>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<double>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD59A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<double>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t geom_create_interpolating_curve_arc_length_parameterized_3d(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_dEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + 112 * a1);
  _ZN4geom19interpolating_curveIDv3_dE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_3d_obj_alloc();
  geom::interpolating_curve<double>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<double>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<double>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

float64_t geom_interpolating_curve_evaluate_at_3d@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  _ZNK4geom19interpolating_curveIDv3_dE11evaluate_atEd(a1 + 16, v6, a3);
  result = v6[0].f64[0];
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

float64_t geom_interpolating_curve_evaluate_tangent_at_3d@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  _ZNK4geom19interpolating_curveIDv3_dE19evaluate_tangent_atEd(a1 + 16, v6, a3);
  result = v6[0].f64[0];
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

double geom_interpolating_curve_get_knots_3d(uint64_t a1, unsigned int a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v10 = 0.0;
  v11 = 0.0;
  _ZNK4geom19interpolating_curveIDv3_dE10span_knotsEtRdS3_(a1 + 16, a2, &v11, &v10, a5, a6, a7);
  if (a3)
  {
    result = v11;
    *a3 = v11;
  }

  if (a4)
  {
    result = v10;
    *a4 = v10;
  }

  return result;
}

uint64_t geom_create_interpolating_curve_4f(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_fEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + (a1 << 6));
  _ZN4geom19interpolating_curveIDv4_fE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_4f_obj_alloc();
  geom::interpolating_curve<float>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<float>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<float>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t geom_create_interpolating_curve_arc_length_parameterized_4f(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_fEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + (a1 << 6));
  _ZN4geom19interpolating_curveIDv4_fE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_4f_obj_alloc();
  geom::interpolating_curve<float>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<float>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<float>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

float geom_interpolating_curve_get_knots_4f(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4, double a5, double a6, float a7)
{
  v10 = 0;
  _ZNK4geom19interpolating_curveIDv4_fE10span_knotsEtRfS3_(a1 + 16, a2, &v10 + 1, &v10, a5, a6, a7);
  if (a3)
  {
    result = *(&v10 + 1);
    *a3 = HIDWORD(v10);
  }

  if (a4)
  {
    result = *&v10;
    *a4 = v10;
  }

  return result;
}

uint64_t geom_create_interpolating_curve_4d(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_dEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + 112 * a1);
  _ZN4geom19interpolating_curveIDv4_dE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_4d_obj_alloc();
  geom::interpolating_curve<double>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<double>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<double>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t geom_create_interpolating_curve_arc_length_parameterized_4d(uint64_t a1, uint64_t a2)
{
  v2 = _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_dEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(v6, a2, a2 + 112 * a1);
  _ZN4geom19interpolating_curveIDv4_dE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(v2, v5);
  v3 = geom_interpolating_curve_4d_obj_alloc();
  geom::interpolating_curve<double>::interpolating_curve(v3 + 16, v5);
  geom::interpolating_curve<double>::~interpolating_curve(v5);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v3;
}

void sub_24FFD5E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geom::interpolating_curve<double>::~interpolating_curve(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

double geom_interpolating_curve_get_knots_4d(uint64_t a1, unsigned int a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v10 = 0.0;
  v11 = 0.0;
  _ZNK4geom19interpolating_curveIDv4_dE10span_knotsEtRdS3_(a1 + 16, a2, &v11, &v10, a5, a6, a7);
  if (a3)
  {
    result = v11;
    *a3 = v11;
  }

  if (a4)
  {
    result = v10;
    *a4 = v10;
  }

  return result;
}

uint64_t geom::interpolating_curve<float>::~interpolating_curve(uint64_t a1)
{
  geom::interpolating_spline<float>::~interpolating_spline(a1 + 96);
  v6 = (a1 + 72);
  std::vector<geom::interpolating_spline<float>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::vector<geom::interpolating_spline<float>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = geom::interpolating_spline<float>::~interpolating_spline(v4 - 88);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t geom::interpolating_curve<double>::~interpolating_curve(uint64_t a1)
{
  geom::interpolating_spline<double>::~interpolating_spline(a1 + 96);
  v6 = (a1 + 72);
  std::vector<geom::interpolating_spline<double>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::vector<geom::interpolating_spline<double>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = geom::interpolating_spline<double>::~interpolating_spline(v4 - 96);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<geom::interpolating_key<float>>::vector[abi:nn200100]<geom::interpolating_key<float> const*,0>(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    std::vector<geom::interpolating_key<float>>::__vallocate[abi:nn200100](result, 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 2));
  }

  return result;
}

void std::vector<geom::interpolating_key<float>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_key<float>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_key<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t geom::interpolating_curve<float>::interpolating_curve(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  geom::interpolating_spline<float>::interpolating_spline(a1 + 96, a2 + 96);
  v4 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v4;
  return a1;
}

void *std::vector<geom::interpolating_key<double>>::vector[abi:nn200100]<geom::interpolating_key<double> const*,0>(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    std::vector<geom::interpolating_key<double>>::__vallocate[abi:nn200100](result, 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 3));
  }

  return result;
}

void std::vector<geom::interpolating_key<double>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_key<double>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_key<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t geom::interpolating_curve<double>::interpolating_curve(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  geom::interpolating_spline<double>::interpolating_spline(a1 + 96, a2 + 96);
  v4 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v4;
  return a1;
}

void *_ZNSt3__16vectorIN4geom17interpolating_keyIDv2_fEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(result, (a3 - a2) >> 5);
  }

  return result;
}

void *_ZNSt3__16vectorIN4geom17interpolating_keyIDv2_dEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    _ZNSt3__16vectorIN4geom17interpolating_keyIDv2_dEENS_9allocatorIS4_EEE11__vallocateB8nn200100Em(result, (a3 - a2) >> 6);
  }

  return result;
}

void _ZNSt3__16vectorIN4geom17interpolating_keyIDv2_dEENS_9allocatorIS4_EEE11__vallocateB8nn200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN4geom17interpolating_keyIDv2_dEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN4geom17interpolating_keyIDv2_dEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *_ZNSt3__16vectorIN4geom17interpolating_keyIDv3_fEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_fEENS_9allocatorIS4_EEE11__vallocateB8nn200100Em(result, (a3 - a2) >> 6);
  }

  return result;
}

void _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_fEENS_9allocatorIS4_EEE11__vallocateB8nn200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN4geom17interpolating_keyIDv3_fEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN4geom17interpolating_keyIDv3_fEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *_ZNSt3__16vectorIN4geom17interpolating_keyIDv3_dEENS_9allocatorIS4_EEEC2B8nn200100IPKS4_Li0EEET_SB_(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_dEENS_9allocatorIS4_EEE11__vallocateB8nn200100Em(result, 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 4));
  }

  return result;
}

void _ZNSt3__16vectorIN4geom17interpolating_keyIDv3_dEENS_9allocatorIS4_EEE11__vallocateB8nn200100Em(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN4geom17interpolating_keyIDv3_dEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN4geom17interpolating_keyIDv3_dEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void geom::triangle_mesh_connectivity::make(std::vector<int>::size_type a1@<X0>, unsigned int **a2@<X1>, _BYTE *a3@<X8>)
{
  geom::triangle_mesh_half_edge_connectivity::make(a1, a2, &v33);
  if (v47 == 1)
  {
    __b[0] = 0;
    __b[1] = 0;
    v32 = 0;
    if (HIDWORD(v33))
    {
      std::vector<float>::__vallocate[abi:nn200100](__b, (3 * HIDWORD(v33)));
    }

    v4 = ((v40 - *(&v39 + 1)) >> 2) - v34;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    if (v4 >= 2)
    {
      std::vector<float>::__vallocate[abi:nn200100](v29, v4 >> 1);
    }

    if ((v47 & 1) == 0)
    {
      goto LABEL_35;
    }

    v24 = 0u;
    v25 = 0u;
    v20 = v37;
    v21 = v38;
    v37 = 0u;
    v38 = 0u;
    v22 = v39;
    v23 = v40;
    v39 = 0u;
    v40 = 0u;
    v16 = v33;
    v17 = v34;
    v34 = 0;
    v18 = v35;
    v19 = v36;
    v35 = 0u;
    v36 = 0u;
    v26 = 0u;
    v27 = *__b;
    *v28 = v32;
    *__b = 0u;
    v32 = 0;
    v33 = 0;
    *&v28[8] = *v29;
    *&v28[24] = v30;
    *v29 = 0u;
    v30 = 0;
    v15 = 0;
    memset(v10, 0, sizeof(v10));
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    LOBYTE(__p.__begin_) = 0;
    std::swap[abi:nn200100]<geom::triangle_mesh_half_edge_connectivity>(v10, &v16);
    v5 = v11;
    v6 = v12;
    v11 = v27;
    v12 = *v28;
    v27 = v5;
    *v28 = v6;
    v7 = v13;
    v13 = *&v28[16];
    *&v28[16] = v7;
    if (v47)
    {
      if (v46)
      {
        std::optional<std::vector<unsigned int>>::operator=[abi:nn200100]<std::vector<unsigned int>,void>(&__p, &v45);
      }

      std::pair<geom::triangle_mesh_connectivity,std::optional<std::vector<unsigned int>>>::pair[abi:nn200100](a3, v10);
      a3[240] = 1;
      if (v15 == 1 && __p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(v10);
      geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(&v16);
      if (v29[0])
      {
        v29[1] = v29[0];
        operator delete(v29[0]);
      }

      if (__b[0])
      {
        __b[1] = __b[0];
        operator delete(__b[0]);
      }

      if (v47)
      {
        if (v46 == 1 && v45.n128_u64[0])
        {
          v45.n128_u64[1] = v45.n128_u64[0];
          operator delete(v45.n128_u64[0]);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (*(&v39 + 1))
        {
          *&v40 = *(&v39 + 1);
          operator delete(*(&v39 + 1));
        }

        if (v38)
        {
          *(&v38 + 1) = v38;
          operator delete(v38);
        }

        if (*(&v36 + 1))
        {
          *&v37 = *(&v36 + 1);
          operator delete(*(&v36 + 1));
        }

        if (v35)
        {
          *(&v35 + 1) = v35;
          operator delete(v35);
        }
      }
    }

    else
    {
LABEL_35:
      v8 = std::__throw_bad_optional_access[abi:nn200100]();
      std::optional<std::vector<unsigned int>>::operator=[abi:nn200100]<std::vector<unsigned int>,void>(v8, v9);
    }
  }

  else
  {
    *a3 = 0;
    a3[240] = 0;
  }
}

std::vector<unsigned int> *std::optional<std::vector<unsigned int>>::operator=[abi:nn200100]<std::vector<unsigned int>,void>(std::vector<unsigned int> *this, __n128 *a2)
{
  if (LOBYTE(this[1].__begin_) == 1)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(this, a2);
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *this = *a2->n128_u8;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return this;
}

void geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(geom::triangle_mesh_connectivity *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    *(this + 9) = v7;
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 6) = v8;
    operator delete(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    *(this + 3) = v9;
    operator delete(v9);
  }
}

void geom::triangle_mesh_connectivity::make(geom::triangle_mesh_connectivity *this@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, a2);
  }

  geom::triangle_mesh_connectivity::make(this, &__p, a3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

uint64_t geom::triangle_mesh_connectivity::collapse_edge(geom::triangle_mesh_connectivity *this, unsigned int a2)
{
  v2 = *(this + 23);
  if (a2 >= ((*(this + 24) - v2) >> 2))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 4 * a2);
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, v3 / 3, v3 % 3);
  half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, half_edge_for_face_vertex);
  is_boundary_half_edge = geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(this, half_edge_for_face_vertex);
  face_and_face_vertex_for_half_edge = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(this, half_edge_for_face_vertex);
  v9 = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(this, half_edge_twin);
  v10 = v9;
  if (BYTE4(face_and_face_vertex_for_half_edge))
  {
    v11 = BYTE4(face_and_face_vertex_for_half_edge) - 1;
  }

  else
  {
    v11 = 2;
  }

  if (BYTE4(face_and_face_vertex_for_half_edge) == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = BYTE4(face_and_face_vertex_for_half_edge) + 1;
  }

  if (BYTE4(v9))
  {
    v13 = BYTE4(v9) - 1;
  }

  else
  {
    v13 = 2;
  }

  if (BYTE4(v9) == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = BYTE4(v9) + 1;
  }

  v46 = v11;
  v15 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, face_and_face_vertex_for_half_edge, v11);
  v16 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, v15);
  v17 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, face_and_face_vertex_for_half_edge, v12);
  v18 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, v17);
  v50 = is_boundary_half_edge;
  v49 = v10;
  v47 = v14;
  v48 = v13;
  if (is_boundary_half_edge)
  {
    v19 = -1;
    v20 = -1;
  }

  else
  {
    v22 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, v10, v14);
    v19 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, v22);
    v23 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, v10, v13);
    v20 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, v23);
  }

  v24 = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(this, v16);
  v25 = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(this, v18);
  v26 = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(this, v19);
  v27 = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(this, v20);
  v28 = *this;
  result = geom::triangle_mesh_half_edge_connectivity::collapse_edge(this, half_edge_for_face_vertex);
  if (*this != v28)
  {
    v29 = 3 * face_and_face_vertex_for_half_edge;
    v30 = *(this + 20);
    v31 = *(v30 + 4 * (3 * face_and_face_vertex_for_half_edge + v12));
    v32 = *(v30 + 4 * (3 * face_and_face_vertex_for_half_edge + v46));
    if (result == -1)
    {
      v34 = *(this + 23);
      *(v34 + 4 * v31) = -1;
      v35 = v49;
      v36 = v47;
      v38 = v48;
    }

    else
    {
      if (v25 == -1)
      {
        v33 = *(v30 + 4 * (3 * face_and_face_vertex_for_half_edge + v46));
      }

      else
      {
        v33 = *(v30 + 4 * (3 * face_and_face_vertex_for_half_edge + v12));
      }

      if (v33 != v31)
      {
        v32 = *(v30 + 4 * (3 * face_and_face_vertex_for_half_edge + v12));
      }

      v34 = *(this + 23);
      v35 = v49;
      v36 = v47;
      if (v24 != -1)
      {
        v37 = 3 * v24 + BYTE4(v24);
        *(v30 + 4 * v37) = v33;
        *(v34 + 4 * v33) = v37;
      }

      v38 = v48;
      if (v25 != -1)
      {
        v39 = 3 * v25 + BYTE4(v25);
        *(v30 + 4 * v39) = v31;
        *(v34 + 4 * v31) = v39;
      }
    }

    *(v34 + 4 * v32) = -1;
    if (v50)
    {
      goto LABEL_46;
    }

    v40 = 3 * v35;
    v41 = *(v30 + 4 * (3 * v35 + v36));
    v42 = *(v30 + 4 * (3 * v35 + v38));
    if (result == -1)
    {
      v45 = -1;
    }

    else
    {
      if (v26 == -1)
      {
        v43 = *(v30 + 4 * (3 * v35 + v38));
      }

      else
      {
        v43 = *(v30 + 4 * (3 * v35 + v36));
      }

      if (v43 != v41)
      {
        v42 = *(v30 + 4 * (3 * v35 + v36));
      }

      if (v26 != -1)
      {
        v44 = 3 * v26 + BYTE4(v26);
        *(v30 + 4 * v44) = v41;
        *(v34 + 4 * v41) = v44;
      }

      if (v27 == -1)
      {
        goto LABEL_45;
      }

      v45 = 3 * v27 + BYTE4(v27);
      *(v30 + 4 * v45) = v43;
      v41 = v43;
    }

    *(v34 + 4 * v41) = v45;
LABEL_45:
    *(v34 + 4 * v42) = -1;
    *(v30 + 4 * v40) = -1;
    *(v30 + 4 * (v40 + 1)) = -1;
    *(v30 + 4 * (v40 + 2)) = -1;
LABEL_46:
    *(v34 + 4 * *(v30 + 4 * (BYTE4(face_and_face_vertex_for_half_edge) + v29))) = -1;
    *(v30 + 4 * v29) = -1;
    *(v30 + 4 * (v29 + 1)) = -1;
    *(v30 + 4 * (v29 + 2)) = -1;
  }

  return result;
}

BOOL geom::triangle_mesh_connectivity::swap_edge(geom::triangle_mesh_connectivity *this, unsigned int a2)
{
  v2 = a2;
  v3 = *(this + 23);
  if (a2 >= ((*(this + 24) - v3) >> 2))
  {
    return 0;
  }

  v4 = *(v3 + 4 * a2);
  if (v4 == -1)
  {
    return 0;
  }

  half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, v4 / 3, v4 % 3);
  half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, half_edge_for_face_vertex);
  if (half_edge_twin == -1)
  {
    return 0;
  }

  v9 = half_edge_twin;
  face_and_face_vertex_for_half_edge = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(this, half_edge_for_face_vertex);
  v11 = geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(this, v9);
  result = geom::triangle_mesh_half_edge_connectivity::swap_edge(this, half_edge_for_face_vertex);
  if (result)
  {
    v13 = 3 * v11;
    v14 = 3 * face_and_face_vertex_for_half_edge + BYTE4(face_and_face_vertex_for_half_edge);
    if (BYTE4(face_and_face_vertex_for_half_edge) == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = BYTE4(face_and_face_vertex_for_half_edge) + 1;
    }

    v16 = v15 + 3 * face_and_face_vertex_for_half_edge;
    if (BYTE4(v11) == 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = BYTE4(v11) + 1;
    }

    v18 = v17 + v13;
    v19 = *(this + 20);
    v20 = *(v19 + 4 * v16);
    v21 = *(v19 + 4 * v18);
    v22 = v13 + BYTE4(v11);
    v23 = *(this + 23);
    *(v23 + 4 * v2) = v16;
    *(v23 + 4 * v20) = v22;
    *(v23 + 4 * v21) = v14;
    *(v19 + 4 * v14) = v21;
    *(v19 + 4 * v22) = v20;
    *(v19 + 4 * v16) = a2;
    *(v19 + 4 * v18) = a2;
    return 1;
  }

  return result;
}

uint64_t geom::triangle_mesh_connectivity::split_face(int32x2_t *this, int a2)
{
  v2 = (3 * a2);
  v3 = this[2];
  v4 = (*&this[3] - *&v3) >> 2;
  if (v4 <= v2 || *(*&v3 + 4 * v2) == -1)
  {
    return 0;
  }

  result = geom::triangle_mesh_half_edge_connectivity::split_face(this, a2);
  if (result)
  {
    v7 = v4 / 3;
    v8 = v2 + 1;
    v10 = &this[20];
    v9 = this[20];
    v23 = *(*&v9 + 4 * (v2 + 1));
    v11 = v2 + 2;
    v12 = *(*&v9 + 4 * v11);
    v13 = 3 * v7;
    v22 = v12;
    v15 = this[23];
    v14 = this + 23;
    *(*&v15 + 4 * v23) = 3 * v7;
    *(*&v15 + 4 * v12) = 3 * v7 + 3;
    v16 = (*&v14[1] - *&v15) >> 2;
    v20 = v16 + 1;
    v21 = v16;
    v18 = v8;
    v19 = v16 + 2;
    std::vector<unsigned int>::push_back[abi:nn200100](v14, &v18);
    v18 = v13 + 1;
    std::vector<unsigned int>::push_back[abi:nn200100](v14, &v18);
    v18 = v13 + 4;
    std::vector<unsigned int>::push_back[abi:nn200100](v14, &v18);
    v17 = *v10;
    *(*v10 + v8) = v16;
    v17[v11] = v16 + 2;
    std::vector<unsigned int>::push_back[abi:nn200100](v10, &v23);
    std::vector<unsigned int>::push_back[abi:nn200100](v10, &v20);
    std::vector<unsigned int>::push_back[abi:nn200100](v10, &v21);
    std::vector<unsigned int>::push_back[abi:nn200100](v10, &v22);
    std::vector<unsigned int>::push_back[abi:nn200100](v10, &v19);
    std::vector<unsigned int>::push_back[abi:nn200100](v10, &v20);
    return 1;
  }

  return result;
}

void std::swap[abi:nn200100]<geom::triangle_mesh_half_edge_connectivity>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  v6 = *a1;
  *a1 = 0;
  v7 = *(a1 + 2);
  *(a1 + 2) = 0;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  if (a1 != a2)
  {
    a1[5] = *(a2 + 40);
    *(a2 + 40) = 0;
    v10 = a1[6];
    a1[6] = *(a2 + 48);
    *(a2 + 48) = v10;
    v11 = a1[7];
    a1[7] = *(a2 + 56);
    *(a2 + 56) = v11;
    v12 = a1[8];
    a1[8] = *(a2 + 64);
    *(a2 + 64) = v12;
    v13 = a1[9];
    a1[9] = *(a2 + 72);
    *(a2 + 72) = v13;
    v14 = a1[10];
    a1[10] = *(a2 + 80);
    *(a2 + 80) = v14;
    v15 = a1[11];
    a1[11] = *(a2 + 88);
    *(a2 + 88) = v15;
    v16 = a1[12];
    a1[12] = *(a2 + 96);
    *(a2 + 96) = v16;
    v17 = a1[13];
    a1[13] = *(a2 + 104);
    *(a2 + 104) = v17;
    *a1 = *a2;
    *a2 = 0;
    LODWORD(v17) = *(a1 + 1);
    *(a1 + 1) = *(a2 + 4);
    *(a2 + 4) = v17;
    *(a1 + 2) = *(a2 + 8);
    v18 = a1[2];
    a1[2] = *(a2 + 16);
    *(a2 + 16) = v18;
    v19 = a1[3];
    a1[3] = *(a2 + 24);
    *(a2 + 24) = v19;
    a1[4] = *(a2 + 32);
  }

  v20 = *(a2 + 40);
  v21 = *(a2 + 64);
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  v22 = *(a2 + 88);
  *(a2 + 80) = v4;
  *(a2 + 96) = v5;
  *a2 = v6;
  *(a2 + 8) = v7;
  v23 = *(a2 + 16);
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  if (v22)
  {
    operator delete(v22);
  }

  if (v21)
  {
    operator delete(v21);
  }

  if (v20)
  {
    operator delete(v20);
  }

  if (v23)
  {

    operator delete(v23);
  }
}

__n128 std::pair<geom::triangle_mesh_connectivity,std::optional<std::vector<unsigned int>>>::pair[abi:nn200100](uint64_t a1, __n128 *a2)
{
  result.n128_u64[0] = geom::triangle_mesh_connectivity::triangle_mesh_connectivity(a1, a2).n128_u64[0];
  *(v3 + 208) = 0;
  *(v3 + 232) = 0;
  if (a2[14].n128_u8[8] == 1)
  {
    *(v3 + 208) = 0;
    *(v3 + 216) = 0;
    *(v3 + 224) = 0;
    result = a2[13];
    *(v3 + 208) = result;
    *(v3 + 224) = a2[14].n128_u64[0];
    a2[13].n128_u64[0] = 0;
    a2[13].n128_u64[1] = 0;
    a2[14].n128_u64[0] = 0;
    *(v3 + 232) = 1;
  }

  return result;
}

__n128 geom::triangle_mesh_connectivity::triangle_mesh_connectivity(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v2 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v2;
  v3 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  v4 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v4;
  v5 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v5;
  v6 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v6;
  v7 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v7;
  v8 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v8;
  v9 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v9;
  *a1 = *a2;
  *a2 = 0;
  LODWORD(v9) = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  LODWORD(v9) = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  result = *(a2 + 184);
  *(a1 + 184) = result;
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  return result;
}

uint64_t geom::interval<float>::interval(uint64_t result)
{
  *result |= 0x1Fu;
  *(result + 4) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t geom::interval<float>::interval(uint64_t a1, float a2)
{
  *a1 &= 0xF9u;
  *(a1 + 4) = a2;
  *(a1 + 8) = a2;
  geom::interval<float>::set_flags(a1);
  return a1;
}

uint64_t geom::interval<float>::set_singleton(uint64_t result, float a2)
{
  *result &= 0xF9u;
  *(result + 4) = a2;
  *(result + 8) = a2;
  return geom::interval<float>::set_flags(result);
}

uint64_t geom::interval<float>::interval(uint64_t a1, float a2, float a3)
{
  *a1 &= 0xF9u;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  geom::interval<float>::set_flags(a1);
  return a1;
}

uint64_t geom::interval<float>::set_closed(uint64_t result, float a2, float a3)
{
  *result &= 0xF9u;
  *(result + 4) = a2;
  *(result + 8) = a3;
  return geom::interval<float>::set_flags(result);
}

uint64_t geom::interval<float>::interval(uint64_t a1, int a2, int a3, float a4, float a5)
{
  *a1 = (2 * (a2 == 0)) | (4 * (a3 == 0)) | *a1 & 0xF9;
  *(a1 + 4) = a4;
  *(a1 + 8) = a5;
  geom::interval<float>::set_flags(a1);
  return a1;
}

uint64_t geom::interval<float>::set(uint64_t result, int a2, int a3, float a4, float a5)
{
  *result = *result & 0xF9 | (2 * (a2 == 0)) | (4 * (a3 == 0));
  *(result + 4) = a4;
  *(result + 8) = a5;
  return geom::interval<float>::set_flags(result);
}

uint64_t geom::interval<float>::set_lower_bound(uint64_t result, int a2, float a3)
{
  *result = *result & 0xFD | (2 * (a2 == 0));
  *(result + 4) = a3;
  return geom::interval<float>::set_flags(result);
}

uint64_t geom::interval<float>::set_flags(uint64_t result)
{
  v2 = *(result + 4);
  v1 = *(result + 8);
  v3 = (*result & 6) != 0;
  if (v1 != v2)
  {
    v3 = v1 < v2;
  }

  if (v3)
  {
    v4 = *result & 0xFE | v3 | 0x18;
  }

  else
  {
    v4 = *result & 0xE6 | v3 & 0xE7 | (8 * (v2 != -INFINITY)) | (16 * (v1 != INFINITY));
  }

  *result = v4;
  return result;
}

uint64_t geom::interval<float>::set_upper_bound(uint64_t result, int a2, float a3)
{
  *result = *result & 0xFB | (4 * (a2 == 0));
  *(result + 8) = a3;
  return geom::interval<float>::set_flags(result);
}

uint64_t geom::interval<float>::set_empty(uint64_t result)
{
  *result |= 6u;
  *(result + 4) = 0;
  *(result + 8) = 0;
  return geom::interval<float>::set_flags(result);
}

uint64_t geom::interval<float>::set_open(uint64_t result, float a2, float a3)
{
  *result |= 6u;
  *(result + 4) = a2;
  *(result + 8) = a3;
  return geom::interval<float>::set_flags(result);
}

uint64_t geom::interval<float>::set_universe(uint64_t result)
{
  *result |= 6u;
  *(result + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  return geom::interval<float>::set_flags(result);
}

uint64_t geom::interval<float>::is_valid(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 8);
  return 1;
}

uint64_t geom::interval<float>::is_closed(_BYTE *a1)
{
  if (*a1 & 2) == 0 || (*a1)
  {
    v1 = ((*a1 & 4) == 0) | *a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t geom::interval<float>::is_open(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = (v1 >> 2) & 1;
  if (v1)
  {
    v2 = 1;
  }

  if ((v1 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t geom::interval<float>::contains(uint64_t a1, float a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = v2 < a2;
  if ((*a1 & 2) == 0)
  {
    v4 = v2 <= a2;
  }

  if ((*a1 & 4) != 0)
  {
    v5 = v3 > a2;
  }

  else
  {
    v5 = v3 >= a2;
  }

  return v4 & v5;
}

float geom::interval<float>::midpoint(float *a1)
{
  v1 = *a1;
  result = NAN;
  if ((~v1 & 0x18) == 0 && (v1 & 1) == 0)
  {
    return a1[2] * 0.5 + a1[1] * 0.5;
  }

  return result;
}

uint64_t geom::interval<double>::interval(uint64_t result)
{
  *result |= 0x1Fu;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t geom::interval<double>::interval(uint64_t a1, double a2)
{
  *a1 &= 0xF9u;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  geom::interval<double>::set_flags(a1);
  return a1;
}

uint64_t geom::interval<double>::set_singleton(uint64_t result, double a2)
{
  *result &= 0xF9u;
  *(result + 8) = a2;
  *(result + 16) = a2;
  return geom::interval<double>::set_flags(result);
}

uint64_t geom::interval<double>::interval(uint64_t a1, double a2, double a3)
{
  *a1 &= 0xF9u;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  geom::interval<double>::set_flags(a1);
  return a1;
}

uint64_t geom::interval<double>::set_closed(uint64_t result, double a2, double a3)
{
  *result &= 0xF9u;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return geom::interval<double>::set_flags(result);
}

uint64_t geom::interval<double>::interval(uint64_t a1, int a2, int a3, double a4, double a5)
{
  *a1 = (2 * (a2 == 0)) | (4 * (a3 == 0)) | *a1 & 0xF9;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  geom::interval<double>::set_flags(a1);
  return a1;
}

uint64_t geom::interval<double>::set(uint64_t result, int a2, int a3, double a4, double a5)
{
  *result = *result & 0xF9 | (2 * (a2 == 0)) | (4 * (a3 == 0));
  *(result + 8) = a4;
  *(result + 16) = a5;
  return geom::interval<double>::set_flags(result);
}

uint64_t geom::interval<double>::set_lower_bound(uint64_t result, int a2, double a3)
{
  *result = *result & 0xFD | (2 * (a2 == 0));
  *(result + 8) = a3;
  return geom::interval<double>::set_flags(result);
}

uint64_t geom::interval<double>::set_flags(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = (*result & 6) != 0;
  if (v1 != v2)
  {
    v3 = v1 < v2;
  }

  if (v3)
  {
    v4 = *result & 0xFE | v3 | 0x18;
  }

  else
  {
    v4 = *result & 0xE6 | v3 & 0xE7 | (8 * (v2 != -INFINITY)) | (16 * (v1 != INFINITY));
  }

  *result = v4;
  return result;
}

uint64_t geom::interval<double>::set_upper_bound(uint64_t result, int a2, double a3)
{
  *result = *result & 0xFB | (4 * (a2 == 0));
  *(result + 16) = a3;
  return geom::interval<double>::set_flags(result);
}

uint64_t geom::interval<double>::set_empty(uint64_t result)
{
  *result |= 6u;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return geom::interval<double>::set_flags(result);
}

uint64_t geom::interval<double>::set_open(uint64_t result, double a2, double a3)
{
  *result |= 6u;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return geom::interval<double>::set_flags(result);
}

uint64_t geom::interval<double>::set_universe(uint64_t result)
{
  *result |= 6u;
  *(result + 8) = xmmword_2500C4DE0;
  return geom::interval<double>::set_flags(result);
}

uint64_t geom::interval<double>::is_valid(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  return 1;
}

uint64_t geom::interval<double>::contains(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v2 < a2;
  if ((*a1 & 2) == 0)
  {
    v4 = v2 <= a2;
  }

  if ((*a1 & 4) != 0)
  {
    v5 = v3 > a2;
  }

  else
  {
    v5 = v3 >= a2;
  }

  return v4 & v5;
}

double geom::interval<double>::midpoint(double *a1)
{
  v1 = *a1;
  if (~v1 & 0x18) != 0 || (v1)
  {
    return NAN;
  }

  else
  {
    return a1[2] * 0.5 + a1[1] * 0.5;
  }
}

uint64_t geom::kd_tree<float,(unsigned char)2>::kd_tree(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6[0] = a2;
  v6[1] = a3;
  *a1 = 0;
  _ZN4geom19make_external_arrayINS_5sliceIDv2_fEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v6, a4, a1 + 8);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

double geom::kd_tree<float,(unsigned char)2>::kd_tree(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v2 = *(a2 + 8);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v2;
  *(a1 + 24) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

double geom::kd_tree<float,(unsigned char)2>::kd_tree(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t geom::kd_tree<float,(unsigned char)2>::reset(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  *result = 0;
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  if (!a3)
  {
    a2 = 0;
  }

  if (a3 && a4)
  {
    operator new[]();
  }

  if (*(result + 24) == 1)
  {
    result = *(result + 8);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C8000313F17);
    }
  }

  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = 0;
  return result;
}

void geom::kd_tree<float,(unsigned char)2>::build(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(a1);
    }
  }

  else
  {
    geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(a1);
  }
}

void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  __x[0] = -1;
  std::vector<unsigned int>::resize((a1 + 32), v2 + 1, __x);
  memset(&v34, 0, sizeof(v34));
  std::vector<float>::resize(&v34, *(a1 + 16));
  if (v34.__begin_ != v34.__end_)
  {
    v3 = 0;
    v4 = (v34.__end_ - v34.__begin_ - 4) >> 2;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v7 = v34.__begin_ + 2;
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1680)));
      if (vuzp1_s16(v9, *v5.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v5).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1670)))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v7 += 4;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 40) - *(a1 + 32);
  v12 = *(a1 + 64) - v10;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      *(a1 + 64) = v10 + (v11 >> 2);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a1 + 56), (v11 >> 2) - v12);
    v11 = *(a1 + 40) - *(a1 + 32);
  }

  v32 = 0u;
  v33 = 0u;
  *__x = 0u;
  if (v11 < 5)
  {
    v13 = 0;
  }

  else
  {
    v36 = 1;
    LODWORD(v37) = *(a1 + 16);
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v36);
    v13 = *(&v33 + 1);
  }

  v36 = &unk_286290818;
  v37 = a1;
  v38 = &v36;
  if (v13)
  {
    do
    {
      v14 = (*(*&__x[2] + 8 * (v33 / 0x155)) + 12 * (v33 % 0x155));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *&v33 = v33 + 1;
      *(&v33 + 1) = v13 - 1;
      if (v33 >= 0x2AA)
      {
        operator delete(**&__x[2]);
        *&__x[2] += 8;
        *&v33 = v33 - 341;
      }

      v18 = v17 - v16;
      if (v17 - v16 == 1)
      {
        *(*(a1 + 32) + 4 * v15) = v34.__begin_[v16];
      }

      else
      {
        v20 = v19 & 1;
        *(v15 + *(a1 + 56)) = v19 & 1;
        if ((-1 << (v21 - 1)) + v18 >= ~(-1 << v21))
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = (-1 << (v21 - 1)) + v18;
        }

        v23 = v22 + v16;
        begin = v34.__begin_;
        v25 = (v22 + v16);
        std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(&v36, v20);
        if (v25 != v17)
        {
          std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(&begin[v16], &begin[v25], &begin[v17], v35);
        }

        std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v35);
        v26 = *(a1 + 32);
        *(v26 + 4 * v15) = v34.__begin_[v23];
        v27 = (*(a1 + 40) - v26) >> 2;
        if (v27 > (2 * v15))
        {
          LODWORD(v29) = 2 * v15;
          HIDWORD(v29) = v16;
          v30 = v23;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v29);
          v27 = (*(a1 + 40) - *(a1 + 32)) >> 2;
        }

        if (v27 > ((2 * v15) | 1u))
        {
          LODWORD(v29) = (2 * v15) | 1;
          HIDWORD(v29) = v23 + 1;
          v30 = v17;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v29);
        }
      }

      v13 = *(&v33 + 1);
    }

    while (*(&v33 + 1));
  }

  *a1 = 1;
  std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](&v36);
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](__x);
  if (v34.__begin_)
  {
    v34.__end_ = v34.__begin_;
    operator delete(v34.__begin_);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  __x[0] = -1;
  std::vector<unsigned int>::resize((a1 + 32), v2 + 1, __x);
  memset(&v40, 0, sizeof(v40));
  std::vector<float>::resize(&v40, *(a1 + 16));
  if (v40.__begin_ != v40.__end_)
  {
    v3 = 0;
    v4 = (v40.__end_ - v40.__begin_ - 4) >> 2;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v7 = v40.__begin_ + 2;
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1680)));
      if (vuzp1_s16(v9, *v5.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v5).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1670)))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v7 += 4;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 40) - *(a1 + 32);
  v12 = *(a1 + 64) - v10;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      *(a1 + 64) = v10 + (v11 >> 2);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a1 + 56), (v11 >> 2) - v12);
    v11 = *(a1 + 40) - *(a1 + 32);
  }

  v38 = 0u;
  v39 = 0u;
  *__x = 0u;
  if (v11 < 5)
  {
    v13 = 0;
  }

  else
  {
    v42 = 1;
    LODWORD(v43) = *(a1 + 16);
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v42);
    v13 = *(&v39 + 1);
  }

  v42 = &unk_286290938;
  v43 = a1;
  v44 = &v42;
  if (v13)
  {
    do
    {
      v14 = (*(*&__x[2] + 8 * (v39 / 0x155)) + 12 * (v39 % 0x155));
      v16 = *v14;
      v15 = v14[1];
      v17 = v14[2];
      *&v39 = v39 + 1;
      *(&v39 + 1) = v13 - 1;
      if (v39 >= 0x2AA)
      {
        operator delete(**&__x[2]);
        *&__x[2] += 8;
        *&v39 = v39 - 341;
      }

      v18 = v17 - v15;
      if (v17 - v15 == 1)
      {
        *(*(a1 + 32) + 4 * v16) = v40.__begin_[v15];
      }

      else
      {
        if (v17 <= v15)
        {
          v25 = 0x7F0000007FLL;
        }

        else
        {
          v19 = &v40.__begin_[v15];
          v20 = v17 - v15;
          v21 = 0x7F0000007FLL;
          v22 = vneg_f32(0x7F0000007FLL);
          do
          {
            v23 = *v19++;
            v24 = *(*(a1 + 8) + 8 * v23);
            v22 = vminnm_f32(v22, v24);
            v21 = vmaxnm_f32(v21, v24);
            --v20;
          }

          while (v20);
          v25 = vsub_f32(v21, v22);
        }

        v26 = *&vcgt_f32(vdup_lane_s32(v25, 1), v25) & 1;
        *(*(a1 + 56) + v16) = v26;
        if ((-1 << (v27 - 1)) + v18 >= ~(-1 << v27))
        {
          v28 = ~(-1 << v27);
        }

        else
        {
          v28 = (-1 << (v27 - 1)) + v18;
        }

        v29 = v28 + v15;
        begin = v40.__begin_;
        v31 = (v28 + v15);
        std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(&v42, v26);
        if (v31 != v17)
        {
          std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(&begin[v15], &begin[v31], &begin[v17], v41);
        }

        std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v41);
        v32 = *(a1 + 32);
        *(v32 + 4 * v16) = v40.__begin_[v29];
        v33 = (*(a1 + 40) - v32) >> 2;
        if (v33 > (2 * v16))
        {
          LODWORD(v35) = 2 * v16;
          HIDWORD(v35) = v15;
          v36 = v29;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v35);
          v33 = (*(a1 + 40) - *(a1 + 32)) >> 2;
        }

        if (v33 > ((2 * v16) | 1u))
        {
          LODWORD(v35) = (2 * v16) | 1;
          HIDWORD(v35) = v29 + 1;
          v36 = v17;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v35);
        }
      }

      v13 = *(&v39 + 1);
    }

    while (*(&v39 + 1));
  }

  *a1 = 1;
  std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](&v42);
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](__x);
  if (v40.__begin_)
  {
    v40.__end_ = v40.__begin_;
    operator delete(v40.__begin_);
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t geom::kd_tree<float,(unsigned char)2>::find_within_radius(void *a1, float32x2_t *a2, uint64_t a3, float a4)
{
  *(a3 + 8) = *a3;
  v32 = 0u;
  memset(v31, 0, sizeof(v31));
  if (a1[5] - a1[4] >= 5uLL)
  {
    v30 = 1;
    std::deque<unsigned int>::push_back(v31, &v30);
    for (i = *(&v32 + 1); *(&v32 + 1); i = *(&v32 + 1))
    {
      v9 = i - 1;
      v10 = *(*(*(&v31[0] + 1) + (((v32 + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v32 + v9) & 0x3FF));
      *(&v32 + 1) = v9;
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v31, 1);
      v11 = a1[4];
      v30 = *(v11 + 4 * v10);
      v12 = *(a1[7] + v10);
      v13 = (&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v12 & 1)));
      v14 = (&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v12 & 1)));
      v15 = a1[1];
      v16 = *a2;
      v26 = *a2;
      v17 = *v14;
      v18 = *(v15 + 8 * v30);
      v27 = v18;
      if (v17 == *v13)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17 - *v13;
      }

      if (v19 >= -a4)
      {
        if (v19 <= a4)
        {
          v22 = vsub_f32(v18, v16);
          if (vaddv_f32(vmul_f32(v22, v22)) <= (a4 * a4))
          {
            std::vector<unsigned int>::push_back[abi:nn200100](a3, &v30);
            v11 = a1[4];
          }

          v23 = (2 * v10) | 1;
          v28 = v23;
          v29 = 2 * v10;
          v24 = (a1[5] - v11) >> 2;
          if (v24 > (2 * v10))
          {
            std::deque<unsigned int>::push_back(v31, &v29);
            v23 = v28;
            v24 = (a1[5] - a1[4]) >> 2;
          }

          if (v24 <= v23)
          {
            continue;
          }

          v21 = &v28;
          goto LABEL_18;
        }

        v20 = (2 * v10) | 1u;
      }

      else
      {
        v20 = (2 * v10);
      }

      v29 = v20;
      if (v20 < (a1[5] - v11) >> 2)
      {
        v21 = &v29;
LABEL_18:
        std::deque<unsigned int>::push_back(v31, v21);
      }
    }
  }

  return std::deque<unsigned int>::~deque[abi:nn200100](v31);
}

uint64_t geom::kd_tree<float,(unsigned char)2>::find_closest(void *a1, float32x2_t *a2)
{
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  if (a1[5] - a1[4] >= 5uLL)
  {
    v28 = 1;
    std::deque<unsigned int>::push_back(v29, &v28);
    v4 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      LODWORD(v5) = -1;
      v6 = INFINITY;
      while (1)
      {
        v7 = v4 - 1;
        v8 = *(*(*(&v29[0] + 1) + (((v30 + v7) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v30 + v7) & 0x3FF));
        *(&v30 + 1) = v7;
        std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v29, 1);
        v9 = a1[4];
        v10 = *(v9 + 4 * v8);
        v11 = *(a1[7] + v8);
        v12 = (&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
        v13 = (&v25 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
        v14 = *(a1[1] + 8 * v10);
        v15 = vceq_f32(*a2, v14);
        v16 = vpmin_u32(v15, v15).u32[0];
        v17 = vsub_f32(*a2, v14);
        v18 = vaddv_f32(vmul_f32(v17, v17));
        if (v16 < 0)
        {
          v18 = 0.0;
        }

        if (v18 >= v6)
        {
          v5 = v5;
        }

        else
        {
          v6 = v18;
          v5 = v10;
        }

        v25 = *a2;
        v19 = *v13;
        v26 = v14;
        if (v19 == *v12)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v19 - *v12;
        }

        v21 = v20 * v20;
        v27 = (2 * v8) | 1;
        v28 = 2 * v8;
        v22 = (a1[5] - v9) >> 2;
        if (v20 >= 0.0)
        {
          if (v22 > ((2 * v8) | 1u))
          {
            std::deque<unsigned int>::push_back(v29, &v27);
          }

          if (v6 <= v21 || v28 >= ((a1[5] - a1[4]) >> 2))
          {
            goto LABEL_24;
          }

          v23 = &v28;
        }

        else
        {
          if (v22 > (2 * v8))
          {
            std::deque<unsigned int>::push_back(v29, &v28);
          }

          if (v6 <= v21 || v27 >= ((a1[5] - a1[4]) >> 2))
          {
            goto LABEL_24;
          }

          v23 = &v27;
        }

        std::deque<unsigned int>::push_back(v29, v23);
LABEL_24:
        v4 = *(&v30 + 1);
        if (!*(&v30 + 1))
        {
          goto LABEL_27;
        }
      }
    }
  }

  v5 = 0xFFFFFFFFLL;
LABEL_27:
  std::deque<unsigned int>::~deque[abi:nn200100](v29);
  return v5;
}

uint64_t geom::kd_tree<float,(unsigned char)3>::kd_tree(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6[0] = a2;
  v6[1] = a3;
  *a1 = 0;
  _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v6, a4, a1 + 8);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t geom::kd_tree<float,(unsigned char)3>::reset(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  *result = 0;
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  if (!a3)
  {
    a2 = 0;
  }

  if (a3 && a4)
  {
    operator new[]();
  }

  if (*(result + 24) == 1)
  {
    result = *(result + 8);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80451B5BE8);
    }
  }

  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = 0;
  return result;
}

void geom::kd_tree<float,(unsigned char)3>::build(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(a1);
    }
  }

  else
  {
    geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(a1);
  }
}

void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  __x[0] = -1;
  std::vector<unsigned int>::resize((a1 + 32), v2 + 1, __x);
  memset(&v33, 0, sizeof(v33));
  std::vector<float>::resize(&v33, *(a1 + 16));
  if (v33.__begin_ != v33.__end_)
  {
    v3 = 0;
    v4 = (v33.__end_ - v33.__begin_ - 4) >> 2;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v7 = v33.__begin_ + 2;
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1680)));
      if (vuzp1_s16(v9, *v5.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v5).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1670)))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v7 += 4;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 40) - *(a1 + 32);
  v12 = *(a1 + 64) - v10;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      *(a1 + 64) = v10 + (v11 >> 2);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a1 + 56), (v11 >> 2) - v12);
    v11 = *(a1 + 40) - *(a1 + 32);
  }

  v31 = 0u;
  v32 = 0u;
  *__x = 0u;
  if (v11 < 5)
  {
    v13 = 0;
  }

  else
  {
    v35 = 1;
    LODWORD(v36) = *(a1 + 16);
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v35);
    v13 = *(&v32 + 1);
  }

  v35 = &unk_286290A38;
  v36 = a1;
  v37 = &v35;
  if (v13)
  {
    do
    {
      v14 = (*(*&__x[2] + 8 * (v32 / 0x155)) + 12 * (v32 % 0x155));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *&v32 = v32 + 1;
      *(&v32 + 1) = v13 - 1;
      if (v32 >= 0x2AA)
      {
        operator delete(**&__x[2]);
        *&__x[2] += 8;
        *&v32 = v32 - 341;
      }

      v18 = v17 - v16;
      if (v17 - v16 == 1)
      {
        *(*(a1 + 32) + 4 * v15) = v33.__begin_[v16];
      }

      else
      {
        *(v15 + *(a1 + 56)) = v19;
        if ((-1 << (v20 - 1)) + v18 >= ~(-1 << v20))
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = (-1 << (v20 - 1)) + v18;
        }

        v22 = v21 + v16;
        begin = v33.__begin_;
        v24 = (v21 + v16);
        std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(&v35, v19);
        if (v24 != v17)
        {
          std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(&begin[v16], &begin[v24], &begin[v17], v34);
        }

        std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v34);
        v25 = *(a1 + 32);
        *(v25 + 4 * v15) = v33.__begin_[v22];
        v26 = (*(a1 + 40) - v25) >> 2;
        if (v26 > (2 * v15))
        {
          LODWORD(v28) = 2 * v15;
          HIDWORD(v28) = v16;
          v29 = v22;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v28);
          v26 = (*(a1 + 40) - *(a1 + 32)) >> 2;
        }

        if (v26 > ((2 * v15) | 1u))
        {
          LODWORD(v28) = (2 * v15) | 1;
          HIDWORD(v28) = v22 + 1;
          v29 = v17;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v28);
        }
      }

      v13 = *(&v32 + 1);
    }

    while (*(&v32 + 1));
  }

  *a1 = 1;
  std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](&v35);
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](__x);
  if (v33.__begin_)
  {
    v33.__end_ = v33.__begin_;
    operator delete(v33.__begin_);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void geom::kd_tree<float,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  __x[0] = -1;
  std::vector<unsigned int>::resize((a1 + 32), v2 + 1, __x);
  memset(&v41, 0, sizeof(v41));
  std::vector<float>::resize(&v41, *(a1 + 16));
  if (v41.__begin_ != v41.__end_)
  {
    v3 = 0;
    v4 = (v41.__end_ - v41.__begin_ - 4) >> 2;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v7 = v41.__begin_ + 2;
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1680)));
      if (vuzp1_s16(v9, *v5.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v5).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1670)))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v7 += 4;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 40) - *(a1 + 32);
  v12 = *(a1 + 64) - v10;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      *(a1 + 64) = v10 + (v11 >> 2);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a1 + 56), (v11 >> 2) - v12);
    v11 = *(a1 + 40) - *(a1 + 32);
  }

  v39 = 0u;
  v40 = 0u;
  *__x = 0u;
  if (v11 < 5)
  {
    v13 = 0;
  }

  else
  {
    v43 = 1;
    LODWORD(v44) = *(a1 + 16);
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v43);
    v13 = *(&v40 + 1);
  }

  v43 = &unk_286290B38;
  v44 = a1;
  v45 = &v43;
  if (v13)
  {
    do
    {
      v14 = (*(*&__x[2] + 8 * (v40 / 0x155)) + 12 * (v40 % 0x155));
      v16 = *v14;
      v15 = v14[1];
      v17 = v14[2];
      *&v40 = v40 + 1;
      *(&v40 + 1) = v13 - 1;
      if (v40 >= 0x2AA)
      {
        operator delete(**&__x[2]);
        *&__x[2] += 8;
        *&v40 = v40 - 341;
      }

      v18 = v17 - v15;
      if (v17 - v15 == 1)
      {
        *(*(a1 + 32) + 4 * v16) = v41.__begin_[v15];
      }

      else
      {
        if (v17 <= v15)
        {
          v25.i64[0] = 0x7F0000007FLL;
          v25.i64[1] = 0x7F0000007FLL;
        }

        else
        {
          v19 = &v41.__begin_[v15];
          v20 = v17 - v15;
          v21.i64[0] = 0x7F0000007FLL;
          v21.i64[1] = 0x7F0000007FLL;
          v22 = vnegq_f32(v21);
          do
          {
            v23 = *v19++;
            v24 = *(*(a1 + 8) + 16 * v23);
            v22.i32[3] = 0;
            v24.i32[3] = 0;
            v22 = vminnmq_f32(v22, v24);
            v21.i32[3] = 0;
            v21 = vmaxnmq_f32(v21, v24);
            --v20;
          }

          while (v20);
          v25 = vsubq_f32(v21, v22);
        }

        v35 = v25;
        if (v25.f32[2] <= *(&v35 | (4 * (v25.f32[1] > v25.f32[0]))))
        {
          v26 = v25.f32[1] > v25.f32[0];
        }

        else
        {
          v26 = 2;
        }

        *(*(a1 + 56) + v16) = v26;
        if ((-1 << (v27 - 1)) + v18 >= ~(-1 << v27))
        {
          v28 = ~(-1 << v27);
        }

        else
        {
          v28 = (-1 << (v27 - 1)) + v18;
        }

        v29 = v28 + v15;
        begin = v41.__begin_;
        v31 = (v28 + v15);
        std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(&v43, v26);
        if (v31 != v17)
        {
          std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(&begin[v15], &begin[v31], &begin[v17], v42);
        }

        std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v42);
        v32 = *(a1 + 32);
        *(v32 + 4 * v16) = v41.__begin_[v29];
        v33 = (*(a1 + 40) - v32) >> 2;
        if (v33 > (2 * v16))
        {
          LODWORD(v36) = 2 * v16;
          HIDWORD(v36) = v15;
          v37 = v29;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v36);
          v33 = (*(a1 + 40) - *(a1 + 32)) >> 2;
        }

        if (v33 > ((2 * v16) | 1u))
        {
          LODWORD(v36) = (2 * v16) | 1;
          HIDWORD(v36) = v29 + 1;
          v37 = v17;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v36);
        }
      }

      v13 = *(&v40 + 1);
    }

    while (*(&v40 + 1));
  }

  *a1 = 1;
  std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](&v43);
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](__x);
  if (v41.__begin_)
  {
    v41.__end_ = v41.__begin_;
    operator delete(v41.__begin_);
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t geom::kd_tree<float,(unsigned char)3>::find_within_radius(void *a1, float32x4_t *a2, uint64_t a3, float a4)
{
  *(a3 + 8) = *a3;
  v33 = 0u;
  memset(v32, 0, sizeof(v32));
  if (a1[5] - a1[4] >= 5uLL)
  {
    v31 = 1;
    std::deque<unsigned int>::push_back(v32, &v31);
    for (i = *(&v33 + 1); *(&v33 + 1); i = *(&v33 + 1))
    {
      v9 = i - 1;
      v10 = *(*(*(&v32[0] + 1) + (((v33 + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v33 + v9) & 0x3FF));
      *(&v33 + 1) = v9;
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v32, 1);
      v11 = a1[4];
      v31 = *(v11 + 4 * v10);
      v12 = *(a1[7] + v10);
      v13 = (&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3)));
      v14 = (&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3)));
      v15 = a1[1];
      v16 = *a2;
      v27 = *a2;
      v17 = *v14;
      v18 = *(v15 + 16 * v31);
      v28 = v18;
      if (v17 == *v13)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17 - *v13;
      }

      if (v19 >= -a4)
      {
        if (v19 <= a4)
        {
          v22 = vsubq_f32(v18, v16);
          v23 = vmulq_f32(v22, v22);
          if ((v23.f32[2] + vaddv_f32(*v23.f32)) <= (a4 * a4))
          {
            std::vector<unsigned int>::push_back[abi:nn200100](a3, &v31);
            v11 = a1[4];
          }

          v24 = (2 * v10) | 1;
          v29 = v24;
          v30 = 2 * v10;
          v25 = (a1[5] - v11) >> 2;
          if (v25 > (2 * v10))
          {
            std::deque<unsigned int>::push_back(v32, &v30);
            v24 = v29;
            v25 = (a1[5] - a1[4]) >> 2;
          }

          if (v25 <= v24)
          {
            continue;
          }

          v21 = &v29;
          goto LABEL_18;
        }

        v20 = (2 * v10) | 1u;
      }

      else
      {
        v20 = (2 * v10);
      }

      v30 = v20;
      if (v20 < (a1[5] - v11) >> 2)
      {
        v21 = &v30;
LABEL_18:
        std::deque<unsigned int>::push_back(v32, v21);
      }
    }
  }

  return std::deque<unsigned int>::~deque[abi:nn200100](v32);
}

uint64_t geom::kd_tree<float,(unsigned char)3>::find_closest(void *a1, float32x4_t *a2)
{
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  if (a1[5] - a1[4] >= 5uLL)
  {
    v28 = 1;
    std::deque<unsigned int>::push_back(v29, &v28);
    v4 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      LODWORD(v5) = -1;
      v6 = INFINITY;
      while (1)
      {
        v7 = v4 - 1;
        v8 = *(*(*(&v29[0] + 1) + (((v30 + v7) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v30 + v7) & 0x3FF));
        *(&v30 + 1) = v7;
        std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v29, 1);
        v9 = a1[4];
        v10 = *(v9 + 4 * v8);
        v11 = *(a1[1] + 16 * v10);
        v12 = vceqq_f32(*a2, v11);
        v12.i32[3] = v12.i32[2];
        v13 = vminvq_u32(v12);
        v14 = 0.0;
        if ((v13 & 0x80000000) == 0)
        {
          v15 = vsubq_f32(*a2, v11);
          v16 = vmulq_f32(v15, v15);
          v14 = v16.f32[2] + vaddv_f32(*v16.f32);
        }

        v17 = *(a1[7] + v8);
        if (v14 >= v6)
        {
          v5 = v5;
        }

        else
        {
          v6 = v14;
          v5 = v10;
        }

        v26 = *a2;
        v18 = *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3)));
        v25 = v11;
        v19 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3)));
        if (v18 == v19)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v18 - v19;
        }

        v21 = v20 * v20;
        v27 = (2 * v8) | 1;
        v28 = 2 * v8;
        v22 = (a1[5] - v9) >> 2;
        if (v20 >= 0.0)
        {
          if (v22 > ((2 * v8) | 1u))
          {
            std::deque<unsigned int>::push_back(v29, &v27);
          }

          if (v6 <= v21 || v28 >= ((a1[5] - a1[4]) >> 2))
          {
            goto LABEL_24;
          }

          v23 = &v28;
        }

        else
        {
          if (v22 > (2 * v8))
          {
            std::deque<unsigned int>::push_back(v29, &v28);
          }

          if (v6 <= v21 || v27 >= ((a1[5] - a1[4]) >> 2))
          {
            goto LABEL_24;
          }

          v23 = &v27;
        }

        std::deque<unsigned int>::push_back(v29, v23);
LABEL_24:
        v4 = *(&v30 + 1);
        if (!*(&v30 + 1))
        {
          goto LABEL_27;
        }
      }
    }
  }

  v5 = 0xFFFFFFFFLL;
LABEL_27:
  std::deque<unsigned int>::~deque[abi:nn200100](v29);
  return v5;
}

void geom::kd_tree<double,(unsigned char)2>::build(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(a1);
    }
  }

  else
  {
    geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(a1);
  }
}

void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  __x[0] = -1;
  std::vector<unsigned int>::resize((a1 + 32), v2 + 1, __x);
  memset(&v34, 0, sizeof(v34));
  std::vector<float>::resize(&v34, *(a1 + 16));
  if (v34.__begin_ != v34.__end_)
  {
    v3 = 0;
    v4 = (v34.__end_ - v34.__begin_ - 4) >> 2;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v7 = v34.__begin_ + 2;
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1680)));
      if (vuzp1_s16(v9, *v5.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v5).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1670)))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v7 += 4;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 40) - *(a1 + 32);
  v12 = *(a1 + 64) - v10;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      *(a1 + 64) = v10 + (v11 >> 2);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a1 + 56), (v11 >> 2) - v12);
    v11 = *(a1 + 40) - *(a1 + 32);
  }

  v32 = 0u;
  v33 = 0u;
  *__x = 0u;
  if (v11 < 5)
  {
    v13 = 0;
  }

  else
  {
    v36 = 1;
    LODWORD(v37) = *(a1 + 16);
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v36);
    v13 = *(&v33 + 1);
  }

  v36 = &unk_286290C38;
  v37 = a1;
  v38 = &v36;
  if (v13)
  {
    do
    {
      v14 = (*(*&__x[2] + 8 * (v33 / 0x155)) + 12 * (v33 % 0x155));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *&v33 = v33 + 1;
      *(&v33 + 1) = v13 - 1;
      if (v33 >= 0x2AA)
      {
        operator delete(**&__x[2]);
        *&__x[2] += 8;
        *&v33 = v33 - 341;
      }

      v18 = v17 - v16;
      if (v17 - v16 == 1)
      {
        *(*(a1 + 32) + 4 * v15) = v34.__begin_[v16];
      }

      else
      {
        v20 = v19 & 1;
        *(v15 + *(a1 + 56)) = v19 & 1;
        if ((-1 << (v21 - 1)) + v18 >= ~(-1 << v21))
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = (-1 << (v21 - 1)) + v18;
        }

        v23 = v22 + v16;
        begin = v34.__begin_;
        v25 = (v22 + v16);
        std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(&v36, v20);
        if (v25 != v17)
        {
          std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(&begin[v16], &begin[v25], &begin[v17], v35);
        }

        std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v35);
        v26 = *(a1 + 32);
        *(v26 + 4 * v15) = v34.__begin_[v23];
        v27 = (*(a1 + 40) - v26) >> 2;
        if (v27 > (2 * v15))
        {
          LODWORD(v29) = 2 * v15;
          HIDWORD(v29) = v16;
          v30 = v23;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v29);
          v27 = (*(a1 + 40) - *(a1 + 32)) >> 2;
        }

        if (v27 > ((2 * v15) | 1u))
        {
          LODWORD(v29) = (2 * v15) | 1;
          HIDWORD(v29) = v23 + 1;
          v30 = v17;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v29);
        }
      }

      v13 = *(&v33 + 1);
    }

    while (*(&v33 + 1));
  }

  *a1 = 1;
  std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](&v36);
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](__x);
  if (v34.__begin_)
  {
    v34.__end_ = v34.__begin_;
    operator delete(v34.__begin_);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void geom::kd_tree<double,(unsigned char)2>::build<(geom_kd_tree_build_strategy)0>(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  __x[0] = -1;
  std::vector<unsigned int>::resize((a1 + 32), v2 + 1, __x);
  memset(&v42, 0, sizeof(v42));
  std::vector<float>::resize(&v42, *(a1 + 16));
  if (v42.__begin_ != v42.__end_)
  {
    v3 = 0;
    v4 = (v42.__end_ - v42.__begin_ - 4) >> 2;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v7 = v42.__begin_ + 2;
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1680)));
      if (vuzp1_s16(v9, *v5.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v5).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1670)))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v7 += 4;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 40) - *(a1 + 32);
  v12 = *(a1 + 64) - v10;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      *(a1 + 64) = v10 + (v11 >> 2);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a1 + 56), (v11 >> 2) - v12);
    v11 = *(a1 + 40) - *(a1 + 32);
  }

  v40 = 0u;
  v41 = 0u;
  *__x = 0u;
  if (v11 < 5)
  {
    v13 = 0;
  }

  else
  {
    v44 = 1;
    LODWORD(v45) = *(a1 + 16);
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v44);
    v13 = *(&v41 + 1);
  }

  v44 = &unk_286290D38;
  v45 = a1;
  v46 = &v44;
  if (v13)
  {
    v35 = vdupq_n_s64(0x7FF0000000000000uLL);
    v36 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v14 = (*(*&__x[2] + 8 * (v41 / 0x155)) + 12 * (v41 % 0x155));
      v16 = *v14;
      v15 = v14[1];
      v17 = v14[2];
      *&v41 = v41 + 1;
      *(&v41 + 1) = v13 - 1;
      if (v41 >= 0x2AA)
      {
        operator delete(**&__x[2]);
        *&__x[2] += 8;
        *&v41 = v41 - 341;
      }

      v18 = v17 - v15;
      if (v17 - v15 == 1)
      {
        *(*(a1 + 32) + 4 * v16) = v42.__begin_[v15];
      }

      else
      {
        if (v17 <= v15)
        {
          v25 = v36;
        }

        else
        {
          v19 = &v42.__begin_[v15];
          v20 = v17 - v15;
          v22 = v35;
          v21 = v36;
          do
          {
            v23 = *v19++;
            v24 = *(*(a1 + 8) + 16 * v23);
            v22 = vminnmq_f64(v22, v24);
            v21 = vmaxnmq_f64(v21, v24);
            --v20;
          }

          while (v20);
          v25 = vsubq_f64(v21, v22);
        }

        v26 = *&vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v25, 1), v25)) & 1;
        *(*(a1 + 56) + v16) = v26;
        if ((-1 << (v27 - 1)) + v18 >= ~(-1 << v27))
        {
          v28 = ~(-1 << v27);
        }

        else
        {
          v28 = (-1 << (v27 - 1)) + v18;
        }

        v29 = v28 + v15;
        begin = v42.__begin_;
        v31 = (v28 + v15);
        std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(&v44, v26);
        if (v31 != v17)
        {
          std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(&begin[v15], &begin[v31], &begin[v17], v43);
        }

        std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v43);
        v32 = *(a1 + 32);
        *(v32 + 4 * v16) = v42.__begin_[v29];
        v33 = (*(a1 + 40) - v32) >> 2;
        if (v33 > (2 * v16))
        {
          LODWORD(v37) = 2 * v16;
          HIDWORD(v37) = v15;
          v38 = v29;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v37);
          v33 = (*(a1 + 40) - *(a1 + 32)) >> 2;
        }

        if (v33 > ((2 * v16) | 1u))
        {
          LODWORD(v37) = (2 * v16) | 1;
          HIDWORD(v37) = v29 + 1;
          v38 = v17;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v37);
        }
      }

      v13 = *(&v41 + 1);
    }

    while (*(&v41 + 1));
  }

  *a1 = 1;
  std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](&v44);
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](__x);
  if (v42.__begin_)
  {
    v42.__end_ = v42.__begin_;
    operator delete(v42.__begin_);
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t geom::kd_tree<double,(unsigned char)2>::find_within_radius(void *a1, float64x2_t *a2, uint64_t a3, double a4)
{
  *(a3 + 8) = *a3;
  v32 = 0u;
  memset(v31, 0, sizeof(v31));
  if (a1[5] - a1[4] >= 5uLL)
  {
    v30 = 1;
    std::deque<unsigned int>::push_back(v31, &v30);
    for (i = *(&v32 + 1); *(&v32 + 1); i = *(&v32 + 1))
    {
      v9 = i - 1;
      v10 = *(*(*(&v31[0] + 1) + (((v32 + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v32 + v9) & 0x3FF));
      *(&v32 + 1) = v9;
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v31, 1);
      v11 = a1[4];
      v30 = *(v11 + 4 * v10);
      v12 = *(a1[7] + v10);
      v13 = (&v27 & 0xFFFFFFFFFFFFFFF7 | (8 * (v12 & 1)));
      v14 = (&v26 & 0xFFFFFFFFFFFFFFF7 | (8 * (v12 & 1)));
      v15 = a1[1];
      v16 = *a2;
      v26 = *a2;
      v17 = *v14;
      v18 = *(v15 + 16 * v30);
      v27 = v18;
      if (v17 == *v13)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17 - *v13;
      }

      if (v19 >= -a4)
      {
        if (v19 <= a4)
        {
          v22 = vsubq_f64(v18, v16);
          if (vaddvq_f64(vmulq_f64(v22, v22)) <= a4 * a4)
          {
            std::vector<unsigned int>::push_back[abi:nn200100](a3, &v30);
            v11 = a1[4];
          }

          v23 = (2 * v10) | 1;
          v28 = v23;
          v29 = 2 * v10;
          v24 = (a1[5] - v11) >> 2;
          if (v24 > (2 * v10))
          {
            std::deque<unsigned int>::push_back(v31, &v29);
            v23 = v28;
            v24 = (a1[5] - a1[4]) >> 2;
          }

          if (v24 <= v23)
          {
            continue;
          }

          v21 = &v28;
          goto LABEL_18;
        }

        v20 = (2 * v10) | 1u;
      }

      else
      {
        v20 = (2 * v10);
      }

      v29 = v20;
      if (v20 < (a1[5] - v11) >> 2)
      {
        v21 = &v29;
LABEL_18:
        std::deque<unsigned int>::push_back(v31, v21);
      }
    }
  }

  return std::deque<unsigned int>::~deque[abi:nn200100](v31);
}

uint64_t geom::kd_tree<double,(unsigned char)2>::find_closest(void *a1, float64x2_t *a2)
{
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  if (a1[5] - a1[4] >= 5uLL)
  {
    v28 = 1;
    std::deque<unsigned int>::push_back(v29, &v28);
    v4 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      LODWORD(v5) = -1;
      v6 = INFINITY;
      while (1)
      {
        v7 = v4 - 1;
        v8 = *(*(*(&v29[0] + 1) + (((v30 + v7) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v30 + v7) & 0x3FF));
        *(&v30 + 1) = v7;
        std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v29, 1);
        v9 = a1[4];
        v10 = *(v9 + 4 * v8);
        v11 = *(a1[7] + v8);
        v12 = (&v26 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1)));
        v13 = (&v25 & 0xFFFFFFFFFFFFFFF7 | (8 * (v11 & 1)));
        v14 = *(a1[1] + 16 * v10);
        v15 = vceqq_f64(*a2, v14);
        v16 = vandq_s8(vdupq_laneq_s64(v15, 1), v15).u64[0];
        v17 = vsubq_f64(*a2, v14);
        v18 = vaddvq_f64(vmulq_f64(v17, v17));
        if (v16 < 0)
        {
          v18 = 0.0;
        }

        if (v18 >= v6)
        {
          v5 = v5;
        }

        else
        {
          v6 = v18;
          v5 = v10;
        }

        v25 = *a2;
        v19 = *v13;
        v26 = v14;
        if (v19 == *v12)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v19 - *v12;
        }

        v21 = v20 * v20;
        v27 = (2 * v8) | 1;
        v28 = 2 * v8;
        v22 = (a1[5] - v9) >> 2;
        if (v20 >= 0.0)
        {
          if (v22 > ((2 * v8) | 1u))
          {
            std::deque<unsigned int>::push_back(v29, &v27);
          }

          if (v6 <= v21 || v28 >= ((a1[5] - a1[4]) >> 2))
          {
            goto LABEL_24;
          }

          v23 = &v28;
        }

        else
        {
          if (v22 > (2 * v8))
          {
            std::deque<unsigned int>::push_back(v29, &v28);
          }

          if (v6 <= v21 || v27 >= ((a1[5] - a1[4]) >> 2))
          {
            goto LABEL_24;
          }

          v23 = &v27;
        }

        std::deque<unsigned int>::push_back(v29, v23);
LABEL_24:
        v4 = *(&v30 + 1);
        if (!*(&v30 + 1))
        {
          goto LABEL_27;
        }
      }
    }
  }

  v5 = 0xFFFFFFFFLL;
LABEL_27:
  std::deque<unsigned int>::~deque[abi:nn200100](v29);
  return v5;
}

uint64_t geom::kd_tree<double,(unsigned char)3>::kd_tree(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6[0] = a2;
  v6[1] = a3;
  *a1 = 0;
  _ZN4geom19make_external_arrayINS_5sliceIDv3_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v6, a4, a1 + 8);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t geom::kd_tree<double,(unsigned char)3>::reset(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  *result = 0;
  *(result + 40) = *(result + 32);
  *(result + 64) = *(result + 56);
  if (!a3)
  {
    a2 = 0;
  }

  if (a3 && a4)
  {
    operator new[]();
  }

  if (*(result + 24) == 1)
  {
    result = *(result + 8);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80E0EAB150);
    }
  }

  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = 0;
  return result;
}

void geom::kd_tree<double,(unsigned char)3>::build(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(a1);
    }
  }

  else
  {
    geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(a1);
  }
}

void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)1>(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  __x[0] = -1;
  std::vector<unsigned int>::resize((a1 + 32), v2 + 1, __x);
  memset(&v33, 0, sizeof(v33));
  std::vector<float>::resize(&v33, *(a1 + 16));
  if (v33.__begin_ != v33.__end_)
  {
    v3 = 0;
    v4 = (v33.__end_ - v33.__begin_ - 4) >> 2;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v7 = v33.__begin_ + 2;
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1680)));
      if (vuzp1_s16(v9, *v5.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v5).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1670)))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v7 += 4;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 40) - *(a1 + 32);
  v12 = *(a1 + 64) - v10;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      *(a1 + 64) = v10 + (v11 >> 2);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a1 + 56), (v11 >> 2) - v12);
    v11 = *(a1 + 40) - *(a1 + 32);
  }

  v31 = 0u;
  v32 = 0u;
  *__x = 0u;
  if (v11 < 5)
  {
    v13 = 0;
  }

  else
  {
    v35 = 1;
    LODWORD(v36) = *(a1 + 16);
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v35);
    v13 = *(&v32 + 1);
  }

  v35 = &unk_286290E38;
  v36 = a1;
  v37 = &v35;
  if (v13)
  {
    do
    {
      v14 = (*(*&__x[2] + 8 * (v32 / 0x155)) + 12 * (v32 % 0x155));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *&v32 = v32 + 1;
      *(&v32 + 1) = v13 - 1;
      if (v32 >= 0x2AA)
      {
        operator delete(**&__x[2]);
        *&__x[2] += 8;
        *&v32 = v32 - 341;
      }

      v18 = v17 - v16;
      if (v17 - v16 == 1)
      {
        *(*(a1 + 32) + 4 * v15) = v33.__begin_[v16];
      }

      else
      {
        *(v15 + *(a1 + 56)) = v19;
        if ((-1 << (v20 - 1)) + v18 >= ~(-1 << v20))
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = (-1 << (v20 - 1)) + v18;
        }

        v22 = v21 + v16;
        begin = v33.__begin_;
        v24 = (v21 + v16);
        std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(&v35, v19);
        if (v24 != v17)
        {
          std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(&begin[v16], &begin[v24], &begin[v17], v34);
        }

        std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v34);
        v25 = *(a1 + 32);
        *(v25 + 4 * v15) = v33.__begin_[v22];
        v26 = (*(a1 + 40) - v25) >> 2;
        if (v26 > (2 * v15))
        {
          LODWORD(v28) = 2 * v15;
          HIDWORD(v28) = v16;
          v29 = v22;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v28);
          v26 = (*(a1 + 40) - *(a1 + 32)) >> 2;
        }

        if (v26 > ((2 * v15) | 1u))
        {
          LODWORD(v28) = (2 * v15) | 1;
          HIDWORD(v28) = v22 + 1;
          v29 = v17;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v28);
        }
      }

      v13 = *(&v32 + 1);
    }

    while (*(&v32 + 1));
  }

  *a1 = 1;
  std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](&v35);
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](__x);
  if (v33.__begin_)
  {
    v33.__end_ = v33.__begin_;
    operator delete(v33.__begin_);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void geom::kd_tree<double,(unsigned char)3>::build<(geom_kd_tree_build_strategy)0>(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  __x[0] = -1;
  std::vector<unsigned int>::resize((a1 + 32), v2 + 1, __x);
  memset(&v47, 0, sizeof(v47));
  std::vector<float>::resize(&v47, *(a1 + 16));
  if (v47.__begin_ != v47.__end_)
  {
    v3 = 0;
    v4 = (v47.__end_ - v47.__begin_ - 4) >> 2;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v7 = v47.__begin_ + 2;
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1680)));
      if (vuzp1_s16(v9, *v5.i8).u8[0])
      {
        *(v7 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v5).i8[2])
      {
        *(v7 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_2500C1670)))).i32[1])
      {
        *v7 = v3 + 2;
        v7[1] = v3 + 3;
      }

      v3 += 4;
      v7 += 4;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 40) - *(a1 + 32);
  v12 = *(a1 + 64) - v10;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      *(a1 + 64) = v10 + (v11 >> 2);
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a1 + 56), (v11 >> 2) - v12);
    v11 = *(a1 + 40) - *(a1 + 32);
  }

  v45 = 0u;
  v46 = 0u;
  *__x = 0u;
  if (v11 < 5)
  {
    v13 = 0;
  }

  else
  {
    v49 = 1;
    LODWORD(v50) = *(a1 + 16);
    std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v49);
    v13 = *(&v46 + 1);
  }

  v49 = &unk_286290F38;
  v50 = a1;
  v51 = &v49;
  if (v13)
  {
    v14 = vdupq_n_s64(0xFFF0000000000000);
    v39 = vdupq_n_s64(0x7FF0000000000000uLL);
    v40 = v14;
    do
    {
      v15 = (*(*&__x[2] + 8 * (v46 / 0x155)) + 12 * (v46 % 0x155));
      v17 = *v15;
      v16 = v15[1];
      v18 = v15[2];
      *&v46 = v46 + 1;
      *(&v46 + 1) = v13 - 1;
      if (v46 >= 0x2AA)
      {
        operator delete(**&__x[2]);
        *&__x[2] += 8;
        *&v46 = v46 - 341;
      }

      v19 = v18 - v16;
      if (v18 - v16 == 1)
      {
        *(*(a1 + 32) + 4 * v17) = v47.__begin_[v16];
      }

      else
      {
        if (v18 <= v16)
        {
          v14.f64[0] = -INFINITY;
          v29 = v40;
        }

        else
        {
          v20 = &v47.__begin_[v16];
          v21 = v18 - v16;
          v22.f64[0] = INFINITY;
          v23.f64[0] = -INFINITY;
          v25 = v39;
          v24 = v40;
          do
          {
            v26 = *v20++;
            v27 = *(a1 + 8) + 32 * v26;
            v28 = *(v27 + 16);
            v25 = vminnmq_f64(v25, *v27);
            v22 = vminnmq_f64(*&v22.f64[0], v28);
            v24 = vmaxnmq_f64(v24, *v27);
            v23 = vmaxnmq_f64(*&v23.f64[0], v28);
            --v21;
          }

          while (v21);
          v29 = vsubq_f64(v24, v25);
          v14 = vsubq_f64(v23, v22);
        }

        v41[0] = v29;
        v41[1] = v14;
        if (v14.f64[0] <= *(v41 | (8 * (v29.f64[1] > v29.f64[0]))))
        {
          v30 = v29.f64[1] > v29.f64[0];
        }

        else
        {
          v30 = 2;
        }

        *(*(a1 + 56) + v17) = v30;
        if ((-1 << (v31 - 1)) + v19 >= ~(-1 << v31))
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = (-1 << (v31 - 1)) + v19;
        }

        v33 = v32 + v16;
        begin = v47.__begin_;
        v35 = (v32 + v16);
        std::function<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::operator()(&v49, v30);
        if (v35 != v18)
        {
          std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,std::function<unsigned int ()(unsigned int const&,unsigned int const&)> &,std::__wrap_iter<unsigned int *>>(&begin[v16], &begin[v35], &begin[v18], v48);
        }

        std::__function::__value_func<unsigned int ()(unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](v48);
        v36 = *(a1 + 32);
        *(v36 + 4 * v17) = v47.__begin_[v33];
        v37 = (*(a1 + 40) - v36) >> 2;
        if (v37 > (2 * v17))
        {
          LODWORD(v42) = 2 * v17;
          HIDWORD(v42) = v16;
          v43 = v33;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v42);
          v37 = (*(a1 + 40) - *(a1 + 32)) >> 2;
        }

        if (v37 > ((2 * v17) | 1u))
        {
          LODWORD(v42) = (2 * v17) | 1;
          HIDWORD(v42) = v33 + 1;
          v43 = v18;
          std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::push_back(__x, &v42);
        }
      }

      v13 = *(&v46 + 1);
    }

    while (*(&v46 + 1));
  }

  *a1 = 1;
  std::__function::__value_func<std::function<unsigned int ()(unsigned int const&,unsigned int const&)> ()(int)>::~__value_func[abi:nn200100](&v49);
  std::deque<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state,std::allocator<void geom::kd_tree<float,(unsigned char)2>::build<(geom_kd_tree_build_strategy)1>(void)::state>>::~deque[abi:nn200100](__x);
  if (v47.__begin_)
  {
    v47.__end_ = v47.__begin_;
    operator delete(v47.__begin_);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t geom::kd_tree<double,(unsigned char)3>::find_within_radius(void *a1, float64x2_t *a2, uint64_t a3, double a4)
{
  *(a3 + 8) = *a3;
  v34 = 0u;
  memset(v33, 0, sizeof(v33));
  if (a1[5] - a1[4] >= 5uLL)
  {
    v32 = 1;
    std::deque<unsigned int>::push_back(v33, &v32);
    for (i = *(&v34 + 1); *(&v34 + 1); i = *(&v34 + 1))
    {
      v9 = i - 1;
      v10 = *(*(*(&v33[0] + 1) + (((v34 + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v34 + v9) & 0x3FF));
      *(&v34 + 1) = v9;
      std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v33, 1);
      v11 = a1[4];
      v32 = *(v11 + 4 * v10);
      v12 = *(a1[7] + v10) & 3;
      v13 = (a1[1] + 32 * v32);
      v14 = *a2;
      v15 = a2[1];
      v28[0] = *a2;
      v28[1] = v15;
      v16 = *(v28 + v12);
      v17 = *v13;
      v18 = v13[1];
      v29[0] = *v13;
      v29[1] = v18;
      v19 = *(v29 + v12);
      if (v16 == v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v16 - v19;
      }

      if (v20 >= -a4)
      {
        if (v20 <= a4)
        {
          v23 = vsubq_f64(v17, v14);
          v24 = vsubq_f64(v18, v15);
          if (vmulq_f64(v24, v24).f64[0] + vaddvq_f64(vmulq_f64(v23, v23)) <= a4 * a4)
          {
            std::vector<unsigned int>::push_back[abi:nn200100](a3, &v32);
            v11 = a1[4];
          }

          v25 = (2 * v10) | 1;
          v30 = v25;
          v31 = 2 * v10;
          v26 = (a1[5] - v11) >> 2;
          if (v26 > (2 * v10))
          {
            std::deque<unsigned int>::push_back(v33, &v31);
            v25 = v30;
            v26 = (a1[5] - a1[4]) >> 2;
          }

          if (v26 <= v25)
          {
            continue;
          }

          v22 = &v30;
          goto LABEL_18;
        }

        v21 = (2 * v10) | 1u;
      }

      else
      {
        v21 = (2 * v10);
      }

      v31 = v21;
      if (v21 < (a1[5] - v11) >> 2)
      {
        v22 = &v31;
LABEL_18:
        std::deque<unsigned int>::push_back(v33, v22);
      }
    }
  }

  return std::deque<unsigned int>::~deque[abi:nn200100](v33);
}

uint64_t geom::kd_tree<double,(unsigned char)3>::find_closest(void *a1, float64x2_t *a2)
{
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  if (a1[5] - a1[4] >= 5uLL)
  {
    v34 = 1;
    std::deque<unsigned int>::push_back(v35, &v34);
    v4 = *(&v36 + 1);
    if (*(&v36 + 1))
    {
      LODWORD(v5) = -1;
      v6 = INFINITY;
      while (1)
      {
        v7 = v4 - 1;
        v8 = *(*(*(&v35[0] + 1) + (((v36 + v7) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v36 + v7) & 0x3FF));
        *(&v36 + 1) = v7;
        std::deque<unsigned int>::__maybe_remove_back_spare[abi:nn200100](v35, 1);
        v9 = a1[4];
        v10 = *(v9 + 4 * v8);
        v11 = a1[1] + 32 * v10;
        v12 = a2[1];
        v13 = *v11;
        v14 = *(v11 + 16);
        v15 = vceqq_f64(*a2, *v11);
        v16 = v15.i64[0] & v15.i64[1];
        v17 = 0.0;
        if (((v16 & vceqq_f64(v12, v14).u64[0] & 0x8000000000000000) != 0) == v18)
        {
          v19 = vsubq_f64(*a2, v13);
          v20 = vsubq_f64(v12, v14);
          v17 = vmulq_f64(v20, v20).f64[0] + vaddvq_f64(vmulq_f64(v19, v19));
        }

        v21 = *(a1[7] + v8);
        v22 = v17 < v6;
        if (v17 < v6)
        {
          v6 = v17;
        }

        v32[0] = *a2;
        v32[1] = v12;
        v23 = v21 & 3;
        v24 = *(v32 + v23);
        if (v22)
        {
          v5 = v10;
        }

        else
        {
          v5 = v5;
        }

        v31[0] = v13;
        v31[1] = v14;
        v25 = *(v31 + v23);
        if (v24 == v25)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24 - v25;
        }

        v27 = v26 * v26;
        v33 = (2 * v8) | 1;
        v34 = 2 * v8;
        v28 = (a1[5] - v9) >> 2;
        if (v26 >= 0.0)
        {
          if (v28 > ((2 * v8) | 1u))
          {
            std::deque<unsigned int>::push_back(v35, &v33);
          }

          if (v6 <= v27 || v34 >= ((a1[5] - a1[4]) >> 2))
          {
            goto LABEL_26;
          }

          v29 = &v34;
        }

        else
        {
          if (v28 > (2 * v8))
          {
            std::deque<unsigned int>::push_back(v35, &v34);
          }

          if (v6 <= v27 || v33 >= ((a1[5] - a1[4]) >> 2))
          {
            goto LABEL_26;
          }

          v29 = &v33;
        }

        std::deque<unsigned int>::push_back(v35, v29);
LABEL_26:
        v4 = *(&v36 + 1);
        if (!*(&v36 + 1))
        {
          goto LABEL_29;
        }
      }
    }
  }

  v5 = 0xFFFFFFFFLL;
LABEL_29:
  std::deque<unsigned int>::~deque[abi:nn200100](v35);
  return v5;
}

uint64_t anonymous namespace::uint32_log2(_anonymous_namespace_ *this)
{
  v1 = this >> 16;
  if (!(this >> 16))
  {
    v1 = this;
  }

  if (v1 <= 0xFF)
  {
    v2 = 16 * (this >> 16 != 0);
  }

  else
  {
    v1 >>= 8;
    v2 = (16 * (this >> 16 != 0)) | 8;
  }

  if (v1 > 0xF)
  {
    v1 >>= 4;
    v2 |= 4u;
  }

  if (v1 > 3)
  {
    v1 >>= 2;
    v2 |= 2u;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v2 + 1;
  }
}