@interface ESDAccessManager
+ (id)sharedManager;
- (BOOL)isAccountID:(id)a3 folderID:(id)a4 watchedByClientBesides:(id)a5;
- (ESDAccessManager)init;
- (id)_init;
- (void)_setupServerConnection;
- (void)addPersistentClientWithAccountID:(id)a3 clientID:(id)a4 watchedIDs:(id)a5;
- (void)removeClient:(id)a3;
@end

@implementation ESDAccessManager

- (void)_setupServerConnection
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = DALoggingwithCategory();
  v1 = *MEMORY[0x277D03988];
  if (os_log_type_enabled(v0, *MEMORY[0x277D03988]))
  {
    v2 = *MEMORY[0x277D039C8];
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_24A184000, v0, v1, "Couldn't checkin with our port. Aborting.\nIf running from the command line make sure you don't already have %@ registered with launchd.", &v3, 0xCu);
  }

  abort();
}

void __42__ESDAccessManager__setupServerConnection__block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x24C2127F0]() != MEMORY[0x277D86450])
  {
    goto LABEL_50;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained isDisabled];

  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v6, v7, "ESDAccessManager is Disabled. Cancelling Connection", buf, 2u);
    }

    xpc_connection_cancel(v3);
    goto LABEL_50;
  }

  v8 = xpc_connection_copy_entitlement_value();
  v41 = v8;
  v44 = a1;
  if (v8)
  {
    v9 = v8;
    if (MEMORY[0x24C2127F0](v8) == MEMORY[0x277D864C0])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_string_get_string_ptr(v9), v41}];
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138412546;
        *&buf[4] = v3;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_24A184000, v12, v13, "ESDAccessManager event %@ clientName %@ is Entitled", buf, 0x16u);
      }

      v43 = 0;
      goto LABEL_23;
    }

    v43 = 0;
  }

  else
  {
    pid = xpc_connection_get_pid(v3);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    memset(buf, 0, sizeof(buf));
    if (proc_name(pid, buf, 0x100u))
    {
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:{buf, 0}];
    }

    else
    {
      v43 = 0;
    }

    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      *v50 = 138412546;
      v51 = v3;
      v52 = 2112;
      v53 = v43;
      _os_log_impl(&dword_24A184000, v14, v15, "ESDAccessManager event %@ clientName %@ is NOT Entitled", v50, 0x16u);
    }

    v16 = DALoggingwithCategory();
    if (os_log_type_enabled(v16, v15))
    {
      *v50 = 138412546;
      v51 = v3;
      v52 = 2112;
      v53 = v43;
      _os_log_impl(&dword_24A184000, v16, v15, "ESDAccessManager Received connection event %@ for clientName %@", v50, 0x16u);
    }

    v17 = DALoggingwithCategory();
    if (os_log_type_enabled(v17, v15))
    {
      *v50 = 138412290;
      v51 = v43;
      _os_log_impl(&dword_24A184000, v17, v15, "Could not get client ID through xpc_connection_copy_entitlement_value(), the client name is: %@", v50, 0xCu);
    }
  }

  v11 = 0;
LABEL_23:
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!v11)
  {
    goto LABEL_38;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = [*(a1 + 32) clients];
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v19)
  {
    goto LABEL_37;
  }

  v20 = *v46;
  v21 = *(MEMORY[0x277D03988] + 3);
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v46 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v45 + 1) + 8 * i);
      v24 = [v23 clientBundleID];
      v25 = [v24 isEqualToString:v11];

      if (v25)
      {
        v26 = [v23 rawConnection];
        v27 = v26 == 0;

        if (v27)
        {
          v35 = DALoggingwithCategory();
          v36 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v35, v36))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_24A184000, v35, v36, "Found an existing ESDClient with the same bundle id and with NULL xpc connection, using this ESDClient and reconnecting. The client ID is: 1%@", buf, 0xCu);
          }
        }

        else
        {
          v28 = [v23 rawConnection];
          v29 = v28 == v3;

          if (v29)
          {
            v30 = DALoggingwithCategory();
            if (os_log_type_enabled(v30, v21))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_impl(&dword_24A184000, v30, v21, "Found an existing ESDClient with the same bundle id with same xpc connection. The client ID is: %@", buf, 0xCu);
            }

            continue;
          }

          v37 = DALoggingwithCategory();
          v38 = *(MEMORY[0x277D03988] + 4);
          if (os_log_type_enabled(v37, v38))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_24A184000, v37, v38, "Found an existing ESDClient with the same bundle id and non-NULL xpc connection. Clean it up then reuse this ESDClient and reconnect. The client ID is: %@", buf, 0xCu);
          }

          [v23 persistentClientCleanup];
        }

        [v23 reconnectWithConnection:v3];

        v33 = DALoggingwithCategory();
        v39 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v33, v39))
        {
          *buf = 138412546;
          *&buf[4] = v3;
          *&buf[12] = 2112;
          *&buf[14] = v43;
          _os_log_impl(&dword_24A184000, v33, v39, "ESDAccessManager No New Clients For Event %@ clientName %@", buf, 0x16u);
        }

        goto LABEL_49;
      }
    }

    v19 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_37:

