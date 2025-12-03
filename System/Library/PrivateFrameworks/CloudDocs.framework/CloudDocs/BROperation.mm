@interface BROperation
- (BOOL)_finishIfCancelled;
- (BOOL)finishIfCancelled;
- (BROperation)init;
- (NSString)description;
- (id)remoteFPFSObject;
- (id)remoteObject;
- (void)_setExecuting:(BOOL)executing;
- (void)_setFinished:(BOOL)finished;
- (void)_setRemoteOperation:(id)operation;
- (void)cancel;
- (void)completedWithResult:(id)result error:(id)error;
- (void)dealloc;
- (void)finishWithResult:(id)result error:(id)error;
- (void)setRemoteOperationProxy:(id)proxy userInfo:(id)info;
- (void)start;
@end

@implementation BROperation

- (BROperation)init
{
  v25 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  v17.receiver = self;
  v17.super_class = BROperation;
  v2 = [(BROperation *)&v17 init];
  if (v2)
  {
    memset(v16, 0, sizeof(v16));
    __brc_create_section(0, "[BROperation init]", 30, 0, v16);
    v3 = brc_bread_crumbs("[BROperation init]", 30);
    v4 = brc_default_log(1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v19 = v16[0];
      v20 = 2112;
      v21 = v2;
      v22 = 2112;
      v23 = v3;
      _os_log_debug_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Creating %@%@", buf, 0x20u);
    }

    MEMORY[0x1B26FEF60](v2->_uuid);
    uuid_unparse_upper(v2->_uuid, out);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %s", objc_opt_class(), out];
    [(BROperation *)v2 setName:v5];

    name = [(BROperation *)v2 name];
    v7 = name;
    uTF8String = [name UTF8String];
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v10 = dispatch_queue_attr_make_initially_inactive(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(v10, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);

    queue = v2->_queue;
    v2->_queue = v12;

    __brc_leave_section(v16);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSString)description
{
  name = [(BROperation *)self name];

  if (name)
  {
    v4 = MEMORY[0x1E696AEC0];
    name2 = [(BROperation *)self name];
    if ([(BROperation *)self isExecuting])
    {
      v6 = @"executing";
    }

    else
    {
      isFinished = [(BROperation *)self isFinished];
      v6 = @"idle";
      if (isFinished)
      {
        v6 = @"finished";
      }
    }

    v7 = [v4 stringWithFormat:@"<%p %@ %@>", self, name2, v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BROperation;
    v7 = [(BROperation *)&v10 description];
  }

  return v7;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BROperation dealloc]", 51);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _executionTransation == nil%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_setFinished:(BOOL)finished
{
  if (self->_finished != finished)
  {
    [(BROperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = finished;

    [(BROperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)_setExecuting:(BOOL)executing
{
  if ((((self->_executionTransation == 0) ^ executing) & 1) == 0)
  {
    executingCopy = executing;
    [(BROperation *)self willChangeValueForKey:@"isExecuting"];
    if (executingCopy)
    {
      v5 = os_transaction_create();
    }

    else
    {
      v5 = 0;
    }

    executionTransation = self->_executionTransation;
    self->_executionTransation = v5;

    [(BROperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)start
{
  dispatch_activate(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__BROperation_start__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_async(queue, block);
}

void __20__BROperation_start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  __brc_create_section(0, "[BROperation start]_block_invoke", 101, 0, v6);
  v2 = brc_bread_crumbs("[BROperation start]_block_invoke", 101);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    *buf = 134218498;
    v8 = v6[0];
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v2;
    _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Starting %@%@", buf, 0x20u);
  }

  [*(a1 + 32) _setExecuting:1];
  if (([*(a1 + 32) _finishIfCancelled] & 1) == 0)
  {
    [*(a1 + 32) main];
  }

  __brc_leave_section(v6);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] cancelling %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __21__BROperation_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setRemoteOperation:0];
  result = [*(a1 + 32) waitForRemoteToBeCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _finishIfCancelled];
  }

  return result;
}

- (BOOL)_finishIfCancelled
{
  if (self->_finished)
  {
    LOBYTE(isCancelled) = 1;
  }

  else if (self->_executionTransation)
  {
    isCancelled = [(BROperation *)self isCancelled];
    if (isCancelled)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      [(BROperation *)self finishWithResult:0 error:v4];

      LOBYTE(isCancelled) = 1;
    }
  }

  else
  {
    LOBYTE(isCancelled) = 0;
  }

  return isCancelled;
}

- (BOOL)finishIfCancelled
{
  v25 = *MEMORY[0x1E69E9840];
  isCancelled = [(BROperation *)self isCancelled];
  if (isCancelled)
  {
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __32__BROperation_finishIfCancelled__block_invoke;
    v16[3] = &unk_1E7A14798;
    v16[4] = self;
    v5 = queue;
    v6 = v16;
    v7 = objc_autoreleasePoolPush();
    v17 = 0uLL;
    v18 = 0;
    __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v17);
    v8 = brc_bread_crumbs("dispatch_async_with_logs", 283);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = v17;
      label = dispatch_queue_get_label(v5);
      *block = 134218498;
      *&block[4] = v14;
      *&block[12] = 2080;
      *&block[14] = label;
      *&block[22] = 2112;
      v20 = v8;
      _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
    }

    v23 = v17;
    v24 = v18;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = __dispatch_async_with_logs_block_invoke;
    v20 = &unk_1E7A14A30;
    v10 = v5;
    v21 = v10;
    v11 = v6;
    v22 = v11;
    dispatch_async(v10, block);

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x1E69E9840];
  return isCancelled;
}

- (id)remoteObject
{
  v3 = +[BRDaemonConnection defaultConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__BROperation_remoteObject__block_invoke;
  v6[3] = &unk_1E7A14830;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (id)remoteFPFSObject
{
  v3 = +[BRDaemonConnection defaultConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__BROperation_remoteFPFSObject__block_invoke;
  v6[3] = &unk_1E7A14830;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (void)completedWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__BROperation_completedWithResult_error___block_invoke;
  block[3] = &unk_1E7A149E0;
  block[4] = self;
  v12 = resultCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultCopy;
  dispatch_async(queue, block);
}

void __41__BROperation_completedWithResult_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _finishIfCancelled] & 1) == 0)
  {
    memset(v8, 0, sizeof(v8));
    __brc_create_section(0, "[BROperation completedWithResult:error:]_block_invoke", 182, 0, v8);
    v2 = brc_bread_crumbs("[BROperation completedWithResult:error:]_block_invoke", 182);
    v3 = brc_default_log(1, 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 134219010;
      v10 = v8[0];
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v2;
      _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx finishing %@ with result %@ error %@%@", buf, 0x34u);
    }

    [*(a1 + 32) finishWithResult:*(a1 + 40) error:*(a1 + 48)];
    __brc_leave_section(v8);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)result error:(id)error
{
  [(BROperation *)self _setExecuting:0, error];
  [(BROperation *)self _setFinished:1];

  [(BROperation *)self _setRemoteOperation:0];
}

- (void)_setRemoteOperation:(id)operation
{
  operationCopy = operation;
  remoteOperation = self->_remoteOperation;
  if (operationCopy && remoteOperation)
  {
    [(BROperation *)&self->_remoteOperation _setRemoteOperation:?];
    remoteOperation = v10;
  }

  [remoteOperation invalidate];
  if (self->_finished)
  {
    if (!operationCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  isCancelled = [(BROperation *)self isCancelled];
  if (operationCopy && (isCancelled & 1) != 0)
  {
LABEL_9:
    [operationCopy invalidate];

    operationCopy = 0;
  }

LABEL_10:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__BROperation__setRemoteOperation___block_invoke;
  v9[3] = &unk_1E7A14830;
  v9[4] = self;
  v7 = [operationCopy remoteObjectProxyWithErrorHandler:v9];
  v8 = self->_remoteOperation;
  self->_remoteOperation = v7;
}

- (void)setRemoteOperationProxy:(id)proxy userInfo:(id)info
{
  proxyCopy = proxy;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__BROperation_setRemoteOperationProxy_userInfo___block_invoke;
  v8[3] = &unk_1E7A14A08;
  v8[4] = self;
  v9 = proxyCopy;
  v7 = proxyCopy;
  dispatch_async(queue, v8);
}

- (void)_setRemoteOperation:(void *)a1 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = brc_bread_crumbs("[BROperation _setRemoteOperation:]", 199);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !_remoteOperation || !proxy%@", &v7, 0xCu);
  }

  *a2 = *a1;
  v6 = *MEMORY[0x1E69E9840];
}

@end