@interface ESDClient
+ (id)clientsToInterrogate;
- (BOOL)isMonitoringAccountID:(id)d folderID:(id)iD;
- (ESDClient)initWithClientID:(id)d;
- (ESDClient)initWithConnection:(id)connection clientID:(id)d;
- (id)_clientName;
- (id)_createReplyToRequest:(id)request withProperties:(id)properties;
- (id)timersForAccountWithID:(id)d;
- (unint64_t)watchedFolderCount;
- (void)_agentsStopped:(id)stopped;
- (void)_asPolicyKeyChanged:(id)changed;
- (void)_asyncProcessMeetingRequests:(id)requests;
- (void)_beginDownloadingAttachmentEvent:(id)event eventDict:(id)dict;
- (void)_beginMonitoringFolders:(id)folders;
- (void)_cancelCalendarAvailabilityRequest:(id)request eventDict:(id)dict;
- (void)_cancelCalendarDirectorySearch:(id)search eventDict:(id)dict;
- (void)_cancelDownloadingAttachmentEvent:(id)event eventDict:(id)dict;
- (void)_cancelServerContactsSearch:(id)search;
- (void)_checkIsOofSettingsSupported:(id)supported;
- (void)_clearAllStopMonitoringAgentsTokens;
- (void)_clientDiedWithReason:(id)reason;
- (void)_dispatchMessage:(id)message;
- (void)_fillOutEASTimeZoneInfo:(id)info;
- (void)_foldersUpdated:(id)updated;
- (void)_getAccountExternalIdentification:(id)identification eventDict:(id)dict;
- (void)_getActiveSyncDeviceIdentifier:(id)identifier;
- (void)_getCurrentPolicyKey:(id)key;
- (void)_getStatusReports:(id)reports;
- (void)_handleURL:(id)l;
- (void)_openServerContactsSearch:(id)search;
- (void)_openServerOofSettingsRequest:(id)request;
- (void)_performCalendarDirectorySearch:(id)search eventDict:(id)dict;
- (void)_processFolderChange:(id)change;
- (void)_processMeetingRequests:(id)requests;
- (void)_removeBusyFolderIDs:(id)ds forAccountWithID:(id)d;
- (void)_removeWatchedFolderIDs:(id)ds forAccountWithID:(id)d;
- (void)_reportFolderItemsSyncResult:(id)result;
- (void)_reportSharedCalendarAsJunkEvent:(id)event eventDict:(id)dict;
- (void)_requestAllFolderContentsUpdate:(id)update;
- (void)_requestAllFolderContentsUpdateForAccountId:(id)id dataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)_requestCalendarAvailability:(id)availability eventDict:(id)dict;
- (void)_requestClientStatusDump:(id)dump;
- (void)_requestFolderContentsUpdate:(id)update;
- (void)_requestFolderContentsUpdateForFolders:(id)folders accountId:(id)id dataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)_requestFolderListUpdate:(id)update;
- (void)_requestFolderListUpdateForAccountId:(id)id dataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (void)_requestPolicyUpdate:(id)update;
- (void)_resetCertWarnings:(id)warnings;
- (void)_resetThrottleTimers:(id)timers;
- (void)_respondToSharedCalendarEvent:(id)event eventDict:(id)dict;
- (void)_resumeMonitoringFolders:(id)folders;
- (void)_setFolderIdsThatExternalClientsCareAbout:(id)about;
- (void)_startMonitoringAgents:(id)agents;
- (void)_startMonitoringAgentsWithClientToken:(unint64_t)token;
- (void)_startMonitoringAgentsWithServerToken:(unint64_t)token;
- (void)_stopMonitoringAgents:(id)agents;
- (void)_stopMonitoringAgentsWithClientToken:(unint64_t)token;
- (void)_stopMonitoringFolders:(id)folders;
- (void)_suspendMonitoringFolders:(id)folders;
- (void)applyClientStatusReportToAggregator:(id)aggregator;
- (void)beginMonitoringPersistentFolders:(id)folders forAccount:(id)account;
- (void)dealloc;
- (void)delegateWithIDIsGoingAway:(id)away;
- (void)disable;
- (void)noteBlockedClientCallChange:(int)change;
- (void)noteRefreshClientCallChange:(int)change;
- (void)persistentClientCleanup;
- (void)reconnectWithConnection:(id)connection;
- (void)registerForInterrogation;
- (void)unregisterForInterrogation;
@end

@implementation ESDClient

- (ESDClient)initWithConnection:(id)connection clientID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dCopy = d;
  v36.receiver = self;
  v36.super_class = ESDClient;
  v8 = [(ESDClient *)&v36 init];
  if (v8)
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 134218242;
      v38 = connectionCopy;
      v39 = 2112;
      v40 = dCopy;
      _os_log_impl(&dword_24A184000, v9, v10, "Creating a new ESDClient for Connection %p and ClientID %@", buf, 0x16u);
    }

    [(ESDClient *)v8 setConn:connectionCopy];
    conn = [(ESDClient *)v8 conn];
    v12 = dispatch_get_global_queue(2, 0);
    xpc_connection_set_target_queue(conn, v12);

    conn2 = [(ESDClient *)v8 conn];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __41__ESDClient_initWithConnection_clientID___block_invoke;
    v33 = &unk_278FCDD10;
    v34 = connectionCopy;
    v14 = v8;
    v35 = v14;
    xpc_connection_set_event_handler(conn2, &v30);

    objc_storeStrong(&v14->_clientBundleID, d);
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    clientUniqueID = v14->_clientUniqueID;
    v14->_clientUniqueID = da_newGUID;

    v17 = objc_opt_new();
    [(ESDClient *)v14 setWatchedIDs:v17];

    v18 = objc_opt_new();
    [(ESDClient *)v14 setBusyIDs:v18];

    v19 = objc_opt_new();
    [(ESDClient *)v14 setUpdatedIDs:v19];

    v20 = objc_opt_new();
    [(ESDClient *)v14 setAccountTimers:v20];

    v21 = objc_opt_new();
    [(ESDClient *)v14 setActionDelegatesById:v21];

    v22 = objc_opt_new();
    [(ESDClient *)v14 setAgentMonitoringTokens:v22];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__foldersUpdated_ name:*MEMORY[0x277D036E8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v14 selector:sel__asPolicyKeyChanged_ name:*MEMORY[0x277D038B8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v14 selector:sel__requestClientStatusDump_ name:@"ESDRequestClientStatusDumpNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v14 selector:sel__agentsStopped_ name:@"ESDAgentsStoppedNotification" object:0];

    conn3 = [(ESDClient *)v14 conn];
    xpc_connection_resume(conn3);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

void __41__ESDClient_initWithConnection_clientID___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x24C2127F0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_24A184000, v9, v10, "ClientDied Not Dispatching XPC Event %@ for DADClient %@", &v14, 0x16u);
    }

    [*(a1 + 40) _clientDiedWithReason:v3];
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_24A184000, v5, v6, "Dispatching XPC Event %@ for ESDClient %@", &v14, 0x16u);
    }

    [*(a1 + 40) _dispatchMessage:v3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (ESDClient)initWithClientID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v21.receiver = self;
  v21.super_class = ESDClient;
  v6 = [(ESDClient *)&v21 init];
  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 134218242;
      v23 = 0;
      v24 = 2112;
      v25 = dCopy;
      _os_log_impl(&dword_24A184000, v7, v8, "Creating a new ESDClient for Connection %p and ClientID %@", buf, 0x16u);
    }

    [(ESDClient *)v6 setConn:0];
    objc_storeStrong(&v6->_clientBundleID, d);
    v9 = objc_opt_new();
    [(ESDClient *)v6 setWatchedIDs:v9];

    v10 = objc_opt_new();
    [(ESDClient *)v6 setBusyIDs:v10];

    v11 = objc_opt_new();
    [(ESDClient *)v6 setUpdatedIDs:v11];

    v12 = objc_opt_new();
    [(ESDClient *)v6 setAccountTimers:v12];

    v13 = objc_opt_new();
    [(ESDClient *)v6 setActionDelegatesById:v13];

    v14 = objc_opt_new();
    [(ESDClient *)v6 setAgentMonitoringTokens:v14];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__foldersUpdated_ name:*MEMORY[0x277D036E8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__asPolicyKeyChanged_ name:*MEMORY[0x277D038B8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__requestClientStatusDump_ name:@"ESDRequestClientStatusDumpNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__agentsStopped_ name:@"ESDAgentsStoppedNotification" object:0];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)reconnectWithConnection:(id)connection
{
  connectionCopy = connection;
  conn = [(ESDClient *)self conn];

  if (conn)
  {
    [ESDClient reconnectWithConnection:];
  }

  [(ESDClient *)self setConn:connectionCopy];
  conn2 = [(ESDClient *)self conn];
  v7 = dispatch_get_global_queue(2, 0);
  xpc_connection_set_target_queue(conn2, v7);

  conn3 = [(ESDClient *)self conn];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__ESDClient_reconnectWithConnection___block_invoke;
  handler[3] = &unk_278FCDD38;
  handler[4] = self;
  xpc_connection_set_event_handler(conn3, handler);

  conn4 = [(ESDClient *)self conn];
  xpc_connection_resume(conn4);
}

void __37__ESDClient_reconnectWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = MEMORY[0x24C2127F0]();
  if (v3 == MEMORY[0x277D86480])
  {
    [*(a1 + 32) _clientDiedWithReason:v4];
  }

  else if (v3 == MEMORY[0x277D86468])
  {
    [*(a1 + 32) _dispatchMessage:v4];
  }
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    conn = [(ESDClient *)self conn];
    clientBundleID = [(ESDClient *)self clientBundleID];
    *buf = 134218498;
    selfCopy = self;
    v14 = 2048;
    v15 = conn;
    v16 = 2112;
    v17 = clientBundleID;
    _os_log_impl(&dword_24A184000, v3, v4, "Destroying ESDClient %p for Connection %p and ClientID %@", buf, 0x20u);
  }

  mEMORY[0x277D037B8] = [MEMORY[0x277D037B8] sharedManager];
  [mEMORY[0x277D037B8] requestPriority:0 forClient:self dataclasses:0];

  conn = self->_conn;
  if (conn)
  {
    xpc_connection_cancel(conn);
    v9 = self->_conn;
    self->_conn = 0;
  }

  [(ESDClient *)self disable];
  v11.receiver = self;
  v11.super_class = ESDClient;
  [(ESDClient *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_clientName
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_clientName)
  {
    conn = [(ESDClient *)self conn];

    if (conn)
    {
      conn2 = [(ESDClient *)self conn];
      pid = xpc_connection_get_pid(conn2);

      memset(v11, 0, sizeof(v11));
      if (proc_name(pid, v11, 0x100u))
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
      }

      else
      {
        v6 = @"(unknown)";
      }

      clientName = self->_clientName;
      self->_clientName = &v6->isa;
    }
  }

  v8 = self->_clientName;
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_removeBusyFolderIDs:(id)ds forAccountWithID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  busyIDs = [(ESDClient *)self busyIDs];
  v9 = [busyIDs objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = dsCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 removeObject:{*(*(&v17 + 1) + 8 * v14++), v17}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    if (![v9 count])
    {
      busyIDs2 = [(ESDClient *)self busyIDs];
      [busyIDs2 removeObjectForKey:dCopy];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeWatchedFolderIDs:(id)ds forAccountWithID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  watchedIDs = [(ESDClient *)self watchedIDs];
  v9 = [watchedIDs objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = dsCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 removeObject:{*(*(&v17 + 1) + 8 * v14++), v17}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    if (![v9 count])
    {
      watchedIDs2 = [(ESDClient *)self watchedIDs];
      [watchedIDs2 removeObjectForKey:dCopy];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)disable
{
  v36 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v33.receiver = self;
    v33.super_class = ESDClient;
    [(DADisableableObject *)&v33 disable];
    actionDelegatesById = [(ESDClient *)self actionDelegatesById];
    if (actionDelegatesById)
    {
      v4 = actionDelegatesById;
      actionDelegatesById2 = [(ESDClient *)self actionDelegatesById];
      v6 = [actionDelegatesById2 count];

      if (v6)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        actionDelegatesById3 = [(ESDClient *)self actionDelegatesById];
        allValues = [actionDelegatesById3 allValues];

        v9 = [allValues countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
          do
          {
            v12 = 0;
            do
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v29 + 1) + 8 * v12++) disable];
            }

            while (v10 != v12);
            v10 = [allValues countByEnumeratingWithState:&v29 objects:v35 count:16];
          }

          while (v10);
        }
      }
    }

    conn = [(ESDClient *)self conn];

    if (conn)
    {
      conn2 = [(ESDClient *)self conn];
      xpc_connection_cancel(conn2);

      [(ESDClient *)self setConn:0];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    accountTimers = [(ESDClient *)self accountTimers];
    allValues2 = [accountTimers allValues];

    v18 = [allValues2 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v25 + 1) + 8 * v21++) killAllTimers];
        }

        while (v19 != v21);
        v19 = [allValues2 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v19);
    }

    [(ESDClient *)self unregisterForInterrogation];
    v22 = +[ESDMain sharedMain];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __20__ESDClient_disable__block_invoke;
    v24[3] = &unk_278FCDC98;
    v24[4] = self;
    [v22 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v24];

    [(ESDClient *)self noteBlockedClientCallChange:2];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __20__ESDClient_disable__block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) busyIDs];
  v2 = [v1 copy];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v39 = v2;
  obj = [v2 allKeys];
  v44 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v44)
  {
    v42 = *v59;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v59 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v58 + 1) + 8 * i);
        v5 = [v39 objectForKeyedSubscript:v4];
        if ([v5 count])
        {
          v6 = [MEMORY[0x277CBEB18] array];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v7 = v5;
          v8 = [v7 countByEnumeratingWithState:&v54 objects:v68 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v55;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v55 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v54 + 1) + 8 * j);
                if ([v7 countForObject:v12])
                {
                  v13 = 1;
                  do
                  {
                    [v6 addObject:v12];
                  }

                  while ([v7 countForObject:v12] > v13++);
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v54 objects:v68 count:16];
            }

            while (v9);
          }

          v15 = +[ESDAgentManager sharedManager];
          [v15 resumeMonitoringAccountID:v4 folderIDs:v6];

          [*(a1 + 32) _removeBusyFolderIDs:v6 forAccountWithID:v4];
        }
      }

      v44 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    }

    while (v44);
  }

  v16 = [*(a1 + 32) watchedIDs];
  v17 = [v16 copy];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v38 = v17;
  v36 = [v17 allKeys];
  obja = [v36 countByEnumeratingWithState:&v50 objects:v67 count:16];
  if (obja)
  {
    v37 = *v51;
    v18 = *(MEMORY[0x277D03988] + 6);
    do
    {
      v19 = 0;
      do
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v36);
        }

        v43 = v19;
        v20 = *(*(&v50 + 1) + 8 * v19);
        v21 = [v38 objectForKeyedSubscript:v20];
        v22 = [v21 allObjects];

        v23 = objc_opt_new();
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v46 objects:v66 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v47;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v47 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v46 + 1) + 8 * k);
              v30 = +[ESDAccessManager sharedManager];
              v31 = [v30 isAccountID:v20 folderID:v29 watchedByClientBesides:*(a1 + 32)];

              if (v31)
              {
                v32 = DALoggingwithCategory();
                if (os_log_type_enabled(v32, v18))
                {
                  *buf = 138412546;
                  v63 = v20;
                  v64 = 2112;
                  v65 = v29;
                  _os_log_impl(&dword_24A184000, v32, v18, "Not stop monitoring account %@ folder %@ because other clients are watching it", buf, 0x16u);
                }
              }

              else
              {
                [v23 addObject:v29];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v46 objects:v66 count:16];
          }

          while (v26);
        }

        if ([v23 count])
        {
          v33 = +[ESDAgentManager sharedManager];
          [v33 stopMonitoringAccountID:v20 folderIDs:v23];
        }

        if ([v24 count])
        {
          [*(a1 + 32) _removeWatchedFolderIDs:v24 forAccountWithID:v20];
        }

        v19 = v43 + 1;
      }

      while ((v43 + 1) != obja);
      obja = [v36 countByEnumeratingWithState:&v50 objects:v67 count:16];
    }

    while (obja);
  }

  [*(a1 + 32) _clearAllStopMonitoringAgentsTokens];
  v34 = +[ESDAccessManager sharedManager];
  [v34 removeClient:*(a1 + 32)];

  v35 = *MEMORY[0x277D85DE8];
}

