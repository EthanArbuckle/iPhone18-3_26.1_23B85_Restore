@interface BWLensSmudgeDetection
- (BWLensSmudgeDetection)initWithConfiguration:(BWLensSmudgeDetectionConfiguration *)configuration activePortTypes:(id)types;
- (CMTime)_updateInternalStateUsingPTS:(CMTime *)result;
- (float)_calculateKLDistanceUsingHistogramData:(int)data pixelFormat:;
- (int)readISPMotionDataUsingMetadata:(id)metadata attitude:(id *)attitude;
- (uint64_t)_triggerInferenceToTearDownOrPauseUsingPTS:(uint64_t)result;
- (uint64_t)_updateDetectionStatusUsingPTS:(uint64_t)result;
- (uint64_t)_updateISPMotionDataUsingMetadata:(uint64_t)metadata;
- (void)_getLensSmudgeInferenceResultUsingSampleBuffer:(uint64_t)buffer;
- (void)_processDetectionIntermediateData:(void *)data TuningParameters:(float)parameters KLDistance:;
- (void)dealloc;
- (void)updateDetectionUsingSampleBuffer:(opaqueCMSampleBuffer *)buffer detectionUpdatedBlock:(id)block;
@end

@implementation BWLensSmudgeDetection

- (BWLensSmudgeDetection)initWithConfiguration:(BWLensSmudgeDetectionConfiguration *)configuration activePortTypes:(id)types
{
  v43.receiver = self;
  v43.super_class = BWLensSmudgeDetection;
  v6 = [(BWLensSmudgeDetection *)&v43 init];
  if (v6)
  {
    *(v6 + 5) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(&configuration->lensSmudgeDetectionInterval.value + 4);
    configurationCopy = configuration;
    *(v6 + 8) = *&configuration->lensSmudgeDetectionEnabled;
    *(v6 + 20) = v7;
    *(v6 + 6) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = +[FigCaptureCameraParameters sharedInstance];
    cameraTuningParameters = [(FigCaptureCameraParameters *)v8 cameraTuningParameters];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = types;
    v29 = [types countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v29)
    {
      v27 = *v40;
      do
      {
        v9 = 0;
        do
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v9;
          v10 = *(*(&v39 + 1) + 8 * v9);
          v11 = [(NSDictionary *)cameraTuningParameters objectForKeyedSubscript:v10];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          allKeys = [v11 allKeys];
          v13 = [allKeys countByEnumeratingWithState:&v34 objects:v33 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v35;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v35 != v15)
                {
                  objc_enumerationMutation(allKeys);
                }

                v17 = [(FigCaptureCameraParameters *)v8 lensSmudgeDetectionParametersForPortType:v10 sensorIDString:*(*(&v34 + 1) + 8 * i)];
                if (v17)
                {
                  v18 = v17;
                  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CameraDetectionV%d", -[FigCaptureCameraParameters lensSmudgeDetectionVersion](v8, "lensSmudgeDetectionVersion")];
                  [*(v6 + 6) objectForKey:v10];
                  [*(v6 + 6) setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", v19), v10}];
                }
              }

              v14 = [allKeys countByEnumeratingWithState:&v34 objects:v33 count:16];
            }

            while (v14);
          }

          v9 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v29);
    }

    CMTimeMakeWithSeconds(&time1, 10.0, 1000);
    *(v6 + 156) = time1;
    if (configurationCopy->lensSmudgeDetectionInterval.timescale)
    {
      time1 = *(&configurationCopy->lensSmudgeDetectionEnabled + 4);
      time2 = *(v6 + 156);
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }
    }

    else
    {
      v20 = 1;
    }

    *(v6 + 18) = v20;
    v21 = MEMORY[0x1E6960C70];
    v6[152] = 0;
    v22 = *v21;
    *(v6 + 180) = *v21;
    v23 = *(v21 + 2);
    *(v6 + 196) = v23;
    *(v6 + 204) = v22;
    *(v6 + 220) = v23;
    *(v6 + 7) = 3;
    v6[64] = 0;
    *(v6 + 68) = 0xBF80000000000000;
    v6[76] = 0;
    *(v6 + 10) = 0x3BF800000;
    *(v6 + 22) = 0;
    v6[92] = 0;
    *(v6 + 12) = 0xBF80000000000000;
    v6[104] = 0;
    *(v6 + 27) = -1082130432;
    [*(v6 + 5) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", 3), *off_1E798A778}];
    v6[228] = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLensSmudgeDetection;
  [(BWLensSmudgeDetection *)&v3 dealloc];
}

