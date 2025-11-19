uint64_t ma::ObjectTracking::CalculateSimilarityWeights(void **this, int a2, int a3, uint64_t a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, float *a8)
{
  v12 = a4;
  bzero(this[29], 4 * a4 * a5);
  if (a5 < 1)
  {
    return 4294967246;
  }

  v29 = a8;
  v16 = 0;
  v17 = 0;
  v31 = v12;
  *v32 = a2;
  v30 = a3;
  v34 = 4 * v12;
  v18 = 0.0;
  v19 = 0.0;
  v33 = a5;
  do
  {
    v20 = v12;
    if (v12 >= 1)
    {
      v21 = v31;
      v22 = v17 + v30;
      v23 = v16;
      v24 = *v32;
      do
      {
        if ((v24 & 0x8000000000000000) == 0 && v24 < *(this + 49) && (v22 & 0x8000000000000000) == 0 && v22 < *(this + 50))
        {
          ColorIndex = ma::ObjectTracking::GetColorIndex(this, v24, v22, a6, a7);
          v26 = sqrtf(*(this[31] + ColorIndex) / fmaxf(*(this[32] + ColorIndex), 1.0e-10));
          *(this[29] + v23) = v26;
          v27 = *(this[26] + v23);
          v19 = v19 + (v26 * v27);
          v18 = v18 + v27;
        }

        ++v24;
        v23 += 4;
        --v21;
      }

      while (v21);
    }

    ++v17;
    v16 += v34;
    v12 = v20;
  }

  while (v17 != v33);
  if (v18 == 0.0)
  {
    return 4294967246;
  }

  result = 0;
  *v29 = v19 / v18;
  return result;
}

uint64_t ma::ObjectTracking::UpdateStoredBoundingBox(ma::ObjectTracking *this, CFArrayRef *a2, int a3, int a4)
{
  if (*(this + 192) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2[23], a3);
    ma::Object::SetBox(*ValueAtIndex, 0.0, 0.0, 0.0, 0.0);
    v7 = CFArrayGetValueAtIndex(a2[23], a3);
    v8 = 0;
    **v7 = -1;
  }

  else
  {
    v39.size.width = *(this + 49);
    v39.size.height = *(this + 50);
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v40 = CGRectIntersection(v39, *(this + 8));
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    v17 = a2[23];
    v16 = a2 + 23;
    v15 = v17;
    if (v17 && CFArrayGetCount(v15))
    {
      v18 = CFArrayGetValueAtIndex(*v16, a3);
      v19 = *(this + 49);
      v20 = *(this + 50);
      v21 = x / v19;
      v22 = y / v20;
      v23 = width / v19;
      v24 = height / v20;
      ma::Object::SetBox(*v18, v21, v22, v23, v24);
      *(*CFArrayGetValueAtIndex(*v16, a3) + 72) = 1;
      v25 = CFArrayGetValueAtIndex(*v16, a3);
      v8 = 0;
      **v25 = a4;
    }

    else
    {
      v26 = operator new(0x60uLL, MEMORY[0x1E69E5398]);
      if (v26)
      {
        v27 = v26;
        ma::Object::Object(v26);
        v28 = *(this + 49);
        v29 = *(this + 50);
        v30 = x / v28;
        v31 = y / v29;
        v32 = width / v28;
        v33 = height / v29;
        ma::Object::SetBox(v27, v30, v31, v32, v33);
        *(v27 + 72) = 1;
        *v27 = a4;
        if (*(this + 320) == 1)
        {
          v34 = *(v27 + 1);
          v35 = *(v27 + 2);
          v36 = *(v27 + 3);
          v37 = *(v27 + 4);
          printf("[%6.2f, %6.2f, %6.2f, %6.2f]\n", v34, v35, v36, v37);
        }

        v8 = Vector<ma::Object *>::PushBack(v16);
        if (v8)
        {
          MEMORY[0x1CCA95C50](v27, 0x1000C40E841BE39);
        }
      }

      else
      {
        return 4294967188;
      }
    }
  }

  return v8;
}

uint64_t ma::ObjectTracking::CheckUpdateTarget(ma::ObjectTracking *this, unsigned __int8 *a2, unsigned __int8 *a3, ma::Object *a4, int a5)
{
  v10 = *(a4 + 3);
  v60 = *(a4 + 2);
  v61 = v10;
  v11 = *(a4 + 5);
  v62 = *(a4 + 4);
  v63 = v11;
  v13 = *(a4 + 1);
  v58 = *a4;
  v12.i32[1] = DWORD1(v58);
  v59 = v13;
  v12.f32[0] = *(this + 49);
  ma::Object::ScaleBox(&v58, v12, *(this + 50));
  v64.origin.x = *(&v58 + 1);
  v14 = *(&v59 + 1);
  *&v64.origin.y = v59;
  v15 = *&v60;
  v66.origin.x = *(this + 1);
  v16 = *(this + 2);
  v18 = *(this + 3);
  v17 = *(this + 4);
  v56 = *&v59;
  v57 = *(&v58 + 1);
  v64.size.width = *(&v59 + 1);
  *&v64.size.height = v60;
  x = v66.origin.x;
  v66.origin.y = v16;
  v66.size.width = v18;
  v66.size.height = v17;
  v65 = CGRectIntersection(v64, v66);
  v19 = v65.origin.x;
  width = v65.size.width;
  v21 = v65.size.height * v65.size.width;
  v54 = v15;
  v55 = v14;
  v22 = v14 * v15;
  if (v14 * v15 < v18 * v17)
  {
    v22 = v18 * v17;
  }

  v23 = v22;
  v24 = v21 / v23;
  v25 = 0.7;
  if (!a5)
  {
    v25 = 1.0;
  }

  v52 = v25;
  if (*(this + 320) == 1)
  {
    height = v65.size.height;
    y = v65.origin.y;
    v51 = v19;
    printf("box0: (x = %2.1f, y = %2.1f, w = %2.1f, h = %2.1f)\n", v57, v56, v55, v54);
    printf("box1: (x = %2.1f, y = %2.1f, w = %2.1f, h = %2.1f)\n", x, v16, v18, v17);
    printf("box : (x = %2.1f, y = %2.1f, w = %2.1f, h = %2.1f)\n", v51, y, width, height);
    printf("overlap_area = %6.2f, max_area = %6.2f, weight = %6.2f\n", v21, v23, v24);
  }

  if (v24 >= 0.8)
  {
    if (*(this + 320))
    {
      puts("detector and tracker matched well --> update experts");
    }

    result = ma::ObjectTracking::UpdateExperts(this, *(this + 32), v21 / v23);
    if (!result)
    {
      return 0;
    }
  }

  else
  {
    if (*(this + 320))
    {
      puts("detector and tracker did not match well --> experts vote");
    }

    v27 = 0;
    v28 = 2147500000.0;
    while (1)
    {
      Count = *(this + 39);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
        v30 = Count;
      }

      else
      {
        v30 = 0;
      }

      if (v27 >= v30)
      {
        break;
      }

      v31 = *(this + 32);
      ValueAtIndex = CFArrayGetValueAtIndex(*(this + 39), v27);
      v33 = 0;
      v34 = 0.0;
      do
      {
        v35 = vabdq_f32(*(v31 + v33), *(*ValueAtIndex + v33));
        v34 = (((v34 + v35.f32[0]) + v35.f32[1]) + v35.f32[2]) + v35.f32[3];
        v33 += 16;
      }

      while (v33 != 0x2000);
      if (v28 >= v34)
      {
        v28 = v34;
      }

      ++v27;
    }

    ma::ObjectTracking::PrepareKernels(Count, v55, v54, *(this + 30));
    result = ma::ObjectTracking::EstimateDensity(this, v57, v56, v55, v54, a2, a3, *(this + 30), *(this + 32));
    if (!result)
    {
      v37 = 0;
      v38 = 2147500000.0;
      while (1)
      {
        v39 = *(this + 39);
        v40 = v39 ? CFArrayGetCount(v39) : 0;
        if (v37 >= v40)
        {
          break;
        }

        v41 = *(this + 32);
        v42 = CFArrayGetValueAtIndex(*(this + 39), v37);
        v43 = 0;
        v44 = 0.0;
        do
        {
          v45 = vabdq_f32(*(v41 + v43), *(*v42 + v43));
          v44 = (((v44 + v45.f32[0]) + v45.f32[1]) + v45.f32[2]) + v45.f32[3];
          v43 += 16;
        }

        while (v43 != 0x2000);
        if (v38 >= v44)
        {
          v38 = v44;
        }

        ++v37;
      }

      if (*(this + 320))
      {
        printf("derr = %6.2f, terr = %6.2f\n", v38, v28);
      }

      if ((v52 * v38) > v28)
      {
        return 0;
      }

      if (*(this + 320) == 1)
      {
        puts("after voting --> update target");
      }

      v46 = *(a4 + 1);
      v47 = *(a4 + 2);
      v48 = *(a4 + 3);
      *&v48 = v48;
      v49 = *(a4 + 4);
      result = ma::ObjectTracking::BuildTarget(this, v46, v47, *&v48, v49, a2, a3, 0);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ma::ObjectTracking::PrepareKernels(ma::ObjectTracking *this, signed int a2, signed int a3, float *a4)
{
  bzero(a4, 4 * a2 * a3);
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = vcvts_n_f32_s32(a3, 1uLL);
    v10 = vcvts_n_f32_s32(a2, 1uLL);
    v11 = (v9 / 3.0) * (v9 / 3.0);
    *v7.i32 = (v10 / 3.0) * (v10 / 3.0);
    v33 = vdupq_lane_s64(COERCE__INT64(a2), 0);
    v34 = vdupq_n_s64(a2 - 1);
    v12 = vdup_lane_s32(v7, 0);
    v13 = a4 + 1;
    v32 = vdupq_n_s64(2uLL);
    __asm { FMOV            V0.2D, #-0.5 }

    v31 = _Q0;
    do
    {
      if (a2 >= 1)
      {
        v19 = v8 + a3 * -0.5;
        *&v19 = v19;
        *&v19 = (*&v19 * *&v19) / v11;
        v20 = vdup_lane_s32(*&v19, 0);
        v21 = (a2 + 1) & 0xFFFFFFFE;
        v22 = v13;
        v23 = xmmword_1C9F609E0;
        v24 = 0x100000000;
        do
        {
          v37 = vmovn_s64(vcgeq_u64(v34, v23));
          v38 = v23;
          v25.i64[0] = v24.u32[0];
          v25.i64[1] = v24.u32[1];
          v26 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_u64(v25), v31, v33));
          __x = vmulq_f64(vcvtq_f64_f32(vadd_f32(v20, vdiv_f32(vmul_f32(v26, v26), v12))), v31);
          v36 = exp(__x.f64[1]);
          v27 = exp(__x.f64[0]);
          if (v37.i8[0])
          {
            v28 = v27;
            *(v22 - 1) = v28;
          }

          if (v37.i8[4])
          {
            v29 = v36;
            *v22 = v29;
          }

          v23 = vaddq_s64(v38, v32);
          v24 = vadd_s32(v24, 0x200000002);
          v22 += 2;
          v21 -= 2;
        }

        while (v21);
      }

      ++v8;
      v13 += a2;
    }

    while (v8 != a3);
  }

  return 0;
}

uint64_t ma::ObjectTracking::EstimateDensity(ma::ObjectTracking *this, int a2, int a3, int a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, float *a8, float *a9)
{
  bzero(a9, 0x2000uLL);
  if (a5 < 1)
  {
    return 4294967246;
  }

  v18 = 0;
  v29 = a4;
  *v30 = a2;
  v28 = a3;
  *&v17 = 0;
  v31 = a5;
  v32 = 4 * a4;
  v33 = a4;
  do
  {
    if (a4 >= 1)
    {
      v19 = v29;
      v20 = v18 + v28;
      v21 = *v30;
      v22 = a8;
      do
      {
        if ((v21 & 0x8000000000000000) == 0 && v21 < *(this + 49) && (v20 & 0x8000000000000000) == 0 && v20 < *(this + 50))
        {
          v34 = v17;
          ColorIndex = ma::ObjectTracking::GetColorIndex(this, v21, v20, a6, a7);
          a9[ColorIndex] = *v22 + a9[ColorIndex];
          v24 = v34;
          *&v24 = *&v34 + *v22;
          v17 = v24;
        }

        ++v22;
        ++v21;
        --v19;
      }

      while (v19);
    }

    ++v18;
    a8 = (a8 + v32);
    a4 = v33;
  }

  while (v18 != v31);
  if (*&v17 == 0.0)
  {
    return 4294967246;
  }

  v26 = 0;
  v27 = vdupq_lane_s32(*&v17, 0);
  do
  {
    *&a9[v26] = vdivq_f32(*&a9[v26], v27);
    v26 += 4;
  }

  while (v26 != 2048);
  return 0;
}

const __CFArray *ma::ObjectTracking::UpdateExpertAge(ma::ObjectTracking *this)
{
  for (i = 0; ; ++i)
  {
    result = *(this + 39);
    if (result)
    {
      result = CFArrayGetCount(result);
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    if (i >= v4)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(this + 39), i);
    ++*(*ValueAtIndex + 8196);
    v6 = (*(*CFArrayGetValueAtIndex(*(this + 39), i) + 8196) + 1);
    v7 = CFArrayGetValueAtIndex(*(this + 39), i);
    *(*v7 + 0x2000) = *(*v7 + 0x2000) / v6;
  }

  return result;
}

uint64_t ma::ObjectTracking::GetColorIndex(ma::ObjectTracking *this, int a2, unsigned int a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v5 = &a5[*(this + 34) * ((a3 + (a3 >> 31)) >> 1) + (a2 & 0xFFFFFFFFFFFFFFFELL)];
  v6 = vcvtd_n_f64_u32(8 * v5[1], 8uLL);
  v7 = v6;
  if (v6 >= 7)
  {
    v7 = 7;
  }

  LOBYTE(v6) = *v5;
  BYTE4(v6) = a4[*(this + 33) * a3 + a2];
  v8 = vshl_u32(vand_s8(*&v6, 0xFF000000FFLL), 0x500000003);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  v10 = vshl_u32(vmax_s32(vmin_s32(vmovn_s64(vcvtq_s64_f64(vmulq_f64(vcvtq_f64_u64(v9), vdupq_n_s64(0x3F70000000000000uLL)))), 0x1F00000007), 0), 0x600000003);
  return vadd_s32(v10, vdup_lane_s32(v10, 1)).u32[0] | v7 & ~(v7 >> 31);
}

void sub_1C9E524A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t VCPProtoMovieApplauseResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        LODWORD(v19[0]) = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong((a1 + 16), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SocType()
{
  if (SocType::once != -1)
  {
    SocType_cold_1();
  }

  return SocType::soc_type;
}

void __SocType_block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], "IODeviceTree:/arm-io");
  if (!v0)
  {
    return;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"compatible", 0, 0);
  if (CFProperty)
  {
    v3 = CFProperty;
    v4 = CFGetTypeID(CFProperty);
    if (v4 != CFDataGetTypeID())
    {
LABEL_189:
      CFRelease(v3);
      goto LABEL_190;
    }

    Length = CFDataGetLength(v3);
    BytePtr = CFDataGetBytePtr(v3);
    v7 = BytePtr;
    if (Length < 13)
    {
      if (Length >= 11)
      {
        if (*BytePtr != 97)
        {
          v9 = 1;
LABEL_155:
          if (Length >= 0xC && (v9 & 1) == 0 && BytePtr[1] == 114)
          {
            if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 49 && BytePtr[10] == 52 && BytePtr[11] == 48)
            {
              v8 = 257;
              goto LABEL_188;
            }

            if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 49 && BytePtr[10] == 53 && BytePtr[11] == 48)
            {
              v8 = 258;
              goto LABEL_188;
            }
          }

          goto LABEL_180;
        }

LABEL_46:
        if (BytePtr[1] == 114)
        {
          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 55 && BytePtr[9] == 48 && BytePtr[10] == 48)
          {
            v8 = 247;
            goto LABEL_188;
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 115 && BytePtr[8] == 56 && BytePtr[9] == 48 && BytePtr[10] == 48)
          {
            v8 = 248;
            goto LABEL_188;
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 48 && BytePtr[10] == 49 && BytePtr[11] - 48 < 3)
          {
            v8 = 249;
            goto LABEL_188;
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 48 && BytePtr[10] == 49 && BytePtr[11] == 53)
          {
            v8 = 250;
            goto LABEL_188;
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 48 && BytePtr[10] == 50)
          {
            v10 = BytePtr[11];
            v8 = 251;
            if (v10 == 48 || v10 == 55)
            {
              goto LABEL_188;
            }
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 48 && BytePtr[10] == 51 && BytePtr[11] == 48)
          {
            v8 = 252;
            goto LABEL_188;
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 49 && BytePtr[10] == 48 && (BytePtr[11] | 2) == 0x33)
          {
            v8 = 253;
            goto LABEL_188;
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 49 && BytePtr[10] == 49 && (BytePtr[11] | 2) == 0x32)
          {
            v8 = 254;
            goto LABEL_188;
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 49 && BytePtr[10] == 50 && (BytePtr[11] | 2) == 0x32)
          {
            v8 = 255;
            goto LABEL_188;
          }

          if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 116 && BytePtr[8] == 56 && BytePtr[9] == 49 && BytePtr[10] == 51 && (BytePtr[11] | 2) == 0x32)
          {
LABEL_187:
            v8 = 256;
            goto LABEL_188;
          }
        }

        v9 = 0;
        goto LABEL_155;
      }
    }

    else if (*BytePtr == 97)
    {
      if (BytePtr[1] == 114)
      {
        if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 115 && BytePtr[8] == 53 && BytePtr[9] == 108 && BytePtr[10] == 56 && BytePtr[11] == 57 && BytePtr[12] == 52)
        {
          v8 = 244;
LABEL_188:
          SocType::soc_type = v8;
          goto LABEL_189;
        }

        if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 115 && BytePtr[8] == 53 && BytePtr[9] == 108 && BytePtr[10] == 56 && BytePtr[11] == 57 && BytePtr[12] == 53)
        {
          v8 = 245;
          goto LABEL_188;
        }

        if (BytePtr[2] == 109 && BytePtr[3] == 45 && BytePtr[4] == 105 && BytePtr[5] == 111 && BytePtr[6] == 44 && BytePtr[7] == 115 && BytePtr[8] == 53 && BytePtr[9] == 108 && BytePtr[10] == 56 && BytePtr[11] == 57 && BytePtr[12] == 54)
        {
          v8 = 246;
          goto LABEL_188;
        }
      }

      goto LABEL_46;
    }

LABEL_180:
    if (DeviceHasANE::onceToken != -1)
    {
      __SocType_block_invoke_cold_1();
    }

    if (DeviceHasANE::supportsANE != 1)
    {
      goto LABEL_189;
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Assuming H16, armio data: %s", &v15, 0xCu);
      }
    }

    goto LABEL_187;
  }

LABEL_190:
  IOObjectRelease(v1);
  if (SocType::soc_type == 240 && MediaAnalysisLogLevel() >= 4)
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unknown device type; this may adversely impact capabilities & performance", &v15, 2u);
    }
  }
}

uint64_t DeviceHasANE()
{
  if (DeviceHasANE::onceToken != -1)
  {
    __SocType_block_invoke_cold_1();
  }

  return DeviceHasANE::supportsANE;
}

uint64_t __DeviceHasANE_block_invoke()
{
  DeviceHasANE::supportsANE = espresso_create_context() != 0;

  return espresso_context_destroy();
}

BOOL DeviceGeqD5x()
{
  if (SocType::once != -1)
  {
    SocType_cold_1();
  }

  return SocType::soc_type == 253 || SocType::soc_type == 254 || SocType::soc_type == 255 || SocType::soc_type == 256 || SocType::soc_type == 257 || SocType::soc_type == 258;
}

BOOL DeviceGeqD7x()
{
  if (SocType::once != -1)
  {
    SocType_cold_1();
  }

  return SocType::soc_type == 255 || SocType::soc_type == 256 || SocType::soc_type == 257 || SocType::soc_type == 258;
}

uint64_t DeviceWithGreymatterSupport()
{
  if (DeviceWithGreymatterSupport::once != -1)
  {
    DeviceWithGreymatterSupport_cold_1();
  }

  return DeviceWithGreymatterSupport::hasSupport;
}

uint64_t __DeviceWithGreymatterSupport_block_invoke()
{
  result = MGGetBoolAnswer();
  DeviceWithGreymatterSupport::hasSupport = result;
  return result;
}

uint64_t ma::MotionSearch::MotionSearch(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

void ma::MotionSearch::~MotionSearch(ma::MotionSearch *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x1CCA95C10](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x1CCA95C10](v3, 0x1000C8052888210);
  }

  CF<__CVBuffer *>::~CF(this + 6);
  CF<__CVBuffer *>::~CF(this + 3);
}

uint64_t ma::MotionSearch::Resize(ma::MotionSearch *this, unint64_t a2, unint64_t a3)
{
  v3 = ((((a2 >> 1) + 15) >> 4) * ((a3 >> 1) + 15)) >> 4;
  if (v3 <= *this)
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5)
  {
    MEMORY[0x1CCA95C10](v5, 0x1000C8052888210);
  }

  v6 = *(this + 2);
  if (v6)
  {
    MEMORY[0x1CCA95C10](v6, 0x1000C8052888210);
  }

  *this = 0;
  v7 = MEMORY[0x1E69E5398];
  v8 = operator new[](4 * v3, MEMORY[0x1E69E5398]);
  *(this + 1) = v8;
  v9 = operator new[](4 * v3, v7);
  *(this + 2) = v9;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 4294967188;
  }

  result = 0;
  *this = v3;
  return result;
}

uint64_t ma::MotionSearch::Downscale(ma::MotionSearch *this, int a2, __CVBuffer *a3, __CVBuffer **a4, CVPixelBufferRef pixelBuffer, __CVBuffer **a6)
{
  *a6 = 0;
  *a4 = 0;
  v11 = a2;
  v12 = vcvtps_s32_f32(CVPixelBufferGetWidth(pixelBuffer) / a2) + 1;
  v13 = vcvtps_s32_f32(CVPixelBufferGetHeight(pixelBuffer) / v11) + 1;
  v20 = 0;
  cf = 0;
  Scaler::Scale((this + 24), a3, &cf, v12 & 0xFFFFFFFE, v13 & 0xFFFFFFFE, 875704438);
  v15 = v14;
  if (!v14)
  {
    Scaler::Scale((this + 24), pixelBuffer, &v20, v12 & 0xFFFFFFFE, v13 & 0xFFFFFFFE, 875704438);
    v15 = v16;
    if (!v16)
    {
      if (((v13 | v12) & 0xE) == 0 || (v15 = EdgeExtendLuma420(cf), !v15) && (v15 = EdgeExtendLuma420(v20), !v15))
      {
        v17 = cf;
        if (cf)
        {
          v17 = CFRetain(cf);
        }

        *a4 = v17;
        v18 = v20;
        if (v20)
        {
          v18 = CFRetain(v20);
        }

        v15 = 0;
        *a6 = v18;
      }
    }
  }

  CF<__CVBuffer *>::~CF(&v20);
  CF<__CVBuffer *>::~CF(&cf);
  return v15;
}

void sub_1C9E54DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CF<__CVBuffer *>::~CF(&a9);
  CF<__CVBuffer *>::~CF(&a10);
  _Unwind_Resume(a1);
}

