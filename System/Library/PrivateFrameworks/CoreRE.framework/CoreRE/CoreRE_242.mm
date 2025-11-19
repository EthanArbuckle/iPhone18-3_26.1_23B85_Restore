uint64_t try_quantize_rgb_delta_blue_contract(int8x16_t *a1, int8x16_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(a5, vsubq_f32(a5, vzip2q_s32(vtrn1q_s32(a5, a5), a5)));
  v6 = vaddq_f32(a4, vsubq_f32(a4, vzip2q_s32(vtrn1q_s32(a4, a4), a4)));
  v7 = vmovn_s32(vorrq_s8(vcltzq_f32(vminnmq_f32(v6, v5)), vcgtq_f32(vmaxnmq_f32(v6, v5), vdupq_n_s32(0x437F0000u))));
  v8 = &unk_1ECF17000;
  {
    v59 = a2;
    v63 = a1;
    v51 = a3;
    v55 = v7;
    v44 = v5;
    v47 = v6;
    v5 = v44;
    v6 = v47;
    v7 = v55;
    v8 = &unk_1ECF17000;
    a3 = v51;
    v36 = v35;
    a2 = v59;
    a1 = v63;
    if (v36)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v5 = v44;
      v6 = v47;
      v7 = v55;
      v8 = &unk_1ECF17000;
      a3 = v51;
      a2 = v59;
      a1 = v63;
    }
  }

  if (vaddvq_s32(vshlq_u32(vmovl_u16(vand_s8(v7, 0x1000100010001)), v8[208])))
  {
    return 0;
  }

  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v10 = vcvtq_s32_f32(vaddq_f32(v5, v9));
  v11 = vaddq_s32(v10, v10);
  v12 = vandq_s8(vaddq_s32(v11, v11), vdupq_n_s32(0x1FEu));
  v13 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v14.i32[0] = v13[v12.i32[0] | 1];
  v14.i32[1] = v13[v12.i32[1] | 1];
  v14.i64[1] = v13[v12.i32[2] | 1];
  v12.i64[0] = 0x10000000100;
  v12.i64[1] = 0x10000000100;
  v15 = vandq_s8(v11, v12);
  v16 = vcvtq_s32_f32(vaddq_f32(v6, v9));
  v17 = vsubq_s32(vaddq_s32(v16, v16), vorrq_s8(v14, v15));
  v17.i32[3] = 0;
  v16.i64[0] = 0x3F0000003FLL;
  v16.i64[1] = 0x3F0000003FLL;
  v18 = vaddq_s32(v17, v16);
  {
    v60 = a2;
    v64 = a1;
    v52 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v56 = v14;
    v45 = v17;
    v48 = v15;
    v43 = v18;
    v18 = v43;
    v17 = v45;
    v15 = v48;
    v14 = v56;
    v13 = v52;
    v8 = &unk_1ECF17000;
    v38 = v37;
    a2 = v60;
    a1 = v64;
    if (v38)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v18 = v43;
      v17 = v45;
      v15 = v48;
      v14 = v56;
      v13 = v52;
      v8 = &unk_1ECF17000;
      a2 = v60;
      a1 = v64;
    }
  }

  v19.i64[0] = 0x7F0000007FLL;
  v19.i64[1] = 0x7F0000007FLL;
  v20 = vcgtq_u32(v19, v18);
  v21.i64[0] = 0x100000001;
  v21.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v20, v21), v8[208])))
  {
    return 0;
  }

  v22.i64[0] = 0x7F0000007FLL;
  v22.i64[1] = 0x7F0000007FLL;
  v23 = vorrq_s8(vshrq_n_u32(v15, 1uLL), vandq_s8(v17, v22));
  v24 = vaddq_s32(v23, v23);
  v25.i32[0] = v13[v24.i32[0] | 1];
  v25.i32[1] = v13[v24.i32[1] | 1];
  v25.i64[1] = v13[v24.i32[2] | 1];
  v24.i64[0] = 0xC0000000C0;
  v24.i64[1] = 0xC0000000C0;
  v26 = vandq_s8(veorq_s8(v25, v23), v24);
  v26.i32[3] = 0;
  {
    v61 = a2;
    v65 = a1;
    v57 = v14;
    v49 = v26;
    v53 = v25;
    v26 = v49;
    v25 = v53;
    v14 = v57;
    v8 = &unk_1ECF17000;
    v40 = v39;
    a2 = v61;
    a1 = v65;
    if (v40)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v26 = v49;
      v25 = v53;
      v14 = v57;
      v8 = &unk_1ECF17000;
      a2 = v61;
      a1 = v65;
    }
  }

  v27.i64[0] = 0x100000001;
  v27.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vbicq_s8(v27, vceqzq_s32(v26)), v8[208])))
  {
    return 0;
  }

  v28 = vshrq_n_u32(v25, 1uLL);
  v29 = vorrq_s8((*&vtstq_s32((*&v28 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v28 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v28 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
  if (v29.i32[0] + v29.i32[1] + v29.i32[2] >= 0)
  {
    return 0;
  }

  v30 = vaddq_s32(vsraq_n_u32((*&v25 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v14, 1uLL), v29);
  v31 = vshrq_n_u32(v30, 0x1FuLL);
  {
    v62 = a2;
    v66 = a1;
    v58 = v14;
    v50 = v30;
    v54 = v25;
    v46 = v31;
    v31 = v46;
    v30 = v50;
    v25 = v54;
    v14 = v58;
    v8 = &unk_1ECF17000;
    v42 = v41;
    a2 = v62;
    a1 = v66;
    if (v42)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v31 = v46;
      v30 = v50;
      v25 = v54;
      v14 = v58;
      v8 = &unk_1ECF17000;
      a2 = v62;
      a1 = v66;
    }
  }

  v32.i64[0] = 0xFF000000FFLL;
  v32.i64[1] = 0xFF000000FFLL;
  v33 = vcgtq_s32(v30, v32);
  if (vaddvq_s32(vshlq_u32(vsubq_s32(vbicq_s8(v31, v33), v33), v8[208])))
  {
    return 0;
  }

  *a1 = v14;
  *a2 = v25;
  return 1;
}

uint64_t try_quantize_rgb_delta(int8x16_t *a1, int8x16_t *a2, int a3, float32x4_t a4, float32x4_t a5)
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
  v15 = &unk_1ECF17000;
  {
    v50 = a2;
    v53 = a1;
    v44 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v47 = v10;
    v39 = v13;
    v41 = v11;
    v38 = v14;
    v14 = v38;
    v13 = v39;
    v11 = v41;
    v10 = v47;
    v9 = v44;
    v15 = &unk_1ECF17000;
    v33 = v32;
    a2 = v50;
    a1 = v53;
    if (v33)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v14 = v38;
      v13 = v39;
      v11 = v41;
      v10 = v47;
      v9 = v44;
      v15 = &unk_1ECF17000;
      a2 = v50;
      a1 = v53;
    }
  }

  v16.i64[0] = 0x7F0000007FLL;
  v16.i64[1] = 0x7F0000007FLL;
  v17 = vcgtq_u32(v16, v14);
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v17, v18), v15[208])))
  {
    return 0;
  }

  v19.i64[0] = 0x7F0000007FLL;
  v19.i64[1] = 0x7F0000007FLL;
  v20 = vorrq_s8(vshrq_n_u32(v11, 1uLL), vandq_s8(v13, v19));
  v21 = vaddq_s32(v20, v20);
  v22.i32[0] = v9[v21.i32[0] | 1];
  v22.i32[1] = v9[v21.i32[1] | 1];
  v22.i64[1] = v9[v21.i32[2] | 1];
  v21.i64[0] = 0xC0000000C0;
  v21.i64[1] = 0xC0000000C0;
  v23 = vandq_s8(veorq_s8(v22, v20), v21);
  v23.i32[3] = 0;
  {
    v51 = a2;
    v54 = a1;
    v48 = v10;
    v42 = v23;
    v45 = v22;
    v23 = v42;
    v22 = v45;
    v10 = v48;
    v15 = &unk_1ECF17000;
    v35 = v34;
    a2 = v51;
    a1 = v54;
    if (v35)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v23 = v42;
      v22 = v45;
      v10 = v48;
      v15 = &unk_1ECF17000;
      a2 = v51;
      a1 = v54;
    }
  }

  v24.i64[0] = 0x100000001;
  v24.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vbicq_s8(v24, vceqzq_s32(v23)), v15[208])))
  {
    return 0;
  }

  v26 = vshrq_n_u32(v22, 1uLL);
  v27 = vorrq_s8((*&vtstq_s32((*&v26 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v26 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v26 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
  if (v27.i32[0] + v27.i32[1] + v27.i32[2] < 0)
  {
    return 0;
  }

  v28 = vaddq_s32(vsraq_n_u32((*&v22 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v10, 1uLL), v27);
  v29 = vshrq_n_u32(v28, 0x1FuLL);
  {
    v52 = a2;
    v55 = a1;
    v49 = v10;
    v43 = v28;
    v46 = v22;
    v40 = v29;
    v29 = v40;
    v28 = v43;
    v22 = v46;
    v10 = v49;
    v15 = &unk_1ECF17000;
    v37 = v36;
    a2 = v52;
    a1 = v55;
    if (v37)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v29 = v40;
      v28 = v43;
      v22 = v46;
      v10 = v49;
      v15 = &unk_1ECF17000;
      a2 = v52;
      a1 = v55;
    }
  }

  v30.i64[0] = 0xFF000000FFLL;
  v30.i64[1] = 0xFF000000FFLL;
  v31 = vcgtq_s32(v28, v30);
  if (vaddvq_s32(vshlq_u32(vsubq_s32(vbicq_s8(v29, v31), v31), v15[208])))
  {
    return 0;
  }

  *a1 = v10;
  *a2 = v22;
  return 1;
}

uint64_t try_quantize_rgb_blue_contract(_OWORD *a1, _OWORD *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(a4, vsubq_f32(a4, vzip2q_s32(vtrn1q_s32(a4, a4), a4)));
  v6 = vaddq_f32(a5, vsubq_f32(a5, vzip2q_s32(vtrn1q_s32(a5, a5), a5)));
  v7 = vmovn_s32(vorrq_s8(vcltzq_f32(vminnmq_f32(v5, v6)), vcgtq_f32(vmaxnmq_f32(v5, v6), vdupq_n_s32(0x437F0000u))));
  v8 = &unk_1ECF17000;
  {
    v31 = a1;
    v29 = a2;
    v28 = a3;
    v30 = v7;
    v26 = v5;
    v27 = v6;
    v5 = v26;
    v6 = v27;
    v8 = &unk_1ECF17000;
    v7 = v30;
    a3 = v28;
    a2 = v29;
    v25 = v24;
    a1 = v31;
    if (v25)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v5 = v26;
      v6 = v27;
      v8 = &unk_1ECF17000;
      v7 = v30;
      a3 = v28;
      a1 = v31;
      a2 = v29;
    }
  }

  if (vaddvq_s32(vshlq_u32(vmovl_u16(vand_s8(v7, 0x1000100010001)), v8[208])))
  {
    return 0;
  }

  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v10 = vcvtq_s32_f32(vaddq_f32(v5, v9));
  v11 = vaddq_s32(v10, v10);
  v12 = vsubq_f32(v5, vcvtq_f32_s32(v10));
  v13 = vdupq_n_s32(0xBDCCCCCD);
  v14 = vsubq_s32(v11, vcgeq_f32(v12, v13));
  v15 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v16 = v15[v14.i32[0]];
  v17 = v15[v14.i32[1]];
  v18 = v15[v14.i32[2]];
  v19 = vcvtq_s32_f32(vaddq_f32(v6, v9));
  v20 = vsubq_s32(vaddq_s32(v19, v19), vcgeq_f32(vsubq_f32(v6, vcvtq_f32_s32(v19)), v13));
  if (v15[v20.i32[1]] + v15[v20.i32[0]] + v15[v20.i32[2]] <= v17 + v16 + v18)
  {
    return 0;
  }

  LODWORD(v21) = v15[v20.i32[0]];
  DWORD1(v21) = v15[v20.i32[1]];
  *(&v21 + 1) = v15[v20.i32[2]];
  *&v22 = __PAIR64__(v17, v16);
  *(&v22 + 1) = v18;
  *a1 = v21;
  *a2 = v22;
  return 1;
}

float quantize_rgb(_OWORD *a1, _OWORD *a2, int a3, float32x4_t a4, float32x4_t a5)
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

_BYTE *quantize_rgbs(_BYTE *result, int a2, int8x16_t a3)
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

_BYTE *quantize_hdr_rgb(_BYTE *result, int a2, float32x4_t a3, float32x4_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v10 = vdupq_n_s32(0x477FFF00u);
  v11 = vminnmq_f32(vmaxnmq_f32(a3, 0), v10);
  v12 = vminnmq_f32(vmaxnmq_f32(a4, 0), v10);
  v13 = v87;
  if (*v12.i32 <= *&v12.i32[1] || *v12.i32 <= *&v12.i32[2])
  {
    if (*&v12.i32[1] <= *&v12.i32[2])
    {
      v18 = vrev64q_s32(v11);
      v17 = vextq_s8(v18, v18, 0xCuLL);
      v19 = vrev64q_s32(v12);
      v16 = vextq_s8(v19, v19, 0xCuLL);
      v15 = 2;
    }

    else
    {
      v17.i64[0] = vrev64q_s32(v11).u64[0];
      v17.i64[1] = v11.i64[1];
      v16.i64[0] = vrev64q_s32(v12).u64[0];
      v16.i64[1] = v12.i64[1];
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
    v16 = v12;
    v17 = v11;
  }

  *&a8 = fmaxf(*v16.i32, 0.0);
  if (*v16.i32 > 65535.0)
  {
    *&a8 = 65535.0;
  }

  *&a9 = *&a8 - *v17.i32;
  v20 = vdup_lane_s32(*&a8, 0);
  v21 = vextq_s8(v16, v16, 4uLL).u64[0];
  v22 = vsub_f32(v20, v21);
  v23 = vsub_f32(vsub_f32(v20, v22), vdup_lane_s32(*&a9, 0));
  v24 = vextq_s8(v17, v17, 4uLL).u64[0];
  v25 = vabd_f32(v23, v24);
  v26 = 7;
  v27 = &color_unquant_to_uquant_tables + 512 * a2 - 2048;
  v28 = vdup_n_s32(0x477FFF00u);
  v29 = vdup_n_s32(0xC77FFF00);
  do
  {
    v30 = v26;
    v31 = (&quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_cutoffs + 16 * v26);
    if (v22.f32[0] <= *v31 && v22.f32[1] <= *v31 && *&a9 <= v31[1])
    {
      v34 = v31 + 2;
      v35 = vld1_dup_f32(v34);
      v36 = vcgt_f32(v25, v35);
      if ((v36.i8[0] & 1) == 0 && (v36.i8[4] & 1) == 0)
      {
        v37 = quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_scales[v26];
        v38 = quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_rscales[v26];
        v39 = (&quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_bits + 16 * v26);
        v40 = ((*&a8 * v37) + 0.5);
        v41 = v27[(2 * v40) | 1];
        v9.f32[0] = v38 * (v40 & 0xFFFFFF00 | v41);
        v42 = fmaxf(v9.f32[0] - *v17.i32, 0.0);
        v43 = (v9.f32[0] - *v17.i32) <= 65535.0 ? v42 : 65535.0;
        v44 = ((v37 * v43) + 0.5);
        if (1 << v39[2] > v44)
        {
          v45 = 1 << v39[1];
          v46 = 1 << (v39[3] - 1);
          v47 = ((v37 * v43) + 0.5) & 0x3F | (v30 << 7) | (v40 >> 2) & 0x40;
          do
          {
            v48 = v27[(2 * v47) | 1];
            v49 = v47 & 0xC0;
            v47 -= v49 != (v48 & 0xC0);
          }

          while (v49 != (v48 & 0xC0));
          v9 = vdup_lane_s32(v9, 0);
          v50 = vsub_f32(v9, v21);
          v51 = vcgt_f32(v50, v28);
          v52 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(v51, v28, vmaxnm_f32(v50, 0)), v37), 0x3F0000003F000000));
          if (v45 > v52.i32[0] && v45 > v52.i32[1])
          {
            if (v30 > 7)
            {
              v54 = 0;
            }

            else
            {
              v54 = ((1 << v30) & 0x5B) != 0 ? (v52.i32[0] >> 6) & 1 : (v40 >> 9) & 1;
            }

            if (v30 > 7)
            {
              v55 = 0;
            }

            else if (((1 << v30) & 0x5B) != 0)
            {
              v55 = (v52.i32[1] >> 6) & 1;
            }

            else
            {
              v55 = ((1 << v30) & 0xA0) != 0 ? (v40 >> 10) & 1 : (v44 >> 6) & 1;
            }

            v56 = v52.i8[0] & 0x3F | (v54 << 6) & 0xFFFFFF7F | (((v30 >> 1) & 1) << 7);
            do
            {
              v57 = v27[(2 * v56) | 1];
              v58 = v56 & 0xC0;
              v56 -= v58 != (v57 & 0xC0);
            }

            while (v58 != (v57 & 0xC0));
            v59 = v52.i8[4] & 0x3F | (v55 << 6) | (32 * v30) & 0x80;
            do
            {
              v60 = v27[(2 * v59) | 1];
              v61 = v59 & 0xC0;
              v59 -= v61 != (v60 & 0xC0);
            }

            while (v61 != (v60 & 0xC0));
            v62.i32[0] = v57 & 0x3F;
            v62.i32[1] = v60 & 0xFFFFFF3F;
            *v51.i32 = v38 * (v44 & 0xFFFFFFC0 | v48 & 0x3F);
            v63 = vsub_f32(vsub_f32(vsub_f32(v9, vmul_n_f32(vcvt_f32_s32(vorr_s8((*&v52 & 0xFFFFFFC0FFFFFFC0), v62)), v38)), vdup_lane_s32(v51, 0)), v24);
            v64 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(vcgt_f32(v63, v28), v28, vmaxnm_f32(v63, v29)), v37), 0x3F0000003F000000));
            v9 = vabs_s32(v64);
            v65 = vcgt_s32(vdup_n_s32(v46), v9);
            if (v65.i32[0] & v65.i32[1])
            {
              v76 = 0;
              if (v30 > 3)
              {
                if ((v30 - 6) < 2)
                {
                  v76 = (v40 >> 11) & 1;
                  goto LABEL_76;
                }

                if (v30 == 4)
                {
                  goto LABEL_74;
                }

                if (v30 == 5)
                {
                  v76 = (v44 >> 7) & 1;
                  goto LABEL_78;
                }
              }

              else
              {
                if (v30 > 1)
                {
                  if (v30 != 2)
                  {
                    v76 = (v40 >> 9) & 1;
                    goto LABEL_78;
                  }
                }

                else if (v30)
                {
                  if (v30 != 1)
                  {
                    goto LABEL_76;
                  }

LABEL_74:
                  v76 = (v52.i32[0] >> 7) & 1;
                  goto LABEL_76;
                }

                v76 = (v64.i32[0] >> 6) & 1;
              }

LABEL_76:
              if (v30 > 7)
              {
                v77 = 0;
                goto LABEL_81;
              }

              if (((1 << v30) & 0xE8) == 0)
              {
                v77 = (v64.i32[1] >> 6) & 1;
                if (((1 << v30) & 5) == 0)
                {
                  v77 = (v52.i32[1] >> 7) & 1;
                }

                goto LABEL_81;
              }

LABEL_78:
              v77 = (v44 >> 6) & 1;
LABEL_81:
              if ((v30 | 2) == 6)
              {
                v78 = vshl_u32(vdup_n_s32(v40), 0xFFFFFFF6FFFFFFF7);
              }

              else
              {
                v78 = vshr_n_u32(v64, 5uLL);
              }

              v79 = v64.i8[0] & 0x1F | (v15 << 7) | (v76 << 6) | (32 * (v78.i8[0] & 1));
              v80 = v15 << 6;
              do
              {
                v81 = v27[(2 * v79) | 1];
                v82 = v79 & 0xF0;
                v79 -= v82 != (v81 & 0xF0);
              }

              while (v82 != (v81 & 0xF0));
              v83 = (32 * v78.i8[4]) & 0x20 | v80 & 0x80 | v64.i8[4] & 0x1F | (v77 << 6);
              do
              {
                v84 = v27[(2 * v83) | 1];
                v85 = v83 & 0xF0;
                v83 -= v85 != (v84 & 0xF0);
              }

              while (v85 != (v84 & 0xF0));
              *result = v41;
              result[1] = v48;
              result[2] = v57;
              result[3] = v60;
              result[4] = v81;
              result[5] = v84;
              return result;
            }
          }
        }
      }
    }

    v26 = v30 - 1;
  }

  while (v30);
  v66 = 0;
  v86 = vzip1q_s32(v11, v12);
  v87[0] = vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL));
  do
  {
    v67 = *&v86.i32[v66];
    v68 = fmaxf(v67, 0.0);
    if (v67 <= 65020.0)
    {
      v69 = v68;
    }

    else
    {
      v69 = 65020.0;
    }

    *&v86.i32[v66++] = v69;
  }

  while (v66 != 6);
  for (i = 0; i != 4; ++i)
  {
    result[i] = v27[2 * ((*&v86.i32[i] * 0.0039062) + 0.5) + 1];
  }

  v71 = 0;
  do
  {
    v72 = v71;
    v73 = ((*v13 * 0.0019531) + 0.5) ^ 0xFFFFFF80;
    do
    {
      v74 = v27[(2 * v73) | 1];
      v75 = v73 & 0xC0;
      v73 -= v75 != (v74 & 0xC0);
    }

    while (v75 != (v74 & 0xC0));
    result[i] = v74;
    v71 = 1;
    v13 = v87 + 1;
    i = 5;
  }

  while ((v72 & 1) == 0);
  return result;
}

uint64_t try_quantize_alpha_delta(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5)
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

uint64_t unpack_weights(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13, int32x4_t a14)
{
  v14 = *(a2 + 52);
  v15 = *(a2 + 68);
  v16 = *(a2 + 84);
  v17 = *(a2 + 100);
  if (a4)
  {
    if (*(result + 3))
    {
      v18 = 0;
      v19 = a3 + 6;
      do
      {
        v20 = (v19 + v18);
        v21 = vld1_dup_f32(v20);
        v22 = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v21)));
        v23.i64[0] = 0x800000008;
        v23.i64[1] = 0x800000008;
        v24 = a3;
        v25.i64[0] = 0x800000008;
        v25.i64[1] = 0x800000008;
        do
        {
          a13.i32[0] = *(v24 + 222);
          a14.i32[0] = *(v24 + 1086);
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
    v29 = a3 + 6;
    do
    {
      v30 = (v29 + v28);
      v31 = vld1_dup_f32(v30);
      v32 = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v31)));
      v33.i64[0] = 0x800000008;
      v33.i64[1] = 0x800000008;
      v34 = a3;
      do
      {
        a12.i32[0] = *(v34 + 222);
        a13.i32[0] = *(v34 + 1086);
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

float32_t compute_symbolic_block_difference_2plane(int *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, double a5, double a6, double a7, double a8, double a9, int32x4_t a10, int32x4_t a11, int32x4_t a12)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    return 1.0e30;
  }

  unpack_weights(a2, a3, a2 + 129888 * *(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11300848) + 11304946) + 592, 1, v56, v55, a5, a6, a7, a8, a9, a10, a11, a12);
  v16 = *(a3 + 3);
  v52 = 0;
  unpack_color_endpoints(*a1, *(a3 + 8), (a3 + 20), &v52 + 1, &v52, &v54, &v53, v17, v18, v19, v20);
  v23 = *(a2 + 3);
  if (*(a2 + 3))
  {
    v21.i32[0] = 0;
    v24 = vdupq_n_s32(v16);
    v22.i32[0] = *a1;
    v25 = vand_s8(vdup_lane_s32(vceq_s32(v22, v21), 0), 0xFFFFFFFFFFFFLL);
    if (a4[222].i8[1])
    {
      v26 = -1;
    }

    else
    {
      v26 = 0;
    }

    v28 = vdup_n_s16(v26);
    v27 = vorr_s8(v25, v28);
    v28.i32[0] = a1[10];
    v29 = a4[221];
    v30 = vdupq_lane_s32(v28, 0).u64[0];
    v31 = v56;
    v32 = v55;
    v33 = vceqq_s32(v24, xmmword_1E3062D20);
    v34.i64[0] = 0x4000000040;
    v34.i64[1] = 0x4000000040;
    v35.i64[0] = 0x2000000020;
    v35.i64[1] = 0x2000000020;
    v36 = vdupq_n_s32(0x101u);
    v37 = vcltzq_s32(vshlq_n_s32(vmovl_u16(v27), 0x1FuLL));
    v38 = vdupq_n_s32(0x58635FA9u);
    v39 = vdupq_n_s32(0x7149F2CAu);
    result = -1.0e30;
    v41 = 0uLL;
    do
    {
      v42 = vld1q_dup_f32(v31++);
      v46 = vld1q_dup_f32(v32++);
      v43 = vbslq_s8(v33, v46, v42);
      v44 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v34, v43), v54), v43, v53), v35), 6uLL);
      v45 = vcvtq_f32_s32(vbslq_s8(v37, vmulq_s32(vshrq_n_s32(v44, 8uLL), v36), v44));
      v46.i32[0] = a4->i32[0];
      v47 = a4[162].f32[0];
      if ((a1[1] & 0x40) != 0)
      {
        if (v45.f32[3] == 0.0)
        {
          return result;
        }

        *&v48 = *v28.i32 * vmuls_lane_f32(v45.f32[3], v45, 2);
        v45.i64[0] = vmulq_n_f32(vmulq_laneq_f32(v45, v45, 3), *v28.i32).u64[0];
        v45.i64[1] = __PAIR64__(1.0, v48);
        v46.i32[1] = a4[54].i32[0];
        *v46.f32 = vmul_f32(v30, vmul_n_f32(*v46.f32, v47));
        v46.f32[2] = *v28.i32 * (a4[108].f32[0] * v47);
        v46.i32[3] = 1.0;
      }

      else
      {
        v46.i32[1] = a4[54].i32[0];
        v46.i32[2] = a4[108].i32[0];
        v46.i32[3] = a4[162].i32[0];
      }

      v49 = vsubq_f32(v46, v45);
      v50 = vminnmq_f32(vmaxq_f32(v49, vsubq_f32(0, v49)), v38);
      v51 = vmulq_f32(v29, vmulq_f32(v50, v50));
      *v51.i8 = vadd_f32(*&vextq_s8(v51, v51, 8uLL), *v51.i8);
      v41 = vaddq_f32(v41, vminnmq_f32(vdupq_lane_s32(vpadd_f32(*v51.i8, *v51.i8), 0), v39));
      a4 = (a4 + 4);
      --v23;
    }

    while (v23);
  }

  else
  {
    v41.i32[0] = 0;
  }

  return v41.f32[0];
}

double compute_symbolic_block_difference_1plane(int *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t a5, double a6, double a7, double a8, double a9, int32x4_t a10, int32x4_t a11, int32x4_t a12)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v16 = *(a3 + 1);
    if (v16 < 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(a2 + ((v16 - 2) << 11) + 2 * *(a3 + 6) + 14660656);
    }

    unpack_weights(a2, a3, a2 + 129888 * *(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11300848) + 11304946) + 592, 0, v57, 0, *a5.i64, a6, a7, a8, a9, a10, a11, a12);
    if (!v16)
    {
      a5.i64[0] = 0;
      return *a5.i64;
    }

    v18.i32[0] = 0;
    v22 = 0;
    v19.i32[0] = *a1;
    v23 = vand_s8(vdup_lane_s32(vceq_s32(*v19.i8, v18), 0), 0xFFFFFFFFFFFFLL);
    v24 = (v16 << 10) - 2048;
    if (v16 == 1)
    {
      v24 = 3072;
    }

    v25 = a2 + 1088 * v24 + 1088 * v17;
    v26 = v25 + 11317236;
    v27 = (v25 + 11317456);
    if (a4[222].i8[1])
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    *v19.i8 = vdup_n_s16(v28);
    v29 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(v23, *v19.i8)), 0x1FuLL));
    a5 = 0uLL;
    v51 = vdupq_n_s32(0x58635FA9u);
    v52 = vdupq_n_s32(0x101u);
    v49 = v29;
    v50 = vdupq_n_s32(0x7149F2CAu);
    do
    {
      v53 = a5;
      v54 = 0;
      unpack_color_endpoints(*a1, *(a3 + 8 + v22), (a3 + 20 + 8 * v22), &v54 + 1, &v54, &v56, &v55, a5, v19, v20, v21);
      v30 = *(v26 + v22);
      if (*(v26 + v22))
      {
        v19 = v55;
        v20.i32[0] = a1[10];
        v21 = a4[221];
        v31 = vdupq_lane_s32(*v20.i8, 0).u64[0];
        v32 = v27;
        a5 = v53;
        v33.i64[0] = 0x4000000040;
        v33.i64[1] = 0x4000000040;
        v34.i64[0] = 0x2000000020;
        v34.i64[1] = 0x2000000020;
        while (1)
        {
          v35 = *v32++;
          v36 = &v57[v35];
          v37 = vld1q_dup_f32(v36);
          v38 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(vsubq_s32(v33, v37), v56), v37, v55), v34), 6uLL);
          v39 = vcvtq_f32_s32(vbslq_s8(v49, vmulq_s32(vshrq_n_s32(v38, 8uLL), v52), v38));
          v40.i32[0] = a4->i32[v35];
          v41 = a4[54].i32[v35];
          v42 = a4[108].f32[v35];
          v43 = a4[162].f32[v35];
          if ((a1[1] & 0x40) != 0)
          {
            if (v39.f32[3] == 0.0)
            {
              a5.i32[0] = -246811958;
              return *a5.i64;
            }

            v44 = vmuls_lane_f32(v39.f32[3], v39, 2);
            v39.i64[0] = vmulq_n_f32(vmulq_laneq_f32(v39, v39, 3), *v20.i32).u64[0];
            v39.f32[2] = *v20.i32 * v44;
            v39.i32[3] = 1.0;
            v40.i32[1] = v41;
            *v40.f32 = vmul_f32(v31, vmul_n_f32(*v40.f32, v43));
            v40.f32[2] = *v20.i32 * (v42 * v43);
            v40.i32[3] = 1.0;
          }

          else
          {
            v40.i32[1] = v41;
            v40.i64[1] = __PAIR64__(LODWORD(v43), LODWORD(v42));
          }

          v45 = vsubq_f32(v40, v39);
          v46 = vminnmq_f32(vmaxq_f32(v45, vsubq_f32(0, v45)), v51);
          v47 = vmulq_f32(v21, vmulq_f32(v46, v46));
          *v47.i8 = vadd_f32(*&vextq_s8(v47, v47, 8uLL), *v47.i8);
          a5 = vaddq_f32(a5, vminnmq_f32(vdupq_lane_s32(vpadd_f32(*v47.i8, *v47.i8), 0), v50));
          if (!--v30)
          {
            goto LABEL_22;
          }
        }
      }

      a5 = v53;
LABEL_22:
      ++v22;
      v27 += 216;
    }

    while (v22 != v16);
  }

  else
  {
    a5.i32[0] = 1900671690;
  }

  return *a5.i64;
}

