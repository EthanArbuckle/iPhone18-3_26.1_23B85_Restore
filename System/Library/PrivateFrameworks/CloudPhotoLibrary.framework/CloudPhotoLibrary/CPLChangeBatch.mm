@interface CPLChangeBatch
- (BOOL)hasChangeWithScopedIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)sortBatchWithError:(id *)error;
- (CPLChangeBatch)init;
- (CPLChangeBatch)initWithCoder:(id)coder;
- (CPLChangeBatch)initWithRecords:(id)records;
- (id)_descriptionRedacted:(BOOL)redacted;
- (id)_initWithRecords:(id)records;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cplFullDescription;
- (id)filterScopeChangeFromBatch;
- (id)localResourceOfType:(unint64_t)type forItemWithCloudScopedIdentifier:(id)identifier;
- (id)recordWithScopedIdentifier:(id)identifier;
- (id)summaryDescription;
- (unint64_t)estimatedBatchSize;
- (void)_addAdditionalRecord:(id)record;
- (void)_addChange:(id)change resultBatch:(id)batch changesPerScopedIdentifier:(id)identifier changesPerClass:(id)class;
- (void)_setAdditionalRecords:(id)records;
- (void)_setRecords:(id)records;
- (void)addRecord:(id)record;
- (void)addRecordsFromBatch:(id)batch;
- (void)appendLocalResources:(id)resources forItemWithCloudScopedIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)extractInitialDownloadBatch:(id *)batch shouldConsiderRecordFilter:(id)filter;
- (void)removeRecordWithScopedIdentifier:(id)identifier;
@end

@implementation CPLChangeBatch

- (id)cplFullDescription
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@: [\n", objc_opt_class()];
  v4 = objc_autoreleasePoolPush();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  v6 = [(CPLChangeBatch *)selfCopy countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        cplFullDescription = [*(*(&v24 + 1) + 8 * i) cplFullDescription];
        [v3 appendFormat:@"  %@\n", cplFullDescription];
      }

      v7 = [(CPLChangeBatch *)selfCopy countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  _additionalRecords = [(CPLChangeBatch *)selfCopy _additionalRecords];
  if ([_additionalRecords count])
  {
    [v3 appendString:@"Additional records:\n"];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = _additionalRecords;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        cplFullDescription2 = [*(*(&v20 + 1) + 8 * j) cplFullDescription];
        [v3 appendFormat:@"  %@\n", cplFullDescription2];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  [v3 appendString:@"]"];
  objc_autoreleasePoolPop(v4);
  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CPLChangeBatch)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(CPLChangeBatch *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{v7, v6, 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"records"];

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_28;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v9;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = coderCopy;
      v12 = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [(CPLChangeBatch *)v5 addRecord:v15];
          }

          else
          {
            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v12 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v11);

      if (!v12)
      {
        coderCopy = v21;
        goto LABEL_23;
      }

      coderCopy = v21;
      if (_CPLSilentLogging)
      {
LABEL_23:
        v17 = [MEMORY[0x1E695DFD8] setWithObjects:{v7, v6, 0}];
        v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"additionalRecords"];

        if (!v18)
        {
LABEL_26:

          goto LABEL_29;
        }

        if (objc_opt_isKindOfClass())
        {
          [(CPLChangeBatch *)v5 _setAdditionalRecords:v18];
          goto LABEL_26;
        }

LABEL_28:
        v5 = 0;
        goto LABEL_29;
      }

      v16 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Bad records in a batch during deserialization: %@", buf, 0xCu);
      }
    }

    else
    {
      v12 = 0;
      v16 = v9;
    }

    goto LABEL_23;
  }

LABEL_29:

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  records = [(CPLChangeBatch *)self records];
  [coderCopy encodeObject:records forKey:@"records"];
  _additionalRecords = [(CPLChangeBatch *)self _additionalRecords];
  if ([_additionalRecords count])
  {
    [coderCopy encodeObject:_additionalRecords forKey:@"additionalRecords"];
  }
}

