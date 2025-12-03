@interface MSVXPCTransaction
+ (id)activeTransactions;
- (BOOL)isActive;
- (MSVXPCTransaction)initWithName:(id)name;
- (id)description;
- (void)beginTransaction;
- (void)endTransaction;
- (void)endTransactionOnDate:(id)date;
@end

@implementation MSVXPCTransaction

- (void)beginTransaction
{
  transactionCount = self->_transactionCount;
  self->_transactionCount = transactionCount + 1;
  if ((transactionCount & 0x8000000000000000) == 0 && !self->_transaction)
  {
    os_unfair_lock_lock(&_MSVXPCTransactionLock);
    v4 = MEMORY[0x1E696AEC0];
    name = self->_name;
    uUIDString = [(NSUUID *)self->_identifier UUIDString];
    v7 = [v4 stringWithFormat:@"%@:%@", name, uUIDString];
    [v7 UTF8String];
    v8 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v8;

    v10 = _MSVXPCTransactionsGet();
    [v10 addObject:self];

    os_unfair_lock_unlock(&_MSVXPCTransactionLock);
  }
}

- (void)endTransaction
{
  transactionCount = self->_transactionCount;
  self->_transactionCount = transactionCount - 1;
  if (transactionCount <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVXPCTransaction.m" lineNumber:113 description:@"Unbalanced calls to -[MSVXPCTransaction endTransaction]"];

    if (self->_transactionCount)
    {
      return;
    }
  }

  else if (transactionCount != 1)
  {
    return;
  }

  if (self->_transaction)
  {
    os_unfair_lock_lock(&_MSVXPCTransactionLock);
    transaction = self->_transaction;
    self->_transaction = 0;

    v7 = _MSVXPCTransactionsGet();
    [v7 removeObject:self];

    os_unfair_lock_unlock(&_MSVXPCTransactionLock);
  }
}

- (void)endTransactionOnDate:(id)date
{
  [date timeIntervalSinceNow];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MSVXPCTransaction_endTransactionOnDate___block_invoke;
  block[3] = &unk_1E7982988;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&_MSVXPCTransactionLock);
  LOBYTE(self) = self->_transaction != 0;
  os_unfair_lock_unlock(&_MSVXPCTransactionLock);
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = self->_name;
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v7 = uUIDString;
  if (self->_transaction)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"<%@:%p, name=%@:%@ isActive=%@>", v4, self, name, uUIDString, v8];

  return v9;
}

- (MSVXPCTransaction)initWithName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = MSVXPCTransaction;
  v5 = [(MSVXPCTransaction *)&v12 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"<UNNAMED TRANSACTION>";
    }

    objc_storeStrong(&v5->_name, v8);

    v9 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    identifier = v5->_identifier;
    v5->_identifier = v9;
  }

  return v5;
}

+ (id)activeTransactions
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_MSVXPCTransactionLock);
  v2 = _MSVXPCTransactionsGet();
  allObjects = [v2 allObjects];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allObjects, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(*(&v12 + 1) + 8 * i) + 16))
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&_MSVXPCTransactionLock);
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

@end