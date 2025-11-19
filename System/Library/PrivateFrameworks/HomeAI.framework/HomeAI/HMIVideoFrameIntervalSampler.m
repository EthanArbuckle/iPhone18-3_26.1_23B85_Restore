@interface HMIVideoFrameIntervalSampler
- (HMIVideoFrameIntervalSampler)initWithInterval:(id *)a3;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation HMIVideoFrameIntervalSampler

- (HMIVideoFrameIntervalSampler)initWithInterval:(id *)a3
{
  v7.receiver = self;
  v7.super_class = HMIVideoFrameIntervalSampler;
  result = [(HMIVideoFrameIntervalSampler *)&v7 init];
  if (result)
  {
    var3 = a3->var3;
    *&result->_interval.value = *&a3->var0;
    result->_interval.epoch = var3;
    v6 = MEMORY[0x277CC0898];
    result->_firstPTS.epoch = *(MEMORY[0x277CC0898] + 16);
    *&result->_firstPTS.value = *v6;
    result->_lastSampledIntervalIndex = -1;
  }

  return result;
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  memset(&v20, 0, sizeof(v20));
  CMSampleBufferGetPresentationTimeStamp(&v20, a3);
  if ((v20.flags & 1) == 0)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = MEMORY[0x277CCACA8];
    time = v20;
    v13 = CMTimeCopyDescription(0, &time);
    v14 = [v12 stringWithFormat:@"Sample buffer has an invalid presentation time stamp: %@", v13];
    v15 = [v10 exceptionWithName:v11 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  p_firstPTS = &self->_firstPTS;
  if ((self->_firstPTS.flags & 1) == 0)
  {
    *&p_firstPTS->value = *&v20.value;
    self->_firstPTS.epoch = v20.epoch;
  }

  lhs = v20;
  *&rhs.value = *&p_firstPTS->value;
  rhs.epoch = self->_firstPTS.epoch;
  CMTimeSubtract(&time, &lhs, &rhs);
  lhs = self->_interval;
  v6 = CMTimeDivide();
  lastSampledIntervalIndex = self->_lastSampledIntervalIndex;
  v8 = [(HMIVideoFrameSampler *)self delegate];
  v9 = v8;
  if (v6 <= lastSampledIntervalIndex)
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 frameSampler:self didDropFrame:a3];
    }
  }

  else
  {
    [v8 frameSampler:self didSampleFrame:a3];

    self->_lastSampledIntervalIndex = v6;
  }
}

@end