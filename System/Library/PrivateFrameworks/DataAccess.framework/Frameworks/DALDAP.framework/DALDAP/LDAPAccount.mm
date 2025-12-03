@interface LDAPAccount
- (BOOL)isEqualToAccount:(id)account;
- (LDAPAccount)initWithBackingAccountInfo:(id)info;
- (id)connectionURL;
- (id)connectionURLWithSSL:(BOOL)l;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelSearchQuery:(id)query;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)addSearchSettings:(id)settings;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)ingestBackingAccountInfoProperties;
- (void)ldapGetDefaultSearchBaseTask:(id)task completedWithStatus:(int64_t)status error:(id)error defaultSearchBase:(id)base;
- (void)ldapSearchTask:(id)task finishedWithError:(id)error foundItems:(id)items;
- (void)removeSearchSettings:(id)settings;
@end

@implementation LDAPAccount

- (void)ingestBackingAccountInfoProperties
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(LDAPAccount *)self setMutableSearchSettings:v3];

  backingAccountInfo = [(LDAPAccount *)self backingAccountInfo];
  v5 = [backingAccountInfo objectForKeyedSubscript:@"LDAPAccountSearchSettings"];

  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [[LDAPSearchSettings alloc] initWithSettingsDict:*(*(&v17 + 1) + 8 * v9)];
          mutableSearchSettings = [(LDAPAccount *)self mutableSearchSettings];
          [mutableSearchSettings addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v15, &location);
  v12 = [(LDAPAccount *)self backingAccountInfo:v14];
  [v12 setAccountPropertiesTransformer:&v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

id __49__LDAPAccount_ingestBackingAccountInfoProperties__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 mutableCopy];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained searchSettings];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) settingsDict];
        [v4 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v3 setObject:v4 forKeyedSubscript:@"LDAPAccountSearchSettings"];
  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (LDAPAccount)initWithBackingAccountInfo:(id)info
{
  v10.receiver = self;
  v10.super_class = LDAPAccount;
  v3 = [(LDAPAccount *)&v10 initWithBackingAccountInfo:info];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = *MEMORY[0x277D03808];
    v6 = *(&v3->super.super.isa + v5);
    *(&v3->super.super.isa + v5) = v4;

    [*(&v3->super.super.isa + v5) setAccount:v3];
    v7 = objc_opt_new();
    searchTaskSet = v3->_searchTaskSet;
    v3->_searchTaskSet = v7;
  }

  return v3;
}

