@interface MSMessage(NPKRemotePassActionSelectItemResponseAdditions)
- (NPKRemotePassActionSelectItemResponse)selectItemResponse;
@end

@implementation MSMessage(NPKRemotePassActionSelectItemResponseAdditions)

- (NPKRemotePassActionSelectItemResponse)selectItemResponse
{
  v1 = [[NPKRemotePassActionSelectItemResponse alloc] initWithUnderlyingMessage:a1];

  return v1;
}

@end