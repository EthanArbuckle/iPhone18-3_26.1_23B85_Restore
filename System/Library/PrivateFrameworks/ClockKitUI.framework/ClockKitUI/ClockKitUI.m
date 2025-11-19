void sub_1E49CA00C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_1E49CA834(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E49CA854(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n64 _convertToRGBfFromSRGB8_fast(__int16 a1)
{
  result.n64_u32[0] = _CLKUIDecodeSRGBTable[a1];
  result.n64_u32[1] = _CLKUIDecodeSRGBTable[HIBYTE(a1)];
  return result;
}

double _convertToRGBfFromSRGBf_fast(double a1)
{
  LODWORD(v1) = _CLKUIDecodeSRGBTable[(255.0 * *&a1)];
  HIDWORD(v1) = _CLKUIDecodeSRGBTable[vmuls_lane_f32(255.0, *&a1, 1)];
  return v1;
}

double CLKUIConvertToRGBfFromXRSRGBf(float32x4_t a1)
{
  v1.i64[0] = 0x8000000080000000;
  v1.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v9 = vabsq_f32(a1);
  v10 = vbicq_s8(vorrq_s8(vandq_s8(a1, v1), _Q2), vceqzq_f32(a1));
  v7 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v9), vmulq_f32(v9, vdupq_n_s32(0x3D9E8391u)), _simd_pow_f4(vmlaq_f32(vdupq_n_s32(0x3D55891Au), v9, vdupq_n_s32(0x3F72A76Fu)), vdupq_n_s64(0x4019999A4019999AuLL)));
  v7.i32[3] = v9.i32[3];
  *&result = vmulq_f32(v7, v10).u64[0];
  return result;
}

double CLKUIConvertToXRSRGBfFromRGBf(float32x4_t a1)
{
  v1.i64[0] = 0x8000000080000000;
  v1.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v9 = vabsq_f32(a1);
  v10 = vbicq_s8(vorrq_s8(vandq_s8(a1, v1), _Q2), vceqzq_f32(a1));
  v7 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3B4D2C6Eu), v9), vmulq_f32(v9, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), _simd_pow_f4(v9, vdupq_n_s64(0x3ED555553ED55555uLL)), vdupq_n_s32(0x3F870A3Du)));
  v7.i32[3] = v9.i32[3];
  *&result = vmulq_f32(v7, v10).u64[0];
  return result;
}

__n64 CLKUIConvertToRGBfFromSRGBf_fast(float32x4_t a1)
{
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = vminnmq_f32(vmaxnmq_f32(a1, 0), _Q1).u64[0];
  result.n64_u32[0] = _CLKUIDecodeSRGBTable[(255.0 * _Q1.f32[0])];
  result.n64_u32[1] = _CLKUIDecodeSRGBTable[vmuls_lane_f32(255.0, *_Q1.f32, 1)];
  return result;
}

__n64 CLKUIConvertToSRGBfFromRGBf_fast(float32x4_t a1)
{
  __asm { FMOV            V1.4S, #1.0 }

  v6 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(a1, 0), _Q1), vdupq_n_s32(0x45CDF000u)).u64[0];
  result.n64_u32[0] = _CLKUIEncodeSRGBTable[*&v6];
  result.n64_u32[1] = _CLKUIEncodeSRGBTable[*(&v6 + 1)];
  return result;
}

uint64_t CLKUIConvertToSRGB8FromRGBf_fast(float32x4_t a1)
{
  v1 = vmulq_f32(a1, vdupq_n_s32(0x45CDF000u));
  v1.i32[0] = _CLKUIEncodeSRGBTable[v1.f32[0]];
  v1.i32[1] = _CLKUIEncodeSRGBTable[v1.f32[1]];
  v1.i32[2] = _CLKUIEncodeSRGBTable[v1.f32[2]];
  v1.i32[3] = a1.i32[3];
  v2 = vmulq_f32(v1, vdupq_n_s32(0x437F0000u));
  v3 = *v2.i32;
  v2.i32[0] = vextq_s8(v2, v2, 8uLL).i32[1];
  *v2.i8 = vshl_u32(vcvt_s32_f32(*v2.i8), 0x800000018);
  return v2.i32[0] | (*&v2.i32[2] << 16) | v3 | v2.i32[1];
}

__n64 CLKUIConvertToRGBfFromSRGB8_fast(__int16 a1)
{
  result.n64_u32[0] = _CLKUIDecodeSRGBTable[a1];
  result.n64_u32[1] = _CLKUIDecodeSRGBTable[HIBYTE(a1)];
  return result;
}

__n64 CLKUIConvertToRGBfFromUIColor_fast(void *a1)
{
  v7 = 0.0;
  v5 = 0;
  v6 = 0.0;
  v4 = 0;
  [a1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  v1 = v7;
  v2 = v6;
  result.n64_u32[0] = _CLKUIDecodeSRGBTable[(v1 * 255.0)];
  result.n64_u32[1] = _CLKUIDecodeSRGBTable[(v2 * 255.0)];
  return result;
}

int8x16_t CLKUIConvertToRGBfFromUIColor(void *a1)
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  [a1 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v1.f64[0] = v9;
  v2.f64[0] = v7;
  v1.f64[1] = v8;
  v2.f64[1] = v6;
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(v1), v2);
  v5 = vcvt_f32_f64(v2).i32[1];
  result = _simd_pow_f4(vmlaq_f32(vdupq_n_s32(0x3D55891Au), v4, vdupq_n_s32(0x3F72A76Fu)), vdupq_n_s64(0x4019999A4019999AuLL));
  result.i64[0] = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v4), vmulq_f32(v4, vdupq_n_s32(0x3D9E8391u)), result).u64[0];
  result.i32[3] = v5;
  return result;
}

uint64_t CLKUIConvertToUIColorFromRGBf(float32x4_t a1)
{
  v1 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3B4D2C6Eu), a1), vmulq_f32(a1, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), _simd_pow_f4(a1, vdupq_n_s64(0x3ED555553ED55555uLL)), vdupq_n_s32(0x3F870A3Du)));
  v2 = MEMORY[0x1E69DC888];

  return [v2 colorWithRed:*v1.i32 green:*&v1.i32[1] blue:*&v1.i32[2] alpha:a1.f32[3]];
}

int8x16_t CLKUIConvertToRGBfFromUIColor_dynamic(void *a1)
{
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  [a1 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
  v1 = v17;
  *result.i32 = v16;
  v3.f64[0] = v15;
  v3.f64[1] = v14;
  v4 = vcvt_f32_f64(v3);
  v5 = vcvt_hight_f32_f64(__PAIR64__(result.u32[0], LODWORD(v1)), v3);
  if ((vmaxvq_u32(vcltzq_f32(v5)) & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  __asm { FMOV            V2.4S, #1.0 }

  if ((vmaxvq_u32(vcgtq_f32(v5, _Q2)) & 0x80000000) != 0)
  {
LABEL_4:
    v12 = v5;
    v13 = v4.u32[1];
    result = _simd_pow_f4(vmlaq_f32(vdupq_n_s32(0x3D55891Au), v5, vdupq_n_s32(0x3F72A76Fu)), vdupq_n_s64(0x4019999A4019999AuLL));
    result.i64[0] = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v12), vmulq_f32(v12, vdupq_n_s32(0x3D9E8391u)), result).u64[0];
    result.i32[3] = v13;
  }

  else
  {
    v11 = &_CLKUIDecodeSRGBTable[(*result.i32 * 255.0)];
    result.i32[0] = _CLKUIDecodeSRGBTable[(v1 * 255.0)];
    result.i32[1] = *v11;
  }

  return result;
}

uint64_t CLKUIConvertToUIColorFromRGBf_dynamic(float32x4_t a1)
{
  v2 = a1;
  if ((vmaxvq_u32(vcltzq_f32(a1)) & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  __asm { FMOV            V0.4S, #1.0 }

  if ((vmaxvq_u32(vcgtq_f32(v2, _Q0)) & 0x80000000) != 0)
  {
LABEL_4:
    v13 = v2;
    v10 = _simd_pow_f4(v2, vdupq_n_s64(0x3ED555553ED55555uLL));
    v2.i32[3] = v13.i32[3];
    v9 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3B4D2C6Eu), v13), vmulq_f32(v13, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), v10, vdupq_n_s32(0x3F870A3Du)));
  }

  else
  {
    v8 = vmulq_f32(v2, vdupq_n_s32(0x45CDF000u));
    v9.i32[0] = _CLKUIEncodeSRGBTable[v8.f32[0]];
    v9.i32[1] = _CLKUIEncodeSRGBTable[v8.f32[1]];
    v9.i32[2] = _CLKUIEncodeSRGBTable[v8.f32[2]];
  }

  v11 = MEMORY[0x1E69DC888];

  return [v11 colorWithRed:*v9.i32 green:*&v9.i32[1] blue:*&v9.i32[2] alpha:v2.f32[3]];
}

uint64_t _CLKUIRawImageGenerateMipmapsSRGB8(uint64_t result, int a2)
{
  if (a2 >= 2)
  {
    v2 = a2;
    v3 = (result + 4 * v2 * v2);
    v4 = vdupq_n_s32(0x44CDF000u);
    __asm { FMOV            V2.4S, #0.25 }

    v10 = vdupq_n_s32(0x437F0000u);
    do
    {
      v11 = 0;
      v12 = v3;
      do
      {
        v13 = (result + 4 * v11 * v2);
        v14 = &v13[v2];
        do
        {
          v15 = &v13[v2];
          v16 = *v13;
          v17 = v13[1];
          v13 += 2;
          v18 = HIBYTE(v16);
          v19.i32[0] = _CLKUIDecodeSRGBTable[v16];
          v19.i32[1] = _CLKUIDecodeSRGBTable[BYTE1(v16)];
          v20.i32[0] = _CLKUIDecodeSRGBTable[v17];
          v20.i32[1] = _CLKUIDecodeSRGBTable[BYTE1(v17)];
          v19.i32[2] = _CLKUIDecodeSRGBTable[BYTE2(v16)];
          v20.i32[2] = _CLKUIDecodeSRGBTable[BYTE2(v17)];
          v21 = *v15;
          LODWORD(v15) = v15[1];
          v22.i32[0] = _CLKUIDecodeSRGBTable[v21];
          v22.i32[1] = _CLKUIDecodeSRGBTable[BYTE1(v21)];
          v22.i32[2] = _CLKUIDecodeSRGBTable[BYTE2(v21)];
          v19.f32[3] = v18 * 0.0039216;
          v20.f32[3] = HIBYTE(v17) * 0.0039216;
          v22.f32[3] = HIBYTE(v21) * 0.0039216;
          v23.i32[0] = _CLKUIDecodeSRGBTable[v15];
          v23.i32[1] = _CLKUIDecodeSRGBTable[BYTE1(v15)];
          v23.i32[2] = _CLKUIDecodeSRGBTable[BYTE2(v15)];
          v23.f32[3] = BYTE3(v15) * 0.0039216;
          v24 = vaddq_f32(vaddq_f32(v20, v19), vaddq_f32(v22, v23));
          v25 = vmulq_f32(v24, v4);
          v25.i32[0] = _CLKUIEncodeSRGBTable[v25.f32[0]];
          v25.i32[1] = _CLKUIEncodeSRGBTable[v25.f32[1]];
          v25.i32[2] = _CLKUIEncodeSRGBTable[v25.f32[2]];
          v25.i32[3] = vmulq_f32(v24, _Q2).i32[3];
          v26 = vmulq_f32(v25, v10);
          LODWORD(v15) = *v26.i32;
          v26.i32[0] = vextq_s8(v26, v26, 8uLL).i32[1];
          *v26.i8 = vshl_u32(vcvt_s32_f32(*v26.i8), 0x800000018);
          *v12++ = v26.i32[0] | (*&v26.i32[2] << 16) | v15 | v26.i32[1];
        }

        while (v13 < v14);
        v11 += 2;
      }

      while (v11 < v2);
      result += 4 * v2 * v2;
      v3 += (v2 >> 1) * (v2 >> 1);
      v27 = v2 > 3;
      v2 >>= 1;
    }

    while (v27);
  }

  return result;
}

uint64_t _CLKUIRawImageWriteToFileSRGB8(const void *a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = CGDataProviderCreateWithData(0, a1, 4 * a2 * a3, 0);
  v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v10 = CGImageCreate(a2, a3, 8uLL, 0x20uLL, 4 * a2, v9, 0, v8, 0, 0, kCGRenderingIntentDefault);
  v11 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v10];
  v12 = UIImagePNGRepresentation(v11);
  [v12 writeToFile:v7 atomically:1];
  CGImageRelease(v10);
  CGDataProviderRelease(v8);
  CGColorSpaceRelease(v9);

  return 1;
}

id CLKUIInterpolateBetweenColors(void *a1, void *a2, float a3)
{
  v4 = a1;
  v5 = a2;
  if (CLKEqualObjects())
  {
    v6 = v5;
  }

  else
  {
    v42 = 0.0;
    v43 = 0.0;
    v40 = 0.0;
    v41 = 0.0;
    [v4 getRed:&v43 green:&v42 blue:&v41 alpha:&v40];
    v7 = v43;
    *v8.i32 = v42;
    v9.f64[0] = v41;
    v9.f64[1] = v40;
    *&v10 = vcvt_f32_f64(v9);
    v11 = vcvt_hight_f32_f64(__PAIR64__(v8.u32[0], LODWORD(v7)), v9);
    __asm { FMOV            V3.4S, #1.0 }

    v35 = v10;
    v36 = _Q3;
    if ((vmaxvq_u32(vcltzq_f32(v11)) & 0x80000000) != 0 || (vmaxvq_u32(vcgtq_f32(v11, _Q3)) & 0x80000000) != 0)
    {
      v8 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v11), vmulq_f32(v11, vdupq_n_s32(0x3D9E8391u)), _simd_pow_f4(vmlaq_f32(vdupq_n_s32(0x3D55891Au), v11, vdupq_n_s32(0x3F72A76Fu)), vdupq_n_s64(0x4019999A4019999AuLL)));
    }

    else
    {
      v17 = &_CLKUIDecodeSRGBTable[(*v8.i32 * 255.0)];
      v8.i32[0] = _CLKUIDecodeSRGBTable[(v7 * 255.0)];
      v8.i32[1] = *v17;
      v8.i32[2] = _CLKUIDecodeSRGBTable[(255.0 * *&v10)];
    }

    v38 = v8;
    v42 = 0.0;
    v43 = 0.0;
    v40 = 0.0;
    v41 = 0.0;
    [v5 getRed:&v43 green:&v42 blue:&v41 alpha:&v40];
    v18 = v43;
    v19 = v42;
    v20.f64[0] = v41;
    v20.f64[1] = v40;
    *&v21 = vcvt_f32_f64(v20);
    v22 = vcvt_hight_f32_f64(__PAIR64__(LODWORD(v19), LODWORD(v18)), v20);
    if ((vmaxvq_u32(vcltzq_f32(v22)) & 0x80000000) != 0 || (vmaxvq_u32(vcgtq_f32(v22, v36)) & 0x80000000) != 0)
    {
      v33 = v22;
      v34 = v21;
      v25 = _simd_pow_f4(vmlaq_f32(vdupq_n_s32(0x3D55891Au), v22, vdupq_n_s32(0x3F72A76Fu)), vdupq_n_s64(0x4019999A4019999AuLL));
      *&v21 = v34;
      v24 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v33), vmulq_f32(v33, vdupq_n_s32(0x3D9E8391u)), v25);
    }

    else
    {
      v23 = &_CLKUIDecodeSRGBTable[(v19 * 255.0)];
      v24.i32[0] = _CLKUIDecodeSRGBTable[(v18 * 255.0)];
      v24.i32[1] = *v23;
      v24.i32[2] = _CLKUIDecodeSRGBTable[(255.0 * *&v21)];
    }

    v26 = v38;
    v26.i32[3] = DWORD1(v35);
    v24.i32[3] = DWORD1(v21);
    v27 = vmlaq_n_f32(v26, vsubq_f32(v24, v26), a3);
    if ((vmaxvq_u32(vcltzq_f32(v27)) & 0x80000000) != 0 || (vmaxvq_u32(vcgtq_f32(v27, v36)) & 0x80000000) != 0)
    {
      v39 = v27;
      v30 = _simd_pow_f4(v27, vdupq_n_s64(0x3ED555553ED55555uLL));
      v27.i32[3] = v39.i32[3];
      v29 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3B4D2C6Eu), v39), vmulq_f32(v39, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), v30, vdupq_n_s32(0x3F870A3Du)));
    }

    else
    {
      v28 = vmulq_f32(v27, vdupq_n_s32(0x45CDF000u));
      v29.i32[0] = _CLKUIEncodeSRGBTable[v28.f32[0]];
      v29.i32[1] = _CLKUIEncodeSRGBTable[v28.f32[1]];
      v29.i32[2] = _CLKUIEncodeSRGBTable[v28.f32[2]];
    }

    v6 = [MEMORY[0x1E69DC888] colorWithRed:*v29.i32 green:*&v29.i32[1] blue:*&v29.i32[2] alpha:{v27.f32[3], *&v21, *&v33, v34, v35}];
  }

  v31 = v6;

  return v31;
}

