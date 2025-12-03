@interface FBSDisplayLayoutTransitionContext
- (FBSDisplayLayoutTransitionContext)initWithXPCDictionary:(id)dictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setTransitionReasons:(id)reasons;
@end

@implementation FBSDisplayLayoutTransitionContext

- (void)setTransitionReasons:(id)reasons
{
  v4 = [reasons copy];
  transitionReasons = self->_transitionReasons;
  self->_transitionReasons = v4;

  MEMORY[0x1EEE66BB8](v4, transitionReasons);
}

- (FBSDisplayLayoutTransitionContext)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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

- (void)encodeWithXPCDictionary:(id)dictionary
{
  transitionReasons = self->_transitionReasons;
  dictionaryCopy = dictionary;
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
  succinctDescriptionBuilder = [(FBSDisplayLayoutTransitionContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSDisplayLayoutTransitionContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(FBSDisplayLayoutTransitionContext *)self succinctDescriptionBuilder];
  array = [(NSOrderedSet *)self->_transitionReasons array];
  v6 = [array componentsJoinedByString:{@", "}];
  v7 = [succinctDescriptionBuilder appendObject:v6 withName:@"reasons" skipIfNil:1];

  return succinctDescriptionBuilder;
}

@end