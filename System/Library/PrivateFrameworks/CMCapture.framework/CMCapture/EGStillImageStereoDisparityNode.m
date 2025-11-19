@interface EGStillImageStereoDisparityNode
- (EGStillImageStereoDisparityNode)initWithName:(id)a3 stillImageSettings:(id)a4 portType:(id)a5 delegate:(id)a6;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageStereoDisparityNode

- (EGStillImageStereoDisparityNode)initWithName:(id)a3 stillImageSettings:(id)a4 portType:(id)a5 delegate:(id)a6
{
  v15.receiver = self;
  v15.super_class = EGStillImageStereoDisparityNode;
  v8 = [(EGStillImageProcessorControllerDelegateNode *)&v15 initWithName:a3 delegate:a6];
  if (v8)
  {
    v8->_stillImageSettings = a4;
    v8->_portType = a5;
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

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_primarySbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (!v6 || (v7 = v6, (v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_secondarySbufInput, "name")), "sampleBuffer"}]) == 0) || (v8 = v6, (v6 = objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", -[EGInput name](-[EGStillImageStereoDisparityNode processorInput](self, "processorInput"), "name")), "processorController")) == 0) || (v9 = v6, (v6 = -[BWStereoDisparityProcessorInput initWithSettings:portType:]([BWStereoDisparityProcessorInput alloc], "initWithSettings:portType:", self->_stillImageSettings, self->_portType)) == 0))
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
    [EGStillImageStereoDisparityNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
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