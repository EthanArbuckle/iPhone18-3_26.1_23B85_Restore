@interface _BMPersonalizedSensingLibraryNode
+ (id)MomentsContext;
+ (id)configurationForMomentsContext;
+ (id)storeConfigurationForMomentsContext;
+ (id)streamWithName:(id)name;
+ (id)syncPolicyForMomentsContext;
+ (id)validKeyPaths;
@end

@implementation _BMPersonalizedSensingLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"MomentsContext"])
  {
    momentsContext = [self MomentsContext];
  }

  else
  {
    momentsContext = 0;
  }

  return momentsContext;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMPersonalizedSensingMomentsContext validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForMomentsContext
{
  storeConfigurationForMomentsContext = [self storeConfigurationForMomentsContext];
  syncPolicyForMomentsContext = [self syncPolicyForMomentsContext];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"CCF6077C-15C7-411E-998E-7F68DFAD26DA"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"PersonalizedSensing.MomentsContext" eventClass:objc_opt_class() storeConfig:storeConfigurationForMomentsContext syncPolicy:syncPolicyForMomentsContext legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)syncPolicyForMomentsContext
{
  v25[1] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:2];
  v25[0] = v19;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v18 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v24 = v18;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v2 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v23 = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v22 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v20[0] = v6;
  v21[0] = v17;
  v7 = BMDevicePlatformAsKeyString();
  v20[1] = v7;
  v21[1] = v16;
  v8 = BMDevicePlatformAsKeyString();
  v20[2] = v8;
  v21[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v20[3] = v9;
  v21[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v20[4] = v10;
  v21[4] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];

  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"CCF6077C-15C7-411E-998E-7F68DFAD26DA"];
  v13 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v11 syncUUID:v12 legacySyncID:0 eventClass:objc_opt_class()];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)storeConfigurationForMomentsContext
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:18874368 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"PersonalizedSensing.MomentsContext" domain:0 segmentSize:0x200000 protectionClass:2 pruningPolicy:v3];

  return v4;
}

+ (id)MomentsContext
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMomentsContext = [self configurationForMomentsContext];
  v3 = +[BMPersonalizedSensingMomentsContext columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"PersonalizedSensing.MomentsContext" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"PersonalizedSensing.MomentsContext" schema:v9 configuration:configurationForMomentsContext];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end