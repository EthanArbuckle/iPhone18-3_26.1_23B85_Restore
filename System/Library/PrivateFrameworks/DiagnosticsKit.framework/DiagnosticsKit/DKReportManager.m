@interface DKReportManager
- (DKReportManager)initWithBundleIdentifier:(id)a3;
- (id)getRequests:(id)a3;
- (id)retryInterruptedRequests:(BOOL)a3 andWithError:(id *)a4;
- (void)cancelAllReports;
- (void)reportWithComponentPredicateManifest:(id)a3 completion:(id)a4;
- (void)reportersWithCompletion:(id)a3;
- (void)sendRequests:(id)a3 serialRequests:(BOOL)a4 failOnError:(BOOL)a5 completion:(id)a6;
@end

@implementation DKReportManager

- (DKReportManager)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = DKReportManager;
  v6 = [(DKReportManager *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    v8 = objc_opt_new();
    registry = v7->_registry;
    v7->_registry = v8;

    v10 = [DKReportPlanner plannerWithReportGeneratorRegistry:v7->_registry];
    planner = v7->_planner;
    v7->_planner = v10;

    v12 = v7->_registry;
    v13 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.diagnostics-reporter-service"];
    v14 = [DKExtensionDiscovery discoveryUsingExtensionRegistry:v12 services:v13 bundleIdentifier:v7->_bundleIdentifier];
    discovery = v7->_discovery;
    v7->_discovery = v14;

    v16 = [MEMORY[0x277CBEB18] array];
    requestsToRetry = v7->_requestsToRetry;
    v7->_requestsToRetry = v16;

    v18 = dispatch_queue_create("com.apple.DiagnosticsKit.reportManager", MEMORY[0x277D85CD8]);
    reportManagerQueue = v7->_reportManagerQueue;
    v7->_reportManagerQueue = v18;

    v7->_cancelled = 0;
    v20 = objc_opt_new();
    resourceUsage = v7->_resourceUsage;
    v7->_resourceUsage = v20;
  }

  return v7;
}

- (void)reportWithComponentPredicateManifest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(DKReportManager *)self setCancelled:0];
  v8 = [(DKReportManager *)self reportManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DKReportManager_reportWithComponentPredicateManifest_completion___block_invoke;
  block[3] = &unk_278F6C1A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __67__DKReportManager_reportWithComponentPredicateManifest_completion___block_invoke(uint64_t a1)
{
  v2 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v2, OS_LOG_TYPE_DEFAULT, "Waiting for discovery...", buf, 2u);
  }

  v3 = [*(a1 + 32) discovery];
  [v3 waitUntilComplete];

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v4 = [*(a1 + 32) getRequests:*(a1 + 40)];
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Starting to request reports...", v10, 2u);
  }

  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__DKReportManager_reportWithComponentPredicateManifest_completion___block_invoke_64;
  v7[3] = &unk_278F6C178;
  v7[4] = v6;
  v9 = buf;
  v8 = *(a1 + 48);
  [v6 sendRequests:v4 serialRequests:0 failOnError:0 completion:v7];

  _Block_object_dispose(buf, 8);
}

void __67__DKReportManager_reportWithComponentPredicateManifest_completion___block_invoke_64(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) requestsToRetry];
  v8 = [v7 count];

  if (v8)
  {
    v9 = *(a1 + 32);
    v19 = v6;
    v10 = [v9 retryInterruptedRequests:0 andWithError:&v19];
    v11 = v19;

    v12 = [v5 reportByMergingReport:v10];

    v6 = v11;
    v5 = v12;
  }

  if ([*(a1 + 32) isCancelled])
  {
    v13 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v14 = DKErrorLocalizedDescriptionForCode(-1003);
    v21[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v16 = [v13 errorWithDomain:@"DKErrorDomain" code:-1003 userInfo:v15];

    v6 = v14;
LABEL_7:

    v6 = v16;
    goto LABEL_8;
  }

  v17 = *(*(*(a1 + 48) + 8) + 40);
  if (v17)
  {
    v16 = v17;
    goto LABEL_7;
  }

LABEL_8:
  (*(*(a1 + 40) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

- (id)retryInterruptedRequests:(BOOL)a3 andWithError:(id *)a4
{
  v26 = a3;
  v54 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 1;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  v5 = [MEMORY[0x277CBEB58] set];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [(DKReportManager *)self requestsToRetry];
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v7)
  {
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 type];
        v12 = [v10 identifier];
        v13 = [DKComponentPredicate componentPredicateWithType:v11 identifier:v12];
        [v5 addObject:v13];
      }

      v7 = [v6 countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v7);
  }

  v14 = [(DKReportManager *)self getRequests:v5];
  v15 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248B9D000, v15, OS_LOG_TYPE_DEFAULT, "Rerunning interrupted report components in serial order", buf, 2u);
  }

  v16 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__DKReportManager_retryInterruptedRequests_andWithError___block_invoke;
  v27[3] = &unk_278F6C1C8;
  v27[4] = self;
  v29 = &v43;
  v30 = &v49;
  v31 = &v37;
  v17 = v16;
  v28 = v17;
  [(DKReportManager *)self sendRequests:v14 serialRequests:1 failOnError:0 completion:v27];
  v18 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v17, v18);
  if (v26 && (v50[3] & 1) == 0)
  {
    v19 = v38[5];
    v38[5] = 0;
  }

  v20 = v44[5];
  if (v20)
  {
    *a4 = v20;
  }

  v21 = [(DKReportManager *)self requestsToRetry];
  [v21 removeAllObjects];

  v22 = v38[5];
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __57__DKReportManager_retryInterruptedRequests_andWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v7 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v8 = DKErrorLocalizedDescriptionForCode(-1003);
    v23[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v7 errorWithDomain:@"DKErrorDomain" code:-1003 userInfo:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v13 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __57__DKReportManager_retryInterruptedRequests_andWithError___block_invoke_cold_1(v6, v13);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v14 = *(*(a1 + 48) + 8);
    v15 = v6;
    v8 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

LABEL_8:
  v16 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_248B9D000, v16, OS_LOG_TYPE_DEFAULT, "Finished executing interrupted report components", v21, 2u);
  }

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v5;
  v19 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
  v20 = *MEMORY[0x277D85DE8];
}

