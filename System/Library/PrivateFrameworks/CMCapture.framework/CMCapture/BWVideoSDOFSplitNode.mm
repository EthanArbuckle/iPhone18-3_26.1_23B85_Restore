@interface BWVideoSDOFSplitNode
- (BWVideoSDOFSplitNode)init;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
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

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    [(BWNodeOutput *)self->_originalOutput emitSampleBuffer:buffer];
    v6 = 192;
LABEL_9:
    v9 = *(&self->super.super.super.isa + v6);

    [v9 emitSampleBuffer:buffer];
    return;
  }

  v7 = CMGetAttachment(buffer, @"UnfilteredPixelBuffer", 0);
  if (!v7)
  {
    v6 = 184;
    goto LABEL_9;
  }

  v8 = v7;
  CFRetain(v7);
  CMRemoveAttachment(buffer, @"UnfilteredPixelBuffer");
  cf = 0;
  BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v8, &self->_originalVideoFormatDescription, &cf);
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

  [(BWNodeOutput *)self->_sdofOutput emitSampleBuffer:buffer];
}

@end