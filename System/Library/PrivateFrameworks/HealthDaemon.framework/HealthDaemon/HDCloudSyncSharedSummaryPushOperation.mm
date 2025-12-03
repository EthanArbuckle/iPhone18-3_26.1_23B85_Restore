@interface HDCloudSyncSharedSummaryPushOperation
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryPushOperation

- (void)main
{
  v3 = [HDCloudSyncSharedSummaryPushPrepareOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncOperation *)v3 initWithConfiguration:configuration cloudState:0];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HDCloudSyncSharedSummaryPushOperation_main__block_invoke;
  v7[3] = &unk_2786234D0;
  v7[4] = self;
  [(HDCloudSyncOperation *)v5 setOnError:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__HDCloudSyncSharedSummaryPushOperation_main__block_invoke_293;
  v6[3] = &unk_2786234F8;
  v6[4] = self;
  [(HDCloudSyncOperation *)v5 setOnSuccess:v6];
  [(HDCloudSyncOperation *)v5 start];
}

void __45__HDCloudSyncSharedSummaryPushOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to prepare for push operation: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void __45__HDCloudSyncSharedSummaryPushOperation_main__block_invoke_293(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v3 = [v38 privateMetadataZone];
  if (v3 && (v4 = v3, [v38 pendingAndAcceptedParticipants], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    v7 = *(a1 + 32);
    v8 = [v38 allTransactions];
    v9 = [v38 pendingAndAcceptedParticipants];
    v10 = [v38 authorizationIdentifiersByContactIdentifier];
    v11 = [v38 privateMetadataZone];
    v37 = v8;
    v36 = v9;
    v35 = v10;
    v34 = v11;
    if (v7)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = [v37 count];
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] Starting push for %lu transactions", buf, 0x16u);
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v17 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
      v18 = [v7 configuration];
      v19 = [v18 accessibilityAssertion];
      v20 = [v17 contextWithAccessibilityAssertion:v19];

      [v20 setCacheScope:1];
      v21 = objc_alloc_init(MEMORY[0x277D10BB0]);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __158__HDCloudSyncSharedSummaryPushOperation_performSharedSummaryPushWithTransactions_pendingAndAcceptedParticipants_authorizationIdentifiers_privateMetadataZone___block_invoke;
      v40[3] = &unk_278623520;
      v40[4] = v7;
      v22 = v15;
      v41 = v22;
      v23 = v16;
      v42 = v23;
      v24 = v14;
      v43 = v24;
      [v21 setDidFinish:v40];
      [v21 beginTask];
      v25 = [v7 profile];
      v26 = [v25 database];
      v39 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __158__HDCloudSyncSharedSummaryPushOperation_performSharedSummaryPushWithTransactions_pendingAndAcceptedParticipants_authorizationIdentifiers_privateMetadataZone___block_invoke_2_304;
      v45 = &unk_278623548;
      v46 = v36;
      v47 = v35;
      v48 = v7;
      v49 = v34;
      v27 = v24;
      v50 = v27;
      v51 = v37;
      v28 = v22;
      v52 = v28;
      v29 = v23;
      v53 = v29;
      v30 = v21;
      v54 = v30;
      v31 = [v26 performTransactionWithContext:v20 error:&v39 block:buf inaccessibilityHandler:0];
      v32 = v39;

      [v30 finishTask];
      if ((v31 & 1) == 0)
      {
        [v7 finishWithSuccess:0 error:v32];
      }
    }
  }

  else
  {
    [*(a1 + 32) finishWithSuccess:1 error:0];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __158__HDCloudSyncSharedSummaryPushOperation_performSharedSummaryPushWithTransactions_pendingAndAcceptedParticipants_authorizationIdentifiers_privateMetadataZone___block_invoke(uint64_t a1)
{
  v2 = [HDCloudSyncSharedSummaryPushPruningOperation alloc];
  v3 = [*(a1 + 32) configuration];
  v4 = [(HDCloudSyncSharedSummaryPushPruningOperation *)v2 initWithConfiguration:v3 allRecordsToSave:*(a1 + 40) participantZoneIDsToPush:*(a1 + 48) existingTransactionRecordsByZoneID:*(a1 + 56)];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __158__HDCloudSyncSharedSummaryPushOperation_performSharedSummaryPushWithTransactions_pendingAndAcceptedParticipants_authorizationIdentifiers_privateMetadataZone___block_invoke_2;
  v6[3] = &unk_278613088;
  v6[4] = *(a1 + 32);
  [(HDCloudSyncOperation *)v4 setOnError:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __158__HDCloudSyncSharedSummaryPushOperation_performSharedSummaryPushWithTransactions_pendingAndAcceptedParticipants_authorizationIdentifiers_privateMetadataZone___block_invoke_301;
  v5[3] = &unk_278613060;
  v5[4] = *(a1 + 32);
  [(HDCloudSyncOperation *)v4 setOnSuccess:v5];
  [(HDCloudSyncOperation *)v4 start];
}

void __158__HDCloudSyncSharedSummaryPushOperation_performSharedSummaryPushWithTransactions_pendingAndAcceptedParticipants_authorizationIdentifiers_privateMetadataZone___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to prune %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __158__HDCloudSyncSharedSummaryPushOperation_performSharedSummaryPushWithTransactions_pendingAndAcceptedParticipants_authorizationIdentifiers_privateMetadataZone___block_invoke_2_304(uint64_t a1)
{
  v1 = a1;
  v159 = *MEMORY[0x277D85DE8];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = *(a1 + 32);
  v116 = [obj countByEnumeratingWithState:&v129 objects:v147 count:16];
  if (v116)
  {
    v115 = *v130;
    v112 = v1;
    do
    {
      v2 = 0;
      do
      {
        if (*v130 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v129 + 1) + 8 * v2);
        v4 = *(v1 + 40);
        v5 = [v3 contactIdentifier];
        v6 = [v4 objectForKeyedSubscript:v5];

        if (v6)
        {
          v8 = *(v1 + 48);
          v7 = *(v1 + 56);
          v9 = v3;
          if (v8)
          {
            v10 = v7;
            v11 = objc_opt_class();
            v133[0] = 0;
            v12 = [v10 recordsForClass:v11 error:v133];

            v13 = v133[0];
            v14 = v13;
            if (v12)
            {
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __87__HDCloudSyncSharedSummaryPushOperation__authorizationRecordForParticipant_zone_error___block_invoke;
              v157 = &unk_2786235E8;
              v15 = v9;
              v158 = v15;
              v16 = [v12 hk_firstObjectPassingTest:buf];
              v17 = v16;
              if (v16)
              {
                v18 = v16;
                v8 = 0;
              }

              else
              {
                v124 = v9;
                v27 = v6;
                v28 = MEMORY[0x277CCA9B8];
                v29 = [v15 UUID];
                v30 = [v28 hk_error:720 format:{@"Authorization Record for participant with UUID %@ not found", v29}];
                v8 = v30;
                if (v30)
                {
                  v31 = v30;
                }

                v6 = v27;
                v17 = 0;
                v9 = v124;
              }

              v26 = v158;
            }

            else
            {
              v24 = v13;
              v8 = v24;
              if (v24)
              {
                v25 = v24;
                v17 = 0;
                v26 = v8;
              }

              else
              {
                v26 = 0;
                v17 = 0;
              }
            }
          }

          else
          {
            v17 = 0;
          }

          v32 = v8;
          v33 = v32;
          if (v17)
          {
            v113 = v32;
            v117 = v6;
            v114 = v2;
            v34 = MEMORY[0x277CBC5F8];
            v35 = [*(v1 + 48) configuration];
            v36 = [v35 repository];
            v37 = [v36 syncCircleIdentifier];
            v125 = v9;
            v38 = [v9 UUID];
            v39 = [v34 hd_sharedSummaryZoneIDWithSyncCircleIdentifier:v37 userIdentifier:v38];

            v40 = *(v1 + 48);
            v128 = 0;
            v41 = v39;
            if (v40)
            {
              v42 = [v40 configuration];
              v43 = [v42 repository];
              v44 = [v43 primaryCKContainer];
              v45 = [v44 containerIdentifier];
              v46 = [HDCloudSyncZoneIdentifier identifierForZone:v41 container:v45 scope:2];

              v47 = [v40 configuration];
              v48 = [v47 cachedCloudState];
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __77__HDCloudSyncSharedSummaryPushOperation__participantZoneForIdentifier_error___block_invoke;
              v157 = &unk_278616300;
              v49 = v46;
              v158 = v49;
              v50 = [v48 zonesByIdentifierWithError:&v128 filter:buf];

              if (v50)
              {
                v51 = [v50 objectForKeyedSubscript:v49];
                v52 = v51;
                v2 = v114;
                v6 = v117;
                if (v51)
                {
                  v53 = v51;
                }

                else
                {
                  v58 = [MEMORY[0x277CCA9B8] hk_error:724 format:{@"Zone not found for participant ZoneID %@", v41}];
                  v59 = v58;
                  if (v58)
                  {
                    v60 = v58;
                    v128 = v59;
                  }
                }

                v1 = v112;
              }

              else
              {
                v52 = 0;
                v2 = v114;
                v6 = v117;
                v1 = v112;
              }
            }

            else
            {
              v52 = 0;
              v2 = v114;
              v6 = v117;
            }

            v61 = v128;
            if (v52)
            {
              v62 = objc_opt_class();
              v127 = 0;
              v63 = [v52 recordsForClass:v62 error:&v127];
              v110 = v127;
              if (v63)
              {
                v103 = v52;
                v106 = v63;
                v64 = [v63 hk_map:&__block_literal_global_128];
                v65 = [*(v1 + 64) objectForKeyedSubscript:v41];

                v105 = v17;
                v107 = v61;
                if (v65)
                {
                  v66 = [*(v1 + 64) objectForKeyedSubscript:v41];
                  [v66 addObjectsFromArray:v64];
                }

                else
                {
                  v66 = [MEMORY[0x277CBEB58] setWithArray:v64];
                  [*(v1 + 64) setObject:v66 forKeyedSubscript:v41];
                }

                v75 = v41;

                v123 = *(v1 + 48);
                v76 = *(v1 + 80);
                v77 = *(v1 + 88);
                v78 = *(v1 + 96);
                v79 = *(v1 + 72);
                v80 = v64;
                v104 = v75;
                v81 = v75;
                v82 = v79;
                v83 = v81;
                v126 = v125;
                v121 = v117;
                v120 = v76;
                v119 = v77;
                v84 = v78;
                if (v123)
                {
                  v85 = [v123 configuration];
                  v86 = [v85 repository];
                  v87 = [v86 cloudSyncShimProvider];
                  v118 = [v87 sharedSummariesShim];

                  [v84 beginTask];
                  v143 = 0u;
                  v144 = 0u;
                  v145 = 0u;
                  v146 = 0u;
                  v102 = v82;
                  v122 = v82;
                  v88 = [v122 countByEnumeratingWithState:&v143 objects:buf count:16];
                  if (v88)
                  {
                    v89 = v88;
                    v90 = *v144;
                    do
                    {
                      for (i = 0; i != v89; ++i)
                      {
                        if (*v144 != v90)
                        {
                          objc_enumerationMutation(v122);
                        }

                        v92 = *(*(&v143 + 1) + 8 * i);
                        v140[0] = MEMORY[0x277D85DD0];
                        v140[1] = 3221225472;
                        v140[2] = __186__HDCloudSyncSharedSummaryPushOperation_createRecordsToSaveWithTransactions_transactionRecords_participantZoneID_participant_authorizationIdentifiers_allRecordsToSave_zoneIDs_taskGroup___block_invoke;
                        v140[3] = &unk_278623570;
                        v93 = v83;
                        v141 = v93;
                        v142 = v92;
                        if ([v80 hk_containsObjectPassingTest:v140])
                        {
                          _HKInitializeLogging();
                          v94 = *MEMORY[0x277CCC328];
                          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                          {
                            v95 = v94;
                            v96 = [v92 UUID];
                            v97 = [v96 UUIDString];
                            v98 = [v126 contactIdentifier];
                            *v148 = 138544131;
                            v149 = v123;
                            v150 = 2114;
                            v151 = v97;
                            v152 = 2113;
                            v153 = v98;
                            v154 = 2114;
                            v155 = v83;
                            _os_log_impl(&dword_228986000, v95, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] The transaction %{public}@ for participant %{private}@ has already been pushed to zone %{public}@. Skipping...", v148, 0x2Au);
                          }
                        }

                        else
                        {
                          [v84 beginTask];
                          v133[0] = MEMORY[0x277D85DD0];
                          v133[1] = 3221225472;
                          v133[2] = __186__HDCloudSyncSharedSummaryPushOperation_createRecordsToSaveWithTransactions_transactionRecords_participantZoneID_participant_authorizationIdentifiers_allRecordsToSave_zoneIDs_taskGroup___block_invoke_311;
                          v133[3] = &unk_2786235C0;
                          v133[4] = v123;
                          v134 = v93;
                          v135 = v92;
                          v136 = v120;
                          v137 = v119;
                          v138 = v126;
                          v139 = v84;
                          [v118 summariesFromTransaction:v92 authorizationIdentifiers:v121 completion:v133];
                        }
                      }

                      v89 = [v122 countByEnumeratingWithState:&v143 objects:buf count:16];
                    }

                    while (v89);
                  }

                  [v84 finishTask];
                  v1 = v112;
                  v2 = v114;
                  v82 = v102;
                }

                v6 = v117;
                v41 = v104;
                v17 = v105;
                v52 = v103;
                v63 = v106;
                v61 = v107;
              }

              else
              {
                _HKInitializeLogging();
                v71 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v109 = v61;
                  v72 = *(v1 + 48);
                  v73 = v71;
                  v74 = [v52 zoneIdentifier];
                  *buf = 138543874;
                  *&buf[4] = v72;
                  *&buf[12] = 2114;
                  *&buf[14] = v74;
                  *&buf[22] = 2114;
                  v61 = v109;
                  v157 = v110;
                  _os_log_error_impl(&dword_228986000, v73, OS_LOG_TYPE_ERROR, "%{public}@ [summary-sharing] Failed to get transaction records for %{public}@, %{public}@", buf, 0x20u);

                  v63 = 0;
                }
              }
            }

            else
            {
              _HKInitializeLogging();
              v67 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v108 = v61;
                v68 = *(v1 + 48);
                v69 = v67;
                v70 = [v125 contactIdentifier];
                *buf = 138543875;
                *&buf[4] = v68;
                v61 = v108;
                *&buf[12] = 2113;
                *&buf[14] = v70;
                *&buf[22] = 2113;
                v157 = v108;
                _os_log_error_impl(&dword_228986000, v69, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Unable to find zone for participant %{private}@. Error %{private}@", buf, 0x20u);
              }
            }

            v33 = v113;
          }

          else
          {
            _HKInitializeLogging();
            v54 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v55 = *(v1 + 48);
              v56 = v54;
              v57 = [v9 contactIdentifier];
              *buf = 138543875;
              *&buf[4] = v55;
              *&buf[12] = 2113;
              *&buf[14] = v57;
              *&buf[22] = 2114;
              v157 = v33;
              _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Unable to find authorization record for participant %{private}@. Error %{public}@", buf, 0x20u);
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v20 = *(v1 + 48);
            v21 = v19;
            v22 = [v3 contactIdentifier];
            v23 = [v3 UUID];
            *buf = 138543875;
            *&buf[4] = v20;
            *&buf[12] = 2113;
            *&buf[14] = v22;
            *&buf[22] = 2114;
            v157 = v23;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@ [summary-sharing] No authorization identifiers found for participant %{private}@ with UUID %{public}@", buf, 0x20u);
          }
        }

        ++v2;
      }

      while (v2 != v116);
      v99 = [obj countByEnumeratingWithState:&v129 objects:v147 count:16];
      v116 = v99;
    }

    while (v99);
  }

  v100 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __186__HDCloudSyncSharedSummaryPushOperation_createRecordsToSaveWithTransactions_transactionRecords_participantZoneID_participant_authorizationIdentifiers_allRecordsToSave_zoneIDs_taskGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 record];
  v5 = [v4 recordID];
  v6 = [v5 zoneID];
  v7 = [v6 isEqual:*(a1 + 32)];

  v8 = [v3 UUID];
  v9 = [v8 UUIDString];
  v10 = [*(a1 + 40) UUID];
  v11 = [v10 UUIDString];
  if (v9 == v11)
  {
    v18 = 1;
  }

  else
  {
    v12 = [*(a1 + 40) UUID];
    v13 = [v12 UUIDString];
    if (v13)
    {
      v20 = [v3 UUID];
      [v20 UUIDString];
      v14 = v22 = v7;
      v15 = [*(a1 + 40) UUID];
      [v15 UUIDString];
      v21 = v8;
      v17 = v16 = v12;
      v18 = [v14 isEqualToString:v17];

      v12 = v16;
      v8 = v21;

      v7 = v22;
    }

    else
    {
      v18 = 0;
    }
  }

  return v7 & v18;
}

