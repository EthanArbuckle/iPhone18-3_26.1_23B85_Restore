@interface FBSynchronizedTransactionGroup
- (BOOL)_shouldFailForChildTransaction:(id)a3;
- (FBSynchronizedTransactionDelegate)synchronizationDelegate;
- (FBSynchronizedTransactionGroup)init;
- (void)_checkPreconditionsAndCommitIfReady;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_didComplete;
- (void)_performSynchronizedCommit:(id)a3;
- (void)_performSynchronizedCommitIfReady;
- (void)addSynchronizedTransaction:(id)a3;
- (void)performSynchronizedCommit;
- (void)synchronizedTransactionReadyToCommit:(id)a3;
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
    v4 = [(FBSynchronizedTransactionGroup *)self synchronizationDelegate];
    if (v4 && !self->_commitAllowed)
    {
      if ([(FBSynchronizedTransactionGroup *)self isAuditHistoryEnabled])
      {
        v3 = [MEMORY[0x1E698E680] descriptionForObject:v4];
        [(FBSynchronizedTransactionGroup *)self _addAuditHistoryItem:@"Using synchronization delegate: %@", v3];
      }

      [v4 synchronizedTransactionReadyToCommit:self];
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
  v3 = [(FBSynchronizedTransactionGroup *)self synchronizationDelegate];

  if (v3 && [(FBSynchronizedTransactionGroup *)self isAuditHistoryEnabled])
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

    v3 = [(NSMutableSet *)self->_synchronizedTransactionsReadyToCommit allObjects];
    [(NSMutableSet *)self->_synchronizedTransactionsReadyToCommit removeAllObjects];
    [(FBSynchronizedTransactionGroup *)self _performSynchronizedCommit:v3];
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

- (void)addSynchronizedTransaction:(id)a3
{
  if (a3)
  {
    synchronizedTransactions = self->_synchronizedTransactions;
    v5 = a3;
    [(NSMutableSet *)synchronizedTransactions addObject:v5];
    [(NSMutableSet *)self->_synchronizedTransactionsAwaitingCommitReadiness addObject:v5];
    [v5 setSynchronizationDelegate:self];
    [(FBSynchronizedTransactionGroup *)self addChildTransaction:v5];
  }
}

- (BOOL)_shouldFailForChildTransaction:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_synchronizedTransactions containsObject:v4])
  {
    v5 = [(FBSynchronizedTransactionGroup *)self synchronizationDelegate];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [v5 synchronizedTransactionGroup:self shouldFailForSynchronizedTransaction:v4];
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

- (void)_childTransactionDidComplete:(id)a3
{
  synchronizedTransactionsAwaitingCommitReadiness = self->_synchronizedTransactionsAwaitingCommitReadiness;
  v5 = a3;
  [(NSMutableSet *)synchronizedTransactionsAwaitingCommitReadiness removeObject:v5];
  [(NSMutableSet *)self->_synchronizedTransactionsReadyToCommit removeObject:v5];
  [(FBSynchronizedTransactionGroup *)self _checkPreconditionsAndCommitIfReady];
  v6.receiver = self;
  v6.super_class = FBSynchronizedTransactionGroup;
  [(FBSynchronizedTransactionGroup *)&v6 _childTransactionDidComplete:v5];
}

- (void)_performSynchronizedCommit:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FBSynchronizedTransactionGroup *)self synchronizationDelegate];
  [v5 synchronizedTransaction:self willCommitSynchronizedTransactions:v4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
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

  [v5 synchronizedTransaction:self didCommitSynchronizedTransactions:v6];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)synchronizedTransactionReadyToCommit:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_synchronizedTransactionsAwaitingCommitReadiness containsObject:?])
  {
    [(NSMutableSet *)self->_synchronizedTransactionsAwaitingCommitReadiness removeObject:v4];
    [(NSMutableSet *)self->_synchronizedTransactionsReadyToCommit addObject:v4];
    [(FBSynchronizedTransactionGroup *)self _checkPreconditionsAndCommitIfReady];
  }
}

@end