@interface HMIVideoRetimerDelegateAdapter
- (void)retimer:(id)retimer didRetimeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation HMIVideoRetimerDelegateAdapter

- (void)retimer:(id)retimer didRetimeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  retimerCopy = retimer;
  retimerDidRetimeSampleBuffer = [(HMIVideoRetimerDelegateAdapter *)self retimerDidRetimeSampleBuffer];

  if (retimerDidRetimeSampleBuffer)
  {
    retimerDidRetimeSampleBuffer2 = [(HMIVideoRetimerDelegateAdapter *)self retimerDidRetimeSampleBuffer];
    (retimerDidRetimeSampleBuffer2)[2](retimerDidRetimeSampleBuffer2, retimerCopy, buffer);
  }
}

@end