@interface FigCaptureImageMotionDetector
- ($5D018791884760D46230C39DEE7E58E3)motionStatistics;
- (FigCaptureImageMotionDetector)init;
- (FigCaptureImageMotionDetector)initWithWidth:(int)width height:(int)height maximumSearchRange:(int)range frameRingSize:(int)size;
- (int)setCentralROIAndGetRect:(CGRect *)rect;
- (int)setRoi:(CGRect)roi actualROI:(CGRect *)i;
- (uint64_t)_allocateArrays:(int)arrays height:(size_t)count frameRingSize:;
- (uint64_t)_computeStatistics;
- (uint64_t)processPixelBuffer:(void *)buffer metadataDictionary:;
- (void)_freeAllocatedArrays;
- (void)dealloc;
- (void)resetProcessingState;
@end

@implementation FigCaptureImageMotionDetector

- (FigCaptureImageMotionDetector)init
{
  v6.receiver = self;
  v6.super_class = FigCaptureImageMotionDetector;
  v2 = [(FigCaptureImageMotionDetector *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 5) = 0;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 12) = 0;
    v4 = *(MEMORY[0x1E695F058] + 16);
    *(v2 + 7) = *MEMORY[0x1E695F058];
    *(v2 + 8) = v4;
    *(v2 + 18) = 1065017672;
    [v2 resetProcessingState];
  }

  return v3;
}

- (FigCaptureImageMotionDetector)initWithWidth:(int)width height:(int)height maximumSearchRange:(int)range frameRingSize:(int)size
{
  selfCopy = self;
  if (width < 2 || height <= 1)
  {
    [FigCaptureImageMotionDetector initWithWidth:height:maximumSearchRange:frameRingSize:];
    goto LABEL_12;
  }

  if (range < 0)
  {
    [FigCaptureImageMotionDetector initWithWidth:height:maximumSearchRange:frameRingSize:];
    goto LABEL_12;
  }

  v9 = *&size;
  v11 = [(FigCaptureImageMotionDetector *)self init];
  selfCopy = v11;
  if (v11)
  {
    v11->_width = width;
    v11->_height = height;
    v11->_maximumSearchRange = range;
    if ([(FigCaptureImageMotionDetector *)v11 _allocateArrays:width height:height frameRingSize:v9])
    {
      [FigCaptureImageMotionDetector initWithWidth:height:maximumSearchRange:frameRingSize:];
    }

    else
    {
      if (![(FigCaptureImageMotionDetector *)selfCopy setCentralROIAndGetRect:0])
      {
        goto LABEL_5;
      }

      [FigCaptureImageMotionDetector initWithWidth:height:maximumSearchRange:frameRingSize:];
    }

LABEL_12:
    v12 = 0;
    goto LABEL_6;
  }

LABEL_5:
  selfCopy = selfCopy;
  v12 = selfCopy;
LABEL_6:

  return v12;
}

