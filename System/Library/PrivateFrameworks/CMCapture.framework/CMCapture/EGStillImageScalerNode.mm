@interface EGStillImageScalerNode
- ($2825F4736939C4A6D3AD43837233062D)processorController:(id)a3 outputPixelBufferDimensionsForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8;
- (EGStillImageScalerNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 resourceCoordinator:(id)a6 deepZoomEnabled:(BOOL)a7 inputImageBufferType:(unint64_t)a8 portType:(id)a9 delegate:(id)a10;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageScalerNode

- (EGStillImageScalerNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 resourceCoordinator:(id)a6 deepZoomEnabled:(BOOL)a7 inputImageBufferType:(unint64_t)a8 portType:(id)a9 delegate:(id)a10
{
  v21.receiver = self;
  v21.super_class = EGStillImageScalerNode;
  v15 = [(EGStillImageProcessorControllerDelegateNode *)&v21 initWithName:a3 delegate:a10];
  if (v15)
  {
    v15->_stillImageSettings = a4;
    v15->_nodeConfiguration = a5;
    v15->_resourceCoordinator = a6;
    v15->_deepZoomEnabled = a7;
    v15->_inputImageBufferType = a8;
    v15->_portType = a9;
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

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (!v6 || (v7 = v6, (v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](-[EGStillImageScalerNode processorInput](self, "processorInput"), "name")), "processorController"}]) == 0))
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
    [EGStillImageScalerNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
  [(EGStillImageOutput *)self->_sbufOutput emitPayload:v8];
}

- ($2825F4736939C4A6D3AD43837233062D)processorController:(id)a3 outputPixelBufferDimensionsForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8
{
  v8 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator pixelBufferProviderForProcessorController:a3 processorInput:a4 type:a5 dimensions:a8 pixelFormat:*&a7 attachedMediaKey:a6];

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