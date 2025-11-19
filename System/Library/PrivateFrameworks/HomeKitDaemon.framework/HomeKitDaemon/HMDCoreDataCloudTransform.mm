@interface HMDCoreDataCloudTransform
+ (BOOL)detectExcessiveHistoryPruningInContext:(id)a3;
+ (BOOL)transactionIsCloudStoreReset:(id)a3 context:(id)a4;
+ (Class)exportTransformableClassFromEntity:(id)a3;
+ (Class)importTransformableClassFromEntity:(id)a3;
+ (HMDCoreDataCloudTransform)new;
+ (HMDCoreDataCloudTransform)sharedInstance;
+ (id)exportTransformableEntityFromEntity:(id)a3;
+ (id)localTransformableEntityFromEntity:(id)a3;
+ (id)logCategory;
+ (void)wipeCoreDataStorageDueToPCSIdentityLossAndRelaunchHomeKitDaemon;
- (BOOL)badCDPState;
- (BOOL)cloudTransform:(id)a3 isPermittedForHomeWithModelID:(id)a4 isImport:(BOOL)a5;
- (BOOL)runTransformWithError:(id *)a3;
- (HMDCoreDataCloudTransform)init;
- (HMDCoreDataCloudTransform)initWithCoreData:(id)a3 fakeRecordsEnabled:(BOOL)a4 logEventSubmitter:(id)a5 userDefaults:(id)a6;
- (HMDCoreDataCloudTransform)initWithCoreData:(id)a3 logEventSubmitter:(id)a4;
- (HMDCoreDataCloudTransformDelegate)delegate;
- (MKFCloudSyncMetadata)_fetchOrCreateMetadataForManagedObjectContext:(MKFCloudSyncMetadata *)a1;
- (_BYTE)_changeSetForHome:(uint64_t)a3 isImport:(void *)a4 clientIdentifier:(void *)a5 qualityOfService:(void *)a6 cache:;
- (__CFString)_homeModelIDPropertyNameForObjectID:(void *)a1;
- (id)_managedObjectContext;
- (id)cloudImportInProgressStoreIdentifiers;
- (id)fakeHomeChangeSetModelID;
- (id)managedObjectContext;
- (id)newCloudMirrorExportStatusMonitor;
- (id)pendingChangedStoreIdentifiers;
- (uint64_t)_processChangeSet:(int)a3 isImport:(void *)a4 context:;
- (uint64_t)_processExportUpdateForObjectID:(void *)a3 updatedProperties:(void *)a4 additionalUpdates:(void *)a5 context:;
- (uint64_t)_processImportUpdateForObjectID:(void *)a3 updatedProperties:(int)a4 transform:(void *)a5 additionalUpdates:(void *)a6 context:;
- (uint64_t)_saveContextToWorkingStore:(uint64_t)a3 error:;
- (uint64_t)_shouldProcessChange:(void *)a3 homeModelID:(int)a4 isImport:(void *)a5 context:;
- (void)_delayContextDestruction:(uint64_t)a1;
- (void)_enumerateCloudChangeListenersForEntity:(void *)a3 usingBlock:;
- (void)_processHistoryForStore:(id)a3 context:(id)a4;
- (void)_runTransformOnContext:(void *)a3 storeIdentifiers:(void *)a4 completeMergeHomeModelID:(void *)a5 completion:;
- (void)_runTransformWhilePerformingBlockOnContext:(void *)a3 storeIdentifiers:(void *)a4 completeMergeHomeModelID:;
- (void)_saveHomeManagerChangesToWorkingStoreWithContext:(void *)a1;
- (void)_updateWriterPropertiesForCloudObjects:(void *)a1 timestamp:(void *)a2 version:(void *)a3;
- (void)coreData:(id)a3 cloudKitExportFinishedForStoreWithIdentifier:(id)a4 duration:(double)a5 error:(id)a6;
- (void)coreData:(id)a3 cloudKitExportStartedForStoreWithIdentifier:(id)a4;
- (void)coreData:(id)a3 cloudKitImportFinishedForStoreWithIdentifier:(id)a4 duration:(double)a5 error:(id)a6;
- (void)coreData:(id)a3 cloudKitImportStartedForStoreWithIdentifier:(id)a4;
- (void)coreData:(id)a3 persistentStoreWithIdentifierDidChange:(id)a4;
- (void)countResidentsInHomeWithUUID:(id)a3 completion:(id)a4;
- (void)registerCloudChangeListener:(id)a3 forEntities:(id)a4;
- (void)runCompleteMergeTransformForHomeWithModelID:(id)a3 completion:(id)a4;
- (void)runTransformWithCompletion:(id)a3;
@end

@implementation HMDCoreDataCloudTransform

- (void)countResidentsInHomeWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCoreDataCloudTransform *)self managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HMDCoreDataCloudTransform_Home__countResidentsInHomeWithUUID_completion___block_invoke;
  v12[3] = &unk_278689AB8;
  v13 = v6;
  v14 = v8;
  v15 = self;
  v16 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  [v10 performBlock:v12];
}

void __75__HMDCoreDataCloudTransform_Home__countResidentsInHomeWithUUID_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = [(MKFCKModel *)MKFCKHome modelWithModelID:v2 context:v3 error:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = *(a1 + 56);
    v7 = [v4 residents];
    (*(v6 + 16))(v6, [v7 count], 0);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 48);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138544130;
      v16 = v11;
      v17 = 2160;
      v18 = 1752392040;
      v19 = 2112;
      v20 = v12;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find the home for UUID: %{mask.hash}@. Error: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 56) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDCoreDataCloudTransformDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_processHistoryForStore:(id)a3 context:(id)a4
{
  v184[2] = *MEMORY[0x277D85DE8];
  v155 = a3;
  v156 = a4;
  v5 = [v155 identifier];
  v6 = [v156 hmd_cloudPrivateStoreIdentifier];
  v7 = [v5 isEqualToString:v6];

  v147 = v7;
  if (v7)
  {
    v143 = 0;
    v152 = 1;
    v8 = @"cloud private";
  }

  else
  {
    v9 = [v155 identifier];
    v10 = [v156 hmd_cloudSharedStoreIdentifier];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v143 = 1;
      v144 = @"cloud shared";
      v152 = 1;
      goto LABEL_7;
    }

    v143 = 0;
    v152 = 0;
    v8 = @"working";
  }

  v144 = v8;
