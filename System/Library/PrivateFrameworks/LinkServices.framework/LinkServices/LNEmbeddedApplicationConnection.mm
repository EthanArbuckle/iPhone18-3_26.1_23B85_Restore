@interface LNEmbeddedApplicationConnection
+ (NSOperationQueue)sharedOpenApplicationOperationQueue;
- (BOOL)refreshWithOptions:(id)options;
- (id)linkConnectionActionWithOpenApplicationIdentifier:(id)identifier connectionAction:(id)action connectionOperation:(id)operation;
- (void)connectWithOptions:(id)options;
- (void)enqueueOpenApplicationOperation:(id)operation;
- (void)openApplicationWithOptions:(id)options connectionAction:(id)action completionHandler:(id)handler;
- (void)resumeOpenApplicationOperationQueue;
@end

@implementation LNEmbeddedApplicationConnection

- (void)resumeOpenApplicationOperationQueue
{
  sharedOpenApplicationOperationQueue = [objc_opt_class() sharedOpenApplicationOperationQueue];
  [sharedOpenApplicationOperationQueue setSuspended:0];
}

+ (NSOperationQueue)sharedOpenApplicationOperationQueue
{
  if (sharedOpenApplicationOperationQueue_onceToken != -1)
  {
    dispatch_once(&sharedOpenApplicationOperationQueue_onceToken, &__block_literal_global_4319);
  }

  v3 = sharedOpenApplicationOperationQueue_operationQueue;

  return v3;
}

- (void)enqueueOpenApplicationOperation:(id)operation
{
  operationCopy = operation;
  if (!operationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEmbeddedApplicationConnection.m" lineNumber:467 description:{@"Invalid parameter not satisfying: %@", @"operation"}];
  }

  sharedOpenApplicationOperationQueue = [objc_opt_class() sharedOpenApplicationOperationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__LNEmbeddedApplicationConnection_enqueueOpenApplicationOperation___block_invoke;
  v9[3] = &unk_1E74B1930;
  v9[4] = self;
  v10 = operationCopy;
  v7 = operationCopy;
  [sharedOpenApplicationOperationQueue addOperationWithBlock:v9];
  [sharedOpenApplicationOperationQueue setSuspended:1];
}

void __67__LNEmbeddedApplicationConnection_enqueueOpenApplicationOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_async(v2, *(a1 + 40));
}

- (id)linkConnectionActionWithOpenApplicationIdentifier:(id)identifier connectionAction:(id)action connectionOperation:(id)operation
{
  identifierCopy = identifier;
  actionCopy = action;
  operationCopy = operation;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v11 = getUILinkConnectionActionClass_softClass;
  v30 = getUILinkConnectionActionClass_softClass;
  if (!getUILinkConnectionActionClass_softClass)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __getUILinkConnectionActionClass_block_invoke;
    v26[3] = &unk_1E74B26D0;
    v26[4] = &v27;
    __getUILinkConnectionActionClass_block_invoke(v26);
    v11 = v28[3];
  }

  v12 = v11;
  _Block_object_dispose(&v27, 8);
  v13 = [v11 instancesRespondToSelector:sel_initWithAction_responseQueue_responseHandler_];
  v14 = [v11 alloc];
  if (v13)
  {
    queue = [(LNConnection *)self queue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke;
    v23[3] = &unk_1E74B0FB8;
    v23[4] = self;
    v24 = identifierCopy;
    v25 = operationCopy;
    v16 = operationCopy;
    v17 = identifierCopy;
    v18 = [v14 initWithAction:actionCopy responseQueue:queue responseHandler:v23];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke_65;
    v20[3] = &unk_1E74B0FB8;
    v20[4] = self;
    v21 = identifierCopy;
    v22 = operationCopy;
    v17 = operationCopy;
    queue = identifierCopy;
    v18 = [v14 initWithAction:actionCopy responseHandler:v20];
  }

  return v18;
}

