uint64_t geom::anonymous namespace::cubic_bezier_find_characteristic_points<float>(int *a1, float *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = vsub_f32(a4, a3);
  v7 = vsub_f32(a5, a3);
  v8 = vsub_f32(a6, a3);
  __asm { FMOV            V0.2S, #3.0 }

  v14 = vmul_f32(v6, _D0);
  v15 = vmul_f32(vadd_f32(vmla_f32(0, 0xC0000000C0000000, v6), v7), _D0);
  v16 = vmla_f32(v8, _D0, vsub_f32(v6, v7));
  v17 = vrev64_s32(v14);
  v18 = vmuls_lane_f32(-v15.f32[0], v16, 1) + (v15.f32[1] * v16.f32[0]);
  v19 = vmul_f32(vext_s8(v15, v16, 4uLL), vneg_f32(v14));
  v15.i32[1] = v16.i32[1];
  _D1 = vmla_f32(v19, v15, v17);
  _S7 = vmuls_lane_f32(3.0, _D1, 1);
  if (fabsf(v18) > 0.00001)
  {
    __asm { FMLA            S2, S7, V1.S[1] }

    v23 = fabsf(_S2);
    if (v23 > 0.00001 && _S2 > 0.0)
    {
      v24.i32[1] = -1073741824;
      v24.f32[0] = v18 * 1.3333;
      *a1 = 0;
      v25 = vmul_f32(_D1, v24);
LABEL_10:
      v32 = v25;
      v33 = 1065353216;
      goto LABEL_25;
    }

    if (v23 > 0.00001 && _S2 <= 0.0)
    {
      *a1 = 1;
      _D1.f32[0] = (_D1.f32[1] * _D1.f32[1]) - (v18 * _D1.f32[0]);
      v25 = vmul_f32(_D1, 0xC000000040800000);
      goto LABEL_10;
    }

    *a1 = 2;
    v26 = _D1.f32[1] / (v18 + v18);
    goto LABEL_14;
  }

  if (fabsf(_D1.f32[1]) > 0.00001)
  {
    *a1 = 2;
    v26 = _D1.f32[0] / _S7;
LABEL_14:
    *a2 = v26;
    v27 = v26 < 1.0 && v26 > 0.0;
    goto LABEL_25;
  }

  if (fabsf(_D1.f32[0]) <= 0.00001)
  {
    if (fabsf(vaddv_f32(vmul_f32(v6, v6))) <= 0.00001 && fabsf(vaddv_f32(vmul_f32(v7, v7))) <= 0.00001 && fabsf(vaddv_f32(vmul_f32(v8, v8))) <= 0.00001)
    {
      v27 = 0;
      v28 = 5;
    }

    else
    {
      v27 = 0;
      v28 = 4;
    }
  }

  else
  {
    v27 = 0;
    v28 = 3;
  }

  *a1 = v28;
LABEL_25:
  v30 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t geom::anonymous namespace::cubic_bezier_find_characteristic_points<double>(int *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = vsubq_f64(a4, a3);
  v7 = vsubq_f64(a5, a3);
  v8 = vsubq_f64(a6, a3);
  __asm
  {
    FMOV            V0.2D, #3.0
    FMOV            V2.2D, #-2.0
  }

  v15 = vmulq_f64(vaddq_f64(vmlaq_f64(0, _Q2, v6), v7), _Q0);
  v16 = vmlaq_f64(v8, _Q0, vsubq_f64(v6, v7));
  v17 = vcvt_f32_f64(vmulq_f64(v6, _Q0));
  v18 = vextq_s8(v16, v15, 8uLL);
  v16.i64[1] = v15.i64[1];
  *v15.i8 = vcvt_f32_f64(v16);
  v19 = vcvt_f32_f64(v18);
  v20 = ((-v19.f32[1] * v19.f32[0]) + (*&v15.i32[1] * *v15.i32));
  v21 = vcvtq_f64_f32(vmla_f32(vmul_f32(vneg_f32(vrev64_s32(v17)), *v15.i8), v19, v17));
  v22 = 3.0 * v21.f64[0];
  if (fabs(v20) > 0.000001)
  {
    v23 = vmuld_lane_f64(v20 * -4.0, v21, 1) + v22 * v21.f64[0];
    v24 = fabsf(v23);
    if (v24 > 0.000001 && v23 > 0.0)
    {
      *a1 = 0;
      _Q2.f64[1] = v20 * 1.33333333;
      v25 = vmulq_f64(_Q2, v21);
      v26 = vextq_s8(v25, v25, 8uLL);
LABEL_10:
      v33 = v26;
      v34 = 0x3FF0000000000000;
      goto LABEL_22;
    }

    if (v24 > 0.000001 && v23 <= 0.0)
    {
      *a1 = 1;
      v28 = vdupq_lane_s64(*&v21.f64[0], 0);
      v28.f64[0] = v21.f64[0] * v21.f64[0] - v20 * v21.f64[1];
      v26 = vmulq_f64(v28, xmmword_2500CA830);
      goto LABEL_10;
    }

    *a1 = 2;
    v27 = v21.f64[0] / (v20 + v20);
    goto LABEL_14;
  }

  if (fabs(v21.f64[0]) > 0.000001)
  {
    *a1 = 2;
    v27 = v21.f64[1] / v22;
LABEL_14:
    *a2 = v27;
    v29 = v27 < 1.0 && v27 > 0.0;
    goto LABEL_22;
  }

  if (fabs(v21.f64[1]) <= 0.000001)
  {
    if (fabs(vaddvq_f64(vmulq_f64(v6, v6))) <= 0.000001 && fabs(vaddvq_f64(vmulq_f64(v7, v7))) <= 0.000001 && fabs(vaddvq_f64(vmulq_f64(v8, v8))) <= 0.000001)
    {
      v29 = 0;
      v30 = 5;
    }

    else
    {
      v29 = 0;
      v30 = 4;
    }
  }

  else
  {
    v29 = 0;
    v30 = 3;
  }

  *a1 = v30;
LABEL_22:
  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

float geom_cubic_bezier_fit_with_quadratic_bezier_pair_2f(uint64_t a1, uint64_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6, float a7)
{
  *a1 = *&a3;
  *(a2 + 16) = *&a6;
  *(a1 + 8) = vmla_n_f32(a3, vsub_f32(a4, a3), a7 * 1.5);
  result = 1.0 - a7;
  v8 = vmla_n_f32(a6, vsub_f32(a5, a6), (1.0 - a7) * 1.5);
  *(a2 + 8) = v8;
  v9 = vmla_n_f32(vmul_n_f32(v8, a7), *(a1 + 8), 1.0 - a7);
  *(a1 + 16) = v9;
  *a2 = v9;
  return result;
}

double geom_cubic_bezier_fit_with_quadratic_bezier_pair_2d(float64x2_t *a1, float64x2_t *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, double a7)
{
  *a1 = a3;
  a2[2] = a6;
  a1[1] = vmlaq_n_f64(a3, vsubq_f64(a4, a3), a7 * 1.5);
  result = 1.0 - a7;
  v8 = vmlaq_n_f64(a6, vsubq_f64(a5, a6), (1.0 - a7) * 1.5);
  a2[1] = v8;
  v9 = vmlaq_n_f64(vmulq_n_f64(v8, a7), a1[1], 1.0 - a7);
  a1[2] = v9;
  *a2 = v9;
  return result;
}

unint64_t geom_cubic_bezier_fit_with_quadratic_beziers_2f(uint64_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  v101 = *MEMORY[0x277D85DE8];
  v9 = geom::collection_to_vector<float>(a1);
  v94 = 0;
  v9[1] = *v9;
  if (v94 == 3)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v9, 3uLL);
    v35 = *v9;
    v36 = vdup_n_s32(0x3E19999Au);
    v37 = vdup_n_s32(0x3F733333u);
    v38 = vdup_n_s32(0x3D4CCCCDu);
    v39 = vmla_f32(vmla_f32(vmul_f32(vsub_f32(a3, a4), v36), v37, a2), v38, a5);
    v35[2] = vmla_f32(vmla_f32(vmul_f32(vsub_f32(a4, a3), v36), v38, a2), v37, a5);
    __asm { FMOV            V3.2S, #-0.25 }

    v41 = vmul_f32(vadd_f32(a2, a5), _D3);
    __asm { FMOV            V3.2S, #0.75 }

    *v35 = v39;
    v35[1] = vmla_f32(v41, _D3, vadd_f32(a3, a4));
    goto LABEL_46;
  }

  if (v94 == 4)
  {
    v17 = vsub_f32(a5, a2);
    v18 = vmul_f32(vsub_f32(a3, a2), v17);
    v19 = vadd_f32(v18, vdup_lane_s32(v18, 1));
    v20 = vaddv_f32(v18);
    v21 = vmul_f32(vsub_f32(a4, a2), v17);
    v22 = vadd_f32(v21, vdup_lane_s32(v21, 1));
    v23 = vmul_f32(v17, v17);
    v24 = vadd_f32(v23, vdup_lane_s32(v23, 1));
    if (v20 < 0.0 || (vcgt_f32(v22, v24).u8[0] & 1) != 0 || (vcgt_f32(v19, v24).u8[0] & 1) != 0 || v22.f32[0] < 0.0)
    {
      v25 = vdiv_f32(v19, v24).f32[0];
      v26 = vdiv_f32(v22, v24).f32[0];
      v27 = 3.0 * v25;
      v28 = (6.0 * v26) + (v25 * -12.0);
      v29 = ((-9.0 * v26) + (v25 * 9.0)) + 3.0;
      if (fabsf(v29) <= 0.00001)
      {
        if (fabsf(v28) > 0.00001)
        {
          v99 = -v27 / v28;
          v34 = 1;
          goto LABEL_29;
        }
      }

      else
      {
        v30 = (v27 * (v29 * -4.0)) + (v28 * v28);
        if (v30 >= 0.0)
        {
          v31 = 1.0;
          if (v28 < 0.0)
          {
            v31 = -1.0;
          }

          v32 = (v28 + (v31 * sqrtf(v30))) * -0.5;
          v33 = v27 / v32;
          v99 = v32 / v29;
          v100 = v33;
          if (v33 < (v32 / v29))
          {
            v99 = v33;
            v100 = v32 / v29;
          }

          v34 = 2;
          if (v30 <= 0.0)
          {
            v34 = 1;
          }

LABEL_29:
          v77 = 0;
          v78 = 0;
          do
          {
            v79 = *(&v99 + v77);
            if (v79 >= 0.0 && v79 <= 1.0)
            {
              *(&v97 + v78++) = v79;
            }

            ++v77;
          }

          while (v34 != v77);
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v9, 3 * v78 + 3);
          if (v78 == 1)
          {
            v91 = COERCE_DOUBLE(vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(a3, v97 * (((1.0 - v97) * (1.0 - v97)) * 3.0)), a2, (1.0 - v97) * ((1.0 - v97) * (1.0 - v97))), a4, (v97 * v97) * ((1.0 - v97) * 3.0)), a5, v97 * (v97 * v97)));
            **v9 = a2;
            (*v9)[1] = vmul_f32(vadd_f32(a2, *&v91), 0x3F0000003F000000);
            *&(*v9)[2] = v91;
            *&(*v9)[3] = v91;
            v83 = 5;
            v84 = 4;
            *&a2 = v91;
            goto LABEL_41;
          }

          if (v78 == 2)
          {
            v81 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(a3, v97 * (((1.0 - v97) * (1.0 - v97)) * 3.0)), a2, (1.0 - v97) * ((1.0 - v97) * (1.0 - v97))), a4, (v97 * v97) * ((1.0 - v97) * 3.0)), a5, v97 * (v97 * v97));
            v82 = COERCE_DOUBLE(vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(a3, v98 * (((1.0 - v98) * (1.0 - v98)) * 3.0)), a2, (1.0 - v98) * ((1.0 - v98) * (1.0 - v98))), a4, (v98 * v98) * ((1.0 - v98) * 3.0)), a5, v98 * (v98 * v98)));
            **v9 = a2;
            (*v9)[1] = vmul_f32(vadd_f32(a2, v81), 0x3F0000003F000000);
            (*v9)[2] = v81;
            (*v9)[3] = v81;
            (*v9)[4] = vmul_f32(vadd_f32(v81, *&v82), 0x3F0000003F000000);
            *&(*v9)[5] = v82;
            *&(*v9)[6] = v82;
            v83 = 8;
            v84 = 7;
            *&a2 = v82;
LABEL_41:
            (*v9)[v84] = vmul_f32(vadd_f32(a5, a2), 0x3F0000003F000000);
            (*v9)[v83] = a5;
            goto LABEL_46;
          }

LABEL_40:
          **v9 = a2;
          v83 = 2;
          v84 = 1;
          goto LABEL_41;
        }
      }
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v9, 3uLL);
    goto LABEL_40;
  }

  if (v94 != 5)
  {
    v43 = vsub_f32(a3, a2);
    v44 = vaddv_f32(vmul_f32(v43, v43));
    v45 = vsub_f32(a4, a3);
    v46 = vmul_f32(v45, v45);
    v47 = vsub_f32(a5, a4);
    v48 = vmul_f32(v47, v47);
    v49 = vadd_f32(vzip1_s32(v46, v48), vzip2_s32(v46, v48));
    if (v49.f32[0] < v49.f32[1])
    {
      v49.f32[0] = v49.f32[1];
    }

    if (v44 < v49.f32[0])
    {
      v44 = v49.f32[0];
    }

    v50 = v44 * 0.0000999999978;
    if (characteristic == 1)
    {
      v85 = vmla_n_f32(a2, v43, v95);
      a4 = vmla_n_f32(a4, v47, v95);
      v86 = vmla_n_f32(a3, v45, v95);
      v87 = vmla_n_f32(v85, vsub_f32(v86, v85), v95);
      a3 = vmla_n_f32(v86, vsub_f32(a4, v86), v95);
      v88 = vmla_n_f32(v87, vsub_f32(a3, v87), v95);
      v74 = v88;
    }

    else
    {
      if (characteristic == 2)
      {
        v51 = vmla_f32(a2, 0, v43);
        v52 = vmla_f32(a3, 0, v45);
        v53 = vsub_f32(v52, v51);
        v54 = vmla_f32(v51, 0, v53);
        v55 = vsub_f32(vmla_f32(a4, 0, v47), v52);
        v56 = vsub_f32(vmla_f32(v52, 0, v55), v54);
        v57 = vmla_n_f32(v51, v53, v95);
        v93 = v95;
        v58 = vmla_n_f32(a2, v43, v93);
        v59 = vmla_n_f32(a3, v45, v93);
        v60 = vsub_f32(v59, v58);
        v61 = vmla_n_f32(v58, v60, v93);
        v62 = vsub_f32(vmla_n_f32(a4, v47, v93), v59);
        v63 = vsub_f32(vmla_n_f32(v59, v62, v93), v61);
        v64 = vmla_n_f32(v58, v60, v96);
        v92 = v96;
        v65 = vmla_n_f32(a2, v43, v92);
        v66 = vmla_n_f32(a3, v45, v92);
        v67 = vsub_f32(v66, v65);
        v68 = vadd_f32(v65, v67);
        v69 = vmla_n_f32(v65, v67, v92);
        v70 = vsub_f32(vmla_n_f32(a4, v47, v92), v66);
        v71 = vadd_f32(v66, v70);
        v72 = vsub_f32(vmla_n_f32(v66, v70, v92), v69);
        v73 = vadd_f32(v69, v72);
        v74 = vmla_n_f32(v69, v72, v92);
        v75 = vadd_f32(v68, vsub_f32(v71, v68));
        v76 = vadd_f32(a5, vmla_f32(vmla_f32(vmul_f32(a3, 0), 0, a2), 0, a4));
LABEL_45:
        goto LABEL_46;
      }

      v74 = a2;
    }

    v73 = a3;
    v75 = a4;
    v76 = a5;
    goto LABEL_45;
  }

  __asm { FMOV            V1.2S, #0.25 }

  v16 = vmul_f32(vadd_f32(a5, vadd_f32(a4, vadd_f32(a2, a3))), _D1);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v9, 3uLL);
  (*v9)[2] = v16;
  (*v9)[1] = v16;
  **v9 = v16;
LABEL_46:
  v89 = *MEMORY[0x277D85DE8];
  return (v9[1] - *v9) / 3uLL;
}

unint64_t geom_cubic_bezier_fit_with_quadratic_beziers_2d(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5)
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = geom::collection_to_vector<float>(a1);
  v99 = 0;
  v5[1] = *v5;
  if (v99 == 3)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v5, 3uLL);
    v31 = *v5;
    v32 = vdupq_n_s64(0x3FC3333333333333uLL);
    v33 = vdupq_n_s64(0x3FEE666666666666uLL);
    v34 = vdupq_n_s64(0x3FA999999999999AuLL);
    v35 = vmlaq_f64(vmlaq_f64(vmulq_f64(vsubq_f64(a3, a4), v32), v33, a2), v34, a5);
    v31[2] = vmlaq_f64(vmlaq_f64(vmulq_f64(vsubq_f64(a4, a3), v32), v34, a2), v33, a5);
    __asm { FMOV            V3.2D, #-0.25 }

    v37 = vmulq_f64(vaddq_f64(a2, a5), _Q3);
    __asm { FMOV            V3.2D, #0.75 }

    *v31 = v35;
    v31[1] = vmlaq_f64(v37, _Q3, vaddq_f64(a3, a4));
    goto LABEL_47;
  }

  if (v99 == 4)
  {
    v13 = vsubq_f64(a5, a2);
    v14 = vmulq_f64(vsubq_f64(a3, a2), v13);
    v15 = vaddq_f64(v14, vdupq_laneq_s64(v14, 1));
    v16 = vmulq_f64(vsubq_f64(a4, a2), v13);
    v17 = vaddq_f64(v16, vdupq_laneq_s64(v16, 1));
    v18 = vmulq_f64(v13, v13);
    v19 = vaddq_f64(v18, vdupq_laneq_s64(v18, 1));
    __asm { FMOV            V3.2D, #0.5 }

    v91 = _Q3;
    if (_NF || (vmovn_s64(vcgtq_f64(v17, v19)).u8[0] & 1) != 0 || (vmovn_s64(vcgtq_f64(v15, v19)).u8[0] & 1) != 0 || v17.f64[0] < 0.0)
    {
      v21 = vdivq_f64(v15, v19).f64[0];
      v22 = vdivq_f64(v17, v19).f64[0];
      v23 = 3.0 * v21;
      v24 = 6.0 * v22 + v21 * -12.0;
      v25 = -9.0 * v22 + v21 * 9.0 + 3.0;
      if (fabs(v25) <= 0.000001)
      {
        if (fabs(v24) > 0.000001)
        {
          v104 = -v23 / v24;
          v30 = 1;
          goto LABEL_31;
        }
      }

      else
      {
        v26 = v23 * (v25 * -4.0) + v24 * v24;
        if (v26 >= 0.0)
        {
          v27 = 1.0;
          if (v24 < 0.0)
          {
            v27 = -1.0;
          }

          v28 = (v24 + v27 * sqrt(v26)) * -0.5;
          v29 = v23 / v28;
          v104 = v28 / v25;
          v105 = v29;
          if (v29 < v28 / v25)
          {
            v104 = v29;
            v105 = v28 / v25;
          }

          v30 = 2;
          if (v26 <= 0.0)
          {
            v30 = 1;
          }

LABEL_31:
          v71 = 0;
          v72 = 0;
          do
          {
            v73 = *(&v104 + v71);
            if (v73 >= 0.0 && v73 <= 1.0)
            {
              *(&v102 + v72++) = v73;
            }

            ++v71;
          }

          while (v30 != v71);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v5, 3 * v72 + 3);
          if (v72 == 1)
          {
            v80 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a3, v102 * ((1.0 - v102) * (1.0 - v102) * 3.0)), a2, (1.0 - v102) * ((1.0 - v102) * (1.0 - v102))), a4, v102 * v102 * ((1.0 - v102) * 3.0)), a5, v102 * (v102 * v102));
            **v5 = a2;
            v77 = v91;
            (*v5)[1] = vmulq_f64(vaddq_f64(a2, v80), v91);
            (*v5)[2] = v80;
            (*v5)[3] = v80;
            v78 = 5;
            v79 = 4;
            goto LABEL_43;
          }

          if (v72 == 2)
          {
            v75 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a3, v102 * ((1.0 - v102) * (1.0 - v102) * 3.0)), a2, (1.0 - v102) * ((1.0 - v102) * (1.0 - v102))), a4, v102 * v102 * ((1.0 - v102) * 3.0)), a5, v102 * (v102 * v102));
            v76 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a3, v103 * ((1.0 - v103) * (1.0 - v103) * 3.0)), a2, (1.0 - v103) * ((1.0 - v103) * (1.0 - v103))), a4, v103 * v103 * ((1.0 - v103) * 3.0)), a5, v103 * (v103 * v103));
            **v5 = a2;
            v77 = v91;
            (*v5)[1] = vmulq_f64(vaddq_f64(a2, v75), v91);
            (*v5)[2] = v75;
            (*v5)[3] = v75;
            (*v5)[4] = vmulq_f64(vaddq_f64(v75, v76), v91);
            (*v5)[5] = v76;
            (*v5)[6] = v76;
            v78 = 8;
            v79 = 7;
            v80 = v76;
LABEL_43:
            (*v5)[v79] = vmulq_f64(vaddq_f64(a5, v80), v77);
            (*v5)[v78] = a5;
            goto LABEL_47;
          }

LABEL_42:
          v77 = v91;
          v80 = a2;
          **v5 = a2;
          v78 = 2;
          v79 = 1;
          goto LABEL_43;
        }
      }
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v5, 3uLL);
    goto LABEL_42;
  }

  v7 = a2;
  if (v99 != 5)
  {
    v39 = vsubq_f64(a3, a2);
    v40 = vaddvq_f64(vmulq_f64(v39, v39));
    v41 = vsubq_f64(a4, a3);
    v42 = vsubq_f64(a5, a4);
    v43 = vpaddq_f64(vmulq_f64(v41, v41), vmulq_f64(v42, v42));
    if (v43.f64[0] < v43.f64[1])
    {
      v43.f64[0] = v43.f64[1];
    }

    if (v40 >= v43.f64[0])
    {
      v44 = v40;
    }

    else
    {
      v44 = v43.f64[0];
    }

    v45 = v44 * 0.0001;
    if (characteristic == 1)
    {
      v81 = vmlaq_n_f64(a2, v39, v100);
      v82 = vmlaq_n_f64(a4, v42, v100);
      v83 = vmlaq_n_f64(a3, v41, v100);
      v84 = vmlaq_n_f64(v81, vsubq_f64(v83, v81), v100);
      a3 = vmlaq_n_f64(v83, vsubq_f64(v82, v83), v100);
      a4 = v82;
      v93 = vmlaq_n_f64(v84, vsubq_f64(a3, v84), v100);
      v7 = v93;
    }

    else if (characteristic == 2)
    {
      v46 = vmlaq_f64(a2, 0, v39);
      v47 = vmlaq_f64(a3, 0, v41);
      v90 = v42;
      v92 = v41;
      v48 = vsubq_f64(v47, v46);
      v49 = vmlaq_f64(v46, 0, v48);
      v50 = vsubq_f64(vmlaq_f64(a4, 0, v42), v47);
      v51 = vsubq_f64(vmlaq_f64(v47, 0, v50), v49);
      v52 = vmlaq_n_f64(v46, v48, v100);
      v88 = v100;
      v89 = v39;
      v53 = vmlaq_n_f64(a2, v89, v88);
      v54 = vmlaq_n_f64(a3, v92, v88);
      v55 = vsubq_f64(v54, v53);
      v56 = vmlaq_n_f64(v53, v55, v88);
      v57 = vsubq_f64(vmlaq_n_f64(a4, v90, v88), v54);
      v58 = vsubq_f64(vmlaq_n_f64(v54, v57, v88), v56);
      v59 = vmlaq_n_f64(v53, v55, v101);
      v87 = v101;
      v60 = vmlaq_n_f64(a2, v89, v87);
      v61 = vmlaq_n_f64(a3, v92, v87);
      v62 = vsubq_f64(v61, v60);
      v63 = vaddq_f64(v60, v62);
      v64 = vmlaq_n_f64(v60, v62, v87);
      v65 = vsubq_f64(vmlaq_n_f64(a4, v90, v87), v61);
      v66 = vaddq_f64(v61, v65);
      v67 = vsubq_f64(vmlaq_n_f64(v61, v65, v87), v64);
      v68 = vaddq_f64(v64, v67);
      v7 = vmlaq_n_f64(v64, v67, v87);
      v69 = vaddq_f64(v63, vsubq_f64(v66, v63));
      v70 = vaddq_f64(a5, vmlaq_f64(vmlaq_f64(vmulq_f64(a3, 0), 0, a2), 0, a4));
LABEL_46:
      goto LABEL_47;
    }

    v68 = a3;
    v69 = a4;
    v70 = a5;
    goto LABEL_46;
  }

  __asm { FMOV            V1.2D, #0.25 }

  v98 = vmulq_f64(vaddq_f64(a5, vaddq_f64(a4, vaddq_f64(a2, a3))), _Q1);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v5, 3uLL);
  (*v5)[2] = v98;
  (*v5)[1] = v98;
  **v5 = v98;
LABEL_47:
  v85 = *MEMORY[0x277D85DE8];
  return (v5[1] - *v5) / 3uLL;
}

uint64_t geom_intersect_ray_quadratic_bezier_2f(float *a1, float *a2, float32x2_t a3, double a4, double a5, double a6, double a7)
{
  v10 = 0;
  if (v9)
  {
    v11 = a1;
    v12 = a2;
    v13 = v9;
    do
    {
      if (*v11 >= 0.0)
      {
        a2[v10] = *v12;
        a1[v10++] = *v11;
      }

      ++v12;
      ++v11;
      --v13;
    }

    while (v13);
  }

  return v10;
}

uint64_t geom_intersect_ray_quadratic_bezier_2d(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7)
{
  v10 = 0;
  if (v9)
  {
    v11 = a1;
    v12 = a2;
    v13 = v9;
    do
    {
      if (*v11 >= 0.0)
      {
        a2[v10] = *v12;
        a1[v10++] = *v11;
      }

      ++v12;
      ++v11;
      --v13;
    }

    while (v13);
  }

  return v10;
}

uint64_t geom_intersect_line_segment_quadratic_bezier_2f(float *a1, float *a2, float32x2_t a3, float32x2_t a4, double a5, double a6, double a7)
{
  v10 = 0;
  if (v9)
  {
    v11 = a1;
    v12 = a2;
    v13 = v9;
    do
    {
      if (*v11 >= 0.0 && *v11 <= 1.0)
      {
        a2[v10] = *v12;
        a1[v10++] = *v11;
      }

      ++v12;
      ++v11;
      --v13;
    }

    while (v13);
  }

  return v10;
}

uint64_t geom_intersect_line_segment_quadratic_bezier_2d(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7)
{
  v10 = 0;
  if (v9)
  {
    v11 = a1;
    v12 = a2;
    v13 = v9;
    do
    {
      if (*v11 >= 0.0 && *v11 <= 1.0)
      {
        a2[v10] = *v12;
        a1[v10++] = *v11;
      }

      ++v12;
      ++v11;
      --v13;
    }

    while (v13);
  }

  return v10;
}

