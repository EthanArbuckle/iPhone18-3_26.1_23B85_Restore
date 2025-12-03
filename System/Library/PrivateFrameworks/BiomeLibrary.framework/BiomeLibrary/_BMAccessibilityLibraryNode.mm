@interface _BMAccessibilityLibraryNode
+ (id)ClassicInvert;
+ (id)ColorFilters;
+ (id)Contrast;
+ (id)MotionCues;
+ (id)ReduceMotion;
+ (id)ReduceTransparency;
+ (id)SmartInvert;
+ (id)SoundDetection;
+ (id)VoiceControl;
+ (id)VoiceOver;
+ (id)WhitePoint;
+ (id)Zoom;
+ (id)configurationForClassicInvert;
+ (id)configurationForColorFilters;
+ (id)configurationForContrast;
+ (id)configurationForMotionCues;
+ (id)configurationForReduceMotion;
+ (id)configurationForReduceTransparency;
+ (id)configurationForSmartInvert;
+ (id)configurationForSoundDetection;
+ (id)configurationForVoiceControl;
+ (id)configurationForVoiceOver;
+ (id)configurationForWhitePoint;
+ (id)configurationForZoom;
+ (id)storeConfigurationForClassicInvert;
+ (id)storeConfigurationForColorFilters;
+ (id)storeConfigurationForContrast;
+ (id)storeConfigurationForMotionCues;
+ (id)storeConfigurationForReduceMotion;
+ (id)storeConfigurationForReduceTransparency;
+ (id)storeConfigurationForSmartInvert;
+ (id)storeConfigurationForSoundDetection;
+ (id)storeConfigurationForVoiceControl;
+ (id)storeConfigurationForVoiceOver;
+ (id)storeConfigurationForWhitePoint;
+ (id)storeConfigurationForZoom;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAccessibilityLibraryNode

+ (id)ClassicInvert
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForClassicInvert = [self configurationForClassicInvert];
  v3 = +[BMAccessibilityClassicInvert columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.ClassicInvert" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.ClassicInvert" schema:v9 configuration:configurationForClassicInvert];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForClassicInvert
{
  storeConfigurationForClassicInvert = [self storeConfigurationForClassicInvert];
  syncPolicyForClassicInvert = [self syncPolicyForClassicInvert];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8ED9A3AE-742E-4BDA-BE4E-27D83D9D2EA0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.ClassicInvert" eventClass:objc_opt_class() storeConfig:storeConfigurationForClassicInvert syncPolicy:syncPolicyForClassicInvert legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForClassicInvert
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.ClassicInvert" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)ColorFilters
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForColorFilters = [self configurationForColorFilters];
  v3 = +[BMAccessibilityColorFilters columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.ColorFilters" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.ColorFilters" schema:v9 configuration:configurationForColorFilters];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForColorFilters
{
  storeConfigurationForColorFilters = [self storeConfigurationForColorFilters];
  syncPolicyForColorFilters = [self syncPolicyForColorFilters];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"802EA60B-FBF0-46E0-AFBE-738351D682A6"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.ColorFilters" eventClass:objc_opt_class() storeConfig:storeConfigurationForColorFilters syncPolicy:syncPolicyForColorFilters legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForColorFilters
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.ColorFilters" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Contrast
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForContrast = [self configurationForContrast];
  v3 = +[BMAccessibilityContrast columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.Contrast" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.Contrast" schema:v9 configuration:configurationForContrast];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForContrast
{
  storeConfigurationForContrast = [self storeConfigurationForContrast];
  syncPolicyForContrast = [self syncPolicyForContrast];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4DBA3BC2-F175-4035-AF91-D30001BAC726"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.Contrast" eventClass:objc_opt_class() storeConfig:storeConfigurationForContrast syncPolicy:syncPolicyForContrast legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForContrast
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.Contrast" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)MotionCues
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMotionCues = [self configurationForMotionCues];
  v3 = +[BMAccessibilityMotionCues columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.MotionCues" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.MotionCues" schema:v9 configuration:configurationForMotionCues];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForMotionCues
{
  storeConfigurationForMotionCues = [self storeConfigurationForMotionCues];
  syncPolicyForMotionCues = [self syncPolicyForMotionCues];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"543A82D6-4C54-44A0-9287-C985992DE170"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.MotionCues" eventClass:objc_opt_class() storeConfig:storeConfigurationForMotionCues syncPolicy:syncPolicyForMotionCues legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMotionCues
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.MotionCues" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)ReduceMotion
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForReduceMotion = [self configurationForReduceMotion];
  v3 = +[BMAccessibilityReduceMotion columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.ReduceMotion" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.ReduceMotion" schema:v9 configuration:configurationForReduceMotion];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForReduceMotion
{
  storeConfigurationForReduceMotion = [self storeConfigurationForReduceMotion];
  syncPolicyForReduceMotion = [self syncPolicyForReduceMotion];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FCC2E76F-3CAE-481D-B8F8-1F9290D48CC8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.ReduceMotion" eventClass:objc_opt_class() storeConfig:storeConfigurationForReduceMotion syncPolicy:syncPolicyForReduceMotion legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForReduceMotion
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.ReduceMotion" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)ReduceTransparency
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForReduceTransparency = [self configurationForReduceTransparency];
  v3 = +[BMAccessibilityReduceTransparency columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.ReduceTransparency" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.ReduceTransparency" schema:v9 configuration:configurationForReduceTransparency];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForReduceTransparency
{
  storeConfigurationForReduceTransparency = [self storeConfigurationForReduceTransparency];
  syncPolicyForReduceTransparency = [self syncPolicyForReduceTransparency];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7EA88124-DC52-4E9B-986D-C8E257E4EE45"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.ReduceTransparency" eventClass:objc_opt_class() storeConfig:storeConfigurationForReduceTransparency syncPolicy:syncPolicyForReduceTransparency legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForReduceTransparency
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.ReduceTransparency" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SmartInvert
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSmartInvert = [self configurationForSmartInvert];
  v3 = +[BMAccessibilitySmartInvert columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.SmartInvert" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.SmartInvert" schema:v9 configuration:configurationForSmartInvert];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSmartInvert
{
  storeConfigurationForSmartInvert = [self storeConfigurationForSmartInvert];
  syncPolicyForSmartInvert = [self syncPolicyForSmartInvert];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4C3C11B9-A0B2-4A16-A2CA-019F7FAB4AD0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.SmartInvert" eventClass:objc_opt_class() storeConfig:storeConfigurationForSmartInvert syncPolicy:syncPolicyForSmartInvert legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSmartInvert
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.SmartInvert" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SoundDetection
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSoundDetection = [self configurationForSoundDetection];
  v3 = +[BMAccessibilitySoundDetection columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.SoundDetection" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.SoundDetection" schema:v9 configuration:configurationForSoundDetection];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSoundDetection
{
  storeConfigurationForSoundDetection = [self storeConfigurationForSoundDetection];
  syncPolicyForSoundDetection = [self syncPolicyForSoundDetection];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"EECE2235-7EAB-40C7-A763-AB3D44240D63"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.SoundDetection" eventClass:objc_opt_class() storeConfig:storeConfigurationForSoundDetection syncPolicy:syncPolicyForSoundDetection legacyNames:&unk_1EF3EB628 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSoundDetection
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.SoundDetection" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)VoiceControl
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForVoiceControl = [self configurationForVoiceControl];
  v3 = +[BMAccessibilityVoiceControl columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.VoiceControl" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.VoiceControl" schema:v9 configuration:configurationForVoiceControl];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForVoiceControl
{
  storeConfigurationForVoiceControl = [self storeConfigurationForVoiceControl];
  syncPolicyForVoiceControl = [self syncPolicyForVoiceControl];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C75A57EF-37C2-43B0-8F93-D47BA7691715"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.VoiceControl" eventClass:objc_opt_class() storeConfig:storeConfigurationForVoiceControl syncPolicy:syncPolicyForVoiceControl legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForVoiceControl
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.VoiceControl" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)VoiceOver
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForVoiceOver = [self configurationForVoiceOver];
  v3 = +[BMAccessibilityVoiceOver columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.VoiceOver" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.VoiceOver" schema:v9 configuration:configurationForVoiceOver];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForVoiceOver
{
  storeConfigurationForVoiceOver = [self storeConfigurationForVoiceOver];
  syncPolicyForVoiceOver = [self syncPolicyForVoiceOver];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4A709D28-1CA9-4AC0-BFE0-F4889AA9C5FA"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.VoiceOver" eventClass:objc_opt_class() storeConfig:storeConfigurationForVoiceOver syncPolicy:syncPolicyForVoiceOver legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForVoiceOver
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.VoiceOver" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)WhitePoint
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForWhitePoint = [self configurationForWhitePoint];
  v3 = +[BMAccessibilityWhitePoint columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.WhitePoint" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.WhitePoint" schema:v9 configuration:configurationForWhitePoint];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForWhitePoint
{
  storeConfigurationForWhitePoint = [self storeConfigurationForWhitePoint];
  syncPolicyForWhitePoint = [self syncPolicyForWhitePoint];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F73CC6CE-A31A-4021-9F1A-2C6A5B4457C1"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.WhitePoint" eventClass:objc_opt_class() storeConfig:storeConfigurationForWhitePoint syncPolicy:syncPolicyForWhitePoint legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWhitePoint
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.WhitePoint" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Zoom
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForZoom = [self configurationForZoom];
  v3 = +[BMAccessibilityZoom columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Accessibility.Zoom" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.Zoom" schema:v9 configuration:configurationForZoom];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForZoom
{
  storeConfigurationForZoom = [self storeConfigurationForZoom];
  syncPolicyForZoom = [self syncPolicyForZoom];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A4210F09-D73C-4345-980C-7E067C85B1DF"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.Zoom" eventClass:objc_opt_class() storeConfig:storeConfigurationForZoom syncPolicy:syncPolicyForZoom legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForZoom
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.Zoom" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"ClassicInvert"])
  {
    classicInvert = [self ClassicInvert];
LABEL_25:
    v6 = classicInvert;
    goto LABEL_26;
  }

  if ([nameCopy isEqualToString:@"ColorFilters"])
  {
    classicInvert = [self ColorFilters];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Contrast"])
  {
    classicInvert = [self Contrast];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"MotionCues"])
  {
    classicInvert = [self MotionCues];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"ReduceMotion"])
  {
    classicInvert = [self ReduceMotion];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"ReduceTransparency"])
  {
    classicInvert = [self ReduceTransparency];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"SmartInvert"])
  {
    classicInvert = [self SmartInvert];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"SoundDetection"])
  {
    classicInvert = [self SoundDetection];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"VoiceControl"])
  {
    classicInvert = [self VoiceControl];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"VoiceOver"])
  {
    classicInvert = [self VoiceOver];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"WhitePoint"])
  {
    classicInvert = [self WhitePoint];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Zoom"])
  {
    classicInvert = [self Zoom];
    goto LABEL_25;
  }

  v6 = 0;
LABEL_26:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAccessibilityClassicInvert validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMAccessibilityColorFilters validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMAccessibilityContrast validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMAccessibilityMotionCues validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMAccessibilityReduceMotion validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMAccessibilityReduceTransparency validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = +[BMAccessibilitySmartInvert validKeyPaths];
  [v2 addObjectsFromArray:v9];

  v10 = +[BMAccessibilitySoundDetection validKeyPaths];
  [v2 addObjectsFromArray:v10];

  v11 = +[BMAccessibilityVoiceControl validKeyPaths];
  [v2 addObjectsFromArray:v11];

  v12 = +[BMAccessibilityVoiceOver validKeyPaths];
  [v2 addObjectsFromArray:v12];

  v13 = +[BMAccessibilityWhitePoint validKeyPaths];
  [v2 addObjectsFromArray:v13];

  v14 = +[BMAccessibilityZoom validKeyPaths];
  [v2 addObjectsFromArray:v14];

  v15 = [v2 copy];

  return v15;
}

@end