void __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  os_activity_scope_enter(v4, &v9);

  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) logPrefix];
    v7 = *(a1 + 40);
    *buf = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Received UILinkConnectionActionResponse callback on the response queue with action response: %{public}@", buf, 0x20u);
  }

  [*(a1 + 48) finishWithActionResponse:v3 error:0];
  os_activity_scope_leave(&v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke_65(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = [*(a1 + 32) activity];
  os_activity_scope_enter(v4, &state);

  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) logPrefix];
    v7 = *(a1 + 40);
    *buf = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v3;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Received UILinkConnectionActionResponse callback with action response: %{public}@", buf, 0x20u);
  }

  v8 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke_66;
  v11[3] = &unk_1E74B27A0;
  v12 = *(a1 + 48);
  v13 = v3;
  v9 = v3;
  dispatch_async(v8, v11);

  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)openApplicationWithOptions:(id)options connectionAction:(id)action completionHandler:(id)handler
{
  v99 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  actionCopy = action;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEmbeddedApplicationConnection.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v14 = [v12 stringWithFormat:@"Open App Request ID: %@", uUID];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke;
  aBlock[3] = &unk_1E74B0F18;
  aBlock[4] = self;
  v15 = v14;
  v89 = v15;
  v16 = handlerCopy;
  v90 = v16;
  v17 = _Block_copy(aBlock);
  v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([optionsCopy sceneless])
  {
    v18 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier = [(LNConnection *)self bundleIdentifier];
    v87 = 0;
    allObjects = [v18 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v87];
    v21 = v87;

    if (v21)
    {
      v17[2](v17, 0, v21);
LABEL_11:

      v27 = actionCopy;
      goto LABEL_54;
    }

    preflightManager = [(LNEmbeddedApplicationConnection *)self preflightManager];
    v25 = [preflightManager requiresPreflightForApplicationRecord:allObjects];

    if (v25)
    {
      v26 = LNConnectionErrorWithCode(1700);
      v17[2](v17, 0, v26);

      goto LABEL_11;
    }

    v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(allObjects, "supportsMultiwindow")}];
    [v76 setObject:v45 forKeyedSubscript:*MEMORY[0x1E69D4460]];

    goto LABEL_29;
  }

  actionSource = [optionsCopy actionSource];
  if (actionSource == 7)
  {
    v23 = MEMORY[0x1E69D4438];
  }

  else
  {
    if (actionSource != 6)
    {
      goto LABEL_14;
    }

    v23 = MEMORY[0x1E69D4428];
  }

  [v76 setObject:*v23 forKeyedSubscript:*MEMORY[0x1E699F940]];
LABEL_14:
  if (([optionsCopy activateSuspended] & 1) == 0)
  {
    v71 = v16;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    executors = [(LNConnection *)self executors];
    keyEnumerator = [executors keyEnumerator];
    allObjects = [keyEnumerator allObjects];

    v30 = [allObjects countByEnumeratingWithState:&v83 objects:v98 count:16];
    if (v30)
    {
      v31 = v30;
      v72 = v17;
      selfCopy = self;
      v70 = v15;
      v33 = *v84;
      v75 = *MEMORY[0x1E69D4440];
      v74 = *MEMORY[0x1E699F940];
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v84 != v33)
          {
            objc_enumerationMutation(allObjects);
          }

          v35 = *(*(&v83 + 1) + 8 * i);
          executors2 = [(LNConnection *)selfCopy executors];
          v37 = [executors2 objectForKey:v35];

          delegate = [v37 delegate];
          v39 = objc_opt_respondsToSelector();

          if (v39)
          {
            delegate2 = [v37 delegate];
            v41 = [delegate2 progressIsPersistentInSystemApertureForExecutor:v37];

            if (v41)
            {
              [v76 setObject:v75 forKeyedSubscript:v74];
            }
          }

          delegate3 = [v37 delegate];
          v43 = objc_opt_respondsToSelector();

          if (v43)
          {
            delegate4 = [v37 delegate];
            [delegate4 executorWillLaunchApplicationInForeground:v37];
          }
        }

        v31 = [allObjects countByEnumeratingWithState:&v83 objects:v98 count:16];
      }

      while (v31);
      v15 = v70;
      v16 = v71;
      v17 = v72;
      self = selfCopy;
    }

