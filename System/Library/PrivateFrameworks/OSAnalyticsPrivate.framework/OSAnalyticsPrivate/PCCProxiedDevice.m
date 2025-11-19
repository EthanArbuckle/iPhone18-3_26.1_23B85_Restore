@interface PCCProxiedDevice
- (BOOL)doWork:(id)a3;
- (PCCProxiedDevice)initWithEndpoint:(id)a3;
- (void)acceptTaskingPayload:(id)a3 forRouting:(id)a4 withId:(id)a5;
- (void)ack:(id)a3 result:(BOOL)a4 error:(id)a5;
- (void)finish:(id)a3 target:(id)a4 event:(id)a5 type:(id)a6 result:(id)a7;
- (void)handleConnection:(BOOL)a3 from:(id)a4;
- (void)handleFile:(id)a3 from:(id)a4 metadata:(id)a5;
- (void)handleMessage:(id)a3 from:(id)a4;
- (void)initiate:(id)a3 transferGroupWithOptions:(id)a4 job:(id)a5;
- (void)initiate:(id)a3 transferLog:(id)a4 withOptions:(id)a5 job:(id)a6;
- (void)sendDeviceMetadata:(id)a3;
- (void)startTimer;
@end

@implementation PCCProxiedDevice

- (PCCProxiedDevice)initWithEndpoint:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PCCProxiedDevice;
  v6 = [(PCCProxiedDevice *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_jobTimeout = 1200.0;
    v8 = objc_opt_new();
    jobByTracker = v7->_jobByTracker;
    v7->_jobByTracker = v8;

    v10 = dispatch_queue_create("com.apple.ProxiedCrashCopier.job_queue", 0);
    job_queue = v7->_job_queue;
    v7->_job_queue = v10;

    objc_storeStrong(&v7->_endpoint, a3);
    [(PCCEndpoint *)v7->_endpoint runWithDelegate:v7];
  }

  return v7;
}

- (void)handleConnection:(BOOL)a3 from:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    ++self->up_count;
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
    if (OSAIsConfiguredRSDDevice() && [v7 BOOLForKey:@"disablePushOnConnection"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipping group transfer from proxy-configured device with disablePushOnConnection set", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "remote ProxyingDevice connected, initiating group xfer", v9, 2u);
      }

      [(PCCProxiedDevice *)self initiate:v6 transferGroupWithOptions:&unk_286EB2328 job:0];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "remote ProxyingDevice disconnected", v8, 2u);
  }
}

