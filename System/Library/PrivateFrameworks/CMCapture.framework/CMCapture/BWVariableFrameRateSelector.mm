@interface BWVariableFrameRateSelector
- (BWVariableFrameRateSelector)initWithPortTypes:(id)a3 forParameters:(id)a4 frameRateSwitchBasedOnMotionDisabled:(BOOL)a5 teleAutoVideoFrameRateAllows24FPS:(BOOL)a6;
- (char)_loadDefaultsWithPortTypes:(void *)a3 forParameters:(uint64_t)a4 frameRateSwitchBasedOnMotionDisabled:(uint64_t)a5 teleAutoVideoFrameRateAllows24FPS:(uint64_t)a6;
- (char)_updateMotionDataFromSampleBuffer:(char *)result;
- (double)_frameRateForFrameStatistics:(float *)a1 portType:(void *)a2;
- (float)getAEMaxGainForPortType:(id)a3 suggestedFrameRate:(double)a4;
- (uint64_t)_getSceneStabilityFromSampleBuffer:(char *)a1 currentFrameRate:(const void *)a2 portType:(uint64_t)a3;
- (uint64_t)_switchBackTo60AsFlickerFrequencyIsDetected:(uint64_t)a1;
- (uint64_t)_updateAEMaxGainDictionary:(uint64_t)result withAEMaxGain:(void *)a2 forPortType:(void *)a3;
- (uint64_t)_updateSuggestedFrameRateFromFrameStatistics:(uint64_t)result sampleBuffer:(void *)a2 currentFrameRate:(CMAttachmentBearerRef)target aeMaxGain:(float)a4;
- (uint64_t)_updatemotionThreshold:(uint64_t)a3 forPortType:;
- (uint64_t)_waterSceneDetected;
- (void)_updateSmartSceneFromSampleBuffer:(uint64_t)a1 currentFrameRate:(CMAttachmentBearerRef)target portType:(uint64_t)a3;
- (void)addAttachmentsToSamplebuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatistics:(id)a4 currentFrameRate:(float)a5 aeMaxGain:(float)a6 zoomInProgress:(BOOL)a7 mostRecentInferenceResult:(id)a8;
@end

@implementation BWVariableFrameRateSelector

- (BWVariableFrameRateSelector)initWithPortTypes:(id)a3 forParameters:(id)a4 frameRateSwitchBasedOnMotionDisabled:(BOOL)a5 teleAutoVideoFrameRateAllows24FPS:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v16.receiver = self;
  v16.super_class = BWVariableFrameRateSelector;
  v10 = [(BWVariableFrameRateSelector *)&v16 init];
  v14 = v10;
  if (v10)
  {
    [(BWVariableFrameRateSelector *)v10 _loadDefaultsWithPortTypes:a3 forParameters:a4 frameRateSwitchBasedOnMotionDisabled:v7 teleAutoVideoFrameRateAllows24FPS:v6, v11, v12, v13];
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVariableFrameRateSelector;
  [(BWVariableFrameRateSelector *)&v3 dealloc];
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatistics:(id)a4 currentFrameRate:(float)a5 aeMaxGain:(float)a6 zoomInProgress:(BOOL)a7 mostRecentInferenceResult:(id)a8
{
  v9 = a7;
  os_unfair_lock_lock(&self->_smartCameraLock);

  self->_mostRecentInferenceResult = a8;
  os_unfair_lock_unlock(&self->_smartCameraLock);
  os_unfair_lock_lock(&self->_variableFrameRateInfoLock);
  BWSmartCameraSceneUpdateWithConfidence(&self->_zoomRequest, v9);
  confident = self->_zoomRequest.confident;
  self->_zoomInProgress = confident;
  if (!confident)
  {
    [BWVariableFrameRateSelector _updateSuggestedFrameRateFromFrameStatistics:a4 sampleBuffer:a3 currentFrameRate:a5 aeMaxGain:?];
  }

  os_unfair_lock_unlock(&self->_variableFrameRateInfoLock);
}

- (void)addAttachmentsToSamplebuffer:(opaqueCMSampleBuffer *)a3
{
  os_unfair_lock_lock(&self->_variableFrameRateInfoLock);
  v5 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v6 = CMGetAttachment(a3, @"VariableFrameRateInfo", 0);
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    CMSetAttachment(a3, @"VariableFrameRateInfo", self->_variableFrameRateInfo, 1u);
  }

  [v6 addEntriesFromDictionary:self->_variableFrameRateInfo];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_frameRateConversionStatus), *off_1E798D490}];

  os_unfair_lock_unlock(&self->_variableFrameRateInfoLock);
}