- (void)extractInitialDownloadBatch:(id *)batch shouldConsiderRecordFilter:(id)filter
{
  v42 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  batchCopy = batch;
  *batch = 0;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  v9 = [(CPLChangeBatch *)selfCopy countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(selfCopy);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        isFullRecord = [v13 isFullRecord];
        if ([v13 supportsSharingScopedIdentifier])
        {
          sharingScopeIdentifier = [v13 sharingScopeIdentifier];
          v16 = sharingScopeIdentifier == 0;

          if ((v16 & isFullRecord) != 1)
          {
            goto LABEL_20;
          }
        }

        else if ((isFullRecord & 1) == 0)
        {
          goto LABEL_20;
        }

        if ([v13 isMasterChange] && filterCopy[2](filterCopy, v13))
        {
          scopedIdentifier = [v13 scopedIdentifier];
          if (!scopedIdentifier)
          {
            goto LABEL_19;
          }

          v18 = v29;
        }

        else
        {
          if (![v13 isAssetChange])
          {
            goto LABEL_20;
          }

          realIdentifier = [v13 realIdentifier];

          if (realIdentifier)
          {
            goto LABEL_20;
          }

          scopedIdentifier = [v13 masterScopedIdentifier];
          if (!scopedIdentifier)
          {
            goto LABEL_19;
          }

          v18 = v28;
        }

        v20 = [v18 objectForKey:scopedIdentifier];

        if (v20)
        {
LABEL_19:

LABEL_20:
          [v7 addObject:v13];
          goto LABEL_21;
        }

        [v18 setObject:v13 forKey:scopedIdentifier];

LABEL_21:
        ++v12;
      }

      while (v10 != v12);
      v21 = [(CPLChangeBatch *)selfCopy countByEnumeratingWithState:&v37 objects:v41 count:16];
      v10 = v21;
    }

    while (v21);
  }

  if ([v28 count])
  {
    v22 = objc_alloc_init(CPLChangeBatch);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __103__CPLChangeBatch_CPLEngineTransientRepository__extractInitialDownloadBatch_shouldConsiderRecordFilter___block_invoke;
    v32[3] = &unk_1E861CC78;
    v33 = v29;
    v36 = filterCopy;
    v23 = v22;
    v34 = v23;
    v35 = v7;
    [v28 enumerateKeysAndObjectsUsingBlock:v32];
    if ([(CPLChangeBatch *)v23 count])
    {
      v24 = v23;
      *batchCopy = v23;
    }
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __103__CPLChangeBatch_CPLEngineTransientRepository__extractInitialDownloadBatch_shouldConsiderRecordFilter___block_invoke_2;
  v30[3] = &unk_1E861CCA0;
  v31 = v7;
  v25 = v7;
  [v29 enumerateKeysAndObjectsUsingBlock:v30];
  [(CPLChangeBatch *)selfCopy _setRecords:v25];

  v26 = *MEMORY[0x1E69E9840];
}

void __103__CPLChangeBatch_CPLEngineTransientRepository__extractInitialDownloadBatch_shouldConsiderRecordFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v7];
  if (v6 && (*(*(a1 + 56) + 16))())
  {
    [*(a1 + 40) addRecord:v6];
    [*(a1 + 40) addRecord:v5];
    [*(a1 + 32) removeObjectForKey:v7];
  }

  else
  {
    [*(a1 + 48) addObject:v5];
  }
}