void ma::MotionSearch::BlockSearch(ma::MotionSearch *this, int a2, int a3, int a4, int a5, int a6, uint64_t a7, const unsigned __int8 *a8, uint64_t a9, const unsigned __int8 *a10, MotionVector *a11, int a12)
{
  if (a4 <= a5)
  {
    v13 = 0;
    v12 = 0;
    v16 = a9;
    v17 = &a8[a4 * a7];
    v27 = a2;
    v18 = a3 + 1;
    v19 = 0x7FFFFFFF;
    v28 = a2;
    v29 = a3;
    do
    {
      if (a4 >= 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = -a4;
      }

      if (a2 <= a3)
      {
        v21 = v27;
        v31 = off_1F496A988[a12];
        v22 = a2;
        v33 = a4;
        v32 = v20;
        do
        {
          v23 = (v31)(a7, &v17[v21], v16, a10);
          v16 = a9;
          a4 = v33;
          if (v22 >= 0)
          {
            v24 = v22;
          }

          else
          {
            v24 = -v22;
          }

          v25 = v23 + (v24 + v32) * a6;
          if (v25 < v19)
          {
            v12 = v21;
            v13 = v33;
            v19 = v25;
          }

          ++v21;
          ++v22;
        }

        while (v18 != v22);
      }

      v17 += a7;
      a3 = v29;
      v26 = a4++ == a5;
      a2 = v28;
    }

    while (!v26);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a11 = v12;
  *(a11 + 1) = v13;
}

uint64_t ma::SAD16x16(ma *this, uint8x8_t *a2, const unsigned __int8 *a3, uint8x8_t *a4, const unsigned __int8 *a5)
{
  v5 = 0;
  v6 = *(this + a2);
  v7 = *&a3[a4];
  v8 = vabdl_u8(*a2, *a4);
  v9 = vabdl_u8(*v6.i8, *v7.i8);
  v10 = vabdl_high_u8(*a2->i8, *a4->i8);
  v11 = vabdl_high_u8(v6, v7);
  do
  {
    v12 = *&a2->i8[3 * this];
    v13 = *&a4->i8[3 * a3];
    a2 = (a2 + 2 * this);
    a4 = (a4 + 2 * a3);
    v8 = vabal_u8(v8, *a2, *a4);
    v9 = vabal_u8(v9, *v12.i8, *v13.i8);
    v10 = vabal_high_u8(v10, *a2->i8, *a4->i8);
    v11 = vabal_high_u8(v11, v12, v13);
    v5 += 2;
  }

  while (v5 < 0xE);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(v10, v11), vaddq_s16(v9, v8)));
}

uint64_t ma::SAD8x8(ma *this, uint8x8_t *a2, const unsigned __int8 *a3, uint8x8_t *a4, const unsigned __int8 *a5)
{
  v5 = 0;
  v6 = vabal_u8(vabdl_u8(*(this + a2), *&a3[a4]), *a2, *a4);
  do
  {
    v7 = *(a2 + 3 * this);
    a2 = (a2 + 2 * this);
    v8 = *(a4 + 3 * a3);
    a4 = (a4 + 2 * a3);
    v6 = vabal_u8(vabal_u8(v6, *a2, *a4), v7, v8);
    v5 += 2;
  }

  while (v5 < 6);
  return vaddlvq_u16(v6);
}

uint64_t ma::MotionSearch::InitialSearch(ma::MotionSearch *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = pixelBuffer;
  v34 = 1;
  if (pixelBuffer)
  {
    v5 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    v32 = v5;
    if (!v5 || (v6 = v5, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, *pixelBuffera = pixelBuffer, *&pixelBuffera[8] = 1024, *&pixelBuffera[10] = v6, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v6 = v32) == 0))
    {
      *buf = 0;
      *&pixelBuffera[4] = a3;
      *&pixelBuffera[12] = 1;
      if (a3)
      {
        v6 = CVPixelBufferLockBaseAddress(a3, 1uLL);
        *buf = v6;
        if (!v6 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v37 = 134218240, v38 = *&pixelBuffera[4], v39 = 1024, v40 = v6, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v37, 0x12u), v6 = *buf, !*buf))
        {
          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
          v28 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
          v8 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
          if (Height >= 1)
          {
            v9 = v8;
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v27 = Width - 16;
            do
            {
              if (v10 <= -16)
              {
                v13 = -16;
              }

              else
              {
                v13 = v10;
              }

              v14 = Height - 16 + v10;
              if (v14 >= 16)
              {
                v15 = 16;
              }

              else
              {
                v15 = v14;
              }

              v26 = v11;
              v16 = v11 + 16;
              if (Width >= 1)
              {
                v17 = 0;
                v18 = 0;
                v19 = 4 * v12;
                do
                {
                  v20 = v18 + 16;
                  if (v18 + 16 < Width && v16 < Height)
                  {
                    if (v17 <= -32)
                    {
                      v22 = -32;
                    }

                    else
                    {
                      v22 = v17;
                    }

                    if (v27 + v17 >= 32)
                    {
                      v23 = 32;
                    }

                    else
                    {
                      v23 = v27 + v17;
                    }

                    ma::MotionSearch::BlockSearch(v8, v22, v23, v13, v15, 2, BytesPerRowOfPlane, &BaseAddressOfPlane[v18], v28, v9 + v18, (*(this + 1) + v19), 0);
                  }

                  else
                  {
                    *(*(this + 1) + v19) = 0;
                  }

                  v19 += 4;
                  ++v12;
                  v17 -= 16;
                  v18 = v20;
                }

                while (v20 < Width);
              }

              BaseAddressOfPlane += 16 * BytesPerRowOfPlane;
              v9 = (v9 + 16 * v28);
              v10 = -16 - v26;
              v11 = v16;
            }

            while (v16 < Height);
          }

          v6 = CVPixelBufferLock::Unlock(&v32);
          if (!v6)
          {
            v6 = CVPixelBufferLock::Unlock(buf);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v6 = 4294967246;
        *buf = -50;
      }

      if (*&pixelBuffera[4] && !*buf && CVPixelBufferUnlockBaseAddress(*&pixelBuffera[4], *&pixelBuffera[12]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }

      if (v33 && !v32 && CVPixelBufferUnlockBaseAddress(v33, v34) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return 4294967246;
  }

  return v6;
}

void sub_1C9E55450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  CVPixelBufferLock::~CVPixelBufferLock(va1);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t ma::MotionSearch::InitialSearch(ma::MotionSearch *this, int a2, __CVBuffer *a3, CVPixelBufferRef pixelBuffer)
{
  v7 = 0;
  v8 = 0;
  v5 = ma::MotionSearch::Downscale(this, 4, a3, &v8, pixelBuffer, &v7);
  if (!v5)
  {
    v5 = ma::MotionSearch::InitialSearch(this, v8, v7);
  }

  CF<__CVBuffer *>::~CF(&v7);
  CF<__CVBuffer *>::~CF(&v8);
  return v5;
}

void sub_1C9E5551C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CF<__CVBuffer *>::~CF(&a9);
  CF<__CVBuffer *>::~CF(&a10);
  _Unwind_Resume(a1);
}

uint64_t ma::MotionSearch::RefinementSearch(ma::MotionSearch *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, MotionVector *a4, MotionVector *a5, int a6)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = *(&ma::MotionSearch::RefinementSearch(__CVBuffer *,__CVBuffer *,ma::MotionVector *,ma::MotionVector *,int)::kBlockSize + a6);
  v59 = ma::MotionSearch::RefinementSearch(__CVBuffer *,__CVBuffer *,ma::MotionVector *,ma::MotionVector *,int)::kSearchRangeVertical[a6];
  v62 = 0;
  pixelBuffera = pixelBuffer;
  unlockFlags = 1;
  if (pixelBuffer)
  {
    v11 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    v62 = v11;
    if (!v11 || (v12 = v11, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, *v66 = pixelBuffer, *&v66[8] = 1024, *&v66[10] = v12, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v12 = v62) == 0))
    {
      *buf = 0;
      *&v66[4] = a3;
      *&v66[12] = 1;
      if (a3)
      {
        v12 = CVPixelBufferLockBaseAddress(a3, 1uLL);
        *buf = v12;
        if (!v12 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v67 = 134218240, v68 = *&v66[4], v69 = 1024, v70 = v12, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v67, 0x12u), v12 = *buf, !*buf))
        {
          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
          v55 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
          v15 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
          v61 = v15;
          v48 = a4;
          v49 = a5;
          v52 = 2 - a6;
          v16 = Width / (2 - a6);
          v17 = v16 + 15;
          v31 = v16 < -15;
          v18 = v16 + 30;
          if (!v31)
          {
            v18 = v17;
          }

          v19 = Height;
          v51 = Width;
          if (a6 == 1)
          {
            v20 = Width + 15;
            if (Width < -15)
            {
              v20 = Width + 30;
            }

            v51 = v20 & 0xFFFFFFF0;
            v21 = Height + 15;
            if (Height < -15)
            {
              v21 = Height + 30;
            }

            v19 = v21 & 0xFFFFFFF0;
          }

          if (v19 >= 1)
          {
            v22 = 0;
            v23 = 0;
            v47 = v18 >> 4;
            v58 = 2 * v6;
            v24 = Width;
            v25 = v51;
            v46 = Width - v6;
            v50 = v19;
            do
            {
              v26 = (v23 + v6);
              if (v51 >= 1)
              {
                v27 = 0;
                v57 = v49 + 4 * v47 * (v23 / v58);
                v28 = (v48 + 4 * v22);
                v29 = v46;
                v56 = v23 + v6;
                do
                {
                  v30 = v27 + v6;
                  v31 = v27 + v6 < v24 && v26 < Height;
                  if (v31)
                  {
                    v32 = &v57[4 * (v27 / v58)];
                    v33 = Height;
                    v34 = *v32 * v52;
                    v35 = *(v32 + 1) * v52;
                    v36 = v27 + v34;
                    v37 = v23;
                    v38 = v23 + v35;
                    if (v59 >= v36)
                    {
                      v39 = v27 + v34;
                    }

                    else
                    {
                      v39 = v59;
                    }

                    v40 = -v39;
                    if (v59 >= v38)
                    {
                      v41 = v23 + v35;
                    }

                    else
                    {
                      v41 = v59;
                    }

                    if (v29 - v34 >= v59)
                    {
                      v42 = v59;
                    }

                    else
                    {
                      v42 = v29 - v34;
                    }

                    v43 = v33;
                    if (v33 - v6 - v38 >= v59)
                    {
                      v44 = v59;
                    }

                    else
                    {
                      v44 = v33 - v6 - v38;
                    }

                    ma::MotionSearch::BlockSearch(v15, v40, v42, -v41, v44, 2, BytesPerRowOfPlane, &BaseAddressOfPlane[BytesPerRowOfPlane * v38 + v36], v55, v61 + v27, v28, a6);
                    *v28 = ((*v28 & 0xFFFF0000) + (v34 | (v35 << 16))) & 0xFFFF0000 | (*v28 + v34);
                    Height = v43;
                    v23 = v37;
                    v25 = v51;
                    v26 = v56;
                  }

                  else
                  {
                    *v28 = 0;
                  }

                  v29 -= v6;
                  v28 = (v28 + 4);
                  ++v22;
                  v27 = v30;
                }

                while (v30 < v25);
              }

              v61 = (v61 + v55 * v6);
              v23 = v26;
            }

            while (v26 < v50);
          }

          v12 = CVPixelBufferLock::Unlock(&v62);
          if (!v12)
          {
            v12 = CVPixelBufferLock::Unlock(buf);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v12 = 4294967246;
        *buf = -50;
      }

      if (*&v66[4] && !*buf && CVPixelBufferUnlockBaseAddress(*&v66[4], *&v66[12]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }

      if (pixelBuffera && !v62 && CVPixelBufferUnlockBaseAddress(pixelBuffera, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return 4294967246;
  }

  return v12;
}

void sub_1C9E55A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  CVPixelBufferLock::~CVPixelBufferLock((v30 - 160));
  CVPixelBufferLock::~CVPixelBufferLock(&a30);
  _Unwind_Resume(a1);
}

uint64_t ma::MotionSearch::RefinementSearch(ma::MotionSearch *this, int a2, __CVBuffer *a3, CVPixelBufferRef pixelBuffer, MotionVector *a5, MotionVector *a6, int a7)
{
  v13 = 0;
  v14 = 0;
  v10 = ma::MotionSearch::Downscale(this, a2, a3, &v14, pixelBuffer, &v13);
  v11 = v10;
  if (!v10)
  {
    v11 = ma::MotionSearch::RefinementSearch(v10, v14, v13, a5, a6, a7);
  }

  CF<__CVBuffer *>::~CF(&v13);
  CF<__CVBuffer *>::~CF(&v14);
  return v11;
}

void sub_1C9E55B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CF<__CVBuffer *>::~CF(&a9);
  CF<__CVBuffer *>::~CF(&a10);
  _Unwind_Resume(a1);
}

uint64_t ma::MotionSearch::Search(MotionVector **this, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, MotionVector *a4, MotionVector *a5)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (CVPixelBufferGetWidth(a2) != Width || CVPixelBufferGetHeight(a2) != Height)
  {
    return 4294967246;
  }

  result = ma::MotionSearch::Resize(this, Width, Height);
  if (!result)
  {
    result = ma::MotionSearch::InitialSearch(this, v13, a2, pixelBuffer);
    if (!result)
    {
      result = ma::MotionSearch::RefinementSearch(this, 2, a2, pixelBuffer, this[2], this[1], 0);
      if (!result)
      {
        v15 = this[1];
        v14 = this[2];
        this[1] = v14;
        this[2] = v15;
        result = ma::MotionSearch::RefinementSearch(result, a2, pixelBuffer, a4, v14, 0);
        if (!result)
        {

          return ma::MotionSearch::RefinementSearch(result, a2, pixelBuffer, a5, a4, 1);
        }
      }
    }
  }

  return result;
}

void sub_1C9E55FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPPriorityAnalysis;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_1C9E57AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPVideoFaceMeshAnalyzer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9E57F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  CVPixelBufferLock::~CVPixelBufferLock(va1);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void sub_1C9E58CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void sub_1C9E58F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPImageManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9E59368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E59960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CF<__CVBuffer *>::~CF(va);

  _Unwind_Resume(a1);
}

