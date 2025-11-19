@interface NFPromiseSeal
- (NFPromiseSeal)init;
- (NFPromiseSeal)initWithError:(id)a3;
- (NFPromiseSeal)initWithValue:(id)a3;
- (void)alwaysOn:(id)a3 always:(id)a4;
- (void)dealloc;
- (void)registerHandler:(id)a3;
- (void)resolveOn:(id)a3 reject:(id)a4 resolve:(id)a5;
- (void)seal:(id)a3 error:(id)a4 resolution:(unint64_t)a5;
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

- (NFPromiseSeal)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NFPromiseSeal;
  v6 = [(NFPromiseSeal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
    v7->_state = 1;
  }

  return v7;
}

- (NFPromiseSeal)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NFPromiseSeal;
  v6 = [(NFPromiseSeal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    v7->_state = 1;
  }

  return v7;
}

- (void)resolveOn:(id)a3 reject:(id)a4 resolve:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__NFPromiseSeal_resolveOn_reject_resolve___block_invoke;
  v14[3] = &unk_27997DE60;
  v15 = v8;
  v16 = v10;
  v17 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
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

- (void)alwaysOn:(id)a3 always:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__NFPromiseSeal_alwaysOn_always___block_invoke;
  v10[3] = &unk_27997DEB0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)registerHandler:(id)a3
{
  v11 = a3;
  v4 = [(NFPromiseSeal *)self lock];
  [v4 lock];

  v5 = [(NFPromiseSeal *)self state];
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = [(NFPromiseSeal *)self error];
    v7 = v6 != 0;

    v8 = [(NFPromiseSeal *)self value];
    v9 = [(NFPromiseSeal *)self error];
    v11[2](v11, v7, v8, v9);
  }

  else
  {
    v8 = [(NFPromiseSeal *)self handlers];
    v9 = MEMORY[0x25F880B10](v11);
    [v8 addObject:v9];
  }

LABEL_6:
  v10 = [(NFPromiseSeal *)self lock];
  [v10 unlock];
}

- (void)seal:(id)a3 error:(id)a4 resolution:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NFPromiseSeal *)self lock];
  [v10 lock];

  if ([(NFPromiseSeal *)self state]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFPromiseSeal seal:error:resolution:];
  }

  if (![(NFPromiseSeal *)self state])
  {
    [(NFPromiseSeal *)self setState:1];
    v22 = v8;
    [(NFPromiseSeal *)self setValue:v8];
    [(NFPromiseSeal *)self setError:v9];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [(NFPromiseSeal *)self handlers];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          v17 = [(NFPromiseSeal *)self value];
          v18 = [(NFPromiseSeal *)self error];
          (*(v16 + 16))(v16, a5, v17, v18);

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v19 = [(NFPromiseSeal *)self handlers];
    [v19 removeAllObjects];

    v8 = v22;
  }

  v20 = [(NFPromiseSeal *)self lock];
  [v20 unlock];

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