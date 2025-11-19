@interface HMIVideoFrameTrackerFrameCandidate
- (HMIVideoFrameTrackerFrameCandidate)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 score:(float)a4 motionDetections:(id)a5 tracks:(id)a6;
- (id)description;
- (void)dealloc;
@end

@implementation HMIVideoFrameTrackerFrameCandidate

- (HMIVideoFrameTrackerFrameCandidate)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 score:(float)a4 motionDetections:(id)a5 tracks:(id)a6
{
  v11 = a5;
  v12 = a6;
  v15.receiver = self;
  v15.super_class = HMIVideoFrameTrackerFrameCandidate;
  v13 = [(HMIVideoFrameTrackerFrameCandidate *)&v15 init];
  if (v13)
  {
    v13->_sbuf = CFRetain(a3);
    v13->_score = a4;
    objc_storeStrong(&v13->_motionDetections, a5);
    objc_storeStrong(&v13->_tracks, a6);
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