uint64_t geom_intersect_line_quadratic_bezier_2f(uint64_t a1, int a2, float *a3, double a4, double a5, double a6)
{
  v10 = *MEMORY[0x277D85DE8];
  LODWORD(v6) = vdup_lane_s32(a1, 1).u32[0];
  HIDWORD(v6) = a1 ^ 0x80000000;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_intersect_line_quadratic_bezier_2d(uint64_t a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5)
{
  v8[2] = *MEMORY[0x277D85DE8];
  *&v5.f64[0] = vdupq_laneq_s64(*a1, 1).u64[0];
  v5.f64[1] = -*a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_closest_point_to_quadratic_bezier_2f(float *a1, float *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = vsub_f32(a5, a4);
  v13 = vadd_f32(v12, v12);
  v14 = vmla_f32(vsub_f32(a6, a4), 0xC0000000C0000000, v12);
  v15 = vsub_f32(a4, a3);
  v34[0] = vaddv_f32(vmul_f32(v15, v13));
  v34[1] = vaddv_f32(vmul_f32(v13, v13)) + (vaddv_f32(vmul_f32(v15, v14)) * 2.0);
  v16 = vmul_f32(v13, v14);
  v17 = vmul_f32(v14, v14);
  v35 = vmul_f32(vadd_f32(vzip1_s32(v16, v17), vzip2_s32(v16, v17)), 0x4000000040400000);
  result = geom::cubic_roots<float>(v34, v33);
  if (a2)
  {
    *a2 = INFINITY;
    v19 = 0.0;
  }

  else
  {
    v19 = INFINITY;
  }

  if (result)
  {
    v20 = 0;
    while (2)
    {
      while (2)
      {
        v21 = v20;
        while (1)
        {
          v22 = v33[v21];
          if (v22 <= 0.0 || v22 >= 1.0)
          {
            goto LABEL_21;
          }

          v24 = vsub_f32(vmla_n_f32(vmul_n_f32(vmla_n_f32(vmul_n_f32(a6, v22), a5, (1.0 - v22) + (1.0 - v22)), v22), a4, (1.0 - v22) * (1.0 - v22)), a3);
          v25 = vaddv_f32(vmul_f32(v24, v24));
          if (!a2)
          {
            break;
          }

          if (v25 < *a2)
          {
            *a2 = v25;
            if (!a1)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          if (result == ++v21)
          {
            v19 = *a2;
            goto LABEL_26;
          }
        }

        if (v25 >= v19)
        {
          if (++v20 != result)
          {
            continue;
          }

          goto LABEL_26;
        }

        break;
      }

      v21 = v20;
      v19 = v25;
      if (a1)
      {
LABEL_20:
        *a1 = v22;
      }

LABEL_21:
      v20 = v21 + 1;
      if (v21 + 1 != result)
      {
        continue;
      }

      break;
    }

    if (a2)
    {
      v19 = *a2;
    }
  }

  else
  {
    v19 = INFINITY;
  }

LABEL_26:
  v26 = vmul_f32(v15, v15);
  v27 = vsub_f32(a6, a3);
  v28 = vmul_f32(v27, v27);
  v29 = vadd_f32(vzip1_s32(v26, v28), vzip2_s32(v26, v28));
  if (v29.f32[0] < v29.f32[1] && v29.f32[0] < v19)
  {
    v31 = 0.0;
    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v29.f32[1] >= v19)
  {
    goto LABEL_37;
  }

  v31 = 1.0;
  v29.i32[0] = v29.i32[1];
  if (a2)
  {
LABEL_34:
    *a2 = v29.f32[0];
  }

LABEL_35:
  if (a1)
  {
    *a1 = v31;
  }

LABEL_37:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_closest_point_to_quadratic_bezier_2d(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = vsubq_f64(a5, a4);
  v9 = vsubq_f64(a6, a4);
  v10 = vaddq_f64(v8, v8);
  __asm { FMOV            V3.2D, #-2.0 }

  v15 = vmlaq_f64(v9, _Q3, v8);
  v31 = vsubq_f64(a4, a3);
  v36[0] = vaddvq_f64(vmulq_f64(v31, v10));
  v36[1] = vaddvq_f64(vmulq_f64(v10, v10)) + vaddvq_f64(vmulq_f64(v31, v15)) * 2.0;
  v37 = vmulq_f64(vpaddq_f64(vmulq_f64(v10, v15), vmulq_f64(v15, v15)), xmmword_2500CA840);
  result = geom::cubic_roots<double>(v36, v35);
  if (a2)
  {
    *a2 = INFINITY;
    v17 = 0.0;
  }

  else
  {
    v17 = INFINITY;
  }

  if (result)
  {
    v18 = 0;
    while (2)
    {
      while (2)
      {
        v19 = v18;
        while (1)
        {
          v20 = v35[v19];
          if (v20 <= 0.0 || v20 >= 1.0)
          {
            goto LABEL_21;
          }

          v22 = vsubq_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a6, v20), a5, 1.0 - v20 + 1.0 - v20), v20), a4, (1.0 - v20) * (1.0 - v20)), a3);
          v23 = vaddvq_f64(vmulq_f64(v22, v22));
          if (!a2)
          {
            break;
          }

          if (v23 < *a2)
          {
            *a2 = v23;
            if (!a1)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          if (result == ++v19)
          {
            v17 = *a2;
            goto LABEL_26;
          }
        }

        if (v23 >= v17)
        {
          if (++v18 != result)
          {
            continue;
          }

          goto LABEL_26;
        }

        break;
      }

      v19 = v18;
      v17 = v23;
      if (a1)
      {
LABEL_20:
        *a1 = v20;
      }

LABEL_21:
      v18 = v19 + 1;
      if (v19 + 1 != result)
      {
        continue;
      }

      break;
    }

    v24 = v31;
    if (a2)
    {
      v17 = *a2;
    }
  }

  else
  {
    v17 = INFINITY;
LABEL_26:
    v24 = v31;
  }

  v25 = vsubq_f64(a6, a3);
  v26 = vpaddq_f64(vmulq_f64(v24, v24), vmulq_f64(v25, v25));
  if (v26.f64[0] < v26.f64[1] && v26.f64[0] < v17)
  {
    v28 = 0.0;
    if (!a2)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v26.f64[1] >= v17)
  {
    goto LABEL_38;
  }

  v28 = 1.0;
  v26.f64[0] = v26.f64[1];
  if (a2)
  {
LABEL_35:
    *a2 = v26.f64[0];
  }

LABEL_36:
  if (a1)
  {
    *a1 = v28;
  }

LABEL_38:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_intersect_ray_cubic_bezier_2f(float *a1, float *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, double a6, float32x2_t a7, float32x2_t a8)
{
  v11 = 0;
  if (v10)
  {
    v12 = a1;
    v13 = a2;
    v14 = v10;
    do
    {
      if (*v12 >= 0.0)
      {
        a2[v11] = *v13;
        a1[v11++] = *v12;
      }

      ++v13;
      ++v12;
      --v14;
    }

    while (v14);
  }

  return v11;
}

uint64_t geom_intersect_ray_cubic_bezier_2d(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, float64x2_t a8)
{
  v11 = 0;
  if (v10)
  {
    v12 = a1;
    v13 = a2;
    v14 = v10;
    do
    {
      if (*v12 >= 0.0)
      {
        a2[v11] = *v13;
        a1[v11++] = *v12;
      }

      ++v13;
      ++v12;
      --v14;
    }

    while (v14);
  }

  return v11;
}

uint64_t geom_intersect_line_segment_cubic_bezier_2f(float *a1, float *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, double a6, float32x2_t a7, float32x2_t a8)
{
  v11 = 0;
  if (v10)
  {
    v12 = a1;
    v13 = a2;
    v14 = v10;
    do
    {
      if (*v12 >= 0.0 && *v12 <= 1.0)
      {
        a2[v11] = *v13;
        a1[v11++] = *v12;
      }

      ++v13;
      ++v12;
      --v14;
    }

    while (v14);
  }

  return v11;
}

uint64_t geom_intersect_line_segment_cubic_bezier_2d(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, float64x2_t a8)
{
  v11 = 0;
  if (v10)
  {
    v12 = a1;
    v13 = a2;
    v14 = v10;
    do
    {
      if (*v12 >= 0.0 && *v12 <= 1.0)
      {
        a2[v11] = *v13;
        a1[v11++] = *v12;
      }

      ++v13;
      ++v12;
      --v14;
    }

    while (v14);
  }

  return v11;
}

uint64_t geom_intersect_line_cubic_bezier_2f(uint64_t a1, int a2, float *a3, float32x2_t a4, double a5, float32x2_t a6, float32x2_t a7)
{
  v11 = *MEMORY[0x277D85DE8];
  v7.i32[0] = vdup_lane_s32(a1, 1).u32[0];
  v7.i32[1] = a1 ^ 0x80000000;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_intersect_line_cubic_bezier_2d(uint64_t a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v9[3] = *MEMORY[0x277D85DE8];
  *&v6.f64[0] = vdupq_laneq_s64(*a1, 1).u64[0];
  v6.f64[1] = -*a1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

float *geom_closest_point_to_cubic_bezier_2f(float *result, float *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6, float32x2_t a7, uint64_t a8, double *a9)
{
  v10 = result;
  v78 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v16 = INFINITY;
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *a2 = INFINITY;
  v16 = 0.0;
  if (result)
  {
LABEL_3:
    *result = INFINITY;
  }

LABEL_4:
  v17 = 0;
  v18 = vsub_f32(a5, a4);
  v19 = vsub_f32(a6, a4);
  __asm { FMOV            V2.2S, #3.0 }

  v24 = vmul_f32(v18, _D2);
  v25 = vsub_f32(v18, v19);
  v26 = vmul_f32(vmla_f32(v19, 0xC0000000C0000000, v18), _D2);
  v27 = vsub_f32(a4, a3);
  v28 = vmul_f32(v27, v24);
  v29 = vmla_f32(vsub_f32(a7, a4), _D2, v25);
  v30 = vadd_f32(v28, vdup_lane_s32(v28, 1));
  v31 = vaddv_f32(v28);
  v32 = vmul_f32(v24, v24);
  v74 = v31;
  v32.i32[0] = vadd_f32(v32, vdup_lane_s32(v32, 1)).u32[0];
  v33 = vmul_f32(v27, v26);
  v34 = vmul_f32(v24, v26);
  v32.f32[1] = vaddv_f32(vmul_f32(v27, v29)) * 3.0;
  v35 = vmla_f32(v32, 0x4040000040000000, vadd_f32(vzip1_s32(v33, v34), vzip2_s32(v33, v34)));
  v75 = v35;
  v36 = (vaddv_f32(vmul_f32(v24, v29)) * 4.0) + (vaddv_f32(vmul_f32(v26, v26)) * 2.0);
  v76 = v36;
  v37 = vmul_f32(v26, v29);
  v38 = vmul_f32(v29, v29);
  v39 = vmul_f32(vadd_f32(vzip1_s32(v37, v38), vzip2_s32(v37, v38)), 0x4040000040A00000);
  v77 = v39;
  *(&v70 + 1) = v31 + (v35.f32[0] * 0.2);
  *v71.f64 = v31 + ((v35.f32[1] + (v35.f32[0] * 4.0)) * 0.1);
  v26.f32[0] = vmuls_lane_f32(3.0, v35, 1);
  *(v71.f64 + 1) = v31 + ((v36 + (v26.f32[0] + (v35.f32[0] * 6.0))) * 0.1);
  *&v71.f64[1] = v31 + ((v39.f32[0] + ((v26.f32[0] + (v35.f32[0] * 4.0)) + (v36 * 2.0))) * 0.2);
  *(&v71.f64[1] + 1) = v39.f32[1] + (v39.f32[0] + (v36 + (vadd_f32(v30, v35).f32[0] + v35.f32[1])));
  v40 = 4;
  v41 = v31;
  do
  {
    v42 = *(&v70 + v40);
    if ((v41 * v42) <= 0.0)
    {
      ++v17;
    }

    v40 += 4;
    v41 = v42;
  }

  while (v40 != 24);
  if (v17)
  {
    if (v17 == 1)
    {
      v43 = 0;
      v44 = 1;
      v45 = 0.5;
      while (1)
      {
        v46 = 0.0;
        v47 = 5;
        v48 = 0.0;
        do
        {
          v49 = *(&v74 + v47);
          v48 = v49 + (v45 * v48);
          v46 = (v45 * v46) + (v49 * v47);
        }

        while (v47-- > 1);
        v51 = v31 + (v45 * v48);
        if (fabsf(v51) <= 0.000005)
        {
          break;
        }

        if (fabsf(v46) > 0.000005)
        {
          v45 = v45 - (v51 / v46);
          v52 = 0.0;
          if (v45 < 0.0 || (v52 = 1.0, v45 > 1.0))
          {
            v45 = v52;
          }

          v44 = v43++ < 9;
          if (v43 != 10)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      if (v44)
      {
        v53 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(a5, v45 * (((1.0 - v45) * (1.0 - v45)) * 3.0)), a4, (1.0 - v45) * ((1.0 - v45) * (1.0 - v45))), a6, (v45 * v45) * ((1.0 - v45) * 3.0)), a7, v45 * (v45 * v45));
        if (result)
        {
          *result = v45;
        }

        v54 = vsub_f32(v53, a3);
        v55 = vaddv_f32(vmul_f32(v54, v54));
        if (a2)
        {
          *a2 = v55;
        }

        else
        {
          v16 = v55;
        }

        goto LABEL_43;
      }
    }

LABEL_28:
    v70 = v31;
    v71 = vcvtq_f64_f32(v35);
    v72 = v36;
    v73 = vcvtq_f64_f32(v39);
    result = geom::polynomial_roots(6, &v70, v69, a9);
    if (!result)
    {
      goto LABEL_43;
    }

    v56 = result;
    v57 = v69;
    do
    {
      v58 = *v57;
      if (v58 > 0.0 && v58 < 1.0)
      {
        v60 = vsub_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(a5, (((1.0 - v58) * (1.0 - v58)) * 3.0) * v58), a4, (1.0 - v58) * ((1.0 - v58) * (1.0 - v58))), a6, (v58 * v58) * ((1.0 - v58) * 3.0)), a7, (v58 * v58) * v58), a3);
        v61 = vaddv_f32(vmul_f32(v60, v60));
        if (a2)
        {
          if (v61 < *a2)
          {
            *a2 = v61;
            v61 = v16;
LABEL_39:
            if (v10)
            {
              *v10 = v58;
            }

            v16 = v61;
          }
        }

        else if (v61 < v16)
        {
          goto LABEL_39;
        }
      }

      ++v57;
      --v56;
    }

    while (v56);
  }

LABEL_43:
  v62 = vmul_f32(v27, v27);
  v63 = vsub_f32(a7, a3);
  v64 = vmul_f32(v63, v63);
  v65 = vadd_f32(vzip1_s32(v62, v64), vzip2_s32(v62, v64));
  if (a2)
  {
    v16 = *a2;
  }

  v66 = 0.0;
  v67 = v65.f32[0] < v65.f32[1] && v65.f32[0] < v16;
  if (v67 || (v66 = 1.0, v65.i32[0] = v65.i32[1], v65.f32[1] < v16))
  {
    if (a2)
    {
      *a2 = v65.f32[0];
    }

    if (v10)
    {
      *v10 = v66;
    }
  }

  v68 = *MEMORY[0x277D85DE8];
  return result;
}

double *geom_closest_point_to_cubic_bezier_2d(double *result, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, uint64_t a8, double *a9)
{
  v10 = result;
  v11 = a7;
  v77 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v14 = INFINITY;
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *a2 = INFINITY;
  v14 = 0.0;
  if (result)
  {
LABEL_3:
    *result = INFINITY;
  }

LABEL_4:
  v15 = 0;
  v16 = vsubq_f64(a5, a4);
  v17 = vsubq_f64(a6, a4);
  v18 = vsubq_f64(a7, a4);
  __asm { FMOV            V16.2D, #3.0 }

  v23 = vmulq_f64(v16, _Q16);
  __asm { FMOV            V4.2D, #-2.0 }

  v25 = vmulq_f64(vmlaq_f64(v17, _Q4, v16), _Q16);
  v26 = vmlaq_f64(v18, _Q16, vsubq_f64(v16, v17));
  v27 = vsubq_f64(a4, a3);
  v28 = vmulq_f64(v27, v23);
  v29 = vaddq_f64(v28, vdupq_laneq_s64(v28, 1));
  v30 = vaddvq_f64(v28);
  v69 = v30;
  v31 = vmulq_f64(v23, v23);
  *&v31.f64[0] = *&vaddq_f64(v31, vdupq_laneq_s64(v31, 1));
  v31.f64[1] = vaddvq_f64(vmulq_f64(v27, v26)) * 3.0;
  v32 = vmlaq_f64(v31, xmmword_2500CA850, vpaddq_f64(vmulq_f64(v27, v25), vmulq_f64(v23, v25)));
  v70 = v32;
  v33 = vaddvq_f64(vmulq_f64(v23, v26)) * 4.0 + vaddvq_f64(vmulq_f64(v25, v25)) * 2.0;
  v71 = v33;
  v34 = vmulq_f64(vpaddq_f64(vmulq_f64(v25, v26), vmulq_f64(v26, v26)), xmmword_2500CA860);
  v72 = v34;
  v74.f64[0] = v30 + v32.f64[0] * 0.2;
  v74.f64[1] = v30 + (v32.f64[1] + v32.f64[0] * 4.0) * 0.1;
  v25.f64[0] = vmuld_lane_f64(3.0, v32, 1);
  v75 = v30 + (v33 + v25.f64[0] + v32.f64[0] * 6.0) * 0.1;
  v76.f64[0] = v30 + (v34.f64[0] + v25.f64[0] + v32.f64[0] * 4.0 + v33 * 2.0) * 0.2;
  v76.f64[1] = v34.f64[1] + v34.f64[0] + v33 + vaddq_f64(v29, v32).f64[0] + v32.f64[1];
  v35 = 8;
  v36 = v30;
  do
  {
    v37 = *(&v73 + v35);
    if (v36 * v37 <= 0.0)
    {
      ++v15;
    }

    v35 += 8;
    v36 = v37;
  }

  while (v35 != 48);
  if (v15)
  {
    if (v15 == 1)
    {
      v38 = 0;
      v39 = 1;
      v40 = 0.5;
      while (1)
      {
        v41 = 0.0;
        v42 = 5;
        v43 = 0.0;
        do
        {
          v44 = *(&v69 + v42);
          v43 = v44 + v40 * v43;
          v41 = v40 * v41 + v44 * v42;
        }

        while (v42-- > 1);
        v46 = v30 + v40 * v43;
        if (fabs(v46) <= 1.0e-10)
        {
          break;
        }

        if (fabs(v41) > 1.0e-10)
        {
          v40 = v40 - v46 / v41;
          v47 = 0.0;
          if (v40 < 0.0 || (v47 = 1.0, v40 > 1.0))
          {
            v40 = v47;
          }

          v39 = v38++ < 9;
          if (v38 != 10)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      if (v39)
      {
        v48 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a5, v40 * ((1.0 - v40) * (1.0 - v40) * 3.0)), a4, (1.0 - v40) * ((1.0 - v40) * (1.0 - v40))), a6, v40 * v40 * ((1.0 - v40) * 3.0)), v11, v40 * (v40 * v40));
        if (result)
        {
          *result = v40;
        }

        v49 = vsubq_f64(v48, a3);
        v50 = vaddvq_f64(vmulq_f64(v49, v49));
        if (a2)
        {
          *a2 = v50;
        }

        else
        {
          v14 = v50;
        }

        goto LABEL_45;
      }
    }

LABEL_28:
    v64 = v27;
    v65 = a3;
    v66 = v11;
    v67 = a4;
    v73 = v30;
    v74 = v32;
    v75 = v33;
    v76 = v34;
    result = geom::polynomial_roots(6, &v73, v68, a9);
    if (!result)
    {
      v11 = v66;
      v27 = v64;
      a3 = v65;
      goto LABEL_45;
    }

    v51 = result;
    v52 = v68;
    v11 = v66;
    v27 = v64;
    a3 = v65;
    do
    {
      v53 = *v52;
      if (*v52 > 0.0 && v53 < 1.0)
      {
        v55 = vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a5, v53 * ((1.0 - v53) * (1.0 - v53) * 3.0)), v67, (1.0 - v53) * ((1.0 - v53) * (1.0 - v53))), a6, v53 * v53 * ((1.0 - v53) * 3.0)), v66, v53 * (v53 * v53)), v65);
        v56 = vaddvq_f64(vmulq_f64(v55, v55));
        if (a2)
        {
          if (v56 < *a2)
          {
            *a2 = v56;
            v56 = v14;
LABEL_39:
            if (v10)
            {
              *v10 = v53;
            }

            v14 = v56;
          }
        }

        else if (v56 < v14)
        {
          goto LABEL_39;
        }
      }

      ++v52;
      --v51;
    }

    while (v51);
  }

