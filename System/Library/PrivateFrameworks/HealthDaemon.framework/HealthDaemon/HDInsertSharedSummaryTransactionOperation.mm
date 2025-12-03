@interface HDInsertSharedSummaryTransactionOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertSharedSummaryTransactionOperation)initWithCoder:(id)coder;
- (HDInsertSharedSummaryTransactionOperation)initWithZoneIdentifier:(id)identifier;
@end

@implementation HDInsertSharedSummaryTransactionOperation

- (HDInsertSharedSummaryTransactionOperation)initWithZoneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HDInsertSharedSummaryTransactionOperation;
  v5 = [(HDInsertSharedSummaryTransactionOperation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    zoneIdentifier = v5->_zoneIdentifier;
    v5->_zoneIdentifier = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v125 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__181;
  v80 = __Block_byref_object_dispose__181;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v63 = __82__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_error___block_invoke;
  v64 = &unk_27862C0A8;
  v65 = &v72;
  v66 = &v76;
  v67 = &v68;
  v55 = profileCopy;
  v49 = transactionCopy;
  v50 = v62;
  selfCopy = self;
  if (self)
  {
    v103 = 0;
    v104 = &v103;
    v105 = 0x3032000000;
    v106 = __Block_byref_object_copy__181;
    v107 = __Block_byref_object_dispose__181;
    v108 = 0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x3032000000;
    v100 = __Block_byref_object_copy__181;
    v101 = __Block_byref_object_dispose__181;
    v102 = 0;
    v9 = dispatch_semaphore_create(0);
    cloudSyncManager = [v55 cloudSyncManager];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke;
    v93[3] = &unk_2786186B0;
    v95 = &v97;
    v96 = &v103;
    dsema = v9;
    v94 = dsema;
    [cloudSyncManager cloudSyncRepositoriesForClient:0 completion:v93];

    v11 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(dsema, v11))
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *v117 = 138543362;
        selfCopy2 = self;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Timed out waiting to complete journable operation", v117, 0xCu);
      }
    }

    if (v98[5])
    {
      v13 = objc_alloc_init(MEMORY[0x277D10BB0]);
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke_294;
      v91[3] = &unk_2786152A8;
      v92 = v50;
      [v13 setDidFinish:v91];
      [v13 beginTask];
      v59 = v13;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      obj = v98[5];
      v14 = [obj countByEnumeratingWithState:&v87 objects:v117 count:16];
      if (v14)
      {
        v54 = *v88;
        do
        {
          v56 = v14;
          for (i = 0; i != v56; ++i)
          {
            if (*v88 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v87 + 1) + 8 * i);
            [v59 beginTask];
            v17 = [[HDCloudSyncCachedZone alloc] initForZoneIdentifier:selfCopy->_zoneIdentifier repository:v16 accessibilityAssertion:0];
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v83 = __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke_2;
            v84 = &unk_278616020;
            v85 = v59;
            v86 = selfCopy;
            v58 = v55;
            v18 = v16;
            v19 = v17;
            v20 = v82;
            v21 = objc_opt_class();
            v116 = 0;
            v22 = [v19 recordsForClass:v21 error:&v116];
            v23 = v116;
            v61 = v23;
            if (v22)
            {
              v24 = 1;
            }

            else
            {
              v24 = v23 == 0;
            }

            if (v24)
            {
              v57 = [v22 hk_map:&__block_literal_global_217];
              v25 = objc_opt_class();
              v115 = 0;
              v26 = [v19 recordsForClass:v25 error:&v115];
              v27 = v115;

              if (v26 || !v27)
              {
                v53 = [v26 hk_map:&__block_literal_global_304];
                if (v53)
                {
                  v109[0] = MEMORY[0x277D85DD0];
                  v109[1] = 3221225472;
                  v109[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_305;
                  v109[3] = &unk_27862C168;
                  v114 = v20;
                  v109[4] = selfCopy;
                  v110 = 0;
                  v31 = v18;
                  v111 = v31;
                  v112 = v57;
                  v113 = v53;
                  v32 = v109;
                  v33 = v31;
                  cloudSyncShimProvider = [v33 cloudSyncShimProvider];
                  sharedSummariesShim = [cloudSyncShimProvider sharedSummariesShim];
                  [sharedSummariesShim fetchAllSharedSummaryTransactionsWithRepository:v33 completion:v32];
                }

                else
                {
                  _HKInitializeLogging();
                  v36 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v120 = selfCopy;
                    _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: No Summary records found.", buf, 0xCu);
                  }

                  v83(v20, 1, 0);
                }
              }

              else
              {
                _HKInitializeLogging();
                v28 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v39 = v28;
                  zoneIdentifier = [v19 zoneIdentifier];
                  *buf = 138543874;
                  v120 = selfCopy;
                  v121 = 2114;
                  v122 = zoneIdentifier;
                  v123 = 2114;
                  v124 = v27;
                  _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to get summary records for %{public}@, %{public}@", buf, 0x20u);
                }

                v83(v20, 0, v27);
              }
            }

            else
            {
              _HKInitializeLogging();
              v29 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v37 = v29;
                zoneIdentifier2 = [v19 zoneIdentifier];
                *buf = 138543874;
                v120 = selfCopy;
                v121 = 2114;
                v122 = zoneIdentifier2;
                v123 = 2114;
                v124 = v61;
                _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to get transaction records for %{public}@, %{public}@", buf, 0x20u);
              }

              v83(v20, 0, v61);
            }
          }

          v14 = [obj countByEnumeratingWithState:&v87 objects:v117 count:16];
        }

        while (v14);
      }

      [v59 finishTask];
    }

    else
    {
      v63(v50, 0, v104[5]);
    }

    _Block_object_dispose(&v97, 8);
    _Block_object_dispose(&v103, 8);
  }

  if ((v69[3] & 1) == 0)
  {
    _HKInitializeLogging();
    v41 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *v117 = 138543362;
      selfCopy2 = selfCopy;
      _os_log_fault_impl(&dword_228986000, v41, OS_LOG_TYPE_FAULT, "[summary-sharing] %{public}@ Completion block expected to be called synchronously was called asynchronously.", v117, 0xCu);
    }
  }

  v42 = v77[5];
  v43 = v42;
  if (v42)
  {
    if (error)
    {
      v44 = v42;
      *error = v43;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v45 = *(v73 + 24);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);

  v46 = *MEMORY[0x277D85DE8];
  return v45 & 1;
}

