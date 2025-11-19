@interface CADMCAccountAccessHandler
- (BOOL)_areLocalStoresRestrictedForAction:(unint64_t)a3;
- (BOOL)_isAccount:(id)a3 restrictedForAction:(unint64_t)a4;
- (BOOL)_isDisabledForAction:(unint64_t)a3;
- (BOOL)_mayShowLocalAccountsForAction:(unint64_t)a3;
- (BOOL)isActionAllowed:(unint64_t)a3 forStore:(void *)a4 inDatabase:(CalDatabase *)a5;
- (CADMCAccountAccessHandler)initWithDatabaseDataProvider:(id)a3 accountsProvider:(id)a4 managedConfigHandler:(id)a5 accountManagement:(unint64_t)a6 bundleIdentifier:(id)a7;
- (id)_cachedAccounts;
- (id)_filteredAccountsForAction:(unint64_t)a3 withUnfilteredAccounts:(id)a4;
- (id)_loadAllowedAccountIdentifiersForAction:(unint64_t)a3;
- (void)gatherRestrictedCalendarRowIDs:(id)a3 forAction:(unint64_t)a4 inDatabase:(CalDatabase *)a5;
- (void)reset;
@end

@implementation CADMCAccountAccessHandler

- (CADMCAccountAccessHandler)initWithDatabaseDataProvider:(id)a3 accountsProvider:(id)a4 managedConfigHandler:(id)a5 accountManagement:(unint64_t)a6 bundleIdentifier:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = CADMCAccountAccessHandler;
  v16 = [(CADAccountAccessHandler *)&v21 initWithDatabaseDataProvider:a3];
  v17 = v16;
  if (v16)
  {
    v16->_accountManagement = a6;
    v18 = [v15 copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v18;

    objc_storeStrong(&v17->_accountsProvider, a4);
    objc_storeStrong(&v17->_managedConfigHandler, a5);
    v17->_lock._os_unfair_lock_opaque = 0;
  }

  return v17;
}

- (BOOL)isActionAllowed:(unint64_t)a3 forStore:(void *)a4 inDatabase:(CalDatabase *)a5
{
  if ([(CADMCAccountAccessHandler *)self _isDisabledForAction:?])
  {
    return 1;
  }

  v10 = [(CADAccountAccessHandler *)self dataProvider];
  if ([v10 isLocalStore:a4 inDatabase:a5])
  {
    v11 = [(CADMCAccountAccessHandler *)self _areLocalStoresRestrictedForAction:a3];
  }

  else
  {
    v12 = [v10 accountIDForStore:a4 inDatabase:a5];
    v11 = [(CADMCAccountAccessHandler *)self _isAccount:v12 restrictedForAction:a3];
  }

  v9 = !v11;

  return v9;
}

- (void)gatherRestrictedCalendarRowIDs:(id)a3 forAction:(unint64_t)a4 inDatabase:(CalDatabase *)a5
{
  v8 = a3;
  if (![(CADMCAccountAccessHandler *)self _isDisabledForAction:a4])
  {
    v9.receiver = self;
    v9.super_class = CADMCAccountAccessHandler;
    [(CADAccountAccessHandler *)&v9 gatherRestrictedCalendarRowIDs:v8 forAction:a4 inDatabase:a5];
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

- (BOOL)_isDisabledForAction:(unint64_t)a3
{
  v3 = [(CADMCAccountAccessHandler *)self managedConfigHandler];
  v4 = [v3 isOpenInRestrictionInEffect];

  return v4 ^ 1;
}

- (id)_cachedAccounts
{
  cachedAccounts = self->_cachedAccounts;
  if (!cachedAccounts)
  {
    v4 = [(CADMCAccountAccessHandler *)self accountsProvider];
    v5 = [v4 accounts];
    v6 = self->_cachedAccounts;
    self->_cachedAccounts = v5;

    cachedAccounts = self->_cachedAccounts;
  }

  return cachedAccounts;
}

- (BOOL)_areLocalStoresRestrictedForAction:(unint64_t)a3
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

  v12 = [(NSArray *)localAccountRestrictionsByAction objectAtIndexedSubscript:a3];
  os_unfair_lock_unlock(&self->_lock);
  v13 = [v12 BOOLValue];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_isAccount:(id)a3 restrictedForAction:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v8 = [(NSMutableDictionary *)self->_allowedAccountIdentifiersByAction objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [(CADMCAccountAccessHandler *)self _loadAllowedAccountIdentifiersForAction:a4];
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
  v12 = [v8 containsObject:v6];

  return v12 ^ 1;
}

- (id)_loadAllowedAccountIdentifiersForAction:(unint64_t)a3
{
  v5 = [(CADMCAccountAccessHandler *)self _cachedAccounts];
  v6 = [(CADMCAccountAccessHandler *)self _filteredAccountsForAction:a3 withUnfilteredAccounts:v5];
  v7 = [v6 valueForKey:@"identifier"];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

- (id)_filteredAccountsForAction:(unint64_t)a3 withUnfilteredAccounts:(id)a4
{
  v7 = a4;
  if (!a3)
  {
    v12 = CADTargetFromAccountManagement([(CADMCAccountAccessHandler *)self accountManagement]);
    v9 = [(CADMCAccountAccessHandler *)self managedConfigHandler];
    v10 = [(CADMCAccountAccessHandler *)self bundleIdentifier];
    v11 = [v9 filteredOpenInOriginatingAccounts:v7 targetAppBundleID:v10 targetAccountManagement:v12];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v8 = CADSourceFromAccountManagement([(CADMCAccountAccessHandler *)self accountManagement]);
    v9 = [(CADMCAccountAccessHandler *)self managedConfigHandler];
    v10 = [(CADMCAccountAccessHandler *)self bundleIdentifier];
    v11 = [v9 filteredOpenInAccounts:v7 originatingAppBundleID:v10 sourceAccountManagement:v8];
LABEL_5:
    v13 = v11;
    goto LABEL_7;
  }

  v9 = CADAccountActionDescription(a3);
  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"CADMCAccountAccessHandler.m" lineNumber:172 description:{@"Unsupported CADAccountAction: [%@]", v9}];
  v13 = 0;
LABEL_7:

  return v13;
}

- (BOOL)_mayShowLocalAccountsForAction:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      v5 = CADAccountActionDescription(a3);
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"CADMCAccountAccessHandler.m" lineNumber:190 description:{@"Unsupported CADAccountAction: [%@]", v5}];
      v9 = 0;
      goto LABEL_7;
    }

    v4 = CADSourceFromAccountManagement([(CADMCAccountAccessHandler *)self accountManagement]);
    v5 = [(CADMCAccountAccessHandler *)self managedConfigHandler];
    v6 = [(CADMCAccountAccessHandler *)self bundleIdentifier];
    v7 = [v5 mayShowLocalAccountsForBundleID:v6 sourceAccountManagement:v4];
  }

  else
  {
    v8 = CADTargetFromAccountManagement([(CADMCAccountAccessHandler *)self accountManagement]);
    v5 = [(CADMCAccountAccessHandler *)self managedConfigHandler];
    v6 = [(CADMCAccountAccessHandler *)self bundleIdentifier];
    v7 = [v5 mayShowLocalAccountsForTargetBundleID:v6 targetAccountManagement:v8];
  }

  v9 = v7;
LABEL_7:

  return v9;
}

@end