@interface DAAccountLoader
+ (id)sharedInstance;
+ (void)_findPrivateFrameworks;
- (BOOL)_loadFrameworkAtSubpath:(id)a3;
- (Class)agentClassForACAccount:(id)a3;
- (Class)clientAccountClassForACAccount:(id)a3;
- (Class)daemonAccountClassForACAccount:(id)a3;
- (Class)daemonAppropriateAccountClassForACAccount:(id)a3;
- (DAAccountLoader)init;
- (id)_classNamesDictionaryForAccount:(id)a3;
- (void)_addAccountInfo:(id)a3 forFrameworkNamed:(id)a4;
- (void)loadDaemonBundleForACAccountType:(id)a3;
- (void)loadFrameworkForACAccountType:(id)a3;
@end

@implementation DAAccountLoader

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DAAccountLoader_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __33__DAAccountLoader_sharedInstance__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _findPrivateFrameworks];
  sharedInstance__sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)_addAccountInfo:(id)a3 forFrameworkNamed:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"ACAccountType"];
  v9 = [v6 objectForKeyedSubscript:@"ACParentAccountType"];
  v10 = [v6 objectForKeyedSubscript:@"ACTopLevelAccountType"];
  if (v8)
  {
    v11 = objc_opt_new();
    v12 = [v6 objectForKeyedSubscript:@"DAAccountClass"];
    [v11 setAccountClassName:v12];

    v13 = [v6 objectForKeyedSubscript:@"DAClientAccountClass"];
    [v11 setClientAccountClassName:v13];

    v14 = [v6 objectForKeyedSubscript:@"DADaemonAccountClass"];
    [v11 setDaemonAccountClassName:v14];

    v15 = [v6 objectForKeyedSubscript:@"DAAgentClass"];
    [v11 setAgentClassName:v15];

    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v16, v17))
    {
      v25 = 138412290;
      v26 = v6;
      _os_log_impl(&dword_24844D000, v16, v17, "Handling account info mapping %@", &v25, 0xCu);
    }

    [(NSMutableDictionary *)self->_acAccountTypeToAccountFrameworkSubpath setObject:v7 forKeyedSubscript:v8];
    if (v10)
    {
      v18 = [(NSMutableDictionary *)self->_classNamesForTopLevelAccountTypes objectForKeyedSubscript:v10];
      if (!v18)
      {
        v18 = objc_opt_new();
        classNamesForTopLevelAccountTypes = self->_classNamesForTopLevelAccountTypes;
        v20 = v18;
        v21 = v10;
LABEL_10:
        [(NSMutableDictionary *)classNamesForTopLevelAccountTypes setObject:v20 forKeyedSubscript:v21];
      }
    }

    else
    {
      if (!v9)
      {
        [(NSMutableDictionary *)self->_defaultClassNamesForAccountTypes setObject:v11 forKeyedSubscript:v8];
        v18 = [v6 objectForKeyedSubscript:@"DAAgentClassBundle"];
        if (v18)
        {
          v23 = [v7 stringByAppendingPathComponent:v18];
          v24 = [v23 stringByAppendingPathExtension:@"bundle"];

          if (v24)
          {
            [(NSMutableDictionary *)self->_acAccountTypeToAccountDaemonBundleSubpath setObject:v24 forKeyedSubscript:v8];
          }
        }

        goto LABEL_12;
      }

      v18 = [(NSMutableDictionary *)self->_classNamesForDirectlyNestedAccountTypes objectForKeyedSubscript:v9];
      if (!v18)
      {
        v18 = objc_opt_new();
        classNamesForTopLevelAccountTypes = self->_classNamesForDirectlyNestedAccountTypes;
        v20 = v18;
        v21 = v9;
        goto LABEL_10;
      }
    }

    [v18 setObject:v11 forKeyedSubscript:v8];
