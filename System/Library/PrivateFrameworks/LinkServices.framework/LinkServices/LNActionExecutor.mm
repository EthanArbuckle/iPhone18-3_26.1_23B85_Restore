@interface LNActionExecutor
- (BOOL)shouldDismissSiriWithDefault:(BOOL)default;
- (BOOL)validateEntitlementsForConnection:(id)connection;
- (BOOL)validateURLSchemeBeforeLaunching;
- (LNActionExecutor)initWithAction:(id)action connection:(id)connection options:(id)options;
- (LNActionExecutorDelegate)delegate;
- (NSDate)lastCheckIn;
- (NSString)appBundleIdentifier;
- (void)_logTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (void)dealloc;
- (void)didInvalidateLiveActivityBackgroundAssertion:(id)assertion error:(id)error;
- (void)donateActionIfNecessary:(id)necessary result:(id)result completionHandler:(id)handler;
- (void)getConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler;
- (void)getPrimaryConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler;
- (void)getXPCListenerConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler;
- (void)linkUndoManagerToMainAppIfNecessary:(id)necessary completionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openActionURL:(id)l completionHandler:(id)handler;
- (void)perform;
- (void)performOneShotWithConnectionOptions:(id)options;
- (void)performWithoutValidation;
- (void)requestActionConfirmation:(id)confirmation completionHandler:(id)handler;
- (void)requestAppProtectionUnlockWithCompletionHandler:(id)handler;
- (void)requestCancelTimeout;
- (void)requestChoice:(id)choice completionHandler:(id)handler;
- (void)requestContinueInApp:(id)app completionHandler:(id)handler;
- (void)requestExtendTimeout;
- (void)requestOpenURL:(id)l completionHandler:(id)handler;
- (void)requestParameterConfirmation:(id)confirmation completionHandler:(id)handler;
- (void)requestParameterDisambiguation:(id)disambiguation completionHandler:(id)handler;
- (void)requestParameterNeedsValue:(id)value completionHandler:(id)handler;
- (void)requestViewSnippetEnvironmentWithCompletion:(id)completion;
- (void)requestViewSnippetSizeWithCompletion:(id)completion;
- (void)runShowOutputActionIfNecessary:(id)necessary completionHandler:(id)handler;
- (void)setCompletedWithError:(id)error;
- (void)setLastCheckIn:(id)in;
- (void)setState:(int64_t)state;
- (void)unsubscribeProgressObservation;
@end

@implementation LNActionExecutor

- (void)performOneShotWithConnectionOptions:(id)options
{
  optionsCopy = options;
  v5 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "Requested to perform action in a single shot", buf, 2u);
  }

  action = [(LNActionExecutor *)self action];
  v7 = optionsCopy;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setOneShotActionForSpringBoardOnly:action];
  options = [(LNActionExecutor *)self options];
  v11 = v7;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [v13 setOneShotActionExecutorOptionsForSpringBoardOnly:options];
  connection = [(LNActionExecutor *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__LNActionExecutor_OneShot__performOneShotWithConnectionOptions___block_invoke;
  v15[3] = &unk_1E74B0BC0;
  v15[4] = self;
  [connection getConnectionInterfaceWithOptions:v11 completionHandler:v15];
}

void __65__LNActionExecutor_OneShot__performOneShotWithConnectionOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &state);

  if (v5)
  {
    v8 = [LNActionOutput alloc];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    LOBYTE(v24) = 0;
    LOBYTE(v23) = 0;
    v10 = [(LNActionOutput *)v8 initWithIdentifier:v9 dialog:0 viewSnippet:0 snippetAction:0 attribution:0 value:0 showOutputAction:0 showOutputActionHint:0 showOutputActionOptions:0 deferred:v23 nextAction:0 suggestedFollowUpActions:0 activityIdentifier:0 confirmationActionName:0 showPrompt:v24 confirmationConditions:0 undoContext:0];

    v11 = [LNSuccessResult alloc];
    v12 = [*(a1 + 32) action];
    v13 = [(LNSuccessResult *)v11 initWithAction:v12 output:v10 actionAppContext:0 predictions:MEMORY[0x1E695E0F0]];

    v14 = [*(a1 + 32) delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [*(a1 + 32) delegate];
      [v16 executor:*(a1 + 32) didPerformActionWithResult:v13 error:v6];
    }

    v17 = [*(a1 + 32) delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [*(a1 + 32) delegate];
      [v19 executor:*(a1 + 32) didFinishWithResult:v13 error:v6];
    }

    v20 = [*(a1 + 32) delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [*(a1 + 32) delegate];
      [v22 executor:*(a1 + 32) didCompleteExecutionWithResult:v13 error:v6];
    }

    [*(a1 + 32) setState:100];
  }

  else
  {
    [*(a1 + 32) setCompletedWithError:v6];
  }

  os_activity_scope_leave(&state);
}

