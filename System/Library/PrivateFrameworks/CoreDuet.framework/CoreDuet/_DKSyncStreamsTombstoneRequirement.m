@interface _DKSyncStreamsTombstoneRequirement
- (id)eventPredicate;
- (id)predicate;
- (void)assignPropertiesToTombstone:(id)a3 extractedFromEvent:(id)a4;
- (void)assignPropertiesToTombstone:(id)a3 extractedFromPartialEvent:(id)a4;
@end

@implementation _DKSyncStreamsTombstoneRequirement

- (id)predicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSync2Coordinator streamNamesToTombstone];
  v4 = [v2 predicateWithFormat:@"streamName IN %@", v3];

  return v4;
}

- (id)eventPredicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSync2Coordinator streamNamesToTombstone];
  v4 = [v2 predicateWithFormat:@"stream.name IN %@", v3];

  return v4;
}

- (void)assignPropertiesToTombstone:(id)a3 extractedFromEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 metadata];
  v12 = [v7 mutableCopy];

  v8 = [v5 source];

  v9 = [v8 deviceID];
  v10 = +[_DKTombstoneMetadataKey eventSourceDeviceID];
  [v12 setObject:v9 forKeyedSubscript:v10];

  v11 = [v12 copy];
  [v6 setMetadata:v11];
}

- (void)assignPropertiesToTombstone:(id)a3 extractedFromPartialEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 metadata];
  v11 = [v7 mutableCopy];

  v8 = [v5 objectForKeyedSubscript:@"source.deviceID"];

  v9 = +[_DKTombstoneMetadataKey eventSourceDeviceID];
  [v11 setObject:v8 forKeyedSubscript:v9];

  v10 = [v11 copy];
  [v6 setMetadata:v10];
}

@end