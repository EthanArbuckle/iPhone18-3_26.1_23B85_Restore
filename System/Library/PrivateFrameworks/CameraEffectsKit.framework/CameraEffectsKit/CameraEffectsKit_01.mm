float calculateDepthShadowPSNRForDepthImage(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferGetPixelFormatType(a1) != 1717855600)
  {
    v21 = JFXLog_matting();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v28 = 0;
    v22 = "calculatePSNRForDepthImage received image with unexpected pixel format";
    v23 = &v28;
LABEL_18:
    _os_log_impl(&dword_242A3B000, v21, OS_LOG_TYPE_DEFAULT, v22, v23, 2u);
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1717855600)
  {
    v21 = JFXLog_matting();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v27 = 0;
    v22 = "calculatePSNRForDepthImage received image with unexpected pixel format";
    v23 = &v27;
    goto LABEL_18;
  }

  if (!Width || !Height)
  {
    v21 = JFXLog_matting();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "calculatePSNRForDepthImage received image with unexpected dimension";
      v23 = buf;
      goto LABEL_18;
    }

LABEL_19:

    return 0.0;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v7 = CVPixelBufferGetBytesPerRow(a2);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  if (Height < 1)
  {
    v20 = NAN;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = BytesPerRow >> 2;
    v12 = Height & 0x7FFFFFFF;
    v13 = 4 * (v7 >> 2);
    v14 = 4 * v11;
    do
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      v16 = CVPixelBufferGetBaseAddress(a2);
      if (Width >= 1)
      {
        v17 = &v16[v9];
        v18 = &BaseAddress[v8];
        v19 = Width & 0x7FFFFFFF;
        do
        {
          v17 += 4;
          v18 += 4;
          --v19;
        }

        while (v19);
      }

      ++v10;
      v9 += v13;
      v8 += v14;
    }

    while (v10 != v12);
    v20 = 0.0 / 0;
  }

  v24 = log10f(v20) * -10.0 + 0.0;
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return v24;
}

void sub_242B17340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = JFXRGBDMatte;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t DepthProcessingDataRGBD::getFaceDepthFromPortrait(DepthProcessingDataRGBD *this, CGRect a2)
{
  v26 = *MEMORY[0x277D85DE8];
  var4 = this->var4;
  var3 = this->var3;
  v5 = (a2.size.width * vcvtd_n_f64_s32(var4, 1uLL) + var4 * a2.origin.x);
  v6 = (a2.size.height * vcvtd_n_f64_s32(var3, 1uLL) + var3 * a2.origin.y);
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  if (v5 <= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = v5;
  }

  if (var3 - 1 >= v6 + 5)
  {
    v9 = v6 + 5;
  }

  else
  {
    v9 = var3 - 1;
  }

  v10 = var4 - 1;
  if (v10 >= v5 + 5)
  {
    v11 = v5 + 5;
  }

  else
  {
    v11 = v10;
  }

  v12 = JFXLog_DebugMatting();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109376;
    v23 = v6;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEFAULT, "Nose at %d,%d in rotated depth coordinates (i.e. portrait)", &v22, 0xEu);
  }

  if (v8 - 5 > v11)
  {
    LODWORD(v13) = 0;
    v14 = 1;
LABEL_24:
    v13 = (v13 / v14);
    goto LABEL_25;
  }

  v13 = 0;
  v15 = v8 - 5;
  v16 = &this->var2[(v8 - 5) * var3 - 5 + v7];
  v14 = 1;
  do
  {
    v17 = v9 - v7 + 6;
    v18 = v16;
    if ((v7 - 5) <= v9)
    {
      do
      {
        v19 = *v18++;
        v13 = (v19 + v13);
        if (v19)
        {
          ++v14;
        }

        --v17;
      }

      while (v17);
    }

    ++v15;
    v16 += var3;
  }

  while (v11 + 1 != v15);
  if (v14)
  {
    goto LABEL_24;
  }

LABEL_25:
  v20 = JFXLog_DebugMatting();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109120;
    v23 = v13;
    _os_log_impl(&dword_242A3B000, v20, OS_LOG_TYPE_DEFAULT, "RGBD facedepth=%d", &v22, 8u);
  }

  return v13;
}

