@interface _DKEligibleForPredictionTombstoneRequirement
- (id)eligibleForPredictionKey;
- (id)eventPredicate;
- (id)predicate;
- (id)propertiesToFetch;
- (void)assignPropertiesToTombstone:(id)a3 extractedFromEvent:(id)a4;
- (void)assignPropertiesToTombstone:(id)a3 extractedFromPartialEvent:(id)a4;
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
  v5 = [v4 name];
  v6 = [(_DKEligibleForPredictionTombstoneRequirement *)self eligibleForPredictionKey];
  v7 = [v3 predicateWithFormat:@"streamName == %@ && %K == 1", v5, v6];

  return v7;
}

- (id)eventPredicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSystemEventStreams appActivityStream];
  v4 = [v3 name];
  v5 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  v6 = [v2 predicateWithFormat:@"stream.name == %@ && metadata.%K == 1", v4, v5];

  return v6;
}

- (id)propertiesToFetch
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(_DKEligibleForPredictionTombstoneRequirement *)self eligibleForPredictionKey];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)assignPropertiesToTombstone:(id)a3 extractedFromEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 metadata];
  v13 = [v7 mutableCopy];

  v8 = [v5 metadata];

  v9 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  [v13 setObject:v10 forKeyedSubscript:v11];

  v12 = [v13 copy];
  [v6 setMetadata:v12];
}

- (void)assignPropertiesToTombstone:(id)a3 extractedFromPartialEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 metadata];
  v13 = [v8 mutableCopy];

  v9 = [(_DKEligibleForPredictionTombstoneRequirement *)self eligibleForPredictionKey];
  v10 = [v6 objectForKeyedSubscript:v9];

  v11 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
  [v13 setObject:v10 forKeyedSubscript:v11];

  v12 = [v13 copy];
  [v7 setMetadata:v12];
}

@end