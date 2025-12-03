@interface LNDailyRoutineRelevantContext(Deprecated)
- (LNDailyRoutineRelevantCondition)asCondition;
@end

@implementation LNDailyRoutineRelevantContext(Deprecated)

- (LNDailyRoutineRelevantCondition)asCondition
{
  v1 = -[LNDailyRoutineRelevantCondition initWithSituation:]([LNDailyRoutineRelevantCondition alloc], "initWithSituation:", [self situation]);

  return v1;
}

@end