- (unint64_t)watchedFolderCount
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  watchedIDs = [(ESDClient *)self watchedIDs];
  allKeys = [watchedIDs allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        watchedIDs2 = [(ESDClient *)self watchedIDs];
        v12 = [watchedIDs2 objectForKeyedSubscript:v10];
        allObjects = [v12 allObjects];

        v7 += [allObjects count];
      }

      v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)persistentClientCleanup
{
  v37 = *MEMORY[0x277D85DE8];
  conn = [(ESDClient *)self conn];

  if (conn)
  {
    conn2 = [(ESDClient *)self conn];
    xpc_connection_cancel(conn2);

    [(ESDClient *)self setConn:0];
  }

  if ([(DADisableableObject *)self isDisabled])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v5, v6, "PersistentClientCleanup called on disabled client. Will not perform any actions.", buf, 2u);
    }
  }

  else
  {
    actionDelegatesById = [(ESDClient *)self actionDelegatesById];
    if (actionDelegatesById)
    {
      v8 = actionDelegatesById;
      actionDelegatesById2 = [(ESDClient *)self actionDelegatesById];
      v10 = [actionDelegatesById2 count];

      if (v10)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        actionDelegatesById3 = [(ESDClient *)self actionDelegatesById];
        allValues = [actionDelegatesById3 allValues];

        v13 = [allValues countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v31;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v30 + 1) + 8 * i) disable];
            }

            v14 = [allValues countByEnumeratingWithState:&v30 objects:v36 count:16];
          }

          while (v14);
        }
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    accountTimers = [(ESDClient *)self accountTimers];
    allValues2 = [accountTimers allValues];

    v19 = [allValues2 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v26 + 1) + 8 * j) killAllTimers];
        }

        v20 = [allValues2 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v20);
    }

    [(ESDClient *)self unregisterForInterrogation];
    v23 = +[ESDMain sharedMain];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __36__ESDClient_persistentClientCleanup__block_invoke;
    v25[3] = &unk_278FCDC98;
    v25[4] = self;
    [v23 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v25];

    [(ESDClient *)self noteBlockedClientCallChange:2];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __36__ESDClient_persistentClientCleanup__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) busyIDs];
  v2 = [v1 copy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v2;
  obj = [v2 allKeys];
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v26 + 1) + 8 * i);
        v5 = [v20 objectForKeyedSubscript:v4];
        if ([v5 count])
        {
          v6 = [MEMORY[0x277CBEB18] array];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v7 = v5;
          v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v23;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v23 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v22 + 1) + 8 * j);
                if ([v7 countForObject:v12])
                {
                  v13 = 1;
                  do
                  {
                    [v6 addObject:v12];
                  }

                  while ([v7 countForObject:v12] > v13++);
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v9);
          }

          v15 = +[ESDAgentManager sharedManager];
          [v15 resumeMonitoringAccountID:v4 folderIDs:v6];

          [*(a1 + 32) _removeBusyFolderIDs:v6 forAccountWithID:v4];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  [*(a1 + 32) _clearAllStopMonitoringAgentsTokens];
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMonitoringAccountID:(id)d folderID:(id)iD
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  watchedIDs = [(ESDClient *)self watchedIDs];
  v9 = [watchedIDs objectForKeyedSubscript:dCopy];
  allObjects = [v9 allObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = allObjects;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if ([iDCopy isEqualToString:{*(*(&v17 + 1) + 8 * i), v17}])
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)noteBlockedClientCallChange:(int)change
{
  switch(change)
  {
    case 0:
      if ([(DADisableableObject *)self isDisabled])
      {
        break;
      }

      v5 = [(ESDClient *)self numOutstandingBlockingClientCalls]+ 1;
      selfCopy2 = self;
      goto LABEL_9;
    case 1:
      [(ESDClient *)self setNumOutstandingBlockingClientCalls:[(ESDClient *)self numOutstandingBlockingClientCalls]- 1];
      if ([(ESDClient *)self numOutstandingBlockingClientCalls]> 0)
      {
        break;
      }

      selfCopy2 = self;
      v5 = 0;
LABEL_9:
      [(ESDClient *)selfCopy2 setNumOutstandingBlockingClientCalls:v5];
      break;
    case 2:
      [(ESDClient *)self setNumOutstandingBlockingClientCalls:0];
      [(ESDClient *)self setNumOutstandingRefreshPriorityClientCalls:0];
      break;
  }

  if ([(ESDClient *)self numOutstandingBlockingClientCalls]== 1)
  {
    mEMORY[0x277D037B8] = [MEMORY[0x277D037B8] sharedManager];
    [mEMORY[0x277D037B8] requestPriority:2 forClient:self dataclasses:127];

    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v7, v8, "DAPERF DADClient Bumped priority, someone's waiting", buf, 2u);
    }
  }

  else
  {
    if ([(ESDClient *)self numOutstandingBlockingClientCalls])
    {
      return;
    }

    numOutstandingRefreshPriorityClientCalls = [(ESDClient *)self numOutstandingRefreshPriorityClientCalls];
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 6);
    v12 = os_log_type_enabled(v10, v11);
    if (numOutstandingRefreshPriorityClientCalls < 1)
    {
      if (v12)
      {
        *v15 = 0;
        _os_log_impl(&dword_24A184000, v10, v11, "DAPERF DADClient Dropping priority, no one's waiting", v15, 2u);
      }

      mEMORY[0x277D037B8]2 = [MEMORY[0x277D037B8] sharedManager];
      v7 = mEMORY[0x277D037B8]2;
      v14 = 0;
    }

    else
    {
      if (v12)
      {
        *v16 = 0;
        _os_log_impl(&dword_24A184000, v10, v11, "DAPERF DADClient Dropping priority back to refresh", v16, 2u);
      }

      mEMORY[0x277D037B8]2 = [MEMORY[0x277D037B8] sharedManager];
      v7 = mEMORY[0x277D037B8]2;
      v14 = 1;
    }

    [mEMORY[0x277D037B8]2 requestPriority:v14 forClient:self dataclasses:127];
  }
}

- (void)noteRefreshClientCallChange:(int)change
{
  if (change == 1)
  {
    [(ESDClient *)self setNumOutstandingRefreshPriorityClientCalls:[(ESDClient *)self numOutstandingRefreshPriorityClientCalls]- 1];
    if ([(ESDClient *)self numOutstandingRefreshPriorityClientCalls]> 0)
    {
      goto LABEL_8;
    }

    v4 = 0;
    goto LABEL_7;
  }

  if (!change && ![(DADisableableObject *)self isDisabled])
  {
    v4 = [(ESDClient *)self numOutstandingRefreshPriorityClientCalls]+ 1;
LABEL_7:
    [(ESDClient *)self setNumOutstandingRefreshPriorityClientCalls:v4];
  }

LABEL_8:
  if ([(ESDClient *)self numOutstandingBlockingClientCalls])
  {
    return;
  }

  if ([(ESDClient *)self numOutstandingRefreshPriorityClientCalls]== 1)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v5, v6, "DAPERF ESDClient Bumping priority to refresh", buf, 2u);
    }

    v7 = 1;
  }

  else
  {
    if ([(ESDClient *)self numOutstandingRefreshPriorityClientCalls])
    {
      return;
    }

    v5 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v8))
    {
      *v10 = 0;
      _os_log_impl(&dword_24A184000, v5, v8, "DAPERF ESDClient Dropping priority, no one's waiting", v10, 2u);
    }

    v7 = 0;
  }

  mEMORY[0x277D037B8] = [MEMORY[0x277D037B8] sharedManager];
  [mEMORY[0x277D037B8] requestPriority:v7 forClient:self dataclasses:127];
}

+ (id)clientsToInterrogate
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  allObjects = [clientsToInterrogate allObjects];
  objc_sync_exit(v2);

  return allObjects;
}

- (void)registerForInterrogation
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v3 = clientsToInterrogate;
  if (!clientsToInterrogate)
  {
    v4 = objc_opt_new();
    v5 = clientsToInterrogate;
    clientsToInterrogate = v4;

    v3 = clientsToInterrogate;
  }

  [v3 addObject:self];
  objc_sync_exit(obj);
}

- (void)unregisterForInterrogation
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  [clientsToInterrogate removeObject:self];
  objc_sync_exit(obj);
}

- (id)_createReplyToRequest:(id)request withProperties:(id)properties
{
  propertiesCopy = properties;
  reply = xpc_dictionary_create_reply(request);
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __50__ESDClient__createReplyToRequest_withProperties___block_invoke;
  applier[3] = &unk_278FCDD60;
  v8 = reply;
  v11 = v8;
  xpc_dictionary_apply(v7, applier);

  return v8;
}

- (void)_beginMonitoringFolders:(id)folders
{
  v55 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v37 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03D08]];
  LODWORD(v7) = [v37 BOOLValue];
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v10))
  {
    v11 = @"NO";
    if (v7)
    {
      v11 = @"YES";
    }

    *buf = 138412290;
    v52 = v11;
    _os_log_impl(&dword_24A184000, v8, v10, "Received begin monitoring folders request with persistent flag: %@", buf, 0xCu);
  }

  v12 = objc_opt_new();
  v13 = DALoggingwithCategory();
  v14 = *(v9 + 6);
  if (os_log_type_enabled(v13, v14))
  {
    [v12 transactionId];
    v15 = v7;
    v7 = v12;
    v16 = v6;
    v17 = foldersCopy;
    v19 = v18 = v5;
    *buf = 138412290;
    v52 = v19;
    _os_log_impl(&dword_24A184000, v13, v14, "DATransaction starting, ID: %@", buf, 0xCu);

    v5 = v18;
    foldersCopy = v17;
    v6 = v16;
    v12 = v7;
    LOBYTE(v7) = v15;
  }

  if (!v6)
  {
    v27 = DALoggingwithCategory();
    v28 = *(v9 + 3);
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 136315394;
      v52 = "[ESDClient _beginMonitoringFolders:]";
      v53 = 2112;
      v54 = v4;
      v29 = "Malformed request from client in %s: %@";
      v30 = v27;
      v31 = v28;
      v32 = 22;
LABEL_14:
      _os_log_impl(&dword_24A184000, v30, v31, v29, buf, v32);
    }

LABEL_15:

    [(ESDClient *)self noteBlockedClientCallChange:1];
    goto LABEL_16;
  }

  if (!v5)
  {
    v27 = DALoggingwithCategory();
    v33 = *(v9 + 3);
    if (os_log_type_enabled(v27, v33))
    {
      *buf = 136315138;
      v52 = "[ESDClient _beginMonitoringFolders:]";
      v29 = "Malformed request from client in %s: bad accountID";
      v30 = v27;
      v31 = v33;
      v32 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __37__ESDClient__beginMonitoringFolders___block_invoke;
  v45[3] = &unk_278FCDD88;
  v45[4] = self;
  v20 = v5;
  v46 = v20;
  v35 = v5;
  v21 = v6;
  v47 = v21;
  v50 = v7;
  v22 = v12;
  v48 = v22;
  v49 = foldersCopy;
  v23 = MEMORY[0x24C212500](v45);
  v24 = +[ESDMain sharedMain];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __37__ESDClient__beginMonitoringFolders___block_invoke_45;
  v43[3] = &unk_278FCDDB0;
  v43[4] = self;
  v44 = v23;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __37__ESDClient__beginMonitoringFolders___block_invoke_2;
  v38[3] = &unk_278FCDDD8;
  v39 = v20;
  v25 = v21;
  v5 = v35;
  v40 = v25;
  v42 = v44;
  v41 = v22;
  v26 = v44;
  [v24 addToOperationsQueueDisabledCheckAndGoBlock:v43 wrappedBlock:v38];

LABEL_16:
  v34 = *MEMORY[0x277D85DE8];
}

void __37__ESDClient__beginMonitoringFolders___block_invoke(uint64_t a1, int a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = [*(a1 + 32) watchedIDs];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

    if (!v5)
    {
      v5 = [MEMORY[0x277CBEB58] set];
      v6 = [*(a1 + 32) watchedIDs];
      [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];
    }

    if ([*(a1 + 48) count])
    {
      [v5 addObjectsFromArray:*(a1 + 48)];
    }
  }

  if (*(a1 + 72) == 1)
  {
    v7 = [*(a1 + 32) clientBundleID];

    if (v7)
    {
      if ([*(a1 + 32) watchedFolderCount])
      {
        *(*(a1 + 32) + 16) = 1;
      }

      else
      {
        v8 = DALoggingwithCategory();
        v9 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v8, v9))
        {
          v10 = [*(a1 + 56) transactionId];
          *buf = 138412290;
          v46 = v10;
          _os_log_impl(&dword_24A184000, v8, v9, "No folders watched. Marking not persistent. Transaction: %@", buf, 0xCu);
        }
      }

      if (*(*(a1 + 32) + 16) == 1)
      {
        v11 = +[ESDAgentManager sharedManager];
        v13 = *(a1 + 40);
        v12 = *(a1 + 48);
        v14 = [*(a1 + 32) clientBundleID];
        [v11 addPersistMonitoringAccountID:v13 folderIDs:v12 clientID:v14];
      }
    }
  }

  v43 = *MEMORY[0x277D03E38];
  if (a2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 10;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  v44 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

  v18 = [*(a1 + 32) _createReplyToRequest:*(a1 + 64) withProperties:v17];
  v19 = xpc_dictionary_get_remote_connection(*(a1 + 64));
  v20 = [*(a1 + 32) conn];

  if (v20)
  {
    v21 = [*(a1 + 32) conn];

    if (v21 != v19)
    {
      v22 = DALoggingwithCategory();
      v23 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 0;
        _os_log_impl(&dword_24A184000, v22, v23, "Remote client disconnected and reconnected while begin monitoring folders.", buf, 2u);
      }

LABEL_33:

      goto LABEL_34;
    }

    v24 = [*(a1 + 32) conn];
    xpc_connection_send_message(v24, v18);

    if (*(*(a1 + 32) + 16) == 1)
    {
      v22 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 48)];
      v25 = [*(a1 + 32) updatedIDs];
      v26 = [v25 objectForKeyedSubscript:*(a1 + 40)];

      if (v26)
      {
        [v22 intersectSet:v26];
        if ([v22 count])
        {
          v27 = DALoggingwithCategory();
          v28 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v27, v28))
          {
            *buf = 138412290;
            v46 = v22;
            _os_log_impl(&dword_24A184000, v27, v28, "Sending pending folder updates to client. Updated folders: %@", buf, 0xCu);
          }

          v29 = [v22 allObjects];
          v30 = *MEMORY[0x277D03BC0];
          v31 = *MEMORY[0x277D039D0];
          v41[0] = *MEMORY[0x277D03C88];
          v41[1] = v31;
          v32 = *(a1 + 40);
          v42[0] = v30;
          v42[1] = v32;
          v41[2] = *MEMORY[0x277D03BA8];
          v40 = v29;
          v42[2] = v29;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
          v34 = _CFXPCCreateXPCObjectFromCFObject();
          v35 = [*(a1 + 32) conn];
          xpc_connection_send_message(v35, v34);

          [v26 minusSet:v22];
          v36 = [v26 count];
          v37 = [*(a1 + 32) updatedIDs];
          v38 = v37;
          if (v36)
          {
            [v37 setObject:v26 forKey:*(a1 + 40)];
          }

          else
          {
            [v37 removeObjectForKey:*(a1 + 40)];
          }
        }
      }

      goto LABEL_33;
    }
  }

