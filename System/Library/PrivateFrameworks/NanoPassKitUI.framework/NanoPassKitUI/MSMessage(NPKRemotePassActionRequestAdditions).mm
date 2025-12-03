@interface MSMessage(NPKRemotePassActionRequestAdditions)
- (id)request;
@end

@implementation MSMessage(NPKRemotePassActionRequestAdditions)

- (id)request
{
  remotePassAction = [self remotePassAction];
  if ([remotePassAction supportsTopUp])
  {
    v3 = off_27995ABE0;
LABEL_5:
    v4 = [objc_alloc(*v3) initWithUnderlyingMessage:self];
    goto LABEL_7;
  }

  if ([remotePassAction supportsCommutePlanRenewal])
  {
    v3 = off_27995ABF0;
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end