- (LNActionExecutorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)validateEntitlementsForConnection:(id)connection
{
  v41 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v6 = processInfo;
  if (processInfo)
  {
    [processInfo if_auditToken];
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v7 = [LNEntitlementsValidator valueForEntitlement:@"com.apple.private.appintents.exception.restricted-allowed" auditToken:&v38];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v32 = v8;

  xpcConnection = [connectionCopy xpcConnection];
  v10 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v11 = [LNEntitlementsValidator valueForEntitlement:@"com.apple.private.appintents.restricted" auditToken:&v38];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [v13 allKeys];
  v14 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v31 = connectionCopy;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v22 = [v21 objectForKeyedSubscript:@"appintents"];
        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        action = [(LNActionExecutor *)self action];
        identifier = [action identifier];
        if ([v24 containsObject:identifier])
        {
          v27 = [v32 containsObject:v18];

          if ((v27 & 1) == 0)
          {

            v28 = 0;
            goto LABEL_39;
          }
        }

        else
        {
        }
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v15);
    v28 = 1;
LABEL_39:
    connectionCopy = v31;
  }

  else
  {
    v28 = 1;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)didInvalidateLiveActivityBackgroundAssertion:(id)assertion error:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  invalidationReason = [assertion invalidationReason];
  v7 = getLNLogCategoryExecution();
  v8 = v7;
  if (invalidationReason == 3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = @"Live Activity assertion invalidated";
      v9 = "%{public}@";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_19763D000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = 138543618;
    v15 = @"Live Activity assertion invalidated";
    v16 = 2114;
    v17 = errorCopy;
    v9 = "%{public}@ with error: %{public}@.";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setLastCheckIn:(id)in
{
  inCopy = in;
  os_unfair_lock_lock(&self->_lastCheckInLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__LNActionExecutor_setLastCheckIn___block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  lastCheckIn = self->_lastCheckIn;
  self->_lastCheckIn = inCopy;
  v7 = inCopy;

  v5[2](v5);
}

- (NSDate)lastCheckIn
{
  os_unfair_lock_lock(&self->_lastCheckInLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__LNActionExecutor_lastCheckIn__block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = self->_lastCheckIn;
  v3[2](v3);

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v11 = objectCopy;
  if (LNActionExecutorRemoteProgressCompletedContext == context)
  {
    [objectCopy fractionCompleted];
    v13 = (v12 * 100000.0);
    progress = [(LNActionExecutor *)self progress];
    [progress setCompletedUnitCount:v13];

    date = [MEMORY[0x1E695DF00] date];
    [(LNActionExecutor *)self setLastCheckIn:date];

    if ([(LNActionExecutor *)self extendsTimeoutOnProgressUpdates])
    {
      [(LNActionExecutor *)self requestExtendTimeout];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = LNActionExecutor;
    [(LNActionExecutor *)&v16 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

- (void)unsubscribeProgressObservation
{
  os_unfair_lock_lock(&self->_progressSubscriptionLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__LNActionExecutor_unsubscribeProgressObservation__block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  executionProgress = [(LNActionExecutor *)self executionProgress];

  if (executionProgress)
  {
    executionProgress2 = [(LNActionExecutor *)self executionProgress];
    [executionProgress2 removeObserver:self forKeyPath:@"fractionCompleted" context:LNActionExecutorRemoteProgressCompletedContext];

    progressPropertySynchronizer = [(LNActionExecutor *)self progressPropertySynchronizer];
    [progressPropertySynchronizer stopSynchronization];

    [(LNActionExecutor *)self setProgressPropertySynchronizer:0];
    [(LNActionExecutor *)self setExecutionProgress:0];
  }

  progressSubscriber = [(LNActionExecutor *)self progressSubscriber];

  if (progressSubscriber)
  {
    v8 = MEMORY[0x1E696AE38];
    progressSubscriber2 = [(LNActionExecutor *)self progressSubscriber];
    [v8 removeSubscriber:progressSubscriber2];

    [(LNActionExecutor *)self setProgressSubscriber:0];
  }

  v3[2](v3);
}

- (BOOL)validateURLSchemeBeforeLaunching
{
  connection = [(LNActionExecutor *)self connection];
  bundleIdentifier = [connection bundleIdentifier];
  v4 = [bundleIdentifier hasPrefix:@"com.apple."];

  return v4 ^ 1;
}

- (void)requestExtendTimeout
{
  connection = [(LNActionExecutor *)self connection];
  identifier = [(LNActionExecutor *)self identifier];
  [connection extendTimeoutForOperationWithIdentifier:identifier];
}

- (void)requestCancelTimeout
{
  connection = [(LNActionExecutor *)self connection];
  identifier = [(LNActionExecutor *)self identifier];
  [connection cancelTimeoutForOperationWithIdentifier:identifier];
}

- (void)requestOpenURL:(id)l completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  [lCopy setCompletionHandler:handler];
  v7 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [lCopy url];
    *buf = 138412290;
    v20 = v8;
  }

  v9 = [LNURLLaunchRequest alloc];
  v10 = [lCopy url];
  v11 = [(LNURLLaunchRequest *)v9 initWithURL:v10];

  shouldDismissSiri = [(LNActionExecutor *)self shouldDismissSiri];
  if (shouldDismissSiri)
  {
    v13 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_INFO, "Siri will be dismissed (if it's running) before opening URL", buf, 2u);
    }
  }

  [(LNURLLaunchRequest *)v11 setDismissSiri:shouldDismissSiri];
  validateURLSchemeBeforeLaunching = [(LNActionExecutor *)self validateURLSchemeBeforeLaunching];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__LNActionExecutor_requestOpenURL_completionHandler___block_invoke;
  v17[3] = &unk_1E74B1B90;
  v18 = lCopy;
  v15 = lCopy;
  [(LNURLLaunchRequest *)v11 performValidatingURLScheme:validateURLSchemeBeforeLaunching completionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __53__LNActionExecutor_requestOpenURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)requestContinueInApp:(id)app completionHandler:(id)handler
{
  v70 = *MEMORY[0x1E69E9840];
  appCopy = app;
  handlerCopy = handler;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  bundleIdentifier = [appCopy bundleIdentifier];
  v9 = bundleIdentifier == 0;

  if (v9)
  {
    connection = [(LNActionExecutor *)self connection];
    xpcConnection = [connection xpcConnection];
    userInfo = [xpcConnection userInfo];

    if (userInfo)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = userInfo;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v22 = v16;

    bundleIdentifier2 = [v22 objectForKeyedSubscript:@"bundleIdentifier"];
  }

  else
  {
    connection2 = [(LNActionExecutor *)self connection];
    xpcConnection2 = [connection2 xpcConnection];
    v12 = xpcConnection2;
    if (xpcConnection2)
    {
      [xpcConnection2 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v17 = [LNEntitlementsValidator validateEntitlement:@"com.apple.private.appintents.exception.continue-in-any-app-allowed" auditToken:buf validator:&__block_literal_global_208];

    if (!v17)
    {
      v20 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A578];
      bundleIdentifier2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v21 = [v20 errorWithDomain:@"LNActionExecutorErrorDomain" code:2018 userInfo:bundleIdentifier2];
      handlerCopy[2](handlerCopy, 0, v21);
      goto LABEL_49;
    }

    bundleIdentifier2 = [appCopy bundleIdentifier];
    options = [appCopy options];
    *(v62 + 24) = options & 1;
  }

  v21 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:0 error:0];
  if (!v21)
  {
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNActionExecutorErrorDomain" code:2018 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v29);
LABEL_48:

    goto LABEL_49;
  }

  [appCopy setCompletionHandler:handlerCopy];
  connection3 = [(LNActionExecutor *)self connection];
  isDaemon = [connection3 isDaemon];

  if (!isDaemon)
  {
    v31 = +[LNUnlockService isDeviceLocked];
    v32 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      options2 = [(LNActionExecutor *)self options];
      source = [options2 source];
      if (source > 0xA)
      {
        v35 = @"app";
      }

      else
      {
        v35 = off_1E74B0848[source];
      }

      v36 = v35;
      type = [appCopy type];
      if (v31)
      {
        v38 = @"locked";
      }

      else
      {
        v38 = @"unlocked";
      }

      v39 = @"UserInitiated";
      if (type == 1)
      {
        v39 = @"ForegroundLaunch";
      }

      if (type == 2)
      {
        v39 = @"ForegroundLaunchWithRunningUI";
      }

      v40 = v39;
      *buf = 138543874;
      *&buf[4] = v36;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      *&buf[22] = 2114;
      *&buf[24] = v40;
      _os_log_impl(&dword_19763D000, v32, OS_LOG_TYPE_INFO, "Source: %{public}@, device is %{public}@, request type: %{public}@", buf, 0x20u);
    }

    sceneOptions = [appCopy sceneOptions];
    completionHandler = [appCopy completionHandler];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __59__LNActionExecutor_requestContinueInApp_completionHandler___block_invoke_226;
    v55[3] = &unk_1E74B1E20;
    v55[4] = self;
    v29 = sceneOptions;
    v56 = v29;
    v60 = &v61;
    v57 = bundleIdentifier2;
    v58 = handlerCopy;
    v30 = completionHandler;
    v59 = v30;
    [appCopy setCompletionHandler:v55];
    if ([appCopy requestConfirmation])
    {
      goto LABEL_35;
    }

    date = [MEMORY[0x1E695DF00] date];
    lastCheckIn = [(LNActionExecutor *)self lastCheckIn];
    [date timeIntervalSinceDate:lastCheckIn];
    if (v49 < 4.0)
    {
    }

    else
    {
      v53 = LNEntitlementsValidator;
      connection4 = [(LNActionExecutor *)self connection];
      xpcConnection3 = [connection4 xpcConnection];
      v51 = xpcConnection3;
      if (xpcConnection3)
      {
        [xpcConnection3 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      LODWORD(v53) = [LNEntitlementsValidator validateEntitlement:@"com.apple.private.appintents.exception.continue-in-foreground-no-prompt-allowed" auditToken:buf validator:&__block_literal_global_241];

      if (!v53)
      {
LABEL_35:
        connection5 = [(LNActionExecutor *)self connection];
        identifier = [(LNActionExecutor *)self identifier];
        [connection5 cancelTimeoutForOperationWithIdentifier:identifier];

        delegate = [(LNActionExecutor *)self delegate];
        LOBYTE(identifier) = objc_opt_respondsToSelector();

        if (identifier)
        {
          delegate2 = [(LNActionExecutor *)self delegate];
          [delegate2 executor:self needsContinueInAppWithRequest:appCopy];
        }

        else
        {
          delegate2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
          [appCopy respondWithError:delegate2];
        }

        goto LABEL_46;
      }
    }

    [appCopy respondWithSuccess];
LABEL_46:

    goto LABEL_47;
  }

  v25 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    connection6 = [(LNActionExecutor *)self connection];
    bundleIdentifier3 = [connection6 bundleIdentifier];
    *buf = 138543362;
    *&buf[4] = bundleIdentifier3;
  }

  if ([appCopy requestConfirmation])
  {
    v28 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A578];
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v30 = [v28 errorWithDomain:@"LNActionExecutorErrorDomain" code:2018 userInfo:v29];
    handlerCopy[2](handlerCopy, 0, v30);
LABEL_47:

    goto LABEL_48;
  }

  [appCopy respondWithSuccess];
LABEL_49:

  _Block_object_dispose(&v61, 8);
  v52 = *MEMORY[0x1E69E9840];
}

void __59__LNActionExecutor_requestContinueInApp_completionHandler___block_invoke_226(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [*(a1 + 32) options];
    v6 = [v5 source];

    if (v6 == 6)
    {
      [v4 setValue:*MEMORY[0x1E69D4428] forKey:*MEMORY[0x1E699F940]];
    }

    v7 = [*(a1 + 32) options];
    v8 = [v7 source];

    if (v8 == 7)
    {
      [v4 setValue:*MEMORY[0x1E69D4438] forKey:*MEMORY[0x1E699F940]];
    }

    v9 = [*(a1 + 32) delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) delegate];
      v12 = [v11 progressIsPersistentInSystemApertureForExecutor:*(a1 + 32)];

      if (v12)
      {
        [v4 setValue:*MEMORY[0x1E69D4440] forKey:*MEMORY[0x1E699F940]];
      }
    }

    v13 = [*(a1 + 32) delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [*(a1 + 32) delegate];
      [v15 executorWillLaunchApplicationInForeground:*(a1 + 32)];
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [*(a1 + 32) options];
      v18 = [v16 fbsOpenApplicationOptionsWithActionExecutorOptions:v17];

      [v4 addEntriesFromDictionary:v18];
    }

    v19 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v4;
      _os_log_impl(&dword_19763D000, v19, OS_LOG_TYPE_INFO, "INCAppLaunchRequest with options %@", buf, 0xCu);
    }

    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) shouldDismissSiriWithDefault:*(*(*(a1 + 72) + 8) + 24)];
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v20 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_INFO, "Siri will be dismissed (if it's running)", buf, 2u);
      }
    }

    v21 = objc_alloc(MEMORY[0x1E69AA860]);
    v22 = *(a1 + 48);
    v23 = [v4 copy];
    v24 = [v21 initWithBundleIdentifier:v22 options:v23 URL:0 userActivity:0 retainsSiri:(*(*(*(a1 + 72) + 8) + 24) & 1) == 0];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __59__LNActionExecutor_requestContinueInApp_completionHandler___block_invoke_233;
    v26[3] = &unk_1E74B1DF8;
    v26[4] = *(a1 + 32);
    v28 = *(a1 + 56);
    v29 = *(a1 + 64);
    v27 = v3;
    [v24 performWithCompletionHandler:v26];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __59__LNActionExecutor_requestContinueInApp_completionHandler___block_invoke_239(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 BOOLValue];

  return v5;
}

void __59__LNActionExecutor_requestContinueInApp_completionHandler___block_invoke_233(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) connection];
  v7 = [*(a1 + 32) identifier];
  [v6 extendTimeoutForOperationWithIdentifier:v7];

  if (a2)
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "App Launch request succeeded", v11, 2u);
    }

    v9 = *(a1 + 40);
    v10 = *(*(a1 + 56) + 16);
  }

  else
  {
    v10 = *(*(a1 + 48) + 16);
  }

  v10();
}