double _CLKUIRGB2LAB(float32x4_t a1)
{
  v1 = vmulq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1E4A034C0, *a1.f32, 1), xmmword_1E4A034B0, a1.f32[0]), xmmword_1E4A034D0, a1, 2), xmmword_1E4A034E0);
  v9 = v1;
  if (v1.f32[0] < 0.0088565)
  {
    v2 = (v1.f32[0] * 7.787) + 0.13793;
    v3 = v1.f32[1];
    if (v1.f32[1] >= 0.0088565)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = (v3 * 7.787) + 0.13793;
    v5 = v1.f32[2];
    if (v1.f32[2] < 0.0088565)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v6 = cbrtf(v1.f32[0]);
  v1.i32[2] = v9.i32[2];
  v2 = v6;
  v3 = v9.f32[1];
  if (v9.f32[1] < 0.0088565)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = cbrtf(v3);
  v5 = v9.f32[2];
  if (v9.f32[2] >= 0.0088565)
  {
LABEL_4:
    cbrtf(v5);
  }

LABEL_7:
  *&v7 = (v4 * 116.0) + -16.0;
  *(&v7 + 1) = (v2 - v4) * 500.0;
  return v7;
}

double _CLKUILAB2RGB(float32x4_t _Q0)
{
  _S2 = 990057071;
  _S3 = -1146890486;
  __asm { FMLA            S5, S2, V0.S[1] }

  *v8.i32 = (_D5.f32[0] * 0.12842) + -0.017713;
  _D5.f32[1] = (0.0086207 * _Q0.f32[0]) + 0.13793;
  __asm { FMLA            S1, S3, V0.S[2] }

  *&v8.i32[1] = 0.0011071 * _Q0.f32[0];
  *_Q0.f32 = vbsl_s8(vcgt_f32(vdup_n_s32(0x3E53DCB1u), _D5), v8, vmul_f32(vmul_f32(_D5, _D5), _D5));
  if (_S1 >= 0.2069)
  {
    v10 = (_S1 * _S1) * _S1;
  }

  else
  {
    v10 = (_S1 * 0.12842) + -0.017713;
  }

  _Q0.f32[2] = v10;
  v11 = vmulq_f32(_Q0, xmmword_1E4A034F0);
  *&result = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1E4A03510, *v11.f32, 1), xmmword_1E4A03500, v11.f32[0]), xmmword_1E4A03520, v11, 2).u64[0];
  return result;
}

double CLKUIConvertRGBtoLAB(float32x4_t a1)
{
  v1 = vmulq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1E4A034C0, *a1.f32, 1), xmmword_1E4A034B0, a1.f32[0]), xmmword_1E4A034D0, a1, 2), xmmword_1E4A034E0);
  v9 = v1;
  if (v1.f32[0] < 0.0088565)
  {
    v2 = (v1.f32[0] * 7.787) + 0.13793;
    v3 = v1.f32[1];
    if (v1.f32[1] >= 0.0088565)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = (v3 * 7.787) + 0.13793;
    v5 = v1.f32[2];
    if (v1.f32[2] < 0.0088565)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v6 = cbrtf(v1.f32[0]);
  v1.i32[2] = v9.i32[2];
  v2 = v6;
  v3 = v9.f32[1];
  if (v9.f32[1] < 0.0088565)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = cbrtf(v3);
  v5 = v9.f32[2];
  if (v9.f32[2] >= 0.0088565)
  {
LABEL_4:
    cbrtf(v5);
  }

LABEL_7:
  *&v7 = (v4 * 116.0) + -16.0;
  *(&v7 + 1) = (v2 - v4) * 500.0;
  return v7;
}

double CLKUIConvertLABtoRGB(__n128 _Q0, double a2, double a3, float32x4_t a4)
{
  _S2 = 990057071;
  _S3 = -1146890486;
  __asm { FMLA            S5, S2, V0.S[1] }

  *v11.i32 = (_D5.f32[0] * 0.12842) + -0.017713;
  _D5.f32[1] = (0.0086207 * _Q0.n128_f32[0]) + 0.13793;
  __asm { FMLA            S1, S3, V0.S[2] }

  *&v11.i32[1] = 0.0011071 * _Q0.n128_f32[0];
  *a4.f32 = vbsl_s8(vcgt_f32(vdup_n_s32(0x3E53DCB1u), _D5), v11, vmul_f32(vmul_f32(_D5, _D5), _D5));
  if (_S1 >= 0.2069)
  {
    v13 = (_S1 * _S1) * _S1;
  }

  else
  {
    v13 = (_S1 * 0.12842) + -0.017713;
  }

  a4.f32[2] = v13;
  v14 = vmulq_f32(a4, xmmword_1E4A034F0);
  *&result = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1E4A03510, *v14.f32, 1), xmmword_1E4A03500, v14.f32[0]), xmmword_1E4A03520, v14, 2).u64[0];
  return result;
}

float CLKUILightnessForColor(void *a1)
{
  v1 = a1;
  v19 = 0.0;
  v20 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  [v1 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];
  v2 = v20;
  v3 = v19;
  v4.f64[0] = v18;
  v4.f64[1] = v17;
  v5 = vcvt_hight_f32_f64(__PAIR64__(LODWORD(v3), LODWORD(v2)), v4);
  if ((vmaxvq_u32(vcltzq_f32(v5)) & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  __asm { FMOV            V3.4S, #1.0 }

  if ((vmaxvq_u32(vcgtq_f32(v5, _Q3)) & 0x80000000) != 0)
  {
LABEL_4:
    v4 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v5), vmulq_f32(v5, vdupq_n_s32(0x3D9E8391u)), _simd_pow_f4(vmlaq_f32(vdupq_n_s32(0x3D55891Au), v5, vdupq_n_s32(0x3F72A76Fu)), vdupq_n_s64(0x4019999A4019999AuLL)));
  }

  else
  {
    v11 = &_CLKUIDecodeSRGBTable[(255.0 * vcvt_f32_f64(v4).f32[0])];
    LODWORD(v4.f64[0]) = _CLKUIDecodeSRGBTable[(v2 * 255.0)];
    HIDWORD(v4.f64[0]) = _CLKUIDecodeSRGBTable[(v3 * 255.0)];
    LODWORD(v4.f64[1]) = *v11;
  }

  v12 = vmul_f32(*&vextq_s8(v4, v4, 4uLL), 0x3D93DDDB3F371567);
  v13 = (v12.f32[0] + (0.21259 * *v4.f64)) + v12.f32[1];
  if (v13 >= 0.0088565)
  {
    v14 = cbrtf(v13);
  }

  else
  {
    v14 = (v13 * 7.787) + 0.13793;
  }

  v15 = (v14 * 116.0) + -16.0;

  return v15;
}

uint64_t CLKUICompareColorsByLightness(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = CLKUILightnessForColor(v3);
    v7 = CLKUILightnessForColor(v4);
    if (v6 >= v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (v6 > v7)
    {
      v5 = 1;
    }

    else
    {
      v5 = v8;
    }
  }

  return v5;
}

id CLKGetBytesFromImage(void *a1, size_t a2, size_t a3, uint64_t a4, size_t a5, CGColorSpace *a6, uint32_t a7)
{
  v13 = [a1 CGImage];
  v14 = a4 * a2;
  v15 = malloc_type_calloc(v14 * a3, 1uLL, 0x100004077774924uLL);
  v16 = CGBitmapContextCreate(v15, a2, a3, a5, v14, a6, a7);
  v20.size.width = a2;
  v20.size.height = a3;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  CGContextDrawImage(v16, v20, v13);
  CGContextRelease(v16);
  v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:v14 * a3];
  free(v15);

  return v17;
}

id CLKCreateImageFromBytes(UInt8 *bytes, size_t a2, size_t a3, uint64_t a4, size_t a5, CGColorSpace *a6, CGBitmapInfo a7)
{
  v13 = a4 * a2;
  v14 = CFDataCreate(0, bytes, a4 * a2 * a3);
  v15 = CGDataProviderCreateWithCFData(v14);
  v16 = CGImageCreate(a2, a3, a5, a5 * a4, v13, a6, a7, v15, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v15);
  CFRelease(v14);
  v17 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v16];
  CGImageRelease(v16);

  return v17;
}

unint64_t _CLKClamp(uint64_t a1, unint64_t a2)
{
  if (a1 <= a2)
  {
    return a1 & ~(a1 >> 63);
  }

  else
  {
    return a2;
  }
}

double _CLKPixelAtPosition(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint8x8_t a6)
{
  v6 = a2 - 1;
  if (a2 - 1 >= a4)
  {
    v6 = a4 & ~(a4 >> 63);
  }

  v7 = a3 - 1;
  if (a3 - 1 >= a5)
  {
    v7 = a5 & ~(a5 >> 63);
  }

  a6.i32[0] = *&a1[4 * v6 + 4 * v7 * a2];
  *&result = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a6))).u64[0];
  return result;
}

double _CLKIntensityForPixelAtPosition(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8)
{
  v8 = a2 - 1;
  if (a2 - 1 >= a4)
  {
    v8 = a4 & ~(a4 >> 63);
  }

  v9 = a3 - 1;
  if (a3 - 1 >= a5)
  {
    v9 = a5 & ~(a5 >> 63);
  }

  v10 = &a1[4 * v8 + 4 * v9 * a2];
  LOBYTE(a6) = *v10;
  LOBYTE(a7) = v10[1];
  LOBYTE(a8) = v10[2];
  return ((LODWORD(a7) + LODWORD(a6)) + LODWORD(a8)) * 0.333333333;
}

double _CLKCalculateNormal(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v16 = a5 - 1;
  v17 = a2 - 1;
  if (a2 - 1 >= (a4 - 1))
  {
    v18 = (a4 - 1) & ~((a4 - 1) >> 63);
  }

  else
  {
    v18 = a2 - 1;
  }

  v19 = a3 - 1;
  v20 = v16 & ~(v16 >> 63);
  if (a3 - 1 < v16)
  {
    v20 = a3 - 1;
  }

  v21 = v20 * a2;
  v22 = &a1[4 * v21 + 4 * v18];
  LOBYTE(a6) = *v22;
  LOBYTE(a7) = v22[1];
  LOBYTE(a8) = v22[2];
  v23 = LODWORD(a8);
  v24 = ((LODWORD(a7) + LODWORD(a6)) + v23);
  v25 = 1431655765;
  v26 = v24 * -0.333333333;
  v27 = a5 & ~(a5 >> 63);
  if (v19 < a5)
  {
    v27 = a3 - 1;
  }

  v28 = v27 * a2;
  v29 = &a1[4 * v28 + 4 * v18];
  LOBYTE(v25) = *v29;
  LOBYTE(v23) = v29[1];
  v30 = LODWORD(v23);
  LOBYTE(a9) = v29[2];
  v31 = LODWORD(a9);
  v32 = ((v30 + v25) + v31);
  if (v19 >= a5 + 1)
  {
    v19 = (a5 + 1) & ~((a5 + 1) >> 63);
  }

  v33 = v19 * a2;
  v34 = &a1[4 * v33 + 4 * v18];
  LOBYTE(v30) = *v34;
  LOBYTE(v31) = v34[1];
  LOBYTE(a10) = v34[2];
  v35 = LODWORD(a10);
  v36 = ((LODWORD(v31) + LODWORD(v30)) + v35) * 0.333333333;
  v37 = a4 & ~(a4 >> 63);
  if (v17 < a4)
  {
    v37 = a2 - 1;
  }

  v38 = &a1[4 * v21 + 4 * v37];
  LOBYTE(v35) = *v38;
  LOBYTE(a11) = v38[1];
  *&v39 = LODWORD(a11);
  LOBYTE(a12) = v38[2];
  *&v40 = LODWORD(a12);
  v41 = ((*&v39 + LODWORD(v35)) + *&v40);
  v42 = &a1[4 * v33 + 4 * v37];
  LOBYTE(v39) = *v42;
  LOBYTE(v40) = v42[1];
  v43 = v40;
  LOBYTE(a13) = v42[2];
  v44 = LODWORD(a13);
  v45 = ((v43 + v39) + v44);
  if (v17 >= a4 + 1)
  {
    v17 = (a4 + 1) & ~((a4 + 1) >> 63);
  }

  v46 = &a1[4 * v21 + 4 * v17];
  LOBYTE(v43) = *v46;
  LOBYTE(v44) = v46[1];
  *&v47 = LODWORD(v44);
  LOBYTE(v13) = v46[2];
  *&v48 = v13;
  v49 = ((*&v47 + LODWORD(v43)) + *&v48) * 0.333333333;
  v50 = &a1[4 * v28 + 4 * v17];
  LOBYTE(v47) = *v50;
  LOBYTE(v48) = v50[1];
  *&v51 = v48;
  LOBYTE(v14) = v50[2];
  *&v52 = v14;
  v53 = ((*&v51 + v47) + *&v52);
  v54 = &a1[4 * v33 + 4 * v17];
  LOBYTE(v51) = *v54;
  LOBYTE(v52) = v54[1];
  LOBYTE(v15) = v54[2];
  v55 = ((v52 + v51) + v15) * 0.333333333;
  *&v56 = v26 - v36 + v49 + (v53 - v32) * 0.666666667 + v55;
  *&v57 = v36 + v26 + (v45 - v41) * 0.666666667 - v49 + v55;
  v58.i64[1] = 0x3F0000003F000000;
  v58.i64[0] = __PAIR64__(v57, v56);
  v59 = vmulq_f32(v58, v58);
  *&v60 = vaddv_f32(*v59.f32) + v59.f32[2];
  *v59.f32 = vrsqrte_f32(v60);
  *&result = vmulq_n_f32(v58, vmul_f32(vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32)), *v59.f32).f32[0]).u64[0];
  return result;
}

