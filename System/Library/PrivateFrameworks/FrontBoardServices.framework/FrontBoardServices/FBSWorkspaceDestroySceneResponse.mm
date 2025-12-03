@interface FBSWorkspaceDestroySceneResponse
- (FBSWorkspaceDestroySceneResponse)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation FBSWorkspaceDestroySceneResponse

- (FBSWorkspaceDestroySceneResponse)initWithXPCDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = FBSWorkspaceDestroySceneResponse;
  return [(FBSWorkspaceResponse *)&v4 initWithXPCDictionary:dictionary];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v3.receiver = self;
  v3.super_class = FBSWorkspaceDestroySceneResponse;
  [(FBSWorkspaceResponse *)&v3 encodeWithXPCDictionary:dictionary];
}

@end