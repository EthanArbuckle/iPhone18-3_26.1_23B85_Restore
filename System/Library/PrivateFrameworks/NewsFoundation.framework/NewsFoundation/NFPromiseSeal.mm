@interface NFPromiseSeal
- (NFPromiseSeal)init;
- (NFPromiseSeal)initWithError:(id)error;
- (NFPromiseSeal)initWithValue:(id)value;
- (void)alwaysOn:(id)on always:(id)always;
- (void)dealloc;
- (void)registerHandler:(id)handler;
- (void)resolveOn:(id)on reject:(id)reject resolve:(id)resolve;
- (void)seal:(id)seal error:(id)error resolution:(unint64_t)resolution;
@end

@implementation NFPromiseSeal

- (NFPromiseSeal)init
{
  v9.receiver = self;
  v9.super_class = NFPromiseSeal;
  v2 = [(NFPromiseSeal *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = objc_opt_new();
    handlers = v3->_handlers;
    v3->_handlers = v4;

    v6 = objc_alloc_init(NFUnfairLock);
    lock = v3->_lock;
    v3->_lock = v6;
  }

  return v3;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unexpected side effects of deallocating a seal with handlers"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (NFPromiseSeal)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = NFPromiseSeal;
  v6 = [(NFPromiseSeal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
    v7->_state = 1;
  }

  return v7;
}

- (NFPromiseSeal)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = NFPromiseSeal;
  v6 = [(NFPromiseSeal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    v7->_state = 1;
  }

  return v7;
}

- (void)resolveOn:(id)on reject:(id)reject resolve:(id)resolve
{
  onCopy = on;
  rejectCopy = reject;
  resolveCopy = resolve;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__NFPromiseSeal_resolveOn_reject_resolve___block_invoke;
  v14[3] = &unk_27997DE60;
  v15 = onCopy;
  v16 = resolveCopy;
  v17 = rejectCopy;
  v11 = rejectCopy;
  v12 = resolveCopy;
  v13 = onCopy;
  [(NFPromiseSeal *)self registerHandler:v14];
}

void __42__NFPromiseSeal_resolveOn_reject_resolve___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 == 1)
  {
    v10 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__NFPromiseSeal_resolveOn_reject_resolve___block_invoke_3;
    v13[3] = &unk_27997DE10;
    v9 = &v15;
    v15 = *(a1 + 48);
    v11 = &v14;
    v14 = v8;
    v12 = v13;
    goto LABEL_5;
  }

  if (!a2)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__NFPromiseSeal_resolveOn_reject_resolve___block_invoke_2;
    v16[3] = &unk_27997DE10;
    v9 = &v18;
    v10 = *(a1 + 32);
    v18 = *(a1 + 40);
    v11 = &v17;
    v17 = v7;
    v12 = v16;
LABEL_5:
    NFPromiseInvokeOnQueue(v10, v12);
  }
}

- (void)alwaysOn:(id)on always:(id)always
{
  onCopy = on;
  alwaysCopy = always;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__NFPromiseSeal_alwaysOn_always___block_invoke;
  v10[3] = &unk_27997DEB0;
  v11 = onCopy;
  v12 = alwaysCopy;
  v8 = alwaysCopy;
  v9 = onCopy;
  [(NFPromiseSeal *)self registerHandler:v10];
}

void __33__NFPromiseSeal_alwaysOn_always___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__NFPromiseSeal_alwaysOn_always___block_invoke_2;
  v2[3] = &unk_27997DE88;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  NFPromiseInvokeOnQueue(v1, v2);
}

- (void)registerHandler:(id)handler
{
  handlerCopy = handler;
  lock = [(NFPromiseSeal *)self lock];
  [lock lock];

  state = [(NFPromiseSeal *)self state];
  if (state)
  {
    if (state != 1)
    {
      goto LABEL_6;
    }

    error = [(NFPromiseSeal *)self error];
    v7 = error != 0;

    value = [(NFPromiseSeal *)self value];
    error2 = [(NFPromiseSeal *)self error];
    handlerCopy[2](handlerCopy, v7, value, error2);
  }

  else
  {
    value = [(NFPromiseSeal *)self handlers];
    error2 = MEMORY[0x25F880B10](handlerCopy);
    [value addObject:error2];
  }

LABEL_6:
  lock2 = [(NFPromiseSeal *)self lock];
  [lock2 unlock];
}

- (void)seal:(id)seal error:(id)error resolution:(unint64_t)resolution
{
  v28 = *MEMORY[0x277D85DE8];
  sealCopy = seal;
  errorCopy = error;
  lock = [(NFPromiseSeal *)self lock];
  [lock lock];

  if ([(NFPromiseSeal *)self state]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFPromiseSeal seal:error:resolution:];
  }

  if (![(NFPromiseSeal *)self state])
  {
    [(NFPromiseSeal *)self setState:1];
    v22 = sealCopy;
    [(NFPromiseSeal *)self setValue:sealCopy];
    [(NFPromiseSeal *)self setError:errorCopy];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    handlers = [(NFPromiseSeal *)self handlers];
    v12 = [handlers countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(handlers);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          value = [(NFPromiseSeal *)self value];
          error = [(NFPromiseSeal *)self error];
          (*(v16 + 16))(v16, resolution, value, error);

          ++v15;
        }

        while (v13 != v15);
        v13 = [handlers countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    handlers2 = [(NFPromiseSeal *)self handlers];
    [handlers2 removeAllObjects];

    sealCopy = v22;
  }

  lock2 = [(NFPromiseSeal *)self lock];
  [lock2 unlock];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)seal:error:resolution:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Seal must be pending to seal"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end