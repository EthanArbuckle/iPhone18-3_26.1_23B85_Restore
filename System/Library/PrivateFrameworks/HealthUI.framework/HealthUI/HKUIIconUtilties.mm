@interface HKUIIconUtilties
+ (id)appleDeviceIconForHardwareVersion:(id)version;
@end

@implementation HKUIIconUtilties

+ (id)appleDeviceIconForHardwareVersion:(id)version
{
  versionCopy = version;
  if (([versionCopy hasPrefix:*MEMORY[0x1E696BC10]] & 1) != 0 || (objc_msgSend(versionCopy, "hasPrefix:", *MEMORY[0x1E696BC18]) & 1) != 0 || (objc_msgSend(versionCopy, "hasPrefix:", *MEMORY[0x1E696BC30]) & 1) != 0 || (objc_msgSend(versionCopy, "hasPrefix:", *MEMORY[0x1E696BC28]) & 1) != 0 || (objc_msgSend(versionCopy, "hasPrefix:", *MEMORY[0x1E696BC08]) & 1) != 0 || objc_msgSend(versionCopy, "hasPrefix:", *MEMORY[0x1E696BC20]))
  {
    v4 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:versionCopy];
    v5 = MEMORY[0x1E69A8A40];
    identifier = [v4 identifier];
    v15 = 0;
    v7 = [v5 symbolForTypeIdentifier:identifier error:&v15];

    v8 = MEMORY[0x1E69DCAD8];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v10 = [v8 configurationWithHierarchicalColor:systemBlueColor];

    if (v7)
    {
      v11 = MEMORY[0x1E69DCAB8];
      name = [v7 name];
      v13 = [v11 _systemImageNamed:name withConfiguration:v10];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end