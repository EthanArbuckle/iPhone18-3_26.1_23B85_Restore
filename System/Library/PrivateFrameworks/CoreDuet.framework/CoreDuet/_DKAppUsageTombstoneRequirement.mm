@interface _DKAppUsageTombstoneRequirement
- (id)eventPredicate;
- (id)predicate;
- (void)assignPropertiesToTombstone:(id)tombstone extractedFromEvent:(id)event;
- (void)assignPropertiesToTombstone:(id)tombstone extractedFromPartialEvent:(id)event;
@end

@implementation _DKAppUsageTombstoneRequirement

- (id)predicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSystemEventStreams appUsageStream];
  name = [v3 name];
  v5 = [v2 predicateWithFormat:@"streamName == %@", name];

  return v5;
}

- (id)eventPredicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSystemEventStreams appUsageStream];
  name = [v3 name];
  v5 = [v2 predicateWithFormat:@"stream.name == %@", name];

  return v5;
}

- (void)assignPropertiesToTombstone:(id)tombstone extractedFromEvent:(id)event
{
  eventCopy = event;
  tombstoneCopy = tombstone;
  startDate = [eventCopy startDate];
  [tombstoneCopy setStartDate:startDate];

  endDate = [eventCopy endDate];

  [tombstoneCopy setEndDate:endDate];
}

- (void)assignPropertiesToTombstone:(id)tombstone extractedFromPartialEvent:(id)event
{
  eventCopy = event;
  tombstoneCopy = tombstone;
  v7 = [eventCopy objectForKeyedSubscript:@"startDate"];
  [tombstoneCopy setStartDate:v7];

  v8 = [eventCopy objectForKeyedSubscript:@"endDate"];

  [tombstoneCopy setEndDate:v8];
}

@end