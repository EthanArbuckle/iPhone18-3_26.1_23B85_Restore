@interface LACCachedExternalizedContext
- (LACCachedExternalizedContext)externalizedContextWithError:(id *)error;
- (LACCachedExternalizedContext)externalizedContextWithReply:(id)reply;
- (LACCachedExternalizedContext)initWithExternalizationDelegate:(id)delegate;
- (LACCachedExternalizedContext)initWithExternalizedContext:(id)context;
- (LACContextExternalizationObserving)externalizationObserver;
- (NSData)externalizedContext;
- (void)externalizedContext;
- (void)invalidateBecauseOfInvalidConnection:(BOOL)connection;
@end

@implementation LACCachedExternalizedContext

- (NSData)externalizedContext
{
  v7 = 0;
  v2 = [(LACCachedExternalizedContext *)self externalizedContextWithError:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = LACLogContext();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(LACCachedExternalizedContext *)v3 externalizedContext];
    }
  }

  return v2;
}

- (LACCachedExternalizedContext)initWithExternalizationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = LACCachedExternalizedContext;
  v5 = [(LACCachedExternalizedContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_externalizationDelegate, delegateCopy);
  }

  return v6;
}

- (LACCachedExternalizedContext)initWithExternalizedContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = LACCachedExternalizedContext;
  v6 = [(LACCachedExternalizedContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cachedExternalizedContext, context);
  }

  return v7;
}

- (LACCachedExternalizedContext)externalizedContextWithReply:(id)reply
{
  replyCopy = reply;
  cachedExternalizedContext = [(LACCachedExternalizedContext *)self cachedExternalizedContext];

  if (cachedExternalizedContext)
  {
    cachedExternalizedContext2 = [(LACCachedExternalizedContext *)self cachedExternalizedContext];
    replyCopy[2](replyCopy, cachedExternalizedContext2, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_externalizationDelegate);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_externalizationDelegate);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __61__LACCachedExternalizedContext_externalizedContextWithReply___block_invoke;
      v10[3] = &unk_1E7A96060;
      v10[4] = self;
      v11 = replyCopy;
      [v8 externalizedContextWithReply:v10];

      goto LABEL_6;
    }

    cachedExternalizedContext2 = [LACError errorWithCode:-1000 debugDescription:@"Missing externalizationDelegate"];
    (replyCopy)[2](replyCopy, 0, cachedExternalizedContext2);
  }

LABEL_6:
  return result;
}

void __61__LACCachedExternalizedContext_externalizedContextWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setCachedExternalizedContext:v7];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained contextWasExternalized:v7];
  }

  (*(*(a1 + 40) + 16))();
}

- (LACCachedExternalizedContext)externalizedContextWithError:(id *)error
{
  cachedExternalizedContext = [(LACCachedExternalizedContext *)self cachedExternalizedContext];

  if (cachedExternalizedContext)
  {
    if (error)
    {
      *error = 0;
    }

    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained(&self->_externalizationDelegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_loadWeakRetained(&self->_externalizationDelegate);
    v8 = [v7 conformsToProtocol:&unk_1F26AA2B8];

    if ((v8 & 1) == 0)
    {
      v9 = objc_loadWeakRetained(&self->_externalizationDelegate);
      v10 = [v9 synchronousExternalizedContextWithError:error];

      if (v10)
      {
        [(LACCachedExternalizedContext *)self setCachedExternalizedContext:v10];
        v11 = objc_loadWeakRetained(&self->_externalizationObserver);
        [v11 contextWasExternalized:v10];
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v12 = dispatch_semaphore_create(0);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __61__LACCachedExternalizedContext_externalizedContextWithError___block_invoke;
  v19 = &unk_1E7A96088;
  v21 = &v22;
  v13 = v12;
  v20 = v13;
  [(LACCachedExternalizedContext *)self externalizedContextWithReply:&v16];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v23[5];
  }

  _Block_object_dispose(&v22, 8);
LABEL_13:
  v14 = [(LACCachedExternalizedContext *)self cachedExternalizedContext:v16];

  return v14;
}

void __61__LACCachedExternalizedContext_externalizedContextWithError___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)invalidateBecauseOfInvalidConnection:(BOOL)connection
{
  cachedExternalizedContext = self->_cachedExternalizedContext;
  if (connection)
  {
    if (cachedExternalizedContext)
    {
      v5 = cachedExternalizedContext;
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = self->_cachedExternalizedContext;
  }

  else
  {
    v5 = 0;
  }

  self->_cachedExternalizedContext = v5;

  MEMORY[0x1EEE66BB8]();
}

- (LACContextExternalizationObserving)externalizationObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_externalizationObserver);

  return WeakRetained;
}

- (void)externalizedContext
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Failed to get externalized context: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end