@interface PCCProxyingDevice
- (BOOL)isFilenameReasonable:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PCCProxyingDevice)initWithEndpoint:(id)a3;
- (void)ack:(id)a3 result:(BOOL)a4 error:(id)a5;
- (void)addRequest:(id)a3 event:(id)a4 type:(id)a5 onComplete:(id)a6;
- (void)deliver:(id)a3 tasking:(id)a4 taskId:(id)a5 fromBlob:(id)a6;
- (void)diagnosticResultsEvent:(id)a3 type:(id)a4 result:(id)a5;
- (void)finishRequest:(id)a3 result:(id)a4;
- (void)finishRequestWithMessage:(id)a3 result:(id)a4;
- (void)handleConnection:(BOOL)a3 from:(id)a4;
- (void)handleFile:(id)a3 from:(id)a4 metadata:(id)a5;
- (void)handleMessage:(id)a3 from:(id)a4;
- (void)listDevices:(id)a3;
- (void)request:(id)a3 logListWithOptions:(id)a4 onComplete:(id)a5;
- (void)request:(id)a3 transferGroupWithOptions:(id)a4 onComplete:(id)a5;
- (void)request:(id)a3 transferLog:(id)a4 withOptions:(id)a5 onComplete:(id)a6;
- (void)startRequest:(id)a3 message:(id)a4 onComplete:(id)a5;
- (void)startTimer;
- (void)summarizeLog:(id)a3 reason:(id)a4;
- (void)synchronize:(id)a3 withOptions:(id)a4 onComplete:(id)a5;
- (void)updateProxiedDeviceMetadata:(id)a3 from:(id)a4;
@end

@implementation PCCProxyingDevice

- (PCCProxyingDevice)initWithEndpoint:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PCCProxyingDevice;
  v6 = [(PCCProxyingDevice *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_requestTimeout = 1200.0;
    v8 = objc_opt_new();
    reqById = v7->_reqById;
    v7->_reqById = v8;

    v10 = objc_opt_new();
    reqByTracker = v7->_reqByTracker;
    v7->_reqByTracker = v10;

    v12 = dispatch_queue_create("com.apple.ProxiedCrashCopier.request_queue", 0);
    request_queue = v7->_request_queue;
    v7->_request_queue = v12;

    v14 = dispatch_queue_create("com.apple.OSASyncProxy.conn_queue", 0);
    sync_proxy_queue = v7->_sync_proxy_queue;
    v7->_sync_proxy_queue = v14;

    objc_storeStrong(&v7->_endpoint, a3);
    [(PCCEndpoint *)v7->_endpoint runWithDelegate:v7];
    v16 = objc_opt_new();
    sync_summary = v7->_sync_summary;
    v7->_sync_summary = v16;

    v18 = objc_opt_new();
    tasking_summary = v7->_tasking_summary;
    v7->_tasking_summary = v18;
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x277CCAE90];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_286EB66F0];
  [v6 setExportedInterface:v7];

  [v6 setExportedObject:self];
  [v6 _setQueue:self->_sync_proxy_queue];
  [v6 resume];

  return 1;
}

- (void)listDevices:(id)a3
{
  endpoint = self->_endpoint;
  v5 = a3;
  v6 = [(PCCEndpoint *)endpoint deviceIds];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)synchronize:(id)a3 withOptions:(id)a4 onComplete:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PCCEndpoint *)self->_endpoint synchronize:v8 withOptions:v9];
  v12 = [v9 objectForKeyedSubscript:@"remote"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = *&v9;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "requesting remote synchronization with options: %@", buf, 0xCu);
    }

    v47[0] = @"messageType";
    v47[1] = @"options";
    v48[0] = @"synchronize";
    v48[1] = v9;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    [(PCCProxyingDevice *)self startRequest:v8 message:v14 onComplete:v10];
LABEL_17:

    goto LABEL_18;
  }

  v15 = [v9 objectForKeyedSubscript:@"status"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v45[0] = @"requesting";
    v41 = [(NSMutableDictionary *)self->_reqById allValues];
    v40 = [v41 valueForKey:@"description"];
    v46[0] = v40;
    v45[1] = @"tracking";
    v39 = [(NSMutableDictionary *)self->_reqByTracker allKeys];
    v46[1] = v39;
    v45[2] = @"timeout";
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:self->_requestTimeout];
    v46[2] = v38;
    v45[3] = @"timer";
    v37 = [MEMORY[0x277CCABB0] numberWithInt:self->_expiryTimer != 0];
    v46[3] = v37;
    v45[4] = @"transaction";
    v36 = [MEMORY[0x277CCABB0] numberWithInt:self->_txn != 0];
    v46[4] = v36;
    v45[5] = @"files";
    v17 = [MEMORY[0x277CCABB0] numberWithInt:self->file_count];
    v46[5] = v17;
    v45[6] = @"msgs";
    [MEMORY[0x277CCABB0] numberWithInt:self->msg_count];
    v19 = v18 = v11;
    v46[6] = v19;
    v45[7] = @"connections";
    v20 = [MEMORY[0x277CCABB0] numberWithInt:self->up_count];
    v46[7] = v20;
    v45[8] = @"requests";
    v21 = [MEMORY[0x277CCABB0] numberWithInt:self->request_count];
    v46[8] = v21;
    v45[9] = @"expirations";
    v22 = [MEMORY[0x277CCABB0] numberWithInt:self->expire_count];
    v46[9] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:10];
    (v10)[2](v10, v23, v18);

    v11 = v18;
    v24 = v41;