void compute_symbolic_block_difference_1plane_1partition(int *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, double a5, double a6, double a7, double a8, double a9, int32x4_t a10, int32x4_t a11, int32x4_t a12)
{
  v76 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    unpack_weights(a2, a3, a2 + 129888 * *(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11300848) + 11304946) + 592, 0, v75, 0, a5, a6, a7, a8, a9, a10, a11, a12);
    v72 = 0;
    unpack_color_endpoints(*a1, *(a3 + 8), (a3 + 20), &v72 + 1, &v72, &v74, &v73, v16, v17, v18, v19);
    v22 = *(a2 + 3);
    if (*(a2 + 3))
    {
      v20.i32[0] = 0;
      v23 = 0;
      v21.i32[0] = *a1;
      v24 = vandq_s8(vdupq_lane_s32(*&vceqq_s32(v21, v20), 0), xmmword_1E3104610);
      if (a4[222].i8[1])
      {
        v25 = -1;
      }

      else
      {
        v25 = 0;
      }

      v26 = vorrq_s8(v24, vdupq_n_s32(v25));
      v27 = v26.i32[1];
      v28 = v26.i32[2];
      v29 = v26.i32[3];
      if (v26.i32[0])
      {
        v30 = -1;
      }

      else
      {
        v30 = 0;
      }

      v31 = vdupq_n_s32(v30);
      if (v27)
      {
        v32 = -1;
      }

      else
      {
        v32 = 0;
      }

      v33 = vdupq_n_s32(v32);
      if (v28)
      {
        v34 = -1;
      }

      else
      {
        v34 = 0;
      }

      v35 = vdupq_n_s32(v34);
      v36 = vdupq_lane_s32(*v73.i8, 0);
      v37 = vdupq_lane_s32(*v73.i8, 1);
      v38 = vdupq_laneq_s32(v73, 2);
      v39 = vdupq_laneq_s32(v73, 3);
      v40 = vdupq_lane_s32(*v74.i8, 0);
      v41 = vdupq_lane_s32(*v74.i8, 1);
      v42 = vdupq_laneq_s32(v74, 2);
      v43 = vdupq_laneq_s32(v74, 3);
      if (v29)
      {
        v44 = -1;
      }

      else
      {
        v44 = 0;
      }

      v45 = vdupq_n_s32(v44);
      v46 = a4[221];
      v47 = vdupq_n_s32(v22);
      v48 = xmmword_1E3062D20;
      v49 = vdupq_n_s32(0x101u);
      v50 = vdupq_n_s32(0x58635FA9u);
      v51 = v75;
      v52.i64[0] = 0x4000000040;
      v52.i64[1] = 0x4000000040;
      v53.i64[0] = 0x2000000020;
      v53.i64[1] = 0x2000000020;
      v54.i64[0] = 0x400000004;
      v54.i64[1] = 0x400000004;
      v55 = 0uLL;
      do
      {
        v56 = *v51++;
        v57 = vsubq_s32(v52, v56);
        v58 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v57, v40), v56, v36), v53), 6uLL);
        v59 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v57, v41), v56, v37), v53), 6uLL);
        v60 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v57, v42), v56, v38), v53), 6uLL);
        v61 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v57, v43), v56, v39), v53), 6uLL);
        v62 = vsubq_f32(*a4, vcvtq_f32_s32(vbslq_s8(v31, vmulq_s32(vshrq_n_s32(v58, 8uLL), v49), v58)));
        v63 = vminnmq_f32(vmaxq_f32(v62, vsubq_f32(0, v62)), v50);
        v64 = vsubq_f32(a4[54], vcvtq_f32_s32(vbslq_s8(v33, vmulq_s32(vshrq_n_s32(v59, 8uLL), v49), v59)));
        v65 = vsubq_f32(a4[108], vcvtq_f32_s32(vbslq_s8(v35, vmulq_s32(vshrq_n_s32(v60, 8uLL), v49), v60)));
        v66 = vminnmq_f32(vmaxq_f32(v64, vsubq_f32(0, v64)), v50);
        v67 = vminnmq_f32(vmaxq_f32(v65, vsubq_f32(0, v65)), v50);
        v68 = vsubq_f32(a4[162], vcvtq_f32_s32(vbslq_s8(v45, vmulq_s32(vshrq_n_s32(v61, 8uLL), v49), v61)));
        v69 = vminnmq_f32(vmaxq_f32(v68, vsubq_f32(0, v68)), v50);
        v70 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(v63, v63), v46.f32[0]), vmulq_lane_f32(vmulq_f32(v66, v66), *v46.f32, 1)), vmulq_laneq_f32(vmulq_f32(v67, v67), v46, 2)), vmulq_laneq_f32(vmulq_f32(v69, v69), v46, 3));
        v71 = vcgtq_s32(v47, v48);
        v48 = vaddq_s32(v48, v54);
        v55 = vaddq_f32(v55, vandq_s8(v70, v71));
        v23 += 4;
        ++a4;
      }

      while (v23 < v22);
    }
  }
}

void prepare_angular_tables(void)
{
  v0 = 0;
  v1 = &cos_table;
  v2 = &sin_table;
  do
  {
    v3 = 0;
    ++v0;
    v4 = v2;
    v5 = v1;
    do
    {
      v6 = __sincosf_stret((v0 * 0.099733) * v3);
      *v4 = v6.__sinval;
      v4 += 32;
      *v5 = v6.__cosval;
      v5 += 32;
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
  v7 = 0;
  v8 = (a5 + 207008);
  v9 = 8;
  if (a1)
  {
    v9 = 4;
  }

  v10 = ~(-1 << (a4 + 1));
  v11 = *(a2 + v9) << 6;
  v12 = (a2 + 594);
  v13 = (a2 + 66);
  v26 = a5 + 207008;
  v27 = a5 + 204224;
  do
  {
    if ((*v13 & v10) != 0)
    {
      v14 = *(v13 - 2);
      if (v14 >= a4)
      {
        v14 = a4;
      }

      if (v14 >= 7)
      {
        v15 = 7;
      }

      else
      {
        v15 = v14;
      }

      compute_angular_endpoints_for_quant_levels(*v12, (a3 + 4 * (v7 & 0xFFFFFFC0)), v15, v8 - 696, v8);
    }

    v7 += 64;
    v8 += 8;
    v12 += 129888;
    v13 += 3;
  }

  while (v11 != v7);
  v16 = (a5 + 187840);
  v17 = 20;
  if (a1)
  {
    v17 = 16;
  }

  v18 = *(a2 + v17);
  v19 = (a2 + 11304947);
  do
  {
    v20 = *v19;
    if (v20 > 7)
    {
      *v16 = 0.0;
      v22 = 1.0;
    }

    else
    {
      v21 = *(v19 - 1);
      *v16 = *(v27 + 32 * v21 + 4 * v20);
      v22 = *(v26 + 32 * v21 + 4 * v20);
    }

    v16[2048] = v22;
    ++v16;
    v19 += 6;
    --v18;
  }

  while (v18);
}

void compute_angular_endpoints_for_quant_levels(unsigned int a1, const float *a2, int a3, float *a4, float *a5)
{
  v8 = 0;
  v9 = 0;
  v97 = *MEMORY[0x1E69E9840];
  v10 = steps_for_quant_level[a3];
  v11 = vdupq_n_s32(0x427C0000u);
  v12 = a1;
  v13 = vdupq_n_s32(0x4B400000u);
  v14.i64[0] = 0x3F0000003FLL;
  v14.i64[1] = 0x3F0000003FLL;
  do
  {
    *&__b[v8 * 4] = vandq_s8(vaddq_f32(vmulq_f32(*&a2[v8], v11), v13), v14);
    v9 += 4;
    v8 += 4;
  }

  while (v9 < a1);
  v15 = 0;
  v16 = 4 * a1;
  v17 = vdupq_n_s32(0x3FC90FDBu);
  v18 = 0uLL;
  v19 = vdupq_n_s32(0x3E8F5C29u);
  __asm { FMOV            V22.4S, #1.0 }

  v25 = vdupq_n_s32(0x40490FDBu);
  v26.i64[0] = 0x8000000080000000;
  v26.i64[1] = 0x8000000080000000;
  v27 = &qword_1EE1C4000;
  v28 = vdupq_n_s32(0x3E22F983u);
  do
  {
    v29 = 0;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = *&__b[v29] << 7;
      v30 = vaddq_f32(v30, *(&cos_table[v15] + v32));
      v31 = vaddq_f32(v31, *(&sin_table[v15] + v32));
      v29 += 4;
    }

    while (v16 != v29);
    if ((atomic_load_explicit(_MergedGlobals_583, memory_order_acquire) & 1) == 0)
    {
      v93 = v12;
      v94 = a2;
      v95 = v16;
      v91 = v17;
      v92 = _Q22;
      v89 = v25;
      v90 = v19;
      v87 = v30;
      v88 = v28;
      v86 = v31;
      v40 = __cxa_guard_acquire(_MergedGlobals_583);
      v31 = v86;
      v30 = v87;
      v28 = v88;
      v25 = v89;
      v26.i64[0] = 0x8000000080000000;
      v26.i64[1] = 0x8000000080000000;
      v19 = v90;
      v17 = v91;
      v18 = 0uLL;
      _Q22 = v92;
      v27 = &qword_1EE1C4000;
      a2 = v94;
      v16 = v95;
      v12 = v93;
      if (v40)
      {
        xmmword_1EE1C4A10 = v26;
        __cxa_guard_release(_MergedGlobals_583);
        v31 = v86;
        v30 = v87;
        v28 = v88;
        v25 = v89;
        v26.i64[0] = 0x8000000080000000;
        v26.i64[1] = 0x8000000080000000;
        v19 = v90;
        v17 = v91;
        v18 = 0uLL;
        _Q22 = v92;
        v27 = &qword_1EE1C4000;
        a2 = v94;
        v16 = v95;
        v12 = v93;
      }
    }

    v33 = vdivq_f32(v31, v30);
    v34 = vmaxq_f32(v33, vsubq_f32(v18, v33));
    v35 = vcgtq_f32(vmaxq_f32(v34, vsubq_f32(v18, v34)), _Q22);
    v36 = vorrq_s8(vandq_s8(v34, v26), v17);
    v37 = vbslq_s8(v35, vdivq_f32(_Q22, v34), v34);
    v38 = vdivq_f32(v37, vaddq_f32(vmulq_f32(vmulq_f32(v37, v37), v19), _Q22));
    v39 = vbslq_s8(v35, vsubq_f32(v36, v38), v38);
    *&__b[4 * v15 + 1216] = vmulq_f32(veorq_s8(vandq_s8(v31, v26), vbslq_s8(vcgtq_u32(v27[161], v30), v39, vsubq_f32(v25, v39))), v28);
    v15 += 4;
  }

  while (v15 < v10);
  v41 = 0;
  v42 = xmmword_1E3113520;
  v43 = vdupq_n_s32(v10 + 3);
  v44.i64[0] = 0x200000002;
  v44.i64[1] = 0x200000002;
  __asm { FMOV            V3.4S, #4.0 }

  do
  {
    v46.i64[0] = 0xC3000000C3000000;
    v46.i64[1] = 0xC3000000C3000000;
    v47.i64[0] = 0x4300000043000000;
    v47.i64[1] = 0x4300000043000000;
    v48 = 0uLL;
    v49 = a2;
    v50 = v12;
    v51 = 0uLL;
    v52 = 0uLL;
    do
    {
      v53 = *v49++;
      v54 = vsubq_f32(vmulq_n_f32(v42, v53), *&__b[4 * v41 + 1216]);
      v55 = vrndnq_f32(v54);
      v56 = vsubq_f32(v54, v55);
      v52 = vaddq_f32(v52, vmulq_f32(v56, v56));
      v57 = vcgtq_f32(v47, v55);
      v47 = vbslq_s8(v57, v55, v47);
      v58 = vbicq_s8(v48, v57);
      v59 = vaddq_f32(v56, v56);
      v48 = vbslq_s8(vceqq_f32(v55, v47), vsubq_f32(vaddq_f32(v58, _Q22), v59), v58);
      v60 = vcgtq_f32(v55, v46);
      v46 = vbslq_s8(v60, v55, v46);
      v61 = vbicq_s8(v51, v60);
      v51 = vbslq_s8(vceqq_f32(v55, v46), vaddq_f32(v59, vaddq_f32(v61, _Q22)), v61);
      --v50;
    }

    while (v50);
    *&__b[4 * v41 + 1088] = v47;
    *&__b[4 * v41 + 960] = vmaxq_s32(vminq_s32(vcvtq_s32_f32(vaddq_f32(vsubq_f32(v46, v47), _Q22)), v43), v44);
    v62 = vdivq_f32(_Q22, v42);
    v63 = vmulq_f32(v62, v62);
    *&__b[4 * v41 + 832] = vmulq_f32(v63, v52);
    *&__b[4 * v41 + 704] = vmulq_f32(v63, v48);
    *&__b[4 * v41 + 576] = vmulq_f32(v63, v51);
    v42 = vaddq_f32(v42, _Q3);
    v41 += 4;
  }

  while (v41 < v10);
  memset_pattern16(__b, &unk_1E3113530, 16 * v10 + 64);
  v67 = 0;
  if (v10 <= 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = v10;
  }

  do
  {
    v64.i32[0] = *&__b[4 * v67 + 832];
    v65.f32[0] = v64.f32[0] + *&__b[4 * v67 + 704];
    v69 = *&__b[4 * v67 + 576];
    v70 = &__b[16 * *&__b[4 * v67 + 960]];
    LODWORD(v71) = v64.i32[0];
    *(&v71 + 1) = v67;
    v72.i64[1] = 1065353216;
    *v72.i32 = v65.f32[0];
    v73 = v70[-2];
    *&v72.i32[1] = v67;
    v74 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v70[-1], v65)), 0)), v72, v70[-1]);
    v65.f32[0] = v65.f32[0] + v69;
    *&v75 = v64.f32[0] + v69;
    v66.f32[0] = *&v75;
    *v70 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(*v70, v64)), 0)), v71, *v70);
    *(&v75 + 1) = v67;
    v76 = vcgtq_f32(v74, v66);
    v66.i64[1] = 1065353216;
    v66.i32[0] = v65.i32[0];
    v66.f32[1] = v67;
    v77 = vmovl_s16(vdup_lane_s16(vmovn_s32(v76), 0));
    v64 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v73, v65)), 0)), v66, v73);
    v70[-2] = v64;
    v70[-1] = vbslq_s8(v77, v75, v74);
    ++v67;
  }

  while (v68 != v67);
  v78 = steps_for_quant_level;
  if ((a3 + 1) > 1)
  {
    v79 = (a3 + 1);
  }

  else
  {
    v79 = 1;
  }

  do
  {
    v80 = *v78++;
    v81 = &__b[16 * v80];
    v82 = v81[2];
    LODWORD(v81) = v81[1] & ~(v81[1] >> 31);
    v83 = *&__b[4 * v81 + 1088] + v82;
    v84 = 1.0 / (v81 + 1.0);
    v85 = *&__b[4 * v81 + 1216];
    *a4++ = (v85 + v83) * v84;
    *a5++ = v84 * (v85 + ((v83 + v80) + -1.0));
    --v79;
  }

  while (v79);
}

uint64_t compute_angular_endpoints_2planes(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = (a4 + 204224);
  v28 = a4 + 226176;
  v29 = a4 + 207008;
  v8 = (a4 + 228960);
  v9 = a1[2];
  v33 = ~(-1 << (a3 + 1));
  v10 = a1 + 594;
  v11 = a1 + 65;
  v30 = a4 + 204224;
  v27 = a4 + 228960;
  do
  {
    if ((*(v11 + 3) & v33) != 0)
    {
      v12 = *v10;
      v13 = *v11;
      if (v13 >= a3)
      {
        v13 = a3;
      }

      if (v13 >= 7)
      {
        v14 = 7;
      }

      else
      {
        v14 = v13;
      }

      compute_angular_endpoints_for_quant_levels(*v10, (a2 + 4 * (v5 & 0xFFFFFFC0)), v14, v7, v7 + 696);
      compute_angular_endpoints_for_quant_levels(v12, (a2 + 4 * (v5 & 0xFFFFFFC0) + 128), v14, v8 - 696, v8);
      v9 = a1[2];
    }

    ++v6;
    v8 += 8;
    v7 += 8;
    v5 += 64;
    v10 += 129888;
    v11 += 6;
  }

  while (v6 < v9);
  v16 = a1[5];
  v15 = a1[6];
  result = v29;
  if (v16 < v15)
  {
    v18 = v15 - v16;
    v19 = a4 + 4 * v16;
    v20 = (v19 + 217984);
    v21 = a1 + 6 * v16 + 11304947;
    v22 = (v19 + 187840);
    do
    {
      v23 = *v21;
      if (v23 > 7)
      {
        *v22 = 0;
        v22[2048] = 1065353216;
        v25 = 1.0;
        *(v20 - 2048) = 0.0;
      }

      else
      {
        v24 = *(v21 - 1);
        *v22 = *(v30 + 32 * v24 + 4 * v23);
        v22[2048] = *(v29 + 32 * v24 + 4 * v23);
        *(v20 - 2048) = *(v28 + 32 * v24 + 4 * v23);
        v25 = *(v27 + 32 * v24 + 4 * v23);
      }

      *v20++ = v25;
      v21 += 6;
      ++v22;
      --v18;
    }

    while (v18);
  }

  return result;
}

void init_partition_tables(uint64_t a1, double a2, uint32x2_t a3)
{
  generate_one_partition_info_entry(a1, 1u, 0, 0, a1 + 14659568, a2, a3);
  *(a1 + 32) = 1;
  *(a1 + 48) = 1;
  operator new[]();
}

