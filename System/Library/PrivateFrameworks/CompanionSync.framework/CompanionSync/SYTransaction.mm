@interface SYTransaction
- (BOOL)_beginTransaction;
- (BOOL)_endTransaction;
- (SYTransaction)initWithStore:(id)store;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)deleteObject:(id)object;
- (void)rollback;
- (void)updateObject:(id)object;
@end

@implementation SYTransaction

- (SYTransaction)initWithStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = SYTransaction;
  v6 = [(SYTransaction *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    changes = v7->_changes;
    v7->_changes = v8;
  }

  return v7;
}

- (void)dealloc
{
  if ([(SYTransaction *)self _endTransaction])
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_ERROR))
    {
      [(SYTransaction *)v3 dealloc];
    }
  }

  v4.receiver = self;
  v4.super_class = SYTransaction;
  [(SYTransaction *)&v4 dealloc];
}

- (BOOL)_beginTransaction
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_inTransaction, &v2, 1u);
  v3 = v2 == 0;
  if (!v2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_DEBUG))
    {
      [(SYTransaction *)v5 _beginTransaction];
    }

    v6 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v6;
  }

  return v3;
}

- (BOOL)_endTransaction
{
  v2 = 1;
  atomic_compare_exchange_strong(&self->_inTransaction, &v2, 0);
  v3 = v2 == 1;
  if (v2 == 1)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73440;
    if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_DEBUG))
    {
      [(SYTransaction *)v5 _endTransaction];
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }

  return v3;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(SYTransaction *)self _beginTransaction];
  store = [(SYTransaction *)self store];
  v7 = [SYChange changeWithObject:objectCopy updateType:0 store:store];

  changes = [(SYTransaction *)self changes];
  [changes addObject:v7];
}

- (void)updateObject:(id)object
{
  objectCopy = object;
  [(SYTransaction *)self _beginTransaction];
  store = [(SYTransaction *)self store];
  v7 = [SYChange changeWithObject:objectCopy updateType:1 store:store];

  changes = [(SYTransaction *)self changes];
  [changes addObject:v7];
}

- (void)deleteObject:(id)object
{
  objectCopy = object;
  if ([(SYStore *)self->_store allowsDeletes])
  {
    [(SYTransaction *)self _beginTransaction];
    store = [(SYTransaction *)self store];
    v5 = [SYChange changeWithObject:objectCopy updateType:2 store:store];

    changes = [(SYTransaction *)self changes];
    [changes addObject:v5];
  }

  else
  {
    [(SYLegacyStore *)self->_store postUserNotification:@"Delete Denied" message:@"A client attempted to send a delete message while deletes were denied."];
  }
}

- (void)rollback
{
  changes = [(SYTransaction *)self changes];
  [changes removeAllObjects];
}

@end