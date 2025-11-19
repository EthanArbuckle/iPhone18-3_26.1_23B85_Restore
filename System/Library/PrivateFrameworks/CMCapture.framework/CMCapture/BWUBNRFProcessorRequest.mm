@interface BWUBNRFProcessorRequest
- (const)clientBracketFrame;
- (id)description;
- (uint64_t)fusionErrorRecoveryImageType;
- (uint64_t)imageType;
- (uint64_t)processingType;
- (uint64_t)receivedAllFrames;
- (uint64_t)useFrameForMultiFrameProcessing:(uint64_t)result;
- (void)dealloc;
- (void)initWithInput:(void *)a3 output:(void *)a4 deepFusionOutput:(char)a5 processErrorRecoveryFrame:(char)a6 processOriginalImage:(int)a7 clientBracketSequenceNumber:(char)a8 processSemanticRendering:(char)a9 provideInferenceInputImageForProcessing:(char)a10 inferencesAvailable:(void *)a11 delegate:;
@end

@implementation BWUBNRFProcessorRequest

- (uint64_t)useFrameForMultiFrameProcessing:(uint64_t)result
{
  if (result)
  {
    result = [(BWUBNRFProcessorRequest *)result processingType];
    if (result > 1)
    {
      if (result != 3)
      {
        [(BWUBNRFProcessorRequest *)a2 useFrameForMultiFrameProcessing:?];
        return v3;
      }
    }

    else if (!result)
    {
      return result;
    }

    return (BWStillImageCaptureFrameFlagsForSampleBuffer(a2) & 0x30) != 32;
  }

  return result;
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self->_input captureSettings] settingsID];
  v5 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self->_input captureStreamSettings] captureType]);
  return [v7 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@, errorRecovery=%d original=%d semanticRendering=%d inferenceInputForProcessing=%d inferences=%d input:<%@ %p>", v3, self, v4, v5, -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "portType"), self->_processErrorRecoveryFrame, self->_processOriginalImage, self->_processSemanticRendering, self->_provideInferenceInputImageForProcessing, self->_inferencesAvailable, objc_opt_class(), self->_input];
}

- (void)initWithInput:(void *)a3 output:(void *)a4 deepFusionOutput:(char)a5 processErrorRecoveryFrame:(char)a6 processOriginalImage:(int)a7 clientBracketSequenceNumber:(char)a8 processSemanticRendering:(char)a9 provideInferenceInputImageForProcessing:(char)a10 inferencesAvailable:(void *)a11 delegate:
{
  if (!a1)
  {
    return 0;
  }

  v20.receiver = a1;
  v20.super_class = BWUBNRFProcessorRequest;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  if (v18)
  {
    v18[1] = a2;
    v18[2] = a3;
    v18[3] = a4;
    *(v18 + 32) = a5;
    *(v18 + 33) = a6;
    *(v18 + 9) = a7;
    *(v18 + 40) = a8;
    *(v18 + 41) = a9;
    *(v18 + 42) = a10;
    v18[6] = a11;
    v18[9] = 0x8000007F7FFFFFLL;
  }

  return v18;
}

- (void)dealloc
{
  v3 = 0;
  v4 = *off_1E798A0B8;
  while (1)
  {
    input = self->_input;
    v6 = input ? input->_frames : 0;
    v7 = [(NSMutableArray *)v6 count];
    v8 = self->_input;
    if (v7 <= v3)
    {
      break;
    }

    if (v8)
    {
      v8 = v8->_frames;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer([(BWUBNRFProcessorInput *)v8 objectAtIndexedSubscript:v3]);
    OUTLINED_FUNCTION_21_2();
    v13 = CVBufferCopyAttachment(v10, v11, v12);
    [v13 releaseAll];

    CVBufferRemoveAttachment(ImageBuffer, v4);
    ++v3;
  }

  [(BWUBNRFProcessorInput *)v8 setDelegate:0];

  v14.receiver = self;
  v14.super_class = BWUBNRFProcessorRequest;
  [(BWUBNRFProcessorRequest *)&v14 dealloc];
}

- (const)clientBracketFrame
{
  if (a1 && *(a1 + 36) >= 1)
  {
    v2 = *(a1 + 8);
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
      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = *(v8 + 56);
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectAtIndexedSubscript:--v7];
      if ([objc_msgSend(CMGetAttachment(v10 v5] == *(a1 + 36))
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
    v1 = result;
    v2 = [objc_msgSend(*(result + 8) "captureStreamSettings")];
    v3 = [objc_msgSend(*(v1 + 8) "captureSettings")];
    if (*(v1 + 33))
    {
      return 4;
    }

    switch(v2)
    {
      case 1:
        if ((v3 & 0x80) == 0)
        {
          return 1;
        }

        if ([objc_msgSend(*(v1 + 8) "captureSettings")])
        {
          return 29;
        }

        else
        {
          return 1;
        }

      case 12:
        if (*(v1 + 32))
        {
          return 14;
        }

        else if ([objc_msgSend(*(v1 + 8) "captureSettings")])
        {
          return 7;
        }

        else
        {
          return 13;
        }

      case 11:
        v4 = *(v1 + 32) == 0;
        v5 = 5;
LABEL_12:
        if (v4)
        {
          return v5;
        }

        else
        {
          return v5 + 1;
        }

      case 10:
        v4 = *(v1 + 32) == 0;
        v5 = 2;
        goto LABEL_12;
      default:
        return 1;
    }
  }

  return result;
}

- (uint64_t)fusionErrorRecoveryImageType
{
  if (result)
  {
    return qword_1AD046688[[(BWUBNRFProcessorRequest *)result processingType]];
  }

  return result;
}

- (uint64_t)processingType
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 8) "captureStreamSettings")];
    if (*(v1 + 32) & 1) != 0 || (*(v1 + 33))
    {
      return 0;
    }

    else if ((v2 - 10) >= 3)
    {
      return 0;
    }

    else
    {
      return (v2 - 9);
    }
  }

  return result;
}

- (uint64_t)receivedAllFrames
{
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_50_0();
    if (v3)
    {
      v4 = [*(v2 + 8) errorRecoveryFrame];
      return v4 != 0;
    }

    if (*(v2 + 33) == 1)
    {
      v4 = [*(v2 + 8) originalImage];
      return v4 != 0;
    }

    if (*(v2 + 36) >= 1)
    {
      v4 = [(BWUBNRFProcessorRequest *)v2 clientBracketFrame];
      return v4 != 0;
    }

    v5 = [objc_msgSend(objc_msgSend(*(v2 + 8) "captureStreamSettings")];
    v6 = *(v2 + 8);
    if (v5)
    {

      return [v6 receivedAllFrames];
    }

    else
    {
      if (v6)
      {
        v6 = v6[7];
      }

      [v6 count];
      v7 = OUTLINED_FUNCTION_27_0();
      if ([(BWUBNRFProcessorRequest *)v7 processingType])
      {
        v8 = [*(v2 + 8) expectedFrameCount];
      }

      else
      {
        v8 = 1;
      }

      return v1 == v8;
    }
  }

  return result;
}

- (uint64_t)useFrameForMultiFrameProcessing:(const void *)a1 .cold.1(const void *a1, _BYTE *a2)
{
  result = [objc_msgSend(CMGetAttachment(a1 *off_1E798A3C8];
  *a2 = result ^ 1;
  return result;
}

@end