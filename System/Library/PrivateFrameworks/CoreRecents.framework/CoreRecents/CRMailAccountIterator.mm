@interface CRMailAccountIterator
+ (id)receivedEmailAddressesFromAccount:(id)account;
- (CRMailAccountIterator)init;
- (CRMailAccountIterator)initWithAccountStore:(id)store;
- (id)emailAddressesForAccount:(id)account;
- (id)mailAccounts;
- (void)enumerateEmailAddresses:(id)addresses;
@end

@implementation CRMailAccountIterator

- (CRMailAccountIterator)init
{
  v3 = +[ACAccountStore defaultStore];
  v4 = [(CRMailAccountIterator *)self initWithAccountStore:v3];

  return v4;
}

- (CRMailAccountIterator)initWithAccountStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CRMailAccountIterator;
  v6 = [(CRMailAccountIterator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
    v8 = v7;
  }

  return v7;
}

- (void)enumerateEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  [(CRMailAccountIterator *)self mailAccounts];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = MSAccountResultsKeyRestrictedFromSyncingRecents;
    v19 = *v25;
    v7 = MSAccountResultsKeyFromEmailAddressesIncludingDisabled;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:v18];
        bOOLValue = [v10 BOOLValue];

        v12 = [v9 objectForKeyedSubscript:v7];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              addressesCopy[2](addressesCopy, *(*(&v20 + 1) + 8 * j), bOOLValue);
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }
}

- (id)mailAccounts
{
  v2 = objc_alloc_init(CNPromise);
  future = [v2 future];
  [future addFailureBlock:&stru_10002CAF0];

  v9[0] = MSAccountResultsKeyFromEmailAddressesIncludingDisabled;
  v9[1] = MSAccountResultsKeyRestrictedFromSyncingRecents;
  v4 = [NSArray arrayWithObjects:v9 count:2];
  completionHandlerAdapter = [v2 completionHandlerAdapter];
  [MSAccounts accountValuesForKeys:v4 completionBlock:completionHandlerAdapter];

  future2 = [v2 future];
  v7 = [future2 resultWithTimeout:0 error:10.0];

  return v7;
}

- (id)emailAddressesForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(NSMutableSet);
  accountProperties = [accountCopy accountProperties];
  v6 = [accountProperties objectForKeyedSubscript:ACAccountPropertyIdentityEmailAddress];

  if (v6)
  {
    v7 = [EAEmailAddressParser rawAddressFromFullAddress:v6];
    [v4 addObject:v7];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [accountCopy objectForKeyedSubscript:ACEmailAliasKeyEmailAddresses];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [EAEmailAddressParser rawAddressFromFullAddress:*(*(&v29 + 1) + 8 * i)];
        [v4 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  accountProperties2 = [accountCopy accountProperties];
  v15 = [accountProperties2 objectForKeyedSubscript:@"defaultAddress"];

  if (v15)
  {
    v16 = [EAEmailAddressParser rawAddressFromFullAddress:v15];
    [v4 addObject:v16];
  }

  v17 = [objc_opt_class() receivedEmailAddressesFromAccount:accountCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [EAEmailAddressParser rawAddressFromFullAddress:*(*(&v25 + 1) + 8 * j)];
        [v4 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)receivedEmailAddressesFromAccount:(id)account
{
  v3 = [account objectForKeyedSubscript:@"ReceiveEmailAliasAddresses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = v3;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    allKeys = [v6 allKeys];
LABEL_11:
    v9 = allKeys;

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = v3;
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    allKeys = v8;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_13:
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  v11 = v10;

  return v10;
}

@end