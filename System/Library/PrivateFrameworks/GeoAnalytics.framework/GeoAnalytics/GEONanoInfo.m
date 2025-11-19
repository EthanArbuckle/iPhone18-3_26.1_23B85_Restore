@interface GEONanoInfo
- (id)deviceOsVersionIfAvailable;
@end

@implementation GEONanoInfo

- (id)deviceOsVersionIfAvailable
{
  v3 = [(GEONanoInfo *)self deviceSystemVersionIfAvailable];
  if (v3)
  {
    v4 = [(GEONanoInfo *)self deviceSystemBuildVersionIfAvailable];
    if (v4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v3, v4];
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