@interface SUUISettingsEditTransaction
- (BOOL)isCommiting;
- (BOOL)isValid;
- (SUUISettingsEditTransaction)initWithSettingDescriptions:(id)descriptions;
- (SUUISettingsEditTransactionDelegate)delegate;
- (void)_delegateDidCompleteTransaction;
- (void)_delegateDidFailTransaction;
- (void)_delegateWillBeginTransaction;
- (void)_delegateWillCommitTransaction;
- (void)_finalizeCommit;
- (void)_settingDescription:(id)description completedWithSuccess:(BOOL)success;
- (void)beginTransaction;
- (void)cancelTransaction;
- (void)commitTransaction;
- (void)rollbackTransaction;
@end

@implementation SUUISettingsEditTransaction

- (SUUISettingsEditTransaction)initWithSettingDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  v11.receiver = self;
  v11.super_class = SUUISettingsEditTransaction;
  v5 = [(SUUISettingsEditTransaction *)&v11 init];
  if (v5)
  {
    v6 = [descriptionsCopy copy];
    all = v5->_all;
    v5->_all = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v5->_lock;
    v5->_lock = v8;

    [(NSLock *)v5->_lock setName:@"com.apple.StoreKit.settingsEditTransaction"];
  }

  return v5;
}

- (void)beginTransaction
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_all;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) beginEditing];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(SUUISettingsEditTransaction *)self _delegateWillBeginTransaction];
}

- (void)cancelTransaction
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_all;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancelEdits];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSLock *)self->_lock lock];
  pending = self->_pending;
  self->_pending = 0;

  [(NSLock *)self->_lock unlock];
  [(SUUISettingsEditTransaction *)self _delegateDidFailTransaction];
}

- (void)commitTransaction
{
  v18 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  [(SUUISettingsEditTransaction *)self _delegateWillCommitTransaction];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  pending = self->_pending;
  self->_pending = v3;

  self->_success = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_all;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __48__SUUISettingsEditTransaction_commitTransaction__block_invoke;
        v10[3] = &unk_2798FCFC8;
        objc_copyWeak(&v11, &location);
        v10[4] = v9;
        if ([v9 commitEdits:v10])
        {
          [(NSLock *)self->_lock lock];
          [(NSMutableSet *)self->_pending addObject:v9];
          [(NSLock *)self->_lock unlock];
        }

        objc_destroyWeak(&v11);
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&location);
}

void __48__SUUISettingsEditTransaction_commitTransaction__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _settingDescription:*(a1 + 32) completedWithSuccess:a2];
}

- (BOOL)isCommiting
{
  [(NSLock *)self->_lock lock];
  pending = self->_pending;
  if (pending)
  {
    v4 = [(NSMutableSet *)pending count]!= 0;
  }

  else
  {
    v4 = 0;
  }

  [(NSLock *)self->_lock unlock];
  return v4;
}

- (BOOL)isValid
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_all;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) editsValid])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)rollbackTransaction
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_all;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) discardEdits];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSLock *)self->_lock lock];
  pending = self->_pending;
  self->_pending = 0;

  [(NSLock *)self->_lock unlock];
  [(SUUISettingsEditTransaction *)self _delegateDidCompleteTransaction];
}

- (void)_delegateDidCompleteTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 settingsEditTransactionDidCompleteTransaction:self];
    }
  }
}

- (void)_delegateDidFailTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 settingsEditTransactionDidFailTransaction:self];
    }
  }
}

- (void)_delegateWillBeginTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 settingsEditTransactionWillBeginTransaction:self];
    }
  }
}

- (void)_delegateWillCommitTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 settingsEditTransactionWillCommitTransaction:self];
    }
  }
}

- (void)_finalizeCommit
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUUISettingsEditTransaction__finalizeCommit__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __46__SUUISettingsEditTransaction__finalizeCommit__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[40] == 1)
  {
    return [v1 _delegateDidCompleteTransaction];
  }

  else
  {
    return [v1 _delegateDidFailTransaction];
  }
}

- (void)_settingDescription:(id)description completedWithSuccess:(BOOL)success
{
  lock = self->_lock;
  descriptionCopy = description;
  [(NSLock *)lock lock];
  self->_success &= success;
  [(NSMutableSet *)self->_pending removeObject:descriptionCopy];

  v8 = [(NSMutableSet *)self->_pending count];
  [(NSLock *)self->_lock unlock];
  if (!v8)
  {

    [(SUUISettingsEditTransaction *)self _finalizeCommit];
  }
}

- (SUUISettingsEditTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end