@interface _BMIntelligencePlatformEntityTaggingLibraryNode
+ (id)PersonInference;
+ (id)configurationForPersonInference;
+ (id)storeConfigurationForPersonInference;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMIntelligencePlatformEntityTaggingLibraryNode

+ (id)PersonInference
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPersonInference = [self configurationForPersonInference];
  v3 = +[BMIntelligencePlatformEntityTaggingPersonInference columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"IntelligencePlatform.EntityTagging.PersonInference" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"IntelligencePlatform.EntityTagging.PersonInference" schema:v9 configuration:configurationForPersonInference];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPersonInference
{
  storeConfigurationForPersonInference = [self storeConfigurationForPersonInference];
  syncPolicyForPersonInference = [self syncPolicyForPersonInference];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0727A6B0-4C16-4D5E-8DBB-7B124550E7B8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"IntelligencePlatform.EntityTagging.PersonInference" eventClass:objc_opt_class() storeConfig:storeConfigurationForPersonInference syncPolicy:syncPolicyForPersonInference legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPersonInference
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"IntelligencePlatform.EntityTagging.PersonInference" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"PersonInference"])
  {
    personInference = [self PersonInference];
  }

  else
  {
    personInference = 0;
  }

  return personInference;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMIntelligencePlatformEntityTaggingPersonInference validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end