void __82__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_error___block_invoke(void *a1, char a2, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), obj);
  v5 = obj;
  *(*(a1[6] + 8) + 24) = 1;
}

void __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke_294(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [v6 firstObject];
    if ([v7 count] >= 2)
    {
      v9 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA578];
      v14[0] = v7;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v9 hk_error:100 userInfo:v10];

      v8 = v11;
    }

    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __87__HDInsertSharedSummaryTransactionOperation_performWithProfile_transaction_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to save shared summary transaction, %{public}@", &v9, 0x16u);
    }

    [*(a1 + 32) failTaskWithError:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_305(uint64_t a1, void *a2, uint64_t a3)
{
  v114[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = [v5 hk_mapToSet:&__block_literal_global_308_3];
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (!v6)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v66 = *(a1 + 32);
        v67 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v66;
        *&buf[12] = 2114;
        *&buf[14] = v67;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error fetching committed transactions %{public}@.", buf, 0x16u);
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277D10BB0]);
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_310;
    v93[3] = &unk_27862C118;
    v68 = v6;
    v94 = v6;
    v79 = v8;
    v95 = v79;
    v98 = *(a1 + 72);
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v96 = v11;
    v97 = v12;
    [v10 setDidFinish:v93];
    v71 = v10;
    [v10 beginTask];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = *(a1 + 56);
    v83 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
    if (v83)
    {
      v82 = *v90;
      v69 = v7;
      v70 = a1;
      do
      {
        for (i = 0; i != v83; ++i)
        {
          if (*v90 != v82)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v89 + 1) + 8 * i);
          v15 = [v14 record];
          v16 = [v15 recordID];
          v17 = [v16 zoneID];
          v87 = 0;
          v88 = 0;
          v18 = [v17 hd_isSharedSummaryZoneIDForUserIdentifier:&v88 syncCircleIdentifier:&v87];
          v19 = v88;
          v20 = v87;

          if (v18)
          {
            v21 = [v14 UUID];
            [v79 addObject:v21];

            v22 = *(a1 + 64);
            v86[0] = MEMORY[0x277D85DD0];
            v86[1] = 3221225472;
            v86[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_313;
            v86[3] = &unk_27862C140;
            v86[4] = v14;
            v23 = [v22 hk_filter:v86];
            v24 = [v23 count];
            v25 = [v14 summaryIdentifiers];
            v26 = [v25 count];

            if (v24 == v26)
            {
              if (v7 && ([v14 UUID], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v7, "containsObject:", v27), v27, v28))
              {
                _HKInitializeLogging();
                v29 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v30 = *(a1 + 32);
                  v31 = v29;
                  v32 = [v14 UUID];
                  *buf = 138543618;
                  *&buf[4] = v30;
                  *&buf[12] = 2114;
                  *&buf[14] = v32;
                  _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Transaction with UUID is already committed %{public}@. Skipping...", buf, 0x16u);
                }
              }

              else
              {
                v37 = a1;
                v38 = v7;
                [v71 beginTask];
                v39 = *(v37 + 32);
                v40 = *(v37 + 48);
                v84[0] = MEMORY[0x277D85DD0];
                v84[1] = 3221225472;
                v84[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_315;
                v84[3] = &unk_278613630;
                v84[4] = v39;
                v84[5] = v14;
                v85 = v71;
                v41 = v40;
                v42 = v14;
                v78 = v23;
                v80 = v23;
                v43 = v84;
                v44 = v43;
                if (v39)
                {
                  v45 = v39;
                  v77 = v43;
                  v75 = v41;
                  v46 = [v42 metadata];

                  if (v46)
                  {
                    v47 = MEMORY[0x277CBEB98];
                    v114[0] = objc_opt_class();
                    v114[1] = objc_opt_class();
                    v114[2] = objc_opt_class();
                    v114[3] = objc_opt_class();
                    v114[4] = objc_opt_class();
                    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:5];
                    v49 = [v47 setWithArray:v48];

                    v50 = MEMORY[0x277CCAAC8];
                    v51 = [v42 metadata];
                    v100 = 0;
                    v52 = [v50 unarchivedObjectOfClasses:v49 fromData:v51 error:&v100];
                    v53 = v100;

                    v74 = v52;
                    if (!v52)
                    {
                      _HKInitializeLogging();
                      v54 = *MEMORY[0x277CCC328];
                      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                      {
                        *v108 = 138543618;
                        v109 = v45;
                        v110 = 2114;
                        v111 = v53;
                        _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error unarchiving metadata %{public}@", v108, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v74 = 0;
                    v53 = 0;
                  }

                  v73 = v53;
                  v76 = v19;
                  v99[0] = MEMORY[0x277D85DD0];
                  v99[1] = 3221225472;
                  v99[2] = __119__HDInsertSharedSummaryTransactionOperation__persistRecordsWithRepository_transactionRecord_summaryRecords_completion___block_invoke;
                  v99[3] = &unk_27862C190;
                  v99[4] = v45;
                  v72 = [v80 hk_map:v99];
                  _HKInitializeLogging();
                  v55 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v56 = v55;
                    v57 = [v42 UUID];
                    v58 = [v57 UUIDString];
                    v59 = [v42 sourceDeviceIdentifier];
                    *v108 = 138543874;
                    v109 = v45;
                    v110 = 2114;
                    v111 = v58;
                    v112 = 2114;
                    v113 = v59;
                    _os_log_impl(&dword_228986000, v56, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Saving transaction with UUID %{public}@ and source device identifier %{public}@.", v108, 0x20u);
                  }

                  v41 = v75;
                  v60 = [v75 cloudSyncShimProvider];
                  v61 = [v60 sharedSummariesShim];
                  v62 = [v42 UUID];
                  v63 = [v42 sourceDeviceIdentifier];
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __119__HDInsertSharedSummaryTransactionOperation__persistRecordsWithRepository_transactionRecord_summaryRecords_completion___block_invoke_324;
                  v103 = &unk_278619540;
                  v44 = v77;
                  v107 = v77;
                  v104 = v45;
                  v64 = v75;
                  v105 = v64;
                  v106 = v42;
                  [v61 prepareAndCommitRepository:v64 transactionWithUUID:v62 sourceDeviceIdentifier:v63 metadata:v74 sharedSummaries:v72 completion:buf];

                  v38 = v69;
                  v19 = v76;
                }

                v23 = v78;
                v7 = v38;
                a1 = v70;
              }
            }

            else
            {
              _HKInitializeLogging();
              v35 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v36 = *(a1 + 32);
                *buf = 138543618;
                *&buf[4] = v36;
                *&buf[12] = 2114;
                *&buf[14] = v14;
                _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Not all summary records were found for transaction %{public}@. Skipping...", buf, 0x16u);
              }
            }
          }

          else
          {
            _HKInitializeLogging();
            v33 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v34 = *(a1 + 32);
              *buf = 138543618;
              *&buf[4] = v34;
              *&buf[12] = 2114;
              *&buf[14] = v14;
              _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error: Zone is not a shared summary zone for transaction %{public}@", buf, 0x16u);
            }
          }
        }

        v83 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
      }

      while (v83);
    }

    [v71 finishTask];
    v6 = v68;
  }

  v65 = *MEMORY[0x277D85DE8];
}