LABEL_7:

    goto LABEL_18;
  }

  v25 = [v9 objectForKey:@"set-expire"];

  if (v25)
  {
    v26 = [v9 objectForKeyedSubscript:@"set-expire"];
    v27 = [v26 intValue];

    if (v27 <= 5)
    {
      v28 = 5;
    }

    else
    {
      v28 = v27;
    }

    if (v28 >= 3600)
    {
      v28 = 3600;
    }

    self->_requestTimeout = v28;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      requestTimeout = self->_requestTimeout;
      *buf = 134217984;
      v50 = requestTimeout;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "requestTimeout set to %.0f secs", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"requestTimeout set to %.0f secs", *&self->_requestTimeout];
    (v10)[2](v10, v14, v11);
    goto LABEL_17;
  }

  v31 = [v9 objectForKeyedSubscript:@"test-expire"];
  v32 = [v31 BOOLValue];

  v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    if (v33)
    {
      v34 = self->_requestTimeout / 60.0;
      *buf = 134217984;
      v50 = v34;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "starting bogus request; wait for expiration in %.1f mins", buf, 0xCu);
    }

    [(PCCProxyingDevice *)self startRequest:v8 message:&unk_286EB2350 onComplete:0];
    request_queue = self->_request_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PCCProxyingDevice_synchronize_withOptions_onComplete___block_invoke;
    block[3] = &unk_2799C0240;
    v44 = v10;
    block[4] = self;
    v43 = v11;
    dispatch_async(request_queue, block);

    v24 = v44;
    goto LABEL_7;
  }

  if (v33)
  {
    *buf = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "local synchronization", buf, 2u);
  }

  (v10)[2](v10, @"local-Ok", v11);
LABEL_18:

  v30 = *MEMORY[0x277D85DE8];
}

void __56__PCCProxyingDevice_synchronize_withOptions_onComplete___block_invoke(void *a1)
{
  v2 = a1[6];
  v4 = [*(a1[4] + 32) allValues];
  v3 = [v4 valueForKey:@"description"];
  (*(v2 + 16))(v2, v3, a1[5]);
}

- (void)handleConnection:(BOOL)a3 from:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    ++self->up_count;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v7 = MEMORY[0x277D86220];
      v8 = "remote ProxiedDevice connected";
      v9 = &v11;
LABEL_6:
      _os_log_impl(&dword_25D12D000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "remote ProxiedDevice disconnected";
    v9 = &v10;
    goto LABEL_6;
  }
}

- (void)handleMessage:(id)a3 from:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ++self->msg_count;
  v8 = [v6 objectForKeyedSubscript:@"messageType"];
  if ([v8 isEqualToString:@"updateProxiedDeviceMetadata"])
  {
    v9 = [v6 objectForKeyedSubscript:@"deviceMetadata"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "updateProxiedDeviceMetadata:\n%@", buf, 0xCu);
    }

    if (!v9)
    {
      [PCCProxyingDevice handleMessage:from:];
    }

    [(PCCProxyingDevice *)self updateProxiedDeviceMetadata:v9 from:v7];
    [(PCCProxyingDevice *)self finishRequestWithMessage:v6 result:v9];
  }

  else if ([v8 isEqualToString:@"jobStatus"])
  {
    v10 = [v6 objectForKeyedSubscript:@"error_domain"];
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = [v6 objectForKeyedSubscript:@"error_code"];
    v13 = [v12 intValue];
    v14 = [v6 objectForKeyedSubscript:{@"error_info", *MEMORY[0x277CCA450]}];
    v21 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [v11 errorWithDomain:v10 code:v13 userInfo:v15];

    if (v16)
    {
      v17 = v16;
      v18 = v17;
    }

    else
    {
LABEL_12:
      v17 = [v6 objectForKeyedSubscript:@"content"];
      v18 = 0;
    }

    [(PCCProxyingDevice *)self finishRequestWithMessage:v6 result:v17];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown message %@", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)summarizeLog:(id)a3 reason:(id)a4
{
  v10 = a4;
  sync_summary = self->_sync_summary;
  v7 = a3;
  v8 = [(NSMutableDictionary *)sync_summary objectForKeyedSubscript:v10];
  if (!v8)
  {
    v8 = objc_opt_new();
    [(NSMutableDictionary *)self->_sync_summary setObject:v8 forKeyedSubscript:v10];
  }

  if ([(__CFString *)v7 length])
  {
    v9 = v7;
  }

  else
  {
    v9 = @"unknown";
  }

  [v8 _accumulateKey:v9 value:1];
}

- (BOOL)isFilenameReasonable:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 stringByStandardizingPath];
  v5 = [v4 pathComponents];

  v6 = [v5 count];
  if (v6 != 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FAILED untrusted filename validation '%{public}@'", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6 == 1;
}

