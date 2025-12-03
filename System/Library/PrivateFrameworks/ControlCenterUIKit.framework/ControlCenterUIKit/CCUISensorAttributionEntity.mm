@interface CCUISensorAttributionEntity
+ (id)attributionEntityFromSensorActivityData:(id)data;
+ (id)genericLocationSystemServiceEntity;
- (BOOL)isBrowserEntity;
- (BOOL)isContinuityCaptureExtension;
- (BOOL)isEmergencySOSEntity;
- (BOOL)isEqual:(id)equal;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  displayName = [(CCUISensorAttributionEntity *)self displayName];
  v5 = [builder appendObject:displayName];

  executableDisplayName = [(CCUISensorAttributionEntity *)self executableDisplayName];
  v7 = [builder appendObject:executableDisplayName];

  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v9 = [builder appendObject:bundleIdentifier];

  v10 = [builder appendBool:{-[CCUISensorAttributionEntity isSystemService](self, "isSystemService")}];
  website = [(CCUISensorAttributionEntity *)self website];
  v12 = [builder appendBool:website != 0];

  v13 = [builder hash];
  return v13;
}

- (BOOL)isGenericLocationSystemServiceEntity
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.locationSystemServices"];

  return v3;
}

- (BOOL)isSetupApp
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

  return v3;
}

- (BOOL)isSiriAndDictationEntity
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.AssistantServices"];

  return v3;
}

- (BOOL)isEmergencySOSEntity
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.SOS"];

  return v3;
}

- (NSString)displayNameForCompactView
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    _displayName = [v5 localizedStringForKey:@"CONTROL_CENTER_SENSOR_SAFARI_WEBSITES" value:&stru_1F4D52330 table:0];
  }

  else
  {
    _displayName = [(CCUISensorAttributionEntity *)self _displayName];
  }

  return _displayName;
}

- (BOOL)isWalletSpecialEntity
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.PassKitCore"];

  return v3;
}

- (BOOL)isKeyboardCameraEntity
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.VisionKit.KeyboardCamera"];

  return v3;
}

- (id)_displayName
{
  if (!-[CCUISensorAttributionEntity isBrowserEntity](self, "isBrowserEntity") && (-[CCUISensorAttributionEntity displayName](self, "displayName"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, -[CCUISensorAttributionEntity displayName](self, "displayName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    displayName = [(CCUISensorAttributionEntity *)self displayName];
  }

  else
  {
    displayName = [(CCUISensorAttributionEntity *)self executableDisplayName];
  }

  return displayName;
}

- (BOOL)isBrowserEntity
{
  website = [(CCUISensorAttributionEntity *)self website];
  if (website)
  {
    website2 = [(CCUISensorAttributionEntity *)self website];
    v5 = [website2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isContinuityCaptureExtension
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.sidecar.extension.capture"];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  displayName = [(CCUISensorAttributionEntity *)self displayName];
  executableDisplayName = [(CCUISensorAttributionEntity *)self executableDisplayName];
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v7 = [v3 stringWithFormat:@"displayName: %@, executableDisplayName: %@, bundle: %@, isSystemService: %d", displayName, executableDisplayName, bundleIdentifier, -[CCUISensorAttributionEntity isSystemService](self, "isSystemService")];

  return v7;
}

+ (id)attributionEntityFromSensorActivityData:(id)data
{
  dataCopy = data;
  if ([dataCopy sensorType] == 2 && objc_msgSend(dataCopy, "isSystemService"))
  {
    genericLocationSystemServiceEntity = [objc_opt_class() genericLocationSystemServiceEntity];
  }

  else
  {
    genericLocationSystemServiceEntity = objc_alloc_init(CCUISensorAttributionEntity);
    displayName = [dataCopy displayName];
    [(CCUISensorAttributionEntity *)genericLocationSystemServiceEntity setDisplayName:displayName];

    executableDisplayName = [dataCopy executableDisplayName];
    [(CCUISensorAttributionEntity *)genericLocationSystemServiceEntity setExecutableDisplayName:executableDisplayName];

    bundleIdentifier = [dataCopy bundleIdentifier];
    [(CCUISensorAttributionEntity *)genericLocationSystemServiceEntity setBundleIdentifier:bundleIdentifier];

    -[CCUISensorAttributionEntity setIsSystemService:](genericLocationSystemServiceEntity, "setIsSystemService:", [dataCopy isSystemService]);
    website = [dataCopy website];
    [(CCUISensorAttributionEntity *)genericLocationSystemServiceEntity setWebsite:website];

    -[CCUISensorAttributionEntity setSensorType:](genericLocationSystemServiceEntity, "setSensorType:", [dataCopy sensorType]);
  }

  return genericLocationSystemServiceEntity;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    displayName = [(CCUISensorAttributionEntity *)self displayName];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke;
    v30[3] = &unk_1E83EA708;
    v7 = equalCopy;
    v31 = v7;
    v8 = [v5 appendString:displayName counterpart:v30];

    executableDisplayName = [(CCUISensorAttributionEntity *)self executableDisplayName];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke_2;
    v28[3] = &unk_1E83EA708;
    v10 = v7;
    v29 = v10;
    v11 = [v5 appendString:executableDisplayName counterpart:v28];

    bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke_3;
    v26[3] = &unk_1E83EA708;
    v13 = v10;
    v27 = v13;
    v14 = [v5 appendString:bundleIdentifier counterpart:v26];

    isSystemService = [(CCUISensorAttributionEntity *)self isSystemService];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke_4;
    v24[3] = &unk_1E83EA730;
    v16 = v13;
    v25 = v16;
    v17 = [v5 appendBool:isSystemService counterpart:v24];
    website = [(CCUISensorAttributionEntity *)self website];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __39__CCUISensorAttributionEntity_isEqual___block_invoke_5;
    v22[3] = &unk_1E83EA708;
    v23 = v16;
    v19 = [v5 appendString:website counterpart:v22];

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
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.SpeechRecognitionCore.speechrecognitiond"];

  return v3;
}

- (BOOL)isScreenRecording
{
  bundleIdentifier = [(CCUISensorAttributionEntity *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.replayd"];

  return v3;
}

@end