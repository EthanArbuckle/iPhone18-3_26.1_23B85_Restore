uint64_t FigDepthBytesPerPixelForDepthFormat(int a1)
{
  result = 2;
  if (a1 > 1717856626)
  {
    if (a1 > 1751411058)
    {
      if (a1 == 1751411059)
      {
        return result;
      }

      v3 = 1932996149;
LABEL_11:
      if (a1 == v3)
      {
        return result;
      }

      return 0;
    }

    if (a1 != 1717856627)
    {
      v3 = 1751410032;
      goto LABEL_11;
    }

    return 4;
  }

  if (a1 != 825306677 && a1 != 825437747)
  {
    if (a1 != 1717855600)
    {
      return 0;
    }

    return 4;
  }

  return result;
}

uint64_t FigDepthConvertBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelBufferOut = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType == v5)
  {
    FigDepthConvertBuffer_cold_12(&v83);
    goto LABEL_97;
  }

  v6 = v5;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v9 = PixelFormatType == 1717855600;
  if (PixelFormatType == 1751410032)
  {
    v9 = 1;
  }

  v11 = v6 == 1717855600 || v6 == 1751410032;
  v12 = PixelFormatType == 1751411059 || PixelFormatType == 1751410032;
  if (v9 != v11)
  {
    v13 = Height;
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v15 = CVPixelBufferGetBytesPerRow(a2);
    if ((Width & 7) == 0 && (BytesPerRow & 0xF) == 0 && (v15 & 0xF) == 0)
    {
      v16 = CVPixelBufferGetBytesPerRow(a1);
      v17 = CVPixelBufferGetPixelFormatType(a1);
      v18 = CVPixelBufferGetWidth(a2);
      v19 = CVPixelBufferGetHeight(a2);
      v20 = CVPixelBufferGetBytesPerRow(a2);
      v21 = CVPixelBufferGetPixelFormatType(a2);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      CVPixelBufferLockBaseAddress(a2, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      v23 = CVPixelBufferGetBaseAddress(a2);
      if (v17 == 1751411059 || v17 == 1751410032)
      {
        if (v21 == 1751411059 || v21 == 1751410032)
        {
          if (v19)
          {
            v24 = 0;
            v25 = vdupq_n_s32(0x38D1B717u);
            do
            {
              if (v18)
              {
                v26 = 0;
                for (i = 0; i < v18; i += 8)
                {
                  v28 = BaseAddress[v26];
                  v29 = vmaxq_f32(vcvtq_f32_f16(*v28.i8), v25);
                  v30 = vmaxq_f32(vcvt_hight_f32_f16(v28), v25);
                  v31 = vrecpeq_f32(v29);
                  v32 = vrecpeq_f32(v30);
                  v23[v26++] = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(v31, vrecpsq_f32(v29, v31))), vmulq_f32(v32, vrecpsq_f32(v30, v32)));
                }
              }

              ++v24;
              BaseAddress = (BaseAddress + v16);
              v23 = (v23 + v20);
            }

            while (v24 != v19);
          }
        }

        else if (v19)
        {
          v59 = 0;
          v60 = vdupq_n_s32(0x38D1B717u);
          do
          {
            if (v18)
            {
              v61 = 0;
              v62 = v23;
              v63 = BaseAddress;
              do
              {
                v64 = *v63++;
                v65 = vmaxq_f32(vcvtq_f32_f16(*v64.i8), v60);
                v66 = vmaxq_f32(vcvt_hight_f32_f16(v64), v60);
                v67 = vrecpeq_f32(v65);
                v68 = vrecpeq_f32(v66);
                *v62 = vmulq_f32(v67, vrecpsq_f32(v65, v67));
                v62[1] = vmulq_f32(v68, vrecpsq_f32(v66, v68));
                v62 += 2;
                v61 += 8;
              }

              while (v18 > v61);
            }

            ++v59;
            BaseAddress = (BaseAddress + v16);
            v23 = (v23 + v20);
          }

          while (v59 != v19);
        }
      }

      else if (v21 == 1751411059 || v21 == 1751410032)
      {
        if (v19)
        {
          v47 = 0;
          v48 = vdupq_n_s32(0x38D1B717u);
          do
          {
            if (v18)
            {
              v49 = 0;
              v50 = v23;
              v51 = BaseAddress;
              do
              {
                v52 = *v51;
                v53 = v51[1];
                v51 += 2;
                v54 = vmaxq_f32(v52, v48);
                v55 = vmaxq_f32(v53, v48);
                v56 = vrecpeq_f32(v54);
                v57 = vrecpeq_f32(v55);
                *v50++ = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(v56, vrecpsq_f32(v54, v56))), vmulq_f32(v57, vrecpsq_f32(v55, v57)));
                v49 += 8;
              }

              while (v18 > v49);
            }

            ++v47;
            BaseAddress = (BaseAddress + v16);
            v23 = (v23 + v20);
          }

          while (v47 != v19);
        }
      }

      else if (v19)
      {
        v70 = 0;
        v71 = vdupq_n_s32(0x38D1B717u);
        do
        {
          if (v18)
          {
            v72 = 0;
            for (j = 0; j < v18; j += 8)
            {
              v74 = &v23[v72];
              v75 = vmaxq_f32(BaseAddress[v72], v71);
              v76 = vmaxq_f32(BaseAddress[v72 + 1], v71);
              v77 = vrecpeq_f32(v75);
              v78 = vrecpeq_f32(v76);
              v79 = vmulq_f32(v77, vrecpsq_f32(v75, v77));
              v80 = vmulq_f32(v78, vrecpsq_f32(v76, v78));
              *v74 = vmulq_f32(v79, vrecpsq_f32(v75, v79));
              v74[1] = vmulq_f32(v80, vrecpsq_f32(v76, v80));
              v72 += 2;
            }
          }

          ++v70;
          BaseAddress = (BaseAddress + v16);
          v23 = (v23 + v20);
        }

        while (v70 != v19);
      }

      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      CVPixelBufferUnlockBaseAddress(a2, 0);
      goto LABEL_92;
    }

    if (v12 || v6 == 1751411059 || v6 == 1751410032)
    {
      v35 = ((PixelFormatType - 1717856627) & 0xFDFFFFFF) != 0 ? 1717855600 : 1717856627;
      v36 = CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, v13, v35, 0, &pixelBufferOut);
      if (v36)
      {
        FigDepthConvertBuffer_cold_2(v36, &v83);
        goto LABEL_97;
      }
    }

    if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
    {
      if (v6 == 1751411059 || v6 == 1751410032)
      {
        if (!figDepthClampAndInvertFloat32_C(a1, pixelBufferOut))
        {
          FigDepthConvertBuffer_cold_10(&v83);
          goto LABEL_97;
        }

        v58 = figDepthConvertBufferFloat32ToFloat16(pixelBufferOut, a2);
        if (v58)
        {
          FigDepthConvertBuffer_cold_9(v58, &v83);
          goto LABEL_97;
        }
      }

      else if (!figDepthClampAndInvertFloat32_C(a1, a2))
      {
        FigDepthConvertBuffer_cold_11(&v83);
        goto LABEL_97;
      }

      goto LABEL_92;
    }

    if (v6 != 1751411059 && v6 != 1751410032)
    {
      v69 = figDepthConvertBufferFloat16ToFloat32(a1, pixelBufferOut);
      if (v69)
      {
        FigDepthConvertBuffer_cold_7(v69, &v83);
        goto LABEL_97;
      }

      if (!figDepthClampAndInvertFloat32_C(pixelBufferOut, a2))
      {
        FigDepthConvertBuffer_cold_8(&v83);
        goto LABEL_97;
      }

      goto LABEL_92;
    }

    v37 = figDepthConvertBufferFloat16ToFloat32(a1, pixelBufferOut);
    if (v37)
    {
      FigDepthConvertBuffer_cold_3(v37, &v83);
      goto LABEL_97;
    }

    v38 = pixelBufferOut;
    if (CVPixelBufferLockBaseAddress(pixelBufferOut, 0))
    {
      FigDepthConvertBuffer_cold_4(&v83);
    }

    else
    {
      v39 = CVPixelBufferGetBaseAddress(v38);
      v40 = CVPixelBufferGetHeight(v38);
      v41 = CVPixelBufferGetWidth(v38);
      v42 = CVPixelBufferGetBytesPerRow(v38);
      if (v40)
      {
        for (k = 0; k != v40; ++k)
        {
          if (v41)
          {
            for (m = 0; m != v41; ++m)
            {
              v45 = v39[m];
              if (v45 < 0.0001)
              {
                v45 = 0.0001;
              }

              v39[m] = 1.0 / v45;
            }
          }

          v39 = (v39 + v42);
        }
      }

      if (!CVPixelBufferUnlockBaseAddress(v38, 0))
      {
        v46 = figDepthConvertBufferFloat32ToFloat16(pixelBufferOut, a2);
        if (v46)
        {
          FigDepthConvertBuffer_cold_6(v46, &v83);
LABEL_97:
          v33 = v83;
          goto LABEL_93;
        }

        goto LABEL_92;
      }

      FigDepthConvertBuffer_cold_5(&v83);
    }

    FigDebugAssert3();
    v33 = FigSignalErrorAtGM();
    goto LABEL_93;
  }

  if (!v12)
  {
    if (v6 != 1751411059 && v6 != 1751410032)
    {
      goto LABEL_92;
    }

    v34 = figDepthConvertBufferFloat32ToFloat16(a1, a2);
    goto LABEL_59;
  }

  v33 = 0;
  if (v6 != 1751410032 && v6 != 1751411059)
  {
    v34 = figDepthConvertBufferFloat16ToFloat32(a1, a2);
LABEL_59:
    if (v34)
    {
      FigDepthConvertBuffer_cold_1(v34, &v83);
      goto LABEL_97;
    }

LABEL_92:
    v33 = 0;
  }

LABEL_93:
  CVPixelBufferRelease(pixelBufferOut);
  return v33;
}

uint64_t figDepthConvertBufferFloat16ToFloat32(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  src.data = CVPixelBufferGetBaseAddress(a1);
  src.height = CVPixelBufferGetHeight(a1);
  src.width = CVPixelBufferGetWidth(a1);
  src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  dest.data = CVPixelBufferGetBaseAddress(a2);
  dest.height = CVPixelBufferGetHeight(a2);
  dest.width = CVPixelBufferGetWidth(a2);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(a2);
  v4 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  if (v4)
  {
    figDepthConvertBufferFloat16ToFloat32_cold_1(v4, &v8);
    return v8;
  }

  else
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return 0;
  }
}

uint64_t figDepthConvertBufferFloat32ToFloat16(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  src.data = CVPixelBufferGetBaseAddress(a1);
  src.height = CVPixelBufferGetHeight(a1);
  src.width = CVPixelBufferGetWidth(a1);
  src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  dest.data = CVPixelBufferGetBaseAddress(a2);
  dest.height = CVPixelBufferGetHeight(a2);
  dest.width = CVPixelBufferGetWidth(a2);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(a2);
  v4 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
  if (v4)
  {
    figDepthConvertBufferFloat32ToFloat16_cold_1(v4, &v8);
    return v8;
  }

  else
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return 0;
  }
}

uint64_t figDepthClampAndInvertFloat32_C(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    figDepthClampAndInvertFloat32_C_cold_1();
    return 0;
  }

  if (CVPixelBufferLockBaseAddress(a2, 0))
  {
    figDepthClampAndInvertFloat32_C_cold_2();
    return 0;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v5 = CVPixelBufferGetBaseAddress(a2);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        for (j = 0; j != Width; ++j)
        {
          v12 = BaseAddress[j];
          if (v12 < 0.0001)
          {
            v12 = 0.0001;
          }

          v5[j] = 1.0 / v12;
        }
      }

      BaseAddress = (BaseAddress + BytesPerRow);
      v5 = (v5 + v9);
    }
  }

  v13 = 1;
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return v13;
}

uint64_t FigDepthScaleBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);

  return FigDepthScaleBufferWithCrop(a1, a2, 0.0, 0.0, Width, Height);
}

