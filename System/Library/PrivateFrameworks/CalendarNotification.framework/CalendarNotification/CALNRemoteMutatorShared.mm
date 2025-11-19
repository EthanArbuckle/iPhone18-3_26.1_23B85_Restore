@interface CALNRemoteMutatorShared
+ (BOOL)deleteEvent:(id)a3 inEventStore:(id)a4 withSpan:(int64_t)a5 usingRemoteMutator:(id)a6 error:(id *)a7;
@end

@implementation CALNRemoteMutatorShared

+ (BOOL)deleteEvent:(id)a3 inEventStore:(id)a4 withSpan:(int64_t)a5 usingRemoteMutator:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  if ([a6 deleteEvent:v11 withSpan:a5])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v12 removeEvent:v11 span:a5 error:a7];
  }

  return v13;
}

@end