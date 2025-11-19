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
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMAccessibilityLibraryNode

+ (id)ClassicInvert
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForClassicInvert];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.ClassicInvert" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForClassicInvert
{
  v3 = [a1 storeConfigurationForClassicInvert];
  v4 = [a1 syncPolicyForClassicInvert];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8ED9A3AE-742E-4BDA-BE4E-27D83D9D2EA0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.ClassicInvert" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForColorFilters];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.ColorFilters" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForColorFilters
{
  v3 = [a1 storeConfigurationForColorFilters];
  v4 = [a1 syncPolicyForColorFilters];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"802EA60B-FBF0-46E0-AFBE-738351D682A6"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.ColorFilters" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForContrast];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.Contrast" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForContrast
{
  v3 = [a1 storeConfigurationForContrast];
  v4 = [a1 syncPolicyForContrast];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4DBA3BC2-F175-4035-AF91-D30001BAC726"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.Contrast" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForMotionCues];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.MotionCues" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForMotionCues
{
  v3 = [a1 storeConfigurationForMotionCues];
  v4 = [a1 syncPolicyForMotionCues];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"543A82D6-4C54-44A0-9287-C985992DE170"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.MotionCues" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForReduceMotion];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.ReduceMotion" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForReduceMotion
{
  v3 = [a1 storeConfigurationForReduceMotion];
  v4 = [a1 syncPolicyForReduceMotion];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FCC2E76F-3CAE-481D-B8F8-1F9290D48CC8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.ReduceMotion" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForReduceTransparency];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.ReduceTransparency" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForReduceTransparency
{
  v3 = [a1 storeConfigurationForReduceTransparency];
  v4 = [a1 syncPolicyForReduceTransparency];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7EA88124-DC52-4E9B-986D-C8E257E4EE45"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.ReduceTransparency" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForSmartInvert];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.SmartInvert" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSmartInvert
{
  v3 = [a1 storeConfigurationForSmartInvert];
  v4 = [a1 syncPolicyForSmartInvert];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4C3C11B9-A0B2-4A16-A2CA-019F7FAB4AD0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.SmartInvert" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForSoundDetection];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.SoundDetection" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSoundDetection
{
  v3 = [a1 storeConfigurationForSoundDetection];
  v4 = [a1 syncPolicyForSoundDetection];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"EECE2235-7EAB-40C7-A763-AB3D44240D63"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.SoundDetection" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EB628 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForVoiceControl];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.VoiceControl" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForVoiceControl
{
  v3 = [a1 storeConfigurationForVoiceControl];
  v4 = [a1 syncPolicyForVoiceControl];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C75A57EF-37C2-43B0-8F93-D47BA7691715"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.VoiceControl" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForVoiceOver];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.VoiceOver" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForVoiceOver
{
  v3 = [a1 storeConfigurationForVoiceOver];
  v4 = [a1 syncPolicyForVoiceOver];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4A709D28-1CA9-4AC0-BFE0-F4889AA9C5FA"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.VoiceOver" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForWhitePoint];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.WhitePoint" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForWhitePoint
{
  v3 = [a1 storeConfigurationForWhitePoint];
  v4 = [a1 syncPolicyForWhitePoint];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F73CC6CE-A31A-4021-9F1A-2C6A5B4457C1"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.WhitePoint" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForZoom];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Accessibility.Zoom" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForZoom
{
  v3 = [a1 storeConfigurationForZoom];
  v4 = [a1 syncPolicyForZoom];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A4210F09-D73C-4345-980C-7E067C85B1DF"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Accessibility.Zoom" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForZoom
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Accessibility.Zoom" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ClassicInvert"])
  {
    v5 = [a1 ClassicInvert];
LABEL_25:
    v6 = v5;
    goto LABEL_26;
  }

  if ([v4 isEqualToString:@"ColorFilters"])
  {
    v5 = [a1 ColorFilters];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"Contrast"])
  {
    v5 = [a1 Contrast];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"MotionCues"])
  {
    v5 = [a1 MotionCues];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"ReduceMotion"])
  {
    v5 = [a1 ReduceMotion];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"ReduceTransparency"])
  {
    v5 = [a1 ReduceTransparency];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"SmartInvert"])
  {
    v5 = [a1 SmartInvert];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"SoundDetection"])
  {
    v5 = [a1 SoundDetection];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"VoiceControl"])
  {
    v5 = [a1 VoiceControl];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"VoiceOver"])
  {
    v5 = [a1 VoiceOver];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"WhitePoint"])
  {
    v5 = [a1 WhitePoint];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:@"Zoom"])
  {
    v5 = [a1 Zoom];
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