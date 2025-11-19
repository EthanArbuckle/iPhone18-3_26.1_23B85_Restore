@interface BWVideoSDOFSplitNode
- (BWVideoSDOFSplitNode)init;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWVideoSDOFSplitNode

- (BWVideoSDOFSplitNode)init
{
  v5.receiver = self;
  v5.super_class = BWVideoSDOFSplitNode;
  v2 = [(BWFanOutNode *)&v5 initWithFanOutCount:2 mediaType:1986618469];
  v3 = v2;
  if (v2)
  {
    v2->_originalOutput = [(NSArray *)[(BWNode *)v2 outputs] objectAtIndexedSubscript:0];
    v3->_sdofOutput = [(NSArray *)[(BWNode *)v3 outputs] objectAtIndexedSubscript:1];
  }

  return v3;
}

- (void)dealloc
{
  originalVideoFormatDescription = self->_originalVideoFormatDescription;
  if (originalVideoFormatDescription)
  {
    CFRelease(originalVideoFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWVideoSDOFSplitNode;
  [(BWFanOutNode *)&v4 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (BWSampleBufferIsMarkerBuffer(a3))
  {
    [(BWNodeOutput *)self->_originalOutput emitSampleBuffer:a3];
    v6 = 192;
LABEL_9:
    v9 = *(&self->super.super.super.isa + v6);

    [v9 emitSampleBuffer:a3];
    return;
  }

  v7 = CMGetAttachment(a3, @"UnfilteredPixelBuffer", 0);
  if (!v7)
  {
    v6 = 184;
    goto LABEL_9;
  }

  v8 = v7;
  CFRetain(v7);
  CMRemoveAttachment(a3, @"UnfilteredPixelBuffer");
  cf = 0;
  BWCMSampleBufferCreateCopyWithNewPixelBuffer(a3, v8, &self->_originalVideoFormatDescription, &cf);
  CFRelease(v8);
  if (cf)
  {
    v10 = 0;
    BWCMSampleBufferCreateCopyIncludingMetadata(cf, &v10);
    CFRelease(cf);
    if (v10)
    {
      [(BWNodeOutput *)self->_originalOutput emitSampleBuffer:?];
      CFRelease(v10);
    }
  }

  [(BWNodeOutput *)self->_sdofOutput emitSampleBuffer:a3];
}

@end