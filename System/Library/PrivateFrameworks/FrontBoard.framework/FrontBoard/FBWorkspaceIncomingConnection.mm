@interface FBWorkspaceIncomingConnection
- (id)initWithWorkspace:(id *)a1;
- (void)workspaceLock_setConnection:(uint64_t)a1;
@end

@implementation FBWorkspaceIncomingConnection

- (void)workspaceLock_setConnection:(uint64_t)a1
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [FBWorkspaceIncomingConnection workspaceLock_setConnection:?];
    }

    v5 = *(a1 + 8);
    [(FBWorkspace *)v5 _assertLocked];
    v6 = [(os_unfair_lock *)v5 process];
    v7 = [(FBWorkspaceConnection *)a1 _workspaceLock_connection];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 isValid];
      v10 = FBLogProcessWorkspace();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v11)
        {
          [FBWorkspaceIncomingConnection workspaceLock_setConnection:v6];
        }

        [v4 invalidate];
        goto LABEL_8;
      }

      if (v11)
      {
        [FBWorkspaceIncomingConnection workspaceLock_setConnection:v6];
      }

      v24 = [(FBWorkspaceConnection *)a1 queue];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __61__FBWorkspaceIncomingConnection_workspaceLock_setConnection___block_invoke;
      v29[3] = &unk_1E783B580;
      v30 = v4;
      [v24 performAfter:v29 withBlock:0.1];

      v23 = v30;
    }

    else
    {
      v13 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(FBProcess *)v6 logProem];
        *buf = 138543362;
        v32 = v14;
        _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection established.", buf, 0xCu);
      }

      v15 = [MEMORY[0x1E699FCF0] interface];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __61__FBWorkspaceIncomingConnection_workspaceLock_setConnection___block_invoke_52;
      v27[3] = &unk_1E783BBE0;
      v16 = v6;
      v28 = v16;
      [(FBWorkspaceConnection *)a1 _workspaceLock_setConnection:v4 withInterface:v15 activationHandler:0 invalidationHandler:v27];

      v17 = [(FBWorkspaceConnection *)a1 _workspaceLock_connection];
      v18 = [v17 remoteTarget];

      v19 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(FBProcess *)v16 logProem];
        *buf = 138543618;
        v32 = v20;
        v33 = 2114;
        v34 = v18;
        _os_log_impl(&dword_1A89DD000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ created proxy of %{public}@", buf, 0x16u);
      }

      v21 = [(FBWorkspaceConnection *)a1 queue];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __61__FBWorkspaceIncomingConnection_workspaceLock_setConnection___block_invoke_57;
      v25[3] = &unk_1E783B240;
      v25[4] = a1;
      v26 = v18;
      v22 = v18;
      [v21 performAsync:v25];

      v23 = v28;
    }

LABEL_8:
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __61__FBWorkspaceIncomingConnection_workspaceLock_setConnection___block_invoke_52(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FBLogProcessWorkspace();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(FBProcess *)*(a1 + 32) logProem];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Workspace connection invalidated.", &v6, 0xCu);
  }

  result = [*(a1 + 32) _notePendingExitForReason:@"workspace client connection invalidated"];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)initWithWorkspace:(id *)a1
{
  if (a1)
  {
    return [(FBWorkspaceConnection *)a1 _initWithWorkspace:a2];
  }

  return a1;
}

- (void)workspaceLock_setConnection:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)workspaceLock_setConnection:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)workspaceLock_setConnection:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"incomingConnection", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end