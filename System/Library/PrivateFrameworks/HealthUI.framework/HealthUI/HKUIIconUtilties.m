@interface HKUIIconUtilties
+ (id)appleDeviceIconForHardwareVersion:(id)a3;
@end

@implementation HKUIIconUtilties

+ (id)appleDeviceIconForHardwareVersion:(id)a3
{
  v3 = a3;
  if (([v3 hasPrefix:*MEMORY[0x1E696BC10]] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", *MEMORY[0x1E696BC18]) & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", *MEMORY[0x1E696BC30]) & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", *MEMORY[0x1E696BC28]) & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", *MEMORY[0x1E696BC08]) & 1) != 0 || objc_msgSend(v3, "hasPrefix:", *MEMORY[0x1E696BC20]))
  {
    v4 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:v3];
    v5 = MEMORY[0x1E69A8A40];
    v6 = [v4 identifier];
    v15 = 0;
    v7 = [v5 symbolForTypeIdentifier:v6 error:&v15];

    v8 = MEMORY[0x1E69DCAD8];
    v9 = [MEMORY[0x1E69DC888] systemBlueColor];
    v10 = [v8 configurationWithHierarchicalColor:v9];

    if (v7)
    {
      v11 = MEMORY[0x1E69DCAB8];
      v12 = [v7 name];
      v13 = [v11 _systemImageNamed:v12 withConfiguration:v10];
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