@interface LDAPAccount
- (BOOL)isEqualToAccount:(id)a3;
- (LDAPAccount)initWithBackingAccountInfo:(id)a3;
- (id)connectionURL;
- (id)connectionURLWithSSL:(BOOL)a3;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelSearchQuery:(id)a3;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)addSearchSettings:(id)a3;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)ingestBackingAccountInfoProperties;
- (void)ldapGetDefaultSearchBaseTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 defaultSearchBase:(id)a6;
- (void)ldapSearchTask:(id)a3 finishedWithError:(id)a4 foundItems:(id)a5;
- (void)removeSearchSettings:(id)a3;
@end

@implementation LDAPAccount

- (void)ingestBackingAccountInfoProperties
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(LDAPAccount *)self setMutableSearchSettings:v3];

  v4 = [(LDAPAccount *)self backingAccountInfo];
  v5 = [v4 objectForKeyedSubscript:@"LDAPAccountSearchSettings"];

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
          v11 = [(LDAPAccount *)self mutableSearchSettings];
          [v11 addObject:v10];

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

- (LDAPAccount)initWithBackingAccountInfo:(id)a3
{
  v10.receiver = self;
  v10.super_class = LDAPAccount;
  v3 = [(LDAPAccount *)&v10 initWithBackingAccountInfo:a3];
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

- (void)_reallyCancelSearchQuery:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_24857C000, v5, v6, "cancelling search query %@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(LDAPAccount *)self searchTaskSet];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = [v12 query];
      v14 = [v13 isEqual:v4];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

    v16 = [(LDAPAccount *)self taskManager];
    [v16 cancelTask:v15];

    v7 = v15;
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
  v3 = [(LDAPAccount *)self searchTaskSet];
  v4 = [v3 copy];

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
        v10 = [(LDAPAccount *)self taskManager];
        [v10 cancelTask:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reallyPerformSearchQuery:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 searchBase];
  if (v6)
  {
  }

  else
  {
    v7 = [v5 searchScope];

    if (!v7)
    {
      v8 = [(LDAPAccount *)self searchSettings];
      if ([v8 count])
      {
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v9 searchBase];
        v11 = [v9 scope];
        v12 = @"kLDAPScopeSubtree";
        if (v11 == 1)
        {
          v12 = @"kLDAPScopeOneLevel";
        }

        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = @"kLDAPScopeBase";
        }

        v14 = MEMORY[0x277D03920];
        v15 = [v5 searchString];
        v16 = [v5 consumer];
        v17 = [v14 contactsSearchQueryWithSearchString:v15 searchBase:v10 searchScope:v13 consumer:v16];

        v5 = v17;
      }

      else
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v19))
        {
          v25 = 138412290;
          v26 = self;
          _os_log_impl(&dword_24857C000, v18, v19, "Asked to search for this account, but I have no search settings.  Account is %@", &v25, 0xCu);
        }
      }
    }
  }

  if ([v5 range])
  {
    [(LDAPAccount *)a2 _reallyPerformSearchQuery:?];
  }

  v20 = [[LDAPSearchTask alloc] initWithQuery:v5];
  [(LDAPTask *)v20 setDelegate:self];
  v21 = [v5 consumer];
  [(LDAPAccount *)self setConsumer:v21 forTask:v20];

  v22 = [(LDAPAccount *)self searchTaskSet];
  [v22 addObject:v20];

  v23 = [(LDAPAccount *)self taskManager];
  [v23 submitQueuedTask:v20];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)ldapSearchTask:(id)a3 finishedWithError:(id)a4 foundItems:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(LDAPAccount *)self consumerForTask:v8];
  v12 = [v8 taskStatusForError:v9];
  v13 = DALoggingwithCategory();
  v14 = v13;
  if (v12 == -1)
  {
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v17))
    {
      v21 = 134217984;
      v22 = v8;
      _os_log_impl(&dword_24857C000, v14, v17, "LDAP search task %p was cancelled", &v21, 0xCu);
    }
  }

  else
  {
    if (v12 == 2)
    {
      v15 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v13, v15))
      {
        v16 = [v8 query];
        v21 = 138412802;
        v22 = v11;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_24857C000, v14, v15, "Sending LDAP search results back to consumer %@.\nQuery: %@\nResults: %@", &v21, 0x20u);
      }

      v14 = [v8 query];
      [v11 searchQuery:v14 returnedResults:v10];
    }

    else
    {
      v18 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v13, v18))
      {
        v21 = 134218242;
        v22 = v12;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_24857C000, v14, v18, "The LDAP search returned an error: %ld (%@)", &v21, 0x16u);
      }
    }

    v14 = [v8 query];
    [v11 searchQuery:v14 finishedWithError:v9];
  }

  v19 = [(LDAPAccount *)self searchTaskSet];
  [v19 removeObject:v8];

  [(LDAPAccount *)self removeConsumerForTask:v8];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)discoverInitialPropertiesWithConsumer:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  [v6 setDelegate:self];
  [(LDAPAccount *)self setConsumer:v4 forTask:v6];

  v5 = [(LDAPAccount *)self taskManager];
  [v5 submitQueuedTask:v6];
}

- (void)ldapGetDefaultSearchBaseTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 defaultSearchBase:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(LDAPAccount *)self consumerForTask:v10];
  if (a4 == 2)
  {
    if ([v12 length])
    {
      v22 = v11;
      v14 = objc_opt_new();
      [v14 setScope:2];
      [v14 setSearchBase:v12];
      v15 = [v12 ldapHumanReadableStringFromSearchBase];
      [v14 setSearchDescription:v15];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = [(LDAPAccount *)self searchSettings];
      v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(v16);
            }

            if ([*(*(&v23 + 1) + 8 * v20) hasSameScopeAndBaseAsOther:v14])
            {

              goto LABEL_13;
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      [(LDAPAccount *)self addSearchSettings:v14];
LABEL_13:

      v11 = v22;
    }

    [(LDAPAccount *)self setShouldDoInitialAutodiscovery:0];
  }

  [v13 account:self isValid:a4 == 2 validationError:v11];
  [(LDAPAccount *)self removeConsumerForTask:v10];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addSearchSettings:(id)a3
{
  v4 = a3;
  v5 = [(LDAPAccount *)self mutableSearchSettings];
  [v5 addObject:v4];
}

- (void)removeSearchSettings:(id)a3
{
  v4 = a3;
  v5 = [(LDAPAccount *)self mutableSearchSettings];
  [v5 removeObject:v4];
}

- (id)connectionURLWithSSL:(BOOL)a3
{
  if (a3)
  {
    v4 = 636;
  }

  else
  {
    v4 = 389;
  }

  v5 = MEMORY[0x277CCACA8];
  if (a3)
  {
    v6 = @"s";
  }

  else
  {
    v6 = &stru_285AC75D8;
  }

  v7 = [(LDAPAccount *)self host];
  v8 = [(LDAPAccount *)self port];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  v10 = [v5 stringWithFormat:@"ldap%@://%@:%ld", v6, v7, v9];

  return v10;
}

- (id)connectionURL
{
  v3 = [(LDAPAccount *)self useSSL];

  return [(LDAPAccount *)self connectionURLWithSSL:v3];
}

- (BOOL)isEqualToAccount:(id)a3
{
  v8 = a3;
  v9 = [v8 username];
  v10 = [v9 length];
  if (v10 || (-[LDAPAccount username](self, "username"), v4 = objc_claimAutoreleasedReturnValue(), [v4 length]))
  {
    v3 = [v8 username];
    v5 = [(LDAPAccount *)self username];
    if (![v3 isEqualToString:v5])
    {
      v11 = 0;
      goto LABEL_22;
    }

    v20 = v3;
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v12 = [v8 host];
  v13 = [v12 length];
  if (v13 || (-[LDAPAccount host](self, "host"), v17 = objc_claimAutoreleasedReturnValue(), [v17 length]))
  {
    v3 = [v8 host];
    v6 = [(LDAPAccount *)self host];
    if (![v3 isEqualToString:v6])
    {
      v11 = 0;
      goto LABEL_15;
    }

    v18 = v4;
    v19 = v9;
    v14 = 1;
  }

  else
  {
    v18 = v4;
    v19 = v9;
    v14 = 0;
  }

  v15 = [v8 port];
  v11 = v15 == [(LDAPAccount *)self port];
  if (v14)
  {
    v4 = v18;
    v9 = v19;
LABEL_15:

    if (v13)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v4 = v18;
  v9 = v19;
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
    v3 = v20;
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
  v6 = [(LDAPAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (void)_reallyPerformSearchQuery:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LDAPAccount.m" lineNumber:117 description:@"LDAP queries must have a range beginning at 0"];
}

@end