@interface MGDaemon
+ (id)daemon;
+ (id)daemonWithTopologyRequestHandler:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MGClientService)serviceForIngestion;
- (MGDaemon)init;
- (MGDaemon)initWithTopologyRequestHandler:(id)a3 serviceListenerProvider:(id)a4;
- (id)startInternalQueryWithPredicate:(id)a3 handler:(id)a4;
- (void)HomeKitAccessoryOfType:(id)a3 accessoryIdentifier:(id)a4 homeIdentifier:(id)a5 categoryType:(id)a6 name:(id)a7 properties:(id)a8 completion:(id)a9;
- (void)_addHomeKitAccessoryWithoutHomeIngestion:(id)a3 fromHome:(id)a4;
- (void)_fetchGroupInfo:(id)a3 completion:(id)a4;
- (void)_homeTheaterGroupIdentifierForAudioDestination:(id)a3 fromHome:(id)a4 completion:(id)a5;
- (void)_ingestHomeKitHome:(id)a3;
- (void)addHomeKitAccessory:(id)a3 fromHome:(id)a4;
- (void)addHomeKitHome:(id)a3;
- (void)addHomeKitMediaSystem:(id)a3;
- (void)addHomeKitMediaSystem:(id)a3 fromHome:(id)a4;
- (void)addHomeKitRoom:(id)a3 fromHome:(id)a4;
- (void)addHomeKitZone:(id)a3 fromHome:(id)a4;
- (void)addMember:(id)a3 group:(id)a4 completion:(id)a5;
- (void)createGroupWithType:(id)a3 name:(id)a4 members:(id)a5 completion:(id)a6;
- (void)deleteGroup:(id)a3 completion:(id)a4;
- (void)groupsQueryAgent:(id)a3 didFindResults:(id)a4 forQuery:(id)a5;
- (void)removeHomeKitAccessory:(id)a3 fromHome:(id)a4;
- (void)removeHomeKitHome:(id)a3;
- (void)removeHomeKitMediaSystem:(id)a3;
- (void)removeHomeKitMediaSystem:(id)a3 fromHome:(id)a4;
- (void)removeHomeKitRoom:(id)a3 fromHome:(id)a4;
- (void)removeHomeKitZone:(id)a3 fromHome:(id)a4;
- (void)removeMember:(id)a3 group:(id)a4 completion:(id)a5;
- (void)setName:(id)a3 group:(id)a4 completion:(id)a5;
- (void)setTopologyRequestHandler:(id)a3;
- (void)startOutstandingQueryWithPredicate:(id)a3 handler:(id)a4 completion:(id)a5;
- (void)startQueryWithPredicate:(id)a3 completion:(id)a4;
- (void)stopInternalQuery:(id)a3;
- (void)stopOutstandingQuery:(id)a3;
- (void)stopQuery:(id)a3;
- (void)stopQuery:(id)a3 completion:(id)a4;
@end

@implementation MGDaemon

- (MGDaemon)initWithTopologyRequestHandler:(id)a3 serviceListenerProvider:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v71.receiver = self;
  v71.super_class = MGDaemon;
  v8 = [(MGDaemon *)&v71 init];
  if (v8)
  {
    v9 = objc_alloc_init(MGServiceClientSet);
    clients = v8->_clients;
    v8->_clients = v9;

    v11 = MEMORY[0x259C85F90](v6);
    topologyRequestHandler = v8->_topologyRequestHandler;
    v8->_topologyRequestHandler = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = [MEMORY[0x277CCAC38] processInfo];
    v15 = [v14 arguments];

    v16 = [v15 indexOfObject:@"--static"];
    v17 = &off_258662000;
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v16 + 1;
      if (v16 + 1 < [v15 count])
      {
        v19 = [v15 objectAtIndex:v18];
        v20 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v21 = [v19 stringByTrimmingCharactersInSet:v20];

        if ([(MGDaemon *)v21 length])
        {
          v22 = MGLogForCategory(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v73 = v21;
            _os_log_impl(&dword_25863A000, v22, OS_LOG_TYPE_DEFAULT, "Attempting to use static groups file at %@", buf, 0xCu);
          }

          v70 = 0;
          v58 = v21;
          v23 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v21 options:0 error:&v70];
          v24 = v70;
          v59 = v23;
          if (v23)
          {
            v56 = v20;
            v25 = MEMORY[0x277CCAAC8];
            v26 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
            v69 = v24;
            v27 = [v25 unarchivedObjectOfClasses:v26 fromData:v23 error:&v69];
            v57 = v69;

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 enumerateObjectsUsingBlock:&__block_literal_global_4];
              v67[0] = MEMORY[0x277D85DD0];
              v67[1] = 3221225472;
              v67[2] = __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_2;
              v67[3] = &unk_27989F620;
              v68 = v13;
              [v68 enumerateKeysAndObjectsUsingBlock:v67];
              v28 = v68;
              v20 = v56;
              v21 = v58;
            }

            else
            {
              v28 = MGLogForCategory(0);
              v21 = v58;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v73 = v57;
                _os_log_error_impl(&dword_25863A000, v28, OS_LOG_TYPE_ERROR, "Failed to unarchive static groups file (%@)", buf, 0xCu);
              }

              v20 = v56;
            }

            v24 = v57;
          }

          else
          {
            v27 = MGLogForCategory(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v73 = v24;
              _os_log_error_impl(&dword_25863A000, v27, OS_LOG_TYPE_ERROR, "Failed to read static groups file (%@)", buf, 0xCu);
            }

            v21 = v58;
          }

          v17 = &off_258662000;
        }
      }
    }

    v29 = [[MGGroupsQueryAgent alloc] initWithDelegate:v8];
    queryAgent = v8->_queryAgent;
    v8->_queryAgent = v29;

    v31 = [[MGGroupsMediator alloc] initWithGroupsQueryAgent:v8->_queryAgent];
    [(MGGroupsMediator *)v31 setAllowsClientEdits:1];
    objc_storeStrong(&v8->_localGroupsMediator, v31);
    v32 = [[MGGroupsMediator alloc] initWithGroupsQueryAgent:v8->_queryAgent];
    homekitGroupsMediator = v8->_homekitGroupsMediator;
    v8->_homekitGroupsMediator = v32;

    v34 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    internalQueries = v8->_internalQueries;
    v8->_internalQueries = v34;

    objc_storeStrong(&v8->_listenerProvider, a4);
    v36 = [(MGServiceListenerProvider *)v8->_listenerProvider dispatchQueue];
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v36;

    v38 = [(MGServiceListenerProvider *)v8->_listenerProvider serviceListener];
    listener = v8->_listener;
    v8->_listener = v38;

    [(NSXPCListener *)v8->_listener _setQueue:v8->_dispatchQueue];
    [(NSXPCListener *)v8->_listener setDelegate:v8];
    if ([v13 count])
    {
      v40 = [(MGGroupsMediator *)v31 startActivityWithName:@"Startup"];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = *(v17 + 362);
      v65[2] = __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_71;
      v65[3] = &unk_27989F620;
      v66 = v31;
      [v13 enumerateKeysAndObjectsUsingBlock:v65];
    }

    else
    {
      v40 = 0;
    }

    v41 = MGLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v8->_listener;
      *buf = 134218240;
      v73 = v8;
      v74 = 2048;
      v75 = v42;
      _os_log_impl(&dword_25863A000, v41, OS_LOG_TYPE_DEFAULT, "%p created with listener %p", buf, 0x16u);
    }

    v43 = MGLogForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v8->_queryAgent;
      *buf = 134218240;
      v73 = v8;
      v74 = 2048;
      v75 = v44;
      _os_log_impl(&dword_25863A000, v43, OS_LOG_TYPE_DEFAULT, "%p using %p for groups query", buf, 0x16u);
    }

    v45 = MGLogForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      localGroupsMediator = v8->_localGroupsMediator;
      *buf = 134218240;
      v73 = v8;
      v74 = 2048;
      v75 = localGroupsMediator;
      _os_log_impl(&dword_25863A000, v45, OS_LOG_TYPE_DEFAULT, "%p using %p for local groups mediation", buf, 0x16u);
    }

    v47 = MGLogForCategory(0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v8->_homekitGroupsMediator;
      *buf = 134218240;
      v73 = v8;
      v74 = 2048;
      v75 = v48;
      _os_log_impl(&dword_25863A000, v47, OS_LOG_TYPE_DEFAULT, "%p using %p for HomeKit groups mediation", buf, 0x16u);
    }

    if (_os_feature_enabled_impl())
    {
      v49 = [[MGRemoteQueryClientManager alloc] initWithQueryRunner:v8 groupsQueryAgent:v8->_queryAgent];
      remoteQueryClient = v8->_remoteQueryClient;
      v8->_remoteQueryClient = v49;
    }

    v51 = v8->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = *(v17 + 362);
    block[2] = __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_75;
    block[3] = &unk_27989F648;
    v61 = v8;
    v62 = v7;
    v63 = v40;
    v64 = v31;
    v52 = v31;
    v53 = v40;
    dispatch_async(v51, block);
  }

  v54 = *MEMORY[0x277D85DE8];
  return v8;
}

