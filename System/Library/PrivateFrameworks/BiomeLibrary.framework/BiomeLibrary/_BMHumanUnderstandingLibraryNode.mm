@interface _BMHumanUnderstandingLibraryNode
+ (id)PersonalInference;
+ (id)configurationForPersonalInference;
+ (id)storeConfigurationForPersonalInference;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMHumanUnderstandingLibraryNode

+ (id)PersonalInference
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPersonalInference = [self configurationForPersonalInference];
  v3 = +[BMHumanUnderstandingPersonalInference columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"HumanUnderstanding.PersonalInference" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"HumanUnderstanding.PersonalInference" schema:v9 configuration:configurationForPersonalInference];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPersonalInference
{
  storeConfigurationForPersonalInference = [self storeConfigurationForPersonalInference];
  syncPolicyForPersonalInference = [self syncPolicyForPersonalInference];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"ECEF09A6-6390-48EE-8D45-7378F02FE86B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"HumanUnderstanding.PersonalInference" eventClass:objc_opt_class() storeConfig:storeConfigurationForPersonalInference syncPolicy:syncPolicyForPersonalInference legacyNames:&unk_1EF3E97C8 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPersonalInference
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"HumanUnderstanding.PersonalInference" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"PersonalInference"])
  {
    personalInference = [self PersonalInference];
  }

  else
  {
    personalInference = 0;
  }

  return personalInference;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMHumanUnderstandingPersonalInference validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end