void __186__HDCloudSyncSharedSummaryPushOperation_createRecordsToSaveWithTransactions_transactionRecords_participantZoneID_participant_authorizationIdentifiers_allRecordsToSave_zoneIDs_taskGroup___block_invoke_311(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2)
  {
    if ([v9 count])
    {
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __186__HDCloudSyncSharedSummaryPushOperation_createRecordsToSaveWithTransactions_transactionRecords_participantZoneID_participant_authorizationIdentifiers_allRecordsToSave_zoneIDs_taskGroup___block_invoke_2;
      v52[3] = &unk_278623598;
      v12 = *(a1 + 40);
      v52[4] = *(a1 + 32);
      v53 = v12;
      v49 = [v9 hk_map:v52];
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        v16 = v13;
        v17 = [v15 UUID];
        v18 = *(a1 + 40);
        *buf = 138543874;
        v56 = v14;
        v57 = 2114;
        v58 = v17;
        v59 = 2114;
        v60 = v18;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] Adding transaction to push with UUID %{public}@ to participant zone %{public}@", buf, 0x20u);
      }

      v50 = v11;
      v19 = *(a1 + 40);
      v20 = *(a1 + 32);
      v21 = *(a1 + 48);
      if (v20)
      {
        v22 = MEMORY[0x277CCAAB0];
        v23 = v19;
        v24 = v10;
        v25 = [v21 metadata];
        v54 = 0;
        v26 = [v22 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v54];
        v51 = v54;

        if (!v26)
        {
          _HKInitializeLogging();
          v27 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            log = v27;
            v46 = [v21 UUID];
            v47 = [v46 UUIDString];
            *buf = 138543874;
            v56 = v20;
            v57 = 2114;
            v58 = v51;
            v59 = 2114;
            v60 = v47;
            _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Error archiving metadata %{public}@ for transaction %{public}@.", buf, 0x20u);
          }
        }

        v28 = [HDCloudSyncSharedSummaryTransactionRecord alloc];
        v29 = [v21 UUID];
        v30 = [v21 sourceDeviceIdentifier];
        v31 = [(HDCloudSyncSharedSummaryTransactionRecord *)v28 initInZone:v23 UUID:v29 sourceDeviceIdentifier:v30 summaryIdentifiers:v24 metadata:v26];

        v32 = [v31 record];
      }

      else
      {
        v32 = 0;
      }

      [*(a1 + 56) addObjectsFromArray:v49];
      [*(a1 + 56) addObject:v32];
      [*(a1 + 64) addObject:*(a1 + 40)];

      v11 = v50;
    }

    else
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 32);
        v37 = *(a1 + 48);
        v38 = v35;
        v39 = [v37 UUID];
        v40 = [v39 UUIDString];
        v41 = [*(a1 + 72) contactIdentifier];
        *buf = 138543875;
        v56 = v36;
        v57 = 2114;
        v58 = v40;
        v59 = 2113;
        v60 = v41;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] No summary records to add for transaction %{public}@ and participant %{private}@", buf, 0x20u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v42 = *(a1 + 32);
      v43 = *(a1 + 72);
      v44 = v33;
      v45 = [v43 contactIdentifier];
      *buf = 138543875;
      v56 = v42;
      v57 = 2114;
      v58 = v11;
      v59 = 2113;
      v60 = v45;
      _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Error %{public}@ enumerating summary records for participant %{private}@", buf, 0x20u);
    }
  }

  [*(a1 + 80) finishTask];

  v34 = *MEMORY[0x277D85DE8];
}