uint64_t __59__LNActionExecutor_requestContinueInApp_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)requestChoice:(id)choice completionHandler:(id)handler
{
  choiceCopy = choice;
  [choiceCopy setCompletionHandler:handler];
  state = [(LNActionExecutor *)self state];
  [(LNActionExecutor *)self setState:43];
  completionHandler = [choiceCopy completionHandler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__LNActionExecutor_requestChoice_completionHandler___block_invoke;
  v15[3] = &unk_1E74B1DD0;
  v15[4] = self;
  v17 = state;
  v9 = completionHandler;
  v16 = v9;
  [choiceCopy setCompletionHandler:v15];
  delegate = [(LNActionExecutor *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    connection = [(LNActionExecutor *)self connection];
    identifier = [(LNActionExecutor *)self identifier];
    [connection cancelTimeoutForOperationWithIdentifier:identifier];

    delegate2 = [(LNActionExecutor *)self delegate];
    [delegate2 executor:self needsChoiceWithRequest:choiceCopy];
  }

  else
  {
    delegate2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [choiceCopy respondWithError:delegate2];
  }
}

void __52__LNActionExecutor_requestChoice_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a3;
  v10 = a2;
  v7 = [v5 date];
  [*(a1 + 32) setLastCheckIn:v7];

  [*(a1 + 32) setState:*(a1 + 48)];
  v8 = [*(a1 + 32) connection];
  v9 = [*(a1 + 32) identifier];
  [v8 extendTimeoutForOperationWithIdentifier:v9];

  (*(*(a1 + 40) + 16))();
}

- (void)requestViewSnippetSizeWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(LNActionExecutor *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(LNActionExecutor *)self delegate];
    [delegate2 executor:self preferredContentSizeForViewSnippetWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)requestViewSnippetEnvironmentWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(LNActionExecutor *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(LNActionExecutor *)self delegate];
    [delegate2 executor:self environmentForViewSnippetWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)requestAppProtectionUnlockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(LNActionExecutor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    state = [(LNActionExecutor *)self state];
    [(LNActionExecutor *)self setState:30];
    connection = [(LNActionExecutor *)self connection];
    identifier = [(LNActionExecutor *)self identifier];
    [connection cancelTimeoutForOperationWithIdentifier:identifier];

    delegate2 = [(LNActionExecutor *)self delegate];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__LNActionExecutor_requestAppProtectionUnlockWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E74B1DA8;
    v11[4] = self;
    v13 = state;
    v12 = handlerCopy;
    [delegate2 executor:self needsAppProtectionUnlockWithCompletionHandler:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __68__LNActionExecutor_requestAppProtectionUnlockWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 48)];
  v2 = [*(a1 + 32) connection];
  v3 = [*(a1 + 32) identifier];
  [v2 extendTimeoutForOperationWithIdentifier:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)requestActionConfirmation:(id)confirmation completionHandler:(id)handler
{
  confirmationCopy = confirmation;
  [confirmationCopy setCompletionHandler:handler];
  state = [(LNActionExecutor *)self state];
  [(LNActionExecutor *)self setState:80];
  completionHandler = [confirmationCopy completionHandler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__LNActionExecutor_requestActionConfirmation_completionHandler___block_invoke;
  v15[3] = &unk_1E74B1D80;
  v15[4] = self;
  v17 = state;
  v9 = completionHandler;
  v16 = v9;
  [confirmationCopy setCompletionHandler:v15];
  delegate = [(LNActionExecutor *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    connection = [(LNActionExecutor *)self connection];
    identifier = [(LNActionExecutor *)self identifier];
    [connection cancelTimeoutForOperationWithIdentifier:identifier];

    delegate2 = [(LNActionExecutor *)self delegate];
    [delegate2 executor:self needsActionConfirmationWithRequest:confirmationCopy];
  }

  else
  {
    [confirmationCopy respondWithConfirmation:1];
  }
}

void __64__LNActionExecutor_requestActionConfirmation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a3;
  v10 = a2;
  v7 = [v5 date];
  [*(a1 + 32) setLastCheckIn:v7];

  [*(a1 + 32) setState:*(a1 + 48)];
  v8 = [*(a1 + 32) connection];
  v9 = [*(a1 + 32) identifier];
  [v8 extendTimeoutForOperationWithIdentifier:v9];

  (*(*(a1 + 40) + 16))();
}

- (void)requestParameterNeedsValue:(id)value completionHandler:(id)handler
{
  valueCopy = value;
  [valueCopy setCompletionHandler:handler];
  state = [(LNActionExecutor *)self state];
  [(LNActionExecutor *)self setState:40];
  completionHandler = [valueCopy completionHandler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__LNActionExecutor_requestParameterNeedsValue_completionHandler___block_invoke;
  v13[3] = &unk_1E74B1D58;
  v14 = completionHandler;
  v15 = state;
  v13[4] = self;
  v9 = completionHandler;
  [valueCopy setCompletionHandler:v13];
  connection = [(LNActionExecutor *)self connection];
  identifier = [(LNActionExecutor *)self identifier];
  [connection cancelTimeoutForOperationWithIdentifier:identifier];

  delegate = [(LNActionExecutor *)self delegate];
  [delegate executor:self needsValueWithRequest:valueCopy];
}

void __65__LNActionExecutor_requestParameterNeedsValue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a3;
  v10 = a2;
  v7 = [v5 date];
  [*(a1 + 32) setLastCheckIn:v7];

  [*(a1 + 32) setState:*(a1 + 48)];
  v8 = [*(a1 + 32) connection];
  v9 = [*(a1 + 32) identifier];
  [v8 extendTimeoutForOperationWithIdentifier:v9];

  (*(*(a1 + 40) + 16))();
}

- (void)requestParameterDisambiguation:(id)disambiguation completionHandler:(id)handler
{
  disambiguationCopy = disambiguation;
  [disambiguationCopy setCompletionHandler:handler];
  state = [(LNActionExecutor *)self state];
  [(LNActionExecutor *)self setState:41];
  completionHandler = [disambiguationCopy completionHandler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__LNActionExecutor_requestParameterDisambiguation_completionHandler___block_invoke;
  v13[3] = &unk_1E74B1D30;
  v14 = completionHandler;
  v15 = state;
  v13[4] = self;
  v9 = completionHandler;
  [disambiguationCopy setCompletionHandler:v13];
  connection = [(LNActionExecutor *)self connection];
  identifier = [(LNActionExecutor *)self identifier];
  [connection cancelTimeoutForOperationWithIdentifier:identifier];

  delegate = [(LNActionExecutor *)self delegate];
  [delegate executor:self needsDisambiguationWithRequest:disambiguationCopy];
}

void __69__LNActionExecutor_requestParameterDisambiguation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a3;
  v10 = a2;
  v7 = [v5 date];
  [*(a1 + 32) setLastCheckIn:v7];

  [*(a1 + 32) setState:*(a1 + 48)];
  v8 = [*(a1 + 32) connection];
  v9 = [*(a1 + 32) identifier];
  [v8 extendTimeoutForOperationWithIdentifier:v9];

  (*(*(a1 + 40) + 16))();
}

- (void)requestParameterConfirmation:(id)confirmation completionHandler:(id)handler
{
  confirmationCopy = confirmation;
  [confirmationCopy setCompletionHandler:handler];
  state = [(LNActionExecutor *)self state];
  [(LNActionExecutor *)self setState:42];
  completionHandler = [confirmationCopy completionHandler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__LNActionExecutor_requestParameterConfirmation_completionHandler___block_invoke;
  v13[3] = &unk_1E74B1D08;
  v14 = completionHandler;
  v15 = state;
  v13[4] = self;
  v9 = completionHandler;
  [confirmationCopy setCompletionHandler:v13];
  connection = [(LNActionExecutor *)self connection];
  identifier = [(LNActionExecutor *)self identifier];
  [connection cancelTimeoutForOperationWithIdentifier:identifier];

  delegate = [(LNActionExecutor *)self delegate];
  [delegate executor:self needsConfirmationWithRequest:confirmationCopy];
}

void __67__LNActionExecutor_requestParameterConfirmation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a3;
  v10 = a2;
  v7 = [v5 date];
  [*(a1 + 32) setLastCheckIn:v7];

  [*(a1 + 32) setState:*(a1 + 48)];
  v8 = [*(a1 + 32) connection];
  v9 = [*(a1 + 32) identifier];
  [v8 extendTimeoutForOperationWithIdentifier:v9];

  (*(*(a1 + 40) + 16))();
}

- (void)setCompletedWithError:(id)error
{
  errorCopy = error;
  [(LNActionExecutor *)self setState:100];
  delegate = [(LNActionExecutor *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(LNActionExecutor *)self delegate];
    [delegate2 executor:self didPerformActionWithResult:0 error:errorCopy];
  }

  delegate3 = [(LNActionExecutor *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate4 = [(LNActionExecutor *)self delegate];
    [delegate4 executor:self didFinishWithResult:0 error:errorCopy];
  }

  delegate5 = [(LNActionExecutor *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate6 = [(LNActionExecutor *)self delegate];
    [delegate6 executor:self didCompleteExecutionWithResult:0 error:errorCopy];
  }
}

- (void)runShowOutputActionIfNecessary:(id)necessary completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  handlerCopy = handler;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  showOutputAction = [necessaryCopy showOutputAction];
  if (showOutputAction)
  {
    connection = [(LNActionExecutor *)self connection];
    appBundleIdentifier = [connection appBundleIdentifier];
    if (appBundleIdentifier)
    {
      delegate = [(LNActionExecutor *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

        goto LABEL_9;
      }

      delegate2 = [(LNActionExecutor *)self delegate];
      v13 = [delegate2 executor:self shouldRunShowOutputAction:showOutputAction];

      if (v13)
      {
LABEL_9:
        v14 = [showOutputAction url];
        v15 = v14 == 0;

        if (!v15)
        {
          [(LNActionExecutor *)self setState:90];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __69__LNActionExecutor_runShowOutputActionIfNecessary_completionHandler___block_invoke;
          v44[3] = &unk_1E74B1CB8;
          v46 = handlerCopy;
          showOutputAction = showOutputAction;
          v45 = showOutputAction;
          [(LNActionExecutor *)self openActionURL:showOutputAction completionHandler:v44];

          v16 = v46;
LABEL_24:

          goto LABEL_25;
        }

        showOutputActionMetadata = self->_showOutputActionMetadata;
        if (showOutputActionMetadata)
        {
          v16 = 0;
        }

        else
        {
          v18 = objc_opt_new();
          connection2 = [(LNActionExecutor *)self connection];
          appBundleIdentifier2 = [connection2 appBundleIdentifier];
          identifier = [showOutputAction identifier];
          v43 = 0;
          v22 = [v18 actionForBundleIdentifier:appBundleIdentifier2 andActionIdentifier:identifier error:&v43];
          v39 = connection2;
          v16 = v43;
          v23 = self->_showOutputActionMetadata;
          self->_showOutputActionMetadata = v22;

          if (!self->_showOutputActionMetadata)
          {
            v38 = getLNLogCategoryExecution();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v49 = v16;
              _os_log_impl(&dword_19763D000, v38, OS_LOG_TYPE_ERROR, "Failed to read intent metadata: %{public}@.", buf, 0xCu);
            }

            (*(handlerCopy + 2))(handlerCopy, 0, v16);
            goto LABEL_23;
          }

          showOutputActionMetadata = self->_showOutputActionMetadata;
        }

        v24 = [LNConnectionPolicy policyWithActionMetadata:showOutputActionMetadata, v39];
        v42 = v16;
        v25 = [v24 connectionWithError:&v42];
        v26 = v42;

        if (v25)
        {
          parameters = [showOutputAction parameters];
          v28 = [v24 actionWithParameters:parameters];

          v29 = [LNActionExecutorPassthroughDelegate alloc];
          delegate3 = [(LNActionExecutor *)self delegate];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __69__LNActionExecutor_runShowOutputActionIfNecessary_completionHandler___block_invoke_188;
          v40[3] = &unk_1E74B1CE0;
          v41 = handlerCopy;
          v31 = [(LNActionExecutorPassthroughDelegate *)v29 initWithShowOutputActionDelegate:delegate3 performCompletionHandler:v40];
          [(LNActionExecutor *)self setShowOutputActionPassthroughDelegate:v31];

          options = [(LNActionExecutor *)self options];
          v33 = [options copy];

          if ([necessaryCopy showOutputActionOptions])
          {
            [v33 setPreferNoticePresentation:1];
          }

          showOutputActionPassthroughDelegate = [(LNActionExecutor *)self showOutputActionPassthroughDelegate];
          v35 = [v25 executorForAction:v28 options:v33 delegate:showOutputActionPassthroughDelegate];

          [v35 perform];
          showOutputAction = v28;
        }

        else
        {
          v36 = getLNLogCategoryExecution();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v49 = v26;
            _os_log_impl(&dword_19763D000, v36, OS_LOG_TYPE_ERROR, "Failed to initialize connection: %{public}@.", buf, 0xCu);
          }

          (*(handlerCopy + 2))(handlerCopy, 0, v26);
        }

        v18 = v24;
        v16 = v26;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_25:

  os_activity_scope_leave(&state);
  v37 = *MEMORY[0x1E69E9840];
}

void __69__LNActionExecutor_runShowOutputActionIfNecessary_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [LNActionOutput alloc];
    v6 = [MEMORY[0x1E696AFB0] UUID];
    LOBYTE(v11) = 0;
    LOBYTE(v10) = 0;
    v12 = [(LNActionOutput *)v5 initWithIdentifier:v6 dialog:0 viewSnippet:0 snippetAction:0 attribution:0 value:0 showOutputAction:0 showOutputActionHint:0 showOutputActionOptions:0 deferred:v10 nextAction:0 suggestedFollowUpActions:0 activityIdentifier:0 confirmationActionName:0 showPrompt:v11 confirmationConditions:0 undoContext:0];

    v7 = *(a1 + 40);
    v8 = [LNSuccessResult alloc];
    v9 = [(LNSuccessResult *)v8 initWithAction:*(a1 + 32) output:v12 actionAppContext:0 predictions:MEMORY[0x1E695E0F0]];
    (*(v7 + 16))(v7, v9, 0);
  }
}

- (void)donateActionIfNecessary:(id)necessary result:(id)result completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  resultCopy = result;
  handlerCopy = handler;
  options = [(LNActionExecutor *)self options];
  donateToTranscript = [options donateToTranscript];

  if (resultCopy && (donateToTranscript & 1) != 0)
  {
    v30 = handlerCopy;
    v13 = [LNTranscriptActionRecord alloc];
    connection = [(LNActionExecutor *)self connection];
    bundleIdentifier = [connection bundleIdentifier];
    options2 = [(LNActionExecutor *)self options];
    source = [options2 source];
    options3 = [(LNActionExecutor *)self options];
    clientLabel = [options3 clientLabel];
    options4 = [(LNActionExecutor *)self options];
    executionUUID = [options4 executionUUID];
    date = [MEMORY[0x1E695DF00] date];
    v39 = 0;
    v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:necessaryCopy requiringSecureCoding:1 error:&v39];
    v16 = v39;
    if (v16 || !v15)
    {
      v17 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v41 = necessaryCopy;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
      }
    }

    actionData = [resultCopy actionData];
    [resultCopy outputData];
    v19 = v36 = necessaryCopy;
    predictionsData = [resultCopy predictionsData];
    output = [resultCopy output];
    nextAction = [output nextAction];
    LOBYTE(v25) = nextAction != 0;
    v26 = [(LNTranscriptActionRecord *)v13 initWithBundleIdentifier:bundleIdentifier source:source clientLabel:clientLabel executionUUID:executionUUID executionDate:date actionData:v15 resolvedActionData:actionData actionOutputData:v19 predictionsData:predictionsData hasNextAction:v25];

    v23 = +[LNConnectionManager sharedInstance];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__LNActionExecutor_donateActionIfNecessary_result_completionHandler___block_invoke;
    v37[3] = &unk_1E74B2848;
    handlerCopy = v30;
    v38 = v30;
    [v23 donateActionRecord:v26 completionHandler:v37];

    necessaryCopy = v36;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldDismissSiriWithDefault:(BOOL)default
{
  options = [(LNActionExecutor *)self options];
  assistantDismissalPolicy = [options assistantDismissalPolicy];

  if (assistantDismissalPolicy == 1)
  {
    return 0;
  }

  if (assistantDismissalPolicy == 2)
  {
    return 1;
  }

  options2 = [(LNActionExecutor *)self options];
  if ([options2 source] == 8)
  {
    default = 1;
  }

  else
  {
    options3 = [(LNActionExecutor *)self options];
    if ([options3 source] == 6)
    {
      default = 1;
    }
  }

  return default;
}

- (void)openActionURL:(id)l completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [lCopy url];
    v18 = 138412290;
    v19 = v9;
  }

  delegate = [(LNActionExecutor *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) != 0 && (-[LNActionExecutor delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 executor:self shouldOpenActionURL:lCopy], v12, (v13 & 1) == 0))
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    handlerCopy[2](handlerCopy, v14);
  }

  else
  {
    v14 = [[LNURLLaunchRequest alloc] initWithAction:lCopy];
    shouldDismissSiri = [(LNActionExecutor *)self shouldDismissSiri];
    if (shouldDismissSiri)
    {
      v16 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_19763D000, v16, OS_LOG_TYPE_INFO, "Siri will be dismissed (if it's running) before opening URL", &v18, 2u);
      }
    }

    [(LNURLLaunchRequest *)v14 setDismissSiri:shouldDismissSiri];
    [(LNURLLaunchRequest *)v14 performValidatingURLScheme:[(LNActionExecutor *)self validateURLSchemeBeforeLaunching] completionHandler:handlerCopy];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)linkUndoManagerToMainAppIfNecessary:(id)necessary completionHandler:(id)handler
{
  v61 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  handlerCopy = handler;
  if (necessaryCopy)
  {
    connection = [(LNActionExecutor *)self connection];
    appBundleIdentifier = [connection appBundleIdentifier];

    if (!appBundleIdentifier)
    {
      v16 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v16, OS_LOG_TYPE_INFO, "Extension undo manager will not be linked because no app bundle identifier was found", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
      goto LABEL_30;
    }

    v10 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:appBundleIdentifier];
    v58 = 0;
    v11 = [MEMORY[0x1E69C7618] statesForPredicate:v10 withDescriptor:0 error:&v58];
    v12 = v58;
    if (!v11)
    {
      (handlerCopy)[2](handlerCopy, v12);
LABEL_29:

LABEL_30:
      goto LABEL_31;
    }

    if (![v11 count])
    {
      v13 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v14 = "Extension undo manager will not be linked because the main app is not running (no process found)";
        goto LABEL_27;
      }

LABEL_28:

      handlerCopy[2](handlerCopy, 0);
      goto LABEL_29;
    }

    if ([v11 count] >= 2)
    {
      v13 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v14 = "Extension undo manager will not be linked because multiple main app processes are running";
LABEL_27:
        _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v17 = [v11 objectAtIndexedSubscript:0];
    [v17 taskState];
    IsRunning = RBSTaskStateIsRunning();

    v13 = getLNLogCategoryExecution();
    v19 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if ((IsRunning & 1) == 0)
    {
      if (v19)
      {
        *buf = 0;
        v14 = "Extension undo manager will not be linked because the main app is not running (process found but is not running)";
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_INFO, "Intent execution result contained an undo manager reference and the main app is running, proceeding to connect to the main app to link undo managers", buf, 2u);
    }

    v20 = [LNConnectionPolicy policyWithBundleIdentifier:appBundleIdentifier];
    v57 = v12;
    v21 = [v20 connectionWithError:&v57];
    v22 = v57;

    if (!v21)
    {
      (handlerCopy)[2](handlerCopy, v22);
LABEL_48:

      v12 = v22;
      goto LABEL_29;
    }

    v51 = v21;
    v23 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v23, OS_LOG_TYPE_INFO, "Connected to main app, acquiring assertion for extension", buf, 2u);
    }

    v24 = MEMORY[0x1E698E620];
    connection2 = [(LNActionExecutor *)self connection];
    v26 = connection2;
    if (connection2)
    {
      [connection2 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v28 = [v24 tokenFromAuditToken:buf];

    v50 = v28;
    v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "pid")}];
    v56 = 0;
    v30 = [MEMORY[0x1E69C75D0] handleForIdentifier:v29 error:&v56];
    v31 = v56;

    if (!v30)
    {
      (handlerCopy)[2](handlerCopy, v31);
LABEL_47:

      v22 = v31;
      v21 = v51;
      goto LABEL_48;
    }

    v48 = v29;
    v49 = v20;
    v32 = +[LNExtensionUndoAssertionCache shared];
    v33 = [v32 extendAssertionForHandle:v30];

    if (v33)
    {
      v34 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v34, OS_LOG_TYPE_INFO, "Existing assertion found and extended", buf, 2u);
      }

      v35 = 0;
    }

    else
    {
      v36 = @"com.apple.siri";
      v37 = @"AppIntentsExtensionConnection";
      v38 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.siri" name:@"AppIntentsExtensionConnection"];
      v59 = v38;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];

      v40 = objc_alloc(MEMORY[0x1E69C7548]);
      v47 = v30;
      v41 = [MEMORY[0x1E69C7640] targetWithProcessIdentifier:v30];
      v46 = v39;
      v35 = [v40 initWithExplanation:@"Extension connection" target:v41 attributes:v39];

      v42 = +[LNExtensionUndoAssertionCache shared];
      v55 = v31;
      LODWORD(v39) = [v42 addAssertion:v35 error:&v55];
      v43 = v55;

      if (!v39)
      {
        [(__CFString *)v35 invalidate];
        (handlerCopy)[2](handlerCopy, v43);

        v45 = @"com.apple.siri";
        v20 = v49;
        v31 = v43;
        v30 = v47;
        goto LABEL_46;
      }

      v44 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        *&buf[4] = @"com.apple.siri";
        *&buf[12] = 2114;
        *&buf[14] = @"AppIntentsExtensionConnection";
        _os_log_impl(&dword_19763D000, v44, OS_LOG_TYPE_INFO, "Acquired assertion %{public}@:%{public}@, sending linking message with undo manager reference", buf, 0x16u);
      }

      v34 = @"com.apple.siri";
      v20 = v49;
      v31 = v43;
      v30 = v47;
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __74__LNActionExecutor_linkUndoManagerToMainAppIfNecessary_completionHandler___block_invoke;
    v52[3] = &unk_1E74B1CB8;
    v35 = v35;
    v53 = v35;
    v54 = handlerCopy;
    [v51 linkUndoManager:necessaryCopy completionHandler:v52];

    v45 = v53;
