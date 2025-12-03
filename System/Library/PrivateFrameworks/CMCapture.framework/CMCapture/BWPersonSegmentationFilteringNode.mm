@interface BWPersonSegmentationFilteringNode
- (BWPersonSegmentationFilteringNode)initWithGPUPriority:(int)priority frameRateUpsamplingEnabled:(BOOL)enabled metalCommandQueue:(id)queue;
- (uint64_t)_loadAndConfigureSegmentationMaskFilter;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWPersonSegmentationFilteringNode

- (uint64_t)_loadAndConfigureSegmentationMaskFilter
{
  if (result)
  {
    v1 = result;
    v12 = 0;
    if (*(result + 144))
    {
      return 0;
    }

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors", @"SemanticStyle", 1, v12];
    v3 = [MEMORY[0x1E696AAE8] bundleWithPath:v2];
    if (v3)
    {
      v4 = v3;
      if (![v3 loadAndReturnError:&v12])
      {
        return 4294954510;
      }

      v5 = [v4 classNamed:@"FigSemanticStyleFilteringV1"];
      if (v5)
      {
        v6 = v5;
        metalDevice = [MEMORY[0x1E6991778] metalDevice];
        if (metalDevice)
        {
          v8 = *(v1 + 168);
          if (v8 || (v8 = [metalDevice newCommandQueue]) != 0)
          {
            v9 = *(v1 + 128);
            if (v9)
            {
              if (v9 != 1)
              {
LABEL_14:
                v11 = [[v6 alloc] initWithCommandQueue:v8];
                *(v1 + 144) = v11;
                [v11 setMaskInterpolationEnabled:*(v1 + 132)];
                [*(v1 + 144) prepareToProcess:0];
                return 0;
              }

              v10 = 1;
            }

            else
            {
              v10 = 4;
            }

            [v8 setGPUPriority:v10];
            goto LABEL_14;
          }
        }
      }

      OUTLINED_FUNCTION_2_55();
      OUTLINED_FUNCTION_8_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2_55();
    }

    else
    {
      OUTLINED_FUNCTION_2_55();
      OUTLINED_FUNCTION_8_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2_55();
    }

    return FigSignalErrorAtGM();
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  [(BWPersonSegmentationFilteringNode *)self _loadAndConfigureSegmentationMaskFilter];
  v3.receiver = self;
  v3.super_class = BWPersonSegmentationFilteringNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
}

- (BWPersonSegmentationFilteringNode)initWithGPUPriority:(int)priority frameRateUpsamplingEnabled:(BOOL)enabled metalCommandQueue:(id)queue
{
  v19.receiver = self;
  v19.super_class = BWPersonSegmentationFilteringNode;
  v8 = [(BWNode *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_gpuPriority = priority;
    v8->_frameRateUpsamplingEnabled = enabled;
    v8->_commandQueue = queue;
    v10 = objc_alloc_init(BWVideoFormatRequirements);
    v11 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setFormatRequirements:v10];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setDelayedBufferCount:1];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setPassthroughMode:1];
    v12 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v12 setFormatRequirements:v10];
    [(BWNodeInputMediaConfiguration *)v12 setDelayedBufferCount:1];
    [(BWNodeInputMediaConfiguration *)v12 setPassthroughMode:0];
    [(BWNodeInput *)v11 setMediaConfiguration:v12 forAttachedMediaKey:0x1F21AABF0];
    v13 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v13 setFormatRequirements:v10];
    [(BWNodeInputMediaConfiguration *)v13 setDelayedBufferCount:1];
    [(BWNodeInputMediaConfiguration *)v13 setPassthroughMode:1];
    [(BWNodeInput *)v11 setMediaConfiguration:v13 forAttachedMediaKey:0x1F21AAC30];
    v14 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v14 setFormatRequirements:v10];
    [(BWNodeInputMediaConfiguration *)v14 setDelayedBufferCount:1];
    [(BWNodeInputMediaConfiguration *)v14 setPassthroughMode:0];
    [(BWNodeInput *)v11 setMediaConfiguration:v14 forAttachedMediaKey:0x1F219EA90];
    v15 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v15 setFormatRequirements:v10];
    [(BWNodeInputMediaConfiguration *)v15 setDelayedBufferCount:1];
    [(BWNodeInputMediaConfiguration *)v15 setPassthroughMode:0];
    [(BWNodeInput *)v11 setMediaConfiguration:v15 forAttachedMediaKey:0x1F219EA70];
    [(BWNode *)v9 addInput:v11];

    v16 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v16 primaryMediaConfiguration] setFormatRequirements:v10];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v16 primaryMediaConfiguration] setPassthroughMode:1];
    v17 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v17 setFormatRequirements:v10];
    [(BWNodeOutputMediaConfiguration *)v17 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v17 setProvidesPixelBufferPool:1];
    [(BWNodeOutput *)v16 setMediaConfiguration:v17 forAttachedMediaKey:0x1F21AABF0];
    [(BWNode *)v9 addOutput:v16];
  }

  return v9;
}

