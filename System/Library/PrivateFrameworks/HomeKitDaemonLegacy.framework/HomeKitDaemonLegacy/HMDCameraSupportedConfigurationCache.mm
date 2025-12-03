@interface HMDCameraSupportedConfigurationCache
- (BOOL)isValid;
@end

@implementation HMDCameraSupportedConfigurationCache

- (BOOL)isValid
{
  supportedVideoStreamConfiguration = [(HMDCameraSupportedConfigurationCache *)self supportedVideoStreamConfiguration];
  if (supportedVideoStreamConfiguration)
  {
    supportedAudioStreamConfiguration = [(HMDCameraSupportedConfigurationCache *)self supportedAudioStreamConfiguration];
    if (supportedAudioStreamConfiguration)
    {
      supportedRTPConfiguration = [(HMDCameraSupportedConfigurationCache *)self supportedRTPConfiguration];
      v6 = supportedRTPConfiguration != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end