LABEL_45:
  v57 = vsubq_f64(v11, a3);
  v58 = vpaddq_f64(vmulq_f64(v27, v27), vmulq_f64(v57, v57));
  if (a2)
  {
    v14 = *a2;
  }

  v59 = 0.0;
  v60 = v58.f64[0] < v58.f64[1] && v58.f64[0] < v14;
  if (v60 || (v59 = 1.0, v58.f64[0] = v58.f64[1], v58.f64[1] < v14))
  {
    if (a2)
    {
      *a2 = v58.f64[0];
    }

    if (v10)
    {
      *v10 = v59;
    }
  }

  v61 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_approximate_closest_point_to_cubic_bezier_2f(unsigned int a1, float *a2, float *a3, float32x2_t a4, float32x2_t a5, float32x2_t a6, float32x2_t a7, float32x2_t a8)
{
  v8 = vsub_f32(a5, a4);
  v9 = vmul_f32(v8, v8);
  v10 = vsub_f32(a8, a4);
  v11 = vmul_f32(v10, v10);
  v12 = vsqrt_f32(vadd_f32(vzip1_s32(v9, v11), vzip2_s32(v9, v11)));
  v13 = vcgt_f32(vdup_lane_s32(v12, 1), v12);
  _NF = v12.f32[0] < v12.f32[1];
  if (v12.f32[0] >= v12.f32[1])
  {
    v15 = v12.f32[1];
  }

  else
  {
    v15 = v12.f32[0];
  }

  v16 = 1.0;
  v17 = 0.0;
  if (_NF)
  {
    v16 = 0.0;
  }

  if (a3)
  {
    *a3 = v15;
  }

  else
  {
    v17 = v15;
  }

  v18 = vdup_lane_s32(v13, 0);
  if (a2)
  {
    *a2 = v16;
  }

  v19 = vbsl_s8(v18, a5, a8);
  if (a1 >= 3)
  {
    v20 = vsub_f32(a6, a4);
    v21 = vsub_f32(a7, a4);
    __asm { FMOV            V18.2S, #3.0 }

    v26 = vmul_f32(vsub_f32(v20, v8), _D18);
    v27 = vmul_f32(vadd_f32(v21, vmla_f32(v8, 0xC0000000C0000000, v20)), _D18);
    v28 = vmla_f32(vsub_f32(v10, v8), _D18, vsub_f32(v20, v21));
    v29 = a1 - 2;
    v30 = 1;
    do
    {
      v31 = (1.0 / (a1 + -1.0)) * v30;
      v32 = vmla_n_f32(v8, vmla_n_f32(v26, vmla_n_f32(v27, v28, v31), v31), v31);
      v33 = vaddv_f32(vmul_f32(v32, v32));
      if (a3)
      {
        if (v33 < *a3)
        {
          *a3 = v33;
          v33 = v17;
LABEL_17:
          v19 = vadd_f32(v32, a4);
          if (a2)
          {
            *a2 = v31;
          }

          v17 = v33;
        }
      }

      else if (v33 < v17)
      {
        goto LABEL_17;
      }

      ++v30;
      --v29;
    }

    while (v29);
  }

  return *&v19;
}

double geom_approximate_closest_point_to_cubic_bezier_2d(unsigned int a1, double *a2, double *a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, float64x2_t a8)
{
  v8 = vsubq_f64(a5, a4);
  v9 = vsubq_f64(a8, a4);
  v10 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v8, v8), vmulq_f64(v9, v9)));
  v11 = vcgtq_f64(vdupq_laneq_s64(v10, 1), v10).u64[0];
  _NF = v10.f64[0] < v10.f64[1];
  if (v10.f64[0] >= v10.f64[1])
  {
    v13 = v10.f64[1];
  }

  else
  {
    v13 = v10.f64[0];
  }

  v14 = 1.0;
  v15 = 0.0;
  if (_NF)
  {
    v14 = 0.0;
  }

  if (a3)
  {
    *a3 = v13;
  }

  else
  {
    v15 = v13;
  }

  v16 = vdupq_lane_s64(v11, 0);
  if (a2)
  {
    *a2 = v14;
  }

  *&v17 = vbslq_s8(v16, a5, a8).u64[0];
  if (a1 >= 3)
  {
    v18 = vsubq_f64(a6, a4);
    v19 = vsubq_f64(a7, a4);
    __asm { FMOV            V18.2D, #3.0 }

    v24 = vmulq_f64(vsubq_f64(v18, v8), _Q18);
    __asm { FMOV            V3.2D, #-2.0 }

    v26 = vmulq_f64(vaddq_f64(v19, vmlaq_f64(v8, _Q3, v18)), _Q18);
    v27 = vmlaq_f64(vsubq_f64(v9, v8), _Q18, vsubq_f64(v18, v19));
    v28 = 1.0 / (a1 + -1.0);
    v29 = a1 - 2;
    v30 = 1.0;
    do
    {
      v31 = vmlaq_n_f64(v8, vmlaq_n_f64(v24, vmlaq_n_f64(v26, v27, v28 * v30), v28 * v30), v28 * v30);
      v32 = vaddvq_f64(vmulq_f64(v31, v31));
      if (a3)
      {
        if (v32 < *a3)
        {
          *a3 = v32;
          v32 = v15;
LABEL_17:
          *&v17 = *&vaddq_f64(v31, a4);
          if (a2)
          {
            *a2 = v28 * v30;
          }

          v15 = v32;
        }
      }

      else if (v32 < v15)
      {
        goto LABEL_17;
      }

      v30 = v30 + 1.0;
      --v29;
    }

    while (v29);
  }

  return v17;
}

float32x2_t *geom::anonymous namespace::compute_tight_bbox_of_quadratic_bezier_2<float>(float32x2_t *result, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v4 = 0;
  v5 = vminnm_f32(a2, a4);
  v6 = vmaxnm_f32(a2, a4);
  *result = v5;
  result[1] = v6;
  v7 = vsub_f32(vmaxnm_f32(a3, v6), vminnm_f32(v5, a3));
  v8 = sqrtf(vaddv_f32(vmul_f32(v7, v7))) * 0.000001;
  v9 = 1;
  do
  {
    v10 = v9;
    v25 = a4;
    v11 = *(&v25 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
    v26 = a3;
    v12 = *(&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
    v27 = a2;
    v13 = *(&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
    v14 = v13 + (v11 + (v12 * -2.0));
    if (fabsf(v14) > 0.00001)
    {
      v15 = (v13 - v12) / v14;
      if (v15 > 0.0 && v15 < 1.0)
      {
        v17 = ((v12 * (v15 * ((1.0 - v15) + (1.0 - v15)))) + (((1.0 - v15) * (1.0 - v15)) * v13)) + ((v15 * v15) * v11);
        v18 = (&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
        v19 = (&v24 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
        v24 = v5;
        v20 = *v19;
        if ((v17 - v8) < *v19)
        {
          v20 = v17 - v8;
        }

        *v19 = v20;
        v5 = v24;
        *result = v24;
        v23 = v6;
        v21 = *v18;
        v22 = v17 + v8;
        if (*v18 < v22)
        {
          v21 = v22;
        }

        *v18 = v21;
        v6 = v23;
        result[1] = v23;
      }
    }

    v9 = 0;
    v4 = 1;
  }

  while ((v10 & 1) != 0);
  return result;
}

float64x2_t *geom::anonymous namespace::compute_tight_bbox_of_quadratic_bezier_2<double>(float64x2_t *result, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v4 = 0;
  v5 = vminnmq_f64(a2, a4);
  v6 = vmaxnmq_f64(a2, a4);
  *result = v5;
  result[1] = v6;
  v7 = vsubq_f64(vmaxnmq_f64(a3, v6), vminnmq_f64(v5, a3));
  v8 = sqrt(vaddvq_f64(vmulq_f64(v7, v7))) * 0.000001;
  v9 = 1;
  do
  {
    v10 = v9;
    v25 = a4;
    v11 = *(&v25 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
    v26 = a3;
    v12 = *(&v26 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
    v27 = a2;
    v13 = *(&v27 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
    v14 = v13 + v11 + v12 * -2.0;
    if (fabs(v14) > 0.000001)
    {
      v15 = (v13 - v12) / v14;
      if (v15 > 0.0 && v15 < 1.0)
      {
        v17 = v12 * (v15 * (1.0 - v15 + 1.0 - v15)) + (1.0 - v15) * (1.0 - v15) * v13 + v15 * v15 * v11;
        v18 = (&v23 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
        v19 = (&v24 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
        v24 = v5;
        v20 = *v19;
        if (v17 - v8 < *v19)
        {
          v20 = v17 - v8;
        }

        *v19 = v20;
        v5 = v24;
        *result = v24;
        v23 = v6;
        v21 = *v18;
        v22 = v8 + v17;
        if (*v18 < v22)
        {
          v21 = v22;
        }

        *v18 = v21;
        v6 = v23;
        result[1] = v23;
      }
    }

    v9 = 0;
    v4 = 1;
  }

  while ((v10 & 1) != 0);
  return result;
}

float32x2_t *geom::anonymous namespace::compute_oriented_bbox_of_quadratic_bezier_2<float>(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t a5, float32x2_t a6, float32x2_t a7)
{
  v11 = a5;
  v12 = vsub_f32(a7, a5);
  v13 = vmul_f32(v12, v12);
  v13.f32[0] = sqrtf(vaddv_f32(v13));
  v27 = vneg_f32(0x7F0000007FLL);
  v28 = 0x7F0000007FLL;
  if (fabsf(v13.f32[0]) <= 0.00000011921)
  {
    v15 = 0x3F80000000000000;
    v20 = 1065353216;
    v11 = 0;
  }

  else
  {
    v14 = vdup_lane_s32(v13, 0);
    v26 = vdiv_f32(v12, v14);
    v14.f32[0] = -v26.f32[1];
    v15 = vzip1_s32(v14, v26);
    v16 = vsub_f32(a6, v11);
    v17 = vmul_f32(v16, v26);
    v18 = vmul_f32(v16, v15);
    v20 = v26;
  }

  v21 = v27;
  v22 = v28;
  v23 = vmul_f32(vadd_f32(v27, v28), 0x3F0000003F000000);
  *a1 = vadd_f32(v11, vmla_lane_f32(vmul_n_f32(v20, v23.f32[0]), v15, v23, 1));
  v24 = vmul_f32(vsub_f32(v22, v21), vdup_n_s32(0x3F0000A8u));
  *a4 = v24;
  if (vcgt_f32(vdup_lane_s32(v24, 1), v24).u8[0])
  {
    *a4 = vrev64_s32(v24);
    v25 = vneg_f32(v15);
    v15 = v20;
    v20 = v25;
  }

  *a2 = v20;
  *a3 = v15;
  return result;
}

float64x2_t *geom::anonymous namespace::compute_oriented_bbox_of_quadratic_bezier_2<double>(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, int8x16_t *a4, float64x2_t a5, float64x2_t a6, float64x2_t a7)
{
  v12 = vsubq_f64(a7, a5);
  v13 = sqrt(vaddvq_f64(vmulq_f64(v12, v12)));
  v34 = vdupq_n_s64(0x7FF0000000000000uLL);
  v35 = vdupq_n_s64(0xFFF0000000000000);
  if (fabs(v13) <= 2.22044605e-16)
  {
    v19 = xmmword_2500C1660;
    v18 = xmmword_2500C1650;
    v20 = 0uLL;
  }

  else
  {
    v14 = vdupq_lane_s64(*&v13, 0);
    v15 = vdivq_f64(v12, v14);
    v14.f64[0] = -v15.f64[1];
    v31 = vzip1q_s64(v14, v15);
    v32 = v15;
    v16 = vsubq_f64(a6, a5);
    v33 = a5;
    v19 = v31;
    v18 = v32;
    v20 = v33;
  }

  v21 = v34;
  v22 = v35;
  __asm { FMOV            V3.2D, #0.5 }

  v28 = vmulq_f64(vaddq_f64(v34, v35), _Q3);
  *a1 = vaddq_f64(v20, vmlaq_laneq_f64(vmulq_n_f64(v18, v28.f64[0]), v19, v28, 1));
  v29 = vmulq_f64(vsubq_f64(v22, v21), vdupq_n_s64(0x3FE0000218DEF417uLL));
  *a4 = v29;
  if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v29, 1), v29)).u8[0])
  {
    *a4 = vextq_s8(v29, v29, 8uLL);
    v30 = vnegq_f64(v19);
    v19 = v18;
    v18 = v30;
  }

  *a2 = v18;
  *a3 = v19;
  return result;
}

double geom_oriented_bounding_box_matrix_of_quadratic_bezier_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  *v3.f32 = v12;
  v3.i32[2] = 0;
  *&result = vmulq_n_f32(v3, v10.f32[0]).u64[0];
  __asm { FMOV            V2.4S, #1.0 }

  return result;
}

float64_t geom_oriented_bounding_box_matrix_of_quadratic_bezier_2d@<D0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>)
{
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v5 = v13;
  v6 = vmulq_f64(v13, 0);
  *a1 = vmulq_n_f64(v15, v13.f64[0]);
  *(a1 + 16) = v6;
  *(a1 + 32) = vmulq_laneq_f64(v14, v5, 1);
  *(a1 + 48) = vmulq_laneq_f64(0, v5, 1);
  result = v16.f64[0];
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 64) = v16;
  *(a1 + 80) = _Q1;
  return result;
}

float32x2_t *geom::anonymous namespace::compute_tight_bbox_of_cubic_bezier_2<float>(float32x2_t *result, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  v5 = 0;
  v60 = *MEMORY[0x277D85DE8];
  v6 = vminnm_f32(a2, a5);
  v7 = vmaxnm_f32(a2, a5);
  *result = v6;
  result[1] = v7;
  v8 = vsub_f32(vmaxnm_f32(vmaxnm_f32(a3, v7), a4), vminnm_f32(vminnm_f32(a3, v6), a4));
  v9 = sqrtf(vaddv_f32(vmul_f32(v8, v8))) * 0.000001;
  __asm { FMOV            V16.2S, #3.0 }

  v14 = vmul_f32(vsub_f32(a3, a2), _D16);
  __asm { FMOV            V19.2S, #6.0 }

  v16 = vmul_f32(vadd_f32(vmla_f32(a2, 0xC0000000C0000000, a3), a4), _D19);
  v17 = vmul_f32(vmla_f32(vsub_f32(a5, a2), _D16, vsub_f32(a3, a4)), _D16);
  *&v18 = vzip1_s32(v14, v16);
  *(&v18 + 1) = __PAIR64__(v14.u32[1], v17.u32[0]);
  v56 = v18;
  v57 = vzip2_s32(v16, v17);
  v19 = &v56;
  v20 = 1;
  do
  {
    v21 = v20;
    v22 = v19[1];
    v23 = v19[2];
    v24 = *v19;
    if (fabsf(v23) <= 0.00001)
    {
      if (fabsf(v22) <= 0.00001)
      {
        goto LABEL_30;
      }

      v58 = -v24 / v22;
      v29 = 1;
    }

    else
    {
      v25 = ((v23 * -4.0) * v24) + (v22 * v22);
      if (v25 < 0.0)
      {
        goto LABEL_30;
      }

      if (v22 >= 0.0)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = -1.0;
      }

      v27 = (v22 + (v26 * sqrtf(v25))) * -0.5;
      v28 = v24 / v27;
      v58 = v27 / v23;
      v59 = v28;
      if (v28 < (v27 / v23))
      {
        v58 = v28;
        v59 = v27 / v23;
      }

      if (v25 <= 0.0)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }
    }

    v30 = 0;
    v31 = 0;
    do
    {
      v32 = *(&v58 + v30);
      if (v32 > 0.0 && v32 < 1.0)
      {
        v34 = v31++;
        *&v55[v34] = v32;
      }

      ++v30;
    }

    while (v29 != v30);
    if (v31)
    {
      v35 = v31;
      v51 = a2;
      v36 = *(&v51 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
      v52 = a3;
      v37 = *(&v52 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
      v53 = a4;
      v38 = *(&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
      v54 = a5;
      v39 = *(&v54 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
      v40 = v55;
      v41 = (&v49 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
      v42 = (&v50 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
      do
      {
        v43 = *v40++;
        v44 = (((v37 * ((1.0 - v43) * ((v43 * 3.0) * (1.0 - v43)))) + (((1.0 - v43) * ((1.0 - v43) * (1.0 - v43))) * v36)) + (((1.0 - v43) * (v43 * (v43 * 3.0))) * v38)) + ((v43 * (v43 * v43)) * v39);
        v50 = v6;
        v45 = *v42;
        if ((v44 - v9) < *v42)
        {
          v45 = v44 - v9;
        }

        *v42 = v45;
        v6 = v50;
        v49 = v7;
        v46 = *v41;
        v47 = v44 + v9;
        if (*v41 < v47)
        {
          v46 = v47;
        }

        *v41 = v46;
        v7 = v49;
        --v35;
      }

      while (v35);
      *result = v6;
      result[1] = v7;
    }

LABEL_30:
    v20 = 0;
    v19 = (&v56 | 0xC);
    v5 = 1;
  }

  while ((v21 & 1) != 0);
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

float64x2_t *geom::anonymous namespace::compute_tight_bbox_of_cubic_bezier_2<double>(float64x2_t *result, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5)
{
  v5 = 0;
  v6 = &v57;
  v61 = *MEMORY[0x277D85DE8];
  v7 = vminnmq_f64(a2, a5);
  v8 = vmaxnmq_f64(a2, a5);
  *result = v7;
  result[1] = v8;
  v9 = vsubq_f64(vmaxnmq_f64(vmaxnmq_f64(a3, v8), a4), vminnmq_f64(vminnmq_f64(a3, v7), a4));
  v10 = sqrt(vaddvq_f64(vmulq_f64(v9, v9))) * 0.000001;
  __asm { FMOV            V17.2D, #3.0 }

  v15 = vmulq_f64(vsubq_f64(a3, a2), _Q17);
  __asm
  {
    FMOV            V18.2D, #-2.0
    FMOV            V20.2D, #6.0
  }

  v18 = vmulq_f64(vaddq_f64(vmlaq_f64(a2, _Q18, a3), a4), _Q20);
  v19 = vmulq_f64(vmlaq_f64(vsubq_f64(a5, a2), _Q17, vsubq_f64(a3, a4)), _Q17);
  v57 = vzip1q_s64(v15, v18);
  v20 = vzip2q_s64(v18, v19);
  v19.i64[1] = v15.i64[1];
  v58[0] = v19;
  v58[1] = v20;
  v21 = 1;
  do
  {
    v22 = v21;
    v23 = v6[1];
    v24 = v6[2];
    v25 = *v6;
    if (fabs(v24) <= 0.000001)
    {
      if (fabs(v23) <= 0.000001)
      {
        goto LABEL_30;
      }

      v59 = -v25 / v23;
      v30 = 1;
    }

    else
    {
      v26 = v24 * -4.0 * v25 + v23 * v23;
      if (v26 < 0.0)
      {
        goto LABEL_30;
      }

      if (v23 >= 0.0)
      {
        v27 = 1.0;
      }

      else
      {
        v27 = -1.0;
      }

      v28 = (v23 + v27 * sqrt(v26)) * -0.5;
      v29 = v25 / v28;
      v59 = v28 / v24;
      v60 = v29;
      if (v29 < v28 / v24)
      {
        v59 = v29;
        v60 = v28 / v24;
      }

      if (v26 <= 0.0)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }
    }

    v31 = 0;
    v32 = 0;
    do
    {
      v33 = *(&v59 + v31);
      if (v33 > 0.0 && v33 < 1.0)
      {
        v35 = v32++;
        v56[v35] = v33;
      }

      ++v31;
    }

    while (v30 != v31);
    if (v32)
    {
      v36 = v32;
      v52 = a2;
      v37 = *(&v52 & 0xFFFFFFFFFFFFFFF7 | (8 * (v5 & 1)));
      v53 = a3;
      v38 = *(&v53 & 0xFFFFFFFFFFFFFFF7 | (8 * (v5 & 1)));
      v54 = a4;
      v39 = *(&v54 & 0xFFFFFFFFFFFFFFF7 | (8 * (v5 & 1)));
      v55 = a5;
      v40 = *(&v55 & 0xFFFFFFFFFFFFFFF7 | (8 * (v5 & 1)));
      v41 = v56;
      v42 = (&v50 & 0xFFFFFFFFFFFFFFF7 | (8 * (v5 & 1)));
      v43 = (&v51 & 0xFFFFFFFFFFFFFFF7 | (8 * (v5 & 1)));
      do
      {
        v44 = *v41++;
        v45 = v38 * ((1.0 - v44) * (v44 * 3.0 * (1.0 - v44))) + (1.0 - v44) * ((1.0 - v44) * (1.0 - v44)) * v37 + (1.0 - v44) * (v44 * (v44 * 3.0)) * v39 + v44 * (v44 * v44) * v40;
        v51 = v7;
        v46 = *v43;
        if (v45 - v10 < *v43)
        {
          v46 = v45 - v10;
        }

        *v43 = v46;
        v7 = v51;
        v50 = v8;
        v47 = *v42;
        v48 = v10 + v45;
        if (*v42 < v48)
        {
          v47 = v48;
        }

        *v42 = v47;
        v8 = v50;
        --v36;
      }

      while (v36);
      *result = v7;
      result[1] = v8;
    }

LABEL_30:
    v21 = 0;
    v6 = v58 + 1;
    v5 = 1;
  }

  while ((v22 & 1) != 0);
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

float32x2_t *geom::anonymous namespace::compute_oriented_bbox_of_cubic_bezier_2<float>(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t a5, float32x2_t a6, float32x2_t a7, float32x2_t a8)
{
  v12 = a5;
  v13 = vsub_f32(a8, a5);
  v14 = vmul_f32(v13, v13);
  v14.f32[0] = sqrtf(vaddv_f32(v14));
  v32 = vneg_f32(0x7F0000007FLL);
  v33 = 0x7F0000007FLL;
  if (fabsf(v14.f32[0]) <= 0.00000011921)
  {
    v16 = 0x3F80000000000000;
    v25 = 1065353216;
    v12 = 0;
  }

  else
  {
    v15 = vdup_lane_s32(v14, 0);
    v31 = vdiv_f32(v13, v15);
    v15.f32[0] = -v31.f32[1];
    v16 = vzip1_s32(v15, v31);
    v17 = vsub_f32(a6, v12);
    v18 = vmul_f32(v17, v31);
    v19 = vmul_f32(v17, v16);
    v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
    v21 = vsub_f32(a7, v12);
    v22 = vmul_f32(v21, v31);
    v23 = vmul_f32(v21, v16);
    v25 = v31;
  }

  v26 = v32;
  v27 = v33;
  v28 = vmul_f32(vadd_f32(v32, v33), 0x3F0000003F000000);
  *a1 = vadd_f32(v12, vmla_lane_f32(vmul_n_f32(v25, v28.f32[0]), v16, v28, 1));
  v29 = vmul_f32(vsub_f32(v27, v26), vdup_n_s32(0x3F0000A8u));
  *a4 = v29;
  if (vcgt_f32(vdup_lane_s32(v29, 1), v29).u8[0])
  {
    *a4 = vrev64_s32(v29);
    v30 = vneg_f32(v16);
    v16 = v25;
    v25 = v30;
  }

  *a2 = v25;
  *a3 = v16;
  return result;
}

float64x2_t *geom::anonymous namespace::compute_oriented_bbox_of_cubic_bezier_2<double>(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, int8x16_t *a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, float64x2_t a8)
{
  v13 = vsubq_f64(a8, a5);
  v14 = sqrt(vaddvq_f64(vmulq_f64(v13, v13)));
  v36 = vdupq_n_s64(0x7FF0000000000000uLL);
  v37 = vdupq_n_s64(0xFFF0000000000000);
  if (fabs(v14) <= 2.22044605e-16)
  {
    v21 = xmmword_2500C1660;
    v20 = xmmword_2500C1650;
    v22 = 0uLL;
  }

  else
  {
    v15 = vdupq_lane_s64(*&v14, 0);
    v16 = vdivq_f64(v13, v15);
    v15.f64[0] = -v16.f64[1];
    v33 = vzip1q_s64(v15, v16);
    v34 = v16;
    v17 = vsubq_f64(a6, a5);
    v18 = vsubq_f64(a7, a5);
    v35 = a5;
    v21 = v33;
    v20 = v34;
    v22 = v35;
  }

  v23 = v36;
  v24 = v37;
  __asm { FMOV            V3.2D, #0.5 }

  v30 = vmulq_f64(vaddq_f64(v36, v37), _Q3);
  *a1 = vaddq_f64(v22, vmlaq_laneq_f64(vmulq_n_f64(v20, v30.f64[0]), v21, v30, 1));
  v31 = vmulq_f64(vsubq_f64(v24, v23), vdupq_n_s64(0x3FE0000218DEF417uLL));
  *a4 = v31;
  if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v31, 1), v31)).u8[0])
  {
    *a4 = vextq_s8(v31, v31, 8uLL);
    v32 = vnegq_f64(v21);
    v21 = v20;
    v20 = v32;
  }

  *a2 = v20;
  *a3 = v21;
  return result;
}

double geom_oriented_bounding_box_matrix_of_cubic_bezier_2f(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  *v4.f32 = v13;
  v4.i32[2] = 0;
  *&result = vmulq_n_f32(v4, v11.f32[0]).u64[0];
  __asm { FMOV            V2.4S, #1.0 }

  return result;
}

float64_t geom_oriented_bounding_box_matrix_of_cubic_bezier_2d@<D0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>)
{
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v6 = v14;
  v7 = vmulq_f64(v14, 0);
  *a1 = vmulq_n_f64(v16, v14.f64[0]);
  *(a1 + 16) = v7;
  *(a1 + 32) = vmulq_laneq_f64(v15, v6, 1);
  *(a1 + 48) = vmulq_laneq_f64(0, v6, 1);
  result = v17.f64[0];
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 64) = v17;
  *(a1 + 80) = _Q1;
  return result;
}

uint64_t geom::anonymous namespace::solve_homogeneous_quadratic<float>(float *a1, float *a2, float32_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (fabsf(v4) > 0.00001)
  {
    v6 = ((v4 * -4.0) * v5) + (v3 * v3);
    if (v6 >= 0.0)
    {
      v7 = 1.0;
      if (v3 < 0.0)
      {
        v7 = -1.0;
      }

      v8 = (v3 + (v7 * sqrtf(v6))) * -0.5;
      v9 = v5 / v8;
      v25 = v8 / v4;
      v26 = v9;
      if (v9 < (v8 / v4))
      {
        v25 = v9;
        v26 = v8 / v4;
      }

      if (v6 <= 0.0)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      goto LABEL_12;
    }

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if (fabsf(v3) <= 0.00001)
  {
    goto LABEL_23;
  }

  v25 = -v5 / v3;
  v10 = 1;
LABEL_12:
  v11 = 0;
  v12 = &v25;
  do
  {
    v13.i32[0] = *v12;
    v13.f32[1] = a3;
    v14 = vmul_f32(v13, v13);
    v14.i32[0] = vadd_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
    v15 = vrsqrte_f32(v14.u32[0]);
    v16 = vmul_f32(v15, vrsqrts_f32(v14.u32[0], vmul_f32(v15, v15)));
    v17 = vmul_n_f32(v13, vmul_f32(v16, vrsqrts_f32(v14.u32[0], vmul_f32(v16, v16))).f32[0]);
    v18 = vdiv_f32(v17, vdup_lane_s32(v17, 1)).f32[0];
    if (v18 > 0.0 && v18 < 1.0)
    {
      v20 = v11++;
      a2[v20] = v18;
    }

    ++v12;
    --v10;
  }

  while (v10);
  if (v11 > 1u)
  {
    v21 = *a2;
    v22 = a2[1];
    if (*a2 > v22)
    {
      *a2 = v22;
      a2[1] = v21;
    }
  }

LABEL_24:
  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t geom::anonymous namespace::solve_homogeneous_quadratic<double>(double *a1, double *a2, float64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (fabs(v4) > 0.000001)
  {
    v6 = v4 * -4.0 * v5 + v3 * v3;
    if (v6 >= 0.0)
    {
      v7 = 1.0;
      if (v3 < 0.0)
      {
        v7 = -1.0;
      }

      v8 = (v3 + v7 * sqrt(v6)) * -0.5;
      v9 = v5 / v8;
      v22 = v8 / v4;
      v23 = v9;
      if (v9 < v8 / v4)
      {
        v22 = v9;
        v23 = v8 / v4;
      }

      if (v6 <= 0.0)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      goto LABEL_12;
    }

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if (fabs(v3) <= 0.000001)
  {
    goto LABEL_23;
  }

  v22 = -v5 / v3;
  v10 = 1;
LABEL_12:
  v11 = 0;
  v12 = &v22;
  do
  {
    v13.f64[0] = *v12;
    v13.f64[1] = a3;
    v14 = vmulq_n_f64(v13, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v13, v13))));
    v15 = vdivq_f64(v14, vdupq_laneq_s64(v14, 1)).f64[0];
    if (v15 > 0.0 && v15 < 1.0)
    {
      v17 = v11++;
      a2[v17] = v15;
    }

    ++v12;
    --v10;
  }

  while (v10);
  if (v11 > 1u)
  {
    v18 = *a2;
    v19 = a2[1];
    if (*a2 > v19)
    {
      *a2 = v19;
      a2[1] = v18;
    }
  }

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

void geom::anonymous namespace::cubic_bezier_fit_with_quadratics_recursively<float>(uint64_t a1, char a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6, float a7)
{
  __asm { FMOV            V1.2S, #3.0 }

  v30 = _D1;
  __asm { FMOV            V14.2S, #-3.0 }

  while (1)
  {
    v19 = vsub_f32(a4, a3);
    v20 = vadd_f32(vmla_f32(vmla_f32(vneg_f32(a3), v30, a4), _D14, a5), a6);
    v21 = vaddv_f32(vmul_f32(v20, v20)) * 0.00034294;
    if (a2 == 3)
    {
      v21 = 0.0;
    }

    if (v21 <= a7)
    {
      break;
    }

    v22 = vmla_f32(a3, 0x3F0000003F000000, v19);
    v23 = vsub_f32(a5, a4);
    a5 = vmla_f32(a5, 0x3F0000003F000000, vsub_f32(a6, a5));
    v24 = vmla_f32(a4, 0x3F0000003F000000, v23);
    v25 = vmla_f32(v22, 0x3F0000003F000000, vsub_f32(v24, v22));
    a4 = vmla_f32(v24, 0x3F0000003F000000, vsub_f32(a5, v24));
    v26 = vmla_f32(v25, 0x3F0000003F000000, vsub_f32(a4, v25));
    a3 = v26;
  }

  __asm { FMOV            V1.2S, #0.75 }

  v28 = vmla_f32(a6, _D1, vsub_f32(a5, a6));
  v32 = vmla_f32(a3, _D1, v19);
  v33 = a3;
  v29 = vmla_f32(vmul_f32(v28, 0x3F0000003F000000), 0x3F0000003F000000, v32);
  v31 = v29;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, &v33);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, &v32);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, &v31);
  v32 = v28;
  v33 = v29;
  v31 = a6;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, &v33);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, &v32);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, &v31);
}

void geom::anonymous namespace::cubic_bezier_fit_with_quadratics_recursively<double>(uint64_t a1, int a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, double a7)
{
  __asm { FMOV            V4.2D, #0.75 }

  v14 = vmlaq_f64(a3, _Q4, vsubq_f64(a4, a3));
  v15 = vmlaq_f64(a6, _Q4, vsubq_f64(a5, a6));
  __asm { FMOV            V4.2D, #0.5 }

  v17 = vmlaq_f64(vmulq_f64(v15, _Q4), _Q4, v14);
  __asm { FMOV            V6.2D, #3.0 }

  v19 = vmlaq_f64(vnegq_f64(a3), _Q6, a4);
  __asm { FMOV            V6.2D, #-3.0 }

  v21 = vaddq_f64(vmlaq_f64(v19, _Q6, a5), a6);
  v21.f64[0] = vaddvq_f64(vmulq_f64(v21, v21));
  v22 = v21.f64[0] * 0.000342935528;
  v23 = v21.f64[0] * 0.000342935528;
  if (a2 == 3)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v23;
  }

  if (a2 == 3)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 <= a7 && v24 <= a7;
  v29 = v15;
  v28 = v17;
  if (v26)
  {
    v32 = v14;
    v33 = a3;
    v31 = v17;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v33);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v32);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v31);
    v32 = v29;
    v33 = v28;
    v31 = a6;
  }

  else
  {
    v27 = a2;
    if (v25 <= a7)
    {
      v32 = v14;
      v33 = a3;
      v31 = v17;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v33);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v32);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v31);
    }

    else
    {
    }

    if (v24 > a7)
    {
      return;
    }

    v32 = v29;
    v33 = v28;
    v31 = a6;
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v33);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v32);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1, &v31);
}

uint64_t geom::anonymous namespace::intersect_quadratic_bezier_bidirectional_ray<float>(float *a1, float *a2, double a3, double _D1, double a5, float32x2_t a6, double a7)
{
  v71 = *MEMORY[0x277D85DE8];
  if (*&a7 != 0.0)
  {
    v16 = *(&a7 + 1);
    if (*(&a7 + 1) == 0.0)
    {
      v17 = vsub_f32(*&a3, a6);
      v18 = (*(&_D1 + 1) - *(&a3 + 1)) + (*(&_D1 + 1) - *(&a3 + 1));
      _S16 = -2.0;
      __asm { FMLA            S7, S16, V1.S[1] }

      v25 = _S7 + *(&a5 + 1);
      if (fabsf(_S7 + *(&a5 + 1)) <= 0.00001)
      {
        if (fabsf(v18) > 0.00001)
        {
          v69 = -v17.f32[1] / v18;
          v29 = 1;
LABEL_48:
          v52 = 0;
          v53 = &v69;
          do
          {
            v54 = *v53;
            if (*v53 >= 0.0 && v54 <= 1.0)
            {
              v56 = v52++;
              a1[v56] = v54;
            }

            ++v53;
            --v29;
          }

          while (v29);
          goto LABEL_67;
        }
      }

      else
      {
        v26 = (v17.f32[1] * (v25 * -4.0)) + (v18 * v18);
        if (v26 >= 0.0)
        {
          v27 = 1.0;
          if (v18 < 0.0)
          {
            v27 = -1.0;
          }

          v28 = (v18 + (v27 * sqrtf(v26))) * -0.5;
          v69 = v28 / v25;
          v70 = v17.f32[1] / v28;
          if ((v17.f32[1] / v28) < (v28 / v25))
          {
            v69 = v17.f32[1] / v28;
            v70 = v28 / v25;
          }

          v29 = 2;
          if (v26 <= 0.0)
          {
            v29 = 1;
          }

          goto LABEL_48;
        }
      }

LABEL_66:
      v52 = 0;
LABEL_67:
      v30 = v52;
      goto LABEL_68;
    }

    v35 = vsub_f32(*&a3, a6);
    v36 = vsub_f32(*&_D1, a6);
    v37 = vsub_f32(v36, v35);
    v38 = vadd_f32(v37, v37);
    v39 = vmla_f32(vadd_f32(v35, vsub_f32(*&a5, a6)), 0xC0000000C0000000, v36);
    v36.f32[0] = vmul_f32(*&a7, *&a7).f32[0];
    v40 = v36.f32[0] <= (*(&a7 + 1) * *(&a7 + 1));
    v41 = v36.f32[0] > (*(&a7 + 1) * *(&a7 + 1));
    if (v36.f32[0] <= (*(&a7 + 1) * *(&a7 + 1)))
    {
      v42 = *&a7;
    }

    else
    {
      v42 = *(&a7 + 1);
    }

    if (!v40)
    {
      v16 = *&a7;
    }

    v68 = v35;
    v43 = -v42 / v16;
    v44 = *(&v68 & 0xFFFFFFFFFFFFFFFBLL | (4 * v41)) + (v43 * *(&v68 & 0xFFFFFFFFFFFFFFFBLL | (4 * v40)));
    v67 = v38;
    v45 = *(&v67 & 0xFFFFFFFFFFFFFFFBLL | (4 * v41)) + (v43 * *(&v67 & 0xFFFFFFFFFFFFFFFBLL | (4 * v40)));
    v66 = v39;
    v46 = *(&v66 | (4 * v41)) + (v43 * *(&v66 | (4 * v40)));
    if (fabsf(v46) <= 0.00001)
    {
      if (fabsf(v45) <= 0.00001)
      {
        goto LABEL_66;
      }

      v69 = -v44 / v45;
      v51 = 1;
    }

    else
    {
      v47 = ((v46 * -4.0) * v44) + (v45 * v45);
      if (v47 < 0.0)
      {
        goto LABEL_66;
      }

      v48 = 1.0;
      if (v45 < 0.0)
      {
        v48 = -1.0;
      }

      v49 = (v45 + (v48 * sqrtf(v47))) * -0.5;
      v50 = v44 / v49;
      v69 = v49 / v46;
      v70 = v50;
      if (v50 < (v49 / v46))
      {
        v69 = v50;
        v70 = v49 / v46;
      }

      v51 = 2;
      if (v47 <= 0.0)
      {
        v51 = 1;
      }
    }

    v52 = 0;
    v57 = &v69;
    do
    {
      v58 = *v57;
      if (*v57 >= 0.0 && v58 <= 1.0)
      {
        v60 = v52++;
        a1[v60] = v58;
      }

      ++v57;
      --v51;
    }

    while (v51);
    goto LABEL_67;
  }

  LODWORD(v7) = vsub_f32(*&a3, a6).u32[0];
  v8 = vsub_f32(*&_D1, *&a3).f32[0];
  v9 = v8 + v8;
  v10 = (*&a3 + (*&_D1 * -2.0)) + *&a5;
  if (fabsf(v10) > 0.00001)
  {
    v11 = (v7 * (v10 * -4.0)) + (v9 * v9);
    if (v11 >= 0.0)
    {
      v12 = 1.0;
      if (v9 < 0.0)
      {
        v12 = -1.0;
      }

      v13 = (v9 + (v12 * sqrtf(v11))) * -0.5;
      v14 = v7 / v13;
      v69 = v13 / v10;
      v70 = v14;
      if (v14 < (v13 / v10))
      {
        v69 = v14;
        v70 = v13 / v10;
      }

      if (v11 <= 0.0)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      goto LABEL_23;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_68;
  }

  if (fabsf(v9) <= 0.00001)
  {
    goto LABEL_31;
  }

  v69 = -v7 / v9;
  v15 = 1;
LABEL_23:
  v30 = 0;
  v31 = &v69;
  do
  {
    v32 = *v31;
    if (*v31 >= 0.0 && v32 <= 1.0)
    {
      v34 = v30++;
      a1[v34] = v32;
    }

    ++v31;
    --v15;
  }

  while (v15);
LABEL_68:
  if (v30)
  {
    v61 = vaddv_f32(vmul_f32(*&a7, *&a7));
    if (v61 == 0.0)
    {
      v61 = 1.0;
    }

    v62 = v30;
    do
    {
      v63 = *a1++;
      *a2++ = vaddv_f32(vmul_f32(vsub_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(*&_D1, v63 * ((1.0 - v63) + (1.0 - v63))), *&a3, (1.0 - v63) * (1.0 - v63)), *&a5, v63 * v63), a6), *&a7)) / v61;
      --v62;
    }

    while (v62);
  }

  v64 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t geom::anonymous namespace::intersect_quadratic_bezier_bidirectional_ray<double>(double *a1, double *a2, float64x2_t a3, float64x2_t _Q1, float64x2_t a5, float64x2_t a6, float64x2_t a7)
{
  v72 = *MEMORY[0x277D85DE8];
  if (a7.f64[0] != 0.0)
  {
    v16 = a7.f64[1];
    if (a7.f64[1] == 0.0)
    {
      v17 = vsubq_f64(a3, a6);
      v18 = _Q1.f64[1] - a3.f64[1] + _Q1.f64[1] - a3.f64[1];
      _D16 = -2.0;
      __asm { FMLA            D7, D16, V1.D[1] }

      v25 = _D7 + a5.f64[1];
      if (fabs(_D7 + a5.f64[1]) <= 0.000001)
      {
        if (fabs(v18) > 0.000001)
        {
          v70 = -v17.f64[1] / v18;
          v29 = 1;
LABEL_48:
          v53 = 0;
          v54 = &v70;
          do
          {
            v55 = *v54;
            if (*v54 >= 0.0 && v55 <= 1.0)
            {
              v57 = v53++;
              a1[v57] = v55;
            }

            ++v54;
            --v29;
          }

          while (v29);
          goto LABEL_67;
        }
      }

      else
      {
        v26 = v17.f64[1] * (v25 * -4.0) + v18 * v18;
        if (v26 >= 0.0)
        {
          v27 = 1.0;
          if (v18 < 0.0)
          {
            v27 = -1.0;
          }

          v28 = (v18 + v27 * sqrt(v26)) * -0.5;
          v70 = v28 / v25;
          v71 = v17.f64[1] / v28;
          if (v17.f64[1] / v28 < v28 / v25)
          {
            v70 = v17.f64[1] / v28;
            v71 = v28 / v25;
          }

          v29 = 2;
          if (v26 <= 0.0)
          {
            v29 = 1;
          }

          goto LABEL_48;
        }
      }

LABEL_66:
      v53 = 0;
LABEL_67:
      v30 = v53;
      goto LABEL_68;
    }

    v35 = vsubq_f64(a3, a6);
    v36 = vsubq_f64(_Q1, a6);
    v37 = vsubq_f64(v36, v35);
    v38 = vaddq_f64(v37, v37);
    __asm { FMOV            V18.2D, #-2.0 }

    v40 = vmlaq_f64(vaddq_f64(v35, vsubq_f64(a5, a6)), _Q18, v36);
    v36.f64[0] = vmulq_f64(a7, a7).f64[0];
    v41 = v36.f64[0] <= a7.f64[1] * a7.f64[1];
    v42 = v36.f64[0] > a7.f64[1] * a7.f64[1];
    if (v36.f64[0] <= a7.f64[1] * a7.f64[1])
    {
      v43 = a7.f64[0];
    }

    else
    {
      v43 = a7.f64[1];
    }

    if (!v41)
    {
      v16 = a7.f64[0];
    }

    v69 = v35;
    v44 = -v43 / v16;
    v45 = *(&v69 & 0xFFFFFFFFFFFFFFF7 | (8 * v42)) + v44 * *(&v69 & 0xFFFFFFFFFFFFFFF7 | (8 * v41));
    v68 = v38;
    v46 = *(&v68 & 0xFFFFFFFFFFFFFFF7 | (8 * v42)) + v44 * *(&v68 & 0xFFFFFFFFFFFFFFF7 | (8 * v41));
    v67 = v40;
    v47 = *(&v67 | (8 * v42)) + v44 * *(&v67 | (8 * v41));
    if (fabs(v47) <= 0.000001)
    {
      if (fabs(v46) <= 0.000001)
      {
        goto LABEL_66;
      }

      v70 = -v45 / v46;
      v52 = 1;
    }

    else
    {
      v48 = v47 * -4.0 * v45 + v46 * v46;
      if (v48 < 0.0)
      {
        goto LABEL_66;
      }

      v49 = 1.0;
      if (v46 < 0.0)
      {
        v49 = -1.0;
      }

      v50 = (v46 + v49 * sqrt(v48)) * -0.5;
      v51 = v45 / v50;
      v70 = v50 / v47;
      v71 = v51;
      if (v51 < v50 / v47)
      {
        v70 = v51;
        v71 = v50 / v47;
      }

      v52 = 2;
      if (v48 <= 0.0)
      {
        v52 = 1;
      }
    }

    v53 = 0;
    v58 = &v70;
    do
    {
      v59 = *v58;
      if (*v58 >= 0.0 && v59 <= 1.0)
      {
        v61 = v53++;
        a1[v61] = v59;
      }

      ++v58;
      --v52;
    }

    while (v52);
    goto LABEL_67;
  }

  *&v7 = *&vsubq_f64(a3, a6);
  v8 = vsubq_f64(_Q1, a3).f64[0];
  v9 = v8 + v8;
  v10 = a3.f64[0] + _Q1.f64[0] * -2.0 + a5.f64[0];
  if (fabs(v10) > 0.000001)
  {
    v11 = v7 * (v10 * -4.0) + v9 * v9;
    if (v11 >= 0.0)
    {
      v12 = 1.0;
      if (v9 < 0.0)
      {
        v12 = -1.0;
      }

      v13 = (v9 + v12 * sqrt(v11)) * -0.5;
      v14 = v7 / v13;
      v70 = v13 / v10;
      v71 = v14;
      if (v14 < v13 / v10)
      {
        v70 = v14;
        v71 = v13 / v10;
      }

      if (v11 <= 0.0)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      goto LABEL_23;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_68;
  }

  if (fabs(v9) <= 0.000001)
  {
    goto LABEL_31;
  }

  v70 = -v7 / v9;
  v15 = 1;
LABEL_23:
  v30 = 0;
  v31 = &v70;
  do
  {
    v32 = *v31;
    if (*v31 >= 0.0 && v32 <= 1.0)
    {
      v34 = v30++;
      a1[v34] = v32;
    }

    ++v31;
    --v15;
  }

  while (v15);
LABEL_68:
  if (v30)
  {
    v62 = vaddvq_f64(vmulq_f64(a7, a7));
    if (v62 == 0.0)
    {
      v62 = 1.0;
    }

    v63 = v30;
    do
    {
      v64 = *a1++;
      *a2++ = vaddvq_f64(vmulq_f64(vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(_Q1, v64 * (1.0 - v64 + 1.0 - v64)), a3, (1.0 - v64) * (1.0 - v64)), a5, v64 * v64), a6), a7)) / v62;
      --v63;
    }

    while (v63);
  }

  v65 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t geom::anonymous namespace::intersect_cubic_bezier_bidirectional_ray<float>(float *a1, float *a2, float32x2_t a3, double _D1, float32x2_t a5, float32x2_t a6, float32x2_t a7, float32x2_t a8)
{
  v78 = *MEMORY[0x277D85DE8];
  v67 = _D1;
  if (a8.f32[0] == 0.0)
  {
    v74 = vsub_f32(a3, a7).u32[0];
    v12.i32[0] = vsub_f32(*&_D1, a3).u32[0];
    v12.f32[1] = (a3.f32[0] + (*&_D1 * -2.0)) + a5.f32[0];
    __asm { FMOV            V3.2S, #3.0 }

    v75 = vmul_f32(v12, _D3);
    v76 = vsub_f32(a6, a3).f32[0] + (vsub_f32(*&_D1, a5).f32[0] * 3.0);
    v18 = geom::cubic_roots<float>(&v74, v77);
    v19 = 0;
    if (v18)
    {
      v20 = v18;
      v21 = v77;
      v23 = a5;
      v22 = a8;
      v25 = a3;
      v24 = *&v67;
      do
      {
        v26 = *v21;
        if (*v21 >= 0.0 && v26 <= 1.0)
        {
          a1[v19++] = v26;
        }

        ++v21;
        --v20;
      }

      while (v20);
    }

    else
    {
      v23 = a5;
      v22 = a8;
      v25 = a3;
      v24 = *&v67;
    }

    goto LABEL_38;
  }

  if (a8.f32[1] == 0.0)
  {
    v74 = vsub_f32(a3, a7).i32[1];
    v28 = *(&_D1 + 1);
    v29.f32[0] = *(&_D1 + 1) - a3.f32[1];
    _S3 = -2.0;
    __asm { FMLA            S6, S3, V1.S[1] }

    v29.f32[1] = _S6 + a5.f32[1];
    __asm { FMOV            V1.2S, #3.0 }

    v75 = vmul_f32(v29, _D1);
    v76 = COERCE_FLOAT(vsub_f32(a6, a3).i32[1]) + ((v28 - a5.f32[1]) * 3.0);
    v33 = geom::cubic_roots<float>(&v74, v77);
    v19 = 0;
    if (v33)
    {
      v34 = v33;
      v35 = v77;
      v23 = a5;
      v22 = a8;
      v25 = a3;
      v24 = *&v67;
      do
      {
        v36 = *v35;
        if (*v35 >= 0.0 && v36 <= 1.0)
        {
          a1[v19++] = v36;
        }

        ++v35;
        --v34;
      }

      while (v34);
      goto LABEL_38;
    }

LABEL_37:
    v23 = a5;
    v22 = a8;
    v25 = a3;
    v24 = *&v67;
    goto LABEL_38;
  }

  v38 = vsub_f32(a3, a7);
  v39 = vsub_f32(*&_D1, a7);
  v40 = vsub_f32(a5, a7);
  __asm { FMOV            V6.2S, #3.0 }

  v42 = vmul_f32(vsub_f32(v39, v38), _D6);
  v43 = vsub_f32(vsub_f32(a6, a7), v38);
  v73 = v38;
  v44 = vmul_f32(vadd_f32(v40, vmla_f32(v38, 0xC0000000C0000000, v39)), _D6);
  v45 = vmla_f32(v43, _D6, vsub_f32(v39, v40));
  v39.f32[0] = vmul_f32(a8, a8).f32[0];
  v46 = v39.f32[0] <= (a8.f32[1] * a8.f32[1]);
  v47 = v39.f32[0] > (a8.f32[1] * a8.f32[1]);
  if (v39.f32[0] <= (a8.f32[1] * a8.f32[1]))
  {
    v48 = a8.f32[0];
  }

  else
  {
    v48 = a8.f32[1];
  }

  if (v46)
  {
    v49 = a8.f32[1];
  }

  else
  {
    v49 = a8.f32[0];
  }

  v50 = -v48 / v49;
  *&v51 = *(&v73 & 0xFFFFFFFFFFFFFFFBLL | (4 * v47)) + (v50 * *(&v73 & 0xFFFFFFFFFFFFFFFBLL | (4 * v46)));
  v72 = v42;
  *&v52 = *(&v72 & 0xFFFFFFFFFFFFFFFBLL | (4 * v47)) + (v50 * *(&v72 & 0xFFFFFFFFFFFFFFFBLL | (4 * v46)));
  v71 = v44;
  *&v53 = *(&v71 & 0xFFFFFFFFFFFFFFFBLL | (4 * v47)) + (v50 * *(&v71 & 0xFFFFFFFFFFFFFFFBLL | (4 * v46)));
  v70 = v45;
  v54 = *(&v70 | (4 * v47));
  v55 = *(&v70 | (4 * v46));
  v74 = v51;
  v75 = __PAIR64__(v53, v52);
  v76 = v54 + (v50 * v55);
  v56 = geom::cubic_roots<float>(&v74, v77);
  v19 = 0;
  if (!v56)
  {
    goto LABEL_37;
  }

  v57 = v56;
  v58 = v77;
  v23 = a5;
  v22 = a8;
  v25 = a3;
  v24 = *&v67;
  do
  {
    v59 = *v58;
    if (*v58 >= 0.0 && v59 <= 1.0)
    {
      a1[v19++] = v59;
    }

    ++v58;
    --v57;
  }

  while (v57);
LABEL_38:
  if (v19)
  {
    v61 = vaddv_f32(vmul_f32(v22, v22));
    if (v61 == 0.0)
    {
      v61 = 1.0;
    }

    v62 = v19;
    do
    {
      v63 = *a1++;
      *a2++ = vaddv_f32(vmul_f32(vsub_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v24, v63 * (((1.0 - v63) * (1.0 - v63)) * 3.0)), v25, (1.0 - v63) * ((1.0 - v63) * (1.0 - v63))), v23, (v63 * v63) * ((1.0 - v63) * 3.0)), a6, v63 * (v63 * v63)), a7), v22)) / v61;
      --v62;
    }

    while (v62);
  }

  v64 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t geom::anonymous namespace::intersect_cubic_bezier_bidirectional_ray<double>(double *a1, double *a2, float64x2_t a3, float64x2_t _Q1, float64x2_t a5, float64x2_t a6, float64x2_t a7, float64x2_t a8)
{
  v83[3] = *MEMORY[0x277D85DE8];
  v71 = _Q1;
  if (a8.f64[0] == 0.0)
  {
    *&v80 = *&vsubq_f64(a3, a7);
    *&v11.f64[0] = *&vsubq_f64(_Q1, a3);
    v11.f64[1] = a3.f64[0] + _Q1.f64[0] * -2.0 + a5.f64[0];
    __asm { FMOV            V3.2D, #3.0 }

    v81 = vmulq_f64(v11, _Q3);
    v82 = vsubq_f64(a6, a3).f64[0] + vsubq_f64(_Q1, a5).f64[0] * 3.0;
    v17 = geom::cubic_roots<double>(&v80, v83);
    v18 = 0;
    if (v17)
    {
      v19 = v17;
      v20 = v83;
      v22 = a7;
      v21 = a8;
      v24 = a5;
      v23 = a6;
      v26 = a3;
      v25 = v71;
      do
      {
        v27 = *v20;
        if (*v20 >= 0.0 && v27 <= 1.0)
        {
          a1[v18++] = v27;
        }

        ++v20;
        --v19;
      }

      while (v19);
      goto LABEL_38;
    }

LABEL_37:
    v22 = a7;
    v21 = a8;
    v24 = a5;
    v23 = a6;
    v26 = a3;
    v25 = v71;
    goto LABEL_38;
  }

  if (a8.f64[1] == 0.0)
  {
    v80 = vsubq_f64(a3, a7).f64[1];
    v29 = _Q1.f64[1];
    v30.f64[0] = _Q1.f64[1] - a3.f64[1];
    _D3 = -2.0;
    __asm { FMLA            D7, D3, V1.D[1] }

    v30.f64[1] = _D7 + a5.f64[1];
    __asm { FMOV            V1.2D, #3.0 }

    v81 = vmulq_f64(v30, _Q1);
    v82 = COERCE_DOUBLE(*&vsubq_f64(a6, a3).f64[1]) + (v29 - a5.f64[1]) * 3.0;
    v34 = geom::cubic_roots<double>(&v80, v83);
    v18 = 0;
    if (!v34)
    {
      goto LABEL_37;
    }

    v35 = v34;
    v36 = v83;
    v22 = a7;
    v21 = a8;
    v24 = a5;
    v23 = a6;
    v26 = a3;
    v25 = v71;
    do
    {
      v37 = *v36;
      if (*v36 >= 0.0 && v37 <= 1.0)
      {
        a1[v18++] = v37;
      }

      ++v36;
      --v35;
    }

    while (v35);
  }

  else
  {
    v39 = vsubq_f64(a3, a7);
    v40 = vsubq_f64(_Q1, a7);
    v41 = vsubq_f64(a5, a7);
    v42 = vsubq_f64(a6, a7);
    __asm { FMOV            V6.2D, #3.0 }

    v44 = vmulq_f64(vsubq_f64(v40, v39), _Q6);
    __asm { FMOV            V7.2D, #-2.0 }

    v46 = vsubq_f64(v42, v39);
    v79 = v39;
    v47 = vmulq_f64(vaddq_f64(v41, vmlaq_f64(v39, _Q7, v40)), _Q6);
    v48 = vmlaq_f64(v46, _Q6, vsubq_f64(v40, v41));
    v49 = vmulq_f64(a8, a8).f64[0];
    v50 = v49 <= a8.f64[1] * a8.f64[1];
    v51 = v49 > a8.f64[1] * a8.f64[1];
    if (v49 <= a8.f64[1] * a8.f64[1])
    {
      v52 = a8.f64[0];
    }

    else
    {
      v52 = a8.f64[1];
    }

    if (v50)
    {
      v53 = a8.f64[1];
    }

    else
    {
      v53 = a8.f64[0];
    }

    v54 = -v52 / v53;
    v55 = *(&v79 & 0xFFFFFFFFFFFFFFF7 | (8 * v51)) + v54 * *(&v79 & 0xFFFFFFFFFFFFFFF7 | (8 * v50));
    v78 = v44;
    v56 = *(&v78 & 0xFFFFFFFFFFFFFFF7 | (8 * v51)) + v54 * *(&v78 & 0xFFFFFFFFFFFFFFF7 | (8 * v50));
    v77 = v47;
    v57 = *(&v77 & 0xFFFFFFFFFFFFFFF7 | (8 * v51)) + v54 * *(&v77 & 0xFFFFFFFFFFFFFFF7 | (8 * v50));
    v76 = v48;
    v58 = *(&v76 | (8 * v51));
    v59 = *(&v76 | (8 * v50));
    v80 = v55;
    v81.f64[0] = v56;
    v81.f64[1] = v57;
    v82 = v58 + v54 * v59;
    v60 = geom::cubic_roots<double>(&v80, v83);
    v18 = 0;
    if (!v60)
    {
      goto LABEL_37;
    }

    v61 = v60;
    v62 = v83;
    v22 = a7;
    v21 = a8;
    v24 = a5;
    v23 = a6;
    v26 = a3;
    v25 = v71;
    do
    {
      v63 = *v62;
      if (*v62 >= 0.0 && v63 <= 1.0)
      {
        a1[v18++] = v63;
      }

      ++v62;
      --v61;
    }

    while (v61);
  }

LABEL_38:
  if (v18)
  {
    v65 = vaddvq_f64(vmulq_f64(v21, v21));
    if (v65 == 0.0)
    {
      v65 = 1.0;
    }

    v66 = v18;
    do
    {
      v67 = *a1++;
      *a2++ = vaddvq_f64(vmulq_f64(vsubq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v25, v67 * ((1.0 - v67) * (1.0 - v67) * 3.0)), v26, (1.0 - v67) * ((1.0 - v67) * (1.0 - v67))), v24, v67 * v67 * ((1.0 - v67) * 3.0)), v23, v67 * (v67 * v67)), v22), v21)) / v65;
      --v66;
    }

    while (v66);
  }

  v68 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t geom::half_plane_intersection_2<float>(std::vector<unsigned int>::size_type a1, uint64_t a2, void *a3)
{
  if (a1 < 3)
  {
    return 0;
  }

  memset(&v16, 0, sizeof(v16));
  geom::convex_hull_2<float>(a1, a2, &v16);
  a3[1] = *a3;
  begin = v16.__begin_;
  if (v16.__end_ == v16.__begin_)
  {
LABEL_7:
    v3 = 1;
    if (!begin)
    {
      return v3;
    }
  }

  else
  {
    v8 = 0;
    v9 = v16.__end_ - v16.__begin_;
    v10 = 1;
    while (1)
    {
      v11 = begin[v8];
      v8 = v10;
      v12 = *(a2 + 8 * v11);
      v13 = *(a2 + 8 * begin[v10 % v9]);
      *v6.i32 = (-*&v12.i32[1] * *v13.i32) + (*v12.i32 * *&v13.i32[1]);
      if (fabsf(*v6.i32) <= 0.00001)
      {
        break;
      }

      v15 = vdiv_f32(vsub_f32(vext_s8(v13, v12, 4uLL), vext_s8(v12, v13, 4uLL)), vdup_lane_s32(v6, 0));
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a3, &v15);
      begin = v16.__begin_;
      v9 = v16.__end_ - v16.__begin_;
      v10 = v8 + 1;
      if (v9 <= v8)
      {
        goto LABEL_7;
      }
    }

    v3 = 0;
  }

  v16.__end_ = begin;
  operator delete(begin);
  return v3;
}