uint64_t FigDepthScaleBufferWithCrop(__CVBuffer *a1, __CVBuffer *a2, double a3, double a4, double a5, double a6)
{
  *v10.i64 = a3;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  pixelBuffer = a1;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v16 = CVPixelBufferGetBytesPerRow(a2);
  v17 = CVPixelBufferGetPixelFormatType(a2);
  v18 = FigDepthBytesPerPixelForDepthFormat(PixelFormatType);
  if (!v18)
  {
    FigDepthScaleBufferWithCrop_cold_4(v344);
    return v344[0];
  }

  v19 = v18;
  if (v18 != FigDepthBytesPerPixelForDepthFormat(v17))
  {
    FigDepthScaleBufferWithCrop_cold_1(&v343);
    return v343;
  }

  v20 = a5;
  v21 = a6;
  v22 = a5 / Width;
  v23 = v21 / Height;
  if (v22 == v23)
  {
    v24 = a1;
    if (v22 == 2.0)
    {
      v25 = 0x20u / v19;
      v26 = v25 >> 1;
      v27 = 2;
LABEL_6:
      v28 = 1;
      goto LABEL_11;
    }

    if (v22 == 4.0)
    {
      v25 = 0x40u / v19;
      v26 = v25 >> 2;
      v27 = 4;
    }

    else
    {
      if (v22 == 0.5)
      {
        v25 = 8u / v19;
        v26 = 2 * v25;
        v27 = -2;
        goto LABEL_6;
      }

      if (v22 != 0.25)
      {
        v28 = 0;
        v27 = 0;
        v26 = 1;
        v25 = 1;
LABEL_11:
        if ((v25 - 1) & v20 | v28 & v21 || ((v26 - 1) & Width) != 0)
        {
          v27 = 0;
        }

        if (CVPixelBufferGetWidth(pixelBuffer) != v20 || CVPixelBufferGetHeight(pixelBuffer) != v21)
        {
          v27 = 0;
        }

        goto LABEL_17;
      }

      v25 = 8u / v19;
      v26 = 4 * v25;
      v27 = -4;
    }

    v28 = 3;
    goto LABEL_11;
  }

  v27 = 0;
  v24 = pixelBuffer;
LABEL_17:
  v341 = v21;
  v29 = CVPixelBufferLockBaseAddress(v24, 1uLL);
  if (v29)
  {
    v338 = v29;
    FigDepthScaleBufferWithCrop_cold_2();
  }

  else
  {
    v30 = CVPixelBufferLockBaseAddress(a2, 0);
    if (v30)
    {
      v338 = v30;
      FigDepthScaleBufferWithCrop_cold_3();
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(v24);
      v32 = CVPixelBufferGetBaseAddress(a2);
      v45 = v32;
      if (v27 > 1)
      {
        if (v27 == 4)
        {
          if (v19 == 2)
          {
            if (Height)
            {
              for (i = 0; i != Height; ++i)
              {
                if (Width)
                {
                  v70 = 0;
                  v71 = v45;
                  v72 = BaseAddress;
                  do
                  {
                    v73 = vld4q_s16(v72);
                    v72 += 32;
                    *v71++ = v73;
                    v70 += 8;
                  }

                  while (Width > v70);
                }

                BaseAddress = (BaseAddress + 4 * BytesPerRow);
                v45 = (v45 + v16);
              }
            }
          }

          else if (Height)
          {
            for (j = 0; j != Height; ++j)
            {
              if (Width)
              {
                v92 = 0;
                v93 = v45;
                v94 = BaseAddress;
                do
                {
                  v95 = vld2q_f32(v94);
                  *v93++ = v95;
                  v92 += 4;
                  v94 += 16;
                }

                while (Width > v92);
              }

              BaseAddress = (BaseAddress + 4 * BytesPerRow);
              v45 = (v45 + v16);
            }
          }
        }

        else if (v19 == 2)
        {
          if (Height)
          {
            for (k = 0; k != Height; ++k)
            {
              if (Width)
              {
                v52 = 0;
                v53 = BaseAddress;
                v54 = v45;
                do
                {
                  v55 = vld2q_s16(v53);
                  v53 += 16;
                  *v54++ = v55;
                  v52 += 8;
                }

                while (Width > v52);
              }

              BaseAddress = (BaseAddress + 2 * BytesPerRow);
              v45 = (v45 + v16);
            }
          }
        }

        else if (Height)
        {
          for (m = 0; m != Height; ++m)
          {
            if (Width)
            {
              v84 = 0;
              v85 = v45;
              v86 = BaseAddress;
              do
              {
                v87 = vld2q_f32(v86);
                v86 += 8;
                *v85++ = v87;
                v84 += 4;
              }

              while (Width > v84);
            }

            BaseAddress = (BaseAddress + 2 * BytesPerRow);
            v45 = (v45 + v16);
          }
        }
      }

      else if (v27 == -4)
      {
        v65 = (v32 + v16);
        if (v19 == 4)
        {
          *v34.i8 = *BaseAddress;
          *v66.i8 = vdup_lane_s32(*BaseAddress, 0);
          v67 = v20 - 2;
          if (v20 == 2)
          {
            v35.i64[0] = v66.i64[0];
            v68 = v32;
          }

          else
          {
            v185 = 0;
            v186 = &BaseAddress[1];
            v33.i64[0] = 0x3E0000003EC00000;
            v68 = v32;
            do
            {
              v36.i64[0] = v34.i64[0];
              v187 = (v68 + v16);
              *v35.i8 = vext_s8(*v66.i8, *v34.i8, 4uLL);
              v66.i64[1] = v34.i64[0];
              v188 = *v186++;
              *v34.i8 = v188;
              v189 = vzip1q_s32(v35, v35);
              *v35.i8 = vext_s8(*v36.i8, v188, 4uLL);
              v37.i64[1] = v35.i64[0];
              v37 = vzip2q_s32(v37, v37);
              v190 = vmlaq_f32(vmulq_f32(v189, xmmword_1AD056620), xmmword_1AD056630, vzip1q_s32(v36, v36));
              v38 = vmlaq_f32(vmulq_f32(vzip2q_s32(v66, v66), xmmword_1AD056620), xmmword_1AD056630, v37);
              *v68 = v190;
              v68[1] = v38;
              v68 += 2;
              *v187 = v190;
              v187[1] = v38;
              v185 += 2;
              v66.i64[0] = v36.i64[0];
            }

            while (v67 > v185);
            v65 = (v68 + v16);
          }

          v33.i64[1] = v34.i64[0];
          v191 = vzip1q_s32(v35, v35);
          v192 = vzip1q_s32(v34, v34);
          v193 = vmlaq_f32(vmulq_f32(v191, xmmword_1AD056620), xmmword_1AD056630, v192);
          v194 = vmlaq_lane_f32(vmulq_f32(vzip2q_s32(v33, v33), xmmword_1AD056620), xmmword_1AD056630, *v34.i8, 1);
          *v68 = v193;
          v68[1] = v194;
          *v65 = v193;
          v65[1] = v194;
          v195 = (v32 + 2 * v16);
          if (v341 == 1)
          {
            v196 = BaseAddress;
          }

          else
          {
            v209 = 0;
            v210 = 2 * v16;
            v211 = 4 * v16;
            v34.i64[1] = 0x3F0C00003F440000;
            v191.i64[1] = 0x3EA800003DE00000;
            v192.i64[1] = 0x3DA000003DE00000;
            v193.i64[1] = 0x3D4000003C800000;
            v212 = &BaseAddress[1];
            v194.i64[0] = 0x3DA000003E700000;
            v37.i64[0] = 0x3F0C00003EC80000;
            v213 = 3 * v16;
            v214 = 5 * v16;
            do
            {
              v196 = (BaseAddress + BytesPerRow);
              *v39.i8 = *BaseAddress;
              *v38.i8 = *(BaseAddress + BytesPerRow);
              if (v20 == 2)
              {
                v215 = (v195 + v16);
                v216 = (v195 + v210);
                v217 = (v195 + v213);
                *v40.f32 = vdup_lane_s32(*v39.i8, 0);
                *v41.f32 = vdup_lane_s32(*v38.i8, 0);
                v218 = v195;
              }

              else
              {
                v219 = 0;
                v220 = vdup_lane_s32(*v38.i8, 0);
                *v221.f32 = vdup_lane_s32(*v39.i8, 0);
                v222 = v45;
                v223 = v212;
                do
                {
                  v42.i64[0] = v38.i64[0];
                  v43.i64[0] = v39.i64[0];
                  v224 = (v222 + v210);
                  v225 = (v222 + v213);
                  v226 = (v222 + v211);
                  v227 = (v222 + v214);
                  *v38.i8 = vext_s8(*v221.f32, *v39.i8, 4uLL);
                  v40.i64[1] = v39.i64[0];
                  *v41.f32 = vext_s8(v220, *v42.f32, 4uLL);
                  v221.i64[1] = v42.i64[0];
                  v228 = vzip1q_s32(v38, v38);
                  *v39.i8 = *v223;
                  v229 = vzip2q_s32(v40, v40);
                  *v38.i8 = *(v223 + BytesPerRow);
                  *v40.f32 = vext_s8(*&v40.u32[2], *v223, 4uLL);
                  v44.i64[1] = v40.i64[0];
                  v230 = vzip1q_s32(v41, v41);
                  *v41.f32 = vext_s8(*v42.f32, *v38.i8, 4uLL);
                  v231 = vmulq_f32(v228, xmmword_1AD0565A0);
                  v232 = vmulq_f32(v228, xmmword_1AD0565E0);
                  v233 = vmulq_f32(v228, xmmword_1AD056600);
                  v234 = vmulq_f32(v228, xmmword_1AD0565C0);
                  v235 = vzip1q_s32(v43, v43);
                  v236 = vmlaq_f32(v231, xmmword_1AD0565B0, v235);
                  v237 = vmlaq_f32(v232, xmmword_1AD0565F0, v235);
                  v238 = vmlaq_f32(v233, xmmword_1AD056610, v235);
                  v239 = vmlaq_f32(v234, xmmword_1AD0565D0, v235);
                  v235.i64[1] = v41.i64[0];
                  v240 = vzip2q_s32(v44, v44);
                  v221 = vzip2q_s32(v221, v221);
                  v241 = vmlaq_f32(vmulq_f32(v229, xmmword_1AD0565A0), xmmword_1AD0565B0, v240);
                  v242 = vmlaq_f32(vmulq_f32(v229, xmmword_1AD0565E0), xmmword_1AD0565F0, v240);
                  v243 = vmlaq_f32(vmulq_f32(v229, xmmword_1AD056600), xmmword_1AD056610, v240);
                  v244 = vmlaq_f32(vmulq_f32(v229, xmmword_1AD0565C0), xmmword_1AD0565D0, v240);
                  v44 = vzip1q_s32(v42, v42);
                  v245 = vzip2q_s32(v235, v235);
                  *v224 = vmlaq_f32(vmlaq_f32(v236, xmmword_1AD0565C0, v230), xmmword_1AD0565D0, v44);
                  v224[1] = vmlaq_f32(vmlaq_f32(v241, xmmword_1AD0565C0, v221), xmmword_1AD0565D0, v245);
                  *v225 = vmlaq_f32(vmlaq_f32(v237, xmmword_1AD056600, v230), xmmword_1AD056610, v44);
                  v225[1] = vmlaq_f32(vmlaq_f32(v242, xmmword_1AD056600, v221), xmmword_1AD056610, v245);
                  v219 += 2;
                  ++v223;
                  *v226 = vmlaq_f32(vmlaq_f32(v238, xmmword_1AD0565E0, v230), xmmword_1AD0565F0, v44);
                  v226[1] = vmlaq_f32(vmlaq_f32(v243, xmmword_1AD0565E0, v221), xmmword_1AD0565F0, v245);
                  *v227 = vmlaq_f32(vmlaq_f32(v239, xmmword_1AD0565A0, v230), xmmword_1AD0565B0, v44);
                  v227[1] = vmlaq_f32(vmlaq_f32(v244, xmmword_1AD0565A0, v221), xmmword_1AD0565B0, v245);
                  v222 += 2;
                  v221.i64[0] = v43.i64[0];
                  v220 = *v42.f32;
                }

                while (v67 > v219);
                v218 = (v222 + v210);
                v215 = (v222 + v213);
                v216 = (v222 + v211);
                v217 = (v222 + v214);
              }

              v42.i64[1] = v39.i64[0];
              v43.i64[1] = v38.i64[0];
              v40 = vzip1q_s32(v40, v40);
              v42 = vzip2q_s32(v42, v42);
              v41 = vzip1q_s32(v41, v41);
              v43 = vzip2q_s32(v43, v43);
              v246 = vzip1q_s32(v39, v39);
              v247 = vzip1q_s32(v38, v38);
              *v218 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v40, xmmword_1AD0565A0), xmmword_1AD0565B0, v246), xmmword_1AD0565C0, v41), xmmword_1AD0565D0, v247);
              v218[1] = vmlaq_lane_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v42, xmmword_1AD0565A0), xmmword_1AD0565B0, *v39.i8, 1), xmmword_1AD0565C0, v43), xmmword_1AD0565D0, *v38.i8, 1);
              *v215 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v40, xmmword_1AD0565E0), xmmword_1AD0565F0, v246), xmmword_1AD056600, v41), xmmword_1AD056610, v247);
              v215[1] = vmlaq_lane_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v42, xmmword_1AD0565E0), xmmword_1AD0565F0, *v39.i8, 1), xmmword_1AD056600, v43), xmmword_1AD056610, *v38.i8, 1);
              *v216 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v40, xmmword_1AD056600), xmmword_1AD056610, v246), xmmword_1AD0565E0, v41), xmmword_1AD0565F0, v247);
              v216[1] = vmlaq_lane_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v42, xmmword_1AD056600), xmmword_1AD056610, *v39.i8, 1), xmmword_1AD0565E0, v43), xmmword_1AD0565F0, *v38.i8, 1);
              *v217 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v40, xmmword_1AD0565C0), xmmword_1AD0565D0, v246), xmmword_1AD0565A0, v41), xmmword_1AD0565B0, v247);
              v217[1] = vmlaq_lane_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v42, xmmword_1AD0565C0), xmmword_1AD0565D0, *v39.i8, 1), xmmword_1AD0565A0, v43), xmmword_1AD0565B0, *v38.i8, 1);
              v195 = (v195 + v211);
              v212 = (v212 + BytesPerRow);
              v45 = (v45 + v211);
              BaseAddress = (BaseAddress + BytesPerRow);
              v125 = v209++ == v341 - 2;
            }

            while (!v125);
          }

          v248 = (v195 + v16);
          *v34.i8 = *v196;
          *v193.f32 = vdup_lane_s32(*v196, 0);
          if (v20 == 2)
          {
            v192.i64[0] = v193.i64[0];
            *v191.f32 = *v196;
          }

          else
          {
            v331 = 0;
            v332 = &v196[1];
            do
            {
              v194.i64[1] = v34.i64[0];
              v333 = *v332++;
              *v191.f32 = v333;
              *v193.f32 = vext_s8(*v193.f32, *v34.i8, 4uLL);
              *v192.f32 = vext_s8(*v34.i8, v333, 4uLL);
              v37.i64[1] = v192.i64[0];
              v193 = vzip1q_s32(v193, v193);
              v194 = vzip2q_s32(v194, v194);
              v37 = vzip2q_s32(v37, v37);
              v334 = vmlaq_f32(vmulq_f32(v193, xmmword_1AD056620), xmmword_1AD056630, vzip1q_s32(v34, v34));
              v335 = vmlaq_f32(vmulq_f32(v194, xmmword_1AD056620), xmmword_1AD056630, v37);
              *v195 = v334;
              v195[1] = v335;
              v195 += 2;
              *v248 = v334;
              v248[1] = v335;
              v248 += 2;
              v331 += 2;
              v193.i64[0] = v34.i64[0];
              *v34.i8 = v333;
            }

            while (v20 - 2 > v331);
          }

          v34.i64[1] = v191.i64[0];
          v336 = vmlaq_f32(vmulq_f32(vzip1q_s32(v192, v192), xmmword_1AD056620), xmmword_1AD056630, vzip1q_s32(v191, v191));
          v337 = vmlaq_lane_f32(vmulq_f32(vzip2q_s32(v34, v34), xmmword_1AD056620), xmmword_1AD056630, *v191.f32, 1);
          *v195 = v336;
          v195[1] = v337;
          *v248 = v336;
          v248[1] = v337;
        }

        else
        {
          FigFloat16ConvertToFloat32();
          v89 = v88;
          v340 = a2;
          if (v20 == 2)
          {
            v90 = v45;
          }

          else
          {
            v197 = 0;
            v198 = BaseAddress;
            v90 = v45;
            do
            {
              v199 = (v90 + v16);
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              v89 = v200;
              v198 = (v198 + 4);
              FigFloat16ConvertToFloat32();
              *v90 = FigFloat32ConvertToFloat16();
              *(v90 + 1) = FigFloat32ConvertToFloat16();
              *(v90 + 2) = FigFloat32ConvertToFloat16();
              *(v90 + 3) = FigFloat32ConvertToFloat16();
              *(v90 + 4) = FigFloat32ConvertToFloat16();
              *(v90 + 5) = FigFloat32ConvertToFloat16();
              *(v90 + 6) = FigFloat32ConvertToFloat16();
              *(v90 + 7) = FigFloat32ConvertToFloat16();
              *v199 = FigFloat32ConvertToFloat16();
              v199[1] = FigFloat32ConvertToFloat16();
              v199[2] = FigFloat32ConvertToFloat16();
              v199[3] = FigFloat32ConvertToFloat16();
              v199[4] = FigFloat32ConvertToFloat16();
              v199[5] = FigFloat32ConvertToFloat16();
              v199[6] = FigFloat32ConvertToFloat16();
              v199[7] = FigFloat32ConvertToFloat16();
              v197 += 2;
              ++v90;
            }

            while (v20 - 2 > v197);
            v65 = (v90 + v16);
          }

          FigFloat16ConvertToFloat32();
          v202 = v201;
          FigFloat16ConvertToFloat32();
          *v90 = FigFloat32ConvertToFloat16();
          v10.f32[0] = ((v202 * 56.0) + (v89 * 8.0)) * 0.015625;
          *(v90 + 1) = FigFloat32ConvertToFloat16();
          *(v90 + 2) = FigFloat32ConvertToFloat16();
          *(v90 + 3) = FigFloat32ConvertToFloat16();
          *(v90 + 4) = FigFloat32ConvertToFloat16();
          *(v90 + 5) = FigFloat32ConvertToFloat16();
          *(v90 + 6) = FigFloat32ConvertToFloat16();
          *(v90 + 7) = FigFloat32ConvertToFloat16();
          v65->i16[0] = FigFloat32ConvertToFloat16();
          v65->i16[1] = FigFloat32ConvertToFloat16();
          v65->i16[2] = FigFloat32ConvertToFloat16();
          v65->i16[3] = FigFloat32ConvertToFloat16();
          v65->i16[4] = FigFloat32ConvertToFloat16();
          v65->i16[5] = FigFloat32ConvertToFloat16();
          v65->i16[6] = FigFloat32ConvertToFloat16();
          v65->i16[7] = FigFloat32ConvertToFloat16();
          v208 = (v45 + 2 * v16);
          if (v341 != 1)
          {
            v249 = 0;
            v250 = 2 * v16;
            v251 = 4 * v16;
            v252 = &BaseAddress[1];
            v253 = xmmword_1AD056610;
            v254 = 3 * v16;
            v255 = 5 * v16;
            do
            {
              v256 = *BaseAddress;
              *v203.i8 = *(BaseAddress + BytesPerRow);
              v257 = vdup_lane_s16(*BaseAddress, 0);
              v258 = vdup_lane_s16(*v203.i8, 0);
              if (v20 == 4)
              {
                v259 = (v208 + v16);
                v260 = (v208 + v250);
                v261 = (v208 + v254);
                v262 = v208;
              }

              else
              {
                v263 = 0;
                v264 = v45;
                v265 = v252;
                do
                {
                  *v266.i8 = v258;
                  *v267.i8 = v257;
                  v258 = *v203.i8;
                  v257 = v256;
                  v268 = (v264 + v250);
                  *v203.i8 = vext_s8(*v267.i8, v256, 6uLL);
                  v267.u64[1] = vzip2_s16(*v203.i8, v256);
                  *v203.i8 = vzip1_s16(*v203.i8, v256);
                  v269 = vzip1q_s16(v203, v203);
                  v270 = vext_s8(*v266.i8, v258, 6uLL);
                  v266.u64[1] = vzip2_s16(v270, v258);
                  *v206.f32 = vzip1_s16(v270, v258);
                  v256 = *v265;
                  v271 = vext_s8(v257, *v265, 2uLL);
                  *v203.i8 = *(v265 + BytesPerRow);
                  v272 = vzip1q_s16(v206, v206);
                  v273 = (v264 + v254);
                  *v206.f32 = vzip1_s16(v257, v271);
                  *v274.i8 = vzip2_s16(v257, v271);
                  v274.i64[1] = v274.i64[0];
                  v275 = vzip2q_s16(v267, v267);
                  v276 = vzip1q_s16(v206, v206);
                  *v267.i8 = vext_s8(v258, *v203.i8, 2uLL);
                  *&v10.u32[2] = vzip2_s16(v258, *v267.i8);
                  v277 = vzip2q_s16(v266, v266);
                  *v266.i8 = vzip1_s16(v258, *v267.i8);
                  v278 = vzip1q_s16(v266, v266);
                  v279 = vcvtq_f32_f16(*v269.i8);
                  v280 = vcvt_hight_f32_f16(v269);
                  v281 = vcvtq_f32_f16(*v275.i8);
                  v282 = vzip2q_s16(v274, v274);
                  v283 = vcvt_hight_f32_f16(v275);
                  v284 = vcvtq_f32_f16(*v276.i8);
                  v285 = vcvt_hight_f32_f16(v276);
                  v286 = vcvtq_f32_f16(*v272.i8);
                  v207 = vcvt_hight_f32_f16(v272);
                  v287 = vzip2q_s16(v10, v10);
                  v288 = vcvtq_f32_f16(*v277.i8);
                  v289 = vcvt_hight_f32_f16(v277);
                  v290 = vcvtq_f32_f16(*v278.i8);
                  v291 = vcvt_hight_f32_f16(v278);
                  v10 = vcvtq_f32_f16(*v282.i8);
                  v292 = vcvt_hight_f32_f16(v282);
                  v293 = vcvtq_f32_f16(*v287.i8);
                  v294 = vcvt_hight_f32_f16(v287);
                  *v268 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, xmmword_1AD0565A0), xmmword_1AD0565B0, v284), xmmword_1AD0565C0, v286), xmmword_1AD0565D0, v290)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, xmmword_1AD0565A0), xmmword_1AD0565B0, v285), xmmword_1AD0565C0, v207), xmmword_1AD0565D0, v291));
                  v268[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v281, xmmword_1AD0565A0), xmmword_1AD0565B0, v10), xmmword_1AD0565C0, v288), xmmword_1AD0565D0, v293)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v283, xmmword_1AD0565A0), xmmword_1AD0565B0, v292), xmmword_1AD0565C0, v289), xmmword_1AD0565D0, v294));
                  *v273 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, xmmword_1AD0565E0), xmmword_1AD0565F0, v284), xmmword_1AD056600, v286), xmmword_1AD056610, v290)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, xmmword_1AD0565E0), xmmword_1AD0565F0, v285), xmmword_1AD056600, v207), xmmword_1AD056610, v291));
                  v273[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v281, xmmword_1AD0565E0), xmmword_1AD0565F0, v10), xmmword_1AD056600, v288), xmmword_1AD056610, v293)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v283, xmmword_1AD0565E0), xmmword_1AD0565F0, v292), xmmword_1AD056600, v289), xmmword_1AD056610, v294));
                  v295 = (v264 + v251);
                  *v295 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, xmmword_1AD056600), xmmword_1AD056610, v284), xmmword_1AD0565E0, v286), xmmword_1AD0565F0, v290)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, xmmword_1AD056600), xmmword_1AD056610, v285), xmmword_1AD0565E0, v207), xmmword_1AD0565F0, v291));
                  v295[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v281, xmmword_1AD056600), xmmword_1AD056610, v10), xmmword_1AD0565E0, v288), xmmword_1AD0565F0, v293)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v283, xmmword_1AD056600), xmmword_1AD056610, v292), xmmword_1AD0565E0, v289), xmmword_1AD0565F0, v294));
                  v205 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v281, xmmword_1AD0565C0), xmmword_1AD0565D0, v10), xmmword_1AD0565A0, v288), xmmword_1AD0565B0, v293);
                  v204 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v283, xmmword_1AD0565C0), xmmword_1AD0565D0, v292), xmmword_1AD0565A0, v289), xmmword_1AD0565B0, v294);
                  v296 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, xmmword_1AD0565C0), xmmword_1AD0565D0, v284), xmmword_1AD0565A0, v286), xmmword_1AD0565B0, v290)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, xmmword_1AD0565C0), xmmword_1AD0565D0, v285), xmmword_1AD0565A0, v207), xmmword_1AD0565B0, v291));
                  v206 = vcvt_hight_f16_f32(vcvt_f16_f32(v205), v204);
                  v297 = (v264 + v255);
                  *v297 = v296;
                  v297[1] = v206;
                  v263 += 4;
                  ++v265;
                  v264 += 2;
                }

                while (v20 - 4 > v263);
                v262 = (v264 + v250);
                v259 = (v264 + v254);
                v260 = (v264 + v251);
                v261 = (v264 + v255);
                v253 = xmmword_1AD056610;
              }

              v298 = vext_s8(v257, v256, 6uLL);
              *v204.f32 = vzip1_s16(v298, v256);
              *v299.i8 = vzip2_s16(v298, v256);
              v299.i64[1] = v299.i64[0];
              v300 = vzip1q_s16(v204, v204);
              v301 = vzip2q_s16(v299, v299);
              v302 = vext_s8(v258, *v203.i8, 6uLL);
              *v205.f32 = vzip1_s16(v302, *v203.i8);
              *v303.i8 = vzip2_s16(v302, *v203.i8);
              v303.i64[1] = v303.i64[0];
              v304 = vzip1q_s16(v205, v205);
              v305 = vzip2q_s16(v303, v303);
              v306 = vext_s8(v256, vdup_lane_s16(v256, 3), 2uLL);
              *v206.f32 = vzip1_s16(v256, v306);
              *v307.i8 = vzip2_s16(v256, v306);
              v307.i64[1] = v307.i64[0];
              v308 = vzip1q_s16(v206, v206);
              v309 = vzip2q_s16(v307, v307);
              v310 = vext_s8(*v203.i8, vdup_lane_s16(*v203.i8, 3), 2uLL);
              *v207.f32 = vzip1_s16(*v203.i8, v310);
              *v311.i8 = vzip2_s16(*v203.i8, v310);
              v311.i64[1] = v311.i64[0];
              v312 = vzip1q_s16(v207, v207);
              v313 = vzip2q_s16(v311, v311);
              v314 = vcvtq_f32_f16(*v300.i8);
              v315 = vcvt_hight_f32_f16(v300);
              v316 = vcvtq_f32_f16(*v301.i8);
              v317 = vcvt_hight_f32_f16(v301);
              v318 = vcvtq_f32_f16(*v308.i8);
              v319 = vcvt_hight_f32_f16(v308);
              v320 = vcvtq_f32_f16(*v309.i8);
              v206 = vcvt_hight_f32_f16(v309);
              v207 = vcvtq_f32_f16(*v304.i8);
              v205 = vcvt_hight_f32_f16(v304);
              v321 = vcvtq_f32_f16(*v305.i8);
              v322 = vcvt_hight_f32_f16(v305);
              v204 = vcvtq_f32_f16(*v312.i8);
              v323 = vcvt_hight_f32_f16(v312);
              v324 = vcvtq_f32_f16(*v313.i8);
              v325 = vcvt_hight_f32_f16(v313);
              *v262 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v314, xmmword_1AD0565A0), xmmword_1AD0565B0, v318), xmmword_1AD0565C0, v207), xmmword_1AD0565D0, v204)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v315, xmmword_1AD0565A0), xmmword_1AD0565B0, v319), xmmword_1AD0565C0, v205), xmmword_1AD0565D0, v323));
              v262[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v316, xmmword_1AD0565A0), xmmword_1AD0565B0, v320), xmmword_1AD0565C0, v321), xmmword_1AD0565D0, v324)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v317, xmmword_1AD0565A0), xmmword_1AD0565B0, v206), xmmword_1AD0565C0, v322), xmmword_1AD0565D0, v325));
              *v259 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v314, xmmword_1AD0565E0), xmmword_1AD0565F0, v318), xmmword_1AD056600, v207), v253, v204)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v315, xmmword_1AD0565E0), xmmword_1AD0565F0, v319), xmmword_1AD056600, v205), v253, v323));
              v259[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v316, xmmword_1AD0565E0), xmmword_1AD0565F0, v320), xmmword_1AD056600, v321), v253, v324)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v317, xmmword_1AD0565E0), xmmword_1AD0565F0, v206), xmmword_1AD056600, v322), v253, v325));
              v10 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v314, xmmword_1AD056600), v253, v318), xmmword_1AD0565E0, v207), xmmword_1AD0565F0, v204);
              *v260 = vcvt_hight_f16_f32(vcvt_f16_f32(v10), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v315, xmmword_1AD056600), v253, v319), xmmword_1AD0565E0, v205), xmmword_1AD0565F0, v323));
              v260[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v316, xmmword_1AD056600), v253, v320), xmmword_1AD0565E0, v321), xmmword_1AD0565F0, v324)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v317, xmmword_1AD056600), v253, v206), xmmword_1AD0565E0, v322), xmmword_1AD0565F0, v325));
              v326 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v317, xmmword_1AD0565C0), xmmword_1AD0565D0, v206), xmmword_1AD0565A0, v322), xmmword_1AD0565B0, v325);
              v327 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v314, xmmword_1AD0565C0), xmmword_1AD0565D0, v318), xmmword_1AD0565A0, v207), xmmword_1AD0565B0, v204)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v315, xmmword_1AD0565C0), xmmword_1AD0565D0, v319), xmmword_1AD0565A0, v205), xmmword_1AD0565B0, v323));
              v203 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v316, xmmword_1AD0565C0), xmmword_1AD0565D0, v320), xmmword_1AD0565A0, v321), xmmword_1AD0565B0, v324)), v326);
              *v261 = v327;
              v261[1] = v203;
              v208 = (v208 + v251);
              v252 = (v252 + BytesPerRow);
              v45 = (v45 + v251);
              BaseAddress = (BaseAddress + BytesPerRow);
              v125 = v249++ == v341 - 2;
            }

            while (!v125);
          }

          v328 = (v208->i16 + v16);
          FigFloat16ConvertToFloat32();
          if (v20 != 2)
          {
            v329 = 0;
            v330 = 0;
            do
            {
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              v208->i16[0] = FigFloat32ConvertToFloat16();
              v208->i16[1] = FigFloat32ConvertToFloat16();
              v208->i16[2] = FigFloat32ConvertToFloat16();
              v208->i16[3] = FigFloat32ConvertToFloat16();
              v208->i16[4] = FigFloat32ConvertToFloat16();
              v208->i16[5] = FigFloat32ConvertToFloat16();
              v208->i16[6] = FigFloat32ConvertToFloat16();
              v208->i16[7] = FigFloat32ConvertToFloat16();
              *v328 = FigFloat32ConvertToFloat16();
              v328[1] = FigFloat32ConvertToFloat16();
              v328[2] = FigFloat32ConvertToFloat16();
              v328[3] = FigFloat32ConvertToFloat16();
              v328[4] = FigFloat32ConvertToFloat16();
              v328[5] = FigFloat32ConvertToFloat16();
              v328[6] = FigFloat32ConvertToFloat16();
              v330 += 2;
              v328[7] = FigFloat32ConvertToFloat16();
              ++v208;
              v328 += 8;
              v329 += 4;
            }

            while (v20 - 2 > v330);
          }

          FigFloat16ConvertToFloat32();
          FigFloat16ConvertToFloat32();
          v208->i16[0] = FigFloat32ConvertToFloat16();
          v208->i16[1] = FigFloat32ConvertToFloat16();
          v208->i16[2] = FigFloat32ConvertToFloat16();
          v208->i16[3] = FigFloat32ConvertToFloat16();
          v208->i16[4] = FigFloat32ConvertToFloat16();
          v208->i16[5] = FigFloat32ConvertToFloat16();
          v208->i16[6] = FigFloat32ConvertToFloat16();
          v208->i16[7] = FigFloat32ConvertToFloat16();
          *v328 = FigFloat32ConvertToFloat16();
          v328[1] = FigFloat32ConvertToFloat16();
          v328[2] = FigFloat32ConvertToFloat16();
          v328[3] = FigFloat32ConvertToFloat16();
          v328[4] = FigFloat32ConvertToFloat16();
          v328[5] = FigFloat32ConvertToFloat16();
          v328[6] = FigFloat32ConvertToFloat16();
          v328[7] = FigFloat32ConvertToFloat16();
          a2 = v340;
        }
      }

      else if (v27 == -2)
      {
        if (v19 == 4)
        {
          *v46.f32 = *BaseAddress;
          v47 = vdup_lane_s32(*BaseAddress, 0);
          v48 = v20 - 2;
          if (v20 == 2)
          {
            *v49.f32 = v47;
            v50 = v32;
          }

          else
          {
            v96 = 0;
            v97 = &BaseAddress[1];
            v50 = v32;
            do
            {
              v98.i64[0] = v46.i64[0];
              *v99.f32 = vext_s8(v47, *v46.f32, 4uLL);
              v99.i64[1] = v46.i64[0];
              v100 = *v97++;
              *v46.f32 = v100;
              *v49.f32 = vext_s8(*&v99.u32[2], v100, 4uLL);
              v47 = *&v99.u32[2];
              v98.i64[1] = v49.i64[0];
              *v50++ = vmlaq_f32(vmulq_f32(v99, xmmword_1AD056680), xmmword_1AD056690, v98);
              v96 += 2;
            }

            while (v48 > v96);
          }

          v49.i64[1] = v46.i64[0];
          *&v46.u32[2] = vdup_lane_s32(*v46.f32, 1);
          *v50 = vmlaq_f32(vmulq_f32(v49, xmmword_1AD056680), xmmword_1AD056690, v46);
          v101 = (v32 + v16);
          if (v341 == 1)
          {
            v102 = BaseAddress;
          }

          else
          {
            v107 = 0;
            v108 = 2 * v16;
            v109 = &BaseAddress[1];
            do
            {
              v102 = (BaseAddress + BytesPerRow);
              *v110.f32 = *BaseAddress;
              *v111.f32 = *(BaseAddress + BytesPerRow);
              if (v20 == 2)
              {
                v112 = (v101 + v16);
                *v113.f32 = vdup_lane_s32(*v110.f32, 0);
                *v114.f32 = vdup_lane_s32(*v111.f32, 0);
                v115 = v101;
              }

              else
              {
                v116 = 0;
                v117 = vdup_lane_s32(*v111.f32, 0);
                v118 = vdup_lane_s32(*v110.f32, 0);
                v119 = v45;
                v120 = v109;
                do
                {
                  v121.i64[0] = v111.i64[0];
                  *v122.f32 = vext_s8(v118, *v110.f32, 4uLL);
                  v122.i64[1] = v110.i64[0];
                  *v123.f32 = vext_s8(v117, *v111.f32, 4uLL);
                  v123.i64[1] = v111.i64[0];
                  *v110.f32 = *v120;
                  *v111.f32 = *(v120 + BytesPerRow);
                  *v113.f32 = vext_s8(*&v122.u32[2], *v120, 4uLL);
                  v118 = *&v122.u32[2];
                  v124.i64[0] = v122.i64[1];
                  v124.i64[1] = v113.i64[0];
                  *v114.f32 = vext_s8(*&v123.u32[2], *v111.f32, 4uLL);
                  v117 = *&v123.u32[2];
                  v121.i64[1] = v114.i64[0];
                  *(v119 + v16) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v122, xmmword_1AD056640), xmmword_1AD056650, v124), xmmword_1AD056660, v123), xmmword_1AD056670, v121);
                  *(v119 + 2 * v16) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v122, xmmword_1AD056660), xmmword_1AD056670, v124), xmmword_1AD056640, v123), xmmword_1AD056650, v121);
                  v116 += 2;
                  ++v120;
                  ++v119;
                }

                while (v48 > v116);
                v115 = (v119 + v16);
                v112 = (v119 + v108);
              }

              v113.i64[1] = v110.i64[0];
              v114.i64[1] = v111.i64[0];
              *&v110.u32[2] = vdup_lane_s32(*v110.f32, 1);
              *&v111.u32[2] = vdup_lane_s32(*v111.f32, 1);
              *v115 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v113, xmmword_1AD056640), xmmword_1AD056650, v110), xmmword_1AD056660, v114), xmmword_1AD056670, v111);
              *v112 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v113, xmmword_1AD056660), xmmword_1AD056670, v110), xmmword_1AD056640, v114), xmmword_1AD056650, v111);
              v101 = (v101 + v108);
              v109 = (v109 + BytesPerRow);
              v45 = (v45 + v108);
              BaseAddress = (BaseAddress + BytesPerRow);
              v125 = v107++ == v341 - 2;
            }

            while (!v125);
          }

          *v126.f32 = *v102;
          v127 = vdup_lane_s32(*v102, 0);
          if (v20 == 2)
          {
            *v128.f32 = v127;
          }

          else
          {
            v180 = 0;
            v181 = &v102[1];
            do
            {
              v182.i64[0] = v126.i64[0];
              *v183.f32 = vext_s8(v127, *v126.f32, 4uLL);
              v183.i64[1] = v126.i64[0];
              v184 = *v181++;
              *v126.f32 = v184;
              *v128.f32 = vext_s8(*&v183.u32[2], v184, 4uLL);
              v127 = *&v183.u32[2];
              v182.i64[1] = v128.i64[0];
              *v101++ = vmlaq_f32(vmulq_f32(v183, xmmword_1AD056680), xmmword_1AD056690, v182);
              v180 += 2;
            }

            while (v20 - 2 > v180);
          }

          v128.i64[1] = v126.i64[0];
          *&v126.u32[2] = vdup_lane_s32(*v126.f32, 1);
          *v101 = vmlaq_f32(vmulq_f32(v128, xmmword_1AD056680), xmmword_1AD056690, v126);
        }

        else
        {
          v81 = a2;
          FigFloat16ConvertToFloat32();
          if (v20 == 2)
          {
            v82 = v45;
          }

          else
          {
            v103 = 0;
            v104 = BaseAddress;
            v82 = v45;
            do
            {
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              v104 = (v104 + 4);
              FigFloat16ConvertToFloat32();
              *v82 = FigFloat32ConvertToFloat16();
              *(v82 + 1) = FigFloat32ConvertToFloat16();
              *(v82 + 2) = FigFloat32ConvertToFloat16();
              *(v82 + 3) = FigFloat32ConvertToFloat16();
              v103 += 2;
              v82 = (v82 + 8);
            }

            while (v20 - 2 > v103);
          }

          FigFloat16ConvertToFloat32();
          FigFloat16ConvertToFloat32();
          *v82 = FigFloat32ConvertToFloat16();
          *(v82 + 1) = FigFloat32ConvertToFloat16();
          *(v82 + 2) = FigFloat32ConvertToFloat16();
          *(v82 + 3) = FigFloat32ConvertToFloat16();
          v105 = (v45 + v16);
          if (v341 == 1)
          {
            v106 = BaseAddress;
          }

          else
          {
            v129 = 0;
            v130 = 2 * v16;
            v131 = &BaseAddress[1];
            do
            {
              v106 = (BaseAddress + BytesPerRow);
              v132 = *BaseAddress;
              v133 = *(BaseAddress + BytesPerRow);
              v134 = vdup_lane_s16(*BaseAddress, 0);
              v135 = vdup_lane_s16(v133, 0);
              if (v20 == 4)
              {
                v136 = (v105 + v16);
                v137 = v105;
              }

              else
              {
                v138 = 0;
                v139 = v45;
                v140 = v131;
                do
                {
                  v141 = v135;
                  v142 = v134;
                  v135 = v133;
                  v134 = v132;
                  v143 = vext_s8(v142, v132, 6uLL);
                  v144 = vzip1_s16(v143, v134);
                  v145 = vzip2_s16(v143, v134);
                  v146 = vext_s8(v141, v133, 6uLL);
                  v147 = vzip1_s16(v146, v133);
                  v148 = vzip2_s16(v146, v133);
                  v132 = *v140;
                  v133 = *(v140 + BytesPerRow);
                  v149 = vext_s8(v134, *v140, 2uLL);
                  v150 = vext_s8(v135, v133, 2uLL);
                  v151 = vcvtq_f32_f16(v144);
                  v152 = vcvtq_f32_f16(v145);
                  v153 = vcvtq_f32_f16(v147);
                  v154 = vcvtq_f32_f16(v148);
                  v155 = vcvtq_f32_f16(vzip1_s16(v134, v149));
                  v156 = vcvtq_f32_f16(vzip2_s16(v134, v149));
                  v157 = vcvtq_f32_f16(vzip1_s16(v135, v150));
                  v158 = vcvtq_f32_f16(vzip2_s16(v135, v150));
                  *(v139 + v16) = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v151, xmmword_1AD056640), xmmword_1AD056650, v155), xmmword_1AD056660, v153), xmmword_1AD056670, v157)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v152, xmmword_1AD056640), xmmword_1AD056650, v156), xmmword_1AD056660, v154), xmmword_1AD056670, v158));
                  *(v139 + 2 * v16) = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v151, xmmword_1AD056660), xmmword_1AD056670, v155), xmmword_1AD056640, v153), xmmword_1AD056650, v157)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v152, xmmword_1AD056660), xmmword_1AD056670, v156), xmmword_1AD056640, v154), xmmword_1AD056650, v158));
                  v138 += 4;
                  ++v140;
                  ++v139;
                }

                while (v20 - 4 > v138);
                v137 = (v139 + v16);
                v136 = (v139 + v130);
              }

              v159 = vext_s8(v134, v132, 6uLL);
              v160 = vzip1_s16(v159, v132);
              v161 = vzip2_s16(v159, v132);
              v162 = vext_s8(v135, v133, 6uLL);
              v163 = vzip1_s16(v162, v133);
              v164 = vzip2_s16(v162, v133);
              v165 = vext_s8(v132, vdup_lane_s16(v132, 3), 2uLL);
              v166 = vzip1_s16(v132, v165);
              v167 = vzip2_s16(v132, v165);
              v168 = vext_s8(v133, vdup_lane_s16(v133, 3), 2uLL);
              v169 = vzip1_s16(v133, v168);
              v170 = vzip2_s16(v133, v168);
              v171 = vcvtq_f32_f16(v160);
              v172 = vcvtq_f32_f16(v161);
              v173 = vcvtq_f32_f16(v163);
              v174 = vcvtq_f32_f16(v164);
              v175 = vcvtq_f32_f16(v166);
              v176 = vcvtq_f32_f16(v167);
              v177 = vcvtq_f32_f16(v169);
              v178 = vcvtq_f32_f16(v170);
              *v137 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v171, xmmword_1AD056640), xmmword_1AD056650, v175), xmmword_1AD056660, v173), xmmword_1AD056670, v177)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v172, xmmword_1AD056640), xmmword_1AD056650, v176), xmmword_1AD056660, v174), xmmword_1AD056670, v178));
              *v136 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v171, xmmword_1AD056660), xmmword_1AD056670, v175), xmmword_1AD056640, v173), xmmword_1AD056650, v177)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v172, xmmword_1AD056660), xmmword_1AD056670, v176), xmmword_1AD056640, v174), xmmword_1AD056650, v178));
              v105 = (v105 + v130);
              v131 = (v131 + BytesPerRow);
              v45 = (v45 + v130);
              BaseAddress = (BaseAddress + BytesPerRow);
              v125 = v129++ == v341 - 2;
            }

            while (!v125);
          }

          FigFloat16ConvertToFloat32();
          if (v20 != 2)
          {
            v179 = 0;
            do
            {
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              v106 = (v106 + 4);
              FigFloat16ConvertToFloat32();
              v105->i16[0] = FigFloat32ConvertToFloat16();
              v105->i16[1] = FigFloat32ConvertToFloat16();
              v105->i16[2] = FigFloat32ConvertToFloat16();
              v105->i16[3] = FigFloat32ConvertToFloat16();
              v179 += 2;
              v105 = (v105 + 8);
            }

            while (v20 - 2 > v179);
          }

          FigFloat16ConvertToFloat32();
          FigFloat16ConvertToFloat32();
          v105->i16[0] = FigFloat32ConvertToFloat16();
          v105->i16[1] = FigFloat32ConvertToFloat16();
          v105->i16[2] = FigFloat32ConvertToFloat16();
          v105->i16[3] = FigFloat32ConvertToFloat16();
          a2 = v81;
        }
      }

      else
      {
        v56 = (*v10.i64 + v20 + -1.0);
        v57 = (a4 + v341 + -1.0);
        if (v19 == 2)
        {
          if (Height)
          {
            v58 = 0;
            v59 = a4;
            do
            {
              if ((v59 + 0.5) >= v57)
              {
                v60 = (a4 + v341 + -1.0);
              }

              else
              {
                v60 = (v59 + 0.5);
              }

              if (Width)
              {
                v61 = 0;
                v62 = BaseAddress + BytesPerRow * v60;
                v63 = *v10.i64;
                do
                {
                  v64 = (v63 + 0.5);
                  if (v64 >= v56)
                  {
                    v64 = (*v10.i64 + v20 + -1.0);
                  }

                  *(v45 + v61++) = *&v62[2 * v64];
                  v63 = v22 + v63;
                }

                while (Width != v61);
              }

              ++v58;
              v45 = (v45 + v16);
              v59 = v23 + v59;
            }

            while (v58 != Height);
          }
        }

        else if (Height)
        {
          v74 = 0;
          v75 = a4;
          do
          {
            if ((v75 + 0.5) >= v57)
            {
              v76 = (a4 + v341 + -1.0);
            }

            else
            {
              v76 = (v75 + 0.5);
            }

            if (Width)
            {
              v77 = 0;
              v78 = BaseAddress + BytesPerRow * v76;
              v79 = *v10.i64;
              do
              {
                v80 = (v79 + 0.5);
                if (v80 >= v56)
                {
                  v80 = (*v10.i64 + v20 + -1.0);
                }

                *(v45 + v77++) = *&v78[4 * v80];
                v79 = v22 + v79;
              }

              while (Width != v77);
            }

            ++v74;
            v45 = (v45 + v16);
            v75 = v23 + v75;
          }

          while (v74 != Height);
        }
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      CVPixelBufferUnlockBaseAddress(a2, 0);
      return 0;
    }
  }

  return v338;
}

CVPixelBufferRef FigDepthConvertToRGBA(__CVBuffer *a1, int a2, int a3)
{
  v59 = a1;
  pixelBuffer = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (!a1)
  {
    FigDepthConvertToRGBA_cold_7();
    return pixelBuffer;
  }

  v8 = Height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v10 = PixelFormatType;
  if (PixelFormatType <= 1717856626)
  {
    if (PixelFormatType == 825306677 || PixelFormatType == 825437747)
    {
      goto LABEL_12;
    }

    v11 = 1717855600;
  }

  else if (PixelFormatType > 1751411058)
  {
    if (PixelFormatType == 1751411059)
    {
      goto LABEL_12;
    }

    v11 = 1932996149;
  }

  else
  {
    if (PixelFormatType == 1717856627)
    {
      goto LABEL_12;
    }

    v11 = 1751410032;
  }

  if (PixelFormatType != v11)
  {
    FigDebugAssert3();
    return pixelBuffer;
  }

LABEL_12:
  if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, v8, 32, &pixelBuffer, @"DepthConverter RGBA"))
  {
    FigDepthConvertToRGBA_cold_1();
    return pixelBuffer;
  }

  v12 = 0;
  if (v10 <= 1751410031)
  {
    if (v10 != 825306677)
    {
      v13 = 825437747;
LABEL_19:
      if (v10 != v13)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v10 != 1751410032 && v10 != 1932996149)
  {
    v13 = 1751411059;
    goto LABEL_19;
  }

  if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, v8, 1278226534, &v59, @"DepthConverter Float"))
  {
    FigDepthConvertToRGBA_cold_2();
    return pixelBuffer;
  }

  v12 = 1;