LABEL_7:
  context = objc_autoreleasePoolPush();
  if (self)
  {
    historyTokensByStoreIdentifier = self->_historyTokensByStoreIdentifier;
  }

  else
  {
    historyTokensByStoreIdentifier = 0;
  }

  v13 = historyTokensByStoreIdentifier;
  v14 = [v155 identifier];
  v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];

  v16 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v15];
  [v16 setFetchBatchSize:10];
  v170 = v155;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v170 count:1];
  [v16 setAffectedStores:v17];

  v166 = 0;
  v18 = [v156 executeRequest:v16 error:&v166];
  v148 = v166;
  if (v18)
  {
    v19 = [v18 result];
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v19 count];
      *buf = 138543874;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      *&buf[22] = 2114;
      v172 = v144;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Fetched %zd transaction(s) for %{public}@ store", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = [v19 lastObject];
    v153 = [v25 token];

    v26 = v19;
    v27 = v156;
    v28 = v27;
    if (self)
    {
      v29 = v27;
      v30 = MEMORY[0x277D0F850];
      v31 = v26;
      v32 = objc_alloc_init(v30);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      if (v152)
      {
        *&buf[16] = __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke;
        v172 = &unk_2786829F8;
        *&v173 = v21;
        v33 = v29;
        *(&v173 + 1) = v33;
        v174 = v32;
      }

      else
      {
        *&buf[16] = __71__HMDCoreDataCloudTransform__changeSetsFromExportTransactions_context___block_invoke;
        v172 = &unk_2786829F8;
        *&v173 = v21;
        *(&v173 + 1) = v32;
        v33 = v29;
        v174 = v33;
      }

      v34 = v32;
      [v31 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];

      v151 = [(HMDCoreDataCloudTransform *)v34 allValues];
    }

    else
    {
      v151 = 0;
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v144;
      *&buf[22] = 2114;
      v172 = v15;
      LOWORD(v173) = 2114;
      *(&v173 + 2) = v148;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch history for %{public}@ store with token %{public}@: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v35);
    v151 = 0;
    v153 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (v18)
  {
    v162 = 0;
    v163 = &v162;
    v164 = 0x2020000000;
    v165 = 0;
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = __61__HMDCoreDataCloudTransform__processHistoryForStore_context___block_invoke;
    v158[3] = &unk_278678F38;
    v158[4] = self;
    v161 = v152;
    v39 = v156;
    v159 = v39;
    v160 = &v162;
    [v151 hmf_enumerateWithAutoreleasePoolUsingBlock:v158];
    if ([v39 hmd_homeManagerApplicationDataChanged])
    {
      [v39 setHmd_homeManagerApplicationDataChanged:0];
      v40 = v39;
      v41 = v40;
      if (self)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          *v180 = 138543362;
          *&v180[4] = v45;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Running check to see if home manager application data has changed", v180, 0xCu);
        }

        objc_autoreleasePoolPop(v42);
        v46 = +[MKFCKHome fetchRequest];
        [v46 setFetchBatchSize:10];
        v184[0] = @"primaryHomeCounter";
        v184[1] = @"homeManagerApplicationData";
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:2];
        v48 = [(MKFCKModel *)MKFCKHome appendDefaultPreloadedPropertiesTo:v47];
        [v46 setPropertiesToFetch:v48];

        v169 = 0;
        v49 = [v41 executeFetchRequest:v46 error:&v169];
        v50 = v169;
        if (!v49)
        {
          v59 = objc_autoreleasePoolPush();
          v60 = v43;
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = HMFGetLogIdentifier();
            *v180 = 138543618;
            *&v180[4] = v62;
            *&v180[12] = 2114;
            *&v180[14] = v50;
            _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch homes: %{public}@", v180, 0x16u);
          }

          objc_autoreleasePoolPop(v59);
          v63 = 0;
          goto LABEL_41;
        }

        *v180 = 0;
        *&v180[8] = v180;
        *&v180[16] = 0x3032000000;
        v181 = __Block_byref_object_copy__121531;
        v182 = __Block_byref_object_dispose__121532;
        v183 = 0;
        v168[0] = MEMORY[0x277D85DD0];
        v168[1] = 3221225472;
        v168[2] = __74__HMDCoreDataCloudTransform__updateHomeManagerApplicationDataWithContext___block_invoke;
        v168[3] = &unk_278679278;
        v168[4] = v180;
        [v49 hmf_enumerateWithAutoreleasePoolUsingBlock:v168];
        v167 = v50;
        v51 = [_MKFHomeManager fetchWithContext:v41 error:&v167];
        v149 = v167;

        if (v51)
        {
          v52 = [v51 appDataDictionary];
          v53 = [*(*&v180[8] + 40) homeManagerApplicationData];
          v54 = isEqualDeepCompare(v52, v53);

          if (!v54)
          {
            v66 = [*(*&v180[8] + 40) homeManagerApplicationData];
            v67 = [v66 copy];

            v68 = [v41 hmd_homeManagerContext];

            v69 = *(*&v180[8] + 40);
            v70 = [objc_opt_class() _homeManagerContextFromContext:v41];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __74__HMDCoreDataCloudTransform__updateHomeManagerApplicationDataWithContext___block_invoke_245;
            v172 = &unk_278689D20;
            v175 = v180;
            v71 = v67;
            *&v173 = v71;
            v72 = v70;
            *(&v173 + 1) = v72;
            v174 = v43;
            [v72 performBlockAndWait:buf];
            if (!v68)
            {
              [v41 setHmd_homeManagerContext:0];
            }

            v63 = 1;
            goto LABEL_40;
          }

          v55 = objc_autoreleasePoolPush();
          v56 = v43;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v58 = HMFGetLogIdentifier();
            *v176 = 138543362;
            v177 = v58;
            _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_DEBUG, "%{public}@Home manager application data is unchanged", v176, 0xCu);
          }
        }

        else
        {
          v55 = objc_autoreleasePoolPush();
          v64 = v43;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v65 = HMFGetLogIdentifier();
            *v176 = 138543618;
            v177 = v65;
            v178 = 2114;
            v179 = v149;
            _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home manager: %{public}@", v176, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v55);
        v63 = 0;
LABEL_40:

        _Block_object_dispose(v180, 8);
        v50 = v149;
LABEL_41:

        v73 = v163;
        if (v63)
        {
          *(v163 + 24) = 1;
        }

LABEL_47:
        if ((v147 | *(v73 + 24)))
        {
          v74 = [(HMDCoreDataCloudTransform *)self _fetchOrCreateMetadataForManagedObjectContext:v39];
          v75 = v74;
          if (v147)
          {
            v76 = [v74 historyTokenForCloudStore];
            v77 = (v76 | v153) == 0;

            if (v77)
            {
              v150 = v155;
              v78 = v39;
              contexta = v78;
              if (self)
              {
                [v78 hmd_assertIsExecuting];
                v79 = objc_autoreleasePoolPush();
                v80 = self;
                v81 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                {
                  v82 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  *&buf[4] = v82;
                  _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_DEBUG, "%{public}@Fetching NSPersistentCloudKitContainerEvents for first import check", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v79);
                v83 = [MEMORY[0x277CBE488] fetchRequestForEvents];
                v84 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(succeeded == YES) AND (type == %ld) AND (endDate != nil)", 1];
                [v83 setPredicate:v84];

                v85 = [MEMORY[0x277CBE488] fetchEventsMatchingFetchRequest:v83];
                [v85 setResultType:1];
                *v180 = v150;
                v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:1];
                [v85 setAffectedStores:v86];

                v168[0] = 0;
                v87 = [contexta executeRequest:v85 error:v168];
                v142 = v168[0];
                if (v87)
                {
                  v141 = v87;
                  v88 = [v141 result];
                  if ([v88 count] && (objc_msgSend(v88, "firstObject"), v89 = objc_claimAutoreleasedReturnValue(), v90 = objc_msgSend(v89, "unsignedIntegerValue"), v89, v90))
                  {
                    v154 = objc_autoreleasePoolPush();
                    v91 = v80;
                    v92 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                    {
                      v93 = HMFGetLogIdentifier();
                      v94 = "s";
                      *buf = 138543874;
                      *&buf[4] = v93;
                      if (v90 == 1)
                      {
                        v94 = "";
                      }

                      *&buf[12] = 2048;
                      *&buf[14] = v90;
                      *&buf[22] = 2080;
                      v172 = v94;
                      _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_INFO, "%{public}@Found %ld import NSPersistentCloudKitContainerEvent%s, using current history token for store", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v154);
                    v95 = contexta;
                    v96 = v150;
                    [v95 hmd_assertIsExecuting];
                    v97 = [v95 persistentStoreCoordinator];

                    *buf = v96;
                    v98 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];

                    v153 = [v97 currentPersistentHistoryTokenFromStores:v98];
                  }

                  else
                  {
                    v133 = objc_autoreleasePoolPush();
                    v134 = v80;
                    v135 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
                    {
                      v136 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      *&buf[4] = v136;
                      _os_log_impl(&dword_229538000, v135, OS_LOG_TYPE_INFO, "%{public}@Found no import NSPersistentCloudKitContainerEvents", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v133);
                    v153 = 0;
                  }
                }

                else
                {
                  v137 = objc_autoreleasePoolPush();
                  v138 = v80;
                  v139 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                  {
                    v140 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    *&buf[4] = v140;
                    *&buf[12] = 2114;
                    *&buf[14] = v142;
                    _os_log_impl(&dword_229538000, v139, OS_LOG_TYPE_ERROR, "%{public}@NSPersistentCloudKitContainerEventRequest failed: %{public}@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v137);
                  v153 = 0;
                }
              }

              else
              {
                v153 = 0;
              }

              if (v153)
              {
                *(v163 + 24) = 1;
              }

              else
              {
                v153 = 0;
              }
            }
          }
        }

        else
        {
          v75 = 0;
        }

        os_unfair_lock_lock_with_options();
        v99 = v152;
        if (!self)
        {
          v99 = 1;
        }

        if ((v99 & 1) == 0 && [(NSMutableSet *)self->_cloudImportInProgressStoreIdentifiers count])
        {
          v100 = objc_autoreleasePoolPush();
          v101 = self;
          v102 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            v103 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v103;
            _os_log_impl(&dword_229538000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud import is in progress, move the current export to pending and abort", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v100);
          v104 = v101->_pendingChangedStoreIdentifiers;
          v105 = [v39 hmd_workingStoreIdentifier];
          [(NSMutableSet *)v104 addObject:v105];
          goto LABEL_96;
        }

        if (*(v163 + 24) == 1)
        {
          if (v147)
          {
            v106 = [v75 historyTokenForCloudStore];
            v107 = HMFEqualObjects();

            if ((v107 & 1) == 0)
            {
              [v75 setHistoryTokenForCloudStore:v153];
              goto LABEL_78;
            }
          }

          if (v143)
          {
            v108 = [v75 historyTokenForCloudSharedStore];
            v109 = HMFEqualObjects();

            if ((v109 & 1) == 0)
            {
              [v75 setHistoryTokenForCloudSharedStore:v153];
              goto LABEL_78;
            }
          }

          v110 = [v75 historyTokenForWorkingStore];
          v111 = HMFEqualObjects();

          if ((v111 & 1) == 0)
          {
            [v75 setHistoryTokenForWorkingStore:v153];
LABEL_78:
            v112 = v39;
            if (self)
            {
              v113 = @"export";
              if (v152)
              {
                v113 = @"import";
              }

              v114 = v113;
              [v112 setMergePolicy:*MEMORY[0x277CBE160]];
              v115 = objc_autoreleasePoolPush();
              v116 = self;
              v117 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
              {
                v118 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v118;
                *&buf[12] = 2114;
                *&buf[14] = v114;
                _os_log_impl(&dword_229538000, v117, OS_LOG_TYPE_DEBUG, "%{public}@Saving history tokens after processing %{public}@ changes", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v115);
              *v180 = 0;
              v119 = [v112 hmd_saveWithTransactionAuthor:4 error:v180];
              v120 = *v180;
              v121 = objc_autoreleasePoolPush();
              v122 = v116;
              v123 = HMFGetOSLogHandle();
              v124 = v123;
              if (v119)
              {
                if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
                {
                  v125 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v125;
                  *&buf[12] = 2114;
                  *&buf[14] = v114;
                  _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_DEBUG, "%{public}@Finished saving history tokens after processing %{public}@ changes", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                v126 = HMFGetLogIdentifier();
                *buf = 138543874;
                *&buf[4] = v126;
                *&buf[12] = 2114;
                *&buf[14] = v114;
                *&buf[22] = 2114;
                v172 = v120;
                _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_ERROR, "%{public}@Failed to save change tokens after processing %{public}@ changes: %{public}@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v121);
            }
          }
        }

        if (!v153)
        {
LABEL_97:
          os_unfair_lock_unlock(&self->_lock.lock);

          _Block_object_dispose(&v162, 8);
          goto LABEL_98;
        }

        v127 = objc_autoreleasePoolPush();
        v128 = self;
        v129 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          v130 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v130;
          *&buf[12] = 2114;
          *&buf[14] = v144;
          *&buf[22] = 2114;
          v172 = v153;
          _os_log_impl(&dword_229538000, v129, OS_LOG_TYPE_DEBUG, "%{public}@Advancing in-memory history token for %{public}@ store: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v127);
        v131 = self;
        if (self)
        {
          v131 = v128->_historyTokensByStoreIdentifier;
        }

        v104 = v131;
        v105 = [v155 identifier];
        [(NSMutableSet *)v104 setObject:v153 forKeyedSubscript:v105];
LABEL_96:

        goto LABEL_97;
      }
    }

    v73 = v163;
    goto LABEL_47;
  }

LABEL_98:

  v132 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HMDCoreDataCloudTransform__processHistoryForStore_context___block_invoke(uint64_t a1, void *a2)
{
  result = [(HMDCoreDataCloudTransform *)*(a1 + 32) _processChangeSet:a2 isImport:*(a1 + 56) context:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (MKFCloudSyncMetadata)_fetchOrCreateMetadataForManagedObjectContext:(MKFCloudSyncMetadata *)a1
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_12;
  }

  v5 = v3;
  v6 = +[MKFCloudSyncMetadata fetchRequest];
  [v6 setReturnsObjectsAsFaults:0];
  v19 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v19];
  v8 = v19;
  if (v7)
  {
    if ([v7 count] < 2)
    {
      goto LABEL_10;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v7;
      v13 = "%{public}@More than one metadata object (using first): %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_FAULT;
LABEL_8:
      _os_log_impl(&dword_229538000, v14, v15, v13, buf, 0x16u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v16 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v8;
      v13 = "%{public}@Failed to fetch metadata objects: %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_10:
  a1 = [v7 firstObject];

  if (!a1)
  {
    a1 = [[MKFCloudSyncMetadata alloc] initWithContext:v5];
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)pendingChangedStoreIdentifiers
{
  if (a1)
  {
    a1 = a1[7];
    v1 = vars8;
  }

  return a1;
}

void __74__HMDCoreDataCloudTransform__updateHomeManagerApplicationDataWithContext___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = v4;
  if (*(v5 + 40))
  {
    v6 = [v4 primaryHomeCounter];
    if (v6 <= [*(*(*(a1 + 32) + 8) + 40) primaryHomeCounter])
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

void __74__HMDCoreDataCloudTransform__updateHomeManagerApplicationDataWithContext___block_invoke_245(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 56) + 8) + 40) _importHomeManagerNewHome:0 newPrimaryHome:0 newApplicationData:*(a1 + 32) context:*(a1 + 40)];
  [(HMDCoreDataCloudTransform *)*(a1 + 48) _saveHomeManagerChangesToWorkingStoreWithContext:?];
  [*(a1 + 40) reset];

  objc_autoreleasePoolPop(v2);
}

- (void)_saveHomeManagerChangesToWorkingStoreWithContext:(void *)a1
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v16 = 0;
    v4 = [(HMDCoreDataCloudTransform *)a1 _saveContextToWorkingStore:v3 error:&v16];
    v5 = v16;
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (v4)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v10;
        v11 = "%{public}@Saved home manager changes";
        v12 = v9;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 12;
LABEL_7:
        _os_log_impl(&dword_229538000, v12, v13, v11, buf, v14);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v5;
      v11 = "%{public}@Failed to save home manager changes: %{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_saveContextToWorkingStore:(uint64_t)a3 error:
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 setMergePolicy:v4];
  v6 = [v5 hmd_saveWithTransactionAuthor:4 error:a3];

  return v6;
}

- (uint64_t)_processChangeSet:(int)a3 isImport:(void *)a4 context:
{
  v252 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v194 = a4;
  v195 = v7;
  if (a1)
  {
    v8 = @"export";
    v189 = a3;
    if (a3)
    {
      v8 = @"import";
    }

    v191 = v8;
    if (v7)
    {
      LOBYTE(v7) = [v7[3] count] || objc_msgSend(v7[2], "count") || objc_msgSend(v7[1], "count") != 0;
    }

    v9 = objc_autoreleasePoolPush();
    v192 = a1;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        if (v195)
        {
          v13 = v195[6];
          v14 = v13;
          v15 = v195[1];
          v16 = [v15 count];
          v17 = v195[2];
          v18 = [v17 count];
          v19 = v195[3];
        }

        else
        {
          v16 = [0 count];
          v18 = [0 count];
          v19 = 0;
          v17 = 0;
          v13 = 0;
          v15 = 0;
          v14 = 0;
        }

        *buf = 138544898;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v191;
        *&buf[22] = 2160;
        v232 = 1752392040;
        *v233 = 2112;
        *&v233[2] = v13;
        *&v233[10] = 2048;
        *&v233[12] = v16;
        *&v233[20] = 2048;
        *&v233[22] = v18;
        *&v233[30] = 2048;
        v234 = [v19 count];
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Processing %{public}@ changes for home %{mask.hash}@: %zd insert(s), %zd update(s), %zd delete(s)", buf, 0x48u);
      }

      objc_autoreleasePoolPop(v9);
      [v194 setHmd_currentChangeSet:v195];
      if (v189)
      {
        v20 = v195;
        v21 = v194;
        v22 = objc_autoreleasePoolPush();
        v23 = v192;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Processing import changes: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v227 = 0;
        v228 = &v227;
        v229 = 0x2020000000;
        v230 = 0;
        v26 = [(HMDCoreDataCloudTransformChangeSet *)v20 inserts];
        v221 = MEMORY[0x277D85DD0];
        v222 = 3221225472;
        v223 = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke;
        v224 = &unk_278679020;
        v27 = v21;
        v225 = v27;
        v226 = &v227;
        [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:&v221];

        v28 = [(HMDCoreDataCloudTransformChangeSet *)v20 updates];
        *v248 = MEMORY[0x277D85DD0];
        *&v248[8] = 3221225472;
        *&v248[16] = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_2;
        v249 = &unk_278679048;
        v29 = v27;
        v250 = v29;
        v251 = &v227;
        [v28 enumerateKeysAndObjectsUsingBlock:v248];

        [v29 processPendingChanges];
        if (*(v228 + 24) == 1)
        {
          v30 = [[HMDLogEventCoreDataSignificantEvent alloc] initWithReason:4];
          [(HMDLogEventCoreDataSignificantEvent *)v30 setContext:@"DuplicateModelID"];
          v31 = v23[10];
          [v31 submitLogEvent:v30];
        }

        v32 = v195;
        if (v195)
        {
          v33 = *(v20 + 32);
        }

        else
        {
          v33 = 0;
        }

        v34 = [MEMORY[0x277CBEB38] dictionary];
        v35 = v33 & 1;
        v217 = 0;
        v218 = &v217;
        v219 = 0x2020000000;
        v220 = 1;
        if (v195)
        {
          v32 = v20[3];
        }

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_3;
        v232 = &unk_278679070;
        *&v233[24] = &v217;
        *v233 = v23;
        LOBYTE(v234) = v35;
        v36 = v34;
        *&v233[8] = v36;
        v187 = v29;
        *&v233[16] = v187;
        [v32 enumerateKeysAndObjectsUsingBlock:buf];

        if (v218[3])
        {
          v37 = [(HMDCoreDataCloudTransformChangeSet *)v20 inserts];
          v208 = MEMORY[0x277D85DD0];
          v209 = 3221225472;
          v210 = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_4;
          v211 = &unk_278679098;
          v215 = &v217;
          v212 = v23;
          v216 = v35;
          v36 = v36;
          v213 = v36;
          v38 = v187;
          v214 = v38;
          [v37 hmf_enumerateWithAutoreleasePoolUsingBlock:&v208];

          if (v218[3])
          {
            v39 = [(HMDCoreDataCloudTransformChangeSet *)v20 updates];
            v239 = MEMORY[0x277D85DD0];
            v240 = 3221225472;
            v241 = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_5;
            v242 = &unk_2786790C0;
            v246 = &v217;
            v243 = v23;
            v247 = v35;
            v36 = v36;
            v244 = v36;
            v40 = v38;
            v245 = v40;
            [v39 enumerateKeysAndObjectsUsingBlock:&v239];

            if (v218[3])
            {
              v186 = 138543618;
              while ([v36 count])
              {
                v41 = objc_autoreleasePoolPush();
                v42 = v23;
                v43 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v44 = HMFGetLogIdentifier();
                  *v235 = v186;
                  v236 = v44;
                  v237 = 2114;
                  v238 = v20;
                  _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Processing import additional updates: %{public}@", v235, 0x16u);
                }

                objc_autoreleasePoolPop(v41);
                v45 = v36;
                v46 = [MEMORY[0x277CBEB38] dictionary];

                v199 = MEMORY[0x277D85DD0];
                v200 = 3221225472;
                v201 = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_216;
                v202 = &unk_2786790E8;
                v206 = &v217;
                v203 = v42;
                v207 = v35;
                v36 = v46;
                v204 = v36;
                v205 = v40;
                [v45 enumerateKeysAndObjectsUsingBlock:&v199];
                LOBYTE(v46) = v218[3] == 0;

                if (v46)
                {
                  goto LABEL_30;
                }
              }

              v47 = v218[3];
            }

            else
            {
LABEL_30:
              v47 = 0;
            }
          }

          else
          {
            v47 = 0;
          }
        }

        else
        {
          v47 = 0;
        }

        _Block_object_dispose(&v217, 8);
        _Block_object_dispose(&v227, 8);
      }

      else
      {
        v51 = v195;
        v52 = v194;
        if (v195 && *(v51 + 32) == 1)
        {
          v53 = objc_autoreleasePoolPush();
          v54 = v192;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v56;
            *&buf[12] = 2114;
            *&buf[14] = v51;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Processing export changes: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v53);
          v57 = [MEMORY[0x277CBEB38] dictionary];
          v221 = 0;
          v222 = &v221;
          v223 = 0x2020000000;
          v224 = 1;
          v58 = v51[3];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke;
          v232 = &unk_278679160;
          *&v233[24] = &v221;
          *v233 = v54;
          v59 = v57;
          *&v233[8] = v59;
          v60 = v52;
          *&v233[16] = v60;
          [v58 enumerateKeysAndObjectsUsingBlock:buf];

          if (*(v222 + 24))
          {
            v61 = v51[1];
            v208 = MEMORY[0x277D85DD0];
            v209 = 3221225472;
            v210 = __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_2;
            v211 = &unk_278679188;
            v215 = &v221;
            v212 = v54;
            v59 = v59;
            v213 = v59;
            v62 = v60;
            v214 = v62;
            [v61 hmf_enumerateWithAutoreleasePoolUsingBlock:&v208];

            if (*(v222 + 24))
            {
              v63 = v51[2];
              v239 = MEMORY[0x277D85DD0];
              v240 = 3221225472;
              v241 = __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_3;
              v242 = &unk_2786791B0;
              v246 = &v221;
              v243 = v54;
              v59 = v59;
              v244 = v59;
              v64 = v62;
              v245 = v64;
              [v63 enumerateKeysAndObjectsUsingBlock:&v239];

              if (*(v222 + 24))
              {
                while ([v59 count])
                {
                  v65 = objc_autoreleasePoolPush();
                  v66 = v54;
                  v67 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                  {
                    v68 = v52;
                    v69 = HMFGetLogIdentifier();
                    v70 = [v59 allKeys];
                    *v248 = 138543618;
                    *&v248[4] = v69;
                    *&v248[12] = 2114;
                    *&v248[14] = v70;
                    _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Processing export additional updates: %{public}@", v248, 0x16u);

                    v52 = v68;
                  }

                  objc_autoreleasePoolPop(v65);
                  v71 = v59;
                  v72 = [MEMORY[0x277CBEB38] dictionary];

                  v199 = MEMORY[0x277D85DD0];
                  v200 = 3221225472;
                  v201 = __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_223;
                  v202 = &unk_2786791D8;
                  v206 = &v221;
                  v203 = v66;
                  v59 = v72;
                  v204 = v59;
                  v205 = v64;
                  [v71 enumerateKeysAndObjectsUsingBlock:&v199];
                  v73 = *(v222 + 24) == 0;

                  if (v73)
                  {
                    goto LABEL_47;
                  }
                }

                v47 = *(v222 + 24);
              }

              else
              {
LABEL_47:
                v47 = 0;
              }
            }

            else
            {
              v47 = 0;
            }
          }

          else
          {
            v47 = 0;
          }

          _Block_object_dispose(&v221, 8);
        }

        else
        {
          v47 = 1;
        }
      }

      [v194 setHmd_currentChangeSet:0];
      if (!v47)
      {
        v74 = objc_autoreleasePoolPush();
        v75 = v192;
        v76 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v77;
          *&buf[12] = 2114;
          *&buf[14] = v191;
          *&buf[22] = 2114;
          v232 = v195;
          _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@Rolling back managed objects after processing %{public}@ changes: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v74);
        [v194 rollback];
      }

      v78 = objc_autoreleasePoolPush();
      v79 = v192;
      v80 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = HMFGetLogIdentifier();
        v82 = v81;
        if (v195)
        {
          v83 = v195[6];
        }

        else
        {
          v83 = 0;
        }

        *buf = 138544130;
        *&buf[4] = v81;
        *&buf[12] = 2114;
        *&buf[14] = v191;
        *&buf[22] = 2160;
        v232 = 1752392040;
        *v233 = 2112;
        *&v233[2] = v83;
        _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_INFO, "%{public}@Finished processing %{public}@ changes for home %{mask.hash}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v78);
      if ([v194 hasChanges])
      {
        v84 = v195;
        if (v195 && (v85 = v195[6]) != 0)
        {
          v86 = HMDWorkingContextNameForHomeUUID(v85);
          [v194 setName:v86];

          v193 = 0;
          v84 = v195;
        }

        else
        {
          v193 = 1;
        }

        if (v189)
        {
          v93 = v84;
          v94 = v194;
          v208 = 0;
          v95 = [(HMDCoreDataCloudTransform *)v79 _saveContextToWorkingStore:v94 error:&v208];
          v96 = v208;
          v97 = objc_autoreleasePoolPush();
          v98 = v79;
          v99 = HMFGetOSLogHandle();
          v100 = v99;
          if (v95)
          {
            if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
            {
              v101 = HMFGetLogIdentifier();
              v102 = v101;
              if (v195)
              {
                v103 = v93[6];
              }

              else
              {
                v103 = 0;
              }

              *buf = 138543874;
              *&buf[4] = v101;
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2112;
              v232 = v103;
              _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_INFO, "%{public}@Saved after processing import changes for home %{mask.hash}@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v132 = HMFGetLogIdentifier();
            v133 = v132;
            if (v195)
            {
              v134 = v93[6];
            }

            else
            {
              v134 = 0;
            }

            *buf = 138544130;
            *&buf[4] = v132;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v232 = v134;
            *v233 = 2114;
            *&v233[2] = v96;
            _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_ERROR, "%{public}@Failed to save after processing import changes for home %{mask.hash}@: %{public}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v97);
          v135 = [v94 hmd_homeManagerContext];
          if (v135)
          {
            [v94 setHmd_homeManagerContext:0];
            v196[0] = MEMORY[0x277D85DD0];
            v196[1] = 3221225472;
            v196[2] = __64__HMDCoreDataCloudTransform__processChangeSet_isImport_context___block_invoke;
            v196[3] = &unk_278688BD0;
            v198 = v95;
            v196[4] = v98;
            v197 = v135;
            [v197 performBlockAndWait:v196];
          }
        }

        else
        {
          v104 = v84;
          v105 = v194;
          v106 = objc_autoreleasePoolPush();
          v107 = v79;
          v108 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            v109 = HMFGetLogIdentifier();
            if (v195)
            {
              v110 = v104[6];
              v111 = v104[8];
              v112 = v110;
            }

            else
            {
              v110 = 0;
              v112 = 0;
              v111 = 0;
            }

            *buf = 138544130;
            *&buf[4] = v109;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v232 = v110;
            *v233 = 2114;
            *&v233[2] = v111;
            _os_log_impl(&dword_229538000, v108, OS_LOG_TYPE_DEBUG, "%{public}@Saving to cloud store after processing export changes for home %{mask.hash}@ on behalf of client identifier: %{public}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v106);
          v113 = [v105 updatedObjects];
          v114 = [v105 insertedObjects];
          v115 = [v105 deletedObjects];
          v116 = [v105 transactionAuthor];
          v190 = [HMDCoreDataCloudStoreTransactionLogEvent eventForUpdates:v113 inserts:v114 deletes:v115 transactionAuthor:v116];

          if (v190)
          {
            [v107[10] submitLogEvent:v190];
          }

          v117 = v105;
          v118 = [v117 insertedObjects];
          v119 = [v117 updatedObjects];

          if ([v118 count] || objc_msgSend(v119, "count"))
          {
            v120 = [MEMORY[0x277CBEAA8] now];
            v121 = MKFCKModelCurrentWriterVersionString();
            [HMDCoreDataCloudTransform _updateWriterPropertiesForCloudObjects:v118 timestamp:v120 version:v121];
            [HMDCoreDataCloudTransform _updateWriterPropertiesForCloudObjects:v119 timestamp:v120 version:v121];
          }

          v122 = v104;
          v123 = v117;
          v124 = v123;
          if (v195 && v122[7] > 24)
          {
            v136 = v123;
            v137 = +[MKFCKAppleMediaAccessory entity];
            v239 = v137;
            v138 = +[MKFCKHome entity];
            v240 = v138;
            v139 = +[MKFCKUser entity];
            v241 = v139;
            v140 = [MEMORY[0x277CBEA60] arrayWithObjects:&v239 count:3];

            v141 = MEMORY[0x277CBEB58];
            v142 = [v136 insertedObjects];
            v143 = [v141 setWithSet:v142];

            v144 = [v136 updatedObjects];
            [v143 unionSet:v144];

            v145 = [v136 deletedObjects];
            [v143 unionSet:v145];

            v208 = 0;
            v209 = &v208;
            v210 = 0x3032000000;
            v211 = __Block_byref_object_copy__121531;
            v212 = __Block_byref_object_dispose__121532;
            v213 = 0;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __75__HMDCoreDataCloudTransform__fetchRequestForCriticalObjectExportInContext___block_invoke;
            v232 = &unk_278678F88;
            v146 = v140;
            *v233 = v146;
            *&v233[8] = v107;
            *&v233[16] = &v208;
            [v143 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
            v147 = *(v209 + 40);

            _Block_object_dispose(&v208, 8);
            v188 = v147 != 0;
            if (v147)
            {
              v148 = v122[8];
              if (v148)
              {
                v149 = v148;
                v150 = [@"HomeKitCloudExportVoucher/" stringByAppendingString:v149];
              }

              else
              {
                v150 = @"HomeKitCloudExportVoucher/";
              }

              v186 = [HMDCoreData userInitiatedVoucherWithLabel:v150 forEventsOfType:2 affectingObjectsMatching:v147];
              v155 = objc_autoreleasePoolPush();
              v156 = v107;
              v157 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
              {
                v158 = HMFGetLogIdentifier();
                v159 = v122[8];
                *buf = 138543618;
                *&buf[4] = v158;
                *&buf[12] = 2114;
                *&buf[14] = v159;
                _os_log_impl(&dword_229538000, v157, OS_LOG_TYPE_DEFAULT, "%{public}@Applying export voucher on behalf of client identifier: %{public}@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v155);
              v160 = [v156 coreData];
              v161 = [v160 container];

              v162 = [v156 coreData];
              v163 = [v162 cloudPrivateStore];
              *buf = v163;
              v164 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
              [v161 applyActivityVoucher:v186 toStores:v164];
            }

            else
            {
              v151 = objc_autoreleasePoolPush();
              v152 = v107;
              v153 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
              {
                v154 = HMFGetLogIdentifier();
                *buf = 138543362;
                *&buf[4] = v154;
                _os_log_impl(&dword_229538000, v153, OS_LOG_TYPE_INFO, "%{public}@No export voucher necessary since no critical object was detected", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v151);
            }
          }

          else
          {
            v125 = objc_autoreleasePoolPush();
            v126 = v107;
            v127 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
            {
              v128 = HMFGetLogIdentifier();
              if (v195)
              {
                v129 = v122[7];
                v130 = HMFQualityOfServiceToString();
                v131 = v122[8];
              }

              else
              {
                v130 = HMFQualityOfServiceToString();
                v131 = 0;
              }

              *buf = 138543874;
              *&buf[4] = v128;
              *&buf[12] = 2112;
              *&buf[14] = v130;
              *&buf[22] = 2112;
              v232 = v131;
              _os_log_impl(&dword_229538000, v127, OS_LOG_TYPE_DEBUG, "%{public}@No export voucher necessary for change set with QoS %@ for clientIdentifier: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v125);
            v188 = 0;
          }

          [v124 setMergePolicy:v107[4]];
          if (v195)
          {
            v165 = v122[8];
          }

          else
          {
            v165 = 0;
          }

          v208 = 0;
          v166 = v165;
          v167 = [v124 hmd_saveWithTransactionAuthor:4 clientIdentifier:v166 allowQoSEscalation:v188 error:&v208];
          v168 = v208;

          v169 = objc_autoreleasePoolPush();
          v170 = v107;
          v171 = HMFGetOSLogHandle();
          v172 = v171;
          if (v167)
          {
            if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
            {
              v173 = HMFGetLogIdentifier();
              if (v195)
              {
                v174 = v122[6];
                v175 = v122[8];
                v176 = v174;
              }

              else
              {
                v174 = 0;
                v176 = 0;
                v175 = 0;
              }

              *buf = 138544130;
              *&buf[4] = v173;
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2112;
              v232 = v174;
              *v233 = 2114;
              *&v233[2] = v175;
              _os_log_impl(&dword_229538000, v172, OS_LOG_TYPE_INFO, "%{public}@Saved after processing export changes for home %{mask.hash}@ on behalf of client identifier %{public}@", buf, 0x2Au);
            }
          }

          else if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
          {
            v177 = HMFGetLogIdentifier();
            if (v195)
            {
              v178 = v122[6];
              v179 = v122[8];
              v180 = v178;
            }

            else
            {
              v178 = 0;
              v180 = 0;
              v179 = 0;
            }

            *buf = 138544386;
            *&buf[4] = v177;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v232 = v178;
            *v233 = 2114;
            *&v233[2] = v179;
            *&v233[10] = 2114;
            *&v233[12] = v168;
            _os_log_impl(&dword_229538000, v172, OS_LOG_TYPE_ERROR, "%{public}@Failed to save after processing export changes for home %{mask.hash}@ on behalf of client identifier %{public}@: %{public}@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v169);
        }

        if ((v193 & 1) == 0)
        {
          objc_opt_class();
          v181 = objc_opt_self();
          v182 = NSStringFromClass(v181);
          [v194 setName:v182];
        }

        v183 = [v194 hasChanges];
        if (v183)
        {
          [v194 rollback];
        }

        a1 = v183 ^ 1u;
      }

      else
      {
        v87 = objc_autoreleasePoolPush();
        v88 = v79;
        v89 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          v90 = HMFGetLogIdentifier();
          v91 = v90;
          if (v195)
          {
            v92 = v195[6];
          }

          else
          {
            v92 = 0;
          }

          *buf = 138544130;
          *&buf[4] = v90;
          *&buf[12] = 2114;
          *&buf[14] = v191;
          *&buf[22] = 2160;
          v232 = 1752392040;
          *v233 = 2112;
          *&v233[2] = v92;
          _os_log_impl(&dword_229538000, v89, OS_LOG_TYPE_DEBUG, "%{public}@No changes to managed objects after processing %{public}@ changes for home %{mask.hash}@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v87);
        a1 = 0;
      }
    }

    else
    {
      if (v11)
      {
        v48 = HMFGetLogIdentifier();
        v49 = v48;
        if (v195)
        {
          v50 = v195[6];
        }

        else
        {
          v50 = 0;
        }

        *buf = 138544130;
        *&buf[4] = v48;
        *&buf[12] = 2114;
        *&buf[14] = v191;
        *&buf[22] = 2160;
        v232 = 1752392040;
        *v233 = 2112;
        *&v233[2] = v50;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@No %{public}@ changes for home %{mask.hash}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      a1 = 1;
    }
  }

  v184 = *MEMORY[0x277D85DE8];
  return a1;
}

void __64__HMDCoreDataCloudTransform__processChangeSet_isImport_context___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 48) == 1)
  {
    [(HMDCoreDataCloudTransform *)*(a1 + 32) _saveHomeManagerChangesToWorkingStoreWithContext:?];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Discarding home manager changes after previous working store save failure", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  [*(a1 + 40) reset];
  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __75__HMDCoreDataCloudTransform__fetchRequestForCriticalObjectExportInContext___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v7 entity];
    LODWORD(v8) = [v8 containsObject:v9];

    if (v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 40);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v13;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Detected dirty critical object for export: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = MEMORY[0x277CBE428];
      v15 = [v7 entity];
      v16 = [v15 name];
      v17 = [v14 fetchRequestWithEntityName:v16];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v20 = MEMORY[0x277CCAC30];
      v21 = [v7 modelID];
      v22 = [v20 predicateWithFormat:@"(%K == %@)", @"modelID", v21];
      [*(*(*(a1 + 48) + 8) + 40) setPredicate:v22];

      *a3 = 1;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateWriterPropertiesForCloudObjects:(void *)a1 timestamp:(void *)a2 version:(void *)a3
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HMDCoreDataCloudTransform__updateWriterPropertiesForCloudObjects_timestamp_version___block_invoke;
  v9[3] = &unk_278678F60;
  v7 = v5;
  v10 = v7;
  v8 = v6;
  v11 = v8;
  [a1 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

void __86__HMDCoreDataCloudTransform__updateWriterPropertiesForCloudObjects_timestamp_version___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 hasPersistentChangedValues];
  v4 = v12;
  if (v3)
  {
    v5 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [v7 writerTimestamp];
      v9 = [v8 isEqualToDate:*(a1 + 32)];

      if ((v9 & 1) == 0)
      {
        [v7 setWriterTimestamp:*(a1 + 32)];
      }

      v10 = [v7 writerVersion];
      v11 = [v10 isEqualToString:*(a1 + 40)];

      if ((v11 & 1) == 0)
      {
        [v7 setWriterVersion:*(a1 + 40)];
      }
    }

    v4 = v12;
  }
}

void __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = a2;
  v11 = a3;
  v12 = v7;
  v13 = v9;
  if (v8)
  {
    v14 = [v11 objectForKeyedSubscript:@"modelID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v13 objectWithID:v10];
    v18 = [v17 isDeleted];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v22 = v50 = a4;
        v23 = [v10 hmd_debugIdentifier];
        v48 = v13;
        v24 = v11;
        v25 = v12;
        v26 = v23;
        *buf = 138544386;
        v27 = ": ";
        v54 = v22;
        if (!v16)
        {
          v27 = "";
        }

        v55 = 2112;
        v56 = v23;
        v57 = 2080;
        v28 = &stru_283CF9D50;
        if (v16)
        {
          v28 = v16;
        }

        v58 = v27;
        v59 = 2160;
        v60 = 1752392040;
        v61 = 2112;
        v62 = v28;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Skipping processing export delete for already-deleted object: <%@%s%{mask.hash}@>", buf, 0x34u);

        v12 = v25;
        v11 = v24;
        v13 = v48;

        a4 = v50;
      }

      objc_autoreleasePoolPop(v19);
      v29 = 1;
    }

    else
    {
      v49 = v12;
      v30 = objc_opt_class();
      v31 = [v10 entity];
      v32 = [v30 exportTransformableClassFromEntity:v31];

      if (v32)
      {
        v51 = a4;
        v33 = objc_autoreleasePoolPush();
        v34 = v8;
        v35 = HMFGetOSLogHandle();
        v36 = v35;
        v12 = v49;
        if (v16)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v37 = HMFGetLogIdentifier();
            [v10 hmd_debugIdentifier];
            v38 = v47 = v33;
            *buf = 138544130;
            v54 = v37;
            v55 = 2112;
            v56 = v38;
            v57 = 2160;
            v58 = 1752392040;
            v59 = 2112;
            v60 = v16;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Processing export delete: <%@: %{mask.hash}@>", buf, 0x2Au);

            v33 = v47;
            v12 = v49;
          }

          objc_autoreleasePoolPop(v33);
          v29 = [v32 exportDeleteWithObjectID:v10 modelID:v16 additionalUpdates:v12 context:v13];
        }

        else
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            v45 = [v10 hmd_debugIdentifier];
            *buf = 138543874;
            v54 = v44;
            v55 = 2112;
            v56 = v45;
            v57 = 2112;
            v58 = v11;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Not processing export delete for transformable %@ due to missing modelID in tombstone: %@", buf, 0x20u);

            v12 = v49;
          }

          objc_autoreleasePoolPop(v33);
          v29 = 1;
        }

        a4 = v51;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = v8;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = HMFGetLogIdentifier();
          [v10 hmd_debugIdentifier];
          v43 = v52 = a4;
          *buf = 138543618;
          v54 = v42;
          v55 = 2112;
          v56 = v43;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring export delete: <%@>", buf, 0x16u);

          a4 = v52;
        }

        objc_autoreleasePoolPop(v39);
        v29 = 1;
        v12 = v49;
      }
    }
  }

  else
  {
    v29 = 0;
  }

  *(*(a1[7] + 8) + 24) = v29;
  if (!*(*(a1[7] + 8) + 24))
  {
    *a4 = 1;
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a2;
  v9 = v5;
  v10 = v7;
  v11 = v10;
  if (v6)
  {
    v12 = [v10 objectWithID:v8];
    v13 = [v12 isDeleted];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v6;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        [v8 hmd_debugIdentifier];
        v19 = v18 = a3;
        *buf = 138543618;
        v33 = v17;
        v34 = 2112;
        v35 = v19;
        v20 = "%{public}@Skipping processing export insert for already-deleted object: <%@>";
        v21 = v16;
        v22 = OS_LOG_TYPE_INFO;
LABEL_11:
        _os_log_impl(&dword_229538000, v21, v22, v20, buf, 0x16u);

        a3 = v18;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v23 = objc_opt_class();
    v24 = [v8 entity];
    v25 = [v23 exportTransformableClassFromEntity:v24];

    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    v26 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (!v25)
    {
      if (v26)
      {
        v17 = HMFGetLogIdentifier();
        [v8 hmd_debugIdentifier];
        v19 = v18 = a3;
        *buf = 138543618;
        v33 = v17;
        v34 = 2112;
        v35 = v19;
        v20 = "%{public}@Ignoring export insert: <%@>";
        v21 = v16;
        v22 = OS_LOG_TYPE_DEBUG;
        goto LABEL_11;
      }

LABEL_12:

      objc_autoreleasePoolPop(v14);
      v29 = 1;
      goto LABEL_13;
    }

    if (v26)
    {
      HMFGetLogIdentifier();
      v27 = v31 = a3;
      v28 = [v8 hmd_debugIdentifier];
      *buf = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = v28;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Processing export insert: <%@>", buf, 0x16u);

      a3 = v31;
    }

    objc_autoreleasePoolPop(v14);
    v29 = [v25 exportInsertWithObjectID:v8 additionalUpdates:v9 context:v11];
  }

  else
  {
    v29 = 0;
  }

LABEL_13:

  *(*(a1[7] + 8) + 24) = v29;
  if (!*(*(a1[7] + 8) + 24))
  {
    *a3 = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [(HMDCoreDataCloudTransform *)*(a1 + 32) _processExportUpdateForObjectID:a2 updatedProperties:a3 additionalUpdates:*(a1 + 40) context:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

void __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_223(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [a3 copy];
  v10 = [(HMDCoreDataCloudTransform *)v7 _processExportUpdateForObjectID:v8 updatedProperties:v9 additionalUpdates:*(a1 + 40) context:*(a1 + 48)];

  *(*(*(a1 + 56) + 8) + 24) = v10;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }
}

- (uint64_t)_processExportUpdateForObjectID:(void *)a3 updatedProperties:(void *)a4 additionalUpdates:(void *)a5 context:
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!a1)
  {
    v31 = 0;
    goto LABEL_13;
  }

  v14 = [v12 objectWithID:v9];
  v15 = [v14 isDeleted];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v9 hmd_debugIdentifier];
      *buf = 138543618;
      v36 = v19;
      v37 = 2112;
      v38 = v20;
      v21 = "%{public}@Skipping processing export update for already-deleted object: <%@>";
      v22 = v18;
      v23 = OS_LOG_TYPE_INFO;