- (float)getAEMaxGainForPortType:(id)a3 suggestedFrameRate:(double)a4
{
  v5 = [(NSMutableDictionary *)self->_vfrAEMaxGainsByPortType objectForKeyedSubscript:a3];
  v6 = [v5 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", a4)}];

  [v6 floatValue];
  return result;
}

- (char)_loadDefaultsWithPortTypes:(void *)a3 forParameters:(uint64_t)a4 frameRateSwitchBasedOnMotionDisabled:(uint64_t)a5 teleAutoVideoFrameRateAllows24FPS:(uint64_t)a6
{
  if (result)
  {
    v8 = a5;
    v9 = a4;
    v12 = result;
    *(result + 12) = 0x3C88CE7000000000;
    *(result + 6) = 1014672602;
    if (!*(result + 4))
    {
      result = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v12 + 32) = result;
    }

    if (!*(v12 + 400))
    {
      result = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v12 + 400) = result;
    }

    if (!*(v12 + 392))
    {
      result = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v12 + 392) = result;
    }

    *(v12 + 488) = 0;
    *(v12 + 48) = 0;
    if (!*(v12 + 40))
    {
      result = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v12 + 40) = result;
    }

    v13 = OUTLINED_FUNCTION_10_0(result, a2, a3, a4, a5, a6, a7, a8, v52, __SPAIR64__(v8, v9), v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, 0);
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(a2);
          }

          v17 = *(8 * i);
          v18 = [a3 objectForKeyedSubscript:v17];
          v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
          if (v18)
          {
            v27 = v19;
            v19 = [objc_msgSend(v18 "portType")];
            if (v19)
            {
              -[BWVariableFrameRateSelector _updateAEMaxGainDictionary:withAEMaxGain:forPortType:](v12, v27, [v18 aeMaxGain]);
              -[BWVariableFrameRateSelector _updatemotionThreshold:forPortType:](v12, [v18 motionThreshold], v17);
              v19 = [*(v12 + 32) setObject:v27 forKeyedSubscript:v17];
            }
          }
        }

        v14 = OUTLINED_FUNCTION_10_0(v19, v20, v21, v22, v23, v24, v25, v26, v53, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87);
      }

      while (v14);
    }

    *(v12 + 57) = 256;
    v28 = OUTLINED_FUNCTION_0_58();
    BWSmartCameraSceneInitialize(v29, v30, 1, 1, v31, v28, v32, v33);
    v34 = OUTLINED_FUNCTION_0_58();
    BWSmartCameraSceneInitialize(v35, v36, 55, 3, v37, v34, v38, v39);
    BWSmartCameraSceneInitialize(v12 + 144, 1, 1, 1, "VFR Device Motion Low", 0.001, 0.004, 0.5);
    BWSmartCameraSceneInitialize(v12 + 184, 1, 55, 1, "VFR Device Motion High", 0.998, 0.004, 0.5);
    v40 = OUTLINED_FUNCTION_0_58();
    BWSmartCameraSceneInitialize(v41, v42, 8, 1, v43, v40, v44, v45);
    BWSmartCameraSceneInitialize(v12 + 264, 1, 10, 1, "VFR Zoom requested", 0.9, 0.0, 1.0);
    v46 = OUTLINED_FUNCTION_0_58();
    BWSmartCameraSceneInitialize(v47, v48, 25, 5, v49, v46, v50, v51);
    result = BWSmartCameraSceneInitialize(v12 + 344, 1, 15, 600, "VFR water detected", 0.45, 0.05, 0.5);
    *(v12 + 472) = 0;
    *(v12 + 536) = 0;
    *(v12 + 473) = v54 ^ 1;
    *(v12 + 474) = BYTE4(v54);
  }

  return result;
}

