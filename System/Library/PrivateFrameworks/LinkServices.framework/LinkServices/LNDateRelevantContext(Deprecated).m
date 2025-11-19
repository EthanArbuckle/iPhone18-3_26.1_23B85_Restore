@interface LNDateRelevantContext(Deprecated)
- (LNDateRelevantCondition)asCondition;
@end

@implementation LNDateRelevantContext(Deprecated)

- (LNDateRelevantCondition)asCondition
{
  v2 = [LNDateRelevantCondition alloc];
  v3 = [a1 startDate];
  v4 = [a1 endDate];
  v5 = [(LNDateRelevantCondition *)v2 initWithStartDate:v3 endDate:v4];

  return v5;
}

@end