char *_CLKGenerateNormalMap(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = malloc_type_malloc(a3 * a2 * a4, 0x100004077774924uLL);
  if (a2 && a3)
  {
    v18 = 0;
    v19 = a2 - 1;
    v20 = a3 - 1;
    v21 = -a3;
    v22 = result + 3;
    v23 = a1 + 2;
    v24 = 4 * a2;
    v25 = 1;
    do
    {
      if (v25 >= v19)
      {
        v26 = a2 - 1;
      }

      else
      {
        v26 = v25;
      }

      v27 = &v23[4 * v26];
      v28 = (v18 - 1) & ~((v18 - 1) >> 63);
      if (v19 < v18 - 1)
      {
        v28 = a2 - 1;
      }

      v29 = v18 + 1;
      if (v19 >= v18 + 1)
      {
        v30 = v18 + 1;
      }

      else
      {
        v30 = a2 - 1;
      }

      v31 = &v23[4 * v28];
      v32 = v22;
      v33 = 1;
      do
      {
        if (v20 >= v33 - 2)
        {
          v34 = (v33 - 2) & ~((v33 - 2) >> 63);
        }

        else
        {
          v34 = v20;
        }

        v35 = v34 * a2;
        v36 = &a1[4 * v35 + 4 * v28];
        LOBYTE(v9) = *v36;
        LOBYTE(v10) = v36[1];
        LOBYTE(v11) = v36[2];
        v12.i8[0] = *(v31 - 2);
        v37 = LODWORD(v9);
        v38 = v12.u32[0];
        v12.i8[0] = *(v31 - 1);
        v12.f32[0] = v12.u32[0];
        LOBYTE(v13) = *v31;
        *&v13 = LODWORD(v13);
        *&v10 = LODWORD(v10);
        v39 = ((v12.f32[0] + v38) + *&v13);
        if (v20 >= v33)
        {
          v40 = v33;
        }

        else
        {
          v40 = v20;
        }

        *&v41 = LODWORD(v11);
        v42 = v40 * a2;
        v43 = &a1[4 * v42 + 4 * v28];
        v12.i8[0] = *v43;
        v44 = *&v10 + v37;
        LOBYTE(v37) = v43[1];
        *&v45 = LODWORD(v37);
        LOBYTE(v13) = v43[2];
        *&v46 = LODWORD(v13);
        v47 = *&v45 + v12.u32[0];
        v48 = &a1[4 * v35 + 4 * v18];
        LOBYTE(v45) = *v48;
        LOBYTE(v14) = v48[1];
        *&v49 = LODWORD(v14);
        v50 = v44 + *&v41;
        LOBYTE(v41) = v48[2];
        *&v51 = *&v49 + v45;
        v52 = *&v51 + v41;
        v53 = v47 + *&v46;
        v54 = &a1[4 * v42 + 4 * v18];
        LOBYTE(v51) = *v54;
        LOBYTE(v46) = v54[1];
        *&v55 = v46;
        LOBYTE(v49) = v54[2];
        *&v56 = v49;
        v57 = (*&v55 + v51) + *&v56;
        v58 = &a1[4 * v35 + 4 * v30];
        LOBYTE(v55) = *v58;
        LOBYTE(v56) = v58[1];
        *&v59 = v56;
        LOBYTE(v15) = v58[2];
        *&v60 = LODWORD(v15);
        v61 = ((*&v59 + v55) + *&v60);
        v62 = v50 * -0.333333333;
        LOBYTE(v59) = *(v27 - 2);
        LOBYTE(v60) = *(v27 - 1);
        *&v63 = v60;
        LOBYTE(v16) = *v27;
        v64 = v53 * 0.333333333;
        *&v65 = LODWORD(v16);
        v66 = ((*&v63 + v59) + *&v65);
        v67 = &a1[4 * v42 + 4 * v30];
        LOBYTE(v63) = *v67;
        LOBYTE(v65) = v67[1];
        v16 = v65;
        v13 = v61 * 0.333333333;
        LOBYTE(v17) = v67[2];
        v17 = LODWORD(v17);
        v15 = ((v16 + v63) + v17) * 0.333333333;
        v68 = v66 - v39;
        v14 = v62 - v64 + v13;
        *&v68 = v14 + v68 * 0.666666667 + v15;
        *&v62 = v64 + v62 + (v57 - v52) * 0.666666667 - v13 + v15;
        v69.i64[1] = 0x3F0000003F000000;
        v69.i64[0] = __PAIR64__(LODWORD(v62), LODWORD(v68));
        v70 = vmulq_f32(v69, v69);
        *&v62 = vaddv_f32(*v70.f32) + v70.f32[2];
        *v70.f32 = vrsqrte_f32(LODWORD(v62));
        v12 = vmul_f32(*v70.f32, *v70.f32);
        v71 = vmulq_n_f32(v69, vmul_f32(vrsqrts_f32(LODWORD(v62), v12), *v70.f32).f32[0]);
        v11 = v71.f32[1];
        v10 = v71.f32[1] * 127.5 + 127.5;
        *(v32 - 3) = (v71.f32[0] * 127.5 + 127.5);
        v9 = v71.f32[2] * 127.5 + 127.5;
        ++v33;
        *(v32 - 2) = v10;
        *(v32 - 1) = v9;
        *v32 = 1;
        v32 += a4 * a2;
        v31 += v24;
        v27 += v24;
      }

      while (v21 + v33 != 1);
      v22 += a4;
      ++v25;
      ++v18;
    }

    while (v29 != a2);
  }

  return result;
}

id CLKGenerateNormalMapFromImageInRGBA8(void *a1)
{
  v1 = a1;
  v2 = [v1 CGImage];
  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v6 = [v1 CGImage];
  v7 = Height * 4 * Width;
  v8 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
  v9 = CGBitmapContextCreate(v8, Width, Height, 8uLL, 4 * Width, v5, 0x4001u);
  v15.size.width = Width;
  v15.size.height = Height;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  CGContextDrawImage(v9, v15, v6);
  CGContextRelease(v9);
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:v7];
  free(v8);
  CGColorSpaceRelease(v5);
  v11 = _CLKGenerateNormalMap([v10 bytes], Width, Height, 4);
  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:v7];
  free(v11);

  return v12;
}

id CLKUIConvertUIImageToMTLTexture(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[CLKUIMetalResourceManager sharedDevice];
  v5 = [v3 CGImage];
  Width = CGImageGetWidth(v5);
  Height = CGImageGetHeight(v5);
  BytesPerRow = CGImageGetBytesPerRow(v5);
  BitsPerPixel = CGImageGetBitsPerPixel(v5);
  if ((BitsPerPixel & 7) != 0)
  {
    __assert_rtn("CLKUIConvertUIImageToMTLTexture", "CLKUIImageUtilities.mm", 1301, "bitsPerPixel % 8 == 0");
  }

  v10 = BitsPerPixel >> 3;
  v11 = (BitsPerPixel >> 3) * Width;
  v24 = v4;
  v12 = [v4 newBufferWithLength:v11 * Height options:0];
  DataProvider = CGImageGetDataProvider(v5);
  v14 = CGDataProviderCopyData(DataProvider);
  v15 = v14;
  if (v14)
  {
    BytePtr = CFDataGetBytePtr(v14);
    v17 = [v12 contents];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CLKUIConvertUIImageToMTLTexture_block_invoke;
    block[3] = &__block_descriptor_72_e8_v16__0Q8l;
    block[4] = BytePtr;
    block[5] = Height;
    block[6] = BytesPerRow;
    block[7] = v17;
    block[8] = v11;
    dispatch_apply(Height, 0, block);
    CFRelease(v15);
    v18 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a2 width:Width height:Height mipmapped:0];
    [v18 setStorageMode:2];
    [v18 setUsage:1];
    v19 = [v24 newTextureWithDescriptor:v18];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __CLKUIConvertUIImageToMTLTexture_block_invoke_2;
    aBlock[3] = &unk_1E8762678;
    v28 = Width;
    v29 = v10;
    v30 = Height;
    v26 = v12;
    v27 = v19;
    v20 = v19;
    v21 = _Block_copy(aBlock);
    v22 = _Block_copy(v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void *__CLKUIConvertUIImageToMTLTexture_block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 blitCommandEncoder];
  v4 = a1[7] * a1[6];
  v5 = a1[8];
  v12[0] = a1[6];
  v12[1] = v5;
  v12[2] = 1;
  v6 = a1[4];
  v7 = a1[5];
  memset(v11, 0, sizeof(v11));
  [v3 copyFromBuffer:v6 sourceOffset:0 sourceBytesPerRow:v4 sourceBytesPerImage:v4 * v5 sourceSize:v12 toTexture:v7 destinationSlice:0 destinationLevel:0 destinationOrigin:v11];
  [v3 endEncoding];
  v8 = a1[5];
  v9 = v8;

  return v8;
}

id CLKUIConvertMTLTextureToUIImage(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v7 = 1397;
  if (a2 <= 552)
  {
    if (a2 == 80)
    {
      v8 = MEMORY[0x1E695F138];
      goto LABEL_14;
    }

    if (a2 == 81)
    {
      v8 = MEMORY[0x1E695F1C0];
LABEL_14:
      v10 = CGColorSpaceCreateWithName(*v8);
      v11 = 8194;
      v12 = 8;
      goto LABEL_15;
    }

LABEL_20:
    __assert_rtn("CLKUIConvertMTLTextureToUIImage", "CLKUIImageUtilities.mm", v7, "NO");
  }

  if (a2 != 553 && a2 != 555)
  {
    goto LABEL_20;
  }

  if ([v5 pixelFormat] != 555)
  {
    if ([v6 pixelFormat] == 71)
    {
      v8 = MEMORY[0x1E695F0B8];
      goto LABEL_14;
    }

    v7 = 1392;
    goto LABEL_20;
  }

  v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  v11 = 270336;
  v12 = 10;
LABEL_15:
  v13 = [v6 width];
  v14 = [v6 height];
  v15 = (v14 * trunc(v13 * 4.0));
  v16 = malloc_type_malloc(v15, 0xCE956E24uLL);
  v17 = vcvtd_n_u64_f64(v13, 2uLL);
  memset(v21, 0, 24);
  v21[3] = v13;
  v21[4] = v14;
  v21[5] = 1;
  [v6 getBytes:v16 bytesPerRow:v17 fromRegion:v21 mipmapLevel:0];
  v18 = CGDataProviderCreateWithData(0, v16, v15, frameBufferReleaseCallback);
  v19 = CGImageCreate(v13, v14, v12, 0x20uLL, v17, v10, v11, v18, 0, 1, kCGRenderingIntentDefault);
  v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v19 scale:0 orientation:a3];
  CGImageRelease(v19);
  CGColorSpaceRelease(v10);
  CGDataProviderRelease(v18);
LABEL_16:

  return v9;
}

id CLKUIShadowImage(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      [v13 CGSizeValue];
    }

    else
    {
      [v11 size];
    }

    v18 = v15;
    v19 = v16;
    v17 = 0;
    if (v15 >= 1.0 && v16 >= 1.0)
    {
      [v11 scale];
      v21 = v20;
      v22 = [v11 CGImage];
      v23 = [v12 CGColor];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      BitsPerComponent = CGImageGetBitsPerComponent(v22);
      v26 = CGBitmapContextCreate(0, (v21 * (v18 + a4 + a6 + a4 + a6)), (v21 * (v19 + a5 + a6 + a5 + a6)), BitsPerComponent, 0, DeviceRGB, 1u);
      CGColorSpaceRelease(DeviceRGB);
      v30.width = v21 * a4;
      v30.height = v21 * a5;
      CGContextSetShadowWithColor(v26, v30, v21 * a6, v23);
      CGContextSetFillColorWithColor(v26, v23);
      CGContextSetBlendMode(v26, kCGBlendModeColor);
      v31.origin.x = v21 * (a4 + a6);
      v31.origin.y = v21 * (a5 + a6);
      v31.size.width = v21 * v18;
      v31.size.height = v21 * v19;
      CGContextDrawImage(v26, v31, v22);
      Image = CGBitmapContextCreateImage(v26);
      CGContextRelease(v26);
      v17 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:objc_msgSend(v11 orientation:{"imageOrientation"), v21}];
      CGImageRelease(Image);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id CLKUIShadowImageFromView(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (!v11)
  {
    v21 = 0;
    goto LABEL_14;
  }

  v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v15 = [v11 image];
  v16 = [v14 initWithImage:v15];

  if (v13)
  {
    [v13 CGSizeValue];
    v18 = v17;
    v20 = v19;
    v21 = 0;
    v22 = 1.0;
    if (v18 < 1.0)
    {
      goto LABEL_13;
    }

LABEL_7:
    if (v20 >= v22)
    {
      v25 = [v16 image];
      [v25 scale];
      v27 = v26;

      v28 = [v16 layer];
      LODWORD(v29) = 1.0;
      [v28 setShadowOpacity:v29];
      v30 = v27 * a6;
      [v28 setShadowRadius:v27 * a6];
      v31 = v12;
      if (!v12)
      {
        v31 = [MEMORY[0x1E69DC888] blackColor];
      }

      [v28 setShadowColor:{objc_msgSend(v31, "CGColor")}];
      v32 = v27 * (v18 + a4 + a6 + a4 + a6);
      if (!v12)
      {
      }

      [v28 setShadowOffset:{-v32, 0.0}];
      [v16 setFrame:{a4, a5, v18, v20}];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v34 = v27 * (v20 + a5 + a6 + a5 + a6);
      v35 = CGBitmapContextCreate(0, v32, v34, 8uLL, 0, DeviceRGB, 1u);
      CGColorSpaceRelease(DeviceRGB);
      CGContextTranslateCTM(v35, v32 + v30, v34 - v30);
      CGContextScaleCTM(v35, v27, -v27);
      [v28 renderInContext:v35];
      Image = CGBitmapContextCreateImage(v35);
      CGContextRelease(v35);
      v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:v27];
      CGImageRelease(Image);
    }

    goto LABEL_13;
  }

  [v11 frame];
  v18 = v23;
  v20 = v24;
  v21 = 0;
  v22 = 1.0;
  if (v23 >= 1.0)
  {
    goto LABEL_7;
  }

