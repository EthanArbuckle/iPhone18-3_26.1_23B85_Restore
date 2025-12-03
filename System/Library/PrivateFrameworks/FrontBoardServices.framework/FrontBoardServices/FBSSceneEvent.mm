@interface FBSSceneEvent
- (FBSSceneEvent)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation FBSSceneEvent

- (FBSSceneEvent)init
{
  v3.receiver = self;
  v3.super_class = FBSSceneEvent;
  return [(FBSSceneMessage *)&v3 init];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneEvent *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneEvent *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSceneEvent *)self succinctDescriptionBuilder];
  v6 = succinctDescriptionBuilder;
  source = self->_source;
  if (source > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E76BED48[source];
  }

  v9 = [succinctDescriptionBuilder appendObject:v8 withName:@"source"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__FBSSceneEvent_descriptionBuilderWithMultilinePrefix___block_invoke;
  v13[3] = &unk_1E76BCD60;
  v10 = v6;
  v14 = v10;
  selfCopy = self;
  [v10 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v13];

  v11 = v10;
  return v10;
}

void __55__FBSSceneEvent_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) settingsDiff];
  v4 = [v2 appendObject:v3 withName:@"settingsDiff" skipIfNil:1];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientSettingsDiff];
  v7 = [v5 appendObject:v6 withName:@"clientSettingsDiff" skipIfNil:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) transitionContext];
  v10 = [v8 appendObject:v9 withName:@"transitionContext" skipIfNil:1];

  v11 = [*(a1 + 40) payload];
  LOBYTE(v9) = [v11 isEmpty];

  if ((v9 & 1) == 0)
  {
    v12 = *(a1 + 32);
    v14 = [*(a1 + 40) payload];
    v13 = [v12 appendObject:v14 withName:@"payload"];
  }
}

@end