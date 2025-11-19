@interface DAAccountLoader
+ (id)sharedInstance;
+ (void)_findPrivateFrameworks;
- (BOOL)_loadFrameworkAtSubpath:(id)a3;
- (Class)accountClassForACAccount:(id)a3;
- (Class)agentClassForACAccount:(id)a3;
- (Class)clientAccountClassForACAccount:(id)a3;
- (Class)daemonAccountClassForACAccount:(id)a3;
- (Class)daemonAppropriateAccountClassForACAccount:(id)a3;
- (DAAccountLoader)init;
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
    v16 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v15, v16))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_24244C000, v15, v16, "Handling account info mapping %@", &v21, 0xCu);
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

- (DAAccountLoader)init
{
  v64 = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = DAAccountLoader;
  v2 = [(DAAccountLoader *)&v60 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DAAccountLoader *)v2 setAcAccountTypeToAccountFrameworkSubpath:v3];

    v4 = objc_opt_new();
    [(DAAccountLoader *)v2 setAcAccountTypeToAccountDaemonBundleSubpath:v4];

    v5 = objc_opt_new();
    [(DAAccountLoader *)v2 setAcAccountTypeToClassNames:v5];

    v6 = objc_opt_new();
    [(DAAccountLoader *)v2 setAcParentAccountTypeToChildAccountTypes:v6];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = privateFrameworksPath;
    v9 = MEMORY[0x277CBEAC0];
    v10 = [v8 stringByAppendingPathComponent:@"AccountInfo.plist"];
    v11 = [v9 dictionaryWithContentsOfFile:v10];

    v12 = [v11 objectForKeyedSubscript:@"DAAccountInfo"];
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277CF3AF0] + 6);
    v15 = os_log_type_enabled(v13, v14);
    v44 = v8;
    if (v12)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_24244C000, v13, v14, "Using pre-cached account infos", buf, 2u);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v12;
      v16 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v56;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v56 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v55 + 1) + 8 * i);
            v21 = [v20 objectForKeyedSubscript:@"DAFrameworkName"];
            if (v21)
            {
              [(DAAccountLoader *)v2 _addAccountInfo:v20 forFrameworkNamed:v21];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v17);
        v8 = v44;
      }
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_24244C000, v13, v14, "Going to the disk for our account info providers", buf, 2u);
      }

      [v7 contentsOfDirectoryAtPath:v8 error:0];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v54 = 0u;
      v22 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v22)
      {
        v41 = 0;
        v42 = v11;
        v43 = v7;
        v23 = *v52;
        v24 = 0x277CCA000uLL;
        v25 = v22;
        do
        {
          v26 = 0;
          v45 = v25;
          do
          {
            if (*v52 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v51 + 1) + 8 * v26);
            v28 = objc_alloc(*(v24 + 2264));
            v29 = [v8 stringByAppendingPathComponent:v27];
            v30 = [v28 initWithPath:v29];

            if (v30)
            {
              v31 = [v30 infoDictionary];
              v32 = v31;
              if (v31)
              {
                v33 = v23;
                v34 = [v31 objectForKeyedSubscript:@"DAAccountInfo"];
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v35 = [v34 countByEnumeratingWithState:&v47 objects:v61 count:16];
                if (v35)
                {
                  v36 = v35;
                  v37 = *v48;
                  do
                  {
                    for (j = 0; j != v36; ++j)
                    {
                      if (*v48 != v37)
                      {
                        objc_enumerationMutation(v34);
                      }

                      [(DAAccountLoader *)v2 _addAccountInfo:*(*(&v47 + 1) + 8 * j) forFrameworkNamed:v27, v41, v42, v43];
                    }

                    v36 = [v34 countByEnumeratingWithState:&v47 objects:v61 count:16];
                  }

                  while (v36);
                }

                v8 = v44;
                v25 = v45;
                v23 = v33;
                v24 = 0x277CCA000;
              }
            }

            ++v26;
          }

          while (v26 != v25);
          v25 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
        }

        while (v25);
        v11 = v42;
        v7 = v43;
        v12 = v41;
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)_findPrivateFrameworks
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [v5 handleFailureInMethod:a2 object:a1 file:@"DAAccountLoader.m" lineNumber:140 description:{@"Could not find the frameworks directory for bundle %@", v4}];
}

- (BOOL)_loadFrameworkAtSubpath:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
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
  v14 = 0;
  v8 = [v6 loadAndReturnError:&v14];
  v9 = v14;
  if ((v8 & 1) == 0)
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_24244C000, v10, v11, "Failed to load account bundle {error: %@}", buf, 0xCu);
    }
  }

  objc_sync_exit(v7);
  v12 = *MEMORY[0x277D85DE8];
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
    v9 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [v4 identifier];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_24244C000, v8, v9, "We don't know of any bundles for account type %@", &v12, 0xCu);
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

- (Class)accountClassForACAccount:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accountType];
  [(DAAccountLoader *)self loadFrameworkForACAccountType:v5];

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
    v20 = *(MEMORY[0x277CF3AF0] + 3);
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
        _os_log_impl(&dword_24244C000, v19, v20, "Could not come up with an account class (name %@) for account %@ parent account %@", &v26, 0x20u);
      }
    }

    else if (v21)
    {
      v26 = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_24244C000, v19, v20, "Could not come up with an account class (name %@) for account %@", &v26, 0x16u);
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
  [(DAAccountLoader *)self loadFrameworkForACAccountType:v5];

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
    v23 = *(MEMORY[0x277CF3AF0] + 3);
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
        _os_log_impl(&dword_24244C000, v22, v23, "Could not come up with a client account class (name %@) for account %@ parent account %@", &v29, 0x20u);
      }
    }

    else if (v24)
    {
      v29 = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_24244C000, v22, v23, "Could not come up with a client account class (name %@) for account %@", &v29, 0x16u);
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
  [(DAAccountLoader *)self loadFrameworkForACAccountType:v5];

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
  [(DAAccountLoader *)self loadDaemonBundleForACAccountType:v20];

  v21 = NSClassFromString(v16);
  if (!v21)
  {
LABEL_6:
    v22 = [v4 parentAccount];

    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277CF3AF0] + 3);
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
        _os_log_impl(&dword_24244C000, v23, v24, "Could not come up with a daemon account class (name %@) for account %@ parent account %@", &v30, 0x20u);
      }
    }

    else if (v25)
    {
      v30 = 138412546;
      v31 = v16;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_24244C000, v23, v24, "Could not come up with a daemon account class (name %@) for account %@", &v30, 0x16u);
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
  [(DAAccountLoader *)self loadDaemonBundleForACAccountType:v6];

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
      [v21 handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:251 description:{@"Could not come up with an agent class (name %@) for account %@ parent account %@", v17, v5, v22}];
    }

    else
    {
      [v20 handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:253 description:{@"Could not come up with an agent class (name %@) for account %@", v17, v5}];
    }
  }

  v23 = v18;

  return v18;
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