@interface BWJasperColorStillsExecutorInput
- (BOOL)needMorePointClouds;
- (BWJasperColorStillsExecutorInput)initWithSettings:(id)settings portType:(id)type timeOfFlightCameraType:(int)cameraType;
- (id)description;
- (void)addPointCloud:(opaqueCMSampleBuffer *)cloud;
- (void)dealloc;
- (void)jasperPointCloudsForColorBuffer;
- (void)setColorBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type;
- (void)setColorBufferPTS:(id *)s exposureTime:(double)time;
@end

@implementation BWJasperColorStillsExecutorInput

- (BWJasperColorStillsExecutorInput)initWithSettings:(id)settings portType:(id)type timeOfFlightCameraType:(int)cameraType
{
  v10.receiver = self;
  v10.super_class = BWJasperColorStillsExecutorInput;
  v6 = [(BWStillImageProcessorControllerInput *)&v10 initWithSettings:settings portType:type];
  if (v6)
  {
    v6->_pointClouds = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (cameraType)
    {
      if (cameraType == 1)
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      if (cameraType == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = v7;
      }

      v6->_numberOfPointCloudsRequired = v8;
    }

    else
    {
      FigDebugAssert3();

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CFRelease(colorBuffer);
  }

  v4.receiver = self;
  v4.super_class = BWJasperColorStillsExecutorInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (void)addPointCloud:(opaqueCMSampleBuffer *)cloud
{
  if (!cloud)
  {
    [BWJasperColorStillsExecutorInput addPointCloud:];
    return;
  }

  [(NSMutableArray *)self->_pointClouds addObject:?];
  v4 = [(NSMutableArray *)self->_pointClouds count];
  if (v4 != 1)
  {
    if (0xCCCCCCCCCCCCCCCDLL * v4 > 0x3333333333333333 || dword_1EB58DEA0 == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (dword_1EB58DEA0)
  {
LABEL_9:
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  if ([(BWJasperColorStillsExecutorInput *)self isReadyToExecute:v7])
  {
    [(BWJasperColorStillsExecutorInputDelegate *)self->_delegate inputReadyToExecute:self];
  }
}

- (void)setColorBufferPTS:(id *)s exposureTime:(double)time
{
  var3 = s->var3;
  *&self->_colorBufferPTS.value = *&s->var0;
  self->_colorBufferPTS.epoch = var3;
  self->_colorBufferExposureTime = time;
}

- (void)setColorBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type
{
  if (dword_1EB58DEA0)
  {
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CFRelease(colorBuffer);
  }

  if (buffer)
  {
    v9 = CFRetain(buffer);
  }

  else
  {
    v9 = 0;
  }

  self->_colorBuffer = v9;
  self->_colorBufferType = type;
  if ([(BWJasperColorStillsExecutorInput *)self isReadyToExecute:v10])
  {
    [(BWJasperColorStillsExecutorInputDelegate *)self->_delegate inputReadyToExecute:self];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ : pointClouds:%lu (req:%d) colorBuf:%p skip:%d", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "portType"), -[NSMutableArray count](self->_pointClouds, "count"), self->_numberOfPointCloudsRequired, self->_colorBuffer, self->_skipProcessing];
}

- (BOOL)needMorePointClouds
{
  if ([(NSMutableArray *)self->_pointClouds count]< self->_numberOfPointCloudsRequired)
  {
    return 1;
  }

  colorBuffer = self->_colorBuffer;
  if (!colorBuffer)
  {
    if ((self->_colorBufferPTS.flags & 1) != 0 && self->_colorBufferExposureTime > 0.0)
    {
      time = self->_colorBufferPTS;
      Seconds = CMTimeGetSeconds(&time);
      colorBufferExposureTime = self->_colorBufferExposureTime;
      goto LABEL_11;
    }

    return 1;
  }

  v4 = *off_1E798A3C8;
  v5 = CMGetAttachment(colorBuffer, *off_1E798A3C8, 0);
  v6 = self->_colorBuffer;
  if (v6)
  {
    v7 = [CMGetAttachment(v6 v4];
    CMTimeMakeFromDictionary(&time, v7);
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = 0.0;
  }

  [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  colorBufferExposureTime = v11;
LABEL_11:
  result = 1;
  if (Seconds > 0.0 && colorBufferExposureTime > 0.0)
  {
    lastObject = [(NSMutableArray *)self->_pointClouds lastObject];
    if (lastObject)
    {
      v13 = [CMGetAttachment(lastObject *off_1E798A3C8];
      CMTimeMakeFromDictionary(&time, v13);
      v14 = CMTimeGetSeconds(&time);
    }

    else
    {
      v14 = 0.0;
    }

    v15 = colorBufferExposureTime + Seconds + 0.01;
    result = v15 > v14;
    if (v15 <= v14 && dword_1EB58DEA0 != 0)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v22;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v21))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        [(NSMutableArray *)self->_pointClouds count];
        [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)self settings] settingsID];
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }
  }

  return result;
}

- (void)jasperPointCloudsForColorBuffer
{
  if (!self)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (!*(self + 88))
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_9_20();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v44))
    {
      v39 = v45;
    }

    else
    {
      v39 = v45 & 0xFFFFFFFE;
    }

    if (v39)
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5_0();
    }

    goto LABEL_55;
  }

  v4 = [OUTLINED_FUNCTION_3_36() count];
  v5 = *(self + 104);
  if (v4 < v5)
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_9_20();
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_12_21(v40))
    {
      v41 = v1;
    }

    else
    {
      v41 = v1 & 0xFFFFFFFE;
    }

    if (v41)
    {
      [OUTLINED_FUNCTION_3_36() count];
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5_0();
    }

