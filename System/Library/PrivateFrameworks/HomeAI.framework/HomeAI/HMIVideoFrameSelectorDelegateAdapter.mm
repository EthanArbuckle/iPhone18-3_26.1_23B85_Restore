@interface HMIVideoFrameSelectorDelegateAdapter
- (opaqueCMSampleBuffer)frameSelector:(id)selector prepareFrame:(opaqueCMSampleBuffer *)frame;
- (void)frameSelector:(id)selector didSelectFrame:(opaqueCMSampleBuffer *)frame reference:(opaqueCMSampleBuffer *)reference;
- (void)frameSelector:(id)selector didSkipFrame:(opaqueCMSampleBuffer *)frame;
@end

@implementation HMIVideoFrameSelectorDelegateAdapter

- (void)frameSelector:(id)selector didSelectFrame:(opaqueCMSampleBuffer *)frame reference:(opaqueCMSampleBuffer *)reference
{
  selectorCopy = selector;
  frameSelectorDidSelectFrame = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorDidSelectFrame];

  if (frameSelectorDidSelectFrame)
  {
    frameSelectorDidSelectFrame2 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorDidSelectFrame];
    (frameSelectorDidSelectFrame2)[2](frameSelectorDidSelectFrame2, selectorCopy, frame, reference);
  }
}

- (void)frameSelector:(id)selector didSkipFrame:(opaqueCMSampleBuffer *)frame
{
  selectorCopy = selector;
  frameSelectorDidSkipFrame = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorDidSkipFrame];

  if (frameSelectorDidSkipFrame)
  {
    frameSelectorDidSkipFrame2 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorDidSkipFrame];
    (frameSelectorDidSkipFrame2)[2](frameSelectorDidSkipFrame2, selectorCopy, frame);
  }
}

- (opaqueCMSampleBuffer)frameSelector:(id)selector prepareFrame:(opaqueCMSampleBuffer *)frame
{
  selectorCopy = selector;
  frameSelectorPrepareFrame = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorPrepareFrame];

  if (frameSelectorPrepareFrame)
  {
    frameSelectorPrepareFrame2 = [(HMIVideoFrameSelectorDelegateAdapter *)self frameSelectorPrepareFrame];
    v9 = (frameSelectorPrepareFrame2)[2](frameSelectorPrepareFrame2, selectorCopy, frame);
  }

  else
  {
    v9 = CFRetain(frame);
  }

  return v9;
}

@end