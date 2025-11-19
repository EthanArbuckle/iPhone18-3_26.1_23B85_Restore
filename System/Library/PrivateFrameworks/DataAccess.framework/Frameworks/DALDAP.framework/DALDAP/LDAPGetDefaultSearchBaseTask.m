@interface LDAPGetDefaultSearchBaseTask
- (id)daLevelErrorForLDAPError:(int)a3;
- (int)numDownloadedElements;
- (void)_performQuery;
- (void)finishWithError:(id)a3;
- (void)performTask;
@end

@implementation LDAPGetDefaultSearchBaseTask

- (void)_performQuery
{
  v10 = *MEMORY[0x277D85DE8];
  if (_performQuery_onceToken_0 != -1)
  {
    [LDAPGetDefaultSearchBaseTask _performQuery];
  }

  v3 = [(LDAPTask *)self ldConnection];
  rootdse = ldap_connection_read_rootdse();

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 134217984;
    v9 = rootdse;
    _os_log_impl(&dword_24857C000, v5, v6, "Created operation at %p", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __45__LDAPGetDefaultSearchBaseTask__performQuery__block_invoke()
{
  v0 = _performQuery_attributes_0;
  _performQuery_attributes_0 = &unk_285AC8608;
}

void __45__LDAPGetDefaultSearchBaseTask__performQuery__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__LDAPGetDefaultSearchBaseTask__performQuery__block_invoke_3;
  block[3] = &unk_278F1FC30;
  v11 = a4;
  block[4] = *(a1 + 32);
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __45__LDAPGetDefaultSearchBaseTask__performQuery__block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v37 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) | 4) == 4)
  {
    if ([*(a1 + 32) isDisabled])
    {
      v2 = *(v1 + 32);
      obj = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
      [v2 finishWithError:?];
      v3 = *MEMORY[0x277D85DE8];

      return;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obja = [*(v1 + 40) allKeys];
    v9 = [obja countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v9)
    {
      goto LABEL_27;
    }

    v11 = v9;
    v12 = *v29;
    v13 = *(MEMORY[0x277D03988] + 3);
    type = *(MEMORY[0x277D03988] + 6);
    *&v10 = 138412290;
    v23 = v10;
    v25 = v13;
    v14 = v1;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(obja);
      }

      v16 = *(*(&v28 + 1) + 8 * v15);
      v17 = [v16 lowercaseString];
      if (![v17 isEqualToString:@"namingcontexts"])
      {
        goto LABEL_25;
      }

      v18 = [*(v1 + 40) objectForKeyedSubscript:v16];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if ([v18 count])
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, type))
          {
            *buf = v23;
            v33 = v19;
            _os_log_impl(&dword_24857C000, v20, type, "Found namingContexts of %@", buf, 0xCu);
          }

          [*(v14 + 32) setDefaultNamingContext:v19];
        }

LABEL_23:

        v13 = v25;
        v1 = v14;
      }

LABEL_25:
      if (v11 == ++v15)
      {
        v11 = [obja countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (!v11)
        {
LABEL_27:

          [*(v1 + 32) finishWithError:0];
          goto LABEL_28;
        }

        goto LABEL_11;
      }
    }

    v19 = DALoggingwithCategory();
    if (os_log_type_enabled(v19, v13))
    {
      v21 = objc_opt_class();
      *buf = 138412546;
      v33 = v21;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_24857C000, v19, v13, "Unexpected class of %@ for key %@.  Skipping it", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 48);
    *buf = 67109120;
    LODWORD(v33) = v6;
    _os_log_impl(&dword_24857C000, v4, v5, "Couldn't complete operation, error %d", buf, 8u);
  }

  v7 = *(v1 + 32);
  v8 = [v7 daLevelErrorForLDAPError:*(v1 + 48)];
  [v7 finishWithError:v8];

LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)performTask
{
  if (![(DADisableableObject *)self isDisabled])
  {

    [(LDAPTask *)self initializeConnection];
  }
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(LDAPTask *)v5 isFinished])
  {
    objc_sync_exit(v5);
  }

  else
  {
    [(LDAPTask *)v5 setIsFinished:1];
    objc_sync_exit(v5);

    v6 = [(LDAPTask *)v5 dateConnectionWentOut];

    if (v6)
    {
      v7 = [(LDAPTask *)v5 taskManager];
      v8 = [v7 account];
      v9 = [v8 statusReport];
      v10 = [MEMORY[0x277CBEAA8] date];
      v11 = [(LDAPTask *)v5 dateConnectionWentOut];
      [v10 timeIntervalSinceDate:v11];
      [v9 noteTimeSpentInNetworking:?];

      [(LDAPTask *)v5 setDateConnectionWentOut:0];
    }

    v12 = [(LDAPTask *)v5 ldConnection];

    if (v12)
    {
      v13 = [(LDAPTask *)v5 ldConnection];
      ldap_connection_disconnect();
    }

    v14 = [(LDAPTask *)v5 delegate];
    if (v4)
    {
      v15 = 79;
    }

    else
    {
      v15 = 2;
    }

    v16 = [(LDAPGetDefaultSearchBaseTask *)v5 defaultNamingContext];
    [v14 ldapGetDefaultSearchBaseTask:v5 completedWithStatus:v15 error:v4 defaultSearchBase:v16];

    v17.receiver = v5;
    v17.super_class = LDAPGetDefaultSearchBaseTask;
    [(LDAPTask *)&v17 finishWithError:v4];
  }
}

- (int)numDownloadedElements
{
  v2 = [(LDAPGetDefaultSearchBaseTask *)self defaultNamingContext];
  v3 = v2 != 0;

  return v3;
}

- (id)daLevelErrorForLDAPError:(int)a3
{
  v3 = 102;
  if (a3 > 10000)
  {
    if ((a3 - 10001) < 3)
    {
LABEL_7:
      v3 = 101;
      return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03700] code:v3 userInfo:0];
    }

    if (a3 != 10004 && a3 != 10006)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 > 0x32)
    {
LABEL_11:
      v3 = 100;
      return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03700] code:v3 userInfo:0];
    }

    if (((1 << a3) & 0x7000000002180) == 0)
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03700] code:v3 userInfo:0];
}

@end