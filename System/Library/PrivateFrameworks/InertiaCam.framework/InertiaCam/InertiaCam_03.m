void sub_254B58FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  v41 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

float sub_254B591D0(CMTime *a1, CMTime *a2)
{
  memset(&v6, 0, sizeof(v6));
  lhs = *a1;
  v4 = *a2;
  CMTimeSubtract(&v6, &lhs, &v4);
  return (v6.value / v6.timescale) / (a2[1].value / a2[1].timescale);
}

uint64_t sub_254B5925C(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a5;
  objc_opt_respondsToSelector();
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 875704422 || PixelFormatType == 875704438 || PixelFormatType == 1278226488)
  {
    v9 = *(a4 + 248);
    CleanRect = CVImageBufferGetCleanRect(a1);
    x = CleanRect.origin.x;
    y = CleanRect.origin.y;
    width = CleanRect.size.width;
    height = CleanRect.size.height;
    CVPixelBufferLockBaseAddress(a1, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    v29 = v9;
    v16 = sub_254B53684(v9, width, height);
    v17 = v16;
    v18 = *(a4 + 280);
    if (v18 && v16[6])
    {
      v19 = sub_254B53684(v29, width, height);
      v20 = sub_254B4533C(v18, a1, v17[6], v19[6]);
      if (v20)
      {
        CVBufferSetAttachment(v17[6], @"fast9", v19[6], kCVAttachmentMode_ShouldNotPropagate);
        CVBufferSetAttachment(v17[6], @"metalOpHandle", v20, kCVAttachmentMode_ShouldNotPropagate);
        sub_254B6F128(v19);
        goto LABEL_18;
      }

      sub_254B53710(v29, v19);
    }

    v21 = v17[6];
    if (v21)
    {
      CVPixelBufferLockBaseAddress(v21, 0);
      atomic_fetch_add(v17 + 14, 1u);
      v22 = v17[5] + CVPixelBufferGetBaseAddressOfPlane(v17[6], 0);
      *v17 = v22;
    }

    else
    {
      v22 = *v17;
    }

    v23 = 0;
    divisor = 0;
    src.data = BaseAddressOfPlane;
    src.height = HeightOfPlane;
    src.width = WidthOfPlane;
    src.rowBytes = BytesPerRowOfPlane;
    dest.data = v22;
    *&dest.height = vextq_s8(*(v17 + 1), *(v17 + 1), 8uLL);
    dest.rowBytes = v17[3];
    *kernel = xmmword_254B8B538;
    v33 = 3;
    do
    {
      divisor += kernel[v23++];
    }

    while (v23 != 9);
    vImageConvolve_Planar8(&src, &dest, 0, x, (HeightOfPlane - (y + height)), kernel, 3u, 3u, divisor, 0, 8u);
    v25 = v17[6];
    if (v25)
    {
      CVPixelBufferUnlockBaseAddress(v25, 0);
      if (atomic_fetch_add(v17 + 14, 0xFFFFFFFF) == 1)
      {
        *v17 = 0;
      }
    }

LABEL_18:
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_254B5968C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_254B32F20();
}

uint64_t sub_254B596D4(int8x16_t *a1, int8x16_t **a2, float *a3, uint64_t *a4, int32x2_t *a5, uint64_t a6, unsigned int a7, float a8)
{
  *a5 = vdup_n_s32(0x101u);
  *a6 = 0;
  v8 = a2[2];
  if (v8)
  {
    v9 = *a2;
    v10 = vaddq_s8(vcntq_s8(veorq_s8((*a2)[1], a1[1])), vcntq_s8(veorq_s8(**a2, *a1)));
    *v10.i8 = vadd_s8(*&vextq_s8(v10, v10, 8uLL), *v10.i8);
    *v10.i8 = vpadd_s8(*v10.i8, *v10.i8);
    v10.i16[0] = vpadd_s8(*v10.i8, *v10.i8).u16[0];
    a5->i32[0] = v10.u8[0] + v10.u8[1];
    *a6 = 0;
    if (v8 != 1)
    {
      v11 = a8 * a8;
      v12 = *a4;
      v14 = *a3;
      v13 = a3[1];
      v15 = v13 + a8;
      v16 = 2;
      v17 = 1;
      do
      {
        v18 = (v12 + 8 * v17);
        v19 = v18[1];
        if (v19 > v15)
        {
          break;
        }

        if ((((v13 - v19) * (v13 - v19)) + ((v14 - *v18) * (v14 - *v18))) < v11)
        {
          v20 = vaddq_s8(vcntq_s8(veorq_s8(v9[2 * v17 + 1], a1[1])), vcntq_s8(veorq_s8(v9[2 * v17], *a1)));
          *v20.i8 = vadd_s8(*&vextq_s8(v20, v20, 8uLL), *v20.i8);
          *v20.i8 = vpadd_s8(*v20.i8, *v20.i8);
          v20.i16[0] = vpadd_s8(*v20.i8, *v20.i8).u16[0];
          v21 = v20.u8[0] + v20.u8[1];
          if (v21 < a5->i32[1])
          {
            if (v21 >= a5->i32[0])
            {
              v22 = 1;
            }

            else
            {
              if (v21 < a7)
              {
                return 1;
              }

              v22 = 0;
              a5->i32[1] = a5->i32[0];
              *(a6 + 4) = *a6;
            }

            a5->i32[v22] = v21;
            *(a6 + 4 * v22) = v16 - 1;
          }
        }

        v17 = v16;
      }

      while (v8 > v16++);
    }
  }

  return 0;
}

void sub_254B5981C(void *a1, void *a2, void *a3, void *a4, unsigned int a5, uint64_t a6, float a7)
{
  v7 = a3[2];
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    v17 = a7 * a7;
    v18 = -a7;
    do
    {
      v19 = (*a3 + 8 * v15);
      v20 = a4[2];
      v21 = v16;
      if (v20 > v16)
      {
        v22 = (*a4 + 8 * v16 + 4);
        do
        {
          if (*v22 >= (v19[1] - a7))
          {
            break;
          }

          ++v21;
          v22 += 2;
        }

        while (v20 > v21);
        v16 = v21;
        v21 = v21;
      }

      if (v20 > v21)
      {
        v23 = 0;
        v24 = 0;
        v25 = (*a2 + 32 * v21 + 16);
        v26 = (*a4 + 8 * v21 + 4);
        v27 = a5;
        do
        {
          v28 = v19[1] - *v26;
          if (v28 < v18)
          {
            break;
          }

          if (((v28 * v28) + ((*v19 - *(v26 - 1)) * (*v19 - *(v26 - 1)))) <= v17)
          {
            v29 = vaddq_s8(vcntq_s8(veorq_s8(*v25, *(*a1 + 32 * v15 + 16))), vcntq_s8(veorq_s8(v25[-1], *(*a1 + 32 * v15))));
            *v29.i8 = vadd_s8(*&vextq_s8(v29, v29, 8uLL), *v29.i8);
            *v29.i8 = vpadd_s8(*v29.i8, *v29.i8);
            v30 = vpadd_s8(*v29.i8, *v29.i8).u16[0];
            v31 = v30 + HIBYTE(v30);
            v32 = v31 > v27;
            v33 = v31 <= v27;
            if (v31 < v27)
            {
              v27 = v30 + HIBYTE(v30);
            }

            if (!v32)
            {
              v24 = v21;
            }

            v23 |= v33;
          }

          ++v21;
          v25 += 2;
          v26 += 2;
        }

        while (v20 > v21);
        if (v23)
        {
          *&v34 = __PAIR64__(v24, v15);
          *(&v34 + 3) = v27;
          DWORD2(v34) = 0;
          sub_254B599E4(a6, &v34);
          v7 = a3[2];
        }
      }

      ++v15;
    }

    while (v7 > v15);
  }
}

void sub_254B599E4(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_254B32E20();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_254B36108(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void sub_254B59ABC(int8x16_t **a1, void *a2, uint64_t *a3, void *a4, float a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = *a7;
  v8 = a7[1];
  if (v8 != *a7)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v21 = *(v9 + 16 * v17);
      if ((sub_254B596D4((*a2 + 32 * DWORD1(v21)), a1, (*a4 + 8 * DWORD1(v21)), a3, &v22, &v23, *(&v21 + 3), a5) & 1) == 0 && v23 == v21)
      {
        LODWORD(v20) = v22.i32[1];
        LODWORD(v19) = v22.i32[0];
        if (v20 * 0.7 > v19)
        {
          sub_254B599E4(a8, &v21);
          v9 = *a7;
          v8 = a7[1];
        }
      }

      v17 = v18++;
    }

    while (v17 < (v8 - v9) >> 4);
  }
}

void *sub_254B59BF8(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **sub_254B59C2C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_254B59C64(id *a1, void *a2, float *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v31 = *a1;
  v6 = [v31 count];
  sub_254B59FC8(&v38, v6);
  sub_254B59FC8(&__p, v6);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v31;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v8)
  {
    LODWORD(v9) = 0;
    v10 = *v33;
LABEL_3:
    v11 = 0;
    v9 = v9;
    while (1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v32 + 1) + 8 * v11);
      v13 = [v7 objectForKeyedSubscript:v12];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_InvalidCoefDic.isa, v12);
        goto LABEL_22;
      }

      [v13 floatValue];
      v15 = v14;

      v16 = 1.0;
      if (([v12 isEqualToString:@"_intercept"] & 1) == 0)
      {
        v13 = [v5 objectForKeyedSubscript:v12];
        if (!v13)
        {
          v27 = 4294962976;
          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSLog(&cfstr_InvalidInputDi.isa, v12);
LABEL_22:
          v27 = 4294962977;
LABEL_23:

          v18 = __p;
          v28 = NAN;
          goto LABEL_26;
        }

        [v13 floatValue];
        v16 = v17;
      }

      *(v38 + v9) = v15;
      *(__p + v9++) = v16;
      if (v8 == ++v11)
      {
        v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = __p;
  v19 = (v37 - __p) >> 2;
  v20 = v38;
  if (((v39 - v38) >> 2) < v19)
  {
    LODWORD(v19) = (v39 - v38) >> 2;
  }

  if (v19 < 1)
  {
    v22 = 0.0;
  }

  else
  {
    v21 = 4 * v19;
    v22 = 0.0;
    v23 = __p;
    do
    {
      v24 = *v20++;
      v25 = v24;
      v26 = *v23++;
      v22 = v22 + (v25 * v26);
      v21 -= 4;
    }

    while (v21);
  }

  v29 = expf(v22);
  v27 = 0;
  v28 = v29 / (v29 + 1.0);
LABEL_26:
  *a3 = v28;
  if (v18)
  {
    v37 = v18;
    operator delete(v18);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  return v27;
}

void sub_254B59F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void *sub_254B59FC8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B33800(result, a2);
  }

  return result;
}

void sub_254B5A024(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_254B5A040(uint64_t a1, __CLPK_real *a2, uint64_t a3, uint64_t a4, float *a5, unsigned int a6, float *a7)
{
  sub_254B78290(a2, a3, a4, a5, a6);

  return sub_254B785BC(a1, a2, 2 * a6, 9u, a7);
}

float sub_254B5A0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[9] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = vcvtq_f64_f32(*a1);
  v6 = vcvt_hight_f64_f32(*a1);
  v18[2] = vcvtq_f64_f32(*v4.f32);
  v18[3] = vcvt_hight_f64_f32(v4);
  v18[0] = v5;
  v18[1] = v6;
  v7 = *(a2 + 16);
  v8 = vcvtq_f64_f32(*a2);
  v9 = vcvt_hight_f64_f32(*a2);
  v17[2] = vcvtq_f64_f32(*v7.f32);
  v17[3] = vcvt_hight_f64_f32(v7);
  v17[0] = v8;
  v17[1] = v9;
  if (sub_254B78968(v18, v17, v19))
  {
    for (i = 0; i != 9; ++i)
    {
      v12 = *&v19[i];
      *(a3 + 4 * i) = v12;
    }

    v13 = *(a3 + 8);
    v14 = *(a3 + 4);
    v16 = *(a3 + 20);
    v15 = *(a3 + 24);
    *(a3 + 4) = *(a3 + 12);
    *(a3 + 8) = v15;
    *(a3 + 12) = v14;
    result = *(a3 + 28);
    *(a3 + 20) = result;
    *(a3 + 24) = v13;
    *(a3 + 28) = v16;
  }

  return result;
}

void **sub_254B5A270(void **result, unsigned int a2)
{
  if (*result < a2)
  {
    v2 = result;
    *result = a2;
    *(result + 1) = 2 * a2;
    result[2] = malloc_type_realloc(result[2], 4 * *(result + 2) * (2 * a2), 0x100004052888210uLL);
    v2[8] = malloc_type_realloc(v2[8], 8 * *v2, 0x100004052888210uLL);
    v2[9] = malloc_type_realloc(v2[9], 8 * *v2, 0x100004052888210uLL);
    result = malloc_type_realloc(v2[10], 4 * *v2, 0x100004052888210uLL);
    v2[10] = result;
  }

  return result;
}

void sub_254B5A31C(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
      a1[2] = 0;
    }

    v3 = a1[8];
    if (v3)
    {
      free(v3);
      a1[8] = 0;
    }

    v4 = a1[9];
    if (v4)
    {
      free(v4);
      a1[9] = 0;
    }

    v5 = a1[10];
    if (v5)
    {
      free(v5);
      a1[10] = 0;
    }

    v6 = a1[20];
    if (v6)
    {
      sub_254B78234(v6);
    }

    free(a1);
  }
}

float sub_254B5A4B0(uint64_t a1, uint64_t a2, float *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 0;
    do
    {
      v5 = 4 * v4;
      v6 = v4 + 1;
      v7 = *(a1 + 4 * (v4 + 1));
      *(a1 + v5) = *(a1 + v5) - *a3;
      *(a1 + 4 * v6) = v7 - a3[1];
      v8 = *(a2 + 4 * (v4 + 1));
      *(a2 + v5) = *(a2 + v5) - a3[2];
      *(a2 + 4 * v6) = v8 - a3[3];
      v4 += 2;
    }

    while (2 * a4 != v4);
    v9 = 0;
    do
    {
      v10 = 4 * v9;
      v11 = v9 + 1;
      v12 = *(a1 + 4 * (v9 + 1));
      *(a1 + v10) = a3[4] * *(a1 + v10);
      *(a1 + 4 * v11) = a3[4] * v12;
      v13 = *(a2 + 4 * (v9 + 1));
      *(a2 + v10) = a3[5] * *(a2 + v10);
      result = a3[5] * v13;
      *(a2 + 4 * v11) = result;
      v9 += 2;
    }

    while (2 * a4 != v9);
  }

  return result;
}

uint64_t sub_254B5A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v26 = *MEMORY[0x277D85DE8];
  *a2 = *(a1 + 16);
  *(a2 + 4) = 0;
  *(a2 + 8) = -(*(a1 + 16) * *a1);
  *(a2 + 12) = 0;
  v6 = *(a1 + 16);
  *(a2 + 16) = v6;
  *(a2 + 20) = -(v6 * *(a1 + 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 1065353216;
  *a3 = 1.0 / *(a1 + 20);
  *(a3 + 4) = 0;
  *(a3 + 8) = *(a1 + 8);
  *(a3 + 12) = 0;
  *(a3 + 16) = 1.0 / *(a1 + 20);
  *(a3 + 20) = *(a1 + 12);
  *(a3 + 24) = 0;
  *(a3 + 32) = 1065353216;
  do
  {
    v7 = 0;
    v8 = a5;
    do
    {
      v9 = 0;
      v10 = 0.0;
      v11 = v8;
      do
      {
        v12 = *v11;
        v11 += 3;
        v10 = v10 + (*(a3 + v9) * v12);
        v9 += 4;
      }

      while (v9 != 12);
      *(&v23 + 3 * v5 + v7++) = v10;
      ++v8;
    }

    while (v7 != 3);
    ++v5;
    a3 += 12;
  }

  while (v5 != 3);
  v13 = 0;
  v14 = v24;
  *a4 = v23;
  *(a4 + 16) = v14;
  *(a4 + 32) = v25;
  do
  {
    v15 = 0;
    v16 = a2;
    do
    {
      v17 = 0;
      v18 = 0.0;
      v19 = v16;
      do
      {
        v20 = *v19;
        v19 += 3;
        v18 = v18 + (*(a4 + v17) * v20);
        v17 += 4;
      }

      while (v17 != 12);
      *(&v23 + 3 * v13 + v15++) = v18;
      ++v16;
    }

    while (v15 != 3);
    ++v13;
    a4 += 12;
  }

  while (v13 != 3);
  v21 = v24;
  *a5 = v23;
  *(a5 + 16) = v21;
  *(a5 + 32) = v25;
  return 1;
}

_DWORD *sub_254B5A728(int a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v2[2] = a1 * a1;
  v2[3] = a1;
  v3 = malloc_type_malloc(32 * (a1 * a1), 0x1010040ED1E20F3uLL);
  *v2 = v3;
  if (v2[2])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      *&v3[v4] = v5;
      v6 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
      v3 = *v2;
      v7 = *v2 + v4;
      *(v7 + 8) = v6;
      *(v7 + 20) = 256;
      ++v5;
      v4 += 32;
    }

    while (v5 < v2[2]);
  }

  return v2;
}

void sub_254B5A7F8(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  v6 = a1[2];
  if (v6)
  {
    v7 = (v6 + 3) & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_254B8B0E0;
    v10 = xmmword_254B8AAC0;
    v11 = (*a1 + 80);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 16) = 0;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 8) = 0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = 0;
        v11[8] = 0;
      }

      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 32;
      v7 -= 4;
    }

    while (v7);
  }

  sub_254B5AA74(a2, a3, &v39);
  v38 = a3;
  if (a3)
  {
    v14 = 0;
    v15 = *a1;
    v16 = a1[3];
    v18 = v39;
    v17 = v40;
    v19 = v16 / (v42 - v40);
    v20 = v16 - 1;
    v21 = 1;
    v22 = v16 / (v41 - v39);
    do
    {
      v23 = (v19 * (*(a2 + 4 * v21) - v17));
      if (v20 < v23)
      {
        v23 = v16 - 1;
      }

      v24 = (v22 * (*(a2 + 4 * (v21 - 1)) - v18));
      if (v20 < v24)
      {
        v24 = v16 - 1;
      }

      v25 = v15 + 32 * (v24 + v23 * v16);
      v26 = *(v25 + 16);
      if (v26 == *(v25 + 20))
      {
        v27 = 2 * v26;
        *(v25 + 20) = v27;
        v28 = malloc_type_realloc(*(v25 + 8), 4 * v27, 0x100004052888210uLL);
        *(v25 + 8) = v28;
        v26 = *(v25 + 16);
      }

      else
      {
        v28 = *(v25 + 8);
      }

      *(v25 + 16) = v26 + 1;
      v28[v26] = v14++;
      v21 += 2;
    }

    while (v38 != v14);
  }

  sub_254B5AA74(a2, v38, &v39);
  v29 = *a1;
  v30 = a1[2];
  if (v30)
  {
    v31 = 0;
    v32 = v38;
    v33 = v29 + 7;
    v34 = a1[2];
    do
    {
      v35 = *(v33 - 3);
      if (v35)
      {
        v36 = v31 / v32;
        v31 += v35;
        v37 = v31 / v32;
      }

      else
      {
        v36 = -1.0;
        v37 = -1.0;
      }

      *(v33 - 1) = v36;
      *v33 = v37;
      v33 += 8;
      --v34;
    }

    while (v34);
  }

  else
  {
    v30 = 0;
  }

  qsort(v29, v30, 0x20uLL, sub_254B5AB50);
}

float sub_254B5AA74(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *a3 = xmmword_254B8B550;
  if (a2)
  {
    v3 = a2;
    v4 = (a1 + 4);
    v5 = 3.4028e38;
    v6 = -3.4028e38;
    v7 = -3.4028e38;
    v8 = 3.4028e38;
    do
    {
      v9 = *(v4 - 1);
      if ((v8 - v9) > 0.00000011921)
      {
        *a3 = v9;
        v8 = v9;
      }

      v10 = *v4;
      if ((v5 - *v4) > 0.00000011921)
      {
        *(a3 + 4) = v10;
        v5 = v10;
      }

      v11 = *(v4 - 1);
      if ((v7 - v11) < -0.00000011921)
      {
        *(a3 + 8) = v11;
        v7 = v11;
      }

      v12 = *v4;
      if ((v6 - *v4) < -0.00000011921)
      {
        *(a3 + 12) = v12;
        v6 = v12;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = 3.4028e38;
    v6 = -3.4028e38;
    v7 = -3.4028e38;
    v8 = 3.4028e38;
  }

  *a3 = floorf(v8);
  *(a3 + 4) = floorf(v5);
  result = ceilf(v7);
  *(a3 + 8) = result;
  *(a3 + 12) = ceilf(v6);
  return result;
}

uint64_t sub_254B5AB50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if ((v2 - v3) < -0.00000011921)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v3 - v2) < -0.00000011921;
  }
}

void sub_254B5AB78(void **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v2 + 1;
    do
    {
      v5 = *v4;
      v4 += 4;
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(v2);

  free(a1);
}

void sub_254B5ABDC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v9 = *a1;
    v10 = v5;
    while ((v9[6] + 0.5) <= 0.00000011921)
    {
      v9 += 8;
      if (!--v10)
      {
        return;
      }
    }

    v11 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
    if (a3)
    {
      v12 = 0;
      do
      {
        __key = 0.0;
        __key = (sub_254B5694C(a2) * 0.999) + 0.001;
        v13 = bsearch(&__key, v9, v10, 0x20uLL, sub_254B5AD3C);
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v9;
        }

        v15 = *v14;
        if (v12 >= v10 || (v11[v15] & 1) == 0)
        {
          v11[v15] = 1;
          *(a4 + 4 * v12++) = *(*(v14 + 1) + 4 * sub_254B568E0(a2, 0, (*(v14 + 4) - 1)));
        }
      }

      while (v12 < a3);
    }

    free(v11);
  }
}

uint64_t sub_254B5AD3C(float *a1, uint64_t a2)
{
  if ((*a1 - *(a2 + 24)) < -0.00000011921)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*a1 - *(a2 + 28)) > 0.00000011921;
  }
}

void sub_254B5AE5C(_Unwind_Exception *exception_object)
{
  v7 = v1[16];
  if (v7)
  {
    v1[17] = v7;
    operator delete(v7);
  }

  v8 = v1[15];
  if (v8)
  {
    sub_254B4186C(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v1[9] = v10;
    operator delete(v10);
  }

  v11 = *v4;
  if (*v4)
  {
    v1[6] = v11;
    operator delete(v11);
  }

  v12 = *v5;
  if (*v5)
  {
    v1[3] = v12;
    operator delete(v12);
  }

  v13 = v1[1];
  if (v13)
  {
    sub_254B4186C(v13);
  }

  _Unwind_Resume(exception_object);
}

sparse_dimension sub_254B5AED4(uint64_t a1)
{
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(*a1);
  result = sparse_get_matrix_number_of_columns(*a1);
  if (matrix_number_of_rows == (*(a1 + 24) - *(a1 + 16)) >> 3)
  {
    v4 = result;
    if (result == (*(a1 + 72) - *(a1 + 64)) >> 3 && result == (*(a1 + 96) - *(a1 + 88)) >> 3 && matrix_number_of_rows == (*(a1 + 48) - *(a1 + 40)) >> 2)
    {
      __src = 0;
      v22 = 0;
      v23 = 0;
      if (result)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          if (*(*(a1 + 88) + 8 * v6) != INFINITY)
          {
            if (v5 >= v23)
            {
              v7 = __src;
              v8 = v5 - __src;
              v9 = (v5 - __src) >> 2;
              v10 = v9 + 1;
              if ((v9 + 1) >> 62)
              {
                sub_254B32E20();
              }

              v11 = v23 - __src;
              if ((v23 - __src) >> 1 > v10)
              {
                v10 = v11 >> 1;
              }

              if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v12 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v12 = v10;
              }

              if (v12)
              {
                sub_254B3383C(&__src, v12);
              }

              v13 = (v5 - __src) >> 2;
              v14 = (4 * v9);
              v15 = (4 * v9 - 4 * v13);
              *v14 = v6;
              v5 = (v14 + 1);
              memcpy(v15, v7, v8);
              v16 = __src;
              __src = v15;
              v22 = v5;
              v23 = 0;
              if (v16)
              {
                operator delete(v16);
              }
            }

            else
            {
              *v5 = v6;
              v5 += 4;
            }

            v22 = v5;
          }

          ++v6;
        }

        while (v4 != v6);
      }

      v17 = sub_254B5B6A0(a1);
      v19 = sparse_matrix_create_double(v17, v18);
      sub_254B5BA58(__p, v19);
    }
  }

  *(a1 + 152) = 1;
  return result;
}