void __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 memberIdentifiers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_3;
  v5[3] = &unk_27989F5F8;
  v6 = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    v4 = MGClassForGroupIdentifier(v9);
    if (v4)
    {
      v5 = v4;
      v6 = [v4 alloc];
      v7 = [(objc_class *)v5 type];
      v8 = [v6 initWithConnectionProvider:0 type:v7 identifier:v9 name:&stru_2869A5BE8 properties:0 memberIdentifiers:MEMORY[0x277CBEBF8]];

      [*(a1 + 32) setObject:v8 forKey:v9];
    }
  }
}

void __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_75(uint64_t a1)
{
  [*(*(a1 + 32) + 24) resume];
  v2 = [*(a1 + 40) serviceName];
  v3 = [v2 stringByAppendingString:@".ready"];
  notify_post([v3 UTF8String]);

  if (*(a1 + 48))
  {
    v4 = *(a1 + 56);

    [v4 endActivity:?];
  }
}

- (MGDaemon)init
{
  v3 = [[MGServiceListenerProvider alloc] initWithServiceName:@"com.apple.MediaGroups.daemon" entitlement:@"com.apple.MediaGroups.client"];
  v4 = [(MGDaemon *)self initWithTopologyRequestHandler:0 serviceListenerProvider:v3];

  return v4;
}

+ (id)daemonWithTopologyRequestHandler:(id)a3
{
  v4 = a3;
  v5 = [[MGServiceListenerProvider alloc] initWithServiceName:@"com.apple.MediaGroups.daemon" entitlement:@"com.apple.MediaGroups.client"];
  v6 = [[a1 alloc] initWithTopologyRequestHandler:v4 serviceListenerProvider:v5];

  return v6;
}

