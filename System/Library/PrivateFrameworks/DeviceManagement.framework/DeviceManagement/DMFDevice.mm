@interface DMFDevice
+ (id)_sanitizedDeviceKey:(id)a3;
+ (id)propertyNameForKey:(id)a3;
- (id)initPrivate;
- (id)valueForKey:(id)a3 error:(id *)a4;
- (id)valueForUndefinedKey:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation DMFDevice

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = DMFDevice;
  return [(DMFDevice *)&v3 init];
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a3;
  v7 = [DMFDevice propertyNameForKey:a4];
  v8 = NSSelectorFromString(v7);
  v10.receiver = self;
  v10.super_class = DMFDevice;
  if ([(DMFDevice *)&v10 respondsToSelector:v8])
  {
    v9.receiver = self;
    v9.super_class = DMFDevice;
    [(DMFDevice *)&v9 setValue:v6 forKey:v7];
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = [DMFDevice propertyNameForKey:a3];
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

+ (id)propertyNameForKey:(id)a3
{
  v4 = a3;
  if (propertyNameForKey__onceToken != -1)
  {
    +[DMFDevice propertyNameForKey:];
  }

  v5 = [propertyNameForKey__mappedKeys objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 _sanitizedDeviceKey:v4];
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

- (id)valueForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = a4;
  NSSelectorFromString(v6);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [DMFDevice propertyNameForKey:v6];

    v6 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@WithError:", v6];
  v9 = NSSelectorFromString(v8);

  NSSelectorFromString(v6);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(DMFDevice *)self methodSignatureForSelector:v9];
    v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
    [v11 setTarget:self];
    [v11 setSelector:v9];
    [v11 setArgument:&v15 atIndex:2];
    [v11 invoke];
    v14 = 0;
    [v11 getReturnValue:&v14];
    v12 = v14;
  }

  else if (objc_opt_respondsToSelector())
  {
    v12 = [(DMFDevice *)self valueForKey:v6];
  }

  else if (a4)
  {
    DMFErrorWithCodeAndUserInfo(111, 0);
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_sanitizedDeviceKey:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByReplacingOccurrencesOfString:@"^DMFDevice(.*)Key$" withString:@"$1" options:1024 range:{0, objc_msgSend(v3, "length")}];

  v5 = [v4 substringToIndex:1];
  v6 = [v5 lowercaseString];
  v7 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v6}];

  return v7;
}

@end