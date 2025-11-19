@interface FBSWorkspaceSceneRequestOptions
- (FBSWorkspaceSceneRequestOptions)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation FBSWorkspaceSceneRequestOptions

- (void)encodeWithBSXPCCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"id"];
  [v7 encodeObject:self->_workspaceIdentifier forKey:@"workspace"];
  [v7 encodeObject:self->_initialClientSettings forKey:@"client"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 encodeObject:v6 forKey:@"spec"];

  [v7 encodeObject:self->_initialSettings forKey:@"settings"];
  [v7 encodeObject:self->_transitionContext forKey:@"transition"];
  [v7 encodeBool:self->_keyboardScene forKey:@"kb"];
  [v7 encodeBool:self->_clientFuture forKey:@"cf"];
}

- (FBSWorkspaceSceneRequestOptions)initWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = FBSWorkspaceSceneRequestOptions;
  v6 = [(FBSWorkspaceSceneRequestOptions *)&v25 init];
  if (v6)
  {
    v7 = [v5 decodeStringForKey:@"spec"];
    v8 = v7;
    if (v7)
    {
      v9 = NSClassFromString(v7);
      if (v9)
      {
        v10 = v9;
        if (([(objc_class *)v9 isSubclassOfClass:objc_opt_class()]& 1) != 0)
        {
LABEL_8:
          v12 = [v5 decodeStringForKey:@"id"];
          identifier = v6->_identifier;
          v6->_identifier = v12;

          v14 = [v5 decodeStringForKey:@"workspace"];
          workspaceIdentifier = v6->_workspaceIdentifier;
          v6->_workspaceIdentifier = v14;

          v16 = objc_alloc_init(v10);
          specification = v6->_specification;
          v6->_specification = v16;

          v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"client"];
          initialClientSettings = v6->_initialClientSettings;
          v6->_initialClientSettings = v18;

          v20 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"settings"];
          initialSettings = v6->_initialSettings;
          v6->_initialSettings = v20;

          v22 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"transition"];
          transitionContext = v6->_transitionContext;
          v6->_transitionContext = v22;

          v6->_keyboardScene = [v5 decodeBoolForKey:@"kb"];
          v6->_clientFuture = [v5 decodeBoolForKey:@"cf"];

          goto LABEL_9;
        }

        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:v6 file:@"FBSWorkspaceSceneRequestOptions.m" lineNumber:65 description:{@"Decoded specification %@ is not a subclass of FBSSceneSpecification", v8}];
      }

      else
      {
        [(FBSWorkspaceSceneRequestOptions *)a2 initWithBSXPCCoder:v6, v8, &v26];
        v11 = v26;
      }
    }

    v10 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

- (uint64_t)initWithBSXPCCoder:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  *a4 = v8;
  return [v8 handleFailureInMethod:a1 object:a2 file:@"FBSWorkspaceSceneRequestOptions.m" lineNumber:62 description:{@"Decoded specification class name %@ but could not resolve it via NSClassFromString()", a3}];
}

@end