LABEL_34:
  [*(a1 + 32) noteBlockedClientCallChange:1];

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __37__ESDClient__beginMonitoringFolders___block_invoke_45(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

uint64_t __37__ESDClient__beginMonitoringFolders___block_invoke_2(void *a1)
{
  v2 = +[ESDAgentManager sharedManager];
  [v2 startMonitoringAccountID:a1[4] folderIDs:a1[5]];

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)beginMonitoringPersistentFolders:(id)folders forAccount:(id)account
{
  v35 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  accountCopy = account;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    transactionId = [v8 transactionId];
    *buf = 138412290;
    v34 = transactionId;
    _os_log_impl(&dword_24A184000, v9, v10, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__ESDClient_beginMonitoringPersistentFolders_forAccount___block_invoke;
  v29[3] = &unk_278FCDE00;
  v29[4] = self;
  v12 = accountCopy;
  v30 = v12;
  v13 = foldersCopy;
  v31 = v13;
  v14 = v8;
  v32 = v14;
  v15 = MEMORY[0x24C212500](v29);
  v16 = +[ESDMain sharedMain];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__ESDClient_beginMonitoringPersistentFolders_forAccount___block_invoke_47;
  v27[3] = &unk_278FCDDB0;
  v27[4] = self;
  v28 = v15;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__ESDClient_beginMonitoringPersistentFolders_forAccount___block_invoke_2;
  v22[3] = &unk_278FCDDD8;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v28;
  v17 = v14;
  v18 = v28;
  v19 = v13;
  v20 = v12;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v27 wrappedBlock:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __57__ESDClient_beginMonitoringPersistentFolders_forAccount___block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) watchedIDs];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (!v4)
    {
      v4 = [MEMORY[0x277CBEB58] set];
      v5 = [*(a1 + 32) watchedIDs];
      [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    }

    if ([*(a1 + 48) count])
    {
      [v4 addObjectsFromArray:*(a1 + 48)];
    }
  }

  v6 = [*(a1 + 32) clientBundleID];

  if (v6)
  {
    if ([*(a1 + 32) watchedFolderCount])
    {
      *(*(a1 + 32) + 16) = 1;
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = [*(a1 + 56) transactionId];
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_24A184000, v7, v8, "No folders watched. Marking not persistent. Transaction: %@", &v15, 0xCu);
      }
    }

    if (*(*(a1 + 32) + 16) == 1)
    {
      v10 = +[ESDAgentManager sharedManager];
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = [*(a1 + 32) clientBundleID];
      [v10 addPersistMonitoringAccountID:v12 folderIDs:v11 clientID:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __57__ESDClient_beginMonitoringPersistentFolders_forAccount___block_invoke_47(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

uint64_t __57__ESDClient_beginMonitoringPersistentFolders_forAccount___block_invoke_2(void *a1)
{
  v2 = +[ESDAgentManager sharedManager];
  [v2 startMonitoringAccountID:a1[4] folderIDs:a1[5]];

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)_stopMonitoringFolders:(id)folders
{
  v42 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138412290;
    v39 = transactionId;
    _os_log_impl(&dword_24A184000, v9, v11, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  if (!v7)
  {
    v18 = DALoggingwithCategory();
    v19 = *(v10 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 136315394;
      v39 = "[ESDClient _stopMonitoringFolders:]";
      v40 = 2112;
      v41 = v5;
      v20 = "Malformed request from client in %s: %@";
      v21 = v18;
      v22 = v19;
      v23 = 22;
LABEL_10:
      _os_log_impl(&dword_24A184000, v21, v22, v20, buf, v23);
    }

LABEL_11:

    [(ESDClient *)self noteBlockedClientCallChange:1];
    goto LABEL_12;
  }

  if (!v6)
  {
    v18 = DALoggingwithCategory();
    v24 = *(v10 + 3);
    if (os_log_type_enabled(v18, v24))
    {
      *buf = 136315138;
      v39 = "[ESDClient _stopMonitoringFolders:]";
      v20 = "Malformed request from client in %s: bad accountID";
      v21 = v18;
      v22 = v24;
      v23 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __36__ESDClient__stopMonitoringFolders___block_invoke;
  v34[3] = &unk_278FCDE00;
  v34[4] = self;
  v13 = v7;
  v35 = v13;
  v14 = v6;
  v36 = v14;
  v37 = foldersCopy;
  v15 = MEMORY[0x24C212500](v34);
  v16 = +[ESDMain sharedMain];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __36__ESDClient__stopMonitoringFolders___block_invoke_48;
  v32[3] = &unk_278FCDDB0;
  v32[4] = self;
  v33 = v15;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __36__ESDClient__stopMonitoringFolders___block_invoke_2;
  v26[3] = &unk_278FCDE28;
  v27 = v13;
  v28 = v14;
  selfCopy = self;
  v31 = v33;
  v30 = v8;
  v17 = v33;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v32 wrappedBlock:v26];

LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
}

void __36__ESDClient__stopMonitoringFolders___block_invoke(uint64_t a1, int a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _removeWatchedFolderIDs:*(a1 + 40) forAccountWithID:*(a1 + 48)];
  v4 = *(a1 + 32);
  if (v4[16] == 1)
  {
    if (![v4 watchedFolderCount])
    {
      *(*(a1 + 32) + 16) = 0;
    }

    v5 = [*(a1 + 32) watchedIDs];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];

    if (v6 && [v6 count])
    {
      v7 = +[ESDAgentManager sharedManager];
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      v10 = [*(a1 + 32) clientBundleID];
      [v7 removePersistMonitoringAccountID:v8 folderIDs:v9 clientID:v10];
    }

    else
    {
      v7 = +[ESDAgentManager sharedManager];
      v11 = *(a1 + 48);
      v10 = [*(a1 + 32) clientBundleID];
      [v7 clearPersistMonitoringAccountID:v11 clientID:v10];
    }
  }

  v23 = *MEMORY[0x277D03E38];
  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 10;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v24[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v15 = [*(a1 + 32) _createReplyToRequest:*(a1 + 56) withProperties:v14];
  v16 = xpc_dictionary_get_remote_connection(*(a1 + 56));
  v17 = [*(a1 + 32) conn];

  if (v17)
  {
    v18 = [*(a1 + 32) conn];

    if (v18 == v16)
    {
      v19 = [*(a1 + 32) conn];
      xpc_connection_send_message(v19, v15);
    }

    else
    {
      v19 = DALoggingwithCategory();
      v20 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v19, v20))
      {
        *v22 = 0;
        _os_log_impl(&dword_24A184000, v19, v20, "Remote client disconnected and reconnected while stoping monitoring folders.", v22, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __36__ESDClient__stopMonitoringFolders___block_invoke_48(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

void __36__ESDClient__stopMonitoringFolders___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    v7 = *(MEMORY[0x277D03988] + 6);
    *&v4 = 138412546;
    v16 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = +[ESDAccessManager sharedManager];
        v11 = [v10 isAccountID:*(a1 + 40) folderID:v9 watchedByClientBesides:*(a1 + 48)];

        if (v11)
        {
          v12 = DALoggingwithCategory();
          if (os_log_type_enabled(v12, v7))
          {
            v13 = *(a1 + 40);
            *buf = v16;
            v23 = v13;
            v24 = 2112;
            v25 = v9;
            _os_log_impl(&dword_24A184000, v12, v7, "Not stop monitoring account %@ folder %@ because other clients are watching it", buf, 0x16u);
          }
        }

        else
        {
          [v17 addObject:v9];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  if ([v17 count])
  {
    v14 = +[ESDAgentManager sharedManager];
    [v14 stopMonitoringAccountID:*(a1 + 40) folderIDs:v17];
  }

  (*(*(a1 + 64) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_resumeMonitoringFolders:(id)folders
{
  v41 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138412290;
    v38 = transactionId;
    _os_log_impl(&dword_24A184000, v9, v11, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  if (!v7)
  {
    v18 = DALoggingwithCategory();
    v19 = *(v10 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 136315394;
      v38 = "[ESDClient _resumeMonitoringFolders:]";
      v39 = 2112;
      v40 = v5;
      v20 = "Malformed request from client in %s: %@";
      v21 = v18;
      v22 = v19;
      v23 = 22;
LABEL_10:
      _os_log_impl(&dword_24A184000, v21, v22, v20, buf, v23);
    }

LABEL_11:

    [(ESDClient *)self noteBlockedClientCallChange:1];
    goto LABEL_12;
  }

  if (!v6)
  {
    v18 = DALoggingwithCategory();
    v24 = *(v10 + 3);
    if (os_log_type_enabled(v18, v24))
    {
      *buf = 136315138;
      v38 = "[ESDClient _resumeMonitoringFolders:]";
      v20 = "Malformed request from client in %s: bad accountID";
      v21 = v18;
      v22 = v24;
      v23 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __38__ESDClient__resumeMonitoringFolders___block_invoke;
  v33[3] = &unk_278FCDE00;
  v33[4] = self;
  v13 = v7;
  v34 = v13;
  v14 = v6;
  v35 = v14;
  v36 = foldersCopy;
  v15 = MEMORY[0x24C212500](v33);
  v16 = +[ESDMain sharedMain];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __38__ESDClient__resumeMonitoringFolders___block_invoke_49;
  v31[3] = &unk_278FCDDB0;
  v31[4] = self;
  v32 = v15;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __38__ESDClient__resumeMonitoringFolders___block_invoke_2;
  v26[3] = &unk_278FCDDD8;
  v27 = v14;
  v28 = v13;
  v30 = v32;
  v29 = v8;
  v17 = v32;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v31 wrappedBlock:v26];

LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
}

void __38__ESDClient__resumeMonitoringFolders___block_invoke(uint64_t a1, int a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _removeBusyFolderIDs:*(a1 + 40) forAccountWithID:*(a1 + 48)];
  v15 = *MEMORY[0x277D03E38];
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 10;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v7 = [*(a1 + 32) _createReplyToRequest:*(a1 + 56) withProperties:v6];
  v8 = xpc_dictionary_get_remote_connection(*(a1 + 56));
  v9 = [*(a1 + 32) conn];

  if (v9)
  {
    v10 = [*(a1 + 32) conn];

    if (v10 == v8)
    {
      v11 = [*(a1 + 32) conn];
      xpc_connection_send_message(v11, v7);
    }

    else
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        *v14 = 0;
        _os_log_impl(&dword_24A184000, v11, v12, "Remote client disconnected and reconnected while resuming monitoring folders.", v14, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __38__ESDClient__resumeMonitoringFolders___block_invoke_49(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

uint64_t __38__ESDClient__resumeMonitoringFolders___block_invoke_2(void *a1)
{
  v2 = +[ESDAgentManager sharedManager];
  [v2 resumeMonitoringAccountID:a1[4] folderIDs:a1[5]];

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)_suspendMonitoringFolders:(id)folders
{
  v41 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138412290;
    v38 = transactionId;
    _os_log_impl(&dword_24A184000, v9, v11, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  if (!v7)
  {
    v18 = DALoggingwithCategory();
    v19 = *(v10 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 136315394;
      v38 = "[ESDClient _suspendMonitoringFolders:]";
      v39 = 2112;
      v40 = v5;
      v20 = "Malformed request from client in %s: %@";
      v21 = v18;
      v22 = v19;
      v23 = 22;
LABEL_10:
      _os_log_impl(&dword_24A184000, v21, v22, v20, buf, v23);
    }

LABEL_11:

    [(ESDClient *)self noteBlockedClientCallChange:1];
    goto LABEL_12;
  }

  if (!v6)
  {
    v18 = DALoggingwithCategory();
    v24 = *(v10 + 3);
    if (os_log_type_enabled(v18, v24))
    {
      *buf = 136315138;
      v38 = "[ESDClient _suspendMonitoringFolders:]";
      v20 = "Malformed request from client in %s: bad accountID";
      v21 = v18;
      v22 = v24;
      v23 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__ESDClient__suspendMonitoringFolders___block_invoke;
  v33[3] = &unk_278FCDE00;
  v33[4] = self;
  v13 = v6;
  v34 = v13;
  v14 = v7;
  v35 = v14;
  v36 = foldersCopy;
  v15 = MEMORY[0x24C212500](v33);
  v16 = +[ESDMain sharedMain];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__ESDClient__suspendMonitoringFolders___block_invoke_51;
  v31[3] = &unk_278FCDDB0;
  v31[4] = self;
  v32 = v15;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __39__ESDClient__suspendMonitoringFolders___block_invoke_2;
  v26[3] = &unk_278FCDDD8;
  v27 = v13;
  v28 = v14;
  v30 = v32;
  v29 = v8;
  v17 = v32;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v31 wrappedBlock:v26];

LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
}

void __39__ESDClient__suspendMonitoringFolders___block_invoke(uint64_t a1, int a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) busyIDs];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (!v4)
    {
      v4 = [MEMORY[0x277CCA940] set];
      v5 = [*(a1 + 32) busyIDs];
      [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    }

    if ([*(a1 + 48) count])
    {
      [v4 addObjectsFromArray:*(a1 + 48)];
    }

    v6 = 2;
  }

  else
  {
    v6 = 10;
  }

  v17 = *MEMORY[0x277D03E38];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v18[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v9 = [*(a1 + 32) _createReplyToRequest:*(a1 + 56) withProperties:v8];
  v10 = xpc_dictionary_get_remote_connection(*(a1 + 56));
  v11 = [*(a1 + 32) conn];

  if (v11)
  {
    v12 = [*(a1 + 32) conn];

    if (v12 == v10)
    {
      v13 = [*(a1 + 32) conn];
      xpc_connection_send_message(v13, v9);
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v13, v14))
      {
        *v16 = 0;
        _os_log_impl(&dword_24A184000, v13, v14, "Remote client disconnected and reconnected while suspending monitoring folders.", v16, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __39__ESDClient__suspendMonitoringFolders___block_invoke_51(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

uint64_t __39__ESDClient__suspendMonitoringFolders___block_invoke_2(void *a1)
{
  v2 = +[ESDAgentManager sharedManager];
  [v2 suspendMonitoringAccountID:a1[4] folderIDs:a1[5]];

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)_stopMonitoringAgentsWithClientToken:(unint64_t)token
{
  v5 = +[ESDAgentManager sharedManager];
  disableMonitoringAgents = [v5 disableMonitoringAgents];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:disableMonitoringAgents];
  agentMonitoringTokens = [(ESDClient *)self agentMonitoringTokens];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  [agentMonitoringTokens setObject:v9 forKeyedSubscript:v8];
}

- (void)_startMonitoringAgentsWithClientToken:(unint64_t)token
{
  v14 = *MEMORY[0x277D85DE8];
  agentMonitoringTokens = [(ESDClient *)self agentMonitoringTokens];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  v7 = [agentMonitoringTokens objectForKeyedSubscript:v6];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v9, v10))
    {
      v13[0] = 67109120;
      v13[1] = token;
      _os_log_impl(&dword_24A184000, v9, v10, "Requested to start monitoring agents with unrecognized client token %d. Forcing a reload.", v13, 8u);
    }

    v11 = +[ESDAgentManager sharedManager];
    unsignedIntegerValue = [v11 disableMonitoringAgents];
  }

  [(ESDClient *)self _startMonitoringAgentsWithServerToken:unsignedIntegerValue];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringAgentsWithServerToken:(unint64_t)token
{
  v4 = +[ESDAgentManager sharedManager];
  [v4 enableMonitoringAgentsWithToken:token];
}

- (void)_clearAllStopMonitoringAgentsTokens
{
  v17 = *MEMORY[0x277D85DE8];
  agentMonitoringTokens = [(ESDClient *)self agentMonitoringTokens];
  allValues = [agentMonitoringTokens allValues];

  agentMonitoringTokens2 = [(ESDClient *)self agentMonitoringTokens];
  [agentMonitoringTokens2 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[ESDClient _startMonitoringAgentsWithServerToken:](self, "_startMonitoringAgentsWithServerToken:", [*(*(&v12 + 1) + 8 * v10++) unsignedIntegerValue]);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringAgents:(id)agents
{
  v24 = *MEMORY[0x277D85DE8];
  agentsCopy = agents;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v23 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03A00]];
  bOOLValue = [v10 BOOLValue];

  v12 = +[ESDMain sharedMain];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __36__ESDClient__startMonitoringAgents___block_invoke;
  v17[3] = &unk_278FCDE50;
  v17[4] = self;
  v18 = v9;
  v21 = bOOLValue;
  v19 = agentsCopy;
  v20 = v5;
  v13 = v5;
  v14 = agentsCopy;
  v15 = v9;
  [v12 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __36__ESDClient__startMonitoringAgents___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (BYSetupAssistantNeedsToRun())
  {
    v2 = DALoggingwithCategory();
    v3 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_24A184000, v2, v3, "Buddy needs to Run. Resetting Outstanding Agents and Registering for Buddy for Client %@", buf, 0xCu);
    }

    [*(a1 + 32) _clearAllStopMonitoringAgentsTokens];
    v5 = +[ESDAgentManager sharedManager];
    [v5 registerForBuddy];
    goto LABEL_7;
  }

  v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D03A08]];
  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) _startMonitoringAgentsWithClientToken:{objc_msgSend(v6, "unsignedIntegerValue")}];
LABEL_7:
    v7 = 2;
    goto LABEL_8;
  }

  v15 = DALoggingwithCategory();
  v16 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v15, v16, "Ignoring call to _startMonitoringAgents: with missing client token", buf, 2u);
  }

  v7 = 65;
LABEL_8:

  if (*(a1 + 64) == 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{v7, *MEMORY[0x277D03E38]}];
    v18 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v10 = [*(a1 + 32) _createReplyToRequest:*(a1 + 48) withProperties:v9];
    v11 = [*(a1 + 32) conn];

    if (v11)
    {
      v12 = [*(a1 + 32) conn];
      xpc_connection_send_message(v12, v10);
    }
  }

  result = [*(a1 + 32) noteBlockedClientCallChange:1];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_stopMonitoringAgents:(id)agents
{
  v25 = *MEMORY[0x277D85DE8];
  agentsCopy = agents;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v24 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03A00]];
  bOOLValue = [v10 BOOLValue];

  v12 = +[ESDMain sharedMain];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__ESDClient__stopMonitoringAgents___block_invoke;
  v17[3] = &unk_278FCDE50;
  v18 = v9;
  selfCopy = self;
  v22 = bOOLValue;
  v20 = agentsCopy;
  v21 = v5;
  v13 = v5;
  v14 = agentsCopy;
  v15 = v9;
  [v12 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __35__ESDClient__stopMonitoringAgents___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D03A08]];
  v3 = v2;
  if (v2)
  {
    [*(a1 + 40) _stopMonitoringAgentsWithClientToken:{objc_msgSend(v2, "unsignedIntegerValue")}];
    v4 = 2;
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      *v13 = 0;
      _os_log_impl(&dword_24A184000, v5, v6, "Ignoring call to _startMonitoringAgents: with missing client token", v13, 2u);
    }

    v4 = 65;
  }

  if (*(a1 + 64) == 1)
  {
    v14 = *MEMORY[0x277D03E38];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v15[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v9 = [*(a1 + 40) _createReplyToRequest:*(a1 + 48) withProperties:v8];
    v10 = [*(a1 + 40) conn];

    if (v10)
    {
      v11 = [*(a1 + 40) conn];
      xpc_connection_send_message(v11, v9);
    }
  }

  [*(a1 + 40) noteBlockedClientCallChange:1];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentPolicyKey:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v24 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__ESDClient__getCurrentPolicyKey___block_invoke;
  v18[3] = &unk_278FCDE78;
  v19 = v10;
  selfCopy = self;
  v21 = keyCopy;
  v22 = v5;
  v11 = v5;
  v12 = keyCopy;
  v13 = v10;
  v14 = MEMORY[0x24C212500](v18);
  v15 = +[ESDMain sharedMain];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__ESDClient__getCurrentPolicyKey___block_invoke_56;
  v17[3] = &unk_278FCDEA0;
  v17[4] = self;
  [v15 addToOperationsQueueDisabledCheckAndGoBlock:v17 wrappedBlock:v14];

  v16 = *MEMORY[0x277D85DE8];
}

void __34__ESDClient__getCurrentPolicyKey___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = +[ESDAgentManager sharedManager];
  v3 = [v2 currentPolicyKeyForAccount:*(a1 + 32)];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"0";
  }

  v5 = *MEMORY[0x277D03D20];
  v11[0] = *MEMORY[0x277D03E38];
  v11[1] = v5;
  v12[0] = &unk_285D5BDD8;
  v12[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = [*(a1 + 40) _createReplyToRequest:*(a1 + 48) withProperties:v6];
  v8 = [*(a1 + 40) conn];

  if (v8)
  {
    v9 = [*(a1 + 40) conn];
    xpc_connection_send_message(v9, v7);
  }

  [*(a1 + 40) noteBlockedClientCallChange:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_requestPolicyUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v21 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__ESDClient__requestPolicyUpdate___block_invoke;
  v17[3] = &unk_278FCDB98;
  v18 = v10;
  v19 = v5;
  v11 = v5;
  v12 = v10;
  v13 = MEMORY[0x24C212500](v17);
  v14 = +[ESDMain sharedMain];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__ESDClient__requestPolicyUpdate___block_invoke_2;
  v16[3] = &unk_278FCDEA0;
  v16[4] = self;
  [v14 addToOperationsQueueDisabledCheckAndGoBlock:v16 wrappedBlock:v13];

  v15 = *MEMORY[0x277D85DE8];
}

void __34__ESDClient__requestPolicyUpdate___block_invoke(uint64_t a1)
{
  v2 = +[ESDAgentManager sharedManager];
  [v2 requestPolicyUpdateForAccount:*(a1 + 32)];
}

- (id)timersForAccountWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    accountTimers = [(ESDClient *)self accountTimers];
    v6 = [accountTimers objectForKeyedSubscript:dCopy];

    if (!v6)
    {
      v6 = objc_opt_new();
      accountTimers2 = [(ESDClient *)self accountTimers];
      [accountTimers2 setObject:v6 forKeyedSubscript:dCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_requestFolderContentsUpdateForFolders:(id)folders accountId:(id)id dataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  dataclassesCopy = dataclasses;
  v60 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  idCopy = id;
  v10 = objc_opt_new();
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    transactionId = [v10 transactionId];
    *buf = 138412290;
    v55 = transactionId;
    _os_log_impl(&dword_24A184000, v11, v13, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v15 = DALoggingwithCategory();
  v16 = *(v12 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412802;
    v55 = idCopy;
    v56 = 2048;
    v57 = dataclassesCopy;
    v58 = 1024;
    v59 = requestedCopy;
    _os_log_impl(&dword_24A184000, v15, v16, "_requestFolderContentsUpdateForFolders for account %@, dataclass 0x%lx isUserRequested %d", buf, 0x1Cu);
  }

  v17 = [(ESDClient *)self timersForAccountWithID:idCopy];
  v18 = [v17 clientBehaviorForFolderIds:foldersCopy];
  if (requestedCopy || (v19 = v18, (v18 & 1) != 0))
  {
    v20 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v22 = foldersCopy;
    v23 = [v22 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v50;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v50 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v17 setLastFolderContentRequestDate:v20 forFolderWithId:{*(*(&v49 + 1) + 8 * i), dataclassesCopy}];
        }

        v24 = [v22 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v24);
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __90__ESDClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke;
    v43[3] = &unk_278FCDEC8;
    v44 = v22;
    v45 = idCopy;
    v47 = dataclassesCopy;
    v48 = requestedCopy;
    v46 = v10;
    v27 = MEMORY[0x24C212500](v43);
    v28 = +[ESDMain sharedMain];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __90__ESDClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke_59;
    v42[3] = &unk_278FCDEA0;
    v42[4] = self;
    [v28 addToOperationsQueueDisabledCheckAndGoBlock:v42 wrappedBlock:v27];

    v29 = v44;
    goto LABEL_21;
  }

  v20 = DALoggingwithCategory();
  v21 = os_log_type_enabled(v20, v13);
  if ((v19 & 2) != 0)
  {
    if (v21)
    {
      *buf = 138412290;
      v55 = foldersCopy;
      _os_log_impl(&dword_24A184000, v20, v13, "Deferring request to update folders %@", buf, 0xCu);
    }

    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, gDADHighAvailabilityQueue);
    [v17 deferredTimerInterval];
    v31 = v30 / 20.0;
    v32 = dispatch_time(0, (v30 * 1000000000.0));
    dispatch_source_set_timer(v20, v32, 0xFFFFFFFFFFFFFFFFLL, (v31 * 1000000000.0));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __90__ESDClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke_60;
    handler[3] = &unk_278FCDEF0;
    handler[4] = self;
    v37 = foldersCopy;
    v38 = idCopy;
    v40 = dataclassesCopy;
    v41 = requestedCopy;
    v39 = v10;
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(v20);
    [v17 setDeferredFolderContentsSource:v20];

    v29 = v37;
LABEL_21:

    goto LABEL_22;
  }

  if (v21)
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v20, v13, "Not forwarding request to update folders, as we already did that recently, and have a deferred request queued", buf, 2u);
  }

LABEL_22:

  v33 = *MEMORY[0x277D85DE8];
}

void __90__ESDClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[ESDAgentManager sharedManager];
  v3 = [v2 updateContentsOfFolders:*(a1 + 32) forAccountID:*(a1 + 40) andDataclasses:*(a1 + 56) isUserRequested:*(a1 + 64)];

  if ((v3 & 1) == 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_24A184000, v4, v5, "Block: request folder contents update (accounts %@, folders %@): error updating folder contents", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __90__ESDClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke_60(uint64_t a1)
{
  [*(a1 + 32) _requestFolderContentsUpdateForFolders:*(a1 + 40) accountId:*(a1 + 48) dataclasses:*(a1 + 64) isUserRequested:*(a1 + 72)];
  v2 = [*(a1 + 32) timersForAccountWithID:*(a1 + 48)];
  [v2 setDeferredFolderContentsSource:0];
}

- (void)_requestFolderContentsUpdate:(id)update
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03B08]];
  intValue = [v6 intValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03C58]];
  bOOLValue = [v9 BOOLValue];

  if (!v8)
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      v19 = 136315394;
      v20 = "[ESDClient _requestFolderContentsUpdate:]";
      v21 = 2112;
      v22 = v4;
      v13 = "Malformed request from client in %s: %@";
      v14 = v11;
      v15 = v12;
      v16 = 22;
LABEL_8:
      _os_log_impl(&dword_24A184000, v14, v15, v13, &v19, v16);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v5)
  {
    v11 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v17))
    {
      v19 = 136315138;
      v20 = "[ESDClient _requestFolderContentsUpdate:]";
      v13 = "Malformed request from client in %s: bad accountID";
      v14 = v11;
      v15 = v17;
      v16 = 12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(ESDClient *)self _requestFolderContentsUpdateForFolders:v8 accountId:v5 dataclasses:intValue isUserRequested:bOOLValue];
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_requestAllFolderContentsUpdateForAccountId:(id)id dataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v46 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v9 = objc_opt_new();
  v10 = DALoggingwithCategory();
  v11 = MEMORY[0x277D03988];
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v12))
  {
    transactionId = [v9 transactionId];
    *buf = 138412290;
    v41 = transactionId;
    _os_log_impl(&dword_24A184000, v10, v12, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v14 = DALoggingwithCategory();
  v15 = *(v11 + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412802;
    v41 = idCopy;
    v42 = 2048;
    dataclassesCopy = dataclasses;
    v44 = 1024;
    v45 = requestedCopy;
    _os_log_impl(&dword_24A184000, v14, v15, "_requestAllFolderContentsUpdateForAccountId %@, dataclasses 0x%lx, isUserRequested: %d", buf, 0x1Cu);
  }

  v16 = [(ESDClient *)self timersForAccountWithID:idCopy];
  clientBehaviorForFolderContents = [v16 clientBehaviorForFolderContents];
  if (requestedCopy || (v18 = clientBehaviorForFolderContents, (clientBehaviorForFolderContents & 1) != 0))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v16 setLastAllFolderContentsRequestDate:date];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __85__ESDClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke;
    v34[3] = &unk_278FCDEC8;
    dataclassesCopy2 = dataclasses;
    v39 = requestedCopy;
    v35 = idCopy;
    selfCopy = self;
    v37 = v9;
    v22 = MEMORY[0x24C212500](v34);
    v23 = +[ESDMain sharedMain];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __85__ESDClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke_61;
    v33[3] = &unk_278FCDEA0;
    v33[4] = self;
    [v23 addToOperationsQueueDisabledCheckAndGoBlock:v33 wrappedBlock:v22];

    v19 = v35;
  }

  else
  {
    v19 = DALoggingwithCategory();
    v20 = os_log_type_enabled(v19, v12);
    if ((v18 & 2) != 0)
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_24A184000, v19, v12, "Deferring request to update all folders", buf, 2u);
      }

      v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, gDADHighAvailabilityQueue);
      [v16 deferredTimerInterval];
      v25 = v24 / 20.0;
      v26 = dispatch_time(0, (v24 * 1000000000.0));
      dispatch_source_set_timer(v19, v26, 0xFFFFFFFFFFFFFFFFLL, (v25 * 1000000000.0));
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __85__ESDClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke_62;
      handler[3] = &unk_278FCDEC8;
      handler[4] = self;
      v29 = idCopy;
      dataclassesCopy3 = dataclasses;
      v32 = requestedCopy;
      v30 = v9;
      dispatch_source_set_event_handler(v19, handler);
      dispatch_resume(v19);
      [v16 setDeferredAllFolderContentsSource:v19];
    }

    else if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v19, v12, "Not forwarding request to update all folders, as we already did that recently, and have a deferred request queued", buf, 2u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __85__ESDClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v4))
  {
    v5 = +[ESDAgentManager sharedManager];
    v6 = [v5 activeAgents];
    v7 = [v6 count];
    v8 = +[ESDAgentManager sharedManager];
    v9 = [v8 activeAgents];
    v19 = 134218242;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_24A184000, v2, v4, "[ESDAgentManager sharedManager] number of Current Agents %lu and they are %@", &v19, 0x16u);
  }

  v10 = +[ESDAgentManager sharedManager];
  v11 = [v10 updateContentsOfAllFoldersForAccountID:*(a1 + 32) andDataclasses:*(a1 + 56) isUserRequested:*(a1 + 64)];

  if ((v11 & 1) == 0)
  {
    v12 = DALoggingwithCategory();
    v13 = *(v3 + 3);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(a1 + 32);
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_24A184000, v12, v13, "Block: request all folder contents update (accounts %@): error updating folder contents", &v19, 0xCu);
    }

    v15 = DALoggingwithCategory();
    if (os_log_type_enabled(v15, v13))
    {
      v16 = *(a1 + 40);
      v17 = [v16 conn];
      v19 = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_24A184000, v15, v13, "Block: ESDClient %@ with XPC Connection %@ is In Bad State", &v19, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __85__ESDClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke_62(uint64_t a1)
{
  [*(a1 + 32) _requestAllFolderContentsUpdateForAccountId:*(a1 + 40) dataclasses:*(a1 + 56) isUserRequested:*(a1 + 64)];
  v2 = [*(a1 + 32) timersForAccountWithID:*(a1 + 40)];
  [v2 setDeferredAllFolderContentsSource:0];
}

- (void)_requestAllFolderContentsUpdate:(id)update
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03B08]];
  intValue = [v6 intValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03C58]];
  bOOLValue = [v8 BOOLValue];

  if (v5)
  {
    [(ESDClient *)self _requestAllFolderContentsUpdateForAccountId:v5 dataclasses:intValue isUserRequested:bOOLValue];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v13 = 136315138;
      v14 = "[ESDClient _requestAllFolderContentsUpdate:]";
      _os_log_impl(&dword_24A184000, v10, v11, "Malformed request from client in %s: bad accountID", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_requestFolderListUpdateForAccountId:(id)id dataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  foldersCopy = folders;
  v52 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v10 = objc_opt_new();
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    transactionId = [v10 transactionId];
    *buf = 138412290;
    v47 = transactionId;
    _os_log_impl(&dword_24A184000, v11, v13, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v15 = DALoggingwithCategory();
  v16 = *(v12 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412802;
    v47 = idCopy;
    v48 = 2048;
    dataclassesCopy = dataclasses;
    v50 = 1024;
    v51 = requestedCopy;
    _os_log_impl(&dword_24A184000, v15, v16, "_requestFolderListUpdateForAccountId %@, dataclass 0x%lx, isUserRequested %d", buf, 0x1Cu);
  }

  v17 = [(ESDClient *)self timersForAccountWithID:idCopy];
  clientBehaviorForFolderList = [v17 clientBehaviorForFolderList];
  if (requestedCopy || (v19 = clientBehaviorForFolderList, (clientBehaviorForFolderList & 1) != 0))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v17 setLastFolderListRequestDate:date];

    if (foldersCopy && [v17 allowFolderWipe])
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      [v17 setLastFolderWipeRequestDate:date2];

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __100__ESDClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke;
    v39[3] = &unk_278FCDF18;
    dataclassesCopy2 = dataclasses;
    v44 = v24;
    v45 = requestedCopy;
    v40 = idCopy;
    selfCopy = self;
    v42 = v10;
    v25 = MEMORY[0x24C212500](v39);
    v26 = +[ESDMain sharedMain];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __100__ESDClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke_63;
    v38[3] = &unk_278FCDEA0;
    v38[4] = self;
    [v26 addToOperationsQueueDisabledCheckAndGoBlock:v38 wrappedBlock:v25];

    v20 = v40;
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = os_log_type_enabled(v20, v13);
    if ((v19 & 2) != 0)
    {
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_24A184000, v20, v13, "Deferring request to update folder list", buf, 2u);
      }

      v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, gDADHighAvailabilityQueue);
      [v17 deferredTimerInterval];
      v28 = v27 / 20.0;
      v29 = dispatch_time(0, (v27 * 1000000000.0));
      dispatch_source_set_timer(v20, v29, 0xFFFFFFFFFFFFFFFFLL, (v28 * 1000000000.0));
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __100__ESDClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke_64;
      handler[3] = &unk_278FCDF18;
      handler[4] = self;
      v33 = idCopy;
      dataclassesCopy3 = dataclasses;
      v36 = foldersCopy;
      v37 = requestedCopy;
      v34 = v10;
      dispatch_source_set_event_handler(v20, handler);
      dispatch_resume(v20);
      [v17 setDeferredFolderListSource:v20];
    }

    else if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v20, v13, "Not forwarding request to update folder list, as we already did that recently, and have a deferred request queued", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __100__ESDClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[ESDAgentManager sharedManager];
  v3 = [v2 updateFolderListForAccountID:*(a1 + 32) andDataclasses:*(a1 + 56) requireChangedFolders:*(a1 + 64) isUserRequested:*(a1 + 65)];

  if ((v3 & 1) == 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 32);
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_24A184000, v4, v5, "Block: request folder list update (accounts %@): error updating folder contents", &v11, 0xCu);
    }

    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, v5))
    {
      v8 = *(a1 + 40);
      v9 = [v8 conn];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_24A184000, v7, v5, "Block: ESDClient %@ with XPC Connection %@ is In Bad State", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __100__ESDClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke_64(uint64_t a1)
{
  [*(a1 + 32) _requestFolderListUpdateForAccountId:*(a1 + 40) dataclasses:*(a1 + 56) requireChangedFolders:*(a1 + 64) isUserRequested:*(a1 + 65)];
  v2 = [*(a1 + 32) timersForAccountWithID:*(a1 + 40)];
  [v2 setDeferredFolderListSource:0];
}

- (void)_requestFolderListUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03B08]];
  intValue = [v6 intValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03D90]];
  bOOLValue = [v8 BOOLValue];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03C58]];
  bOOLValue2 = [v10 BOOLValue];

  if (v5)
  {
    [(ESDClient *)self _requestFolderListUpdateForAccountId:v5 dataclasses:intValue requireChangedFolders:bOOLValue isUserRequested:bOOLValue2];
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      v15 = 136315138;
      v16 = "[ESDClient _requestFolderListUpdate:]";
      _os_log_impl(&dword_24A184000, v12, v13, "Malformed request from client in %s: bad accountID", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)delegateWithIDIsGoingAway:(id)away
{
  awayCopy = away;
  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  [actionDelegatesById removeObjectForKey:awayCopy];
}

- (void)_openServerContactsSearch:(id)search
{
  v34 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v33 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03DC0]];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [ESDClient _openServerContactsSearch:];
    if (v12)
    {
      goto LABEL_5;
    }
  }

  [ESDClient _openServerContactsSearch:];