LABEL_22:
  if (v10 > 1751410031)
  {
    if (v10 == 1751410032 || v10 == 1751411059)
    {
      if (!figDepthConvertBufferFloat16ToFloat32(a1, v59))
      {
        goto LABEL_45;
      }

      FigDepthConvertToRGBA_cold_5();
      goto LABEL_64;
    }

    v14 = 1932996149;
    goto LABEL_28;
  }

  if (v10 != 825306677)
  {
    v14 = 825437747;
LABEL_28:
    if (v10 != v14)
    {
      goto LABEL_45;
    }
  }

  v15 = v59;
  if (v59)
  {
    v16 = CVPixelBufferGetWidth(a1);
    if (v16 == CVPixelBufferGetWidth(v15))
    {
      v17 = CVPixelBufferGetHeight(a1);
      if (v17 == CVPixelBufferGetHeight(v15))
      {
        v57 = a3;
        v58 = v12;
        FixedPointFractionalBits = CVPixelBufferGetFixedPointFractionalBits();
        if (a2)
        {
          v19 = FixedPointFractionalBits + 1;
        }

        else
        {
          v19 = FixedPointFractionalBits;
        }

        v55 = v19;
        v56 = a2 != 0;
        [objc_msgSend(CVPixelBufferGetAttributes() objectForKeyedSubscript:{*MEMORY[0x1E69660B0]), "floatValue"}];
        v21 = v20;
        CVPixelBufferLockBaseAddress(v15, 0);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v23 = CVPixelBufferGetBaseAddress(v15);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        v25 = CVPixelBufferGetBytesPerRow(v15);
        if (v17)
        {
          for (i = 0; i != v17; ++i)
          {
            if (v16)
            {
              v27 = 0;
              do
              {
                v28 = BaseAddress[v27];
                v29 = (-v21 / (1 << v56)) + ((1.0 / (1 << v55)) * v28);
                if (v28 == 0x1FFF)
                {
                  v29 = NAN;
                }

                v23[v27++] = v29;
              }

              while (v16 != v27);
            }

            BaseAddress = (BaseAddress + BytesPerRow);
            v23 = (v23 + v25);
          }
        }

        CVPixelBufferUnlockBaseAddress(v15, 0);
        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        a3 = v57;
        v12 = v58;
LABEL_45:
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        CVPixelBufferLockBaseAddress(v59, 1uLL);
        v30 = CVPixelBufferGetBaseAddress(pixelBuffer);
        v31 = CVPixelBufferGetBaseAddress(v59);
        v32 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v33 = CVPixelBufferGetBytesPerRow(v59);
        v34 = v33;
        if (a3)
        {
          v61 = ColorsWheelContext_create(80, 30, 20, 20, 30, 0, 0, 1, 0.0);
          ColorsWheelContext_drawMatrix_f32(v61, Width, v8, v31, v34, 4, v30, v32, v35, v36, v37, v38, 4);
          ColorsWheelContext_destroy(&v61);
LABEL_63:
          CVPixelBufferUnlockBaseAddress(v59, 1uLL);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          goto LABEL_64;
        }

        v39 = (v8 * Width);
        if (v39)
        {
          v40 = 3.4028e38;
          v41 = 1.1755e-38;
          v42 = v31;
          do
          {
            v43 = *v42++;
            v44 = v43;
            if (v43 > v41)
            {
              v41 = v44;
            }

            if (v44 < v40)
            {
              v40 = v44;
            }

            --v39;
          }

          while (v39);
          if (!v8)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v41 = 1.1755e-38;
          v40 = 3.4028e38;
          if (!v8)
          {
            goto LABEL_63;
          }
        }

        v45 = 0;
        v46 = 0;
        v47 = v41 - v40;
        v48 = 3;
        do
        {
          if (Width)
          {
            v49 = (v31 + (v45 & 0xFFFFFFFC));
            v50 = Width;
            v51 = v48;
            do
            {
              v52 = *v49++;
              v53 = (((v52 - v40) * 255.0) / v47);
              v30[v51 - 3] = v53;
              v30[v51 - 2] = v53;
              v30[v51 - 1] = v53;
              v30[v51] = -1;
              v51 += 4;
              --v50;
            }

            while (v50);
          }

          ++v46;
          v45 += v33;
          v48 += v32;
        }

        while (v46 != v8);
        goto LABEL_63;
      }

      FigDepthConvertToRGBA_cold_4(&v61);
    }

    else
    {
      FigDepthConvertToRGBA_cold_3(&v61);
    }
  }

  else
  {
    FigDepthConvertToRGBA_cold_6(&v61);
  }

  FigDebugAssert3();
LABEL_64:
  if (v12)
  {
    CFRelease(v59);
  }

  return pixelBuffer;
}

CVPixelBufferRef FigCreateRGBAPixelBufferFromSegmentationMask(__CVBuffer *a1)
{
  cf = 0;
  pixelBuffer = 0;
  if (a1)
  {
    v1 = a1;
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(v1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v1);
    if (PixelFormatType - 1278226488 <= 0x30 && ((1 << (PixelFormatType - 56)) & 0x1400000000001) != 0)
    {
      v5 = PixelFormatType;
      if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, Height, 32, &pixelBuffer, @"SegmentationMask RGBA"))
      {
        FigCreateRGBAPixelBufferFromSegmentationMask_cold_1();
      }

      else
      {
        if (v5 != 1278226536)
        {
LABEL_9:
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          CVPixelBufferLockBaseAddress(v1, 1uLL);
          BytesPerRow = CVPixelBufferGetBytesPerRow(v1);
          BaseAddress = CVPixelBufferGetBaseAddress(v1);
          v8 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v9 = CVPixelBufferGetBaseAddress(pixelBuffer);
          if (Height << 32)
          {
            v10 = 0;
            v11 = Height;
            v12 = Width;
            if (Width <= 1)
            {
              v12 = 1;
            }

            if (Height <= 1)
            {
              v11 = 1;
            }

            v13 = v9 + 3;
            do
            {
              if (Width << 32)
              {
                v14 = 0;
                v15 = &BaseAddress[v10 * BytesPerRow];
                v16 = v13;
                do
                {
                  v17 = v14 << (2 * (v5 != 1278226488));
                  if (v5 == 1278226488)
                  {
                    LOBYTE(v17) = v15[v17];
                  }

                  else
                  {
                    LODWORD(v17) = (*&v15[v17] * 255.0);
                  }

                  *(v16 - 3) = v17;
                  *(v16 - 2) = v17;
                  *(v16 - 1) = v17;
                  *v16 = -1;
                  v16 += 4;
                  ++v14;
                }

                while (v12 != v14);
              }

              ++v10;
              v13 += v8;
            }

            while (v10 != v11);
          }

          CVPixelBufferUnlockBaseAddress(v1, 1uLL);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          if (cf)
          {
            CFRelease(cf);
          }

          return pixelBuffer;
        }

        if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, Height, 1278226534, &cf, @"SegmentationMask Float"))
        {
          FigCreateRGBAPixelBufferFromSegmentationMask_cold_2();
        }

        else
        {
          if (!figDepthConvertBufferFloat16ToFloat32(v1, cf))
          {
            v1 = cf;
            goto LABEL_9;
          }

          FigCreateRGBAPixelBufferFromSegmentationMask_cold_3();
        }
      }
    }

    else
    {
      FigDebugAssert3();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigCreateRGBAPixelBufferFromSegmentationMask_cold_4();
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return 0;
}

CVPixelBufferRef FigDepthCreateRGBAPixelBufferFromInfraredPixelBuffer(__CVBuffer *a1)
{
  pixelBuffer = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (a1)
  {
    v4 = Height;
    if (CVPixelBufferGetPixelFormatType(a1) == 1278226742)
    {
      if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, v4, 32, &pixelBuffer, @"DepthFromIR RGBA"))
      {
        FigDepthCreateRGBAPixelBufferFromInfraredPixelBuffer_cold_2();
      }

      else
      {
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        v6 = CVPixelBufferGetBaseAddress(a1);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v8 = CVPixelBufferGetBytesPerRow(a1);
        if (v4)
        {
          v9 = 0;
          v10 = 0;
          v11 = 3;
          do
          {
            v12 = Width;
            v13 = v9;
            v14 = v11;
            if (Width)
            {
              do
              {
                v15 = v6[v13];
                if (v15 >= 0x4000)
                {
                  v16 = -1;
                }

                else
                {
                  v16 = v15 >> 6;
                }

                BaseAddress[v14 - 3] = v16;
                BaseAddress[v14 - 2] = v16;
                BaseAddress[v14 - 1] = v16;
                BaseAddress[v14] = -1;
                v14 += 4;
                ++v13;
                --v12;
              }

              while (v12);
            }

            ++v10;
            v11 += BytesPerRow;
            v9 += v8 >> 1;
          }

          while (v10 != v4);
        }

        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      }
    }

    else
    {
      FigDepthCreateRGBAPixelBufferFromInfraredPixelBuffer_cold_1();
    }
  }

  else
  {
    FigDepthCreateRGBAPixelBufferFromInfraredPixelBuffer_cold_3();
  }

  return pixelBuffer;
}

uint64_t FigDepthBlurEffectRenderingParametersV2FromCFData(void *a1, void *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_6();
    return 4294954516;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_5();
    return 4294954516;
  }

  if ([a1 length] <= 0x13F)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_4();
    return 4294954516;
  }

  memset(v5, 0, sizeof(v5));
  [a1 getBytes:v5 length:320];
  if (LODWORD(v5[0]) != 1145980242)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_1();
    return 4294954516;
  }

  if (DWORD1(v5[0]) != 2)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_2();
    return 4294954516;
  }

  if (DWORD2(v5[0]) != 320)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_3();
    return 4294954516;
  }

  memcpy(a2, v5, 0x140uLL);
  return 0;
}

uint64_t FigDepthBlurEffectRenderingParametersV3FromCFData(void *a1, void *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_6();
    return 4294954516;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_5();
    return 4294954516;
  }

  if ([a1 length] <= 0x1D7)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_4();
    return 4294954516;
  }

  memset(v5, 0, 472);
  [a1 getBytes:v5 length:472];
  if (LODWORD(v5[0]) != 1145980242)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_1();
    return 4294954516;
  }

  if (DWORD1(v5[0]) != 3)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_2();
    return 4294954516;
  }

  if (DWORD2(v5[0]) != 472)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_3();
    return 4294954516;
  }

  memcpy(a2, v5, 0x1D8uLL);
  return 0;
}

uint64_t FigDepthBlurEffectRenderingParametersV4FromCFData(void *a1, void *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_9();
LABEL_22:
    v4 = 0;
LABEL_23:
    v9 = 4294954516;
LABEL_24:
    free(v4);
    return v9;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_8();
    goto LABEL_22;
  }

  if ([a1 length] <= 0xF)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_7();
    goto LABEL_22;
  }

  if (([a1 length] & 7) != 0)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_1();
    goto LABEL_22;
  }

  v4 = malloc_type_malloc([a1 length], 0x1000040451B5BE8uLL);
  if (!v4)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_6();
    v9 = 4294954510;
    goto LABEL_24;
  }

  [a1 getBytes:v4 length:{objc_msgSend(a1, "length")}];
  if (*v4 != 1145980242)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_2();
    goto LABEL_23;
  }

  if ((v4[1] - 8) <= 0xFFFFFFFB)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_5();
    goto LABEL_23;
  }

  v5 = v4[2];
  if ([a1 length] != v5)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_3();
    goto LABEL_23;
  }

  v6 = v4[2] - 16;
  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = 4;
    while (SLOWORD(v4[v8]) > 0)
    {
      v8 += 2;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_4();
    goto LABEL_23;
  }

LABEL_15:
  v9 = 0;
  *a2 = v4;
  return v9;
}

uint64_t FigDepthBlurEffectRenderingVersion4_GetParameter(_DWORD *a1, unsigned __int16 a2, unsigned __int16 a3, _DWORD *a4)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingVersion4_GetParameter_cold_8();
    return 4294954516;
  }

  if (*a1 != 1145980242)
  {
    FigDepthBlurEffectRenderingVersion4_GetParameter_cold_1();
    return 4294954516;
  }

  if ((a1[1] - 8) <= 0xFFFFFFFB)
  {
    FigDepthBlurEffectRenderingVersion4_GetParameter_cold_7();
    return 4294954516;
  }

  v4 = a1[2];
  if (v4 <= 0x10)
  {
    FigDepthBlurEffectRenderingVersion4_GetParameter_cold_6();
    return 4294954516;
  }

  v5 = (v4 + 0x7FFFFFFF0) >> 3;
  v6 = v5 >> 1;
  v7 = a1 + 4;
  v8 = LOWORD(a1[2 * (v5 >> 1) + 4]);
  if (v8 != a2 && v5 >= 2)
  {
    v10 = 0;
    v11 = v5 - 1;
    do
    {
      if (v8 <= a2)
      {
        if (v8 < a2)
        {
          v10 = v6 + 1;
          v6 = (v11 + v6 + 1 + 1) / 2;
          if (SLOWORD(v7[2 * v6]) <= v8)
          {
            FigDepthBlurEffectRenderingVersion4_GetParameter_cold_2();
            return 4294954516;
          }

          v8 = LOWORD(v7[2 * v6]);
        }
      }

      else
      {
        if (SLOWORD(v7[2 * ((v6 + v10) / 2)]) >= v8)
        {
          FigDepthBlurEffectRenderingVersion4_GetParameter_cold_3();
          return 4294954516;
        }

        v11 = v6 - 1;
        v8 = LOWORD(v7[2 * ((v6 + v10) / 2)]);
        v6 = (v6 + v10) / 2;
      }
    }

    while (v8 != a2 && v10 < v11);
  }

  if (v8 != a2)
  {
    FigDepthBlurEffectRenderingVersion4_GetParameter_cold_4();
    return 4294954512;
  }

  v12 = &v7[2 * v6];
  if (*(v12 + 1) != a3)
  {
    FigDepthBlurEffectRenderingVersion4_GetParameter_cold_5();
    return 4294954516;
  }

  if (a3 > 2u)
  {
    if (a3 == 3)
    {
LABEL_28:
      result = 0;
      *a4 = v12[1];
      return result;
    }

    if (a3 != 4)
    {
LABEL_29:
      FigDebugAssert3();
      return 4294954516;
    }

    result = 0;
    *a4 = *(v12 + 4);
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    result = 0;
    *a4 = v12[1];
  }

  return result;
}

uint64_t FigDepthBlurEffectRenderingMinimumSimulatedAperture(void *a1, float *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_9();
    return 4294954516;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_8();
    return 4294954516;
  }

  *a2 = 0.0;
  if ([a1 length] <= 0xB)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_7();
    return 4294954516;
  }

  v4 = [a1 bytes];
  if (!v4)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_6();
    return 4294954516;
  }

  v5 = v4;
  if ([a1 length] != *(v4 + 8))
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_1();
    return 4294954516;
  }

  if (*v5 != 1145980242)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_2();
    return 4294954516;
  }

  v6 = *(v5 + 4);
  if (v6 >= 4)
  {
    v6 = 4;
  }

  if (v6 >= 0x10000)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_5();
    return 4294954516;
  }

  if (v6 - 2 >= 2)
  {
    if (v6 == 4)
    {
      Parameter = FigDepthBlurEffectRenderingVersion4_GetParameter(v5, 0x259u, 1u, a2);
      if (Parameter)
      {
        v8 = Parameter;
        FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_3();
        return v8;
      }
    }

    FigDebugAssert3();
    return 4294954516;
  }

  v7 = *(v5 + 100);
  *a2 = v7;
  if (v7 <= 0.0)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_4();
    return 4294954516;
  }

  return 0;
}

uint64_t FigDepthBlurEffectRenderingMaximumSimulatedAperture(void *a1, float *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_9();
    return 4294954516;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_8();
    return 4294954516;
  }

  *a2 = 0.0;
  if ([a1 length] <= 0xB)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_7();
    return 4294954516;
  }

  v4 = [a1 bytes];
  if (!v4)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_6();
    return 4294954516;
  }

  v5 = v4;
  if ([a1 length] != *(v4 + 8))
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_1();
    return 4294954516;
  }

  if (*v5 != 1145980242)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_2();
    return 4294954516;
  }

  v6 = *(v5 + 4);
  if (v6 >= 4)
  {
    v6 = 4;
  }

  if (v6 >= 0x10000)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_5();
    return 4294954516;
  }

  if (v6 - 2 >= 2)
  {
    if (v6 == 4)
    {
      Parameter = FigDepthBlurEffectRenderingVersion4_GetParameter(v5, 0x25Au, 1u, a2);
      if (Parameter)
      {
        v8 = Parameter;
        FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_3();
        return v8;
      }
    }

    FigDebugAssert3();
    return 4294954516;
  }

  v7 = *(v5 + 268);
  *a2 = v7;
  if (v7 <= 0.0)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_4();
    return 4294954516;
  }

  return 0;
}

void sub_1ACBC7DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *FigCaptureSourceUnderlyingDeviceTypes(int a1)
{
  result = &unk_1F2249660;
  if (a1 <= 6)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        return &unk_1F2249678;
      }

      if (a1 != 5)
      {
        return &unk_1F22496A8;
      }
    }

    else if (a1 >= 4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a1 <= 0x14)
  {
    if (((1 << a1) & 0x1FCC00) != 0)
    {
      goto LABEL_9;
    }

    if (a1 == 12)
    {
      return &unk_1F22496C0;
    }

    if (a1 == 13)
    {
      return &unk_1F22496D8;
    }
  }

  if (a1 == 9)
  {
    return &unk_1F2249690;
  }

  if (a1 == 7)
  {
LABEL_9:
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = [MEMORY[0x1E696AD98] numberWithInt:?];
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return result;
}

uint64_t FigCaptureSourceDeviceTypeIsSubsetOfDeviceType(int a1, int a2, int a3)
{
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = FigCaptureSourceUnderlyingDeviceTypes(a1);
  v9 = FigCaptureSourceUnderlyingDeviceTypes(a2);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [v6 addObject:{BWCaptureDevicePositionAndDeviceTypeToPortType(a3, objc_msgSend(*(*(&v25 + 1) + 8 * v13++), "intValue"))}];
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v9);
        }

        [v7 addObject:{BWCaptureDevicePositionAndDeviceTypeToPortType(a3, objc_msgSend(*(*(&v20 + 1) + 8 * v17++), "intValue"))}];
      }

      while (v15 != v17);
      v15 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v15);
  }

  return [v6 isSubsetOfSet:v7];
}

