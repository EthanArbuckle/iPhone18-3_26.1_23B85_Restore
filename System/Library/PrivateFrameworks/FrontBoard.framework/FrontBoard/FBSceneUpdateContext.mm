@interface FBSceneUpdateContext
+ (id)contextWithSceneID:(id)d transactionID:(unint64_t)iD settings:(id)settings settingsDiff:(id)diff transitionContext:(id)context;
- (FBSSceneTransitionContext)transitionContext;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBSceneUpdateContext

- (FBSSceneTransitionContext)transitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  return WeakRetained;
}

+ (id)contextWithSceneID:(id)d transactionID:(unint64_t)iD settings:(id)settings settingsDiff:(id)diff transitionContext:(id)context
{
  dCopy = d;
  settingsCopy = settings;
  diffCopy = diff;
  contextCopy = context;
  v16 = objc_alloc_init(self);
  if (v16)
  {
    v17 = [dCopy copy];
    v18 = *(v16 + 2);
    *(v16 + 2) = v17;

    *(v16 + 3) = iD;
    objc_storeStrong(v16 + 4, settings);
    objc_storeStrong(v16 + 5, diff);
    objc_storeWeak(v16 + 6, contextCopy);
    *(v16 + 8) = [contextCopy isRunningBoardAssertionDisabled];
  }

  return v16;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSceneUpdateContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_sceneID withName:@"scene"];
  v5 = [v3 appendUnsignedInteger:self->_transactionID withName:@"tID"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSceneUpdateContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSceneUpdateContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__FBSceneUpdateContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E783B240;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __62__FBSceneUpdateContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E698E680] succinctDescriptionForObject:*(*(a1 + 40) + 32)];
  v4 = [v2 appendObject:v3 withName:@"settings" skipIfNil:1];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E698E680] succinctDescriptionForObject:*(*(a1 + 40) + 40)];
  v7 = [v5 appendObject:v6 withName:@"settingsDiff" skipIfNil:1];

  v8 = MEMORY[0x1E698E680];
  v9 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
  v11 = [v8 succinctDescriptionForObject:WeakRetained];
  v12 = [v9 appendObject:v11 withName:@"transitionContext" skipIfNil:1];

  v13 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"lifecycleExternallyManaged" ifEqualTo:1];
  v14 = *(a1 + 32);
  if (*(*(a1 + 40) + 56))
  {
    v17 = [MEMORY[0x1E698E680] descriptionForObject:?];
    v15 = [v14 appendObject:v17 withName:@"clientContext"];
  }

  else
  {
    v16 = [*(a1 + 32) appendObject:0 withName:@"clientContext"];
  }
}

@end