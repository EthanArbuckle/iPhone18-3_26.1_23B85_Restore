@interface FBSSceneSpecification
+ (id)specification;
- (BOOL)_isSignificantTransitionContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (FBSSceneSpecification)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation FBSSceneSpecification

- (BOOL)isValid
{
  settingsClass = [(FBSSceneSpecification *)self settingsClass];
  if (settingsClass)
  {
    settingsClass = [(FBSSceneSpecification *)self clientSettingsClass];
    if (settingsClass)
    {
      LOBYTE(settingsClass) = [(FBSSceneSpecification *)self transitionContextClass]!= 0;
    }
  }

  return settingsClass;
}

+ (id)specification
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (FBSSceneSpecification)init
{
  v6.receiver = self;
  v6.super_class = FBSSceneSpecification;
  v2 = [(FBSSceneSpecification *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = FBSGetDefaultExtensions(v2);
  }

  return v3;
}

- (BOOL)_isSignificantTransitionContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    v6 = 1;
    if ([contextCopy _isEmptyForCoding:1])
    {
      v7 = objc_opt_class();
      v6 = v7 != [(FBSSceneSpecification *)self transitionContextClass];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    v5 = [off_1E76BC9C0 builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    hostAgentClass = [(FBSSceneSpecification *)self hostAgentClass];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __33__FBSSceneSpecification_isEqual___block_invoke;
    v38[3] = &unk_1E76BEDF0;
    v7 = equalCopy;
    v39 = v7;
    v8 = [v5 appendClass:hostAgentClass counterpart:v38];
    clientAgentClass = [(FBSSceneSpecification *)self clientAgentClass];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __33__FBSSceneSpecification_isEqual___block_invoke_2;
    v36[3] = &unk_1E76BEDF0;
    v10 = v7;
    v37 = v10;
    v11 = [v5 appendClass:clientAgentClass counterpart:v36];
    settingsClass = [(FBSSceneSpecification *)self settingsClass];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __33__FBSSceneSpecification_isEqual___block_invoke_3;
    v34[3] = &unk_1E76BEDF0;
    v13 = v10;
    v35 = v13;
    v14 = [v5 appendClass:settingsClass counterpart:v34];
    clientSettingsClass = [(FBSSceneSpecification *)self clientSettingsClass];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __33__FBSSceneSpecification_isEqual___block_invoke_4;
    v32[3] = &unk_1E76BEDF0;
    v16 = v13;
    v33 = v16;
    v17 = [v5 appendClass:clientSettingsClass counterpart:v32];
    transitionContextClass = [(FBSSceneSpecification *)self transitionContextClass];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __33__FBSSceneSpecification_isEqual___block_invoke_5;
    v30[3] = &unk_1E76BEDF0;
    v19 = v16;
    v31 = v19;
    v20 = [v5 appendClass:transitionContextClass counterpart:v30];
    defaultExtensions = [(FBSSceneSpecification *)self defaultExtensions];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __33__FBSSceneSpecification_isEqual___block_invoke_6;
    v28 = &unk_1E76BE088;
    v29 = v19;
    v22 = [v5 appendObject:defaultExtensions counterpart:&v25];

    v23 = [v5 isEqual];
  }

  return v23;
}

- (unint64_t)hash
{
  builder = [off_1E76BC9C8 builder];
  v4 = [builder appendClass:{-[FBSSceneSpecification settingsClass](self, "settingsClass")}];
  v5 = [builder hash];

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneSpecification *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneSpecification *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSceneSpecification *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__FBSSceneSpecification_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __63__FBSSceneSpecification_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendClass:objc_msgSend(*(a1 + 40) withName:{"hostAgentClass"), @"hostAgentClass"}];
  v3 = [*(a1 + 32) appendClass:objc_msgSend(*(a1 + 40) withName:{"clientAgentClass"), @"clientAgentClass"}];
  v4 = [*(a1 + 32) appendClass:objc_msgSend(*(a1 + 40) withName:{"settingsClass"), @"settingsClass"}];
  v5 = [*(a1 + 32) appendClass:objc_msgSend(*(a1 + 40) withName:{"clientSettingsClass"), @"clientSettingsClass"}];
  v6 = [*(a1 + 32) appendClass:objc_msgSend(*(a1 + 40) withName:{"transitionContextClass"), @"transitionContextClass"}];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) defaultExtensions];
  [v7 appendArraySection:v8 withName:@"defaultExtensions" skipIfEmpty:1];
}

@end