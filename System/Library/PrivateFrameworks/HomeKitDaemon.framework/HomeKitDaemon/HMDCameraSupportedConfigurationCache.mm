@interface HMDCameraSupportedConfigurationCache
- (BOOL)isValid;
@end

@implementation HMDCameraSupportedConfigurationCache

- (BOOL)isValid
{
  v3 = [(HMDCameraSupportedConfigurationCache *)self supportedVideoStreamConfiguration];
  if (v3)
  {
    v4 = [(HMDCameraSupportedConfigurationCache *)self supportedAudioStreamConfiguration];
    if (v4)
    {
      v5 = [(HMDCameraSupportedConfigurationCache *)self supportedRTPConfiguration];
      v6 = v5 != 0;
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