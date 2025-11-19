@interface ESAccountLoader
+ (id)sharedInstance;
- (BOOL)_loadFrameworkAtSubpath:(id)a3;
- (Class)accountClassForACAccount:(id)a3;
- (Class)agentClassForACAccount:(id)a3;
- (Class)clientAccountClassForACAccount:(id)a3;
- (Class)daemonAccountClassForACAccount:(id)a3;
- (Class)daemonAppropriateAccountClassForACAccount:(id)a3;
- (ESAccountLoader)init;
- (void)_addAccountInfo:(id)a3 forFrameworkNamed:(id)a4;
- (void)init;
- (void)loadDaemonBundleForACAccountType:(id)a3;
- (void)loadFrameworkForACAccountType:(id)a3;
@end

@implementation ESAccountLoader

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ESAccountLoader_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

uint64_t __33__ESAccountLoader_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v2;

  v4 = *(a1 + 32);
  sMainBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (void)_addAccountInfo:(id)a3 forFrameworkNamed:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"ACAccountType"];
  v9 = [v6 objectForKeyedSubscript:@"ACParentAccountType"];
  if (v8)
  {
    v10 = objc_opt_new();
    v11 = [v6 objectForKeyedSubscript:@"DAAccountClass"];
    [v10 setAccountClassName:v11];

    v12 = [v6 objectForKeyedSubscript:@"DAClientAccountClass"];
    [v10 setClientAccountClassName:v12];

    v13 = [v6 objectForKeyedSubscript:@"DADaemonAccountClass"];
    [v10 setDaemonAccountClassName:v13];

    v14 = [v6 objectForKeyedSubscript:@"DAAgentClass"];
    [v10 setAgentClassName:v14];

    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v15, v16))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_24A097000, v15, v16, "Handling account info mapping %@", &v21, 0xCu);
    }

    if (v9)
    {
      v17 = [(NSMutableDictionary *)self->_acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:v9];
      if (!v17)
      {
        v17 = objc_opt_new();
        [(NSMutableDictionary *)self->_acParentAccountTypeToChildAccountTypes setObject:v17 forKeyedSubscript:v9];
      }

      [v17 setObject:v10 forKeyedSubscript:v8];
      [(NSMutableDictionary *)self->_acAccountTypeToAccountFrameworkSubpath setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      [(NSMutableDictionary *)self->_acAccountTypeToClassNames setObject:v10 forKeyedSubscript:v8];
      [(NSMutableDictionary *)self->_acAccountTypeToAccountFrameworkSubpath setObject:v7 forKeyedSubscript:v8];
      v17 = [v6 objectForKeyedSubscript:@"DAAgentClassBundle"];
      if (v17)
      {
        v18 = [v7 stringByAppendingPathComponent:v17];
        v19 = [v18 stringByAppendingPathExtension:@"bundle"];

        if (v19)
        {
          [(NSMutableDictionary *)self->_acAccountTypeToAccountDaemonBundleSubpath setObject:v19 forKeyedSubscript:v8];
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (ESAccountLoader)init
{
  v78 = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = ESAccountLoader;
  v3 = [(ESAccountLoader *)&v72 init];
  if (v3)
  {
    v4 = objc_opt_new();
    [(ESAccountLoader *)v3 setAcAccountTypeToAccountFrameworkSubpath:v4];

    v5 = objc_opt_new();
    [(ESAccountLoader *)v3 setAcAccountTypeToAccountDaemonBundleSubpath:v5];

    v6 = objc_opt_new();
    [(ESAccountLoader *)v3 setAcAccountTypeToClassNames:v6];

    v7 = objc_opt_new();
    [(ESAccountLoader *)v3 setAcParentAccountTypeToChildAccountTypes:v7];

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0x277CCA000uLL;
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 privateFrameworksPath];

    if (!v11)
    {
      [(ESAccountLoader *)v3 init];
    }

    v12 = MEMORY[0x277CBEAC0];
    v13 = [v11 stringByAppendingPathComponent:@"AccountInfo.plist"];
    v14 = [v12 dictionaryWithContentsOfFile:v13];

    v15 = [v14 objectForKeyedSubscript:@"DAAccountInfo"];
    v16 = v15;
    if (v15 && [v15 count])
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 0;
        _os_log_impl(&dword_24A097000, v17, v18, "Using pre-cached account infos", buf, 2u);
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = v16;
      v19 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (!v19)
      {
        goto LABEL_44;
      }

      v20 = v19;
      v52 = v16;
      v21 = v14;
      v22 = v8;
      v23 = *v69;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v69 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v68 + 1) + 8 * i);
          v26 = [v25 objectForKeyedSubscript:@"DAFrameworkName"];
          if (v26)
          {
            [(ESAccountLoader *)v3 _addAccountInfo:v25 forFrameworkNamed:v26];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v20);
      v8 = v22;
      v14 = v21;
    }

    else
    {
      v27 = DALoggingwithCategory();
      v28 = MEMORY[0x277D03988];
      v29 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v27, v29))
      {
        *buf = 0;
        _os_log_impl(&dword_24A097000, v27, v29, "Going to the disk for our account info providers", buf, 2u);
      }

      [v8 contentsOfDirectoryAtPath:v11 error:0];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v67 = 0u;
      v30 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (!v30)
      {
        goto LABEL_44;
      }

      v31 = v30;
      v51 = v8;
      v52 = v16;
      v50 = v14;
      v32 = *v65;
      v33 = *(v28 + 7);
      v53 = *v65;
      v54 = v11;
      do
      {
        v34 = 0;
        v55 = v31;
        do
        {
          if (*v65 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v59 = v34;
          v35 = *(*(&v64 + 1) + 8 * v34);
          v36 = DALoggingwithCategory();
          if (os_log_type_enabled(v36, v33))
          {
            *buf = 138412290;
            v75 = v35;
            _os_log_impl(&dword_24A097000, v36, v33, "Checking account info from framework: %@", buf, 0xCu);
          }

          v37 = objc_alloc(*(v9 + 2264));
          v38 = [v11 stringByAppendingPathComponent:v35];
          v39 = [v37 initWithPath:v38];

          if (v39)
          {
            v40 = [v39 infoDictionary];
            if (v40)
            {
              v56 = v40;
              v57 = v39;
              v41 = [v40 objectForKeyedSubscript:@"DAAccountInfo"];
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v42 = [v41 countByEnumeratingWithState:&v60 objects:v73 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v61;
                do
                {
                  for (j = 0; j != v43; ++j)
                  {
                    if (*v61 != v44)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v46 = *(*(&v60 + 1) + 8 * j);
                    v47 = DALoggingwithCategory();
                    if (os_log_type_enabled(v47, v33))
                    {
                      *buf = 138412290;
                      v75 = v46;
                      _os_log_impl(&dword_24A097000, v47, v33, "Adding account info: %@", buf, 0xCu);
                    }

                    [(ESAccountLoader *)v3 _addAccountInfo:v46 forFrameworkNamed:v35];
                  }

                  v43 = [v41 countByEnumeratingWithState:&v60 objects:v73 count:16];
                }

                while (v43);
              }

              v32 = v53;
              v11 = v54;
              v9 = 0x277CCA000;
              v31 = v55;
              v40 = v56;
              v39 = v57;
            }
          }

          v34 = v59 + 1;
        }

        while (v59 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v31);
      v14 = v50;
      v8 = v51;
    }

    v16 = v52;
LABEL_44:
  }

  v48 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_loadFrameworkAtSubpath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [sMainBundle privateFrameworksPath];
    v6 = [v5 stringByAppendingPathComponent:v4];

    v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [v7 load];
  objc_sync_exit(v8);

  return v9;
}

