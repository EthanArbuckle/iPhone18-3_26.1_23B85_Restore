@interface _DKEligibleForPredictionTombstoneRequirement
- (id)eligibleForPredictionKey;
- (id)eventPredicate;
- (id)predicate;
- (id)propertiesToFetch;
- (void)assignPropertiesToTombstone:(id)tombstone extractedFromEvent:(id)event;
- (void)assignPropertiesToTombstone:(id)tombstone extractedFromPartialEvent:(id)event;
@end

@implementation _DKEligibleForPredictionTombstoneRequirement

- (id)eligibleForPredictionKey
{
  v2 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
  v3 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"structuredMetadata.%@", v4];

  return v5;
}

- (id)predicate
{
  v3 = MEMORY[0x1E696AE18];
  v4 = +[_DKSystemEventStreams appActivityStream];
  name = [v4 name];
  eligibleForPredictionKey = [(_DKEligibleForPredictionTombstoneRequirement *)self eligibleForPredictionKey];
  v7 = [v3 predicateWithFormat:@"streamName == %@ && %K == 1", name, eligibleForPredictionKey];

  return v7;
}

- (id)eventPredicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSystemEventStreams appActivityStream];
  name = [v3 name];
  v5 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  v6 = [v2 predicateWithFormat:@"stream.name == %@ && metadata.%K == 1", name, v5];

  return v6;
}

- (id)propertiesToFetch
{
  v6[1] = *MEMORY[0x1E69E9840];
  eligibleForPredictionKey = [(_DKEligibleForPredictionTombstoneRequirement *)self eligibleForPredictionKey];
  v6[0] = eligibleForPredictionKey;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)assignPropertiesToTombstone:(id)tombstone extractedFromEvent:(id)event
{
  eventCopy = event;
  tombstoneCopy = tombstone;
  metadata = [tombstoneCopy metadata];
  v13 = [metadata mutableCopy];

  metadata2 = [eventCopy metadata];

  v9 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  v10 = [metadata2 objectForKeyedSubscript:v9];
  v11 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  [v13 setObject:v10 forKeyedSubscript:v11];

  v12 = [v13 copy];
  [tombstoneCopy setMetadata:v12];
}

- (void)assignPropertiesToTombstone:(id)tombstone extractedFromPartialEvent:(id)event
{
  eventCopy = event;
  tombstoneCopy = tombstone;
  metadata = [tombstoneCopy metadata];
  v13 = [metadata mutableCopy];

  eligibleForPredictionKey = [(_DKEligibleForPredictionTombstoneRequirement *)self eligibleForPredictionKey];
  v10 = [eventCopy objectForKeyedSubscript:eligibleForPredictionKey];

  v11 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  [v13 setObject:v10 forKeyedSubscript:v11];

  v12 = [v13 copy];
  [tombstoneCopy setMetadata:v12];
}

@end