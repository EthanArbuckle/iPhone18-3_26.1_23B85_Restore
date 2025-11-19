@interface IDSTransactionQueue
- (IDSTransactionQueue)init;
- (id)appendPendingItem:(id)a3;
- (void)_appendTransaction:(id)a3;
- (void)_prependTransaction:(id)a3;
- (void)_readyTransaction:(id)a3;
- (void)_removeTransaction:(id)a3;
- (void)appendItem:(id)a3;
- (void)executeReadyItemsWithBlock:(id)a3;
- (void)prependItem:(id)a3;
@end

@implementation IDSTransactionQueue

- (IDSTransactionQueue)init
{
  v6.receiver = self;
  v6.super_class = IDSTransactionQueue;
  v2 = [(IDSTransactionQueue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    transactions = v2->_transactions;
    v2->_transactions = 0;

    v3->_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (void)prependItem:(id)a3
{
  v4 = a3;
  v5 = [[IDSTransactionQueueTransaction alloc] initWithItem:v4];

  [(IDSTransactionQueue *)self _prependTransaction:v5];
}

- (void)appendItem:(id)a3
{
  v4 = a3;
  v5 = [[IDSTransactionQueueTransaction alloc] initWithItem:v4];

  [(IDSTransactionQueue *)self _appendTransaction:v5];
}

- (id)appendPendingItem:(id)a3
{
  v4 = a3;
  v5 = [[IDSTransactionQueueTransaction alloc] initWithItem:v4 readyToExecute:0];

  [(IDSTransactionQueue *)self _appendTransaction:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A7B51FA4;
  v9[3] = &unk_1E77E0250;
  v9[4] = self;
  v10 = v5;
  v6 = v5;
  v7 = _Block_copy(v9);

  return v7;
}

- (void)_prependTransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSTransactionQueue *)self transactions];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(IDSTransactionQueue *)self setTransactions:v6];
  }

  v7 = [(IDSTransactionQueue *)self transactions];
  [v7 insertObject:v4 atIndex:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_appendTransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSTransactionQueue *)self transactions];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(IDSTransactionQueue *)self setTransactions:v6];
  }

  v7 = [(IDSTransactionQueue *)self transactions];
  [v7 addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_readyTransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 setReadyToExecute:1];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeTransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSTransactionQueue *)self transactions];
  [v5 removeObject:v4];

  v6 = [(IDSTransactionQueue *)self transactions];
  v7 = [v6 count];

  if (!v7)
  {
    [(IDSTransactionQueue *)self setTransactions:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)executeReadyItemsWithBlock:(id)a3
{
  v14 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(IDSTransactionQueue *)self transactions];
  if ([v4 count])
  {
    while (1)
    {
      v5 = [(IDSTransactionQueue *)self transactions];
      v6 = [v5 firstObject];
      v7 = [v6 readyToExecute];

      if (!v7)
      {
        break;
      }

      v8 = [(IDSTransactionQueue *)self transactions];
      v9 = [v8 firstObject];

      v10 = [(IDSTransactionQueue *)self transactions];
      [v10 removeFirstObject];

      os_unfair_lock_unlock(&self->_lock);
      v11 = [v9 item];
      v14[2](v14, v11);

      os_unfair_lock_lock(&self->_lock);
      v4 = [(IDSTransactionQueue *)self transactions];
      if (![v4 count])
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
  }

  v12 = [(IDSTransactionQueue *)self transactions];
  v13 = [v12 count];

  if (!v13)
  {
    [(IDSTransactionQueue *)self setTransactions:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end