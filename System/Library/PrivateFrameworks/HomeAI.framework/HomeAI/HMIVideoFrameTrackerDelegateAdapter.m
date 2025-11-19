@interface HMIVideoFrameTrackerDelegateAdapter
- (void)frameTracker:(id)a3 didTrackFrame:(opaqueCMSampleBuffer *)a4 background:(opaqueCMSampleBuffer *)a5 motionDetections:(id)a6 tracks:(id)a7;
@end

@implementation HMIVideoFrameTrackerDelegateAdapter

- (void)frameTracker:(id)a3 didTrackFrame:(opaqueCMSampleBuffer *)a4 background:(opaqueCMSampleBuffer *)a5 motionDetections:(id)a6 tracks:(id)a7
{
  v16 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [(HMIVideoFrameTrackerDelegateAdapter *)self frameTrackerDidTrackFrame];

  if (v14)
  {
    v15 = [(HMIVideoFrameTrackerDelegateAdapter *)self frameTrackerDidTrackFrame];
    (v15)[2](v15, v16, a4, a5, v12, v13);
  }
}

@end