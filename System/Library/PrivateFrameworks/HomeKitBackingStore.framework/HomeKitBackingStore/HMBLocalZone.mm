@interface HMBLocalZone
+ (BOOL)shouldMirrorInputExternalData:(id)a3 overwriteExistingExternalData:(id)a4;
+ (id)logCategory;
+ (id)outputBlockRowForTuple:(id)a3 activity:(id)a4;
+ (id)outputModelFromUpdateModel:(id)a3 mergedModel:(id)a4;
- (BOOL)_insertDeletionItemsForModelsAndDescendantModelsWithBlockRow:(unint64_t)a3 context:(id)a4 type:(unint64_t)a5 modelIDs:(id)a6 currentDepth:(unint64_t)a7 maximumDepth:(unint64_t)a8 options:(id)a9 error:(id *)a10;
- (BOOL)destroyWithError:(id *)a3;
- (BOOL)removeAllRecordsWithError:(id *)a3;
- (BOOL)removeBlockWithRow:(unint64_t)a3 error:(id *)a4;
- (BOOL)removeOutputBlockWithRow:(unint64_t)a3 error:(id *)a4;
- (HMBLocalDatabase)localDatabase;
- (HMBLocalZone)initWithLocalDatabase:(id)a3 zoneID:(id)a4 zoneRow:(unint64_t)a5 configuration:(id)a6 mirror:(id)a7;
- (HMBLocalZoneDelegate)delegate;
- (id)_processItemsForBlockRow:(unint64_t)a3 error:(id *)a4;
- (id)addModels:(id)a3 andRemoveModelIDs:(id)a4 options:(id)a5;
- (id)addModels:(id)a3 options:(id)a4;
- (id)allMirrorOutputObservers;
- (id)attributeDescriptions;
- (id)createInputBlockWithType:(unint64_t)a3 error:(id *)a4;
- (id)createLocalInputWithError:(id *)a3;
- (id)createMirrorInputWithError:(id *)a3;
- (id)createModels:(id)a3 options:(id)a4;
- (id)createOutputBlockWithError:(id *)a3;
- (id)externalDataForExternalID:(id)a3 error:(id *)a4;
- (id)externalDataForModelID:(id)a3 error:(id *)a4;
- (id)externalIDForModelID:(id)a3 error:(id *)a4;
- (id)fetchAllModelsWithError:(id *)a3;
- (id)fetchExternalIDsForModelIDs:(id)a3 error:(id *)a4;
- (id)fetchItemsInBlock:(id)a3 error:(id *)a4;
- (id)fetchModelWithModelID:(id)a3 ofType:(Class)a4 error:(id *)a5;
- (id)fetchModelWithModelID:(id)a3 recordRow:(unint64_t *)a4 error:(id *)a5;
- (id)fetchModelWithRecordRow:(unint64_t)a3 error:(id *)a4;
- (id)fetchModels;
- (id)fetchModelsOfType:(Class)a3 error:(id *)a4;
- (id)fetchModelsWithParentModelID:(id)a3 error:(id *)a4;
- (id)fetchModelsWithParentModelID:(id)a3 ofType:(Class)a4 error:(id *)a5;
- (id)fetchOptionsForOutputBlock:(unint64_t)a3 error:(id *)a4;
- (id)fetchReadyBlocksWithType:(unint64_t)a3 error:(id *)a4;
- (id)fetchRecordRowWithExternalID:(id)a3 returning:(unint64_t)a4 error:(id *)a5;
- (id)fetchRecordRowWithModelID:(id)a3 returning:(unint64_t)a4 error:(id *)a5;
- (id)fetchRecordsForOutputBlock:(unint64_t)a3 error:(id *)a4;
- (id)flush;
- (id)logIdentifier;
- (id)markGroupAsSentWithOutputBlock:(unint64_t)a3 tuples:(id)a4;
- (id)modelFromData:(id)a3 encoding:(unint64_t)a4 storageLocation:(unint64_t)a5 recordRowID:(unint64_t)a6 error:(id *)a7;
- (id)modelFromRecord:(id)a3 storageLocation:(unint64_t)a4 error:(id *)a5;
- (id)modelIDForExternalID:(id)a3 error:(id *)a4;
- (id)observersForModelWithID:(id)a3;
- (id)queryAllRowRecordsReturning:(unint64_t)a3;
- (id)queryModelsOfType:(Class)a3;
- (id)queryModelsOfType:(Class)a3 filter:(id)a4;
- (id)queryModelsOfType:(Class)a3 predicate:(id)a4;
- (id)queryModelsOfType:(Class)a3 properties:(id)a4 filter:(id)a5;
- (id)queryModelsRecursivelyStartingWithModelID:(id)a3;
- (id)queryModelsWithParentModelID:(id)a3;
- (id)queryModelsWithParentModelID:(id)a3 ofType:(Class)a4;
- (id)removeAllModelsOfTypes:(id)a3 options:(id)a4;
- (id)removeModelIDs:(id)a3 options:(id)a4;
- (id)removeModelsAndDescendantModelsWithIDs:(id)a3 depth:(unint64_t)a4 options:(id)a5;
- (id)removeModelsWithParentModelID:(id)a3 options:(id)a4;
- (id)setExternalData:(id)a3 forExternalID:(id)a4;
- (id)setExternalData:(id)a3 forModelID:(id)a4;
- (id)setExternalID:(id)a3 externalData:(id)a4 forRecordRow:(unint64_t)a5;
- (id)shutdown;
- (id)triggerProcessForBlockRow:(unint64_t)a3;
- (id)update:(id)a3 remove:(id)a4;
- (id)updateModels:(id)a3 andRemoveModelIDs:(id)a4 options:(id)a5;
- (id)updateModels:(id)a3 options:(id)a4;
- (unint64_t)insertBlockToRemoveAllModelsWithType:(unint64_t)a3 modelTypes:(id)a4 options:(id)a5 error:(id *)a6;
- (unint64_t)insertBlockToRemoveChildModelsWithType:(unint64_t)a3 parentModelID:(id)a4 options:(id)a5 error:(id *)a6;
- (unint64_t)insertBlockToRemoveModelsAndDescendantModelsWithType:(unint64_t)a3 modelIDs:(id)a4 depth:(unint64_t)a5 options:(id)a6 error:(id *)a7;
- (unint64_t)insertBlockWithType:(unint64_t)a3 options:(id)a4 items:(id)a5 error:(id *)a6;
- (unint64_t)zoneRow;
- (void)addMirrorOutputObserver:(id)a3;
- (void)addObserver:(id)a3 forModelWithID:(id)a4;
- (void)addObserverForAllModels:(id)a3;
- (void)dealloc;
- (void)migrateUnsupportedModels;
- (void)queueIncompleteProcesses;
- (void)rebuildIndexesIfNeeded;
- (void)removeMirrorOutputObserver:(id)a3;
- (void)removeObserver:(id)a3 forModelWithID:(id)a4;
- (void)removeObserverForAllModels:(id)a3;
- (void)setZoneRow:(unint64_t)a3;
- (void)startUp;
@end

@implementation HMBLocalZone

- (id)triggerProcessForBlockRow:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D2C918]);
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CCA8C8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __51__HMBLocalZone_Process__triggerProcessForBlockRow___block_invoke;
  v16 = &unk_2786E0488;
  objc_copyWeak(v18, &location);
  v7 = v5;
  v17 = v7;
  v18[1] = a3;
  v8 = [v6 blockOperationWithBlock:&v13];
  v9 = [(HMBLocalZone *)self localDatabase:v13];
  v10 = [v9 queue];
  [v10 addOperation:v8];

  v11 = [v7 future];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);

  return v11;
}

void __51__HMBLocalZone_Process__triggerProcessForBlockRow___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v13 = 0;
    v5 = [WeakRetained _processItemsForBlockRow:v4 error:&v13];
    v6 = v13;
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithResult:v5];
    }

    else
    {
      [v7 finishWithError:v6];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Reference to self became nil when processing block", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v11 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v11 finishWithError:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_processItemsForBlockRow:(unint64_t)a3 error:(id *)a4
{
  v609 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABD8] currentQueue];
  v6 = [(HMBLocalZone *)self localDatabase];
  v7 = [v6 queue];

  if (v5 != v7)
  {
    _HMFPreconditionFailure();
  }

  v456 = [(HMBLocalZone *)self localDatabase];
  v473 = [v456 local];
  v469 = [(HMBLocalZone *)self zoneRow];
  v8 = objc_alloc(MEMORY[0x277D0F770]);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[HMBLocalZone(Process) _processItemsForBlockRow:error:]"];
  v492 = [v8 initWithName:v9 options:1];

  v10 = objc_autoreleasePoolPush();
  v463 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v492 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2048;
    v604 = a3;
    _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Beginning processing of block %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v585 = 0;
  v586 = &v585;
  v587 = 0x3032000000;
  v588 = __Block_byref_object_copy__688;
  v589 = __Block_byref_object_dispose__689;
  v590 = 0;
  v584 = 0;
  v583[0] = MEMORY[0x277D85DD0];
  v583[1] = 3221225472;
  v583[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke;
  v583[3] = &unk_2786E23A0;
  v583[4] = &v585;
  v583[5] = a3;
  v15 = [v473 sqlBlockWithActivity:v492 error:&v584 block:v583];
  v455 = v584;
  if ((v15 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v463;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v492 identifier];
      v29 = [v28 shortDescription];
      *buf = 138544386;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      *&buf[22] = 2048;
      v604 = a3;
      *v605 = 2112;
      *&v605[2] = v25;
      *&v605[10] = 2112;
      *&v605[12] = v455;
      _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch block row %lu from %@: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v24);
    if (a4)
    {
      v30 = v455;
      v31 = 0;
      *a4 = v455;
      goto LABEL_273;
    }

    goto LABEL_26;
  }

  v16 = v586[5];
  if (!v16)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v463;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v492 identifier];
      v37 = [v36 shortDescription];
      *buf = 138543874;
      *&buf[4] = v35;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      *&buf[22] = 2048;
      v604 = a3;
      _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find block with row %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    if (a4)
    {
      v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
LABEL_25:
      v31 = 0;
      *a4 = v38;
      goto LABEL_273;
    }