- (void)handleFile:(id)a3 from:(id)a4 metadata:(id)a5
{
  v153[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v118 = a4;
  v9 = a5;
  ++self->file_count;
  v10 = objc_alloc(MEMORY[0x277D36B68]);
  v11 = [v8 path];
  v12 = [MEMORY[0x277D36B80] sharedInstance];
  v13 = [v10 initWithPath:v11 forRouting:@"<sync>" usingConfig:v12 options:&unk_286EB2378 error:0];

  [v13 closeFileStream];
  v122 = v13;
  v14 = [v13 bugType];
  v15 = 0x277CBE000;
  v119 = v9;
  v115 = self;
  v117 = v8;
  if (![v14 isEqualToString:@"211"])
  {
    goto LABEL_7;
  }

  v16 = [MEMORY[0x277D36B80] sharedInstance];
  if (([v16 optInApple] & 1) != 0 || (objc_msgSend(v9, "objectForKeyedSubscript:", @"device_class"), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v18 = v17;
  v19 = [v9 objectForKeyedSubscript:@"device_class"];
  if ([v19 intValue] == 7)
  {

    v15 = 0x277CBE000uLL;
    goto LABEL_6;
  }

  v62 = [v9 objectForKeyedSubscript:@"dnu-override"];
  v63 = [v62 BOOLValue];

  v9 = v119;
  v15 = 0x277CBE000uLL;
  if ((v63 & 1) == 0)
  {
    v64 = MEMORY[0x277CCA9B8];
    v134 = *MEMORY[0x277CCA450];
    v135 = @"failed opt-out";
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v50 = [v64 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:6 userInfo:v65];

    [(PCCProxyingDevice *)self summarizeLog:@"211" reason:@"failed-opt-out"];
    v120 = 0;
    goto LABEL_61;
  }

LABEL_8:
  v20 = [v9 objectForKeyedSubscript:@"proxied_dev"];
  v21 = [@"ProxiedDevice-" stringByAppendingString:v20];

  if ([(PCCProxyingDevice *)self isFilenameReasonable:v21])
  {
    v22 = [v9 objectForKeyedSubscript:@"name"];
    if ([(PCCProxyingDevice *)self isFilenameReasonable:v22])
    {
      v114 = v22;
      v23 = [v9 objectForKeyedSubscript:@"subdir"];
      v24 = MEMORY[0x277D36B80];
      v25 = [MEMORY[0x277D36B80] sharedInstance];
      v26 = [v25 pathSubmission];
      v112 = v23;
      if (v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = &stru_286EAD908;
      }

      [v21 stringByAppendingPathComponent:v27];
      v28 = v21;
      v30 = v29 = v15;
      v152 = *MEMORY[0x277D36C60];
      v153[0] = MEMORY[0x277CBEC38];
      v31 = [*(v29 + 2752) dictionaryWithObjects:v153 forKeys:&v152 count:1];
      v32 = [v24 ensureUsablePath:v26 component:v30 options:v31];

      if (v32)
      {
        v111 = v32;
        v33 = [v32 stringByAppendingPathComponent:v114];
        v34 = MEMORY[0x277CCACA8];
        v35 = [MEMORY[0x277D36B80] sharedInstance];
        v36 = [v35 pathSubmission];
        v151[0] = v36;
        v151[1] = v28;
        v151[2] = @"Retired";
        v151[3] = v114;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
        [v34 pathWithComponents:v37];
        v39 = v38 = v28;

        [MEMORY[0x277CCAA00] defaultManager];
        v121 = v120 = v33;
        v150[0] = v33;
        v40 = [v33 stringByAppendingPathExtension:@"synced"];
        v150[1] = v40;
        v150[2] = v39;
        v110 = v39;
        v41 = [v39 stringByAppendingPathExtension:@"synced"];
        v150[3] = v41;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:4];

        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        obj = v42;
        v43 = [obj countByEnumeratingWithState:&v128 objects:v149 count:16];
        v9 = v119;
        v15 = v29;
        v21 = v38;
        if (v43)
        {
          v44 = v43;
          v45 = *v129;
LABEL_16:
          v46 = 0;
          while (1)
          {
            if (*v129 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v47 = *(*(&v128 + 1) + 8 * v46);
            if ([v121 fileExistsAtPath:v47])
            {
              break;
            }

            if (v44 == ++v46)
            {
              v44 = [obj countByEnumeratingWithState:&v128 objects:v149 count:16];
              if (v44)
              {
                goto LABEL_16;
              }

              goto LABEL_35;
            }
          }

          v53 = [v120 pathExtension];
          v54 = [v53 isEqualToString:@"ips"];

          v55 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v54)
          {
            v56 = v111;
            if (v55)
            {
              *buf = 138543362;
              v143 = v47;
              _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Duplicate log detected at %{public}@", buf, 0xCu);
            }

            v57 = v47;

            v22 = v114;
            [(PCCProxyingDevice *)self summarizeLog:v114 reason:@"failed-duplicate"];
            v113 = 0;
            v58 = @"<unknown>";
            v120 = v57;
            v59 = v112;
            goto LABEL_57;
          }

          if (v55)
          {
            *buf = 138543362;
            v143 = v47;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "overwriting file at %{public}@", buf, 0xCu);
          }

          [v121 removeItemAtPath:v47 error:0];
        }

LABEL_35:

        v66 = [v8 path];
        v127 = 0;
        v67 = [v121 moveItemAtPath:v66 toPath:v120 error:&v127];
        v113 = v127;

        v68 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v67)
        {
          v22 = v114;
          if (v68)
          {
            *buf = 138543362;
            v143 = v120;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "incoming log %{public}@", buf, 0xCu);
          }

          [v122 rename:v120];
          v69 = v114;
          v70 = [v69 pathExtension];
          v71 = [v70 isEqualToString:@"synced"];

          if (v71)
          {
            v72 = [v69 stringByDeletingPathExtension];

            v69 = v72;
          }

          v73 = [v69 pathExtension];
          v74 = [&unk_286EB2440 containsObject:v73];

          if (v74)
          {
            v108 = v69;
            v109 = v21;
            v107 = [v122 bugType];
            [(PCCProxyingDevice *)self receivedReport:v122 from:v118 metadata:v119];
            v75 = [v119 objectForKeyedSubscript:@"xattr_list"];
            v123 = 0u;
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v76 = [v75 countByEnumeratingWithState:&v123 objects:v148 count:16];
            if (v76)
            {
              v77 = v76;
              v78 = *v124;
              v79 = MEMORY[0x277D86220];
              do
              {
                for (i = 0; i != v77; ++i)
                {
                  if (*v124 != v78)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v81 = *(*(&v123 + 1) + 8 * i);
                  v82 = [v75 objectForKeyedSubscript:v81];
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v143 = v81;
                    v144 = 2112;
                    v145 = v82;
                    _os_log_impl(&dword_25D12D000, v79, OS_LOG_TYPE_DEFAULT, "Adding xattr %@: %@", buf, 0x16u);
                  }

                  v83 = MEMORY[0x277D36B68];
                  v84 = [v122 filepath];
                  [v83 markFile:v84 withKey:objc_msgSend(v81 value:{"UTF8String"), objc_msgSend(v82, "UTF8String")}];
                }

                v77 = [v75 countByEnumeratingWithState:&v123 objects:v148 count:16];
              }

              while (v77);
            }

            v8 = v117;
            v9 = v119;
            v22 = v114;
            self = v115;
            v15 = 0x277CBE000;
            v69 = v108;
            v21 = v109;
            v85 = v107;
          }

          else
          {
            v85 = [v69 pathExtension];
          }

          [(PCCProxyingDevice *)self summarizeLog:v85 reason:@"received"];

          v58 = v85;
          v59 = v112;
        }

        else
        {
          v22 = v114;
          v59 = v112;
          if (v68)
          {
            *buf = 138543874;
            v143 = v8;
            v144 = 2114;
            v145 = v120;
            v146 = 2114;
            v147 = v113;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FAILED to activate %{public}@ -> %{public}@ : %{public}@", buf, 0x20u);
          }

          [(PCCProxyingDevice *)self summarizeLog:v114 reason:@"failed-move"];
          v58 = @"<unknown>";
        }

        v56 = v111;
LABEL_57:
      }

      else
      {
        v60 = MEMORY[0x277CCA9B8];
        v140 = *MEMORY[0x277CCA450];
        v141 = @"failed untrusted path validation";
        v61 = [*(v29 + 2752) dictionaryWithObjects:&v141 forKeys:&v140 count:1];
        v113 = [v60 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:6 userInfo:v61];

        v56 = 0;
        v22 = v114;
        [(PCCProxyingDevice *)self summarizeLog:v114 reason:@"failed-path"];
        v120 = 0;
        v9 = v119;
        v15 = v29;
        v21 = v28;
        v59 = v112;
      }

      v50 = v113;
    }

    else
    {
      v51 = MEMORY[0x277CCA9B8];
      v138 = *MEMORY[0x277CCA450];
      v139 = @"failed untrusted filename validation";
      v52 = [*(v15 + 2752) dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v50 = [v51 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:6 userInfo:v52];

      [(PCCProxyingDevice *)self summarizeLog:@"<untrusted>" reason:@"failed-filename"];
      v120 = 0;
    }
  }

  else
  {
    v48 = MEMORY[0x277CCA9B8];
    v136 = *MEMORY[0x277CCA450];
    v137 = @"failed untrusted proxy validation";
    v49 = [*(v15 + 2752) dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    v50 = [v48 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:6 userInfo:v49];

    [(PCCProxyingDevice *)self summarizeLog:@"<untrusted>" reason:@"failed-proxy-data"];
    v120 = 0;
  }

LABEL_61:
  v86 = v15;
  v87 = [MEMORY[0x277CBEAA8] date];
  lastTouch = self->_lastTouch;
  self->_lastTouch = v87;

  if (v50 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PCCProxyingDevice handleFile:v8 from:v118 metadata:v50];
  }

  v89 = v50;
  v90 = [v9 objectForKeyedSubscript:@"jobId"];
  v91 = [v9 objectForKeyedSubscript:@"jobEvent"];
  v92 = [v9 objectForKeyedSubscript:@"jobType"];
  v93 = [v9 objectForKeyedSubscript:@"status"];
  v94 = *(v86 + 2752);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v95 = [v93 objectForKeyedSubscript:@"jobStatus"];
  }

  else
  {
    v95 = 0;
  }

  if ([v95 BOOLValue])
  {
    v96 = @"<unsolicited>";
    v132[0] = @"jobId";
    v132[1] = @"jobType";
    v97 = @"xfer-file";
    if (v90)
    {
      v96 = v90;
    }

    if (v92)
    {
      v97 = v92;
    }

    v133[0] = v96;
    v133[1] = v97;
    v132[2] = @"jobEvent";
    v98 = @"<legacy>";
    if (v91)
    {
      v98 = v91;
    }

    v133[2] = v98;
    v99 = [*(v86 + 2752) dictionaryWithObjects:v133 forKeys:v132 count:3];
    v100 = v120;
    if (v89)
    {
      v101 = v89;
    }

    else
    {
      v101 = v120;
    }

    [(PCCProxyingDevice *)v115 finishRequestWithMessage:v99 result:v101];

    v102 = v118;
    v103 = v119;
  }

  else
  {
    v102 = v118;
    v103 = v119;
    v100 = v120;
    if (v90)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [PCCProxyingDevice handleFile:v93 from:? metadata:?];
      }

      if (v91)
      {
        v104 = v91;
      }

      else
      {
        v104 = @"unsolicited";
      }

      if (v92)
      {
        v105 = v92;
      }

      else
      {
        v105 = @"xfer-group";
      }

      [(PCCProxyingDevice *)v115 addRequest:v90 event:v104 type:v105 onComplete:0];
    }
  }

  v106 = *MEMORY[0x277D85DE8];
}