LABEL_11:
      _os_log_impl(&dword_229538000, v22, v23, v21, buf, 0x16u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v24 = objc_opt_class();
  v25 = [v9 entity];
  v26 = [v24 exportTransformableClassFromEntity:v25];

  v16 = objc_autoreleasePoolPush();
  v17 = a1;
  v18 = HMFGetOSLogHandle();
  v27 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (!v26)
  {
    if (v27)
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v9 hmd_debugIdentifier];
      *buf = 138543618;
      v36 = v19;
      v37 = 2112;
      v38 = v20;
      v21 = "%{public}@Ignoring export update: <%@>";
      v22 = v18;
      v23 = OS_LOG_TYPE_DEBUG;
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v16);
    v31 = 1;
    goto LABEL_13;
  }

  if (v27)
  {
    v28 = HMFGetLogIdentifier();
    v29 = MKFPropertyNamesFromDescriptions(v10);
    [v9 hmd_debugIdentifier];
    v30 = v34 = v16;
    *buf = 138543874;
    v36 = v28;
    v37 = 2114;
    v38 = v29;
    v39 = 2112;
    v40 = v30;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Processing export update [%{public}@]: <%@>", buf, 0x20u);

    v16 = v34;
  }

  objc_autoreleasePoolPop(v16);
  v31 = [v26 exportUpdateWithObjectID:v9 updatedProperties:v10 additionalUpdates:v11 context:v13];
