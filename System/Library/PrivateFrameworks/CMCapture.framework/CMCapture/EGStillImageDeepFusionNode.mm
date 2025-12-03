@interface EGStillImageDeepFusionNode
- (EGStillImageDeepFusionNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator numSbufInputs:(int)inputs processSmartStyleRenderingInput:(BOOL)input processQuadraForEnhancedResolution:(BOOL)resolution processInferenceInputImage:(BOOL)self0 portType:(id)self1 delegate:(id)self2;
- (void)dealloc;
- (void)processorController:(id)controller didFinishProcessingInput:(id)input err:(int)err;
- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err;
- (void)processorController:(id)controller willAddBuffer:(__CVBuffer *)buffer metadata:(id)metadata bufferType:(unint64_t)type processorInput:(id)input;
- (void)queueManagedReceiveData:(id)data fromInput:(id)input;
@end

@implementation EGStillImageDeepFusionNode

- (EGStillImageDeepFusionNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator numSbufInputs:(int)inputs processSmartStyleRenderingInput:(BOOL)input processQuadraForEnhancedResolution:(BOOL)resolution processInferenceInputImage:(BOOL)self0 portType:(id)self1 delegate:(id)self2
{
  inputCopy = input;
  v31.receiver = self;
  v31.super_class = EGStillImageDeepFusionNode;
  v17 = [(EGStillImageProcessorControllerDelegateNode *)&v31 initWithName:name delegate:delegate];
  if (v17)
  {
    v29 = 176;
    v17->_stillImageSettings = settings;
    v17->_nodeConfiguration = configuration;
    v17->_resourceCoordinator = coordinator;
    v17->_portType = type;
    v18 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v17->_processorInput = v18;
    [(EGNode *)v17 installInput:v18];
    array = [MEMORY[0x1E695DF70] array];
    if (inputs >= 1)
    {
      v20 = 0;
      do
      {
        v21 = [EGStillImageProcessorControllerDelegateNode newSbufInputWithIndex:v20, v29];
        [(EGNode *)v17 installInput:v21];
        [array addObject:v21];
        v20 = (v20 + 1);
      }

      while (inputs != v20);
    }

    v17->_sbufInputs = [array copy];
    v22 = [[EGInput alloc] initWithName:@"inferencesDelivered"];
    v17->_inferencesDeliveredInput = v22;
    [(EGNode *)v17 installInput:v22];
    v23 = [[EGInput alloc] initWithName:@"referenceFrame"];
    v17->_referenceFrameInput = v23;
    [(EGNode *)v17 installInput:v23];
    v24 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v17->_sbufOutput = v24;
    [(EGNode *)v17 installOutput:v24];
    if (resolution)
    {
      v25 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"quadraForEnhancedResInferenceInputImage"];
      v17->_quadraForEnhancedResolutionInferenceInputImageOutput = v25;
      [(EGNode *)v17 installOutput:v25];
    }

    if (image)
    {
      v26 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"inferenceInputImage"];
      v17->_inferenceInputImageOutput = v26;
      [(EGNode *)v17 installOutput:v26];
    }

    if ([configuration optimizedEnhancedResolutionDepthPipelineEnabled] && (objc_msgSend(objc_msgSend(settings, "captureSettings"), "captureFlags") & 0x800) != 0)
    {
      v27 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"sbufForEarlyEmission"];
      v17->_sbufForEarlyEmissionOutput = v27;
      [(EGNode *)v17 installOutput:v27];
    }

    v17->_deepFusionProcessorInput = [[BWDeepFusionProcessorInput alloc] initWithSettings:*(&v17->super.super.super.super.isa + v30) portType:v17->_portType processInferenceInputImage:image processQuadraForEnhancedResolutionInferenceInputImage:resolution processSmartStyleRenderingInput:inputCopy];
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageDeepFusionNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err
{
  if (err)
  {
    goto LABEL_17;
  }

  if (!buffer)
  {
    goto LABEL_16;
  }

  BWPhotonicEngineUtilitiesSetDeferredPhotoProcessedImageFlags(buffer);
  if (type == 15)
  {
    v10 = 160;
  }

  else
  {
    if (type != 36)
    {
      sbufOutput = self->_sbufOutput;
      if (!self->_sbufForEarlyEmissionOutput)
      {
        goto LABEL_8;
      }

      target = 0;
      CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(buffer, &target);
      if (!CopyIncludingMetadata)
      {
        BWSampleBufferRemoveAttachedMedia(target, 0x1F219EC90);
        BWSampleBufferRemoveAttachedMedia(target, 0x1F21AAF50);
        CMSetAttachment(target, @"StillImageBufferFrameType", &unk_1F2246F18, 1u);
        v14 = [EGStillImageGraphPayload alloc];
        v15 = [(EGStillImageGraphPayload *)v14 initWithSampleBuffer:target];
        [(EGStillImageOutput *)self->_sbufForEarlyEmissionOutput emitPayload:v15];

        if (target)
        {
          CFRelease(target);
        }

        if (BWCIFilterArrayContainsPortraitFilters([(FigCaptureStillImageSettings *)[(BWStillImageSettings *)self->_stillImageSettings requestedSettings] processedImageFilters]))
        {
          [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator createAndWaitOnEnhancedResolutionPortraitSemaphore];
        }

        goto LABEL_8;
      }

      *&err = CopyIncludingMetadata;
LABEL_17:
      [EGStillImageDeepFusionNode processorController:*&err didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
      return;
    }

    v10 = 152;
  }

  sbufOutput = *(&self->super.super.super.super.isa + v10);
  if (!sbufOutput)
  {
LABEL_16:
    *&err = 4294954516;
    goto LABEL_17;
  }

LABEL_8:
  v12 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:buffer];
  [(EGStillImageOutput *)sbufOutput emitPayload:v12];
}

- (void)processorController:(id)controller didFinishProcessingInput:(id)input err:(int)err
{
  v5 = *&err;

  self->_deepFusionProcessorInput = 0;
  if (v5)
  {
    v7 = EGStillImageGraphManagerForGraphElement(self);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v5, "-[EGStillImageDeepFusionNode processorController:didFinishProcessingInput:err:]"];

    [v7 didEncounterError:v5 description:v8 element:self];
  }
}

