@interface CPLEngineQuarantinedRecords
+ (unint64_t)quarantineRetryCount;
- (BOOL)_quarantineRejectedRecords:(id)a3 error:(id *)a4;
- (BOOL)bumpRejectedRecords:(id)a3 error:(id *)a4;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)isRecordWithScopedIdentifierQuarantined:(id)a3;
- (BOOL)performMaintenanceWithError:(id *)a3;
- (BOOL)removeQuarantinedRecordWithScopedIdentifier:(id)a3 notify:(BOOL)a4 error:(id *)a5;
- (BOOL)resetRejectedRecordsWithError:(id *)a3;
- (Class)classForQuarantinedRecordWithScopedIdentifier:(id)a3;
- (unint64_t)countOfQuarantinedRecords;
- (unint64_t)countOfQuarantinedRecordsInScopeWithIdentifier:(id)a3;
- (void)_sendQuarantineFeedbackWithRecordClass:(Class)a3 reason:(id)a4;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineQuarantinedRecords

- (void)writeTransactionDidSucceed
{
  v8.receiver = self;
  v8.super_class = CPLEngineQuarantinedRecords;
  [(CPLEngineStorage *)&v8 writeTransactionDidSucceed];
  if (self->_rejectedRecordsHasChanges)
  {
    self->_rejectedRecordsHasChanges = 0;
    objc_storeStrong(&self->_rejectedRecords, self->_newRejectedRecords);
    self->_rejectedCount = self->_newRejectedCount;
    newRejectedRecords = self->_newRejectedRecords;
    self->_newRejectedRecords = 0;

    self->_newRejectedCount = 0;
  }

  if ([(NSMutableArray *)self->_quarantineMessages count])
  {
    v4 = [(CPLEngineStorage *)self engineStore];
    v5 = [v4 engineLibrary];
    v6 = [v5 feedback];
    [v6 reportMessages:self->_quarantineMessages];
  }

  quarantineMessages = self->_quarantineMessages;
  self->_quarantineMessages = 0;
}

- (void)writeTransactionDidFail
{
  v5.receiver = self;
  v5.super_class = CPLEngineQuarantinedRecords;
  [(CPLEngineStorage *)&v5 writeTransactionDidFail];
  if (self->_rejectedRecordsHasChanges)
  {
    self->_rejectedRecordsHasChanges = 0;
    newRejectedRecords = self->_newRejectedRecords;
    self->_newRejectedRecords = 0;

    self->_newRejectedCount = 0;
  }

  quarantineMessages = self->_quarantineMessages;
  self->_quarantineMessages = 0;
}

- (BOOL)performMaintenanceWithError:(id *)a3
{
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 statusCenter];
  v7 = [v6 isEmpty];

  if (v7)
  {
    v8 = [(CPLEngineStorage *)self platformObject];
    v13 = 0;
    v9 = [v8 removeRelatedRecordsFromQuarantineWithError:&v13];
    v10 = v13;

    if (a3 && (v9 & 1) == 0)
    {
      v11 = v10;
      v9 = 0;
      *a3 = v10;
    }
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  return v9;
}

- (BOOL)resetRejectedRecordsWithError:(id *)a3
{
  if (self->_rejectedRecords)
  {
    self->_rejectedRecordsHasChanges = 1;
    self->_newRejectedCount = 0;
    newRejectedRecords = self->_newRejectedRecords;
    self->_newRejectedRecords = 0;
  }

  return 1;
}

- (BOOL)bumpRejectedRecords:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!+[CPLEngineQuarantinedRecords quarantineRetryCount])
  {
    v14 = [(CPLEngineQuarantinedRecords *)self _quarantineRejectedRecords:v7 error:a4];
LABEL_15:
    v15 = v14;
    goto LABEL_16;
  }

  if (!v7)
  {
    v14 = [(CPLEngineQuarantinedRecords *)self resetRejectedRecordsWithError:a4];
    goto LABEL_15;
  }

  if (self->_rejectedRecords && ([v7 rejectsTheSameRecordsAs:?] & 1) != 0)
  {
    self->_rejectedRecordsHasChanges = 1;
    v8 = self->_rejectedCount + 1;
    self->_newRejectedCount = v8;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_22181();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 count];
        newRejectedCount = self->_newRejectedCount;
        v11 = [v7 rejectedDescriptions];
        v12 = [v11 componentsJoinedByString:@"\n\t"];
        *buf = 134218498;
        v20 = v10;
        v21 = 2048;
        v22 = newRejectedCount;
        v23 = 2114;
        v24 = v12;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "%lu records have been rejected (%lu):\n\t%{public}@", buf, 0x20u);
      }

      v8 = self->_newRejectedCount;
    }

    if (v8 <= +[CPLEngineQuarantinedRecords quarantineRetryCount])
    {
      objc_storeStrong(&self->_newRejectedRecords, self->_rejectedRecords);
    }

    else
    {
      if (![(CPLEngineQuarantinedRecords *)self _quarantineRejectedRecords:v7 error:a4])
      {
        v15 = 0;
        goto LABEL_16;
      }

      self->_newRejectedCount = 0;
      newRejectedRecords = self->_newRejectedRecords;
      self->_newRejectedRecords = 0;
    }

    v15 = 1;
  }

  else
  {
    v15 = 1;
    self->_rejectedRecordsHasChanges = 1;
    objc_storeStrong(&self->_newRejectedRecords, a3);
    self->_newRejectedCount = 1;
  }

LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_quarantineRejectedRecords:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineStorage *)self engineStore];
  if ([v7 forceApplyPendingChangeSessionUpdateWithError:a4])
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 1;
    v8 = [v7 pushRepository];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_22181();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 count];
        v11 = [v6 rejectedDescriptions];
        v12 = [v11 componentsJoinedByString:@"\n\t"];
        *buf = 134218242;
        *&buf[4] = v10;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%lu records have been rejected too many times. Quarantining them:\n\t%{public}@", buf, 0x16u);
      }
    }

    v13 = [v6 count];
    Mutable = CFDictionaryCreateMutable(0, v13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v59 = __Block_byref_object_copy__22194;
    v60 = __Block_byref_object_dispose__22195;
    v61 = 0;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke;
    v50[3] = &unk_1E861FDC8;
    v16 = Mutable;
    v51 = v16;
    v17 = v15;
    v52 = v17;
    v53 = buf;
    v18 = MEMORY[0x1E128EBA0](v50);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_2;
    v46[3] = &unk_1E861FDF0;
    v19 = v8;
    v47 = v19;
    v20 = v16;
    v48 = v20;
    v21 = v18;
    v49 = v21;
    v22 = MEMORY[0x1E128EBA0](v46);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_42;
    v42[3] = &unk_1E861FE18;
    v42[4] = self;
    v23 = v21;
    v44 = v23;
    v24 = v19;
    v43 = v24;
    v25 = v22;
    v45 = v25;
    [v6 enumerateRecordsAndReasonsUsingBlock:v42];
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__22194;
    v40 = __Block_byref_object_dispose__22195;
    v41 = 0;
    if (*(v55 + 24) == 1)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_47;
      v29[3] = &unk_1E861FE40;
      v30 = v6;
      v31 = self;
      v33 = &v54;
      v34 = buf;
      v35 = &v36;
      v32 = v17;
      [(__CFDictionary *)v20 enumerateKeysAndObjectsUsingBlock:v29];

      v26 = *(v55 + 24);
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v26 = 0;
      if (!a4)
      {
LABEL_13:
        _Block_object_dispose(&v36, 8);

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v54, 8);
        goto LABEL_14;
      }
    }

    if ((v26 & 1) == 0)
    {
      *a4 = v37[5];
      v26 = *(v55 + 24);
    }

    goto LABEL_13;
  }

  v26 = 0;
LABEL_14:

  v27 = *MEMORY[0x1E69E9840];
  return v26 & 1;
}

void __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5)
{
  v15 = a2;
  v9 = a4;
  v10 = [*(a1 + 32) objectForKeyedSubscript:v15];

  if (!v10)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v15];
    [*(a1 + 40) setObject:a5 forKeyedSubscript:v15];
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (a3)
    {
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v11 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v11 addObject:v15];
    }

    else
    {
      [v11 removeObject:v15];
    }
  }
}