- (BOOL)sortBatchWithError:(id *)error
{
  v87 = *MEMORY[0x1E69E9840];
  if ([(CPLChangeBatch *)self count]<= 1)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    selfCopy = self;
    v6 = [(CPLChangeBatch *)selfCopy countByEnumeratingWithState:&v79 objects:v86 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v80;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v80 != v8)
          {
            objc_enumerationMutation(selfCopy);
          }

          scopedIdentifier = [*(*(&v79 + 1) + 8 * i) scopedIdentifier];

          if (!scopedIdentifier)
          {
            v37 = [CPLErrors cplErrorWithCode:50 description:@"Tried to sort a batch containing a %@ with no identifier", objc_opt_class()];
            if (error)
            {
              v37 = v37;
              *error = v37;
            }

            v11 = 0;
            goto LABEL_81;
          }
        }

        v7 = [(CPLChangeBatch *)selfCopy countByEnumeratingWithState:&v79 objects:v86 count:16];
        v11 = 1;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_81;
  }

  errorCopy = error;
  if (sortBatchWithError__onceToken != -1)
  {
    dispatch_once(&sortBatchWithError__onceToken, &__block_literal_global_160);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  selfCopy2 = self;
  v17 = [(CPLChangeBatch *)selfCopy2 countByEnumeratingWithState:&v75 objects:v85 count:16];
  v59 = v13;
  v57 = v12;
  if (v17)
  {
    v18 = v17;
    v60 = 0;
    v61 = 0;
    v19 = *v76;
    while (1)
    {
      v20 = 0;
      v64 = v18;
      do
      {
        if (*v76 != v19)
        {
          objc_enumerationMutation(selfCopy2);
        }

        v21 = *(*(&v75 + 1) + 8 * v20);
        scopedIdentifier2 = [v21 scopedIdentifier];
        if (!scopedIdentifier2)
        {
          selfCopy = [CPLErrors cplErrorWithCode:50 description:@"Tried to sort a batch containing a %@ with no identifier", objc_opt_class()];
          v11 = 0;
          v38 = selfCopy2;
          goto LABEL_78;
        }

        v23 = scopedIdentifier2;
        realIdentifier = [v21 realIdentifier];
        if (realIdentifier)
        {
          v25 = v15;
LABEL_21:
          [v25 addObject:v21];
          goto LABEL_22;
        }

        v26 = objc_opt_class();
        changeType = [v21 changeType];
        if ([v26 isSubclassOfClass:sortBatchWithError__scopeChangeClass])
        {
          if (changeType == 1024)
          {
            v25 = v61;
            v18 = v64;
            if (!v61)
            {
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v61 = v25;
          }

          else
          {
            v25 = v60;
            v18 = v64;
            if (!v60)
            {
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v60 = v25;
          }

          goto LABEL_21;
        }

        if (changeType != 1024)
        {
          v30 = [v14 objectForKey:v26];
          if (v30)
          {
            v29 = v30;
            v31 = v21;
            v32 = v23;
          }

          else
          {
            v29 = [MEMORY[0x1E695DF90] dictionaryWithObject:v21 forKey:v23];
            v30 = v14;
            v31 = v29;
            v32 = v26;
          }

          [v30 setObject:v31 forKey:v32];
          v33 = v66;
          v34 = v21;
          v35 = v23;
          goto LABEL_41;
        }

        v28 = [v59 objectForKey:v26];
        if (!v28)
        {
          v29 = [MEMORY[0x1E695DF70] arrayWithObject:v21];
          v33 = v59;
          v34 = v29;
          v35 = v26;
LABEL_41:
          [v33 setObject:v34 forKey:v35];
          goto LABEL_42;
        }

        v29 = v28;
        [v28 addObject:v21];
LABEL_42:

        v18 = v64;
LABEL_22:

        ++v20;
      }

      while (v18 != v20);
      v36 = [(CPLChangeBatch *)selfCopy2 countByEnumeratingWithState:&v75 objects:v85 count:16];
      v18 = v36;
      if (!v36)
      {

        if (v60)
        {
          [v15 addObjectsFromArray:?];
        }

        else
        {
          v60 = 0;
        }

        v13 = v59;
        goto LABEL_52;
      }
    }
  }

  v60 = 0;
  v61 = 0;
LABEL_52:
  v39 = +[CPLEngineTransientRepository orderedClassesForDelete];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v40 = [v39 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v72;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v72 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [v13 objectForKey:*(*(&v71 + 1) + 8 * j)];
        if (v44)
        {
          [v15 addObjectsFromArray:v44];
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v41);
  }

  v45 = +[CPLEngineTransientRepository orderedClassesForChanges];

  records = [(CPLChangeBatch *)selfCopy2 records];
  v47 = [records mutableCopy];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v38 = v45;
  v65 = [(CPLChangeBatch *)v38 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v65)
  {
    obj = v38;
    v63 = *v68;
    do
    {
      for (k = 0; k != v65; ++k)
      {
        if (*v68 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v49 = [v14 objectForKey:*(*(&v67 + 1) + 8 * k)];
        if ([v49 count])
        {
          v50 = 0;
          do
          {
            if (v50 >= [v47 count])
            {
              break;
            }

            v51 = [v47 objectAtIndexedSubscript:v50];
            scopedIdentifier3 = [v51 scopedIdentifier];
            v53 = [v49 objectForKeyedSubscript:scopedIdentifier3];

            if (v53)
            {
              [v47 removeObjectAtIndex:v50];
              [(CPLChangeBatch *)selfCopy2 _addChange:v51 resultBatch:v15 changesPerScopedIdentifier:v66 changesPerClass:v14];
            }

            else
            {
              ++v50;
            }
          }

          while ([v49 count]);
        }
      }

      v38 = obj;
      v65 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v65);
  }

  if (v61)
  {
    [v15 addObjectsFromArray:v61];
  }

  [(CPLChangeBatch *)selfCopy2 _setRecords:v15];

  selfCopy = 0;
  v11 = 1;
LABEL_78:

  objc_autoreleasePoolPop(v57);
  if (errorCopy && !v11)
  {
    v54 = selfCopy;
    v11 = 0;
    *errorCopy = selfCopy;
  }

LABEL_81:

  v55 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __67__CPLChangeBatch_CPLEngineTransientRepository__sortBatchWithError___block_invoke()
{
  result = objc_opt_class();
  sortBatchWithError__scopeChangeClass = result;
  return result;
}

- (void)_addChange:(id)change resultBatch:(id)batch changesPerScopedIdentifier:(id)identifier changesPerClass:(id)class
{
  changeCopy = change;
  batchCopy = batch;
  identifierCopy = identifier;
  classCopy = class;
  scopedIdentifier = [changeCopy scopedIdentifier];
  [identifierCopy removeObjectForKey:scopedIdentifier];
  v14 = [classCopy objectForKey:objc_opt_class()];
  [v14 removeObjectForKey:scopedIdentifier];
  relatedScopedIdentifier = [changeCopy relatedScopedIdentifier];
  if (relatedScopedIdentifier)
  {
    v16 = [identifierCopy objectForKey:relatedScopedIdentifier];
    if (v16)
    {
      [(CPLChangeBatch *)self _addChange:v16 resultBatch:batchCopy changesPerScopedIdentifier:identifierCopy changesPerClass:classCopy];
    }
  }

  [batchCopy addObject:changeCopy];
}

- (unint64_t)estimatedBatchSize
{
  v23 = *MEMORY[0x1E69E9840];
  calculateEstimatedBatchSize = self->_calculateEstimatedBatchSize;
  result = self->_estimatedBatchSize;
  if (!calculateEstimatedBatchSize)
  {
    if (result)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Estimated batch size should not have been calculated yet", buf, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeBatch.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:343 description:@"Estimated batch size should not have been calculated yet"];

      abort();
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_records;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          self->_estimatedBatchSize += [*(*(&v17 + 1) + 8 * i) estimatedRecordSize];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }

    additionalRecords = self->_additionalRecords;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__CPLChangeBatch_estimatedBatchSize__block_invoke;
    v16[3] = &unk_1E8620358;
    v16[4] = self;
    [(NSMutableDictionary *)additionalRecords enumerateKeysAndObjectsUsingBlock:v16];
    self->_calculateEstimatedBatchSize = 1;
    result = self->_estimatedBatchSize;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __36__CPLChangeBatch_estimatedBatchSize__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 estimatedRecordSize];
  *(*(a1 + 32) + 40) += result;
  return result;
}

- (id)_descriptionRedacted:(BOOL)redacted
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CPLChangeBatch *)self count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_records, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = self->_records;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if (redacted)
          {
            [v11 redactedDescription];
          }

          else
          {
            [v11 description];
          }
          v12 = ;
          [v5 addObject:v12];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    summaryDescription = [(CPLChangeBatch *)self summaryDescription];
    v16 = [v5 componentsJoinedByString:{@", \n  "}];
    v17 = [v13 stringWithFormat:@"<%@ %@ {{\n  %@\n}}>", v14, summaryDescription, v16];
  }

  else
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    summaryDescription2 = [(CPLChangeBatch *)self summaryDescription];
    v17 = [v18 stringWithFormat:@"<%@ %@>", v19, summaryDescription2];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_records, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_records;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v28 + 1) + 8 * v9) copy];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = [objc_alloc(objc_opt_class()) _initWithRecords:v4];
  if (self->_additionalRecords)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_additionalRecords, "count")}];
    additionalRecords = self->_additionalRecords;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __31__CPLChangeBatch_copyWithZone___block_invoke;
    v26[3] = &unk_1E8620358;
    v14 = v12;
    v27 = v14;
    [(NSMutableDictionary *)additionalRecords enumerateKeysAndObjectsUsingBlock:v26];
    v15 = v11[2];
    v11[2] = v14;
    v16 = v14;
  }

  if (self->_localResources)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_localResources, "count")}];
    localResources = self->_localResources;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __31__CPLChangeBatch_copyWithZone___block_invoke_2;
    v24[3] = &unk_1E86203A8;
    v19 = v17;
    v25 = v19;
    [(NSMutableDictionary *)localResources enumerateKeysAndObjectsUsingBlock:v24];
    v20 = v11[3];
    v11[3] = v19;
    v21 = v19;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

