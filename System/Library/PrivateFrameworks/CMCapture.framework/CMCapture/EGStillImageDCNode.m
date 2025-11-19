@interface EGStillImageDCNode
- (EGStillImageDCNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 addConfigurationInput:(BOOL)a6 processIDC:(BOOL)a7 processGDC:(BOOL)a8 deepZoomEnabled:(BOOL)a9 inputImageBufferType:(unint64_t)a10 portType:(id)a11 delegate:(id)a12;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageDCNode

- (EGStillImageDCNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 addConfigurationInput:(BOOL)a6 processIDC:(BOOL)a7 processGDC:(BOOL)a8 deepZoomEnabled:(BOOL)a9 inputImageBufferType:(unint64_t)a10 portType:(id)a11 delegate:(id)a12
{
  v14 = a6;
  v24.receiver = self;
  v24.super_class = EGStillImageDCNode;
  v17 = [(EGStillImageProcessorControllerDelegateNode *)&v24 initWithName:a3 delegate:a12];
  if (v17)
  {
    v17->_stillImageSettings = a4;
    v17->_nodeConfiguration = a5;
    v17->_processIDC = a7;
    v17->_processGDC = a8;
    v17->_deepZoomEnabled = a9;
    v17->_inputImageBufferType = a10;
    v17->_portType = a11;
    v18 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v19 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v17->_processorInput = v19;
    [(EGInputGroup *)v18 installInput:v19];
    v20 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v17->_sbufInput = v20;
    [(EGInputGroup *)v18 installInput:v20];
    if (v14)
    {
      v21 = [[EGInput alloc] initWithName:@"configuration"];
      v17->_configurationInput = v21;
      [(EGInputGroup *)v18 installInput:v21];
    }

    [(EGNode *)v17 installInputGroup:v18];
    v22 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v17->_sbufOutput = v22;
    [(EGNode *)v17 installOutput:v22];
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageDCNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (!v6 || (v7 = v6, (v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](-[EGStillImageDCNode processorInput](self, "processorInput"), "name")), "processorController"}]) == 0))
  {
    v12 = 4294954516;
LABEL_14:
    [(EGStillImageDeferredProcessingNode *)v6 queueManagedReceiveData:v12 fromInputGroup:?];
    return;
  }

  v8 = v6;
  v13 = [[BWIntelligentDistortionCorrectionProcessorInput alloc] initWithSettings:self->_stillImageSettings portType:self->_portType];
  [(BWIntelligentDistortionCorrectionProcessorInput *)v13 setProcessIntelligentDistortionCorrection:self->_processIDC];
  [(BWIntelligentDistortionCorrectionProcessorInput *)v13 setProcessGeometricDistortionCorrection:self->_processGDC];
  v9 = !self->_deepZoomEnabled || [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration applyingZoomBeforeDeepZoomAllowedWithSampleBuffer:v7 bufferType:self->_inputImageBufferType portType:self->_portType];
  [(BWIntelligentDistortionCorrectionProcessorInput *)v13 setApplyZoom:v9];
  configurationInput = self->_configurationInput;
  if (configurationInput)
  {
    BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput(v13, [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](configurationInput, "name")), "dictionary"}]);
  }

  v11 = [(BWIntelligentDistortionCorrectionProcessorInput *)v8 enqueueInputForProcessing:v13 delegate:self];
  if (v11)
  {
    v12 = v11;
    v6 = v13;
    goto LABEL_14;
  }

  [(BWIntelligentDistortionCorrectionProcessorInput *)v13 addImage:v7 imageBufferType:self->_inputImageBufferType];
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
    [EGStillImageDCNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
  [(EGStillImageOutput *)self->_sbufOutput emitPayload:v8];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.1(void *a1, uint64_t a2)
{
  EGStillImageGraphManagerForGraphElement(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageDCNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];
  v3 = OUTLINED_FUNCTION_0_71();

  return [v3 didEncounterError:? description:? element:?];
}

@end