LABEL_13:

LABEL_14:

  return v21;
}

void sub_1E49CD62C()
{
  if (!v0)
  {
  }

  JUMPOUT(0x1E49CD678);
}

__CFString *CLKUIMetalElapsedTimeCategoryDescription(uint64_t a1)
{
  v1 = @"Binary Archive";
  if (a1 == 1)
  {
    v1 = @"Render Pipeline";
  }

  if (a1 == 2)
  {
    return @"Function";
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1E49D183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id filterNamesToIndicesMap()
{
  if (filterNamesToIndicesMap_onceToken != -1)
  {
    filterNamesToIndicesMap_cold_1();
  }

  v1 = filterNamesToIndicesMap_namesToIndices;

  return v1;
}

void __filterNamesToIndicesMap_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"CLKUITritiumViewFilterTypeBrightnessName";
  v2[1] = @"CLKUITritiumViewFilterTypeSaturationName";
  v3[0] = &unk_1F5E96C00;
  v3[1] = &unk_1F5E96C18;
  v2[2] = @"CLKUIViewFilterTypeNameTritiumTapThrough";
  v3[2] = &unk_1F5E96C30;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = filterNamesToIndicesMap_namesToIndices;
  filterNamesToIndicesMap_namesToIndices = v0;
}

float CLKUITritiumMaxAPL()
{
  if (qword_1ECF8D4C0 == -1)
  {
    v0 = 0x1ECF8C000uLL;
    if (_MergedGlobals)
    {
      return *(v0 + 3424);
    }
  }

  else
  {
    CLKUITritiumMaxAPL_cold_1();
    v0 = 0x1ECF8C000;
    if (_MergedGlobals)
    {
      return *(v0 + 3424);
    }
  }

  _MergedGlobals = 1;
  v1 = [MEMORY[0x1E695B4F8] currentDevice];
  v2 = [v1 deviceCategory];

  if (v2 <= 6)
  {
    *(v0 + 3424) = dword_1E4A0A508[v2];
  }

  v3 = CFPreferencesCopyAppValue(@"NTKMaxTritiumFaceAPL", @"com.apple.NanoTimeKit");
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = fmin(fmax(v5 * 0.01, 0.0), 1.0);
    *(v0 + 3424) = v6;
  }

  return *(v0 + 3424);
}

uint64_t __CLKUITritiumMaxAPL_block_invoke()
{
  v0 = [@"com.apple.NanoTimeKit.MaxAPLChanged" UTF8String];
  v1 = MEMORY[0x1E69E96A0];

  return notify_register_dispatch(v0, &CLKUITritiumMaxAPL_notifyToken, v1, &__block_literal_global_4);
}

double _linearizeAndComputeAPL(uint64_t a1, vDSP_Length a2)
{
  if (!a1)
  {
    v13 = _CLKUILoggingObjectForDomain(1, "CLKUILoggingDomainTritium");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      _linearizeAndComputeAPL_cold_2();
    }

    goto LABEL_11;
  }

  v4 = malloc_type_malloc(12 * a2, 0x100004052888210uLL);
  if (!v4)
  {
    v13 = _CLKUILoggingObjectForDomain(1, "CLKUILoggingDomainTritium");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      _linearizeAndComputeAPL_cold_1();
    }

LABEL_11:

    return 0.0;
  }

  v5 = &v4[a2];
  if (a2)
  {
    v6 = (a1 + 2);
    v7 = a2;
    v8 = v4;
    do
    {
      *v8 = _NTKAPLGammaTable[*(v6 - 2)];
      v8[a2] = _NTKAPLGammaTable[*(v6 - 1)];
      v9 = *v6;
      v6 += 4;
      v8[2 * a2] = _NTKAPLGammaTable[v9];
      ++v8;
      --v7;
    }

    while (v7);
  }

  __C = 0;
  v14 = 0.0;
  v10 = v4;
  vDSP_meanv(v4, 1, &__C + 1, a2);
  vDSP_meanv(v5, 1, &__C, a2);
  vDSP_meanv(&v10[2 * a2], 1, &v14, a2);
  free(v10);
  v11.i64[0] = __PAIR64__(__C, HIDWORD(__C));
  v11.f32[2] = v14;
  *&result = CLKUIConvertP3ToAPL(v11);
  return result;
}

CGContext *CreateDrawImageToBitmap(void *a1)
{
  v1 = a1;
  [v1 size];
  v4 = v2 * v3;
  v5 = 1.0;
  if (v2 * v3 > 64000000.0)
  {
    v5 = 2.0;
  }

  if (v4 > 16000000.0)
  {
    v5 = v5 + v5;
  }

  if (v4 > 4000000.0)
  {
    v5 = v5 + v5;
  }

  if (v4 <= 1000000.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + v5;
  }

  v7 = v2 / v6;
  if (v2 / v6 == 0.0 || (v8 = v3 / v6, v3 / v6 == 0.0))
  {
    v12 = _CLKUILoggingObjectForDomain(1, "CLKUILoggingDomainTritium");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1E49C8000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to compute apl of image with 0 size.", v14, 2u);
    }

    v10 = 0;
  }

  else
  {
    v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v10 = CGBitmapContextCreate(0, v7, v8, 8uLL, 0, v9, 1u);
    CGContextSetInterpolationQuality(v10, kCGInterpolationNone);
    v11 = [v1 CGImage];
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = v7;
    v15.size.height = v8;
    CGContextDrawImage(v10, v15, v11);
    CGColorSpaceRelease(v9);
  }

  return v10;
}

float CLKUIComputeImageAPL(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  v3 = 0.0;
  if (v1)
  {
    DrawImageToBitmap = CreateDrawImageToBitmap(v1);
    if (DrawImageToBitmap)
    {
      v5 = DrawImageToBitmap;
      Width = CGBitmapContextGetWidth(DrawImageToBitmap);
      Height = CGBitmapContextGetHeight(v5);
      Data = CGBitmapContextGetData(v5);
      if (Data)
      {
        v9 = _linearizeAndComputeAPL(Data, (Height * Width));
        v3 = *&v9;
      }

      else
      {
        v12 = _CLKUILoggingObjectForDomain(1, "CLKUILoggingDomainTritium");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          CLKUIComputeImageAPL_cold_1();
        }
      }

      CGContextRelease(v5);
    }

    else
    {
      v10 = _CLKUILoggingObjectForDomain(1, "CLKUILoggingDomainTritium");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v2 description];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_1E49C8000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create bitmap context for APL computation of image %@", &v14, 0xCu);
      }
    }
  }

  return v3;
}

void CLKUIComputeDimmingRequiredToObtainImageAPLUnclamped(void *a1, float a2, float a3)
{
  v5 = CLKUIComputeImageAPL(a1);
  v6 = CLKUITritiumMaxAPL();
  powf(fmaxf(v6 - a2, 0.0) / (v5 * a3), 0.45455);
}

float CLKUIComputeDimmingRequiredToObtainImageAPL(void *a1, float a2, float a3)
{
  v5 = CLKUIComputeImageAPL(a1);
  v6 = CLKUITritiumMaxAPL();
  return fmin(powf(fmaxf(v6 - a2, 0.0) / (v5 * a3), 0.45455), 1.0);
}

float CLKUIComputeDimmingRequiredToObtainImageAPLClamped(void *a1, float a2)
{
  v2 = a2 + -0.082;
  v3 = CLKUIComputeImageAPL(a1);
  v4 = CLKUITritiumMaxAPL();
  return fmin(powf(fmaxf(v4 + v2, 0.0) / v3, 0.45455), 1.0);
}

void CLKUIComputeDimmingRequiredToObtainQuadAPLUnclamped(void *a1, float a2, float a3)
{
  [a1 computeAPL];
  v6 = v5;
  v7 = CLKUITritiumMaxAPL();
  powf(fmaxf(v7 - a2, 0.0) / (v6 * a3), 0.45455);
}

float CLKUIComputeDimmingRequiredToObtainQuadAPL(void *a1, float a2, float a3)
{
  [a1 computeAPL];
  v6 = v5;
  v7 = CLKUITritiumMaxAPL();
  return fmin(powf(fmaxf(v7 - a2, 0.0) / (v6 * a3), 0.45455), 1.0);
}

id _CLKUIComputeTextureAPL(void *a1, void *a2, id *a3)
{
  v6 = a2;
  v7 = a1;
  v8 = +[CLKUIMetalResourceManager sharedDevice];
  v9 = [v8 supportsFamily:1004];
  if (!*a3)
  {
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v30 = 0;
    v11 = [v8 newDefaultLibraryWithBundle:v10 error:&v30];
    v12 = v30;

    v13 = [v11 newFunctionWithName:@"compute_apl"];
    v29 = v12;
    v3 = [v8 newComputePipelineStateWithFunction:v13 error:&v29];
    v14 = v29;

    v15 = v3;
    *a3 = v3;
  }

  v16 = [v8 newBufferWithLength:12 options:1];
  v17 = [v6 computeCommandEncoder];

  [v17 setComputePipelineState:*a3];
  [v17 setBuffer:v16 offset:0 atIndex:2];
  [v17 setBuffer:v16 offset:4 atIndex:3];
  [v17 setBuffer:v16 offset:8 atIndex:4];
  [v17 setTexture:v7 atIndex:0];
  v18 = [*a3 threadExecutionWidth];
  v19 = [*a3 maxTotalThreadsPerThreadgroup] / v18;
  LODWORD(v3) = vcvtpd_u64_f64([v7 width] * 0.166666667);
  v20 = [v7 height];

  LODWORD(v21) = vcvtpd_u64_f64(v20 * 0.166666667);
  if (v9)
  {
    v26 = v3;
    v27 = v21;
    v28 = 1;
    v23 = v18;
    v24 = v19;
    v25 = 1;
    [v17 dispatchThreads:&v26 threadsPerThreadgroup:&v23];
  }

  else
  {
    v26 = (v3 + v18 - 1) / v18;
    v27 = (v19 + v21 - 1) / v19;
    v28 = 1;
    v23 = v18;
    v24 = v19;
    v25 = 1;
    [v17 dispatchThreadgroups:&v26 threadsPerThreadgroup:&v23];
  }

  [v17 endEncoding];

  return v16;
}

float CLKUIGetAPLFromSumBuffer(void *a1, uint64_t a2, uint64_t a3)
{
  *&v8 = (a3 * a2) * 255.0;
  v3 = [a1 contents];
  v4.i64[0] = *v3;
  v4.i64[1] = HIDWORD(*v3);
  v5 = vdupq_lane_s64(v8, 0);
  v6 = vdivq_f64(vcvtq_f64_u64(v4), v5);
  *v6.f32 = vcvt_f32_f64(v6);
  LODWORD(v5.f64[0]) = *(v3 + 8);
  *v5.f64 = *&v5.f64[0] / *&v8;
  v6.i32[2] = LODWORD(v5.f64[0]);

  return CLKUIConvertSRGBToAPL(v6);
}

id CLKUIComputeTextureAPL(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = _CLKUIComputeTextureAPL(v5, a2, a3);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __CLKUIComputeTextureAPL_block_invoke;
  v12[3] = &unk_1E87627B0;
  v13 = v6;
  v14 = v5;
  v7 = v5;
  v8 = v6;
  v9 = _Block_copy(v12);
  v10 = _Block_copy(v9);

  return v10;
}

float __CLKUIComputeTextureAPL_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) width];
  *&v9 = ([*(a1 + 40) height] * v3) * 255.0;
  v4 = [v2 contents];
  v5.i64[0] = *v4;
  v5.i64[1] = HIDWORD(*v4);
  v6 = vdupq_lane_s64(v9, 0);
  v7 = vdivq_f64(vcvtq_f64_u64(v5), v6);
  *v7.f32 = vcvt_f32_f64(v7);
  LODWORD(v6.f64[0]) = *(v4 + 8);
  *v6.f64 = *&v6.f64[0] / *&v9;
  v7.i32[2] = LODWORD(v6.f64[0]);

  return CLKUIConvertSRGBToAPL(v7);
}

float CLKUIComputeColorAPL(void *a1)
{
  v1 = *MEMORY[0x1E695F0F0];
  v2 = a1;
  v3 = CGColorSpaceCreateWithName(v1);
  v4 = [v2 CGColor];

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v3, kCGRenderingIntentDefault, v4, 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v7 = *Components;
  *v7.f32 = vcvt_f32_f64(*Components);
  v8 = Components[1].f64[0];
  v7.f32[2] = v8;
  v9 = CLKUIConvertP3ToAPL(v7);
  CGColorRelease(CopyByMatchingToColorSpace);
  CGColorSpaceRelease(v3);
  return v9;
}

