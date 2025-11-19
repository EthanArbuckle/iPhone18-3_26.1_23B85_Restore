@interface BWDeepFusionProcessorRequest
- (id)description;
- (id)initWithInput:(void *)a3 delegate:;
- (uint64_t)receivedAllBuffers;
- (void)dealloc;
@end

@implementation BWDeepFusionProcessorRequest

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(BWDeepFusionProcessorInput *)self->_input inputBuffers];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = *off_1E798A0B8;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = CVBufferCopyAttachment([v9 buffer], v7, 0);
        [v10 releaseAll];

        CVBufferRemoveAttachment([v9 buffer], v7);
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v5);
  }

  [(BWDeepFusionProcessorInput *)self->_input setDelegate:0];

  v11.receiver = self;
  v11.super_class = BWDeepFusionProcessorRequest;
  [(BWDeepFusionProcessorRequest *)&v11 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ cache:%d", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self->_input, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "portType"), self->_cacheBuffers];
}

- (id)initWithInput:(void *)a3 delegate:
{
  if (!a1)
  {
    return 0;
  }

  v16.receiver = a1;
  v16.super_class = BWDeepFusionProcessorRequest;
  v5 = objc_msgSendSuper2(&v16, sel_init);
  if (v5)
  {
    *(v5 + 1) = a2;
    *(v5 + 2) = a3;
    v6 = [*(v5 + 1) captureStreamSettings];
    v7 = [v6 captureFlags];
    if ((v7 & 4) != 0)
    {
      v8 = ((v7 >> 2) >> 31) + [v6 expectedEVZeroFrameCount] - 1;
    }

    else
    {
      v8 = 0;
    }

    *(v5 + 6) = v8;
    v9 = [*(v5 + 1) captureStreamSettings];
    v10 = *(v5 + 6);
    v11 = [v9 captureFlags];
    if ((v11 & 4) == 0)
    {
      v12 = [MEMORY[0x1E695DFA8] setWithArray:&unk_1F2249CA8];
      if ((v11 & 0x400000) != 0)
      {
        v13 = &unk_1F2246DE0;
LABEL_18:
        [v12 addObject:v13];
      }

LABEL_19:
      *(v5 + 4) = v12;
      return v5;
    }

    v14 = [MEMORY[0x1E695DFA8] setWithObject:&unk_1F2246D08];
    v12 = v14;
    if (v10 >= 1)
    {
      [v14 addObject:&unk_1F2246D20];
    }

    if ((v11 & 0x200000000) != 0)
    {
      [v12 addObject:&unk_1F2246D38];
      if ((v11 & 0x100000) == 0)
      {
LABEL_13:
        if ((v11 & 0x400000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    else if ((v11 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    [v12 addObject:&unk_1F2246D50];
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v13 = &unk_1F2246D68;
    goto LABEL_18;
  }

  return v5;
}

- (uint64_t)receivedAllBuffers
{
  if (result)
  {
    v1 = result;
    if ([*(result + 8) onlyApplyingSemanticStyle])
    {
      return [objc_msgSend(*(v1 + 8) "inputBuffers")] != 0;
    }

    else
    {
      v2 = [MEMORY[0x1E695DFA8] set];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v3 = [*(v1 + 8) inputBuffers];
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        v7 = *v12;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v11 + 1) + 8 * i);
            if ([v9 type] == 24)
            {
              ++v6;
            }

            if ([v9 type] != 19)
            {
              [v9 type];
              [OUTLINED_FUNCTION_37_0() numberWithUnsignedLongLong:?];
              [OUTLINED_FUNCTION_4() addObject:?];
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
        }

        while (v5);
      }

      else
      {
        v6 = 0;
      }

      if (v6 == *(v1 + 24))
      {
        return [*(v1 + 32) isEqualToSet:v2];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

@end