@interface CSAdjunctListActionManager
- (BOOL)_actionIsInRelevantSlot:(id)slot;
- (BOOL)_handleLockScreenContentAction:(id)action;
- (BOOL)handleAction:(id)action forProvider:(id)provider;
- (BOOL)handlesActionWithClass:(Class)class;
- (CSAdjunctListActionManager)initWithItemDestination:(id)destination;
@end

@implementation CSAdjunctListActionManager

- (CSAdjunctListActionManager)initWithItemDestination:(id)destination
{
  destinationCopy = destination;
  v9.receiver = self;
  v9.super_class = CSAdjunctListActionManager;
  v6 = [(CSAdjunctListActionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemDestination, destination);
  }

  return v7;
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

    if ([(CSAdjunctListActionManager *)self _actionIsInRelevantSlot:v10])
    {
      v9 = [(CSAdjunctListActionManager *)self _handleLockScreenContentAction:v10];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_actionIsInRelevantSlot:(id)slot
{
  if (!slot)
  {
    return 0;
  }

  slot = [slot slot];
  v4 = [slot isEqualToString:*MEMORY[0x277D67020]];

  return v4;
}

- (BOOL)_handleLockScreenContentAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy;
  if (actionCopy && [actionCopy isValid])
  {
    objc_initWeak(&location, self);
    identifier = [v5 identifier];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__CSAdjunctListActionManager__handleLockScreenContentAction___block_invoke;
    v12[3] = &unk_27838DA08;
    v7 = identifier;
    v13 = v7;
    objc_copyWeak(&v14, &location);
    [v5 setNullificationHandler:v12];
    v8 = [CSAdjunctListItem alloc];
    identifier2 = [v5 identifier];
    v10 = [(CSAdjunctListItem *)v8 initWithIdentifier:identifier2];

    [(CSAdjunctListItem *)v10 addAction:v5];
    [(CSItemDestination *)self->_itemDestination addOrUpdateItem:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __61__CSAdjunctListActionManager__handleLockScreenContentAction___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_21EB05000, v2, OS_LOG_TYPE_DEFAULT, "Setting content action nullification handler with identifier: %@", buf, 0xCu);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__CSAdjunctListActionManager__handleLockScreenContentAction___block_invoke_1;
  v4[3] = &unk_27838C460;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(&v6);
}

void __61__CSAdjunctListActionManager__handleLockScreenContentAction___block_invoke_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] removeItemForIdentifier:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end