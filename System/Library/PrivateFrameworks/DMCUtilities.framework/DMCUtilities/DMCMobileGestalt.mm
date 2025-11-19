@interface DMCMobileGestalt
+ (BOOL)hasBattery;
+ (BOOL)hasBatteryInformationCapability;
+ (BOOL)hasCellularDataCapability;
+ (BOOL)hasInternetTetheringCapability;
+ (BOOL)hasTelephonyCapability;
+ (BOOL)isAppleTV;
+ (BOOL)isHomePod;
+ (BOOL)isPad;
+ (BOOL)isPhone;
+ (BOOL)isVisionDevice;
+ (BOOL)isWatch;
+ (id)_overridableGestaltForKey:(__CFString *)a3 expectedClass:(Class)a4;
+ (id)availableCapacity;
+ (id)buildVersion;
+ (id)chipID;
+ (id)deviceCapacity;
+ (id)deviceClass;
+ (id)deviceColor;
+ (id)deviceUDID;
+ (id)diskCapacity;
+ (id)diskUsage;
+ (id)marketingVersion;
+ (id)modelNumber;
+ (id)productName;
+ (id)productType;
+ (id)regionCode;
+ (id)regionInfo;
+ (id)serialNumber;
+ (id)supplementalBuildVersion;
+ (id)supplementalMarketingVersion;
+ (id)supplementalMarketingVersionExtra;
@end

@implementation DMCMobileGestalt

+ (id)_overridableGestaltForKey:(__CFString *)a3 expectedClass:(Class)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = MGCopyAnswer();
  if (v6)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = *DMCLogObjects();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = v7;
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromClass(a4);
        v20 = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_FAULT, "MobileGestalt returned unexpected class %{public}@, expected %{public}@", &v20, 0x16u);
      }
    }
  }

  v12 = [DMCFeatureOverrides gestaltOverrideForKey:a3 withDefaultValue:v6];
  if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromClass(a4);
      v20 = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "MobileGestalt override returned unexpected class %{public}@, expected %{public}@", &v20, 0x16u);
    }

    v12 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)deviceClass
{
  v2 = [a1 _overridableGestaltForKey:@"DeviceClass" expectedClass:objc_opt_class()];
  if (!v2)
  {
    v2 = @"iPhone";
  }

  return v2;
}

+ (BOOL)isPad
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__DMCMobileGestalt_isPad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isPad_onceToken != -1)
  {
    dispatch_once(&isPad_onceToken, block);
  }

  return isPad_isiPad;
}

void __25__DMCMobileGestalt_isPad__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceClass];
  isPad_isiPad = [v1 isEqualToString:@"iPad"];
}

+ (BOOL)isAppleTV
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__DMCMobileGestalt_isAppleTV__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isAppleTV_onceToken != -1)
  {
    dispatch_once(&isAppleTV_onceToken, block);
  }

  return isAppleTV_isAppleTV;
}

void __29__DMCMobileGestalt_isAppleTV__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceClass];
  isAppleTV_isAppleTV = [v1 isEqualToString:@"AppleTV"];
}

+ (BOOL)isWatch
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__DMCMobileGestalt_isWatch__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isWatch_onceToken != -1)
  {
    dispatch_once(&isWatch_onceToken, block);
  }

  return isWatch_isWatch;
}

void __27__DMCMobileGestalt_isWatch__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceClass];
  isWatch_isWatch = [v1 isEqualToString:@"Watch"];
}

+ (BOOL)isHomePod
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__DMCMobileGestalt_isHomePod__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isHomePod_onceToken != -1)
  {
    dispatch_once(&isHomePod_onceToken, block);
  }

  return isHomePod_isHomePod;
}

void __29__DMCMobileGestalt_isHomePod__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceClass];
  isHomePod_isHomePod = [v1 isEqualToString:@"AudioAccessory"];
}

+ (BOOL)isPhone
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__DMCMobileGestalt_isPhone__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isPhone_onceToken != -1)
  {
    dispatch_once(&isPhone_onceToken, block);
  }

  return isPhone_isPhone;
}

void __27__DMCMobileGestalt_isPhone__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceClass];
  isPhone_isPhone = [v1 isEqualToString:@"iPhone"];
}

+ (BOOL)isVisionDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__DMCMobileGestalt_isVisionDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isVisionDevice_onceToken != -1)
  {
    dispatch_once(&isVisionDevice_onceToken, block);
  }

  return isVisionDevice_isVisionDevice;
}

