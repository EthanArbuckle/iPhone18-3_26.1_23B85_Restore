@interface _DKSyncStreamsTombstoneRequirement
- (id)eventPredicate;
- (id)predicate;
- (void)assignPropertiesToTombstone:(id)tombstone extractedFromEvent:(id)event;
- (void)assignPropertiesToTombstone:(id)tombstone extractedFromPartialEvent:(id)event;
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

- (void)assignPropertiesToTombstone:(id)tombstone extractedFromEvent:(id)event
{
  eventCopy = event;
  tombstoneCopy = tombstone;
  metadata = [tombstoneCopy metadata];
  v12 = [metadata mutableCopy];

  source = [eventCopy source];

  deviceID = [source deviceID];
  v10 = +[_DKTombstoneMetadataKey eventSourceDeviceID];
  [v12 setObject:deviceID forKeyedSubscript:v10];

  v11 = [v12 copy];
  [tombstoneCopy setMetadata:v11];
}

- (void)assignPropertiesToTombstone:(id)tombstone extractedFromPartialEvent:(id)event
{
  eventCopy = event;
  tombstoneCopy = tombstone;
  metadata = [tombstoneCopy metadata];
  v11 = [metadata mutableCopy];

  v8 = [eventCopy objectForKeyedSubscript:@"source.deviceID"];

  v9 = +[_DKTombstoneMetadataKey eventSourceDeviceID];
  [v11 setObject:v8 forKeyedSubscript:v9];

  v10 = [v11 copy];
  [tombstoneCopy setMetadata:v10];
}

@end