@interface BWAppClipCodeNode
- (BWAppClipCodeNode)initWithProcessingQueuePriority:(unsigned int)priority;
- (uint64_t)_endAppClipCodeSession;
- (void)_processSampleBuffer:(uint64_t)buffer;
- (void)_startAppClipCodeSession;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didReceiveAppC3DUpdate:(void *)update userData:;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWAppClipCodeNode

- (BWAppClipCodeNode)initWithProcessingQueuePriority:(unsigned int)priority
{
  v9.receiver = self;
  v9.super_class = BWAppClipCodeNode;
  v3 = [(BWNode *)&v9 init];
  if (v3)
  {
    v4 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v3];
    [(BWNodeInput *)v4 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNode *)v3 addInput:v4];
    [(BWFormatRequirements *)[(BWNodeInput *)v3->super._input formatRequirements] setSupportedPixelFormats:&unk_1F2248370];
    v5 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v3];
    [(BWNodeOutput *)v5 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:0]];
    [(BWNode *)v3 addOutput:v5];
    v3->_weakSelf = [FigWeakReference weakReferenceToObject:v3];
    v3->_processingQueue = FigDispatchQueueCreateWithPriority();
    if (MEMORY[0x1EEE83408])
    {
      v6 = MEMORY[0x1EEE83410] == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    v3->_appC3DAvailable = v7;
  }

  return v3;
}

- (void)dealloc
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__BWAppClipCodeNode_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(processingQueue, block);

  v4.receiver = self;
  v4.super_class = BWAppClipCodeNode;
  [(BWNode *)&v4 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BWAppClipCodeNode_prepareForCurrentConfigurationToBecomeLive__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(processingQueue, block);
  v4.receiver = self;
  v4.super_class = BWAppClipCodeNode;
  [(BWNode *)&v4 prepareForCurrentConfigurationToBecomeLive];
}

- (void)didReachEndOfDataForInput:(id)input
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__BWAppClipCodeNode_didReachEndOfDataForInput___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(processingQueue, block);
  v6.receiver = self;
  v6.super_class = BWAppClipCodeNode;
  [(BWNode *)&v6 didReachEndOfDataForInput:input];
}

- (uint64_t)_endAppClipCodeSession
{
  if (result)
  {
    v1 = result;
    result = _FigIsCurrentDispatchQueue();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
    }

    if (*(v1 + 136) == 1)
    {
      result = *(v1 + 128);
      if (result)
      {
        result = AppC3DRelease();
        *(v1 + 128) = 0;
      }
    }
  }

  return result;
}

