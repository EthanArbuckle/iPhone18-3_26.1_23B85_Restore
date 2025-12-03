@interface DEDUtils
+ (BOOL)isDebugRequestsEnabled;
+ (BOOL)isInternalInstall;
+ (id)checkDefaultsForOverride:(id)override;
+ (id)deriveMacDeviceClassForProductType:(id)type;
+ (id)deviceClass;
+ (id)deviceClassForProductType:(id)type;
+ (id)deviceColor;
+ (id)deviceEnclosureColor;
+ (id)deviceHardwareCodename;
+ (id)deviceModel;
+ (id)deviceName;
+ (id)deviceProductType;
+ (id)deviceSerialNumber;
+ (id)deviceUniformTypeIdentifier;
+ (id)modelForProductType:(id)type;
+ (id)osBuild;
+ (id)platform;
+ (id)sharedLog;
+ (id)unauthenticatedDeviceSpecifierFormResponseID:(int64_t)d device:(id)device;
+ (id)uniqueDeviceSpecifier;
+ (int64_t)deviceType;
@end

@implementation DEDUtils

+ (id)deviceClassForProductType:(id)type
{
  v13 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = typeCopy;
  if (typeCopy)
  {
    v6 = @"AppleTV";
    if (([typeCopy containsString:@"AppleTV"] & 1) == 0)
    {
      v6 = @"iPhone";
      if (([v5 containsString:@"iPhone"] & 1) == 0)
      {
        v6 = @"iPad";
        if (([v5 containsString:@"iPad"] & 1) == 0)
        {
          v6 = @"Watch";
          if (([v5 containsString:@"Watch"] & 1) == 0)
          {
            if ([v5 containsString:@"AudioAccessory"])
            {
              v6 = @"HomePod";
            }

            else if ([v5 containsString:@"Mac"])
            {
              v6 = [self deriveMacDeviceClassForProductType:v5];
            }

            else
            {
              v8 = +[DEDUtils sharedLog];
              if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
              {
                v11 = 138543362;
                v12 = v5;
                _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "No deviceClass for product [%{public}@]", &v11, 0xCu);
              }

              v6 = &stru_285B72378;
            }
          }
        }
      }
    }

    v7 = v6;
  }

  else
  {
    v7 = &stru_285B72378;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)deriveMacDeviceClassForProductType:(id)type
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE1CB8] _typeWithDeviceModelCode:type];
  identifier = [v3 identifier];
  v5 = [identifier stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_285B72378];
  lowercaseString = [v5 lowercaseString];

  if ([lowercaseString containsString:@"macbookpro"])
  {
    v7 = @"MacBookPro";
  }

  else if ([lowercaseString containsString:@"macbookair"])
  {
    v7 = @"MacBookAir";
  }

  else if ([lowercaseString containsString:@"macbook"])
  {
    v7 = @"MacBook";
  }

  else if ([lowercaseString containsString:@"imac"])
  {
    v7 = @"iMac";
  }

  else if ([lowercaseString containsString:@"macmini"])
  {
    v7 = @"Macmini";
  }

  else if ([lowercaseString containsString:@"macpro"])
  {
    v7 = @"MacPro";
  }

  else if ([lowercaseString containsString:@"macstudio"])
  {
    v7 = @"MacStudio";
  }

  else
  {
    v8 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = lowercaseString;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "No Mac product mapping for [%{public}@]", &v11, 0xCu);
    }

    v7 = &stru_285B72378;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)modelForProductType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (!typeCopy)
  {
    goto LABEL_21;
  }

  if ([typeCopy containsString:@"AppleTV"])
  {
    v5 = @"Apple TV";
    goto LABEL_22;
  }

  v5 = @"iPhone";
  if (([v4 containsString:@"iPhone"] & 1) == 0)
  {
    v5 = @"iPad";
    if (([v4 containsString:@"iPad"] & 1) == 0)
    {
      v5 = @"Watch";
      if (([v4 containsString:@"Watch"] & 1) == 0)
      {
        if ([v4 containsString:@"AudioAccessory"])
        {
          v5 = @"HomePod";
          goto LABEL_22;
        }

        if ([v4 containsString:@"MacBookPro"])
        {
          v5 = @"MacBook Pro";
          goto LABEL_22;
        }

        if ([v4 containsString:@"MacBookAir"])
        {
          v5 = @"MacBook Air";
          goto LABEL_22;
        }

        v5 = @"MacBook";
        if (([v4 containsString:@"MacBook"] & 1) == 0)
        {
          v5 = @"iMac";
          if (([v4 containsString:@"iMac"] & 1) == 0)
          {
            if ([v4 containsString:@"Macmini"])
            {
              v5 = @"Mac mini";
              goto LABEL_22;
            }

            v5 = @"MacPro";
            if ([v4 containsString:@"MacPro"])
            {
              goto LABEL_22;
            }

            v6 = +[DEDUtils sharedLog];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              [(DEDUtils *)v4 modelForProductType:v6];
            }

LABEL_21:
            v5 = &stru_285B72378;
          }
        }
      }
    }
  }

LABEL_22:

  return v5;
}

+ (id)sharedLog
{
  if (sharedLog_onceToken != -1)
  {
    +[DEDUtils sharedLog];
  }

  v3 = sharedLog_handle;

  return v3;
}