void sub_254B5B2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_254B5B318@<D0>(uint64_t a1@<X0>, const void **a2@<X1>, double **a3@<X8>)
{
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(*a1);
  sub_254B3F9BC(a3, matrix_number_of_columns);
  if (matrix_number_of_columns)
  {
    memmove(*a3, *a2, 8 * matrix_number_of_columns);
    v8 = *(a1 + 64);
    v9 = *a3;
    do
    {
      v10 = *v8++;
      result = v10 + *v9;
      *v9++ = result;
      --matrix_number_of_columns;
    }

    while (matrix_number_of_columns);
  }

  return result;
}

void sub_254B5B3A4(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_254B35A88(a3, *a2, a2[1], (a2[1] - *a2) >> 3);
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(*(a1 + 112));
  sub_254B39D6C(a3, matrix_number_of_columns);
}

void sub_254B5B3FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B5B418(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(*(a1 + 112));
  v7 = sparse_get_matrix_number_of_columns(*(a1 + 112));
  v8 = sparse_matrix_create_double(matrix_number_of_columns, v7);
  sparse_set_matrix_property(v8, SPARSE_UPPER_SYMMETRIC);
  sub_254B62270(v8, 0, 0, a2, 0, 1.0, 0.0);

  sub_254B5BA58(a3, v8);
}

void *sub_254B5B4AC@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(*a1);
  v7 = matrix_number_of_columns;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      if (*v8++)
      {
        ++v10;
      }
    }

    while (v8 != v9);
  }

  result = sub_254B3F9BC(a3, 2 * matrix_number_of_columns);
  if (v7)
  {
    v13 = *a2;
    v14 = *a3;
    v15 = v7;
    do
    {
      v16 = *v13++;
      *v14++ = v16;
      --v15;
    }

    while (v15);
    v17 = 0;
    v18 = *(a1 + 88);
    v19 = &(*a2)[v7 + v10];
    v20 = (*a3 + 8 * v7);
    do
    {
      if (*v18 == INFINITY)
      {
        *v20 = 0xBFF0000000000000;
      }

      else
      {
        *v20 = *(v19 + 8 * v17++);
      }

      ++v20;
      ++v18;
      --v7;
    }

    while (v7);
  }

  return result;
}

sparse_dimension sub_254B5B5B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(*a1);
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(*a1);
  sub_254B3F9BC(a3, matrix_number_of_rows);
  v8 = 0;
  v9 = 0;
  while (1)
  {
    result = sparse_get_matrix_number_of_rows(*a1);
    if (v8 >= result)
    {
      break;
    }

    if (*(*(a1 + 40) + 4 * v8))
    {
      v11 = *(*a2 + 8 * matrix_number_of_columns + 8 * v9);
      if (v11 < 0.0)
      {
        v11 = -v11;
      }

      *(*a3 + 8 * v8) = v11;
      ++v9;
    }

    else
    {
      *(*a3 + 8 * v8) = 0xBFF0000000000000;
    }

    ++v8;
  }

  return result;
}

void sub_254B5B684(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

sparse_dimension sub_254B5B6A0(uint64_t a1)
{
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(*a1);
  sparse_get_matrix_number_of_columns(*a1);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      if (*v3++)
      {
        ++v5;
      }
    }

    while (v3 != v4);
  }

  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v7++;
      LODWORD(v11) = v10 < INFINITY;
      if (v10 > INFINITY)
      {
        v11 = 1;
      }

      else
      {
        v11 = v11;
      }

      v9 += v11;
    }

    while (v7 != v8);
  }

  return v9 + matrix_number_of_rows;
}

uint64_t sub_254B5B748(uint64_t a1, const double **a2, char a3, double a4)
{
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(*a1);
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(*a1);
  v10 = *a1;
  v35[0] = 0;
  sub_254B3F9BC(v36, matrix_number_of_columns);
  if (matrix_number_of_columns)
  {
    v11 = *a2;
    v12 = *(a1 + 64);
    v13 = v36[0];
    LOBYTE(v14) = 1;
    v15 = *(a1 + 88);
    do
    {
      v16 = *v11;
      if (*v11 < *v12)
      {
        *v13 = *v12 - v16 + *v13;
        v16 = *v11;
      }

      v17 = *v15;
      if (v16 > *v15)
      {
        *v13 = v16 - v17 + *v13;
        v16 = *v11;
        v17 = *v15;
      }

      v18 = *v12++;
      v19 = (v16 >= v18 - a4) & v14;
      if (v16 > v17 + a4)
      {
        v14 = 0;
      }

      else
      {
        v14 = v19;
      }

      ++v13;
      ++v15;
      ++v11;
      --matrix_number_of_columns;
    }

    while (matrix_number_of_columns);
  }

  else
  {
    v14 = 1;
  }

  sub_254B35394(v35, matrix_number_of_rows);
  sub_254B61F14(v10, a2, v35, CblasNoTrans);
  sub_254B3F9BC(__p, matrix_number_of_rows);
  if (matrix_number_of_rows)
  {
    v20 = *(a1 + 40);
    v21 = v35[0];
    v22 = __p[0];
    v23 = 1;
    v24 = *(a1 + 16);
    while (1)
    {
      v26 = *v20++;
      v25 = v26;
      v27 = *v21;
      v28 = *v24;
      if (v26 == -1)
      {
        if (v27 < v28)
        {
          *v22 = v28 - v27;
          v27 = *v21;
          v28 = *v24;
        }

        if (v27 >= v28 - a4)
        {
          goto LABEL_21;
        }
      }

      else if (v25 == 1)
      {
        if (v27 > v28)
        {
          *v22 = v27 - v28;
          v27 = *v21;
          v28 = *v24;
        }

        if (v27 <= v28 + a4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v22 = vabdd_f64(v27, v28);
        if (vabdd_f64(*v21, *v24) <= a4)
        {
          goto LABEL_21;
        }
      }

      v23 = 0;
LABEL_21:
      ++v22;
      ++v24;
      ++v21;
      if (!--matrix_number_of_rows)
      {
        goto LABEL_30;
      }
    }
  }

  v23 = 1;
LABEL_30:
  if (a3)
  {
    puts("\nChecking nonstandard constraints:");
    if (v14)
    {
      v29 = "lb < x < ub? true";
    }

    else
    {
      v29 = "lb < x < ub? false";
    }

    puts(v29);
    if (v23)
    {
      v30 = "Ax (?) b? true";
    }

    else
    {
      v30 = "Ax (?) b? false";
    }

    puts(v30);
    v31 = sub_254B61FD0(v36);
    printf("||(lb-x)_+ + (x-ub)_+||_1 = %f\n", v31);
    v32 = sub_254B61FD0(__p);
    printf("||Ax (?) b||_2 = %f\n", v32);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  return v14 & v23;
}

void sub_254B5BA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B5BAC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_begin_catch(a1);
  sub_254B5BAF4(&a13, v13);
  __cxa_rethrow();
}

uint64_t sub_254B5BAF4(int a1, void *A)
{
  if (A)
  {
    return sparse_matrix_destroy(A);
  }

  return result;
}

void sub_254B5BB1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C24E00);
}

void *sub_254B5BB54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return sparse_matrix_destroy(result);
  }

  return result;
}

uint64_t sub_254B5BB78(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700E10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254B5BBB8(uint64_t a1, void **a2)
{
  *a1 = &unk_286700AA0;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 40) = 0;
  v4 = (a1 + 40);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v5 = *a2;
  *a2 = 0;
  sub_254B5CD3C((a1 + 40), v5);
  if (((*v4)[19] & 1) == 0)
  {
    *(a1 + 16) = sparse_get_matrix_number_of_columns((*v4)[14]);
    *v3 = sparse_get_matrix_number_of_rows(*(*(a1 + 40) + 112));
    *(a1 + 24) = sparse_get_matrix_number_of_columns(**v4);
  }

  return a1;
}

void sub_254B5BC64(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_254B5CD3C(v3, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_254B5BC88(void *a1)
{
  v1 = a1[5];
  if (v1 && *(v1 + 152) == 1)
  {
    puts("Bad constraint dimensions.");
    return 1;
  }

  v3 = a1[2];
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C24C50](exception, "ERROR: n = 0.");
    goto LABEL_9;
  }

  if (a1[1] > v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C24C50](exception, "ERROR: require m <= n.");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0;
}

double sub_254B5BD50(uint64_t *a1, const void **a2)
{
  v3 = sub_254B5B318(a1[5], a2, __p);
  v4 = (*(*a1 + 80))(a1, __p, v3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

void sub_254B5BDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B5BDEC(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = sub_254B5B318(a1[5], a2, __p);
  v6 = (*(*a1 + 88))(a1, __p, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_254B5B3A4(a1[5], v6, a3);
}

void sub_254B5BE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B5BE98(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*a1 + 24))(a1);
  v7 = a1[5];
  if (v6)
  {
    v8 = (*(*a1 + 96))(a1, a2);

    sub_254B5B418(v7, v8, a3);
  }

  v9 = sub_254B5B318(a1[5], a2, &__p);
  v10 = (*(*a1 + 96))(a1, &__p, v9);
  sub_254B5B418(v7, v10, a3);
}

void sub_254B5BFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B5BFD0(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 104))(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_254B35A88(a2, *v4, v4[1], (v4[1] - *v4) >> 3);
  sub_254B39D6C(a2, a1[2]);
}

void sub_254B5C040(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_254B5C05C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_254B5CC0C(a4, a2);
  v8 = sub_254B5BD50(a1, (a2 + 8));
  *(a4 + 80) = v8;
  if (a3)
  {
    printf("\nObjective value = %0.16f\n", v8);
  }

  sub_254B5B318(a1[5], (a2 + 8), &v13);
  v9 = *(a4 + 8);
  if (v9)
  {
    *(a4 + 16) = v9;
    operator delete(v9);
  }

  *(a4 + 8) = v13;
  *(a4 + 24) = v14;
  sub_254B5B4AC(a1[5], (a2 + 56), &v13);
  v10 = *(a4 + 56);
  if (v10)
  {
    *(a4 + 64) = v10;
    operator delete(v10);
  }

  *(a4 + 56) = v13;
  *(a4 + 72) = v14;
  sub_254B5B5B4(a1[5], (a2 + 56), &v13);
  v11 = *(a4 + 32);
  if (v11)
  {
    *(a4 + 40) = v11;
    operator delete(v11);
  }

  result = *&v13;
  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  return result;
}

void *sub_254B5C180(void *a1, void **a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = 0;
  v12 = v5;
  sub_254B5BBB8(a1, &v12);
  if (v12)
  {
    v6 = sub_254B3FA94(v12);
    MEMORY[0x259C24E00](v6, 0x10B0C40BD2A282ELL);
  }

  *a1 = &unk_286700A00;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_254B35A88((a1 + 6), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  v7 = sparse_matrix_create_double(a1[3], a1[3]);
  a1[9] = v7;
  sparse_set_matrix_property(v7, SPARSE_UPPER_SYMMETRIC);
  sub_254B3F9BC(&v10, a1[2]);
  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
    a1[10] = 0;
    a1[11] = 0;
    a1[12] = 0;
  }

  *(a1 + 5) = v10;
  a1[12] = v11;
  return a1;
}

void sub_254B5C288(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v6;
    operator delete(v6);
  }

  *v1 = &unk_286700AA0;
  sub_254B5CD3C((v1 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_254B5C2F8(uint64_t a1)
{
  *a1 = &unk_286700A00;
  v2 = *(a1 + 72);
  if (v2)
  {
    sparse_matrix_destroy(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  *a1 = &unk_286700AA0;
  sub_254B5CD3C((a1 + 40), 0);
  return a1;
}

void sub_254B5C398(uint64_t a1)
{
  sub_254B5C2F8(a1);

  JUMPOUT(0x259C24E00);
}

BOOL sub_254B5C430(void *a1)
{
  if (a1[2] <= a1[1])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    matrix_nonzero_count_for_column = sparse_get_matrix_nonzero_count_for_column(*(a1[5] + 112), v2);
    result = matrix_nonzero_count_for_column == 0;
    if (!matrix_nonzero_count_for_column)
    {
      break;
    }

    ++v2;
  }

  while (a1[2] > v2);
  return result;
}

void sub_254B5C49C(void *a1)
{
  v2 = MEMORY[0x277D82678];
  sub_254B47EE0(MEMORY[0x277D82678], "A = ", 4);
  sub_254B61D90(*(a1[5] + 112), 1);
  sub_254B47EE0(v2, "b = ", 4);
  v3 = a1[5];
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_254B35A88(&__p, *(v3 + 128), *(v3 + 136), (*(v3 + 136) - *(v3 + 128)) >> 3);
  sub_254B61CF4(&__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  sub_254B47EE0(MEMORY[0x277D82678], "c = ", 4);
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_254B35A88(&v4, a1[6], a1[7], (a1[7] - a1[6]) >> 3);
  sub_254B61CF4(&v4);
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_254B5C594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    *v12 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B5C5C4(void *a1, void **a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  *a2 = 0;
  v14 = v7;
  sub_254B5BBB8(a1, &v14);
  if (v14)
  {
    v8 = sub_254B3FA94(v14);
    MEMORY[0x259C24E00](v8, 0x10B0C40BD2A282ELL);
  }

  *a1 = &unk_2867008F0;
  a1[6] = a3;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  sub_254B35A88((a1 + 7), *a4, a4[1], (a4[1] - *a4) >> 3);
  a1[10] = 0;
  v9 = (a1 + 10);
  a1[11] = 0;
  a1[12] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_254B3F9BC(&v12, a1[3]);
    v10 = *v9;
    if (*v9)
    {
      a1[11] = v10;
      operator delete(v10);
      *v9 = 0;
      a1[11] = 0;
      a1[12] = 0;
    }

    *(a1 + 5) = v12;
    a1[12] = v13;
    sub_254B5C780(a1);
  }

  return a1;
}

void sub_254B5C704(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 120) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v8;
    operator delete(v8);
  }

  *v1 = &unk_286700AA0;
  sub_254B5CD3C((v1 + 40), 0);
  _Unwind_Resume(a1);
}

void sub_254B5C780(uint64_t *a1)
{
  v2 = a1[2];
  A = 0;
  sub_254B3F9BC(&__p, v2);
  sub_254B39D6C(a1 + 14, a1[2]);
  sub_254B5BE98(a1, &__p, &A);
}

void sub_254B5C824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B5C85C(uint64_t a1)
{
  *a1 = &unk_2867008F0;
  v2 = *(a1 + 48);
  if (v2)
  {
    sparse_matrix_destroy(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    *(a1 + 64) = v5;
    operator delete(v5);
  }

  *a1 = &unk_286700AA0;
  sub_254B5CD3C((a1 + 40), 0);
  return a1;
}

void sub_254B5C90C(uint64_t a1)
{
  sub_254B5C85C(a1);

  JUMPOUT(0x259C24E00);
}

double sub_254B5C944(uint64_t a1, const double **a2)
{
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(*(a1 + 48));
  sub_254B35394(__p, matrix_number_of_rows);
  sub_254B61F14(*(a1 + 48), a2, __p, CblasNoTrans);
  v5 = sub_254B61F90(a2, __p);
  v6 = sub_254B61F90(a1 + 56, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v6 + v5 * 0.5;
}

void sub_254B5C9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B5C9FC(uint64_t a1, const double **a2)
{
  sub_254B61F14(*(a1 + 48), a2, a1 + 80, CblasNoTrans);
  sub_254B6204C(a1 + 80, (a1 + 56), 1.0);
  return a1 + 80;
}

void sub_254B5CA48(uint64_t a1)
{
  v2 = MEMORY[0x277D82678];
  sub_254B47EE0(MEMORY[0x277D82678], "A = ", 4);
  sub_254B61D90(*(*(a1 + 40) + 112), 1);
  sub_254B47EE0(v2, "b = ", 4);
  v3 = *(a1 + 40);
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_254B35A88(&__p, *(v3 + 128), *(v3 + 136), (*(v3 + 136) - *(v3 + 128)) >> 3);
  sub_254B61CF4(&__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v4 = MEMORY[0x277D82678];
  sub_254B47EE0(MEMORY[0x277D82678], "Q = ", 4);
  sub_254B61D90(*(a1 + 48), 1);
  sub_254B47EE0(v4, "c = ", 4);
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_254B35A88(&v5, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 3);
  sub_254B61CF4(&v5);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }
}

void sub_254B5CB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    *v12 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B5CC0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_254B35A88(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_254B35A88(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_254B35A88(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v4;
  return a1;
}

void sub_254B5CCB4(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B5CCE8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_254B5CD3C(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_254B3FA94(result);

    JUMPOUT(0x259C24E00);
  }

  return result;
}

uint64_t sub_254B5CD88(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, double a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = clock();
  Current = CFAbsoluteTimeGetCurrent();
  if ((*(*a1 + 48))(a1))
  {
    if (a3)
    {
      puts("Bad input, giving up.");
    }

    v14 = 3;
    *a4 = 3;
    sub_254B5D0D4(a4);
  }

  else
  {
    sub_254B4B334(v37, a1, a5, a3, 0.0, 0.0001);
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    *v32 = 0u;
    sub_254B4C0FC(v37, a2, &v31);
    v14 = v31;
    if (v31)
    {
      *a4 = v31;
    }

    else
    {
      (*(*a1 + 56))(&v22, a1, &v31, a3, a6);
      *a4 = v22;
      v15 = *(a4 + 1);
      if (v15)
      {
        *(a4 + 2) = v15;
        operator delete(v15);
        *(a4 + 1) = 0;
        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
      }

      v16 = *(a4 + 4);
      *(a4 + 2) = *v23;
      *(a4 + 3) = v24;
      v23[1] = 0;
      v24 = 0;
      v23[0] = 0;
      if (v16)
      {
        *(a4 + 5) = v16;
        operator delete(v16);
        *(a4 + 4) = 0;
        *(a4 + 5) = 0;
        *(a4 + 6) = 0;
      }

      v17 = *(a4 + 7);
      *(a4 + 2) = *__p;
      *(a4 + 6) = v26;
      __p[1] = 0;
      v26 = 0;
      __p[0] = 0;
      if (v17)
      {
        *(a4 + 8) = v17;
        operator delete(v17);
        *(a4 + 7) = 0;
        *(a4 + 8) = 0;
        *(a4 + 9) = 0;
        v17 = __p[0];
      }

      *(a4 + 14) = v27;
      *(a4 + 9) = v28;
      v28 = 0;
      v27 = 0uLL;
      *(a4 + 5) = v29;
      *(a4 + 12) = v30;
      if (v17)
      {
        __p[1] = v17;
        operator delete(v17);
      }

      if (v23[0])
      {
        v23[1] = v23[0];
        operator delete(v23[0]);
      }

      if ((sub_254B5C174(a1, a4, a3, a6) & 1) == 0)
      {
        if (a3)
        {
          puts("ConvexSolver: solution violates constraints (probably infeasible).");
        }

        *a4 = 5;
      }

      v18 = clock();
      v19 = CFAbsoluteTimeGetCurrent();
      if (a3)
      {
        v20 = v19 - Current;
        printf("Total CPU  time    : %f s\n", (v18 - v12) / 1000000.0);
        printf("Total wall time    : %f s\n\n", v20);
      }

      sub_254B5D0D4(a4);
      v14 = *a4;
    }

    if (v35)
    {
      *(&v35 + 1) = v35;
      operator delete(v35);
    }

    if (*(&v33 + 1))
    {
      *&v34 = *(&v33 + 1);
      operator delete(*(&v33 + 1));
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    sub_254B4B3C8(v37);
  }

  return v14;
}

void sub_254B5D0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_254B5CCE8(&a23);
  sub_254B4B3C8(&a36);
  _Unwind_Resume(a1);
}

void sub_254B5D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *a1 = &unk_2867007D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 40) = a9;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  sub_254B4AF74(a1 + 144);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = &unk_254B8B628;
  sub_254B37728(a1 + 336, a8);
  *(a1 + 424) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 368) = 850045863;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 440) = 1018212795;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 32) = 0;
  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    *(a1 + 40) = 5;
  }

  sub_254B7D85C(a1 + 68);
  operator new();
}

void sub_254B5D2F8(_Unwind_Exception *a1)
{
  v3 = v1[61];
  if (v3)
  {
    v1[62] = v3;
    operator delete(v3);
  }

  sub_254B376A8((v1 + 42));
  v4 = v1[40];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_254B4B054((v1 + 18));
  _Unwind_Resume(a1);
}

uint64_t sub_254B5D384(uint64_t a1)
{
  *a1 = &unk_2867007D0;
  pthread_mutex_destroy((a1 + 368));
  pthread_cond_destroy((a1 + 440));
  sub_254B4AFC8(a1 + 144);
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = sub_254B4AEF8(v2);
    MEMORY[0x259C24E00](v3, 0x1020C40A6EEA1E9);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v17 = *(a1 + 56);
    sub_254B36F30(&v17);
    MEMORY[0x259C24E00](v4, 0x20C40960023A9);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v17 = *(a1 + 48);
    sub_254B36F30(&v17);
    MEMORY[0x259C24E00](v5, 0x20C40960023A9);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      sub_254B4186C(v7);
    }

    MEMORY[0x259C24E00](v6, 0x1020C401705F15ELL);
  }

  v8 = *(a1 + 272);
  if (v8)
  {
    v9 = sub_254B53680(v8);
    MEMORY[0x259C24E00](v9, 0x1080C4008018275);
  }

  v10 = *(a1 + 280);
  if (v10)
  {
    j__CFRelease(v10);
  }

  v11 = *(a1 + 288);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 296);
  if (v12)
  {
    CFRelease(v12);
  }

  if (*(a1 + 304))
  {
    v13 = sub_254B78A44();
    MEMORY[0x259C24E00](v13, 0x20C4093837F09);
  }

  sub_254B5D614((a1 + 488));
  v14 = *(a1 + 488);
  if (v14)
  {
    *(a1 + 496) = v14;
    operator delete(v14);
  }

  sub_254B376A8(a1 + 336);
  v15 = *(a1 + 320);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  sub_254B4B054(a1 + 144);
  return a1;
}

void sub_254B5D528(uint64_t a1)
{
  sub_254B5D384(a1);

  JUMPOUT(0x259C24E00);
}

__n128 sub_254B5D560(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 116) = *(a2 + 48);
  *(a1 + 100) = v4;
  *(a1 + 84) = v3;
  *(a1 + 68) = result;
  return result;
}

uint64_t sub_254B5D580(uint64_t a1)
{
  sub_254B5D5C0(a1);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_254B4186C(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_254B4186C(v3);
  }

  return a1;
}

uint64_t sub_254B5D5C0(uint64_t result)
{
  v1 = *(result + 80);
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 80);
    if (v3)
    {
      *(v1 + 88) = v3;
      operator delete(v3);
    }

    result = MEMORY[0x259C24E00](v1, 0x1020C40BD1971B5);
    *(v2 + 80) = 0;
  }

  return result;
}

