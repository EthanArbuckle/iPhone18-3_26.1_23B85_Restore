@interface LNPerformActionConnectionOperation
- (LNPerformActionConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action executor:(id)executor executorActivity:(id)activity queue:(id)queue completionHandler:(id)handler;
- (double)timeout;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNPerformActionConnectionOperation

- (double)timeout
{
  executor = [(LNPerformActionConnectionOperation *)self executor];
  options = [executor options];
  [options connectionOperationTimeout];
  v5 = v4;

  return v5;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNPerformActionConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    result = [(LNPerformActionConnectionOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:result error:errorCopy];

    completionHandler2 = [(LNPerformActionConnectionOperation *)self completionHandler];
    result2 = [(LNPerformActionConnectionOperation *)self result];
    (completionHandler2)[2](completionHandler2, self, result2, v7);

    [(LNPerformActionConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNPerformActionConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v26 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = LNPerformActionConnectionOperation;
  [(LNConnectionOperation *)&v19 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    action = [(LNPerformActionConnectionOperation *)self action];
    identifier = [action identifier];
    identifier2 = [(LNConnectionOperation *)self identifier];
    action2 = [(LNPerformActionConnectionOperation *)self action];
    parameters = [action2 parameters];
    *buf = 138543874;
    v21 = identifier;
    v22 = 2114;
    v23 = identifier2;
    v24 = 2112;
    v25 = parameters;
  }

  action3 = [(LNPerformActionConnectionOperation *)self action];
  fileValueType = [MEMORY[0x1E69AC880] fileValueType];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__LNPerformActionConnectionOperation_start__block_invoke;
  v18[3] = &unk_1E74B1E70;
  v18[4] = self;
  [action3 enumerateParameterValuesOfValueType:fileValueType block:v18];

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  action4 = [(LNPerformActionConnectionOperation *)self action];
  executor = [(LNPerformActionConnectionOperation *)self executor];
  options = [executor options];
  executor2 = [(LNPerformActionConnectionOperation *)self executor];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__LNPerformActionConnectionOperation_start__block_invoke_2;
  v17[3] = &unk_1E74B1E98;
  v17[4] = self;
  [connectionInterface performAction:action4 options:options executor:executor2 completionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __43__LNPerformActionConnectionOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 fileURL];
  v7 = [v6 isFileURL];

  if (v7)
  {
    v8 = [*(a1 + 32) executor];
    v9 = [v8 connection];
    v10 = v9;
    if (v9)
    {
      [v9 auditToken];
    }

    v11 = [v5 fileURL];
    INIssueSandboxExtensionToProcess();
  }
}

void __43__LNPerformActionConnectionOperation_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNPerformActionConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action executor:(id)executor executorActivity:(id)activity queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  obj = action;
  actionCopy = action;
  executorCopy = executor;
  executorCopy2 = executor;
  activityCopy = activity;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (actionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPerformActionConnectionOperation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface", obj, executorCopy}];

    if (actionCopy)
    {
LABEL_3:
      if (executorCopy2)
      {
        goto LABEL_4;
      }

LABEL_15:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNPerformActionConnectionOperation.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"executor"}];

      if (handlerCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNPerformActionConnectionOperation.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"action"}];

  if (!executorCopy2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_16:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNPerformActionConnectionOperation.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  if ([actionCopy openAppWhenRun])
  {
    v21 = 2;
  }

  else
  {
    systemProtocols = [actionCopy systemProtocols];
    pushToTalkTransmissionProtocol = [MEMORY[0x1E69ACA48] pushToTalkTransmissionProtocol];
    v24 = [systemProtocols containsObject:pushToTalkTransmissionProtocol];

    if (v24)
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }
  }

  identifier = [executorCopy2 identifier];
  systemProtocols2 = [actionCopy systemProtocols];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __123__LNPerformActionConnectionOperation_initWithConnectionInterface_action_executor_executorActivity_queue_completionHandler___block_invoke;
  v40[3] = &unk_1E74B1E48;
  v27 = activityCopy;
  v41 = v27;
  v39.receiver = self;
  v39.super_class = LNPerformActionConnectionOperation;
  v28 = [(LNRuntimeAssertionsTakingConnectionOperation *)&v39 initWithIdentifier:identifier connectionInterface:interfaceCopy systemProtocols:systemProtocols2 priority:v21 queue:queueCopy activity:v40];

  if (v28)
  {
    objc_storeStrong(&v28->_action, obj);
    objc_storeStrong(&v28->_executor, executorCopy);
    v29 = [handlerCopy copy];
    completionHandler = v28->_completionHandler;
    v28->_completionHandler = v29;

    v31 = v28;
  }

  return v28;
}

@end