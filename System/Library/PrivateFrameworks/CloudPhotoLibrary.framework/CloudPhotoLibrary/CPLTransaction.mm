@interface CPLTransaction
+ (id)transactions;
+ (unint64_t)transactionCount;
+ (void)beginTransactionWithIdentifier:(id)a3 description:(id)a4 keepPower:(BOOL)a5;
+ (void)endTransactionWithIdentifier:(id)a3;
- (void)dealloc;
- (void)endTransaction;
@end

@implementation CPLTransaction

- (void)endTransaction
{
  if (self->_dirty)
  {
    [CPLTransaction endTransactionWithIdentifier:self->_identifier];
    self->_dirty = 0;
  }
}

- (void)dealloc
{
  if (self->_dirty)
  {
    [CPLTransaction endTransactionWithIdentifier:self->_identifier];
  }

  v3.receiver = self;
  v3.super_class = CPLTransaction;
  [(CPLTransaction *)&v3 dealloc];
}

+ (unint64_t)transactionCount
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __34__CPLTransaction_transactionCount__block_invoke;
  v15 = &unk_1E861B528;
  v16 = &v17;
  v2 = v13;
  os_unfair_lock_lock(&_lock);
  if (!_transactionIdentifiers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v4 = _transactionIdentifiers;
    _transactionIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = _transactionDescriptions;
    _transactionDescriptions = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v8 = _poweredIdentifiers;
    _poweredIdentifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = _transactions;
    _transactions = v9;
  }

  v14(v2);
  os_unfair_lock_unlock(&_lock);

  v11 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __34__CPLTransaction_transactionCount__block_invoke(uint64_t a1)
{
  result = [_transactionIdentifiers count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)transactions
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7326;
  v21 = __Block_byref_object_dispose__7327;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __30__CPLTransaction_transactions__block_invoke;
  v15 = &unk_1E861B528;
  v16 = &v17;
  v2 = v13;
  os_unfair_lock_lock(&_lock);
  if (!_transactionIdentifiers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v4 = _transactionIdentifiers;
    _transactionIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = _transactionDescriptions;
    _transactionDescriptions = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v8 = _poweredIdentifiers;
    _poweredIdentifiers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = _transactions;
    _transactions = v9;
  }

  v14(v2);
  os_unfair_lock_unlock(&_lock);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __30__CPLTransaction_transactions__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if ([_transactionIdentifiers count])
  {
    v25 = a1;
    v2 = objc_alloc(MEMORY[0x1E695DF70]);
    v3 = [v2 initWithCapacity:{objc_msgSend(_transactionIdentifiers, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = _transactionIdentifiers;
    v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v28;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v9 = [_poweredIdentifiers containsObject:v8];
          v10 = MEMORY[0x1E696AEC0];
          v11 = [_transactionDescriptions objectForKeyedSubscript:v8];
          v12 = [_transactionIdentifiers countForObject:v8];
          if (v9)
          {
            v13 = @"%@ (%lu - power)";
          }

          else
          {
            v13 = @"%@ (%lu)";
          }

          v14 = [v10 stringWithFormat:v13, v11, v12];
          [v3 addObject:v14];
        }

        v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v5);
    }

    v15 = [v3 componentsJoinedByString:@"\n"];
    a1 = v25;
    v16 = *(*(v25 + 32) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    v18 = *(*(a1 + 32) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = @"No transactions";
  }

  v20 = +[CPLPowerAssertion powerAssertionStatus];
  if (v20)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\n%@", v20, *(*(*(a1 + 32) + 8) + 40)];
    v22 = *(*(a1 + 32) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)endTransactionWithIdentifier:(id)a3
{
  v5 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __47__CPLTransaction_endTransactionWithIdentifier___block_invoke;
  v18 = &unk_1E861FEE8;
  v6 = v5;
  v19 = v6;
  v20 = a2;
  v21 = a1;
  v7 = v16;
  os_unfair_lock_lock(&_lock);
  if (!_transactionIdentifiers)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v9 = _transactionIdentifiers;
    _transactionIdentifiers = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = _transactionDescriptions;
    _transactionDescriptions = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v13 = _poweredIdentifiers;
    _poweredIdentifiers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = _transactions;
    _transactions = v14;
  }

  v17(v7);
  os_unfair_lock_unlock(&_lock);
}

uint64_t __47__CPLTransaction_endTransactionWithIdentifier___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([_poweredIdentifiers containsObject:a1[4]])
  {
    [_poweredIdentifiers removeObject:a1[4]];
    if (![_poweredIdentifiers count])
    {
      +[CPLPowerAssertion enableSleep];
    }
  }

  v2 = [_transactionIdentifiers countForObject:a1[4]];
  if (!v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = a1[4];
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Transaction '%@' is invalid", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = a1[5];
    v13 = a1[6];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLTransaction.m"];
    [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:88 description:{@"Transaction '%@' is invalid", a1[4]}];

    abort();
  }

  v3 = v2;
  result = [_transactionIdentifiers removeObject:a1[4]];
  if (v3 == 1)
  {
    [_transactions removeObjectForKey:a1[4]];
    v5 = _transactionDescriptions;
    v6 = a1[4];
    v7 = *MEMORY[0x1E69E9840];

    return [v5 removeObjectForKey:v6];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

+ (void)beginTransactionWithIdentifier:(id)a3 description:(id)a4 keepPower:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v21 = __71__CPLTransaction_beginTransactionWithIdentifier_description_keepPower___block_invoke;
  v22 = &unk_1E861F360;
  v9 = v7;
  v23 = v9;
  v10 = v8;
  v24 = v10;
  v25 = a5;
  v11 = v20;
  os_unfair_lock_lock(&_lock);
  if (!_transactionIdentifiers)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v13 = _transactionIdentifiers;
    _transactionIdentifiers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = _transactionDescriptions;
    _transactionDescriptions = v14;

    v16 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v17 = _poweredIdentifiers;
    _poweredIdentifiers = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = _transactions;
    _transactions = v18;
  }

  v21(v11);
  os_unfair_lock_unlock(&_lock);
}

uint64_t __71__CPLTransaction_beginTransactionWithIdentifier_description_keepPower___block_invoke(uint64_t a1)
{
  if (![_transactionIdentifiers countForObject:*(a1 + 32)])
  {
    [*(a1 + 32) UTF8String];
    v2 = os_transaction_create();
    if (v2)
    {
      [_transactions setObject:v2 forKeyedSubscript:*(a1 + 32)];
    }

    [_transactionDescriptions setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
  }

  result = [_transactionIdentifiers addObject:*(a1 + 32)];
  if (*(a1 + 48) == 1)
  {
    if (![_poweredIdentifiers count])
    {
      +[CPLPowerAssertion disableSleep];
    }

    v4 = _poweredIdentifiers;
    v5 = *(a1 + 32);

    return [v4 addObject:v5];
  }

  return result;
}

@end