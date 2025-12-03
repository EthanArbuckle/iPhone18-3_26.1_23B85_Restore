@interface BWUBProcessorInput
- (BWUBProcessorInput)initWithSettings:(id)settings portType:(id)type;
- (id)stopAdaptiveBracketingNow;
- (opaqueCMSampleBuffer)errorRecoveryFrame;
- (opaqueCMSampleBuffer)evMinusReferenceFrame;
- (opaqueCMSampleBuffer)originalImage;
- (opaqueCMSampleBuffer)referenceFrame;
- (void)_setErrorRecoveryFrame:(void *)result;
- (void)_setReferenceFrame:(void *)result;
- (void)adaptiveBracketingParameters;
- (void)addFrame:(opaqueCMSampleBuffer *)frame;
- (void)dealloc;
- (void)setKeepFrames:(BOOL)frames;
- (void)stopAdaptiveBracketingWithGroup:(int)group;
- (void)updateAdaptiveBracketingFrameParametersIfNeededUsingFrame:(int)frame err:;
@end

@implementation BWUBProcessorInput

- (BWUBProcessorInput)initWithSettings:(id)settings portType:(id)type
{
  v6.receiver = self;
  v6.super_class = BWUBProcessorInput;
  v4 = [(BWStillImageProcessorControllerInput *)&v6 initWithSettings:settings portType:type];
  if (v4)
  {
    v4->_frames = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_keepFrames = 1;
    v4->_fusionMode = 0;
    v4->_oisRecenteringLoggingData = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (void)dealloc
{
  referenceFrame = self->_referenceFrame;
  if (referenceFrame)
  {
    CFRelease(referenceFrame);
  }

  errorRecoveryFrame = self->_errorRecoveryFrame;
  if (errorRecoveryFrame)
  {
    CFRelease(errorRecoveryFrame);
  }

  v5.receiver = self;
  v5.super_class = BWUBProcessorInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (void)setKeepFrames:(BOOL)frames
{
  if (self->_keepFrames != frames)
  {
    self->_keepFrames = frames;
    if (!frames)
    {
      [(NSMutableArray *)self->_frames removeAllObjects];
    }
  }
}

- (void)addFrame:(opaqueCMSampleBuffer *)frame
{
  if (!frame)
  {
    [BWUBProcessorInput addFrame:];
    return;
  }

  receivedFrames = self->_receivedFrames;
  referenceFrameIndex = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] referenceFrameIndex];
  ++self->_receivedFrames;
  if (![(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] adaptiveBracketingParameters])
  {
    v11 = self->_receivedFrames;
    v10 = v11 == [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] expectedFrameCount];
    p_receivedAllFrames = &self->_receivedAllFrames;
LABEL_8:
    *p_receivedAllFrames = v10;
    goto LABEL_9;
  }

  AdaptiveBracketingFrame = BWIsLastAdaptiveBracketingFrame(frame);
  p_receivedAllFrames = &self->_receivedAllFrames;
  self->_receivedAllFrames = AdaptiveBracketingFrame;
  adaptiveBracketingStopFrameCount = self->_adaptiveBracketingStopFrameCount;
  if (adaptiveBracketingStopFrameCount >= 1)
  {
    v10 = (AdaptiveBracketingFrame & 1) != 0 || self->_receivedFrames >= adaptiveBracketingStopFrameCount;
    goto LABEL_8;
  }

LABEL_9:
  if (self->_keepFrames)
  {
    [(NSMutableArray *)self->_frames addObject:frame];
  }

  if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] captureType]== 11)
  {
    v12 = CMGetAttachment(frame, *off_1E798A3C8, 0);
    v13 = [v12 objectForKeyedSubscript:*off_1E798B6B8];
    if (v13)
    {
      v14 = v13;
      [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798C4D0), "floatValue"}];
      v16 = v15;
      [objc_msgSend(v14 objectForKeyedSubscript:{*off_1E798C4D8), "floatValue"}];
      v18 = v17;
      [objc_msgSend(v14 objectForKeyedSubscript:{*off_1E798C4E0), "floatValue"}];
      v20 = v19;
      v21 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData objectForKeyedSubscript:{@"numberOfFrames", "intValue"}];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData objectForKeyedSubscript:{0x1F21A9690), "floatValue"}];
      if (*&v22 < v16)
      {
        *&v22 = v16;
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithFloat:v22], 0x1F21A9690);
        *&v23 = v18;
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithFloat:v23], 0x1F21A96B0);
        LODWORD(v24) = v20;
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithFloat:v24], 0x1F21A9710);
      }

      v25 = MEMORY[0x1E696AD98];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData objectForKeyedSubscript:{0x1F21A96D0), "floatValue"}];
      v26 = v21;
      v28 = v16 + (v27 * v21);
      v29 = (v21 + 1);
      *&v30 = v28 / v29;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [v25 numberWithFloat:v30], 0x1F21A96D0);
      v31 = MEMORY[0x1E696AD98];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData objectForKeyedSubscript:{0x1F21A96F0), "floatValue"}];
      *&v33 = (v18 + (v32 * v26)) / v29;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [v31 numberWithFloat:v33], 0x1F21A96F0);
      [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B3D8), "floatValue"}];
      v35 = v34;
      v36 = MEMORY[0x1E696AD98];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData objectForKeyedSubscript:{0x1F21A9730), "floatValue"}];
      *&v38 = (v35 + (v37 * v26)) / v29;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [v36 numberWithFloat:v38], 0x1F21A9730);
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v29], @"numberOfFrames");
    }
  }

  delegate = self->_delegate;

  [(BWUBProcessorInputDelegate *)delegate input:self addFrame:frame isReferenceFrame:receivedFrames == referenceFrameIndex];
}