- (void)handleMessage:(id)a3 from:(id)a4
{
  v106[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ++self->msg_count;
  v8 = [(__CFString *)v6 objectForKeyedSubscript:@"messageType"];
  if ([v8 isEqualToString:@"initiateMetadataUpdate"])
  {
    v9 = v6;
    v10 = [(__CFString *)v6 objectForKeyedSubscript:@"jobId"];
    v106[0] = @"updateProxiedDeviceMetadata";
    v105[0] = @"messageType";
    v105[1] = @"deviceMetadata";
    v11 = [MEMORY[0x277D36B80] sharedInstance];
    v12 = [v11 metadata];
    v13 = v12;
    v105[2] = @"jobId";
    v14 = @"<unknown-job>";
    if (v10)
    {
      v14 = v10;
    }

    v106[1] = v12;
    v106[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v96 = @"initiateMetadataUpdate";
      v97 = 2112;
      v98 = v10;
      v99 = 2112;
      v100 = @"updateProxiedDeviceMetadata";
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request %@ (%@); posting %@", buf, 0x20u);
    }

    v16 = [(PCCEndpoint *)self->_endpoint send:v7 message:v15 error:0];

    v6 = v9;
    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"acceptTasking"])
  {
    v17 = [(__CFString *)v6 objectForKeyedSubscript:@"forRouting"];
    v18 = [(__CFString *)v6 objectForKeyedSubscript:@"withTaskingId"];
    v19 = [(__CFString *)v6 objectForKeyedSubscript:@"settings"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v96 = @"acceptTasking";
      v97 = 2112;
      v98 = v17;
      v99 = 2112;
      v100 = v18;
      v101 = 2112;
      v102 = objc_opt_class();
      v103 = 2048;
      v104 = v19;
      v20 = v102;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request %@-%@ '%@' payload %@ %p", buf, 0x34u);
    }

    [(PCCProxiedDevice *)self acceptTaskingPayload:v19 forRouting:v17 withId:v18];

LABEL_23:
    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"initiateLogTransfer"])
  {
    v17 = [(__CFString *)v6 objectForKeyedSubscript:@"jobId"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v96 = @"initiateLogTransfer";
      v97 = 2112;
      v98 = v17;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request %@ (%@)", buf, 0x16u);
    }

    v18 = [(__CFString *)v6 objectForKeyedSubscript:@"logFile"];
    if (v18)
    {
      [(PCCProxiedDevice *)self initiate:v7 transferLog:v18 withOptions:v6 job:v17];
    }

    else
    {
      [(PCCProxiedDevice *)self initiate:v7 transferGroupWithOptions:v6 job:v17];
    }

    goto LABEL_23;
  }

  if ([v8 isEqualToString:@"initiateLogList"])
  {
    v21 = [(__CFString *)v6 objectForKeyedSubscript:@"jobId"];
    v22 = objc_opt_new();
    v70 = v6;
    v23 = [(__CFString *)v6 objectForKeyedSubscript:@"path"];
    v72 = v7;
    v68 = v23;
    if ([v23 length])
    {
      v93 = *MEMORY[0x277D36C48];
      v94 = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    }

    else
    {
      v24 = 0;
    }

    v37 = MEMORY[0x277D36B68];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __39__PCCProxiedDevice_handleMessage_from___block_invoke;
    v80[3] = &unk_2799C0150;
    v38 = v22;
    v81 = v38;
    v67 = v24;
    [v37 iterateLogsWithOptions:v24 usingBlock:v80];
    v39 = v21;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v38 count];
      *buf = 138413058;
      v96 = @"initiateLogList";
      v97 = 2112;
      v98 = v21;
      v99 = 2112;
      v100 = @"jobStatus";
      v101 = 2048;
      v102 = v40;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request %@ (%@); posting %@ %lu logs", buf, 0x2Au);
    }

    v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v38, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v42 = v38;
    v43 = [v42 countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v77;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v77 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v76 + 1) + 8 * i) path];
          [v41 addObject:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v44);
    }

    v90[0] = @"messageType";
    v90[1] = @"jobType";
    v91[0] = @"jobStatus";
    v91[1] = @"initiateLogList";
    v90[2] = @"jobId";
    v90[3] = @"content";
    v91[2] = v39;
    v91[3] = v41;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:4];
    v7 = v72;
    v49 = [(PCCEndpoint *)self->_endpoint send:v72 message:v48 error:0];

    v6 = v70;
    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"synchronize"])
  {
    v25 = [(__CFString *)v6 objectForKeyedSubscript:@"jobId"];
    v71 = [(__CFString *)v6 objectForKeyedSubscript:@"options"];
    v26 = [v71 objectForKeyedSubscript:@"status"];
    v27 = [v26 BOOLValue];

    if (v27)
    {
      v88[0] = @"messageType";
      v88[1] = @"jobType";
      v89[0] = @"jobStatus";
      v89[1] = @"synchronize";
      v89[2] = v25;
      v88[2] = @"jobId";
      v88[3] = @"content";
      v86[0] = @"tracking";
      v66 = [(NSMutableDictionary *)self->_jobByTracker allValues];
      v65 = [v66 valueForKey:@"description"];
      v87[0] = v65;
      v86[1] = @"timeout";
      v64 = [MEMORY[0x277CCABB0] numberWithDouble:self->_jobTimeout];
      v87[1] = v64;
      v86[2] = @"timer";
      v63 = [MEMORY[0x277CCABB0] numberWithInt:self->_expiryTimer != 0];
      v87[2] = v63;
      v86[3] = @"transaction";
      v62 = [MEMORY[0x277CCABB0] numberWithInt:self->_txn != 0];
      v87[3] = v62;
      v86[4] = @"files";
      v61 = [MEMORY[0x277CCABB0] numberWithInt:self->file_count];
      v87[4] = v61;
      v86[5] = @"msgs";
      v28 = [MEMORY[0x277CCABB0] numberWithInt:self->msg_count];
      v87[5] = v28;
      v86[6] = @"connections";
      v29 = [MEMORY[0x277CCABB0] numberWithInt:self->up_count];
      v87[6] = v29;
      v86[7] = @"jobs";
      [MEMORY[0x277CCABB0] numberWithInt:self->job_count];
      v69 = v25;
      v31 = v30 = v6;
      v87[7] = v31;
      v86[8] = @"expirations";
      v32 = [MEMORY[0x277CCABB0] numberWithInt:self->expire_count];
      v87[8] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:9];
      v89[3] = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];

      v6 = v30;
      v25 = v69;

      v35 = [(PCCEndpoint *)self->_endpoint send:v7 message:v34 error:0];
