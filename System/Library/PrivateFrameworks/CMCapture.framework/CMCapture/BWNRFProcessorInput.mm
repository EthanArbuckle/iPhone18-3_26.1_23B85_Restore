@interface BWNRFProcessorInput
- (BWNRFProcessorInput)initWithSettings:(id)settings portType:(id)type resolutionFlavor:(int)flavor;
- (CFTypeRef)_setErrorRecoveryFrame:(CFTypeRef)result;
- (CFTypeRef)_setReferenceFrame:(CFTypeRef)result;
- (id)description;
- (id)stopAdaptiveBracketingNow;
- (int)expectedFrameCount;
- (opaqueCMSampleBuffer)errorRecoveryFrame;
- (opaqueCMSampleBuffer)evMinusReferenceFrame;
- (opaqueCMSampleBuffer)originalImage;
- (opaqueCMSampleBuffer)referenceFrame;
- (void)adaptiveBracketingParameters;
- (void)addFrame:(opaqueCMSampleBuffer *)frame;
- (void)dealloc;
- (void)setKeepFrames:(BOOL)frames;
- (void)setProcessedRawErrorRecoveryFrame:(opaqueCMSampleBuffer *)frame proxy:(BOOL)proxy;
- (void)stopAdaptiveBracketingWithGroup:(int)group;
@end

@implementation BWNRFProcessorInput

- (BWNRFProcessorInput)initWithSettings:(id)settings portType:(id)type resolutionFlavor:(int)flavor
{
  v9.receiver = self;
  v9.super_class = BWNRFProcessorInput;
  v6 = [(BWStillImageProcessorControllerInput *)&v9 initWithSettings:settings portType:type];
  v7 = v6;
  if (v6)
  {
    v6->_resolutionFlavor = flavor;
    v6->_frames = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_keepFrames = 1;
    v7->_fusionMode = 0;
    v7->_oisRecenteringLoggingData = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_ispMotionHighPassFilterConvergenceFlags = 0;
  }

  return v7;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_gainMapPixelBuffer);
  self->_gainMapPixelBuffer = 0;
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
  v5.super_class = BWNRFProcessorInput;
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
    [BWNRFProcessorInput addFrame:];
    return;
  }

  v5 = BWStillImageCaptureFrameFlagsForSampleBuffer(frame);
  ++self->_receivedFrames;
  if (self->_keepFrames)
  {
    [(NSMutableArray *)self->_frames addObject:frame];
  }

  if ([-[BWStillImageCaptureStreamSettings adaptiveUnifiedBracketedCaptureParams](-[BWStillImageProcessorControllerInput captureStreamSettings](self "captureStreamSettings")])
  {
    AdaptiveBracketingFrame = BWIsLastAdaptiveBracketingFrame(frame);
    p_receivedAllFrames = &self->_receivedAllFrames;
    self->_receivedAllFrames = AdaptiveBracketingFrame;
    adaptiveBracketingStopFrameCount = self->_adaptiveBracketingStopFrameCount;
    if (adaptiveBracketingStopFrameCount < 1)
    {
      goto LABEL_11;
    }

    v9 = (AdaptiveBracketingFrame & 1) != 0 || self->_receivedFrames >= adaptiveBracketingStopFrameCount;
  }

  else
  {
    receivedFrames = self->_receivedFrames;
    v9 = receivedFrames == [(BWNRFProcessorInput *)self expectedFrameCount];
    p_receivedAllFrames = &self->_receivedAllFrames;
  }

  *p_receivedAllFrames = v9;
LABEL_11:
  if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] captureType]== 11)
  {
    v11 = CMGetAttachment(frame, *off_1E798A3C8, 0);
    v12 = [v11 objectForKeyedSubscript:*off_1E798B6B0];
    if (v12)
    {
      if (([v12 isEqualToString:*off_1E798C488] & 1) == 0)
      {
        v13 = [v11 objectForKeyedSubscript:*off_1E798B6B8];
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
          [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B3D8), "floatValue"}];
          v35 = v34;
          v36 = MEMORY[0x1E696AD98];
          [-[NSMutableDictionary objectForKeyedSubscript:](self->_oisRecenteringLoggingData objectForKeyedSubscript:{0x1F21A9730), "floatValue"}];
          *&v38 = (v35 + (v37 * v26)) / v29;
          -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [v36 numberWithFloat:v38], 0x1F21A9730);
          -[NSMutableDictionary setObject:forKeyedSubscript:](self->_oisRecenteringLoggingData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v29], @"numberOfFrames");
        }

        v39 = [v11 objectForKeyedSubscript:*off_1E798B3E8];
        if (v39)
        {
          self->_ispMotionHighPassFilterConvergenceFlags = [v39 intValue];
        }
      }
    }
  }

  delegate = self->_delegate;

  [(BWNRFProcessorInputDelegate *)delegate input:self addFrame:frame isReferenceFrame:(v5 >> 4) & 1];
}

