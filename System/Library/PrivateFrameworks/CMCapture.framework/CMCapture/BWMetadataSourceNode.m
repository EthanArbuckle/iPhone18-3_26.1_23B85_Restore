@interface BWMetadataSourceNode
- (BOOL)start:(id *)a3;
- (BOOL)stop:(id *)a3;
- (BWMetadataSourceNode)initWithFormatDescription:(opaqueCMFormatDescription *)a3 clock:(OpaqueCMClock *)a4;
- (void)appendMetadataSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
@end

@implementation BWMetadataSourceNode

- (BOOL)start:(id *)a3
{
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__BWMetadataSourceNode_start___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(emitSamplesDispatchQueue, block);
  return 1;
}

_BYTE *__30__BWMetadataSourceNode_start___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[128] & 1) == 0)
  {
    result = [objc_msgSend(result "output")];
    *(*(a1 + 32) + 128) = 1;
  }

  return result;
}

- (BOOL)stop:(id *)a3
{
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__BWMetadataSourceNode_stop___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(emitSamplesDispatchQueue, block);
  return 1;
}

uint64_t __29__BWMetadataSourceNode_stop___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 128) == 1)
  {
    *(v1 + 128) = 0;
    return [*(*(result + 32) + 16) markEndOfLiveOutput];
  }

  return result;
}

- (BWMetadataSourceNode)initWithFormatDescription:(opaqueCMFormatDescription *)a3 clock:(OpaqueCMClock *)a4
{
  if (!a3)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Need a format description";
    goto LABEL_8;
  }

  if (!a4)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Need a clock";
LABEL_8:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v11 userInfo:0]);
  }

  v12.receiver = self;
  v12.super_class = BWMetadataSourceNode;
  v6 = [(BWNode *)&v12 init];
  if (v6)
  {
    v6->_formatDescription = CFRetain(a3);
    v6->_clock = CFRetain(a4);
    v6->_emitSamplesDispatchQueue = FigDispatchQueueCreateWithPriority();
    v7 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v6];
    [(BWNodeOutput *)v7 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v6->_formatDescription]];
    [(BWNode *)v6 addOutput:v7];
  }

  return v6;
}

- (void)dealloc
{
  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  clock = self->_clock;
  if (clock)
  {
    CFRelease(clock);
  }

  v5.receiver = self;
  v5.super_class = BWMetadataSourceNode;
  [(BWNode *)&v5 dealloc];
}

- (void)appendMetadataSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (a3)
  {
    if (self->_running)
    {
      CFRetain(a3);
      emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __51__BWMetadataSourceNode_appendMetadataSampleBuffer___block_invoke;
      v6[3] = &unk_1E7990178;
      v6[4] = self;
      v6[5] = a3;
      dispatch_async(emitSamplesDispatchQueue, v6);
    }
  }
}

void __51__BWMetadataSourceNode_appendMetadataSampleBuffer___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "output")];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end