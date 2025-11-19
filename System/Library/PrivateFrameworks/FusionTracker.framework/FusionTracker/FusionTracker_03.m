void TtDetNode::decodeRelBoxes(const float *a1, const float *a2, unsigned int a3, float *a4)
{
  if (a3)
  {
    v4 = a3;
    if (a3 <= 3)
    {
      v5 = 0;
LABEL_4:
      v6 = v4 - v5;
      v7 = (16 * v5) | 8;
      v8 = (a2 + v7);
      v9 = (a4 + v7);
      v10 = (a1 + v7);
      __asm
      {
        FMOV            V9.2S, #10.0
        FMOV            V10.2S, #5.0
      }

      do
      {
        v16 = v8[-1];
        v17 = vmul_f32(vadd_f32(v16, *v8), 0x3F0000003F000000);
        v18 = vsub_f32(*v8, v16);
        v19 = vdiv_f32(v10[-1], _D9);
        v20 = vdiv_f32(*v10, _D10);
        v74 = v20.f32[0];
        v78 = expf(v20.f32[1]);
        v21.f32[0] = expf(v74);
        v21.f32[1] = v78;
        v22 = vmul_f32(v18, v21);
        v23 = vsub_f32(vmla_f32(v17, v18, v19), vmul_f32(v22, 0x3F0000003F000000));
        v9[-1] = v23;
        *v9 = vadd_f32(v22, v23);
        v8 += 2;
        v9 += 2;
        v10 += 2;
        --v6;
      }

      while (v6);
      return;
    }

    v5 = 0;
    v24 = 16 * a3 - 12;
    v25 = a4 + v24;
    v26 = a2 + v24;
    v27 = 16 * a3 - 8;
    v28 = &a4[4 * a3];
    v29 = &a2[4 * a3];
    v30 = 16 * v4 - 4;
    v31 = a4 + v30;
    v32 = a2 + v30;
    v34 = a4 + 1 < (a2 + v27) && a2 + 1 < (a4 + v27);
    v36 = (a4 + 3) < v29 && (a2 + 3) < v28;
    v38 = (a4 + 2) < v32 && (a2 + 2) < v31;
    if (v25 > a2 && v26 > a4)
    {
      goto LABEL_4;
    }

    if (v34)
    {
      goto LABEL_4;
    }

    if (v36)
    {
      goto LABEL_4;
    }

    if (v38)
    {
      goto LABEL_4;
    }

    v5 = v4 & 0xFFFFFFFC;
    __asm
    {
      FMOV            V1.4S, #10.0
      FMOV            V0.4S, #5.0
    }

    v62 = _Q0;
    v63 = _Q1;
    v42 = v5;
    v43 = a2;
    v44 = a2;
    v45 = a1;
    v46 = a1;
    v47 = a4;
    v48 = a4;
    do
    {
      v80 = vld4q_f32(v44);
      v44 += 16;
      v49.i64[0] = 0x3F0000003F000000;
      v49.i64[1] = 0x3F0000003F000000;
      v67 = vmulq_f32(vaddq_f32(v80.val[1], v80.val[3]), v49);
      v68 = vmulq_f32(vaddq_f32(v80.val[0], v80.val[2]), v49);
      v69 = vsubq_f32(v80.val[2], v80.val[0]);
      v82 = vld4q_f32(v46);
      v46 += 16;
      v66 = vsubq_f32(v80.val[3], v80.val[1]);
      v64 = vdivq_f32(v82.val[1], v63);
      v65 = vdivq_f32(v82.val[0], v63);
      v79 = vdivq_f32(v82.val[3], v62);
      v75 = vdivq_f32(v82.val[2], v62);
      v70 = expf(v75.f32[1]);
      v50.f32[0] = expf(v75.f32[0]);
      v50.f32[1] = v70;
      v71 = v50;
      v51 = expf(v75.f32[2]);
      v52 = v71;
      v52.f32[2] = v51;
      v72 = v52;
      v53 = expf(v75.f32[3]);
      v54 = v72;
      v54.f32[3] = v53;
      v73 = vmulq_f32(v69, v54);
      v75.i32[0] = expf(v79.f32[1]);
      v55.f32[0] = expf(v79.f32[0]);
      v55.i32[1] = v75.i32[0];
      v76 = v55;
      v56 = expf(v79.f32[2]);
      v57 = v76;
      v57.f32[2] = v56;
      v77 = v57;
      v58 = expf(v79.f32[3]);
      v59 = v77;
      v59.f32[3] = v58;
      v60 = vmulq_f32(v66, v59);
      v61.i64[0] = 0x3F0000003F000000;
      v61.i64[1] = 0x3F0000003F000000;
      v81.val[0] = vsubq_f32(vmlaq_f32(v68, v69, v65), vmulq_f32(v73, v61));
      v81.val[1] = vsubq_f32(vmlaq_f32(v67, v66, v64), vmulq_f32(v60, v61));
      v81.val[2] = vaddq_f32(v73, v81.val[0]);
      v81.val[3] = vaddq_f32(v60, v81.val[1]);
      vst4q_f32(v48, v81);
      v48 += 16;
      v42 -= 4;
    }

    while (v42);
    a4 = v47;
    a1 = v45;
    a2 = v43;
    if (v5 != v4)
    {
      goto LABEL_4;
    }
  }
}

uint64_t TtDetNode::multiclassNonmaxSuppress(_OWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, float a9, float a10, uint64_t a11)
{
  initHeap(&v43, a11, a7 + 1, minHeapCompare);
  if (a5)
  {
    if (a3)
    {
      v17 = 0;
      v36 = a5;
      v18 = a3;
      do
      {
        v19 = 0;
        v20 = *(a4 + 4 * v17);
        v21 = (a2 + 4 * v20);
        v22 = v18;
        v23 = a1;
        do
        {
          v24 = 1.0 / (expf(-*v21) + 1.0);
          if (v24 > a10)
          {
            v25 = a8 + 36 * v19;
            *v25 = *v23;
            *(v25 + 16) = v20;
            *(v25 + 24) = v24;
            ++v19;
          }

          v21 += 91;
          ++v23;
          --v22;
        }

        while (v22);
        v26 = ttNonMaxSuppression2(a8, v19, a9);
        if (v26 >= a6)
        {
          v27 = a6;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          v28 = a8;
          do
          {
            v29 = *(v28 + 16);
            v40 = *v28;
            v41 = v29;
            v42 = *(v28 + 32);
            addToHeap(&v43, &v40);
            v28 += 36;
            --v27;
          }

          while (v27);
        }

        ++v17;
      }

      while (v17 != v36);
    }

    else
    {
      v30 = 0;
      do
      {
        v31 = ttNonMaxSuppression2(a8, 0, a9);
        if (v31 >= a6)
        {
          v32 = a6;
        }

        else
        {
          v32 = v31;
        }

        if (v32)
        {
          v33 = a8;
          do
          {
            v34 = *(v33 + 16);
            v40 = *v33;
            v41 = v34;
            v42 = *(v33 + 32);
            addToHeap(&v43, &v40);
            v33 += 36;
            --v32;
          }

          while (v32);
        }

        ++v30;
      }

      while (v30 != a5);
    }
  }

  *(a11 + 24) = -1027080192;
  bmHeapsort(a11, v44 + 1, 0x24uLL, ttDetRectScoreCompare);
  return v44;
}

uint64_t TtDetNode::getParams(uint64_t a1, _DWORD *a2, char *a3)
{
  if (*a2 != 1)
  {
    return 4294967289;
  }

  if (a2[1] != 56945)
  {
    return 4294967292;
  }

  bzero(a3, 0x278uLL);
  *a3 = *(a1 + 20);
  *(a3 + 2) = *(a1 + 752);
  *(a3 + 14) = *(a1 + 800);
  *(a3 + 26) = *(a1 + 848);
  *(a3 + 3) = *(a1 + 756);
  *(a3 + 15) = *(a1 + 804);
  *(a3 + 27) = *(a1 + 852);
  *(a3 + 4) = *(a1 + 760);
  *(a3 + 16) = *(a1 + 808);
  *(a3 + 28) = *(a1 + 856);
  *(a3 + 5) = *(a1 + 764);
  *(a3 + 17) = *(a1 + 812);
  *(a3 + 29) = *(a1 + 860);
  *(a3 + 6) = *(a1 + 768);
  *(a3 + 18) = *(a1 + 816);
  *(a3 + 30) = *(a1 + 864);
  *(a3 + 7) = *(a1 + 772);
  *(a3 + 19) = *(a1 + 820);
  *(a3 + 31) = *(a1 + 868);
  *(a3 + 8) = *(a1 + 776);
  *(a3 + 20) = *(a1 + 824);
  *(a3 + 32) = *(a1 + 872);
  *(a3 + 9) = *(a1 + 780);
  *(a3 + 21) = *(a1 + 828);
  *(a3 + 33) = *(a1 + 876);
  *(a3 + 10) = *(a1 + 784);
  *(a3 + 22) = *(a1 + 832);
  *(a3 + 34) = *(a1 + 880);
  *(a3 + 11) = *(a1 + 788);
  *(a3 + 23) = *(a1 + 836);
  *(a3 + 35) = *(a1 + 884);
  *(a3 + 12) = *(a1 + 792);
  *(a3 + 24) = *(a1 + 840);
  *(a3 + 36) = *(a1 + 888);
  *(a3 + 13) = *(a1 + 796);
  *(a3 + 25) = *(a1 + 844);
  *(a3 + 37) = *(a1 + 892);
  *(a3 + 50) = *(a1 + 896);
  strncpy(a3 + 248, (a1 + 944), 0x20uLL);
  *(a3 + 51) = *(a1 + 900);
  strncpy(a3 + 280, (a1 + 976), 0x20uLL);
  *(a3 + 52) = *(a1 + 904);
  strncpy(a3 + 312, (a1 + 1008), 0x20uLL);
  *(a3 + 53) = *(a1 + 908);
  strncpy(a3 + 344, (a1 + 1040), 0x20uLL);
  *(a3 + 54) = *(a1 + 912);
  strncpy(a3 + 376, (a1 + 1072), 0x20uLL);
  *(a3 + 55) = *(a1 + 916);
  strncpy(a3 + 408, (a1 + 1104), 0x20uLL);
  *(a3 + 56) = *(a1 + 920);
  strncpy(a3 + 440, (a1 + 1136), 0x20uLL);
  *(a3 + 57) = *(a1 + 924);
  strncpy(a3 + 472, (a1 + 1168), 0x20uLL);
  *(a3 + 58) = *(a1 + 928);
  strncpy(a3 + 504, (a1 + 1200), 0x20uLL);
  *(a3 + 59) = *(a1 + 932);
  strncpy(a3 + 536, (a1 + 1232), 0x20uLL);
  *(a3 + 60) = *(a1 + 936);
  strncpy(a3 + 568, (a1 + 1264), 0x20uLL);
  *(a3 + 61) = *(a1 + 940);
  strncpy(a3 + 600, (a1 + 1296), 0x20uLL);
  return 0;
}

uint64_t TtDetNode::getTrkScheduleInfo(uint64_t a1, _DWORD *a2, BOOL *a3)
{
  if (*a2 != 1 || a2[1] != 56945)
  {
    return 4294967289;
  }

  result = 0;
  *a3 = a2[3] == 2;
  return result;
}