void geom::convex_hull_2<float>(std::vector<unsigned int>::size_type __sz, uint64_t a2, std::vector<unsigned int> *this)
{
  v37 = a2;
  if (__sz > 2)
  {
    this->__end_ = this->__begin_;
    memset(&v36, 0, sizeof(v36));
    std::vector<float>::resize(&v36, __sz);
    begin = v36.__begin_;
    end = v36.__end_;
    if (v36.__begin_ != v36.__end_)
    {
      v17 = 0;
      v18 = (v36.__end_ - v36.__begin_ - 4) >> 2;
      v19 = vdupq_n_s64(v18);
      v20 = (v18 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v21 = v36.__begin_ + 2;
      do
      {
        v22 = vdupq_n_s64(v17);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_2500C1680)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v21 - 2) = v17;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v21 - 1) = v17 + 1;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_2500C1670)))).i32[1])
        {
          *v21 = v17 + 2;
          v21[1] = v17 + 3;
        }

        v17 += 4;
        v21 += 4;
      }

      while (v20 != v17);
    }

    v24 = 0;
    v25 = 0;
    do
    {
      LODWORD(v26) = HIDWORD(*(a2 + 8 * v24));
      LODWORD(v27) = HIDWORD(*(a2 + 8 * v25));
      v28 = (v26 == v27) & vcgt_f32(*(a2 + 8 * v25), *(a2 + 8 * v24)).u32[0];
      if (v26 < v27)
      {
        v28 = 1;
      }

      if (v28)
      {
        v25 = v24;
      }

      ++v24;
    }

    while (__sz > v24);
    v29 = 126 - 2 * __clz((end - (begin + 1)) >> 2);
    *begin = v25;
    begin[v25] = 0;
    v35 = *(a2 + 8 * *begin);
    v38[0] = &v37;
    v38[1] = &v35;
    if (end == (begin + 1))
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    std::__introsort<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>((begin + 1), end, v38, v30, 1);
    std::vector<float>::reserve(this, __sz);
    std::vector<unsigned int>::push_back[abi:nn200100](&this->__begin_, v36.__begin_);
    std::vector<unsigned int>::push_back[abi:nn200100](&this->__begin_, v36.__begin_ + 1);
    v31 = v36.__begin_;
    if ((v36.__end_ - v36.__begin_) >= 9)
    {
      v32 = 2;
      do
      {
        LODWORD(v38[0]) = v31[v32];
        v33 = this->__end_;
        if ((v33 - this->__begin_) >= 5)
        {
          do
          {
            if (_simd_orient_pf2(*(v37 + 8 * *(v33 - 2)), *(v37 + 8 * *(v33 - 1)), *(v37 + 8 * LODWORD(v38[0]))) > 0.0)
            {
              break;
            }

            v34 = this->__begin_;
            v33 = this->__end_ - 1;
            this->__end_ = v33;
          }

          while ((v33 - v34) > 4);
        }

        std::vector<unsigned int>::push_back[abi:nn200100](&this->__begin_, v38);
        ++v32;
        v31 = v36.__begin_;
      }

      while (v32 < v36.__end_ - v36.__begin_);
    }

    if (v31)
    {
      v36.__end_ = v31;
      operator delete(v31);
    }
  }

  else
  {
    std::vector<float>::resize(this, __sz);
    v6 = this->__begin_;
    v5 = this->__end_;
    if (this->__begin_ != v5)
    {
      v7 = 0;
      v8 = (v5 - v6 - 4) >> 2;
      v9 = vdupq_n_s64(v8);
      v10 = (v8 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v11 = v6 + 2;
      do
      {
        v12 = vdupq_n_s64(v7);
        v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_2500C1680)));
        if (vuzp1_s16(v13, *v9.i8).u8[0])
        {
          *(v11 - 2) = v7;
        }

        if (vuzp1_s16(v13, *&v9).i8[2])
        {
          *(v11 - 1) = v7 + 1;
        }

        if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_2500C1670)))).i32[1])
        {
          *v11 = v7 + 2;
          v11[1] = v7 + 3;
        }

        v7 += 4;
        v11 += 4;
      }

      while (v10 != v7);
    }
  }
}

uint64_t geom::half_plane_intersection_2<double>(std::vector<unsigned int>::size_type a1, uint64_t a2, void *a3)
{
  if (a1 < 3)
  {
    return 0;
  }

  memset(&v17, 0, sizeof(v17));
  geom::convex_hull_2<double>(a1, a2, &v17);
  a3[1] = *a3;
  begin = v17.__begin_;
  if (v17.__end_ == v17.__begin_)
  {
LABEL_7:
    v3 = 1;
    if (!begin)
    {
      return v3;
    }
  }

  else
  {
    v7 = 0;
    v8 = v17.__end_ - v17.__begin_;
    v9 = 1;
    while (1)
    {
      v10 = begin[v7];
      v7 = v9;
      v11 = begin[v9 % v8];
      v12 = *(a2 + 16 * v10);
      v13 = *(a2 + 16 * v11);
      v14 = -*(a2 + 16 * v10 + 8) * *v13.i64 + *v12.i64 * *(a2 + 16 * v11 + 8);
      if (fabs(v14) <= 0.000001)
      {
        break;
      }

      v16 = vdivq_f64(vsubq_f64(vextq_s8(v13, v12, 8uLL), vextq_s8(v12, v13, 8uLL)), vdupq_lane_s64(*&v14, 0));
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, &v16);
      begin = v17.__begin_;
      v8 = v17.__end_ - v17.__begin_;
      v9 = v7 + 1;
      if (v8 <= v7)
      {
        goto LABEL_7;
      }
    }

    v3 = 0;
  }

  v17.__end_ = begin;
  operator delete(begin);
  return v3;
}

void geom::convex_hull_2<double>(std::vector<unsigned int>::size_type __sz, uint64_t a2, std::vector<unsigned int> *this)
{
  v38 = a2;
  if (__sz > 2)
  {
    this->__end_ = this->__begin_;
    memset(&v37, 0, sizeof(v37));
    std::vector<float>::resize(&v37, __sz);
    begin = v37.__begin_;
    end = v37.__end_;
    if (v37.__begin_ != v37.__end_)
    {
      v17 = 0;
      v18 = (v37.__end_ - v37.__begin_ - 4) >> 2;
      v19 = vdupq_n_s64(v18);
      v20 = (v18 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v21 = v37.__begin_ + 2;
      do
      {
        v22 = vdupq_n_s64(v17);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_2500C1680)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v21 - 2) = v17;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v21 - 1) = v17 + 1;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_2500C1670)))).i32[1])
        {
          *v21 = v17 + 2;
          v21[1] = v17 + 3;
        }

        v17 += 4;
        v21 += 4;
      }

      while (v20 != v17);
    }

    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(a2 + 16 * v24 + 8);
      v27 = *(a2 + 16 * v25 + 8);
      v28 = (v26 == v27) & vmovn_s64(vcgtq_f64(*(a2 + 16 * v25), *(a2 + 16 * v24))).u32[0];
      if (v26 < v27)
      {
        v28 = 1;
      }

      if (v28)
      {
        v25 = v24;
      }

      ++v24;
    }

    while (__sz > v24);
    v29 = 126 - 2 * __clz((end - (begin + 1)) >> 2);
    *begin = v25;
    begin[v25] = 0;
    v30 = *(a2 + 16 * *begin);
    v36 = v30;
    v39[0] = &v38;
    v39[1] = &v36;
    if (end == (begin + 1))
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }

    std::__introsort<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>((begin + 1), end, v39, v31, 1, *&v30);
    std::vector<float>::reserve(this, __sz);
    std::vector<unsigned int>::push_back[abi:nn200100](&this->__begin_, v37.__begin_);
    std::vector<unsigned int>::push_back[abi:nn200100](&this->__begin_, v37.__begin_ + 1);
    v32 = v37.__begin_;
    if ((v37.__end_ - v37.__begin_) >= 9)
    {
      v33 = 2;
      do
      {
        LODWORD(v39[0]) = v32[v33];
        v34 = this->__end_;
        if ((v34 - this->__begin_) >= 5)
        {
          do
          {
            if (_simd_orient_pd2(*(v38 + 16 * *(v34 - 2)), *(v38 + 16 * *(v34 - 1)), *(v38 + 16 * LODWORD(v39[0]))) > 0.0)
            {
              break;
            }

            v35 = this->__begin_;
            v34 = this->__end_ - 1;
            this->__end_ = v34;
          }

          while ((v34 - v35) > 4);
        }

        std::vector<unsigned int>::push_back[abi:nn200100](&this->__begin_, v39);
        ++v33;
        v32 = v37.__begin_;
      }

      while (v33 < v37.__end_ - v37.__begin_);
    }

    if (v32)
    {
      v37.__end_ = v32;
      operator delete(v32);
    }
  }

  else
  {
    std::vector<float>::resize(this, __sz);
    v6 = this->__begin_;
    v5 = this->__end_;
    if (this->__begin_ != v5)
    {
      v7 = 0;
      v8 = (v5 - v6 - 4) >> 2;
      v9 = vdupq_n_s64(v8);
      v10 = (v8 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v11 = v6 + 2;
      do
      {
        v12 = vdupq_n_s64(v7);
        v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_2500C1680)));
        if (vuzp1_s16(v13, *v9.i8).u8[0])
        {
          *(v11 - 2) = v7;
        }

        if (vuzp1_s16(v13, *&v9).i8[2])
        {
          *(v11 - 1) = v7 + 1;
        }

        if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_2500C1670)))).i32[1])
        {
          *v11 = v7 + 2;
          v11[1] = v7 + 3;
        }

        v7 += 4;
        v11 += 4;
      }

      while (v10 != v7);
    }
  }
}

