@interface MSASModelEnumerator
+ (id)enumeratorWithDatabase:(sqlite3 *)a3 query:(id)a4 stepBlock:(id)a5;
- (MSASModelEnumerator)initWithDatabase:(sqlite3 *)a3 query:(id)a4 stepBlock:(id)a5;
- (id)nextObject;
- (void)dealloc;
@end

@implementation MSASModelEnumerator

- (id)nextObject
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6801;
  v12 = __Block_byref_object_dispose__6802;
  v13 = 0;
  if ([(MSASModelEnumerator *)self stmt])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__MSASModelEnumerator_nextObject__block_invoke;
    v7[3] = &unk_278E92700;
    v7[4] = self;
    v7[5] = &v8;
    v3 = MEMORY[0x245D7BA50](v7);
    queue = self->_queue;
    if (queue)
    {
      dispatch_sync(queue, v3);
    }

    else
    {
      v3[2](v3);
    }
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__MSASModelEnumerator_nextObject__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sqlite3_step([*(a1 + 32) stmt]);
  if (v2 == 101)
  {
    sqlite3_finalize([*(a1 + 32) stmt]);
    [*(a1 + 32) setStmt:0];
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x277D85DE8];

    [v7 setStepBlock:0];
  }

  else if (v2 == 100)
  {
    v11 = [*(a1 + 32) stepBlock];
    v3 = v11[2](v11, [*(a1 + 32) stmt]);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v13 = v10;
      v14 = 2082;
      v15 = sqlite3_errmsg([v10 db]);
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Can't enumerate the next object in the model. Error: %{public}s", buf, 0x16u);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)dealloc
{
  if (self->_stmt)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__MSASModelEnumerator_dealloc__block_invoke;
    v6[3] = &unk_278E926D8;
    v6[4] = self;
    v3 = MEMORY[0x245D7BA50](v6, a2);
    queue = self->_queue;
    if (queue)
    {
      dispatch_sync(queue, v3);
    }

    else
    {
      v3[2](v3);
    }
  }

  v5.receiver = self;
  v5.super_class = MSASModelEnumerator;
  [(MSASModelEnumerator *)&v5 dealloc];
}

- (MSASModelEnumerator)initWithDatabase:(sqlite3 *)a3 query:(id)a4 stepBlock:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = MSASModelEnumerator;
  v10 = [(MSASModelEnumerator *)&v16 init];
  if (v10)
  {
    if (sqlite3_prepare_v2(a3, [v8 UTF8String], -1, &v10->_stmt, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v15 = sqlite3_errmsg(a3);
        *buf = 138543874;
        v18 = v10;
        v19 = 2114;
        v20 = v8;
        v21 = 2082;
        v22 = v15;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not compile SQL query: “%{public}@”. sqlite error: %{public}s", buf, 0x20u);
      }

      stepBlock = v10;
      v10 = 0;
    }

    else
    {
      v10->_db = a3;
      v12 = [v9 copy];
      stepBlock = v10->_stepBlock;
      v10->_stepBlock = v12;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)enumeratorWithDatabase:(sqlite3 *)a3 query:(id)a4 stepBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[MSASModelEnumerator alloc] initWithDatabase:a3 query:v8 stepBlock:v7];

  return v9;
}

@end