LABEL_26:
    v31 = 0;
    goto LABEL_273;
  }

  v17 = [v16 optionsData];
  v18 = v17 == 0;

  if (v18)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v463;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      v43 = [v492 identifier];
      v44 = [v43 shortDescription];
      *buf = 138543874;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      *&buf[22] = 2048;
      v604 = a3;
      _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Block %lu has not been committed. Ignoring process request.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
    if (a4)
    {
      v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v19 = MEMORY[0x277CCAAC8];
  v20 = objc_opt_class();
  v21 = [v586[5] optionsData];
  v582 = 0;
  v466 = [v19 unarchivedObjectOfClass:v20 fromData:v21 error:&v582];
  v453 = v582;

  if (!v466)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = v463;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      v49 = [v492 identifier];
      v50 = [v49 shortDescription];
      *buf = 138543874;
      *&buf[4] = v48;
      *&buf[12] = 2114;
      *&buf[14] = v50;
      *&buf[22] = 2112;
      v604 = v453;
      _os_log_impl(&dword_22AD27000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to unarchive processing options from options data: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v45);
    v581 = 0;
    v51 = [(HMBLocalZone *)v46 removeBlockWithRow:a3 error:&v581];
    v52 = v581;
    if (!v51)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = v46;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        v57 = [v492 identifier];
        v58 = [v57 shortDescription];
        *buf = 138543874;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = v58;
        *&buf[22] = 2112;
        v604 = v52;
        _os_log_impl(&dword_22AD27000, v55, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to cleanup corrupt block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v53);
    }

    if (a4)
    {
      v59 = v453;
      *a4 = v453;
    }

    v31 = 0;
    goto LABEL_272;
  }

  v575 = 0;
  v576 = &v575;
  v577 = 0x3032000000;
  v578 = __Block_byref_object_copy__688;
  v579 = __Block_byref_object_dispose__689;
  v580 = 0;
  if ([v466 shouldEnqueueMirrorOutput])
  {
    v574 = 0;
    v573[0] = MEMORY[0x277D85DD0];
    v573[1] = 3221225472;
    v573[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_101;
    v573[3] = &unk_2786E23A0;
    v573[5] = v469;
    v573[4] = &v575;
    v22 = [v473 sqlBlockWithActivity:v492 error:&v574 block:v573];
    v23 = v574;
    if ((v22 & 1) == 0)
    {
      v465 = v23;
      v385 = objc_autoreleasePoolPush();
      v386 = v463;
      v387 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
      {
        v388 = HMFGetLogIdentifier();
        v389 = [v492 identifier];
        v390 = [v389 shortDescription];
        *buf = 138544130;
        *&buf[4] = v388;
        *&buf[12] = 2114;
        *&buf[14] = v390;
        *&buf[22] = 2048;
        v604 = v469;
        *v605 = 2112;
        *&v605[2] = v465;
        _os_log_impl(&dword_22AD27000, v387, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to insert output block for zone row %lu: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v385);
      v572 = 0;
      v391 = [(HMBLocalZone *)v386 removeBlockWithRow:a3 error:&v572];
      v462 = v572;
      if (!v391)
      {
        v392 = objc_autoreleasePoolPush();
        v393 = v386;
        v394 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v394, OS_LOG_TYPE_ERROR))
        {
          v395 = HMFGetLogIdentifier();
          v396 = [v492 identifier];
          v397 = [v396 shortDescription];
          *buf = 138543874;
          *&buf[4] = v395;
          *&buf[12] = 2114;
          *&buf[14] = v397;
          *&buf[22] = 2112;
          v604 = v462;
          _os_log_impl(&dword_22AD27000, v394, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to clean up corrupt block: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v392);
      }

      if (a4)
      {
        v398 = v462;
        v31 = 0;
        *a4 = v462;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_271;
    }
  }

  if ([v466 shouldRollBackIfMirrorOutputFails])
  {
    v465 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v465 = 0;
  }

  if (v576[5])
  {
    v462 = objc_alloc_init(MEMORY[0x277D2C900]);
  }

  else
  {
    v462 = 0;
  }

  v470 = 0;
  v460 = [v586[5] type];
  v461 = 0;
  v566 = 0;
  v567 = &v566;
  v568 = 0x3032000000;
  v569 = __Block_byref_object_copy__688;
  v570 = __Block_byref_object_dispose__689;
  v571 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v60 = objc_autoreleasePoolPush();
    v458 = v463;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v62 = HMFGetLogIdentifier();
      v63 = [v492 identifier];
      v64 = [v63 shortDescription];
      *buf = 138544386;
      *&buf[4] = v62;
      *&buf[12] = 2114;
      *&buf[14] = v64;
      *&buf[22] = 2048;
      v604 = a3;
      *v605 = 2112;
      *&v605[2] = v466;
      *&v605[10] = 2048;
      *&v605[12] = v470;
      _os_log_impl(&dword_22AD27000, v61, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Fetching objects for blockRow: %lu options: %@ lastItemRowID: %lu", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v60);
    v65 = [v466 transactionItemsBatchLimit];
    v565[0] = MEMORY[0x277D85DD0];
    v565[1] = 3221225472;
    v66 = 100;
    if (v65)
    {
      v66 = v65;
    }

    v565[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_105;
    v565[3] = &unk_2786E0410;
    v565[4] = &v566;
    v565[5] = a3;
    v565[6] = v470;
    v565[7] = v66;
    v501 = [v473 sqlBlockWithActivity:v492 block:v565];
    if (!v501)
    {
      v82 = [v567[5] count] == 0;
      v83 = objc_autoreleasePoolPush();
      v499 = v458;
      if (v82)
      {
        v265 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v265, OS_LOG_TYPE_DEBUG))
        {
          v266 = HMFGetLogIdentifier();
          v267 = [v492 identifier];
          v268 = [v267 shortDescription];
          *buf = 138543618;
          *&buf[4] = v266;
          *&buf[12] = 2114;
          *&buf[14] = v268;
          _os_log_impl(&dword_22AD27000, v265, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] No more rows to process", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v83);
        v81 = 31;
        goto LABEL_226;
      }

      v84 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = HMFGetLogIdentifier();
        v86 = [v492 identifier];
        v87 = [v86 shortDescription];
        v88 = [v567[5] count];
        *buf = 138544386;
        *&buf[4] = v85;
        *&buf[12] = 2114;
        *&buf[14] = v87;
        *&buf[22] = 2048;
        v604 = v88;
        *v605 = 2048;
        *&v605[2] = a3;
        *&v605[10] = 2112;
        *&v605[12] = v466;
        _os_log_impl(&dword_22AD27000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Fetched %lu object(s) to process for blockRow: %lu options: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v83);
      v471 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v567[5], "count")}];
      v563 = 0u;
      v562 = 0u;
      v561 = 0u;
      v560 = 0u;
      obj = v567[5];
      v89 = [obj countByEnumeratingWithState:&v560 objects:v608 count:16];
      if (!v89)
      {
        v501 = 0;
        goto LABEL_152;
      }

      v501 = 0;
      v476 = *v561;
      while (1)
      {
        v489 = 0;
        v478 = v89;
        v461 += v89;
        do
        {
          if (*v561 != v476)
          {
            objc_enumerationMutation(obj);
          }

          v90 = *(*(&v560 + 1) + 8 * v489);
          v470 = [v90 itemRow];
          v592 = 0;
          v593 = &v592;
          v594 = 0x3032000000;
          v595 = __Block_byref_object_copy__688;
          v596 = __Block_byref_object_dispose__689;
          v597 = 0;
          v91 = [v90 modelEncoding];
          if (v91)
          {
            v92 = [v90 modelData];
            v93 = [v90 modelEncoding];
            v557 = v501;
            v493 = [(HMBLocalZone *)v499 modelFromData:v92 encoding:v93 storageLocation:2 recordRowID:0 error:&v557];
            v94 = v557;

            if (v493)
            {
              v95 = [v473 queryContextsByClass];
              v480 = [v95 objectForKey:objc_opt_class()];

              v96 = [v493 hmbModelID];
              v97 = *(v593 + 40);
              *(v593 + 40) = v96;

              v501 = v94;
              goto LABEL_68;
            }

            v145 = objc_autoreleasePoolPush();
            v146 = v499;
            v147 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
            {
              v148 = HMFGetLogIdentifier();
              v149 = [v492 identifier];
              v150 = [v149 shortDescription];
              v151 = [v90 itemRow];
              *buf = 138544386;
              *&buf[4] = v148;
              *&buf[12] = 2114;
              *&buf[14] = v150;
              *&buf[22] = 2048;
              v604 = v151;
              *v605 = 2112;
              *&v605[2] = v463;
              *&v605[10] = 2112;
              *&v605[12] = v94;
              _os_log_impl(&dword_22AD27000, v147, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to unarchive object for %lu / %@: %@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v145);
            v556[0] = MEMORY[0x277D85DD0];
            v556[1] = 3221225472;
            v556[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_109;
            v556[3] = &unk_2786E24B0;
            v556[4] = v90;
            v501 = [v473 sqlBlockWithActivity:v492 block:v556];

            if (v501)
            {
              v152 = objc_autoreleasePoolPush();
              v153 = v146;
              v154 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
              {
                v155 = HMFGetLogIdentifier();
                v156 = [v492 identifier];
                v157 = [v156 shortDescription];
                v158 = [v90 itemRow];
                *buf = 138544386;
                *&buf[4] = v155;
                *&buf[12] = 2114;
                *&buf[14] = v157;
                *&buf[22] = 2048;
                v604 = v158;
                *v605 = 2112;
                *&v605[2] = v463;
                *&v605[10] = 2112;
                *&v605[12] = v501;
                _os_log_impl(&dword_22AD27000, v154, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to flush bogus row for %lu / %@: %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v152);
            }
          }

          else
          {
            v98 = [v90 modelData];
            v99 = v98 == 0;

            if (!v99)
            {
              v100 = objc_alloc(MEMORY[0x277CCAD78]);
              v101 = [v90 modelData];
              v102 = v101;
              v103 = [v100 initWithUUIDBytes:{objc_msgSend(v101, "bytes")}];
              v104 = *(v593 + 40);
              *(v593 + 40) = v103;

              v493 = 0;
              v480 = 0;
              goto LABEL_68;
            }

            v559[0] = MEMORY[0x277D85DD0];
            v559[1] = 3221225472;
            v559[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_107;
            v559[3] = &unk_2786E2140;
            v559[6] = v469;
            v559[5] = &v592;
            v559[4] = v90;
            v159 = [v473 sqlBlockWithActivity:v492 block:v559];

            if (v159)
            {
              v160 = objc_autoreleasePoolPush();
              v161 = v499;
              v162 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
              {
                v163 = HMFGetLogIdentifier();
                v164 = [v492 identifier];
                v165 = [v164 shortDescription];
                v166 = [v90 externalID];
                *buf = 138544386;
                *&buf[4] = v163;
                *&buf[12] = 2114;
                *&buf[14] = v165;
                *&buf[22] = 2048;
                v604 = v469;
                *v605 = 2112;
                *&v605[2] = v166;
                *&v605[10] = 2112;
                *&v605[12] = v159;
                _os_log_impl(&dword_22AD27000, v162, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to determine modelID for %lu / %@: %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v160);
            }

            else if (*(v593 + 40))
            {
              v493 = 0;
              v480 = 0;
              v501 = 0;
LABEL_68:
              v105 = objc_autoreleasePoolPush();
              v106 = v499;
              v107 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
              {
                v108 = HMFGetLogIdentifier();
                v109 = [v492 identifier];
                v110 = [v109 shortDescription];
                v111 = v110;
                v112 = *(v593 + 40);
                v113 = @"update/insert";
                if (!v91)
                {
                  v113 = @"delete";
                }

                *buf = 138544386;
                *&buf[4] = v108;
                *&buf[12] = 2114;
                *&buf[14] = v110;
                *&buf[22] = 2112;
                v604 = v112;
                *v605 = 2112;
                *&v605[2] = v113;
                *&v605[10] = 2112;
                *&v605[12] = v90;
                _os_log_impl(&dword_22AD27000, v107, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Found modelID %@ to %@ for row: %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v105);
              v114 = *(v593 + 40);
              v555 = 0;
              v496 = [(HMBLocalZone *)v106 fetchRecordRowWithModelID:v114 returning:-1 error:&v555];
              v115 = v555;
              v484 = v115;
              if (v496)
              {
                v116 = objc_autoreleasePoolPush();
                v117 = v106;
                v118 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
                {
                  v119 = HMFGetLogIdentifier();
                  v120 = [v492 identifier];
                  v121 = [v120 shortDescription];
                  v122 = *(v593 + 40);
                  *buf = 138544130;
                  *&buf[4] = v119;
                  *&buf[12] = 2114;
                  *&buf[14] = v121;
                  *&buf[22] = 2112;
                  v604 = v122;
                  *v605 = 2112;
                  *&v605[2] = v496;
                  _os_log_impl(&dword_22AD27000, v118, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Found existing record for modelID %@: %@", buf, 0x2Au);
                }

                goto LABEL_75;
              }

              v133 = v115 == 0;
              v116 = objc_autoreleasePoolPush();
              v134 = v106;
              if (!v133)
              {
                v135 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  v136 = HMFGetLogIdentifier();
                  v137 = [v492 identifier];
                  v138 = [v137 shortDescription];
                  v139 = *(v593 + 40);
                  v140 = [v90 externalID];
                  *buf = 138544642;
                  *&buf[4] = v136;
                  *&buf[12] = 2114;
                  *&buf[14] = v138;
                  *&buf[22] = 2112;
                  v604 = v139;
                  *v605 = 2048;
                  *&v605[2] = v469;
                  *&v605[10] = 2112;
                  *&v605[12] = v140;
                  v606 = 2112;
                  v607 = v484;
                  _os_log_impl(&dword_22AD27000, v135, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to find existing model with modelID %@ for %lu / %@: %@", buf, 0x3Eu);
                }

                objc_autoreleasePoolPop(v116);
                v141 = [HMBLocalSQLContextRowItem alloc];
                v482 = [MEMORY[0x277CCAD78] UUID];
                v142 = [v482 data];
                v143 = [*(v593 + 40) data];
                v144 = [(HMBLocalSQLContextRowItem *)v141 initWithItemRow:0 externalID:v142 externalData:v143 modelEncoding:0 modelData:0];
                [v465 addObject:v144];
LABEL_138:

LABEL_139:
                v501 = v484;
LABEL_140:

                goto LABEL_141;
              }

              v118 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
              {
                v174 = HMFGetLogIdentifier();
                v175 = [v492 identifier];
                v176 = [v175 shortDescription];
                v177 = *(v593 + 40);
                *buf = 138543874;
                *&buf[4] = v174;
                *&buf[12] = 2114;
                *&buf[14] = v176;
                *&buf[22] = 2112;
                v604 = v177;
                _os_log_impl(&dword_22AD27000, v118, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Did not find existing record for modelID %@", buf, 0x20u);
              }

LABEL_75:

              objc_autoreleasePoolPop(v116);
              if ([v496 modelEncoding])
              {
                v123 = [v496 modelData];
                v124 = [v123 length] == 0;

                if (!v124)
                {
                  v554 = v484;
                  v482 = [(HMBLocalZone *)v106 modelFromRecord:v496 storageLocation:2 error:&v554];
                  v501 = v554;

                  if (v482)
                  {
                    if (v493)
                    {
                      v125 = [v466 requiresModelCreation];
                      v126 = objc_autoreleasePoolPush();
                      v127 = v106;
                      if (v125)
                      {
                        v128 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                        {
                          v129 = HMFGetLogIdentifier();
                          v130 = [v492 identifier];
                          v131 = [v130 shortDescription];
                          v132 = [v493 hmbDescription];
                          *buf = 138543874;
                          *&buf[4] = v129;
                          *&buf[12] = 2114;
                          *&buf[14] = v131;
                          *&buf[22] = 2112;
                          v604 = v132;
                          _os_log_impl(&dword_22AD27000, v128, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Not updating model because model creation is required: %@", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(v126);
                        goto LABEL_140;
                      }

                      v226 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v226, OS_LOG_TYPE_DEBUG))
                      {
                        v227 = HMFGetLogIdentifier();
                        v486 = [v492 identifier];
                        v228 = [v486 shortDescription];
                        v229 = [v496 recordRow];
                        v230 = [v493 hmbDescription];
                        v231 = [v90 externalID];
                        v232 = [v231 hmbDescription];
                        *buf = 138544386;
                        *&buf[4] = v227;
                        *&buf[12] = 2114;
                        *&buf[14] = v228;
                        *&buf[22] = 2048;
                        v604 = v229;
                        *v605 = 2112;
                        *&v605[2] = v230;
                        *&v605[10] = 2112;
                        *&v605[12] = v232;
                        _os_log_impl(&dword_22AD27000, v226, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Updating model %lu / %@ / %@", buf, 0x34u);
                      }

                      objc_autoreleasePoolPop(v126);
                      v550 = v501;
                      v233 = [v482 hmbModelByMergingFromModel:v493 isFromCloud:v460 == 1 error:&v550];
                      v484 = v550;

                      if (!v233)
                      {
                        v257 = objc_autoreleasePoolPush();
                        v258 = v127;
                        v259 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
                        {
                          v260 = HMFGetLogIdentifier();
                          v261 = [v492 identifier];
                          v262 = [v261 shortDescription];
                          v263 = [v482 hmbDescription];
                          v264 = [v493 hmbDescription];
                          *buf = 138544386;
                          *&buf[4] = v260;
                          *&buf[12] = 2114;
                          *&buf[14] = v262;
                          *&buf[22] = 2112;
                          v604 = v263;
                          *v605 = 2112;
                          *&v605[2] = v264;
                          *&v605[10] = 2112;
                          *&v605[12] = v484;
                          _os_log_impl(&dword_22AD27000, v259, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to merge old record with new values %@ / %@: %@", buf, 0x34u);
                        }

                        objc_autoreleasePoolPop(v257);
                        v501 = v484;
                        goto LABEL_140;
                      }

                      v234 = [HMBLocalZoneProcessModelContext alloc];
                      v235 = v576[5];
                      v236 = [v90 externalData];
                      v143 = [(HMBLocalZoneProcessModelContext *)v234 initWithModel:v233 outputBlockRow:v235 externalData:v236];

                      v237 = [HMBLocalZoneProcessModelContext alloc];
                      v238 = [v496 pushBlockRow];
                      v239 = [v496 externalData];
                      v142 = [(HMBLocalZoneProcessModelContext *)v237 initWithModel:v482 outputBlockRow:v238 externalData:v239];

                      v144 = [objc_opt_class() outputModelFromUpdateModel:v493 mergedModel:v233];
                    }

                    else
                    {
                      v214 = objc_autoreleasePoolPush();
                      v215 = v106;
                      v216 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
                      {
                        v217 = HMFGetLogIdentifier();
                        v485 = [v492 identifier];
                        v218 = [v485 shortDescription];
                        v219 = [v496 recordRow];
                        v220 = [v482 hmbDescription];
                        v221 = [v90 externalID];
                        v222 = [v221 hmbDescription];
                        *buf = 138544386;
                        *&buf[4] = v217;
                        *&buf[12] = 2114;
                        *&buf[14] = v218;
                        *&buf[22] = 2048;
                        v604 = v219;
                        *v605 = 2112;
                        *&v605[2] = v220;
                        *&v605[10] = 2112;
                        *&v605[12] = v222;
                        _os_log_impl(&dword_22AD27000, v216, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Deleting model %lu / %@ / %@", buf, 0x34u);
                      }

                      objc_autoreleasePoolPop(v214);
                      v223 = [HMBLocalZoneProcessModelContext alloc];
                      v224 = [v496 pushBlockRow];
                      v225 = [v496 externalData];
                      v142 = [(HMBLocalZoneProcessModelContext *)v223 initWithModel:v482 outputBlockRow:v224 externalData:v225];

                      v144 = 0;
                      v143 = 0;
                      v484 = v501;
                    }

LABEL_129:
                    if (v465)
                    {
                      if ([v496 modelEncoding])
                      {
                        v240 = [HMBLocalSQLContextRowItem alloc];
                        v241 = [MEMORY[0x277CCAD78] UUID];
                        v242 = [v241 data];
                        v243 = [*(v593 + 40) data];
                        v244 = [v496 modelEncoding];
                        v245 = [v496 modelData];
                        v246 = [(HMBLocalSQLContextRowItem *)v240 initWithItemRow:0 externalID:v242 externalData:v243 modelEncoding:v244 modelData:v245];
                        [v465 addObject:v246];
                      }

                      else
                      {
                        v247 = [HMBLocalSQLContextRowItem alloc];
                        v241 = [MEMORY[0x277CCAD78] UUID];
                        v242 = [v241 data];
                        v243 = [*(v593 + 40) data];
                        v245 = [(HMBLocalSQLContextRowItem *)v247 initWithItemRow:0 externalID:v242 externalData:v243 modelEncoding:0 modelData:0];
                        [v465 addObject:v245];
                      }
                    }

                    v248 = [v90 externalData];
                    if (v248)
                    {
                      v249 = [v90 externalID];
                    }

                    else
                    {
                      v249 = 0;
                    }

                    v250 = [HMBLocalZoneProcessTuple alloc];
                    v251 = v576[5];
                    v252 = [v496 recordRow];
                    v253 = [v90 itemRow];
                    v254 = [v496 modelSchema];
                    v255 = [v496 modelType];
                    v256 = [(HMBLocalZoneProcessTuple *)v250 initWithPreviousContext:v142 mergedContext:v143 updateModel:v493 outputModel:v144 outputBlockRow:v251 recordRow:v252 itemRow:v253 modelSchema:v254 modelType:v255 externalID:v249 queryTable:v480];
                    [v471 addObject:v256];

                    goto LABEL_138;
                  }

                  v178 = objc_autoreleasePoolPush();
                  v179 = v106;
                  v180 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                  {
                    v181 = HMFGetLogIdentifier();
                    v182 = [v492 identifier];
                    v183 = [v182 shortDescription];
                    v184 = [v496 recordRow];
                    *buf = 138544130;
                    *&buf[4] = v181;
                    *&buf[12] = 2114;
                    *&buf[14] = v183;
                    *&buf[22] = 2048;
                    v604 = v184;
                    *v605 = 2112;
                    *&v605[2] = v501;
                    _os_log_impl(&dword_22AD27000, v180, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to unarchive record row %lu: %@", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v178);
                  v551[0] = MEMORY[0x277D85DD0];
                  v551[1] = 3221225472;
                  v551[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_117;
                  v551[3] = &unk_2786E1B00;
                  v185 = v496;
                  v552 = v185;
                  v553 = v480;
                  v484 = [v473 sqlBlockWithActivity:v492 block:v551];

                  if (v484)
                  {
                    v186 = objc_autoreleasePoolPush();
                    v187 = v179;
                    v188 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
                    {
                      v189 = HMFGetLogIdentifier();
                      v190 = [v492 identifier];
                      v191 = [v190 shortDescription];
                      v192 = [v185 recordRow];
                      *buf = 138544130;
                      *&buf[4] = v189;
                      *&buf[12] = 2114;
                      *&buf[14] = v191;
                      *&buf[22] = 2048;
                      v604 = v192;
                      *v605 = 2112;
                      *&v605[2] = v484;
                      _os_log_impl(&dword_22AD27000, v188, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to remove corrupt record row %lu: %@", buf, 0x2Au);
                    }

                    objc_autoreleasePoolPop(v186);
                  }
                }
              }

              if (v493)
              {
                v193 = [v466 disallowsModelCreation];
                v194 = objc_autoreleasePoolPush();
                v195 = v106;
                if (!v193)
                {
                  v206 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
                  {
                    v207 = HMFGetLogIdentifier();
                    v208 = [v492 identifier];
                    v209 = [v208 shortDescription];
                    v210 = [v493 hmbDescription];
                    *buf = 138543874;
                    *&buf[4] = v207;
                    *&buf[12] = 2114;
                    *&buf[14] = v209;
                    *&buf[22] = 2112;
                    v604 = v210;
                    _os_log_impl(&dword_22AD27000, v206, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Inserting model %@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v194);
                  v211 = [HMBLocalZoneProcessModelContext alloc];
                  v212 = v576[5];
                  v213 = [v90 externalData];
                  v143 = [(HMBLocalZoneProcessModelContext *)v211 initWithModel:v493 outputBlockRow:v212 externalData:v213];

                  v144 = v493;
                  v482 = 0;
                  v142 = 0;
                  goto LABEL_129;
                }

                v196 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
                {
                  v197 = HMFGetLogIdentifier();
                  v198 = [v492 identifier];
                  v199 = [v198 shortDescription];
                  v200 = [v493 hmbDescription];
                  *buf = 138543874;
                  *&buf[4] = v197;
                  *&buf[12] = 2114;
                  *&buf[14] = v199;
                  *&buf[22] = 2112;
                  v604 = v200;
                  _os_log_impl(&dword_22AD27000, v196, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Not creating model because model creation is disallowed: %@", buf, 0x20u);
                }
              }

              else
              {
                v194 = objc_autoreleasePoolPush();
                v201 = v106;
                v196 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
                {
                  v202 = HMFGetLogIdentifier();
                  v203 = [v492 identifier];
                  v204 = [v203 shortDescription];
                  v205 = *(v593 + 40);
                  *buf = 138543874;
                  *&buf[4] = v202;
                  *&buf[12] = 2114;
                  *&buf[14] = v204;
                  *&buf[22] = 2112;
                  v604 = v205;
                  _os_log_impl(&dword_22AD27000, v196, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] No previous or updated value found for model with ID %@", buf, 0x20u);
                }
              }

              objc_autoreleasePoolPop(v194);
              v482 = 0;
              goto LABEL_139;
            }

            v558[0] = MEMORY[0x277D85DD0];
            v558[1] = 3221225472;
            v558[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_108;
            v558[3] = &unk_2786E24B0;
            v558[4] = v90;
            v501 = [v473 sqlBlockWithActivity:v492 block:v558];

            if (v501)
            {
              v167 = objc_autoreleasePoolPush();
              v168 = v499;
              v169 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
              {
                v170 = HMFGetLogIdentifier();
                v171 = [v492 identifier];
                v172 = [v171 shortDescription];
                v173 = [v90 itemRow];
                *buf = 138544386;
                *&buf[4] = v170;
                *&buf[12] = 2114;
                *&buf[14] = v172;
                *&buf[22] = 2048;
                v604 = v173;
                *v605 = 2112;
                *&v605[2] = v463;
                *&v605[10] = 2112;
                *&v605[12] = v501;
                _os_log_impl(&dword_22AD27000, v169, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to flush bogus row for %lu / %@: %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v167);
            }
          }

LABEL_141:
          _Block_object_dispose(&v592, 8);

          v489 = v489 + 1;
        }

        while (v478 != v489);
        v89 = [obj countByEnumeratingWithState:&v560 objects:v608 count:16];
        if (!v89)
        {
LABEL_152:

          v548 = 0u;
          v549 = 0u;
          v546 = 0u;
          v547 = 0u;
          v464 = v471;
          v468 = [v464 countByEnumeratingWithState:&v546 objects:v602 count:16];
          if (!v468)
          {
            goto LABEL_224;
          }

          v467 = *v547;
          while (1)
          {
            for (i = 0; i != v468; ++i)
            {
              if (*v547 != v467)
              {
                objc_enumerationMutation(v464);
              }

              v269 = *(*(&v546 + 1) + 8 * i);
              v481 = [v269 previousContext];
              v497 = [v269 mergedContext];
              v477 = [v269 externalID];
              v490 = [v497 externalData];
              v270 = [objc_opt_class() outputBlockRowForTuple:v269 activity:v492];
              v494 = v270;
              if (v490)
              {
                v271 = 1;
              }

              else
              {
                v271 = v270 == 0;
              }

              if (v271)
              {
                v272 = 0;
                v487 = 0;
                goto LABEL_171;
              }

              v273 = [v269 outputModel];
              v274 = v273;
              if (!v273)
              {
                v284 = [v481 model];
                v285 = [v284 hmbModelID];
                v487 = [v285 data];

                v272 = 0;
                v277 = v501;
LABEL_169:

                goto LABEL_170;
              }

              v275 = [(HMBLocalZone *)v499 modelContainer];
              v272 = [v275 bestModelEncodingForStorageLocation:3];

              v276 = [(HMBLocalZone *)v499 modelContainer];
              v545 = v501;
              v487 = [v276 dataFromModel:v274 encoding:v272 storageLocation:3 updatedModelIDs:0 error:&v545];
              v277 = v545;

              if (!v487)
              {
                v278 = objc_autoreleasePoolPush();
                v279 = v499;
                v280 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
                {
                  v502 = HMFGetLogIdentifier();
                  v488 = [v492 identifier];
                  v281 = [v488 shortDescription];
                  v282 = [v497 model];
                  v283 = [v282 hmbDescription];
                  *buf = 138544130;
                  *&buf[4] = v502;
                  *&buf[12] = 2114;
                  *&buf[14] = v281;
                  *&buf[22] = 2112;
                  v604 = v283;
                  *v605 = 2112;
                  *&v605[2] = v277;
                  _os_log_impl(&dword_22AD27000, v280, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to encode object %@ (not attempting to push): %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v278);
                v487 = 0;
                v284 = v494;
                v494 = 0;
                goto LABEL_169;
              }

LABEL_170:

              v501 = v277;
LABEL_171:
              if (!v497)
              {
                v299 = [v269 modelSchema];
                v300 = v299 == 0;

                if (v300)
                {
                  v295 = 0;
                  v293 = 0;
                }

                else
                {
                  v293 = [v269 modelSchema];
                  v295 = 0;
                }

                v290 = 0;
                v287 = 0;
                goto LABEL_185;
              }

              v286 = [(HMBLocalZone *)v499 modelContainer];
              v287 = [v286 bestModelEncodingForStorageLocation:2];

              v288 = [(HMBLocalZone *)v499 modelContainer];
              v289 = [v497 model];
              v544 = 0;
              v290 = [v288 dataFromModel:v289 encoding:v287 storageLocation:2 updatedModelIDs:0 error:&v544];
              v479 = v544;

              if (v290)
              {
                v291 = [(HMBLocalZone *)v499 modelContainer];
                v292 = [v497 model];
                v293 = [v291 schemaHashForModel:v292];

                v294 = [v497 model];
                v295 = [v294 hmbType];

                v296 = [v269 modelSchema];
                if (![v293 isEqual:v296])
                {
                  goto LABEL_176;
                }

                v297 = [v269 modelType];
                v298 = [v295 isEqual:v297];

                if (v298)
                {

                  v293 = 0;
                  v296 = v295;
                  v295 = 0;
LABEL_176:
                }

LABEL_185:
                v528[0] = MEMORY[0x277D85DD0];
                v528[1] = 3221225472;
                v528[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_120;
                v528[3] = &unk_2786E0438;
                v528[4] = v269;
                v479 = v290;
                v529 = v479;
                v530 = v494;
                v531 = v499;
                v309 = v492;
                v532 = v309;
                v472 = v295;
                v533 = v472;
                v310 = v481;
                v534 = v310;
                v540 = v272;
                v535 = v487;
                v536 = v477;
                v537 = v490;
                v541 = v287;
                v311 = v293;
                v538 = v311;
                v543 = v460 == 1;
                v312 = v497;
                v539 = v312;
                v542 = v469;
                obja = [v473 sqlTransactionWithActivity:v309 block:v528];

                if (obja)
                {
                  v313 = objc_autoreleasePoolPush();
                  v314 = v499;
                  v315 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
                  {
                    v316 = v311;
                    v317 = HMFGetLogIdentifier();
                    v318 = [v309 identifier];
                    v319 = [v318 shortDescription];
                    v320 = [v269 itemRow];
                    v321 = [(HMBLocalZone *)v314 zoneID];
                    v322 = [v321 name];
                    *buf = 138544386;
                    *&buf[4] = v317;
                    *&buf[12] = 2114;
                    *&buf[14] = v319;
                    *&buf[22] = 2048;
                    v604 = v320;
                    *v605 = 2112;
                    *&v605[2] = v322;
                    *&v605[10] = 2112;
                    *&v605[12] = obja;
                    _os_log_impl(&dword_22AD27000, v315, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to update / insert row for %lu / %@: %@", buf, 0x34u);

                    v311 = v316;
                  }

                  objc_autoreleasePoolPop(v313);
                }

                else
                {
                  if (v497)
                  {
                    v323 = objc_autoreleasePoolPush();
                    v324 = v499;
                    if (v310)
                    {
                      v325 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v325, OS_LOG_TYPE_DEBUG))
                      {
                        v326 = HMFGetLogIdentifier();
                        v327 = [v309 identifier];
                        v328 = [v327 shortDescription];
                        v329 = [v312 model];
                        *buf = 138543874;
                        *&buf[4] = v326;
                        *&buf[12] = 2114;
                        *&buf[14] = v328;
                        *&buf[22] = 2112;
                        v604 = v329;
                        _os_log_impl(&dword_22AD27000, v325, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Sending update delegate callback for model: %@", buf, 0x20u);
                      }

                      objc_autoreleasePoolPop(v323);
                      v330 = [HMBProcessingModelUpdate alloc];
                      v331 = [v312 model];
                      v332 = [v310 model];
                      v333 = [(HMBProcessingModelUpdate *)v330 initWithModel:v331 previousModel:v332 options:v466 mirrorOutputFuture:v462];

                      v334 = [v312 model];
                      v335 = [v334 hmbModelID];
                      v336 = [(HMBLocalZone *)v324 observersForModelWithID:v335];

                      v518 = 0u;
                      v519 = 0u;
                      v516 = 0u;
                      v517 = 0u;
                      v337 = v336;
                      v338 = [v337 countByEnumeratingWithState:&v516 objects:v599 count:16];
                      if (v338)
                      {
                        v339 = *v517;
                        do
                        {
                          for (j = 0; j != v338; ++j)
                          {
                            if (*v517 != v339)
                            {
                              objc_enumerationMutation(v337);
                            }

                            [*(*(&v516 + 1) + 8 * j) localZone:v324 didProcessModelUpdate:v333];
                          }

                          v338 = [v337 countByEnumeratingWithState:&v516 objects:v599 count:16];
                        }

                        while (v338);
                      }
                    }

                    else
                    {
                      v356 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v356, OS_LOG_TYPE_DEBUG))
                      {
                        v357 = HMFGetLogIdentifier();
                        v358 = [v309 identifier];
                        v359 = [v358 shortDescription];
                        v360 = [v312 model];
                        *buf = 138543874;
                        *&buf[4] = v357;
                        *&buf[12] = 2114;
                        *&buf[14] = v359;
                        *&buf[22] = 2112;
                        v604 = v360;
                        _os_log_impl(&dword_22AD27000, v356, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Sending creation delegate callback for model: %@", buf, 0x20u);
                      }

                      objc_autoreleasePoolPop(v323);
                      v361 = [HMBProcessingModelCreation alloc];
                      v362 = [v312 model];
                      v333 = [(HMBProcessingModelResult *)v361 initWithModel:v362 options:v466 mirrorOutputFuture:v462];

                      v363 = [v312 model];
                      v364 = [v363 hmbModelID];
                      v365 = [(HMBLocalZone *)v324 observersForModelWithID:v364];

                      v522 = 0u;
                      v523 = 0u;
                      v520 = 0u;
                      v521 = 0u;
                      v337 = v365;
                      v366 = [v337 countByEnumeratingWithState:&v520 objects:v600 count:16];
                      if (v366)
                      {
                        v367 = *v521;
                        do
                        {
                          for (k = 0; k != v366; ++k)
                          {
                            if (*v521 != v367)
                            {
                              objc_enumerationMutation(v337);
                            }

                            [*(*(&v520 + 1) + 8 * k) localZone:v324 didProcessModelCreation:v333];
                          }

                          v366 = [v337 countByEnumeratingWithState:&v520 objects:v600 count:16];
                        }

                        while (v366);
                      }
                    }
                  }

                  else
                  {
                    v341 = objc_autoreleasePoolPush();
                    v342 = v499;
                    v343 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v343, OS_LOG_TYPE_DEBUG))
                    {
                      v344 = HMFGetLogIdentifier();
                      v345 = [v309 identifier];
                      v346 = [v345 shortDescription];
                      v347 = [v310 model];
                      *buf = 138543874;
                      *&buf[4] = v344;
                      *&buf[12] = 2114;
                      *&buf[14] = v346;
                      *&buf[22] = 2112;
                      v604 = v347;
                      _os_log_impl(&dword_22AD27000, v343, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Sending deletion delegate callback for model: %@", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v341);
                    v348 = [HMBProcessingModelDeletion alloc];
                    v349 = [v310 model];
                    v333 = [(HMBProcessingModelResult *)v348 initWithModel:v349 options:v466 mirrorOutputFuture:v462];

                    v350 = [v310 model];
                    v351 = [v350 hmbParentModelID];
                    v352 = [(HMBLocalZone *)v342 observersForModelWithID:v351];

                    v526 = 0u;
                    v527 = 0u;
                    v524 = 0u;
                    v525 = 0u;
                    v337 = v352;
                    v353 = [v337 countByEnumeratingWithState:&v524 objects:v601 count:16];
                    if (v353)
                    {
                      v354 = *v525;
                      do
                      {
                        for (m = 0; m != v353; ++m)
                        {
                          if (*v525 != v354)
                          {
                            objc_enumerationMutation(v337);
                          }

                          [*(*(&v524 + 1) + 8 * m) localZone:v342 didProcessModelDeletion:v333];
                        }

                        v353 = [v337 countByEnumeratingWithState:&v524 objects:v601 count:16];
                      }

                      while (v353);
                    }
                  }
                }

                v501 = obja;
                goto LABEL_222;
              }

              v301 = objc_autoreleasePoolPush();
              v302 = v499;
              v303 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
              {
                v304 = HMFGetLogIdentifier();
                v305 = [v492 identifier];
                v306 = [v305 shortDescription];
                v307 = [v497 model];
                v308 = [v307 hmbDescription];
                *buf = 138544130;
                *&buf[4] = v304;
                *&buf[12] = 2114;
                *&buf[14] = v306;
                *&buf[22] = 2112;
                v604 = v308;
                *v605 = 2112;
                *&v605[2] = v479;
                _os_log_impl(&dword_22AD27000, v303, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to encode model %@: %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v301);
LABEL_222:
            }

            v468 = [v464 countByEnumeratingWithState:&v546 objects:v602 count:16];
            if (!v468)
            {
LABEL_224:

              v81 = 0;
              goto LABEL_225;
            }
          }
        }
      }
    }

    v67 = objc_autoreleasePoolPush();
    v68 = v458;
    v69 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = HMFGetLogIdentifier();
      v71 = [v492 identifier];
      v72 = [v71 shortDescription];
      *buf = 138544386;
      *&buf[4] = v70;
      *&buf[12] = 2114;
      *&buf[14] = v72;
      *&buf[22] = 2048;
      v604 = a3;
      *v605 = 2112;
      *&v605[2] = v463;
      *&v605[10] = 2112;
      *&v605[12] = v501;
      _os_log_impl(&dword_22AD27000, v69, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch transaction entries for %lu / %@: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v67);
    v564 = 0;
    v73 = [(HMBLocalZone *)v68 removeBlockWithRow:a3 error:&v564];
    v464 = v564;
    if (!v73)
    {
      v74 = objc_autoreleasePoolPush();
      v75 = v68;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = HMFGetLogIdentifier();
        v78 = [v492 identifier];
        v79 = [v78 shortDescription];
        *buf = 138543874;
        *&buf[4] = v77;
        *&buf[12] = 2114;
        *&buf[14] = v79;
        *&buf[22] = 2112;
        v604 = v464;
        _os_log_impl(&dword_22AD27000, v76, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to clean up corrupt block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v74);
    }

    if (a4)
    {
      v80 = v501;
      *a4 = v501;
    }

    v81 = 1;
LABEL_225:

LABEL_226:
    objc_autoreleasePoolPop(context);
    if (v81 != 31 && v81)
    {
      v31 = 0;
      goto LABEL_270;
    }
  }

  while ([v567[5] count]);
  v510 = 0;
  v511 = &v510;
  v512 = 0x3032000000;
  v513 = __Block_byref_object_copy__688;
  v514 = __Block_byref_object_dispose__689;
  v515 = 0;
  if (!v465)
  {
    goto LABEL_232;
  }

  v509 = 0;
  v505[0] = MEMORY[0x277D85DD0];
  v505[1] = 3221225472;
  v505[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_124;
  v505[3] = &unk_2786E0460;
  v505[4] = v458;
  v507 = &v585;
  v506 = v465;
  v508 = &v510;
  v369 = [v473 sqlTransactionWithActivity:v492 error:&v509 block:v505];
  v370 = v509;
  if (v369)
  {

LABEL_232:
    v370 = v576[5];
    if (v370)
    {
      v371 = v511[5];
      v372 = v458;
      v498 = v370;
      v495 = v371;
      v503 = v466;
      v373 = v492;
      v374 = [(HMBLocalZone *)v372 localDatabase];
      v500 = [v374 local];

      v598 = 0;
      v375 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v503 requiringSecureCoding:1 error:&v598];
      v376 = v598;
      if (v375)
      {
        v592 = MEMORY[0x277D85DD0];
        v593 = 3221225472;
        v594 = ____finishEnqueueForOutput_block_invoke;
        v595 = &unk_2786E1B00;
        v377 = v498;
        v596 = v377;
        v597 = v375;
        v378 = [v500 sqlTransactionWithActivity:v373 block:&v592];

        if (v378)
        {
          v379 = objc_autoreleasePoolPush();
          v380 = v372;
          v381 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v381, OS_LOG_TYPE_ERROR))
          {
            v382 = HMFGetLogIdentifier();
            v383 = [v373 identifier];
            v384 = [v383 shortDescription];
            *buf = 138543874;
            *&buf[4] = v382;
            *&buf[12] = 2114;
            *&buf[14] = v384;
            *&buf[22] = 2112;
            v604 = v378;
            _os_log_impl(&dword_22AD27000, v381, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to update block to enqueue output: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v379);
          v370 = [MEMORY[0x277D2C900] futureWithError:v378];
        }

        else
        {
          v438 = [(HMBLocalZone *)v372 mirror];

          v491 = objc_autoreleasePoolPush();
          v439 = v372;
          v440 = HMFGetOSLogHandle();
          v441 = os_log_type_enabled(v440, OS_LOG_TYPE_INFO);
          if (v438)
          {
            if (v441)
            {
              v442 = HMFGetLogIdentifier();
              v443 = [v373 identifier];
              v444 = [v443 shortDescription];
              v445 = [v377 unsignedIntegerValue];
              *buf = 138543874;
              *&buf[4] = v442;
              *&buf[12] = 2114;
              *&buf[14] = v444;
              *&buf[22] = 2048;
              v604 = v445;
              _os_log_impl(&dword_22AD27000, v440, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Triggering output for output block row: %lu", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v491);
            v446 = [(HMBLocalZone *)v439 mirror];
            v370 = [v446 triggerOutputForOutputRow:objc_msgSend(v377 options:{"unsignedIntegerValue"), v503}];

            if (v495)
            {
              objc_initWeak(&location, v439);
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = ____finishEnqueueForOutput_block_invoke_143;
              v604 = &unk_2786E04B0;
              objc_copyWeak(&v605[16], &location);
              *v605 = v373;
              *&v605[8] = v495;
              v447 = [v370 addCompletionBlock:buf];

              objc_destroyWeak(&v605[16]);
              objc_destroyWeak(&location);
            }
          }

          else
          {
            if (v441)
            {
              v448 = HMFGetLogIdentifier();
              v449 = [v373 identifier];
              v450 = [v449 shortDescription];
              *buf = 138543618;
              *&buf[4] = v448;
              *&buf[12] = 2114;
              *&buf[14] = v450;
              _os_log_impl(&dword_22AD27000, v440, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Unable to trigger output because self.mirror is nil", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v491);
            v451 = MEMORY[0x277D2C900];
            v452 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
            v370 = [v451 futureWithError:v452];
          }
        }

        v376 = v378;
      }

      else
      {
        v406 = objc_autoreleasePoolPush();
        v407 = v372;
        v408 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v408, OS_LOG_TYPE_ERROR))
        {
          v409 = HMFGetLogIdentifier();
          v410 = [v373 identifier];
          v411 = [v410 shortDescription];
          *buf = 138543874;
          *&buf[4] = v409;
          *&buf[12] = 2114;
          *&buf[14] = v411;
          *&buf[22] = 2112;
          v604 = v376;
          _os_log_impl(&dword_22AD27000, v408, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to encode options for output: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v406);
        v370 = [MEMORY[0x277D2C900] futureWithError:v376];
      }

      v412 = [v462 completionHandlerAdapter];
      v413 = [v370 addCompletionBlock:v412];
    }

    v504 = 0;
    v414 = [(HMBLocalZone *)v458 removeBlockWithRow:a3 error:&v504];
    v415 = v504;
    if (!v414)
    {
      v416 = objc_autoreleasePoolPush();
      v417 = v458;
      v418 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
      {
        v419 = HMFGetLogIdentifier();
        v420 = [v492 identifier];
        v421 = [v420 shortDescription];
        *buf = 138543874;
        *&buf[4] = v419;
        *&buf[12] = 2114;
        *&buf[14] = v421;
        *&buf[22] = 2112;
        v604 = v415;
        _os_log_impl(&dword_22AD27000, v418, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to clean up processed block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v416);
    }

    v422 = [[HMBProcessingResult alloc] initWithOptions:v466 mirrorOutputResult:v370];
    v423 = [(HMBLocalZone *)v458 delegate];
    if (objc_opt_respondsToSelector())
    {
      v424 = objc_autoreleasePoolPush();
      v425 = v458;
      v426 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v426, OS_LOG_TYPE_DEBUG))
      {
        v427 = HMFGetLogIdentifier();
        v428 = [v492 identifier];
        v429 = [v428 shortDescription];
        *buf = 138543874;
        *&buf[4] = v427;
        *&buf[12] = 2114;
        *&buf[14] = v429;
        *&buf[22] = 2112;
        v604 = v422;
        _os_log_impl(&dword_22AD27000, v426, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Sending processing complete callback with result: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v424);
      [v423 localZone:v425 didCompleteProcessingWithResult:v422];
    }

    v430 = objc_autoreleasePoolPush();
    v431 = v458;
    v432 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v432, OS_LOG_TYPE_DEFAULT))
    {
      v433 = HMFGetLogIdentifier();
      v434 = [v492 identifier];
      v435 = [v434 shortDescription];
      *buf = 138544130;
      *&buf[4] = v433;
      *&buf[12] = 2114;
      *&buf[14] = v435;
      *&buf[22] = 2048;
      v604 = v461;
      *v605 = 2048;
      *&v605[2] = a3;
      _os_log_impl(&dword_22AD27000, v432, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Finished processing %lu row(s) for blockRow: %lu", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v430);
    v31 = v422;
  }

  else
  {
    v399 = objc_autoreleasePoolPush();
    v400 = v458;
    v401 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v401, OS_LOG_TYPE_ERROR))
    {
      v402 = HMFGetLogIdentifier();
      v403 = [v492 identifier];
      v404 = [v403 shortDescription];
      *buf = 138543874;
      *&buf[4] = v402;
      *&buf[12] = 2114;
      *&buf[14] = v404;
      *&buf[22] = 2112;
      v604 = v370;
      _os_log_impl(&dword_22AD27000, v401, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to write rollback entries: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v399);
    if (a4)
    {
      v405 = v370;
      *a4 = v370;
    }

    v31 = 0;
  }

  _Block_object_dispose(&v510, 8);
LABEL_270:
  _Block_object_dispose(&v566, 8);

LABEL_271:
  _Block_object_dispose(&v575, 8);

LABEL_272:
LABEL_273:

  _Block_object_dispose(&v585, 8);
  v436 = *MEMORY[0x277D85DE8];

  return v31;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [a2 _selectBlockWithRow:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  return v5;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_101(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [a2 _insertBlockWithZoneRow:v3 type:0 error:&v10];
  v5 = v10;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return v5;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_105(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v12 = 0;
  v6 = [a2 _selectItemsWithBlockRow:v3 rowGreaterThan:v4 limit:v5 returning:-1 error:&v12];
  v7 = v12;
  v8 = v12;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;

  return v7;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_107(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v6 = [v4 externalID];
  v13 = 0;
  v7 = [v5 _selectRecordModelIDWithZoneRow:v3 externalID:v6 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_108(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 0;
  [v3 _deleteItemWithRow:objc_msgSend(v2 error:{"itemRow"), &v6}];

  v4 = v6;

  return v4;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_109(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 0;
  [v3 _deleteItemWithRow:objc_msgSend(v2 error:{"itemRow"), &v6}];

  v4 = v6;

  return v4;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_117(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v12 = 0;
  [v4 _deleteRecordWithRow:objc_msgSend(v3 error:{"recordRow"), &v12}];

  v5 = v12;
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) recordRow];
  v11 = v5;
  [v6 _deleteQueryForRecordRow:v7 error:&v11];
  v8 = v11;
  v9 = v11;

  return v8;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_120(uint64_t a1, void *a2)
{
  v157 = *MEMORY[0x277D85DE8];
  v125 = a2;
  if ([*(a1 + 32) recordRow])
  {
    if (*(a1 + 40) || *(a1 + 48))
    {
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 56);
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = HMFGetLogIdentifier();
        v120 = [*(a1 + 64) identifier];
        v7 = [v120 shortDescription];
        v114 = [*(a1 + 32) recordRow];
        v116 = *(a1 + 48);
        v118 = *(a1 + 128);
        v8 = [*(a1 + 88) hmbDescription];
        v112 = *(a1 + 72);
        v9 = [*(a1 + 96) hmbDescription];
        [*(a1 + 104) hmbDescription];
        v10 = v122 = v3;
        v11 = [*(a1 + 80) model];
        v12 = [v11 hmbModelID];
        *buf = 138545666;
        v136 = v6;
        v137 = 2114;
        v138 = v7;
        v139 = 2048;
        v140 = v114;
        v141 = 2112;
        v142 = v116;
        v143 = 2048;
        v144 = v118;
        v145 = 2112;
        v146 = v8;
        v147 = 2112;
        v148 = v112;
        v149 = 2112;
        v150 = v9;
        v151 = 2112;
        v152 = v10;
        v153 = 2112;
        v154 = v12;
        _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Updating record row: %lu %@ %lu %@ %@ %@ %@ %@", buf, 0x66u);

        v3 = v122;
      }

      objc_autoreleasePoolPop(v3);
      v13 = [*(a1 + 32) recordRow];
      v14 = *(a1 + 136);
      v15 = *(a1 + 40);
      v16 = *(a1 + 112);
      v133 = 0;
      [v125 _updateRecordWithRow:v13 modelEncoding:v14 modelData:v15 modelSchema:v16 error:&v133];
      v17 = v133;
      if (*(a1 + 48))
      {
        v18 = [*(a1 + 32) recordRow];
        v19 = *(a1 + 48);
        v20 = *(a1 + 88);
        v21 = *(a1 + 128);
        v132 = v17;
        v22 = &v132;
        v23 = &v132;
        v24 = v125;
      }

      else
      {
        if (*(a1 + 152) != 1)
        {
          goto LABEL_23;
        }

        v57 = [*(a1 + 80) outputBlockRow];

        if (!v57)
        {
          goto LABEL_23;
        }

        v58 = objc_autoreleasePoolPush();
        v59 = *(a1 + 56);
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = HMFGetLogIdentifier();
          v62 = [*(a1 + 32) recordRow];
          *buf = 138543618;
          v136 = v61;
          v137 = 2048;
          v138 = v62;
          _os_log_impl(&dword_22AD27000, v60, OS_LOG_TYPE_INFO, "%{public}@Received change from mirror while existing record row %lu has pending output push", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v58);
        v63 = *(a1 + 56);
        v64 = objc_opt_class();
        v65 = [*(a1 + 120) externalData];
        v66 = [*(a1 + 80) externalData];
        LODWORD(v64) = [v64 shouldMirrorInputExternalData:v65 overwriteExistingExternalData:v66];

        if (!v64)
        {
          goto LABEL_23;
        }

        v67 = objc_autoreleasePoolPush();
        v68 = *(a1 + 56);
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v70 = HMFGetLogIdentifier();
          v71 = [*(a1 + 64) identifier];
          v72 = [v71 shortDescription];
          *buf = 138543618;
          v136 = v70;
          v137 = 2114;
          v138 = v72;
          _os_log_impl(&dword_22AD27000, v69, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Resetting pending output push data due to change from mirror", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v67);
        v18 = [*(a1 + 32) recordRow];
        v131 = v17;
        v22 = &v131;
        v23 = &v131;
        v24 = v125;
        v19 = 0;
        v20 = 0;
        v21 = 0;
      }

      [v24 _updateRecordWithRow:v18 pushBlockRow:v19 pushData:v20 pushEncoding:v21 error:v23];
      v25 = *v22;

      v17 = v25;
LABEL_23:
      if (*(a1 + 104))
      {
        v73 = [*(a1 + 32) recordRow];
        v74 = *(a1 + 96);
        v75 = *(a1 + 104);
        v130 = v17;
        [v125 _updateRecordWithRow:v73 externalID:v74 externalData:v75 error:&v130];
        v76 = v130;

        v17 = v76;
      }

      if (*(a1 + 72) && *(a1 + 112))
      {
        v77 = [*(a1 + 32) recordRow];
        v78 = *(a1 + 72);
        v79 = *(a1 + 112);
        v129 = v17;
        [v125 _updateRecordWithRow:v77 modelType:v78 modelSchema:v79 error:&v129];
        v80 = v129;

        v17 = v80;
      }

      if (*(a1 + 40))
      {
        v81 = [*(a1 + 32) encodedQueryableColumns];

        if (v81)
        {
          v82 = [*(a1 + 32) queryTable];
          v83 = *(a1 + 144);
          v84 = [*(a1 + 32) recordRow];
          v85 = [*(a1 + 32) encodedQueryableColumns];
          v128 = v17;
          [v82 _updateQueryForZoneRow:v83 recordRow:v84 encodedColumns:v85 error:&v128];
          v86 = v128;

          v17 = v86;
        }
      }

      goto LABEL_38;
    }

    v94 = objc_autoreleasePoolPush();
    v95 = *(a1 + 56);
    v96 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      v97 = HMFGetLogIdentifier();
      v98 = [*(a1 + 64) identifier];
      [v98 shortDescription];
      v99 = v124 = v94;
      v100 = [*(a1 + 32) recordRow];
      v101 = *(a1 + 72);
      v102 = [*(a1 + 80) model];
      v103 = [v102 hmbModelID];
      *buf = 138544386;
      v136 = v97;
      v137 = 2114;
      v138 = v99;
      v139 = 2048;
      v140 = v100;
      v141 = 2112;
      v142 = v101;
      v143 = 2112;
      v144 = v103;
      _os_log_impl(&dword_22AD27000, v96, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Deleting record row: %lu %@ %@", buf, 0x34u);

      v94 = v124;
    }

    objc_autoreleasePoolPop(v94);
    v104 = [*(a1 + 32) recordRow];
    v134 = 0;
    [v125 _deleteRecordWithRow:v104 error:&v134];
    v93 = v134;
LABEL_37:
    v17 = v93;
    goto LABEL_38;
  }

  v26 = *(a1 + 120);
  if (!v26)
  {
    v87 = objc_autoreleasePoolPush();
    v88 = *(a1 + 56);
    v89 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v90 = HMFGetLogIdentifier();
      v91 = [*(a1 + 64) identifier];
      v92 = [v91 shortDescription];
      *buf = 138543618;
      v136 = v90;
      v137 = 2114;
      v138 = v92;
      _os_log_impl(&dword_22AD27000, v89, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] No record row to update or updated model to insert", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v87);
    v93 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    goto LABEL_37;
  }

  v27 = *(a1 + 144);
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  v30 = [v26 model];
  v31 = [v30 hmbModelID];
  v32 = [*(a1 + 120) model];
  v33 = [v32 hmbParentModelID];
  v34 = *(a1 + 72);
  v35 = *(a1 + 112);
  v37 = *(a1 + 128);
  v36 = *(a1 + 136);
  v38 = *(a1 + 88);
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  v127 = 0;
  v41 = [v125 _insertRecordWithZoneRow:v27 externalID:v28 externalData:v29 modelID:v31 parentModelID:v33 modelType:v34 modelEncoding:v36 modelData:v39 modelSchema:v35 pushEncoding:v37 pushData:v38 pushBlockRow:v40 error:&v127];
  v17 = v127;

  v42 = [*(a1 + 32) encodedQueryableColumns];

  if (v42)
  {
    v43 = [*(a1 + 32) queryTable];
    v44 = *(a1 + 144);
    v45 = [*(a1 + 32) encodedQueryableColumns];
    v126 = v17;
    [v43 _updateQueryForZoneRow:v44 recordRow:v41 encodedColumns:v45 error:&v126];
    v46 = v126;

    v17 = v46;
  }

  v47 = objc_autoreleasePoolPush();
  v48 = *(a1 + 56);
  v49 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v50 = HMFGetLogIdentifier();
    v121 = [*(a1 + 64) identifier];
    v51 = [v121 shortDescription];
    v110 = *(a1 + 48);
    v111 = *(a1 + 128);
    v119 = [*(a1 + 120) model];
    v117 = [v119 hmbModelID];
    v52 = [v117 UUIDString];
    [*(a1 + 120) model];
    v115 = v109 = v41;
    v113 = [v115 hmbParentModelID];
    v53 = [v113 UUIDString];
    v108 = *(a1 + 72);
    v54 = [*(a1 + 96) hmbDescription];
    [*(a1 + 104) hmbDescription];
    v55 = v123 = v47;
    v56 = [*(a1 + 88) hmbDescription];
    *buf = 138545922;
    v136 = v50;
    v137 = 2114;
    v138 = v51;
    v139 = 2048;
    v140 = v109;
    v141 = 2112;
    v142 = v110;
    v143 = 2048;
    v144 = v111;
    v145 = 2112;
    v146 = v52;
    v147 = 2112;
    v148 = v53;
    v149 = 2112;
    v150 = v108;
    v151 = 2112;
    v152 = v54;
    v153 = 2112;
    v154 = v55;
    v155 = 2112;
    v156 = v56;
    _os_log_impl(&dword_22AD27000, v49, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Inserting record row: %lu %@ %lu %@ %@ %@ %@ %@ %@", buf, 0x70u);

    v47 = v123;
  }

  objc_autoreleasePoolPop(v47);
LABEL_38:
  v105 = v17;

  v106 = *MEMORY[0x277D85DE8];
  return v17;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_124(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = [*(*(a1[6] + 8) + 40) optionsData];
  v7 = a1[5];
  v14 = 0;
  v8 = [v4 _insertBlockWithZoneRow:v5 type:3 options:v6 items:v7 error:&v14];

  v9 = v14;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return v9;
}

- (void)queueIncompleteProcesses
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(HMBLocalZone *)self sql];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke;
  v53[3] = &unk_2786E24B0;
  v53[4] = self;
  v4 = [v3 sqlBlockWithActivity:0 block:v53];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v8;
      v58 = 2112;
      v59 = v4;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete null items/blocks: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v39 = v4;
  v9 = [HMBLocalSQLIteratorRowRollbackBlock alloc];
  v10 = [(HMBLocalZone *)self sql];
  v11 = [(HMBLocalSQLIteratorRowRollbackBlock *)v9 initWithSQLContext:v10 zoneRow:[(HMBLocalZone *)self zoneRow]];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v11;
  v12 = [(HMBLocalSQLIteratorRowRollbackBlock *)obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v57 = v20;
          v58 = 2112;
          v59 = v16;
          _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Rolling back block: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        __rollbackBlock(v18, v16);
      }

      v13 = [(HMBLocalSQLIteratorRowRollbackBlock *)obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v13);
  }

  v21 = [(HMBLocalZone *)self sql];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke_81;
  v48[3] = &unk_2786E24B0;
  v48[4] = self;
  v22 = [v21 sqlBlockWithActivity:0 block:v48];

  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v26;
      v58 = 2112;
      v59 = v22;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete zombie records: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v40 = v22;
  v27 = [HMBLocalSQLIteratorRowInputBlock alloc];
  v28 = [(HMBLocalZone *)self sql];
  v29 = [(HMBLocalSQLIteratorRowInputBlock *)v27 initWithSQLContext:v28 zoneRow:[(HMBLocalZone *)self zoneRow]];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v41 = v29;
  v30 = [(HMBLocalSQLIteratorRowInputBlock *)v41 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v45;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(v41);
        }

        v34 = [*(*(&v44 + 1) + 8 * j) blockRow];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke_84;
        v43[3] = &unk_2786E03C8;
        v43[4] = self;
        v43[5] = v34;
        v35 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v43];
        v36 = [(HMBLocalZone *)self localDatabase];
        v37 = [v36 queue];
        [v37 addOperation:v35];
      }

      v31 = [(HMBLocalSQLIteratorRowInputBlock *)v41 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v31);
  }

  v38 = *MEMORY[0x277D85DE8];
}

id __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  [v4 _deleteNullItemsWithZoneRow:objc_msgSend(v3 error:{"zoneRow"), &v11}];
  v5 = v11;
  v6 = [*(a1 + 32) zoneRow];
  v10 = v5;
  [v4 _deleteNullBlocksWithZoneRow:v6 error:&v10];

  v7 = v10;
  v8 = v10;

  return v7;
}

id __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke_81(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 0;
  [v3 _deleteZombieRecordsWithZoneRow:objc_msgSend(v2 error:{"zoneRow"), &v6}];

  v4 = v6;

  return v4;
}

id __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke_84(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_22AD27000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Processing input block row: %lu", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _processItemsForBlockRow:*(a1 + 40) error:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)observersForModelWithID:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  v6 = [(HMBLocalZone *)self modelObserversByModelID];
  v7 = [v6 objectForKeyedSubscript:v4];
  v8 = [v7 allObjects];
  [v5 addObjectsFromArray:v8];

  v9 = [(HMBLocalZone *)self observersForAllModels];
  v10 = [v9 allObjects];
  [v5 addObjectsFromArray:v10];

  os_unfair_lock_unlock(&self->_propertyLock);
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v5 hmbDescription];
    v19 = 138543874;
    v20 = v14;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Notifying observers for model ID %@: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [v5 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)outputModelFromUpdateModel:(id)a3 mergedModel:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [objc_opt_class() hmbExternalProperties];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v5 hmbSetProperties];
        v14 = [v13 containsObject:v12];

        if ((v14 & 1) == 0)
        {
          [v6 hmbUnsetPropertyNamed:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)shouldMirrorInputExternalData:(id)a3 overwriteExistingExternalData:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v40 = 0;
      v9 = [MEMORY[0x277CBC5A0] recordFromExternalData:v6 error:&v40];
      v10 = v40;
      if (v9)
      {
        v39 = v10;
        v11 = [MEMORY[0x277CBC5A0] recordFromExternalData:v8 error:&v39];
        v12 = v39;

        v13 = objc_autoreleasePoolPush();
        v14 = a1;
        v15 = HMFGetOSLogHandle();
        v16 = v15;
        if (v11)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            [v9 modificationDate];
            v18 = v38 = v12;
            v19 = [v11 modificationDate];
            *buf = 138543874;
            v42 = v17;
            v43 = 2112;
            v44 = v18;
            v45 = 2112;
            v46 = v19;
            _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_INFO, "%{public}@Comparing mirror input modification date %@ with existing record modification date %@", buf, 0x20u);

            v12 = v38;
          }

          objc_autoreleasePoolPop(v13);
          v20 = [v9 modificationDate];
          v21 = [v11 modificationDate];
          v22 = [v20 compare:v21] == 1;
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v42 = v35;
            v43 = 2112;
            v44 = v12;
            _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode record from existing external data: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          v22 = 1;
        }

        v10 = v12;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = a1;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v34;
          v43 = 2112;
          v44 = v10;
          _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode record from mirror input external data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v22 = 0;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = a1;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v30;
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_INFO, "%{public}@Existing external data was nil when comparing against mirror input external data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v22 = 1;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v26;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Mirror input external data was nil when comparing against existing external data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)outputBlockRowForTuple:(id)a3 activity:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 previousContext];
  v9 = [v8 model];

  v10 = [v6 updateModel];
  v11 = objc_opt_class();
  if (!v11)
  {
    v11 = objc_opt_class();
  }

  if ([v11 hmbExcludeFromCloudStorage])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      v30 = v7;
      v15 = [v7 identifier];
      v16 = [v15 shortDescription];
      v17 = [v9 hmbModelID];
      v18 = v17;
      if (!v17)
      {
        v18 = [v10 hmbModelID];
      }

      *buf = 138544130;
      v34 = v29;
      v35 = 2114;
      v36 = v16;
      v37 = 2112;
      v38 = v18;
      v39 = 2048;
      v40 = [v6 itemRow];
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Skipping mirror output push for model ID %@ and row %ld since the model is set to exclude cloud storage", buf, 0x2Au);
      if (!v17)
      {
      }

      v7 = v30;
    }

LABEL_13:

    objc_autoreleasePoolPop(v12);
    v26 = 0;
    goto LABEL_15;
  }

  v19 = [v10 hmbSetProperties];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __57__HMBLocalZone_Process__outputBlockRowForTuple_activity___block_invoke;
  v32[3] = &__block_descriptor_40_e18_B16__0__NSString_8lu32l8;
  v32[4] = v11;
  v20 = [v19 na_all:v32];

  if (v20)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v7 identifier];
      [v22 shortDescription];
      v23 = v31 = v7;
      v24 = [v10 hmbModelID];
      v25 = [v6 itemRow];
      *buf = 138544130;
      v34 = v21;
      v35 = 2114;
      v36 = v23;
      v37 = 2112;
      v38 = v24;
      v39 = 2048;
      v40 = v25;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Skipping mirror output push for updated model ID %@ and row %ld since the only set properties are excluded from cloud storage", buf, 0x2Au);

      v7 = v31;
    }

    goto LABEL_13;
  }

  v26 = [v6 outputBlockRow];
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

BOOL __57__HMBLocalZone_Process__outputBlockRowForTuple_activity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hmbProperties];
  v5 = [v4 objectForKeyedSubscript:v3];

  if ([v5 excludeFromCloudStorage])
  {
    v6 = [v5 externalRecordField];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMBLocalZoneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMBLocalDatabase)localDatabase
{
  WeakRetained = objc_loadWeakRetained(&self->_localDatabase);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMBLocalZone *)self localDatabase];
  v5 = [v4 logIdentifier];
  v6 = [v3 initWithName:@"Database" value:v5];
  v13[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMBLocalZone *)self zoneID];
  v9 = [v7 initWithName:@"Zone ID" value:v8];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)logIdentifier
{
  v2 = [(HMBLocalZone *)self zoneID];
  v3 = [v2 shortDescription];

  return v3;
}

- (id)shutdown
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMBLocalZone *)self shutdownFuture];

  if (!v3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __24__HMBLocalZone_shutdown__block_invoke;
    v9[3] = &unk_2786E10F8;
    v9[4] = self;
    v4 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v9];
    [(HMBLocalZone *)self setShutdownFuture:v4];
  }

  v5 = [(HMBLocalZone *)self shutdownFuture];
  os_unfair_lock_unlock(&self->_propertyLock);
  if (!v3)
  {
    v6 = [(HMBLocalZone *)self localDatabase];
    [v6 handleLocalZoneShutdown:self];

    v7 = [v5 recoverIgnoringError];
  }

  return v5;
}

void __24__HMBLocalZone_shutdown__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mirror];
  v5 = [v4 shutdown];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v8 = v7;

  v9 = [v8 recoverIgnoringError];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __24__HMBLocalZone_shutdown__block_invoke_2;
  v12[3] = &unk_2786E13C0;
  v12[4] = *(a1 + 32);
  v13 = v3;
  v10 = v3;
  v11 = [v9 addSuccessBlock:v12];
}

void __24__HMBLocalZone_shutdown__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) flush];
  v2 = [v5 recoverIgnoringError];
  v3 = [*(a1 + 40) completionHandlerAdapter];
  v4 = [v2 addCompletionBlock:v3];
}