void CLKUIComputeDimmingRequiredToObtainColorAPLUnclamped(void *a1, float a2, float a3)
{
  v5 = *MEMORY[0x1E695F0F0];
  v6 = a1;
  v7 = CGColorSpaceCreateWithName(v5);
  v8 = [v6 CGColor];

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v7, kCGRenderingIntentDefault, v8, 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v11 = *Components;
  *v11.f32 = vcvt_f32_f64(*Components);
  v12 = Components[1].f64[0];
  v11.f32[2] = v12;
  v13 = CLKUIConvertP3ToAPL(v11);
  CGColorRelease(CopyByMatchingToColorSpace);
  CGColorSpaceRelease(v7);
  v14 = CLKUITritiumMaxAPL();
  powf(fmaxf(v14 - a2, 0.0) / (v13 * a3), 0.45455);
}

float CLKUIComputeDimmingRequiredToObtainColorAPL(void *a1, float a2, float a3)
{
  v5 = *MEMORY[0x1E695F0F0];
  v6 = a1;
  v7 = CGColorSpaceCreateWithName(v5);
  v8 = [v6 CGColor];

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v7, kCGRenderingIntentDefault, v8, 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v11 = *Components;
  *v11.f32 = vcvt_f32_f64(*Components);
  v12 = Components[1].f64[0];
  v11.f32[2] = v12;
  v13 = CLKUIConvertP3ToAPL(v11);
  CGColorRelease(CopyByMatchingToColorSpace);
  CGColorSpaceRelease(v7);
  v14 = CLKUITritiumMaxAPL();
  return fmin(powf(fmaxf(v14 - a2, 0.0) / (v13 * a3), 0.45455), 1.0);
}

void CLKUIConvertTextureFromXRSRGBtoP3(void *a1, void *a2, void *a3, id *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 width];
  if (v10 == [v8 width])
  {
    v11 = [v7 height];
    v12 = [v8 height];
    if (v8)
    {
      if (v7 && v11 == v12)
      {
        v13 = +[CLKUIMetalResourceManager sharedDevice];
        v14 = [v13 supportsFamily:1004];
        if (!*a4)
        {
          v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v39 = 0;
          v16 = [v13 newDefaultLibraryWithBundle:v15 error:&v39];
          v17 = v39;

          if (v17)
          {
            v18 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              CLKUIConvertTextureFromXRSRGBtoP3_cold_1(v17, v18);
            }
          }

          if (!v16)
          {
            v19 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              CLKUIConvertTextureFromXRSRGBtoP3_cold_2();
            }
          }

          v20 = [v16 newFunctionWithName:@"compute_convert_xrsrgb_to_p3"];
          if (!v20)
          {
            v21 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              CLKUIConvertTextureFromXRSRGBtoP3_cold_3();
            }
          }

          v38 = 0;
          v22 = [v13 newComputePipelineStateWithFunction:v20 error:&v38];
          v23 = v38;
          v24 = v22;
          *a4 = v22;
          if (v23)
          {
            v25 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              CLKUIConvertTextureFromXRSRGBtoP3_cold_4(v23, v25);
            }

            v22 = *a4;
          }

          if (!v22)
          {
            v26 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              CLKUIConvertTextureFromXRSRGBtoP3_cold_5();
            }
          }
        }

        v27 = [v9 computeCommandEncoder];
        [v27 setComputePipelineState:*a4];
        [v27 setTexture:v7 atIndex:0];
        [v27 setTexture:v8 atIndex:1];
        v28 = [*a4 threadExecutionWidth];
        v29 = [*a4 maxTotalThreadsPerThreadgroup] / v28;
        v30 = [v7 width];
        v31 = [v7 height];
        if (v14)
        {
          v35 = v30;
          v36 = v31;
          v37 = 1;
          v32 = v28;
          v33 = v29;
          v34 = 1;
          [v27 dispatchThreads:&v35 threadsPerThreadgroup:&v32];
        }

        else
        {
          v35 = (v28 + v30 - 1) / v28;
          v36 = (v29 + v31 - 1) / v29;
          v37 = 1;
          v32 = v28;
          v33 = v29;
          v34 = 1;
          [v27 dispatchThreadgroups:&v35 threadsPerThreadgroup:&v32];
        }

        [v27 endEncoding];
      }
    }
  }
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1E49D4944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___disabledLayerActions_block_invoke()
{
  v4[11] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFB0] null];
  v3[0] = @"affineTransform";
  v3[1] = @"backgroundColor";
  v4[0] = v0;
  v4[1] = v0;
  v3[2] = @"bounds";
  v3[3] = @"contentsMultiplyColor";
  v4[2] = v0;
  v4[3] = v0;
  v3[4] = @"hidden";
  v3[5] = @"instanceCount";
  v4[4] = v0;
  v4[5] = v0;
  v3[6] = @"instanceDelay";
  v3[7] = @"instanceTransform";
  v4[6] = v0;
  v4[7] = v0;
  v3[8] = @"opacity";
  v3[9] = @"position";
  v4[8] = v0;
  v4[9] = v0;
  v3[10] = @"transform";
  v4[10] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:11];
  v2 = _disabledLayerActions__dictionary;
  _disabledLayerActions__dictionary = v1;
}

id CLKUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = _CLKUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F5E8E070 table:@"ClockKitUI"];

  return v3;
}

id _CLKUIBundle()
{
  if (_CLKUIBundle_onceToken != -1)
  {
    _CLKUIBundle_cold_1();
  }

  v1 = _CLKUIBundle___bundle;

  return v1;
}

id CLKUIImageNamed(void *a1)
{
  v1 = MEMORY[0x1E695B530];
  v2 = a1;
  v3 = [v1 sharedRenderingContext];
  v4 = [v3 device];
  v5 = CLKUIImageNamedForDevice(v2, v4);

  return v5;
}

id CLKUIImageNamedForDevice(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = _CLKUIBundle();
  v6 = CLKUIImageNamedFromBundleForDevice(v5, v4, v3);

  return v6;
}

id CLKUIImageNamedFromBundleForDevice(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 deviceCategory] != 3 || (objc_msgSend(v6, "stringByAppendingString:", @"-aloe"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69DCAB8], "imageNamed:inBundle:compatibleWithTraitCollection:", v8, v5, 0), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = _CLKVersionedImageNameIfPreGlory(v6, v7);
    v9 = [MEMORY[0x1E69DCAB8] imageNamed:v10 inBundle:v5 compatibleWithTraitCollection:0];
  }

  return v9;
}

id _CLKVersionedImageNameIfPreGlory(void *a1, void *a2)
{
  v3 = a1;
  [a2 pdrDeviceVersion];
  v4 = v3;
  if ((PDRVersionIsGreaterThanOrEqual() & 1) == 0)
  {
    v5 = _PreGloryVersionedImageNames();
    v6 = [v5 containsObject:v3];

    v4 = v3;
    if (v6)
    {
      v4 = [v3 stringByAppendingString:@"-pre5_0"];
    }
  }

  return v4;
}

uint64_t _CLKUIOrderedImageSizeSuffixesForSizeClass(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return *(&off_1E8762840 + a1);
  }
}

id CLKUIOrderedSuffixesForDevice(void *a1)
{
  __CLKUIOrderedSuffixesForDevice_block_invoke(a1, a1);
  v1 = CLKUIOrderedSuffixesForDevice___suffixes;

  return v1;
}

uint64_t __CLKUIOrderedSuffixesForDevice_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_0);
  if (_block_invoke___cachedDevice_0)
  {
    v3 = _block_invoke___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_0))
  {
    v5 = _block_invoke_value_0;
  }

  else
  {
    _block_invoke___cachedDevice_0 = v2;
    _block_invoke___previousCLKDeviceVersion_0 = [v2 version];
    __CLKUIOrderedSuffixesForDevice_block_invoke_3(_block_invoke___previousCLKDeviceVersion_0, v2);
    v5 = 1;
    _block_invoke_value_0 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_0);

  return v5;
}

uint64_t __CLKUIOrderedSuffixesForDevice_block_invoke_3(uint64_t a1, void *a2)
{
  CLKUIOrderedSuffixesForDevice___suffixes = _CLKUIOrderedImageSizeSuffixesForSizeClass([a2 sizeClass]);

  return MEMORY[0x1EEE66BB8]();
}

id _CLKUIImageNamedFromBundleForDeviceWithSuffixes(void *a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v7 stringByAppendingString:{*(*(&v16 + 1) + 8 * i), v16}];
        v14 = [MEMORY[0x1E69DCAB8] imageNamed:v13 inBundle:v6 compatibleWithTraitCollection:0];

        if (v14)
        {

          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = [MEMORY[0x1E69DCAB8] imageNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];
LABEL_11:

  return v14;
}

id CLKUIAssetBundleSuffixesForSizeClass()
{
  v0 = [MEMORY[0x1E695DF70] array];
  [v0 addObject:&stru_1F5E8E070];
  [v0 addObject:@"-agave"];
  [v0 addObject:@"-aloe"];
  [v0 addObject:@"-luxo"];
  [v0 addObject:@"-sunscreen"];

  return v0;
}

id CLKUIImageNamedFromAssetBundleForDevice(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  __CLKUIImageNamedFromAssetBundleForDevice_block_invoke(v7, v5);
  v9 = _CLKUIImageNamedFromBundleForDeviceWithSuffixes(v7, v6, v8, CLKUIImageNamedFromAssetBundleForDevice___suffixes);

  return v9;
}

uint64_t __CLKUIImageNamedFromAssetBundleForDevice_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock);
  if (_block_invoke_2___cachedDevice)
  {
    v3 = _block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_2___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_2_value;
  }

  else
  {
    _block_invoke_2___cachedDevice = v2;
    _block_invoke_2___previousCLKDeviceVersion = [v2 version];
    __CLKUIImageNamedFromAssetBundleForDevice_block_invoke_3(_block_invoke_2___previousCLKDeviceVersion, v2);
    v5 = 1;
    _block_invoke_2_value = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock);

  return v5;
}

uint64_t __CLKUIImageNamedFromAssetBundleForDevice_block_invoke_3(uint64_t a1, void *a2)
{
  [a2 sizeClass];
  CLKUIImageNamedFromAssetBundleForDevice___suffixes = CLKUIAssetBundleSuffixesForSizeClass();

  return MEMORY[0x1EEE66BB8]();
}

id _PreGloryVersionedImageNames()
{
  if (_PreGloryVersionedImageNames_onceToken != -1)
  {
    _PreGloryVersionedImageNames_cold_1();
  }

  v1 = _PreGloryVersionedImageNames___preGloryVersionedImages;

  return v1;
}

id _CLKUILoggingObjectForDomain(uint64_t a1, uint64_t a2)
{
  v3 = (&_CLKUILoggingObjectForDomain_onceTokens + 8 * a1);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___CLKUILoggingObjectForDomain_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a1;
  v6[5] = a2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = _CLKUILoggingObjectForDomain___logObjects[a1];

  return v4;
}

double CLKUIComputePow2SubRect(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 size];
    [v1 scale];
    [v1 size];
    [v1 scale];
  }

  return 0.0;
}

uint64_t _CLKUIDeterminePlaneLength(int a1, int a2, int a3, int a4)
{
  if ((a1 - 5) > 1)
  {
    if ((a1 - 11) > 0x37)
    {
      return (a3 * a2 * a4);
    }

    else
    {
      v6 = HIDWORD(*&s_artFormatsAstcBlockSize[a1]);
      v7 = *&s_artFormatsAstcBlockSize[a1];
      return 16 * (a2 + v7 - 1) / v7 * ((a3 + v6 - 1) / v6);
    }
  }

  else
  {
    v4 = 4 * a3 * a2 + 7;
    if (v4 >= 0x100)
    {
      return v4 >> 3;
    }

    else
    {
      return 0;
    }
  }
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void startAndEndOfDayForDateInTimeZone(void *a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E695DEE8];
  v8 = a4;
  v9 = a3;
  v11 = [v7 currentCalendar];
  [v11 setTimeZone:v8];

  *a1 = [v11 startOfDayForDate:v9];
  v10 = [v11 dateByAddingUnit:16 value:1 toDate:v9 options:0];

  *a2 = [v11 startOfDayForDate:v10];
}

BOOL isDateBetweenDates(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [a2 compare:v5];
  if (v7)
  {
    v8 = v7 == -1 && [v6 compare:v5] >= 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t CLKUIFetchPrimaryGamutMatrix(_OWORD *a1)
{
  v1 = MEMORY[0x1E69E9B10];
  v2 = *(MEMORY[0x1E69E9B10] + 16);
  *a1 = *MEMORY[0x1E69E9B10];
  a1[1] = v2;
  a1[2] = *(v1 + 32);
  return 1;
}

double CLKUIPrimaryGamutMatrix()
{
  if (CLKUIPrimaryGamutMatrix_onceToken != -1)
  {
    CLKUIPrimaryGamutMatrix_cold_1();
  }

  return *&CLKUIPrimaryGamutMatrix_p3ToNativeMatrix;
}

double CLKUINativeToAPLCoeff()
{
  if (CLKUINativeToAPLCoeff_onceToken != -1)
  {
    CLKUINativeToAPLCoeff_cold_1();
  }

  return *&CLKUINativeToAPLCoeff_coefficients;
}

double __CLKUINativeToAPLCoeff_block_invoke()
{
  result = 0.0000000422954612;
  CLKUINativeToAPLCoeff_coefficients = xmmword_1E4A0A880;
  return result;
}

double CLKUIConvertP3ToNative(float32x4_t a1)
{
  v1 = a1;
  if (CLKUIPrimaryGamutMatrix_onceToken != -1)
  {
    CLKUIPrimaryGamutMatrix_cold_1();
    v1 = a1;
  }

  v2 = vtrn2q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, unk_1ECF8D5C0);
  v2.i32[2] = DWORD1(xmmword_1ECF8D5D0);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, xmmword_1ECF8D5D0), unk_1ECF8D5C0), v1.f32[0]), v2, *v1.f32, 1), vzip1q_s32(vzip2q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, xmmword_1ECF8D5D0), vdupq_laneq_s32(unk_1ECF8D5C0, 2)), v1, 2).u64[0];
  return result;
}

float CLKUIConvertNativeToAPL(float32x4_t a1)
{
  if (CLKUINativeToAPLCoeff_onceToken != -1)
  {
    v3 = a1;
    CLKUINativeToAPLCoeff_cold_1();
    a1 = v3;
  }

  v1 = vmulq_f32(CLKUINativeToAPLCoeff_coefficients, a1);
  return v1.f32[2] + vaddv_f32(*v1.f32);
}

