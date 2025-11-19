@interface BWNRFProcessorRequest
- (const)clientBracketFrame;
- (id)description;
- (uint64_t)fusionErrorRecoveryImageType;
- (uint64_t)imageType;
- (uint64_t)inferenceInputType;
- (uint64_t)keepFramesUntilReferenceFrameSelected;
- (uint64_t)processingType;
- (uint64_t)receivedAllFrames;
- (uint64_t)useFrameForMultiFrameProcessing:(uint64_t)result;
- (void)dealloc;
- (void)initWithConfiguration:(void *)a3 input:(void *)a4 output:(void *)a5 rawNightModeOutputFrame:(void *)a6 deepFusionOutput:(char)a7 processErrorRecoveryFrame:(char)a8 processErrorRecoveryProxy:(char)a9 processOriginalImage:(char)a10 processToneMapping:(char)a11 processInferenceInputImage:(int)a12 clientBracketSequenceNumber:(char)a13 processSemanticRendering:(char)a14 provideInferenceInputImageForProcessing:(char)a15 inferencesAvailable:(char)a16 processSmartStyleRenderingInput:(void *)a17 delegate:;
@end

@implementation BWNRFProcessorRequest

- (uint64_t)useFrameForMultiFrameProcessing:(uint64_t)result
{
  if (result)
  {
    v3 = [(BWNRFProcessorRequest *)result processingType];
    result = 0;
    v4 = 1 << v3;
    if ((v4 & 0x1E1) == 0)
    {
      if ((v4 & 0xE0A) != 0)
      {
        return (BWStillImageCaptureFrameFlagsForSampleBuffer(a2) & 0x30) != 32;
      }

      else
      {
        [(BWUBNRFProcessorRequest *)a2 useFrameForMultiFrameProcessing:?];
        return v5;
      }
    }
  }

  return result;
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v5 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self->_input captureSettings] settingsID];
  v4 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self->_input captureStreamSettings] captureType]);
  return [v7 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@, errorRecovery=%d errorRecoveryProxy=%d original=%d tonemap=%d inferenceInput=%d semanticRendering=%d inferenceInputForProcessing=%d inferences=%d input:<%@ %p>", v6, self, v5, v4, -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "portType"), self->_processErrorRecoveryFrame, self->_processErrorRecoveryProxy, self->_processOriginalImage, self->_processToneMapping, self->_processInferenceInputImage, self->_processSemanticRendering, self->_provideInferenceInputImageForProcessing, self->_inferencesAvailable, objc_opt_class(), self->_input];
}

- (void)initWithConfiguration:(void *)a3 input:(void *)a4 output:(void *)a5 rawNightModeOutputFrame:(void *)a6 deepFusionOutput:(char)a7 processErrorRecoveryFrame:(char)a8 processErrorRecoveryProxy:(char)a9 processOriginalImage:(char)a10 processToneMapping:(char)a11 processInferenceInputImage:(int)a12 clientBracketSequenceNumber:(char)a13 processSemanticRendering:(char)a14 provideInferenceInputImageForProcessing:(char)a15 inferencesAvailable:(char)a16 processSmartStyleRenderingInput:(void *)a17 delegate:
{
  if (!a1)
  {
    return 0;
  }

  v26.receiver = a1;
  v26.super_class = BWNRFProcessorRequest;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  if (v24)
  {
    v24[1] = a2;
    v24[2] = a3;
    v24[3] = a4;
    v24[4] = a5;
    v24[5] = a6;
    *(v24 + 48) = a7;
    *(v24 + 49) = a8;
    *(v24 + 50) = a9;
    *(v24 + 51) = a10;
    *(v24 + 52) = a11;
    *(v24 + 14) = a12;
    *(v24 + 60) = a13;
    *(v24 + 61) = a14;
    *(v24 + 62) = a15;
    *(v24 + 72) = a16;
    v24[8] = a17;
    *(v24 + 92) = 0x8000007F7FFFFFLL;
  }

  return v24;
}