- (id)createLocalInputWithError:(id *)a3
{
  v4 = [(HMBLocalZone *)self createInputBlockWithType:2 error:a3];
  if (v4)
  {
    v5 = [(HMBLocalZoneInput *)[HMBLocalZoneLocalInput alloc] initWithLocalZone:self inputBlock:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removeAllModelsOfTypes:(id)a3 options:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D0F770]);
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMBLocalZone removeAllModelsOfTypes:options:]"];
  v9 = [v7 initWithName:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 identifier];
    v15 = [v14 shortDescription];
    [v44 hmbDescription];
    v17 = v16 = v9;
    v18 = [v6 label];
    *buf = 138544130;
    v49 = v13;
    v50 = 2114;
    v51 = v15;
    v52 = 2112;
    v53 = v17;
    v54 = 2112;
    v55 = v18;
    _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing all models of types: %@, options label: %@", buf, 0x2Au);

    v9 = v16;
  }

  objc_autoreleasePoolPop(v10);
  v47 = 0;
  v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v47];
  v20 = v47;
  if (v19)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __47__HMBLocalZone_removeAllModelsOfTypes_options___block_invoke;
    v46[3] = &unk_2786E07C0;
    v46[4] = v11;
    v21 = [v44 na_map:v46];
    v45 = v20;
    v22 = [(HMBLocalZone *)v11 insertBlockToRemoveAllModelsWithType:2 modelTypes:v21 options:v19 error:&v45];
    v23 = v45;

    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v11;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        [v9 identifier];
        v43 = v6;
        v29 = v28 = v9;
        v30 = [v29 shortDescription];
        *buf = 138544130;
        v49 = v27;
        v50 = 2114;
        v51 = v30;
        v52 = 2112;
        v53 = v44;
        v54 = 2112;
        v55 = v23;
        _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to stage removal for all models of types %@: %@", buf, 0x2Au);

        v9 = v28;
        v6 = v43;
      }

      objc_autoreleasePoolPop(v24);
      v31 = [MEMORY[0x277D2C900] futureWithError:v23];
    }

    else
    {
      v31 = [(HMBLocalZone *)v11 triggerProcessForBlockRow:v22];
    }

    v40 = v31;

    v20 = v23;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v11;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v9 identifier];
      [v36 shortDescription];
      v37 = v6;
      v39 = v38 = v9;
      *buf = 138544130;
      v49 = v35;
      v50 = 2114;
      v51 = v39;
      v52 = 2112;
      v53 = v37;
      v54 = 2112;
      v55 = v20;
      _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode processing options %@: %@", buf, 0x2Au);

      v9 = v38;
      v6 = v37;
    }

    objc_autoreleasePoolPop(v32);
    v40 = [MEMORY[0x277D2C900] futureWithError:v20];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