float CLKUIConvertP3ToAPL(float32x4_t a1)
{
  if (CLKUIPrimaryGamutMatrix_onceToken != -1)
  {
    v10 = a1;
    CLKUIPrimaryGamutMatrix_cold_1();
    a1 = v10;
  }

  v1 = CLKUIPrimaryGamutMatrix_p3ToNativeMatrix;
  v2 = unk_1ECF8D5C0;
  v3 = xmmword_1ECF8D5D0;
  if (CLKUINativeToAPLCoeff_onceToken != -1)
  {
    v11 = a1;
    v8 = unk_1ECF8D5C0;
    v9 = CLKUIPrimaryGamutMatrix_p3ToNativeMatrix;
    v7 = xmmword_1ECF8D5D0;
    CLKUINativeToAPLCoeff_cold_1();
    v3 = v7;
    v2 = v8;
    v1 = v9;
    a1 = v11;
  }

  v4 = vtrn2q_s32(v1, v2);
  v4.i32[2] = v3.i32[1];
  v5 = vmulq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v1, v3), v2), a1.f32[0]), v4, *a1.f32, 1), vzip1q_s32(vzip2q_s32(v1, v3), vdupq_laneq_s32(v2, 2)), a1, 2), CLKUINativeToAPLCoeff_coefficients);
  return v5.f32[2] + vaddv_f32(*v5.f32);
}

double sRGBtoNative()
{
  if (sRGBtoNative_onceToken != -1)
  {
    sRGBtoNative_cold_1();
  }

  return *&sRGBtoNative_sRGBToNative;
}

double __sRGBtoNative_block_invoke()
{
  if (CLKUIPrimaryGamutMatrix_onceToken != -1)
  {
    CLKUIPrimaryGamutMatrix_cold_1();
  }

  v0 = 0;
  v1 = CLKUIPrimaryGamutMatrix_p3ToNativeMatrix;
  v2 = unk_1ECF8D5C0;
  HIDWORD(v1) = 0;
  HIDWORD(v2) = 0;
  v3 = xmmword_1ECF8D5D0;
  HIDWORD(v3) = 0;
  v5[0] = v1;
  v5[1] = v2;
  v5[2] = v3;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  do
  {
    *(&v6 + v0 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E4A0A890, COERCE_FLOAT(v5[v0])), xmmword_1E4A0A8A0, *&v5[v0], 1), xmmword_1E4A0A8B0, v5[v0], 2);
    ++v0;
  }

  while (v0 != 3);
  result = *&v6;
  DWORD2(sRGBtoNative_sRGBToNative) = DWORD2(v6);
  *algn_1ECF8D618 = DWORD2(v7);
  *&sRGBtoNative_sRGBToNative = v6;
  qword_1ECF8D610 = v7;
  DWORD2(xmmword_1ECF8D620) = DWORD2(v8);
  *&xmmword_1ECF8D620 = v8;
  return result;
}

float CLKUIConvertSRGBToAPL(float32x4_t a1)
{
  if (sRGBtoNative_onceToken != -1)
  {
    v10 = a1;
    sRGBtoNative_cold_1();
    a1 = v10;
  }

  v1 = sRGBtoNative_sRGBToNative;
  v2 = *&qword_1ECF8D610;
  v3 = xmmword_1ECF8D620;
  if (CLKUINativeToAPLCoeff_onceToken != -1)
  {
    v11 = a1;
    v8 = *&qword_1ECF8D610;
    v9 = sRGBtoNative_sRGBToNative;
    v7 = xmmword_1ECF8D620;
    CLKUINativeToAPLCoeff_cold_1();
    v3 = v7;
    v2 = v8;
    v1 = v9;
    a1 = v11;
  }

  v4 = vtrn2q_s32(v1, v2);
  v4.i32[2] = v3.i32[1];
  v5 = vmulq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v1, v3), v2), a1.f32[0]), v4, *a1.f32, 1), vzip1q_s32(vzip2q_s32(v1, v3), vdupq_laneq_s32(v2, 2)), a1, 2), CLKUINativeToAPLCoeff_coefficients);
  return v5.f32[2] + vaddv_f32(*v5.f32);
}

float interpolate_identity_to_color@<S0>(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  [a1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  *a2 = 1.0 - a3;
  *(a2 + 4) = 0;
  *(a2 + 12) = 0;
  v5 = v12 * a3;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0;
  *(a2 + 24) = 1.0 - a3;
  *(a2 + 28) = 0;
  v6 = v11 * a3;
  *(a2 + 36) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1.0 - a3;
  *(a2 + 52) = 0;
  v7 = v10 * a3;
  *(a2 + 56) = v7;
  *(a2 + 60) = 0;
  *(a2 + 68) = 0;
  result = (1.0 - a3) + a3 * v9;
  *(a2 + 72) = result;
  *(a2 + 76) = 0;
  return result;
}

uint64_t source_over_for_color(void *a1)
{
  v4 = 0;
  v5 = 0;
  v2 = 0;
  v3 = 0;
  [a1 getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  return CAColorMatrixMakeColorSourceOver();
}

id CLKUIFlatMonochromeFilters(void *a1, double a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (a2 == 1.0)
  {
    source_over_for_color(a1);
    v2 = MEMORY[0x1E6979378];
    v3 = MEMORY[0x1E6979D78];
  }

  else
  {
    v4 = a2;
    interpolate_identity_to_color(a1, &v10, v4);
    v2 = MEMORY[0x1E6979378];
    v3 = MEMORY[0x1E6979880];
  }

  v5 = [v2 filterWithType:*v3];
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v14;
  v9[0] = v10;
  v9[1] = v11;
  v6 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v9];
  [v5 setValue:v6 forKey:@"inputColorMatrix"];

  v15[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v7;
}

id CLKUIFlatMonochromeFiltersWhite(double a1)
{
  v2 = CLKUIDefaultComplicationBackgroundColor();
  v3 = CLKUIFlatMonochromeFilters(v2, a1);

  return v3;
}

id CLKUIDefaultComplicationBackgroundColor()
{
  if (CLKUIDefaultComplicationBackgroundColor_onceToken != -1)
  {
    CLKUIDefaultComplicationBackgroundColor_cold_1();
  }

  v1 = CLKUIDefaultComplicationBackgroundColor___backgroundColor;

  return v1;
}

id CLKUIFlatMonochromeFiltersWhiteOpaque()
{
  v0 = CLKUIDefaultComplicationBackgroundColor();
  v1 = CLKUIFlatMonochromeFilters(v0, 1.0);

  return v1;
}

CGImageRef _CLKUICreateMonochromeMapImage(void *a1, double a2)
{
  v3 = a1;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = CGBitmapContextCreate(0, 0xFFuLL, 1uLL, 8uLL, 0x1FE0uLL, DeviceRGB, 0x4001u);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, [v3 CGColor], 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  for (i = 0; i != 255; ++i)
  {
    if (i)
    {
      v9 = (i / 254.0) + a2;
    }

    else
    {
      v9 = 0.0;
    }

    CGContextSetRGBFillColor(v5, *Components, Components[1], Components[2], v9);
    v12.origin.x = i;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v5, v12);
  }

  Image = CGBitmapContextCreateImage(v5);
  CGColorRelease(CopyByMatchingToColorSpace);
  CGContextRelease(v5);
  CGColorSpaceRelease(DeviceRGB);

  return Image;
}

id CLKUIDesatMonochromeFiltersWithTintedBackground(void *a1, void *a2, double a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    [v6 _luminance];
    [v5 _luminance];
  }

  v30 = 0.0;
  v31 = 0.0;
  v29 = 0.0;
  [v5 getRed:&v31 green:&v30 blue:&v29 alpha:0];
  v8 = a3;
  v9 = v31 * v8;
  v10 = v30 * v8;
  v11 = v29 * v8;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  *&v19 = 1.0 - v8;
  *(&v19 + 4) = 0;
  *(&v19 + 3) = v9;
  *&v20 = 0;
  *(&v20 + 1) = COERCE_UNSIGNED_INT(1.0 - v8);
  *&v21 = v10;
  *(&v21 + 4) = 0;
  HIDWORD(v21) = 0;
  *&v22 = 1.0 - v8;
  *(&v22 + 1) = v11;
  *(&v22 + 1) = 0;
  *&v23 = 0;
  *(&v23 + 1) = 1065353216;
  *&v16 = 1.0 - v8;
  *&v17 = 1.0 - v8;
  *&v18 = 1.0 - v8;
  CAColorMatrixConcat();
  v12 = [MEMORY[0x1E6979378] filterWithType:{*MEMORY[0x1E6979880], v16, 0, 0, v17, 0, 0, v18}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v19];
  [v12 setValue:v13 forKey:*MEMORY[0x1E6979AC0]];

  [v12 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6979B98]];
  v32[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];

  return v14;
}

id CLKUIDesatMonochromeFiltersWhite(double a1)
{
  v2 = CLKUIDefaultAlternateComplicationColor();
  v3 = CLKUIDesatMonochromeFiltersWithTintedBackground(v2, 0, a1);

  return v3;
}

id CLKUIDefaultAlternateComplicationColor()
{
  if (CLKUIDefaultAlternateComplicationColor_onceToken != -1)
  {
    CLKUIDefaultAlternateComplicationColor_cold_1();
  }

  v1 = CLKUIDefaultAlternateComplicationColor___color;

  return v1;
}

id CLKUIDesatMonochromeFiltersWhiteOpaque()
{
  v0 = CLKUIDefaultAlternateComplicationColor();
  v1 = CLKUIDesatMonochromeFiltersWithTintedBackground(v0, 0, 1.0);

  return v1;
}

id CLKUIMonochromeFiltersForStyleWithTintedBackground(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (fabs(a5) < 0.00000011920929)
  {
    v5 = MEMORY[0x1E695E0F0];
    goto LABEL_21;
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        v15 = a5;
        v16 = v10;
      }

      else
      {
        if (a1 != 5)
        {
          goto LABEL_21;
        }

        v15 = a5;
        v16 = v11;
      }

      v18 = v12;
      goto LABEL_19;
    }

    v15 = a5;
    v16 = v11;
LABEL_16:
    v18 = 0;
LABEL_19:
    v17 = CLKUIDesatMonochromeFiltersWithTintedBackground(v16, v18, v15);
    goto LABEL_20;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        goto LABEL_21;
      }

      v13 = a5;
      v14 = v11;
      goto LABEL_13;
    }

    v15 = a5;
    v16 = v10;
    goto LABEL_16;
  }

  v13 = a5;
  v14 = v10;
LABEL_13:
  v17 = CLKUIFlatMonochromeFilters(v14, v13);
LABEL_20:
  v5 = v17;
LABEL_21:

  return v5;
}

uint64_t CLKUIAssociatedNonAccentStyle(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1E4A0A940[a1 - 1];
  }
}

uint64_t CLKUIAssociatedAccentStyle(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 2;
  }

  else
  {
    return qword_1E4A0A968[a1 - 1];
  }
}

uint64_t CLKUIAssociatedDesaturatedType(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return 1;
  }

  else
  {
    return qword_1E4A0A990[a1 - 2];
  }
}

uint64_t __CLKUIDefaultAlternateComplicationColor_block_invoke()
{
  CLKUIDefaultAlternateComplicationColor___color = [MEMORY[0x1E69DC888] colorWithWhite:0.9 alpha:1.0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CLKUIDefaultComplicationBackgroundColor_block_invoke()
{
  CLKUIDefaultComplicationBackgroundColor___backgroundColor = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];

  return MEMORY[0x1EEE66BB8]();
}

id NTKFlatMonochromeFilter(void *a1, double a2)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a2 == 1.0)
  {
    source_over_for_color(a1);
    v2 = MEMORY[0x1E6979378];
    v3 = MEMORY[0x1E6979D78];
  }

  else
  {
    v4 = a2;
    interpolate_identity_to_color(a1, &v9, v4);
    v2 = MEMORY[0x1E6979378];
    v3 = MEMORY[0x1E6979880];
  }

  v5 = [v2 filterWithType:*v3];
  v8[2] = v11;
  v8[3] = v12;
  v8[4] = v13;
  v8[0] = v9;
  v8[1] = v10;
  v6 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v8];
  [v5 setValue:v6 forKey:@"inputColorMatrix"];

  return v5;
}

id NTKFlatMonochromeFilterWhite(double a1)
{
  v2 = CLKUIDefaultComplicationBackgroundColor();
  v3 = NTKFlatMonochromeFilter(v2, a1);

  return v3;
}

id NTKFlatMonochromeFilterWhiteOpaque()
{
  v0 = CLKUIDefaultComplicationBackgroundColor();
  v1 = NTKFlatMonochromeFilter(v0, 1.0);

  return v1;
}

id NTKDesatMonochromeFilter(void *a1, double a2)
{
  v3 = MEMORY[0x1E6979378];
  v4 = *MEMORY[0x1E6979C70];
  v5 = a1;
  v6 = [v3 filterWithType:v4];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a2 * 0.95];
  [v6 setValue:v7 forKey:@"inputAmount"];

  v8 = _CLKUICreateMonochromeMapImage(v5, a2 * 0.2);
  [v6 setValue:v8 forKey:@"inputColorMap"];
  CGImageRelease(v8);

  return v6;
}

id NTKDesatMonochromeFilterWhite(double a1)
{
  v2 = CLKUIDefaultAlternateComplicationColor();
  v3 = NTKDesatMonochromeFilter(v2, a1);

  return v3;
}

id NTKDesatMonochromeFilterWhiteOpaque()
{
  v0 = CLKUIDefaultAlternateComplicationColor();
  v1 = NTKDesatMonochromeFilter(v0, 1.0);

  return v1;
}

id NTKMonochromeFilterForStyle(unint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1 <= 5)
  {
    if (((1 << a1) & 0x13) != 0)
    {
      v8 = v7;
    }

    a1 = NTKDesatMonochromeFilter(v8, a4);
  }

  return a1;
}

void sub_1E49DCBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E49DD3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E49DDD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double __CLKUICurvedColoringLabelCornerSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_2);
  if (_block_invoke___cachedDevice_2)
  {
    v3 = _block_invoke___cachedDevice_2 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_2))
  {
    v5 = _block_invoke_value_0_0;
  }

  else
  {
    _block_invoke___cachedDevice_2 = v2;
    _block_invoke___previousCLKDeviceVersion_2 = [v2 version];
    v5 = __CLKUICurvedColoringLabelCornerSize_block_invoke_2(_block_invoke___previousCLKDeviceVersion_2, v2);
    _block_invoke_value_0_0 = v5;
    _block_invoke_value_1_0 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_2);

  return *&v5;
}

