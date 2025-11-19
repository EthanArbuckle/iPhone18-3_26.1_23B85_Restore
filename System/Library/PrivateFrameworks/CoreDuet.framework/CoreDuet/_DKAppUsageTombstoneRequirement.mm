@interface _DKAppUsageTombstoneRequirement
- (id)eventPredicate;
- (id)predicate;
- (void)assignPropertiesToTombstone:(id)a3 extractedFromEvent:(id)a4;
- (void)assignPropertiesToTombstone:(id)a3 extractedFromPartialEvent:(id)a4;
@end

@implementation _DKAppUsageTombstoneRequirement

- (id)predicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSystemEventStreams appUsageStream];
  v4 = [v3 name];
  v5 = [v2 predicateWithFormat:@"streamName == %@", v4];

  return v5;
}

- (id)eventPredicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSystemEventStreams appUsageStream];
  v4 = [v3 name];
  v5 = [v2 predicateWithFormat:@"stream.name == %@", v4];

  return v5;
}

- (void)assignPropertiesToTombstone:(id)a3 extractedFromEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 startDate];
  [v6 setStartDate:v7];

  v8 = [v5 endDate];

  [v6 setEndDate:v8];
}

- (void)assignPropertiesToTombstone:(id)a3 extractedFromPartialEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"startDate"];
  [v6 setStartDate:v7];

  v8 = [v5 objectForKeyedSubscript:@"endDate"];

  [v6 setEndDate:v8];
}

@end