uint64_t FigCaptureSourceGetMediaTypeForUniqueID(void *a1)
{
  if ([a1 isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_audio:0"])
  {
    return 1936684398;
  }

  v2 = 1986618469;
  if (([a1 isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:0"] & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:1") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:2") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:3") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:4") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:5") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:6") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:7") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:8") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:9") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.built-in_video:99") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.private.built-in_pointcloud:1") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:1") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:2") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:3") & 1) == 0)
  {
    if ([a1 isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_deskview:1"])
    {
      return 1986618469;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void captureSessionServer_continuityCameraMultitaskingDisallowed()
{
  v0 = time(0);
  os_unfair_lock_lock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
  if ((captureSessionServer_continuityCameraMultitaskingDisallowed_inAlert & 1) != 0 || ((v1 = dword_1ED845174, unk_1ED845190) ? (v2 = dword_1ED845174 < 1) : (v2 = 1), !v2 ? (v3 = v0 - unk_1ED845190 <= 86399) : (v3 = 0), v3))
  {

    os_unfair_lock_unlock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
  }

  else
  {
    captureSessionServer_continuityCameraMultitaskingDisallowed_inAlert = 1;
    os_unfair_lock_unlock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CMCapture"];
    v5 = [v4 localizedStringForKey:@"CONTINUITY_CAMERA_IN_USE_HEADER" value:&stru_1F216A3D0 table:@"Localizable"];
    v6 = [v4 localizedStringForKey:@"CONTINUITY_CAMERA_IN_USE_MESSAGE" value:&stru_1F216A3D0 table:@"Localizable"];
    v7 = [v4 localizedStringForKey:@"CONTINUITY_CAMERA_IN_USE_OK" value:&stru_1F216A3D0 table:@"Localizable"];
    v8 = *MEMORY[0x1E695EE60];
    v15[0] = *MEMORY[0x1E695EE58];
    v15[1] = v8;
    v16[0] = v5;
    v16[1] = v6;
    v15[2] = *MEMORY[0x1E695EE78];
    v16[2] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
    error = 0;
    v10 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, &error, v9);
    if (v10)
    {
      v11 = v10;
      v13 = 0;
      CFUserNotificationReceiveResponse(v10, 0.0, &v13);
      CFRelease(v11);
    }

    v12 = time(0);
    CFPreferencesSetAppValue(@"continuity_camera_in_use.previous_time", [MEMORY[0x1E696AD98] numberWithLong:v12], @"com.apple.cameracapture");
    CFPreferencesSetAppValue(@"continuity_camera_in_use.count", [MEMORY[0x1E696AD98] numberWithInt:v1 + (v1 >= 0)], @"com.apple.cameracapture");
    os_unfair_lock_lock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
    unk_1ED845190 = v12;
    dword_1ED845174 = v1 + (v1 >= 0);
    captureSessionServer_continuityCameraMultitaskingDisallowed_inAlert = 0;
    os_unfair_lock_unlock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
  }
}

uint64_t FigCaptureSessionServerStart()
{
  mach_absolute_time();
  v8[0] = 1;
  v8[1] = captureSessionServer_handleReplyMessage;
  v8[2] = captureSessionServer_handleNoReplyMessage;
  memset(&v8[3], 0, 24);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  _MergedGlobals_10 = 0;
  qword_1ED845180 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1ED845188 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  +[FigCaptureLockScreenPrewarmingMonitor start];
  [FigCaptureClientApplicationStateMonitor startPrewarmingMonitorWithHandler:&__block_literal_global_13];
  sWombatEnabledPIDArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  sWombatInUsePIDArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  sWombatStateLock = FigSimpleMutexCreate();
  if (FigCaptureAudiomxdSupportEnabled())
  {
    v5[0] = 0;
    v0 = [MEMORY[0x1E69AED10] sharedInstance];
    [v0 setAttribute:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69AECF8] error:v5];
  }

  else
  {
    sMXSystemController = [objc_alloc(MEMORY[0x1E69AED20]) initWithPID:getpid()];
    [sMXSystemController setAttributeForKey:*MEMORY[0x1E69B07C0] andValue:MEMORY[0x1E695E110]];
  }

  CFPreferencesSetValue(@"ContinuityCaptureInUse", *MEMORY[0x1E695E4C0], @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  [FigCaptureClientApplicationStateMonitor startContinuityCaptureTerminationMonitorWithHandler:&__block_literal_global_19_0];
  +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  +[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor];
  if (MGGetBoolAnswer())
  {
    +[FigCaptureDisplayLayoutMonitor sharedExternalDisplayLayoutMonitor];
  }

  +[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor];
  +[FigCaptureDeviceLockStateMonitor sharedDeviceLockStateMonitor];
  BWGetDisplaySupportsPerseus();
  FigCaptureStartPreferencesOSStateHandlers();
  if (dword_1ED843FD0)
  {
    v7 = 0;
    v6 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v2 = v7;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v6))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigCaptureXPCServerStart("com.apple.coremedia.capturesession", v8, 0);
}

uint64_t __FigCaptureSessionServerStart_block_invoke_2(uint64_t a1, uint64_t a2)
{
  captureSessionServer_setWombatEnabledState(0, a2);

  return captureSessionServer_setWombatInUseState(0, a2);
}

uint64_t captureSessionServer_setWombatEnabledState(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (dword_1ED843FD0)
  {
    v21 = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [sWombatEnabledPIDArray containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2, v13, v14)}];
  if (!a1)
  {
    if (!v5)
    {
      return FigSimpleMutexUnlock();
    }

    [sWombatEnabledPIDArray removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
    if ([sWombatEnabledPIDArray count])
    {
      return FigSimpleMutexUnlock();
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [sWombatEnabledPIDArray count] == 0;
    [sWombatEnabledPIDArray addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  }

  if (captureSessionServer_registerForContinuityCameraMultitaskingDisallowed_notifyRegisterOnce != -1)
  {
    captureSessionServer_setWombatEnabledState_cold_1();
  }

  if (v6)
  {
LABEL_13:
    if (dword_1ED843FD0)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v21;
      if (os_log_type_enabled(v7, v20))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v15 = 136315394;
        v16 = "captureSessionServer_setWombatEnabledState";
        v17 = 1024;
        v18 = a1;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (FigCaptureAudiomxdSupportEnabled())
    {
      v19[0] = 0;
      v10 = [MEMORY[0x1E69AED10] sharedInstance];
      v11 = [MEMORY[0x1E696AD98] numberWithBool:a1];
      [v10 setAttribute:v11 forKey:*MEMORY[0x1E69AECF8] error:v19];
    }

    else
    {
      [sMXSystemController setAttributeForKey:*MEMORY[0x1E69B07C0] andValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1)}];
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t captureSessionServer_setWombatInUseState(int a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = [sWombatInUsePIDArray containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  if (a1)
  {
    if ((v4 & 1) == 0)
    {
      if (![sWombatInUsePIDArray count])
      {
        CFPreferencesSetValue(@"ContinuityCaptureInUse", *MEMORY[0x1E695E4D0], @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      }

      [sWombatInUsePIDArray addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
    }
  }

  else if (v4)
  {
    [sWombatInUsePIDArray removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
    if (![sWombatInUsePIDArray count])
    {
      CFPreferencesSetValue(@"ContinuityCaptureInUse", *MEMORY[0x1E695E4C0], @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    }
  }

  return FigSimpleMutexUnlock();
}

void __captureSessionServer_registerForContinuityCameraMultitaskingDisallowed_block_invoke_2(int a1, int token)
{
  state64 = 0;
  if (dword_1ED845178 == token && !notify_get_state(token, &state64))
  {
    captureSessionServer_continuityCameraMultitaskingDisallowed();
  }
}

uint64_t captureSessionServer_handleSessionFileSinkStartRecordingMessage(int a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionFileSinkStartRecording);
}

uint64_t captureSessionServer_handleSessionStillImageSinkCaptureImageMessage(int a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionStillImageSinkCaptureImage);
}

uint64_t captureSessionServer_handleSessionStillImageSinkPrepareToCaptureBracketMessage(int a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionStillImageSinkPrepareToCaptureBracket);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkCaptureImageMessage(int a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionIrisStillImageSinkCaptureImage);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkPrepareToCaptureMessage(int a1, void *a2)
{
  cf = 0;
  v10 = 0;
  v3 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v10, &cf, 0);
  v4 = v10;
  if (v10)
  {
    v5 = [[FigCaptureIrisPreparedSettings alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, *MEMORY[0x1E69615B0])];
    v6 = cf;
    v7 = *(CMBaseObjectGetVTable() + 16);
    if (*(v7 + 96))
    {
      (*(v7 + 104))(v4, v6, v5);
    }

    else
    {
      v11 = @"ErrorStatus";
      v12 = &unk_1F2246228;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkBeginMomentCaptureMessage(int a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionIrisStillImageSinkBeginMomentCapture);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkCommitMomentCaptureToStillImageCaptureMessage(int a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionIrisStillImageSinkCommitMomentCaptureToStillImageCapture);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkCommitMomentCaptureToMovieRecordingMessage(int a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionIrisStillImageSinkCommitMomentCaptureToMovieRecording);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkCancelMomentCaptureMessage(int a1, void *a2)
{
  cf = 0;
  v10 = 0;
  v3 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v10, &cf, 0);
  v4 = v10;
  if (v10)
  {
    int64 = xpc_dictionary_get_int64(a2, *MEMORY[0x1E69615B0]);
    v6 = cf;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v7)
    {
      v7(v4, v6, int64);
    }

    else
    {
      v11 = @"ErrorStatus";
      v12 = &unk_1F2246228;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkEndMomentCaptureMessage(int a1, void *a2)
{
  cf = 0;
  v10 = 0;
  v3 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v10, &cf, 0);
  v4 = v10;
  if (v10)
  {
    int64 = xpc_dictionary_get_int64(a2, *MEMORY[0x1E69615B0]);
    v6 = cf;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v7)
    {
      v7(v4, v6, int64);
    }

    else
    {
      v11 = @"ErrorStatus";
      v12 = &unk_1F2246228;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void captureSessionServer_handlePrewarm(void *a1)
{
  int64 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69615B0]);
  v3 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69615D8]);
  FigXPCMessageCopyCFString();
  FigXPCMessageCopyCFString();
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58])
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (*v4 == 1)
    {
      v6 = CStringPtrAndBufferToFree;
      if (CStringPtrAndBufferToFree)
      {
        v7 = strlen(CStringPtrAndBufferToFree);
        strncpy(__dst, &v6[v7 - 8], 8uLL);
      }

      kdebug_trace();
    }

    free(0);
  }

  FigCaptureSessionPrewarm(0, int64, v3, 0);
}

void captureSessionServer_handleCancelPrewarm()
{
  v0 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  FigXPCMessageCopyCFString();
  if (*v0)
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (*v0 == 1)
    {
      v2 = CStringPtrAndBufferToFree;
      if (CStringPtrAndBufferToFree)
      {
        v3 = strlen(CStringPtrAndBufferToFree);
        strncpy(__dst, &v2[v3 - 8], 8uLL);
      }

      kdebug_trace();
    }

    free(0);
  }

  FigCaptureSessionCancelPrewarm(0);
}

uint64_t captureSessionServer_handleSessionVisionDataSinkTriggerBurstMessage(int a1, void *a2)
{
  cf = 0;
  v8 = 0;
  v2 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v8, &cf, 0);
  v3 = v8;
  if (v8)
  {
    v4 = cf;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v5)
    {
      v5(v3, v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

uint64_t FigCaptureSessionStopRunning(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v2)
  {

    return v2(a1);
  }

  else
  {
    v4 = @"ErrorStatus";
    v5 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t captureSessionServer_handleCommonSectionPayloadMessage(int a1, void *a2, uint64_t a3, void (*a4)(const void *, CFTypeRef, id))
{
  cf = 0;
  v10 = 0;
  v8 = 0;
  v5 = captureSessionServer_messageUnpackCopy(a1, a2, a3, &v8, &cf, &v10);
  v6 = v8;
  if (v8)
  {
    a4(v8, cf, v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t FigCaptureSessionFileSinkStartRecording(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t captureSessionServer_handleCommonSectionMessage(int a1, void *a2, void (*a3)(CFTypeRef, CFTypeRef))
{
  v7 = 0;
  cf = 0;
  v4 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v7, &cf, 0);
  v5 = v7;
  if (v7)
  {
    a3(v7, cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t FigCaptureSessionFileSinkPauseRecording(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    v6 = @"ErrorStatus";
    v7 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionFileSinkResumeRecording(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    v6 = @"ErrorStatus";
    v7 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionFileSinkStopRecording(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    v6 = @"ErrorStatus";
    v7 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionStillImageSinkCaptureImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionStillImageSinkPrepareToCaptureBracket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionIrisStillImageSinkCaptureImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionIrisStillImageSinkBeginMomentCapture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionIrisStillImageSinkCommitMomentCaptureToStillImageCapture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionIrisStillImageSinkCommitMomentCaptureToMovieRecording(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureCreateCMClockFromTimeSyncMSGClock(uint64_t a1, void *a2)
{
  HostTimeClock = CMClockGetHostTimeClock();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    return 4294954551;
  }

  TimeCallback = FigDerivedClockCreateWithGetTimeCallback();
  if (TimeCallback)
  {
    return TimeCallback;
  }

  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v6)
  {
    return 4294954549;
  }

  v7 = v6;
  FigGetHostTimeToNanosecondsScale();
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  *DerivedStorage = FigSimpleMutexCreate();
  if (HostTimeClock)
  {
    v9 = CFRetain(HostTimeClock);
  }

  else
  {
    v9 = 0;
  }

  *(DerivedStorage + 8) = v9;
  *(DerivedStorage + 16) = TimeSyncClockCreateWithClockIdentifier();
  *(DerivedStorage + 24) = a1;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 32) = CFRetain(v7);
  v11 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 56) = *MEMORY[0x1E6960C70];
  v12 = *MEMORY[0x1E69DA100];
  *(DerivedStorage + 72) = *(v11 + 16);
  *(DerivedStorage + 80) = v12;
  TimeSyncClockSetLockStateChangeCallback();
  v10 = 0;
  *a2 = 0;
  CFRelease(v7);
  return v10;
}

CFStringRef fcft_CopyDebugDesc(const void *a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"TSClock(TSClockIdentifier='0x%016llx')", *(DerivedStorage + 24));
}

void *fcft_Finalize()
{
  result = FigDerivedClockGetDerivedStorage();
  if (*result)
  {
    v1 = result;
    FigSimpleMutexLock();
    v2 = v1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    if (v1[2])
    {
      TimeSyncClockSetLockStateChangeCallback();
      TimeSyncClockDispose();
    }

    v3 = v1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    *v1 = 0;
    FigSimpleMutexUnlock();

    return FigSimpleMutexDestroy();
  }

  return result;
}

BOOL fcft_MightDrift()
{
  if (!FigDerivedClockVerifyCallbacksMatch() || !FigDerivedClockVerifyCallbacksMatch())
  {
    return 1;
  }

  FigDerivedClockGetDerivedStorage();
  FigDerivedClockGetDerivedStorage();
  ClockIdentifier = TimeSyncClockGetClockIdentifier();
  return ClockIdentifier != TimeSyncClockGetClockIdentifier();
}

uint64_t fcft_GetAnchorTime(uint64_t a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v17 = **&MEMORY[0x1E6960C70];
  FigSimpleMutexLock();
  CMClockGetTime(&time, *(DerivedStorage + 8));
  value = time.value;
  v16 = *&time.timescale;
  ClockTimeForHostTime = TimeSyncClockGetClockTimeForHostTime();
  v8 = *MEMORY[0x1E69DA100];
  if (ClockTimeForHostTime == *MEMORY[0x1E69DA100])
  {
    v9 = 4294954540;
    goto LABEL_13;
  }

  if ((*(DerivedStorage + 68) & 1) == 0)
  {
    *(DerivedStorage + 56) = value;
    *(DerivedStorage + 64) = v16;
  }

  v10 = *(DerivedStorage + 80);
  if (v10 == v8)
  {
    goto LABEL_8;
  }

  if (ClockTimeForHostTime <= v10)
  {
    *(DerivedStorage + 56) = value;
    *(DerivedStorage + 64) = v16;
LABEL_8:
    *(DerivedStorage + 80) = ClockTimeForHostTime;
    v10 = ClockTimeForHostTime;
  }

  memset(&v14, 0, sizeof(v14));
  CMTimeMake(&v14, ClockTimeForHostTime - v10, 1000000000);
  lhs = v14;
  v12 = *(DerivedStorage + 56);
  CMTimeAdd(&time, &lhs, &v12);
  CMTimeConvertScale(&v17, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  if (a2)
  {
    *a2 = v17;
  }

  v9 = 0;
  if (a3)
  {
    *a3 = value;
    *(a3 + 8) = v16;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t hdrn_createSampleBufferProcessor()
{
  FigCaptureWaitForPreloadShadersCompletion();
  v0 = FigSampleBufferProcessorCreateForCustom();
  if (v0)
  {
    hdrn_createSampleBufferProcessor_cold_1();
  }

  return v0;
}

uint64_t FigSampleBufferProcessorProcessSampleBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

Class __getBrightnessSystemClientClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreBrightnessLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E799B798;
    v5 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    __getBrightnessSystemClientClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BrightnessSystemClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBrightnessSystemClientClass_block_invoke_cold_1();
  }

  getBrightnessSystemClientClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1ACBD3738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SystemStatusLibraryCore()
{
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    SystemStatusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SystemStatusLibraryCore_frameworkLibrary;
}

uint64_t __SystemStatusLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SystemStatusLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSTActivityAttributionClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STActivityAttribution");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTActivityAttributionClass_block_invoke_cold_1();
  }

  getSTActivityAttributionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void SystemStatusLibrary()
{
  v0 = 0;
  if (!SystemStatusLibraryCore())
  {
    SystemStatusLibrary_cold_1(&v0);
  }
}

Class __getSTMediaStatusDomainPublisherClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STMediaStatusDomainPublisher");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTMediaStatusDomainPublisherClass_block_invoke_cold_1();
  }

  getSTMediaStatusDomainPublisherClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getSTDynamicActivityAttributionPublisherClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STDynamicActivityAttributionPublisher");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTDynamicActivityAttributionPublisherClass_block_invoke_cold_1();
  }

  getSTDynamicActivityAttributionPublisherClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getSTExecutableIdentityClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STExecutableIdentity");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTExecutableIdentityClass_block_invoke_cold_1();
  }

  getSTExecutableIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getSTAttributedEntityClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STAttributedEntity");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTAttributedEntityClass_block_invoke_cold_1();
  }

  getSTAttributedEntityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

intptr_t nc_handleEmitSemaphoreTrackedDroppedMessage(intptr_t result, dispatch_semaphore_t dsema)
{
  v3 = *(result + 12);
  if (v3 == 1 || v3 == 2 && (result = [objc_msgSend(objc_msgSend(result "droppedSample")], (result & 1) == 0))
  {

    return dispatch_semaphore_signal(dsema);
  }

  return result;
}

uint64_t asn_audioUnitRenderProc(uint64_t a1, AudioUnitRenderActionFlags *a2, const AudioTimeStamp *a3, uint64_t a4, UInt32 a5)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  add_explicit = atomic_fetch_add_explicit((a1 + 488), 1uLL, memory_order_relaxed);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 296));
  memset(&v36, 0, sizeof(v36));
  CMTimeMake(&v36, a3->mSampleTime, StreamBasicDescription->mSampleRate);
  v11 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  v12 = CMSimpleQueueDequeue(*(a1 + 336));
  if (v12)
  {
    if ((~a3->mFlags & 3) == 0)
    {
      v13 = *(a1 + 352);
      if (v13)
      {
        if (*(a1 + 372))
        {
          memset(&v35, 0, sizeof(v35));
          v14 = AudioConvertHostTimeToNanos(a3->mHostTime - v13);
          CMTimeMake(&v35, v14, 1000000000);
          time1 = v35;
          time2 = *(a1 + 384);
          v15 = CMTimeCompare(&time1, &time2);
          memset(&time1, 0, sizeof(time1));
          time2 = v36;
          v32 = *(a1 + 360);
          CMTimeSubtract(&time1, &time2, &v32);
          v32 = time1;
          CMTimeAbsoluteValue(&time2, &v32);
          v32 = *(a1 + 384);
          if (CMTimeCompare(&time2, &v32) > 0 || v15 >= 1)
          {
            if ((*(a1 + 648) & 1) == 0 && v15 >= 1)
            {
              HostTimeClock = CMClockGetHostTimeClock();
              RelativeRate = CMSyncGetRelativeRate(HostTimeClock, *(a1 + 280));
              if (RelativeRate != 1.0)
              {
                v32 = v35;
                CMTimeMultiplyByFloat64(&time2, &v32, RelativeRate);
                v35 = time2;
              }

              mSampleRate = StreamBasicDescription->mSampleRate;
              v32 = v35;
              CMTimeConvertScale(&time2, &v32, mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              v35 = time2;
              *(v12 + 14) = time2.value;
            }

            v19 = MEMORY[0x1E6960C70];
            *(a1 + 408) = *MEMORY[0x1E6960C70];
            *(a1 + 424) = *(v19 + 16);
          }

          v11 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        }
      }
    }

    v20 = AudioUnitRender(*(a1 + 312), a2, a3, 1u, a5, *(v12 + 6));
    if (v20)
    {
LABEL_31:
      v29 = v20;
      goto LABEL_33;
    }

    *(v12 + 1) = add_explicit + 1;
    *(v12 + 5) = a5;
    if ((a3->mFlags & 2) == 0)
    {
      asn_audioUnitRenderProc_cold_1();
    }

    if (*(a1 + 420))
    {
      CMTimeMake(&time1, *(a1 + 432), StreamBasicDescription->mSampleRate);
      time2 = *(a1 + 408);
      CMTimeAdd(&v35, &time2, &time1);
    }

    else
    {
      v21 = AudioConvertHostTimeToNanos(a3->mHostTime);
      CMTimeMake(&time1, v21, 1000000000);
      v22 = CMClockGetHostTimeClock();
      CMSyncConvertTime(&v35, &time1, v22, *(a1 + 280));
      *(v12 + 24) = *&v35.value;
      epoch = v35.epoch;
      *(v12 + 5) = v35.epoch;
      v24 = StreamBasicDescription->mSampleRate;
      *&time1.value = *(v12 + 24);
      time1.epoch = epoch;
      CMTimeConvertScale(&v35, &time1, v24, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      *(v12 + 1) = v35;
      v25 = *(v12 + 14);
      if (!v25)
      {
        goto LABEL_24;
      }

      CMTimeMake(&time1, v25, StreamBasicDescription->mSampleRate);
      time2 = *(v12 + 1);
      CMTimeSubtract(&v35, &time2, &time1);
    }

    *(v12 + 1) = v35;
LABEL_24:
    *(v12 + 8) = *&a3->mSampleTime;
    *(a1 + 432) = *(v12 + 5);
    v26 = (a1 + 408);
    v27 = *(v12 + 5);
    *(a1 + 408) = *(v12 + 24);
    *(a1 + 424) = v27;
    v28 = *(v12 + 14);
    if (v28)
    {
      CMTimeMake(&time1, v28, StreamBasicDescription->mSampleRate);
      *&time2.value = *v26;
      time2.epoch = *(a1 + 424);
      CMTimeAdd(&v35, &time2, &time1);
      *v26 = *&v35.value;
      *(a1 + 424) = v35.epoch;
    }

    v20 = CMSimpleQueueEnqueue(*(a1 + 344), v12);
    if (!v20)
    {
      CMTimeMake(&time1, a5, StreamBasicDescription->mSampleRate);
      time2 = v36;
      CMTimeAdd(&v35, &time2, &time1);
      *(a1 + 360) = v35;
      if ((a3->mFlags & 2) != 0)
      {
        memset(&v35, 0, sizeof(v35));
        CMTimeMake(&v35, a5, StreamBasicDescription->mSampleRate);
        time2 = v35;
        CMTimeConvertScale(&time1, &time2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v35 = time1;
        mHostTime = a3->mHostTime;
        v29 = 0;
        *(a1 + 352) = AudioConvertNanosToHostTime(time1.value) + mHostTime;
      }

      else
      {
        v29 = 0;
        *(a1 + 352) = 0;
      }

      goto LABEL_30;
    }

    goto LABEL_31;
  }

  asn_audioUnitRenderProc_cold_2(a1);
  v29 = 4294950486;
LABEL_33:
  CMSimpleQueueEnqueue(*(a1 + 328), v29);
  if (v12)
  {
    CMSimpleQueueEnqueue(*(a1 + v11[1011]), v12);
  }

LABEL_30:
  dispatch_async_f(*(a1 + 440), a1, asn_generateSamples);
  return v29;
}

void sub_1ACBD8C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double FODMGTimeInMilliseconds(unint64_t a1, double a2, double a3, double a4)
{
  if (FODMGTimeInMilliseconds_once != -1)
  {
    FODMGTimeInMilliseconds_cold_1();
  }

  LODWORD(a3) = FODMGTimeInMilliseconds_info;
  LODWORD(a4) = *algn_1EB5907D4;
  return a1 * *&a3 / *&a4 / 1000000.0;
}

void sub_1ACBD9FF0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t deviceMotionCallback(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = *(result + 88);
    v3 = *(result + 96);
    v4 = *(result + 48);
    v6[2] = *(result + 32);
    v6[3] = v4;
    v6[4] = *(result + 64);
    v7 = *(result + 80);
    v5 = *(result + 16);
    v6[0] = *result;
    v6[1] = v5;
    return [a2 didUpdateFusedMotionWithDeviceMotion:v6 time:v3 ifsync:v2];
  }

  return result;
}

uint64_t low_freq_error_logging_0()
{
  mach_absolute_time();
  result = FigHostTimeToNanoseconds();
  if (low_freq_error_logging_last_log_0)
  {
    v1 = (result - low_freq_error_logging_last_log_0) >= 0x3B9ACA00;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (low_freq_error_logging_filtered_0)
    {
      low_freq_error_logging_filtered_0 = 0;
    }

    low_freq_error_logging_last_log_0 = result;
  }

  else
  {
    ++low_freq_error_logging_filtered_0;
  }

  return result;
}

uint64_t FigCoreMotionAllocWithPriority(int a1, int a2, int a3, uint64_t a4, float a5, float a6)
{
  v12 = [FigCoreMotionDelegate alloc];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  *&v14 = a5;
  *&v15 = a6;

  return [(FigCoreMotionDelegate *)v12 initWithAccelerometer:a1 != 0 gravityZ:a2 != 0 fusedMotion:a3 != 0 accelUpdateInterval:v13 fusedMotionUpdateInterval:v14 motionCallbackThreadPriority:v15];
}

uint64_t FigCoreMotionCopyMotionData(void *a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([a1 isCopyingAllData])
  {
    v5 = [a1 copyAllFusedMotionData];
  }

  else
  {
    v5 = [a1 copyNewFusedMotionData];
  }

  v6 = v5;
  if (v5)
  {
    *&v9 = *off_1E798D170;
    *&v8 = v5;
    *a2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v9 count:1];
    CFRelease(v6);
  }

  else
  {
    *a2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v9 count:0];
  }

  return [v4 drain];
}

uint64_t FigCoreMotionGetAverageQuaternion(void *a1, uint64_t a2, int a3)
{
  v6 = [a1 updateCurrentQuaternionForTimeStamps:? withEnd:?];
  if (a3)
  {
    [a1 getCurrentDeltaQuaternion:a2];
  }

  else
  {
    [a1 getCurrentQuaternion:a2];
  }

  return v6;
}

uint64_t FigCoreMotionGetQuaternionAndAttitude(void *a1, double *a2, int a3, long double *a4, int a5)
{
  v10 = [a1 updateCurrentQuaternionForTimeStamp:?];
  if (!a3)
  {
    [a1 getCurrentQuaternion:a2];
    if (a5)
    {
      [a1 getCurrentDeltaAttitudeRoll:a4 pitch:a4 + 1 yaw:a4 + 2];
      return v10;
    }

LABEL_6:
    [a1 getCurrentAttitudeRoll:a4 pitch:a4 + 1 yaw:a4 + 2];
    return v10;
  }

  [a1 getCurrentDeltaQuaternion:a2];
  if (!a5)
  {
    goto LABEL_6;
  }

  *a4 = rollFromQuaternion(a2);
  a4[1] = asin(*a2 * (a2[1] + a2[1]) + a2[2] * (a2[3] + a2[3]));
  a4[2] = yawFromQuaternion(a2);
  return v10;
}

uint64_t CMCaptureGestaltGetIntegerAnswer(uint64_t a1)
{
  if (cmcapturegestalt_buildDataBase_onceToken != -1)
  {
    CMCaptureGestaltGetIntegerAnswer_cold_1();
  }

  v2 = [sCMCaptureGestaltIntegerDataBase objectForKeyedSubscript:a1];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v2 integerValue];
}

uint64_t CMCaptureGestaltGetStringAnswer(uint64_t a1)
{
  if (cmcapturegestalt_buildDataBase_onceToken != -1)
  {
    CMCaptureGestaltGetIntegerAnswer_cold_1();
  }

  v2 = sCMCaptureGestaltStringDataBase;

  return [v2 objectForKeyedSubscript:a1];
}

id __cmcapturegestalt_buildDataBase_block_invoke()
{
  sCMCaptureGestaltBoolDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sCMCaptureGestaltIntegerDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sCMCaptureGestaltFloatDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sCMCaptureGestaltStringDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  ModelSpecificName = FigCaptureGetModelSpecificName();
  v1 = sCMCaptureGestaltBoolDataBase;
  v2 = sCMCaptureGestaltIntegerDataBase;
  v3 = sCMCaptureGestaltFloatDataBase;
  v4 = sCMCaptureGestaltStringDataBase;

  return CMCaptureGestaltGetDeviceFeatures(ModelSpecificName, v1, v2, v3, v4);
}

void ie_updateConfigurationForInferenceIfNeededWithInputFormat(int a1, void *a2, void *a3)
{
  if (a1 > 106)
  {
    if (a1 != 107 && a1 != 201)
    {
      return;
    }
  }

  else if (a1 != 104)
  {
    if (a1 == 106)
    {
      IsEqualForDimensions = FigCaptureOrientationIsEqualForDimensions([a3 dimensions], objc_msgSend(a2, "depthDataDimensions"));
      v6 = [a2 depthDataDimensions];
      v7 = __ROR8__(v6, 32);
      if (IsEqualForDimensions)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      [a2 setDepthDataDimensions:v8];
    }

    return;
  }

  v9 = FigCaptureAspectRatioForDimensions([a3 dimensions]);
  if (a1 == 201 || a1 == 107)
  {

    [a2 setInputSegmentationPortraitOrientationSupportEnabled:v9 < 1.0];
  }

  else if (a1 == 104)
  {

    [a2 setPortraitOrientationSupportEnabled:v9 < 1.0];
  }
}

id BWInputFormatsByResolutionFlavorByAddingFormatForFlavor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v5, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2))}];
  [v6 addObject:a3];
  v7 = [v6 copy];
  [v5 setObject:v7 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  v8 = [v5 copy];

  return v8;
}

uint64_t BWResolutionFlavorForAspectRatio(unsigned int a1)
{
  if (a1 > 6)
  {
    return 3;
  }

  else
  {
    return dword_1AD056754[a1];
  }
}

void ubn_dispatch_sync(NSObject *a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_sync_block_invoke_0;
  block[3] = &unk_1E798FEA0;
  block[4] = a2;
  dispatch_sync(a1, block);
}

void __ubn_dispatch_sync_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void ubn_dispatch_async(NSObject *a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_async_block_invoke_0;
  block[3] = &unk_1E798FEA0;
  block[4] = a2;
  dispatch_async(a1, block);
}

void __ubn_dispatch_async_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void ubn_dispatch_group_async(NSObject *a1, NSObject *a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_group_async_block_invoke_0;
  block[3] = &unk_1E798FEA0;
  block[4] = a3;
  dispatch_group_async(a1, a2, block);
}

void __ubn_dispatch_group_async_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void BWPhotonicEngineUtilitiesMergeInferenceAttachmentsIfRequired(void *a1, void *a2)
{
  v21 = @"Inferences";
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{CMGetAttachment(a1, @"Inferences", 0)}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32.value = 0x1F219E990;
  *&v32.timescale = 0x1F219E9B0;
  v32.epoch = 0x1F219E5F0;
  v33 = 0x1F219E6F0;
  v34 = 0x1F219E710;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:5];
  v3 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v6 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [a2 inferenceForAttachmentKey:{v8, v21}];
        if (v9)
        {
          v10 = v9;
          v11 = BWInferenceTypeForInferenceAttachmentKey(v8);
          v12 = v6;
          v13 = [v2 objectForKeyedSubscript:{objc_msgSend(*(v6 + 3480), "numberWithInt:", v11)}];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 inferences];
            v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v15];
            [v16 setObject:v10 forKeyedSubscript:v8];
            v17 = [[BWInferenceResult alloc] initWithResult:v14 replacementInferences:v16 replacementPreventionReason:0];
          }

          else
          {
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObject:v10 forKey:v8];
            memset(&v32, 0, sizeof(v32));
            CMSampleBufferGetPresentationTimeStamp(&v32, a1);
            v19 = [BWInferenceResult alloc];
            v26 = v32;
            v17 = [(BWInferenceResult *)v19 initWithInferenceType:v11 inferences:v18 atTimestamp:&v26];
          }

          v20 = v17;
          v6 = v12;
          [v2 setObject:v17 forKeyedSubscript:{objc_msgSend(*(v12 + 3480), "numberWithInt:", v11)}];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    CMSetAttachment(a1, v22, v2, 1u);
  }
}

uint64_t BWPhotonicEngineUtilitiesMergeInferenceAttachedMedia(opaqueCMSampleBuffer *a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  result = [a2 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v38;
    v22 = v5;
    v23 = a4;
    v21 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        if (!BWSampleBufferGetAttachedMedia(a1, v11))
        {
          v12 = [a4 objectForKeyedSubscript:v11];
          if (v12)
          {
            v12 = CFRetain(v12);
          }

          cf = v12;
          v13 = BWPropagateInferenceAttachedMedia(a3, v11, &cf, a1);
          if (v13)
          {
            v14 = v13;
            v34 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = v34;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v17 = v16;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFE;
            }

            if (v17)
            {
              v18 = BWStillImageCaptureIDForSampleBuffer(a1);
              v25 = 136315906;
              v26 = "BWPhotonicEngineUtilitiesMergeInferenceAttachedMedia";
              v27 = 2114;
              v28 = v11;
              v29 = 1026;
              v30 = v14;
              v31 = 2050;
              v32 = v18;
              LODWORD(v20) = 38;
              v19 = &v25;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = v22;
            a4 = v23;
            v9 = v21;
          }

          [a4 setObject:cf forKeyedSubscript:{v11, v19, v20}];
          if (cf)
          {
            CFRelease(cf);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      result = [v5 countByEnumeratingWithState:&v37 objects:v36 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

uint64_t BWPhotonicEngineUtilitiesDetermineBufferTypeForDeepFusionInputBuffer(void *a1, char a2, uint64_t a3)
{
  v5 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if ((a3 & 0x200000000) != 0 && v5 == 1)
  {
    return 25;
  }

  v7 = 23;
  v8 = 27;
  if ((a2 & 4) == 0)
  {
    v8 = 24;
  }

  if ((a2 & 0x10) == 0)
  {
    v7 = v8;
  }

  if ((a2 & 8) != 0)
  {
    return 22;
  }

  else
  {
    return v7;
  }
}

void *BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput(void *a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*off_1E798CFE8];
  v5 = [a2 objectForKeyedSubscript:*off_1E798CFF8];
  if (v4)
  {
    _ZF = v5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    v7 = v5;
    [a1 setGeometricDistortionCorrectionUsePrecomputedPolynomialsAndOpticalCenterOffset:1];
    [a1 setGeometricDistortionCorrectionForwardPolynomial:v4];
    [a1 setGeometricDistortionCorrectionInversePolynomial:v7];
  }

  v8 = [a2 objectForKeyedSubscript:*off_1E798CFE0];
  v9 = [a2 objectForKeyedSubscript:*off_1E798CFF0];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v9;
    size.width = 0.0;
    size.height = 0.0;
    CGSizeMakeWithDictionaryRepresentation(v8, &size);
    v17 = 0uLL;
    CGPointMakeWithDictionaryRepresentation(v11, &v17);
    __asm { FMOV            V2.2D, #-0.5 }

    [a1 setGeometricDistortionCorrectionOpticalCenterOffset:{vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v17, vmulq_f64(size, _Q2))))}];
  }

  result = [a2 objectForKeyedSubscript:*off_1E798D028];
  if (result)
  {
    return BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput_cold_1(result, a1);
  }

  return result;
}

void BWPhotonicEngineUtilitiesSetDeferredPhotoProcessedImageFlags(const void *a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(a1, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x2000}];
  CMSetAttachment(a1, @"StillImageProcessingFlags", v2, 1u);
  AttachedMedia = BWSampleBufferGetAttachedMedia(a1, 0x1F21AAE10);
  if (AttachedMedia)
  {
    v4 = AttachedMedia;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(AttachedMedia, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x2000}];

    CMSetAttachment(v4, @"StillImageProcessingFlags", v5, 1u);
  }
}

uint64_t BWPhotonicEngineUtilitiesSampleBufferEligibleForPiecemealEncoding(opaqueCMSampleBuffer *a1)
{
  v2 = BWPixelBufferDimensionsFromSampleBuffer(a1);
  v3 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798A940), "objectForKeyedSubscript:", *off_1E798AA00), "doubleValue"}];
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v2, v2 >> 32, FinalCropRect, v6, v8, v10, v11);
  v15 = v14 <= 0.0;
  if (v16 < v2)
  {
    v15 = 0;
  }

  v17 = v12 <= 0.0;
  if (v13 < SHIDWORD(v2))
  {
    v17 = 0;
  }

  return v15 | v17;
}

BWDepthConverterNode *FigCaptureCreateAndConfigureDepthConverterNode(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, _DWORD *a9)
{
  LOBYTE(v19) = 0;
  v16 = [[BWDepthConverterNode alloc] initWithStillImageNodeConfiguration:0 cameraInfoByPortType:a5 sensorIDDictionary:0 rgbPersonSegmentationEnabled:0 depthIsAlwaysHighQuality:0 depthOriginatesFromNeuralNetwork:0 backPressureDrivenPipelining:v19];
  [(BWNode *)v16 setName:@"Depth Converter"];
  -[BWDepthConverterNode setHorizontalSensorBinningFactor:](v16, "setHorizontalSensorBinningFactor:", [a4 horizontalSensorBinningFactor]);
  -[BWDepthConverterNode setVerticalSensorBinningFactor:](v16, "setVerticalSensorBinningFactor:", [a4 verticalSensorBinningFactor]);
  v17 = FigCaptureConfigureDepthConverterNode(v16, a1, a2, a3, a6, a7, a8);
  if (a9)
  {
    *a9 = v17;
  }

  return v16;
}

uint64_t FigCaptureConfigureDepthConverterNode(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7)
{
  v22 = 0;
  if (a2)
  {
    v12 = [a2 depthDataTransform];
    v14 = v13;
    v15 = [a2 outputFormat];
    v16 = a2;
LABEL_7:
    v19 = [objc_msgSend(v16 "sourceConfiguration")];
    goto LABEL_8;
  }

  v16 = a3;
  if (a3)
  {
    v12 = [a3 depthDataTransformWithSourceDimensions];
    v14 = v17;
    v15 = [objc_msgSend(objc_msgSend(v16 "sourceConfiguration")];
    goto LABEL_7;
  }

  v12 = 0;
  if (a4)
  {
    v14 = [objc_msgSend(objc_msgSend(a4 "sourceConfiguration")];
    v15 = [objc_msgSend(objc_msgSend(a4 "sourceConfiguration")];
    v16 = a4;
    goto LABEL_7;
  }

  v19 = 0;
  v15 = 0;
  v14 = 0;
LABEL_8:
  v20 = HIDWORD(v12);
  [a1 setOutputFormat:v15];
  [a1 setOutputDimensions:v14];
  if (v12)
  {
    v20 = FigCaptureNormalizeAngle(-HIDWORD(v12));
  }

  [a1 setRotationDegrees:v20];
  [a1 setMirroringEnabled:v12 & 1];
  [a1 setStreamingGDRFilteringEnabled:{objc_msgSend(objc_msgSend(a2, "depthDataSinkConfiguration"), "filteringEnabled") & (a6 ^ 1)}];
  if (v19 && FigCaptureSourceGetIntAttribute(v19, @"PearlModuleType", &v22) == 2)
  {
    [a1 setStreamingSMPFilteringEnabled:{objc_msgSend(objc_msgSend(a2, "depthDataSinkConfiguration"), "filteringEnabled")}];
  }

  [a1 setProvidesUnfilteredDepthAsAttachedMedia:a7];
  [a1 setBaseRotationDegrees:a5];
  return v22;
}

uint64_t FigCaptureBuildMotionAttachmentsNode(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5, unsigned int a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, unsigned __int8 a11, char a12, char a13, char a14, char a15, _DWORD *a16)
{
  v35 = 0;
  v34 = 0;
  v20 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters motionAttachmentsParameters];
  if (a13)
  {
    v21 = 2;
  }

  else
  {
    v21 = a11;
  }

  v22 = [BWMotionAttachmentsNode alloc];
  BYTE6(v28) = a12;
  BYTE5(v28) = a15;
  BYTE4(v28) = a14;
  LODWORD(v28) = [a5 priority];
  *&v23 = a9;
  v24 = [BWMotionAttachmentsNode initWithSensorIDDictionaryByPortType:v22 cameraInfoByPortType:"initWithSensorIDDictionaryByPortType:cameraInfoByPortType:tuningParameters:activePortTypes:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxSupportedFrameRate:motionAttachmentsMode:motionAttachmentsSource:motionCallbackThreadPriority:provideSourceVideoWithMotionAttachmentsOutput:provideOfflineVISMotionDataOutput:inputFormatIsProResRaw:errorOut:" tuningParameters:a7 activePortTypes:a8 horizontalSensorBinningFactor:v20 verticalSensorBinningFactor:a10 maxSupportedFrameRate:a3 motionAttachmentsMode:a4 motionAttachmentsSource:v23 motionCallbackThreadPriority:__PAIR64__(a6 provideSourceVideoWithMotionAttachmentsOutput:v21) provideOfflineVISMotionDataOutput:v28 inputFormatIsProResRaw:&v34 errorOut:?];
  if (v34)
  {
    FigCaptureBuildMotionAttachmentsNode_cold_1();
    a2 = 0;
LABEL_15:
    v25 = a16;
    goto LABEL_11;
  }

  if (([a1 addNode:v24 error:&v35] & 1) == 0)
  {
    FigCaptureBuildMotionAttachmentsNode_cold_2();
    goto LABEL_15;
  }

  if (([objc_msgSend(a1 "graph")] & 1) == 0)
  {
    FigCaptureBuildMotionAttachmentsNode_cold_3();
    goto LABEL_15;
  }

  v25 = a16;
  if (a14)
  {
    v26 = [(BWMotionAttachmentsNode *)v24 sourceVideoWithMotionAttachmentsOutput];
  }

  else
  {
    v26 = [(BWMotionAttachmentsNode *)v24 offlineVISMotionDataOutput];
  }

  a2 = v26;
LABEL_11:
  *v25 = v34;
  return a2;
}

uint64_t FigCaptureConfigureVideoDataConverterRotatorNode(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t LossyCompressionLevel, int a8)
{
  v8 = a3;
  v11 = HIDWORD(a3);
  if (a2)
  {
    v28 = HIDWORD(a3);
    v14 = &unk_1F2249888;
    if (a8 != 6)
    {
      v14 = 0;
    }

    v15 = [a2 transform];
    v29 = v16;
    v17 = +[BWVideoFormat colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:supportedColorSpaces:](BWVideoFormat, "colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:supportedColorSpaces:", a5, [objc_msgSend(a2 "sourceConfiguration")], objc_msgSend(objc_msgSend(objc_msgSend(a2, "sourceConfiguration"), "requiredFormat"), "format"), objc_msgSend(objc_msgSend(objc_msgSend(a2, "sourceConfiguration"), "requiredFormat"), "dimensions"), objc_msgSend(a2, "outputFormat"), v26);
    [a1 setOutputPixelFormat:objc_msgSend(a2, "outputFormat")];
    if (FigCapturePixelFormatGetLossyCompressionLevel([a2 outputFormat]) >= LossyCompressionLevel)
    {
      LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel([a2 outputFormat]);
    }

    [a1 setMaxLossyCompressionLevel:LossyCompressionLevel];
    if (a6)
    {
      v18 = 6;
    }

    else
    {
      v18 = v17;
    }

    [a1 setOutputColorSpaceProperties:v18];
    LODWORD(v11) = v28;
    v19 = v29;
  }

  else
  {
    v15 = 0;
    v19 = 0;
  }

  v20 = FigCaptureNormalizeAngle(HIDWORD(v15) - v11);
  [a1 setRotationDegrees:v20];
  if ((v8 & 1) == 0)
  {
    v22 = v15 & 1;
    v23 = HIDWORD(v15);
LABEL_16:
    v21 = FigCaptureTransformFlipAppliedBeforeRotationToAfter(v22, v23);
    goto LABEL_17;
  }

  if ((v15 & 1) == 0)
  {
    v22 = FigCaptureTransformFlipAppliedBeforeRotationToAfter(1, v11);
    LODWORD(v23) = v20;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_17:
  [a1 setFlipHorizontal:v21 == 1];
  [a1 setFlipVertical:v21 == 2];
  if ([a2 deviceOrientationCorrectionEnabled] && (objc_msgSend(objc_msgSend(a2, "sourceConfiguration"), "cinematicFramingEnabled") & 1) == 0)
  {
    v24 = [objc_msgSend(a2 "sourceConfiguration")] ^ 1;
  }

  else
  {
    v24 = 0;
  }

  [a1 setDeviceOrientationCorrectionEnabled:v24];
  [a1 setCropMode:1];
  [a1 setOutputWidth:v19];

  return [a1 setOutputHeight:v19 >> 32];
}

uint64_t __FigCaptureBuildSceneClassifierPipeline_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  return [v1 tearDownInferenceEngine];
}

uint64_t __FigCaptureBuildSceneClassifierPipeline_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) referencedObject];

  return [v3 setInferencesToSkip:a2];
}