LABEL_5:
  v13 = [[ESDClientContactsSearchDelegate alloc] initWithAccountID:v10 queryDictionary:v12 client:self];
  delegateID = [(ESDClientDelegate *)v13 delegateID];
  if (delegateID)
  {
    actionDelegatesById = [(ESDClient *)self actionDelegatesById];
    [actionDelegatesById setObject:v13 forKeyedSubscript:delegateID];

    v30 = *MEMORY[0x277D03DB8];
    v31 = delegateID;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  }

  else
  {
    v16 = MEMORY[0x277CBEC10];
  }

  searchCopy = [(ESDClient *)self _createReplyToRequest:searchCopy withProperties:v16, searchCopy];
  conn = [(ESDClient *)self conn];

  if (conn)
  {
    conn2 = [(ESDClient *)self conn];
    xpc_connection_send_message(conn2, searchCopy);
  }

  v20 = +[ESDMain sharedMain];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __39__ESDClient__openServerContactsSearch___block_invoke;
  v28[3] = &unk_278FCDEA0;
  v29 = v13;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __39__ESDClient__openServerContactsSearch___block_invoke_2;
  v25[3] = &unk_278FCDB98;
  v26 = v29;
  v27 = v5;
  v21 = v5;
  v22 = v29;
  [v20 addToOperationsQueueDisabledCheckAndGoBlock:v28 wrappedBlock:v25];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_cancelServerContactsSearch:(id)search
{
  v25 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v24 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03DB8]];
  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  v12 = [actionDelegatesById objectForKeyedSubscript:v10];

  v13 = +[ESDMain sharedMain];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41__ESDClient__cancelServerContactsSearch___block_invoke;
  v21[3] = &unk_278FCDEA0;
  v22 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__ESDClient__cancelServerContactsSearch___block_invoke_2;
  v17[3] = &unk_278FCDF40;
  v18 = v22;
  selfCopy = self;
  v20 = v5;
  v14 = v5;
  v15 = v22;
  [v13 addToOperationsQueueDisabledCheckAndGoBlock:v21 wrappedBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __41__ESDClient__cancelServerContactsSearch___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) userRequestsCancel];
  v2 = *(a1 + 40);

  return [v2 noteBlockedClientCallChange:1];
}