- (int)expectedFrameCount
{
  if ([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] deliverDeferredPhotoProxyImage]&& ([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureType]== 12 || [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureType]== 13))
  {
    if (([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureFlags]& 0x100000) != 0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureType]== 13)
  {
    v4 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] hasCaptureFrameInfoWithMainFlags:512 sifrFlags:0];
    return [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] expectedFrameCount]- v4;
  }

  else if (([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureFlags]& 0x20000000000) != 0 || ([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureFlags]& 8) != 0)
  {
    return 1;
  }

  else
  {
    v5 = [-[BWStillImageCaptureStreamSettings adaptiveUnifiedBracketedCaptureParams](-[BWStillImageProcessorControllerInput captureStreamSettings](self "captureStreamSettings")];
    captureStreamSettings = [(BWStillImageProcessorControllerInput *)self captureStreamSettings];
    if (v5)
    {

      return [(BWStillImageCaptureStreamSettings *)captureStreamSettings currentExpectedAdaptiveBracketedFrameCount];
    }

    else
    {

      return [(BWStillImageCaptureStreamSettings *)captureStreamSettings expectedFrameCount];
    }
  }
}

- (opaqueCMSampleBuffer)referenceFrame
{
  captureType = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] captureType];
  referenceFrame = self->_referenceFrame;
  if (referenceFrame)
  {
    return referenceFrame;
  }

  switch(captureType)
  {
    case 1:
      if ([(BWNRFProcessorInput *)self expectedFrameCount]!= 1)
      {
        goto LABEL_15;
      }

      break;
    case 7:
      break;
    case 2:
      if ([(NSMutableArray *)self->_frames count])
      {
        v5 = 0;
        v6 = *off_1E798A3C8;
        v7 = *off_1E798B5C8;
        v8 = *off_1E798B150;
        while (1)
        {
          referenceFrame = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v5];
          v9 = CMGetAttachment(referenceFrame, v6, 0);
          if (([objc_msgSend(v9 objectForKeyedSubscript:{v7), "BOOLValue"}] & 1) == 0 && !objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", v8), "BOOLValue"))
          {
            break;
          }

          if ([(NSMutableArray *)self->_frames count]<= ++v5)
          {
            return 0;
          }
        }

        return referenceFrame;
      }

      return 0;
    default:
LABEL_15:
      if ([(NSMutableArray *)self->_frames count])
      {
        v12 = 0;
        while (1)
        {
          referenceFrame = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v12];
          if ((BWStillImageCaptureFrameFlagsForSampleBuffer(referenceFrame) & 0x10) != 0)
          {
            break;
          }

          if ([(NSMutableArray *)self->_frames count]<= ++v12)
          {
            return 0;
          }
        }

        return referenceFrame;
      }

      return 0;
  }

  frames = self->_frames;

  return [(NSMutableArray *)frames firstObject];
}

- (opaqueCMSampleBuffer)evMinusReferenceFrame
{
  if (([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] captureFlags]& 0x60000100000) == 0 || ![(NSMutableArray *)self->_frames count])
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v3];
    if ((BWStillImageCaptureFrameFlagsForSampleBuffer(v4) & 4) != 0)
    {
      break;
    }

    if ([(NSMutableArray *)self->_frames count]<= ++v3)
    {
      return 0;
    }
  }

  return v4;
}

