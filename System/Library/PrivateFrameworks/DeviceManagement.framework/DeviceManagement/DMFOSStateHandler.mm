@interface DMFOSStateHandler
- (DMFOSStateHandler)initWithQueue:(id)queue name:(id)name stateHandlerBlock:(id)block;
- (os_state_data_s)_serializeState;
- (void)_serializeState;
- (void)dealloc;
@end

@implementation DMFOSStateHandler

- (DMFOSStateHandler)initWithQueue:(id)queue name:(id)name stateHandlerBlock:(id)block
{
  queueCopy = queue;
  nameCopy = name;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = DMFOSStateHandler;
  v11 = [(DMFOSStateHandler *)&v20 init];
  if (v11)
  {
    v12 = MEMORY[0x1E128DE70](blockCopy);
    block = v11->_block;
    v11->_block = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    objc_initWeak(&location, v11);
    objc_copyWeak(&v18, &location);
    v17 = queueCopy;
    v11->_handle = os_state_add_handler();

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v11;
}

uint64_t __58__DMFOSStateHandler_initWithQueue_name_stateHandlerBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(a2 + 16) & 0xFFFFFFFE) == 2)
  {
    v5 = os_transaction_create();
    v6 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__DMFOSStateHandler_initWithQueue_name_stateHandlerBlock___block_invoke_2;
    block[3] = &unk_1E86160F8;
    v11 = v5;
    v7 = v5;
    dispatch_async(v6, block);
    v8 = [WeakRetained _serializeState];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (os_state_data_s)_serializeState
{
  block = [(DMFOSStateHandler *)self block];
  v4 = block[2]();

  v12 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [v5 length];
    if ((v7 + 200) < 0x8000)
    {
      v9 = v7;
      v8 = malloc_type_calloc(1uLL, v7 + 200, 0x3FF68450uLL);
      v8->var0 = 1;
      v8->var1.var1 = v9;
      name = [(DMFOSStateHandler *)self name];
      [name getCString:v8->var3 maxLength:64 encoding:4];

      [v5 getBytes:v8->var4 length:v9];
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(DMFOSStateHandler *)self _serializeState];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [(DMFOSStateHandler *)self _serializeState];
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)dealloc
{
  handle = self->_handle;
  os_state_remove_handler();
  v4.receiver = self;
  v4.super_class = DMFOSStateHandler;
  [(DMFOSStateHandler *)&v4 dealloc];
}

- (void)_serializeState
{
  v9 = *MEMORY[0x1E69E9840];
  name = [self name];
  v5 = 138543618;
  v6 = name;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1DBFFF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Can't encode os_state data '%{public}@': %{public}@", &v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end