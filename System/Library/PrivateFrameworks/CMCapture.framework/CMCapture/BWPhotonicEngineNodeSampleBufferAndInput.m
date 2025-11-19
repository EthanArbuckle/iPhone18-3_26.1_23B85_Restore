@interface BWPhotonicEngineNodeSampleBufferAndInput
- (BWPhotonicEngineNodeSampleBufferAndInput)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 nodeInput:(id)a4;
- (void)dealloc;
@end

@implementation BWPhotonicEngineNodeSampleBufferAndInput

- (BWPhotonicEngineNodeSampleBufferAndInput)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 nodeInput:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWPhotonicEngineNodeSampleBufferAndInput;
  v6 = [(BWPhotonicEngineNodeSampleBufferAndInput *)&v8 init];
  if (v6)
  {
    if (a3 && (v6->_sampleBuffer = CFRetain(a3), a4))
    {
      v6->_nodeInput = a4;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
  }

  v4.receiver = self;
  v4.super_class = BWPhotonicEngineNodeSampleBufferAndInput;
  [(BWPhotonicEngineNodeSampleBufferAndInput *)&v4 dealloc];
}

@end