- (opaqueCMSampleBuffer)errorRecoveryFrame
{
  errorRecoveryFrame = self->_errorRecoveryFrame;
  if (errorRecoveryFrame)
  {
    return errorRecoveryFrame;
  }

  if ([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureType]!= 1 || [(BWNRFProcessorInput *)self expectedFrameCount]!= 1)
  {
    if (![(NSMutableArray *)self->_frames count])
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      errorRecoveryFrame = [(NSMutableArray *)self->_frames objectAtIndexedSubscript:v6];
      if ((BWStillImageCaptureFrameFlagsForSampleBuffer(errorRecoveryFrame) & 0x20) != 0)
      {
        break;
      }

      if ([(NSMutableArray *)self->_frames count]<= ++v6)
      {
        return 0;
      }
    }

    return errorRecoveryFrame;
  }

  frames = self->_frames;

  return [(NSMutableArray *)frames firstObject];
}

- (void)stopAdaptiveBracketingWithGroup:(int)group
{
  v3 = *&group;
  if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] adaptiveBracketingParameters])
  {
    v5 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] expectedAdaptiveBracketedFrameCaptureCountUsingGroup:v3];
    if (dword_1EB58E0E0)
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
        [(BWNRFProcessorInputDelegate *)self->_delegate inputReceivedAllFrames:self];
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  settingsID = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] settingsID];
  v6 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureType]);
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType:%@ portType:%@ receivedFrames:%d fusionMode:%@ keepFrames:%d processingCount:%u", v4, self, settingsID, v6, -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "portType"), self->_receivedFrames, BWPhotoEncoderStringFromEncodingScheme(self->_fusionMode), self->_keepFrames, self->_remainingProcessingCount];
}

- (CFTypeRef)_setReferenceFrame:(CFTypeRef)result
{
  if (result)
  {
    OUTLINED_FUNCTION_54();
    result = *(v3 + 88);
    if (result != v4)
    {
      if (result)
      {
        CFRelease(result);
      }

      if (v2)
      {
        result = CFRetain(v2);
      }

      else
      {
        result = 0;
      }

      *(v1 + 88) = result;
    }
  }

  return result;
}

- (CFTypeRef)_setErrorRecoveryFrame:(CFTypeRef)result
{
  if (result)
  {
    OUTLINED_FUNCTION_54();
    result = *(v3 + 96);
    if (result != v4)
    {
      if (result)
      {
        CFRelease(result);
      }

      if (v2)
      {
        result = CFRetain(v2);
      }

      else
      {
        result = 0;
      }

      *(v1 + 96) = result;
    }
  }

  return result;
}

- (void)setProcessedRawErrorRecoveryFrame:(opaqueCMSampleBuffer *)frame proxy:(BOOL)proxy
{
  proxyCopy = proxy;
  [BWNRFProcessorInput _setErrorRecoveryFrame:?];
  delegate = self->_delegate;

  [(BWNRFProcessorInputDelegate *)delegate inputReceivedProcessedRawErrorRecoveryFrame:self proxy:proxyCopy];
}

- (opaqueCMSampleBuffer)originalImage
{
  if (![(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] deliverOriginalImage])
  {
    return 0;
  }

  return [(BWNRFProcessorInput *)self errorRecoveryFrame];
}

- (id)stopAdaptiveBracketingNow
{
  if (result)
  {
    v2 = result;
    result = [(BWNRFProcessorInput *)result adaptiveBracketingParameters];
    if (result)
    {
      v3 = result;
      if (dword_1EB58E0E0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_4_0();
        if (v1)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'. Current expected frame count:%d. Received frame count:%d", v2, objc_msgSend(objc_msgSend(v2, "captureStreamSettings"), "currentExpectedAdaptiveBracketedFrameCount"), *(v2 + 19)];
          [objc_msgSend(v2 "settings")];
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_5_1();
        }

        OUTLINED_FUNCTION_1_63();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      os_unfair_lock_lock(v3 + 2);
      LOBYTE(v3[6]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v3 + 2);
      *(v2 + 80) = 1;
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
    OUTLINED_FUNCTION_3_30();
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

@end