uint64_t CMPhotoOrientationToCGImageOrientation(uint64_t result)
{
  if ((result - 2) >= 7)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void sub_1C9E5A078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9E5D050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void sub_1C9E5D71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPVoiceDetectorV2;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t VCPProtoImageJunkResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v18 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t VCPProtoMovieCameraMotionResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v28 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong((a1 + 16), v28);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_48;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_48:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E635F4(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1C9E6559C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  CVPixelBufferLock::~CVPixelBufferLock(va1);

  CF<__CVBuffer *>::~CF(va2);
  _Unwind_Resume(a1);
}

void sub_1C9E66E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, const void *a48, const void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, const void *a56)
{
  _Block_object_dispose(&a30, 8);

  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);

  _Block_object_dispose((v59 - 256), 8);
  CF<__CVBuffer *>::~CF(&a48);
  CF<__CVBuffer *>::~CF(&a49);

  CF<__CVBuffer *>::~CF(&a56);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFTypeRef __copy_helper_block_ea8_56c22_ZTS2CFIP10__CVBufferE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  *(a1 + 56) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_1C9E68198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPVideoAnalysisPipelineFrameResource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9E687E8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t VCPProtoMovieLoudnessResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25[0] & 0x7F) << v5;
        if ((v25[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v25[0] = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v20 = v25[0];
        v21 = 8;
LABEL_35:
        *(a1 + v21) = v20;
        goto LABEL_36;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong((a1 + 24), v14);
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v23 = [a2 position];
      if (v23 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v25[0] = 0;
    v17 = [a2 position] + 8;
    if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
    {
      v22 = [a2 data];
      [v22 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v20 = v25[0];
    v21 = 16;
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E6B374(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1C9E6B550(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_1C9E6B738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPPreAnalysisImageEntry;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9E6BA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CF<__CVBuffer *>::~CF(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C9E6BC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  CF<__CVBuffer *>::~CF(&a9);

  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void sub_1C9E6BEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPMABaseTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9E6C618(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

ma::MotionFieldAnalysis *ma::MotionFieldAnalysis::MotionFieldAnalysis(ma::MotionFieldAnalysis *this)
{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 11) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 28) = 0;
  *(this + 27) = this + 224;
  *(this + 6) = _D0;
  *(this + 29) = 0;
  *(this + 14) = 0;
  *(this + 59) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  ma::ObjectDetection::ObjectDetection((this + 240));
  ma::ObjectTracking::ObjectTracking((this + 304));
  *(this + 81) = 0;
  *(this + 632) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 26) = 0;
  return this;
}

void sub_1C9E6CA20(_Unwind_Exception *a1)
{
  ma::ObjectDetection::~ObjectDetection((v1 + 240));
  std::__tree<unsigned long>::destroy(v2, *v3);
  _Unwind_Resume(a1);
}

void ma::MotionFieldAnalysis::~MotionFieldAnalysis(ma::MotionFieldAnalysis *this)
{
  ma::MotionFieldAnalysis::Destroy(this);
  ma::ObjectTracking::~ObjectTracking((this + 304));
  ma::ObjectDetection::~ObjectDetection((this + 240));
  std::__tree<unsigned long>::destroy(this + 216, *(this + 28));
}

uint64_t ma::MotionFieldAnalysis::Destroy(ma::MotionFieldAnalysis *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x1CCA95C10](v2, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x1CCA95C10](v4, 0x1000C8052888210);
  }

  v5 = 0;
  v6 = this + 80;
  v7 = this + 96;
  v8 = this + 112;
  v9 = this + 128;
  v10 = this + 144;
  v11 = this + 168;
  v12 = this + 184;
  v13 = this + 200;
  *v3 = 0;
  v3[1] = 0;
  v14 = 1;
  do
  {
    v15 = v14;
    v16 = *&v6[8 * v5];
    if (v16)
    {
      MEMORY[0x1CCA95C10](v16, 0x1000C8052888210);
    }

    v17 = *&v7[8 * v5];
    if (v17)
    {
      MEMORY[0x1CCA95C10](v17, 0x1000C8077774924);
    }

    v18 = *&v8[8 * v5];
    if (v18)
    {
      MEMORY[0x1CCA95C10](v18, 0x1000C8052888210);
    }

    v19 = *&v9[8 * v5];
    if (v19)
    {
      MEMORY[0x1CCA95C10](v19, 0x1000C80BDFB0063);
    }

    v20 = *&v10[8 * v5];
    if (v20)
    {
      MEMORY[0x1CCA95C10](v20, 0x1000C8052888210);
    }

    v21 = *&v11[8 * v5];
    if (v21)
    {
      MEMORY[0x1CCA95C10](v21, 0x1000C8052888210);
    }

    v22 = *&v12[8 * v5];
    if (v22)
    {
      MEMORY[0x1CCA95C10](v22, 0x1000C8052888210);
    }

    result = *&v13[8 * v5];
    if (result)
    {
      result = MEMORY[0x1CCA95C10](result, 0x1000C8052888210);
    }

    v14 = 0;
    *&v6[8 * v5] = 0;
    *&v7[8 * v5] = 0;
    *&v8[8 * v5] = 0;
    *&v9[8 * v5] = 0;
    *&v10[8 * v5] = 0;
    *&v11[8 * v5] = 0;
    *&v12[8 * v5] = 0;
    *&v13[8 * v5] = 0;
    v5 = 1;
  }

  while ((v15 & 1) != 0);
  return result;
}

uint64_t ma::MotionFieldAnalysis::Initialize(uint32x2_t *this, __int32 a2, __int32 a3, ma::EncodeStats *a4, signed __int8 *a5, float a6, float a7, __int8 a8, int a9)
{
  v10 = a3 * a2;
  if (this[4].i32[1] * this[4].i32[0] == a3 * a2)
  {
    result = 0;
    this[4].i32[0] = a2;
    this[4].i32[1] = a3;
    *this = a4;
    this[3] = a5;
    *this[6].i32 = a6;
    *&this[6].i32[1] = a7;
    this[7].i8[4] = a8;
    this[7].i8[6] = a9;
    v12 = 32;
    if (a9)
    {
      v12 = 48;
    }

    v13 = 24;
    if (a9)
    {
      v13 = 40;
    }

    this[8] = *(a4 + v12);
    this[9] = *(a4 + v13);
  }

  else
  {
    ma::MotionFieldAnalysis::Destroy(this);
    v14 = 0;
    v39 = this;
    this[20] = vshl_u32(vdup_n_s32(v10), 0x300000001);
    v15 = this + 20;
    v16 = 1;
    v17 = MEMORY[0x1E69E5398];
    do
    {
      v18 = v15->i32[v14];
      v19 = v16;
      if (v18 < 0)
      {
        v20 = -1;
      }

      else
      {
        v20 = 24 * v18;
      }

      v21 = operator new[](v20, v17);
      v15[v14 - 10] = v21;
      v22 = operator new[](v18, v17);
      v15[v14 - 8] = v22;
      v15[v14 - 6] = operator new[](v20, v17);
      if (v18 < 0)
      {
        v23 = -1;
      }

      else
      {
        v23 = 2 * v18;
      }

      if (v18 < 0)
      {
        v24 = -1;
      }

      else
      {
        v24 = 4 * v18;
      }

      v25 = operator new[](v23, v17);
      v15[v14 - 4] = v25;
      v15[v14 - 2] = operator new[](v24, v17);
      if (v18 >> 1 < 0)
      {
        v26 = -1;
      }

      else
      {
        v26 = 4 * (v18 >> 1);
      }

      v27 = operator new[](v26, v17);
      v15[v14 + 1] = v27;
      v28 = operator new[](v26, v17);
      v15[v14 + 3] = v28;
      v29 = operator new[](v26, v17);
      v15[v14 + 5] = v29;
      if (v21)
      {
        v30 = v22 == 0;
      }

      else
      {
        v30 = 1;
      }

      if (v30 || v25 == 0 || v27 == 0)
      {
        return 4294967188;
      }

      v33 = v29;
      result = 4294967188;
      if (!v28 || !v33)
      {
        return result;
      }

      v16 = 0;
      v14 = 1;
    }

    while ((v19 & 1) != 0);
    v34 = MEMORY[0x1E69E5398];
    v35 = operator new[](0x54uLL, MEMORY[0x1E69E5398]);
    v39[1] = v35;
    v36 = operator new[](0x18uLL, v34);
    v39[2] = v36;
    result = 4294967188;
    if (v35 && v36)
    {
      ma::ObjectDetection::Initialize(&v39[30], 2 * a2, 2 * a3, v39[24]);
      ma::ObjectTracking::Initialize(&v39[38]);
    }
  }

  return result;
}

uint64_t ma::MotionFieldAnalysis::ProcessFrame(ma::MotionFieldAnalysis *this, __CVBuffer *a2, int a3, const __CFArray **a4)
{
  ma::MotionResult::Reset(a4);
  ma::MotionFieldAnalysis::InitializeDataMatrix(this, a3);
  if (!a3 || (*(*this + 172) & 1) != 0)
  {
    return 0;
  }

  ma::MotionFieldAnalysis::FillDataMatrix(this);
  result = ma::MotionFieldAnalysis::CameraMotionEstimation(this, a4);
  if (!result)
  {
    ma::MotionFieldAnalysis::SubjectMotionEstimation(this, a4);
    if (!*(*this + 32) || (*(this + 60) & 1) != 0)
    {
      return 0;
    }

    result = ma::MotionFieldAnalysis::ContentAnalysis(this, a2, a3, a4);
    if (!result)
    {
      v9 = a4[24];
      if (v9 && CFArrayGetCount(v9))
      {
        return 0;
      }

      v10 = a4[23];
      if (v10)
      {
        if (CFArrayGetCount(v10))
        {
          return 0;
        }
      }

      result = 0;
      *(a4 + 14) = 0;
    }
  }

  return result;
}

void ma::MotionFieldAnalysis::InitializeDataMatrix(ma::MotionFieldAnalysis *this, int a2)
{
  v3 = 0;
  v4 = vshl_u32(vdup_n_s32(*(this + 8) * *(this + 9)), 0x300000001);
  v5 = this + 168;
  v6 = this + 184;
  v7 = this + 200;
  v8 = v4.i32[1];
  v9 = v4.i32[0];
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = 4 * (v9 >> 1);
    bzero(*&v5[8 * v3], v12);
    bzero(*&v6[8 * v3], v12);
    if (!a2)
    {
      bzero(*&v7[8 * v3], v12);
    }

    v10 = 0;
    v9 = v8;
    v3 = 1;
  }

  while ((v11 & 1) != 0);
}

float32x2_t *ma::MotionFieldAnalysis::FillDataMatrix(float32x2_t *this)
{
  v1 = this[10];
  v2 = this[11];
  v3 = this[16];
  v4 = this[17];
  this[20] = 0;
  v5 = this[4].i32[1];
  if (v5 >= 1)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = this[4].i32[0];
    do
    {
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = this[3];
        v11 = 16 * v6;
        v7 = v7;
        do
        {
          if (*(*&v10 + v7))
          {
            v37 = 2 * v8 * ((2 * v6) | 1) + 2 * v9;
            v38 = 2 * (v9 + 2 * v8 * v6);
            v12 = v9 + v8 * v6;
            v13 = this[9];
            v14 = (*&v13 + 4 * v12);
            v15 = *v14;
            if (v15 < 0)
            {
              v15 = -v15;
            }

            if (v15 <= 0xF9)
            {
              v16 = v14[1];
              if (v16 < 0)
              {
                v16 = -v16;
              }

              if (v16 <= 0xF9)
              {
                v17.f32[0] = (16 * v9);
                *v1 = 1;
                v17.f32[1] = v11;
                v18 = vcvt_s32_f32(vmul_f32(this[6], v17));
                v1[1].i32[0] = v18.i32[0];
                v1[1].i32[1] = -v18.i32[1];
                v1[2] = v18;
                v1[3] = 0x100000000;
                v1[4] = vrev64_s32(v18);
                v1[5].i32[0] = -v18.i32[1];
                v1[5].i32[1] = v18.i32[0];
                v1 += 6;
                v19 = (*&v13 + 4 * v7);
                *v3 = *v19;
                v3[1] = v19[1];
                v3 += 2;
                this[20].i32[0] += 2;
              }
            }

            if (*(*this + 32) && *(*(*this + 8) + v7) == 1)
            {
              v20 = 0;
              v21 = this[8];
              v22 = &v38;
              v23 = 1;
              do
              {
                v24 = 0;
                v25 = v23;
                v26 = 2 * (v20 | (2 * v6));
                v27 = (v11 | (8 * v20));
                v28 = 1;
                do
                {
                  v29 = v28;
                  v30 = (*&v21 + 4 * ((v24 | (2 * v9)) + v26 * this[4].i32[0]));
                  v31 = *v30;
                  if (v31 < 0)
                  {
                    v31 = -v31;
                  }

                  if (v31 <= 0xF9)
                  {
                    v32 = v30[1];
                    if (v32 < 0)
                    {
                      v32 = -v32;
                    }

                    if (v32 <= 0xF9)
                    {
                      v33 = *v22 + v24;
                      v34.f32[0] = ((16 * v9) | (8 * v24));
                      *v2 = 1;
                      v34.f32[1] = v27;
                      v35 = vcvt_s32_f32(vmul_f32(this[6], v34));
                      v2[1].i32[0] = v35.i32[0];
                      v2[1].i32[1] = -v35.i32[1];
                      v2[2] = v35;
                      v2[3] = 0x100000000;
                      v2[4] = vrev64_s32(v35);
                      v2[5].i32[0] = -v35.i32[1];
                      v2[5].i32[1] = v35.i32[0];
                      v2 += 6;
                      v36 = (*&v21 + 4 * v33);
                      *v4 = *v36;
                      v4[1] = v36[1];
                      v4 += 2;
                      this[20].i32[1] += 2;
                    }
                  }

                  v28 = 0;
                  v24 = 1;
                }

                while ((v29 & 1) != 0);
                v23 = 0;
                v22 = &v37;
                v20 = 1;
              }

              while ((v25 & 1) != 0);
            }

            v8 = this[4].i32[0];
          }

          ++v9;
          ++v7;
        }

        while (v9 < v8);
        v5 = this[4].i32[1];
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return this;
}

uint64_t ma::MotionFieldAnalysis::CameraMotionEstimation(ma::MotionFieldAnalysis *this, ma::MotionResult *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = ma::MotionFieldAnalysis::RobustGlobalMotionEst(this, v8, 0, &v6, &v7);
  if (!v4)
  {
    ma::MotionFieldAnalysis::CalcSignificantValue(this, v8, a2);
  }

  return v4;
}

uint64_t ma::MotionFieldAnalysis::SubjectMotionEstimation(ma::MotionFieldAnalysis *this, ma::MotionResult *a2)
{
  if (*(a2 + 80) == 1)
  {
    ma::MotionFieldAnalysis::RegularizeOutlierMap(this, 0);
    ma::MotionFieldAnalysis::SubjectMotionDetection(this, 0, a2);
    if ((*(this + 60) & 1) == 0)
    {
      ma::MotionFieldAnalysis::CalculateTrackingScore(this, 0, a2);
      ma::MotionFieldAnalysis::CalculateObjectMotion(this, 0, a2);
    }
  }

  return 0;
}

uint64_t ma::MotionFieldAnalysis::ContentAnalysis(ma::MotionFieldAnalysis *this, __CVBuffer *a2, int a3, ma::MotionResult *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0.0;
  result = ma::MotionFieldAnalysis::GenerateOutlierMap(this, 1, v14, a4, &v13);
  if (!result)
  {
    result = ma::MotionFieldAnalysis::MovingObjectDetectTracking(this, a2, a3, a4);
    if (!result)
    {
      ma::MotionFieldAnalysis::CalculateActionScore(this, v14, 1, v13, a4);
      if (*(*this + 173) == 1)
      {
        ma::MotionFieldAnalysis::CheckSubtleMotion(this, a4, v9, v10, v11, v12);
      }

      ma::MotionFieldAnalysis::TransferProbability(this, a4);
      return 0;
    }
  }

  return result;
}

uint64_t ma::MotionFieldAnalysis::RobustGlobalMotionEst(ma::MotionFieldAnalysis *this, float *a2, int a3, float *a4, float *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  updated = (*(this + 9) << (a3 != 0)) * (*(this + 8) << (a3 != 0));
  v9 = this + 160;
  v10 = *(this + a3 + 40);
  if (a3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v35 = v11;
  v40 = *(this + a3 + 12);
  v12 = *(this + a3 + 21);
  v13 = MEMORY[0x1E69E5398];
  __n = v10;
  v14 = operator new[](v10, MEMORY[0x1E69E5398]);
  v15 = 4 * updated;
  if (updated < 0)
  {
    v16 = -1;
  }

  else
  {
    v16 = 4 * updated;
  }

  v17 = v13;
  v18 = v14;
  v19 = operator new[](v16, v17);
  v20 = 4294967188;
  if (v18 && v19)
  {
    __dst = v19;
    if (__n >= 1)
    {
      v21 = 0;
      do
      {
        *(*(this + a3 + 12) + v21++) = 1;
      }

      while (v21 < *&v9[4 * a3]);
    }

    __src = v18;
    if (ma::MotionFieldAnalysis::EstimateMotionParam(this, a2, a3))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v38 = (updated * 0.05);
      v25 = 2147500000.0;
      v26 = 2147500000.0;
      do
      {
        v27 = updated;
        v28 = v25;
        v43 = 0;
        ma::MotionFieldAnalysis::CalcResidual(this, a2, a3, &v43 + 1, &v43);
        v25 = *&v43;
        if (*&v43 >= v28)
        {
          break;
        }

        v26 = *(&v43 + 1);
        v44 = *a2;
        v45 = *(a2 + 2);
        v18 = __src;
        memcpy(__src, v40, __n);
        memcpy(__dst, v12, v15);
        bzero(v12, v15);
        if (v22 <= 4 && updated > v38)
        {
          v29 = sqrtf(v25);
          v30 = v26 + (v35 * v29);
          if (v30 > 5.0)
          {
            continue;
          }
        }

        v31 = a5;
        goto LABEL_24;
        updated = ma::MotionFieldAnalysis::UpdateWeightMatrix(this, a2, a3, v30, v26 + (v29 * 4.0));
        ++v22;
        v23 = 1;
        v24 = v27;
        v28 = v25;
      }

      while (ma::MotionFieldAnalysis::EstimateMotionParam(this, a2, a3));
      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      v27 = v24;
      v25 = v28;
      v31 = a5;
      v18 = __src;
LABEL_24:
      *a2 = v44;
      *(a2 + 2) = v45;
      memcpy(v40, v18, __n);
      memcpy(v12, __dst, v15);
      v28 = v25;
      v32 = a4;
    }

    else
    {
      v26 = 2147500000.0;
      v28 = 2147500000.0;
LABEL_22:
      v27 = 0;
      v32 = a4;
      v31 = a5;
      v18 = __src;
    }

    v20 = 0;
    *(this + 10) = v27;
    *v32 = v26;
    *v31 = v28;
    v19 = __dst;
  }

  if (v18)
  {
    v33 = v19;
    MEMORY[0x1CCA95C10](v18, 0x1000C8077774924);
    v19 = v33;
  }

  if (v19)
  {
    MEMORY[0x1CCA95C10](v19, 0x1000C8052888210);
  }

  return v20;
}

void ma::MotionFieldAnalysis::CalcSignificantValue(ma::MotionFieldAnalysis *this, float *a2, ma::MotionResult *a3)
{
  *&v25[44] = *MEMORY[0x1E69E9840];
  v4 = *(this + 10);
  *(a3 + 21) = v4;
  v5 = (*(this + 9) * 0.02) * *(this + 8);
  *(a3 + 15) = 0;
  *(a3 + 80) = v4 >= v5;
  if (v4 >= v5)
  {
    v22 = 0.0;
    ma::MotionFieldAnalysis::CalcResidual(this, a2, 0, &v23, &v22);
    v8 = v22;
    *(a3 + 22) = v22;
    *(a3 + 80) = v8 < 1000000.0;
    if (v8 < 1000000.0)
    {
      v20 = 0.0;
      v9 = logf(v8);
      v10 = 0;
      v11 = v25;
      v12 = 0.0;
      do
      {
        ma::MotionFieldAnalysis::EstimateSuppressedEst(this, v24, v10);
        ma::MotionFieldAnalysis::CalcResidual(this, v24, 0, &v21, &v20);
        v13 = v20;
        *(v11 - 1) = v8;
        *v11 = v13;
        v12 = v12 + v13;
        *(a3 + v10++) = v9 - logf(v13);
        v11 += 2;
      }

      while (v10 != 6);
      v14 = 0;
      v15 = v25;
      do
      {
        if (v12 == 0.0)
        {
          v16 = 1.0;
        }

        else
        {
          v16 = *v15 / v12;
        }

        *(a3 + v14 + 24) = v16;
        v15 += 2;
        v14 += 4;
      }

      while (v14 != 24);
      *(a3 + 23) = *a2;
      *(a3 + 24) = a2[1];
      ma::MotionFieldAnalysis::CalcMotionParamDiff(this, a2, a3);
      *(a3 + 15) = 0;
      if (*(a3 + 9) >= 0.35)
      {
        v17 = fabsf(*(a3 + 3));
        if ((v17 / (v17 + fabsf(*(a3 + 5)))) > 0.85)
        {
          v18 = asinf(a2[3] * 0.25) * 57.296;
          *(a3 + 15) = v18;
          v19 = *(a3 + 148);
          if (CMTimeGetSeconds(&v19) * 180.0 <= fabsf(v18))
          {
            *(a3 + 15) = 0;
          }
        }
      }
    }
  }

  if ((*(a3 + 80) & 1) == 0)
  {
    *(a3 + 92) = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
  }
}

uint64_t ma::MotionFieldAnalysis::RegularizeOutlierMap(ma::MotionFieldAnalysis *this, int a2)
{
  v2 = this;
  v3 = *(this + 9);
  if (a2)
  {
    v3 *= 2;
    v4 = 2 * *(this + 8);
    v5 = 4;
    v6 = 96;
    v7 = 104;
    v8 = 112;
  }

  else
  {
    v4 = *(this + 8);
    v5 = 2;
    v6 = 64;
    v7 = 80;
    v8 = 88;
  }

  v9 = v4 / 3;
  v10 = 2 * v4 / 3;
  v11 = v3 / 3;
  v48 = 2 * v3 / 3;
  v12 = *(this + a2 + 21);
  v13 = v3 - v5;
  v47 = v4;
  v45 = v5;
  if (v5 < v3 - v5)
  {
    v36 = this + 168;
    v14 = (v12 + 4 * v4 * v5);
    v15 = (*(*this + v8) + 2 * v4 * v5);
    v16 = (*(*this + v7) + 2 * v4 * v5);
    v17 = (*(*this + v6) + 2 * v4 * v5);
    v39 = v4 - v5;
    v41 = v3 - v5;
    v38 = v4;
    v37 = v4 - 2 * v5;
    v18 = v5;
    do
    {
      v19 = v37;
      v20 = v45;
      if (v45 < v39)
      {
        do
        {
          if (v20 < v9 || v20 >= v10 || v18 < v11 || v18 >= v48)
          {
            ma::MotionFieldAnalysis::ApplySmoothnessConstraint(this, v20, v18, v47, a2, v17, v16, v15, v14);
            v4 = v47;
          }

          ++v20;
          --v19;
        }

        while (v19);
      }

      v14 += v38;
      v17 += v38;
      v16 += v38;
      ++v18;
      v15 += v38;
      v13 = v41;
    }

    while (v18 != v41);
    v12 = *&v36[8 * a2];
    v2 = this;
    v5 = v45;
  }

  if (v5 < v13)
  {
    v21 = *v2;
    v22 = 112;
    if (!a2)
    {
      v22 = 88;
    }

    v23 = 104;
    if (!a2)
    {
      v23 = 80;
    }

    v24 = 96;
    if (!a2)
    {
      v24 = 64;
    }

    v25 = v13 - 1;
    v26 = (v13 - 1) * v4;
    v27 = (v12 + 4 * v26);
    v28 = (*(v21 + v22) + 2 * v26);
    v29 = (*(v21 + v23) + 2 * v26);
    v30 = (*(v21 + v24) + 2 * v26);
    v44 = v4 + ~v5;
    v42 = -v4;
    v40 = v4 - v5;
    do
    {
      v31 = v40;
      if (v44 >= v5)
      {
        do
        {
          v32 = --v31 >= v9 && v31 < v10;
          if (!v32 || v25 < v11 || v25 >= v48)
          {
            ma::MotionFieldAnalysis::ApplySmoothnessConstraint(v2, v31, v25, v47, a2, v30, v29, v28, v27);
            v5 = v45;
          }
        }

        while (v31 > v5);
      }

      v27 += v42;
      v30 += v42;
      v29 += v42;
      v28 += v42;
      v32 = v25-- <= v5;
    }

    while (!v32);
  }

  if (a2)
  {
    ma::MotionFieldAnalysis::RemoveUnreliable8x8Outliers(v2);
  }

  return 0;
}

void ma::MotionFieldAnalysis::SubjectMotionDetection(ma::MotionFieldAnalysis *this, int a2, ma::MotionResult *a3)
{
  v5 = *(this + 9);
  if (a2)
  {
    v5 *= 2;
    v6 = 2 * *(this + 8);
    v7 = 4;
    v8 = 64;
  }

  else
  {
    v6 = *(this + 8);
    v7 = 2;
    v8 = 72;
  }

  v9 = 0.0;
  if (v7 >= v5 - v7)
  {
    v10 = 0;
    v16 = 0;
    v17 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = *(this + v8);
    v12 = this + 8 * a2;
    v13 = *(v12 + 23);
    v14 = *(v12 + 21);
    v15 = (v6 - v7);
    v16 = 0;
    v17 = 0.0;
    v18 = v13 + 4 * v6 * v7;
    v19 = v14 + 4 * v6 * v7;
    v20 = v7;
    do
    {
      if (v7 < v15)
      {
        v21 = v20 > v5 / 3;
        v22 = v20 < 2 * v5 / 3;
        if (v21 && v22)
        {
          v23 = 1.0;
        }

        else
        {
          v23 = 0.7;
        }

        if (v21 && v22)
        {
          v24 = 0.8;
        }

        else
        {
          v24 = 0.3;
        }

        v25 = v7;
        do
        {
          if (*(v19 + 4 * v25))
          {
            v26 = v25 + 1;
            v27 = (v19 + 4 * (v25 + v6));
            v28 = *(v19 + 4 * (v25 - v6)) + *(v19 + 4 * (v25 - v6) - 4) + *(v19 + 4 * (v25 - v6) + 4) + *(v19 + 4 * v25 - 4) + *(v19 + 4 * (v25 + 1)) + *(v27 - 1) + *v27 + v27[1];
            if (v28 >= 8)
            {
              v28 = 8;
            }

            v29 = ma::MotionFieldAnalysis::SubjectMotionDetection(int,ma::MotionResult *)::kEnergyTable[v28 & ~(v28 >> 31)];
            v17 = v17 + v29;
            ++v10;
            if (v25 >= 2 * v6 / 3 || v25 <= v6 / 3)
            {
              v31 = v24;
            }

            else
            {
              v31 = v23;
            }

            *(v18 + 4 * v25) = (v31 * v29) * 0.125;
            v32 = (v11 + 4 * v25);
            v33.i32[0] = *v32;
            v33.i32[1] = v32[1];
            v16 = vadd_f32(v16, vcvt_f32_u32(vabs_s32(v33)));
            v25 = v26;
          }

          else
          {
            ++v25;
          }
        }

        while (v25 != v15);
      }

      v19 += 4 * v6;
      v18 += 4 * v6;
      ++v20;
      v11 += 4 * v6;
    }

    while (v20 != v5 - v7);
  }

  v34 = v10 / (v5 * v6);
  if (v34 <= 0.4 && v34 >= 0.01 && v10 != 0)
  {
    v38 = v16;
    v9 = log2f(sqrtf((v17 / v10) * 0.125) + 1.0);
    v16 = v38;
  }

  v36 = v10 >> 2;
  if (!a2)
  {
    v36 = v10;
  }

  *(a3 + 18) = v36;
  v37 = 0.0;
  if (v10 >= 1)
  {
    v37 = vaddv_f32(v16) / (4 * v10);
  }

  *(a3 + 19) = v37;
  if (!*(a3 + 80))
  {
    v9 = 0.0;
  }

  *(a3 + 13) = v9;
}

float ma::MotionFieldAnalysis::CalculateTrackingScore(ma::MotionFieldAnalysis *this, int a2, ma::MotionResult *a3)
{
  v3 = a3;
  v5 = *(this + 8);
  if (a2)
  {
    v6 = 2 * v5;
    v7 = *(this + 9);
    v8 = 2 * v7;
    v9 = 3;
    v10 = 4;
  }

  else
  {
    v7 = *(this + 9);
    v9 = 4;
    v10 = 2;
    v8 = v7;
    v6 = *(this + 8);
  }

  v11 = this + 8 * a2;
  v12 = *(v11 + 23);
  v13 = *(v11 + 25);
  v14 = 64;
  if (!a2)
  {
    v14 = 72;
  }

  v15 = 0.0;
  if (v8 < 1)
  {
    LODWORD(v16) = 0;
    v18 = 0;
    v25 = 0.0;
    v69 = 0.0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v20) = 0;
    v21 = 1 << v9;
    v22 = 16 * v5;
    v76 = *(this + v14);
    v23 = 16 * v7;
    v80 = v5 - v10;
    v79 = v7 - v10;
    v75 = v8;
    v78 = (1 << v9) >> 1;
    v24 = v8 - 2;
    v25 = 0.0;
    do
    {
      if (v6 >= 1)
      {
        v26 = 0;
        v27 = *(this + 9);
        v20 = v20;
        do
        {
          v28 = (v27 + 4 * v20);
          v29 = *v28;
          v31 = v28[1];
          v32 = (v26 << v9) + (v29 / (*(this + 12) * 4.0));
          if (v32 >= v22)
          {
            v33 = v22;
          }

          else
          {
            v33 = (v26 << v9) + (v29 / (*(this + 12) * 4.0));
          }

          if (v32 <= 0)
          {
            v34 = 0;
          }

          else
          {
            v34 = v33;
          }

          v30 = *(this + 13);
          v35 = (v19 << v9) + (v31 / (v30 * 4.0));
          if (v35 >= v23)
          {
            v36 = v23;
          }

          else
          {
            v36 = (v19 << v9) + (v31 / (v30 * 4.0));
          }

          if (v35 <= 0)
          {
            v37 = 0;
          }

          else
          {
            v37 = v36;
          }

          if (v23 >= v37 + v21)
          {
            v38 = v37 + v21;
          }

          else
          {
            v38 = v23;
          }

          if (v23 <= v37)
          {
            goto LABEL_36;
          }

          v39 = v12;
          v40 = v17;
          v41 = v18;
          v42 = v16;
          v43 = 0;
          v44 = v22 >= v34 + v21 ? v34 + v21 : v22;
          v45 = 0.0;
          do
          {
            if (v22 > v34)
            {
              v46 = v34;
              do
              {
                v45 = v45 + v13[(v46 >> v9) + (v37 >> v9) * v6];
                ++v43;
                ++v46;
              }

              while (v46 < v44);
            }

            ++v37;
          }

          while (v37 < v38);
          v16 = v42;
          v18 = v41;
          v17 = v40;
          v12 = v39;
          if (v43)
          {
            v47 = ((v45 / v43) * 0.5) + (v39[v20] * 0.5);
            v39[v20] = v47;
          }

          else
          {
LABEL_36:
            v47 = v12[v20];
          }

          if (v19 >= v10 && v26 >= v10 && (v47 >= 0.5 ? (v48 = v26 < v80) : (v48 = 0), v48 ? (v49 = v19 < v79) : (v49 = 0), v49))
          {
            v50 = 0;
            v51 = (v76 + 4 * v20);
            v52 = *v51;
            v53 = v51[1];
            v54 = ((v26 << v9) + v78 + (v52 >> 2)) >> v9;
            v55 = v6 - 2;
            if (v54 < v6 - 2)
            {
              v55 = ((v26 << v9) + v78 + (v52 >> 2)) >> v9;
            }

            if (v54 <= 1)
            {
              v56 = 1;
            }

            else
            {
              v56 = v55;
            }

            v77 = (v19 << v9) + v78;
            v57 = (v77 + (v53 >> 2)) >> v9;
            if (v57 >= v24)
            {
              v58 = v24;
            }

            else
            {
              v58 = (v77 + (v53 >> 2)) >> v9;
            }

            if (v57 <= 1)
            {
              v59 = 1;
            }

            else
            {
              v59 = v58;
            }

            v60 = v56 + v6 * (v59 - 1) - 1;
            for (i = -1; i != 2; ++i)
            {
              v62 = 3;
              v63 = v60;
              do
              {
                if (v13[v63] >= 0.5)
                {
                  ++v50;
                }

                ++v63;
                --v62;
              }

              while (v62);
              v60 += v6;
            }

            if (v50 >= 9)
            {
              v64 = 9;
            }

            else
            {
              v64 = v50;
            }

            v25 = v25 + ma::MotionFieldAnalysis::GenerateFineForeground(float,int,ma::MotionResult *)::kEnergyTable[v64 & ~(v64 >> 31)];
            v16 = (v16 + 1);
            if (v52 >= 0)
            {
              v65 = v52;
            }

            else
            {
              v65 = -v52;
            }

            if (v53 >= 0)
            {
              v66 = v53;
            }

            else
            {
              v66 = -v53;
            }

            v17 += (v66 + v65) >> 1;
          }

          else
          {
            if (v29 >= 0)
            {
              v67 = v29;
            }

            else
            {
              v67 = -v29;
            }

            if (v31 >= 0)
            {
              v68 = v31;
            }

            else
            {
              v68 = -v31;
            }

            v18 += (v68 + v67) >> 1;
          }

          ++v26;
          ++v20;
        }

        while (v26 != v6);
        v8 = v75;
      }

      ++v19;
    }

    while (v19 != v8);
    if (v16 <= 0)
    {
      v69 = 0.0;
    }

    else
    {
      v69 = (v17 / v16);
    }

    v3 = a3;
  }

  if (v6 * v8 > v16)
  {
    v15 = (v18 / (v6 * v8 - v16)) * 0.7;
  }

  v70 = expf(v69 * -0.0175);
  v71 = 0.0;
  v72 = 0.0;
  if (((v6 * v8) * 0.01) <= v16)
  {
    if (v69 <= 30.0 || (v72 = 0.0, v69 < v15))
    {
      v72 = ((v25 / (9 * v16)) + v70) * 0.5;
    }
  }

  if (*(v3 + 80) == 1)
  {
    v71 = (*(this + 14) * 0.3) + (v72 * 0.7);
  }

  *(v3 + 14) = v71;
  memcpy(v13, v12, 4 * v8 * v6);
  result = *(v3 + 14);
  *(this + 14) = result;
  return result;
}

void ma::MotionFieldAnalysis::CalculateObjectMotion(ma::MotionFieldAnalysis *this, int a2, ma::MotionResult *a3)
{
  v4 = *(this + 8);
  if (a2)
  {
    v4 *= 2;
    v5 = 2 * *(this + 9);
    v6 = 3;
    v7 = 4;
    v8 = 64;
  }

  else
  {
    v5 = *(this + 9);
    v6 = 4;
    v7 = 2;
    v8 = 72;
  }

  v9 = 1 << v6;
  v11 = *(*this + 176);
  v10 = *(*this + 180);
  idx = 0;
  v89 = *(this + v8);
  v92[0] = 0;
  v92[1] = 0;
  v91 = v92;
  v12 = (this + 216);
  v85 = (1 << v6);
  for (i = (this + 216); ; v12 = i)
  {
    v13 = *(a3 + 25);
    v14 = v13 ? CFArrayGetCount(v13) : 0;
    if (idx >= v14)
    {
      break;
    }

    v90 = **CFArrayGetValueAtIndex(*(a3 + 25), idx);
    v15 = *(*CFArrayGetValueAtIndex(*(a3 + 25), idx) + 8);
    v16 = *(*CFArrayGetValueAtIndex(*(a3 + 25), idx) + 16);
    v17 = *(*CFArrayGetValueAtIndex(*(a3 + 25), idx) + 24);
    v18 = *(*CFArrayGetValueAtIndex(*(a3 + 25), idx) + 32);
    v93 = &v90;
    v19 = *(std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(i, &v90) + 5);
    v93 = &v90;
    v20 = *(std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(i, &v90) + 6);
    v93 = &v90;
    v21 = *(std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(i, &v90) + 7);
    v93 = &v90;
    v22 = std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(i, &v90);
    v25 = v16;
    v26 = v18;
    v27 = *(*this + 180);
    v28 = vcvtms_s32_f32(((1.0 - v25) * v27) / v85);
    v29 = vcvtps_s32_f32((((1.0 - v25) - v26) * v27) / v85);
    if (v28 - v29 >= 6)
    {
      v29 = (v29 + ((v28 - v29) * 0.15));
      v28 = (v28 - ((v28 - v29) * 0.15));
    }

    v30 = v15;
    v31 = v17;
    v32 = *(*this + 176);
    v33 = vcvtps_s32_f32((v30 * v32) / v85);
    v34 = vcvtms_s32_f32(((v30 + v31) * v32) / v85);
    v84 = v26;
    if (v34 - v33 >= 6)
    {
      v33 = (v33 + ((v34 - v33) * 0.15));
      v34 = (v34 - ((v34 - v33) * 0.15));
    }

    if (v5 < 1)
    {
      v47 = 0.0;
      v46 = 0.0;
      v81 = 0.0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *v23.i32 = v19;
      v38 = v20;
      v39 = v21;
      v40 = *(v22 + 8);
      *v24.i32 = *v23.i32 * v32;
      *v23.i32 = (*v23.i32 + v39) * v32;
      v41 = 1.0 - v38;
      v42 = (v41 - v40) * v27;
      v43 = v41 * v27;
      v44 = vdupq_lane_s32(v24, 0);
      v45 = vdupq_lane_s32(v23, 0);
      v46 = 0.0;
      v47 = 0.0;
      do
      {
        if (v4 >= 1)
        {
          v48 = 0;
          v50 = v37 <= v29 || v37 >= v28;
          v51 = v36;
          do
          {
            v52 = v48 <= v33 || v50;
            if (v37 >= v7 && v48 >= v7 && (v52 & 1) == 0 && v48 < v34 && v48 < (*(this + 8) - v7) && v37 < (*(this + 9) - v7))
            {
              v53 = 0;
              v54 = (v89 + 4 * v51);
              v55 = v54[1];
              v56 = *v54;
              v57 = (v48 << v6) + (v56 / (*(this + 12) * 4.0));
              if (v57 >= v11)
              {
                v58 = v11;
              }

              else
              {
                v58 = (v48 << v6) + (v56 / (*(this + 12) * 4.0));
              }

              if (v57 <= 0)
              {
                v59 = 0;
              }

              else
              {
                v59 = v58;
              }

              v60 = v55;
              v61 = (v37 << v6) + (v60 / (*(this + 13) * 4.0));
              if (v61 >= v10)
              {
                v62 = v10;
              }

              else
              {
                v62 = (v37 << v6) + (v60 / (*(this + 13) * 4.0));
              }

              if (v61 <= 0)
              {
                v63 = 0;
              }

              else
              {
                v63 = v62;
              }

              v64 = v63 + v9;
              if (v10 < v63 + v9)
              {
                v64 = v10;
              }

              if (v10 > v63)
              {
                v53 = 0;
                v65 = v59 + v9;
                if (v11 < v59 + v9)
                {
                  v65 = v11;
                }

                if (v65 <= v59 + 1)
                {
                  v65 = v59 + 1;
                }

                v66 = v65 - v59;
                v67 = (v65 - v59 + 3) & 0xFFFFFFFC;
                v68 = vaddq_s32(vdupq_n_s32(v59), xmmword_1C9F63350);
                v69 = vdupq_n_s32(v66 - 1);
                do
                {
                  if (v11 > v59)
                  {
                    v70 = v42 <= v63;
                    if (v43 <= v63)
                    {
                      v70 = 0;
                    }

                    v71 = v53;
                    v72 = vdup_n_s16(v70);
                    v73 = 4;
                    v74 = v68;
                    v75.i64[0] = 0x100000001;
                    v75.i64[1] = 0x100000001;
                    v76.i64[0] = 0x400000004;
                    v76.i64[1] = 0x400000004;
                    do
                    {
                      v77 = v71;
                      v78 = vcvtq_f32_s32(v74);
                      v71 = vaddq_s32(v77, vandq_s8(vmovl_u16(vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v78, v44), vcgtq_f32(v45, v78))), v72)), v75));
                      v74 = vaddq_s32(v74, v76);
                      v73 -= 4;
                    }

                    while (v67 + v73 != 4);
                    v53 = vaddvq_s32(vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v73), xmmword_1C9F63350), v69), v77, v71));
                  }

                  ++v63;
                }

                while (v63 < v64);
              }

              v79 = v46 + v56;
              v80 = v47 + v60;
              if (v53 >= ((1 << v6 << v6) >> 1))
              {
                v47 = v80;
                v46 = v79;
                ++v35;
              }
            }

            ++v48;
            ++v51;
          }

          while (v48 != v4);
          v36 += v4;
        }

        ++v37;
      }

      while (v37 != v5);
      v81 = (4 * v35);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 25), idx);
    ma::Object::SetMotion(*ValueAtIndex, v46 / v81, v47 / v81);
    v93 = &v90;
    v83 = std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v91, &v90);
    v83[5] = v30;
    v83[6] = v25;
    v83[7] = v31;
    v83[8] = v84;
    ++idx;
  }

  if (v12 != &v91)
  {
    std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,CGRect>,std::__tree_node<std::__value_type<int,CGRect>,void *> *,long>>(v12, v91, v92);
  }

  std::__tree<unsigned long>::destroy(&v91, v92[0]);
}

