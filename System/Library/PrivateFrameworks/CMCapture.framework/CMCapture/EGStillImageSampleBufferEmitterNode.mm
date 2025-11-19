@interface EGStillImageSampleBufferEmitterNode
- (EGStillImageSampleBufferEmitterNode)initWithName:(id)a3 description:(id)a4;
- (void)dealloc;
- (void)receiveData:(id)a3 fromInput:(id)a4;
@end

@implementation EGStillImageSampleBufferEmitterNode

- (EGStillImageSampleBufferEmitterNode)initWithName:(id)a3 description:(id)a4
{
  v9.receiver = self;
  v9.super_class = EGStillImageSampleBufferEmitterNode;
  v5 = [(EGNode *)&v9 initWithName:a3];
  if (v5)
  {
    v5->_description = a4;
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

- (void)receiveData:(id)a3 fromInput:(id)a4
{
  v5 = [a3 sampleBuffer];
  v6 = EGStillImageGraphManagerForGraphElement(self);
  if (v5)
  {
    [v6 didFinishProcessingSampleBuffer:v5 description:self->_description];
    captureCompleteOutput = self->_captureCompleteOutput;
    v8 = [[EGStillImageGraphPayload alloc] initWithEmptyPayload];

    [(EGStillImageOutput *)captureCompleteOutput emitPayload:v8];
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