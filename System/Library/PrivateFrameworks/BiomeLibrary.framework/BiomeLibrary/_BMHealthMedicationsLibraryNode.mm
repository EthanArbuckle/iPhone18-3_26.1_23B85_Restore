@interface _BMHealthMedicationsLibraryNode
+ (id)AddedMed;
+ (id)configurationForAddedMed;
+ (id)storeConfigurationForAddedMed;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMHealthMedicationsLibraryNode

+ (id)storeConfigurationForAddedMed
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Health.Medications.AddedMed" domain:0 segmentSize:0x20000 protectionClass:0 pruningPolicy:v2];

  return v3;
}

+ (id)AddedMed
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAddedMed];
  v3 = +[BMHealthMedicationsAddedMed columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Health.Medications.AddedMed" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Health.Medications.AddedMed" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAddedMed
{
  v3 = [a1 storeConfigurationForAddedMed];
  v4 = [a1 syncPolicyForAddedMed];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"08170046-CF49-4318-9FB8-7296D4A11E4A"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Health.Medications.AddedMed" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Health" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"AddedMed"])
  {
    v4 = [a1 AddedMed];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMHealthMedicationsAddedMed validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end