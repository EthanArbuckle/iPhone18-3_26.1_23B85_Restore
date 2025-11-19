@interface OperationState
- (BOOL)begin;
- (BOOL)cancelled;
- (OperationState)init;
- (void)cancel;
- (void)end;
@end

@implementation OperationState

- (OperationState)init
{
  v6.receiver = self;
  v6.super_class = OperationState;
  v2 = [(OperationState *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.cache_delete_services_operation_queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (BOOL)cancelled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(OperationState *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__OperationState_cancelled__block_invoke;
  v5[3] = &unk_1E7F030F8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __27__OperationState_cancelled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) operationCancelled];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = *(a1 + 32);

    return [v3 setOperationCancelled:0];
  }

  return result;
}

- (void)cancel
{
  v3 = [(OperationState *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__OperationState_cancel__block_invoke;
  block[3] = &unk_1E7F02D68;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)begin
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [(OperationState *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__OperationState_begin__block_invoke;
  v5[3] = &unk_1E7F030F8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __23__OperationState_begin__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) operationCancelled])
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v2 = *(a1 + 32);

    return [v2 setOperationCancelled:0];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [v4 operationRefcount] + 1;

    return [v4 setOperationRefcount:v5];
  }
}

- (void)end
{
  v3 = [(OperationState *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__OperationState_end__block_invoke;
  block[3] = &unk_1E7F02D68;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __21__OperationState_end__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOperationRefcount:{objc_msgSend(*(a1 + 32), "operationRefcount") - 1}];
  result = [*(a1 + 32) operationRefcount];
  if ((result & 0x80000000) != 0)
  {
    v3 = CDGetLogHandle("client");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_ERROR, "UNBALANCED: operation refcount went below zero, resetting to zero", v4, 2u);
    }

    return [*(a1 + 32) setOperationRefcount:0];
  }

  return result;
}

@end