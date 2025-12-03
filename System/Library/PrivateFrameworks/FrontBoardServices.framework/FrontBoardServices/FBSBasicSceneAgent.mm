@interface FBSBasicSceneAgent
- (FBSSceneHandle)scene;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)didReceiveMessage:(id)message fromCounterpartAgent:(id)agent withResponseSender:(id)sender;
- (void)scene:(id)scene reviewEvent:(id)event withCompletion:(id)completion;
@end

@implementation FBSBasicSceneAgent

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  identifier = [WeakRetained identifier];
  v6 = [v3 appendObject:identifier withName:@"sceneID" skipIfNil:1];

  return v3;
}

- (void)didReceiveMessage:(id)message fromCounterpartAgent:(id)agent withResponseSender:(id)sender
{
  if (sender)
  {
    (*(sender + 2))(sender, 0);
  }
}

- (void)scene:(id)scene reviewEvent:(id)event withCompletion:(id)completion
{
  sceneCopy = scene;
  eventCopy = event;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained != sceneCopy)
  {
    [FBSBasicSceneAgent scene:a2 reviewEvent:? withCompletion:?];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSBasicSceneAgent *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSBasicSceneAgent *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  succinctDescriptionBuilder = [(FBSBasicSceneAgent *)self succinctDescriptionBuilder];
  v7 = succinctDescriptionBuilder;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__FBSBasicSceneAgent_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_1E76BCD60;
    v10 = succinctDescriptionBuilder;
    v11 = WeakRetained;
    [v10 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
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