LABEL_13:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectWithID:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 ensureCanonicalModel];
  if (v6 == -1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectWithID:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 ensureCanonicalModel];
  if (v6 == -1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 64);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a2;
  v11 = a3;
  v38 = v7;
  v12 = v9;
  if (v8)
  {
    v13 = [v11 objectForKeyedSubscript:@"modelID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v39 = v14;

    v15 = [v12 objectWithID:v10];
    v16 = [v15 isDeleted];

    v17 = objc_autoreleasePoolPush();
    v18 = v8;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      v21 = v39;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v10 hmd_debugIdentifier];
        *buf = 138544130;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        *&buf[22] = 2160;
        v41 = 1752392040;
        LOWORD(v42) = 2112;
        *(&v42 + 2) = v39;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import delete for already-deleted object: <%@: %{mask.hash}@>", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v17);
      v24 = 1;
      v25 = v38;
      goto LABEL_21;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v10 hmd_debugIdentifier];
      *buf = 138543874;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v27;
      *&buf[22] = 2114;
      v41 = v39;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Processing import delete: <%@: %{public}@>", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v28 = [v10 entity];
    v25 = v38;
    if (v6)
    {
      v29 = [objc_opt_class() importTransformableClassFromEntity:v28];
      if (v29)
      {
        if (v39)
        {
          if (![v29 importDeleteWithObjectID:v10 modelID:v39 additionalUpdates:v38 context:v12])
          {
            v24 = 0;
LABEL_20:

            v21 = v39;
LABEL_21:

            goto LABEL_22;
          }
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          v31 = v18;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v33 = v36 = v31;
            v34 = [v10 hmd_debugIdentifier];
            *buf = 138543874;
            *&buf[4] = v33;
            *&buf[12] = 2112;
            *&buf[14] = v34;
            *&buf[22] = 2112;
            v41 = v11;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Not processing import delete for object <%@> due to missing modelID in tombstone: %@", buf, 0x20u);

            v25 = v38;
            v31 = v36;
          }

          objc_autoreleasePoolPop(v30);
        }
      }
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __107__HMDCoreDataCloudTransform__processImportDeleteForObjectID_tombstone_transform_additionalUpdates_context___block_invoke;
    v41 = &unk_278679138;
    *&v42 = v10;
    *(&v42 + 1) = v11;
    v43 = v12;
    [(HMDCoreDataCloudTransform *)v18 _enumerateCloudChangeListenersForEntity:v28 usingBlock:buf];

    v24 = 1;
    goto LABEL_20;
  }

  v24 = 0;
  v25 = v38;
LABEL_22:

  *(*(*(a1 + 56) + 8) + 24) = v24;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = a2;
  v10 = v7;
  v11 = v8;
  v12 = v11;
  if (v6)
  {
    v13 = [v11 objectWithID:v9];
    if ([v13 isDeleted])
    {
      v14 = v12;
      v15 = v10;
      v16 = objc_autoreleasePoolPush();
      v17 = v6;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v39 = a3;
        v20 = [v9 hmd_debugIdentifier];
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import insert for already-deleted object: <%@>", buf, 0x16u);

        a3 = v39;
      }

      objc_autoreleasePoolPop(v16);
      v6 = 1;
      v10 = v15;
      v12 = v14;
    }

    else
    {
      v42 = v10;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v21 = [v13 ensureCanonicalModel], v21 != 1))
      {
        v29 = v21;
        v30 = objc_autoreleasePoolPush();
        v31 = v6;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v41 = v30;
          v33 = a3;
          v34 = HMFGetLogIdentifier();
          if ((v29 + 2) > 3)
          {
            v35 = @"unknown";
          }

          else
          {
            v35 = off_27867D3C0[v29 + 2];
          }

          v36 = v35;
          v37 = [v9 hmd_debugIdentifier];
          *buf = 138543874;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v36;
          *&buf[22] = 2112;
          v44 = v37;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import insert for non-canonical (%{public}@) model: <%@>", buf, 0x20u);

          a3 = v33;
          v30 = v41;
        }

        objc_autoreleasePoolPop(v30);
        v6 = 1;
        v10 = v42;
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v6;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = HMFGetLogIdentifier();
          [v9 hmd_debugIdentifier];
          v26 = v40 = a3;
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2112;
          *&buf[14] = v26;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Processing import insert: <%@>", buf, 0x16u);

          a3 = v40;
        }

        objc_autoreleasePoolPop(v22);
        v27 = [v9 entity];
        v10 = v42;
        if (v5 && (v28 = [objc_opt_class() importTransformableClassFromEntity:v27]) != 0 && !objc_msgSend(v28, "importInsertWithObjectID:additionalUpdates:context:", v9, v42, v12))
        {
          v6 = 0;
        }

        else
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __97__HMDCoreDataCloudTransform__processImportInsertForObjectID_transform_additionalUpdates_context___block_invoke;
          v44 = &unk_278679110;
          v45 = v12;
          v46 = v9;
          [(HMDCoreDataCloudTransform *)v23 _enumerateCloudChangeListenersForEntity:v27 usingBlock:buf];

          v6 = 1;
        }
      }
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a3 = 1;
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_5(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [(HMDCoreDataCloudTransform *)*(a1 + 32) _processImportUpdateForObjectID:a2 updatedProperties:a3 transform:*(a1 + 64) additionalUpdates:*(a1 + 40) context:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_216(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [a3 copy];
  v10 = [(HMDCoreDataCloudTransform *)v7 _processImportUpdateForObjectID:v8 updatedProperties:v9 transform:*(a1 + 64) additionalUpdates:*(a1 + 40) context:*(a1 + 48)];

  *(*(*(a1 + 56) + 8) + 24) = v10;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }
}

- (uint64_t)_processImportUpdateForObjectID:(void *)a3 updatedProperties:(int)a4 transform:(void *)a5 additionalUpdates:(void *)a6 context:
{
  v57 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v46 = a5;
  v13 = a6;
  if (!a1)
  {
    v24 = 0;
    goto LABEL_17;
  }

  v14 = MKFPropertyNamesFromDescriptions(v12);
  v15 = [v13 objectWithID:v11];
  if ([v15 isDeleted])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      [v11 hmd_debugIdentifier];
      v20 = v12;
      v22 = v21 = v14;
      *buf = 138543874;
      v52 = v19;
      v53 = 2048;
      v54 = v21;
      v55 = 2112;
      v56 = v22;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import update [%public@] for already-deleted object: <%@>", buf, 0x20u);

      v14 = v21;
      v12 = v20;
    }

    v23 = v16;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v25 = [v15 ensureCanonicalModel], v25 == 1))
    {
      v26 = objc_autoreleasePoolPush();
      v27 = a1;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v45 = v12;
        v30 = v29 = v14;
        v31 = [v11 hmd_debugIdentifier];
        *buf = 138543874;
        v52 = v30;
        v53 = 2048;
        v54 = v29;
        v55 = 2112;
        v56 = v31;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Processing import update [%public@]: <%@>", buf, 0x20u);

        v14 = v29;
        v12 = v45;
      }

      objc_autoreleasePoolPop(v26);
      v32 = [v11 entity];
      if (a4 && (v33 = [objc_opt_class() importTransformableClassFromEntity:v32]) != 0 && !objc_msgSend(v33, "importUpdateWithObjectID:updatedProperties:additionalUpdates:context:", v11, v12, v46, v13))
      {
        v24 = 0;
      }

      else
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __115__HMDCoreDataCloudTransform__processImportUpdateForObjectID_updatedProperties_transform_additionalUpdates_context___block_invoke;
        v47[3] = &unk_278679138;
        v48 = v13;
        v49 = v11;
        v50 = v12;
        [(HMDCoreDataCloudTransform *)v27 _enumerateCloudChangeListenersForEntity:v32 usingBlock:v47];

        v24 = 1;
      }

      goto LABEL_16;
    }

    v36 = v25;
    v37 = objc_autoreleasePoolPush();
    v38 = a1;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      v44 = v14;
      if ((v36 + 2) > 3)
      {
        v41 = @"unknown";
      }

      else
      {
        v41 = off_27867D3C0[v36 + 2];
      }

      v42 = v41;
      v43 = [v11 hmd_debugIdentifier];
      *buf = 138543874;
      v52 = v40;
      v53 = 2048;
      v54 = v42;
      v55 = 2112;
      v56 = v43;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import update for non-canonical (%public@) model: <%@>", buf, 0x20u);

      v14 = v44;
    }

    v23 = v37;
  }

  objc_autoreleasePoolPop(v23);
  v24 = 1;
LABEL_16:

LABEL_17:
  v34 = *MEMORY[0x277D85DE8];
  return v24;
}

void __115__HMDCoreDataCloudTransform__processImportUpdateForObjectID_updatedProperties_transform_additionalUpdates_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) objectWithID:*(a1 + 40)];
    [v4 didInsertOrUpdateModel:v3 changedProperties:*(a1 + 48)];
  }
}

- (void)_enumerateCloudChangeListenersForEntity:(void *)a3 usingBlock:
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 96) objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v15 = 0;
    v9 = [v7 count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      do
      {
        while (1)
        {
          v13 = [v8 pointerAtIndex:v12];
          if (v13)
          {
            break;
          }

          if (++v12 < v10)
          {
            v11 = 1;
            if ((v15 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_12;
        }

        v14 = v13;
        v6[2](v6, v13, &v15);

        ++v12;
      }

      while (v12 < v10 && (v15 & 1) == 0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_12:
      [v8 compact];
      if (![v8 count])
      {
        [*(a1 + 96) removeObjectForKey:v5];
      }
    }
  }

LABEL_14:
}

void __97__HMDCoreDataCloudTransform__processImportInsertForObjectID_transform_additionalUpdates_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) objectWithID:*(a1 + 40)];
    [v4 didInsertOrUpdateModel:v3 changedProperties:0];
  }
}

