@interface EGStillImageInferenceEngineNode
- (EGStillImageInferenceEngineNode)initWithName:(id)name stillImageSettings:(id)settings portType:(id)type nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator inferenceInputBufferType:(unint64_t)bufferType delegate:(id)delegate;
- (void)dealloc;
- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err;
- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGStillImageInferenceEngineNode

- (EGStillImageInferenceEngineNode)initWithName:(id)name stillImageSettings:(id)settings portType:(id)type nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator inferenceInputBufferType:(unint64_t)bufferType delegate:(id)delegate
{
  v20.receiver = self;
  v20.super_class = EGStillImageInferenceEngineNode;
  v14 = [(EGStillImageProcessorControllerDelegateNode *)&v20 initWithName:name delegate:delegate];
  if (v14)
  {
    v14->_stillImageSettings = settings;
    v14->_portType = type;
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
    v14->_nodeConfiguration = configuration;
    v14->_resourceCoordinator = coordinator;
    v14->_inferenceInputBufferType = bufferType;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageInferenceEngineNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group
{
  v6 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", data, group)), "sampleBuffer"}];
  if (v6 && (v7 = v6, (v8 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](-[EGStillImageInferenceEngineNode processorInput](self, "processorInput"), "name")), "processorController"}]) != 0))
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

- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err
{
  if (err)
  {
    goto LABEL_9;
  }

  if (!buffer)
  {
    *&err = 4294954516;
LABEL_9:
    [EGStillImageInferenceEngineNode processorController:*&err didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerQueue:controller];
  if (!_FigIsCurrentDispatchQueue())
  {
    [EGStillImageInferenceEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
  }

  -[BWPhotonicEngineNodeResourceCoordinator unsafeSetInferences:forInferenceInputBufferType:](self->_resourceCoordinator, "unsafeSetInferences:forInferenceInputBufferType:", -[BWPhotonicEngineNodeConfiguration harvestStillImageInferencesFromSampleBuffer:stillImageSettings:enabledInferenceMasks:](self->_nodeConfiguration, "harvestStillImageInferencesFromSampleBuffer:stillImageSettings:enabledInferenceMasks:", buffer, self->_stillImageSettings, [input enabledInferenceMasks]), self->_inferenceInputBufferType);
  inferencesDeliveredOutput = self->_inferencesDeliveredOutput;
  initWithEmptyPayload = [[EGStillImageGraphPayload alloc] initWithEmptyPayload];

  [(EGStillImageOutput *)inferencesDeliveredOutput emitPayload:initWithEmptyPayload];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.2(void *a1, uint64_t a2)
{
  v4 = EGStillImageGraphManagerForGraphElement(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageInferenceEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];

  return [v4 didEncounterError:a2 description:v5 element:a1];
}

@end