- (void)ack:(id)a3 result:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  request_queue = self->_request_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__PCCProxyingDevice_ack_result_error___block_invoke;
  v13[3] = &unk_2799C01A0;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(request_queue, v13);
}

void __38__PCCProxyingDevice_ack_result_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    if (*(a1 + 56) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = [v3 type];
        v5 = [v3 jid];
        v7 = 138412546;
        v8 = v4;
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "request %@ (%@) acknowledged", &v7, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) finishRequest:v3 result:*(a1 + 48)];
    }

    [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateProxiedDeviceMetadata:(id)a3 from:(id)a4
{
  v64[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"crashreporter_key"];
  v46 = self;
  if ([(PCCProxyingDevice *)self isFilenameReasonable:v8])
  {
    v9 = MEMORY[0x277D36B80];
    v10 = [MEMORY[0x277D36B80] sharedInstance];
    v11 = [v10 pathSubmission];
    if ([v7 isEqualToString:@"Bridge"])
    {
      v12 = @"Bridge";
    }

    else
    {
      v12 = v8;
    }

    v13 = [@"ProxiedDevice-" stringByAppendingString:v12];
    v63 = *MEMORY[0x277D36C60];
    v64[0] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v15 = [v9 ensureUsablePath:v11 component:v13 options:v14];

    if (v15)
    {
      v45 = v15;
      v16 = [v15 stringByAppendingPathComponent:@"deviceMetadata.proxy"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = v16;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "writing: %@", buf, 0xCu);
      }

      v17 = [v6 mutableCopy];
      v18 = MEMORY[0x277CCABB0];
      v19 = [MEMORY[0x277CBEAA8] date];
      [v19 timeIntervalSince1970];
      v20 = [v18 numberWithDouble:?];
      [v17 setObject:v20 forKeyedSubscript:@"proxyingDeviceTimeAtLastUpdate"];

      if (([v17 writeToFile:v16 atomically:1] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v16;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FAILED to write metadata update: %@", buf, 0xCu);
      }

      if ((OSAIsRSDHost() & 1) == 0)
      {
        v40 = v17;
        v41 = v16;
        v42 = v8;
        v44 = v7;
        v48 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [v6 objectForKeyedSubscript:@"currentTaskingIDByRouting"];
        v22 = [v21 allKeys];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = v22;
        v23 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
        v24 = v45;
        if (v23)
        {
          v25 = v23;
          v26 = *v51;
          v43 = v6;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v51 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v50 + 1) + 8 * i);
              v29 = [v6 objectForKeyedSubscript:@"currentTaskingIDByRouting"];
              v30 = [v29 objectForKeyedSubscript:v28];

              v31 = [v24 stringByAppendingPathComponent:@"tasking"];
              v32 = [v31 stringByAppendingPathExtension:v28];
              v33 = [v32 stringByAppendingPathExtension:@"proxy"];

              v49 = 0;
              if ([v48 fileExistsAtPath:v33 isDirectory:&v49] && (v49 & 1) == 0)
              {
                v34 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v33];
                v35 = [v34 objectForKeyedSubscript:@"taskingID"];
                v36 = v35;
                if (v35 && ([v35 isEqualToString:v30] & 1) == 0)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412802;
                    v57 = v28;
                    v58 = 2112;
                    v59 = v36;
                    v60 = 2112;
                    v61 = v30;
                    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updated staged tasking %@ '%@ <- %@'", buf, 0x20u);
                  }

                  v37 = [v34 objectForKeyedSubscript:@"payload"];
                  [(PCCProxyingDevice *)v46 deliver:v44 tasking:v28 taskId:v36 fromBlob:v37];

                  v54[0] = @"action";
                  v54[1] = @"taskId";
                  v55[0] = @"delivered";
                  v55[1] = v36;
                  v54[2] = @"blob";
                  v55[2] = v33;
                  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];
                  [(NSMutableDictionary *)v46->_tasking_summary setObject:v38 forKeyedSubscript:v28];

                  v6 = v43;
                  v24 = v45;
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v57 = v28;
                  v58 = 2112;
                  v59 = v30;
                  _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no change staged tasking %@ '%@'", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v57 = v28;
                _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no staged tasking %@", buf, 0xCu);
              }
            }

            v25 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
          }

          while (v25);
        }

        v7 = v44;
        v16 = v41;
        v8 = v42;
        v17 = v40;
      }

      v15 = v45;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)deliver:(id)a3 tasking:(id)a4 taskId:(id)a5 fromBlob:(id)a6
{
  v25[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24[0] = @"messageType";
  v24[1] = @"forRouting";
  v24[2] = @"withTaskingId";
  v25[0] = @"acceptTasking";
  v14 = @"-1";
  if (v12)
  {
    v14 = v12;
  }

  v25[1] = v11;
  v25[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v16 = [v15 mutableCopy];

  if (v12)
  {
    v17 = [(__CFString *)v12 isEqualToString:@"-1"];
    if (v13)
    {
      if ((v17 & 1) == 0)
      {
        [v16 setObject:v13 forKeyedSubscript:@"settings"];
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = @"acceptTasking";
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "posted %@-%@", &v20, 0x16u);
  }

  v18 = [(PCCEndpoint *)self->_endpoint send:v10 message:v16 error:0];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)request:(id)a3 transferGroupWithOptions:(id)a4 onComplete:(id)a5
{
  v19[3] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 objectForKeyedSubscript:@"allFiles"];
  v12 = [v11 BOOLValue];

  v19[0] = @"initiateLogTransfer";
  v18[0] = @"messageType";
  v18[1] = @"allFiles";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v19[1] = v13;
  v18[2] = @"jobEvent";
  v14 = [v8 objectForKeyedSubscript:@"event"];
  if (v14)
  {
    v15 = [v8 objectForKeyedSubscript:@"event"];
  }

  else
  {
    v15 = @"<unknown>";
  }

  v19[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [(PCCProxyingDevice *)self startRequest:v10 message:v16 onComplete:v9];

  if (v14)
  {
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)request:(id)a3 transferLog:(id)a4 withOptions:(id)a5 onComplete:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "transferLog options %@", buf, 0xCu);
  }

  v14 = [v12 objectForKeyedSubscript:{@"event", @"messageType", @"logFile", @"jobEvent", @"initiateLogTransfer", v11}];
  if (v14)
  {
    v15 = [v12 objectForKeyedSubscript:@"event"];
  }

  else
  {
    v15 = @"<unknown>";
  }

  v19[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:3];
  [(PCCProxyingDevice *)self startRequest:v10 message:v16 onComplete:v13];

  if (v14)
  {
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)request:(id)a3 logListWithOptions:(id)a4 onComplete:(id)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [a4 objectForKeyedSubscript:@"path"];
  v11 = v10;
  v15[0] = @"messageType";
  v15[1] = @"path";
  v12 = &stru_286EAD908;
  if (v10)
  {
    v12 = v10;
  }

  v16[0] = @"initiateLogList";
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [(PCCProxyingDevice *)self startRequest:v9 message:v13 onComplete:v8];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startRequest:(id)a3 message:(id)a4 onComplete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  request_queue = self->_request_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__PCCProxyingDevice_startRequest_message_onComplete___block_invoke;
  v15[3] = &unk_2799C0268;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(request_queue, v15);
}

void __53__PCCProxyingDevice_startRequest_message_onComplete___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 92);
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];

  v5 = [*(a1 + 40) mutableCopy];
  [v5 setObject:v4 forKeyedSubscript:@"jobId"];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(a1 + 48);
  v18 = 0;
  v8 = [v6 send:v7 message:v5 error:&v18];
  v9 = v18;
  if (!v9)
  {
    v11 = [[PCCRequest alloc] initWithMessage:v5 options:0];
    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = [v12 copy];
      [(PCCRequest *)v11 setCallback:v13];
    }

    [*(*(a1 + 32) + 32) setObject:v11 forKeyedSubscript:v4];
    if (v8)
    {
      [*(*(a1 + 32) + 40) setObject:v11 forKeyedSubscript:v8];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(PCCRequest *)v11 type];
        *buf = 138412546;
        v20 = v14;
        v21 = 2112;
        v22 = v4;
        v15 = MEMORY[0x277D86220];
        v16 = "request %@ (%@) enroute";
