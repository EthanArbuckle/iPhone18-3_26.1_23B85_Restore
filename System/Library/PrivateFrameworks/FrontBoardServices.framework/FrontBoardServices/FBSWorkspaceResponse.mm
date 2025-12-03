@interface FBSWorkspaceResponse
- (FBSWorkspaceResponse)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation FBSWorkspaceResponse

- (FBSWorkspaceResponse)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6.receiver = self;
  v6.super_class = FBSWorkspaceResponse;
  if ([(FBSWorkspaceResponse *)&v6 init])
  {
    BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }
}

@end