+ (id)daemon
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)setTopologyRequestHandler:(id)a3
{
  v4 = a3;
  v5 = [(MGDaemon *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__MGDaemon_setTopologyRequestHandler___block_invoke;
  v7[3] = &unk_27989F6C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __38__MGDaemon_setTopologyRequestHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x259C85F90](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  if (*(a1 + 40))
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v5 = [*(a1 + 32) clients];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__MGDaemon_setTopologyRequestHandler___block_invoke_2;
    v18[3] = &unk_27989F698;
    v20 = &v21;
    v19 = *(a1 + 40);
    [v5 enumerateClientsUsingBlock:v18];

    if ((v22[3] & 1) == 0)
    {
      [*(a1 + 32) internalQueries];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v6 = v15 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v25 count:16];
      if (v7)
      {
        v8 = *v15;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            v11 = [*(a1 + 32) queryAgent];
            v12 = [v11 outstandingQueryForIdentifier:v10];

            if ([v12 requiresTopology])
            {
              (*(*(a1 + 40) + 16))();

              goto LABEL_13;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v14 objects:v25 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    _Block_object_dispose(&v21, 8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __38__MGDaemon_setTopologyRequestHandler___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__MGDaemon_setTopologyRequestHandler___block_invoke_3;
  v8[3] = &unk_27989F670;
  v7 = *(a1 + 32);
  v6 = v7;
  v9 = v7;
  [a2 enumerateQueriesUsingBlock:v8];
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

uint64_t __38__MGDaemon_setTopologyRequestHandler___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 requiresTopology];
  *a3 = result;
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }

  return result;
}

- (MGClientService)serviceForIngestion
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = self->_serviceForIngestion;
  if (!v3)
  {
    v4 = [MEMORY[0x277D27440] clientServiceWithConnectionProvider:0];
    serviceForIngestion = self->_serviceForIngestion;
    self->_serviceForIngestion = v4;

    v3 = self->_serviceForIngestion;
    v6 = MGLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218240;
      v10 = self;
      v11 = 2048;
      v12 = v3;
      _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p created service %p for ingestion", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)groupsQueryAgent:(id)a3 didFindResults:(id)a4 forQuery:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v26 + 1) + 8 * v14) group];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v17 = [(MGDaemon *)self dispatchQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke;
  v22[3] = &unk_27989F648;
  v22[4] = self;
  v23 = v8;
  v24 = v16;
  v25 = v10;
  v18 = v10;
  v19 = v16;
  v20 = v8;
  dispatch_async(v17, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v2 = [*(a1 + 32) clients];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_2;
  v21[3] = &unk_27989F738;
  v25 = &v31;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v22 = v3;
  v23 = v4;
  v26 = &v27;
  v24 = *(a1 + 48);
  [v2 enumerateClientsUsingBlock:v21];

  if ((v32[3] & 1) == 0)
  {
    v5 = [*(a1 + 32) internalQueries];
    v6 = [*(a1 + 40) identifier];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v39 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 isEqual:{v6, v17}])
          {
            v12 = [v7 objectForKey:v11];
            v12[2](v12, *(a1 + 56), 0);
            v13 = MGLogForCategory(3);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 32);
              *buf = 134218242;
              v36 = v14;
              v37 = 2112;
              v38 = v11;
              _os_log_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEFAULT, "%p sent update for internal query %@", buf, 0x16u);
            }

            *(v32 + 24) = 1;
            goto LABEL_14;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v39 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if ((v32[3] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (*(v28 + 24) == 1)
  {
LABEL_16:
    v15 = [*(a1 + 32) queryAgent];
    [v15 removeOutstandingQuery:*(a1 + 40)];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_3;
  v12[3] = &unk_27989F710;
  v10 = *(a1 + 56);
  v13 = *(a1 + 32);
  v14 = v5;
  v9 = *(a1 + 40);
  *&v6 = v10;
  *(&v6 + 1) = *(a1 + 64);
  v11 = v6;
  v7 = *(&v9 + 1);
  v15 = v9;
  v16 = v11;
  v8 = v5;
  [v8 enumerateQueriesUsingBlock:v12];
  *a3 = *(*(*(a1 + 56) + 8) + 24);
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32) == v5;
  *(*(*(a1 + 64) + 8) + 24) = v6;
  if (v6)
  {
    v7 = [*(a1 + 32) identifier];
    v8 = [*(a1 + 40) connection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_4;
    v23[3] = &unk_27989F6E8;
    v23[4] = *(a1 + 48);
    v9 = v7;
    v24 = v9;
    v25 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = *(a1 + 72);
    v26 = v10;
    v27 = v11;
    v12 = [v8 remoteObjectProxyWithErrorHandler:v23];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_92;
    v18[3] = &unk_27989F6E8;
    v13 = *(a1 + 56);
    v14 = *(a1 + 40);
    v18[4] = *(a1 + 48);
    v19 = v9;
    v20 = v14;
    v15 = *(a1 + 32);
    v16 = *(a1 + 72);
    v21 = v15;
    v22 = v16;
    v17 = v9;
    [v12 query:v17 didUpdate:v13 completion:v18];
  }

  *a3 = *(*(*(a1 + 64) + 8) + 24);
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MGLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 134218498;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_25863A000, v4, OS_LOG_TYPE_ERROR, "%p sending query %@ update unsuccessful (%@)", &v8, 0x20u);
  }

  [*(a1 + 48) removeQuery:*(a1 + 56)];
  *(*(*(a1 + 64) + 8) + 24) = 1;

  v5 = *MEMORY[0x277D85DE8];
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_92(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MGLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 134218498;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p sending query %@ update failed (%@)", &v11, 0x20u);
    }

    [*(a1 + 48) removeQuery:*(a1 + 56)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 134218242;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25863A000, v5, OS_LOG_TYPE_DEFAULT, "%p sent update for query %@", &v11, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_ingestHomeKitHome:(id)a3
{
  v103 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGDaemon *)self serviceForIngestion];
  v6 = [(MGDaemon *)self homekitGroupsMediator];
  v7 = [v4 accessories];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __31__MGDaemon__ingestHomeKitHome___block_invoke;
  v91[3] = &unk_27989F760;
  v91[4] = self;
  v8 = v4;
  v92 = v8;
  [v7 enumerateObjectsUsingBlock:v91];

  v9 = [v8 mediaSystems];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __31__MGDaemon__ingestHomeKitHome___block_invoke_2;
  v86[3] = &unk_27989F788;
  v10 = v5;
  v87 = v10;
  v11 = v8;
  v88 = v11;
  v89 = self;
  v12 = v6;
  v90 = v12;
  [v9 enumerateObjectsUsingBlock:v86];

  v13 = [v11 rooms];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __31__MGDaemon__ingestHomeKitHome___block_invoke_96;
  v81[3] = &unk_27989F7B0;
  v14 = v10;
  v82 = v14;
  v15 = v11;
  v83 = v15;
  v84 = self;
  v16 = v12;
  v85 = v16;
  [v13 enumerateObjectsUsingBlock:v81];

  v17 = [v15 zones];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __31__MGDaemon__ingestHomeKitHome___block_invoke_99;
  v76[3] = &unk_27989F7D8;
  v18 = v14;
  v77 = v18;
  v19 = v15;
  v78 = v19;
  v79 = self;
  v64 = self;
  v68 = v16;
  v80 = v68;
  [v17 enumerateObjectsUsingBlock:v76];

  v62 = v18;
  v20 = [objc_alloc(MEMORY[0x277D27470]) initWithClientService:v18 home:v19];
  v21 = MGLogForCategory(1);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v95 = self;
    v96 = 2112;
    v97 = v20;
    _os_log_impl(&dword_25863A000, v21, OS_LOG_TYPE_DEFAULT, "%p adding home %@", buf, 0x16u);
  }

  v61 = v20;
  [v68 addGroup:v20];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v22 = [v19 accessories];
  v23 = [v22 countByEnumeratingWithState:&v72 objects:v102 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v73;
    v26 = *MEMORY[0x277CCE870];
    v63 = v19;
    v65 = *v73;
    v66 = v22;
    v70 = *MEMORY[0x277CCE870];
    do
    {
      v27 = 0;
      v67 = v24;
      do
      {
        if (*v73 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v72 + 1) + 8 * v27);
        v29 = [v28 category];
        v30 = [v29 categoryType];
        v31 = [v30 isEqualToString:v26];

        if (v31)
        {
          v32 = MGGroupIdentifierForHomeTheaterWithAppleTVAccessoryInHome(v28, v19);
          v33 = [v28 audioDestinationController];
          v34 = [v33 destination];
          v35 = v34;
          if (v33)
          {
            v36 = v34 == 0;
          }

          else
          {
            v36 = 1;
          }

          if (v36)
          {
            v37 = MGLogForCategory(1);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v95 = v64;
              v96 = 2112;
              v97 = v32;
              _os_log_impl(&dword_25863A000, v37, OS_LOG_TYPE_DEFAULT, "%p removing home theater %@", buf, 0x16u);
            }

            [v68 removeGroupWithIdentifier:v32];
          }

          else
          {
            v71 = MGGroupIdentifierForAccessory(v28, v19);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v69 = v32;
            if (isKindOfClass)
            {
              v39 = v35;
              v40 = [v39 home];
              v41 = [v40 uniqueIdentifier];
              v42 = [v19 uniqueIdentifier];
              v43 = v19;
              v44 = [v41 isEqual:v42];

              if (v44)
              {
                v45 = MGGroupIdentifierForAccessory(v39, v43);
                goto LABEL_23;
              }

              v58 = MGLogForCategory(1);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
LABEL_38:
                *buf = 134218754;
                v95 = v64;
                v96 = 2112;
                v97 = v40;
                v98 = 2112;
                v99 = v39;
                v100 = 2112;
                v19 = v63;
                v101 = v63;
                _os_log_error_impl(&dword_25863A000, v58, OS_LOG_TYPE_ERROR, "%p the home %@ from audioDestination %@ doesn't match current home %@", buf, 0x2Au);
LABEL_31:
                v22 = v66;
                v24 = v67;
                v32 = v69;

                v25 = v65;
LABEL_32:
                v49 = MGLogForCategory(1);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218498;
                  v95 = v64;
                  v96 = 2112;
                  v97 = v35;
                  v98 = 2112;
                  v99 = v28;
                  _os_log_error_impl(&dword_25863A000, v49, OS_LOG_TYPE_ERROR, "%p couldn't find accessory that the matched media destination %@ for %@. Can't add HomeTheater.", buf, 0x20u);
                }

                goto LABEL_34;
              }

LABEL_30:
              v19 = v63;
              goto LABEL_31;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_32;
            }

            v39 = v35;
            v40 = [v39 home];
            v46 = [v40 uniqueIdentifier];
            v47 = [v19 uniqueIdentifier];
            v43 = v19;
            v48 = [v46 isEqual:v47];

            if (!v48)
            {
              v58 = MGLogForCategory(1);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_38;
              }

              goto LABEL_30;
            }

            v45 = MGGroupIdentifierForMediaSystemInHome(v39, v43);
LABEL_23:
            v49 = v45;
            v19 = v43;

            v22 = v66;
            v24 = v67;
            v25 = v65;
            v32 = v69;
            if (!v49)
            {
              goto LABEL_32;
            }

            v93[0] = v71;
            v93[1] = v49;
            v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
            v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v52 = [v33 identifier];
            v53 = [v52 UUIDString];
            [v51 setObject:v53 forKey:@"audioDestinationIdentifier"];

            v54 = objc_alloc(MEMORY[0x277D27488]);
            v55 = [v28 name];
            v56 = [v54 initWithClientService:v62 type:@"com.apple.media-group.home-theater" identifier:v69 name:v55 properties:v51 memberIdentifiers:v50];

            v57 = MGLogForCategory(1);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v95 = v64;
              v96 = 2112;
              v97 = v56;
              _os_log_impl(&dword_25863A000, v57, OS_LOG_TYPE_DEFAULT, "%p adding home theater %@", buf, 0x16u);
            }

            [v68 addGroup:v56];
            v19 = v63;
            v22 = v66;
            v24 = v67;
            v25 = v65;
            v32 = v69;
LABEL_34:
          }

          v26 = v70;
        }

        ++v27;
      }

      while (v24 != v27);
      v59 = [v22 countByEnumeratingWithState:&v72 objects:v102 count:16];
      v24 = v59;
    }

    while (v59);
  }

  v60 = *MEMORY[0x277D85DE8];
}