LABEL_29:
  }

  if ([optionsCopy actionSource] != 8 && objc_msgSend(optionsCopy, "actionSource") != 6)
  {
    [v76 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69D4450]];
  }

  if ([optionsCopy isCameraCaptureAction])
  {
    [v76 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69D4450]];
  }

  assistantDismissalPolicy = [optionsCopy assistantDismissalPolicy];
  if (assistantDismissalPolicy == 1)
  {
    v47 = MEMORY[0x1E695E118];
    goto LABEL_39;
  }

  if (assistantDismissalPolicy == 2)
  {
    v47 = MEMORY[0x1E695E110];
LABEL_39:
    [v76 setObject:v47 forKeyedSubscript:*MEMORY[0x1E69D4450]];
  }

  v48 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "activateSuspended")}];
  [v76 setObject:v48 forKeyedSubscript:*MEMORY[0x1E699F8E8]];

  v49 = MEMORY[0x1E695E118];
  [v76 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F990]];
  [v76 setObject:v49 forKeyedSubscript:*MEMORY[0x1E699F970]];
  if ([optionsCopy sceneless])
  {
    v50 = &unk_1F0BD7168;
  }

  else
  {
    v50 = &unk_1F0BD7180;
  }

  [v76 setObject:v50 forKeyedSubscript:*MEMORY[0x1E699F930]];
  if ([optionsCopy isCameraCaptureAction])
  {
    [v76 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"__LaunchCameraCapture"];
  }

  v51 = [LNOpenApplicationConnectionOperation alloc];
  openApplicationPriority = [optionsCopy openApplicationPriority];
  queue2 = [(LNConnection *)self queue];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_55;
  v81[3] = &unk_1E74B0F40;
  v81[4] = self;
  v82 = v17;
  v54 = [(LNOpenApplicationConnectionOperation *)v51 initWithPriority:openApplicationPriority queue:queue2 completionHandler:v81];

  if (actionCopy)
  {
    v55 = [(LNEmbeddedApplicationConnection *)self linkConnectionActionWithOpenApplicationIdentifier:v15 connectionAction:actionCopy connectionOperation:v54];
    v97 = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
    [v76 setObject:v56 forKeyedSubscript:*MEMORY[0x1E699F8D0]];
  }

  actionSourceOverride = [optionsCopy actionSourceOverride];

  if (actionSourceOverride)
  {
    v58 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      actionSourceOverride2 = [optionsCopy actionSourceOverride];
      *buf = 138543874;
      v92 = logPrefix;
      v93 = 2114;
      selfCopy2 = self;
      v95 = 2114;
      v96 = actionSourceOverride2;
      _os_log_impl(&dword_19763D000, v58, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Overriding launch origin: %{public}@", buf, 0x20u);
    }

    actionSourceOverride3 = [optionsCopy actionSourceOverride];
    [v76 setObject:actionSourceOverride3 forKeyedSubscript:*MEMORY[0x1E699F940]];
  }

  v62 = [MEMORY[0x1E699FB70] optionsWithDictionary:v76];
  v63 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    logPrefix2 = [(LNConnection *)self logPrefix];
    *buf = 138543874;
    v92 = logPrefix2;
    v93 = 2114;
    selfCopy2 = v15;
    v95 = 2114;
    v96 = v76;
    _os_log_impl(&dword_19763D000, v63, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Opening app using FBSOpenApplicationService with options: %{public}@", buf, 0x20u);
  }

  openApplicationService = [(LNEmbeddedApplicationConnection *)self openApplicationService];
  bundleIdentifier2 = [(LNConnection *)self bundleIdentifier];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_58;
  v77[3] = &unk_1E74B0F90;
  v77[4] = self;
  v78 = v15;
  v79 = v54;
  v27 = actionCopy;
  v80 = actionCopy;
  v67 = v54;
  [openApplicationService openApplication:bundleIdentifier2 withOptions:v62 completion:v77];

LABEL_54:
  v68 = *MEMORY[0x1E69E9840];
}

void __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) logPrefix];
      v9 = *(a1 + 40);
      v19 = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v5;
      v10 = "%{public}@ %{public}@ completed with response: %{public}@";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
LABEL_7:
      v15 = 32;