__n64 geom::dop<(unsigned char)6,float>::dop(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  result.n64_u32[1] = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 2139095039;
  *(a1 + 16) = -8388609;
  if (a3)
  {
    v4 = 3.4028e38;
    v5 = -3.4028e38;
    v6 = a2;
    v7 = a3;
    do
    {
      v9 = vmulq_f32(*v6, xmmword_2500C1620);
      v8 = vaddv_f32(*v9.f32);
      v9.f32[0] = v9.f32[2] + v8;
      if ((v9.f32[2] + v8) < v4)
      {
        *a1 = v9.i32[0];
        v4 = v9.f32[2] + v8;
      }

      if (v9.f32[0] > v5)
      {
        *(a1 + 16) = v9.i32[0];
        v5 = v9.f32[2] + v8;
      }

      ++v6;
      --v7;
    }

    while (v7);
    *(a1 + 4) = 2139095039;
    *(a1 + 20) = -8388609;
    v10 = 3.4028e38;
    v11 = -3.4028e38;
    v12 = a2;
    v13 = a3;
    do
    {
      v15 = vmulq_f32(*v12, xmmword_2500C1630);
      v14 = vaddv_f32(*v15.f32);
      v15.f32[0] = v15.f32[2] + v14;
      if ((v15.f32[2] + v14) < v10)
      {
        *(a1 + 4) = v15.i32[0];
        v10 = v15.f32[2] + v14;
      }

      if (v15.f32[0] > v11)
      {
        *(a1 + 20) = v15.i32[0];
        v11 = v15.f32[2] + v14;
      }

      ++v12;
      --v13;
    }

    while (v13);
    *(a1 + 8) = 2139095039;
    *(a1 + 24) = -8388609;
    result.n64_u32[0] = 2139095039;
    v16 = -3.4028e38;
    do
    {
      v18 = vmulq_f32(*a2, xmmword_2500C2810);
      v17 = vaddv_f32(*v18.f32);
      v18.f32[0] = v18.f32[2] + v17;
      if ((v18.f32[2] + v17) < result.n64_f32[0])
      {
        *(a1 + 8) = v18.i32[0];
        result.n64_f32[0] = v18.f32[2] + v17;
      }

      if (v18.f32[0] > v16)
      {
        *(a1 + 24) = v18.i32[0];
        v16 = v18.f32[2] + v17;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result.n64_u64[0] = 0x80000000800000;
    *(a1 + 4) = vneg_f32(0x80000000800000);
    *(a1 + 20) = 0x80000000800000;
  }

  return result;
}

double geom::dop<(unsigned char)8,float>::dop(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *a1 = 2139095039;
  *(a1 + 16) = -8388609;
  if (a3)
  {
    v3 = 3.4028e38;
    v4 = -3.4028e38;
    v5 = vdupq_n_s32(0x3F13CD3Au);
    v6 = a2;
    v7 = a3;
    do
    {
      v9 = vmulq_f32(*v6, v5);
      v8 = vaddv_f32(*v9.f32);
      v9.f32[0] = v9.f32[2] + v8;
      if ((v9.f32[2] + v8) < v3)
      {
        *a1 = v9.i32[0];
        v3 = v9.f32[2] + v8;
      }

      if (v9.f32[0] > v4)
      {
        *(a1 + 16) = v9.i32[0];
        v4 = v9.f32[2] + v8;
      }

      ++v6;
      --v7;
    }

    while (v7);
    *(a1 + 4) = 2139095039;
    *(a1 + 20) = -8388609;
    v10 = 3.4028e38;
    v11 = -3.4028e38;
    v12 = a2;
    v13 = a3;
    do
    {
      v15 = vmulq_f32(*v12, xmmword_2500CAC30);
      v14 = vaddv_f32(*v15.f32);
      v15.f32[0] = v15.f32[2] + v14;
      if ((v15.f32[2] + v14) < v10)
      {
        *(a1 + 4) = v15.i32[0];
        v10 = v15.f32[2] + v14;
      }

      if (v15.f32[0] > v11)
      {
        *(a1 + 20) = v15.i32[0];
        v11 = v15.f32[2] + v14;
      }

      ++v12;
      --v13;
    }

    while (v13);
    *(a1 + 8) = 2139095039;
    *(a1 + 24) = -8388609;
    v16 = 3.4028e38;
    v17 = -3.4028e38;
    v18 = a2;
    v19 = a3;
    do
    {
      v21 = vmulq_f32(*v18, xmmword_2500CAC40);
      v20 = vaddv_f32(*v21.f32);
      v21.f32[0] = v21.f32[2] + v20;
      if ((v21.f32[2] + v20) < v16)
      {
        *(a1 + 8) = v21.i32[0];
        v16 = v21.f32[2] + v20;
      }

      if (v21.f32[0] > v17)
      {
        *(a1 + 24) = v21.i32[0];
        v17 = v21.f32[2] + v20;
      }

      ++v18;
      --v19;
    }

    while (v19);
    *(a1 + 12) = 2139095039;
    *(a1 + 28) = -8388609;
    LODWORD(result) = 2139095039;
    v23 = -3.4028e38;
    do
    {
      v25 = vmulq_f32(*a2, xmmword_2500CAC50);
      v24 = vaddv_f32(*v25.f32);
      v25.f32[0] = v25.f32[2] + v24;
      if ((v25.f32[2] + v24) < *&result)
      {
        *(a1 + 12) = v25.i32[0];
        *&result = v25.f32[2] + v24;
      }

      if (v25.f32[0] > v23)
      {
        *(a1 + 28) = v25.i32[0];
        v23 = v25.f32[2] + v24;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result = 2.84809454e-306;
    *(a1 + 4) = vneg_f32(0x80000000800000);
    *(a1 + 20) = 0x80000000800000;
    *(a1 + 12) = 2139095039;
    *(a1 + 28) = -8388609;
  }

  return result;
}

float32x4_t geom::dop<(unsigned char)12,float>::dop(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = 2139095039;
  *(a1 + 32) = -8388609;
  if (a3)
  {
    v3 = 3.4028e38;
    v4 = -3.4028e38;
    v5 = a2;
    v6 = a3;
    do
    {
      v8 = vmulq_f32(*v5, xmmword_2500CAC60);
      v7 = vaddv_f32(*v8.f32);
      v8.f32[0] = v8.f32[2] + v7;
      if ((v8.f32[2] + v7) < v3)
      {
        *a1 = v8.i32[0];
        v3 = v8.f32[2] + v7;
      }

      if (v8.f32[0] > v4)
      {
        *(a1 + 32) = v8.i32[0];
        v4 = v8.f32[2] + v7;
      }

      ++v5;
      --v6;
    }

    while (v6);
    *(a1 + 4) = 2139095039;
    *(a1 + 36) = -8388609;
    v9 = 3.4028e38;
    v10 = -3.4028e38;
    v11 = a2;
    v12 = a3;
    do
    {
      v14 = vmulq_f32(*v11, xmmword_2500CAC70);
      v13 = vaddv_f32(*v14.f32);
      v14.f32[0] = v14.f32[2] + v13;
      if ((v14.f32[2] + v13) < v9)
      {
        *(a1 + 4) = v14.i32[0];
        v9 = v14.f32[2] + v13;
      }

      if (v14.f32[0] > v10)
      {
        *(a1 + 36) = v14.i32[0];
        v10 = v14.f32[2] + v13;
      }

      ++v11;
      --v12;
    }

    while (v12);
    *(a1 + 8) = 2139095039;
    *(a1 + 40) = -8388609;
    v15 = 3.4028e38;
    v16 = -3.4028e38;
    v17 = a2;
    v18 = a3;
    do
    {
      v20 = vmulq_f32(*v17, xmmword_2500CAC80);
      v19 = vaddv_f32(*v20.f32);
      v20.f32[0] = v20.f32[2] + v19;
      if ((v20.f32[2] + v19) < v15)
      {
        *(a1 + 8) = v20.i32[0];
        v15 = v20.f32[2] + v19;
      }

      if (v20.f32[0] > v16)
      {
        *(a1 + 40) = v20.i32[0];
        v16 = v20.f32[2] + v19;
      }

      ++v17;
      --v18;
    }

    while (v18);
    *(a1 + 12) = 2139095039;
    *(a1 + 44) = -8388609;
    v21 = 3.4028e38;
    v22 = -3.4028e38;
    v23 = a2;
    v24 = a3;
    do
    {
      v26 = vmulq_f32(*v23, xmmword_2500CAC90);
      v25 = vaddv_f32(*v26.f32);
      v26.f32[0] = v26.f32[2] + v25;
      if ((v26.f32[2] + v25) < v21)
      {
        *(a1 + 12) = v26.i32[0];
        v21 = v26.f32[2] + v25;
      }

      if (v26.f32[0] > v22)
      {
        *(a1 + 44) = v26.i32[0];
        v22 = v26.f32[2] + v25;
      }

      ++v23;
      --v24;
    }

    while (v24);
    *(a1 + 16) = 2139095039;
    *(a1 + 48) = -8388609;
    v27 = 3.4028e38;
    v28 = -3.4028e38;
    v29 = a2;
    v30 = a3;
    do
    {
      v32 = vmulq_f32(*v29, xmmword_2500CACA0);
      v31 = vaddv_f32(*v32.f32);
      v32.f32[0] = v32.f32[2] + v31;
      if ((v32.f32[2] + v31) < v27)
      {
        *(a1 + 16) = v32.i32[0];
        v27 = v32.f32[2] + v31;
      }

      if (v32.f32[0] > v28)
      {
        *(a1 + 48) = v32.i32[0];
        v28 = v32.f32[2] + v31;
      }

      ++v29;
      --v30;
    }

    while (v30);
    *(a1 + 20) = 2139095039;
    *(a1 + 52) = -8388609;
    result.i32[0] = 2139095039;
    v34 = -3.4028e38;
    do
    {
      v36 = vmulq_f32(*a2, xmmword_2500CACB0);
      v35 = vaddv_f32(*v36.f32);
      v36.f32[0] = v36.f32[2] + v35;
      if ((v36.f32[2] + v35) < result.f32[0])
      {
        *(a1 + 20) = v36.i32[0];
        result.f32[0] = v36.f32[2] + v35;
      }

      if (v36.f32[0] > v34)
      {
        *(a1 + 52) = v36.i32[0];
        v34 = v36.f32[2] + v35;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    *(a1 + 4) = vnegq_f32(result);
    *(a1 + 36) = result;
    *(a1 + 20) = 2139095039;
    *(a1 + 52) = -8388609;
  }

  return result;
}

float32x4_t geom::dop<(unsigned char)14,float>::dop(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = 2139095039;
  *(a1 + 32) = -8388609;
  if (a3)
  {
    v3 = 3.4028e38;
    v4 = -3.4028e38;
    v5 = a2;
    v6 = a3;
    do
    {
      v8 = vmulq_f32(*v5, xmmword_2500C1620);
      v7 = vaddv_f32(*v8.f32);
      v8.f32[0] = v8.f32[2] + v7;
      if ((v8.f32[2] + v7) < v3)
      {
        *a1 = v8.i32[0];
        v3 = v8.f32[2] + v7;
      }

      if (v8.f32[0] > v4)
      {
        *(a1 + 32) = v8.i32[0];
        v4 = v8.f32[2] + v7;
      }

      ++v5;
      --v6;
    }

    while (v6);
    *(a1 + 4) = 2139095039;
    *(a1 + 36) = -8388609;
    v9 = 3.4028e38;
    v10 = -3.4028e38;
    v11 = a2;
    v12 = a3;
    do
    {
      v14 = vmulq_f32(*v11, xmmword_2500C1630);
      v13 = vaddv_f32(*v14.f32);
      v14.f32[0] = v14.f32[2] + v13;
      if ((v14.f32[2] + v13) < v9)
      {
        *(a1 + 4) = v14.i32[0];
        v9 = v14.f32[2] + v13;
      }

      if (v14.f32[0] > v10)
      {
        *(a1 + 36) = v14.i32[0];
        v10 = v14.f32[2] + v13;
      }

      ++v11;
      --v12;
    }

    while (v12);
    *(a1 + 8) = 2139095039;
    *(a1 + 40) = -8388609;
    v15 = 3.4028e38;
    v16 = -3.4028e38;
    v17 = a2;
    v18 = a3;
    do
    {
      v20 = vmulq_f32(*v17, xmmword_2500C2810);
      v19 = vaddv_f32(*v20.f32);
      v20.f32[0] = v20.f32[2] + v19;
      if ((v20.f32[2] + v19) < v15)
      {
        *(a1 + 8) = v20.i32[0];
        v15 = v20.f32[2] + v19;
      }

      if (v20.f32[0] > v16)
      {
        *(a1 + 40) = v20.i32[0];
        v16 = v20.f32[2] + v19;
      }

      ++v17;
      --v18;
    }

    while (v18);
    *(a1 + 12) = 2139095039;
    *(a1 + 44) = -8388609;
    v21 = 3.4028e38;
    v22 = -3.4028e38;
    v23 = vdupq_n_s32(0x3F13CD3Au);
    v24 = a2;
    v25 = a3;
    do
    {
      v27 = vmulq_f32(*v24, v23);
      v26 = vaddv_f32(*v27.f32);
      v27.f32[0] = v27.f32[2] + v26;
      if ((v27.f32[2] + v26) < v21)
      {
        *(a1 + 12) = v27.i32[0];
        v21 = v27.f32[2] + v26;
      }

      if (v27.f32[0] > v22)
      {
        *(a1 + 44) = v27.i32[0];
        v22 = v27.f32[2] + v26;
      }

      ++v24;
      --v25;
    }

    while (v25);
    *(a1 + 16) = 2139095039;
    *(a1 + 48) = -8388609;
    v28 = 3.4028e38;
    v29 = -3.4028e38;
    v30 = a2;
    v31 = a3;
    do
    {
      v33 = vmulq_f32(*v30, xmmword_2500CAC30);
      v32 = vaddv_f32(*v33.f32);
      v33.f32[0] = v33.f32[2] + v32;
      if ((v33.f32[2] + v32) < v28)
      {
        *(a1 + 16) = v33.i32[0];
        v28 = v33.f32[2] + v32;
      }

      if (v33.f32[0] > v29)
      {
        *(a1 + 48) = v33.i32[0];
        v29 = v33.f32[2] + v32;
      }

      ++v30;
      --v31;
    }

    while (v31);
    *(a1 + 20) = 2139095039;
    *(a1 + 52) = -8388609;
    v34 = 3.4028e38;
    v35 = -3.4028e38;
    v36 = a2;
    v37 = a3;
    do
    {
      v39 = vmulq_f32(*v36, xmmword_2500CAC40);
      v38 = vaddv_f32(*v39.f32);
      v39.f32[0] = v39.f32[2] + v38;
      if ((v39.f32[2] + v38) < v34)
      {
        *(a1 + 20) = v39.i32[0];
        v34 = v39.f32[2] + v38;
      }

      if (v39.f32[0] > v35)
      {
        *(a1 + 52) = v39.i32[0];
        v35 = v39.f32[2] + v38;
      }

      ++v36;
      --v37;
    }

    while (v37);
    *(a1 + 24) = 2139095039;
    *(a1 + 56) = -8388609;
    result.i32[0] = 2139095039;
    v41 = -3.4028e38;
    do
    {
      v43 = vmulq_f32(*a2, xmmword_2500CAC50);
      v42 = vaddv_f32(*v43.f32);
      v43.f32[0] = v43.f32[2] + v42;
      if ((v43.f32[2] + v42) < result.f32[0])
      {
        *(a1 + 24) = v43.i32[0];
        result.f32[0] = v43.f32[2] + v42;
      }

      if (v43.f32[0] > v41)
      {
        *(a1 + 56) = v43.i32[0];
        v41 = v43.f32[2] + v42;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    *(a1 + 4) = vnegq_f32(result);
    *(a1 + 36) = result;
    *(a1 + 20) = vneg_f32(0x80000000800000);
    *(a1 + 52) = 0x80000000800000;
  }

  return result;
}

float32x4_t geom::dop<(unsigned char)18,float>::dop(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  result.i32[1] = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = 2139095039;
  *(a1 + 48) = -8388609;
  if (a3)
  {
    v4 = 3.4028e38;
    v5 = -3.4028e38;
    v6 = a2;
    v7 = a3;
    do
    {
      v9 = vmulq_f32(*v6, xmmword_2500C1620);
      v8 = vaddv_f32(*v9.f32);
      v9.f32[0] = v9.f32[2] + v8;
      if ((v9.f32[2] + v8) < v4)
      {
        *a1 = v9.i32[0];
        v4 = v9.f32[2] + v8;
      }

      if (v9.f32[0] > v5)
      {
        *(a1 + 48) = v9.i32[0];
        v5 = v9.f32[2] + v8;
      }

      ++v6;
      --v7;
    }

    while (v7);
    *(a1 + 4) = 2139095039;
    *(a1 + 52) = -8388609;
    v10 = 3.4028e38;
    v11 = -3.4028e38;
    v12 = a2;
    v13 = a3;
    do
    {
      v15 = vmulq_f32(*v12, xmmword_2500C1630);
      v14 = vaddv_f32(*v15.f32);
      v15.f32[0] = v15.f32[2] + v14;
      if ((v15.f32[2] + v14) < v10)
      {
        *(a1 + 4) = v15.i32[0];
        v10 = v15.f32[2] + v14;
      }

      if (v15.f32[0] > v11)
      {
        *(a1 + 52) = v15.i32[0];
        v11 = v15.f32[2] + v14;
      }

      ++v12;
      --v13;
    }

    while (v13);
    *(a1 + 8) = 2139095039;
    *(a1 + 56) = -8388609;
    v16 = 3.4028e38;
    v17 = -3.4028e38;
    v18 = a2;
    v19 = a3;
    do
    {
      v21 = vmulq_f32(*v18, xmmword_2500C2810);
      v20 = vaddv_f32(*v21.f32);
      v21.f32[0] = v21.f32[2] + v20;
      if ((v21.f32[2] + v20) < v16)
      {
        *(a1 + 8) = v21.i32[0];
        v16 = v21.f32[2] + v20;
      }

      if (v21.f32[0] > v17)
      {
        *(a1 + 56) = v21.i32[0];
        v17 = v21.f32[2] + v20;
      }

      ++v18;
      --v19;
    }

    while (v19);
    *(a1 + 12) = 2139095039;
    *(a1 + 60) = -8388609;
    v22 = 3.4028e38;
    v23 = -3.4028e38;
    v24 = a2;
    v25 = a3;
    do
    {
      v27 = vmulq_f32(*v24, xmmword_2500CAC60);
      v26 = vaddv_f32(*v27.f32);
      v27.f32[0] = v27.f32[2] + v26;
      if ((v27.f32[2] + v26) < v22)
      {
        *(a1 + 12) = v27.i32[0];
        v22 = v27.f32[2] + v26;
      }

      if (v27.f32[0] > v23)
      {
        *(a1 + 60) = v27.i32[0];
        v23 = v27.f32[2] + v26;
      }

      ++v24;
      --v25;
    }

    while (v25);
    *(a1 + 16) = 2139095039;
    *(a1 + 64) = -8388609;
    v28 = 3.4028e38;
    v29 = -3.4028e38;
    v30 = a2;
    v31 = a3;
    do
    {
      v33 = vmulq_f32(*v30, xmmword_2500CAC70);
      v32 = vaddv_f32(*v33.f32);
      v33.f32[0] = v33.f32[2] + v32;
      if ((v33.f32[2] + v32) < v28)
      {
        *(a1 + 16) = v33.i32[0];
        v28 = v33.f32[2] + v32;
      }

      if (v33.f32[0] > v29)
      {
        *(a1 + 64) = v33.i32[0];
        v29 = v33.f32[2] + v32;
      }

      ++v30;
      --v31;
    }

    while (v31);
    *(a1 + 20) = 2139095039;
    *(a1 + 68) = -8388609;
    v34 = 3.4028e38;
    v35 = -3.4028e38;
    v36 = a2;
    v37 = a3;
    do
    {
      v39 = vmulq_f32(*v36, xmmword_2500CAC80);
      v38 = vaddv_f32(*v39.f32);
      v39.f32[0] = v39.f32[2] + v38;
      if ((v39.f32[2] + v38) < v34)
      {
        *(a1 + 20) = v39.i32[0];
        v34 = v39.f32[2] + v38;
      }

      if (v39.f32[0] > v35)
      {
        *(a1 + 68) = v39.i32[0];
        v35 = v39.f32[2] + v38;
      }

      ++v36;
      --v37;
    }

    while (v37);
    *(a1 + 24) = 2139095039;
    *(a1 + 72) = -8388609;
    v40 = 3.4028e38;
    v41 = -3.4028e38;
    v42 = a2;
    v43 = a3;
    do
    {
      v45 = vmulq_f32(*v42, xmmword_2500CAC90);
      v44 = vaddv_f32(*v45.f32);
      v45.f32[0] = v45.f32[2] + v44;
      if ((v45.f32[2] + v44) < v40)
      {
        *(a1 + 24) = v45.i32[0];
        v40 = v45.f32[2] + v44;
      }

      if (v45.f32[0] > v41)
      {
        *(a1 + 72) = v45.i32[0];
        v41 = v45.f32[2] + v44;
      }

      ++v42;
      --v43;
    }

    while (v43);
    *(a1 + 28) = 2139095039;
    *(a1 + 76) = -8388609;
    v46 = 3.4028e38;
    v47 = -3.4028e38;
    v48 = a2;
    v49 = a3;
    do
    {
      v51 = vmulq_f32(*v48, xmmword_2500CACA0);
      v50 = vaddv_f32(*v51.f32);
      v51.f32[0] = v51.f32[2] + v50;
      if ((v51.f32[2] + v50) < v46)
      {
        *(a1 + 28) = v51.i32[0];
        v46 = v51.f32[2] + v50;
      }

      if (v51.f32[0] > v47)
      {
        *(a1 + 76) = v51.i32[0];
        v47 = v51.f32[2] + v50;
      }

      ++v48;
      --v49;
    }

    while (v49);
    *(a1 + 32) = 2139095039;
    *(a1 + 80) = -8388609;
    result.i32[0] = 2139095039;
    v52 = -3.4028e38;
    do
    {
      v54 = vmulq_f32(*a2, xmmword_2500CACB0);
      v53 = vaddv_f32(*v54.f32);
      v54.f32[0] = v54.f32[2] + v53;
      if ((v54.f32[2] + v53) < result.f32[0])
      {
        *(a1 + 32) = v54.i32[0];
        result.f32[0] = v54.f32[2] + v53;
      }

      if (v54.f32[0] > v52)
      {
        *(a1 + 80) = v54.i32[0];
        v52 = v54.f32[2] + v53;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    v55 = vnegq_f32(result);
    *(a1 + 4) = v55;
    *(a1 + 52) = result;
    *(a1 + 20) = v55;
    *(a1 + 68) = result;
  }

  return result;
}

float32x4_t geom::dop<(unsigned char)20,float>::dop(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  result.i32[1] = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = 2139095039;
  *(a1 + 48) = -8388609;
  if (a3)
  {
    v4 = 3.4028e38;
    v5 = -3.4028e38;
    v6 = vdupq_n_s32(0x3F13CD3Au);
    v7 = a2;
    v8 = a3;
    do
    {
      v10 = vmulq_f32(*v7, v6);
      v9 = vaddv_f32(*v10.f32);
      v10.f32[0] = v10.f32[2] + v9;
      if ((v10.f32[2] + v9) < v4)
      {
        *a1 = v10.i32[0];
        v4 = v10.f32[2] + v9;
      }

      if (v10.f32[0] > v5)
      {
        *(a1 + 48) = v10.i32[0];
        v5 = v10.f32[2] + v9;
      }

      ++v7;
      --v8;
    }

    while (v8);
    *(a1 + 4) = 2139095039;
    *(a1 + 52) = -8388609;
    v11 = 3.4028e38;
    v12 = -3.4028e38;
    v13 = a2;
    v14 = a3;
    do
    {
      v16 = vmulq_f32(*v13, xmmword_2500CAC30);
      v15 = vaddv_f32(*v16.f32);
      v16.f32[0] = v16.f32[2] + v15;
      if ((v16.f32[2] + v15) < v11)
      {
        *(a1 + 4) = v16.i32[0];
        v11 = v16.f32[2] + v15;
      }

      if (v16.f32[0] > v12)
      {
        *(a1 + 52) = v16.i32[0];
        v12 = v16.f32[2] + v15;
      }

      ++v13;
      --v14;
    }

    while (v14);
    *(a1 + 8) = 2139095039;
    *(a1 + 56) = -8388609;
    v17 = 3.4028e38;
    v18 = -3.4028e38;
    v19 = a2;
    v20 = a3;
    do
    {
      v22 = vmulq_f32(*v19, xmmword_2500CAC40);
      v21 = vaddv_f32(*v22.f32);
      v22.f32[0] = v22.f32[2] + v21;
      if ((v22.f32[2] + v21) < v17)
      {
        *(a1 + 8) = v22.i32[0];
        v17 = v22.f32[2] + v21;
      }

      if (v22.f32[0] > v18)
      {
        *(a1 + 56) = v22.i32[0];
        v18 = v22.f32[2] + v21;
      }

      ++v19;
      --v20;
    }

    while (v20);
    *(a1 + 12) = 2139095039;
    *(a1 + 60) = -8388609;
    v23 = 3.4028e38;
    v24 = -3.4028e38;
    v25 = a2;
    v26 = a3;
    do
    {
      v28 = vmulq_f32(*v25, xmmword_2500CAC50);
      v27 = vaddv_f32(*v28.f32);
      v28.f32[0] = v28.f32[2] + v27;
      if ((v28.f32[2] + v27) < v23)
      {
        *(a1 + 12) = v28.i32[0];
        v23 = v28.f32[2] + v27;
      }

      if (v28.f32[0] > v24)
      {
        *(a1 + 60) = v28.i32[0];
        v24 = v28.f32[2] + v27;
      }

      ++v25;
      --v26;
    }

    while (v26);
    *(a1 + 16) = 2139095039;
    *(a1 + 64) = -8388609;
    v29 = 3.4028e38;
    v30 = -3.4028e38;
    v31 = a2;
    v32 = a3;
    do
    {
      v34 = vmulq_f32(*v31, xmmword_2500CAC60);
      v33 = vaddv_f32(*v34.f32);
      v34.f32[0] = v34.f32[2] + v33;
      if ((v34.f32[2] + v33) < v29)
      {
        *(a1 + 16) = v34.i32[0];
        v29 = v34.f32[2] + v33;
      }

      if (v34.f32[0] > v30)
      {
        *(a1 + 64) = v34.i32[0];
        v30 = v34.f32[2] + v33;
      }

      ++v31;
      --v32;
    }

    while (v32);
    *(a1 + 20) = 2139095039;
    *(a1 + 68) = -8388609;
    v35 = 3.4028e38;
    v36 = -3.4028e38;
    v37 = a2;
    v38 = a3;
    do
    {
      v40 = vmulq_f32(*v37, xmmword_2500CAC70);
      v39 = vaddv_f32(*v40.f32);
      v40.f32[0] = v40.f32[2] + v39;
      if ((v40.f32[2] + v39) < v35)
      {
        *(a1 + 20) = v40.i32[0];
        v35 = v40.f32[2] + v39;
      }

      if (v40.f32[0] > v36)
      {
        *(a1 + 68) = v40.i32[0];
        v36 = v40.f32[2] + v39;
      }

      ++v37;
      --v38;
    }

    while (v38);
    *(a1 + 24) = 2139095039;
    *(a1 + 72) = -8388609;
    v41 = 3.4028e38;
    v42 = -3.4028e38;
    v43 = a2;
    v44 = a3;
    do
    {
      v46 = vmulq_f32(*v43, xmmword_2500CAC80);
      v45 = vaddv_f32(*v46.f32);
      v46.f32[0] = v46.f32[2] + v45;
      if ((v46.f32[2] + v45) < v41)
      {
        *(a1 + 24) = v46.i32[0];
        v41 = v46.f32[2] + v45;
      }

      if (v46.f32[0] > v42)
      {
        *(a1 + 72) = v46.i32[0];
        v42 = v46.f32[2] + v45;
      }

      ++v43;
      --v44;
    }

    while (v44);
    *(a1 + 28) = 2139095039;
    *(a1 + 76) = -8388609;
    v47 = 3.4028e38;
    v48 = -3.4028e38;
    v49 = a2;
    v50 = a3;
    do
    {
      v52 = vmulq_f32(*v49, xmmword_2500CAC90);
      v51 = vaddv_f32(*v52.f32);
      v52.f32[0] = v52.f32[2] + v51;
      if ((v52.f32[2] + v51) < v47)
      {
        *(a1 + 28) = v52.i32[0];
        v47 = v52.f32[2] + v51;
      }

      if (v52.f32[0] > v48)
      {
        *(a1 + 76) = v52.i32[0];
        v48 = v52.f32[2] + v51;
      }

      ++v49;
      --v50;
    }

    while (v50);
    *(a1 + 32) = 2139095039;
    *(a1 + 80) = -8388609;
    v53 = 3.4028e38;
    v54 = -3.4028e38;
    v55 = a2;
    v56 = a3;
    do
    {
      v58 = vmulq_f32(*v55, xmmword_2500CACA0);
      v57 = vaddv_f32(*v58.f32);
      v58.f32[0] = v58.f32[2] + v57;
      if ((v58.f32[2] + v57) < v53)
      {
        *(a1 + 32) = v58.i32[0];
        v53 = v58.f32[2] + v57;
      }

      if (v58.f32[0] > v54)
      {
        *(a1 + 80) = v58.i32[0];
        v54 = v58.f32[2] + v57;
      }

      ++v55;
      --v56;
    }

    while (v56);
    *(a1 + 36) = 2139095039;
    *(a1 + 84) = -8388609;
    result.i32[0] = 2139095039;
    v59 = -3.4028e38;
    do
    {
      v61 = vmulq_f32(*a2, xmmword_2500CACB0);
      v60 = vaddv_f32(*v61.f32);
      v61.f32[0] = v61.f32[2] + v60;
      if ((v61.f32[2] + v60) < result.f32[0])
      {
        *(a1 + 36) = v61.i32[0];
        result.f32[0] = v61.f32[2] + v60;
      }

      if (v61.f32[0] > v59)
      {
        *(a1 + 84) = v61.i32[0];
        v59 = v61.f32[2] + v60;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    v62 = vnegq_f32(result);
    *(a1 + 4) = v62;
    *(a1 + 52) = result;
    *(a1 + 20) = v62;
    *(a1 + 68) = result;
    *(a1 + 36) = 2139095039;
    *(a1 + 84) = -8388609;
  }

  return result;
}

float32x4_t geom::dop<(unsigned char)26,float>::dop(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  result.i32[1] = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *a1 = 2139095039;
  *(a1 + 64) = -8388609;
  if (a3)
  {
    v4 = 3.4028e38;
    v5 = -3.4028e38;
    v6 = a2;
    v7 = a3;
    do
    {
      v9 = vmulq_f32(*v6, xmmword_2500C1620);
      v8 = vaddv_f32(*v9.f32);
      v9.f32[0] = v9.f32[2] + v8;
      if ((v9.f32[2] + v8) < v4)
      {
        *a1 = v9.i32[0];
        v4 = v9.f32[2] + v8;
      }

      if (v9.f32[0] > v5)
      {
        *(a1 + 64) = v9.i32[0];
        v5 = v9.f32[2] + v8;
      }

      ++v6;
      --v7;
    }

    while (v7);
    *(a1 + 4) = 2139095039;
    *(a1 + 68) = -8388609;
    v10 = 3.4028e38;
    v11 = -3.4028e38;
    v12 = a2;
    v13 = a3;
    do
    {
      v15 = vmulq_f32(*v12, xmmword_2500C1630);
      v14 = vaddv_f32(*v15.f32);
      v15.f32[0] = v15.f32[2] + v14;
      if ((v15.f32[2] + v14) < v10)
      {
        *(a1 + 4) = v15.i32[0];
        v10 = v15.f32[2] + v14;
      }

      if (v15.f32[0] > v11)
      {
        *(a1 + 68) = v15.i32[0];
        v11 = v15.f32[2] + v14;
      }

      ++v12;
      --v13;
    }

    while (v13);
    *(a1 + 8) = 2139095039;
    *(a1 + 72) = -8388609;
    v16 = 3.4028e38;
    v17 = -3.4028e38;
    v18 = a2;
    v19 = a3;
    do
    {
      v21 = vmulq_f32(*v18, xmmword_2500C2810);
      v20 = vaddv_f32(*v21.f32);
      v21.f32[0] = v21.f32[2] + v20;
      if ((v21.f32[2] + v20) < v16)
      {
        *(a1 + 8) = v21.i32[0];
        v16 = v21.f32[2] + v20;
      }

      if (v21.f32[0] > v17)
      {
        *(a1 + 72) = v21.i32[0];
        v17 = v21.f32[2] + v20;
      }

      ++v18;
      --v19;
    }

    while (v19);
    *(a1 + 12) = 2139095039;
    *(a1 + 76) = -8388609;
    v22 = 3.4028e38;
    v23 = -3.4028e38;
    v24 = vdupq_n_s32(0x3F13CD3Au);
    v25 = a2;
    v26 = a3;
    do
    {
      v28 = vmulq_f32(*v25, v24);
      v27 = vaddv_f32(*v28.f32);
      v28.f32[0] = v28.f32[2] + v27;
      if ((v28.f32[2] + v27) < v22)
      {
        *(a1 + 12) = v28.i32[0];
        v22 = v28.f32[2] + v27;
      }

      if (v28.f32[0] > v23)
      {
        *(a1 + 76) = v28.i32[0];
        v23 = v28.f32[2] + v27;
      }

      ++v25;
      --v26;
    }

    while (v26);
    *(a1 + 16) = 2139095039;
    *(a1 + 80) = -8388609;
    v29 = 3.4028e38;
    v30 = -3.4028e38;
    v31 = a2;
    v32 = a3;
    do
    {
      v34 = vmulq_f32(*v31, xmmword_2500CAC30);
      v33 = vaddv_f32(*v34.f32);
      v34.f32[0] = v34.f32[2] + v33;
      if ((v34.f32[2] + v33) < v29)
      {
        *(a1 + 16) = v34.i32[0];
        v29 = v34.f32[2] + v33;
      }

      if (v34.f32[0] > v30)
      {
        *(a1 + 80) = v34.i32[0];
        v30 = v34.f32[2] + v33;
      }

      ++v31;
      --v32;
    }

    while (v32);
    *(a1 + 20) = 2139095039;
    *(a1 + 84) = -8388609;
    v35 = 3.4028e38;
    v36 = -3.4028e38;
    v37 = a2;
    v38 = a3;
    do
    {
      v40 = vmulq_f32(*v37, xmmword_2500CAC40);
      v39 = vaddv_f32(*v40.f32);
      v40.f32[0] = v40.f32[2] + v39;
      if ((v40.f32[2] + v39) < v35)
      {
        *(a1 + 20) = v40.i32[0];
        v35 = v40.f32[2] + v39;
      }

      if (v40.f32[0] > v36)
      {
        *(a1 + 84) = v40.i32[0];
        v36 = v40.f32[2] + v39;
      }

      ++v37;
      --v38;
    }

    while (v38);
    *(a1 + 24) = 2139095039;
    *(a1 + 88) = -8388609;
    v41 = 3.4028e38;
    v42 = -3.4028e38;
    v43 = a2;
    v44 = a3;
    do
    {
      v46 = vmulq_f32(*v43, xmmword_2500CAC50);
      v45 = vaddv_f32(*v46.f32);
      v46.f32[0] = v46.f32[2] + v45;
      if ((v46.f32[2] + v45) < v41)
      {
        *(a1 + 24) = v46.i32[0];
        v41 = v46.f32[2] + v45;
      }

      if (v46.f32[0] > v42)
      {
        *(a1 + 88) = v46.i32[0];
        v42 = v46.f32[2] + v45;
      }

      ++v43;
      --v44;
    }

    while (v44);
    *(a1 + 28) = 2139095039;
    *(a1 + 92) = -8388609;
    v47 = 3.4028e38;
    v48 = -3.4028e38;
    v49 = a2;
    v50 = a3;
    do
    {
      v52 = vmulq_f32(*v49, xmmword_2500CAC60);
      v51 = vaddv_f32(*v52.f32);
      v52.f32[0] = v52.f32[2] + v51;
      if ((v52.f32[2] + v51) < v47)
      {
        *(a1 + 28) = v52.i32[0];
        v47 = v52.f32[2] + v51;
      }

      if (v52.f32[0] > v48)
      {
        *(a1 + 92) = v52.i32[0];
        v48 = v52.f32[2] + v51;
      }

      ++v49;
      --v50;
    }

    while (v50);
    *(a1 + 32) = 2139095039;
    *(a1 + 96) = -8388609;
    v53 = 3.4028e38;
    v54 = -3.4028e38;
    v55 = a2;
    v56 = a3;
    do
    {
      v58 = vmulq_f32(*v55, xmmword_2500CAC70);
      v57 = vaddv_f32(*v58.f32);
      v58.f32[0] = v58.f32[2] + v57;
      if ((v58.f32[2] + v57) < v53)
      {
        *(a1 + 32) = v58.i32[0];
        v53 = v58.f32[2] + v57;
      }

      if (v58.f32[0] > v54)
      {
        *(a1 + 96) = v58.i32[0];
        v54 = v58.f32[2] + v57;
      }

      ++v55;
      --v56;
    }

    while (v56);
    *(a1 + 36) = 2139095039;
    *(a1 + 100) = -8388609;
    v59 = 3.4028e38;
    v60 = -3.4028e38;
    v61 = a2;
    v62 = a3;
    do
    {
      v64 = vmulq_f32(*v61, xmmword_2500CAC80);
      v63 = vaddv_f32(*v64.f32);
      v64.f32[0] = v64.f32[2] + v63;
      if ((v64.f32[2] + v63) < v59)
      {
        *(a1 + 36) = v64.i32[0];
        v59 = v64.f32[2] + v63;
      }

      if (v64.f32[0] > v60)
      {
        *(a1 + 100) = v64.i32[0];
        v60 = v64.f32[2] + v63;
      }

      ++v61;
      --v62;
    }

    while (v62);
    *(a1 + 40) = 2139095039;
    *(a1 + 104) = -8388609;
    v65 = 3.4028e38;
    v66 = -3.4028e38;
    v67 = a2;
    v68 = a3;
    do
    {
      v70 = vmulq_f32(*v67, xmmword_2500CAC90);
      v69 = vaddv_f32(*v70.f32);
      v70.f32[0] = v70.f32[2] + v69;
      if ((v70.f32[2] + v69) < v65)
      {
        *(a1 + 40) = v70.i32[0];
        v65 = v70.f32[2] + v69;
      }

      if (v70.f32[0] > v66)
      {
        *(a1 + 104) = v70.i32[0];
        v66 = v70.f32[2] + v69;
      }

      ++v67;
      --v68;
    }

    while (v68);
    *(a1 + 44) = 2139095039;
    *(a1 + 108) = -8388609;
    v71 = 3.4028e38;
    v72 = -3.4028e38;
    v73 = a2;
    v74 = a3;
    do
    {
      v76 = vmulq_f32(*v73, xmmword_2500CACA0);
      v75 = vaddv_f32(*v76.f32);
      v76.f32[0] = v76.f32[2] + v75;
      if ((v76.f32[2] + v75) < v71)
      {
        *(a1 + 44) = v76.i32[0];
        v71 = v76.f32[2] + v75;
      }

      if (v76.f32[0] > v72)
      {
        *(a1 + 108) = v76.i32[0];
        v72 = v76.f32[2] + v75;
      }

      ++v73;
      --v74;
    }

    while (v74);
    *(a1 + 48) = 2139095039;
    *(a1 + 112) = -8388609;
    result.i32[0] = 2139095039;
    v77 = -3.4028e38;
    do
    {
      v79 = vmulq_f32(*a2, xmmword_2500CACB0);
      v78 = vaddv_f32(*v79.f32);
      v79.f32[0] = v79.f32[2] + v78;
      if ((v79.f32[2] + v78) < result.f32[0])
      {
        *(a1 + 48) = v79.i32[0];
        result.f32[0] = v79.f32[2] + v78;
      }

      if (v79.f32[0] > v77)
      {
        *(a1 + 112) = v79.i32[0];
        v77 = v79.f32[2] + v78;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    v80 = vnegq_f32(result);
    *(a1 + 4) = v80;
    *(a1 + 68) = result;
    *(a1 + 20) = v80;
    *(a1 + 84) = result;
    *(a1 + 36) = v80;
    *(a1 + 100) = result;
  }

  return result;
}

int64x2_t geom::dop<(unsigned char)6,double>::dop(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  result = 0uLL;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 32) = 0xFFEFFFFFFFFFFFFFLL;
  if (a3)
  {
    v4 = 1.79769313e308;
    v5 = -1.79769313e308;
    v6 = a2;
    v7 = a3;
    do
    {
      v8 = vmulq_f64(v6[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v6, xmmword_2500C1650));
      if (v8 < v4)
      {
        *a1 = v8;
        v4 = v8;
      }

      if (v8 > v5)
      {
        *(a1 + 32) = v8;
        v5 = v8;
      }

      v6 += 2;
      --v7;
    }

    while (v7);
    *(a1 + 8) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 40) = 0xFFEFFFFFFFFFFFFFLL;
    v9 = 1.79769313e308;
    v10 = -1.79769313e308;
    v11 = a2;
    v12 = a3;
    do
    {
      v13 = vmulq_f64(v11[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v11, xmmword_2500C1660));
      if (v13 < v9)
      {
        *(a1 + 8) = v13;
        v9 = v13;
      }

      if (v13 > v10)
      {
        *(a1 + 40) = v13;
        v10 = v13;
      }

      v11 += 2;
      --v12;
    }

    while (v12);
    *(a1 + 16) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 48) = 0xFFEFFFFFFFFFFFFFLL;
    result.i64[0] = 0x7FEFFFFFFFFFFFFFLL;
    v14 = -1.79769313e308;
    do
    {
      v15 = a2[1].f64[0] + vaddvq_f64(vmulq_f64(*a2, 0));
      if (v15 < *result.i64)
      {
        *(a1 + 16) = v15;
        *result.i64 = v15;
      }

      if (v15 > v14)
      {
        *(a1 + 48) = v15;
        v14 = v15;
      }

      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    *(a1 + 8) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    result = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a1 + 40) = result;
  }

  return result;
}

float64x2_t geom::dop<(unsigned char)8,double>::dop(uint64_t a1, float64x2_t *a2, uint64_t a3, double a4, float64x2_t a5, double a6, float64x2_t a7)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 32) = 0xFFEFFFFFFFFFFFFFLL;
  if (a3)
  {
    v7 = 1.79769313e308;
    v8 = -1.79769313e308;
    a5.f64[0] = 0.577350269;
    result = vdupq_n_s64(0x3FE279A74590331CuLL);
    v10 = a2;
    v11 = a3;
    do
    {
      v12 = vmulq_f64(v10[1], a5).f64[0] + vaddvq_f64(vmulq_f64(*v10, result));
      if (v12 < v7)
      {
        *a1 = v12;
        v7 = v12;
      }

      if (v12 > v8)
      {
        *(a1 + 32) = v12;
        v8 = v12;
      }

      v10 += 2;
      --v11;
    }

    while (v11);
    *(a1 + 8) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 40) = 0xFFEFFFFFFFFFFFFFLL;
    v13 = 1.79769313e308;
    v14 = -1.79769313e308;
    v15 = a2;
    v16 = a3;
    do
    {
      v17 = vmulq_f64(v15[1], a5).f64[0] + vaddvq_f64(vmulq_f64(*v15, xmmword_2500CACC0));
      if (v17 < v13)
      {
        *(a1 + 8) = v17;
        v13 = v17;
      }

      if (v17 > v14)
      {
        *(a1 + 40) = v17;
        v14 = v17;
      }

      v15 += 2;
      --v16;
    }

    while (v16);
    *(a1 + 16) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 48) = 0xFFEFFFFFFFFFFFFFLL;
    v18 = 1.79769313e308;
    v19 = -1.79769313e308;
    v20 = a2;
    v21 = a3;
    do
    {
      v22 = vmulq_f64(v20[1], a5).f64[0] + vaddvq_f64(vmulq_f64(*v20, xmmword_2500CACD0));
      if (v22 < v18)
      {
        *(a1 + 16) = v22;
        v18 = v22;
      }

      if (v22 > v19)
      {
        *(a1 + 48) = v22;
        v19 = v22;
      }

      v20 += 2;
      --v21;
    }

    while (v21);
    *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 56) = 0xFFEFFFFFFFFFFFFFLL;
    v23 = 1.79769313e308;
    v24 = -1.79769313e308;
    a7.f64[0] = -0.577350269;
    do
    {
      v25 = vmulq_f64(a2[1], a7).f64[0] + vaddvq_f64(vmulq_f64(*a2, result));
      if (v25 < v23)
      {
        *(a1 + 24) = v25;
        v23 = v25;
      }

      if (v25 > v24)
      {
        *(a1 + 56) = v25;
        v24 = v25;
      }

      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    *(a1 + 8) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    result = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a1 + 40) = result;
    *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 56) = 0xFFEFFFFFFFFFFFFFLL;
  }

  return result;
}

float64x2_t geom::dop<(unsigned char)12,double>::dop(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  result = 0uLL;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 48) = 0xFFEFFFFFFFFFFFFFLL;
  if (a3)
  {
    v4 = 1.79769313e308;
    v5 = -1.79769313e308;
    v6 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = vmulq_f64(v7[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v7, v6));
      if (v9 < v4)
      {
        *a1 = v9;
        v4 = v9;
      }

      if (v9 > v5)
      {
        *(a1 + 48) = v9;
        v5 = v9;
      }

      v7 += 2;
      --v8;
    }

    while (v8);
    *(a1 + 8) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 56) = 0xFFEFFFFFFFFFFFFFLL;
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
    result.f64[0] = 0.707106781;
    v12 = a2;
    v13 = a3;
    do
    {
      v14 = vmulq_f64(v12[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v12, xmmword_2500CACE0));
      if (v14 < v10)
      {
        *(a1 + 8) = v14;
        v10 = v14;
      }

      if (v14 > v11)
      {
        *(a1 + 56) = v14;
        v11 = v14;
      }

      v12 += 2;
      --v13;
    }

    while (v13);
    *(a1 + 16) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 64) = 0xFFEFFFFFFFFFFFFFLL;
    v15 = 1.79769313e308;
    v16 = -1.79769313e308;
    v17 = a2;
    v18 = a3;
    do
    {
      v19 = vmulq_f64(v17[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v17, xmmword_2500CACF0));
      if (v19 < v15)
      {
        *(a1 + 16) = v19;
        v15 = v19;
      }

      if (v19 > v16)
      {
        *(a1 + 64) = v19;
        v16 = v19;
      }

      v17 += 2;
      --v18;
    }

    while (v18);
    *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 72) = 0xFFEFFFFFFFFFFFFFLL;
    v20 = 1.79769313e308;
    v21 = -1.79769313e308;
    v22 = a2;
    v23 = a3;
    do
    {
      v24 = vmulq_f64(v22[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v22, xmmword_2500CAD00));
      if (v24 < v20)
      {
        *(a1 + 24) = v24;
        v20 = v24;
      }

      if (v24 > v21)
      {
        *(a1 + 72) = v24;
        v21 = v24;
      }

      v22 += 2;
      --v23;
    }

    while (v23);
    *(a1 + 32) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 80) = 0xFFEFFFFFFFFFFFFFLL;
    v25 = 1.79769313e308;
    v26 = -1.79769313e308;
    v27 = a2;
    v28 = a3;
    do
    {
      v29 = vmulq_f64(v27[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v27, xmmword_2500CAD10));
      if (v29 < v25)
      {
        *(a1 + 32) = v29;
        v25 = v29;
      }

      if (v29 > v26)
      {
        *(a1 + 80) = v29;
        v26 = v29;
      }

      v27 += 2;
      --v28;
    }

    while (v28);
    *(a1 + 40) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 88) = 0xFFEFFFFFFFFFFFFFLL;
    v30 = 1.79769313e308;
    v31 = -1.79769313e308;
    do
    {
      v32 = vmulq_f64(a2[1], result).f64[0] + vaddvq_f64(vmulq_f64(*a2, xmmword_2500CAD20));
      if (v32 < v30)
      {
        *(a1 + 40) = v32;
        v30 = v32;
      }

      if (v32 > v31)
      {
        *(a1 + 88) = v32;
        v31 = v32;
      }

      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v33 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a1 + 8) = result;
    *(a1 + 56) = v33;
    *(a1 + 24) = result;
    *(a1 + 72) = v33;
    *(a1 + 40) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 88) = 0xFFEFFFFFFFFFFFFFLL;
  }

  return result;
}