void sub_242B18DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  ContourProcessing::~ContourProcessing(va);
  _Unwind_Resume(a1);
}

void sub_242B195E4(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);

  ContourProcessing::~ContourProcessing(va);
  _Unwind_Resume(a1);
}

void DispatchContextRGBDSensoGrabCut(int *a1)
{
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = a1[11];
  v9 = a1[10];
  v10 = a1[12];
  v11 = *(a1 + 1);
  v12 = *a1;
  v13 = v7 / v10;
  v14 = v6;
  v15 = v7 - v13 * (v10 - 1);
  if (v8 != v10 - 1)
  {
    v15 = v7 / v10;
  }

  v16 = v5 + v13 * v8;
  v17 = (v1 + v9 * v16);
  texture = 0;
  v18 = v14;
  v19 = v15;
  CVPixelBufferCreateWithBytes(0, v14, v15, 0x42475241u, v17, v9, 0, 0, 0, &texture);
  v20 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:texture];
  CVPixelBufferRelease(texture);
  v21 = v16 * v14;
  v26 = 0;
  CVPixelBufferCreateWithBytes(0, v18, v19, 0x4C303038u, (v11 + v21), v18, 0, 0, 0, &v26);
  v22 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v26];
  CVPixelBufferRelease(v26);
  v25 = 0;
  CVPixelBufferCreateWithBytes(0, v18, v19, 0x4C303038u, (v2 + v21), v18, 0, 0, 0, &v25);
  v23 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v25];
  CVPixelBufferRelease(v25);
  LODWORD(v24) = 1112014848;
  [v12 processImage:v20 trimap:v22 roi:5 clusters:1 gamma:v23 iterations:v4 mask:{v5, v6, v7, v24}];
}

DepthProcessingDataRGBD *DepthProcessingDataRGBD::depthHistogram(DepthProcessingDataRGBD *this, int *a2)
{
  var2 = this->var2;
  *(a2 + 23) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 21) = 0u;
  *(a2 + 22) = 0u;
  *(a2 + 19) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 17) = 0u;
  *(a2 + 18) = 0u;
  *(a2 + 15) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  var4 = this->var4;
  if (var4)
  {
    v4 = 0;
    v5 = 0;
    var3 = this->var3;
    do
    {
      if (var3)
      {
        v4 += var3;
        v7 = var3;
        v8 = var2;
        do
        {
          v10 = *v8++;
          v9 = v10;
          if (v10)
          {
            if (v9 <= 999)
            {
              v11 = v9 / 10;
              this = (a2[v11] + 1);
              a2[v11] = this;
            }
          }

          --v7;
        }

        while (v7);
      }

      ++v5;
      var2 += var3;
    }

    while (v5 != var4);
  }

  return this;
}

