@interface EGStillImagePrepareUnprocessedReferenceFrameNode
- (EGStillImagePrepareUnprocessedReferenceFrameNode)initWithName:(id)a3;
- (void)dealloc;
- (void)receiveData:(id)a3 fromInput:(id)a4;
@end

@implementation EGStillImagePrepareUnprocessedReferenceFrameNode

- (EGStillImagePrepareUnprocessedReferenceFrameNode)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = EGStillImagePrepareUnprocessedReferenceFrameNode;
  v3 = [(EGNode *)&v7 initWithName:a3];
  if (v3)
  {
    v4 = [[EGInput alloc] initWithName:@"sbuf"];
    v3->_sbufInput = v4;
    [(EGNode *)v3 installInput:v4];
    v5 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"sbuf"];
    v3->_sbufOutput = v5;
    [(EGNode *)v3 installOutput:v5];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImagePrepareUnprocessedReferenceFrameNode;
  [(EGNode *)&v3 dealloc];
}

- (void)receiveData:(id)a3 fromInput:(id)a4
{
  v5 = [a3 sampleBuffer];
  if (v5)
  {
    if ([(EGStillImagePrepareUnprocessedReferenceFrameNode *)v5 receiveData:self fromInput:&v8])
    {
      return;
    }

    v6 = v8;
  }

  else
  {
    v6 = 4294954516;
  }

  [EGStillImagePrepareUnprocessedReferenceFrameNode receiveData:v6 fromInput:?];
}

- (BOOL)receiveData:(uint64_t)a3 fromInput:(_DWORD *)a4 .cold.1(opaqueCMSampleBuffer *a1, CMSampleBufferRef *a2, uint64_t a3, _DWORD *a4)
{
  CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(a1, a2);
  *a4 = CopyIncludingMetadata;
  v8 = *a2;
  if (!CopyIncludingMetadata)
  {
    CMSetAttachment(v8, @"NonProcessedReferenceFrame", MEMORY[0x1E695E118], 1u);
    v9 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:*a2];
    [*(a3 + 80) emitPayload:v9];

    v8 = *a2;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return CopyIncludingMetadata == 0;
}

@end