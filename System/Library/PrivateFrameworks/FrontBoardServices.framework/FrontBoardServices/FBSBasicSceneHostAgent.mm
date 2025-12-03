@interface FBSBasicSceneHostAgent
- (void)scene:(id)scene didInitializeWithEvent:(id)event completion:(id)completion;
- (void)scene:(id)scene willInvalidateWithEvent:(id)event completion:(id)completion;
@end

@implementation FBSBasicSceneHostAgent

- (void)scene:(id)scene didInitializeWithEvent:(id)event completion:(id)completion
{
  sceneCopy = scene;
  eventCopy = event;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);

  if (WeakRetained != sceneCopy)
  {
    [FBSBasicSceneHostAgent scene:a2 didInitializeWithEvent:? completion:?];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)scene:(id)scene willInvalidateWithEvent:(id)event completion:(id)completion
{
  sceneCopy = scene;
  eventCopy = event;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);

  if (WeakRetained != sceneCopy)
  {
    [FBSBasicSceneHostAgent scene:a2 willInvalidateWithEvent:? completion:?];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)scene:(char *)a1 didInitializeWithEvent:completion:.cold.1(char *a1)
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

- (void)scene:(char *)a1 willInvalidateWithEvent:completion:.cold.1(char *a1)
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