double __CLKUICurvedColoringLabelCornerSize_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695B500] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledSize:3 withOverride:67.0 forSizeClass:{56.0, 78.0, 63.0}];
  v4 = v3 + -3.0;

  return v4;
}

double __CLKUICurvedColoringLabelCenterSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_0);
  if (_block_invoke_2___cachedDevice_0)
  {
    v3 = _block_invoke_2___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_2___previousCLKDeviceVersion_0))
  {
    v5 = _block_invoke_2_value_0;
  }

  else
  {
    _block_invoke_2___cachedDevice_0 = v2;
    _block_invoke_2___previousCLKDeviceVersion_0 = [v2 version];
    v5 = __CLKUICurvedColoringLabelCenterSize_block_invoke_2(_block_invoke_2___previousCLKDeviceVersion_0, v2);
    _block_invoke_2_value_0 = v5;
    _block_invoke_2_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock_0);

  return *&v5;
}

double __CLKUICurvedColoringLabelCenterSize_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695B500];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v4 scaledValue:3 withOverride:54.5 forSizeClass:59.5];
  [v4 scaledValue:2 withOverride:3.0 forSizeClass:1.0];
  [v4 scaledValue:6.5];
  [v3 screenBounds];
  v6 = v5;

  return v6;
}

id _FontWithCenteredColons(void *a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 fontDescriptor];
  if ((a2 + 1) > 1)
  {
    if ((a2 - 1) > 0xD)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E8762B90[a2 - 1];
    }

    v10 = *MEMORY[0x1E69657A8];
    v15 = v9;
    v16 = v10;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v17 = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = &v17;
    v8 = &v16;
  }

  else
  {
    if (_FontWithCenteredColons_onceToken != -1)
    {
      _FontWithCenteredColons_cold_1();
    }

    v4 = *MEMORY[0x1E69DB8B0];
    v18 = _FontWithCenteredColons___centeredColonsFeatureSetting;
    v19 = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v20[0] = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = v20;
    v8 = &v19;
  }

  v11 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];
  v12 = [v3 fontDescriptorByAddingAttributes:v11];

  v13 = [MEMORY[0x1E695B518] fontWithDescriptor:v12 size:0.0];

  return v13;
}

id _IdentifyingInfoForView(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = [v2 window];
  v5 = [v4 recursiveDescription];
  v6 = [v1 stringWithFormat:@"%@ <%p> in window %@", v3, v2, v5];

  return v6;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E49EDE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E49EEFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E49EF2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__38(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1E49F0788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E49F4190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _centerInBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  MidX = CGRectGetMidX(*&a1);
  v14 = MidX - a6 * __sincos_stret(a7).__sinval;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMinY(v16);
  return v14;
}

double _angleForPositionInWidth(double a1, double a2, double a3, double a4)
{
  v4 = 0.0;
  if (a3 != 0.0)
  {
    return (a1 + a2 * -0.5) / a3 + a4;
  }

  return v4;
}

void sub_1E49F5C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E49F6F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CLKUIMetalAtlasPrewarmStateDescription(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"prewarming";
  }

  if (a1 == 2)
  {
    return @"prewarmed";
  }

  else
  {
    return v1;
  }
}

uint64_t _CLKUICalculateNumCompressedTexMipmaps(unsigned int a1, unsigned int a2, unsigned int a3)
{
  if (a3 < 0x20)
  {
    goto LABEL_9;
  }

  LODWORD(result) = 0;
  do
  {
    if (a1 == 1 && a2 == 1)
    {
      return (result + 1);
    }

    v5 = a1 > 1;
    a1 >>= a1 > 1;
    v6 = a2 > 1;
    a2 >>= a2 > 1;
    a3 = a3 >> v5 >> v6;
    result = (result + 1);
  }

  while (a3 >= 0x20);
  if (!result)
  {
LABEL_9:
    _CLKUICalculateNumCompressedTexMipmaps_cold_1();
  }

  return result;
}

uint64_t _CLKUIMetalAtlasComputeCompressedPlaneLength(int a1, int a2, int a3)
{
  if ((a1 - 5) > 1u)
  {
    if ((a1 - 11) > 0x37)
    {
      return 0;
    }

    else
    {
      ASTCBlockSize = CLKUITextureFormatGetASTCBlockSize(a1);
      return 16 * (a2 + LODWORD(ASTCBlockSize) - 1) / LODWORD(ASTCBlockSize) * ((a3 + HIDWORD(ASTCBlockSize) - 1) / HIDWORD(ASTCBlockSize));
    }
  }

  else
  {
    v5 = 4 * a2 * a3 + 7;
    if (v5 >= 0x100)
    {
      return v5 >> 3;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1E49F827C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SlopedPoint.point.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___CLKUISlopedPoint_point);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double sub_1E49F9420(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  return *v3;
}

double sub_1E49F9470(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1E49F94C0(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v7 = (a1 + *a5);
  result = swift_beginAccess();
  *v7 = a2;
  v7[1] = a3;
  return result;
}

uint64_t SlopedPoint.tangent.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___CLKUISlopedPoint_tangent);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id SlopedPoint.__allocating_init(point:tangent:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___CLKUISlopedPoint_point];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v9[OBJC_IVAR___CLKUISlopedPoint_tangent];
  *v11 = a3;
  v11[1] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SlopedPoint.init(point:tangent:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___CLKUISlopedPoint_point];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v4[OBJC_IVAR___CLKUISlopedPoint_tangent];
  *v11 = a3;
  v11[1] = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SlopedPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1E49F97D4(double a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 64))
  {
    v8 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (*(v1 + 64) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D2E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4A0AD80;
      *(inited + 32) = v4;
      *(inited + 40) = v3;
      *(inited + 48) = v6;
      *(inited + 56) = v5;
      *(inited + 64) = v8;
      *(inited + 72) = v7;
    }

    else
    {
      v21 = *(v1 + 48);
      v23 = *(v1 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D2E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4A0AD70;
      *(inited + 32) = v4;
      *(inited + 40) = v3;
      *(inited + 48) = v6;
      *(inited + 56) = v5;
      *(inited + 64) = v8;
      *(inited + 72) = v7;
      *(inited + 80) = v21;
      *(inited + 88) = v23;
    }

    v22 = sub_1E49FBE84(inited, a1);
    swift_setDeallocating();
    return v22;
  }

  else
  {
    v10 = v5 - v3;
    v11 = v4 + (v6 - v4) * a1;
    v12 = v3 + (v5 - v3) * a1;
    v13 = sqrt((v4 - v6) * (v4 - v6) + (v3 - v5) * (v3 - v5));
    v14 = (v6 - v4) / v13;
    v15 = v10 / v13;
    v16 = type metadata accessor for SlopedPoint();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR___CLKUISlopedPoint_point];
    *v18 = v11;
    v18[1] = v12;
    v19 = &v17[OBJC_IVAR___CLKUISlopedPoint_tangent];
    *v19 = v14;
    v19[1] = v15;
    v24.receiver = v17;
    v24.super_class = v16;
    return objc_msgSendSuper2(&v24, sel_init);
  }
}

uint64_t sub_1E49F9958(uint64_t result, double a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*(result + 40) > a2)
  {
    return result;
  }

  v3 = result + 32;
  v4 = v2 - 1;
  if (*(result + 32 + 16 * (v2 - 1) + 8) <= a2)
  {
    return result;
  }

  if (v2 != 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + v4;
      if (__OFADD__(v5, v4))
      {
        break;
      }

      if (v6 < -1)
      {
        goto LABEL_24;
      }

      v7 = v6 / 2;
      if (v7 >= v2)
      {
        goto LABEL_24;
      }

      if (*(v3 + 16 * v7 + 8) < a2)
      {
        v5 = v7 + 1;
      }

      else
      {
        v4 = v7;
      }

      if (v5 >= v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = 0;
LABEL_14:
  if (v5 >= v2)
  {
    goto LABEL_26;
  }

  v8 = *(v3 + 16 * v5 + 8);
  if (v8 <= a2)
  {
    if (v8 >= a2)
    {
      return result;
    }

    v9 = v5 + 1;
    if (v5 < v2)
    {
LABEL_17:
      if (v9 < v2)
      {
        return result;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v9 = v5;
    if (v5 - 1 < v2)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void *CLKUIBezierPathStepper.path.getter()
{
  v1 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CLKUIBezierPathStepper.path.setter(void *a1)
{
  v3 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    CLKUIBezierPathStepper.updateSegments(path:)(v5);
  }
}

id sub_1E49F9BF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1E49F9C5C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  if (v2)
  {
    CLKUIBezierPathStepper.updateSegments(path:)(v6);
  }
}

Swift::Void __swiftcall CLKUIBezierPathStepper.updateSegments(path:)(UIBezierPath path)
{
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v3 = [(objc_class *)path.super.isa CGPath];
  v4 = swift_allocObject();
  v4[2] = v10;
  v4[3] = v9;
  v4[4] = &v8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E49FA3B4;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1E49FA3C0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E49FA3E8;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);

  CGPathApplyWithBlock(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR___CLKUIBezierPathStepper_segments) = v8;

    *(v1 + OBJC_IVAR___CLKUIBezierPathStepper_segmentLengthTables) = v2;

    sub_1E49FA42C();
  }
}

void (*CLKUIBezierPathStepper.path.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1E49F9F2C;
}

void sub_1E49F9F2C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      CLKUIBezierPathStepper.updateSegments(path:)(v5);
    }
  }

  free(v3);
}

id CLKUIBezierPathStepper.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  *&v0[OBJC_IVAR___CLKUIBezierPathStepper_path] = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CLKUIBezierPathStepper_segments] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CLKUIBezierPathStepper_segmentLengthTables] = v3;
  swift_beginAccess();
  *&v0[v2] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1E49FA0B4(uint64_t result, void *a2, void *a3, uint64_t *a4)
{
  v5 = *result;
  v6 = *(result + 8);
  if (*result <= 1)
  {
    if (!v5)
    {
      v12 = *v6;
      v13 = v6[1];
      *a2 = *v6;
      a2[1] = v13;
      *a3 = v12;
      a3[1] = v13;
      return result;
    }

    if (v5 == 1)
    {
      v43 = *a2;
      v21 = *v6;
      goto LABEL_20;
    }

LABEL_25:
    result = sub_1E49FE0A8();
    __break(1u);
    return result;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      v38 = *(v6 + 1);
      v41 = *a2;
      v34 = *(v6 + 2);
      v35 = *v6;
      *a2 = v34;
      v7 = *a4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1E49FACF0(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
        *a4 = result;
      }

      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = v8 + 1;
      if (v8 >= v9 >> 1)
      {
        v33 = v8 + 1;
        v31 = v7;
        v32 = *(v7 + 16);
        result = sub_1E49FACF0((v9 > 1), v8 + 1, 1, v31);
        v8 = v32;
        v10 = v33;
        v7 = result;
        *a4 = result;
      }

      *(v7 + 16) = v10;
      v11 = v7 + 72 * v8;
      *(v11 + 32) = v41;
      *(v11 + 48) = v35;
      *(v11 + 64) = v38;
      *(v11 + 80) = v34;
      *(v11 + 96) = 2;
      return result;
    }

    if (v5 == 4)
    {
      v43 = *a2;
      v21 = *a3;
LABEL_20:
      v40 = v21;
      *a2 = v21;
      v22 = *a4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v22;
      if ((result & 1) == 0)
      {
        result = sub_1E49FACF0(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
        *a4 = result;
      }

      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v25 = v23 + 1;
      if (v23 >= v24 >> 1)
      {
        v36 = v23 + 1;
        v27 = v22;
        v28 = *(v22 + 16);
        result = sub_1E49FACF0((v24 > 1), v23 + 1, 1, v27);
        v23 = v28;
        v25 = v36;
        v22 = result;
        *a4 = result;
      }

      *(v22 + 16) = v25;
      v26 = v22 + 72 * v23;
      *(v26 + 32) = v43;
      *(v26 + 48) = v40;
      *(v26 + 64) = v44;
      *(v26 + 80) = v45;
      *(v26 + 96) = 0;
      return result;
    }

    goto LABEL_25;
  }

  v39 = *v6;
  v42 = *a2;
  v14 = v6[2];
  v15 = v6[3];
  *a2 = v14;
  a2[1] = v15;
  v16 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v16;
  if ((result & 1) == 0)
  {
    result = sub_1E49FACF0(0, *(v16 + 16) + 1, 1, v16);
    v16 = result;
    *a4 = result;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  v19 = v17 + 1;
  if (v17 >= v18 >> 1)
  {
    v37 = v17 + 1;
    v29 = v16;
    v30 = *(v16 + 16);
    result = sub_1E49FACF0((v18 > 1), v17 + 1, 1, v29);
    v17 = v30;
    v19 = v37;
    v16 = result;
    *a4 = result;
  }

  *(v16 + 16) = v19;
  v20 = v16 + 72 * v17;
  *(v20 + 32) = v42;
  *(v20 + 48) = v39;
  *(v20 + 64) = v14;
  *(v20 + 72) = v15;
  *(v20 + 80) = v44;
  *(v20 + 96) = 1;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E49FA42C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___CLKUIBezierPathStepper_segments);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];

    sub_1E49FB010(0, v3, 0);
    v5 = 32;
    v4 = v17;
    do
    {
      v19 = *(v2 + v5 + 64);
      v6 = *(v2 + v5 + 48);
      v18[2] = *(v2 + v5 + 32);
      v18[3] = v6;
      v7 = *(v2 + v5 + 16);
      v18[0] = *(v2 + v5);
      v18[1] = v7;
      if (v19)
      {
        v8 = 16;
      }

      else
      {
        v8 = 2;
      }

      v9 = sub_1E49FC048(v18, v8);
      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = v9;
        v15 = v10;
        sub_1E49FB010((v11 > 1), v12 + 1, 1);
        v10 = v15;
        v9 = v14;
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  *(v1 + OBJC_IVAR___CLKUIBezierPathStepper_segmentLengthTables) = v4;
}

