float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4;
      v8 = *(v4 + 4);
      v4 += 8;
      *&v34 = -v8;
      HIDWORD(v34) = v7;
      result = -std::sinh[abi:ne200100]<float>(&v34);
      *v5 = v10;
      *(v5 + 4) = result;
      v5 += 8;
    }

    return result;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v14 = 1;
    v13 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(v3[4] - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, v3 + 3, (v12 >> 2) - 1);
      if ((*a1)[6])
      {
        v16 = 0;
        do
        {
          result = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(v4 + 8 * v34, v5 + 8 * v16, v13, v14);
          v17 = v36 - v35;
          v18 = (v36 - v35) >> 2;
          if (v18)
          {
            v19 = __p;
            v20 = ((v17 << 30) - 0x100000000) >> 32;
            v21 = __p + 4 * v20;
            v22 = *v21;
            v23 = v35 + 4 * v20;
            v24 = v37;
            v25 = v34;
            if (v18 >= 2 && v22 == *v23 - 1)
            {
              v28 = (v17 >> 2) & 0x7FFFFFFF;
              v27 = v28 - 1;
              v29 = 4 * v28;
              v30 = v35 - 8;
              do
              {
                v31 = v27;
                *v21 = 0;
                v25 -= v24[v20] * (*v23 - 1);
                v34 = v25;
                --v27;
                v21 = &v19[v29 - 8];
                v22 = *v21;
                v19 -= 4;
                if (v31 < 2)
                {
                  break;
                }

                v23 = &v30[v29];
                v32 = *&v30[4 * v28] - 1;
                v30 -= 4;
                v20 = v27;
              }

              while (v22 == v32);
              v21 = &v19[4 * v28 - 4];
            }

            else
            {
              v27 = ((v17 << 30) - 0x100000000) >> 32;
            }

            *v21 = v22 + 1;
            v34 = v24[v27] + v25;
          }

          v16 += v13;
        }

        while (v16 < (*a1)[6]);
      }

      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      return result;
    }
  }

  v33 = (*a1)[19];

  return mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(v33, v5, v13, v14);
}

uint64_t mlx::core::simd::sincos<true,mlx::core::_MLX_BFloat16,1>(int a1)
{
  LODWORD(v1) = (((a1 << 16) & 0x7FFFFFFF) + (a1 & 1) + 0x7FFF) & 0xFFFF0000;
  v2 = (v1 * 1.2732) + 1;
  v3 = ((v1 + ((v2 & 0xFFFFFFFE) * -0.78516)) + ((v2 & 0xFFFFFFFE) * -0.00024188)) + ((v2 & 0xFFFFFFFE) * -0.000000037749);
  v4 = v3 * v3;
  v5 = (v3 * v3) * ((v3 * v3) * (((((v3 * v3) * 0.000024433) + -0.0013887) * (v3 * v3)) + 0.041667));
  v6 = v3 + (v3 * ((v3 * v3) * (((((v3 * v3) * -0.00019515) + 0.0083322) * (v3 * v3)) + -0.16667)));
  v7 = (v5 + (v4 * -0.5)) + 1.0;
  if ((v2 & 2) != 0)
  {
    v6 = v7;
  }

  if (COERCE_FLOAT(a1 << 16) < 0.0 != (v2 & 4) >> 2)
  {
    v6 = -v6;
  }

  return (LODWORD(v6) + (HIWORD(LODWORD(v6)) & 1u) + 0x7FFF) >> 16;
}

