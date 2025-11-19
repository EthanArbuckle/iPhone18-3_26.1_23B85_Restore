@interface LNLocationRelevantContext(Deprecated)
- (LNLocationRelevantCondition)asCondition;
@end

@implementation LNLocationRelevantContext(Deprecated)

- (LNLocationRelevantCondition)asCondition
{
  v2 = [LNLocationRelevantCondition alloc];
  v3 = [a1 region];
  v4 = [(LNLocationRelevantCondition *)v2 initWithRegion:v3];

  return v4;
}

@end