@interface _BMLocalAuthenticationInteractiveLibraryNode
+ (id)Evaluations;
+ (id)configurationForEvaluations;
+ (id)storeConfigurationForEvaluations;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMLocalAuthenticationInteractiveLibraryNode

+ (id)Evaluations
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEvaluations = [self configurationForEvaluations];
  v3 = +[BMLocalAuthenticationEvaluations columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"LocalAuthentication.Interactive.Evaluations" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"LocalAuthentication.Interactive.Evaluations" schema:v9 configuration:configurationForEvaluations];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Evaluations"])
  {
    evaluations = [self Evaluations];
  }

  else
  {
    evaluations = 0;
  }

  return evaluations;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMLocalAuthenticationEvaluations validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForEvaluations
{
  storeConfigurationForEvaluations = [self storeConfigurationForEvaluations];
  syncPolicyForEvaluations = [self syncPolicyForEvaluations];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FEF30B4C-0192-4464-AD30-99BF68533683"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"LocalAuthentication.Interactive.Evaluations" eventClass:objc_opt_class() storeConfig:storeConfigurationForEvaluations syncPolicy:syncPolicyForEvaluations legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEvaluations
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:7000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"LocalAuthentication.Interactive.Evaluations" domain:0 segmentSize:0x40000 protectionClass:5 pruningPolicy:v2];

  return v3;
}

@end