void __31__MGDaemon__ingestHomeKitHome___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D27498];
  v4 = a2;
  v5 = [[v3 alloc] initWithClientService:*(a1 + 32) mediaSystem:v4 home:*(a1 + 40)];

  v6 = MGLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p adding media system %@", &v9, 0x16u);
  }

  [*(a1 + 56) addGroup:v5];
  v8 = *MEMORY[0x277D85DE8];
}

void __31__MGDaemon__ingestHomeKitHome___block_invoke_96(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D274A8];
  v4 = a2;
  v5 = [[v3 alloc] initWithClientService:*(a1 + 32) room:v4 home:*(a1 + 40)];

  v6 = MGLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p adding room %@", &v9, 0x16u);
  }

  [*(a1 + 56) addGroup:v5];
  v8 = *MEMORY[0x277D85DE8];
}

void __31__MGDaemon__ingestHomeKitHome___block_invoke_99(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D274C0];
  v4 = a2;
  v5 = [[v3 alloc] initWithClientService:*(a1 + 32) zone:v4 home:*(a1 + 40)];

  v6 = MGLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p adding zone %@", &v9, 0x16u);
  }

  [*(a1 + 56) addGroup:v5];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addHomeKitHome:(id)a3
{
  v4 = a3;
  v6 = [(MGDaemon *)self homekitGroupsMediator];
  v5 = [v6 startActivityWithName:@"Add HomeKit Home"];
  [(MGDaemon *)self _ingestHomeKitHome:v4];

  [v6 endActivity:v5];
}

- (void)removeHomeKitHome:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MGGroupIdentifierForHomeInHome(v4, v4);
  v6 = MGLogForCategory(1);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25863A000, v7, OS_LOG_TYPE_DEFAULT, "%p removing home %@", &v9, 0x16u);
    }

    v7 = [(MGDaemon *)self homekitGroupsMediator];
    [v7 removeGroupWithIdentifier:v5];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, "%p no home identifier for %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addHomeKitZone:(id)a3 fromHome:(id)a4
{
  v5 = a4;
  v7 = [(MGDaemon *)self homekitGroupsMediator];
  v6 = [v7 startActivityWithName:@"Add HomeKit Zone"];
  [(MGDaemon *)self _ingestHomeKitHome:v5];

  [v7 endActivity:v6];
}

- (void)removeHomeKitZone:(id)a3 fromHome:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MGGroupIdentifierForZoneInHome(v6, a4);
  v8 = MGLogForCategory(1);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25863A000, v9, OS_LOG_TYPE_DEFAULT, "%p removing zone %@", &v11, 0x16u);
    }

    v9 = [(MGDaemon *)self homekitGroupsMediator];
    [v9 removeGroupWithIdentifier:v7];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 134218242;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_error_impl(&dword_25863A000, v9, OS_LOG_TYPE_ERROR, "%p no zone identifier for %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addHomeKitRoom:(id)a3 fromHome:(id)a4
{
  v5 = a4;
  v7 = [(MGDaemon *)self homekitGroupsMediator];
  v6 = [v7 startActivityWithName:@"Add HomeKit Room"];
  [(MGDaemon *)self _ingestHomeKitHome:v5];

  [v7 endActivity:v6];
}

- (void)removeHomeKitRoom:(id)a3 fromHome:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MGGroupIdentifierForRoomInHome(v6, a4);
  v8 = MGLogForCategory(1);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25863A000, v9, OS_LOG_TYPE_DEFAULT, "%p removing room %@", &v11, 0x16u);
    }

    v9 = [(MGDaemon *)self homekitGroupsMediator];
    [v9 removeGroupWithIdentifier:v7];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 134218242;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_error_impl(&dword_25863A000, v9, OS_LOG_TYPE_ERROR, "%p no room identifier for %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addHomeKitMediaSystem:(id)a3 fromHome:(id)a4
{
  v5 = a4;
  v7 = [(MGDaemon *)self homekitGroupsMediator];
  v6 = [v7 startActivityWithName:@"Add HomeKit Media System"];
  [(MGDaemon *)self _ingestHomeKitHome:v5];

  [v7 endActivity:v6];
}

- (void)removeHomeKitMediaSystem:(id)a3 fromHome:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MGDaemon *)self homekitGroupsMediator];
  v9 = [v8 startActivityWithName:@"Remove HomeKit Media System"];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  if ([v6 supportsAudioDestination])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__MGDaemon_removeHomeKitMediaSystem_fromHome___block_invoke;
    v18[3] = &unk_27989F800;
    v18[4] = &v19;
    [(MGDaemon *)self _homeTheaterGroupIdentifierForAudioDestination:v6 fromHome:v7 completion:v18];
  }

  v10 = v20[5];
  v11 = MGLogForCategory(1);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = v20[5];
      *buf = 134218498;
      v26 = self;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_25863A000, v11, OS_LOG_TYPE_DEFAULT, "%p removing home theater %@ since media system %@ was part of it", buf, 0x20u);
    }

    [v8 removeGroupWithIdentifier:v20[5]];
  }

  else
  {
    if (v12)
    {
      *buf = 134218242;
      v26 = self;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_25863A000, v11, OS_LOG_TYPE_DEFAULT, "%p no home theater identifier for %@", buf, 0x16u);
    }
  }

  v14 = MGGroupIdentifierForMediaSystemInHome(v6, v7);
  v15 = MGLogForCategory(1);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v26 = self;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_25863A000, v16, OS_LOG_TYPE_DEFAULT, "%p removing media system %@", buf, 0x16u);
    }

    [v8 removeGroupWithIdentifier:v14];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v26 = self;
      v27 = 2112;
      v28 = v6;
      _os_log_error_impl(&dword_25863A000, v16, OS_LOG_TYPE_ERROR, "%p no media system identifier for %@", buf, 0x16u);
    }
  }

  [v8 endActivity:v9];

  _Block_object_dispose(&v19, 8);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)addHomeKitMediaSystem:(id)a3
{
  v4 = a3;
  v5 = [v4 home];
  [(MGDaemon *)self addHomeKitMediaSystem:v4 fromHome:v5];
}

- (void)removeHomeKitMediaSystem:(id)a3
{
  v4 = a3;
  v5 = [v4 home];
  [(MGDaemon *)self removeHomeKitMediaSystem:v4 fromHome:v5];
}

- (void)addHomeKitAccessory:(id)a3 fromHome:(id)a4
{
  v5 = a4;
  v7 = [(MGDaemon *)self homekitGroupsMediator];
  v6 = [v7 startActivityWithName:@"Add HomeKit Accessory"];
  [(MGDaemon *)self _ingestHomeKitHome:v5];

  [v7 endActivity:v6];
}

