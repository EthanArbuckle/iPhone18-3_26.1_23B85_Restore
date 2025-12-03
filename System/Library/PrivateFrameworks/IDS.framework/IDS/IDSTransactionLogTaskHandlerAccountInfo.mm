@interface IDSTransactionLogTaskHandlerAccountInfo
- (IDSTransactionLogTaskHandlerAccountInfo)initWithAccountIdentity:(id)identity aliasToAccountsMap:(id)map serviceName:(id)name;
- (id)accountForAlias:(id)alias;
@end

@implementation IDSTransactionLogTaskHandlerAccountInfo

- (IDSTransactionLogTaskHandlerAccountInfo)initWithAccountIdentity:(id)identity aliasToAccountsMap:(id)map serviceName:(id)name
{
  identityCopy = identity;
  mapCopy = map;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = IDSTransactionLogTaskHandlerAccountInfo;
  v12 = [(IDSTransactionLogTaskHandlerAccountInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountIdentity, identity);
    objc_storeStrong(&v13->_aliasToAccountsMap, map);
    objc_storeStrong(&v13->_serviceName, name);
  }

  return v13;
}

- (id)accountForAlias:(id)alias
{
  if (alias)
  {
    aliasCopy = alias;
    aliasToAccountsMap = [(IDSTransactionLogTaskHandlerAccountInfo *)self aliasToAccountsMap];
    v6 = [aliasToAccountsMap objectForKeyedSubscript:aliasCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end