uint64_t FigMetadataItemConnectionConfigurationRequiresObjectDetection(void *a1)
{
  Identifiers = CMMetadataFormatDescriptionGetIdentifiers([a1 formatDescription]);
  if (([(__CFArray *)Identifiers containsObject:*MEMORY[0x1E6960388]]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:*MEMORY[0x1E6960390]]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:@"mdta/com.apple.quicktime.detected-cat-head"]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:*MEMORY[0x1E6960368]]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:@"mdta/com.apple.quicktime.detected-dog-head"]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:*MEMORY[0x1E6960378]]& 1) != 0)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E6960398];

  return [(__CFArray *)Identifiers containsObject:v3];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresOfflineVideoStabilizationMotionData(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *MEMORY[0x1E69629D8];

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresSpatialAudioMix(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *MEMORY[0x1E69603C0];

  return [v1 containsObject:v2];
}

uint64_t FigCaptureSpatialAudioMixMetadataRequiresFOAAudioOutput(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 parsedMetadataSinkConfigurations];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    v5 = *MEMORY[0x1E69603C0];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v8 + 1) + 8 * v6) "metadataObjectConnectionConfiguration")])
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *FigCaptureConnectionConfigurationWithSourceType(void *a1, int a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(a1);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([objc_msgSend(v8 "sourceConfiguration")] == a2)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t __BWInferenceSmartCameraCurrentVersion_block_invoke()
{
  v0 = [BWEspressoInferenceAdapter allowE5ForInferenceType:101];
  result = [BWEspressoInferenceAdapter findAvailableVersion:&unk_1F22498B8 defaultOverrideKey:@"smart_camera_pipeline_version" versionLocator:BWInferenceSmartCameraNetworkForVersion e5Bundle:v0];
  BWInferenceSmartCameraCurrentVersion_version = result;
  word_1ED844BC4 = WORD2(result);
  return result;
}

uint64_t lnrpc_formatFromInputFormatsByResolutionFlavor(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a8)
  {
    if (!a7)
    {
      if ((a2 & 1) != 0 || a3)
      {
        v11 = [a1 objectForKeyedSubscript:&unk_1F2246480];
        if ([v11 count] && objc_msgSend(v11, "count") != 1)
        {
          lnrpc_formatFromInputFormatsByResolutionFlavor_cold_5();
        }

        else
        {
          v12 = [v11 firstObject];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = [a1 objectForKeyedSubscript:&unk_1F2246498];
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v25 + 1) + 8 * i);
                v19 = [v18 width];
                v20 = [v12 width];
                if (a2)
                {
                  if (v19 == v20)
                  {
                    v21 = [v18 height];
                    if (v21 == [v12 height])
                    {
                      return v18;
                    }
                  }
                }

                else
                {
                  if (v19 != v20)
                  {
                    return v18;
                  }

                  v22 = [v18 height];
                  if (v22 != [v12 height])
                  {
                    return v18;
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v25 objects:v24 count:16];
              v18 = 0;
            }

            while (v15);
            return v18;
          }
        }
      }

      return 0;
    }

    v10 = [a1 objectForKeyedSubscript:&unk_1F2246468];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_6();
      return 0;
    }
  }

  else if (a2)
  {
    v10 = [a1 objectForKeyedSubscript:&unk_1F2246480];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_4();
      return 0;
    }
  }

  else if (a4)
  {
    v10 = [a1 objectForKeyedSubscript:&unk_1F22464B0];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_3();
      return 0;
    }
  }

  else if (a5)
  {
    v10 = [a1 objectForKeyedSubscript:&unk_1F22464C8];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_2();
      return 0;
    }
  }

  else
  {
    if (!a6)
    {
      return 0;
    }

    v10 = [a1 objectForKeyedSubscript:&unk_1F22464E0];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_1();
      return 0;
    }
  }

  return [v10 firstObject];
}

void sub_1ACBE3C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a18, 8);
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v20 - 56));
  _Unwind_Resume(a1);
}

void cmmsn_deviceMotionCallback(__int128 *a1, uint64_t a2)
{
  if (a1)
  {
    v12[0] = 0;
    v12[1] = v12;
    v2 = *(a1 + 11);
    v12[2] = 0x2020000000;
    v12[3] = v2;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x4010000000;
    v9[3] = &unk_1AD138BA7;
    v3 = a1[1];
    v10 = *a1;
    v11 = v3;
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3010000000;
    v4 = *(a1 + 4);
    v7[3] = &unk_1AD138BA7;
    v7[4] = v4;
    v8 = *(a1 + 10);
    v5 = *(a2 + 184);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __cmmsn_deviceMotionCallback_block_invoke;
    v6[3] = &unk_1E799BB38;
    v6[4] = a2;
    v6[5] = v12;
    v6[6] = v9;
    v6[7] = v7;
    dispatch_async(v5, v6);
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(v9, 8);
    _Block_object_dispose(v12, 8);
  }
}

void __cmmsn_deviceMotionCallback_block_invoke(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 144) == 1)
  {
    v2 = *(v1 + 152) + 60 * *(v1 + 160);
    *(v2 + 8) = *(*(a1[5] + 8) + 24);
    *(v2 + 16) = *(*(a1[6] + 8) + 32);
    *(v2 + 24) = *(*(a1[6] + 8) + 40);
    *(v2 + 32) = *(*(a1[6] + 8) + 48);
    *(v2 + 40) = *(*(a1[6] + 8) + 56);
    *(v2 + 48) = *(*(a1[7] + 8) + 32);
    *(v2 + 52) = *(*(a1[7] + 8) + 36);
    *(v2 + 56) = *(*(a1[7] + 8) + 40);
    ++*(a1[4] + 160);
    v3 = a1[4];
    if (*(v3 + 160) >= *(v3 + 140))
    {
      [(BWCoreMotionMetadataSourceNode *)v3 _emitMetadataSampleBuffer];
    }
  }
}

uint64_t captureDeferredPhotoProcessor_createSerializedNotification(int a1, CFDictionaryRef theDict, uint64_t a3, CFMutableDictionaryRef *a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a4)
  {
    Count = CFDictionaryGetCount(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], Count, theDict);
    v9 = cdpp_surfaceSerializedPayloadKeysByPayloadKey();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __captureDeferredPhotoProcessor_createSerializedNotification_block_invoke;
    v12[3] = &unk_1E799BB60;
    v12[6] = theDict;
    v12[7] = MutableCopy;
    v12[4] = a3;
    v12[5] = &v13;
    [v9 enumerateKeysAndObjectsUsingBlock:v12];
    *a4 = MutableCopy;
    v10 = *(v14 + 6);
  }

  else
  {
    FigDebugAssert3();
    v10 = 4294954516;
    *(v14 + 6) = -12780;
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t cdpp_surfaceSerializedPayloadKeysByPayloadKey()
{
  v2[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_Surface_Serialized, @"Surface"}];
  v1[1] = @"PreviewSurface";
  v2[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_PreviewSurface_Serialized];
  v1[2] = @"ThumbnailSurface";
  v2[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_ThumbnailSurface_Serialized];
  v1[3] = @"PhotoLibraryThumbnails";
  v2[3] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_PhotoLibraryThumbnails_Serialized];
  v1[4] = @"DepthDataSurface";
  v2[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_DepthDataSurface_Serialized];
  v1[5] = @"PortraitEffectsMatteSurface";
  v2[5] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_PortraitEffectsMatteSurface_Serialized];
  v1[6] = @"HairSegmentationMatteSurface";
  v2[6] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_HairSegmentationMatteSurface_Serialized];
  v1[7] = @"SkinSegmentationMatteSurface";
  v2[7] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_SkinSegmentationMatteSurface_Serialized];
  v1[8] = @"TeethSegmentationMatteSurface";
  v2[8] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_TeethSegmentationMatteSurface_Serialized];
  v1[9] = @"GlassesSegmentationMatteSurface";
  v2[9] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_GlassesSegmentationMatteSurface_Serialized];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:10];
}

void __captureDeferredPhotoProcessor_createSerializedNotification_block_invoke(uint64_t a1, const void *a2, void *a3, _BYTE *a4)
{
  v8 = FigCFEqual();
  Value = CFDictionaryGetValue(*(a1 + 48), a2);
  v10 = Value;
  if (v8)
  {
    v11 = xpc_array_create(0, 0);
    CFDictionaryRemoveValue(*(a1 + 56), a2);
    if (v11)
    {
      v12 = 0;
      if (!v10)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = CFArrayGetCount(v10); v12 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
        XPCObject = IOSurfaceCreateXPCObject(ValueAtIndex);
        if (XPCObject)
        {
          xpc_array_append_value(v11, XPCObject);
          FigXPCRelease();
        }

        ++v12;
        if (v10)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      xpc_dictionary_set_value(*(a1 + 32), [a3 UTF8String], v11);

      FigXPCRelease();
    }
  }

  else if (Value)
  {
    v16 = CFGetTypeID(Value);
    if (v16 == IOSurfaceGetTypeID())
    {
      CFDictionaryRemoveValue(*(a1 + 56), a2);
      v17 = IOSurfaceCreateXPCObject(v10);
      if (v17)
      {
        v18 = v17;
        xpc_dictionary_set_value(*(a1 + 32), [a3 UTF8String], v17);

        xpc_release(v18);
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = -12786;
        *a4 = 1;
      }
    }
  }
}

uint64_t captureDeferredPhotoProcessor_createDeserializedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a4)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v7 = cdpp_surfaceSerializedPayloadKeysByPayloadKey();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __captureDeferredPhotoProcessor_createDeserializedNotification_block_invoke;
      v10[3] = &unk_1E799BB88;
      v10[4] = a2;
      v10[5] = &v11;
      v10[6] = MutableCopy;
      [v7 enumerateKeysAndObjectsUsingBlock:v10];
      v8 = *(v12 + 6);
    }

    else
    {
      FigDebugAssert3();
      v8 = 4294954510;
      *(v12 + 6) = -12786;
    }

    *a4 = MutableCopy;
  }

  else
  {
    FigDebugAssert3();
    v8 = 4294954516;
    *(v12 + 6) = -12780;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void __captureDeferredPhotoProcessor_createDeserializedNotification_block_invoke(uint64_t a1, const void *a2, void *a3, _BYTE *a4)
{
  v8 = [a3 isEqualToString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_PhotoLibraryThumbnails_Serialized)}];
  value = xpc_dictionary_get_value(*(a1 + 32), [a3 UTF8String]);
  v10 = value;
  if (!v8)
  {
    if (!value || ![a3 hasSuffix:@"Surface_Serialized"])
    {
      return;
    }

    v18 = IOSurfaceLookupFromXPCObject(v10);
    if (!v18)
    {
      *(*(*(a1 + 40) + 8) + 24) = -12786;
      *a4 = 1;
      return;
    }

    v19 = v18;
    CFDictionarySetValue(*(a1 + 48), a2, v18);
    v17 = v19;
    goto LABEL_14;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v10)
  {
    v12 = Mutable;
    if (xpc_array_get_count(v10))
    {
      v13 = 0;
      do
      {
        v14 = xpc_array_get_value(v10, v13);
        v15 = IOSurfaceLookupFromXPCObject(v14);
        if (v15)
        {
          v16 = v15;
          CFArrayAppendValue(v12, v15);
          CFRelease(v16);
        }

        ++v13;
      }

      while (v13 < xpc_array_get_count(v10));
    }

    CFDictionarySetValue(*(a1 + 48), a2, v12);
    if (v12)
    {
      v17 = v12;
LABEL_14:

      CFRelease(v17);
    }
  }
}

uint64_t FigCaptureDeferredPhotoProcessorSetXPCConnection(uint64_t a1, void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v6 = DerivedStorage;
    xpc_retain(a2);
    *(v6 + 10) = a2;
    *(v6 + 11) = a3;
  }

  return 0;
}

CFTypeRef FigCaptureDeferredPhotoProcessorCopyProcessorForPID(int a1, _OWORD *a2)
{
  if (FigCaptureDeferredPhotoProcessorCopyProcessorForPID_onceToken != -1)
  {
    FigCaptureDeferredPhotoProcessorCopyProcessorForPID_cold_1();
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = SecTaskCopySigningIdentifier(v6, 0);
  if (FigCaptureClientHasEntitlementWithSecTask(v7, @"com.apple.private.avfoundation.capture.deferred-photo-processor.allow"))
  {
    v34 = 0;
    if (!a1)
    {
      FigCaptureDeferredPhotoProcessorCopyProcessorForPID_cold_4();
      v18 = 0;
LABEL_17:
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v20 = *(DerivedStorage + 24);
      if (!v20)
      {
        v20 = v8;
        *(DerivedStorage + 24) = v20;
      }

      if ([(__CFString *)v20 isEqualToString:0x1F2185150, p_out_token, v23])
      {

        *(DerivedStorage + 24) = @"com.apple.camera";
      }

      goto LABEL_21;
    }

    if (cdpp_initializeStatics_onceToken != -1)
    {
      FigCaptureDeferredPhotoProcessorCopyProcessorForPID_cold_2();
    }

    FigCaptureDeferredPhotoProcessorGetClassID();
    v9 = CMDerivedObjectCreate();
    if (!v9)
    {
      v10 = CMBaseObjectGetDerivedStorage();
      *(v10 + 8) = FigDispatchQueueCreateWithPriority();
      *(v10 + 16) = FigDispatchQueueCreateWithPriority();
      *(v10 + 32) = a1;
      *(v10 + 1) = MGGetBoolAnswer();
      if (dword_1ED843F90)
      {
        v33 = 0;
        v32 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v12 = v33;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v32))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v14 = *(v10 + 32);
          out_token = 136315650;
          v25 = "FigCaptureDeferredPhotoProcessorCreate";
          v26 = 2048;
          v27 = v34;
          v28 = 1024;
          v29 = v14;
          LODWORD(v23) = 28;
          p_out_token = &out_token;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v10 + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = [BWCaptureDeferredPhotoProcessor alloc];
      *(v10 + 96) = [(BWCaptureDeferredPhotoProcessor *)v15 initWithFigCaptureDeferredPhotoProcessor:v34];
      *v10 = 1;
      out_token = 0;
      v16 = [FigWeakReference weakReferenceToObject:v34];
      v17 = *(v10 + 16);
      *token.val = MEMORY[0x1E69E9820];
      *&token.val[2] = 3221225472;
      *&token.val[4] = __FigCaptureDeferredPhotoProcessorCreate_block_invoke;
      *&token.val[6] = &unk_1E7991270;
      v31 = v16;
      notify_register_dispatch(kFigCaptureDeferredNotification_deferredmediadImmediateTermination, &out_token, v17, &token);
      v18 = v34;
      goto LABEL_17;
    }

    FigCaptureDeferredPhotoProcessorCopyProcessorForPID_cold_3(v9, &v34);
  }

  v18 = 0;
LABEL_21:

  CFRelease(v7);
  return v18;
}

FigCaptureThermalMonitor *__FigCaptureDeferredPhotoProcessorCopyProcessorForPID_block_invoke()
{
  result = objc_alloc_init(FigCaptureThermalMonitor);
  _MergedGlobals_11 = result;
  return result;
}

void captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v6 = *(v5 + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync_block_invoke;
    v7[3] = &unk_1E79903B8;
    v7[4] = a2;
    v7[5] = a1;
    dispatch_async(v6, v7);
  }

  else
  {
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync_cold_1();
  }
}

void captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest_cold_1();
  }

  *(DerivedStorage + 48) = 0;
  if (dword_1ED843F90)
  {
    v21 = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[BWDeferredTransactionBroker closeTransaction:v8], "closeTransaction:", 2];
  if ([*(DerivedStorage + 40) count] && *DerivedStorage)
  {
    captureDeferredPhotoProcessor_workloop(a1);
  }

  else
  {
    [+[FigCaptureDeferredProcessingEngine sharedProcessingEngine](FigCaptureDeferredProcessingEngine "sharedProcessingEngine")];
    dispatch_sync(*(DerivedStorage + 8), &__block_literal_global_222);
    if (dword_1ED843F90)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v5 = v21;
      if (os_log_type_enabled(v4, v20))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = *(DerivedStorage + 32);
        v12 = 136315906;
        v13 = "captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest";
        v14 = 2048;
        v15 = a1;
        v16 = 1024;
        v17 = v7;
        v18 = 1024;
        v19 = v7;
        LODWORD(v11) = 34;
        v9 = &v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [+[BWDeferredTransactionBroker closeTransaction:v9], "closeTransaction:", 2];
  }
}

CFTypeRef fcdpp_copyAttachedMediaSurfaceDataFromSampleBufferIntoNotificationPayload(void *a1, uint64_t a2, const __CFString *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(a1, a2);
  v14 = AttachedMedia;
  if (AttachedMedia)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (ImageBuffer)
    {
      IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
      if (IOSurface)
      {
        [a5 setObject:IOSurface forKeyedSubscript:a6];
      }
    }
  }

  if (a4)
  {
    v17 = v14;
  }

  else
  {
    v17 = a1;
  }

  result = CMGetAttachment(v17, a3, 0);
  if (result)
  {

    return [a5 setObject:result forKeyedSubscript:a7];
  }

  return result;
}

void __FigCaptureDeferredPhotoProcessorCreate_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) retainReferencedObject];
  captureDeferredPhotoProcessor_terminateImmediatelyDueToError(v1, 4294950475);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t __cdpp_initializeStatics_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t captureDeferredPhotoProcessor_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    *DerivedStorage = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __captureDeferredPhotoProcessor_Invalidate_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = DerivedStorage;
    v5[5] = a1;
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v5);
  }

  return 0;
}

void captureDeferredPhotoProcessor_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  captureDeferredPhotoProcessor_Invalidate(a1);
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 8) = 0;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 16) = 0;
  }
}

id captureDeferredPhotoProcessor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v5 = "";
  }

  else
  {
    v5 = " (never set/invalidated)";
  }

  [v3 appendFormat:@"<FigCaptureDeferredPhotoProcessor %p retainCount: %ld%s allocator: %p>", a1, v4, v5, CFGetAllocator(a1)];
  return v3;
}

uint64_t captureDeferredPhotoProcessor_CopyProperty(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (a2)
    {
      v8 = DerivedStorage;
      if (FigCFEqual())
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 0;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __captureDeferredPhotoProcessor_CopyProperty_block_invoke;
        v14[3] = &unk_1E798FC10;
        v14[4] = &v15;
        v14[5] = v8;
        captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v14);
        if (*(v16 + 24))
        {
          v9 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v9 = MEMORY[0x1E695E4C0];
        }

        v10 = CFRetain(*v9);
      }

      else
      {
        if (!FigCFEqual())
        {
          return 4294954509;
        }

        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 0;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __captureDeferredPhotoProcessor_CopyProperty_block_invoke_2;
        v13[3] = &unk_1E798FC38;
        v13[4] = &v15;
        captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v13);
        if (*(v16 + 24))
        {
          v12 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        v10 = CFRetain(*v12);
      }

      *a4 = v10;
      _Block_object_dispose(&v15, 8);
      return 0;
    }

    else
    {
      captureDeferredPhotoProcessor_CopyProperty_cold_1(&v15);
      return v15;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t captureDeferredPhotoProcessor_SetProperty(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (FigCFEqual())
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __captureDeferredPhotoProcessor_SetProperty_block_invoke;
        v9[3] = &__block_descriptor_56_e5_v8__0l;
        v9[4] = a3;
        v9[5] = v7;
        v9[6] = a1;
        captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v9);
        return 0;
      }

      else
      {
        return 4294954509;
      }
    }

    else
    {
      captureDeferredPhotoProcessor_SetProperty_cold_1(&v10);
      return v10;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

void captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v6 = *(v5 + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync_block_invoke;
    v7[3] = &unk_1E79903B8;
    v7[4] = a2;
    v7[5] = a1;
    dispatch_sync(v6, v7);
  }

  else
  {
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync_cold_1();
  }
}

void __captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void captureDeferredPhotoProcessor_workloop(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureDeferredPhotoProcessor_workloop_cold_1();
  }

  if ((*(DerivedStorage + 56) & 1) != 0 || *(DerivedStorage + 48) || ![*(DerivedStorage + 40) count])
  {
    v3 = 0;
    goto LABEL_7;
  }

  *(DerivedStorage + 48) = [*(DerivedStorage + 40) firstObject];
  [*(DerivedStorage + 40) removeObjectAtIndex:0];
  if (*(DerivedStorage + 1) && captureDeferredPhotoProcessor_workloop_waitForShaderCompilationToken != -1)
  {
    captureDeferredPhotoProcessor_workloop_cold_2();
  }

  v4 = [*(DerivedStorage + 48) captureRequestIdentifier];
  v5 = [*(DerivedStorage + 48) photoIdentifier];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v4, v5];
  if (dword_1ED843F90)
  {
    v35[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithObjects:{v5, 0, v23}];
  v35[0] = 0;
  v8 = [[FigCaptureDeferredProcessingJob alloc] initWithProcessorRequest:*(DerivedStorage + 48) delegate:*(DerivedStorage + 96) error:v35];
  v3 = v8;
  if (v8)
  {
    [*(DerivedStorage + 48) setContainer:{-[FigCaptureDeferredProcessingJob container](v8, "container")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [-[FigCaptureDeferredProcessingJob container](v3 "container")];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          if (([v7 containsObject:{objc_msgSend(v14, "photoIdentifier")}] & 1) == 0)
          {
            [v7 addObject:{objc_msgSend(v14, "photoIdentifier")}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v11);
    }
  }

  v28[0] = @"CaptureRequestIdentifier";
  v28[1] = @"PhotoIdentifiers";
  v29[0] = v4;
  v29[1] = v7;
  captureDeferredPhotoProcessor_sendXPCNotificationWithPayload(a1, @"WillBeginProcessingPhotoProxy", [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2]);
  if (!*(DerivedStorage + 1))
  {
    v16 = *(DerivedStorage + 96);
    v17 = *(DerivedStorage + 48);
    v18 = 4294950476;
    [v16 request:v17 failedWithError:4294950476];
LABEL_34:
    cdpp_reportAnalytics(v18);
    goto LABEL_7;
  }

  if (v35[0])
  {
    if ([FigCaptureDeferredProcessingJob isPotentiallyRecoverableError:?])
    {
      if (dword_1ED843F90)
      {
        *type = 0;
        v26 = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = 4294950471;
      v35[0] = -16825;
    }

    else
    {
      v21 = v35[0];
    }

    [*(DerivedStorage + 96) request:*(DerivedStorage + 48) failedWithError:{v21, v22, v24}];
    v18 = v35[0];
    goto LABEL_34;
  }

  if (v3)
  {
    v19 = [(FigCaptureDeferredPhotoProcessorRequest *)[(FigCaptureDeferredProcessingJob *)v3 processorRequest] qosClass];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __captureDeferredPhotoProcessor_workloop_block_invoke_178;
    block[3] = &unk_1E798F870;
    block[4] = v3;
    v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v19, 0, block);
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(a1, v20);
  }

LABEL_7:
}

uint64_t cdpp_reportAnalytics(uint64_t a1)
{
  v2 = objc_alloc_init(BWDeferredProcessingAnalyticsPayload);
  [(BWDeferredProcessingAnalyticsPayload *)v2 setError:a1];
  if (a1 == -16140)
  {
    [(BWDeferredProcessingAnalyticsPayload *)v2 setProcessingResult:0x1F2197F30];
    [(BWDeferredProcessingAnalyticsPayload *)v2 setContainerProcessingCount:0xFFFFFFFFLL];
  }

  else if (![FigCaptureDeferredProcessingJob isPotentiallyRecoverableError:a1])
  {
    [(BWDeferredProcessingAnalyticsPayload *)v2 setProcessingResult:0x1F2197F10];
  }

  v3 = +[BWCoreAnalyticsReporter sharedInstance];

  return [(BWCoreAnalyticsReporter *)v3 sendEvent:v2];
}

uint64_t __captureDeferredPhotoProcessor_workloop_block_invoke_178(uint64_t a1)
{
  v2 = +[FigCaptureDeferredProcessingEngine sharedProcessingEngine];
  v3 = *(a1 + 32);

  return [v2 executeJob:v3];
}

uint64_t captureDeferredPhotoProcessor_ProcessPhoto(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    v14 = [[FigCaptureDeferredPhotoProcessorRequest alloc] initWithApplicationID:*(DerivedStorage + 24) captureRequstIdentifier:a2 photoIdentifier:a3 clientPID:*(DerivedStorage + 32) message:a6 qosClass:qos_class_self() parent:0];
    [(FigCaptureDeferredPhotoProcessorRequest *)v14 setPhotoLibraryThumbnailDimensions:a5];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __captureDeferredPhotoProcessor_ProcessPhoto_block_invoke;
    v17[3] = &unk_1E799BBD8;
    v17[6] = DerivedStorage;
    v17[7] = a1;
    v17[8] = a2;
    v17[9] = a3;
    v17[4] = v14;
    v17[5] = &v20;
    v17[10] = a4;
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v17);
    if (*(v21 + 6) == -16829)
    {
      *(v21 + 6) = 0;
    }

    v15 = *(v21 + 6);
  }

  else
  {
    v15 = FigSignalErrorAtGM();
  }

  _Block_object_dispose(&v20, 8);
  return v15;
}

uint64_t captureDeferredPhotoProcessor_CancelPhotoProcessing(const void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v7 = cdpp_validateIdentifiersAreUUIDs(a2, a3);
    *(v12 + 6) = v7;
    if (v7)
    {
      FigDebugAssert3();
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __captureDeferredPhotoProcessor_CancelPhotoProcessing_block_invoke;
      v10[3] = &unk_1E7998B00;
      v10[5] = DerivedStorage;
      v10[6] = a3;
      v10[4] = &v11;
      captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v10);
    }

    v8 = *(v12 + 6);
  }

  else
  {
    v8 = FigSignalErrorAtGM();
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_1ACBE73AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t captureDeferredPhotoProcessor_Prewarm(const void *a1, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  kdebug_trace();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED843F90)
    {
      v12 = 0;
      v11 = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (!*DerivedStorage)
  {
    return FigSignalErrorAtGM();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __captureDeferredPhotoProcessor_Prewarm_block_invoke;
  v10[3] = &unk_1E7998380;
  v10[6] = DerivedStorage;
  v10[7] = a1;
  v10[4] = a2;
  v10[5] = a3;
  captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v10);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  kdebug_trace();
  return 0;
}

uint64_t captureDeferredPhotoProcessor_CancelAllPrewarming(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    return FigSignalErrorAtGM();
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __captureDeferredPhotoProcessor_CancelAllPrewarming_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v5);
  return 0;
}

uint64_t captureDeferredPhotoProcessor_DeletePersistentStorageForPhoto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = cdpp_validateIdentifiersAreUUIDs(a2, a3);
    if (v7)
    {
      v11 = v7;
      captureDeferredPhotoProcessor_DeletePersistentStorageForPhoto_cold_1();
      return v11;
    }

    else
    {
      v8 = +[BWDeferredProcessingContainerManager sharedInstance];
      v9 = *(v6 + 3);

      return [(BWDeferredProcessingContainerManager *)v8 deleteContainerForApplicationID:v9 captureRequestIdentifier:a2];
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

id captureDeferredPhotoProcessor_PrettyPrintContainerDescription(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (*DerivedStorage)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureDeferredPhotoProcessor_PrettyPrintContainerDescription_block_invoke;
    v7[3] = &unk_1E799BC20;
    v7[6] = DerivedStorage;
    v7[7] = a2;
    v7[4] = &v8;
    v7[5] = a1;
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v7);
  }

  else
  {
    FigDebugAssert3();
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t cdpp_validateIdentifiersAreUUIDs(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a2];
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    if (v6)
    {
      return 0;
    }

    cdpp_validateIdentifiersAreUUIDs_cold_1();
  }

  else
  {
    cdpp_validateIdentifiersAreUUIDs_cold_2();
  }

  return 4294950470;
}

void __captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1ACBEA5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1ACBEDFE0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x590], 8);
  _Block_object_dispose(&STACK[0x5B0], 8);
  _Block_object_dispose(&STACK[0x5D0], 8);
  _Block_object_dispose(&STACK[0x600], 8);
  _Block_object_dispose(&STACK[0x620], 8);
  _Block_object_dispose(&STACK[0x648], 8);
  _Block_object_dispose(&STACK[0x668], 8);
  _Block_object_dispose(&STACK[0x688], 8);
  _Block_object_dispose((v1 - 232), 8);
  _Unwind_Resume(a1);
}

uint64_t pen_clapDimensionsFromPixelBuffer(__CVBuffer *a1, _DWORD *a2)
{
  result = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D70], 0);
  if (result)
  {
    result = CFAutorelease(result);
    if (result)
    {
      v4 = result;
      v5 = [result objectForKeyedSubscript:*MEMORY[0x1E6965D80]];
      v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965D60]];
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }

      else
      {
        v8 = v6;
        v9 = [v5 intValue];
        v10 = [v8 intValue];
        if (a2)
        {
          *a2 = v9;
          a2[1] = v10;
        }

        return 1;
      }
    }
  }

  return result;
}