LABEL_11:
        _os_log_impl(&dword_25D12D000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PCCRequest *)v11 type];
      *buf = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v4;
      v15 = MEMORY[0x277D86220];
      v16 = "request %@ (%@) sent";
      goto LABEL_11;
    }

    [*(a1 + 32) startTimer];

    goto LABEL_13;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

LABEL_13:

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)addRequest:(id)a3 event:(id)a4 type:(id)a5 onComplete:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  request_queue = self->_request_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PCCProxyingDevice_addRequest_event_type_onComplete___block_invoke;
  block[3] = &unk_2799C0290;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(request_queue, block);
}

void __54__PCCProxyingDevice_addRequest_event_type_onComplete___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (!v3)
  {
    v4 = [PCCRequest alloc];
    v10 = *(a1 + 40);
    v9[0] = @"jobId";
    v9[1] = @"jobEvent";
    v9[2] = @"jobType";
    v11 = *(a1 + 56);
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:v9 count:3];
    v3 = [(PCCRequest *)v4 initWithMessage:v5 options:0];

    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = [v6 copy];
      [(PCCRequest *)v3 setCallback:v7];
    }

    [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 32) startTimer];
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)finishRequest:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  request_queue = self->_request_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PCCProxyingDevice_finishRequest_result___block_invoke;
  block[3] = &unk_2799C0178;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(request_queue, block);
}

