@interface HMIVideoFrameTrackerFrameCandidate
- (HMIVideoFrameTrackerFrameCandidate)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer score:(float)score motionDetections:(id)detections tracks:(id)tracks;
- (id)description;
- (void)dealloc;
@end

@implementation HMIVideoFrameTrackerFrameCandidate

- (HMIVideoFrameTrackerFrameCandidate)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer score:(float)score motionDetections:(id)detections tracks:(id)tracks
{
  detectionsCopy = detections;
  tracksCopy = tracks;
  v15.receiver = self;
  v15.super_class = HMIVideoFrameTrackerFrameCandidate;
  v13 = [(HMIVideoFrameTrackerFrameCandidate *)&v15 init];
  if (v13)
  {
    v13->_sbuf = CFRetain(buffer);
    v13->_score = score;
    objc_storeStrong(&v13->_motionDetections, detections);
    objc_storeStrong(&v13->_tracks, tracks);
  }

  return v13;
}

- (void)dealloc
{
  CFRelease(self->_sbuf);
  v3.receiver = self;
  v3.super_class = HMIVideoFrameTrackerFrameCandidate;
  [(HMIVideoFrameTrackerFrameCandidate *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = HMICMSampleBufferTinyDescription([(HMIVideoFrameTrackerFrameCandidate *)self sbuf]);
  [(HMIVideoFrameTrackerFrameCandidate *)self score];
  v6 = [v3 stringWithFormat:@"%@ - %f", v4, v5];

  return v6;
}

@end