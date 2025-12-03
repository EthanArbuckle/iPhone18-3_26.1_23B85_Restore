@interface FBSWorkspaceSceneRequestOptions
- (FBSWorkspaceSceneRequestOptions)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation FBSWorkspaceSceneRequestOptions

- (void)encodeWithBSXPCCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"id"];
  [coderCopy encodeObject:self->_workspaceIdentifier forKey:@"workspace"];
  [coderCopy encodeObject:self->_initialClientSettings forKey:@"client"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [coderCopy encodeObject:v6 forKey:@"spec"];

  [coderCopy encodeObject:self->_initialSettings forKey:@"settings"];
  [coderCopy encodeObject:self->_transitionContext forKey:@"transition"];
  [coderCopy encodeBool:self->_keyboardScene forKey:@"kb"];
  [coderCopy encodeBool:self->_clientFuture forKey:@"cf"];
}

- (FBSWorkspaceSceneRequestOptions)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = FBSWorkspaceSceneRequestOptions;
  v6 = [(FBSWorkspaceSceneRequestOptions *)&v25 init];
  if (v6)
  {
    v7 = [coderCopy decodeStringForKey:@"spec"];
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
          v12 = [coderCopy decodeStringForKey:@"id"];
          identifier = v6->_identifier;
          v6->_identifier = v12;

          v14 = [coderCopy decodeStringForKey:@"workspace"];
          workspaceIdentifier = v6->_workspaceIdentifier;
          v6->_workspaceIdentifier = v14;

          v16 = objc_alloc_init(v10);
          specification = v6->_specification;
          v6->_specification = v16;

          v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"client"];
          initialClientSettings = v6->_initialClientSettings;
          v6->_initialClientSettings = v18;

          v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settings"];
          initialSettings = v6->_initialSettings;
          v6->_initialSettings = v20;

          v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transition"];
          transitionContext = v6->_transitionContext;
          v6->_transitionContext = v22;

          v6->_keyboardScene = [coderCopy decodeBoolForKey:@"kb"];
          v6->_clientFuture = [coderCopy decodeBoolForKey:@"cf"];

          goto LABEL_9;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v6 file:@"FBSWorkspaceSceneRequestOptions.m" lineNumber:65 description:{@"Decoded specification %@ is not a subclass of FBSSceneSpecification", v8}];
      }

      else
      {
        [(FBSWorkspaceSceneRequestOptions *)a2 initWithBSXPCCoder:v6, v8, &v26];
        currentHandler = v26;
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