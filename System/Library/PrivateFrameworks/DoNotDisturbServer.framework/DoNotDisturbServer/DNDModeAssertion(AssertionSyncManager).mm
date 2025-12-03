@interface DNDModeAssertion(AssertionSyncManager)
- (BOOL)isClientScheduled;
- (BOOL)isUserInitiated;
- (uint64_t)isInternalScheduled;
@end

@implementation DNDModeAssertion(AssertionSyncManager)

- (uint64_t)isInternalScheduled
{
  source = [self source];
  clientIdentifier = [source clientIdentifier];
  v3 = [clientIdentifier hasSuffix:@".private.schedule"];

  return v3;
}

- (BOOL)isClientScheduled
{
  if ([self isInternalScheduled])
  {
    return 0;
  }

  details = [self details];
  v2 = [details reason] == 2;

  return v2;
}

- (BOOL)isUserInitiated
{
  details = [self details];
  if ([details reason] == 1)
  {
    v3 = 1;
  }

  else
  {
    details2 = [self details];
    v3 = [details2 reason] == 3;
  }

  return v3;
}

@end