BOOL generate_one_partition_info_entry(unsigned __int8 *a1, unsigned int a2, int a3, int a4, uint64_t a5, double a6, uint32x2_t a7)
{
  v92 = a3;
  v96 = *MEMORY[0x1E69E9840];
  v9 = a1[3];
  v93 = (a5 + 8);
  v95 = 0uLL;
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
    v42 = a5 + 224;
    v43 = a1[1];
    if (v92)
    {
      v44 = v36;
    }

    else
    {
      v44 = v37;
    }

    if (v92)
    {
      v36 = v37;
    }

    if ((v92 & 0x10) != 0)
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
    v57 = v93;
    do
    {
      if (v56)
      {
        v58 = 0;
        v59 = *a1;
        v60 = vmla_s32(v40, vdup_n_s32(v12 << v13), v52);
        do
        {
          if (v59)
          {
            v61 = 0;
            v62 = vmla_s32(v60, vdup_n_s32(v58 << v13), v51);
            do
            {
              v63 = (v38 + (v12 << v13) * v53 + (v58 << v13) * v47 + (v61 << v13) * v46) & 0x3F;
              v64 = vand_s8(vbic_s8(vmla_s32(v62, vdup_n_s32(v61 << v13), v49), v55), 0x3F0000003FLL);
              if (a2 >= 2)
              {
                v65 = (v39 + (v12 << v13) * v54 + (v58 << v13) * v50 + (v61 << v13) * v48) & 0x3F;
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

              v71 = v95.i32[v68];
              v95.i32[v68] = v71 + 1;
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
    v72 = a5 + 224;
    v73 = a2;
    v74 = &v95;
    do
    {
      v76 = v74->i32[0];
      v74 = (v74 + 4);
      v75 = v76;
      v77 = (v76 + 3) & 0xFFFFFFFC;
      if (v76 < v77)
      {
        memset((v72 + v75), *(v72 + v75 - 1), v77 - v75);
      }

      v72 += 216;
      --v73;
    }

    while (v73);
  }

  LOWORD(v78) = v95.i16[0];
  if (v95.i32[0])
  {
    v79 = v93;
    v80 = a4;
    if (v95.i32[1])
    {
      if (v95.i32[2])
      {
        if (v95.i32[3])
        {
          v78 = 4;
        }

        else
        {
          v78 = 3;
        }

        v81 = v78;
      }

      else
      {
        LOWORD(v78) = 2;
        v81 = 2;
      }
    }

    else
    {
      LOWORD(v78) = 1;
      v81 = 1;
    }
  }

  else
  {
    v81 = 0;
    v79 = v93;
    v80 = a4;
  }

  *a5 = v78;
  *(a5 + 2) = v92;
  v82 = &a1[32 * v80 + 14707824];
  v83 = &a1[24 * v80 + 14683248];
  v84 = &a1[16 * v80 + 14666864];
  if (a2 != 2)
  {
    v84 = 0;
  }

  if (a2 != 3)
  {
    v83 = v84;
  }

  if (a2 == 4)
  {
    v85 = v82;
  }

  else
  {
    v85 = v83;
  }

  v86 = vmovn_s32(v95);
  *(a5 + 4) = vuzp1_s8(v86, v86).u32[0];
  if (v85)
  {
    if (a2)
    {
      bzero(v85, 8 * a2);
    }

    if (a1[3])
    {
      v87 = 0;
      if (a1[3] >= 0x40u)
      {
        v88 = 64;
      }

      else
      {
        v88 = a1[3];
      }

      do
      {
        v89 = v79[a1[v87 + 14666800]];
        *(v85 + v89) |= 1 << v87++;
      }

      while (v88 != v87);
    }
  }

  return v81 == a2;
}

void build_partition_table_for_one_partition_count(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v33[2] = *MEMORY[0x1E69E9840];
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
  v30 = &a1[2048 * (a4 - 2) + 14660656];
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
        one_partition_info_entry = generate_one_partition_info_entry(a1, a4, i, v14, a5 + 1088 * v14, v12, v13);
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
            v24 = *(a5 + 1088 * v17 + 8 + v22);
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
          if (one_partition_info_entry)
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
      one_partition_info_entry = generate_one_partition_info_entry(a1, a4, i, v14, a5 + 1088 * v14, v12, v13);
      if (v15 || one_partition_info_entry)
      {
        goto LABEL_12;
      }
    }

    ++v15;
  }

  while (v15 != v28);
}

uint64_t find_best_partition_candidates(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, double a7, double a8, double a9, double a10)
{
  v293 = *MEMORY[0x1E69E9840];
  v12 = (a1 + 14683264);
  v13 = (a1 + 14666872);
  v14 = *(a1 + 3);
  v15 = a3;
  v265 = (a1 + 14707848);
  if (v14 >= 0x15)
  {
    if (v14 >= 0x20)
    {
      v16 = flt_1E3113568[v14 < 0x2A];
    }

    else
    {
      v16 = 0.04;
    }
  }

  else
  {
    v16 = 0.03;
  }

  v17 = 0;
  v18 = a2 + 864;
  v19 = a2 + 1728;
  v20 = a2 + 2592;
  if (a3 <= 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = a3;
  }

  v22 = (v21 - 1);
  v23 = *(a2 + 3536);
  v24 = 0uLL;
  LODWORD(a10) = 1.0;
  do
  {
    if (v17)
    {
      memset(v287, 0, 64);
      v25 = v291;
      v26 = a2;
      v27 = v14;
      v288[0] = 0;
      do
      {
        v28 = *v25++;
        v29.i32[0] = *v26;
        v29.i32[1] = v26[216];
        v29.i32[2] = v26[432];
        v29.i32[3] = v26[648];
        v30 = vaddq_f32(v287[v28], v29);
        v287[v28] = v30;
        ++*(v288 + v28);
        ++v26;
        --v27;
      }

      while (v27);
      v31 = 0;
      do
      {
        v30.i8[0] = *(v288 + v31);
        v30 = vmulq_n_f32(v287[v31], 1.0 / v30.u32[0]);
        v282[v31++] = v30;
      }

      while (v15 != v31);
    }

    else
    {
      v44 = 0;
      v45.i32[0] = *(a2 + 4 * (0x239E9 % v14));
      v45.i32[1] = *(v18 + 4 * (0x239E9 % v14));
      v45.i32[2] = *(v19 + 4 * (0x239E9 % v14));
      v45.i32[3] = *(v20 + 4 * (0x239E9 % v14));
      v282[0] = v45;
      v46 = 0.0;
      v47 = a2;
      do
      {
        v48.i32[0] = *v47;
        v48.i32[1] = v47[216];
        v48.i32[2] = v47[432];
        v48.i32[3] = v47[648];
        v49 = vsubq_f32(v48, v45);
        v50 = vmulq_f32(v23, vmulq_f32(v49, v49));
        *v50.i8 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.i8);
        *v50.i32 = vpadd_f32(*v50.i8, *v50.i8).f32[0];
        v46 = v46 + *v50.i32;
        v287[0].i32[v44++] = v50.i32[0];
        ++v47;
      }

      while (v14 != v44);
      v51 = 1;
      v52 = 3 * a3 - 6;
      while (1)
      {
        v53 = 0;
        v54 = flt_1E3113570[v52++];
        v55 = v46 * v54;
        v56 = 0.0;
        while (1)
        {
          v56 = v56 + v287[0].f32[v53];
          if (v56 >= v55)
          {
            break;
          }

          if (v14 == ++v53)
          {
            LODWORD(v53) = v14;
            break;
          }
        }

        if (v53 >= v14 - 1)
        {
          LODWORD(v53) = v14 - 1;
        }

        v57.i32[0] = *(a2 + 4 * v53);
        v57.i32[1] = *(v18 + 4 * v53);
        v57.i32[2] = *(v19 + 4 * v53);
        v57.i32[3] = *(v20 + 4 * v53);
        v282[v51] = v57;
        if (v51 == v22)
        {
          break;
        }

        ++v51;
        v46 = 0.0;
        v58 = v287;
        v59 = a2;
        v60 = v14;
        do
        {
          v61.i32[0] = *v59;
          v61.i32[1] = v59[216];
          v61.i32[2] = v59[432];
          v61.i32[3] = v59[648];
          v62 = vsubq_f32(v61, v57);
          v63 = vmulq_f32(v23, vmulq_f32(v62, v62));
          *v63.i8 = vadd_f32(*&vextq_s8(v63, v63, 8uLL), *v63.i8);
          v64 = vpadd_f32(*v63.i8, *v63.i8).f32[0];
          if (v64 >= *v58)
          {
            v64 = *v58;
          }

          v46 = v46 + v64;
          *v58++ = v64;
          ++v59;
          --v60;
        }

        while (v60);
      }
    }

    v32 = 0;
    v287[0].i32[0] = 0;
    do
    {
      v33 = 0;
      v34 = 0;
      v35.i32[0] = *(a2 + 4 * v32);
      v35.i32[1] = *(v18 + 4 * v32);
      v35.i32[2] = *(v19 + 4 * v32);
      v35.i32[3] = *(v20 + 4 * v32);
      v36 = 3.4028e38;
      do
      {
        v37 = vsubq_f32(v35, v282[v33]);
        v38 = vmulq_f32(v23, vmulq_f32(v37, v37));
        *v38.i8 = vadd_f32(*&vextq_s8(v38, v38, 8uLL), *v38.i8);
        v39 = vpadd_f32(*v38.i8, *v38.i8).f32[0];
        if (v39 < v36)
        {
          v34 = v33;
          v36 = v39;
        }

        ++v33;
      }

      while (v15 != v33);
      v291[v32] = v34;
      ++v287[0].i8[v34];
      ++v32;
    }

    while (v32 != v14);
    v40 = 0;
    v41 = 0;
    do
    {
      while (!v287[0].i8[v40])
      {
        --v287[0].i8[v291[v40]];
        ++v287[0].i8[v40];
        v291[v40] = v40;
        v41 = v40 + 1 < a3;
        if (v40 + 1 < a3)
        {
          ++v40;
        }

        else
        {
          v40 = 0;
        }
      }

      v42 = v40 + 1 < a3;
      v43 = v42 | v41;
      if (v40 + 1 < a3)
      {
        ++v40;
      }

      else
      {
        v40 = 0;
      }

      v41 &= v42;
    }

    while ((v43 & 1) != 0);
    ++v17;
  }

  while (v17 != 3);
  v65 = 0;
  if (v14 >= 0x40)
  {
    v66 = 64;
  }

  else
  {
    v66 = v14;
  }

  v67 = a1;
  v280 = 0uLL;
  v281 = 0uLL;
  do
  {
    v68 = v291[*(a1 + 14666800 + v65)];
    *(&v280 + v68) |= 1 << v65++;
  }

  while (v66 != v65);
  v69 = *(a1 + 4 * (a3 - 1) + 32);
  if (v15 == 2)
  {
    v103 = v288;
    v104 = v280;
    v105 = *(a1 + 4 * (a3 - 1) + 32);
    do
    {
      v106 = *(v13 - 1);
      v107 = vcnt_s8((v106 ^ v104));
      v107.i16[0] = vaddlv_u8(v107);
      v108 = v107.i32[0];
      v109 = vcnt_s8((*v13 ^ *(&v104 + 1)));
      v109.i16[0] = vaddlv_u8(v109);
      v110 = v109.i32[0] + v108;
      v111 = vcnt_s8((*v13 ^ v104));
      v111.i16[0] = vaddlv_u8(v111);
      v112 = v111.i32[0];
      v113 = vcnt_s8((v106 ^ *(&v104 + 1)));
      v113.i16[0] = vaddlv_u8(v113);
      v114 = v113.i32[0] + v112;
      if (v110 < v113.i32[0] + v112)
      {
        v114 = v110;
      }

      *v103++ = v114 >> 1;
      v13 += 2;
      --v105;
    }

    while (v105);
  }

  else if (v15 == 3)
  {
    v70 = v280;
    v71 = v288;
    v72 = *(a1 + 4 * (a3 - 1) + 32);
    v73 = v281;
    do
    {
      v74 = *(v12 - 2);
      v75 = *(v12 - 1);
      v76 = vcnt_s8((v74 ^ v70));
      v76.i16[0] = vaddlv_u8(v76);
      v77 = v76.i32[0];
      v78 = vcnt_s8((v75 ^ v70));
      v78.i16[0] = vaddlv_u8(v78);
      v79 = v78.i32[0];
      v80 = *v12;
      v12 += 3;
      v81 = vcnt_s8((v80 ^ v70));
      v81.i16[0] = vaddlv_u8(v81);
      v82 = v81.i32[0];
      v83 = vcnt_s8((v74 ^ *(&v70 + 1)));
      v83.i16[0] = vaddlv_u8(v83);
      v84 = v83.i32[0];
      v85 = vcnt_s8((v75 ^ *(&v70 + 1)));
      v85.i16[0] = vaddlv_u8(v85);
      v86 = v85.i32[0];
      v87 = vcnt_s8((v80 ^ *(&v70 + 1)));
      v87.i16[0] = vaddlv_u8(v87);
      v88 = v87.i32[0];
      v89 = vcnt_s8((v74 ^ v73));
      v89.i16[0] = vaddlv_u8(v89);
      v90 = v89.i32[0];
      v91 = vcnt_s8((v75 ^ v73));
      v91.i16[0] = vaddlv_u8(v91);
      v92 = v91.i32[0];
      v93 = vcnt_s8((v80 ^ v73));
      v93.i16[0] = vaddlv_u8(v93);
      v94 = v93.i32[0] + v86;
      if (v93.i32[0] + v86 >= (v92 + v88))
      {
        v94 = v92 + v88;
      }

      v95 = v94 + v77;
      v96 = v93.i32[0] + v84;
      v97 = v90 + v88;
      if (v93.i32[0] + v84 >= v97)
      {
        v96 = v97;
      }

      v98 = v96 + v79;
      v99 = v92 + v84;
      v100 = v90 + v86;
      if (v99 < v100)
      {
        v100 = v99;
      }

      v101 = v100 + v82;
      if (v95 >= v98)
      {
        v102 = v98;
      }

      else
      {
        v102 = v95;
      }

      if (v102 < v101)
      {
        v101 = v102;
      }

      *v71++ = v101 >> 1;
      --v72;
    }

    while (v72);
  }

  else
  {
    v260 = v66;
    v115 = *(&v280 + 1);
    v272 = v280;
    v116 = v288;
    v263 = *(a1 + 4 * (a3 - 1) + 32);
    v117 = v263;
    v118 = v281;
    v119 = v265;
    do
    {
      v120 = *(v119 - 3);
      v121 = *(v119 - 2);
      v122 = vcnt_s8((v120 ^ v272));
      v122.i16[0] = vaddlv_u8(v122);
      v276 = v122.i32[0];
      v123 = vcnt_s8((v121 ^ v272));
      v123.i16[0] = vaddlv_u8(v123);
      v124 = *(v119 - 1);
      v125 = v123.i32[0];
      v126 = vcnt_s8((v124 ^ v272));
      v126.i16[0] = vaddlv_u8(v126);
      v127 = v126.i32[0];
      v128 = vcnt_s8((*v119 ^ v272));
      v128.i16[0] = vaddlv_u8(v128);
      v129 = v128.i32[0];
      v130 = vcnt_s8((v120 ^ v115));
      v130.i16[0] = vaddlv_u8(v130);
      v131 = v130.i32[0];
      v132 = vcnt_s8((v121 ^ v115));
      v132.i16[0] = vaddlv_u8(v132);
      v133 = v132.i32[0];
      v132.i16[0] = vaddlv_u8(vcnt_s8((v124 ^ v115)));
      v134 = vcnt_s8((*v119 ^ v115));
      v134.i16[0] = vaddlv_u8(v134);
      v135 = v132.i32[0];
      v136 = v134.i32[0];
      v137 = vcnt_s8((v120 ^ v118));
      v137.i16[0] = vaddlv_u8(v137);
      v138 = v137.i32[0];
      v139 = vcnt_s8((v121 ^ v118));
      v139.i16[0] = vaddlv_u8(v139);
      v140 = v139.i32[0];
      v141 = vcnt_s8((v124 ^ v118));
      v141.i16[0] = vaddlv_u8(v141);
      v142 = v141.i32[0];
      v143 = vcnt_s8((*v119 ^ v118));
      v143.i16[0] = vaddlv_u8(v143);
      v144 = vcnt_s8((v120 ^ *(&v118 + 1)));
      v145 = v143.i32[0];
      v143.i16[0] = vaddlv_u8(v144);
      *&v24 = vcnt_s8((v121 ^ *(&v118 + 1)));
      LOWORD(v24) = vaddlv_u8(*&v24);
      v146 = v143.i32[0];
      v147 = vcnt_s8((v124 ^ *(&v118 + 1)));
      v147.i16[0] = vaddlv_u8(v147);
      v148 = v147.i32[0];
      v149 = vcnt_s8((*v119 ^ *(&v118 + 1)));
      v149.i16[0] = vaddlv_u8(v149);
      v150 = v148 + v145;
      if (v149.i32[0] + v142 < (v148 + v145))
      {
        v150 = v149.i32[0] + v142;
      }

      v151 = v24 + v145;
      if (v149.i32[0] + v140 < (v24 + v145))
      {
        v151 = v149.i32[0] + v140;
      }

      v152 = v24 + v142;
      if (v148 + v140 < (v24 + v142))
      {
        v152 = v148 + v140;
      }

      v153 = v146 + v145;
      if (v149.i32[0] + v138 < (v146 + v145))
      {
        v153 = v149.i32[0] + v138;
      }

      v154 = v146 + v142;
      if (v148 + v138 < v154)
      {
        v154 = v148 + v138;
      }

      v155 = v146 + v140;
      if (v146 + v140 >= (v24 + v138))
      {
        v155 = v24 + v138;
      }

      v156 = v151 + v135;
      if (v150 + v133 < (v151 + v135))
      {
        v156 = v150 + v133;
      }

      if (v156 >= v152 + v136)
      {
        v156 = v152 + v136;
      }

      v157 = v150 + v131;
      if (v157 >= v153 + v135)
      {
        v157 = v153 + v135;
      }

      v158 = v156 + v276;
      if (v157 >= v154 + v136)
      {
        v157 = v154 + v136;
      }

      v159 = v153 + v133;
      v160 = v151 + v131;
      v161 = v155 + v136;
      v162 = v157 + v125;
      if (v159 < v160)
      {
        v160 = v159;
      }

      v163 = v154 + v133;
      if (v160 >= v161)
      {
        v160 = v161;
      }

      v164 = v152 + v131;
      if (v163 >= v155 + v135)
      {
        v163 = v155 + v135;
      }

      if (v163 < v164)
      {
        v164 = v163;
      }

      v165 = v160 + v127;
      v166 = v164 + v129;
      if (v158 < v162)
      {
        v162 = v158;
      }

      if (v165 >= v166)
      {
        v165 = v166;
      }

      if (v162 < v165)
      {
        v165 = v162;
      }

      *v116++ = v165 >> 1;
      v119 += 4;
      --v117;
    }

    while (v117);
    v67 = a1;
    v69 = v263;
    v66 = v260;
  }

  v167 = 0;
  v168 = v16 * v16;
  memset(v292, 0, 128);
  do
  {
    ++*(v292 + *(v288 + v167++));
  }

  while (v69 != v167);
  v169 = 0;
  v170 = 0;
  do
  {
    v171 = *(v292 + v169);
    *(v292 + v169) = v170;
    v170 += v171;
    v169 += 2;
  }

  while (2 * v66 != v169);
  v172 = 0;
  do
  {
    v173 = *(v288 + v172);
    v174 = *(v292 + v173);
    *(v292 + v173) = v174 + 1;
    v287[0].i16[v174] = v172++;
  }

  while (v69 != v172);
  if (a4 >= v69)
  {
    v175 = v69;
  }

  else
  {
    v175 = a4;
  }

  v176 = a6;
  v271 = v175;
  if (v175 >= a6)
  {
    v175 = a6;
  }

  else
  {
    v175 = v175;
  }

  v277 = v175;
  v177 = *(a2 + 3488);
  v178 = *(a2 + 3520);
  {
    *v274 = v177;
    v269 = v178;
    v178 = v269;
    v177 = *v274;
    v176 = a6;
    if (v259)
    {
      mask(vmask4)::shift = xmmword_1E3062D20;
      v178 = v269;
      v177 = *v274;
      v176 = a6;
    }
  }

  v179 = vmovn_s32(vceqq_f32(v177, v178));
  v180 = 0;
  v180.i16[3] = v179.i16[3];
  v181 = vmovl_u16(v180);
  v182.i64[0] = 0x100000001;
  v182.i64[1] = 0x100000001;
  v183 = vandq_s8(v181, v182);
  v184 = *&mask(vmask4)::shift;
  v185 = vaddvq_s32(vshlq_u32(v183, mask(vmask4)::shift));
  if (v176)
  {
    v186 = 4 * (v277 - 1);
    memset_pattern16(__b, &xmmword_1E310F6C0, v186 + 4);
    memset_pattern16(v284, &xmmword_1E310F6C0, v186 + 4);
  }

  v187 = (a3 << 10) - 2048;
  if (a3 == 1)
  {
    v187 = 3072;
  }

  v188 = v67 + 1088 * v187 + 11317232;
  v268 = v188;
  if (v185)
  {
    v189 = 0;
    v190 = 0.0000755373765;
    do
    {
      v191 = v287[0].u16[v189];
      v192 = (v188 + 1088 * v287[0].u16[v189]);
      compute_avgs_and_dirs_3_comp_rgb(v192, a2, v291, v190, v184, *&v24, a10, v35);
      v193 = 0;
      v194 = v289;
      do
      {
        v195 = *&v291[v193 + 16];
        *(v194 - 4) = *&v291[v193];
        v196 = vmulq_f32(v195, v195);
        *v196.i8 = vadd_f32(*&vextq_s8(v196, v196, 8uLL), *v196.i8);
        v197 = vpadd_f32(*v196.i8, *v196.i8);
        v198 = xmmword_1E310F6E0;
        if (*v197.i32 != 0.0)
        {
          v198 = vdivq_f32(v195, vsqrtq_f32(vdupq_lane_s32(v197, 0)));
        }

        *(v194 - 3) = v198;
        v199 = v194 - 48;
        *(v199 + 2) = 0;
        *(v199 + 3) = 0;
        v200 = *&v291[v193];
        v201 = vmulq_f32(v200, v200);
        *v201.i8 = vadd_f32(*&vextq_s8(v201, v201, 8uLL), *v201.i8);
        v202 = vpadd_f32(*v201.i8, *v201.i8);
        v203 = xmmword_1E310F6E0;
        if (*v202.i32 != 0.0)
        {
          v203 = vdivq_f32(v200, vsqrtq_f32(vdupq_lane_s32(v202, 0)));
        }

        v204 = *(v194 - 4);
        v205 = vmulq_f32(v198, v204);
        v205.f32[0] = v205.f32[2] + vaddv_f32(*v205.f32);
        v206 = vdupq_lane_s32(*v205.f32, 0);
        v206.i32[3] = 0;
        *(v194 - 1) = v203;
        *v194 = vsubq_f32(v204, vmulq_f32(v198, v206));
        *(v194 + 1) = *v199;
        *(v194 + 4) = 0;
        *(v194 + 5) = 0;
        *(v194 + 3) = *(v194 - 1);
        v193 += 32;
        v194 += 144;
      }

      while (32 * v15 != v193);
      v292[0] = 0;
      v282[0].i32[0] = 0;
      compute_error_squared_rgb(v192, a2, v288, v292, v282);
      v207 = __PAIR64__(v282[0].u32[0], v292[0]);
      v208 = v192 + 4;
      v209 = &v290;
      v210 = v15;
      do
      {
        v211 = *v208++;
        v212 = v168 * v211;
        v213 = vmulq_n_f32(*(v209 - 28), *v209);
        v214 = vmulq_n_f32(*(v209 - 20), *v209);
        v215 = vmulq_n_f32(vmulq_f32(v213, v213), v212);
        v216 = vmulq_n_f32(vmulq_f32(v214, v214), v212);
        v207 = vadd_f32(v207, vadd_f32(vzip1_s32(*&vextq_s8(v215, v215, 8uLL), *&vextq_s8(v216, v216, 8uLL)), vadd_f32(vzip1_s32(*v215.i8, *v216.i8), vzip2_s32(*v215.i8, *v216.i8))));
        v209 += 36;
        --v210;
      }

      while (v210);
      v275 = v207.f32[1];
      insert_result(v277, v207.f32[0], v191, __b, v285);
      insert_result(v277, v275, v191, v284, v283);
      ++v189;
      v188 = v268;
    }

    while (v189 != v271);
  }

  else
  {
    v217 = 0;
    v264 = v67 + 1088 * v187 + 11317236;
    do
    {
      v266 = v217;
      v273 = v287[0].u16[v217];
      v218 = (v188 + 1088 * v287[0].u16[v217]);
      compute_avgs_and_dirs_4_comp(v218, a2, v288);
      v219 = 0;
      do
      {
        v220 = *&v288[v219 / 4 + 4];
        *&v291[v219] = *&v288[v219 / 4];
        v221 = vmulq_f32(v220, v220);
        *v221.i8 = vadd_f32(*&vextq_s8(v221, v221, 8uLL), *v221.i8);
        v222 = vpadd_f32(*v221.i8, *v221.i8);
        v223.i64[0] = 0x3F0000003F000000;
        v223.i64[1] = 0x3F0000003F000000;
        v224.i64[0] = 0x3F0000003F000000;
        v224.i64[1] = 0x3F0000003F000000;
        if (*v222.i32 != 0.0)
        {
          v224 = vdivq_f32(v220, vsqrtq_f32(vdupq_lane_s32(v222, 0)));
        }

        *&v291[v219 + 16] = v224;
        v225 = *&v291[v219];
        v226 = vmulq_f32(v224, v225);
        *v226.i8 = vadd_f32(*&vextq_s8(v226, v226, 8uLL), *v226.i8);
        v227 = vsubq_f32(v225, vmulq_n_f32(v224, vpadd_f32(*v226.i8, *v226.i8).f32[0]));
        v228 = &v282[v219 / 0x10];
        v229 = *&v291[v219 + 16];
        *v228 = v227;
        v228[1] = v229;
        v230 = &v292[v219 / 4];
        v230->i64[0] = 0;
        v230->i64[1] = 0;
        v231 = *&v288[v219 / 4];
        v232 = vmulq_f32(v231, v231);
        *v232.i8 = vadd_f32(*&vextq_s8(v232, v232, 8uLL), *v232.i8);
        v233 = vpadd_f32(*v232.i8, *v232.i8);
        if (*v233.i32 != 0.0)
        {
          v223 = vdivq_f32(v231, vsqrtq_f32(vdupq_lane_s32(v233, 0)));
        }

        v230[1] = v223;
        v234 = (&v280 + v219);
        v234->i64[0] = 0;
        v234->i64[1] = 0;
        v234[1] = v230[1];
        v219 += 32;
      }

      while (32 * v15 != v219);
      v278 = 0;
      compute_error_squared_rgba(v218, a2, v282, &v280, v279, &v278 + 1, &v278);
      v236 = 0;
      v237 = *(&v278 + 1);
      v238 = *&v278;
      v239 = 4;
      do
      {
        LOBYTE(v235) = *(v264 + 1088 * v273 + v236);
        v240 = v168 * LODWORD(v235);
        v241 = v279[v236];
        v242 = vmulq_n_f32(*&v291[v239 * 4], v241);
        v243 = vmulq_n_f32(*&v292[v239], v241);
        v244 = vmulq_n_f32(vmulq_f32(v242, v242), v240);
        *v244.i8 = vadd_f32(*&vextq_s8(v244, v244, 8uLL), *v244.i8);
        v237 = v237 + vpadd_f32(*v244.i8, *v244.i8).f32[0];
        v245 = vmulq_n_f32(vmulq_f32(v243, v243), v240);
        *v245.i8 = vadd_f32(*&vextq_s8(v245, v245, 8uLL), *v245.i8);
        v235 = vpadd_f32(*v245.i8, *v245.i8).f32[0];
        v238 = v238 + v235;
        ++v236;
        v239 += 8;
      }

      while (v15 != v236);
      insert_result(v277, v237, v273, __b, v285);
      insert_result(v277, v238, v273, v284, v283);
      v217 = v266 + 1;
      v188 = v268;
    }

    while (v266 + 1 != v271);
  }

  if (a6)
  {
    v246 = 0;
    v247 = v283;
    v248 = v285;
    do
    {
      v249 = *v248++;
      *&v291[4 * v246] = *(v188 + 1088 * v249 + 2);
      v250 = *v247++;
      *&v291[4 * (v246 + 1)] = *(v188 + 1088 * v250 + 2);
      v246 += 2;
    }

    while (2 * v277 != v246);
  }

  memset(v289, 0, sizeof(v289));
  v251 = (2 * v277);
  memset(v288, 0, sizeof(v288));
  result = 0;
  if (v251)
  {
    v253 = v291;
    while (1)
    {
      v255 = *v253++;
      v254 = v255;
      v256 = v255 >> 6;
      v257 = *&v288[2 * v256];
      v258 = 1 << v255;
      if (((1 << v255) & v257) == 0)
      {
        *(a5 + 4 * result) = v254;
        *&v288[2 * v256] = v258 | v257;
        result = (result + 1);
        if (result == v277)
        {
          break;
        }
      }

      if (!--v251)
      {
        return result;
      }
    }

    return v277;
  }

  return result;
}

uint64_t insert_result(uint64_t result, float a2, unsigned int a3, float *a4, unsigned int *a5)
{
  v5 = (result - 1);
  if (a4[v5] > a2)
  {
    v6 = 0;
    while (a4[v6] < a2)
    {
      if (result == ++v6)
      {
        return result;
      }
    }

    if (v5 > v6)
    {
      v7 = &a5[v5];
      v8 = &a4[v5];
      v9 = v8;
      v10 = v7;
      do
      {
        --v5;
        v11 = *(v9-- - 1);
        *v8 = v11;
        v12 = *--v10;
        *v7 = v12;
        v8 = v9;
        v7 = v10;
      }

      while (v5 > v6);
    }

    a4[v6] = a2;
    a5[v6] = a3;
  }

  return result;
}

unint64_t encode_ise(unint64_t result, unsigned int a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  v5 = btq_counts[result];
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
        v19 = integer_of_trits[81 * (v15[2] >> v6) + 27 * (v15[1] >> v6) + 9 * (*v15 >> v6) + 2 * v17 + v17 + (v18 >> v6)];
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
        v28 = integer_of_trits[27 * v22 + 9 * v24 + 3 * v25 + (*v27 >> v6)];
        v29 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tbits;
        v30 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tshift;
        do
        {
          v31 = *v27++;
          v32 = v31 & v7;
          LOBYTE(v31) = *v30++;
          v33 = v28 >> v31;
          v34 = *v29++;
          result = a4 + (a5 >> 3);
          *result = *result & ~(~(-1 << (v34 + v6)) << (a5 & 7)) | (((((v33 & ~(-1 << v34)) << v6) | v32) & ~(-1 << (v34 + v6))) << (a5 & 7));
          a5 += v34 + v6;
          --v26;
        }

        while (v26);
      }
    }
  }

  else if ((btq_counts[result] & 0x80) != 0)
  {
    if (a2 >= 3)
    {
      v35 = a2 / 3;
      v37 = ~(-4 << v6);
      v38 = a3 + 2;
      v23 = 3 * (a2 / 3);
      result = integer_of_quints;
      do
      {
        v40 = *(v38 - 1) >> v6;
        v41 = *(v38 - 2);
        v42 = integer_of_quints[25 * (*v38 >> v6) + 4 * v40 + v40 + (v41 >> v6)];
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
        v47 = integer_of_quints[5 * v44 + (*v46 >> v6)];
        v48 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tbits;
        v49 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tshift;
        do
        {
          v50 = *v46++;
          v51 = v50 & v7;
          LOBYTE(v50) = *v49++;
          v52 = v47 >> v50;
          v53 = *v48++;
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

uint64_t compute_pixel_region_variance(uint64_t a1, uint64_t *a2)
{
  v196 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v170 = *(a2 + 11);
  v167 = *(a2 + 12);
  v165 = *(a2 + 13);
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  v9 = *(a1 + 136);
  v192 = a2[7];
  v10 = 2 * v7;
  v11 = (2 * v7) | 1;
  v174 = *(a2 + 24);
  if (*(a2 + 24))
  {
    v12 = *(a2 + 7);
  }

  else
  {
    v12 = 0;
  }

  v188 = *(a2 + 8);
  v189 = *(a2 + 9);
  v13 = v11 + v8;
  v166 = (2 * v7) | 1;
  v190 = (v11 + *(a2 + 9));
  v172 = 2 * v7;
  if (*(a2 + 24))
  {
    v14 = v10 + 1;
  }

  else
  {
    v14 = 0;
  }

  v169 = *(a2 + 10);
  v185 = (v14 + *(a2 + 10));
  v187 = *v2;
  v164 = v2[1];
  v15 = v2[3];
  if (v15 == 1)
  {
    DWORD2(v194) = 1006632960;
    if (v185 > v174)
    {
      v40 = v167 + ~v7;
      v41 = v174;
      v42 = v165 - v174 - v12;
      v43 = (v8 + v10 + 1);
      v44 = v43 - 1;
      v45 = v192 + 16;
      v46 = v43 + v43 * (v189 + v10);
      v177 = v43 + v46 * v185;
      v47 = v46 * v174;
      v48 = 16 * (v8 + v172 + 1);
      v49 = v170 - v7;
      do
      {
        v50 = v2[2] - 1;
        if (v42 + v41 <= v50)
        {
          v50 = (v42 + v41) & ~((v42 + v41) >> 31);
        }

        if (v190 >= 2)
        {
          v51 = (v45 + 16 * (v177 + v47));
          v52 = *(*(v2 + 2) + 8 * v50);
          v53 = 1;
          v54 = (v45 + 16 * ((v188 + v172 + 1) + v47));
          do
          {
            if (v40 + v53 <= v2[1] - 1)
            {
              v55 = (v40 + v53) & ~((v40 + v53) >> 31);
            }

            else
            {
              v55 = v2[1] - 1;
            }

            v56 = v49;
            v57 = v54;
            v58 = v51;
            v59 = v44;
            if (v13 >= 2)
            {
              do
              {
                v60 = v56 & ~(v56 >> 31);
                if (v56 > *v2 - 1)
                {
                  v60 = *v2 - 1;
                }

                *&v194 = *(v52 + 2 * (4 * v60 + 4 * *v2 * v55));
                v61.i16[0] = *(&v194 + v3);
                v61.i16[1] = *(&v194 + v4);
                v61.i16[2] = *(&v194 + v5);
                v61.i16[3] = *(&v194 + v6);
                v62 = vcvtq_f32_f16(v61);
                *v57++ = v62;
                *v58++ = vmulq_f32(v62, v62);
                ++v56;
                --v59;
              }

              while (v59);
            }

            ++v53;
            v51 = (v51 + v48);
            v54 = (v54 + v48);
          }

          while (v53 != v190);
        }

        ++v41;
        v47 += v46;
      }

      while (v41 != v185);
    }
  }

  else if (v15)
  {
    v195 = 0x3F80000000000000;
    if (v185 > v174)
    {
      v63 = v167 + ~v7;
      v64 = v174;
      v65 = v165 - v174 - v12;
      v66 = (v8 + v10 + 1);
      v67 = v66 - 1;
      v68 = v192 + 16;
      v69 = v66 + v66 * (v189 + v10);
      v178 = v66 + v69 * v185;
      v70 = 16 * (v8 + v172 + 1);
      v71 = &v194 + v4;
      v72 = v69 * v174;
      v73 = v170 - v7;
      v74 = &v194 + v5;
      v75 = &v194 + v6;
      do
      {
        v76 = v2[2] - 1;
        if (v65 + v64 <= v76)
        {
          v76 = (v65 + v64) & ~((v65 + v64) >> 31);
        }

        if (v190 >= 2)
        {
          v77 = (v68 + 16 * (v178 + v72));
          v78 = *(*(v2 + 2) + 8 * v76);
          v79 = 1;
          v80 = (v68 + 16 * ((v188 + v172 + 1) + v72));
          do
          {
            if (v63 + v79 <= v2[1] - 1)
            {
              v81 = (v63 + v79) & ~((v63 + v79) >> 31);
            }

            else
            {
              v81 = v2[1] - 1;
            }

            v82 = v73;
            v83 = v80;
            v84 = v77;
            v85 = v67;
            if (v13 >= 2)
            {
              do
              {
                v86 = v82 & ~(v82 >> 31);
                if (v82 > *v2 - 1)
                {
                  v86 = *v2 - 1;
                }

                v194 = *(v78 + 4 * (4 * v86 + 4 * *v2 * v81));
                v87.i32[0] = *(&v194 + v3);
                v87.i32[1] = *v71;
                v87.i32[2] = *v74;
                v87.i32[3] = *v75;
                *v83++ = v87;
                *v84++ = vmulq_f32(v87, v87);
                ++v82;
                --v85;
              }

              while (v85);
            }

            ++v79;
            v77 = (v77 + v70);
            v80 = (v80 + v70);
          }

          while (v79 != v190);
        }

        ++v64;
        v72 += v69;
      }

      while (v64 != v185);
    }
  }

  else
  {
    WORD2(v194) = -256;
    if (v185 > v174)
    {
      v16 = v167 + ~v7;
      v17 = v174;
      v18 = v165 - v174 - v12;
      v19 = (v8 + v10 + 1);
      v20 = v19 - 1;
      v21 = v192 + 16;
      v22 = v19 + v19 * (v189 + v10);
      v176 = v19 + v22 * v185;
      v23 = v22 * v174;
      v24 = 16 * (v8 + v172 + 1);
      v25 = v170 - v7;
      v26 = vdupq_n_s32(0x3B808081u);
      do
      {
        if (v18 + v17 <= v2[2] - 1)
        {
          v27 = (v18 + v17) & ~((v18 + v17) >> 31);
        }

        else
        {
          v27 = v2[2] - 1;
        }

        if (v190 >= 2)
        {
          v28 = (v21 + 16 * (v176 + v23));
          v29 = *(*(v2 + 2) + 8 * v27);
          v30 = 1;
          v31 = (v21 + 16 * ((v188 + v172 + 1) + v23));
          do
          {
            v32 = v2[1] - 1;
            if (v16 + v30 <= v32)
            {
              v32 = (v16 + v30) & ~((v16 + v30) >> 31);
            }

            v33 = v25;
            v34 = v31;
            v35 = v28;
            v36 = v20;
            if (v13 >= 2)
            {
              do
              {
                v37 = v33 & ~(v33 >> 31);
                if (v33 > *v2 - 1)
                {
                  v37 = *v2 - 1;
                }

                LODWORD(v194) = *(v29 + (4 * v37 + 4 * *v2 * v32));
                v38.i16[0] = *(&v194 + v3);
                v38.i16[1] = *(&v194 + v4);
                v38.i16[2] = *(&v194 + v5);
                v38.i16[3] = *(&v194 + v6);
                v39 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v38)), v26);
                *v34++ = v39;
                *v35++ = vmulq_f32(v39, v39);
                ++v33;
                --v36;
              }

              while (v36);
            }

            ++v30;
            v28 = (v28 + v24);
            v31 = (v31 + v24);
          }

          while (v30 != v190);
        }

        ++v17;
        v23 += v22;
      }

      while (v17 != v185);
    }
  }

  v168 = v185 - 1;
  result = v192;
  if (v185 >= 1)
  {
    v89 = 0;
    v90 = v189 + v172 + 1;
    v91 = v188 + v172 + 1;
    v92 = 16 * v91 * v90;
    v93 = v91 * v90 * v185;
    v94 = v192 + 16 * v93;
    v95 = v192;
    do
    {
      v96 = v95;
      v97 = (v189 + v172 + 1);
      if (v190 >= 1)
      {
        do
        {
          *v96 = 0uLL;
          v96[v93] = 0uLL;
          v96 += v91;
          --v97;
        }

        while (v97);
      }

      if (v13 >= 1)
      {
        v98 = 0;
        do
        {
          v95[v98] = 0uLL;
          *(v94 + v98 * 16) = 0uLL;
          ++v98;
        }

        while ((v188 + v172 + 1) != v98);
      }

      ++v89;
      v95 = (v95 + v92);
      v94 += v92;
    }

    while (v89 != v185);
  }

  if (v174 && v190 >= 1)
  {
    v99 = 0;
    v100 = v192;
    do
    {
      v101 = v100;
      v102 = (v188 + v172 + 1);
      if (v13 >= 1)
      {
        do
        {
          *v101 = 0uLL;
          v101[(v188 + v172 + 1 + (v188 + v172 + 1) * (v189 + v172)) * v185] = 0uLL;
          ++v101;
          --v102;
        }

        while (v102);
      }

      ++v99;
      v100 += (v188 + v172 + 1);
    }

    while (v99 != v190);
  }

  v103 = v13 * v190;
  if (v185 > v174)
  {
    v104 = v192;
    v105 = (v189 + v172 + 1);
    v182 = v105 - 1;
    v106 = v188 + v172 + 1;
    v179 = v106 * v105;
    v107 = v188 + v106 * v105 * v174 + v172 + 2;
    v108 = v174;
    do
    {
      v109 = v107;
      v110 = v182;
      if (v190 >= 2)
      {
        do
        {
          brent_kung_prefix_sum(v192 + 16 * v109, v13 - 1, 1);
          result = brent_kung_prefix_sum(v192 + 16 * v103 * v185 + 16 * v109, v13 - 1, 1);
          v104 = v192;
          v109 += v106;
          --v110;
        }

        while (v110);
      }

      ++v108;
      v107 += v179;
    }

    while (v108 != v185);
    v111 = v190 - 1;
    v112 = (v188 + v172 + 1);
    v113 = v112 - 1;
    v114 = v112 + v112 * (v189 + v172);
    v115 = v174;
    v116 = v112 + v174 * v114;
    v117 = v104 + 16 * (v116 + v114 * v185) + 16;
    v180 = 16 * v114;
    v183 = v113;
    v118 = v104 + 16 * v116 + 16;
    do
    {
      v119 = v118;
      v120 = v117;
      v121 = v183;
      if (v13 >= 2)
      {
        do
        {
          brent_kung_prefix_sum(v119, v111, v13);
          result = brent_kung_prefix_sum(v120, v111, v13);
          v120 += 16;
          v119 += 16;
          --v121;
        }

        while (v121);
      }

      ++v115;
      v117 += v180;
      v118 += v180;
    }

    while (v115 != v185);
  }

  if (v174 && v190 >= 2)
  {
    v122 = (v188 + v172 + 1);
    v123 = (v189 + v172 + 2) * v122;
    for (i = 1; i != v190; ++i)
    {
      if (v13 >= 2)
      {
        v125 = v122 - 1;
        v126 = v192 + 16 + 16 * (v122 + v122 * (v189 + v172)) * v185 + 16 * v123;
        v127 = v192 + 16 + 16 * v123;
        do
        {
          brent_kung_prefix_sum(v127, v168, v103);
          result = brent_kung_prefix_sum(v126, v168, v103);
          v126 += 16;
          v127 += 16;
          --v125;
        }

        while (v125);
      }

      v123 += v122;
    }
  }

  if (v174)
  {
    v128 = v166;
  }

  else
  {
    v128 = 1.0;
  }

  v129 = 1.0 / ((v128 * v166) * v166);
  if (v174)
  {
    if (v169 >= 1)
    {
      v191 = 0;
      v130 = v13;
      v131 = v192 + 12;
      v132 = v172 + 1;
      v133 = v172 + 1 + v188;
      v134 = (v132 + v188) * (v132 + v189);
      result = 16 * v133;
      v184 = v134 * (v172 + 1);
      v181 = v170 + v187 * (v167 + v165 * v164);
      v193 = (v132 + v188) * v132;
      v175 = v172 + 1 + v193;
      v186 = (v132 + v188 + v134) * v132;
      v173 = v172 + 1 + v186;
      v171 = v131;
      do
      {
        if (v189 >= 1)
        {
          v135 = 0;
          v136 = v131 + 16 * v184;
          v137 = v173;
          v138 = v175;
          v139 = v181;
          v140 = v186;
          v141 = v171;
          v142 = v193;
          do
          {
            if (v188 >= 1)
            {
              v143 = 0;
              v144 = v132;
              v145 = v137;
              v146 = v138;
              v147 = v139;
              do
              {
                *(v9 + 4 * v147) = v129 * ((((*(v136 + v143) - *(v131 + 16 * v103 * (v166 + v191) + 16 * v135 * v130 + 16 * v144)) - *(v131 + 16 * v140 + v143)) + *(v131 + 16 * v145)) - (((*(v141 + v143) - *(v131 + 16 * v191 * v103 + 16 * v135 * v130 + 16 * v144)) - *(v131 + 16 * v142 + v143)) + *(v131 + 16 * v146)));
                v143 += 16;
                ++v147;
                ++v146;
                ++v145;
                ++v144;
              }

              while (16 * v188 != v143);
            }

            ++v135;
            v142 += v133;
            v141 += result;
            v140 += v133;
            v136 += result;
            v139 += v187;
            v138 += v133;
            v137 += v133;
          }

          while (v135 != v189);
        }

        v193 += v134;
        v171 += 16 * v134;
        v186 += v134;
        v184 += v134;
        v181 += v164 * v187;
        v175 += v134;
        v173 += v134;
        ++v191;
      }

      while (v191 != v169);
    }
  }

  else if (v189 >= 1)
  {
    v148 = 0;
    v149 = v192 + 12;
    v150 = v172 + 1 + v188;
    v151 = v150 * (v172 + 1);
    v152 = v170 + v167 * v187;
    v153 = v172 + 1 + v151;
    v154 = (v192 + 12);
    do
    {
      if (v188 >= 1)
      {
        v155 = (v149 + 16 * v151);
        v156 = v172 + 1;
        v157 = v153;
        v158 = v152;
        v159 = v154;
        v160 = v188;
        do
        {
          v161 = *v159;
          v159 += 4;
          v162 = v161 - *(v149 + 16 * v148 * v13 + 16 * v156);
          v163 = *v155;
          v155 += 4;
          *(v9 + 4 * v158++) = v129 * ((v162 - v163) + *(v149 + 16 * v157++));
          ++v156;
          --v160;
        }

        while (v160);
      }

      ++v148;
      v151 += v150;
      v154 += 4 * v150;
      v152 += v187;
      v153 += v150;
      result = v189;
    }

    while (v148 != v189);
  }

  return result;
}

uint64_t brent_kung_prefix_sum(uint64_t result, unint64_t a2, int a3)
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

int8x16_t compute_avgs_and_dirs_4_comp(_BYTE *a1, float32x4_t *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a1 + 4;
  v7 = *a1;
  compute_partition_averages_rgba(a1, a2, v34);
  v8 = 0;
  v9 = a1 + 224;
  do
  {
    v10 = v6[v8];
    v11 = v34[v8];
    v12 = a3 + 32 * v8;
    *v12 = v11;
    v13 = 0uLL;
    v14 = v9;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v14++;
      v19.i32[0] = a2->i32[v18];
      v19.i32[1] = a2[54].i32[v18];
      v19.i32[2] = a2[108].i32[v18];
      v19.i32[3] = a2[162].i32[v18];
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
    ++v8;
    v9 += 216;
  }

  while (v8 != v7);
  return result;
}

float32x4_t compute_partition_averages_rgba(_BYTE *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *a1;
  if (v3 == 1)
  {
    result = a2[219];
    *a3 = result;
  }

  else
  {
    v4 = a2[216].u8[0];
    if (v3 == 2)
    {
      v42 = 0;
      v43 = xmmword_1E3062D20;
      v44 = vdupq_n_s32(v4);
      v45 = 0uLL;
      v46.i64[0] = 0x400000004;
      v46.i64[1] = 0x400000004;
      v47 = a2;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v51 = &a1[v42 + 8];
        v52 = vld1_dup_f32(v51);
        v53 = vcgtq_s32(v44, v43);
        v43 = vaddq_s32(v43, v46);
        v54 = vandq_s8(vmovl_s16(vceqz_s16(*&vmovl_u8(v52))), v53);
        v50 = vaddq_f32(v50, vandq_s8(*v47, v54));
        v49 = vaddq_f32(v49, vandq_s8(v47[54], v54));
        v48 = vaddq_f32(v48, vandq_s8(v47[108], v54));
        v45 = vaddq_f32(v45, vandq_s8(v47[162], v54));
        v42 += 4;
        ++v47;
      }

      while (v42 < v4);
      v55 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.f32);
      v56 = vadd_f32(*&vextq_s8(v49, v49, 8uLL), *v49.f32);
      v57 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), *v48.f32);
      v58 = vpadd_f32(v57, v57);
      v59 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.f32);
      *v60.f32 = vzip1_s32(vpadd_f32(v55, v55), vpadd_f32(v56, v56));
      v60.i64[1] = __PAIR64__(vpadd_f32(v59, v59).u32[0], v58.u32[0]);
      v61 = vsubq_f32(vmulq_n_f32(a2[219], v4), v60);
      v58.i8[0] = a1[4];
      *v58.i32 = v58.u32[0];
      v62 = vdivq_f32(v60, vdupq_lane_s32(v58, 0));
      *a3 = v62;
      v62.i8[0] = a1[5];
      v62.f32[0] = v62.u32[0];
      result = vdivq_f32(v61, vdupq_lane_s32(*v62.f32, 0));
      a3[1] = result;
    }

    else if (v3 == 3)
    {
      v5 = 0;
      v6 = vdupq_n_s32(v4);
      v7 = 0uLL;
      v8.i64[0] = 0x400000004;
      v8.i64[1] = 0x400000004;
      v9 = 0uLL;
      v10 = xmmword_1E3062D20;
      v11 = a2;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = &a1[v5 + 8];
        v19 = vld1_dup_f32(v18);
        v20 = vmovl_u8(v19).u64[0];
        v21 = vcgtq_s32(v6, v10);
        v10 = vaddq_s32(v10, v8);
        v22 = vandq_s8(vmovl_s16(vceqz_s16(v20)), v21);
        v23 = vandq_s8(vmovl_s16(vceq_s16(v20, 0x1000100010001)), v21);
        v17 = vaddq_f32(v17, vandq_s8(*v11, v22));
        v13 = vaddq_f32(v13, vandq_s8(*v11, v23));
        v24 = v11[54];
        v16 = vaddq_f32(v16, vandq_s8(v24, v22));
        v12 = vaddq_f32(v12, vandq_s8(v24, v23));
        v25 = v11[108];
        v15 = vaddq_f32(v15, vandq_s8(v25, v22));
        v9 = vaddq_f32(v9, vandq_s8(v25, v23));
        v26 = v11[162];
        v14 = vaddq_f32(v14, vandq_s8(v26, v22));
        v7 = vaddq_f32(v7, vandq_s8(v26, v23));
        v5 += 4;
        ++v11;
      }

      while (v5 < v4);
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
      v38 = vsubq_f32(vsubq_f32(vmulq_n_f32(a2[219], v4), v31), v37);
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
    }

    else
    {
      v63 = 0;
      v64 = vdupq_n_s32(v4);
      v65 = 0uLL;
      v66.i64[0] = 0x400000004;
      v66.i64[1] = 0x400000004;
      v67 = xmmword_1E3062D20;
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
        v80 = &a1[v63 + 8];
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
        v87 = v69[54];
        v68 = vaddq_f32(v68, vandq_s8(v87, v84));
        v73 = vaddq_f32(v73, vandq_s8(v87, v85));
        v77 = vaddq_f32(v77, vandq_s8(v87, v86));
        v88 = v69[108];
        v70 = vaddq_f32(v70, vandq_s8(v88, v84));
        v74 = vaddq_f32(v74, vandq_s8(v88, v85));
        v78 = vaddq_f32(v78, vandq_s8(v88, v86));
        v89 = v69[162];
        v71 = vaddq_f32(v71, vandq_s8(v89, v84));
        v75 = vaddq_f32(v75, vandq_s8(v89, v85));
        v79 = vaddq_f32(v79, vandq_s8(v89, v86));
        v63 += 4;
        ++v69;
      }

      while (v63 < v4);
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
      v106 = vsubq_f32(vsubq_f32(vsubq_f32(vmulq_n_f32(a2[219], v4), v94), v99), v105);
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
    }
  }

  return result;
}