void __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_310(uint64_t a1)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_2_311;
  v10[3] = &unk_27862C0F0;
  v2 = *(a1 + 32);
  v11 = *(a1 + 40);
  v3 = [v2 hk_filter:v10];
  if (v3)
  {
    v4 = [*(a1 + 48) cloudSyncShimProvider];
    v5 = [v4 sharedSummariesShim];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_3;
    v6[3] = &unk_278619590;
    v6[4] = *(a1 + 56);
    v7 = v3;
    v8 = 0;
    v9 = *(a1 + 64);
    [v5 deleteTransactions:v7 completion:v6];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_2_311(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_3(void *a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v8 = a1[5];
      v10 = v6;
      v11 = [v8 count];
      v12 = a1[6];
      v13 = 138543874;
      v14 = v9;
      v15 = 2048;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to prune %ld non-present transactions after insertion from cloud: %{public}@", &v13, 0x20u);
    }
  }

  (*(a1[7] + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_313(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 summaryIdentifiers];
  v5 = [v3 UUID];

  v6 = [v4 containsObject:v5];
  return v6;
}

void __105__HDInsertSharedSummaryTransactionOperation__saveRecordsAndFinishWithProfile_repository_zone_completion___block_invoke_315(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138543874;
      v11 = v8;
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = v9;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error saving transaction %{public}@, %{public}@", &v10, 0x20u);
    }
  }

  [*(a1 + 48) finishTask];

  v7 = *MEMORY[0x277D85DE8];
}