- (void)dealloc
{
  v3 = 0;
  v4 = *off_1E798A0B8;
  while (1)
  {
    input = self->_input;
    v6 = input ? input->_frames : 0;
    if ([(NSMutableArray *)v6 count]<= v3)
    {
      break;
    }

    v7 = self->_input;
    if (v7)
    {
      frames = v7->_frames;
    }

    else
    {
      frames = 0;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer([(NSMutableArray *)frames objectAtIndexedSubscript:v3]);
    v10 = CVBufferCopyAttachment(ImageBuffer, v4, 0);
    [v10 releaseAll];

    CVBufferRemoveAttachment(ImageBuffer, v4);
    ++v3;
  }

  [(BWNRFProcessorInput *)self->_input setDelegate:0];
  v11.receiver = self;
  v11.super_class = BWNRFProcessorRequest;
  [(BWNRFProcessorRequest *)&v11 dealloc];
}

- (const)clientBracketFrame
{
  if (a1 && *(a1 + 56) >= 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(v2 + 56);
    }

    else
    {
      v3 = 0;
    }

    v4 = [v3 count];
    v5 = *off_1E798A3C8;
    v6 = *off_1E798B1B8;
    v7 = v4;
    while (v7 >= 1)
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = *(v8 + 56);
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectAtIndexedSubscript:--v7];
      if ([objc_msgSend(CMGetAttachment(v10 v5] == *(a1 + 56))
      {
        return v10;
      }
    }
  }

  return 0;
}

- (uint64_t)imageType
{
  if (result)
  {
    v2 = [objc_msgSend(OUTLINED_FUNCTION_78_3(result) "captureStreamSettings")];
    v3 = [objc_msgSend(*(v1 + 16) "captureSettings")];
    if (*(v1 + 50))
    {
      return 4;
    }

    else
    {
      switch(v2)
      {
        case 10:
          if (*(v1 + 48))
          {
            result = 3;
          }

          else
          {
            result = 2;
          }

          break;
        case 11:
          v4 = 5;
          if (*(v1 + 48))
          {
            v4 = 6;
          }

          v5 = 33;
          if (*(v1 + 48))
          {
            v5 = 35;
          }

          if ((v3 & 0x800000000) != 0)
          {
            result = v5;
          }

          else
          {
            result = v4;
          }

          break;
        case 12:
          if (*(v1 + 48))
          {
            result = 14;
          }

          else if ((v3 & 0x4000000000) != 0 && [(BWNRFProcessorRequest *)v1 processingType]== 7)
          {
            result = 38;
          }

          else if ([objc_msgSend(*(v1 + 16) "captureSettings")])
          {
            result = 7;
          }

          else
          {
            result = 13;
          }

          break;
        case 13:
          if (*(v1 + 48) & 1) != 0 || (*(v1 + 49))
          {
            result = 53;
          }

          else if ([objc_msgSend(*(v1 + 16) "captureSettings")])
          {
            result = 51;
          }

          else
          {
            result = 52;
          }

          break;
        default:
          if (v2 == 1 && (v3 & 0x80) != 0)
          {
            if ([objc_msgSend(*(v1 + 16) "captureSettings")])
            {
              result = 29;
            }

            else
            {
              result = 1;
            }
          }

          else
          {
            result = 1;
          }

          break;
      }
    }
  }

  return result;
}

- (uint64_t)processingType
{
  if (result)
  {
    v2 = [objc_msgSend(OUTLINED_FUNCTION_78_3(result) "captureStreamSettings")];
    if (*(v1 + 48))
    {
      if (v2 == 13)
      {
LABEL_11:
        if (![objc_msgSend(*(v1 + 16) "captureSettings")])
        {
          return 10;
        }

        v4 = *(v1 + 49) == 0;
        v5 = 11;
        goto LABEL_13;
      }
    }

    else
    {
      if (*(v1 + 49) == 1 && v2 == 13)
      {
        goto LABEL_11;
      }

      if ((*(v1 + 50) & 1) == 0)
      {
        v6 = v2 - 10;
        result = 1;
        switch(v6)
        {
          case 0:
            return result;
          case 1:
            v7 = ([objc_msgSend(*(v1 + 16) "captureStreamSettings")] & 0x800000000) == 0;
            v8 = 4;
            v9 = 2;
            goto LABEL_21;
          case 2:
            v7 = [objc_msgSend(*(v1 + 16) "captureSettings")] == 0;
            v8 = 7;
            v9 = 3;
LABEL_21:
            if (v7)
            {
              return v9;
            }

            else
            {
              return v8;
            }

          case 3:
            if ([objc_msgSend(*(v1 + 16) "captureSettings")])
            {
              return 11;
            }

            else
            {
              return 10;
            }

          default:
            if (([objc_msgSend(*(v1 + 16) "captureSettings")] & 0x80) == 0)
            {
              return 0;
            }

            if (([objc_msgSend(*(v1 + 16) "captureSettings")] & 0x40000000000) != 0)
            {
              return 9;
            }

            if ([objc_msgSend(*(v1 + 16) "captureSettings")])
            {
              return 0;
            }

            v4 = [*(v1 + 8) learnedNRUsingNRFEnabled] == 0;
            v5 = 7;
            break;
        }

LABEL_13:
        if (v4)
        {
          return 0;
        }

        else
        {
          return v5;
        }
      }
    }

    return 0;
  }

  return result;
}