- (uint64_t)_updateSuggestedFrameRateFromFrameStatistics:(uint64_t)result sampleBuffer:(void *)a2 currentFrameRate:(CMAttachmentBearerRef)target aeMaxGain:(float)a4
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v10 = [v9 objectForKeyedSubscript:*off_1E798C0E0];
  v11 = CMGetAttachment(target, v8, 0);
  [a2 integrationTime];
  v13 = v12;
  [a2 gain];
  v15 = v13 * v14;
  v16 = [BWVariableFrameRateSelector _getSceneStabilityFromSampleBuffer:v7 currentFrameRate:target portType:v10];
  BWSmartCameraSceneUpdateWithConfidence(v7 + 224, [a2 aeLimitsReached]);
  v17 = *(v7 + 225);
  v18 = [(BWVariableFrameRateSelector *)v7 _waterSceneDetected];
  v63 = [v9 objectForKeyedSubscript:*off_1E798B528];
  v65 = a2;
  v19 = [BWVariableFrameRateSelector _frameRateForFrameStatistics:v7 portType:a2];
  v20 = *&v19;
  v21 = *(v7 + 12);
  v22 = *&v19 == 60.0 && v21 == 0;
  v23 = v21 == 2 || v22;
  v24 = [v10 isEqualToString:{*off_1E798A0D8, v63}];
  *(v7 + 532) = v16;
  *(v7 + 533) = v17;
  *(v7 + 534) = v18;
  if (v23)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  *(v7 + 496) = v25;
  [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B210), "floatValue"}];
  v27 = vcvtps_s32_f32(v26) & 0x7FFFFFFE;
  *(v7 + 536) = v27;
  if (!v23)
  {
    v31 = v20 < 60.0 && v21 == 0;
    if (v21 == 1)
    {
      v31 = 1;
    }

    if (!v31)
    {
      goto LABEL_97;
    }

    if (v17)
    {
      if (v24)
      {
        if (a4 == 30.0 && (*(v7 + 474) & 1) != 0 && v27 > 0x18)
        {
          goto LABEL_31;
        }
      }

      else if (a4 == 30.0 && v27 >= 0x19)
      {
LABEL_31:
        [v65 integrationTime];
        [v65 gain];
        OUTLINED_FUNCTION_1_71(v32);
        v34 = OUTLINED_FUNCTION_2_63();
        v35 = v29 && v33 == 6;
        if (!v35 || *(v7 + 8) != v34)
        {
          v30 = 0;
          *(v7 + 492) = 6;
          *(v7 + 500) = a4;
          v28 = 1103101952;
          goto LABEL_53;
        }

        goto LABEL_97;
      }
    }

    [v7 getAEMaxGainForPortType:v10 suggestedFrameRate:30.0];
    v43 = *(v7 + 492);
    if (v43 == 6)
    {
      v44 = v42;
      if (v15 <= (*&a33sFf1[4 * (v42 > 255.0)] * *(v7 + 384)))
      {
        goto LABEL_76;
      }

      [v65 integrationTime];
      v46 = v45;
      [v65 gain];
      if (*(v7 + 536) > 29)
      {
        goto LABEL_97;
      }

      v48 = v47;
      if (1.0 / v46 < 30.0 || v44 * 0.97 < v48)
      {
        goto LABEL_97;
      }

      v43 = *(v7 + 492);
    }

    v50 = v20 == a4 && v43 == 4;
    if (v50 && *(v7 + 8) == v20)
    {
      goto LABEL_97;
    }

LABEL_76:
    v30 = 0;
    *(v7 + 492) = 4;
    *(v7 + 500) = a4;
LABEL_77:
    *(v7 + 504) = v20;
    *(v7 + 8) = v20;
    goto LABEL_98;
  }

  if (v18)
  {
    v28 = 1114636288;
    v29 = a4 == 60.0 && *(v7 + 492) == 8;
    if (!v29 || (OUTLINED_FUNCTION_3_57(), !v29))
    {
      v30 = 0;
      *(v7 + 492) = 8;
      *(v7 + 500) = a4;
LABEL_53:
      *(v7 + 504) = v28;
      goto LABEL_54;
    }

    goto LABEL_97;
  }

  v36 = v16 ^ 1;
  if (a4 != 60.0)
  {
    v36 = 1;
  }

  if ((v36 & 1) != 0 || *(v7 + 473) != 1)
  {
    if (v17)
    {
      [v65 integrationTime];
      [v65 gain];
      OUTLINED_FUNCTION_1_71(v37);
      v39 = a4 == 30.0 && v38 == 3;
      if (!v39 || *(v7 + 8) != 30.0)
      {
        v30 = 0;
        *(v7 + 492) = 3;
        *(v7 + 500) = a4;
        v28 = 1106247680;
        goto LABEL_53;
      }

      goto LABEL_97;
    }

    OUTLINED_FUNCTION_2_63();
    if (v29)
    {
      v30 = 0;
      *(v7 + 492) = 7;
      *(v7 + 500) = 0x41F0000041C00000;
      v28 = 1106247680;
      goto LABEL_54;
    }

    if (a4 != 30.0 || v40 > 0x3B)
    {
      v30 = 2 * (v40 > 0x3B);
      goto LABEL_98;
    }

    v51 = *(v7 + 492);
    if (v51 == 1)
    {
      goto LABEL_84;
    }

    if (v51 == 3)
    {
      v52 = *(v7 + 384) * 0.95;
      if (v15 > v52)
      {
        goto LABEL_97;
      }
    }

    [v65 integrationTime];
    if (v53 <= *(v7 + 24))
    {
LABEL_84:
      v54 = 2;
    }

    else
    {
      v56 = [(BWVariableFrameRateSelector *)v7 _switchBackTo60AsFlickerFrequencyIsDetected:v64];
      [v7 getAEMaxGainForPortType:v10 suggestedFrameRate:60.0];
      if (!v56)
      {
        goto LABEL_97;
      }

      v58 = v57;
      [v65 gain];
      if (v58 * 0.97 <= v59)
      {
        goto LABEL_97;
      }

      v54 = 5;
    }

    v55 = v20 == 30.0 && *(v7 + 492) == v54;
    if (!v55 || *(v7 + 8) != 30.0)
    {
      v30 = 0;
      *(v7 + 492) = v54;
      *(v7 + 500) = 1106247680;
      goto LABEL_77;
    }

LABEL_97:
    v30 = 0;
    goto LABEL_98;
  }

  if (*(v7 + 492) != 1 || (OUTLINED_FUNCTION_3_57(), !v29))
  {
    v30 = 1;
    *(v7 + 492) = 1;
    *(v7 + 500) = 0x4270000042700000;
    v28 = 1114636288;
LABEL_54:
    *(v7 + 8) = v28;
    goto LABEL_98;
  }

  v30 = 1;
