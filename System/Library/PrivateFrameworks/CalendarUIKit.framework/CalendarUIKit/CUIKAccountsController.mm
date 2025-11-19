@interface CUIKAccountsController
+ (id)sharedInstance;
+ (void)initialize;
+ (void)invalidate;
- (BOOL)haveiCloudCalendarAccountInSources:(id)a3;
- (BOOL)sourceIsManaged:(id)a3;
- (CUIKAccountsController)init;
- (id)_accountForAccountIdentifier:(id)a3;
- (id)_displayAccountForAccountWithIdentifier:(id)a3;
- (id)accountStore;
- (id)accountTypeTitleForSource:(id)a3;
- (id)accountTypeTitleForSourceWithExternalId:(id)a3;
- (id)titleForSource:(id)a3 forBeginningOfSentence:(BOOL)a4;
- (int)sortOrderForSource:(id)a3;
- (int)sortOrderForSourceType:(int64_t)a3;
- (int)sortOrderForStoreType:(int64_t)a3;
- (void)_accountStoreDidChange:(id)a3;
- (void)dealloc;
@end

@implementation CUIKAccountsController

+ (id)sharedInstance
{
  v2 = __SharedRefreshController;
  objc_sync_enter(v2);
  v3 = __SharedRefreshController;
  if (!__SharedRefreshController)
  {
    v4 = objc_opt_new();
    v5 = __SharedRefreshController;
    __SharedRefreshController = v4;

    v3 = __SharedRefreshController;
  }

  v6 = v3;
  objc_sync_exit(v2);

  return v6;
}

+ (void)invalidate
{
  obj = __SharedRefreshController;
  objc_sync_enter(obj);
  v2 = __SharedRefreshController;
  __SharedRefreshController = 0;

  objc_sync_exit(obj);
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[CUIKAccountsController initialize];
  }
}

uint64_t __36__CUIKAccountsController_initialize__block_invoke()
{
  v0 = objc_opt_new();
  v1 = __cachedAccounts;
  __cachedAccounts = v0;

  v2 = objc_opt_new();
  v3 = __cachedDisplayAccounts;
  __cachedDisplayAccounts = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (CUIKAccountsController)init
{
  v6.receiver = self;
  v6.super_class = CUIKAccountsController;
  v2 = [(CUIKAccountsController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__accountStoreDidChange_ name:*MEMORY[0x1E6959968] object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CUIKAccountsController;
  [(CUIKAccountsController *)&v4 dealloc];
}

- (id)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (void)_accountStoreDidChange:(id)a3
{
  [__cachedAccounts removeAllObjects];
  v3 = __cachedDisplayAccounts;

  [v3 removeAllObjects];
}

- (id)_accountForAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = [__cachedAccounts objectForKey:v4];
  if (!v5)
  {
    v6 = [(CUIKAccountsController *)self accountStore];
    v5 = [v6 accountWithIdentifier:v4];

    if (v5)
    {
      [__cachedAccounts setObject:v5 forKey:v4];
    }
  }

  return v5;
}

- (id)_displayAccountForAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [__cachedDisplayAccounts objectForKey:v4];
  if (!v5)
  {
    v6 = [(CUIKAccountsController *)self _accountForAccountIdentifier:v4];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 displayAccount];
      [__cachedDisplayAccounts setObject:v5 forKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)titleForSource:(id)a3 forBeginningOfSentence:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 sourceType];
  if (v7 == 4)
  {
    v9 = CUIKBundle();
    v10 = v9;
    if (v4)
    {
      v11 = @"Subscribed calendar group title";
    }

    else
    {
      v11 = @"Subscribed calendar group title.  Usually preceded by 'All' to denote selecting all the calendars in the group. In English these are the same.";
    }

    v8 = [v9 localizedStringForKey:v11 value:@"Subscribed" table:0];
  }

  else if (v7)
  {
    if ([v6 isDelegate])
    {
      v8 = [v6 title];
    }

    else
    {
      v12 = [v6 externalID];
      if (v12)
      {
        v13 = [(CUIKAccountsController *)self _displayAccountForAccountWithIdentifier:v12];
        v14 = v13;
        if (v13)
        {
          v8 = [v13 accountDescription];
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

      if (![v8 length] && objc_msgSend(v6, "sourceType") == 5)
      {
        v15 = CUIKBundle();
        v16 = [v15 localizedStringForKey:@"The 'other' account value:where the birthday calendar lives" table:{@"Other", 0}];

        v8 = v16;
      }

      if (![v8 length])
      {
        v17 = [v6 title];

        v8 = v17;
      }
    }

    if (![v8 length])
    {
      v18 = CUIKBundle();
      v19 = [v18 localizedStringForKey:@"Untitled Account" value:&stru_1F4AA8958 table:0];

      v8 = v19;
    }
  }

  else
  {
    v8 = [EKWeakLinkClass() localizedTitleForLocalSourceOfDataclass:*MEMORY[0x1E6959AE0] usedAtBeginningOfSentence:v4];
  }

  return v8;
}

- (id)accountTypeTitleForSourceWithExternalId:(id)a3
{
  if (a3)
  {
    v3 = [(CUIKAccountsController *)self _displayAccountForAccountWithIdentifier:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 accountType];
      v6 = [v5 accountTypeDescription];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountTypeTitleForSource:(id)a3
{
  v4 = a3;
  if ([v4 sourceType])
  {
    v5 = [v4 externalID];
    v6 = [(CUIKAccountsController *)self accountTypeTitleForSourceWithExternalId:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)sourceIsManaged:(id)a3
{
  v3 = a3;
  v4 = [v3 eventStore];
  v5 = [v4 isSourceManaged:v3];

  return v5;
}

- (int)sortOrderForSource:(id)a3
{
  v4 = [a3 sourceType];

  return [(CUIKAccountsController *)self sortOrderForSourceType:v4];
}

- (int)sortOrderForSourceType:(int64_t)a3
{
  if (a3 > 6)
  {
    return 1;
  }

  else
  {
    return dword_1CAD580B8[a3];
  }
}

- (int)sortOrderForStoreType:(int64_t)a3
{
  if (a3 > 5)
  {
    return 1;
  }

  else
  {
    return dword_1CAD580D4[a3];
  }
}

- (BOOL)haveiCloudCalendarAccountInSources:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x1E69597F8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 sourceType])
        {
          v11 = [v10 externalID];
          v12 = [(CUIKAccountsController *)self _displayAccountForAccountWithIdentifier:v11];

          if (v12)
          {
            v13 = [v12 accountType];
            v14 = [v13 identifier];
            v15 = [v14 isEqualToString:v8];

            if (v15)
            {
              v16 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

@end