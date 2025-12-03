@interface _BMAdPlatformsPolicyInstrumentationLibraryNode
+ (id)Candidate;
+ (id)Opportunity;
+ (id)configurationForCandidate;
+ (id)configurationForOpportunity;
+ (id)storeConfigurationForCandidate;
+ (id)storeConfigurationForOpportunity;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAdPlatformsPolicyInstrumentationLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Candidate"])
  {
    candidate = [self Candidate];
LABEL_5:
    v6 = candidate;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Opportunity"])
  {
    candidate = [self Opportunity];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAdPlatformsCandidate validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMAdPlatformsOpportunity validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForOpportunity
{
  storeConfigurationForOpportunity = [self storeConfigurationForOpportunity];
  syncPolicyForOpportunity = [self syncPolicyForOpportunity];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8F7524D9-3860-40CC-A2B9-BC3B93E78396"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AdPlatforms.PolicyInstrumentation.Opportunity" eventClass:objc_opt_class() storeConfig:storeConfigurationForOpportunity syncPolicy:syncPolicyForOpportunity legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForOpportunity
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AdPlatforms.PolicyInstrumentation.Opportunity" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForCandidate
{
  storeConfigurationForCandidate = [self storeConfigurationForCandidate];
  syncPolicyForCandidate = [self syncPolicyForCandidate];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7C0E415E-FFA3-4AB9-83D6-B72757EA0140"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AdPlatforms.PolicyInstrumentation.Candidate" eventClass:objc_opt_class() storeConfig:storeConfigurationForCandidate syncPolicy:syncPolicyForCandidate legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForCandidate
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AdPlatforms.PolicyInstrumentation.Candidate" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)Opportunity
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForOpportunity = [self configurationForOpportunity];
  v3 = +[BMAdPlatformsOpportunity columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AdPlatforms.PolicyInstrumentation.Opportunity" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AdPlatforms.PolicyInstrumentation.Opportunity" schema:v9 configuration:configurationForOpportunity];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Candidate
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForCandidate = [self configurationForCandidate];
  v3 = +[BMAdPlatformsCandidate columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AdPlatforms.PolicyInstrumentation.Candidate" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AdPlatforms.PolicyInstrumentation.Candidate" schema:v9 configuration:configurationForCandidate];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end