LABEL_98:
  v60 = *(v7 + 8);
  if (v60 == 0.0 && (v60 != a4 || *(v7 + 492)))
  {
    *(v7 + 492) = 0;
    *(v7 + 500) = a4;
    *(v7 + 504) = a4;
    *(v7 + 8) = a4;
  }

  if (*(v7 + 473) == 1)
  {
    *(v7 + 52) = v30;
  }

  v61 = [MEMORY[0x1E696AD98] numberWithInt:*(v7 + 492)];
  v62 = *(v7 + 40);

  return [v62 setObject:v61 forKeyedSubscript:0x1F21AA0F0];
}

- (uint64_t)_updatemotionThreshold:(uint64_t)a3 forPortType:
{
  if (result)
  {
    v5 = result;
    [*(result + 392) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", a2), a3}];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v7 = *(v5 + 400);

    return [v7 setObject:v6 forKeyedSubscript:a3];
  }

  return result;
}

- (uint64_t)_updateAEMaxGainDictionary:(uint64_t)result withAEMaxGain:(void *)a2 forPortType:(void *)a3
{
  if (result)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    result = [&unk_1F2248988 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(&unk_1F2248988);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          [objc_msgSend(a3 objectForKeyedSubscript:{v8), "floatValue"}];
          [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:"), v8}];
          ++v7;
        }

        while (v5 != v7);
        result = [&unk_1F2248988 countByEnumeratingWithState:&v10 objects:v9 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

- (char)_updateMotionDataFromSampleBuffer:(char *)result
{
  if (result)
  {
    v2 = result;
    result = [CMGetAttachment(target *off_1E798A3C8];
    if (result)
    {
      v3 = result;
      v4 = [result bytes];
      result = [v3 length];
      v5 = *(v4 + 4);
      if (result == (40 * v5 + 8))
      {
        if (v5 >= 1)
        {
          v6 = 0;
          v7 = *(v2 + 408);
          v8 = *(v2 + 424);
          v9 = (v4 + 28);
          v10 = vdupq_n_s64(0x3E10000000000000uLL);
          do
          {
            _Q3 = v8;
            _Q1 = v7;
            v13 = *(v9 - 1);
            v14.i64[0] = *v9;
            v14.i64[1] = HIDWORD(*v9);
            v8 = vmulq_f64(vcvtq_f64_s64(v14), v10);
            v14.i64[0] = v13;
            v14.i64[1] = SHIDWORD(v13);
            v7 = vmulq_f64(vcvtq_f64_s64(v14), v10);
            v6 += 2;
            v9 += 10;
          }

          while (v6 < v5);
          _D7 = v7.f64[1];
          _D16 = v8.f64[1];
          __asm
          {
            FMLA            D6, D7, V3.D[1]
            FMLS            D6, D16, V1.D[1]
            FMLA            D17, D7, V1.D[1]
            FMLA            D17, D16, V3.D[1]
          }

          *(v2 + 408) = v7;
          *(v2 + 424) = v8;
          *(v2 + 57) = _D6 - v7.f64[0] * _Q3.f64[0];
          *(v2 + 58) = vmuld_lane_f64(v8.f64[0], _Q1, 1) - v7.f64[1] * _Q3.f64[0] + _Q1.f64[0] * v8.f64[1] - v7.f64[0] * _Q3.f64[1];
          *(v2 + 55) = _D17 + _Q1.f64[0] * v7.f64[0];
          *(v2 + 56) = -_Q3.f64[1] * v8.f64[0] + _Q1.f64[0] * v7.f64[1] + _Q3.f64[0] * v8.f64[1] - v7.f64[0] * _Q1.f64[1];
        }
      }

      else
      {
        fig_log_get_emitter();
        return FigDebugAssert3();
      }
    }
  }

  return result;
}

- (uint64_t)_switchBackTo60AsFlickerFrequencyIsDetected:(uint64_t)a1
{
  if (a1)
  {
    v4 = 0.0;
    if ([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B980), "intValue"}] - 1 <= 1)
    {
      v5 = [a2 objectForKeyedSubscript:*off_1E798B960];
      if ([v5 count])
      {
        v6 = [v5 objectAtIndexedSubscript:0];
        [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B958), "floatValue"}];
        v8 = v7;
        [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B950), "floatValue"}];
        if (v9 >= 39321.0)
        {
          v11 = v8 < 65.0 && v8 > 60.0;
          v4 = v11;
        }
      }
    }

    BWSmartCameraSceneUpdateWithConfidence(a1 + 304, v4);
    v12 = *(a1 + 305);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (double)_frameRateForFrameStatistics:(float *)a1 portType:(void *)a2
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 getAEMaxGainForPortType:60.0 suggestedFrameRate:?];
  v5 = v4;
  [a2 integrationTime];
  if (v6 <= a1[4] * 0.97 || ([a2 integrationTime], v7 >= a1[4] * 1.03))
  {
    [a2 integrationTime];
    v10 = result;
    LODWORD(result) = 30.0;
    if (v10 <= a1[4])
    {
      LODWORD(result) = 1114636288;
    }
  }

  else
  {
    [a2 gain];
    v8 = *&result < v5;
    LODWORD(result) = 1114636288;
    if (!v8)
    {
      *&result = 30.0;
    }
  }

  return result;
}