- (int)setRoi:(CGRect)roi actualROI:(CGRect *)i
{
  if (self->_imgProj.count)
  {
    [FigCaptureImageMotionDetector setRoi:actualROI:];
    return -12782;
  }

  v6 = pixelSumComputeCompatibleROI(self->_width, roi.origin.x);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  pixelSumComputeCompatibleROI(self->_width, 0.0);
  v15 = (2 * self->_maximumSearchRange) | 1;
  if (v15 < v12)
  {
    if (v15 < v10)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v16 = (v15 + v14 - 1) / v14 * v14;
  v17 = ((v8 + v12 * 0.5) - v16 / 2) & ~(((v8 + v12 * 0.5) - v16 / 2) >> 31);
  if (v17 >= self->_height + ~v16)
  {
    v17 = self->_height + ~v16;
  }

  v8 = v17;
  v12 = v16;
  if (v15 >= v10)
  {
LABEL_9:
    v19 = v13;
    v20 = (v15 + v19 - 1) / v19 * v19;
    v21 = ((v6 + v10 * 0.5) - v20 / 2) & ~(((v6 + v10 * 0.5) - v20 / 2) >> 31);
    width = self->_width;
    if (v21 + v20 > width)
    {
      v21 = (width + ~v20) / v19 * v19;
    }

    v6 = v21;
    v10 = v20;
    goto LABEL_12;
  }

  width = self->_width;
LABEL_12:
  v22 = pixelSumComputeCompatibleROI(width, v6);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  v31.origin.x = v22;
  v31.origin.y = v24;
  v31.size.width = v26;
  v31.size.height = v28;
  if (!CGRectEqualToRect(v30, v31))
  {
    [FigCaptureImageMotionDetector setRoi:actualROI:];
    return -12782;
  }

  v15 = (2 * self->_maximumSearchRange) | 1;
  v12 = v28;
  v10 = v26;
  v8 = v24;
  v6 = v22;
LABEL_14:
  if (v15 >= v12)
  {
    [FigCaptureImageMotionDetector setRoi:actualROI:];
    return -12782;
  }

  if (v15 >= v10)
  {
    [FigCaptureImageMotionDetector setRoi:actualROI:];
    return -12782;
  }

  if (i)
  {
    i->origin.x = v6;
    i->origin.y = v8;
    i->size.width = v10;
    i->size.height = v12;
  }

  result = 0;
  self->_sumROI.origin.x = v6;
  self->_sumROI.origin.y = v8;
  self->_sumROI.size.width = v10;
  self->_sumROI.size.height = v12;
  self->_rowSumLength = v12;
  self->_colSumLength = v10;
  return result;
}

- (int)setCentralROIAndGetRect:(CGRect *)rect
{
  v3 = [(FigCaptureImageMotionDetector *)self setRoi:rect actualROI:pixelSumComputeCompatibleROI(self->_width, vcvts_n_f32_s32(self->_width, 2uLL))];
  if (v3)
  {
    [FigCaptureImageMotionDetector setCentralROIAndGetRect:];
  }

  return v3;
}

- (void)resetProcessingState
{
  *&self->_imgProj.curIdx = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *self->_motionStatistics.crossCorrelationMaximum = _D0;
  v7 = MEMORY[0x1E695F058];
  *self->_motionStatistics.maxCorrelationShift = 0;
  *&self->_motionStatistics.frameRingBufferCount = 0;
  v8 = *(v7 + 16);
  self->_motionStatistics.roi.origin = *v7;
  self->_motionStatistics.roi.size = v8;
  *&self->_motionStatistics.isMotionDetected = 0;
}

- (void)dealloc
{
  [(FigCaptureImageMotionDetector *)self _freeAllocatedArrays];
  v3.receiver = self;
  v3.super_class = FigCaptureImageMotionDetector;
  [(FigCaptureImageMotionDetector *)&v3 dealloc];
}

- ($5D018791884760D46230C39DEE7E58E3)motionStatistics
{
  size = self[2].var4.size;
  *retstr->var0 = self[2].var4.origin;
  *&retstr->var2 = size;
  v4 = *self[3].var1;
  *&retstr->var4.origin.y = *&self[2].var5;
  *&retstr->var4.size.height = v4;
  return self;
}

- (uint64_t)_allocateArrays:(int)arrays height:(size_t)count frameRingSize:
{
  if (result)
  {
    v6 = result;
    *(result + 88) = 0;
    *(result + 92) = arrays;
    *(result + 96) = 0;
    *(result + 100) = a2;
    *(result + 56) = count;
    v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
    *(v6 + 32) = v7;
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = malloc_type_calloc(*(v6 + 56), 8uLL, 0x80040B8603338uLL);
    *(v6 + 40) = v8;
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = 8 * arrays;
    v10 = 8 * a2;
    if (*(v6 + 56))
    {
      v11 = 0;
      do
      {
        *(*(v6 + 32) + 8 * v11) = malloc_type_malloc(v9, 0x100004000313F17uLL);
        if (!*(*(v6 + 32) + 8 * v11))
        {
          goto LABEL_19;
        }

        *(*(v6 + 40) + 8 * v11) = malloc_type_malloc(v10, 0x100004000313F17uLL);
        if (!*(*(v6 + 40) + 8 * v11))
        {
          goto LABEL_19;
        }
      }

      while (++v11 < *(v6 + 56));
    }

    v12 = v10 <= v9 ? 8 * arrays : 8 * a2;
    v13 = v12;
    *(v6 + 64) = malloc_type_malloc(v12, 0x100004000313F17uLL);
    v14 = malloc_type_malloc(v13, 0x100004000313F17uLL);
    *(v6 + 72) = v14;
    if (!*(v6 + 64) || !v14 || (v15 = malloc_type_malloc((16 * *(v6 + 148)) | 8, 0x100004000313F17uLL), (*(v6 + 80) = v15) == 0) || (v16 = 4 * *(v6 + 100), *(v6 + 16) = malloc_type_malloc(4 * *(v6 + 92), 0x100004052888210uLL), v17 = malloc_type_malloc(v16, 0x100004052888210uLL), *(v6 + 24) = v17, !*(v6 + 16)) || !v17)
    {
LABEL_19:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3();
      return 4294954510;
    }

    return 0;
  }

  return result;
}

- (uint64_t)processPixelBuffer:(void *)buffer metadataDictionary:
{
  bufferCopy = buffer;
  if (!self)
  {
    v39 = 0;
    goto LABEL_24;
  }

  v43 = *(self + 52);
  if (!a2 || (Width = CVPixelBufferGetWidth(a2), Height = CVPixelBufferGetHeight(a2), *(self + 8) != Width) || *(self + 12) != Height)
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_4_78();
    FigDebugAssert3();
    OUTLINED_FUNCTION_9_1();
    v39 = FigSignalErrorAtGM();
    if (v39)
    {
LABEL_34:
      *(self + 52) = v43;
      *(self + 209) = 0;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (pixelSumForROI(a2, *(self + 16), *(self + 24), *(self + 112), *(self + 120), *(self + 128), *(self + 136)))
  {
    v8 = *(self + 24);
    if (v8 && (v9 = *(self + 16)) != 0 && (v10 = *(self + 88), v10 > 0) && (v11 = *(self + 96), v11 > 0))
    {
      v13 = *(self + 112);
      v12 = *(self + 120);
      v14 = CVPixelBufferLockBaseAddress(a2, 1uLL);
      if (v14)
      {
        v39 = v14;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_7_62();
        OUTLINED_FUNCTION_1_8();
        FigDebugAssert3();
      }

      else
      {
        v15 = OUTLINED_FUNCTION_2_2();
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(v15, v16);
        v18 = OUTLINED_FUNCTION_2_2();
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v18, v19);
        if (v11 + v13 > WidthOfPlane || v10 + v12 > HeightOfPlane)
        {
          OUTLINED_FUNCTION_11_44();
          OUTLINED_FUNCTION_7_62();
          OUTLINED_FUNCTION_10_46();
          FigDebugAssert3();
          OUTLINED_FUNCTION_11_44();
          v39 = FigSignalErrorAtGM();
        }

        else
        {
          v21 = OUTLINED_FUNCTION_2_2();
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v21, v22);
          pixelBuffer = a2;
          v24 = OUTLINED_FUNCTION_2_2();
          v26 = bufferCopy;
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v24, v25);
          bzero(v8, 4 * v11);
          bzero(v9, 4 * v10);
          v28 = 0;
          v29 = v11 & 0x7FFFFFFC;
          v30 = &BaseAddressOfPlane[v13 + BytesPerRowOfPlane * v12];
          bufferCopy = v26;
          v31 = v30 + 3;
          do
          {
            if (v29)
            {
              v32 = 0;
              v33 = v8 + 2;
              do
              {
                v34 = *(v9 + v28) + v31[v32 - 3];
                *(v9 + v28) = v34;
                v35 = v34 + v31[v32 - 2];
                *(v9 + v28) = v35;
                v36 = v35 + v31[v32 - 1];
                *(v9 + v28) = v36;
                *(v9 + v28) = v36 + v31[v32];
                v37 = *(v33 - 1);
                *(v33 - 2) += v31[v32 - 3];
                *(v33 - 1) = v37 + v31[v32 - 2];
                v38 = v33[1];
                *v33 += v31[v32 - 1];
                v33[1] = v38 + v31[v32];
                v32 += 4;
                v33 += 4;
              }

              while (v32 < v29);
            }

            ++v28;
            v31 += BytesPerRowOfPlane;
          }

          while (v28 != v10);
          v39 = 0;
          a2 = pixelBuffer;
        }

        CVPixelBufferUnlockBaseAddress(a2, 1uLL);
        if (!v39)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_2_101();
      FigDebugAssert3();
      OUTLINED_FUNCTION_9_1();
      v39 = FigSignalErrorAtGM();
      if (!v39)
      {
        goto LABEL_20;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_62();
    OUTLINED_FUNCTION_1_8();
    goto LABEL_33;
  }

LABEL_20:
  vDSP_vflt32D(*(self + 16), 1, *(*(self + 32) + 8 * *(self + 48)), 1, *(self + 88));
  vDSP_vflt32D(*(self + 24), 1, *(*(self + 40) + 8 * *(self + 48)), 1, *(self + 96));
  v40 = *(self + 52);
  if (v40 < *(self + 56))
  {
    *(self + 52) = ++v40;
  }

  if (v40 >= 2)
  {
    _computeStatistics = [(FigCaptureImageMotionDetector *)self _computeStatistics];
    if (_computeStatistics)
    {
      v39 = _computeStatistics;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_62();
      OUTLINED_FUNCTION_1_8();
LABEL_33:
      FigDebugAssert3();
      goto LABEL_34;
    }
  }

LABEL_23:
  v39 = 0;
  *(self + 48) = (*(self + 48) + 1) % *(self + 56);
LABEL_24:

  return v39;
}

- (uint64_t)_computeStatistics
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 52);
  if (v2 <= 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
    result = 4294954514;
    goto LABEL_38;
  }

  v3 = 0;
  v4 = *(result + 48);
  v5 = (v4 + 1) % v2;
  v7 = *(result + 32);
  v6 = *(result + 40);
  v8 = *(v6 + 8 * v5);
  v46 = v5;
  v53 = *(v7 + 8 * v5);
  v9 = *(v6 + 8 * v4);
  v47 = *(result + 48);
  v52 = *(v7 + 8 * v4);
  v50 = result + 160;
  v51 = result + 152;
  v10 = 1;
  v11 = *(result + 96);
  v49 = *(result + 88);
  v12 = *(result + 148);
  v13 = *(result + 80);
  v48 = result;
  while (1)
  {
    if (!v9 || !v8 || (v14 = *(v1 + 72)) == 0 || !v13)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_88();
      FigDebugAssert3();
      v45 = 4294954516;
      goto LABEL_37;
    }

    v15 = v10;
    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    v17 = 0;
LABEL_31:
    v10 = 0;
    v29 = *(v13 + 8 * v17);
    *(v51 + 4 * v3) = v29;
    *(v50 + 4 * v3) = v17 - v12;
    v11 = v49;
    v9 = v52;
    v8 = v53;
    v3 = 1;
    if ((v15 & 1) == 0)
    {
      v30 = *(v1 + 144);
      v31 = *(v1 + 152) < v30 || *(v1 + 156) < v30;
      result = 0;
      v32 = *(v1 + 128);
      *(v1 + 176) = *(v1 + 112);
      *(v1 + 192) = v32;
      v33 = *(v1 + 8);
      v34.i64[0] = v33;
      v34.i64[1] = SHIDWORD(v33);
      v35 = vcvtq_f64_s64(v34);
      __asm { FMOV            V1.2D, #-1.0 }

      v40 = *(v1 + 192);
      v41 = vdivq_f64(*(v1 + 176), vaddq_f64(v35, _Q1));
      *(v1 + 208) = v31;
      v42 = *(v1 + 52);
      *(v1 + 176) = v41;
      *(v1 + 192) = vdivq_f64(v40, v35);
      *(v1 + 168) = v42;
      *(v1 + 172) = (v47 - v46 + v42) % v42;
      goto LABEL_38;
    }
  }

  v54 = v10;
  v55 = v3;
  v16 = 0;
  v17 = 0;
  v18 = *(v1 + 64);
  v19 = (v9 + 8 * v12 - 8 * v12);
  v20 = -100.0;
  v21 = v11 - 2 * v12;
  v22 = (v8 + 8 * v12);
  v23 = (2 * v12) | 1;
  v24 = -v12;
  while (1)
  {
    if (v24 + v16 < v24 || v21 <= 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_71();
      FigDebugAssert3();
      fig_log_get_emitter();
      v27 = FigSignalErrorAtGM();
      v25 = 0.0;
      if (v27)
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }

    if (v18)
    {
      v59 = 0.0;
      __Mean[0] = 0.0;
      v57 = 0.0;
      __StandardDeviation = 0.0;
      vDSP_normalizeD(v19, 1, v18, 1, __Mean, &__StandardDeviation, v21);
      vDSP_normalizeD(v22, 1, v14, 1, &v59, &v57, v21);
      __C = 0.0;
      if (__StandardDeviation < 0.0000999999975 || v57 < 0.0000999999975)
      {
        if (v57 < 0.0000999999975 && __StandardDeviation < 0.0000999999975)
        {
          v25 = 1.0;
        }

        else
        {
          v25 = 0.0;
        }
      }

      else
      {
        vDSP_convD(v18, 1, v14, 1, &__C, 1, 1uLL, v21);
        v25 = __C / v21;
      }

      goto LABEL_22;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_71();
    FigDebugAssert3();
    fig_log_get_emitter();
    v28 = FigSignalErrorAtGM();
    v25 = 0.0;
    if (v28)
    {
      break;
    }

LABEL_22:
    *(v13 + 8 * v16) = v25;
    if (v25 > v20)
    {
      v20 = v25;
      v17 = v16;
    }

    ++v16;
    ++v19;
    if (v23 == v16)
    {
      v1 = v48;
      v13 = *(v48 + 80);
      v12 = *(v48 + 148);
      v3 = v55;
      v15 = v54;
      goto LABEL_31;
    }
  }

  v43 = v28;
  fig_log_get_emitter();
  FigDebugAssert3();
  v27 = v43;
LABEL_36:
  v44 = v27;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_88();
  v45 = v44;
  FigDebugAssert3();
  v1 = v48;
LABEL_37:
  fig_log_get_emitter();
  FigDebugAssert3();
  result = v45;
LABEL_38:
  *(v1 + 209) = result == 0;
  return result;
}

- (void)_freeAllocatedArrays
{
  if (self)
  {
    if (*(self + 56))
    {
      v2 = 0;
      do
      {
        v3 = *(self + 32);
        if (v3)
        {
          v4 = *(v3 + 8 * v2);
          if (v4)
          {
            *(v3 + 8 * v2) = 0;
            free(v4);
          }
        }

        v5 = *(self + 40);
        if (v5)
        {
          v6 = *(v5 + 8 * v2);
          if (v6)
          {
            *(v5 + 8 * v2) = 0;
            free(v6);
          }
        }

        ++v2;
      }

      while (v2 < *(self + 56));
    }

    v7 = *(self + 32);
    if (v7)
    {
      *(self + 32) = 0;
      free(v7);
    }

    v8 = *(self + 40);
    if (v8)
    {
      *(self + 40) = 0;
      free(v8);
    }

    v9 = *(self + 16);
    if (v9)
    {
      *(self + 16) = 0;
      free(v9);
    }

    v10 = *(self + 24);
    if (v10)
    {
      *(self + 24) = 0;
      free(v10);
    }

    v11 = *(self + 64);
    if (v11)
    {
      *(self + 64) = 0;
      free(v11);
    }

    v12 = *(self + 72);
    if (v12)
    {
      *(self + 72) = 0;
      free(v12);
    }

    v13 = *(self + 80);
    if (v13)
    {
      *(self + 80) = 0;

      free(v13);
    }
  }
}

- (uint64_t)initWithWidth:height:maximumSearchRange:frameRingSize:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithWidth:height:maximumSearchRange:frameRingSize:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithWidth:height:maximumSearchRange:frameRingSize:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithWidth:height:maximumSearchRange:frameRingSize:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setRoi:actualROI:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setRoi:actualROI:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setRoi:actualROI:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setRoi:actualROI:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setCentralROIAndGetRect:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end