LABEL_52:

      goto LABEL_24;
    }

    v50 = [v71 objectForKey:@"set-expire"];

    if (v50)
    {
      v51 = [v71 objectForKeyedSubscript:@"set-expire"];
      v52 = [v51 intValue];

      if (v52 <= 5)
      {
        v53 = 5;
      }

      else
      {
        v53 = v52;
      }

      if (v53 >= 3600)
      {
        v53 = 3600;
      }

      self->_jobTimeout = v53;
      v84[0] = @"messageType";
      v84[1] = @"jobType";
      v85[0] = @"jobStatus";
      v85[1] = @"synchronize";
      v85[2] = v25;
      v84[2] = @"jobId";
      v84[3] = @"content";
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"jobTimeout set to %.0f secs", v53];
      v85[3] = v54;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:4];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        jobTimeout = self->_jobTimeout;
        *buf = 134217984;
        v96 = *&jobTimeout;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "jobTimeout set to %.0f secs", buf, 0xCu);
      }
    }

    else
    {
      v57 = [v71 objectForKeyedSubscript:@"test-expire"];
      v58 = [v57 BOOLValue];

      if (v58)
      {
        job_queue = self->_job_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__PCCProxiedDevice_handleMessage_from___block_invoke_125;
        block[3] = &unk_2799C0178;
        block[4] = self;
        v74 = v25;
        v75 = v7;
        dispatch_async(job_queue, block);

        goto LABEL_52;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "remote synchronization", buf, 2u);
      }

      v82[0] = @"messageType";
      v82[1] = @"jobType";
      v83[0] = @"jobStatus";
      v83[1] = @"synchronize";
      v82[2] = @"jobId";
      v82[3] = @"content";
      v83[2] = v25;
      v83[3] = @"remote-Ok";
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:4];
    }

    v60 = [(PCCEndpoint *)self->_endpoint send:v7 message:v55 error:0];

    goto LABEL_52;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v96 = v6;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown message %@", buf, 0xCu);
  }

LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
}

void __39__PCCProxiedDevice_handleMessage_from___block_invoke_125(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(*(a1 + 32) + 80) / 60.0;
    *buf = 134217984;
    v12 = v2;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "starting bogus job; wait for expiration in %.1f mins", buf, 0xCu);
  }

  v3 = [[PCCJob alloc] initWithID:*(a1 + 40) forTarget:*(a1 + 48) options:0];
  [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:@"<bogus-tracker>"];
  [*(a1 + 32) startTimer];
  v4 = [*(*(a1 + 32) + 32) allValues];
  v5 = [v4 valueForKey:@"description"];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:4];

  v7 = [*(*(a1 + 32) + 8) send:*(a1 + 48) message:v6 error:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleFile:(id)a3 from:(id)a4 metadata:(id)a5
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PCCProxiedDevice handleFile:from:metadata:];
  }
}