BOOL ma::MotionFieldAnalysis::IsStable(ma::MotionFieldAnalysis *this, ma::MotionResult *a2)
{
  v2 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  v4 = *(a2 + 24);
  v5 = 1000000.0;
  do
  {
    if (*(a2 + v2) < v5)
    {
      v5 = *(a2 + v2);
    }

    v2 += 4;
  }

  while (v2 != 24);
  for (i = 0; i != 24; i += 4)
  {
    v7 = *(a2 + i + 24);
    v8 = -4.5;
    if (v7 >= 0.1)
    {
      v8 = -0.1;
      if (v7 <= 0.9)
      {
        v8 = (v7 * 5.5) + -5.05;
      }
    }

    *&v20[i] = v8;
  }

  v9 = 0;
  v10 = 0;
  v11 = v5 * 0.5;
  do
  {
    v12 = *(a2 + v9);
    v14 = v12 < v11 && v12 < *&v20[4 * v9];
    if (v12 != 0.0 && v14)
    {
      v15 = 1 << v9;
    }

    else
    {
      v15 = 0;
    }

    v10 += v15;
    ++v9;
  }

  while (v9 != 6);
  v16 = fabsf(v3);
  v17 = fabsf(v4);
  if (v16 < v17)
  {
    v16 = v17;
  }

  return v16 < 40.0 && v10 == 0;
}

uint64_t ma::MotionFieldAnalysis::MovingObjectDetectTracking(ma::MotionFieldAnalysis *this, CVPixelBufferRef pixelBuffer, int a3, CFMutableArrayRef *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0.0;
  v35 = 0;
  if (*(this + 61) == 1)
  {
    printf("frame idx = %d\n", a3);
  }

  ma::ObjectTracking::ConfigureFrame((this + 304), pixelBuffer);
  v32 = 0;
  pixelBuffera = pixelBuffer;
  unlockFlags = 1;
  if (pixelBuffer)
  {
    v7 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    v32 = v7;
    if (!v7 || (updated = v7, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v38 = pixelBuffer, v39 = 1024, v40 = updated, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (updated = v32) == 0))
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
      v10 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
      v11 = *(this + 42);
      if (v11 > 0.0)
      {
        v12 = *(this + 41);
        if (v12 > 0.0 && (*(this + 496) & 1) == 0)
        {
          v13 = v12;
          v14 = v11;
          updated = ma::ObjectTracking::MeanShiftTracking((this + 304), (this + 304), v13, v14, BaseAddressOfPlane, v10, (this + 400), this + 496, &v36);
          if (updated)
          {
            goto LABEL_21;
          }

          v15 = *(this + 28);
          *(this + 21) = *(this + 27);
          *(this + 22) = v15;
          *(this + 23) = *(this + 29);
          *(this + 381) = *(this + 477);
          v16 = *(this + 26);
          *(this + 19) = *(this + 25);
          *(this + 20) = v16;
          ma::Object::Clear((this + 400));
        }
      }

      ma::ObjectDetection::SetMvField(this + 240, *(this + 8));
      updated = ma::ObjectDetection::Detect((this + 240), a4, *(this + 8));
      if (!updated)
      {
        ma::ObjectTracking::CleanObjectTags((this + 304), a4);
        if (*(this + 61) == 1)
        {
          v17 = a4[23];
          if (v17)
          {
            LODWORD(v17) = CFArrayGetCount(v17);
          }

          v18 = *(this + 42) > 0.0 && *(this + 41) > 0.0;
          printf("size = %d, track_target_exist = %d, target_lost = %d, tracking_score = %6.2f\n", v17, v18, *(this + 496), v36);
        }

        v20 = a4[23];
        if (v20 && CFArrayGetCount(v20))
        {
          ma::ObjectTracking::SetForegroundMap(this + 304, *(this + 24), 2 * *(this + 8), 2 * *(this + 9), 2 * *(this + 8), 8);
          ma::ObjectTracking::AdjustTrackingScore((this + 304), &v36, &v35);
          if (*(this + 42) <= 0.0 || *(this + 41) <= 0.0 || v36 < 0.65 || *(this + 496) == 1)
          {
            v21 = *(this + 11) + 1;
            *(this + 11) = v21;
            v22 = ma::ObjectTracking::CatchMostInterestedObject((this + 304), a4, v21);
            v23 = *(*CFArrayGetValueAtIndex(a4[23], v22) + 8);
            v24 = *(*CFArrayGetValueAtIndex(a4[23], v22) + 16);
            v25 = *(*CFArrayGetValueAtIndex(a4[23], v22) + 24);
            ValueAtIndex = CFArrayGetValueAtIndex(a4[23], v22);
            v27 = v23;
            v28 = v24;
            v29.f32[0] = v25;
            v30 = *(*ValueAtIndex + 32);
            updated = ma::ObjectTracking::BuildTarget((this + 304), v27, v28, v29, v30, BaseAddressOfPlane, v10, 1);
            if (updated)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v22 = ma::ObjectTracking::CatchMostProbableObject((this + 304), a4, *(this + 11));
            v31 = CFArrayGetValueAtIndex(a4[23], v22);
            updated = ma::ObjectTracking::CheckUpdateTarget((this + 304), BaseAddressOfPlane, v10, *v31, v35);
            if (updated)
            {
              goto LABEL_21;
            }
          }
        }

        else if (v36 < 0.65 || *(this + 496) == 1)
        {
          ma::Object::Clear((this + 304));
          v22 = 0;
          *(this + 496) = 1;
        }

        else
        {
          v22 = 0;
        }

        updated = CVPixelBufferLock::Unlock(&v32);
        if (!updated)
        {
          if (*(this + 42) <= 0.0 || *(this + 41) <= 0.0 || (updated = ma::ObjectTracking::UpdateStoredBoundingBox((this + 304), a4, v22, *(this + 11)), !updated))
          {
            ma::ObjectTracking::UpdateExpertAge((this + 304));
            updated = 0;
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    updated = 4294967246;
    v32 = -50;
  }

LABEL_21:
  if (pixelBuffera && !v32 && CVPixelBufferUnlockBaseAddress(pixelBuffera, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ma::EncodeAnalysis::GetFrameLBP();
  }

  return updated;
}

void sub_1C9E6F16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t ma::MotionFieldAnalysis::GenerateOutlierMap(ma::MotionFieldAnalysis *this, int a2, float *a3, ma::MotionResult *a4, float *a5)
{
  v11 = 0;
  v9 = ma::MotionFieldAnalysis::RobustGlobalMotionEst(this, a3, a2, &v11 + 1, &v11);
  if (!v9)
  {
    ma::MotionFieldAnalysis::RegularizeOutlierMap(this, a2);
    ma::MotionFieldAnalysis::GenerateFineForeground(this, *&v11, a2, a4);
    *a5 = *(&v11 + 1);
  }

  return v9;
}

uint64_t ma::MotionFieldAnalysis::CalculateActionScore(float32x2_t *this, float *a2, int a3, float a4, ma::MotionResult *a5)
{
  v7 = this[4].i32[1];
  if (a3)
  {
    v7 *= 2;
    v8 = 2 * this[4].i32[0];
    v37 = 3;
    v9 = 8;
  }

  else
  {
    v8 = this[4].i32[0];
    v37 = 4;
    v9 = 9;
  }

  v10 = &this[a3];
  v11 = v10[10];
  v12 = v10[16];
  v33 = this[v9];
  *v39 = 0;
  if (v7 < 1)
  {
    goto LABEL_19;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v30 = a3;
  v16 = 0.0;
  v17 = 0.0;
  v34 = v7;
  do
  {
    v35 = v15;
    if (v8 >= 1)
    {
      v18 = 0;
      v19 = (v15 << v37);
      v36 = (v15 << v37);
      v20 = (*&v33 + 4 * v14);
      do
      {
        v38.origin.x = (v18 << v37);
        v38.origin.y = v19;
        v38.size.width = (1 << v37);
        v38.size.height = v38.size.width;
        v21 = a5;
        if (ma::MotionFieldAnalysis::IsForegroundObject(this, &v38, a5))
        {
          v22.f32[0] = (v18 << v37);
          *v11 = 1;
          v22.f32[1] = v36;
          v23 = vcvt_s32_f32(vmul_f32(this[6], v22));
          v11[1].i32[0] = v23.i32[0];
          v11[1].i32[1] = -v23.i32[1];
          v11[2] = v23;
          v11[3] = 0x100000000;
          v11[4] = vrev64_s32(v23);
          v11[5].i32[0] = -v23.i32[1];
          v11[5].i32[1] = v23.i32[0];
          v11 += 6;
          *v12 = *v20;
          v24 = v20[1];
          v12[1] = v20[1];
          v12 += 2;
          v13 += 2;
          v25 = *v20;
          if (v25 < 0)
          {
            v25 = -v25;
          }

          v17 = v17 + v25;
          if (v24 < 0)
          {
            v24 = -v24;
          }

          v16 = v16 + v24;
        }

        ++v18;
        v20 += 2;
        ++v14;
        a5 = v21;
      }

      while (v8 != v18);
    }

    v15 = v35 + 1;
  }

  while (v35 + 1 != v34);
  if (v13)
  {
    this[20].i32[v30] = v13;
    v26 = a5;
    ma::MotionFieldAnalysis::CalcOutlierResidual(this, a2, a3, &v39[1], v39);
    v27 = log2f((v39[1] + sqrtf(v39[0])) / (a4 + 0.000001));
    a5 = v26;
    v28 = 0.0;
    v26[12] = fmaxf(v27, 0.0);
    if (v13 >= 1)
    {
      v28 = (v17 + v16) / (2 * v13);
    }
  }

  else
  {
LABEL_19:
    *(a5 + 12) = 0;
    v28 = 0.0;
  }

  *(a5 + 19) = v28;
  return 0;
}

uint64_t ma::MotionFieldAnalysis::CheckSubtleMotion(ma::MotionFieldAnalysis *this, ma::MotionResult *a2, double a3, double a4, float a5, float a6)
{
  v7 = *(this + 9);
  v8 = 0.0;
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(this + 8);
    v12 = *(*this + 152);
    v13 = *(*this + 160);
    do
    {
      if (v11 >= 1)
      {
        v14 = 0;
        this = (v12 + 2 * v9);
        do
        {
          if (v14 >= 3 && v10 >= 3 && v14 < v11 - 3 && v10 < v7 - 3)
          {
            LOWORD(a5) = *(this + v14);
            LOWORD(a6) = *(v13 + 2 * v9 + 2 * v14);
            a6 = LODWORD(a6);
            a5 = LODWORD(a5) + (a6 * 4.0);
            if (a5 > v8)
            {
              v8 = a5;
            }
          }

          ++v14;
        }

        while (v11 != v14);
      }

      ++v10;
      v9 += v11 & ~(v11 >> 31);
    }

    while (v10 != v7);
  }

  v15 = v8 + 0.0;
  v16 = v8 > 3700.0;
  v17 = 5500.0;
  if (v15 < 5500.0)
  {
    v17 = v15;
  }

  v18 = ((v17 + -3700.0) / 1800.0) * 10.0;
  IsStable = ma::MotionFieldAnalysis::IsStable(this, a2);
  *(a2 + 68) = IsStable;
  if (IsStable && v16)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0.0;
  }

  *(a2 + 16) = v20;
  return 0;
}

uint64_t ma::MotionFieldAnalysis::TransferProbability(ma::MotionFieldAnalysis *this, ma::MotionResult *a2)
{
  v4 = 0;
  v6 = *(this + 8);
  v5 = *(this + 9);
  v53 = (16 * v6);
  v7 = *(this + 25);
  v8 = *(this + 26);
  v9 = (16 * v5);
  v51 = vdup_n_s32(2 * v6);
  v52 = vdup_n_s32(2 * v5);
  v10 = 8 * v6;
  __asm { FMOV            V0.2D, #0.125 }

  v56 = _Q0;
  while (1)
  {
    v16 = *(a2 + 23);
    v17 = v16 ? CFArrayGetCount(v16) : 0;
    if (v4 >= v17)
    {
      break;
    }

    if (*(*CFArrayGetValueAtIndex(*(a2 + 23), v4) + 72) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 23), v4);
      v19 = *ValueAtIndex;
      v21 = (*ValueAtIndex)[4];
      v20 = (*ValueAtIndex)[5];
      v22 = (*ValueAtIndex)[3];
      v60 = (*ValueAtIndex)[2];
      v61 = v22;
      v62 = v21;
      v63 = v20;
      v23 = v19[1];
      v58 = *v19;
      v59 = v23;
      *&v23 = v53;
      ma::Object::ScaleBox(&v58, *&v23, v9);
      v24 = *(&v58 + 1);
      v26 = v59;
      v25 = *&v60;
      v64.origin.x = *(&v58 + 1);
      *&v64.origin.y = v59;
      *&v64.size.height = v60;
      MinX = CGRectGetMinX(v64);
      v65.origin.x = v24;
      *&v65.origin.y = v26;
      v65.size.height = v25;
      MinY = CGRectGetMinY(v65);
      v66.origin.x = v24;
      *&v66.origin.y = v26;
      v66.size.height = v25;
      MaxX = CGRectGetMaxX(v66);
      v67.origin.x = v24;
      *&v67.origin.y = v26;
      v67.size.height = v25;
      MaxY = CGRectGetMaxY(v67);
      v28.f64[0] = MinY;
      v28.f64[1] = MaxY;
      v29 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v28, v56))));
      v30 = vand_s8(vmin_s32(v29, v52), vcgtz_s32(v29));
      v31 = v30.i32[1];
      LODWORD(v32) = v30.i32[0];
      if (v30.i32[0] < v30.i32[1])
      {
        v33.f64[0] = MinX;
        v33.f64[1] = MaxX;
        v34 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v33, v56))));
        v35 = vand_s8(vmin_s32(v34, v51), vcgtz_s32(v34));
        v36 = v35.i32[0];
        v32 = v32;
        v37 = (v8 + v10 * v32 + 4 * v35.i32[0]);
        v38 = v35.i32[1] - v35.i32[0];
        do
        {
          if (v36 < v35.i32[1])
          {
            v39 = *(this + 8) * (v32 >> 1);
            v40 = v38;
            v41 = v36;
            v42 = v37;
            do
            {
              v43 = *v42 + 0.3;
              if (v43 < 1.0)
              {
                v44 = *v42 + 0.3;
              }

              else
              {
                v44 = 1.0;
              }

              if (v43 <= 0.0)
              {
                v45 = 0.0;
              }

              else
              {
                v45 = v44;
              }

              *v42++ = v45;
              v46 = v39 + (v41 >> 1);
              v47 = *(v7 + 4 * v46) + 0.3;
              if (v47 < 1.0)
              {
                v48 = *(v7 + 4 * v46) + 0.3;
              }

              else
              {
                v48 = 1.0;
              }

              if (v47 <= 0.0)
              {
                v49 = 0.0;
              }

              else
              {
                v49 = v48;
              }

              *(v7 + 4 * v46) = v49;
              ++v41;
              --v40;
            }

            while (v40);
          }

          ++v32;
          v37 = (v37 + v10);
        }

        while (v32 != v31);
      }
    }

    ++v4;
  }

  return 0;
}

