@interface CCUISensorAttributionEntity
+ (id)attributionEntityFromSensorActivityData:(id)a3;
+ (id)genericLocationSystemServiceEntity;
- (BOOL)isBrowserEntity;
- (BOOL)isContinuityCaptureExtension;
- (BOOL)isEmergencySOSEntity;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGenericLocationSystemServiceEntity;
- (BOOL)isKeyboardCameraEntity;
- (BOOL)isScreenRecording;
- (BOOL)isSetupApp;
- (BOOL)isSiriAndDictationEntity;
- (BOOL)isVoiceControlEntity;
- (BOOL)isWalletSpecialEntity;
- (NSString)displayNameForCompactView;
- (id)_displayName;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation CCUISensorAttributionEntity

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(CCUISensorAttributionEntity *)self displayName];
  v5 = [v3 appendObject:v4];

  v6 = [(CCUISensorAttributionEntity *)self executableDisplayName];
  v7 = [v3 appendObject:v6];

  v8 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v9 = [v3 appendObject:v8];

  v10 = [v3 appendBool:{-[CCUISensorAttributionEntity isSystemService](self, "isSystemService")}];
  v11 = [(CCUISensorAttributionEntity *)self website];
  v12 = [v3 appendBool:v11 != 0];

  v13 = [v3 hash];
  return v13;
}

- (BOOL)isGenericLocationSystemServiceEntity
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.locationSystemServices"];

  return v3;
}

- (BOOL)isSetupApp
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.purplebuddy"];

  return v3;
}

- (BOOL)isSiriAndDictationEntity
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.AssistantServices"];

  return v3;
}

- (BOOL)isEmergencySOSEntity
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.SOS"];

  return v3;
}

- (NSString)displayNameForCompactView
{
  v3 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.mobilesafari"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CONTROL_CENTER_SENSOR_SAFARI_WEBSITES" value:&stru_1F4D52330 table:0];
  }

  else
  {
    v6 = [(CCUISensorAttributionEntity *)self _displayName];
  }

  return v6;
}

- (BOOL)isWalletSpecialEntity
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.PassKitCore"];

  return v3;
}

- (BOOL)isKeyboardCameraEntity
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.VisionKit.KeyboardCamera"];

  return v3;
}

- (id)_displayName
{
  if (!-[CCUISensorAttributionEntity isBrowserEntity](self, "isBrowserEntity") && (-[CCUISensorAttributionEntity displayName](self, "displayName"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, -[CCUISensorAttributionEntity displayName](self, "displayName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v7 = [(CCUISensorAttributionEntity *)self displayName];
  }

  else
  {
    v7 = [(CCUISensorAttributionEntity *)self executableDisplayName];
  }

  return v7;
}

- (BOOL)isBrowserEntity
{
  v3 = [(CCUISensorAttributionEntity *)self website];
  if (v3)
  {
    v4 = [(CCUISensorAttributionEntity *)self website];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isContinuityCaptureExtension
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.sidecar.extension.capture"];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CCUISensorAttributionEntity *)self displayName];
  v5 = [(CCUISensorAttributionEntity *)self executableDisplayName];
  v6 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v7 = [v3 stringWithFormat:@"displayName: %@, executableDisplayName: %@, bundle: %@, isSystemService: %d", v4, v5, v6, -[CCUISensorAttributionEntity isSystemService](self, "isSystemService")];

  return v7;
}

+ (id)attributionEntityFromSensorActivityData:(id)a3
{
  v3 = a3;
  if ([v3 sensorType] == 2 && objc_msgSend(v3, "isSystemService"))
  {
    v4 = [objc_opt_class() genericLocationSystemServiceEntity];
  }

  else
  {
    v4 = objc_alloc_init(CCUISensorAttributionEntity);
    v5 = [v3 displayName];
    [(CCUISensorAttributionEntity *)v4 setDisplayName:v5];

    v6 = [v3 executableDisplayName];
    [(CCUISensorAttributionEntity *)v4 setExecutableDisplayName:v6];

    v7 = [v3 bundleIdentifier];
    [(CCUISensorAttributionEntity *)v4 setBundleIdentifier:v7];

    -[CCUISensorAttributionEntity setIsSystemService:](v4, "setIsSystemService:", [v3 isSystemService]);
    v8 = [v3 website];
    [(CCUISensorAttributionEntity *)v4 setWebsite:v8];

    -[CCUISensorAttributionEntity setSensorType:](v4, "setSensorType:", [v3 sensorType]);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(CCUISensorAttributionEntity *)self displayName];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke;
    v30[3] = &unk_1E83EA708;
    v7 = v4;
    v31 = v7;
    v8 = [v5 appendString:v6 counterpart:v30];

    v9 = [(CCUISensorAttributionEntity *)self executableDisplayName];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke_2;
    v28[3] = &unk_1E83EA708;
    v10 = v7;
    v29 = v10;
    v11 = [v5 appendString:v9 counterpart:v28];

    v12 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke_3;
    v26[3] = &unk_1E83EA708;
    v13 = v10;
    v27 = v13;
    v14 = [v5 appendString:v12 counterpart:v26];

    v15 = [(CCUISensorAttributionEntity *)self isSystemService];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke_4;
    v24[3] = &unk_1E83EA730;
    v16 = v13;
    v25 = v16;
    v17 = [v5 appendBool:v15 counterpart:v24];
    v18 = [(CCUISensorAttributionEntity *)self website];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke_5;
    v22[3] = &unk_1E83EA708;
    v23 = v16;
    v19 = [v5 appendString:v18 counterpart:v22];

    v20 = [v5 isEqual];
  }

  return v20;
}

+ (id)genericLocationSystemServiceEntity
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONTROL_CENTER_SENSOR_LOCATION_SYSTEM_SERVICES" value:&stru_1F4D52330 table:0];

  v4 = objc_alloc_init(CCUISensorAttributionEntity);
  [(CCUISensorAttributionEntity *)v4 setDisplayName:v3];
  [(CCUISensorAttributionEntity *)v4 setExecutableDisplayName:v3];
  [(CCUISensorAttributionEntity *)v4 setBundleIdentifier:@"com.apple.locationSystemServices"];
  [(CCUISensorAttributionEntity *)v4 setIsSystemService:1];
  [(CCUISensorAttributionEntity *)v4 setSensorType:2];

  return v4;
}

- (BOOL)isVoiceControlEntity
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.SpeechRecognitionCore.speechrecognitiond"];

  return v3;
}

- (BOOL)isScreenRecording
{
  v2 = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.replayd"];

  return v3;
}

@end