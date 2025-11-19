@interface MSMessage(NPKRemotePassActionAdditions)
- (NPKRemotePassAction)remotePassAction;
@end

@implementation MSMessage(NPKRemotePassActionAdditions)

- (NPKRemotePassAction)remotePassAction
{
  v1 = [[NPKRemotePassAction alloc] initWithUnderlyingMessage:a1];

  return v1;
}

@end