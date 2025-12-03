@interface FBSynchronizedTransactionGroup
- (BOOL)_shouldFailForChildTransaction:(id)transaction;
- (FBSynchronizedTransactionDelegate)synchronizationDelegate;
- (FBSynchronizedTransactionGroup)init;
- (void)_checkPreconditionsAndCommitIfReady;
- (void)_childTransactionDidComplete:(id)complete;
- (void)_didComplete;
- (void)_performSynchronizedCommit:(id)commit;
- (void)_performSynchronizedCommitIfReady;
- (void)addSynchronizedTransaction:(id)transaction;
- (void)performSynchronizedCommit;
- (void)synchronizedTransactionReadyToCommit:(id)commit;
@end

@implementation FBSynchronizedTransactionGroup

- (FBSynchronizedTransactionGroup)init
{
  v10.receiver = self;
  v10.super_class = FBSynchronizedTransactionGroup;
  v2 = [(FBTransaction *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    synchronizedTransactions = v2->_synchronizedTransactions;
    v2->_synchronizedTransactions = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    synchronizedTransactionsAwaitingCommitReadiness = v2->_synchronizedTransactionsAwaitingCommitReadiness;
    v2->_synchronizedTransactionsAwaitingCommitReadiness = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    synchronizedTransactionsReadyToCommit = v2->_synchronizedTransactionsReadyToCommit;
    v2->_synchronizedTransactionsReadyToCommit = v7;
  }

  return v2;
}

- (void)_checkPreconditionsAndCommitIfReady
{
  if (self->_readyForCommit || [(NSMutableSet *)self->_synchronizedTransactionsAwaitingCommitReadiness count])
  {

    [(FBSynchronizedTransactionGroup *)self _performSynchronizedCommitIfReady];
  }

  else
  {
    self->_readyForCommit = 1;
    if ([(FBSynchronizedTransactionGroup *)self isAuditHistoryEnabled])
    {
      [(FBSynchronizedTransactionGroup *)self _addAuditHistoryItem:@"Commit preconditions satisfied."];
    }

    [(FBSynchronizedTransactionGroup *)self addMilestone:@"synchronizedCommit"];
    synchronizationDelegate = [(FBSynchronizedTransactionGroup *)self synchronizationDelegate];
    if (synchronizationDelegate && !self->_commitAllowed)
    {
      if ([(FBSynchronizedTransactionGroup *)self isAuditHistoryEnabled])
      {
        v3 = [MEMORY[0x1E698E680] descriptionForObject:synchronizationDelegate];
        [(FBSynchronizedTransactionGroup *)self _addAuditHistoryItem:@"Using synchronization delegate: %@", v3];
      }

      [synchronizationDelegate synchronizedTransactionReadyToCommit:self];
    }

    else
    {
      self->_commitAllowed = 1;
      [(FBSynchronizedTransactionGroup *)self _performSynchronizedCommitIfReady];
    }
  }
}

- (FBSynchronizedTransactionDelegate)synchronizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_synchronizationDelegate);

  return WeakRetained;
}

- (void)performSynchronizedCommit
{
  self->_commitAllowed = 1;
  synchronizationDelegate = [(FBSynchronizedTransactionGroup *)self synchronizationDelegate];

  if (synchronizationDelegate && [(FBSynchronizedTransactionGroup *)self isAuditHistoryEnabled])
  {
    [(FBSynchronizedTransactionGroup *)self _addAuditHistoryItem:@"Delegate says we're good to commit."];
  }

  [(FBSynchronizedTransactionGroup *)self _performSynchronizedCommitIfReady];
}

- (void)_performSynchronizedCommitIfReady
{
  if ([(FBSynchronizedTransactionGroup *)self isReadyForSynchronizedCommit])
  {
    self->_didCommit = 1;
    if ([(FBSynchronizedTransactionGroup *)self isAuditHistoryEnabled])
    {
      [(FBSynchronizedTransactionGroup *)self _addAuditHistoryItem:@"Committing now!"];
    }

    allObjects = [(NSMutableSet *)self->_synchronizedTransactionsReadyToCommit allObjects];
    [(NSMutableSet *)self->_synchronizedTransactionsReadyToCommit removeAllObjects];
    [(FBSynchronizedTransactionGroup *)self _performSynchronizedCommit:allObjects];
    [(FBSynchronizedTransactionGroup *)self satisfyMilestone:@"synchronizedCommit"];
  }
}

- (void)_didComplete
{
  [(FBSynchronizedTransactionGroup *)self setSynchronizationDelegate:0];
  [(NSMutableSet *)self->_synchronizedTransactions enumerateObjectsUsingBlock:&__block_literal_global_26];
  v3.receiver = self;
  v3.super_class = FBSynchronizedTransactionGroup;
  [(FBSynchronizedTransactionGroup *)&v3 _didComplete];
}

- (void)addSynchronizedTransaction:(id)transaction
{
  if (transaction)
  {
    synchronizedTransactions = self->_synchronizedTransactions;
    transactionCopy = transaction;
    [(NSMutableSet *)synchronizedTransactions addObject:transactionCopy];
    [(NSMutableSet *)self->_synchronizedTransactionsAwaitingCommitReadiness addObject:transactionCopy];
    [transactionCopy setSynchronizationDelegate:self];
    [(FBSynchronizedTransactionGroup *)self addChildTransaction:transactionCopy];
  }
}

- (BOOL)_shouldFailForChildTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([(NSMutableSet *)self->_synchronizedTransactions containsObject:transactionCopy])
  {
    synchronizationDelegate = [(FBSynchronizedTransactionGroup *)self synchronizationDelegate];
    if (synchronizationDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [synchronizationDelegate synchronizedTransactionGroup:self shouldFailForSynchronizedTransaction:transactionCopy];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_childTransactionDidComplete:(id)complete
{
  synchronizedTransactionsAwaitingCommitReadiness = self->_synchronizedTransactionsAwaitingCommitReadiness;
  completeCopy = complete;
  [(NSMutableSet *)synchronizedTransactionsAwaitingCommitReadiness removeObject:completeCopy];
  [(NSMutableSet *)self->_synchronizedTransactionsReadyToCommit removeObject:completeCopy];
  [(FBSynchronizedTransactionGroup *)self _checkPreconditionsAndCommitIfReady];
  v6.receiver = self;
  v6.super_class = FBSynchronizedTransactionGroup;
  [(FBSynchronizedTransactionGroup *)&v6 _childTransactionDidComplete:completeCopy];
}

- (void)_performSynchronizedCommit:(id)commit
{
  v17 = *MEMORY[0x1E69E9840];
  commitCopy = commit;
  synchronizationDelegate = [(FBSynchronizedTransactionGroup *)self synchronizationDelegate];
  [synchronizationDelegate synchronizedTransaction:self willCommitSynchronizedTransactions:commitCopy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = commitCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) performSynchronizedCommit];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [synchronizationDelegate synchronizedTransaction:self didCommitSynchronizedTransactions:v6];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)synchronizedTransactionReadyToCommit:(id)commit
{
  commitCopy = commit;
  if ([(NSMutableSet *)self->_synchronizedTransactionsAwaitingCommitReadiness containsObject:?])
  {
    [(NSMutableSet *)self->_synchronizedTransactionsAwaitingCommitReadiness removeObject:commitCopy];
    [(NSMutableSet *)self->_synchronizedTransactionsReadyToCommit addObject:commitCopy];
    [(FBSynchronizedTransactionGroup *)self _checkPreconditionsAndCommitIfReady];
  }
}

@end