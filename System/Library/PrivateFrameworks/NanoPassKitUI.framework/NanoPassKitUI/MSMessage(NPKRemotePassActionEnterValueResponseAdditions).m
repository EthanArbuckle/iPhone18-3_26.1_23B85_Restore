@interface MSMessage(NPKRemotePassActionEnterValueResponseAdditions)
- (NPKRemotePassActionEnterValueResponse)enterValueResponse;
@end

@implementation MSMessage(NPKRemotePassActionEnterValueResponseAdditions)

- (NPKRemotePassActionEnterValueResponse)enterValueResponse
{
  v1 = [[NPKRemotePassActionEnterValueResponse alloc] initWithUnderlyingMessage:a1];

  return v1;
}

@end