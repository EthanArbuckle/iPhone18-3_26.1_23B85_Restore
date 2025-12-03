@interface CUIKAccountsController
+ (id)sharedInstance;
+ (void)initialize;
+ (void)invalidate;
- (BOOL)haveiCloudCalendarAccountInSources:(id)sources;
- (BOOL)sourceIsManaged:(id)managed;
- (CUIKAccountsController)init;
- (id)_accountForAccountIdentifier:(id)identifier;
- (id)_displayAccountForAccountWithIdentifier:(id)identifier;
- (id)accountStore;
- (id)accountTypeTitleForSource:(id)source;
- (id)accountTypeTitleForSourceWithExternalId:(id)id;
- (id)titleForSource:(id)source forBeginningOfSentence:(BOOL)sentence;
- (int)sortOrderForSource:(id)source;
- (int)sortOrderForSourceType:(int64_t)type;
- (int)sortOrderForStoreType:(int64_t)type;
- (void)_accountStoreDidChange:(id)change;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accountStoreDidChange_ name:*MEMORY[0x1E6959968] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)_accountStoreDidChange:(id)change
{
  [__cachedAccounts removeAllObjects];
  v3 = __cachedDisplayAccounts;

  [v3 removeAllObjects];
}

- (id)_accountForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [__cachedAccounts objectForKey:identifierCopy];
  if (!v5)
  {
    accountStore = [(CUIKAccountsController *)self accountStore];
    v5 = [accountStore accountWithIdentifier:identifierCopy];

    if (v5)
    {
      [__cachedAccounts setObject:v5 forKey:identifierCopy];
    }
  }

  return v5;
}

- (id)_displayAccountForAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayAccount = [__cachedDisplayAccounts objectForKey:identifierCopy];
  if (!displayAccount)
  {
    v6 = [(CUIKAccountsController *)self _accountForAccountIdentifier:identifierCopy];
    v7 = v6;
    if (v6)
    {
      displayAccount = [v6 displayAccount];
      [__cachedDisplayAccounts setObject:displayAccount forKey:identifierCopy];
    }

    else
    {
      displayAccount = 0;
    }
  }

  return displayAccount;
}

- (id)titleForSource:(id)source forBeginningOfSentence:(BOOL)sentence
{
  sentenceCopy = sentence;
  sourceCopy = source;
  sourceType = [sourceCopy sourceType];
  if (sourceType == 4)
  {
    v9 = CUIKBundle();
    v10 = v9;
    if (sentenceCopy)
    {
      v11 = @"Subscribed calendar group title";
    }

    else
    {
      v11 = @"Subscribed calendar group title.  Usually preceded by 'All' to denote selecting all the calendars in the group. In English these are the same.";
    }

    title = [v9 localizedStringForKey:v11 value:@"Subscribed" table:0];
  }

  else if (sourceType)
  {
    if ([sourceCopy isDelegate])
    {
      title = [sourceCopy title];
    }

    else
    {
      externalID = [sourceCopy externalID];
      if (externalID)
      {
        v13 = [(CUIKAccountsController *)self _displayAccountForAccountWithIdentifier:externalID];
        v14 = v13;
        if (v13)
        {
          title = [v13 accountDescription];
        }

        else
        {
          title = 0;
        }
      }

      else
      {
        title = 0;
      }

      if (![title length] && objc_msgSend(sourceCopy, "sourceType") == 5)
      {
        v15 = CUIKBundle();
        v16 = [v15 localizedStringForKey:@"The 'other' account value:where the birthday calendar lives" table:{@"Other", 0}];

        title = v16;
      }

      if (![title length])
      {
        title2 = [sourceCopy title];

        title = title2;
      }
    }

    if (![title length])
    {
      v18 = CUIKBundle();
      v19 = [v18 localizedStringForKey:@"Untitled Account" value:&stru_1F4AA8958 table:0];

      title = v19;
    }
  }

  else
  {
    title = [EKWeakLinkClass() localizedTitleForLocalSourceOfDataclass:*MEMORY[0x1E6959AE0] usedAtBeginningOfSentence:sentenceCopy];
  }

  return title;
}

- (id)accountTypeTitleForSourceWithExternalId:(id)id
{
  if (id)
  {
    v3 = [(CUIKAccountsController *)self _displayAccountForAccountWithIdentifier:?];
    v4 = v3;
    if (v3)
    {
      accountType = [v3 accountType];
      accountTypeDescription = [accountType accountTypeDescription];
    }

    else
    {
      accountTypeDescription = 0;
    }
  }

  else
  {
    accountTypeDescription = 0;
  }

  return accountTypeDescription;
}

- (id)accountTypeTitleForSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy sourceType])
  {
    externalID = [sourceCopy externalID];
    v6 = [(CUIKAccountsController *)self accountTypeTitleForSourceWithExternalId:externalID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)sourceIsManaged:(id)managed
{
  managedCopy = managed;
  eventStore = [managedCopy eventStore];
  v5 = [eventStore isSourceManaged:managedCopy];

  return v5;
}

- (int)sortOrderForSource:(id)source
{
  sourceType = [source sourceType];

  return [(CUIKAccountsController *)self sortOrderForSourceType:sourceType];
}

- (int)sortOrderForSourceType:(int64_t)type
{
  if (type > 6)
  {
    return 1;
  }

  else
  {
    return dword_1CAD580B8[type];
  }
}

- (int)sortOrderForStoreType:(int64_t)type
{
  if (type > 5)
  {
    return 1;
  }

  else
  {
    return dword_1CAD580D4[type];
  }
}

- (BOOL)haveiCloudCalendarAccountInSources:(id)sources
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  sourcesCopy = sources;
  v5 = [sourcesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(sourcesCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 sourceType])
        {
          externalID = [v10 externalID];
          v12 = [(CUIKAccountsController *)self _displayAccountForAccountWithIdentifier:externalID];

          if (v12)
          {
            accountType = [v12 accountType];
            identifier = [accountType identifier];
            v15 = [identifier isEqualToString:v8];

            if (v15)
            {
              v16 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v6 = [sourcesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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