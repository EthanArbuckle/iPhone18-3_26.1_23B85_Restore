@interface CPLRecordStorageView
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (id)compactedBatchFromExpandedBatch:(id)batch;
- (id)description;
- (id)localChangeBatchFromCloudBatch:(id)batch usingMapping:(id)mapping withError:(id *)error;
- (id)recordViewWithScopedIdentifier:(id)identifier;
- (id)recordViewsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (id)redactedDescription;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier;
- (id)resourceOfType:(unint64_t)type forRecordWithScopedIdentifier:(id)identifier record:(id *)record error:(id *)error;
- (id)resourceOfType:(unint64_t)type forRecordWithScopedIdentifier:(id)identifier recordClass:(Class *)class error:(id *)error;
- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
@end

@implementation CPLRecordStorageView

- (id)resourceOfType:(unint64_t)type forRecordWithScopedIdentifier:(id)identifier recordClass:(Class *)class error:(id *)error
{
  v11 = 0;
  v7 = [(CPLRecordStorageView *)self resourceOfType:type forRecordWithScopedIdentifier:identifier record:&v11 error:error];
  v8 = v11;
  v9 = v8;
  if (class && v7)
  {
    *class = [v8 recordClass];
  }

  return v7;
}

- (id)resourceOfType:(unint64_t)type forRecordWithScopedIdentifier:(id)identifier record:(id *)record error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v11 = [(CPLRecordStorageView *)self recordViewWithScopedIdentifier:identifierCopy];
  v12 = v11;
  if (!v11)
  {
    if (error)
    {
      identifierCopy = [CPLErrors cplErrorWithCode:25 description:@"Record %@ does not exist", identifierCopy];
LABEL_16:
      v21 = 0;
      *error = identifierCopy;
      goto LABEL_23;
    }

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  if (([v11 supportsResources] & 1) == 0)
  {
    if (error)
    {
      identifierCopy = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v12 changeForType:8];
  resources = [v13 resources];

  v15 = [resources countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v15)
  {
LABEL_11:

LABEL_20:
    if (error)
    {
      v22 = [CPLResource shortDescriptionForResourceType:type];
      *error = [CPLErrors cplErrorWithCode:26 description:@"Record %@ has no resource of type %@", identifierCopy, v22];
    }

    goto LABEL_22;
  }

  v16 = v15;
  v17 = *v26;
LABEL_5:
  v18 = 0;
  while (1)
  {
    if (*v26 != v17)
    {
      objc_enumerationMutation(resources);
    }

    v19 = *(*(&v25 + 1) + 8 * v18);
    if ([v19 resourceType] == type)
    {
      break;
    }

    if (v16 == ++v18)
    {
      v16 = [resources countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v21 = v19;

  if (!v21)
  {
    goto LABEL_20;
  }

  if (record)
  {
    *record = [v12 placeholderRecord];
  }

LABEL_23:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)localChangeBatchFromCloudBatch:(id)batch usingMapping:(id)mapping withError:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  mappingCopy = mapping;
  v9 = objc_alloc_init(CPLChangeBatch);
  engineStore = [mappingCopy engineStore];
  quarantinedRecords = [engineStore quarantinedRecords];
  cloudCache = [engineStore cloudCache];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = batchCopy;
  v51 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v51)
  {
    v45 = engineStore;
    v12 = *v54;
    *&v11 = 138412546;
    v44 = v11;
    v48 = *v54;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v53 + 1) + 8 * v13);
        if ([v14 changeType] != 1024)
        {
          if (mappingCopy)
          {
            v21 = [v14 translateToClientChangeUsingIDMapping:mappingCopy error:error];
          }

          else
          {
LABEL_14:
            v21 = v14;
          }

          v20 = v21;
          if (!v21)
          {
LABEL_66:

            v9 = 0;
            goto LABEL_67;
          }

          goto LABEL_16;
        }

        if (!mappingCopy)
        {
          goto LABEL_14;
        }

        selfCopy = self;
        v16 = v9;
        v52 = 0;
        scopedIdentifier = [v14 scopedIdentifier];
        v18 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier isFinal:&v52];
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = [scopedIdentifier copy];
          v31 = [cloudCache hasRecordWithScopedIdentifier:scopedIdentifier];
          if ((v31 & 1) == 0 && ![quarantinedRecords isRecordWithScopedIdentifierQuarantined:v19])
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v33 = __CPLStorageOSLogDomain_11255();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v58 = v14;
                _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_DEFAULT, "Ignoring no-op delete for %@", buf, 0xCu);
              }

