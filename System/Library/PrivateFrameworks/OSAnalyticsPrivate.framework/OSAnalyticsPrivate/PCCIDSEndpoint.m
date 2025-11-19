@interface PCCIDSEndpoint
- (BOOL)isDeviceNearby:(id)a3;
- (PCCIDSEndpoint)init;
- (id)deviceIds;
- (id)send:(id)a3 file:(id)a4 metadata:(id)a5 error:(id *)a6;
- (id)send:(id)a3 message:(id)a4 error:(id *)a5;
- (id)serviceByDeviceID:(id)a3;
- (id)startService:(id)a3;
- (void)runWithDelegate:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
@end

@implementation PCCIDSEndpoint

- (PCCIDSEndpoint)init
{
  if (objc_opt_class())
  {
    v7.receiver = self;
    v7.super_class = PCCIDSEndpoint;
    v3 = [(PCCIDSEndpoint *)&v7 init];
    if (v3)
    {
      v4 = objc_opt_new();
      serviceByDevice = v3->_serviceByDevice;
      v3->_serviceByDevice = v4;
    }
  }

  else
  {

    return 0;
  }

  return v3;
}

- (void)runWithDelegate:(id)a3
{
  v9.receiver = self;
  v9.super_class = PCCIDSEndpoint;
  [(PCCEndpoint *)&v9 runWithDelegate:a3];
  v4 = [(PCCIDSEndpoint *)self startService:@"com.apple.private.alloy.proxiedcrashcopier"];
  pairedWatchService = self->_pairedWatchService;
  self->_pairedWatchService = v4;

  v6 = [(PCCIDSEndpoint *)self startService:@"com.apple.private.alloy.proxiedcrashcopier.icloud"];
  homeDeviceService = self->_homeDeviceService;
  self->_homeDeviceService = v6;

  v8 = [(PCCIDSEndpoint *)self deviceIds];
  if (*&self->_pairedWatchService == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [PCCIDSEndpoint runWithDelegate:];
  }
}

