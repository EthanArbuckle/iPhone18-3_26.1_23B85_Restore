@interface _BMMediaRemoteLibraryNode
+ (id)GroupSessionRecentParticipant;
+ (id)configurationForGroupSessionRecentParticipant;
+ (id)storeConfigurationForGroupSessionRecentParticipant;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMediaRemoteLibraryNode

+ (id)GroupSessionRecentParticipant
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForGroupSessionRecentParticipant = [self configurationForGroupSessionRecentParticipant];
  v3 = +[BMMediaRemoteGroupSessionRecentParticipant columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MediaRemote.GroupSessionRecentParticipant" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MediaRemote.GroupSessionRecentParticipant" schema:v9 configuration:configurationForGroupSessionRecentParticipant];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForGroupSessionRecentParticipant
{
  storeConfigurationForGroupSessionRecentParticipant = [self storeConfigurationForGroupSessionRecentParticipant];
  syncPolicyForGroupSessionRecentParticipant = [self syncPolicyForGroupSessionRecentParticipant];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3593F239-73EB-49C9-916E-874B19A67E37"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MediaRemote.GroupSessionRecentParticipant" eventClass:objc_opt_class() storeConfig:storeConfigurationForGroupSessionRecentParticipant syncPolicy:syncPolicyForGroupSessionRecentParticipant legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForGroupSessionRecentParticipant
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x4000 maxStreamSize:256 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MediaRemote.GroupSessionRecentParticipant" domain:0 segmentSize:0x4000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"GroupSessionRecentParticipant"])
  {
    groupSessionRecentParticipant = [self GroupSessionRecentParticipant];
  }

  else
  {
    groupSessionRecentParticipant = 0;
  }

  return groupSessionRecentParticipant;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMediaRemoteGroupSessionRecentParticipant validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end