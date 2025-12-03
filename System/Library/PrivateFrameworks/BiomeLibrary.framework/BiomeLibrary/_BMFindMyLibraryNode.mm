@interface _BMFindMyLibraryNode
+ (id)ContactActivity;
+ (id)LocationChange;
+ (id)configurationForContactActivity;
+ (id)configurationForLocationChange;
+ (id)storeConfigurationForContactActivity;
+ (id)storeConfigurationForLocationChange;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMFindMyLibraryNode

+ (id)ContactActivity
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForContactActivity = [self configurationForContactActivity];
  v3 = +[BMFindMyContactActivity columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"FindMy.ContactActivity" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"FindMy.ContactActivity" schema:v9 configuration:configurationForContactActivity];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForContactActivity
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"FindMy.ContactActivity" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForContactActivity
{
  storeConfigurationForContactActivity = [self storeConfigurationForContactActivity];
  syncPolicyForContactActivity = [self syncPolicyForContactActivity];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A5D8AB11-4CD5-4A67-8878-727A278888C6"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"FindMy.ContactActivity" eventClass:objc_opt_class() storeConfig:storeConfigurationForContactActivity syncPolicy:syncPolicyForContactActivity legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.findmy" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)LocationChange
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForLocationChange = [self configurationForLocationChange];
  v3 = +[BMFindMyLocationChange columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"FindMy.LocationChange" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"FindMy.LocationChange" schema:v9 configuration:configurationForLocationChange];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForLocationChange
{
  storeConfigurationForLocationChange = [self storeConfigurationForLocationChange];
  syncPolicyForLocationChange = [self syncPolicyForLocationChange];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E84B3AF5-052E-48DB-BF4C-B7B3FDEBA508"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"FindMy.LocationChange" eventClass:objc_opt_class() storeConfig:storeConfigurationForLocationChange syncPolicy:syncPolicyForLocationChange legacyNames:&unk_1EF3EC6F0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.findmy" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLocationChange
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"FindMy.LocationChange" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"ContactActivity"])
  {
    contactActivity = [self ContactActivity];
LABEL_5:
    v6 = contactActivity;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"LocationChange"])
  {
    contactActivity = [self LocationChange];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMFindMyContactActivity validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMFindMyLocationChange validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end