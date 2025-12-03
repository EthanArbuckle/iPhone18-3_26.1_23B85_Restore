@interface DMFDevice
+ (id)_sanitizedDeviceKey:(id)key;
+ (id)propertyNameForKey:(id)key;
- (id)initPrivate;
- (id)valueForKey:(id)key error:(id *)error;
- (id)valueForUndefinedKey:(id)key;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation DMFDevice

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = DMFDevice;
  return [(DMFDevice *)&v3 init];
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  valueCopy = value;
  v7 = [DMFDevice propertyNameForKey:key];
  v8 = NSSelectorFromString(v7);
  v10.receiver = self;
  v10.super_class = DMFDevice;
  if ([(DMFDevice *)&v10 respondsToSelector:v8])
  {
    v9.receiver = self;
    v9.super_class = DMFDevice;
    [(DMFDevice *)&v9 setValue:valueCopy forKey:v7];
  }
}

- (id)valueForUndefinedKey:(id)key
{
  v4 = [DMFDevice propertyNameForKey:key];
  NSSelectorFromString(v4);
  if (objc_opt_respondsToSelector())
  {
    v7.receiver = self;
    v7.super_class = DMFDevice;
    v5 = [(DMFDevice *)&v7 valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)propertyNameForKey:(id)key
{
  keyCopy = key;
  if (propertyNameForKey__onceToken != -1)
  {
    +[DMFDevice propertyNameForKey:];
  }

  v5 = [propertyNameForKey__mappedKeys objectForKeyedSubscript:keyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [self _sanitizedDeviceKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

void __32__DMFDevice_propertyNameForKey___block_invoke()
{
  v4[18] = *MEMORY[0x1E69E9840];
  v3[0] = @"DMFDeviceBluetoothMACKey";
  v3[1] = @"DMFDeviceNameKey";
  v4[0] = @"bluetoothAddress";
  v4[1] = @"deviceName";
  v3[2] = @"DMFDeviceTypeKey";
  v3[3] = @"DMFDeviceAwaitingConfigurationKey";
  v4[2] = @"deviceType";
  v4[3] = @"isAwaitingConfiguration";
  v3[4] = @"DMFDeviceIsDNDInEffectKey";
  v3[5] = @"DMFDeviceOSVersionKey";
  v4[4] = @"isDoNotDisturbInEffect";
  v4[5] = @"osVersion";
  v3[6] = @"DMFDeviceWiFiMACKey";
  v3[7] = @"DMFDeviceAppAnalyticsEnabledKey";
  v4[6] = @"wifiAddress";
  v4[7] = @"isAppAnalyticsEnabled";
  v3[8] = @"DMFDeviceDiagnosticSubmissionEnabledKey";
  v3[9] = @"DMFDeviceEASIdentifierKey";
  v4[8] = @"isDiagnosticSubmissionEnabled";
  v4[9] = @"EASIdentifier";
  v3[10] = @"DMFDeviceICCIDKey";
  v3[11] = @"DMFDeviceIMEIKey";
  v4[10] = @"ICCID";
  v4[11] = @"IMEI";
  v3[12] = @"DMFDeviceMEIDKey";
  v3[13] = @"DMFDeviceDataRoamingEnabledKey";
  v4[12] = @"MEID";
  v4[13] = @"isDataRoamingEnabled";
  v3[14] = @"DMFDevicePersonalHotspotEnabledKey";
  v3[15] = @"DMFDeviceVoiceRoamingEnabledKey";
  v4[14] = @"isPersonalHotspotEnabled";
  v4[15] = @"isVoiceRoamingEnabled";
  v3[16] = @"DMFDeviceSystemIntegrityProtectionEnabledKey";
  v3[17] = @"DMFDeviceOSUpdateSettingsKey";
  v4[16] = @"isSystemIntegrityProtectionEnabled";
  v4[17] = @"osUpdateSettings";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:18];
  v1 = propertyNameForKey__mappedKeys;
  propertyNameForKey__mappedKeys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)valueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  errorCopy = error;
  NSSelectorFromString(keyCopy);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [DMFDevice propertyNameForKey:keyCopy];

    keyCopy = v7;
  }

  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@WithError:", keyCopy];
  v9 = NSSelectorFromString(keyCopy);

  NSSelectorFromString(keyCopy);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(DMFDevice *)self methodSignatureForSelector:v9];
    v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
    [v11 setTarget:self];
    [v11 setSelector:v9];
    [v11 setArgument:&errorCopy atIndex:2];
    [v11 invoke];
    v14 = 0;
    [v11 getReturnValue:&v14];
    v12 = v14;
  }

  else if (objc_opt_respondsToSelector())
  {
    v12 = [(DMFDevice *)self valueForKey:keyCopy];
  }

  else if (error)
  {
    DMFErrorWithCodeAndUserInfo(111, 0);
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_sanitizedDeviceKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy stringByReplacingOccurrencesOfString:@"^DMFDevice(.*)Key$" withString:@"$1" options:1024 range:{0, objc_msgSend(keyCopy, "length")}];

  v5 = [v4 substringToIndex:1];
  lowercaseString = [v5 lowercaseString];
  v7 = [v4 stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];

  return v7;
}

@end