@interface MTLToolsPerformanceStateAssertion
- (BOOL)wasPerformanceStateAssertionMaintained;
- (int64_t)requestedPerformanceState;
@end

@implementation MTLToolsPerformanceStateAssertion

- (int64_t)requestedPerformanceState
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 requestedPerformanceState];
}

- (BOOL)wasPerformanceStateAssertionMaintained
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 wasPerformanceStateAssertionMaintained];
}

@end