- (int)readISPMotionDataUsingMetadata:(id)metadata attitude:(id *)attitude
{
  bzero(&v10, 0x14A0uLL);
  v9 = 0;
  MotionDataFromISP = FigMotionGetMotionDataFromISP(metadata, &v10, 0, 110, &v9, 0, 0, 0, 0);
  if (MotionDataFromISP)
  {
    v7 = MotionDataFromISP;
    [BWLensSmudgeDetection readISPMotionDataUsingMetadata:attitude:];
  }

  else if (v9 <= 0)
  {
    [BWLensSmudgeDetection readISPMotionDataUsingMetadata:attitude:];
    return -12780;
  }

  else
  {
    FigMotionAttitudeFromQuaternion(&attitude->var0, v11, v12, v13, v14);
    return 0;
  }

  return v7;
}

- (void)updateDetectionUsingSampleBuffer:(opaqueCMSampleBuffer *)buffer detectionUpdatedBlock:(id)block
{
  memset(&v38, 0, sizeof(v38));
  CMSampleBufferGetPresentationTimeStamp(&v38, buffer);
  v6 = OUTLINED_FUNCTION_0_70();
  [(BWLensSmudgeDetection *)v6 _updateInternalStateUsingPTS:v7];
  v8 = [(BWLensSmudgeDetection *)self _getLensSmudgeInferenceResultUsingSampleBuffer:buffer];
  v9 = CMGetAttachment(buffer, @"InferenceHistogramData", 0);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  if ([v9 length] != 1536)
  {
    return;
  }

  v11 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v11;
  v13 = [v11 objectForKey:*off_1E798B698];
  if (!(v13 | v8))
  {
    return;
  }

  v14 = v13;
  v15 = -[NSMutableDictionary objectForKeyedSubscript:](self->_tuningParametersByPortType, "objectForKeyedSubscript:", [v12 objectForKeyedSubscript:*off_1E798C0E0]);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}];
  v18 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B078), "BOOLValue"}];
  v19 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B148), "BOOLValue"}];
  v20 = v17 == 4;
  if ([objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B3E0), "unsignedIntValue"}])
  {
    return;
  }

  if ([(BWLensSmudgeDetection *)self _updateISPMotionDataUsingMetadata:v12])
  {
LABEL_26:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
    return;
  }

  v21 = v20 & v18 & v19;
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  v24 = [(BWLensSmudgeDetection *)self _calculateKLDistanceUsingHistogramData:v10 pixelFormat:PixelFormatType];
  if (v8)
  {
    [objc_msgSend(objc_msgSend(objc_msgSend(v8 "inferences")];
    self->_cmcData.observedConfidence = v30;
    if (v21)
    {
      [(BWLensSmudgeDetection *)self _processDetectionIntermediateData:v16 TuningParameters:v24 KLDistance:?];
      if (self->_cmcData.smudgeProbUpdated)
      {
        *&v31 = self->_cmcData.smudgeProb;
        [MEMORY[0x1E696AD98] numberWithFloat:v31];
        [OUTLINED_FUNCTION_24() setObject:? forKeyedSubscript:?];
      }

      *&v31 = self->_cmcData.observedConfidence;
      [MEMORY[0x1E696AD98] numberWithFloat:v31];
      [OUTLINED_FUNCTION_24() setObject:? forKeyedSubscript:?];
    }

    v32 = OUTLINED_FUNCTION_0_70();
    [(BWLensSmudgeDetection *)v32 _updateDetectionStatusUsingPTS:v33];
    v34 = OUTLINED_FUNCTION_0_70();
    [(BWLensSmudgeDetection *)v34 _triggerInferenceToTearDownOrPauseUsingPTS:v35];
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v14)
  {
LABEL_10:
    [v14 floatValue];
    v26 = v25 / 1000.0;
    if (v26 > 1.0)
    {
      v26 = 1.0;
    }

    self->_anstData.observedConfidence = fmaxf(v26, 0.0);
    if (v21)
    {
      [(BWLensSmudgeDetection *)self _processDetectionIntermediateData:v16 TuningParameters:v24 KLDistance:?];
      if (self->_anstData.smudgeProbUpdated)
      {
        *&v36 = self->_anstData.smudgeProb;
        [MEMORY[0x1E696AD98] numberWithFloat:v36];
        [OUTLINED_FUNCTION_24() setObject:? forKeyedSubscript:?];
      }

      *&v36 = self->_anstData.observedConfidence;
      [MEMORY[0x1E696AD98] numberWithFloat:v36];
      [OUTLINED_FUNCTION_24() setObject:? forKeyedSubscript:?];
    }
  }

LABEL_13:
  if (block)
  {
    v27 = [(NSMutableDictionary *)self->_detectionInfo copy];
    v28 = OUTLINED_FUNCTION_5_56();
    v29(v28);
  }

  self->_cmcData.smudgeConfUpdated = 0;
  self->_cmcData.smudgeProbUpdated = 0;
  self->_anstData.smudgeConfUpdated = 0;
  self->_anstData.smudgeProbUpdated = 0;
}

- (CMTime)_updateInternalStateUsingPTS:(CMTime *)result
{
  if (result)
  {
    v3 = result;
    if ((result[8].value & 1) == 0)
    {
LABEL_3:
      v4 = *&a2->value;
      epoch = a2->epoch;
      v3[2].timescale = 3;
      LOBYTE(v3[9].flags) = 0;
      *&v3[7].flags = v4;
      *(&v3[8].value + 4) = epoch;
      *&time1.value = v4;
      time1.epoch = epoch;
      result = OUTLINED_FUNCTION_6_49(*(&v3[7].value + 4), v4, *(&v4 + 1), epoch, v10, *&v3[6].flags, *(&v3[6].epoch + 4), v11, v12, v4);
      *(v3 + 204) = time2;
      return result;
    }

    value = result[6].value;
    if (value == 2)
    {
      if (LOBYTE(result[9].flags) == 1)
      {
        time2 = *a2;
        time1 = *(result + 204);
        result = CMTimeCompare(&time2, &time1);
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    else if (value == 3 && LOBYTE(result[6].timescale) == 1)
    {
      time1 = *(result + 180);
      OUTLINED_FUNCTION_6_49(*(&result[1].value + 4), v6, v7, v8, v10, *&result->flags, *(&result->epoch + 4), v11, v12, time1.value);
      time1 = *a2;
      result = CMTimeCompare(&time1, &time2);
      if ((result & 0x80000000) == 0)
      {
        (*(v3[10].value + 16))(v3[10].value, [MEMORY[0x1E695DFD8] set]);
        LOBYTE(v3[6].timescale) = 0;
        *(&v3[2].epoch + 4) = 0xBF80000000000000;
        v3[3].timescale = -1082130432;
        v3[5].value = 0;
        *&v3[5].timescale = 0;
        v3[4].epoch = 0;
        goto LABEL_3;
      }
    }
  }

  return result;
}

- (void)_getLensSmudgeInferenceResultUsingSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(a2, 120);
  if (!AttachedInferenceResult)
  {
    return 0;
  }

  v3 = AttachedInferenceResult;
  if (([objc_msgSend(AttachedInferenceResult "preventionReason")] & 1) != 0 || (objc_msgSend(objc_msgSend(v3, "preventionReason"), "isEqualToString:", @"BlurryInputBuffer") & 1) != 0 || (objc_msgSend(v3, "isValid") & 1) == 0)
  {
    return 0;
  }

  return v3;
}

- (uint64_t)_updateISPMotionDataUsingMetadata:(uint64_t)metadata
{
  if (!metadata)
  {
    return 0;
  }

  v8 = 0uLL;
  v9 = 0.0;
  v3 = [metadata readISPMotionDataUsingMetadata:a2 attitude:&v8];
  if (v3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
  }

  else
  {
    if (*(&v8 + 1) != 0.0)
    {
      v4 = *(&v8 + 1) - *(metadata + 120);
      v5 = vabdd_f64(*&v8, *(metadata + 112)) + fabsf(v4);
      v6 = vabdd_f64(v9, *(metadata + 128)) + v5;
      *(metadata + 136) = v6;
    }

    *(metadata + 112) = v8;
    *(metadata + 128) = v9;
  }

  return v3;
}

- (float)_calculateKLDistanceUsingHistogramData:(int)data pixelFormat:
{
  v3 = 0.0;
  if (self && a2 && (FigCapturePixelFormatIsTenBit(data) & 1) == 0 && ([a2 length] / 0xCuLL) == 128)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(data);
    bytes = [a2 bytes];
    v8 = 8;
    if (IsFullRange)
    {
      v8 = 0;
    }

    v9 = 118;
    if (IsFullRange)
    {
      v9 = 128;
    }

    v10 = 0.0;
    v11 = v8;
    do
    {
      v10 = v10 + *(bytes + 4 * v11++);
    }

    while (v11 < v9);
    v12 = 220.0;
    if (IsFullRange)
    {
      v12 = 256.0;
    }

    v13 = (2.0 / v12);
    v14 = (1.0 / v12);
    v15 = (bytes + 4 * v8);
    v16 = v9 - v8;
    v3 = 0.0;
    do
    {
      v17 = *v15++;
      v3 = v3 + v13 * log(v14 / (((v17 / v10) * 0.5) + 0.0001));
      --v16;
    }

    while (v16);
    if (v3 <= 0.0)
    {
      return 0.0001;
    }
  }

  return v3;
}

- (void)_processDetectionIntermediateData:(void *)data TuningParameters:(float)parameters KLDistance:
{
  if (!self)
  {
    return;
  }

  [objc_msgSend(data objectForKeyedSubscript:{@"KLDistanceFeatureThreshold", "floatValue"}];
  v9 = v8;
  [objc_msgSend(data objectForKeyedSubscript:{@"KLDistanceFeatureTmpDampingFactor", "floatValue"}];
  v11 = v10;
  [objc_msgSend(data objectForKeyedSubscript:{@"MotionDeltaThreshold", "floatValue"}];
  v13 = v12;
  [objc_msgSend(data objectForKeyedSubscript:{@"ConfidenceUpperBound", "floatValue"}];
  v15 = v14;
  [objc_msgSend(data objectForKeyedSubscript:{@"ConfidenceLowerBound", "floatValue"}];
  v33 = v16;
  [objc_msgSend(data objectForKeyedSubscript:{@"ProbabilityThreshold", "floatValue"}];
  v34 = v17;
  [objc_msgSend(data objectForKeyedSubscript:{@"ProbabilityUpperBound", "floatValue"}];
  v19 = v18;
  [objc_msgSend(data objectForKeyedSubscript:{@"ProbabilityLowerBound", "floatValue"}];
  v21 = v20;
  [objc_msgSend(data objectForKeyedSubscript:{@"ProbabilityMaxDeviation", "floatValue"}];
  if (v9 <= parameters)
  {
    return;
  }

  v23 = v22;
  if (*(self + 136) >= v13)
  {
    return;
  }

  v24 = *(a2 + 16);
  if (v24 == -1.0)
  {
    v25 = *(a2 + 4);
  }

  else
  {
    v26 = expf(-(parameters * v11));
    *(a2 + 12) = v24;
    v25 = (v26 * *(a2 + 4)) + (1.0 - v26) * v24;
  }

  *(a2 + 16) = v25;
  *(a2 + 8) = 1;
  v27 = *(a2 + 24);
  if (v27 == -1.0)
  {
    *(a2 + 24) = 0;
    *(a2 + 20) = 1;
    v27 = 0.0;
  }

  if (v25 >= v15)
  {
    v29 = v23 + v27;
    v30 = v27 < v19;
    v27 = 1.0;
    if (v30)
    {
      v27 = v29;
    }

    goto LABEL_16;
  }

  if (v25 < v33)
  {
    v28 = v27 - v23;
    v31 = v27 <= v21;
    v27 = 0.0;
    if (!v31)
    {
      v27 = v28;
    }

LABEL_16:
    *(a2 + 24) = v27;
    *(a2 + 20) = 1;
  }

  v31 = v27 <= v34 || v27 <= -1.0;
  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  *a2 = v32;
}

- (uint64_t)_updateDetectionStatusUsingPTS:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 56) == 2)
    {
      v3 = 2;
    }

    else
    {
      OUTLINED_FUNCTION_1_80(result, a2);
      result = OUTLINED_FUNCTION_2_71(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v3 = *(v2 + 56);
    }

    [MEMORY[0x1E696AD98] numberWithInt:v3];
    result = [OUTLINED_FUNCTION_24() setObject:? forKeyedSubscript:?];
    *(v2 + 228) = 1;
  }

  return result;
}

- (uint64_t)_triggerInferenceToTearDownOrPauseUsingPTS:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if ((*(result + 152) & 1) == 0)
    {
      OUTLINED_FUNCTION_1_80(result, a2);
      result = OUTLINED_FUNCTION_2_71(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17);
      if ((result & 0x80000000) == 0)
      {
        v11 = *(v2 + 144);
        if (v11 == 3)
        {
          [MEMORY[0x1E695DFD8] setWithObject:&unk_1F2244AA0];
          v12 = OUTLINED_FUNCTION_5_56();
          result = v13(v12);
        }

        else
        {
          if (v11 != 1)
          {
            return result;
          }

          result = (*(*(v2 + 232) + 16))();
        }

        *(v2 + 152) = 1;
      }
    }
  }

  return result;
}

- (uint64_t)readISPMotionDataUsingMetadata:attitude:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_8();
  return FigDebugAssert3();
}

- (uint64_t)readISPMotionDataUsingMetadata:attitude:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_8();
  return FigDebugAssert3();
}

@end