id __47__HMBLocalZone_removeAllModelsOfTypes_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) modelContainer];
  v4 = [v3 typeNameForModelClass:a2];

  return v4;
}

- (id)removeModelsAndDescendantModelsWithIDs:(id)a3 depth:(unint64_t)a4 options:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x277D0F770]);
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMBLocalZone removeModelsAndDescendantModelsWithIDs:depth:options:]"];
  v12 = [v10 initWithName:v11];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 identifier];
    [v17 shortDescription];
    v18 = v9;
    v20 = v19 = v8;
    [v19 hmbDescription];
    v21 = v45 = v12;
    [v18 label];
    v44 = v13;
    v23 = v22 = a4;
    *buf = 138544386;
    v51 = v16;
    v52 = 2114;
    v53 = v20;
    v54 = 2112;
    v55 = v21;
    v56 = 2048;
    v57 = v22;
    v58 = 2112;
    v59 = v23;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing models and descendant models with IDs: %@, depth: %lu, options label: %@", buf, 0x34u);

    a4 = v22;
    v13 = v44;

    v12 = v45;
    v8 = v19;
    v9 = v18;
  }

  objc_autoreleasePoolPop(v13);
  v49 = 0;
  v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v49];
  v25 = v49;
  v26 = v25;
  if (v24)
  {
    v48 = v25;
    v27 = [(HMBLocalZone *)v14 insertBlockToRemoveModelsAndDescendantModelsWithType:2 modelIDs:v8 depth:a4 options:v24 error:&v48];
    v28 = v48;

    if (v28)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v14;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        [v12 identifier];
        v33 = v46 = v12;
        v34 = [v33 shortDescription];
        *buf = 138544130;
        v51 = v32;
        v52 = 2114;
        v53 = v34;
        v54 = 2112;
        v55 = v8;
        v56 = 2112;
        v57 = v28;
        _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to stage removal for models and descendant models with IDs %@: %@", buf, 0x2Au);

        v12 = v46;
      }

      objc_autoreleasePoolPop(v29);
      v35 = [MEMORY[0x277D2C900] futureWithError:v28];
    }

    else
    {
      v35 = [(HMBLocalZone *)v14 triggerProcessForBlockRow:v27];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v14;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      [v12 identifier];
      v40 = v47 = v12;
      v41 = [v40 shortDescription];
      *buf = 138544130;
      v51 = v39;
      v52 = 2114;
      v53 = v41;
      v54 = 2112;
      v55 = v9;
      v56 = 2112;
      v57 = v26;
      _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode processing options %@: %@", buf, 0x2Au);

      v12 = v47;
    }

    objc_autoreleasePoolPop(v36);
    v35 = [MEMORY[0x277D2C900] futureWithError:v26];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)removeModelsWithParentModelID:(id)a3 options:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D0F770]);
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMBLocalZone removeModelsWithParentModelID:options:]"];
  v10 = [v8 initWithName:v9];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 identifier];
    v16 = [v15 shortDescription];
    v17 = [v7 label];
    *buf = 138544130;
    v43 = v14;
    v44 = 2114;
    v45 = v16;
    v46 = 2112;
    v47 = v6;
    v48 = 2112;
    v49 = v17;
    _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing models with parent model ID: %@, options label: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v41 = 0;
  v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v41];
  v19 = v41;
  v20 = v19;
  if (v18)
  {
    v40 = v19;
    v21 = [(HMBLocalZone *)v12 insertBlockToRemoveChildModelsWithType:2 parentModelID:v6 options:v18 error:&v40];
    v22 = v40;

    if (v22)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v12;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v10 identifier];
        [v27 shortDescription];
        v28 = v38 = v10;
        *buf = 138544130;
        v43 = v26;
        v44 = 2114;
        v45 = v28;
        v46 = 2112;
        v47 = v6;
        v48 = 2112;
        v49 = v22;
        _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to stage removal for models with parent model ID %@: %@", buf, 0x2Au);

        v10 = v38;
      }

      objc_autoreleasePoolPop(v23);
      v29 = [MEMORY[0x277D2C900] futureWithError:v22];
    }

    else
    {
      v29 = [(HMBLocalZone *)v12 triggerProcessForBlockRow:v21];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v12;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [v10 identifier];
      [v34 shortDescription];
      v35 = v39 = v30;
      *buf = 138544130;
      v43 = v33;
      v44 = 2114;
      v45 = v35;
      v46 = 2112;
      v47 = v7;
      v48 = 2112;
      v49 = v20;
      _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode processing options %@: %@", buf, 0x2Au);

      v30 = v39;
    }

    objc_autoreleasePoolPop(v30);
    v29 = [MEMORY[0x277D2C900] futureWithError:v20];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)removeModelIDs:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [(HMBLocalZone *)self addModels:v9 andRemoveModelIDs:v8 options:v7];

  return v10;
}

