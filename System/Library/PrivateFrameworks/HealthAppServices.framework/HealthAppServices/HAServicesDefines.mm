@interface HAServicesDefines
+ (NSString)internalAppSettingsURLHost;
+ (NSString)internalAppleAccountSettingsURLString;
+ (NSString)internalGeneralSettingsURLString;
+ (NSString)internalHealthSettingsURLString;
+ (NSString)internalPasscodeSettingsURLString;
+ (NSString)internalPrivacySettingsURLString;
+ (NSString)internalScreenTimeSettingsURLString;
+ (NSString)internalSoundsSettingsURLString;
+ (id)appendBundleIdentifierIfNecessary:(id)necessary toPath:(id)path;
+ (id)hostValueFor:(id)for;
+ (id)internalHealthSettingsURLTo:(id)to;
+ (id)internalSettingsHostURLStringFor:(id)for;
@end

@implementation HAServicesDefines

+ (NSString)internalAppSettingsURLHost
{
  appsHostName = [self appsHostName];
  v4 = [self hostValueFor:appsHostName];

  return v4;
}

+ (NSString)internalAppleAccountSettingsURLString
{
  appleAccountHostName = [self appleAccountHostName];
  v4 = [self internalSettingsHostURLStringFor:appleAccountHostName];

  return v4;
}

+ (NSString)internalGeneralSettingsURLString
{
  generalHostName = [self generalHostName];
  v4 = [self internalSettingsHostURLStringFor:generalHostName];

  return v4;
}

+ (NSString)internalHealthSettingsURLString
{
  appsHostName = [self appsHostName];
  v4 = [self internalSettingsHostURLStringFor:appsHostName];

  healthSettingsBundleIdentifier = [self healthSettingsBundleIdentifier];
  v6 = [self appendBundleIdentifierIfNecessary:healthSettingsBundleIdentifier toPath:v4];

  return v6;
}

+ (NSString)internalPasscodeSettingsURLString
{
  passcodeHostName = [self passcodeHostName];
  v4 = [self internalSettingsHostURLStringFor:passcodeHostName];

  return v4;
}

+ (NSString)internalPrivacySettingsURLString
{
  privacyAndSecurityHostName = [self privacyAndSecurityHostName];
  v4 = [self internalSettingsHostURLStringFor:privacyAndSecurityHostName];

  return v4;
}

+ (NSString)internalScreenTimeSettingsURLString
{
  screenTimeHostName = [self screenTimeHostName];
  v4 = [self internalSettingsHostURLStringFor:screenTimeHostName];

  return v4;
}

+ (NSString)internalSoundsSettingsURLString
{
  soundsHostName = [self soundsHostName];
  v4 = [self internalSettingsHostURLStringFor:soundsHostName];

  return v4;
}

+ (id)appendBundleIdentifierIfNecessary:(id)necessary toPath:(id)path
{
  v13[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = pathCopy;
  if (necessary)
  {
    v13[0] = @"/";
    v13[1] = necessary;
    v7 = MEMORY[0x277CBEA60];
    necessaryCopy = necessary;
    v9 = [v7 arrayWithObjects:v13 count:2];

    v10 = [v9 componentsJoinedByString:&stru_28635B3F0];
    v6 = [pathCopy stringByAppendingString:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)hostValueFor:(id)for
{
  v4 = MEMORY[0x277CCACA8];
  forCopy = for;
  internalSettingsURLHost = [self internalSettingsURLHost];
  forCopy = [v4 stringWithFormat:@"%@.%@", internalSettingsURLHost, forCopy];

  return forCopy;
}

+ (id)internalHealthSettingsURLTo:(id)to
{
  v4 = MEMORY[0x277CCACA8];
  toCopy = to;
  internalHealthSettingsURLString = [self internalHealthSettingsURLString];
  toCopy = [v4 stringWithFormat:@"%@/%@", internalHealthSettingsURLString, toCopy];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:toCopy];

  return v8;
}

+ (id)internalSettingsHostURLStringFor:(id)for
{
  if (for)
  {
    [self hostValueFor:?];
  }

  else
  {
    [self internalSettingsURLHost];
  }
  v4 = ;
  v5 = MEMORY[0x277CCACA8];
  internalSettingsAppURLScheme = [self internalSettingsAppURLScheme];
  v7 = [v5 stringWithFormat:@"%@://%@", internalSettingsAppURLScheme, v4];

  return v7;
}

@end