void __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = *(a1 + 32);
  v5 = 0x1E8619000uLL;
  v6 = objc_opt_class();
  v31 = v3;
  v7 = [v3 scopedIdentifier];
  v8 = [v4 allChangesWithClass:v6 relatedScopedIdentifier:v7];

  v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v34;
    v13 = &propertiesForChangeType__facesProperties;
    v14 = @"Master has been quarantined";
    *&v10 = 138412546;
    v30 = v10;
    do
    {
      v15 = 0;
      v32 = v11;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v16 = [*(*(&v33 + 1) + 8 * v15) scopedIdentifier];
        v17 = [*(a1 + 40) objectForKeyedSubscript:v16];

        if (!v17)
        {
          if ((v13[51] & 1) == 0)
          {
            v18 = __CPLStorageOSLogDomain_22181();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [v31 scopedIdentifier];
              v19 = a1;
              v20 = v12;
              v21 = v8;
              v22 = v14;
              v23 = v13;
              v25 = v24 = v5;
              *buf = v30;
              v38 = v16;
              v39 = 2112;
              v40 = v25;
              _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Automatically adding %@ to quarantine because %@ has been quarantined", buf, 0x16u);

              v5 = v24;
              v13 = v23;
              v14 = v22;
              v8 = v21;
              v12 = v20;
              a1 = v19;
              v11 = v32;
            }
          }

          v26 = *(a1 + 48);
          v27 = *(v5 + 3616);
          v28 = objc_opt_class();
          (*(v26 + 16))(v26, v16, 0, v14, v28);
        }

        ++v15;
      }

      while (v11 != v15);
      v11 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v11);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_42(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1[4];
  v7 = a3;
  [v6 _sendQuarantineFeedbackWithRecordClass:objc_opt_class() reason:v7];
  v8 = [v5 scopedIdentifier];
  v9 = a1[6];
  v10 = objc_opt_class();
  (*(v9 + 16))(v9, v8, 0, v7, v10);

  if ([v5 isAssetChange] && objc_msgSend(v5, "isFullRecord"))
  {
    v11 = a1[5];
    v12 = [v5 relatedScopedIdentifier];
    v13 = [v11 changeWithScopedIdentifier:v12];

    if (v13 && [v13 isFullRecord])
    {
      v14 = [v13 scopedIdentifier];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLStorageOSLogDomain_22181();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [v5 scopedIdentifier];
          v20 = 138412546;
          v21 = v14;
          v22 = 2112;
          v23 = v16;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Automatically adding %@ to quarantine because %@ has been quarantined", &v20, 0x16u);
        }
      }

      v17 = a1[6];
      v18 = objc_opt_class();
      (*(v17 + 16))(v17, v14, 1, @"Asset has been quarantined", v18);
      (*(a1[7] + 16))();
    }
  }

  else if ([v5 isMasterChange] && objc_msgSend(v5, "isFullRecord"))
  {
    (*(a1[7] + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_47(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) recordWithScopedIdentifier:v7];
  v10 = v9;
  if (!v9)
  {
    v16 = [*(a1 + 48) objectForKeyedSubscript:v7];
    v17 = *(a1 + 40);
    v18 = [*(*(*(a1 + 64) + 8) + 40) containsObject:v7];
    v19 = *(*(a1 + 72) + 8);
    v21 = *(v19 + 40);
    v20 = (v19 + 40);
    v31 = v21;
    v22 = [v17 _addQuarantinedRecordWithScopedIdentifier:v7 related:v18 recordClass:v16 reason:v8 error:&v31];
    v23 = v31;
LABEL_10:
    objc_storeStrong(v20, v23);
    *(*(*(a1 + 56) + 8) + 24) = v22;
    goto LABEL_11;
  }

  if (([v9 isDelete] & 1) == 0)
  {
    v24 = *(a1 + 40);
    v25 = [*(*(*(a1 + 64) + 8) + 40) containsObject:v7];
    v26 = objc_opt_class();
    v27 = *(*(a1 + 72) + 8);
    v28 = *(v27 + 40);
    v20 = (v27 + 40);
    v32 = v28;
    v22 = [v24 _addQuarantinedRecordWithScopedIdentifier:v7 related:v25 recordClass:v26 reason:v8 error:&v32];
    v23 = v32;
    goto LABEL_10;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStorageOSLogDomain_22181();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v10;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Removing %@ from push repository", buf, 0xCu);
    }
  }

  v12 = [*(a1 + 40) engineStore];
  v13 = [v12 pushRepository];
  v14 = *(*(a1 + 72) + 8);
  obj = *(v14 + 40);
  v15 = [v13 discardChangeWithScopedIdentifier:v7 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v15;

LABEL_11:
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_sendQuarantineFeedbackWithRecordClass:(Class)a3 reason:(id)a4
{
  v13 = a4;
  if (!self->_quarantineMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    quarantineMessages = self->_quarantineMessages;
    self->_quarantineMessages = v6;
  }

  v8 = [CPLQuarantineFeedbackMessage alloc];
  v9 = [(CPLEngineStorage *)self engineStore];
  v10 = [v9 engineLibrary];
  v11 = [v10 libraryIdentifier];
  v12 = [(CPLQuarantineFeedbackMessage *)v8 initWithClass:a3 reason:v13 libraryIdentifier:v11];

  [(NSMutableArray *)self->_quarantineMessages addObject:v12];
}

- (unint64_t)countOfQuarantinedRecordsInScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 countOfQuarantinedRecordsInScopeWithIdentifier:v4];

  return v6;
}

- (unint64_t)countOfQuarantinedRecords
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 countOfQuarantinedRecords];

  return v3;
}

- (Class)classForQuarantinedRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 classForQuarantinedRecordWithScopedIdentifier:v4];

  return v6;
}

- (BOOL)isRecordWithScopedIdentifierQuarantined:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 isRecordWithScopedIdentifierQuarantined:v4];

  return v6;
}

- (BOOL)removeQuarantinedRecordWithScopedIdentifier:(id)a3 notify:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v19 = 0;
  v9 = [(CPLEngineStorage *)self platformObject];
  v10 = [v9 removeQuarantinedRecordWithScopedIdentifier:v8 removed:&v19 error:a5];

  v11 = 0;
  if (v10)
  {
    if (v19 != 1 || !v6)
    {
      v11 = 1;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLStorageOSLogDomain_22181();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = v8;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ from quarantine", buf, 0xCu);
        }
      }

      v14 = [(CPLEngineStorage *)self engineStore];
      v15 = [v14 statusCenter];

      v16 = [v15 recordViewForStatusWithScopedIdentifier:v8];
      v11 = [v15 notifyStatusForRecordViewHasChanged:v16 persist:1 error:a5];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a6) = [v10 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];

  return a6;
}

+ (unint64_t)quarantineRetryCount
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 integerForKey:@"CPLQuarantineRetryCount"];

  return v3;
}

@end