@interface DAAccountLoader
+ (id)sharedInstance;
+ (void)_findPrivateFrameworks;
- (BOOL)_loadFrameworkAtSubpath:(id)subpath;
- (Class)accountClassForACAccount:(id)account;
- (Class)agentClassForACAccount:(id)account;
- (Class)clientAccountClassForACAccount:(id)account;
- (Class)daemonAccountClassForACAccount:(id)account;
- (Class)daemonAppropriateAccountClassForACAccount:(id)account;
- (DAAccountLoader)init;
- (void)_addAccountInfo:(id)info forFrameworkNamed:(id)named;
- (void)loadDaemonBundleForACAccountType:(id)type;
- (void)loadFrameworkForACAccountType:(id)type;
@end

@implementation DAAccountLoader

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DAAccountLoader_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)_addAccountInfo:(id)info forFrameworkNamed:(id)named
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  namedCopy = named;
  v8 = [infoCopy objectForKeyedSubscript:@"ACAccountType"];
  v9 = [infoCopy objectForKeyedSubscript:@"ACParentAccountType"];
  if (v8)
  {
    v10 = objc_opt_new();
    v11 = [infoCopy objectForKeyedSubscript:@"DAAccountClass"];
    [v10 setAccountClassName:v11];

    v12 = [infoCopy objectForKeyedSubscript:@"DAClientAccountClass"];
    [v10 setClientAccountClassName:v12];

    v13 = [infoCopy objectForKeyedSubscript:@"DADaemonAccountClass"];
    [v10 setDaemonAccountClassName:v13];

    v14 = [infoCopy objectForKeyedSubscript:@"DAAgentClass"];
    [v10 setAgentClassName:v14];

    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v15, v16))
    {
      v21 = 138412290;
      v22 = infoCopy;
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
      [(NSMutableDictionary *)self->_acAccountTypeToAccountFrameworkSubpath setObject:namedCopy forKeyedSubscript:v8];
    }

    else
    {
      [(NSMutableDictionary *)self->_acAccountTypeToClassNames setObject:v10 forKeyedSubscript:v8];
      [(NSMutableDictionary *)self->_acAccountTypeToAccountFrameworkSubpath setObject:namedCopy forKeyedSubscript:v8];
      v17 = [infoCopy objectForKeyedSubscript:@"DAAgentClassBundle"];
      if (v17)
      {
        v18 = [namedCopy stringByAppendingPathComponent:v17];
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

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
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

      [defaultManager contentsOfDirectoryAtPath:v8 error:0];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v54 = 0u;
      v22 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v22)
      {
        v41 = 0;
        v42 = v11;
        v43 = defaultManager;
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
              infoDictionary = [v30 infoDictionary];
              v32 = infoDictionary;
              if (infoDictionary)
              {
                v33 = v23;
                v34 = [infoDictionary objectForKeyedSubscript:@"DAAccountInfo"];
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
        defaultManager = v43;
        v12 = v41;
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)_findPrivateFrameworks
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:140 description:{@"Could not find the frameworks directory for bundle %@", v4}];
}