void sub_1ACBF6C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t bwfcd_handleFigCaptureDeviceNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return bwfcd_handleFigCaptureDeviceNotification_cold_3();
  }

  if (!a4)
  {
    return bwfcd_handleFigCaptureDeviceNotification_cold_2();
  }

  if (!a3)
  {
    return bwfcd_handleFigCaptureDeviceNotification_cold_1();
  }

  result = [a2 invalidated];
  if ((result & 1) == 0)
  {
    if (dword_1ED844390)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*off_1E7989FA0 == a3 || *off_1E7989F90 == a3 || *off_1E7989FB0 == a3 || *off_1E7989F98 == a3)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

void sub_1ACBFD0AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x210]);
  _Unwind_Resume(a1);
}

uint64_t getDKNotificationAgentClass()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x3052000000;
  v5 = __Block_byref_object_copy__40;
  v0 = getDKNotificationAgentClass_softClass;
  v6 = __Block_byref_object_dispose__40;
  v7 = getDKNotificationAgentClass_softClass;
  if (!getDKNotificationAgentClass_softClass)
  {
    DockKitCoreLibraryCore();
    v3[5] = objc_getClass("DKNotificationAgent");
    getDKNotificationAgentClass_softClass = v3[5];
    v0 = v3[5];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACBFD1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DockKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DockKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getDKTrackingAgentClass_block_invoke(uint64_t a1)
{
  DockKitCoreLibraryCore();
  result = objc_getClass("DKTrackingAgent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getDKTrackingAgentClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getDKNotificationAgentClass_block_invoke(uint64_t a1)
{
  DockKitCoreLibraryCore();
  result = objc_getClass("DKNotificationAgent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getDKNotificationAgentClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getDKFocusObservationClass()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x3052000000;
  v5 = __Block_byref_object_copy__40;
  v0 = getDKFocusObservationClass_softClass;
  v6 = __Block_byref_object_dispose__40;
  v7 = getDKFocusObservationClass_softClass;
  if (!getDKFocusObservationClass_softClass)
  {
    DockKitCoreLibraryCore();
    v3[5] = objc_getClass("DKFocusObservation");
    getDKFocusObservationClass_softClass = v3[5];
    v0 = v3[5];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACBFD5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDKFocusObservationClass_block_invoke(uint64_t a1)
{
  DockKitCoreLibraryCore();
  result = objc_getClass("DKFocusObservation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getDKFocusObservationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t FigSetupIOSurfaceAccelerator(uint64_t a1)
{
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("AppleM2ScalerCSCDriver");
  result = IOServiceGetMatchingService(v2, v3);
  if (result)
  {
    v5 = result;
    v6 = IORegistryEntrySearchCFProperty(result, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    if (v6)
    {
      v7 = v6;
      Value = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFilterHorizontalTapsCount");
      CFNumberGetValue(Value, kCFNumberSInt32Type, a1);
      v9 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterVerticalTapsCount");
      CFNumberGetValue(v9, kCFNumberSInt32Type, (a1 + 4));
      v10 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterHorizontalPhasesCount");
      CFNumberGetValue(v10, kCFNumberSInt32Type, (a1 + 8));
      v11 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterVerticalPhasesCount");
      CFNumberGetValue(v11, kCFNumberSInt32Type, (a1 + 12));
      v12 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterCoefficientsPrePointBits");
      CFNumberGetValue(v12, kCFNumberSInt32Type, (a1 + 16));
      v13 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterCoefficientsPostPointBits");
      CFNumberGetValue(v13, kCFNumberSInt32Type, (a1 + 20));
      CFRelease(v7);
    }

    return IOObjectRelease(v5);
  }

  return result;
}

uint64_t FigSetupIOSurfaceAcceleratorCustomFilter1to1(uint64_t a1, unsigned int *a2, float *a3, float *a4, float *a5, float *a6)
{
  v10 = a2[1];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[2];
  v14 = *a2;
  v15 = a2[3];
  v16 = malloc_type_calloc(1uLL, 4 * (2 * (v13 * v14 + v15 * v10)), 0x100004052888210uLL);
  if (!v16)
  {
    return 3758097085;
  }

  v17 = v16;
  if (v10)
  {
    v18 = (1 << v12);
    v19 = ~(-1 << (v12 + v11));
    v20 = 4 * v15;
    v21 = v10;
    v17 = v16;
    do
    {
      v22 = *a6++;
      *v17 = ((v22 * v18) + 0.5) & v19;
      v17 = (v17 + v20);
      --v21;
    }

    while (v21);
    v23 = v10;
    do
    {
      v24 = *a4++;
      *v17 = ((v24 * v18) + 0.5) & v19;
      v17 = (v17 + v20);
      --v23;
    }

    while (v23);
  }

  if (v14)
  {
    v25 = (1 << v12);
    v26 = ~(-1 << (v12 + v11));
    v27 = 4 * v13;
    v28 = v14;
    do
    {
      v29 = *a5++;
      *v17 = ((v29 * v25) + 0.5) & v26;
      v17 = (v17 + v27);
      --v28;
    }

    while (v28);
    v30 = v14;
    do
    {
      v31 = *a3++;
      *v17 = ((v31 * v25) + 0.5) & v26;
      v17 = (v17 + v27);
      --v30;
    }

    while (v30);
  }

  v32 = v16;
  v33 = IOSurfaceAcceleratorSetCustomFilter();
  free(v32);
  return v33;
}

_DWORD *multiBandNoiseReductionContextCreate(int a1, int a2, const __CFDictionary *a3)
{
  v6 = malloc_type_malloc(0x208uLL, 0x10E004008523159uLL);
  v7 = v6;
  if (v6 && (bzero(v6 + 1, 0x204uLL), *v7 = 1459126783, v7[16] = a2, *(v7 + 512) = CFDictionaryGetValue(a3, @"TMBNR_Fusion") == *MEMORY[0x1E695E4D0], v8 = *MEMORY[0x1E695E480], v9 = MEMORY[0x1E695E9D8], v10 = MEMORY[0x1E695E9E8], *(v7 + 58) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), Mutable = CFDictionaryCreateMutable(v8, 0, v9, v10), (*(v7 + 59) = Mutable) != 0))
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, *off_1E798A0C0);
      if (Value)
      {
        v13 = Value;
        v14 = CFGetTypeID(Value);
        if (v14 == CFDictionaryGetTypeID())
        {
          CFDictionaryApplyFunction(v13, get_noise_models_for_sensor_id, v7);
        }
      }

      v15 = CFDictionaryGetValue(a3, *off_1E798A0D8);
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFDictionaryGetTypeID())
        {
          CFDictionaryApplyFunction(v16, get_noise_models_for_sensor_id, v7);
        }
      }

      v18 = CFDictionaryGetValue(a3, *off_1E798A0E0);
      if (v18)
      {
        v19 = v18;
        v20 = CFGetTypeID(v18);
        if (v20 == CFDictionaryGetTypeID())
        {
          CFDictionaryApplyFunction(v19, get_noise_models_for_sensor_id, v7);
        }
      }
    }

    valuePtr = 0;
    *(v7 + 60) = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    valuePtr = 3;
    *(v7 + 61) = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    v21 = 1;
    valuePtr = 1;
    *(v7 + 62) = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    v22 = 2;
    valuePtr = 2;
    *(v7 + 63) = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    v7[2] = 0;
    *(v7 + 2) = 0;
    if (a1 != 1)
    {
      if (a1 == 3)
      {
        v22 = -2;
      }

      else
      {
        v21 = a1 == 2;
        v22 = 0;
      }
    }

    *v33 = 0;
    if (a3)
    {
      v23 = CFDictionaryGetValue(a3, @"kglContextAddress");
      if (v23)
      {
        v24 = v23;
        v25 = CFGetTypeID(v23);
        if (v25 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v24, kCFNumberSInt64Type, v33);
        }
      }
    }

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(v22, 0);
    v28 = dispatch_queue_create_with_target_V2("noise-reduction-context-init", v26, global_queue);
    *(v7 + 2) = v28;
    v29 = !v21;
    if (!v28)
    {
      v29 = 1;
    }

    if (v29)
    {
      multiBandNoiseReductionContextInit_internal((v7 + 2), *v33, a3);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __multiBandNoiseReductionGPUContextInit_block_invoke;
      block[3] = &unk_1E7991EF8;
      block[4] = *v33;
      block[5] = v7 + 2;
      block[6] = a3;
      dispatch_async(v28, block);
    }
  }

  else
  {
    multiBandNoiseReductionContextDestroy(v7);
    return 0;
  }

  return v7;
}

void get_noise_models_for_sensor_id(const __CFString *a1, const void *a2, uint64_t a3)
{
  range = 0u;
  *v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *bytes = 0u;
  v60[2] = xmmword_1E799BE48;
  v60[3] = unk_1E799BE58;
  v60[4] = xmmword_1E799BE68;
  v60[5] = *&off_1E799BE78;
  v60[0] = xmmword_1E799BE28;
  v60[1] = *algn_1E799BE38;
  v58[2] = xmmword_1E799BEA8;
  v58[3] = unk_1E799BEB8;
  v59 = 1;
  v58[0] = xmmword_1E799BE88;
  v58[1] = *algn_1E799BE98;
  v5 = CFGetTypeID(a1);
  if (v5 != CFStringGetTypeID())
  {
    goto LABEL_67;
  }

  v6 = CFGetTypeID(a2);
  if (v6 != CFDictionaryGetTypeID())
  {
    goto LABEL_67;
  }

  if (*(a3 + 512))
  {
    v7 = v58;
  }

  else
  {
    v7 = v60;
  }

  allocator = *MEMORY[0x1E695E480];
  if (*(a3 + 512))
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  while (1)
  {
    range = 0u;
    *v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    *bytes = 0u;
    Value = CFDictionaryGetValue(a2, *(v7 + 1));
    if (!Value)
    {
      if ((v7[1] & 1) == 0)
      {
LABEL_60:
        get_noise_models_for_sensor_id_cold_17();
        goto LABEL_67;
      }

      goto LABEL_58;
    }

    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 != CFDictionaryGetTypeID() && (v7[1] & 1) != 0)
    {
      goto LABEL_58;
    }

    v12 = CFGetTypeID(v10);
    if (v12 != CFDictionaryGetTypeID())
    {
      goto LABEL_60;
    }

    v13 = CFDictionaryGetValue(v10, @"Bands");
    v70[0] = 0;
    v70[1] = 0;
    if (!v13 || (v14 = v13, v15 = CFGetTypeID(v13), v15 != CFArrayGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_16();
LABEL_66:
      free(v70[0]);
      v70[0] = 0;
      free(v70[1]);
      v70[1] = 0;
      goto LABEL_67;
    }

    HIDWORD(range) = CFArrayGetCount(v14);
    v16 = malloc_type_malloc(96 * SHIDWORD(range), 0x1020040D89758F9uLL);
    v70[0] = v16;
    if (!v16)
    {
      get_noise_models_for_sensor_id_cold_15();
      goto LABEL_66;
    }

    bzero(v16, 96 * SHIDWORD(range));
    context = 0;
    v73 = v70[0];
    v74 = 0;
    v75 = v70[1];
    v76.length = SHIDWORD(range);
    v76.location = 0;
    CFArrayApplyFunction(v14, v76, band_iterator, &context);
    if (context)
    {
      get_noise_models_for_sensor_id_cold_1();
      goto LABEL_66;
    }

    v17 = malloc_type_malloc(8 * v74, 0x100004000313F17uLL);
    v70[1] = v17;
    if (!v17)
    {
      get_noise_models_for_sensor_id_cold_14();
      goto LABEL_66;
    }

    v71[0] = 0;
    v71[1] = v70[0];
    v71[2] = 0;
    v71[3] = v17;
    v77.length = SHIDWORD(range);
    v77.location = 0;
    CFArrayApplyFunction(v14, v77, band_iterator, v71);
    if (LODWORD(v71[0]))
    {
      get_noise_models_for_sensor_id_cold_2();
      goto LABEL_66;
    }

    v18 = CFDictionaryGetValue(v10, @"HighGainThreshold");
    if (!v18 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFArrayGetTypeID()))
    {
      v21 = CFDictionaryGetValue(v10, @"HighGainThreshold");
      if (!v21 || (v22 = v21, v23 = CFGetTypeID(v21), v23 != CFNumberGetTypeID()))
      {
        get_noise_models_for_sensor_id_cold_13();
        goto LABEL_67;
      }

      CFNumberGetValue(v22, kCFNumberFloatType, &v64 + 8);
      DWORD2(range) = 1;
      goto LABEL_28;
    }

    if (CFArrayGetCount(v19) > 5)
    {
      break;
    }

    context = (&v64 + 8);
    handle_band_data(v19, &range + 2, &context);
LABEL_28:
    v24 = CFDictionaryGetValue(v10, @"GammaY");
    if (!v24 || (v25 = v24, v26 = CFGetTypeID(v24), v26 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_12();
      goto LABEL_67;
    }

    CFNumberGetValue(v25, kCFNumberFloatType, bytes);
    v27 = CFDictionaryGetValue(v10, @"BandFactorY");
    if (!v27 || (v28 = v27, v29 = CFGetTypeID(v27), v29 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_11();
      goto LABEL_67;
    }

    CFNumberGetValue(v28, kCFNumberFloatType, &bytes[4]);
    v30 = CFDictionaryGetValue(v10, @"BiasFactor");
    if (!v30 || (v31 = v30, v32 = CFGetTypeID(v30), v32 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_10();
      goto LABEL_67;
    }

    CFNumberGetValue(v31, kCFNumberFloatType, &bytes[8]);
    v33 = CFDictionaryGetValue(v10, @"SlopeFactor");
    if (!v33 || (v34 = v33, v35 = CFGetTypeID(v33), v35 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_9();
      goto LABEL_67;
    }

    CFNumberGetValue(v34, kCFNumberFloatType, (bytes | 0xC));
    v36 = CFDictionaryGetValue(v10, @"GammaC");
    if (!v36 || (v37 = v36, v38 = CFGetTypeID(v36), v38 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_8();
      goto LABEL_67;
    }

    CFNumberGetValue(v37, kCFNumberFloatType, &v63);
    v39 = CFDictionaryGetValue(v10, @"BandFactorC");
    if (!v39 || (v40 = v39, v41 = CFGetTypeID(v39), v41 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_7();
      goto LABEL_67;
    }

    CFNumberGetValue(v40, kCFNumberFloatType, &v63 + 4);
    v42 = CFDictionaryGetValue(v10, @"LensShadingFactorLuma");
    if (!v42 || (v43 = v42, v44 = CFGetTypeID(v42), v44 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_6();
      goto LABEL_67;
    }

    CFNumberGetValue(v43, kCFNumberFloatType, &v63 + 8);
    v45 = CFDictionaryGetValue(v10, @"LensShadingFactorChroma");
    if (!v45 || (v46 = v45, v47 = CFGetTypeID(v45), v47 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_5();
      goto LABEL_67;
    }

    CFNumberGetValue(v46, kCFNumberFloatType, &v63 + 12);
    v48 = CFDictionaryGetValue(v10, @"ChromaDemoireStrength");
    if (!v48 || (v49 = v48, v50 = CFGetTypeID(v48), v50 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_4();
      goto LABEL_67;
    }

    CFNumberGetValue(v49, kCFNumberFloatType, &v64);
    if (!CFStringGetCString(a1, buffer, 10, 0))
    {
      goto LABEL_67;
    }

    LODWORD(v71[0]) = strtoul(buffer, 0, 16);
    v51 = CFNumberCreate(allocator, kCFNumberSInt32Type, v71);
    v52 = CFNumberCreate(allocator, kCFNumberSInt32Type, v7);
    context = v51;
    v73 = v52;
    v53 = CFArrayCreate(allocator, &context, 2, MEMORY[0x1E695E9C0]);
    v54 = CFDataCreate(allocator, bytes, 144);
    v55 = v54;
    if (v53 && v54)
    {
      CFDictionaryAddValue(*(a3 + 472), v53, v54);
      CFDictionaryAddValue(*(a3 + 464), v53, v10);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    if (v55)
    {
      CFRelease(v55);
    }

LABEL_58:
    v7 = (v7 + 24);
    if (!--v8)
    {
      return;
    }
  }

  get_noise_models_for_sensor_id_cold_3();
LABEL_67:
  free(v70[0]);
  v70[0] = 0;
  free(v70[1]);
}

void multiBandNoiseReductionContextDestroy(_DWORD *a1)
{
  if (a1 && *a1 == 1459126783)
  {
    v2 = a1 + 2;
    WaitForInitializationToFinish_0((a1 + 2));
    v3 = *(a1 + 3);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 3) = 0;
    }

    [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 7)];
    glUseProgram(0);
    glActiveTexture(0x84C0u);
    glBindTexture(0xDE1u, 0);
    glActiveTexture(0x84C1u);
    glBindTexture(0xDE1u, 0);
    glBindFramebuffer(0x8D40u, 0);
    glDeleteFramebuffers(4, a1 + 27);
    glDeleteFramebuffers(4, a1 + 48);
    glDeleteFramebuffers(4, a1 + 56);
    glDeleteFramebuffers(4, a1 + 37);
    glDeleteFramebuffers(1, a1 + 43);
    glDeleteTextures(4, a1 + 23);
    glDeleteTextures(4, a1 + 33);
    glDeleteTextures(4, a1 + 44);
    glDeleteTextures(4, a1 + 52);
    glDeleteTextures(2, a1 + 31);
    glDeleteTextures(2, a1 + 41);
    releasePixelBuffers((a1 + 2));
    glDeleteProgram(a1[77]);
    glDeleteProgram(a1[80]);
    glDeleteProgram(a1[86]);
    glDeleteProgram(a1[83]);
    glDeleteProgram(a1[89]);
    glDeleteProgram(a1[92]);
    glDeleteProgram(a1[95]);
    glDeleteProgram(a1[98]);
    glDeleteProgram(a1[101]);
    glDeleteProgram(a1[104]);
    glDeleteProgram(a1[107]);
    glDeleteProgram(a1[110]);
    glDeleteProgram(a1[113]);
    [MEMORY[0x1E6977FE8] setCurrentContext:0];
    if (*(a1 + 306) == 1)
    {
      v4 = *(a1 + 7);
      if (v4)
      {
      }
    }

    v5 = *(a1 + 2);
    if (v5)
    {
      dispatch_release(v5);
    }

    *(a1 + 57) = 0;
    *(a1 + 106) = 0u;
    *(a1 + 110) = 0u;
    *(a1 + 98) = 0u;
    *(a1 + 102) = 0u;
    *(a1 + 90) = 0u;
    *(a1 + 94) = 0u;
    *(a1 + 82) = 0u;
    *(a1 + 86) = 0u;
    *(a1 + 74) = 0u;
    *(a1 + 78) = 0u;
    *(a1 + 66) = 0u;
    *(a1 + 70) = 0u;
    *(a1 + 58) = 0u;
    *(a1 + 62) = 0u;
    *(a1 + 50) = 0u;
    *(a1 + 54) = 0u;
    *(a1 + 42) = 0u;
    *(a1 + 46) = 0u;
    *(a1 + 34) = 0u;
    *(a1 + 38) = 0u;
    *(a1 + 26) = 0u;
    *(a1 + 30) = 0u;
    *(a1 + 18) = 0u;
    *(a1 + 22) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 14) = 0u;
    *v2 = 0u;
    *(a1 + 6) = 0u;
    v6 = *(a1 + 59);
    if (v6)
    {
      CFDictionaryApplyFunction(v6, free_calibration_data_allocations, 0);
      v7 = *(a1 + 59);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    v8 = *(a1 + 58);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 60);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 60) = 0;
    }

    v10 = *(a1 + 61);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 61) = 0;
    }

    v11 = *(a1 + 62);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 62) = 0;
    }

    v12 = *(a1 + 63);
    if (v12)
    {
      CFRelease(v12);
    }

    bzero(a1, 0x208uLL);

    free(a1);
  }
}

void free_calibration_data_allocations(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  free(*(BytePtr + 16));
  v3 = *(BytePtr + 17);

  free(v3);
}

_DWORD *multiBandNoiseReductionReleaseBuffers(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (*result == 1459126783)
    {
      WaitForInitializationToFinish_0((result + 2));
      [MEMORY[0x1E6977FE8] setCurrentContext:*(v1 + 7)];
      glActiveTexture(0x84C0u);
      *(v1 + 19) = -1;
      v1[22] = -1;
      glDeleteTextures(4, v1 + 44);
      glGenTextures(4, v1 + 44);
      glDeleteTextures(4, v1 + 52);
      glGenTextures(4, v1 + 52);
      glDeleteTextures(4, v1 + 23);
      glGenTextures(4, v1 + 23);
      glDeleteTextures(4, v1 + 33);
      glGenTextures(4, v1 + 33);
      glDeleteTextures(2, v1 + 31);
      glGenTextures(2, v1 + 31);
      glDeleteTextures(2, v1 + 41);
      glGenTextures(2, v1 + 41);
      releasePixelBuffers((v1 + 2));
      glFinish();
      v2 = MEMORY[0x1E6977FE8];

      return [v2 setCurrentContext:0];
    }
  }

  return result;
}

uint64_t multiBandNoiseReductionWithTuningOptions(_DWORD *a1, CMSampleBufferRef sbuf, opaqueCMSampleBuffer *a3, const __CFDictionary *a4)
{
  if (sbuf == a3)
  {
    multiBandNoiseReductionWithTuningOptions_cold_3();
    return 4294954516;
  }

  if (!a1 || *a1 != 1459126783)
  {
    multiBandNoiseReductionWithTuningOptions_cold_2();
    return 4294954516;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v13 = CMSampleBufferGetImageBuffer(a3);
  v9 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  v10 = CMGetAttachment(sbuf, *off_1E798D3B0, 0);
  v11 = multiBandNoiseReductionGPU(a1, ImageBuffer, &v13, 1, v9, a4, v10);
  if (v11)
  {
    multiBandNoiseReductionWithTuningOptions_cold_1();
  }

  return v11;
}

uint64_t multiBandNoiseReductionGPU(uint64_t a1, __CVBuffer *a2, CVPixelBufferRef *a3, int a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7)
{
  WaitForInitializationToFinish_0(a1 + 8);
  v14 = 0x1E6977000uLL;
  if (!*(a1 + 56))
  {
    multiBandNoiseReductionGPU_cold_36();
LABEL_139:
    v15 = 4294954516;
    goto LABEL_113;
  }

  if ((*(a1 + 8) | 2) == 2)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v15 = 4294967294;
    goto LABEL_113;
  }

  [MEMORY[0x1E6977FE8] setCurrentContext:?];
  if (!a2)
  {
    multiBandNoiseReductionGPU_cold_35();
    goto LABEL_139;
  }

  if (!a3)
  {
    multiBandNoiseReductionGPU_cold_34();
    goto LABEL_139;
  }

  if (*a3 == a2)
  {
    multiBandNoiseReductionGPU_cold_33();
    goto LABEL_139;
  }

  theDict = a5;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if ((PixelFormatType & 0xFFFFFFEF) != 0x34323066)
  {
    multiBandNoiseReductionGPU_cold_1(&v155);
    v15 = v155;
    goto LABEL_113;
  }

  v17 = PixelFormatType;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, 1uLL);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, 1uLL);
  v20 = CVPixelBufferGetWidthOfPlane(a2, 0);
  v140 = CVPixelBufferGetHeightOfPlane(a2, 0);
  if (v17 != CVPixelBufferGetPixelFormatType(*a3))
  {
    multiBandNoiseReductionGPU_cold_2();
LABEL_146:
    v15 = 4294954516;
    goto LABEL_131;
  }

  if (WidthOfPlane != CVPixelBufferGetWidthOfPlane(*a3, 1uLL))
  {
    multiBandNoiseReductionGPU_cold_3();
    goto LABEL_146;
  }

  if (HeightOfPlane != CVPixelBufferGetHeightOfPlane(*a3, 1uLL))
  {
    multiBandNoiseReductionGPU_cold_4();
    goto LABEL_146;
  }

  if (v20 != CVPixelBufferGetWidthOfPlane(*a3, 0))
  {
    multiBandNoiseReductionGPU_cold_5();
    goto LABEL_146;
  }

  if (v140 != CVPixelBufferGetHeightOfPlane(*a3, 0))
  {
    multiBandNoiseReductionGPU_cold_6();
    goto LABEL_146;
  }

  IOSurface = CVPixelBufferGetIOSurface(a2);
  if (!IOSurface)
  {
    multiBandNoiseReductionGPU_cold_32();
    goto LABEL_130;
  }

  v137 = a6;
  allocator = a4;
  if (a4 >= 1)
  {
    v21 = a4;
    v22 = a3;
    while (CVPixelBufferGetIOSurface(*v22))
    {
      ++v22;
      if (!--v21)
      {
        goto LABEL_18;
      }
    }

    multiBandNoiseReductionGPU_cold_31();
    goto LABEL_130;
  }

LABEL_18:
  if (WidthOfPlane < 1 || *(a1 + 68) < WidthOfPlane || HeightOfPlane < 1 || *(a1 + 72) < HeightOfPlane || (v20 & 3) != 0 || (v140 & 3) != 0)
  {
    multiBandNoiseReductionGPU_cold_30();
LABEL_130:
    v15 = 0xFFFFFFFFLL;
LABEL_131:
    v14 = 0x1E6977000;
    goto LABEL_113;
  }

  key = CVPixelBufferGetWidthOfPlane(a2, 0);
  v141 = CVPixelBufferGetHeightOfPlane(a2, 0);
  v146 = CVPixelBufferGetPixelFormatType(a2);
  glActiveTexture(0x84C0u);
  v23 = CVPixelBufferGetIOSurface(a2);
  if (!v23)
  {
    multiBandNoiseReductionGPU_cold_29();
LABEL_124:
    v14 = 0x1E6977000;
LABEL_125:
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_155:
    glBindTexture(0xDE1u, 0);
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_156:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_113;
  }

  v24 = v23;
  v133 = v20;
  v134 = a7;
  v138 = a4;
  v25 = CVPixelBufferGetWidthOfPlane(a2, 0);
  v26 = CVPixelBufferGetHeightOfPlane(a2, 0);
  v27 = CVPixelBufferGetPixelFormatType(a2);
  v28 = v27;
  if (*(a1 + 76) != v25 || *(a1 + 80) != v26 || *(a1 + 88) != v27)
  {
    v29 = v24;
    v30 = 0;
    v31 = a1 + 240;
    v32 = a1 + 248;
    do
    {
      v33 = *(v32 + v30);
      if (v33)
      {
        CVPixelBufferRelease(v33);
        *(v32 + v30) = 0;
      }

      v30 += 8;
    }

    while (v30 != 24);
    v34 = (a1 + 112);
    v35 = 3;
    v24 = v29;
    while (1)
    {
      if (v35 == 3)
      {
        v36 = CVPixelBufferGetWidthOfPlane(a2, 1uLL);
        v37 = a2;
      }

      else
      {
        v36 = CVPixelBufferGetWidthOfPlane(*v31, 1uLL);
        v37 = *v31;
      }

      v38 = CVPixelBufferGetHeightOfPlane(v37, 1uLL);
      YCC420CVPixelBufferRef = createYCC420CVPixelBufferRef(v36, v38, v28);
      *(v31 + 8) = YCC420CVPixelBufferRef;
      v40 = CVPixelBufferGetIOSurface(YCC420CVPixelBufferRef);
      if (!v40)
      {
        multiBandNoiseReductionGPU_cold_10();
        goto LABEL_124;
      }

      v41 = v40;
      if (v35 == 3)
      {
        if (BindTextureToFbo(*(a1 + 56), v40, *(a1 + 128), 0, 0x1908u, 0))
        {
          break;
        }
      }

      if (BindTextureToFbo(*(a1 + 56), v41, *(v34 - 4), *v34, 0x8227u, 0))
      {
        multiBandNoiseReductionGPU_cold_8();
        goto LABEL_124;
      }

      if (BindTextureToFbo(*(a1 + 56), v41, v34[17], v34[21], 0x1908u, 1uLL))
      {
        multiBandNoiseReductionGPU_cold_9();
        goto LABEL_124;
      }

      v31 += 8;
      ++v34;
      if (!--v35)
      {
        goto LABEL_42;
      }
    }

    multiBandNoiseReductionGPU_cold_7();
    goto LABEL_124;
  }

LABEL_42:
  *(a1 + 240) = a2;
  if (BindTextureToFbo(*(a1 + 56), v24, *(a1 + 124), 0, 0x1908u, 0))
  {
    multiBandNoiseReductionGPU_cold_11();
    goto LABEL_124;
  }

  v14 = 0x1E6977000;
  if (BindTextureToFbo(*(a1 + 56), v24, *(a1 + 176), *(a1 + 192), 0x1908u, 1uLL))
  {
    multiBandNoiseReductionGPU_cold_12();
    goto LABEL_125;
  }

  if (BindTextureToFbo(*(a1 + 56), v24, *(a1 + 92), *(a1 + 108), 0x8227u, 0))
  {
    multiBandNoiseReductionGPU_cold_13();
    goto LABEL_125;
  }

  if (*(a1 + 76) == key && *(a1 + 80) == v141 && *(a1 + 84) == v138)
  {
    if (v138 != 1 || *(a1 + 88) == v146)
    {
      goto LABEL_66;
    }
  }

  else if (v138 != 1)
  {
    goto LABEL_66;
  }

  releaseOutputPixelBuffers(a1 + 8);
  v42 = 0;
  v43 = 1;
  v44 = 136;
  do
  {
    v45 = a1 + v42;
    if (v42)
    {
      v46 = (a1 + v42 + 272);
    }

    else
    {
      v46 = a3;
    }

    v47 = CVPixelBufferGetWidthOfPlane(*v46, 1uLL);
    v48 = CVPixelBufferGetHeightOfPlane(*v46, 1uLL);
    v49 = createYCC420CVPixelBufferRef(v47, v48, v146);
    *(v45 + 280) = v49;
    v50 = CVPixelBufferGetIOSurface(v49);
    if (!v50)
    {
      multiBandNoiseReductionGPU_cold_28();
      goto LABEL_154;
    }

    v51 = v50;
    v52 = CVPixelBufferGetIOSurface(*v46);
    if (!v52)
    {
      multiBandNoiseReductionGPU_cold_27();
      goto LABEL_154;
    }

    if (BindLumaAndChromaTexturesToDualFbo(*(a1 + 56), v51, *(a1 + v44), v52, *(a1 + v44 + 72), *(a1 + v44 + 16)))
    {
      multiBandNoiseReductionGPU_cold_14();
      goto LABEL_154;
    }

    if (v43 == 3)
    {
      v53 = CVPixelBufferGetIOSurface(*(v45 + 280));
      if (!v53)
      {
        multiBandNoiseReductionGPU_cold_16();
        goto LABEL_154;
      }

      if (BindTextureToFbo(*(a1 + 56), v53, *(a1 + v44 + 76), *(a1 + v44 + 92), 0x1908u, 1uLL))
      {
        multiBandNoiseReductionGPU_cold_15();
        goto LABEL_154;
      }
    }

    else if (v43 == 1 && BindTextureToFbo(*(a1 + 56), v51, *(a1 + v44 + 32), 0, 0x1908u, 0))
    {
      multiBandNoiseReductionGPU_cold_17();
      goto LABEL_154;
    }

    v42 += 8;
    ++v43;
    v44 += 4;
  }

  while (v42 != 24);