float64x2_t geom::dop<(unsigned char)14,double>::dop(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *a1 = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 64) = 0xFFEFFFFFFFFFFFFFLL;
  if (a3)
  {
    v3 = 1.79769313e308;
    v4 = -1.79769313e308;
    v5 = a2;
    v6 = a3;
    do
    {
      v7 = vmulq_f64(v5[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v5, xmmword_2500C1650));
      if (v7 < v3)
      {
        *a1 = v7;
        v3 = v7;
      }

      if (v7 > v4)
      {
        *(a1 + 64) = v7;
        v4 = v7;
      }

      v5 += 2;
      --v6;
    }

    while (v6);
    *(a1 + 8) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 72) = 0xFFEFFFFFFFFFFFFFLL;
    v8 = 1.79769313e308;
    v9 = -1.79769313e308;
    v10 = a2;
    v11 = a3;
    do
    {
      v12 = vmulq_f64(v10[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v10, xmmword_2500C1660));
      if (v12 < v8)
      {
        *(a1 + 8) = v12;
        v8 = v12;
      }

      if (v12 > v9)
      {
        *(a1 + 72) = v12;
        v9 = v12;
      }

      v10 += 2;
      --v11;
    }

    while (v11);
    *(a1 + 16) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 80) = 0xFFEFFFFFFFFFFFFFLL;
    v13 = 1.79769313e308;
    v14 = -1.79769313e308;
    v15 = 0uLL;
    v16 = a2;
    v17 = a3;
    do
    {
      v18 = vmulq_f64(*v16, 0);
      v18.f64[0] = v16[1].f64[0] + vaddvq_f64(v18);
      if (v18.f64[0] < v13)
      {
        *(a1 + 16) = v18.f64[0];
        v13 = v18.f64[0];
      }

      if (v18.f64[0] > v14)
      {
        *(a1 + 80) = v18.f64[0];
        v14 = v18.f64[0];
      }

      v16 += 2;
      --v17;
    }

    while (v17);
    *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 88) = 0xFFEFFFFFFFFFFFFFLL;
    v19 = 1.79769313e308;
    v20 = -1.79769313e308;
    v15.f64[0] = 0.577350269;
    result = vdupq_n_s64(0x3FE279A74590331CuLL);
    v22 = a2;
    v23 = a3;
    do
    {
      v24 = vmulq_f64(v22[1], v15).f64[0] + vaddvq_f64(vmulq_f64(*v22, result));
      if (v24 < v19)
      {
        *(a1 + 24) = v24;
        v19 = v24;
      }

      if (v24 > v20)
      {
        *(a1 + 88) = v24;
        v20 = v24;
      }

      v22 += 2;
      --v23;
    }

    while (v23);
    *(a1 + 32) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 96) = 0xFFEFFFFFFFFFFFFFLL;
    v25 = 1.79769313e308;
    v26 = -1.79769313e308;
    v27 = a2;
    v28 = a3;
    do
    {
      v29 = vmulq_f64(v27[1], v15).f64[0] + vaddvq_f64(vmulq_f64(*v27, xmmword_2500CACC0));
      if (v29 < v25)
      {
        *(a1 + 32) = v29;
        v25 = v29;
      }

      if (v29 > v26)
      {
        *(a1 + 96) = v29;
        v26 = v29;
      }

      v27 += 2;
      --v28;
    }

    while (v28);
    *(a1 + 40) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 104) = 0xFFEFFFFFFFFFFFFFLL;
    v30 = 1.79769313e308;
    v31 = -1.79769313e308;
    v32 = a2;
    v33 = a3;
    do
    {
      v34 = vmulq_f64(v32[1], v15).f64[0] + vaddvq_f64(vmulq_f64(*v32, xmmword_2500CACD0));
      if (v34 < v30)
      {
        *(a1 + 40) = v34;
        v30 = v34;
      }

      if (v34 > v31)
      {
        *(a1 + 104) = v34;
        v31 = v34;
      }

      v32 += 2;
      --v33;
    }

    while (v33);
    *(a1 + 48) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 112) = 0xFFEFFFFFFFFFFFFFLL;
    v35 = 1.79769313e308;
    v36 = -1.79769313e308;
    v18.f64[0] = -0.577350269;
    do
    {
      v37 = vmulq_f64(a2[1], v18).f64[0] + vaddvq_f64(vmulq_f64(*a2, result));
      if (v37 < v35)
      {
        *(a1 + 48) = v37;
        v35 = v37;
      }

      if (v37 > v36)
      {
        *(a1 + 112) = v37;
        v36 = v37;
      }

      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v38 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a1 + 8) = result;
    *(a1 + 72) = v38;
    *(a1 + 24) = result;
    *(a1 + 88) = v38;
    *(a1 + 40) = result;
    *(a1 + 104) = v38;
  }

  return result;
}

float64x2_t geom::dop<(unsigned char)18,double>::dop(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  *(a1 + 64) = 0;
  result = 0uLL;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *a1 = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0xFFEFFFFFFFFFFFFFLL;
  if (a3)
  {
    v4 = 1.79769313e308;
    v5 = -1.79769313e308;
    v6 = a2;
    v7 = a3;
    do
    {
      v8 = vmulq_f64(v6[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v6, xmmword_2500C1650));
      if (v8 < v4)
      {
        *a1 = v8;
        v4 = v8;
      }

      if (v8 > v5)
      {
        *(a1 + 80) = v8;
        v5 = v8;
      }

      v6 += 2;
      --v7;
    }

    while (v7);
    *(a1 + 8) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 88) = 0xFFEFFFFFFFFFFFFFLL;
    v9 = 1.79769313e308;
    v10 = -1.79769313e308;
    v11 = a2;
    v12 = a3;
    do
    {
      v13 = vmulq_f64(v11[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v11, xmmword_2500C1660));
      if (v13 < v9)
      {
        *(a1 + 8) = v13;
        v9 = v13;
      }

      if (v13 > v10)
      {
        *(a1 + 88) = v13;
        v10 = v13;
      }

      v11 += 2;
      --v12;
    }

    while (v12);
    *(a1 + 16) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 96) = 0xFFEFFFFFFFFFFFFFLL;
    v14 = 1.79769313e308;
    v15 = -1.79769313e308;
    v16 = a2;
    v17 = a3;
    do
    {
      v18 = v16[1].f64[0] + vaddvq_f64(vmulq_f64(*v16, 0));
      if (v18 < v14)
      {
        *(a1 + 16) = v18;
        v14 = v18;
      }

      if (v18 > v15)
      {
        *(a1 + 96) = v18;
        v15 = v18;
      }

      v16 += 2;
      --v17;
    }

    while (v17);
    *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 104) = 0xFFEFFFFFFFFFFFFFLL;
    v19 = 1.79769313e308;
    v20 = -1.79769313e308;
    v21 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
    v22 = a2;
    v23 = a3;
    do
    {
      v24 = vmulq_f64(v22[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v22, v21));
      if (v24 < v19)
      {
        *(a1 + 24) = v24;
        v19 = v24;
      }

      if (v24 > v20)
      {
        *(a1 + 104) = v24;
        v20 = v24;
      }

      v22 += 2;
      --v23;
    }

    while (v23);
    *(a1 + 32) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 112) = 0xFFEFFFFFFFFFFFFFLL;
    v25 = 1.79769313e308;
    v26 = -1.79769313e308;
    result.f64[0] = 0.707106781;
    v27 = a2;
    v28 = a3;
    do
    {
      v29 = vmulq_f64(v27[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v27, xmmword_2500CACE0));
      if (v29 < v25)
      {
        *(a1 + 32) = v29;
        v25 = v29;
      }

      if (v29 > v26)
      {
        *(a1 + 112) = v29;
        v26 = v29;
      }

      v27 += 2;
      --v28;
    }

    while (v28);
    *(a1 + 40) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 120) = 0xFFEFFFFFFFFFFFFFLL;
    v30 = 1.79769313e308;
    v31 = -1.79769313e308;
    v32 = a2;
    v33 = a3;
    do
    {
      v34 = vmulq_f64(v32[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v32, xmmword_2500CACF0));
      if (v34 < v30)
      {
        *(a1 + 40) = v34;
        v30 = v34;
      }

      if (v34 > v31)
      {
        *(a1 + 120) = v34;
        v31 = v34;
      }

      v32 += 2;
      --v33;
    }

    while (v33);
    *(a1 + 48) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 128) = 0xFFEFFFFFFFFFFFFFLL;
    v35 = 1.79769313e308;
    v36 = -1.79769313e308;
    v37 = a2;
    v38 = a3;
    do
    {
      v39 = vmulq_f64(v37[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v37, xmmword_2500CAD00));
      if (v39 < v35)
      {
        *(a1 + 48) = v39;
        v35 = v39;
      }

      if (v39 > v36)
      {
        *(a1 + 128) = v39;
        v36 = v39;
      }

      v37 += 2;
      --v38;
    }

    while (v38);
    *(a1 + 56) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 136) = 0xFFEFFFFFFFFFFFFFLL;
    v40 = 1.79769313e308;
    v41 = -1.79769313e308;
    v42 = a2;
    v43 = a3;
    do
    {
      v44 = vmulq_f64(v42[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v42, xmmword_2500CAD10));
      if (v44 < v40)
      {
        *(a1 + 56) = v44;
        v40 = v44;
      }

      if (v44 > v41)
      {
        *(a1 + 136) = v44;
        v41 = v44;
      }

      v42 += 2;
      --v43;
    }

    while (v43);
    *(a1 + 64) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 144) = 0xFFEFFFFFFFFFFFFFLL;
    v45 = 1.79769313e308;
    v46 = -1.79769313e308;
    do
    {
      v47 = vmulq_f64(a2[1], result).f64[0] + vaddvq_f64(vmulq_f64(*a2, xmmword_2500CAD20));
      if (v47 < v45)
      {
        *(a1 + 64) = v47;
        v45 = v47;
      }

      if (v47 > v46)
      {
        *(a1 + 144) = v47;
        v46 = v47;
      }

      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *(a1 + 8) = result;
    v48 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a1 + 88) = v48;
    *(a1 + 24) = result;
    *(a1 + 104) = v48;
    *(a1 + 40) = result;
    *(a1 + 120) = v48;
    *(a1 + 56) = result;
    *(a1 + 136) = v48;
  }

  return result;
}

float64x2_t geom::dop<(unsigned char)20,double>::dop(uint64_t a1, float64x2_t *a2, uint64_t a3, double a4, float64x2_t a5, double a6, float64x2_t a7)
{
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0xFFEFFFFFFFFFFFFFLL;
  if (a3)
  {
    v7 = 1.79769313e308;
    v8 = -1.79769313e308;
    a5.f64[0] = 0.577350269;
    result = vdupq_n_s64(0x3FE279A74590331CuLL);
    v10 = a2;
    v11 = a3;
    do
    {
      v12 = vmulq_f64(v10[1], a5).f64[0] + vaddvq_f64(vmulq_f64(*v10, result));
      if (v12 < v7)
      {
        *a1 = v12;
        v7 = v12;
      }

      if (v12 > v8)
      {
        *(a1 + 80) = v12;
        v8 = v12;
      }

      v10 += 2;
      --v11;
    }

    while (v11);
    *(a1 + 8) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 88) = 0xFFEFFFFFFFFFFFFFLL;
    v13 = 1.79769313e308;
    v14 = -1.79769313e308;
    v15 = a2;
    v16 = a3;
    do
    {
      v17 = vmulq_f64(v15[1], a5).f64[0] + vaddvq_f64(vmulq_f64(*v15, xmmword_2500CACC0));
      if (v17 < v13)
      {
        *(a1 + 8) = v17;
        v13 = v17;
      }

      if (v17 > v14)
      {
        *(a1 + 88) = v17;
        v14 = v17;
      }

      v15 += 2;
      --v16;
    }

    while (v16);
    *(a1 + 16) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 96) = 0xFFEFFFFFFFFFFFFFLL;
    v18 = 1.79769313e308;
    v19 = -1.79769313e308;
    v20 = a2;
    v21 = a3;
    do
    {
      v22 = vmulq_f64(v20[1], a5).f64[0] + vaddvq_f64(vmulq_f64(*v20, xmmword_2500CACD0));
      if (v22 < v18)
      {
        *(a1 + 16) = v22;
        v18 = v22;
      }

      if (v22 > v19)
      {
        *(a1 + 96) = v22;
        v19 = v22;
      }

      v20 += 2;
      --v21;
    }

    while (v21);
    *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 104) = 0xFFEFFFFFFFFFFFFFLL;
    v23 = 1.79769313e308;
    v24 = -1.79769313e308;
    a7.f64[0] = -0.577350269;
    v25 = a2;
    v26 = a3;
    do
    {
      v27 = vmulq_f64(v25[1], a7).f64[0] + vaddvq_f64(vmulq_f64(*v25, result));
      if (v27 < v23)
      {
        *(a1 + 24) = v27;
        v23 = v27;
      }

      if (v27 > v24)
      {
        *(a1 + 104) = v27;
        v24 = v27;
      }

      v25 += 2;
      --v26;
    }

    while (v26);
    *(a1 + 32) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 112) = 0xFFEFFFFFFFFFFFFFLL;
    v28 = 1.79769313e308;
    v29 = -1.79769313e308;
    v30 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
    v31 = a2;
    v32 = a3;
    do
    {
      v33 = vmulq_f64(v31[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v31, v30));
      if (v33 < v28)
      {
        *(a1 + 32) = v33;
        v28 = v33;
      }

      if (v33 > v29)
      {
        *(a1 + 112) = v33;
        v29 = v33;
      }

      v31 += 2;
      --v32;
    }

    while (v32);
    *(a1 + 40) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 120) = 0xFFEFFFFFFFFFFFFFLL;
    v34 = 1.79769313e308;
    v35 = -1.79769313e308;
    result.f64[0] = 0.707106781;
    v36 = a2;
    v37 = a3;
    do
    {
      v38 = vmulq_f64(v36[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v36, xmmword_2500CACE0));
      if (v38 < v34)
      {
        *(a1 + 40) = v38;
        v34 = v38;
      }

      if (v38 > v35)
      {
        *(a1 + 120) = v38;
        v35 = v38;
      }

      v36 += 2;
      --v37;
    }

    while (v37);
    *(a1 + 48) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 128) = 0xFFEFFFFFFFFFFFFFLL;
    v39 = 1.79769313e308;
    v40 = -1.79769313e308;
    v41 = a2;
    v42 = a3;
    do
    {
      v43 = vmulq_f64(v41[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v41, xmmword_2500CACF0));
      if (v43 < v39)
      {
        *(a1 + 48) = v43;
        v39 = v43;
      }

      if (v43 > v40)
      {
        *(a1 + 128) = v43;
        v40 = v43;
      }

      v41 += 2;
      --v42;
    }

    while (v42);
    *(a1 + 56) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 136) = 0xFFEFFFFFFFFFFFFFLL;
    v44 = 1.79769313e308;
    v45 = -1.79769313e308;
    v46 = a2;
    v47 = a3;
    do
    {
      v48 = vmulq_f64(v46[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v46, xmmword_2500CAD00));
      if (v48 < v44)
      {
        *(a1 + 56) = v48;
        v44 = v48;
      }

      if (v48 > v45)
      {
        *(a1 + 136) = v48;
        v45 = v48;
      }

      v46 += 2;
      --v47;
    }

    while (v47);
    *(a1 + 64) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 144) = 0xFFEFFFFFFFFFFFFFLL;
    v49 = 1.79769313e308;
    v50 = -1.79769313e308;
    v51 = a2;
    v52 = a3;
    do
    {
      v53 = vmulq_f64(v51[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v51, xmmword_2500CAD10));
      if (v53 < v49)
      {
        *(a1 + 64) = v53;
        v49 = v53;
      }

      if (v53 > v50)
      {
        *(a1 + 144) = v53;
        v50 = v53;
      }

      v51 += 2;
      --v52;
    }

    while (v52);
    *(a1 + 72) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 152) = 0xFFEFFFFFFFFFFFFFLL;
    v54 = 1.79769313e308;
    v55 = -1.79769313e308;
    do
    {
      v56 = vmulq_f64(a2[1], result).f64[0] + vaddvq_f64(vmulq_f64(*a2, xmmword_2500CAD20));
      if (v56 < v54)
      {
        *(a1 + 72) = v56;
        v54 = v56;
      }

      if (v56 > v55)
      {
        *(a1 + 152) = v56;
        v55 = v56;
      }

      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *(a1 + 8) = result;
    v57 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a1 + 88) = v57;
    *(a1 + 24) = result;
    *(a1 + 104) = v57;
    *(a1 + 40) = result;
    *(a1 + 120) = v57;
    *(a1 + 56) = result;
    *(a1 + 136) = v57;
    *(a1 + 72) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 152) = 0xFFEFFFFFFFFFFFFFLL;
  }

  return result;
}

float64x2_t geom::dop<(unsigned char)26,double>::dop(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *a1 = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 112) = 0xFFEFFFFFFFFFFFFFLL;
  if (a3)
  {
    v3 = 1.79769313e308;
    v4 = -1.79769313e308;
    v5 = a2;
    v6 = a3;
    do
    {
      v7 = vmulq_f64(v5[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v5, xmmword_2500C1650));
      if (v7 < v3)
      {
        *a1 = v7;
        v3 = v7;
      }

      if (v7 > v4)
      {
        *(a1 + 112) = v7;
        v4 = v7;
      }

      v5 += 2;
      --v6;
    }

    while (v6);
    *(a1 + 8) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 120) = 0xFFEFFFFFFFFFFFFFLL;
    v8 = 1.79769313e308;
    v9 = -1.79769313e308;
    v10 = a2;
    v11 = a3;
    do
    {
      v12 = vmulq_f64(v10[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v10, xmmword_2500C1660));
      if (v12 < v8)
      {
        *(a1 + 8) = v12;
        v8 = v12;
      }

      if (v12 > v9)
      {
        *(a1 + 120) = v12;
        v9 = v12;
      }

      v10 += 2;
      --v11;
    }

    while (v11);
    *(a1 + 16) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 128) = 0xFFEFFFFFFFFFFFFFLL;
    v13 = 1.79769313e308;
    v14 = -1.79769313e308;
    v15 = 0uLL;
    v16 = a2;
    v17 = a3;
    do
    {
      v18 = vmulq_f64(*v16, 0);
      v18.f64[0] = v16[1].f64[0] + vaddvq_f64(v18);
      if (v18.f64[0] < v13)
      {
        *(a1 + 16) = v18.f64[0];
        v13 = v18.f64[0];
      }

      if (v18.f64[0] > v14)
      {
        *(a1 + 128) = v18.f64[0];
        v14 = v18.f64[0];
      }

      v16 += 2;
      --v17;
    }

    while (v17);
    *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 136) = 0xFFEFFFFFFFFFFFFFLL;
    v19 = 1.79769313e308;
    v20 = -1.79769313e308;
    v15.f64[0] = 0.577350269;
    result = vdupq_n_s64(0x3FE279A74590331CuLL);
    v22 = a2;
    v23 = a3;
    do
    {
      v24 = vmulq_f64(v22[1], v15).f64[0] + vaddvq_f64(vmulq_f64(*v22, result));
      if (v24 < v19)
      {
        *(a1 + 24) = v24;
        v19 = v24;
      }

      if (v24 > v20)
      {
        *(a1 + 136) = v24;
        v20 = v24;
      }

      v22 += 2;
      --v23;
    }

    while (v23);
    *(a1 + 32) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 144) = 0xFFEFFFFFFFFFFFFFLL;
    v25 = 1.79769313e308;
    v26 = -1.79769313e308;
    v27 = a2;
    v28 = a3;
    do
    {
      v29 = vmulq_f64(v27[1], v15).f64[0] + vaddvq_f64(vmulq_f64(*v27, xmmword_2500CACC0));
      if (v29 < v25)
      {
        *(a1 + 32) = v29;
        v25 = v29;
      }

      if (v29 > v26)
      {
        *(a1 + 144) = v29;
        v26 = v29;
      }

      v27 += 2;
      --v28;
    }

    while (v28);
    *(a1 + 40) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 152) = 0xFFEFFFFFFFFFFFFFLL;
    v30 = 1.79769313e308;
    v31 = -1.79769313e308;
    v32 = a2;
    v33 = a3;
    do
    {
      v34 = vmulq_f64(v32[1], v15).f64[0] + vaddvq_f64(vmulq_f64(*v32, xmmword_2500CACD0));
      if (v34 < v30)
      {
        *(a1 + 40) = v34;
        v30 = v34;
      }

      if (v34 > v31)
      {
        *(a1 + 152) = v34;
        v31 = v34;
      }

      v32 += 2;
      --v33;
    }

    while (v33);
    *(a1 + 48) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 160) = 0xFFEFFFFFFFFFFFFFLL;
    v35 = 1.79769313e308;
    v36 = -1.79769313e308;
    v18.f64[0] = -0.577350269;
    v37 = a2;
    v38 = a3;
    do
    {
      v39 = vmulq_f64(v37[1], v18).f64[0] + vaddvq_f64(vmulq_f64(*v37, result));
      if (v39 < v35)
      {
        *(a1 + 48) = v39;
        v35 = v39;
      }

      if (v39 > v36)
      {
        *(a1 + 160) = v39;
        v36 = v39;
      }

      v37 += 2;
      --v38;
    }

    while (v38);
    *(a1 + 56) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 168) = 0xFFEFFFFFFFFFFFFFLL;
    v40 = 1.79769313e308;
    v41 = -1.79769313e308;
    v42 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
    v43 = a2;
    v44 = a3;
    do
    {
      v45 = vmulq_f64(v43[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v43, v42));
      if (v45 < v40)
      {
        *(a1 + 56) = v45;
        v40 = v45;
      }

      if (v45 > v41)
      {
        *(a1 + 168) = v45;
        v41 = v45;
      }

      v43 += 2;
      --v44;
    }

    while (v44);
    *(a1 + 64) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 176) = 0xFFEFFFFFFFFFFFFFLL;
    v46 = 1.79769313e308;
    v47 = -1.79769313e308;
    result.f64[0] = 0.707106781;
    v48 = a2;
    v49 = a3;
    do
    {
      v50 = vmulq_f64(v48[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v48, xmmword_2500CACE0));
      if (v50 < v46)
      {
        *(a1 + 64) = v50;
        v46 = v50;
      }

      if (v50 > v47)
      {
        *(a1 + 176) = v50;
        v47 = v50;
      }

      v48 += 2;
      --v49;
    }

    while (v49);
    *(a1 + 72) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 184) = 0xFFEFFFFFFFFFFFFFLL;
    v51 = 1.79769313e308;
    v52 = -1.79769313e308;
    v53 = a2;
    v54 = a3;
    do
    {
      v55 = vmulq_f64(v53[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v53, xmmword_2500CACF0));
      if (v55 < v51)
      {
        *(a1 + 72) = v55;
        v51 = v55;
      }

      if (v55 > v52)
      {
        *(a1 + 184) = v55;
        v52 = v55;
      }

      v53 += 2;
      --v54;
    }

    while (v54);
    *(a1 + 80) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 192) = 0xFFEFFFFFFFFFFFFFLL;
    v56 = 1.79769313e308;
    v57 = -1.79769313e308;
    v58 = a2;
    v59 = a3;
    do
    {
      v60 = vmulq_f64(v58[1], 0).f64[0] + vaddvq_f64(vmulq_f64(*v58, xmmword_2500CAD00));
      if (v60 < v56)
      {
        *(a1 + 80) = v60;
        v56 = v60;
      }

      if (v60 > v57)
      {
        *(a1 + 192) = v60;
        v57 = v60;
      }

      v58 += 2;
      --v59;
    }

    while (v59);
    *(a1 + 88) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 200) = 0xFFEFFFFFFFFFFFFFLL;
    v61 = 1.79769313e308;
    v62 = -1.79769313e308;
    v63 = a2;
    v64 = a3;
    do
    {
      v65 = vmulq_f64(v63[1], result).f64[0] + vaddvq_f64(vmulq_f64(*v63, xmmword_2500CAD10));
      if (v65 < v61)
      {
        *(a1 + 88) = v65;
        v61 = v65;
      }

      if (v65 > v62)
      {
        *(a1 + 200) = v65;
        v62 = v65;
      }

      v63 += 2;
      --v64;
    }

    while (v64);
    *(a1 + 96) = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 208) = 0xFFEFFFFFFFFFFFFFLL;
    v66 = 1.79769313e308;
    v67 = -1.79769313e308;
    do
    {
      v68 = vmulq_f64(a2[1], result).f64[0] + vaddvq_f64(vmulq_f64(*a2, xmmword_2500CAD20));
      if (v68 < v66)
      {
        *(a1 + 96) = v68;
        v66 = v68;
      }

      if (v68 > v67)
      {
        *(a1 + 208) = v68;
        v67 = v68;
      }

      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v69 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a1 + 8) = result;
    *(a1 + 120) = v69;
    *(a1 + 24) = result;
    *(a1 + 136) = v69;
    *(a1 + 40) = result;
    *(a1 + 152) = v69;
    *(a1 + 56) = result;
    *(a1 + 168) = v69;
    *(a1 + 72) = result;
    *(a1 + 184) = v69;
    *(a1 + 88) = result;
    *(a1 + 200) = v69;
  }

  return result;
}

void geom::robust_oriented_bounding_box_2<float>(std::vector<unsigned int>::size_type a1, void *a2, void *a3, float32x2_t *a4, float32x2_t *a5, int32x2_t *a6)
{
  if (a1 == 1)
  {
    *a3 = *a2;
    *a4 = 1065353216;
    *a5 = 0x3F80000000000000;
    *a6 = 0;
  }

  else
  {
    memset(&v74, 0, sizeof(v74));
    geom::convex_hull_2<float>(a1, a2, &v74);
    begin = v74.__begin_;
    v12 = a2[*v74.__begin_];
    v13 = vsub_f32(a2[v74.__begin_[1]], v12);
    v14 = vmul_f32(v13, v13);
    v14.f32[0] = sqrtf(vaddv_f32(v14));
    v15 = v74.__end_ - v74.__begin_;
    if (v15 < 3)
    {
      v16 = 0;
      v22 = 1;
      v23 = 0.0;
      v18 = 0.0;
      v19 = 1;
    }

    else
    {
      LODWORD(v16) = 0;
      v17 = vdiv_f32(v13, vdup_lane_s32(v14, 0));
      v18 = 0.0;
      LODWORD(v19) = 1;
      v20 = 3;
      v21 = 2;
      LODWORD(v22) = 1;
      v23 = 0.0;
      do
      {
        v24 = v20 - 1;
        v25 = vsub_f32(a2[v74.__begin_[v21]], v12);
        v26 = vmul_f32(v17, v25);
        v27 = vadd_f32(v26, vdup_lane_s32(v26, 1));
        v28 = vaddv_f32(v26);
        if (v28 > v14.f32[0])
        {
          v29 = v28;
        }

        else
        {
          v29 = v14.f32[0];
        }

        if (v28 > v14.f32[0])
        {
          v30 = v20 - 1;
        }

        else
        {
          v30 = v19;
        }

        v31 = v28 < v18;
        if (v28 < v18)
        {
          v18 = v28;
        }

        else
        {
          v14.f32[0] = v29;
        }

        if (v31)
        {
          v19 = v19;
        }

        else
        {
          v19 = v30;
        }

        if (v31)
        {
          v16 = v24;
        }

        else
        {
          v16 = v16;
        }

        v32 = vmls_lane_f32(v25, v17, v27, 0);
        v33 = vaddv_f32(vmul_f32(v32, v32));
        if (v33 <= v23)
        {
          v22 = v22;
        }

        else
        {
          v23 = v33;
          v22 = v24;
        }

        v21 = v20;
      }

      while (v15 > v20++);
    }

    v35 = 0;
    LODWORD(v36) = 0;
    v37 = sqrtf(v23) * (v14.f32[0] - v18);
    do
    {
      v36 = (v36 + 1) % v15;
      v38 = a2[v74.__begin_[v36]];
      v39 = vsub_f32(a2[v74.__begin_[(v36 + 1) % v15]], v38);
      v40 = vmul_f32(v39, v39);
      v40.i32[0] = vadd_f32(v40, vdup_lane_s32(v40, 1)).u32[0];
      v41 = vrsqrte_f32(v40.u32[0]);
      v42 = vmul_f32(v41, vrsqrts_f32(v40.u32[0], vmul_f32(v41, v41)));
      v43 = vmul_n_f32(v39, vmul_f32(v42, vrsqrts_f32(v40.u32[0], vmul_f32(v42, v42))).f32[0]);
      v44 = vsub_f32(a2[v74.__begin_[v22]], v38);
      v45 = vaddv_f32(vmul_f32(v43, vsub_f32(a2[v74.__begin_[v16]], v38)));
      v46 = vmul_f32(v43, v44);
      v47 = vmul_f32(v43, vsub_f32(a2[v74.__begin_[v19]], v38));
      v48 = vneg_f32(v43);
      v49 = vmls_lane_f32(v44, v43, vadd_f32(v46, vdup_lane_s32(v46, 1)), 0);
      v50 = vmul_f32(v49, v49);
      v51 = v16;
      do
      {
        v16 = v51;
        v52 = v45;
        v51 = (v51 + 1) % v15;
        v45 = vaddv_f32(vmul_f32(v43, vsub_f32(a2[v74.__begin_[v51]], v38)));
      }

      while (v45 < v52);
      v53 = vaddv_f32(v47);
      v54 = v19;
      do
      {
        v19 = v54;
        v55 = v53;
        v54 = (v54 + 1) % v15;
        v53 = vaddv_f32(vmul_f32(v43, vsub_f32(a2[v74.__begin_[v54]], v38)));
      }

      while (v53 > v55);
      v56 = vaddv_f32(v50);
      v57 = v22;
      do
      {
        v22 = v57;
        v57 = (v57 + 1) % v15;
        v58 = vsub_f32(a2[v74.__begin_[v57]], v38);
        v59 = vmul_f32(v43, v58);
        v60 = v56;
        v61 = vmla_n_f32(v58, v48, vadd_f32(v59, vdup_lane_s32(v59, 1)).f32[0]);
        v56 = vaddv_f32(vmul_f32(v61, v61));
      }

      while (v56 > v60);
      v62 = sqrtf(v60);
      if (((v55 - v52) * v62) < v37)
      {
        v23 = v60;
        v14.f32[0] = v55;
        v18 = v52;
        v35 = v36;
        v37 = (v55 - v52) * v62;
      }
    }

    while (v36);
    v63 = vsub_f32(a2[v74.__begin_[(v35 + 1) % v15]], a2[v74.__begin_[v35]]);
    v64 = vmul_f32(v63, v63);
    v64.i32[0] = vadd_f32(v64, vdup_lane_s32(v64, 1)).u32[0];
    v65 = vrsqrte_f32(v64.u32[0]);
    v66 = vmul_f32(v65, vrsqrts_f32(v64.u32[0], vmul_f32(v65, v65)));
    v67 = vmul_f32(v66, vrsqrts_f32(v64.u32[0], vmul_f32(v66, v66)));
    v68 = vmul_n_f32(v63, *v67.i32);
    *a4 = v68;
    *v67.i32 = -v68.f32[1];
    *a5 = vzip1_s32(v67, v68);
    v69.f32[0] = v14.f32[0] - v18;
    v69.i32[1] = sqrtf(v23);
    v70 = vmul_f32(v69, 0x3F0000003F000000);
    *a6 = v70;
    *a3 = vmla_lane_f32(vmla_n_f32(vmla_n_f32(a2[begin[v35]], v68, v18), *a4, v70.f32[0]), *a5, v70, 1);
    v71 = *a4;
    if (((-COERCE_FLOAT(HIDWORD(*a4)) * COERCE_FLOAT(*a5)) + (COERCE_FLOAT(*a4) * COERCE_FLOAT(HIDWORD(*a5)))) >= 0.0)
    {
      v72 = *a6;
    }

    else
    {
      *a4 = *a5;
      *a5 = v71;
      v72 = vrev64_s32(*a6);
      *a6 = v72;
    }

    if (vcgt_f32(vdup_lane_s32(v72, 1), v72).u8[0])
    {
      v73 = *a4;
      *a4 = *a5;
      *a5 = v73;
      *a6 = vrev64_s32(*a6);
      *a5 = vneg_f32(*a5);
    }

    v74.__end_ = begin;
    operator delete(begin);
  }
}

