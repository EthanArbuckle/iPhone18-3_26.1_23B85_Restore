@interface FCFetchedValueObservable
- (FCFetchedValueManager)manager;
- (FCFetchedValueObservable)init;
- (FCFetchedValueObservable)initWithManager:(id)a3 initialValue:(id)a4 equalityTest:(id)a5;
- (id)valueWithError:(id *)a3;
- (void)addObserver:(id)a3;
- (void)handleError:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation FCFetchedValueObservable

- (FCFetchedValueManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (FCFetchedValueObservable)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFetchedValueObservable init]";
    v10 = 2080;
    v11 = "FCFetchedValueObservable.m";
    v12 = 1024;
    v13 = 33;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFetchedValueObservable init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFetchedValueObservable)initWithManager:(id)a3 initialValue:(id)a4 equalityTest:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "manager != nil"];
    *buf = 136315906;
    v27 = "[FCFetchedValueObservable initWithManager:initialValue:equalityTest:]";
    v28 = 2080;
    v29 = "FCFetchedValueObservable.m";
    v30 = 1024;
    v31 = 40;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "equalityTest != nil"];
    *buf = 136315906;
    v27 = "[FCFetchedValueObservable initWithManager:initialValue:equalityTest:]";
    v28 = 2080;
    v29 = "FCFetchedValueObservable.m";
    v30 = 1024;
    v31 = 41;
    v32 = 2114;
    v33 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v25.receiver = self;
  v25.super_class = FCFetchedValueObservable;
  v11 = [(FCFetchedValueObservable *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_manager, v8);
    v13 = [v9 copy];
    value = v12->_value;
    v12->_value = v13;

    v15 = _Block_copy(v10);
    equalityTest = v12->_equalityTest;
    v12->_equalityTest = v15;

    v17 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v12->_observers;
    v12->_observers = v17;

    v19 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v12->_lock;
    v12->_lock = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setValue:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "value"];
    *buf = 136315906;
    *&buf[4] = "[FCFetchedValueObservable setValue:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCFetchedValueObservable.m";
    *&buf[22] = 1024;
    LODWORD(v19) = 58;
    WORD2(v19) = 2114;
    *(&v19 + 6) = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v19 = __Block_byref_object_copy__14;
  *(&v19 + 1) = __Block_byref_object_dispose__14;
  v20 = 0;
  v5 = [(FCFetchedValueObservable *)self lock];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__FCFetchedValueObservable_setValue___block_invoke;
  v15[3] = &unk_1E7C37408;
  v15[4] = self;
  v6 = v4;
  v16 = v6;
  v17 = buf;
  [v5 performWithLockSync:v15];

  v7 = [(FCFetchedValueObservable *)self manager];
  if (v7)
  {
    v8 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__FCFetchedValueObservable_setValue___block_invoke_2;
    block[3] = &unk_1E7C37138;
    v14 = buf;
    v12 = v7;
    v13 = v6;
    dispatch_async(v8, block);
  }

  _Block_object_dispose(buf, 8);
  v9 = *MEMORY[0x1E69E9840];
}

void __37__FCFetchedValueObservable_setValue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = [v2 equalityTest];
    v4 = v3[2](v3, *(*(a1 + 32) + 8), *(a1 + 40)) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [*(a1 + 40) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = 0;

  if (v4)
  {
    v13 = [*(a1 + 32) observers];
    v10 = [v13 allObjects];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void __37__FCFetchedValueObservable_setValue___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1[6] + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) fetchedObjectManager:a1[4] valueDidChange:{a1[5], v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleError:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "error"];
    *buf = 136315906;
    v12 = "[FCFetchedValueObservable handleError:]";
    v13 = 2080;
    v14 = "FCFetchedValueObservable.m";
    v15 = 1024;
    v16 = 90;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFetchedValueObservable *)self lock];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__FCFetchedValueObservable_handleError___block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  [v5 performWithLockSync:v9];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __40__FCFetchedValueObservable_handleError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) copy];
    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)valueWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [(FCFetchedValueObservable *)self lock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__FCFetchedValueObservable_valueWithError___block_invoke;
  v8[3] = &unk_1E7C39DB0;
  v8[4] = self;
  v8[5] = &v15;
  v8[6] = &v9;
  [v5 performWithLockSync:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __43__FCFetchedValueObservable_valueWithError___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 8));
  v2 = *(a1[4] + 48);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)addObserver:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v12 = "[FCFetchedValueObservable addObserver:]";
    v13 = 2080;
    v14 = "FCFetchedValueObservable.m";
    v15 = 1024;
    v16 = 134;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFetchedValueObservable *)self lock];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__FCFetchedValueObservable_addObserver___block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  [v5 performWithLockSync:v9];

  v7 = *MEMORY[0x1E69E9840];
}

void __40__FCFetchedValueObservable_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v12 = "[FCFetchedValueObservable removeObserver:]";
    v13 = 2080;
    v14 = "FCFetchedValueObservable.m";
    v15 = 1024;
    v16 = 144;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFetchedValueObservable *)self lock];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__FCFetchedValueObservable_removeObserver___block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  [v5 performWithLockSync:v9];

  v7 = *MEMORY[0x1E69E9840];
}

void __43__FCFetchedValueObservable_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

@end