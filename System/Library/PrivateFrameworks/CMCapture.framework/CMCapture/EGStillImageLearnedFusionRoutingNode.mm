@interface EGStillImageLearnedFusionRoutingNode
- (EGStillImageLearnedFusionRoutingNode)initWithName:(id)name numSampleBufferInputs:(int)inputs;
- (void)dealloc;
- (void)receiveData:(id)data fromInput:(id)input;
@end

@implementation EGStillImageLearnedFusionRoutingNode

- (EGStillImageLearnedFusionRoutingNode)initWithName:(id)name numSampleBufferInputs:(int)inputs
{
  v14.receiver = self;
  v14.super_class = EGStillImageLearnedFusionRoutingNode;
  v5 = [(EGNode *)&v14 initWithName:name];
  if (v5)
  {
    v5->_sampleBufferInputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (inputs >= 1)
    {
      v6 = 0;
      do
      {
        v7 = [EGInput alloc];
        v8 = -[EGInput initWithName:](v7, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"sbuf%d", v6]);
        [(EGNode *)v5 installInput:v8];
        [(NSMutableArray *)v5->_sampleBufferInputs addObject:v8];
        v6 = (v6 + 1);
      }

      while (inputs != v6);
    }

    v9 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"evZero"];
    v5->_evZeroOutput = v9;
    [(EGNode *)v5 installOutput:v9];
    v10 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"long"];
    v5->_longOutput = v10;
    [(EGNode *)v5 installOutput:v10];
    v11 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"evMinus"];
    v5->_evMinusOutput = v11;
    [(EGNode *)v5 installOutput:v11];
    v12 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"secondEvZero"];
    v5->_secondEvZeroOutput = v12;
    [(EGNode *)v5 installOutput:v12];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageLearnedFusionRoutingNode;
  [(EGNode *)&v3 dealloc];
}

- (void)receiveData:(id)data fromInput:(id)input
{
  v6 = BWStillImageCaptureFrameFlagsForSampleBuffer([data sampleBuffer]);
  if ((v6 & 4) != 0)
  {
    v7 = &OBJC_IVAR___EGStillImageLearnedFusionRoutingNode__evMinusOutput;
  }

  else if ((v6 & 8) != 0)
  {
    v7 = &OBJC_IVAR___EGStillImageLearnedFusionRoutingNode__longOutput;
  }

  else
  {
    if ((v6 & 2) == 0)
    {
      return;
    }

    v7 = &OBJC_IVAR___EGStillImageLearnedFusionRoutingNode__evZeroOutput;
    if ((v6 & 0x10) == 0)
    {
      v7 = &OBJC_IVAR___EGStillImageLearnedFusionRoutingNode__secondEvZeroOutput;
    }
  }

  v8 = *(&self->super.super.isa + *v7);
  if (v8)
  {

    [v8 emitPayload:data];
  }
}

@end