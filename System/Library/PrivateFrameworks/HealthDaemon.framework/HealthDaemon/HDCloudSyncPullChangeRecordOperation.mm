@interface HDCloudSyncPullChangeRecordOperation
- (HDCloudSyncPullChangeRecordOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncPullChangeRecordOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5 sequenceRecord:(id)a6 changeRecord:(id)a7;
- (id)_assetExtractionFailureCountKey;
- (uint64_t)_shouldSucceedWithAssetExtractionError:(uint64_t)a1;
- (void)_handlePossibleCacheDiscrepancyWithRecordID:(void *)a3 fetchError:(void *)a4 errorOut:;
- (void)_setAssetExtractionFailureCount:(void *)a1;
- (void)main;
@end

@implementation HDCloudSyncPullChangeRecordOperation

- (HDCloudSyncPullChangeRecordOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPullChangeRecordOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5 sequenceRecord:(id)a6 changeRecord:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = HDCloudSyncPullChangeRecordOperation;
  v16 = [(HDCloudSyncOperation *)&v19 initWithConfiguration:a3 cloudState:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_target, a5);
    objc_storeStrong(&v17->_sequenceRecord, a6);
    objc_storeStrong(&v17->_changeRecord, a7);
  }

  return v17;
}

- (void)main
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncChangeRecord *)self->_changeRecord sequenceRecordID];
  v4 = [(HDCloudSyncRecord *)self->_sequenceRecord recordID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC3E0]);
    v7 = [(HDCloudSyncRecord *)self->_changeRecord recordID];
    v33[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v9 = [v6 initWithRecordIDs:v8];

    v10 = +[HDCloudSyncChangeRecord assetKeys];
    v11 = +[HDCloudSyncChangeRecord nonAssetKeys];
    v12 = [v10 arrayByAddingObjectsFromArray:v11];
    [v9 setDesiredKeys:v12];

    v13 = [(HDCloudSyncChangeRecord *)self->_changeRecord shouldFetchAssetContentInMemory];
    v14 = v13;
    if (v13)
    {
      [v9 setShouldFetchAssetContentInMemory:1];
      [v9 setDropInMemoryAssetContentASAP:1];
    }

    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__94;
    v31[4] = __Block_byref_object_dispose__94;
    v32 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __44__HDCloudSyncPullChangeRecordOperation_main__block_invoke;
    v29[3] = &unk_278620C18;
    v29[4] = self;
    v29[5] = v31;
    v30 = v14;
    [v9 setPerRecordCompletionBlock:v29];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __44__HDCloudSyncPullChangeRecordOperation_main__block_invoke_306;
    v28[3] = &unk_278620C40;
    v28[4] = self;
    v28[5] = v31;
    [v9 setFetchRecordsCompletionBlock:v28];
    v15 = [(HDCloudSyncOperation *)self configuration];
    v16 = [v15 cachedCloudState];
    [v16 setOperationCountForAnalytics:{objc_msgSend(v16, "operationCountForAnalytics") + 1}];

    v17 = [(HDCloudSyncOperation *)self configuration];
    v18 = [v17 operationGroup];
    [v9 setGroup:v18];

    v19 = [(HDCloudSyncTarget *)self->_target container];
    v20 = [(HDCloudSyncOperation *)self configuration];
    v21 = [v20 repository];
    v22 = [v21 profileIdentifier];
    v23 = HDDatabaseForContainer(v19, v22);

    [v23 addOperation:v9];
    _Block_object_dispose(v31, 8);

    v24 = *MEMORY[0x277D85DE8];
  }

  else
  {
    changeRecord = self->_changeRecord;
    v27 = [MEMORY[0x277CCA9B8] hk_error:709 format:{@"Change record %@ does not match this sequence record (%@)", changeRecord, self->_sequenceRecord}];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v27];
    v26 = *MEMORY[0x277D85DE8];
  }
}

void __44__HDCloudSyncPullChangeRecordOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v29 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "%{public}@: Multiple calls to perRecordCompletionBlock.", buf, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = a2;
    v12 = a3;
    v13 = a4;
    if (v9)
    {
      [v9 updateCompletedProgressCount:100];
      _HKInitializeLogging();
      v14 = MEMORY[0x277CCC328];
      v15 = *MEMORY[0x277CCC328];
      v16 = *MEMORY[0x277CCC328];
      if (v11)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v9;
          *&buf[12] = 2114;
          *&buf[14] = v11;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Persisting fetched change record %{public}@", buf, 0x16u);
        }

        v17 = v11;
        v30 = 0;
        v31 = &v30;
        v32 = 0x3032000000;
        v33 = __Block_byref_object_copy__330;
        v34 = __Block_byref_object_dispose__331;
        v35 = 0;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __103__HDCloudSyncPullChangeRecordOperation__zipArchiveExtractorForChangeRecord_assetContentInMemory_error___block_invoke;
        v37 = &unk_278620C90;
        v41 = v10;
        v40 = &v30;
        v38 = v9;
        v18 = v17;
        v39 = v18;
        if (HKWithAutoreleasePool())
        {
          v19 = v31[5];
        }

        else
        {
          v19 = 0;
        }

        v21 = v19;

        _Block_object_dispose(&v30, 8);
        v22 = 0;
        v20 = v22;
        if (v21)
        {
          v30 = 0;
          v23 = [HDCloudSyncChangeRecord recordWithCKRecord:v18 error:&v30];
          v24 = v30;
          if (v23)
          {
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_2;
            v37 = &unk_27861A028;
            v38 = v23;
            v39 = v9;
            v40 = v21;
            v9 = _Block_copy(buf);
          }

          else
          {
            _HKInitializeLogging();
            v25 = *v14;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v9;
              *&buf[12] = 2114;
              *&buf[14] = v24;
              _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: change record instantiation failed: %{public}@", buf, 0x16u);
            }

            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_313;
            v37 = &unk_278616D40;
            v38 = v24;
            v9 = _Block_copy(buf);
          }
        }

        else
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_312;
          v37 = &unk_278620C68;
          v38 = v22;
          v39 = v9;
          v9 = _Block_copy(buf);
          v24 = v38;
        }
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v9;
          *&buf[12] = 2114;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch change asset: %{public}@", buf, 0x16u);
        }

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke;
        v37 = &unk_27861A028;
        v38 = v13;
        v39 = v9;
        v40 = v12;
        v9 = _Block_copy(buf);

        v20 = v38;
      }
    }

    v26 = *(*(a1 + 40) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v9;
    v28 = *MEMORY[0x277D85DE8];
  }
}

void __44__HDCloudSyncPullChangeRecordOperation_main__block_invoke_306(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = *(v24 + 128);
      *buf = 138543874;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2114;
      v33 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed record fetch for change %{public}@: %{public}@", buf, 0x20u);
    }

    v8 = *(a1 + 32);
    v9 = [v8[16] recordID];
    v27 = 0;
    [(HDCloudSyncPullChangeRecordOperation *)v8 _handlePossibleCacheDiscrepancyWithRecordID:v9 fetchError:v6 errorOut:&v27];
    v10 = v27;
  }

  else
  {
    v15 = *(*(*(a1 + 40) + 8) + 40);
    if (!v15)
    {
      v20 = *(a1 + 32);
      v21 = MEMORY[0x277CCA9B8];
      v22 = [v20[16] recordID];
      v23 = [v21 hk_error:720 format:{@"Failed to fetch requested change record %@", v22}];
      [v20 finishWithSuccess:0 error:v23];

      goto LABEL_7;
    }

    v26 = 0;
    v16 = (*(v15 + 16))(v15, &v26);
    v10 = v26;
    if (v16)
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = *(v18 + 128);
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished record fetch for change %{public}@", buf, 0x16u);
      }

      v11 = *(a1 + 32);
      v12 = 1;
      v13 = 0;
      goto LABEL_6;
    }
  }

  v11 = *(a1 + 32);
  v12 = 0;
  v13 = v10;
