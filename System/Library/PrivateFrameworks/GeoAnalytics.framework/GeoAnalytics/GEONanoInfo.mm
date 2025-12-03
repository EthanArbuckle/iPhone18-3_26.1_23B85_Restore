@interface GEONanoInfo
- (id)deviceOsVersionIfAvailable;
@end

@implementation GEONanoInfo

- (id)deviceOsVersionIfAvailable
{
  deviceSystemVersionIfAvailable = [(GEONanoInfo *)self deviceSystemVersionIfAvailable];
  if (deviceSystemVersionIfAvailable)
  {
    deviceSystemBuildVersionIfAvailable = [(GEONanoInfo *)self deviceSystemBuildVersionIfAvailable];
    if (deviceSystemBuildVersionIfAvailable)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", deviceSystemVersionIfAvailable, deviceSystemBuildVersionIfAvailable];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end