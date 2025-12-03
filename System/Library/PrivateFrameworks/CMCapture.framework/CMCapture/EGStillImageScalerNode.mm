@interface EGStillImageScalerNode
- ($2825F4736939C4A6D3AD43837233062D)processorController:(id)controller outputPixelBufferDimensionsForProcessorInput:(id)input type:(unint64_t)type attachedMediaKey:(id)key pixelFormat:(unsigned int)format dimensions:(id)dimensions;
- (EGStillImageScalerNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator deepZoomEnabled:(BOOL)enabled inputImageBufferType:(unint64_t)type portType:(id)portType delegate:(id)self0;
- (void)dealloc;
- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err;
- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGStillImageScalerNode

- (EGStillImageScalerNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator deepZoomEnabled:(BOOL)enabled inputImageBufferType:(unint64_t)type portType:(id)portType delegate:(id)self0
{
  v21.receiver = self;
  v21.super_class = EGStillImageScalerNode;
  v15 = [(EGStillImageProcessorControllerDelegateNode *)&v21 initWithName:name delegate:delegate];
  if (v15)
  {
    v15->_stillImageSettings = settings;
    v15->_nodeConfiguration = configuration;
    v15->_resourceCoordinator = coordinator;
    v15->_deepZoomEnabled = enabled;
    v15->_inputImageBufferType = type;
    v15->_portType = portType;
    v16 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v17 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v15->_processorInput = v17;
    [(EGInputGroup *)v16 installInput:v17];
    v18 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v15->_sbufInput = v18;
    [(EGInputGroup *)v16 installInput:v18];
    [(EGNode *)v15 installInputGroup:v16];
    v19 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v15->_sbufOutput = v19;
    [(EGNode *)v15 installOutput:v19];
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageScalerNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group
{
  v6 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", data, group)), "sampleBuffer"}];
  if (!v6 || (v7 = v6, (v6 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](-[EGStillImageScalerNode processorInput](self, "processorInput"), "name")), "processorController"}]) == 0))
  {
    v12 = 4294954516;
LABEL_15:
    [(EGStillImageDeferredProcessingNode *)v6 queueManagedReceiveData:v12 fromInputGroup:?];
    return;
  }

  v8 = v6;
  v13 = [[BWScalerProcessorControllerInput alloc] initWithSettings:self->_stillImageSettings portType:self->_portType];
  if (self->_deepZoomEnabled)
  {
    v9 = 0;
  }

  else
  {
    v9 = ![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration applyingZoomBeforeDeepZoomAllowedWithSampleBuffer:v7 bufferType:self->_inputImageBufferType portType:self->_portType];
  }

  if ([(NSArray *)[(FigCaptureStillImageSettings *)[(BWStillImageSettings *)self->_stillImageSettings requestedSettings] bravoConstituentImageDeliveryDeviceTypes] count])
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  [(BWScalerProcessorControllerInput *)v13 setProcessingMode:v10];
  v11 = [(BWScalerProcessorControllerInput *)v8 enqueueInputForProcessing:v13 delegate:self];
  if (v11)
  {
    v12 = v11;
    v6 = v13;
    goto LABEL_15;
  }

  [(BWScalerProcessorControllerInput *)v13 addFrame:v7 bufferType:self->_inputImageBufferType];
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
    [EGStillImageScalerNode processorController:*&err didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:buffer];
  [(EGStillImageOutput *)self->_sbufOutput emitPayload:v8];
}

- ($2825F4736939C4A6D3AD43837233062D)processorController:(id)controller outputPixelBufferDimensionsForProcessorInput:(id)input type:(unint64_t)type attachedMediaKey:(id)key pixelFormat:(unsigned int)format dimensions:(id)dimensions
{
  v8 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator pixelBufferProviderForProcessorController:controller processorInput:input type:type dimensions:dimensions pixelFormat:*&format attachedMediaKey:key];

  return [v8 dimensions];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.1(void *a1, uint64_t a2)
{
  EGStillImageGraphManagerForGraphElement(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageScalerNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];
  v3 = OUTLINED_FUNCTION_0_71();

  return [v3 didEncounterError:? description:? element:?];
}

@end