LABEL_6:
  [v11 finishWithSuccess:v12 error:v13];

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handlePossibleCacheDiscrepancyWithRecordID:(void *)a3 fetchError:(void *)a4 errorOut:
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a1)
  {
    v8 = a2;
    v9 = [a1 configuration];
    v10 = [v9 cachedCloudState];
    v11 = [a1[14] container];
    v12 = [v11 containerIdentifier];
    v27 = 0;
    v13 = [v10 zoneForRecordID:v8 containerIdentifier:v12 error:&v27];

    v14 = v27;
    if (v13)
    {
      v15 = [a1[14] container];
      v16 = [a1 configuration];
      v17 = [v16 repository];
      v18 = [v17 profileIdentifier];
      HDDatabaseForContainer(v15, v18);
      v19 = v14;
      v21 = v20 = a4;

      v22 = [a1[14] container];
      [v13 handleCloudError:v7 operation:a1 container:v22 database:v21];

      a4 = v20;
      v14 = v19;
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v29 = a1;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup zone during cache discrepancy reporting %{public}@", buf, 0x16u);
      }
    }

    v24 = v7;
    if (v24)
    {
      if (a4)
      {
        v25 = v24;
        *a4 = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v5)
  {
    [(HDCloudSyncPullChangeRecordOperation *)*(a1 + 40) _handlePossibleCacheDiscrepancyWithRecordID:*(a1 + 32) fetchError:a2 errorOut:?];
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      if (a2)
      {
        v7 = v6;
        *a2 = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return 0;
}

uint64_t __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_312(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    if (a2)
    {
      v5 = v4;
      *a2 = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [(HDCloudSyncPullChangeRecordOperation *)v6 _shouldSucceedWithAssetExtractionError:v7];
}

- (uint64_t)_shouldSucceedWithAssetExtractionError:(uint64_t)a1
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 configuration];
    v5 = [v4 repository];
    v6 = [v5 profile];
    v7 = [v6 legacyRepositoryProfile];
    v8 = HDCloudSyncKeyValueDomainWithProfile(v7);

    v9 = [(HDCloudSyncPullChangeRecordOperation *)a1 _assetExtractionFailureCountKey];
    v32 = 0;
    v10 = [v8 numberForKey:v9 error:&v32];
    v11 = v32;
    v12 = v11;
    v13 = MEMORY[0x277CCC328];
    if (!v10)
    {
      if (v11)
      {
        _HKInitializeLogging();
        v14 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v34 = v9;
          v35 = 2114;
          v36 = v12;
          _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to get value for %{public}@: %{public}@.", buf, 0x16u);
        }
      }
    }

    v15 = [v10 integerValue];

    _HKInitializeLogging();
    v16 = *v13;
    v17 = os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR);
    if (v15 > 1)
    {
      if (v17)
      {
        *buf = 138543618;
        v34 = a1;
        v35 = 2114;
        v36 = v3;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: skip record due to multiple failures to extract archive: %{public}@", buf, 0x16u);
      }

      v30 = v3;
      [(HDCloudSyncPullChangeRecordOperation *)a1 _setAssetExtractionFailureCount:?];
      v18 = [*(a1 + 128) decodedSyncAnchorRangeMap];
      v19 = [HDSyncAnchorMap syncAnchorMapWithSyncAnchorRangeMap:v18];
      v20 = [*(a1 + 112) store];
      v21 = [a1 configuration];
      v22 = [v21 repository];
      v23 = [v22 profile];
      v24 = [v23 legacyRepositoryProfile];
      v31 = 0;
      v25 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v19 type:3 store:v20 updatePolicy:1 resetInvalid:0 profile:v24 error:&v31];
      v26 = v31;

      if (!v25)
      {
        _HKInitializeLogging();
        v27 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v34 = a1;
          v35 = 2114;
          v36 = v26;
          _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update anchors when skipping record due to extraction failures: %{public}@", buf, 0x16u);
        }
      }

      a1 = 1;
      v3 = v30;
    }

    else
    {
      if (v17)
      {
        *buf = 138543618;
        v34 = a1;
        v35 = 2114;
        v36 = v3;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: zip extraction failed: %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncPullChangeRecordOperation *)a1 _setAssetExtractionFailureCount:?];
      a1 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (a2)
    {
      v4 = v3;
      *a2 = v3;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

uint64_t __104__HDCloudSyncPullChangeRecordOperation__continuationForFetchedRecord_recordID_inMemoryAsset_fetchError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v82[2] = *MEMORY[0x277D85DE8];
  CFAbsoluteTimeGetCurrent();
  v3 = MEMORY[0x277CCC328];
  v4 = os_signpost_id_make_with_pointer(*MEMORY[0x277CCC328], *(a1 + 32));
  _HKInitializeLogging();
  v5 = *v3;
  if (os_signpost_enabled(v5))
  {
    v6 = v5;
    v7 = v6;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = [*(a1 + 40) configuration];
      v9 = [v8 descriptionForSignpost];
      *buf = 138543362;
      *&buf[4] = v9;
      _os_signpost_emit_with_name_impl(&dword_228986000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "cloud-sync-persist-asset", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = [*(a1 + 32) protocolVersion];
  v13 = v10;
  if (v11)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: persist asset archive", buf, 0xCu);
    }

    v15 = [v11[14] store];
    v16 = [v15 syncStoreForEpoch:{objc_msgSend(v11[15], "baselineEpoch")}];

    if ([v16 protocolVersion] >= v12)
    {
      v20 = [v16 syncStoreForProtocolVersion:v12];

      v16 = v20;
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v16 protocolVersion];
        *buf = 138543874;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        v74 = v19;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Change record has protocol version %ld, which is later than store protocol version %ld. Attempting pull and will re-ingest upon upgrade.", buf, 0x20u);
      }
    }

    v21 = [v13 numberOfEntriesWithError:0];
    v22 = v21;
    if (v21)
    {
      v23 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(v21, "integerValue")}];
      if (v23)
      {
        v24 = [v11 progress];
        [v24 addChild:v23 withPendingUnitCount:100];
      }
    }

    else
    {
      v23 = 0;
    }

    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 1;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__330;
    v67 = __Block_byref_object_dispose__331;
    v68 = 0;
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x2020000000;
    v62[3] = 0;
    v25 = MEMORY[0x277CBEB98];
    v82[0] = objc_opt_class();
    v82[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
    v27 = [v25 setWithArray:v26];

    v28 = v64 + 5;
    obj = v64[5];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke;
    v74 = &unk_278620D08;
    v75 = v11;
    v79 = &v63;
    v29 = v27;
    v76 = v29;
    v80 = &v69;
    v30 = v16;
    v77 = v30;
    v81 = v62;
    v31 = v23;
    v78 = v31;
    LODWORD(v11) = [v13 enumerateEntriesWithError:&obj block:buf];
    objc_storeStrong(v28, obj);
    *(v70 + 24) = v11;
    if (v11)
    {
      v32 = 0;
    }

    else
    {
      v33 = v64[5];
      v32 = v33;
      if (v33)
      {
        v34 = v33;
      }
    }

    _Block_object_dispose(v62, 8);
    _Block_object_dispose(&v63, 8);

    _Block_object_dispose(&v69, 8);
  }

  else
  {
    v32 = 0;
  }

  v35 = v32;
  _HKInitializeLogging();
  v36 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v37 = *(a1 + 32);
    v38 = *(a1 + 40);
    v39 = v36;
    CFAbsoluteTimeGetCurrent();
    v40 = HKDiagnosticStringFromDuration();
    *buf = 138543874;
    *&buf[4] = v38;
    *&buf[12] = 2112;
    *&buf[14] = v37;
    *&buf[22] = 2114;
    v74 = v40;
    _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_INFO, "%{public}@: persisted %@ in %{public}@", buf, 0x20u);
  }

  _HKInitializeLogging();
  v41 = *MEMORY[0x277CCC328];
  if (os_signpost_enabled(*MEMORY[0x277CCC328]))
  {
    v42 = v41;
    v43 = v42;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      v44 = [*(a1 + 40) configuration];
      v45 = [v44 descriptionForSignpost];
      *buf = 67109378;
      *&buf[4] = v11;
      *&buf[8] = 2114;
      *&buf[10] = v45;
      _os_signpost_emit_with_name_impl(&dword_228986000, v43, OS_SIGNPOST_INTERVAL_END, v4, "cloud-sync-persist-asset", "success=%{BOOL}d, %{public}@", buf, 0x12u);
    }
  }

  if (!v11)
  {
    if (v35)
    {
      v35 = v35;
    }

    else
    {
      v35 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Asset extraction failed without producing an error."];
      if (!v35)
      {
LABEL_46:
        v55 = [(HDCloudSyncPullChangeRecordOperation *)*(a1 + 40) _shouldSucceedWithAssetExtractionError:v35];
        goto LABEL_47;
      }
    }

    if (v60)
    {
      v56 = v35;
      *v60 = v35;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_46;
  }

  v47 = *(a1 + 40);
  v46 = (a1 + 40);
  [(HDCloudSyncPullChangeRecordOperation *)v47 _setAssetExtractionFailureCount:?];
  v48 = *v46;
  if (*v46)
  {
    v49 = [*v46 profile];
    v50 = HDCloudSyncKeyValueDomainWithProfile(v49);

    _HKInitializeLogging();
    v51 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_impl(&dword_228986000, v51, OS_LOG_TYPE_INFO, "%{public}@: Recording pull operation applied changes", buf, 0xCu);
    }

    v63 = 0;
    v52 = [v50 setNumber:MEMORY[0x277CBEC38] forKey:@"HDCloudSyncHasPullAppliedChange" error:&v63];
    v53 = v63;
    if ((v52 & 1) == 0)
    {
      _HKInitializeLogging();
      v54 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v53;
        _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "Failed to record pull operation applied changes: %{public}@.", buf, 0xCu);
      }
    }
  }

  v55 = 1;