void __31__CPLChangeBatch_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __31__CPLChangeBatch_copyWithZone___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__CPLChangeBatch_copyWithZone___block_invoke_3;
  v10[3] = &unk_1E8620380;
  v11 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __31__CPLChangeBatch_copyWithZone___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)appendLocalResources:(id)resources forItemWithCloudScopedIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (resourcesCopy)
  {
    v20 = identifierCopy;
    if (!self->_localResources)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      localResources = self->_localResources;
      self->_localResources = v9;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = resourcesCopy;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "resourceType")}];
          [v11 setObject:v17 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    v8 = v20;
    [(NSMutableDictionary *)self->_localResources setObject:v11 forKey:v20];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)localResourceOfType:(unint64_t)type forItemWithCloudScopedIdentifier:(id)identifier
{
  v5 = [(NSMutableDictionary *)self->_localResources objectForKey:identifier];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v7 = [v5 objectForKey:v6];

  return v7;
}

- (id)summaryDescription
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(CPLChangeBatch *)self count])
  {
    v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v5 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    selfCopy = self;
    v8 = [(CPLChangeBatch *)selfCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = objc_opt_class();
          [v6 addObject:v13];
          changeType = [v12 changeType];
          v15 = v5;
          if (changeType != 1024)
          {
            if ([v12 isFullRecord])
            {
              v15 = v3;
            }

            else
            {
              v15 = v4;
            }
          }

          [v15 addObject:v13];
        }

        v9 = [(CPLChangeBatch *)selfCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v6;
    v16 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      v19 = @"%@: +%lu/%lu/-%lu";
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(obj);
          }

          -[__CFString appendFormat:](v24, "appendFormat:", v19, *(*(&v25 + 1) + 8 * j), [v3 countForObject:*(*(&v25 + 1) + 8 * j)], objc_msgSend(v4, "countForObject:", *(*(&v25 + 1) + 8 * j)), objc_msgSend(v5, "countForObject:", *(*(&v25 + 1) + 8 * j)));
          v19 = @", %@: +%lu/%lu/-%lu";
        }

        v17 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v17);
    }

    [(__CFString *)v24 appendFormat:@"]"];
  }

  else
  {
    v24 = @"[empty batch]";
  }

  v21 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)_setRecords:(id)records
{
  objc_storeStrong(&self->_records, records);
  self->_estimatedBatchSize = 0;
  self->_calculateEstimatedBatchSize = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    records = self->_records;
    records = [equalCopy records];
    v7 = [(NSMutableArray *)records isEqual:records];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addAdditionalRecord:(id)record
{
  recordCopy = record;
  additionalRecords = self->_additionalRecords;
  v9 = recordCopy;
  if (!additionalRecords)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_additionalRecords;
    self->_additionalRecords = v6;

    recordCopy = v9;
    additionalRecords = self->_additionalRecords;
  }

  scopedIdentifier = [recordCopy scopedIdentifier];
  [(NSMutableDictionary *)additionalRecords setObject:v9 forKeyedSubscript:scopedIdentifier];

  if (self->_calculateEstimatedBatchSize)
  {
    self->_estimatedBatchSize += [v9 estimatedRecordSize];
  }
}