LABEL_55:
    OUTLINED_FUNCTION_7_26();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return array;
  }

  if (dword_1EB58DEA0)
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_9_20();
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_12_21(v6))
    {
      v7 = v1;
    }

    else
    {
      v7 = v1 & 0xFFFFFFFE;
    }

    if (v7)
    {
      [OUTLINED_FUNCTION_3_36() count];
      firstObject = [OUTLINED_FUNCTION_3_36() firstObject];
      if (firstObject)
      {
        v9 = [CMGetAttachment(firstObject *off_1E798A3C8];
        CMTimeMakeFromDictionary(&time, v9);
        CMTimeGetSeconds(&time);
      }

      lastObject = [OUTLINED_FUNCTION_3_36() lastObject];
      if (lastObject)
      {
        v11 = [CMGetAttachment(lastObject *off_1E798A3C8];
        CMTimeMakeFromDictionary(&time, v11);
        CMTimeGetSeconds(&time);
      }

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = *(self + 104);
  }

  [objc_msgSend(OUTLINED_FUNCTION_8_23(*(self + 88)) objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  v13 = v12;
  v14 = *(self + 88);
  if (v14)
  {
    v15 = [OUTLINED_FUNCTION_8_23(v14) objectForKeyedSubscript:*off_1E798A420];
    CMTimeMakeFromDictionary(&time, v15);
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = 0.0;
  }

  memset(v42, 0, sizeof(v42));
  v17 = *(self + 104);
  if ([OUTLINED_FUNCTION_3_36() count] <= v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = *off_1E798A420;
    do
    {
      v20 = v18 % *(self + 104);
      v21 = *(v42 + v20);
      if (v21 == 0.0)
      {
        v22 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v18];
        if (v22)
        {
          v23 = [OUTLINED_FUNCTION_8_23(v22) objectForKeyedSubscript:v19];
          CMTimeMakeFromDictionary(&time, v23);
          v21 = CMTimeGetSeconds(&time);
        }

        else
        {
          v21 = 0.0;
        }
      }

      v24 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v17 + v18];
      if (v24)
      {
        v25 = [OUTLINED_FUNCTION_8_23(v24) objectForKeyedSubscript:v19];
        CMTimeMakeFromDictionary(&time, v25);
        v26 = CMTimeGetSeconds(&time);
      }

      else
      {
        v26 = 0.0;
      }

      if (vabdd_f64(v13 * 0.5 + Seconds, v21) <= vabdd_f64(v13 * 0.5 + Seconds, v26))
      {
        break;
      }

      ++v18;
      *(v42 + v20) = v26;
    }

    while (v17 + v18 < [OUTLINED_FUNCTION_3_36() count]);
  }

  if (dword_1EB58DEA0)
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_9_20();
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = v45;
    if (os_log_type_enabled(v27, v44))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v46.location = v18;
      v46.length = v5;
      NSStringFromRange(v46);
      v30 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v18];
      if (v30)
      {
        v31 = [OUTLINED_FUNCTION_8_23(v30) objectForKeyedSubscript:*off_1E798A420];
        CMTimeMakeFromDictionary(&time, v31);
        CMTimeGetSeconds(&time);
      }

      v32 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v5 + v18 - 1];
      if (v32)
      {
        v33 = [OUTLINED_FUNCTION_8_23(v32) objectForKeyedSubscript:*off_1E798A420];
        CMTimeMakeFromDictionary(&time, v33);
        CMTimeGetSeconds(&time);
      }

      OUTLINED_FUNCTION_5();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v18 < v18 + v5)
  {
    do
    {
      v34 = [OUTLINED_FUNCTION_3_36() objectAtIndexedSubscript:v18];
      CVDataBuffer = BWSampleBufferGetCVDataBuffer(v34);
      v36 = [objc_alloc(getADJasperPointCloudClass()) initWithDataBuffer:CVDataBuffer];
      [array addObject:v36];

      ++v18;
      --v5;
    }

    while (v5);
  }

  return array;
}

@end