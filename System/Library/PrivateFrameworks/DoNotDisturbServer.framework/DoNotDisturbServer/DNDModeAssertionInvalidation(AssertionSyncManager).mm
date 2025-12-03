@interface DNDModeAssertionInvalidation(AssertionSyncManager)
- (BOOL)isUserInvalidated;
- (uint64_t)isInternalScheduled;
@end

@implementation DNDModeAssertionInvalidation(AssertionSyncManager)

- (uint64_t)isInternalScheduled
{
  source = [self source];
  clientIdentifier = [source clientIdentifier];
  v3 = [clientIdentifier hasSuffix:@".private.schedule"];

  return v3;
}

- (BOOL)isUserInvalidated
{
  [self reason];
  [self reasonOverride];
  return DNDResolvedModeAssertionInvalidationReason() == 2;
}

@end