LABEL_46:

    v29 = v48;
    goto LABEL_47;
  }

  v15 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v15, OS_LOG_TYPE_INFO, "Intent execution result did not contain an undo manager reference to link; not linking to main app undo manager", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_31:

  v27 = *MEMORY[0x1E69E9840];
}

void __74__LNActionExecutor_linkUndoManagerToMainAppIfNecessary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Linking undo received response from main app", v6, 2u);
  }

  if (v3 && *(a1 + 32))
  {
    v5 = +[LNExtensionUndoAssertionCache shared];
    [v5 removeAssertion:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)performWithoutValidation
{
  v78[1] = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  [(LNActionExecutor *)self setState:11];
  action = [(LNActionExecutor *)self action];
  v4 = [action url];
  v5 = v4 == 0;

  if (!v5)
  {
    action2 = [(LNActionExecutor *)self action];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke;
    v69[3] = &unk_1E74B1B90;
    v69[4] = self;
    [(LNActionExecutor *)self openActionURL:action2 completionHandler:v69];

    goto LABEL_34;
  }

  action3 = [(LNActionExecutor *)self action];
  if ([action3 openAppWhenRun])
  {
    connection = [(LNActionExecutor *)self connection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = MEMORY[0x1E696ABC0];
      v77 = *MEMORY[0x1E696A578];
      v78[0] = @"openAppWhenRun is not supported in extensions";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
      v12 = [v10 errorWithDomain:@"LNContextErrorDomain" code:2001 userInfo:v11];
      [(LNActionExecutor *)self setCompletedWithError:v12];

      goto LABEL_34;
    }
  }

  else
  {
  }

  action4 = [(LNActionExecutor *)self action];
  systemProtocols = [action4 systemProtocols];
  audioRecordingProtocol = [MEMORY[0x1E69ACA48] audioRecordingProtocol];
  v16 = [systemProtocols containsObject:audioRecordingProtocol];

  if (v16)
  {
    if ([LNEntitlementsValidator currentProcessHasMachLookup:@"com.apple.appprotectiond.read"]&& [LNEntitlementsValidator validateEntitlement:@"com.apple.appprotectiond.read.access" forCurrentTaskWithValidator:&__block_literal_global_10553])
    {
      v17 = MEMORY[0x1E698B0D0];
      connection2 = [(LNActionExecutor *)self connection];
      appBundleIdentifier = [connection2 appBundleIdentifier];
      v20 = [v17 applicationWithBundleIdentifier:appBundleIdentifier];

      if (([v20 isLocked]& 1) != 0 || [v20 isHidden])
      {
        v21 = MEMORY[0x1E696ABC0];
        v75 = *MEMORY[0x1E696A578];
        v76 = @"Audio Recording is not allowed when an app is locked";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v23 = [v21 errorWithDomain:@"LNContextErrorDomain" code:2023 userInfo:v22];
        [(LNActionExecutor *)self setCompletedWithError:v23];

        goto LABEL_34;
      }
    }

    else
    {
      v20 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_ERROR, "Client process doesn't have entitlement to check the App Protection status to verify AudioRecondingIntent requirement.", buf, 2u);
      }
    }
  }

  options = [(LNActionExecutor *)self options];
  if (![options allowLiveActivities])
  {
    goto LABEL_25;
  }

  action5 = [(LNActionExecutor *)self action];
  systemProtocols2 = [action5 systemProtocols];
  sessionStartingProtocol = [MEMORY[0x1E69ACA48] sessionStartingProtocol];
  v28 = [systemProtocols2 containsObject:sessionStartingProtocol];

  if (v28)
  {
    if ([LNEntitlementsValidator currentProcessHasMachLookup:@"com.apple.sessionservices"]&& [LNEntitlementsValidator validateEntitlement:@"com.apple.private.sessionkit.assertionRequester" forCurrentTaskWithValidator:&__block_literal_global_128_10559])
    {
      v29 = objc_alloc(MEMORY[0x1E69CA948]);
      connection3 = [(LNActionExecutor *)self connection];
      effectiveBundleIdentifier = [connection3 effectiveBundleIdentifier];
      bundleIdentifier = [effectiveBundleIdentifier bundleIdentifier];
      options = [v29 initWithBundleIdentifier:bundleIdentifier];

      v33 = MEMORY[0x1E696AEC0];
      options2 = [(LNActionExecutor *)self options];
      clientLabel = [options2 clientLabel];
      connection4 = [(LNActionExecutor *)self connection];
      bundleIdentifier2 = [connection4 bundleIdentifier];
      action6 = [(LNActionExecutor *)self action];
      identifier = [action6 identifier];
      v40 = [v33 stringWithFormat:@"%@ is running an App Intent (%@::%@) that may start a session", clientLabel, bundleIdentifier2, identifier];

      objc_initWeak(&location, self);
      v41 = objc_alloc(MEMORY[0x1E69CA940]);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_2;
      v66[3] = &unk_1E74B1BB8;
      objc_copyWeak(&v67, &location);
      v42 = [v41 initWithExplanation:v40 target:options invalidationHandler:v66];
      [(LNActionExecutor *)self setLiveActivityAssertion:v42];

      v43 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        connection5 = [(LNActionExecutor *)self connection];
        bundleIdentifier3 = [connection5 bundleIdentifier];
        action7 = [(LNActionExecutor *)self action];
        identifier2 = [action7 identifier];
        *buf = 138412546;
        v72 = bundleIdentifier3;
        v73 = 2112;
        v74 = identifier2;
        _os_log_impl(&dword_19763D000, v43, OS_LOG_TYPE_DEFAULT, "Requested a Live Activity assertion for %@::%@", buf, 0x16u);
      }

      objc_destroyWeak(&v67);
      objc_destroyWeak(&location);
    }

    else
    {
      options = getLNLogCategoryExecution();
      if (os_log_type_enabled(options, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, options, OS_LOG_TYPE_ERROR, "Client process is not entitled to allow applications to start Live Activities.", buf, 2u);
      }
    }

