@interface NPTVPNCollector
- (id)getVPNStatusAsString:(int64_t)string;
- (void)collectVPNAddressesWithCompletion:(id)completion;
- (void)getExtendedStatus:(int)status session:(void *)session completionHandler:(id)handler;
- (void)startCollectingWithCompletion:(id)completion;
- (void)stopCollecting;
- (void)vpnNotificationReceived:(id)received;
@end

@implementation NPTVPNCollector

- (void)startCollectingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mEMORY[0x277CD9300] = [MEMORY[0x277CD9300] sharedManager];
  [(NPTVPNCollector *)self setManager:mEMORY[0x277CD9300]];

  mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManager];
  [(NPTVPNCollector *)self setConfigManager:mEMORY[0x277CD92B8]];

  v8 = dispatch_queue_create("NPTVPNCollector.backgroundQueue", MEMORY[0x277D85CD8]);
  [(NPTVPNCollector *)self setBackgroundQueue:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTVPNCollector *)self setCachedMetadata:v9];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedMetadata = [(NPTVPNCollector *)self cachedMetadata];
  [cachedMetadata setObject:v10 forKeyedSubscript:@"initial_state"];

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedMetadata2 = [(NPTVPNCollector *)self cachedMetadata];
  [cachedMetadata2 setObject:v12 forKeyedSubscript:@"events"];

  manager = [(NPTVPNCollector *)self manager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __49__NPTVPNCollector_startCollectingWithCompletion___block_invoke;
  v26[3] = &unk_2789D4108;
  v27 = v5;
  selfCopy = self;
  v29 = completionCopy;
  v15 = completionCopy;
  v16 = v5;
  [manager loadFromPreferencesWithCompletionHandler:v26];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mEMORY[0x277CD9300]2 = [MEMORY[0x277CD9300] sharedManager];
  connection = [mEMORY[0x277CD9300]2 connection];
  [defaultCenter addObserver:self selector:sel_vpnNotificationReceived_ name:@"com.apple.networkextension.statuschanged" object:connection];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  mEMORY[0x277CD9300]3 = [MEMORY[0x277CD9300] sharedManager];
  connection2 = [mEMORY[0x277CD9300]3 connection];
  [defaultCenter2 addObserver:self selector:sel_vpnNotificationReceived_ name:@"NEVPNErrorDomain" object:connection2];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  mEMORY[0x277CD9300]4 = [MEMORY[0x277CD9300] sharedManager];
  connection3 = [mEMORY[0x277CD9300]4 connection];
  [defaultCenter3 addObserver:self selector:sel_vpnNotificationReceived_ name:@"com.apple.networkextension.app-configuration-changed" object:connection3];
}

void __49__NPTVPNCollector_startCollectingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v5 = *(a1 + 40);
  v6 = [v5 manager];
  v7 = [v6 connection];
  v8 = [v5 getVPNStatusAsString:{objc_msgSend(v7, "status")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"vpn_status"];

  v9 = [*(a1 + 40) manager];
  v10 = [v9 connection];
  v11 = [v10 connectedDate];
  v12 = [v4 stringFromDate:v11];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:@"vpn_connected_date"];

  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) cachedMetadata];
    [v14 setObject:v13 forKeyedSubscript:@"initial_state"];

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v15 addObject:v3];
    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = *(a1 + 32);
      v18 = [v15 copy];
      (*(v16 + 16))(v16, v17, v18);
    }
  }

  else
  {
    v19 = [*(a1 + 40) configManager];
    v20 = [*(a1 + 40) backgroundQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__NPTVPNCollector_startCollectingWithCompletion___block_invoke_2;
    v24[3] = &unk_2789D40E0;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v25 = v21;
    v26 = v22;
    v27 = v23;
    [v19 loadConfigurationsWithCompletionQueue:v20 handler:v24];
  }
}