LABEL_8:
      _os_log_impl(&dword_19763D000, v11, v12, v10, &v19, v15);
    }
  }

  else
  {
    v13 = getLNLogCategoryConnection();
    v7 = v13;
    if (!v6)
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      v8 = [*(a1 + 32) logPrefix];
      v18 = *(a1 + 40);
      v19 = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v18;
      v10 = "%{public}@ %{public}@ completed with no response and no error";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
      v15 = 22;
      goto LABEL_8;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logPrefix];
      v14 = *(a1 + 40);
      v19 = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v6;
      v10 = "%{public}@ %{public}@ completed with error: %{public}@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

LABEL_9:

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v16);
  [*(a1 + 32) resumeOpenApplicationOperationQueue];

  v17 = *MEMORY[0x1E69E9840];
}

void __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_2;
  block[3] = &unk_1E74B2580;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_58(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = [a1[4] activity];
  os_activity_scope_enter(v7, &state);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_2_59;
  v15[3] = &unk_1E74B0F68;
  v15[4] = a1[4];
  v8 = v6;
  v16 = v8;
  v9 = v5;
  v17 = v9;
  v18 = a1[5];
  v19 = a1[6];
  v20 = a1[7];
  v10 = _Block_copy(v15);
  v10[2](v10, v11, v12, v13, v14);

  os_activity_scope_leave(&state);
}

void __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_2_59(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_3;
  block[3] = &unk_1E74B0F68;
  v3 = a1[5];
  v4 = a1[6];
  v8 = a1[4];
  v5 = a1[7];
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  v12 = a1[8];
  v13 = a1[9];
  dispatch_async(v2, block);
}

uint64_t __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_3(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 48) logPrefix];
      v4 = *(a1 + 56);
      v5 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v3;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2114;
      *&buf[24] = v5;
      _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Failed to open app with error: %{public}@", buf, 0x20u);
    }

    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    goto LABEL_5;
  }

  v10 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [*(a1 + 48) logPrefix];
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    *&buf[22] = 2114;
    *&buf[24] = v13;
    _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Successfully opened app with process handle %{public}@", buf, 0x20u);
  }

  v14 = *(a1 + 72);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 48) logPrefix];
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2114;
      *&buf[24] = v18;
      v19 = "%{public}@ [%{public}@]: OneShot actions don't need to wait for a response, finishing %{public}@";
      v20 = v15;
      v21 = 32;
