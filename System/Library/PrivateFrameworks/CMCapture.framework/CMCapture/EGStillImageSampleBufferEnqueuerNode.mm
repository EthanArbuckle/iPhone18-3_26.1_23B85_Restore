@interface EGStillImageSampleBufferEnqueuerNode
- (EGStillImageSampleBufferEnqueuerNode)initWithName:(id)name primaryPortType:(id)type numPrimarySbufOutputs:(int)outputs numSecondarySbufOutputs:(int)sbufOutputs stillImageSettings:(id)settings;
- (int)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
@end

@implementation EGStillImageSampleBufferEnqueuerNode

- (EGStillImageSampleBufferEnqueuerNode)initWithName:(id)name primaryPortType:(id)type numPrimarySbufOutputs:(int)outputs numSecondarySbufOutputs:(int)sbufOutputs stillImageSettings:(id)settings
{
  v18.receiver = self;
  v18.super_class = EGStillImageSampleBufferEnqueuerNode;
  settings = [(EGNode *)&v18 initWithName:name, type, *&outputs, *&sbufOutputs, settings];
  if (settings)
  {
    settings->_primaryPortType = type;
    settings->_primarySbufOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (outputs >= 1)
    {
      v11 = 0;
      do
      {
        v12 = [EGStillImageOutput alloc];
        v13 = -[EGOutput initWithName:](v12, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"sbuf%d", v11]);
        [(NSMutableArray *)settings->_primarySbufOutputs addObject:v13];
        [(EGNode *)settings installOutput:v13];
        v11 = (v11 + 1);
      }

      while (outputs != v11);
    }

    settings->_secondarySbufOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (sbufOutputs >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [EGStillImageOutput alloc];
        v16 = -[EGOutput initWithName:](v15, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"auxSbuf%d", v14]);
        [(NSMutableArray *)settings->_secondarySbufOutputs addObject:v16];
        [(EGNode *)settings installOutput:v16];
        v14 = (v14 + 1);
      }

      while (sbufOutputs != v14);
    }
  }

  return settings;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageSampleBufferEnqueuerNode;
  [(EGNode *)&v3 dealloc];
}

- (int)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v5 = [CMGetAttachment(buffer *off_1E798A3C8];
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
  v11 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:buffer];
  [v10 emitPayload:v11];

  return 0;
}

@end