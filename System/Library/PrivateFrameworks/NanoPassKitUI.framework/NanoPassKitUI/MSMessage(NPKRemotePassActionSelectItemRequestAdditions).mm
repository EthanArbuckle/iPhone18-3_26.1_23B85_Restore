@interface MSMessage(NPKRemotePassActionSelectItemRequestAdditions)
- (NPKRemotePassActionSelectItemRequest)selectItemRequest;
@end

@implementation MSMessage(NPKRemotePassActionSelectItemRequestAdditions)

- (NPKRemotePassActionSelectItemRequest)selectItemRequest
{
  v1 = [[NPKRemotePassActionSelectItemRequest alloc] initWithUnderlyingMessage:self];

  return v1;
}

@end