void __107__HMDCoreDataCloudTransform__processImportDeleteForObjectID_tombstone_transform_additionalUpdates_context___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didDeleteModelWithID:a1[4] tombstone:a1[5] context:a1[6]];
  }
}

void __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() transactionIsCloudStoreReset:v3 context:*(a1 + 40)];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = *(a1 + 32);
    [objc_opt_class() wipeCoreDataStorageDueToPCSIdentityLossAndRelaunchHomeKitDaemon];
    goto LABEL_12;
  }

  v8 = v3;
  v9 = v8;
  if (!v6)
  {
LABEL_8:

    goto LABEL_12;
  }

  if ([v8 hmd_transactionAuthor])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 transactionNumber];
      v15 = [v9 author];
      *buf = 138544130;
      v29 = v13;
      v30 = 2048;
      v31 = v14;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not importing transaction %lld with author %{mask.hash}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_8;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v9 transactionNumber];
    v21 = [v9 changes];
    *buf = 138543874;
    v29 = v19;
    v30 = 2048;
    v31 = v20;
    v32 = 2048;
    v33 = [v21 count];
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Processing import transaction %lld with %zd change(s)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v22 = [v9 changes];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke_233;
  v25[3] = &unk_278679250;
  v23 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v23;
  v27 = *(a1 + 48);
  [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

void __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke_233(void **a1, void *a2)
{
  v161[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = v3;
  v7 = v5;
  if (!v4)
  {
    goto LABEL_17;
  }

  v8 = [v6 changeType];
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v26 = v6;
      v27 = [v26 changedObjectID];
      v28 = [v27 entity];
      v29 = [v28 managedObjectClassName];
      v30 = NSClassFromString(v29);
      LOBYTE(v30) = [(objc_class *)v30 isSubclassOfClass:objc_opt_class()];

      if ((v30 & 1) == 0)
      {
        v47 = objc_autoreleasePoolPush();
        v48 = v4;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          [v27 entity];
          v51 = v148 = a1;
          [v51 name];
          v53 = v52 = v27;
          *buf = 138543874;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = v53;
          v155 = 2114;
          v156 = v26;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Unexpected entity type in change: %{public}@, %{public}@", buf, 0x20u);

          v27 = v52;
          a1 = v148;
        }

        objc_autoreleasePoolPop(v47);
        v38 = 0;
        goto LABEL_52;
      }

      v144 = v7;
      v31 = [v26 tombstone];
      v32 = [v31 objectForKeyedSubscript:@"flags"];
      v140 = v32;
      v142 = v31;
      if (v32)
      {
        v33 = v27;
        v34 = v32;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;

        if (isKindOfClass)
        {
          *buf = 0;
          *&buf[8] = 0;
          [v34 getUUIDBytes:buf];
          if ((buf[13] & 8) != 0)
          {
            v88 = objc_autoreleasePoolPush();
            v89 = v4;
            v90 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              v91 = HMFGetLogIdentifier();
              [v33 hmd_debugIdentifier];
              v93 = v92 = a1;
              *buf = 138543874;
              *&buf[4] = v91;
              *&buf[12] = 2112;
              *&buf[14] = v93;
              v155 = 2112;
              v156 = v142;
              _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring import delete of fake model: %@, %@", buf, 0x20u);

              a1 = v92;
            }

            objc_autoreleasePoolPop(v88);
            v38 = [HMDCoreDataCloudTransform fakeHomeChangeSetModelID];
            v83 = v142;
            v7 = v144;
            v27 = v33;
            goto LABEL_51;
          }
        }

        v147 = a1;

        v27 = v33;
      }

      else
      {
        v61 = objc_autoreleasePoolPush();
        v62 = v4;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v64 = v31;
          v65 = v26;
          v67 = v66 = v27;
          *buf = 138543618;
          *&buf[4] = v67;
          *&buf[12] = 2114;
          *&buf[14] = v65;
          _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Flags missing from tombstone: %{public}@", buf, 0x16u);

          v27 = v66;
          v26 = v65;
          v31 = v64;
        }

        v147 = a1;

        objc_autoreleasePoolPop(v61);
      }

      v34 = [HMDCoreDataCloudTransform _homeModelIDPropertyNameForObjectID:v27];
      v68 = [v31 objectForKeyedSubscript:v34];
      v69 = v68;
      if (v68)
      {
        v138 = v27;
        v70 = v68;
        objc_opt_class();
        v71 = objc_opt_isKindOfClass() & 1;
        if (v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = 0;
        }

        v73 = v72;

        if (v71)
        {
          v38 = v70;
          v7 = v144;
        }

        else
        {
          v136 = v73;
          v79 = objc_autoreleasePoolPush();
          v80 = v4;
          v81 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = HMFGetLogIdentifier();
            *buf = 138544130;
            *&buf[4] = v82;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            v155 = 2112;
            v156 = v70;
            v157 = 2114;
            v158 = v26;
            _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_ERROR, "%{public}@Home model ID is unexpected type in tombstone: %{mask.hash}@, %{public}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v79);
          v38 = 0;
          v7 = v144;
          v73 = v136;
          v27 = v138;
        }
      }

      else
      {
        v74 = objc_autoreleasePoolPush();
        v75 = v4;
        v76 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v78 = v77 = v27;
          *buf = 138543618;
          *&buf[4] = v78;
          *&buf[12] = 2114;
          *&buf[14] = v26;
          _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_ERROR, "%{public}@Home model ID missing from tombstone: %{public}@", buf, 0x16u);

          v27 = v77;
        }

        objc_autoreleasePoolPop(v74);
        v38 = 0;
        v7 = v144;
      }

      v83 = v142;

      a1 = v147;
LABEL_51:

LABEL_52:
      goto LABEL_77;
    }

LABEL_17:
    v38 = 0;
    goto LABEL_77;
  }

  v146 = a1;
  v9 = v6;
  v10 = v7;
  v11 = [v9 changedObjectID];
  v12 = [v11 entity];
  v13 = [v12 managedObjectClassName];
  v14 = NSClassFromString(v13);
  LOBYTE(v14) = [(objc_class *)v14 isSubclassOfClass:objc_opt_class()];

  if ((v14 & 1) == 0)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v4;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      [v11 entity];
      v145 = v11;
      v44 = v43 = v9;
      [v44 name];
      v46 = v45 = v7;
      *buf = 138543874;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      v155 = 2114;
      v156 = v43;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unexpected entity type in change: %{public}@, %{public}@", buf, 0x20u);

      v7 = v45;
      v9 = v43;
      v11 = v145;
    }

    objc_autoreleasePoolPop(v39);
    v38 = 0;
    a1 = v146;
    goto LABEL_76;
  }

  v139 = v9;
  v143 = v7;
  v15 = [HMDCoreDataCloudTransform _homeModelIDPropertyNameForObjectID:v11];
  v161[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:1];
  v17 = [MKFCKModel appendDefaultPreloadedPropertiesTo:v16];

  v153 = 0;
  v137 = v10;
  v18 = [v10 hmd_fetchExistingObjectWithID:v11 propertiesToFetch:v17 error:&v153];
  v141 = v153;
  if (v141)
  {
    v130 = v18;
    v132 = v15;
    v134 = v17;
    v19 = objc_autoreleasePoolPush();
    v20 = v4;
    v21 = HMFGetOSLogHandle();
    v22 = v141;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v11 hmd_debugIdentifier];
      *buf = 138543874;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      v155 = 2114;
      v156 = v141;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch object %@: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = 0;
    v7 = v143;
    v9 = v139;
    v15 = v132;
    v17 = v134;
    v18 = v130;
    goto LABEL_75;
  }

  if (v18)
  {
    v135 = v17;
    v54 = v18;
    objc_opt_class();
    v55 = objc_opt_isKindOfClass() & 1;
    if (v55)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0;
    }

    v129 = v56;

    v9 = v139;
    v131 = v18;
    v133 = v15;
    if (v55)
    {
      if (![v54 isFake])
      {
        v94 = [v54 valueForKey:v15];
        v128 = v94;
        if (v94)
        {
          v95 = v94;
          objc_opt_class();
          LODWORD(v126) = objc_opt_isKindOfClass() & 1;
          if (v126)
          {
            v96 = v95;
          }

          else
          {
            v96 = 0;
          }

          v127 = v96;

          if (v126)
          {
            v25 = v95;
          }

          else
          {
            v126 = v95;
            v101 = objc_autoreleasePoolPush();
            v102 = v4;
            v103 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              v104 = HMFGetLogIdentifier();
              *buf = 138544386;
              *&buf[4] = v104;
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              v155 = 2112;
              v156 = v126;
              v157 = 2112;
              v158 = v54;
              v159 = 2114;
              v160 = v139;
              _os_log_impl(&dword_229538000, v103, OS_LOG_TYPE_ERROR, "%{public}@Home model ID is unexpected type (%{mask.hash}@) in object: %@, %{public}@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v101);
            v25 = 0;
            v18 = v131;
            v15 = v133;
          }

          v22 = 0;

          v7 = v143;
          v17 = v135;
        }

        else
        {
          v97 = objc_autoreleasePoolPush();
          v98 = v4;
          v99 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v100 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v100;
            *&buf[12] = 2112;
            *&buf[14] = v54;
            v155 = 2114;
            v156 = v139;
            _os_log_impl(&dword_229538000, v99, OS_LOG_TYPE_ERROR, "%{public}@Home model ID is missing in object: %@, %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v97);
          v25 = 0;
          v22 = 0;
          v7 = v143;
          v15 = v133;
          v17 = v135;
          v18 = v131;
        }

        goto LABEL_74;
      }

      v57 = objc_autoreleasePoolPush();
      v58 = v4;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v60;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring import of fake model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v57);
      v25 = [HMDCoreDataCloudTransform fakeHomeChangeSetModelID];
    }

    else
    {
      v84 = objc_autoreleasePoolPush();
      v85 = v4;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v87;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        v155 = 2114;
        v156 = v139;
        _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type of object in change: %@, %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v84);
      v25 = 0;
    }

    v22 = 0;
    v7 = v143;
    v15 = v133;
    v17 = v135;
    v18 = v131;
LABEL_74:

    goto LABEL_75;
  }

  v25 = 0;
  v9 = v139;
  v22 = 0;
LABEL_75:

  v38 = v25;
  v10 = v137;
LABEL_76:

LABEL_77:
  v105 = [(HMDCoreDataCloudTransform *)a1[4] _changeSetForHome:v38 isImport:1 clientIdentifier:0 qualityOfService:0xFFFFFFFFFFFFFFFFLL cache:a1[6]];
  v106 = [v6 changedObjectID];
  v107 = [v106 entity];
  v108 = +[MKFCKHome entity];
  v109 = [v107 isKindOfEntity:v108];

  if (v109)
  {
    if ([v6 changeType] == 2)
    {
      if (v105)
      {
        *(v105 + 32) = 1;
      }
    }

    else
    {
      v110 = [v6 updatedProperties];
      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke_2;
      v150[3] = &unk_278679228;
      v150[4] = a1[4];
      v151 = v38;
      v152 = a1[5];
      [v110 hmf_enumerateWithAutoreleasePoolUsingBlock:v150];
    }
  }

  v111 = [v6 changedObjectID];
  v112 = [v111 entity];
  v113 = +[MKFCKSharedHome entity];
  if (([v112 isKindOfEntity:v113] & 1) == 0)
  {

LABEL_89:
    if (!v105)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v114 = [v6 transaction];
  v115 = [v114 storeID];
  [a1[5] hmd_cloudSharedStoreIdentifier];
  v116 = v105;
  v117 = v38;
  v118 = v6;
  v120 = v119 = a1;
  v149 = [v115 isEqualToString:v120];

  a1 = v119;
  v6 = v118;
  v38 = v117;
  v105 = v116;

  if (!v149)
  {
    goto LABEL_89;
  }

  v121 = objc_autoreleasePoolPush();
  v122 = a1[4];
  v123 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
  {
    v124 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v124;
    _os_log_impl(&dword_229538000, v123, OS_LOG_TYPE_INFO, "%{public}@Allowing import processing of MKFCKSharedHome that have been shared with this account", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v121);
  if (v105)
  {
    *(v105 + 32) = 1;
LABEL_90:
    if ([(HMDCoreDataCloudTransform *)a1[4] _shouldProcessChange:v6 homeModelID:v38 isImport:1 context:a1[5]])
    {
      [(HMDCoreDataCloudTransformChangeSet *)v105 processChange:v6];
    }
  }

LABEL_92:

  v125 = *MEMORY[0x277D85DE8];
}

- (_BYTE)_changeSetForHome:(uint64_t)a3 isImport:(void *)a4 clientIdentifier:(void *)a5 qualityOfService:(void *)a6 cache:
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  v13 = a6;
  if (!a1 || !v11 && (a3 & 1) != 0)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v15 = *MEMORY[0x277CBEEE8];
  if (v11)
  {
    v15 = v11;
  }

  v16 = v15;
  v14 = [v13 objectForKeyedSubscript:v16];
  if (!v14)
  {
    v14 = [[HMDCoreDataCloudTransformChangeSet alloc] initWithHomeModelID:v11 clientIdentifier:v12 qualityOfService:a5];
    [v13 setObject:v14 forKeyedSubscript:v16];
    if (v11)
    {
      v17 = [a1 delegate];
      v18 = v17;
      if (!v17)
      {
        v17 = a1;
      }

      v19 = [v17 cloudTransform:a1 isPermittedForHomeWithModelID:v11 isImport:a3];

      v20 = objc_autoreleasePoolPush();
      v21 = a1;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v23 = v28 = v20;
        v24 = @"denied";
        *buf = 138544386;
        v30 = v23;
        if (v19)
        {
          v24 = @"allowed";
        }

        v32 = v24;
        v25 = @"import";
        v31 = 2114;
        v33 = 2114;
        if (!a3)
        {
          v25 = @"export";
        }

        v34 = v25;
        v35 = 2160;
        v36 = 1752392040;
        v37 = 2112;
        v38 = v11;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Delegate has %{public}@ %{public}@ transform for home %{mask.hash}@", buf, 0x34u);

        v20 = v28;
      }

      objc_autoreleasePoolPop(v20);
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v14)
    {
      LOBYTE(v19) = 1;
LABEL_21:
      v14[32] = v19;
    }
  }

LABEL_22:

LABEL_23:
  v26 = *MEMORY[0x277D85DE8];

  return v14;
}