LABEL_25:
  }

  connection6 = [(LNActionExecutor *)self connection];
  action8 = [(LNActionExecutor *)self action];
  options3 = [(LNActionExecutor *)self options];
  interactionMode = [options3 interactionMode];
  options4 = [(LNActionExecutor *)self options];
  source = [options4 source];
  options5 = [(LNActionExecutor *)self options];
  sourceOverride = [options5 sourceOverride];
  options6 = [(LNActionExecutor *)self options];
  v57 = [connection6 optionsForAction:action8 interactionMode:interactionMode source:source sourceOverride:sourceOverride assistantDismissalPolicy:{objc_msgSend(options6, "assistantDismissalPolicy")}];

  options7 = [(LNActionExecutor *)self options];
  LODWORD(action8) = [options7 requestUnlockIfNeeded];

  if (action8)
  {
    [v57 setAuthenticationPolicy:1];
  }

  v59 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    options8 = [(LNActionExecutor *)self options];
    executionUUID = [options8 executionUUID];
    *buf = 138412546;
    v72 = executionUUID;
    v73 = 2112;
    v74 = v57;
    _os_log_impl(&dword_19763D000, v59, OS_LOG_TYPE_INFO, "Performing action with UUID: %@, connection options: %@", buf, 0x16u);
  }

  options9 = [(LNActionExecutor *)self options];
  oneShotForSpringBoardOnly = [options9 oneShotForSpringBoardOnly];

  if (oneShotForSpringBoardOnly)
  {
    [(LNActionExecutor *)self performOneShotWithConnectionOptions:v57];
  }

  else
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_136;
    v65[3] = &unk_1E74B1C90;
    v65[4] = self;
    [(LNActionExecutor *)self getConnectionInterfaceWithOptions:v57 completionHandler:v65];
  }

