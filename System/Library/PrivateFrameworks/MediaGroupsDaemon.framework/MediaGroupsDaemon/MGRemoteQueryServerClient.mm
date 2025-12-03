@interface MGRemoteQueryServerClient
- (BOOL)_transactionExists:(id)exists;
- (MGRemoteQueryServerClient)initWithPeer:(id)peer delegate:(id)delegate dispatchQueue:(id)queue;
- (MGRemoteQueryServerClientDelegate)delegate;
- (NSArray)transactions;
- (NSString)description;
- (unint64_t)transactionCount;
- (void)_delegateNotifyInvalidated;
- (void)_delegateNotifyLostTransaction;
- (void)_invalidate;
- (void)_timerCancel;
- (void)_timerFired;
- (void)_timerInit;
- (void)_timerReschedule;
- (void)_transactionAdd:(id)add;
- (void)_transactionRemove:(id)remove;
- (void)_withTransactionsLock:(id)lock;
- (void)addNewConnection:(id)connection completion:(id)completion;
- (void)dealloc;
- (void)setTransactions:(id)transactions;
- (void)transaction:(id)transaction receivedTimeoutInterval:(unint64_t)interval;
- (void)transactionActivityOccurred:(id)occurred;
- (void)transactionInvalidated:(id)invalidated;
@end

@implementation MGRemoteQueryServerClient

- (MGRemoteQueryServerClient)initWithPeer:(id)peer delegate:(id)delegate dispatchQueue:(id)queue
{
  peerCopy = peer;
  delegateCopy = delegate;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = MGRemoteQueryServerClient;
  v12 = [(MGRemoteQueryServerClient *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_transactionsLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_dispatchQueue, queue);
    objc_storeStrong(&v13->_peer, peer);
    v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
    transactions = v13->_transactions;
    v13->_transactions = v14;

    v13->_invalidated = 0;
    v13->_timeout = 900;
    dispatchQueue = [(MGRemoteQueryServerClient *)v13 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__MGRemoteQueryServerClient_initWithPeer_delegate_dispatchQueue___block_invoke;
    block[3] = &unk_27989ED90;
    v19 = v13;
    dispatch_async(dispatchQueue, block);
  }

  return v13;
}

- (void)dealloc
{
  [(MGRemoteQueryServerClient *)self _invalidate];
  v3.receiver = self;
  v3.super_class = MGRemoteQueryServerClient;
  [(MGRemoteQueryServerClient *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  peer = [(MGRemoteQueryServerClient *)self peer];
  v7 = [v3 stringWithFormat:@"<%@: %p, _peer = %@, _transactions = %lu>", v5, self, peer, -[MGRemoteQueryServerClient transactionCount](self, "transactionCount")];

  return v7;
}

- (void)addNewConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MGRemoteQueryServerClient_addNewConnection_completion___block_invoke;
  block[3] = &unk_27989F3C0;
  block[4] = self;
  v12 = connectionCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = connectionCopy;
  dispatch_async(dispatchQueue, block);
}

void __57__MGRemoteQueryServerClient_addNewConnection_completion___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([*(a1 + 32) invalidated])
  {
    v8[3] = 3;
  }

  else
  {
    v2 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__MGRemoteQueryServerClient_addNewConnection_completion___block_invoke_2;
    v4[3] = &unk_27989EEA8;
    v4[4] = v2;
    v5 = *(a1 + 40);
    v6 = &v7;
    [v2 _withTransactionsLock:v4];

    v3 = v8[3];
  }

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(&v7, 8);
}

void __57__MGRemoteQueryServerClient_addNewConnection_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transactions];
  v3 = [v2 count];

  if (v3 > 0xE)
  {
    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 134218242;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p server client concurrency rejecting %@", &v9, 0x16u);
    }

    v4 = 2;
  }

  else
  {
    [*(a1 + 32) _transactionAdd:*(a1 + 40)];
    v4 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)transactionCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__MGRemoteQueryServerClient_transactionCount__block_invoke;
  v4[3] = &unk_27989EFC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MGRemoteQueryServerClient *)self _withTransactionsLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__MGRemoteQueryServerClient_transactionCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (void)_invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  if (![(MGRemoteQueryServerClient *)self invalidated])
  {
    v3 = MGLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p server client invalidating", buf, 0xCu);
    }

    [(MGRemoteQueryServerClient *)self setInvalidated:1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__MGRemoteQueryServerClient__invalidate__block_invoke;
    v5[3] = &unk_27989ED90;
    v5[4] = self;
    [(MGRemoteQueryServerClient *)self _withTransactionsLock:v5];
    [(MGRemoteQueryServerClient *)self _timerCancel];
    [(MGRemoteQueryServerClient *)self _invalidated];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __40__MGRemoteQueryServerClient__invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] array];
  [v1 setTransactions:v2];
}

