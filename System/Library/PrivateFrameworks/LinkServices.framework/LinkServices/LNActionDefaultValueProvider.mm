@interface LNActionDefaultValueProvider
- (LNActionDefaultValueProvider)initWithActionIdentifier:(id)identifier actionMetadata:(id)metadata;
- (id)_loadActionMetadataWithProvider:(char)provider retry:(void *)retry error:;
- (id)loadActionMetadataWithRetry:(BOOL)retry error:(id *)error;
- (id)loadStaticDefaultValueForBundleIdentifier:(id)identifier error:(id *)error;
- (void)loadDefaultValuesWithCompletionHandler:(id)handler;
- (void)loadSuggestedFocusActionsWithSuggestionContext:(id)context completion:(id)completion;
@end

@implementation LNActionDefaultValueProvider

- (id)loadActionMetadataWithRetry:(BOOL)retry error:(id *)error
{
  actionMetadata = [(LNActionDefaultValueProvider *)self actionMetadata];

  if (actionMetadata)
  {
    actionMetadata2 = [(LNActionDefaultValueProvider *)self actionMetadata];
  }

  else
  {
    v9 = [[LNMetadataProvider alloc] initWithOptions:1];
    v15 = 0;
    actionMetadata2 = [(LNActionDefaultValueProvider *)self _loadActionMetadataWithProvider:v9 retry:retry error:&v15];
    v10 = v15;
    v11 = v10;
    if (actionMetadata2)
    {
      [(LNActionDefaultValueProvider *)self setActionMetadata:actionMetadata2];
      v12 = actionMetadata2;
    }

    else if (error)
    {
      v13 = v10;
      *error = v11;
    }
  }

  return actionMetadata2;
}

- (id)_loadActionMetadataWithProvider:(char)provider retry:(void *)retry error:
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (self)
  {
    actionIdentifier = [self actionIdentifier];
    bundleIdentifier = [actionIdentifier bundleIdentifier];
    actionIdentifier2 = [self actionIdentifier];
    v10ActionIdentifier = [actionIdentifier2 actionIdentifier];
    v41 = 0;
    v12 = [v7 actionForBundleIdentifier:bundleIdentifier andActionIdentifier:v10ActionIdentifier error:&v41];
    v13 = v41;

    if (v12)
    {
      self = v12;
LABEL_30:

      goto LABEL_31;
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNMetadataProviderErrorDomain" code:9000 userInfo:0];
    if ((provider & 1) == 0)
    {
      v20 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        actionIdentifier3 = [self actionIdentifier];
        *buf = 138543618;
        v43 = actionIdentifier3;
        v44 = 2114;
        v45 = v13;
        _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_ERROR, "Failed to find metadata for actionIdentifier %{public}@: %{public}@", buf, 0x16u);
      }

      if (retry)
      {
        if (v13)
        {
          v22 = v13;
        }

        else
        {
          v22 = v14;
        }

        self = 0;
        *retry = v22;
      }

      else
      {
        self = 0;
      }

      goto LABEL_29;
    }

    v40 = v13;
    v15 = [v7 bundlesWithError:&v40];
    v16 = v40;

    actionIdentifier4 = [self actionIdentifier];
    bundleIdentifier2 = [actionIdentifier4 bundleIdentifier];
    v19 = [v15 containsObject:bundleIdentifier2];

    if (v19)
    {
      v13 = v16;
    }

    else
    {
      v23 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        actionIdentifier5 = [self actionIdentifier];
        bundleIdentifier3 = [actionIdentifier5 bundleIdentifier];
        *buf = 138543362;
        v43 = bundleIdentifier3;
        _os_log_impl(&dword_19763D000, v23, OS_LOG_TYPE_INFO, "Forcing registration of %{public}@", buf, 0xCu);
      }

      actionIdentifier6 = [self actionIdentifier];
      bundleIdentifier4 = [actionIdentifier6 bundleIdentifier];
      v39 = v16;
      [v7 registerBundleWithIdentifier:bundleIdentifier4 error:&v39];
      v13 = v39;

      v28 = getLNLogCategoryMetadata();
      v29 = v28;
      if (v13)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          actionIdentifier7 = [self actionIdentifier];
          bundleIdentifier5 = [actionIdentifier7 bundleIdentifier];
          *buf = 138543618;
          v43 = bundleIdentifier5;
          v44 = 2114;
          v45 = v13;
          _os_log_impl(&dword_19763D000, v29, OS_LOG_TYPE_ERROR, "Failed to register %{public}@: %{public}@", buf, 0x16u);
        }

        if (retry)
        {
          v32 = v13;
          self = 0;
          *retry = v13;
        }

        else
        {
          self = 0;
        }

        goto LABEL_28;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        actionIdentifier8 = [self actionIdentifier];
        bundleIdentifier6 = [actionIdentifier8 bundleIdentifier];
        *buf = 138543362;
        v43 = bundleIdentifier6;
        _os_log_impl(&dword_19763D000, v29, OS_LOG_TYPE_DEFAULT, "Forced registration completed for %{public}@, retry metadata fetch", buf, 0xCu);
      }

      v13 = 0;
    }

    v35 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      actionIdentifier9 = [self actionIdentifier];
      *buf = 138543362;
      v43 = actionIdentifier9;
      _os_log_impl(&dword_19763D000, v35, OS_LOG_TYPE_DEFAULT, "Retrying metadata fetch for actionIdentifier %{public}@", buf, 0xCu);
    }

    self = [(LNActionDefaultValueProvider *)self _loadActionMetadataWithProvider:v7 retry:0 error:retry];
LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

LABEL_31:

  v37 = *MEMORY[0x1E69E9840];

  return self;
}