void __42__PCCProxyingDevice_finishRequest_result___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) type];
    v4 = [*(a1 + 32) jid];
    v5 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = @"Ok";
    }

    *buf = 138412802;
    v26 = v3;
    v27 = 2112;
    v28 = v4;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "request %@ (%@) complete %@", buf, 0x20u);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) event];
  v9 = [*(a1 + 32) type];
  v10 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = @"error";
  }

  else
  {
    v11 = @"success";
  }

  [v7 diagnosticResultsEvent:v8 type:v9 result:v11];

  v12 = *(*(a1 + 48) + 32);
  v13 = [*(a1 + 32) jid];
  [v12 removeObjectForKey:v13];

  v14 = [*(a1 + 32) callback];
  if (v14)
  {
    v15 = dispatch_get_global_queue(0, 0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __42__PCCProxyingDevice_finishRequest_result___block_invoke_422;
    v22[3] = &unk_2799C02B8;
    v23 = *(a1 + 40);
    v24 = v14;
    dispatch_async(v15, v22);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "no handler installed?", buf, 2u);
  }

  v16 = *(a1 + 48);
  if (*(v16 + 48) && ![*(v16 + 32) count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no outstanding requests; releasing transaction", buf, 2u);
    }

    dispatch_source_cancel(*(*(a1 + 48) + 48));
    v17 = *(a1 + 48);
    v18 = *(v17 + 48);
    *(v17 + 48) = 0;

    v19 = *(a1 + 48);
    v20 = *(v19 + 56);
    *(v19 + 56) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x277D85DE8];
}

