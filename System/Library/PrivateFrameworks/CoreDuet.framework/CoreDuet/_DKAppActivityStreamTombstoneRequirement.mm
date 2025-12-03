@interface _DKAppActivityStreamTombstoneRequirement
- (id)eventPredicate;
- (id)predicate;
@end

@implementation _DKAppActivityStreamTombstoneRequirement

- (id)predicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSystemEventStreams appActivityStream];
  name = [v3 name];
  v5 = [v2 predicateWithFormat:@"streamName == %@", name];

  return v5;
}

- (id)eventPredicate
{
  v2 = MEMORY[0x1E696AE18];
  v3 = +[_DKSystemEventStreams appActivityStream];
  name = [v3 name];
  v5 = [v2 predicateWithFormat:@"stream.name == %@", name];

  return v5;
}

@end