- (void)_transactionAdd:(id)add
{
  v25 = *MEMORY[0x277D85DE8];
  addCopy = add;
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  os_unfair_lock_assert_owner(&self->_transactionsLock);
  if ([(MGRemoteQueryServerClient *)self invalidated])
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218242;
      selfCopy3 = self;
      v19 = 2112;
      v20 = addCopy;
      v7 = "%p server client invalidated, not adding %@";
LABEL_12:
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, v7, &v17, 0x16u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  transactions = [(MGRemoteQueryServerClient *)self transactions];
  v9 = [transactions count];

  if (v9 >= 0xF)
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218242;
      selfCopy3 = self;
      v19 = 2112;
      v20 = addCopy;
      v7 = "%p server client exceeded limit, not adding %@";
      goto LABEL_12;
    }

LABEL_6:

    nw_connection_cancel(addCopy);
    goto LABEL_10;
  }

  v10 = [MGRemoteQueryServerTransaction alloc];
  dispatchQueue2 = [(MGRemoteQueryServerClient *)self dispatchQueue];
  v12 = [(MGRemoteQueryServerTransaction *)v10 initWithConnection:addCopy delegate:self dispatchQueue:dispatchQueue2];

  transactions2 = [(MGRemoteQueryServerClient *)self transactions];
  v14 = [transactions2 arrayByAddingObject:v12];

  [(MGRemoteQueryServerClient *)self setTransactions:v14];
  v15 = MGLogForCategory(5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134218754;
    selfCopy3 = self;
    v19 = 2048;
    v20 = [v14 count];
    v21 = 2048;
    v22 = v12;
    v23 = 2112;
    v24 = addCopy;
    _os_log_debug_impl(&dword_25863A000, v15, OS_LOG_TYPE_DEBUG, "%p server client now %lu transactions after adding %p with connection %@", &v17, 0x2Au);
  }

LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_transactionRemove:(id)remove
{
  v23 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__MGRemoteQueryServerClient__transactionRemove___block_invoke;
  v10[3] = &unk_27989EEA8;
  v10[4] = self;
  v6 = removeCopy;
  v11 = v6;
  v12 = &v13;
  [(MGRemoteQueryServerClient *)self _withTransactionsLock:v10];
  v7 = MGLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = v14[3];
    *buf = 134218496;
    selfCopy = self;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = v6;
    _os_log_debug_impl(&dword_25863A000, v7, OS_LOG_TYPE_DEBUG, "%p server client now %lu transactions after removing %p", buf, 0x20u);
  }

  [(MGRemoteQueryServerClient *)self _delegateNotifyLostTransaction];
  if (!v14[3])
  {
    [(MGRemoteQueryServerClient *)self _invalidate];
  }

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x277D85DE8];
}

void __48__MGRemoteQueryServerClient__transactionRemove___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [v2 mutableCopy];

  [v3 removeObject:*(a1 + 40)];
  [*(a1 + 32) setTransactions:v3];
  *(*(*(a1 + 48) + 8) + 24) = [v3 count];
}

- (BOOL)_transactionExists:(id)exists
{
  existsCopy = exists;
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__MGRemoteQueryServerClient__transactionExists___block_invoke;
  v8[3] = &unk_27989EEF8;
  v10 = &v11;
  v8[4] = self;
  v6 = existsCopy;
  v9 = v6;
  [(MGRemoteQueryServerClient *)self _withTransactionsLock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __48__MGRemoteQueryServerClient__transactionExists___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (void)_timerInit
{
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  dispatchQueue2 = [(MGRemoteQueryServerClient *)self dispatchQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue2);

  objc_storeStrong(&self->_timeoutTimer, v5);
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __39__MGRemoteQueryServerClient__timerInit__block_invoke;
  v9 = &unk_27989EFE8;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v5, &v6);
  [(MGRemoteQueryServerClient *)self _timerReschedule:v6];
  dispatch_resume(v5);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __39__MGRemoteQueryServerClient__timerInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _timerFired];
    WeakRetained = v2;
  }
}