LABEL_62:
            }

            v26 = 0;
            v30 = 0;
            v9 = v16;
            self = selfCopy;
            v12 = v48;
            goto LABEL_39;
          }

          v32 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v19 isFinal:&v52];
          if (v32)
          {
            v33 = v32;
            if ((_CPLSilentLogging & 1) == 0)
            {
              v34 = __CPLStorageOSLogDomain_11255();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v35 = @"quarantine";
                if (v31)
                {
                  v35 = @"cloud cache";
                }

                v58 = v14;
                v59 = 2112;
                v60 = v35;
                v61 = 2112;
                v62 = v33;
                _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_ERROR, "%@ has no ID mapping but exists in %@ but also as %@ for the client - ignoring this change", buf, 0x20u);
              }
            }

            goto LABEL_62;
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v39 = __CPLStorageOSLogDomain_11255();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v44;
              v40 = @"quarantine";
              if (v31)
              {
                v40 = @"cloud cache";
              }

              v58 = v14;
              v59 = 2112;
              v60 = v40;
              _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_DEFAULT, "%@ has no ID mapping but exists in %@ - client will have to delete it if necessary", buf, 0x16u);
            }
          }
        }

        v20 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:v19];

        v9 = v16;
        self = selfCopy;
        v12 = v48;
        if (!v20)
        {
          goto LABEL_66;
        }

LABEL_16:
        scopedIdentifier2 = [v20 scopedIdentifier];
        v23 = [(CPLRecordStorageView *)self recordViewWithScopedIdentifier:scopedIdentifier2];

        if ([v20 changeType] != 1024)
        {
          isFullRecord = [v20 isFullRecord];
          if (v23)
          {
            if (isFullRecord)
            {
              v26 = v20;
            }

            else
            {
              v29 = [v23 changeForType:{~objc_msgSend(v20, "changeType") & 0x7A}];
              v26 = [v29 copy];

              [v26 applyChange:v20];
              [v26 setChangeType:0];
            }

            goto LABEL_31;
          }

          if ((isFullRecord & 1) == 0)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v28 = __CPLStorageOSLogDomain_11255();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v58 = v14;
                _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_ERROR, "Got a partial record %@ which is new to the cache", buf, 0xCu);
              }
            }

            [v20 setChangeType:0];
          }

LABEL_29:
          v26 = 0;
          goto LABEL_31;
        }

        v24 = objc_opt_class();
        if (v24 != objc_opt_class())
        {
          goto LABEL_29;
        }

        recordClass = [v23 recordClass];
        if (recordClass)
        {
          v26 = recordClass;
LABEL_51:
          scopedIdentifier3 = [v20 scopedIdentifier];
          v38 = [v26 newDeleteChangeWithScopedIdentifier:scopedIdentifier3];

          v26 = 0;
          v30 = 0;
          v20 = v38;
          if (!v38)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }

        scopedIdentifier4 = [v20 scopedIdentifier];
        v26 = [quarantinedRecords classForQuarantinedRecordWithScopedIdentifier:scopedIdentifier4];

        if (v26)
        {
          goto LABEL_51;
        }

LABEL_31:

LABEL_32:
        [v20 setRecordChangeData:0];
        [v20 setSharingRecordChangeData:0];
        [(CPLChangeBatch *)v9 addRecord:v20];
        if (v26 && ([v20 isFullRecord] & 1) == 0 && (objc_msgSend(v20, "isDelete") & 1) == 0 && ((objc_msgSend(v20, "isMasterChange") & 1) != 0 || objc_msgSend(v20, "isAssetChange")))
        {
          [(CPLChangeBatch *)v9 _addAdditionalRecord:v26];
        }

        v30 = v20;