void *sub_254B5D614(void *result)
{
  v1 = result[1];
  v2 = v1 - *result;
  if ((v2 >> 3) >= 1)
  {
    v3 = result;
    v4 = ((v2 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      result = *(*v3 + 8 * v4);
      if (result)
      {
        v5 = sub_254B5D580(result);
        result = MEMORY[0x259C24E00](v5, 0x1020C4048629F8CLL);
        v1 = v3[1];
      }

      v1 -= 8;
      v3[1] = v1;
      v6 = v4-- + 1;
    }

    while (v6 > 1);
  }

  return result;
}

void sub_254B5D6A0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_254B32E20();
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
      sub_254B33108(a1, v10);
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

uint64_t sub_254B5D800(uint64_t result)
{
  v1 = *(result + 496) - *(result + 488);
  if ((v1 >> 3) >= 1)
  {
    v2 = result;
    v3 = ((v1 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      result = sub_254B5D5C0(*(*(v2 + 488) + 8 * v3));
      v4 = v3-- + 1;
    }

    while (v4 > 1);
  }

  return result;
}

void *sub_254B5D85C(void *result, uint64_t a2, int a3)
{
  v5 = result[1] - *result;
  if ((v5 >> 3) >= 1)
  {
    v17 = v3;
    v18 = v4;
    v8 = result;
    v9 = ((v5 >> 3) & 0x7FFFFFFF) - 1;
    v10 = MEMORY[0x277CC08B0];
    do
    {
      v11 = *(*v8 + 8 * v9);
      if (!*(v11 + 6))
      {
        v13 = *v11;
        time1.epoch = *(v11 + 2);
        *&time1.value = v13;
        v15 = *(*a2 + 28);
        if (CMTimeCompare(&time1, &v15) < 1 || (v14 = *v11, time1.epoch = *(v11 + 2), *&time1.value = v14, v15 = *v10, result = CMTimeCompare(&time1, &v15), !result) && a3)
        {
          sub_254B33150();
        }
      }

      if (!*(v11 + 8))
      {
        time1 = *(v11 + 1);
        v15 = *(*a2 + 28);
        if (CMTimeCompare(&time1, &v15) < 1 || (time1 = *(v11 + 1), v15 = *v10, result = CMTimeCompare(&time1, &v15), !result) && a3)
        {
          sub_254B33150();
        }
      }

      v12 = v9-- + 1;
    }

    while (v12 > 1);
  }

  return result;
}

uint64_t sub_254B5DA40(uint64_t result, void *a2)
{
  v2 = a2[6];
  if (v2 && a2[8])
  {
    v3 = a2[9];
    v6[0] = a2[8];
    v6[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      v2 = a2[6];
    }

    v4 = a2[7];
    v5[0] = v2;
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_254B5DBE8(result, v6, v5);
  }

  return result;
}

void sub_254B5DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a3 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_254B7D750();
}

void sub_254B5DCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_254B4186C(a10);
  }

  if (a12)
  {
    sub_254B4186C(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_254B5DCD4(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  *(a2 + 104) = a1[16];
  v7 = a1[38];
  v8 = *(v7 + 28);
  *(a2 + 128) = *(v7 + 44);
  *(a2 + 112) = v8;
  v9 = a1[40];
  *(a2 + 136) = *v9;
  v10 = *(v9 + 28);
  *(a2 + 160) = *(v9 + 44);
  *(a2 + 144) = v10;
  if (a4)
  {
    operator new();
  }

  a1[37] = 0;
  v11 = sub_254B7B474(a1, a2);
  v12 = v11;
  *(a2 + 72) = v11 > 0.0;
  if (v11 <= 0.0)
  {
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0x3FF0000000000000;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v11 = 0.0;
    *(a2 + 64) = 0x3FF0000000000000;
  }

  *(a2 + 168) = v11;
  v13 = 0;
  v14 = (a2 + 64);
  v15 = vld1q_dup_f64(v14);
  do
  {
    *(a2 + v13) = vdivq_f64(*(a2 + v13), v15);
    v13 += 16;
  }

  while (v13 != 64);
  *(a2 + 64) = 0x3FF0000000000000;
  if (v12 > 0.0)
  {
    sub_254B7C0A0(a1, a2 + 196);
  }

  sub_254B455E0(a2, a3);
  return v12 > 0.0;
}

uint64_t sub_254B5DE48(uint64_t result)
{
  v2 = *(result + 488);
  v1 = *(result + 496);
  if (v1 != v2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        result = sub_254B5DA40(v3, v5);
        v2 = *(v3 + 488);
        v1 = *(v3 + 496);
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }

  return result;
}

double sub_254B5DEA0(void *a1, void *a2)
{
  __src[0] = 0;
  __src[1] = 0;
  v24 = 0;
  sub_254B5E098(__src, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3));
  if (a1[1] != *a1)
  {
    v3 = 0;
    v4 = 1;
    v5 = __src[1];
    do
    {
      if (v5 >= v24)
      {
        v6 = __src[0];
        v7 = v5 - __src[0];
        v8 = (v5 - __src[0]) >> 6;
        v9 = v8 + 1;
        if ((v8 + 1) >> 58)
        {
          sub_254B32E20();
        }

        v10 = v24 - __src[0];
        if ((v24 - __src[0]) >> 5 > v9)
        {
          v9 = v10 >> 5;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFC0)
        {
          v11 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          sub_254B332B0(__src, v11);
        }

        v12 = (v5 - __src[0]) >> 6;
        v13 = (v8 << 6);
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v5 = ((v8 << 6) + 64);
        v14 = ((v8 << 6) - (v12 << 6));
        memcpy(&v13[-4 * v12], v6, v7);
        v15 = __src[0];
        __src[0] = v14;
        __src[1] = v5;
        v24 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *(v5 + 2) = 0u;
        *(v5 + 3) = 0u;
        *v5 = 0u;
        *(v5 + 1) = 0u;
        v5 += 64;
      }

      __src[1] = v5;
      v16 = *a1 + 56 * v3;
      *(v5 - 4) = vcvtq_f32_u32(vmovl_u16(*v16));
      v17 = *(v16 + 8);
      v18 = *(v16 + 40);
      *(v5 - 2) = *(v16 + 24);
      *(v5 - 1) = v18;
      *(v5 - 3) = v17;
      v3 = v4;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) > v4++);
  }

  v20 = a2[10];
  if (v20)
  {
    a2[11] = v20;
    operator delete(v20);
    a2[10] = 0;
    a2[11] = 0;
    a2[12] = 0;
  }

  result = *__src;
  *(a2 + 5) = *__src;
  a2[12] = v24;
  return result;
}

void sub_254B5E074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B5E098(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      sub_254B332B0(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void sub_254B5E168(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  sub_254B5E644(a1);
  v1 = 0;
  operator new();
}

void sub_254B5E51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_254B60DB4((v35 - 168));
  sub_254B60E04(&a17);
  sub_254B60ED0(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_254B5E580(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 368));
  *(a1 + 432) = 0;
  pthread_attr_init(&__attr);
  v2 = qos_class_self();
  pthread_attr_set_qos_class_np(&__attr, v2, 0);
  v5 = 0;
  pthread_create(&v5, &__attr, sub_254B5E138, a1);
  pthread_detach(v5);
  pthread_cond_wait((a1 + 440), (a1 + 368));
  v3 = *(a1 + 432);
  pthread_mutex_unlock((a1 + 368));
  return v3;
}

uint64_t sub_254B5E644(uint64_t a1)
{
  atomic_store(0, (a1 + 138));
  v2 = *(a1 + 56);
  if (v2)
  {
    v5 = *(a1 + 56);
    sub_254B36F30(&v5);
    MEMORY[0x259C24E00](v2, 0x20C40960023A9);
    *(a1 + 56) = 0;
  }

  sub_254B4AFC8(a1 + 144);
  if (*(a1 + 272))
  {
    operator new();
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 296) = 0;
    CFRelease(v3);
  }

  return sub_254B4B058(a1 + 144);
}

void *sub_254B5E744(void *a1)
{
  *a1 = &unk_2867007F0;
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

uint64_t sub_254B5E7A0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 320);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = *(a1 + 312);
      if (v7)
      {
        sub_254B4ED50(v7);
        if (a3)
        {
          operator new();
        }

        operator new();
      }

      sub_254B4186C(v6);
    }
  }

  return 0;
}

void sub_254B5E8EC(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 312);
      if (v4)
      {
        atomic_store(1u, v4);
        atomic_store(1u, (a1 + 137));
      }

      sub_254B4186C(v3);
    }
  }
}

float sub_254B5E950(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v166 = *MEMORY[0x277D85DE8];
  if (a1[1] == *a1)
  {
    return 0.0;
  }

  v5 = a3;
  __p = 0;
  v152 = 0;
  v153 = 0;
  sub_254B5F190(&__p, a4 - a3);
  if (a4 >= v5)
  {
    v8 = v152;
    v10 = 304 * v5;
    do
    {
      v11 = *a1 + v10;
      v12 = *(v11 + 74);
      v13 = *(v11 + 75);
      if (v8 >= v153)
      {
        v14 = (v8 - __p) >> 4;
        if ((v14 + 1) >> 60)
        {
          sub_254B32E20();
        }

        v15 = (v153 - __p) >> 3;
        if (v15 <= v14 + 1)
        {
          v15 = v14 + 1;
        }

        if (v153 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_254B6117C(&__p, v16);
        }

        v17 = 16 * v14;
        *v17 = v5;
        *(v17 + 8) = v12;
        *(v17 + 9) = v13;
        *(v17 + 10) = 0;
        v8 = (16 * v14 + 16);
        v18 = (v17 - (v152 - __p));
        memcpy(v18, __p, v152 - __p);
        v19 = __p;
        __p = v18;
        v152 = v8;
        v153 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = v5;
        v8[8] = v12;
        v8[9] = v13;
        v8[10] = 0;
        v8 += 16;
      }

      v152 = v8;
      ++v5;
      v10 += 304;
    }

    while (v5 <= a4);
  }

  else
  {
    v8 = v152;
  }

  v20 = __p;
  v21 = (v8 - __p) >> 4;
  if (v8 != __p)
  {
    v22 = 0;
    v23 = HIDWORD(a2);
    v24 = a2;
    v25 = SHIDWORD(a2);
    if (SHIDWORD(a2) <= a2)
    {
      LODWORD(v23) = a2;
    }

    v26 = v23;
    v27 = v21 - 1;
    __asm { FMOV            V6.2D, #1.0 }

    v33 = 1;
    v34 = __p;
    do
    {
      v35 = &v20[16 * v22];
      if (v35[9])
      {
        v36 = 1;
        v37 = v22;
        while (1)
        {
          v139 = v37-- < 1;
          if (v139 || v37 > v27)
          {
            break;
          }

          v38 = v36++;
          if (!v20[16 * v37 + 8])
          {
            v39 = *&v20[16 * v37];
            v40 = v33;
            v41 = v34;
            while (v22 >= -1 && v40 <= v27)
            {
              v42 = v41[24];
              v41 += 16;
              ++v38;
              ++v40;
              if (!v42)
              {
                if (v38 < 4)
                {
                  v43 = 0;
                  v44 = *v41;
                  v45 = *a1;
                  v46 = (*a1 + 304 * v39);
                  v155 = 0;
                  v156 = 0;
                  v157 = 0x3FF0000000000000;
                  v158 = v24;
                  v159 = xmmword_254B8AAE0;
                  v160 = 0;
                  v161 = v25;
                  v162 = 0x3FF0000000000000;
                  v163 = v24;
                  v164 = v25;
                  v165 = 0x3FF0000000000000;
                  v47 = *v46;
                  v48 = *(v46 + 1);
                  v49 = v46[2];
                  v50 = v46[3];
                  v52 = *(v46 + 4);
                  v51 = v46[5];
                  v54 = v46[6];
                  v53 = *(v46 + 7);
                  v55 = v46[8];
                  v56 = vdupq_lane_s64(*v46, 0);
                  v57 = vdupq_lane_s64(v49, 0);
                  v58 = vdupq_lane_s64(v50, 0);
                  v59 = vdupq_lane_s64(v51, 0);
                  v60 = vdupq_lane_s64(v54, 0);
                  v61 = vdupq_lane_s64(v55, 0);
                  do
                  {
                    v62 = (&v155 + v43);
                    v171 = vld3q_f64(v62);
                    v63 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v171.val[1], v53), v171.val[0], v60), v171.val[2], v61);
                    v64 = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v171.val[1], v48), v171.val[0], v56), v171.val[2], v57), v63);
                    v65 = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v171.val[1], v52), v171.val[0], v58), v171.val[2], v59), v63);
                    v66 = &v154[v43 + 96];
                    vst3q_f64(v66, *(&_Q6 - 2));
                    v43 += 48;
                  }

                  while (v43 != 96);
                  v67 = 0;
                  v68 = (v45 + 304 * v44);
                  v155 = 0;
                  v156 = 0;
                  v157 = 0x3FF0000000000000;
                  v158 = v24;
                  v159 = xmmword_254B8AAE0;
                  v160 = 0;
                  v161 = v25;
                  v162 = 0x3FF0000000000000;
                  v163 = v24;
                  v164 = v25;
                  v165 = 0x3FF0000000000000;
                  v69 = *(v68 + 1);
                  v70 = *(v68 + 4);
                  v71 = *(v68 + 7);
                  v145 = v68[2];
                  v146 = *v68;
                  v72 = vdupq_lane_s64(*v68, 0);
                  v73 = vdupq_lane_s64(v145, 0);
                  v147 = v68[5];
                  v148 = v68[3];
                  v74 = vdupq_lane_s64(v148, 0);
                  v75 = vdupq_lane_s64(v147, 0);
                  v149 = v68[8];
                  v150 = v68[6];
                  v76 = vdupq_lane_s64(v150, 0);
                  v77 = vdupq_lane_s64(v149, 0);
                  do
                  {
                    v78 = (&v155 + v67);
                    v167 = vld3q_f64(v78);
                    v79 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v167.val[1], v70), v167.val[0], v74), v167.val[2], v75);
                    v80 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v167.val[1], v71), v167.val[0], v76), v167.val[2], v77);
                    v167.val[0] = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v167.val[1], v69), v167.val[0], v72), v167.val[2], v73), v80);
                    v167.val[1] = vdivq_f64(v79, v80);
                    v167.val[2] = _Q6;
                    v81 = &v154[v67];
                    vst3q_f64(v81, v167);
                    v67 += 48;
                  }

                  while (v67 != 96);
                  v82 = 0;
                  v83 = 0.0;
                  do
                  {
                    v84 = (*&v154[v82 + 104] - *&v154[v82 + 8]) / v26;
                    v83 = v83 + v84 * v84 + (*&v154[v82 + 96] - *&v154[v82]) / v26 * ((*&v154[v82 + 96] - *&v154[v82]) / v26);
                    v82 += 24;
                  }

                  while (v82 != 96);
                  v85 = 0;
                  v86 = v83;
                  v155 = 0;
                  v156 = 0;
                  v157 = 0x3FF0000000000000;
                  v158 = v24;
                  v159 = xmmword_254B8AAE0;
                  v160 = 0;
                  v161 = v25;
                  v162 = 0x3FF0000000000000;
                  v163 = v24;
                  v164 = v25;
                  v165 = 0x3FF0000000000000;
                  v87 = sqrtf(v86);
                  do
                  {
                    v88 = (&v155 + v85);
                    v168 = vld3q_f64(v88);
                    v89 = vmulq_f64(v168.val[1], 0);
                    v90 = vmlaq_f64(vaddq_f64(v168.val[0], v89), 0, v168.val[2]);
                    v91 = vaddq_f64(v168.val[2], vmlaq_f64(v89, 0, v168.val[0]));
                    v172.val[0] = vdivq_f64(v90, v91);
                    v172.val[1] = vdivq_f64(vmlaq_f64(vmlaq_f64(v168.val[1], 0, v168.val[0]), 0, v168.val[2]), v91);
                    v92 = &v154[v85 + 96];
                    v172.val[2] = _Q6;
                    vst3q_f64(v92, v172);
                    v85 += 48;
                  }

                  while (v85 != 96);
                  v93 = 0;
                  v155 = 0;
                  v156 = 0;
                  v157 = 0x3FF0000000000000;
                  v158 = v24;
                  v159 = xmmword_254B8AAE0;
                  v160 = 0;
                  v161 = v25;
                  v162 = 0x3FF0000000000000;
                  v163 = v24;
                  v164 = v25;
                  v165 = 0x3FF0000000000000;
                  v94 = vdupq_lane_s64(v47, 0);
                  v95 = vdupq_lane_s64(v49, 0);
                  v96 = vdupq_lane_s64(v50, 0);
                  v97 = vdupq_lane_s64(v51, 0);
                  v98 = vdupq_lane_s64(v54, 0);
                  v99 = vdupq_lane_s64(v55, 0);
                  do
                  {
                    v100 = (&v155 + v93);
                    v169 = vld3q_f64(v100);
                    v101 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v169.val[1], v52), v169.val[0], v96), v169.val[2], v97);
                    v102 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v169.val[1], v53), v169.val[0], v98), v169.val[2], v99);
                    v169.val[0] = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v169.val[1], v48), v169.val[0], v94), v169.val[2], v95), v102);
                    v169.val[1] = vdivq_f64(v101, v102);
                    v169.val[2] = _Q6;
                    v103 = &v154[v93];
                    vst3q_f64(v103, v169);
                    v93 += 48;
                  }

                  while (v93 != 96);
                  v104 = 0;
                  v105 = 0.0;
                  do
                  {
                    v106 = (*&v154[v104 + 104] - *&v154[v104 + 8]) / v26;
                    v105 = v105 + v106 * v106 + (*&v154[v104 + 96] - *&v154[v104]) / v26 * ((*&v154[v104 + 96] - *&v154[v104]) / v26);
                    v104 += 24;
                  }

                  while (v104 != 96);
                  v107 = 0;
                  v108 = v105;
                  v155 = 0;
                  v156 = 0;
                  v157 = 0x3FF0000000000000;
                  v158 = v24;
                  v159 = xmmword_254B8AAE0;
                  v160 = 0;
                  v161 = v25;
                  v162 = 0x3FF0000000000000;
                  v163 = v24;
                  v164 = v25;
                  v165 = 0x3FF0000000000000;
                  do
                  {
                    v109 = (&v155 + v107);
                    v170 = vld3q_f64(v109);
                    v110 = vmulq_f64(v170.val[1], 0);
                    v111 = vmlaq_f64(vaddq_f64(v170.val[0], v110), 0, v170.val[2]);
                    v112 = vaddq_f64(v170.val[2], vmlaq_f64(v110, 0, v170.val[0]));
                    v173.val[0] = vdivq_f64(v111, v112);
                    v173.val[1] = vdivq_f64(vmlaq_f64(vmlaq_f64(v170.val[1], 0, v170.val[0]), 0, v170.val[2]), v112);
                    v113 = &v154[v107 + 96];
                    v173.val[2] = _Q6;
                    vst3q_f64(v113, v173);
                    v107 += 48;
                  }

                  while (v107 != 96);
                  v114 = 0;
                  v155 = 0;
                  v156 = 0;
                  v157 = 0x3FF0000000000000;
                  v158 = v24;
                  v159 = xmmword_254B8AAE0;
                  v160 = 0;
                  v161 = v25;
                  v162 = 0x3FF0000000000000;
                  v163 = v24;
                  v164 = v25;
                  v165 = 0x3FF0000000000000;
                  v115 = vdupq_lane_s64(v146, 0);
                  v116 = vdupq_lane_s64(v145, 0);
                  v117 = vdupq_lane_s64(v148, 0);
                  v118 = vdupq_lane_s64(v147, 0);
                  v119 = vdupq_lane_s64(v150, 0);
                  v120 = vdupq_lane_s64(v149, 0);
                  do
                  {
                    v121 = (&v155 + v114);
                    v174 = vld3q_f64(v121);
                    v122 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v174.val[1], v70), v174.val[0], v117), v174.val[2], v118);
                    v123 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v174.val[1], v71), v174.val[0], v119), v174.val[2], v120);
                    v174.val[0] = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v174.val[1], v69), v174.val[0], v115), v174.val[2], v116), v123);
                    v174.val[1] = vdivq_f64(v122, v123);
                    v174.val[2] = _Q6;
                    v124 = &v154[v114];
                    vst3q_f64(v124, v174);
                    v114 += 48;
                  }

                  while (v114 != 96);
                  v125 = 0;
                  v126 = 0.0;
                  do
                  {
                    v127 = (*&v154[v125 + 104] - *&v154[v125 + 8]) / v26;
                    v126 = v126 + v127 * v127 + (*&v154[v125 + 96] - *&v154[v125]) / v26 * ((*&v154[v125 + 96] - *&v154[v125]) / v26);
                    v125 += 24;
                  }

                  while (v125 != 96);
                  v128 = sqrtf(v108);
                  v129 = v126;
                  v130 = sqrtf(v129);
                  if (v128 > v130)
                  {
                    v130 = v128;
                  }

                  if (v130 * 1.75 < v87)
                  {
                    v35[10] = 4;
                  }
                }

                else
                {
                  v35[10] = 2;
                }

                goto LABEL_35;
              }
            }

            break;
          }
        }

        v35[10] = 1;
      }

LABEL_35:
      ++v22;
      v34 += 16;
      ++v33;
    }

    while (v22 < v21);
  }

  if (v21 >= 0x5A)
  {
    v131 = 90;
  }

  else
  {
    v131 = v21;
  }

  if (v8 == v20)
  {
    v131 = 0;
    v132 = 0;
  }

  else
  {
    v132 = 0;
    v133 = v20 + 10;
    v134 = v131;
    do
    {
      if (*(v133 - 2))
      {
        if (v132 >= 2)
        {
          *v133 = 5;
        }

        ++v132;
      }

      v133 += 16;
      --v134;
    }

    while (v134);
  }

  v135 = v21 - v131;
  if (v21 > v131)
  {
    v136 = &v20[16 * v131 + 10];
    v137 = v20 + 8;
    do
    {
      v138 = *v137;
      v137 += 16;
      v132 -= v138 != 0;
      if (*(v136 - 2))
      {
        v139 = ++v132 < 3;
      }

      else
      {
        v139 = 1;
      }

      if (!v139)
      {
        *v136 = 5;
      }

      v136 += 16;
      --v135;
    }

    while (v135);
  }

  if (v21 >= 2)
  {
    v140 = 0;
    v141 = v20 + 26;
    v142 = v21 - 1;
    do
    {
      v143 = *v141;
      v141 += 16;
      v140 |= v143 != 0;
      --v142;
    }

    while (v142);
    if (v140)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    goto LABEL_86;
  }

  v9 = 1.0;
  if (v20)
  {
LABEL_86:
    v152 = v20;
    operator delete(v20);
  }

  return v9;
}

