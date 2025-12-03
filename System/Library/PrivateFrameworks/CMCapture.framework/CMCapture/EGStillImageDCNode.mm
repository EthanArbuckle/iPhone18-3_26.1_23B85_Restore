@interface EGStillImageDCNode
- (EGStillImageDCNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration addConfigurationInput:(BOOL)input processIDC:(BOOL)c processGDC:(BOOL)dC deepZoomEnabled:(BOOL)enabled inputImageBufferType:(unint64_t)self0 portType:(id)self1 delegate:(id)self2;
- (void)dealloc;
- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err;
- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGStillImageDCNode

- (EGStillImageDCNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration addConfigurationInput:(BOOL)input processIDC:(BOOL)c processGDC:(BOOL)dC deepZoomEnabled:(BOOL)enabled inputImageBufferType:(unint64_t)self0 portType:(id)self1 delegate:(id)self2
{
  inputCopy = input;
  v24.receiver = self;
  v24.super_class = EGStillImageDCNode;
  v17 = [(EGStillImageProcessorControllerDelegateNode *)&v24 initWithName:name delegate:delegate];
  if (v17)
  {
    v17->_stillImageSettings = settings;
    v17->_nodeConfiguration = configuration;
    v17->_processIDC = c;
    v17->_processGDC = dC;
    v17->_deepZoomEnabled = enabled;
    v17->_inputImageBufferType = type;
    v17->_portType = portType;
    v18 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v19 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v17->_processorInput = v19;
    [(EGInputGroup *)v18 installInput:v19];
    v20 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v17->_sbufInput = v20;
    [(EGInputGroup *)v18 installInput:v20];
    if (inputCopy)
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

- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group
{
  v6 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", data, group)), "sampleBuffer"}];
  if (!v6 || (v7 = v6, (v6 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](-[EGStillImageDCNode processorInput](self, "processorInput"), "name")), "processorController"}]) == 0))
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
    BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput(v13, [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](configurationInput, "name")), "dictionary"}]);
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

- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err
{
  if (err)
  {
    goto LABEL_7;
  }

  if (!buffer)
  {
    *&err = 4294954516;
LABEL_7:
    [EGStillImageDCNode processorController:*&err didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:buffer];
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