uint64_t sub_1E49FA5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1E49FB030(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D318);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1E49FB030((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t CLKUIBezierPathStepper.mapOffsetsToPathPositions(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    *&v46[0] = MEMORY[0x1E69E7CC0];
    sub_1E49FB0B0(0, v3, 0);
    v6 = 0;
    v4 = *&v46[0];
    do
    {
      v7 = *(a1 + 32 + 8 * v6);
      *&v46[0] = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1E49FB0B0((v8 > 1), v9 + 1, 1);
        v4 = *&v46[0];
      }

      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v4 + 16) = v9 + 1;
      *(v10 + 40) = v7;
      ++v6;
    }

    while (v3 != v6);
  }

  *&v46[0] = v4;

  sub_1E49FB4E0(v46);

  v11 = *&v46[0];
  v12 = type metadata accessor for SlopedPoint();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___CLKUISlopedPoint_point];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR___CLKUISlopedPoint_tangent];
  *v15 = 0;
  *(v15 + 1) = 0;
  v45.receiver = v13;
  v45.super_class = v12;
  v16 = objc_msgSendSuper2(&v45, sel_init);
  v17 = sub_1E49FC684(v16, v11[2]);

  v18 = v11[2];
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = OBJC_IVAR___CLKUIBezierPathStepper_segments;
    v22 = OBJC_IVAR___CLKUIBezierPathStepper_segmentLengthTables;
    v23 = v11 + 4;
    v24 = 0.0;
    while (v20 < v11[2])
    {
      v25 = *(v2 + v21);
      v26 = *(v25 + 16);
      if (v19 >= v26)
      {
        goto LABEL_27;
      }

      v27 = &v23[2 * v20];
      v28 = *v27;
      v29 = *(v27 + 1);
      ++v20;
      v30 = *(v2 + v22);
      v31 = *(v30 + 16);
      if (v19 <= v31)
      {
        v32 = *(v30 + 16);
      }

      else
      {
        v32 = v19;
      }

      v33 = (v30 + 16 * v19 + 40);
      v34 = v25 + 72 * v19 + 32;
      while (1)
      {
        if (v32 == v19)
        {
          __break(1u);
          goto LABEL_29;
        }

        v35 = v24 + *v33;
        if (v35 >= v29)
        {
          break;
        }

        ++v19;
        v33 += 2;
        v34 += 72;
        v24 = v35;
        if (v26 == v19)
        {
          goto LABEL_27;
        }
      }

      if (v19 >= v31)
      {
        goto LABEL_30;
      }

      v43 = v2;
      v44 = v23;
      v36 = v21;
      sub_1E49F9958(*(v33 - 1), v29 - v24);
      if (v19 >= *(v25 + 16))
      {
        goto LABEL_31;
      }

      v38 = *(v34 + 48);
      v46[2] = *(v34 + 32);
      v46[3] = v38;
      v47 = *(v34 + 64);
      v39 = *(v34 + 16);
      v46[0] = *v34;
      v46[1] = v39;
      v40 = sub_1E49F97D4(v37);
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
      {
        v17 = sub_1E49FB660(v17);
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v28 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v41 = *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20);
      *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20) = v40;

      v21 = v36;
      v2 = v43;
      v23 = v44;
      if (v20 == v18)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_27:

    return v17;
  }

  return result;
}

void CLKUIBezierPathStepper.totalLength()()
{
  v1 = *(*(v0 + OBJC_IVAR___CLKUIBezierPathStepper_segments) + 16);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___CLKUIBezierPathStepper_segmentLengthTables);
    if (*(v2 + 16) <= (v1 - 1))
    {
      __break(1u);
      return;
    }

    if (v1 == 1)
    {
      v3 = 0;
      v4 = 0.0;
LABEL_9:
      v9 = (v2 + 16 * v3 + 40);
      v10 = v1 - v3;
      do
      {
        v11 = *v9;
        v9 += 2;
        v4 = v4 + v11;
        --v10;
      }

      while (v10);
      return;
    }

    v3 = v1 & 0x7FFFFFFFFFFFFFFELL;
    v5 = (v2 + 56);
    v4 = 0.0;
    v6 = v1 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v7 = *(v5 - 2);
      v8 = *v5;
      v5 += 4;
      v4 = v4 + v7 + v8;
      v6 -= 2;
    }

    while (v6);
    if (v1 != v3)
    {
      goto LABEL_9;
    }
  }
}

id _s10ClockKitUI11SlopedPointCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E49FABEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D2E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1E49FACF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 72 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1E49FAE08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E49FAF0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1E49FB010(char *a1, int64_t a2, char a3)
{
  result = sub_1E49FB0D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E49FB030(char *a1, int64_t a2, char a3)
{
  result = sub_1E49FB1DC(a1, a2, a3, *v3, &qword_1ECF8D320);
  *v3 = result;
  return result;
}

char *sub_1E49FB060(char *a1, int64_t a2, char a3)
{
  result = sub_1E49FB1DC(a1, a2, a3, *v3, &qword_1ECF8D328);
  *v3 = result;
  return result;
}

char *sub_1E49FB090(char *a1, int64_t a2, char a3)
{
  result = sub_1E49FB2D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E49FB0B0(char *a1, int64_t a2, char a3)
{
  result = sub_1E49FB3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E49FB0D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E49FB1DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1E49FB2D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E49FB3DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E49FB4E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E49FBE70(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E49FE0D8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D2F0);
      v7 = sub_1E49FE018();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E49FB6C4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E49FB660(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E49FE0B8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x1EEE6A410](0, v2, 0, a1);
}

uint64_t sub_1E49FB6C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E49FBE5C(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1E49FBC58((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E49FAF0C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1E49FAF0C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1E49FBC58((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1E49FBC58(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

id sub_1E49FBE84(uint64_t a1, double a2)
{
  v2 = a1;
  v3 = *(a1 + 16);

  if (v3 >= 3)
  {
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = (v2 + 48);
      v2 = sub_1E49FABEC(0, 1, 1, v5);
      v7 = *(v2 + 2);
      v8 = v3 - 1;
      v9 = a2;
      do
      {
        v11 = v6[-1];
        v10 = *v6;
        v12 = *(v2 + 3);
        if (v7 >= v12 >> 1)
        {
          v28 = *v6;
          v29 = v6[-1];
          v13 = sub_1E49FABEC((v12 > 1), v7 + 1, 1, v2);
          v10 = v28;
          v11 = v29;
          v9 = a2;
          v2 = v13;
        }

        *(v2 + 2) = v7 + 1;
        *&v2[16 * v7 + 32] = vaddq_f64(v11, vmulq_n_f64(vsubq_f64(v10, v11), v9));
        ++v6;
        ++v7;
        --v8;
      }

      while (v8);

      v3 = *(v2 + 2);
    }

    while (v3 > 2);
  }

  if (v3)
  {
    if (v3 != 1)
    {
      v15 = *(v2 + 4);
      v14 = *(v2 + 5);
      v16 = *(v2 + 6);
      v17 = *(v2 + 7);

      v18 = v17 - v14;
      v19 = v15 + (v16 - v15) * a2;
      v20 = v14 + (v17 - v14) * a2;
      v21 = sqrt((v15 - v16) * (v15 - v16) + (v14 - v17) * (v14 - v17));
      v22 = (v16 - v15) / v21;
      v23 = v18 / v21;
      v24 = type metadata accessor for SlopedPoint();
      v25 = objc_allocWithZone(v24);
      v26 = &v25[OBJC_IVAR___CLKUISlopedPoint_point];
      *v26 = v19;
      v26[1] = v20;
      v27 = &v25[OBJC_IVAR___CLKUISlopedPoint_tangent];
      *v27 = v22;
      v27[1] = v23;
      v31.receiver = v25;
      v31.super_class = v24;
      return objc_msgSendSuper2(&v31, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E49FC048(uint64_t a1, int64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    goto LABEL_54;
  }

  v6 = &unk_1ECF8D000;
  if (a2)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1E49FB090(0, a2, 0);
    v9 = 0;
    v2 = v69;
    v10 = *(v69 + 16);
    do
    {
      v69 = v2;
      v11 = *(v2 + 24);
      v12 = v10 + 1;
      if (v10 >= v11 >> 1)
      {
        sub_1E49FB090((v11 > 1), v10 + 1, 1);
        v2 = v69;
      }

      *(v2 + 16) = v12;
      *(v2 + 8 * v10++ + 32) = v9++ / (a2 - 1);
    }

    while (a2 != v9);
    goto LABEL_9;
  }

  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
LABEL_9:
    v69 = MEMORY[0x1E69E7CC0];
    sub_1E49FE078();
    v13 = 32;
    do
    {
      v24 = *(v2 + v13);
      v26 = *a1;
      v25 = *(a1 + 8);
      v28 = *(a1 + 16);
      v27 = *(a1 + 24);
      if (*(a1 + 64))
      {
        v30 = *(a1 + 32);
        v29 = *(a1 + 40);
        if (*(a1 + 64) == 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D2E8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4A0AD80;
          *(inited + 32) = v26;
          *(inited + 40) = v25;
          *(inited + 48) = v28;
          *(inited + 56) = v27;
          *(inited + 64) = v30;
          *(inited + 72) = v29;
        }

        else
        {
          v32 = *(a1 + 48);
          v65 = *(a1 + 56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D2E8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4A0AD70;
          *(inited + 32) = v26;
          *(inited + 40) = v25;
          *(inited + 48) = v28;
          *(inited + 56) = v27;
          *(inited + 64) = v30;
          *(inited + 72) = v29;
          *(inited + 80) = v32;
          *(inited + 88) = v65;
        }

        sub_1E49FBE84(inited, v24);
        swift_setDeallocating();
      }

      else
      {
        v14 = v27 - v25;
        v15 = v26 + v24 * (v28 - v26);
        v16 = v25 + v24 * (v27 - v25);
        v17 = sqrt((v26 - v28) * (v26 - v28) + (v25 - v27) * (v25 - v27));
        v18 = (v28 - v26) / v17;
        v19 = v14 / v17;
        v20 = type metadata accessor for SlopedPoint();
        v21 = objc_allocWithZone(v20);
        v22 = &v21[OBJC_IVAR___CLKUISlopedPoint_point];
        *v22 = v15;
        v22[1] = v16;
        v23 = &v21[OBJC_IVAR___CLKUISlopedPoint_tangent];
        *v23 = v18;
        v23[1] = v19;
        v67.receiver = v21;
        v67.super_class = v20;
        objc_msgSendSuper2(&v67, sel_init);
      }

      sub_1E49FE058();
      sub_1E49FE088();
      sub_1E49FE098();
      sub_1E49FE068();
      v13 += 8;
      --v12;
    }

    while (v12);
    v4 = v69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8D308);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1E4A0AD90;
  *(v3 + 32) = 0;
  v5 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_61;
  }

  for (i = *(v4 + 32); ; i = MEMORY[0x1E691D060](0, v4))
  {
    v34 = i;
    if (v4 >> 62)
    {
      result = sub_1E49FE0B8();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      v35 = result;
      v36 = result != 0;
      if (sub_1E49FE0B8() < v36)
      {
        goto LABEL_60;
      }

      if (sub_1E49FE0B8() < v35)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
      }
    }

    else
    {
      v35 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v35 != 0;
      if (v35 < v36)
      {
        goto LABEL_60;
      }
    }

    if (v5 && v35 > 1)
    {
      type metadata accessor for SlopedPoint();

      v37 = v36;
      do
      {
        v38 = v37 + 1;
        sub_1E49FE028();
        v37 = v38;
      }

      while (v35 != v38);
    }

    else
    {
    }

    if (v4 >> 62)
    {
      sub_1E49FE0C8();
      v39 = v40;
      v36 = v41;
      v43 = v42;

      v35 = v43 >> 1;
    }

    else
    {
      v39 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v44 = 0.0;
    v45 = __OFSUB__(v35, v36);
    v46 = v35 - v36;
    if (v46)
    {
      if ((v46 < 0) ^ v45 | (v46 == 0))
      {
        goto LABEL_62;
      }

      v55 = (v39 + 8 * v36);
      do
      {
        v56 = *v55;
        v57 = *(v6 + 680);
        swift_beginAccess();
        v58 = *(v6 + 680);
        v66 = *&v56[v57];
        swift_beginAccess();
        v64 = *&v34[v58];
        v60 = *(v3 + 16);
        v59 = *(v3 + 24);
        v47 = v56;
        if (v60 >= v59 >> 1)
        {
          v3 = sub_1E49FAE08((v59 > 1), v60 + 1, 1, v3);
        }

        v61 = vsubq_f64(v66, v64);
        v44 = v44 + sqrt(vaddvq_f64(vmulq_f64(v61, v61)));

        *(v3 + 16) = v60 + 1;
        *(v3 + 8 * v60 + 32) = v44;
        ++v55;
        v34 = v47;
        --v46;
      }

      while (v46);
    }

    else
    {
      v47 = v34;
    }

    swift_unknownObjectRelease();
    v4 = *(v2 + 16);
    if (!v4)
    {
      break;
    }

    v68 = MEMORY[0x1E69E7CC0];
    sub_1E49FB060(0, v4, 0);
    v48 = 0;
    v49 = *(v2 + 16);
    v50 = v68;
    v5 = v3 + 32;
    while (v49 != v48)
    {
      if (v48 >= *(v2 + 16))
      {
        goto LABEL_52;
      }

      if (v48 >= *(v3 + 16))
      {
        goto LABEL_53;
      }

      v51 = *(v5 + 8 * v48);
      v52 = *(v2 + 8 * v48 + 32);
      v68 = v50;
      v6 = *(v50 + 16);
      v53 = *(v50 + 24);
      if (v6 >= v53 >> 1)
      {
        sub_1E49FB060((v53 > 1), v6 + 1, 1);
        v50 = v68;
      }

      ++v48;
      *(v50 + 16) = v6 + 1;
      v54 = v50 + 16 * v6;
      *(v54 + 32) = v52;
      *(v54 + 40) = v51;
      if (v4 == v48)
      {

        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v62 = sub_1E49FA5EC(v50);

  return v62;
}

void *sub_1E49FC684(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    type metadata accessor for SlopedPoint();
    v4 = sub_1E49FE018();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E49FC768(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E49FC7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PathSegment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PathSegment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PathSegment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E49FC92C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1E49FC970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1E49FCA34(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void CLKUIConvertTextureFromXRSRGBtoP3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1E49C8000, a2, OS_LOG_TYPE_FAULT, "xsrgb: newDefaultLibraryWithBundle error=%@", &v2, 0xCu);
}

void CLKUIConvertTextureFromXRSRGBtoP3_cold_4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1E49C8000, a2, OS_LOG_TYPE_FAULT, "xsrgb: newComputePipelineStateWithFunction error=%@", &v2, 0xCu);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x1EEDBEF98](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTFontGetOpticalBoundsForGlyphs(CTFontRef font, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count, CFOptionFlags options)
{
  MEMORY[0x1EEDBF020](font, glyphs, boundingRects, count, options);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}