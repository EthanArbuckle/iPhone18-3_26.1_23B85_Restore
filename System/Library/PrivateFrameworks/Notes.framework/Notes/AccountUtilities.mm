@interface AccountUtilities
+ (id)sharedAccountUtilities;
- (ACAccountStore)accountStore;
- (AccountUtilities)init;
- (id)accountIDsEnabledForNotes;
- (id)accountsEnabledForNotes;
- (id)defaultStoreSyncIdWithDesiredSyncId:(id)id;
- (id)freshContext;
- (id)localAccountDisplayName;
- (void)_accountStoreDidChange:(id)change;
- (void)dealloc;
- (void)startKeepingAccountInfosUpToDate;
- (void)updateAccountInfos;
@end

@implementation AccountUtilities

+ (id)sharedAccountUtilities
{
  if (sharedAccountUtilities_onceToken != -1)
  {
    +[AccountUtilities sharedAccountUtilities];
  }

  v3 = sharedAccountUtilities___sharedInstance;

  return v3;
}

- (AccountUtilities)init
{
  v13.receiver = self;
  v13.super_class = AccountUtilities;
  v2 = [(AccountUtilities *)&v13 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    backgroundDispatchGroup = v2->_backgroundDispatchGroup;
    v2->_backgroundDispatchGroup = v3;

    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = defaultStore;

    v7 = [(ACAccountStore *)v2->_accountStore accountIdentifiersEnabledForDataclass:*MEMORY[0x277CB89F8]];
    accountIDsEnabledForNotes = v2->_accountIDsEnabledForNotes;
    v2->_accountIDsEnabledForNotes = v7;

    noteContext = v2->_noteContext;
    v2->_noteContext = 0;

    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    updateAccountInfosLock = v2->_updateAccountInfosLock;
    v2->_updateAccountInfosLock = v10;
  }

  return v2;
}

uint64_t __42__AccountUtilities_sharedAccountUtilities__block_invoke()
{
  sharedAccountUtilities___sharedInstance = objc_alloc_init(AccountUtilities);

  return MEMORY[0x2821F96F8]();
}

- (void)startKeepingAccountInfosUpToDate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:self->_accountStore];

  [(AccountUtilities *)self updateAccountInfos];
}

- (void)updateAccountInfos
{
  v3 = dispatch_get_global_queue(0, 0);
  backgroundDispatchGroup = [(AccountUtilities *)self backgroundDispatchGroup];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__AccountUtilities_updateAccountInfos__block_invoke;
  block[3] = &unk_2799AC828;
  block[4] = self;
  dispatch_group_async(backgroundDispatchGroup, v3, block);
}

void __38__AccountUtilities_updateAccountInfos__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) updateAccountInfosLock];
  v3 = [v2 tryLock];

  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = [*(a1 + 32) freshContext];
  [v4 allAccounts];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  v22 = v4;
  if (!v5)
  {
    v23 = 0;
    goto LABEL_26;
  }

  v23 = 0;
  v25 = *v29;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v29 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v28 + 1) + 8 * i);
      v8 = [v7 accountIdentifier];
      v9 = [v8 isEqualToString:@"local://local/account"];
      v10 = *(a1 + 32);
      if (v9)
      {
        if (([v10 localNotesExist] & 1) == 0)
        {
          goto LABEL_20;
        }

        v11 = [*(a1 + 32) localAccountDisplayName];
      }

      else
      {
        v12 = [v10 accountStore];
        v13 = [v12 accountWithIdentifier:v8];

        if (v13)
        {
          v14 = [v13 displayAccount];
          v11 = [v14 accountDescription];
        }

        else
        {
          v11 = 0;
        }
      }

      if (!v11)
      {
        v1 = [v7 name];
        if (!v1)
        {
LABEL_20:
          v11 = 0;
          goto LABEL_22;
        }
      }

      v15 = [v7 name];
      v16 = [v11 isEqualToString:v15];

      if (!v11)
      {

        if (v16)
        {
          goto LABEL_20;
        }

LABEL_21:
        v23 = 1;
        [v7 setName:v11];
        goto LABEL_22;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_22:
    }

    v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v5);
LABEL_26:

  v27 = 0;
  v17 = [v22 save:&v27];
  v18 = v27;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    NSLog(&cfstr_FailedToSaveAf.isa, v18);
  }

  v20 = [*(a1 + 32) updateAccountInfosLock];
  [v20 unlock];

  if (v23)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_33);
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
}

- (id)freshContext
{
  v2 = [[NoteContext alloc] initWithAccountUtilities:self];

  return v2;
}

- (ACAccountStore)accountStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_accountStore;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_accountStoreDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(ACAccountStore *)selfCopy->_accountStore accountIdentifiersEnabledForDataclass:*MEMORY[0x277CB89F8]];
  accountIDsEnabledForNotes = selfCopy->_accountIDsEnabledForNotes;
  selfCopy->_accountIDsEnabledForNotes = v5;

  objc_sync_exit(selfCopy);
  [(AccountUtilities *)selfCopy updateAccountInfos];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AccountUtilities;
  [(AccountUtilities *)&v4 dealloc];
}

- (id)accountsEnabledForNotes
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = selfCopy->_accountIDsEnabledForNotes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(ACAccountStore *)selfCopy->_accountStore accountWithIdentifier:*(*(&v12 + 1) + 8 * i), v12];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)accountIDsEnabledForNotes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_accountIDsEnabledForNotes;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)defaultStoreSyncIdWithDesiredSyncId:(id)id
{
  idCopy = id;
  localNotesExist = [(AccountUtilities *)self localNotesExist];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![idCopy length])
  {
    goto LABEL_7;
  }

  if ([idCopy isEqualToString:@"DeviceLocalAccount"])
  {
    if (!localNotesExist)
    {
      goto LABEL_7;
    }

LABEL_6:
    lastObject = idCopy;
    if (lastObject)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([(NSArray *)selfCopy->_accountIDsEnabledForNotes containsObject:idCopy])
  {
    goto LABEL_6;
  }

LABEL_7:
  lastObject = [(NSArray *)selfCopy->_accountIDsEnabledForNotes lastObject];
LABEL_8:
  v8 = lastObject;
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)localAccountDisplayName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getACUILocalizationClass_softClass;
  v10 = getACUILocalizationClass_softClass;
  if (!getACUILocalizationClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getACUILocalizationClass_block_invoke;
    v6[3] = &unk_2799AC978;
    v6[4] = &v7;
    __getACUILocalizationClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 localizedTitleForLocalSourceOfDataclass:*MEMORY[0x277CB89F8] usedAtBeginningOfSentence:1];

  return v4;
}

void __38__AccountUtilities_updateAccountInfos__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"NotesAccountUtilitiesDidUpdateAccounts" object:0];
}

@end