void ma::MotionFieldAnalysis::GenerateFineForeground(ma::MotionFieldAnalysis *this, float a2, int a3, ma::MotionResult *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = *(this + 9);
  if (a3)
  {
    v7 = 2 * v6;
    v8 = *(this + 8);
    v9 = 2 * v8;
    v10 = 4;
    v11 = 3;
    v12 = 64;
  }

  else
  {
    v10 = 2;
    v8 = *(this + 8);
    v11 = 4;
    v12 = 72;
    v9 = v8;
    v7 = *(this + 9);
  }

  v13 = this + 8 * a3;
  v14 = *(v13 + 25);
  if (a2 >= 15.0)
  {
    *(a4 + 81) = 0;
  }

  else
  {
    v15 = *(v13 + 23);
    v51 = *(this + v12);
    v16 = *(this + v5 + 21);
    v17 = *(this + 10);
    v18 = ((v9 * 0.02) * v7);
    *(a4 + 81) = v17 >= v18;
    if (v17 >= v18)
    {
      v53 = (v7 - v10);
      if (v10 >= v53)
      {
        v19 = 0;
        LODWORD(v23) = v9;
      }

      else
      {
        v48 = v5;
        v19 = 0;
        v20 = (1 << v11);
        v21 = 16 * v8;
        v55 = 16 * v6;
        v47 = v15;
        v22 = v16 + 4 * v9 * v10;
        v62 = &v15[4 * v9 * v10];
        v63 = (v9 - v10);
        v23 = v9;
        v50 = v10;
        *v61 = v10;
        v57 = v9;
        v58 = this;
        v52 = v10;
        v56 = v9;
        v54 = v7;
        do
        {
          if (v10 < v63)
          {
            v24 = v50;
            v59 = v51 + 4 * *v61 * v23;
            v60 = v22;
            do
            {
              if (*(v22 + 4 * v24))
              {
                v25 = (v59 + 4 * v24);
                v26 = *v25 / (*(this + 12) * 4.0);
                v27 = v25[1];
                v28 = (v24 << v11) + v26;
                if (v28 >= v21)
                {
                  v29 = v21;
                }

                else
                {
                  v29 = (v24 << v11) + v26;
                }

                if (v28 <= 0)
                {
                  v30 = 0;
                }

                else
                {
                  v30 = v29;
                }

                v31 = (v61[0] << v11) + (v27 / (*(this + 13) * 4.0));
                if (v31 >= v55)
                {
                  v32 = v55;
                }

                else
                {
                  v32 = v31;
                }

                if (v31 <= 0)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = v32;
                }

                v34 = v24 + 1;
                v35 = (v22 + 4 * (v24 + v23));
                v36 = *(v22 + 4 * (v24 - v9)) + *(v22 + 4 * (v24 - v9) - 4) + *(v22 + 4 * (v24 - v9) + 4) + *(v22 + 4 * v24 - 4) + *(v22 + 4 * (v24 + 1)) + *(v35 - 1) + *v35 + v35[1];
                v64 = v19 + 1;
                v37 = v20;
                SpatialMaskWeight = ma::MotionFieldAnalysis::GetSpatialMaskWeight(this, v24, v61[0], v9, v7);
                v20 = v37;
                if (v36 >= 8)
                {
                  v39 = 8;
                }

                else
                {
                  v39 = v36;
                }

                v40 = (SpatialMaskWeight * ma::MotionFieldAnalysis::GenerateFineForeground(float,int,ma::MotionResult *)::kEnergyTable[v39 & ~(v39 >> 31)]) * 0.125;
                *&v62[4 * v24] = v40;
                v41 = v33 + v37;
                if (v55 < v33 + v37)
                {
                  v41 = v55;
                }

                if (v55 <= v33)
                {
                  v7 = v54;
                  this = v58;
                  v19 = v64;
                  v9 = v56;
                }

                else
                {
                  v42 = 0;
                  v43 = v30 + v37;
                  if (v21 < v30 + v37)
                  {
                    v43 = v21;
                  }

                  v44 = 0.0;
                  v7 = v54;
                  this = v58;
                  v19 = v64;
                  v9 = v56;
                  do
                  {
                    if (v21 > v30)
                    {
                      v45 = v30;
                      do
                      {
                        v44 = v44 + v14[(v45 >> v11) + (v33 >> v11) * v56];
                        ++v42;
                        ++v45;
                      }

                      while (v45 < v43);
                    }

                    ++v33;
                  }

                  while (v33 < v41);
                  if (v42)
                  {
                    *&v62[4 * v24] = ((v44 / v42) * 0.55) + (v40 * 0.45);
                  }
                }

                v23 = v57;
                v22 = v60;
              }

              else
              {
                v34 = v24 + 1;
              }

              v24 = v34;
            }

            while (v34 != v63);
          }

          v22 += 4 * v23;
          ++*v61;
          v62 += 4 * v23;
          v10 = v52;
        }

        while (*v61 != v53);
        v5 = v48;
        v4 = a4;
        v15 = v47;
      }

      memcpy(v14, v15, 4 * v23 * v7);
      v46 = v19 >> 2;
      if (!v5)
      {
        v46 = v19;
      }

      *(v4 + 18) = v46;
      return;
    }
  }

  *(a4 + 12) = 0;
  *(a4 + 9) = 0;

  bzero(v14, 4 * v9 * v7);
}

BOOL ma::MotionFieldAnalysis::IsForegroundObject(ma::MotionFieldAnalysis *this, const CGRect *a2, const ma::MotionResult *a3)
{
  v5 = 0;
  v6 = (16 * *(this + 8));
  v7 = (16 * *(this + 9));
  while (1)
  {
    v8 = *(a3 + 23);
    v9 = v8 ? CFArrayGetCount(v8) : 0;
    if (v5 >= v9)
    {
      break;
    }

    if (*(*CFArrayGetValueAtIndex(*(a3 + 23), v5) + 72) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 23), v5);
      v11 = *ValueAtIndex;
      v12 = (*ValueAtIndex)[1];
      v27 = **ValueAtIndex;
      v28 = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[5];
      v31 = v11[4];
      v32 = v15;
      v29 = v13;
      v30 = v14;
      *&v13 = v6;
      ma::Object::ScaleBox(&v27, *&v13, v7);
      v35.origin.x = *(&v27 + 1);
      *&v35.origin.y = v28;
      *&v35.size.height = v29;
      v33 = CGRectIntersection(*a2, v35);
      if (!CGRectIsEmpty(v33))
      {
        return 1;
      }
    }

    ++v5;
  }

  v16 = 0;
  do
  {
    v17 = *(a3 + 24);
    if (v17)
    {
      Count = CFArrayGetCount(v17);
    }

    else
    {
      Count = 0;
    }

    v19 = v16 < Count;
    if (v16 >= Count)
    {
      break;
    }

    v20 = CFArrayGetValueAtIndex(*(a3 + 24), v16);
    v21 = *v20;
    v23 = (*v20)[4];
    v22 = (*v20)[5];
    v24 = (*v20)[3];
    v29 = (*v20)[2];
    v30 = v24;
    v31 = v23;
    v32 = v22;
    v25 = v21[1];
    v27 = *v21;
    v28 = v25;
    *&v25 = v6;
    ma::Object::ScaleBox(&v27, *&v25, v7);
    v36.origin.x = *(&v27 + 1);
    *&v36.origin.y = v28;
    *&v36.size.height = v29;
    v34 = CGRectIntersection(*a2, v36);
    ++v16;
  }

  while (CGRectIsEmpty(v34));
  return v19;
}

uint64_t ma::MotionFieldAnalysis::CalcOutlierResidual(uint64_t this, float *a2, int a3, float *a4, float *a5)
{
  v5 = *(this + 4 * a3 + 160);
  if (v5 < 1)
  {
    v13 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = this + 8 * a3;
    v8 = *(v7 + 80);
    v9 = *(v7 + 128);
    v10 = (v5 - 1) & 0xFFFFFFFE;
    v11 = 0.0;
    v12 = v8;
    v13 = 0.0;
    do
    {
      v14 = 0;
      v15 = 0.0;
      v16 = 0.0;
      do
      {
        v17 = a2[v14];
        v16 = v16 + (*(v12 + v14 * 4) * v17);
        v15 = v15 + (*(v8 + ((0x600000000 * v6 + 0x600000000) >> 30) + v14 * 4) * v17);
        ++v14;
      }

      while (v14 != 6);
      v18 = (v9 + 2 * v6);
      v19 = *v18;
      v20 = v18[1];
      v13 = (v13 + vabds_f32(v19, v16)) + vabds_f32(v20, v15);
      v11 = (v11 + ((v19 - v16) * (v19 - v16))) + ((v20 - v15) * (v20 - v15));
      v6 += 2;
      v12 += 48;
    }

    while (v6 < v5);
    v21 = v10 + 2;
    if (v10 != -2)
    {
      v13 = v13 / v21;
      v11 = fmax(((v11 / v21) - (v13 * v13)), 0.0);
    }
  }

  *a4 = v13;
  *a5 = v11;
  return this;
}

float ma::MotionFieldAnalysis::GetSpatialMaskWeight(ma::MotionFieldAnalysis *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = vcvt_f32_s32(__PAIR64__(a5, a4));
  v6 = vcvt_f32_s32(__PAIR64__(a3, a2));
  __asm { FMOV            V1.2S, #0.25 }

  v12 = vmul_f32(v5, _D1);
  __asm { FMOV            V4.2S, #3.0 }

  v14 = vmul_f32(vmul_f32(v5, _D4), _D1);
  v15 = vbsl_s8(vcgt_f32(v12, v6), v12, vand_s8(v14, vcgt_f32(v6, v14)));
  v16 = vceqz_f32(v15);
  v17 = v16.i8[4];
  v18 = v16.i8[0];
  if (v16.i32[0] & v16.i32[1])
  {
    return 1.0;
  }

  v20 = vmul_f32(v5, 0x3E0000003E000000);
  v21 = vsub_f32(v6, v15);
  if (v18)
  {
    v22 = vmuls_lane_f32(-v21.f32[1], v21, 1);
    v23 = v20.f32[1];
  }

  else
  {
    if ((v17 & 1) == 0)
    {
      v25 = vcvtq_f64_f32(v20);
      v26.i32[1] = v21.i32[1];
      v26.f32[0] = -v21.f32[0];
      v27 = vdivq_f64(vcvtq_f64_f32(vmul_f32(v21, v26)), vmulq_f64(vaddq_f64(v25, v25), v25));
      *v27.f64 = vsubq_f64(v27, vdupq_laneq_s64(v27, 1)).f64[0];
      return expf(*v27.f64);
    }

    v22 = -(v21.f32[0] * v21.f32[0]);
    v23 = v20.f32[0];
  }

  v24 = v22 / ((v23 + v23) * v23);
  return expf(v24);
}

BOOL ma::MotionFieldAnalysis::EstimateMotionParam(ma::MotionFieldAnalysis *this, float *a2, int a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = this + 160;
  v6 = *(this + a3 + 40);
  v7 = this + 8 * a3;
  v8 = *(v7 + 12);
  v9 = *(v7 + 14);
  v10 = *(v7 + 18);
  if (v6 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(this + a3 + 40);
    v13 = *(v7 + 12);
    do
    {
      if (*v13++)
      {
        ++v11;
      }

      --v12;
    }

    while (v12);
  }

  v15 = *(v7 + 10);
  v16 = *(v7 + 16);
  v17 = 4 * v6;
  bzero(*(v7 + 14), v17);
  bzero(v10, v17);
  v18 = *&v5[4 * a3];
  v19 = v11;
  v20 = 4 * v11;
  if (v18 >= 1)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      if (*(v8 + v21))
      {
        v23 = v22 < v19;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = 0;
        v25 = &v9[v22];
        do
        {
          *v25 = *(v15 + v24);
          v24 += 4;
          v25 = (v25 + v20);
        }

        while (v24 != 24);
        *(v10 + v22++) = *(v16 + 2 * v21);
      }

      ++v21;
      v15 += 24;
    }

    while (v21 != v18);
  }

  v49 = v10;
  __B = v9;
  v26 = 0;
  v27 = 0;
  v28 = *(this + 1);
  *(v28 + 80) = 0;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v29 = 1;
  do
  {
    v30 = __B;
    v31 = 4 * v27;
    v27 += v29;
    v32 = v29;
    do
    {
      vDSP_dotpr(&__B[v26 * v19], 1, v30, 1, (*(this + 1) + v31), v19);
      v31 += 4;
      v30 = (v30 + v20);
      --v32;
    }

    while (v32);
    ++v26;
    ++v29;
  }

  while (v26 != 6);
  memset(v54, 0, 84);
  *v52 = 0;
  ma::MotionFieldAnalysis::SymmetricSemiPositiveInv(this, *(this + 1), 6u, v54, *(this + 2), &v52[1], v52);
  if (*v52)
  {
    memset_pattern16(a2, &unk_1C9F63640, 0x18uLL);
    return 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = v53;
    v37 = v53;
    v38 = __B;
    do
    {
      v39 = 0;
      v40 = v35;
      v41 = v36;
      v42 = &v54[v35];
      do
      {
        v43 = v42[v39];
        *&v37[4 * v39] = v43;
        if (v34 != v39)
        {
          *v41 = v43;
        }

        ++v39;
        v41 += 6;
      }

      while (v34 + 1 != v39);
      ++v34;
      v35 = v40 + v39;
      v37 += 24;
      ++v36;
    }

    while (v34 != 6);
    for (i = 0; i != 24; i += 4)
    {
      vDSP_dotpr(v38, 1, v49, 1, (*(this + 2) + i), v19);
      v38 = (v38 + v20);
    }

    v45 = 0;
    v46 = a2;
    do
    {
      vDSP_dotpr(&v53[v45], 1, *(this + 2), 1, v46, 6uLL);
      v45 += 24;
      ++v46;
    }

    while (v45 != 144);
    v47 = 0;
    v48 = 0.0;
    do
    {
      v48 = v48 + fabsf(a2[v47++]);
    }

    while (v47 != 6);
    return v48 > 0.00001;
  }
}

uint64_t ma::MotionFieldAnalysis::CalcResidual(uint64_t this, float *a2, int a3, float *a4, float *a5)
{
  v5 = *(this + 4 * a3 + 160);
  if (v5 < 1)
  {
    v13 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = (this + 8 * a3);
    v9 = v8[10];
    v10 = v8[12];
    v11 = v8[16];
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      if (*(v10 + v6))
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v15 = v15 + (*(v9 + v14 * 4) * a2[v14]);
          ++v14;
        }

        while (v14 != 6);
        v16 = *(v11 + 2 * v6);
        v13 = v13 + vabds_f32(v16, v15);
        v12 = v12 + ((v16 - v15) * (v16 - v15));
        ++v7;
      }

      if (*(v10 + (v6 | 1)))
      {
        v17 = 0.0;
        v18 = a2;
        for (i = 6; i != 12; ++i)
        {
          v20 = *v18++;
          v17 = v17 + (*(v9 + 4 * i) * v20);
        }

        v21 = *(v11 + 2 * (v6 | 1));
        v13 = v13 + vabds_f32(v21, v17);
        v12 = v12 + ((v21 - v17) * (v21 - v17));
        ++v7;
      }

      v6 += 2;
      v9 += 48;
    }

    while (v6 < v5);
    if (v7)
    {
      v13 = v13 / v7;
      v12 = fmax(((v12 / v7) - (v13 * v13)), 0.0);
    }
  }

  *a4 = v13;
  *a5 = v12;
  return this;
}

uint64_t ma::MotionFieldAnalysis::UpdateWeightMatrix(ma::MotionFieldAnalysis *this, float *a2, int a3, float a4, float a5)
{
  v5 = *(this + a3 + 40);
  if (a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  v9 = (this + 8 * a3);
  v10 = v9[10];
  v11 = v9[16];
  v12 = v9[12];
  v13 = v9[21];
  v14 = *(this + 8) << (a3 != 0);
  v15 = v10;
  do
  {
    v16 = 0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = a2[v16];
      v18 = v18 + (*(v15 + v16 * 4) * v19);
      v17 = v17 + (*(v10 + ((0x600000000 * v7 + 0x600000000) >> 30) + v16 * 4) * v19);
      ++v16;
    }

    while (v16 != 6);
    v20 = vabds_f32(*(v11 + 2 * v7), v18) + vabds_f32(*(v11 + 2 * (v7 | 1)), v17);
    v21 = v20 <= a4;
    if (v20 > a4)
    {
      v8 = v8;
    }

    else
    {
      v8 = (v8 + 1);
    }

    *(v12 + (v7 | 1)) = v21;
    *(v12 + v7) = v21;
    if (v20 > a5)
    {
      *(v13 + 4 * ((((*(v10 + 24 * v7 + 16) / *(this + 12)) + ((1 << v6) >> 1)) >> v6) + (((*(v10 + 24 * v7 + 20) / *(this + 13)) + ((1 << v6) >> 1)) >> v6) * v14)) = 1;
    }

    v7 += 2;
    v15 += 48;
  }

  while (v7 < v5);
  return v8;
}

uint64_t ma::MotionFieldAnalysis::ApplySmoothnessConstraint(uint64_t this, int a2, int a3, int a4, int a5, unsigned __int16 *a6, unsigned __int16 *a7, unsigned __int16 *a8, int *a9)
{
  v9 = 5.0;
  if (a5)
  {
    v9 = 2.0;
  }

  v10 = 72;
  if (a5)
  {
    v10 = 64;
  }

  if (!a9[a2])
  {
    v11 = *(this + v10);
    v12 = v11 + 4 * a4 * a3;
    v13 = (v12 + 4 * a2);
    v14 = *v13;
    v15 = v13[1];
    v16 = a5 != 0;
    v17 = sqrtf((v14 * v14 + v15 * v15)) + 0.1;
    v18 = a5;
    v19 = ~a4 + a2;
    for (i = -1; i != 2; ++i)
    {
      v21 = 3;
      v22 = v19;
      do
      {
        v23 = v22;
        if (a9[v22])
        {
          v24 = (v12 + 4 * v22);
          v25 = (v15 - v24[1]);
          v26 = sqrtf((v25 * v25) + ((v14 - *v24) * (v14 - *v24))) / v17;
          v27 = a6[a2] - a6[v23];
          if (v27 < 0)
          {
            v27 = a6[v23] - a6[a2];
          }

          v28 = a7[a2] - a7[v23];
          if (v28 < 0)
          {
            v28 = a7[v23] - a7[a2];
          }

          v29 = a8[a2] - a8[v23];
          if (v29 < 0)
          {
            v29 = a8[v23] - a8[a2];
          }

          v30 = (v28 + v27 + v29) / *(&ma::MotionFieldAnalysis::ApplySmoothnessConstraint(int,int,int,int,unsigned short *,unsigned short *,unsigned short *,int *)::kPixelCount + v18);
          if (v26 < 1.0 && v30 < 10.0)
          {
            v32 = (v11 + 4 * (a2 + (*(this + 32) << v16) * a3));
            v33 = *v32;
            if (v33 < 0)
            {
              v33 = -v33;
            }

            if (v33 <= 0xF9)
            {
              v34 = v32[1];
              if (v34 < 0)
              {
                v34 = -v34;
              }

              if (v34 < 0xFA)
              {
                goto LABEL_27;
              }
            }
          }

          if (v30 < v9)
          {
LABEL_27:
            a9[v23] = 0;
          }
        }

        v22 = v23 + 1;
        --v21;
      }

      while (v21);
      v19 += a4;
    }
  }

  return this;
}

uint64_t ma::MotionFieldAnalysis::RemoveUnreliable8x8Outliers(ma::MotionFieldAnalysis *this)
{
  v1 = *(this + 9);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(this + 22);
    v5 = *(this + 23);
    v6 = *(this + 8);
    v7 = 2 * v1;
    if (2 * v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * v6;
    }

    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      if (v6 >= 1)
      {
        v10 = 0;
        v11 = v4 + 4 * v3;
        do
        {
          if (*(v11 + 4 * v10))
          {
            *(v11 + 4 * v10) = *(v5 + 4 * (*(this + 8) * (v2 >> 1) + (v10 >> 1))) > 0.15;
          }

          ++v10;
        }

        while (v8 != v10);
        v3 += v10;
      }

      ++v2;
    }

    while (v2 != v9);
  }

  return 0;
}

float *ma::MotionFieldAnalysis::SymmetricSemiPositiveInv(float *this, float *a2, unsigned int a3, float *a4, float *a5, int *a6, int *a7)
{
  *a7 = 0;
  if (a3 <= 0)
  {
    *a7 = 1;
  }

  else
  {
    v11 = a3 + a3 * a3;
    v12 = (v11 >> 1);
    this = ma::MotionFieldAnalysis::CholeskyFactorization(this, a2, a3, v11 >> 1, a4, a6, a7);
    if (!*a7)
    {
      v13 = a4 - 1;
      v14 = a5 - 1;
      v15 = 1;
      v16 = a3;
      v17 = v12;
      do
      {
        if (v13[v17] == 0.0)
        {
          if (v16 <= a3)
          {
            v18 = v15;
            v19 = v16;
            LODWORD(this) = v17;
            do
            {
              v13[this] = 0.0;
              this = (this + v19++);
              --v18;
            }

            while (v18);
          }
        }

        else
        {
          v20 = v15;
          v21 = v16;
          v22 = v17;
          v23 = a3;
          v24 = v12;
          this = v12;
          if (v16 <= a3)
          {
            do
            {
              v14[v21] = v13[v22];
              v22 += v21++;
              --v20;
            }

            while (v20);
            v23 = a3;
            v24 = v12;
            this = v12;
          }

          while (1)
          {
            v25 = 0.0;
            if (v16 == v23)
            {
              v25 = 1.0 / v14[v16];
            }

            if (v16 >= a3)
            {
              v28 = v24;
            }

            else
            {
              v26 = a3;
              v27 = 1 - a3;
              v28 = v24;
              do
              {
                --v26;
                v29 = v28 - 1;
                v25 = v25 - (a5[v26] * a4[v28 - 1]);
                v28 += v27;
                if (this >= v29)
                {
                  v28 = v29;
                }

                ++v27;
              }

              while (v16 < v26);
            }

            v13[v28] = v25 / v14[v16];
            if (v16 >= v23)
            {
              break;
            }

            this = (this - v23--);
            --v24;
          }
        }

        v17 -= v16;
        ++v15;
      }

      while (v16-- > 1);
    }
  }

  return this;
}

