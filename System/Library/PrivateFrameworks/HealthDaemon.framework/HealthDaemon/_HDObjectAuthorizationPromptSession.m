@interface _HDObjectAuthorizationPromptSession
- (void)endPromptTransactionWithSuccess:(void *)a3 error:;
@end

@implementation _HDObjectAuthorizationPromptSession

- (void)endPromptTransactionWithSuccess:(void *)a3 error:
{
  v117 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = _Block_copy(v6);
      v8 = *(a1 + 40);
      *(a1 + 40) = 0;

      v61 = v7;
      if (a2)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 8));
        v10 = [WeakRetained sourceManager];
        v11 = *(a1 + 48);
        v85[0] = 0;
        v12 = [v10 localSourceForBundleIdentifier:v11 error:v85];
        v13 = v85[0];

        v73 = v12 != 0;
        if (!v12)
        {
          _HKInitializeLogging();
          v14 = HKLogAuthorization();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v116 = v13;
            _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to look up source entity: %{public}@", buf, 0xCu);
          }

          v15 = v13;
          v5 = v15;
        }
      }

      else
      {
        v12 = 0;
        v73 = 0;
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = *(a1 + 16);
      v16 = [obj countByEnumeratingWithState:&v81 objects:v113 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v82;
        v64 = v12;
        v65 = v5;
        v62 = *v82;
        v63 = a1;
        do
        {
          v19 = 0;
          v66 = v17;
          do
          {
            if (*v82 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v81 + 1) + 8 * v19);
            if (v20)
            {
              v21 = *(v20 + 56);
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;
            v23 = objc_loadWeakRetained((a1 + 8));
            v74 = v12;
            v24 = v22;
            v25 = v23;
            v26 = v5;
            if (v20)
            {
              v27 = *(v20 + 16);
              if (v27)
              {
                v72 = v25;
                v28 = _Block_copy(v27);
                v29 = *(v20 + 16);
                *(v20 + 16) = 0;

                if (v73)
                {
                  v70 = v28;
                  v71 = v24;
                  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  v103 = 0u;
                  v104 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  v31 = *(v20 + 32);
                  v32 = [v31 countByEnumeratingWithState:&v101 objects:buf count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v102;
                    do
                    {
                      for (i = 0; i != v33; ++i)
                      {
                        if (*v102 != v34)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v101 + 1) + 8 * i);
                        v37 = [v36 UUID];
                        [v30 setObject:v36 forKeyedSubscript:v37];
                      }

                      v33 = [v31 countByEnumeratingWithState:&v101 objects:buf count:16];
                    }

                    while (v33);
                  }

                  v38 = *(v20 + 32);
                  v100 = v26;
                  v39 = [HDObjectAuthorizationEntity authorizationRecordsForSamples:v38 sourceEntity:v74 sessionIdentifier:v71 profile:v72 error:&v100];
                  v40 = v100;

                  if (v39)
                  {
                    v68 = v40;
                    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v89 = 0u;
                    v90 = 0u;
                    v91 = 0u;
                    v92 = 0u;
                    v67 = v39;
                    v42 = v39;
                    v43 = [v42 countByEnumeratingWithState:&v89 objects:v114 count:16];
                    if (v43)
                    {
                      v44 = v43;
                      v45 = *v90;
                      do
                      {
                        for (j = 0; j != v44; ++j)
                        {
                          if (*v90 != v45)
                          {
                            objc_enumerationMutation(v42);
                          }

                          v47 = *(*(&v89 + 1) + 8 * j);
                          if ([v47 status] == 2)
                          {
                            v48 = [v47 objectUUID];
                            v49 = [v30 objectForKeyedSubscript:v48];
                            [v41 addObject:v49];
                          }
                        }

                        v44 = [v42 countByEnumeratingWithState:&v89 objects:v114 count:16];
                      }

                      while (v44);
                    }

                    v85[1] = MEMORY[0x277D85DD0];
                    v85[2] = 3221225472;
                    v85[3] = __106___HDObjectAuthorizationRequest_invokeCompletionWithSuccess_sourceEntity_sessionIdentifier_profile_error___block_invoke_3;
                    v85[4] = &unk_278621C70;
                    v88 = v70;
                    v85[5] = v20;
                    v86 = v41;
                    v50 = v68;
                    v87 = v68;
                    v51 = v41;
                    HKDispatchAsyncOnGlobalConcurrentQueue();

                    v39 = v67;
                  }

                  else
                  {
                    v93 = MEMORY[0x277D85DD0];
                    v94 = 3221225472;
                    v95 = __106___HDObjectAuthorizationRequest_invokeCompletionWithSuccess_sourceEntity_sessionIdentifier_profile_error___block_invoke_2;
                    v96 = &unk_278616488;
                    v99 = v70;
                    v97 = v20;
                    v98 = v40;
                    HKDispatchAsyncOnGlobalConcurrentQueue();

                    v51 = v99;
                    v50 = v40;
                  }

                  v12 = v64;
                  v5 = v65;
                  v18 = v62;
                  a1 = v63;
                  v17 = v66;
                  v52 = v70;
                  v24 = v71;
                }

                else
                {
                  v105 = MEMORY[0x277D85DD0];
                  v106 = 3221225472;
                  v107 = __106___HDObjectAuthorizationRequest_invokeCompletionWithSuccess_sourceEntity_sessionIdentifier_profile_error___block_invoke;
                  v108 = &unk_278616488;
                  v111 = v28;
                  v109 = v20;
                  v50 = v26;
                  v110 = v50;
                  HKDispatchAsyncOnGlobalConcurrentQueue();

                  v52 = v28;
                  v30 = v111;
                }

                v26 = v50;
                v25 = v72;
              }
            }

            ++v19;
          }

          while (v19 != v17);
          v53 = [obj countByEnumeratingWithState:&v81 objects:v113 count:16];
          v17 = v53;
        }

        while (v53);
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v54 = *(a1 + 24);
      v55 = [v54 countByEnumeratingWithState:&v77 objects:v112 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v78;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v78 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v76 = *(*(&v77 + 1) + 8 * k);
            v75 = v5;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          v56 = [v54 countByEnumeratingWithState:&v77 objects:v112 count:16];
        }

        while (v56);
      }

      v5 = v5;
      v59 = v61;
      HKDispatchAsyncOnGlobalConcurrentQueue();
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

@end