void sub_254B5F16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B5F190(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_254B6117C(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void sub_254B5F230(const double *a1, const double *a2, float a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v74 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = 0;
  v65 = 0x3FF0000000000000;
  v66 = a5;
  v67 = xmmword_254B8AAE0;
  v68 = 0;
  v69 = SHIDWORD(a5);
  v70 = 0x3FF0000000000000;
  v71 = a5;
  v72 = SHIDWORD(a5);
  v73 = 0x3FF0000000000000;
  v6 = a1 + 8;
  v7 = a1 + 7;
  v8 = a1 + 6;
  v9 = a1 + 5;
  v10 = a1 + 4;
  v11 = a1 + 3;
  v12 = a1 + 2;
  v14 = vld1q_dup_f64(a1);
  v13 = a1 + 1;
  v15 = vld1q_dup_f64(v13);
  v16 = vld1q_dup_f64(v12);
  v17 = vld1q_dup_f64(v10);
  v18 = vld1q_dup_f64(v11);
  v19 = vld1q_dup_f64(v9);
  v20 = vld1q_dup_f64(v7);
  v21 = vld1q_dup_f64(v8);
  v22 = vld1q_dup_f64(v6);
  __asm { FMOV            V5.2D, #1.0 }

  do
  {
    v28 = (&v63 + v5);
    v77 = vld3q_f64(v28);
    v29 = vmlaq_f64(vmlaq_f64(vmulq_f64(v20, v77.val[1]), v77.val[0], v21), v77.val[2], v22);
    v30 = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v15, v77.val[1]), v77.val[0], v14), v77.val[2], v16), v29);
    v31 = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v17, v77.val[1]), v77.val[0], v18), v77.val[2], v19), v29);
    v32 = &v62[v5 + 192];
    vst3q_f64(v32, *(&_Q5 - 2));
    v5 += 48;
  }

  while (v5 != 96);
  v33 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0x3FF0000000000000;
  v66 = a5;
  v67 = xmmword_254B8AAE0;
  v68 = 0;
  v69 = SHIDWORD(a5);
  v70 = 0x3FF0000000000000;
  v71 = a5;
  v72 = SHIDWORD(a5);
  v73 = 0x3FF0000000000000;
  v34 = a2 + 8;
  v35 = a2 + 7;
  v36 = a2 + 6;
  v37 = a2 + 5;
  v38 = a2 + 4;
  v39 = a2 + 3;
  v40 = a2 + 2;
  v42 = vld1q_dup_f64(a2);
  v41 = a2 + 1;
  v43 = vld1q_dup_f64(v41);
  v44 = vld1q_dup_f64(v40);
  v45 = vld1q_dup_f64(v38);
  v46 = vld1q_dup_f64(v39);
  v47 = vld1q_dup_f64(v37);
  v48 = vld1q_dup_f64(v35);
  v49 = vld1q_dup_f64(v36);
  v50 = vld1q_dup_f64(v34);
  do
  {
    v51 = (&v63 + v33);
    v76 = vld3q_f64(v51);
    v52 = vmlaq_f64(vmlaq_f64(vmulq_f64(v45, v76.val[1]), v76.val[0], v46), v76.val[2], v47);
    v53 = vmlaq_f64(vmlaq_f64(vmulq_f64(v48, v76.val[1]), v76.val[0], v49), v76.val[2], v50);
    v76.val[0] = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v43, v76.val[1]), v76.val[0], v42), v76.val[2], v44), v53);
    v76.val[1] = vdivq_f64(v52, v53);
    v76.val[2] = _Q5;
    v54 = &v62[v33 + 96];
    vst3q_f64(v54, v76);
    v33 += 48;
  }

  while (v33 != 96);
  v55 = 0;
  v56 = a3;
  v57 = vdupq_lane_s64(COERCE__INT64((1.0 - a3)), 0);
  do
  {
    *&v62[v55] = vmlaq_f64(vmulq_n_f64(*&v62[v55 + 96], v56), v57, *&v62[v55 + 192]);
    v55 += 24;
  }

  while (v55 != 96);
  v58 = 0;
  v59 = 0;
  v63 = 0;
  v64 = 0;
  v66 = a5;
  *&v67 = 0;
  v68 = 0;
  v69 = SHIDWORD(a5);
  v71 = a5;
  v72 = SHIDWORD(a5);
  do
  {
    *&v75.val[0].f64[0] = *(&v63 + v58);
    v75.val[0].f64[1] = *(&v66 + v58);
    *&v75.val[1].f64[0] = *(&v63 + v58 + 8);
    v75.val[1].f64[1] = *(&v67 + v58);
    v60 = &v62[v59 + 352];
    vst2q_f64(v60, v75);
    v75.val[0].f64[0] = *&v62[v58];
    v75.val[0].f64[1] = *&v62[v58 + 24];
    v75.val[1].f64[0] = *&v62[v58 + 8];
    v75.val[1].f64[1] = *&v62[v58 + 32];
    v61 = &v62[v59 + 288];
    vst2q_f64(v61, v75);
    v59 += 32;
    v58 += 48;
  }

  while (v59 != 64);
  sub_254B5A190();
}

void sub_254B5F5B4(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v5 = 0x86BCA1AF286BCA1BLL * ((v3 - *a1) >> 4);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0x86BCA1AF286BCA1BLL * ((v3 - *a1) >> 4);
    }

    v7 = (v2 + 72);
    do
    {
      if (v7[3])
      {
        *v7 = 0;
      }

      v7 += 304;
      --v6;
    }

    while (v6);
    v8 = 0;
    v9 = -232;
    v10 = -1;
    v11 = 377;
    v12 = 1;
    do
    {
      v13 = v2 + 304 * v8;
      if ((*(v13 + 72) & 1) == 0 && (*(v13 + 73) & 1) == 0)
      {
        v14 = (v2 + v9);
        v15 = v10;
        v16 = v8;
        while (v15 != -1)
        {
          v17 = *v14;
          v18 = v14[1];
          if (v18)
          {
            v19 = v16;
          }

          else
          {
            v19 = v15;
          }

          if (*v14)
          {
            v16 = v19;
          }

          v14 -= 304;
          --v15;
          if (v17 == 1 && (v18 & 1) == 0)
          {
            break;
          }
        }

        v20 = v5 - 1;
        v21 = (v2 + v11);
        v22 = v12;
        v23 = v8;
        while (v5 != v22)
        {
          v24 = *(v21 - 1);
          v25 = *v21;
          if (*v21)
          {
            v26 = v23;
          }

          else
          {
            v26 = v22;
          }

          if (*(v21 - 1))
          {
            v23 = v26;
          }

          v21 += 304;
          ++v22;
          if (v24 == 1 && (v25 & 1) == 0)
          {
            break;
          }
        }

        if (v16 == v8)
        {
          v16 = 0;
          v43 = 0uLL;
          v42 = 0x3FF0000000000000uLL;
          v44 = 0x3FF0000000000000uLL;
          v45 = 0uLL;
          v46 = 0x3FF0000000000000;
        }

        else
        {
          v27 = (v2 + 304 * v16);
          v42 = *v27;
          v28 = v27[1];
          v29 = v27[2];
          v30 = v27[3];
          v46 = *(v27 + 8);
          v44 = v29;
          v45 = v30;
          v43 = v28;
        }

        if (v23 == v8)
        {
          v38 = 0uLL;
          v37 = 0x3FF0000000000000uLL;
          v39 = 0x3FF0000000000000uLL;
          v40 = 0uLL;
          v41 = 0x3FF0000000000000;
        }

        else
        {
          v31 = (v2 + 304 * v23);
          v37 = *v31;
          v32 = v31[1];
          v33 = v31[2];
          v34 = v31[3];
          v41 = *(v31 + 8);
          v39 = v33;
          v40 = v34;
          v38 = v32;
          v20 = v23;
        }

        v35 = (v20 - v16);
        if (v20 == v16)
        {
          v35 = 1.0;
        }

        sub_254B5F230(&v42, &v37, (v8 - v16) / v35, v13, a2);
        *(v13 + 73) = 1;
        v2 = *a1;
        v3 = a1[1];
      }

      ++v8;
      v5 = 0x86BCA1AF286BCA1BLL * ((v3 - v2) >> 4);
      v9 += 304;
      ++v10;
      v11 += 304;
      ++v12;
    }

    while (v5 > v8);
  }
}

void sub_254B5F83C(void *a1)
{
  sub_254B60ED0(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B5F890(uint64_t a1, void *lpsrc, unsigned __int8 **a3)
{
  v5 = __dynamic_cast(lpsrc, &unk_286700F50, &unk_286700DC8, 0);
  v6 = v5;
  if (*(a1 + 48))
  {
    goto LABEL_15;
  }

  if ((v5[8] & 1) == 0)
  {
    v7 = a1 + 24;
    v8 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    v9 = *(a1 + 52) - 1;
    if (v8 != v9)
    {
      if (v8 >= v9)
      {
        abort();
      }

      sub_254B5D6A0(v7, v6 + 2);
      goto LABEL_16;
    }

    sub_254B5D6A0(v7, v6 + 2);
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  if ((v10 - v11) >= 9)
  {
    v12 = atomic_load(a3[3]);
    if ((v12 & 1) == 0)
    {
      operator new();
    }

    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
  }

  if (v10 != v11)
  {
    v13 = atomic_load(a3[3]);
    if ((v13 & 1) == 0)
    {
      operator new();
    }
  }

  *(a1 + 48) = 1;
  if (v6[8])
  {
LABEL_15:
    operator new();
  }

LABEL_16:
  *(v6 + 2) = 0;
  (*(*a3 + 3))(a3);
  return 1;
}

void sub_254B5FC9C(void *a1)
{
  sub_254B5FCD4(a1);

  JUMPOUT(0x259C24E00);
}

void *sub_254B5FCD4(void *a1)
{
  *a1 = &unk_2867007B0;
  v2 = a1[2];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      sub_254B4186C(v3);
    }

    MEMORY[0x259C24E00](v2, 0x1020C401705F15ELL);
  }

  return a1;
}

uint64_t sub_254B5FD60(int a1, void *lpsrc, uint64_t a3)
{
  if (lpsrc && __dynamic_cast(lpsrc, &unk_286700F50, &unk_286700F38, 0))
  {
    operator new();
  }

  (*(*a3 + 24))(a3);
  return 1;
}

void sub_254B5FF14(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[5];
  v7 = a1[6];
  v8[3] = a6;
  v8[4] = v6;
  v8[2] = v7;
  sub_254B7C0C0(*(a3 + 8), *(a3 + 1), a4, a1[7], v8);
}

void sub_254B60004(void *a1)
{
  sub_254B60E04(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B60048(uint64_t a1, void *lpsrc, unsigned __int8 **a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_286700F50, &unk_286700DC8, 0);
    if (v5)
    {
      v6 = v5;
      if (v5[8])
      {
        operator new();
      }

      sub_254B5D6A0(a1 + 24, v5 + 2);
      *(v6 + 2) = 0;
      if (*(a1 + 32) - *(a1 + 24) >= 9uLL)
      {
        v7 = atomic_load(a3[3]);
        if ((v7 & 1) == 0)
        {
          v9 = *(a1 + 24);
          v11 = *v9;
          v10 = v9[1];
          v13 = *v10;
          v12 = v10[1];
          v16[0] = v13;
          v16[1] = v12;
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          v14 = v11[1];
          v15[0] = *v11;
          v15[1] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          }

          sub_254B60310(a1, v16, v15);
        }
      }
    }
  }

  (*(*a3 + 3))(a3);
  return 1;
}

void sub_254B602EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_254B4186C(a10);
  }

  if (a12)
  {
    sub_254B4186C(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B60310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a3 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_254B7D750();
}

void sub_254B603E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_254B4186C(a10);
  }

  if (a12)
  {
    sub_254B4186C(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B60408(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[47];
    if (v3)
    {
      v2[48] = v3;
      operator delete(v3);
    }

    v4 = v2[44];
    if (v4)
    {
      v2[45] = v4;
      operator delete(v4);
    }

    v5 = v2[41];
    if (v5)
    {
      sub_254B4186C(v5);
    }

    v6 = v2[39];
    if (v6)
    {
      sub_254B4186C(v6);
    }

    JUMPOUT(0x259C24E00);
  }

  return result;
}

void *sub_254B60498(void *a1)
{
  *a1 = &unk_2867009E0;
  sub_254B60408(a1 + 2, 0);
  return a1;
}

void sub_254B604E0(void *a1)
{
  *a1 = &unk_2867009E0;
  sub_254B60408(a1 + 2, 0);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B60548(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *a1 = &unk_286700768;
  *(a1 + 32) = a4;
  *(a1 + 33) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a5;
  sub_254B37728(a1 + 64, a6);
  return a1;
}

void sub_254B605AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_254B4186C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B605C4(void *a1)
{
  *a1 = &unk_286700768;
  sub_254B376A8((a1 + 8));
  v2 = a1[6];
  if (v2)
  {
    sub_254B4186C(v2);
  }

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B60640(int a1, void *lpsrc, uint64_t a3)
{
  if (lpsrc && __dynamic_cast(lpsrc, &unk_286700F50, &unk_286700EE8, 0))
  {
    operator new();
  }

  (*(*a3 + 24))(a3);
  return 1;
}

void sub_254B60A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    sub_254B4186C(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B60AD8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_254B33AE8();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_254B60B2C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 56);
  v5 = a2[1];
  v6[0] = *a2;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_254B5D85C(v4, v6, a4);
  if (v5)
  {

    sub_254B4186C(v5);
  }
}

void sub_254B60BA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_254B4186C(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B60BB8(void *a1)
{
  *a1 = &unk_286700890;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_254B60C08(void *a1)
{
  *a1 = &unk_286700890;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x259C24E00);
}

void sub_254B60C80(void *a1)
{
  *a1 = &unk_2867007F0;
  v1 = a1[1];
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B60CEC(uint64_t a1, uint64_t *lpsrc)
{
  if (lpsrc)
  {
    v4 = *lpsrc;
    v5 = __dynamic_cast(lpsrc, &unk_286700F50, &unk_286700E50, 0);
    if ((lpsrc[1] & 1) == 0 && v5)
    {
      sub_254B54600(*(a1 + 32), v5 + 16);
      v4 = *lpsrc;
    }

    (*(v4 + 8))(lpsrc);
  }

  return 1;
}

void *sub_254B60DB4(void *a1)
{
  *a1 = &unk_286700768;
  sub_254B376A8((a1 + 8));
  v2 = a1[6];
  if (v2)
  {
    sub_254B4186C(v2);
  }

  return a1;
}

void *sub_254B60E04(void *a1)
{
  *a1 = &unk_2867005C0;
  v3 = a1[3];
  for (i = a1[4]; i != v3; v3 = a1[3])
  {
    v4 = *v3;
    v5 = i - (v3 + 8);
    if (i != v3 + 8)
    {
      memmove(v3, v3 + 8, i - (v3 + 8));
    }

    i = &v3[v5];
    a1[4] = &v3[v5];
    if (v4)
    {
      v6 = *(v4 + 8);
      if (v6)
      {
        sub_254B4186C(v6);
      }

      MEMORY[0x259C24E00](v4, 0x1020C401705F15ELL);
      i = a1[4];
    }
  }

  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_254B60ED0(void *a1)
{
  *a1 = &unk_286700530;
  v3 = a1[3];
  v2 = a1[4];
  if (v2 == v3)
  {
    v4 = a1[3];
    if (!v3)
    {
      return a1;
    }

    goto LABEL_7;
  }

  v4 = a1[3];
  do
  {
    v5 = v2 - (v3 + 8);
    if (v2 != v3 + 8)
    {
      memmove(v3, v3 + 8, v2 - (v3 + 8));
      v4 = a1[3];
    }

    v2 = &v3[v5];
    a1[4] = &v3[v5];
    v3 = v4;
  }

  while (v2 != v4);
  if (v4)
  {
LABEL_7:
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_254B60F74(void *a1)
{
  sub_254B60FAC(a1);

  JUMPOUT(0x259C24E00);
}

void *sub_254B60FAC(void *a1)
{
  *a1 = &unk_286700B20;
  if (a1[2])
  {
    v2 = sub_254B4AEF8();
    MEMORY[0x259C24E00](v2, 0x1020C40A6EEA1E9);
  }

  return a1;
}

void sub_254B6107C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_254B61120(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B610A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B610E0(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700BF0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_254B61120(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    dispatch_release(*(a2 + 16));
    dispatch_release(*(a2 + 24));

    JUMPOUT(0x259C24E00);
  }
}

void sub_254B6117C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_254B32F20();
}

float sub_254B611C4(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = xmmword_254B8B900;
  *(a1 + 16) = xmmword_254B8B900;
  *(a1 + 32) = 1065353216;
  v6 = *(a2 + 32);
  v7 = *(a2 + 112);
  v8 = (v7 + v6);
  if (v7 + v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = -2 * v6;
    do
    {
      if (v9 >= v6)
      {
        v12 = v11;
        v13 = (*(a2 + 40) + 4 * v11);
        v14 = (a2 + 64);
      }

      else
      {
        v12 = (2 * *(*(a2 + 24) + 4 * v9));
        v13 = (*a2 + 4 * v12);
        v14 = (a2 + 8);
      }

      v10 = vadd_f32(v10, vsub_f32(*(*v14 + 4 * v12), *v13));
      ++v9;
      v11 += 2;
    }

    while (v8 != v9);
    v15 = 0;
    v16 = v8;
    v17 = v10.f32[0] / v8;
    v18 = -2 * v6;
    v19 = 0.0;
    v20 = v10.f32[1] / v8;
    do
    {
      if (v15 >= v6)
      {
        v21 = v18;
        v22 = (*(a2 + 40) + 4 * v18);
        v23 = (a2 + 64);
      }

      else
      {
        v21 = (2 * *(*(a2 + 24) + 4 * v15));
        v22 = (*a2 + 4 * v21);
        v23 = (a2 + 8);
      }

      v24 = (*v23 + 4 * v21);
      v19 = v19 + ((((v24[1] - v22[1]) - v20) * ((v24[1] - v22[1]) - v20)) + (((*v24 - *v22) - v17) * ((*v24 - *v22) - v17)));
      ++v15;
      v18 += 2;
    }

    while (v8 != v15);
  }

  else
  {
    v16 = v8;
    v19 = 0.0;
    v20 = 0.0 / v8;
    v17 = v20;
    v8 = 0;
  }

  sub_254B59FC8(v48, v8);
  sub_254B59FC8(__p, (*(a2 + 112) + *(a2 + 32)));
  v25 = *(a2 + 32);
  v26 = v48[0];
  v27 = (*(a2 + 112) + v25);
  if (v27)
  {
    v28 = 0;
    v29 = __p[0];
    v30 = -2 * v25;
    do
    {
      if (v28 >= v25)
      {
        v31 = v30;
        v32 = (*(a2 + 40) + 4 * v30);
        v33 = (a2 + 64);
      }

      else
      {
        v31 = (2 * *(*(a2 + 24) + 4 * v28));
        v32 = (*a2 + 4 * v31);
        v33 = (a2 + 8);
      }

      v34 = (*v33 + 4 * v31);
      v26[v28] = *v34 - *v32;
      v29[v28++] = v34[1] - v32[1];
      v30 += 2;
    }

    while (v27 != v28);
  }

  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  v35 = *(a2 + 112) + *(a2 + 32);
  v36 = v48[0];
  v37 = __p[0];
  v38 = 0.0;
  if (v35)
  {
    v39 = (*(a2 + 112) + *(a2 + 32));
    v40 = __p[0];
    do
    {
      v41 = *v36++;
      v42 = v41 - *(v48[0] + (v35 >> 1));
      v43 = *v40++;
      v44 = v43 - *(__p[0] + (v35 >> 1));
      if (v42 < 0.0)
      {
        v42 = -v42;
      }

      if (v44 < 0.0)
      {
        v44 = -v44;
      }

      v38 = v38 + (v42 + v44);
      --v39;
    }

    while (v39);
  }

  if (a3)
  {
    v45 = v38 / v35;
    v17 = *(v48[0] + (v35 >> 1));
    v20 = *(__p[0] + (v35 >> 1));
  }

  else
  {
    v45 = sqrtf(v19 / v16);
  }

  *(a1 + 8) = v17;
  *(a1 + 20) = v20;
  __p[1] = v37;
  operator delete(v37);
  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  return v45;
}

void sub_254B614B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_254B614EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = xmmword_254B8B900;
  v38 = xmmword_254B8B900;
  v39 = 1065353216;
  v7 = sub_254B611C4(&v37, a1, a4);
  v8 = 0;
  v28 = 0;
  v29 = 1065353216;
  v31 = 0x3F80000000000000;
  v9 = *(a1 + 116);
  v32 = 0;
  v34 = 1065353216;
  __asm { FMOV            V2.2S, #-1.0 }

  v15 = vadd_f32(v9, _D2);
  v33 = v15.i32[1];
  v30 = v15.i32[0];
  v35 = v15;
  v36 = 1065353216;
  v16 = v37;
  v17 = v38;
  v18 = (a3 + 4);
  v19 = (a2 + 4);
  v20 = *&v39;
  do
  {
    v21 = *(&v28 + v8);
    v22 = *(&v28 + v8 + 4);
    v23 = *(&v28 + v8 + 8);
    v24 = ((*(&v16 + 1) * v22) + (*&v16 * v21)) + (*(&v16 + 2) * v23);
    v25 = ((v22 * *&v17) + (*(&v16 + 3) * v21)) + (*(&v17 + 1) * v23);
    v26 = ((v22 * *(&v17 + 3)) + (*(&v17 + 2) * v21)) + (v20 * v23);
    *(v19 - 1) = v21;
    *v19 = v22;
    *(v18 - 1) = v24 / v26;
    *v18 = v25 / v26;
    v8 += 12;
    v18 += 2;
    v19 += 2;
  }

  while (v8 != 48);
  return exp(-v7);
}

uint64_t sub_254B61638(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = (MEMORY[0x28223BE20])();
    v8 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v8);
    if (*(a2 + 112) + *(a2 + 32))
    {
      *v9.i32 = sub_254B614EC(a2, v14, v13, 0);
      v12 = vdupq_lane_s32(v9, 0);
      sub_254B618F0(a2, v14, v13, v12.i32, 4);
    }

    goto LABEL_8;
  }

  if (*(a2 + 112) + *(a2 + 32) != 4 || (sub_254B5A270(a1, 4u), sub_254B61864(a2, *(a1 + 64), *(a1 + 72)), sub_254B5A0B0(*(a1 + 64), *(a1 + 72), a4), (v10 & 1) == 0))
  {
LABEL_8:
    sub_254B5A270(a1, *(a2 + 112) + *(a2 + 32));
    sub_254B61864(a2, *(a1 + 64), *(a1 + 72));
    sub_254B619D0(a2, *(a1 + 80));
    sub_254B5A3A4();
  }

  return 1;
}

float sub_254B61864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = (*(a1 + 112) + v3);
  if (v4)
  {
    v5 = 0;
    v6 = -2 * v3;
    do
    {
      if (v5 >= v3)
      {
        v8 = (*(a1 + 40) + 4 * v6);
        v9 = *(a1 + 64) + 4 * v6;
      }

      else
      {
        v7 = 2 * *(*(a1 + 24) + 4 * v5);
        v8 = (*a1 + 4 * v7);
        v9 = *(a1 + 8) + 4 * v7;
      }

      v10 = 2 * v5;
      *(a2 + 4 * v10) = *v8;
      v11 = v8[1];
      v12 = (2 * v5) | 1;
      *(a2 + 4 * v12) = v11;
      *(a3 + 4 * v10) = *v9;
      result = *(v9 + 4);
      *(a3 + 4 * v12) = result;
      ++v5;
      v6 += 2;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_254B618F0(uint64_t a1, int *a2, int *a3, int *a4, int a5)
{
  *(a1 + 112) = a5;
  sub_254B47D10((a1 + 40), (2 * a5));
  sub_254B47D10((a1 + 64), (2 * *(a1 + 112)));
  v9 = *(a1 + 112);
  v10 = (2 * v9);
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 64);
    do
    {
      v13 = *a2++;
      *v11++ = v13;
      v14 = *a3++;
      *v12++ = v14;
      --v10;
    }

    while (v10);
  }

  sub_254B47D10((a1 + 88), v9);
  v15 = *(a1 + 112);
  if (a4)
  {
    if (v15)
    {
      v16 = *(a1 + 88);
      do
      {
        v17 = *a4++;
        *v16++ = v17;
        --v15;
      }

      while (v15);
    }
  }

  else if (v15)
  {
    v18 = *(a1 + 88);

    memset_pattern16(v18, &unk_254B8B4F0, 4 * v15);
  }
}

uint64_t sub_254B619D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = (*(result + 112) + v2);
  if (v3)
  {
    for (i = 0; v3 != i; ++i)
    {
      if (i >= v2)
      {
        v5 = *(result + 88);
        if (*(result + 96) == v5)
        {
LABEL_9:
          v7 = 1.0;
          goto LABEL_10;
        }

        v6 = (i - v2);
      }

      else
      {
        v5 = *(result + 16);
        if (!v5)
        {
          goto LABEL_9;
        }

        v6 = *(*(result + 24) + 4 * i);
      }

      v7 = *(v5 + 4 * v6);
LABEL_10:
      *(a2 + 4 * i) = v7;
    }
  }

  return result;
}

uint64_t sub_254B61A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, char a7, uint64_t a8, float a9, float a10)
{
  if (a6 < 4)
  {
    return 0;
  }

  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v13 = a6;
  *v14 = 0u;
  *v15 = 0u;
  v16 = 0u;
  memset(__p, 0, sizeof(__p));
  v18 = a9;
  v19 = a10;
  v10 = sub_254B61638(a1, v12, a7, a8);
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if (v15[1])
  {
    *&v16 = v15[1];
    operator delete(v15[1]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  return v10;
}

void *sub_254B61AEC(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_254B61B40(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a4 < 4)
  {
    return 0;
  }

  v5 = MEMORY[0x28223BE20](a1);
  v12 = &v22[-1] - v11;
  v13 = 0;
  v14 = vdupq_n_s64(v10 - 1);
  v15 = v12 + 8;
  v16 = xmmword_254B8B0E0;
  v17 = xmmword_254B8AAC0;
  v18 = vdupq_n_s64(4uLL);
  do
  {
    v19 = vmovn_s64(vcgeq_u64(v14, v17));
    if (vuzp1_s16(v19, *v14.i8).u8[0])
    {
      *(v15 - 2) = v13;
    }

    if (vuzp1_s16(v19, *&v14).i8[2])
    {
      *(v15 - 1) = v13 + 1;
    }

    if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v16))).i32[1])
    {
      *v15 = v13 + 2;
      v15[1] = v13 + 3;
    }

    v13 += 4;
    v16 = vaddq_s64(v16, v18);
    v17 = vaddq_s64(v17, v18);
    v15 += 4;
  }

  while (((v10 + 3) & 0x1FFFFFFFCLL) != v13);
  v22[0] = v6;
  v22[1] = v7;
  v22[2] = 0;
  v22[3] = v12;
  v23 = v8;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v4 = sub_254B61638(v5, v22, 0, v9);
  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  if (*(&v25 + 1))
  {
    *&v26 = *(&v25 + 1);
    operator delete(*(&v25 + 1));
  }

  if (v24)
  {
    *(&v24 + 1) = v24;
    operator delete(v24);
  }

  return v4;
}

uint64_t sub_254B61CF4(uint64_t *a1)
{
  printf("vector(%lu)\n", (a1[1] - *a1) >> 3);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    do
    {
      printf("%f ", *(v2 + 8 * v3++));
      v2 = *a1;
    }

    while (v3 < (a1[1] - *a1) >> 3);
  }

  return putchar(10);
}

