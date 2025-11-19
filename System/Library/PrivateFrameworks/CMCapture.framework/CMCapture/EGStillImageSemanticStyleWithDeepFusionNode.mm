@interface EGStillImageSemanticStyleWithDeepFusionNode
- (EGStillImageSemanticStyleWithDeepFusionNode)initWithName:(id)a3 stillImageSettings:(id)a4 resourceCoordinator:(id)a5 portType:(id)a6 delegate:(id)a7;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageSemanticStyleWithDeepFusionNode

- (EGStillImageSemanticStyleWithDeepFusionNode)initWithName:(id)a3 stillImageSettings:(id)a4 resourceCoordinator:(id)a5 portType:(id)a6 delegate:(id)a7
{
  v16.receiver = self;
  v16.super_class = EGStillImageSemanticStyleWithDeepFusionNode;
  v10 = [(EGStillImageProcessorControllerDelegateNode *)&v16 initWithName:a3 delegate:a7];
  if (v10)
  {
    v10->_stillImageSettings = a4;
    v10->_resourceCoordinator = a5;
    v10->_portType = a6;
    v11 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v12 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v10->_processorInput = v12;
    [(EGInputGroup *)v11 installInput:v12];
    v13 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v10->_sbufInput = v13;
    [(EGInputGroup *)v11 installInput:v13];
    [(EGNode *)v10 installInputGroup:v11];
    v14 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v10->_sbufOutput = v14;
    [(EGNode *)v10 installOutput:v14];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageSemanticStyleWithDeepFusionNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (v6 && (v7 = v6, (v8 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](-[EGStillImageSemanticStyleWithDeepFusionNode processorInput](self, "processorInput"), "name")), "processorController"}]) != 0) && (v9 = v8, (v10 = +[BWDeepFusionProcessorInput inputForOnlyApplyingSemanticStyleWithSettings:portType:](BWDeepFusionProcessorInput, "inputForOnlyApplyingSemanticStyleWithSettings:portType:", self->_stillImageSettings, self->_portType)) != 0))
  {
    v11 = v10;
    [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator flushDeepFusionEnhancedResolutionOutputPool];
    [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator flushDeepZoomTransferHighResolutionInputPool];
    [v9 enqueueInputForProcessing:v11 delegate:self];
    ImageBuffer = CMSampleBufferGetImageBuffer(v7);
    v13 = CMGetAttachment(v7, *off_1E798A3C8, 0);
    v14 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v7, 1u);
    v15 = BWStillImageCaptureFrameFlagsForSampleBuffer(v7);
    v16 = [(__CFDictionary *)v14 mutableCopy];
    [v11 setEvZeroReferenceFrameAttachments:v16];
    CMSampleBufferGetPresentationTimeStamp(&v18, v7);
    v17 = v18;
    [v11 setEvZeroReferenceFramePTS:&v17];

    [v11 allInferencesDelivered];
    [v11 addBuffer:ImageBuffer metadata:v13 bufferType:13 captureFrameFlags:v15];
  }

  else
  {
    [EGStillImageInferenceMergingNode queueManagedReceiveData:? fromInputGroup:?];
  }
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  if (a7)
  {
    goto LABEL_7;
  }

  if (!a4)
  {
    *&a7 = 4294954516;
LABEL_7:
    [EGStillImageSemanticStyleWithDeepFusionNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
  [(EGStillImageOutput *)self->_sbufOutput emitPayload:v8];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.1(void *a1, uint64_t a2)
{
  v4 = EGStillImageGraphManagerForGraphElement(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageSemanticStyleWithDeepFusionNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];

  return [v4 didEncounterError:a2 description:v5 element:a1];
}

@end