uint64_t FTFillPixelBufferWithColor(__CVBuffer *a1, unsigned int a2)
{
  if (CVPixelBufferLockBaseAddress(a1, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
    goto LABEL_12;
  }

  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (Height && BytesPerRow)
  {
    v7 = 0;
    *&v8 = vdup_n_s32(a2);
    *(&v8 + 1) = v8;
    do
    {
      for (i = 0; i < BytesPerRow; i += 64)
      {
        v10 = &BaseAddress[i];
        *v10 = v8;
        *(v10 + 1) = v8;
        *(v10 + 2) = v8;
        *(v10 + 3) = v8;
      }

      ++v7;
      BaseAddress += 64 * (BytesPerRow >> 6);
    }

    while (v7 != Height);
  }

  result = CVPixelBufferUnlockBaseAddress(a1, 0);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_24BC64820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ik::PixelBufferScopeLock::~PixelBufferScopeLock(va);
  _Unwind_Resume(a1);
}

uint64_t FTComputeMeanColor(ft *a1, unint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    v19 = ft::GetOsLog(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      FTComputeMeanColor_cold_2(v19);

      return 0xFFFFFFFFLL;
    }

LABEL_7:

    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    v19 = ft::GetOsLog(a1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      FTComputeMeanColor_cold_1(v19);

      return 0xFFFFFFFFLL;
    }

    goto LABEL_7;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0x100u / *a1;
  v6 = vdupq_n_s32(v5);
  v7.i32[0] = 0;
  v7.i32[1] = v5;
  v7.u64[1] = vmul_s32(*v6.i8, 0x300000002);
  v8 = vdupq_n_s32(16 * v5);
  v9 = vmovn_s32(v6);
  v10 = vmull_u16(v9, 0xB000A00090008);
  v11 = vmull_u16(v9, 0x7000600050004);
  v12 = vmull_u16(v9, 0xF000E000D000CLL);
  v13 = 0uLL;
  do
  {
    v4 += vaddvq_s32(vaddq_s32(vmlaq_s32(vmulq_s32(*(*(a1 + 193) + v3 + 32), v10), *(*(a1 + 193) + v3), v7), vmlaq_s32(vmulq_s32(*(*(a1 + 193) + v3 + 48), v12), *(*(a1 + 193) + v3 + 16), v11)));
    v14 = vaddq_s32(vmlaq_s32(vmulq_s32(*(*(a1 + 194) + v3 + 32), v10), *(*(a1 + 194) + v3), v7), vmlaq_s32(vmulq_s32(*(*(a1 + 194) + v3 + 48), v12), *(*(a1 + 194) + v3 + 16), v11));
    v14.i32[0] = vaddvq_s32(v14);
    v15 = vaddq_s32(vmlaq_s32(vmulq_s32(*(*(a1 + 195) + v3 + 32), v10), *(*(a1 + 195) + v3), v7), vmlaq_s32(vmulq_s32(*(*(a1 + 195) + v3 + 48), v12), *(*(a1 + 195) + v3 + 16), v11));
    v15.i32[0] = vaddvq_s32(v15);
    v13 = vaddw_u32(v13, vzip1_s32(*v15.i8, *v14.i8));
    v7 = vaddq_s32(v7, v8);
    v11 = vaddq_s32(v11, v8);
    v10 = vaddq_s32(v10, v8);
    v12 = vaddq_s32(v12, v8);
    v3 += 64;
  }

  while (v3 != 512);
  result = 0;
  v17 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vdivq_f64(vcvtq_f64_u64(v13), vdupq_lane_s64(COERCE__INT64(a2), 0)))));
  v18.i16[3] = 255;
  v18.i64[1] = 0xFF00FF00FF00FFLL;
  v18.i16[0] = v17.i16[0];
  v18.i16[1] = v17.i16[2];
  v18.i16[2] = llround(v4 / a2);
  *a3 = vmovn_s16(v18).u32[0];
  return result;
}

uint64_t TtDetCreate(uint64_t a1, uint64_t a2)
{
  result = 4294967292;
  if (a1)
  {
    if (a2)
    {
      operator new();
    }
  }

  return result;
}

uint64_t TtDetDestroy(TtDetNode **a1)
{
  if (!a1)
  {
    return 4294967292;
  }

  v2 = *a1;
  if (!v2)
  {
    return 4294967292;
  }

  TtDetNode::~TtDetNode(v2);
  MEMORY[0x24C253380]();
  MEMORY[0x24C253380](a1, 0x20C4093837F09);
  return 0;
}

