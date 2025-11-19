@interface PhotosAnalyticsSystemPropertyProvider
- (id)deviceFreeSpaceDescription;
- (id)deviceModel;
- (id)getDynamicProperty:(id)a3 forEventName:(id)a4 payloadForSystemPropertyExtraction:(id)a5;
- (id)lowPowerModeEnabled;
- (id)osVersion;
- (id)percentageOfFreeSpaceOnDevice;
- (id)process;
- (void)registerSystemProperties:(id)a3;
@end

@implementation PhotosAnalyticsSystemPropertyProvider

- (id)lowPowerModeEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isLowPowerModeEnabled")}];

  return v4;
}

- (id)process
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  return v3;
}

- (id)osVersion
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v6, 0, 512);
  uname(&v6);
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 operatingSystemVersionString];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)deviceModel
{
  v6 = *MEMORY[0x277D85DE8];
  memset(&v5, 0, 512);
  uname(&v5);
  v2 = [MEMORY[0x277CCACA8] stringWithCString:v5.machine encoding:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)deviceFreeSpaceDescription
{
  v2 = [(PhotosAnalyticsSystemPropertyProvider *)self percentageOfFreeSpaceOnDevice];
  v3 = v2;
  v4 = @"DeviceFreeSpaceUnknown";
  if (v2)
  {
    [v2 doubleValue];
    if (v5 <= 2.0)
    {
      v4 = @"DeviceFreeSpaceCritical";
    }

    else if (v5 > 5.0)
    {
      if (v5 > 15.0)
      {
        if (v5 > 50.0)
        {
          if (v5 > 80.0)
          {
            v4 = @"DeviceFreeSpaceVeryHigh";
          }

          else
          {
            v4 = @"DeviceFreeSpaceHigh";
          }
        }

        else
        {
          v4 = @"DeviceFreeSpaceMedium";
        }
      }

      else
      {
        v4 = @"DeviceFreeSpaceLow";
      }
    }

    else
    {
      v4 = @"DeviceFreeSpaceVeryLow";
    }
  }

  return v4;
}

- (id)percentageOfFreeSpaceOnDevice
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 2uLL, 1);
  v3 = [v2 lastObject];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v5 = [v4 attributesOfFileSystemForPath:v3 error:&v15];
  v6 = v15;

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    v8 = CPAnalyticsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v3;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_24260A000, v8, OS_LOG_TYPE_ERROR, "Unable to retrieve file system attributes at path %@ error: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v9 = [v5 objectForKey:*MEMORY[0x277CCA1D8]];
    v10 = [v9 unsignedLongLongValue];

    v11 = [v5 objectForKey:*MEMORY[0x277CCA1D0]];
    v12 = [v11 unsignedLongLongValue];

    if (v10)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:v12 * 100.0 / v10];
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getDynamicProperty:(id)a3 forEventName:(id)a4 payloadForSystemPropertyExtraction:(id)a5
{
  if ([a3 isEqualToString:{@"cpa_common_lowPowerModeEnabled", a4, a5}])
  {
    v6 = [(PhotosAnalyticsSystemPropertyProvider *)self lowPowerModeEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)registerSystemProperties:(id)a3
{
  v8 = a3;
  v4 = [(PhotosAnalyticsSystemPropertyProvider *)self deviceFreeSpaceDescription];
  [v8 addProperty:@"cpa_common_deviceFreeSpace" withValue:v4];

  v5 = [(PhotosAnalyticsSystemPropertyProvider *)self deviceModel];
  [v8 addProperty:@"cpa_common_deviceModel" withValue:v5];

  v6 = [(PhotosAnalyticsSystemPropertyProvider *)self osVersion];
  [v8 addProperty:@"cpa_common_osVersion" withValue:v6];

  v7 = [(PhotosAnalyticsSystemPropertyProvider *)self process];
  [v8 addProperty:@"cpa_common_processName" withValue:v7];

  [v8 addDynamicProperty:@"cpa_common_lowPowerModeEnabled" withProvider:self];
}

@end