__objc2_meth_list **DepthProcessingDataRGBD::fillHolesInSource(DepthProcessingDataRGBD *this, CGRect a2, UIInterfaceOrientation a3)
{
  width = a2.size.width;
  x = a2.origin.x;
  var2 = this->var2;
  var3 = this->var3;
  var4 = this->var4;
  result = isFaceBoundingBoxValid(a2.origin.x, a2.origin.y, a2.size.width, a2.size.height);
  if (result && var4 << 32)
  {
    v10 = 0;
    v11 = var3 << 32;
    v12 = var3;
    v13 = var3 >> 2;
    v14 = a3 - 1;
    v15 = x + width * 1.3;
    if (a3 != UIInterfaceOrientationPortraitUpsideDown)
    {
      v15 = x + width * 0.9;
    }

    v16 = (v15 * var4);
    v17 = var4;
    v18 = x + width * -0.1;
    if (a3 != UIInterfaceOrientationPortraitUpsideDown)
    {
      v18 = x + width * -0.45;
    }

    v19 = (v18 * var4);
    if (var3 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = var3;
    }

    if (var4 <= 1)
    {
      v17 = 1;
    }

    result = &OBJC_PROTOCOL___CFXEffectPickerViewDataSource.opt_inst_meths;
    v21 = var2;
    do
    {
      if ((v10 > v16 || v10 < v19 || v14 >= 2) && v11 != 0)
      {
        v25 = 0;
        v26 = v21;
        while (1)
        {
          v27 = v21[v25++];
          if (v27)
          {
            break;
          }

          ++v26;
          if (v20 == v25)
          {
            goto LABEL_50;
          }
        }

        if (v25 < v12)
        {
          v28 = 0;
          do
          {
            v29 = var2[v10 * v13 + v25];
            if (v29)
            {
              if (v28)
              {
                v30 = v29 >= v27 ? v27 : var2[v10 * v13 + v25];
                if (v28 < DepthProcessingDataRGBD::fillHolesInSource(CGRect,UIInterfaceOrientation)::kMaxRun && v30 <= 399)
                {
                  if (v27 <= v29)
                  {
                    v27 = var2[v10 * v13 + v25];
                  }

                  v31 = v28;
                  v32 = v28 - 1;
                  if (v28 >= 1)
                  {
                    v33 = 0;
                    v34 = (v31 + 3) & 0x7FFFFFFFFFFFFFFCLL;
                    v35 = vdupq_n_s64(v32);
                    v36 = &v26[-v31];
                    do
                    {
                      v37 = vdupq_n_s64(v33);
                      v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_242B5B760)));
                      if (vuzp1_s16(v38, 2).u8[0])
                      {
                        *v36 = v27;
                      }

                      if (vuzp1_s16(v38, 2).i8[2])
                      {
                        v36[1] = v27;
                      }

                      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_242B5BC40)))).i32[1])
                      {
                        v36[2] = v27;
                        v36[3] = v27;
                      }

                      v33 += 4;
                      v36 += 4;
                    }

                    while (v34 != v33);
                  }

                  v28 = 0;
                  v27 = v29;
                }
              }
            }

            else
            {
              ++v28;
            }

            ++v25;
            ++v26;
          }

          while (v25 != v12);
        }
      }

LABEL_50:
      ++v10;
      v21 += v13;
    }

    while (v10 != v17);
  }

  return result;
}

void DepthProcessingDataRGBD::setAverageDepthAndSegment(DepthProcessingDataRGBD *this, int a2)
{
  v4 = this->var8 * this->var9;
  bzero(this->var10, v4);
  bzero(this->var11, v4);
  v5 = 0;
  if (!v4)
  {
    v7 = 1;
LABEL_11:
    v9 = v5 / v7;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = this->var2[v6];
    if (v8)
    {
      if (v8 < a2)
      {
        this->var11[v6] = -1;
        this->var10[v6] = -1;
        ++v7;
        v5 += v8;
      }
    }

    else
    {
      this->var11[v6] = -1;
    }

    ++v6;
  }

  while (v4 != v6);
  if (v7)
  {
    goto LABEL_11;
  }

  v9 = 0;
LABEL_12:
  this->var15 = v9;
}

void sub_242B1AE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  ContourProcessing::~ContourProcessing(va);

  _Unwind_Resume(a1);
}

void DepthProcessingDataRGBD::DepthProcessingDataRGBD(DepthProcessingDataRGBD *this, unint64_t a2, unint64_t a3, int a4)
{
  this->var7 = 0;
  this->var8 = a2;
  this->var9 = a3;
  if (a4)
  {
    this->var3 = a2 >> 1;
    this->var4 = a3 >> 2;
    operator new[]();
  }

  this->var3 = a3;
  this->var4 = a2;
  this->var5 = 0;
  this->var6 = 0;
  v5 = a3 * a2;
  if (malloc_type_posix_memalign(&this->var10, 0x40uLL, a3 * a2, 0x100004077774924uLL))
  {
    v6 = "!posix_memalign( (void**)&_depthData, kAlignment, sizeof(unsigned char) * w * h)";
    v7 = 76;
  }

  else if (malloc_type_posix_memalign(&this->var11, 0x40uLL, v5, 0x100004077774924uLL))
  {
    v6 = "!posix_memalign( (void**)&_depthOuter, kAlignment, sizeof(unsigned char) * w * h)";
    v7 = 77;
  }

  else
  {
    if (!malloc_type_posix_memalign(&this->var2, 0x40uLL, 4 * this->var3 * this->var4, 0x100004052888210uLL))
    {
      operator new[]();
    }

    v6 = "!posix_memalign( (void**)&_depthDataBufferInt, kAlignment, sizeof(int) * _subWidth * _subHeight)";
    v7 = 78;
  }

  __assert_rtn("DepthProcessingDataRGBD", "JFXDepthProcessingData.hpp", v7, v6);
}

