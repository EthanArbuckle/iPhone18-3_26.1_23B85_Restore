@interface EGStillImageDeepZoomNode
- (EGStillImageDeepZoomNode)initWithName:(id)a3 stillImageSettings:(id)a4 portType:(id)a5 delegate:(id)a6;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageDeepZoomNode

- (EGStillImageDeepZoomNode)initWithName:(id)a3 stillImageSettings:(id)a4 portType:(id)a5 delegate:(id)a6
{
  v14.receiver = self;
  v14.super_class = EGStillImageDeepZoomNode;
  v8 = [(EGStillImageProcessorControllerDelegateNode *)&v14 initWithName:a3 delegate:a6];
  if (v8)
  {
    v8->_stillImageSettings = a4;
    v8->_portType = a5;
    v9 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v10 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v8->_processorInput = v10;
    [(EGInputGroup *)v9 installInput:v10];
    v11 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v8->_sbufInput = v11;
    [(EGInputGroup *)v9 installInput:v11];
    [(EGNode *)v8 installInputGroup:v9];
    v12 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v8->_sbufOutput = v12;
    [(EGNode *)v8 installOutput:v12];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageDeepZoomNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](-[EGStillImageDeepZoomNode processorInput](self, "processorInput"), "name")), "processorController"}];
    if (v8 && (v9 = v8, (v10 = [(BWStillImageProcessorControllerInput *)[BWDeepZoomProcessorInput alloc] initWithSettings:self->_stillImageSettings portType:self->_portType]) != 0))
    {
      v11 = v10;
      [(BWDeepZoomProcessorInput *)v10 addSampleBuffer:v7 bufferType:0];
      v12 = [v9 enqueueInputForProcessing:v11 delegate:self];

      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = 4294954516;
    }

    v13 = EGStillImageGraphManagerForGraphElement(self);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error:%d", v12];

    [v13 didEncounterError:v12 description:v14 element:self];
  }

  else
  {
    [(EGStillImageOutput *)self->_sbufOutput emitPayload:[[EGStillImageGraphPayload alloc] initWithEmptyPayload]];
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
    [EGStillImageDeepZoomNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
  [(EGStillImageOutput *)self->_sbufOutput emitPayload:v8];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.1(void *a1, uint64_t a2)
{
  v4 = EGStillImageGraphManagerForGraphElement(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageDeepZoomNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];

  return [v4 didEncounterError:a2 description:v5 element:a1];
}

@end