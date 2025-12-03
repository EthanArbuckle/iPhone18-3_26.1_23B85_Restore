@interface _BMGenerativeExperiencesWritingToolsFeaturesLibraryNode
+ (id)ComposeAndAdjust;
+ (id)configurationForComposeAndAdjust;
+ (id)storeConfigurationForComposeAndAdjust;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMGenerativeExperiencesWritingToolsFeaturesLibraryNode

+ (id)ComposeAndAdjust
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForComposeAndAdjust = [self configurationForComposeAndAdjust];
  v3 = +[BMWritingToolsComposeAndAdjust columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust" schema:v9 configuration:configurationForComposeAndAdjust];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForComposeAndAdjust
{
  storeConfigurationForComposeAndAdjust = [self storeConfigurationForComposeAndAdjust];
  syncPolicyForComposeAndAdjust = [self syncPolicyForComposeAndAdjust];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"47E15AAF-326D-4C80-9F06-1FE851995CAB"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust" eventClass:objc_opt_class() storeConfig:storeConfigurationForComposeAndAdjust syncPolicy:syncPolicyForComposeAndAdjust legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForComposeAndAdjust
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"ComposeAndAdjust"])
  {
    composeAndAdjust = [self ComposeAndAdjust];
  }

  else
  {
    composeAndAdjust = 0;
  }

  return composeAndAdjust;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMWritingToolsComposeAndAdjust validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end