@interface NNMKDirectoryProvider
+ (void)removePairedDeviceRegistryPathFromUserDefaults;
- (NSString)pairedDeviceRegistryPath;
- (void)setPairedDeviceRegistryPath:(id)a3;
@end

@implementation NNMKDirectoryProvider

- (void)setPairedDeviceRegistryPath:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 setObject:v5 forKey:@"kPairedDeviceRegistryPathKey"];

    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 synchronize];
  }

  else
  {
    [objc_opt_class() removePairedDeviceRegistryPathFromUserDefaults];
  }
}

- (NSString)pairedDeviceRegistryPath
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 stringForKey:@"kPairedDeviceRegistryPathKey"];

  return v3;
}

+ (void)removePairedDeviceRegistryPathFromUserDefaults
{
  CFPreferencesSetAppValue(@"kPairedDeviceRegistryPathKey", 0, *MEMORY[0x277CBF008]);
  CFPreferencesSetAppValue(@"kPairedDeviceRegistryPathKey", 0, *MEMORY[0x277CBF028]);
  [MEMORY[0x277CBEBD0] resetStandardUserDefaults];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 removeObjectForKey:@"kPairedDeviceRegistryPathKey"];

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 synchronize];
}

@end