- (void)_setAdditionalRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
  additionalRecords = self->_additionalRecords;
  self->_additionalRecords = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = recordsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = self->_additionalRecords;
          scopedIdentifier = [v12 scopedIdentifier];
          [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:scopedIdentifier];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  self->_estimatedBatchSize = 0;
  self->_calculateEstimatedBatchSize = 0;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)filterScopeChangeFromBatch
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__23514;
  v23 = __Block_byref_object_dispose__23515;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__23514;
  v13 = __Block_byref_object_dispose__23515;
  v14 = 0;
  v3 = objc_opt_class();
  records = self->_records;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CPLChangeBatch_filterScopeChangeFromBatch__block_invoke;
  v8[3] = &unk_1E8620330;
  v8[4] = &v19;
  v8[5] = &v15;
  v8[6] = &v9;
  v8[7] = v3;
  [(NSMutableArray *)records enumerateObjectsUsingBlock:v8];
  if (v20[5])
  {
    v5 = self->_records;
    if (v10[5])
    {
      [(NSMutableArray *)v5 removeObjectsAtIndexes:?];
    }

    else
    {
      [(NSMutableArray *)v5 removeObjectAtIndex:v16[3]];
    }
  }

  v6 = v20[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

void __44__CPLChangeBatch_filterScopeChangeFromBatch__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = a1[7];
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a1[4] + 8);
    v11 = *(v8 + 40);
    v10 = (v8 + 40);
    v9 = v11;
    if (v11)
    {
      v16 = 0;
      [v9 updateScopeFromScopeChange:v6 direction:2 didHaveChanges:&v16];
      v12 = *(*(a1[6] + 8) + 40);
      if (!v12)
      {
        v13 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:*(*(a1[5] + 8) + 24)];
        v14 = *(a1[6] + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v12 = *(*(a1[6] + 8) + 40);
      }

      [v12 addIndex:a3];
    }

    else
    {
      objc_storeStrong(v10, a2);
      *(*(a1[5] + 8) + 24) = a3;
    }
  }
}

