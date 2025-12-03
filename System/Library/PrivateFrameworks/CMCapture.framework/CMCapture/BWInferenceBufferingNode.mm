@interface BWInferenceBufferingNode
- (BWInferenceBufferingNode)initWithConvEngineSupportWithCaptureDevice:(id)device scheduler:(id)scheduler priority:(unsigned int)priority;
- (int)addInferenceOfType:(int)type version:(id)version configuration:(id)configuration ringBufferCapacity:(int)capacity;
- (void)dealloc;
- (void)willEmitSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation BWInferenceBufferingNode

- (BWInferenceBufferingNode)initWithConvEngineSupportWithCaptureDevice:(id)device scheduler:(id)scheduler priority:(unsigned int)priority
{
  v7.receiver = self;
  v7.super_class = BWInferenceBufferingNode;
  v5 = [(BWInferenceNode *)&v7 initWithConvEngineSupportWithCaptureDevice:device scheduler:scheduler priority:*&priority];
  if (v5)
  {
    v5->_ringBuffers = objc_alloc_init(BWInferenceResultRingBuffers);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceBufferingNode;
  [(BWInferenceNode *)&v3 dealloc];
}

- (void)willEmitSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  [(BWInferenceResultRingBuffers *)self->_ringBuffers insertInferenceResultsFromSampleBuffer:?];
  v5.receiver = self;
  v5.super_class = BWInferenceBufferingNode;
  [(BWInferenceNode *)&v5 willEmitSampleBuffer:buffer];
}

- (int)addInferenceOfType:(int)type version:(id)version configuration:(id)configuration ringBufferCapacity:(int)capacity
{
  v7 = *&version.var0;
  v8 = *&type;
  [(BWInferenceResultRingBuffers *)self->_ringBuffers setupRingBuffer:*&capacity inferencesOfType:*&type];
  v11.receiver = self;
  v11.super_class = BWInferenceBufferingNode;
  return [(BWInferenceNode *)&v11 addInferenceOfType:v8 version:v7 & 0xFFFFFFFFFFFFLL configuration:configuration];
}

@end