void sub_254B61D90(void *a1, int a2)
{
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(a1);
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(a1);
  sub_254B35394(val, matrix_number_of_columns);
  sub_254B47E68(jndx, matrix_number_of_columns);
  column_end = 0;
  matrix_nonzero_count = sparse_get_matrix_nonzero_count(a1);
  printf("Matrix (%llu, %llu) nonzeros = %ld\n", matrix_number_of_rows, matrix_number_of_columns, matrix_nonzero_count);
  if (a2)
  {
    if (matrix_number_of_rows)
    {
      for (i = 0; i != matrix_number_of_rows; ++i)
      {
        printf("\n row %d nonzeros:\n", i);
        v8 = sparse_extract_sparse_row_double(a1, i, 0, &column_end, matrix_number_of_columns, val[0], jndx[0]);
        if (v8 >= 1)
        {
          v9 = 0;
          v10 = 8 * v8;
          do
          {
            printf("   col %lld, val %f ;", jndx[0][v9 / 8], val[0][v9 / 8]);
            v9 += 8;
          }

          while (v10 != v9);
        }
      }
    }

    puts("\n");
  }

  if (jndx[0])
  {
    jndx[1] = jndx[0];
    operator delete(jndx[0]);
  }

  if (val[0])
  {
    val[1] = val[0];
    operator delete(val[0]);
  }
}

void sub_254B61EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B61F14(sparse_matrix_double A, const double **a2, uint64_t a3, CBLAS_TRANSPOSE transa)
{
  v7 = *a3;
  v8 = *(a3 + 8) - *a3;
  if (v8)
  {
    v9 = v8 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    bzero(*a3, 8 * v9);
  }

  if (sparse_matrix_vector_product_dense_double(transa, 1.0, A, *a2, 1, v7, 1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

double sub_254B61F90(uint64_t a1, double **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3 >> 3;
  v5 = *a2;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  result = 0.0;
  do
  {
    v7 = *v2++;
    v8 = v7;
    v9 = *v5++;
    result = result + v8 * v9;
    --v4;
  }

  while (v4);
  return result;
}

double sub_254B61FD0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  if (v2)
  {
    v3 = v2 >> 3;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = 0.0;
    do
    {
      v5 = *v1++;
      v4 = v4 + v5 * v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0.0;
  }

  return sqrt(v4);
}

double sub_254B6200C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  if (!v2)
  {
    return -1.0;
  }

  v3 = v2 >> 3;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  result = -1.0;
  do
  {
    v5 = *v1++;
    v6 = fabs(v5);
    if (v6 > result)
    {
      result = v6;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t sub_254B6204C(uint64_t result, double **a2, double a3)
{
  v3 = *result;
  v4 = *(result + 8) - *result;
  if (v4)
  {
    v5 = v4 >> 3;
    v6 = *a2;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v7 = *v6++;
      *v3 = *v3 + a3 * v7;
      ++v3;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_254B62084(uint64_t a1, double **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (v3)
  {
    v4 = v3 >> 3;
    v5 = *a2;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v6 = *v5++;
      result = *v2 - v6;
      *v2++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_254B620BC(uint64_t result, double a2)
{
  v2 = *result;
  v3 = *(result + 8) - *result;
  if (v3)
  {
    v4 = v3 >> 3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      *v2 = *v2 * a2;
      ++v2;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_254B620EC(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8) - v1;
  if (v3)
  {
    v4 = v3 >> 3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    bzero(v1, 8 * v4);
  }
}

uint64_t sub_254B62110(uint64_t *a1, void *A)
{
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(A);
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(A);
  v6 = matrix_number_of_columns;
  if (matrix_number_of_rows >= matrix_number_of_columns)
  {
    matrix_number_of_rows = matrix_number_of_columns;
  }

  sub_254B39D6C(a1, matrix_number_of_rows);
  sub_254B35394(val, v6);
  sub_254B47E68(jndx, v6);
  column_end = 0;
  if (matrix_number_of_rows)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      *(*a1 + 8 * v7) = 0;
      v9 = sparse_extract_sparse_row_double(A, v7, 0, &column_end, v6, val[0], jndx[0]);
      if (v9 >= 1)
      {
        v10 = jndx[0];
        v11 = val[0];
        v12 = v9;
        v13 = *a1;
        do
        {
          v14 = *v10++;
          if (v14 == v7)
          {
            *(v13 + 8 * v7) = *v11;
            ++v8;
          }

          ++v11;
          --v12;
        }

        while (v12);
      }

      ++v7;
    }

    while (v7 != matrix_number_of_rows);
  }

  else
  {
    v8 = 0;
  }

  if (jndx[0])
  {
    jndx[1] = jndx[0];
    operator delete(jndx[0]);
  }

  if (val[0])
  {
    val[1] = val[0];
    operator delete(val[0]);
  }

  return v8;
}

void sub_254B6223C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B62270(sparse_m_double *a1, uint64_t a2, uint64_t a3, void *A, char a5, double a6, double a7)
{
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(A);
  if (a7 != 0.0 && sparse_get_matrix_number_of_rows(A))
  {
    v14 = 0;
    do
    {
      sparse_insert_entry_double(a1, a7, a2 + v14, a3 + v14);
      ++v14;
    }

    while (v14 < sparse_get_matrix_number_of_rows(A));
  }

  v28 = malloc_type_malloc(8 * matrix_number_of_columns, 0x100004000313F17uLL);
  v15 = malloc_type_malloc(8 * matrix_number_of_columns, 0x100004000313F17uLL);
  column_end = 0;
  if (sparse_get_matrix_number_of_rows(A))
  {
    v16 = 0;
    do
    {
      v17 = sparse_extract_sparse_row_double(A, v16, 0, &column_end, matrix_number_of_columns, v28, v15);
      if (v17 >= 1)
      {
        v18 = v17;
        v19 = v28;
        v20 = v15;
        do
        {
          v22 = *v20++;
          v21 = v22;
          v23 = *v19 * a6;
          if (v22 == v16)
          {
            v23 = v23 + a7;
          }

          if (v23 != 0.0)
          {
            if (a5)
            {
              v24 = v21 + a2;
              v25 = v16 + a3;
            }

            else
            {
              v24 = v16 + a2;
              v25 = v21 + a3;
            }

            sparse_insert_entry_double(a1, v23, v24, v25);
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      if ((~v16 & 0x7FF) == 0)
      {
        sparse_commit(a1);
      }

      ++v16;
    }

    while (v16 < sparse_get_matrix_number_of_rows(A));
  }

  free(v28);
  free(v15);
  return 0;
}

uint64_t sub_254B62430(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *a2;
    v6 = *a3;
    do
    {
      v7 = *(v5 + 8 * v4) + *(v6 + 8 * v4);
      if (v7 != 0.0)
      {
        v8 = (*(result + 8) + 8 * v4);
        v9 = *v8;
        v10 = v8[1] - *v8;
        if (v10 >= 1)
        {
          v11 = 1;
          while (1)
          {
            v12 = *(*(result + 16) + 4 * v9);
            if (v4 == v12)
            {
              break;
            }

            ++v9;
            if (v4 < v12 || v10 <= v11++)
            {
              goto LABEL_4;
            }
          }

          *(*(result + 32) + 8 * v9) = v7;
        }
      }

LABEL_4:
      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

double sub_254B62DD0(double **a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    result = 0.0;
    v8 = 0.0;
    v5 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
    v18 = 0.0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_13;
  }

  v4 = v2 - *a1;
  v5 = *v3;
  v6 = 0.0;
  v7 = 0.0;
  v8 = *v3;
  result = 0.0;
  v10 = *a1;
  do
  {
    v11 = *v10++;
    v12 = v11;
    if (v11 < v5)
    {
      v5 = v12;
    }

    if (v8 < v12)
    {
      v8 = v12;
    }

    v13 = fabs(v12);
    if (result < v13)
    {
      result = v13;
    }

    v6 = v6 + v12;
    v7 = v7 + v12 * v12;
  }

  while (v10 != v2);
  v14 = v6 / v4;
  v15 = sqrt(v7 / v4);
  v16 = 0.0;
  do
  {
    v17 = *v3++;
    v16 = v16 + (v17 - v14) * (v17 - v14);
  }

  while (v3 != v2);
  v18 = sqrt(v16 / v4);
  if (a2)
  {
LABEL_13:
    *a2 = v14;
    a2[1] = v5;
    a2[2] = v8;
    a2[3] = v18;
    a2[4] = result;
    a2[5] = v15;
  }

  return result;
}

double sub_254B62E90(void *a1, double **a2)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    sub_254B39D6C(a2, (v2 >> 3) - 1);
    v6 = (a1[1] - *a1) >> 3;
    if (v6 >= 2)
    {
      v7 = *a2;
      v8 = (*a1 + 8);
      v9 = v6 - 1;
      do
      {
        result = *v8 - *(v8 - 1);
        *v7++ = result;
        ++v8;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

void sub_254B63188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_254B63850(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CVPixelBufferUnlockBaseAddress(v2, 0);
    if (atomic_fetch_add((a1 + 56), 0xFFFFFFFF) == 1)
    {
      *a1 = 0;
    }
  }

  sub_254B6F0EC(a1);

  free(a1);
}

uint64_t sub_254B63F3C(uint64_t result, int a2, int a3, int a4, int a5, _BYTE *a6, int a7, float a8, float a9, double a10, double a11, double a12, float a13, float a14, float a15)
{
  v16 = a8 + -0.5;
  v17 = a9 + -0.5;
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  v18 = v16;
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  v19 = v17;
  v20 = v16 - v16;
  v21 = v17 - v17;
  v22 = a2 - 1;
  if (a2 - 1 > v18)
  {
    v23 = v18 + 1;
  }

  else
  {
    v23 = a2 - 1;
  }

  if (v22 >= v18)
  {
    v22 = v18;
  }

  if (v18 >= a2)
  {
    v18 = v22;
  }

  v24 = a3 - 1;
  if (a3 - 1 > v19)
  {
    v25 = v19 + 1;
  }

  else
  {
    v25 = a3 - 1;
  }

  if (v24 >= v19)
  {
    v24 = v19;
  }

  if (v19 >= a3)
  {
    v19 = v24;
  }

  v26 = result + v19 * a4;
  v27 = (v26 + v18 * a5);
  v28 = (v26 + v23 * a5);
  v29 = result + v25 * a4;
  v30 = (v29 + v18 * a5);
  v31 = (v29 + v23 * a5);
  v32 = (1.0 - v20) * (1.0 - v21);
  v33 = v20 * (1.0 - v21);
  v34 = (1.0 - v20) * v21;
  v35 = v20 * v21;
  LOBYTE(v21) = v27[1];
  LOBYTE(a13) = v28[1];
  LOBYTE(a14) = v30[1];
  v36 = LODWORD(a14);
  LOBYTE(a15) = v31[1];
  v37 = LODWORD(a15);
  v38 = ((((v33 * LODWORD(a13)) + (LODWORD(v21) * v32)) + (v36 * v34)) + (v37 * v35)) + 0.5;
  v39 = v38;
  if (v38 >= 255)
  {
    LOBYTE(v39) = -1;
  }

  LOBYTE(v38) = v27[2];
  LOBYTE(v36) = v28[2];
  LOBYTE(v37) = v30[2];
  *&v40 = LODWORD(v37);
  LOBYTE(v15) = v31[2];
  *&v41 = v15;
  *&v42 = v33 * LODWORD(v36);
  *&v43 = (((*&v42 + (LODWORD(v38) * v32)) + (*&v40 * v34)) + (*&v41 * v35)) + 0.5;
  v44 = *&v43;
  LOBYTE(v43) = v27[3];
  LOBYTE(v42) = v28[3];
  LOBYTE(v40) = v30[3];
  LOBYTE(v41) = v31[3];
  v45 = (((((v33 * v42) + (v43 * v32)) + (v40 * v34)) + (v41 * v35)) + 0.5);
  if (v44 >= 255)
  {
    v46 = -1;
  }

  else
  {
    v46 = v44;
  }

  a6[1] = v39;
  if (v45 >= 255)
  {
    LOBYTE(v45) = -1;
  }

  a6[2] = v46;
  a6[3] = v45;
  if (a7)
  {
    *a6 = -1;
  }

  return result;
}

uint64_t sub_254B640C0(uint64_t result, int a2, int a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10, float a11, float a12, float a13)
{
  if (a4 < a5)
  {
    v15 = result;
    v16 = a4;
    v17 = a5;
    v18 = a3 - a2;
    do
    {
      if (a2 < a3)
      {
        v19 = 0;
        v20 = v16 + 0.5;
        v21 = *(v15 + 80) + (v16 - *(v15 + 120)) * *(v15 + 88);
        v22 = a2;
        do
        {
          v23 = v22 + 0.5;
          v24 = *(v15 + 32) + ((v20 * *(v15 + 28)) + (*(v15 + 24) * v23));
          v25 = (*(v15 + 8) + ((v20 * *(v15 + 4)) + (*v15 * v23))) / v24;
          if (v25 >= 0.0)
          {
            v26 = *(v15 + 64);
            if (v25 < v26)
            {
              *&a10 = v20 * *(v15 + 16);
              LODWORD(a9) = *(v15 + 20);
              v27 = (*&a9 + (*&a10 + (*(v15 + 12) * v23))) / v24;
              if (v27 >= 0.0)
              {
                v28 = *(v15 + 72);
                if (v27 < v28)
                {
                  *&a8 = v28;
                  result = sub_254B63F3C(*(v15 + 40), v26, v28, *(v15 + 48), *(v15 + 56), (v21 + *(v15 + 96) * v19), *(v15 + 96) == 4, v25, v27, a8, a9, a10, a11, a12, a13);
                }
              }
            }
          }

          ++v22;
          ++v19;
        }

        while (v18 != v19);
      }

      ++v16;
    }

    while (v16 != v17);
  }

  return result;
}

double sub_254B64A6C(uint64_t a1)
{
  *(a1 + 4) = 1;
  *(a1 + 8) = xmmword_254B8B940;
  result = 0.000488281365;
  *(a1 + 24) = 0x3F4000003F266666;
  *(a1 + 32) = 1;
  *(a1 + 36) = -1082130432;
  return result;
}

void sub_254B64A9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v7 = a2[1];
  v64[0] = 0;
  v64[1] = 0;
  v64[2] = 0x3FF0000000000000;
  *&v64[3] = a3;
  v65 = xmmword_254B8AAE0;
  v66 = 0;
  v67 = SHIDWORD(a3);
  v68 = 0x3FF0000000000000;
  v69 = a3;
  v70 = SHIDWORD(a3);
  v71 = 0x3FF0000000000000;
  if (a5 != -1)
  {
    v9 = 0;
    v10 = (v8 + 304 * a5);
    v11 = v10 + 8;
    v12 = v10 + 7;
    v13 = v10 + 6;
    v14 = v10 + 5;
    v15 = v10 + 4;
    v16 = v10 + 3;
    v17 = v10 + 2;
    v18 = vld1q_dup_f64(v10++);
    v19 = vld1q_dup_f64(v10);
    v20 = vld1q_dup_f64(v17);
    v21 = vld1q_dup_f64(v15);
    v22 = vld1q_dup_f64(v16);
    v23 = vld1q_dup_f64(v14);
    v24 = vld1q_dup_f64(v12);
    v25 = vld1q_dup_f64(v13);
    v26 = vld1q_dup_f64(v11);
    __asm { FMOV            V19.2D, #1.0 }

    do
    {
      v32 = &v64[v9];
      v74 = vld3q_f64(v32);
      v33 = vmlaq_f64(vmlaq_f64(vmulq_f64(v19, v74.val[1]), v74.val[0], v18), v74.val[2], v20);
      v34 = vmlaq_f64(vmlaq_f64(vmulq_f64(v74.val[1], v21), v33, v22), v74.val[2], v23);
      v35 = vmlaq_f64(vmlaq_f64(vmulq_f64(v34, v24), v33, v25), v74.val[2], v26);
      v36 = vdivq_f64(v33, v35);
      v37 = vdivq_f64(v34, v35);
      vst3q_f64(v32, *(&_Q19 - 2));
      v9 += 6;
    }

    while (v9 != 12);
  }

  if (v7 != v8)
  {
    v38 = 0;
    v39 = 0x86BCA1AF286BCA1BLL * ((v7 - v8) >> 4);
    v40 = a5;
    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v39;
    }

    do
    {
      if (v38 == v40)
      {
        v42 = 1.0;
        v43 = 0.0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0.0;
        v49 = 1.0;
        v50 = 1.0;
      }

      else
      {
        v51 = (*a2 + 304 * v38);
        v50 = *v51;
        v43 = *(v51 + 1);
        v44 = v51[2];
        v45 = v51[3];
        v49 = *(v51 + 4);
        v46 = v51[5];
        v47 = v51[6];
        v48 = *(v51 + 7);
        v42 = v51[8];
      }

      v52 = 0;
      v53 = vdupq_lane_s64(v50, 0);
      v54 = vdupq_lane_s64(v44, 0);
      v55 = vdupq_lane_s64(v45, 0);
      v56 = vdupq_lane_s64(v46, 0);
      v57 = vdupq_lane_s64(v47, 0);
      v58 = v64;
      v59 = vdupq_lane_s64(v42, 0);
      do
      {
        v73 = vld3q_f64(v58);
        v58 += 6;
        v60 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v73.val[1], v48), v73.val[0], v57), v73.val[2], v59);
        v61 = vsubq_f64(vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v73.val[1], v43), v73.val[0], v53), v73.val[2], v54), v60), v73.val[0]);
        v73.val[0] = vsubq_f64(vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v73.val[1], v49), v73.val[0], v55), v73.val[2], v56), v60), v73.val[1]);
        *&v73.val[1].f64[0] = vcvt_f32_f64(v61);
        *&v73.val[2].f64[0] = vcvt_f32_f64(v73.val[0]);
        v62 = &v63[v52];
        vst2_f32(v62, v73.val[1]);
        ++v52;
      }

      while (v52 != 2);
      sub_254B64D00(a4, v63);
      ++v38;
    }

    while (v38 != v41);
  }
}

void sub_254B64D00(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_254B32E20();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_254B36208(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t *sub_254B64DD8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = v3 - *result;
  if (v3 != *result)
  {
    v5 = 0;
    v6 = v4 >> 5;
    v7 = *a2;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v7 + i) = vsub_f32(*(v2 + i), *(v7 + i));
      }

      ++v5;
      v7 += 32;
      v2 += 32;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_254B64E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_254B64DD8(a4, a5);
  operator new();
}

__n128 sub_254B65094(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 != a1 && a3)
  {
    sub_254B35268((a2 + 80), *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 6);
  }

  *(a2 + 168) = *(a1 + 168);
  *(a2 + 75) = *(a1 + 75);
  *(a2 + 73) = *(a1 + 73);
  *(a2 + 192) = *(a1 + 192);
  v5 = *(a1 + 252);
  v6 = *(a1 + 284);
  *(a2 + 268) = *(a1 + 268);
  *(a2 + 284) = v6;
  *(a2 + 252) = v5;
  result = *(a1 + 196);
  v8 = *(a1 + 212);
  v9 = *(a1 + 228);
  *(a2 + 244) = *(a1 + 244);
  *(a2 + 228) = v9;
  *(a2 + 212) = v8;
  *(a2 + 196) = result;
  *(a2 + 300) = *(a1 + 300);
  return result;
}

void sub_254B65138(float *a1, unsigned int a2, int a3, int a4)
{
  v6 = a1;
  if (a3 >= 1)
  {
    bzero(a1, 4 * a3);
  }

  if (a4 < 0)
  {
    v8 = a2;
LABEL_7:
    if (!a2)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = a4 + 1;
  v8 = a2;
  if (v7 >= a2)
  {
    goto LABEL_7;
  }

  bzero(&v6[v7], 4 * (a2 - v7));
LABEL_8:
  v9 = 0.0;
  v10 = v6;
  v11 = v8;
  do
  {
    v12 = *v10++;
    v9 = v9 + v12;
    --v11;
  }

  while (v11);
  do
  {
    *v6 = *v6 / v9;
    ++v6;
    --v8;
  }

  while (v8);
}

void sub_254B651E0(unsigned int *a1, _DWORD *a2, double a3, double a4)
{
  v6 = *a1;
  if (*(a1 + 4) == 1)
  {
    if (v6 > 2)
    {
      v14 = v6;
      v15 = v6 - 1;
      *&a3 = vcvts_n_f32_u64(v15, 1uLL);
      *&a4 = (*&a3 / 3.0) * ((*&a3 / 3.0) + (*&a3 / 3.0));
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v38 = vdupq_lane_s32(*&a4, 0);
      v39 = vdupq_lane_s32(*&a3, 0);
      v18 = xmmword_254B8B0E0;
      v19 = xmmword_254B8AAC0;
      v20 = xmmword_254B8B930;
      v21 = a2 + 2;
      v22 = 0.0;
      v37 = vdupq_n_s64(4uLL);
      v40 = v16;
      do
      {
        v44 = v19;
        v45 = v18;
        v42 = vcgeq_u64(v16, v19);
        v43 = v20;
        v23 = vmovn_s64(v42);
        v41 = vuzp1_s16(v23, *v42.i8);
        v24 = vsubq_f32(vcvtq_f32_u32(v20), v39);
        v49 = vdivq_f32(vmulq_f32(v24, vnegq_f32(v24)), v38);
        v46 = expf(v49.f32[1]);
        *v25.i32 = expf(v49.f32[0]);
        *&v25.i32[1] = v46;
        v47 = v25;
        v26 = expf(v49.f32[2]);
        v27 = v47;
        *&v27.i32[2] = v26;
        v48 = v27;
        v28 = expf(v49.f32[3]);
        v29 = v48;
        *&v29.i32[3] = v28;
        if (v41.i8[0])
        {
          *(v21 - 2) = v48.i32[0];
        }

        if (vuzp1_s16(v23, v41).i8[2])
        {
          *(v21 - 1) = v48.i32[1];
        }

        v16 = v40;
        v30 = vcgeq_u64(v40, v45);
        if (vuzp1_s16(*&v30, vmovn_s64(*&v30)).i32[1])
        {
          *v21 = v48.i32[2];
          v21[1] = v29.i32[3];
        }

        v31.i64[0] = 0x8000000080000000;
        v31.i64[1] = 0x8000000080000000;
        v32 = vbslq_s8(vuzp1q_s32(v42, v30), v29, v31);
        v22 = (((v22 + *v32.i32) + *&v32.i32[1]) + *&v32.i32[2]) + *&v32.i32[3];
        v18 = vaddq_s64(v45, v37);
        v19 = vaddq_s64(v44, v37);
        v33.i64[0] = 0x400000004;
        v33.i64[1] = 0x400000004;
        v20 = vaddq_s32(v43, v33);
        v21 += 4;
        v17 -= 4;
      }

      while (v17);
      v34 = a2;
      do
      {
        *v34 = *v34 / v22;
        ++v34;
        --v14;
      }

      while (v14);
    }

    else if (v6)
    {
      *a2 = 1065353216;
      if (v6 == 2)
      {
        a2[1] = 0;
        LODWORD(v6) = 2;
      }

      else
      {
        LODWORD(v6) = 1;
      }
    }
  }

  else if (v6 >= 1)
  {
    *&a3 = 1.0 / v6;
    v7 = (v6 + 3) & 0xFFFFFFFC;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_254B8B0E0;
    v10 = xmmword_254B8AAC0;
    v11 = a2 + 2;
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *&a3).u8[0])
      {
        *(v11 - 2) = LODWORD(a3);
      }

      if (vuzp1_s16(v13, *&a3).i8[2])
      {
        *(v11 - 1) = LODWORD(a3);
      }

      if (vuzp1_s16(*&a3, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = LODWORD(a3);
        v11[1] = LODWORD(a3);
      }

      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 4;
      v7 -= 4;
    }

    while (v7);
  }

  v35 = a1[2];
  v36 = a1[3];
  if ((v35 & 0x80000000) == 0 || (v36 & 0x80000000) == 0)
  {

    sub_254B65138(a2, v6, v35, v36);
  }
}

