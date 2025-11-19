@interface DNDSAppFocusConfigurationTask
- (DNDSAppFocusConfigurationTask)initWithAction:(id)a3 bundleIdentifier:(id)a4;
- (NSUUID)taskIdentifier;
- (id)_executorCreatingIfNeeded;
- (id)_malformedIntentErrorWithMessage:(id)a3;
- (void)execute;
- (void)executor:(id)a3 didCompleteExecutionWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
- (void)prepareWithCompletion:(id)a3;
@end

@implementation DNDSAppFocusConfigurationTask

- (DNDSAppFocusConfigurationTask)initWithAction:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DNDSAppFocusConfigurationTask;
  v9 = [(DNDSAppFocusConfigurationTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, a3);
    objc_storeStrong(&v10->_bundleIdentifier, a4);
  }

  return v10;
}

- (NSUUID)taskIdentifier
{
  v2 = [(DNDSAppFocusConfigurationTask *)self _executorCreatingIfNeeded];
  v3 = [v2 identifier];

  return v3;
}

- (void)prepareWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  completion = self->_completion;
  self->_completion = v4;

  v6 = DNDSLogAppFocusConfiguration;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(DNDSAppFocusConfigurationTask *)self taskIdentifier];
    v9 = [(LNActionExecutor *)self->_executor connection];
    v10 = [v9 bundleIdentifier];
    v11 = [(LNActionExecutor *)self->_executor action];
    v13 = 138543874;
    v14 = v8;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Task id=%{public}@ Preparing action on %{public}@; action=%{public}@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)execute
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogAppFocusConfiguration;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(DNDSAppFocusConfigurationTask *)self taskIdentifier];
    v6 = [(LNActionExecutor *)self->_executor connection];
    v7 = [v6 bundleIdentifier];
    v8 = [(LNActionExecutor *)self->_executor action];
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Task id=%{public}@ Executing prepared action on %{public}@; action=%{public}@", &v11, 0x20u);
  }

  v9 = [(DNDSAppFocusConfigurationTask *)self _executorCreatingIfNeeded];
  [v9 perform];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)executor:(id)a3 didCompleteExecutionWithResult:(id)a4 error:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DNDSLogAppFocusConfiguration;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    v19 = [(DNDSAppFocusConfigurationTask *)self taskIdentifier];
    v12 = [v8 connection];
    v13 = [v12 bundleIdentifier];
    v14 = [v8 action];
    v15 = [v14 identifier];
    v16 = [v10 localizedDescription];
    *buf = 138544386;
    v22 = v19;
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v15;
    v27 = 2114;
    v28 = v9;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&dword_24912E000, log, OS_LOG_TYPE_DEFAULT, "Task id=%{public}@ completed action execution %{public}@:%{public}@; result=%{public}@ error=%{public}@", buf, 0x34u);
  }

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self, v9, v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a4;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppFocusConfigurationTask executor:needsConfirmationWithRequest:];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"Unexpected callback: %@ request=%@", v8, v6];;
  v10 = [(DNDSAppFocusConfigurationTask *)self _malformedIntentErrorWithMessage:v9];
  [v6 respondWithError:v10];
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a4;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppFocusConfigurationTask executor:needsConfirmationWithRequest:];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"Unexpected callback: %@ request=%@", v8, v6];;
  v10 = [(DNDSAppFocusConfigurationTask *)self _malformedIntentErrorWithMessage:v9];
  [v6 respondWithError:v10];
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a4;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppFocusConfigurationTask executor:needsConfirmationWithRequest:];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"Unexpected callback: %@ request=%@", v8, v6];;
  v10 = [(DNDSAppFocusConfigurationTask *)self _malformedIntentErrorWithMessage:v9];
  [v6 respondWithError:v10];
}

- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4
{
  v6 = a4;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppFocusConfigurationTask executor:needsConfirmationWithRequest:];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"Unexpected callback: %@ request=%@", v8, v6];;
  v10 = [(DNDSAppFocusConfigurationTask *)self _malformedIntentErrorWithMessage:v9];
  [v6 respondWithError:v10];
}

- (id)_executorCreatingIfNeeded
{
  v37 = *MEMORY[0x277D85DE8];
  executor = self->_executor;
  if (executor)
  {
    goto LABEL_20;
  }

  v4 = _DNDSContainingBundleIdentifier(self->_bundleIdentifier);
  v5 = objc_alloc_init(MEMORY[0x277D23C30]);
  v6 = [(LNAction *)self->_action identifier];
  v30 = 0;
  v7 = [v5 actionForBundleIdentifier:v4 andActionIdentifier:v6 error:&v30];
  v8 = v30;

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = [MEMORY[0x277D23BB8] policyWithActionMetadata:v7];
    v29 = 0;
    v12 = [v11 connectionWithError:&v29];
    v8 = v29;
    v13 = [(LNAction *)self->_action parameters];
    v14 = [v11 actionWithParameters:v13];

    v15 = [v14 actionWithOpenWhenRun:0];

    if (v8 || !v12)
    {
      v22 = DNDSLogAppFocusConfiguration;
      if (!os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      action = self->_action;
      v16 = v22;
      v28 = [(LNAction *)action identifier];
      bundleIdentifier = self->_bundleIdentifier;
      *buf = 138543874;
      v32 = v28;
      v33 = 2114;
      v34 = bundleIdentifier;
      v35 = 2114;
      v36 = v8;
      _os_log_error_impl(&dword_24912E000, v16, OS_LOG_TYPE_ERROR, "Failed to create connection for task with actionIdentifier:%{public}@ applicationIdentifier:%{public}@ error=%{public}@", buf, 0x20u);
      v18 = v28;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277D23B00]);
      v17 = [v12 executorForAction:v15 options:v16 delegate:self];
      v18 = self->_executor;
      self->_executor = v17;
    }

LABEL_16:
    goto LABEL_17;
  }

  v19 = DNDSLogAppFocusConfiguration;
  if (!os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_18;
  }

  v20 = self->_action;
  v11 = v19;
  v12 = [(LNAction *)v20 identifier];
  v21 = self->_bundleIdentifier;
  *buf = 138543874;
  v32 = v12;
  v33 = 2114;
  v34 = v21;
  v35 = 2114;
  v36 = v8;
  _os_log_error_impl(&dword_24912E000, v11, OS_LOG_TYPE_ERROR, "Failed to get action metadata for task with actionIdentifier:%{public}@ applicationIdentifier:%{public}@ error=%{public}@", buf, 0x20u);
LABEL_17:

LABEL_18:
  if (v10)
  {
    executor = self->_executor;
LABEL_20:
    v23 = executor;
    goto LABEL_21;
  }

  v23 = 0;
LABEL_21:
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_malformedIntentErrorWithMessage:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D05840];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:1009 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)executor:needsConfirmationWithRequest:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_2_2();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_24912E000, v5, v6, "Unexpected callback: %{public}@; request=%{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end