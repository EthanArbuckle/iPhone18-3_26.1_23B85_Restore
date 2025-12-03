@interface IDSTransactionQueue
- (IDSTransactionQueue)init;
- (id)appendPendingItem:(id)item;
- (void)_appendTransaction:(id)transaction;
- (void)_prependTransaction:(id)transaction;
- (void)_readyTransaction:(id)transaction;
- (void)_removeTransaction:(id)transaction;
- (void)appendItem:(id)item;
- (void)executeReadyItemsWithBlock:(id)block;
- (void)prependItem:(id)item;
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

- (void)prependItem:(id)item
{
  itemCopy = item;
  v5 = [[IDSTransactionQueueTransaction alloc] initWithItem:itemCopy];

  [(IDSTransactionQueue *)self _prependTransaction:v5];
}

- (void)appendItem:(id)item
{
  itemCopy = item;
  v5 = [[IDSTransactionQueueTransaction alloc] initWithItem:itemCopy];

  [(IDSTransactionQueue *)self _appendTransaction:v5];
}

- (id)appendPendingItem:(id)item
{
  itemCopy = item;
  v5 = [[IDSTransactionQueueTransaction alloc] initWithItem:itemCopy readyToExecute:0];

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

- (void)_prependTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_lock(&self->_lock);
  transactions = [(IDSTransactionQueue *)self transactions];

  if (!transactions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(IDSTransactionQueue *)self setTransactions:v6];
  }

  transactions2 = [(IDSTransactionQueue *)self transactions];
  [transactions2 insertObject:transactionCopy atIndex:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_appendTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_lock(&self->_lock);
  transactions = [(IDSTransactionQueue *)self transactions];

  if (!transactions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(IDSTransactionQueue *)self setTransactions:v6];
  }

  transactions2 = [(IDSTransactionQueue *)self transactions];
  [transactions2 addObject:transactionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_readyTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_lock(&self->_lock);
  [transactionCopy setReadyToExecute:1];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_lock(&self->_lock);
  transactions = [(IDSTransactionQueue *)self transactions];
  [transactions removeObject:transactionCopy];

  transactions2 = [(IDSTransactionQueue *)self transactions];
  v7 = [transactions2 count];

  if (!v7)
  {
    [(IDSTransactionQueue *)self setTransactions:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)executeReadyItemsWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  transactions = [(IDSTransactionQueue *)self transactions];
  if ([transactions count])
  {
    while (1)
    {
      transactions2 = [(IDSTransactionQueue *)self transactions];
      firstObject = [transactions2 firstObject];
      readyToExecute = [firstObject readyToExecute];

      if (!readyToExecute)
      {
        break;
      }

      transactions3 = [(IDSTransactionQueue *)self transactions];
      firstObject2 = [transactions3 firstObject];

      transactions4 = [(IDSTransactionQueue *)self transactions];
      [transactions4 removeFirstObject];

      os_unfair_lock_unlock(&self->_lock);
      item = [firstObject2 item];
      blockCopy[2](blockCopy, item);

      os_unfair_lock_lock(&self->_lock);
      transactions = [(IDSTransactionQueue *)self transactions];
      if (![transactions count])
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
  }

  transactions5 = [(IDSTransactionQueue *)self transactions];
  v13 = [transactions5 count];

  if (!v13)
  {
    [(IDSTransactionQueue *)self setTransactions:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end