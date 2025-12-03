@interface HMDCameraRecordingPreferredVideoConfiguration
- (HMDCameraRecordingPreferredVideoConfiguration)initWithResolution:(int64_t)resolution bitRateByFrameRate:(id)rate keyFrameInterval:(id)interval h264Level:(int64_t)level;
- (id)description;
@end

@implementation HMDCameraRecordingPreferredVideoConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  resolution = [(HMDCameraRecordingPreferredVideoConfiguration *)self resolution];
  if (resolution >= 0x16)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingVideoResolutionType %ld", resolution];
  }

  else
  {
    v5 = off_27972D8A8[resolution];
  }

  bitRateByFrameRate = [(HMDCameraRecordingPreferredVideoConfiguration *)self bitRateByFrameRate];
  keyFrameInterval = [(HMDCameraRecordingPreferredVideoConfiguration *)self keyFrameInterval];
  v8 = HMDCameraRecordingH264LevelTypeAsString([(HMDCameraRecordingPreferredVideoConfiguration *)self h264Level]);
  v9 = [v3 stringWithFormat:@"resolution: %@px, bitRateByFrameRate: %@ key frame interval: %@ms h264 level: %@", v5, bitRateByFrameRate, keyFrameInterval, v8];

  return v9;
}

- (HMDCameraRecordingPreferredVideoConfiguration)initWithResolution:(int64_t)resolution bitRateByFrameRate:(id)rate keyFrameInterval:(id)interval h264Level:(int64_t)level
{
  rateCopy = rate;
  intervalCopy = interval;
  v16.receiver = self;
  v16.super_class = HMDCameraRecordingPreferredVideoConfiguration;
  v13 = [(HMDCameraRecordingPreferredVideoConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_resolution = resolution;
    objc_storeStrong(&v13->_bitRateByFrameRate, rate);
    objc_storeStrong(&v14->_keyFrameInterval, interval);
    v14->_h264Level = level;
  }

  return v14;
}

@end