@interface _BMContextualUnderstandingLibraryNode
+ (id)ActivityInference;
+ (id)AmbientLight;
+ (id)PeopleDiscovery;
+ (id)PhysicalSocial;
+ (id)SoundAnalysis;
+ (id)configurationForActivityInference;
+ (id)configurationForAmbientLight;
+ (id)configurationForPeopleDiscovery;
+ (id)configurationForPhysicalSocial;
+ (id)configurationForSoundAnalysis;
+ (id)storeConfigurationForActivityInference;
+ (id)storeConfigurationForAmbientLight;
+ (id)storeConfigurationForPeopleDiscovery;
+ (id)storeConfigurationForPhysicalSocial;
+ (id)storeConfigurationForSoundAnalysis;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMContextualUnderstandingLibraryNode

+ (id)ActivityInference
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForActivityInference = [self configurationForActivityInference];
  v3 = +[BMContextualUnderstandingActivityInference columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextualUnderstanding.ActivityInference" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextualUnderstanding.ActivityInference" schema:v9 configuration:configurationForActivityInference];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForActivityInference
{
  storeConfigurationForActivityInference = [self storeConfigurationForActivityInference];
  syncPolicyForActivityInference = [self syncPolicyForActivityInference];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"17344794-4C6E-47F4-8C0B-5714C7883E27"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextualUnderstanding.ActivityInference" eventClass:objc_opt_class() storeConfig:storeConfigurationForActivityInference syncPolicy:syncPolicyForActivityInference legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForActivityInference
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextualUnderstanding.ActivityInference" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)AmbientLight
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAmbientLight = [self configurationForAmbientLight];
  v3 = +[BMContextualUnderstandingAmbientLight columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextualUnderstanding.AmbientLight" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextualUnderstanding.AmbientLight" schema:v9 configuration:configurationForAmbientLight];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAmbientLight
{
  storeConfigurationForAmbientLight = [self storeConfigurationForAmbientLight];
  syncPolicyForAmbientLight = [self syncPolicyForAmbientLight];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6B06A8F9-61E9-4B24-95B7-C87C47A0BC03"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextualUnderstanding.AmbientLight" eventClass:objc_opt_class() storeConfig:storeConfigurationForAmbientLight syncPolicy:syncPolicyForAmbientLight legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAmbientLight
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:241920 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextualUnderstanding.AmbientLight" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)PeopleDiscovery
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPeopleDiscovery = [self configurationForPeopleDiscovery];
  v3 = +[BMContextualUnderstandingPeopleDiscovery columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextualUnderstanding.PeopleDiscovery" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextualUnderstanding.PeopleDiscovery" schema:v9 configuration:configurationForPeopleDiscovery];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPeopleDiscovery
{
  storeConfigurationForPeopleDiscovery = [self storeConfigurationForPeopleDiscovery];
  syncPolicyForPeopleDiscovery = [self syncPolicyForPeopleDiscovery];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D0E5021F-41E3-4868-B9D3-6982A0D622EA"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextualUnderstanding.PeopleDiscovery" eventClass:objc_opt_class() storeConfig:storeConfigurationForPeopleDiscovery syncPolicy:syncPolicyForPeopleDiscovery legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPeopleDiscovery
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextualUnderstanding.PeopleDiscovery" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)PhysicalSocial
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPhysicalSocial = [self configurationForPhysicalSocial];
  v3 = +[BMContextualUnderstandingPhysicalSocial columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextualUnderstanding.PhysicalSocial" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextualUnderstanding.PhysicalSocial" schema:v9 configuration:configurationForPhysicalSocial];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPhysicalSocial
{
  storeConfigurationForPhysicalSocial = [self storeConfigurationForPhysicalSocial];
  syncPolicyForPhysicalSocial = [self syncPolicyForPhysicalSocial];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"61466143-B29F-4369-B39C-0B91090D10A0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextualUnderstanding.PhysicalSocial" eventClass:objc_opt_class() storeConfig:storeConfigurationForPhysicalSocial syncPolicy:syncPolicyForPhysicalSocial legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPhysicalSocial
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextualUnderstanding.PhysicalSocial" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SoundAnalysis
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSoundAnalysis = [self configurationForSoundAnalysis];
  v3 = +[BMContextualUnderstandingSoundAnalysis columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextualUnderstanding.SoundAnalysis" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextualUnderstanding.SoundAnalysis" schema:v9 configuration:configurationForSoundAnalysis];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSoundAnalysis
{
  storeConfigurationForSoundAnalysis = [self storeConfigurationForSoundAnalysis];
  syncPolicyForSoundAnalysis = [self syncPolicyForSoundAnalysis];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6BD929B5-7BBF-409D-8868-9B9039FD2904"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextualUnderstanding.SoundAnalysis" eventClass:objc_opt_class() storeConfig:storeConfigurationForSoundAnalysis syncPolicy:syncPolicyForSoundAnalysis legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSoundAnalysis
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextualUnderstanding.SoundAnalysis" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"ActivityInference"])
  {
    activityInference = [self ActivityInference];
LABEL_11:
    v6 = activityInference;
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"AmbientLight"])
  {
    activityInference = [self AmbientLight];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"PeopleDiscovery"])
  {
    activityInference = [self PeopleDiscovery];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"PhysicalSocial"])
  {
    activityInference = [self PhysicalSocial];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"SoundAnalysis"])
  {
    activityInference = [self SoundAnalysis];
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMContextualUnderstandingActivityInference validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMContextualUnderstandingAmbientLight validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMContextualUnderstandingPeopleDiscovery validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMContextualUnderstandingPhysicalSocial validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMContextualUnderstandingSoundAnalysis validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = [v2 copy];

  return v8;
}

@end