LABEL_39:

        ++v13;
      }

      while (v51 != v13);
      v41 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      v51 = v41;
      if (!v41)
      {
LABEL_67:
        engineStore = v45;
        break;
      }
    }
  }

  v42 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)compactedBatchFromExpandedBatch:(id)batch
{
  v73 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  v44 = objc_alloc_init(CPLChangeBatch);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = batchCopy;
  v6 = [v5 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v64;
    do
    {
      v9 = 0;
      v47 = v7;
      do
      {
        if (*v64 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v63 + 1) + 8 * v9);
        if ([v10 hasChangeType:{2, v42, v44}])
        {
          relatedScopedIdentifier = [v10 relatedScopedIdentifier];
          if (!relatedScopedIdentifier)
          {
            goto LABEL_18;
          }
        }

        else
        {
          scopedIdentifier = [v10 scopedIdentifier];
          relatedScopedIdentifier = [(CPLRecordStorageView *)self relatedScopedIdentifierForRecordWithScopedIdentifier:scopedIdentifier];

          if (!relatedScopedIdentifier)
          {
            goto LABEL_18;
          }
        }

        v13 = [v4 objectForKey:relatedScopedIdentifier];
        if (v13)
        {
          v14 = v13;
          scopedIdentifier2 = [v10 scopedIdentifier];
          v16 = [v14 objectForKey:scopedIdentifier2];

          if (v16 && (_CPLSilentLogging & 1) == 0)
          {
            v17 = __CPLStorageOSLogDomain_11255();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [v14 objectForKey:scopedIdentifier2];
              v18 = v8;
              v19 = v4;
              v21 = v20 = v5;
              *buf = 138412546;
              v69 = v21;
              v70 = 2112;
              v71 = v10;
              _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Expanded batch contains changes for the same record twice: %@ vs. %@", buf, 0x16u);

              v5 = v20;
              v4 = v19;
              v8 = v18;
              v7 = v47;
            }
          }
        }

        else
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v4 setObject:v14 forKey:relatedScopedIdentifier];
          scopedIdentifier2 = [v10 scopedIdentifier];
        }

        [v14 setObject:v10 forKey:scopedIdentifier2];

LABEL_18:
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v7);
  }

  v22 = v4;

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __76__CPLRecordStorageView_CPLClientCacheView__compactedBatchFromExpandedBatch___block_invoke;
  v59[3] = &unk_1E861D248;
  v23 = v42;
  v60 = v23;
  selfCopy = self;
  v24 = v44;
  v62 = v24;
  v25 = MEMORY[0x1E128EBA0](v59);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __76__CPLRecordStorageView_CPLClientCacheView__compactedBatchFromExpandedBatch___block_invoke_8;
  v55[3] = &unk_1E861D270;
  v46 = v24;
  v56 = v46;
  v45 = v23;
  v57 = v45;
  v43 = v25;
  v58 = v43;
  v26 = MEMORY[0x1E128EBA0](v55);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v27 = v5;
  v28 = [v27 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v52;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v52 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v51 + 1) + 8 * i);
        scopedIdentifier3 = [v32 scopedIdentifier];
        v34 = [v22 objectForKey:scopedIdentifier3];
        v35 = [v27 additionalRecordWithScopedIdentifier:scopedIdentifier3];
        v36 = [v32 compactedChangeWithRelatedChanges:v34 isOnlyChange:0 fullRecord:v35 usingStorageView:self];
        if (v36)
        {
          (v26)[2](v26, v36, v35);
        }

        if (v34)
        {
          [v22 removeObjectForKey:scopedIdentifier3];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v29);
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __76__CPLRecordStorageView_CPLClientCacheView__compactedBatchFromExpandedBatch___block_invoke_10;
  v49[3] = &unk_1E861D298;
  v49[4] = self;
  v50 = v26;
  v37 = v26;
  [v22 enumerateKeysAndObjectsUsingBlock:v49];
  v38 = v50;
  v39 = v46;

  v40 = *MEMORY[0x1E69E9840];
  return v46;
}

