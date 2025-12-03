@interface FBWorkspaceOutgoingConnection
- (id)initWithWorkspace:(id *)result;
- (uint64_t)queue_isVerified;
- (void)workspaceLock_setEndpoint:(uint64_t)endpoint;
@end

@implementation FBWorkspaceOutgoingConnection

- (void)workspaceLock_setEndpoint:(uint64_t)endpoint
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (endpoint)
  {
    if (!v3)
    {
      [FBWorkspaceOutgoingConnection workspaceLock_setEndpoint:?];
    }

    service = [v3 service];
    identifier = [MEMORY[0x1E699FCF0] identifier];
    v7 = [service isEqualToString:identifier];

    if ((v7 & 1) == 0)
    {
      [(FBWorkspaceOutgoingConnection *)v4 workspaceLock_setEndpoint:?];
    }

    v8 = *(endpoint + 8);
    [(FBWorkspace *)v8 _assertLocked];
    process = [(os_unfair_lock *)v8 process];
    _workspaceLock_connection = [(FBWorkspaceConnection *)endpoint _workspaceLock_connection];

    v11 = FBLogProcessWorkspace();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (_workspaceLock_connection)
    {
      if (v12)
      {
        logProem = [(FBProcess *)process logProem];
        v14 = *(endpoint + 40);
        *buf = 138543874;
        v31 = logProem;
        v32 = 2114;
        v33 = v4;
        v34 = 2114;
        v35 = v14;
        _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring outgoing endpoint due to already established connection : endpoint=%{public}@ existing=%{public}@", buf, 0x20u);
      }

      if (([v4 isEqualToServiceEndpoint:*(endpoint + 40)] & 1) == 0)
      {
        v15 = MEMORY[0x1E696AEC0];
        logProem2 = [(FBProcess *)process logProem];
        v17 = [v15 stringWithFormat:@"%@ already have an outgoing connection but the endpoint doesn't match existing : new=%@ existing=%@", logProem2, v4, *(endpoint + 40)];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBWorkspaceOutgoingConnection workspaceLock_setEndpoint:?];
        }

        [v17 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A8A3ADF8);
      }
    }

    else
    {
      if (v12)
      {
        logProem3 = [(FBProcess *)process logProem];
        *buf = 138543618;
        v31 = logProem3;
        v32 = 2114;
        v33 = v4;
        _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating outgoing connection to %{public}@.", buf, 0x16u);
      }

      v19 = [MEMORY[0x1E698F490] connectionWithEndpoint:v4 clientContextBuilder:&__block_literal_global_25];
      endpointCopy = endpoint;
      invertedInterface = [MEMORY[0x1E699FCF0] invertedInterface];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __59__FBWorkspaceOutgoingConnection_workspaceLock_setEndpoint___block_invoke_2;
      v27[3] = &unk_1E783D640;
      v28 = process;
      v29 = endpointCopy;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __59__FBWorkspaceOutgoingConnection_workspaceLock_setEndpoint___block_invoke_76;
      v24[3] = &unk_1E783D640;
      v25 = v29;
      v26 = v28;
      v22 = v29;
      [(FBWorkspaceConnection *)v22 _workspaceLock_setConnection:v19 withInterface:invertedInterface activationHandler:v27 invalidationHandler:v24];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __59__FBWorkspaceOutgoingConnection_workspaceLock_setEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteToken];
  v5 = [v4 versionedPID];
  if (v5 == -1 || v5 != [*(a1 + 32) versionedPID])
  {
    v6 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__FBWorkspaceOutgoingConnection_workspaceLock_setEndpoint___block_invoke_2_cold_2(a1);
    }

    v7 = [(FBWorkspaceConnection *)*(a1 + 40) _workspace];
    v8 = *(a1 + 40);
    v9 = FBSceneErrorCreate(3uLL, @"FBWorkspaceOutgoingConnection failed process verification.", 0);
    [(FBWorkspace *)v7 _queue_unverifiedOutgoingConnection:v8 didError:v9];
  }

  else
  {
    __59__FBWorkspaceOutgoingConnection_workspaceLock_setEndpoint___block_invoke_2_cold_1(a1, v3);
  }
}

void __59__FBWorkspaceOutgoingConnection_workspaceLock_setEndpoint___block_invoke_76(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 33);
  v3 = FBLogProcessWorkspace();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = [(FBProcess *)*(a1 + 40) logProem];
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1A89DD000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Verified outgoing workspace connection invalidated.", &v11, 0xCu);
    }

    [*(a1 + 40) _notePendingExitForReason:@"verified outgoing workspace client connection invalidated"];
  }

  else
  {
    if (v4)
    {
      v7 = [(FBProcess *)*(a1 + 40) logProem];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1A89DD000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Unverified outgoing workspace connection invalidated.", &v11, 0xCu);
    }

    v8 = [(FBWorkspaceConnection *)*(a1 + 32) _workspace];
    v9 = *(a1 + 32);
    v10 = FBSceneErrorCreate(4uLL, @"FBWorkspaceOutgoingConnection invalidated before process verification.", 0);
    [(FBWorkspace *)v8 _queue_unverifiedOutgoingConnection:v9 didError:v10];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)initWithWorkspace:(id *)result
{
  if (result)
  {
    result = [(FBWorkspaceConnection *)result _initWithWorkspace:a2];
    if (result)
    {
      *(result + 33) = 0;
    }
  }

  return result;
}

- (uint64_t)queue_isVerified
{
  if (self)
  {
    queue = [(FBWorkspaceConnection *)self queue];
    [queue assertBarrierOnQueue];

    v3 = *(self + 33);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)workspaceLock_setEndpoint:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outgoing endpoint is for the wrong service : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)workspaceLock_setEndpoint:(const char *)a1 .cold.2(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)workspaceLock_setEndpoint:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"endpoint", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __59__FBWorkspaceOutgoingConnection_workspaceLock_setEndpoint___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  *(*(a1 + 40) + 33) = 1;
  v2 = *(a1 + 40);
  v3 = [a2 remoteTarget];
  [(FBWorkspaceConnection *)v2 _flushConnectBlocksWithProxy:v3];
}

void __59__FBWorkspaceOutgoingConnection_workspaceLock_setEndpoint___block_invoke_2_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = [(FBProcess *)*(a1 + 32) logProem];
  v9 = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end