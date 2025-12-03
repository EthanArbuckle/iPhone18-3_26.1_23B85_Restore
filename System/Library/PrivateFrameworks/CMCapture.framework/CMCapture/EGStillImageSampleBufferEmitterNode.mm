@interface EGStillImageSampleBufferEmitterNode
- (EGStillImageSampleBufferEmitterNode)initWithName:(id)name description:(id)description;
- (void)dealloc;
- (void)receiveData:(id)data fromInput:(id)input;
@end

@implementation EGStillImageSampleBufferEmitterNode

- (EGStillImageSampleBufferEmitterNode)initWithName:(id)name description:(id)description
{
  v9.receiver = self;
  v9.super_class = EGStillImageSampleBufferEmitterNode;
  v5 = [(EGNode *)&v9 initWithName:name];
  if (v5)
  {
    v5->_description = description;
    v6 = [[EGInput alloc] initWithName:@"sbuf"];
    v5->_sbufInput = v6;
    [(EGNode *)v5 installInput:v6];
    v7 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"captureComplete"];
    v5->_captureCompleteOutput = v7;
    [(EGNode *)v5 installOutput:v7];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageSampleBufferEmitterNode;
  [(EGNode *)&v3 dealloc];
}

- (void)receiveData:(id)data fromInput:(id)input
{
  sampleBuffer = [data sampleBuffer];
  v6 = EGStillImageGraphManagerForGraphElement(self);
  if (sampleBuffer)
  {
    [v6 didFinishProcessingSampleBuffer:sampleBuffer description:self->_description];
    captureCompleteOutput = self->_captureCompleteOutput;
    initWithEmptyPayload = [[EGStillImageGraphPayload alloc] initWithEmptyPayload];

    [(EGStillImageOutput *)captureCompleteOutput emitPayload:initWithEmptyPayload];
  }

  else
  {
    [EGStillImageSampleBufferEmitterNode receiveData:v6 fromInput:self];
  }
}

- (uint64_t)receiveData:(void *)a1 fromInput:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error:%d", 4294954516];

  return [a1 didEncounterError:4294954516 description:v4 element:a2];
}

@end