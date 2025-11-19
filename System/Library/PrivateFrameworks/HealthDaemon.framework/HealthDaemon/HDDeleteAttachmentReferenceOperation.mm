@interface HDDeleteAttachmentReferenceOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDDeleteAttachmentReferenceOperation)initWithCoder:(id)a3;
- (void)_initWithReferences:(uint64_t)a3 cloudStatus:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDDeleteAttachmentReferenceOperation

- (void)_initWithReferences:(uint64_t)a3 cloudStatus:
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = HDDeleteAttachmentReferenceOperation;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[2];
      a1[2] = v6;

      a1[3] = a3;
    }
  }

  return a1;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v83 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v8 = a4;
  LOBYTE(v9) = 16;
  if ([(NSArray *)self->_references count])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = self;
    references = self->_references;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke;
    v72[3] = &unk_27861B210;
    v52 = v10;
    v73 = v52;
    if (+[HDAttachmentReferenceEntity filteredNonTombstoneReferences:transaction:error:enumerationHandler:](HDAttachmentReferenceEntity, "filteredNonTombstoneReferences:transaction:error:enumerationHandler:", references, v8, a5, v72) && (![v52 count] || +[HDAttachmentReferenceEntity deleteReferences:cloudStatus:transaction:error:](HDAttachmentReferenceEntity, "deleteReferences:cloudStatus:transaction:error:", v52, v50->_cloudStatus, v8, a5)))
    {
      v12 = [v52 hk_map:&__block_literal_global_234];
      v13 = v50->_references;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_3;
      v70[3] = &unk_278621E60;
      v45 = v12;
      v71 = v45;
      v46 = [(NSArray *)v13 hk_filter:v70];
      if ([v46 count] && !+[HDAttachmentReferenceEntity insertTombstones:cloudStatus:transaction:error:](HDAttachmentReferenceEntity, "insertTombstones:cloudStatus:transaction:error:", v46, v50->_cloudStatus, v8, a5))
      {
        v38 = 0;
      }

      else
      {
        v14 = [v52 hk_mapToSet:&__block_literal_global_297_0];
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v16 = objc_alloc_init(MEMORY[0x277CCAA00]);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_5;
        v65[3] = &unk_278616D68;
        v48 = v15;
        v66 = v48;
        v17 = v54;
        v67 = v17;
        v47 = v16;
        v68 = v47;
        v69 = v50;
        [v8 onCommit:v65 orRollback:0];
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        obj = v14;
        v53 = [obj countByEnumeratingWithState:&v61 objects:v82 count:16];
        if (v53)
        {
          v51 = *v62;
          while (2)
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v62 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v61 + 1) + 8 * i);
              v57 = 0;
              v58 = &v57;
              v59 = 0x2020000000;
              v60 = 0;
              v56[0] = MEMORY[0x277D85DD0];
              v56[1] = 3221225472;
              v56[2] = __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_300;
              v56[3] = &unk_278621878;
              v56[4] = &v57;
              if (![HDAttachmentReferenceEntity enumerateReferencesForAttachmentIdentifier:v19 type:0 transaction:v8 error:a5 enumerationHandler:v56])
              {
LABEL_30:
                LOBYTE(v9) = 0;
LABEL_31:
                _Block_object_dispose(&v57, 8);
                v37 = 0;
                goto LABEL_34;
              }

              if ((v58[3] & 1) == 0)
              {
                _HKInitializeLogging();
                v20 = *MEMORY[0x277CCC280];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = [v19 UUIDString];
                  *buf = 138543618;
                  v75 = v50;
                  v76 = 2114;
                  v77 = v21;
                  _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[database] %{public}@: No references remaining. Deleting attachment with identifier %{public}@", buf, 0x16u);
                }

                [v48 addObject:v19];
                v22 = [v17 attachmentManager];
                v23 = [v22 unconfirmedFilesDirectoryURL];
                v24 = [v19 UUIDString];
                v25 = [v23 URLByAppendingPathComponent:v24];

                v26 = [v17 attachmentManager];
                v27 = [v26 filesDirectoryURL];
                v28 = [v19 UUIDString];
                v29 = [v27 URLByAppendingPathComponent:v28];

                v55 = 0;
                LOBYTE(v26) = [v47 moveItemAtURL:v29 toURL:v25 error:&v55];
                v30 = v55;
                if ((v26 & 1) == 0)
                {
                  _HKInitializeLogging();
                  v31 = *MEMORY[0x277CCC280];
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v35 = [v29 path];
                    v36 = [v25 path];
                    *buf = 138544130;
                    v75 = v50;
                    v76 = 2114;
                    v77 = v35;
                    v78 = 2114;
                    v79 = v36;
                    v80 = 2114;
                    v81 = v30;
                    v44 = v36;
                    _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "[database] %{public}@: Failed to move file from %{public}@ -> %{public}@ directory with error %{public}@", buf, 0x2Au);
                  }

                  if ([v30 hk_isCocoaNoSuchFileError])
                  {
                    _HKInitializeLogging();
                    v32 = *MEMORY[0x277CCC280];
                    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138543618;
                      v75 = v50;
                      v76 = 2114;
                      v77 = v19;
                      _os_log_fault_impl(&dword_228986000, v32, OS_LOG_TYPE_FAULT, "[database] %{public}@: No such file error for attachment %{public}@", buf, 0x16u);
                    }
                  }

                  if (([v30 hk_isCocoaNoSuchFileError] & 1) == 0 && (objc_msgSend(v30, "hk_isCocoaFileExistsError") & 1) == 0)
                  {
                    v41 = v30;
                    v42 = v41;
                    LOBYTE(v9) = v41 == 0;
                    if (v41)
                    {
                      if (a5)
                      {
                        v43 = v41;
                        *a5 = v42;
                      }

                      else
                      {
                        _HKLogDroppedError();
                      }
                    }

                    goto LABEL_31;
                  }
                }

                v33 = HDAttachmentPredicateForAttachmentIdentifier(v19);
                v9 = [v17 database];
                v34 = [(HDHealthEntity *)HDAttachmentEntity deleteEntitiesWithPredicate:v33 healthDatabase:v9 error:a5];

                if (!v34)
                {
                  goto LABEL_30;
                }
              }

              _Block_object_dispose(&v57, 8);
            }

            v53 = [obj countByEnumeratingWithState:&v61 objects:v82 count:16];
            v37 = 1;
            if (v53)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v37 = 1;
        }