- (void)sendDeviceMetadata:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12[0] = @"messageType";
  v12[1] = @"deviceMetadata";
  v13[0] = @"updateProxiedDeviceMetadata";
  v5 = [MEMORY[0x277D36B80] sharedInstance];
  v6 = [v5 metadata];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = @"updateProxiedDeviceMetadata";
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "posted %@ (unsolicited)", &v10, 0xCu);
  }

  v8 = [(PCCEndpoint *)self->_endpoint send:v4 message:v7 error:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)acceptTaskingPayload:(id)a3 forRouting:(id)a4 withId:(id)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (OSAIsRSDDevice())
  {
    goto LABEL_2;
  }

  if ([@"-1" isEqualToString:v9])
  {
    goto LABEL_4;
  }

  if (([v8 isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"ca1-ohttp"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_2:
      v10 = v7;
      v7 = v10;
LABEL_5:
      v11 = [MEMORY[0x277D36B88] applyTasking:v8 taskId:v9 fromBlob:v10];
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unknown payload format for ca1 routing", buf, 2u);
    }

LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19[0] = @"PayloadContent";
    v19[1] = @"PayloadType";
    v20[0] = v7;
    v20[1] = @"Configuration";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v7 = v13;
  }

  v16 = 0;
  v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:200 options:0 error:&v16];
  v15 = v16;
  v10 = v15;
  if (v14)
  {

    v10 = v14;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Serialization of settings to plist failed: %@", buf, 0xCu);
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)ack:(id)a3 result:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    job_queue = self->_job_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__PCCProxiedDevice_ack_result_error___block_invoke;
    v11[3] = &unk_2799C01A0;
    v11[4] = self;
    v12 = v8;
    v14 = a4;
    v13 = v9;
    dispatch_async(job_queue, v11);
  }
}

void __37__PCCProxiedDevice_ack_result_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
    [v3 registerResult:*(a1 + 56) error:*(a1 + 48)];
    [*(a1 + 32) doWork:v3];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)initiate:(id)a3 transferGroupWithOptions:(id)a4 job:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = @"<unsolicited>";
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10;
  job_queue = self->_job_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__PCCProxiedDevice_initiate_transferGroupWithOptions_job___block_invoke;
  v16[3] = &unk_2799C01C8;
  v17 = v9;
  v18 = self;
  v19 = v11;
  v20 = v8;
  v13 = v8;
  v14 = v11;
  v15 = v9;
  dispatch_async(job_queue, v16);
}

void __58__PCCProxiedDevice_initiate_transferGroupWithOptions_job___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"allFiles"];
  v4 = [v3 BOOLValue];

  if (*(*(a1 + 40) + 24))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"event"];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 objectForKeyedSubscript:@"event"];
    }

    else
    {
      v12 = [v6 objectForKeyedSubscript:@"jobEvent"];
      if (v12)
      {
        v7 = [*(a1 + 32) objectForKeyedSubscript:@"jobEvent"];
      }

      else
      {
        v7 = @"<unknown>";
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = [*(*(a1 + 40) + 24) jid];
      *buf = 138543618;
      v27 = v13;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "declining job %{public}@; group transfer already in progress (%{public}@)", buf, 0x16u);
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    if (v4)
    {
      v18 = @"xfer-all";
    }

    else
    {
      v18 = @"xfer-group";
    }

    v19 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"group transfer already in progress";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v21 = [v19 errorWithDomain:@"ProxyGizmoLogTransferErrorDomain" code:5 userInfo:v20];
    [v15 finish:v16 target:v17 event:v7 type:v18 result:v21];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"standard";
      v9 = *(a1 + 48);
      if (v4)
      {
        v8 = @"all";
      }

      *buf = 138543618;
      v27 = v9;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "starting job %{public}@, transfer group '%@'", buf, 0x16u);
    }

    ++*(*(a1 + 40) + 68);
    v7 = *(a1 + 32);
    if (*(*(a1 + 40) + 76) == 1)
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = [v10 mutableCopy];
      }

      else
      {
        v11 = objc_opt_new();
      }

      v22 = v11;
      [(__CFString *)v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"<preserve>"];

      v7 = v22;
    }

    v20 = [[PCCGroupJob alloc] initWithID:*(a1 + 48) forTarget:*(a1 + 56) options:v7];
    if ([*(a1 + 40) doWork:v20])
    {
      objc_storeStrong((*(a1 + 40) + 24), v20);
      [*(a1 + 40) startTimer];
    }
  }

  objc_autoreleasePoolPop(v2);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)initiate:(id)a3 transferLog:(id)a4 withOptions:(id)a5 job:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = @"<unsolicited>";
  if (a6)
  {
    v13 = a6;
  }

  v14 = v13;
  job_queue = self->_job_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PCCProxiedDevice_initiate_transferLog_withOptions_job___block_invoke;
  block[3] = &unk_2799C01F0;
  block[4] = self;
  v21 = v12;
  v22 = v14;
  v23 = v10;
  v24 = v11;
  v16 = v11;
  v17 = v10;
  v18 = v14;
  v19 = v12;
  dispatch_async(job_queue, block);
}