- (void)_addHomeKitAccessoryWithoutHomeIngestion:(id)a3 fromHome:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MGDaemon *)self serviceForIngestion];
  v9 = MGGroupIdentifierForAccessory(v6, v7);

  v10 = MGClassForGroupIdentifier(v9);
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = [v6 deviceIdentifier];
    if (v13)
    {
      [v12 setObject:v13 forKey:@"deviceIdentifier"];
    }

    else
    {
      v14 = [v6 uniqueIdentifier];
      v15 = [v14 UUIDString];
      [v12 setObject:v15 forKey:@"deviceIdentifier"];
    }

    if (objc_opt_class() == v11)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "homePodVariant")}];
      [v12 setObject:v16 forKey:@"HomePodVariant"];

      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "productColor")}];
      [v12 setObject:v17 forKey:@"productColor"];
    }

    v18 = [v11 alloc];
    v19 = [(objc_class *)v11 type];
    v20 = [v6 name];
    v21 = [v18 initWithClientService:v8 type:v19 identifier:v9 name:v20 properties:v12 memberIdentifiers:MEMORY[0x277CBEBF8]];

    v22 = MGLogForCategory(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134218242;
      v28 = self;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_25863A000, v22, OS_LOG_TYPE_DEFAULT, "%p adding accessory %@", &v27, 0x16u);
    }

    if ([v6 isCurrentAccessory])
    {
      v23 = [(MGDaemon *)self queryAgent];
      v24 = [v21 identifier];
      [v23 setCurrentDeviceIdentifier:v24];
    }

    v25 = [(MGDaemon *)self homekitGroupsMediator];
    [v25 addGroup:v21];
  }

  else
  {
    v12 = MGLogForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134218242;
      v28 = self;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEFAULT, "%p no accessory class for %@", &v27, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)removeHomeKitAccessory:(id)a3 fromHome:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MGDaemon *)self homekitGroupsMediator];
  v9 = [v8 startActivityWithName:@"Remove HomeKit Accessory"];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  v31 = 0;
  v10 = [v6 audioDestinationController];
  if (v10 && ([v6 category], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "categoryType"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCE870]), v12, v11, v13))
  {
    v14 = MGGroupIdentifierForHomeTheaterWithAppleTVAccessoryInHome(v6, v7);
    v15 = v27[5];
    v27[5] = v14;
  }

  else if ([v6 supportsAudioDestination])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__MGDaemon_removeHomeKitAccessory_fromHome___block_invoke;
    v25[3] = &unk_27989F800;
    v25[4] = &v26;
    [(MGDaemon *)self _homeTheaterGroupIdentifierForAudioDestination:v6 fromHome:v7 completion:v25];
  }

  v16 = v27[5];
  v17 = MGLogForCategory(1);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = v27[5];
      *buf = 134218498;
      v33 = self;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_25863A000, v17, OS_LOG_TYPE_DEFAULT, "%p removing home theater %@ since accessory %@ was part of it", buf, 0x20u);
    }

    [v8 removeGroupWithIdentifier:v27[5]];
  }

  else
  {
    if (v18)
    {
      *buf = 134218242;
      v33 = self;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_25863A000, v17, OS_LOG_TYPE_DEFAULT, "%p no home theater identifier for %@", buf, 0x16u);
    }
  }

  v20 = MGGroupIdentifierForAccessory(v6, v7);
  v21 = MGLogForCategory(1);
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v33 = self;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_25863A000, v22, OS_LOG_TYPE_DEFAULT, "%p removing accessory %@", buf, 0x16u);
    }

    if ([v6 isCurrentAccessory])
    {
      v23 = [(MGDaemon *)self queryAgent];
      [v23 setCurrentDeviceIdentifier:0];
    }

    [v8 removeGroupWithIdentifier:v20];
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v33 = self;
      v34 = 2112;
      v35 = v6;
      _os_log_error_impl(&dword_25863A000, v22, OS_LOG_TYPE_ERROR, "%p no accessory identifier for %@", buf, 0x16u);
    }
  }

  [v8 endActivity:v9];

  _Block_object_dispose(&v26, 8);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_homeTheaterGroupIdentifierForAudioDestination:(id)a3 fromHome:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 audioDestinationIdentifier];
  if (v10)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__6;
    v20 = __Block_byref_object_dispose__6;
    v21 = 0;
    v11 = [v8 accessories];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__MGDaemon__homeTheaterGroupIdentifierForAudioDestination_fromHome_completion___block_invoke;
    v12[3] = &unk_27989F828;
    v13 = v10;
    v15 = &v16;
    v14 = v8;
    [v11 enumerateObjectsUsingBlock:v12];

    v9[2](v9, v17[5]);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9[2](v9, 0);
  }
}

void __79__MGDaemon__homeTheaterGroupIdentifierForAudioDestination_fromHome_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 audioDestinationController];
  v7 = [v6 destination];
  v8 = [v7 audioDestinationIdentifier];

  if (v6)
  {
    v9 = [v15 category];
    v10 = [v9 categoryType];
    if ([v10 isEqualToString:*MEMORY[0x277CCE870]])
    {
      v11 = [v8 isEqualToString:*(a1 + 32)];

      if (v11)
      {
        v12 = MGGroupIdentifierForHomeTheaterWithAppleTVAccessoryInHome(v15, *(a1 + 40));
        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        *a4 = 1;
      }
    }

    else
    {
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MGLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v24 = self;
    v25 = 1024;
    v26 = [v7 processIdentifier];
    _os_log_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEFAULT, "%p received new connection from %d", buf, 0x12u);
  }

  v9 = [(MGDaemon *)self listenerProvider];
  v10 = [v9 serviceShouldAcceptNewConnection:v7];
  if (v10)
  {
    MGSetServiceXPCInterfacesOnConnection(v7, 1);
    [v7 setExportedObject:self];
    v11 = [(MGDaemon *)self dispatchQueue];
    [v7 _setQueue:v11];

    v12 = [[MGServiceClient alloc] initWithConnection:v7];
    v13 = [(MGDaemon *)self clients];
    [v13 addClientService:v12];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v12);
    objc_initWeak(&from, v7);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__MGDaemon_listener_shouldAcceptNewConnection___block_invoke;
    v17[3] = &unk_27989F878;
    objc_copyWeak(&v18, buf);
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, &from);
    v14 = MEMORY[0x259C85F90](v17);
    [v7 setInterruptionHandler:v14];
    [v7 setInvalidationHandler:v14];
    [v7 resume];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

void __47__MGDaemon_listener_shouldAcceptNewConnection___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v5 = v4;
  if (WeakRetained && v3 && v4)
  {
    v6 = MGLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v11 = WeakRetained;
      v12 = 1024;
      v13 = [v5 processIdentifier];
      _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "Service %p lost connection from %d", buf, 0x12u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__MGDaemon_listener_shouldAcceptNewConnection___block_invoke_131;
    v9[3] = &unk_27989F850;
    v9[4] = WeakRetained;
    [v3 enumerateQueriesUsingBlock:v9];
    v7 = [WeakRetained clients];
    [v7 removeClientService:v3];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)createGroupWithType:(id)a3 name:(id)a4 members:(id)a5 completion:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCAE80] currentConnection];
  v15 = v14;
  if (v14)
  {
    v16 = objc_getAssociatedObject(v14, "com.apple.MediaGroups.ClientService");
  }

  else
  {
    v16 = 0;
  }

  if (qword_27F956E00 != -1)
  {
    dispatch_once(&qword_27F956E00, &__block_literal_global_134);
  }

  v17 = [_MergedGlobals_1 objectForKey:v10];
  if (v17)
  {
    v18 = v17;
    v52 = v10;
    v19 = self;
    v47 = v16;
    v48 = v15;
    v49 = v13;
    v20 = v11;
    v21 = MEMORY[0x277D27450];
    v22 = [MEMORY[0x277CCAD78] UUID];
    v51 = [v21 groupIdentifierWithUUID:v22];

    v23 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50 = v12;
    v24 = v12;
    v25 = [v24 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        v28 = 0;
        v29 = v23;
        do
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = [*(*(&v53 + 1) + 8 * v28) identifier];
          v23 = [v29 arrayByAddingObject:v30];

          ++v28;
          v29 = v23;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v26);
    }

    v31 = v51;
    v11 = v20;
    v32 = [v18 validateGroupSpecificationWithType:v52 identifier:v51 name:v20 properties:0 members:v24];
    if (v32)
    {
      v33 = MGLogForCategory(3);
      v16 = v47;
      v15 = v48;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v58 = v19;
        v59 = 2112;
        v60 = v32;
        _os_log_error_impl(&dword_25863A000, v33, OS_LOG_TYPE_ERROR, "%p group validation failed: %@", buf, 0x16u);
      }

      v34 = v32;
      v35 = 0;
      v12 = v50;
    }

    else
    {
      v42 = [v18 alloc];
      v16 = v47;
      v15 = v48;
      if (v47)
      {
        v43 = [v42 initWithClientService:v47 type:v52 identifier:v51 name:v11 properties:0 memberIdentifiers:v23];
      }

      else
      {
        v43 = [v42 initWithConnectionProvider:0 type:v52 identifier:v51 name:v11 properties:0 memberIdentifiers:v23];
      }

      v35 = v43;
      v12 = v50;
      v44 = [(MGDaemon *)v19 localGroupsMediator];
      [v44 addGroup:v35];

      v45 = MGLogForCategory(3);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v58 = v19;
        v59 = 2048;
        v60 = v35;
        _os_log_impl(&dword_25863A000, v45, OS_LOG_TYPE_DEFAULT, "%p creation complete for %p", buf, 0x16u);
      }

      v31 = v51;
    }

    v13 = v49;
    v10 = v52;
  }

  else
  {
    v36 = [qword_27F956DF8 objectForKey:v10];
    v37 = MGLogForCategory(3);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        *buf = 134217984;
        v58 = self;
        _os_log_error_impl(&dword_25863A000, v37, OS_LOG_TYPE_ERROR, "%p group type creation not allowed", buf, 0xCu);
      }

      v39 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277D27428];
      v41 = 1;
    }

    else
    {
      if (v38)
      {
        *buf = 134217984;
        v58 = self;
        _os_log_error_impl(&dword_25863A000, v37, OS_LOG_TYPE_ERROR, "%p group type creation not supported", buf, 0xCu);
      }

      v39 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277D27428];
      v41 = 2;
    }

    v32 = [v39 errorWithDomain:v40 code:v41 userInfo:0];
    v35 = 0;
  }

  v13[2](v13, v35, v32);

  v46 = *MEMORY[0x277D85DE8];
}

