@interface HAServicesDefines
+ (NSString)internalAppSettingsURLHost;
+ (NSString)internalAppleAccountSettingsURLString;
+ (NSString)internalGeneralSettingsURLString;
+ (NSString)internalHealthSettingsURLString;
+ (NSString)internalPasscodeSettingsURLString;
+ (NSString)internalPrivacySettingsURLString;
+ (NSString)internalScreenTimeSettingsURLString;
+ (NSString)internalSoundsSettingsURLString;
+ (id)appendBundleIdentifierIfNecessary:(id)a3 toPath:(id)a4;
+ (id)hostValueFor:(id)a3;
+ (id)internalHealthSettingsURLTo:(id)a3;
+ (id)internalSettingsHostURLStringFor:(id)a3;
@end

@implementation HAServicesDefines

+ (NSString)internalAppSettingsURLHost
{
  v3 = [a1 appsHostName];
  v4 = [a1 hostValueFor:v3];

  return v4;
}

+ (NSString)internalAppleAccountSettingsURLString
{
  v3 = [a1 appleAccountHostName];
  v4 = [a1 internalSettingsHostURLStringFor:v3];

  return v4;
}

+ (NSString)internalGeneralSettingsURLString
{
  v3 = [a1 generalHostName];
  v4 = [a1 internalSettingsHostURLStringFor:v3];

  return v4;
}

+ (NSString)internalHealthSettingsURLString
{
  v3 = [a1 appsHostName];
  v4 = [a1 internalSettingsHostURLStringFor:v3];

  v5 = [a1 healthSettingsBundleIdentifier];
  v6 = [a1 appendBundleIdentifierIfNecessary:v5 toPath:v4];

  return v6;
}

+ (NSString)internalPasscodeSettingsURLString
{
  v3 = [a1 passcodeHostName];
  v4 = [a1 internalSettingsHostURLStringFor:v3];

  return v4;
}

+ (NSString)internalPrivacySettingsURLString
{
  v3 = [a1 privacyAndSecurityHostName];
  v4 = [a1 internalSettingsHostURLStringFor:v3];

  return v4;
}

+ (NSString)internalScreenTimeSettingsURLString
{
  v3 = [a1 screenTimeHostName];
  v4 = [a1 internalSettingsHostURLStringFor:v3];

  return v4;
}

+ (NSString)internalSoundsSettingsURLString
{
  v3 = [a1 soundsHostName];
  v4 = [a1 internalSettingsHostURLStringFor:v3];

  return v4;
}

+ (id)appendBundleIdentifierIfNecessary:(id)a3 toPath:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v13[0] = @"/";
    v13[1] = a3;
    v7 = MEMORY[0x277CBEA60];
    v8 = a3;
    v9 = [v7 arrayWithObjects:v13 count:2];

    v10 = [v9 componentsJoinedByString:&stru_28635B3F0];
    v6 = [v5 stringByAppendingString:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)hostValueFor:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [a1 internalSettingsURLHost];
  v7 = [v4 stringWithFormat:@"%@.%@", v6, v5];

  return v7;
}

+ (id)internalHealthSettingsURLTo:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [a1 internalHealthSettingsURLString];
  v7 = [v4 stringWithFormat:@"%@/%@", v6, v5];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];

  return v8;
}

+ (id)internalSettingsHostURLStringFor:(id)a3
{
  if (a3)
  {
    [a1 hostValueFor:?];
  }

  else
  {
    [a1 internalSettingsURLHost];
  }
  v4 = ;
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 internalSettingsAppURLScheme];
  v7 = [v5 stringWithFormat:@"%@://%@", v6, v4];

  return v7;
}

@end