- (void)_startAppClipCodeSession
{
  if (self)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (*(self + 136) == 1 && !*(self + 128))
    {
      AppC3DConfigCreate();
      AppC3DConfigSetTrackingMode();
      AppC3DConfigSetMaxNumberCodesToTrack();
      AppC3DCreate();
      AppC3DSetUpdateCallback();
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, *off_1E798A340, 0);
  v7 = v6;
  if (v6)
  {
    dispatch_group_enter(v6);
  }

  if ([CMGetAttachment(buffer *off_1E798A460])
  {
    processingQueue = self->_processingQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__BWAppClipCodeNode_renderSampleBuffer_forInput___block_invoke;
    v9[3] = &unk_1E7990178;
    v9[4] = self;
    v9[5] = buffer;
    dispatch_sync(processingQueue, v9);
  }

  if (v7)
  {
    dispatch_group_leave(v7);
  }
}

- (void)_processSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v21 = 0;
    memset(&v20, 0, sizeof(v20));
    CMSampleBufferGetPresentationTimeStamp(&v20, a2);
    *time = v20;
    CMTimeGetSeconds(time);
    v19 = 0u;
    memset(time, 0, sizeof(time));
    v4 = CMGetAttachment(a2, *MEMORY[0x1E6960470], 0);
    if (v4)
    {
      v5 = v4;
      if ([v4 length] == 48)
      {
        [v5 getBytes:time length:{objc_msgSend(v5, "length")}];
        v13 = vcvtq_f64_f32(vzip1_s32(*time, *&time[16]));
        v14 = vcvtq_f64_f32(__PAIR64__(*&time[4], v19));
        v15 = vcvtq_f64_f32(vzip2_s32(*&time[16], *&v19));
        v16 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(*time, *time, 8uLL), *&vextq_s8(*&time[16], *&time[16], 8uLL)));
        v17 = *(&v19 + 2);
        ImageBuffer = CMSampleBufferGetImageBuffer(a2);
        if (ImageBuffer && (*(buffer + 160) & 1) == 0)
        {
          v7 = ImageBuffer;
          *(buffer + 164) = [CMGetAttachment(ImageBuffer @"RotationDegrees"];
          *(buffer + 168) = [CMGetAttachment(v7 @"MirroredHorizontal"];
          *(buffer + 169) = [CMGetAttachment(v7 @"MirroredVertical"];
          *(buffer + 160) = 1;
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v9 = *MEMORY[0x1E695E480];
        v12 = v20;
        [dictionary setObject:CMTimeCopyAsDictionary(&v12 forKeyedSubscript:{v9), @"pts"}];
        memset(&v11, 0, sizeof(v11));
        BWGetOriginalPresentationTimeStampFromBuffer(a2, &v11);
        v12 = v11;
        [dictionary setObject:CMTimeCopyAsDictionary(&v12 forKeyedSubscript:{v9), @"OriginalPTS"}];
        [dictionary setObject:CMGetAttachment(a2 forKeyedSubscript:{*off_1E798A438, 0), @"primaryCaptureRectBeforeCropping"}];
        [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
        if (*(buffer + 136) == 1)
        {
          CMSampleBufferGetImageBuffer(a2);
          AppC3DProcessCameraFrameData();
          v10 = v21;
          if (v21 || (AppC3DFlush(), (v10 = v21) != 0))
          {
            CFRelease(v10);
          }
        }
      }
    }
  }
}

- (void)didReceiveAppC3DUpdate:(void *)update userData:
{
  if (self)
  {
    v42 = 0;
    NumberOfTrackingData = AppC3DTrackingResultGetNumberOfTrackingData();
    dictionaryRepresentation = [update objectForKeyedSubscript:@"pts"];
    value = [MEMORY[0x1E695DF70] array];
    if (NumberOfTrackingData)
    {
      v5 = 0;
      do
      {
        OUTLINED_FUNCTION_1_37();
        v6 = AppC3DTrackingResultCreateData();
        v7 = v42;
        if (v42)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_1_37();
        Metadata = AppC3DTrackingResultGetMetadata();
        v7 = v42;
        if (v42)
        {
          goto LABEL_29;
        }

        DataVersion = AppC3DTrackingResultGetDataVersion();
        v7 = v42;
        if (v42)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_1_37();
        v10 = AppC3DTrackingResultCreateCorners();
        v7 = v42;
        if (v42)
        {
          goto LABEL_29;
        }

        if ([v10 count] != 4)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          goto LABEL_28;
        }

        v11 = *(MEMORY[0x1E695F050] + 16);
        rect.origin = *MEMORY[0x1E695F050];
        rect.size = v11;
        CGRectMakeWithDictionaryRepresentation([update objectForKeyedSubscript:@"primaryCaptureRectBeforeCropping"], &rect);
        memset(&sampleTimingArray, 0, 48);
        FigCaptureGetTransformForMirroringRotationAndCrop(*(self + 168), *(self + 169), *(self + 164), &sampleTimingArray, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
        v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
        v13 = 0;
        v14 = 0.0;
        x = 1.0;
        v16 = 1.0;
        v17 = 0.0;
        do
        {
          point.x = 0.0;
          point.y = 0.0;
          CGPointMakeWithDictionaryRepresentation([v10 objectAtIndexedSubscript:v13], &point);
          v18 = vaddq_f64(*&sampleTimingArray.presentationTimeStamp.timescale, vmlaq_n_f64(vmulq_n_f64(*&sampleTimingArray.duration.epoch, point.y), *&sampleTimingArray.duration.value, point.x));
          point = v18;
          y = v18.y;
          [v12 addObject:CGPointCreateDictionaryRepresentation(v18)];
          if (point.x < x)
          {
            x = point.x;
          }

          if (point.x > v14)
          {
            v14 = point.x;
          }

          if (point.y < v16)
          {
            v16 = point.y;
          }

          if (point.y > v17)
          {
            v17 = point.y;
          }

          ++v13;
        }

        while (v13 != 4);
        v43.origin.x = x;
        v43.origin.y = v16;
        v43.size.width = (v14 - x);
        v43.size.height = (v17 - v16);
        v20 = CGRectCreateDictionaryRepresentation(v43);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:v6 forKeyedSubscript:@"RawData"];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", Metadata), @"Metadata"}];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", DataVersion), @"Version"}];
        [dictionary setObject:v12 forKeyedSubscript:@"Corners"];
        [dictionary setObject:v20 forKeyedSubscript:@"BoundingRect"];
        [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"TimeStamp"];
        [value addObject:dictionary];
      }

      while (++v5 != NumberOfTrackingData);
    }

    v22 = [update objectForKeyedSubscript:@"OriginalPTS"];
    memset(&v39, 0, sizeof(v39));
    CMTimeMakeFromDictionary(&v39, v22);
    v23 = NumberOfTrackingData;
    if (!NumberOfTrackingData)
    {
      v23 = *(self + 184);
    }

    *(self + 184) = NumberOfTrackingData;
    v24 = *(self + 176);
    sampleTimingArray.duration = v39;
    [v24 node:self didEmitCodesCount:NumberOfTrackingData emittedIdentifiers:0 originalPTS:&sampleTimingArray];
    if (v23 >= 1)
    {
      *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
      v37 = *&sampleTimingArray.duration.value;
      sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      epoch = sampleTimingArray.duration.epoch;
      memset(&rect, 0, 24);
      CMTimeMakeFromDictionary(&rect, dictionaryRepresentation);
      *&sampleTimingArray.presentationTimeStamp.value = rect.origin;
      sampleTimingArray.presentationTimeStamp.epoch = *&rect.size.width;
      *&sampleTimingArray.decodeTimeStamp.value = v37;
      sampleTimingArray.decodeTimeStamp.epoch = epoch;
      point.x = 0.0;
      OUTLINED_FUNCTION_2_5();
      v32 = CMSampleBufferCreate(v26, v27, v28, v29, v30, v31, 0, 1, &sampleTimingArray, 0, 0, &point);
      v33 = point.x;
      if (*&point.x && !v32)
      {
        CMSetAttachment(*&point.x, @"AppClipCodes", value, 1u);
        CMSetAttachment(*&point.x, @"AppClipCodesCount", [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(value, "count")}], 1u);
        [*(self + 16) emitSampleBuffer:*&point.x];
        v33 = point.x;
      }

      if (v33 != 0.0)
      {
        CFRelease(*&v33);
      }
    }

LABEL_28:
    v7 = v42;
    if (v42)
    {
LABEL_29:
      CFRelease(v7);
    }
  }
}

@end