- (void)_processMeetingRequests:(id)requests
{
  v64 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v4 = objc_opt_new();
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v7))
  {
    transactionId = [v4 transactionId];
    *buf = 138412290;
    v61 = transactionId;
    _os_log_impl(&dword_24A184000, v5, v7, "ProcessMeetingRequests: DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = v4;

  v10 = _CFXPCCreateCFObjectFromXPCObject();
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C70]];
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C78]];
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C80]];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03BA0]];
  v16 = v15;
  if (v11)
  {
    v17 = (v12 | v13 | v14) == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17 || v15 == 0;
  v41 = v12;
  v42 = v9;
  if (v18)
  {
    v39 = v15;
    v40 = v11;
    v19 = DALoggingwithCategory();
    v20 = *(v6 + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 136315394;
      v61 = "[ESDClient _processMeetingRequests:]";
      v62 = 2112;
      v63 = v10;
      _os_log_impl(&dword_24A184000, v19, v20, "ProcessMeetingRequests: Malformed request from client in %s: %@", buf, 0x16u);
    }

    v58 = *MEMORY[0x277D03E38];
    v59 = &unk_285D5BDF0;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v21 = requestsCopy;
    v22 = [(ESDClient *)self _createReplyToRequest:requestsCopy withProperties:v35];
    conn = [(ESDClient *)self conn];

    v24 = DALoggingwithCategory();
    conn2 = v24;
    if (conn)
    {
      if (os_log_type_enabled(v24, v7))
      {
        *buf = 0;
        _os_log_impl(&dword_24A184000, conn2, v7, "ProcessMeetingRequests: sending reply message with status DAStatusUnknown", buf, 2u);
      }

      selfCopy2 = self;
      conn2 = [(ESDClient *)self conn];
      xpc_connection_send_message(conn2, v22);
      requestsCopy = v21;
      v36 = v39;
    }

    else
    {
      v36 = v39;
      if (os_log_type_enabled(v24, v20))
      {
        *buf = 0;
        _os_log_impl(&dword_24A184000, conn2, v20, "ProcessMeetingRequests: connection lost, unable to send reply message", buf, 2u);
      }

      requestsCopy = v21;
      selfCopy2 = self;
    }

    [(ESDClient *)selfCopy2 noteBlockedClientCallChange:1];
    v34 = v41;
    v37 = v42;
    v29 = v40;
  }

  else
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __37__ESDClient__processMeetingRequests___block_invoke;
    v49[3] = &unk_278FCDF90;
    v50 = v12;
    v51 = v13;
    v52 = v14;
    v53 = v16;
    v54 = v11;
    selfCopy3 = self;
    v27 = requestsCopy;
    v56 = v27;
    v28 = v9;
    v57 = v28;
    v29 = v11;
    v30 = MEMORY[0x24C212500](v49);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __37__ESDClient__processMeetingRequests___block_invoke_74;
    v46[3] = &unk_278FCDF40;
    v46[4] = self;
    v47 = v27;
    v48 = v28;
    v31 = MEMORY[0x24C212500](v46);
    v32 = +[ESDMain sharedMain];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __37__ESDClient__processMeetingRequests___block_invoke_75;
    v44[3] = &unk_278FCDDB0;
    v44[4] = self;
    v45 = v31;
    v33 = v31;
    [v32 addToOperationsQueueDisabledCheckAndGoBlock:v44 wrappedBlock:v30];

    v34 = v41;
    v35 = v50;
    v36 = v16;
    v37 = v42;
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __37__ESDClient__processMeetingRequests___block_invoke(uint64_t a1)
{
  v2 = +[ESDAgentManager sharedManager];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ESDClient__processMeetingRequests___block_invoke_2;
  v9[3] = &unk_278FCDF68;
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v9[4] = *(a1 + 72);
  v10 = v8;
  v11 = *(a1 + 88);
  [v2 processMeetingRequestDatas:v3 deliveryIdsToClear:v4 deliveryIdsToSoftClear:v5 inFolderWithId:v6 forAccountWithId:v7 callback:v9];
}

void __37__ESDClient__processMeetingRequests___block_invoke_2(uint64_t a1, char a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (a2)
  {
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v6))
    {
      *v20 = 0;
      v7 = 2;
      _os_log_impl(&dword_24A184000, v5, v6, "ProcessMeetingRequests: success", v20, 2u);
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v8))
    {
      *v20 = 0;
      _os_log_impl(&dword_24A184000, v5, v8, "ProcessMeetingRequests: error processing meeting", v20, 2u);
    }

    v7 = 10;
  }

  v21 = *MEMORY[0x277D03E38];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v22[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v11 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v10];
  v12 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  v13 = [*(a1 + 32) conn];

  if (v13)
  {
    v14 = [*(a1 + 32) conn];

    v15 = DALoggingwithCategory();
    v16 = v15;
    if (v14 == v12)
    {
      v18 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v15, v18))
      {
        *v20 = 0;
        _os_log_impl(&dword_24A184000, v16, v18, "ProcessMeetingRequests: sending reply message", v20, 2u);
      }

      v16 = [*(a1 + 32) conn];
      xpc_connection_send_message(v16, v11);
    }

    else
    {
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v15, v17))
      {
        *v20 = 0;
        _os_log_impl(&dword_24A184000, v16, v17, "ProcessMeetingRequests: connection lost, unable to send reply message", v20, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];

  v19 = *MEMORY[0x277D85DE8];
}

void __37__ESDClient__processMeetingRequests___block_invoke_74(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D03E38];
  v14[0] = &unk_285D5BDF0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v3 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v2];
  v4 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  v5 = [*(a1 + 32) conn];

  if (v5)
  {
    v6 = [*(a1 + 32) conn];

    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v6 == v4)
    {
      v10 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v10))
      {
        *v12 = 0;
        _os_log_impl(&dword_24A184000, v8, v10, "ProcessMeetingRequests: sending reply message", v12, 2u);
      }

      v8 = [*(a1 + 32) conn];
      xpc_connection_send_message(v8, v3);
    }

    else
    {
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v9))
      {
        *v12 = 0;
        _os_log_impl(&dword_24A184000, v8, v9, "ProcessMeetingRequests: connection lost, unable to send reply message", v12, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __37__ESDClient__processMeetingRequests___block_invoke_75(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

- (void)_asyncProcessMeetingRequests:(id)requests
{
  v37 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v34 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v8, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v10 = _CFXPCCreateCFObjectFromXPCObject();
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C70]];
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C78]];
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C80]];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03BA0]];
  v16 = v15;
  if (v11)
  {
    v17 = (v12 | v13 | v14) == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v15 == 0)
  {
    v19 = DALoggingwithCategory();
    v20 = *(v7 + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 136315394;
      v34 = "[ESDClient _asyncProcessMeetingRequests:]";
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_24A184000, v19, v20, "Malformed request from client in %s: %@", buf, 0x16u);
    }

    [(ESDClient *)self noteBlockedClientCallChange:1];
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __42__ESDClient__asyncProcessMeetingRequests___block_invoke;
    v25[3] = &unk_278FCDFE0;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v29 = v16;
    v30 = v11;
    selfCopy = self;
    v32 = v5;
    v21 = MEMORY[0x24C212500](v25);
    v22 = +[ESDMain sharedMain];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__ESDClient__asyncProcessMeetingRequests___block_invoke_3;
    v24[3] = &unk_278FCDEA0;
    v24[4] = self;
    [v22 addToOperationsQueueDisabledCheckAndGoBlock:v24 wrappedBlock:v21];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __42__ESDClient__asyncProcessMeetingRequests___block_invoke(void *a1)
{
  v2 = +[ESDAgentManager sharedManager];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ESDClient__asyncProcessMeetingRequests___block_invoke_2;
  v9[3] = &unk_278FCDFB8;
  v7 = a1[8];
  v8 = a1[10];
  v9[4] = a1[9];
  v10 = v8;
  [v2 processMeetingRequestDatas:v3 deliveryIdsToClear:v4 deliveryIdsToSoftClear:v5 inFolderWithId:v6 forAccountWithId:v7 callback:v9];
}

- (void)_resetCertWarnings:(id)warnings
{
  v30 = *MEMORY[0x277D85DE8];
  warningsCopy = warnings;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v27 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v8, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v10 = _CFXPCCreateCFObjectFromXPCObject();
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03B08]];
  intValue = [v12 intValue];

  v14 = DALoggingwithCategory();
  v15 = *(v7 + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412546;
    v27 = v11;
    v28 = 2048;
    v29 = intValue;
    _os_log_impl(&dword_24A184000, v14, v15, "_resetCertWarningsForAccountWithId %@ dataclasses %lx", buf, 0x16u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __32__ESDClient__resetCertWarnings___block_invoke;
  v22[3] = &unk_278FCE008;
  v24 = v5;
  v25 = intValue;
  v23 = v11;
  v16 = v5;
  v17 = v11;
  v18 = MEMORY[0x24C212500](v22);
  v19 = +[ESDMain sharedMain];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32__ESDClient__resetCertWarnings___block_invoke_76;
  v21[3] = &unk_278FCDEA0;
  v21[4] = self;
  [v19 addToOperationsQueueDisabledCheckAndGoBlock:v21 wrappedBlock:v18];

  v20 = *MEMORY[0x277D85DE8];
}

void __32__ESDClient__resetCertWarnings___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[ESDAgentManager sharedManager];
  v3 = [v2 resetCertWarningsForAccountWithId:*(a1 + 32) andDataclasses:*(a1 + 48)];

  if ((v3 & 1) == 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v9 = 138412546;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_24A184000, v4, v5, "error resetting cert warnings account ID %@ dataclasses 0x%lx", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setFolderIdsThatExternalClientsCareAbout:(id)about
{
  v39 = *MEMORY[0x277D85DE8];
  aboutCopy = about;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v38 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03C90]];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03C98]];
  v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03CA0]];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __55__ESDClient__setFolderIdsThatExternalClientsCareAbout___block_invoke;
  v34[3] = &unk_278FCDF68;
  v34[4] = self;
  v35 = aboutCopy;
  v36 = v5;
  v25 = v5;
  v14 = aboutCopy;
  v15 = MEMORY[0x24C212500](v34);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __55__ESDClient__setFolderIdsThatExternalClientsCareAbout___block_invoke_77;
  v28[3] = &unk_278FCE030;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v10;
  v16 = v15;
  v33 = v16;
  v17 = v10;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = MEMORY[0x24C212500](v28);
  v22 = +[ESDMain sharedMain];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __55__ESDClient__setFolderIdsThatExternalClientsCareAbout___block_invoke_2;
  v26[3] = &unk_278FCDDB0;
  v26[4] = self;
  v27 = v16;
  v23 = v16;
  [v22 addToOperationsQueueDisabledCheckAndGoBlock:v26 wrappedBlock:v21];

  v24 = *MEMORY[0x277D85DE8];
}

void __55__ESDClient__setFolderIdsThatExternalClientsCareAbout___block_invoke(uint64_t a1, int a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D03E38];
  if (a2)
  {
    v19 = *MEMORY[0x277D03E38];
    v20[0] = &unk_285D5BDD8;
    v4 = MEMORY[0x277CBEAC0];
    v5 = v20;
    v6 = &v19;
  }

  else
  {
    v17 = *MEMORY[0x277D03E38];
    v18 = &unk_285D5BDF0;
    v4 = MEMORY[0x277CBEAC0];
    v5 = &v18;
    v6 = &v17;
  }

  v7 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:1];
  v8 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v7];
  v9 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  v10 = [*(a1 + 32) conn];

  v11 = DALoggingwithCategory();
  v12 = v11;
  if (v10 == v9)
  {
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v11, v14))
    {
      *v16 = 0;
      _os_log_impl(&dword_24A184000, v12, v14, "SetFolderIdsThatExternalClientsCareAbout: sending reply message", v16, 2u);
    }

    v12 = [*(a1 + 32) conn];
    xpc_connection_send_message(v12, v8);
  }

  else
  {
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v13))
    {
      *v16 = 0;
      _os_log_impl(&dword_24A184000, v12, v13, "SetFolderIdsThatExternalClientsCareAbout: connection lost, unable to send reply message", v16, 2u);
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __55__ESDClient__setFolderIdsThatExternalClientsCareAbout___block_invoke_77(void *a1)
{
  v2 = +[ESDAgentManager sharedManager];
  [v2 setFolderIdsThatExternalClientsCareAboutAdded:a1[4] deleted:a1[5] foldersTag:a1[6] forAccountID:a1[7]];

  v3 = *(a1[8] + 16);

  return v3();
}

uint64_t __55__ESDClient__setFolderIdsThatExternalClientsCareAbout___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

- (void)_reportFolderItemsSyncResult:(id)result
{
  v31 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v30 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03BA0]];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03BB8]];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  v14 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
  intValue = [v14 intValue];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__ESDClient__reportFolderItemsSyncResult___block_invoke;
  v23[3] = &unk_278FCE058;
  v27 = intValue;
  v28 = unsignedIntegerValue;
  v24 = v11;
  v25 = v10;
  v26 = v5;
  v16 = v5;
  v17 = v10;
  v18 = v11;
  v19 = MEMORY[0x24C212500](v23);
  v20 = +[ESDMain sharedMain];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__ESDClient__reportFolderItemsSyncResult___block_invoke_2;
  v22[3] = &unk_278FCDEA0;
  v22[4] = self;
  [v20 addToOperationsQueueDisabledCheckAndGoBlock:v22 wrappedBlock:v19];

  v21 = *MEMORY[0x277D85DE8];
}

