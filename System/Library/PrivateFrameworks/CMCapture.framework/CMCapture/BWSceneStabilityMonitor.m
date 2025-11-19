@interface BWSceneStabilityMonitor
- (BWSceneStabilityMonitor)init;
- (_BYTE)_updateAFStatusFromMetadata:(_BYTE *)result;
- (uint64_t)_calculateStabilityWithAEMatrixFromMetadata:(uint64_t)result;
- (uint64_t)_calculateStabilityWithSceneMotionForPixelBuffer:(uint64_t)a1 pts:(CVPixelBufferRef)pixelBuffer;
- (void)_resetAEMatrixStorage;
- (void)_resetPixelSumStorage;
- (void)calculateStabilityWithPixelBuffer:(__CVBuffer *)a3 pts:(id *)a4 metadataDictionary:(id)a5 forceSceneMotion:(BOOL)a6;
- (void)dealloc;
- (void)reset;
@end

@implementation BWSceneStabilityMonitor

- (BWSceneStabilityMonitor)init
{
  v7.receiver = self;
  v7.super_class = BWSceneStabilityMonitor;
  v2 = [(BWSceneStabilityMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(BWSceneStabilityMonitor *)v2 reset];
    v4 = MEMORY[0x1E6960CC0];
    *&v3->_pixelSumStorage.lastPTS.value = *MEMORY[0x1E6960CC0];
    v3->_pixelSumStorage.lastPTS.epoch = *(v4 + 16);
    v5 = MEMORY[0x1E6960C70];
    *&v3->_stableStartTime.value = *MEMORY[0x1E6960C70];
    v3->_stableStartTime.epoch = *(v5 + 16);
  }

  return v3;
}

- (void)reset
{
  self->_lastAFStatus = 0;
  self->_isLastSceneStable = 0;
  self->_stabilityMetric = 0.0;
  *&self->_isAFCompletedOnLastFrame = 0;
  self->_sceneMotionOffsetX = 0.0;
  self->_sceneMotionOffsetY = 0.0;
  [(BWSceneStabilityMonitor *)self _resetAEMatrixStorage];

  [(BWSceneStabilityMonitor *)self _resetPixelSumStorage];
}

- (void)_resetPixelSumStorage
{
  if (a1)
  {
    v2 = *(a1 + 136);
    if (v2)
    {
      *(a1 + 136) = 0;
      free(v2);
    }

    v3 = *(a1 + 144);
    if (v3)
    {
      *(a1 + 144) = 0;
      free(v3);
    }

    *(a1 + 152) = 0;
    *(a1 + 156) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }
}

- (void)_resetAEMatrixStorage
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      *(a1 + 80) = 0;
      free(v2);
    }

    v3 = *(a1 + 88);
    if (v3)
    {
      *(a1 + 88) = 0;
      free(v3);
    }

    *(a1 + 108) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }
}

- (void)dealloc
{
  [(BWSceneStabilityMonitor *)self reset];
  v3.receiver = self;
  v3.super_class = BWSceneStabilityMonitor;
  [(BWSceneStabilityMonitor *)&v3 dealloc];
}

