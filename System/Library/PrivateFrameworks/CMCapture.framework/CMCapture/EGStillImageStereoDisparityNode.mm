@interface EGStillImageStereoDisparityNode
- (EGStillImageStereoDisparityNode)initWithName:(id)name stillImageSettings:(id)settings portType:(id)type delegate:(id)delegate;
- (void)dealloc;
- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err;
- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGStillImageStereoDisparityNode

- (EGStillImageStereoDisparityNode)initWithName:(id)name stillImageSettings:(id)settings portType:(id)type delegate:(id)delegate
{
  v15.receiver = self;
  v15.super_class = EGStillImageStereoDisparityNode;
  v8 = [(EGStillImageProcessorControllerDelegateNode *)&v15 initWithName:name delegate:delegate];
  if (v8)
  {
    v8->_stillImageSettings = settings;
    v8->_portType = type;
    v9 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v10 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v8->_processorInput = v10;
    [(EGInputGroup *)v9 installInput:v10];
    v11 = [[EGInput alloc] initWithName:@"primarySbuf"];
    v8->_primarySbufInput = v11;
    [(EGInputGroup *)v9 installInput:v11];
    v12 = [[EGInput alloc] initWithName:@"secondarySbuf"];
    v8->_secondarySbufInput = v12;
    [(EGInputGroup *)v9 installInput:v12];
    [(EGNode *)v8 installInputGroup:v9];
    v13 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v8->_sbufOutput = v13;
    [(EGNode *)v8 installOutput:v13];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageStereoDisparityNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group
{
  v6 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](self->_primarySbufInput, "name", data, group)), "sampleBuffer"}];
  if (!v6 || (v7 = v6, (v6 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](self->_secondarySbufInput, "name")), "sampleBuffer"}]) == 0) || (v8 = v6, (v6 = objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", -[EGInput name](-[EGStillImageStereoDisparityNode processorInput](self, "processorInput"), "name")), "processorController")) == 0) || (v9 = v6, (v6 = -[BWStereoDisparityProcessorInput initWithSettings:portType:]([BWStereoDisparityProcessorInput alloc], "initWithSettings:portType:", self->_stillImageSettings, self->_portType)) == 0))
  {
    v11 = 4294954516;
LABEL_10:
    [(EGStillImageDeferredProcessingNode *)v6 queueManagedReceiveData:v11 fromInputGroup:?];
    return;
  }

  v12 = v6;
  v10 = [BWStereoDisparityProcessorInput enqueueInputForProcessing:v9 delegate:"enqueueInputForProcessing:delegate:"];
  if (v10)
  {
    v11 = v10;
    v6 = v12;
    goto LABEL_10;
  }

  [(BWStereoDisparityProcessorInput *)v12 addSampleBuffer:v7];
  [(BWStereoDisparityProcessorInput *)v12 addSampleBuffer:v8];
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
    [EGStillImageStereoDisparityNode processorController:*&err didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:buffer];
  [(EGStillImageOutput *)self->_sbufOutput emitPayload:v8];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.1(void *a1, uint64_t a2)
{
  EGStillImageGraphManagerForGraphElement(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageStereoDisparityNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];
  v3 = OUTLINED_FUNCTION_0_71();

  return [v3 didEncounterError:? description:? element:?];
}

@end