void sub_254B65504(uint64_t a1, const void *a2, void *a3, vDSP_Length a4, vDSP_Length a5)
{
  v5 = a5;
  v38 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = 0;
    v9 = 1;
    v10 = a5;
    while (1)
    {
      if ((a3[1] - *a3) >> 4 <= v8)
      {
LABEL_23:
        sub_254B32C08();
      }

      v11 = *(*a3 + 16 * v8);
      if (v11 > a5)
      {
        break;
      }

      if (v10 >= v11)
      {
        v10 = v11;
      }

      v8 = v9++;
      if (v8 >= a4)
      {
        v35 = &v35;
        MEMORY[0x28223BE20](a1);
        v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = 0;
        v17 = v5;
        v18 = 0;
        v20 = *v19;
        v21 = (v19[1] - *v19) >> 4;
        v36 = v17;
        v37 = v22;
        v23 = &v22[4 * (v17 >> 1)];
        do
        {
          if (v21 <= v16)
          {
            goto LABEL_23;
          }

          sub_254B651E0((v20 + 16 * v16), v15, v12, v13);
          v25 = *(v20 + 16 * v16);
          if (v25)
          {
            v26 = &v23[4 * v18 + 4 * (v25 >> 1)];
            v12 = 0.0;
            v27 = v15;
            do
            {
              v28 = *v27++;
              LODWORD(v13) = v28;
              v29 = *v26--;
              *&v12 = *&v12 + (*&v13 * v29);
              --v25;
            }

            while (v25);
          }

          else
          {
            v12 = 0.0;
          }

          *(a1 + 4 * v16) = LODWORD(v12);
          v16 = ++v18;
        }

        while (v18 < a4);
        v5 = v36;
        if (v10 == v36)
        {
          goto LABEL_19;
        }

        return;
      }
    }
  }

  else
  {
    v37 = a2;
    v24 = MEMORY[0x28223BE20](a1);
    v15 = &v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_19:
    MEMORY[0x28223BE20](v24);
    v33 = (&v35 - v32);
    if (v34)
    {
      memcpy(&v35 - v32, v37, v31);
    }

    vDSP_conv(v33, 1, &v15[4 * v5 - 4], -1, v33, 1, a4, v5);
  }
}

void sub_254B65748(void *a1, void *a2, unsigned int *a3, void *a4)
{
  v81 = a4;
  v91 = *MEMORY[0x277D85DE8];
  v4 = a1[1] - *a1;
  if (v4)
  {
    v7 = a1;
    v8 = v4 >> 5;
    *&v9 = 0xEEEEEEEEEEEEEEEELL;
    *(&v9 + 1) = 0xEEEEEEEEEEEEEEEELL;
    v90[0] = v9;
    v90[1] = v9;
    v10 = sub_254B565C0(a2, v4 >> 5);
    if (v7[1] != *v7)
    {
      v11 = 0;
      do
      {
        sub_254B64D00(a2, v90);
        ++v11;
      }

      while (v11 < (v7[1] - *v7) >> 5);
    }

    v84 = a2;
    if (a3)
    {
      v79[0] = v79;
      v12 = *a3;
      MEMORY[0x28223BE20](v10);
      v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v8 + v12;
      sub_254B651E0(a3, v14, v16, v17);
    }

    else
    {
      v18 = *v81;
      v12 = 0;
      v19 = v81[1] - *v81;
      if (v19)
      {
        v20 = v19 >> 4;
        v21 = 1;
        do
        {
          v23 = *v18;
          v18 += 4;
          v22 = v23;
          if (v12 <= v23)
          {
            v12 = v22;
          }
        }

        while (v20 > v21++);
      }

      v79[0] = v79;
      MEMORY[0x28223BE20](v10);
      v14 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v12 + v8;
    }

    v26 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
    v27 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
    v28 = v26;
    v29 = v27;
    v30 = 0;
    v31 = 0;
    v32 = v12 >> 1;
    v82 = v14 - 4;
    if (v8 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v8;
    }

    v85 = v33;
    v86 = v12;
    v34 = v8;
    v35 = 4;
    v87 = v34;
    v88 = v7;
    v79[1] = 4 * v34;
    v80 = a3;
    v36 = v84;
    v89 = v28;
    do
    {
      v37 = *v7;
      v38 = v7[1];
      v39 = *v7 + 8 * v31;
      v40 = (v38 - *v7) >> 5;
      v41 = v28;
      v42 = v29;
      v43 = v32;
      if (v12 >= 2)
      {
        do
        {
          v45 = (v39 + 32 * (v43 % v40));
          v46 = *(v45 + 1);
          *v41++ = *v45;
          *v42++ = v46;
          --v43;
        }

        while (v43);
        v44 = v32;
      }

      else
      {
        v44 = 0;
      }

      if (v38 != v37)
      {
        if (v40 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v40;
        }

        v48 = &v28[v44];
        v49 = (v37 + v35);
        v50 = &v29[v44];
        v44 += v47;
        do
        {
          v51 = *v49;
          *v48++ = *(v49 - 1);
          *v50++ = v51;
          v49 += 8;
          --v47;
        }

        while (v47);
      }

      if (v12 >= 2)
      {
        v52 = v40 - 1;
        v53 = &v29[v44];
        v54 = v32;
        v55 = &v28[v44];
        do
        {
          v56 = (v39 + 32 * (v52 % v40));
          v57 = *(v56 + 1);
          *v55++ = *v56;
          *v53++ = v57;
          --v52;
          --v54;
        }

        while (v54);
      }

      if (a3)
      {
        v58 = *a3;
        v59 = &v82[4 * v58];
        v60 = v87;
        vDSP_conv(v28, 1, v59, -1, v89, 1, v87, v58);
        vDSP_conv(v29, 1, v59, -1, v29, 1, v60, v58);
        v28 = v89;
        v61 = (*v36 + v35);
        v62 = v85;
        v63 = v89;
        v64 = v29;
        do
        {
          v65 = *v63++;
          *(v61 - 1) = v65;
          v66 = *v64++;
          *v61 = v66;
          v61 += 8;
          --v62;
        }

        while (v62);
      }

      else
      {
        v83 = v79;
        v67 = MEMORY[0x28223BE20](v27);
        v69 = (v79 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
        MEMORY[0x28223BE20](v67);
        v71 = (v79 - v70);
        v72 = v81;
        v73 = v87;
        sub_254B65504(v69, v74, v81, v87, v12);
        sub_254B65504(v71, v29, v72, v73, v12);
        v75 = v85;
        v76 = (*v84 + v30);
        do
        {
          v77 = *v69++;
          LODWORD(v78) = v77;
          HIDWORD(v78) = *v71++;
          *v76 = v78;
          v76 += 4;
          --v75;
        }

        while (v75);
        v36 = v84;
        a3 = v80;
        v28 = v89;
      }

      ++v31;
      v35 += 8;
      v30 += 8;
      v7 = v88;
      v12 = v86;
    }

    while (v31 != 4);
    free(v28);
    free(v29);
  }
}

uint64_t sub_254B65B90(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_254B6BA24(a1, a2);
  }

  else
  {
    sub_254B6B9D0(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254B65BFC(uint64_t a1, double *a2, uint64_t a3)
{
  sub_254B65C80(a2, a3, v7);
  v3 = fmaxf(fabsf(v7[3]), fabsf(v7[2]));
  v5 = v7[0] >= 0.95 && v3 <= 0.03;
  if (v7[0] > 1.05)
  {
    v5 = 0;
  }

  return (fabsf(v7[1]) <= 0.5) & v5;
}

float64x2_t sub_254B65C80(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a2 < SHIDWORD(a2))
  {
    v5 = SHIDWORD(a2);
  }

  v31[0] = 1.0 / v5;
  memset(&v31[1], 0, 24);
  v31[4] = 1.0 / v5;
  memset(&v31[5], 0, 24);
  v31[8] = 1.0;
  *v30 = v5;
  memset(&v30[1], 0, 24);
  *&v30[4] = v5;
  memset(&v30[5], 0, 24);
  v30[8] = 0x3FF0000000000000;
  v6 = v31;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = 0;
      v10 = 0.0;
      v11 = v8;
      do
      {
        v12 = *v11;
        v11 += 3;
        v10 = v10 + v6[v9++] * v12;
      }

      while (v9 != 3);
      *(&v32 + 3 * v4 + v7++) = v10;
      ++v8;
    }

    while (v7 != 3);
    ++v4;
    v6 += 3;
  }

  while (v4 != 3);
  v13 = 0;
  v14 = &v32;
  do
  {
    v15 = 0;
    v16 = v30;
    do
    {
      v17 = 0;
      v18 = 0.0;
      v19 = v16;
      do
      {
        v20 = *v19;
        v19 += 3;
        v18 = v18 + *(v14 + v17) * v20;
        v17 += 8;
      }

      while (v17 != 24);
      *(v37 + 3 * v13 + v15++) = v18;
      ++v16;
    }

    while (v15 != 3);
    ++v13;
    v14 = (v14 + 24);
  }

  while (v13 != 3);
  v21 = 0;
  v36 = v38;
  v34 = v37[2];
  v35 = v37[3];
  v32 = v37[0];
  v33 = v37[1];
  v22 = vdupq_lane_s64(v38, 0);
  do
  {
    *(&v32 + v21) = vdivq_f64(*(&v32 + v21), v22);
    v21 += 16;
  }

  while (v21 != 64);
  v23 = v32;
  v24 = *&v32 * *&v34 - *(&v32 + 1) * *(&v33 + 1);
  v25 = (*&v34 * *(&v32 + 1) + *&v32 * *(&v33 + 1)) / v24;
  *a3 = v24;
  *(a3 + 4) = v25;
  v29 = v35;
  v26 = *(&v23 + 1);
  v27 = *&v23;
  *(a3 + 24) = atan2f(v26, v27);
  *&result.f64[0] = v33;
  result.f64[1] = *(&v34 + 1);
  *(a3 + 8) = vcvt_hight_f32_f64(vcvt_f32_f64(v29), result);
  return result;
}

uint64_t sub_254B65E90(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10[9] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 80);
  if (!v5 || *(v5 + 168) < a1[7])
  {
    return 0;
  }

  result = sub_254B65F48(a1, v5, a3);
  if (result)
  {
    result = sub_254B65FC4(a1, a4, a2, v10);
    if (result)
    {
      return sub_254B65BFC(result, v10, a3);
    }
  }

  return result;
}

uint64_t sub_254B65F48(float *a1, double *a2, uint64_t a3)
{
  sub_254B65C80(a2, a3, v8);
  v4 = fmaxf(fabsf(v8[3]), fabsf(v8[2]));
  v6 = v8[0] >= a1[4] && v4 <= a1[2];
  if (v8[0] > a1[3])
  {
    v6 = 0;
  }

  return (fabsf(v8[1]) <= a1[5]) & v6;
}

BOOL sub_254B65FC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v7 = *(a2 + 80);
  v55 = *(v7 + 144);
  *&v56 = *(v7 + 160);
  result = sub_254B666FC(a1, a3, &v55, &v43);
  if (result)
  {
    v44 = 0;
    v9 = *(a2 + 80);
    v55 = *(v9 + 112);
    *&v56 = *(v9 + 128);
    result = sub_254B666FC(result, a3, &v55, &v44);
    if (result)
    {
      v10 = *a3;
      v11 = (*a3 + 304 * v44);
      v12 = v11[7];
      v13 = v11[8];
      v14 = v11[4];
      v15 = v11[5];
      v16 = v11[6];
      v17 = v14 * v13 - v12 * v15;
      v19 = *v11;
      v18 = v11[1];
      v21 = v11[2];
      v20 = v11[3];
      v22 = v12 * v21 - v18 * v13;
      v45 = v17;
      v46 = v22;
      v23 = v18 * v15 - v14 * v21;
      v47 = v23;
      v24 = v22 * v20 + v19 * v17 + v16 * v23;
      if (fabs(v24) >= 2.22044605e-16)
      {
        v45 = v17 / v24;
        v46 = v22 / v24;
        v47 = v23 / v24;
        v48 = (v16 * v15 - v20 * v13) / v24;
        v49 = (v19 * v13 - v16 * v21) / v24;
        v50 = (v20 * v21 - v19 * v15) / v24;
        v51 = (v20 * v12 - v16 * v14) / v24;
        v52 = (v16 * v18 - v19 * v12) / v24;
        v53 = (v19 * v14 - v20 * v18) / v24;
      }

      v25 = 0;
      v26 = *(a2 + 80);
      do
      {
        v27 = 0;
        v28 = &v45;
        do
        {
          v29 = 0;
          v30 = 0.0;
          v31 = v28;
          do
          {
            v32 = *v31;
            v31 += 3;
            v30 = v30 + *(v26 + v29) * v32;
            v29 += 8;
          }

          while (v29 != 24);
          v54[3 * v25 + v27++] = v30;
          ++v28;
        }

        while (v27 != 3);
        ++v25;
        v26 += 24;
      }

      while (v25 != 3);
      v33 = 0;
      v34 = v10 + 304 * v43;
      do
      {
        v35 = 0;
        v36 = v54;
        do
        {
          v37 = 0;
          v38 = 0.0;
          v39 = v36;
          do
          {
            v40 = *v39;
            v39 += 3;
            v38 = v38 + *(v34 + v37) * v40;
            v37 += 8;
          }

          while (v37 != 24);
          *(&v55 + 3 * v33 + v35++) = v38;
          ++v36;
        }

        while (v35 != 3);
        ++v33;
        v34 += 24;
      }

      while (v33 != 3);
      v41 = v58;
      *(a4 + 32) = v57;
      *(a4 + 48) = v41;
      *(a4 + 64) = v59;
      v42 = v56;
      *a4 = v55;
      *(a4 + 16) = v42;
      return 1;
    }
  }

  return result;
}

void sub_254B66238(double a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5, const double *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = *a4;
  v6 = a4[1];
  v8 = (v6 - *a4) >> 4;
  v32[0] = 1.0;
  memset(&v32[1], 0, 24);
  v9 = 0x86BCA1AF286BCA1BLL * v8;
  v32[8] = 1.0;
  v32[4] = 1.0;
  memset(&v32[5], 0, 24);
  if (v6 != v7)
  {
    v14 = 0;
    v15 = 0;
    v16 = (a2 - a1) / (v9 - (v9 > 1));
    do
    {
      v17 = a1 + v16 * v15;
      sub_254B5F230(v32, a6, v17, v31, a5);
      v18 = *a4;
      v19 = 0x86BCA1AF286BCA1BLL * ((a4[1] - *a4) >> 4);
      if (v19 <= v15)
      {
        sub_254B32C08();
      }

      v20 = 0;
      v21 = v18 + 304 * v15;
      v22 = v18 + v14;
      do
      {
        v23 = 0;
        v24 = v31;
        do
        {
          v25 = 0;
          v26 = 0.0;
          v27 = v24;
          do
          {
            v28 = *v27;
            v27 += 3;
            v26 = v26 + *(v22 + v25) * v28;
            v25 += 8;
          }

          while (v25 != 24);
          *(v33 + 3 * v20 + v23++) = v26;
          ++v24;
        }

        while (v23 != 3);
        ++v20;
        v22 += 24;
      }

      while (v20 != 3);
      v29 = v33[3];
      *(v21 + 32) = v33[2];
      *(v21 + 48) = v29;
      *(v21 + 64) = v34;
      v30 = v33[1];
      *v21 = v33[0];
      *(v21 + 16) = v30;
      ++v15;
      v14 += 304;
    }

    while (v19 > v15);
  }
}

uint64_t sub_254B663F0(float *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, int a5, int a6, int *a7)
{
  v29 = **&MEMORY[0x277CC08A0];
  v7 = *a2;
  v28 = *(*a2 + 304 * a5 + 112);
  v27 = *(v7 + 304 * a6 + 112);
  v9 = *a4;
  v8 = a4[1];
  if (v8 == *a4)
  {
    return 0;
  }

  v15 = 0;
  v16 = -1;
  do
  {
    v17 = *(v9 + 8 * v15);
    if (v17)
    {
      v18 = *(v17 + 48);
      if (v18)
      {
        v19 = *(v17 + 64);
        if (v19)
        {
          v26 = *(v18 + 28);
          v25 = *(v19 + 28);
          time1 = v28;
          time2 = *(v18 + 28);
          v22 = v27;
          if (sub_254B66664(&time1, &time2, &v22))
          {
            time1 = v28;
            time2 = v25;
            v22 = v27;
            v20 = sub_254B66664(&time1, &time2, &v22);
          }

          else
          {
            v20 = 0;
          }

          time1 = v28;
          time2 = v27;
          if ((*&v20 & (CMTimeCompare(&time1, &time2) >> 31)) != 0 && sub_254B65E90(a1, a2, a3, v17))
          {
            memset(&time1, 0, sizeof(time1));
            time2 = v25;
            v22 = v26;
            CMTimeSubtract(&time1, &time2, &v22);
            time2 = time1;
            v22 = v29;
            if (CMTimeCompare(&time2, &v22) >= 1)
            {
              v29 = time1;
              v16 = v15;
            }
          }

          v9 = *a4;
          v8 = a4[1];
        }
      }
    }

    ++v15;
  }

  while (v15 < (v8 - v9) >> 3);
  if (v16 == -1)
  {
    return 0;
  }

  *a7 = v16;
  return 1;
}

BOOL sub_254B66664(CMTime *a1, CMTime *a2, CMTime *a3)
{
  time1 = *a2;
  v6 = *a1;
  if (CMTimeCompare(&time1, &v6) < 0)
  {
    return 0;
  }

  time1 = *a2;
  v6 = *a3;
  return CMTimeCompare(&time1, &v6) < 1;
}

BOOL sub_254B666FC(uint64_t a1, uint64_t *a2, CMTime *a3, unint64_t *a4)
{
  v6 = *a2;
  v7 = a2[1];
  if (v7 == *a2 || (time1 = *(v6 + 112), v19 = *a3, v9 = CMTimeCompare(&time1, &v19), v6 = *a2, v7 = a2[1], v9 > 0))
  {
    v10 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 416;
    do
    {
      v10 = v14++;
      if (0x86BCA1AF286BCA1BLL * ((v7 - v6) >> 4) <= v14)
      {
        break;
      }

      v16 = (v6 + v15);
      v17 = *v16;
      time1.epoch = *(v16 + 2);
      *&time1.value = v17;
      v19 = *a3;
      v18 = CMTimeCompare(&time1, &v19);
      v6 = *a2;
      v7 = a2[1];
      v15 += 304;
    }

    while (v18 < 1);
  }

  *a4 = v10;
  if (v10 >= 0x86BCA1AF286BCA1BLL * ((v7 - v6) >> 4))
  {
    return 0;
  }

  time1 = *a3;
  v11 = v6 + 304 * v10;
  v12 = *(v11 + 112);
  v19.epoch = *(v11 + 128);
  *&v19.value = v12;
  return CMTimeCompare(&time1, &v19) == 0;
}

void sub_254B66860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v22 = *(v8 + 28);
  v21 = *(*(a2 + 64) + 28);
  v9 = *a3;
  v10 = a3[1];
  v20 = *(*a3 + 112);
  v19 = *(v10 - 192);
  v23[0] = *(v9 + 112);
  v18 = *(v8 + 28);
  v17 = *(v10 - 192);
  if (sub_254B66664(v23, &v18, &v17))
  {
    v23[0] = v20;
    v18 = v21;
    v17 = v19;
    v11 = sub_254B66664(v23, &v18, &v17);
    if (v11)
    {
      v18.value = 0;
      v17.value = 0;
      v23[0] = v22;
      v12 = sub_254B666FC(v11, a3, v23, &v18);
      v13 = v12;
      v23[0] = v21;
      v14 = sub_254B666FC(v12, a3, v23, &v17);
      if (v13 && v14)
      {
        v15 = sub_254B65FC4(a1, a2, a3, v23);
        if (v15)
        {
          v16 = v17.value + ~v18.value;
          if (v16 <= 1)
          {
            v16 = 1;
          }

          sub_254B66238(-(1.0 / v16 * v18.value), (~v17.value - 0x79435E50D79435E5 * ((a3[1] - *a3) >> 4)) * (1.0 / v16) + 1.0, v15, a3, a4, &v23[0].value);
        }
      }
    }
  }
}

void sub_254B66A78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = 0x86BCA1AF286BCA1BLL * (v7 >> 4);
    v9 = v8 <= 1 ? 1 : v8;
    if (*(v6 + 104) != a6)
    {
      v10 = (v6 + 408);
      v11 = 1;
      do
      {
        if (v9 == v11)
        {
          break;
        }

        v12 = *v10;
        ++v11;
        v10 += 38;
      }

      while (v12 != a6);
    }
  }

  operator new();
}

unint64_t sub_254B6700C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v23 = *a1;
    v24 = 0x86BCA1AF286BCA1BLL * ((v6 - *a1) >> 4) + 1;
    if (v24 > 0xD79435E50D7943)
    {
      sub_254B32E20();
    }

    v25 = a2 - v23;
    v26 = 0x86BCA1AF286BCA1BLL * ((v7 - v23) >> 4);
    v27 = 2 * v26;
    if (2 * v26 <= v24)
    {
      v27 = 0x86BCA1AF286BCA1BLL * ((v6 - *a1) >> 4) + 1;
    }

    if (v26 >= 0x6BCA1AF286BCA1)
    {
      v28 = 0xD79435E50D7943;
    }

    else
    {
      v28 = v27;
    }

    v34 = a1;
    if (v28)
    {
      sub_254B34578(a1, v28);
    }

    v30 = 0;
    v31 = 16 * (v25 >> 4);
    v32 = v31;
    v33 = 0;
    sub_254B6BB54(&v30, a3);
    v4 = sub_254B34F18(a1, &v30, v4);
    sub_254B34798(&v30);
  }

  else if (a2 == v6)
  {
    sub_254B38D90(a1, a3);
  }

  else
  {
    sub_254B34C4C(a1, a2, v6, a2 + 304);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 304;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    *v4 = *(a3 + v9);
    v11 = *(a3 + v9 + 16);
    v12 = *(a3 + v9 + 32);
    v13 = *(a3 + v9 + 48);
    *(v4 + 60) = *(a3 + v9 + 60);
    *(v4 + 32) = v12;
    *(v4 + 48) = v13;
    *(v4 + 16) = v11;
    if (v4 != a3 + v9)
    {
      sub_254B35268((v4 + 80), *(v10 + 80), *(v10 + 88), (*(v10 + 88) - *(v10 + 80)) >> 6);
    }

    *(v4 + 104) = *(v10 + 104);
    v14 = *(v10 + 120);
    v15 = *(v10 + 136);
    v16 = *(v10 + 152);
    *(v4 + 168) = *(v10 + 168);
    *(v4 + 152) = v16;
    *(v4 + 136) = v15;
    *(v4 + 120) = v14;
    v17 = *(v10 + 184);
    v18 = *(v10 + 200);
    v19 = *(v10 + 216);
    *(v4 + 232) = *(v10 + 232);
    *(v4 + 216) = v19;
    *(v4 + 200) = v18;
    *(v4 + 184) = v17;
    v20 = *(v10 + 248);
    v21 = *(v10 + 264);
    v22 = *(v10 + 280);
    *(v4 + 293) = *(v10 + 293);
    *(v4 + 264) = v21;
    *(v4 + 280) = v22;
    *(v4 + 248) = v20;
  }

  return v4;
}

void sub_254B6720C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_254B34798(va);
  _Unwind_Resume(a1);
}

