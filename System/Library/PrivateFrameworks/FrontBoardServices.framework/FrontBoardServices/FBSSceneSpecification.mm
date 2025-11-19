@interface FBSSceneSpecification
+ (id)specification;
- (BOOL)_isSignificantTransitionContext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (FBSSceneSpecification)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation FBSSceneSpecification

- (BOOL)isValid
{
  v3 = [(FBSSceneSpecification *)self settingsClass];
  if (v3)
  {
    v3 = [(FBSSceneSpecification *)self clientSettingsClass];
    if (v3)
    {
      LOBYTE(v3) = [(FBSSceneSpecification *)self transitionContextClass]!= 0;
    }
  }

  return v3;
}

+ (id)specification
{
  v2 = objc_alloc_init(a1);

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

- (BOOL)_isSignificantTransitionContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = 1;
    if ([v4 _isEmptyForCoding:1])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v23 = 1;
  }

  else
  {
    v5 = [off_1E76BC9C0 builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(FBSSceneSpecification *)self hostAgentClass];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __33__FBSSceneSpecification_isEqual___block_invoke;
    v38[3] = &unk_1E76BEDF0;
    v7 = v4;
    v39 = v7;
    v8 = [v5 appendClass:v6 counterpart:v38];
    v9 = [(FBSSceneSpecification *)self clientAgentClass];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __33__FBSSceneSpecification_isEqual___block_invoke_2;
    v36[3] = &unk_1E76BEDF0;
    v10 = v7;
    v37 = v10;
    v11 = [v5 appendClass:v9 counterpart:v36];
    v12 = [(FBSSceneSpecification *)self settingsClass];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __33__FBSSceneSpecification_isEqual___block_invoke_3;
    v34[3] = &unk_1E76BEDF0;
    v13 = v10;
    v35 = v13;
    v14 = [v5 appendClass:v12 counterpart:v34];
    v15 = [(FBSSceneSpecification *)self clientSettingsClass];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __33__FBSSceneSpecification_isEqual___block_invoke_4;
    v32[3] = &unk_1E76BEDF0;
    v16 = v13;
    v33 = v16;
    v17 = [v5 appendClass:v15 counterpart:v32];
    v18 = [(FBSSceneSpecification *)self transitionContextClass];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __33__FBSSceneSpecification_isEqual___block_invoke_5;
    v30[3] = &unk_1E76BEDF0;
    v19 = v16;
    v31 = v19;
    v20 = [v5 appendClass:v18 counterpart:v30];
    v21 = [(FBSSceneSpecification *)self defaultExtensions];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __33__FBSSceneSpecification_isEqual___block_invoke_6;
    v28 = &unk_1E76BE088;
    v29 = v19;
    v22 = [v5 appendObject:v21 counterpart:&v25];

    v23 = [v5 isEqual];
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [off_1E76BC9C8 builder];
  v4 = [v3 appendClass:{-[FBSSceneSpecification settingsClass](self, "settingsClass")}];
  v5 = [v3 hash];

  return v5;
}

- (id)succinctDescription
{
  v2 = [(FBSSceneSpecification *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSSceneSpecification *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneSpecification *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__FBSSceneSpecification_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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