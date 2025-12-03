@interface BWSoftISPResult
- (BWSoftISPResult)initWithInput:(id)input outputSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(int)error;
- (void)dealloc;
@end

@implementation BWSoftISPResult

- (BWSoftISPResult)initWithInput:(id)input outputSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(int)error
{
  v11.receiver = self;
  v11.super_class = BWSoftISPResult;
  v8 = [(BWSoftISPResult *)&v11 init];
  if (v8)
  {
    v8->_input = input;
    if (buffer)
    {
      v9 = CFRetain(buffer);
    }

    else
    {
      v9 = 0;
    }

    v8->_outputSampleBuffer = v9;
    v8->_error = error;
  }

  return v8;
}

- (void)dealloc
{
  outputSampleBuffer = self->_outputSampleBuffer;
  if (outputSampleBuffer)
  {
    CFRelease(outputSampleBuffer);
  }

  v4.receiver = self;
  v4.super_class = BWSoftISPResult;
  [(BWSoftISPResult *)&v4 dealloc];
}

@end