@interface MTLToolsPerformanceStateAssertion
- (BOOL)wasPerformanceStateAssertionMaintained;
- (int64_t)requestedPerformanceState;
@end

@implementation MTLToolsPerformanceStateAssertion

- (int64_t)requestedPerformanceState
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject requestedPerformanceState];
}

- (BOOL)wasPerformanceStateAssertionMaintained
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject wasPerformanceStateAssertionMaintained];
}

@end