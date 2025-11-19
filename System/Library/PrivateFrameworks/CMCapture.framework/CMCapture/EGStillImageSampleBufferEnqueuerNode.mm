@interface EGStillImageSampleBufferEnqueuerNode
- (EGStillImageSampleBufferEnqueuerNode)initWithName:(id)a3 primaryPortType:(id)a4 numPrimarySbufOutputs:(int)a5 numSecondarySbufOutputs:(int)a6 stillImageSettings:(id)a7;
- (int)enqueueSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
@end

@implementation EGStillImageSampleBufferEnqueuerNode

- (EGStillImageSampleBufferEnqueuerNode)initWithName:(id)a3 primaryPortType:(id)a4 numPrimarySbufOutputs:(int)a5 numSecondarySbufOutputs:(int)a6 stillImageSettings:(id)a7
{
  v18.receiver = self;
  v18.super_class = EGStillImageSampleBufferEnqueuerNode;
  v10 = [(EGNode *)&v18 initWithName:a3, a4, *&a5, *&a6, a7];
  if (v10)
  {
    v10->_primaryPortType = a4;
    v10->_primarySbufOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a5 >= 1)
    {
      v11 = 0;
      do
      {
        v12 = [EGStillImageOutput alloc];
        v13 = -[EGOutput initWithName:](v12, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"sbuf%d", v11]);
        [(NSMutableArray *)v10->_primarySbufOutputs addObject:v13];
        [(EGNode *)v10 installOutput:v13];
        v11 = (v11 + 1);
      }

      while (a5 != v11);
    }

    v10->_secondarySbufOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a6 >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [EGStillImageOutput alloc];
        v16 = -[EGOutput initWithName:](v15, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"auxSbuf%d", v14]);
        [(NSMutableArray *)v10->_secondarySbufOutputs addObject:v16];
        [(EGNode *)v10 installOutput:v16];
        v14 = (v14 + 1);
      }

      while (a6 != v14);
    }
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageSampleBufferEnqueuerNode;
  [(EGNode *)&v3 dealloc];
}

- (int)enqueueSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [CMGetAttachment(a3 *off_1E798A3C8];
  if (!v5)
  {
    return -12780;
  }

  if ([v5 isEqual:self->_primaryPortType])
  {
    p_primarySbufCount = &self->_primarySbufCount;
    primarySbufCount = self->_primarySbufCount;
    v8 = 72;
  }

  else
  {
    p_primarySbufCount = &self->_secondarySbufCount;
    primarySbufCount = self->_secondarySbufCount;
    v8 = 80;
  }

  v9 = (&self->super.super.isa + v8);
  if ([*v9 count] <= primarySbufCount)
  {
    return -12780;
  }

  v10 = [*v9 objectAtIndexedSubscript:(*p_primarySbufCount)++];
  v11 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a3];
  [v10 emitPayload:v11];

  return 0;
}

@end