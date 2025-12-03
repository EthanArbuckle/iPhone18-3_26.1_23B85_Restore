@interface CRKClassKitChangeNotifier
- (BOOL)updateObservedTrustedPersonIDsWithRoster:(id)roster;
- (CRKClassKitChangeNotifier)initWithRequirements:(id)requirements;
- (CRKClassKitChangeNotifierDelegate)delegate;
- (id)makeObserverBlock;
- (id)trustedPersonIDsInRoster:(id)roster;
- (void)dataChanged;
- (void)dealloc;
- (void)startObservingGeneralChanges;
- (void)stopObservingGeneralChanges;
- (void)stopObservingTrustedPersons;
@end

@implementation CRKClassKitChangeNotifier

- (void)dealloc
{
  generalObserverToken = [(CRKClassKitChangeNotifier *)self generalObserverToken];
  trustedPersonObserverToken = [(CRKClassKitChangeNotifier *)self trustedPersonObserverToken];
  requirements = [(CRKClassKitChangeNotifier *)self requirements];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CRKClassKitChangeNotifier_dealloc__block_invoke;
  block[3] = &unk_278DC1DF0;
  v11 = generalObserverToken;
  v12 = requirements;
  v13 = trustedPersonObserverToken;
  v6 = trustedPersonObserverToken;
  v7 = requirements;
  v8 = generalObserverToken;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v9.receiver = self;
  v9.super_class = CRKClassKitChangeNotifier;
  [(CRKClassKitChangeNotifier *)&v9 dealloc];
}

uint64_t __36__CRKClassKitChangeNotifier_dealloc__block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    result = [*(result + 40) removeObserver:?];
  }

  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);

    return [v2 removeObserver:?];
  }

  return result;
}

- (CRKClassKitChangeNotifier)initWithRequirements:(id)requirements
{
  requirementsCopy = requirements;
  v11.receiver = self;
  v11.super_class = CRKClassKitChangeNotifier;
  v6 = [(CRKClassKitChangeNotifier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requirements, requirements);
    v8 = objc_opt_new();
    observedTrustedPersonIDs = v7->_observedTrustedPersonIDs;
    v7->_observedTrustedPersonIDs = v8;

    [(CRKClassKitChangeNotifier *)v7 startObservingGeneralChanges];
  }

  return v7;
}

- (BOOL)updateObservedTrustedPersonIDsWithRoster:(id)roster
{
  v4 = [(CRKClassKitChangeNotifier *)self trustedPersonIDsInRoster:roster];
  observedTrustedPersonIDs = [(CRKClassKitChangeNotifier *)self observedTrustedPersonIDs];
  if (observedTrustedPersonIDs | v4 && (v6 = observedTrustedPersonIDs, -[CRKClassKitChangeNotifier observedTrustedPersonIDs](self, "observedTrustedPersonIDs"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:v4], v7, v6, (v8 & 1) == 0))
  {
    [(CRKClassKitChangeNotifier *)self setObservedTrustedPersonIDs:v4];
    [(CRKClassKitChangeNotifier *)self stopObservingTrustedPersons];
    requirements = [(CRKClassKitChangeNotifier *)self requirements];
    makeObserverBlock = [(CRKClassKitChangeNotifier *)self makeObserverBlock];
    v12 = [requirements addObserverForPersonIDs:v4 observerBlock:makeObserverBlock];
    [(CRKClassKitChangeNotifier *)self setTrustedPersonObserverToken:v12];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)startObservingGeneralChanges
{
  requirements = [(CRKClassKitChangeNotifier *)self requirements];
  makeObserverBlock = [(CRKClassKitChangeNotifier *)self makeObserverBlock];
  v4 = [requirements addGeneralObserver:makeObserverBlock];
  [(CRKClassKitChangeNotifier *)self setGeneralObserverToken:v4];
}

- (void)stopObservingGeneralChanges
{
  generalObserverToken = [(CRKClassKitChangeNotifier *)self generalObserverToken];

  if (generalObserverToken)
  {
    requirements = [(CRKClassKitChangeNotifier *)self requirements];
    generalObserverToken2 = [(CRKClassKitChangeNotifier *)self generalObserverToken];
    [requirements removeObserver:generalObserverToken2];

    [(CRKClassKitChangeNotifier *)self setGeneralObserverToken:0];
  }
}

- (void)stopObservingTrustedPersons
{
  trustedPersonObserverToken = [(CRKClassKitChangeNotifier *)self trustedPersonObserverToken];

  if (trustedPersonObserverToken)
  {
    requirements = [(CRKClassKitChangeNotifier *)self requirements];
    trustedPersonObserverToken2 = [(CRKClassKitChangeNotifier *)self trustedPersonObserverToken];
    [requirements removeObserver:trustedPersonObserverToken2];

    [(CRKClassKitChangeNotifier *)self setTrustedPersonObserverToken:0];
  }
}

- (id)makeObserverBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__CRKClassKitChangeNotifier_makeObserverBlock__block_invoke;
  v4[3] = &unk_278DC1870;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x245D3AAD0](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __46__CRKClassKitChangeNotifier_makeObserverBlock__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CRKClassKitChangeNotifier_makeObserverBlock__block_invoke_2;
  block[3] = &unk_278DC1870;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __46__CRKClassKitChangeNotifier_makeObserverBlock__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dataChanged];
}

- (void)dataChanged
{
  if (_CRKLogASM_onceToken_25 != -1)
  {
    [CRKClassKitChangeNotifier dataChanged];
  }

  v3 = _CRKLogASM_logObj_25;
  if (os_log_type_enabled(_CRKLogASM_logObj_25, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "ClassKit data changed", v5, 2u);
  }

  delegate = [(CRKClassKitChangeNotifier *)self delegate];
  [delegate notifierDidObserveClassKitChange:self];
}

- (id)trustedPersonIDsInRoster:(id)roster
{
  v30 = *MEMORY[0x277D85DE8];
  rosterCopy = roster;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = rosterCopy;
  courses = [rosterCopy courses];
  v6 = [courses countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(courses);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        trustedUsers = [v10 trustedUsers];
        v12 = [trustedUsers countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(trustedUsers);
              }

              identifier = [*(*(&v20 + 1) + 8 * j) identifier];
              [v4 addObject:identifier];
            }

            v13 = [trustedUsers countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [courses countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = [v4 copy];

  return v17;
}

- (CRKClassKitChangeNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end