- (BOOL)_loadFrameworkAtSubpath:(id)subpath
{
  v17 = *MEMORY[0x277D85DE8];
  subpathCopy = subpath;
  if (subpathCopy)
  {
    v5 = [privateFrameworksPath stringByAppendingPathComponent:subpathCopy];
    v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)loadFrameworkForACAccountType:(id)type
{
  v14 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  acAccountTypeToAccountFrameworkSubpath = self->_acAccountTypeToAccountFrameworkSubpath;
  identifier = [typeCopy identifier];
  v7 = [(NSMutableDictionary *)acAccountTypeToAccountFrameworkSubpath objectForKeyedSubscript:identifier];

  if (![(DAAccountLoader *)self _loadFrameworkAtSubpath:v7])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      identifier2 = [typeCopy identifier];
      v12 = 138412290;
      v13 = identifier2;
      _os_log_impl(&dword_24244C000, v8, v9, "We don't know of any bundles for account type %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)loadDaemonBundleForACAccountType:(id)type
{
  acAccountTypeToAccountDaemonBundleSubpath = self->_acAccountTypeToAccountDaemonBundleSubpath;
  identifier = [type identifier];
  v6 = [(NSMutableDictionary *)acAccountTypeToAccountDaemonBundleSubpath objectForKeyedSubscript:identifier];

  [(DAAccountLoader *)self _loadFrameworkAtSubpath:v6];
}

- (Class)accountClassForACAccount:(id)account
{
  v32 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(DAAccountLoader *)self loadFrameworkForACAccountType:accountType];

  v6 = self->_acAccountTypeToClassNames;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType2 = [parentAccount2 accountType];
    identifier = [accountType2 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:identifier];

    v6 = v12;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier2];
  accountClassName = [v15 accountClassName];

  v17 = NSClassFromString(accountClassName);
  if (!v17)
  {
    parentAccount3 = [accountCopy parentAccount];

    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277CF3AF0] + 3);
    v21 = os_log_type_enabled(v19, v20);
    if (parentAccount3)
    {
      if (v21)
      {
        parentAccount4 = [accountCopy parentAccount];
        v26 = 138412802;
        v27 = accountClassName;
        v28 = 2112;
        v29 = accountCopy;
        v30 = 2112;
        v31 = parentAccount4;
        _os_log_impl(&dword_24244C000, v19, v20, "Could not come up with an account class (name %@) for account %@ parent account %@", &v26, 0x20u);
      }
    }

    else if (v21)
    {
      v26 = 138412546;
      v27 = accountClassName;
      v28 = 2112;
      v29 = accountCopy;
      _os_log_impl(&dword_24244C000, v19, v20, "Could not come up with an account class (name %@) for account %@", &v26, 0x16u);
    }
  }

  v23 = v17;

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (Class)clientAccountClassForACAccount:(id)account
{
  v35 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(DAAccountLoader *)self loadFrameworkForACAccountType:accountType];

  v6 = self->_acAccountTypeToClassNames;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType2 = [parentAccount2 accountType];
    identifier = [accountType2 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:identifier];

    v6 = v12;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier2];
  clientAccountClassName = [v15 clientAccountClassName];

  if (!clientAccountClassName)
  {
    accountType4 = [accountCopy accountType];
    identifier3 = [accountType4 identifier];
    v19 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier3];
    clientAccountClassName = [v19 accountClassName];
  }

  v20 = NSClassFromString(clientAccountClassName);
  if (!v20)
  {
    parentAccount3 = [accountCopy parentAccount];

    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277CF3AF0] + 3);
    v24 = os_log_type_enabled(v22, v23);
    if (parentAccount3)
    {
      if (v24)
      {
        parentAccount4 = [accountCopy parentAccount];
        v29 = 138412802;
        v30 = clientAccountClassName;
        v31 = 2112;
        v32 = accountCopy;
        v33 = 2112;
        v34 = parentAccount4;
        _os_log_impl(&dword_24244C000, v22, v23, "Could not come up with a client account class (name %@) for account %@ parent account %@", &v29, 0x20u);
      }
    }

    else if (v24)
    {
      v29 = 138412546;
      v30 = clientAccountClassName;
      v31 = 2112;
      v32 = accountCopy;
      _os_log_impl(&dword_24244C000, v22, v23, "Could not come up with a client account class (name %@) for account %@", &v29, 0x16u);
    }
  }

  v26 = v20;

  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (Class)daemonAccountClassForACAccount:(id)account
{
  v36 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(DAAccountLoader *)self loadFrameworkForACAccountType:accountType];

  v6 = self->_acAccountTypeToClassNames;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType2 = [parentAccount2 accountType];
    identifier = [accountType2 identifier];
    v12 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:identifier];

    v6 = v12;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier2];
  daemonAccountClassName = [v15 daemonAccountClassName];

  if (!daemonAccountClassName)
  {
    accountType4 = [accountCopy accountType];
    identifier3 = [accountType4 identifier];
    v19 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:identifier3];
    daemonAccountClassName = [v19 accountClassName];

    if (!daemonAccountClassName)
    {
      goto LABEL_6;
    }
  }

  accountType5 = [accountCopy accountType];
  [(DAAccountLoader *)self loadDaemonBundleForACAccountType:accountType5];

  v21 = NSClassFromString(daemonAccountClassName);
  if (!v21)
  {
LABEL_6:
    parentAccount3 = [accountCopy parentAccount];

    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277CF3AF0] + 3);
    v25 = os_log_type_enabled(v23, v24);
    if (parentAccount3)
    {
      if (v25)
      {
        parentAccount4 = [accountCopy parentAccount];
        v30 = 138412802;
        v31 = daemonAccountClassName;
        v32 = 2112;
        v33 = accountCopy;
        v34 = 2112;
        v35 = parentAccount4;
        _os_log_impl(&dword_24244C000, v23, v24, "Could not come up with a daemon account class (name %@) for account %@ parent account %@", &v30, 0x20u);
      }
    }

    else if (v25)
    {
      v30 = 138412546;
      v31 = daemonAccountClassName;
      v32 = 2112;
      v33 = accountCopy;
      _os_log_impl(&dword_24244C000, v23, v24, "Could not come up with a daemon account class (name %@) for account %@", &v30, 0x16u);
    }

    v21 = 0;
  }

  v27 = v21;

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (Class)agentClassForACAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  [(DAAccountLoader *)self loadDaemonBundleForACAccountType:accountType];

  v7 = self->_acAccountTypeToClassNames;
  parentAccount = [accountCopy parentAccount];

  if (parentAccount)
  {
    acParentAccountTypeToChildAccountTypes = self->_acParentAccountTypeToChildAccountTypes;
    parentAccount2 = [accountCopy parentAccount];
    accountType2 = [parentAccount2 accountType];
    identifier = [accountType2 identifier];
    v13 = [(NSMutableDictionary *)acParentAccountTypeToChildAccountTypes objectForKeyedSubscript:identifier];

    v7 = v13;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v16 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:identifier2];
  agentClassName = [v16 agentClassName];

  v18 = NSClassFromString(agentClassName);
  if (!v18)
  {
    parentAccount3 = [accountCopy parentAccount];

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v21 = currentHandler;
    if (parentAccount3)
    {
      parentAccount4 = [accountCopy parentAccount];
      [v21 handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:251 description:{@"Could not come up with an agent class (name %@) for account %@ parent account %@", agentClassName, accountCopy, parentAccount4}];
    }

    else
    {
      [currentHandler handleFailureInMethod:a2 object:self file:@"DAAccountLoader.m" lineNumber:253 description:{@"Could not come up with an agent class (name %@) for account %@", agentClassName, accountCopy}];
    }
  }

  v23 = v18;

  return v18;
}

- (Class)daemonAppropriateAccountClassForACAccount:(id)account
{
  accountCopy = account;
  if (DAIsRunningInDataAccessD())
  {
    [(DAAccountLoader *)self daemonAccountClassForACAccount:accountCopy];
  }

  else
  {
    [(DAAccountLoader *)self clientAccountClassForACAccount:accountCopy];
  }
  v5 = ;

  return v5;
}

@end