- (void)queueManagedReceiveData:(id)data fromInput:(id)input
{
  if (self->_processorInput == input)
  {
    processorController = [data processorController];
    if (!processorController)
    {
LABEL_28:
      v25 = 4294954516;
      goto LABEL_14;
    }

    v25 = [processorController enqueueInputForProcessing:self->_deepFusionProcessorInput delegate:self];
    if (v25)
    {
LABEL_14:
      EGStillImageGraphManagerForGraphElement(self);
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error:%d", v25];
      OUTLINED_FUNCTION_1_129();

      [v26 didEncounterError:? description:? element:?];
      return;
    }

LABEL_27:
    OUTLINED_FUNCTION_1_129();
    return;
  }

  if ([(NSArray *)self->_sbufInputs containsObject:input])
  {
    sampleBuffer = [data sampleBuffer];
    if (sampleBuffer)
    {
      v8 = sampleBuffer;
      ImageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer);
      v10 = CMGetAttachment(v8, *off_1E798A3C8, 0);
      v11 = BWStillImageCaptureFrameFlagsForSampleBuffer(v8);
      v12 = BWPhotonicEngineUtilitiesDetermineBufferTypeForDeepFusionInputBuffer(v10, v11, [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_stillImageSettings captureSettings] captureFlags]);
      if ((v11 & 0x10) != 0 && [(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType]== 9)
      {
        v13 = [(NSDictionary *)[(BWDeepFusionProcessorInput *)self->_deepFusionProcessorInput evZeroReferenceFrameAttachments] mutableCopy];
        if (v13)
        {
          v14 = v13;
          v15 = [objc_msgSend(v13 "objectForKeyedSubscript:"mutableCopy"")];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          AttachedMedia = BWSampleBufferGetAttachedMedia(v8, 0x1F21AAB10);
          OUTLINED_FUNCTION_0_116(AttachedMedia);
          v17 = BWSampleBufferGetAttachedMedia(v8, 0x1F21AAB70);
          OUTLINED_FUNCTION_0_116(v17);
          v18 = BWSampleBufferGetAttachedMedia(v8, 0x1F21AAB90);
          OUTLINED_FUNCTION_0_116(v18);
          [v14 setObject:v15 forKeyedSubscript:0x1F2180F50];

          [(BWDeepFusionProcessorInput *)self->_deepFusionProcessorInput setEvZeroReferenceFrameAttachments:v14];
          CMSampleBufferGetPresentationTimeStamp(&v34, v8);
          deepFusionProcessorInput = self->_deepFusionProcessorInput;
          v33 = v34;
          [(BWDeepFusionProcessorInput *)deepFusionProcessorInput setEvZeroReferenceFramePTS:&v33];
        }
      }

      v20 = BWSampleBufferGetAttachedMedia(v8, 0x1F21AAE70);
      if (v20)
      {
        v21 = v20;
        v22 = CMSampleBufferGetImageBuffer(v20);
        v23 = CMGetAttachment(v21, *off_1E798A3B0, 0);
      }

      else
      {
        v23 = 0;
        v22 = 0;
      }

      [(BWDeepFusionProcessorInput *)self->_deepFusionProcessorInput addBuffer:ImageBuffer metadata:v10 bufferType:v12 captureFrameFlags:v11 lscGainMap:v22 lscGainMapParameters:v23];
      if ([(NSArray *)self->_sbufInputs lastObject]== input)
      {
        [(BWDeepFusionProcessorInput *)self->_deepFusionProcessorInput beginProcessingCachedBuffersIfWaiting];
      }
    }

    goto LABEL_27;
  }

  if (self->_inferencesDeliveredInput != input)
  {
    if (self->_referenceFrameInput == input)
    {
      sampleBuffer2 = [data sampleBuffer];
      if (sampleBuffer2)
      {
        v29 = sampleBuffer2;
        memset(&v33, 0, sizeof(v33));
        CMSampleBufferGetPresentationTimeStamp(&v33, sampleBuffer2);
        [(BWDeepFusionProcessorInput *)self->_deepFusionProcessorInput setEvZeroReferenceFrameAttachments:CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v29, 1u)];
        v32 = v33;
        [(BWDeepFusionProcessorInput *)self->_deepFusionProcessorInput setEvZeroReferenceFramePTS:&v32];
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [(BWDeepFusionProcessorInput *)self->_deepFusionProcessorInput setProvidedInferenceAttachedMedia:[(BWStillImageInferences *)[(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator syncInferences] inferenceAttachedMediaMetadataKeys]];
  OUTLINED_FUNCTION_1_129();

  [v30 allInferencesDelivered];
}

- (void)processorController:(id)controller willAddBuffer:(__CVBuffer *)buffer metadata:(id)metadata bufferType:(unint64_t)type processorInput:(id)input
{
  if (metadata)
  {
    if (input)
    {
      if (buffer)
      {
        if (controller)
        {
          if (self->_deepZoomEnabled && ([objc_msgSend(input "captureStreamSettings")] & 0x4200000000) == 0 && type <= 0x1B && ((1 << type) & 0x9C00000) != 0)
          {
            v11 = *(MEMORY[0x1E695F050] + 16);
            v15.origin = *MEMORY[0x1E695F050];
            v15.size = v11;
            v14.origin = v15.origin;
            v14.size = v11;
            v12 = [-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self->_nodeConfiguration) objectForKeyedSubscript:self->_portType];
            Width = CVPixelBufferGetWidth(buffer);
            if ([BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:1 sensorConfiguration:v12 dimensions:Width | (CVPixelBufferGetHeight(buffer) << 32) metadata:metadata stillImageSettings:self->_stillImageSettings intermediateZoomSrcRectOut:&v15 intermediateZoomDstRectOut:&v14])
            {
              if (!CGRectIsNull(v15) && !CGRectIsNull(v14))
              {
                FigCFDictionarySetCGRect();
                FigCFDictionarySetCGRect();
              }
            }
          }
        }
      }
    }
  }
}

@end