LABEL_66:
  *(a1 + 76) = key;
  *(a1 + 80) = v141;
  *(a1 + 84) = v138;
  *(a1 + 88) = v146;
  v54 = CVPixelBufferGetIOSurface(*a3);
  if (!v54)
  {
    multiBandNoiseReductionGPU_cold_26();
LABEL_154:
    fig_log_get_emitter();
    FigDebugAssert3();
    v14 = 0x1E6977000;
    goto LABEL_155;
  }

  if (BindTextureToFbo(*(a1 + 56), v54, *(a1 + 164), *(a1 + 172), 0x1908u, 0))
  {
    multiBandNoiseReductionGPU_cold_18();
    goto LABEL_154;
  }

  if (v138 >= 1)
  {
    v55 = 0;
    v56 = a1 + 208;
    do
    {
      v57 = CVPixelBufferGetIOSurface(a3[v55]);
      if (!v57)
      {
        multiBandNoiseReductionGPU_cold_25();
        goto LABEL_154;
      }

      v58 = v57;
      if (v55 >= (v138 - 1))
      {
        if (BindTextureToFbo(*(a1 + 56), v57, *(v56 + 4 * v55), *(a1 + 224 + 4 * v55), 0x1908u, 1uLL))
        {
          multiBandNoiseReductionGPU_cold_19();
          goto LABEL_154;
        }

        v59 = v55 + 1;
      }

      else
      {
        v59 = v55 + 1;
        v60 = CVPixelBufferGetIOSurface(a3[v55 + 1]);
        if (!v60)
        {
          multiBandNoiseReductionGPU_cold_24();
          goto LABEL_154;
        }

        v61 = v60;
        if (BindLumaAndChromaTexturesToDualFbo(*(a1 + 56), v60, *(a1 + 132 + 4 * v59), v58, *(v56 + 4 * v55), *(a1 + 148 + 4 * v59)))
        {
          multiBandNoiseReductionGPU_cold_20();
          goto LABEL_154;
        }

        if (!v55)
        {
          if (BindTextureToFbo(*(a1 + 56), v61, *(a1 + 164 + 4 * v59), 0, 0x1908u, 0))
          {
            multiBandNoiseReductionGPU_cold_21();
            goto LABEL_154;
          }

          v59 = 1;
        }
      }

      *(a1 + 272 + 8 * v55) = a3[v55];
      v55 = v59;
    }

    while (v59 != allocator);
  }

  glBindTexture(0xDE1u, 0);
  v62 = v154;
  v153 = IOSurface;
  memset(v154, 0, sizeof(v154));
  for (i = 31; i != 34; ++i)
  {
    CVBufferPropagateAttachments(a2, *(a1 + 8 * i));
    v64 = CVPixelBufferGetIOSurface(*(a1 + 8 * i));
    *v62 = v64;
    if (!v64)
    {
      multiBandNoiseReductionGPU_cold_23();
      goto LABEL_130;
    }

    ++v62;
  }

  v151 = 0.0;
  v150 = 0;
  get_exposure_parameters(theDict, v137, &v150);
  device_parameters = get_device_parameters(a1, theDict, v137, v134);
  v66 = 0;
  v67 = v150;
  v68 = v152;
  v69 = v151;
  do
  {
    compute_noise_model(a1 + 8, v68, device_parameters, v66++, 1, *&v67, *(&v67 + 1), v69);
    v68 += 14;
  }

  while (v66 != 4);
  v70 = *(device_parameters + 8);
  v71 = MEMORY[0x1E695E8D0];
  if (*(a1 + 24))
  {
    RunLoopSource = IOSurfaceAcceleratorGetRunLoopSource();
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, *v71);
  }

  else
  {
    RunLoopSource = 0;
  }

  v136 = device_parameters;
  v139 = RunLoopSource;
  if (((v140 | v133) & 0xC) != 0 || (*(a1 + 304) & 1) == 0)
  {
    allocatorb = (a1 + 344);
    v94 = (a1 + 196);
    v95 = (a1 + 248);
    for (j = 10; j != 52; j += 14)
    {
      glActiveTexture(0x84C0u);
      glBindTexture(0xDE1u, *(v94 - 26));
      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      glTexParameterf(0xDE1u, 0x2800u, 9729.0);
      glTexParameterf(0xDE1u, 0x2801u, 9729.0);
      glBindFramebuffer(0x8D40u, *(v94 - 21));
      v97 = *&v152[j];
      bindVertexAttributes(v97);
      v98 = CVPixelBufferGetWidthOfPlane(*v95, 0) / 2;
      v99 = CVPixelBufferGetHeightOfPlane(*v95, 0);
      v100 = CVPixelBufferGetWidthOfPlane(*(v95 - 1), 0) / 2;
      v101 = CVPixelBufferGetHeightOfPlane(*(v95 - 1), 0);
      glViewport(0, 0, v98, v99);
      glUseProgram(*v97);
      UniformLocation = glGetUniformLocation(*v97, "pixel_pitch");
      glUniform2f(UniformLocation, 1.0 / (v100 - 1), 1.0 / (v101 - 1));
      glDrawArrays(5u, 0, 4);
      glFlush();
      glActiveTexture(0x84C0u);
      glBindTexture(0xDE1u, *(v94 - 5));
      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      glTexParameterf(0xDE1u, 0x2800u, 9729.0);
      glTexParameterf(0xDE1u, 0x2801u, 9729.0);
      bindVertexAttributes(allocatorb);
      v103 = *v94++;
      glBindFramebuffer(0x8D40u, v103);
      LODWORD(v97) = CVPixelBufferGetWidthOfPlane(*v95, 1uLL) / 2;
      v104 = CVPixelBufferGetHeightOfPlane(*v95, 1uLL);
      v105 = CVPixelBufferGetWidthOfPlane(*(v95 - 1), 1uLL) / 2;
      v106 = CVPixelBufferGetHeightOfPlane(*(v95 - 1), 1uLL);
      glViewport(0, 0, v97, v104);
      glUseProgram(*allocatorb);
      v107 = glGetUniformLocation(*allocatorb, "pixel_pitch");
      glUniform2f(v107, 1.0 / (v105 - 1), 1.0 / (v106 - 1));
      glDrawArrays(5u, 0, 4);
      glFlush();
      ++v95;
    }
  }

  else
  {
    LODWORD(v155) = 0;
    v74 = v152[12];
    v75 = v152[13];
    v77 = *(a1 + 32);
    v76 = *(a1 + 36);
    v78 = *(a1 + 40);
    v79 = *(a1 + 44);
    v80 = *(a1 + 48);
    v81 = *(a1 + 52);
    v82 = v79 * v76;
    v83 = malloc_type_calloc(1uLL, 8 * (v79 * v76 + v78 * v77), 0x100004052888210uLL);
    if (v83)
    {
      v84 = v83;
      m2m_filter_coefficients(v76, v79, v80, v81, v83, v75);
      m2m_filter_coefficients(v76, v79, v80, v81, &v84[v82], v74);
      m2m_filter_coefficients(v77, v78, v80, v81, &v84[v82 + v82], v75);
      m2m_filter_coefficients(v77, v78, v80, v81, &v84[v82 + v82 + v78 * v77], v74);
      IOSurfaceAcceleratorSetCustomFilter();
      free(v84);
    }

    v85 = 0;
    allocatora = *MEMORY[0x1E695E480];
    keya = *MEMORY[0x1E69A85C8];
    v86 = *MEMORY[0x1E695E4D0];
    v87 = *MEMORY[0x1E69A8508];
    v88 = *MEMORY[0x1E69A84D0];
    v142 = *MEMORY[0x1E69A85B8];
    while (v85 != 24)
    {
      Mutable = CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, keya, v86);
      CFDictionarySetValue(Mutable, v87, v86);
      CFDictionarySetValue(Mutable, v88, v86);
      if (v85 != 16)
      {
        CFDictionarySetValue(Mutable, v142, v86);
      }

      v90 = IOSurfaceAcceleratorTransferSurface();
      CFRelease(Mutable);
      v85 += 8;
      if (v90)
      {
        v91 = 0;
        v92 = v138;
        v93 = v137;
        goto LABEL_107;
      }
    }

    if (v155 <= 0)
    {
      v108 = *MEMORY[0x1E695E8E0];
      do
      {
        CFRunLoopRunInMode(v108, 1.0, 1u);
      }

      while (v155 < 1);
    }
  }

  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 188));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, *(a1 + 104));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glBindFramebuffer(0x8D40u, *(a1 + 236));
  bindVertexAttributes(a1 + 356);
  v109 = CVPixelBufferGetWidthOfPlane(*(a1 + 296), 1uLL) / 2;
  v110 = CVPixelBufferGetHeightOfPlane(*(a1 + 296), 1uLL);
  glViewport(0, 0, v109, v110);
  glUseProgram(*(a1 + 356));
  v111 = glGetUniformLocation(*(a1 + 356), "luma_sigma_constant");
  glUniform1f(v111, v152[44]);
  v112 = glGetUniformLocation(*(a1 + 356), "chroma_sigma_r");
  glUniform1f(v112, v152[46]);
  v113 = glGetUniformLocation(*(a1 + 356), "chroma_sigma_b");
  glUniform1f(v113, v152[47]);
  v114 = glGetUniformLocation(*(a1 + 356), "lens_shading_factors");
  glUniform2f(v114, *(v136 + 6) + -1.0, *(v136 + 7) + -1.0);
  v115 = glGetUniformLocation(*(a1 + 356), "chroma_demoire_strength");
  glUniform1f(v115, v70);
  v116 = glGetUniformLocation(*(a1 + 356), "pixel_pitch");
  glUniform2f(v116, 1.0 / v109, 1.0 / v110);
  glDrawArrays(5u, 0, 4);
  glFlush();
  remix_denoise_luma_chroma_level(a1 + 8, v152, v136 + 6, 3u, v70);
  v117 = 2;
  do
  {
    remix_denoise_luma_chroma_level(a1 + 8, v152, v136 + 6, v117, v70);
    v118 = v117-- != 0;
  }

  while (v117 != 0 && v118);
  v119 = CVPixelBufferGetWidthOfPlane(*(a1 + 272), 0) / 4;
  v120 = CVPixelBufferGetHeightOfPlane(*(a1 + 272), 0);
  v121 = CVPixelBufferGetWidthOfPlane(*(a1 + 280), 0) / 4;
  v122 = CVPixelBufferGetHeightOfPlane(*(a1 + 280), 0);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 124));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, *(a1 + 128));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glActiveTexture(0x84C2u);
  glBindTexture(0xDE1u, *(a1 + 168));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glBindFramebuffer(0x8D40u, *(a1 + 172));
  bindVertexAttributes(a1 + 368);
  glViewport(0, 0, v119, v120);
  glUseProgram(*(a1 + 368));
  v123 = glGetUniformLocation(*(a1 + 368), "diff_remix");
  glUniform1f(v123, v152[6]);
  v124 = glGetUniformLocation(*(a1 + 368), "pixel_pitch");
  v125 = 1.0 / (v121 - 1);
  v126 = 1.0 / (v122 - 1);
  glUniform2f(v124, v125, v126);
  v127 = glGetUniformLocation(*(a1 + 368), "luma_sigma_intercept");
  glUniform1f(v127, v152[0]);
  v128 = glGetUniformLocation(*(a1 + 368), "luma_sigma_max");
  glUniform1f(v128, v152[2]);
  v129 = glGetUniformLocation(*(a1 + 368), "luma_sigma_slope");
  glUniform1f(v129, v152[1]);
  v130 = glGetUniformLocation(*(a1 + 368), "flatness_threshold");
  glUniform1f(v130, v152[9]);
  glDrawArrays(5u, 0, 4);
  glFlush();
  v91 = 1;
  v93 = v137;
  v92 = v138;
LABEL_107:
  v14 = 0x1E6977000uLL;
  if (v139)
  {
    v131 = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(v131, v139, *MEMORY[0x1E695E8D0]);
  }

  if (!v91)
  {
    multiBandNoiseReductionGPU_cold_22();
    goto LABEL_156;
  }

  if (v92 >= 2)
  {
    bzero((a1 + 280), 8 * (v138 - 1));
  }

  multibandNoiseReductionFinalize(v93);
  v15 = 0;
LABEL_113:
  glGetError();
  [*(v14 + 4072) setCurrentContext:0];
  return v15;
}

uint64_t multiBandNoiseReductionPyramidLayers(_DWORD *a1)
{
  if (a1 && *a1 == 1459126783)
  {
    return 4;
  }

  multiBandNoiseReductionPyramidLayers_cold_1();
  return 4294954516;
}

uint64_t multiBandNoiseReductionWithPyramid(_DWORD *a1, CMSampleBufferRef sbuf, CVPixelBufferRef *a3, int a4, const __CFDictionary *a5)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v11 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  if (ImageBuffer == *a3)
  {
    multiBandNoiseReductionWithPyramid_cold_3();
    return 4294954516;
  }

  if (!a1 || *a1 != 1459126783)
  {
    multiBandNoiseReductionWithPyramid_cold_2();
    return 4294954516;
  }

  v12 = v11;
  if (a4 != 1 && a4 != 4)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return 4294954516;
  }

  v13 = CMGetAttachment(sbuf, *off_1E798D3B0, 0);
  v14 = multiBandNoiseReductionGPU(a1, ImageBuffer, a3, a4, v12, a5, v13);
  if (v14)
  {
    multiBandNoiseReductionWithPyramid_cold_1();
  }

  return v14;
}

uint64_t multiBandNoiseReductionPyramidFusionMaxBuffers(_DWORD *a1)
{
  if (a1 && *a1 == 1459126783)
  {
    return 4;
  }

  multiBandNoiseReductionPyramidFusionMaxBuffers_cold_1();
  return 4294954516;
}

uint64_t multiBandPyramidFusion(const __CFNumber *Value, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, CFDictionaryRef theDict)
{
  if (a4 > 4)
  {
    return 4294954516;
  }

  v9 = a4;
  v12 = Value;
  LODWORD(v100) = 0;
  v93 = theDict;
  v94 = a6;
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"TNRFusionAlgorithm")) != 0)
  {
    Value = CFNumberGetValue(Value, kCFNumberIntType, &v100);
    v13 = v100 == 1;
  }

  else
  {
    v13 = 0;
  }

  v90 = &v90;
  v14 = v9;
  v15 = MEMORY[0x1EEE9AC00](Value);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v105;
  memset(v112, 0, 376);
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  memset(v108, 0, sizeof(v108));
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v102 = v18;
  v103 = v19;
  v104 = (&v90 - v20);
  DWORD2(v111) = v9;
  v100 = *(v12 + 56);
  v101 = v21;
  [MEMORY[0x1E6977FE8] setCurrentContext:?];
  if (v9 >= 1)
  {
    memcpy(v108, a2, 8 * v9);
  }

  v22 = 0;
  BYTE12(v111) = v13;
  v112[6] = a3;
  do
  {
    v23 = a5;
    if (v22)
    {
      v23 = *(v12 + 240 + v22);
    }

    if (!v23)
    {
      multiBandPyramidFusion_cold_13();
      v7 = 4294954514;
      goto LABEL_78;
    }

    *(&v109 + v22) = v23;
    v22 += 8;
  }

  while (v22 != 32);
  v92 = v9;
  if (v9 >= 1)
  {
    v24 = 0;
    v95 = v112;
    v25 = vdup_n_s32(0x437F0000u);
    while (1)
    {
      v26 = *(v108[v24] + 24);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v26, 0);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v26, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v26, 0);
      if (CVPixelBufferLockBaseAddress(v26, 1uLL))
      {
        multiBandPyramidFusion_cold_1();
        goto LABEL_90;
      }

      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v26, 0);
      if (HeightOfPlane < 1)
      {
        v33 = 0;
        v38 = 0.0;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        do
        {
          v34 = BaseAddressOfPlane;
          v35 = WidthOfPlane & 0x7FFFFFFF;
          if (WidthOfPlane >= 1)
          {
            do
            {
              v37 = *v34++;
              v36 = v37;
              if (v37 >= 0x81)
              {
                v36 = 0;
              }

              else
              {
                ++v33;
              }

              v32 += v36;
              --v35;
            }

            while (v35);
          }

          ++v31;
          BaseAddressOfPlane += BytesPerRowOfPlane;
        }

        while (v31 != (HeightOfPlane & 0x7FFFFFFF));
        v38 = v32;
      }

      if (WidthOfPlane * 0.05 * HeightOfPlane >= v33)
      {
        break;
      }

      v39 = &v95[12 * v24];
      *v39 = (v38 / v33) / 255.0;
      v40 = CVPixelBufferGetWidthOfPlane(v26, 1uLL);
      v41 = CVPixelBufferGetHeightOfPlane(v26, 1uLL);
      v42 = CVPixelBufferGetBytesPerRowOfPlane(v26, 1uLL);
      v43 = CVPixelBufferGetBaseAddressOfPlane(v26, 1uLL);
      if (v41 < 1)
      {
        v49 = 0;
        v44 = 0;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        do
        {
          v47 = v43;
          v48 = v40 & 0x7FFFFFFF;
          if (v40 >= 1)
          {
            do
            {
              v44.i32[0] = *v47;
              v44.i32[1] = v47[1];
              v46 = vadd_s32(v46, v44);
              v47 += 2;
              --v48;
            }

            while (v48);
          }

          ++v45;
          v43 += v42;
        }

        while (v45 != (v41 & 0x7FFFFFFF));
        *v44.i32 = ((v40 & ~(v40 >> 31)) * v41);
        v49 = vcvt_f32_s32(v46);
      }

      *(v39 + 4) = vdiv_f32(vdiv_f32(v49, vdup_lane_s32(v44, 0)), v25);
      CVPixelBufferUnlockBaseAddress(v26, 1uLL);
      if (++v24 == v14)
      {
        goto LABEL_39;
      }
    }

    v50 = &v112[1];
    do
    {
      *(v50 - 1) = 0x3F00000000000000;
      *v50 = 1056964608;
      v50 += 3;
      --v14;
    }

    while (v14);
  }

LABEL_39:
  v99 = 0.0;
  v98 = 0;
  v51 = v93;
  v52 = v94;
  get_exposure_parameters(v94, v93, &v98);
  device_parameters = get_device_parameters(v12, v52, v51, 0);
  v54 = 0;
  v55 = &v112[7];
  v56 = v98;
  v57 = v99;
  do
  {
    compute_noise_model(v12 + 8, v55, device_parameters, v54++, 0, *&v56, *(&v56 + 1), v57);
    v55 += 7;
  }

  while (v54 != 4);
  LODWORD(v9) = v92;
  glGenTextures(v92, v101);
  glGenTextures(v9, v102);
  glGenTextures(v9, v103);
  glGenTextures(v9, v104);
  glGenTextures(4, &v105 + 1);
  glGenTextures(4, &v106 + 1);
  glGenFramebuffers(1, &v107 + 1);
  glGenFramebuffers(1, &v107 + 3);
  glGenFramebuffers(1, &v107 + 2);
  if (BYTE12(v111))
  {
    v59 = CVPixelBufferGetWidthOfPlane(*(v12 + 264), 0);
    v60 = CVPixelBufferGetHeightOfPlane(*(v12 + 264), 0);
    PixelFormatType = CVPixelBufferGetPixelFormatType(*(v12 + 240));
    YCC420CVPixelBufferRef = createYCC420CVPixelBufferRef(v59, v60, PixelFormatType);
    *&v111 = YCC420CVPixelBufferRef;
    if (!YCC420CVPixelBufferRef)
    {
      multiBandPyramidFusion_cold_12();
      goto LABEL_95;
    }

    IOSurface = CVPixelBufferGetIOSurface(YCC420CVPixelBufferRef);
    if (!IOSurface)
    {
      multiBandPyramidFusion_cold_11(&v111);
      goto LABEL_95;
    }

    v64 = IOSurface;
    glGenTextures(1, v91);
    glActiveTexture(0x84C0u);
    glBindTexture(0xDE1u, v105);
    BYTE4(v89) = 0;
    LODWORD(v89) = 0;
    if (([v100 texImageIOSurface:v64 target:3553 internalFormat:33323 width:(v59 / 2) height:v60 format:33319 type:5121 plane:v89 invert:?] & 1) == 0)
    {
      multiBandPyramidFusion_cold_2();
      v7 = 1;
      goto LABEL_78;
    }
  }

  else
  {
    *&v111 = 0;
    LODWORD(v105) = 0;
  }

  if (v93 && (v65 = CFDictionaryGetValue(v93, @"kTMBNRTuningParameters")) != 0 && (BytePtr = CFDataGetBytePtr(v65)) != 0)
  {
    v67 = *(BytePtr + 1);
    *&v112[35] = *BytePtr;
    *&v112[37] = v67;
    v68 = *(BytePtr + 2);
    v69 = *(BytePtr + 3);
    v70 = *(BytePtr + 5);
    *&v112[43] = *(BytePtr + 4);
    *&v112[45] = v70;
    *&v112[39] = v68;
    *&v112[41] = v69;
  }

  else
  {
    LODWORD(v58) = v56;
    initialize_fusion_parameters(&v112[35], BYTE12(v111), v58);
  }

  v97 = 0.0;
  v71 = fuse_remix_level(&v100, (v12 + 416), 3u, 0, 1, 0.0);
  if (v71)
  {
    v7 = v71;
    multiBandPyramidFusion_cold_3();
    goto LABEL_78;
  }

  if (compute_mismatch_coefficient(&v100, &v97, *&v56))
  {
    multiBandPyramidFusion_cold_4();
LABEL_95:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_78;
  }

  v72 = v97;
  if (BYTE12(v111) == 1 && v97 > 0.0)
  {
    v73 = 0;
    v74 = v96;
    do
    {
      compute_noise_model(v12 + 8, v74, device_parameters, v73++, 1, *&v56, *(&v56 + 1), v57);
      v74 += 56;
    }

    while (v73 != 4);
  }

  v75 = 0;
  v94 = (v12 + 144);
  v95 = &v110 + 8;
  while (1)
  {
    if (v75 < 0xFFFFFFFFFFFFFFFDLL)
    {
      v76 = 440;
    }

    else
    {
      v76 = 452;
    }

    v77 = fuse_remix_level(&v100, (v12 + v76), v75 + 3, 1, 0, v72);
    if (v77)
    {
      v7 = v77;
      multiBandPyramidFusion_cold_5();
      goto LABEL_77;
    }

    if (v75 + 3 >= 3)
    {
      v78 = (v12 + 416);
    }

    else
    {
      v78 = (v12 + 428);
    }

    v79 = fuse_remix_level(&v100, v78, v75 + 3, 0, 0, v72);
    if (v79)
    {
      v7 = v79;
      multiBandPyramidFusion_cold_6();
      goto LABEL_77;
    }

    if (v75 != -3 && (BYTE12(v111) & 1) != 0 && v72 > 0.0)
    {
      break;
    }

LABEL_75:
    if (--v75 == -4)
    {
      multibandNoiseReductionFinalize(v93);
      v7 = 0;
      goto LABEL_77;
    }
  }

  v80 = *&v95[8 * v75];
  v81 = CVPixelBufferGetWidthOfPlane(v80, 0);
  v82 = CVPixelBufferGetHeightOfPlane(v80, 0);
  v83 = CVPixelBufferGetPixelFormatType(v109);
  v84 = createYCC420CVPixelBufferRef(v81, v82, v83);
  if (!v84)
  {
    multiBandPyramidFusion_cold_10();
    goto LABEL_90;
  }

  v85 = v84;
  v86 = CVPixelBufferGetIOSurface(v84);
  if (!v86)
  {
    multiBandPyramidFusion_cold_9(v85);
    goto LABEL_90;
  }

  v87 = BindTextureToFbo(*(v12 + 56), v86, *(v94 + v75), DWORD2(v107), 0x8227u, 0);
  if (v87)
  {
    v7 = v87;
    multiBandPyramidFusion_cold_7();
    goto LABEL_77;
  }

  denoise_luma_level(v12 + 8, DWORD2(v107), v96, v105, v75 + 3);
  if (!CVPixelBufferCopyPlane(v80, v85))
  {
    CVPixelBufferRelease(v85);
    goto LABEL_75;
  }

  multiBandPyramidFusion_cold_8();
LABEL_90:
  v7 = 0xFFFFFFFFLL;
LABEL_77:
  LODWORD(v9) = v92;
LABEL_78:
  glGetError();
  if (v111)
  {
    CVPixelBufferRelease(v111);
    *&v111 = 0;
  }

  glDeleteTextures(v9, v101);
  glDeleteTextures(v9, v102);
  glDeleteTextures(v9, v103);
  glDeleteTextures(v9, v104);
  glDeleteTextures(1, v91);
  glDeleteTextures(4, &v105 + 1);
  glDeleteTextures(4, &v106 + 1);
  glDeleteFramebuffers(1, &v107 + 1);
  glDeleteFramebuffers(1, &v107 + 3);
  glDeleteFramebuffers(1, &v107 + 2);
  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  return v7;
}

float get_exposure_parameters(CFDictionaryRef theDict, CFDictionaryRef a2, float *a3)
{
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"ClientSpecifiedMetadata");
    if (Value)
    {
      theDict = Value;
    }
  }

  valuePtr = 1017370378;
  v22 = 256;
  v23 = 256;
  v21 = 256;
  v20 = 4096;
  v19 = 4096;
  v18 = 4096;
  if (!theDict)
  {
    goto LABEL_19;
  }

  v6 = CFDictionaryGetValue(theDict, *off_1E798B2A8);
  if (v6)
  {
    CFNumberGetValue(v6, kCFNumberFloatType, &valuePtr);
  }

  v7 = CFDictionaryGetValue(theDict, *off_1E798B0B8);
  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberIntType, &v23);
  }

  v8 = CFDictionaryGetValue(theDict, *off_1E798B7D0);
  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberIntType, &v22);
  }

  v9 = CFDictionaryGetValue(theDict, *off_1E798B7B8);
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberIntType, &v21);
  }

  v10 = CFDictionaryGetValue(theDict, *off_1E798B0F8);
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberShortType, &v20);
  }

  v11 = CFDictionaryGetValue(theDict, *off_1E798B120);
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberShortType, &v19);
  }

  v12 = CFDictionaryGetValue(theDict, *off_1E798B0C0);
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberShortType, &v18);
    v13 = v18;
  }

  else
  {
LABEL_19:
    v13 = 4096.0;
  }

  v14 = v20;
  v15 = vcvtd_n_f64_s32(v23, 8uLL) * vcvtd_n_f64_s32(v22, 8uLL) * vcvtd_n_f64_s32(v21, 8uLL);
  v16 = v19 / v14;
  *a3 = v15;
  a3[1] = v16;
  result = v13 / v14;
  a3[2] = result;
  return result;
}

const UInt8 *get_device_parameters(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3, const void *a4)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *off_1E798B660);
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    Value = 0;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if (!Value)
  {
    v8 = CFDictionaryGetValue(a3, @"ClientSpecifiedMetadata");
    Value = v8;
    if (v8)
    {
      v9 = CFGetTypeID(v8);
      if (v9 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(Value, *off_1E798B660);
      }

      else
      {
        Value = 0;
      }
    }
  }

LABEL_10:
  valuePtr = 0;
  if (!a4 || (v10 = CFGetTypeID(a4), v10 != CFNumberGetTypeID()))
  {
    v11 = 480;
    if (!Value)
    {
      goto LABEL_19;
    }

LABEL_16:
    v12 = *(a1 + v11);
    if (v12)
    {
      result = get_device_parameters_for_fusion_type(a1, Value, *(a1 + v11));
      if (result)
      {
        return result;
      }

      if (v12 == *(a1 + 488))
      {
        result = get_device_parameters_for_fusion_type(a1, Value, *(a1 + 480));
        if (result)
        {
          return result;
        }
      }
    }

    goto LABEL_19;
  }

  CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr < 4)
  {
    v11 = (8 * valuePtr) | 0x1E0;
    if (Value)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  if (get_device_parameters_spamCountDown >= 1)
  {
    --get_device_parameters_spamCountDown;
  }

  return &N53_RFC;
}

void compute_noise_model(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, float a6, float a7, float a8)
{
  v15 = 0.0;
  v16 = 1.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 1.0;
  v20 = 1.0;
  if (*(a3 + 124) > a4)
  {
    v21 = *(a3 + 128) + 96 * a4;
    v20 = scan_entries(*(v21 + 24), *(v21 + 16), a6);
    v19 = scan_entries(*(v21 + 8), *v21, a6);
    v16 = scan_entries(*(v21 + 40), *(v21 + 32), a6);
    v22 = *(v21 + 48);
    if (v22 >= 1)
    {
      v15 = scan_entries(*(v21 + 56), v22, a6);
    }

    v23 = *(v21 + 64);
    if (v23 >= 1)
    {
      v17 = scan_entries(*(v21 + 72), v23, a6);
    }

    v24 = *(v21 + 80);
    if (v24 < 1)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = scan_entries(*(v21 + 88), v24, a6);
    }
  }

  *(a2 + 24) = v16;
  *(a2 + 28) = v15;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  if (a5)
  {
    v25 = v20;
  }

  else
  {
    v25 = 1.0;
  }

  if (!a5)
  {
    v19 = 1.0;
  }

  v26 = ldexpf(1.0, -a4);
  v27 = -a4 / pow(a6, (v26 / *(a3 + 4)));
  v28 = exp2f(v27);
  v29 = (v19 * powf(a6, *a3)) * v28;
  v30 = (1.0 / sqrtf((1 << a4))) * 0.0039216;
  v31 = v30 * v29;
  *a2 = (v30 * v29) / *(a3 + 8);
  if (a6 <= 8.0)
  {
    v32 = v29 / *(a3 + 12);
  }

  else
  {
    v32 = v29 / (*(a3 + 12) + *(a3 + 12));
  }

  *(a2 + 4) = v32;
  *(a2 + 8) = v31;
  v33 = ~a4 / 1.9;
  v34 = ((a4 + 1) * (a4 + 1)) * powf(*(a3 + 20), v33);
  v35 = v30 * v25;
  v36 = a6 * a7;
  v37 = *(a3 + 16);
  *(a2 + 16) = v34 * (v35 * powf(v36, v37));
  *(a2 + 20) = v34 * (v35 * powf(a6 * a8, v37));
  if (!a4)
  {
    v39 = scan_entries((a3 + 40), *(a3 + 120), a6);
    if (v39 < 4.0)
    {
      *(a2 + 40) = a1 + 300;
      v38 = 1061997773;
      goto LABEL_23;
    }

    if (v39 >= 6.0)
    {
      *(a2 + 40) = a1 + 324;
      v38 = 1053609165;
      goto LABEL_23;
    }
  }

  *(a2 + 40) = a1 + 312;
  v38 = 1056964608;
