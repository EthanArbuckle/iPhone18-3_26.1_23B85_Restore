@interface DNDModeAssertionInvalidation(AssertionSyncManager)
- (BOOL)isUserInvalidated;
- (uint64_t)isInternalScheduled;
@end

@implementation DNDModeAssertionInvalidation(AssertionSyncManager)

- (uint64_t)isInternalScheduled
{
  v1 = [a1 source];
  v2 = [v1 clientIdentifier];
  v3 = [v2 hasSuffix:@".private.schedule"];

  return v3;
}

- (BOOL)isUserInvalidated
{
  [a1 reason];
  [a1 reasonOverride];
  return DNDResolvedModeAssertionInvalidationReason() == 2;
}

@end