void ma::MotionFieldAnalysis::EstimateSuppressedEst(ma::MotionFieldAnalysis *this, float *a2, unsigned int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v9 = 1;
  do
  {
    if (v8 == a3)
    {
      v7 += a3 + 1;
    }

    else
    {
      v10 = 4 * v7;
      v11 = a3;
      v12 = v9;
      do
      {
        if (v11)
        {
          v38[v6++] = *(*(this + 1) + v10);
        }

        v10 += 4;
        ++v7;
        --v11;
        --v12;
      }

      while (v12);
    }

    ++v8;
    ++v9;
  }

  while (v8 != 6);
  v33 = 0;
  ma::MotionFieldAnalysis::SymmetricSemiPositiveInv(this, v38, 5u, v37, v35, &v33 + 1, &v33);
  if (v33)
  {
    memset_pattern16(__b, &unk_1C9F63640, 0x14uLL);
    v13 = a3;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = v36;
    v17 = v36;
    do
    {
      v18 = 0;
      v19 = v15;
      v20 = v16;
      v21 = &v37[v15];
      do
      {
        v22 = v21[v18];
        *&v17[4 * v18] = v22;
        if (v14 != v18)
        {
          *v20 = v22;
        }

        ++v18;
        v20 += 5;
      }

      while (v14 + 1 != v18);
      ++v14;
      v15 = v19 + v18;
      v17 += 20;
      ++v16;
    }

    while (v14 != 5);
    v23 = 0;
    v24 = 0;
    v13 = a3;
    do
    {
      if (4 * a3 != v23)
      {
        v35[v24++] = *(*(this + 2) + v23);
      }

      v23 += 4;
    }

    while (v23 != 24);
    v25 = 0;
    v26 = v36;
    do
    {
      v27 = 0;
      v28 = 0.0;
      do
      {
        v28 = v28 + (*&v26[v27 * 4] * v35[v27]);
        ++v27;
      }

      while (v27 != 5);
      __b[v25++] = v28;
      v26 += 20;
    }

    while (v25 != 5);
  }

  v29 = 0;
  v30 = 0;
  v31 = 4 * v13;
  do
  {
    v32 = 0.0;
    if (v31 != v29)
    {
      v32 = __b[v30++];
    }

    a2[v29 / 4] = v32;
    v29 += 4;
  }

  while (v29 != 24);
}

uint64_t ma::MotionFieldAnalysis::CalcMotionParamDiff(uint64_t this, float *a2, ma::MotionResult *a3)
{
  v3 = 0;
  v4 = this + 632;
  v5 = (a3 + 124);
  do
  {
    v6 = a2[v3];
    *(v5 - 6) = v6;
    v7 = *(v4 + 4 * v3);
    v8 = v6 - v7;
    v9 = ma::MotionFieldAnalysis::CalcMotionParamDiff(float *,ma::MotionResult *)::truncate_threshold[v3];
    v10 = vabds_f32(v6, v7);
    v11 = -v9;
    if (v8 <= 0.0)
    {
      v11 = ma::MotionFieldAnalysis::CalcMotionParamDiff(float *,ma::MotionResult *)::truncate_threshold[v3];
    }

    v12 = v8 + v11;
    if (v10 <= v9)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    *v5++ = v13;
    *(v4 + 4 * v3) = a2[v3];
    ++v3;
  }

  while (v3 != 6);
  return this;
}

float *ma::MotionFieldAnalysis::CholeskyFactorization(ma::MotionFieldAnalysis *this, float *a2, int a3, signed int a4, float *a5, int *a6, int *a7)
{
  *a7 = 0;
  *a6 = 0;
  if (a3 < 1)
  {
    v7 = 1;
    goto LABEL_24;
  }

  if (a4 < ((a3 + a3 * a3) >> 1))
  {
    v7 = 3;
LABEL_24:
    *a7 = v7;
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = 1;
  v13 = a3;
  while (2)
  {
    v14 = 0;
    v15 = 0;
    result = &a5[v11 - 1];
    v17 = v10;
    v18 = v10 + v9;
    v10 += v12;
    v19 = a2[v10 - 1] * 1.0e-18;
    v20 = 1;
    for (i = -1; ; ++i)
    {
      v22 = a2[v17];
      if (v20 < 2)
      {
        v29 = v15;
      }

      else
      {
        v23 = v14;
        v24 = &a5[v11 - 1];
        v25 = &a5[v15];
        do
        {
          v26 = *v25++;
          v27 = v26;
          v28 = *v24++;
          v22 = v22 - (v27 * v28);
          --v23;
        }

        while (v23);
        v29 = v15 + 1 + i;
      }

      if (v12 == v20)
      {
        break;
      }

      v30 = a5[v29];
      if (v30 == 0.0)
      {
        a5[v17] = 0.0;
        if (fabsf(v19 * a2[v17]) < (v22 * v22))
        {
          goto LABEL_23;
        }
      }

      else
      {
        a5[v17] = v22 / v30;
      }

      ++v17;
      v15 += v20++;
      ++v14;
    }

    if (fabsf(v22) <= fabsf(a2[v18] * 0.000000001))
    {
      a5[v18] = 0.0;
      *a6 = ++v8;
    }

    else
    {
      if (v22 < 0.0)
      {
LABEL_23:
        v7 = 2;
        goto LABEL_24;
      }

      a5[v18] = sqrtf(v22);
    }

    v11 += v12++;
    if (++v9 != v13)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,CGRect>,std::__tree_node<std::__value_type<int,CGRect>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          v10 = *(v9 + 5);
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 5) = v10;
          std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__node_insert_multi(v5, v8);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__emplace_multi<std::pair<int const,CGRect> const&>();
  }

  return result;
}

void sub_1C9E70FDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<unsigned long>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,CGRect>,std::__map_value_compare<int,std::__value_type<int,CGRect>,std::less<int>,true>,std::allocator<std::__value_type<int,CGRect>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<unsigned long>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<unsigned long>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1C9E715D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHMIAnalysisServiceClass_block_invoke(uint64_t a1)
{
  HomeAILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HMIAnalysisService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHMIAnalysisServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHMIAnalysisServiceClass_block_invoke_cold_1();
    HomeAILibrary();
  }
}

void HomeAILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!HomeAILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __HomeAILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E83517D8;
    v3 = 0;
    HomeAILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!HomeAILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __HomeAILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HomeAILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getHMITaskServiceClass_block_invoke(uint64_t a1)
{
  HomeAILibrary();
  result = objc_getClass("HMITaskService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHMITaskServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL22getHMITaskServiceClassv_block_invoke_cold_1();
    return [(VCPProtoImagePetsResult *)v3 resultFromLegacyDictionary:v4, v5];
  }

  return result;
}

void sub_1C9E734E8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C9E740C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E74B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 80), 8);
  _Unwind_Resume(a1);
}

void AUOutputBL::AUOutputBL(AUOutputBL *this, const CAStreamBasicDescription *a2, unsigned int a3)
{
  v3 = *&a2->var7;
  v4 = *&a2->var3;
  *&this->var0.var0 = *&a2->var0;
  *&this->var0.var3 = v4;
  *&this->var0.var7 = v3;
  this->var1 = 0;
  this->var2 = 0;
  *&this->var3 = 0;
  this->var5 = a3;
  if (this->var0.var1 == 1819304813 && (this->var0.var2 & 0x20) != 0)
  {
    var6 = this->var0.var6;
  }

  else
  {
    var6 = 1;
  }

  this->var3 = var6;
  operator new[]();
}

void AUOutputBL::~AUOutputBL(AUOutputBL *this)
{
  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x1CCA95C10](var1, 0x1000C8077774924);
  }

  var2 = this->var2;
  if (var2)
  {
    MEMORY[0x1CCA95C10](var2, 0x1000C8077774924);
  }
}

AUOutputBL *AUOutputBL::Prepare(AUOutputBL *this, int a2, int a3)
{
  if (this->var0.var1 == 1819304813 && (this->var0.var2 & 0x20) != 0)
  {
    var6 = 1;
  }

  else
  {
    var6 = this->var0.var6;
  }

  var1 = this->var1;
  if (var1)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v10 = this->var0.var5 * a2;
    var3 = this->var3;
    var4 = this->var4;
    if (v10 * var3 > var4 * var3)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -10874;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    var2 = this->var2;
    var2->mNumberBuffers = var3;
    if (var3)
    {
      mBuffers = var2->mBuffers;
      do
      {
        mBuffers->mData = var1;
        var1 += var4;
        mBuffers->mNumberChannels = var6;
        mBuffers->mDataByteSize = v10;
        ++mBuffers;
        --var3;
      }

      while (var3);
    }
  }

  else
  {
    v6 = this->var3;
    v7 = this->var2;
    v7->mNumberBuffers = v6;
    if (v6)
    {
      v8 = v7->mBuffers;
      v9 = this->var0.var5 * a2;
      do
      {
        v8->mNumberChannels = var6;
        v8->mDataByteSize = v9;
        v8->mData = 0;
        ++v8;
        --v6;
      }

      while (v6);
    }
  }

  return this;
}

AUOutputBL *AUOutputBL::Allocate(AUOutputBL *this, int a2)
{
  v2 = this;
  if (a2)
  {
    v3 = this->var0.var5 * a2;
    var3 = this->var3;
    if (v3 > var3 * this->var4)
    {
      if (var3 > 1)
      {
        v3 = ((v3 & 0xFFFFFFF0) + 16) | 0x10;
      }

      this->var4 = v3;
      operator new[]();
    }
  }

  else
  {
    this = this->var1;
    if (this)
    {
      this = MEMORY[0x1CCA95C10](this, 0x1000C8077774924);
      v2->var1 = 0;
    }

    v2->var4 = 0;
    v2->var5 = 0;
  }

  return this;
}

void sub_1C9E77E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, const void *a45)
{
  CF<__CVBuffer *>::~CF(&a30);
  _Block_object_dispose(&a32, 8);

  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v46 - 224), 8);

  CF<__CVBuffer *>::~CF(&a45);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

ma::Segment *ma::SceneSegment::SceneSegment(ma::SceneSegment *this)
{
  result = ma::Segment::Segment(this);
  *result = &unk_1F4969620;
  *(result + 9) = 0;
  *(result + 10) = 0;
  *(result + 88) = 0;
  return result;
}

void ma::SceneSegment::SceneSegment(ma::SceneSegment *this, int a2, const ma::CameraMotionSegment *a3)
{
  ma::Segment::Segment(this, a3);
  *v5 = &unk_1F4969620;
  *(v5 + 72) = *(a3 + 3) + *(a3 + 4) / 2;
  *(v5 + 76) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = *(a3 + 72);
  *(v5 + 8) = a2;
}

double ma::SceneSegment::Merge(ma::Segment *this, const ma::Segment *a2)
{
  v2 = *(this + 21);
  v3 = *(this + 4);
  v4 = *(a2 + 21);
  v5 = *(a2 + 4);
  if (v2 <= v4)
  {
    v6 = a2;
  }

  else
  {
    v6 = this;
  }

  *(this + 18) = *(v6 + 18);
  v7 = 0.0;
  v8 = 0.0;
  if (v5 + v3)
  {
    v8 = ((v2 * v3) + (v4 * v5)) / (v5 + v3);
  }

  v9 = 1.0;
  if (v8 < 1.0)
  {
    v9 = v8;
  }

  if (v8 > 0.0)
  {
    v7 = v9;
  }

  *(this + 21) = v7;
  *(this + 88) = 0;
  return ma::Segment::Merge(this, a2);
}

void sub_1C9E78CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose((v31 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *___ZL44getPFLGeneratePhotosFaceWithOptionsSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = PhotosFaceLayoutLibrary();
  result = dlsym(v2, "PFLGeneratePhotosFaceWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhotosFaceLayoutLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosFaceLayoutLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL27PhotosFaceLayoutLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8351868;
    v5 = 0;
    PhotosFaceLayoutLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotosFaceLayoutLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!PhotosFaceLayoutLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t ___ZL27PhotosFaceLayoutLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PhotosFaceLayoutLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL49getPFLCancelGeneratingPhotosFaceForAssetSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = PhotosFaceLayoutLibrary();
  result = dlsym(v2, "PFLCancelGeneratingPhotosFaceForAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VCPProtoEmbeddingResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v26[0] & 0x7F) << v17;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_38:
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        v15 = PBReaderReadData();
        v16 = *(a1 + 8);
        *(a1 + 8) = v15;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong((a1 + 16), v14);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E7EF44(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_1C9E7FC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void sub_1C9E80A6C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void *matrix_inplace_transpose(float *a1, int a2, int a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1EEE9AC00]();
  v8 = v10 - v7;
  vDSP_mtrans(v6, 1, (v10 - v7), 1, a3, a2);
  return memcpy(a1, v8, 4 * a2 * a3);
}

float32_t GetEulerAngleFromMatrix(float *a1, float32x2_t *a2)
{
  v9 = atan2f(a1[3], *a1);
  v4 = a1[7];
  v5 = a1[8];
  v8 = atan2f(a1[6], sqrtf((v5 * v5) + (v4 * v4)));
  v6 = atan2f(v4, v5);
  *a2 = vcvt_f32_f64(vmulq_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v8), LODWORD(v9))), vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL)));
  result = v6 / 3.14159265 * 180.0;
  a2[1].f32[0] = result;
  return result;
}

void GetRotationMatrixFromEulerAngle(float *a1, float *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = (*a1 / 180.0) * 3.14159265;
  v4 = (a1[1] / 180.0) * 3.14159265;
  v5 = (a1[2] / 180.0) * 3.14159265;
  v19 = xmmword_1C9F60530;
  v6 = __sincosf_stret(v5);
  cosval = v6.__cosval;
  v21 = -v6.__sinval;
  v22 = 0;
  v23 = v6;
  v7 = __sincosf_stret(v4);
  __B[0] = v7.__cosval;
  __B[1] = 0.0;
  __B[2] = -v7.__sinval;
  v14 = 0x3F80000000000000;
  v15 = 0;
  sinval = v7.__sinval;
  v17 = 0;
  v18 = v7.__cosval;
  v8 = __sincosf_stret(v3);
  __A[0] = v8.__cosval;
  __A[1] = -v8.__sinval;
  __A[2] = 0.0;
  v11 = v8;
  v12 = xmmword_1C9F614E0;
  vDSP_mmul(__A, 1, __B, 1, __C, 1, 3uLL, 3uLL, 3uLL);
  vDSP_mmul(__C, 1, &v19, 1, a2, 1, 3uLL, 3uLL, 3uLL);
}

float CombineRotAndTransMat2Proj(float *a1, float *a2, float *a3)
{
  v3 = *a1;
  a3[2] = a1[2];
  *a3 = v3;
  v4 = *(a1 + 3);
  a3[6] = a1[5];
  *(a3 + 2) = v4;
  v5 = *(a1 + 3);
  a3[10] = a1[8];
  *(a3 + 4) = v5;
  a3[3] = *a2;
  a3[7] = a2[1];
  result = a2[2];
  a3[11] = result;
  return result;
}

void sub_1C9E81850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getPISegmentationClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPISegmentationClass(void)::softClass;
  v7 = getPISegmentationClass(void)::softClass;
  if (!getPISegmentationClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL22getPISegmentationClassv_block_invoke;
    v3[3] = &unk_1E834C0F0;
    v3[4] = &v4;
    ___ZL22getPISegmentationClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C9E81A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9E81FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void sub_1C9E825E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

Class ___ZL22getPISegmentationClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PhotoImagingLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL23PhotoImagingLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83518F8;
    v6 = 0;
    PhotoImagingLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PhotoImagingLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PISegmentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL22getPISegmentationClassv_block_invoke_cold_1();
  }

  getPISegmentationClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL23PhotoImagingLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1C9E82C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MADTextEmbeddingSafety;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9E83C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t VCPProtoAudioFusedVideoEmbeddingResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v26[0] & 0x7F) << v17;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_38:
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        v15 = PBReaderReadData();
        v16 = *(a1 + 8);
        *(a1 + 8) = v15;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong((a1 + 16), v14);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E86B14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C9E88C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void LkFsMeasure::LkFsMeasure(LkFsMeasure *this, unsigned int a2, unsigned int a3, int64_t a4, BOOL a5)
{
  this->var0 = a2;
  this->var1 = a3;
  this->var2 = a4;
  this->var3 = a5;
  this->var4 = 0;
  this->var5 = 0;
  *&this->var6 = 0u;
  *&this->var8 = 0u;
  *&this->var10 = 0u;
  *(&this->var11 + 4) = 0u;
  *&this->var16 = 0u;
  *&this->var18 = 0u;
  this->var20 = 0;
  LkFsMeasure::Initialize(this);
}

void LkFsMeasure::~LkFsMeasure(LkFsMeasure *this)
{
  var16 = this->var16;
  if (var16)
  {
    MEMORY[0x1CCA95C10](var16, 0x1000C8052888210);
  }

  var17 = this->var17;
  if (var17)
  {
    MEMORY[0x1CCA95C10](var17, 0x1000C8052888210);
  }

  var18 = this->var18;
  if (var18)
  {
    MEMORY[0x1CCA95C10](var18, 0x1000C8052888210);
  }

  var20 = this->var20;
  if (var20)
  {
    DspLibBiquad::~DspLibBiquad(var20);
    MEMORY[0x1CCA95C50]();
  }

  var19 = this->var19;
  if (var19)
  {
    DspLibBiquad::~DspLibBiquad(var19);
    MEMORY[0x1CCA95C50]();
  }
}

void LkFsMeasure::Reset(LkFsMeasure *this)
{
  var19 = this->var19;
  if (var19)
  {
    DspLibBiquad::resetState(var19);
  }

  var20 = this->var20;
  if (var20)
  {
    DspLibBiquad::resetState(var20);
  }

  this->var4 = 0;
  this->var5 = 0;
  *&this->var6 = 0u;
  *&this->var8 = 0u;
  this->var11 = this->var10;

  bzero(&this->var12, 0x2DCuLL);
}

double LkFsMeasure::Process(LkFsMeasure *this, const AudioBufferList *a2, int64_t a3, uint64_t a4)
{
  if (a3)
  {
    mNumberBuffers = a2->mNumberBuffers;
    if (mNumberBuffers == this->var0)
    {
      v6 = a3;
      if (this->var2 >= a3)
      {
        if (mNumberBuffers)
        {
          v7 = 0;
          v8 = 0;
          do
          {
            if (v8 != 3 && a3 >= 1)
            {
              v9 = (a2->mBuffers[v8].mData + 4 * a4);
              v10 = &this->var16[v7];
              v11 = a3;
              do
              {
                v12 = *v9++;
                *v10 = v12;
                v10 += mNumberBuffers;
                --v11;
              }

              while (v11);
            }

            ++v8;
            ++v7;
          }

          while (v8 != mNumberBuffers);
        }

        if (a3 >= 1)
        {
          var15 = this->var15;
          var11 = this->var11;
          v15 = a3;
          do
          {
            if (v15 >= var11)
            {
              v16 = var11;
            }

            else
            {
              v16 = v15;
            }

            DspLibBiquad::biquadProcess(this->var19, &this->var16[(v6 - v15) * mNumberBuffers], this->var18, v16);
            DspLibBiquad::biquadProcess(this->var20, this->var18, &this->var17[(this->var12 * mNumberBuffers)], v16);
            this->var12 += v16;
            v17 = this->var11;
            var11 = v17 - v16;
            this->var11 = v17 - v16;
            if (v17 == v16)
            {
              if (mNumberBuffers)
              {
                v18 = 0;
                do
                {
                  var14 = this->var14;
                  var15[this->var14][v18] = 0.0;
                  if (v18 != 3)
                  {
                    vDSP_svesq(&this->var17[v18], mNumberBuffers, &var15[var14][v18], this->var10);
                  }

                  ++v18;
                }

                while (mNumberBuffers != v18);
              }

              v20 = vadd_s32(*&this->var13, 0x100000001);
              v21 = v20.u32[1];
              *&this->var13 = v20;
              LODWORD(v22) = v20.i32[0];
              if (v20.i32[0] >= 4u)
              {
                v23 = 4;
              }

              else
              {
                v23 = v20.u32[0];
              }

              if (v20.i32[1] >= v23)
              {
                v24 = v23;
              }

              else
              {
                v24 = v20.u32[1];
              }

              if (v24)
              {
                v25 = 0;
                v26 = v20.i32[1] - v24;
                v27 = 0.0;
                do
                {
                  if (mNumberBuffers)
                  {
                    v28 = var15[v26];
                    v29 = mNumberBuffers;
                    v30 = &cChannelWeights;
                    do
                    {
                      v31 = *v28++;
                      v32 = v31;
                      v33 = *v30++;
                      v27 = v27 + (v32 * v33);
                      --v29;
                    }

                    while (v29);
                  }

                  ++v25;
                  ++v26;
                }

                while (v25 != v24);
              }

              else
              {
                v27 = 0.0;
              }

              if (v21 >= v23)
              {
                v6 = a3;
              }

              else
              {
                v34 = 0;
                v35 = (v23 - v24);
                v36 = v24 - v23 + 30;
                v6 = a3;
                do
                {
                  if (mNumberBuffers)
                  {
                    v37 = var15[v36];
                    v38 = mNumberBuffers;
                    v39 = &cChannelWeights;
                    do
                    {
                      v40 = *v37++;
                      v41 = v40;
                      v42 = *v39++;
                      v27 = v27 + (v41 * v42);
                      --v38;
                    }

                    while (v38);
                  }

                  ++v34;
                  ++v36;
                }

                while (v34 != v35);
              }

              var11 = this->var10;
              v43 = v27 / (var11 * v23);
              this->var6 = v43;
              if (v43 > this->var7)
              {
                this->var7 = v43;
              }

              if (this->var3)
              {
                if (v22 >= 0x1E)
                {
                  v22 = 30;
                }

                else
                {
                  v22 = v22;
                }

                if (v21 >= v22)
                {
                  v44 = v22;
                }

                else
                {
                  v44 = v21;
                }

                if (v44)
                {
                  v45 = 0;
                  v46 = v21 - v44;
                  v47 = 0.0;
                  do
                  {
                    if (mNumberBuffers)
                    {
                      v48 = var15[v46];
                      v49 = mNumberBuffers;
                      v50 = &cChannelWeights;
                      do
                      {
                        v51 = *v48++;
                        v52 = v51;
                        v53 = *v50++;
                        v47 = v47 + (v52 * v53);
                        --v49;
                      }

                      while (v49);
                    }

                    ++v45;
                    ++v46;
                  }

                  while (v45 != v44);
                }

                else
                {
                  v47 = 0.0;
                }

                if (v21 < v22)
                {
                  v54 = 0;
                  v55 = (v22 - v44);
                  v56 = v44 - v22 + 30;
                  do
                  {
                    if (mNumberBuffers)
                    {
                      v57 = var15[v56];
                      v58 = mNumberBuffers;
                      v59 = &cChannelWeights;
                      do
                      {
                        v60 = *v57++;
                        v61 = v60;
                        v62 = *v59++;
                        v47 = v47 + (v61 * v62);
                        --v58;
                      }

                      while (v58);
                    }

                    ++v54;
                    ++v56;
                  }

                  while (v54 != v55);
                }

                v63 = v47 / (var11 * v22);
                this->var8 = v63;
                if (v63 > this->var9)
                {
                  this->var9 = v63;
                }
              }

              if (v21 >= 0x1E)
              {
                this->var14 = 0;
              }

              this->var12 = 0;
              this->var11 = var11;
            }

            v64 = v15 <= v16;
            v15 -= v16;
          }

          while (!v64);
        }
      }
    }
  }

  return this->var6;
}