- (void)_reallyCancelSearchQuery:(id)query
{
  v25 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v24 = queryCopy;
    _os_log_impl(&dword_24857C000, v5, v6, "cancelling search query %@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  searchTaskSet = [(LDAPAccount *)self searchTaskSet];
  v8 = [searchTaskSet countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(searchTaskSet);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      query = [v12 query];
      v14 = [query isEqual:queryCopy];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [searchTaskSet countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    v15 = v12;

    if (!v15)
    {
      goto LABEL_15;
    }

    taskManager = [(LDAPAccount *)self taskManager];
    [taskManager cancelTask:v15];

    searchTaskSet = v15;
  }

LABEL_14:

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelAllSearchQueries
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  searchTaskSet = [(LDAPAccount *)self searchTaskSet];
  v4 = [searchTaskSet copy];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        taskManager = [(LDAPAccount *)self taskManager];
        [taskManager cancelTask:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reallyPerformSearchQuery:(id)query
{
  v27 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  searchBase = [queryCopy searchBase];
  if (searchBase)
  {
  }

  else
  {
    searchScope = [queryCopy searchScope];

    if (!searchScope)
    {
      searchSettings = [(LDAPAccount *)self searchSettings];
      if ([searchSettings count])
      {
        v9 = [searchSettings objectAtIndexedSubscript:0];
        searchBase2 = [v9 searchBase];
        scope = [v9 scope];
        v12 = @"kLDAPScopeSubtree";
        if (scope == 1)
        {
          v12 = @"kLDAPScopeOneLevel";
        }

        if (scope)
        {
          v13 = v12;
        }

        else
        {
          v13 = @"kLDAPScopeBase";
        }

        v14 = MEMORY[0x277D03920];
        searchString = [queryCopy searchString];
        consumer = [queryCopy consumer];
        v17 = [v14 contactsSearchQueryWithSearchString:searchString searchBase:searchBase2 searchScope:v13 consumer:consumer];

        queryCopy = v17;
      }

      else
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v19))
        {
          v25 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_24857C000, v18, v19, "Asked to search for this account, but I have no search settings.  Account is %@", &v25, 0xCu);
        }
      }
    }
  }

  if ([queryCopy range])
  {
    [(LDAPAccount *)a2 _reallyPerformSearchQuery:?];
  }

  v20 = [[LDAPSearchTask alloc] initWithQuery:queryCopy];
  [(LDAPTask *)v20 setDelegate:self];
  consumer2 = [queryCopy consumer];
  [(LDAPAccount *)self setConsumer:consumer2 forTask:v20];

  searchTaskSet = [(LDAPAccount *)self searchTaskSet];
  [searchTaskSet addObject:v20];

  taskManager = [(LDAPAccount *)self taskManager];
  [taskManager submitQueuedTask:v20];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)ldapSearchTask:(id)task finishedWithError:(id)error foundItems:(id)items
{
  v27 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  itemsCopy = items;
  v11 = [(LDAPAccount *)self consumerForTask:taskCopy];
  v12 = [taskCopy taskStatusForError:errorCopy];
  v13 = DALoggingwithCategory();
  query2 = v13;
  if (v12 == -1)
  {
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v17))
    {
      v21 = 134217984;
      v22 = taskCopy;
      _os_log_impl(&dword_24857C000, query2, v17, "LDAP search task %p was cancelled", &v21, 0xCu);
    }
  }

  else
  {
    if (v12 == 2)
    {
      v15 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v13, v15))
      {
        query = [taskCopy query];
        v21 = 138412802;
        v22 = v11;
        v23 = 2112;
        v24 = query;
        v25 = 2112;
        v26 = itemsCopy;
        _os_log_impl(&dword_24857C000, query2, v15, "Sending LDAP search results back to consumer %@.\nQuery: %@\nResults: %@", &v21, 0x20u);
      }

      query2 = [taskCopy query];
      [v11 searchQuery:query2 returnedResults:itemsCopy];
    }

    else
    {
      v18 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v13, v18))
      {
        v21 = 134218242;
        v22 = v12;
        v23 = 2112;
        v24 = errorCopy;
        _os_log_impl(&dword_24857C000, query2, v18, "The LDAP search returned an error: %ld (%@)", &v21, 0x16u);
      }
    }

    query2 = [taskCopy query];
    [v11 searchQuery:query2 finishedWithError:errorCopy];
  }

  searchTaskSet = [(LDAPAccount *)self searchTaskSet];
  [searchTaskSet removeObject:taskCopy];

  [(LDAPAccount *)self removeConsumerForTask:taskCopy];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  v6 = objc_opt_new();
  [v6 setDelegate:self];
  [(LDAPAccount *)self setConsumer:consumerCopy forTask:v6];

  taskManager = [(LDAPAccount *)self taskManager];
  [taskManager submitQueuedTask:v6];
}

