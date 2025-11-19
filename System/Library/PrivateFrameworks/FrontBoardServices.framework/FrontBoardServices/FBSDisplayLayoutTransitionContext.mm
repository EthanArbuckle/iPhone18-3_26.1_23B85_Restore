@interface FBSDisplayLayoutTransitionContext
- (FBSDisplayLayoutTransitionContext)initWithXPCDictionary:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setTransitionReasons:(id)a3;
@end

@implementation FBSDisplayLayoutTransitionContext

- (void)setTransitionReasons:(id)a3
{
  v4 = [a3 copy];
  transitionReasons = self->_transitionReasons;
  self->_transitionReasons = v4;

  MEMORY[0x1EEE66BB8](v4, transitionReasons);
}

- (FBSDisplayLayoutTransitionContext)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = FBSDisplayLayoutTransitionContext;
  if ([(FBSDisplayLayoutTransitionContext *)&v6 init])
  {
    BSCreateDeserializedArrayFromXPCDictionaryWithKey();
  }

  return 0;
}

id __59__FBSDisplayLayoutTransitionContext_initWithXPCDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && object_getClass(v2) == MEMORY[0x1E69E9F10])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v3)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  transitionReasons = self->_transitionReasons;
  v4 = a3;
  [(NSOrderedSet *)transitionReasons array];
  objc_claimAutoreleasedReturnValue();
  BSSerializeArrayToXPCDictionaryWithKey();
}

id __61__FBSDisplayLayoutTransitionContext_encodeWithXPCDictionary___block_invoke(int a1, id a2)
{
  v2 = xpc_string_create([a2 UTF8String]);

  return v2;
}

- (id)succinctDescription
{
  v2 = [(FBSDisplayLayoutTransitionContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSDisplayLayoutTransitionContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(FBSDisplayLayoutTransitionContext *)self succinctDescriptionBuilder];
  v5 = [(NSOrderedSet *)self->_transitionReasons array];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v4 appendObject:v6 withName:@"reasons" skipIfNil:1];

  return v4;
}

@end