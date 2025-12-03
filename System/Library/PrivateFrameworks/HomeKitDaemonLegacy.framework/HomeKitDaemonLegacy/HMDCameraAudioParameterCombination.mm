@interface HMDCameraAudioParameterCombination
- (BOOL)isEqual:(id)equal;
- (HMDCameraAudioParameterCombination)initWithCodecGroup:(id)group bitrateSetting:(id)setting sampleRate:(id)rate;
- (HMDCameraAudioParameterCombination)initWithCodecGroup:(id)group bitrateSetting:(id)setting sampleRate:(id)rate maximumBitrate:(id)bitrate minimumBitrate:(id)minimumBitrate rtcpInterval:(id)interval rtpPtime:(id)ptime;
- (id)description;
@end

@implementation HMDCameraAudioParameterCombination

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      codecGroupType = [(HMDCameraAudioParameterCombination *)self codecGroupType];
      codecGroupType2 = [(HMDCameraAudioParameterCombination *)v5 codecGroupType];
      if ([codecGroupType isEqual:codecGroupType2])
      {
        bitrateSetting = [(HMDCameraAudioParameterCombination *)self bitrateSetting];
        bitrateSetting2 = [(HMDCameraAudioParameterCombination *)v5 bitrateSetting];
        v10 = [bitrateSetting isEqual:bitrateSetting2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  codecGroupType = [(HMDCameraAudioParameterCombination *)self codecGroupType];
  bitrateSetting = [(HMDCameraAudioParameterCombination *)self bitrateSetting];
  sampleRate = [(HMDCameraAudioParameterCombination *)self sampleRate];
  maximumBitrate = [(HMDCameraAudioParameterCombination *)self maximumBitrate];
  minimumBitrate = [(HMDCameraAudioParameterCombination *)self minimumBitrate];
  rtcpInterval = [(HMDCameraAudioParameterCombination *)self rtcpInterval];
  rtpPTime = [(HMDCameraAudioParameterCombination *)self rtpPTime];
  v11 = [v3 stringWithFormat:@"<codecType = %@, bitrateSetting = %@, sampleAudioRate = %@, maxBitrate = %@, minBitrate = %@, rtcpInterval = %@, rtpPtime = %@>", codecGroupType, bitrateSetting, sampleRate, maximumBitrate, minimumBitrate, rtcpInterval, rtpPTime];

  return v11;
}

- (HMDCameraAudioParameterCombination)initWithCodecGroup:(id)group bitrateSetting:(id)setting sampleRate:(id)rate maximumBitrate:(id)bitrate minimumBitrate:(id)minimumBitrate rtcpInterval:(id)interval rtpPtime:(id)ptime
{
  bitrateCopy = bitrate;
  minimumBitrateCopy = minimumBitrate;
  intervalCopy = interval;
  ptimeCopy = ptime;
  v18 = [(HMDCameraAudioParameterCombination *)self initWithCodecGroup:group bitrateSetting:setting sampleRate:rate];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_maximumBitrate, bitrate);
    objc_storeStrong(&v19->_minimumBitrate, minimumBitrate);
    objc_storeStrong(&v19->_rtcpInterval, interval);
    objc_storeStrong(&v19->_rtpPTime, ptime);
  }

  return v19;
}

- (HMDCameraAudioParameterCombination)initWithCodecGroup:(id)group bitrateSetting:(id)setting sampleRate:(id)rate
{
  groupCopy = group;
  settingCopy = setting;
  rateCopy = rate;
  v15.receiver = self;
  v15.super_class = HMDCameraAudioParameterCombination;
  v12 = [(HMDCameraAudioParameterCombination *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_codecGroupType, group);
    objc_storeStrong(&v13->_bitrateSetting, setting);
    objc_storeStrong(&v13->_sampleRate, rate);
  }

  return v13;
}

@end