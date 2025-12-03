@interface _BMVisualIntelligenceCameraLibraryNode
+ (id)DetectedLabels;
+ (id)configurationForDetectedLabels;
+ (id)storeConfigurationForDetectedLabels;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMVisualIntelligenceCameraLibraryNode

+ (id)sublibraries
{
  v6[1] = *MEMORY[0x1E69E9840];
  lookup = [self Lookup];
  v6[0] = lookup;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"DetectedLabels"])
  {
    detectedLabels = [self DetectedLabels];
  }

  else
  {
    detectedLabels = 0;
  }

  return detectedLabels;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMVisualIntelligenceCameraDetectedLabels validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForDetectedLabels
{
  storeConfigurationForDetectedLabels = [self storeConfigurationForDetectedLabels];
  syncPolicyForDetectedLabels = [self syncPolicyForDetectedLabels];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4811AC17-1D91-4DC0-B6F6-FAD4CE71084E"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"VisualIntelligenceCamera.DetectedLabels" eventClass:objc_opt_class() storeConfig:storeConfigurationForDetectedLabels syncPolicy:syncPolicyForDetectedLabels legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDetectedLabels
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"VisualIntelligenceCamera.DetectedLabels" domain:1 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)DetectedLabels
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForDetectedLabels = [self configurationForDetectedLabels];
  v3 = +[BMVisualIntelligenceCameraDetectedLabels columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"VisualIntelligenceCamera.DetectedLabels" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"VisualIntelligenceCamera.DetectedLabels" schema:v9 configuration:configurationForDetectedLabels];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end