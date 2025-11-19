@interface HMIVideoFrameSelectorDelegateAdapter
- (opaqueCMSampleBuffer)frameSelector:(id)a3 prepareFrame:(opaqueCMSampleBuffer *)a4;
- (void)frameSelector:(id)a3 didSelectFrame:(opaqueCMSampleBuffer *)a4 reference:(opaqueCMSampleBuffer *)a5;
- (void)frameSelector:(id)a3 didSkipFrame:(opaqueCMSampleBuffer *)a4;
@end

@implementation HMIVideoFrameSelectorDelegateAdapter

- (void)frameSelector:(id)a3 didSelectFrame:(opaqueCMSampleBuffer *)a4 reference:(opaqueCMSampleBuffer *)a5
{
  v10 = a3;
  v8 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorDidSelectFrame];

  if (v8)
  {
    v9 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorDidSelectFrame];
    (v9)[2](v9, v10, a4, a5);
  }
}

- (void)frameSelector:(id)a3 didSkipFrame:(opaqueCMSampleBuffer *)a4
{
  v8 = a3;
  v6 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorDidSkipFrame];

  if (v6)
  {
    v7 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorDidSkipFrame];
    (v7)[2](v7, v8, a4);
  }
}

- (opaqueCMSampleBuffer)frameSelector:(id)a3 prepareFrame:(opaqueCMSampleBuffer *)a4
{
  v6 = a3;
  v7 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorPrepareFrame];

  if (v7)
  {
    v8 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorPrepareFrame];
    v9 = (v8)[2](v8, v6, a4);
  }

  else
  {
    v9 = CFRetain(a4);
  }

  return v9;
}

@end