- (void)dealloc
{
  cachedFilteredMaskSampleBuffer = self->_cachedFilteredMaskSampleBuffer;
  if (cachedFilteredMaskSampleBuffer)
  {
    CFRelease(cachedFilteredMaskSampleBuffer);
    self->_cachedFilteredMaskSampleBuffer = 0;
  }

  filteredMaskFormatDescription = self->_filteredMaskFormatDescription;
  if (filteredMaskFormatDescription)
  {
    CFRelease(filteredMaskFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWPersonSegmentationFilteringNode;
  [(BWNode *)&v5 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:format];
  }

  else if ([key isEqualToString:0x1F21AABF0])
  {
    v10 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:key];
    v11 = objc_alloc_init(BWVideoFormatRequirements);
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(format, "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v11, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1]);
    width = [format width];
    height = [format height];
    if (self->_alignsMaskWithPrimaryCaptureRect)
    {
      width2 = [(BWVideoFormat *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->super._output primaryMediaProperties] resolvedVideoFormat] width];
      height2 = [(BWVideoFormat *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->super._output primaryMediaProperties] resolvedVideoFormat] height];
      inputOrientationRelativeToSensor = self->_inputOrientationRelativeToSensor;
      if (inputOrientationRelativeToSensor == 270)
      {
        v17 = height2;
      }

      else
      {
        v17 = width2;
      }

      if (inputOrientationRelativeToSensor == 270)
      {
        v18 = width2;
      }

      else
      {
        v18 = height2;
      }

      v19 = inputOrientationRelativeToSensor == 90;
      if (inputOrientationRelativeToSensor == 90)
      {
        v20 = height2;
      }

      else
      {
        v20 = v17;
      }

      if (v19)
      {
        v21 = width2;
      }

      else
      {
        v21 = v18;
      }

      width = vcvtas_u32_f32((height * v20) / v21);
    }

    [(BWVideoFormatRequirements *)v11 setWidth:width];
    [(BWVideoFormatRequirements *)v11 setHeight:height];
    [v10 setFormatRequirements:v11];
  }

  else if (([key isEqualToString:0x1F219EA90] & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F219EA70) & 1) == 0)
  {
    v22.receiver = self;
    v22.super_class = BWPersonSegmentationFilteringNode;
    [(BWNode *)&v22 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  IsMarkerBuffer = BWSampleBufferIsMarkerBuffer(buffer);
  v7 = MEMORY[0x1E695FF58];
  if (IsMarkerBuffer)
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    goto LABEL_80;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    CMSampleBufferGetPresentationTimeStamp(&v48, buffer);
    time.origin = *&v48.value;
    *&time.size.width = v48.epoch;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter finishProcessing];
  v46 = 0x1F219EA70;
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F219EA70);
  if (AttachedMedia)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  }

  else
  {
    ImageBuffer = 0;
  }

  v10 = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AABF0);
  v45 = 0x1F219EA90;
  v11 = BWSampleBufferGetAttachedMedia(buffer, 0x1F219EA90);
  if (v11)
  {
    v12 = CMSampleBufferGetImageBuffer(v11);
  }

  else
  {
    v12 = 0;
  }

  v43 = v10;
  if (v10)
  {
    v10 = CMSampleBufferGetImageBuffer(v10);
  }

  AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(buffer, 105);
  v14 = [objc_msgSend(AttachedInferenceResult "preventionReason")];
  v15 = [objc_msgSend(AttachedInferenceResult "preventionReason")];
  if (AttachedInferenceResult)
  {
    v16 = [AttachedInferenceResult preventionReason] == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v14;
  if (!self->_inferencePreviouslyAttached)
  {
    self->_inferencePreviouslyAttached = AttachedInferenceResult != 0;
    v17 = (AttachedInferenceResult == 0) | v14;
  }

  if (((v17 | v15 | v16) & 1) == 0)
  {
    [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
    v18 = 0;
    goto LABEL_85;
  }

  v18 = CFRetain(buffer);
  if (!v18)
  {
    [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
LABEL_85:
    v19 = 0;
    v7 = MEMORY[0x1E695FF58];
LABEL_76:
    CMSampleBufferGetPresentationTimeStamp(&time, buffer);
    [(BWNodeOutput *)self->super._output emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BF90 pts:&time]];
    if (!v18)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (!v16)
  {
    if (v14)
    {
      if (self->_frameRateUpsamplingEnabled)
      {
        v19 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{0x1F21AABF0), "livePixelBufferPool"), "newPixelBuffer"}];
        if (v19)
        {
          if (v12)
          {
            time.origin.x = 0.0;
            time.origin.y = 0.0;
            __asm { FMOV            V0.2D, #1.0 }

            time.size = _Q0;
            if (self->_alignsMaskWithPrimaryCaptureRect)
            {
              v32 = CMGetAttachment(buffer, *off_1E798A430, 0);
              if (v32)
              {
                CGRectMakeWithDictionaryRepresentation(v32, &time);
              }
            }

            [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setInputImagePixelBuffer:CMSampleBufferGetImageBuffer(buffer)];
            if ([(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter inputImagePixelBuffer])
            {
              [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setInputMaskPixelBuffer:0];
              [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setInputImageCropRectangle:time.origin.x, time.origin.y, time.size.width, time.size.height];
              [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setRotationDegreesToApplyToInputImage:-self->_inputOrientationRelativeToSensor];
              height = 1.0;
              y = 0.0;
              if (self->_alignsMaskWithPrimaryCaptureRect)
              {
                inputOrientationRelativeToSensor = self->_inputOrientationRelativeToSensor;
                if (inputOrientationRelativeToSensor == 270)
                {
                  x = time.origin.x;
                  y = time.origin.y;
                  width = time.size.width;
                  height = time.size.height;
                }

                else
                {
                  x = 0.0;
                  width = 1.0;
                  if (inputOrientationRelativeToSensor == 90)
                  {
                    x = time.origin.x;
                    width = time.size.width;
                    height = time.size.height;
                    y = 1.0 - (time.origin.y + time.size.height);
                  }
                }
              }

              else
              {
                x = 0.0;
                width = 1.0;
              }

              [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setDestinationRectangleInOutputMaskPixelBuffer:y, x, height, width, v43];
              [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setOutputMaskPixelBuffer:v19];
              [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setOpticalFlowDisplacementPixelBuffer:v12];
              if ([(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter process])
              {
                goto LABEL_97;
              }

              v48.value = 0;
              CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(self->_cachedFilteredMaskSampleBuffer, v19, &self->_filteredMaskFormatDescription, &v48);
              if (!v48.value)
              {
                [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
                goto LABEL_98;
              }

              CMSetAttachment(v48.value, @"PersonSegmentationMaskToMainImageRotationDegrees", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_inputOrientationRelativeToSensor], 1u);
              BWSampleBufferSetAttachedMedia(v18, 0x1F21AABF0, v48.value);
              if (v48.value)
              {
                CFRelease(v48.value);
              }

              cachedFilteredMaskSampleBuffer = self->_cachedFilteredMaskSampleBuffer;
              if (cachedFilteredMaskSampleBuffer)
              {
                CFRelease(cachedFilteredMaskSampleBuffer);
                self->_cachedFilteredMaskSampleBuffer = 0;
              }

              BWCMSampleBufferCreateCopyIncludingMetadata(v48.value, &self->_cachedFilteredMaskSampleBuffer);
              if (!self->_cachedFilteredMaskSampleBuffer)
              {
                [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
                goto LABEL_98;
              }

              goto LABEL_73;
            }

            [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
          }

          else
          {
            [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
          }
        }

        else
        {
          [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
        }

LABEL_97:
        CopyWithNewPixelBuffer = 0;
LABEL_98:
        v7 = MEMORY[0x1E695FF58];
        goto LABEL_75;
      }

      v40 = self->_cachedFilteredMaskSampleBuffer;
      if (v40)
      {
        v48.value = 0;
        BWCMSampleBufferCreateCopyIncludingMetadata(v40, &v48);
        v7 = MEMORY[0x1E695FF58];
        if (!v48.value)
        {
          [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
          v19 = 0;
          CopyWithNewPixelBuffer = 0;
          goto LABEL_75;
        }

        BWSampleBufferSetAttachedMedia(v18, 0x1F21AABF0, v48.value);
        if (v48.value)
        {
          CFRelease(v48.value);
        }

        goto LABEL_53;
      }
    }

    else if (v15)
    {
      v38 = self->_cachedFilteredMaskSampleBuffer;
      v7 = MEMORY[0x1E695FF58];
      if (v38)
      {
        CFRelease(v38);
        v19 = 0;
        CopyWithNewPixelBuffer = 0;
        self->_cachedFilteredMaskSampleBuffer = 0;
LABEL_74:
        BWSampleBufferRemoveAttachedMedia(v18, v45);
        BWSampleBufferRemoveAttachedMedia(v18, v46);
        [(BWNodeOutput *)self->super._output emitSampleBuffer:v18];
        goto LABEL_75;
      }

LABEL_53:
      v19 = 0;
      CopyWithNewPixelBuffer = 0;
      goto LABEL_74;
    }

    v19 = 0;
    CopyWithNewPixelBuffer = 0;
LABEL_73:
    v7 = MEMORY[0x1E695FF58];
    goto LABEL_74;
  }

  if (!v10)
  {
    [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
LABEL_90:
    v19 = 0;
LABEL_91:
    CopyWithNewPixelBuffer = 0;
    v7 = MEMORY[0x1E695FF58];
    goto LABEL_75;
  }

  if (!ImageBuffer)
  {
    [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
    goto LABEL_90;
  }

  if (!self->_segmentationMaskFilter)
  {
    [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
    goto LABEL_90;
  }

  if (!v12)
  {
    [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
    goto LABEL_90;
  }

  v19 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{0x1F21AABF0), "livePixelBufferPool"), "newPixelBuffer"}];
  if (!v19)
  {
    [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
    goto LABEL_91;
  }

  time.origin.x = 0.0;
  time.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  time.size = _Q0;
  if (self->_alignsMaskWithPrimaryCaptureRect)
  {
    v25 = CMGetAttachment(buffer, *off_1E798A430, 0);
    if (v25)
    {
      CGRectMakeWithDictionaryRepresentation(v25, &time);
    }
  }

  [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setOpticalFlowDisplacementPixelBuffer:v12, v43];
  [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setInputImagePixelBuffer:ImageBuffer];
  [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setInputMaskPixelBuffer:v10];
  v26 = 0.0;
  v27 = 1.0;
  if (self->_alignsMaskWithPrimaryCaptureRect)
  {
    v28 = self->_inputOrientationRelativeToSensor;
    if (v28 == 270)
    {
      v26 = time.origin.x;
      v30 = time.origin.y;
      v27 = time.size.width;
      v29 = time.size.height;
    }

    else
    {
      v29 = 1.0;
      v30 = 0.0;
      if (v28 == 90)
      {
        v26 = time.origin.x;
        v27 = time.size.width;
        v29 = time.size.height;
        v30 = 1.0 - (time.origin.y + time.size.height);
      }
    }
  }

  else
  {
    v29 = 1.0;
    v30 = 0.0;
  }

  [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setDestinationRectangleInOutputMaskPixelBuffer:v30, v26, v29, v27];
  [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter setOutputMaskPixelBuffer:v19];
  if ([(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter process])
  {
    goto LABEL_97;
  }

  v48.value = 0;
  CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v44, v19, &self->_filteredMaskFormatDescription, &v48);
  v7 = MEMORY[0x1E695FF58];
  if (v48.value)
  {
    CMSetAttachment(v48.value, @"PersonSegmentationMaskToMainImageRotationDegrees", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_inputOrientationRelativeToSensor], 1u);
    BWSampleBufferSetAttachedMedia(v18, 0x1F21AABF0, v48.value);
    if (v48.value)
    {
      CFRelease(v48.value);
    }

    v41 = self->_cachedFilteredMaskSampleBuffer;
    if (v41)
    {
      CFRelease(v41);
      self->_cachedFilteredMaskSampleBuffer = 0;
    }

    BWCMSampleBufferCreateCopyIncludingMetadata(v48.value, &self->_cachedFilteredMaskSampleBuffer);
    if (!self->_cachedFilteredMaskSampleBuffer)
    {
      [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  [BWPersonSegmentationFilteringNode renderSampleBuffer:forInput:];
LABEL_75:
  if (CopyWithNewPixelBuffer)
  {
    goto LABEL_76;
  }

LABEL_77:
  CFRelease(v18);
LABEL_78:
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_80:
  if (*v7 == 1)
  {
    kdebug_trace();
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  [(FigSemanticStyleFilteringV1 *)self->_segmentationMaskFilter purgeResources];

  self->_segmentationMaskFilter = 0;
  cachedFilteredMaskSampleBuffer = self->_cachedFilteredMaskSampleBuffer;
  if (cachedFilteredMaskSampleBuffer)
  {
    CFRelease(cachedFilteredMaskSampleBuffer);
    self->_cachedFilteredMaskSampleBuffer = 0;
  }

  v6.receiver = self;
  v6.super_class = BWPersonSegmentationFilteringNode;
  [(BWNode *)&v6 didReachEndOfDataForInput:input];
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  return FigSignalErrorAtGM();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end