void __56__MGDaemon_createGroupWithType_name_members_completion___block_invoke()
{
  v16[11] = *MEMORY[0x277D85DE8];
  v0 = _MergedGlobals_1;
  _MergedGlobals_1 = MEMORY[0x277CBEC10];

  v14 = [MEMORY[0x277D274B0] type];
  v15[0] = v14;
  v16[0] = objc_opt_class();
  v13 = [MEMORY[0x277D27480] type];
  v15[1] = v13;
  v16[1] = objc_opt_class();
  v1 = [MEMORY[0x277D27430] type];
  v15[2] = v1;
  v16[2] = objc_opt_class();
  v2 = [MEMORY[0x277D274B8] type];
  v15[3] = v2;
  v16[3] = objc_opt_class();
  v3 = [MEMORY[0x277D27438] type];
  v15[4] = v3;
  v16[4] = objc_opt_class();
  v4 = [MEMORY[0x277D27498] type];
  v15[5] = v4;
  v16[5] = objc_opt_class();
  v5 = [MEMORY[0x277D274A8] type];
  v15[6] = v5;
  v16[6] = objc_opt_class();
  v6 = [MEMORY[0x277D274C0] type];
  v15[7] = v6;
  v16[7] = objc_opt_class();
  v7 = [MEMORY[0x277D27470] type];
  v15[8] = v7;
  v16[8] = objc_opt_class();
  v8 = [MEMORY[0x277D27440] type];
  v15[9] = v8;
  v16[9] = objc_opt_class();
  v9 = [MEMORY[0x277D27488] type];
  v15[10] = v9;
  v16[10] = objc_opt_class();
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:11];
  v11 = qword_27F956DF8;
  qword_27F956DF8 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteGroup:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = deleteGroup_completion__onceToken;
  v8 = a3;
  if (v7 != -1)
  {
    dispatch_once(&deleteGroup_completion__onceToken, &__block_literal_global_143);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__MGDaemon_deleteGroup_completion___block_invoke_2;
  v10[3] = &unk_27989F8A0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(MGDaemon *)self _fetchGroupInfo:v8 completion:v10];
}

void __35__MGDaemon_deleteGroup_completion___block_invoke()
{
  v16[11] = *MEMORY[0x277D85DE8];
  v0 = qword_27F956E08;
  qword_27F956E08 = MEMORY[0x277CBEC10];

  v14 = [MEMORY[0x277D274B0] type];
  v15[0] = v14;
  v16[0] = objc_opt_class();
  v13 = [MEMORY[0x277D27480] type];
  v15[1] = v13;
  v16[1] = objc_opt_class();
  v1 = [MEMORY[0x277D27430] type];
  v15[2] = v1;
  v16[2] = objc_opt_class();
  v2 = [MEMORY[0x277D274B8] type];
  v15[3] = v2;
  v16[3] = objc_opt_class();
  v3 = [MEMORY[0x277D27438] type];
  v15[4] = v3;
  v16[4] = objc_opt_class();
  v4 = [MEMORY[0x277D27498] type];
  v15[5] = v4;
  v16[5] = objc_opt_class();
  v5 = [MEMORY[0x277D274A8] type];
  v15[6] = v5;
  v16[6] = objc_opt_class();
  v6 = [MEMORY[0x277D274C0] type];
  v15[7] = v6;
  v16[7] = objc_opt_class();
  v7 = [MEMORY[0x277D27470] type];
  v15[8] = v7;
  v16[8] = objc_opt_class();
  v8 = [MEMORY[0x277D27440] type];
  v15[9] = v8;
  v16[9] = objc_opt_class();
  v9 = [MEMORY[0x277D27488] type];
  v15[10] = v9;
  v16[10] = objc_opt_class();
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:11];
  v11 = qword_27F956E10;
  qword_27F956E10 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

void __35__MGDaemon_deleteGroup_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  objc_initWeak(&location, a4);
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 134218242;
      v32 = v15;
      v33 = 2112;
      v34 = v13;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p failed to fetch group for deletion %@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (!v9)
  {
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 134217984;
      v32 = v18;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p failed to find group for deletion", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = objc_loadWeakRetained(&location);
  v14 = v16;
  if (!v16)
  {
    v19 = MGLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 134217984;
      v32 = v26;
      _os_log_error_impl(&dword_25863A000, v19, OS_LOG_TYPE_ERROR, "%p failed to find source for deletion", buf, 0xCu);
    }

    v14 = 0;
LABEL_14:
    v13 = 0;
    goto LABEL_27;
  }

  if (([v16 allowsClientEdits]& 1) != 0)
  {
    v17 = [objc_opt_class() type];
    if ([qword_27F956E08 objectForKey:v17])
    {
      [v14 removeGroup:v9];
      v13 = 0;
    }

    else
    {
      v21 = [qword_27F956E10 objectForKey:v17];
      v22 = MGLogForCategory(3);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v23)
        {
          v28 = *(a1 + 32);
          *buf = 134217984;
          v32 = v28;
          _os_log_error_impl(&dword_25863A000, v22, OS_LOG_TYPE_ERROR, "%p group type deletion not allowed", buf, 0xCu);
        }

        v24 = 7;
      }

      else
      {
        if (v23)
        {
          v29 = *(a1 + 32);
          *buf = 134217984;
          v32 = v29;
          _os_log_error_impl(&dword_25863A000, v22, OS_LOG_TYPE_ERROR, "%p group type deletion not supported", buf, 0xCu);
        }

        v24 = 2;
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:v24 userInfo:0];
    }
  }

  else
  {
    v20 = MGLogForCategory(3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      *buf = 134217984;
      v32 = v27;
      _os_log_error_impl(&dword_25863A000, v20, OS_LOG_TYPE_ERROR, "%p deletion not allowed by group source", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:9 userInfo:0];
  }

LABEL_27:

  (*(*(a1 + 40) + 16))();
  objc_destroyWeak(&location);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)HomeKitAccessoryOfType:(id)a3 accessoryIdentifier:(id)a4 homeIdentifier:(id)a5 categoryType:(id)a6 name:(id)a7 properties:(id)a8 completion:(id)a9
{
  v42 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v37 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (qword_27F956E28 != -1)
  {
    dispatch_once(&qword_27F956E28, &__block_literal_global_146);
  }

  v21 = [qword_27F956E18 objectForKey:v15];
  if (!v21)
  {
    v31 = MGLogForCategory(3);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v39 = self;
      v40 = 2112;
      v41 = v15;
      _os_log_error_impl(&dword_25863A000, v31, OS_LOG_TYPE_ERROR, "%p group type %@ not supported", buf, 0x16u);
    }

    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277D27428];
    v34 = 2;
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [qword_27F956E20 objectForKey:v15];
  v24 = [v23 isEqualToString:v17];

  if (!v24)
  {
    v35 = MGLogForCategory(3);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v39 = self;
      v40 = 2112;
      v41 = v17;
      _os_log_error_impl(&dword_25863A000, v35, OS_LOG_TYPE_ERROR, "%p accessory category %@ is not supported", buf, 0x16u);
    }

    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277D27428];
    v34 = 3;