int8x16_t compute_avgs_and_dirs_3_comp(_BYTE *a1, float32x4_t *a2, int a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  compute_partition_averages_rgba(a1, a2, &v41);
  v9 = a2 + 54;
  if (a3 == 2)
  {
    v15.i64[0] = v41.i64[0];
    v16.i64[0] = v42.i64[0];
    v15.i64[1] = v41.u32[3];
    v16.i64[1] = v42.u32[3];
    v17.i64[0] = v43.i64[0];
    v18.i64[0] = v44.i64[0];
    v17.i64[1] = v43.u32[3];
    v18.i64[1] = v44.u32[3];
    v41 = v15;
    v42 = v16;
    v43 = v17;
    v44 = v18;
    v12 = 162;
    v10 = a2 + 54;
  }

  else
  {
    v10 = a2 + 108;
    if (a3 != 1)
    {
      if (a3)
      {
        v41.i32[3] = 0;
        v42.i32[3] = 0;
        v12 = 108;
        v10 = a2 + 54;
        v9 = a2;
        v43.i32[3] = 0;
        v44.i32[3] = 0;
      }

      else
      {
        v11 = vextq_s8(0, 0, 0xCuLL);
        v41 = vextq_s8(v41, v11, 4uLL);
        v42 = vextq_s8(v42, v11, 4uLL);
        v43 = vextq_s8(v43, v11, 4uLL);
        v44 = vextq_s8(v44, v11, 4uLL);
        v12 = 162;
      }

      goto LABEL_9;
    }

    v13.i64[0] = __PAIR64__(v41.u32[2], v41.u32[0]);
    v13.i64[1] = v41.u32[3];
    v14.i64[0] = __PAIR64__(v42.u32[2], v42.u32[0]);
    v14.i64[1] = v42.u32[3];
    v41 = v13;
    v42 = v14;
    v13.i64[0] = __PAIR64__(v43.u32[2], v43.u32[0]);
    v13.i64[1] = v43.u32[3];
    v14.i64[0] = __PAIR64__(v44.u32[2], v44.u32[0]);
    v14.i64[1] = v44.u32[3];
    v43 = v13;
    v44 = v14;
    v12 = 162;
  }

  v9 = a2;
LABEL_9:
  v19 = 0;
  v20 = a1 + 224;
  v23 = *a1;
  v22 = a1 + 4;
  v21 = v23;
  v24 = &a2[v12];
  do
  {
    v25 = v22[v19];
    v26 = *(&v41 + v19);
    v27 = a4 + 32 * v19;
    *v27 = v26;
    v28 = 0uLL;
    v29 = v20;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = *v29++;
      v8.i32[0] = v9->i32[v32];
      v8.i32[1] = v10->i32[v32];
      v8.i32[2] = v24->i32[v32];
      v33 = vsubq_f32(v8, v26);
      v34 = vmovn_s32(vcgtzq_f32(v33));
      v28 = vaddq_f32(v28, vandq_s8(v33, vmovl_s16(vdup_lane_s16(v34, 0))));
      v30 = vaddq_f32(v30, vandq_s8(v33, vmovl_s16(vdup_lane_s16(v34, 1))));
      v8 = vandq_s8(v33, vmovl_s16(vdup_lane_s16(v34, 2)));
      v31 = vaddq_f32(v31, v8);
      --v25;
    }

    while (v25);
    v35 = vmulq_f32(v28, v28);
    *v35.i8 = vadd_f32(*&vextq_s8(v35, v35, 8uLL), *v35.i8);
    v36 = vdupq_lane_s32(vpadd_f32(*v35.i8, *v35.i8), 0);
    v37 = vmulq_f32(v30, v30);
    *v37.i8 = vadd_f32(*&vextq_s8(v37, v37, 8uLL), *v37.i8);
    v8 = vdupq_lane_s32(vpadd_f32(*v37.i8, *v37.i8), 0);
    v38 = vmulq_f32(v31, v31);
    *v38.i8 = vadd_f32(*&vextq_s8(v38, v38, 8uLL), *v38.i8);
    v39 = vcgtq_f32(v8, v36);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v38.i8, *v38.i8), 0), vbslq_s8(v39, v8, v36)), v31, vbslq_s8(v39, v30, v28));
    *(v27 + 16) = result;
    ++v19;
    v20 += 216;
  }

  while (v19 != v21);
  return result;
}

int8x16_t compute_avgs_and_dirs_3_comp_rgb(_BYTE *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v119 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (v8 == 1)
  {
    v59 = *(a2 + 3504);
    v59.i32[3] = 0;
    v115 = v59;
  }

  else
  {
    v9 = *(a2 + 3456);
    if (v8 == 2)
    {
      v40 = 0;
      v41 = vdupq_n_s32(v9);
      v42 = xmmword_1E3062D20;
      v43 = 0uLL;
      v44.i64[0] = 0x400000004;
      v44.i64[1] = 0x400000004;
      v45 = a2;
      v46 = 0uLL;
      v47 = 0uLL;
      do
      {
        v48 = &a1[v40 + 8];
        v49 = vld1_dup_f32(v48);
        v50 = vcgtq_s32(v41, v42);
        v42 = vaddq_s32(v42, v44);
        v51 = vandq_s8(vmovl_s16(vceqz_s16(*&vmovl_u8(v49))), v50);
        v47 = vaddq_f32(v47, vandq_s8(*v45, v51));
        v46 = vaddq_f32(v46, vandq_s8(v45[54], v51));
        v43 = vaddq_f32(v43, vandq_s8(v45[108], v51));
        v40 += 4;
        ++v45;
      }

      while (v40 < v9);
      v52 = *(a2 + 3504);
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
      v55.i8[0] = a1[4];
      *v55.i32 = v55.u32[0];
      v58 = vdivq_f32(v53, vdupq_lane_s32(v55, 0));
      v53.i8[0] = a1[5];
      v53.f32[0] = v53.u32[0];
      v115 = v58;
      v116 = vdivq_f32(v57, vdupq_lane_s32(*v53.f32, 0));
    }

    else if (v8 == 3)
    {
      v10 = 0;
      v11 = vdupq_n_s32(v9);
      v12 = 0uLL;
      v13.i64[0] = 0x400000004;
      v13.i64[1] = 0x400000004;
      v14 = xmmword_1E3062D20;
      v15 = a2;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v21 = &a1[v10 + 8];
        v22 = vld1_dup_f32(v21);
        v23 = vmovl_u8(v22).u64[0];
        v24 = vcgtq_s32(v11, v14);
        v14 = vaddq_s32(v14, v13);
        v25 = vandq_s8(vmovl_s16(vceqz_s16(v23)), v24);
        v26 = vandq_s8(vmovl_s16(vceq_s16(v23, 0x1000100010001)), v24);
        v20 = vaddq_f32(v20, vandq_s8(*v15, v25));
        v17 = vaddq_f32(v17, vandq_s8(*v15, v26));
        v27 = v15[54];
        v19 = vaddq_f32(v19, vandq_s8(v27, v25));
        v16 = vaddq_f32(v16, vandq_s8(v27, v26));
        v28 = v15[108];
        v18 = vaddq_f32(v18, vandq_s8(v28, v25));
        v12 = vaddq_f32(v12, vandq_s8(v28, v26));
        v10 += 4;
        ++v15;
      }

      while (v10 < v9);
      v29 = *(a2 + 3504);
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
      v36.i8[0] = a1[4];
      *v36.i32 = v36.u32[0];
      v39 = vdivq_f32(v30, vdupq_lane_s32(v36, 0));
      v33.i8[0] = a1[5];
      v33.f32[0] = v33.u32[0];
      v115 = v39;
      v116 = vdivq_f32(v34, vdupq_lane_s32(*v33.f32, 0));
      v39.i8[0] = a1[6];
      v39.f32[0] = v39.u32[0];
      v117 = vdivq_f32(v38, vdupq_lane_s32(*v39.f32, 0));
    }

    else
    {
      v60 = 0;
      v61 = vdupq_n_s32(v9);
      v62 = 0uLL;
      v63.i64[0] = 0x400000004;
      v63.i64[1] = 0x400000004;
      v64 = xmmword_1E3062D20;
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
        v73 = &a1[v60 + 8];
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
        v80 = v66[54];
        v65 = vaddq_f32(v65, vandq_s8(v80, v77));
        a8 = vaddq_f32(a8, vandq_s8(v80, v78));
        v71 = vaddq_f32(v71, vandq_s8(v80, v79));
        v81 = v66[108];
        v67 = vaddq_f32(v67, vandq_s8(v81, v77));
        v69 = vaddq_f32(v69, vandq_s8(v81, v78));
        v72 = vaddq_f32(v72, vandq_s8(v81, v79));
        v60 += 4;
        ++v66;
      }

      while (v60 < v9);
      v82 = *(a2 + 3504);
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
      v91.i8[0] = a1[4];
      *v91.i32 = v91.u32[0];
      v95 = vdivq_f32(v83, vdupq_lane_s32(v91, 0));
      v92.i8[0] = a1[5];
      v92.f32[0] = v92.u32[0];
      v115 = v95;
      v116 = vdivq_f32(v86, vdupq_lane_s32(v92, 0));
      v95.i8[0] = a1[6];
      v95.f32[0] = v95.u32[0];
      v96 = vdivq_f32(v89, vdupq_lane_s32(*v95.f32, 0));
      v89.i8[0] = a1[7];
      v89.f32[0] = v89.u32[0];
      v117 = v96;
      v118 = vdivq_f32(v94, vdupq_lane_s32(*v89.f32, 0));
    }
  }

  v97 = 0;
  v98 = a1 + 224;
  do
  {
    v99 = a1[v97 + 4];
    v100 = *(&v115 + v97);
    v101 = a3 + 32 * v97;
    *v101 = v100;
    v102 = 0uLL;
    v103 = v98;
    v104 = 0uLL;
    v105 = 0uLL;
    do
    {
      v106 = *v103++;
      a8.i32[0] = *(a2 + 4 * v106);
      a8.i32[1] = *(a2 + 864 + 4 * v106);
      a8.i32[2] = *(a2 + 1728 + 4 * v106);
      v107 = vsubq_f32(a8, v100);
      v108 = vmovn_s32(vcgtzq_f32(v107));
      v102 = vaddq_f32(v102, vandq_s8(v107, vmovl_s16(vdup_lane_s16(v108, 0))));
      v104 = vaddq_f32(v104, vandq_s8(v107, vmovl_s16(vdup_lane_s16(v108, 1))));
      a8 = vandq_s8(v107, vmovl_s16(vdup_lane_s16(v108, 2)));
      v105 = vaddq_f32(v105, a8);
      --v99;
    }

    while (v99);
    v109 = vmulq_f32(v102, v102);
    *v109.i8 = vadd_f32(*&vextq_s8(v109, v109, 8uLL), *v109.i8);
    v110 = vdupq_lane_s32(vpadd_f32(*v109.i8, *v109.i8), 0);
    v111 = vmulq_f32(v104, v104);
    *v111.i8 = vadd_f32(*&vextq_s8(v111, v111, 8uLL), *v111.i8);
    a8 = vdupq_lane_s32(vpadd_f32(*v111.i8, *v111.i8), 0);
    v112 = vmulq_f32(v105, v105);
    *v112.i8 = vadd_f32(*&vextq_s8(v112, v112, 8uLL), *v112.i8);
    v113 = vcgtq_f32(a8, v110);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v112.i8, *v112.i8), 0), vbslq_s8(v113, a8, v110)), v105, vbslq_s8(v113, v104, v102));
    *(v101 + 16) = result;
    ++v97;
    v98 += 216;
  }

  while (v97 != v8);
  return result;
}

unsigned __int16 *compute_avgs_and_dirs_2_comp(unsigned __int16 *a1, int32x4_t *a2, int a3, int a4, uint64_t a5, double a6, __n128 a7, double a8, int32x4_t a9)
{
  if (a3 || a4 != 1)
  {
    v11 = a2[219];
    if (a3 || a4 != 2)
    {
      a7.n128_u64[1] = 0;
      v9 = vextq_s8(v11, 0, 4uLL).u64[0];
      v12 = a2 + 54;
      v10 = 108;
      goto LABEL_9;
    }

    a7 = vzip2q_s32(0, 0);
    v9 = vuzp1q_s32(v11, a7);
    v10 = 108;
  }

  else
  {
    v9 = a2[219];
    v9.i64[1] = 0;
    v10 = 54;
  }

  v12 = a2;
LABEL_9:
  v13 = 0;
  v14 = &a2[v10];
  v15 = a1 + 112;
  v18 = *a1;
  result = a1 + 2;
  v17 = v18;
  do
  {
    v19 = *(result + v13);
    if (v17 >= 2)
    {
      v20 = 0uLL;
      v21 = v15;
      v22 = *(result + v13);
      do
      {
        v23 = *v21;
        v21 = (v21 + 1);
        a7.n128_u32[0] = v12->u32[v23];
        a7.n128_u32[1] = v14->u32[v23];
        v20 = vaddq_f32(v20, a7);
        --v22;
      }

      while (v22);
      a7.n128_f32[0] = v19;
      v9 = vdivq_f32(v20, vdupq_lane_s32(a7.n128_u64[0], 0));
    }

    v24 = 0;
    v25 = a5 + 32 * v13;
    *v25 = v9;
    v26 = 0uLL;
    v27 = 0uLL;
    do
    {
      v28 = *(v15 + v24);
      a9.i32[0] = v12->i32[v28];
      a9.i32[1] = v14->i32[v28];
      v29 = vsubq_f32(a9, v9);
      v30 = vmovn_s32(vcgtzq_f32(v29));
      v26 = vaddq_f32(v26, vandq_s8(v29, vmovl_s16(vdup_lane_s16(v30, 0))));
      a9 = vandq_s8(v29, vmovl_s16(vdup_lane_s16(v30, 1)));
      v27 = vaddq_f32(v27, a9);
      ++v24;
    }

    while (v19 != v24);
    v31 = vmulq_f32(v26, v26);
    *v31.i8 = vadd_f32(*&vextq_s8(v31, v31, 8uLL), *v31.i8);
    v32 = vmulq_f32(v27, v27);
    *v32.i8 = vadd_f32(*&vextq_s8(v32, v32, 8uLL), *v32.i8);
    a9 = vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v32.i8, *v32.i8), vpadd_f32(*v31.i8, *v31.i8)), 0));
    a7 = vbslq_s8(a9, v27, v26);
    *(v25 + 16) = a7;
    ++v13;
    v15 += 108;
  }

  while (v13 != v17);
  return result;
}

float32x2_t compute_error_squared_rgba(unsigned __int16 *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v8 = 0;
  v9 = 0uLL;
  v10 = vdupq_n_s32(0xD01502F9);
  v11 = a1 + 112;
  v14 = *a1;
  v12 = a1 + 2;
  v13 = v14;
  v15 = vdupq_n_s32(0x501502F9u);
  v16 = a2 + 54;
  v17 = a2 + 108;
  v18 = a2 + 162;
  v19.i64[0] = 0x400000004;
  v19.i64[1] = 0x400000004;
  v20 = 0uLL;
  do
  {
    v21 = 0;
    v22 = (a3 + 32 * v8);
    v24 = *v22;
    v23 = *(v22 + 1);
    v25 = *(a4 + 32 * v8 + 16);
    v26 = *(v12 + v8);
    v27 = vdupq_lane_s32(*v24.i8, 0);
    v28 = vdupq_lane_s32(*v24.i8, 1);
    v29 = vdupq_laneq_s32(v24, 2);
    v30 = vdupq_laneq_s32(v24, 3);
    v31 = a2[221];
    v32 = vdupq_n_s32(v26);
    v33 = xmmword_1E3062D20;
    v34 = v15;
    v35 = v10;
    do
    {
      v7.i32[0] = *&v11[v21 / 2];
      v36 = vmovl_u16(*&vmovl_u8(*v7.f32));
      v37 = v36.u32[1];
      v38 = v36.u32[2];
      v39 = v36.u32[3];
      v40 = v36.i32[0];
      v36.i32[0] = a2->i32[v36.u32[0]];
      v41 = &v16->i32[v36.u32[1]];
      v36.i32[1] = a2->i32[v36.u32[1]];
      v42.i32[0] = v16->i32[v40];
      v42.i32[1] = *v41;
      v36.i32[2] = a2->i32[v36.u32[2]];
      v43 = &v16->i32[v36.u32[3]];
      v42.i32[2] = v16->i32[v38];
      v36.i32[3] = a2->i32[v36.u32[3]];
      v44.i32[0] = v17->i32[v40];
      v42.i32[3] = *v43;
      v44.i32[1] = v17->i32[v37];
      v44.i32[2] = v17->i32[v38];
      v45.i32[0] = v18->i32[v40];
      v44.i32[3] = v17->i32[v39];
      v45.i32[1] = v18->i32[v37];
      v45.i32[2] = v18->i32[v38];
      v45.i32[3] = v18->i32[v39];
      v46 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v36, v23.f32[0]), vmulq_lane_f32(v42, *v23.f32, 1)), vmulq_laneq_f32(v44, v23, 2)), vmulq_laneq_f32(v45, v23, 3));
      v34 = vminnmq_f32(v46, v34);
      v35 = vmaxnmq_f32(v46, v35);
      v47 = vaddq_f32(vsubq_f32(v27, v36), vmulq_n_f32(v46, v23.f32[0]));
      v48 = vaddq_f32(vsubq_f32(v28, v42), vmulq_lane_f32(v46, *v23.f32, 1));
      v49 = vaddq_f32(vsubq_f32(v29, v44), vmulq_laneq_f32(v46, v23, 2));
      v50 = vaddq_f32(vsubq_f32(v30, v45), vmulq_laneq_f32(v46, v23, 3));
      v51 = vcgtq_s32(v32, v33);
      v52 = vaddq_f32(vmulq_f32(v47, vmulq_n_f32(v47, v31.f32[0])), vmulq_f32(v48, vmulq_lane_f32(v48, *v31.f32, 1)));
      v53 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v36, v25.f32[0]), vmulq_lane_f32(v42, *v25.f32, 1)), vmulq_laneq_f32(v44, v25, 2)), vmulq_laneq_f32(v45, v25, 3));
      v54 = vsubq_f32(vmulq_n_f32(v53, v25.f32[0]), v36);
      v55 = vsubq_f32(vmulq_lane_f32(v53, *v25.f32, 1), v42);
      v56 = vsubq_f32(vmulq_laneq_f32(v53, v25, 2), v44);
      v57 = vsubq_f32(vmulq_laneq_f32(v53, v25, 3), v45);
      v9 = vaddq_f32(v9, vandq_s8(vaddq_f32(vmulq_f32(v50, vmulq_laneq_f32(v50, v31, 3)), vaddq_f32(vmulq_f32(v49, vmulq_laneq_f32(v49, v31, 2)), v52)), v51));
      v7 = vandq_s8(vaddq_f32(vmulq_f32(v57, vmulq_laneq_f32(v57, v31, 3)), vaddq_f32(vmulq_f32(v56, vmulq_laneq_f32(v56, v31, 2)), vaddq_f32(vmulq_f32(v54, vmulq_n_f32(v54, v31.f32[0])), vmulq_f32(v55, vmulq_lane_f32(v55, *v31.f32, 1))))), v51);
      v20 = vaddq_f32(v20, v7);
      v33 = vaddq_s32(v33, v19);
      v21 += 4;
    }

    while (v21 < v26);
    *(a5 + 4 * v8++) = fmaxf(vmaxvq_f32(v35) - vminvq_f32(v34), 0.0000001);
    v11 += 108;
  }

  while (v8 != v13);
  v58 = vadd_f32(*&vextq_s8(v9, v9, 8uLL), *v9.f32);
  *a6 = vpadd_f32(v58, v58).u32[0];
  v59 = vadd_f32(*&vextq_s8(v20, v20, 8uLL), *v20.f32);
  result = vpadd_f32(v59, v59);
  *a7 = result.i32[0];
  return result;
}

float32x2_t compute_error_squared_rgb(unsigned __int16 *a1, float32x4_t *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v6 = 0;
  v7 = a1 + 112;
  v8 = 0uLL;
  v9 = vdupq_n_s32(0xD01502F9);
  v12 = *a1;
  v10 = a1 + 2;
  v11 = v12;
  v13 = a2 + 54;
  v14 = a2 + 108;
  v15 = vdupq_n_s32(0x501502F9u);
  v16.i64[0] = 0x400000004;
  v16.i64[1] = 0x400000004;
  v17 = 0uLL;
  do
  {
    v18 = 0;
    v19 = a3 + 144 * v6;
    v20 = *(v10 + v6);
    v22 = *(v19 + 64);
    v21 = *(v19 + 80);
    v23 = *(v19 + 112);
    v24 = vdupq_lane_s32(*v22.i8, 0);
    v25 = vdupq_lane_s32(*v22.i8, 1);
    v26 = vdupq_laneq_s32(v22, 2);
    v27 = a2[221];
    v28 = vdupq_n_s32(v20);
    v29 = xmmword_1E3062D20;
    v30 = v15;
    v31 = v9;
    do
    {
      v5.i32[0] = *&v7[v18 / 2];
      v32 = vmovl_u16(*&vmovl_u8(*v5.f32));
      v33 = v32.u32[2];
      v34 = v32.u32[1];
      v35 = v32.u32[3];
      v36 = v32.i32[0];
      v32.i32[0] = a2->i32[v32.u32[0]];
      v32.i32[1] = a2->i32[v32.u32[1]];
      v37.i32[0] = v13->i32[v36];
      v32.i32[2] = a2->i32[v32.u32[2]];
      v37.i32[1] = v13->i32[v34];
      v38 = &v13->i32[v32.u32[3]];
      v32.i32[3] = a2->i32[v32.u32[3]];
      v37.i32[2] = v13->i32[v33];
      v37.i32[3] = *v38;
      v39.i32[0] = v14->i32[v36];
      v39.i32[1] = v14->i32[v34];
      v39.i32[2] = v14->i32[v33];
      v39.i32[3] = v14->i32[v35];
      v40 = vaddq_f32(vaddq_f32(vmulq_n_f32(v32, v21.f32[0]), vmulq_lane_f32(v37, *v21.f32, 1)), vmulq_laneq_f32(v39, v21, 2));
      v30 = vminnmq_f32(v40, v30);
      v31 = vmaxnmq_f32(v40, v31);
      v41 = vaddq_f32(vsubq_f32(v24, v32), vmulq_n_f32(v40, v21.f32[0]));
      v42 = vaddq_f32(vsubq_f32(v25, v37), vmulq_lane_f32(v40, *v21.f32, 1));
      v43 = vaddq_f32(vsubq_f32(v26, v39), vmulq_laneq_f32(v40, v21, 2));
      v44 = vcgtq_s32(v28, v29);
      v45 = vaddq_f32(vmulq_f32(v41, vmulq_n_f32(v41, v27.f32[0])), vmulq_f32(v42, vmulq_lane_f32(v42, *v27.f32, 1)));
      v46 = vaddq_f32(vaddq_f32(vmulq_n_f32(v32, v23.f32[0]), vmulq_lane_f32(v37, *v23.f32, 1)), vmulq_laneq_f32(v39, v23, 2));
      v47 = vsubq_f32(vmulq_n_f32(v46, v23.f32[0]), v32);
      v48 = vsubq_f32(vmulq_lane_f32(v46, *v23.f32, 1), v37);
      v49 = vsubq_f32(vmulq_laneq_f32(v46, v23, 2), v39);
      v8 = vaddq_f32(v8, vandq_s8(vaddq_f32(vmulq_f32(v43, vmulq_laneq_f32(v43, v27, 2)), v45), v44));
      v5 = vandq_s8(vaddq_f32(vmulq_f32(v49, vmulq_laneq_f32(v49, v27, 2)), vaddq_f32(vmulq_f32(v47, vmulq_n_f32(v47, v27.f32[0])), vmulq_f32(v48, vmulq_lane_f32(v48, *v27.f32, 1)))), v44);
      v17 = vaddq_f32(v17, v5);
      v29 = vaddq_s32(v29, v16);
      v18 += 4;
    }

    while (v18 < v20);
    *(v19 + 128) = fmaxf(vmaxvq_f32(v31) - vminvq_f32(v30), 0.0000001);
    ++v6;
    v7 += 108;
  }

  while (v6 != v11);
  v50 = vadd_f32(*&vextq_s8(v8, v8, 8uLL), *v8.f32);
  *a4 = vpadd_f32(v50, v50).u32[0];
  v51 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), *v17.f32);
  result = vpadd_f32(v51, v51);
  *a5 = result.i32[0];
  return result;
}

double physx::PxcNpCacheWrite<physx::PxcLocalContactsCache>(physx::PxcNpCacheStreamPair *a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = 64;
  v5 = physx::PxcNpCacheStreamPair::reserve(a1, 64);
  *a2 = v5;
  if (v5)
  {
    if (v5 == -1)
    {
      *a2 = 0;
    }

    else
    {
      *v5 = *a3;
      *(v5 + 16) = *(a3 + 16);
      *(v5 + 32) = *(a3 + 32);
      result = *(a3 + 48);
      *(v5 + 48) = result;
      *(v5 + 56) = *(a3 + 56);
    }
  }

  return result;
}

void physx::PxvRegisterHeightFields(physx *this)
{
  off_1EE187A30 = physx::PxcContactSphereHeightField;
  off_1EE187AA0 = physx::PxcContactCapsuleHeightField;
  off_1EE187AD8 = physx::PxcContactBoxHeightField;
  off_1EE187B10 = physx::PxcContactConvexHeightField;
  off_1EE1878A8 = physx::PxcPCMContactSphereHeightField;
  off_1EE187918 = physx::PxcPCMContactCapsuleHeightField;
  off_1EE187950 = physx::PxcPCMContactBoxHeightField;
  off_1EE187988 = physx::PxcPCMContactConvexHeightField;
}

uint64_t physx::PxcGetMaterialHeightField(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 88) > 1u)
  {
    v16 = *(a3 + 4656);
    if (v16)
    {
      v17 = *(a1 + 80);
      v18 = *(*(a1 + 72) + 48);
      v19 = (a4 + 2 * a2);
      v20 = (a3 + 612);
      do
      {
        v21 = *v20;
        v20 += 16;
        v22 = v18 + ((2 * v21) & 0x1FFFFFFFCLL);
        if (v21)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        *v19 = *(v17 + 2 * (*(v22 + v23) & 0x7F));
        v19 += 2;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v4 = *(a3 + 4656);
    if (v4)
    {
      v5 = *(a1 + 34);
      v6 = (v4 + 7) & 0x1FFFFFFF8;
      v7 = vdupq_n_s64(v4 - 1);
      v8 = (a4 + 2 * a2 + 16);
      v9 = xmmword_1E305F210;
      v10 = xmmword_1E3049660;
      v11 = xmmword_1E3049640;
      v12 = xmmword_1E3049620;
      v13 = vdupq_n_s64(8uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v7, v12));
        if (vuzp1_s8(vuzp1_s16(v14, *v7.i8), *v7.i8).u8[0])
        {
          *(v8 - 8) = v5;
        }

        if (vuzp1_s8(vuzp1_s16(v14, *&v7), *&v7).i8[1])
        {
          *(v8 - 6) = v5;
        }

        if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v11))), *&v7).i8[2])
        {
          *(v8 - 4) = v5;
          *(v8 - 2) = v5;
        }

        v15 = vmovn_s64(vcgeq_u64(v7, v10));
        if (vuzp1_s8(*&v7, vuzp1_s16(v15, *&v7)).i32[1])
        {
          *v8 = v5;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v15, *&v7)).i8[5])
        {
          v8[2] = v5;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v9)))).i8[6])
        {
          v8[4] = v5;
          v8[6] = v5;
        }

        v10 = vaddq_s64(v10, v13);
        v11 = vaddq_s64(v11, v13);
        v12 = vaddq_s64(v12, v13);
        v8 += 16;
        v9 = vaddq_s64(v9, v13);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return 1;
}

uint64_t physx::PxcGetMaterialShapeHeightField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 88) > 1u)
  {
    v8 = *(a3 + 4656);
    if (v8)
    {
      v9 = *(a2 + 80);
      v10 = *(a1 + 34);
      v11 = *(*(a2 + 72) + 48);
      v12 = (a3 + 612);
      v13 = (a4 + 2);
      do
      {
        *(v13 - 1) = v10;
        v14 = *v12;
        v12 += 16;
        v15 = v11 + ((2 * v14) & 0x1FFFFFFFCLL);
        if (v14)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        *v13 = *(v9 + 2 * (*(v15 + v16) & 0x7F));
        v13 += 2;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v4 = *(a3 + 4656);
    if (v4)
    {
      v5 = *(a1 + 34);
      v6 = *(a2 + 34);
      v7 = (a4 + 2);
      do
      {
        *(v7 - 1) = v5;
        *v7 = v6;
        v7 += 2;
        --v4;
      }

      while (v4);
    }
  }

  return 1;
}

uint64_t physx::PxcGetMaterialMesh(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 4656);
  if (*(a1 + 112) >= 2u)
  {
    if (v4)
    {
      v16 = *(a1 + 96);
      v17 = *(a1 + 104);
      v18 = (a4 + 2 * a2);
      v19 = (a3 + 612);
      do
      {
        v20 = *v19;
        v19 += 16;
        *v18 = *(v17 + 2 * *(v16 + 2 * v20));
        v18 += 2;
        --v4;
      }

      while (v4);
    }
  }

  else if (v4)
  {
    v5 = *(a1 + 34);
    v6 = (v4 + 7) & 0x1FFFFFFF8;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (a4 + 2 * a2 + 16);
    v9 = xmmword_1E305F210;
    v10 = xmmword_1E3049660;
    v11 = xmmword_1E3049640;
    v12 = xmmword_1E3049620;
    v13 = vdupq_n_s64(8uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v7, v12));
      if (vuzp1_s8(vuzp1_s16(v14, *v7.i8), *v7.i8).u8[0])
      {
        *(v8 - 8) = v5;
      }

      if (vuzp1_s8(vuzp1_s16(v14, *&v7), *&v7).i8[1])
      {
        *(v8 - 6) = v5;
      }

      if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v11))), *&v7).i8[2])
      {
        *(v8 - 4) = v5;
        *(v8 - 2) = v5;
      }

      v15 = vmovn_s64(vcgeq_u64(v7, v10));
      if (vuzp1_s8(*&v7, vuzp1_s16(v15, *&v7)).i32[1])
      {
        *v8 = v5;
      }

      if (vuzp1_s8(*&v7, vuzp1_s16(v15, *&v7)).i8[5])
      {
        v8[2] = v5;
      }

      if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v9)))).i8[6])
      {
        v8[4] = v5;
        v8[6] = v5;
      }

      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 = vaddq_s64(v12, v13);
      v8 += 16;
      v9 = vaddq_s64(v9, v13);
      v6 -= 8;
    }

    while (v6);
  }

  return 1;
}

uint64_t physx::PxcGetMaterialShapeMesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 4656);
  if (*(a2 + 112) >= 2u)
  {
    if (v4)
    {
      v8 = *(a1 + 34);
      v9 = (a3 + 612);
      v10 = (a4 + 2);
      v11 = *(a2 + 96);
      v12 = *(a2 + 104);
      do
      {
        *(v10 - 1) = v8;
        v13 = *v9;
        v9 += 16;
        *v10 = *(v12 + 2 * *(v11 + 2 * v13));
        v10 += 2;
        --v4;
      }

      while (v4);
    }
  }

  else if (v4)
  {
    v5 = *(a1 + 34);
    v6 = *(a2 + 34);
    v7 = (a4 + 2);
    do
    {
      *(v7 - 1) = v5;
      *v7 = v6;
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return 1;
}

uint64_t physx::PxcGetMaterialShape(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 4656);
  if (v4)
  {
    v5 = *(a1 + 34);
    v6 = (v4 + 7) & 0x1FFFFFFF8;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (a4 + 2 * a2 + 16);
    v9 = xmmword_1E305F210;
    v10 = xmmword_1E3049660;
    v11 = xmmword_1E3049640;
    v12 = xmmword_1E3049620;
    v13 = vdupq_n_s64(8uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v7, v12));
      if (vuzp1_s8(vuzp1_s16(v14, *v7.i8), *v7.i8).u8[0])
      {
        *(v8 - 8) = v5;
      }

      if (vuzp1_s8(vuzp1_s16(v14, *&v7), *&v7).i8[1])
      {
        *(v8 - 6) = v5;
      }

      if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v11))), *&v7).i8[2])
      {
        *(v8 - 4) = v5;
        *(v8 - 2) = v5;
      }

      v15 = vmovn_s64(vcgeq_u64(v7, v10));
      if (vuzp1_s8(*&v7, vuzp1_s16(v15, *&v7)).i32[1])
      {
        *v8 = v5;
      }

      if (vuzp1_s8(*&v7, vuzp1_s16(v15, *&v7)).i8[5])
      {
        v8[2] = v5;
      }

      if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v9)))).i8[6])
      {
        v8[4] = v5;
        v8[6] = v5;
      }

      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 = vaddq_s64(v12, v13);
      v8 += 16;
      v9 = vaddq_s64(v9, v13);
      v6 -= 8;
    }

    while (v6);
  }

  return 1;
}

uint64_t physx::PxcGetMaterialShapeShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 4656);
  if (v4)
  {
    v5 = *(a1 + 34);
    v6 = *(a2 + 34);
    v7 = (a4 + 2);
    do
    {
      *(v7 - 1) = v5;
      *v7 = v6;
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return 1;
}

void physx::PxcDiscreteNarrowPhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v258 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  if ((v4 & 0x200) == 0)
  {
    return;
  }

  v9 = *(a2 + 54);
  v10 = *(a2 + 55);
  v11 = *(*(a1 + 7168) + 8);
  v12 = *(a2 + 64);
  v13 = *(a2 + 68);
  v14 = v11 + 32 * v12;
  v15 = v11 + 32 * v13;
  v16 = *(a4 + 26);
  if (v4 & 0x80 | v16 & 0x20)
  {
LABEL_9:
    *(a4 + 26) = v16 & 0xDF;
    *(a1 + 7136) = *(*(a1 + 7176) + 4 * v12) + *(*(a1 + 7176) + 4 * v13);
    if (v10 < v9)
    {
      v19 = v10;
    }

    else
    {
      v19 = v9;
    }

    if (v10 < v9)
    {
      v20 = v9;
    }

    else
    {
      v20 = v10;
    }

    if (v10 < v9)
    {
      v21 = v15;
    }

    else
    {
      v21 = v14;
    }

    if (v10 < v9)
    {
      v22 = v14;
    }

    else
    {
      v22 = v15;
    }

    if (v10 < v9)
    {
      v23 = *(a2 + 24);
    }

    else
    {
      v23 = *(a2 + 16);
    }

    if (v10 < v9)
    {
      _X13 = *(a2 + 16);
    }

    else
    {
      _X13 = *(a2 + 24);
    }

    v25 = a1 + 28 * v19 + 4 * v20;
    ++*(v25 + 120);
    *(a1 + 4656) = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 23) = 0;
    *(a4 + 16) = 0;
    __asm { PRFM            #0, [X13] }

    v30 = *(&physx::g_ContactMethodTable[7 * v19] + v20);
    v246 = _X13;
    if (*(a1 + 7185) != 1 || physx::g_CanUseContactCache[8 * v19 - v19 + v20] != 1)
    {
      v174 = v19;
      v30(v23 + 40, _X13 + 40, v21, v22, a1 + 7136, a3, a1 + 560, a1 + 8);
      v173 = v174;
LABEL_118:
      v212 = *(&physx::g_GetMaterialMethodTable[7 * v173] + v20);
      if (v212)
      {
        v212(v23, v246, a1, &v247);
      }

      if (v10 < v9)
      {
        flipContacts(a1, &v247);
      }

      finishContacts(*(a2 + 48), a4, a1, &v247, v20 > 4);
      return;
    }

    _X10 = *a3;
    v218 = v23;
    v219 = v20;
    v217 = v19;
    if (*a3)
    {
      __asm { PRFM            #0, [X10] }

      if (((_X10 & 0x7F) + *(a3 + 8)) >= 0x81)
      {
        __asm { PRFM            #0, [X10,#0x80] }
      }

      v34 = a1 + 560;
      *(a1 + 4656) = 0;
      v36 = *_X10;
      v35 = *(_X10 + 4);
      v247 = *_X10;
      v248 = v35;
      v37 = *(_X10 + 8);
      v38 = *(_X10 + 12);
      v249 = v37;
      v250 = v38;
      v40 = *(_X10 + 20);
      LODWORD(v251) = *(_X10 + 16);
      v39 = *&v251;
      *(&v251 + 1) = v40;
      v41 = *(_X10 + 28);
      *v252 = *(_X10 + 24);
      v42 = *v252;
      *&v252[4] = v41;
      v44 = *(_X10 + 36);
      *&v252[8] = *(_X10 + 32);
      v43 = *&v252[8];
      *&v252[12] = v44;
      v46 = *(_X10 + 44);
      *&v252[16] = *(_X10 + 40);
      v45 = *&v252[16];
      *&v253 = v46;
      v48 = *(_X10 + 52);
      HIDWORD(v253) = *(_X10 + 48);
      v47 = *(&v253 + 1);
      v254 = v48;
      v49 = *(_X10 + 56);
      v255 = *(_X10 + 56);
      v50 = *(_X10 + 58);
      v256 = *(_X10 + 58);
      v51 = *(_X10 + 59);
      v257 = *(_X10 + 59);
      v52 = *(_X10 + 60);
      *a3 = 0;
      *(a3 + 8) = 0;
      v53 = *v22;
      v54 = v22[1];
      v55 = v22[2];
      v56 = v22[3];
      v57 = v21[4] - v22[4];
      v58 = v21[5] - v22[5];
      v59 = v21[6] - v22[6];
      v60 = v57 + v57;
      v61 = v58 + v58;
      v62 = v59 + v59;
      v63 = (v56 * v56) + -0.5;
      v64 = (-(v54 * v61) - (*v22 * v60)) - (v55 * v62);
      v65 = ((v56 * ((v55 * v61) - (v54 * v62))) + (v60 * v63)) - (*v22 * v64);
      v66 = ((v56 * ((*v22 * v62) - (v55 * v60))) + (v61 * v63)) - (v54 * v64);
      v67 = ((v56 * ((v54 * v60) - (*v22 * v61))) + (v62 * v63)) - (v55 * v64);
      v244 = v39;
      v237 = v47;
      v238 = v46;
      v242 = v40;
      v240 = v42;
      v235 = v48;
      v68 = (v39 - v46) + (v39 - v46);
      v69 = (v40 - v47) + (v40 - v47);
      v70 = (v42 - v48) + (v42 - v48);
      v71 = (v45 * v45) + -0.5;
      v72 = (-(v43 * v69) - (v41 * v68)) - (v44 * v70);
      v73 = ((v45 * ((v44 * v69) - (v43 * v70))) + (v68 * v71)) - (v41 * v72);
      v74 = ((v45 * ((v41 * v70) - (v44 * v68))) + (v69 * v71)) - (v43 * v72);
      v75 = ((v45 * ((v43 * v68) - (v41 * v69))) + (v70 * v71)) - (v44 * v72);
      v76 = vabds_f32(v65, v73);
      v77 = vabds_f32(v66, v74);
      if (v76 <= v77)
      {
        v76 = v77;
      }

      v78 = vabds_f32(v67, v75);
      if (v76 <= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = v76;
      }

      if (v79 < (*(a1 + 7144) * 0.01))
      {
        v80 = -v54;
        v81 = v21[2];
        v82 = v21[3];
        v83 = v21[1];
        v84 = (((v53 * *v21) + (v56 * v82)) + (v54 * v83)) + (v55 * v81);
        v85 = (((v82 * -v55) + (v56 * v81)) + (-v53 * v83)) + (*v21 * v54);
        v86 = ((v82 * v80) + (v56 * v83)) + (-v55 * *v21);
        v87 = vabds_f32((((v82 * -v53) + (v56 * *v21)) + (v80 * v81)) + (v83 * v55), (((v38 * -v41) + (v45 * v36)) + (-v43 * v37)) + (v35 * v44));
        v88 = vabds_f32(v86 + (v81 * v53), (((v38 * -v43) + (v45 * v35)) + (-v44 * v36)) + (v37 * v41));
        if (v87 <= v88)
        {
          v87 = v88;
        }

        v89 = vabds_f32(v85, (((v38 * -v44) + (v45 * v37)) + (-v41 * v35)) + (v36 * v43));
        if (v87 <= v89)
        {
          v87 = v89;
        }

        v90 = vabds_f32(v84, (((v36 * v41) + (v45 * v38)) + (v43 * v35)) + (v44 * v37));
        if (v87 <= v90)
        {
          v87 = v90;
        }

        if (v87 < 0.01)
        {
          v215 = v50;
          v216 = v49;
          v234 = v36;
          __n = v52;
          __src = (_X10 + 64);
          v91 = (v52 + 79) & 0xFFFFFFF0;
          *(a3 + 8) = (v52 + 79) & 0xFFF0;
          v92 = physx::PxcNpCacheStreamPair::reserve((a1 + 536), (v52 + 79) & 0xFFF0);
          if (v92 == -1)
          {
            _X8 = 0;
          }

          else
          {
            _X8 = v92;
          }

          *a3 = _X8;
          __asm { PRFM            #0, [X8] }

          if ((_X8 & 0x7F) + v91 >= 0x81)
          {
            __asm { PRFM            #0, [X8,#0x80] }
          }

          *(a1 + 4656) = v216;
          v23 = v218;
          if (v216)
          {
            v96 = 0;
            v97 = *v22;
            v98 = v22[1];
            v99 = v22[2];
            v100 = v22[3];
            v101 = v98 + v98;
            v102 = v99 + v99;
            v103 = v98 * (v98 + v98);
            v104 = v99 * (v99 + v99);
            v105 = (v97 + v97) * v98;
            v106 = (v97 + v97) * v99;
            v107 = (v97 + v97) * v100;
            v108 = v101 * v99;
            v109 = v101 * v100;
            v110 = v102 * v100;
            v233 = (1.0 - v103) - v104;
            v232 = v105 + v110;
            v230 = v105 - v110;
            v231 = v106 - v109;
            v111 = 1.0 - (v97 * (v97 + v97));
            v228 = v108 + v107;
            v229 = v111 - v104;
            v226 = v108 - v107;
            v227 = v106 + v109;
            v224 = v22[4];
            v225 = v111 - v103;
            v222 = v22[6];
            v223 = v22[5];
            v112 = *v21;
            v113 = v21[1];
            v114 = v21[2];
            v115 = v21[3];
            v116 = v113 + v113;
            v117 = v114 + v114;
            v118 = v113 * (v113 + v113);
            v119 = v114 * (v114 + v114);
            v120 = (v112 + v112) * v113;
            v121 = (v112 + v112) * v114;
            v122 = (v112 + v112) * v115;
            v123 = v116 * v114;
            v124 = v116 * v115;
            v125 = v117 * v115;
            v221 = (1.0 - v118) - v119;
            v220 = v121 - v124;
            v126 = 1.0 - (v112 * (v112 + v112));
            v127 = v126 - v119;
            v128 = v121 + v124;
            v129 = v126 - v118;
            v130 = v21[4];
            v131 = v21[5];
            v132 = v21[6];
            v133 = (v38 * v38) + -0.5;
            v134 = 560;
            v135 = v216;
            _X13 = __src;
            do
            {
              if (v135 != 1)
              {
                __asm { PRFM            #0, [X13,#0x80] }
              }

              v138 = v134 != 560;
              _ZF = (v138 & v51) == 0;
              if ((v138 & v51) != 0)
              {
                v140 = 0;
              }

              else
              {
                v140 = 12;
              }

              v141 = &_X13[v140];
              v142 = *(v141 + 1);
              v143 = *(v141 + 2);
              v144 = (*v141 - v244) + (*v141 - v244);
              v145 = (v142 - v242) + (v142 - v242);
              v146 = (v143 - v240) + (v143 - v240);
              v147 = ((v35 * v145) + (v234 * v144)) + (v37 * v146);
              v148 = ((v144 * v133) - (((v145 * -v37) + (v35 * v146)) * v38)) + (v234 * v147);
              v149 = ((v145 * v133) - (((v146 * -v234) + (v37 * v144)) * v38)) + (v35 * v147);
              v150 = ((v146 * v133) - (((v144 * -v35) + (v234 * v145)) * v38)) + (v37 * v147);
              v151 = (v128 * v150) + ((v221 * v148) + ((v120 - v125) * v149));
              v152 = ((v123 - v122) * v150) + (((v120 + v125) * v148) + (v127 * v149));
              v153 = (v129 * v150) + ((v220 * v148) + ((v123 + v122) * v149));
              v154 = (*v141 - v238) + (*v141 - v238);
              v155 = (v142 - v237) + (v142 - v237);
              v156 = (v143 - v235) + (v143 - v235);
              v157 = ((v43 * v155) + (v41 * v154)) + (v44 * v156);
              v158 = ((v154 * v71) - (((v155 * -v44) + (v43 * v156)) * v45)) + (v41 * v157);
              v159 = ((v155 * v71) - (((v156 * -v41) + (v44 * v154)) * v45)) + (v43 * v157);
              v160 = ((v156 * v71) - (((v154 * -v43) + (v41 * v155)) * v45)) + (v44 * v157);
              v161 = (v231 * v158) + (v228 * v159);
              v162 = (v227 * v160) + ((v233 * v158) + (v230 * v159));
              v163 = (v226 * v160) + ((v232 * v158) + (v229 * v159));
              v164 = *(v141 + 3);
              v165 = a1 + v134;
              if (_ZF)
              {
                v96 = _X13;
              }

              v166 = v130 + v151;
              v167 = v131 + v152;
              v168 = v224 + v162;
              v169 = v223 + v163;
              *v165 = *v96;
              *(v165 + 8) = *(v96 + 2);
              *(v165 + 16) = (v166 + v168) * 0.5;
              *(v165 + 20) = (v167 + v169) * 0.5;
              v170 = v132 + v153;
              v171 = v222 + ((v225 * v160) + v161);
              *(v165 + 24) = (v170 + v171) * 0.5;
              *(v165 + 12) = v164 + (((*(v96 + 1) * (v167 - v169)) + ((v166 - v168) * *v96)) + ((v170 - v171) * *(v96 + 2)));
              if (v215)
              {
                _X13 = v141 + 20;
                v172 = *(v141 + 4);
              }

              else
              {
                _X13 = v141 + 16;
                v172 = -1;
              }

              *(v165 + 52) = v172;
              v134 += 64;
              --v135;
            }

            while (v135);
          }

          if (_X8)
          {
            *_X8 = v234;
            *(_X8 + 4) = v35;
            *(_X8 + 8) = v37;
            *(_X8 + 12) = v38;
            *(_X8 + 16) = v244;
            *(_X8 + 20) = v242;
            *(_X8 + 24) = v240;
            *(_X8 + 28) = *&v252[4];
            *(_X8 + 44) = v253;
            *(_X8 + 52) = v254;
            *(_X8 + 56) = v216;
            *(_X8 + 58) = v215;
            *(_X8 + 59) = v51;
            *(_X8 + 60) = __n;
            memcpy((_X8 + 64), __src, __n);
          }

          ++*(a1 + 7192);
          v20 = v219;
          v173 = v217;
          goto LABEL_118;
        }
      }
    }

    else
    {
      v34 = a1 + 560;
      *(a1 + 4656) = 0;
      *(a3 + 8) = 0;
    }

    v30(v23 + 40, _X13 + 40, v21, v22, a1 + 7136, a3, v34, a1 + 8);
    v178 = *v21;
    v179 = v21[1];
    v247 = *v21;
    v248 = v179;
    v180 = v21[2];
    v181 = v21[3];
    v249 = v180;
    v250 = v181;
    v182 = *(v21 + 2);
    v251 = v182;
    v183 = *(v21 + 6);
    v184 = *v22;
    v185 = *(v22 + 1);
    LODWORD(v186) = v183;
    *(&v186 + 1) = *v22;
    *(&v186 + 1) = v185;
    *v252 = v186;
    v187 = *(v22 + 3);
    *&v252[16] = v187;
    v188 = *(v22 + 4);
    LODWORD(v253) = v188;
    v189 = *(v22 + 5);
    HIDWORD(v253) = v189;
    v190 = v22[6];
    v254 = v190;
    v191 = *(a1 + 4656);
    if (!v191)
    {
      v255 = 0;
      v256 = 0;
      v196 = (a1 + 536);
      goto LABEL_116;
    }

    v192 = *(a1 + 612);
    v256 = v192 != -1;
    v243 = v185;
    v245 = v182;
    v239 = v183;
    v241 = v184;
    if (v191 != 1)
    {
      v197 = *(a1 + 560);
      v193 = 1;
      if (*(a1 + 624) != v197 || (v198 = *(a1 + 564), *(a1 + 628) != v198) || (v199 = *(a1 + 568), *(a1 + 632) != v199))
      {
LABEL_99:
        v257 = 0;
        if (v192 == -1)
        {
          v204 = 28;
        }

        else
        {
          v204 = 32;
        }

        v195 = v204 * v191;
        goto LABEL_103;
      }

      v200 = (a1 + 696);
      v201 = 2;
      while (v191 != v201)
      {
        v202 = v201;
        if (*(v200 - 2) == v197 && *(v200 - 1) == v198)
        {
          v203 = *v200;
          v200 += 16;
          ++v201;
          if (v203 == v199)
          {
            continue;
          }
        }

        v193 = v202 < v191;
        goto LABEL_99;
      }
    }

    v193 = 0;
    v257 = 1;
    if (v192 == -1)
    {
      v194 = 16;
    }

    else
    {
      v194 = 20;
    }

    v195 = v194 * v191 + 12;
LABEL_103:
    v196 = (a1 + 536);
    v236 = v195;
    v205 = v195 + 79;
    *(a3 + 8) = v205 & 0xFFF0;
    v206 = physx::PxcNpCacheStreamPair::reserve((a1 + 536), v205 & 0xFFF0);
    if (v206 == -1)
    {
      v207 = 0;
    }

    else
    {
      v207 = v206;
    }

    *a3 = v207;
    if (v207)
    {
      v208 = 0;
      *v207 = v178;
      *(v207 + 4) = v179;
      *(v207 + 8) = v180;
      *(v207 + 12) = v181;
      *&v209 = v245;
      *(&v209 + 1) = __PAIR64__(LODWORD(v241), v239);
      *(v207 + 16) = v209;
      *(v207 + 32) = v243;
      *(v207 + 40) = v187;
      *(v207 + 44) = v188;
      *(v207 + 48) = v189;
      *(v207 + 52) = v190;
      *(v207 + 56) = v191;
      *(v207 + 58) = v192 != -1;
      *(v207 + 59) = v257;
      *(v207 + 60) = v236;
      v210 = v207 + 64;
      v211 = a1 + 560;
      v20 = v219;
      v173 = v217;
      do
      {
        if (((v208 != 0) & ~v193) == 0)
        {
          *v210 = *v211;
          *(v210 + 8) = *(v211 + 8);
          v210 += 12;
        }

        *v210 = vextq_s8(*(v211 + 12), *(v211 + 12), 4uLL);
        if (v192 == -1)
        {
          v210 += 16;
        }

        else
        {
          *(v210 + 16) = *(v211 + 52);
          v210 += 20;
        }

        ++v208;
        v211 += 64;
      }

      while (v191 != v208);
      goto LABEL_117;
    }

    v255 = 0;
LABEL_116:
    physx::PxcNpCacheWrite<physx::PxcLocalContactsCache>(v196, a3, &v247);
    v20 = v219;
    v173 = v217;
LABEL_117:
    v23 = v218;
    goto LABEL_118;
  }

  if ((v4 & 0x20) != 0)
  {
    v17 = (*(v14 + 28) & 1) == 0;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = 0;
    if ((v4 & 0x40) != 0)
    {
LABEL_5:
      v18 = (*(v15 + 28) & 1) == 0;
      goto LABEL_8;
    }
  }

  v18 = 0;
LABEL_8:
  if (v17 || v18)
  {
    goto LABEL_9;
  }

  if (v10 <= v9)
  {
    v175 = *(a2 + 54);
  }

  else
  {
    v175 = *(a2 + 55);
  }

  if (*(a1 + 7185) == 1)
  {
    if (v10 >= v9)
    {
      v176 = *(a2 + 54);
    }

    else
    {
      v176 = *(a2 + 55);
    }

    v177 = physx::g_CanUseContactCache[8 * v176 - v176 + v175];
  }

  else
  {
    v177 = 0;
  }

  if (*(a4 + 24))
  {
    ++*(a1 + 7196);
  }

  copyBuffers(a4, a3, a1, v177 & 1, v175 > 4);
}

void physx::PxcDiscreteNarrowPhasePCM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  if ((v4 & 0x200) == 0)
  {
    return;
  }

  v5 = a4;
  v6 = a3;
  v9 = *(a2 + 54);
  v10 = *(a2 + 55);
  v11 = *(*(a1 + 7168) + 8);
  v12 = *(a2 + 64);
  v13 = *(a2 + 68);
  v14 = v11 + 32 * v12;
  v15 = v11 + 32 * v13;
  v16 = *(a4 + 26);
  if (v4 & 0x80 | v16 & 0x20)
  {
    goto LABEL_9;
  }

  if ((v4 & 0x20) != 0)
  {
    v17 = (*(v14 + 28) & 1) == 0;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = 0;
    if ((v4 & 0x40) != 0)
    {
LABEL_5:
      v18 = (*(v15 + 28) & 1) == 0;
      goto LABEL_8;
    }
  }

  v18 = 0;
LABEL_8:
  if (v17 || v18)
  {
LABEL_9:
    v19 = *(a1 + 7176);
    v20 = *(v19 + 4 * v12);
    *(a4 + 26) = v16 & 0xDF;
    *(a1 + 7136) = v20 + *(v19 + 4 * v13);
    if (v10 < v9)
    {
      v21 = v10;
    }

    else
    {
      v21 = v9;
    }

    if (v10 < v9)
    {
      v22 = v9;
    }

    else
    {
      v22 = v10;
    }

    if (v10 < v9)
    {
      v23 = v15;
    }

    else
    {
      v23 = v14;
    }

    if (v10 < v9)
    {
      v24 = v14;
    }

    else
    {
      v24 = v15;
    }

    if (v10 < v9)
    {
      v25 = *(a2 + 24);
    }

    else
    {
      v25 = *(a2 + 16);
    }

    if (v10 < v9)
    {
      v26 = *(a2 + 16);
    }

    else
    {
      v26 = *(a2 + 24);
    }

    v27 = a1 + 4672;
    v71 = *(v6 + 11);
    v72 = v22;
    if ((v71 & 2) != 0)
    {
      v69 = v26;
      v40 = *v6;
      v70 = v10;
      v41 = v9;
      v42 = v5;
      v43 = v6;
      v44 = v23;
      v45 = v24;
      physx::Gu::MultiplePersistentContactManifold::fromBuffer(a1 + 4672, v40);
      v24 = v45;
      v23 = v44;
      v6 = v43;
      v5 = v42;
      v9 = v41;
      v10 = v70;
      v26 = v69;
      *v6 = v27;
      *(v6 + 11) |= 3u;
    }

    else if (*(v6 + 11))
    {
      _X8 = *v6;
      v29 = *v6 >> 5;
      __asm { PRFM            #0, [X8] }

      v35 = ~((*v6 + 127) >> 5) + v29;
      _X11 = *v6;
      do
      {
        __asm { PRFM            #0, [X11] }

        _X11 += 32;
        _CF = __CFADD__(v35++, 1);
      }

      while (!_CF);
      v38 = ~((_X8 + 255) >> 5) + v29;
      do
      {
        __asm { PRFM            #0, [X8] }

        _X8 += 32;
        _CF = __CFADD__(v38++, 1);
      }

      while (!_CF);
    }

    v46 = a1 + 28 * v21 + 4 * v72;
    ++*(v46 + 120);
    *(a1 + 4656) = 0;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 23) = 0;
    *(v5 + 16) = 0;
    v47 = 7 * v21;
    v48 = v26;
    (*(&physx::g_PCMContactMethodTable[v47] + v72))(v25 + 40, v26 + 40, v23, v24, a1 + 7136, v6, a1 + 560, a1 + 8);
    v49 = *(&physx::g_GetMaterialMethodTable[v47] + v72);
    if (v49)
    {
      v49(v25, v48, a1, v73);
    }

    if (v10 < v9)
    {
      flipContacts(a1, v73);
    }

    if ((v71 & 2) != 0)
    {
      v50 = 48 * *(a1 + 4735) + 16 * *(a1 + 4734);
      v51 = v50 + 48;
      v52 = physx::PxcNpCacheStreamPair::reserve((a1 + 536), v50 + 48);
      if (v52)
      {
        *(v52 + 32) = *(a1 + 4734);
        v53 = *(a1 + 4688);
        *v52 = *(a1 + 4672);
        *(v52 + 16) = v53;
        v54 = *(a1 + 4734);
        if (*(a1 + 4734))
        {
          v55 = 0;
          v56 = (v52 + 48);
          v57 = a1 + 4728;
          do
          {
            v58 = *(v57 + v55);
            v59 = a1 + 4736 + 400 * *(v57 + v55);
            v60 = *(v59 + 384);
            *v56 = v60;
            v61 = v56 + 4;
            if (v60)
            {
              v62 = 0;
              v63 = v56 + 7;
              v64 = (a1 + 4784 + 400 * v58);
              do
              {
                *(v63 - 3) = *(v64 - 3);
                *(v63 + 1) = *(v64 - 2);
                *(v63 + 5) = *(v64 - 1);
                v65 = *v64;
                v64 += 16;
                *v63 = v65;
                v63 += 12;
                ++v62;
                v66 = *(v59 + 384);
              }

              while (v62 < v66);
              v54 = *(a1 + 4734);
              v67 = 12 * v66;
            }

            else
            {
              v67 = 0;
            }

            v56 = &v61[v67];
            ++v55;
          }

          while (v55 < v54);
        }

        *(v6 + 8) = v51;
      }

      *v6 = v52;
      *(v6 + 11) |= 3u;
    }

    finishContacts(*(a2 + 48), v5, a1, v73, v72 > 4);
    return;
  }

  if (v10 <= v9)
  {
    v68 = *(a2 + 54);
  }

  else
  {
    v68 = *(a2 + 55);
  }

  if (*(a4 + 24))
  {
    ++*(a1 + 7196);
  }

  copyBuffers(a4, a3, a1, 0, v68 > 4);
}

float flipContacts(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4656);
  if (v2)
  {
    v3 = a2 + 2;
    v4 = (a1 + 568);
    do
    {
      result = -*v4;
      *(v4 - 1) = vneg_f32(*(v4 - 2));
      *v4 = result;
      v4 += 16;
      HIDWORD(v6) = *(v3 - 2);
      LODWORD(v6) = HIDWORD(v6);
      *(v3 - 2) = v6 >> 16;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t finishContacts(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v6 = *(a3 + 4656);
  *(a2 + 24) = v6;
  v7 = *(a2 + 26) & 0xFC;
  if (v6)
  {
    ++*(a3 + 7196);
    *(a2 + 26) = v7 | 2;
    v9 = 4 * v6;
    v11 = 0;
    if (result & 1) != 0 || (*(a3 + 7186))
    {
      v10 = 1;
    }

    else
    {
      v10 = BYTE1(result) & 1;
    }

    if (!(v10 | a5))
    {
      v9 = 0;
    }

    result = physx::writeCompressedContact((a3 + 560), v6, a3, (a2 + 24), a2, (a2 + 8), &v11, (a2 + 16), v9, *(a3 + 7256), (result & 0x80) != 0, 0, a4, (a2 + 25), 0, 0, 0, *(a3 + 7187), *(a3 + 7224), *(a3 + 7232), *(a3 + 7240), a5);
    if (*(a3 + 4656))
    {
      if (!*(a2 + 24))
      {
        *(a2 + 26) = *(a2 + 26) & 0xFC | 1;
        *(a2 + 24) = 0;
        --*(a3 + 7196);
      }
    }
  }

  else
  {
    *(a2 + 26) = v7 | 1;
    *(a2 + 24) = 0;
  }

  return result;
}

void copyBuffers(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = *(a1 + 24);
  v8 = 48 * *(a1 + 25) + 16 * *(a1 + 24);
  if (v8)
  {
    v11 = *a1;
    v12 = *(a1 + 16);
    if (a5)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v14 = (v7 << v13);
    v15 = *(a3 + 7224);
    if (v15)
    {
      v16 = *(a1 + 8);
      v17 = 48 * *(a1 + 25);
      add = atomic_fetch_add((v15 + 8), 16 * v7);
      v19 = *(a3 + 7224);
      v20 = *(v19 + 3);
      v21 = *(v19 + 4) + *(v19 + 2);
      v22 = *v19;
      v23 = atomic_fetch_add((*(a3 + 7232) + 8), v17);
      v24 = *(a3 + 7232);
      v25 = *(v24 + 3);
      v27 = *(v24 + 4) + *(v24 + 2) >= v25 || v21 >= v20;
      v28 = *v24;
      if (v7)
      {
        v29 = atomic_fetch_add((*(a3 + 7240) + 8), v14);
        v30 = *(a3 + 7240);
        v31 = *(v30 + 12);
        if (*(v30 + 16) + *(v30 + 8) < v31 && !v27)
        {
          v51 = v12;
          v52 = v14;
          v53 = a4;
          v32 = (*v30 + v31 - (v29 + v14));
          goto LABEL_29;
        }
      }

      else if (!v27)
      {
        v51 = v12;
        v52 = v14;
        v53 = a4;
        v32 = 0;
LABEL_29:
        v38 = (v22 + v20 - (add + 16 * v7));
        v37 = (v28 + v25 - (v23 + v17));
        memcpy(v37, v11, v17);
        memcpy(v38, v16, (16 * v7));
        if (a5)
        {
LABEL_30:
          memcpy(&v32[4 * *(a1 + 24)], (v51 + 4 * *(a1 + 24)), 4 * *(a1 + 24));
        }

LABEL_31:
        if (v7 && v32)
        {
          bzero(v32, v52);
        }

        goto LABEL_36;
      }

      v37 = 0;
      v38 = 0;
      v32 = 0;
      *(a1 + 24) = 0;
LABEL_37:
      *a1 = v37;
      *(a1 + 8) = v38;
      *(a1 + 16) = v32;
      goto LABEL_38;
    }

    v33 = v14 + v8 + 15;
    v34 = v33 & 0xFFF0;
    v53 = a4;
    if (v34 > 0x4000)
    {
      v35 = *a1;
      v36 = physx::PxcNpMemBlockPool::acquireExceptionalConstraintMemory(*(a3 + 512), v33 & 0xFFF0);
      v11 = v35;
      v37 = v36;
      if (!v36)
      {
        goto LABEL_35;
      }

LABEL_23:
      v51 = v12;
      v52 = v14;
      if (v7)
      {
        v32 = &v37[v8];
      }

      else
      {
        v32 = 0;
      }

      v38 = &v37[48 * *(a1 + 25)];
      memcpy(v37, v11, v8);
      if (a5)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v39 = *(a3 + 520);
    if (v39 && (v40 = *(a3 + 528), v40 + v34 <= 0x4000))
    {
      v37 = (v39 + v40);
      *(a3 + 528) = v40 + v34;
      if (v39 + v40)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v41 = *a1;
      v42 = physx::PxcNpMemBlockPool::acquire(*(a3 + 512), *(a3 + 512) + 16 * *(*(a3 + 512) + 188) + 24, 0, 0, 1);
      v11 = v41;
      v37 = v42;
      *(a3 + 520) = v42;
      *(a3 + 528) = v34;
      if (v42)
      {
        goto LABEL_23;
      }
    }

LABEL_35:
    v38 = 0;
    v32 = 0;
    *(a1 + 24) = 0;
LABEL_36:
    a4 = v53;
    goto LABEL_37;
  }

LABEL_38:
  v43 = *(a2 + 8);
  if (!*(a2 + 8))
  {
    return;
  }

  if ((*(a2 + 11) & 2) != 0)
  {
    v48 = physx::PxcNpCacheStreamPair::reserve((a3 + 536), v43);
    v49 = v48;
    v50 = *a2;
    if (v48 && v50)
    {
      memcpy(v48, v50, *(a2 + 8));
      v50 = *a2;
    }

    if (v50)
    {
      *a2 = v49;
      *(a2 + 11) |= 3u;
    }
  }

  else
  {
    if (!a4)
    {
      return;
    }

    v44 = *a2;
    v45 = physx::PxcNpCacheStreamPair::reserve((a3 + 536), (v43 + 15) & 0xFFF0);
    v46 = v45;
    if (v45)
    {
      v47 = v44 == 0;
    }

    else
    {
      v47 = 1;
    }

    if (!v47)
    {
      memcpy(v45, v44, *(a2 + 8));
LABEL_53:
      *a2 = v46;
      return;
    }

    if (v44)
    {
      goto LABEL_53;
    }
  }
}

uint64_t physx::PxcNpCacheStreamPair::reserve(physx::PxcNpCacheStreamPair *this, int a2)
{
  v2 = (a2 + 15) & 0xFFFFFFF0;
  if (v2 > 0x4000)
  {
    return -1;
  }

  result = *(this + 1);
  if (!result || (v5 = *(this + 4), v5 + v2 > 0x4000))
  {
    result = physx::PxcNpMemBlockPool::acquire(*this, *this + 16 * *(*this + 176) + 88, 0, 0, 0);
    *(this + 1) = result;
    *(this + 4) = 0;
    if (!result)
    {
      return result;
    }

    v5 = 0;
  }

  result += v5;
  *(this + 4) = v5 + v2;
  return result;
}

uint64_t physx::writeCompressedContact(float *a1, unsigned int a2, uint64_t a3, _BYTE *a4, void *a5, float *a6, _WORD *a7, uint64_t *a8, int a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int16 *a13, _BYTE *a14, unsigned int a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22)
{
  v230 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v27 = 0;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
    *a8 = 0;
    *a7 = 0;
    *a14 = 0;
    return v27;
  }

  v222 = a3;
  v225 = a1;
  v226 = a13;
  v24 = a2;
  v25 = 5 * a2;
  v229 = v25 > 0x400;
  v224 = a8;
  v220 = a6;
  *&v217 = a5;
  *&v216 = a7;
  if (v25 < 0x401)
  {
    MEMORY[0x1EEE9AC00](a1);
    v26 = &v210 - ((v25 + 15) & 0x1FFFFFFF0);
    bzero(v26, v25);
  }

  else
  {
    v26 = physx::shdfnd::TempAllocator::allocate(&v227, 5 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/src/pipeline/PxcNpContactPrepShared.cpp", 87);
  }

  v228 = v26;
  v28 = v225;
  v29 = v226;
  if (a2 == 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v54 = v226[1];
    v55 = *v226;
    v57 = v225[1];
    v56 = v225[2];
    v58 = 1;
    v35 = 1;
    v34 = 1;
    v33 = a2;
    v32 = 1;
    v59 = *v225;
    do
    {
      v60 = &v28[16 * v58];
      v61 = *v60;
      v62 = v60[1];
      v63 = v60[2];
      v64 = ((v57 * v62) + (v59 * *v60)) + (v56 * v63);
      v65 = &v29[2 * v58];
      if (v64 < 0.999 || *v65 != v55 || v65[1] != v54)
      {
        v66 = &v26[5 * v35 - 5];
        *v66 = v31;
        v66[1] = v58;
        v66[2] = -1;
        v67 = v58 - v31;
        v66[3] = v67;
        v66[4] = v32;
        if (v30)
        {
          v30[3] += v67;
        }

        if (v35 < 2)
        {
LABEL_45:
          v30 = 0;
          v32 = 1;
        }

        else
        {
          v68 = 0;
          v32 = 0;
          v30 = v26;
          while (1)
          {
            if (v30[4] == 1)
            {
              v69 = *v30;
              if ((((v62 * v28[16 * v69 + 1]) + (v61 * v28[16 * v69])) + (v63 * v28[16 * v69 + 2])) >= 0.999)
              {
                v70 = &v29[2 * v69];
                if (*v65 == *v70 && v65[1] == v70[1])
                {
                  break;
                }
              }
            }

            v32 = v68 + 2 >= v35;
            ++v68;
            v30 += 5;
            if (v35 - 1 == v68)
            {
              goto LABEL_45;
            }
          }

          do
          {
            v72 = &v26[5 * v68];
            v74 = v72[2];
            v73 = v72 + 2;
            v68 = v74;
          }

          while (v74 != 255);
          *v73 = v35;
        }

        v55 = *v65;
        if (v67 > 1)
        {
          v71 = a18;
        }

        else
        {
          v71 = 0;
        }

        v54 = v65[1];
        v33 += v71;
        ++v35;
        v34 += v32;
        v31 = v58;
        v56 = v63;
        v57 = v62;
        v59 = v61;
      }

      ++v58;
    }

    while (v58 != v24);
  }

  v36 = a11 & ~a12;
  v37 = a2 - v31;
  if (a2 - v31 > 1)
  {
    v38 = a18;
  }

  else
  {
    v38 = 0;
  }

  v39 = v33 + v38;
  v40 = &v26[5 * v35 - 5];
  *v40 = v31;
  if (((a9 != 0) & a18) != 0)
  {
    v41 = 4 * (v39 - a2);
  }

  else
  {
    v41 = 0;
  }

  v40[1] = a2;
  v40[2] = -1;
  v40[3] = v37;
  v40[4] = v32;
  if (v30)
  {
    v30[3] += v37;
  }

  v42 = a22;
  v43 = v41 + a9;
  *&v214 = a14;
  *a14 = v34;
  if (v36)
  {
    v44 = v39;
  }

  else
  {
    v44 = v34;
  }

  v45 = a15 + 48 * v44;
  if (v36)
  {
    v46 = 6;
  }

  else
  {
    v46 = 4;
  }

  v47 = v39 << v46;
  if (a15)
  {
    _ZF = 1;
  }

  else
  {
    _ZF = a19 == 0;
  }

  if (_ZF)
  {
    v49 = 1;
  }

  else
  {
    v49 = a11 & ~a12;
  }

  v223 = a18;
  v221 = a22;
  v218 = v25;
  v219 = a4;
  v213 = v39;
  v211 = a12;
  LODWORD(v212) = a11 & ~a12;
  if (v49)
  {
    v50 = (v43 << a22);
    v215 = (v45 + v47 + 15) & 0xFFFFFFF0;
    v51 = v215 + v50;
    if (a16)
    {
      v52 = (v51 + 15) & 0xFFFFFFF0;
      if (v52 <= 0x4000)
      {
        v95 = *(a17 + 8);
        if (v95 && (v96 = *(a17 + 16), v96 + v52 <= 0x4000))
        {
          _X19 = v95 + v96;
          *(a17 + 16) = v96 + v52;
        }

        else
        {
          v97 = physx::PxcNpMemBlockPool::acquire(*a17, a16, (*a17 + 244), (*a17 + 240), 1);
          v42 = v221;
          v29 = v226;
          _X19 = v97;
          *(a17 + 8) = v97;
          *(a17 + 16) = v52;
        }

        goto LABEL_78;
      }

      v53 = *a17;
    }

    else
    {
      v52 = (v51 + 15) & 0xFFFFFFF0;
      if (v52 <= 0x4000)
      {
        v98 = v222;
        v99 = *(v222 + 520);
        if (v99 && (v100 = *(v222 + 528), v100 + v52 <= 0x4000))
        {
          _X19 = v99 + v100;
          *(v222 + 528) = v100 + v52;
        }

        else
        {
          v101 = physx::PxcNpMemBlockPool::acquire(*(v222 + 512), *(v222 + 512) + 16 * *(*(v222 + 512) + 188) + 24, 0, 0, 1);
          v42 = v221;
          v29 = v226;
          _X19 = v101;
          *(v98 + 520) = v101;
          *(v98 + 528) = v52;
        }

        goto LABEL_78;
      }

      v53 = *(v222 + 512);
    }

    v93 = physx::PxcNpMemBlockPool::acquireExceptionalConstraintMemory(v53, v52);
    v42 = v221;
    v29 = v226;
    _X19 = v93;
LABEL_78:
    _X23 = _X19 + v45;
    if (v50)
    {
      v92 = v215;
      if (_X19)
      {
        v102 = (_X19 + v215);
        if (v42)
        {
          _X24 = &v102[4 * v24];
        }

        else
        {
          _X24 = 0;
        }

        v210 = _X19 + v215;
        bzero(v102, v50);
        v29 = v226;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X23]
        }

        v94 = v222;
        goto LABEL_87;
      }

      _X24 = v45;
      goto LABEL_154;
    }

    _X24 = 0;
    v210 = 0;
    v92 = v215;
    goto LABEL_85;
  }

  add = atomic_fetch_add((a19 + 8), v47);
  v77 = *(a19 + 12);
  v78 = *(a19 + 16) + *(a19 + 8);
  _X23 = *a19 + v77 - (add + v47);
  v80 = atomic_fetch_add((a20 + 8), v45);
  v81 = *(a20 + 12);
  v82 = v80 + v45;
  v84 = *(a20 + 16) + *(a20 + 8) >= v81 || v78 >= v77;
  _X19 = *a20 + v81 - v82;
  _X24 = 0;
  if (!v43)
  {
    v94 = v222;
    if (!v84)
    {
      v92 = v45 + v47;
      v210 = 0;
      goto LABEL_86;
    }

LABEL_154:
    _X8 = 0;
    __asm
    {
      PRFM            #0, [X8]
      PRFM            #0, [X24]
    }

    v109 = v214;
    goto LABEL_155;
  }

  v87 = atomic_fetch_add((a21 + 8), v43 << a22) + (v43 << a22);
  v88 = *(a21 + 12);
  v89 = *(a21 + 16) + *(a21 + 8) >= v88 || v84;
  v90 = *a21 + v88 - v87;
  v91 = (v90 + 4 * v24);
  if (!a22)
  {
    v91 = 0;
  }

  if (v89)
  {
    goto LABEL_154;
  }

  v210 = v90;
  v92 = v45 + v47;
  _X24 = v91;
LABEL_85:
  v94 = v222;
LABEL_86:
  __asm
  {
    PRFM            #0, [X19]
    PRFM            #0, [X23]
  }

  v109 = v214;
  if (_X19)
  {
LABEL_87:
    v222 = a10;
    if (v94)
    {
      *(v94 + 7188) += v92;
      *(v94 + 7216) += v92;
    }

    v215 = v92;
    *v216 = v92;
    v110 = *v29;
    v111 = (*v222 + 32 * v110);
    v112 = v29[1];
    v113 = (*v222 + 32 * v112);
    v114 = physx::PxsMaterialCombiner::combineRestitution(v111, v113);
    __asm { FMOV            V9.2S, #1.0 }

    v227 = _D9;
    v116 = physx::PxsMaterialCombiner::combineIsotropicFriction(&v227, v111, v113);
    v118 = HIDWORD(v116);
    *v217 = _X19;
    v119 = (_X19 + a15);
    *v220 = _X23;
    *v224 = v210;
    if (v212)
    {
      if (v211)
      {
        v120 = 6;
      }

      else
      {
        v120 = 2;
      }

      v122 = v225;
      v121 = v226;
      v123 = v223;
      if (v35)
      {
        v124 = v110;
        v125 = v112;
        v126 = 0;
        v127 = 0;
        v128 = v120 | v221;
        v129 = v225 + 3;
        __asm { FMOV            V2.4S, #1.0 }

        v131 = xmmword_1E3113790;
        v132 = v35;
        v221 |= v120;
        v220 = v225 + 3;
        v216 = xmmword_1E3113790;
        v217 = _Q2;
        *&v214 = v35;
        do
        {
          v133 = &v26[5 * v126];
          if (v133[4] == 1)
          {
            v134 = &v121[2 * *v133];
            v135 = *v134;
            v136 = v134[1];
            if (v135 != v124 || v136 != v125)
            {
              v138 = *v222 + 32 * v135;
              v139 = *v222 + 32 * v136;
              v224 = v119;
              v114 = physx::PxsMaterialCombiner::combineRestitution(v138, v139);
              v227 = _D9;
              v140 = v138;
              v129 = v220;
              v141 = v139;
              v132 = v214;
              v116 = physx::PxsMaterialCombiner::combineIsotropicFriction(&v227, v140, v141);
              v131 = v216;
              _Q2 = v217;
              v128 = v221;
              v119 = v224;
              v122 = v225;
              v123 = v223;
              v121 = v226;
              v118 = HIDWORD(v116);
              v125 = v136;
              v124 = v135;
            }

            v142 = v133[3];
            *(v119 + 41) = v142;
            *(v119 + 40) = v127;
            *(v119 + 42) = v117;
            *(v119 + 8) = v118;
            *(v119 + 9) = v116;
            *(v119 + 7) = v114;
            *(v119 + 22) = v135;
            *(v119 + 23) = v136;
            v119[2] = *v122;
            *(v119 + 6) = v122[2];
            *v119 = _Q2;
            *(v119 + 43) = v128;
            if (v123 && v142 >= 2)
            {
              v143 = 0uLL;
              if (v126 != 255)
              {
                for (i = v126; i != 255; i = v145[2])
                {
                  v145 = &v26[5 * i];
                  v146 = *v145;
                  v147 = v145[1];
                  if (v146 < v147)
                  {
                    v148 = &v129[16 * v146];
                    v149 = v147 - v146;
                    do
                    {
                      v150 = *v148;
                      v148 += 4;
                      v143 = vaddq_f32(v143, vextq_s8(v150, v150, 4uLL));
                      --v149;
                    }

                    while (v149);
                  }
                }
              }

              if (_X24)
              {
                *_X24 = v122[16 * v26[1275] + 13];
                _X24 += 4;
              }

              *(v119 + 41) = v142 + 1;
              *_X23 = vmulq_n_f32(v143, 1.0 / v142);
              *(_X23 + 32) = *v122;
              v151 = *(v122 + 2);
              *(_X23 + 16) = v131;
              *(_X23 + 56) = v116;
              *(_X23 + 60) = v118;
              *(_X23 + 40) = v151;
              *(_X23 + 44) = v114;
              *(_X23 + 48) = v117;
              *(_X23 + 52) = v135;
              *(_X23 + 54) = v136;
              __asm { PRFM            #0, [X23,#0xC0] }

              _X23 += 64;
              ++v127;
            }

            v119 += 6;
            if (v126 != 255)
            {
              for (j = v126; j != 255; j = v154[2])
              {
                v154 = &v26[5 * j];
                v155 = *v154;
                v156 = v154[1];
                if (v155 < v156)
                {
                  v157 = 0;
                  v158 = v156 - *v154;
                  v159 = &v122[16 * v155];
                  do
                  {
                    _X15 = _X23 + v157 * 4;
                    *_X15 = *&v159[v157 + 4];
                    *(_X15 + 12) = v159[v157 + 3];
                    *(_X15 + 32) = *&v159[v157];
                    v161 = v159[v157 + 2];
                    *(_X15 + 16) = v131;
                    *(_X15 + 56) = v116;
                    *(_X15 + 60) = v118;
                    *(_X15 + 40) = v161;
                    *(_X15 + 44) = v114;
                    *(_X15 + 48) = v117;
                    *(_X15 + 52) = v135;
                    *(_X15 + 54) = v136;
                    if (_X24)
                    {
                      *_X24 = v159[v157 + 13];
                      _X24 += 4;
                    }

                    __asm { PRFM            #0, [X15,#0xC0] }

                    v157 += 16;
                    --v158;
                  }

                  while (v158);
                  v127 = v127 - v155 + v156;
                  _X23 += v157 * 4;
                }
              }
            }
          }

          ++v126;
        }

        while (v126 != v132);
      }
    }

    else
    {
      v163 = v225;
      v164 = v226;
      v165 = v223;
      v166 = v221;
      if (v35)
      {
        v167 = v110;
        v168 = v112;
        v169 = 0;
        v170 = 0;
        v171 = v225 + 3;
        v172 = v225 + 13;
        __asm { FMOV            V2.4S, #1.0 }

        v174 = v35;
        *&v217 = v225 + 3;
        *&v216 = v225 + 13;
        v214 = _Q2;
        v212 = v35;
        do
        {
          v175 = &v26[5 * v169];
          if (v175[4] == 1)
          {
            v176 = *v175;
            v177 = &v164[2 * v176];
            v178 = *v177;
            v179 = v177[1];
            if (v178 != v167 || v179 != v168)
            {
              v181 = *v222 + 32 * v178;
              v182 = (*v222 + 32 * v179);
              v224 = v119;
              v220 = v176;
              v114 = physx::PxsMaterialCombiner::combineRestitution(v181, v182);
              v227 = _D9;
              v183 = v181;
              v174 = v212;
              v116 = physx::PxsMaterialCombiner::combineIsotropicFriction(&v227, v183, v182);
              v176 = v220;
              _Q2 = v214;
              v172 = v216;
              v171 = v217;
              v166 = v221;
              v119 = v224;
              v163 = v225;
              v165 = v223;
              v164 = v226;
              v118 = HIDWORD(v116);
              v168 = v179;
              v167 = v178;
            }

            v184 = &v163[16 * v176];
            v119[2] = *v184;
            *(v119 + 6) = v184[2];
            v185 = v175[3];
            *(v119 + 41) = v185;
            *(v119 + 40) = v170;
            *(v119 + 8) = v118;
            *(v119 + 9) = v116;
            *(v119 + 7) = v114;
            *(v119 + 22) = v178;
            *(v119 + 23) = v179;
            *(v119 + 42) = v117;
            *(v119 + 43) = v166;
            *v119 = _Q2;
            if (v165 && v185 >= 2)
            {
              *(v119 + 41) = v185 + 1;
              v186 = 0uLL;
              if (v169 != 255)
              {
                for (k = v169; k != 255; k = v188[2])
                {
                  v188 = &v26[5 * k];
                  v189 = *v188;
                  v190 = v188[1];
                  if (v189 < v190)
                  {
                    v191 = &v171[16 * v189];
                    v192 = v190 - v189;
                    do
                    {
                      v193 = *v191;
                      v191 += 4;
                      v186 = vaddq_f32(v186, vextq_s8(v193, v193, 4uLL));
                      --v192;
                    }

                    while (v192);
                  }
                }
              }

              if (_X24)
              {
                *_X24 = v163[16 * v26[1275] + 13];
                _X24 += 4;
              }

              v194 = vmulq_n_f32(v186, 1.0 / v185);
              v195 = _X23 + 16;
              *_X23 = v194;
              _X23 = _X23 + 144;
              ++v170;
              __asm { PRFM            #0, [X23] }

              _X23 = v195;
            }

            v119 += 6;
            if (v169 != 255)
            {
              for (m = v169; m != 255; m = v199[2])
              {
                v199 = &v26[5 * m];
                v200 = *v199;
                v201 = v199[1];
                if (v200 < v201)
                {
                  v202 = v201 - *v199;
                  v203 = &v172[16 * v200];
                  do
                  {
                    *_X23 = *(v203 - 9);
                    *(_X23 + 12) = *(v203 - 10);
                    if (_X24)
                    {
                      *_X24 = *v203;
                      _X24 += 4;
                    }

                    v204 = _X23 + 16;
                    __asm { PRFM            #0, [X23,#0x90] }

                    v203 += 16;
                    _X23 += 16;
                    --v202;
                  }

                  while (v202);
                  v170 = v170 - v200 + v201;
                  _X23 = v204;
                }
              }
            }
          }

          ++v169;
        }

        while (v169 != v174);
      }
    }

    *v219 = v213;
    v27 = v215;
    goto LABEL_156;
  }

LABEL_155:
  v27 = 0;
  *v219 = 0;
  *v217 = 0;
  *v220 = 0;
  *v224 = 0;
  *v216 = 0;
  *v109 = 0;
LABEL_156:
  if (v218 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(&v228, v26);
  }

  return v27;
}

uint64_t physx::PxcNpMemBlockPool::setBlockCount(uint64_t this, unsigned int a2)
{
  v3 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*this);
  }

  v4 = *(v3 + 204);
  v5 = a2 - v4;
  if (a2 > v4)
  {
    do
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 0x4000, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/src/pipeline/PxcNpMemBlockPool.cpp", 105);
      v7 = this;
      v6 = *(v3 + 160);
      if ((*(v3 + 164) & 0x7FFFFFFFu) <= v6)
      {
        this = physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(v3 + 152, &v7);
      }

      else
      {
        *(*(v3 + 152) + 8 * v6) = this;
        *(v3 + 160) = v6 + 1;
      }

      ++*(v3 + 192);
      --v5;
    }

    while (v5);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*v3);
  }

  return this;
}

uint64_t physx::PxcNpMemBlockPool::releaseUnusedBlocks(uint64_t this)
{
  v1 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*this);
  }

  for (i = *(v1 + 160); i; --*(v1 + 192))
  {
    v3 = *(*(v1 + 152) + 8 * --i);
    *(v1 + 160) = i;
    if (v3)
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      i = *(v1 + 160);
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v4 = *v1;

    return pthread_mutex_unlock(v4);
  }

  return this;
}

uint64_t physx::PxcNpMemBlockPool::releaseConstraintMemory(uint64_t this)
{
  v1 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*this);
  }

  *(v1 + 240) = 0;
  while (1)
  {
    v2 = *(v1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = v2 - 1;
    v4 = *(*(v1 + 8) + 8 * (v2 - 1));
    *(v1 + 16) = v3;
    v12 = v4;
    v5 = *(v1 + 232);
    v6 = *(v5 + 24);
    if (v6 > v4 || v6 + *(v5 + 32) <= v4)
    {
      v8 = *(v1 + 160);
      if ((*(v1 + 164) & 0x7FFFFFFFu) <= v8)
      {
        this = physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(v1 + 152, &v12);
      }

      else
      {
        *(*(v1 + 152) + 8 * v8) = v4;
        *(v1 + 160) = v8 + 1;
      }

      --*(v1 + 204);
    }

    else
    {
      v7 = *(v1 + 128);
      if ((*(v1 + 132) & 0x7FFFFFFFu) <= v7)
      {
        this = physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(v1 + 120, &v12);
      }

      else
      {
        *(*(v1 + 120) + 8 * v7) = v4;
        *(v1 + 128) = v7 + 1;
      }
    }
  }

  v9 = *(v1 + 144);
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      if (*(*(v1 + 136) + 8 * i))
      {
        this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v9 = *(v1 + 144);
      }
    }
  }

  *(v1 + 144) = 0;
  *(v1 + 128) = 0;
  v11 = *(v1 + 216);
  if (v11)
  {
    this = physx::PxcScratchAllocator::free(*(v1 + 232), v11);
    *(v1 + 216) = 0;
    *(v1 + 224) = 0;
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*v1);
  }

  return this;
}

uint64_t physx::PxcNpMemBlockPool::releaseContacts(physx::PxcNpMemBlockPool *this)
{
  result = physx::PxcNpMemBlockPool::release(this, this + 16 * (1 - *(this + 47)) + 24, 0);
  *(this + 47) = 1 - *(this + 47);
  v3 = *(this + 40);
  if (*(this + 42) <= v3)
  {
    v4 = *(this + 43) + 1;
    *(this + 43) = v4;
    if (v3 >= 0x281 && v4 >= 0xB)
    {
      v6 = 10;
      while (1)
      {
        v3 = *(this + 40);
        if (v3 < 0x281)
        {
          break;
        }

        v7 = v3 - 1;
        v8 = *(*(this + 19) + 8 * v7);
        *(this + 40) = v7;
        if (v8)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        if (!--v6)
        {
          v3 = *(this + 40);
          break;
        }
      }
    }
  }

  else
  {
    *(this + 43) = 0;
  }

  *(this + 42) = v3;
  return result;
}

uint64_t physx::PxcNpMemBlockPool::acquireConstraintMemory(pthread_mutex_t ***this)
{
  v10 = 0;
  v2 = physx::PxcScratchAllocator::allocAll(this[29], &v10);
  v3 = v10;
  v10 &= 0xFFFFC000;
  this[27] = v2;
  *(this + 56) = v3 >> 14;
  v9 = 0;
  result = physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::resize((this + 15), v3 >> 14, &v9);
  v5 = *(this + 56);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = v5 << 14;
    do
    {
      this[15][v6] = &this[27][v7 / 8];
      v7 += 0x4000;
      ++v6;
    }

    while (v8 != v7);
  }

  return result;
}

pthread_mutex_t *physx::PxcScratchAllocator::allocAll(pthread_mutex_t **this, unsigned int *a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*this);
  }

  v4 = this[1];
  v5 = this[3];
  v6 = *(&v4->__sig + (*(this + 4) - 1)) - v5;
  *a2 = v6;
  if (v6)
  {
    v7 = *(this + 4);
    if ((*(this + 5) & 0x7FFFFFFFu) <= v7)
    {
      physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::growAndPushBack((this + 1), this + 3);
    }

    else
    {
      *(&v4->__sig + v7) = v5;
      *(this + 4) = v7 + 1;
    }

    v8 = this[3];
  }

  else
  {
    v8 = 0;
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*this);
  }

  return v8;
}

