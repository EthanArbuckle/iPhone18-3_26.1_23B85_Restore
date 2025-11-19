@interface SFDeviceUtilities
+ (id)deviceUUID;
@end

@implementation SFDeviceUtilities

+ (id)deviceUUID
{
  if (deviceUUID_once != -1)
  {
    +[SFDeviceUtilities deviceUUID];
  }

  v3 = deviceUUID_deviceUUID;

  return v3;
}

void __31__SFDeviceUtilities_deviceUUID__block_invoke()
{
  if ([MEMORY[0x1E69E3098] accessLevel] == 2)
  {
    v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FEBFD06E-A2DF-4AEF-A58B-A9DEE6116B9D"];
    v1 = deviceUUID_deviceUUID;
    deviceUUID_deviceUUID = v0;
  }

  else
  {
    v14 = _SFSafariCloudTabsMetadataPath();
    v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:?];
    v3 = [v2 safari_stringForKey:@"DeviceUUID"];
    if ([v3 length])
    {
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
      v5 = deviceUUID_deviceUUID;
      deviceUUID_deviceUUID = v4;
    }

    if (!deviceUUID_deviceUUID)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v7 = deviceUUID_deviceUUID;
      deviceUUID_deviceUUID = v6;

      v8 = [v2 mutableCopy];
      if (!v2)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

        v8 = v9;
      }

      v10 = [deviceUUID_deviceUUID UUIDString];
      [v8 setObject:v10 forKey:@"DeviceUUID"];

      [v8 writeToFile:v14 atomically:1];
    }

    v11 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v12 = [v11 objectForKey:@"cloudTabsDeviceUUIDForRestoration"];

    if (!v12)
    {
      v13 = [deviceUUID_deviceUUID UUIDString];
      [v11 setObject:v13 forKey:@"cloudTabsDeviceUUIDForRestoration"];
    }

    v1 = v14;
  }
}

@end