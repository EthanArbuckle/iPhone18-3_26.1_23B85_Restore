@interface HMIVideoFrameSamplerDelegateAdapter
- (void)frameSampler:(id)a3 didDropFrame:(opaqueCMSampleBuffer *)a4;
- (void)frameSampler:(id)a3 didSampleFrame:(opaqueCMSampleBuffer *)a4;
@end

@implementation HMIVideoFrameSamplerDelegateAdapter

- (void)frameSampler:(id)a3 didSampleFrame:(opaqueCMSampleBuffer *)a4
{
  v8 = a3;
  v6 = [(HMIVideoFrameSamplerDelegateAdapter *)self frameSamplerDidSampleFrame];

  if (v6)
  {
    v7 = [(HMIVideoFrameSamplerDelegateAdapter *)self frameSamplerDidSampleFrame];
    (v7)[2](v7, v8, a4);
  }
}

- (void)frameSampler:(id)a3 didDropFrame:(opaqueCMSampleBuffer *)a4
{
  v8 = a3;
  v6 = [(HMIVideoFrameSamplerDelegateAdapter *)self frameSamplerDidDropFrame];

  if (v6)
  {
    v7 = [(HMIVideoFrameSamplerDelegateAdapter *)self frameSamplerDidDropFrame];
    (v7)[2](v7, v8, a4);
  }
}

@end