LABEL_47:

  v57 = *MEMORY[0x277D85DE8];
  return v55;
}

- (void)_setAssetExtractionFailureCount:(void *)a1
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [a1 configuration];
    v5 = [v4 repository];
    v6 = [v5 profile];
    v7 = [v6 legacyRepositoryProfile];
    v8 = HDCloudSyncKeyValueDomainWithProfile(v7);

    v9 = [(HDCloudSyncPullChangeRecordOperation *)a1 _assetExtractionFailureCountKey];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v14 = 0;
    LOBYTE(v5) = [v8 setNumber:v10 forKey:v9 error:&v14];
    v11 = v14;

    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v16 = v9;
        v17 = 2114;
        v18 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to set value for %{public}@: %{public}@.", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __103__HDCloudSyncPullChangeRecordOperation__zipArchiveExtractorForChangeRecord_assetContentInMemory_error___block_invoke(uint64_t a1, void *a2)
{
  *&v87[13] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    if (!v5)
    {
      v36 = 0;
      goto LABEL_58;
    }

    v6 = [HDCloudSyncChangeRecord changesetArchiveContentDataForCKRecord:v4 error:a2];
    if (v6)
    {
      v7 = v6;
      _HKInitializeLogging();
      v8 = MEMORY[0x277CCC328];
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        *buf = 138543618;
        v85 = v5;
        v86 = 2048;
        *v87 = [v7 length];
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: fetched asset data size (%lu)", buf, 0x16u);
      }

      if ([v7 length] <= 0x40000)
      {
        v39 = [v7 copy];
      }

      else
      {
        v79 = [MEMORY[0x277CCAD78] UUID];
        v11 = [v79 UUIDString];
        objc_opt_self();
        v12 = objc_alloc_init(MEMORY[0x277CCAA00]);
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"syncarchive-%@", v11];
        v78 = v11;

        v14 = [v12 temporaryDirectory];
        v76 = v13;
        v15 = [v14 URLByAppendingPathComponent:v13];
        v16 = [v15 URLByAppendingPathExtension:@"zip"];

        _HKInitializeLogging();
        v17 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v54 = v17;
          v55 = [v16 path];
          *buf = 138543362;
          v85 = v55;
          _os_log_debug_impl(&dword_228986000, v54, OS_LOG_TYPE_DEBUG, "Creating asset file %{public}@", buf, 0xCu);
        }

        v18 = [v16 path];
        v19 = [v12 createFileAtPath:v18 contents:0 attributes:0];

        v77 = v12;
        if (v19)
        {
          v81 = 0;
          v20 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingURL:v16 error:&v81];
          v21 = v81;
          v22 = v21;
          if (v20)
          {
            v74 = v21;
            if (fcntl([v20 fileDescriptor], 48, 1))
            {
              _HKInitializeLogging();
              v23 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v63 = v23;
                v64 = [v16 path];
                v65 = v12;
                v66 = *__error();
                v67 = __error();
                v68 = strerror(*v67);
                *buf = 138543874;
                v85 = v64;
                v86 = 1024;
                *v87 = v66;
                v12 = v65;
                v87[2] = 2082;
                *&v87[3] = v68;
                _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "Error setting F_NOCACHE on file at %{public}@ failed (%d): %{public}s", buf, 0x1Cu);
              }
            }

            v24 = *MEMORY[0x277CCA198];
            v25 = *MEMORY[0x277CCA180];
            v82[0] = *MEMORY[0x277CCA1B0];
            v82[1] = v25;
            v83[0] = v24;
            v83[1] = &unk_283CB2178;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
            v27 = [v16 path];
            v80 = 0;
            v75 = v26;
            v28 = [v12 setAttributes:v26 ofItemAtPath:v27 error:&v80];
            v29 = v80;

            if (v28)
            {
              v30 = [v16 path];
              v31 = unlink([v30 fileSystemRepresentation]);

              if (v31)
              {
                _HKInitializeLogging();
                v32 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v69 = v32;
                  v70 = [v16 path];
                  v71 = *__error();
                  v72 = __error();
                  v73 = strerror(*v72);
                  *buf = 138543874;
                  v85 = v70;
                  v86 = 1024;
                  *v87 = v71;
                  v87[2] = 2082;
                  *&v87[3] = v73;
                  _os_log_error_impl(&dword_228986000, v69, OS_LOG_TYPE_ERROR, "Error unlinking file at %{public}@ failed (%d): %{public}s", buf, 0x1Cu);
                }
              }

              v33 = v20;
            }

            else
            {
              v49 = MEMORY[0x277CCACA8];
              v50 = [v16 path];
              v51 = [v49 stringWithFormat:@"Error setting protection class for %@", v50];

              v52 = [MEMORY[0x277CCA9B8] hk_error:102 description:v51 underlyingError:v29];
              if (v52)
              {
                if (a2)
                {
                  v53 = v52;
                  *a2 = v52;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              v33 = 0;
            }

            v22 = v74;
          }

          else
          {
            v44 = [v16 path];
            [v12 removeItemAtPath:v44 error:0];

            v45 = MEMORY[0x277CCACA8];
            v46 = [v16 path];
            v47 = [v45 stringWithFormat:@"Failed to create fileHandle at %@", v46];

            v75 = v47;
            v29 = [MEMORY[0x277CCA9B8] hk_error:102 description:v47 underlyingError:v22];
            if (v29)
            {
              if (a2)
              {
                v48 = v29;
                *a2 = v29;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v33 = 0;
          }
        }

        else
        {
          v40 = MEMORY[0x277CCA9B8];
          v41 = [v16 path];
          v42 = [v40 hk_error:102 format:{@"Error creating file at %@", v41}];

          v20 = v42;
          if (v20)
          {
            if (a2)
            {
              v43 = v20;
              v33 = 0;
              *a2 = v20;
            }

            else
            {
              _HKLogDroppedError();
              v33 = 0;
            }

            v22 = v20;
          }

          else
          {
            v22 = 0;
            v33 = 0;
          }
        }

        v56 = v5[13];
        v5[13] = v33;

        v57 = v5[13];
        if (!v57)
        {
          v36 = 0;
          v37 = v7;
          goto LABEL_57;
        }

        [v57 writeData:v7];
        [v5[13] fileDescriptor];
        v39 = mmapFileDescriptor();
      }

      v37 = v39;

      if (v37)
      {
        if ([v37 length])
        {
          v36 = [objc_alloc(MEMORY[0x277CCDE88]) initWithData:v37];
LABEL_57:

          goto LABEL_58;
        }

        v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"has data size (%lu)", objc_msgSend(v37, "length")];
      }

      else
      {
        v58 = @"is nil";
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a2 code:3 format:{@"cloud sync archive data %@", v58}];
    }

    else
    {
      v37 = 0;
    }

    v36 = 0;
    goto LABEL_57;
  }

  v34 = v4;
  if (v5)
  {
    v35 = [HDCloudSyncChangeRecord changesetArchiveFileHandleForCKRecord:v34 error:a2];
    if (v35)
    {
      v36 = [objc_alloc(MEMORY[0x277CCDE88]) initWithFileHandle:v35];
    }

    else
    {
      v38 = [HDCloudSyncChangeRecord changesetArchiveURLForCKRecord:v34 error:a2];
      if (v38)
      {
        v36 = [objc_alloc(MEMORY[0x277CCDE88]) initWithURL:v38];
      }

      else
      {
        v36 = 0;
      }
    }
  }

  else
  {
    v36 = 0;
  }