uint64_t TtDetStart(void *a1)
{
  result = 4294967292;
  if (a1)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t TtDetStop(void *a1)
{
  result = 4294967292;
  if (a1)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t TtDetGetParams(uint64_t *a1, _DWORD *a2, char *a3)
{
  if (!a1)
  {
    return 4294967292;
  }

  v3 = *a1;
  v4 = !v3 || a2 == 0;
  if (v4 || a3 == 0)
  {
    return 4294967292;
  }

  else
  {
    return TtDetNode::getParams(v3, a2, a3);
  }
}

uint64_t TtDetPreProcessRef(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (!a1)
  {
    return 4294967292;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a4)
    {
      if (a5)
      {
        if (*a3)
        {
          if (*a5)
          {
            result = TtDetNode::getParams(v5, a4, v13);
            if (!result)
            {
              v9 = *(a3 + 12);
              if ((v9 & 3) == 0 && (v10 = *(a5 + 12), v10 == 4 * v13[0]) && (v11 = *(a5 + 8), v11 == v13[1]))
              {
                v12 = *(a5 + 16);
                result = 4294967292;
                if (v12 >= v10 && (v12 & 0x3F) == 0)
                {
                  if (rtcv::simResize(*a3, v9 >> 2, *(a3 + 8), *(a3 + 16), 0, 0, 1, *a5, v10 >> 2, v11, v12))
                  {
                    return 0;
                  }

                  else
                  {
                    return 4294967288;
                  }
                }
              }

              else
              {
                return 4294967292;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t TtDetPostProcessMultiNetOutputs(uint64_t *a1, unsigned int *a2, uint64_t a3, _DWORD *a4, uint64_t a5, float a6, float a7)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a4 && a2 && a5)
  {
    if (!*a2)
    {
      return 4294967292;
    }

    if (!a2[1])
    {
      return 4294967292;
    }

    *(a5 + 157) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 144) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    if (!*a1)
    {
      return 4294967292;
    }

    v14 = a1;
    result = TtDetNode::getParams(*a1, a4, &v42);
    if (!result)
    {
      bmBufferResizeCoordConvert(*a2, a2[1], v42, v43, 0, &v40, &v41, a6, a7);
      if (*(a5 + 180))
      {
        v24 = 0;
        v25 = (a5 + 204);
        do
        {
          v26 = *(v25 - 3);
          v38 = *(v25 - 2);
          v39 = v26;
          v27 = v26 + *(v25 - 1);
          v36 = v38 + *v25;
          v37 = v27;
          bmBufferResizeCoordConvert(*a2, a2[1], v42, v43, 0, &v39, &v38, v26, v38);
          bmBufferResizeCoordConvert(*a2, a2[1], v42, v43, 0, &v37, &v36, v37, v36);
          *&v17 = v38;
          *&v16 = v39;
          *(v25 - 3) = v39;
          *(v25 - 2) = *&v17;
          *&v18 = v36;
          *&v19 = v37;
          *&v16 = v37 - *&v16;
          *&v17 = v36 - *&v17;
          *(v25 - 1) = *&v16;
          *v25 = *&v17;
          ++v24;
          v25 += 22;
        }

        while (v24 < *(a5 + 180));
      }

      result = TtDetNode::postProcess(*v14, a3, 12, a4, a5, &v40, v16, v17, v18, v19, v20, v21, v22, v23);
      if (!result)
      {
        if (*(a5 + 180))
        {
          v28 = 0;
          v29 = (a5 + 204);
          do
          {
            v30 = *(v29 - 3);
            v38 = *(v29 - 2);
            v39 = v30;
            v31 = v30 + *(v29 - 1);
            v36 = v38 + *v29;
            v37 = v31;
            bmBufferResizeCoordConvertReversed(*a2, a2[1], v42, v43, 0, &v39, &v38, v30, v38);
            bmBufferResizeCoordConvertReversed(*a2, a2[1], v42, v43, 0, &v37, &v36, v37, v36);
            v33 = v38;
            v32 = v39;
            *(v29 - 3) = v39;
            *(v29 - 2) = v33;
            v34 = v36 - v33;
            *(v29 - 1) = v37 - v32;
            *v29 = v34;
            ++v28;
            v29 += 22;
          }

          while (v28 < *(a5 + 180));
        }

        if (!*a5)
        {
          result = 0;
          *(a5 + 37) = 0;
          *(a5 + 21) = xmmword_24BC6D990;
          v35 = *(*v14 + 16);
          *(a5 + 81) = **v14;
          *(a5 + 97) = v35;
          *a5 = 1;
          return result;
        }

        return 4294967292;
      }
    }
  }

  return result;
}

uint64_t TtDetPostProcess(uint64_t *a1, unsigned int *a2, uint64_t a3, unsigned int a4, unsigned int *a5, int a6, _DWORD *a7, uint64_t a8)
{
  v139 = *MEMORY[0x277D85DE8];
  result = 4294967292;
  if (a3)
  {
    if (a5)
    {
      if (a6 == 12)
      {
        if (a1)
        {
          if (a7)
          {
            v10 = a1;
            v11 = *a1;
            if (v11)
            {
              result = TtDetNode::getParams(v11, a7, v30);
              if (!result)
              {
                v18 = *a5;
                v79 = a3 + v18;
                v81 = v31;
                v80 = v55 * v43;
                v82 = (v31 + 63) & 0xFFFFFFC0;
                v83 = v67;
                if ((v55 * v43 * v82) + v18 <= a4 && (v19 = a5[1], v84 = a3 + v19, v86 = v32, v85 = v56 * v44, v87 = (v32 + 63) & 0xFFFFFFC0, v88 = v68, (v56 * v44 * v87) + v19 <= a4) && (v20 = a5[2], v89 = a3 + v20, v91 = v33, v90 = v57 * v45, v92 = (v33 + 63) & 0xFFFFFFC0, v93 = v69, (v57 * v45 * v92) + v20 <= a4) && (v21 = a5[3], v94 = a3 + v21, v96 = v34, v95 = v58 * v46, v97 = (v34 + 63) & 0xFFFFFFC0, v98 = v70, (v58 * v46 * v97) + v21 <= a4) && (v22 = a5[4], v99 = a3 + v22, v101 = v35, v100 = v59 * v47, v102 = (v35 + 63) & 0xFFFFFFC0, v103 = v71, (v59 * v47 * v102) + v22 <= a4) && (v23 = a5[5], v104 = a3 + v23, v106 = v36, v105 = v60 * v48, v107 = (v36 + 63) & 0xFFFFFFC0, v108 = v72, (v60 * v48 * v107) + v23 <= a4) && (v24 = a5[6], v109 = a3 + v24, v111 = v37, v110 = v61 * v49, v112 = (v37 + 63) & 0xFFFFFFC0, v113 = v73, (v61 * v49 * v112) + v24 <= a4) && (v25 = a5[7], v114 = a3 + v25, v116 = v38, v115 = v62 * v50, v117 = (v38 + 63) & 0xFFFFFFC0, v118 = v74, (v62 * v50 * v117) + v25 <= a4) && (v26 = a5[8], v119 = a3 + v26, v121 = v39, v120 = v63 * v51, v122 = (v39 + 63) & 0xFFFFFFC0, v123 = v75, (v63 * v51 * v122) + v26 <= a4) && (v27 = a5[9], v124 = a3 + v27, v126 = v40, v125 = v64 * v52, v127 = (v40 + 63) & 0xFFFFFFC0, v128 = v76, (v64 * v52 * v127) + v27 <= a4) && (v28 = a5[10], v129 = a3 + v28, v131 = v41, v130 = v65 * v53, v132 = (v41 + 63) & 0xFFFFFFC0, v133 = v77, (v65 * v53 * v132) + v28 <= a4) && (v29 = a5[11], v134 = a3 + v29, v136 = v42, v135 = v66 * v54, v137 = (v42 + 63) & 0xFFFFFFC0, v138 = v78, (v66 * v54 * v137) + v29 <= a4))
                {
                  return TtDetPostProcessMultiNetOutputs(v10, a2, &v79, a7, a8, 0.0, 0.0);
                }

                else
                {
                  return 4294967292;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t TtDetGetTrkScheduleInfo(uint64_t *a1, _DWORD *a2, BOOL *a3)
{
  if (!a1)
  {
    return 4294967292;
  }

  v3 = *a1;
  v4 = !v3 || a2 == 0;
  if (v4 || a3 == 0)
  {
    return 4294967292;
  }

  else
  {
    return TtDetNode::getTrkScheduleInfo(v3, a2, a3);
  }
}

uint64_t ft::GenerateObservationMatches@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = 0x86BCA1AF286BCA1BLL * ((v5 - v6) >> 3);
  if (v5 != v6)
  {
    if (v7 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  result = 0;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a3;
    do
    {
      if (*(v9 + 16) == 1)
      {
        v12 = *(v11[2 * *(v9 + 8)] + 16);
        v13 = 176 * *v9;
        if ((*(v13 + 0xA0) & 1) == 0)
        {
          *(176 * *v9 + 0xA0) = 1;
        }

        *(v13 + 152) = v12;
      }

      v9 += 48;
    }

    while (v9 != v10);
  }

  if (v5 != v6)
  {
    v14 = 0;
    v15 = v7 - 1;
    if (v7 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0x86BCA1AF286BCA1BLL * ((v5 - v6) >> 3);
    }

    v17 = a3[1];
    v18 = *a1;
    v19 = *a3;
    do
    {
      v20 = 176 * v14;
      v21 = v18 + 152 * v14;
      v22 = *(v21 + 16);
      *v20 = *v21;
      *(v20 + 16) = v22;
      v23 = *(v21 + 32);
      v24 = *(v21 + 48);
      v25 = *(v21 + 80);
      *(v20 + 64) = *(v21 + 64);
      *(v20 + 80) = v25;
      *(v20 + 32) = v23;
      *(v20 + 48) = v24;
      v26 = *(v21 + 96);
      v27 = *(v21 + 112);
      v28 = *(v21 + 128);
      *(v20 + 144) = *(v21 + 144);
      *(v20 + 112) = v27;
      *(v20 + 128) = v28;
      *(v20 + 96) = v26;
      if (v19 != v17)
      {
        v29 = *(176 * v14 + 0xA0);
        v30 = *(176 * v14 + 0x98);
        v31 = v19;
        do
        {
          v32 = *v31;
          if (!v29 || *(v32 + 16) != v30)
          {
            v33 = *(v32 + 24);
            v34 = *(176 * v14 + 0x10);
            v35 = vbslq_s8(vcgtq_f64(v33, *v20), v33, *v20);
            v36 = vaddq_f64(*v20, v34);
            v37 = *(v32 + 40);
            v38 = vaddq_f64(v33, v37);
            v39 = vbslq_s8(vcgtq_f64(v36, v38), v38, v36);
            v40 = vandq_s8(vsubq_f64(v39, v35), vcgtq_f64(v39, v35));
            *v40.f64 = vmulq_laneq_f64(v40, v40, 1).f64[0];
            *v36.f64 = vaddvq_f64(vmulq_f64(vzip1q_s64(v34, v37), vzip2q_s64(v34, v37))) - *v40.f64;
            v41 = *v40.f64 / *v36.f64;
            if (*v36.f64 < 0.00000011921)
            {
              v41 = 0.0;
            }

            if (v41 > *(176 * v14 + 0xA8))
            {
              *(176 * v14 + 0xA8) = v41;
            }
          }

          v31 += 2;
        }

        while (v31 != v17);
      }

      ++v14;
    }

    while (v14 != v16);
    v42 = 0;
    v43 = 192;
    do
    {
      v44 = v42 + 1;
      if (v42 + 1 < v7)
      {
        v45 = 176 * v42;
        v46 = *v45;
        v47 = *(v45 + 16);
        v48 = vaddq_f64(*v45, v47);
        v49 = vmulq_laneq_f64(v47, v47, 1);
        v50 = *(v45 + 172);
        v51 = v43;
        v52 = v15;
        do
        {
          v53 = v51[-1];
          v54 = vbslq_s8(vcgtq_f64(v53, v46), v53, v46);
          v55 = vaddq_f64(v53, *v51);
          v56 = vbslq_s8(vcgtq_f64(v48, v55), v55, v48);
          v57 = vandq_s8(vsubq_f64(v56, v54), vcgtq_f64(v56, v54));
          *v57.f64 = vmulq_laneq_f64(v57, v57, 1).f64[0];
          v58 = vaddq_f64(vmulq_laneq_f64(*v51, *v51, 1), v49).f64[0] - *v57.f64;
          v59 = *v57.f64 / v58;
          if (v58 < 0.00000011921)
          {
            v59 = 0.0;
          }

          if (v50 < v59)
          {
            *(v45 + 172) = v59;
            v50 = v59;
          }

          v51 += 11;
          --v52;
        }

        while (v52);
      }

      --v15;
      v43 += 176;
      v42 = v44;
    }

    while (v44 != v16);
  }

  return result;
}

double ttAssocObjectReset(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void ttAssocSetUpMunkresCost(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v9 = a2;
  v10 = bmMaximum(a2, a4);
  if (v10 * v10 > a6)
  {
    ttAssocSetUpMunkresCost();
  }

  v11 = v10;
  if (v10)
  {
    v12 = v9;
    v13 = v10;
    v61 = v10;
    v62 = v9;
    if (a4)
    {
      v14 = 0;
      v15 = 0;
      v57 = v10 - 1;
      v58 = a4;
      v52 = v10 - 1 - a4;
      v54 = v10 - a4;
      v55 = v10 & 0xFFFFFFF8;
      v53 = (v10 - a4) & 0xFFFFFFF8;
      v51 = v53 + a4;
      *&v16 = 0x4000000040000000;
      *(&v16 + 1) = 0x4000000040000000;
      v56 = a4;
      while (v14 >= v12)
      {
        v27 = 0;
        v28 = __CFADD__(v15, v57);
        if (v11 < 8 || v28)
        {
          v17 = v15;
        }

        else
        {
          v29 = v55;
          v17 = v15 + v55;
          do
          {
            v30 = (a5 + 4 * v15);
            *v30 = v16;
            v30[1] = v16;
            v15 += 8;
            v29 -= 8;
          }

          while (v29);
          v27 = v55;
          if (v11 == v55)
          {
            goto LABEL_7;
          }
        }

        v31 = v11 - v27;
        do
        {
          *(a5 + 4 * v17++) = 0x40000000;
          --v31;
        }

        while (v31);
LABEL_7:
        ++v14;
        v15 = v17;
        if (v14 == v13)
        {
          return;
        }
      }

      v67 = 0;
      v18 = a1 + 104 * v14;
      v65 = 0u;
      v66 = 0u;
      ttDetRectFromObject(v18 + 16, &v65);
      v19 = v15 + 1;
      v20 = v56;
      v21 = a3;
      do
      {
        while (1)
        {
          v23 = v19;
          if (*(v18 + 20) != *(v21 + 4))
          {
            break;
          }

          v64 = 0;
          memset(v63, 0, sizeof(v63));
          ttDetRectFromObject(v21, v63);
          ttDetRectOverlap(v63, &v65);
          *(a5 + 4 * v15++) = 1.0 - v22;
          v21 += 88;
          v19 = v23 + 1;
          if (!--v20)
          {
            goto LABEL_13;
          }
        }

        *(a5 + 4 * v15++) = 1065353216;
        v21 += 88;
        ++v19;
        --v20;
      }

      while (v20);
LABEL_13:
      if (v11 <= v58)
      {
        v13 = v61;
        v12 = v62;
        *&v16 = 0x4000000040000000;
        *(&v16 + 1) = 0x4000000040000000;
      }

      else
      {
        v13 = v61;
        v12 = v62;
        *&v16 = 0x4000000040000000;
        *(&v16 + 1) = 0x4000000040000000;
        if (v54 < 8)
        {
          v24 = v58;
        }

        else
        {
          v24 = v58;
          if (~v15 >= v52)
          {
            v25 = v53;
            v15 += v53;
            do
            {
              v26 = (a5 + 4 * v23);
              *v26 = v16;
              v26[1] = v16;
              v23 += 8;
              v25 -= 8;
            }

            while (v25);
            v24 = v51;
            if (v54 == v53)
            {
              goto LABEL_6;
            }
          }
        }

        do
        {
          *(a5 + 4 * v15) = 0x40000000;
          ++v24;
          ++v15;
        }

        while (v24 < v11);
      }

LABEL_6:
      v17 = v15;
      goto LABEL_7;
    }

    v32 = v10 - 1;
    v33 = v10 & 0xFFFFFFF8;
    if (v10 < 8)
    {
      v34 = 0;
      v35 = a1 + 16;
      v36 = 6;
      v37 = -1;
      do
      {
        v38 = v36 - 6;
        if (v34 >= v12)
        {
          *(a5 + 4 * v38) = 0x40000000;
          if (v11 != 1)
          {
            *(a5 + 4 * (v36 - 5)) = 0x40000000;
            if (v11 != 2)
            {
              *(a5 + 4 * (v36 - 4)) = 0x40000000;
              if (v11 != 3)
              {
                *(a5 + 4 * (v36 - 3)) = 0x40000000;
                if (v11 != 4)
                {
                  *(a5 + 4 * (v36 - 2)) = 0x40000000;
                  if (v11 != 5)
                  {
                    *(a5 + 4 * (v36 - 1)) = 0x40000000;
                    if (v11 != 6)
                    {
                      *(a5 + 4 * v36) = 0x40000000;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v67 = 0;
          v65 = 0u;
          v66 = 0u;
          ttDetRectFromObject(v35, &v65);
          if (v11 < 8 || v32 > v37 || (v39 = (a5 + 4 * v38), *&v40 = 0x4000000040000000, *(&v40 + 1) = 0x4000000040000000, *v39 = v40, v39[1] = v40, v11 != v33))
          {
            *(a5 + 4 * v38) = 0x40000000;
            if (v11 != 1)
            {
              *(a5 + 4 * (v36 - 5)) = 0x40000000;
              if (v11 != 2)
              {
                *(a5 + 4 * (v36 - 4)) = 0x40000000;
                if (v11 != 3)
                {
                  *(a5 + 4 * (v36 - 3)) = 0x40000000;
                  if (v11 != 4)
                  {
                    *(a5 + 4 * (v36 - 2)) = 0x40000000;
                    if (v11 != 5)
                    {
                      *(a5 + 4 * (v36 - 1)) = 0x40000000;
                      if (v11 != 6)
                      {
                        *(a5 + 4 * v36) = 0x40000000;
                      }
                    }
                  }
                }
              }
            }
          }

          v13 = v61;
          v12 = v62;
        }

        ++v34;
        v35 += 104;
        v36 += v11;
        v37 -= v11;
      }

      while (v13 != v34);
      return;
    }

    v41 = 0;
    v42 = 0;
    *&v43 = 0x4000000040000000;
    *(&v43 + 1) = 0x4000000040000000;
    do
    {
      if (v41 >= v12)
      {
        v44 = v11 + v42;
        if (__CFADD__(v42, v32))
        {
          v48 = v42;
        }

        else
        {
          v48 = v42 + v33;
          v49 = v11 & 0xFFFFFFF8;
          do
          {
            v50 = (a5 + 4 * v42);
            *v50 = v43;
            v50[1] = v43;
            v42 += 8;
            v49 -= 8;
          }

          while (v49);
          if (v11 == v33)
          {
            goto LABEL_59;
          }
        }

        do
        {
          *(a5 + 4 * v48++) = 0x40000000;
        }

        while (v44 != v48);
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
        ttDetRectFromObject(a1 + 104 * v41 + 16, &v65);
        v44 = v11 + v42;
        if (__CFADD__(v42, v32))
        {
          v45 = v42;
          v13 = v61;
          v12 = v9;
          *&v43 = 0x4000000040000000;
          *(&v43 + 1) = 0x4000000040000000;
        }

        else
        {
          v45 = v42 + v33;
          v46 = v11 & 0xFFFFFFF8;
          *&v43 = 0x4000000040000000;
          *(&v43 + 1) = 0x4000000040000000;
          do
          {
            v47 = (a5 + 4 * v42);
            *v47 = v43;
            v47[1] = v43;
            v42 += 8;
            v46 -= 8;
          }

          while (v46);
          v13 = v61;
          v12 = v9;
          if (v11 == v33)
          {
            goto LABEL_59;
          }
        }

        do
        {
          *(a5 + 4 * v45++) = 0x40000000;
        }

        while (v44 != v45);
      }

LABEL_59:
      ++v41;
      v42 = v44;
    }

    while (v41 != v13);
  }
}

uint64_t ttAssocCore(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t a9, unsigned int *a10)
{
  v16 = a2;
  *a8 = 0;
  v18 = *a10;
  *a10 = 0;
  if (a2)
  {
    if (a2 == 1)
    {
      v19 = 0;
LABEL_7:
      v22 = (a1 + 104 * v19 + 100);
      v23 = a2 - v19;
      do
      {
        *(v22 - 22) = 0;
        *v22 = 1;
        v22 += 26;
        --v23;
      }

      while (v23);
      goto LABEL_9;
    }

    v19 = a2 & 0xFFFFFFFE;
    v20 = (a1 + 116);
    v21 = v19;
    do
    {
      *(v20 - 26) = 0;
      *v20 = 0;
      *(v20 - 4) = 1;
      v20[22] = 1;
      v20 += 52;
      v21 -= 2;
    }

    while (v21);
    if (v19 != a2)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  result = bmMaximum(a2, a4);
  if (result)
  {
    v25 = 0;
    v26 = a3 + 16;
    do
    {
      v27 = *(a5 + 4 * v25);
      if (v25 >= a4)
      {
        if (v27 >= v16)
        {
          ttAssocCore();
        }

        v29 = a1 + 104 * v27;
      }

      else
      {
        if (v27 >= v16)
        {
          v33 = *a10;
          if (v33 >= v18)
          {
            ttAssocCore();
          }

          *a10 = v33 + 1;
          *(a9 + 4 * v33) = v25;
          goto LABEL_12;
        }

        v28 = 1.0 - *(a6 + 4 * (v25 + v27 * result));
        v29 = a1 + 104 * v27;
        if (v28 >= *a7)
        {
          *(v29 + 8) = 0;
          if (*(a7 + 32) == 1)
          {
            v34 = *(v29 + 16);
            v35 = vmla_n_f32(vmul_n_f32(*v26, 1.0 - *(a7 + 4)), *(v29 + 32), *(a7 + 4));
            v36 = *(v26 - 16);
            *(v29 + 32) = *v26;
            v37 = *(v26 + 16);
            v38 = *(v26 + 48);
            v39 = *(v26 + 64);
            *(v29 + 64) = *(v26 + 32);
            *(v29 + 80) = v38;
            *(v29 + 48) = v37;
            *(v29 + 16) = v36;
            *(v29 + 96) = v39;
            *(v29 + 100) = 1;
            *(v29 + 24) = vadd_f32(*(v29 + 24), vmul_f32(vsub_f32(*(v29 + 32), v35), 0x3F0000003F000000));
            *(v29 + 32) = v35;
            *(v29 + 16) = v34;
          }

          goto LABEL_12;
        }

        v30 = *a10;
        if (v30 >= v18)
        {
          ttAssocCore();
        }

        *a10 = v30 + 1;
        *(a9 + 4 * v30) = v25;
      }

      v31 = *(v29 + 8) + 1;
      *(v29 + 8) = v31;
      if (v31 >= *(a7 + 20 + 4 * *(v29 + 20)) || (*(v29 + 4) <= *(a7 + 12) ? (v32 = v31 >= *(a7 + 16)) : (v32 = 0), v32))
      {
        *(v29 + 12) = 2;
        ++*a8;
      }

      else
      {
        *(v29 + 12) = 1;
      }

LABEL_12:
      ++v25;
      v26 += 88;
    }

    while (result != v25);
  }

  return result;
}

uint64_t ttAssocTrkDetGetTempBuffers(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = bmMunkresTempBytes(a1);
  BmMixedBufSize::BmMixedBufSize(&v30);
  if (v31)
  {
    rtcv::simImageChMeanTempBytes();
  }

  v9 = 8 * a1 * a1;
  v10 = 83 * a1 + v9 + 12 * a1 + v8 + v30;
  result = (v10 + 21);
  v30 = v10 + 21;
  if (a2)
  {
    if (result > a3)
    {
      ttAssocTrkDetGetTempBuffers();
    }

    if (!a4)
    {
      ttAssocTrkDetGetTempBuffers();
    }

    v12 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = 4 * a1 - a2;
    v31 = v12 + v13;
    if (result < v12 + v13)
    {
      rtcv::simImageChMean();
    }

    *a4 = v12;
    v14 = (a2 + (v12 + v13) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = v14 - a2 + v9;
    v31 = v15;
    if (result < v15)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 8) = v14;
    v16 = v15;
    v17 = v15 + v8;
    v31 = v17;
    if (result < v17)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 24) = v8;
    *(a4 + 16) = a2 + v16;
    v18 = (a2 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = v18 + v13;
    if (result < v18 + v13)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 32) = v18;
    *(a4 + 40) = a1 & 0x3FFFFFFF;
    v19 = (a2 + (v18 + v13) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - a2 + 8 * a1;
    v31 = v20;
    if (result < v20)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 48) = v19;
    v21 = (a2 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = v21 + v13;
    if (result < v21 + v13)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 56) = v21;
    v22 = a2 + (v21 + v13);
    v23 = a1 - a2;
    v31 = a1 - a2 + v22;
    if (result < v31)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 64) = v22;
    v24 = a2 + (v23 + v22);
    v31 = v23 + v24;
    if (result < v23 + v24)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 72) = v24;
    v25 = (a2 + (v23 + v24) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = 36 * a1 - a2;
    v31 = v25 + v26;
    if (result < v25 + v26)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 80) = v25;
    v27 = (a2 + (v25 + v26) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 + v26;
    v31 = v28;
    if (result < v28)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 88) = v27;
    v29 = a2 + v28;
    v31 = v23 + v29;
    if (result < v23 + v29)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 104) = a1;
    *(a4 + 96) = v29;
  }

  return result;
}

uint64_t ttAssocTrkDetTempBytes(int a1)
{
  v2 = bmMunkresTempBytes(a1);
  BmMixedBufSize::BmMixedBufSize(v4);
  if (v4[1])
  {
    rtcv::simImageChMeanTempBytes();
  }

  return (9 * a1 + (8 * a1 + 86) * a1 + v2 + v4[0] + 21);
}

uint64_t ttDetTermClassIndex(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ttAssocObjectRemoveKilled(__int128 *a1, int a2, int a3)
{
  if (a3 < 1)
  {
    ttAssocObjectRemoveKilled();
  }

  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = a1;
  do
  {
    if (*(v5 + 3) < a3)
    {
      if (v3 != v4)
      {
        v6 = a1 + 104 * v4;
        v7 = *v5;
        v8 = v5[2];
        *(v6 + 16) = v5[1];
        *(v6 + 32) = v8;
        *v6 = v7;
        v9 = v5[3];
        v10 = v5[4];
        v11 = v5[5];
        *(v6 + 96) = *(v5 + 12);
        *(v6 + 64) = v10;
        *(v6 + 80) = v11;
        *(v6 + 48) = v9;
      }

      v4 = (v4 + 1);
    }

    v5 = (v5 + 104);
    ++v3;
  }

  while (a2 != v3);
  return v4;
}

uint64_t ttAssocTrkDet(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, _DWORD *a7, _DWORD *a8, int *a9, void *a10, unsigned int a11)
{
  if (a2 > a3)
  {
    ttAssocTrkDet();
  }

  if (a5 > a3)
  {
    ttAssocTrkDet();
  }

  v18 = bmMunkresTempBytes(a3);
  BmMixedBufSize::BmMixedBufSize(&v142);
  if (DWORD1(v142))
  {
    rtcv::simImageChMeanTempBytes();
  }

  if (9 * a3 + (8 * a3 + 86) * a3 + v18 + v142 + 21 > a11)
  {
    ttAssocTrkDet();
  }

  if (!a4 && a5)
  {
    ttAssocTrkDet();
  }

  *v147 = 0u;
  *v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v142 = 0u;
  TempBuffers = ttAssocTrkDetGetTempBuffers(a3, a10, a11, &v142);
  bzero(a10, TempBuffers);
  v20 = a2;
  if (!a2)
  {
    result = 0;
    if (a5)
    {
      v32 = a5;
      do
      {
        if (*(a4 + 24) != 1)
        {
          v33 = a1 + 104 * result;
          *(v33 + 96) = 0;
          *(v33 + 64) = 0uLL;
          *(v33 + 80) = 0uLL;
          *(v33 + 32) = 0uLL;
          *(v33 + 48) = 0uLL;
          *v33 = 0uLL;
          *(v33 + 16) = 0uLL;
          v34 = *(a4 + 16);
          *(v33 + 16) = *a4;
          *(v33 + 32) = v34;
          v35 = *(a4 + 32);
          v36 = *(a4 + 48);
          v37 = *(a4 + 64);
          *(v33 + 96) = *(a4 + 80);
          *(v33 + 64) = v36;
          *(v33 + 80) = v37;
          *(v33 + 48) = v35;
          v38 = *a9;
          *v33 = *a9;
          *a9 = v38 + 1;
          *(v33 + 16) = v38;
          ++*(v33 + 4);
          result = (result + 1);
        }

        a4 += 88;
        --v32;
      }

      while (v32);
    }

    *a7 = result;
    *a8 = 0;
    return result;
  }

  v132 = a3;
  v130 = a7;
  v131 = a8;
  v21 = *(&v142 + 1);
  v22 = v142;
  v23 = v145;
  v141 = 0;
  if (!a5)
  {
    v39 = 0;
    v40 = *(a6 + 12);
    v41 = a1;
    v42 = a2;
    v43 = v132;
    do
    {
      while (1)
      {
        v41[25] = 1;
        v44 = v41[2];
        if (a4)
        {
          v41[2] = ++v44;
        }

        v45 = v41[5];
        v46 = v45 == 1 ? 1 : 2;
        v47 = v45 ? v46 : 0;
        if (v44 < *(a6 + 20 + 4 * v47) && (v41[1] > v40 || v44 < *(a6 + 16)))
        {
          break;
        }

        v41[3] = 2;
        ++v39;
        v41 += 26;
        if (!--v42)
        {
          goto LABEL_39;
        }
      }

      v41[3] = 1;
      v41 += 26;
      --v42;
    }

    while (v42);
LABEL_39:
    v49 = 0;
    v50 = a2 - v39 - v132;
    if (a2 - v39 > v132)
    {
      goto LABEL_71;
    }

LABEL_40:
    v51 = v39;
    goto LABEL_90;
  }

  v124 = DWORD2(v144);
  v125 = DWORD2(v143);
  v126 = v143;
  v128 = v144;
  v129 = v145;
  v24 = bmMaximum(a2, a5);
  ttAssocSetUpMunkresCost(a1, a2, a4, a5, v21, v24 * v24);
  if (v24 * v24 > v132 * v132)
  {
    ttAssocTrkDet();
  }

  v25 = 4 * v24 * v24;
  memcpy(&v21[v25], v21, v25);
  bmMunkres(v21, v24, v126, v125, v128, v124, 0);
  v140 = a5;
  ttAssocCore(a1, a2, a4, a5, v128, &v21[v25], a6, &v141, v22, &v140);
  v26 = v140;
  if (v140)
  {
    v27 = 0;
    v28 = 0;
    v29 = a2;
    do
    {
      v30 = v22[v27];
      if (*(a4 + 88 * v30 + 24) >= 2u)
      {
        if (v27 != v28)
        {
          v22[v28] = v30;
        }

        ++v28;
      }

      ++v27;
    }

    while (v26 != v27);
  }

  else
  {
    v28 = 0;
    v29 = a2;
  }

  v52 = *v147;
  v53 = v29;
  v54 = a1 + 16;
  v55 = *v147;
  do
  {
    ttDetRectFromObject(v54, &v137);
    v56 = v137;
    v57 = v138;
    *(v55 + 32) = v139;
    *v55 = v56;
    *(v55 + 16) = v57;
    v55 += 36;
    v54 += 104;
    --v53;
  }

  while (v53);
  if (v28)
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = v22[v58];
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      ttDetRectFromObject(a4 + 88 * v60, &v137);
      v135[0] = v137;
      v135[1] = v138;
      v136 = v139;
      if (!ttCheckOverlapBox(v52, a2, v135, *(a6 + 8)))
      {
        if (v58 != v59)
        {
          v22[v59] = v22[v58];
        }

        ++v59;
      }

      ++v58;
    }

    while (v28 != v58);
    v61 = *&v147[2];
    if (v59)
    {
      v127 = *&v147[2];
      v62 = v22;
      v63 = v59;
      do
      {
        v64 = *v62++;
        ttDetRectFromObject(a4 + 88 * v64, &v137);
        v65 = v137;
        v66 = v138;
        *(v61 + 32) = v139;
        *v61 = v65;
        *(v61 + 16) = v66;
        *(v61 + 20) = v64;
        v61 += 36;
        --v63;
      }

      while (v63);
      v61 = v127;
    }
  }

  else
  {
    v59 = 0;
    v61 = *&v147[2];
  }

  v49 = ttRemoveOverlapBoxes(v61, v59, v148[0], v148[1], *(a6 + 8));
  v43 = v132;
  v20 = a2;
  v23 = v129;
  if (v49)
  {
    if (v49 <= 0xB || (v22 < v61 + 36 * v49 - 12 ? (v67 = v61 + 20 >= &v22[v49]) : (v67 = 1), !v67))
    {
      v68 = 0;
LABEL_68:
      v74 = &v22[v68];
      v75 = (v61 + 36 * v68 + 20);
      v76 = v49 - v68;
      do
      {
        v77 = *v75;
        v75 += 9;
        *v74++ = v77;
        --v76;
      }

      while (v76);
      goto LABEL_70;
    }

    v68 = v49 & 0xFFFFFFF8;
    v69 = v22 + 4;
    v70 = (v61 + 164);
    v71 = v68;
    do
    {
      LODWORD(v72) = *(v70 - 36);
      DWORD1(v72) = *(v70 - 27);
      DWORD2(v72) = *(v70 - 18);
      HIDWORD(v72) = *(v70 - 9);
      LODWORD(v73) = *v70;
      DWORD1(v73) = v70[9];
      DWORD2(v73) = v70[18];
      HIDWORD(v73) = v70[27];
      *(v69 - 1) = v72;
      *v69 = v73;
      v69 += 2;
      v70 += 72;
      v71 -= 8;
    }

    while (v71);
    if (v68 != v49)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  v39 = v141;
  v78 = a2 - v141 + v49;
  v50 = v78 - v132;
  if (v78 <= v132)
  {
    goto LABEL_40;
  }

LABEL_71:
  v79 = 0;
  v80 = 0;
  v81 = (a1 + 12);
  do
  {
    if (*v81 == 1)
    {
      v82 = (v23 + 8 * v80);
      *v82 = v79;
      v82[1] = *(v81 - 2);
      ++v80;
    }

    ++v79;
    v81 += 26;
  }

  while (v20 != v79);
  if (v80 < v50)
  {
    ttAssocTrkDet();
  }

  v133 = v49;
  v83 = v43;
  v84 = v23;
  bmHeapsort(v23, v80, 8uLL, ttAssocObjectKillComp);
  if (v80)
  {
    v85 = v50 + v39;
    v20 = a2;
    if (v39 < v50 + v39)
    {
      v86 = a1 + 104 * *v84;
      v88 = *(v86 + 12);
      v87 = (v86 + 12);
      v49 = v133;
      if (v88 != 1)
      {
LABEL_124:
        ttAssocTrkDet();
      }

      v43 = v83;
      *v87 = 2;
      v51 = v39 + 1;
      if (v80 >= 2 && v51 < v85)
      {
        v89 = v84 + 2;
        v90 = 2;
        do
        {
          if (*(a1 + 104 * *v89 + 4) > *(a1 + 104 * *(v89 - 2) + 4))
          {
            ttAssocTrkDet();
          }

          v91 = a1 + 104 * *v89;
          v93 = *(v91 + 12);
          v92 = (v91 + 12);
          if (v93 != 1)
          {
            goto LABEL_124;
          }

          *v92 = 2;
          v94 = v90 + 1;
          if (v90 >= v80)
          {
            break;
          }

          v89 += 2;
          v95 = v39 + v90++;
        }

        while (v95 < v85);
        v51 = v39 + v94 - 1;
      }

      goto LABEL_90;
    }

    v51 = v39;
  }

  else
  {
    v51 = v39;
    v20 = a2;
  }

  v43 = v83;
  v49 = v133;
LABEL_90:
  if (v49 + v20 - v51 > v43)
  {
    ttAssocTrkDet();
  }

  v96 = 0;
  result = 0;
  v97 = a1;
  do
  {
    if (*(v97 + 12) <= 1)
    {
      if (v96 != result)
      {
        v98 = a1 + 104 * result;
        v99 = *v97;
        v100 = *(v97 + 32);
        *(v98 + 16) = *(v97 + 16);
        *(v98 + 32) = v100;
        *v98 = v99;
        v101 = *(v97 + 48);
        v102 = *(v97 + 64);
        v103 = *(v97 + 80);
        *(v98 + 96) = *(v97 + 96);
        *(v98 + 64) = v102;
        *(v98 + 80) = v103;
        *(v98 + 48) = v101;
      }

      result = (result + 1);
    }

    ++v96;
    v97 += 104;
  }

  while (v20 != v96);
  if (v49)
  {
    v104 = 0;
    LODWORD(v105) = v43 - result;
    if (v43 >= result)
    {
      v105 = v105;
    }

    else
    {
      v105 = 0;
    }

    v106 = v49;
    v107 = a1 + 104 * result + 16;
    do
    {
      if (!v105)
      {
        ttAssocTrkDet();
      }

      v108 = *v22++;
      *(v107 + 80) = 0;
      *(v107 + 48) = 0uLL;
      *(v107 + 64) = 0uLL;
      *(v107 + 16) = 0uLL;
      *(v107 + 32) = 0uLL;
      *(v107 - 16) = 0uLL;
      *v107 = 0uLL;
      v109 = a4 + 88 * v108;
      v110 = *(v109 + 16);
      *v107 = *v109;
      *(v107 + 16) = v110;
      v111 = *(v109 + 32);
      v112 = *(v109 + 48);
      v113 = *(v109 + 64);
      *(v107 + 80) = *(v109 + 80);
      *(v107 + 48) = v112;
      *(v107 + 64) = v113;
      *(v107 + 32) = v111;
      LODWORD(v109) = *a9;
      *(v107 - 16) = *a9;
      *a9 = v109 + 1;
      *v107 = v109;
      v107 += 104;
      --v104;
      --v105;
      --v106;
    }

    while (v106);
    *v130 = -v104;
    *v131 = result;
    result = (result - v104);
  }

  else
  {
    *v130 = 0;
    *v131 = result;
    if (!result)
    {
      return result;
    }
  }

  if (result <= 1)
  {
    v114 = 0;
LABEL_117:
    v121 = (a1 + 104 * v114 + 4);
    v122 = result - v114;
    do
    {
      if (*v121 == -1)
      {
        v123 = -1;
      }

      else
      {
        v123 = *v121 + 1;
      }

      *v121 = v123;
      v121 += 26;
      --v122;
    }

    while (v122);
    return result;
  }

  v114 = result & 0xFFFFFFFE;
  v115 = (a1 + 108);
  v116 = v114;
  do
  {
    v117 = *(v115 - 26);
    v118 = *v115;
    if (v117 == -1)
    {
      v119 = -1;
    }

    else
    {
      v119 = v117 + 1;
    }

    if (v118 == -1)
    {
      v120 = -1;
    }

    else
    {
      v120 = v118 + 1;
    }

    *(v115 - 26) = v119;
    *v115 = v120;
    v115 += 52;
    v116 -= 2;
  }

  while (v116);
  if (v114 != result)
  {
    goto LABEL_117;
  }

  return result;
}

uint64_t TtAssociateTrackerBboxes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v28[124] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 180);
  if (*(a1 + 4))
  {
    if (v6)
    {
      memcpy(__dst, (a2 + 184), 88 * v6);
    }
  }

  else
  {
    if (v6)
    {
      v7 = 0;
      v8 = a2 + 184;
      v9 = &v27;
      do
      {
        ttDetRectFromObject(v8, v24);
        v10 = v24[1];
        *v9 = v24[0];
        v9[1] = v10;
        *(v9 + 8) = v25;
        *(v9 + 5) = v7++;
        v11 = *(a2 + 180);
        v8 += 88;
        v9 = (v9 + 36);
      }

      while (v7 < v11);
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v12 = ttRemoveOverlapBoxes(&v27, v11, v24, 4u, 0.8);
    v6 = v12;
    if (v12)
    {
      v13 = v12;
      v14 = v28;
      v15 = __dst;
      do
      {
        v16 = *v14;
        v14 += 9;
        v17 = a2 + 184 + 88 * v16;
        v18 = *(v17 + 48);
        *(v15 + 2) = *(v17 + 32);
        *(v15 + 3) = v18;
        *(v15 + 4) = *(v17 + 64);
        *(v15 + 10) = *(v17 + 80);
        v19 = *(v17 + 16);
        *v15 = *v17;
        *(v15 + 1) = v19;
        v15 += 88;
        --v13;
      }

      while (v13);
    }
  }

  v20 = bmMunkresTempBytes(4);
  BmMixedBufSize::BmMixedBufSize(v24);
  if (DWORD1(v24[0]))
  {
    rtcv::simImageChMeanTempBytes();
  }

  if (v20 + LODWORD(v24[0]) != -529)
  {
    operator new();
  }

  *(a1 + 4) = ttAssocTrkDet(a1 + 8, *(a1 + 4), 4u, __dst, v6, a3, &v23, &v22, a1, 0, 0);
  return 0;
}

void sub_24BC66D14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TtUpdateAssocResult(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = a1 + 20;
    do
    {
      if (*v4 <= 1)
      {
        if (v2 != v3)
        {
          v5 = a1 + 8 + 104 * v3;
          v6 = *(v4 - 12);
          v7 = *(v4 + 20);
          *(v5 + 16) = *(v4 + 4);
          *(v5 + 32) = v7;
          *v5 = v6;
          v8 = *(v4 + 36);
          v9 = *(v4 + 52);
          v10 = *(v4 + 68);
          *(v5 + 96) = *(v4 + 84);
          *(v5 + 64) = v9;
          *(v5 + 80) = v10;
          *(v5 + 48) = v8;
        }

        ++v3;
      }

      ++v2;
      v4 += 104;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 4) = v3;
  return 0;
}

float ttAssocObjectRectIntersectOverSmaller(float *a1, float *a2, float a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a1 + v5;
  v8 = v4 + v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = 0.0;
  if (v7 > *a2 && v8 > v10)
  {
    v13 = a2[2];
    v14 = a2[3];
    v15 = v10 + v14;
    if ((v9 + v13) > v3 && v15 > v4)
    {
      return (fmaxf(fminf(v7, v9 + v13) - fmaxf(v3, v9), 0.0) * fmaxf(fminf(v8, v15) - fmaxf(v4, v10), 0.0)) / fmaxf(a3, fminf(v5 * v6, v13 * v14));
    }
  }

  return v11;
}

uint64_t TtAssocObjectRemoveOldOverlapObjects(uint64_t a1, float a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v5 = a1 + 8;
    bmHeapsort(a1 + 8, v2, 0x68uLL, ttAssocObjectAgeComp);
    v6 = *(a1 + 4);
    if (v6)
    {
      v7 = 0;
      v8 = a1 + 148;
      do
      {
        v10 = v7 + 1;
        if (v7 + 1 >= v6)
        {
          v9 = v7 + 1;
        }

        else
        {
          v11 = v5 + 104 * v7;
          v12 = v8;
          v13 = v10;
          v9 = v10;
          do
          {
            if (*(v11 + 4) > *(v12 - 32))
            {
              TtAssocObjectRemoveOldOverlapObjects_cold_2();
            }

            if (*(v11 + 20) != *(v12 - 16))
            {
              goto LABEL_8;
            }

            v20 = *(v11 + 24);
            v21 = *(v11 + 28);
            v22 = *(v11 + 32);
            v23 = *(v11 + 36);
            v24 = v21 + v23;
            v25 = *(v12 - 12);
            v26 = *(v12 - 8);
            v27 = 0.0;
            if ((v20 + v22) > v25 && v24 > v26)
            {
              v29 = *(v12 - 4);
              v30 = v26 + *v12;
              if ((v25 + v29) > v20 && v30 > v21)
              {
                v27 = (fmaxf(fminf(v20 + v22, v25 + v29) - fmaxf(v20, v25), 0.0) * fmaxf(fminf(v24, v30) - fmaxf(v21, v26), 0.0)) / fmaxf(fminf(v22 * v23, v29 * *v12), 0.00001);
              }
            }

            if (v27 <= a2)
            {
LABEL_8:
              if (v9 > v13)
              {
                TtAssocObjectRemoveOldOverlapObjects_cold_1();
              }

              v14 = v5 + 104 * v9++;
              v15 = *(v12 - 36);
              v16 = *(v12 - 4);
              *(v14 + 16) = *(v12 - 20);
              *(v14 + 32) = v16;
              *v14 = v15;
              v17 = *(v12 + 12);
              v18 = *(v12 + 28);
              v19 = *(v12 + 44);
              *(v14 + 96) = *(v12 + 60);
              *(v14 + 64) = v18;
              *(v14 + 80) = v19;
              *(v14 + 48) = v17;
            }

            ++v13;
            v12 += 104;
          }

          while (v6 != v13);
        }

        v8 += 104;
        v7 = v10;
        v6 = v9;
      }

      while (v10 < v9);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 4) = v9;
  }

  return 0;
}

uint64_t getInitialPos(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v4 = *(a1 + 8);
  if (!v4 || (v5 = *(a1 + 12), !v5))
  {
    *a4 = 1;
    return 0;
  }

  v6 = 0;
  v7 = 0;
  LOBYTE(v8) = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *(a2 + 8);
  v13 = *(a2 + 12);
  do
  {
    v14 = *a1 + v6;
    v15 = 0;
    if (v13 <= v7)
    {
      if ((v13 + *(a2 + 20)) <= v7)
      {
        do
        {
          v8 = v8;
          if (*(v14 + v15) > v8)
          {
            v10 = v7;
            v9 = v15;
            v8 = *(v14 + v15);
          }

          ++v15;
        }

        while (v5 != v15);
      }

      else
      {
        do
        {
          v16 = *(v14 + v15);
          v8 = v8;
          if (v16 > v8)
          {
            v10 = v7;
            v9 = v15;
            v8 = *(v14 + v15);
          }

          v17 = v15;
          if (v16 <= v11)
          {
            LOBYTE(v16) = v11;
          }

          if ((v12 + *(a2 + 16)) > v17 && v12 <= v17)
          {
            v11 = v16;
          }

          ++v15;
        }

        while (v5 != v15);
      }
    }

    else
    {
      do
      {
        v8 = v8;
        if (*(v14 + v15) > v8)
        {
          v10 = v7;
          v9 = v15;
          v8 = *(v14 + v15);
        }

        ++v15;
      }

      while (v5 != v15);
    }

    ++v7;
    v6 += *(a1 + 16);
  }

  while (v7 != v4);
  *a4 = v8 == 0;
  if (!v8)
  {
    return 0;
  }

  if (*(a2 + 24) && v8 >> 1 < v11)
  {
    v20 = *(a1 + 12);
    v21 = v20;
    if ((*(a2 + 8) + *(a2 + 16)) <= v20 && (*(a2 + 12) + *(a2 + 20)) <= v4)
    {
      *a3 = *(a2 + 8);
      return 0;
    }
  }

  else
  {
    v20 = *(a1 + 12);
    v21 = v20;
  }

  v22 = (v20 + 10) / 0x14uLL;
  v23 = (v4 + 10) / 0x14uLL;
  v24 = fmax((v9 - v22), 0.0);
  v25 = fmax((v10 - v23), 0.0);
  *a3 = v24;
  *(a3 + 4) = v25;
  v26 = (2 * v22) | 1;
  v27 = ((2 * v23) | 1);
  *(a3 + 8) = v26;
  *(a3 + 12) = v27;
  if ((v26 + v24) > v21)
  {
    *(a3 + 8) = v21 - v24;
  }

  if ((v27 + v25) <= v4)
  {
    return 0;
  }

  *(a3 + 12) = v4 - v25;
  return 0;
}

uint64_t computeIntegralImage(uint64_t a1, uint64_t a2, double a3, float a4)
{
  v4 = *(a1 + 8);
  if (*(a2 + 8) != v4 + 1)
  {
    return 4294967292;
  }

  v5 = *(a2 + 12);
  v6 = *(a1 + 12);
  if (v5 != v6 + 1)
  {
    return 4294967292;
  }

  if (v4 && v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v7 + 1;
      v10 = *(a2 + 16);
      v11 = (*a1 + *(a1 + 16) * v7);
      v12 = *a2 + v10 * v7;
      v13 = *a2 + (v10 * v8);
      v14 = 0.0;
      v15 = 1;
      v16 = v6;
      do
      {
        if (*(a1 + 8) <= v7)
        {
          bmMunkresMaxAssignments();
        }

        if (v15 >= v5 || (v17 = *(a2 + 8), v17 <= v7))
        {
          AcAttrNode::postProcess();
        }

        if (v17 <= v9)
        {
          AcAttrNode::postProcess();
        }

        LOBYTE(a4) = *v11;
        v14 = (LODWORD(a4) / 255.0) * (LODWORD(a4) / 255.0) + v14;
        a4 = *(v12 + 4 * v15) + v14;
        *(v13 + 4 * v15) = a4;
        ++v11;
        ++v15;
        --v16;
      }

      while (v16);
      ++v8;
      ++v7;
    }

    while (v9 != v4);
  }

  return 0;
}

uint64_t convertSaliencyMapToBoundingBoxes(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t a5, int a6, float a7, float a8)
{
  if (!a3)
  {
    return 4294967292;
  }

  v8 = 4 * *(a2 + 5986) + 4;
  if (v8 + v8 * *(a2 + 5984) > a4 || !*(a2 + 5990))
  {
    return 4294967292;
  }

  bzero(a3, a4);
  v16 = a3;
  v73 = a3;
  v17 = *(a2 + 5986);
  v18 = a2;
  v19 = *(a2 + 5984);
  v74 = v17 + 1;
  v75 = v19 + 1;
  v20 = 4 * v19 + 4;
  v76 = v20;
  v77 = 6;
  v71 = 0;
  getInitialPos(a1, a5, &v72, &v71);
  result = 0;
  if (!v71)
  {
    result = computeIntegralImage(a1, &v73, v21, v22);
    if (!result)
    {
      v26 = *&v72;
      if (a6)
      {
        v27 = a6;
        v28 = 0;
        v29 = -a7;
        LODWORD(v25) = *(a1 + 8);
        LODWORD(v24) = *(a1 + 12);
        v30 = v24;
        v31 = v25;
        v33 = *(&v72 + 2);
        v32 = *(&v72 + 1);
        v34 = *(&v72 + 3);
        v35 = v18;
        do
        {
          v36 = v26;
          v37 = v32;
          if (v19 < v36 || v17 < v37)
          {
            AcAttrNode::postProcess();
          }

          v39 = v26 + v33;
          v40 = (v26 + v33);
          v41 = v32 + v34;
          v42 = (v32 + v34);
          if (v19 < v40 || v17 < v42)
          {
            AcAttrNode::postProcess();
          }

          v44 = (v26 + 1.0);
          if (v19 < v44)
          {
            AcAttrNode::postProcess();
          }

          v45 = (v32 + 1.0);
          if (v17 < v45)
          {
            AcAttrNode::postProcess();
          }

          v46 = (v39 + -1.0);
          if (v19 < v46)
          {
            AcAttrNode::postProcess();
          }

          v47 = (v41 + -1.0);
          if (v17 < v47)
          {
            AcAttrNode::postProcess();
          }

          v48 = &v16[v20 * v37];
          v49 = *&v48[4 * v36];
          v50 = &v16[v20 * v42];
          v51 = *&v50[4 * v40];
          v52 = *&v50[4 * v36];
          v53 = *&v48[4 * v40];
          v54 = (((v49 + v51) - v52) - v53) / (v33 * v34);
          v55 = ((((v49 + *&v50[4 * v44]) - v52) - *&v48[4 * v44]) / v34) + (v29 * v54);
          v56 = ((((v49 + *&v16[4 * v40 + v20 * v45]) - *&v16[4 * v36 + v20 * v45]) - v53) / v33) + (v29 * v54);
          v57 = ((((v51 + *&v48[4 * v46]) - *&v50[4 * v46]) - v53) / v34) + (v29 * v54);
          v58 = ((((v51 + *&v16[4 * v36 + v20 * v47]) - v52) - *&v16[4 * v40 + v20 * v47]) / v33) + (v29 * v54);
          v59 = v58 > 0.0;
          v60 = v58 < 0.0;
          if (fabsf(v55) <= (v54 * a8))
          {
            v61 = v28;
          }

          else
          {
            v61 = v28 + 1;
          }

          v28 = v61 + 2 * (fabsf(v56) > (v54 * a8)) + 4 * (fabsf(v57) > (v54 * a8)) + 8 * (fabsf(v58) > (v54 * a8));
          v62 = ((__PAIR64__(v55 < 0.0, 0.0) - LODWORD(v55)) >> 32);
          if ((v61 & 1) == 0)
          {
            v62 = 0.0;
          }

          v63 = fmax((v26 + v62), 0.0);
          v64 = ((__PAIR64__(v56 < 0.0, 0.0) - LODWORD(v56)) >> 32);
          v26 = v63;
          if ((v28 & 2) == 0)
          {
            v64 = 0.0;
          }

          v65 = v32 + v64;
          if ((v28 & 4) != 0)
          {
            v66 = (v57 > 0.0) - (v57 < 0.0);
          }

          else
          {
            v66 = 0;
          }

          v67 = fmin(v30, (v66 + v39));
          v68 = v65;
          v69 = (v28 & 8) != 0 && v59 - v60;
          v70 = fmin(v31, (v69 + v41));
          v32 = fmax(v68, 0.0);
          v33 = v67 - v26;
          v34 = v70 - v32;
          --v27;
        }

        while (v27);
        *(&v72 + 1) = v32;
        *(&v72 + 2) = v67 - v26;
        *(&v72 + 3) = v70 - v32;
      }

      else
      {
        v35 = v18;
      }

      result = 0;
      *&v72 = v26;
      *(v35 + 1480) = v72;
      *(v35 + 1496) = 1;
      *(v35 + 1476) = 6;
      *(v35 + 1468) = 1;
    }
  }

  return result;
}

void AcAttrNode::postProcess()
{
  __assert_rtn("bmBufferDequantizeUInt8", "bmbufferprivate.h", 96, "input.pixelFormat == kBmBufferPixelFormatType_UInt8");
}

{
  __assert_rtn("bmBufferDequantizeUInt8", "bmbufferprivate.h", 98, "input.height == output.height");
}

{
  __assert_rtn("bmBufferDequantizeUInt8", "bmbufferprivate.h", 99, "input.width == output.width");
}

{
  __assert_rtn("bmBufferDequantizeInt8", "bmbufferprivate.h", 79, "input.pixelFormat == kBmBufferPixelFormatType_Int8");
}

{
  __assert_rtn("bmBufferDequantizeInt8", "bmbufferprivate.h", 81, "input.height == output.height");
}

{
  __assert_rtn("bmBufferDequantizeInt8", "bmbufferprivate.h", 82, "input.width == output.width");
}

{
  __assert_rtn("bmBufferPixelAtFloat", "bmbufferprivate.h", 70, "x < buf.width && y < buf.height");
}

void ft::HungarianMatcher::HungarianMatcher(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

void acCropResizeGenerateConfig()
{
  __assert_rtn("acCropResizeGenerateConfig", "accropresize.cpp", 30, "!(dstWidth & 0x01) && !(dstHeight & 0x01)");
}

{
  __assert_rtn("acCropResizeGenerateConfig", "accropresize.cpp", 110, "xStartY < srcPyrInfo.widths[crop.pyrIndex]");
}

{
  __assert_rtn("acCropResizeGenerateConfig", "accropresize.cpp", 111, "yStartY < srcPyrInfo.heights[crop.pyrIndex]");
}

{
  __assert_rtn("acCropResizeGenerateConfig", "accropresize.cpp", 50, "pyrInd == 0 || srcPyrInfo.heights[pyrInd] <= srcPyrInfo.heights[pyrInd - 1]");
}

{
  __assert_rtn("acCropResizeGenerateConfig", "accropresize.cpp", 48, "pyrInd == 0 || srcPyrInfo.widths[pyrInd] <= srcPyrInfo.widths[pyrInd - 1]");
}

{
  __assert_rtn("acCropResizeGenerateConfig", "accropresize.cpp", 31, "srcPyrInfo.numLevels <= 4");
}

void AcDetNode::init()
{
  __assert_rtn("init", "acdetnode.cpp", 194, "m_config.fmBboxCounts[scaleInd]");
}

{
  __assert_rtn("init", "acdetnode.cpp", 193, "count");
}

void AcDetNode::postProcessDet()
{
  __assert_rtn("getClsBufferInds", "acdetnode.cpp", 547, "negInd != ((uint32_t)-1)");
}

{
  __assert_rtn("getClsBufferInds", "acdetnode.cpp", 546, "posInd != ((uint32_t)-1)");
}

{
  __assert_rtn("acDetCategoryToIsp", "acdetnode.cpp", 47, "cat < kAcDetCategoryMax");
}

{
  __assert_rtn("acDetCategoryToIsp", "acdetnode.cpp", 46, "cat != kAcDetCategory_Background");
}

void AcDetNode::getParams()
{
  __assert_rtn("classBufChCount", "acdetnode.cpp", 514, "state.magic == 0xde71");
}

{
  __assert_rtn("classPosBufChCount", "acdetnode.cpp", 520, "state.magic == 0xde71");
}

void AcDetNode::getParams(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a2 + 576 * a3;
  *(v4 + 148) = *a1;
  *(v4 + 144) = *a4;
  __assert_rtn("bboxBufChCount", "acdetnode.cpp", 508, "state.magic == 0xde71");
}

{
  v4 = a2 + 576 * a3;
  *(v4 + 292) = *a1;
  *(v4 + 288) = *a4;
  __assert_rtn("rollBufChCount", "acdetnode.cpp", 532, "state.magic == 0xde71");
}

{
  v4 = a2 + 576 * a3;
  *(v4 + 436) = *a1;
  *(v4 + 432) = *a4;
  __assert_rtn("yawBufChCount", "acdetnode.cpp", 538, "state.magic == 0xde71");
}

void acAttrReduceBlink()
{
  __assert_rtn("acAttrReduceBlink", "acattrreduce.cpp", 43, "occludedThreshold <= 100");
}

{
  __assert_rtn("acAttrReduceBlink", "acattrreduce.cpp", 42, "blinkThreshold <= 100");
}

{
  __assert_rtn("acAttrReduceBlink", "acattrreduce.cpp", 41, "(*netOutput).height >= kOutputCount");
}

void acDetRectSmallRectSuppression()
{
  __assert_rtn("acDetRectSmallRectSuppression", "acdetrect.cpp", 144, "remaining <= check");
}

{
  __assert_rtn("acDetRectSmallRectSuppression", "acdetrect.cpp", 139, "sortedRects[justSelected].score >= sortedRects[check].score");
}

void acDetRectWeightedMerge()
{
  __assert_rtn("acDetRectWeightedMerge", "acdetrect.cpp", 257, "remaining <= check");
}

{
  __assert_rtn("acDetRectWeightedMerge", "acdetrect.cpp", 201, "rects");
}

void bmBufferDequantizeHalf()
{
  __assert_rtn("bmBufferDequantizeHalf", "bmbufferprivate.h", 113, "input.pixelFormat == kBmBufferPixelFormatType_Half");
}

{
  __assert_rtn("bmBufferDequantizeHalf", "bmbufferprivate.h", 114, "output.pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("bmBufferDequantizeHalf", "bmbufferprivate.h", 115, "input.height == output.height");
}

{
  __assert_rtn("bmBufferDequantizeHalf", "bmbufferprivate.h", 116, "input.width == output.width");
}

void TtTrkRpnNode::setUpNetBuffers()
{
  __assert_rtn("setUpNetBuffers", "tttrkrpnnode.cpp", 712, "ptr - (const uint8_t*)netBufferPtrs.instanceCrop == params.instanceCropBatchBytes");
}

{
  __assert_rtn("setUpNetBuffers", "tttrkrpnnode.cpp", 724, "ptr - (const uint8_t*)netBufferPtrs.exemplarCrop == params.exemplarCropBatchBytes");
}

{
  __assert_rtn("setUpNetBuffers", "tttrkrpnnode.cpp", 736, "ptr - (const uint8_t*)netBufferPtrs.templateKernels[i] == params.templateNetOutBatchBytes[i]");
}

{
  __assert_rtn("setUpNetBuffers", "tttrkrpnnode.cpp", 749, "ptr - (const uint8_t*)netBufferPtrs.xcorrOutputs[i] == params.xcorrNetOutBatchBytes[i]");
}

void ReportException(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_24BC30000, a2, OS_LOG_TYPE_ERROR, "FusionTracker error: %s", &v4, 0xCu);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_24BC30000, a2, OS_LOG_TYPE_ERROR, "FTCinematicTapToTrack error: %s", &v4, 0xCu);
}

void rtcv::bmBufferPixelFormatTypeToString(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a5 = 1;
  *(a4 + 8) = a3;
  *a4 = a2;
}

void simResizeVisPipeBinning()
{
  __assert_rtn("bmBufferPixelAtUInt16", "bmbufferprivate.h", 63, "x < buf.width && y < buf.height");
}

{
  __assert_rtn("simResizeVisPipeBinning", "simresizevispipe.cpp", 62, "yStep == 1 || yStep == 2 || yStep == 4 || yStep == 8");
}

{
  __assert_rtn("simResizeVisPipeBinning", "simresizevispipe.cpp", 61, "xStep == 1 || xStep == 2 || xStep == 4 || xStep == 8");
}

{
  __assert_rtn("simResizeVisPipeBinning", "simresizevispipe.cpp", 57, "startX == 0.0f && startY == 0.0f");
}

void simResizeVisPipe()
{
  __assert_rtn("simResizeVisPipe", "simresizevispipe.cpp", 257, "output.height <= ISP_RESIZE_MAX_HEIGHT");
}

{
  __assert_rtn("simResizeVisPipe", "simresizevispipe.cpp", 255, "output.width <= ISP_RESIZE_MAX_WIDTH");
}

{
  __assert_rtn("simResizeVisPipe", "simresizevispipe.cpp", 254, "(scaleX <= 1 && scaleY <= 1) || (method != SimResizeVisPipeMethod::Area)");
}

{
  __assert_rtn("simResizeVisPipe", "simresizevispipe.cpp", 251, "scaleX >= ISP_RESIZE_MIN_SCALE * ISP_RESIZE_MIN_SCALE && scaleY >= ISP_RESIZE_MIN_SCALE * ISP_RESIZE_MIN_SCALE");
}

{
  __assert_rtn("simResizeVisPipe", "simresizevispipe.cpp", 247, "scaleX <= ISP_RESIZE_MAX_SCALE && scaleY <= ISP_RESIZE_MAX_SCALE");
}

void acNonMaxSuppression()
{
  __assert_rtn("acNonMaxSuppression", "acnonmaxsuppression.cpp", 35, "remaining <= check");
}

{
  __assert_rtn("acNonMaxSuppression", "acnonmaxsuppression.cpp", 18, "__null != rects");
}

void acCrossClassSuppression()
{
  __assert_rtn("acCrossClassSuppression", "acnonmaxsuppression.cpp", 66, "remaining <= check");
}

{
  __assert_rtn("acCrossClassSuppression", "acnonmaxsuppression.cpp", 49, "__null != rects");
}

void acNonMaxSuppressionSmallbox()
{
  __assert_rtn("acNonMaxSuppressionSmallbox", "acnonmaxsuppression.cpp", 96, "remaining <= check");
}

{
  __assert_rtn("acNonMaxSuppressionSmallbox", "acnonmaxsuppression.cpp", 79, "__null != rects");
}

void ik::core::EspressoNetState::EspressoNetState()
{
  dispatch_once(&qword_280F7C008, &__block_literal_global_0);
}

{
  dispatch_once(&qword_280F7C018, &__block_literal_global_175);
}

{
  dispatch_once(&qword_280F7C028, &__block_literal_global_2);
}

{
  dispatch_once(&qword_280F7C038, &__block_literal_global_3);
}

void ik::LogEspressoError(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = 136315394;
  v3 = v1;
  v4 = 2080;
  status_string = espresso_get_status_string();
  _os_log_error_impl(&dword_24BC30000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Encountered an error during: %s\n -> Espresso Error: %s", &v2, 0x16u);
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 23);
  v3 = *a1;
  status_string = espresso_get_status_string();
  if (v2 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = v3;
  }

  v6 = 136315394;
  v7 = v5;
  v8 = 2080;
  v9 = status_string;
  _os_log_error_impl(&dword_24BC30000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Encountered an error during: %s\n -> Espresso Error: %s", &v6, 0x16u);
}

void std::pair<std::string const,ik::Tensor>::pair[abi:ne200100]<char const(&)[6],ik::PixelBufferTensor &,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void bmBufferResizeCHW()
{
  __assert_rtn("bmBufferResizeCHW", "bmbuffergeometry.cpp", 206, "false");
}

{
  __assert_rtn("bmBufferResize2xCHW", "bmbuffergeometry.cpp", 77, "dst.pixelFormat == src.pixelFormat");
}

{
  __assert_rtn("bmBufferResize2xCHW", "bmbuffergeometry.cpp", 78, "src.pixelFormat == kBmBufferPixelFormatType_Int8");
}

{
  __assert_rtn("bmBufferResize2xCHW", "bmbuffergeometry.cpp", 81, "srcViewHeight * numChannels == src.height");
}

{
  __assert_rtn("bmBufferResize2xCHW", "bmbuffergeometry.cpp", 84, "dstViewHeight * numChannels == dst.height");
}

{
  __assert_rtn("bmBufferResize2xSingleChannelCHW", "bmbuffergeometry.cpp", 53, "dst.width == src.width * 2");
}

{
  __assert_rtn("bmBufferResize2xSingleChannelCHW", "bmbuffergeometry.cpp", 54, "dst.height == src.height * 2");
}

{
  __assert_rtn("bmBufferPixelAtInt8", "bmbufferprivate.h", 49, "x < buf.width && y < buf.height");
}

{
  __assert_rtn("bmBufferResize2xSingleChannelCHW", "bmbuffergeometry.cpp", 52, "src.height > 0");
}

void bmBufferPartialResizeCHW()
{
  __assert_rtn("bmBufferPartialResizeCHW", "bmbuffergeometry.cpp", 216, "false");
}

{
  __assert_rtn("bmBufferResizeBicubicCHW", "bmbuffergeometry.cpp", 173, "srcViewHeight * numChannels == src.height");
}

{
  __assert_rtn("bmBufferResizeBicubicCHW", "bmbuffergeometry.cpp", 176, "dstViewHeight * numChannels == dst.height");
}

{
  __assert_rtn("bmBufferResizeBicubicSingleChannelCHW", "bmbuffergeometry.cpp", 125, "src.pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("bmBufferResizeBicubicSingleChannelCHW", "bmbuffergeometry.cpp", 126, "dst.pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("bmBufferResizeBicubicSingleChannelCHW", "bmbuffergeometry.cpp", 124, "dst.height >= src.height");
}

{
  __assert_rtn("bmBufferResizeBicubicSingleChannelCHW", "bmbuffergeometry.cpp", 123, "dst.width >= src.width");
}

{
  __assert_rtn("bmBufferResizeBicubicSingleChannelCHW", "bmbuffergeometry.cpp", 122, "src.width && src.height");
}

void bmBufferResizeCoordConvert()
{
  __assert_rtn("bmBufferResizeCoordConvert", "bmbuffergeometry.cpp", 223, "srcW && srcH && dstW && dstH");
}

{
  __assert_rtn("bmBufferResizeCoordConvert", "bmbuffergeometry.cpp", 222, "pad < kBmBufferResizePadMax");
}

void bmBufferResizeCoordConvertReversed()
{
  __assert_rtn("bmBufferResizeCoordConvertReversed", "bmbuffergeometry.cpp", 247, "srcW && srcH && dstW && dstH");
}

{
  __assert_rtn("bmBufferResizeCoordConvertReversed", "bmbuffergeometry.cpp", 246, "pad < kBmBufferResizePadMax");
}

void ft::TrackPool::UpdateForeignTracks(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_24BC30000, log, OS_LOG_TYPE_ERROR, "Observation ID has internal track mask set.", buf, 2u);
}

void FTGetChipIdentifier_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_24BC30000, a2, OS_LOG_TYPE_ERROR, "Unknown chip encountered: 0x%x", v2, 8u);
}

void ttNonMaxSuppression()
{
  __assert_rtn("ttNonMaxSuppression", "ttnonmaxsuppression.cpp", 33, "remaining <= check");
}

{
  __assert_rtn("ttNonMaxSuppression", "ttnonmaxsuppression.cpp", 17, "__null != rects");
}

void ttNonMaxSuppression2()
{
  __assert_rtn("ttNonMaxSuppression2", "ttnonmaxsuppression.cpp", 62, "remaining <= check");
}

{
  __assert_rtn("ttNonMaxSuppression2", "ttnonmaxsuppression.cpp", 46, "__null != rects");
}

void ttNonMaxSuppressionSmallbox()
{
  __assert_rtn("ttNonMaxSuppressionSmallbox", "ttnonmaxsuppression.cpp", 92, "remaining <= check");
}

{
  __assert_rtn("ttNonMaxSuppressionSmallbox", "ttnonmaxsuppression.cpp", 75, "__null != rects");
}

void rtcv::simResize()
{
  __assert_rtn("simResizeBGRA8888AccelerateFramework", "simresize.cpp", 38, "dstViewWidth <= dstWidth");
}

{
  __assert_rtn("simResizeBGRA8888AccelerateFramework", "simresize.cpp", 41, "dstViewHeight <= dstHeight");
}

void rtcv::simImageChMean()
{
  __assert_rtn("nextChunk", "bmmixedbufsize.h", 71, "m_nextChunkOffset <= m_totalBytes");
}

{
  __assert_rtn("simImageChMeanGetTempBuffers", "simresize.cpp", 209, "numTempBytes >= bs.totalBytes()");
}

void acDetBboxCoderDecodeAll()
{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 58, "7 == config.categoryCount || 5 == config.categoryCount");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 91, "logitsUniPosBuf->pixelFormat == kBmBufferPixelFormatType_Int8");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 93, "!logitsNegBuf || logitsNegBuf->pixelFormat == kBmBufferPixelFormatType_Int8");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 99, "offsetsBuf.pixelFormat == kBmBufferPixelFormatType_Int8");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 102, "rollBuf.pixelFormat == kBmBufferPixelFormatType_Int8");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 105, "yawBuf.pixelFormat == kBmBufferPixelFormatType_Int8");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 107, "layerHeight * numLogitsUniPosChs == logitsUniPosBuf->height");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 108, "logitsUniPosBuf->width == offsetsBuf.width");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 109, "layerHeight * numDefaults * 4 == offsetsBuf.height");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 261, "outBoxInd < maxOutBoxes");
}

{
  __assert_rtn("acDetBboxCoderPoseDegrees", "acdetbboxcoder.cpp", 36, "predictions.width == numPoseBins");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 128, "globalDefaultBoxInd < defaultBoxWidthsHeightsLen");
}

{
  __assert_rtn("acDetBboxCoderDecodeAll", "acdetbboxcoder.cpp", 89, "config.posChannelCounts[layerInd] > 0");
}

void acDetBboxCoderDecodeAllFloat()
{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 327, "7 == config.categoryCount || 5 == config.categoryCount");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 356, "logitsUniPosBuf->pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 358, "!logitsNegBuf || logitsNegBuf->pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 363, "offsetsBuf.pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 365, "rollBuf.pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 367, "yawBuf.pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 369, "layerHeight * numLogitsUniPosChs == logitsUniPosBuf->height");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 370, "logitsUniPosBuf->width == offsetsBuf.width");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 371, "layerHeight * numDefaults * 4 == offsetsBuf.height");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 379, "logitsUniPosStride * (uint32_t)sizeof(float) == layerHeight * logitsUniPosBuf->rowBytes");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 522, "outBoxInd < maxOutBoxes");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 390, "globalDefaultBoxInd < defaultBoxWidthsHeightsLen");
}

{
  __assert_rtn("acDetBboxCoderDecodeAllFloat", "acdetbboxcoder.cpp", 354, "config.posChannelCounts[layerInd] > 0");
}

void bmMunkresGetTempBuffers()
{
  __assert_rtn("bmMunkresGetTempBuffers", "bmmunkres.cpp", 376, "tempBuffers");
}

{
  __assert_rtn("bmMunkresGetTempBuffers", "bmmunkres.cpp", 375, "numTempBytes >= bs.totalBytes()");
}

void bmMunkres()
{
  __assert_rtn("bmMunkres", "bmmunkres.cpp", 523, "xi != 0");
}

{
  __assert_rtn("bmMunkres", "bmmunkres.cpp", 396, "maxMatches >= size");
}

{
  __assert_rtn("bmMunkres", "bmmunkres.cpp", 395, "size > 0");
}

void bmMunkresSubtractMinPerRow()
{
  __assert_rtn("bmMunkresSubtractMinPerRow", "bmmunkres.cpp", 80, "rowMin >= 0");
}

{
  __assert_rtn("bmMunkresSubtractMinPerRow", "bmmunkres.cpp", 81, "minCol < costBuf.height");
}

void bmMunkresSubtractMinPerCol()
{
  __assert_rtn("bmMunkresSubtractMinPerCol", "bmmunkres.cpp", 57, "colMin >= 0");
}

{
  __assert_rtn("bmMunkresSubtractMinPerCol", "bmmunkres.cpp", 58, "minRow < costBuf.width");
}

void bmMunkresMaxAssignments()
{
  __assert_rtn("bmMunkresMaxAssignments", "bmmunkres.cpp", 128, "A.pixelFormat == kBmBufferPixelFormatType_Float");
}

{
  __assert_rtn("bmMunkresMaxAssignments", "bmmunkres.cpp", 165, "0 <= aCol[r]");
}

{
  __assert_rtn("bmBufferPixelAtUInt8", "bmbufferprivate.h", 56, "x < buf.width && y < buf.height");
}

{
  __assert_rtn("bmMunkresMaxAssignmentsGetTempBuffers", "bmmunkres.cpp", 107, "numTempBytes >= bs.totalBytes()");
}

{
  __assert_rtn("bmMunkresMaxAssignments", "bmmunkres.cpp", 141, "cols > 0");
}

{
  __assert_rtn("bmMunkresMaxAssignments", "bmmunkres.cpp", 140, "rows > 0");
}

{
  __assert_rtn("bmMunkresMaxAssignments", "bmmunkres.cpp", 127, "temp");
}

void bmMunkresUpdateCost()
{
  __assert_rtn("bmMunkresUpdateCost", "bmmunkres.cpp", 332, "colLineFlags != nullptr");
}

{
  __assert_rtn("bmMunkresUpdateCost", "bmmunkres.cpp", 331, "rowLineFlags != nullptr");
}

void bmMunkresExtended()
{
  __assert_rtn("bmMunkresExtended", "bmmunkres.cpp", 532, "maxMatches >= size");
}

{
  __assert_rtn("bmMunkresExtended", "bmmunkres.cpp", 531, "size > 0");
}

void TtDetNode::postProcess()
{
  __assert_rtn("ttDetCategoryToIsp", "ttdetnode.cpp", 43, "cat < kTtDetCategoryMax");
}

{
  __assert_rtn("ttDetCategoryToIsp", "ttdetnode.cpp", 42, "cat != kTtDetCategory_Background");
}

void ttAssocCore()
{
  __assert_rtn("ttAssocCore", "ttassoc.cpp", 167, "ti < numTrkObjects");
}

{
  __assert_rtn("ttAssocCore", "ttassoc.cpp", 122, "unmatchedDetObjectCount < unmatchedDetObjectsLen");
}

{
  __assert_rtn("ttAssocCore", "ttassoc.cpp", 151, "unmatchedDetObjectCount < unmatchedDetObjectsLen");
}

void ttAssocTrkDetGetTempBuffers()
{
  __assert_rtn("ttAssocTrkDetGetTempBuffers", "ttassoc.cpp", 208, "tempBuffers");
}

{
  __assert_rtn("ttAssocTrkDetGetTempBuffers", "ttassoc.cpp", 207, "numTempBytes >= bs.totalBytes()");
}

void ttAssocTrkDet()
{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 408, "trkObjects[ti].killFlag == kTtAssocObjectKillFlag_Maybe");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 424, "newNumTrkObjects < maxTrkObjects");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 415, "numTrkObjects - trkKillCount + unmatchedDetObjectCount <= maxTrkObjects");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 407, "i == 0 || trkObjects[ti].age <= trkObjects[killTemp[i - 1].index].age");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 402, "ki >= n");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 321, "costMatSize * costMatSize <= maxTrkObjects * maxTrkObjects");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 274, "isDetRunningThisFrame || !numDetObjects");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 270, "tempBufBytes >= ttAssocTrkDetTempBytes(maxTrkObjects)");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 269, "numDetObjects <= maxTrkObjects");
}

{
  __assert_rtn("ttAssocTrkDet", "ttassoc.cpp", 268, "numTrkObjects <= maxTrkObjects");
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  MEMORY[0x282204398](a1, *(&a1 + 8));
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}