- (id)updateModels:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 setDisallowsModelCreation:1];
  v8 = [(HMBLocalZone *)self addModels:v7 options:v6];

  return v8;
}

- (id)addModels:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [(HMBLocalZone *)self addModels:v8 andRemoveModelIDs:v9 options:v7];

  return v10;
}

- (id)createModels:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 setRequiresModelCreation:1];
  v8 = [(HMBLocalZone *)self addModels:v7 options:v6];

  return v8;
}

- (id)updateModels:(id)a3 andRemoveModelIDs:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v8 setDisallowsModelCreation:1];
  v11 = [(HMBLocalZone *)self addModels:v10 andRemoveModelIDs:v9 options:v8];

  return v11;
}

- (id)addModels:(id)a3 andRemoveModelIDs:(id)a4 options:(id)a5
{
  v143 = *MEMORY[0x277D85DE8];
  v108 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x277D0F770]);
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMBLocalZone addModels:andRemoveModelIDs:options:]"];
  v12 = [v10 initWithName:v11];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    [v12 identifier];
    v18 = v17 = v8;
    [v18 shortDescription];
    v19 = v111 = v13;
    [v108 hmbDescription];
    v20 = v109 = v14;
    [v17 hmbDescription];
    v21 = v12;
    v23 = v22 = v9;
    v24 = [v22 label];
    *buf = 138544386;
    v134 = v16;
    v135 = 2114;
    v136 = v19;
    v137 = 2112;
    v138 = v20;
    v139 = 2112;
    v140 = v23;
    v141 = 2112;
    v142 = v24;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Submitting models to add: %@, model IDs to remove: %@, options label: %@", buf, 0x34u);

    v9 = v22;
    v12 = v21;

    v14 = v109;
    v13 = v111;

    v8 = v17;
  }

  objc_autoreleasePoolPop(v13);
  v127 = 0;
  v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v127];
  v26 = v127;
  if (v26)
  {
    v27 = v26;
    v28 = objc_autoreleasePoolPush();
    v29 = v14;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      [v12 identifier];
      v32 = v104 = v8;
      v33 = [v32 shortDescription];
      *buf = 138544130;
      v134 = v31;
      v135 = 2114;
      v136 = v33;
      v137 = 2112;
      v138 = v9;
      v139 = 2112;
      v140 = v27;
      _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to archive options %@: %@", buf, 0x2Au);

      v8 = v104;
    }

    objc_autoreleasePoolPop(v28);
    v34 = [MEMORY[0x277D2C900] futureWithError:v27];
    v35 = v108;
  }

  else
  {
    v101 = v25;
    v102 = v9;
    v103 = v12;
    v110 = v14;
    v36 = [(HMBLocalZone *)v14 modelContainer];
    v100 = [v36 bestModelEncodingForStorageLocation:3];

    v112 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count") + objc_msgSend(v108, "count")}];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v105 = v8;
    v37 = v8;
    v38 = [v37 countByEnumeratingWithState:&v123 objects:v132 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v124;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v124 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v123 + 1) + 8 * i);
          v43 = [HMBLocalSQLContextRowItem alloc];
          v44 = [MEMORY[0x277CCAD78] UUID];
          v45 = [v44 data];
          v46 = [v42 data];
          v47 = [(HMBLocalSQLContextRowItem *)v43 initWithItemRow:0 externalID:v45 externalData:0 modelEncoding:0 modelData:v46];

          [v112 addObject:v47];
        }

        v39 = [v37 countByEnumeratingWithState:&v123 objects:v132 count:16];
      }

      while (v39);
    }

    v48 = [MEMORY[0x277CBEB58] set];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v49 = v108;
    v50 = [v49 countByEnumeratingWithState:&v119 objects:v131 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v120;
      while (2)
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v120 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v119 + 1) + 8 * j);
          v55 = [v54 hmbModelID];
          if (!v55 || (v56 = v55, [v54 hmbParentModelID], v57 = objc_claimAutoreleasedReturnValue(), v57, v56, !v57))
          {
            v72 = objc_autoreleasePoolPush();
            v73 = v110;
            v74 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v75 = HMFGetLogIdentifier();
              v76 = [v103 identifier];
              v77 = [v76 shortDescription];
              *buf = 138543874;
              v134 = v75;
              v135 = 2114;
              v136 = v77;
              v137 = 2112;
              v138 = v54;
              _os_log_impl(&dword_22AD27000, v74, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Cannot update a model with a nil hmbModelID or hmbParentModelID: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v72);
            v78 = MEMORY[0x277D2C900];
            v79 = MEMORY[0x277CCA9B8];
            v80 = *MEMORY[0x277D0F1A0];
            v129[0] = @"info";
            v129[1] = @"model";
            v130[0] = @"Cannot update a model with a nil hmbModelID or hmbParentModelID";
            v81 = [v54 hmbDescription];
            v130[1] = v81;
            v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];
            v83 = [v79 errorWithDomain:v80 code:3 userInfo:v82];
            v34 = [v78 futureWithError:v83];

            v27 = 0;
            v8 = v105;
            v25 = v101;
            v9 = v102;
            goto LABEL_42;
          }

          v58 = [v54 hmbModelID];
          [v48 addObject:v58];
        }

        v51 = [v49 countByEnumeratingWithState:&v119 objects:v131 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = v49;
    v59 = [obj countByEnumeratingWithState:&v115 objects:v128 count:16];
    v107 = v48;
    if (v59)
    {
      v60 = v59;
      v27 = 0;
      v61 = *v116;
      v62 = v100;
      while (2)
      {
        v63 = 0;
        v64 = v27;
        do
        {
          if (*v116 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v115 + 1) + 8 * v63);
          v66 = [(HMBLocalZone *)v110 modelContainer];
          v114 = v64;
          v67 = [v66 dataFromModel:v65 encoding:v62 storageLocation:3 updatedModelIDs:v107 error:&v114];
          v27 = v114;

          if (!v67)
          {
            v84 = objc_autoreleasePoolPush();
            v85 = v110;
            v86 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              v87 = HMFGetLogIdentifier();
              v88 = [v103 identifier];
              v89 = [v88 shortDescription];
              *buf = 138544130;
              v134 = v87;
              v135 = 2114;
              v136 = v89;
              v137 = 2112;
              v138 = v65;
              v139 = 2112;
              v140 = v27;
              _os_log_impl(&dword_22AD27000, v86, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode model %@: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v84);
            v34 = [MEMORY[0x277D2C900] futureWithError:v27];

            v8 = v105;
            v25 = v101;
            v9 = v102;
            goto LABEL_41;
          }

          v68 = [HMBLocalSQLContextRowItem alloc];
          v69 = [MEMORY[0x277CCAD78] UUID];
          v70 = [v69 data];
          v71 = [(HMBLocalSQLContextRowItem *)v68 initWithItemRow:0 externalID:v70 externalData:0 modelEncoding:v62 modelData:v67];

          [v112 addObject:v71];
          ++v63;
          v64 = v27;
        }

        while (v60 != v63);
        v60 = [obj countByEnumeratingWithState:&v115 objects:v128 count:16];
        if (v60)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 0;
    }

    v113 = v27;
    v25 = v101;
    v90 = [(HMBLocalZone *)v110 insertBlockWithType:2 options:v101 items:v112 error:&v113];
    v91 = v113;

    if (v91)
    {
      v34 = [MEMORY[0x277D2C900] futureWithError:v91];
      v27 = v91;
      v8 = v105;
LABEL_41:
      v48 = v107;
    }

    else
    {
      v94 = objc_autoreleasePoolPush();
      v95 = v110;
      v96 = HMFGetOSLogHandle();
      v48 = v107;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        v97 = HMFGetLogIdentifier();
        v98 = [v103 identifier];
        v99 = [v98 shortDescription];
        *buf = 138543874;
        v134 = v97;
        v135 = 2114;
        v136 = v99;
        v137 = 2048;
        v138 = v90;
        _os_log_impl(&dword_22AD27000, v96, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Submitted models with block row: %lu", buf, 0x20u);

        v9 = v102;
        v25 = v101;
      }

      objc_autoreleasePoolPop(v94);
      v34 = [(HMBLocalZone *)v95 triggerProcessForBlockRow:v90];
      v27 = 0;
      v8 = v105;
    }

LABEL_42:

    v35 = v108;
    v12 = v103;
  }

  v92 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)flush
{
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [(HMBLocalZone *)self localDatabase];
  v5 = [v4 queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __21__HMBLocalZone_flush__block_invoke;
  v10[3] = &unk_2786E0798;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [v5 addOperationWithBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __21__HMBLocalZone_flush__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mirror];
  v6 = v2;
  if (v2)
  {
    v3 = [v2 flush];
    v4 = [*(a1 + 40) completionHandlerAdapter];
    v5 = [v3 addCompletionBlock:v4];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }
}

- (BOOL)destroyWithError:(id *)a3
{
  if (![(HMBLocalZone *)self removeAllRecordsWithError:?])
  {
    return 0;
  }

  v5 = [(HMBLocalZone *)self localDatabase];
  v6 = [v5 local];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__HMBLocalZone_destroyWithError___block_invoke;
  v9[3] = &unk_2786E24B0;
  v9[4] = self;
  v7 = [v6 sqlTransactionWithActivity:0 error:a3 block:v9];

  return v7;
}

id __33__HMBLocalZone_destroyWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 0;
  [v3 _deleteZoneWithRow:objc_msgSend(v2 error:{"zoneRow"), &v6}];

  v4 = v6;

  return v4;
}