LABEL_34:
  os_activity_scope_leave(&state);
  v64 = *MEMORY[0x1E69E9840];
}

void __44__LNActionExecutor_performWithoutValidation__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCompletedWithError:a2];
  if (!a2)
  {
    v4 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) action];
      v6 = [v5 url];
      v8 = 138412290;
      v9 = v6;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __44__LNActionExecutor_performWithoutValidation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didInvalidateLiveActivityBackgroundAssertion:v6 error:v5];

  [WeakRetained setLiveActivityAssertion:0];
}

void __44__LNActionExecutor_performWithoutValidation__block_invoke_136(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 136), &state);
  v13 = *(a1 + 32);
  if (v11)
  {
    if ([v13 validateEntitlementsForConnection:v9])
    {
      *(*(a1 + 32) + 12) = [v9 allowsExtendingTimeoutOnProgressUpdates];
      objc_initWeak(&location, *(a1 + 32));
      v14 = MEMORY[0x1E696AE38];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_2_140;
      v35[3] = &unk_1E74B1BE0;
      objc_copyWeak(&v36, &location);
      v15 = [v14 _addSubscriberForCategory:@"com.apple.PerformActionProgressCategory" usingPublishingHandler:v35];
      [*(a1 + 32) setProgressSubscriber:v15];

      v31 = [LNPerformActionConnectionOperation alloc];
      v16 = *(a1 + 32);
      v17 = [v16 activity];
      v18 = [v9 queue];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_4;
      v32[3] = &unk_1E74B1C68;
      v32[4] = *(a1 + 32);
      v33 = v10;
      v19 = v9;
      v34 = v19;
      v20 = [(LNPerformActionConnectionOperation *)v31 initWithConnectionInterface:v11 action:v33 executor:v16 executorActivity:v17 queue:v18 completionHandler:v32];

      v21 = [MEMORY[0x1E695DF00] date];
      [*(a1 + 32) setLastCheckIn:v21];

      [*(a1 + 32) setState:90];
      [v19 enqueueConnectionOperation:v20];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = *(a1 + 32);
      v23 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v24 = MEMORY[0x1E696AEC0];
      v25 = [v22 action];
      v26 = [v25 identifier];
      v27 = [v24 stringWithFormat:@"This client is not entitled to perform %@", v26];
      v40[0] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v29 = [v23 errorWithDomain:@"LNContextErrorDomain" code:2021 userInfo:v28];
      [v22 setCompletedWithError:v29];
    }
  }

  else
  {
    [v13 setCompletedWithError:v12];
  }

  os_activity_scope_leave(&state);

  v30 = *MEMORY[0x1E69E9840];
}

id __44__LNActionExecutor_performWithoutValidation__block_invoke_2_140(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"ExecutionUUID"];
  v7 = [(os_unfair_lock_s *)WeakRetained options];
  v8 = [v7 executionUUID];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [v3 addObserver:WeakRetained forKeyPath:@"fractionCompleted" options:1 context:LNActionExecutorRemoteProgressCompletedContext];
    [(os_unfair_lock_s *)WeakRetained setExecutionProgress:v3];
    v10 = [LNProgressPropertySynchronizer alloc];
    v11 = [(os_unfair_lock_s *)WeakRetained progress];
    v12 = [(LNProgressPropertySynchronizer *)v10 initWithSourceProgress:v3 destinationProgress:v11];
    [(os_unfair_lock_s *)WeakRetained setProgressPropertySynchronizer:v12];

    v13 = [(os_unfair_lock_s *)WeakRetained progressPropertySynchronizer];
    [v13 startSynchronization];

    os_unfair_lock_unlock(WeakRetained + 4);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_3;
    aBlock[3] = &unk_1E74B2318;
    aBlock[4] = WeakRetained;
    v14 = _Block_copy(aBlock);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __44__LNActionExecutor_performWithoutValidation__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) unsubscribeProgressObservation];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__10568;
  v57 = __Block_byref_object_dispose__10569;
  v58 = 0;
  if (v9)
  {
    v10 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v62 = v9;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_ERROR, "Perform action connection operation completed with error: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E696ABC0];
    v59[0] = *MEMORY[0x1E696A578];
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"LNActionExecutorErrorCodePerformAction";
    v14 = [v9 localizedDescription];
    v15 = [v12 stringWithFormat:@"%@. Underlying error: %@", @"LNActionExecutorErrorCodePerformAction", v14];
    v59[1] = @"LNActionExecutorErrorUnderlyingError";
    v60[0] = v15;
    v60[1] = v9;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v17 = [v11 errorWithDomain:@"LNActionExecutorErrorDomain" code:3001 userInfo:v16];
    v18 = v54[5];
    v54[5] = v17;
  }

  [*(a1 + 32) setState:100];
  v19 = [*(a1 + 32) delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [*(a1 + 32) delegate];
    [v21 executor:*(a1 + 32) didPerformActionWithResult:v8 error:v9];
  }

  v22 = [*(a1 + 32) liveActivityAssertion];

  if (v22)
  {
    v23 = [*(a1 + 32) liveActivityAssertion];
    [v23 invalidate];

    [*(a1 + 32) setLiveActivityAssertion:0];
  }

  v24 = [*(a1 + 32) delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [*(a1 + 32) delegate];
    [v26 executor:*(a1 + 32) didFinishWithResult:v8 error:v9];
  }

  v27 = dispatch_group_create();
  dispatch_group_enter(v27);
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_155;
  v49[3] = &unk_1E74B2388;
  v50 = *(a1 + 48);
  v30 = v7;
  v51 = v30;
  v31 = v27;
  v52 = v31;
  [v28 donateActionIfNecessary:v29 result:v8 completionHandler:v49];
  dispatch_group_enter(v31);
  v32 = *(a1 + 32);
  v33 = [v8 output];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_2_157;
  v46[3] = &unk_1E74B1C18;
  v48 = &v53;
  v34 = v31;
  v47 = v34;
  [v32 runShowOutputActionIfNecessary:v33 completionHandler:v46];

  dispatch_group_enter(v34);
  v35 = *(a1 + 32);
  v36 = [v8 undoReference];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_3_159;
  v44[3] = &unk_1E74B1B90;
  v37 = v34;
  v45 = v37;
  [v35 linkUndoManagerToMainAppIfNecessary:v36 completionHandler:v44];

  v38 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_160;
  block[3] = &unk_1E74B1C40;
  block[4] = *(a1 + 32);
  v42 = v8;
  v43 = &v53;
  v39 = v8;
  dispatch_group_notify(v37, v38, block);

  _Block_object_dispose(&v53, 8);
  v40 = *MEMORY[0x1E69E9840];
}

void __44__LNActionExecutor_performWithoutValidation__block_invoke_155(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Biome donation has failed with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__LNActionExecutor_performWithoutValidation__block_invoke_156;
  v7[3] = &unk_1E74B27A0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  dispatch_async(v5, v7);

  dispatch_group_leave(*(a1 + 48));
  v6 = *MEMORY[0x1E69E9840];
}

