@interface LNDateRelevantContext(Deprecated)
- (LNDateRelevantCondition)asCondition;
@end

@implementation LNDateRelevantContext(Deprecated)

- (LNDateRelevantCondition)asCondition
{
  v2 = [LNDateRelevantCondition alloc];
  startDate = [self startDate];
  endDate = [self endDate];
  v5 = [(LNDateRelevantCondition *)v2 initWithStartDate:startDate endDate:endDate];

  return v5;
}

@end