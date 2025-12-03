@interface BWUBProcessorRequest
- (id)description;
- (uint64_t)expectedFrameCount;
- (uint64_t)fusionErrorRecoveryImageType;
- (uint64_t)imageType;
- (uint64_t)receivedAllFrames;
- (uint64_t)useFrameForMultiFrameProcessing:(uint64_t)result;
- (void)dealloc;
- (void)initWithInput:(void *)input output:(void *)output deepFusionOutput:(char)fusionOutput processErrorRecoveryFrame:(char)frame processOriginalImage:(char)image processSemanticRendering:(char)rendering provideInferenceInputImageForProcessing:(char)processing inferencesAvailable:(void *)self0 delegate:;
@end

@implementation BWUBProcessorRequest

- (void)dealloc
{
  [(BWUBProcessorInput *)self->_input setDelegate:0];

  v3.receiver = self;
  v3.super_class = BWUBProcessorRequest;
  [(BWUBProcessorRequest *)&v3 dealloc];
}

- (uint64_t)useFrameForMultiFrameProcessing:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [(BWUBNRFProcessorRequest *)result processingType];
    if (result)
    {
      if (result == 2)
      {
        [(BWUBNRFProcessorRequest *)a2 useFrameForMultiFrameProcessing:?];
        return v5;
      }

      else
      {
        [(BWUBProcessorRequest *)v3 useFrameForMultiFrameProcessing:a2, &v4];
        return v4;
      }
    }
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@, errorRecovery=%d, original=%d semanticRendering=%d inferenceInput=%d inferences=%d", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self->_input, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "portType"), self->_processErrorRecoveryFrame, self->_processOriginalImage, self->_processSemanticRendering, self->_provideInferenceInputImageForProcessing, self->_inferencesAvailable];
}

- (void)initWithInput:(void *)input output:(void *)output deepFusionOutput:(char)fusionOutput processErrorRecoveryFrame:(char)frame processOriginalImage:(char)image processSemanticRendering:(char)rendering provideInferenceInputImageForProcessing:(char)processing inferencesAvailable:(void *)self0 delegate:
{
  if (!self)
  {
    return 0;
  }

  v19.receiver = self;
  v19.super_class = BWUBProcessorRequest;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  if (v17)
  {
    v17[1] = a2;
    v17[2] = input;
    v17[3] = output;
    *(v17 + 32) = fusionOutput;
    *(v17 + 33) = frame;
    *(v17 + 34) = image;
    *(v17 + 35) = rendering;
    *(v17 + 36) = processing;
    v17[5] = available;
    *(v17 + 60) = 0x8000007F7FFFFFLL;
  }

  return v17;
}

- (uint64_t)imageType
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 8) "captureStreamSettings")];
    if (*(v1 + 33))
    {
      return 4;
    }

    if (v2 == 12)
    {
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
    }

    else
    {
      if (v2 == 11)
      {
        v3 = *(v1 + 32) == 0;
        v4 = 5;
      }

      else
      {
        if (v2 != 10)
        {
          return 1;
        }

        v3 = *(v1 + 32) == 0;
        v4 = 2;
      }

      if (v3)
      {
        return v4;
      }

      else
      {
        return v4 + 1;
      }
    }
  }

  return result;
}

- (uint64_t)fusionErrorRecoveryImageType
{
  if (result)
  {
    return qword_1AD055AF8[[(BWUBNRFProcessorRequest *)result processingType]];
  }

  return result;
}

- (uint64_t)expectedFrameCount
{
  if (result)
  {
    v1 = result;
    if ([(BWUBNRFProcessorRequest *)result processingType])
    {
      captureStreamSettings = [*(v1 + 8) captureStreamSettings];

      return [captureStreamSettings expectedFrameCount];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)receivedAllFrames
{
  if (result)
  {
    v2 = result;
    if (*(result + 32) == 1)
    {
      errorRecoveryFrame = [*(result + 8) errorRecoveryFrame];
      return errorRecoveryFrame != 0;
    }

    v4 = *(result + 33);
    v5 = *(result + 8);
    if (v4 == 1)
    {
      errorRecoveryFrame = [v5 originalImage];
      return errorRecoveryFrame != 0;
    }

    v6 = [objc_msgSend(v5 "captureStreamSettings")];
    v7 = *(v2 + 8);
    if (v6)
    {

      return [v7 receivedAllFrames];
    }

    else
    {
      if (v7)
      {
        v7 = v7[7];
      }

      [v7 count];
      v8 = OUTLINED_FUNCTION_27_0();
      if ([(BWUBNRFProcessorRequest *)v8 processingType])
      {
        v9 = [objc_msgSend(*(v2 + 8) "captureStreamSettings")];
      }

      else
      {
        v9 = 1;
      }

      return v1 == v9;
    }
  }

  return result;
}

- (uint64_t)useFrameForMultiFrameProcessing:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
  }

  result = [v7 count];
  v9 = result;
  v10 = result - 1;
  while (1)
  {
    v11 = __OFSUB__(v9--, 1);
    if (v9 < 0 != v11)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(v12 + 56);
    }

    else
    {
      v13 = 0;
    }

    result = [v13 objectAtIndexedSubscript:v10--];
    if (result == a2)
    {
      v14 = [objc_msgSend(*(a1 + 8) "captureStreamSettings")] == v9;
      result = [objc_msgSend(*(a1 + 8) "captureStreamSettings")];
      v15 = v14 | result ^ 1;
      goto LABEL_11;
    }
  }

  v15 = 1;
LABEL_11:
  *a3 = v15 & 1;
  return result;
}

@end