- (uint64_t)fusionErrorRecoveryImageType
{
  if (result)
  {
    v1 = result;
    v2 = [(BWNRFProcessorRequest *)result processingType]- 1;
    result = 3;
    switch(v2)
    {
      case 0:
        return result;
      case 1:
        result = 6;
        break;
      case 2:
        if ([objc_msgSend(objc_msgSend(v1 "input")] == 13)
        {
          result = 53;
        }

        else
        {
          result = 14;
        }

        break;
      case 3:
        result = 35;
        break;
      case 8:
        result = 1;
        break;
      case 9:
        result = 53;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

- (uint64_t)inferenceInputType
{
  if (result)
  {
    if (([objc_msgSend(OUTLINED_FUNCTION_78_3(result) "captureSettings")] & 0x4000000000) != 0 && (objc_msgSend(*(v1 + 16), "portType"), objc_msgSend(objc_msgSend(*(v1 + 16), "captureSettings"), "masterPortType"), (objc_msgSend(OUTLINED_FUNCTION_4(), "isEqualToString:") & 1) == 0) && -[BWNRFProcessorRequest processingType](v1) == 7)
    {
      return 39;
    }

    else
    {
      return 15;
    }
  }

  return result;
}

- (uint64_t)receivedAllFrames
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if ((*(result + 48) & 1) != 0 || *(result + 49) == 1)
  {
    if ([objc_msgSend(*(result + 16) "captureStreamSettings")] != 13 || (objc_msgSend(objc_msgSend(*(v2 + 16), "captureSettings"), "deliverDeferredPhotoProxyImage") & 1) != 0)
    {
      v3 = [*(v2 + 16) errorRecoveryFrame];
      return v3 != 0;
    }

    v6 = *(v2 + 16);
    if (v6)
    {
      v7 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_18;
  }

  if (*(result + 50) == 1)
  {
    v3 = [*(result + 16) originalImage];
    return v3 != 0;
  }

  if ((*(result + 52) & 1) != 0 || (*(result + 51) & 1) != 0 || [(BWNRFProcessorRequest *)result processingType]== 7)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = *(v4 + 56);
    }

    else
    {
      v5 = 0;
    }

    v3 = [v5 count];
    return v3 != 0;
  }

  if (*(v2 + 56) >= 1)
  {
    v3 = [(BWNRFProcessorRequest *)v2 clientBracketFrame];
    return v3 != 0;
  }

  v10 = [objc_msgSend(objc_msgSend(*(v2 + 16) "captureStreamSettings")];
  v7 = *(v2 + 16);
  if (!v10)
  {
    if (v7)
    {
      v7 = v7[7];
    }

LABEL_18:
    [v7 count];
    v8 = OUTLINED_FUNCTION_27_0();
    if ([(BWNRFProcessorRequest *)v8 processingType])
    {
      v9 = [*(v2 + 16) expectedFrameCount];
    }

    else
    {
      v9 = 1;
    }

    return v1 == v9;
  }

  return [v7 receivedAllFrames];
}

- (uint64_t)keepFramesUntilReferenceFrameSelected
{
  if (result)
  {
    return [objc_msgSend(OUTLINED_FUNCTION_78_3(result) "captureStreamSettings")] || objc_msgSend(objc_msgSend(*(v1 + 16), "captureStreamSettings"), "adaptiveBracketingGroupCaptureCount") > 0;
  }

  return result;
}

@end