void __42__PCCProxyingDevice_finishRequest_result___block_invoke_422(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if ((isKindOfClass & 1) == 0)
  {
    v7 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)finishRequestWithMessage:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  request_queue = self->_request_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PCCProxyingDevice_finishRequestWithMessage_result___block_invoke;
  block[3] = &unk_2799C0178;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(request_queue, block);
}

void __53__PCCProxyingDevice_finishRequestWithMessage_result___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"jobId"];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"<unsolicited>"])
    {
      v5 = [*(a1 + 32) objectForKeyedSubscript:@"jobType"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = *(a1 + 40);
        }

        else
        {
          v7 = @"Ok";
        }

        v20 = 138412802;
        v21 = v4;
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "job %@ %@ completed %@", &v20, 0x20u);
      }

      v15 = *(a1 + 48);
      v16 = [*(a1 + 32) objectForKeyedSubscript:@"jobEvent"];
      v17 = *(a1 + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = @"error";
      }

      else
      {
        v18 = @"success";
      }

      [v15 diagnosticResultsEvent:v16 type:v5 result:v18];

      goto LABEL_23;
    }

    v5 = [*(*(a1 + 48) + 32) objectForKeyedSubscript:v4];
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v4;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unknown job id %@", &v20, 0xCu);
      }

      goto LABEL_23;
    }

LABEL_10:
    [*(a1 + 48) finishRequest:v5 result:*(a1 + 40)];
