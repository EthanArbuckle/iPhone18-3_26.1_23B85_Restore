@interface DADAccessManager
+ (id)sharedManager;
- (BOOL)isAccountID:(id)a3 folderID:(id)a4 watchedByClientBesides:(id)a5;
- (DADAccessManager)init;
- (id)_init;
- (id)stateString;
- (void)_setupServerConnection;
- (void)addPersistentClientWithAccountID:(id)a3 clientID:(id)a4 watchedIDs:(id)a5;
- (void)dealloc;
- (void)removeClient:(id)a3;
@end

@implementation DADAccessManager

- (void)_setupServerConnection
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *MEMORY[0x277D03988];
  if (os_log_type_enabled(v2, *MEMORY[0x277D03988]))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_impl(&dword_248524000, v2, v3, "Couldn't checkin with our port. Aborting.\nIf running from the command line make sure you don't already have %@ registered with launchd.", &v4, 0xCu);
  }

  abort();
}

void __42__DADAccessManager__setupServerConnection__block_invoke(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x24C1D1BA0]() != MEMORY[0x277D86450])
  {
    goto LABEL_52;
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
      _os_log_impl(&dword_248524000, v6, v7, "DADAccessManager is Disabled. Cancelling Connection", buf, 2u);
    }

    xpc_connection_cancel(v3);
    goto LABEL_52;
  }

  v8 = xpc_connection_copy_entitlement_value();
  v46 = v8;
  v49 = a1;
  if (v8)
  {
    v9 = v8;
    if (MEMORY[0x24C1D1BA0]() == MEMORY[0x277D864C0])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v9)];
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138412546;
        *&buf[4] = v3;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_248524000, v12, v13, "DADAccessManager event %@ clientName %@ is Entitled", buf, 0x16u);
      }

      v48 = 0;
      goto LABEL_25;
    }

    v48 = 0;
  }

  else
  {
    pid = xpc_connection_get_pid(v3);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    memset(buf, 0, sizeof(buf));
    if (proc_name(pid, buf, 0x100u))
    {
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
    }

    else
    {
      v48 = 0;
    }

    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      *v55 = 138412546;
      v56 = v3;
      v57 = 2112;
      v58 = v48;
      _os_log_impl(&dword_248524000, v14, v15, "DADAccessManager event %@ clientName %@ is NOT Entitled", v55, 0x16u);
    }

    v16 = DALoggingwithCategory();
    if (os_log_type_enabled(v16, v15))
    {
      *v55 = 138412546;
      v56 = v3;
      v57 = 2112;
      v58 = v48;
      _os_log_impl(&dword_248524000, v16, v15, "DADAccessManager Received connection event %@ for clientName %@", v55, 0x16u);
    }

    v17 = *(a1 + 32);
    objc_sync_enter(v17);
    v18 = DALoggingwithCategory();
    if (os_log_type_enabled(v18, v15))
    {
      v19 = [*(a1 + 32) clients];
      v20 = [v19 count];
      v21 = [*(a1 + 32) clients];
      *v55 = 134218242;
      v56 = v20;
      v57 = 2112;
      v58 = v21;
      _os_log_impl(&dword_248524000, v18, v15, "DADAccessManager number of Current Clients %lu and they are %@", v55, 0x16u);
    }

    objc_sync_exit(v17);
    v22 = DALoggingwithCategory();
    if (os_log_type_enabled(v22, v15))
    {
      *v55 = 138412290;
      v56 = v48;
      _os_log_impl(&dword_248524000, v22, v15, "Could not get client ID through xpc_connection_copy_entitlement_value(), the client name is: %@", v55, 0xCu);
    }
  }

  v11 = 0;