void geom::robust_oriented_bounding_box_2<double>(std::vector<unsigned int>::size_type a1, _OWORD *a2, _OWORD *a3, float64x2_t *a4, float64x2_t *a5, int8x16_t *a6)
{
  if (a1 == 1)
  {
    *a3 = *a2;
    *a4 = xmmword_2500C1650;
    *a5 = xmmword_2500C1660;
    a6->i64[0] = 0;
    a6->i64[1] = 0;
  }

  else
  {
    memset(&v72, 0, sizeof(v72));
    geom::convex_hull_2<double>(a1, a2, &v72);
    begin = v72.__begin_;
    v12 = a2[*v72.__begin_];
    v13 = vsubq_f64(a2[v72.__begin_[1]], v12);
    v14 = sqrt(vaddvq_f64(vmulq_f64(v13, v13)));
    v15 = v72.__end_ - v72.__begin_;
    if (v15 < 3)
    {
      v16 = 0;
      v22 = 1;
      v23 = 0.0;
      v18 = 1;
      v19 = 0.0;
    }

    else
    {
      LODWORD(v16) = 0;
      v17 = vdivq_f64(v13, vdupq_lane_s64(*&v14, 0));
      LODWORD(v18) = 1;
      v19 = 0.0;
      v20 = 3;
      v21 = 2;
      LODWORD(v22) = 1;
      v23 = 0.0;
      do
      {
        v24 = v20 - 1;
        v25 = vsubq_f64(a2[v72.__begin_[v21]], v12);
        v26 = vmulq_f64(v17, v25);
        *&v27 = *&vaddq_f64(v26, vdupq_laneq_s64(v26, 1));
        v28 = vaddvq_f64(v26);
        if (v28 > v14)
        {
          v29 = v28;
        }

        else
        {
          v29 = v14;
        }

        if (v28 > v14)
        {
          v30 = v20 - 1;
        }

        else
        {
          v30 = v18;
        }

        _NF = v28 < v23;
        if (v28 < v23)
        {
          v23 = v28;
        }

        else
        {
          v14 = v29;
        }

        if (_NF)
        {
          v18 = v18;
        }

        else
        {
          v18 = v30;
        }

        if (_NF)
        {
          v16 = v24;
        }

        else
        {
          v16 = v16;
        }

        v32 = vmlsq_lane_f64(v25, v17, v27, 0);
        *v32.f64 = vaddvq_f64(vmulq_f64(v32, v32));
        v33 = *v32.f64;
        if (v19 >= v33)
        {
          v22 = v22;
        }

        else
        {
          v22 = v24;
        }

        if (v19 < v33)
        {
          v19 = v33;
        }

        v21 = v20;
      }

      while (v15 > v20++);
    }

    v35 = 0;
    LODWORD(v36) = 0;
    v37 = (v14 - v23) * sqrt(v19);
    do
    {
      v36 = (v36 + 1) % v15;
      v38 = a2[v72.__begin_[v36]];
      v39 = vsubq_f64(a2[v72.__begin_[(v36 + 1) % v15]], v38);
      v40 = vmulq_n_f64(v39, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v39, v39))));
      v41 = vsubq_f64(a2[v72.__begin_[v22]], v38);
      v42 = vaddvq_f64(vmulq_f64(vsubq_f64(a2[v72.__begin_[v16]], v38), v40));
      v43 = vmulq_f64(v41, v40);
      v44 = vmulq_f64(vsubq_f64(a2[v72.__begin_[v18]], v38), v40);
      v45 = vnegq_f64(v40);
      v46 = vmlsq_lane_f64(v41, v40, vaddq_f64(v43, vdupq_laneq_s64(v43, 1)).f64[0], 0);
      v47 = vmulq_f64(v46, v46);
      v48 = v16;
      do
      {
        v16 = v48;
        v49 = v42;
        v48 = (v48 + 1) % v15;
        v42 = vaddvq_f64(vmulq_f64(v40, vsubq_f64(a2[v72.__begin_[v48]], v38)));
      }

      while (v42 < v49);
      v50 = vaddvq_f64(v44);
      v51 = v18;
      do
      {
        v18 = v51;
        v52 = v50;
        v51 = (v51 + 1) % v15;
        v50 = vaddvq_f64(vmulq_f64(v40, vsubq_f64(a2[v72.__begin_[v51]], v38)));
      }

      while (v50 > v52);
      v53 = vaddvq_f64(v47);
      v54 = v22;
      do
      {
        v22 = v54;
        v54 = (v54 + 1) % v15;
        v55 = vsubq_f64(a2[v72.__begin_[v54]], v38);
        v56 = vmulq_f64(v40, v55);
        v57 = v53;
        v58 = vmlaq_n_f64(v55, v45, vaddq_f64(v56, vdupq_laneq_s64(v56, 1)).f64[0]);
        v53 = vaddvq_f64(vmulq_f64(v58, v58));
      }

      while (v53 > v57);
      v59 = (v52 - v49) * sqrt(v57);
      if (v59 < v37)
      {
        v37 = v59;
        v14 = v52;
        v23 = v49;
        v35 = v36;
        v19 = v57;
      }
    }

    while (v36);
    v60 = vsubq_f64(a2[v72.__begin_[(v35 + 1) % v15]], a2[v72.__begin_[v35]]);
    v61 = vmulq_f64(v60, v60);
    v62 = vmulq_n_f64(v60, 1.0 / sqrt(vaddvq_f64(v61)));
    *a4 = v62;
    v61.f64[0] = -v62.f64[1];
    *a5 = vzip1q_s64(v61, v62);
    v63.f64[0] = v14 - v23;
    v63.f64[1] = sqrt(v19);
    __asm { FMOV            V2.2D, #0.5 }

    v68 = vmulq_f64(v63, _Q2);
    *a6 = v68;
    *a3 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_n_f64(a2[begin[v35]], v62, v23), *a4, v68.f64[0]), *a5, v68, 1);
    v69 = *a4;
    if (-a4->f64[1] * a5->f64[0] + a4->f64[0] * a5->f64[1] >= 0.0)
    {
      v70 = *a6;
    }

    else
    {
      *a4 = *a5;
      *a5 = v69;
      v70 = vextq_s8(*a6, *a6, 8uLL);
      *a6 = v70;
    }

    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v70, 1), v70)).u8[0])
    {
      v71 = *a4;
      *a4 = *a5;
      *a5 = v71;
      *a6 = vextq_s8(*a6, *a6, 8uLL);
      *a5 = vnegq_f64(*a5);
    }

    v72.__end_ = begin;
    operator delete(begin);
  }
}

uint64_t geom::oriented_bounding_box_3<float>(uint64_t result, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, int8x16_t *a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v12 = 0uLL;
  v13 = 0uLL;
  if (!result)
  {
    goto LABEL_14;
  }

  v15 = result;
  for (i = 0; i != result; ++i)
  {
    v17 = a2[i];
    v13 = vaddq_f32(v13, v17);
  }

  v18 = 0;
  v17.f32[0] = result;
  v19 = vdivq_f32(v13, vdupq_lane_s32(*v17.f32, 0));
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v20 = 0;
  v21 = 0.0;
  v22 = 0;
  do
  {
    _Q4 = vsubq_f32(a2[v18], v19);
    v21 = v21 + (_Q4.f32[0] * _Q4.f32[0]);
    v20 = vmla_lane_f32(v20, *_Q4.f32, *_Q4.f32, 1);
    _S5 = _Q4.i32[2];
    v22 = vmla_laneq_f32(v22, *_Q4.f32, _Q4, 2);
    __asm { FMLA            S0, S5, V4.S[2] }

    ++v18;
  }

  while (result != v18);
  v72 = v19;
  v73 = v21;
  v75 = v20;
  v77 = v22;
  v78 = _S0;
  result = geom::compute_eigendecomposition_of_symmetric_matrix<float,3ul>();
  if (!result)
  {
    v13 = v72;
    v12 = 0uLL;
LABEL_14:
    *a3 = v13;
    *a4 = xmmword_2500C1620;
    *a5 = xmmword_2500C1630;
    *a6 = xmmword_2500C2810;
    *a7 = v12;
    goto LABEL_15;
  }

  v29 = 0;
  v30 = &v75;
  do
  {
    v31 = v29;
    if ((v29 & 0xFFFFFFFE) != 0)
    {
      v31 = 2;
    }

    a6->i32[v31] = *(v30 - 3);
    a5->i32[v31] = *v30;
    a4->i32[v31] = v30[3];
    ++v29;
    ++v30;
  }

  while (v29 != 3);
  v32 = vsubq_f32(*a2, v72);
  v33 = vmulq_f32(v32, *a4);
  v34 = vmulq_f32(v32, *a5);
  v35 = vadd_f32(vzip1_s32(*v33.i8, *v34.i8), vzip2_s32(*v33.i8, *v34.i8));
  v37 = vextq_s8(v33, v33, 8uLL);
  *v37.f32 = vadd_f32(vzip1_s32(*v37.f32, *&vextq_s8(v34, v34, 8uLL)), v35);
  v36 = vmulq_f32(v32, *a6);
  v37.f32[2] = v36.f32[2] + vaddv_f32(*v36.f32);
  v38 = v15 - 1;
  if (v15 == 1)
  {
    v39 = v37;
    v40 = v32;
  }

  else
  {
    v42 = a2 + 1;
    v40 = v32;
    v39 = v37;
    do
    {
      v43 = *v42++;
      v44 = vsubq_f32(v43, v72);
      v45 = vmulq_f32(*a4, v44);
      v46 = vmulq_f32(*a5, v44);
      *v45.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v45, v45, 8uLL), *&vextq_s8(v46, v46, 8uLL)), vadd_f32(vzip1_s32(*v45.i8, *v46.i8), vzip2_s32(*v45.i8, *v46.i8)));
      v47 = vmulq_f32(*a6, v44);
      v37.i32[3] = 0;
      *&v45.i32[2] = v47.f32[2] + vaddv_f32(*v47.f32);
      v45.i32[3] = 0;
      v37 = vminnmq_f32(v37, v45);
      v39.i32[3] = 0;
      v40.i32[3] = 0;
      v44.i32[3] = 0;
      v39 = vmaxnmq_f32(v39, v45);
      v40 = vminnmq_f32(v40, v44);
      v32.i32[3] = 0;
      v32 = vmaxnmq_f32(v32, v44);
      --v38;
    }

    while (v38);
  }

  v48 = vdupq_n_s32(0x3FFFFFACu);
  v49 = vdivq_f32(vsubq_f32(v39, v37), v48);
  *a7 = v49;
  v50 = vdivq_f32(vsubq_f32(v32, v40), v48);
  v51 = vmuls_lane_f32(vmuls_lane_f32(*v49.i32, *v49.i8, 1), v49, 2);
  v52 = vmuls_lane_f32(vmuls_lane_f32(*v50.i32, *v50.i8, 1), v50, 2);
  v53 = fabsf(v51);
  v54 = fabsf(v52);
  if (v53 > 0.00001 || v54 > 0.00001)
  {
    if (v51 == v52)
    {
      goto LABEL_33;
    }

    if (v53 != INFINITY && v54 != INFINITY)
    {
      v60 = v54 + v53;
LABEL_43:
      if ((v52 + ((v60 + 1.0) * 0.00001)) > v51)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v55 = vmulq_f32(v49, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
    v51 = v55.f32[2] + vaddv_f32(*v55.f32);
    v56 = vmulq_f32(v50, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
    v52 = v56.f32[2] + vaddv_f32(*v56.f32);
    if (v51 == v52)
    {
      goto LABEL_33;
    }

    v57 = fabsf(v51);
    v58 = fabsf(v52);
    if (v57 != INFINITY && v58 != INFINITY)
    {
      v60 = v58 + v57;
      goto LABEL_43;
    }
  }

  if (v51 > v52)
  {
LABEL_32:
    *a7 = v50;
    *a4 = xmmword_2500C1620;
    *a5 = xmmword_2500C1630;
    *a6 = xmmword_2500C2810;
    v39 = v32;
    v37 = v40;
  }

LABEL_33:
  v62 = vaddq_f32(v39, v37);
  v63.i64[0] = 0x3F0000003F000000;
  v63.i64[1] = 0x3F0000003F000000;
  v64 = vmulq_f32(v62, v63);
  *a3 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v72, *a4, v64.f32[0]), *a5, *v64.f32, 1), *a6, v64, 2);
  v65 = *a7;
  LODWORD(v66) = HIDWORD(a7->i64[0]);
  if (COERCE_FLOAT(*a7) < v66)
  {
    *a7 = vzip1q_s32(vextq_s8(v65, v65, 4uLL), v65);
    v67 = *a4;
    *a4 = *a5;
    *a5 = v67;
    v65 = *a7;
    LODWORD(v66) = HIDWORD(a7->i64[0]);
  }

  if (v66 < *&v65.i32[2])
  {
    *a7 = vuzp1q_s32(v65, vrev64q_s32(v65));
    v68 = *a5;
    *a5 = *a6;
    *a6 = v68;
    v65 = *a7;
    LODWORD(v66) = HIDWORD(a7->i64[0]);
  }

  if (*v65.i32 >= v66)
  {
    v69 = *a5;
  }

  else
  {
    *a7 = vzip1q_s32(vextq_s8(v65, v65, 4uLL), v65);
    v69 = *a4;
    *a4 = *a5;
    *a5 = v69;
  }

  v70 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL), vnegq_f32(*a4)), v69, vextq_s8(vuzp1q_s32(*a4, *a4), *a4, 0xCuLL));
  v71 = vmulq_f32(*a6, vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL));
  if ((v71.f32[2] + vaddv_f32(*v71.f32)) < 0.0)
  {
    *a6 = vnegq_f32(*a6);
  }

LABEL_15:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::oriented_bounding_box_3<double>(uint64_t result, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t *a5, uint64_t a6, uint64_t a7)
{
  v107 = *MEMORY[0x277D85DE8];
  v12 = 0uLL;
  if (!result)
  {
    v46 = 0uLL;
    v47 = 0uLL;
LABEL_15:
    *a3 = v46;
    a3[1] = v47;
    *a4 = xmmword_2500C1650;
    a4[1] = v12;
    *a5 = xmmword_2500C1660;
    a5[1] = v12;
    __asm { FMOV            V0.2D, #1.0 }

    *a6 = v12;
    *(a6 + 16) = _Q0;
    *a7 = v12;
    *(a7 + 16) = v12;
    goto LABEL_16;
  }

  v14 = result;
  v15 = 0;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v18 = a2[v15];
    v17 = vaddq_f64(v17, a2[v15 + 1]);
    v16 = vaddq_f64(v16, v18);
    v15 += 2;
  }

  while (2 * result != v15);
  v19 = 0;
  v18.f64[0] = result;
  v20 = vdivq_f64(v17, v18);
  v21 = vdivq_f64(v16, vdupq_lane_s64(COERCE__INT64(result), 0));
  v98 = vextq_s8(v21, v21, 8uLL).u64[0];
  v22 = 0uLL;
  v102 = 0u;
  v103 = 0u;
  v104 = 0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0uLL;
  do
  {
    v26 = &a2[2 * v19];
    v27 = vsubq_f64(v26[1], v20).f64[0];
    v28 = vsubq_f64(*v26, v21);
    v24 = v24 + v28.f64[0] * v28.f64[0];
    v22 = vmlaq_laneq_f64(v22, v28, v28, 1);
    v25 = vmlaq_n_f64(v25, v28, v27);
    v23 = v23 + v27 * v27;
    ++v19;
  }

  while (result != v19);
  v99 = v21;
  v100 = v20;
  v101 = v24;
  v103 = v22;
  v105 = v25;
  v106 = v23;
  result = geom::compute_eigendecomposition_of_symmetric_matrix<double,3ul>();
  if (!result)
  {
    v46 = v99;
    v47 = v100;
    v12 = 0uLL;
    goto LABEL_15;
  }

  v29 = 0;
  v30 = &v103;
  v31.f64[0] = v99.f64[0];
  do
  {
    v32 = v29;
    if ((v29 & 0xFFFFFFFE) != 0)
    {
      v32 = 2;
    }

    *(a6 + 8 * v32) = *(v30 - 3);
    a5->f64[v32] = *v30;
    a4->f64[v32] = v30[3];
    ++v29;
    ++v30;
  }

  while (v29 != 3);
  v33 = vsubq_f64(*a2, v99);
  v34 = vsubq_f64(a2[1], v100);
  v35 = a4[1];
  v36 = a5[1];
  v37 = vaddq_f64(vzip1q_s64(vmulq_f64(v34, v35), vmulq_f64(v34, v36)), vpaddq_f64(vmulq_f64(v33, *a4), vmulq_f64(v33, *a5)));
  v38 = *a6;
  v39 = *(a6 + 16);
  v40 = vmulq_f64(v34, v39);
  v40.f64[0] = v40.f64[0] + vaddvq_f64(vmulq_f64(v33, *a6));
  v41 = v14 - 1;
  if (v14 == 1)
  {
    v42 = v37;
    v43 = v40;
    v44 = v33;
    v45 = v34;
  }

  else
  {
    v54 = a2 + 2;
    v44 = v33;
    v45.f64[0] = v34.f64[0];
    v42 = v37;
    v43.f64[0] = v40.f64[0];
    do
    {
      v56 = *v54;
      v55 = v54[1];
      v54 += 2;
      v57 = vsubq_f64(v56, v99);
      v58 = vsubq_f64(v55, v100);
      v59 = vaddq_f64(vzip1q_s64(vmulq_f64(v35, v58), vmulq_f64(v36, v58)), vpaddq_f64(vmulq_f64(*a4, v57), vmulq_f64(*a5, v57)));
      *&v60 = vmulq_f64(v39, v58).f64[0] + vaddvq_f64(vmulq_f64(v38, v57));
      v37 = vminnmq_f64(v37, v59);
      v40 = vminnmq_f64(*&v40.f64[0], v60);
      v42 = vmaxnmq_f64(v42, v59);
      v43 = vmaxnmq_f64(*&v43.f64[0], v60);
      v44 = vminnmq_f64(v44, v57);
      v45 = vminnmq_f64(*&v45.f64[0], *&v58.f64[0]);
      v33 = vmaxnmq_f64(v33, v57);
      v34 = vmaxnmq_f64(*&v34.f64[0], *&v58.f64[0]);
      --v41;
    }

    while (v41);
  }

  v38.f64[0] = 1.999999;
  v61 = vdivq_f64(vsubq_f64(v43, v40), v38);
  v62 = vdupq_n_s64(0x3FFFFFFEF39085F5uLL);
  v63 = vdivq_f64(vsubq_f64(v42, v37), v62);
  *a7 = v63;
  *(a7 + 16) = v61;
  v64 = vdivq_f64(vsubq_f64(v34, v45), v38);
  v65 = vdivq_f64(vsubq_f64(v33, v44), v62);
  v66 = vmulq_f64(vzip1q_s64(v64, v61), vmulq_f64(vzip1q_s64(v65, v63), vzip2q_s64(v65, v63)));
  v67 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL), vabsq_f64(v66)));
  if (v67.i32[1] & v67.i32[0])
  {
    v68 = vextq_s8(v63, v63, 8uLL);
    v69 = vextq_s8(v65, v65, 8uLL);
    v70.f64[0] = v61.f64[0];
    *&v70.f64[1] = v63.i64[0];
    v63.i64[1] = *&v68.f64[0];
    v71 = vmulq_f64(v63, v70);
    v70.f64[0] = v64.f64[0];
    *&v70.f64[1] = v65.i64[0];
    *&v72.f64[0] = v65.i64[0];
    v72.f64[1] = v69.f64[0];
    v73 = vaddq_f64(vzip1q_s64(vmulq_f64(v64, v69), vmulq_f64(v61, v68)), vpaddq_f64(vmulq_f64(v72, v70), v71));
    if (v73.f64[1] == v73.f64[0] || v73.f64[0] + 0.000001 > v73.f64[1])
    {
      goto LABEL_25;
    }
  }

  else if (v66.f64[1] == v66.f64[0] || v66.f64[0] + 0.000001 > v66.f64[1])
  {
    goto LABEL_25;
  }

  *a7 = v65;
  *(a7 + 16) = v64;
  *a4 = xmmword_2500C1650;
  a4[1] = 0u;
  *a5 = xmmword_2500C1660;
  a5[1] = 0u;
  *a6 = 0;
  *(a6 + 8) = 0;
  __asm { FMOV            V2.2D, #1.0 }

  *(a6 + 16) = _Q2;
  v42 = v33;
  v43 = v34;
  v37 = v44;
  v40 = v45;
LABEL_25:
  v76 = vaddq_f64(v42, v37);
  __asm { FMOV            V2.2D, #0.5 }

  v78 = vmulq_f64(vaddq_f64(v43, v40), _Q2);
  v79 = vmulq_f64(v76, _Q2);
  *&v31.f64[1] = v98;
  v80 = vmlaq_laneq_f64(vmlaq_f64(v100, a4[1], v79), a5[1], v79, 1);
  v81 = vmlaq_laneq_f64(vmlaq_n_f64(v31, *a4, v79.f64[0]), *a5, v79, 1);
  v82 = *(a6 + 16);
  *a3 = vmlaq_n_f64(v81, *a6, v78.f64[0]);
  a3[1] = vmlaq_f64(v80, v82, v78);
  v82.f64[0] = *(a7 + 16);
  v83 = *a7;
  v84 = vextq_s8(v83, v83, 8uLL);
  v85 = *(a7 + 8);
  if (*a7 < v85)
  {
    v84.i64[1] = *a7;
    *a7 = v84;
    *(a7 + 16) = v82;
    v82 = *a4;
    v86 = a4[1];
    v87 = a5[1];
    *a4 = *a5;
    a4[1] = v87;
    *a5 = v82;
    a5[1] = v86;
    v82.f64[0] = *(a7 + 16);
    v83 = *a7;
    v84 = vextq_s8(v83, v83, 8uLL);
    v85 = *(a7 + 8);
  }

  if (v85 < v82.f64[0])
  {
    v83.i64[1] = *&v82.f64[0];
    *a7 = v83;
    *(a7 + 16) = v84;
    v82 = *a5;
    v88 = a5[1];
    v84 = *(a6 + 16);
    *a5 = *a6;
    a5[1] = v84;
    *a6 = v82;
    *(a6 + 16) = v88;
    v82.f64[0] = *(a7 + 16);
    v83 = *a7;
    v84.i64[0] = vextq_s8(v83, v83, 8uLL).u64[0];
    v85 = *(a7 + 8);
  }

  if (*v83.i64 >= v85)
  {
    v90 = *a5;
    v89 = a5[1];
  }

  else
  {
    v84.i64[1] = v83.i64[0];
    *a7 = v84;
    *(a7 + 16) = v82;
    v90 = *a4;
    v89 = a4[1];
    v91 = a5[1];
    *a4 = *a5;
    a4[1] = v91;
    *a5 = v90;
    a5[1] = v89;
  }

  v93.f64[0] = v89.f64[0];
  v93.f64[1] = v90.f64[0];
  v94 = a4[1];
  v95 = vnegq_f64(v94);
  v94.f64[1] = a4->f64[0];
  v96 = vmlaq_f64(vmulq_f64(v93, vnegq_f64(*a4)), v90, v94);
  *&v95.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v95, v90, 1), v89, *a4, 1);
  v95.f64[1] = v96.f64[0];
  v97 = *(a6 + 16);
  if (vmulq_laneq_f64(v97, v96, 1).f64[0] + vaddvq_f64(vmulq_f64(*a6, v95)) < 0.0)
  {
    *a6 = vnegq_f64(*a6);
    *(a6 + 16) = vnegq_f64(v97);
  }

LABEL_16:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

double geom::oriented_bounding_box_matrix_3<float>(uint64_t a1, float32x4_t *a2)
{
  v8.i32[2] = 0;
  v8.i64[0] = 0;
  v7.i32[2] = 0;
  v7.i64[0] = 0;
  v6.i32[2] = 0;
  v6.i64[0] = 0;
  v5.i32[2] = 0;
  v5.i64[0] = 0;
  v4.i32[2] = 0;
  v4.i64[0] = 0;
  geom::oriented_bounding_box_3<float>(a1, a2, &v8, &v7, &v6, &v5, &v4);
  v2 = v7;
  v2.i32[3] = 0;
  *&result = vmulq_n_f32(v2, *v4.i32).u64[0];
  return result;
}

float64_t geom::oriented_bounding_box_matrix_3<double>@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  *&v20 = 0;
  v19 = 0u;
  *&v18 = 0;
  v17 = 0u;
  *&v16 = 0;
  v15 = 0u;
  *&v14 = 0;
  v13 = 0u;
  *&v12 = 0;
  v11 = 0u;
  geom::oriented_bounding_box_3<double>(a1, a2, &v19, &v17, &v15, &v13, &v11);
  v5 = v11;
  v4 = *&v12;
  v6 = vmulq_n_f64(v18, v11.f64[0]);
  *a3 = vmulq_n_f64(v17, v11.f64[0]);
  a3[1] = v6;
  v7 = vmulq_laneq_f64(v16, v5, 1);
  v8 = v13;
  v9 = v14;
  a3[2] = vmulq_laneq_f64(v15, v5, 1);
  a3[3] = v7;
  a3[4] = vmulq_n_f64(v8, v4);
  a3[5] = vmulq_n_f64(v9, v4);
  result = v19.f64[0];
  *&v5.f64[0] = v20;
  v5.f64[1] = 1.0;
  a3[6] = v19;
  a3[7] = v5;
  return result;
}

void geom_convex_hull_2f(std::vector<unsigned int>::size_type a1, uint64_t a2, uint64_t a3)
{
  v5 = geom::collection_to_vector<float>(a3);

  geom::convex_hull_2<float>(a1, a2, v5);
}

void geom_convex_hull_2d(std::vector<unsigned int>::size_type a1, uint64_t a2, uint64_t a3)
{
  v5 = geom::collection_to_vector<float>(a3);

  geom::convex_hull_2<double>(a1, a2, v5);
}

uint64_t geom_dop6_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6)
{
  v13[0] = a4;
  v13[1] = a5;
  v12 = a6;
  v8 = geom::collection_to_vector<float>(a1);
  v9 = geom::collection_to_vector<float>(a2);
  v10 = geom::collection_to_vector<float>(a3);
  return geom::dop<(unsigned char)6,float>::compute_polyhedron(v13, &v12, v8, v9, v10);
}

uint64_t geom_dop8_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v12 = a5;
  v8 = geom::collection_to_vector<float>(a2);
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  return geom::dop<(unsigned char)8,float>::compute_polyhedron(a1, &v12, v8, v9, v10);
}

uint64_t geom_dop12_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v12 = a5;
  v8 = geom::collection_to_vector<float>(a2);
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  return geom::dop<(unsigned char)12,float>::compute_polyhedron(a1, &v12, v8, v9, v10);
}

uint64_t geom_dop14_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v12 = a5;
  v8 = geom::collection_to_vector<float>(a2);
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  return geom::dop<(unsigned char)14,float>::compute_polyhedron(a1, &v12, v8, v9, v10);
}

uint64_t geom_dop18_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v12 = a5;
  v8 = geom::collection_to_vector<float>(a2);
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  return geom::dop<(unsigned char)18,float>::compute_polyhedron(a1, &v12, v8, v9, v10);
}

uint64_t geom_dop20_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v12 = a5;
  v8 = geom::collection_to_vector<float>(a2);
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  return geom::dop<(unsigned char)20,float>::compute_polyhedron(a1, &v12, v8, v9, v10);
}

uint64_t geom_dop26_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v12 = a5;
  v8 = geom::collection_to_vector<float>(a2);
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  return geom::dop<(unsigned char)26,float>::compute_polyhedron(a1, &v12, v8, v9, v10);
}