- (void)calculateStabilityWithPixelBuffer:(__CVBuffer *)a3 pts:(id *)a4 metadataDictionary:(id)a5 forceSceneMotion:(BOOL)a6
{
  v6 = a6;
  v11 = [(BWSceneStabilityMonitor *)self _calculateStabilityWithAEMatrixFromMetadata:a5];
  memset(&v25, 0, sizeof(v25));
  lhs = *a4;
  lastPTS = self->_pixelSumStorage.lastPTS;
  CMTimeSubtract(&v25, &lhs, &lastPTS);
  if (v11)
  {
    if (!v6)
    {
      v12 = 0;
LABEL_12:
      self->_stabilityMetric = self->_aeMatrixStorage.stabilityMetric;
      sceneStable = self->_aeMatrixStorage.sceneStable;
      goto LABEL_18;
    }
  }

  else
  {
    CMTimeMakeWithSeconds(&lhs, 0.1, 1000);
    lastPTS = v25;
    if (CMTimeCompare(&lastPTS, &lhs) <= 0 && !v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  v12 = [BWSceneStabilityMonitor _calculateStabilityWithSceneMotionForPixelBuffer:a3 pts:?];
  if ((v11 & v12) == 1)
  {
    sceneStable = self->_aeMatrixStorage.sceneStable && self->_pixelSumStorage.sceneStable;
    stabilityMetric = self->_aeMatrixStorage.stabilityMetric;
    if (stabilityMetric >= self->_pixelSumStorage.stabilityMetric)
    {
      stabilityMetric = self->_pixelSumStorage.stabilityMetric;
    }

    self->_stabilityMetric = stabilityMetric;
    goto LABEL_17;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  if (!v12)
  {
LABEL_7:
    sceneStable = 0;
    goto LABEL_18;
  }

  self->_stabilityMetric = self->_pixelSumStorage.stabilityMetric;
  sceneStable = self->_pixelSumStorage.sceneStable;
LABEL_17:
  v12 = 1;
LABEL_18:
  v15 = sceneStable;
  if (self->_isLastSceneStable != v15)
  {
    v16 = 40;
    if (v15)
    {
      v17 = 16;
    }

    else
    {
      v17 = 40;
    }

    if (!v15)
    {
      v16 = 16;
    }

    v18 = self + v17;
    v19 = *&a4->var0;
    *(v18 + 2) = a4->var3;
    *v18 = v19;
    v20 = MEMORY[0x1E6960C70];
    v21 = self + v16;
    *v21 = *MEMORY[0x1E6960C70];
    *(v21 + 2) = *(v20 + 16);
    self->_isLastSceneStable = v15;
  }

  v22 = 0;
  if (v12)
  {
    v22 = *&self->_pixelSumStorage.offsetX;
  }

  *&self->_sceneMotionOffsetX = v22;
  self->_processedSceneMotion = v12;
  [(BWSceneStabilityMonitor *)self _updateAFStatusFromMetadata:a5];
}

- (uint64_t)_calculateStabilityWithAEMatrixFromMetadata:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    result = [a2 objectForKeyedSubscript:*off_1E798B070];
    if (result)
    {
      v3 = result;
      if ([result length] == 512)
      {
        v26 = 0;
        v4 = malloc_type_malloc(0x200uLL, 0x1000040BDFB0063uLL);
        bzero(v4, 0x200uLL);
        v5 = [v3 bytes];
        v6 = 0;
        v7 = v4;
        do
        {
          v8 = 16;
          v9 = v7;
          do
          {
            v10 = *v5++;
            v9->i16[0] = v10;
            v9 = (v9 + 2);
            --v8;
          }

          while (v8);
          ++v6;
          v7 += 4;
        }

        while (v6 != 16);
        v11 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
        v12 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
        v13 = v12;
        v14 = 0;
        v15 = v4 + 2;
        do
        {
          *&v11[v14] = vaddvq_s32(vaddq_s32(vaddl_u16(v15[-2], *v15), vaddl_high_u16(*v15[-2].i8, *v15->i8)));
          v15 += 4;
          v14 += 4;
        }

        while (v14 != 64);
        v16 = 0;
        v17 = v4;
        do
        {
          v18 = 0;
          v19 = 0;
          do
          {
            v19 += v17[v18].u16[0];
            v18 += 4;
          }

          while (v18 != 64);
          v12[v16++] = v19;
          v17 = (v17 + 2);
        }

        while (v16 != 16);
        v20 = *(v2 + 80);
        if (v20)
        {
          v21 = *(v2 + 88);
          if (v21)
          {
            AEMatrix_FindQualityFromSums(v11, v20, &v26);
            AEMatrix_FindQualityFromSums(v13, v21, &v26 + 1);
            v22 = *(&v26 + 1);
            v23 = *&v26;
            *(v2 + 96) = HIDWORD(v26);
            *(v2 + 100) = v23;
            if (v22 >= v23)
            {
              v22 = v23;
            }

            *(v2 + 104) = v22 > 0.8;
            *(v2 + 108) = v22;
          }
        }

        free(v4);
        v24 = *(v2 + 80);
        if (v24)
        {
          *(v2 + 80) = 0;
          free(v24);
        }

        v25 = *(v2 + 88);
        if (v25)
        {
          *(v2 + 88) = 0;
          free(v25);
        }

        *(v2 + 80) = v11;
        *(v2 + 88) = v13;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)_calculateStabilityWithSceneMotionForPixelBuffer:(uint64_t)a1 pts:(CVPixelBufferRef)pixelBuffer
{
  result = 0;
  if (!a1 || !pixelBuffer)
  {
    return result;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  v6 = pixelSumComputeCompatibleROI(WidthOfPlane, 0.0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v9;
  v14 = v11;
  if (*(a1 + 128) != __PAIR64__(v9, v11))
  {
    [(BWSceneStabilityMonitor *)a1 _resetPixelSumStorage];
    *(a1 + 128) = v14;
    *(a1 + 132) = v13;
  }

  v31 = 0;
  v32 = 0;
  v15 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
  v16 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  if (pixelSumForROI(pixelBuffer, v15, v16, v6, v8, v10, v12))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    v21 = *(a1 + 136);
    if (!v21)
    {
LABEL_16:
      v30 = *(a1 + 144);
      if (v30)
      {
        *(a1 + 144) = 0;
        free(v30);
      }

      *(a1 + 136) = v15;
      *(a1 + 144) = v16;
      return 1;
    }

    if (!*(a1 + 144))
    {
LABEL_15:
      *(a1 + 136) = 0;
      free(v21);
      goto LABEL_16;
    }

    if (!OUTLINED_FUNCTION_1_124(v15, v21, v14, v17, v18, v19, &v32, v20, &v31) && !OUTLINED_FUNCTION_1_124(v16, *(a1 + 144), v13, v22, v23, v24, &v32 + 1, v25, &v31 + 1))
    {
      v26 = v32;
      *(a1 + 112) = HIDWORD(v32);
      *(a1 + 116) = v26;
      v28 = *(&v31 + 1);
      v27 = *&v31;
      *(a1 + 120) = HIDWORD(v31);
      *(a1 + 124) = v27;
      v29 = v28 > 0.1;
      if (v27 <= 0.1)
      {
        v29 = 0;
      }

      *(a1 + 152) = v29;
      if (v28 < v27)
      {
        v27 = v28;
      }

      *(a1 + 156) = v27;
      v21 = *(a1 + 136);
      if (!v21)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_12_1();
  }

  FigDebugAssert3();
  if (v15)
  {
    free(v15);
  }

  if (v16)
  {
    free(v16);
  }

  return 0;
}

- (_BYTE)_updateAFStatusFromMetadata:(_BYTE *)result
{
  if (result)
  {
    v2 = result;
    result[64] = 0;
    result = [a2 objectForKeyedSubscript:*off_1E798B0A8];
    if (result)
    {
      result = [result intValue];
      if (*(v2 + 46) == 2 && result == 4)
      {
        v2[64] = 1;
      }

      *(v2 + 46) = result;
    }
  }

  return result;
}

@end