void __76__CPLRecordStorageView_CPLClientCacheView__compactedBatchFromExpandedBatch___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = [*(a1 + 40) recordViewWithScopedIdentifier:v4];

  v6 = [v5 synthesizedRecord];

  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStorageOSLogDomain_11255();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Adding %@ as an additional record to the batch, just in case", &v9, 0xCu);
      }
    }

    [*(a1 + 48) _addAdditionalRecord:v6];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __76__CPLRecordStorageView_CPLClientCacheView__compactedBatchFromExpandedBatch___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addRecord:v5];
  if (([v5 isDelete] & 1) == 0)
  {
    if ([v5 isMasterChange])
    {
      if ([v5 isFullRecord])
      {
        v7 = *(a1 + 40);
        v8 = [v5 scopedIdentifier];
        [v7 addObject:v8];
LABEL_29:

        goto LABEL_30;
      }

      if (!v6)
      {
        v13 = *(a1 + 48);
        v8 = [v5 scopedIdentifier];
        (*(v13 + 16))(v13, v8);
        goto LABEL_29;
      }

      v10 = *(a1 + 40);
      v11 = [v5 scopedIdentifier];
      [v10 addObject:v11];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLStorageOSLogDomain_11255();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v17 = 138412290;
          v18 = v6;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Adding %@ as an additional record to the batch, just in case", &v17, 0xCu);
        }
      }

      [*(a1 + 32) _addAdditionalRecord:v6];
    }

    else if ([v5 isAssetChange])
    {
      if (([v5 isFullRecord] & 1) == 0)
      {
        if (v6)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v9 = __CPLStorageOSLogDomain_11255();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v17 = 138412290;
              v18 = v6;
              _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Adding %@ as an additional record to the batch, just in case", &v17, 0xCu);
            }
          }

          [*(a1 + 32) _addAdditionalRecord:v6];
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = __CPLStorageOSLogDomain_11255();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v17 = 138412290;
            v18 = v5;
            _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Expected to have a precomputed a full record for %@, but didn't", &v17, 0xCu);
          }
        }
      }

      v15 = [v5 masterScopedIdentifier];
      if (v15)
      {
        v8 = v15;
      }

      else
      {
        v8 = [v6 masterScopedIdentifier];
        if (!v8)
        {
          goto LABEL_29;
        }
      }

      if (([*(a1 + 40) containsObject:v8] & 1) == 0)
      {
        (*(*(a1 + 48) + 16))(*(a1 + 48), v8);
      }

      goto LABEL_29;
    }
  }

LABEL_30:

  v16 = *MEMORY[0x1E69E9840];
}

void __76__CPLRecordStorageView_CPLClientCacheView__compactedBatchFromExpandedBatch___block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 recordViewWithScopedIdentifier:a2];
  v9 = [v7 synthesizedRecord];

  v8 = [v9 compactedChangeWithRelatedChanges:v6 isOnlyChange:1 fullRecord:v9 usingStorageView:*(a1 + 32)];

  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(CPLRecordStorageView *)self recordViewsWithRelatedScopedIdentifier:identifier class:class];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 count];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v14;
      do
      {
        v10 = v8;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          --v10;
        }

        while (v10);
        v5 += v8;
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  v3 = [(CPLRecordStorageView *)self recordViewWithScopedIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier
{
  v3 = [(CPLRecordStorageView *)self recordViewWithScopedIdentifier:identifier];
  relatedScopedIdentifier = [v3 relatedScopedIdentifier];

  return relatedScopedIdentifier;
}

- (id)redactedDescription
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)description
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)recordViewsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLRecordStorageView.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:86 description:{@"%@ should be implemented by %@", v9, objc_opt_class()}];

  abort();
}

- (id)recordViewWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLRecordStorageView.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:81 description:{@"%@ should be implemented by %@", v8, objc_opt_class()}];

  abort();
}

@end