void geom_dop6_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)6,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)6,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v139[6] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v118 = a1 + 32;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)6,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)6,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v139[v8 + 3] = *v13 - v12;
    *&v139[v8++] = v13[4] - v12;
  }

  while (v8 != 3);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&v136, 6uLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v139[v16 + 3];
    v20 = v139[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)6,double>[2 * v16];
        v122 = *v22;
        v125 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v135 = vdivq_f64(v125, v23);
        v120 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v136, __x);
        v24 = vdupq_lane_s64(v120, 0);
        *__x = vdivq_f64(v122, v24);
        v135 = vdivq_f64(v125, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v136, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 3);
  v25 = v136;
  v26 = (v137 - v136) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)6,double>[2 * v18];
    v123 = *v27;
    v126 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v135 = vmulq_n_f64(v126, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v118 + 8 * v18);
    *__x = vmulq_n_f64(v123, v29);
    v135 = vmulq_n_f64(v126, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 5)
  {
    geom::half_plane_intersection_3<double>(6uLL);
  }

  else
  {
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v32 = &geom::kdop_axes<(unsigned char)6,double>[2 * v17];
    v33 = *v32;
    v34 = v32[1];
    v35 = fabs(v34.f64[0]);
    if (v35 <= 2.22044605e-16)
    {
      *v15.i64 = -v33.f64[1];
      v37 = 0uLL;
      v36 = vzip1q_s64(v15, v33);
    }

    else
    {
      v36.f64[0] = 0.0;
      v36.f64[1] = -v34.f64[0];
      v37 = vdupq_laneq_s64(v33, 1);
    }

    v38 = vdupq_laneq_s64(v33, 1);
    v39 = vmulq_f64(v37, v37);
    v39.f64[0] = 1.0 / sqrt(v39.f64[0] + vaddvq_f64(vmulq_f64(v36, v36)));
    v40 = vmulq_f64(v37, v39);
    v41 = vmulq_n_f64(v36, v39.f64[0]);
    v42 = vextq_s8(v41, v41, 8uLL).u64[0];
    if (v35 <= 2.22044605e-16)
    {
      *v14.i64 = -v33.f64[1];
      v44 = 0uLL;
      v43 = vzip1q_s64(v14, v33);
    }

    else
    {
      v43.f64[0] = 0.0;
      v43.f64[1] = -v34.f64[0];
      v44 = v38;
    }

    v124 = v32[1];
    v127 = v40;
    v45 = vmulq_f64(v44, v44);
    v45.f64[0] = 1.0 / sqrt(v45.f64[0] + vaddvq_f64(vmulq_f64(v43, v43)));
    v46 = vmulq_n_f64(v43, v45.f64[0]);
    v47 = vmulq_f64(v44, v45);
    v48.f64[0] = v32[1].f64[0];
    v48.f64[1] = v32->f64[0];
    v49 = vnegq_f64(v34);
    v50 = vmlaq_laneq_f64(vmulq_laneq_f64(v49, v46, 1), v47, v33, 1);
    v47.f64[1] = v46.f64[0];
    v51 = vnegq_f64(v33);
    v52 = v48;
    v53 = vmlaq_f64(vmulq_f64(v47, v51), v46, v48);
    v54 = vmulq_f64(v53, v53);
    v48.f64[0] = vmulq_f64(v50, v50).f64[0];
    v50.f64[1] = v53.f64[0];
    v54.f64[0] = 1.0 / sqrt(v54.f64[1] + v48.f64[0] + v54.f64[0]);
    v55 = vmulq_n_f64(v50, v54.f64[0]);
    v56 = vextq_s8(v55, v55, 8uLL).u64[0];
    v121 = vmulq_laneq_f64(v54, v53, 1);
    v109 = v55.i64[0];
    v111 = v41.i64[0];
    v99 = v56;
    v100 = v42;
    if (v137 == v136)
    {
      v78 = 0;
      v79 = 0;
    }

    else
    {
      v57 = 0;
      v41.i64[1] = v42;
      v55.i64[1] = v56;
      v103 = v55;
      v104 = v41;
      v102 = vdupq_lane_s64(*&v124.f64[0], 0);
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v105 = v51;
      v106 = v49;
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u64[0];
      v107 = v52;
      v108 = v38;
      v119 = *v32;
      do
      {
        v58 = &v25[32 * v57];
        v113 = v58[1];
        v114 = *v58;
        v59.f64[0] = v58[1].f64[0];
        v59.f64[1] = v58->f64[0];
        v60 = vmlaq_f64(vmulq_f64(v59, v105), *v58, v107);
        v61 = vmlaq_f64(vmulq_laneq_f64(v49, *v58, 1), v113, v38);
        v62 = vmulq_f64(v60, v60);
        v63 = v60.f64[0];
        v116 = v60;
        v64.f64[0] = v61.f64[0];
        v62.f64[0] = 1.0 / sqrt(v62.f64[1] + vmulq_f64(v61, v61).f64[0] + v62.f64[0]);
        v117 = v62;
        v65 = vzip1q_s64(v119, *v58);
        v66 = vzip2q_s64(v119, *v58);
        v67 = vzip1q_s64(v124, v113);
        v140.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v65, v119.f64[0]), v38, v66), v102, v67);
        v140.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v65, v58->f64[0]), v66, *v58, 1), v67, v113.f64[0]);
        v64.f64[1] = v63;
        v115 = v64;
        v68 = __invert_d2(v140);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v119, v68.columns[1].f64[0]), v114, v68.columns[1], 1);
        v70 = vmlaq_laneq_f64(vmulq_n_f64(v124, v68.columns[1].f64[0]), v113, v68.columns[1], 1);
        v71 = vmulq_n_f64(v115, v117.f64[0]);
        v72 = vmulq_laneq_f64(v117, v116, 1);
        v73 = vaddq_f64(vzip1q_s64(vmulq_f64(v127, v72), vmulq_f64(v121, v72)), vpaddq_f64(vmulq_f64(v104, v71), vmulq_f64(v103, v71)));
        v74 = vmulq_f64(v73, v73);
        v75 = vmulq_n_f64(v73, 1.0 / sqrt(vaddvq_f64(v74)));
        v74.f64[0] = -*&v75.i64[1];
        v76 = vzip1q_s64(v74, v75);
        v77 = vmulq_f64(v76, vaddq_f64(vzip1q_s64(vmulq_f64(v127, v70), vmulq_f64(v121, v70)), vpaddq_f64(vmulq_f64(v104, v69), vmulq_f64(v103, v69))));
        *__x = vdivq_f64(v76, vdupq_lane_s64(*&vaddq_f64(v77, vdupq_laneq_s64(v77, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v131, __x);
        v49 = v106;
        v38 = v108;
        ++v57;
        v25 = v136;
      }

      while (v57 < (v137 - v136) >> 5);
      v78 = v131;
      v79 = v132;
    }

    __p = 0;
    v129 = 0;
    v130 = 0;
    geom::half_plane_intersection_2<double>((v79 - v78) >> 4, v78, &__p);
    v80 = __p;
    v81 = v129;
    v82 = v127;
    *&v83.f64[0] = v109;
    *&v84.f64[0] = v111;
    if (__p != v129)
    {
      *&v83.f64[1] = v99;
      *&v84.f64[1] = v100;
      v110 = v83;
      v112 = v84;
      do
      {
        v85 = *v80++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v83, v85, 1), v84, v85.f64[0]);
        v135 = vmlaq_f64(vmulq_laneq_f64(v121, v85, 1), v85, v82);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v82 = v127;
        v83 = v110;
        v84 = v112;
      }

      while (v80 != v81);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v86 = a3[1] - *a3;
    if (v86)
    {
      v87 = 0;
      v88 = a4->__begin_;
      v89 = a4->__begin_ + (v86 >> 3);
      v90 = vdupq_n_s64(((v86 >> 3) - 4) >> 2);
      v91 = a4->__begin_ + 2;
      do
      {
        v92 = vdupq_n_s64(v87);
        v93 = vmovn_s64(vcgeq_u64(v90, vorrq_s8(v92, xmmword_2500C1680)));
        if (vuzp1_s16(v93, *v90.i8).u8[0])
        {
          *(v91 - 2) = v87;
        }

        if (vuzp1_s16(v93, *&v90).i8[2])
        {
          *(v91 - 1) = v87 + 1;
        }

        if (vuzp1_s16(*&v90, vmovn_s64(vcgeq_u64(v90, vorrq_s8(v92, xmmword_2500C1670)))).i32[1])
        {
          *v91 = v87 + 2;
          v91[1] = v87 + 3;
        }

        v87 += 4;
        v91 += 4;
      }

      while ((((((v86 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v87);
      v94 = a4->__end_ - 1;
      do
      {
        v95 = *v88++;
        *v94-- = v95;
      }

      while (v88 != v89);
    }

    __x[0] = v86 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (__p)
    {
      v129 = __p;
      operator delete(__p);
    }

    if (v131)
    {
      v132 = v131;
      operator delete(v131);
    }
  }

  v96 = *a3;
  v97 = a3[1];
  while (v96 != v97)
  {
    v98 = vaddq_f64(a2[1], v96[1]);
    *v96 = vaddq_f64(*a2, *v96);
    v96[1] = v98;
    v96 += 2;
  }

LABEL_14:
  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void geom_dop8_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)8,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)8,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v139[8] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v118 = a1 + 32;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)8,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)8,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v139[v8 + 4] = *v13 - v12;
    *&v139[v8++] = v13[4] - v12;
  }

  while (v8 != 4);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&v136, 8uLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v139[v16 + 4];
    v20 = v139[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)8,double>[2 * v16];
        v122 = *v22;
        v125 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v135 = vdivq_f64(v125, v23);
        v120 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v136, __x);
        v24 = vdupq_lane_s64(v120, 0);
        *__x = vdivq_f64(v122, v24);
        v135 = vdivq_f64(v125, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v136, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 4);
  v25 = v136;
  v26 = (v137 - v136) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)8,double>[2 * v18];
    v123 = *v27;
    v126 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v135 = vmulq_n_f64(v126, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v118 + 8 * v18);
    *__x = vmulq_n_f64(v123, v29);
    v135 = vmulq_n_f64(v126, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 7)
  {
    geom::half_plane_intersection_3<double>(8uLL);
  }

  else
  {
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v32 = &geom::kdop_axes<(unsigned char)8,double>[2 * v17];
    v33 = *v32;
    v34 = v32[1];
    v35 = fabs(v34.f64[0]);
    if (v35 <= 2.22044605e-16)
    {
      *v15.i64 = -v33.f64[1];
      v37 = 0uLL;
      v36 = vzip1q_s64(v15, v33);
    }

    else
    {
      v36.f64[0] = 0.0;
      v36.f64[1] = -v34.f64[0];
      v37 = vdupq_laneq_s64(v33, 1);
    }

    v38 = vdupq_laneq_s64(v33, 1);
    v39 = vmulq_f64(v37, v37);
    v39.f64[0] = 1.0 / sqrt(v39.f64[0] + vaddvq_f64(vmulq_f64(v36, v36)));
    v40 = vmulq_f64(v37, v39);
    v41 = vmulq_n_f64(v36, v39.f64[0]);
    v42 = vextq_s8(v41, v41, 8uLL).u64[0];
    if (v35 <= 2.22044605e-16)
    {
      *v14.i64 = -v33.f64[1];
      v44 = 0uLL;
      v43 = vzip1q_s64(v14, v33);
    }

    else
    {
      v43.f64[0] = 0.0;
      v43.f64[1] = -v34.f64[0];
      v44 = v38;
    }

    v124 = v32[1];
    v127 = v40;
    v45 = vmulq_f64(v44, v44);
    v45.f64[0] = 1.0 / sqrt(v45.f64[0] + vaddvq_f64(vmulq_f64(v43, v43)));
    v46 = vmulq_n_f64(v43, v45.f64[0]);
    v47 = vmulq_f64(v44, v45);
    v48.f64[0] = v32[1].f64[0];
    v48.f64[1] = v32->f64[0];
    v49 = vnegq_f64(v34);
    v50 = vmlaq_laneq_f64(vmulq_laneq_f64(v49, v46, 1), v47, v33, 1);
    v47.f64[1] = v46.f64[0];
    v51 = vnegq_f64(v33);
    v52 = v48;
    v53 = vmlaq_f64(vmulq_f64(v47, v51), v46, v48);
    v54 = vmulq_f64(v53, v53);
    v48.f64[0] = vmulq_f64(v50, v50).f64[0];
    v50.f64[1] = v53.f64[0];
    v54.f64[0] = 1.0 / sqrt(v54.f64[1] + v48.f64[0] + v54.f64[0]);
    v55 = vmulq_n_f64(v50, v54.f64[0]);
    v56 = vextq_s8(v55, v55, 8uLL).u64[0];
    v121 = vmulq_laneq_f64(v54, v53, 1);
    v109 = v55.i64[0];
    v111 = v41.i64[0];
    v99 = v56;
    v100 = v42;
    if (v137 == v136)
    {
      v78 = 0;
      v79 = 0;
    }

    else
    {
      v57 = 0;
      v41.i64[1] = v42;
      v55.i64[1] = v56;
      v103 = v55;
      v104 = v41;
      v102 = vdupq_lane_s64(*&v124.f64[0], 0);
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v105 = v51;
      v106 = v49;
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u64[0];
      v107 = v52;
      v108 = v38;
      v119 = *v32;
      do
      {
        v58 = &v25[32 * v57];
        v113 = v58[1];
        v114 = *v58;
        v59.f64[0] = v58[1].f64[0];
        v59.f64[1] = v58->f64[0];
        v60 = vmlaq_f64(vmulq_f64(v59, v105), *v58, v107);
        v61 = vmlaq_f64(vmulq_laneq_f64(v49, *v58, 1), v113, v38);
        v62 = vmulq_f64(v60, v60);
        v63 = v60.f64[0];
        v116 = v60;
        v64.f64[0] = v61.f64[0];
        v62.f64[0] = 1.0 / sqrt(v62.f64[1] + vmulq_f64(v61, v61).f64[0] + v62.f64[0]);
        v117 = v62;
        v65 = vzip1q_s64(v119, *v58);
        v66 = vzip2q_s64(v119, *v58);
        v67 = vzip1q_s64(v124, v113);
        v140.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v65, v119.f64[0]), v38, v66), v102, v67);
        v140.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v65, v58->f64[0]), v66, *v58, 1), v67, v113.f64[0]);
        v64.f64[1] = v63;
        v115 = v64;
        v68 = __invert_d2(v140);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v119, v68.columns[1].f64[0]), v114, v68.columns[1], 1);
        v70 = vmlaq_laneq_f64(vmulq_n_f64(v124, v68.columns[1].f64[0]), v113, v68.columns[1], 1);
        v71 = vmulq_n_f64(v115, v117.f64[0]);
        v72 = vmulq_laneq_f64(v117, v116, 1);
        v73 = vaddq_f64(vzip1q_s64(vmulq_f64(v127, v72), vmulq_f64(v121, v72)), vpaddq_f64(vmulq_f64(v104, v71), vmulq_f64(v103, v71)));
        v74 = vmulq_f64(v73, v73);
        v75 = vmulq_n_f64(v73, 1.0 / sqrt(vaddvq_f64(v74)));
        v74.f64[0] = -*&v75.i64[1];
        v76 = vzip1q_s64(v74, v75);
        v77 = vmulq_f64(v76, vaddq_f64(vzip1q_s64(vmulq_f64(v127, v70), vmulq_f64(v121, v70)), vpaddq_f64(vmulq_f64(v104, v69), vmulq_f64(v103, v69))));
        *__x = vdivq_f64(v76, vdupq_lane_s64(*&vaddq_f64(v77, vdupq_laneq_s64(v77, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v131, __x);
        v49 = v106;
        v38 = v108;
        ++v57;
        v25 = v136;
      }

      while (v57 < (v137 - v136) >> 5);
      v78 = v131;
      v79 = v132;
    }

    __p = 0;
    v129 = 0;
    v130 = 0;
    geom::half_plane_intersection_2<double>((v79 - v78) >> 4, v78, &__p);
    v80 = __p;
    v81 = v129;
    v82 = v127;
    *&v83.f64[0] = v109;
    *&v84.f64[0] = v111;
    if (__p != v129)
    {
      *&v83.f64[1] = v99;
      *&v84.f64[1] = v100;
      v110 = v83;
      v112 = v84;
      do
      {
        v85 = *v80++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v83, v85, 1), v84, v85.f64[0]);
        v135 = vmlaq_f64(vmulq_laneq_f64(v121, v85, 1), v85, v82);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v82 = v127;
        v83 = v110;
        v84 = v112;
      }

      while (v80 != v81);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v86 = a3[1] - *a3;
    if (v86)
    {
      v87 = 0;
      v88 = a4->__begin_;
      v89 = a4->__begin_ + (v86 >> 3);
      v90 = vdupq_n_s64(((v86 >> 3) - 4) >> 2);
      v91 = a4->__begin_ + 2;
      do
      {
        v92 = vdupq_n_s64(v87);
        v93 = vmovn_s64(vcgeq_u64(v90, vorrq_s8(v92, xmmword_2500C1680)));
        if (vuzp1_s16(v93, *v90.i8).u8[0])
        {
          *(v91 - 2) = v87;
        }

        if (vuzp1_s16(v93, *&v90).i8[2])
        {
          *(v91 - 1) = v87 + 1;
        }

        if (vuzp1_s16(*&v90, vmovn_s64(vcgeq_u64(v90, vorrq_s8(v92, xmmword_2500C1670)))).i32[1])
        {
          *v91 = v87 + 2;
          v91[1] = v87 + 3;
        }

        v87 += 4;
        v91 += 4;
      }

      while ((((((v86 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v87);
      v94 = a4->__end_ - 1;
      do
      {
        v95 = *v88++;
        *v94-- = v95;
      }

      while (v88 != v89);
    }

    __x[0] = v86 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (__p)
    {
      v129 = __p;
      operator delete(__p);
    }

    if (v131)
    {
      v132 = v131;
      operator delete(v131);
    }
  }

  v96 = *a3;
  v97 = a3[1];
  while (v96 != v97)
  {
    v98 = vaddq_f64(a2[1], v96[1]);
    *v96 = vaddq_f64(*a2, *v96);
    v96[1] = v98;
    v96 += 2;
  }

LABEL_14:
  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void geom_dop12_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)12,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)12,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v139[12] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v118 = a1 + 48;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)12,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)12,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v139[v8 + 6] = *v13 - v12;
    *&v139[v8++] = v13[6] - v12;
  }

  while (v8 != 6);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&v136, 0xCuLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v139[v16 + 6];
    v20 = v139[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)12,double>[2 * v16];
        v122 = *v22;
        v125 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v135 = vdivq_f64(v125, v23);
        v120 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v136, __x);
        v24 = vdupq_lane_s64(v120, 0);
        *__x = vdivq_f64(v122, v24);
        v135 = vdivq_f64(v125, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v136, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 6);
  v25 = v136;
  v26 = (v137 - v136) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)12,double>[2 * v18];
    v123 = *v27;
    v126 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v135 = vmulq_n_f64(v126, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v118 + 8 * v18);
    *__x = vmulq_n_f64(v123, v29);
    v135 = vmulq_n_f64(v126, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 0xB)
  {
    geom::half_plane_intersection_3<double>(0xCuLL);
  }

  else
  {
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v32 = &geom::kdop_axes<(unsigned char)12,double>[2 * v17];
    v33 = *v32;
    v34 = v32[1];
    v35 = fabs(v34.f64[0]);
    if (v35 <= 2.22044605e-16)
    {
      *v15.i64 = -v33.f64[1];
      v37 = 0uLL;
      v36 = vzip1q_s64(v15, v33);
    }

    else
    {
      v36.f64[0] = 0.0;
      v36.f64[1] = -v34.f64[0];
      v37 = vdupq_laneq_s64(v33, 1);
    }

    v38 = vdupq_laneq_s64(v33, 1);
    v39 = vmulq_f64(v37, v37);
    v39.f64[0] = 1.0 / sqrt(v39.f64[0] + vaddvq_f64(vmulq_f64(v36, v36)));
    v40 = vmulq_f64(v37, v39);
    v41 = vmulq_n_f64(v36, v39.f64[0]);
    v42 = vextq_s8(v41, v41, 8uLL).u64[0];
    if (v35 <= 2.22044605e-16)
    {
      *v14.i64 = -v33.f64[1];
      v44 = 0uLL;
      v43 = vzip1q_s64(v14, v33);
    }

    else
    {
      v43.f64[0] = 0.0;
      v43.f64[1] = -v34.f64[0];
      v44 = v38;
    }

    v124 = v32[1];
    v127 = v40;
    v45 = vmulq_f64(v44, v44);
    v45.f64[0] = 1.0 / sqrt(v45.f64[0] + vaddvq_f64(vmulq_f64(v43, v43)));
    v46 = vmulq_n_f64(v43, v45.f64[0]);
    v47 = vmulq_f64(v44, v45);
    v48.f64[0] = v32[1].f64[0];
    v48.f64[1] = v32->f64[0];
    v49 = vnegq_f64(v34);
    v50 = vmlaq_laneq_f64(vmulq_laneq_f64(v49, v46, 1), v47, v33, 1);
    v47.f64[1] = v46.f64[0];
    v51 = vnegq_f64(v33);
    v52 = v48;
    v53 = vmlaq_f64(vmulq_f64(v47, v51), v46, v48);
    v54 = vmulq_f64(v53, v53);
    v48.f64[0] = vmulq_f64(v50, v50).f64[0];
    v50.f64[1] = v53.f64[0];
    v54.f64[0] = 1.0 / sqrt(v54.f64[1] + v48.f64[0] + v54.f64[0]);
    v55 = vmulq_n_f64(v50, v54.f64[0]);
    v56 = vextq_s8(v55, v55, 8uLL).u64[0];
    v121 = vmulq_laneq_f64(v54, v53, 1);
    v109 = v55.i64[0];
    v111 = v41.i64[0];
    v99 = v56;
    v100 = v42;
    if (v137 == v136)
    {
      v78 = 0;
      v79 = 0;
    }

    else
    {
      v57 = 0;
      v41.i64[1] = v42;
      v55.i64[1] = v56;
      v103 = v55;
      v104 = v41;
      v102 = vdupq_lane_s64(*&v124.f64[0], 0);
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v105 = v51;
      v106 = v49;
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u64[0];
      v107 = v52;
      v108 = v38;
      v119 = *v32;
      do
      {
        v58 = &v25[32 * v57];
        v113 = v58[1];
        v114 = *v58;
        v59.f64[0] = v58[1].f64[0];
        v59.f64[1] = v58->f64[0];
        v60 = vmlaq_f64(vmulq_f64(v59, v105), *v58, v107);
        v61 = vmlaq_f64(vmulq_laneq_f64(v49, *v58, 1), v113, v38);
        v62 = vmulq_f64(v60, v60);
        v63 = v60.f64[0];
        v116 = v60;
        v64.f64[0] = v61.f64[0];
        v62.f64[0] = 1.0 / sqrt(v62.f64[1] + vmulq_f64(v61, v61).f64[0] + v62.f64[0]);
        v117 = v62;
        v65 = vzip1q_s64(v119, *v58);
        v66 = vzip2q_s64(v119, *v58);
        v67 = vzip1q_s64(v124, v113);
        v140.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v65, v119.f64[0]), v38, v66), v102, v67);
        v140.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v65, v58->f64[0]), v66, *v58, 1), v67, v113.f64[0]);
        v64.f64[1] = v63;
        v115 = v64;
        v68 = __invert_d2(v140);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v119, v68.columns[1].f64[0]), v114, v68.columns[1], 1);
        v70 = vmlaq_laneq_f64(vmulq_n_f64(v124, v68.columns[1].f64[0]), v113, v68.columns[1], 1);
        v71 = vmulq_n_f64(v115, v117.f64[0]);
        v72 = vmulq_laneq_f64(v117, v116, 1);
        v73 = vaddq_f64(vzip1q_s64(vmulq_f64(v127, v72), vmulq_f64(v121, v72)), vpaddq_f64(vmulq_f64(v104, v71), vmulq_f64(v103, v71)));
        v74 = vmulq_f64(v73, v73);
        v75 = vmulq_n_f64(v73, 1.0 / sqrt(vaddvq_f64(v74)));
        v74.f64[0] = -*&v75.i64[1];
        v76 = vzip1q_s64(v74, v75);
        v77 = vmulq_f64(v76, vaddq_f64(vzip1q_s64(vmulq_f64(v127, v70), vmulq_f64(v121, v70)), vpaddq_f64(vmulq_f64(v104, v69), vmulq_f64(v103, v69))));
        *__x = vdivq_f64(v76, vdupq_lane_s64(*&vaddq_f64(v77, vdupq_laneq_s64(v77, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v131, __x);
        v49 = v106;
        v38 = v108;
        ++v57;
        v25 = v136;
      }

      while (v57 < (v137 - v136) >> 5);
      v78 = v131;
      v79 = v132;
    }

    __p = 0;
    v129 = 0;
    v130 = 0;
    geom::half_plane_intersection_2<double>((v79 - v78) >> 4, v78, &__p);
    v80 = __p;
    v81 = v129;
    v82 = v127;
    *&v83.f64[0] = v109;
    *&v84.f64[0] = v111;
    if (__p != v129)
    {
      *&v83.f64[1] = v99;
      *&v84.f64[1] = v100;
      v110 = v83;
      v112 = v84;
      do
      {
        v85 = *v80++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v83, v85, 1), v84, v85.f64[0]);
        v135 = vmlaq_f64(vmulq_laneq_f64(v121, v85, 1), v85, v82);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v82 = v127;
        v83 = v110;
        v84 = v112;
      }

      while (v80 != v81);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v86 = a3[1] - *a3;
    if (v86)
    {
      v87 = 0;
      v88 = a4->__begin_;
      v89 = a4->__begin_ + (v86 >> 3);
      v90 = vdupq_n_s64(((v86 >> 3) - 4) >> 2);
      v91 = a4->__begin_ + 2;
      do
      {
        v92 = vdupq_n_s64(v87);
        v93 = vmovn_s64(vcgeq_u64(v90, vorrq_s8(v92, xmmword_2500C1680)));
        if (vuzp1_s16(v93, *v90.i8).u8[0])
        {
          *(v91 - 2) = v87;
        }

        if (vuzp1_s16(v93, *&v90).i8[2])
        {
          *(v91 - 1) = v87 + 1;
        }

        if (vuzp1_s16(*&v90, vmovn_s64(vcgeq_u64(v90, vorrq_s8(v92, xmmword_2500C1670)))).i32[1])
        {
          *v91 = v87 + 2;
          v91[1] = v87 + 3;
        }

        v87 += 4;
        v91 += 4;
      }

      while ((((((v86 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v87);
      v94 = a4->__end_ - 1;
      do
      {
        v95 = *v88++;
        *v94-- = v95;
      }

      while (v88 != v89);
    }

    __x[0] = v86 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (__p)
    {
      v129 = __p;
      operator delete(__p);
    }

    if (v131)
    {
      v132 = v131;
      operator delete(v131);
    }
  }

  v96 = *a3;
  v97 = a3[1];
  while (v96 != v97)
  {
    v98 = vaddq_f64(a2[1], v96[1]);
    *v96 = vaddq_f64(*a2, *v96);
    v96[1] = v98;
    v96 += 2;
  }

LABEL_14:
  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void geom_dop14_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)14,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)14,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v139[14] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v118 = a1 + 64;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)14,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)14,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v139[v8 + 7] = *v13 - v12;
    *&v139[v8++] = v13[8] - v12;
  }

  while (v8 != 7);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&v136, 0xEuLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v139[v16 + 7];
    v20 = v139[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)14,double>[2 * v16];
        v122 = *v22;
        v125 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v135 = vdivq_f64(v125, v23);
        v120 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v136, __x);
        v24 = vdupq_lane_s64(v120, 0);
        *__x = vdivq_f64(v122, v24);
        v135 = vdivq_f64(v125, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v136, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 7);
  v25 = v136;
  v26 = (v137 - v136) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)14,double>[2 * v18];
    v123 = *v27;
    v126 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v135 = vmulq_n_f64(v126, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v118 + 8 * v18);
    *__x = vmulq_n_f64(v123, v29);
    v135 = vmulq_n_f64(v126, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 0xD)
  {
    geom::half_plane_intersection_3<double>(0xEuLL);
  }

  else
  {
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v32 = &geom::kdop_axes<(unsigned char)14,double>[2 * v17];
    v33 = *v32;
    v34 = v32[1];
    v35 = fabs(v34.f64[0]);
    if (v35 <= 2.22044605e-16)
    {
      *v15.i64 = -v33.f64[1];
      v37 = 0uLL;
      v36 = vzip1q_s64(v15, v33);
    }

    else
    {
      v36.f64[0] = 0.0;
      v36.f64[1] = -v34.f64[0];
      v37 = vdupq_laneq_s64(v33, 1);
    }

    v38 = vdupq_laneq_s64(v33, 1);
    v39 = vmulq_f64(v37, v37);
    v39.f64[0] = 1.0 / sqrt(v39.f64[0] + vaddvq_f64(vmulq_f64(v36, v36)));
    v40 = vmulq_f64(v37, v39);
    v41 = vmulq_n_f64(v36, v39.f64[0]);
    v42 = vextq_s8(v41, v41, 8uLL).u64[0];
    if (v35 <= 2.22044605e-16)
    {
      *v14.i64 = -v33.f64[1];
      v44 = 0uLL;
      v43 = vzip1q_s64(v14, v33);
    }

    else
    {
      v43.f64[0] = 0.0;
      v43.f64[1] = -v34.f64[0];
      v44 = v38;
    }

    v124 = v32[1];
    v127 = v40;
    v45 = vmulq_f64(v44, v44);
    v45.f64[0] = 1.0 / sqrt(v45.f64[0] + vaddvq_f64(vmulq_f64(v43, v43)));
    v46 = vmulq_n_f64(v43, v45.f64[0]);
    v47 = vmulq_f64(v44, v45);
    v48.f64[0] = v32[1].f64[0];
    v48.f64[1] = v32->f64[0];
    v49 = vnegq_f64(v34);
    v50 = vmlaq_laneq_f64(vmulq_laneq_f64(v49, v46, 1), v47, v33, 1);
    v47.f64[1] = v46.f64[0];
    v51 = vnegq_f64(v33);
    v52 = v48;
    v53 = vmlaq_f64(vmulq_f64(v47, v51), v46, v48);
    v54 = vmulq_f64(v53, v53);
    v48.f64[0] = vmulq_f64(v50, v50).f64[0];
    v50.f64[1] = v53.f64[0];
    v54.f64[0] = 1.0 / sqrt(v54.f64[1] + v48.f64[0] + v54.f64[0]);
    v55 = vmulq_n_f64(v50, v54.f64[0]);
    v56 = vextq_s8(v55, v55, 8uLL).u64[0];
    v121 = vmulq_laneq_f64(v54, v53, 1);
    v109 = v55.i64[0];
    v111 = v41.i64[0];
    v99 = v56;
    v100 = v42;
    if (v137 == v136)
    {
      v78 = 0;
      v79 = 0;
    }

    else
    {
      v57 = 0;
      v41.i64[1] = v42;
      v55.i64[1] = v56;
      v103 = v55;
      v104 = v41;
      v102 = vdupq_lane_s64(*&v124.f64[0], 0);
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v105 = v51;
      v106 = v49;
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u64[0];
      v107 = v52;
      v108 = v38;
      v119 = *v32;
      do
      {
        v58 = &v25[32 * v57];
        v113 = v58[1];
        v114 = *v58;
        v59.f64[0] = v58[1].f64[0];
        v59.f64[1] = v58->f64[0];
        v60 = vmlaq_f64(vmulq_f64(v59, v105), *v58, v107);
        v61 = vmlaq_f64(vmulq_laneq_f64(v49, *v58, 1), v113, v38);
        v62 = vmulq_f64(v60, v60);
        v63 = v60.f64[0];
        v116 = v60;
        v64.f64[0] = v61.f64[0];
        v62.f64[0] = 1.0 / sqrt(v62.f64[1] + vmulq_f64(v61, v61).f64[0] + v62.f64[0]);
        v117 = v62;
        v65 = vzip1q_s64(v119, *v58);
        v66 = vzip2q_s64(v119, *v58);
        v67 = vzip1q_s64(v124, v113);
        v140.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v65, v119.f64[0]), v38, v66), v102, v67);
        v140.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v65, v58->f64[0]), v66, *v58, 1), v67, v113.f64[0]);
        v64.f64[1] = v63;
        v115 = v64;
        v68 = __invert_d2(v140);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v119, v68.columns[1].f64[0]), v114, v68.columns[1], 1);
        v70 = vmlaq_laneq_f64(vmulq_n_f64(v124, v68.columns[1].f64[0]), v113, v68.columns[1], 1);
        v71 = vmulq_n_f64(v115, v117.f64[0]);
        v72 = vmulq_laneq_f64(v117, v116, 1);
        v73 = vaddq_f64(vzip1q_s64(vmulq_f64(v127, v72), vmulq_f64(v121, v72)), vpaddq_f64(vmulq_f64(v104, v71), vmulq_f64(v103, v71)));
        v74 = vmulq_f64(v73, v73);
        v75 = vmulq_n_f64(v73, 1.0 / sqrt(vaddvq_f64(v74)));
        v74.f64[0] = -*&v75.i64[1];
        v76 = vzip1q_s64(v74, v75);
        v77 = vmulq_f64(v76, vaddq_f64(vzip1q_s64(vmulq_f64(v127, v70), vmulq_f64(v121, v70)), vpaddq_f64(vmulq_f64(v104, v69), vmulq_f64(v103, v69))));
        *__x = vdivq_f64(v76, vdupq_lane_s64(*&vaddq_f64(v77, vdupq_laneq_s64(v77, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v131, __x);
        v49 = v106;
        v38 = v108;
        ++v57;
        v25 = v136;
      }

      while (v57 < (v137 - v136) >> 5);
      v78 = v131;
      v79 = v132;
    }

    __p = 0;
    v129 = 0;
    v130 = 0;
    geom::half_plane_intersection_2<double>((v79 - v78) >> 4, v78, &__p);
    v80 = __p;
    v81 = v129;
    v82 = v127;
    *&v83.f64[0] = v109;
    *&v84.f64[0] = v111;
    if (__p != v129)
    {
      *&v83.f64[1] = v99;
      *&v84.f64[1] = v100;
      v110 = v83;
      v112 = v84;
      do
      {
        v85 = *v80++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v83, v85, 1), v84, v85.f64[0]);
        v135 = vmlaq_f64(vmulq_laneq_f64(v121, v85, 1), v85, v82);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v82 = v127;
        v83 = v110;
        v84 = v112;
      }

      while (v80 != v81);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v86 = a3[1] - *a3;
    if (v86)
    {
      v87 = 0;
      v88 = a4->__begin_;
      v89 = a4->__begin_ + (v86 >> 3);
      v90 = vdupq_n_s64(((v86 >> 3) - 4) >> 2);
      v91 = a4->__begin_ + 2;
      do
      {
        v92 = vdupq_n_s64(v87);
        v93 = vmovn_s64(vcgeq_u64(v90, vorrq_s8(v92, xmmword_2500C1680)));
        if (vuzp1_s16(v93, *v90.i8).u8[0])
        {
          *(v91 - 2) = v87;
        }

        if (vuzp1_s16(v93, *&v90).i8[2])
        {
          *(v91 - 1) = v87 + 1;
        }

        if (vuzp1_s16(*&v90, vmovn_s64(vcgeq_u64(v90, vorrq_s8(v92, xmmword_2500C1670)))).i32[1])
        {
          *v91 = v87 + 2;
          v91[1] = v87 + 3;
        }

        v87 += 4;
        v91 += 4;
      }

      while ((((((v86 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v87);
      v94 = a4->__end_ - 1;
      do
      {
        v95 = *v88++;
        *v94-- = v95;
      }

      while (v88 != v89);
    }

    __x[0] = v86 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (__p)
    {
      v129 = __p;
      operator delete(__p);
    }

    if (v131)
    {
      v132 = v131;
      operator delete(v131);
    }
  }

  v96 = *a3;
  v97 = a3[1];
  while (v96 != v97)
  {
    v98 = vaddq_f64(a2[1], v96[1]);
    *v96 = vaddq_f64(*a2, *v96);
    v96[1] = v98;
    v96 += 2;
  }

LABEL_14:
  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  v31 = *MEMORY[0x277D85DE8];
}