void __44__LNActionExecutor_performWithoutValidation__block_invoke_2_157(uint64_t a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && !*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = MEMORY[0x1E696ABC0];
    v17[0] = *MEMORY[0x1E696A578];
    v8 = MEMORY[0x1E696AEC0];
    v9 = @"LNActionExecutorErrorCodePerformShowOutputAction";
    v10 = [v6 localizedDescription];
    v11 = [v8 stringWithFormat:@"%@. Underlying error: %@", @"LNActionExecutorErrorCodePerformShowOutputAction", v10];
    v17[1] = @"LNActionExecutorErrorUnderlyingError";
    v18[0] = v11;
    v18[1] = v6;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v13 = [v7 errorWithDomain:@"LNActionExecutorErrorDomain" code:3003 userInfo:v12];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  dispatch_group_leave(*(a1 + 32));

  v16 = *MEMORY[0x1E69E9840];
}

void __44__LNActionExecutor_performWithoutValidation__block_invoke_3_159(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Undo manager linking has failed with error: %{public}@", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v5 = *MEMORY[0x1E69E9840];
}

void __44__LNActionExecutor_performWithoutValidation__block_invoke_160(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 executor:*(a1 + 32) didCompleteExecutionWithResult:*(a1 + 40) error:*(*(*(a1 + 48) + 8) + 40)];
  }
}

uint64_t __44__LNActionExecutor_performWithoutValidation__block_invoke_126(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 BOOLValue];

  return v5;
}

uint64_t __44__LNActionExecutor_performWithoutValidation__block_invoke_114(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)perform
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  options = [(LNActionExecutor *)self options];
  if ([options validateConstraints])
  {
    action = [(LNActionExecutor *)self action];
    metadata = [action metadata];
    constraints = [metadata constraints];
    v7 = [constraints count];

    if (v7)
    {
      [(LNActionExecutor *)self setState:10];
      action2 = [(LNActionExecutor *)self action];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __27__LNActionExecutor_perform__block_invoke;
      v10[3] = &unk_1E74B1B68;
      v10[4] = self;
      [LNConstraintContext contextForAction:action2 completion:v10];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_INFO, "Constraint validation skipped", buf, 2u);
  }

  [(LNActionExecutor *)self performWithoutValidation];
LABEL_8:
  os_activity_scope_leave(&state);
}

void __27__LNActionExecutor_perform__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 136), &state);
  v4 = [*(a1 + 32) action];
  v16 = 0;
  v5 = [v4 evaluateConstraintsInContext:v3 error:&v16];
  v6 = v16;

  if (v5 > 0)
  {
    if (v5 == 1 || v5 == 9999)
    {
      v9 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Intent constraints failed", buf, 2u);
      }

      v10 = *(a1 + 32);
      v11 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v12 = [v6 localizedDescription];
      v19 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v14 = [v11 errorWithDomain:@"LNContextErrorDomain" code:2024 userInfo:v13];
      [v10 setCompletedWithError:v14];

      goto LABEL_11;
    }
  }

  else
  {
    if (v5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v7 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 debugDescription];
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Intent constraints had unknown/system failure outcome: %@", buf, 0xCu);
      }

LABEL_13:

      goto LABEL_14;
    }

    if (!v5)
    {
LABEL_11:
      v7 = getLNLogCategoryExecution();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Intent constraints satisfied", buf, 2u);
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  [*(a1 + 32) performWithoutValidation];

  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)getXPCListenerConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  action = [(LNActionExecutor *)self action];
  actionWithNonSecureParameters = [action actionWithNonSecureParameters];

  connection = [(LNActionExecutor *)self connection];
  connection2 = [(LNActionExecutor *)self connection];
  bundleIdentifier = [connection2 bundleIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__LNActionExecutor_getXPCListenerConnectionInterfaceWithOptions_completionHandler___block_invoke;
  v16[3] = &unk_1E74B1B38;
  v17 = actionWithNonSecureParameters;
  selfCopy = self;
  v19 = optionsCopy;
  v20 = handlerCopy;
  v13 = optionsCopy;
  v14 = actionWithNonSecureParameters;
  v15 = handlerCopy;
  [connection getListenerEndpointForBundleIdentifier:bundleIdentifier action:v14 completionHandler:v16];
}

void __83__LNActionExecutor_getXPCListenerConnectionInterfaceWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v38 = v10;
  if (v9)
  {
    v33 = v9;
    v13 = [*(a1 + 32) parameters];
    v14 = [v13 valueForKeyPath:@"identifier"];

    v15 = [*(a1 + 40) action];
    v37 = v11;
    v16 = [v11 parameters];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __83__LNActionExecutor_getXPCListenerConnectionInterfaceWithOptions_completionHandler___block_invoke_2;
    v45[3] = &unk_1E74B26A8;
    v36 = v14;
    v46 = v36;
    v17 = [v16 if_objectsPassingTest:v45];
    v35 = [v15 actionWithByMergingParameters:v17];

    v18 = [LNXPCListenerEndpointConnection alloc];
    v34 = [*(a1 + 40) connection];
    v19 = [v34 effectiveBundleIdentifier];
    v31 = [*(a1 + 40) connection];
    v20 = [v31 appBundleIdentifier];
    v21 = [*(a1 + 40) connection];
    v22 = [v21 processInstanceIdentifier];
    v23 = [*(a1 + 40) connection];
    v24 = [v23 userIdentity];
    if (v10)
    {
      [v10 if_auditToken];
    }

    else
    {
      memset(v44, 0, sizeof(v44));
    }

    v43 = v12;
    v25 = v18;
    v9 = v33;
    v26 = [(LNXPCListenerEndpointConnection *)v25 initWithEffectiveBundleIdentifier:v19 appBundleIdentifier:v20 processInstanceIdentifier:v22 appIntentsEnabledOnly:0 userIdentity:v24 listenerEndpoint:v33 auditToken:v44 error:&v43];
    v32 = v43;

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __83__LNActionExecutor_getXPCListenerConnectionInterfaceWithOptions_completionHandler___block_invoke_3;
    v39[3] = &unk_1E74B1B10;
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v40 = v26;
    v41 = v35;
    v42 = v28;
    v29 = v35;
    v30 = v26;
    [(LNConnection *)v30 getConnectionInterfaceWithOptions:v27 completionHandler:v39];

    v12 = v32;
    v11 = v37;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __83__LNActionExecutor_getXPCListenerConnectionInterfaceWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)getPrimaryConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  action = [(LNActionExecutor *)self action];
  systemProtocols = [action systemProtocols];
  xpcListenerProtocol = [MEMORY[0x1E69ACA48] xpcListenerProtocol];
  v11 = [systemProtocols containsObject:xpcListenerProtocol];

  if (v11)
  {
    [(LNActionExecutor *)self getXPCListenerConnectionInterfaceWithOptions:optionsCopy completionHandler:handlerCopy];
  }

  else
  {
    connection = [(LNActionExecutor *)self connection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__LNActionExecutor_getPrimaryConnectionInterfaceWithOptions_completionHandler___block_invoke;
    v13[3] = &unk_1E74B1AC0;
    v13[4] = self;
    v14 = handlerCopy;
    [connection getConnectionInterfaceWithOptions:optionsCopy completionHandler:v13];
  }
}

void __79__LNActionExecutor_getPrimaryConnectionInterfaceWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 connection];
  v9 = [*(a1 + 32) action];
  (*(v5 + 16))(v5, v10, v9, v8, v7);
}

- (void)getConnectionInterfaceWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = MEMORY[0x1E698B0D0];
  connection = [(LNActionExecutor *)self connection];
  appBundleIdentifier = [connection appBundleIdentifier];
  v11 = [v8 applicationWithBundleIdentifier:appBundleIdentifier];

  if ([v11 isLocked])
  {
    mEMORY[0x1E698B0D8] = [MEMORY[0x1E698B0D8] sharedGuard];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__LNActionExecutor_getConnectionInterfaceWithOptions_completionHandler___block_invoke;
    v13[3] = &unk_1E74B1AE8;
    v13[4] = self;
    v14 = optionsCopy;
    v15 = handlerCopy;
    [mEMORY[0x1E698B0D8] getIsChallengeCurrentlyRequiredForSubject:v11 completion:v13];
  }

  else
  {
    [(LNActionExecutor *)self getPrimaryConnectionInterfaceWithOptions:optionsCopy completionHandler:handlerCopy];
  }
}

void __72__LNActionExecutor_getConnectionInterfaceWithOptions_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = a1[4];
  if (v3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__LNActionExecutor_getConnectionInterfaceWithOptions_completionHandler___block_invoke_3;
    v8[3] = &unk_1E74B2340;
    v8[4] = v4;
    v9 = a1[5];
    v10 = a1[6];
    [v4 requestAppProtectionUnlockWithCompletionHandler:v8];
  }

  else
  {
    v5 = [a1[4] connection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__LNActionExecutor_getConnectionInterfaceWithOptions_completionHandler___block_invoke_2;
    v11[3] = &unk_1E74B1AC0;
    v6 = a1[5];
    v7 = a1[6];
    v11[4] = a1[4];
    v12 = v7;
    [v5 getConnectionInterfaceWithOptions:v6 completionHandler:v11];
  }
}

void __72__LNActionExecutor_getConnectionInterfaceWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 connection];
  v9 = [*(a1 + 32) action];
  (*(v5 + 16))(v5, v10, v9, v8, v7);
}