LABEL_25:
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!v11)
  {
    goto LABEL_40;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v23 = [*(a1 + 32) clients];
  v24 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v24)
  {
    goto LABEL_39;
  }

  v25 = *v51;
  v26 = *(MEMORY[0x277D03988] + 3);
  while (2)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v51 != v25)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v50 + 1) + 8 * i);
      v29 = [v28 clientBundleID];
      v30 = [v29 isEqualToString:v11];

      if (v30)
      {
        v31 = [v28 rawConnection];
        v32 = v31 == 0;

        if (v32)
        {
          v40 = DALoggingwithCategory();
          v41 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v40, v41))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_248524000, v40, v41, "Found an existing DADClient with the same bundle id and with NULL xpc connection, using this DADClient and reconnecting. The client ID is: 1%@", buf, 0xCu);
          }
        }

        else
        {
          v33 = [v28 rawConnection];
          v34 = v33 == v3;

          if (v34)
          {
            v35 = DALoggingwithCategory();
            if (os_log_type_enabled(v35, v26))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_impl(&dword_248524000, v35, v26, "Found an existing DADClient with the same bundle id with same xpc connection. The client ID is: %@", buf, 0xCu);
            }

            continue;
          }

          v42 = DALoggingwithCategory();
          v43 = *(MEMORY[0x277D03988] + 4);
          if (os_log_type_enabled(v42, v43))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_248524000, v42, v43, "Found an existing DADClient with the same bundle id and non-NULL xpc connection. Clean it up then reuse this DADClient and reconnect. The client ID is: %@", buf, 0xCu);
          }

          [v28 persistentClientCleanup];
        }

        [v28 reconnectWithConnection:v3];

        v38 = DALoggingwithCategory();
        v44 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v38, v44))
        {
          *buf = 138412546;
          *&buf[4] = v3;
          *&buf[12] = 2112;
          *&buf[14] = v48;
          _os_log_impl(&dword_248524000, v38, v44, "DADAccessManager No New Clients For Event %@ clientName %@", buf, 0x16u);
        }

        goto LABEL_51;
      }
    }

    v24 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_39:

LABEL_40:
  v36 = DALoggingwithCategory();
  v37 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v36, v37))
  {
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v48;
    _os_log_impl(&dword_248524000, v36, v37, "DADAccessManager Adding New Client for %@ for clientName %@", buf, 0x16u);
  }

  v38 = [*(v49 + 32) clients];
  v39 = [[DADClient alloc] initWithConnection:v3 clientID:v11];
  [v38 addObject:v39];

LABEL_51:
  objc_sync_exit(obj);

LABEL_52:
  v45 = *MEMORY[0x277D85DE8];
}

- (DADAccessManager)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on DADAccessManager.  Use +sharedManager instead." userInfo:0];
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
    _os_log_impl(&dword_248524000, v3, v4, "DADAccessManager Initializing", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = DADAccessManager;
  v5 = [(DADAccessManager *)&v8 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(DADAccessManager *)v5 setClients:v6];

    [(DADAccessManager *)v5 _setupServerConnection];
  }

  return v5;
}

+ (id)sharedManager
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!gManager)
  {
    v3 = [[v2 alloc] _init];
    v4 = gManager;
    gManager = v3;
  }

  objc_sync_exit(v2);

  v5 = gManager;

  return v5;
}

- (void)dealloc
{
  v3 = gManager;
  gManager = 0;

  v4.receiver = self;
  v4.super_class = DADAccessManager;
  [(DADAccessManager *)&v4 dealloc];
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
    v8 = [(DADAccessManager *)v5 clients];
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_248524000, v6, v7, "DADAccessManager REMOVING client %@ from Current Clients %@", &v11, 0x16u);
  }

  if (v4)
  {
    v9 = [(DADAccessManager *)v5 clients];
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
    v12 = [(DADAccessManager *)v11 clients];
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
              _os_log_impl(&dword_248524000, v21, v22, "Found an existing DADClient with the same bundle id, not changing the folder list. The client ID is: %@", buf, 0xCu);
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
    _os_log_impl(&dword_248524000, v18, v19, "Add DADClient for client %@", buf, 0xCu);
  }

  v20 = [[DADClient alloc] initWithClientID:v9];
  v12 = [(DADAccessManager *)v11 clients];
  [v12 addObject:v20];
LABEL_17:

  objc_sync_exit(v11);
  if (v20)
  {
    [(DADClient *)v20 beginMonitoringPersistentFolders:v10 forAccount:v8];
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
  v11 = [(DADAccessManager *)v10 clients];
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

- (id)stateString
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(DADAccessManager *)v4 clients];
  v6 = [v5 copy];

  objc_sync_exit(v4);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 outstandingStopMonitoringAgentRequests];
        if (v12)
        {
          v13 = [v11 clientName];
          [v3 appendFormat:@"Client %@ (%i) has %lu outstanding stop requests\n", v13, objc_msgSend(v11, "clientPID"), v12];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end