- (void)ldapGetDefaultSearchBaseTask:(id)task completedWithStatus:(int64_t)status error:(id)error defaultSearchBase:(id)base
{
  v28 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  baseCopy = base;
  v13 = [(LDAPAccount *)self consumerForTask:taskCopy];
  if (status == 2)
  {
    if ([baseCopy length])
    {
      v22 = errorCopy;
      v14 = objc_opt_new();
      [v14 setScope:2];
      [v14 setSearchBase:baseCopy];
      ldapHumanReadableStringFromSearchBase = [baseCopy ldapHumanReadableStringFromSearchBase];
      [v14 setSearchDescription:ldapHumanReadableStringFromSearchBase];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      searchSettings = [(LDAPAccount *)self searchSettings];
      v17 = [searchSettings countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v24;
        while (2)
        {
          v20 = 0;
          do
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(searchSettings);
            }

            if ([*(*(&v23 + 1) + 8 * v20) hasSameScopeAndBaseAsOther:v14])
            {

              goto LABEL_13;
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [searchSettings countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      [(LDAPAccount *)self addSearchSettings:v14];
LABEL_13:

      errorCopy = v22;
    }

    [(LDAPAccount *)self setShouldDoInitialAutodiscovery:0];
  }

  [v13 account:self isValid:status == 2 validationError:errorCopy];
  [(LDAPAccount *)self removeConsumerForTask:taskCopy];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addSearchSettings:(id)settings
{
  settingsCopy = settings;
  mutableSearchSettings = [(LDAPAccount *)self mutableSearchSettings];
  [mutableSearchSettings addObject:settingsCopy];
}

- (void)removeSearchSettings:(id)settings
{
  settingsCopy = settings;
  mutableSearchSettings = [(LDAPAccount *)self mutableSearchSettings];
  [mutableSearchSettings removeObject:settingsCopy];
}

- (id)connectionURLWithSSL:(BOOL)l
{
  if (l)
  {
    v4 = 636;
  }

  else
  {
    v4 = 389;
  }

  v5 = MEMORY[0x277CCACA8];
  if (l)
  {
    v6 = @"s";
  }

  else
  {
    v6 = &stru_285AC75D8;
  }

  host = [(LDAPAccount *)self host];
  port = [(LDAPAccount *)self port];
  if (port)
  {
    v9 = port;
  }

  else
  {
    v9 = v4;
  }

  v10 = [v5 stringWithFormat:@"ldap%@://%@:%ld", v6, host, v9];

  return v10;
}

- (id)connectionURL
{
  useSSL = [(LDAPAccount *)self useSSL];

  return [(LDAPAccount *)self connectionURLWithSSL:useSSL];
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  username = [accountCopy username];
  v10 = [username length];
  if (v10 || (-[LDAPAccount username](self, "username"), v4 = objc_claimAutoreleasedReturnValue(), [v4 length]))
  {
    username2 = [accountCopy username];
    username3 = [(LDAPAccount *)self username];
    if (![username2 isEqualToString:username3])
    {
      v11 = 0;
      goto LABEL_22;
    }

    v20 = username2;
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  host = [accountCopy host];
  v13 = [host length];
  if (v13 || (-[LDAPAccount host](self, "host"), v17 = objc_claimAutoreleasedReturnValue(), [v17 length]))
  {
    username2 = [accountCopy host];
    host2 = [(LDAPAccount *)self host];
    if (![username2 isEqualToString:host2])
    {
      v11 = 0;
      goto LABEL_15;
    }

    v18 = v4;
    v19 = username;
    v14 = 1;
  }

  else
  {
    v18 = v4;
    v19 = username;
    v14 = 0;
  }

  port = [accountCopy port];
  v11 = port == [(LDAPAccount *)self port];
  if (v14)
  {
    v4 = v18;
    username = v19;
LABEL_15:

    if (v13)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v4 = v18;
  username = v19;
  if (v13)
  {
LABEL_16:

    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

LABEL_20:

  if (v21)
  {
LABEL_21:
    username2 = v20;
LABEL_22:

    if (v10)
    {
      goto LABEL_18;
    }

LABEL_23:

    goto LABEL_18;
  }

LABEL_17:
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_18:

  return v11;
}

- (id)localizedIdenticalAccountFailureMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_BODY_FORMAT_LDAP" value:&stru_285AC75D8 table:@"DataAccess"];

  return v3;
}

- (id)localizedInvalidPasswordMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INVALID_PASSWORD_BODY_LDAP" value:&stru_285AC75D8 table:@"DataAccess"];
  accountDescription = [(LDAPAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, accountDescription];

  return v7;
}

- (void)_reallyPerformSearchQuery:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LDAPAccount.m" lineNumber:117 description:@"LDAP queries must have a range beginning at 0"];
}

@end