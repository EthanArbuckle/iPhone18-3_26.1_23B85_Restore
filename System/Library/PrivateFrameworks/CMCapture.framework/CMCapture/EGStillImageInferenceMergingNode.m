@interface EGStillImageInferenceMergingNode
- (EGStillImageInferenceMergingNode)initWithName:(id)a3 stillImageSettings:(id)a4 resourceCoordinator:(id)a5;
- (void)dealloc;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageInferenceMergingNode

- (EGStillImageInferenceMergingNode)initWithName:(id)a3 stillImageSettings:(id)a4 resourceCoordinator:(id)a5
{
  v12.receiver = self;
  v12.super_class = EGStillImageInferenceMergingNode;
  v7 = [(EGNode *)&v12 initWithName:a3];
  if (v7)
  {
    v8 = [[EGInputGroup alloc] initWithName:@"inputGroup"];
    v9 = [[EGInput alloc] initWithName:@"sbuf"];
    v7->_sbufInput = v9;
    [(EGInputGroup *)v8 installInput:v9];
    [(EGNode *)v7 installInputGroup:v8];
    v10 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"sbuf"];
    v7->_sbufOutput = v10;
    [(EGNode *)v7 installOutput:v10];
    v7->_resourceCoordinator = a5;
    v7->_stillImageSettings = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageInferenceMergingNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (v5)
  {
    v6 = v5;
    [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator syncMergeInferencesWithSampleBuffer:v5 stillImageSettings:self->_stillImageSettings];
    v7 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:v6];
    [(EGStillImageOutput *)self->_sbufOutput emitPayload:v7];
  }

  else
  {
    [EGStillImageInferenceMergingNode queueManagedReceiveData:? fromInputGroup:?];
  }
}

- (uint64_t)queueManagedReceiveData:(void *)a1 fromInputGroup:.cold.1(void *a1)
{
  v2 = EGStillImageGraphManagerForGraphElement(a1);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error:%d", 4294954516];

  return [v2 didEncounterError:4294954516 description:v3 element:a1];
}

@end