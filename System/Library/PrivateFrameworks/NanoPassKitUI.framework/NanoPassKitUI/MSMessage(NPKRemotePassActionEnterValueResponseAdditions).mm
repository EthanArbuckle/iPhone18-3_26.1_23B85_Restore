@interface MSMessage(NPKRemotePassActionEnterValueResponseAdditions)
- (NPKRemotePassActionEnterValueResponse)enterValueResponse;
@end

@implementation MSMessage(NPKRemotePassActionEnterValueResponseAdditions)

- (NPKRemotePassActionEnterValueResponse)enterValueResponse
{
  v1 = [[NPKRemotePassActionEnterValueResponse alloc] initWithUnderlyingMessage:self];

  return v1;
}

@end