LABEL_12:
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (DAAccountLoader)init
{
  v65 = *MEMORY[0x277D85DE8];
  v61.receiver = self;
  v61.super_class = DAAccountLoader;
  v2 = [(DAAccountLoader *)&v61 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DAAccountLoader *)v2 setAcAccountTypeToAccountFrameworkSubpath:v3];

    v4 = objc_opt_new();
    [(DAAccountLoader *)v2 setAcAccountTypeToAccountDaemonBundleSubpath:v4];

    v5 = objc_opt_new();
    [(DAAccountLoader *)v2 setDefaultClassNamesForAccountTypes:v5];

    v6 = objc_opt_new();
    [(DAAccountLoader *)v2 setClassNamesForDirectlyNestedAccountTypes:v6];

    v7 = objc_opt_new();
    [(DAAccountLoader *)v2 setClassNamesForTopLevelAccountTypes:v7];

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = privateFrameworksPath;
    v10 = MEMORY[0x277CBEAC0];
    v11 = [v9 stringByAppendingPathComponent:@"AccountInfo.plist"];
    v12 = [v10 dictionaryWithContentsOfFile:v11];

    v13 = [v12 objectForKeyedSubscript:@"DAAccountInfo"];
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    v16 = os_log_type_enabled(v14, v15);
    v45 = v9;
    if (v13)
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_24844D000, v14, v15, "Using pre-cached account infos", buf, 2u);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v13;
      v17 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v57;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v57 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v56 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"DAFrameworkName"];
            if (v22)
            {
              [(DAAccountLoader *)v2 _addAccountInfo:v21 forFrameworkNamed:v22];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v18);
        v9 = v45;
      }
    }

    else
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_24844D000, v14, v15, "Going to the disk for our account info providers", buf, 2u);
      }

      [v8 contentsOfDirectoryAtPath:v9 error:0];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v55 = 0u;
      v23 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v23)
      {
        v42 = 0;
        v43 = v12;
        v44 = v8;
        v24 = *v53;
        v25 = 0x277CCA000uLL;
        v26 = v23;
        do
        {
          v27 = 0;
          v46 = v26;
          do
          {
            if (*v53 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v52 + 1) + 8 * v27);
            v29 = objc_alloc(*(v25 + 2264));
            v30 = [v9 stringByAppendingPathComponent:v28];
            v31 = [v29 initWithPath:v30];

            if (v31)
            {
              v32 = [v31 infoDictionary];
              v33 = v32;
              if (v32)
              {
                v34 = v24;
                v35 = [v32 objectForKeyedSubscript:@"DAAccountInfo"];
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v36 = [v35 countByEnumeratingWithState:&v48 objects:v62 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v49;
                  do
                  {
                    for (j = 0; j != v37; ++j)
                    {
                      if (*v49 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      [(DAAccountLoader *)v2 _addAccountInfo:*(*(&v48 + 1) + 8 * j) forFrameworkNamed:v28, v42, v43, v44];
                    }

                    v37 = [v35 countByEnumeratingWithState:&v48 objects:v62 count:16];
                  }

                  while (v37);
                }

                v9 = v45;
                v26 = v46;
                v24 = v34;
                v25 = 0x277CCA000;
              }
            }

            ++v27;
          }

          while (v27 != v26);
          v26 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
        }

        while (v26);
        v12 = v43;
        v8 = v44;
        v13 = v42;
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)_findPrivateFrameworks
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [v5 handleFailureInMethod:a2 object:a1 file:@"DAAccountLoader.m" lineNumber:168 description:{@"Could not find the frameworks directory for bundle %@", v4}];
}

- (BOOL)_loadFrameworkAtSubpath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [privateFrameworksPath stringByAppendingPathComponent:v4];
    v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [v6 load];
  objc_sync_exit(v7);

  return v8;
}

- (void)loadFrameworkForACAccountType:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  acAccountTypeToAccountFrameworkSubpath = self->_acAccountTypeToAccountFrameworkSubpath;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)acAccountTypeToAccountFrameworkSubpath objectForKeyedSubscript:v6];

  if (![(DAAccountLoader *)self _loadFrameworkAtSubpath:v7])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [v4 identifier];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_24844D000, v8, v9, "We don't know of any bundles for account type %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)loadDaemonBundleForACAccountType:(id)a3
{
  acAccountTypeToAccountDaemonBundleSubpath = self->_acAccountTypeToAccountDaemonBundleSubpath;
  v5 = [a3 identifier];
  v6 = [(NSMutableDictionary *)acAccountTypeToAccountDaemonBundleSubpath objectForKeyedSubscript:v5];

  [(DAAccountLoader *)self _loadFrameworkAtSubpath:v6];
}

- (id)_classNamesDictionaryForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 parentAccount];

  if (v5)
  {
    v6 = [v4 calTopLevelAccount];
    v7 = [v6 accountType];
    v8 = [v7 identifier];

    v9 = [(NSMutableDictionary *)self->_classNamesForTopLevelAccountTypes objectForKeyedSubscript:v8];
    if (v9)
    {
      v10 = [v4 accountType];
      v11 = [v10 identifier];
      v12 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v11];

      if (v12)
      {

        goto LABEL_10;
      }
    }

    classNamesForDirectlyNestedAccountTypes = self->_classNamesForDirectlyNestedAccountTypes;
    v14 = [v4 parentAccount];
    v15 = [v14 accountType];
    v16 = [v15 identifier];
    v17 = [(NSMutableDictionary *)classNamesForDirectlyNestedAccountTypes objectForKeyedSubscript:v16];

    if (v17)
    {
      v18 = [v4 accountType];
      v19 = [v18 identifier];
      v20 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:v19];

      if (v20)
      {

        v9 = v17;
        goto LABEL_10;
      }
    }
  }

  v9 = self->_defaultClassNamesForAccountTypes;