void CPPCVPixelBufferReleaseBytesCallback(void *a1, const void *a2)
{
  if (a2)
  {
    JUMPOUT(0x245D21BB0);
  }
}

void DepthProcessingDataRGBD::~DepthProcessingDataRGBD(DepthProcessingDataRGBD *this)
{
  free(this->var10);
  free(this->var11);
  free(this->var2);
  if (this->var0)
  {
    MEMORY[0x245D21BB0](this->var0, 0x1000C8052888210);
  }

  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x245D21BB0](var1, 0x1000C8052888210);
  }

  CVPixelBufferRelease(this->var5);
  var7 = this->var7;
  this->var7 = 0;
}

dispatch_queue_t JFXCreateDispatchQueue(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 jfxBundle];
  v10 = [v9 bundleIdentifier];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", v10, v12, v7];

  v14 = dispatch_queue_create([v13 UTF8String], v6);

  return v14;
}

uint64_t JFXDeviceIsiPhone()
{
  if (JFXDeviceIsiPhone_onceToken != -1)
  {
    JFXDeviceIsiPhone_cold_1();
  }

  return JFXDeviceIsiPhone_isiPhone;
}

void __JFXDeviceIsiPhone_block_invoke()
{
  v0 = MGCopyAnswer();
  JFXDeviceIsiPhone_isiPhone = [v0 intValue] == 1;
}

uint64_t JFXRGBOnlyMemoji(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __JFXRGBOnlyMemoji_block_invoke;
  block[3] = &unk_278D79D20;
  v7 = v1;
  v2 = JFXRGBOnlyMemoji_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&JFXRGBOnlyMemoji_onceToken, block);
  }

  v4 = JFXRGBOnlyMemoji_rgbOnlyMemoji;

  return v4;
}

void __JFXRGBOnlyMemoji_block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && JFXDeviceIsiPhone_onceToken != -1)
  {
    JFXDeviceIsiPhone_cold_1();
  }

  JFXRGBOnlyMemoji_rgbOnlyMemoji = 0;
  v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.VideoConference"];
  v2 = [v1 objectForKey:@"NoDepthMemoji"];

  if (v2)
  {
    JFXRGBOnlyMemoji_rgbOnlyMemoji = [v1 BOOLForKey:@"NoDepthMemoji"];
    v3 = JFXLog_camera();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __JFXRGBOnlyMemoji_block_invoke_cold_2(v3);
    }
  }
}

float64x2_t transformInfoWithWorldToViewTransform@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>, __int128 a4, __int128 a5, __int128 a6, __int128 a7, __int128 a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19)
{
  v20 = 0;
  v21 = a1[5];
  __asm { FMOV            V1.2D, #-0.5 }

  v27 = vmulq_f64(a3, _Q1);
  a16 = a1[4];
  a17 = v21;
  v28 = a1[7];
  a18 = a1[6];
  a19 = v28;
  v29 = a1[1];
  a12 = *a1;
  a13 = v29;
  v30 = a1[3];
  a14 = a1[2];
  a15 = v30;
  a4 = 0u;
  a5 = 0u;
  a6 = 0u;
  a7 = 0u;
  a8 = 0u;
  a9 = 0u;
  a10 = 0u;
  a11 = 0u;
  do
  {
    v32 = *(&a12 + v20);
    v31 = *(&a12 + v20 + 16);
    v33 = (&a4 + v20);
    *v33 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_242B5B860, v32.f64[0]), xmmword_242B5B850, v32, 1), 0, v31.f64[0]), v27, v31, 1);
    v33[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v32.f64[0]), 0, v32, 1), xmmword_242B5B860, v31.f64[0]), xmmword_242B5B850, v31, 1);
    v20 += 32;
  }

  while (v20 != 128);
  v34 = MEMORY[0x277D41B90];
  v35 = *(MEMORY[0x277D41B90] + 80);
  *(a2 + 64) = *(MEMORY[0x277D41B90] + 64);
  *(a2 + 80) = v35;
  v36 = v34[7];
  *(a2 + 96) = v34[6];
  *(a2 + 112) = v36;
  v37 = v34[1];
  *a2 = *v34;
  *(a2 + 16) = v37;
  v38 = v34[3];
  *(a2 + 32) = v34[2];
  *(a2 + 48) = v38;
  a16 = a8;
  a17 = a9;
  a18 = a10;
  a19 = a11;
  a12 = a4;
  a13 = a5;
  a14 = a6;
  a15 = a7;
  pv_transform_info_make();
  __asm { FMOV            V0.2D, #0.5 }

  result = vaddq_f64(vmulq_f64(a3, _Q0), *a2);
  *a2 = result;
  return result;
}

