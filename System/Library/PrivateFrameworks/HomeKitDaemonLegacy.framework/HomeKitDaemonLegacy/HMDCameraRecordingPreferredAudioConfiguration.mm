@interface HMDCameraRecordingPreferredAudioConfiguration
- (HMDCameraRecordingPreferredAudioConfiguration)initWithSampleRate:(int64_t)rate bitRate:(id)bitRate;
- (id)description;
@end

@implementation HMDCameraRecordingPreferredAudioConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = HMDCameraRecordingAudioSampleRateTypeAsString([(HMDCameraRecordingPreferredAudioConfiguration *)self sampleRate]);
  bitRate = [(HMDCameraRecordingPreferredAudioConfiguration *)self bitRate];
  v6 = [v3 stringWithFormat:@"sample rate: %@kHz bit rate: %@kbps", v4, bitRate];

  return v6;
}

- (HMDCameraRecordingPreferredAudioConfiguration)initWithSampleRate:(int64_t)rate bitRate:(id)bitRate
{
  bitRateCopy = bitRate;
  v11.receiver = self;
  v11.super_class = HMDCameraRecordingPreferredAudioConfiguration;
  v8 = [(HMDCameraRecordingPreferredAudioConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sampleRate = rate;
    objc_storeStrong(&v8->_bitRate, bitRate);
  }

  return v9;
}

@end