LABEL_20:
      _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v22 = *(a1 + 72);
  v15 = getLNLogCategoryConnection();
  v23 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (!v22)
  {
    if (v23)
    {
      v16 = [*(a1 + 48) logPrefix];
      v29 = *(a1 + 56);
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      v19 = "%{public}@ [%{public}@]: Completing with nil response because connection action wasn't provided";
      v20 = v15;
      v21 = 22;
      goto LABEL_20;
    }

LABEL_21:

    v6 = *(a1 + 64);
    v7 = 0;
LABEL_5:
    result = [v6 finishWithActionResponse:0 error:v7];
    goto LABEL_6;
  }

  if (v23)
  {
    v24 = [*(a1 + 48) logPrefix];
    v25 = *(a1 + 56);
    v26 = *(a1 + 72);
    *buf = 138543874;
    *&buf[4] = v24;
    *&buf[12] = 2114;
    *&buf[14] = v25;
    *&buf[22] = 2114;
    *&buf[24] = v26;
    _os_log_impl(&dword_19763D000, v15, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Completion will be handled by UILinkConnectionActionResponse to UILinkConnectionAction(%{public}@)", buf, 0x20u);
  }

  v27 = [*(a1 + 40) auditToken];
  v28 = v27;
  if (v27)
  {
    [v27 realToken];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v30 = *(a1 + 48);
  *buf = v35;
  *&buf[16] = v36;
  [v30 setAuditToken:{buf, v35, v36}];

  v31 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [*(a1 + 48) logPrefix];
    v33 = *(a1 + 56);
    v34 = *(a1 + 64);
    *buf = 138543874;
    *&buf[4] = v32;
    *&buf[12] = 2114;
    *&buf[14] = v33;
    *&buf[22] = 2114;
    *&buf[24] = v34;
    _os_log_impl(&dword_19763D000, v31, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Enqueuing %{public}@ in order to acquire an assertion", buf, 0x20u);
  }

  result = [*(a1 + 48) enqueueConnectionOperation:*(a1 + 64)];
LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)refreshWithOptions:(id)options
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = LNEmbeddedApplicationConnection;
  v5 = [(LNConnection *)&v17 refreshWithOptions:optionsCopy];
  if (v5)
  {
    queue = [(LNConnection *)self queue];
    dispatch_assert_queue_V2(queue);

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

    v10 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      *buf = 138543618;
      v19 = logPrefix;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_INFO, "%{public}@ refreshWithOptions: %{public}@", buf, 0x16u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke;
    v15[3] = &unk_1E74B27A0;
    v15[4] = self;
    v16 = v9;
    v12 = v9;
    [(LNEmbeddedApplicationConnection *)self enqueueOpenApplicationOperation:v15];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke_2;
  v4[3] = &unk_1E74B0EC8;
  v4[4] = v2;
  return [v2 openApplicationWithOptions:v1 connectionAction:0 completionHandler:v4];
}

void __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) state] == 2)
  {
    if (v6)
    {
      [*(a1 + 32) setDisconnectedWithError:v6];
    }

    else
    {
      objc_initWeak(location, *(a1 + 32));
      v11 = *(a1 + 32);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke_14;
      v14[3] = &unk_1E74B0EF0;
      objc_copyWeak(&v16, location);
      v15 = 0;
      [v11 setUpConnectionContextWithCompletionHandler:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v7 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logPrefix];
      v9 = [*(a1 + 32) state];
      if ((v9 - 1) > 2)
      {
        v10 = @"Not Connected";
      }

      else
      {
        v10 = off_1E74B24A0[v9 - 1];
      }

      v12 = v10;
      *location = 138543618;
      *&location[4] = v8;
      v18 = 2114;
      v19 = v12;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke_14(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "Failed to set connection context: %@", &v9, 0xCu);
    }

    v7 = [v5 xpcConnection];
    [v7 invalidate];

    [v5 setDisconnectedWithError:*(a1 + 32)];
  }

  else
  {
    [WeakRetained setConnected];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectWithOptions:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = LNEmbeddedApplicationConnection;
  [(LNConnection *)&v14 connectWithOptions:optionsCopy];
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = optionsCopy;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    *buf = 138543618;
    v16 = logPrefix;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_INFO, "%{public}@ connectWithOptions: %{public}@", buf, 0x16u);
  }

  if (![(LNConnection *)self connectUsingProcessIdentifierWithOptions:v6])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__LNEmbeddedApplicationConnection_connectWithOptions___block_invoke;
    v12[3] = &unk_1E74B27A0;
    v12[4] = self;
    v13 = v8;
    [(LNEmbeddedApplicationConnection *)self enqueueOpenApplicationOperation:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __54__LNEmbeddedApplicationConnection_connectWithOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 newConnectionAction];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__LNEmbeddedApplicationConnection_connectWithOptions___block_invoke_2;
  v5[3] = &unk_1E74B0EC8;
  v5[4] = *(a1 + 32);
  [v2 openApplicationWithOptions:v3 connectionAction:v4 completionHandler:v5];
}

void __54__LNEmbeddedApplicationConnection_connectWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) state] == 1)
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 handleConnectionActionResponse:v5];
    }

    else
    {
      [v7 setDisconnectedWithError:v6];
    }
  }

  else
  {
    v8 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) logPrefix];
      v10 = [*(a1 + 32) state];
      if ((v10 - 1) > 2)
      {
        v11 = @"Not Connected";
      }

      else
      {
        v11 = off_1E74B24A0[v10 - 1];
      }

      v12 = v11;
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v12;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __70__LNEmbeddedApplicationConnection_sharedOpenApplicationOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedOpenApplicationOperationQueue_operationQueue;
  sharedOpenApplicationOperationQueue_operationQueue = v0;

  v2 = sharedOpenApplicationOperationQueue_operationQueue;

  return [v2 setMaxConcurrentOperationCount:1];
}

@end