void __57__PCCProxiedDevice_initiate_transferLog_withOptions_job___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  ++*(*(a1 + 32) + 68);
  v3 = *(a1 + 40);
  if (*(*(a1 + 32) + 76) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = [v4 mutableCopy];
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"<preserve>"];

    v3 = v6;
  }

  v7 = [[PCCJob alloc] initWithID:*(a1 + 48) forTarget:*(a1 + 56) options:v3 forFile:*(a1 + 64)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = [(PCCJob *)v7 type];
    v10 = *(a1 + 64);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "starting job %{public}@, %{public}@ '%{public}@'", &v12, 0x20u);
  }

  if ([*(a1 + 32) doWork:v7])
  {
    [*(a1 + 32) startTimer];
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)doWork:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PCCJob *)v4 nextFilepath];

  if (v5)
  {
    ++self->file_count;
    v6 = [(PCCJob *)v4 options];
    v7 = [v6 objectForKeyedSubscript:@"allFiles"];
    if ([v7 BOOLValue])
    {
      v8 = 1200;
    }

    else
    {
      v8 = 0;
    }

    [(PCCEndpoint *)self->_endpoint setFileTimeout:v8];

    endpoint = self->_endpoint;
    v10 = [(PCCJob *)v4 target];
    v11 = MEMORY[0x277CBEBC0];
    v12 = [(PCCJob *)v4 nextFilepath];
    v13 = [v11 fileURLWithPath:v12];
    v14 = [(PCCJob *)v4 metadata];
    v34 = 0;
    v15 = [(PCCEndpoint *)endpoint send:v10 file:v13 metadata:v14 error:&v34];
    v16 = v34;

    if (v15)
    {
      [(NSMutableDictionary *)self->_jobByTracker setObject:v4 forKeyedSubscript:v15];
      v17 = v4 != 0;
    }

    else
    {
      if (!v16)
      {
        v24 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA450];
        v40[0] = @"no send tracking id";
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
        v16 = [v24 errorWithDomain:@"ProxyGizmoLogTransferErrorDomain" code:4 userInfo:v25];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(PCCJob *)v4 jid];
        *buf = 138412546;
        v36 = v26;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "aborting job %@; file send failure: %@", buf, 0x16u);
      }

      v27 = [(PCCJob *)v4 jid];
      v28 = [(PCCJob *)v4 target];
      v29 = [(PCCJob *)v4 event];
      v30 = [(PCCGroupJob *)v4 type];
      [(PCCProxiedDevice *)self finish:v27 target:v28 event:v29 type:v30 result:v16];

      groupXferJob = self->_groupXferJob;
      if (groupXferJob == v4)
      {
        self->_groupXferJob = 0;
      }

      v17 = 0;
    }
  }

  else
  {
    v18 = [(PCCJob *)v4 jid];
    v19 = [(PCCJob *)v4 target];
    v20 = [(PCCJob *)v4 event];
    v21 = [(PCCGroupJob *)v4 type];
    v22 = [(PCCGroupJob *)v4 result];
    [(PCCProxiedDevice *)self finish:v18 target:v19 event:v20 type:v21 result:v22];

    v23 = self->_groupXferJob;
    if (v23 == v4)
    {
      self->_groupXferJob = 0;
    }

    v17 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)finish:(id)a3 target:(id)a4 event:(id)a5 type:(id)a6 result:(id)a7
{
  v36[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    v35[0] = @"messageType";
    v35[1] = @"jobId";
    v36[0] = @"jobStatus";
    v36[1] = v12;
    v35[2] = @"jobEvent";
    v35[3] = @"jobType";
    v36[2] = v14;
    v36[3] = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v18 = [v17 mutableCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v16;
      v20 = [(__CFString *)v19 domain];
      [v18 setObject:v20 forKeyedSubscript:@"error_domain"];

      v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString code](v19, "code")}];
      [v18 setObject:v21 forKeyedSubscript:@"error_code"];

      v22 = [(__CFString *)v19 userInfo];

      [v18 setObject:v22 forKeyedSubscript:@"error_info"];
    }

    else
    {
      [v18 setObject:v16 forKeyedSubscript:@"content"];
    }

    v23 = [(PCCEndpoint *)self->_endpoint send:v13 message:v18 error:0];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v25 = @"Ok";
    if (isKindOfClass)
    {
      v25 = v16;
    }

    v31 = 138412546;
    v32 = v12;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "completed job %@: %@", &v31, 0x16u);
  }

  if (![(NSMutableDictionary *)self->_jobByTracker count])
  {
    expiryTimer = self->_expiryTimer;
    v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (expiryTimer)
    {
      if (v27)
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no outstanding jobs; releasing transaction", &v31, 2u);
      }

      dispatch_source_cancel(self->_expiryTimer);
      v28 = self->_expiryTimer;
      self->_expiryTimer = 0;

      txn = self->_txn;
      self->_txn = 0;
    }

    else if (v27)
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no outstanding jobs (and no transactions were in play)", &v31, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)startTimer
{
  job_queue = self->_job_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__PCCProxiedDevice_startTimer__block_invoke;
  block[3] = &unk_2799C0218;
  block[4] = self;
  dispatch_async(job_queue, block);
}

