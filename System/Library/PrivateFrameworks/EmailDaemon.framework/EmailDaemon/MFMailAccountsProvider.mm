@interface MFMailAccountsProvider
- (BOOL)hasActiveAccounts;
- (BOOL)isDisplayingMultipleAccounts;
- (MFMailAccountsProvider)init;
- (NSArray)orderedAccounts;
- (NSArray)receivingAddresses;
- (NSSet)autofetchAccounts;
- (id)_activeNonLocalAccountsWithMailAccounts:(id)a3;
- (id)_displayedAccountsIdentifiers;
- (id)_executeChange:(id)a3;
- (id)_focusedAccountsIdentifiers;
- (id)legacyMailAccountForObjectID:(id)a3;
- (id)reloadWithMailAccounts:(id)a3 currentFocus:(id)a4;
- (void)_registerNotifications;
@end

@implementation MFMailAccountsProvider

- (MFMailAccountsProvider)init
{
  v5.receiver = self;
  v5.super_class = MFMailAccountsProvider;
  v2 = [(MFMailAccountsProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFMailAccountsProvider *)v2 _registerNotifications];
  }

  return v3;
}

- (BOOL)hasActiveAccounts
{
  v2 = [(MFMailAccountsProvider *)self displayedAccounts];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)receivingAddresses
{
  v2 = [(MFMailAccountsProvider *)self mailAccounts];
  v3 = [v2 ef_map:&stru_100158BF8];
  v4 = [v3 ef_flatten];
  v5 = [v4 ef_filter:EFIsNotNull];

  return v5;
}

- (id)reloadWithMailAccounts:(id)a3 currentFocus:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006D874;
  v9[3] = &unk_1001573C0;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v5 = v12;
  v6 = v11;
  v7 = [(MFMailAccountsProvider *)v10 _executeChange:v9];

  return v7;
}

- (id)legacyMailAccountForObjectID:(id)a3
{
  v4 = a3;
  v5 = [v4 representedObjectID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MFMailAccountsProvider *)self mailAccounts];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006DC0C;
    v9[3] = &unk_100157A08;
    v10 = v5;
    v7 = [v6 ef_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_registerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_accountsOrderDidChange:" name:@"MailApplicationAccountsOrderDidChange" object:0];
}

- (id)_executeChange:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MFMailAccountsProvider.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"changeBlock"}];
  }

  v6 = [[MFMailAccountsProviderState alloc] initFromProvider:self];
  v5[2](v5);
  v7 = [[MFMailAccountsProviderState alloc] initFromProvider:self];
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 numberOfActiveAccounts];
    v10 = [v7 numberOfActiveAccounts];
    v11 = [v7 numberOfInactiveAccounts];
    v12 = [v6 numberOfActiveAccounts];
    v13 = [v6 numberOfActiveAccounts];
    *buf = 134218752;
    v18 = v9;
    v19 = 2048;
    v20 = &v10[v11];
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = &v13[[v6 numberOfInactiveAccounts]];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "After reloading accounts: %lu/%lu active mail accounts (previously %lu/%lu)", buf, 0x2Au);
  }

  v14 = [EFPair pairWithFirst:v6 second:v7];

  return v14;
}

- (id)_activeNonLocalAccountsWithMailAccounts:(id)a3
{
  v13 = a3;
  v4 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v13;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    v9 = kAccountDataclassMail;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([v11 isEnabledForDataclass:v9])
          {
            [v4 addObject:v11];
          }

          else
          {
            ++v6;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  -[MFMailAccountsProvider setNumberOfActiveAccounts:](self, "setNumberOfActiveAccounts:", [v4 count]);
  [(MFMailAccountsProvider *)self setNumberOfInactiveAccounts:v6];

  return v4;
}

- (id)_displayedAccountsIdentifiers
{
  v2 = [(MFMailAccountsProvider *)self displayedAccounts];
  v3 = [v2 ef_compactMap:&stru_100158C38];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSSet set];
  }

  v6 = v5;

  return v6;
}

- (id)_focusedAccountsIdentifiers
{
  v2 = [(MFMailAccountsProvider *)self focusedAccounts];
  v3 = [v2 ef_compactMap:&stru_100158C58];

  return v3;
}

- (BOOL)isDisplayingMultipleAccounts
{
  v2 = [(MFMailAccountsProvider *)self displayedAccounts];
  v3 = [v2 count] > 1;

  return v3;
}

- (NSArray)orderedAccounts
{
  if (pthread_main_np() != 1)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MFMailAccountsProvider.m" lineNumber:173 description:@"Current thread must be main"];
  }

  orderedAccounts = self->_orderedAccounts;
  if (!orderedAccounts)
  {
    v5 = [NSMutableArray alloc];
    v6 = [(MFMailAccountsProvider *)self displayedAccounts];
    v7 = [v6 allObjects];
    v8 = [v5 initWithArray:v7];

    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 arrayForKey:@"MailAccountsOrder"];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006E494;
    v16[3] = &unk_100157028;
    v11 = v10;
    v17 = v11;
    [v8 sortUsingComparator:v16];
    v12 = [v8 copy];
    v13 = self->_orderedAccounts;
    self->_orderedAccounts = v12;

    orderedAccounts = self->_orderedAccounts;
  }

  return orderedAccounts;
}

- (NSSet)autofetchAccounts
{
  v2 = [(MFMailAccountsProvider *)self displayedAccounts];
  v3 = [v2 ef_filter:&stru_100158C78];

  return v3;
}

@end