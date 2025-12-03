@interface _BMAppClipLibraryNode
+ (id)InFocus;
+ (id)configurationForInFocus;
+ (id)storeConfigurationForInFocus;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAppClipLibraryNode

+ (id)InFocus
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForInFocus = [self configurationForInFocus];
  v3 = +[BMAppClipInFocus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.Clip.InFocus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.Clip.InFocus" schema:v9 configuration:configurationForInFocus];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForInFocus
{
  storeConfigurationForInFocus = [self storeConfigurationForInFocus];
  syncPolicyForInFocus = [self syncPolicyForInFocus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3021A977-358E-4B37-96AA-CD1DFC29E1A1"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.Clip.InFocus" eventClass:objc_opt_class() storeConfig:storeConfigurationForInFocus syncPolicy:syncPolicyForInFocus legacyNames:&unk_1EF3EAB60 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForInFocus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.Clip.InFocus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"InFocus"])
  {
    inFocus = [self InFocus];
  }

  else
  {
    inFocus = 0;
  }

  return inFocus;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAppClipInFocus validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end