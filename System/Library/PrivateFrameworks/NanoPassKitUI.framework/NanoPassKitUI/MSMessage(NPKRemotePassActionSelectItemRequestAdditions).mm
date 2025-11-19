@interface MSMessage(NPKRemotePassActionSelectItemRequestAdditions)
- (NPKRemotePassActionSelectItemRequest)selectItemRequest;
@end

@implementation MSMessage(NPKRemotePassActionSelectItemRequestAdditions)

- (NPKRemotePassActionSelectItemRequest)selectItemRequest
{
  v1 = [[NPKRemotePassActionSelectItemRequest alloc] initWithUnderlyingMessage:a1];

  return v1;
}

@end