id __119__HDInsertSharedSummaryTransactionOperation__persistRecordsWithRepository_transactionRecord_summaryRecords_completion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x277CCD928];
    v3 = a2;
    v17 = [v2 alloc];
    v16 = [v3 UUID];
    v4 = [v3 package];
    v5 = [v3 name];
    v6 = [v3 version];
    v7 = [v3 compatibilityVersion];
    v8 = MEMORY[0x277CBEB98];
    v9 = [v3 authorizationIdentifiers];
    v10 = [v8 setWithArray:v9];
    v11 = MEMORY[0x277CBEB98];
    v12 = [v3 objectTypes];
    v13 = [v11 setWithArray:v12];
    v14 = [v3 summaryData];

    v18 = [v17 _initWithUUID:v16 package:v4 name:v5 version:v6 compatibilityVersion:v7 authorizationIdentifiers:v10 objectTypes:v13 summaryData:v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __119__HDInsertSharedSummaryTransactionOperation__persistRecordsWithRepository_transactionRecord_summaryRecords_completion___block_invoke_324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 56) + 16);
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = v7;
    if (v6 && [v8 profileType] == 2)
    {
      v10 = [v8 profile];
      v11 = [v10 legacyRepositoryProfile];

      v12 = HDCloudSyncLastPulledUpdateDate(v11);
      v13 = [v9 record];
      v14 = [v13 modificationDate];

      if (!v12 || [v14 hk_isAfterDate:v12])
      {
        HDCloudSyncDidPullUpdateWithDate(v14, v11);
        v15 = [v11 cloudSyncManager];
        [v15 didCompleteSuccessfulPullOfUpdateWithDate:v14];
      }
    }

    v5 = *(*(a1 + 56) + 16);
  }

  return v5();
}

- (HDInsertSharedSummaryTransactionOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SharedSummaryTransactionOperationZoneIdentifierKey"];

  v6 = [(HDInsertSharedSummaryTransactionOperation *)self initWithZoneIdentifier:v5];
  return v6;
}

@end