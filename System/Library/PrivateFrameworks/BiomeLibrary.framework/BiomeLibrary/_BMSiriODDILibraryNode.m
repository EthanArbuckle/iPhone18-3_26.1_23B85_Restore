@interface _BMSiriODDILibraryNode
+ (id)ScorecardMetrics;
+ (id)SegmentsCohorts;
+ (id)configurationForScorecardMetrics;
+ (id)configurationForSegmentsCohorts;
+ (id)storeConfigurationForScorecardMetrics;
+ (id)storeConfigurationForSegmentsCohorts;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMSiriODDILibraryNode

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ScorecardMetrics"])
  {
    v5 = [a1 ScorecardMetrics];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"SegmentsCohorts"])
  {
    v5 = [a1 SegmentsCohorts];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriScorecardMetrics validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSiriSegmentsCohorts validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForSegmentsCohorts
{
  v3 = [a1 storeConfigurationForSegmentsCohorts];
  v4 = [a1 syncPolicyForSegmentsCohorts];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9EAB138E-5A47-47BF-BF02-8935BD38E4EE"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.ODDI.SegmentsCohorts" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSegmentsCohorts
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.ODDI.SegmentsCohorts" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForScorecardMetrics
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 storeConfigurationForScorecardMetrics];
  v4 = [a1 syncPolicyForScorecardMetrics];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v9 = MEMORY[0x1E698F338];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"64F4EE74-AE3C-4FEC-A346-7D27AD9ED34D"];
  BYTE2(v14) = 1;
  LOWORD(v14) = 1;
  v11 = [v9 _libraryStreamConfigurationWithUUID:v10 streamIdentifier:@"Siri.ODDI.ScorecardMetrics" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v14 enableSubscriptionSubstream:0 enableTombstoneSubstream:v8 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)storeConfigurationForScorecardMetrics
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.ODDI.ScorecardMetrics" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)SegmentsCohorts
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForSegmentsCohorts];
  v3 = +[BMSiriSegmentsCohorts columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.ODDI.SegmentsCohorts" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.ODDI.SegmentsCohorts" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)ScorecardMetrics
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForScorecardMetrics];
  v3 = +[BMSiriScorecardMetrics columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.ODDI.ScorecardMetrics" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.ODDI.ScorecardMetrics" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end