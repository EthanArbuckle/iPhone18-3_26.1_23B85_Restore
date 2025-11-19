@interface EGStillImageDeepFusionNode
- (EGStillImageDeepFusionNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 resourceCoordinator:(id)a6 numSbufInputs:(int)a7 processSmartStyleRenderingInput:(BOOL)a8 processQuadraForEnhancedResolution:(BOOL)a9 processInferenceInputImage:(BOOL)a10 portType:(id)a11 delegate:(id)a12;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)processorController:(id)a3 willAddBuffer:(__CVBuffer *)a4 metadata:(id)a5 bufferType:(unint64_t)a6 processorInput:(id)a7;
- (void)queueManagedReceiveData:(id)a3 fromInput:(id)a4;
@end

@implementation EGStillImageDeepFusionNode

- (EGStillImageDeepFusionNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 resourceCoordinator:(id)a6 numSbufInputs:(int)a7 processSmartStyleRenderingInput:(BOOL)a8 processQuadraForEnhancedResolution:(BOOL)a9 processInferenceInputImage:(BOOL)a10 portType:(id)a11 delegate:(id)a12
{
  v12 = a8;
  v31.receiver = self;
  v31.super_class = EGStillImageDeepFusionNode;
  v17 = [(EGStillImageProcessorControllerDelegateNode *)&v31 initWithName:a3 delegate:a12];
  if (v17)
  {
    v29 = 176;
    v17->_stillImageSettings = a4;
    v17->_nodeConfiguration = a5;
    v17->_resourceCoordinator = a6;
    v17->_portType = a11;
    v18 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v17->_processorInput = v18;
    [(EGNode *)v17 installInput:v18];
    v19 = [MEMORY[0x1E695DF70] array];
    if (a7 >= 1)
    {
      v20 = 0;
      do
      {
        v21 = [EGStillImageProcessorControllerDelegateNode newSbufInputWithIndex:v20, v29];
        [(EGNode *)v17 installInput:v21];
        [v19 addObject:v21];
        v20 = (v20 + 1);
      }

      while (a7 != v20);
    }

    v17->_sbufInputs = [v19 copy];
    v22 = [[EGInput alloc] initWithName:@"inferencesDelivered"];
    v17->_inferencesDeliveredInput = v22;
    [(EGNode *)v17 installInput:v22];
    v23 = [[EGInput alloc] initWithName:@"referenceFrame"];
    v17->_referenceFrameInput = v23;
    [(EGNode *)v17 installInput:v23];
    v24 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v17->_sbufOutput = v24;
    [(EGNode *)v17 installOutput:v24];
    if (a9)
    {
      v25 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"quadraForEnhancedResInferenceInputImage"];
      v17->_quadraForEnhancedResolutionInferenceInputImageOutput = v25;
      [(EGNode *)v17 installOutput:v25];
    }

    if (a10)
    {
      v26 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"inferenceInputImage"];
      v17->_inferenceInputImageOutput = v26;
      [(EGNode *)v17 installOutput:v26];
    }

    if ([a5 optimizedEnhancedResolutionDepthPipelineEnabled] && (objc_msgSend(objc_msgSend(a4, "captureSettings"), "captureFlags") & 0x800) != 0)
    {
      v27 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"sbufForEarlyEmission"];
      v17->_sbufForEarlyEmissionOutput = v27;
      [(EGNode *)v17 installOutput:v27];
    }

    v17->_deepFusionProcessorInput = [[BWDeepFusionProcessorInput alloc] initWithSettings:*(&v17->super.super.super.super.isa + v30) portType:v17->_portType processInferenceInputImage:a10 processQuadraForEnhancedResolutionInferenceInputImage:a9 processSmartStyleRenderingInput:v12];
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageDeepFusionNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  if (a7)
  {
    goto LABEL_17;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

  BWPhotonicEngineUtilitiesSetDeferredPhotoProcessedImageFlags(a4);
  if (a5 == 15)
  {
    v10 = 160;
  }

  else
  {
    if (a5 != 36)
    {
      sbufOutput = self->_sbufOutput;
      if (!self->_sbufForEarlyEmissionOutput)
      {
        goto LABEL_8;
      }

      target = 0;
      CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(a4, &target);
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

      *&a7 = CopyIncludingMetadata;
LABEL_17:
      [EGStillImageDeepFusionNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
      return;
    }

    v10 = 152;
  }

  sbufOutput = *(&self->super.super.super.super.isa + v10);
  if (!sbufOutput)
  {
LABEL_16:
    *&a7 = 4294954516;
    goto LABEL_17;
  }

LABEL_8:
  v12 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
  [(EGStillImageOutput *)sbufOutput emitPayload:v12];
}

- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5
{
  v5 = *&a5;

  self->_deepFusionProcessorInput = 0;
  if (v5)
  {
    v7 = EGStillImageGraphManagerForGraphElement(self);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v5, "-[EGStillImageDeepFusionNode processorController:didFinishProcessingInput:err:]"];

    [v7 didEncounterError:v5 description:v8 element:self];
  }
}

- (void)queueManagedReceiveData:(id)a3 fromInput:(id)a4
{
  if (self->_processorInput == a4)
  {
    v24 = [a3 processorController];
    if (!v24)
    {
LABEL_28:
      v25 = 4294954516;
      goto LABEL_14;
    }

    v25 = [v24 enqueueInputForProcessing:self->_deepFusionProcessorInput delegate:self];
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

  if ([(NSArray *)self->_sbufInputs containsObject:a4])
  {
    v7 = [a3 sampleBuffer];
    if (v7)
    {
      v8 = v7;
      ImageBuffer = CMSampleBufferGetImageBuffer(v7);
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
      if ([(NSArray *)self->_sbufInputs lastObject]== a4)
      {
        [(BWDeepFusionProcessorInput *)self->_deepFusionProcessorInput beginProcessingCachedBuffersIfWaiting];
      }
    }

    goto LABEL_27;
  }

  if (self->_inferencesDeliveredInput != a4)
  {
    if (self->_referenceFrameInput == a4)
    {
      v28 = [a3 sampleBuffer];
      if (v28)
      {
        v29 = v28;
        memset(&v33, 0, sizeof(v33));
        CMSampleBufferGetPresentationTimeStamp(&v33, v28);
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

- (void)processorController:(id)a3 willAddBuffer:(__CVBuffer *)a4 metadata:(id)a5 bufferType:(unint64_t)a6 processorInput:(id)a7
{
  if (a5)
  {
    if (a7)
    {
      if (a4)
      {
        if (a3)
        {
          if (self->_deepZoomEnabled && ([objc_msgSend(a7 "captureStreamSettings")] & 0x4200000000) == 0 && a6 <= 0x1B && ((1 << a6) & 0x9C00000) != 0)
          {
            v11 = *(MEMORY[0x1E695F050] + 16);
            v15.origin = *MEMORY[0x1E695F050];
            v15.size = v11;
            v14.origin = v15.origin;
            v14.size = v11;
            v12 = [-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self->_nodeConfiguration) objectForKeyedSubscript:self->_portType];
            Width = CVPixelBufferGetWidth(a4);
            if ([BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:1 sensorConfiguration:v12 dimensions:Width | (CVPixelBufferGetHeight(a4) << 32) metadata:a5 stillImageSettings:self->_stillImageSettings intermediateZoomSrcRectOut:&v15 intermediateZoomDstRectOut:&v14])
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