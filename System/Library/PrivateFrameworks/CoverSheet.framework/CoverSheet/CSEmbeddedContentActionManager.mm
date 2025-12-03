@interface CSEmbeddedContentActionManager
- (BOOL)_addAction:(id)action;
- (BOOL)handleAction:(id)action forProvider:(id)provider;
- (BOOL)handlesActionWithClass:(Class)class;
- (CSEmbeddedContentActionManager)initWithDelegate:(id)delegate;
- (CSEmbeddedContentActionManagerDelegate)delegate;
- (id)validActionWithIdentifierIfExists:(id)exists;
- (void)_removeAction:(id)action;
- (void)setContentActionProvider:(id)provider;
@end

@implementation CSEmbeddedContentActionManager

- (CSEmbeddedContentActionManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = CSEmbeddedContentActionManager;
  v5 = [(CSEmbeddedContentActionManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [MEMORY[0x277CBEB58] set];
    activeActions = v6->_activeActions;
    v6->_activeActions = v7;
  }

  return v6;
}

- (id)validActionWithIdentifierIfExists:(id)exists
{
  v18 = *MEMORY[0x277D85DE8];
  existsCopy = exists;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_activeActions;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isValid])
        {
          identifier = [v9 identifier];
          v11 = [identifier isEqualToString:existsCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (void)setContentActionProvider:(id)provider
{
  providerCopy = provider;
  contentActionProvider = self->_contentActionProvider;
  if (contentActionProvider != providerCopy)
  {
    v7 = providerCopy;
    [(SBFActionProviding *)contentActionProvider removeActionHandler:self];
    objc_storeStrong(&self->_contentActionProvider, provider);
    contentActionProvider = [(SBFActionProviding *)self->_contentActionProvider addActionHandler:self];
    providerCopy = v7;
  }

  MEMORY[0x2821F96F8](contentActionProvider, providerCopy);
}

- (BOOL)handlesActionWithClass:(Class)class
{
  v4 = objc_opt_class();

  return [(objc_class *)class isSubclassOfClass:v4];
}

- (BOOL)handleAction:(id)action forProvider:(id)provider
{
  actionCopy = action;
  if ([actionCopy isValid])
  {
    v6 = objc_opt_class();
    v7 = actionCopy;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    slot = [v10 slot];
    if ([slot isEqualToString:*MEMORY[0x277D67018]])
    {
      identifier = [v10 identifier];
      v13 = [identifier isEqualToString:*MEMORY[0x277D66D30]];

      if (v13)
      {
        v9 = [(CSEmbeddedContentActionManager *)self _addAction:v10];
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
    }

    v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)_addAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  objc_initWeak(&from, actionCopy);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __45__CSEmbeddedContentActionManager__addAction___block_invoke;
  v11 = &unk_27838B6F8;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  v5 = MEMORY[0x223D698D0](&v8);
  [actionCopy setInvalidationHandler:{v5, v8, v9, v10, v11}];
  [(NSMutableSet *)self->_activeActions addObject:actionCopy];
  delegate = [(CSEmbeddedContentActionManager *)self delegate];
  [delegate actionManager:self addedAction:actionCopy];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __45__CSEmbeddedContentActionManager__addAction___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__CSEmbeddedContentActionManager__addAction___block_invoke_2;
  v2[3] = &unk_27838B6F8;
  objc_copyWeak(&v3, (a1 + 32));
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v3);
}

void __45__CSEmbeddedContentActionManager__addAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAction:v2];
}

- (void)_removeAction:(id)action
{
  actionCopy = action;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NSMutableSet *)self->_activeActions containsObject:actionCopy])
  {
    [(NSMutableSet *)self->_activeActions removeObject:actionCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained actionManager:self removedAction:actionCopy];
  }
}

- (CSEmbeddedContentActionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end