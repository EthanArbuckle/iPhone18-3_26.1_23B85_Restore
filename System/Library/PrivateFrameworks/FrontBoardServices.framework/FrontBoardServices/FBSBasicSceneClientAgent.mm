@interface FBSBasicSceneClientAgent
- (void)scene:(id)a3 didInitializeWithEvent:(id)a4 completion:(id)a5;
- (void)scene:(id)a3 handleEvent:(id)a4 withCompletion:(id)a5;
- (void)scene:(id)a3 willInvalidateWithEvent:(id)a4 completion:(id)a5;
@end

@implementation FBSBasicSceneClientAgent

- (void)scene:(id)a3 didInitializeWithEvent:(id)a4 completion:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);

  if (WeakRetained != v12)
  {
    [FBSBasicSceneClientAgent scene:a2 didInitializeWithEvent:? completion:?];
  }

  if (v10)
  {
    v10[2](v10);
  }
}

- (void)scene:(id)a3 willInvalidateWithEvent:(id)a4 completion:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);

  if (WeakRetained != v12)
  {
    [FBSBasicSceneClientAgent scene:a2 willInvalidateWithEvent:? completion:?];
  }

  if (v10)
  {
    v10[2](v10);
  }
}

- (void)scene:(id)a3 handleEvent:(id)a4 withCompletion:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);

  if (WeakRetained != v12)
  {
    [FBSBasicSceneClientAgent scene:a2 handleEvent:? withCompletion:?];
  }

  if (v10)
  {
    v10[2](v10, 0);
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

- (void)scene:(char *)a1 handleEvent:withCompletion:.cold.1(char *a1)
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