uint64_t physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = (*v5 + 8 * v6 + 8);
    v9 = *v5 + 8 * a2;
    if (v8 > v9)
    {
      v9 = *v5 + 8 * v6 + 8;
    }

    v10 = *a3;
    v11 = (v9 + ~*v5 - 8 * v6) >> 3;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 2) & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v7), xmmword_1E3049620)));
      if (v14.i8[0])
      {
        *(v8 - 1) = v10;
      }

      if (v14.i8[4])
      {
        *v8 = v10;
      }

      v7 += 2;
      v8 += 2;
    }

    while (v13 != v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::PxcScratchAllocator::free(uint64_t this, unint64_t a2)
{
  v3 = *(this + 24);
  if (v3 > a2 || (v4 = this, v3 + *(this + 32) <= a2))
  {
    if (a2)
    {
      v13 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

      return v13();
    }
  }

  else
  {
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      this = pthread_mutex_lock(*this);
    }

    v5 = *(v4 + 16);
    v6 = *(v4 + 8);
    v7 = -1;
    v8 = -1;
    do
    {
      v9 = v5 + v7;
      ++v8;
      --v7;
    }

    while (*(v6 + 8 * v9) < a2);
    if (v5 - v8 < v5)
    {
      v10 = 8 * (v5 - v8);
      v11 = (v6 + 8 * v9);
      do
      {
        *v11++ = *(*(v4 + 8) + v10);
        v10 += 8;
        --v8;
      }

      while (v8);
    }

    *(v4 + 16) = v5 - 1;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      v12 = *v4;

      return pthread_mutex_unlock(v12);
    }
  }

  return this;
}

uint64_t physx::PxcNpMemBlockPool::acquire(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4, int a5)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*a1);
  }

  if (a3 && a4)
  {
    if (*a3 + 1 > *a4)
    {
      v10 = *a3 + 1;
    }

    else
    {
      v10 = *a4;
    }

    *a4 = v10;
    ++*a3;
  }

  if (!a5 || (v11 = *(a1 + 128)) == 0)
  {
    v15 = *(a1 + 160);
    if (v15)
    {
      v16 = v15 - 1;
      v13 = *(*(a1 + 152) + 8 * v16);
      *(a1 + 160) = v16;
      v22 = v13;
    }

    else
    {
      ++*(a1 + 192);
      v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 0x4000, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/src/pipeline/PxcNpMemBlockPool.cpp", 244);
      v22 = v13;
      if (!v13)
      {
        --*(a1 + 192);
        goto LABEL_26;
      }
    }

    v17 = *(a2 + 8);
    if ((*(a2 + 12) & 0x7FFFFFFFu) <= v17)
    {
      physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(a2, &v22);
      v13 = v22;
    }

    else
    {
      *(*a2 + 8 * v17) = v13;
      *(a2 + 8) = v17 + 1;
    }

    v18 = *(a1 + 204);
    v19 = v18 + 1;
    if ((v18 + 1) > *(a1 + 208))
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = *(a1 + 208);
    }

    *(a1 + 204) = v19;
    *(a1 + 208) = v20;
    goto LABEL_26;
  }

  v12 = v11 - 1;
  v13 = *(*(a1 + 120) + 8 * v12);
  *(a1 + 128) = v12;
  v22 = v13;
  v14 = *(a2 + 8);
  if ((*(a2 + 12) & 0x7FFFFFFFu) <= v14)
  {
    physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(a2, &v22);
    v13 = v22;
  }

  else
  {
    *(*a2 + 8 * v14) = v13;
    *(a2 + 8) = v14 + 1;
  }

LABEL_26:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*a1);
  }

  return v13;
}

uint64_t physx::PxcNpMemBlockPool::acquireExceptionalConstraintMemory(pthread_mutex_t **this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/src/pipeline/PxcNpMemBlockPool.cpp", 260);
  v7 = v3;
  if (v3)
  {
    v4 = v3;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_lock(*this);
    }

    v5 = *(this + 36);
    if ((*(this + 37) & 0x7FFFFFFFu) <= v5)
    {
      physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::growAndPushBack((this + 17), &v7);
    }

    else
    {
      *(&this[17]->__sig + v5) = v4;
      *(this + 36) = v5 + 1;
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(*this);
    }
  }

  return v7;
}

uint64_t physx::PxcNpMemBlockPool::release(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v5 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*result);
  }

  v6 = *(a2 + 8);
  *(v5 + 204) -= v6;
  if (a3)
  {
    *a3 -= v6;
    v6 = *(a2 + 8);
  }

  for (; v6; v6 = *(a2 + 8))
  {
    v7 = v6 - 1;
    v8 = *(*a2 + 8 * (v6 - 1));
    *(a2 + 8) = v7;
    v10 = v8;
    v9 = *(v5 + 160);
    if ((*(v5 + 164) & 0x7FFFFFFFu) <= v9)
    {
      result = physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(v5 + 152, &v10);
    }

    else
    {
      *(*(v5 + 152) + 8 * v9) = v8;
      *(v5 + 160) = v9 + 1;
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*v5);
  }

  return result;
}

uint64_t physx::PxcNpMemBlockPool::releaseConstraintBlocks(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*result);
  }

  while (1)
  {
    v10 = *(a2 + 8);
    if (!v10)
    {
      break;
    }

    v4 = v10 - 1;
    v5 = *(*a2 + 8 * (v10 - 1));
    *(a2 + 8) = v4;
    v11 = v5;
    v6 = *(v3 + 232);
    v7 = *(v6 + 24);
    if (v7 > v5 || v7 + *(v6 + 32) <= v5)
    {
      v9 = *(v3 + 160);
      if ((*(v3 + 164) & 0x7FFFFFFFu) <= v9)
      {
        result = physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(v3 + 152, &v11);
      }

      else
      {
        *(*(v3 + 152) + 8 * v9) = v5;
        *(v3 + 160) = v9 + 1;
      }

      --*(v3 + 204);
    }

    else
    {
      v8 = *(v3 + 128);
      if ((*(v3 + 132) & 0x7FFFFFFFu) <= v8)
      {
        result = physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(v3 + 120, &v11);
      }

      else
      {
        *(*(v3 + 120) + 8 * v8) = v5;
        *(v3 + 128) = v8 + 1;
      }
    }
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*v3);
  }

  return result;
}

double physx::PxcNpThreadContext::PxcNpThreadContext(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a1 + 44) = 1065353216;
  *(a1 + 64) = 1065353216;
  *(a1 + 84) = 1065353216;
  *(a1 + 104) = 1065353216;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 76) = 0;
  *(a1 + 68) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = a2 + 296;
  *(a1 + 512) = a2 + 40;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = a2 + 40;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  v3 = (a1 + 5120);
  *(a1 + 4734) = 0;
  do
  {
    if (v2 <= 5)
    {
      *v3 = 0;
      v3[100] = 0;
    }

    v2 += 2;
    v3 += 200;
  }

  while (v2 != 6);
  *(a1 + 4688) = xmmword_1E31137A0;
  *(a1 + 4672) = xmmword_1E30474D0;
  *(a1 + 7136) = 0;
  *(a1 + 7140) = *(a2 + 288);
  result = 0.0;
  *(a1 + 7152) = 0u;
  *(a1 + 7184) = 0;
  *(a1 + 7186) = *(a2 + 384);
  *(a1 + 7212) = 0;
  *(a1 + 7187) = 0;
  *(a1 + 7192) = 0;
  *(a1 + 7224) = *(a2 + 392);
  *(a1 + 7232) = *(a2 + 400);
  *(a1 + 7256) = *(a2 + 424);
  *(a1 + 7264) = 0;
  *(a1 + 7272) = 0;
  *(a1 + 7280) = 0;
  *(a1 + 7288) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 7296) = 0u;
  return result;
}

double physx::PxcNpThreadContext::reset(physx::PxcNpThreadContext *this, int a2)
{
  *(this + 65) = 0;
  *(this + 132) = 0;
  *(this + 68) = 0;
  *(this + 138) = 0;
  bzero(*(this + 908), (4 * *(this + 1818)));
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 7264, a2);
  bzero(*(this + 910), (4 * *(this + 1822)));
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 7280, a2);
  result = 0.0;
  *(this + 456) = 0u;
  return result;
}