void __21__DEDUtils_sharedLog__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "fmw");
  v1 = sharedLog_handle;
  sharedLog_handle = v0;
}

+ (id)deviceColor
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceColor"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MGCopyAnswer();
  }

  v5 = v4;

  return v5;
}

+ (id)deviceClass
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceClass"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    if (DEDCurrentDeviceIsHomePod())
    {
      v5 = @"HomePod";
      goto LABEL_7;
    }

    v4 = MGCopyAnswer();
  }

  v5 = v4;
LABEL_7:

  return v5;
}

+ (id)deviceEnclosureColor
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceEnclosureColor"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MGCopyAnswer();
  }

  v5 = v4;

  return v5;
}

+ (id)platform
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDevicePlatform"];
  v3 = v2;
  if (!v2)
  {
    if (DEDCurrentDeviceIsHomePod())
    {
      v4 = DEDDevicePlatformHomePod;
    }

    else
    {
      v4 = DEDDevicePlatformiOS;
    }

    v3 = *v4;
  }

  v5 = v3;

  return v5;
}

+ (int64_t)deviceType
{
  v2 = MGGetSInt32Answer() - 1;
  if (v2 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_248B530A0[v2];
  }
}

+ (id)unauthenticatedDeviceSpecifierFormResponseID:(int64_t)d device:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEA60];
  deviceCopy = device;
  enclosureColor = [deviceCopy enclosureColor];
  color = [deviceCopy color];
  deviceClass = [deviceCopy deviceClass];
  platform = [deviceCopy platform];
  productType = [deviceCopy productType];
  model = [deviceCopy model];

  v13 = [v5 arrayWithObjects:{enclosureColor, color, deviceClass, platform, productType, model, 0}];
  v14 = [v13 componentsJoinedByString:@"-"];

  v15 = +[DEDUtils sharedLog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v14;
    _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_DEFAULT, "uniquingString un-hashed [%@]", buf, 0xCu);
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unauthenticated-FR%li-%lu", d, objc_msgSend(v14, "hash")];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)uniqueDeviceSpecifier
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceSpecifier"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MGCopyAnswer();
  }

  v4 = v3;

  return v4;
}

+ (id)deviceProductType
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceProductType"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MGCopyAnswer();
  }

  v5 = v4;

  return v5;
}

+ (id)deviceModel
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceModel"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MGCopyAnswer();
  }

  v4 = v3;

  return v4;
}

+ (id)deviceName
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceName"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MGCopyAnswer();
  }

  v5 = v4;

  return v5;
}

+ (id)osBuild
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceOSBuild"];
  v3 = v2;
  if (!v2)
  {
    v4 = MGCopyAnswer();
    v3 = v4;
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      v2 = @"Unknown";
    }
  }

  v5 = v2;

  return v2;
}

+ (id)deviceHardwareCodename
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceHardwareCodename"];
  if (!v2)
  {
    v2 = MGCopyAnswer();
    if ([v2 hasSuffix:@"AP"])
    {
      v3 = -2;
    }

    else
    {
      if (![v2 hasSuffix:@"dev"])
      {
        goto LABEL_7;
      }

      v3 = -3;
    }

    v4 = [v2 substringToIndex:{objc_msgSend(v2, "length") + v3}];

    v2 = v4;
  }

LABEL_7:
  v5 = v2;

  return v5;
}

+ (id)deviceSerialNumber
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceSerialNumber"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MGCopyAnswer();
  }

  v4 = v3;

  return v4;
}

+ (id)deviceUniformTypeIdentifier
{
  v2 = [DEDUtils checkDefaultsForOverride:@"overrideDeviceUniformTypeIdentifier"];
  v3 = v2;
  if (v2)
  {
    identifier = v2;
  }

  else
  {
    _typeOfCurrentDevice = [MEMORY[0x277CE1CB8] _typeOfCurrentDevice];
    identifier = [_typeOfCurrentDevice identifier];
  }

  return identifier;
}

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    +[DEDUtils isInternalInstall];
  }

  return isInternalInstall__isInternal;
}

void __29__DEDUtils_isInternalInstall__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  [v1 cStringUsingEncoding:4];
  isInternalInstall__isInternal = os_variant_has_internal_ui();

  if (isInternalInstall__isInternal == 1)
  {
    v2 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "DED internal install", v3, 2u);
    }
  }
}

+ (BOOL)isDebugRequestsEnabled
{
  isInternalInstall = [self isInternalInstall];
  if (isInternalInstall)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"showDebugRequests"];

    LOBYTE(isInternalInstall) = v4;
  }

  return isInternalInstall;
}

+ (id)checkDefaultsForOverride:(id)override
{
  v11 = *MEMORY[0x277D85DE8];
  overrideCopy = override;
  if (!+[DEDUtils isInternalInstall])
  {
    goto LABEL_5;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults stringForKey:overrideCopy];

  if (!v5 || ([v5 isEqualToString:&stru_285B72378] & 1) != 0)
  {

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v8 = +[DEDUtils sharedLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = overrideCopy;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "DED overriding platform value for %@", &v9, 0xCu);
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)modelForProductType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "No model for product [%{public}@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end