- (id)startService:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D18770]) initWithService:v4];
  v6 = [v5 accounts];
  v7 = [v6 count];

  if (v7)
  {
    [v5 addDelegate:self queue:MEMORY[0x277D85CD0]];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 accounts];
      v9 = [v8 count];
      v10 = [v5 devices];
      v13 = 138412802;
      v14 = v4;
      v15 = 1024;
      v16 = v9;
      v17 = 1024;
      v18 = [v10 count];
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IDS(%@) connected with %d accounts and %d devices", &v13, 0x18u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IDS(%@) connected with no accounts.", &v13, 0xCu);
    }

    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)deviceIds
{
  v90 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_serviceByDevice removeAllObjects];
  if (*&self->_pairedWatchService == 0)
  {
    v45 = 0;
  }

  else
  {
    v59 = [MEMORY[0x277CBEB18] array];
    v3 = [(IDSService *)self->_pairedWatchService devices];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " # Name/DeviceID        Model                Build      Near Pair Cntd Actv iCld", buf, 2u);
    }

    v58 = self;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v72 = @"com.apple.private.alloy.proxiedcrashcopier";
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@:", buf, 0xCu);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v3;
    v4 = v59;
    v56 = [obj countByEnumeratingWithState:&v64 objects:v89 count:16];
    if (v56)
    {
      v53 = *v65;
      v46 = 138412290;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v65 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v64 + 1) + 8 * i);
          v7 = IDSCopyIDForDevice();
          v8 = [v4 count];
          v88[0] = v7;
          v87[0] = @"id";
          v87[1] = @"name";
          v9 = [v6 name];
          v88[1] = v9;
          v87[2] = @"model";
          v10 = [v6 modelIdentifier];
          v88[2] = v10;
          v87[3] = @"build";
          v11 = [v6 productBuildVersion];
          v88[3] = v11;
          v87[4] = @"nearby";
          v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isNearby")}];
          v87[5] = @"service";
          v88[4] = v12;
          v88[5] = @"com.apple.private.alloy.proxiedcrashcopier";
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:6];
          [v4 addObject:v13];

          [(NSMutableDictionary *)v58->_serviceByDevice setObject:v58->_pairedWatchService forKeyedSubscript:v7];
          v14 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v50 = [v6 name];
            v48 = [v6 modelIdentifier];
            v15 = [v6 productBuildVersion];
            if ([v6 isNearby])
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @" NO";
            }

            if ([v6 isLocallyPaired])
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @" NO";
            }

            if ([v6 isConnected])
            {
              v18 = @"YES";
            }

            else
            {
              v18 = @" NO";
            }

            if ([v6 isActive])
            {
              v19 = @"YES";
            }

            else
            {
              v19 = @" NO";
            }

            v20 = [v6 isCloudConnected];
            *buf = 67111170;
            if (v20)
            {
              v21 = @"YES";
            }

            else
            {
              v21 = @" NO";
            }

            *v72 = v8 + 1;
            *&v72[4] = 2112;
            *&v72[6] = v50;
            v73 = 2112;
            v74 = v48;
            v75 = 2112;
            v76 = v15;
            v77 = 2112;
            v78 = v16;
            v79 = 2112;
            v80 = v17;
            v81 = 2112;
            v82 = v18;
            v4 = v59;
            v83 = 2112;
            v84 = v19;
            v14 = MEMORY[0x277D86220];
            v85 = 2112;
            v86 = v21;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%2d %-20@ %-20@ %-10@ %@  %@  %@  %@  %@", buf, 0x58u);
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v46;
            *v72 = v7;
            _os_log_impl(&dword_25D12D000, v14, OS_LOG_TYPE_DEFAULT, "   %@", buf, 0xCu);
          }
        }

        v56 = [obj countByEnumeratingWithState:&v64 objects:v89 count:16];
      }

      while (v56);
    }

    v22 = v58;
    v23 = [(IDSService *)v58->_homeDeviceService devices];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v72 = @"com.apple.private.alloy.proxiedcrashcopier.icloud";
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@:", buf, 0xCu);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v49 = v23;
    v55 = [v49 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v55)
    {
      v54 = *v61;
      v24 = MEMORY[0x277D86220];
      do
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v61 != v54)
          {
            objc_enumerationMutation(v49);
          }

          v26 = *(*(&v60 + 1) + 8 * j);
          v27 = IDSCopyIDForDevice();
          v28 = [v59 count];
          v29 = [(NSMutableDictionary *)v22->_serviceByDevice objectForKeyedSubscript:v27];

          if (v29)
          {
            v57 = -1;
          }

          else
          {
            v57 = v28 + 1;
            v69[0] = v27;
            v68[0] = @"id";
            v68[1] = @"name";
            v30 = [v26 name];
            v69[1] = v30;
            v68[2] = @"model";
            v31 = [v26 modelIdentifier];
            v69[2] = v31;
            v68[3] = @"build";
            v32 = [v26 productBuildVersion];
            v69[3] = v32;
            v68[4] = @"nearby";
            v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v26, "isNearby")}];
            v68[5] = @"service";
            v69[4] = v33;
            v69[5] = @"com.apple.private.alloy.proxiedcrashcopier.icloud";
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:6];
            v35 = v34 = v22;
            [v59 addObject:v35];

            v22 = v34;
            v24 = MEMORY[0x277D86220];

            [(NSMutableDictionary *)v22->_serviceByDevice setObject:v22->_homeDeviceService forKeyedSubscript:v27];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v26 name];
            v51 = [v26 modelIdentifier];
            v36 = [v26 productBuildVersion];
            if ([v26 isNearby])
            {
              v37 = @"YES";
            }

            else
            {
              v37 = @" NO";
            }

            if ([v26 isLocallyPaired])
            {
              v38 = @"YES";
            }

            else
            {
              v38 = @" NO";
            }

            if ([v26 isConnected])
            {
              v39 = @"YES";
            }

            else
            {
              v39 = @" NO";
            }

            if ([v26 isActive])
            {
              v40 = @"YES";
            }

            else
            {
              v40 = @" NO";
            }

            v41 = [v26 isCloudConnected];
            *buf = 67111170;
            if (v41)
            {
              v42 = @"YES";
            }

            else
            {
              v42 = @" NO";
            }

            *v72 = v57;
            *&v72[4] = 2112;
            *&v72[6] = v52;
            v73 = 2112;
            v74 = v51;
            v75 = 2112;
            v76 = v36;
            v77 = 2112;
            v78 = v37;
            v79 = 2112;
            v80 = v38;
            v81 = 2112;
            v82 = v39;
            v83 = 2112;
            v84 = v40;
            v24 = MEMORY[0x277D86220];
            v22 = v58;
            v85 = 2112;
            v86 = v42;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%2d %-20@ %-20@ %-10@ %@  %@  %@  %@  %@", buf, 0x58u);
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v72 = v27;
            _os_log_impl(&dword_25D12D000, v24, OS_LOG_TYPE_DEFAULT, "   %@", buf, 0xCu);
          }
        }

        v55 = [v49 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v55);
    }

    v45 = v59;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)serviceByDeviceID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isEqualToString:*MEMORY[0x277D187E0]])
  {
    v6 = [(NSMutableDictionary *)self->_serviceByDevice objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = self->_pairedWatchService;
  }

  v7 = v6;
  homeDeviceService = v6;
  if (!v6)
  {
    homeDeviceService = self->_homeDeviceService;
  }

  v9 = homeDeviceService;

  return homeDeviceService;
}

