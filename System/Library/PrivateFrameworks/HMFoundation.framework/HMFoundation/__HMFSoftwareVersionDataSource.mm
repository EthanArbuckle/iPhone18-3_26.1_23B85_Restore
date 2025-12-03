@interface __HMFSoftwareVersionDataSource
- (HMFSoftwareVersion)softwareVersion;
@end

@implementation __HMFSoftwareVersionDataSource

- (HMFSoftwareVersion)softwareVersion
{
  v2 = _CFCopySystemVersionDictionary();
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x277CBEC70]);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFStringGetTypeID())
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    CFRelease(v3);
  }

  else
  {
    v8 = 0;
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v10 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  v11 = [[HMFSoftwareVersion alloc] initWithMajorVersion:0 minorVersion:0 updateVersion:0 buildVersion:v8];

  return v11;
}

@end