void sub_254B67220(void *a1, uint64_t a2, char a3, int a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 != a1 + 1)
  {
    if (a2 < SHIDWORD(a2))
    {
      v8 = SHIDWORD(a2);
    }

    else
    {
      v8 = a2;
    }

    v9 = -a2 / (v8 + v8);
    v10 = -SHIDWORD(a2) / (v8 + v8);
    v11 = vcvtd_n_f64_s32(a2, 1uLL);
    v12 = vcvtd_n_f64_s32(HIDWORD(a2), 1uLL);
    do
    {
      v13 = v5[5];
      v14 = v13[7];
      v15 = v13[8];
      v16 = v13[4];
      v17 = v13[5];
      v18 = v13[6];
      v19 = v16 * v15 - v14 * v17;
      v21 = *v13;
      v20 = v13[1];
      v23 = v13[2];
      v22 = v13[3];
      v24 = v14 * v23 - v20 * v15;
      *&v50 = v19;
      *(&v50 + 1) = v24;
      v25 = v20 * v17 - v16 * v23;
      *&v51 = v25;
      v26 = v24 * v22 + v21 * v19 + v18 * v25;
      if (fabs(v26) >= 2.22044605e-16)
      {
        *&v50 = v19 / v26;
        *(&v50 + 1) = v24 / v26;
        *&v51 = v25 / v26;
        *(&v51 + 1) = (v18 * v17 - v22 * v15) / v26;
        *&v52 = (v21 * v15 - v18 * v23) / v26;
        *(&v52 + 1) = (v22 * v23 - v21 * v17) / v26;
        *&v53 = (v22 * v14 - v18 * v16) / v26;
        *(&v53 + 1) = (v18 * v20 - v21 * v14) / v26;
        v54 = (v21 * v16 - v22 * v20) / v26;
      }

      if (a3)
      {
        v27 = 0;
        v61[0] = 1.0 / v8;
        v61[1] = 0.0;
        v61[2] = v9;
        v61[3] = 0.0;
        v61[4] = 1.0 / v8;
        v61[5] = v10;
        v61[6] = 0.0;
        v61[7] = 0.0;
        v61[8] = 1.0;
        *v60 = v8;
        v60[1] = 0;
        *&v60[2] = v11;
        v60[3] = 0;
        *&v60[4] = v8;
        *&v60[5] = v12;
        v60[6] = 0;
        v60[7] = 0;
        v28 = v61;
        v60[8] = 0x3FF0000000000000;
        do
        {
          v29 = 0;
          v30 = &v50;
          do
          {
            v31 = 0;
            v32 = 0.0;
            v33 = v30;
            do
            {
              v34 = *v33;
              v33 += 3;
              v32 = v32 + v28[v31++] * v34;
            }

            while (v31 != 3);
            *(&v62 + 3 * v27 + v29++) = v32;
            v30 = (v30 + 8);
          }

          while (v29 != 3);
          ++v27;
          v28 += 3;
        }

        while (v27 != 3);
        v35 = 0;
        v57 = v64;
        v58 = v65;
        v59 = v66;
        v55 = v62;
        v56 = v63;
        v36 = &v55;
        do
        {
          v37 = 0;
          v38 = v60;
          do
          {
            v39 = 0;
            v40 = 0.0;
            v41 = v38;
            do
            {
              v42 = *v41;
              v41 += 3;
              v40 = v40 + *(v36 + v39) * v42;
              v39 += 8;
            }

            while (v39 != 24);
            *(&v62 + 3 * v35 + v37++) = v40;
            ++v38;
          }

          while (v37 != 3);
          ++v35;
          v36 = (v36 + 24);
        }

        while (v35 != 3);
        v43 = 0;
        v59 = v66;
        v57 = v64;
        v58 = v65;
        v55 = v62;
        v56 = v63;
        v44 = vdupq_lane_s64(v66, 0);
        do
        {
          *(&v55 + v43) = vdivq_f64(*(&v55 + v43), v44);
          v43 += 16;
        }

        while (v43 != 64);
        v59 = 0x3FF0000000000000;
        if (!a4)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v57 = v52;
        v58 = v53;
        v59 = *&v54;
        v55 = v50;
        v56 = v51;
        if (!a4)
        {
          goto LABEL_27;
        }
      }

      sub_254B48B98(&v55, &v55);
LABEL_27:
      v45 = 0;
      v46 = v5[5];
      do
      {
        *(v46 + v45) = *(&v55 + v45);
        v45 += 8;
      }

      while (v45 != 72);
      v47 = v5[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v5[2];
          v49 = *v48 == v5;
          v5 = v48;
        }

        while (!v49);
      }

      v5 = v48;
    }

    while (v48 != v4);
  }
}

void sub_254B675B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v94 = *MEMORY[0x277D85DE8];
  v14 = sub_254B30264(a4);
  v16 = *a2;
  v15 = a2[1];
  v17 = 9;
  if (v14)
  {
    v17 = 4;
  }

  v75 = v17;
  sub_254B35BE0(a1);
  v85 = 0;
  v83 = 0u;
  *v84 = 0u;
  *v81 = 0u;
  *v82 = 0u;
  *v79 = 0u;
  v80 = 0u;
  *v78 = 0u;
  if (v14)
  {
    if (v78 != a4)
    {
      sub_254B401C0(v78, *a4, *(a4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3));
      sub_254B6B460(&v79[1], *(a4 + 24), *(a4 + 32), 0x8E38E38E38E38E39 * ((*(a4 + 32) - *(a4 + 24)) >> 3));
      sub_254B401C0(v81, *(a4 + 48), *(a4 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 56) - *(a4 + 48)) >> 3));
      sub_254B6B460(&v82[1], *(a4 + 72), *(a4 + 80), 0x8E38E38E38E38E39 * ((*(a4 + 80) - *(a4 + 72)) >> 3));
    }

    sub_254B6B3C8(v84, a4 + 96);
    v86 = *(a4 + 120);
  }

  if (v15 != v16)
  {
    v18 = 0;
    v72 = (SHIDWORD(a3) / 2);
    v73 = (a3 / 2);
    if (a3 < SHIDWORD(a3))
    {
      v19 = SHIDWORD(a3);
    }

    else
    {
      v19 = a3;
    }

    v70 = -SHIDWORD(a3) / (v19 + v19);
    v71 = -a3 / (v19 + v19);
    v68 = vcvtd_n_f64_s32(HIDWORD(a3), 1uLL);
    v69 = vcvtd_n_f64_s32(a3, 1uLL);
    v74 = (v15 - v16) >> 4;
    if (v74 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = (v15 - v16) >> 4;
    }

    while (1)
    {
      v21 = (*a2 + 16 * v18);
      if (*v21 >= 0.0 && v21[1] >= 0.0)
      {
        break;
      }

      v89 = 0uLL;
      *&v90 = 0;
      sub_254B562F4(a1, &v89);
      v22 = v89;
      if (v89)
      {
        *(&v89 + 1) = v89;
LABEL_43:
        operator delete(v22);
      }

LABEL_44:
      if (++v18 == v20)
      {
        goto LABEL_45;
      }
    }

    sub_254B35394(v77, v75);
    if (v14)
    {
      if (sub_254B30264(v78))
      {
        v23 = (-1431655765 * ((v78[1] - v78[0]) >> 3));
      }

      else
      {
        v23 = 0;
      }

      v46 = v23 - v74 + v18;
      v47 = (*(a4 + 72) + 72 * v46);
      v48 = v47[7];
      v49 = v47[8];
      v50 = v47[4];
      v51 = v47[5];
      v52 = v47[6];
      v53 = v50 * v49 - v48 * v51;
      v55 = *v47;
      v54 = v47[1];
      v57 = v47[2];
      v56 = v47[3];
      v58 = v48 * v57 - v54 * v49;
      v59 = v54 * v51 - v50 * v57;
      v60 = v58 * v56 + *v47 * v53 + v52 * v59;
      if (fabs(v60) >= 2.22044605e-16)
      {
        v53 = v53 / v60;
        v58 = v58 / v60;
        v59 = v59 / v60;
        v5 = (v52 * v51 - v56 * v49) / v60;
        v4 = (v56 * v48 - v52 * v50) / v60;
        v6 = (v55 * v49 - v52 * v57) / v60;
        v7 = (v56 * v57 - v55 * v51) / v60;
        v8 = (v52 * v54 - v55 * v48) / v60;
        v9 = (v55 * v50 - v56 * v54) / v60;
      }

      v61 = (*a2 + 16 * v18);
      v62 = v61[1];
      v63 = v59 + v58 * v62 + v53 * *v61;
      v64 = v9 + v8 * v62 + v4 * *v61;
      v65 = (v7 + v6 * v62 + v5 * *v61) / v64;
      *&v91 = 0;
      v93 = 0;
      v89 = 0u;
      v90 = 0u;
      *&v90 = v63 / v64;
      *(&v91 + 1) = v65;
      *&v92 = -(v63 / v64);
      *(&v92 + 1) = -v65;
      sub_254B48C38(v79[1] + 72 * v46, &v89);
      v66 = v77[0];
      v67 = sub_254B39624(*&v86, *(&v86 + 1));
      sub_254B39630(v66, &v79[1], &v82[1], v46, v67);
      sub_254B65B90(a1, v77);
    }

    else
    {
      sub_254B35394(__p, 9uLL);
      v24 = 0;
      v25 = __p[0];
      *(__p[0] + 2) = 0;
      v25[3] = 0.0;
      *v25 = 1.0;
      v25[1] = 0.0;
      v25[4] = 1.0;
      v25[5] = 0.0;
      v25[6] = 0.0;
      v25[7] = 0.0;
      v25[8] = 1.0;
      v26 = (*a2 + 16 * v18);
      v25[2] = *v26 - v73;
      v25[5] = v26[1] - v72;
      v27 = v77[0];
      v88[0] = 1.0 / v19;
      v88[1] = 0.0;
      v88[2] = v71;
      v88[3] = 0.0;
      v88[4] = 1.0 / v19;
      v88[5] = v70;
      v88[6] = 0.0;
      v88[7] = 0.0;
      v88[8] = 1.0;
      *v87 = v19;
      v87[1] = 0;
      *&v87[2] = v69;
      v87[3] = 0;
      *&v87[4] = v19;
      *&v87[5] = v68;
      v87[6] = 0;
      v87[7] = 0;
      v87[8] = 0x3FF0000000000000;
      v28 = v88;
      do
      {
        v29 = 0;
        v30 = v25;
        do
        {
          v31 = 0;
          v32 = 0.0;
          v33 = v30;
          do
          {
            v34 = *v33;
            v33 += 3;
            v32 = v32 + v28[v31++] * v34;
          }

          while (v31 != 3);
          *(&v89 + 3 * v24 + v29++) = v32;
          ++v30;
        }

        while (v29 != 3);
        ++v24;
        v28 += 3;
      }

      while (v24 != 3);
      v35 = 0;
      *(v27 + 1) = v90;
      *(v27 + 2) = v91;
      *(v27 + 3) = v92;
      *(v27 + 8) = v93;
      *v27 = v89;
      v36 = v27;
      do
      {
        v37 = 0;
        v38 = v87;
        do
        {
          v39 = 0;
          v40 = 0.0;
          v41 = v38;
          do
          {
            v42 = *v41;
            v41 += 3;
            v40 = v40 + *&v36[v39] * v42;
            v39 += 8;
          }

          while (v39 != 24);
          *(&v89 + 3 * v35 + v37++) = v40;
          ++v38;
        }

        while (v37 != 3);
        ++v35;
        v36 += 24;
      }

      while (v35 != 3);
      v43 = 0;
      *(v27 + 1) = v90;
      *(v27 + 2) = v91;
      *(v27 + 3) = v92;
      *(v27 + 8) = v93;
      *v27 = v89;
      v44 = (v27 + 64);
      v45 = vld1q_dup_f64(v44);
      do
      {
        *&v27[v43] = vdivq_f64(*&v27[v43], v45);
        v43 += 16;
      }

      while (v43 != 64);
      *(v27 + 8) = 0x3FF0000000000000;
      sub_254B48B98(v27, v27);
      sub_254B65B90(a1, v77);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    v22 = v77[0];
    if (!v77[0])
    {
      goto LABEL_44;
    }

    v77[1] = v77[0];
    goto LABEL_43;
  }

LABEL_45:
  if (v84[0])
  {
    operator delete(v84[0]);
  }

  if (v82[1])
  {
    *&v83 = v82[1];
    operator delete(v82[1]);
  }

  if (v81[0])
  {
    v81[1] = v81[0];
    operator delete(v81[0]);
  }

  if (v79[1])
  {
    *&v80 = v79[1];
    operator delete(v79[1]);
  }

  if (v78[0])
  {
    v78[1] = v78[0];
    operator delete(v78[0]);
  }
}

uint64_t *sub_254B67C64(uint64_t *result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    v4 = *result;
    if (result[1] != *result)
    {
      v5 = 0;
      v6 = 0;
      if (a2 < SHIDWORD(a2))
      {
        v7 = SHIDWORD(a2);
      }

      else
      {
        v7 = a2;
      }

      v8 = -a2 / (v7 + v7);
      v9 = -SHIDWORD(a2) / (v7 + v7);
      v10 = 1.0 / v7;
      do
      {
        result = CGRectIsNull(*(v4 + v5));
        v4 = *v3;
        if ((result & 1) == 0)
        {
          v11 = (v4 + v5);
          v12 = *(v4 + v5);
          v13 = *(v4 + v5 + 8);
          v14 = v12 + *(v4 + v5 + 16);
          v15 = v13 + *(v4 + v5 + 24);
          v16 = v13 * 0.0;
          v17 = v8 + v13 * 0.0 + v10 * v12;
          v18 = v9 + v10 * v13 + v12 * 0.0;
          v19 = v16 + v12 * 0.0 + 1.0;
          v20 = v17 / v19;
          v21 = v18 / v19;
          v22 = v15 * 0.0 + v14 * 0.0 + 1.0;
          *v11 = v20;
          v11[1] = v21;
          v11[2] = (v8 + v15 * 0.0 + v10 * v14) / v22 - v20;
          v11[3] = (v9 + v10 * v15 + v14 * 0.0) / v22 - v21;
        }

        ++v6;
        v5 += 32;
      }

      while (v6 < (v3[1] - v4) >> 5);
    }
  }

  return result;
}

uint64_t sub_254B67D98(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:IC_C_MOTION_BLUR_VECTOR];

  if (!v6 || ([v5 objectForKeyedSubscript:IC_C_MOTION_BLUR_VECTOR], v7 = objc_claimAutoreleasedReturnValue(), v8 = sub_254B681E8(v7, a1), v7, v8) && 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) == a4)
  {
    v9 = [v5 objectForKeyedSubscript:IC_C_L1_SALIENT_RECTS];

    if (v9)
    {
      [v5 objectForKeyedSubscript:IC_C_L1_SALIENT_RECTS];
      v10 = v51 = v5;
      v11 = a1 + 9;
      a1[10] = a1[9];
      sub_254B565C0(a1 + 9, [v10 count]);
      v12 = 0;
      v13 = MEMORY[0x277CBF398];
      while ([v10 count] > v12)
      {
        v14 = *(v13 + 16);
        rect.origin = *v13;
        rect.size = v14;
        v15 = [v10 objectAtIndexedSubscript:v12];
        v16 = CGRectMakeWithDictionaryRepresentation(v15, &rect);

        if (!v16)
        {

          v31 = 6;
          v5 = v51;
          goto LABEL_46;
        }

        v17 = a1[10];
        v18 = a1[11];
        if (v17 >= v18)
        {
          v21 = (v17 - *v11) >> 5;
          v22 = v21 + 1;
          if ((v21 + 1) >> 59)
          {
            sub_254B32E20();
          }

          v23 = v18 - *v11;
          if (v23 >> 4 > v22)
          {
            v22 = v23 >> 4;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFE0)
          {
            v24 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            sub_254B36208((a1 + 9), v24);
          }

          v25 = 32 * v21;
          size = rect.size;
          *v25 = rect.origin;
          *(v25 + 16) = size;
          v20 = 32 * v21 + 32;
          v27 = a1[9];
          v28 = a1[10] - v27;
          v29 = 32 * v21 - v28;
          memcpy((v25 - v28), v27, v28);
          v30 = a1[9];
          a1[9] = v29;
          a1[10] = v20;
          a1[11] = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          v19 = rect.size;
          *v17 = rect.origin;
          *(v17 + 16) = v19;
          v20 = v17 + 32;
        }

        a1[10] = v20;
        ++v12;
      }

      v5 = v51;
      if (a4 == (a1[10] - a1[9]) >> 5)
      {
        goto LABEL_23;
      }

      v31 = 6;
    }

    else
    {
LABEL_23:
      v32 = [v5 objectForKeyedSubscript:IC_C_L1_CENTER_TARGETS];

      if (v32)
      {
        v33 = [v5 objectForKeyedSubscript:IC_C_L1_CENTER_TARGETS];
        v34 = a1 + 6;
        a1[7] = a1[6];
        sub_254B56520(a1 + 6, [v33 count]);
        for (i = 0; [v33 count] > i; ++i)
        {
          v36 = [v33 objectAtIndexedSubscript:i];
          v37 = CGPointMakeWithDictionaryRepresentation(v36, &rect.origin);

          if (!v37)
          {

            goto LABEL_44;
          }

          v39 = a1[7];
          v38 = a1[8];
          if (v39 >= v38)
          {
            v41 = (v39 - *v34) >> 4;
            v42 = v41 + 1;
            if ((v41 + 1) >> 60)
            {
              sub_254B32E20();
            }

            v43 = v38 - *v34;
            if (v43 >> 3 > v42)
            {
              v42 = v43 >> 3;
            }

            if (v43 >= 0x7FFFFFFFFFFFFFF0)
            {
              v44 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v42;
            }

            if (v44)
            {
              sub_254B36108((a1 + 6), v44);
            }

            v45 = (16 * v41);
            *v45 = rect.origin;
            v40 = 16 * v41 + 16;
            v46 = a1[6];
            v47 = a1[7] - v46;
            v48 = 16 * v41 - v47;
            memcpy(v45 - v47, v46, v47);
            v49 = a1[6];
            a1[6] = v48;
            a1[7] = v40;
            a1[8] = 0;
            if (v49)
            {
              operator delete(v49);
            }
          }

          else
          {
            *v39 = rect.origin;
            v40 = &v39[1];
          }

          a1[7] = v40;
        }

        if (a4 == (a1[7] - a1[6]) >> 4)
        {
          goto LABEL_42;
        }

LABEL_44:
        v31 = 7;
      }

      else
      {
LABEL_42:
        v31 = 0;
      }
    }
  }

  else
  {
    v31 = 5;
  }

LABEL_46:

  return v31;
}

BOOL sub_254B681E8(void *a1, uint64_t *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v3 count]) != 0)
  {
    v37 = 0uLL;
    v38 = 0;
    sub_254B56238(&v37, v5);
    v6 = 0;
    v29 = 0;
    v26 = v5;
    v27 = a2;
    while (1)
    {
      v7 = [v3 objectAtIndexedSubscript:{v6, v26, v27}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v8 = [v7 count];
      if (!v8)
      {
        break;
      }

      __src = 0;
      v35 = 0;
      v36 = 0;
      sub_254B4E130(&__src, v8);
      v28 = v6;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v10)
      {
        v11 = *v31;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v30 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              if (__src)
              {
                v35 = __src;
                operator delete(__src);
              }

              goto LABEL_34;
            }

            [v13 doubleValue];
            v15 = v35;
            if (v35 >= v36)
            {
              v17 = __src;
              v18 = v35 - __src;
              v19 = (v35 - __src) >> 3;
              v20 = v19 + 1;
              if ((v19 + 1) >> 61)
              {
                sub_254B32E20();
              }

              v21 = v36 - __src;
              if ((v36 - __src) >> 2 > v20)
              {
                v20 = v21 >> 2;
              }

              v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
              v23 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v22)
              {
                v23 = v20;
              }

              if (v23)
              {
                sub_254B35448(&__src, v23);
              }

              *(8 * v19) = v14;
              v16 = 8 * v19 + 8;
              memcpy(0, v17, v18);
              v24 = __src;
              __src = 0;
              v35 = v16;
              v36 = 0;
              if (v24)
              {
                operator delete(v24);
              }

              v3 = v4;
            }

            else
            {
              *v35 = v14;
              v16 = (v15 + 8);
            }

            v35 = v16;
          }

          v10 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      sub_254B562F4(&v37, &__src);
      if (__src)
      {
        v35 = __src;
        operator delete(__src);
      }

      v6 = v28 + 1;
      v29 = v26 <= v28 + 1;
      if (v28 + 1 == v26)
      {
        sub_254B40694(v27);
        *v27 = v37;
        v27[2] = v38;
        v38 = 0;
        v37 = 0uLL;
        v29 = 1;
        goto LABEL_34;
      }
    }

LABEL_34:
    __src = &v37;
    sub_254B35B8C(&__src);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void sub_254B68520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *__p, char *a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  __p = &a25;
  sub_254B35B8C(&__p);

  _Unwind_Resume(a1);
}

void sub_254B6859C(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_254B52F70(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *a2;
      v19 = 0x3FF0000000000000;
      sub_254B3F644((v7 + v5), 9uLL, &v19);
      v8 = *(v4 + v5);
      v9 = *v8;
      v10 = (tanhf((fabsf(v9) * 2.0) + -5.0) * 100.0) + 100.0;
      v11 = v8[1];
      v12 = (tanhf((fabsf(v11) * 2.0) + -5.0) * 100.0) + 100.0;
      v13 = (tanhf((fabsf(v10) * 2.0) + -5.0) * 100.0) + 100.0;
      v14 = (tanhf((fabsf(v12) * 2.0) + -5.0) * 100.0) + 100.0;
      if (v13 >= 1.0)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1.0;
      }

      if (v14 < 1.0)
      {
        v14 = 1.0;
      }

      v16 = v15;
      v17 = *(v7 + v5);
      v17[2] = v16;
      v18 = v14;
      v17[6] = v16;
      v17[7] = v18;
      v17[5] = v18;
      ++v6;
      v4 = *a1;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
  }
}

void sub_254B68700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_254B35B8C(va);
  _Unwind_Resume(a1);
}

void *sub_254B68718(void *a1, uint64_t *a2, signed int a3, int a4)
{
  sub_254B3D7B8(a2, a3, a4, a1);
  a1[4] = 0;
  a1[3] = a1 + 4;
  a1[5] = 0;
  sub_254B688BC(a2 + 6, a3, a4, a1 + 6);
  sub_254B3D82C(a2 + 9, a3, a4, a1 + 9);
  v8 = a2[3];
  if (v8 != a2 + 4)
  {
    do
    {
      v9 = sub_254B3D2B0(*(v8 + 8), a3, a4);
      if ((v9 & 0x80000000) == 0)
      {
        v15 = v9;
        v10 = sub_254B35490((a1 + 3), &v15);
        if (v8 != v10)
        {
          sub_254B403B8(v10 + 5, v8[5], v8[6], (v8[6] - v8[5]) >> 3);
        }
      }

      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != a2 + 4);
  }

  return a1;
}

void sub_254B68864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v15 = *(v13 + 24);
  if (v15)
  {
    *(v12 + 56) = v15;
    operator delete(v15);
  }

  sub_254B35FEC(v13, *(v12 + 32));
  a12 = v12;
  sub_254B35B8C(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_254B688BC@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = *result;
  v4 = result[1];
  if (*result == v4 || (a2 & 0x80000000) != 0 || (v6 = (v4 - v5) >> 4, v7 = v6 - a2, v6 <= a2) || a3 <= -2)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if (a3 == -1)
    {
      v8 = v6 - a2;
    }

    else
    {
      v8 = a3;
    }

    if ((v8 + a2) <= v6)
    {
      v7 = v8;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return sub_254B6BFE0(a4, v5 + 16 * a2, v5 + 16 * (v7 + a2), v7);
  }

  return result;
}

void *sub_254B6892C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254B40DB8(a1, *(a1 + 8), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  result = sub_254B41200((a1 + 72), *(a1 + 80), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 5);
  v7 = *(a2 + 24);
  if (v7 != (a2 + 32))
  {
    do
    {
      v11[0] = v7[4] + a3;
      v11[2] = v11;
      result = sub_254B35490(a1 + 24, v11);
      if (v7 != result)
      {
        result = sub_254B403B8(result + 5, v7[5], v7[6], (v7[6] - v7[5]) >> 3);
      }

      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != (a2 + 32));
  }

  return result;
}

