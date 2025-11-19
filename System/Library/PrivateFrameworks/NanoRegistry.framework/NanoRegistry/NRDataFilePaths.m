@interface NRDataFilePaths
+ (id)_pathToDevicePropertiesFile;
+ (id)_pathToNanoRegistryPairingStorePathDirectory;
+ (id)_pathToNanoRegistryStateDirectory;
+ (id)_pathToNanoRegistryUnpairTriggerFileDirectory;
+ (id)_pathToRecoveryStateFile;
+ (id)_pathToSecureDevicePropertiesFile;
+ (id)_pathToUnpairTriggerFile;
+ (id)pathToNanoRegistryClassAFile;
+ (id)pathToNanoRegistryHistoryFile;
+ (id)pathToNanoRegistryHistoryRecoveryManagerFile:(id)a3;
+ (id)pathToNanoRegistryHistorySecurePropertiesFile;
+ (id)pathToNanoRegistryMigrationRoutingSlip;
+ (id)pathToNanoRegistryStateDirectory;
+ (id)pathToNanoRegistryUDIDFile;
@end

@implementation NRDataFilePaths

+ (id)pathToNanoRegistryStateDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 stringByAppendingPathComponent:@"DeviceRegistry.state"];

  return v4;
}

+ (id)pathToNanoRegistryHistoryFile
{
  v2 = [a1 pathToNanoRegistryStateDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"history.plist"];

  return v3;
}

+ (id)pathToNanoRegistryMigrationRoutingSlip
{
  v2 = [a1 pathToNanoRegistryStateDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"MigrationRoutingSlip.archive"];

  return v3;
}

+ (id)pathToNanoRegistryClassAFile
{
  v2 = [a1 pathToNanoRegistryStateDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"ClassAFile.txt"];

  return v3;
}

+ (id)pathToNanoRegistryHistorySecurePropertiesFile
{
  v2 = [a1 pathToNanoRegistryStateDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"historySecureProperties.plist"];

  return v3;
}

+ (id)pathToNanoRegistryUDIDFile
{
  v2 = [a1 pathToNanoRegistryStateDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"UDIDChangeTracker.plist"];

  return v3;
}

+ (id)pathToNanoRegistryHistoryRecoveryManagerFile:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [a3 UUIDString];
    v6 = [v4 stringWithFormat:@"recoveryManager-%@.plist", v5];

    v7 = [a1 pathToNanoRegistryStateDirectory];
    v8 = [v7 stringByAppendingPathComponent:v6];
  }

  else
  {
    v6 = [a1 pathToNanoRegistryStateDirectory];
    v8 = [v6 stringByAppendingPathComponent:@"recoveryState.bin"];
  }

  return v8;
}

+ (id)_pathToNanoRegistryStateDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 stringByAppendingPathComponent:@"DeviceRegistry.state"];

  return v4;
}

+ (id)_pathToNanoRegistryPairingStorePathDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 stringByAppendingPathComponent:@"DeviceRegistry"];

  return v4;
}

+ (id)_pathToDevicePropertiesFile
{
  v2 = [a1 _pathToNanoRegistryStateDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"properties.bin"];

  return v3;
}

+ (id)_pathToSecureDevicePropertiesFile
{
  v2 = [a1 _pathToNanoRegistryStateDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"secureProperties.bin"];

  return v3;
}

+ (id)_pathToRecoveryStateFile
{
  v2 = [a1 _pathToNanoRegistryStateDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"recoveryState.bin"];

  return v3;
}

+ (id)_pathToNanoRegistryUnpairTriggerFileDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];
  v4 = [v3 stringByAppendingPathComponent:@"DeviceRegistry.dontBackUp"];

  return v4;
}

+ (id)_pathToUnpairTriggerFile
{
  v2 = [a1 _pathToNanoRegistryUnpairTriggerFileDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"deleteMeToUnpair2"];

  return v3;
}

@end