double LkFsMeasure::ComputeProgramLoudnessFromBlockEnergies(uint64_t *a1, double *a2)
{
  if (a2)
  {
    *a2 = -INFINITY;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v33, *a1, a1[1], (a1[1] - *a1) >> 3);
  __src = 0;
  v31 = 0;
  v32 = 0;
  v4 = v33;
  v3 = v34;
  if (v34 == v33)
  {
    v28 = -INFINITY;
    if (!v33)
    {
      return v28;
    }

    goto LABEL_33;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = v4[v6];
    if (v8 > 0.00000011724653)
    {
      if (v5 >= v32)
      {
        v9 = __src;
        v10 = v5 - __src;
        v11 = (v5 - __src) >> 3;
        v12 = v11 + 1;
        if ((v11 + 1) >> 61)
        {
          std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v32 - __src;
        if ((v32 - __src) >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v14);
        }

        v15 = (v5 - __src) >> 3;
        v16 = (8 * v11);
        v17 = (8 * v11 - 8 * v15);
        *v16 = v8;
        v5 = v16 + 1;
        memcpy(v17, v9, v10);
        v18 = __src;
        __src = v17;
        v31 = v5;
        v32 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v5++ = v8;
      }

      v31 = v5;
      v7 = v7 + v8;
      v4 = v33;
      v3 = v34;
    }

    ++v6;
  }

  while (v6 < v3 - v4);
  v19 = __src;
  if (v5 == __src)
  {
    goto LABEL_30;
  }

  v20 = v7 / ((v5 - __src) >> 3) * 0.1;
  if (a2)
  {
    v21 = v20;
    *a2 = log10f(v21) * 10.0 + -0.691;
  }

  v22 = 0;
  v23 = 0.0;
  v24 = v19;
  do
  {
    v25 = *v24++;
    v26 = v23 + v25;
    if (v25 > v20)
    {
      v23 = v26;
      ++v22;
    }
  }

  while (v24 != v5);
  if (!v22)
  {
LABEL_30:
    v28 = -INFINITY;
    if (!v19)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v27 = v23 / v22;
  v28 = log10f(v27) * 10.0 + -0.691;
  if (v19)
  {
LABEL_31:
    v31 = v19;
    operator delete(v19);
    v4 = v33;
  }

LABEL_32:
  if (v4)
  {
LABEL_33:
    v34 = v4;
    operator delete(v4);
  }

  return v28;
}

void sub_1C9E8B470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C9E8B500(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9E8B650(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t MediaAnalysisEnableDatabaseLog()
{
  v0 = +[VCPLogManager sharedLogManager];
  v1 = [v0 enableDatabaseLog];

  return v1;
}

void __VCPLogInstance_block_invoke()
{
  v0 = os_log_create("com.apple.mediaanalysis", "common");
  v1 = VCPLogInstance::log;
  VCPLogInstance::log = v0;
}

id VCPPersistentLogInstance()
{
  if (VCPPersistentLogInstance::token != -1)
  {
    VCPPersistentLogInstance_cold_1();
  }

  v1 = VCPPersistentLogInstance::log;

  return v1;
}

void __VCPPersistentLogInstance_block_invoke()
{
  v0 = os_log_create("com.apple.mediaanalysis", "persistent");
  v1 = VCPPersistentLogInstance::log;
  VCPPersistentLogInstance::log = v0;
}

id VCPCancelBGSTLogInstance()
{
  if (VCPCancelBGSTLogInstance::token != -1)
  {
    VCPCancelBGSTLogInstance_cold_1();
  }

  v1 = VCPCancelBGSTLogInstance::log;

  return v1;
}

void __VCPCancelBGSTLogInstance_block_invoke()
{
  v0 = os_log_create("com.apple.mediaanalysis", "cancelBGST");
  v1 = VCPCancelBGSTLogInstance::log;
  VCPCancelBGSTLogInstance::log = v0;
}

uint64_t VCPProtoMovieSummaryResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(VCPProtoTimeRange);
          objc_storeStrong((a1 + 32), v23);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v23, a2))
          {
LABEL_52:

            return 0;
          }

          goto LABEL_43;
        }

        if (v13 == 2)
        {
          LODWORD(v27) = 0;
          v21 = [a2 position] + 4;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v27;
          goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = objc_alloc_init(VCPProtoVideoKeyFrame);
            objc_storeStrong((a1 + 16), v23);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !VCPProtoVideoKeyFrameReadFrom(v23, a2))
            {
              goto LABEL_52;
            }

            goto LABEL_43;
          case 5:
            v23 = objc_alloc_init(VCPProtoBounds);
            objc_storeStrong((a1 + 24), v23);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !VCPProtoBoundsReadFrom(v23, a2))
            {
              goto LABEL_52;
            }

LABEL_43:
            PBReaderRecallMark();

            goto LABEL_50;
          case 4:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v27) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_47;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
            *(a1 + 40) = v20;
            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ma::IrisAnalysis::IrisAnalysis(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void ma::IrisAnalysis::~IrisAnalysis(ma::IrisAnalysis *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ma::IrisAnalysis::Initialize(ma::IrisAnalysis *this, float a2, float a3)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(this + 3) = Mutable;
  if (!Mutable)
  {
    return 4294967188;
  }

  result = 0;
  *this = a2;
  *(this + 1) = a3;
  return result;
}

uint64_t ma::IrisAnalysis::UpdateStats(ma::IrisAnalysis *this, const ma::Frame *a2, const ma::Frame *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v8 = v7;
  if (Mutable)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_6:
    v10 = 4294967188;
    if (!Mutable)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

  time = *(a2 + 4);
  if (CMTimeGetSeconds(&time) > *this || (time = *(a3 + 4), CMTimeGetSeconds(&time) <= *this))
  {
    v10 = 0;
    goto LABEL_29;
  }

  time = *(a3 + 4);
  rhs = *(a2 + 4);
  CMTimeSubtract(&v34, &time, &rhs);
  v12 = 0;
  Seconds = CMTimeGetSeconds(&v34);
  *(this + 16) = 1;
  v14 = Seconds;
  while (1)
  {
    v15 = *(a3 + 40);
    v16 = v15 ? CFArrayGetCount(v15) : 0;
    if (v12 >= v16)
    {
      break;
    }

    v17 = *(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 24);
    v18 = *(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 32);
    if ((v17 * v18) >= 0.001)
    {
      if ((*(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 92) & 1) == 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 40), v12);
        ma::Object::MapBoundingBox(*ValueAtIndex);
      }

      v20 = *(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 8);
      v21 = *(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 16);
      v22 = *(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 84);
      time = *(a3 + 4);
      v23 = (CMTimeGetSeconds(&time) - *this) * v22 / v14;
      v24 = *(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 88);
      time = *(a3 + 4);
      v25 = (CMTimeGetSeconds(&time) - *this) * v24 / v14;
      if (v20 <= v23)
      {
        v26 = v20;
      }

      else
      {
        v26 = v23;
      }

      if (v21 <= v25)
      {
        v25 = v21;
      }

      v27 = (v26 + v20);
      v28 = (v21 - v25);
      v29 = *(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 24);
      v30 = v29;
      v31 = *(*CFArrayGetValueAtIndex(*(a3 + 40), v12) + 32);
      v32 = CFStringCreateWithFormat(0, 0, @"{{%.*g, %.*g}, {%.*g, %.*g}}", 17, *&v27, 17, *&v28, 17, *&v30, 17, v31);
      if (!v32)
      {
        goto LABEL_6;
      }

      v33 = v32;
      CFArrayAppendValue(v8, v32);
      CFRelease(v33);
    }

    ++v12;
  }

  CFDictionarySetValue(Mutable, @"objectBounds", v8);
  v10 = AddResultDictionary(0, 0, 0, 0, Mutable, *(this + 3));
  if (Mutable)
  {
LABEL_29:
    CFRelease(Mutable);
    if (!v8)
    {
      return v10;
    }

    goto LABEL_8;
  }

LABEL_7:
  if (v8)
  {
LABEL_8:
    CFRelease(v8);
  }

  return v10;
}

ma::Segment *ma::RotationSegment::RotationSegment(ma::RotationSegment *this)
{
  result = ma::Segment::Segment(this);
  *result = &unk_1F49694B8;
  *(result + 20) = 0;
  *(result + 9) = 0;
  return result;
}

void ma::RotationSegment::Reset(ma::RotationSegment *this)
{
  ma::Segment::Reset(this);
  *(this + 20) = 0;
  *(this + 9) = 0;
}

uint64_t ma::RotationSegment::UpdateStats(uint64_t this, const ma::MotionResult *a2)
{
  ++*(this + 20);
  v2 = *(a2 + 15) + *(this + 72);
  *(this + 72) = v2;
  v3 = llroundf(fabsf(v2));
  v4 = ((11651 * (v3 % 360 + 45)) >> 20) + ((11651 * (v3 % 360 + 45)) >> 31);
  v5 = v2 > 0.0;
  if (v2 < 0.0)
  {
    v5 = -1;
  }

  v6 = v5 * v4;
  if (v6 >= 3)
  {
    v6 = 3;
  }

  if (v6 <= -3)
  {
    v6 = -3;
  }

  *(this + 76) = v6;
  return this;
}

uint64_t ma::RotationSegment::GetAngleLevel(ma::RotationSegment *this, float a2)
{
  v2 = llroundf(fabsf(a2));
  v3 = ((11651 * (v2 % 360 + 45)) >> 20) + ((11651 * (v2 % 360 + 45)) >> 31);
  v4 = a2 > 0.0;
  if (a2 < 0.0)
  {
    v4 = -1;
  }

  v5 = v4 * v3;
  if (v5 >= 3)
  {
    v5 = 3;
  }

  if (v5 <= -3)
  {
    return 4294967293;
  }

  else
  {
    return v5;
  }
}

uint64_t ma::RotationSegment::ResetStats(uint64_t this, ma::RotationSegment *a2, const ma::MotionResult *a3)
{
  *(this + 20) = *(a3 + 80);
  if (a2)
  {
    v3 = *(a2 + 18);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = v3 + *(a3 + 15);
  *(this + 72) = v4;
  v5 = llroundf(fabsf(v4));
  v6 = ((11651 * (v5 % 360 + 45)) >> 20) + ((11651 * (v5 % 360 + 45)) >> 31);
  v7 = v4 > 0.0;
  if (v4 < 0.0)
  {
    v7 = -1;
  }

  v8 = v7 * v6;
  if (v8 >= 3)
  {
    v8 = 3;
  }

  if (v8 <= -3)
  {
    v8 = -3;
  }

  *(this + 76) = v8;
  return this;
}

uint64_t ma::RotationSegment::DetermineType(ma::RotationSegment *this, int a2)
{
  if ((a2 - 5) < 0xFFFFFFFC)
  {
    return 4294967246;
  }

  v3 = *(this + 19);
  if (v3 - 4 < 0xFFFFFFF9)
  {
    return 4294967246;
  }

  result = 0;
  *(this + 20) = ma::RotationSegment::DetermineType(int)::kOrientationMap[4 * (a2 - 1) + 4 * (v3 >> 31) + v3];
  return result;
}

void ma::RotationSegment::Merge(ma::RotationSegment *this, const ma::RotationSegment *a2)
{
  ma::Segment::Merge(this, a2);
  v4 = *(a2 + 18) + *(this + 18);
  *(this + 18) = v4;
  v5 = llroundf(fabsf(v4));
  v6 = ((11651 * (v5 % 360 + 45)) >> 20) + ((11651 * (v5 % 360 + 45)) >> 31);
  v7 = v4 > 0.0;
  if (v4 < 0.0)
  {
    v7 = -1;
  }

  v8 = v7 * v6;
  if (v8 >= 3)
  {
    v8 = 3;
  }

  if (v8 <= -3)
  {
    v8 = -3;
  }

  *(this + 19) = v8;
}

uint64_t ma::RotationSegment::ToDictionary(ma::RotationSegment *this, const __CFAllocator *a2, const __CFDictionary **a3)
{
  result = ma::Segment::ToDictionary(this, a2, a3);
  if (!result)
  {
    v6 = *a3;
    if (*a3)
    {
      valuePtr = *(this + 18);
      v7 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
      v9 = v7;
      if (v7)
      {
        CFDictionarySetValue(v6, @"Angle", v7);
        CF<__CVBuffer *>::~CF(&v9);
        result = 0;
LABEL_7:
        *a3 = v6;
        return result;
      }

      CF<__CVBuffer *>::~CF(&v9);
      CFRelease(v6);
      v6 = 0;
    }

    result = 4294967188;
    goto LABEL_7;
  }

  return result;
}

void sub_1C9E8CEC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

uint64_t ma::RotationSegment::FromDictionary(ma::RotationSegment *this, const __CFDictionary *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  ma::Segment::FromDictionary(this, a2);
  valuePtr = 0;
  Value = CFDictionaryGetValue(a2, @"Angle");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
    v5 = valuePtr;
  }

  else
  {
    v5 = 0;
  }

  result = 0;
  *(this + 18) = v5;
  return result;
}

void sub_1C9E8D070(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C9E8D47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  objc_sync_exit(v10);

  CF<__CVBuffer *>::~CF(&a10);
  _Unwind_Resume(a1);
}

void sub_1C9E8D730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