double mlx::core::simd::sincos<true,half,8>(float16x8_t a1)
{
  v1 = vcltzq_f16(a1);
  v2 = vmovl_high_s16(v1);
  v3 = vmovl_s16(*v1.i8);
  v4 = vabsq_f16(a1);
  v5 = vcvt_hight_f32_f16(v4);
  v6 = vcvtq_f32_f16(*v4.i8);
  v7 = vdupq_n_s32(0x3FA2F983u);
  v8 = vmulq_f32(v6, v7);
  v9 = vmulq_f32(v5, v7);
  v10.i64[0] = 0x4F0000004F000000;
  v10.i64[1] = 0x4F0000004F000000;
  v11 = vcgtq_f32(v9, v10);
  v12 = vcgtq_f32(v8, v10);
  v13 = vcvtq_s32_f32(vsubq_f32(v9, vandq_s8(v10, v11)));
  v14 = vcvtq_s32_f32(vsubq_f32(v8, vandq_s8(v10, v12)));
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  v15 = vnegq_f32(v10);
  v16 = vaddq_s32(vsubq_s32(vandq_s8(v12, v15), vmvnq_s8(v12)), v14);
  v17 = vaddq_s32(vsubq_s32(vandq_s8(v11, v15), vmvnq_s8(v11)), v13);
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v18 = vandq_s8(v17, v15);
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v19 = vandq_s8(v17, v12);
  v20 = vandq_s8(v16, v12);
  v21 = vcvtq_f32_u32((*&v16 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v22 = vcvtq_f32_u32((*&v17 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v23 = vceqzq_s32(vandq_s8(v16, v15));
  v24 = vdupq_n_s32(0xBF490000);
  v25 = vceqzq_s32(v18);
  v26 = vmlaq_f32(v5, v24, v22);
  v27 = vmlaq_f32(v6, v24, v21);
  v28 = vdupq_n_s32(0xB97DA000);
  v29 = vmlaq_f32(v27, v28, v21);
  v30 = vmlaq_f32(v26, v28, v22);
  v31 = vdupq_n_s32(0xB3222169);
  v32 = vmlaq_f32(v30, v31, v22);
  v33 = vmlaq_f32(v29, v31, v21);
  v34 = veorq_s8(vceqzq_s32(v20), v3);
  v35 = veorq_s8(vceqzq_s32(v19), v2);
  v36 = vmulq_f32(v33, v33);
  v37 = vdupq_n_s32(0x37CCF5CEu);
  v38 = vdupq_n_s32(0xBAB6061A);
  v39 = vmulq_f32(v32, v32);
  v40 = vmlaq_f32(v38, v37, v39);
  v41 = vdupq_n_s32(0xB94CA1F9);
  v42 = vmlaq_f32(v38, v37, v36);
  v43 = vdupq_n_s32(0x3C08839Eu);
  v44 = vmlaq_f32(v43, v41, v39);
  v45 = vmlaq_f32(v43, v41, v36);
  v46 = vdupq_n_s32(0x3D2AAAA5u);
  v47 = vmlaq_f32(v46, v36, v42);
  v48 = vdupq_n_s32(0xBE2AAAA3);
  v49 = vmlaq_f32(v33, vmulq_f32(v36, vmlaq_f32(v48, v36, v45)), v33);
  v50 = vmlaq_f32(v32, vmulq_f32(v39, vmlaq_f32(v48, v39, v44)), v32);
  v48.i64[0] = 0xBF000000BF000000;
  v48.i64[1] = 0xBF000000BF000000;
  v51 = vmlaq_f32(vmulq_f32(v39, vmulq_f32(v39, vmlaq_f32(v46, v39, v40))), v48, v39);
  v52 = vmlaq_f32(vmulq_f32(v36, vmulq_f32(v36, v47)), v48, v36);
  __asm { FMOV            V6.4S, #1.0 }

  v58 = vbslq_s8(v25, v50, vaddq_f32(v51, _Q6));
  v59 = vbslq_s8(v23, v49, vaddq_f32(v52, _Q6));
  *&result = vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(v34, v59, vnegq_f32(v59))), vbslq_s8(v35, v58, vnegq_f32(v58))).u64[0];
  return result;
}

__int16 mlx::core::simd::sincos<true,half,1>@<H0>()
{
  __asm { FCMP            H0, #0 }

  _H0 = fabsl(_H0);
  __asm { FCVT            S0, H0 }

  if (_NF)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = (_S0 * 1.2732) + 1;
  v9 = ((_S0 + ((v8 & 0xFFFFFFFE) * -0.78516)) + ((v8 & 0xFFFFFFFE) * -0.00024188)) + ((v8 & 0xFFFFFFFE) * -0.000000037749);
  v10 = v7 ^ ((v8 & 4) >> 2);
  v11 = v9 * v9;
  v12 = (v9 * v9) * ((v9 * v9) * (((((v9 * v9) * 0.000024433) + -0.0013887) * (v9 * v9)) + 0.041667));
  _S0 = v9 + (v9 * ((v9 * v9) * (((((v9 * v9) * -0.00019515) + 0.0083322) * (v9 * v9)) + -0.16667)));
  v14 = (v12 + (v11 * -0.5)) + 1.0;
  if ((v8 & 2) != 0)
  {
    _S0 = v14;
  }

  if (v10)
  {
    _S0 = -_S0;
  }

  __asm { FCVT            H0, S0 }

  return result;
}

int8x16_t mlx::core::simd::sincos<true,float,8>@<Q0>(float32x4_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = vcltzq_f32(*a1);
  v4 = vcltzq_f32(v2);
  v5 = vabsq_f32(v2);
  v6 = vabsq_f32(*a1);
  *a1 = v6;
  a1[1] = v5;
  v7 = vdupq_n_s32(0x3FA2F983u);
  v8 = vmulq_f32(v5, v7);
  v9 = vmulq_f32(v6, v7);
  v10.i64[0] = 0x4F0000004F000000;
  v10.i64[1] = 0x4F0000004F000000;
  v11 = vcgtq_f32(v9, v10);
  v12 = vcgtq_f32(v8, v10);
  v13 = vcvtq_s32_f32(vsubq_f32(v9, vandq_s8(v10, v11)));
  v14 = vcvtq_s32_f32(vsubq_f32(v8, vandq_s8(v10, v12)));
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  v15 = vnegq_f32(v10);
  v16 = vaddq_s32(vsubq_s32(vandq_s8(v12, v15), vmvnq_s8(v12)), v14);
  v17 = vaddq_s32(vsubq_s32(vandq_s8(v11, v15), vmvnq_s8(v11)), v13);
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v18 = vandq_s8(v17, v15);
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v19 = vandq_s8(v17, v12);
  v20 = vandq_s8(v16, v12);
  v21 = vcvtq_f32_u32((*&v16 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v22 = vcvtq_f32_u32((*&v17 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v23 = vceqzq_s32(vandq_s8(v16, v15));
  v24 = vceqzq_s32(v18);
  v25 = vdupq_n_s32(0xBF490000);
  v26 = vdupq_n_s32(0xB97DA000);
  v27 = vmlaq_f32(vmlaq_f32(v5, v25, v21), v26, v21);
  v28 = vmlaq_f32(vmlaq_f32(v6, v25, v22), v26, v22);
  v29 = vdupq_n_s32(0xB3222169);
  v30 = vmlaq_f32(v28, v29, v22);
  v31 = vmlaq_f32(v27, v29, v21);
  v32 = veorq_s8(vceqzq_s32(v20), v4);
  v33 = veorq_s8(vceqzq_s32(v19), v3);
  v34 = vmulq_f32(v31, v31);
  v35 = vmulq_f32(v30, v30);
  v36 = vdupq_n_s32(0x37CCF5CEu);
  v37 = vdupq_n_s32(0xBAB6061A);
  v38 = vmlaq_f32(v37, v36, v35);
  v39 = vmlaq_f32(v37, v36, v34);
  v40 = vdupq_n_s32(0xB94CA1F9);
  v41 = vdupq_n_s32(0x3C08839Eu);
  v42 = vmlaq_f32(v41, v40, v35);
  v43 = vmlaq_f32(v41, v40, v34);
  v44 = vdupq_n_s32(0x3D2AAAA5u);
  v45 = vmlaq_f32(v44, v34, v39);
  v46 = vdupq_n_s32(0xBE2AAAA3);
  v47 = vmlaq_f32(v31, vmulq_f32(v34, vmlaq_f32(v46, v34, v43)), v31);
  v48 = vmlaq_f32(v30, vmulq_f32(v35, vmlaq_f32(v46, v35, v42)), v30);
  v46.i64[0] = 0xBF000000BF000000;
  v46.i64[1] = 0xBF000000BF000000;
  v49 = vmlaq_f32(vmulq_f32(v34, vmulq_f32(v34, v45)), v46, v34);
  __asm { FMOV            V6.4S, #1.0 }

  v55 = vbslq_s8(v24, v48, vaddq_f32(vmlaq_f32(vmulq_f32(v35, vmulq_f32(v35, vmlaq_f32(v44, v35, v38))), v46, v35), _Q6));
  v56 = vbslq_s8(v23, v47, vaddq_f32(v49, _Q6));
  result = vbslq_s8(v32, v56, vnegq_f32(v56));
  *a2 = vbslq_s8(v33, v55, vnegq_f32(v55));
  a2[1] = result;
  return result;
}

float mlx::core::simd::sincos<true,float,1>(float a1)
{
  v1 = a1 < 0.0;
  v2 = fabsf(a1);
  v3 = (v2 * 1.2732) + 1;
  v4 = ((v2 + ((v3 & 0xFFFFFFFE) * -0.78516)) + ((v3 & 0xFFFFFFFE) * -0.00024188)) + ((v3 & 0xFFFFFFFE) * -0.000000037749);
  v5 = v1 ^ ((v3 & 4) >> 2);
  v6 = v4 * v4;
  v7 = (v4 * v4) * ((v4 * v4) * (((((v4 * v4) * 0.000024433) + -0.0013887) * (v4 * v4)) + 0.041667));
  result = v4 + (v4 * ((v4 * v4) * (((((v4 * v4) * -0.00019515) + 0.0083322) * (v4 * v4)) + -0.16667)));
  v9 = (v7 + (v6 * -0.5)) + 1.0;
  if ((v3 & 2) != 0)
  {
    result = v9;
  }

  if (v5)
  {
    return -result;
  }

  return result;
}

float64x2_t mlx::core::simd::sincos<true,double,4>@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = vuzp1q_s32(vcltzq_f64(*a1), vcltzq_f64(v2));
  v4 = vabsq_f64(v2);
  v5 = vabsq_f64(*a1);
  *a1 = v5;
  a1[1] = v4;
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4);
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3FA2F983u));
  v8.i64[0] = 0x4F0000004F000000;
  v8.i64[1] = 0x4F0000004F000000;
  v9 = vcgtq_f32(v7, v8);
  v10 = vcvtq_s32_f32(vsubq_f32(v7, vandq_s8(v8, v9)));
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  v11 = vaddq_s32(vsubq_s32(vandq_s8(v9, vnegq_f32(v8)), vmvnq_s8(v9)), v10);
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v12 = vandq_s8(v11, v8);
  v9.i64[0] = 0x400000004;
  v9.i64[1] = 0x400000004;
  v13 = vandq_s8(v11, v9);
  v14 = vcvtq_f32_u32((*&v11 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v15 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v6, vdupq_n_s32(0xBF490000), v14), vdupq_n_s32(0xB97DA000), v14), vdupq_n_s32(0xB3222169), v14);
  v16 = veorq_s8(vceqzq_s32(v13), v3);
  v17 = vmulq_f32(v15, v15);
  v18 = vmlaq_f32(v15, vmulq_f32(v17, vmlaq_f32(vdupq_n_s32(0xBE2AAAA3), v17, vmlaq_f32(vdupq_n_s32(0x3C08839Eu), vdupq_n_s32(0xB94CA1F9), v17))), v15);
  v19.i64[0] = 0xBF000000BF000000;
  v19.i64[1] = 0xBF000000BF000000;
  v20 = vmlaq_f32(vmulq_f32(v17, vmulq_f32(v17, vmlaq_f32(vdupq_n_s32(0x3D2AAAA5u), v17, vmlaq_f32(vdupq_n_s32(0xBAB6061A), vdupq_n_s32(0x37CCF5CEu), v17)))), v19, v17);
  __asm { FMOV            V2.4S, #1.0 }

  v26 = vbslq_s8(vceqzq_s32(v12), v18, vaddq_f32(v20, _Q2));
  v27 = vbslq_s8(v16, v26, vnegq_f32(v26));
  v28 = vcvtq_f64_f32(*v27.f32);
  result = vcvt_hight_f64_f32(v27);
  *a2 = v28;
  a2[1] = result;
  return result;
}

double mlx::core::simd::sincos<true,double,1>(double a1)
{
  v1 = a1 < 0.0;
  v2 = fabs(a1);
  v3 = v1;
  v4 = (v2 * 1.2732) + 1;
  v5 = ((v2 + ((v4 & 0xFFFFFFFE) * -0.78516)) + ((v4 & 0xFFFFFFFE) * -0.00024188)) + ((v4 & 0xFFFFFFFE) * -0.000000037749);
  v6 = v3 ^ ((v4 & 4) >> 2);
  v7 = v5 * v5;
  v8 = (v5 * v5) * ((v5 * v5) * (((((v5 * v5) * 0.000024433) + -0.0013887) * (v5 * v5)) + 0.041667));
  v9 = v5 + (v5 * ((v5 * v5) * (((((v5 * v5) * -0.00019515) + 0.0083322) * (v5 * v5)) + -0.16667)));
  v10 = (v8 + (v7 * -0.5)) + 1.0;
  if ((v4 & 2) != 0)
  {
    v9 = v10;
  }

  if (v6)
  {
    return -v9;
  }

  return v9;
}

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v5 = (a1 + 4);
    v6 = 8 * a4;
    v7 = (a2 + 4);
    do
    {
      v8 = *(v5 - 1);
      v11[0] = -*v5;
      v11[1] = v8;
      result = -std::sinh[abi:ne200100]<float>(v11);
      *(v7 - 1) = v10;
      *v7 = result;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

float std::sinh[abi:ne200100]<float>(float *a1)
{
  v1 = *a1;
  if (fabsf(*a1) != INFINITY || (a1[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v2 = a1[1];
    if ((v1 != 0.0 || (a1[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF) && ((LODWORD(v1) & 0x7FFFFFFFu) < 0x7F800000 || v2 != 0.0))
    {
      v3 = sinhf(*a1);
      v4 = v3 * __sincosf_stret(v2).__cosval;
      coshf(v1);
      return v4;
    }
  }

  return v1;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A595CF0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A595EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD950;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD950;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFD950;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A596274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A596348(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59652C(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFDA48;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFDA48;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFDA48;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Sinh>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Sinh>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Sinh>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sinh>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sinh>(a1, a1 + 16);
        return result;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v1 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A5969A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sinh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = sinhf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_31:
      v35 = sinhf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v35) + (HIWORD(LODWORD(v35)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_31;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v46, v3, v3 + 3, (v9 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v13 = 0;
    v14 = v46;
    v15 = (((v48 - v47) << 30) - 0x100000000) >> 32;
    __p = v51;
    v44 = &v51[4 * v15];
    v40 = v15;
    v41 = v49;
    v16 = ((v48 - v47) >> 2) & 0x7FFFFFFF;
    v17 = 2 * v11;
    v42 = (v48 - v47) >> 2;
    v18 = 4 * v16;
    v36 = v47 - 8;
    v37 = v16 - 1;
    v39 = v47 + 4 * v15;
    do
    {
      v45 = v13;
      if (v10)
      {
        v19 = &v4[v14];
        v20 = v5;
        v21 = v10;
        do
        {
          v22 = sinhf(COERCE_FLOAT(*v19 << 16));
          *v20++ = (LODWORD(v22) + (HIWORD(LODWORD(v22)) & 1u) + 0x7FFF) >> 16;
          v19 = (v19 + v17);
          --v21;
        }

        while (v21);
      }

      if (v42)
      {
        v23 = v45;
        v24 = *v44;
        if (v42 >= 2 && v24 == *v39 - 1)
        {
          v25 = v37;
          v26 = __p;
          v27 = v36;
          v28 = v39;
          v29 = v44;
          v30 = v40;
          do
          {
            v31 = v25;
            *v29 = 0;
            v14 -= v41[v30] * (*v28 - 1);
            v46 = v14;
            --v25;
            v29 = &v26[v18 - 8];
            v24 = *v29;
            v26 -= 4;
            if (v31 < 2)
            {
              break;
            }

            v28 = &v27[v18];
            v32 = *&v27[v18] - 1;
            v27 -= 4;
            v30 = v25;
          }

          while (v24 == v32);
          v33 = &v26[v18 - 4];
        }

        else
        {
          v25 = v40;
          v33 = v44;
        }

        *v33 = v24 + 1;
        v14 += v41[v25];
        v46 = v14;
      }

      else
      {
        v23 = v45;
      }

      v13 = v23 + v10;
      v5 += v10;
    }

    while (v13 < v43);
    v34 = __p;
    if (!__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v34 = v51;
    if (!v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v34;
  operator delete(v34);
LABEL_25:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Sinh>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        v55 = _simd_sinh_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_sinh_f4(vcvt_hight_f32_f16(v7));
        *v5++ = vcvt_hight_f16_f32(vcvt_f16_f32(v55), _Q0);
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->i16[0];
      v4 = (v4 + 2);
      _H0 = v9;
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = sinhf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
    }

    return _Q0.i16[0];
  }

  v16 = v3[1];
  if (v16 == *v3)
  {
    v18 = 1;
    v19 = 1;
    do
    {
LABEL_33:
      _H0 = v4->i16[0];
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = sinhf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v19);
      --v18;
    }

    while (v18);
    return _Q0.i16[0];
  }

  v17 = v16 - *v3;
  v18 = *(v16 - 4);
  v19 = *(v3[4] - 8);
  if ((v17 >> 2) <= 1)
  {
    if (!v18)
    {
      return _Q0.i16[0];
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v58, v3, v3 + 3, (v17 >> 2) - 1);
  v54 = (*a1)[6];
  if (v54)
  {
    v21 = 0;
    v22 = v58;
    v23 = v61;
    v24 = (((v60 - v59) << 30) - 0x100000000) >> 32;
    __p = v63;
    v56 = &v63[4 * v24];
    v25 = ((v60 - v59) >> 2) & 0x7FFFFFFF;
    v49 = v25 - 1;
    v52 = v24;
    v26 = 2 * v19;
    v27 = 4 * v25;
    v48 = v59 - 8;
    v53 = (v60 - v59) >> 2;
    v51 = v59 + 4 * v24;
    do
    {
      x = v21;
      if (v18)
      {
        v28 = &v4->i16[v22];
        v29 = v5;
        v30 = v18;
        do
        {
          _H0 = *v28;
          __asm { FCVT            S0, H0; float }

          _Q0.f32[0] = sinhf(_S0);
          __asm { FCVT            H0, S0 }

          v29->i16[0] = _Q0.i16[0];
          v29 = (v29 + 2);
          v28 = (v28 + v26);
          --v30;
        }

        while (v30);
      }

      if (v53)
      {
        v33 = *v56;
        v34 = x;
        if (v53 >= 2 && v33 == *v51 - 1)
        {
          v35 = v49;
          v36 = __p;
          v37 = v48;
          v38 = v51;
          v39 = v56;
          v40 = v52;
          do
          {
            v41 = v35;
            *v39 = 0;
            v22 -= v23[v40] * (*v38 - 1);
            v58 = v22;
            --v35;
            v39 = &v36[v27 - 8];
            v33 = *v39;
            v36 -= 4;
            if (v41 < 2)
            {
              break;
            }

            v38 = &v37[v27];
            v42 = *&v37[v27] - 1;
            v37 -= 4;
            v40 = v35;
          }

          while (v33 == v42);
          v43 = &v36[v27 - 4];
        }

        else
        {
          v35 = v52;
          v43 = v56;
        }

        *v43 = v33 + 1;
        v22 += v23[v35];
        v58 = v22;
      }

      else
      {
        v34 = x;
      }

      v21 = v34 + v18;
      v5 = (v5 + 2 * v18);
    }

    while (v21 < v54);
    v44 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v44 = v63;
    if (!v63)
    {
      goto LABEL_27;
    }
  }

  v64 = v44;
  operator delete(v44);
LABEL_27:
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return _Q0.i16[0];
}

void mlx::core::unary_op<float,float,mlx::core::detail::Sinh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_sinh_f4(v7);
        v5[1] = _simd_sinh_f4(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->f32[0];
      v4 = (v4 + 4);
      v5->f32[0] = sinhf(v9);
      v5 = (v5 + 4);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f32[0] = sinhf(v4->f32[0]);
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v11 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 4 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f32[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = sinhf(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 4 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Sinh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_sinh_d2(v7);
        v5[1] = _simd_sinh_d2(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = v4->f64[0];
      v4 = (v4 + 8);
      v5->f64[0] = sinh(v9);
      v5 = (v5 + 8);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f64[0] = sinh(v4->f64[0]);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v11 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 8 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f64[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = sinh(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 8 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sinh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      v39 = v7;
      *v5 = std::sinh[abi:ne200100]<float>(&v39);
      *(v5 + 1) = v8;
      v5 += 2;
    }

    return;
  }

  v9 = v3[1];
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
LABEL_32:
    v37 = v5 + 1;
    do
    {
      v39 = *v4;
      *(v37 - 1) = std::sinh[abi:ne200100]<float>(&v39);
      *v37 = v38;
      v4 += v12;
      v37 += 2;
      --v11;
    }

    while (v11);
    return;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(v3[4] - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v39, v3, v3 + 3, (v10 >> 2) - 1);
  if ((*a1)[6])
  {
    v14 = 0;
    v15 = 8 * v12;
    v16 = v5 + 1;
    do
    {
      if (v11)
      {
        v17 = &v4[v39];
        v18 = v16;
        v19 = v11;
        do
        {
          v46 = *v17;
          *(v18 - 1) = std::sinh[abi:ne200100]<float>(&v46);
          *v18 = v20;
          v17 = (v17 + v15);
          v18 += 2;
          --v19;
        }

        while (v19);
      }

      v21 = v41 - v40;
      v22 = (v41 - v40) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v40 + 4 * v24;
        v28 = v42;
        v29 = v39;
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v40 - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v39 = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v39 = v28[v31] + v29;
      }

      v14 += v11;
      v16 += 2 * v11;
    }

    while (v14 < (*a1)[6]);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A597900(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A597AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFDAC8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFDAC8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFDAC8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Square&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A597E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Square&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Square&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A597F58(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Square&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Square&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Square&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59813C(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail6SquareEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFDBC0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail6SquareEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFDBC0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail6SquareEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFDBC0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail6SquareEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail6SquareEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail6SquareEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail6SquareEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  switch(*(*(a1 + 16) + 56))
  {
    case 0:
      mlx::core::unary_op<BOOL,BOOL,mlx::core::detail::Sign>(a1, v1);
      break;
    case 1:
    case 5:
      mlx::core::unary_op<unsigned char,unsigned char,mlx::core::detail::Square>(a1, v1);
      break;
    case 2:
    case 6:
      mlx::core::unary_op<unsigned short,unsigned short,mlx::core::detail::Square>(a1, v1);
      break;
    case 3:
    case 7:
      mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::Square>(a1, v1);
      break;
    case 4:
    case 8:
      mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::Square>(a1, v1);
      break;
    case 9:
      LODWORD(v2) = mlx::core::unary_op<half,half,mlx::core::detail::Square>(a1, v1);
      break;
    case 0xA:
      *&v2 = mlx::core::unary_op<float,float,mlx::core::detail::Square>(a1, v1);
      break;
    case 0xB:
      v2 = mlx::core::unary_op<double,double,mlx::core::detail::Square>(a1, v1);
      break;
    case 0xC:
      mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Square>(a1, v1);
      break;
    case 0xD:
      mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Square>(a1, v1);
      break;
    default:
      return *&v2;
  }

  return *&v2;
}

void mlx::core::unary_op<unsigned char,unsigned char,mlx::core::detail::Square>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 0x10)
    {
      do
      {
        v7 = *v4++;
        *v5++ = vmulq_s8(v7, v7);
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v8 = v4->i8[0];
      v4 = (v4 + 1);
      v5->i8[0] = v8 * v8;
      v5 = (v5 + 1);
    }

    return;
  }

  v9 = v3[1];
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
    do
    {
LABEL_34:
      v5->i8[0] = v4->i8[0] * v4->i8[0];
      v5 = (v5 + 1);
      v4 = (v4 + v12);
      --v11;
    }

    while (v11);
    return;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(v3[4] - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, v3 + 3, (v10 >> 2) - 1);
  if ((*a1)[6])
  {
    v14 = 0;
    v15 = v34;
    do
    {
      if (v11)
      {
        v16 = &v4->i8[v15];
        v17 = v5;
        v18 = v11;
        do
        {
          v17->i8[0] = *v16 * *v16;
          v17 = (v17 + 1);
          v16 += v12;
          --v18;
        }

        while (v18);
      }

      v19 = v36 - v35;
      v20 = (v36 - v35) >> 2;
      if (v20)
      {
        v21 = ((v19 << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = v37;
        v24 = __p + 4 * v21;
        v25 = *v24;
        v26 = v35 + 4 * v21;
        if (v20 >= 2 && v25 == *v26 - 1)
        {
          v29 = (v19 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v24 = 0;
            v15 -= v23[v21] * (*v26 - 1);
            v34 = v15;
            --v28;
            v24 = &v22[v30 - 8];
            v25 = *v24;
            v22 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v26 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v25 == v33);
          v24 = &v22[4 * v29 - 4];
        }

        else
        {
          v28 = ((v19 << 30) - 0x100000000) >> 32;
        }

        *v24 = v25 + 1;
        v15 += v23[v28];
        v34 = v15;
      }

      v14 += v11;
      v5 = (v5 + v11);
    }

    while (v14 < (*a1)[6]);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void mlx::core::unary_op<unsigned short,unsigned short,mlx::core::detail::Square>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 0x10)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vmulq_s16(v8, v8);
        v5[1] = vmulq_s16(v7, v7);
        v5 += 2;
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 2);
      v5->i16[0] = v9 * v9;
      v5 = (v5 + 2);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      v5->i16[0] = *v4 * *v4;
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v40;
    v18 = v43;
    v19 = (v42 - v41) >> 2;
    v20 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v41 + 4 * v20;
    v24 = 2 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v41 - 8;
    do
    {
      if (v12)
      {
        v27 = v4 + v17;
        v28 = v5;
        v29 = v12;
        do
        {
          v28->i16[0] = *v27 * *v27;
          v28 = (v28 + 2);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v40 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v40 = v17;
      }

      v16 += v12;
      v5 = (v5 + 2 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v46 = v21;
  operator delete(v21);
LABEL_26:
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
}

void mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::Square>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vmulq_s32(v8, v8);
        v5[1] = vmulq_s32(v7, v7);
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 4);
      v5->i32[0] = v9 * v9;
      v5 = (v5 + 4);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      v5->i32[0] = *v4 * *v4;
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v40;
    v18 = v43;
    v19 = (v42 - v41) >> 2;
    v20 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v41 + 4 * v20;
    v24 = 4 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v41 - 8;
    do
    {
      if (v12)
      {
        v27 = v4 + v17;
        v28 = v5;
        v29 = v12;
        do
        {
          v28->i32[0] = *v27 * *v27;
          v28 = (v28 + 4);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v40 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v40 = v17;
      }

      v16 += v12;
      v5 = (v5 + 4 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v46 = v21;
  operator delete(v21);
LABEL_26:
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
}

void mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::Square>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 += 2;
        *&v8 = v8 * v8;
        *(&v8 + 1) *= *(&v8 + 1);
        *&v7 = v7 * v7;
        *(&v7 + 1) *= *(&v7 + 1);
        *v5 = v8;
        v5[1] = v7;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 8);
      *v5 = v9 * v9;
      v5 = (v5 + 8);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      *v5 = *v4 * *v4;
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v43;
    v18 = v40;
    v19 = (v42 - v41) >> 2;
    v20 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v41 + 4 * v20;
    v24 = 8 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v41 - 8;
    do
    {
      if (v12)
      {
        v27 = v4 + v18;
        v28 = v5;
        v29 = v12;
        do
        {
          *v28++ = *v27 * *v27;
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v18 -= v17[v36] * (*v34 - 1);
            v40 = v18;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v18 += v17[v33];
        v40 = v18;
      }

      v16 += v12;
      v5 = (v5 + 8 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v46 = v21;
  operator delete(v21);
LABEL_26:
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
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Square>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        v8 = vmulq_f16(v7, v7);
        *v5++ = v8;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4->i16;
      v4 = (v4 + 2);
      *v8.i16 = v9 * v9;
      *v5->i16 = v9 * v9;
      v5 = (v5 + 2);
    }

    return v8.i16[0];
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      *v8.i16 = *v4->i16 * *v4->i16;
      v5->i16[0] = v8.i16[0];
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v13);
      --v12;
    }

    while (v12);
    return v8.i16[0];
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return v8.i16[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v41;
    v18 = v44;
    v19 = (v43 - v42) >> 2;
    v20 = (((v43 - v42) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v42 + 4 * v20;
    v24 = 2 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v42 - 8;
    do
    {
      if (v12)
      {
        v27 = &v4->i16[v17];
        v28 = v5;
        v29 = v12;
        do
        {
          *v8.i16 = *v27 * *v27;
          v28->i16[0] = v8.i16[0];
          v28 = (v28 + 2);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v41 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v41 = v17;
      }

      v16 += v12;
      v5 = (v5 + 2 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v47 = v21;
  operator delete(v21);
LABEL_26:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v8.i16[0];
}

float32_t mlx::core::unary_op<float,float,mlx::core::detail::Square>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        v9 = vmulq_f32(v7, v7);
        *v5 = vmulq_f32(v8, v8);
        v5[1] = v9;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 4);
      v9.f32[0] = v10 * v10;
      v5->f32[0] = v10 * v10;
      v5 = (v5 + 4);
    }

    return v9.f32[0];
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f32[0] = *v4 * *v4;
      v5->i32[0] = v9.i32[0];
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v14);
      --v13;
    }

    while (v13);
    return v9.f32[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f32[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v12 >> 2) - 1);
  v16 = (*a1)[6];
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 4 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = v4 + v18;
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f32[0] = *v28 * *v28;
          v29->i32[0] = v9.i32[0];
          v29 = (v29 + 4);
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 = (v5 + 4 * v13);
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f32[0];
}

float64_t mlx::core::unary_op<double,double,mlx::core::detail::Square>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        v9 = vmulq_f64(v7, v7);
        *v5 = vmulq_f64(v8, v8);
        *(v5 + 16) = v9;
        v5 += 32;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 8);
      v9.f64[0] = v10 * v10;
      *v5 = v10 * v10;
      v5 += 8;
    }

    return v9.f64[0];
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f64[0] = *v4 * *v4;
      *v5 = v9.f64[0];
      v5 += 8;
      v4 = (v4 + 8 * v14);
      --v13;
    }

    while (v13);
    return v9.f64[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f64[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v12 >> 2) - 1);
  v16 = (*a1)[6];
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 8 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = v4 + v18;
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f64[0] = *v28 * *v28;
          *v29++ = *&v9.f64[0];
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 += 8 * v13;
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f64[0];
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Square>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = COERCE_FLOAT(*v4 << 16) * COERCE_FLOAT(*v4 << 16);
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_30:
      v39 = COERCE_FLOAT(*v4 << 16) * COERCE_FLOAT(*v4 << 16);
      *v5++ = (LODWORD(v39) + (HIWORD(LODWORD(v39)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_30;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v9 >> 2) - 1);
  v13 = (*a1)[6];
  if (v13)
  {
    v14 = 0;
    v15 = v40;
    v16 = v43;
    v17 = (v42 - v41) >> 2;
    v18 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v19 = __p;
    v20 = __p + 4 * v18;
    v21 = v41 + 4 * v18;
    v22 = 2 * v11;
    v23 = 4 * (v17 & 0x7FFFFFFF);
    v24 = v41 - 8;
    do
    {
      if (v10)
      {
        v25 = &v4[v15];
        v26 = v5;
        v27 = v10;
        do
        {
          v28 = COERCE_FLOAT(*v25 << 16) * COERCE_FLOAT(*v25 << 16);
          *v26++ = (LODWORD(v28) + (HIWORD(LODWORD(v28)) & 1u) + 0x7FFF) >> 16;
          v25 = (v25 + v22);
          --v27;
        }

        while (v27);
      }

      if (v17)
      {
        v29 = *v20;
        if (v17 >= 2 && v29 == *v21 - 1)
        {
          v30 = v19;
          v31 = v24;
          v32 = (v17 & 0x7FFFFFFF) - 1;
          v33 = v21;
          v34 = v20;
          v35 = v18;
          do
          {
            v36 = v32;
            *v34 = 0;
            v15 -= v16[v35] * (*v33 - 1);
            v40 = v15;
            --v32;
            v34 = &v30[v23 - 8];
            v29 = *v34;
            v30 -= 4;
            if (v36 < 2)
            {
              break;
            }

            v33 = &v31[v23];
            v37 = *&v31[4 * (v17 & 0x7FFFFFFF)] - 1;
            v31 -= 4;
            v35 = v32;
          }

          while (v29 == v37);
          v38 = &v30[v23 - 4];
        }

        else
        {
          v32 = v18;
          v38 = v20;
        }

        *v38 = v29 + 1;
        v15 += v16[v32];
        v40 = v15;
      }

      v14 += v10;
      v5 += v10;
    }

    while (v14 < v13);
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }
  }

  v46 = v19;
  operator delete(v19);
LABEL_24:
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
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Square>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      v33 = __PAIR64__(LODWORD(v8), LODWORD(v7));
      v40[0] = v7;
      v40[1] = v8;
      *v5 = std::operator*[abi:ne200100]<float,0>(&v33, v40);
      *(v5 + 4) = v9;
      v5 += 8;
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v13 = 1;
    v12 = 1;
  }

  else
  {
    v11 = v10 - *v3;
    v12 = *(v10 - 4);
    v13 = *(v3[4] - 8);
    if ((v11 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v33, v3, v3 + 3, (v11 >> 2) - 1);
      if ((*a1)[6])
      {
        v15 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Square>(&v4[2 * v33], v5 + 8 * v15, v12, v13);
          v16 = v35 - v34;
          v17 = (v35 - v34) >> 2;
          if (v17)
          {
            v18 = __p;
            v19 = ((v16 << 30) - 0x100000000) >> 32;
            v20 = __p + 4 * v19;
            v21 = *v20;
            v22 = v34 + 4 * v19;
            v23 = v36;
            v24 = v33;
            if (v17 >= 2 && v21 == *v22 - 1)
            {
              v27 = (v16 >> 2) & 0x7FFFFFFF;
              v26 = v27 - 1;
              v28 = 4 * v27;
              v29 = v34 - 8;
              do
              {
                v30 = v26;
                *v20 = 0;
                v24 -= v23[v19] * (*v22 - 1);
                v33 = v24;
                --v26;
                v20 = &v18[v28 - 8];
                v21 = *v20;
                v18 -= 4;
                if (v30 < 2)
                {
                  break;
                }

                v22 = &v29[v28];
                v31 = *&v29[4 * v27] - 1;
                v29 -= 4;
                v19 = v26;
              }

              while (v21 == v31);
              v20 = &v18[4 * v27 - 4];
            }

            else
            {
              v26 = ((v16 << 30) - 0x100000000) >> 32;
            }

            *v20 = v21 + 1;
            v33 = v23[v26] + v24;
          }

          v15 += v12;
        }

        while (v15 < (*a1)[6]);
      }

      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      return;
    }
  }

  v32 = (*a1)[19];

  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Square>(v32, v5, v12, v13);
}

void sub_25A599B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Square>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v5 = (a1 + 4);
    v6 = 8 * a4;
    v7 = (a2 + 4);
    do
    {
      v8 = *v5;
      v11[0] = *(v5 - 1);
      v11[1] = v8;
      v10[0] = v11[0];
      v10[1] = v8;
      *(v7 - 1) = std::operator*[abi:ne200100]<float,0>(v11, v10);
      *v7 = v9;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A599C80(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A599E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFDC40;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFDC40;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFDC40;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Square>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Square,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Rsqrt&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A59A204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Rsqrt&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Rsqrt&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A59A2D8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Rsqrt&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Rsqrt&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Rsqrt&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59A4BC(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RsqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFDD38;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RsqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFDD38;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RsqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFDD38;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RsqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RsqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RsqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RsqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      mlx::core::unary_op<half,half,mlx::core::detail::Rsqrt>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Rsqrt>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Rsqrt>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Rsqrt>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Rsqrt>(a1, a1 + 16);
        return;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v7);
        v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[unary_fp] Does not support ", 28);
        v4 = *(*v1 + 56);
        LODWORD(v6[0]) = v4;
        BYTE4(v6[0]) = BYTE4(v4);
        mlx::core::operator<<(v3, v6);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v7, v6);
        MEMORY[0x25F851100](exception, v6);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_25A59A930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Rsqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      *v5++ = mlx::core::simd::rsqrt<mlx::core::_MLX_BFloat16>(v7);
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_32:
      *v5++ = mlx::core::simd::rsqrt<mlx::core::_MLX_BFloat16>(*v4);
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, v3 + 3, (v9 >> 2) - 1);
  if ((*a1)[6])
  {
    v13 = 0;
    v14 = 2 * v11;
    do
    {
      if (v10)
      {
        v15 = &v4[v34];
        v16 = v5;
        v17 = v10;
        do
        {
          *v16++ = mlx::core::simd::rsqrt<mlx::core::_MLX_BFloat16>(*v15);
          v15 = (v15 + v14);
          --v17;
        }

        while (v17);
      }

      v18 = v36 - v35;
      v19 = (v36 - v35) >> 2;
      if (v19)
      {
        v20 = __p;
        v21 = ((v18 << 30) - 0x100000000) >> 32;
        v22 = __p + 4 * v21;
        v23 = *v22;
        v24 = v35 + 4 * v21;
        v25 = v37;
        v26 = v34;
        if (v19 >= 2 && v23 == *v24 - 1)
        {
          v29 = (v18 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v22 = 0;
            v26 -= v25[v21] * (*v24 - 1);
            v34 = v26;
            --v28;
            v22 = &v20[v30 - 8];
            v23 = *v22;
            v20 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v24 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v23 == v33);
          v22 = &v20[4 * v29 - 4];
        }

        else
        {
          v28 = ((v18 << 30) - 0x100000000) >> 32;
        }

        *v22 = v23 + 1;
        v34 = v25[v28] + v26;
      }

      v13 += v10;
      v5 += v10;
    }

    while (v13 < (*a1)[6]);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void mlx::core::unary_op<half,half,mlx::core::detail::Rsqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        v8 = vrsqrteq_f16(v7);
        v9 = vmulq_f16(v8, vrsqrtsq_f16(v7, vmulq_f16(v8, v8)));
        *v5++ = vmulq_f16(v9, vrsqrtsq_f16(v7, vmulq_f16(v9, v9)));
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = v4->i16[0];
      v4 = (v4 + 2);
      _H1 = v10;
      __asm { FCVT            S1, H1 }

      _S1 = sqrtf(_S1);
      __asm { FCVT            H1, S1 }

      *v5->i16 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&_S1;
      v5 = (v5 + 2);
    }

    return;
  }

  v18 = v3[1];
  if (v18 == *v3)
  {
    v20 = 1;
    v21 = 1;
    do
    {
LABEL_32:
      _H1 = v4->i16[0];
      __asm { FCVT            S1, H1 }

      _S1 = sqrtf(_S1);
      __asm { FCVT            H1, S1 }

      *v5->i16 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&_S1;
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v21);
      --v20;
    }

    while (v20);
    return;
  }

  v19 = v18 - *v3;
  v20 = *(v18 - 4);
  v21 = *(v3[4] - 8);
  if ((v19 >> 2) <= 1)
  {
    if (!v20)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v54, v3, v3 + 3, (v19 >> 2) - 1);
  v23 = (*a1)[6];
  if (v23)
  {
    v24 = 0;
    v25 = v54;
    v26 = v57;
    v27 = (v56 - v55) >> 2;
    v28 = (((v56 - v55) << 30) - 0x100000000) >> 32;
    v29 = __p;
    v30 = __p + 4 * v28;
    v31 = v55 + 4 * v28;
    v32 = 2 * v21;
    v33 = 4 * (v27 & 0x7FFFFFFF);
    v34 = v55 - 8;
    do
    {
      if (v20)
      {
        v35 = &v4->i16[v25];
        v36 = v5;
        v37 = v20;
        do
        {
          _H1 = *v35;
          __asm { FCVT            S1, H1 }

          _S1 = sqrtf(_S1);
          __asm { FCVT            H1, S1 }

          *v36++ = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&_S1;
          v35 = (v35 + v32);
          --v37;
        }

        while (v37);
      }

      if (v27)
      {
        v41 = *v30;
        if (v27 >= 2 && v41 == *v31 - 1)
        {
          v42 = v29;
          v43 = v34;
          v44 = (v27 & 0x7FFFFFFF) - 1;
          v45 = v31;
          v46 = v30;
          v47 = v28;
          do
          {
            v48 = v44;
            *v46 = 0;
            v25 -= v26[v47] * (*v45 - 1);
            v54 = v25;
            --v44;
            v46 = &v42[v33 - 8];
            v41 = *v46;
            v42 -= 4;
            if (v48 < 2)
            {
              break;
            }

            v45 = &v43[v33];
            v49 = *&v43[4 * (v27 & 0x7FFFFFFF)] - 1;
            v43 -= 4;
            v47 = v44;
          }

          while (v41 == v49);
          v50 = &v42[v33 - 4];
        }

        else
        {
          v44 = v28;
          v50 = v30;
        }

        *v50 = v41 + 1;
        v25 += v26[v44];
        v54 = v25;
      }

      v24 += v20;
      v5 = (v5 + 2 * v20);
    }

    while (v24 < v23);
    if (!v29)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v29 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v60 = v29;
  operator delete(v29);
LABEL_26:
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }
}

void mlx::core::unary_op<float,float,mlx::core::detail::Rsqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 += 2;
        v9 = vrsqrteq_f32(v8);
        v10 = vmulq_f32(v9, vrsqrtsq_f32(v8, vmulq_f32(v9, v9)));
        v11 = vrsqrteq_f32(v7);
        v12 = vmulq_f32(v11, vrsqrtsq_f32(v7, vmulq_f32(v11, v11)));
        *v5 = vmulq_f32(v10, vrsqrtsq_f32(v8, vmulq_f32(v10, v10)));
        v5[1] = vmulq_f32(v12, vrsqrtsq_f32(v7, vmulq_f32(v12, v12)));
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v13 = v4->f32[0];
      v4 = (v4 + 4);
      v5->f32[0] = 1.0 / sqrtf(v13);
      v5 = (v5 + 4);
    }

    return;
  }

  v14 = v3[1];
  if (v14 == *v3)
  {
    v16 = 1;
    v17 = 1;
    do
    {
LABEL_32:
      v5->f32[0] = 1.0 / sqrtf(v4->f32[0]);
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v17);
      --v16;
    }

    while (v16);
    return;
  }

  v15 = v14 - *v3;
  v16 = *(v14 - 4);
  v17 = *(v3[4] - 8);
  if ((v15 >> 2) <= 1)
  {
    if (!v16)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v44, v3, v3 + 3, (v15 >> 2) - 1);
  v19 = (*a1)[6];
  if (v19)
  {
    v20 = 0;
    v21 = v44;
    v22 = v47;
    v23 = (v46 - v45) >> 2;
    v24 = (((v46 - v45) << 30) - 0x100000000) >> 32;
    v25 = __p;
    v26 = __p + 4 * v24;
    v27 = v45 + 4 * v24;
    v28 = 4 * v17;
    v29 = 4 * (v23 & 0x7FFFFFFF);
    v30 = v45 - 8;
    do
    {
      if (v16)
      {
        v31 = &v4->f32[v21];
        v32 = v5;
        v33 = v16;
        do
        {
          *v32++ = 1.0 / sqrtf(*v31);
          v31 = (v31 + v28);
          --v33;
        }

        while (v33);
      }

      if (v23)
      {
        v34 = *v26;
        if (v23 >= 2 && v34 == *v27 - 1)
        {
          v35 = v25;
          v36 = v30;
          v37 = (v23 & 0x7FFFFFFF) - 1;
          v38 = v27;
          v39 = v26;
          v40 = v24;
          do
          {
            v41 = v37;
            *v39 = 0;
            v21 -= v22[v40] * (*v38 - 1);
            v44 = v21;
            --v37;
            v39 = &v35[v29 - 8];
            v34 = *v39;
            v35 -= 4;
            if (v41 < 2)
            {
              break;
            }

            v38 = &v36[v29];
            v42 = *&v36[4 * (v23 & 0x7FFFFFFF)] - 1;
            v36 -= 4;
            v40 = v37;
          }

          while (v34 == v42);
          v43 = &v35[v29 - 4];
        }

        else
        {
          v37 = v24;
          v43 = v26;
        }

        *v43 = v34 + 1;
        v21 += v22[v37];
        v44 = v21;
      }

      v20 += v16;
      v5 = (v5 + 4 * v16);
    }

    while (v20 < v19);
    if (!v25)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v25 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v50 = v25;
  operator delete(v25);
LABEL_26:
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Rsqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      __asm { FMOV            V0.2D, #1.0 }

      do
      {
        v12 = *v4;
        v13 = v4[1];
        v4 += 2;
        *v5 = vdivq_f64(_Q0, vsqrtq_f64(v12));
        v5[1] = vdivq_f64(_Q0, vsqrtq_f64(v13));
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v14 = v4->f64[0];
      v4 = (v4 + 8);
      v5->f64[0] = 1.0 / sqrt(v14);
      v5 = (v5 + 8);
    }

    return;
  }

  v15 = v3[1];
  if (v15 == *v3)
  {
    v17 = 1;
    v18 = 1;
    do
    {
LABEL_33:
      v5->f64[0] = 1.0 / sqrt(v4->f64[0]);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v18);
      --v17;
    }

    while (v17);
    return;
  }

  v16 = v15 - *v3;
  v17 = *(v15 - 4);
  v18 = *(v3[4] - 8);
  if ((v16 >> 2) <= 1)
  {
    if (!v17)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v45, v3, v3 + 3, (v16 >> 2) - 1);
  v20 = (*a1)[6];
  if (v20)
  {
    v21 = 0;
    v22 = v45;
    v23 = v48;
    v24 = (v47 - v46) >> 2;
    v25 = (((v47 - v46) << 30) - 0x100000000) >> 32;
    v26 = __p;
    v27 = __p + 4 * v25;
    v28 = v46 + 4 * v25;
    v29 = 8 * v18;
    v30 = 4 * (v24 & 0x7FFFFFFF);
    v31 = v46 - 8;
    do
    {
      if (v17)
      {
        v32 = &v4->f64[v22];
        v33 = v5;
        v34 = v17;
        do
        {
          *v33++ = 1.0 / sqrt(*v32);
          v32 = (v32 + v29);
          --v34;
        }

        while (v34);
      }

      if (v24)
      {
        v35 = *v27;
        if (v24 >= 2 && v35 == *v28 - 1)
        {
          v36 = v26;
          v37 = v31;
          v38 = (v24 & 0x7FFFFFFF) - 1;
          v39 = v28;
          v40 = v27;
          v41 = v25;
          do
          {
            v42 = v38;
            *v40 = 0;
            v22 -= v23[v41] * (*v39 - 1);
            v45 = v22;
            --v38;
            v40 = &v36[v30 - 8];
            v35 = *v40;
            v36 -= 4;
            if (v42 < 2)
            {
              break;
            }

            v39 = &v37[v30];
            v43 = *&v37[4 * (v24 & 0x7FFFFFFF)] - 1;
            v37 -= 4;
            v41 = v38;
          }

          while (v35 == v43);
          v44 = &v36[v30 - 4];
        }

        else
        {
          v38 = v25;
          v44 = v27;
        }

        *v44 = v35 + 1;
        v22 += v23[v38];
        v45 = v22;
      }

      v21 += v17;
      v5 = (v5 + 8 * v17);
    }

    while (v21 < v20);
    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v26 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  v51 = v26;
  operator delete(v26);
LABEL_27:
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Rsqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      *v5 = mlx::core::simd::rsqrt<mlx::core::complex64_t>(v7, v8);
      *(v5 + 1) = v9;
      v5 += 2;
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
LABEL_32:
    v39 = v4 + 1;
    v40 = v5 + 1;
    do
    {
      *(v40 - 1) = mlx::core::simd::rsqrt<mlx::core::complex64_t>(*(v39 - 1), *v39);
      *v40 = v41;
      v39 += 2 * v13;
      v40 += 2;
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v11 >> 2) - 1);
  if ((*a1)[6])
  {
    v15 = 0;
    v16 = v4 + 1;
    v17 = 8 * v13;
    v18 = v5 + 1;
    do
    {
      if (v12)
      {
        v19 = &v16[2 * v42];
        v20 = v18;
        v21 = v12;
        do
        {
          *(v20 - 1) = mlx::core::simd::rsqrt<mlx::core::complex64_t>(*(v19 - 1), *v19);
          *v20 = v22;
          v19 = (v19 + v17);
          v20 += 2;
          --v21;
        }

        while (v21);
      }

      v23 = v44 - v43;
      v24 = (v44 - v43) >> 2;
      if (v24)
      {
        v25 = __p;
        v26 = ((v23 << 30) - 0x100000000) >> 32;
        v27 = __p + 4 * v26;
        v28 = *v27;
        v29 = v43 + 4 * v26;
        v30 = v45;
        v31 = v42;
        if (v24 >= 2 && v28 == *v29 - 1)
        {
          v34 = (v23 >> 2) & 0x7FFFFFFF;
          v33 = v34 - 1;
          v35 = 4 * v34;
          v36 = v43 - 8;
          do
          {
            v37 = v33;
            *v27 = 0;
            v31 -= v30[v26] * (*v29 - 1);
            v42 = v31;
            --v33;
            v27 = &v25[v35 - 8];
            v28 = *v27;
            v25 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v29 = &v36[v35];
            v38 = *&v36[4 * v34] - 1;
            v36 -= 4;
            v26 = v33;
          }

          while (v28 == v38);
          v27 = &v25[4 * v34 - 4];
        }

        else
        {
          v33 = ((v23 << 30) - 0x100000000) >> 32;
        }

        *v27 = v28 + 1;
        v42 = v30[v33] + v31;
      }

      v15 += v12;
      v18 += 2 * v12;
    }

    while (v15 < (*a1)[6]);
  }

  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }
}

uint64_t mlx::core::simd::rsqrt<mlx::core::_MLX_BFloat16>(int a1)
{
  v1 = sqrtf(COERCE_FLOAT(a1 << 16));
  v2 = 1.0 / COERCE_FLOAT((LODWORD(v1) + (HIWORD(LODWORD(v1)) & 1) + 0x7FFF) & 0xFFFF0000);
  return (LODWORD(v2) + (HIWORD(LODWORD(v2)) & 1u) + 0x7FFF) >> 16;
}

float mlx::core::simd::rsqrt<mlx::core::complex64_t>(float a1, float a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = std::sqrt[abi:ne200100]<float>(v5);
  return __divsc3(1.0, 0.0, v2, v3);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A59B7C4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59B994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFDDB8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFDDB8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFDDB8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Rsqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sqrt&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A59BD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sqrt&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sqrt&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A59BE1C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sqrt&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sqrt&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sqrt&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59C000(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFDEB0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFDEB0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFDEB0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SqrtEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float64_t mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Sqrt>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      *&result = mlx::core::unary_op<float,float,mlx::core::detail::Sqrt>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        return mlx::core::unary_op<double,double,mlx::core::detail::Sqrt>(a1, a1 + 16);
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sqrt>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sqrt>(a1, a1 + 16);
        return result;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v1 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A59C474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = sqrtf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_30:
      v39 = sqrtf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v39) + (HIWORD(LODWORD(v39)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_30;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v9 >> 2) - 1);
  v13 = (*a1)[6];
  if (v13)
  {
    v14 = 0;
    v15 = v40;
    v16 = v43;
    v17 = (v42 - v41) >> 2;
    v18 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v19 = __p;
    v20 = __p + 4 * v18;
    v21 = v41 + 4 * v18;
    v22 = 2 * v11;
    v23 = 4 * (v17 & 0x7FFFFFFF);
    v24 = v41 - 8;
    do
    {
      if (v10)
      {
        v25 = &v4[v15];
        v26 = v5;
        v27 = v10;
        do
        {
          v28 = sqrtf(COERCE_FLOAT(*v25 << 16));
          *v26++ = (LODWORD(v28) + (HIWORD(LODWORD(v28)) & 1u) + 0x7FFF) >> 16;
          v25 = (v25 + v22);
          --v27;
        }

        while (v27);
      }

      if (v17)
      {
        v29 = *v20;
        if (v17 >= 2 && v29 == *v21 - 1)
        {
          v30 = v19;
          v31 = v24;
          v32 = (v17 & 0x7FFFFFFF) - 1;
          v33 = v21;
          v34 = v20;
          v35 = v18;
          do
          {
            v36 = v32;
            *v34 = 0;
            v15 -= v16[v35] * (*v33 - 1);
            v40 = v15;
            --v32;
            v34 = &v30[v23 - 8];
            v29 = *v34;
            v30 -= 4;
            if (v36 < 2)
            {
              break;
            }

            v33 = &v31[v23];
            v37 = *&v31[4 * (v17 & 0x7FFFFFFF)] - 1;
            v31 -= 4;
            v35 = v32;
          }

          while (v29 == v37);
          v38 = &v30[v23 - 4];
        }

        else
        {
          v32 = v18;
          v38 = v20;
        }

        *v38 = v29 + 1;
        v15 += v16[v32];
        v40 = v15;
      }

      v14 += v10;
      v5 += v10;
    }

    while (v14 < v13);
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }
  }

  v46 = v19;
  operator delete(v19);
LABEL_24:
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
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Sqrt>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        _Q0 = vsqrtq_f16(v7);
        *v5++ = _Q0;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->i16[0];
      v4 = (v4 + 2);
      _H0 = v9;
      __asm { FCVT            S0, H0 }

      *_Q0.i32 = sqrtf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
    }

    return _Q0.i16[0];
  }

  v16 = v3[1];
  if (v16 == *v3)
  {
    v18 = 1;
    v19 = 1;
    do
    {
LABEL_32:
      _H0 = v4->i16[0];
      __asm { FCVT            S0, H0 }

      *_Q0.i32 = sqrtf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v19);
      --v18;
    }

    while (v18);
    return _Q0.i16[0];
  }

  v17 = v16 - *v3;
  v18 = *(v16 - 4);
  v19 = *(v3[4] - 8);
  if ((v17 >> 2) <= 1)
  {
    if (!v18)
    {
      return _Q0.i16[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v51, v3, v3 + 3, (v17 >> 2) - 1);
  v21 = (*a1)[6];
  if (v21)
  {
    v22 = 0;
    v23 = v51;
    v24 = v54;
    v25 = (v53 - v52) >> 2;
    v26 = (((v53 - v52) << 30) - 0x100000000) >> 32;
    v27 = __p;
    v28 = __p + 4 * v26;
    v29 = v52 + 4 * v26;
    v30 = 2 * v19;
    v31 = 4 * (v25 & 0x7FFFFFFF);
    v32 = v52 - 8;
    do
    {
      if (v18)
      {
        v33 = &v4->i16[v23];
        v34 = v5;
        v35 = v18;
        do
        {
          _H0 = *v33;
          __asm { FCVT            S0, H0 }

          *_Q0.i32 = sqrtf(_S0);
          __asm { FCVT            H0, S0 }

          v34->i16[0] = _Q0.i16[0];
          v34 = (v34 + 2);
          v33 = (v33 + v30);
          --v35;
        }

        while (v35);
      }

      if (v25)
      {
        v38 = *v28;
        if (v25 >= 2 && v38 == *v29 - 1)
        {
          v39 = v27;
          v40 = v32;
          v41 = (v25 & 0x7FFFFFFF) - 1;
          v42 = v29;
          v43 = v28;
          v44 = v26;
          do
          {
            v45 = v41;
            *v43 = 0;
            v23 -= v24[v44] * (*v42 - 1);
            v51 = v23;
            --v41;
            v43 = &v39[v31 - 8];
            v38 = *v43;
            v39 -= 4;
            if (v45 < 2)
            {
              break;
            }

            v42 = &v40[v31];
            v46 = *&v40[4 * (v25 & 0x7FFFFFFF)] - 1;
            v40 -= 4;
            v44 = v41;
          }

          while (v38 == v46);
          v47 = &v39[v31 - 4];
        }

        else
        {
          v41 = v26;
          v47 = v28;
        }

        *v47 = v38 + 1;
        v23 += v24[v41];
        v51 = v23;
      }

      v22 += v18;
      v5 = (v5 + 2 * v18);
    }

    while (v22 < v21);
    if (!v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v27 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v57 = v27;
  operator delete(v27);
LABEL_26:
  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  return _Q0.i16[0];
}

float32_t mlx::core::unary_op<float,float,mlx::core::detail::Sqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 += 2;
        v9 = vsqrtq_f32(v7);
        *v5 = vsqrtq_f32(v8);
        v5[1] = v9;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = v4->f32[0];
      v4 = (v4 + 4);
      v9.f32[0] = sqrtf(v10);
      v5->i32[0] = v9.i32[0];
      v5 = (v5 + 4);
    }

    return v9.f32[0];
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f32[0] = sqrtf(v4->f32[0]);
      v5->i32[0] = v9.i32[0];
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v14);
      --v13;
    }

    while (v13);
    return v9.f32[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f32[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v12 >> 2) - 1);
  v16 = (*a1)[6];
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 4 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = &v4->f32[v18];
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f32[0] = sqrtf(*v28);
          v29->i32[0] = v9.i32[0];
          v29 = (v29 + 4);
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 = (v5 + 4 * v13);
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f32[0];
}

float64_t mlx::core::unary_op<double,double,mlx::core::detail::Sqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 += 2;
        v9 = vsqrtq_f64(v7);
        *v5 = vsqrtq_f64(v8);
        *(v5 + 16) = v9;
        v5 += 32;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = v4->f64[0];
      v4 = (v4 + 8);
      v9.f64[0] = sqrt(v10);
      *v5 = v9.f64[0];
      v5 += 8;
    }

    return v9.f64[0];
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f64[0] = sqrt(v4->f64[0]);
      *v5 = v9.f64[0];
      v5 += 8;
      v4 = (v4 + 8 * v14);
      --v13;
    }

    while (v13);
    return v9.f64[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f64[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v12 >> 2) - 1);
  v16 = (*a1)[6];
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 8 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = &v4->f64[v18];
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f64[0] = sqrt(*v28);
          *v29++ = *&v9.f64[0];
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 += 8 * v13;
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f64[0];
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sqrt>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      v39 = v7;
      *v5 = std::sqrt[abi:ne200100]<float>(&v39);
      *(v5 + 1) = v8;
      v5 += 2;
    }

    return;
  }

  v9 = v3[1];
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
LABEL_32:
    v37 = v5 + 1;
    do
    {
      v39 = *v4;
      *(v37 - 1) = std::sqrt[abi:ne200100]<float>(&v39);
      *v37 = v38;
      v4 += v12;
      v37 += 2;
      --v11;
    }

    while (v11);
    return;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(v3[4] - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v39, v3, v3 + 3, (v10 >> 2) - 1);
  if ((*a1)[6])
  {
    v14 = 0;
    v15 = 8 * v12;
    v16 = v5 + 1;
    do
    {
      if (v11)
      {
        v17 = &v4[v39];
        v18 = v16;
        v19 = v11;
        do
        {
          v46 = *v17;
          *(v18 - 1) = std::sqrt[abi:ne200100]<float>(&v46);
          *v18 = v20;
          v17 = (v17 + v15);
          v18 += 2;
          --v19;
        }

        while (v19);
      }

      v21 = v41 - v40;
      v22 = (v41 - v40) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v40 + 4 * v24;
        v28 = v42;
        v29 = v39;
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v40 - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v39 = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v39 = v28[v31] + v29;
      }

      v14 += v11;
      v16 += 2 * v11;
    }

    while (v14 < (*a1)[6]);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_25A59D1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A59D270(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59D440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFDF30;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFDF30;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFDF30;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sqrt,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tan&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A59D7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tan&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tan&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A59D8C8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tan&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tan&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tan&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59DAAC(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3TanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFE028;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3TanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFE028;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3TanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFE028;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3TanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3TanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3TanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, double a2, int8x16_t a3, int8x16_t a4)
{
  mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24, a2, a3, a4);
  v5 = mlx::core::scheduler::scheduler(v4);

  mlx::core::scheduler::Scheduler::notify_task_completion(v5);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3TanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1, double a2, int8x16_t a3, int8x16_t a4)
{
  v4 = a1 + 16;
  v5 = *(*(a1 + 16) + 56);
  if (v5 <= 10)
  {
    if (v5 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Tan>(a1, a1 + 16);
    }

    else
    {
      if (v5 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Tan>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v5)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Tan>(a1, a1 + 16);
        break;
      case 13:

        *&result = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Tan>(a1, a1 + 16, a2, a3, a4);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Tan>(a1, a1 + 16);
        return result;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v11);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[unary_fp] Does not support ", 28);
        v8 = *(*v4 + 56);
        LODWORD(v10[0]) = v8;
        BYTE4(v10[0]) = BYTE4(v8);
        mlx::core::operator<<(v7, v10);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v11, v10);
        MEMORY[0x25F851100](exception, v10);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A59DF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Tan>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = tanf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_31:
      v35 = tanf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v35) + (HIWORD(LODWORD(v35)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_31;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v46, v3, v3 + 3, (v9 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v13 = 0;
    v14 = v46;
    v15 = (((v48 - v47) << 30) - 0x100000000) >> 32;
    __p = v51;
    v44 = &v51[4 * v15];
    v40 = v15;
    v41 = v49;
    v16 = ((v48 - v47) >> 2) & 0x7FFFFFFF;
    v17 = 2 * v11;
    v42 = (v48 - v47) >> 2;
    v18 = 4 * v16;
    v36 = v47 - 8;
    v37 = v16 - 1;
    v39 = v47 + 4 * v15;
    do
    {
      v45 = v13;
      if (v10)
      {
        v19 = &v4[v14];
        v20 = v5;
        v21 = v10;
        do
        {
          v22 = tanf(COERCE_FLOAT(*v19 << 16));
          *v20++ = (LODWORD(v22) + (HIWORD(LODWORD(v22)) & 1u) + 0x7FFF) >> 16;
          v19 = (v19 + v17);
          --v21;
        }

        while (v21);
      }

      if (v42)
      {
        v23 = v45;
        v24 = *v44;
        if (v42 >= 2 && v24 == *v39 - 1)
        {
          v25 = v37;
          v26 = __p;
          v27 = v36;
          v28 = v39;
          v29 = v44;
          v30 = v40;
          do
          {
            v31 = v25;
            *v29 = 0;
            v14 -= v41[v30] * (*v28 - 1);
            v46 = v14;
            --v25;
            v29 = &v26[v18 - 8];
            v24 = *v29;
            v26 -= 4;
            if (v31 < 2)
            {
              break;
            }

            v28 = &v27[v18];
            v32 = *&v27[v18] - 1;
            v27 -= 4;
            v30 = v25;
          }

          while (v24 == v32);
          v33 = &v26[v18 - 4];
        }

        else
        {
          v25 = v40;
          v33 = v44;
        }

        *v33 = v24 + 1;
        v14 += v41[v25];
        v46 = v14;
      }

      else
      {
        v23 = v45;
      }

      v13 = v23 + v10;
      v5 += v10;
    }

    while (v13 < v43);
    v34 = __p;
    if (!__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v34 = v51;
    if (!v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v34;
  operator delete(v34);
LABEL_25:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Tan>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        v55 = _simd_tan_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_tan_f4(vcvt_hight_f32_f16(v7));
        *v5++ = vcvt_hight_f16_f32(vcvt_f16_f32(v55), _Q0);
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->i16[0];
      v4 = (v4 + 2);
      _H0 = v9;
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = tanf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
    }

    return _Q0.i16[0];
  }

  v16 = v3[1];
  if (v16 == *v3)
  {
    v18 = 1;
    v19 = 1;
    do
    {
LABEL_33:
      _H0 = v4->i16[0];
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = tanf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v19);
      --v18;
    }

    while (v18);
    return _Q0.i16[0];
  }

  v17 = v16 - *v3;
  v18 = *(v16 - 4);
  v19 = *(v3[4] - 8);
  if ((v17 >> 2) <= 1)
  {
    if (!v18)
    {
      return _Q0.i16[0];
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v58, v3, v3 + 3, (v17 >> 2) - 1);
  v54 = (*a1)[6];
  if (v54)
  {
    v21 = 0;
    v22 = v58;
    v23 = v61;
    v24 = (((v60 - v59) << 30) - 0x100000000) >> 32;
    __p = v63;
    v56 = &v63[4 * v24];
    v25 = ((v60 - v59) >> 2) & 0x7FFFFFFF;
    v49 = v25 - 1;
    v52 = v24;
    v26 = 2 * v19;
    v27 = 4 * v25;
    v48 = v59 - 8;
    v53 = (v60 - v59) >> 2;
    v51 = v59 + 4 * v24;
    do
    {
      x = v21;
      if (v18)
      {
        v28 = &v4->i16[v22];
        v29 = v5;
        v30 = v18;
        do
        {
          _H0 = *v28;
          __asm { FCVT            S0, H0; float }

          _Q0.f32[0] = tanf(_S0);
          __asm { FCVT            H0, S0 }

          v29->i16[0] = _Q0.i16[0];
          v29 = (v29 + 2);
          v28 = (v28 + v26);
          --v30;
        }

        while (v30);
      }

      if (v53)
      {
        v33 = *v56;
        v34 = x;
        if (v53 >= 2 && v33 == *v51 - 1)
        {
          v35 = v49;
          v36 = __p;
          v37 = v48;
          v38 = v51;
          v39 = v56;
          v40 = v52;
          do
          {
            v41 = v35;
            *v39 = 0;
            v22 -= v23[v40] * (*v38 - 1);
            v58 = v22;
            --v35;
            v39 = &v36[v27 - 8];
            v33 = *v39;
            v36 -= 4;
            if (v41 < 2)
            {
              break;
            }

            v38 = &v37[v27];
            v42 = *&v37[v27] - 1;
            v37 -= 4;
            v40 = v35;
          }

          while (v33 == v42);
          v43 = &v36[v27 - 4];
        }

        else
        {
          v35 = v52;
          v43 = v56;
        }

        *v43 = v33 + 1;
        v22 += v23[v35];
        v58 = v22;
      }

      else
      {
        v34 = x;
      }

      v21 = v34 + v18;
      v5 = (v5 + 2 * v18);
    }

    while (v21 < v54);
    v44 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v44 = v63;
    if (!v63)
    {
      goto LABEL_27;
    }
  }

  v64 = v44;
  operator delete(v44);
LABEL_27:
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return _Q0.i16[0];
}

void mlx::core::unary_op<float,float,mlx::core::detail::Tan>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_tan_f4(v7);
        v5[1] = _simd_tan_f4(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->f32[0];
      v4 = (v4 + 4);
      v5->f32[0] = tanf(v9);
      v5 = (v5 + 4);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f32[0] = tanf(v4->f32[0]);
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v11 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 4 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f32[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = tanf(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 4 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Tan>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_tan_d2(v7);
        v5[1] = _simd_tan_d2(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = v4->f64[0];
      v4 = (v4 + 8);
      v5->f64[0] = tan(v9);
      v5 = (v5 + 8);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f64[0] = tan(v4->f64[0]);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v11 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 8 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f64[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = tan(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 8 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Tan>(uint64_t **a1, uint64_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v6 = *a1;
  v7 = (*a1)[19];
  v8 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v6[20]; i; --i)
    {
      LODWORD(a3) = *v7;
      a4.i32[0] = v7[1];
      v7 += 2;
      *a4.i32 = -*a4.i32;
      v36 = __PAIR64__(LODWORD(a3), a4.u32[0]);
      *&a3 = -std::tanh[abi:ne200100]<float>(&v36, a3, a4, a5);
      *v8 = a4.i32[0];
      v8[1] = LODWORD(a3);
      v8 += 2;
    }

    return *&a3;
  }

  v10 = v6[1];
  if (v10 == *v6)
  {
    v13 = 1;
    v12 = 1;
  }

  else
  {
    v11 = v10 - *v6;
    v12 = *(v10 - 4);
    v13 = *(v6[4] - 8);
    if ((v11 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v36, v6, v6 + 3, (v11 >> 2) - 1);
      if ((*a1)[6])
      {
        v17 = 0;
        do
        {
          *&a3 = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Tan>(&v7[2 * v36], &v8[2 * v17], v12, v13, a3, v15, v16);
          v18 = v38 - v37;
          v19 = (v38 - v37) >> 2;
          if (v19)
          {
            v20 = __p;
            v21 = ((v18 << 30) - 0x100000000) >> 32;
            v22 = __p + 4 * v21;
            v23 = *v22;
            v24 = v37 + 4 * v21;
            v25 = v39;
            v26 = v36;
            if (v19 >= 2 && v23 == *v24 - 1)
            {
              v29 = (v18 >> 2) & 0x7FFFFFFF;
              v28 = v29 - 1;
              v30 = 4 * v29;
              v31 = v37 - 8;
              do
              {
                v32 = v28;
                *v22 = 0;
                v26 -= v25[v21] * (*v24 - 1);
                v36 = v26;
                --v28;
                v22 = &v20[v30 - 8];
                v23 = *v22;
                v20 -= 4;
                if (v32 < 2)
                {
                  break;
                }

                v24 = &v31[v30];
                v33 = *&v31[4 * v29] - 1;
                v31 -= 4;
                v21 = v28;
              }

              while (v23 == v33);
              v22 = &v20[4 * v29 - 4];
            }

            else
            {
              v28 = ((v18 << 30) - 0x100000000) >> 32;
            }

            *v22 = v23 + 1;
            v36 = v25[v28] + v26;
          }

          v17 += v12;
        }

        while (v17 < (*a1)[6]);
      }

      if (__p)
      {
        v42 = __p;
        operator delete(__p);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      return *&a3;
    }
  }

  v34 = (*a1)[19];

  *&a3 = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Tan>(v34, v8, v12, v13, a3, a4, a5);
  return *&a3;
}

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Tan>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  if (a3)
  {
    v7 = a3;
    v8 = (a1 + 4);
    v9 = 8 * a4;
    v10 = (a2 + 4);
    do
    {
      *&a5 = *(v8 - 1);
      v12[0] = -*v8;
      *a6.i32 = v12[0];
      v12[1] = *&a5;
      *&a5 = -std::tanh[abi:ne200100]<float>(v12, a5, a6, a7);
      *(v10 - 1) = a6.i32[0];
      *v10 = LODWORD(a5);
      v8 = (v8 + v9);
      v10 += 2;
      --v7;
    }

    while (v7);
  }

  return *&a5;
}

float std::tanh[abi:ne200100]<float>(float *a1, double a2, int8x16_t a3, int8x16_t a4)
{
  a4.i32[0] = *a1;
  if (fabsf(*a1) == INFINITY)
  {
    a3.i32[0] = 1.0;
    v4.i64[0] = 0x8000000080000000;
    v4.i64[1] = 0x8000000080000000;
    LODWORD(v5) = vbslq_s8(v4, a3, a4).u32[0];
    if ((a1[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v14 = v5;
      sinf(a1[1] + a1[1]);
      return v14;
    }
  }

  else
  {
    v6 = *a4.i32 + *a4.i32;
    v7 = a1[1] + a1[1];
    v8 = coshf(*a4.i32 + *a4.i32);
    v9 = v8 + cosf(v7);
    v10 = sinhf(v6);
    v11 = fabsf(v9) == INFINITY;
    if (fabsf(v10) != INFINITY || !v11)
    {
      v15 = v10 / v9;
      sinf(v7);
      return v15;
    }

    else if (v10 <= 0.0)
    {
      return -1.0;
    }

    else
    {
      return 1.0;
    }
  }

  return v5;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A59F004(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFE0A8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFE0A8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFE0A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tanh&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A59F588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tanh&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tanh&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A59F65C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tanh&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tanh&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Tanh&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59F840(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4TanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFE1A0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4TanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFE1A0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4TanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFE1A0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4TanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4TanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4TanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, double a2, int8x16_t a3, int8x16_t a4)
{
  mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24, a2, a3, a4);
  v5 = mlx::core::scheduler::scheduler(v4);

  mlx::core::scheduler::Scheduler::notify_task_completion(v5);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4TanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1, double a2, int8x16_t a3, int8x16_t a4)
{
  v4 = a1 + 16;
  v5 = *(*(a1 + 16) + 56);
  if (v5 <= 10)
  {
    if (v5 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Tanh>(a1, a1 + 16);
    }

    else
    {
      if (v5 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Tanh>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v5)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Tanh>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Tanh>(a1, a1 + 16, a2, a3, a4);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Tanh>(a1, a1 + 16);
        return result;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v11);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[unary_fp] Does not support ", 28);
        v8 = *(*v4 + 56);
        LODWORD(v10[0]) = v8;
        BYTE4(v10[0]) = BYTE4(v8);
        mlx::core::operator<<(v7, v10);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v11, v10);
        MEMORY[0x25F851100](exception, v10);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A59FCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Tanh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = tanhf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_31:
      v35 = tanhf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v35) + (HIWORD(LODWORD(v35)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_31;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v46, v3, v3 + 3, (v9 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v13 = 0;
    v14 = v46;
    v15 = (((v48 - v47) << 30) - 0x100000000) >> 32;
    __p = v51;
    v44 = &v51[4 * v15];
    v40 = v15;
    v41 = v49;
    v16 = ((v48 - v47) >> 2) & 0x7FFFFFFF;
    v17 = 2 * v11;
    v42 = (v48 - v47) >> 2;
    v18 = 4 * v16;
    v36 = v47 - 8;
    v37 = v16 - 1;
    v39 = v47 + 4 * v15;
    do
    {
      v45 = v13;
      if (v10)
      {
        v19 = &v4[v14];
        v20 = v5;
        v21 = v10;
        do
        {
          v22 = tanhf(COERCE_FLOAT(*v19 << 16));
          *v20++ = (LODWORD(v22) + (HIWORD(LODWORD(v22)) & 1u) + 0x7FFF) >> 16;
          v19 = (v19 + v17);
          --v21;
        }

        while (v21);
      }

      if (v42)
      {
        v23 = v45;
        v24 = *v44;
        if (v42 >= 2 && v24 == *v39 - 1)
        {
          v25 = v37;
          v26 = __p;
          v27 = v36;
          v28 = v39;
          v29 = v44;
          v30 = v40;
          do
          {
            v31 = v25;
            *v29 = 0;
            v14 -= v41[v30] * (*v28 - 1);
            v46 = v14;
            --v25;
            v29 = &v26[v18 - 8];
            v24 = *v29;
            v26 -= 4;
            if (v31 < 2)
            {
              break;
            }

            v28 = &v27[v18];
            v32 = *&v27[v18] - 1;
            v27 -= 4;
            v30 = v25;
          }

          while (v24 == v32);
          v33 = &v26[v18 - 4];
        }

        else
        {
          v25 = v40;
          v33 = v44;
        }

        *v33 = v24 + 1;
        v14 += v41[v25];
        v46 = v14;
      }

      else
      {
        v23 = v45;
      }

      v13 = v23 + v10;
      v5 += v10;
    }

    while (v13 < v43);
    v34 = __p;
    if (!__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v34 = v51;
    if (!v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v34;
  operator delete(v34);
LABEL_25:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Tanh>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        v55 = _simd_tanh_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_tanh_f4(vcvt_hight_f32_f16(v7));
        *v5++ = vcvt_hight_f16_f32(vcvt_f16_f32(v55), _Q0);
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->i16[0];
      v4 = (v4 + 2);
      _H0 = v9;
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = tanhf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
    }

    return _Q0.i16[0];
  }

  v16 = v3[1];
  if (v16 == *v3)
  {
    v18 = 1;
    v19 = 1;
    do
    {
LABEL_33:
      _H0 = v4->i16[0];
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = tanhf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v19);
      --v18;
    }

    while (v18);
    return _Q0.i16[0];
  }

  v17 = v16 - *v3;
  v18 = *(v16 - 4);
  v19 = *(v3[4] - 8);
  if ((v17 >> 2) <= 1)
  {
    if (!v18)
    {
      return _Q0.i16[0];
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v58, v3, v3 + 3, (v17 >> 2) - 1);
  v54 = (*a1)[6];
  if (v54)
  {
    v21 = 0;
    v22 = v58;
    v23 = v61;
    v24 = (((v60 - v59) << 30) - 0x100000000) >> 32;
    __p = v63;
    v56 = &v63[4 * v24];
    v25 = ((v60 - v59) >> 2) & 0x7FFFFFFF;
    v49 = v25 - 1;
    v52 = v24;
    v26 = 2 * v19;
    v27 = 4 * v25;
    v48 = v59 - 8;
    v53 = (v60 - v59) >> 2;
    v51 = v59 + 4 * v24;
    do
    {
      x = v21;
      if (v18)
      {
        v28 = &v4->i16[v22];
        v29 = v5;
        v30 = v18;
        do
        {
          _H0 = *v28;
          __asm { FCVT            S0, H0; float }

          _Q0.f32[0] = tanhf(_S0);
          __asm { FCVT            H0, S0 }

          v29->i16[0] = _Q0.i16[0];
          v29 = (v29 + 2);
          v28 = (v28 + v26);
          --v30;
        }

        while (v30);
      }

      if (v53)
      {
        v33 = *v56;
        v34 = x;
        if (v53 >= 2 && v33 == *v51 - 1)
        {
          v35 = v49;
          v36 = __p;
          v37 = v48;
          v38 = v51;
          v39 = v56;
          v40 = v52;
          do
          {
            v41 = v35;
            *v39 = 0;
            v22 -= v23[v40] * (*v38 - 1);
            v58 = v22;
            --v35;
            v39 = &v36[v27 - 8];
            v33 = *v39;
            v36 -= 4;
            if (v41 < 2)
            {
              break;
            }

            v38 = &v37[v27];
            v42 = *&v37[v27] - 1;
            v37 -= 4;
            v40 = v35;
          }

          while (v33 == v42);
          v43 = &v36[v27 - 4];
        }

        else
        {
          v35 = v52;
          v43 = v56;
        }

        *v43 = v33 + 1;
        v22 += v23[v35];
        v58 = v22;
      }

      else
      {
        v34 = x;
      }

      v21 = v34 + v18;
      v5 = (v5 + 2 * v18);
    }

    while (v21 < v54);
    v44 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v44 = v63;
    if (!v63)
    {
      goto LABEL_27;
    }
  }

  v64 = v44;
  operator delete(v44);
LABEL_27:
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return _Q0.i16[0];
}

void mlx::core::unary_op<float,float,mlx::core::detail::Tanh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_tanh_f4(v7);
        v5[1] = _simd_tanh_f4(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->f32[0];
      v4 = (v4 + 4);
      v5->f32[0] = tanhf(v9);
      v5 = (v5 + 4);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f32[0] = tanhf(v4->f32[0]);
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v11 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 4 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f32[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = tanhf(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 4 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Tanh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_tanh_d2(v7);
        v5[1] = _simd_tanh_d2(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = v4->f64[0];
      v4 = (v4 + 8);
      v5->f64[0] = tanh(v9);
      v5 = (v5 + 8);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f64[0] = tanh(v4->f64[0]);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v11 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 8 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f64[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = tanh(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 8 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Tanh>(uint64_t **a1, uint64_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v6 = *a1;
  v7 = (*a1)[19];
  v8 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v6[20]; i; --i)
    {
      v10 = *v7++;
      v41 = v10;
      *v8 = std::tanh[abi:ne200100]<float>(&v41, v10, a4, a5);
      v8[1] = *a4.i32;
      v8 += 2;
    }

    return;
  }

  v11 = v6[1];
  if (v11 == *v6)
  {
    v13 = 1;
    v14 = 1;
LABEL_32:
    v40 = v8 + 1;
    do
    {
      v41 = *v7;
      *(v40 - 1) = std::tanh[abi:ne200100]<float>(&v41, v41, a4, a5);
      *v40 = *a4.i32;
      v7 += v14;
      v40 += 2;
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v6;
  v13 = *(v11 - 4);
  v14 = *(v6[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v6, v6 + 3, (v12 >> 2) - 1);
  if ((*a1)[6])
  {
    v18 = 0;
    v19 = 8 * v14;
    v20 = v8 + 1;
    do
    {
      if (v13)
      {
        v21 = &v7[*&v41];
        v22 = v20;
        v23 = v13;
        do
        {
          v48 = *v21;
          *(v22 - 1) = std::tanh[abi:ne200100]<float>(&v48, v48, v16, v17);
          *v22 = *v16.i32;
          v21 = (v21 + v19);
          v22 += 2;
          --v23;
        }

        while (v23);
      }

      v24 = v43 - v42;
      v25 = (v43 - v42) >> 2;
      if (v25)
      {
        v26 = __p;
        v27 = ((v24 << 30) - 0x100000000) >> 32;
        v28 = __p + 4 * v27;
        v29 = *v28;
        v30 = v42 + 4 * v27;
        v31 = v44;
        v32 = v41;
        if (v25 >= 2 && v29 == *v30 - 1)
        {
          v35 = (v24 >> 2) & 0x7FFFFFFF;
          v34 = v35 - 1;
          v36 = 4 * v35;
          v37 = v42 - 8;
          do
          {
            v38 = v34;
            *v28 = 0;
            *&v32 -= v31[v27] * (*v30 - 1);
            v41 = v32;
            --v34;
            v28 = &v26[v36 - 8];
            v29 = *v28;
            v26 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v30 = &v37[v36];
            v39 = *&v37[4 * v35] - 1;
            v37 -= 4;
            v27 = v34;
          }

          while (v29 == v39);
          v28 = &v26[4 * v35 - 4];
        }

        else
        {
          v34 = ((v24 << 30) - 0x100000000) >> 32;
        }

        *v28 = v29 + 1;
        *&v41 = v31[v34] + *&v32;
      }

      v18 += v13;
      v20 += 2 * v13;
    }

    while (v18 < (*a1)[6]);
  }

  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A0C14(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A5A0DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFE220;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFE220;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFE220;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Tanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Inverse::eval_cpu(uint64_t a1, mlx::core::array **a2, mlx::core::array *a3)
{
  v4 = *a2;
  v5 = *(**a2 + 56);
  if (v5 != 11)
  {
    if (v5 == 10)
    {
      v6 = *(a1 + 21);
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      v10 = *(a1 + 20);

      mlx::core::inverse_impl<float>(v4, a3, v10, v6, v7, v8);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[Inverse::eval_cpu] only supports float32 or float64.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = *(a1 + 21);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v15 = *(a1 + 20);

  mlx::core::inverse_impl<double>(v4, a3, v15, v11, v12, v13);
}

void mlx::core::inverse_impl<float>(mlx::core::array *a1, mlx::core::array *a2, int a3, char a4, uint64_t a5, int a6)
{
  if ((*(*a1 + 168) & 2) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  mlx::core::copy(a1, a2, v11, a5, a6);
  v13 = *a1;
  v14 = *(*a1 + 8);
  if (v14 != **a1)
  {
    v15 = *(v14 - 4);
    v16 = *(v13 + 48) / (v15 * v15);
    command_encoder = mlx::core::cpu::get_command_encoder(a5, a6);
    v18 = *(*a2 + 152);
    if (a3)
    {
      *&v19 = *(*a2 + 152);
      DWORD2(v19) = v15;
      v20 = v16;
      v21 = a4;
      mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v19);
    }

    *&v19 = *(*a2 + 152);
    DWORD2(v19) = v15;
    v20 = v16;
    mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(command_encoder, &v19);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void mlx::core::inverse_impl<double>(mlx::core::array *a1, mlx::core::array *a2, int a3, char a4, uint64_t a5, int a6)
{
  if ((*(*a1 + 168) & 2) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  mlx::core::copy(a1, a2, v11, a5, a6);
  v13 = *a1;
  v14 = *(*a1 + 8);
  if (v14 != **a1)
  {
    v15 = *(v14 - 4);
    v16 = *(v13 + 48) / (v15 * v15);
    command_encoder = mlx::core::cpu::get_command_encoder(a5, a6);
    v18 = *(*a2 + 152);
    if (a3)
    {
      *&v19 = *(*a2 + 152);
      DWORD2(v19) = v15;
      v20 = v16;
      v21 = a4;
      mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v19);
    }

    *&v19 = *(*a2 + 152);
    DWORD2(v19) = v15;
    v20 = v16;
    mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(command_encoder, &v19);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9 = v12;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  *v9 = *a2;
  *&v9[16] = *(a2 + 16);
  v4 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>(*(v4[1] + 8 * *a1), v9);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v4);
  *&v7 = *a1;
  DWORD2(v7) = *(a1 + 2);
  v8[0] = *v9;
  *(v8 + 9) = *&v9[9];
  v6 = mlx::core::scheduler::scheduler(v5);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2} &&)::{lambda(void)#1}>(*(v6[1] + 8 * *a1), &v7);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A15BC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 6);
  *(v8 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIfEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFE3A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIfEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIfEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    do
    {
      mlx::core::tri_inv<float>((*a1 + 4 * (*(a1 + 8) * v2++ * *(a1 + 8))), *(a1 + 8), *(a1 + 24));
    }

    while (*(a1 + 16) > v2);
  }
}

void mlx::core::tri_inv<float>(char *a1, int a2, int a3)
{
  v3 = a3;
  v15 = a2;
  if (a3)
  {
    v5 = 76;
  }

  else
  {
    v5 = 85;
  }

  v14 = v5;
  v13 = 78;
  v12 = 0;
  strtri_NEWLAPACK();
  if (v3)
  {
    if (v15 >= 1)
    {
      v6 = 0;
      v7 = 4 * v15;
      do
      {
        if (v6)
        {
          bzero(a1, v6);
        }

        v6 += 4;
        a1 += v7;
      }

      while (v7 != v6);
    }
  }

  else if (v15 >= 1)
  {
    v8 = 0;
    v9 = 4 * v15;
    v10 = a1 + 4;
    do
    {
      v11 = v9 + v8 - 4;
      if (v11 >= 1)
      {
        bzero(v10, v11);
      }

      v8 -= 4;
      v10 += 4 * v15 + 4;
    }

    while (v9 + v8);
  }
}

void sub_25A5A1A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A1B6C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFE420;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A1EC4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  *(v8 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIfEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE0_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFE518;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIfEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE0_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIfEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE0_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    do
    {
      mlx::core::general_inv<float>(*a1 + 4 * (*(a1 + 8) * v2++ * *(a1 + 8)), *(a1 + 8));
    }

    while (*(a1 + 16) > v2);
  }
}

void mlx::core::general_inv<float>(uint64_t a1, int a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = a2;
  v10[0] = &unk_286BE3468;
  v10[1] = mlx::core::allocator::free;
  v10[3] = v10;
  v11 = mlx::core::allocator::malloc((4 * a2));
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v12, v10);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v10);
  mlx::core::allocator::Buffer::raw_ptr(&v11);
  sgetrf_NEWLAPACK();
  v4 = 0;
  sgetri_NEWLAPACK();
  v3 = 0.0;
  v7[0] = &unk_286BE3468;
  v7[1] = mlx::core::allocator::free;
  v7[3] = v7;
  v8 = mlx::core::allocator::malloc((4 * 0.0));
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](&v9, v7);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v7);
  mlx::core::allocator::Buffer::raw_ptr(&v11);
  mlx::core::allocator::Buffer::raw_ptr(&v8);
  sgetri_NEWLAPACK();
  mlx::core::array::Data::~Data(&v8);
  mlx::core::array::Data::~Data(&v11);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_25A5A2518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
      mlx::core::array::Data::~Data((v19 - 152));
      mlx::core::array::Data::~Data((v19 - 80));
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A26A4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>(void *a1, __int128 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  *(v8 + 24) = 0;
  operator new();
}