- (id)recordWithScopedIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_records;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        scopedIdentifier = [v9 scopedIdentifier];
        v11 = [scopedIdentifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)hasChangeWithScopedIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_records;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        scopedIdentifier = [*(*(&v13 + 1) + 8 * i) scopedIdentifier];
        v10 = [scopedIdentifier isEqual:identifierCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)removeRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableArray *)self->_records count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_records objectAtIndexedSubscript:v6];
      scopedIdentifier = [v7 scopedIdentifier];
      v9 = [scopedIdentifier isEqual:identifierCopy];

      if (v9)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSMutableArray *)self->_records removeObjectAtIndex:v6];
    self->_estimatedBatchSize = 0;
    self->_calculateEstimatedBatchSize = 0;
  }

LABEL_7:
}

- (void)addRecordsFromBatch:(id)batch
{
  v15 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  if (!batchCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to add a nil list of records to %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeBatch.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v11 lineNumber:100 description:{@"Trying to add a nil list of records to %@", self}];

    abort();
  }

  records = self->_records;
  v12 = batchCopy;
  records = [batchCopy records];
  [(NSMutableArray *)records addObjectsFromArray:records];

  self->_estimatedBatchSize = 0;
  self->_calculateEstimatedBatchSize = 0;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)addRecord:(id)record
{
  v13 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if (!recordCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Trying to add a nil record to %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeBatch.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:92 description:{@"Trying to add a nil record to %@", self}];

    abort();
  }

  v10 = recordCopy;
  [(NSMutableArray *)self->_records addObject:recordCopy];
  if (self->_calculateEstimatedBatchSize)
  {
    self->_estimatedBatchSize += [v10 estimatedRecordSize];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_initWithRecords:(id)records
{
  recordsCopy = records;
  v6 = [(CPLChangeBatch *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_records, records);
  }

  return v7;
}

- (CPLChangeBatch)initWithRecords:(id)records
{
  recordsCopy = records;
  v5 = [(CPLChangeBatch *)self init];
  if (v5)
  {
    v6 = [recordsCopy mutableCopy];
    records = v5->_records;
    v5->_records = v6;
  }

  return v5;
}

- (CPLChangeBatch)init
{
  v6.receiver = self;
  v6.super_class = CPLChangeBatch;
  v2 = [(CPLChangeBatch *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    records = v2->_records;
    v2->_records = v3;
  }

  return v2;
}

@end