double JTGetHostTime()
{
  info = 0;
  if (*&JTGetHostTime_timeBaseFactor == 0.0 && !mach_timebase_info(&info))
  {
    LODWORD(v0) = info.numer;
    LODWORD(v1) = info.denom;
    *&JTGetHostTime_timeBaseFactor = v0 / v1 / 1000000000.0;
  }

  return *&JTGetHostTime_timeBaseFactor * mach_absolute_time();
}

void sub_242B22AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B22E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B2367C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B23DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B267BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (a2 == 1)
  {
    v32 = objc_begin_catch(exception_object);
    [a31 setStatus:4];
    v33 = JFXLog_export();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [v32 description];
      [(JFXReaderWriterExportController *)v34 continueExportAfterDelay];
    }

    [a31 closeSessionWithStatus:2];
    objc_end_catch();
    JUMPOUT(0x242B26714);
  }

  _Unwind_Resume(exception_object);
}

void sub_242B26E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242B270B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{
  v2 = *(a1 + 32);

  return [v2 type];
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{
  v2 = *(a1 + 32);

  return [v2 type];
}

void sub_242B2B368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242B2C0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242B2C1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242B2C4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242B2C5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242B2CB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B2DBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B2DF34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_242B2E960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242B2F790(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_242B30008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_242B3058C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B30ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B31248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242B313DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242B31588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242B31780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CGPointConvertToNormalizedCoordinateSpace(unint64_t a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((a2 - 1) > 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = dword_242B5CDCC[a2 - 1];
  }

  v15 = pvViewContentModeForUIViewContentMode(a1);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v16 = a6 - a4;
    }

    else
    {
      v16 = a4;
    }

    v17 = a5;
    a5 = a6;
  }

  else
  {
    if (v14 == 1)
    {
      v16 = a3;
    }

    else
    {
      v16 = a5 - a3;
    }

    v17 = a6;
  }

  v18 = dword_242B5CD98[v15];
  if (v15 == 1)
  {
    if (a5 <= v17)
    {
      v19 = v17 / a8;
      if (a7 * (v17 / a8) < a5)
      {
        v19 = a5 / a7;
      }
    }

    else
    {
      v19 = a5 / a7;
      if (a8 * (a5 / a7) < v17)
      {
        v19 = v17 / a8;
      }
    }

LABEL_18:
    a7 = a7 * v19;
    goto LABEL_20;
  }

  if (v15 != 3)
  {
    if (v15 != 2)
    {
      goto LABEL_20;
    }

    v19 = a5 / a7;
    if (a8 * (a5 / a7) > v17)
    {
      v19 = v17 / a8;
    }

    goto LABEL_18;
  }

  a7 = a5;
LABEL_20:
  v20 = *MEMORY[0x277CBF348];
  v21 = a7 - a5;
  if ((v18 - 1) < 6)
  {
    v20 = (a7 - a5) * 0.5;
  }

  if (v18 <= 9)
  {
    if (v18 != 8)
    {
      v21 = v20;
    }

    if (v18 != 6)
    {
      v20 = v21;
    }
  }

  else if (v18 == 10 || v18 == 12)
  {
    v20 = a7 - a5;
  }

  return (v16 + v20) / a7;
}

uint64_t orientationRotatedFromPortraitByCardinalAngle(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return dword_242B5CDCC[a1 - 1];
  }
}

uint64_t pvViewContentModeForUIViewContentMode(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_242B5CDD8[a1];
  }
}