void sub_1C9E8E798(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t VCPProtoMovieVoiceResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        LODWORD(v19[0]) = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong((a1 + 16), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E8F2F0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C9E8F39C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t ma::EncodeStatsAVE2::ParseStats(ma::EncodeStatsAVE2 *this, CFDataRef theData, int a3, int a4)
{
  v8 = (a4 * a3);
  if (CFDataGetLength(theData) == 432 * v8)
  {
    BytePtr = CFDataGetBytePtr(theData);
    if (v8 < 1)
    {
      return 0;
    }

    v10 = 0;
    v11 = BytePtr + 296;
    for (i = BytePtr + 8; ; i += 432)
    {
      v13 = &BytePtr[432 * v10];
      v14 = *(v13 + 60);
      v15 = (v14 << 19) >> 19;
      v16 = HIWORD(v14) & 0xFFF;
      if (v15 >= a3 || v16 >= a4)
      {
        break;
      }

      v18 = 0;
      v19 = HIWORD(v14);
      v20 = 2 * v16;
      v21 = (v14 << 19) >> 18;
      v22 = v15 + v16 * a3;
      v23 = *(this + 2);
      *(*(this + 1) + v22) = (*(v13 + 20) & 0x3Eu) > 0x19;
      *(v23 + v22) = (*(v13 + 20) & 0x3F) == 31;
      v24 = (*(this + 3) + 4 * v22);
      *v24 = (32 * *v13) >> 5;
      v24[1] = (*v13 >> 6) >> 6;
      v25 = *(this + 8);
      *(*(this + 7) + 2 * v22) = *(v13 + 1);
      *(v25 + 2 * v22) = 0;
      v26 = (2 * (v19 & 0xFFF)) | 1;
      v28 = *(this + 9);
      v27 = *(this + 10);
      *(v27 + 2 * v22) = 0;
      v29 = *(this + 11);
      *(v29 + 2 * v22) = 0;
      *(v28 + 4 * v22) = 0;
      v30 = v11;
      v31 = 4;
      do
      {
        *(v25 + 2 * v22) += *(v30 - 24);
        *(v27 + 2 * v22) += *(v30 - 16);
        *(v29 + 2 * v22) += *(v30 - 8);
        v32 = *v30;
        v30 += 4;
        v18 += v32 & 0x3FFFFFF;
        *(v28 + 4 * v22) = v18;
        --v31;
      }

      while (v31);
      LODWORD(v33) = 0;
      v34 = *(this + 16);
      *(*(this + 15) + 2 * v22) = *(v13 + 90);
      *(v34 + 2 * v22) = *(v13 + 91);
      v35 = *(this + 18);
      *(*(this + 17) + 2 * v22) = *(v13 + 51);
      *(v35 + 2 * v22) = *(v13 + 50) & 0xFFF;
      v36 = *(this + 20);
      *(*(this + 19) + 2 * v22) = *(v13 + 53);
      *(v36 + 2 * v22) = *(v13 + 52) & 0xFFF;
      v37 = *(this + 4);
      v38 = 1;
      do
      {
        v39 = 0;
        v40 = v38;
        v41 = v21 + 2 * a3 * v20;
        v33 = v33;
        v42 = 1;
        do
        {
          v43 = (v37 + 4 * (v39 | v41));
          *v43 = (32 * *&i[4 * v33]) >> 5;
          v44 = v42;
          v43[1] = (*&i[4 * v33++] >> 6) >> 6;
          v39 = 1;
          v42 = 0;
        }

        while ((v44 & 1) != 0);
        v38 = 0;
        v20 = v26;
      }

      while ((v40 & 1) != 0);
      ++v10;
      v11 += 432;
      if (v10 == v8)
      {
        return 0;
      }
    }
  }

  return 4294967246;
}

void ma::EncodeStatsAVE2::~EncodeStatsAVE2(ma::EncodeStatsAVE2 *this)
{
  ma::EncodeStatsHW::~EncodeStatsHW(this);

  JUMPOUT(0x1CCA95C50);
}

uint64_t ma::HinkleyDetector::HinkleyDetector(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t ma::HinkleyDetector::Initialize(uint64_t this, float a2, float a3, int a4)
{
  *this = a2;
  *(this + 4) = a3;
  *(this + 8) = a4;
  *(this + 20) = 0;
  *(this + 12) = 0;
  return this;
}

double ma::HinkleyDetector::ResetStats(ma::HinkleyDetector *this)
{
  result = 0.0;
  *(this + 12) = xmmword_1C9F638A0;
  return result;
}

BOOL ma::HinkleyDetector::Test(ma::HinkleyDetector *this, const float *a2, const float *a3, int a4)
{
  v4 = *a2 + *a3;
  v5 = (a4 - 1);
  v6 = (*this * a4) * 0.5;
  v7 = (v4 - ((*a2 * a4) / v5)) + v6;
  *(this + 3) = v7;
  v8 = (v4 - ((*a2 * a4) / v5)) - v6;
  *(this + 4) = v8;
  v9 = *(this + 5);
  if (v7 > v9)
  {
    *(this + 5) = v7;
    v9 = v7;
  }

  v10 = *(this + 6);
  if (v8 < v10)
  {
    *(this + 6) = v8;
    v10 = v8;
  }

  return fmaxf(v9 - v7, v8 - v10) > *(this + 1);
}

ma::EncodeStatsHW *ma::EncodeStatsHW::EncodeStatsHW(ma::EncodeStatsHW *this)
{
  ma::EncodeStats::EncodeStats(this);
  *v2 = &unk_1F49695B8;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  CMTimeMake((v2 + 208), 0, 30);
  *(this + 240) = 0;
  *(this + 29) = 0;
  return this;
}

ma::EncodeStatsHW *ma::EncodeStatsHW::CreateAsync(ma::EncodeStatsHW *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = SocType();
  if ((v8 - 247) > 1)
  {
    if ((v8 - 249) > 9)
    {
      return 0;
    }

    v14 = operator new(0xF8uLL, MEMORY[0x1E69E5398]);
    v10 = v14;
    if (v14)
    {
      ma::EncodeStatsHW::EncodeStatsHW(v14);
      *v10 = &unk_1F49694E8;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v16 = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "CreateAsync : create AVE2";
      v13 = &v16;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = operator new(0xF8uLL, MEMORY[0x1E69E5398]);
    v10 = v9;
    if (v9)
    {
      ma::EncodeStatsHW::EncodeStatsHW(v9);
      *v10 = &unk_1F4969520;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v17 = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "CreateAsync : create AVE1";
      v13 = &v17;
LABEL_13:
      _os_log_impl(&dword_1C9B70000, v11, OS_LOG_TYPE_DEBUG, v12, v13, 2u);
    }
  }

  if (v10)
  {
    *(v10 + 173) = 1;
    *(v10 + 240) = 1;
    if ((*(*v10 + 16))(v10, this, a2, a3, a4))
    {
      (*(*v10 + 8))(v10);
      return 0;
    }
  }

  return v10;
}

void ma::EncodeStatsHW::~EncodeStatsHW(ma::EncodeStatsHW *this)
{
  *this = &unk_1F49695B8;
  ma::EncodeStatsHW::Destroy(this);

  ma::EncodeStats::~EncodeStats(this);
}

void ma::EncodeStatsHW::Destroy(ma::EncodeStatsHW *this)
{
  v3 = (this + 192);
  v2 = *(this + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = *(this + 25);
  if (v4)
  {
    CFRelease(v4);
  }

  *v3 = 0;
  v3[1] = 0;
}

uint64_t ma::EncodeStatsHW::Initialize(VTCompressionSessionRef *this, int32_t a2, int32_t a3, int a4, BOOL a5)
{
  if (a2 >= -15)
  {
    v10 = a2 + 15;
  }

  else
  {
    v10 = a2 + 30;
  }

  if (a3 >= -15)
  {
    v11 = a3 + 15;
  }

  else
  {
    v11 = a3 + 30;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984288], *MEMORY[0x1E695E4D0]);
  v14 = this + 24;
  v22 = this;
  v15 = VTCompressionSessionCreate(0, a2, a3, 0x61766331u, Mutable, 0, 0, ma::EncodeStatsHW::CallbackHelper, this, this + 24);
  CFRelease(Mutable);
  if (v15)
  {
    goto LABEL_18;
  }

  v16 = ma::VTSessionSetProperty(*v14, *MEMORY[0x1E6983880], 1);
  if (v16 || (v16 = VTSessionSetProperty(*v14, @"iChatUsageString", @"MediaAnalysis"), v16) || (v16 = ma::VTSessionSetProperty(*v14, @"EnableStatsCollect", 0x8000000), v16) || (v16 = VTSessionSetProperty(*v14, @"EnableUserQPMap", v13), v16) || (v16 = VTSessionSetProperty(*v14, @"EnableUserRefForFacetime", v13), v16) || (v16 = VTSessionSetProperty(*v14, *MEMORY[0x1E6983530], v13), v16) || (v17 = *MEMORY[0x1E695E4C0], v16 = VTSessionSetProperty(*v14, *MEMORY[0x1E6983518], *MEMORY[0x1E695E4C0]), v16) || (v16 = VTSessionSetProperty(*v14, @"EnableWeightedPrediction", v17), v16) || (v16 = ma::VTSessionSetProperty(*v14, *MEMORY[0x1E69837C8], 0xFFFFFFECLL), v16) || a4 && ((v16 = VTSessionSetProperty(*v14, *MEMORY[0x1E6983708], v17), v16) || (v16 = VTSessionSetProperty(*v14, *MEMORY[0x1E69837F0], v17), v16) || (v16 = ma::VTSessionSetProperty(*v14, *MEMORY[0x1E6983648], 0xE), v16)) || (v16 = VTCompressionSessionPrepareToEncodeFrames(*v14), v16))
  {
    v15 = v16;
LABEL_18:
    ma::EncodeStatsHW::Destroy(v22);
    return v15;
  }

  v19 = ((v11 >> 4) * (v10 >> 4));
  v20 = CFDataCreateMutable(0, 16 * v19);
  v22[25] = v20;
  if (!v20)
  {
    v15 = 4294967188;
    goto LABEL_18;
  }

  CFDataSetLength(v20, 16 * v19);
  MutableBytePtr = CFDataGetMutableBytePtr(v22[25]);
  if (v19 >= 1)
  {
    do
    {
      *MutableBytePtr = *MutableBytePtr & 0x3FC | 0x5800;
      MutableBytePtr += 16;
      --v19;
    }

    while (v19);
  }

  v15 = ma::EncodeStats::Initialize(v22, a2, a3, a5, 0);
  if (v15)
  {
    goto LABEL_18;
  }

  return v15;
}

uint64_t ma::EncodeStatsHW::CallbackHelper(uint64_t this, void (**a2)(void, void), uint64_t a3, int a4, CMSampleBufferRef sbuf, opaqueCMSampleBuffer *a6)
{
  v6 = this;
  if (a3)
  {
    *(this + 184) = a3;
  }

  else if (*(this + 240) == 1)
  {

    return ma::EncodeStatsHW::Callback(this, sbuf, a3, a2);
  }

  else if (!a2)
  {
    this = ma::EncodeStatsHW::ParseStatsFromSampleBuffer(this, sbuf);
    *(v6 + 184) = this;
  }

  return this;
}

uint64_t ma::VTSessionSetProperty(ma *this, const __CFString *a2, const __CFString *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = VTSessionSetProperty(this, a2, v5);
  CFRelease(v5);
  return v6;
}

uint64_t ma::EncodeStatsHW::ProcessFrame(ma::EncodeStatsHW *this, CMTime *a2, __CVBuffer *a3, unsigned int a4)
{
  if (*(this + 240))
  {
    return 4294967246;
  }

  v7 = *a2;
  result = ma::EncodeStatsHW::ProcessFrameCommon(this, &v7.value, a3, a4, 0);
  if (!result)
  {

    return ma::EncodeStatsHW::ComputeChromaBlockSum(this, a3);
  }

  return result;
}

uint64_t ma::EncodeStatsHW::ProcessFrameCommon(uint64_t a1, __int128 *a2, __CVBuffer *a3, unsigned int a4, const void *a5)
{
  v10 = MEMORY[0x1E695E9D8];
  v11 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v14 = CFDictionaryCreateMutable(0, 0, v10, v11);
  v15 = v14;
  if (Mutable)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && v14 != 0)
  {
    if (*(a1 + 232))
    {
      LODWORD(valuePtr.value) = 1;
      v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      presentationTimeStamp.value = v20;
      if (v20)
      {
        CFDictionarySetValue(Mutable, @"UserFrameType", v20);
        CF<__CVBuffer *>::~CF(&presentationTimeStamp);
        LODWORD(valuePtr.value) = *(a1 + 236) - 1;
        v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        presentationTimeStamp.value = v21;
        if (v21)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      LODWORD(valuePtr.value) = 3;
      v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      presentationTimeStamp.value = v22;
      if (v22)
      {
        CFDictionarySetValue(Mutable, @"UserFrameType", v22);
        CF<__CVBuffer *>::~CF(&presentationTimeStamp);
        LODWORD(valuePtr.value) = 0;
        v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        presentationTimeStamp.value = v21;
        if (v21)
        {
LABEL_23:
          CFDictionarySetValue(v15, @"ReferenceFrameNumDriver", v21);
          CF<__CVBuffer *>::~CF(&presentationTimeStamp);
          CFArrayAppendValue(v13, v15);
          CFDictionarySetValue(Mutable, @"ReferenceL0", v13);
          CFDictionarySetValue(Mutable, @"UserQpMap", *(a1 + 200));
          if ((*(a2 + 3) & 0x1D) == 1)
          {
            v23 = *a2;
            *(a1 + 224) = *(a2 + 2);
            *(a1 + 208) = v23;
          }

          if (*(a1 + 240) == 1)
          {
            v24 = _Block_copy(a5);
            v25 = *(a1 + 192);
            presentationTimeStamp = *(a1 + 208);
            valuePtr = **&MEMORY[0x1E6960C70];
            v26 = VTCompressionSessionEncodeFrame(v25, a3, &presentationTimeStamp, &valuePtr, Mutable, v24, 0);
            if (!v26)
            {
LABEL_32:
              valuePtr = *(a1 + 208);
              *&v29.value = ma::kDefaultDuration;
              v29.epoch = 0;
              CMTimeAdd(&presentationTimeStamp, &valuePtr, &v29);
              v18 = 0;
              *(a1 + 208) = presentationTimeStamp;
              *(a1 + 232) = vadd_s32(*(a1 + 232), 0x100000001);
              goto LABEL_33;
            }
          }

          else
          {
            v27 = *(a1 + 192);
            presentationTimeStamp = *(a1 + 208);
            valuePtr = **&MEMORY[0x1E6960C70];
            v26 = VTCompressionSessionEncodeFrame(v27, a3, &presentationTimeStamp, &valuePtr, Mutable, a4, 0);
            if (!v26)
            {
              v28 = *(a1 + 192);
              presentationTimeStamp = **&MEMORY[0x1E6960C68];
              v26 = VTCompressionSessionCompleteFrames(v28, &presentationTimeStamp);
              if (!v26)
              {
                goto LABEL_32;
              }
            }
          }

          v18 = v26;
          goto LABEL_33;
        }
      }
    }

    CF<__CVBuffer *>::~CF(&presentationTimeStamp);
    v18 = 4294967188;
    goto LABEL_33;
  }

  v18 = 4294967188;
  if (!v14)
  {
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  CFRelease(v15);
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v18)
  {
    return *(a1 + 184);
  }

  return v18;
}

void sub_1C9E90C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

uint64_t ma::EncodeStatsHW::ComputeChromaBlockSum(ma::EncodeStatsHW *this, CVPixelBufferRef pixelBuffer)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!pixelBuffer)
  {
    return 0;
  }

  pixelBuffera = pixelBuffer;
  unlockFlags = 1;
  v4 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  v47 = v4;
  if (v4)
  {
    v5 = v4;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) || (*buf = 134218240, *v51 = pixelBuffer, *&v51[8] = 1024, *v52 = v5, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v5 = v47) != 0))
    {
      v6 = 0;
      goto LABEL_45;
    }
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  if ((BytesPerRowOfPlane & 0xF) == 0)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    if (BaseAddressOfPlane)
    {
      v11 = (Width + 15) >> 4;
      v12 = (Height + 15) >> 4;
      v13 = *(this + 44);
      v15 = v13 + 15;
      v14 = v13 < -15;
      v16 = v13 + 30;
      if (!v14)
      {
        v16 = v15;
      }

      if (v11 != v16 >> 4)
      {
        goto LABEL_55;
      }

      v17 = *(this + 45);
      v18 = v17 + 15;
      v14 = v17 < -15;
      v19 = v17 + 30;
      if (!v14)
      {
        v19 = v18;
      }

      if (v12 == v19 >> 4)
      {
        if (v12 >= 1)
        {
          v20 = 0;
          v21 = *(this + 10);
          v22 = *(this + 11);
          v23 = Height >> 1;
          while (1)
          {
            v24 = v23 - 8;
            v25 = v23 >= 8 ? 8 : v23;
            if (v11 >= 1)
            {
              break;
            }

LABEL_35:
            ++v20;
            BaseAddressOfPlane = (BaseAddressOfPlane + 8 * BytesPerRowOfPlane);
            v23 = v24;
            if (v20 == v12)
            {
              goto LABEL_44;
            }
          }

          v26 = 0;
          v27 = (v23 & ~(v23 >> 31)) - 8;
          v28 = (Height >> 1) - 8 * v20;
          v29 = BaseAddressOfPlane;
          while (1)
          {
            if (v28 < 1)
            {
              v35 = 0uLL;
              v36 = 0uLL;
              v30 = 0uLL;
              v33 = 0uLL;
            }

            else
            {
              v30 = 0uLL;
              v31 = v25;
              v32 = v29;
              v33 = 0uLL;
              do
              {
                v34 = *v32;
                v35.i16[0] = v32->u8[0];
                v35.i16[1] = BYTE2(v32->u32[0]);
                v35.i16[2] = BYTE4(v32->i64[0]);
                v35.i16[3] = BYTE6(v32->i64[0]);
                v35.i16[4] = v32->i64[1];
                v35.i16[5] = BYTE2(v32->i64[1]);
                v35.i16[6] = BYTE12(*v32);
                v35.i16[7] = BYTE14(*v32);
                v30 = vaddq_s16(v35, v30);
                v33 = vsraq_n_u16(v33, *v32, 8uLL);
                v32 = (v32 + BytesPerRowOfPlane);
                --v31;
              }

              while (v31);
              if (v28 > 7)
              {
                goto LABEL_34;
              }

              v36 = vshrq_n_u16(v34, 8uLL);
            }

            v37 = v27;
            do
            {
              v30 = vaddq_s16(v30, v35);
              v33 = vaddq_s16(v33, v36);
            }

            while (!__CFADD__(v37++, 1));
LABEL_34:
            *v21++ = vaddvq_s16(v30);
            *v22++ = vaddvq_s16(v33);
            ++v26;
            ++v29;
            if (v26 == v11)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
LABEL_55:
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v39 = *(this + 44);
          v40 = *(this + 45);
          v41 = v39 + 15;
          v14 = v39 < -15;
          v42 = v39 + 30;
          if (!v14)
          {
            v42 = v41;
          }

          v43 = v42 >> 4;
          v44 = v40 + 15;
          v14 = v40 < -15;
          *buf = 67109888;
          v45 = v40 + 30;
          *v51 = v11;
          if (!v14)
          {
            v45 = v44;
          }

          *&v51[4] = 1024;
          *&v51[6] = (Height + 15) >> 4;
          *v52 = 1024;
          *&v52[2] = v43;
          v53 = 1024;
          v54 = v45 >> 4;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unmatched frame dimensions: (%d, %d) vs (%d, %d)!", buf, 0x1Au);
        }
      }
    }

LABEL_44:
    v5 = CVPixelBufferLock::Unlock(&v47);
    v6 = v5 == 0;
    goto LABEL_45;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *v51 = BytesPerRowOfPlane;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported chroma stride: %td", buf, 0xCu);
  }

  v6 = 0;
  v5 = 0;
LABEL_45:
  if (pixelBuffera && !v47 && CVPixelBufferUnlockBaseAddress(pixelBuffera, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ma::EncodeStatsHW::ComputeChromaBlockSum();
  }

  if (v6)
  {
    return 0;
  }

  return v5;
}

void sub_1C9E9108C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t ma::EncodeStatsHW::ProcessFrameAsync(uint64_t a1, uint64_t a2, __CVBuffer *a3, const void *a4)
{
  if (*(a1 + 240) != 1)
  {
    return 4294967246;
  }

  v9 = v4;
  v10 = v5;
  v7 = *a2;
  v8 = *(a2 + 16);
  return ma::EncodeStatsHW::ProcessFrameCommon(a1, &v7, a3, 0, a4);
}

uint64_t ma::EncodeStatsHW::ParseStatsFromSampleBuffer(ma::EncodeStatsHW *this, CMSampleBufferRef sbuf)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (!SampleAttachmentsArray)
  {
    return 4294967246;
  }

  v5 = SampleAttachmentsArray;
  if (CFArrayGetCount(SampleAttachmentsArray) < 1)
  {
    return 4294967246;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
  if (!ValueAtIndex)
  {
    return 4294967246;
  }

  v7 = ValueAtIndex;
  Value = CFDictionaryGetValue(ValueAtIndex, @"MBStatistics");
  if (!Value)
  {
    return 4294967246;
  }

  v9 = *(this + 44);
  v10 = *(this + 45);
  v12 = v9 + 15;
  v11 = v9 < -15;
  v13 = v9 + 30;
  if (!v11)
  {
    v13 = v12;
  }

  v14 = (v13 >> 4);
  v15 = v10 + 15;
  v11 = v10 < -15;
  v16 = v10 + 30;
  if (v11)
  {
    v15 = v16;
  }

  result = (*(*this + 32))(this, Value, v14, (v15 >> 4));
  if (!result)
  {
    *(this + 42) = CMSampleBufferGetSampleSize(sbuf, 0);
    v18 = CFDictionaryGetValue(v7, @"NotSync");
    v21 = !v18 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFBooleanGetTypeID()) || CFEqual(v19, *MEMORY[0x1E695E4D0]) == 0;
    result = 0;
    *(this + 172) = v21;
  }

  return result;
}

uint64_t ma::EncodeStatsHW::Callback(ma::EncodeStatsHW *a1, CMSampleBufferRef sbuf, uint64_t a3, void (**a4)(void, void))
{
  if (a4 && (*(a1 + 240) & 1) != 0)
  {
    CFRetain(sbuf);
    (a4)[2](a4, sbuf);
    _Block_release(a4);
  }

  else
  {
    result = ma::EncodeStatsHW::ParseStatsFromSampleBuffer(a1, sbuf);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sub_1C9E92148(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C9E94BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose(&STACK[0x350], 8);

  CF<__CVBuffer *>::~CF((v26 - 216));
  _Block_object_dispose((v26 - 160), 8);
  CF<__CVBuffer *>::~CF((v24 + 48));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__689(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFTypeRef __copy_helper_block_ea8_48c22_ZTS2CFIP10__CVBufferE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef __copy_helper_block_ea8_40c22_ZTS2CFIP10__CVBufferE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E98BB4(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

uint64_t VCPPromotePersons(void *a1, void *a2, void *a3)
{
  v73[8] = *MEMORY[0x1E69E9840];
  v61 = a1;
  v5 = a2;
  v6 = a3;
  v60 = [[VCPPhotosPersistenceDelegate alloc] initWithPhotoLibrary:v61];
  v7 = [objc_alloc(MEMORY[0x1E69C1588]) initWithPhotoLibrary:v61 andDelegate:v60];
  v8 = v7;
  v58 = v5;
  v59 = v6;
  if (v7)
  {
    v56 = v7;
    *v66 = 0;
    v67 = v66;
    v68 = 0x2020000000;
    v69 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __VCPPromotePersons_block_invoke;
    aBlock[3] = &unk_1E8351B10;
    v63 = v6;
    v65 = v66;
    v64 = v5;
    v57 = _Block_copy(aBlock);
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Person Processing: Starting Person Promoting", buf, 2u);
    }

    v9 = mach_absolute_time();
    v10 = VCPSignPostLog();
    v11 = os_signpost_id_generate(v10);

    v12 = VCPSignPostLog();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPFaceProcessingPromotePersonsCoreAnalyticsCollection", "", buf, 2u);
    }

    v14 = [v61 vcp_assetCountForTaskID:3];
    v15 = [v61 librarySpecificFetchOptions];
    [v15 setIncludeTorsoAndFaceDetectionData:1];
    [v15 setIncludeNonvisibleFaces:1];
    [v15 setShouldPrefetchCount:1];
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(vuObservationID > 0)"];
    [v15 setPredicate:v16];

    if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
    {
      [v15 setIncludeMediaAnalysisProcessingRangeTypes:3];
    }

    v17 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:v15];
    v54 = [v17 count];

    v18 = [v61 librarySpecificFetchOptions];
    [v18 setMinimumVerifiedFaceCount:0];
    [v18 setMinimumUnverifiedFaceCount:0];
    [v18 setIncludeTorsoOnlyPerson:1];
    [v18 setShouldPrefetchCount:1];
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@", &unk_1F49BE4E8];
    [v18 setPredicate:v19];

    v20 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v18];
    v21 = [v20 count];

    v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@", &unk_1F49BE500];
    [v18 setPredicate:v22];

    v23 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v18];
    v53 = [v23 count];

    v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@", &unk_1F49BE518];
    [v18 setPredicate:v24];

    v25 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v18];
    v52 = [v25 count];

    v26 = VCPSignPostLog();
    v27 = v26;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v11, "VCPFaceProcessingPromotePersonsCoreAnalyticsCollection", "", buf, 2u);
    }

    if (v9)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    Current = CFAbsoluteTimeGetCurrent();
    v29 = mach_absolute_time();
    v30 = VCPSignPostLog();
    v31 = os_signpost_id_generate(v30);

    v32 = VCPSignPostLog();
    v33 = v32;
    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "VCPFaceProcessingPromotePersons", "", buf, 2u);
    }

    v55 = [v56 promoteUnverifiedPersonsWithUpdateBlock:v57];
    v34 = VCPSignPostLog();
    v35 = v34;
    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v31, "VCPFaceProcessingPromotePersons", "", buf, 2u);
    }

    if (v29)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    v36 = CFAbsoluteTimeGetCurrent() - Current;
    if (v36 > 5.0)
    {
      v49 = +[VCPMADCoreAnalyticsManager sharedManager];
      v72[0] = @"GraphVerifiedPersonCount";
      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
      v73[0] = v51;
      v72[1] = @"ProcessingQoS";
      v37 = qos_class_self();
      v50 = VCPMAQoSDescription(v37);
      v73[1] = v50;
      v72[2] = @"PromotingInterval";
      v38 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
      v73[2] = v38;
      v72[3] = @"PromotingSequence";
      v39 = [MEMORY[0x1E695DF00] now];
      v40 = [v39 description];
      v73[3] = v40;
      v72[4] = @"TotalAssetCount";
      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
      v73[4] = v41;
      v72[5] = @"TotalFaceCount";
      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v54];
      v73[5] = v42;
      v72[6] = @"UnverifiedPersonCount";
      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v53];
      v73[6] = v43;
      v72[7] = @"UserVerifiedPersonCount";
      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v52];
      v73[7] = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:8];
      [v49 sendEvent:@"com.apple.mediaanalysisd.photos.personpromoting" withAnalytics:v45];
    }

    if (v55)
    {
      [MEMORY[0x1E69C1588] setProcessed:1 forLibrary:v61];
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v46 = @"failed";
      if (v55)
      {
        v46 = @"succeeded";
      }

      *buf = 138412290;
      v71 = v46;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Person Processing: Person Promoting %@", buf, 0xCu);
    }

    v47 = *(v67 + 6);
    if (v47 == -128)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPPromotePersons canceled", buf, 2u);
      }

      v47 = 4294967168;
    }

    else if ((v55 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPPromotePersons failed", buf, 2u);
      }

      v47 = 4294967278;
    }

    _Block_object_dispose(v66, 8);
    v8 = v56;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v66 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot create PNPersonPromoter", v66, 2u);
    }

    v47 = 4294967278;
  }

  return v47;
}

void __VCPPromotePersons_block_invoke(void *a1, _BYTE *a2)
{
  v3 = a1[4];
  if (v3 && (*(v3 + 16))())
  {
    *a2 = 1;
    *(*(a1[6] + 8) + 24) = -128;
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "---> Canceling VCPPromotePersons", v7, 2u);
    }
  }

  else
  {
    v5 = a1[5];
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

uint64_t VCPFetchPersonPromoterClusterForEvaluation(void *a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  *a2 = 0;
  v10 = [[VCPPhotosPersistenceDelegate alloc] initWithPhotoLibrary:v7];
  v11 = [objc_alloc(MEMORY[0x1E69C1588]) initWithPhotoLibrary:v7 andDelegate:v10];
  if (v11)
  {
    *v25 = 0;
    v26 = v25;
    v27 = 0x2020000000;
    v28 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __VCPFetchPersonPromoterClusterForEvaluation_block_invoke;
    aBlock[3] = &unk_1E8351B10;
    v22 = v9;
    v24 = v25;
    v23 = v8;
    v12 = _Block_copy(aBlock);
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Person Processing: Start evaluatePersonPromoterWithUpdateBlock", buf, 2u);
    }

    v13 = objc_autoreleasePoolPush();
    v14 = [v11 evaluatePersonPromoterWithUpdateBlock:v12];
    objc_autoreleasePoolPop(v13);
    if (MediaAnalysisLogLevel() >= 6)
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = [v14 count];
        *buf = 134217984;
        v30 = v17;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Person Processing: Retrieved %lu unverified person", buf, 0xCu);
      }
    }

    v18 = v14;
    *a2 = v14;
    if (*(v26 + 6) == -128 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Person Processing: evaluatePersonPromoterWithUpdateBlock canceled", buf, 2u);
    }

    v19 = *(v26 + 6);

    _Block_object_dispose(v25, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot create PNPersonPromoter for evaluation", v25, 2u);
    }

    v19 = 4294967278;
  }

  return v19;
}

void sub_1C9E99CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __VCPFetchPersonPromoterClusterForEvaluation_block_invoke(void *a1, _BYTE *a2)
{
  v3 = a1[4];
  if (v3 && (*(v3 + 16))())
  {
    *a2 = 1;
    *(*(a1[6] + 8) + 24) = -128;
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "---> Canceling VCPFetchPersonPromoterClusterForEvaluation", v7, 2u);
    }
  }

  else
  {
    v5 = a1[5];
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

uint64_t VCPMAGetRevisionForVisionModel(objc_class *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VCPMAGetRevisionForVisionModel_onceToken != -1)
  {
    VCPMAGetRevisionForVisionModel_cold_1();
  }

  v4 = VCPMAGetRevisionForVisionModel_modelVersionMaps;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = NSStringFromClass(a1);
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [v8 unsignedLongValue];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromClass(a1);
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported analysis type (%@)", &v12, 0xCu);
      }

      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 67109120;
      LODWORD(v13) = a2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown Photos Face Processing umbrella version %d", &v12, 8u);
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

void __VCPMAGetRevisionForVisionModel_block_invoke()
{
  v38[11] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v32 = NSStringFromClass(v0);
  v37[0] = v32;
  v38[0] = &unk_1F49BE530;
  v1 = objc_opt_class();
  v31 = NSStringFromClass(v1);
  v37[1] = v31;
  v38[1] = &unk_1F49BE548;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v37[2] = v3;
  v38[2] = &unk_1F49BE560;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v37[3] = v5;
  v38[3] = &unk_1F49BE578;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v37[4] = v7;
  v38[4] = &unk_1F49BE590;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v37[5] = v9;
  v38[5] = &unk_1F49BE560;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v37[6] = v11;
  v38[6] = &unk_1F49BE560;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v37[7] = v13;
  v38[7] = &unk_1F49BE578;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v37[8] = v15;
  v38[8] = &unk_1F49BE5A8;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v37[9] = v17;
  v38[9] = &unk_1F49BE5C0;
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v37[10] = v19;
  v38[10] = &unk_1F49BE560;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:11];

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v35[0] = v22;
  v36[0] = &unk_1F49BE5A8;
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v35[1] = v24;
  v36[1] = &unk_1F49BE5D8;
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v35[2] = v26;
  v36[2] = &unk_1F49BE560;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

  v28 = [MEMORY[0x1E695DF90] dictionary];
  [v28 addEntriesFromDictionary:v20];
  [v28 addEntriesFromDictionary:v27];
  v33 = &unk_1F49BE5F0;
  v34 = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v30 = VCPMAGetRevisionForVisionModel_modelVersionMaps;
  VCPMAGetRevisionForVisionModel_modelVersionMaps = v29;
}