@interface NNMKDirectoryProvider
+ (void)removePairedDeviceRegistryPathFromUserDefaults;
- (NSString)pairedDeviceRegistryPath;
- (void)setPairedDeviceRegistryPath:(id)path;
@end

@implementation NNMKDirectoryProvider

- (void)setPairedDeviceRegistryPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:pathCopy forKey:@"kPairedDeviceRegistryPathKey"];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 synchronize];
  }

  else
  {
    [objc_opt_class() removePairedDeviceRegistryPathFromUserDefaults];
  }
}

- (NSString)pairedDeviceRegistryPath
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"kPairedDeviceRegistryPathKey"];

  return v3;
}

+ (void)removePairedDeviceRegistryPathFromUserDefaults
{
  CFPreferencesSetAppValue(@"kPairedDeviceRegistryPathKey", 0, *MEMORY[0x277CBF008]);
  CFPreferencesSetAppValue(@"kPairedDeviceRegistryPathKey", 0, *MEMORY[0x277CBF028]);
  [MEMORY[0x277CBEBD0] resetStandardUserDefaults];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"kPairedDeviceRegistryPathKey"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 synchronize];
}

@end