LABEL_23:

    goto LABEL_24;
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"messageType"];
  v9 = [v8 isEqualToString:@"updateProxiedDeviceMetadata"];

  if (v9)
  {
    v5 = [*(*(a1 + 48) + 32) objectForKeyedSubscript:@"<unsolicited>"];
    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"messageType"];
  v11 = [v10 isEqualToString:@"initiateLogList"];

  if ((v11 & 1) == 0)
  {
    v12 = [*(a1 + 32) objectForKeyedSubscript:@"messageType"];
    v13 = [v12 isEqualToString:@"synchronize"];

    if ((v13 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unknown finishing message %@", &v20, 0xCu);
    }
  }

LABEL_24:

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)diagnosticResultsEvent:(id)a3 type:(id)a4 result:(id)a5
{
  v37[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([(__CFString *)v9 isEqualToString:@"xfer-group"]& 1) != 0 || ([(__CFString *)v9 isEqualToString:@"xfer-all"]& 1) != 0 || [(__CFString *)v9 isEqualToString:@"xfer-file"])
  {
    v11 = [MEMORY[0x277D36B80] sharedInstance];
    v12 = [v11 appleInternal];

    if (v12)
    {
      v32 = [MEMORY[0x277CBEAA8] date];
      v37[0] = v32;
      v36[0] = @"time";
      v36[1] = @"version";
      v13 = [MEMORY[0x277D36B80] sharedInstance];
      v14 = [v13 buildVersion];
      v15 = v14;
      v16 = @"<unknown>";
      if (v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = @"<unknown>";
      }

      v37[1] = v14;
      v37[2] = v17;
      v36[2] = @"event";
      v36[3] = @"transfer";
      if (v9)
      {
        v16 = v9;
      }

      v34[0] = @"type";
      v34[1] = @"result";
      v35[0] = v16;
      v35[1] = v10;
      v31 = v10;
      v34[2] = @"summary";
      v35[2] = self->_sync_summary;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
      v37[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
      v20 = [v19 mutableCopy];

      if ([(NSMutableDictionary *)self->_tasking_summary count])
      {
        [v20 setObject:self->_tasking_summary forKeyedSubscript:@"taskings"];
      }

      v21 = [MEMORY[0x277D36B80] sharedInstance];
      v22 = [v21 pathDiagnostics];
      v23 = MEMORY[0x277CCACA8];
      v24 = OSANSDateFormat();
      v25 = [v23 stringWithFormat:@"transfer-%@", v24];
      v26 = [v22 stringByAppendingPathComponent:v25];
      v27 = [v26 stringByAppendingPathExtension:@"results"];

      if ([v20 writeToFile:v27 atomically:1])
      {
        v10 = v31;
      }

      else
      {
        v10 = v31;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "failed to write results file, saving as txt", buf, 2u);
        }

        v28 = [v27 stringByAppendingPathExtension:@"txt"];

        v29 = [v20 description];
        [v29 writeToFile:v28 atomically:1 encoding:4 error:0];

        v27 = v28;
      }
    }

    [(NSMutableDictionary *)self->_sync_summary removeAllObjects];
    [(NSMutableDictionary *)self->_tasking_summary removeAllObjects];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)startTimer
{
  request_queue = self->_request_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PCCProxyingDevice_startTimer__block_invoke;
  block[3] = &unk_2799C0218;
  block[4] = self;
  dispatch_async(request_queue, block);
}

void __31__PCCProxyingDevice_startTimer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  v6 = *(a1 + 32);
  if (!*(v6 + 48))
  {
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 24));
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    v12 = dispatch_walltime(0, (*(v10 + 112) * 1000000000.0));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v13 = *(a1 + 32);
    v14 = *(v13 + 48);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __31__PCCProxyingDevice_startTimer__block_invoke_2;
    handler[3] = &unk_2799C0218;
    handler[4] = v13;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_resume(*(*(a1 + 32) + 48));
    if (*(*(a1 + 32) + 56))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v15 = MEMORY[0x277D86220];
        v16 = "re-starting request timer and extending transaction";
LABEL_7:
        _os_log_impl(&dword_25D12D000, v15, OS_LOG_TYPE_DEFAULT, v16, v20, 2u);
      }
    }

    else
    {
      v17 = os_transaction_create();
      v18 = *(a1 + 32);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v15 = MEMORY[0x277D86220];
        v16 = "starting request timer and creating transaction";
        goto LABEL_7;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __31__PCCProxyingDevice_startTimer__block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 16) timeIntervalSinceNow];
  v3 = *(a1 + 32);
  if (fabs(v2) >= *(v3 + 112))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [*(v3 + 32) allValues];
    v9 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      v12 = *MEMORY[0x277CCA450];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          ++*(*(a1 + 32) + 96);
          v15 = *(a1 + 32);
          v16 = MEMORY[0x277CCA9B8];
          v32 = v12;
          v33 = @"expired due to lack of progress";
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          v18 = [v16 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:5 userInfo:v17];
          [v15 finishRequest:v14 result:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v10);
    }

    [*(*(a1 + 32) + 40) removeAllObjects];
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v19 = MEMORY[0x277D86220];
    v20 = "request expiration event; releasing transaction";
    goto LABEL_17;
  }

  v4 = [*(v3 + 32) count];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v5)
    {
LABEL_18:
      v21 = *(a1 + 32);
      v22 = *(v21 + 56);
      *(v21 + 56) = 0;

      dispatch_source_cancel(*(*(a1 + 32) + 48));
      v23 = *(a1 + 32);
      v24 = *(v23 + 48);
      *(v23 + 48) = 0;

      goto LABEL_19;
    }

    *buf = 0;
    v19 = MEMORY[0x277D86220];
    v20 = "request expiration event (with no outstanding requests!); releasing transaction";
LABEL_17:
    _os_log_impl(&dword_25D12D000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    goto LABEL_18;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "re-starting request timer thereby extending transaction", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  v8 = dispatch_walltime(0, (*(v6 + 112) * 1000000000.0));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
LABEL_19:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleFile:(uint64_t)a1 from:(uint64_t)a2 metadata:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138543874;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error handling %{public}@ from proxying device (%{public}@): %{public}@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleFile:(uint64_t)a1 from:metadata:.cold.2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "file status update %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end