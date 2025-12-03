@interface MSMessage(NPKRemotePassActionResponseAdditions)
- (id)response;
@end

@implementation MSMessage(NPKRemotePassActionResponseAdditions)

- (id)response
{
  remotePassAction = [self remotePassAction];
  if ([remotePassAction supportsTopUp])
  {
    v3 = off_27995ABE8;
LABEL_5:
    v4 = [objc_alloc(*v3) initWithUnderlyingMessage:self];
    goto LABEL_7;
  }

  if ([remotePassAction supportsCommutePlanRenewal])
  {
    v3 = &off_27995ABF8;
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end