- (id)getRequests:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DKReportManager *)self planner];
  v6 = [v5 requestGroupsForPredicateManifest:v4];

  v7 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = [v13 requests];
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v22;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v22 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [v7 addObject:*(*(&v21 + 1) + 8 * j)];
            }

            v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v16);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sendRequests:(id)a3 serialRequests:(BOOL)a4 failOnError:(BOOL)a5 completion:(id)a6
{
  v43 = a5;
  v119 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v44 = a6;
  group = dispatch_group_create();
  v50 = dispatch_semaphore_create(0);
  v98 = 0;
  v99[0] = &v98;
  v99[1] = 0x2020000000;
  v100 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 1;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy_;
  v92 = __Block_byref_object_dispose_;
  v9 = [MEMORY[0x277CBEA60] array];
  v93 = [DKReport reportWithComponents:v9];

  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy_;
  v86 = __Block_byref_object_dispose_;
  v87 = 0;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v8;
  v47 = [obj countByEnumeratingWithState:&v78 objects:v118 count:16];
  if (v47)
  {
    v46 = *v79;
    v49 = *MEMORY[0x277CCA450];
LABEL_3:
    v48 = 0;
    while (1)
    {
      if (*v79 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v78 + 1) + 8 * v48);
      if ([(DKReportManager *)self isCancelled])
      {
        break;
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v11 = [v10 manifest];
      v12 = [v11 countByEnumeratingWithState:&v74 objects:v117 count:16];
      v52 = v11;
      if (v12)
      {
        v53 = *v75;
LABEL_9:
        v13 = 0;
        while (1)
        {
          if (*v75 != v53)
          {
            objc_enumerationMutation(v52);
          }

          v14 = *(*(&v74 + 1) + 8 * v13);
          if ([(DKReportManager *)self isCancelled])
          {
            break;
          }

          v15 = [v10 generator];
          v16 = [v15 extensionAttributes];
          v17 = [DKExtensionRequest requestWithExtensionAttributes:v16];

          [v17 setHostServicesDelegate:self];
          if (v17)
          {
            v72[0] = 0;
            v72[1] = v72;
            v72[2] = 0x3032000000;
            v72[3] = __Block_byref_object_copy_;
            v72[4] = __Block_byref_object_dispose_;
            v18 = MEMORY[0x277CCACA8];
            v19 = [v17 requestIdentifier];
            v73 = [v18 stringWithFormat:@"%@", v19];

            v70[0] = 0;
            v70[1] = v70;
            v70[2] = 0x3032000000;
            v70[3] = __Block_byref_object_copy_;
            v70[4] = __Block_byref_object_dispose_;
            v20 = MEMORY[0x277CCACA8];
            v21 = [v17 description];
            v71 = [v20 stringWithString:v21];

            ++*(v99[0] + 24);
            v22 = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v17 requestIdentifier];
              v24 = *(v99[0] + 24);
              *buf = 138413570;
              v106 = v23;
              v107 = 1024;
              v108 = v24;
              v109 = 2112;
              v110 = v17;
              v111 = 2112;
              v112 = v14;
              v113 = 2112;
              v114 = v10;
              v115 = 2112;
              v116 = v17;
              _os_log_impl(&dword_248B9D000, v22, OS_LOG_TYPE_DEFAULT, "[RID: %@] Starting; count: %d, %@ < %@ < %@; request: %@", buf, 0x3Au);
            }

            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke;
            v59[3] = &unk_278F6C1F0;
            v63 = &v88;
            v64 = &v94;
            v59[4] = self;
            v59[5] = v14;
            v65 = &v82;
            v66 = &v98;
            v67 = v72;
            v25 = v17;
            v60 = v25;
            v68 = v70;
            v69 = a4;
            v26 = group;
            v61 = v26;
            v27 = v50;
            v62 = v27;
            v28 = MEMORY[0x24C1E6340](v59);
            if (a4)
            {
              v29 = [v10 generator];
              [v29 beginRequest:v25 payload:v14 completion:v28];

              v30 = dispatch_time(0, 60000000000);
              dispatch_semaphore_wait(v27, v30);
            }

            else
            {
              dispatch_group_enter(v26);
              v37 = [(DKReportManager *)self resourceUsage];
              v38 = [v14 resources];
              v55[0] = MEMORY[0x277D85DD0];
              v55[1] = 3221225472;
              v55[2] = __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke_78;
              v55[3] = &unk_278F6C218;
              v55[4] = self;
              v55[5] = v10;
              v56 = v25;
              v57 = v14;
              v58 = v28;
              [v37 executeWhenSafe:v38 withCompletion:v55];
            }

            _Block_object_dispose(v70, 8);
            _Block_object_dispose(v72, 8);
          }

          else
          {
            v31 = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [DKReportManager sendRequests:v103 serialRequests:v99 failOnError:v104 completion:v31];
            }

            v32 = MEMORY[0x277CCA9B8];
            v101 = v49;
            v33 = DKErrorLocalizedDescriptionForCode(-1001);
            v102 = v33;
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
            v35 = [v32 errorWithDomain:@"DKErrorDomain" code:-1001 userInfo:v34];
            v36 = v83[5];
            v83[5] = v35;
          }

          if (v12 == ++v13)
          {
            v12 = [v52 countByEnumeratingWithState:&v74 objects:v117 count:16];
            if (v12)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      if (++v48 == v47)
      {
        v47 = [obj countByEnumeratingWithState:&v78 objects:v118 count:16];
        if (v47)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v39 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(group, v39))
  {
    v40 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248B9D000, v40, OS_LOG_TYPE_DEFAULT, "Dispatch group timed out waiting on all system report component requests to complete", buf, 2u);
    }
  }

  if (v43 && (v95[3] & 1) == 0)
  {
    v41 = v89[5];
    v89[5] = 0;
  }

  v44[2](v44, v89[5], v83[5]);
  _Block_object_dispose(&v82, 8);

  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);

  v42 = *MEMORY[0x277D85DE8];
}