id __186__HDCloudSyncSharedSummaryPushOperation_createRecordsToSaveWithTransactions_transactionRecords_participantZoneID_participant_authorizationIdentifiers_allRecordsToSave_zoneIDs_taskGroup___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v18 = [HDCloudSyncSharedSummaryRecord alloc];
    v16 = [v4 UUID];
    v15 = [v4 package];
    v5 = [v4 name];
    v6 = [v4 version];
    v7 = [v4 compatibilityVersion];
    v17 = [v4 objectTypes];
    v8 = [v17 allObjects];
    v9 = [v4 authorizationIdentifiers];
    v10 = [v9 allObjects];
    v11 = [v4 summaryData];

    v12 = [(HDCloudSyncSharedSummaryRecord *)v18 initInZone:v3 UUID:v16 package:v15 name:v5 version:v6 compatibilityVersion:v7 objectTypes:v8 authorizationIdentifiers:v10 summaryData:v11];
    v13 = [v12 record];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __87__HDCloudSyncSharedSummaryPushOperation__authorizationRecordForParticipant_zone_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UUID];
  v5 = [v4 UUIDString];
  v6 = [*(a1 + 32) authorizationRecordIdentifier];
  v7 = [v6 UUIDString];
  if (v5 == v7)
  {
    v14 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) authorizationRecordIdentifier];
    v9 = [v8 UUIDString];
    if (v9)
    {
      v16 = [v3 UUID];
      v10 = [v16 UUIDString];
      v11 = [*(a1 + 32) authorizationRecordIdentifier];
      [v11 UUIDString];
      v17 = v4;
      v13 = v12 = v8;
      v14 = [v10 isEqualToString:v13];

      v8 = v12;
      v4 = v17;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

@end