- (void)_timerReschedule
{
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (![(MGRemoteQueryServerClient *)self invalidated])
  {
    timeout = [(MGRemoteQueryServerClient *)self timeout];
    source = [(MGRemoteQueryServerClient *)self timeoutTimer];
    v5 = dispatch_walltime(0, 1000000000 * timeout + 60000000000);
    dispatch_source_set_timer(source, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)_timerCancel
{
  timeoutTimer = [(MGRemoteQueryServerClient *)self timeoutTimer];
  if (timeoutTimer)
  {
    v3 = timeoutTimer;
    dispatch_source_cancel(timeoutTimer);
    timeoutTimer = v3;
  }
}

- (void)_timerFired
{
  v11 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (![(MGRemoteQueryServerClient *)self invalidated])
  {
    v4 = MGLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      peer = [(MGRemoteQueryServerClient *)self peer];
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = peer;
      _os_log_error_impl(&dword_25863A000, v4, OS_LOG_TYPE_ERROR, "%p watchdog fired, terminating communication with peer %@", &v7, 0x16u);
    }

    [(MGRemoteQueryServerClient *)self _invalidate];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_delegateNotifyLostTransaction
{
  delegate = [(MGRemoteQueryServerClient *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    [delegate clientLostTransaction:self];
    delegate = v4;
  }
}

- (void)_delegateNotifyInvalidated
{
  delegate = [(MGRemoteQueryServerClient *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    [delegate clientInvalidated:self];
    delegate = v4;
  }
}

- (void)_withTransactionsLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_transactionsLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_transactionsLock);
}

- (void)transaction:(id)transaction receivedTimeoutInterval:(unint64_t)interval
{
  transactionCopy = transaction;
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MGRemoteQueryServerClient_transaction_receivedTimeoutInterval___block_invoke;
  block[3] = &unk_27989F3E8;
  v10 = transactionCopy;
  intervalCopy = interval;
  block[4] = self;
  v8 = transactionCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __65__MGRemoteQueryServerClient_transaction_receivedTimeoutInterval___block_invoke(uint64_t result)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(result + 48))
  {
    v1 = result;
    result = [*(result + 32) timeout];
    if (result != *(v1 + 48))
    {
      result = [*(v1 + 32) _transactionExists:*(v1 + 40)];
      if (result)
      {
        v2 = MGLogForCategory(5);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          v4 = *(v1 + 32);
          v5 = *(v1 + 48);
          v6 = [v4 timeout];
          v7 = *(v1 + 40);
          v8 = [*(v1 + 32) peer];
          v9 = 134219010;
          v10 = v4;
          v11 = 2048;
          v12 = v5;
          v13 = 2048;
          v14 = v6;
          v15 = 2048;
          v16 = v7;
          v17 = 2112;
          v18 = v8;
          _os_log_debug_impl(&dword_25863A000, v2, OS_LOG_TYPE_DEBUG, "%p updating timeout interval to %lu from %lu via %p for %@", &v9, 0x34u);
        }

        [*(v1 + 32) setTimeout:*(v1 + 48)];
        result = [*(v1 + 32) _timerReschedule];
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)transactionActivityOccurred:(id)occurred
{
  occurredCopy = occurred;
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__MGRemoteQueryServerClient_transactionActivityOccurred___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = occurredCopy;
  v6 = occurredCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __57__MGRemoteQueryServerClient_transactionActivityOccurred___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _transactionExists:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _timerReschedule];
  }

  return result;
}

- (void)transactionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatchQueue = [(MGRemoteQueryServerClient *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__MGRemoteQueryServerClient_transactionInvalidated___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = invalidatedCopy;
  v6 = invalidatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (NSArray)transactions
{
  os_unfair_lock_assert_owner(&self->_transactionsLock);
  transactions = self->_transactions;

  return transactions;
}

- (void)setTransactions:(id)transactions
{
  transactionsCopy = transactions;
  os_unfair_lock_assert_owner(&self->_transactionsLock);
  transactions = self->_transactions;
  p_transactions = &self->_transactions;
  if (transactions != transactionsCopy && ([(NSArray *)transactionsCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_transactions, transactions);
  }

  MEMORY[0x2821F96F8]();
}

- (MGRemoteQueryServerClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end