void __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = *(*(*(a1 + 72) + 8) + 40);
  objc_sync_enter(v8);
  [*(*(*(a1 + 72) + 8) + 40) mergeWithReport:v7];
  objc_sync_exit(v8);

  if (!v7)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), a3);
    if ([v6 code] == -1002)
    {
      v9 = [*(a1 + 32) requestsToRetry];
      [v9 addObject:*(a1 + 40)];
    }
  }

  --*(*(*(a1 + 96) + 8) + 24);
  v10 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 104) + 8) + 40);
    v12 = *(*(*(a1 + 96) + 8) + 24);
    v13 = *(a1 + 48);
    v14 = *(*(*(a1 + 112) + 8) + 40);
    v18 = 138413314;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_248B9D000, v10, OS_LOG_TYPE_DEFAULT, "[RID: %@] Finished; count: %d; Report: %@, error: %@; request: %@", &v18, 0x30u);
  }

  v15 = [*(a1 + 32) resourceUsage];
  v16 = [*(a1 + 40) resources];
  [v15 releaseResources:v16];

  if (*(a1 + 120))
  {
    dispatch_semaphore_signal(*(a1 + 64));
  }

  else
  {
    dispatch_group_leave(*(a1 + 56));
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke_78(uint64_t a1)
{
  v2 = [*(a1 + 32) reportManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke_2;
  block[3] = &unk_278F6C0E0;
  v6 = *(a1 + 40);
  v3 = *(&v6 + 1);
  v5 = *(a1 + 56);
  v4 = *(&v5 + 1);
  v8 = v6;
  v9 = v5;
  dispatch_async(v2, block);
}

void __70__DKReportManager_sendRequests_serialRequests_failOnError_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) generator];
  [v2 beginRequest:*(a1 + 40) payload:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)reportersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DKReportManager *)self reportManagerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__DKReportManager_reportersWithCompletion___block_invoke;
  v7[3] = &unk_278F6C108;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__DKReportManager_reportersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) discovery];
  [v2 waitUntilComplete];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) availableReportGenerators];
  (*(v3 + 16))(v3, v4);
}

- (void)cancelAllReports
{
  [(DKReportManager *)self setCancelled:1];
  v3 = [(DKReportManager *)self registry];
  [v3 enumerateExtensionAdaptersWithBlock:&__block_literal_global_7];
}

void __57__DKReportManager_retryInterruptedRequests_andWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Component execution failed; count: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendRequests:(uint8_t *)buf serialRequests:(uint64_t)a2 failOnError:(_DWORD *)a3 completion:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(*a2 + 24);
  *buf = 67109120;
  *a3 = v4;
  _os_log_error_impl(&dword_248B9D000, log, OS_LOG_TYPE_ERROR, "Could not start report request; count: %d", buf, 8u);
}

@end