LABEL_58:
  v59 = *(*(a1 + 48) + 8);
  v60 = *(v59 + 40);
  *(v59 + 40) = v36;

  v61 = *MEMORY[0x277D85DE8];
  return 1;
}

void __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 pathname];
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: persist change set file %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = __Block_byref_object_copy__330;
  v26 = __Block_byref_object_dispose__331;
  v27 = 0;
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = v3;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v10 = HKWithAutoreleasePool();
  objc_storeStrong((v8 + 40), obj);
  if (v10)
  {
    v11 = *(*(a1 + 64) + 8);
    v20 = *(v11 + 40);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke_337;
    v17 = &unk_278620CE0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v12 = HKWithAutoreleasePool();
    objc_storeStrong((v11 + 40), v20);
    *(*(*(a1 + 72) + 8) + 24) = v12;
  }

  [*(a1 + 56) setCompletedUnitCount:{++*(*(*(a1 + 80) + 8) + 24), v14, v15, v16, v17, v18}];

  _Block_object_dispose(buf, 8);
  v13 = *MEMORY[0x277D85DE8];
}

BOOL __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke_335(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v19 = 0;
  v3 = [v2 dataWithError:&v19];
  v4 = v19;
  if (v3)
  {
    v5 = a1[6];
    v18 = 0;
    v6 = [MEMORY[0x277CCAAC8] hk_unarchivedObjectOfClasses:v5 forKey:@"changes" data:v3 error:&v18];
    v7 = v18;
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    v10 = *(*(a1[7] + 8) + 40);
    v11 = v10 != 0;
    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v17 = a1[5];
        *buf = 138543618;
        v21 = v17;
        v22 = 2114;
        v23 = v7;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive changes: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v16 = a1[5];
      *buf = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v4;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to extract data from archive: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __90__HDCloudSyncPullChangeRecordOperation__persistFetchedArchiveAsset_protocolVersion_error___block_invoke_337(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = *(a1 + 32);
  v26 = 0;
  v7 = v5;
  v8 = v4;
  if (v6)
  {
    v9 = [v6 configuration];
    v10 = [v9 repository];
    v11 = [v10 profile];
    v12 = [v11 legacyRepositoryProfile];

    v13 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v13 setJournalType:2];
    [(HDMutableDatabaseTransactionContext *)v13 setCacheScope:1];
    v14 = [v6 configuration];
    v15 = [v14 accessibilityAssertion];

    if (v15)
    {
      [(HDMutableDatabaseTransactionContext *)v13 addAccessibilityAssertion:v15];
    }

    v16 = [v12 database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __70__HDCloudSyncPullChangeRecordOperation__applySyncChanges_store_error___block_invoke;
    v28 = &unk_27861A218;
    v29 = v12;
    v30 = v7;
    v31 = v6;
    v32 = v8;
    v17 = v12;
    v6 = [v16 performWithTransactionContext:v13 error:&v26 block:buf];
  }

  v18 = v26;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      *buf = 138543874;
      *&buf[4] = v24;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      *&buf[22] = 2114;
      v28 = v18;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Error applying sync changes to store %{public}@ with error %{public}@", buf, 0x20u);
    }

    **(a1 + 56) = 1;
    v20 = v18;
    if (v20)
    {
      if (a2)
      {
        v21 = v20;
        *a2 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __70__HDCloudSyncPullChangeRecordOperation__applySyncChanges_store_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) syncEngine];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = *(a1 + 32);
        v14 = *(a1 + 48);
        v15 = v2;
        v16 = *(a1 + 56);
        v8 = HKWithAutoreleasePool();

        if (!v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __70__HDCloudSyncPullChangeRecordOperation__applySyncChanges_store_error___block_invoke_2(uint64_t *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([a1[4] syncEntityClassForProfile:a1[5]])
  {
    v4 = a1[4];
    v5 = a1[7];
    v6 = a1[8];
    v18 = 0;
    v7 = [v5 applySyncChange:v4 forStore:v6 error:&v18];
    v8 = v18;
    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v17 = a1[4];
        *buf = 138543618;
        v20 = v17;
        v21 = 2114;
        v22 = v8;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "failed to apply request change %{public}@: %{public}@", buf, 0x16u);
      }

      v10 = v8;
      if (v10)
      {
        if (a2)
        {
          v11 = v10;
          *a2 = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[6];
      v14 = a1[4];
      *buf = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: cannot apply change %{public}@ because it is for an unknown (possibly future) sync entity.", buf, 0x16u);
    }

    v7 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_assetExtractionFailureCountKey
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 112) storeRecord];
  v3 = [v2 storeIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v1 stringWithFormat:@"%@%@", @"FailedAssetExtractionCount-", v4];

  return v5;
}

@end