- (opaqueCMSampleBuffer)referenceFrame
{
  referenceFrame = self->_referenceFrame;
  if (referenceFrame)
  {
    return referenceFrame;
  }

  if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] referenceFrameIndex]< 0 || (v4 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] referenceFrameIndex], [(NSMutableArray *)self->_frames count]<= v4))
  {
    if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] captureType]!= 2 || ![(NSMutableArray *)self->_frames count])
    {
      return 0;
    }

    v8 = 0;
    v9 = *off_1E798A3C8;
    v10 = *off_1E798B5C8;
    while (1)
    {
      referenceFrame = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v8];
      if (([objc_msgSend(CMGetAttachment(referenceFrame v9] & 1) == 0)
      {
        break;
      }

      if ([(NSMutableArray *)self->_frames count]<= ++v8)
      {
        return 0;
      }
    }

    return referenceFrame;
  }

  frames = self->_frames;
  referenceFrameIndex = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] referenceFrameIndex];

  return [(NSMutableArray *)frames objectAtIndexedSubscript:referenceFrameIndex];
}

- (opaqueCMSampleBuffer)evMinusReferenceFrame
{
  if (([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] captureFlags]& 0x100000) == 0 || ![(NSMutableArray *)self->_frames count])
  {
    return 0;
  }

  v3 = 0;
  v4 = *off_1E798A3C8;
  v5 = *off_1E798B5E8;
  v6 = *off_1E798A830;
  while (1)
  {
    v7 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v3];
    v8 = CMGetAttachment(v7, v4, 0);
    if ([objc_msgSend(v8 objectForKeyedSubscript:{v5), "BOOLValue"}])
    {
      break;
    }

    [objc_msgSend(v8 objectForKeyedSubscript:{v6), "floatValue"}];
    if (v9 < 0.0)
    {
      break;
    }

    if ([(NSMutableArray *)self->_frames count]<= ++v3)
    {
      return 0;
    }
  }

  return v7;
}

- (opaqueCMSampleBuffer)errorRecoveryFrame
{
  errorRecoveryFrame = self->_errorRecoveryFrame;
  if (!errorRecoveryFrame)
  {
    referenceFrame = [(BWUBProcessorInput *)self referenceFrame];
    if ([(NSMutableArray *)self->_frames count])
    {
      v5 = 0;
      while (1)
      {
        errorRecoveryFrame = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v5];
        if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] isUnifiedBracketingErrorRecoveryFrame:errorRecoveryFrame isReferenceFrame:errorRecoveryFrame == referenceFrame])
        {
          break;
        }

        if ([(NSMutableArray *)self->_frames count]<= ++v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return errorRecoveryFrame;
}

- (void)stopAdaptiveBracketingWithGroup:(int)group
{
  v3 = *&group;
  if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] adaptiveBracketingParameters])
  {
    v5 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] expectedAdaptiveBracketedFrameCaptureCountUsingGroup:v3];
    if (dword_1EB58DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_adaptiveBracketingStopFrameCount = v5;
    if (!self->_receivedAllFrames && v5 >= 1)
    {
      receivedFrames = self->_receivedFrames;
      self->_receivedAllFrames = receivedFrames >= v5;
      if (receivedFrames >= v5)
      {
        [(BWUBProcessorInputDelegate *)self->_delegate inputReceivedAllFrames:self];
      }
    }
  }
}

- (void)_setReferenceFrame:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[10];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      if (cf)
      {
        result = CFRetain(cf);
      }

      else
      {
        result = 0;
      }

      v3[10] = result;
    }
  }

  return result;
}

- (void)_setErrorRecoveryFrame:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[11];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      if (cf)
      {
        result = CFRetain(cf);
      }

      else
      {
        result = 0;
      }

      v3[11] = result;
    }
  }

  return result;
}

- (opaqueCMSampleBuffer)originalImage
{
  if (![(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] deliverOriginalImage])
  {
    return 0;
  }

  return [(BWUBProcessorInput *)self errorRecoveryFrame];
}

- (id)stopAdaptiveBracketingNow
{
  if (result)
  {
    v2 = result;
    result = [(BWUBProcessorInput *)result adaptiveBracketingParameters];
    if (result)
    {
      v3 = result;
      if (dword_1EB58DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_4_0();
        if (v1)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'. Current expected frame count:%d. Received frame count:%d", v2, objc_msgSend(objc_msgSend(v2, "captureStreamSettings"), "currentExpectedAdaptiveBracketedFrameCaptureCount"), *(v2 + 17)];
          [objc_msgSend(v2 "settings")];
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1_7();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      [(BWUBAdaptiveBracketingParameters *)v3 stopAdaptiveBracketing];
      *(v2 + 72) = 1;
      return [v2[6] inputReceivedAllFrames:v2];
    }
  }

  return result;
}

- (void)adaptiveBracketingParameters
{
  if (result)
  {
    v1 = [objc_msgSend(result "captureStreamSettings")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)updateAdaptiveBracketingFrameParametersIfNeededUsingFrame:(int)frame err:
{
  if (self)
  {
    if (frame)
    {
      adaptiveBracketingParameters = [(BWUBProcessorInput *)self adaptiveBracketingParameters];

      [(BWUBAdaptiveBracketingParameters *)adaptiveBracketingParameters stopAdaptiveBracketing];
    }

    else if (([objc_msgSend(self "captureStreamSettings")] & 1) == 0)
    {
      v6 = [objc_msgSend(CMGetAttachment(a2 *off_1E798A3C8];
      adaptiveBracketingParameters2 = [(BWUBProcessorInput *)self adaptiveBracketingParameters];

      [(BWUBAdaptiveBracketingParameters *)adaptiveBracketingParameters2 updateAdaptiveBracketingFrameParametersUsingGroup:?];
    }
  }
}

@end