void __34__DMCMobileGestalt_isVisionDevice__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceClass];
  isVisionDevice_isVisionDevice = [v1 isEqualToString:@"RealityDevice"];
}

+ (id)deviceUDID
{
  v2 = [a1 _overridableGestaltForKey:@"UniqueDeviceID" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)serialNumber
{
  v2 = [a1 _overridableGestaltForKey:@"SerialNumber" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)productName
{
  v2 = [a1 _overridableGestaltForKey:@"ProductName" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)modelNumber
{
  v2 = [a1 _overridableGestaltForKey:@"ModelNumber" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)deviceColor
{
  v2 = [a1 _overridableGestaltForKey:@"DeviceColor" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)regionCode
{
  v2 = [a1 _overridableGestaltForKey:@"RegionCode" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)regionInfo
{
  v2 = [a1 _overridableGestaltForKey:@"RegionInfo" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)productType
{
  v2 = [a1 _overridableGestaltForKey:@"ProductType" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)chipID
{
  v3 = objc_opt_class();

  return [a1 _overridableGestaltForKey:@"ChipID" expectedClass:v3];
}

+ (BOOL)hasInternetTetheringCapability
{
  v2 = [a1 _overridableGestaltForKey:@"personal-hotspot" expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (BOOL)hasTelephonyCapability
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__DMCMobileGestalt_hasTelephonyCapability__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (hasTelephonyCapability_onceToken != -1)
  {
    dispatch_once(&hasTelephonyCapability_onceToken, block);
  }

  return hasTelephonyCapability_hasTelephony;
}

void __42__DMCMobileGestalt_hasTelephonyCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _overridableGestaltForKey:@"telephony" expectedClass:objc_opt_class()];
  hasTelephonyCapability_hasTelephony = [v1 BOOLValue];
}

+ (BOOL)hasCellularDataCapability
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__DMCMobileGestalt_hasCellularDataCapability__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (hasCellularDataCapability_onceToken != -1)
  {
    dispatch_once(&hasCellularDataCapability_onceToken, block);
  }

  return hasCellularDataCapability_hasCellularData;
}

void __45__DMCMobileGestalt_hasCellularDataCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _overridableGestaltForKey:@"cellular-data" expectedClass:objc_opt_class()];
  hasCellularDataCapability_hasCellularData = [v1 BOOLValue];
}

+ (BOOL)hasBattery
{
  v2 = [a1 _overridableGestaltForKey:@"pX2TxZTxWKS7QSXZDC/Z6A" expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (BOOL)hasBatteryInformationCapability
{
  v2 = [a1 _overridableGestaltForKey:@"DeviceSupportsBatteryInformation" expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)marketingVersion
{
  v2 = [a1 _overridableGestaltForKey:@"ProductVersion" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)buildVersion
{
  v2 = [a1 _overridableGestaltForKey:@"BuildVersion" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)supplementalMarketingVersionExtra
{
  v3 = objc_opt_class();

  return [a1 _overridableGestaltForKey:@"ProductVersionExtra" expectedClass:v3];
}

+ (id)supplementalBuildVersion
{
  v2 = [a1 _overridableGestaltForKey:@"SupplementalBuildVersion" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2860120;
  }

  v5 = v4;

  return v4;
}

+ (id)supplementalMarketingVersion
{
  v3 = [a1 marketingVersion];
  v4 = [v3 mutableCopy];

  v5 = [a1 supplementalMarketingVersionExtra];
  v6 = v5;
  if (v5)
  {
    [v4 appendFormat:@" (%@)", v5];
  }

  return v4;
}

+ (id)diskUsage
{
  v3 = objc_opt_class();

  return [a1 _overridableGestaltForKey:@"DiskUsage" expectedClass:v3];
}

+ (id)deviceCapacity
{
  v2 = [a1 diskUsage];
  v3 = *MEMORY[0x1E69E5120];
  v4 = [v2 objectForKey:*MEMORY[0x1E69E5120]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v2 objectForKey:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)diskCapacity
{
  v2 = [a1 diskUsage];
  v3 = *MEMORY[0x1E69E5128];
  v4 = [v2 objectForKey:*MEMORY[0x1E69E5128]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v2 objectForKey:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)availableCapacity
{
  v2 = [a1 diskUsage];
  v3 = *MEMORY[0x1E69E5108];
  v4 = [v2 objectForKey:*MEMORY[0x1E69E5108]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v2 objectForKey:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end