void __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"homeManagerApplicationData"];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v14 = 138543874;
      v15 = v11;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Detected home manager application data change on home %{mask.hash}@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 48) setHmd_homeManagerApplicationDataChanged:1];
    *a3 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_shouldProcessChange:(void *)a3 homeModelID:(int)a4 isImport:(void *)a5 context:
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_28;
  }

  v12 = [v9 changedObjectID];
  v13 = [v12 entity];

  if (!a4)
  {
LABEL_6:
    v19 = +[MKFCKSharedHome entity];
    if ([v13 isKindOfEntity:v19])
    {
      v20 = [v9 transaction];
      v21 = [v20 storeID];
      v22 = [v11 hmd_cloudPrivateStoreIdentifier];
      v53 = a1;
      v23 = v9;
      v24 = v13;
      v25 = v10;
      v26 = v11;
      v27 = [v21 isEqualToString:v22];

      v16 = v27 ^ 1u;
      if (v27)
      {
        v11 = v26;
        v10 = v25;
        v13 = v24;
        v9 = v23;
        goto LABEL_27;
      }

      v11 = v26;
      v10 = v25;
      v13 = v24;
      v9 = v23;
      a1 = v53;
      if (a4)
      {
        goto LABEL_27;
      }

LABEL_12:
      v28 = v9;
      v50 = v10;
      v51 = v11;
      v52 = v28;
      v29 = [v28 changedObjectID];
      v54 = [v29 entity];

      v30 = [v54 userInfo];
      v31 = [v30 objectForKeyedSubscript:@"cloudSyncInclude"];
      v32 = v31;
      if (v31 && ([v31 BOOLValue] & 1) == 0)
      {
        v49 = objc_autoreleasePoolPush();
        v40 = a1;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v47 = HMFGetLogIdentifier();
          v42 = [v54 name];
          *v65 = 138544130;
          *&v65[4] = v47;
          *&v65[12] = 2112;
          *&v65[14] = v42;
          *&v65[22] = 2112;
          v66 = @"cloudSyncInclude";
          LOWORD(v67) = 2112;
          *(&v67 + 2) = v32;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring update to %@ as it is marked with '%@' = '%@'", v65, 0x2Au);
        }

        objc_autoreleasePoolPop(v49);
        v16 = 0;
      }

      else
      {
        v33 = [v30 objectForKeyedSubscript:@"cloudSyncEntity"];

        if (v33 && [v52 changeType] == 1)
        {
          v48 = v11;
          v55 = 0;
          v56 = &v55;
          v57 = 0x2020000000;
          v58 = 0;
          v34 = [v52 updatedProperties];
          *v65 = MEMORY[0x277D85DD0];
          *&v65[8] = 3221225472;
          *&v65[16] = __76__HMDCoreDataCloudTransform__shouldProcessExportChange_homeModelID_context___block_invoke;
          v66 = &unk_278678FF8;
          *&v67 = a1;
          v46 = v54;
          *(&v67 + 1) = v46;
          v68 = &v55;
          [v34 hmf_enumerateWithAutoreleasePoolUsingBlock:v65];

          v16 = *(v56 + 24);
          if ((v16 & 1) == 0)
          {
            context = objc_autoreleasePoolPush();
            v35 = a1;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v37 = v35;
              v38 = HMFGetLogIdentifier();
              v39 = [v46 name];
              *buf = 138543874;
              v60 = v38;
              v61 = 2112;
              v62 = v39;
              v63 = 2112;
              v64 = v52;
              _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@No relevant updates to %@, skipping change: %@", buf, 0x20u);

              v35 = v37;
            }

            objc_autoreleasePoolPop(context);
          }

          v11 = v48;
          _Block_object_dispose(&v55, 8);
        }

        else
        {
          v16 = 1;
        }
      }

      goto LABEL_27;
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v16 = 1;
    goto LABEL_27;
  }

  v14 = [HMDCoreDataCloudTransform fakeHomeChangeSetModelID];
  v15 = [v10 isEqual:v14];

  if ((v15 & 1) == 0)
  {
    v17 = [a1[12] objectForKey:v13];
    v18 = [v17 count];

    if (v18)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v16 = 0;
LABEL_27:

LABEL_28:
  v43 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)fakeHomeChangeSetModelID
{
  if (fakeHomeChangeSetModelID__hmf_once_t13 != -1)
  {
    dispatch_once(&fakeHomeChangeSetModelID__hmf_once_t13, &__block_literal_global_111_121635);
  }

  v1 = fakeHomeChangeSetModelID__hmf_once_v14;

  return v1;
}

void __76__HMDCoreDataCloudTransform__shouldProcessExportChange_homeModelID_context___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"cloudSyncInclude"];
  v6 = v5;
  if (!v5 || ([v5 BOOLValue] & 1) != 0)
  {
    v7 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      if (([v6 BOOLValue] & 1) == 0)
      {
        v10 = [v4 objectForKeyedSubscript:@"cloudSyncCustomCopy"];
        v11 = [v10 BOOLValue];

        if (!v11)
        {
          v12 = [v9 name];
          v13 = [v12 isEqualToString:@"writerTimestamp"];

          if ((v13 & 1) == 0)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 32);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = HMFGetLogIdentifier();
              v18 = [*(a1 + 40) name];
              v19 = [v7 name];
              v29 = 138543874;
              v30 = v17;
              v31 = 2112;
              v32 = v18;
              v33 = 2112;
              v34 = v19;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring update to %@.%@ as it is not included in cloud sync", &v29, 0x20u);
            }

            objc_autoreleasePoolPop(v14);
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v26 = v7;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (!v26 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_19:

    goto LABEL_20;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [*(a1 + 40) name];
    v25 = [v3 name];
    v29 = 138544386;
    v30 = v23;
    v31 = 2112;
    v32 = v24;
    v33 = 2112;
    v34 = v25;
    v35 = 2112;
    v36 = @"cloudSyncInclude";
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring update to %@.%@ as it is marked with '%@' = '%@'", &v29, 0x34u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];
}

void __53__HMDCoreDataCloudTransform_fakeHomeChangeSetModelID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FA40BC4C-1D19-499A-BE28-6CE8F1A9EF66"];
  v1 = fakeHomeChangeSetModelID__hmf_once_v14;
  fakeHomeChangeSetModelID__hmf_once_v14 = v0;
}

- (__CFString)_homeModelIDPropertyNameForObjectID:(void *)a1
{
  v1 = [a1 entity];
  v2 = +[MKFCKHome entity];
  v3 = [v1 isKindOfEntity:v2];

  v4 = @"modelID";
  if ((v3 & 1) == 0)
  {
    v5 = +[MKFCKSharedHome entity];
    v6 = [v1 isKindOfEntity:v5];

    if (!v6)
    {
      v4 = @"homeModelID";
    }
  }

  return v4;
}

void __71__HMDCoreDataCloudTransform__changeSetsFromExportTransactions_context___block_invoke(id *a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = v3;
  v6 = v5;
  v7 = v5;
  if (!v4)
  {
    goto LABEL_11;
  }

  v8 = [v5 contextName];

  if (!v8)
  {
    v10 = objc_autoreleasePoolPush();
    v16 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v13;
      v51 = 2112;
      v52 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Can't process transaction with no context name: %@", buf, 0x16u);
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v10);
    v7 = v6;
    goto LABEL_11;
  }

  v9 = [v6 hmd_transactionAuthor];
  if (v9 <= 0xB && ((1 << v9) & 0xB30) != 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v6 transactionNumber];
      v15 = [v6 author];
      *buf = 138543874;
      v50 = v13;
      v51 = 2048;
      v52 = v14;
      v53 = 2114;
      v54 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not exporting transaction %lld with author %{public}@", buf, 0x20u);

LABEL_9:
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v7 = [v6 contextName];
  if ([v7 isEqualToString:@"HomeManager"])
  {
    v18 = 0;
    goto LABEL_15;
  }

  v18 = HMDHomeUUIDFromWorkingContextName(v7);
  if (v18)
  {
LABEL_15:
    v19 = [v6 author];
    v20 = [HMDCoreDataContextTransactionAuthor contextAuthorWithString:v19];

    v21 = a1[4];
    v22 = [v20 clientIdentifier];
    v23 = -[HMDCoreDataCloudTransform _changeSetForHome:isImport:clientIdentifier:qualityOfService:cache:](v21, v18, 0, v22, [v20 qualityOfService], a1[5]);

    if (!v23 || (v23[32] & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1[4];
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v28 = v27 = v20;
        *buf = 138543874;
        v50 = v28;
        v51 = 2160;
        v52 = 1752392040;
        v53 = 2112;
        v54 = v18;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Delegate has denied transform for home %{mask.hash}@ but allowing transform because the transaction is a force update", buf, 0x20u);

        v20 = v27;
      }

      objc_autoreleasePoolPop(v24);
      if (v23)
      {
        v23[32] = 1;
      }
    }

    v29 = objc_autoreleasePoolPush();
    v30 = a1[4];
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v32 = v44 = v20;
      v33 = [v6 transactionNumber];
      [v6 changes];
      v34 = v43 = v18;
      v35 = [v34 count];
      *buf = 138543874;
      v50 = v32;
      v51 = 2048;
      v52 = v33;
      v53 = 2048;
      v54 = v35;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Processing export transaction %lld with %zd change(s)", buf, 0x20u);

      v18 = v43;
      v20 = v44;
    }

    objc_autoreleasePoolPop(v29);
    v36 = [v6 changes];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __71__HMDCoreDataCloudTransform__changeSetsFromExportTransactions_context___block_invoke_230;
    v45[3] = &unk_278679200;
    v45[4] = a1[4];
    v46 = v18;
    v47 = a1[6];
    v48 = v23;
    v37 = v23;
    v38 = v18;
    [v36 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];

    goto LABEL_11;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = a1[4];
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138544130;
    v50 = v42;
    v51 = 2048;
    v52 = [v6 transactionNumber];
    v53 = 2160;
    v54 = 1752392040;
    v55 = 2112;
    v56 = v7;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Refusing to process export transaction %lld with context name %{mask.hash}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v39);
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

void __71__HMDCoreDataCloudTransform__changeSetsFromExportTransactions_context___block_invoke_230(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([(HMDCoreDataCloudTransform *)*(a1 + 32) _shouldProcessChange:v3 homeModelID:*(a1 + 40) isImport:0 context:*(a1 + 48)])
  {
    [(HMDCoreDataCloudTransformChangeSet *)*(a1 + 56) processChange:v3];
  }
}

- (BOOL)cloudTransform:(id)a3 isPermittedForHomeWithModelID:(id)a4 isImport:(BOOL)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2160;
    v18 = 1752392040;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@No delegate assigned, presuming that transform is allowed for home %{mask.hash}@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)coreData:(id)a3 cloudKitExportFinishedForStoreWithIdentifier:(id)a4 duration:(double)a5 error:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (v12)
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    v26 = 138544130;
    v27 = v17;
    v28 = 2114;
    v29 = v11;
    v30 = 2048;
    v31 = a5;
    v32 = 2114;
    v33 = v12;
    v18 = "%{public}@CloudKit export for store %{public}@ failed after %f seconds: %{public}@";
    v19 = v16;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 42;
  }

  else
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v17;
    v28 = 2114;
    v29 = v11;
    v30 = 2048;
    v31 = a5;
    v18 = "%{public}@CloudKit export for store %{public}@ finished after %f seconds";
    v19 = v16;
    v20 = OS_LOG_TYPE_INFO;
    v21 = 32;
  }

  _os_log_impl(&dword_229538000, v19, v20, v18, &v26, v21);

LABEL_7:
  objc_autoreleasePoolPop(v13);
  if (v14)
  {
    logEventSubmitter = v14->_logEventSubmitter;
  }

  else
  {
    logEventSubmitter = 0;
  }

  v23 = logEventSubmitter;
  v24 = [[HMDCoreDataCloudKitOperationLogEvent alloc] initWithOperationType:2];
  [(HMMLogEventSubmitting *)v23 submitLogEvent:v24 error:v12];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)coreData:(id)a3 cloudKitExportStartedForStoreWithIdentifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@CloudKit export started for store %{public}@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)coreData:(id)a3 cloudKitImportFinishedForStoreWithIdentifier:(id)a4 duration:(double)a5 error:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self->_logger;
  v14 = v13;
  importSignpostID = self->_importSignpostID;
  if (importSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v16 = HMFBooleanToString();
    if (v12)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "code")}];
      [v12 domain];
    }

    else
    {
      v17 = [MEMORY[0x277CBEB68] null];
      [MEMORY[0x277CBEB68] null];
    }
    v18 = ;
    v35 = 138413058;
    v36 = v11;
    v37 = 2112;
    v38 = v16;
    v39 = 2112;
    v40 = *&v17;
    v41 = 2112;
    v42 = v18;
    _os_signpost_emit_with_name_impl(&dword_229538000, v14, OS_SIGNPOST_INTERVAL_END, importSignpostID, "CoreDataCloudTransformImport", "storeIdentifier=%{signpost.description:attribute}@ succeeded=%{signpost.description:attribute}@ errorCode=%{signpost.description:attribute}@ errorDomain=%{signpost.description:attribute}@ ", &v35, 0x2Au);
  }

  self->_importSignpostID = 0;
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (v12)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v35 = 138544130;
      v36 = v23;
      v37 = 2114;
      v38 = v11;
      v39 = 2048;
      v40 = a5;
      v41 = 2114;
      v42 = v12;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@CloudKit import for store %{public}@ failed after %f seconds: %{public}@", &v35, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v35 = 138543874;
    v36 = v24;
    v37 = 2114;
    v38 = v11;
    v39 = 2048;
    v40 = a5;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@CloudKit import for store %{public}@ finished after %f seconds", &v35, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
  v25 = v20->_logEventSubmitter;
  v26 = [[HMDCoreDataCloudKitOperationLogEvent alloc] initWithOperationType:1];
  [(HMMLogEventSubmitting *)v25 submitLogEvent:v26 error:v12];

  os_unfair_lock_lock_with_options();
  v27 = v20->_cloudImportInProgressStoreIdentifiers;
  [(NSMutableSet *)v27 removeObject:v11];

  if ([(NSMutableSet *)v20->_cloudImportInProgressStoreIdentifiers count]|| (v28 = v20->_pendingChangedStoreIdentifiers, v29 = [(NSMutableSet *)v28 count]== 0, v28, v29))
  {
    os_unfair_lock_unlock(&v20->_lock.lock);
  }

  else
  {
    v30 = [(HMDCoreDataCloudTransform *)&v20->super.super.isa _managedObjectContext];
    v31 = v20->_pendingChangedStoreIdentifiers;
    v32 = [(NSMutableSet *)v31 copy];

    v33 = v20->_pendingChangedStoreIdentifiers;
    [(NSMutableSet *)v33 removeAllObjects];

    os_unfair_lock_unlock(&v20->_lock.lock);
    [(HMDCoreDataCloudTransform *)v20 _runTransformOnContext:v30 storeIdentifiers:v32 completeMergeHomeModelID:0 completion:0];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)cloudImportInProgressStoreIdentifiers
{
  if (a1)
  {
    a1 = a1[8];
    v1 = vars8;
  }

  return a1;
}

- (id)_managedObjectContext
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    if (!WeakRetained)
    {
      v3 = [a1 coreData];
      v4 = [v3 newManagedObjectContext];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __50__HMDCoreDataCloudTransform__managedObjectContext__block_invoke;
      v7[3] = &unk_27868A010;
      WeakRetained = v4;
      v8 = WeakRetained;
      v9 = a1;
      v10 = v3;
      v5 = v3;
      [WeakRetained performBlockAndWait:v7];
      objc_storeWeak(a1 + 6, WeakRetained);
    }
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (void)_runTransformOnContext:(void *)a3 storeIdentifiers:(void *)a4 completeMergeHomeModelID:(void *)a5 completion:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a1)
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__121531;
    v27[4] = __Block_byref_object_dispose__121532;
    v28 = 0;
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__HMDCoreDataCloudTransform__runTransformOnContext_storeIdentifiers_completeMergeHomeModelID_completion___block_invoke;
      block[3] = &unk_278678E98;
      v25 = v12;
      v26 = v27;
      v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    }

    else
    {
      v14 = 0;
    }

    objc_initWeak(&location, a1);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __105__HMDCoreDataCloudTransform__runTransformOnContext_storeIdentifiers_completeMergeHomeModelID_completion___block_invoke_125;
    v16[3] = &unk_278678EC0;
    objc_copyWeak(&v22, &location);
    v15 = v14;
    v20 = v15;
    v21 = v27;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    [v17 performBlock:v16];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);

    _Block_object_dispose(v27, 8);
  }
}

void __105__HMDCoreDataCloudTransform__runTransformOnContext_storeIdentifiers_completeMergeHomeModelID_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_class();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Running completion handler", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

