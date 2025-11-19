@interface HMIVideoRetimerDelegateAdapter
- (void)retimer:(id)a3 didRetimeSampleBuffer:(opaqueCMSampleBuffer *)a4;
@end

@implementation HMIVideoRetimerDelegateAdapter

- (void)retimer:(id)a3 didRetimeSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v8 = a3;
  v6 = [(HMIVideoRetimerDelegateAdapter *)self retimerDidRetimeSampleBuffer];

  if (v6)
  {
    v7 = [(HMIVideoRetimerDelegateAdapter *)self retimerDidRetimeSampleBuffer];
    (v7)[2](v7, v8, a4);
  }
}

@end