- (void)startUp
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(HMBLocalZone *)self hasStartedUp];
  [(HMBLocalZone *)self setHasStartedUp:1];
  os_unfair_lock_unlock(&self->_propertyLock);
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Not starting up local zone that has already started up", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting up local zone", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMBLocalZone *)v5 migrateUnsupportedModels];
    [(HMBLocalZone *)v5 rebuildIndexesIfNeeded];
    [(HMBLocalZone *)v5 queueIncompleteProcesses];
    v10 = [(HMBLocalZone *)v5 mirror];
    [v10 startUpWithLocalZone:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)setExternalData:(id)a3 forExternalID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__HMBLocalZone_setExternalData_forExternalID___block_invoke;
  v13[3] = &unk_2786E2418;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 sqlBlockWithActivity:0 block:v13];

  return v11;
}

id __46__HMBLocalZone_setExternalData_forExternalID___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[6];
  v10 = 0;
  [v4 _updateRecordWithZoneRow:v5 externalID:v6 externalData:v7 error:&v10];

  v8 = v10;

  return v8;
}

- (id)setExternalData:(id)a3 forModelID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__HMBLocalZone_setExternalData_forModelID___block_invoke;
  v13[3] = &unk_2786E2418;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 sqlBlockWithActivity:0 block:v13];

  return v11;
}

id __43__HMBLocalZone_setExternalData_forModelID___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[6];
  v10 = 0;
  [v4 _updateRecordWithZoneRow:v5 modelID:v6 externalData:v7 error:&v10];

  v8 = v10;

  return v8;
}

- (id)modelIDForExternalID:(id)a3 error:(id *)a4
{
  v4 = [(HMBLocalZone *)self fetchRecordRowWithExternalID:a3 returning:0 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 modelID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)externalIDForModelID:(id)a3 error:(id *)a4
{
  v4 = [(HMBLocalZone *)self fetchRecordRowWithModelID:a3 returning:1 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 externalID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)externalDataForExternalID:(id)a3 error:(id *)a4
{
  v4 = [(HMBLocalZone *)self fetchRecordRowWithExternalID:a3 returning:1 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 externalData];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)externalDataForModelID:(id)a3 error:(id *)a4
{
  v4 = [(HMBLocalZone *)self fetchRecordRowWithModelID:a3 returning:1 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 externalData];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeObserver:(id)a3 forModelWithID:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMBLocalZone *)self modelObserversByModelID];
  v8 = [v7 objectForKeyedSubscript:v6];

  [v8 removeObject:v10];
  if (![v8 count])
  {
    v9 = [(HMBLocalZone *)self modelObserversByModelID];
    [v9 setObject:0 forKeyedSubscript:v6];
  }

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)removeObserverForAllModels:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMBLocalZone *)self observersForAllModels];
  [v4 removeObject:v5];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)addObserver:(id)a3 forModelWithID:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMBLocalZone *)self modelObserversByModelID];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v9 = [(HMBLocalZone *)self modelObserversByModelID];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:v10];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)addObserverForAllModels:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMBLocalZone *)self observersForAllModels];
  [v4 addObject:v5];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)setZoneRow:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_zoneRow = a3;

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (unint64_t)zoneRow
{
  os_unfair_lock_lock_with_options();
  zoneRow = self->_zoneRow;
  os_unfair_lock_unlock(&self->_propertyLock);
  return zoneRow;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Deallocating HMBLocalZone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMBLocalZone;
  [(HMBLocalZone *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMBLocalZone)initWithLocalDatabase:(id)a3 zoneID:(id)a4 zoneRow:(unint64_t)a5 configuration:(id)a6 mirror:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v35.receiver = self;
  v35.super_class = HMBLocalZone;
  v16 = [(HMBLocalZone *)&v35 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_localDatabase, v12);
    v18 = [v12 local];
    sql = v17->_sql;
    v17->_sql = v18;

    objc_storeStrong(&v17->_zoneID, a4);
    v17->_zoneRow = a5;
    v20 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observersForAllModels = v17->_observersForAllModels;
    v17->_observersForAllModels = v20;

    v22 = [MEMORY[0x277CBEB38] dictionary];
    modelObserversByModelID = v17->_modelObserversByModelID;
    v17->_modelObserversByModelID = v22;

    v24 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    mirrorOutputObservers = v17->_mirrorOutputObservers;
    v17->_mirrorOutputObservers = v24;

    objc_storeStrong(&v17->_mirror, a7);
    v26 = [v14 delegate];
    objc_storeWeak(&v17->_delegate, v26);

    v27 = [v14 copy];
    configuration = v17->_configuration;
    v17->_configuration = v27;

    v29 = [v14 modelContainer];

    if (v29)
    {
      v30 = v14;
    }

    else
    {
      v30 = v12;
    }

    v31 = [v30 modelContainer];
    v32 = [v31 copy];
    modelContainer = v17->_modelContainer;
    v17->_modelContainer = v32;

    [(HMBModelContainer *)v17->_modelContainer updateLocalZone:v17];
    if (v15)
    {
      [(HMBModelContainer *)v17->_modelContainer updateMirror:v15];
    }
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25, &__block_literal_global_1527);
  }

  v3 = logCategory__hmf_once_v26;

  return v3;
}

uint64_t __27__HMBLocalZone_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v26;
  logCategory__hmf_once_v26 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)migrateUnsupportedModels
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [HMBLocalZoneQueryResultAllOfTypeRaw alloc];
  v4 = [(HMBLocalZone *)self zoneRow];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(HMBLocalZoneQueryResultAllOfTypeRaw *)v3 initWithLocalZone:self zoneRow:v4 modelType:v6 returning:-1];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HMBLocalZone_MigrateUnsupported__migrateUnsupportedModels__block_invoke;
  v15[3] = &unk_2786E0840;
  v15[4] = self;
  [(HMBSQLQueryIterator *)v7 enumerateObjectsUsingBlock:v15];
  v8 = [(HMBSQLQueryIterator *)v7 error];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMBSQLQueryIterator *)v7 error];
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to iterate through unknown models in zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60__HMBLocalZone_MigrateUnsupported__migrateUnsupportedModels__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v28 = 0;
  v5 = [v4 modelFromRecord:v3 storageLocation:2 error:&v28];
  v6 = v28;
  if (v5)
  {
    if ([v5 hmbIsModelGenericRepresentation])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v10;
        v31 = 2112;
        v32 = v5;
        _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Not migrating unsupported model that has a generic representation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v11 = [v5 hmbType];
      v12 = [*(a1 + 32) modelContainer];
      v13 = [v12 schemaHashForModel:v5];

      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138544130;
        v30 = v17;
        v31 = 2112;
        v32 = v11;
        v33 = 2112;
        v34 = v13;
        v35 = 2112;
        v36 = v5;
        _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating model type to %@ and schema to %@ for previously-unsupported model: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [*(a1 + 32) sql];
      v27 = v6;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __60__HMBLocalZone_MigrateUnsupported__migrateUnsupportedModels__block_invoke_42;
      v23[3] = &unk_2786E2418;
      v24 = v3;
      v25 = v11;
      v26 = v13;
      v19 = v13;
      v20 = v11;
      [v18 sqlBlockWithActivity:0 error:&v27 block:v23];
      v21 = v27;

      v6 = v21;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

id __60__HMBLocalZone_MigrateUnsupported__migrateUnsupportedModels__block_invoke_42(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 recordRow];
  v6 = a1[5];
  v7 = a1[6];
  v10 = 0;
  [v4 _updateRecordWithRow:v5 modelType:v6 modelSchema:v7 error:&v10];

  v8 = v10;

  return v8;
}

- (id)createMirrorInputWithError:(id *)a3
{
  v4 = [(HMBLocalZone *)self createInputBlockWithType:1 error:a3];
  if (v4)
  {
    v5 = [(HMBLocalZoneInput *)[HMBLocalZoneMirrorInput alloc] initWithLocalZone:self inputBlock:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)removeOutputBlockWithRow:(unint64_t)a3 error:(id *)a4
{
  v7 = [(HMBLocalZone *)self sql];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HMBLocalZone_MirrorOutput__removeOutputBlockWithRow_error___block_invoke;
  v9[3] = &unk_2786E2460;
  v9[4] = self;
  v9[5] = a3;
  LOBYTE(a4) = [v7 sqlTransactionWithActivity:0 error:a4 block:v9];

  return a4;
}

id __61__HMBLocalZone_MirrorOutput__removeOutputBlockWithRow_error___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  v23 = 0;
  v5 = [v3 _resetOutputForRecordsWithBlockRow:v4 error:&v23];
  v6 = v23;
  if ((v5 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543874;
      v25 = v10;
      v26 = 2048;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to reset output for records with output block row %lu: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *(a1 + 40);
  v22 = v6;
  v13 = [v3 _deleteBlockWithRow:v12 error:&v22];
  v14 = v22;

  if ((v13 & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543874;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete block with output block row %lu: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)markGroupAsSentWithOutputBlock:(unint64_t)a3 tuples:(id)a4
{
  v6 = a4;
  v7 = [(HMBLocalZone *)self sql];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HMBLocalZone_MirrorOutput__markGroupAsSentWithOutputBlock_tuples___block_invoke;
  v11[3] = &unk_2786E2460;
  v12 = v6;
  v13 = a3;
  v8 = v6;
  v9 = [v7 sqlTransactionWithActivity:0 block:v11];

  return v9;
}

id __68__HMBLocalZone_MirrorOutput__markGroupAsSentWithOutputBlock_tuples___block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v43 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = *v48;
  v45 = v3;
  do
  {
    v7 = 0;
    do
    {
      if (*v48 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v47 + 1) + 8 * v7);
      v9 = v3;
      v10 = v8;
      v11 = [v10 model];

      v12 = [v10 recordRow];
      if (v11)
      {
        v13 = [v10 externalID];
        v14 = [v10 externalData];
        v52 = 0;
        [v9 _updateRecordWithRow:v12 externalID:v13 externalData:v14 error:&v52];
        v15 = v52;

        v16 = [v10 recordRow];
        v17 = [v10 outputBlockRow];
        v51 = v15;
        v18 = [v9 _clearPushForRecordRow:v16 expectedOutputBlockRow:v17 error:&v51];
        v19 = v51;

        if (v18 != 1)
        {
          if (v18)
          {
            goto LABEL_24;
          }

          v20 = objc_autoreleasePoolPush();
          v21 = v9;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v24 = [v10 recordRow];
            *buf = 138543874;
            *&buf[4] = v23;
            v55 = 2048;
            v56 = v24;
            v57 = 2112;
            v58 = v19;
            v25 = v22;
            v26 = OS_LOG_TYPE_ERROR;
            v27 = "%{public}@Unable to clear output columns for pushed record %lu: %@";
            goto LABEL_16;
          }

LABEL_23:

          objc_autoreleasePoolPop(v20);
          v3 = v45;
          goto LABEL_24;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = v9;
        v22 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        v23 = HMFGetLogIdentifier();
        v32 = [v10 recordRow];
        *buf = 138543618;
        *&buf[4] = v23;
        v55 = 2048;
        v56 = v32;
        v25 = v22;
        v26 = OS_LOG_TYPE_INFO;
        v27 = "%{public}@Not clearing output columns for record %lu because it appears to have changed.";
LABEL_21:
        v31 = 22;
        goto LABEL_22;
      }

      v28 = [v10 outputBlockRow];
      v52 = 0;
      v29 = [v9 _deleteRecordWithRow:v12 expectedOutputBlockRow:v28 error:&v52];
      v19 = v52;
      if (v29 != 2)
      {
        if (v29 == 1)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = v9;
          v22 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            goto LABEL_23;
          }

          v23 = HMFGetLogIdentifier();
          v33 = [v10 recordRow];
          *buf = 138543618;
          *&buf[4] = v23;
          v55 = 2048;
          v56 = v33;
          v25 = v22;
          v26 = OS_LOG_TYPE_INFO;
          v27 = "%{public}@Not removing record %lu because it appears to have changed.";
          goto LABEL_21;
        }

        if (v29)
        {
          goto LABEL_24;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = v9;
        v22 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v23 = HMFGetLogIdentifier();
        v30 = [v10 recordRow];
        *buf = 138543874;
        *&buf[4] = v23;
        v55 = 2048;
        v56 = v30;
        v57 = 2112;
        v58 = v19;
        v25 = v22;
        v26 = OS_LOG_TYPE_ERROR;
        v27 = "%{public}@Unable to delete pushed record %lu: %@";
LABEL_16:
        v31 = 32;
LABEL_22:
        _os_log_impl(&dword_22AD27000, v25, v26, v27, buf, v31);

        goto LABEL_23;
      }

      v34 = [v10 queryTable];
      v35 = [v10 recordRow];
      *buf = v19;
      [v34 _deleteQueryForRecordRow:v35 error:buf];
      v36 = *buf;

      v19 = v36;
LABEL_24:

      if (v19)
      {
        v39 = v19;

        v40 = v39;
        goto LABEL_31;
      }

      ++v7;
    }

    while (v5 != v7);
    v37 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    v5 = v37;
  }

  while (v37);
LABEL_29:

  v38 = *(v43 + 40);
  v46 = 0;
  [v3 _deleteBlockWithRow:v38 error:&v46];
  v39 = v46;
  v40 = 0;
LABEL_31:

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)fetchRecordsForOutputBlock:(unint64_t)a3 error:(id *)a4
{
  v7 = [(HMBLocalZone *)self sql];
  v8 = [v7 queryContextsByModelType];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4549;
  v37 = __Block_byref_object_dispose__4550;
  v38 = 0;
  v9 = [(HMBLocalZone *)self sql];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __63__HMBLocalZone_MirrorOutput__fetchRecordsForOutputBlock_error___block_invoke;
  v32[3] = &unk_2786E1508;
  v32[6] = a3;
  v32[7] = 7;
  v32[4] = self;
  v32[5] = &v33;
  v10 = [v9 sqlBlockWithActivity:0 error:a4 block:v32];

  if (v10)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__4549;
    v30 = __Block_byref_object_dispose__4550;
    v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v34[5], "count")}];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__4549;
    v24 = __Block_byref_object_dispose__4550;
    v25 = 0;
    v11 = v34[5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__HMBLocalZone_MirrorOutput__fetchRecordsForOutputBlock_error___block_invoke_82;
    v14[3] = &unk_2786E1530;
    v18 = &v20;
    v19 = a3;
    v15 = v8;
    v16 = self;
    v17 = &v26;
    [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
    if (a4)
    {
      *a4 = v21[5];
    }

    v12 = v27[5];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v33, 8);

  return v12;
}

id __63__HMBLocalZone_MirrorOutput__fetchRecordsForOutputBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v21 = 0;
  v6 = [v3 _selectRecordsWithBlockRow:v4 returning:v5 error:&v21];
  v7 = v21;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *(*(*(a1 + 40) + 8) + 40);
  if (v10 && ![v10 count])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 48);
      *buf = 138543618;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Deleting block with output block row %lu because it has no corresponding records", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = *(a1 + 48);
    v20 = v7;
    [v3 _deleteBlockWithRow:v16 error:&v20];
    v17 = v20;

    v7 = v17;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

void __63__HMBLocalZone_MirrorOutput__fetchRecordsForOutputBlock_error___block_invoke_82(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 modelType];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  if ([v6 pushEncoding])
  {
    v9 = *(a1 + 40);
    v10 = [v6 pushData];
    v43 = 0;
    v11 = [v9 modelFromData:v10 encoding:objc_msgSend(v6 storageLocation:"pushEncoding") recordRowID:1 error:{objc_msgSend(v6, "recordRow"), &v43}];
    v12 = v43;
    v13 = v43;

    if (v11)
    {
      v37 = v13;
      v38 = v7;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = [*(a1 + 40) allMirrorOutputObservers];
      v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v40;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 localZone:*(a1 + 40) willPerformMirrorOutputForModel:v11];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v16);
      }

      v20 = *(*(*(a1 + 48) + 8) + 40);
      v21 = [HMBMirrorOutputTuple alloc];
      v22 = *(a1 + 64);
      v23 = [v6 recordRow];
      v24 = [v6 externalID];
      v25 = [v6 externalData];
      v26 = [(HMBMirrorOutputTuple *)v21 initWithOutputBlockRow:v22 recordRow:v23 model:v11 queryTable:v8 externalID:v24 externalData:v25];
      [v20 addObject:v26];

      v13 = v37;
      v7 = v38;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
      v34 = *(*(a1 + 48) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = 0;

      *a4 = 1;
    }
  }

  else
  {
    v27 = *(*(*(a1 + 48) + 8) + 40);
    v28 = [HMBMirrorOutputTuple alloc];
    v29 = *(a1 + 64);
    v30 = [v6 recordRow];
    v31 = [v6 externalID];
    v32 = [v6 externalData];
    v33 = [(HMBMirrorOutputTuple *)v28 initWithOutputBlockRow:v29 recordRow:v30 model:0 queryTable:v8 externalID:v31 externalData:v32];
    [v27 addObject:v33];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)fetchOptionsForOutputBlock:(unint64_t)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4549;
  v32 = __Block_byref_object_dispose__4550;
  v33 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __63__HMBLocalZone_MirrorOutput__fetchOptionsForOutputBlock_error___block_invoke;
  v27[3] = &unk_2786E23A0;
  v27[4] = &v28;
  v27[5] = a3;
  v8 = [v7 sqlBlockWithActivity:0 block:v27];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138544130;
      v35 = v12;
      v36 = 2048;
      v37 = a3;
      v38 = 2112;
      v39 = v10;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch options for block at row %lu.%@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    if (a4)
    {
      v13 = v8;
      v14 = 0;
      *a4 = v8;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v29[5])
  {
    v8 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_17;
  }

  v15 = MEMORY[0x277CCAAC8];
  v16 = objc_opt_class();
  v17 = [v29[5] optionsData];
  v26 = 0;
  v18 = [v15 unarchivedObjectOfClass:v16 fromData:v17 error:&v26];
  v8 = v26;

  if (v8)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138544130;
      v35 = v22;
      v36 = 2048;
      v37 = a3;
      v38 = 2112;
      v39 = v20;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive transaction options from options data: %lu.%@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    if (a4)
    {
      v23 = v8;
      v14 = 0;
      *a4 = v8;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = v18;
  }

