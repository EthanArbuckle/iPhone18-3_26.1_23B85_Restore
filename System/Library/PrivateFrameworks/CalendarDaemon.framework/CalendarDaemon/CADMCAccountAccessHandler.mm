@interface CADMCAccountAccessHandler
- (BOOL)_areLocalStoresRestrictedForAction:(unint64_t)action;
- (BOOL)_isAccount:(id)account restrictedForAction:(unint64_t)action;
- (BOOL)_isDisabledForAction:(unint64_t)action;
- (BOOL)_mayShowLocalAccountsForAction:(unint64_t)action;
- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database;
- (CADMCAccountAccessHandler)initWithDatabaseDataProvider:(id)provider accountsProvider:(id)accountsProvider managedConfigHandler:(id)handler accountManagement:(unint64_t)management bundleIdentifier:(id)identifier;
- (id)_cachedAccounts;
- (id)_filteredAccountsForAction:(unint64_t)action withUnfilteredAccounts:(id)accounts;
- (id)_loadAllowedAccountIdentifiersForAction:(unint64_t)action;
- (void)gatherRestrictedCalendarRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database;
- (void)reset;
@end

@implementation CADMCAccountAccessHandler

- (CADMCAccountAccessHandler)initWithDatabaseDataProvider:(id)provider accountsProvider:(id)accountsProvider managedConfigHandler:(id)handler accountManagement:(unint64_t)management bundleIdentifier:(id)identifier
{
  accountsProviderCopy = accountsProvider;
  handlerCopy = handler;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = CADMCAccountAccessHandler;
  v16 = [(CADAccountAccessHandler *)&v21 initWithDatabaseDataProvider:provider];
  v17 = v16;
  if (v16)
  {
    v16->_accountManagement = management;
    v18 = [identifierCopy copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v18;

    objc_storeStrong(&v17->_accountsProvider, accountsProvider);
    objc_storeStrong(&v17->_managedConfigHandler, handler);
    v17->_lock._os_unfair_lock_opaque = 0;
  }

  return v17;
}

- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database
{
  if ([(CADMCAccountAccessHandler *)self _isDisabledForAction:?])
  {
    return 1;
  }

  dataProvider = [(CADAccountAccessHandler *)self dataProvider];
  if ([dataProvider isLocalStore:store inDatabase:database])
  {
    v11 = [(CADMCAccountAccessHandler *)self _areLocalStoresRestrictedForAction:allowed];
  }

  else
  {
    v12 = [dataProvider accountIDForStore:store inDatabase:database];
    v11 = [(CADMCAccountAccessHandler *)self _isAccount:v12 restrictedForAction:allowed];
  }

  v9 = !v11;

  return v9;
}

- (void)gatherRestrictedCalendarRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  dsCopy = ds;
  if (![(CADMCAccountAccessHandler *)self _isDisabledForAction:action])
  {
    v9.receiver = self;
    v9.super_class = CADMCAccountAccessHandler;
    [(CADAccountAccessHandler *)&v9 gatherRestrictedCalendarRowIDs:dsCopy forAction:action inDatabase:database];
  }
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  localAccountRestrictionsByAction = self->_localAccountRestrictionsByAction;
  self->_localAccountRestrictionsByAction = 0;

  allowedAccountIdentifiersByAction = self->_allowedAccountIdentifiersByAction;
  self->_allowedAccountIdentifiersByAction = 0;

  cachedAccounts = self->_cachedAccounts;
  self->_cachedAccounts = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_isDisabledForAction:(unint64_t)action
{
  managedConfigHandler = [(CADMCAccountAccessHandler *)self managedConfigHandler];
  isOpenInRestrictionInEffect = [managedConfigHandler isOpenInRestrictionInEffect];

  return isOpenInRestrictionInEffect ^ 1;
}

- (id)_cachedAccounts
{
  cachedAccounts = self->_cachedAccounts;
  if (!cachedAccounts)
  {
    accountsProvider = [(CADMCAccountAccessHandler *)self accountsProvider];
    accounts = [accountsProvider accounts];
    v6 = self->_cachedAccounts;
    self->_cachedAccounts = accounts;

    cachedAccounts = self->_cachedAccounts;
  }

  return cachedAccounts;
}

- (BOOL)_areLocalStoresRestrictedForAction:(unint64_t)action
{
  v16[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  localAccountRestrictionsByAction = self->_localAccountRestrictionsByAction;
  if (!localAccountRestrictionsByAction)
  {
    v6 = [(CADMCAccountAccessHandler *)self _mayShowLocalAccountsForAction:0];
    v7 = [(CADMCAccountAccessHandler *)self _mayShowLocalAccountsForAction:1];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:!v6];
    v16[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:!v7];
    v16[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v11 = self->_localAccountRestrictionsByAction;
    self->_localAccountRestrictionsByAction = v10;

    localAccountRestrictionsByAction = self->_localAccountRestrictionsByAction;
  }

  v12 = [(NSArray *)localAccountRestrictionsByAction objectAtIndexedSubscript:action];
  os_unfair_lock_unlock(&self->_lock);
  bOOLValue = [v12 BOOLValue];

  v14 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)_isAccount:(id)account restrictedForAction:(unint64_t)action
{
  accountCopy = account;
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:action];
  v8 = [(NSMutableDictionary *)self->_allowedAccountIdentifiersByAction objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [(CADMCAccountAccessHandler *)self _loadAllowedAccountIdentifiersForAction:action];
    allowedAccountIdentifiersByAction = self->_allowedAccountIdentifiersByAction;
    if (!allowedAccountIdentifiersByAction)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_allowedAccountIdentifiersByAction;
      self->_allowedAccountIdentifiersByAction = v10;

      allowedAccountIdentifiersByAction = self->_allowedAccountIdentifiersByAction;
    }

    [(NSMutableDictionary *)allowedAccountIdentifiersByAction setObject:v8 forKeyedSubscript:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = [v8 containsObject:accountCopy];

  return v12 ^ 1;
}

- (id)_loadAllowedAccountIdentifiersForAction:(unint64_t)action
{
  _cachedAccounts = [(CADMCAccountAccessHandler *)self _cachedAccounts];
  v6 = [(CADMCAccountAccessHandler *)self _filteredAccountsForAction:action withUnfilteredAccounts:_cachedAccounts];
  v7 = [v6 valueForKey:@"identifier"];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

- (id)_filteredAccountsForAction:(unint64_t)action withUnfilteredAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (!action)
  {
    v12 = CADTargetFromAccountManagement([(CADMCAccountAccessHandler *)self accountManagement]);
    managedConfigHandler = [(CADMCAccountAccessHandler *)self managedConfigHandler];
    bundleIdentifier = [(CADMCAccountAccessHandler *)self bundleIdentifier];
    v11 = [managedConfigHandler filteredOpenInOriginatingAccounts:accountsCopy targetAppBundleID:bundleIdentifier targetAccountManagement:v12];
    goto LABEL_5;
  }

  if (action == 1)
  {
    v8 = CADSourceFromAccountManagement([(CADMCAccountAccessHandler *)self accountManagement]);
    managedConfigHandler = [(CADMCAccountAccessHandler *)self managedConfigHandler];
    bundleIdentifier = [(CADMCAccountAccessHandler *)self bundleIdentifier];
    v11 = [managedConfigHandler filteredOpenInAccounts:accountsCopy originatingAppBundleID:bundleIdentifier sourceAccountManagement:v8];
LABEL_5:
    v13 = v11;
    goto LABEL_7;
  }

  managedConfigHandler = CADAccountActionDescription(action);
  bundleIdentifier = [MEMORY[0x277CCA890] currentHandler];
  [bundleIdentifier handleFailureInMethod:a2 object:self file:@"CADMCAccountAccessHandler.m" lineNumber:172 description:{@"Unsupported CADAccountAction: [%@]", managedConfigHandler}];
  v13 = 0;
LABEL_7:

  return v13;
}

- (BOOL)_mayShowLocalAccountsForAction:(unint64_t)action
{
  if (action)
  {
    if (action != 1)
    {
      managedConfigHandler = CADAccountActionDescription(action);
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CADMCAccountAccessHandler.m" lineNumber:190 description:{@"Unsupported CADAccountAction: [%@]", managedConfigHandler}];
      v9 = 0;
      goto LABEL_7;
    }

    v4 = CADSourceFromAccountManagement([(CADMCAccountAccessHandler *)self accountManagement]);
    managedConfigHandler = [(CADMCAccountAccessHandler *)self managedConfigHandler];
    currentHandler = [(CADMCAccountAccessHandler *)self bundleIdentifier];
    v7 = [managedConfigHandler mayShowLocalAccountsForBundleID:currentHandler sourceAccountManagement:v4];
  }

  else
  {
    v8 = CADTargetFromAccountManagement([(CADMCAccountAccessHandler *)self accountManagement]);
    managedConfigHandler = [(CADMCAccountAccessHandler *)self managedConfigHandler];
    currentHandler = [(CADMCAccountAccessHandler *)self bundleIdentifier];
    v7 = [managedConfigHandler mayShowLocalAccountsForTargetBundleID:currentHandler targetAccountManagement:v8];
  }

  v9 = v7;
LABEL_7:

  return v9;
}

@end