void __72__LNActionExecutor_getConnectionInterfaceWithOptions_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) connection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__LNActionExecutor_getConnectionInterfaceWithOptions_completionHandler___block_invoke_4;
    v8[3] = &unk_1E74B1AC0;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[4] = *(a1 + 32);
    v9 = v5;
    [v3 getConnectionInterfaceWithOptions:v4 completionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = LNConnectionErrorWithCode(2400);
    (*(v6 + 16))(v6, 0, 0, 0, v7);
  }
}

void __72__LNActionExecutor_getConnectionInterfaceWithOptions_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 connection];
  v9 = [*(a1 + 32) action];
  (*(v5 + 16))(v5, v10, v9, v8, v7);
}

- (void)_logTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v31 = *MEMORY[0x1E69E9840];
  if (state == toState)
  {
    goto LABEL_50;
  }

  v7 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = LNActionExecutorStateAsString(state);
    v9 = LNActionExecutorStateAsString(toState);
    v27 = 138543618;
    v28 = v8;
    v29 = 2114;
    v30 = v9;
  }

  if (state > 39)
  {
    if ((state - 40) >= 4 && state != 80)
    {
      if (state == 90)
      {
        v10 = getLNLogCategoryExecution();
        v11 = v10;
        if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v10))
        {
          goto LABEL_22;
        }

        LOWORD(v27) = 0;
        v12 = "performing";
LABEL_17:
        _os_signpost_emit_with_name_impl(&dword_19763D000, v11, OS_SIGNPOST_INTERVAL_END, self, v12, "", &v27, 2u);
LABEL_22:

        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_14:
    v13 = getLNLogCategoryExecution();
    v11 = v13;
    if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v13))
    {
      goto LABEL_22;
    }

    LOWORD(v27) = 0;
    v12 = "waiting";
    goto LABEL_17;
  }

  switch(state)
  {
    case 10:
      v14 = getLNLogCategoryExecution();
      v11 = v14;
      if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v14))
      {
        goto LABEL_22;
      }

      LOWORD(v27) = 0;
      v12 = "validatingConstraints";
      goto LABEL_17;
    case 11:
      v15 = getLNLogCategoryExecution();
      v11 = v15;
      if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v15))
      {
        goto LABEL_22;
      }

      LOWORD(v27) = 0;
      v12 = "connecting";
      goto LABEL_17;
    case 30:
      goto LABEL_14;
  }

LABEL_23:
  if (toState <= 28)
  {
    switch(toState)
    {
      case 10:
        v24 = getLNLogCategoryExecution();
        v17 = v24;
        if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v24))
        {
          goto LABEL_49;
        }

        LOWORD(v27) = 0;
        v18 = "validatingConstraints";
        break;
      case 11:
        v25 = getLNLogCategoryExecution();
        v17 = v25;
        if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v25))
        {
          goto LABEL_49;
        }

        LOWORD(v27) = 0;
        v18 = "connecting";
        break;
      case 20:
        v21 = getLNLogCategoryExecution();
        v17 = v21;
        if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v21))
        {
          goto LABEL_49;
        }

        LOWORD(v27) = 0;
        v18 = "resolving";
        break;
      default:
        goto LABEL_50;
    }

LABEL_29:
    v19 = v17;
    v20 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_30:
    _os_signpost_emit_with_name_impl(&dword_19763D000, v19, v20, self, v18, "", &v27, 2u);
LABEL_49:

    goto LABEL_50;
  }

  if ((toState - 29) <= 0x3D)
  {
    if (((1 << (toState - 29)) & 0x8000000007802) != 0)
    {
      v16 = getLNLogCategoryExecution();
      v17 = v16;
      if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v16))
      {
        goto LABEL_49;
      }

      LOWORD(v27) = 0;
      v18 = "waiting";
      goto LABEL_29;
    }

    if (toState == 29)
    {
      v23 = getLNLogCategoryExecution();
      v17 = v23;
      if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v23))
      {
        goto LABEL_49;
      }

      LOWORD(v27) = 0;
      v18 = "resolving";
      v19 = v17;
      v20 = OS_SIGNPOST_INTERVAL_END;
      goto LABEL_30;
    }

    if (toState == 90)
    {
      v22 = getLNLogCategoryExecution();
      v17 = v22;
      if (&self->super.isa + 1 < 2 || !os_signpost_enabled(v22))
      {
        goto LABEL_49;
      }

      LOWORD(v27) = 0;
      v18 = "performing";
      goto LABEL_29;
    }
  }

LABEL_50:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)setState:(int64_t)state
{
  state = self->_state;
  if (state != state)
  {
    if (state <= 29)
    {
      if (state)
      {
        if (state == 11)
        {
          if (state <= 0x1E && ((1 << state) & 0x40100400) != 0 || state == 90 || state == 100)
          {
            goto LABEL_27;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionExecutor.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"state == LNActionExecutorStateValidatingConstraints || state == LNActionExecutorStateWaitingForAppProtectionUnlock || state == LNActionExecutorStateResolving || state == LNActionExecutorStatePerforming || state == LNActionExecutorStateCompleted"}];
        }

        else
        {
          if (state != 20)
          {
            goto LABEL_27;
          }

          if ((state - 40) <= 0x3C && ((1 << (state - 40)) & 0x1004000000000007) != 0)
          {
            state = 20;
            goto LABEL_27;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionExecutor.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"state == LNActionExecutorStateWaitingForValue || state == LNActionExecutorStateWaitingForDisambiguation || state == LNActionExecutorStateWaitingForConfirmation || state == LNActionExecutorStatePerforming || state == LNActionExecutorStateCompleted"}];
        }
      }

      else
      {
        if ((state & 0xFFFFFFFFFFFFFFFELL) == 0xA)
        {
          state = 0;
          goto LABEL_27;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionExecutor.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"state == LNActionExecutorStateValidatingConstraints || state == LNActionExecutorStateConnecting"}];
      }
    }

    else
    {
      if ((state - 40) >= 4)
      {
        if (state == 30)
        {
          if (state == 11)
          {
            state = 30;
            goto LABEL_27;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionExecutor.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"state == LNActionExecutorStateConnecting"}];
          goto LABEL_8;
        }

        if (state != 80)
        {
          goto LABEL_27;
        }
      }

      if (state == 20 || state == 90 || state == 100)
      {
        goto LABEL_27;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionExecutor.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"state == LNActionExecutorStateResolving || state == LNActionExecutorStatePerforming || state == LNActionExecutorStateCompleted"}];
    }

LABEL_8:

    state = self->_state;
LABEL_27:
    [(LNActionExecutor *)self _logTransitionFromState:state toState:state];
    self->_state = state;
  }
}

- (void)dealloc
{
  [(LNActionExecutor *)self unsubscribeProgressObservation];
  v3.receiver = self;
  v3.super_class = LNActionExecutor;
  [(LNActionExecutor *)&v3 dealloc];
}

- (LNActionExecutor)initWithAction:(id)action connection:(id)connection options:(id)options
{
  actionCopy = action;
  connectionCopy = connection;
  optionsCopy = options;
  if (actionCopy)
  {
    if (connectionCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionExecutor.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (optionsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNActionExecutor.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"action"}];

  if (!connectionCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (optionsCopy)
  {
    goto LABEL_4;
  }

LABEL_16:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNActionExecutor.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_4:
  v38.receiver = self;
  v38.super_class = LNActionExecutor;
  v12 = [(LNActionExecutor *)&v38 init];
  if (!v12)
  {
    goto LABEL_13;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  identifier = v12->_identifier;
  v12->_identifier = uUID;

  v12->_lastCheckInLock._os_unfair_lock_opaque = 0;
  systemProtocols = [actionCopy systemProtocols];
  openEntitySystemProtocol = [MEMORY[0x1E69ACA48] openEntitySystemProtocol];
  if (([systemProtocols containsObject:openEntitySystemProtocol] & 1) == 0)
  {

    goto LABEL_9;
  }

  [actionCopy systemProtocols];
  connectionCopy2 = connection;
  v19 = v18 = connectionCopy;
  urlRepresentableProtocol = [MEMORY[0x1E69ACA48] urlRepresentableProtocol];
  v21 = [v19 containsObject:urlRepresentableProtocol];

  connectionCopy = v18;
  connection = connectionCopy2;

  if (!v21)
  {
LABEL_9:
    v22 = actionCopy;
    goto LABEL_10;
  }

  v22 = [actionCopy actionWithOpenWhenRun:0];
LABEL_10:
  action = v12->_action;
  v12->_action = v22;

  objc_storeStrong(&v12->_connection, connection);
  v24 = [optionsCopy copy];
  options = v12->_options;
  v12->_options = v24;

  systemProtocols2 = [actionCopy systemProtocols];
  cameraCaptureProtocol = [MEMORY[0x1E69ACA48] cameraCaptureProtocol];
  v28 = [systemProtocols2 containsObject:cameraCaptureProtocol];

  if (v28)
  {
    [(LNActionExecutorOptions *)v12->_options setOneShotForSpringBoardOnly:1];
  }

  v12->_state = 0;
  v29 = _os_activity_create(&dword_19763D000, "appintents:action executor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  activity = v12->_activity;
  v12->_activity = v29;

  v31 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100000];
  progress = v12->_progress;
  v12->_progress = v31;

  v12->_progressSubscriptionLock._os_unfair_lock_opaque = 0;
  v33 = v12;
LABEL_13:

  return v12;
}

- (NSString)appBundleIdentifier
{
  connection = [(LNActionExecutor *)self connection];
  appBundleIdentifier = [connection appBundleIdentifier];

  return appBundleIdentifier;
}

@end