@interface MTAgentDiagnosticListener
- (MTAgentDiagnosticDelegate)delegate;
- (MTAgentDiagnosticListener)initWithDelegate:(id)delegate;
- (void)_addStateHandler;
- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion;
@end

@implementation MTAgentDiagnosticListener

- (MTAgentDiagnosticListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MTAgentDiagnosticListener;
  v5 = [(MTAgentDiagnosticListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(MTAgentDiagnosticListener *)v6 _addStateHandler];
  }

  return v6;
}

- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  delegate = [(MTAgentDiagnosticListener *)self delegate];
  [delegate printDiagnostics];

  v7 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v7 = completionCopy;
  }
}

- (void)_addStateHandler
{
  v2 = dispatch_get_global_queue(0, 0);
  os_state_add_handler();
}

_DWORD *__45__MTAgentDiagnosticListener__addStateHandler__block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) != 3)
  {
    goto LABEL_13;
  }

  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v25 = v4;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing os_state handler", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = [v6 delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*v5 delegate];
    v10 = [v9 gatherDiagnostics];

    v11 = MTLogForCategory(1);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      v13 = MTLogForCategory(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __45__MTAgentDiagnosticListener__addStateHandler__block_invoke_cold_1(v10, v13);
      }
    }

    v23 = 0;
    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:200 options:0 error:&v23];
    v15 = v23;
    v16 = [v14 length];
    if (v15)
    {
      v17 = MTLogForCategory(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __45__MTAgentDiagnosticListener__addStateHandler__block_invoke_cold_2(v5, v15, v17);
      }

      v18 = 0;
    }

    else
    {
      v19 = v16;
      v20 = v16;
      v18 = malloc_type_calloc(1uLL, v16 + 200, 0x1000040BEF03554uLL);
      *v18 = 1;
      v18[1] = v19;
      __strlcpy_chk();
      memcpy(v18 + 50, [v14 bytes], v20);
    }
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (MTAgentDiagnosticDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__MTAgentDiagnosticListener__addStateHandler__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_DEBUG, "State: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __45__MTAgentDiagnosticListener__addStateHandler__block_invoke_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ Error serializing state data: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end