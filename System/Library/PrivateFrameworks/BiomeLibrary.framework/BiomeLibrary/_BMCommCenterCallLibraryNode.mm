@interface _BMCommCenterCallLibraryNode
+ (id)EmergencyVoiceCall;
+ (id)configurationForEmergencyVoiceCall;
+ (id)storeConfigurationForEmergencyVoiceCall;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMCommCenterCallLibraryNode

+ (id)EmergencyVoiceCall
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEmergencyVoiceCall = [self configurationForEmergencyVoiceCall];
  v3 = +[BMCommCenterEmergencyVoiceCall columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"CommCenter.Call.EmergencyVoiceCall" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"CommCenter.Call.EmergencyVoiceCall" schema:v9 configuration:configurationForEmergencyVoiceCall];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForEmergencyVoiceCall
{
  storeConfigurationForEmergencyVoiceCall = [self storeConfigurationForEmergencyVoiceCall];
  syncPolicyForEmergencyVoiceCall = [self syncPolicyForEmergencyVoiceCall];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AE11123E-9872-43D4-A900-A07B3E23D475"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"CommCenter.Call.EmergencyVoiceCall" eventClass:objc_opt_class() storeConfig:storeConfigurationForEmergencyVoiceCall syncPolicy:syncPolicyForEmergencyVoiceCall legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEmergencyVoiceCall
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"CommCenter.Call.EmergencyVoiceCall" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"EmergencyVoiceCall"])
  {
    emergencyVoiceCall = [self EmergencyVoiceCall];
  }

  else
  {
    emergencyVoiceCall = 0;
  }

  return emergencyVoiceCall;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMCommCenterEmergencyVoiceCall validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end