uint64_t physx::PxsCCDContext::PxsCCDContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = *(a2 + 2616);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5D1BFC0;
  *(a1 + 8) = v10;
  *(a1 + 40) = a1;
  *(a1 + 48) = "PxsContext.postCCDSweep";
  v11 = *(a2 + 2616);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 56) = &unk_1F5D1C050;
  *(a1 + 64) = v11;
  *(a1 + 96) = a1;
  *(a1 + 104) = "PxsContext.postCCDAdvance";
  v12 = *(a2 + 2616);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 112) = &unk_1F5D1C0E0;
  *(a1 + 120) = v12;
  *(a1 + 152) = a1;
  *(a1 + 160) = "PxsContext.postCCDDepenetrate";
  *(a1 + 176) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v13 = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v14 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v15 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDBody, 128>::Block>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDBody, 128>::Block]";
  }

  else
  {
    v15 = "<allocation names disabled>";
  }

  *&v32 = (*(*(v14 + 24) + 16))(v14 + 24, 0x2000, v15, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsCCD.h", 210);
  DWORD2(v32) = 0;
  v16 = *(a1 + 200);
  if ((*(a1 + 204) & 0x7FFFFFFFu) <= v16)
  {
    physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDBody,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDBody,128>::BlockInfo>>::growAndPushBack(v13, &v32);
  }

  else
  {
    *(*(a1 + 192) + 16 * v16) = v32;
    ++*(a1 + 200);
  }

  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v17 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v18 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDOverlap, 128>::Block>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDOverlap, 128>::Block]";
  }

  else
  {
    v18 = "<allocation names disabled>";
  }

  *&v32 = (*(*(v17 + 24) + 16))(v17 + 24, 2048, v18, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsCCD.h", 210);
  DWORD2(v32) = 0;
  v19 = *(a1 + 224);
  if ((*(a1 + 228) & 0x7FFFFFFFu) <= v19)
  {
    physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::BlockInfo>>::growAndPushBack(a1 + 216, &v32);
  }

  else
  {
    *(*(a1 + 216) + 16 * v19) = v32;
    ++*(a1 + 224);
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v20 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v21 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDShape, 128>::Block>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDShape, 128>::Block]";
  }

  else
  {
    v21 = "<allocation names disabled>";
  }

  v22 = (*(*(v20 + 24) + 16))(v20 + 24, 15360, v21, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsCCD.h", 210);
  v23 = -15360;
  do
  {
    *(v22 + v23 + 15472) = -128;
    v23 += 120;
  }

  while (v23);
  *&v32 = v22;
  DWORD2(v32) = 0;
  v24 = *(a1 + 248);
  if ((*(a1 + 252) & 0x7FFFFFFFu) <= v24)
  {
    physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::BlockInfo>>::growAndPushBack(a1 + 240, &v32);
  }

  else
  {
    *(*(a1 + 240) + 16 * v24) = v32;
    ++*(a1 + 248);
  }

  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = -3233808384;
  *(a1 + 360) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*> const,physx::PxsCCDShape *>,physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::internal::HashMapBase<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::PxsCCDShape *,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 312, 0x40u);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  v25 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v26 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDPair, 128>::Block>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDPair, 128>::Block]";
  }

  else
  {
    v26 = "<allocation names disabled>";
  }

  *&v32 = (*(*(v25 + 24) + 16))(v25 + 24, 17408, v26, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsCCD.h", 210);
  DWORD2(v32) = 0;
  v27 = *(a1 + 376);
  if ((*(a1 + 380) & 0x7FFFFFFFu) <= v27)
  {
    physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDPair,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDPair,128>::BlockInfo>>::growAndPushBack(a1 + 368, &v32);
  }

  else
  {
    *(*(a1 + 368) + 16 * v27) = v32;
    ++*(a1 + 376);
  }

  *(a1 + 420) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 436) = 1;
  *(a1 + 440) = a2;
  *(a1 + 448) = a3;
  *(a1 + 456) = a4;
  v28 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v29 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v29 = "<allocation names disabled>";
  }

  v30 = (*(*(v28 + 24) + 16))(v28 + 24, 72, v29, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 464) = v30;
  physx::shdfnd::MutexImpl::MutexImpl(v30);
  *(a1 + 472) = a5;
  return a1;
}

void physx::PxsCCDContext::~PxsCCDContext(pthread_mutex_t **this)
{
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 58);
  v2 = *(this + 105);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && this[51] != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v4 = *(this + 101);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && this[49] != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v6 = *(this + 94);
  if (v6)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      if (*(&this[46]->__sig + v7))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v6 = *(this + 94);
      }

      v7 += 16;
    }
  }

  *(this + 96) = 0;
  v9 = *(this + 95);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && this[46] != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (this[39])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v11 = *(this + 77);
  if ((v11 & 0x80000000) == 0 && (v11 & 0x7FFFFFFF) != 0 && this[37])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v12 = *(this + 73);
  if ((v12 & 0x80000000) == 0 && (v12 & 0x7FFFFFFF) != 0 && this[35])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v13 = *(this + 69);
  if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0 && this[33])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v14 = *(this + 62);
  if (v14)
  {
    v15 = 0;
    for (j = 0; j < v14; ++j)
    {
      if (*(&this[30]->__sig + v15))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v14 = *(this + 62);
      }

      v15 += 16;
    }
  }

  *(this + 64) = 0;
  v17 = *(this + 63);
  if ((v17 & 0x80000000) == 0 && (v17 & 0x7FFFFFFF) != 0 && this[30] != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v19 = *(this + 56);
  if (v19)
  {
    v20 = 0;
    for (k = 0; k < v19; ++k)
    {
      if (*(&this[27]->__sig + v20))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v19 = *(this + 56);
      }

      v20 += 16;
    }
  }

  *(this + 58) = 0;
  v22 = *(this + 57);
  if ((v22 & 0x80000000) == 0 && (v22 & 0x7FFFFFFF) != 0 && this[27] != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v24 = *(this + 50);
  if (v24)
  {
    v25 = 0;
    for (m = 0; m < v24; ++m)
    {
      if (*(&this[24]->__sig + v25))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v24 = *(this + 50);
      }

      v25 += 16;
    }
  }

  *(this + 52) = 0;
  v27 = *(this + 51);
  if ((v27 & 0x80000000) == 0 && (v27 & 0x7FFFFFFF) != 0 && this[24] != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  this[14] = &unk_1F5D1C1B0;
  this[16] = 0;
  this[7] = &unk_1F5D1C1B0;
  this[9] = 0;
  *this = &unk_1F5D1C1B0;
  this[2] = 0;
}

void *physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDDepenetrate>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDAdvance>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDSweep>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::PxsCCDContext::create(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 480, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/src/PxsCCD.cpp", 266);
  if (result)
  {
    return physx::PxsCCDContext::PxsCCDContext(result, a1, a2, a3, a4);
  }

  return result;
}

void physx::PxsCCDContext::destroy(pthread_mutex_t **this)
{
  physx::PxsCCDContext::~PxsCCDContext(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

float physx::PxsCCDShape::getAbsPose(float *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 40);
    v4 = v3[12] * -2.0;
    v5 = v3[13] * -2.0;
    v6 = v3[14] * -2.0;
    v8 = v3[10];
    v7 = v3[11];
    v9 = (v7 * v7) + -0.5;
    v11 = v3[8];
    v10 = v3[9];
    v12 = ((v5 * v10) + (v11 * v4)) + (v8 * v6);
    v13 = ((v4 * v9) - (((v10 * v6) - (v8 * v5)) * v7)) + (v11 * v12);
    v14 = ((v5 * v9) - (((v8 * v4) - (v11 * v6)) * v7)) + (v10 * v12);
    v15 = ((v6 * v9) - (((v11 * v5) - (v10 * v4)) * v7)) + (v8 * v12);
    v16 = v13 + v13;
    v17 = v14 + v14;
    v18 = v15 + v15;
    v20 = v3[2];
    v19 = v3[3];
    v21 = (v19 * v19) + -0.5;
    v22 = *v3;
    v23 = v3[1];
    v24 = ((v23 * v17) + (*v3 * v16)) + (v20 * v18);
    v25 = ((v19 * ((v23 * v18) - (v20 * v17))) + (v16 * v21)) + (*v3 * v24);
    v26 = ((v19 * ((v20 * v16) - (*v3 * v18))) + (v17 * v21)) + (v23 * v24);
    v27 = ((v19 * ((*v3 * v17) - (v23 * v16))) + (v18 * v21)) + (v20 * v24);
    v28 = v3[4] + v25;
    v29 = v3[5] + v26;
    v30 = v3[6] + v27;
    v31 = (((v7 * *v3) - (v19 * v11)) - (v23 * v8)) + (v10 * v20);
    v32 = ((v7 * v23) - (v19 * v10)) - (v20 * v11);
    v33 = v32 + (v8 * *v3);
    v34 = (((v7 * v20) - (v19 * v8)) - (*v3 * v10)) + (v11 * v23);
    v35 = (((v11 * *v3) + (v19 * v7)) + (v23 * v10)) + (v20 * v8);
    v36 = *(a2 + 96);
    v37 = v36[4] + v36[4];
    v38 = v36[5] + v36[5];
    v39 = v36[6] + v36[6];
    v40 = (v35 * v35) + -0.5;
    v41 = ((v33 * v38) + (v31 * v37)) + (v34 * v39);
    v42 = -v34;
    v43 = -v31;
    v44 = -(v32 + (v8 * v22));
    v45 = v28 + (((v35 * ((v33 * v39) - (v34 * v38))) + (v37 * v40)) + (v31 * v41));
    v46 = v29 + (((v35 * ((v34 * v37) - (v31 * v39))) + (v38 * v40)) + (v33 * v41));
    v47 = v30 + (((v35 * ((v31 * v38) - (v33 * v37))) + (v39 * v40)) + (v34 * v41));
  }

  else
  {
    v36 = *(a2 + 96);
    v48 = *(a2 + 104);
    v49 = v36[4] + v36[4];
    v50 = v36[5] + v36[5];
    v51 = v36[6] + v36[6];
    v34 = v48[2];
    v35 = v48[3];
    v52 = (v35 * v35) + -0.5;
    v31 = *v48;
    v33 = v48[1];
    v53 = ((v50 * v33) + (*v48 * v49)) + (v34 * v51);
    v42 = -v34;
    v54 = ((v35 * ((v33 * v51) - (v34 * v50))) + (v49 * v52)) + (*v48 * v53);
    v43 = -*v48;
    v55 = ((v35 * ((v34 * v49) - (*v48 * v51))) + (v50 * v52)) + (v33 * v53);
    v44 = -v33;
    v56 = ((v35 * ((*v48 * v50) - (v33 * v49))) + (v51 * v52)) + (v34 * v53);
    v45 = v48[4] + v54;
    v46 = v48[5] + v55;
    v47 = v48[6] + v56;
  }

  v58 = v36[2];
  v57 = v36[3];
  v59 = v36[1];
  v60 = (((v31 * v57) + (v35 * *v36)) + (v33 * v58)) - (v59 * v34);
  v61 = (((v33 * v57) + (v35 * v59)) + (v34 * *v36)) - (v58 * v31);
  result = (((v34 * v57) + (v35 * v58)) + (v31 * v59)) - (*v36 * v33);
  v63 = v43 * *v36;
  *a1 = v60;
  a1[1] = v61;
  a1[2] = result;
  a1[3] = ((v63 + (v35 * v57)) + (v44 * v59)) + (v42 * v58);
  a1[4] = v45;
  a1[5] = v46;
  a1[6] = v47;
  return result;
}

float32_t physx::PxsCCDShape::getLastCCDAbsPose(float32x4_t *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, int32x4_t a8)
{
  v8 = *(a3 + 40);
  v9 = v8[12] * -2.0;
  *a8.i32 = v8[13] * -2.0;
  v10 = v8[14] * -2.0;
  v11 = v8[10];
  v12 = v8[11];
  v13 = (v12 * v12) + -0.5;
  v15 = v8[8];
  v14 = v8[9];
  v16 = ((*a8.i32 * v14) + (v15 * v9)) + (v11 * v10);
  v17 = ((v9 * v13) - (((v14 * v10) - (v11 * *a8.i32)) * v12)) + (v15 * v16);
  v18 = ((*a8.i32 * v13) - (((v11 * v9) - (v15 * v10)) * v12)) + (v14 * v16);
  v19 = ((v10 * v13) - (((v15 * *a8.i32) - (v14 * v9)) * v12)) + (v11 * v16);
  *a8.i32 = v17 + v17;
  v20 = v19 + v19;
  v22 = *(a3 + 8);
  v21 = *(a3 + 12);
  v23 = (v21 * v21) + -0.5;
  v24 = *(a3 + 4);
  v25 = ((v24 * (v18 + v18)) + (*a3 * *a8.i32)) + (v22 * v20);
  v26 = ((v21 * ((v24 * v20) - (v22 * (v18 + v18)))) + (*a8.i32 * v23)) + (*a3 * v25);
  v27 = ((v21 * ((v22 * *a8.i32) - (*a3 * v20))) + ((v18 + v18) * v23)) + (v24 * v25);
  *a8.i32 = ((v21 * ((*a3 * (v18 + v18)) - (v24 * *a8.i32))) + (v20 * v23)) + (v22 * v25);
  v28 = *(a3 + 16) + v26;
  v29 = *(a3 + 20) + v27;
  v30 = *(a3 + 24) + *a8.i32;
  *a8.i32 = (((v12 * *a3) - (v21 * v15)) - (v24 * v11)) + (v14 * v22);
  *&v31 = (((v12 * v24) - (v21 * v14)) - (v22 * v15)) + (v11 * *a3);
  *&v32 = (((v12 * v22) - (v21 * v11)) - (*a3 * v14)) + (v15 * v24);
  v33 = (((v15 * *a3) + (v21 * v12)) + (v24 * v14)) + (v22 * v11);
  v34 = *(a2 + 16) + *(a2 + 16);
  v35 = *(a2 + 20) + *(a2 + 20);
  v36 = *(a2 + 24) + *(a2 + 24);
  v37 = (v33 * v33) + -0.5;
  v38 = ((*&v31 * v35) + (*a8.i32 * v34)) + (*&v32 * v36);
  v39 = v29 + (((v33 * ((*&v32 * v34) - (*a8.i32 * v36))) + (v35 * v37)) + (*&v31 * v38));
  v40 = v30 + (((v33 * ((*a8.i32 * v35) - (*&v31 * v34))) + (v36 * v37)) + (*&v32 * v38));
  v41 = vextq_s8(vextq_s8(*a2, *a2, 0xCuLL), *a2, 8uLL);
  v42 = v41;
  v42.i32[3] = v32;
  v43 = (v33 * (vmuls_lane_f32(v35, vnegq_f32(v42), 3) + (*&v31 * v36))) + (v34 * v37);
  a8.i32[1] = v31;
  a8.i32[2] = v32;
  v44 = vuzp1q_s32(a8, vuzp2q_s32(v41, a8));
  *&a8.i32[3] = -*a8.i32;
  v45 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*a2, 3), *a2, 4uLL), a8), *a2, v33);
  *&a8.i32[3] = -*&v31;
  v41.i32[3] = v41.i32[0];
  v46 = vmlaq_f32(vuzp2q_s32(vextq_s8(v45, v45, 4uLL), v45), v41, a8);
  *a1 = vmlsq_f32(vzip2q_s32(vzip1q_s32(v46, vextq_s8(v46, v46, 0xCuLL)), v46), vrev64q_s32(v44), v42);
  result = v28 + (v43 + (*a8.i32 * v38));
  a1[1].f32[0] = result;
  a1[1].f32[1] = v39;
  a1[1].f32[2] = v40;
  return result;
}

void physx::PxsCCDPair::updateShapes(physx::PxsCCDPair *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 2);
    if (*(*(v2 + 32) + 56) != *(v3 + 92))
    {
      *&v4 = physx::PxsCCDShape::getAbsPose(&v63, *(this + 2), v2);
      v5 = *(v3 + 96);
      physx::PxsCCDShape::getLastCCDAbsPose(&v60, v5, v2, v4, v6, v7, v8, v9);
      v10 = v67;
      v11.i32[0] = v62;
      v54 = v62;
      v12 = v67 - *&v62;
      v13 = v66;
      v14 = v61;
      v15 = vsub_f32(v66, v61);
      physx::Gu::computeBoundsWithCCDThreshold(&v58, &v56, v5 + 40, &v63, 0, v16, v17, v18, v11, v19, v20, v21, v22, v23, v24);
      v25 = v59 - v12;
      v26 = *(this + 2);
      *(v26 + 80) = vsub_f32(v58, v15);
      *(v26 + 88) = v25;
      *(v26 + 68) = v56;
      *(v26 + 76) = v57;
      *(v26 + 12) = v60;
      *(v26 + 28) = v14;
      *&v27 = __PAIR64__(v63, v54);
      *(&v27 + 1) = v64;
      *(v26 + 36) = v27;
      *(v26 + 52) = v65;
      *(v26 + 56) = v13;
      *(v26 + 64) = v10;
      *(v26 + 92) = *(*(*this + 32) + 56);
    }
  }

  v28 = *(this + 1);
  if (v28)
  {
    v29 = *(this + 3);
    if (*(*(v28 + 32) + 56) != *(v29 + 92))
    {
      *&v30 = physx::PxsCCDShape::getAbsPose(&v63, *(this + 3), *(this + 1));
      v31 = *(v29 + 96);
      physx::PxsCCDShape::getLastCCDAbsPose(&v60, v31, v28, v30, v32, v33, v34, v35);
      v36 = v67;
      v37.i32[0] = v62;
      v55 = v62;
      v38 = v67 - *&v62;
      v39 = v66;
      v40 = v61;
      v41 = vsub_f32(v66, v61);
      physx::Gu::computeBoundsWithCCDThreshold(&v58, &v56, v31 + 40, &v63, 0, v42, v43, v44, v37, v45, v46, v47, v48, v49, v50);
      v51 = v59 - v38;
      v52 = *(this + 3);
      *(v52 + 80) = vsub_f32(v58, v41);
      *(v52 + 88) = v51;
      *(v52 + 68) = v56;
      *(v52 + 76) = v57;
      *(v52 + 12) = v60;
      *(v52 + 28) = v40;
      *&v53 = __PAIR64__(v63, v55);
      *(&v53 + 1) = v64;
      *(v52 + 36) = v53;
      *(v52 + 52) = v65;
      *(v52 + 56) = v39;
      *(v52 + 64) = v36;
      *(v52 + 92) = *(*(*(this + 1) + 32) + 56);
    }
  }
}

void physx::PxsCCDPair::sweepEstimateToi(physx::PxsCCDPair *this, float a2)
{
  physx::PxsCCDPair::updateShapes(this);
  v5 = *(this + 21);
  v4 = *(this + 22);
  if (v4 >= v5)
  {
    v6 = *(this + 3);
  }

  else
  {
    v6 = *(this + 2);
  }

  if (v4 >= v5)
  {
    v7 = *(this + 2);
  }

  else
  {
    v7 = *(this + 3);
  }

  v62 = *(v7 + 40);
  v8 = *(v7 + 60);
  v63 = *(v7 + 56);
  v64 = v8;
  v65 = *(v7 + 64);
  v58 = *(v7 + 12);
  v9 = *(v7 + 32);
  v59 = *(v7 + 28);
  v60 = v9;
  v61 = *(v7 + 36);
  v10 = v63 - v59;
  v11 = v8 - v9;
  v12 = v65 - v61;
  v18 = *(v6 + 40);
  v54 = v18;
  v13 = *(v6 + 60);
  v55 = *(v6 + 56);
  v56 = v13;
  v57 = *(v6 + 64);
  v50 = *(v6 + 12);
  v14 = *(v6 + 32);
  v51 = *(v6 + 28);
  v52 = v14;
  v53 = *(v6 + 36);
  v15 = v55 - v51;
  v16 = v13 - v14;
  v17 = v57 - v53;
  LODWORD(v18) = *(*(this + 9) + 92);
  v19 = (v63 - v59) - (v55 - v51);
  v20 = (v65 - v61) - (v57 - v53);
  v21 = *(v7 + 8) + *(v6 + 8);
  if (v21 >= a2)
  {
    v21 = a2;
  }

  *(this + 32) = 0;
  if (((((v11 - v16) * (v11 - v16)) + (v19 * v19)) + (v20 * v20)) <= (v21 * v21))
  {
LABEL_41:
    v22 = 3.4028e38;
    goto LABEL_42;
  }

  *&v18 = fmaxf(*&v18, 0.0);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (v4 == 6)
  {
    v22 = physx::Gu::SweepEstimateAnyShapeHeightfield(v7, v6, &v62, &v54, &v58, &v50, *&v18, v21);
    goto LABEL_42;
  }

  if (v4 == 5)
  {
    v22 = physx::Gu::SweepEstimateAnyShapeMesh(v7, v6, &v62, &v54, &v58, &v50, *&v18);
    goto LABEL_42;
  }

  v23 = *(v7 + 88);
  v24 = *(v6 + 88);
  v25 = *(v7 + 80);
  v26 = vdup_n_s32(0x3F8CCCCDu);
  v27 = vmul_f32(vadd_f32(vdup_lane_s32(*&v18, 0), *(v7 + 68)), v26);
  v28 = (*&v18 + *(v7 + 76)) * 1.1;
  v29 = *(v6 + 80);
  v30 = vmul_f32(*(v6 + 68), v26);
  v31 = *(v6 + 76) * 1.1;
  if (fabsf(vsub_f32(v25, v29).f32[0]) > vadd_f32(v27, v30).f32[0] || (v32.i32[1] = HIDWORD(*(v7 + 80)), v32.i32[0] = *(v7 + 88), v33.i32[1] = HIDWORD(*(v6 + 80)), v33.i32[0] = *(v6 + 88), v34.i32[1] = v30.i32[1], v34.f32[0] = *(v6 + 76) * 1.1, v35 = vmvn_s8(vcge_f32(vadd_f32(__PAIR64__(v27.u32[1], LODWORD(v28)), v34), vabd_f32(v32, v33))), (v35.i8[4] & 1) != 0) || (v36 = v35.i8[0], v22 = 0.0, (v36 & 1) != 0))
  {
    v37 = 0;
    v74[0] = v15 - v10;
    v74[1] = v16 - v11;
    v74[2] = v17 - v12;
    v72 = vadd_f32(v25, v27);
    v73 = v23 + v28;
    v70 = vsub_f32(v25, v27);
    v71 = v23 - v28;
    v68 = vadd_f32(v29, v30);
    v69 = v24 + v31;
    v38 = v24 - v31;
    v66 = vsub_f32(v29, v30);
    v22 = 0.0;
    v39 = 1.0;
    v67 = v38;
    while (1)
    {
      v40 = v74[v37];
      if (v40 < -0.000001)
      {
        break;
      }

      if (v40 <= 0.000001)
      {
        if (v68.f32[v37] < v70.f32[v37] || v66.f32[v37] > v72.f32[v37])
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v41 = v66.f32[v37];
      v42 = v72.f32[v37];
      if (v41 > v42)
      {
        goto LABEL_41;
      }

      v46 = v68.f32[v37];
      v47 = v70.f32[v37];
      if (v46 < v47)
      {
        v48 = (v47 - v46) / v40;
        if (v48 > v22)
        {
          v22 = v48;
        }
      }

      if (v42 > v41)
      {
        goto LABEL_33;
      }

LABEL_38:
      if (v22 > v39)
      {
        goto LABEL_41;
      }

      if (++v37 == 3)
      {
        goto LABEL_42;
      }
    }

    v41 = v68.f32[v37];
    v42 = v70.f32[v37];
    if (v41 < v42)
    {
      goto LABEL_41;
    }

    v43 = v72.f32[v37];
    v44 = v66.f32[v37];
    if (v43 < v44)
    {
      v45 = (v43 - v44) / v40;
      if (v45 > v22)
      {
        v22 = v45;
      }
    }

    if (v41 <= v42)
    {
      goto LABEL_38;
    }

LABEL_33:
    v49 = (v42 - v41) / v40;
    if (v49 < v39)
    {
      v39 = v49;
    }

    goto LABEL_38;
  }

LABEL_42:
  *(this + 11) = v22;
}

double physx::PxsRigidBody::advancePrevPoseToToi(float32x2_t *this, double result)
{
  v4 = this[5];
  if (v4[15].f32[1] != 0.0)
  {
    v8 = v2;
    v9 = v3;
    v6 = ((1.0 - *&result) * this[3].f32[0]) + (v4[3].f32[0] * *&result);
    this[2] = vadd_f32(vmul_n_f32(this[2], 1.0 - *&result), vmul_n_f32(v4[2], *&result));
    this[3].f32[0] = v6;
    physx::shdfnd::slerp(this, v4, &v7, *&result);
    result = *&v7;
    *this->f32 = v7;
  }

  return result;
}

void physx::PxsRigidBody::advanceToToi(float32x2_t *this, float a2, float a3, int a4)
{
  v4 = this[5];
  if (*(*&v4 + 124) != 0.0)
  {
    if (a4)
    {
      *(*&v4 + 16) = this[2];
      *(*&v4 + 24) = this[3].i32[0];
      **&v4 = *this->f32;
      v6 = 1.0 - a2;
    }

    else
    {
      v7 = 1.0;
      v8 = 1.0 - a2;
      v9 = ((1.0 - a2) * (*(*&v4 + 72) * a3)) + this[3].f32[0];
      *(*&v4 + 16) = vadd_f32(vmul_n_f32(vmul_n_f32(*(*&v4 + 64), a3), v8), this[2]);
      *(*&v4 + 24) = v9;
      v10 = *(*&v4 + 84) * a3;
      v11 = *(*&v4 + 88) * a3;
      v12 = v8 * (*(*&v4 + 80) * a3);
      v13 = v8 * v10;
      v25 = v8;
      v14 = v8 * v11;
      v15 = sqrtf(((v13 * v13) + (v12 * v12)) + (v14 * v14));
      v16 = 0.0;
      v17 = 0.0;
      if (v15 > 1.0e-20)
      {
        v7 = v12 * (1.0 / v15);
        v16 = v13 * (1.0 / v15);
        v17 = v14 * (1.0 / v15);
      }

      v18 = __sincosf_stret(v15 * 0.5);
      v19 = this->f32[1];
      v21 = this[1].f32[0];
      v20 = this[1].f32[1];
      v22 = (((v18.__cosval * v19) + (v20 * (v18.__sinval * v16))) + (v21 * (v18.__sinval * v7))) - ((v18.__sinval * v17) * this->f32[0]);
      v23 = (((v18.__cosval * v21) + (v20 * (v18.__sinval * v17))) + (this->f32[0] * (v18.__sinval * v16))) - ((v18.__sinval * v7) * v19);
      v24 = -(this->f32[0] * (v18.__sinval * v7));
      **v4.f32 = (((v18.__cosval * this->f32[0]) + (v20 * (v18.__sinval * v7))) + (v19 * (v18.__sinval * v17))) - ((v18.__sinval * v16) * v21);
      *(*&v4 + 4) = v22;
      *(*&v4 + 8) = v23;
      *(*&v4 + 12) = ((v24 + (v20 * v18.__cosval)) - (v19 * (v18.__sinval * v16))) - (v21 * (v18.__sinval * v17));
      v6 = v25;
    }

    *(*&this[4] + 36) = fmaxf(v6 * *(*&this[4] + 36), 0.01);
  }
}

uint64_t physx::PxsCCDContext::updateCCDEnd(uint64_t this)
{
  v1 = this;
  if (*(this + 180) == *(this + 436) - 1 || !*(this + 184))
  {
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      this = pthread_mutex_lock(*(this + 464));
    }

    v2 = *(v1 + 192);
    v3 = *(v2 + 16 * *(v1 + 208) + 8) + (*(v1 + 208) << 7);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v5 = i & 0x7F;
        v6 = *(v2 + 16 * (i >> 7)) + (v5 << 6);
        v9 = *(v6 + 40);
        v7 = (v6 + 40);
        v8 = v9;
        v10 = *(v9 + 32);
        if (v10 && *(v10 + 35) == 1)
        {
          v11 = *(v1 + 304);
          if ((*(v1 + 308) & 0x7FFFFFFFu) <= v11)
          {
            this = physx::shdfnd::Array<physx::PxsRigidBody *,physx::shdfnd::ReflectionAllocator<physx::PxsRigidBody *>>::growAndPushBack(v1 + 296, v7);
          }

          else
          {
            *(*(v1 + 296) + 8 * v11) = v8;
            *(v1 + 304) = v11 + 1;
          }
        }

        v2 = *(v1 + 192);
        v12 = *(*(v2 + 16 * (i >> 7)) + (v5 << 6) + 40);
        *(v12 + 32) = 0;
        *(*(v12 + 40) + 156) = 0;
      }
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      this = pthread_mutex_unlock(*(v1 + 464));
      v2 = *(v1 + 192);
    }

    *(v1 + 208) = 0;
    *(v2 + 8) = 0;
  }

  *(v1 + 256) = 0;
  *(*(v1 + 240) + 8) = 0;
  v13 = *(v1 + 348);
  if (v13 && *(v1 + 364))
  {
    this = memset(*(v1 + 336), 255, (4 * v13));
    v14 = *(v1 + 328);
    v15 = (*(v1 + 344) - 1);
    if (*(v1 + 344) == 1)
    {
      v23 = 0;
    }

    else
    {
      _X10 = v14 + 128;
      v17 = 1;
      do
      {
        __asm { PRFM            #0, [X10] }

        *(_X10 - 128) = v17++;
        _X10 += 4;
        --v15;
      }

      while (v15);
      v23 = (*(v1 + 344) - 1);
    }

    *(v14 + 4 * v23) = -1;
    *(v1 + 356) = 0;
    *(v1 + 364) = 0;
  }

  ++*(v1 + 180);
  return this;
}