- (void)loadFrameworkForACAccountType:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  acAccountTypeToAccountFrameworkSubpath = self->_acAccountTypeToAccountFrameworkSubpath;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)acAccountTypeToAccountFrameworkSubpath objectForKeyedSubscript:v6];

  if (![(ESAccountLoader *)self _loadFrameworkAtSubpath:v7])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [v4 identifier];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_24A097000, v8, v9, "We don't know of any bundles for account type %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)loadDaemonBundleForACAccountType:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  acAccountTypeToAccountDaemonBundleSubpath = self->_acAccountTypeToAccountDaemonBundleSubpath;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)acAccountTypeToAccountDaemonBundleSubpath objectForKeyedSubscript:v6];

  if (![(ESAccountLoader *)self _loadFrameworkAtSubpath:v7])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [v4 identifier];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_24A097000, v8, v9, "Could not load bundle for account type %@ at subpath %@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (Class)accountClassForACAccount:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accountType];
  [(ESAccountLoader *)self loadFrameworkForACAccountType:v5];

  v6 = self->_acAccountTypeToClassNames;
  v7 = [v4 parentAccount];

  if (v7)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    v9 = [v4 parentAccount];
    v10 = [v9 accountType];
    v11 = [v10 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:v11];

    v6 = v12;
  }

  v13 = [v4 accountType];
  v14 = [v13 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v14];
  v16 = [v15 accountClassName];

  v17 = NSClassFromString(v16);
  if (!v17)
  {
    v18 = [v4 parentAccount];

    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    v21 = os_log_type_enabled(v19, v20);
    if (v18)
    {
      if (v21)
      {
        v22 = [v4 parentAccount];
        v26 = 138412802;
        v27 = v16;
        v28 = 2112;
        v29 = v4;
        v30 = 2112;
        v31 = v22;
        _os_log_impl(&dword_24A097000, v19, v20, "Could not come up with an account class (name %@) for account %@ parent account %@", &v26, 0x20u);
      }
    }

    else if (v21)
    {
      v26 = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_24A097000, v19, v20, "Could not come up with an account class (name %@) for account %@", &v26, 0x16u);
    }
  }

  v23 = v17;

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (Class)clientAccountClassForACAccount:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accountType];
  [(ESAccountLoader *)self loadFrameworkForACAccountType:v5];

  v6 = self->_acAccountTypeToClassNames;
  v7 = [v4 parentAccount];

  if (v7)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    v9 = [v4 parentAccount];
    v10 = [v9 accountType];
    v11 = [v10 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:v11];

    v6 = v12;
  }

  v13 = [v4 accountType];
  v14 = [v13 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v14];
  v16 = [v15 clientAccountClassName];

  if (!v16)
  {
    v17 = [v4 accountType];
    v18 = [v17 identifier];
    v19 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v18];
    v16 = [v19 accountClassName];
  }

  v20 = NSClassFromString(v16);
  if (!v20)
  {
    v21 = [v4 parentAccount];

    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 3);
    v24 = os_log_type_enabled(v22, v23);
    if (v21)
    {
      if (v24)
      {
        v25 = [v4 parentAccount];
        v29 = 138412802;
        v30 = v16;
        v31 = 2112;
        v32 = v4;
        v33 = 2112;
        v34 = v25;
        _os_log_impl(&dword_24A097000, v22, v23, "Could not come up with a client account class (name %@) for account %@ parent account %@", &v29, 0x20u);
      }
    }

    else if (v24)
    {
      v29 = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_24A097000, v22, v23, "Could not come up with a client account class (name %@) for account %@", &v29, 0x16u);
    }
  }

  v26 = v20;

  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (Class)daemonAccountClassForACAccount:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accountType];
  [(ESAccountLoader *)self loadFrameworkForACAccountType:v5];

  v6 = self->_acAccountTypeToClassNames;
  v7 = [v4 parentAccount];

  if (v7)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    v9 = [v4 parentAccount];
    v10 = [v9 accountType];
    v11 = [v10 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:v11];

    v6 = v12;
  }

  v13 = [v4 accountType];
  v14 = [v13 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v14];
  v16 = [v15 daemonAccountClassName];

  if (!v16)
  {
    v17 = [v4 accountType];
    v18 = [v17 identifier];
    v19 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v18];
    v16 = [v19 accountClassName];

    if (!v16)
    {
      goto LABEL_6;
    }
  }

  v20 = [v4 accountType];
  [(ESAccountLoader *)self loadDaemonBundleForACAccountType:v20];

  v21 = NSClassFromString(v16);
  if (!v21)
  {
LABEL_6:
    v22 = [v4 parentAccount];

    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    v25 = os_log_type_enabled(v23, v24);
    if (v22)
    {
      if (v25)
      {
        v26 = [v4 parentAccount];
        v30 = 138412802;
        v31 = v16;
        v32 = 2112;
        v33 = v4;
        v34 = 2112;
        v35 = v26;
        _os_log_impl(&dword_24A097000, v23, v24, "Could not come up with a daemon account class (name %@) for account %@ parent account %@", &v30, 0x20u);
      }
    }

    else if (v25)
    {
      v30 = 138412546;
      v31 = v16;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_24A097000, v23, v24, "Could not come up with a daemon account class (name %@) for account %@", &v30, 0x16u);
    }

    v21 = 0;
  }

  v27 = v21;

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (Class)agentClassForACAccount:(id)a3
{
  v5 = a3;
  v6 = [v5 accountType];
  [(ESAccountLoader *)self loadDaemonBundleForACAccountType:v6];

  v7 = self->_acAccountTypeToClassNames;
  v8 = [v5 parentAccount];

  if (v8)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    v10 = [v5 parentAccount];
    v11 = [v10 accountType];
    v12 = [v11 identifier];
    v13 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:v12];

    v7 = v13;
  }

  v14 = [v5 accountType];
  v15 = [v14 identifier];
  v16 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v15];
  v17 = [v16 agentClassName];

  v18 = NSClassFromString(v17);
  if (!v18)
  {
    v19 = [v5 parentAccount];

    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = v20;
    if (v19)
    {
      v22 = [v5 parentAccount];
      [v21 handleFailureInMethod:a2 object:self file:@"ESAccountLoader.m" lineNumber:250 description:{@"Could not come up with an agent class (name %@) for account %@ parent account %@", v17, v5, v22}];
    }

    else
    {
      [v20 handleFailureInMethod:a2 object:self file:@"ESAccountLoader.m" lineNumber:252 description:{@"Could not come up with an agent class (name %@) for account %@", v17, v5}];
    }
  }

  v23 = v18;

  return v18;
}

- (Class)daemonAppropriateAccountClassForACAccount:(id)a3
{
  v4 = a3;
  if (ESIsRunningInExchangeSyncD())
  {
    [(ESAccountLoader *)self daemonAccountClassForACAccount:v4];
  }

  else
  {
    [(ESAccountLoader *)self clientAccountClassForACAccount:v4];
  }
  v5 = ;

  return v5;
}

- (void)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ESAccountLoader.m" lineNumber:105 description:{@"Could not find the frameworks directory for bundle %@", v5}];
}

@end