LABEL_10:

  return v9;
}

- (Class)clientAccountClassForACAccount:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accountType];
  [(DAAccountLoader *)self loadFrameworkForACAccountType:v5];

  v6 = [(DAAccountLoader *)self _classNamesDictionaryForAccount:v4];
  v7 = [v4 accountType];
  v8 = [v7 identifier];
  v9 = [v6 objectForKeyedSubscript:v8];
  v10 = [v9 clientAccountClassName];

  if (!v10)
  {
    v11 = [v4 accountType];
    v12 = [v11 identifier];
    v13 = [v6 objectForKeyedSubscript:v12];
    v10 = [v13 accountClassName];
  }

  v14 = NSClassFromString(v10);
  if (!v14)
  {
    v15 = [v4 parentAccount];

    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    v18 = os_log_type_enabled(v16, v17);
    if (v15)
    {
      if (v18)
      {
        v19 = [v4 parentAccount];
        v23 = 138412802;
        v24 = v10;
        v25 = 2112;
        v26 = v4;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_24844D000, v16, v17, "Could not come up with a client account class (name %@) for account %@ parent account %@", &v23, 0x20u);
      }
    }

    else if (v18)
    {
      v23 = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_24844D000, v16, v17, "Could not come up with a client account class (name %@) for account %@", &v23, 0x16u);
    }
  }

  v20 = v14;

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (Class)daemonAccountClassForACAccount:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accountType];
  [(DAAccountLoader *)self loadFrameworkForACAccountType:v5];

  v6 = [(DAAccountLoader *)self _classNamesDictionaryForAccount:v4];
  v7 = [v4 accountType];
  v8 = [v7 identifier];
  v9 = [v6 objectForKeyedSubscript:v8];
  v10 = [v9 daemonAccountClassName];

  if (!v10)
  {
    v11 = [v4 accountType];
    v12 = [v11 identifier];
    v13 = [v6 objectForKeyedSubscript:v12];
    v10 = [v13 accountClassName];

    if (!v10)
    {
      goto LABEL_4;
    }
  }

  v14 = [v4 accountType];
  [(DAAccountLoader *)self loadDaemonBundleForACAccountType:v14];

  v15 = NSClassFromString(v10);
  if (!v15)
  {
LABEL_4:
    v16 = [v4 parentAccount];

    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 3);
    v19 = os_log_type_enabled(v17, v18);
    if (v16)
    {
      if (v19)
      {
        v20 = [v4 parentAccount];
        v24 = 138412802;
        v25 = v10;
        v26 = 2112;
        v27 = v4;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_24844D000, v17, v18, "Could not come up with a daemon account class (name %@) for account %@ parent account %@", &v24, 0x20u);
      }
    }

    else if (v19)
    {
      v24 = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_24844D000, v17, v18, "Could not come up with a daemon account class (name %@) for account %@", &v24, 0x16u);
    }

    v15 = 0;
  }

  v21 = v15;

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (Class)agentClassForACAccount:(id)a3
{
  v5 = a3;
  v6 = [v5 accountType];
  [(DAAccountLoader *)self loadDaemonBundleForACAccountType:v6];

  v7 = [(DAAccountLoader *)self _classNamesDictionaryForAccount:v5];
  v8 = [v5 accountType];
  v9 = [v8 identifier];
  v10 = [v7 objectForKeyedSubscript:v9];
  v11 = [v10 agentClassName];

  v12 = NSClassFromString(v11);
  if (!v12)
  {
    v13 = [v5 parentAccount];

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = v14;
    if (v13)
    {
      v16 = [v5 parentAccount];
      [v15 handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:273 description:{@"Could not come up with an agent class (name %@) for account %@ parent account %@", v11, v5, v16}];
    }

    else
    {
      [v14 handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:275 description:{@"Could not come up with an agent class (name %@) for account %@", v11, v5}];
    }
  }

  v17 = v12;

  return v12;
}

- (Class)daemonAppropriateAccountClassForACAccount:(id)a3
{
  v4 = a3;
  if (DAIsRunningInDataAccessD())
  {
    [(DAAccountLoader *)self daemonAccountClassForACAccount:v4];
  }

  else
  {
    [(DAAccountLoader *)self clientAccountClassForACAccount:v4];
  }
  v5 = ;

  return v5;
}

@end