void __105__HMDCoreDataCloudTransform__runTransformOnContext_storeIdentifiers_completeMergeHomeModelID_completion___block_invoke_125(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(HMDCoreDataCloudTransform *)WeakRetained _runTransformWhilePerformingBlockOnContext:*(a1 + 40) storeIdentifiers:*(a1 + 48) completeMergeHomeModelID:?];
    if (*(a1 + 56))
    {
      v4 = objc_autoreleasePoolPush();
      v5 = v3;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v7;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Dispatching completion handler", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;

      v10 = dispatch_get_global_queue(21, 0);
      dispatch_async(v10, *(a1 + 56));
    }

    [(HMDCoreDataCloudTransform *)v3 _delayContextDestruction:?];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_class();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@HMDCoreDataCloudTransform deallocated before running transform", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    if (*(a1 + 56))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Dispatching completion handler", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      v19 = *(*(a1 + 64) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = dispatch_get_global_queue(21, 0);
      dispatch_async(v21, *(a1 + 56));
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_runTransformWhilePerformingBlockOnContext:(void *)a3 storeIdentifiers:(void *)a4 completeMergeHomeModelID:
{
  v147[1] = *MEMORY[0x277D85DE8];
  v108 = a2;
  v106 = a3;
  v7 = a4;
  if (!a1)
  {
    goto LABEL_82;
  }

  if (![a1 badCDPState])
  {
    v103 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.cloud-transform"];
    if (v7)
    {
      v105 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CBEB18];
      if (v106)
      {
        v13 = [v106 count];
      }

      else
      {
        v13 = 3;
      }

      v14 = [v12 arrayWithCapacity:v13];
      v15 = [v108 persistentStoreCoordinator];
      v16 = [v15 persistentStores];
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __114__HMDCoreDataCloudTransform__runTransformWhilePerformingBlockOnContext_storeIdentifiers_completeMergeHomeModelID___block_invoke;
      v112[3] = &unk_278678EE8;
      v113 = v106;
      v114 = v108;
      v105 = v14;
      v115 = v105;
      [v16 hmf_enumerateWithAutoreleasePoolUsingBlock:v112];

      if (![v105 count])
      {
LABEL_81:

        goto LABEL_82;
      }
    }

    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v20;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2112;
      v143 = v7;
      LOWORD(v144) = 2114;
      *(&v144 + 2) = v106;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Starting transform: completeMergeHomeModelID = %{mask.hash}@, storeIdentifiers = %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v107 = v108;
    v21 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
    v127 = 0;
    v22 = [v107 setQueryGenerationFromToken:v21 error:&v127];
    v23 = v127;

    if ((v22 & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v18;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v23;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to pin context to current query generation: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }

    if (!v18[1].super.super._cd_rawData)
    {
      v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
      v29 = [(HMDCoreDataCloudTransform *)v18 _fetchOrCreateMetadataForManagedObjectContext:v107];
      v30 = [v29 historyTokenForCloudStore];

      if (v30)
      {
        v31 = [v29 historyTokenForCloudStore];
        v32 = [v107 hmd_cloudPrivateStoreIdentifier];
        [v28 setObject:v31 forKeyedSubscript:v32];
      }

      v33 = [v29 historyTokenForCloudSharedStore];

      if (v33)
      {
        v34 = [v29 historyTokenForCloudSharedStore];
        v35 = [v107 hmd_cloudSharedStoreIdentifier];
        [v28 setObject:v34 forKeyedSubscript:v35];
      }

      v36 = [v29 historyTokenForWorkingStore];

      if (v36)
      {
        v37 = [v29 historyTokenForWorkingStore];
        v38 = [v107 hmd_workingStoreIdentifier];
        [v28 setObject:v37 forKeyedSubscript:v38];
      }

      v39 = objc_autoreleasePoolPush();
      v40 = v18;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Fetched metadata for the first time: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      cd_rawData = v40[1].super.super._cd_rawData;
      v40[1].super.super._cd_rawData = v28;
    }

    if (!v7)
    {
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __114__HMDCoreDataCloudTransform__runTransformWhilePerformingBlockOnContext_storeIdentifiers_completeMergeHomeModelID___block_invoke_133;
      v109[3] = &unk_278678EE8;
      v109[4] = v18;
      v110 = v107;
      v111 = v105;
      [v111 hmf_enumerateWithAutoreleasePoolUsingBlock:v109];

LABEL_76:
      v88 = objc_autoreleasePoolPush();
      v89 = v18;
      v90 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        v91 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v91;
        _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_DEBUG, "%{public}@Resetting after transform", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v88);
      [v107 reset];
      v92 = objc_autoreleasePoolPush();
      v93 = v89;
      v94 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        v95 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v95;
        _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_DEBUG, "%{public}@Finished transform", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v92);
      goto LABEL_81;
    }

    v44 = objc_autoreleasePoolPush();
    v45 = v18;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v47;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2112;
      v143 = v7;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Starting complete merge transform for home with modelID %{mask.hash}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v44);
    v48 = v107;
    v49 = v7;
    [v48 hmd_assertIsExecuting];
    v50 = v49;
    v51 = v48;
    [v51 hmd_assertIsExecuting];
    v52 = [v51 hmd_coreData];
    v102 = v52;
    if (!v52)
    {
      v62 = objc_autoreleasePoolPush();
      v63 = v45;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v65;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@HMDCoreData deallocated before running complete merge import", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v62);
      goto LABEL_73;
    }

    v101 = [v52 cloudPrivateStore];
    v104 = +[MKFCKHome fetchRequest];
    v53 = [(MKFCKModel *)MKFCKHome predicateWithModelID:v50];
    [v104 setPredicate:v53];

    v54 = +[(MKFCKModel *)MKFCKHome];
    [v104 setPropertiesToFetch:v54];

    v147[0] = v101;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:1];
    [v104 setAffectedStores:v55];

    v133 = 0;
    v100 = [v51 executeFetchRequest:v104 error:&v133];
    v56 = v133;
    if (!v100)
    {
      v66 = objc_autoreleasePoolPush();
      v67 = v45;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        *buf = 138544130;
        *&buf[4] = v69;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v143 = v50;
        LOWORD(v144) = 2114;
        *(&v144 + 2) = v56;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud home with modelID %{mask.hash}@: %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v66);
      goto LABEL_72;
    }

    v57 = [v100 firstObject];
    v127 = 0;
    v128 = &v127;
    v129 = 0x3032000000;
    v130 = __Block_byref_object_copy__121531;
    v131 = __Block_byref_object_dispose__121532;
    v132 = 0;
    v121 = 0;
    v122 = &v121;
    v123 = 0x3032000000;
    v124 = __Block_byref_object_copy__121531;
    v125 = __Block_byref_object_dispose__121532;
    v126 = 0;
    if (v57)
    {
      v99 = v56;
      goto LABEL_35;
    }

    v70 = +[MKFCKHome entity];
    v120 = v56;
    v71 = [v101 hmd_tombstonesForEntity:v70 duration:v51 context:&v120 error:0.0];
    v99 = v120;

    if (!v71)
    {
      v58 = objc_autoreleasePoolPush();
      v59 = v45;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v81 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v81;
        *&buf[12] = 2114;
        *&buf[14] = v99;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch tombstones for cloud homes: %{public}@", buf, 0x16u);
      }

      goto LABEL_38;
    }

    v116 = 0;
    v117 = &v116;
    v118 = 0x2020000000;
    v119 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __83__HMDCoreDataCloudTransform__performCompleteMergeImportForHomeWithModelID_context___block_invoke;
    v143 = &unk_278678F10;
    v72 = v50;
    *&v144 = v72;
    *(&v144 + 1) = &v127;
    v145 = &v121;
    v146 = &v116;
    [v71 enumerateKeysAndObjectsUsingBlock:buf];
    if (v128[5])
    {
      if (*(v117 + 24) != 1)
      {

        _Block_object_dispose(&v116, 8);
LABEL_35:
        if ([v57 isFake])
        {
          v58 = objc_autoreleasePoolPush();
          v59 = v45;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = HMFGetLogIdentifier();
            *v134 = 138543618;
            v135 = v61;
            v136 = 2112;
            v137 = v57;
            _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Refusing to merge fake home: %@", v134, 0x16u);
          }

LABEL_38:

          objc_autoreleasePoolPop(v58);
LABEL_71:
          _Block_object_dispose(&v121, 8);

          _Block_object_dispose(&v127, 8);
          v56 = v99;
LABEL_72:

LABEL_73:
          v84 = objc_autoreleasePoolPush();
          v85 = v45;
          v86 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v87 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v87;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v143 = v50;
            _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_INFO, "%{public}@Finished complete merge transform for home with modelID %{mask.hash}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v84);
          goto LABEL_76;
        }

        v77 = [HMDCoreDataCloudTransformChangeSet alloc];
        if (v77)
        {
          v71 = [(HMDCoreDataCloudTransformChangeSet *)&v77->super.isa initWithHomeModelID:v50 clientIdentifier:0 qualityOfService:0xFFFFFFFFFFFFFFFFLL];
          if (v57)
          {
LABEL_53:
            v78 = [v57 fetchLocalModelWithContext:v51];
            if (v78)
            {
              v79 = [v57 objectID];
              v80 = [MEMORY[0x277CBEB98] set];
              [(HMDCoreDataCloudTransformChangeSet *)v71 processUpdate:v79 updatedProperties:v80];
            }

            else
            {
              v79 = [v57 objectID];
              if (v71)
              {
                [*(v71 + 8) addObject:v79];
              }
            }

            goto LABEL_67;
          }
        }

        else
        {
          v71 = 0;
          if (v57)
          {
            goto LABEL_53;
          }
        }

        [(HMDCoreDataCloudTransformChangeSet *)v71 processDelete:v122[5] tombstone:?];
LABEL_67:
        if (v71)
        {
          *(v71 + 32) = 1;
        }

        [(HMDCoreDataCloudTransform *)v45 _processChangeSet:v71 isImport:1 context:v51];
        [v51 rollback];
        [v51 refreshAllObjects];
        goto LABEL_70;
      }

      v97 = v72;
      context = objc_autoreleasePoolPush();
      v73 = v45;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = HMFGetLogIdentifier();
        v76 = v128[5];
        *v134 = 138544130;
        v135 = v75;
        v136 = 2112;
        v137 = v76;
        v138 = 2160;
        v139 = 1752392040;
        v140 = 2112;
        v141 = v97;
        _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@Refusing to merge deleted fake home: <%@: %{mask.hash}@>", v134, 0x2Au);
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v82 = v45;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v83 = HMFGetLogIdentifier();
        *v134 = 138543874;
        v135 = v83;
        v136 = 2160;
        v137 = 1752392040;
        v138 = 2112;
        v139 = v72;
        _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Didn't find home with modelID %{mask.hash}@", v134, 0x20u);
      }
    }

    objc_autoreleasePoolPop(context);
    _Block_object_dispose(&v116, 8);
LABEL_70:

    goto LABEL_71;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not running transform due operating in bad CDP state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
LABEL_82:

  v96 = *MEMORY[0x277D85DE8];
}

- (void)_delayContextDestruction:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = dispatch_get_global_queue(9, 0);
    v5 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDCoreDataCloudTransform__delayContextDestruction___block_invoke;
    block[3] = &unk_27868A728;
    v7 = v3;
    dispatch_after(v5, v4, block);
  }
}

void __114__HMDCoreDataCloudTransform__runTransformWhilePerformingBlockOnContext_storeIdentifiers_completeMergeHomeModelID___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 identifier];
  v4 = *(a1 + 32);
  if (!v4 || [v4 containsObject:v3])
  {
    v5 = [*(a1 + 40) hmd_cloudPrivateStoreIdentifier];
    if ([v3 isEqualToString:v5])
    {
LABEL_6:

LABEL_7:
      [*(a1 + 48) addObject:v9];
      goto LABEL_8;
    }

    v6 = [*(a1 + 40) hmd_cloudSharedStoreIdentifier];
    if ([v3 isEqualToString:v6])
    {

      goto LABEL_6;
    }

    v7 = [*(a1 + 40) hmd_workingStoreIdentifier];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

void __114__HMDCoreDataCloudTransform__runTransformWhilePerformingBlockOnContext_storeIdentifiers_completeMergeHomeModelID___block_invoke_133(id *a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 configurationName];
    v11 = [v5 identifier];
    v25 = 138543874;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting transform for store [%{public}@] with identifier: %{public}@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [a1[4] _processHistoryForStore:v5 context:a1[5]];
  v12 = objc_autoreleasePoolPush();
  v13 = a1[4];
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v5 configurationName];
    v17 = [v5 identifier];
    v25 = 138543874;
    v26 = v15;
    v27 = 2114;
    v28 = v16;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Finished transform for store [%{public}@] with identifier: %{public}@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if ([a1[6] count] - 1 != a3)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v5 configurationName];
      v23 = [v5 identifier];
      v25 = 138543874;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 2114;
      v30 = v23;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Cleaning up after transform for store [%{public}@] with identifier: %{public}@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [a1[5] rollback];
    [a1[5] refreshAllObjects];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __83__HMDCoreDataCloudTransform__performCompleteMergeImportForHomeWithModelID_context___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v8 = a3;
  v9 = [v8 hmf_UUIDForKey:@"modelID"];
  if ([v9 isEqual:a1[4]])
  {
    *a4 = 1;
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    v10 = [v8 hmf_UUIDForKey:@"flags"];
    v11 = v10;
    if (v10)
    {
      v14 = 0;
      v15 = 0;
      [v10 getUUIDBytes:&v14];
      if ((v15 & 0x80000000000) != 0)
      {
        *(*(a1[7] + 8) + 24) = 1;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __50__HMDCoreDataCloudTransform__managedObjectContext__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  objc_opt_class();
  v4 = objc_opt_self();
  v5 = NSStringFromClass(v4);
  [*(a1 + 32) setName:v5];

  v6 = [*(a1 + 48) cloudPrivateStore];
  v7 = [v6 identifier];
  [*(a1 + 32) setHmd_cloudPrivateStoreIdentifier:v7];

  v8 = [*(a1 + 48) cloudSharedStore];
  v9 = [v8 identifier];
  [*(a1 + 32) setHmd_cloudSharedStoreIdentifier:v9];

  v10 = [*(a1 + 48) workingStore];
  v11 = [v10 identifier];
  [*(a1 + 32) setHmd_workingStoreIdentifier:v11];

  v12 = *(a1 + 40);
  if (v12)
  {
    LOBYTE(v12) = *(v12 + 40);
  }

  [*(a1 + 32) setHmd_fakeRecordsEnabled:v12 & 1];

  objc_autoreleasePoolPop(v2);
}

- (void)coreData:(id)a3 cloudKitImportStartedForStoreWithIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDCoreDataCloudTransform *)&self->super.super.isa cloudImportInProgressStoreIdentifiers];
  [v8 addObject:v7];

  os_unfair_lock_unlock(&self->_lock.lock);
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@CloudKit import started for store %{public}@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  logger = v10->_logger;
  if (os_signpost_enabled(logger))
  {
    v15 = 138412290;
    v16 = v7;
    _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CoreDataCloudTransformImport", "storeIdentifier=%{signpost.description:attribute}@ ", &v15, 0xCu);
  }

  v10->_importSignpostID = 0xEEEEB0B5B2B2EEEELL;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)coreData:(id)a3 persistentStoreWithIdentifierDidChange:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  if (self && [(NSMutableSet *)self->_cloudImportInProgressStoreIdentifiers count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Waiting for cloud import to finish before running transform on store %{public}@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = v9->_pendingChangedStoreIdentifiers;
    [(NSMutableSet *)v12 addObject:v7];

    os_unfair_lock_unlock(&self->_lock.lock);
  }

  else
  {
    v13 = [(HMDCoreDataCloudTransform *)&self->super.super.isa _managedObjectContext];
    v14 = [(HMDCoreDataCloudTransform *)&self->super.super.isa pendingChangedStoreIdentifiers];
    v15 = [v14 setByAddingObject:v7];

    v16 = [(HMDCoreDataCloudTransform *)&self->super.super.isa pendingChangedStoreIdentifiers];
    [v16 removeAllObjects];

    os_unfair_lock_unlock(&self->_lock.lock);
    [(HMDCoreDataCloudTransform *)self _runTransformOnContext:v13 storeIdentifiers:v15 completeMergeHomeModelID:0 completion:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)badCDPState
{
  v2 = [(HMDCoreDataCloudTransform *)self userDefaults];
  v3 = [v2 BOOLForKey:@"badCDPState"];

  return v3;
}

- (id)newCloudMirrorExportStatusMonitor
{
  v3 = [HMDCoreDataCloudMirroringExportStatusMonitor alloc];
  v4 = [(HMDCoreDataCloudTransform *)self coreData];
  v5 = [(HMDCoreDataCloudTransform *)self managedObjectContext];
  v6 = [(HMDCoreDataCloudMirroringExportStatusMonitor *)v3 initWithCoreData:v4 managedObjectContext:v5];

  return v6;
}

- (void)registerCloudChangeListener:(id)a3 forEntities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke;
  v20[3] = &unk_278678E48;
  v9 = v8;
  v21 = v9;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];
  v10 = [(HMDCoreDataCloudTransform *)self managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_3;
  v15[3] = &unk_278689550;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v7;
  v14 = v6;
  [v11 performBlock:v15];
}

void __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_2;
  v3[3] = &unk_278678E20;
  v4 = *(a1 + 32);
  [a2 hmd_recursivelyEnumerateSubentitiesUsingBlock:v3];
}