void __42__ESDClient__reportFolderItemsSyncResult___block_invoke(void *a1)
{
  v2 = +[ESDAgentManager sharedManager];
  [v2 reportFolderItemsSyncSuccess:a1[7] == 2 forFolderWithID:a1[4] withItemsCount:a1[8] andAccountWithID:a1[5]];
}

- (void)_handleURL:(id)l
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v21 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03E98]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __24__ESDClient__handleURL___block_invoke;
  v17[3] = &unk_278FCDB98;
  v18 = v10;
  v19 = v5;
  v11 = v5;
  v12 = v10;
  v13 = MEMORY[0x24C212500](v17);
  v14 = +[ESDMain sharedMain];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __24__ESDClient__handleURL___block_invoke_2;
  v16[3] = &unk_278FCDEA0;
  v16[4] = self;
  [v14 addToOperationsQueueDisabledCheckAndGoBlock:v16 wrappedBlock:v13];

  v15 = *MEMORY[0x277D85DE8];
}

void __24__ESDClient__handleURL___block_invoke(uint64_t a1)
{
  v2 = +[ESDAgentManager sharedManager];
  [v2 handleURLString:*(a1 + 32)];
}

- (void)_processFolderChange:(id)change
{
  v35 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = _processFolderChange__taskId++;
  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    transactionId = [v6 transactionId];
    *buf = 138412290;
    v34 = transactionId;
    _os_log_impl(&dword_24A184000, v7, v8, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __34__ESDClient__processFolderChange___block_invoke;
  v31[3] = &unk_278FCE080;
  v32 = v5;
  v31[4] = self;
  v10 = MEMORY[0x24C212500](v31);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __34__ESDClient__processFolderChange___block_invoke_2;
  v25[3] = &unk_278FCE0A8;
  v11 = changeCopy;
  v26 = v11;
  v12 = v10;
  v30 = v5;
  v29 = v12;
  selfCopy = self;
  v13 = v6;
  v28 = v13;
  v14 = MEMORY[0x24C212500](v25);
  v15 = +[ESDMain sharedMain];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __34__ESDClient__processFolderChange___block_invoke_86;
  v20[3] = &unk_278FCE0D0;
  v24 = v5;
  v20[4] = self;
  v21 = v11;
  v22 = v13;
  v23 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  [v15 addToOperationsQueueDisabledCheckAndGoBlock:v20 wrappedBlock:v14];

  v19 = *MEMORY[0x277D85DE8];
}

void __34__ESDClient__processFolderChange___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v21 = a2;
  v9 = a3;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277CBEB38]);
  v12 = *MEMORY[0x277D03B98];
  v13 = *MEMORY[0x277D03C88];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v15 = *MEMORY[0x277D03E38];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v17 = [v11 initWithObjectsAndKeys:{v12, v13, v14, v15, v16, *MEMORY[0x277D03E88], 0}];

  if (v10)
  {
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10];
    [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x277D03B40]];
  }

  if (v21)
  {
    [v17 setObject:v21 forKeyedSubscript:*MEMORY[0x277D03BA0]];
  }

  if (v9)
  {
    [v17 setObject:v9 forKeyedSubscript:*MEMORY[0x277D03BB0]];
  }

  v19 = _CFXPCCreateXPCObjectFromCFObject();
  v20 = [*(a1 + 32) conn];
  xpc_connection_send_message(v20, v19);
}

void __34__ESDClient__processFolderChange___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D03B90]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  if (v4)
  {
    v21 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:&v21];
    v7 = v21;
    if (!v6)
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_impl(&dword_24A184000, v8, v9, "Unable to read data to decode folder change: %@", buf, 0xCu);
      }
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"root"];
  }

  else
  {
    v10 = 0;
  }

  v11 = +[ESDAgentManager sharedManager];
  v12 = [v11 processFolderChange:v10 forAccountWithID:v5 completionBlock:*(a1 + 56)];

  v22 = *MEMORY[0x277D03E88];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 64)];
  v23 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v15 = [*(a1 + 40) _createReplyToRequest:*(a1 + 32) withProperties:v14];
  v16 = [*(a1 + 40) conn];

  if (v16)
  {
    v17 = [*(a1 + 40) conn];
    xpc_connection_send_message(v17, v15);
  }

  if ((v12 & 1) == 0)
  {
    v18 = *(a1 + 56);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
    (*(v18 + 16))(v18, 0, 0, 10, v19);
  }

  [*(a1 + 40) noteBlockedClientCallChange:1];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __34__ESDClient__processFolderChange___block_invoke_86(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    v12 = *MEMORY[0x277D03E88];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 64)];
    v13[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v5 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v4];
    v6 = [*(a1 + 32) conn];

    if (v6)
    {
      v7 = [*(a1 + 32) conn];
      xpc_connection_send_message(v7, v5);
    }

    v8 = *(a1 + 56);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
    (*(v8 + 16))(v8, 0, 0, 10, v9);

    [*(a1 + 32) noteBlockedClientCallChange:1];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2 ^ 1u;
}

- (void)_getStatusReports:(id)reports
{
  v20 = *MEMORY[0x277D85DE8];
  reportsCopy = reports;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v19 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__ESDClient__getStatusReports___block_invoke;
  v15[3] = &unk_278FCDF40;
  v15[4] = self;
  v16 = reportsCopy;
  v17 = v5;
  v9 = v5;
  v10 = reportsCopy;
  v11 = MEMORY[0x24C212500](v15);
  v12 = +[ESDMain sharedMain];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__ESDClient__getStatusReports___block_invoke_88;
  v14[3] = &unk_278FCDEA0;
  v14[4] = self;
  [v12 addToOperationsQueueDisabledCheckAndGoBlock:v14 wrappedBlock:v11];

  v13 = *MEMORY[0x277D85DE8];
}

void __31__ESDClient__getStatusReports___block_invoke(uint64_t a1)
{
  v2 = +[ESDAgentManager sharedManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__ESDClient__getStatusReports___block_invoke_2;
  v4[3] = &unk_278FCE0F8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 getStatusReportDictsWithCompletionBlock:v4];
}

void __31__ESDClient__getStatusReports___block_invoke_2(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      *v12 = 0;
      _os_log_impl(&dword_24A184000, v4, v5, "No status reports available", v12, 2u);
    }

    v3 = MEMORY[0x277CBEBF8];
  }

  v6 = *MEMORY[0x277D03E40];
  v13[0] = *MEMORY[0x277D03E38];
  v13[1] = v6;
  v14[0] = &unk_285D5BDD8;
  v14[1] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v8 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v7];
  v9 = [*(a1 + 32) conn];

  if (v9)
  {
    v10 = [*(a1 + 32) conn];
    xpc_connection_send_message(v10, v8);
  }

  [*(a1 + 32) noteRefreshClientCallChange:1];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetThrottleTimers:(id)timers
{
  v16 = *MEMORY[0x277D85DE8];
  timersCopy = timers;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_24A184000, v7, v8, "_resetThrottleTimersForAccountWithId %@", &v14, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v6)
  {
    accountTimers = [(ESDClient *)selfCopy accountTimers];
    v11 = [accountTimers objectForKeyedSubscript:v6];

    if (v11)
    {
      [v11 killAllTimers];
      accountTimers2 = [(ESDClient *)selfCopy accountTimers];
      [accountTimers2 removeObjectForKey:v6];
    }
  }

  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_beginDownloadingAttachmentEvent:(id)event eventDict:(id)dict
{
  v39 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138412290;
    v36 = transactionId;
    _os_log_impl(&dword_24A184000, v9, v11, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A38]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];

  if (v14)
  {
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [ESDClient _beginDownloadingAttachmentEvent:eventDict:];
    if (v13)
    {
      goto LABEL_5;
    }
  }

  [ESDClient _beginDownloadingAttachmentEvent:eventDict:];
LABEL_5:
  v15 = DALoggingwithCategory();
  v16 = *(v10 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412546;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_24A184000, v15, v16, "_beginDownloadingAttachment UUID: %@, accountID: %@", buf, 0x16u);
  }

  v17 = [[ESDClientAttachmentDownloadDelegate alloc] initWithAccountID:v14 attachmentUUID:v13 client:self];
  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  delegateID = [(ESDClientDelegate *)v17 delegateID];
  [actionDelegatesById setObject:v17 forKeyedSubscript:delegateID];

  v20 = +[ESDMain sharedMain];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __56__ESDClient__beginDownloadingAttachmentEvent_eventDict___block_invoke;
  v31[3] = &unk_278FCDEA0;
  v32 = v17;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__ESDClient__beginDownloadingAttachmentEvent_eventDict___block_invoke_2;
  v28[3] = &unk_278FCDB98;
  v29 = v32;
  v30 = v8;
  v21 = v8;
  v22 = v32;
  [v20 addToOperationsQueueDisabledCheckAndGoBlock:v31 wrappedBlock:v28];

  v33 = *MEMORY[0x277D03A20];
  delegateID2 = [(ESDClientDelegate *)v22 delegateID];
  v34 = delegateID2;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  v25 = [(ESDClient *)self _createReplyToRequest:eventCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v26, v25);
  [(ESDClient *)self noteBlockedClientCallChange:1];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_cancelDownloadingAttachmentEvent:(id)event eventDict:(id)dict
{
  v35 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138412290;
    v34 = transactionId;
    _os_log_impl(&dword_24A184000, v9, v11, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D03A20];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A20]];

  if (!v14)
  {
    [ESDClient _cancelDownloadingAttachmentEvent:eventDict:];
  }

  v15 = DALoggingwithCategory();
  v16 = *(v10 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412290;
    v34 = v14;
    _os_log_impl(&dword_24A184000, v15, v16, "_cancelDownloadingAttachmentEvent downloadID: %@", buf, 0xCu);
  }

  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  v18 = [actionDelegatesById objectForKeyedSubscript:v14];

  if (v18)
  {
    v19 = +[ESDMain sharedMain];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __57__ESDClient__cancelDownloadingAttachmentEvent_eventDict___block_invoke;
    v31[3] = &unk_278FCDEA0;
    v32 = v18;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__ESDClient__cancelDownloadingAttachmentEvent_eventDict___block_invoke_2;
    v28[3] = &unk_278FCDB98;
    v29 = v32;
    v30 = v8;
    [v19 addToOperationsQueueDisabledCheckAndGoBlock:v31 wrappedBlock:v28];

    v20 = v32;
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = *(v10 + 4);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 138412290;
      v34 = v14;
      _os_log_impl(&dword_24A184000, v20, v21, "Received a cancel for download %@, but that download doesn't exist any more", buf, 0xCu);
    }
  }

  delegateID = [v18 delegateID];
  v23 = objc_opt_new();
  v24 = v23;
  if (delegateID)
  {
    [v23 setObject:delegateID forKey:v13];
  }

  v25 = [(ESDClient *)self _createReplyToRequest:eventCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v26, v25);
  [(ESDClient *)self noteBlockedClientCallChange:1];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_respondToSharedCalendarEvent:(id)event eventDict:(id)dict
{
  v47 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138412290;
    v42 = transactionId;
    _os_log_impl(&dword_24A184000, v9, v11, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E20]];
  v15 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E18]];

  intValue = [v15 intValue];
  if (v13)
  {
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_10:
    [ESDClient _respondToSharedCalendarEvent:eventDict:];
    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  [ESDClient _respondToSharedCalendarEvent:eventDict:];
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_11:
  [ESDClient _respondToSharedCalendarEvent:eventDict:];
LABEL_6:
  v17 = intValue;
  v18 = DALoggingwithCategory();
  v19 = *(v10 + 7);
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 138412802;
    v42 = v14;
    v43 = 2048;
    v44 = v17;
    v45 = 2112;
    v46 = v13;
    _os_log_impl(&dword_24A184000, v18, v19, "_respondToSharedCalendar UUID: %@, response: %ld, accountID: %@", buf, 0x20u);
  }

  v20 = [[ESDClientShareResponseDelegate alloc] initWithAccountID:v13 client:self calendarID:v14];
  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  delegateID = [(ESDClientDelegate *)v20 delegateID];
  [actionDelegatesById setObject:v20 forKeyedSubscript:delegateID];

  v23 = +[ESDMain sharedMain];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __53__ESDClient__respondToSharedCalendarEvent_eventDict___block_invoke;
  v38[3] = &unk_278FCDEA0;
  v38[4] = self;
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __53__ESDClient__respondToSharedCalendarEvent_eventDict___block_invoke_2;
  v34 = &unk_278FCE008;
  v36 = v8;
  v37 = v17;
  v35 = v20;
  v24 = v8;
  v25 = v20;
  [v23 addToOperationsQueueDisabledCheckAndGoBlock:v38 wrappedBlock:&v31];

  v39 = *MEMORY[0x277D03E10];
  v26 = [(ESDClientDelegate *)v25 delegateID:v31];
  v40 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  v28 = [(ESDClient *)self _createReplyToRequest:eventCopy withProperties:v27];
  v29 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v29, v28);
  [(ESDClient *)self noteBlockedClientCallChange:1];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_reportSharedCalendarAsJunkEvent:(id)event eventDict:(id)dict
{
  v38 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138412290;
    v35 = transactionId;
    _os_log_impl(&dword_24A184000, v9, v11, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E20]];

  if (v13)
  {
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [ESDClient _reportSharedCalendarAsJunkEvent:eventDict:];
    if (v14)
    {
      goto LABEL_5;
    }
  }

  [ESDClient _reportSharedCalendarAsJunkEvent:eventDict:];