- (void)_updateSmartSceneFromSampleBuffer:(uint64_t)a1 currentFrameRate:(CMAttachmentBearerRef)target portType:(uint64_t)a3
{
  if (a1)
  {
    *(a1 + 388) = [objc_msgSend(CMGetAttachment(target *off_1E798A3C8];
    *&v5 = OUTLINED_FUNCTION_2_63();
    v6 = 400;
    if (!(v7 ^ v8 | v30))
    {
      v6 = 392;
    }

    if (*(a1 + 388) >= [objc_msgSend(*(a1 + v6) objectForKeyedSubscript:{a3, v5), "intValue"}])
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = *(a1 + 440);
    v11 = *(a1 + 448);
    v12 = *(a1 + 456);
    v13 = *(a1 + 464);
    v15 = atan2(v12 * v13 + v10 * v11 + v12 * v13 + v10 * v11, (v12 * v12 + v11 * v11) * -2.0 + 1.0);
    *v16.i64 = v10 * v12 - v13 * v11 + v10 * v12 - v13 * v11;
    if (fabs(*v16.i64) >= 1.0)
    {
      v14.i64[0] = 0x3FF921FB54442D18;
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      *&v17 = vbslq_s8(vnegq_f64(v18), v14, v16).u64[0];
    }

    else
    {
      v17 = asin(*v16.i64);
    }

    v32 = v17;
    v19 = atan2(v11 * v12 + v10 * v13 + v11 * v12 + v10 * v13, (v13 * v13 + v12 * v12) * -2.0 + 1.0);
    BWSmartCameraSceneUpdateWithConfidence(a1 + 64, v9);
    BWSmartCameraSceneUpdateWithConfidence(a1 + 104, v9);
    v20 = fabs(v15);
    v21 = fabs(v32);
    v22 = fabs(v19);
    if (v20 <= v21)
    {
      if (v21 <= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      v26 = 1.0 - v25;
      BWSmartCameraSceneUpdateWithConfidence(a1 + 144, v26);
      v20 = v21;
      if (v21 > v22)
      {
LABEL_21:
        v27 = 1.0 - v20;
        BWSmartCameraSceneUpdateWithConfidence(a1 + 184, v27);
        OUTLINED_FUNCTION_2_63();
        if (v7 ^ v8 | v30)
        {
          if ((v28 & 1) == 0)
          {
            if ((*(a1 + 57) & 1) == 0)
            {
              return;
            }

            v29 = 145;
            goto LABEL_36;
          }

          if (*(a1 + 145))
          {
            v29 = 65;
            goto LABEL_36;
          }

          v30 = *(a1 + 57) == 0;
          v29 = 65;
          v31 = 145;
        }

        else
        {
          if ((v28 & 1) == 0)
          {
            if ((*(a1 + 57) & 1) == 0)
            {
              return;
            }

            v29 = 185;
            goto LABEL_36;
          }

          if (*(a1 + 185))
          {
            v29 = 105;
LABEL_36:
            *(a1 + 56) = *(a1 + v29);
            return;
          }

          v30 = *(a1 + 57) == 0;
          v29 = 105;
          v31 = 185;
        }

        if (!v30)
        {
          v29 = v31;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (v20 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      v24 = 1.0 - v23;
      BWSmartCameraSceneUpdateWithConfidence(a1 + 144, v24);
      if (v20 > v22)
      {
        goto LABEL_21;
      }
    }

    v20 = v22;
    goto LABEL_21;
  }
}

- (uint64_t)_getSceneStabilityFromSampleBuffer:(char *)a1 currentFrameRate:(const void *)a2 portType:(uint64_t)a3
{
  if (a1)
  {
    [(BWVariableFrameRateSelector *)a1 _updateMotionDataFromSampleBuffer:a2];
    [BWVariableFrameRateSelector _updateSmartSceneFromSampleBuffer:a1 currentFrameRate:a2 portType:a3];
    v6 = a1[56];
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (uint64_t)_waterSceneDetected
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 488));
    v2 = *(a1 + 480);
    os_unfair_lock_unlock((a1 + 488));
    if ([v2 isValid])
    {
      [objc_msgSend(objc_msgSend(v2 "inferences")];
      BWSmartCameraSceneUpdateWithConfidence(a1 + 344, v3);
      v4 = *(a1 + 345);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end