CGPath *createClosedCGPathWithPoints(void *a1)
{
  v1 = a1;
  Mutable = CGPathCreateMutable();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __createClosedCGPathWithPoints_block_invoke;
  v4[3] = &__block_descriptor_40_e24_v32__0__NSValue_8Q16_B24l;
  v4[4] = Mutable;
  [v1 enumerateObjectsUsingBlock:v4];

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

void __createClosedCGPathWithPoints_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 CGPointValue];
  v7 = *(a1 + 32);
  if (a3)
  {

    CGPathAddLineToPoint(v7, 0, v5, v6);
  }

  else
  {

    CGPathMoveToPoint(v7, 0, v5, v6);
  }
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242B33F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ensureNSublayers(void *a1, unint64_t a2)
{
  v14 = a1;
  v3 = [v14 sublayers];
  if ([v3 count] != a2)
  {
    v4 = [v3 count];
    v5 = a2 - v4;
    if (a2 > v4)
    {
      do
      {
        v6 = [MEMORY[0x277CD9F90] layer];
        [v14 addSublayer:v6];

        --v5;
      }

      while (v5);
    }

    v7 = [v14 sublayers];
    v8 = [v7 count];

    if (v8 > a2)
    {
      v9 = [v14 sublayers];
      v10 = [v9 copy];

      v11 = [v10 count] - a2;
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = [v10 objectAtIndexedSubscript:i];
          [v13 removeFromSuperlayer];
        }
      }

      v3 = v10;
    }
  }
}

uint64_t JFXCTMCameraModeForAspectRatio(unint64_t a1)
{
  if (a1 > 4)
  {
    return 9;
  }

  else
  {
    return qword_242B5CE80[a1];
  }
}

uint64_t JFXLowResolutionDevice()
{
  if (JFXLowResolutionDevice_onceToken != -1)
  {
    JFXLowResolutionDevice_cold_1();
  }

  return JFXLowResolutionDevice_isLowResolutionDevice;
}

void __JFXLowResolutionDevice_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 jfx_cpuFamily];

  if (v1 > 747742333)
  {
    v2 = v1 == 1741614739;
    v3 = 747742334;
  }

  else
  {
    v2 = v1 == -1829029944;
    v3 = -400654602;
  }

  if (v2 || v1 == v3)
  {
    JFXLowResolutionDevice_isLowResolutionDevice = 1;
  }
}

uint64_t JFXMediumResolutionDevice()
{
  if (JFXMediumResolutionDevice_onceToken != -1)
  {
    JFXMediumResolutionDevice_cold_1();
  }

  return JFXMediumResolutionDevice_isMediumResolutionDevice;
}

void __JFXMediumResolutionDevice_block_invoke()
{
  if (JFXLowResolutionDevice_onceToken != -1)
  {
    JFXLowResolutionDevice_cold_1();
  }

  if ((JFXLowResolutionDevice_isLowResolutionDevice & 1) == 0)
  {
    v0 = [MEMORY[0x277D75418] currentDevice];
    v1 = [v0 userInterfaceIdiom];

    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v3 = [MEMORY[0x277D75418] currentDevice];
      v4 = [v3 jfx_cpuFamily];

      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 jfx_memorySize];

      v2 = v4 == 1176831186 && v6 < 3800000000 || v4 == 131287967;
    }

    JFXMediumResolutionDevice_isMediumResolutionDevice = v2;
  }
}