LABEL_5:
  v15 = DALoggingwithCategory();
  v16 = *(v10 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412546;
    v35 = v14;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&dword_24A184000, v15, v16, "_reportSharedCalendarAsJunk UUID: %@, accountID: %@", buf, 0x16u);
  }

  v17 = [[ESDClientShareResponseDelegate alloc] initWithAccountID:v13 client:self calendarID:v14];
  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  delegateID = [(ESDClientDelegate *)v17 delegateID];
  [actionDelegatesById setObject:v17 forKeyedSubscript:delegateID];

  v20 = +[ESDMain sharedMain];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __56__ESDClient__reportSharedCalendarAsJunkEvent_eventDict___block_invoke;
  v31[3] = &unk_278FCDEA0;
  v31[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__ESDClient__reportSharedCalendarAsJunkEvent_eventDict___block_invoke_2;
  v28[3] = &unk_278FCDB98;
  v29 = v17;
  v30 = v8;
  v21 = v8;
  v22 = v17;
  [v20 addToOperationsQueueDisabledCheckAndGoBlock:v31 wrappedBlock:v28];

  v32 = *MEMORY[0x277D03E10];
  delegateID2 = [(ESDClientDelegate *)v22 delegateID];
  v33 = delegateID2;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v25 = [(ESDClient *)self _createReplyToRequest:eventCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v26, v25);
  [(ESDClient *)self noteBlockedClientCallChange:1];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_fillOutEASTimeZoneInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v19 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v9, v7, "Daemon asked to create tz info cache", buf, 2u);
  }

  v10 = +[ESDMain sharedMain];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__ESDClient__fillOutEASTimeZoneInfo___block_invoke;
  v17[3] = &unk_278FCDEA0;
  v17[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__ESDClient__fillOutEASTimeZoneInfo___block_invoke_2;
  v14[3] = &unk_278FCDF40;
  v14[4] = self;
  v15 = infoCopy;
  v16 = v5;
  v11 = v5;
  v12 = infoCopy;
  [v10 addToOperationsQueueDisabledCheckAndGoBlock:v17 wrappedBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __37__ESDClient__fillOutEASTimeZoneInfo___block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CB8F58]);
  v3 = [v2 initWithIdentifier:*MEMORY[0x277CB8C00] description:0];
  v4 = [MEMORY[0x277D079F0] sharedInstance];
  [v4 loadDaemonBundleForACAccountType:v3];

  [NSClassFromString(&cfstr_Astimezone.isa) _cacheTimeZoneInfo];
  v9 = *MEMORY[0x277D03E38];
  v10[0] = &unk_285D5BDD8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v5];
  v7 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  xpc_connection_send_message(v7, v6);

  [*(a1 + 32) noteBlockedClientCallChange:1];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getActiveSyncDeviceIdentifier:(id)identifier
{
  v20[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v18 = 0;
    _os_log_impl(&dword_24A184000, v5, v6, "Processing get active sync device identifier", v18, 2u);
  }

  v7 = objc_alloc(MEMORY[0x277CB8F58]);
  v8 = [v7 initWithIdentifier:*MEMORY[0x277CB8C00] description:0];
  mEMORY[0x277D079F0] = [MEMORY[0x277D079F0] sharedInstance];
  [mEMORY[0x277D079F0] loadDaemonBundleForACAccountType:v8];

  asDeviceID = [NSClassFromString(&cfstr_Asutilslazycla.isa) asDeviceID];
  v11 = DALoggingwithCategory();
  if (os_log_type_enabled(v11, v6))
  {
    *v18 = 0;
    _os_log_impl(&dword_24A184000, v11, v6, "Retrieved active sync device identifier", v18, 2u);
  }

  v19 = *MEMORY[0x277D039F0];
  v20[0] = asDeviceID;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v13 = [(ESDClient *)self _createReplyToRequest:identifierCopy withProperties:v12];

  conn = [(ESDClient *)self conn];

  if (conn)
  {
    v15 = DALoggingwithCategory();
    if (os_log_type_enabled(v15, v6))
    {
      *v18 = 0;
      _os_log_impl(&dword_24A184000, v15, v6, "Returning active sync device identifier", v18, 2u);
    }

    conn2 = [(ESDClient *)self conn];
    xpc_connection_send_message(conn2, v13);
  }

  [(ESDClient *)self noteBlockedClientCallChange:1];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_openServerOofSettingsRequest:(id)request
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v36 = transactionId;
    _os_log_impl(&dword_24A184000, v6, v7, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03CE0]];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03CC0]];
  v13 = v12;
  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    bOOLValue = 0;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  [ESDClient _openServerOofSettingsRequest:];
LABEL_5:
  v26 = v11;
  v15 = [[ESDClientSettingsDelegate alloc] initWithAccountID:v10 requestDictionary:v11 forUpdate:bOOLValue client:self];
  delegateID = [(ESDClientDelegate *)v15 delegateID];
  if (delegateID)
  {
    actionDelegatesById = [(ESDClient *)self actionDelegatesById];
    [actionDelegatesById setObject:v15 forKeyedSubscript:delegateID];

    v33 = *MEMORY[0x277D03CC8];
    v34 = delegateID;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  v27 = requestCopy;
  v19 = [(ESDClient *)self _createReplyToRequest:requestCopy withProperties:v18];
  conn = [(ESDClient *)self conn];

  if (conn)
  {
    conn2 = [(ESDClient *)self conn];
    xpc_connection_send_message(conn2, v19);
  }

  v22 = +[ESDMain sharedMain];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __43__ESDClient__openServerOofSettingsRequest___block_invoke;
  v31[3] = &unk_278FCDEA0;
  v32 = v15;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __43__ESDClient__openServerOofSettingsRequest___block_invoke_2;
  v28[3] = &unk_278FCDB98;
  v29 = v32;
  v30 = v5;
  v23 = v5;
  v24 = v32;
  [v22 addToOperationsQueueDisabledCheckAndGoBlock:v31 wrappedBlock:v28];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_checkIsOofSettingsSupported:(id)supported
{
  v16[1] = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  if (!v6)
  {
    [ESDClient _checkIsOofSettingsSupported:];
  }

  v7 = [[ESDClientSettingsDelegate alloc] initWithAccountID:v6 requestDictionary:0 forUpdate:0 client:self];
  isOofSupported = [(ESDClientSettingsDelegate *)v7 isOofSupported];
  v15 = *MEMORY[0x277D03C50];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:isOofSupported];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v11 = [(ESDClient *)self _createReplyToRequest:supportedCopy withProperties:v10];
  conn = [(ESDClient *)self conn];

  if (conn)
  {
    conn2 = [(ESDClient *)self conn];
    xpc_connection_send_message(conn2, v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_requestCalendarAvailability:(id)availability eventDict:(id)dict
{
  v49 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  availabilityCopy = availability;
  v7 = objc_opt_new();
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v8, v10))
  {
    transactionId = [v7 transactionId];
    *buf = 138412290;
    v40 = transactionId;
    _os_log_impl(&dword_24A184000, v8, v10, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v12 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E28]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03B38]];
  v15 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039F8]];
  v16 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03C38]];

  if (v12)
  {
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    [ESDClient _requestCalendarAvailability:eventDict:];
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  [ESDClient _requestCalendarAvailability:eventDict:];
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_11:
  [ESDClient _requestCalendarAvailability:eventDict:];
LABEL_6:
  v30 = v7;
  v17 = DALoggingwithCategory();
  v18 = *(v9 + 7);
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 138413314;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v16;
    v47 = 2112;
    v48 = v15;
    _os_log_impl(&dword_24A184000, v17, v18, "Starting calendar availability request with accountID: [%@], startDate: [%@], endDate: [%@], ignoredEventID: [%@], addresses: [%@]", buf, 0x34u);
  }

  v19 = [[ESDClientCalendarAvailabilityResponseDelegate alloc] initWithAccountID:v12 client:self startDate:v13 endDate:v14 ignoredEventID:v16 addresses:v15];
  delegateID = [(ESDClientDelegate *)v19 delegateID];
  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  [actionDelegatesById setObject:v19 forKeyedSubscript:delegateID];

  v37 = *MEMORY[0x277D03A58];
  v38 = delegateID;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v22 = v29 = v15;
  v23 = [(ESDClient *)self _createReplyToRequest:availabilityCopy withProperties:v22];
  v24 = xpc_dictionary_get_remote_connection(availabilityCopy);

  xpc_connection_send_message(v24, v23);
  v25 = +[ESDMain sharedMain];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __52__ESDClient__requestCalendarAvailability_eventDict___block_invoke;
  v35[3] = &unk_278FCDEA0;
  v36 = v19;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __52__ESDClient__requestCalendarAvailability_eventDict___block_invoke_2;
  v32[3] = &unk_278FCDB98;
  v33 = v36;
  v34 = v30;
  v26 = v30;
  v27 = v36;
  [v25 addToOperationsQueueDisabledCheckAndGoBlock:v35 wrappedBlock:v32];

  [(ESDClient *)self noteBlockedClientCallChange:1];
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_cancelCalendarAvailabilityRequest:(id)request eventDict:(id)dict
{
  v24 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    transactionId = [v6 transactionId];
    *buf = 138412290;
    v23 = transactionId;
    _os_log_impl(&dword_24A184000, v7, v8, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v10 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A58]];

  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  v12 = [actionDelegatesById objectForKeyedSubscript:v10];

  v13 = +[ESDMain sharedMain];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__ESDClient__cancelCalendarAvailabilityRequest_eventDict___block_invoke;
  v20[3] = &unk_278FCDEA0;
  v21 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__ESDClient__cancelCalendarAvailabilityRequest_eventDict___block_invoke_2;
  v17[3] = &unk_278FCDB98;
  v18 = v21;
  v19 = v6;
  v14 = v6;
  v15 = v21;
  [v13 addToOperationsQueueDisabledCheckAndGoBlock:v20 wrappedBlock:v17];

  [(ESDClient *)self noteBlockedClientCallChange:1];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performCalendarDirectorySearch:(id)search eventDict:(id)dict
{
  v53 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  searchCopy = search;
  v7 = objc_opt_new();
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v8, v10))
  {
    transactionId = [v7 transactionId];
    *buf = 138412290;
    v46 = transactionId;
    _os_log_impl(&dword_24A184000, v8, v10, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v12 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03AA8]];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A88]];
  v34 = v15;
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A90]];
  v33 = v17;
  if (v17)
  {
    unsignedIntegerValue = [v17 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v36 = v13;
  if (!v12)
  {
    [ESDClient _performCalendarDirectorySearch:eventDict:];
  }

  v35 = v7;
  v19 = DALoggingwithCategory();
  v20 = *(v9 + 7);
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138413058;
    v46 = v12;
    v47 = 2112;
    v48 = v16;
    v49 = 2048;
    v50 = unsignedIntegerValue;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&dword_24A184000, v19, v20, "Starting calendar directory search with accountID: [%@] recordTypes: [%@] resultLimit: [%lu] terms: [%@]", buf, 0x2Au);
  }

  v21 = [[ESDClientCalendarDirectorySearchResponseDelegate alloc] initWithAccountID:v12 client:self terms:v14 recordTypes:v16 resultLimit:unsignedIntegerValue];
  delegateID = [(ESDClientDelegate *)v21 delegateID];
  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  [actionDelegatesById setObject:v21 forKeyedSubscript:delegateID];

  v43 = *MEMORY[0x277D03A80];
  v44 = delegateID;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v25 = [(ESDClient *)self _createReplyToRequest:searchCopy withProperties:v24];
  xpc_dictionary_get_remote_connection(searchCopy);
  v32 = v12;
  v27 = v26 = v14;

  xpc_connection_send_message(v27, v25);
  v28 = +[ESDMain sharedMain];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__ESDClient__performCalendarDirectorySearch_eventDict___block_invoke;
  v41[3] = &unk_278FCDEA0;
  v42 = v21;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __55__ESDClient__performCalendarDirectorySearch_eventDict___block_invoke_2;
  v38[3] = &unk_278FCDB98;
  v39 = v42;
  v40 = v35;
  v29 = v35;
  v30 = v42;
  [v28 addToOperationsQueueDisabledCheckAndGoBlock:v41 wrappedBlock:v38];

  [(ESDClient *)self noteBlockedClientCallChange:1];
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_cancelCalendarDirectorySearch:(id)search eventDict:(id)dict
{
  v24 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    transactionId = [v6 transactionId];
    *buf = 138412290;
    v23 = transactionId;
    _os_log_impl(&dword_24A184000, v7, v8, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v10 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A80]];

  actionDelegatesById = [(ESDClient *)self actionDelegatesById];
  v12 = [actionDelegatesById objectForKeyedSubscript:v10];

  v13 = +[ESDMain sharedMain];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__ESDClient__cancelCalendarDirectorySearch_eventDict___block_invoke;
  v20[3] = &unk_278FCDEA0;
  v21 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__ESDClient__cancelCalendarDirectorySearch_eventDict___block_invoke_2;
  v17[3] = &unk_278FCDB98;
  v18 = v21;
  v19 = v6;
  v14 = v6;
  v15 = v21;
  [v13 addToOperationsQueueDisabledCheckAndGoBlock:v20 wrappedBlock:v17];

  [(ESDClient *)self noteBlockedClientCallChange:1];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_getAccountExternalIdentification:(id)identification eventDict:(id)dict
{
  v19[3] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D039D0];
  identificationCopy = identification;
  v8 = [dict objectForKeyedSubscript:v6];
  v9 = +[ESDAgentManager sharedManager];
  v10 = [v9 accountWithAccountID:v8];

  if (v10)
  {
    v18[0] = *MEMORY[0x277D039E0];
    host = [v10 host];
    v19[0] = host;
    v18[1] = *MEMORY[0x277D039E8];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "port")}];
    v19[1] = v12;
    v18[2] = *MEMORY[0x277D039D8];
    emailAddresses = [v10 emailAddresses];
    v19[2] = emailAddresses;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  v15 = [(ESDClient *)self _createReplyToRequest:identificationCopy withProperties:v14];
  v16 = xpc_dictionary_get_remote_connection(identificationCopy);

  xpc_connection_send_message(v16, v15);
  [(ESDClient *)self noteBlockedClientCallChange:1];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_asPolicyKeyChanged:(id)changed
{
  v25[3] = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  conn = [(ESDClient *)self conn];

  if (conn)
  {
    object = [changedCopy object];
    userInfo = [changedCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D038B0]];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &stru_285D58A48;
    }

    userInfo2 = [changedCopy userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D038A8]];

    if (object)
    {
      v12 = *MEMORY[0x277D03C88];
      v13 = *MEMORY[0x277D03D18];
      v14 = *MEMORY[0x277D039D0];
      if (v11)
      {
        v22[0] = *MEMORY[0x277D03C88];
        v22[1] = v14;
        v23[0] = v13;
        v23[1] = object;
        v15 = *MEMORY[0x277D03D20];
        v23[2] = v9;
        v16 = *MEMORY[0x277D03D10];
        v22[2] = v15;
        v22[3] = v16;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "code")}];
        v23[3] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
      }

      else
      {
        v24[0] = *MEMORY[0x277D03C88];
        v24[1] = v14;
        v25[0] = v13;
        v25[1] = object;
        v24[2] = *MEMORY[0x277D03D20];
        v25[2] = v9;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
      }

      v19 = _CFXPCCreateXPCObjectFromCFObject();
      conn2 = [(ESDClient *)self conn];
      xpc_connection_send_message(conn2, v19);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_requestClientStatusDump:(id)dump
{
  v10[1] = *MEMORY[0x277D85DE8];
  conn = [(ESDClient *)self conn];

  if (conn)
  {
    v9 = *MEMORY[0x277D03C88];
    v10[0] = *MEMORY[0x277D03C60];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    conn2 = [(ESDClient *)self conn];
    xpc_connection_send_message(conn2, v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_foldersUpdated:(id)updated
{
  v33 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v7))
  {
    *buf = 138412290;
    v32 = updatedCopy;
    _os_log_impl(&dword_24A184000, v5, v7, "Received folder updated notification %@", buf, 0xCu);
  }

  object = [updatedCopy object];
  accountID = [object accountID];

  userInfo = [updatedCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D038D0]];

  if (v11)
  {
    watchedIDs = [(ESDClient *)self watchedIDs];
    v13 = [watchedIDs objectForKeyedSubscript:accountID];

    if (!v13)
    {
      allObjects = v11;
LABEL_15:

      goto LABEL_16;
    }

    v14 = [MEMORY[0x277CBEB58] setWithArray:v11];
    [v14 intersectSet:v13];
    allObjects = [v14 allObjects];

    if (allObjects)
    {
      conn = [(ESDClient *)self conn];

      if (conn)
      {
        v17 = *MEMORY[0x277D03BC0];
        v18 = *MEMORY[0x277D039D0];
        v29[0] = *MEMORY[0x277D03C88];
        v29[1] = v18;
        v30[0] = v17;
        v30[1] = accountID;
        v29[2] = *MEMORY[0x277D03BA8];
        v30[2] = allObjects;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
        v20 = _CFXPCCreateXPCObjectFromCFObject();
        conn2 = [(ESDClient *)self conn];
        xpc_connection_send_message(conn2, v20);
      }

      else
      {
        v19 = [MEMORY[0x277CBEB58] setWithArray:allObjects];
        updatedIDs = [(ESDClient *)self updatedIDs];
        v20 = [updatedIDs objectForKeyedSubscript:accountID];

        if (v20)
        {
          [v19 unionSet:v20];
        }

        updatedIDs2 = [(ESDClient *)self updatedIDs];
        [updatedIDs2 setObject:v19 forKey:accountID];

        v24 = DALoggingwithCategory();
        v25 = *(v6 + 6);
        if (os_log_type_enabled(v24, v25))
        {
          clientBundleID = [(ESDClient *)self clientBundleID];
          *buf = 138412290;
          v32 = clientBundleID;
          _os_log_impl(&dword_24A184000, v24, v25, "Launching %@", buf, 0xCu);
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D07B10], 0, 0, 1u);
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_agentsStopped:(id)stopped
{
  accountTimers = [(ESDClient *)self accountTimers];
  [accountTimers removeAllObjects];
}

- (void)applyClientStatusReportToAggregator:(id)aggregator
{
  v14[1] = *MEMORY[0x277D85DE8];
  aggregatorCopy = aggregator;
  if (applyClientStatusReportToAggregator__once != -1)
  {
    [ESDClient applyClientStatusReportToAggregator:];
  }

  conn = [(ESDClient *)self conn];

  if (conn)
  {
    v13 = *MEMORY[0x277D03C88];
    v14[0] = *MEMORY[0x277D03BE0];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = _CFXPCCreateXPCObjectFromCFObject();
    conn2 = [(ESDClient *)self conn];
    v9 = applyClientStatusReportToAggregator__aggregatorQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__ESDClient_applyClientStatusReportToAggregator___block_invoke_2;
    v11[3] = &unk_278FCDD38;
    v12 = aggregatorCopy;
    xpc_connection_send_message_with_reply(conn2, v7, v9, v11);
  }

  else
  {
    [aggregatorCopy noteAdditionalReportDicts:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __49__ESDClient_applyClientStatusReportToAggregator___block_invoke()
{
  applyClientStatusReportToAggregator__aggregatorQueue = dispatch_queue_create("com.apple.dataaccess.statusreportaggregator", 0);

  return MEMORY[0x2821F96F8]();
}

void __49__ESDClient_applyClientStatusReportToAggregator___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (MEMORY[0x24C2127F0]() == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D03E40]];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  [*(a1 + 32) noteAdditionalReportDicts:v4];
}

- (void)_clientDiedWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = MEMORY[0x277D863F0];
  v6 = DALoggingwithCategory();
  v7 = v6;
  if (reasonCopy == v5 || reasonCopy == MEMORY[0x277D863F8])
  {
    v11 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v11))
    {
      v15 = 0;
      v9 = "Client of ESDClient died, cleaning up.";
      v10 = &v15;
LABEL_10:
      _os_log_impl(&dword_24A184000, v7, v11, v9, v10, 2u);
    }
  }

  else
  {
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v11))
    {
      LOWORD(v14) = 0;
      v9 = "LOOK AT ME!!!! Got an unknown error, the client messed with our connection in a way we weren't expecting.  If you're seeing this, get ready for some pain";
      v10 = &v14;
      goto LABEL_10;
    }
  }

  if ([(ESDClient *)self persistent]&& ([(ESDClient *)self clientBundleID], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    [(ESDClient *)self persistentClientCleanup];
  }

  else
  {
    [(ESDClient *)self disable];
  }
}

