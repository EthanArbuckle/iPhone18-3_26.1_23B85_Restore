@interface CardDAVDelegateManager
+ (void)finishFutures:(id)a3;
- (CardDAVDelegateManager)initWithDelegateInfoProvider:(id)a3 accountID:(id)a4 databaseHelper:(id)a5;
- (id)account;
- (id)addChildWithDelegateInfo:(id)a3;
- (id)collectDelegateInfoReturningError:(id *)a3;
- (id)existingChildAccountsWithProperty:(id)a3;
- (id)removeAccount:(id)a3;
- (id)saveAccount:(id)a3;
- (void)deleteOrphanDatabasesLackingRepresentationInDelegateInfos:(id)a3;
- (void)updateDelegates;
@end

@implementation CardDAVDelegateManager

- (CardDAVDelegateManager)initWithDelegateInfoProvider:(id)a3 accountID:(id)a4 databaseHelper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CardDAVDelegateManager;
  v12 = [(CardDAVDelegateManager *)&v17 init];
  if (v12)
  {
    v13 = sharedDAAccountStore();
    accountStore = v12->_accountStore;
    v12->_accountStore = v13;

    objc_storeStrong(&v12->_accountID, a4);
    objc_storeStrong(&v12->_delegateProvider, a3);
    objc_storeStrong(&v12->_databaseHelper, a5);
    v15 = v12;
  }

  return v12;
}

- (void)updateDelegates
{
  v3 = +[NSMutableArray array];
  v45 = 0;
  v4 = [(CardDAVDelegateManager *)self collectDelegateInfoReturningError:&v45];
  v5 = v45;
  v6 = v5;
  if (v4)
  {
    v33 = v5;
    v35 = v3;
    v7 = +[DASharedAccountProperties DAAccountPrincipalPath];
    v38 = self;
    v8 = [(CardDAVDelegateManager *)self existingChildAccountsWithProperty:v7];
    v9 = [v8 mutableCopy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v4;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = *v42;
    v13 = CNIsStringEmpty;
    v14 = CNIsStringEmpty + 16;
    v15 = _CPLog_to_os_log_type[3];
    type = v15;
    v36 = CNIsStringEmpty;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = [v17 principalPath];
        if (!(*(v13 + 16))(v13, v18))
        {
          v21 = v11;
          v22 = v14;
          v23 = v12;
          v24 = v9;
          v25 = [v9 objectForKeyedSubscript:v18];
          if (v25)
          {
            v19 = v25;
            v26 = [v25 accountProperties];
            [v17 setPropertiesOnAccount:v19];
            v27 = [v19 accountProperties];
            v28 = [v26 isEqualToDictionary:v27];

            if (v28)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v19 = [(CardDAVDelegateManager *)v38 addChildWithDelegateInfo:v17];
          }

          v29 = [(CardDAVDelegateManager *)v38 saveAccount:v19];
          [v35 addObject:v29];

LABEL_15:
          v9 = v24;
          [v24 removeObjectForKey:v18];
          v12 = v23;
          v14 = v22;
          v11 = v21;
          v13 = v36;
          goto LABEL_16;
        }

        v19 = DALoggingwithCategory();
        if (!os_log_type_enabled(v19, v15))
        {
          goto LABEL_17;
        }

        v20 = [v17 dsid];
        *buf = 138543618;
        v47 = v20;
        v48 = 2112;
        v49 = v17;
        _os_log_impl(&dword_0, v19, type, "Unexpected condition updating deletes - no principal path for delegateInfo: %{public}@ %@", buf, 0x16u);

LABEL_16:
        v15 = type;
LABEL_17:
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (!v11)
      {
LABEL_19:

        v30 = [v9 allValues];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1EEF4;
        v40[3] = &unk_3CD40;
        v40[4] = v38;
        v31 = [v30 _cn_map:v40];

        [(CardDAVDelegateManager *)v38 deleteOrphanDatabasesLackingRepresentationInDelegateInfos:obj];
        [objc_opt_class() finishFutures:v31];
        v3 = v35;
        [objc_opt_class() finishFutures:v35];

        v6 = v33;
        v4 = v34;
        goto LABEL_22;
      }
    }
  }

  v9 = DALoggingwithCategory();
  v32 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v9, v32))
  {
    *buf = 138412290;
    v47 = v6;
    _os_log_impl(&dword_0, v9, v32, "Skipping delegate state update (including account account adds/removes) because we got an error fetching delegates from Family Circle. error:  %@", buf, 0xCu);
  }

LABEL_22:
}

- (void)deleteOrphanDatabasesLackingRepresentationInDelegateInfos:(id)a3
{
  v5 = [a3 _cn_map:&stru_3CD80];
  v4 = [(CardDAVDelegateManager *)self databaseHelper];
  [v4 removeDelegateDatabasesNotMatchingAltDSIDs:v5];
}

+ (void)finishFutures:(id)a3
{
  v5 = a3;
  if (((*(CNIsArrayEmpty + 16))() & 1) == 0)
  {
    v3 = [CNFuture sequence:v5];
    v4 = [v3 result:0];
  }
}

- (id)account
{
  v3 = [(CardDAVDelegateManager *)self accountStore];
  v4 = [(CardDAVDelegateManager *)self accountID];
  v5 = [v3 accountWithIdentifier:v4];

  return v5;
}

- (id)collectDelegateInfoReturningError:(id *)a3
{
  v5 = [(CardDAVDelegateManager *)self delegateProvider];
  v6 = [(CardDAVDelegateManager *)self account];
  v7 = [v5 collectDelegatesForAccount:v6 error:a3];

  return v7;
}

- (id)existingChildAccountsWithProperty:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(CardDAVDelegateManager *)self account];
  v7 = [v6 childAccounts];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 accountPropertyForKey:{v4, v17}];
        [v5 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)addChildWithDelegateInfo:(id)a3
{
  v4 = a3;
  v5 = [ACAccount alloc];
  v6 = [(CardDAVDelegateManager *)self accountStore];
  v7 = [v6 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCardDAV];
  v8 = [v5 initWithAccountType:v7];

  [v4 setPropertiesOnAccount:v8];
  v9 = [(CardDAVDelegateManager *)self account];
  [v8 setParentAccount:v9];

  [v8 setAuthenticationType:@"parent"];

  return v8;
}

- (id)saveAccount:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVDelegateManager *)self accountStore];
  v6 = [v5 _cn_canSaveAccount:v4];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1F504;
  v16[3] = &unk_3CDA8;
  v7 = v4;
  v17 = v7;
  [v6 addFailureBlock:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1F5EC;
  v14[3] = &unk_3CDD0;
  v8 = v7;
  v15 = v8;
  [v6 addSuccessBlock:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1F6BC;
  v12[3] = &unk_3CDF8;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = [v6 flatMap:v12];

  return v10;
}

- (id)removeAccount:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVDelegateManager *)self accountStore];
  v6 = [v5 _cn_removeAccount:v4];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1FAE0;
  v12[3] = &unk_3CDA8;
  v7 = v4;
  v13 = v7;
  [v6 addFailureBlock:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1FBC8;
  v10[3] = &unk_3CDD0;
  v11 = v7;
  v8 = v7;
  [v6 addSuccessBlock:v10];

  return v6;
}

@end