- (BOOL)isDeviceNearby:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PCCIDSEndpoint *)self serviceByDeviceID:v4];
  v6 = v5;
  if (v5)
  {
    [v5 devices];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (v4)
          {
            v12 = [v11 uniqueID];
            v13 = [v4 isEqualToString:v12];

            if (v13)
            {
              goto LABEL_14;
            }
          }

          else if ([v11 isDefaultPairedDevice])
          {
LABEL_14:
            LOBYTE(v8) = [v11 isNearby];
            goto LABEL_15;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)send:(id)a3 message:(id)a4 error:(id *)a5
{
  v33[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(PCCIDSEndpoint *)self serviceByDeviceID:v8];
  if (v10)
  {
    v11 = *MEMORY[0x277D187E0];
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = *MEMORY[0x277D187E0];
    }

    v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
    pairedWatchService = self->_pairedWatchService;
    if (v10 == pairedWatchService)
    {
      v15 = 200;
    }

    else
    {
      v15 = 300;
    }

    if (v10 == pairedWatchService)
    {
      v18 = *MEMORY[0x277D18578];
      v32[0] = *MEMORY[0x277D185D8];
      v32[1] = v18;
      v33[0] = MEMORY[0x277CBEC38];
      v33[1] = MEMORY[0x277CBEC38];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    }

    else
    {
      v16 = MEMORY[0x277CBEC10];
    }

    v26 = 0;
    v27 = 0;
    v19 = [(IDSService *)v10 sendMessage:v9 toDestinations:v13 priority:v15 options:v16 identifier:&v27 error:&v26];
    v17 = v27;
    v20 = v26;
    if (v19)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = [v9 objectForKeyedSubscript:@"messageType"];
        *buf = 138412546;
        v29 = v21;
        v30 = 2112;
        v31 = v17;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sent %@, tracking: %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v9 objectForKeyedSubscript:@"messageType"];
        *buf = 138412546;
        v29 = v22;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sendMessage FAILED for %@: %@", buf, 0x16u);
      }

      if (a5)
      {
        v23 = v20;
        *a5 = v20;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Attempted to send message before connecting", buf, 2u);
    }

    v17 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)send:(id)a3 file:(id)a4 metadata:(id)a5 error:(id *)a6
{
  v36[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PCCIDSEndpoint *)self serviceByDeviceID:v10];
  if (v13)
  {
    v14 = *MEMORY[0x277D187E0];
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = *MEMORY[0x277D187E0];
    }

    v16 = [MEMORY[0x277CBEB98] setWithObject:v15];
    if (v13 == self->_pairedWatchService)
    {
      v17 = 200;
    }

    else
    {
      v17 = 300;
    }

    v35 = *MEMORY[0x277D18670];
    v36[0] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v19 = [v18 mutableCopy];

    if (v13 == self->_pairedWatchService)
    {
      v20 = MEMORY[0x277CBEC38];
      [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185D8]];
      [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x277D18578]];
      if ([(PCCEndpoint *)self fileTimeout])
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PCCEndpoint fileTimeout](self, "fileTimeout")}];
        [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x277D18658]];
      }
    }

    v29 = 0;
    v30 = 0;
    v22 = [(IDSService *)v13 sendResourceAtURL:v11 metadata:v12 toDestinations:v16 priority:v17 options:v19 identifier:&v30 error:&v29];
    v23 = v30;
    v24 = v29;
    v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v25)
      {
        *buf = 138543618;
        v32 = v11;
        v33 = 2114;
        v34 = v23;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sent %{public}@, tracking: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v25)
      {
        *buf = 138543618;
        v32 = v11;
        v33 = 2114;
        v34 = v24;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sendFile FAILED for %{public}@: %{public}@", buf, 0x16u);
      }

      if (a6)
      {
        v26 = v24;
        *a6 = v24;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Attempted to send file before connecting", buf, 2u);
    }

    v23 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [PCCIDSEndpoint service:v11 account:? incomingResourceAtURL:? metadata:? fromID:? context:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained handleFile:v11 from:v13 metadata:v12];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v7 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(PCCIDSEndpoint *)v7 service:v8 account:v9 identifier:v10 hasBeenDeliveredWithContext:v11, v12, v13, v14];
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained ack:v7 result:1 error:0];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_serviceByDevice objectForKeyedSubscript:v13];

    if (!v14)
    {
      [(NSMutableDictionary *)self->_serviceByDevice setObject:v10 forKeyedSubscript:v13];
    }
  }

  v15 = [v12 objectForKeyedSubscript:@"messageType"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(PCCIDSEndpoint *)v15 service:v16 account:v17 incomingMessage:v18 fromID:v19, v20, v21, v22];
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained handleMessage:v12 from:v13];
}

- (void)service:(void *)a1 account:incomingResourceAtURL:metadata:fromID:context:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  v2 = [v1 lastPathComponent];
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], v3, "received file '%@'", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(uint64_t)a3 account:(uint64_t)a4 identifier:(uint64_t)a5 hasBeenDeliveredWithContext:(uint64_t)a6 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "delivery receipt tracked %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(uint64_t)a3 account:(uint64_t)a4 incomingMessage:(uint64_t)a5 fromID:(uint64_t)a6 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "received message '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(__CFString *)a3 account:identifier:didSendWithSuccess:error:.cold.1(char a1, uint64_t a2, __CFString *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = "OK";
  if ((a1 & 1) == 0)
  {
    v3 = "FAILED";
  }

  v4 = &stru_286EAD908;
  v6 = 136315650;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  if (a3)
  {
    v4 = a3;
  }

  v10 = 2112;
  v11 = v4;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "msg callback %s tracked %@ %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end