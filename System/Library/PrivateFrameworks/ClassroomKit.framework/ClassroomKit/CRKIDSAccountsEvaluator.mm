@interface CRKIDSAccountsEvaluator
- (CRKIDSAccountsEvaluator)initWithIDSLocalPrimitives:(id)primitives;
- (void)beginObservingAccounts:(id)accounts;
- (void)beginObservingKnownAccountChanges;
- (void)dealloc;
- (void)endObservingAccounts:(id)accounts;
- (void)endObservingKnownAccountChanges;
- (void)knownAccountsDidChange;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)observedAccountDidChange:(id)change;
- (void)updateState;
@end

@implementation CRKIDSAccountsEvaluator

- (void)dealloc
{
  [(CRKIDSAccountsEvaluator *)self endObservingKnownAccountChanges];
  observedAccounts = [(CRKIDSAccountsEvaluator *)self observedAccounts];
  [(CRKIDSAccountsEvaluator *)self endObservingAccounts:observedAccounts];

  v4.receiver = self;
  v4.super_class = CRKIDSAccountsEvaluator;
  [(CRKIDSAccountsEvaluator *)&v4 dealloc];
}

- (CRKIDSAccountsEvaluator)initWithIDSLocalPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v10.receiver = self;
  v10.super_class = CRKIDSAccountsEvaluator;
  v6 = [(CRKIDSAccountsEvaluator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_IDSLocalPrimitives, primitives);
    observedAccounts = v7->_observedAccounts;
    v7->_observedAccounts = MEMORY[0x277CBEBF8];

    [(CRKIDSAccountsEvaluator *)v7 beginObservingKnownAccountChanges];
    [(CRKIDSAccountsEvaluator *)v7 knownAccountsDidChange];
  }

  return v7;
}

- (void)knownAccountsDidChange
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKIDSAccountsEvaluator.m" lineNumber:62 description:{@"%@ must be called from the main thread", v4}];
}

- (void)observedAccountDidChange:(id)change
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKIDSAccountsEvaluator *)a2 observedAccountDidChange:?];
  }

  [(CRKIDSAccountsEvaluator *)self updateState];
}

- (void)beginObservingKnownAccountChanges
{
  iDSLocalPrimitives = [(CRKIDSAccountsEvaluator *)self IDSLocalPrimitives];
  [iDSLocalPrimitives addObserver:self forKeyPath:@"accounts" options:0 context:@"CRKIDSAccountsEvaluatorContext"];
}

- (void)endObservingKnownAccountChanges
{
  iDSLocalPrimitives = [(CRKIDSAccountsEvaluator *)self IDSLocalPrimitives];
  [iDSLocalPrimitives removeObserver:self forKeyPath:@"accounts" context:@"CRKIDSAccountsEvaluatorContext"];
}

- (void)beginObservingAccounts:(id)accounts
{
  v14 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [accountsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(accountsCopy);
        }

        [*(*(&v9 + 1) + 8 * v8++) addObserver:self forKeyPath:@"active" options:0 context:@"CRKIDSAccountsEvaluatorContext"];
      }

      while (v6 != v8);
      v6 = [accountsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)endObservingAccounts:(id)accounts
{
  v14 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [accountsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(accountsCopy);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeObserver:self forKeyPath:@"active" context:@"CRKIDSAccountsEvaluatorContext"];
      }

      while (v6 != v8);
      v6 = [accountsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (context == @"CRKIDSAccountsEvaluatorContext")
  {
    if ([pathCopy isEqualToString:@"accounts"])
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
    [(CRKIDSAccountsEvaluator *)&v12 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (void)updateState
{
  iDSLocalPrimitives = [(CRKIDSAccountsEvaluator *)self IDSLocalPrimitives];
  accounts = [iDSLocalPrimitives accounts];
  v8 = [CRKIDSAccountsState stateForAccounts:accounts];

  state = [(CRKIDSAccountsEvaluator *)self state];
  if (state | v8)
  {
    state2 = [(CRKIDSAccountsEvaluator *)self state];
    v7 = [state2 isEqual:v8];

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