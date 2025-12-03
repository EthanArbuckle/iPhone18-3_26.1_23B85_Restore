@interface _BMDictationLibraryNode
+ (id)UserEdit;
+ (id)configurationForUserEdit;
+ (id)storeConfigurationForUserEdit;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMDictationLibraryNode

+ (id)UserEdit
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUserEdit = [self configurationForUserEdit];
  v3 = +[BMDictationUserEdit columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Dictation.UserEdit" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Dictation.UserEdit" schema:v9 configuration:configurationForUserEdit];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForUserEdit
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForUserEdit = [self storeConfigurationForUserEdit];
  syncPolicyForUserEdit = [self syncPolicyForUserEdit];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B3F3F2D7-15D7-4032-A5C4-0C360BAC1288"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Dictation.UserEdit" eventClass:objc_opt_class() storeConfig:storeConfigurationForUserEdit syncPolicy:syncPolicyForUserEdit legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForUserEdit
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Dictation.UserEdit" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"UserEdit"])
  {
    userEdit = [self UserEdit];
  }

  else
  {
    userEdit = 0;
  }

  return userEdit;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDictationUserEdit validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end