void __49__NPTVPNCollector_startCollectingWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v53 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v6 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v7 = *(a1 + 40);
  v8 = [v7 manager];
  v9 = [v8 connection];
  v10 = [v7 getVPNStatusAsString:{objc_msgSend(v9, "status")}];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"vpn_status"];

  v11 = [*(a1 + 40) manager];
  v12 = [v11 connection];
  v13 = [v12 connectedDate];
  v52 = v6;
  v14 = [v6 stringFromDate:v13];
  v51 = a1;
  [*(a1 + 32) setObject:v14 forKeyedSubscript:@"vpn_connected_date"];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v59;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v58 + 1) + 8 * i);
        v22 = [v21 VPN];

        if (v22)
        {
          v23 = +[NPTLogger metadata];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_233421000, v23, OS_LOG_TYPE_DEFAULT, "VPN Configuration Found", buf, 2u);
          }

          if (!v18 || ([v21 VPN], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEnabled"), v24, v25))
          {
            v26 = v21;

            v18 = v26;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  [*(v51 + 40) setConfig:v18];
  if (v18)
  {
    v27 = [v18 name];
    [*(v51 + 32) setObject:v27 forKeyedSubscript:@"vpn_name"];

    v28 = MEMORY[0x277CCABB0];
    v29 = [v18 VPN];
    v30 = [v28 numberWithBool:{objc_msgSend(v29, "isEnabled")}];
    [*(v51 + 32) setObject:v30 forKeyedSubscript:@"vpn_enabled"];

    v31 = [v18 VPN];
    if ([v31 tunnelType] == 1)
    {
      v32 = @"Packet";
    }

    else
    {
      v32 = @"AppProxy";
    }

    [*(v51 + 32) setObject:v32 forKeyedSubscript:@"vpn_tunnel_type"];

    v33 = [v18 VPN];
    v34 = [v33 protocol];
    v35 = [v34 serverAddress];
    [*(v51 + 32) setObject:v35 forKeyedSubscript:@"vpn_protocol_server_address"];

    v36 = [*(v51 + 40) manager];
    v37 = [v36 protocolConfiguration];
    v38 = [v37 dictionary];
    [*(v51 + 32) setObject:v38 forKeyedSubscript:@"vpn_protocol"];

    v39 = dispatch_semaphore_create(0);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __49__NPTVPNCollector_startCollectingWithCompletion___block_invoke_41;
    v54[3] = &unk_2789D40B8;
    v40 = *(v51 + 40);
    v55 = *(v51 + 32);
    v56 = v39;
    v41 = v39;
    [v40 collectVPNAddressesWithCompletion:v54];
    v42 = dispatch_walltime(0, 500000000);
    dispatch_semaphore_wait(v41, v42);
  }

  v43 = *(v51 + 32);
  v44 = [*(v51 + 40) cachedMetadata];
  [v44 setObject:v43 forKeyedSubscript:@"initial_state"];

  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = v45;
  if (v53)
  {
    [v45 addObject:v53];
  }

  v47 = *(v51 + 48);
  if (v47)
  {
    v48 = *(v51 + 32);
    v49 = [v46 copy];
    (*(v47 + 16))(v47, v48, v49);
  }

  v50 = *MEMORY[0x277D85DE8];
}

intptr_t __49__NPTVPNCollector_startCollectingWithCompletion___block_invoke_41(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addEntriesFromDictionary:a2];
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)collectVPNAddressesWithCompletion:(id)completion
{
  v10[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v10[0] = 0;
  v10[1] = 0;
  config = [(NPTVPNCollector *)self config];
  identifier = [config identifier];
  [identifier getUUIDBytes:v10];

  ne_session_create();
  backgroundQueue = [(NPTVPNCollector *)self backgroundQueue];
  v8 = completionCopy;
  ne_session_get_status();

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __53__NPTVPNCollector_collectVPNAddressesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    return v7();
  }

  else
  {
    v4 = +[NPTLogger metadata];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_233421000, v4, OS_LOG_TYPE_DEFAULT, "Fetching additional info for VPN", v8, 2u);
    }

    return [*(a1 + 32) getExtendedStatus:a2 session:*(a1 + 48) completionHandler:*(a1 + 40)];
  }
}

- (void)getExtendedStatus:(int)status session:(void *)session completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (status == 3)
  {
    backgroundQueue = [(NPTVPNCollector *)self backgroundQueue];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __63__NPTVPNCollector_getExtendedStatus_session_completionHandler___block_invoke;
    v16 = &unk_2789D4180;
    v17 = v8;
    v18 = handlerCopy;
    ne_session_get_info();

    v10 = v17;
  }

  else
  {
    v11 = +[NPTLogger metadata];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_233421000, v11, OS_LOG_TYPE_DEFAULT, "VPN Session is Not Connected", v12, 2u);
    }

    v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

