@interface MSMessage(NPKRemotePassActionEnterValueRequestAdditions)
- (NPKRemotePassActionEnterValueRequest)enterValueRequest;
@end

@implementation MSMessage(NPKRemotePassActionEnterValueRequestAdditions)

- (NPKRemotePassActionEnterValueRequest)enterValueRequest
{
  v1 = [[NPKRemotePassActionEnterValueRequest alloc] initWithUnderlyingMessage:a1];

  return v1;
}

@end