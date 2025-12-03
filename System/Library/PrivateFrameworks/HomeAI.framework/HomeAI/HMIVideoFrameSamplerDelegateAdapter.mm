@interface HMIVideoFrameSamplerDelegateAdapter
- (void)frameSampler:(id)sampler didDropFrame:(opaqueCMSampleBuffer *)frame;
- (void)frameSampler:(id)sampler didSampleFrame:(opaqueCMSampleBuffer *)frame;
@end

@implementation HMIVideoFrameSamplerDelegateAdapter

- (void)frameSampler:(id)sampler didSampleFrame:(opaqueCMSampleBuffer *)frame
{
  samplerCopy = sampler;
  frameSamplerDidSampleFrame = [(HMIVideoFrameSamplerDelegateAdapter *)self frameSamplerDidSampleFrame];

  if (frameSamplerDidSampleFrame)
  {
    frameSamplerDidSampleFrame2 = [(HMIVideoFrameSamplerDelegateAdapter *)self frameSamplerDidSampleFrame];
    (frameSamplerDidSampleFrame2)[2](frameSamplerDidSampleFrame2, samplerCopy, frame);
  }
}

- (void)frameSampler:(id)sampler didDropFrame:(opaqueCMSampleBuffer *)frame
{
  samplerCopy = sampler;
  frameSamplerDidDropFrame = [(HMIVideoFrameSamplerDelegateAdapter *)self frameSamplerDidDropFrame];

  if (frameSamplerDidDropFrame)
  {
    frameSamplerDidDropFrame2 = [(HMIVideoFrameSamplerDelegateAdapter *)self frameSamplerDidDropFrame];
    (frameSamplerDidDropFrame2)[2](frameSamplerDidDropFrame2, samplerCopy, frame);
  }
}

@end