void __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) valueForKeyPath:@"name"];
    *buf = 138543874;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Adding listener %@ for entity types %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 56);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_105;
  v20 = &unk_278678E70;
  v9 = *(a1 + 40);
  v21 = *(a1 + 32);
  v22 = v9;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:&v17];
  v10 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      *buf = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Starting listener %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) willStartListeningWithContext:{*(a1 + 64), v17, v18, v19, v20, v21}];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_105(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 96);
  }

  else
  {
    v5 = 0;
  }

  v9 = v3;
  v6 = [v5 objectForKey:v3];
  if (!v6)
  {
    v6 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 96);
    }

    else
    {
      v8 = 0;
    }

    [v8 setObject:v6 forKey:v9];
  }

  [v6 hmf_addObject:*(a1 + 40)];
}

void __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isAbstract] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)runCompleteMergeTransformForHomeWithModelID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Complete merge requested", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCoreDataCloudTransform *)v9 managedObjectContext];
  [(HMDCoreDataCloudTransform *)v9 _runTransformOnContext:v12 storeIdentifiers:0 completeMergeHomeModelID:v6 completion:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)runTransformWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Manual run requested", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCoreDataCloudTransform *)v6 managedObjectContext];
  [(HMDCoreDataCloudTransform *)v6 _runTransformOnContext:v9 storeIdentifiers:0 completeMergeHomeModelID:0 completion:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)runTransformWithError:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronous manual run requested", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCoreDataCloudTransform *)v5 managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HMDCoreDataCloudTransform_runTransformWithError___block_invoke;
  v11[3] = &unk_27868A728;
  v11[4] = v5;
  [v8 performBlockAndWait:v11];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

void __51__HMDCoreDataCloudTransform_runTransformWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 managedObjectContext];
  [(HMDCoreDataCloudTransform *)v2 _runTransformWhilePerformingBlockOnContext:v3 storeIdentifiers:0 completeMergeHomeModelID:0];

  v4 = *(a1 + 32);
  v5 = [v4 managedObjectContext];
  [(HMDCoreDataCloudTransform *)v4 _delayContextDestruction:v5];
}

- (id)managedObjectContext
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDCoreDataCloudTransform *)&self->super.super.isa _managedObjectContext];
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (HMDCoreDataCloudTransform)initWithCoreData:(id)a3 fakeRecordsEnabled:(BOOL)a4 logEventSubmitter:(id)a5 userDefaults:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = HMDCoreDataCloudTransform;
  v14 = [(HMDCoreDataCloudTransform *)&v26 init];
  if (v14)
  {
    v15 = HMFGetOSLogHandle();
    logger = v14->_logger;
    v14->_logger = v15;

    v14->_lock.lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_coreData, a3);
    v17 = [MEMORY[0x277CBEB58] set];
    pendingChangedStoreIdentifiers = v14->_pendingChangedStoreIdentifiers;
    v14->_pendingChangedStoreIdentifiers = v17;

    v19 = objc_opt_new();
    cloudImportInProgressStoreIdentifiers = v14->_cloudImportInProgressStoreIdentifiers;
    v14->_cloudImportInProgressStoreIdentifiers = v19;

    v21 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    cloudChangeListeners = v14->_cloudChangeListeners;
    v14->_cloudChangeListeners = v21;

    v14->_fakeRecordsEnabled = a4;
    objc_storeStrong(&v14->_logEventSubmitter, a5);
    v23 = objc_alloc_init(HMDCoreDataCloudTransformMergePolicy);
    mergePolicy = v14->_mergePolicy;
    v14->_mergePolicy = v23;

    objc_storeStrong(&v14->_userDefaults, a6);
    [v11 addNotificationListener:v14];
  }

  return v14;
}

- (HMDCoreDataCloudTransform)initWithCoreData:(id)a3 logEventSubmitter:(id)a4
{
  v6 = MEMORY[0x277CBEBD0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 standardUserDefaults];
  v10 = [(HMDCoreDataCloudTransform *)self initWithCoreData:v8 fakeRecordsEnabled:1 logEventSubmitter:v7 userDefaults:v9];

  return v10;
}

- (HMDCoreDataCloudTransform)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (BOOL)transactionIsCloudStoreReset:(id)a3 context:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 author];
  v9 = [v8 isEqualToString:@"NSCloudKitMirroringDelegate.reset"];

  if (v9)
  {
    v10 = [v6 storeID];
    v11 = [v7 hmd_coreData];
    v12 = [v11 cloudSharedStore];
    v13 = [v12 identifier];
    v14 = [v10 isEqualToString:v13];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = a1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "transactionNumber")}];
        v27 = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Not processing reset on shared store : %@", &v27, 0x16u);
      }

      v20 = 0;
    }

    else
    {
      v21 = [v6 changes];
      v20 = [v21 na_any:&__block_literal_global_195];

      v15 = objc_autoreleasePoolPush();
      v22 = a1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v24 = HMFBooleanToString();
        v27 = 138543874;
        v28 = v23;
        v29 = 2112;
        v30 = v24;
        v31 = 2114;
        v32 = v6;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Reset detected : %@, Transaction: %{public}@", &v27, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL __66__HMDCoreDataCloudTransform_transactionIsCloudStoreReset_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 changedObjectID];
  v4 = [v3 entity];
  v5 = +[MKFCKHome entity];
  if ([v4 isKindOfEntity:v5])
  {
    v6 = [v2 changeType] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)detectExcessiveHistoryPruningInContext:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDCoreDataCloudTransform_detectExcessiveHistoryPruningInContext___block_invoke;
  v7[3] = &unk_2786852B8;
  v5 = v4;
  v9 = &v11;
  v10 = a1;
  v8 = v5;
  [v5 performBlockAndWait:v7];
  LOBYTE(a1) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return a1;
}

void __68__HMDCoreDataCloudTransform_detectExcessiveHistoryPruningInContext___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = +[MKFCloudSyncMetadata fetchRequest];
  v3 = *(a1 + 32);
  v36 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v36];
  v5 = v36;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      objc_autoreleasePoolPop(v6);
      goto LABEL_17;
    }

    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v9;
    v39 = 2112;
    v40 = v5;
    v10 = "%{public}@Excessive history pruning: failed to fetch cloud sync metadata: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
LABEL_4:
    _os_log_impl(&dword_229538000, v11, v12, v10, buf, v13);

    goto LABEL_5;
  }

  if (![v4 count])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v9;
    v10 = "%{public}@Excessive history pruning: No cloud sync metadata found, skipping history pruning check";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
    goto LABEL_4;
  }

  v14 = [v4 firstObject];
  v15 = [*(a1 + 32) hmd_coreData];
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [v14 historyTokenForCloudStore];
  if (v17)
  {
    v18 = v17;
    v19 = [v15 cloudPrivateStore];

    if (v19)
    {
      v20 = [v15 cloudPrivateStore];
      v21 = [v14 historyTokenForCloudStore];
      [v16 setObject:v20 forKeyedSubscript:v21];
    }
  }

  v22 = [v14 historyTokenForCloudSharedStore];
  if (v22)
  {
    v23 = v22;
    v24 = [v15 cloudSharedStore];

    if (v24)
    {
      v25 = [v15 cloudSharedStore];
      v26 = [v14 historyTokenForCloudSharedStore];
      [v16 setObject:v25 forKeyedSubscript:v26];
    }
  }

  v27 = [v14 historyTokenForWorkingStore];
  if (v27)
  {
    v28 = v27;
    v29 = [v15 workingStore];

    if (v29)
    {
      v30 = [v15 workingStore];
      v31 = [v14 historyTokenForWorkingStore];
      [v16 setObject:v30 forKeyedSubscript:v31];
    }
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __68__HMDCoreDataCloudTransform_detectExcessiveHistoryPruningInContext___block_invoke_188;
  v33[3] = &unk_278678FB0;
  v34 = *(a1 + 32);
  v35 = *(a1 + 40);
  [v16 enumerateKeysAndObjectsUsingBlock:v33];

LABEL_17:
  v32 = *MEMORY[0x277D85DE8];
}

void __68__HMDCoreDataCloudTransform_detectExcessiveHistoryPruningInContext___block_invoke_188(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v7];
  v37[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  [v9 setAffectedStores:v10];

  [v9 setFetchBatchSize:1];
  v11 = *(a1 + 32);
  v28 = 0;
  v12 = [v11 executeRequest:v9 error:&v28];
  v13 = v28;
  v14 = [v13 domain];
  if ([v14 isEqual:*MEMORY[0x277CCA050]])
  {
    v15 = [v13 code];

    if (v15 == 134301)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 48);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        [v8 identifier];
        v20 = v27 = v16;
        *buf = 138544130;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v7;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Expired token for store %@ with token %@: %@", buf, 0x2Au);

        v16 = v27;
      }

      objc_autoreleasePoolPop(v16);
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (v13)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 48);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v8 identifier];
      *buf = 138544130;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_FAULT, "%{public}@Fetching history for store %@ with token %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
  }

LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)wipeCoreDataStorageDueToPCSIdentityLossAndRelaunchHomeKitDaemon
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [v3 aa_primaryAppleAccount];

  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@PCS identities lost: Will be removing working, cloud, shared cloud, and client stores", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [HMDResetConfigPostCleanup writePostCleanupRecordWithReason:5 steps:278];
    v10 = +[HMDMainDriver driver];
    [v10 relaunch];
  }

  else
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@PCS identities lost: Not going to remove the CD stores as user is in the process of signing out.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [HMDResetConfigPostCleanup writePostCleanupRecordWithReason:2 steps:-1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_121807 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_121807, &__block_literal_global_117);
  }

  v3 = logCategory__hmf_once_v16_121808;

  return v3;
}

void __40__HMDCoreDataCloudTransform_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16_121808;
  logCategory__hmf_once_v16_121808 = v1;
}

+ (id)localTransformableEntityFromEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 managedObjectModel];
  if (localTransformableEntityFromEntity___hmf_once_t4 != -1)
  {
    dispatch_once(&localTransformableEntityFromEntity___hmf_once_t4, &__block_literal_global_91_121812);
  }

  v6 = localTransformableEntityFromEntity___hmf_once_v5;
  v7 = [v4 name];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = *MEMORY[0x277CBEEE8];
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__121531;
    v28 = __Block_byref_object_dispose__121532;
    v29 = 0;
    v10 = [v5 entities];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__HMDCoreDataCloudTransform_localTransformableEntityFromEntity___block_invoke_93;
    v20[3] = &unk_278678DF8;
    v23 = a1;
    v11 = v4;
    v21 = v11;
    v22 = &v24;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

    v12 = v25[5];
    v9 = *MEMORY[0x277CBEEE8];
    if (!v12)
    {
      v12 = *MEMORY[0x277CBEEE8];
    }

    v8 = v12;
    v13 = [v11 name];
    [v6 setObject:v8 forKey:v13];

    _Block_object_dispose(&v24, 8);
  }

  if (v9 == v8)
  {
    v18 = 0;
  }

  else
  {
    v14 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v5 entitiesByName];
    v18 = [v17 objectForKeyedSubscript:v16];
  }

  return v18;
}

uint64_t __64__HMDCoreDataCloudTransform_localTransformableEntityFromEntity___block_invoke_93(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 managedObjectClassName];
  v7 = NSClassFromString(v6);
  LODWORD(v7) = [(objc_class *)v7 isSubclassOfClass:objc_opt_class()];

  if (v7)
  {
    v8 = [*(a1 + 48) exportTransformableEntityFromEntity:v16];
    v9 = [v8 name];
    v10 = [*(a1 + 32) name];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [v16 name];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      *a4 = 1;
    }
  }

  return MEMORY[0x2821F9730]();
}

void __64__HMDCoreDataCloudTransform_localTransformableEntityFromEntity___block_invoke()
{
  v0 = objc_opt_new();
  v1 = localTransformableEntityFromEntity___hmf_once_v5;
  localTransformableEntityFromEntity___hmf_once_v5 = v0;
}

+ (Class)exportTransformableClassFromEntity:(id)a3
{
  v4 = a3;
  v5 = [a1 exportTransformableEntityFromEntity:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 managedObjectClassName];
LABEL_4:
    v9 = NSClassFromString(v7);

    goto LABEL_5;
  }

  v8 = [v4 userInfo];
  v7 = [v8 objectForKeyedSubscript:@"cloudSyncClass"];

  if (v7)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

+ (id)exportTransformableEntityFromEntity:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"cloudSyncEntity"];
  if (v5)
  {
    v6 = [v3 managedObjectModel];
    v7 = [v6 entitiesByName];
    v8 = [v7 objectForKeyedSubscript:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (Class)importTransformableClassFromEntity:(id)a3
{
  v3 = [a3 managedObjectClassName];
  v4 = NSClassFromString(v3);
  if (importTransformableClassFromEntity___hmf_once_t2 != -1)
  {
    dispatch_once(&importTransformableClassFromEntity___hmf_once_t2, &__block_literal_global_121816);
  }

  if (![importTransformableClassFromEntity___hmf_once_v3 classConforms:v4])
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __64__HMDCoreDataCloudTransform_importTransformableClassFromEntity___block_invoke()
{
  v0 = [[HMCConformanceCache alloc] initWithProtocol:&unk_283EB9AD0];
  v1 = importTransformableClassFromEntity___hmf_once_v3;
  importTransformableClassFromEntity___hmf_once_v3 = v0;
}

+ (HMDCoreDataCloudTransform)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDCoreDataCloudTransform_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__hmf_once_t0_121819 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0_121819, block);
  }

  v2 = sharedInstance__hmf_once_v1_121820;

  return v2;
}

void __43__HMDCoreDataCloudTransform_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v5 = +[HMDCoreData sharedInstance];
  v2 = +[HMDMetricsManager sharedLogEventSubmitter];
  v3 = [v1 initWithCoreData:v5 logEventSubmitter:v2];
  v4 = sharedInstance__hmf_once_v1_121820;
  sharedInstance__hmf_once_v1_121820 = v3;
}

+ (HMDCoreDataCloudTransform)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end