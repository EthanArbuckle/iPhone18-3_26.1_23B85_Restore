@interface LNInProcessConnection
- (BOOL)refreshWithOptions:(id)options;
- (id)connectionInterface;
- (void)acquireAssertionsForConnectionOperation:(id)operation;
- (void)connectWithOptions:(id)options;
@end

@implementation LNInProcessConnection

uint64_t __64__LNInProcessConnection_allowsExtendingTimeoutOnProgressUpdates__block_invoke(uint64_t a1, void *a2)
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

- (void)acquireAssertionsForConnectionOperation:(id)operation
{
  v10 = *MEMORY[0x1E69E9840];
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    v8 = 138543362;
    v9 = logPrefix;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ Assertion is not required for in-process connection", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)connectionInterface
{
  connectionInterface = self->_connectionInterface;
  if (connectionInterface)
  {
    v3 = connectionInterface;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v5 = getLNAppContextClass_softClass;
    v23 = getLNAppContextClass_softClass;
    if (!getLNAppContextClass_softClass)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getLNAppContextClass_block_invoke;
      v18 = &unk_1E74B26D0;
      v19 = &v20;
      __getLNAppContextClass_block_invoke(&v15);
      v5 = v21[3];
    }

    v6 = v5;
    _Block_object_dispose(&v20, 8);
    v7 = objc_alloc_init(v5);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v8 = getLNClientConnectionClass_softClass;
    v23 = getLNClientConnectionClass_softClass;
    if (!getLNClientConnectionClass_softClass)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getLNClientConnectionClass_block_invoke;
      v18 = &unk_1E74B26D0;
      v19 = &v20;
      __getLNClientConnectionClass_block_invoke(&v15);
      v8 = v21[3];
    }

    v9 = v8;
    _Block_object_dispose(&v20, 8);
    v10 = [v8 alloc];
    queue = [(LNConnection *)self queue];
    v12 = [v10 initWithConnection:0 connectionListener:0 queue:queue appContext:v7];
    v13 = self->_connectionInterface;
    self->_connectionInterface = v12;

    v3 = self->_connectionInterface;
  }

  return v3;
}

- (BOOL)refreshWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = LNInProcessConnection;
  v4 = [(LNConnection *)&v6 refreshWithOptions:options];
  if (v4)
  {
    [(LNConnection *)self setConnected];
  }

  return v4;
}

- (void)connectWithOptions:(id)options
{
  v4.receiver = self;
  v4.super_class = LNInProcessConnection;
  [(LNConnection *)&v4 connectWithOptions:options];
  [(LNConnection *)self setConnected];
}

@end