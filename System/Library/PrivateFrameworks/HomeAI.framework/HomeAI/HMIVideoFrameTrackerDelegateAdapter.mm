@interface HMIVideoFrameTrackerDelegateAdapter
- (void)frameTracker:(id)tracker didTrackFrame:(opaqueCMSampleBuffer *)frame background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks;
@end

@implementation HMIVideoFrameTrackerDelegateAdapter

- (void)frameTracker:(id)tracker didTrackFrame:(opaqueCMSampleBuffer *)frame background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks
{
  trackerCopy = tracker;
  detectionsCopy = detections;
  tracksCopy = tracks;
  frameTrackerDidTrackFrame = [(HMIVideoFrameTrackerDelegateAdapter *)self frameTrackerDidTrackFrame];

  if (frameTrackerDidTrackFrame)
  {
    frameTrackerDidTrackFrame2 = [(HMIVideoFrameTrackerDelegateAdapter *)self frameTrackerDidTrackFrame];
    (frameTrackerDidTrackFrame2)[2](frameTrackerDidTrackFrame2, trackerCopy, frame, background, detectionsCopy, tracksCopy);
  }
}

@end