@interface CRKIDSAccountsEvaluator
- (CRKIDSAccountsEvaluator)initWithIDSLocalPrimitives:(id)a3;
- (void)beginObservingAccounts:(id)a3;
- (void)beginObservingKnownAccountChanges;
- (void)dealloc;
- (void)endObservingAccounts:(id)a3;
- (void)endObservingKnownAccountChanges;
- (void)knownAccountsDidChange;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observedAccountDidChange:(id)a3;
- (void)updateState;
@end

@implementation CRKIDSAccountsEvaluator

- (void)dealloc
{
  [(CRKIDSAccountsEvaluator *)self endObservingKnownAccountChanges];
  v3 = [(CRKIDSAccountsEvaluator *)self observedAccounts];
  [(CRKIDSAccountsEvaluator *)self endObservingAccounts:v3];

  v4.receiver = self;
  v4.super_class = CRKIDSAccountsEvaluator;
  [(CRKIDSAccountsEvaluator *)&v4 dealloc];
}

- (CRKIDSAccountsEvaluator)initWithIDSLocalPrimitives:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRKIDSAccountsEvaluator;
  v6 = [(CRKIDSAccountsEvaluator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_IDSLocalPrimitives, a3);
    observedAccounts = v7->_observedAccounts;
    v7->_observedAccounts = MEMORY[0x277CBEBF8];

    [(CRKIDSAccountsEvaluator *)v7 beginObservingKnownAccountChanges];
    [(CRKIDSAccountsEvaluator *)v7 knownAccountsDidChange];
  }

  return v7;
}

- (void)knownAccountsDidChange
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKIDSAccountsEvaluator.m" lineNumber:62 description:{@"%@ must be called from the main thread", v4}];
}

- (void)observedAccountDidChange:(id)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKIDSAccountsEvaluator *)a2 observedAccountDidChange:?];
  }

  [(CRKIDSAccountsEvaluator *)self updateState];
}

- (void)beginObservingKnownAccountChanges
{
  v3 = [(CRKIDSAccountsEvaluator *)self IDSLocalPrimitives];
  [v3 addObserver:self forKeyPath:@"accounts" options:0 context:@"CRKIDSAccountsEvaluatorContext"];
}

- (void)endObservingKnownAccountChanges
{
  v3 = [(CRKIDSAccountsEvaluator *)self IDSLocalPrimitives];
  [v3 removeObserver:self forKeyPath:@"accounts" context:@"CRKIDSAccountsEvaluatorContext"];
}

- (void)beginObservingAccounts:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) addObserver:self forKeyPath:@"active" options:0 context:@"CRKIDSAccountsEvaluatorContext"];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)endObservingAccounts:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeObserver:self forKeyPath:@"active" context:@"CRKIDSAccountsEvaluatorContext"];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = v10;
  if (a6 == @"CRKIDSAccountsEvaluatorContext")
  {
    if ([v10 isEqualToString:@"accounts"])
    {
      [(CRKIDSAccountsEvaluator *)self knownAccountsDidChange];
    }

    else if ([v11 isEqualToString:@"active"])
    {
      [(CRKIDSAccountsEvaluator *)self updateState];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRKIDSAccountsEvaluator;
    [(CRKIDSAccountsEvaluator *)&v12 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (void)updateState
{
  v3 = [(CRKIDSAccountsEvaluator *)self IDSLocalPrimitives];
  v4 = [v3 accounts];
  v8 = [CRKIDSAccountsState stateForAccounts:v4];

  v5 = [(CRKIDSAccountsEvaluator *)self state];
  if (v5 | v8)
  {
    v6 = [(CRKIDSAccountsEvaluator *)self state];
    v7 = [v6 isEqual:v8];

    if ((v7 & 1) == 0)
    {
      [(CRKIDSAccountsEvaluator *)self setState:v8];
    }
  }
}

- (void)observedAccountDidChange:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKIDSAccountsEvaluator.m" lineNumber:75 description:{@"%@ must be called from the main thread", v4}];
}

@end