@interface IDSTransactionLogTaskHandlerAccountInfo
- (IDSTransactionLogTaskHandlerAccountInfo)initWithAccountIdentity:(id)a3 aliasToAccountsMap:(id)a4 serviceName:(id)a5;
- (id)accountForAlias:(id)a3;
@end

@implementation IDSTransactionLogTaskHandlerAccountInfo

- (IDSTransactionLogTaskHandlerAccountInfo)initWithAccountIdentity:(id)a3 aliasToAccountsMap:(id)a4 serviceName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSTransactionLogTaskHandlerAccountInfo;
  v12 = [(IDSTransactionLogTaskHandlerAccountInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountIdentity, a3);
    objc_storeStrong(&v13->_aliasToAccountsMap, a4);
    objc_storeStrong(&v13->_serviceName, a5);
  }

  return v13;
}

- (id)accountForAlias:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(IDSTransactionLogTaskHandlerAccountInfo *)self aliasToAccountsMap];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end