LABEL_17:
  _Block_object_dispose(&v28, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v14;
}

id __63__HMBLocalZone_MirrorOutput__fetchOptionsForOutputBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [a2 _selectBlockWithRow:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  return v5;
}

- (id)allMirrorOutputObservers
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  v4 = [(HMBLocalZone *)self mirrorOutputObservers];
  v5 = [v4 allObjects];
  [v3 addObjectsFromArray:v5];

  os_unfair_lock_unlock(&self->_propertyLock);
  v6 = [v3 copy];

  return v6;
}

- (void)removeMirrorOutputObserver:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMBLocalZone *)self mirrorOutputObservers];
  [v4 removeObject:v5];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)addMirrorOutputObserver:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMBLocalZone *)self mirrorOutputObservers];
  [v4 addObject:v5];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)rebuildIndexesIfNeeded
{
  v3 = [(HMBLocalZone *)self sql];
  v4 = [v3 queryContextsByModelType];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HMBLocalZone_Queryable__rebuildIndexesIfNeeded__block_invoke;
  v5[3] = &unk_2786E1A38;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __49__HMBLocalZone_Queryable__rebuildIndexesIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegate];
  if ([v7 conformsToProtocol:&unk_283ED1098])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    [v9 localZoneWillReindex:*(a1 + 32)];
  }

  v53 = [v6 context];
  v10 = [*(a1 + 32) sql];

  if (v53 != v10)
  {
    _HMFPreconditionFailure();
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v11 = [*(a1 + 32) sql];
  v58 = 0;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __49__HMBLocalZone_Queryable__rebuildIndexesIfNeeded__block_invoke_2;
  v55[3] = &unk_2786E23C8;
  v55[4] = *(a1 + 32);
  v12 = v6;
  v56 = v12;
  v57 = &v59;
  v13 = [v11 sqlBlockWithActivity:0 error:&v58 block:v55];
  v52 = v58;

  if ((v13 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v12 modelType];
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      v85 = v52;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine index state of %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  if (v60[3])
  {
    v19 = v52;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = *(a1 + 32);
      v21 = [v12 modelType];
      [v9 localZone:v20 willReindexTableForModel:v21];
    }

    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v12 modelType];
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@Preparing to reindex table for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = *(a1 + 32);
    v54 = v52;
    v28 = v27;
    v29 = v12;
    v30 = [v29 context];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = ____reindexTable_block_invoke;
    v77[3] = &unk_2786E1B00;
    v31 = v29;
    v78 = v31;
    v32 = v28;
    v79 = v32;
    LODWORD(v28) = [v30 sqlBlockWithActivity:0 error:&v54 block:v77];

    if (v28)
    {
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 1;
      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__5822;
      v71 = __Block_byref_object_dispose__5823;
      v72 = 0;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 1;
      v33 = [v32 queryModelsOfType:{objc_msgSend(v31, "modelClass")}];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____reindexTable_block_invoke_2;
      v85 = &unk_2786E1A88;
      v51 = v31;
      v86 = v51;
      v88 = &v67;
      v34 = v32;
      v87 = v34;
      v89 = &v63;
      v90 = &v73;
      [v33 enumerateObjectsUsingBlock:buf];
      if (v74[3])
      {
        context = objc_autoreleasePoolPush();
        v35 = v34;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v48 = v33;
          v49 = v5;
          v37 = HMFGetLogIdentifier();
          v38 = v64[3];
          v39 = [v51 modelType];
          *v80 = 138543874;
          *&v80[4] = v37;
          *&v80[12] = 2048;
          *&v80[14] = v38 - 1;
          *&v80[22] = 2112;
          v81 = v39;
          _os_log_impl(&dword_22AD27000, v36, OS_LOG_TYPE_INFO, "%{public}@Total of %lu rows re-indexed for %@.", v80, 0x20u);

          v33 = v48;
          v5 = v49;
        }

        objc_autoreleasePoolPop(context);
        v40 = [v35 sql];
        *v80 = MEMORY[0x277D85DD0];
        *&v80[8] = 3221225472;
        *&v80[16] = ____reindexTable_block_invoke_86;
        v81 = &unk_2786E1B00;
        v82 = v35;
        v83 = v51;
        v41 = [v40 sqlBlockWithActivity:0 error:&v54 block:v80];
      }

      else
      {
        v54 = v68[5];
        v41 = *(v74 + 24);
      }

      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(&v67, 8);

      _Block_object_dispose(&v73, 8);
    }

    else
    {
      v41 = 0;
    }

    v19 = v54;
    if ((v41 & 1) == 0)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = *(a1 + 32);
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        v46 = [v31 modelType];
        *buf = 138543874;
        *&buf[4] = v45;
        *&buf[12] = 2112;
        *&buf[14] = v46;
        *&buf[22] = 2112;
        v85 = v19;
        _os_log_impl(&dword_22AD27000, v44, OS_LOG_TYPE_ERROR, "%{public}@Unable to rebuild index of %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v42);
    }
  }

  _Block_object_dispose(&v59, 8);
  v47 = *MEMORY[0x277D85DE8];
}

id __49__HMBLocalZone_Queryable__rebuildIndexesIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = [*(a1 + 40) modelType];
  v10 = 0;
  v7 = [v4 _selectIndexSentinelForZoneRow:v5 modelType:v6 error:&v10];

  v8 = v10;
  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v7 BOOLValue];
  }

  return v8;
}

- (id)queryModelsRecursivelyStartingWithModelID:(id)a3
{
  v4 = a3;
  v5 = [[HMBLocalZoneQueryResultRecursiveModelID alloc] initWithLocalZone:self modelID:v4];

  return v5;
}

- (id)queryModelsWithParentModelID:(id)a3 ofType:(Class)a4
{
  v6 = a3;
  v7 = [HMBLocalZoneQueryResultParentModelIDOfType alloc];
  v8 = NSStringFromClass(a4);
  v9 = [(HMBLocalZoneQueryResultParentModelIDOfType *)v7 initWithLocalZone:self parentModelID:v6 modelClassName:v8];

  return v9;
}

- (id)queryModelsWithParentModelID:(id)a3
{
  v4 = a3;
  v5 = [[HMBLocalZoneQueryResultParentModelID alloc] initWithLocalZone:self parentModelID:v4];

  return v5;
}

- (id)queryModelsOfType:(Class)a3
{
  v5 = [HMBLocalZoneQueryResultAllOfType alloc];
  v6 = NSStringFromClass(a3);
  v7 = [(HMBLocalZoneQueryResultAllOfType *)v5 initWithLocalZone:self modelClassName:v6];

  return v7;
}

- (id)fetchModels
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5822;
  v15 = __Block_byref_object_dispose__5823;
  v16 = 0;
  v3 = [(HMBLocalZone *)self sql];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__HMBLocalZone_Queryable__fetchModels__block_invoke;
  v10[3] = &unk_2786E1A10;
  v10[4] = &v11;
  v4 = [v3 sqlBlockWithActivity:0 block:v10];

  v5 = [HMBLocalZoneQueryResultRecordColumns alloc];
  v6 = v12[5];
  v7 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  v8 = [(HMBLocalZoneQueryResult *)v5 initWithLocalZone:self statement:v6 initialSequence:&unk_283EB9E70 arguments:MEMORY[0x277CBEC10] maximumRowsPerSelect:v7];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __38__HMBLocalZone_Queryable__fetchModels__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectAllRecordRows];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (id)queryModelsOfType:(Class)a3 properties:(id)a4 filter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HMBLocalZone *)self sql];
  v11 = [v10 queryContextsByClass];
  v12 = [v11 objectForKey:a3];

  if (v12)
  {
    v13 = [v12 performQueryOn:self properties:v8 filter:v9];

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMBLocalZone *)v15 queryModelsOfType:v16 filter:v17, v18];
  }
}

- (id)queryModelsOfType:(Class)a3 filter:(id)a4
{
  v6 = a4;
  v7 = [(HMBLocalZone *)self sql];
  v8 = [v7 queryContextsByClass];
  v9 = [v8 objectForKey:a3];

  if (v9)
  {
    v10 = [v9 performQueryOn:self properties:0 filter:v6];

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMBLocalZone *)v12 queryModelsOfType:v13 predicate:v14, v15];
  }
}

- (id)queryModelsOfType:(Class)a3 predicate:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HMBLocalZone_Queryable__queryModelsOfType_predicate___block_invoke;
  v10[3] = &unk_2786E19E8;
  v11 = v6;
  v7 = v6;
  v8 = [(HMBLocalZone *)self queryModelsOfType:a3 filter:v10];

  return v8;
}

- (BOOL)removeBlockWithRow:(unint64_t)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v10;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Removing block with row %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMBLocalZone *)v8 sql];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__HMBLocalZone_Block__removeBlockWithRow_error___block_invoke;
  v15[3] = &__block_descriptor_40_e37___NSError_16__0__HMBLocalSQLContext_8l;
  v15[4] = a3;
  v12 = [v11 sqlBlockWithActivity:0 error:a4 block:v15];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id __48__HMBLocalZone_Block__removeBlockWithRow_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = 0;
  v4 = a2;
  [v4 _deleteItemsWithBlockRow:v3 error:&v11];
  v5 = v11;
  v6 = *(a1 + 32);
  v10 = v5;
  [v4 _deleteBlockWithRow:v6 error:&v10];

  v7 = v10;
  v8 = v10;

  return v7;
}

- (id)fetchItemsInBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6785;
  v18 = __Block_byref_object_dispose__6786;
  v19 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HMBLocalZone_Block__fetchItemsInBlock_error___block_invoke;
  v11[3] = &unk_2786E2500;
  v13 = &v14;
  v8 = v6;
  v12 = v8;
  LODWORD(a4) = [v7 sqlBlockWithActivity:0 error:a4 block:v11];

  if (a4)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v9;
}

id __47__HMBLocalZone_Block__fetchItemsInBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  v5 = [v4 _selectItemsWithBlockRow:objc_msgSend(v3 returning:"blockRow") error:{-1, &v11}];

  v6 = v11;
  v7 = v11;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  return v6;
}

- (id)fetchReadyBlocksWithType:(unint64_t)a3 error:(id *)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6785;
  v15 = __Block_byref_object_dispose__6786;
  v16 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMBLocalZone_Block__fetchReadyBlocksWithType_error___block_invoke;
  v10[3] = &unk_2786E2140;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = a3;
  LODWORD(a4) = [v7 sqlTransactionWithActivity:0 error:a4 block:v10];

  if (a4)
  {
    v8 = v12[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

id __54__HMBLocalZone_Block__fetchReadyBlocksWithType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[6];
  v13 = 0;
  v7 = [v4 _selectReadyBlocksWithZoneRow:v5 type:v6 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

- (BOOL)_insertDeletionItemsForModelsAndDescendantModelsWithBlockRow:(unint64_t)a3 context:(id)a4 type:(unint64_t)a5 modelIDs:(id)a6 currentDepth:(unint64_t)a7 maximumDepth:(unint64_t)a8 options:(id)a9 error:(id *)a10
{
  v67 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a6;
  v43 = a9;
  v46 = [MEMORY[0x277CBEB58] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = v15;
  v49 = [v16 countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v49)
  {
    v48 = *v53;
    v44 = v16;
    v45 = a3;
    v47 = self;
    while (2)
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v53 != v48)
        {
          objc_enumerationMutation(v16);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        v19 = [(HMBLocalZone *)self zoneRow];
        v51 = 0;
        v20 = [v14 _insertDeletionItemWithZoneRow:v19 blockRow:a3 type:a5 modelID:v18 error:&v51];
        v21 = v51;
        if (!v20)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138544386;
            v57 = v37;
            v58 = 2048;
            v59 = v45;
            v60 = 2048;
            v61 = a5;
            v62 = 2112;
            v63 = v18;
            v64 = 2112;
            v65 = v21;
            _os_log_impl(&dword_22AD27000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to insert deletion item with blockRow: %lu type: %lu modelID: %@: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v34);
          v32 = v43;
          if (a10)
          {
            v38 = v21;
            *a10 = v21;
          }

          v16 = v44;
          v33 = 0;
          goto LABEL_24;
        }

        v22 = [(HMBLocalZone *)self zoneRow];
        v50 = v21;
        v23 = [v14 _selectRecordsWithZoneRow:v22 parentModelID:v18 returning:0 error:&v50];
        v24 = v50;

        if (v23)
        {
          v25 = [v23 na_map:&__block_literal_global_6789];
          [v46 addObjectsFromArray:v25];
        }

        else
        {
          v26 = a5;
          v27 = objc_autoreleasePoolPush();
          v28 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v31 = v30 = v14;
            *buf = 138543874;
            v57 = v31;
            v58 = 2112;
            v59 = v18;
            v60 = 2112;
            v61 = v24;
            _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to select records with parentModelID: %@: %@", buf, 0x20u);

            v14 = v30;
            v16 = v44;
          }

          objc_autoreleasePoolPop(v27);
          a5 = v26;
          a3 = v45;
        }

        self = v47;
      }

      v49 = [v16 countByEnumeratingWithState:&v52 objects:v66 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

  if (a7 >= a8)
  {
    v33 = 1;
    v32 = v43;
  }

  else
  {
    v32 = v43;
    if ([v46 count])
    {
      v33 = [(HMBLocalZone *)self _insertDeletionItemsForModelsAndDescendantModelsWithBlockRow:a3 context:v14 type:a5 modelIDs:v46 currentDepth:a7 + 1 maximumDepth:a8 options:v43 error:a10];
    }

    else
    {
      v33 = 1;
    }
  }

LABEL_24:

  v39 = *MEMORY[0x277D85DE8];
  return v33;
}

- (unint64_t)insertBlockToRemoveModelsAndDescendantModelsWithType:(unint64_t)a3 modelIDs:(id)a4 depth:(unint64_t)a5 options:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v14 = [(HMBLocalZone *)self sql];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HMBLocalZone_Block__insertBlockToRemoveModelsAndDescendantModelsWithType_modelIDs_depth_options_error___block_invoke;
  v19[3] = &unk_2786E2190;
  v22 = &v25;
  v23 = a3;
  v19[4] = self;
  v15 = v12;
  v20 = v15;
  v24 = a5;
  v16 = v13;
  v21 = v16;
  LODWORD(a7) = [v14 sqlTransactionWithActivity:0 error:a7 block:v19];

  if (a7)
  {
    v17 = v26[3];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v25, 8);
  return v17;
}

id __105__HMBLocalZone_Block__insertBlockToRemoveModelsAndDescendantModelsWithType_modelIDs_depth_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[8];
  v23 = 0;
  v7 = [v4 _insertBlockWithZoneRow:v5 type:v6 error:&v23];
  v8 = v23;
  *(*(a1[7] + 8) + 24) = v7;
  v9 = a1[6];
  v10 = *(*(a1[7] + 8) + 24);
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[8];
  v14 = a1[9];
  v22 = v8;
  [v11 _insertDeletionItemsForModelsAndDescendantModelsWithBlockRow:v10 context:v4 type:v13 modelIDs:v12 currentDepth:1 maximumDepth:v14 options:v9 error:&v22];
  v15 = v22;

  v16 = a1[6];
  v17 = *(*(a1[7] + 8) + 24);
  v21 = v15;
  [v4 _updateBlockWithRow:v17 options:v16 error:&v21];

  v18 = v21;
  v19 = v21;

  return v18;
}

- (unint64_t)insertBlockToRemoveChildModelsWithType:(unint64_t)a3 parentModelID:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = [(HMBLocalZone *)self sql];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HMBLocalZone_Block__insertBlockToRemoveChildModelsWithType_parentModelID_options_error___block_invoke;
  v17[3] = &unk_2786E2168;
  v20 = &v22;
  v21 = a3;
  v17[4] = self;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  LODWORD(a6) = [v12 sqlTransactionWithActivity:0 error:a6 block:v17];

  if (a6)
  {
    v15 = v23[3];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v15;
}

id __90__HMBLocalZone_Block__insertBlockToRemoveChildModelsWithType_parentModelID_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = *(a1 + 64);
  v21 = 0;
  v7 = [v4 _insertBlockWithZoneRow:v5 type:v6 error:&v21];
  v8 = v21;
  *(*(*(a1 + 56) + 8) + 24) = v7;
  v9 = [*(a1 + 32) zoneRow];
  v10 = *(a1 + 64);
  v11 = *(*(*(a1 + 56) + 8) + 24);
  v12 = *(a1 + 40);
  v20 = v8;
  [v4 _insertDeletionItemsWithZoneRow:v9 blockRow:v11 type:v10 parentModelID:v12 error:&v20];
  v13 = v20;

  v14 = *(a1 + 48);
  v15 = *(*(*(a1 + 56) + 8) + 24);
  v19 = v13;
  [v4 _updateBlockWithRow:v15 options:v14 error:&v19];

  v16 = v19;
  v17 = v19;

  return v16;
}

- (unint64_t)insertBlockToRemoveAllModelsWithType:(unint64_t)a3 modelTypes:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = [(HMBLocalZone *)self sql];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__HMBLocalZone_Block__insertBlockToRemoveAllModelsWithType_modelTypes_options_error___block_invoke;
  v17[3] = &unk_2786E2168;
  v20 = &v22;
  v21 = a3;
  v17[4] = self;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  LODWORD(a6) = [v12 sqlTransactionWithActivity:0 error:a6 block:v17];

  if (a6)
  {
    v15 = v23[3];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v15;
}