void __63__NPTVPNCollector_getExtendedStatus_session_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  if (v3)
  {
    v5 = xpc_dictionary_get_value(v3, "VPN");
    v6 = xpc_dictionary_get_value(v3, "IPv4");
    v7 = xpc_dictionary_get_value(v3, "IPv6");
    v8 = xpc_dictionary_get_value(v3, "DNSServers");
    if (MEMORY[0x23839F9C0]() == MEMORY[0x277D86440])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __63__NPTVPNCollector_getExtendedStatus_session_completionHandler___block_invoke_2;
      applier[3] = &unk_2789D4158;
      v30 = v4;
      xpc_array_apply(v8, applier);
    }

    v27 = v5;
    if (v5)
    {
      string = xpc_dictionary_get_string(v5, "RemoteAddress");
      if (string)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

    v21 = xpc_dictionary_get_value(v3, "IPSec");
    v22 = xpc_dictionary_get_value(v3, "PPP");
    v23 = v22;
    if (v21)
    {
      v24 = "RemoteAddress";
      v22 = v21;
    }

    else
    {
      if (!v22)
      {
        string = 0;
LABEL_27:

        if (string)
        {
LABEL_6:
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
          if (v6)
          {
LABEL_7:
            v11 = xpc_dictionary_get_value(v6, "Addresses");
            v12 = v11;
            if (v11 && xpc_array_get_count(v11) && (v13 = xpc_array_get_string(v12, 0)) != 0)
            {
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
            }

            else
            {
              v14 = 0;
            }

            if (v7)
            {
              goto LABEL_16;
            }

            goto LABEL_30;
          }

LABEL_29:
          v14 = 0;
          if (v7)
          {
LABEL_16:
            v17 = xpc_dictionary_get_value(v7, "Addresses");
            v18 = v17;
            if (v17 && xpc_array_get_count(v17) && (v19 = xpc_array_get_string(v18, 0)) != 0)
            {
              v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19];
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_31;
          }

LABEL_30:
          v20 = 0;
LABEL_31:
          [*(a1 + 32) setObject:v4 forKeyedSubscript:@"vpn_dns_addresses"];
          [*(a1 + 32) setObject:v14 forKeyedSubscript:@"vpn_ipv4_address"];
          [*(a1 + 32) setObject:v20 forKeyedSubscript:@"vpn_ipv6_address"];
          [*(a1 + 32) setObject:v10 forKeyedSubscript:@"vpn_remote_address"];
          v25 = *(a1 + 40);
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(a1 + 32)];
          (*(v25 + 16))(v25, v26);

          goto LABEL_32;
        }

LABEL_28:
        v10 = 0;
        if (v6)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
      }

      v24 = "CommRemoteAddress";
    }

    string = xpc_dictionary_get_string(v22, v24);
    goto LABEL_27;
  }

  v15 = +[NPTLogger metadata];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233421000, v15, OS_LOG_TYPE_DEFAULT, "Extended session could not be populated", buf, 2u);
  }

  v16 = *(a1 + 40);
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(a1 + 32)];
  (*(v16 + 16))(v16, v14);
LABEL_32:
}

uint64_t __63__NPTVPNCollector_getExtendedStatus_session_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x23839F9C0]() == MEMORY[0x277D864C0])
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v4)];
    [v5 addObject:v6];
  }

  return 1;
}

- (void)vpnNotificationReceived:(id)received
{
  receivedCopy = received;
  object = [receivedCopy object];
  manager = [object manager];
  v7 = objc_alloc_init(NPTMetadataEvent);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  name = [receivedCopy name];

  if (name == @"com.apple.networkextension.app-configuration-changed")
  {
    v11 = 4;
  }

  else
  {
    name2 = [receivedCopy name];

    if (name2 == @"com.apple.networkextension.statuschanged")
    {
      v11 = 5;
    }

    else
    {
      v11 = 6;
    }
  }

  [(NPTMetadataEvent *)v7 setEventType:v11];
  v12 = [MEMORY[0x277CBEAA8] now];
  [(NPTMetadataEvent *)v7 setTimeStamp:v12];

  [(NPTMetadataEvent *)v7 setCollectorType:objc_opt_class()];
  v13 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v13 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(manager, "isEnabled")}];
  [v8 setObject:v14 forKeyedSubscript:@"vpn_enabled"];

  protocolConfiguration = [manager protocolConfiguration];
  dictionary = [protocolConfiguration dictionary];
  [v8 setObject:dictionary forKeyedSubscript:@"vpn_protocol"];

  connection = [manager connection];
  v18 = -[NPTVPNCollector getVPNStatusAsString:](self, "getVPNStatusAsString:", [connection status]);
  [v8 setObject:v18 forKeyedSubscript:@"vpn_status"];

  connection2 = [manager connection];
  connectedDate = [connection2 connectedDate];
  v21 = [v13 stringFromDate:connectedDate];
  [v8 setObject:v21 forKeyedSubscript:@"vpn_connected_date"];

  config = [(NPTVPNCollector *)self config];

  if (config)
  {
    v23 = dispatch_semaphore_create(0);
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __43__NPTVPNCollector_vpnNotificationReceived___block_invoke;
    v36 = &unk_2789D40B8;
    v37 = v8;
    v38 = v23;
    v24 = v23;
    [(NPTVPNCollector *)self collectVPNAddressesWithCompletion:&v33];
    v25 = dispatch_walltime(0, 500000000);
    dispatch_semaphore_wait(v24, v25);
  }

  v26 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v8, v33, v34, v35, v36}];
  [(NPTMetadataEvent *)v7 setData:v26];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedMetadata = [(NPTVPNCollector *)selfCopy cachedMetadata];
  v29 = [cachedMetadata objectForKeyedSubscript:@"events"];
  asDictionary = [(NPTMetadataEvent *)v7 asDictionary];
  [v29 addObject:asDictionary];

  objc_sync_exit(selfCopy);
  metadataDidChangeHandler = [(NPTVPNCollector *)selfCopy metadataDidChangeHandler];

  if (metadataDidChangeHandler)
  {
    metadataDidChangeHandler2 = [(NPTVPNCollector *)selfCopy metadataDidChangeHandler];
    (metadataDidChangeHandler2)[2](metadataDidChangeHandler2, v7, 0);
  }
}

intptr_t __43__NPTVPNCollector_vpnNotificationReceived___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addEntriesFromDictionary:a2];
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)stopCollecting
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(NPTVPNCollector *)self setManager:0];
}

- (id)getVPNStatusAsString:(int64_t)string
{
  if (string > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789D41A0[string];
  }
}

@end