void __30__PCCProxiedDevice_startTimer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!*(v3 + 40))
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 16));
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    v9 = dispatch_walltime(0, (*(v7 + 80) * 1000000000.0));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__PCCProxiedDevice_startTimer__block_invoke_2;
    handler[3] = &unk_2799C0218;
    handler[4] = v10;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(*(*(a1 + 32) + 40));
    if (*(*(a1 + 32) + 48))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v12 = MEMORY[0x277D86220];
        v13 = "re-starting job timer and extending transaction";
LABEL_7:
        _os_log_impl(&dword_25D12D000, v12, OS_LOG_TYPE_DEFAULT, v13, v17, 2u);
      }
    }

    else
    {
      v14 = os_transaction_create();
      v15 = *(a1 + 32);
      v16 = *(v15 + 48);
      *(v15 + 48) = v14;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v12 = MEMORY[0x277D86220];
        v13 = "starting job timer and creating transaction";
        goto LABEL_7;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __30__PCCProxiedDevice_startTimer__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v41 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(*(a1 + 32) + 40));
  v2 = *(v1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v30 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(*(v1 + 32) + 32);
  v4 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v28 = v1;
    v29 = *MEMORY[0x277CCA450];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = [*(*(v1 + 32) + 32) objectForKeyedSubscript:v8];
        v10 = [v9 lastTouch];
        [v10 timeIntervalSinceNow];
        v12 = fabs(v11);
        v13 = *(*(v1 + 32) + 80);

        if (v12 > v13)
        {
          ++*(*(v1 + 32) + 72);
          [v30 addObject:v8];
          v32 = *(v1 + 32);
          v14 = [v9 jid];
          v15 = [v9 target];
          v16 = [v9 event];
          v17 = [v9 type];
          v18 = v6;
          v19 = MEMORY[0x277CCA9B8];
          v38 = v29;
          v39 = @"job expired due to lack of progress";
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v21 = v20 = v5;
          v22 = [v19 errorWithDomain:@"ProxyGizmoLogTransferErrorDomain" code:5 userInfo:v21];
          [v32 finish:v14 target:v15 event:v16 type:v17 result:v22];

          v6 = v18;
          v1 = v28;

          v5 = v20;
          v23 = *(v28 + 32);
          v24 = *(v23 + 24);
          if (v9 == v24)
          {
            *(v23 + 24) = 0;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  [*(*(v1 + 32) + 32) removeObjectsForKeys:v30];
  if ([*(*(v1 + 32) + 32) count])
  {
    [*(v1 + 32) startTimer];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "job expiration event; releasing transaction", buf, 2u);
    }

    v25 = *(v1 + 32);
    v26 = *(v25 + 48);
    *(v25 + 48) = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end