LABEL_14:
    v30 = [v32 errorWithDomain:v33 code:v34 userInfo:0];
    v27 = 0;
    goto LABEL_15;
  }

  v25 = MGGroupIdentifierForAccessoryIdentifierInHome(v37, v16, v17);
  v26 = [v22 alloc];
  v27 = [v26 initWithConnectionProvider:0 type:v15 identifier:v25 name:v18 properties:v19 memberIdentifiers:MEMORY[0x277CBEBF8]];
  v28 = [(MGDaemon *)self localGroupsMediator];
  [v28 addGroup:v27];

  v29 = MGLogForCategory(3);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v39 = self;
    v40 = 2112;
    v41 = v27;
    _os_log_impl(&dword_25863A000, v29, OS_LOG_TYPE_DEFAULT, "%p completed accessory %@", buf, 0x16u);
  }

  v30 = 0;
LABEL_15:
  v20[2](v20, v27, v30);

  v36 = *MEMORY[0x277D85DE8];
}

void __110__MGDaemon_HomeKitAccessoryOfType_accessoryIdentifier_homeIdentifier_categoryType_name_properties_completion___block_invoke()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D27480] type];
  v13[0] = v0;
  v14[0] = objc_opt_class();
  v1 = [MEMORY[0x277D274B8] type];
  v13[1] = v1;
  v14[1] = objc_opt_class();
  v2 = [MEMORY[0x277D27438] type];
  v13[2] = v2;
  v14[2] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v4 = qword_27F956E18;
  qword_27F956E18 = v3;

  v5 = [MEMORY[0x277D27480] type];
  v11[0] = v5;
  v12[0] = *MEMORY[0x277CCE8B0];
  v6 = [MEMORY[0x277D274B8] type];
  v11[1] = v6;
  v12[1] = *MEMORY[0x277CCE900];
  v7 = [MEMORY[0x277D27438] type];
  v11[2] = v7;
  v12[2] = *MEMORY[0x277CCE878];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v9 = qword_27F956E20;
  qword_27F956E20 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setName:(id)a3 group:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__MGDaemon_setName_group_completion___block_invoke;
  v14[3] = &unk_27989F8C8;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  [(MGDaemon *)self _fetchGroupInfo:v13 completion:v14];
}

void __37__MGDaemon_setName_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = MGLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v21 = 134218242;
      v22 = v18;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p failed to fetch group for rename %@", &v21, 0x16u);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (v8)
  {
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v21 = 134217984;
      v22 = v19;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p rename not allowed by group type", &v21, 0xCu);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:4 userInfo:0];
    goto LABEL_9;
  }

  v15 = *(a1 + 40);
  v17 = MGLogForCategory(3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = 134217984;
    v22 = v20;
    _os_log_error_impl(&dword_25863A000, v17, OS_LOG_TYPE_ERROR, "%p failed to find group for rename", &v21, 0xCu);
  }

  v12 = 0;
LABEL_10:
  (*(*(a1 + 56) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addMember:(id)a3 group:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__MGDaemon_addMember_group_completion___block_invoke;
  v14[3] = &unk_27989F8C8;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  [(MGDaemon *)self _fetchGroupInfo:v13 completion:v14];
}

void __39__MGDaemon_addMember_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = MGLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v21 = 134218242;
      v22 = v18;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p failed to fetch group for adding member %@", &v21, 0x16u);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (v8)
  {
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v21 = 134217984;
      v22 = v19;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p adding members not allowed by group type", &v21, 0xCu);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:6 userInfo:0];
    goto LABEL_9;
  }

  v15 = *(a1 + 40);
  v17 = MGLogForCategory(3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = 134217984;
    v22 = v20;
    _os_log_error_impl(&dword_25863A000, v17, OS_LOG_TYPE_ERROR, "%p failed to find group for adding member", &v21, 0xCu);
  }

  v12 = 0;
LABEL_10:
  (*(*(a1 + 56) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeMember:(id)a3 group:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__MGDaemon_removeMember_group_completion___block_invoke;
  v14[3] = &unk_27989F8C8;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  [(MGDaemon *)self _fetchGroupInfo:v13 completion:v14];
}

void __42__MGDaemon_removeMember_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = MGLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v21 = 134218242;
      v22 = v18;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p failed to fetch group for removing member %@", &v21, 0x16u);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (v8)
  {
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v21 = 134217984;
      v22 = v19;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p removing members not allowed by group type", &v21, 0xCu);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:6 userInfo:0];
    goto LABEL_9;
  }

  v15 = *(a1 + 40);
  v17 = MGLogForCategory(3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = 134217984;
    v22 = v20;
    _os_log_error_impl(&dword_25863A000, v17, OS_LOG_TYPE_ERROR, "%p failed to find group for removing member", &v21, 0xCu);
  }

  v12 = 0;
LABEL_10:
  (*(*(a1 + 56) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startQueryWithPredicate:(id)a3 completion:(id)a4
{
  v34[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28 = a4;
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(MGDaemon *)self clients];
  v29 = [v8 serviceClientForXPCConnection:v7];

  [v6 allowEvaluation];
  v9 = [v7 valueForEntitlement:@"com.apple.MediaGroups.groups"];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v9 = MEMORY[0x277CBEBF8];
    }
  }

  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i < v11; ++i)
    {
      v13 = [v9 objectAtIndex:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v15 = [v9 mutableCopy];
        [v15 removeObjectAtIndex:i];

        ++i;
        v9 = v15;
      }
    }
  }

  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.type IN %@", v9];
  v17 = MEMORY[0x277CCA920];
  v34[0] = v16;
  v34[1] = v6;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  v20 = [[MGOutstandingQuery alloc] initWithPredicate:v19];
  v21 = [(MGOutstandingQuery *)v20 identifier];
  v22 = [(MGDaemon *)self topologyRequestHandler];
  if ([(MGOutstandingQuery *)v20 requiresTopology]&& v22)
  {
    v23 = MGLogForCategory(3);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v31 = self;
      v32 = 2112;
      v33 = v21;
      _os_log_debug_impl(&dword_25863A000, v23, OS_LOG_TYPE_DEBUG, "%p requesting topology for query %@", buf, 0x16u);
    }

    v22[2](v22);
  }

  [v29 addQuery:v20];
  v24 = MGLogForCategory(3);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v31 = self;
    v32 = 2112;
    v33 = v21;
    _os_log_impl(&dword_25863A000, v24, OS_LOG_TYPE_DEFAULT, "%p starting query %@", buf, 0x16u);
  }

  (*(v28 + 2))(v28, v21, 0, 0);
  v25 = [(MGDaemon *)self queryAgent];
  [v25 addOutstandingQuery:v20];

  v26 = [(MGDaemon *)self remoteQueryClient];
  [v26 addOutstandingQuery:v20];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stopQuery:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CCAE80];
  v7 = a4;
  v8 = a3;
  v12 = [v6 currentConnection];
  v9 = [(MGDaemon *)self clients];
  v10 = [v9 serviceClientForXPCConnection:v12];

  v11 = [v10 outstandingQueryForIdentifier:v8];

  [(MGDaemon *)self stopQuery:v11];
  [v10 removeQuery:v11];
  v7[2](v7, 0);
}

