@interface FBSSceneDefinition
+ (id)definition;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation FBSSceneDefinition

- (BOOL)isValid
{
  if (![(FBSSceneIdentity *)self->_identity isValid]|| ![(FBSSceneClientIdentity *)self->_clientIdentity isValid])
  {
    return 0;
  }

  specification = self->_specification;

  return [(FBSSceneSpecification *)specification isValid];
}

+ (id)definition
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[FBSMutableSceneDefinition allocWithZone:?]];
  [(FBSSceneDefinition *)v4 setIdentity:self->_identity];
  [(FBSSceneDefinition *)v4 setClientIdentity:self->_clientIdentity];
  [(FBSSceneDefinition *)v4 setSpecification:self->_specification];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v5 = [off_1E76BC9C0 builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    identity = [(FBSSceneDefinition *)self identity];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __30__FBSSceneDefinition_isEqual___block_invoke;
    v20[3] = &unk_1E76BDA18;
    v7 = equalCopy;
    v21 = v7;
    v8 = [v5 appendObject:identity counterpart:v20];

    clientIdentity = [(FBSSceneDefinition *)self clientIdentity];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __30__FBSSceneDefinition_isEqual___block_invoke_2;
    v18[3] = &unk_1E76BDA18;
    v10 = v7;
    v19 = v10;
    v11 = [v5 appendObject:clientIdentity counterpart:v18];

    specification = [(FBSSceneDefinition *)self specification];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __30__FBSSceneDefinition_isEqual___block_invoke_3;
    v16[3] = &unk_1E76BDA18;
    v17 = v10;
    v13 = [v5 appendObject:specification counterpart:v16];

    v14 = [v5 isEqual];
  }

  return v14;
}

- (unint64_t)hash
{
  builder = [off_1E76BC9C8 builder];
  identity = [(FBSSceneDefinition *)self identity];
  v5 = [builder appendObject:identity];

  v6 = [builder hash];
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneDefinition *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  identifier = [(FBSSceneIdentity *)self->_identity identifier];
  v5 = [v3 appendObject:identifier withName:@"identifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneDefinition *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSceneDefinition *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FBSSceneDefinition_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __60__FBSSceneDefinition_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identity];
  v4 = [v2 appendObject:v3 withName:@"identity"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientIdentity];
  v7 = [v5 appendObject:v6 withName:@"clientIdentity"];

  v8 = *(a1 + 32);
  v10 = [*(a1 + 40) specification];
  v9 = [v8 appendObject:v10 withName:@"specification"];
}

@end