uint64_t sub_254B68A3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t *a9@<X8>, float a10@<S0>, _DWORD *a11)
{
  v16 = a2;
  v36 = *MEMORY[0x277D85DE8];
  v18 = HIDWORD(a2);
  if (a10 == -1.0)
  {
    v19 = 0.1;
  }

  else
  {
    v19 = a10;
  }

  v20 = *(a1 + 36);
  if (v20 == -1.0)
  {
    v22 = v19;
  }

  else
  {
    v21 = a2 / SHIDWORD(a2);
    v22 = fmaxf(v19, ((v20 / v21) * (v19 + -1.0)) + 1.0);
    v19 = fmaxf(v19, ((v21 / v20) * (v19 + -1.0)) + 1.0);
  }

  if (a2 < SHIDWORD(a2))
  {
    v23 = SHIDWORD(a2);
  }

  else
  {
    v23 = a2;
  }

  v24.n128_f64[0] = sub_254B3CEC8(v28, a6, 1, a2 / v23, SHIDWORD(a2) / v23, v22, v19);
  if (a7)
  {
    v29 = 0;
  }

  if (a8)
  {
    v30 = 0;
  }

  sub_254B3CF80(v31, v24);
  if (a3)
  {
    sub_254B6B644(v31, a3);
    sub_254B6B6B8(v32, a3 + 32);
  }

  if (a4 >= 1)
  {
    v33 = 1;
    LODWORD(v25) = a4 >> 1;
    if (a5 <= 0)
    {
      v25 = v25;
    }

    else
    {
      v25 = a5;
    }

    v34 = a4;
    v35 = v25;
  }

  sub_254B3DD94(v28, a11, a9);
  v26 = *a9;
  *(v26 + 264) = v16;
  *(v26 + 268) = v18;
  sub_254B36250(v32);
  return sub_254B362D0(v31);
}

void sub_254B68C08(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, int *a8)
{
  v134 = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v93 = 0uLL;
  v94 = 0;
  if (*a6 != a6[1])
  {
    sub_254B6859C(a6, __p);
    sub_254B40694(&v93);
    v93 = *__p;
    v94 = v99;
    __p[1] = 0;
    *&v99 = 0;
    __p[0] = 0;
    *&v126 = __p;
    sub_254B35B8C(&v126);
  }

  v16 = 0x86BCA1AF286BCA1BLL * ((a3[1] - *a3) >> 4);
  v88 = v15;
  v17 = v15 == 1;
  if (v15 == 1)
  {
    v18 = 4;
  }

  else
  {
    v18 = 9;
  }

  if (v17)
  {
    if (sub_254B30264(a4))
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3);
    }

    else
    {
      v19 = 0;
    }

    if (v19 < v16)
    {
      *a8 = 3;
      goto LABEL_101;
    }

    if (sub_254B30264(a4))
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3);
    }

    else
    {
      LODWORD(v20) = 0;
    }

    v86 = v20 - v16;
  }

  else
  {
    v86 = 0;
  }

  *&v126 = 0;
  sub_254B3F9BC(__p, v18);
  v85 = v16;
  sub_254B3FC50(v92, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v87 = v16;
  v84 = a8;
  v82 = a7;
  v83 = a2;
  if (v88 == 1)
  {
    if (v16 >= 1)
    {
      v21 = 0;
      v22 = v16 & 0x7FFFFFFF;
      v23 = v86;
      do
      {
        v24 = *(v92[0] + v21);
        v25 = sub_254B39624(*(a4 + 120), *(a4 + 128));
        sub_254B39630(v24, (a4 + 24), (a4 + 72), v23++, v25);
        v21 += 24;
        --v22;
      }

      while (v22);
    }
  }

  else if (v16 >= 1)
  {
    v26 = 0;
    v27 = 0;
    if (a5 < SHIDWORD(a5))
    {
      v28 = SHIDWORD(a5);
    }

    else
    {
      v28 = a5;
    }

    v29 = vcvtd_n_f64_s32(a5, 1uLL);
    v30 = vcvtd_n_f64_s32(HIDWORD(a5), 1uLL);
    do
    {
      v31 = 0;
      v32 = *a3;
      *&v126 = 1.0 / v28;
      *(&v126 + 1) = 0;
      v127 = -a5 / (v28 + v28);
      v128 = 0;
      v129 = 1.0 / v28;
      v130 = -SHIDWORD(a5) / (v28 + v28);
      v131 = 0;
      v132 = 0;
      v133 = 0x3FF0000000000000;
      v120 = v28;
      v121[0] = 0;
      *&v121[1] = v29;
      v121[2] = 0;
      *&v121[3] = v28;
      v122 = v30;
      v123 = 0;
      v124 = 0;
      v33 = (v32 + v26);
      v34 = &v126;
      v125 = 0x3FF0000000000000;
      do
      {
        v35 = 0;
        v36 = v33;
        do
        {
          v37 = 0;
          v38 = 0.0;
          v39 = v36;
          do
          {
            v40 = *v39;
            v39 += 3;
            v38 = v38 + *(v34 + v37) * v40;
            v37 += 8;
          }

          while (v37 != 24);
          *(&__p[3 * v31] + v35++) = v38;
          ++v36;
        }

        while (v35 != 3);
        ++v31;
        v34 = (v34 + 24);
      }

      while (v31 != 3);
      v41 = 0;
      v117 = v100;
      v118 = v101;
      v119 = v102;
      v115 = *__p;
      v116 = v99;
      v42 = &v115;
      do
      {
        v43 = 0;
        v44 = &v120;
        do
        {
          v45 = 0;
          v46 = 0.0;
          v47 = v44;
          do
          {
            v48 = *v47;
            v47 += 3;
            v46 = v46 + *(v42 + v45) * v48;
            v45 += 8;
          }

          while (v45 != 24);
          *(&__p[3 * v41] + v43++) = v46;
          ++v44;
        }

        while (v43 != 3);
        ++v41;
        v42 = (v42 + 24);
      }

      while (v41 != 3);
      v49 = 0;
      v119 = v102;
      v117 = v100;
      v118 = v101;
      v115 = *__p;
      v116 = v99;
      v50 = vdupq_lane_s64(v102, 0);
      do
      {
        *(&v115 + v49) = vdivq_f64(*(&v115 + v49), v50);
        v49 += 16;
      }

      while (v49 != 64);
      v119 = 0x3FF0000000000000;
      sub_254B48B98(&v115, &v115);
      v51 = 0;
      v52 = *(v92[0] + 24 * v27);
      do
      {
        *(v52 + v51) = *(&v115 + v51);
        v51 += 8;
      }

      while (v51 != 72);
      ++v27;
      v26 += 304;
    }

    while (v27 != (v87 & 0x7FFFFFFF));
  }

  sub_254B4031C(v91, 0x86BCA1AF286BCA1BLL * ((a3[1] - *a3) >> 4));
  if (v87 >= 1)
  {
    v53 = 0;
    v54 = v87 & 0x7FFFFFFF;
    v55 = 112;
    do
    {
      v56 = *a3 + v55;
      v57 = v91[0] + v53;
      v58 = *v56;
      *(v57 + 2) = *(v56 + 16);
      *v57 = v58;
      v53 += 24;
      v55 += 304;
      --v54;
    }

    while (v54);
  }

  sub_254B3D2AC(__p);
  v59 = v88;
  if (v87 >= 1)
  {
    v60 = 0;
    v61 = v87 & 0x7FFFFFFF;
    v62 = 72;
    v63 = v86;
    do
    {
      if (v59 == 1)
      {
        if (((*(*(a4 + 96) + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if ((*(*a3 + v62) & 1) == 0)
      {
LABEL_55:
        v64 = v104;
        if (v104 >= v105)
        {
          v66 = __src;
          v67 = v104 - __src;
          v68 = (v104 - __src) >> 2;
          v69 = v68 + 1;
          if ((v68 + 1) >> 62)
          {
            sub_254B32E20();
          }

          v70 = v105 - __src;
          if ((v105 - __src) >> 1 > v69)
          {
            v69 = v70 >> 1;
          }

          if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v71 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v69;
          }

          if (v71)
          {
            sub_254B3383C(&__src, v71);
          }

          *(4 * v68) = v60;
          v65 = 4 * v68 + 4;
          memcpy(0, v66, v67);
          v72 = __src;
          __src = 0;
          v104 = v65;
          v105 = 0;
          if (v72)
          {
            operator delete(v72);
          }

          v59 = v88;
        }

        else
        {
          *v104 = v60;
          v65 = (v64 + 4);
        }

        v104 = v65;
      }

      ++v60;
      ++v63;
      v62 += 304;
      --v61;
    }

    while (v61);
  }

  if (a6[6] != a6[7])
  {
    sub_254B675B8(v108, a6 + 6, a5, a4);
  }

  v73 = a6[9];
  v74 = a6[10];
  if (v73 != v74)
  {
    v126 = 0uLL;
    v127 = 0.0;
    sub_254B36150(&v126, v73, v74, (v74 - v73) >> 5);
    sub_254B67C64(&v126, a5, 1);
    if (v109[0])
    {
      v109[1] = v109[0];
      operator delete(v109[0]);
    }

    *v109 = v126;
    v110 = v127;
  }

  if (v93 != *(&v93 + 1))
  {
    sub_254B40694(&v106);
    v106 = v93;
    v107 = v94;
    v94 = 0;
    v93 = 0uLL;
  }

  if (v59 != 1)
  {
    if (a6[5])
    {
      v80 = sub_254B35C38(&v126, (a6 + 3));
      sub_254B67220(v80, a5, 1, 1);
      sub_254B35FEC(&v113, *(&v113 + 1));
      v81 = *(&v126 + 1);
      v113 = v126;
      v114 = v127;
      if (v127 == 0.0)
      {
        *&v113 = &v113 + 8;
      }

      else
      {
        *(*(&v126 + 1) + 16) = &v113 + 8;
        *&v126 = &v126 + 8;
        *(&v126 + 1) = 0;
        v127 = 0.0;
        v81 = 0;
      }

      sub_254B35FEC(&v126, v81);
    }

    goto LABEL_95;
  }

  sub_254B35394(&v126, v85);
  if (v87 <= 0)
  {
    v79 = v126;
  }

  else
  {
    v75 = 0;
    v76 = 72 * v86;
    do
    {
      v77 = *(*(a4 + 72) + v76);
      v78 = sub_254B39624(*(a4 + 120), *(a4 + 128));
      v79 = v126;
      *(v126 + 8 * v75++) = v77 / v78;
      v76 += 72;
    }

    while ((v87 & 0x7FFFFFFF) != v75);
  }

  v89 = 0uLL;
  v90 = 0;
  sub_254B35A88(&v89, v79, *(&v126 + 1), (*(&v126 + 1) - v79) >> 3);
  if (v111)
  {
    *(&v111 + 1) = v111;
    operator delete(v111);
  }

  v111 = v89;
  v112 = v90;
  v90 = 0;
  v89 = 0uLL;
  if (v126)
  {
    *(&v126 + 1) = v126;
    operator delete(v126);
  }

  if (!a6[5])
  {
LABEL_95:
    v97 = 0;
    if (*(v82 + 24))
    {
      v120 = *&v83;
      sub_254B384E4(v121, v82);
      v122 = *&a4;
      *&v126 = v120;
      sub_254B6C054(&v126 + 8, v121);
      v130 = v122;
      operator new();
    }

    sub_254B41754(v95, v96);
    sub_254B3DF00(v83, v92, __p, v95, v84);
    sub_254B417EC(v95);
    sub_254B417EC(v96);
    goto LABEL_98;
  }

  puts("Path constraints not supported for L1 logRotScale model.");
  *v84 = 3;
LABEL_98:
  sub_254B3842C(__p);
  if (v91[0])
  {
    v91[1] = v91[0];
    operator delete(v91[0]);
  }

  __p[0] = v92;
  sub_254B35B8C(__p);
LABEL_101:
  __p[0] = &v93;
  sub_254B35B8C(__p);
}

void sub_254B69530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41, uint64_t a42)
{
  sub_254B35FEC(v42 - 224, *(v42 - 216));
  sub_254B3842C(&a41);
  if (__p)
  {
    operator delete(__p);
  }

  a41 = &a26;
  sub_254B35B8C(&a41);
  a41 = &a29;
  sub_254B35B8C(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_254B69634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    operator new();
  }

  puts("Passed NULL l1StabResults to createSmoothingHomographiesWithL1()");
  return 0;
}

void sub_254B697C4(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, signed int a4@<W3>, signed int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v104 = *MEMORY[0x277D85DE8];
  v84 = a1;
  if (!a1)
  {
    puts("Passed NULL l1StabResults to getSmoothingHomographiesFromL1Results()");
LABEL_12:
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    return;
  }

  v9 = a3;
  v10 = (a3 - a6);
  if (v10 < 1)
  {
    goto LABEL_12;
  }

  v14 = sub_254B30264(a2);
  v15 = v14 ? 4 : 9;
  v83 = v14;
  if (v14)
  {
    v16 = sub_254B30264(a2) ? 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) : 0;
    if (v16 < v10)
    {
      goto LABEL_12;
    }
  }

  v81 = a2;
  v82 = a7;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v17 = sub_254B6B72C(a7, v10);
  if (v9 > a6)
  {
    if (a4 < a5)
    {
      v18 = a5;
    }

    else
    {
      v18 = a4;
    }

    v19 = -a4 / (v18 + v18);
    v20 = -a5 / (v18 + v18);
    v21 = vcvtd_n_f64_s32(a4, 1uLL);
    v22 = vcvtd_n_f64_s32(a5, 1uLL);
    v23 = a6;
    v24 = 8 * v15 * a6;
    v86 = 8 * v15;
    v87 = 72 * a6;
    v80 = v9;
    do
    {
      v25 = a7[1];
      v26 = a7[2];
      if (v25 >= v26)
      {
        v28 = *a7;
        v29 = v25 - *a7;
        v30 = 0x8E38E38E38E38E39 * (v29 >> 3) + 1;
        if (v30 > 0x38E38E38E38E38ELL)
        {
          sub_254B32E20();
        }

        v31 = 0x8E38E38E38E38E39 * ((v26 - v28) >> 3);
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x1C71C71C71C71C7)
        {
          v30 = 0x38E38E38E38E38ELL;
        }

        if (v30)
        {
          sub_254B36B70(a7, v30);
        }

        v32 = 8 * (v29 >> 3);
        *(v32 + 64) = 0;
        *(v32 + 32) = 0u;
        *(v32 + 48) = 0u;
        *v32 = 0u;
        *(v32 + 16) = 0u;
        v27 = v32 + 72;
        v33 = v32 - v29;
        memcpy((v32 - v29), v28, v29);
        v17 = *a7;
        *a7 = v33;
        a7[1] = v27;
        a7[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }

        LODWORD(v9) = v80;
      }

      else
      {
        *(v25 + 64) = 0;
        *(v25 + 32) = 0u;
        *(v25 + 48) = 0u;
        v27 = v25 + 72;
        *v25 = 0u;
        *(v25 + 16) = 0u;
      }

      v85 = &v79;
      a7[1] = v27;
      MEMORY[0x28223BE20](v17);
      v35 = (&v79 - v34);
      v36 = 0;
      v37 = *(v84 + 8);
      do
      {
        v35->f64[v36] = *(v37 + v24 + 8 * v36);
        ++v36;
      }

      while (v15 != v36);
      if (v83)
      {
        v38 = *(v81 + 9);
        v39 = sub_254B39624(v81[15], v81[16]);
        sub_254B396E8(&v99, v35, (v38 + 72 * v23), v39);
        v40 = *&v101 * v103 - *(&v102 + 1) * *(&v101 + 1);
        *(v27 - 72) = v40;
        v41 = *(&v102 + 1) * *&v100 - *(&v99 + 1) * v103;
        *(v27 - 64) = v41;
        v42 = *(&v99 + 1) * *(&v101 + 1) - *&v101 * *&v100;
        *(v27 - 56) = v42;
        v43 = v41 * *(&v100 + 1) + *&v99 * v40 + *&v102 * v42;
        if (fabs(v43) < 2.22044605e-16)
        {
          v44 = *(v27 - 8);
        }

        else
        {
          *(v27 - 72) = v40 / v43;
          *(v27 - 64) = v41 / v43;
          *(v27 - 56) = v42 / v43;
          *(v27 - 48) = (*&v102 * *(&v101 + 1) - *(&v100 + 1) * v103) / v43;
          *(v27 - 24) = (*(&v100 + 1) * *(&v102 + 1) - *&v102 * *&v101) / v43;
          *(v27 - 40) = (*&v99 * v103 - *&v102 * *&v100) / v43;
          *(v27 - 32) = (*(&v100 + 1) * *&v100 - *&v99 * *(&v101 + 1)) / v43;
          *(v27 - 16) = (*&v102 * *(&v99 + 1) - *&v99 * *(&v102 + 1)) / v43;
          v44 = (*&v99 * *&v101 - *(&v100 + 1) * *(&v99 + 1)) / v43;
          *(v27 - 8) = v44;
        }

        a7 = v82;
        v77 = vdupq_lane_s64(*&v44, 0);
        for (i = -72; i != -8; i += 16)
        {
          *(v27 + i) = vdivq_f64(*(v27 + i), v77);
        }
      }

      else
      {
        v45 = 0;
        v46 = (v27 - 72);
        v47 = v37 + v87;
        do
        {
          *(&v92 + v45) = *(v47 + v45);
          v45 += 8;
        }

        while (v45 != 72);
        sub_254B48C38(v88, &v92);
        v96 = v91;
        v94 = v89;
        v95 = v90;
        v92 = v88[0];
        v93 = v88[1];
        v48 = *&v89 * v91 - *(&v90 + 1) * *(&v89 + 1);
        *(v27 - 72) = v48;
        v49 = *(&v95 + 1) * *&v93 - *(&v92 + 1) * v96;
        *(v27 - 64) = v49;
        v50 = *(&v92 + 1) * *(&v94 + 1) - *&v94 * *&v93;
        *(v27 - 56) = v50;
        v51 = v49 * *(&v93 + 1) + *&v92 * v48 + *&v95 * v50;
        if (fabs(v51) >= 2.22044605e-16)
        {
          *(v27 - 72) = v48 / v51;
          *(v27 - 64) = v49 / v51;
          *(v27 - 56) = v50 / v51;
          *(v27 - 48) = (*&v95 * *(&v94 + 1) - *(&v93 + 1) * v96) / v51;
          *(v27 - 24) = (*(&v93 + 1) * *(&v95 + 1) - *&v95 * *&v94) / v51;
          *(v27 - 40) = (*&v92 * v96 - *&v95 * *&v93) / v51;
          *(v27 - 32) = (*(&v93 + 1) * *&v93 - *&v92 * *(&v94 + 1)) / v51;
          *(v27 - 16) = (*&v95 * *(&v92 + 1) - *&v92 * *(&v95 + 1)) / v51;
          *(v27 - 8) = (*&v92 * *&v94 - *(&v93 + 1) * *(&v92 + 1)) / v51;
        }

        v52 = 0;
        v98[0] = 1.0 / v18;
        v98[1] = 0.0;
        v98[2] = v19;
        v98[3] = 0.0;
        v98[4] = 1.0 / v18;
        v98[5] = v20;
        v98[6] = 0.0;
        v98[7] = 0.0;
        v98[8] = 1.0;
        *v97 = v18;
        v97[1] = 0;
        *&v97[2] = v21;
        v97[3] = 0;
        *&v97[4] = v18;
        *&v97[5] = v22;
        v97[6] = 0;
        v97[7] = 0;
        v53 = v97;
        v97[8] = 0x3FF0000000000000;
        do
        {
          v54 = 0;
          v55 = v27;
          do
          {
            v56 = 0.0;
            v57 = -72;
            v58 = v53;
            do
            {
              v59 = *v58++;
              v56 = v56 + v59 * *(v55 + v57);
              v57 += 24;
            }

            while (v57);
            *(&v99 + 3 * v52 + v54++) = v56;
            v55 += 8;
          }

          while (v54 != 3);
          ++v52;
          v53 += 3;
        }

        while (v52 != 3);
        v60 = 0;
        *v46 = v99;
        v61 = v100;
        v62 = v101;
        v63 = v102;
        *(v27 - 8) = v103;
        *(v27 - 40) = v62;
        *(v27 - 24) = v63;
        *(v27 - 56) = v61;
        v64 = v27 - 72;
        do
        {
          v65 = 0;
          v66 = v98;
          do
          {
            v67 = 0;
            v68 = 0.0;
            v69 = v66;
            do
            {
              v70 = *v69;
              v69 += 3;
              v68 = v68 + *(v64 + v67) * v70;
              v67 += 8;
            }

            while (v67 != 24);
            *(&v99 + 3 * v60 + v65++) = v68;
            ++v66;
          }

          while (v65 != 3);
          ++v60;
          v64 += 24;
        }

        while (v60 != 3);
        *v46 = v99;
        v71 = v100;
        v72 = v101;
        v73 = v102;
        *(v27 - 8) = v103;
        *(v27 - 40) = v72;
        *(v27 - 24) = v73;
        *(v27 - 56) = v71;
        v74 = (v27 - 8);
        v75 = vld1q_dup_f64(v74);
        for (j = -72; j != -8; j += 16)
        {
          *(v27 + j) = vdivq_f64(*(v27 + j), v75);
        }
      }

      *(v27 - 8) = 0x3FF0000000000000;
      ++v23;
      v24 += v86;
      v87 += 72;
    }

    while (v23 != v9);
  }
}

void sub_254B69F40(_Unwind_Exception *exception_object)
{
  v3 = **(v1 + 24);
  if (v3)
  {
    *(*(v1 + 24) + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B69F74(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = (a2[1] - *a2) >> 4;
  v15 = 0;
  v16 = 0;
  v10 = 0x86BCA1AF286BCA1BLL * v9;
  v17 = 0;
  memset(__p, 0, sizeof(__p));
  sub_254B565C0(&v15, 0x86BCA1AF286BCA1BLL * v9);
  v11 = sub_254B565C0(__p, v10);
  sub_254B64A9C(v11, a2, a3, &v15, 0);
  v12 = *a1;
  if (v12 > 1)
  {
    if (a5)
    {
      sub_254B65748(&v15, __p, 0, a5);
    }

    else
    {
      v18[0] = v12 | (*(a1 + 4) << 32);
      v18[1] = -1;
      sub_254B65748(&v15, __p, v18, 0);
    }
  }

  else
  {
    v13 = sub_254B6C678(__p, v15, v16, (v16 - v15) >> 5);
  }

  sub_254B64E30(v13, a2, a3, &v15, __p);
}

void sub_254B6A0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B6A0F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (a2[1] != *a2 && a5 <= a6)
  {
    v9 = a5;
    v11 = 0;
    v12 = a6 + 1;
    v13 = 304 * a5;
    do
    {
      if (0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 4) <= v9)
      {
        sub_254B32C08();
      }

      v14 = *a2 + v13;
      if (v11 >= v35)
      {
        v15 = (v11 - v33) >> 3;
        if ((v15 + 1) >> 61)
        {
          sub_254B32E20();
        }

        v16 = (v35 - v33) >> 2;
        if (v16 <= v15 + 1)
        {
          v16 = v15 + 1;
        }

        if (v35 - v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_254B5968C(&v33, v17);
        }

        v18 = (8 * v15);
        *v18 = v14;
        v11 = (8 * v15 + 8);
        v19 = v18 - (v34 - v33);
        memcpy(v19, v33, v34 - v33);
        v20 = v33;
        v33 = v19;
        v34 = v11;
        v35 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v11 = v14;
        v11 += 8;
      }

      v34 = v11;
      ++v9;
      v13 += 304;
    }

    while (v12 != v9);
  }

  sub_254B51E00(v28, a3, &v33);
  if (*(a1 + 36) != -1.0)
  {
    v32 = *(a1 + 36);
  }

  v30 = *(a1 + 32);
  v31 = a7;
  if ((a8 & 0x8000000080000000) == 0)
  {
    v29 = a8;
  }

  sub_254B51C50(v28);
  v21 = sub_254B51D38(v28, a4);
  sub_254B51E80(v28);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  return v21;
}