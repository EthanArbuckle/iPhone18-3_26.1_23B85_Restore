@interface FBSWorkspaceResponse
- (FBSWorkspaceResponse)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation FBSWorkspaceResponse

- (FBSWorkspaceResponse)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = FBSWorkspaceResponse;
  if ([(FBSWorkspaceResponse *)&v6 init])
  {
    BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  if (a3)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }
}

@end