- (void)_dispatchMessage:(id)message
{
  v174 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (![(DADisableableObject *)self isDisabled])
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03C88]];
    v7 = objc_opt_new();
    v8 = DALoggingwithCategory();
    v9 = MEMORY[0x277D03988];
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v10))
    {
      transactionId = [v7 transactionId];
      *buf = 138412290;
      v173 = transactionId;
      _os_log_impl(&dword_24A184000, v8, v10, "DATransaction starting, ID: %@", buf, 0xCu);
    }

    v12 = DALoggingwithCategory();
    v13 = *(v9 + 7);
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      v173 = v6;
      _os_log_impl(&dword_24A184000, v12, v13, "Received xpc message %@", buf, 0xCu);
    }

    if ([v6 isEqualToString:*MEMORY[0x277D03A48]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v14 = gDADHighAvailabilityQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__ESDClient__dispatchMessage___block_invoke;
      block[3] = &unk_278FCDF40;
      block[4] = self;
      v170 = messageCopy;
      v171 = v7;
      dispatch_async(v14, block);

      v15 = v170;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03E50]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v16 = gDADHighAvailabilityQueue;
      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = __30__ESDClient__dispatchMessage___block_invoke_2;
      v166[3] = &unk_278FCDF40;
      v166[4] = self;
      v167 = messageCopy;
      v168 = v7;
      dispatch_async(v16, v166);

      v15 = v167;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03DB0]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v17 = gDADHighAvailabilityQueue;
      v163[0] = MEMORY[0x277D85DD0];
      v163[1] = 3221225472;
      v163[2] = __30__ESDClient__dispatchMessage___block_invoke_3;
      v163[3] = &unk_278FCDF40;
      v163[4] = self;
      v164 = messageCopy;
      v165 = v7;
      dispatch_async(v17, v163);

      v15 = v164;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03E80]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v18 = gDADHighAvailabilityQueue;
      v160[0] = MEMORY[0x277D85DD0];
      v160[1] = 3221225472;
      v160[2] = __30__ESDClient__dispatchMessage___block_invoke_4;
      v160[3] = &unk_278FCDF40;
      v160[4] = self;
      v161 = messageCopy;
      v162 = v7;
      dispatch_async(v18, v160);

      v15 = v161;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03E30]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v19 = gDADHighAvailabilityQueue;
      v157[0] = MEMORY[0x277D85DD0];
      v157[1] = 3221225472;
      v157[2] = __30__ESDClient__dispatchMessage___block_invoke_5;
      v157[3] = &unk_278FCDF40;
      v157[4] = self;
      v158 = messageCopy;
      v159 = v7;
      dispatch_async(v19, v157);

      v15 = v158;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03E48]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v20 = gDADHighAvailabilityQueue;
      v154[0] = MEMORY[0x277D85DD0];
      v154[1] = 3221225472;
      v154[2] = __30__ESDClient__dispatchMessage___block_invoke_6;
      v154[3] = &unk_278FCDF40;
      v154[4] = self;
      v155 = messageCopy;
      v156 = v7;
      dispatch_async(v20, v154);

      v15 = v155;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03BD0]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v21 = gDADHighAvailabilityQueue;
      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 3221225472;
      v151[2] = __30__ESDClient__dispatchMessage___block_invoke_7;
      v151[3] = &unk_278FCDF40;
      v151[4] = self;
      v152 = messageCopy;
      v153 = v7;
      dispatch_async(v21, v151);

      v15 = v152;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D88]])
    {
      v22 = gDADHighAvailabilityQueue;
      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = __30__ESDClient__dispatchMessage___block_invoke_8;
      v148[3] = &unk_278FCDF40;
      v148[4] = self;
      v149 = messageCopy;
      v150 = v7;
      dispatch_async(v22, v148);

      v15 = v149;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D70]])
    {
      v23 = gDADHighAvailabilityQueue;
      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = __30__ESDClient__dispatchMessage___block_invoke_9;
      v145[3] = &unk_278FCDF40;
      v145[4] = self;
      v146 = messageCopy;
      v147 = v7;
      dispatch_async(v23, v145);

      v15 = v146;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D60]])
    {
      v24 = gDADHighAvailabilityQueue;
      v142[0] = MEMORY[0x277D85DD0];
      v142[1] = 3221225472;
      v142[2] = __30__ESDClient__dispatchMessage___block_invoke_10;
      v142[3] = &unk_278FCDF40;
      v142[4] = self;
      v143 = messageCopy;
      v144 = v7;
      dispatch_async(v24, v142);

      v15 = v143;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D78]])
    {
      v25 = gDADHighAvailabilityQueue;
      v139[0] = MEMORY[0x277D85DD0];
      v139[1] = 3221225472;
      v139[2] = __30__ESDClient__dispatchMessage___block_invoke_11;
      v139[3] = &unk_278FCDF40;
      v139[4] = self;
      v140 = messageCopy;
      v141 = v7;
      dispatch_async(v25, v139);

      v15 = v140;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03CF0]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v26 = gDADHighAvailabilityQueue;
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = __30__ESDClient__dispatchMessage___block_invoke_12;
      v136[3] = &unk_278FCDF40;
      v136[4] = self;
      v137 = messageCopy;
      v138 = v7;
      dispatch_async(v26, v136);

      v15 = v137;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03AE0]])
    {
      v27 = gDADHighAvailabilityQueue;
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __30__ESDClient__dispatchMessage___block_invoke_13;
      v133[3] = &unk_278FCDF40;
      v133[4] = self;
      v134 = messageCopy;
      v135 = v7;
      dispatch_async(v27, v133);

      v15 = v134;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D30]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v28 = gDADHighAvailabilityQueue;
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = __30__ESDClient__dispatchMessage___block_invoke_14;
      v130[3] = &unk_278FCDF40;
      v130[4] = self;
      v131 = messageCopy;
      v132 = v7;
      dispatch_async(v28, v130);

      v15 = v131;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03A10]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v29 = gDADHighAvailabilityQueue;
      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = __30__ESDClient__dispatchMessage___block_invoke_15;
      v127[3] = &unk_278FCDF40;
      v127[4] = self;
      v128 = messageCopy;
      v129 = v7;
      dispatch_async(v29, v127);

      v15 = v128;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D98]])
    {
      v30 = gDADHighAvailabilityQueue;
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __30__ESDClient__dispatchMessage___block_invoke_16;
      v124[3] = &unk_278FCDF40;
      v124[4] = self;
      v125 = messageCopy;
      v126 = v7;
      dispatch_async(v30, v124);

      v15 = v125;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03DF8]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v31 = gDADHighAvailabilityQueue;
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __30__ESDClient__dispatchMessage___block_invoke_17;
      v121[3] = &unk_278FCDF40;
      v121[4] = self;
      v122 = messageCopy;
      v123 = v7;
      dispatch_async(v31, v121);

      v15 = v122;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D40]])
    {
      v32 = gDADHighAvailabilityQueue;
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __30__ESDClient__dispatchMessage___block_invoke_18;
      v118[3] = &unk_278FCDF40;
      v118[4] = self;
      v119 = messageCopy;
      v120 = v7;
      dispatch_async(v32, v118);

      v15 = v119;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03C30]])
    {
      v33 = gDADHighAvailabilityQueue;
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __30__ESDClient__dispatchMessage___block_invoke_19;
      v115[3] = &unk_278FCDF40;
      v115[4] = self;
      v116 = messageCopy;
      v117 = v7;
      dispatch_async(v33, v115);

      v15 = v116;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D28]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v34 = gDADHighAvailabilityQueue;
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __30__ESDClient__dispatchMessage___block_invoke_20;
      v112[3] = &unk_278FCDF40;
      v112[4] = self;
      v113 = messageCopy;
      v114 = v7;
      dispatch_async(v34, v112);

      v15 = v113;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03BD8]])
    {
      [(ESDClient *)self noteRefreshClientCallChange:0];
      v35 = gDADHighAvailabilityQueue;
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __30__ESDClient__dispatchMessage___block_invoke_21;
      v109[3] = &unk_278FCDF40;
      v109[4] = self;
      v110 = messageCopy;
      v111 = v7;
      dispatch_async(v35, v109);

      v15 = v110;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D38]])
    {
      v36 = gDADHighAvailabilityQueue;
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __30__ESDClient__dispatchMessage___block_invoke_22;
      v106[3] = &unk_278FCDF40;
      v106[4] = self;
      v107 = messageCopy;
      v108 = v7;
      dispatch_async(v36, v106);

      v15 = v107;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03DA0]])
    {
      v37 = gDADHighAvailabilityQueue;
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __30__ESDClient__dispatchMessage___block_invoke_23;
      v103[3] = &unk_278FCDF40;
      v103[4] = self;
      v104 = messageCopy;
      v105 = v7;
      dispatch_async(v37, v103);

      v15 = v104;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03A40]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v38 = gDADHighAvailabilityQueue;
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __30__ESDClient__dispatchMessage___block_invoke_24;
      v99[3] = &unk_278FCDE78;
      v99[4] = self;
      v100 = messageCopy;
      v101 = v5;
      v102 = v7;
      dispatch_async(v38, v99);

      v15 = v100;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03AD0]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v39 = gDADHighAvailabilityQueue;
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __30__ESDClient__dispatchMessage___block_invoke_25;
      v95[3] = &unk_278FCDE78;
      v95[4] = self;
      v96 = messageCopy;
      v97 = v5;
      v98 = v7;
      dispatch_async(v39, v95);

      v15 = v96;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03DA8]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v40 = gDADHighAvailabilityQueue;
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __30__ESDClient__dispatchMessage___block_invoke_26;
      v91[3] = &unk_278FCDE78;
      v91[4] = self;
      v92 = messageCopy;
      v93 = v5;
      v94 = v7;
      dispatch_async(v40, v91);

      v15 = v92;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D48]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v41 = gDADHighAvailabilityQueue;
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __30__ESDClient__dispatchMessage___block_invoke_27;
      v87[3] = &unk_278FCDE78;
      v87[4] = self;
      v88 = messageCopy;
      v89 = v5;
      v90 = v7;
      dispatch_async(v41, v87);

      v15 = v88;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03B88]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v42 = gDADHighAvailabilityQueue;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __30__ESDClient__dispatchMessage___block_invoke_28;
      v84[3] = &unk_278FCDF40;
      v84[4] = self;
      v85 = messageCopy;
      v86 = v7;
      dispatch_async(v42, v84);

      v15 = v85;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03BC8]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v43 = gDADHighAvailabilityQueue;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __30__ESDClient__dispatchMessage___block_invoke_29;
      v81[3] = &unk_278FCDF40;
      v81[4] = self;
      v82 = messageCopy;
      v83 = v7;
      dispatch_async(v43, v81);

      v15 = v82;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03CD0]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v44 = gDADHighAvailabilityQueue;
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __30__ESDClient__dispatchMessage___block_invoke_30;
      v78[3] = &unk_278FCDF40;
      v78[4] = self;
      v79 = messageCopy;
      v80 = v7;
      dispatch_async(v44, v78);

      v15 = v79;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03C48]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v45 = gDADHighAvailabilityQueue;
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __30__ESDClient__dispatchMessage___block_invoke_31;
      v75[3] = &unk_278FCDF40;
      v75[4] = self;
      v76 = messageCopy;
      v77 = v7;
      dispatch_async(v45, v75);

      v15 = v76;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03D68]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v46 = gDADHighAvailabilityQueue;
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __30__ESDClient__dispatchMessage___block_invoke_32;
      v71[3] = &unk_278FCDE78;
      v71[4] = self;
      v72 = messageCopy;
      v73 = v5;
      v74 = v7;
      dispatch_async(v46, v71);

      v15 = v72;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03AB8]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v47 = gDADHighAvailabilityQueue;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __30__ESDClient__dispatchMessage___block_invoke_33;
      v67[3] = &unk_278FCDE78;
      v67[4] = self;
      v68 = messageCopy;
      v69 = v5;
      v70 = v7;
      dispatch_async(v47, v67);

      v15 = v68;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03CF8]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v48 = gDADHighAvailabilityQueue;
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __30__ESDClient__dispatchMessage___block_invoke_34;
      v63[3] = &unk_278FCDE78;
      v63[4] = self;
      v64 = messageCopy;
      v65 = v5;
      v66 = v7;
      dispatch_async(v48, v63);

      v15 = v64;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03AC0]])
    {
      [(ESDClient *)self noteBlockedClientCallChange:0];
      v49 = gDADHighAvailabilityQueue;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __30__ESDClient__dispatchMessage___block_invoke_35;
      v59[3] = &unk_278FCDE78;
      v59[4] = self;
      v60 = messageCopy;
      v61 = v5;
      v62 = v7;
      dispatch_async(v49, v59);

      v15 = v60;
    }

    else
    {
      if (![v6 isEqualToString:*MEMORY[0x277D03D58]])
      {
        v52 = DALoggingwithCategory();
        v53 = *(v9 + 3);
        if (os_log_type_enabled(v52, v53))
        {
          *buf = 0;
          _os_log_impl(&dword_24A184000, v52, v53, "unknown request sent to client.", buf, 2u);
        }

        v54 = DALoggingwithCategory();
        if (os_log_type_enabled(v54, v53))
        {
          *buf = 138412290;
          v173 = v5;
          _os_log_impl(&dword_24A184000, v54, v53, "request: %@", buf, 0xCu);
        }

        goto LABEL_80;
      }

      [(ESDClient *)self noteBlockedClientCallChange:0];
      v50 = gDADHighAvailabilityQueue;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __30__ESDClient__dispatchMessage___block_invoke_36;
      v55[3] = &unk_278FCDE78;
      v55[4] = self;
      v56 = messageCopy;
      v57 = v5;
      v58 = v7;
      dispatch_async(v50, v55);

      v15 = v56;
    }

LABEL_80:
    goto LABEL_81;
  }

  v5 = xpc_dictionary_get_remote_connection(messageCopy);
  xpc_connection_cancel(v5);
LABEL_81:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)reconnectWithConnection:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [v1 clientBundleID];
  [v3 handleFailureInMethod:v0 object:v1 file:@"ESDClient.m" lineNumber:165 description:{@"ESDClient already has a connection. Client bundle ID is: %@", v2}];
}

- (void)_openServerContactsSearch:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_openServerContactsSearch:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_beginDownloadingAttachmentEvent:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_beginDownloadingAttachmentEvent:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_cancelDownloadingAttachmentEvent:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_respondToSharedCalendarEvent:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_respondToSharedCalendarEvent:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_respondToSharedCalendarEvent:eventDict:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_reportSharedCalendarAsJunkEvent:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_reportSharedCalendarAsJunkEvent:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_openServerOofSettingsRequest:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_checkIsOofSettingsSupported:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_requestCalendarAvailability:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_requestCalendarAvailability:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_requestCalendarAvailability:eventDict:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_performCalendarDirectorySearch:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end