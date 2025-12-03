@interface NRDevice(VersionFactories)
+ (BOOL)activePairedDeviceSupportIsGreaterEqualVersion:()VersionFactories;
+ (id)versionForString:()VersionFactories;
- (uint64_t)bltVersion;
- (uint64_t)watchOSVersion;
@end

@implementation NRDevice(VersionFactories)

- (uint64_t)watchOSVersion
{
  v1 = [self valueForProperty:*MEMORY[0x277D2BC20]];
  v2 = [MEMORY[0x277D2BCC8] versionForString:v1];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0xFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (uint64_t)bltVersion
{
  watchOSVersion = [self watchOSVersion];
  if (watchOSVersion > 0x6FFFF)
  {
    return 8;
  }

  if (watchOSVersion > 0x5FFFF)
  {
    return 7;
  }

  if (watchOSVersion >> 18)
  {
    return 6;
  }

  v3 = 4;
  v4 = 3;
  v5 = 2;
  if (!(watchOSVersion >> 17))
  {
    v5 = (watchOSVersion & 0xFFFFFFFFFFFF0000) != 0;
  }

  if (watchOSVersion >> 9 <= 0x100)
  {
    v4 = v5;
  }

  if (watchOSVersion <= 0x2FFFF)
  {
    v3 = v4;
  }

  if (watchOSVersion <= 0x301FF)
  {
    return v3;
  }

  else
  {
    return 5;
  }
}

+ (BOOL)activePairedDeviceSupportIsGreaterEqualVersion:()VersionFactories
{
  blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  watchOSVersion = [blt_boundedWaitForActivePairedDevice watchOSVersion];

  return watchOSVersion >= a3;
}

+ (id)versionForString:()VersionFactories
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v3];
  v5 = 0;
  do
  {
    if (![v4 scanInteger:{&v10 + v5, v10}] || (*(&v10 + v5) & 0x8000000000000000) != 0)
    {
      v6 = 0;
    }

    else if ([v4 isAtEnd])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v4 scanString:@"." intoString:0];
    }

    if (v5 == 16)
    {
      break;
    }

    if ([v4 isAtEnd])
    {
      break;
    }

    v5 += 8;
  }

  while (v6 == 1);
  if (v6 && [v4 isAtEnd])
  {
    if (v10 >> 16)
    {
      [MEMORY[0x277CCABB0] numberWithInteger:?];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v10 << 16) | (v11 << 8) | v12];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end