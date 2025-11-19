@interface HMDCameraRecordingPreferredVideoConfiguration
- (HMDCameraRecordingPreferredVideoConfiguration)initWithResolution:(int64_t)a3 bitRateByFrameRate:(id)a4 keyFrameInterval:(id)a5 h264Level:(int64_t)a6;
- (id)description;
@end

@implementation HMDCameraRecordingPreferredVideoConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCameraRecordingPreferredVideoConfiguration *)self resolution];
  if (v4 >= 0x16)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingVideoResolutionType %ld", v4];
  }

  else
  {
    v5 = off_27972D8A8[v4];
  }

  v6 = [(HMDCameraRecordingPreferredVideoConfiguration *)self bitRateByFrameRate];
  v7 = [(HMDCameraRecordingPreferredVideoConfiguration *)self keyFrameInterval];
  v8 = HMDCameraRecordingH264LevelTypeAsString([(HMDCameraRecordingPreferredVideoConfiguration *)self h264Level]);
  v9 = [v3 stringWithFormat:@"resolution: %@px, bitRateByFrameRate: %@ key frame interval: %@ms h264 level: %@", v5, v6, v7, v8];

  return v9;
}

- (HMDCameraRecordingPreferredVideoConfiguration)initWithResolution:(int64_t)a3 bitRateByFrameRate:(id)a4 keyFrameInterval:(id)a5 h264Level:(int64_t)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = HMDCameraRecordingPreferredVideoConfiguration;
  v13 = [(HMDCameraRecordingPreferredVideoConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_resolution = a3;
    objc_storeStrong(&v13->_bitRateByFrameRate, a4);
    objc_storeStrong(&v14->_keyFrameInterval, a5);
    v14->_h264Level = a6;
  }

  return v14;
}

@end