LABEL_38:
  v31 = DALoggingwithCategory();
  v32 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v31, v32))
  {
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v43;
    _os_log_impl(&dword_24A184000, v31, v32, "ESDAccessManager Adding New Client for %@ for clientName %@", buf, 0x16u);
  }

  v33 = [*(v44 + 32) clients];
  v34 = [[ESDClient alloc] initWithConnection:v3 clientID:v11];
  [v33 addObject:v34];

LABEL_49:
  objc_sync_exit(obj);

LABEL_50:
  v40 = *MEMORY[0x277D85DE8];
}

- (ESDAccessManager)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on ESDAccessManager.  Use +sharedManager instead." userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_init
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v3, v4, "ESDAccessManager Initializing", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = ESDAccessManager;
  v5 = [(ESDAccessManager *)&v8 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(ESDAccessManager *)v5 setClients:v6];

    [(ESDAccessManager *)v5 _setupServerConnection];
  }

  return v5;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[ESDAccessManager sharedManager];
  }

  v3 = sharedManager___sManager;

  return v3;
}

uint64_t __33__ESDAccessManager_sharedManager__block_invoke()
{
  sharedManager___sManager = [[ESDAccessManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (void)removeClient:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(ESDAccessManager *)v5 clients];
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_24A184000, v6, v7, "ESDAccessManager REMOVING client %@ from Current Clients %@", &v11, 0x16u);
  }

  if (v4)
  {
    v9 = [(ESDAccessManager *)v5 clients];
    [v9 removeObject:v4];
  }

  objc_sync_exit(v5);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addPersistentClientWithAccountID:(id)a3 clientID:(id)a4 watchedIDs:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [(ESDAccessManager *)v11 clients];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v13)
    {
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v24 + 1) + 8 * i) clientBundleID];
          v17 = [v16 isEqualToString:v9];

          if (v17)
          {
            v21 = DALoggingwithCategory();
            v22 = *(MEMORY[0x277D03988] + 4);
            if (os_log_type_enabled(v21, v22))
            {
              *buf = 138412290;
              v29 = v9;
              _os_log_impl(&dword_24A184000, v21, v22, "Found an existing ESDClient with the same bundle id, not changing the folder list. The client ID is: %@", buf, 0xCu);
            }

            v20 = 0;
            goto LABEL_17;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v18 = DALoggingwithCategory();
  v19 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 138412290;
    v29 = v9;
    _os_log_impl(&dword_24A184000, v18, v19, "Add ESDClient for client %@", buf, 0xCu);
  }

  v20 = [[ESDClient alloc] initWithClientID:v9];
  v12 = [(ESDAccessManager *)v11 clients];
  [v12 addObject:v20];
LABEL_17:

  objc_sync_exit(v11);
  if (v20)
  {
    [(ESDClient *)v20 beginMonitoringPersistentFolders:v10 forAccount:v8];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAccountID:(id)a3 folderID:(id)a4 watchedByClientBesides:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v10;
  v11 = [(ESDAccessManager *)v10 clients];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 clientUniqueID];
        v17 = [v9 clientUniqueID];
        v18 = [v16 isEqualToString:v17];

        if (v18 & 1) == 0 && ([v15 isMonitoringAccountID:v22 folderID:v8])
        {
          LOBYTE(v12) = 1;
          goto LABEL_12;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  objc_sync_exit(obj);
  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

@end