- (void)stopQuery:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(MGDaemon *)self queryAgent];
  [v6 removeOutstandingQuery:v4];

  v7 = [(MGDaemon *)self remoteQueryClient];
  [v7 removeOutstandingQuery:v4];

  v8 = MGLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEFAULT, "%p stopped query %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)startInternalQueryWithPredicate:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(MGDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [[MGOutstandingQuery alloc] initWithPredicate:v7];
  v10 = [(MGOutstandingQuery *)v9 identifier];
  v11 = [(MGDaemon *)self topologyRequestHandler];
  if ([(MGOutstandingQuery *)v9 requiresTopology])
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = MGLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = 134218242;
      v22 = self;
      v23 = 2112;
      v24 = v10;
      _os_log_debug_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEBUG, "%p requesting topology for local query %@", &v21, 0x16u);
    }

    v11[2](v11);
  }

  v14 = MGLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218242;
    v22 = self;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_25863A000, v14, OS_LOG_TYPE_DEFAULT, "%p starting internal query %@", &v21, 0x16u);
  }

  v15 = [(MGDaemon *)self internalQueries];
  v16 = [v15 mutableCopy];

  v17 = MEMORY[0x259C85F90](v6);
  [v16 setObject:v17 forKey:v10];

  [(MGDaemon *)self setInternalQueries:v16];
  v18 = [(MGDaemon *)self queryAgent];
  [v18 addOutstandingQuery:v9];

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)stopInternalQuery:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 identifier];
  v7 = [(MGDaemon *)self queryAgent];
  [v7 removeOutstandingQuery:v4];

  v8 = [(MGDaemon *)self internalQueries];
  v9 = [v8 mutableCopy];

  [v9 removeObjectForKey:v6];
  [(MGDaemon *)self setInternalQueries:v9];
  v10 = MGLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p stopped internal query %@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_fetchGroupInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MGDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  objc_initWeak(&location, self);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v9 = [MEMORY[0x277D27440] predicateForGroup:v6];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__MGDaemon__fetchGroupInfo_completion___block_invoke;
  v14[3] = &unk_27989F918;
  objc_copyWeak(&v19, &location);
  v18 = &v20;
  v10 = v6;
  v15 = v10;
  v16 = self;
  v11 = v7;
  v17 = v11;
  v12 = [(MGDaemon *)self startInternalQueryWithPredicate:v9 handler:v14];
  v13 = v21[5];
  v21[5] = v12;

  objc_destroyWeak(&v19);
  _Block_object_dispose(&v20, 8);

  objc_destroyWeak(&location);
}

void __39__MGDaemon__fetchGroupInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained stopInternalQuery:*(*(*(a1 + 56) + 8) + 40)];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    location = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__6;
    v44 = __Block_byref_object_dispose__6;
    v45 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__6;
    v38 = __Block_byref_object_dispose__6;
    v39 = 0;
    if (v6)
    {
      v11 = v6;
      v39 = v11;
      v12 = MGLogForCategory(3);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      *buf = 134218242;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      v25 = "%p failed to internally fetch group %@";
    }

    else
    {
      if ([v5 count])
      {
        v15 = [v5 firstObject];
        v17 = [v15 group];
        v18 = [v15 mediator];
        objc_storeWeak(&location, v18);

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v48 = __Block_byref_object_copy__6;
        v49 = __Block_byref_object_dispose__6;
        v50 = 0;
        v19 = [v17 predicateForMembers];
        v20 = *(a1 + 40);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __39__MGDaemon__fetchGroupInfo_completion___block_invoke_159;
        v26[3] = &unk_27989F8F0;
        objc_copyWeak(&v32, (a1 + 64));
        v29 = buf;
        v30 = &v34;
        v31 = &v40;
        v28 = *(a1 + 48);
        v16 = v17;
        v27 = v16;
        objc_copyWeak(&v33, &location);
        v21 = [v20 startInternalQueryWithPredicate:v19 handler:v26];
        v22 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v21;

        objc_destroyWeak(&v33);
        objc_destroyWeak(&v32);
        _Block_object_dispose(buf, 8);

        goto LABEL_7;
      }

      v12 = MGLogForCategory(3);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_4:

        v13 = *(a1 + 48);
        v14 = v41[5];
        v15 = objc_loadWeakRetained(&location);
        (*(v13 + 16))(v13, 0, v14, v15, v35[5]);
        v16 = 0;
LABEL_7:

        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&v40, 8);

        objc_destroyWeak(&location);
        goto LABEL_8;
      }

      v24 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      v25 = "%p failed to internally find group %@";
    }

    _os_log_error_impl(&dword_25863A000, v12, OS_LOG_TYPE_ERROR, v25, buf, 0x16u);
    goto LABEL_4;
  }

LABEL_8:

  v23 = *MEMORY[0x277D85DE8];
}

void __39__MGDaemon__fetchGroupInfo_completion___block_invoke_159(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained stopInternalQuery:*(*(*(a1 + 48) + 8) + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    if (v6)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
      v11 = MGLogForCategory(3);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v31 = v8;
        v32 = 2112;
        v33 = v6;
        _os_log_error_impl(&dword_25863A000, v11, OS_LOG_TYPE_ERROR, "%p failed to internally fetch group members %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v5;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v25 + 1) + 8 * i) group];
            [v11 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
      }

      v18 = [v11 count];
      if (v18)
      {
        v19 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
      }

      else
      {
        v19 = 0;
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v19);
      if (v18)
      {
      }
    }

    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22 = *(*(*(a1 + 64) + 8) + 40);
    v23 = objc_loadWeakRetained((a1 + 80));
    (*(v20 + 16))(v20, v21, v22, v23, *(*(*(a1 + 56) + 8) + 40));
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)startOutstandingQueryWithPredicate:(id)a3 handler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__MGDaemon_startOutstandingQueryWithPredicate_handler_completion___block_invoke;
  v21[3] = &unk_27989F940;
  v22 = v9;
  v11 = v9;
  v12 = MEMORY[0x259C85F90](v21);
  v13 = [(MGDaemon *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MGDaemon_startOutstandingQueryWithPredicate_handler_completion___block_invoke_2;
  block[3] = &unk_27989F968;
  block[4] = self;
  v18 = v8;
  v19 = v12;
  v20 = v10;
  v14 = v10;
  v15 = v12;
  v16 = v8;
  dispatch_async(v13, block);
}

void __66__MGDaemon_startOutstandingQueryWithPredicate_handler_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) group];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v14 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
  }

  else
  {
    v14 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

void __66__MGDaemon_startOutstandingQueryWithPredicate_handler_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) startInternalQueryWithPredicate:*(a1 + 40) handler:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

- (void)stopOutstandingQuery:(id)a3
{
  v4 = a3;
  v5 = [(MGDaemon *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__MGDaemon_stopOutstandingQuery___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end