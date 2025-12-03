@interface BWPhotonicEngineNodeSampleBufferAndInput
- (BWPhotonicEngineNodeSampleBufferAndInput)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer nodeInput:(id)input;
- (void)dealloc;
@end

@implementation BWPhotonicEngineNodeSampleBufferAndInput

- (BWPhotonicEngineNodeSampleBufferAndInput)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer nodeInput:(id)input
{
  v8.receiver = self;
  v8.super_class = BWPhotonicEngineNodeSampleBufferAndInput;
  v6 = [(BWPhotonicEngineNodeSampleBufferAndInput *)&v8 init];
  if (v6)
  {
    if (buffer && (v6->_sampleBuffer = CFRetain(buffer), input))
    {
      v6->_nodeInput = input;
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