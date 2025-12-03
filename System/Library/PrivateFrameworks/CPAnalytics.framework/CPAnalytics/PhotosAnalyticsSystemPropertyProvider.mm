@interface PhotosAnalyticsSystemPropertyProvider
- (id)deviceFreeSpaceDescription;
- (id)deviceModel;
- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction;
- (id)lowPowerModeEnabled;
- (id)osVersion;
- (id)percentageOfFreeSpaceOnDevice;
- (id)process;
- (void)registerSystemProperties:(id)properties;
@end

@implementation PhotosAnalyticsSystemPropertyProvider

- (id)lowPowerModeEnabled
{
  v2 = MEMORY[0x277CCABB0];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v2 numberWithBool:{objc_msgSend(processInfo, "isLowPowerModeEnabled")}];

  return v4;
}

- (id)process
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  return processName;
}

- (id)osVersion
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v6, 0, 512);
  uname(&v6);
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];

  v4 = *MEMORY[0x277D85DE8];

  return operatingSystemVersionString;
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
  percentageOfFreeSpaceOnDevice = [(PhotosAnalyticsSystemPropertyProvider *)self percentageOfFreeSpaceOnDevice];
  v3 = percentageOfFreeSpaceOnDevice;
  v4 = @"DeviceFreeSpaceUnknown";
  if (percentageOfFreeSpaceOnDevice)
  {
    [percentageOfFreeSpaceOnDevice doubleValue];
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
  lastObject = [v2 lastObject];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v5 = [defaultManager attributesOfFileSystemForPath:lastObject error:&v15];
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
      v17 = lastObject;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_24260A000, v8, OS_LOG_TYPE_ERROR, "Unable to retrieve file system attributes at path %@ error: %@", buf, 0x16u);
    }

    unsignedLongLongValue = 0;
  }

  else
  {
    v9 = [v5 objectForKey:*MEMORY[0x277CCA1D8]];
    unsignedLongLongValue = [v9 unsignedLongLongValue];

    v11 = [v5 objectForKey:*MEMORY[0x277CCA1D0]];
    unsignedLongLongValue2 = [v11 unsignedLongLongValue];

    if (unsignedLongLongValue)
    {
      unsignedLongLongValue = [MEMORY[0x277CCABB0] numberWithDouble:unsignedLongLongValue2 * 100.0 / unsignedLongLongValue];
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return unsignedLongLongValue;
}

- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction
{
  if ([property isEqualToString:{@"cpa_common_lowPowerModeEnabled", name, extraction}])
  {
    lowPowerModeEnabled = [(PhotosAnalyticsSystemPropertyProvider *)self lowPowerModeEnabled];
  }

  else
  {
    lowPowerModeEnabled = 0;
  }

  return lowPowerModeEnabled;
}

- (void)registerSystemProperties:(id)properties
{
  propertiesCopy = properties;
  deviceFreeSpaceDescription = [(PhotosAnalyticsSystemPropertyProvider *)self deviceFreeSpaceDescription];
  [propertiesCopy addProperty:@"cpa_common_deviceFreeSpace" withValue:deviceFreeSpaceDescription];

  deviceModel = [(PhotosAnalyticsSystemPropertyProvider *)self deviceModel];
  [propertiesCopy addProperty:@"cpa_common_deviceModel" withValue:deviceModel];

  osVersion = [(PhotosAnalyticsSystemPropertyProvider *)self osVersion];
  [propertiesCopy addProperty:@"cpa_common_osVersion" withValue:osVersion];

  process = [(PhotosAnalyticsSystemPropertyProvider *)self process];
  [propertiesCopy addProperty:@"cpa_common_processName" withValue:process];

  [propertiesCopy addDynamicProperty:@"cpa_common_lowPowerModeEnabled" withProvider:self];
}

@end