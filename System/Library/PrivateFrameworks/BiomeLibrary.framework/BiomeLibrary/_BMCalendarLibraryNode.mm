@interface _BMCalendarLibraryNode
+ (id)EventTitle;
+ (id)configurationForEventTitle;
+ (id)storeConfigurationForEventTitle;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMCalendarLibraryNode

+ (id)EventTitle
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEventTitle = [self configurationForEventTitle];
  v3 = +[BMCalendarEventTitle columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Calendar.EventTitle" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Calendar.EventTitle" schema:v9 configuration:configurationForEventTitle];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForEventTitle
{
  storeConfigurationForEventTitle = [self storeConfigurationForEventTitle];
  syncPolicyForEventTitle = [self syncPolicyForEventTitle];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"50A77E35-7841-417C-9401-40D24267D2E3"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Calendar.EventTitle" eventClass:objc_opt_class() storeConfig:storeConfigurationForEventTitle syncPolicy:syncPolicyForEventTitle legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilecal" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEventTitle
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Calendar.EventTitle" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"EventTitle"])
  {
    eventTitle = [self EventTitle];
  }

  else
  {
    eventTitle = 0;
  }

  return eventTitle;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMCalendarEventTitle validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end