LABEL_23:
  *(a2 + 48) = v38;
  *(a2 + 52) = 1056964608;
}

CVPixelBufferRef createYCC420CVPixelBufferRef(int a1, int a2, OSType a3)
{
  pixelBufferOut = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69662D0], *MEMORY[0x1E695E4D0]);
  v10 = CFDictionaryCreateMutable(v6, 0, v7, v8);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v10);
  CFRelease(v10);
  CVPixelBufferCreate(v6, a1, a2, a3, Mutable, &pixelBufferOut);
  CFRelease(Mutable);
  return pixelBufferOut;
}

uint64_t initialize_fusion_parameters(uint64_t result, int a2, double a3)
{
  v3 = 1.0;
  if (*&a3 > 1.0)
  {
    v3 = 0.0;
    if (*&a3 <= 10.0)
    {
      v3 = ((10.0 - *&a3) / 9.0);
    }
  }

  v4 = 0;
  v5 = v3 * 0.5 + 0.5;
  v6 = v5;
  v7 = 1.0 - v6 + v6 * 1.4;
  v47 = v7;
  v48 = 0x3F8CCCCD3F99999ALL;
  v49 = 1065353216;
  *&v6 = 1.0 - v6 + v6 * 1.3;
  v44 = LODWORD(v6);
  v45 = 0x3F8666663F8CCCCDLL;
  v46 = 1065353216;
  v8 = 0.0;
  v9 = ((10.0 - *&a3) / 9.0);
  if (*&a3 > 10.0)
  {
    v9 = 0.0;
  }

  if (*&a3 > 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v41 = vdup_n_s32(0x3ECCCCCDu);
  v11 = 0.2;
  v12 = 0.3;
  if (!a2)
  {
    v12 = 0.2;
    v11 = 0.1;
  }

  v42 = v12;
  v43 = v11;
  v13 = &v44;
  if (a2)
  {
    v13 = &v47;
  }

  if (*&a3 <= 10.0)
  {
    v8 = ((10.0 - *&a3) / 5.0);
  }

  if (*&a3 <= 5.0)
  {
    v8 = 1.0;
  }

  v14 = v8 * -0.299000012 + 0.300000012;
  *&v14 = v14;
  v15 = (v10 * 0.3 + 1.0) * 1.3;
  v16 = vdup_lane_s32(*&v14, 0);
  v17 = vdup_n_s32(*&a3 > 1.0);
  v18 = vdup_lane_s32(*&a3, 0);
  v19 = xmmword_1AD046360;
  __asm
  {
    FMOV            V5.2S, #10.0
    FMOV            V7.2D, #2.5
    FMOV            V16.2D, #3.0
    FMOV            V17.2D, #1.0
    FMOV            V18.2D, #0.5
  }

  v29 = vdup_n_s32(0x3A83126Fu);
  __asm { FMOV            V20.2S, #-1.0 }

  v31 = vdupq_n_s64(2uLL);
  do
  {
    v32 = (result + 48 + v4);
    v32[-4] = *&v13[v4 / 4];
    v33 = vceqzq_s64(v19);
    v34 = vmovn_s64(v33);
    v35 = vbsl_s8(v34, 0x4000000040000000, _D5);
    v32[-6] = vbsl_s8(v34, v16, v29);
    v32[-2] = qword_1AD056820[v4 / 8];
    v36 = vcge_f32(v35, v18);
    v37 = vand_s8(v17, v36);
    v38.i64[0] = v37.u32[0];
    v38.i64[1] = v37.u32[1];
    v39 = vcltzq_s64(vshlq_n_s64(v38, 0x3FuLL));
    v40 = vbic_s8(v17, v36);
    v38.i64[0] = v40.u32[0];
    v38.i64[1] = v40.u32[1];
    *v32 = vcvt_f32_f64(vmlaq_f64(vbslq_s8(v33, _Q18, _Q17), vandq_s8(vbslq_s8(v39, vcvtq_f64_f32(vdiv_f32(vsub_f32(v35, v18), vadd_f32(v35, _D20))), _Q17), vcgezq_s64(vshlq_n_s64(v38, 0x3FuLL))), vbslq_s8(v33, _Q16, _Q7)));
    v32[2] = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(qword_1AD056830[v4 / 8]), v15));
    v32[4] = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(&v41 + v4)), v15));
    v19 = vaddq_s64(v19, v31);
    v4 += 8;
  }

  while (v4 != 16);
  return result;
}

uint64_t fuse_remix_level(uint64_t a1, GLuint *a2, unsigned int a3, int a4, GLint a5, GLfloat a6)
{
  v11 = *a1;
  v67 = *(a1 + 160);
  v12 = (a1 + 88);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*(*(a1 + 88) + 8 * a3), 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(*v12 + 8 * a3), 0);
  v13 = CVPixelBufferGetWidthOfPlane(*(*v12 + 8 * a3), 1uLL);
  v14 = CVPixelBufferGetHeightOfPlane(*(*v12 + 8 * a3), 1uLL);
  IOSurface = CVPixelBufferGetIOSurface(*(a1 + 8 * a3 + 120));
  if (!IOSurface)
  {
    v18 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v16 = IOSurface;
  glActiveTexture(0x84C0u);
  v64 = a4;
  v17 = a1 + 4 * a3;
  if (a4)
  {
    glBindTexture(0xDE1u, *(v17 + 60));
    BYTE4(v58) = 0;
    v18 = 1;
    LODWORD(v58) = 1;
    if ([v11 texImageIOSurface:v16 target:3553 internalFormat:33323 width:v13 height:v14 format:33319 type:5121 plane:v58 invert:?])
    {
      v19 = 84;
      v20 = 60;
      goto LABEL_7;
    }

LABEL_39:
    fuse_remix_level_cold_5();
    return v18;
  }

  glBindTexture(0xDE1u, *(v17 + 44));
  BYTE4(v58) = 0;
  LODWORD(v58) = 0;
  if (([v11 texImageIOSurface:v16 target:3553 internalFormat:33321 width:WidthOfPlane height:HeightOfPlane format:6403 type:5121 plane:v58 invert:?] & 1) == 0)
  {
    v18 = 1;
    goto LABEL_39;
  }

  v19 = 76;
  v20 = 44;
LABEL_7:
  glBindFramebuffer(0x8D40u, *(a1 + v19));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + v20 + 4 * a3), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    return 0xFFFFFFFFLL;
  }

  v63 = v13;
  if (v67 < 1)
  {
    if (a3 < 3)
    {
LABEL_29:
      glActiveTexture(0x84D0u);
      v31 = 44;
      if (v64)
      {
        v31 = 60;
      }

      glBindTexture(0xDE1u, *(a1 + v31 + 4 * (a3 + 1)));
      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      glTexParameterf(0xDE1u, 0x2800u, 9729.0);
      glTexParameterf(0xDE1u, 0x2801u, 9729.0);
    }

LABEL_32:
    bindVertexAttributes(a2);
    if (v64)
    {
      v33 = v14;
      v32 = v63;
      glViewport(0, 0, v63, v14);
      v34 = 132;
    }

    else
    {
      v33 = HeightOfPlane;
      v32 = WidthOfPlane;
      glViewport(0, 0, WidthOfPlane, HeightOfPlane);
      v34 = 128;
    }

    glUseProgram(*a2);
    UniformLocation = glGetUniformLocation(*a2, "transform");
    glUniformMatrix3fv(UniformLocation, v67 - 1, 0, *(a1 + 216));
    v36 = glGetUniformLocation(*a2, "luma_sigma_intercept");
    v37 = (a1 + 56 * a3);
    glUniform1f(v36, v37[56]);
    v38 = glGetUniformLocation(*a2, "luma_sigma_slope");
    glUniform1f(v38, v37[57]);
    v39 = glGetUniformLocation(*a2, "luma_sigma_max");
    glUniform1f(v39, v37[58]);
    v40 = glGetUniformLocation(*a2, "luma_sigma_constant");
    glUniform1f(v40, v37[58]);
    v41 = glGetUniformLocation(*a2, "chroma_sigma_r");
    glUniform1f(v41, v37[60]);
    v42 = glGetUniformLocation(*a2, "chroma_sigma_b");
    glUniform1f(v42, v37[61]);
    v43 = glGetUniformLocation(*a2, "long_short_fusion");
    glUniform1i(v43, *(a1 + 164));
    v44 = glGetUniformLocation(*a2, "pixel_pitch");
    v45 = 1.0 / v32;
    v46 = 1.0 / v33;
    glUniform2f(v44, v45, v46);
    v47 = glGetUniformLocation(*a2, "compute_similarity_map");
    glUniform1i(v47, a5);
    v48 = glGetUniformLocation(*a2, "mismatch_coefficient");
    glUniform1f(v48, a6);
    v49 = glGetUniformLocation(*a2, "num_buffers");
    glUniform1i(v49, v67);
    v50 = glGetUniformLocation(*a2, "dc_value");
    glUniform3fv(v50, v67, (a1 + 168));
    v51 = glGetUniformLocation(*a2, "black_threshold");
    v52 = (a1 + 4 * a3);
    glUniform2f(v51, 0.0, v52[112]);
    v53 = glGetUniformLocation(*a2, "sharpening");
    glUniform1f(v53, v52[116]);
    v54 = glGetUniformLocation(*a2, "adaptive_blur");
    glUniform1f(v54, v52[120]);
    v55 = glGetUniformLocation(*a2, "diff_weight");
    glUniform1f(v55, v52[124]);
    v56 = glGetUniformLocation(*a2, "strength");
    glUniform1f(v56, v52[v34]);
    glDrawArrays(5u, 0, 4);
    glFlush();
    glGetError();
    return 0;
  }

  else
  {
    v21 = 0;
    v22 = 33992;
    while (1)
    {
      v23 = CVPixelBufferGetIOSurface(*(v12[v21] + 8 * a3));
      if (!v23)
      {
        goto LABEL_34;
      }

      v24 = v23;
      glActiveTexture(v22 - 8);
      glBindTexture(0xDE1u, *(*(a1 + 8) + 4 * v21));
      BYTE4(v59) = 0;
      LODWORD(v59) = 0;
      if (([v11 texImageIOSurface:v24 target:3553 internalFormat:33321 width:WidthOfPlane height:HeightOfPlane format:6403 type:5121 plane:v59 invert:?] & 1) == 0)
      {
        fuse_remix_level_cold_1();
        return 1;
      }

      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      v25 = ((v21 == 0) & (v64 ^ 1)) != 0 ? 9728.0 : 9729.0;
      glTexParameterf(0xDE1u, 0x2800u, v25);
      glTexParameterf(0xDE1u, 0x2801u, v25);
      glActiveTexture(v22);
      glBindTexture(0xDE1u, *(*(a1 + 16) + 4 * v21));
      BYTE4(v60) = 0;
      LODWORD(v60) = 1;
      if (([v11 texImageIOSurface:v24 target:3553 internalFormat:33323 width:v13 height:v14 format:33319 type:5121 plane:v60 invert:?] & 1) == 0)
      {
        break;
      }

      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      if (((v21 == 0) & v64) != 0)
      {
        v26 = 9728.0;
      }

      else
      {
        v26 = 9729.0;
      }

      glTexParameterf(0xDE1u, 0x2800u, v26);
      glTexParameterf(0xDE1u, 0x2801u, v26);
      ++v21;
      ++v22;
      if (v67 == v21)
      {
        if (a3 >= 3)
        {
          goto LABEL_32;
        }

        v27 = 0;
        v28 = 33996;
        while (1)
        {
          v29 = CVPixelBufferGetIOSurface(*(v12[v27] + 8 * a3 + 8));
          if (!v29)
          {
            break;
          }

          v30 = v29;
          glActiveTexture(v28 - 8);
          glBindTexture(0xDE1u, *(*(a1 + 24) + 4 * v27));
          BYTE4(v59) = 0;
          LODWORD(v59) = 0;
          if (([v11 texImageIOSurface:v30 target:3553 internalFormat:33321 width:(WidthOfPlane / 2) height:(HeightOfPlane / 2) format:6403 type:5121 plane:v59 invert:?] & 1) == 0)
          {
            fuse_remix_level_cold_3();
            return 1;
          }

          glTexParameterf(0xDE1u, 0x2802u, 33648.0);
          glTexParameterf(0xDE1u, 0x2803u, 33648.0);
          glTexParameterf(0xDE1u, 0x2800u, 9729.0);
          glTexParameterf(0xDE1u, 0x2801u, 9729.0);
          glActiveTexture(v28);
          glBindTexture(0xDE1u, *(*(a1 + 32) + 4 * v27));
          BYTE4(v61) = 0;
          LODWORD(v61) = 1;
          if (([v11 texImageIOSurface:v30 target:3553 internalFormat:33323 width:(v13 / 2) height:(v14 / 2) format:33319 type:5121 plane:v61 invert:?] & 1) == 0)
          {
            fuse_remix_level_cold_4();
            return 1;
          }

          glTexParameterf(0xDE1u, 0x2802u, 33648.0);
          glTexParameterf(0xDE1u, 0x2803u, 33648.0);
          glTexParameterf(0xDE1u, 0x2800u, 9729.0);
          glTexParameterf(0xDE1u, 0x2801u, 9729.0);
          ++v27;
          ++v28;
          if (v67 == v27)
          {
            goto LABEL_29;
          }
        }

LABEL_34:
        fig_log_get_emitter();
        v18 = 0xFFFFFFFFLL;
        FigDebugAssert3();
        return v18;
      }
    }

    fuse_remix_level_cold_2();
    return 1;
  }
}

uint64_t compute_mismatch_coefficient(uint64_t a1, float *a2, float a3)
{
  *a2 = 0.0;
  v6 = *(a1 + 144);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v6, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v6, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v6, 0);
  if (CVPixelBufferLockBaseAddress(v6, 1uLL))
  {
    compute_mismatch_coefficient_cold_1();
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 152);
  if (v9 && CVPixelBufferCopyPlane(v9, v6))
  {
    compute_mismatch_coefficient_cold_2();
    return 0xFFFFFFFFLL;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v6, 0);
  v11 = 0;
  if (*(a1 + 164) == 1)
  {
    v11 = malloc_type_malloc((WidthOfPlane * HeightOfPlane), 0x1D063B8EuLL);
    src.data = BaseAddressOfPlane;
    src.height = HeightOfPlane;
    src.width = WidthOfPlane;
    src.rowBytes = BytesPerRowOfPlane;
    dest.data = v11;
    dest.height = HeightOfPlane;
    dest.width = WidthOfPlane;
    dest.rowBytes = WidthOfPlane;
    vImageMax_Planar8(&src, &dest, 0, 0, 0, 3uLL, 3uLL, 0);
    src.data = v11;
    src.height = HeightOfPlane;
    src.width = WidthOfPlane;
    src.rowBytes = WidthOfPlane;
    dest.data = BaseAddressOfPlane;
    dest.height = HeightOfPlane;
    dest.width = WidthOfPlane;
    dest.rowBytes = BytesPerRowOfPlane;
    vImageMin_Planar8(&src, &dest, 0, 0, 0, 3uLL, 3uLL, 0);
  }

  if (HeightOfPlane < 1)
  {
    v17 = 0.0;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = WidthOfPlane & 0x7FFFFFFF;
      v15 = BaseAddressOfPlane;
      if (WidthOfPlane >= 1)
      {
        do
        {
          v16 = *v15++;
          v13 += v16;
          --v14;
        }

        while (v14);
      }

      ++v12;
      BaseAddressOfPlane += BytesPerRowOfPlane;
    }

    while (v12 != (HeightOfPlane & 0x7FFFFFFF));
    v17 = v13;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  free(v11);
LABEL_13:
  if (*(a1 + 164) == 1)
  {
    v19 = (a3 + -10.0) / 10.0;
    v20 = 1.0;
    if (v19 <= 1.0)
    {
      v20 = (a3 + -10.0) / 10.0;
    }

    _NF = v19 < 0.0;
    v22 = 0.0;
    if (!_NF)
    {
      v22 = v20;
    }

    v23 = (v22 * -2.0 + 3.0) * (v22 * v22);
    __asm { FMOV            V2.2D, #1.0 }

    _Q1 = vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(xmmword_1AD056800, v23), _Q2)));
  }

  else
  {
    __asm { FMOV            V1.2D, #1.0 }
  }

  v29 = vcvt_f32_f64(vdivq_f64(xmmword_1AD056810, _Q1));
  v18 = v17 / (HeightOfPlane * 255.0 * WidthOfPlane);
  v30 = (v18 - v29.f32[0]) / vsub_f32(vdup_lane_s32(v29, 1), v29).f32[0];
  v31 = 1.0;
  if (v30 <= 1.0)
  {
    v31 = v30;
  }

  _NF = v30 < 0.0;
  v32 = 0.0;
  if (!_NF)
  {
    v32 = v31;
  }

  v33 = (v32 * -2.0 + 3.0) * (v32 * v32);
  v34 = 1.0 - v33;
  v35 = 0.0;
  if (a3 <= 20.0)
  {
    v35 = ((20.0 - a3) / 10.0);
  }

  if (a3 > 10.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 1.0;
  }

  v37 = v34 * (1.0 - v36);
  *a2 = v37;
  CVPixelBufferUnlockBaseAddress(v6, 1uLL);
  return 0;
}

uint64_t BindTextureToFbo(void *a1, IOSurfaceRef buffer, GLuint a3, GLuint a4, unsigned int a5, size_t planeIndex)
{
  v6 = planeIndex;
  if (planeIndex == 1 || a5 == 33319)
  {
    v13 = 2;
  }

  else
  {
    v13 = 4;
  }

  if (a5 == 33319)
  {
    v14 = 33323;
  }

  else
  {
    v14 = 6408;
  }

  v15 = planeIndex;
  WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, planeIndex);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(buffer, v15);
  glBindTexture(0xDE1u, a3);
  BYTE4(v21) = 0;
  LODWORD(v21) = v6;
  v18 = [a1 texImageIOSurface:buffer target:3553 internalFormat:v14 width:(WidthOfPlane / v13) height:HeightOfPlane format:a5 type:5121 plane:v21 invert:?];
  v19 = v18 ^ 1u;
  if (v18)
  {
    if (a4)
    {
      glBindFramebuffer(0x8D40u, a4);
      glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, a3, 0);
      if (glCheckFramebufferStatus(0x8D40u) == 36053)
      {
        return v19;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    BindTextureToFbo_cold_1();
  }

  return v19;
}

void denoise_luma_level(uint64_t a1, GLuint a2, uint64_t a3, GLuint a4, unsigned int a5)
{
  glActiveTexture(0x84C0u);
  v10 = a5;
  glBindTexture(0xDE1u, *(a1 + 4 * a5 + 84));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  if (a4)
  {
    glActiveTexture(0x84C1u);
    glBindTexture(0xDE1u, a4);
    glTexParameterf(0xDE1u, 0x2802u, 33648.0);
    glTexParameterf(0xDE1u, 0x2803u, 33648.0);
    glTexParameterf(0xDE1u, 0x2800u, 9729.0);
    glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  }

  glBindFramebuffer(0x8D40u, a2);
  bindVertexAttributes(a1 + 396);
  v11 = a1 + 8 * a5;
  v12 = CVPixelBufferGetWidthOfPlane(*(v11 + 232), 0) / 2;
  LODWORD(v11) = CVPixelBufferGetHeightOfPlane(*(v11 + 232), 0);
  glViewport(0, 0, v12, v11);
  glUseProgram(*(a1 + 396));
  UniformLocation = glGetUniformLocation(*(a1 + 396), "luma_sigma_intercept");
  v14 = (a3 + 56 * v10);
  glUniform1f(UniformLocation, *v14);
  v15 = glGetUniformLocation(*(a1 + 396), "luma_sigma_slope");
  glUniform1f(v15, v14[1]);
  v16 = glGetUniformLocation(*(a1 + 396), "luma_sigma_max");
  glUniform1f(v16, v14[2]);
  v17 = glGetUniformLocation(*(a1 + 396), "lens_shading_factor");
  glUniform1f(v17, 0.0);
  v18 = glGetUniformLocation(*(a1 + 396), "pixel_pitch");
  glUniform2f(v18, 1.0 / v12, 1.0 / v11);
  v19 = glGetUniformLocation(*(a1 + 396), "use_alpha");
  glUniform1i(v19, a4 != 0);
  glDrawArrays(5u, 0, 4);

  glFlush();
}

uint64_t CVPixelBufferCopyPlane(__CVBuffer *a1, CVPixelBufferRef pixelBuffer)
{
  if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    return 0xFFFFFFFFLL;
  }

  if (CVPixelBufferLockBaseAddress(a1, 0))
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    v8 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    v10 = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
    if (HeightOfPlane >= 1)
    {
      v11 = v10;
      v12 = HeightOfPlane & 0x7FFFFFFF;
      do
      {
        memcpy(v11, BaseAddressOfPlane, WidthOfPlane);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v11 += v8;
        --v12;
      }

      while (v12);
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
    v4 = 0;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return v4;
}

void multibandNoiseReductionFinalize(const __CFDictionary *a1)
{
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, 0, 0);
  glBindFramebuffer(0x8D40u, 0);
  glBindTexture(0xDE1u, 0);
  valuePtr = 1;
  if (a1 && (Value = CFDictionaryGetValue(a1, @"Synchronization")) != 0 && (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr), valuePtr != 1))
  {
    glFinish();
  }

  else
  {
    glFlush();
  }
}

uint64_t handle_band_data(const void *a1, int *a2, uint64_t *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      handle_band_data_cold_2();
    }

    else
    {
      *a2 = Count >> 1;
      v8 = *a3;
      if (!*a3)
      {
        return 0;
      }

      if (Count >> 1 < 1)
      {
LABEL_11:
        result = 0;
        *a3 = v8;
        return result;
      }

      v9 = 0;
      v10 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 1);
        if (!ValueAtIndex || (v12 = ValueAtIndex, v13 = CFGetTypeID(ValueAtIndex), v13 != CFNumberGetTypeID()))
        {
          handle_band_data_cold_4();
          return 0xFFFFFFFFLL;
        }

        CFNumberGetValue(v12, kCFNumberFloatType, v8);
        v14 = CFArrayGetValueAtIndex(a1, v10);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = CFGetTypeID(v14);
        if (v16 != CFNumberGetTypeID())
        {
          break;
        }

        CFNumberGetValue(v15, kCFNumberFloatType, (v8 + 4));
        ++v9;
        v8 += 8;
        v10 += 2;
        if (v9 >= *a2)
        {
          goto LABEL_11;
        }
      }

      handle_band_data_cold_3();
    }
  }

  else
  {
    handle_band_data_cold_1();
  }

  return 0xFFFFFFFFLL;
}

const __CFDictionary *band_iterator(const __CFDictionary *cf, uint64_t a2)
{
  v3 = *(a2 + 24);
  v16 = v3;
  if (*a2)
  {
    goto LABEL_2;
  }

  v4 = cf;
  if (!cf || (v5 = *(a2 + 8), v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    cf = band_iterator_cold_8();
    goto LABEL_2;
  }

  Value = CFDictionaryGetValue(v4, @"LumaDenoiseStrength");
  *(v5 + 8) = v3;
  if (handle_band_data(Value, v5, &v16))
  {
    cf = band_iterator_cold_1();
    goto LABEL_2;
  }

  *(v5 + 24) = v16;
  v8 = CFDictionaryGetValue(v4, @"ChromaDenoiseStrength");
  if (handle_band_data(v8, (v5 + 16), &v16))
  {
    cf = band_iterator_cold_2();
    goto LABEL_2;
  }

  *(v5 + 40) = v16;
  v9 = CFDictionaryGetValue(v4, @"LumaRemixWeight");
  if (handle_band_data(v9, (v5 + 32), &v16))
  {
    cf = band_iterator_cold_3();
    goto LABEL_2;
  }

  v10 = v16;
  *(v5 + 56) = v16;
  v11 = CFDictionaryGetValue(v4, @"BlueBoost");
  if (v11)
  {
    if (handle_band_data(v11, (v5 + 48), &v16))
    {
      cf = band_iterator_cold_4();
      goto LABEL_2;
    }

    v10 = v16;
  }

  else
  {
    *(v5 + 48) = 0;
  }

  *(v5 + 72) = v10;
  v12 = CFDictionaryGetValue(v4, @"FlatnessBoost");
  if (v12)
  {
    if (handle_band_data(v12, (v5 + 64), &v16))
    {
      cf = band_iterator_cold_5();
      goto LABEL_2;
    }

    v10 = v16;
  }

  else
  {
    *(v5 + 64) = 0;
  }

  *(v5 + 88) = v10;
  cf = CFDictionaryGetValue(v4, @"FlatnessThreshold");
  if (cf)
  {
    cf = handle_band_data(cf, (v5 + 80), &v16);
    if (cf)
    {
      cf = band_iterator_cold_6();
      goto LABEL_2;
    }

    v13 = *(v5 + 80);
  }

  else
  {
    v13 = 0;
    *(v5 + 80) = 0;
  }

  v14 = *(v5 + 16) + *v5 + *(v5 + 32) + *(v5 + 48) + *(v5 + 64) + v13;
  v15 = *(a2 + 24);
  if (v15)
  {
    if (v14 == (v16 - v15) >> 3)
    {
      *(a2 + 24) = v16;
      goto LABEL_23;
    }

    cf = band_iterator_cold_7();
LABEL_2:
    *a2 = -1;
    return cf;
  }

LABEL_23:
  *(a2 + 16) += v14;
  *(a2 + 8) += 96;
  return cf;
}

uint64_t multiBandNoiseReductionContextInit_internal(uint64_t a1, void *a2, CFDictionaryRef theDict)
{
  AlgorithmFromTuningOptions = noiseReductionGetAlgorithmFromTuningOptions(theDict);
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  if (IOSurfaceAcceleratorCreate())
  {
    if (*v6)
    {
      CFRelease(*v6);
    }

    LOBYTE(v7) = 0;
    *v6 = 0;
  }

  else
  {
    FigSetupIOSurfaceAccelerator(a1 + 24);
    v7 = *(a1 + 16);
    if (v7)
    {
      LOBYTE(v7) = *(a1 + 28) >= 7u && *(a1 + 24) > 6u;
    }
  }

  v18 = 0;
  *(a1 + 296) = v7;
  *(a1 + 297) = 1;
  *(a1 + 298) = a2 == 0;
  if (a2)
  {
    goto LABEL_6;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  params = 1;
  if (!v9)
  {
    multiBandNoiseReductionContextInit_internal_cold_2();
    goto LABEL_16;
  }

  v10 = v9;
  [v9 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6977FF0]];
  a2 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:3 properties:v10];

  if (!a2)
  {
    multiBandNoiseReductionContextInit_internal_cold_1();
    goto LABEL_16;
  }

  if ([a2 setParameter:608 to:&params])
  {

LABEL_16:
    *(a1 + 48) = 0;
    result = [MEMORY[0x1E6977FE8] setCurrentContext:0];
    *a1 = 2;
    return result;
  }

LABEL_6:
  *(a1 + 48) = a2;
  [MEMORY[0x1E6977FE8] setCurrentContext:a2];
  v8 = *(a1 + 56);
  if (v8 != 1)
  {
    if (v8)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  v18 = v8;
  [*(a1 + 48) setParameter:608 to:&v18];
  glGetIntegerv(0xD33u, &params);
  v12 = params;
  *(a1 + 60) = params;
  *(a1 + 64) = v12;
  glGetIntegerv(0x84E8u, &params);
  v13 = params;
  if (*(a1 + 60) < params)
  {
    *(a1 + 60) = params;
  }

  if (*(a1 + 64) < v13)
  {
    *(a1 + 64) = v13;
  }

  glGetIntegerv(0xD3Au, &params);
  if (*(a1 + 60) < params)
  {
    *(a1 + 60) = params;
  }

  if (*(a1 + 64) < v20)
  {
    *(a1 + 64) = v20;
  }

  *(a1 + 68) = -1;
  *(a1 + 80) = -1;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  glGenTextures(4, (a1 + 84));
  glGenTextures(4, (a1 + 124));
  glGenTextures(4, (a1 + 168));
  glGenTextures(4, (a1 + 200));
  glGenTextures(2, (a1 + 116));
  glGenTextures(2, (a1 + 156));
  glGenFramebuffers(4, (a1 + 100));
  glGenFramebuffers(4, (a1 + 184));
  glGenFramebuffers(4, (a1 + 216));
  glGenFramebuffers(4, (a1 + 140));
  glGenFramebuffers(1, (a1 + 164));
  compile_shader((a1 + 300), NoiseReductionBoxBlur334_prog);
  compile_shader((a1 + 312), NoiseReductionBoxBlur554_prog);
  compile_shader((a1 + 324), NoiseReductionBoxBlur774_prog);
  compile_shader((a1 + 336), NoiseReductionBoxBlur2_554_prog);
  compile_shader((a1 + 348), NoiseReductionChromaDenoiseX2_prog);
  v14 = AlgorithmFromTuningOptions == 3;
  if (AlgorithmFromTuningOptions == 3)
  {
    v15 = NoiseReductionLumaRemix4Advanced_prog;
  }

  else
  {
    v15 = NoiseReductionLumaRemix4_prog;
  }

  if (AlgorithmFromTuningOptions == 3)
  {
    v16 = NoiseReductionLumaDenoiseChromaRemixX2Advanced_prog;
  }

  else
  {
    v16 = NoiseReductionLumaDenoiseChromaRemixX2_prog;
  }

  if (v14)
  {
    v17 = NoiseReductionLumaChromaRemixDenoiseX2Advanced_prog;
  }

  else
  {
    v17 = NoiseReductionLumaChromaRemixDenoiseX2_prog;
  }

  compile_shader((a1 + 360), v15);
  compile_shader((a1 + 372), v16);
  compile_shader((a1 + 384), v17);
  compile_shader((a1 + 396), NoiseReductionLumaDenoiseX2_prog);
  compile_shader((a1 + 408), NoiseReductionLumaFusion_prog);
  compile_shader((a1 + 420), NoiseReductionLumaRemixFusion_prog);
  compile_shader((a1 + 432), NoiseReductionChromaFusion_prog);
  compile_shader((a1 + 444), NoiseReductionChromaRemixFusion_prog);
  glUseProgram(0);
  return [MEMORY[0x1E6977FE8] setCurrentContext:0];
}