LABEL_34:

        v38 = v37 | v9;
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 1;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v38 & 1;
}

uint64_t __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_5(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    v7 = MEMORY[0x277CCC280];
    *&v4 = 138543874;
    v21 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = [*(a1 + 40) attachmentManager];
        v11 = [v10 unconfirmedFilesDirectoryURL];
        v12 = [v9 UUIDString];
        v13 = [v11 URLByAppendingPathComponent:v12];

        v14 = *(a1 + 48);
        v22 = 0;
        LOBYTE(v11) = [v14 removeItemAtURL:v13 error:&v22];
        v15 = v22;
        if ((v11 & 1) == 0)
        {
          _HKInitializeLogging();
          v16 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 56);
            v18 = v16;
            v19 = [v13 path];
            *buf = v21;
            v28 = v17;
            v7 = MEMORY[0x277CCC280];
            v29 = 2114;
            v30 = v19;
            v31 = 2114;
            v32 = v15;
            _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[database] %{public}@: Failed to delete file from path %{public}@ with error %{public}@", buf, 0x20u);
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HDDeleteAttachmentReferenceOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"delete_attachment_references"];
  v6 = [v4 decodeIntegerForKey:@"cloud_status"];

  if (v6)
  {
    v7 = [(HDDeleteAttachmentReferenceOperation *)self initWithSynchronizedReferences:v5];
  }

  else
  {
    v7 = [(HDDeleteAttachmentReferenceOperation *)self initWithReferences:v5];
  }

  v8 = v7;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDDeleteAttachmentReferenceOperation;
  v4 = a3;
  [(HDJournalableOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_references forKey:{@"delete_attachment_references", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_cloudStatus forKey:@"cloud_status"];
}

@end