- (void)loadSuggestedFocusActionsWithSuggestionContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__LNActionDefaultValueProvider_loadSuggestedFocusActionsWithSuggestionContext_completion___block_invoke;
  block[3] = &unk_1E74B2580;
  v12 = contextCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = contextCopy;
  v10 = completionCopy;
  dispatch_async(v8, block);
}

void __90__LNActionDefaultValueProvider_loadSuggestedFocusActionsWithSuggestionContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 loadActionMetadataWithRetry:1 error:&v12];
  v4 = v12;
  if (v3)
  {
    v5 = [LNConnectionPolicy policyWithActionMetadata:v3];
    v11 = 0;
    v6 = [v5 connectionWithError:&v11];
    v7 = v11;
    if (v7)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __90__LNActionDefaultValueProvider_loadSuggestedFocusActionsWithSuggestionContext_completion___block_invoke_2;
      v9[3] = &unk_1E74B2558;
      v8 = *(a1 + 40);
      v10 = *(a1 + 48);
      [v6 fetchSuggestedFocusActionsForActionMetadata:v3 suggestionContext:v8 completionHandler:v9];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)loadDefaultValuesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v22 = 0;
  v5 = [(LNActionDefaultValueProvider *)self loadActionMetadataWithRetry:1 error:&v22];
  v6 = v22;
  if (v5)
  {
    actionIdentifier = [(LNActionDefaultValueProvider *)self actionIdentifier];
    bundleIdentifier = [actionIdentifier bundleIdentifier];
    v21 = 0;
    v9 = [(LNActionDefaultValueProvider *)self loadStaticDefaultValueForBundleIdentifier:bundleIdentifier error:&v21];
    v10 = v21;

    if (v9)
    {
      parameters = [v5 parameters];
      v12 = [parameters if_objectsPassingTest:&__block_literal_global_28];
      v13 = [parameters count];
      if (v13 == [v12 count])
      {
        handlerCopy[2](handlerCopy, v9, 0);
      }

      else
      {
        v14 = objc_alloc_init(LNConnectionPolicySignals);
        [(LNConnectionPolicySignals *)v14 setShouldExecuteActionOnApplicationBasedOnMetadata:0];
        v15 = [LNConnectionPolicy policyWithActionMetadata:v5 signals:v14];

        v20 = 0;
        v16 = [v15 connectionWithError:&v20];
        v17 = v20;
        if (v17)
        {
          (handlerCopy)[2](handlerCopy, 0, v17);
        }

        else
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __71__LNActionDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_2;
          v18[3] = &unk_1E74B2530;
          v19 = handlerCopy;
          [v16 fetchOptionsDefaultValueForAction:v9 completionHandler:v18];
        }
      }
    }

    else
    {
      (handlerCopy)[2](handlerCopy, 0, v10);
    }
  }

  else
  {
    (handlerCopy)[2](handlerCopy, 0, v6);
  }
}

- (id)loadStaticDefaultValueForBundleIdentifier:(id)identifier error:(id *)error
{
  v4 = [(LNActionDefaultValueProvider *)self loadActionMetadataWithRetry:1 error:error];
  v5 = v4;
  if (v4)
  {
    parameters = [v4 parameters];
    v7 = [parameters if_objectsPassingTest:&__block_literal_global_13685];

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__LNActionDefaultValueProvider_loadStaticDefaultValueForBundleIdentifier_error___block_invoke_2;
    v14[3] = &unk_1E74B2508;
    v15 = v8;
    v9 = v8;
    [v7 enumerateObjectsUsingBlock:v14];
    v10 = objc_alloc_init(LNConnectionPolicySignals);
    [(LNConnectionPolicySignals *)v10 setShouldExecuteActionOnApplicationBasedOnMetadata:0];
    v11 = [LNConnectionPolicy policyWithActionMetadata:v5 signals:v10];

    v12 = [v11 actionWithParameters:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __80__LNActionDefaultValueProvider_loadStaticDefaultValueForBundleIdentifier_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 typeSpecificMetadata];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AC598]];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [v3 valueType];
  v8 = v7;
  if (isKindOfClass)
  {
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v14 = v9;

    v15 = [v14 memberValueType];

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = [v3 valueType];
    }

    v17 = v16;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__LNActionDefaultValueProvider_loadStaticDefaultValueForBundleIdentifier_error___block_invoke_3;
    v22[3] = &unk_1E74B24E0;
    v23 = v17;
    v13 = v17;
    v18 = [v5 if_map:v22];
    v11 = [objc_alloc(MEMORY[0x1E69ACA88]) initWithValues:v18 memberValueType:v13];

    goto LABEL_14;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  v11 = 0;
  if ((v10 & 1) == 0 && v5)
  {
    v12 = objc_alloc(MEMORY[0x1E69ACA88]);
    v13 = [v3 valueType];
    v11 = [v12 initWithValue:v5 valueType:v13];
LABEL_14:
  }

  v19 = objc_alloc(MEMORY[0x1E69AC948]);
  v20 = [v3 name];
  v21 = [v19 initWithIdentifier:v20 value:v11];

  [*(a1 + 32) addObject:v21];
}

id __80__LNActionDefaultValueProvider_loadStaticDefaultValueForBundleIdentifier_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69ACA88];
  v4 = a2;
  v5 = [[v3 alloc] initWithValue:v4 valueType:*(a1 + 32)];

  return v5;
}

- (LNActionDefaultValueProvider)initWithActionIdentifier:(id)identifier actionMetadata:(id)metadata
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionDefaultValueProvider.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];
  }

  v15.receiver = self;
  v15.super_class = LNActionDefaultValueProvider;
  v10 = [(LNActionDefaultValueProvider *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionIdentifier, identifier);
    objc_storeStrong(&v11->_actionMetadata, metadata);
    v12 = v11;
  }

  return v11;
}

@end