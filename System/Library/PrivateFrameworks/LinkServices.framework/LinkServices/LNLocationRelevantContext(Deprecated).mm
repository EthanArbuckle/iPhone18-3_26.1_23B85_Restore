@interface LNLocationRelevantContext(Deprecated)
- (LNLocationRelevantCondition)asCondition;
@end

@implementation LNLocationRelevantContext(Deprecated)

- (LNLocationRelevantCondition)asCondition
{
  v2 = [LNLocationRelevantCondition alloc];
  region = [self region];
  v4 = [(LNLocationRelevantCondition *)v2 initWithRegion:region];

  return v4;
}

@end