void physx::PxsCCDContext::resetContactManagers(physx::PxsCCDContext *this)
{
  v1 = *(this + 55);
  v2 = *(v1 + 1696);
  v3 = *(v1 + 1688);
  v4 = v2 & 0x7FFFFFFF;
  if ((v2 & 0x7FFFFFFF) != 0)
  {
    v5 = *v3;
    if (*v3)
    {
      v6 = 0;
LABEL_7:
      v7 = __clz(__rbit32(v5)) | (32 * v6);
      v8 = (v5 - 1) & v5;
      if (!v8)
      {
        v9 = v6;
        if (v6 + 1 > v4)
        {
          v6 = (v6 + 1);
        }

        else
        {
          v6 = v4;
        }

        v10 = v9 + 1;
        while (v10 < v4)
        {
          v8 = v3[v10++];
          if (v8)
          {
            v6 = (v10 - 1);
            goto LABEL_16;
          }
        }

        v8 = 0;
      }

LABEL_16:
      if (v7 != -1)
      {
        v11 = *(v1 + 488);
        v12 = *(v1 + 464);
        v13 = *(v1 + 456) - 1;
        do
        {
          v14 = *(v11 + 8 * (v7 >> v12)) + 120 * (v7 & v13);
          *(v14 + 16) &= ~4u;
          *(v14 + 64) = 0;
          if (!v8)
          {
            break;
          }

          v15 = (v8 - 1) & v8;
          if (v15)
          {
            v16 = v6;
          }

          else
          {
            v16 = v6 + 1 > v4 ? (v6 + 1) : v4;
            LODWORD(v17) = v6;
            while (v16 - 1 != v17)
            {
              v17 = (v17 + 1);
              v15 = v3[v17];
              if (v15)
              {
                v16 = v17;
                goto LABEL_29;
              }
            }

            v15 = 0;
          }

LABEL_29:
          v7 = __clz(__rbit32(v8)) | (32 * v6);
          v8 = v15;
          v6 = v16;
        }

        while (v7 != -1);
      }
    }

    else
    {
      v6 = 0;
      while (v4 - 1 != v6)
      {
        v5 = v3[++v6];
        if (v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  bzero(v3, (4 * v2));
}

uint64_t physx::PxsCCDContext::updateCCD(int32x2_t *this, float a2, physx::PxBaseTask *a3, physx::IG::IslandSim *a4, __int8 a5, int a6)
{
  v273 = *MEMORY[0x1E69E9840];
  this[22].i8[0] = a5;
  *(*&this[56] + 16) = 0;
  v11 = this[55];
  bzero(*(*&v11 + 1704), (4 * *(*&v11 + 1712)));
  bzero(*(*&v11 + 1720), (4 * *(*&v11 + 1728)));
  *(*&v11 + 1752) = 0;
  *(*&v11 + 1736) = 0u;
  if (!this[22].i32[1])
  {
    physx::PxsCCDContext::resetContactManagers(this);
    if (!this[22].i32[1])
    {
      if (a6)
      {
        goto LABEL_5;
      }

LABEL_16:
      this[23].i32[0] = 0;

      return physx::PxsCCDContext::updateCCDEnd(this);
    }
  }

  if (!a6 || !this[23].i32[0])
  {
    goto LABEL_16;
  }

LABEL_5:
  this[23].i32[0] = 0;
  v12 = this[55];
  v13 = physx::shdfnd::SListImpl::pop(*(*&v12 + 440));
  if (!v13)
  {
    v14 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v15 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxcNpThreadContext>::getName() [T = physx::PxcNpThreadContext]";
    }

    else
    {
      v15 = "<allocation names disabled>";
    }

    v16 = (*(*(v14 + 24) + 16))(v14 + 24, 7335, v15, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v16)
    {
      v17 = v16;
      v16 = (v16 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v16 - 8) = v16 - v17;
    }

    physx::PxcNpThreadContext::PxcNpThreadContext(v16, *(*&v12 + 448));
  }

  v248 = a3;
  v19 = this + 27;
  v18 = this[27];
  this[53] = v13;
  v13[1800] = a2;
  this[48].i32[0] = 0;
  v20 = this[46];
  *(*&v20 + 8) = 0;
  this[50].i32[0] = 0;
  this[38].i32[0] = 0;
  this[29].i32[0] = 0;
  *(*&v18 + 8) = 0;
  v21 = this[55];
  v22 = *(*&v21 + 1680) & 0x7FFFFFFF;
  if (!v22)
  {
    goto LABEL_154;
  }

  v23 = *(*&v21 + 1672);
  v24 = *v23;
  if (!*v23)
  {
    v25 = 0;
    while (v22 - 1 != v25)
    {
      v24 = v23[++v25];
      if (v24)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_154;
  }

  v25 = 0;
LABEL_22:
  v27 = __clz(__rbit32(v24)) | (32 * v25);
  v28 = (v24 - 1) & v24;
  if (!v28)
  {
    v29 = v25;
    if (v25 + 1 > v22)
    {
      v25 = (v25 + 1);
    }

    else
    {
      v25 = v22;
    }

    v30 = v29 + 1;
    while (v30 < v22)
    {
      v28 = v23[v30++];
      if (v28)
      {
        v25 = (v30 - 1);
        goto LABEL_31;
      }
    }

    v28 = 0;
  }

LABEL_31:
  if (v27 == -1)
  {
LABEL_154:
    physx::PxsCCDContext::updateCCDEnd(this);
    v144 = this[53];
    v145 = *(*&this[55] + 440);
    pthread_mutex_lock((v145 + 8));
    *v144 = *v145;
    *v145 = v144;

    return pthread_mutex_unlock((v145 + 8));
  }

  v247 = 0;
  v31 = 0;
  v32 = this[55];
  v245 = a4;
  v246 = this + 27;
  do
  {
    v33 = *(*(*&v32 + 488) + 8 * (v27 >> *(*&v32 + 464))) + 120 * ((*(*&v32 + 456) - 1) & v27);
    if ((*(v33 + 16) & 2) == 0)
    {
      goto LABEL_34;
    }

    v36 = *(v33 + 80);
    if ((v36 & 0x1000) == 0 || (v36 & 0x18) == 0x18)
    {
      goto LABEL_34;
    }

    v37 = (v36 & 0x50) != 0 && *(*(v33 + 40) + 156) != 0;
    v40 = *(v33 + 32);
    if (!*(v40 + 156) && !v37)
    {
      goto LABEL_34;
    }

    v42 = *(v33 + 40);
    v43 = *(v33 + 48);
    v44 = *(v33 + 56);
    v45 = *v33;
    v46 = *(v33 + 8);
    v257 = *v33;
    v251 = v31;
    v253 = *(v33 + 32);
    v250 = v42;
    if (!this[45].i32[1])
    {
      v255 = 0;
      goto LABEL_81;
    }

    v47 = (~(v43 << 32) + v43) ^ ((~(v43 << 32) + v43) >> 22);
    v48 = 9 * ((v47 + ~(v47 << 13)) ^ ((v47 + ~(v47 << 13)) >> 8));
    v49 = (v48 ^ (v48 >> 15)) + ~((v48 ^ (v48 >> 15)) << 27);
    v50 = (~(v40 << 32) + v40) ^ ((~(v40 << 32) + v40) >> 22);
    v51 = 9 * ((v50 + ~(v50 << 13)) ^ ((v50 + ~(v50 << 13)) >> 8));
    v52 = (v51 ^ (v51 >> 15)) + ~((v51 ^ (v51 >> 15)) << 27);
    LODWORD(v52) = (1000007 * ((v52 >> 31) ^ v52 ^ 0xFC955B95)) ^ (v49 >> 31) ^ v49;
    v53 = this[43].i32[1] - 1;
    v54 = v53 & v52;
    v55 = this[42];
    v56 = *(*&v55 + 4 * v54);
    if (v56 == -1)
    {
LABEL_63:
      v57 = 0;
    }

    else
    {
      while (1)
      {
        v57 = (*&this[40] + 24 * v56);
        if (*v57 == v40 && v57[1] == v43)
        {
          break;
        }

        v56 = *(*&this[41] + 4 * v56);
        if (v56 == -1)
        {
          goto LABEL_63;
        }
      }
    }

    v59 = (~(v44 << 32) + v44) ^ ((~(v44 << 32) + v44) >> 22);
    v60 = 9 * ((v59 + ~(v59 << 13)) ^ ((v59 + ~(v59 << 13)) >> 8));
    v61 = (v60 ^ (v60 >> 15)) + ~((v60 ^ (v60 >> 15)) << 27);
    v62 = (~(v42 << 32) + v42) ^ ((~(v42 << 32) + v42) >> 22);
    v63 = 9 * ((v62 + ~(v62 << 13)) ^ ((v62 + ~(v62 << 13)) >> 8));
    v64 = (v63 ^ (v63 >> 15)) + ~((v63 ^ (v63 >> 15)) << 27);
    v65 = *(*&v55 + 4 * (v53 & ((1000007 * ((v64 >> 31) ^ v64 ^ 0xFC955B95)) ^ (v61 >> 31) ^ v61)));
    if (v65 == -1)
    {
LABEL_70:
      v66 = 0;
    }

    else
    {
      while (1)
      {
        v66 = (*&this[40] + 24 * v65);
        if (*v66 == v42 && v66[1] == v44)
        {
          break;
        }

        v65 = *(*&this[41] + 4 * v65);
        if (v65 == -1)
        {
          goto LABEL_70;
        }
      }
    }

    if (v57)
    {
      v68 = v57[2];
      if (!v66)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v68 = 0;
      if (!v66)
      {
LABEL_79:
        v69 = 0;
        if (v68)
        {
LABEL_74:
          v70 = *(v68 + 8);
          v252.f32[0] = *(v68 + 56) - *(v68 + 28);
          v71 = *(v68 + 60) - *(v68 + 32);
          v72 = *(v68 + 64) - *(v68 + 36);
          if (!v69)
          {
            goto LABEL_75;
          }

          goto LABEL_85;
        }

        goto LABEL_80;
      }
    }

    v69 = v66[2];
    if (v68)
    {
      goto LABEL_74;
    }

LABEL_80:
    v255 = v69;
LABEL_81:
    v68 = physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::pushBack(&this[30]);
    v265.i64[0] = v253;
    v265.i64[1] = v43;
    physx::shdfnd::internal::HashMapBase<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::PxsCCDShape *,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::NonTrackingAllocator>::insert(this + 39, &v265, v68);
    *(v68 + 96) = v43;
    *(v68 + 104) = v253;
    *v68 = v43 + 40;
    v91.f32[0] = physx::PxsCCDShape::getAbsPose(v265.f32, v68, v257);
    if (v257)
    {
      physx::PxsCCDShape::getLastCCDAbsPose(&v262, v43, v257, *v91.i64, v92, v93, v94, v95);
      v91.i64[0] = v266;
      v98 = v263;
      v99 = *(&v266 + 2);
      v100 = v264;
      v93 = *v262.i64;
      v101 = *v265.i64;
      v241 = v262;
      v244 = v265;
    }

    else
    {
      v101 = *v265.i64;
      v262 = v265;
      v91.i64[0] = v266;
      LODWORD(v263) = v266;
      v100 = *(&v266 + 2);
      v99 = *(&v266 + 2);
      v98 = v266;
      v241 = v265;
      v244 = v265;
    }

    v240 = v91.i64[0];
    *v91.f32 = vsub_f32(*v91.f32, v98);
    v252 = *v91.f32;
    v72 = v99 - v100;
    v70 = physx::Gu::computeBoundsWithCCDThreshold(&__b, &v258, v43 + 40, &v265, 0, v88, v89, v90, v91, v101, v93, v94, *v95.i64, v96, v97);
    v102 = *&v261 - (v99 - v100);
    *(v68 + 80) = vsub_f32(__b, v252);
    *(v68 + 88) = v102;
    *(v68 + 68) = v258;
    *(v68 + 76) = v259;
    *(v68 + 8) = v70;
    *(v68 + 12) = v241;
    *(v68 + 28) = v98;
    *(v68 + 36) = v100;
    *(v68 + 40) = v244;
    *(v68 + 56) = v240;
    *(v68 + 64) = v99;
    *(v68 + 92) = 0;
    *(v68 + 112) = *(*(**(v245 + 76) + 8 * ((2 * *(v33 + 104)) / *(*(v245 + 76) + 24))) + 4 * ((2 * *(v33 + 104)) % *(*(v245 + 76) + 24)));
    v71 = v252.f32[1];
    v45 = v257;
    v69 = v255;
    if (!v255)
    {
LABEL_75:
      v73 = physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::pushBack(&this[30]);
      *(v73 + 96) = v44;
      *(v73 + 104) = v250;
      *v73 = v44 + 40;
      v265.i64[0] = v250;
      v265.i64[1] = v44;
      physx::shdfnd::internal::HashMapBase<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::PxsCCDShape *,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::NonTrackingAllocator>::insert(this + 39, &v265, v73);
      v77.f32[0] = physx::PxsCCDShape::getAbsPose(v265.f32, v73, v46);
      if (v46)
      {
        physx::PxsCCDShape::getLastCCDAbsPose(&v262, *(v73 + 96), v46, *v77.i64, v78, v79, v80, v81);
        v77.i64[0] = v266;
        v84 = v263;
        v85 = *(&v266 + 2);
        v86 = v264;
        v243 = v262;
        v87 = *v265.i64;
        v254 = v265;
      }

      else
      {
        v87 = *v265.i64;
        v262 = v265;
        v77.i64[0] = v266;
        LODWORD(v263) = v266;
        v86 = *(&v266 + 2);
        v85 = *(&v266 + 2);
        v84 = v266;
        v254 = v265;
        v243 = v265;
      }

      v242 = v77.i64[0];
      *v77.f32 = vsub_f32(*v77.f32, v84);
      v249 = *v77.f32;
      v105 = v85 - v86;
      v103 = physx::Gu::computeBoundsWithCCDThreshold(&__b, &v258, v44 + 40, &v265, 0, v74, v75, v76, v77, v87, v79, v80, *v81.i64, v82, v83);
      v106 = *&v261 - (v85 - v86);
      *(v73 + 80) = vsub_f32(__b, v249);
      *(v73 + 88) = v106;
      *(v73 + 68) = v258;
      *(v73 + 76) = v259;
      *(v73 + 8) = v103;
      *(v73 + 12) = v243;
      *(v73 + 28) = v84;
      *(v73 + 36) = v86;
      *(v73 + 40) = v254;
      *(v73 + 56) = v242;
      *(v73 + 64) = v85;
      *(v73 + 92) = 0;
      v256 = v73;
      *(v73 + 112) = *(*(**(v245 + 76) + 8 * (((2 * *(v33 + 104)) | 1u) / *(*(v245 + 76) + 24))) + 4 * (((2 * *(v33 + 104)) | 1u) % *(*(v245 + 76) + 24)));
      v104 = v249.f32[1];
      v45 = v257;
      goto LABEL_88;
    }

LABEL_85:
    v103 = v69[2];
    v249.f32[0] = v69[14] - v69[7];
    v104 = v69[15] - v69[8];
    v256 = v69;
    v105 = v69[16] - v69[9];
LABEL_88:
    v107 = 1;
    v108 = v45;
    do
    {
      v109 = v107;
      if (v108)
      {
        v110 = *(v108 + 32);
        if (v110)
        {
          v111 = *(v110 + 60) + 1;
        }

        else
        {
          v112 = this[26].u32[0];
          v113 = this[24];
          if (*(*&v113 + 16 * v112 + 8) == 128)
          {
            v114 = v112 + 1;
            if (v112 + 1 == this[25].i32[0])
            {
              v115 = physx::shdfnd::Foundation::mInstance;
              if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
              {
                v116 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDBody, 128>::Block>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDBody, 128>::Block]";
              }

              else
              {
                v116 = "<allocation names disabled>";
              }

              v265.i64[0] = (*(*(v115 + 24) + 16))(v115 + 24, 0x2000, v116, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsCCD.h", 260);
              v265.i32[2] = 0;
              v117 = this[25].u32[0];
              if ((this[25].i32[1] & 0x7FFFFFFFu) <= v117)
              {
                physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDBody,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDBody,128>::BlockInfo>>::growAndPushBack(&this[24], &v265);
              }

              else
              {
                *(*&this[24] + 16 * v117) = v265;
                ++this[25].i32[0];
              }

              v113 = this[24];
              v114 = this[26].i32[0] + 1;
              v45 = v257;
            }

            this[26].i32[0] = v114;
            v112 = v114;
            *(*&v113 + 16 * v114 + 8) = 0;
          }

          else
          {
            v114 = this[26].u32[0];
          }

          v118 = *&v113 + 16 * v112;
          v119 = *(v118 + 8);
          *(v118 + 8) = v119 + 1;
          v110 = *v118 + (v119 << 6);
          *(v108 + 32) = v110;
          *(v110 + 32) = v119 + (v114 << 7);
          *(v110 + 36) = 1065353216;
          *(v110 + 35) = 0;
          *(v110 + 48) = 0;
          *(v110 + 56) = 0;
          *(v110 + 40) = v108;
          v111 = 1;
        }

        *(v110 + 34) = 0;
        *(v110 + 60) = v111;
      }

      v107 = 0;
      v108 = v46;
    }

    while ((v109 & 1) != 0);
    v19 = this + 27;
    if (v45 && v46 && *(*(v45 + 40) + 124) != 0.0 && *(*(v46 + 40) + 124) != 0.0)
    {
      v120 = *(*(v45 + 32) + 48);
      if (v120)
      {
        while (*v120 != *(v46 + 32))
        {
          v120 = v120[1];
          if (!v120)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
LABEL_113:
        v121 = physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::pushBack(v246);
        v122 = physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::pushBack(v246);
        v45 = v257;
        v123 = *(v46 + 32);
        *v121 = v123;
        v124 = *(v257 + 32);
        *v122 = v124;
        v121[1] = *(v124 + 48);
        *(v124 + 48) = v121;
        v122[1] = *(v123 + 48);
        *(v123 + 48) = v122;
      }
    }

    if (*(*(v45 + 40) + 124) == 0.0 && (!v46 || *(*(v46 + 40) + 124) == 0.0))
    {
      ++v247;
    }

    v125 = this[48].u32[0];
    v20 = this[46];
    if (*(*&v20 + 16 * v125 + 8) == 128)
    {
      v126 = v125 + 1;
      if (v125 + 1 == this[47].i32[0])
      {
        v127 = physx::shdfnd::Foundation::mInstance;
        if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
        {
          v128 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDPair, 128>::Block>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDPair, 128>::Block]";
        }

        else
        {
          v128 = "<allocation names disabled>";
        }

        v265.i64[0] = (*(*(v127 + 24) + 16))(v127 + 24, 17408, v128, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsCCD.h", 260);
        v265.i32[2] = 0;
        v129 = this[47].u32[0];
        if ((this[47].i32[1] & 0x7FFFFFFFu) <= v129)
        {
          physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDPair,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDPair,128>::BlockInfo>>::growAndPushBack(&this[46], &v265);
        }

        else
        {
          *(*&this[46] + 16 * v129) = v265;
          ++this[47].i32[0];
        }

        v20 = this[46];
        v126 = this[48].i32[0] + 1;
        v45 = v257;
      }

      this[48].i32[0] = v126;
      v125 = v126;
      *(*&v20 + 16 * v126 + 8) = 0;
    }

    v130 = *&v20 + 16 * v125;
    v131 = *(v130 + 8);
    *(v130 + 8) = v131 + 1;
    v132 = *v130 + 136 * v131;
    *v132 = v45;
    *(v132 + 8) = v46;
    *(v132 + 16) = v68;
    *(v132 + 24) = v256;
    if ((*(v253 + 28) & 8) != 0)
    {
      LOBYTE(v133) = 1;
    }

    else
    {
      v133 = (*(v250 + 28) >> 3) & 1;
    }

    *(v132 + 132) = v133;
    *(v132 + 44) = 2139095039;
    v134 = *(*(v33 + 48) + 40);
    *(v132 + 84) = v134;
    v135 = *(*(v33 + 56) + 40);
    *(v132 + 88) = v135;
    *(v132 + 72) = v33;
    *(v132 + 80) = -1;
    *(v132 + 92) = 0;
    *(v132 + 96) = -1;
    *(v132 + 93) = *(v33 + 16) & 1;
    *(v132 + 120) = 0;
    v136 = *(v45 + 40);
    if ((*(v136 + 28) & 0x40) != 0)
    {
      v137 = *(v136 + 128);
    }

    else
    {
      v137 = 3.4028e38;
    }

    if (v46 && (v138 = *(v46 + 40), (*(v138 + 28) & 0x40) != 0))
    {
      v139 = *(v138 + 128);
    }

    else
    {
      v139 = 3.4028e38;
    }

    if (v137 >= v139)
    {
      v137 = v139;
    }

    *(v132 + 124) = v137;
    v32 = this[55];
    if (v134 >= v135)
    {
      v140 = v135;
    }

    else
    {
      v140 = v134;
    }

    v141 = *&v32 + 28 * v140;
    if (v134 <= v135)
    {
      v134 = v135;
    }

    ++*(v141 + 4 * v134 + 2132);
    if (!v251)
    {
      v142 = v70 + v103;
      if ((v70 + v103) >= *this[59].i32)
      {
        v142 = *this[59].i32;
      }

      v31 = ((((v71 - v104) * (v71 - v104)) + ((v252.f32[0] - v249.f32[0]) * (v252.f32[0] - v249.f32[0]))) + ((v72 - v105) * (v72 - v105))) >= (v142 * v142);
LABEL_34:
      if (!v28)
      {
        break;
      }

      goto LABEL_35;
    }

    if (!v28)
    {
      goto LABEL_152;
    }

    v31 = 1;
LABEL_35:
    v34 = (v28 - 1) & v28;
    if (v34)
    {
      v35 = v25;
    }

    else
    {
      v38 = *(*&v21 + 1680) & 0x7FFFFFFF;
      if (v25 + 1 > v38)
      {
        v35 = (v25 + 1);
      }

      else
      {
        v35 = v38;
      }

      LODWORD(v39) = v25;
      while (v35 - 1 != v39)
      {
        v39 = (v39 + 1);
        v34 = *(*(*&v21 + 1672) + 4 * v39);
        if (v34)
        {
          v35 = v39;
          goto LABEL_49;
        }
      }

      v34 = 0;
    }

LABEL_49:
    v27 = __clz(__rbit32(v28)) | (32 * v25);
    v25 = v35;
    v28 = v34;
  }

  while (v27 != -1);
  if (!v31)
  {
    goto LABEL_154;
  }

LABEL_152:
  v143 = *(*&v20 + 16 * this[48].u32[0] + 8) + (this[48].i32[0] << 7);
  if ((this[50].i32[1] & 0x7FFFFFFFu) >= v143)
  {
    if (v143)
    {
      goto LABEL_158;
    }
  }

  else
  {
    physx::shdfnd::Array<physx::PxsCCDPair *,physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::recreate(&v19[22], v143);
LABEL_158:
    v146 = 0;
    do
    {
      v147 = *(*&this[46] + 16 * (v146 >> 7)) + 136 * (v146 & 0x7F);
      v265.i64[0] = v147;
      v148 = this[50].u32[0];
      if ((this[50].i32[1] & 0x7FFFFFFFu) <= v148)
      {
        physx::shdfnd::Array<physx::PxsCCDPair *,physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::growAndPushBack(&v19[22], &v265);
      }

      else
      {
        *(*&this[49] + 8 * v148) = v147;
        this[50].i32[0] = v148 + 1;
      }

      ++v146;
    }

    while (v143 != v146);
  }

  v149 = this[56];
  v150 = v143 | (v143 >> 1) | ((v143 | (v143 >> 1)) >> 2);
  v151 = v150 | (v150 >> 4) | ((v150 | (v150 >> 4)) >> 8);
  v152 = (v151 | HIWORD(v151)) + 1;
  if ((*(v149 + 20) & 0x7FFFFFFFu) < v152)
  {
    physx::shdfnd::Array<physx::Dy::ThresholdStreamElement,physx::shdfnd::VirtualAllocator>::recreate(v149, v152);
  }

  v153 = this[26].u32[0];
  v154 = this[24];
  v155 = *(*&v154 + 16 * v153 + 8);
  v156 = (v155 + (v153 << 7));
  if (v155 + (v153 << 7))
  {
    v157 = 0;
    do
    {
      v158 = *(*&v154 + 16 * (v157 >> 7)) + ((v157 & 0x7F) << 6);
      v159 = *(*(v158 + 40) + 40);
      *v158 = *(v159 + 64);
      *(v158 + 8) = *(v159 + 72);
      *(v158 + 16) = *(v159 + 80);
      *(v158 + 24) = *(v159 + 88);
      ++v157;
    }

    while (v156 != v157);
  }

  __b = 0;
  v261 = 0;
  v265.i32[0] = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&__b, v156, &v265);
  v258 = 0;
  v259 = 0;
  if (v156)
  {
    physx::shdfnd::Array<physx::PxsCCDBody const*,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBody const*>>::recreate(&v258, v156);
  }

  LODWORD(v259) = v156;
  this[36].i32[0] = 0;
  if ((this[36].i32[1] & 0x7FFFFFFFu) < v156 + 1)
  {
    physx::shdfnd::Array<unsigned short,physx::shdfnd::ReflectionAllocator<unsigned short>>::recreate(&this[35], v156 + 1);
  }

  this[36].i32[0] = v156 + 1;
  if (v156)
  {
    memset_pattern16(__b, &unk_1E31137D0, 4 * (v156 - 1) + 4);
    v160 = 0;
    v161 = 0;
    v162 = v258;
    do
    {
      if (*(__b + v160) == 0xFFFF)
      {
        i = *(*&this[24] + 16 * (v160 >> 7)) + ((v160 & 0x7F) << 6);
        if (*(*(*(i + 40) + 40) + 124) != 0.0)
        {
          if (*(i + 60))
          {
            v164 = 0;
            *(__b + v160) = v161;
            *v162 = i;
            v165 = 1;
            do
            {
              if (--v165 <= 1)
              {
                v166 = 1;
              }

              else
              {
                v166 = v165;
              }

              v167 = v166 - 1;
              v168 = *(i + 48);
              for (i = v162[v167]; v168; v168 = v168[1])
              {
                v169 = *v168;
                v170 = *(*v168 + 32);
                if (*(__b + v170) == 0xFFFF)
                {
                  *(__b + v170) = v161;
                  v162[v165++] = v169;
                  i = *v168;
                  ++v164;
                }
              }
            }

            while (v165);
            *(*&this[35] + 2 * v161++) = v164 + 1;
          }
        }
      }

      ++v160;
    }

    while (v160 != v156);
  }

  else
  {
    v161 = 0;
  }

  v171 = v161 + v247;
  if (v161 < v161 + v247)
  {
    memset_pattern16((*&this[35] + 2 * v161), &unk_1E31137E0, 2 * (v247 - 1) + 2);
  }

  this[52].i32[0] = 0;
  v265.i32[0] = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(&this[51], v171, &v265);
  v172 = this[50].u32[0];
  if (v172)
  {
    v173 = v19[22];
    v174 = __b;
    v175 = this[51];
    do
    {
      v176 = *v173;
      v177 = **v173;
      if (v177 && *(*(v177 + 40) + 124) != 0.0)
      {
        v178 = v174[*(*(v177 + 32) + 32)];
      }

      else
      {
        v178 = -1;
      }

      v179 = v176[1];
      if (v179 && *(*(v179 + 40) + 124) != 0.0)
      {
        v180 = v174[*(*(v179 + 32) + 32)];
      }

      else
      {
        v180 = -1;
      }

      if (v178 >= v180)
      {
        v178 = v180;
      }

      v181 = v178 == -1;
      if (v178 == -1)
      {
        v178 = v161;
      }

      if (v181)
      {
        ++v161;
      }

      *(v176 + 20) = v178;
      ++*(*&v175 + 4 * v178);
      ++v173;
      --v172;
    }

    while (v172);
  }

  if (v171 != -1)
  {
    v182 = 0;
    v183 = 0;
    v184 = this[35];
    do
    {
      v185 = *(*&v184 + 2 * v182);
      *(*&v184 + 2 * v182) = v183;
      v183 += v185;
      ++v182;
    }

    while (v171 + 1 > v182);
  }

  this[34].i32[0] = 0;
  if ((this[34].i32[1] & 0x7FFFFFFFu) < v156)
  {
    physx::shdfnd::Array<physx::PxsCCDBody *,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBody *>>::recreate(&this[33], v156);
  }

  this[34].i32[0] = v156;
  v186 = this[26].u32[0];
  v187 = this[24];
  if (*(*&v187 + 16 * v186 + 8) + (v186 << 7))
  {
    v188 = 0;
    do
    {
      v189 = *(*&v187 + 16 * (v188 >> 7)) + ((v188 & 0x7F) << 6);
      v190 = *(__b + *(v189 + 32));
      if (v190 != 0xFFFF)
      {
        v191 = this[35];
        v192 = *(*&v191 + 2 * v190);
        *(*&v191 + 2 * v190) = v192 + 1;
        *(*&this[33] + 8 * v192) = v189;
        v187 = this[24];
      }

      ++v188;
    }

    while (v188 < *(*&v187 + 16 * v186 + 8) + (v186 << 7));
  }

  this[18].i32[0] = 1;
  this[17] = v248;
  if (v248)
  {
    (*(*v248 + 32))(v248);
    this[16] = *(*&this[17] + 16);
  }

  this[11].i32[0] = 1;
  this[10] = &this[14];
  (*(*&this[14] + 32))(this + 14);
  v193 = this[7];
  this[9] = *(*&this[10] + 16);
  this[4].i32[0] = 1;
  this[3] = &this[7];
  (*(*&v193 + 32))(this + 7);
  this[2] = *(*&this[3] + 16);
  v195 = this[49];
  v196 = this[50].i32[0];
  *(v262.i64 + 4) = 0x2000000000;
  v263 = &v265;
  LOBYTE(v264) = 0;
  v197 = v196 - 1;
  if (v196 - 1 >= 1)
  {
    v198 = 0;
    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    v194 = &v265;
    v265 = 0u;
    v266 = 0u;
    while (1)
    {
      if (v197 <= v198)
      {
        goto LABEL_254;
      }

      if ((v197 - v198) <= 4)
      {
        v219 = v198;
        v220 = v198 + 1;
        do
        {
          v221 = v219++;
          v222 = v220;
          v223 = v221;
          v224 = v221;
          do
          {
            if (*(*(*&v195 + 8 + 8 * v223) + 80) < *(*(*&v195 + 8 * v224) + 80))
            {
              v224 = v222;
            }

            ++v223;
            ++v222;
          }

          while (v223 < v197);
          if (v224 != v221)
          {
            v225 = *(*&v195 + 8 * v224);
            *(*&v195 + 8 * v224) = *(*&v195 + 8 * v221);
            *(*&v195 + 8 * v221) = v225;
          }

          ++v220;
        }

        while (v219 != v197);
LABEL_254:
        v226 = v262.i32[1];
        if (!v262.i32[1])
        {
          if ((LOBYTE(v264) & 1) != 0 && v194)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          }

          break;
        }

        --v262.i32[1];
        v197 = v194->i32[v226 - 1];
        v262.i32[1] = v226 - 2;
        v198 = v194->i32[v226 - 2];
      }

      else
      {
        v199 = *(*&v195 + 8 * ((v198 + v197) / 2));
        v200 = (v198 + v197 + ((v198 + v197) >> 31)) >> 1;
        v201 = *(*&v195 + 8 * v198);
        v202 = *(v201 + 80);
        if (*(v199 + 80) < v202)
        {
          *(*&v195 + 8 * v198) = v199;
          *(*&v195 + 8 * v200) = v201;
          v199 = v201;
          v201 = *(*&v195 + 8 * v198);
          v202 = *(v201 + 80);
        }

        v203 = *&v195 + 8 * v197;
        if (*(*v203 + 80) >= v202)
        {
          v202 = *(*v203 + 80);
          v201 = *v203;
        }

        else
        {
          *(*&v195 + 8 * v198) = *v203;
          *v203 = v201;
          v199 = *(*&v195 + 8 * v200);
        }

        if (v202 < *(v199 + 80))
        {
          *(*&v195 + 8 * v200) = v201;
          *v203 = v199;
          v199 = *(*&v195 + 8 * v200);
        }

        *(*&v195 + 8 * v200) = *(v203 - 8);
        *(v203 - 8) = v199;
        v204 = v197 - 1;
        v205 = v198;
        LODWORD(v206) = v197 - 1;
        while (1)
        {
          v207 = 0;
          v208 = *(v199 + 80);
          v209 = v205;
          v210 = (*&v195 + 8 * v205);
          do
          {
            v212 = v210[1];
            ++v210;
            v211 = v212;
            ++v207;
          }

          while (*(v212 + 80) < v208);
          v206 = v206;
          do
          {
            v213 = *&v195 + 8 * v206--;
            v214 = *(v213 - 8);
          }

          while (v208 < *(v214 + 80));
          if (v209 + v207 >= v206)
          {
            break;
          }

          *v210 = v214;
          *(*&v195 + 8 * v206) = v211;
          v199 = *(*&v195 + 8 * v204);
          v205 = v207 + v209;
        }

        *v210 = v199;
        *(*&v195 + 8 * v204) = v211;
        v215 = v262.u32[1];
        v216 = v262.i32[2] - 1;
        if (v209 - v198 + v207 >= v197 - v209 - v207)
        {
          if (v262.i32[1] >= v216)
          {
            physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::grow(&v262);
            v215 = v262.u32[1];
            v194 = v263;
          }

          v262.i32[1] = v215 + 1;
          v194->i32[v215] = v207 + v209 + 1;
          v218 = v262.u32[1];
          ++v262.i32[1];
          v194->i32[v218] = v197;
          v197 = v209 + v207 - 1;
        }

        else
        {
          if (v262.i32[1] >= v216)
          {
            physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::grow(&v262);
            v215 = v262.u32[1];
            v194 = v263;
          }

          v262.i32[1] = v215 + 1;
          v194->i32[v215] = v198;
          v217 = v262.u32[1];
          ++v262.i32[1];
          v194->i32[v217] = v209 - 1 + v207;
          v198 = v209 + v207 + 1;
        }
      }
    }
  }

  v227 = this[50].u32[0];
  v228 = (*(**(*&this[55] + 1912) + 8))(*(*&this[55] + 1912), v194);
  v229 = (*(*v228 + 8))(v228);
  if (v229 <= 1)
  {
    v230 = 1;
  }

  else
  {
    v230 = v229;
  }

  v231 = v227 / v230;
  if (v231 <= 1)
  {
    v231 = 1;
  }

  this[54].i32[0] = v231;
  if (v227)
  {
    for (j = 0; j < v227; j += this[54].u32[0])
    {
      v233 = physx::Cm::FlushPool::allocate(*(*&this[55] + 1920), 56, 0x10u);
      v234 = v233;
      v235 = this[54].i32[0] + j;
      if (v227 < v235)
      {
        v235 = v227;
      }

      v236 = *(*&this[55] + 2616);
      v237 = *&this[49] + 8 * j;
      v238 = this[59].i32[0];
      *(v233 + 16) = 0;
      *(v233 + 24) = 0;
      *(v233 + 32) = 0;
      *v233 = &unk_1F5D1BDD0;
      *(v233 + 8) = v236;
      *(v233 + 40) = v237;
      *(v233 + 48) = v235 - j;
      *(v233 + 52) = v238;
      v239 = *(*&this[55] + 1912);
      *(v233 + 32) = 1;
      *(v233 + 16) = v239;
      *(v233 + 24) = this;
      (*(*this + 32))(this);
      (*(*v234 + 40))(v234);
    }
  }

  (*(**&this[2] + 144))(*&this[2], this);
  (*(**&this[9] + 144))(*&this[9], this + 7);
  result = (*(**&this[16] + 144))(*&this[16], this + 14);
  if ((v259 & 0x8000000000000000) == 0 && (v259 & 0x7FFFFFFF00000000) != 0 && v258)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if ((v261 & 0x8000000000000000) == 0 && (v261 & 0x7FFFFFFF00000000) != 0 && __b)
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return result;
}