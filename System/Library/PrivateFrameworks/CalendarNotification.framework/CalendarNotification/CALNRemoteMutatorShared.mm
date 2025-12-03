@interface CALNRemoteMutatorShared
+ (BOOL)deleteEvent:(id)event inEventStore:(id)store withSpan:(int64_t)span usingRemoteMutator:(id)mutator error:(id *)error;
@end

@implementation CALNRemoteMutatorShared

+ (BOOL)deleteEvent:(id)event inEventStore:(id)store withSpan:(int64_t)span usingRemoteMutator:(id)mutator error:(id *)error
{
  eventCopy = event;
  storeCopy = store;
  if ([mutator deleteEvent:eventCopy withSpan:span])
  {
    v13 = 1;
  }

  else
  {
    v13 = [storeCopy removeEvent:eventCopy span:span error:error];
  }

  return v13;
}

@end