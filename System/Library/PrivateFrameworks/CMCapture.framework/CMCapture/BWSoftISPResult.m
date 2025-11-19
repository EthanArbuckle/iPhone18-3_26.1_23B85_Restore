@interface BWSoftISPResult
- (BWSoftISPResult)initWithInput:(id)a3 outputSampleBuffer:(opaqueCMSampleBuffer *)a4 error:(int)a5;
- (void)dealloc;
@end

@implementation BWSoftISPResult

- (BWSoftISPResult)initWithInput:(id)a3 outputSampleBuffer:(opaqueCMSampleBuffer *)a4 error:(int)a5
{
  v11.receiver = self;
  v11.super_class = BWSoftISPResult;
  v8 = [(BWSoftISPResult *)&v11 init];
  if (v8)
  {
    v8->_input = a3;
    if (a4)
    {
      v9 = CFRetain(a4);
    }

    else
    {
      v9 = 0;
    }

    v8->_outputSampleBuffer = v9;
    v8->_error = a5;
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