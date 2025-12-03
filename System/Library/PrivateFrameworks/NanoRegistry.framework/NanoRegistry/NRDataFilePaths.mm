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
+ (id)pathToNanoRegistryHistoryRecoveryManagerFile:(id)file;
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
  pathToNanoRegistryStateDirectory = [self pathToNanoRegistryStateDirectory];
  v3 = [pathToNanoRegistryStateDirectory stringByAppendingPathComponent:@"history.plist"];

  return v3;
}

+ (id)pathToNanoRegistryMigrationRoutingSlip
{
  pathToNanoRegistryStateDirectory = [self pathToNanoRegistryStateDirectory];
  v3 = [pathToNanoRegistryStateDirectory stringByAppendingPathComponent:@"MigrationRoutingSlip.archive"];

  return v3;
}

+ (id)pathToNanoRegistryClassAFile
{
  pathToNanoRegistryStateDirectory = [self pathToNanoRegistryStateDirectory];
  v3 = [pathToNanoRegistryStateDirectory stringByAppendingPathComponent:@"ClassAFile.txt"];

  return v3;
}

+ (id)pathToNanoRegistryHistorySecurePropertiesFile
{
  pathToNanoRegistryStateDirectory = [self pathToNanoRegistryStateDirectory];
  v3 = [pathToNanoRegistryStateDirectory stringByAppendingPathComponent:@"historySecureProperties.plist"];

  return v3;
}

+ (id)pathToNanoRegistryUDIDFile
{
  pathToNanoRegistryStateDirectory = [self pathToNanoRegistryStateDirectory];
  v3 = [pathToNanoRegistryStateDirectory stringByAppendingPathComponent:@"UDIDChangeTracker.plist"];

  return v3;
}

+ (id)pathToNanoRegistryHistoryRecoveryManagerFile:(id)file
{
  if (file)
  {
    v4 = MEMORY[0x1E696AEC0];
    uUIDString = [file UUIDString];
    pathToNanoRegistryStateDirectory2 = [v4 stringWithFormat:@"recoveryManager-%@.plist", uUIDString];

    pathToNanoRegistryStateDirectory = [self pathToNanoRegistryStateDirectory];
    v8 = [pathToNanoRegistryStateDirectory stringByAppendingPathComponent:pathToNanoRegistryStateDirectory2];
  }

  else
  {
    pathToNanoRegistryStateDirectory2 = [self pathToNanoRegistryStateDirectory];
    v8 = [pathToNanoRegistryStateDirectory2 stringByAppendingPathComponent:@"recoveryState.bin"];
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
  _pathToNanoRegistryStateDirectory = [self _pathToNanoRegistryStateDirectory];
  v3 = [_pathToNanoRegistryStateDirectory stringByAppendingPathComponent:@"properties.bin"];

  return v3;
}

+ (id)_pathToSecureDevicePropertiesFile
{
  _pathToNanoRegistryStateDirectory = [self _pathToNanoRegistryStateDirectory];
  v3 = [_pathToNanoRegistryStateDirectory stringByAppendingPathComponent:@"secureProperties.bin"];

  return v3;
}

+ (id)_pathToRecoveryStateFile
{
  _pathToNanoRegistryStateDirectory = [self _pathToNanoRegistryStateDirectory];
  v3 = [_pathToNanoRegistryStateDirectory stringByAppendingPathComponent:@"recoveryState.bin"];

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
  _pathToNanoRegistryUnpairTriggerFileDirectory = [self _pathToNanoRegistryUnpairTriggerFileDirectory];
  v3 = [_pathToNanoRegistryUnpairTriggerFileDirectory stringByAppendingPathComponent:@"deleteMeToUnpair2"];

  return v3;
}

@end