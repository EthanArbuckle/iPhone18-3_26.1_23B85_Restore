@interface EGStillImageInferenceEngineNode
- (EGStillImageInferenceEngineNode)initWithName:(id)a3 stillImageSettings:(id)a4 portType:(id)a5 nodeConfiguration:(id)a6 resourceCoordinator:(id)a7 inferenceInputBufferType:(unint64_t)a8 delegate:(id)a9;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageInferenceEngineNode

- (EGStillImageInferenceEngineNode)initWithName:(id)a3 stillImageSettings:(id)a4 portType:(id)a5 nodeConfiguration:(id)a6 resourceCoordinator:(id)a7 inferenceInputBufferType:(unint64_t)a8 delegate:(id)a9
{
  v20.receiver = self;
  v20.super_class = EGStillImageInferenceEngineNode;
  v14 = [(EGStillImageProcessorControllerDelegateNode *)&v20 initWithName:a3 delegate:a9];
  if (v14)
  {
    v14->_stillImageSettings = a4;
    v14->_portType = a5;
    v15 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v16 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v14->_processorInput = v16;
    [(EGInputGroup *)v15 installInput:v16];
    v17 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v14->_sbufInput = v17;
    [(EGInputGroup *)v15 installInput:v17];
    [(EGNode *)v14 installInputGroup:v15];
    v18 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"inferencesDelivered"];
    v14->_inferencesDeliveredOutput = v18;
    [(EGNode *)v14 installOutput:v18];
    v14->_nodeConfiguration = a6;
    v14->_resourceCoordinator = a7;
    v14->_inferenceInputBufferType = a8;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageInferenceEngineNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (v6 && (v7 = v6, (v8 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](-[EGStillImageInferenceEngineNode processorInput](self, "processorInput"), "name")), "processorController"}]) != 0))
  {
    v9 = v8;
    v10 = [[BWInferenceEngineControllerInput alloc] initWithSettings:self->_stillImageSettings portType:self->_portType inferenceInputBufferType:self->_inferenceInputBufferType];
    [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration configureInferenceEngineControllerInput:v10];
    [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration prepareSampleBufferForInferenceProcessing:v7 inferenceInput:v10 stillImageSettings:self->_stillImageSettings inferenceInputBufferType:self->_inferenceInputBufferType];
    [(BWInferenceEngineControllerInput *)v10 addInferenceImage:v7];
    v11 = [v9 enqueueInputForProcessing:v10 delegate:self];

    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = 4294954516;
  }

  v12 = EGStillImageGraphManagerForGraphElement(self);
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error:%d", v11];

  [v12 didEncounterError:v11 description:v13 element:self];
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  if (a7)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
    *&a7 = 4294954516;
LABEL_9:
    [EGStillImageInferenceEngineNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerQueue:a3];
  if (!_FigIsCurrentDispatchQueue())
  {
    [EGStillImageInferenceEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
  }

  -[BWPhotonicEngineNodeResourceCoordinator unsafeSetInferences:forInferenceInputBufferType:](self->_resourceCoordinator, "unsafeSetInferences:forInferenceInputBufferType:", -[BWPhotonicEngineNodeConfiguration harvestStillImageInferencesFromSampleBuffer:stillImageSettings:enabledInferenceMasks:](self->_nodeConfiguration, "harvestStillImageInferencesFromSampleBuffer:stillImageSettings:enabledInferenceMasks:", a4, self->_stillImageSettings, [a6 enabledInferenceMasks]), self->_inferenceInputBufferType);
  inferencesDeliveredOutput = self->_inferencesDeliveredOutput;
  v11 = [[EGStillImageGraphPayload alloc] initWithEmptyPayload];

  [(EGStillImageOutput *)inferencesDeliveredOutput emitPayload:v11];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.2(void *a1, uint64_t a2)
{
  v4 = EGStillImageGraphManagerForGraphElement(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageInferenceEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];

  return [v4 didEncounterError:a2 description:v5 element:a1];
}

@end