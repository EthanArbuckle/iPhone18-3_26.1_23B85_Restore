@interface FBSBasicSceneAgent
- (FBSSceneHandle)scene;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)didReceiveMessage:(id)a3 fromCounterpartAgent:(id)a4 withResponseSender:(id)a5;
- (void)scene:(id)a3 reviewEvent:(id)a4 withCompletion:(id)a5;
@end

@implementation FBSBasicSceneAgent

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v5 = [WeakRetained identifier];
  v6 = [v3 appendObject:v5 withName:@"sceneID" skipIfNil:1];

  return v3;
}

- (void)didReceiveMessage:(id)a3 fromCounterpartAgent:(id)a4 withResponseSender:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (void)scene:(id)a3 reviewEvent:(id)a4 withCompletion:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained != v12)
  {
    [FBSBasicSceneAgent scene:a2 reviewEvent:? withCompletion:?];
  }

  if (v10)
  {
    v10[2](v10, 0);
  }
}

- (id)succinctDescription
{
  v2 = [(FBSBasicSceneAgent *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSBasicSceneAgent *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [(FBSBasicSceneAgent *)self succinctDescriptionBuilder];
  v7 = v6;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__FBSBasicSceneAgent_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_1E76BCD60;
    v10 = v6;
    v11 = WeakRetained;
    [v10 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  }

  return v7;
}

void __60__FBSBasicSceneAgent_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) callOutQueue];
  v4 = [v2 appendObject:v3 withName:@"queue"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) parameters];
  v7 = [v5 appendObject:v6 withName:@"paremeters"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) clientProcess];
  v10 = [v8 appendObject:v9 withName:@"clientProcess"];

  v11 = *(a1 + 32);
  v13 = [*(a1 + 40) hostProcess];
  v12 = [v11 appendObject:v13 withName:@"hostProcess"];
}

- (FBSSceneHandle)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)scene:(char *)a1 reviewEvent:withCompletion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_scene == scene", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end