id __85__HMBLocalZone_Block__insertBlockToRemoveAllModelsWithType_modelTypes_options_error___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) zoneRow];
  v5 = *(a1 + 64);
  v30 = 0;
  v6 = [v3 _insertBlockWithZoneRow:v4 type:v5 error:&v30];
  v7 = v30;
  *(*(*(a1 + 56) + 8) + 24) = v6;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * v12);
        v15 = [*(a1 + 32) zoneRow];
        v16 = *(a1 + 64);
        v17 = *(*(*(a1 + 56) + 8) + 24);
        v25 = v13;
        [v3 _insertDeletionItemsWithZoneRow:v15 blockRow:v17 type:v16 modelType:v14 error:&v25];
        v7 = v25;

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v18 = *(a1 + 48);
  v19 = *(*(*(a1 + 56) + 8) + 24);
  v24 = v7;
  [v3 _updateBlockWithRow:v19 options:v18 error:&v24];
  v20 = v24;
  v21 = v24;

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (unint64_t)insertBlockWithType:(unint64_t)a3 options:(id)a4 items:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = [(HMBLocalZone *)self sql];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HMBLocalZone_Block__insertBlockWithType_options_items_error___block_invoke;
  v17[3] = &unk_2786E2168;
  v20 = &v22;
  v21 = a3;
  v17[4] = self;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  LODWORD(a6) = [v12 sqlTransactionWithActivity:0 error:a6 block:v17];

  if (a6)
  {
    v15 = v23[3];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v15;
}

id __63__HMBLocalZone_Block__insertBlockWithType_options_items_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[8];
  v7 = a1[5];
  v8 = a1[6];
  v11 = 0;
  v9 = [v4 _insertBlockWithZoneRow:v5 type:v6 options:v7 items:v8 error:&v11];

  result = v11;
  *(*(a1[7] + 8) + 24) = v9;
  return result;
}

- (id)createInputBlockWithType:(unint64_t)a3 error:(id *)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HMBLocalZone_Block__createInputBlockWithType_error___block_invoke;
  v15[3] = &unk_2786E2140;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = a3;
  LODWORD(a4) = [v7 sqlBlockWithActivity:0 error:a4 block:v15];

  if (a4)
  {
    v8 = [HMBLocalSQLContextInputBlock alloc];
    v9 = [(HMBLocalZone *)self sql];
    v10 = [(HMBLocalZone *)self zoneID];
    v11 = [v10 name];
    v12 = [(HMBLocalZone *)self zoneRow];
    v13 = [(HMBLocalSQLContextInputBlock *)v8 initWithOwner:v9 identifier:v11 zoneRow:v12 blockRow:v17[3] type:a3];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v13;
}

id __54__HMBLocalZone_Block__createInputBlockWithType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[6];
  v9 = 0;
  v7 = [v4 _insertBlockWithZoneRow:v5 type:v6 error:&v9];

  result = v9;
  *(*(a1[5] + 8) + 24) = v7;
  return result;
}

- (id)createOutputBlockWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__HMBLocalZone_Block__createOutputBlockWithError___block_invoke;
  v13[3] = &unk_2786E2500;
  v13[4] = self;
  v13[5] = &v14;
  LODWORD(a3) = [v5 sqlBlockWithActivity:0 error:a3 block:v13];

  if (a3)
  {
    v6 = [HMBLocalSQLContextOutputBlock alloc];
    v7 = [(HMBLocalZone *)self sql];
    v8 = [(HMBLocalZone *)self zoneID];
    v9 = [v8 name];
    v10 = [(HMBLocalZone *)self zoneRow];
    v11 = [(HMBLocalSQLContextOutputBlock *)v6 initWithOwner:v7 identifier:v9 zoneRow:v10 blockRow:v15[3]];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

id __50__HMBLocalZone_Block__createOutputBlockWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = 0;
  v5 = [v4 _insertBlockWithZoneRow:objc_msgSend(v3 type:"zoneRow") error:{0, &v7}];

  result = v7;
  *(*(*(a1 + 40) + 8) + 24) = v5;
  return result;
}

- (id)update:(id)a3 remove:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v45 = v11;
    v46 = 2112;
    v47 = v6;
    v48 = 2112;
    v49 = v7;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Asked to update models: %@ remove model IDs: %@", buf, 0x20u);
  }

  v32 = v7;

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    obj = v13;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [(HMBLocalZone *)v9 modelContainer];
        v38 = 0;
        v20 = [v19 dataFromModel:v18 encoding:2 storageLocation:3 updatedModelIDs:0 error:&v38];
        v21 = v38;

        if (!v20)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = v9;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543874;
            v45 = v29;
            v46 = 2112;
            v47 = v18;
            v48 = 2112;
            v49 = v21;
            _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode model %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v26);
          v25 = v32;
          v13 = obj;
          v23 = obj;
          goto LABEL_15;
        }

        v22 = [[HMBLocalZoneRawUpdateEntry alloc] initWithModel:v18 encoded:v20];
        [v12 addObject:v22];
      }

      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v23 = [(HMBLocalZone *)v9 localDatabase];
  v24 = [v23 local];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __37__HMBLocalZone_Model__update_remove___block_invoke;
  v34[3] = &unk_2786E2418;
  v35 = v12;
  v36 = v9;
  v25 = v32;
  v37 = v32;
  v21 = [v24 sqlTransactionWithActivity:0 block:v34];

LABEL_15:
  v30 = *MEMORY[0x277D85DE8];

  return v21;
}

id __37__HMBLocalZone_Model__update_remove___block_invoke(id *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = a1[4];
  v37 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  v4 = 0;
  if (v37)
  {
    v5 = *v47;
    v30 = *v47;
    while (2)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v46 + 1) + 8 * i);
        v8 = [a1[5] zoneRow];
        v9 = [v7 model];
        v10 = [v9 hmbModelID];
        v45 = v4;
        v11 = [v3 _selectRecordWithZoneRow:v8 modelID:v10 returning:2 error:&v45];
        v12 = v45;

        if (v12)
        {
          v27 = v12;

          goto LABEL_21;
        }

        if (v11)
        {
          v13 = [v11 recordRow];
          v14 = [v7 encoded];
          v43 = 0;
          [v3 _updateRecordWithRow:v13 modelEncoding:2 modelData:v14 modelSchema:0 error:&v43];
          v4 = v43;
        }

        else
        {
          v33 = [a1[5] zoneRow];
          v14 = [v7 model];
          v34 = [v14 hmbModelID];
          v36 = [v7 model];
          v32 = [v36 hmbParentModelID];
          v35 = [v7 model];
          v15 = [v35 hmbType];
          v16 = [v7 encoded];
          v44 = 0;
          v17 = [v3 _insertRecordWithZoneRow:v33 externalID:0 externalData:0 modelID:v34 parentModelID:v32 modelType:v15 modelEncoding:2 modelData:v16 modelSchema:0 pushEncoding:0 pushData:0 pushBlockRow:0 error:&v44];
          v4 = v44;
          v18 = [v7 model];
          [v18 setHmbRecordRow:v17];

          v5 = v30;
        }
      }

      v37 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = a1[6];
  v20 = [v19 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      v23 = 0;
      v24 = v4;
      do
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v39 + 1) + 8 * v23);
        v26 = [a1[5] zoneRow];
        v38 = v24;
        [v3 _deleteRecordWithZoneRow:v26 modelID:v25 error:&v38];
        v4 = v38;

        ++v23;
        v24 = v4;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v21);
  }

  v27 = v4;
LABEL_21:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)modelFromData:(id)a3 encoding:(unint64_t)a4 storageLocation:(unint64_t)a5 recordRowID:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = [(HMBLocalZone *)self modelContainer];
  v14 = [v13 modelFromData:v12 encoding:a4 storageLocation:a5 error:a7];

  [v14 setHmbRecordRow:a6];

  return v14;
}

- (id)modelFromRecord:(id)a3 storageLocation:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 modelData];
  if (v8 && [v7 modelEncoding])
  {
    v9 = -[HMBLocalZone modelFromData:encoding:storageLocation:recordRowID:error:](self, "modelFromData:encoding:storageLocation:recordRowID:error:", v8, [v7 modelEncoding], 2, objc_msgSend(v7, "recordRow"), a5);
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *a5 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)removeAllRecordsWithError:(id *)a3
{
  v5 = [(HMBLocalZone *)self sql];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMBLocalZone_Record_Internal__removeAllRecordsWithError___block_invoke;
  v7[3] = &unk_2786E24B0;
  v7[4] = self;
  LOBYTE(a3) = [v5 sqlTransactionWithActivity:0 error:a3 block:v7];

  return a3;
}

id __59__HMBLocalZone_Record_Internal__removeAllRecordsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7414;
  v24 = __Block_byref_object_dispose__7415;
  v25 = 0;
  v4 = [*(a1 + 32) zoneRow];
  v5 = (v21 + 5);
  obj = v21[5];
  [v3 _deleteRecordsWithZoneRow:v4 error:&obj];
  objc_storeStrong(v5, obj);
  v6 = [*(a1 + 32) zoneRow];
  v7 = (v21 + 5);
  v18 = v21[5];
  [v3 _deleteItemWithZoneRow:v6 error:&v18];
  objc_storeStrong(v7, v18);
  v8 = [*(a1 + 32) zoneRow];
  v9 = (v21 + 5);
  v17 = v21[5];
  [v3 _deleteBlocksWithZoneRow:v8 error:&v17];
  objc_storeStrong(v9, v17);
  v10 = [*(a1 + 32) zoneRow];
  v11 = (v21 + 5);
  v16 = v21[5];
  [v3 _deleteIndexSentinelsWithZoneRow:v10 error:&v16];
  objc_storeStrong(v11, v16);
  v12 = [v3 queryContextsByModelType];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HMBLocalZone_Record_Internal__removeAllRecordsWithError___block_invoke_2;
  v15[3] = &unk_2786E2488;
  v15[4] = *(a1 + 32);
  v15[5] = &v20;
  [v12 enumerateKeysAndObjectsUsingBlock:v15];

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v13;
}

void __59__HMBLocalZone_Record_Internal__removeAllRecordsWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 zoneRow];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  [v5 _deleteQueryForRecordRow:v6 error:&obj];

  objc_storeStrong((v7 + 40), obj);
}

- (id)setExternalID:(id)a3 externalData:(id)a4 forRecordRow:(unint64_t)a5
{
  v7 = a3;
  v8 = [(HMBLocalZone *)self sql];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HMBLocalZone_Record_Internal__setExternalID_externalData_forRecordRow___block_invoke;
  v12[3] = &unk_2786E2460;
  v13 = v7;
  v14 = a5;
  v9 = v7;
  v10 = [v8 sqlBlockWithActivity:0 block:v12];

  return v10;
}

id __73__HMBLocalZone_Record_Internal__setExternalID_externalData_forRecordRow___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = 0;
  [a2 _updateRecordWithRow:v2 externalID:v3 externalData:v3 error:&v6];
  v4 = v6;

  return v4;
}

- (id)queryAllRowRecordsReturning:(unint64_t)a3
{
  v5 = [(HMBLocalZone *)self sql];
  v6 = [v5 selectAllRecordsWithZoneRow:-[HMBLocalZone zoneRow](self returning:{"zoneRow"), a3}];

  return v6;
}

- (id)fetchExternalIDsForModelIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [(HMBLocalZone *)self sql];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HMBLocalZone_Record_Internal__fetchExternalIDsForModelIDs_error___block_invoke;
  v15[3] = &unk_2786E2418;
  v9 = v6;
  v16 = v9;
  v17 = self;
  v10 = v7;
  v18 = v10;
  LODWORD(v7) = [v8 sqlBlockWithActivity:0 error:a4 block:v15];

  v11 = 0;
  if (v7)
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = [v10 na_map:&__block_literal_global_7417];
    v11 = [v12 setWithArray:v13];
  }

  return v11;
}

id __67__HMBLocalZone_Record_Internal__fetchExternalIDsForModelIDs_error___block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v18 + 1) + 8 * v9);
        v12 = [a1[5] zoneRow];
        v17 = v10;
        v13 = [v3 _selectRecordWithZoneRow:v12 modelID:v11 returning:3 error:&v17];
        v7 = v17;

        if (v7)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13 == 0;
        }

        if (!v14)
        {
          [a1[6] addObject:v13];
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchRecordRowWithExternalID:(id)a3 returning:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7414;
  v21 = __Block_byref_object_dispose__7415;
  v22 = 0;
  v9 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HMBLocalZone_Record_Internal__fetchRecordRowWithExternalID_returning_error___block_invoke;
  v13[3] = &unk_2786E23F0;
  v15 = &v17;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v16 = a4;
  LODWORD(a5) = [v9 sqlBlockWithActivity:0 error:a5 block:v13];

  if (a5)
  {
    v11 = v18[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

id __78__HMBLocalZone_Record_Internal__fetchRecordRowWithExternalID_returning_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[7];
  v14 = 0;
  v8 = [v4 _selectRecordWithZoneRow:v5 externalID:v6 returning:v7 error:&v14];

  v9 = v14;
  v10 = v14;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;

  return v9;
}

- (id)fetchRecordRowWithModelID:(id)a3 returning:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7414;
  v21 = __Block_byref_object_dispose__7415;
  v22 = 0;
  v9 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HMBLocalZone_Record_Internal__fetchRecordRowWithModelID_returning_error___block_invoke;
  v13[3] = &unk_2786E23F0;
  v15 = &v17;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v16 = a4;
  LODWORD(a5) = [v9 sqlBlockWithActivity:0 error:a5 block:v13];

  if (a5)
  {
    v11 = v18[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

id __75__HMBLocalZone_Record_Internal__fetchRecordRowWithModelID_returning_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[7];
  v14 = 0;
  v8 = [v4 _selectRecordWithZoneRow:v5 modelID:v6 returning:v7 error:&v14];

  v9 = v14;
  v10 = v14;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;

  return v9;
}

- (id)fetchModelWithModelID:(id)a3 recordRow:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7414;
  v21 = __Block_byref_object_dispose__7415;
  v22 = 0;
  v9 = [(HMBLocalZone *)self sql];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HMBLocalZone_Record_Internal__fetchModelWithModelID_recordRow_error___block_invoke;
  v14[3] = &unk_2786E23C8;
  v16 = &v17;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  v11 = [v9 sqlBlockWithActivity:0 error:a5 block:v14];

  if (v11)
  {
    if (a4)
    {
      *a4 = [v18[5] recordRow];
    }

    v12 = [(HMBLocalZone *)self modelFromRecord:v18[5] storageLocation:2 error:a5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

id __71__HMBLocalZone_Record_Internal__fetchModelWithModelID_recordRow_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v13 = 0;
  v7 = [v4 _selectRecordWithZoneRow:v5 modelID:v6 returning:2 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

- (id)fetchModelWithRecordRow:(unint64_t)a3 error:(id *)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7414;
  v15 = __Block_byref_object_dispose__7415;
  v16 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HMBLocalZone_Record_Internal__fetchModelWithRecordRow_error___block_invoke;
  v10[3] = &unk_2786E23A0;
  v10[4] = &v11;
  v10[5] = a3;
  LODWORD(a3) = [v7 sqlBlockWithActivity:0 error:a4 block:v10];

  if (a3)
  {
    v8 = [(HMBLocalZone *)self modelFromRecord:v12[5] storageLocation:2 error:a4];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

id __63__HMBLocalZone_Record_Internal__fetchModelWithRecordRow_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [a2 _selectRecordWithRow:v3 returning:2 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  return v5;
}

- (id)fetchModelsOfType:(Class)a3 error:(id *)a4
{
  v7 = NSStringFromClass(a3);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7414;
  v20 = __Block_byref_object_dispose__7415;
  v21 = 0;
  v8 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__HMBLocalZone_Record__fetchModelsOfType_error___block_invoke;
  v13[3] = &unk_2786E23C8;
  v15 = &v16;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v10 = [v8 sqlBlockWithActivity:0 error:a4 block:v13];

  if (v10)
  {
    v11 = __modelsFromRecords(self, v17[5], a3, a4);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

id __48__HMBLocalZone_Record__fetchModelsOfType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v13 = 0;
  v7 = [v4 _selectRecordsWithZoneRow:v5 modelType:v6 returning:2 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

- (id)fetchAllModelsWithError:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7414;
  v14 = __Block_byref_object_dispose__7415;
  v15 = 0;
  v5 = [(HMBLocalZone *)self sql];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMBLocalZone_Record__fetchAllModelsWithError___block_invoke;
  v9[3] = &unk_2786E2500;
  v9[4] = self;
  v9[5] = &v10;
  v6 = [v5 sqlBlockWithActivity:0 error:a3 block:v9];

  if (v6)
  {
    v7 = __modelsFromRecords(self, v11[5], 0, a3);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

id __48__HMBLocalZone_Record__fetchAllModelsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  v5 = [v4 _selectRecordsWithZoneRow:objc_msgSend(v3 returning:"zoneRow") error:{2, &v11}];

  v6 = v11;
  v7 = v11;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  return v6;
}

- (id)fetchModelsWithParentModelID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7414;
  v19 = __Block_byref_object_dispose__7415;
  v20 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HMBLocalZone_Record__fetchModelsWithParentModelID_error___block_invoke;
  v12[3] = &unk_2786E23C8;
  v14 = &v15;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = [v7 sqlBlockWithActivity:0 error:a4 block:v12];

  if (v9)
  {
    v10 = __modelsFromRecords(self, v16[5], 0, a4);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

id __59__HMBLocalZone_Record__fetchModelsWithParentModelID_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v13 = 0;
  v7 = [v4 _selectRecordsWithZoneRow:v5 parentModelID:v6 returning:2 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

- (id)fetchModelsWithParentModelID:(id)a3 ofType:(Class)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7414;
  v25 = __Block_byref_object_dispose__7415;
  v26 = 0;
  v11 = [(HMBLocalZone *)self sql];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__HMBLocalZone_Record__fetchModelsWithParentModelID_ofType_error___block_invoke;
  v17[3] = &unk_2786E24D8;
  v20 = &v21;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v14 = [v11 sqlBlockWithActivity:0 error:a5 block:v17];

  if (v14)
  {
    v15 = __modelsFromRecords(self, v22[5], a4, a5);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v15;
}

id __66__HMBLocalZone_Record__fetchModelsWithParentModelID_ofType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[6];
  v14 = 0;
  v8 = [v4 _selectRecordWithZoneRow:v5 parentModelID:v6 modelType:v7 returning:2 error:&v14];

  v9 = v14;
  v10 = v14;
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;

  return v9;
}

- (id)fetchModelWithModelID:(id)a3 ofType:(Class)a4 error:(id *)a5
{
  v6 = [(HMBLocalZone *)self fetchModelWithModelID:a3 recordRow:0 error:?];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model had unexpected type: %@", objc_opt_class()];
      *a5 = [v7 hmfErrorWithCode:15 reason:v8];

      a5 = 0;
    }
  }

  else
  {
    a5 = v6;
  }

  return a5;
}

@end