double JFXUncroppedFrameSizeForAspectRatio(unint64_t a1)
{
  if (a1 > 4)
  {
    v1 = 9;
  }

  else
  {
    v1 = qword_242B5CE80[a1];
  }

  if (aspectRatioIsPortrait(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  return JFXUncroppedFrameSizeForCameraModeAndOrientation(v1, v2);
}

double JFXUncroppedFrameSizeForCameraModeAndOrientation(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 3;
  if ((a1 - 6) <= 3)
  {
    return JFXCTMFrameSizeForCameraModeAndOrientation(6, v2 < 2);
  }

  result = *MEMORY[0x277CBF3A8];
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

LABEL_10:
      v4 = v2 >= 2;
      result = 1280.0;
      v5 = 720.0;
      goto LABEL_19;
    }

    v4 = v2 >= 2;
    result = 1440.0;
LABEL_18:
    v5 = 1080.0;
LABEL_19:
    if (v4)
    {
      return v5;
    }

    return result;
  }

  if (a1 != 3 && a1 != 5)
  {
    if (a1 != 4)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = 1280.0;
  if (v2 >= 2)
  {
    result = 720.0;
  }

  if (JFXLowResolutionDevice_onceToken != -1)
  {
    v6 = result;
    v7 = a2 - 3;
    JFXLowResolutionDevice_cold_1();
    v2 = v7;
    result = v6;
  }

  if ((JFXLowResolutionDevice_isLowResolutionDevice & 1) == 0)
  {
    v4 = v2 >= 2;
    result = 1920.0;
    goto LABEL_18;
  }

  return result;
}

double JFXCTMFrameSizeForCameraModeAndOrientation(uint64_t a1, int a2)
{
  if (JFXCTMFrameSizeForCameraModeAndOrientation_onceToken != -1)
  {
    JFXCTMFrameSizeForCameraModeAndOrientation_cold_1();
  }

  if ((a1 - 6) > 2)
  {
    v4 = &JFXCTMFrameSizeForCameraModeAndOrientation__1_1_Resolutions;
  }

  else
  {
    v4 = off_278D7D220[a1 - 6];
  }

  v5 = *v4;
  v6 = [v5 objectAtIndexedSubscript:JFXCTMFrameSizeForCameraModeAndOrientation_quality];
  [v6 CGSizeValue];
  if (a1 == 9)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

double JFXCroppedFrameSizeForAspectRatio(unint64_t a1)
{
  if (a1 > 4)
  {
    v1 = 9;
  }

  else
  {
    v1 = qword_242B5CE80[a1];
  }

  if (aspectRatioIsPortrait(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  return JFXCroppedFrameSizeForCameraModeAndOrientation(v1, v2);
}

double JFXCroppedFrameSizeForCameraModeAndOrientation(uint64_t a1, uint64_t a2)
{
  if ((a1 - 6) > 3)
  {
    return JFXUncroppedFrameSizeForCameraModeAndOrientation(a1, a2);
  }

  else
  {
    return JFXCTMFrameSizeForCameraModeAndOrientation(a1, (a2 - 3) < 2);
  }
}

unint64_t JFXMinimumVideoDimensionsForCameraMode(uint64_t a1)
{
  v1 = 1440.0;
  if ((a1 - 2) < 4)
  {
    v1 = 1280.0;
  }

  if ((a1 - 6) > 3)
  {
    v2 = dbl_242B5CE70[(a1 - 2) < 4];
  }

  else
  {
    v1 = JFXCTMFrameSizeForCameraModeAndOrientation(6, 1);
  }

  return v1 | (v2 << 32);
}

unint64_t JFXMaximumVideoDimensionsForCameraMode(uint64_t a1)
{
  v1 = 1440.0;
  if ((a1 - 2) < 4)
  {
    v1 = 1920.0;
  }

  if ((a1 - 6) > 3)
  {
    v3 = 0x43800000000;
  }

  else
  {
    v1 = JFXCTMFrameSizeForCameraModeAndOrientation(6, 1);
    v3 = v2 << 32;
  }

  return v3 | v1;
}

__CFString *NSStringFromJFXCameraMode(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"JFXCameraModeUnknown";
  }

  else
  {
    return off_278D7D238[a1 - 1];
  }
}

void __JFXCTMFrameSizeForCameraModeAndOrientation_block_invoke()
{
  v19[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE60] valueWithCGSize:{1920.0, 1440.0}];
  v19[0] = v0;
  v1 = [MEMORY[0x277CCAE60] valueWithCGSize:{1440.0, 1080.0}];
  v19[1] = v1;
  v2 = [MEMORY[0x277CCAE60] valueWithCGSize:{960.0, 720.0}];
  v19[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v4 = JFXCTMFrameSizeForCameraModeAndOrientation__4_3_Resolutions;
  JFXCTMFrameSizeForCameraModeAndOrientation__4_3_Resolutions = v3;

  v5 = [MEMORY[0x277CCAE60] valueWithCGSize:{1920.0, 1080.0}];
  v18[0] = v5;
  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{1440.0, 810.0}];
  v18[1] = v6;
  v7 = [MEMORY[0x277CCAE60] valueWithCGSize:{960.0, 540.0}];
  v18[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v9 = JFXCTMFrameSizeForCameraModeAndOrientation__16_9_Resolutions;
  JFXCTMFrameSizeForCameraModeAndOrientation__16_9_Resolutions = v8;

  v10 = [MEMORY[0x277CCAE60] valueWithCGSize:{1440.0, 1440.0}];
  v11 = [MEMORY[0x277CCAE60] valueWithCGSize:{1080.0, 1080.0, v10}];
  v17[1] = v11;
  v12 = [MEMORY[0x277CCAE60] valueWithCGSize:{720.0, 720.0}];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v14 = JFXCTMFrameSizeForCameraModeAndOrientation__1_1_Resolutions;
  JFXCTMFrameSizeForCameraModeAndOrientation__1_1_Resolutions = v13;

  if (JFXLowResolutionDevice_onceToken != -1)
  {
    __JFXCTMFrameSizeForCameraModeAndOrientation_block_invoke_cold_1();
  }

  v15 = JFXLowResolutionDevice_isLowResolutionDevice;
  if (JFXMediumResolutionDevice_onceToken != -1)
  {
    __JFXCTMFrameSizeForCameraModeAndOrientation_block_invoke_cold_2();
  }

  v16 = JFXMediumResolutionDevice_isMediumResolutionDevice;
  if (v15)
  {
    v16 = 2;
  }

  JFXCTMFrameSizeForCameraModeAndOrientation_quality = v16;
}

void sub_242B38698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = JFXGuidedUpscaler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::swap[abi:ne200100]<objc_object  {objcproto10MTLTexture}* {__strong}>(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = 0;
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = *a2;
  *a2 = v3;
}

void sub_242B39810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242B3B298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B3B5BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_242B3B918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242B3BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void VTCompressionOutputCallbackImpl(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "No sample buffer received. VTCompressionSession failed with status: %d", v2, 8u);
}

atomic_ullong *std::future<opaqueCMSampleBuffer *>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

void JFX_configureCaptureDevice_cold_1(char a1)
{
  v6 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void JFX_logCameraIntrinsics_cold_1()
{
  v0 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void JFX_logCameraIntrinsics_cold_2(double a1)
{
  LODWORD(a1) = HIDWORD(a1);
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void JFX_logCameraIntrinsics_cold_3()
{
  v0 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void JFX_logCameraIntrinsics_cold_4(double a1)
{
  LODWORD(a1) = HIDWORD(a1);
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void JFX_logCameraIntrinsics_cold_5(double a1)
{
  *&a1 = (180.0 * *&a1) / 3.1416;
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void JFX_logCameraIntrinsics_cold_6(double a1)
{
  *&a1 = vmuls_lane_f32(180.0, *&a1, 1) / 3.1416;
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void logMetadataFromEXIFMetadata_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "kCGImagePropertyExifDictionary %@", &v2, 0xCu);
}

void HEVCLosslessEncoder::Open()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void HEVCLosslessEncoder::ConfigEncoder()
{
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void HEVCLosslessEncoder::EncodeFrame()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __JFXRGBOnlyMemoji_block_invoke_cold_2(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = JFXRGBOnlyMemoji_rgbOnlyMemoji;
  _os_log_error_impl(&dword_242A3B000, log, OS_LOG_TYPE_ERROR, "Set NoDepthMemoji to %i using default", v1, 8u);
}

CGRect AVMakeRectWithAspectRatioInsideRect(CGSize aspectRatio, CGRect boundingRect)
{
  MEMORY[0x282138708](aspectRatio, *&aspectRatio.height, boundingRect.origin, *&boundingRect.origin.y, boundingRect.size, *&boundingRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2821DE300](string);
  result.y = v2;
  result.x = v1;
  return result;
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

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
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

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t pv_simd_matrix_rotate()
{
  return MEMORY[0x2821A2510]();
}

{
  return MEMORY[0x2821A2518]();
}

uint64_t pv_simd_matrix_translate()
{
  return MEMORY[0x2821A2540]();
}

{
  return MEMORY[0x2821A2548]();
}

uint64_t pv_simd_matrix_unproject_to_plane()
{
  return MEMORY[0x2821A25C0]();
}

{
  return MEMORY[0x2821A25C8]();
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}