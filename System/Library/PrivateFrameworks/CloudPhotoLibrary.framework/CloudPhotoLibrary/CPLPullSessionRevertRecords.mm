@interface CPLPullSessionRevertRecords
- (BOOL)applyToStore:(id)store error:(id *)error;
- (BOOL)discardFromStore:(id)store error:(id *)error;
- (CPLPullSessionRevertRecords)initWithCoder:(id)coder;
- (CPLPullSessionRevertRecords)initWithStore:(id)store revertedChangesBatch:(id)batch;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLPullSessionRevertRecords

- (BOOL)discardFromStore:(id)store error:(id *)error
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionRevertRecords;
  return [(CPLChangeSessionUpdate *)&v5 discardFromStore:store error:error];
}

- (BOOL)applyToStore:(id)store error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v42.receiver = self;
  v42.super_class = CPLPullSessionRevertRecords;
  v43 = 0;
  v7 = [(CPLChangeSessionUpdate *)&v42 applyToStore:storeCopy error:&v43];
  v8 = v43;
  if (!v7)
  {
    v26 = 0;
    if (!error)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  errorCopy = error;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLPushSessionOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      revertedChangesBatch = self->_revertedChangesBatch;
      *buf = 138412290;
      v46 = revertedChangesBatch;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Client acknowledged reverted records %@", buf, 0xCu);
    }
  }

  quarantinedRecords = [storeCopy quarantinedRecords];
  v31 = storeCopy;
  idMapping = [storeCopy idMapping];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  v12 = self->_revertedChangesBatch;
  v13 = [(CPLChangeBatch *)v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    obj = v12;
LABEL_8:
    v16 = 0;
    while (1)
    {
      if (*v39 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v38 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      scopedIdentifier = [v17 scopedIdentifier];
      v37 = v8;
      v20 = [quarantinedRecords removeQuarantinedRecordWithScopedIdentifier:scopedIdentifier notify:0 error:&v37];
      v21 = v37;

      if ((v20 & 1) == 0)
      {
        break;
      }

      if ([v17 isDelete])
      {
        scopedIdentifier2 = [v17 scopedIdentifier];
        v36 = v21;
        v23 = [idMapping addDeleteEventForRecordWithLocalScopedIdentifier:scopedIdentifier2 direction:0 error:&v36];
        v8 = v36;

        objc_autoreleasePoolPop(v18);
        if (!v23)
        {
          v26 = 0;
          v21 = v8;
LABEL_22:
          storeCopy = v31;
          revertRecords = obj;
          goto LABEL_23;
        }
      }

      else
      {
        objc_autoreleasePoolPop(v18);
        v8 = v21;
      }

      if (v14 == ++v16)
      {
        v12 = obj;
        v14 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v14)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    objc_autoreleasePoolPop(v18);
    v26 = 0;
    goto LABEL_22;
  }

LABEL_18:

  storeCopy = v31;
  revertRecords = [v31 revertRecords];
  v25 = selfCopy->_revertedChangesBatch;
  v35 = v8;
  v26 = [revertRecords deleteRecordsToRevertFromBatch:v25 error:&v35];
  v21 = v35;

LABEL_23:
  v8 = v21;
  error = errorCopy;
  if (errorCopy)
  {
LABEL_24:
    if ((v26 & 1) == 0)
    {
      v27 = v8;
      *error = v8;
    }
  }

LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionRevertRecords;
  coderCopy = coder;
  [(CPLChangeSessionUpdate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_revertedChangesBatch forKey:{@"rrb", v5.receiver, v5.super_class}];
}

- (CPLPullSessionRevertRecords)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPLPullSessionRevertRecords;
  v5 = [(CPLChangeSessionUpdate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rrb"];
    revertedChangesBatch = v5->_revertedChangesBatch;
    v5->_revertedChangesBatch = v6;
  }

  return v5;
}

- (CPLPullSessionRevertRecords)initWithStore:(id)store revertedChangesBatch:(id)batch
{
  batchCopy = batch;
  v11.receiver = self;
  v11.super_class = CPLPullSessionRevertRecords;
  v8 = [(CPLChangeSessionUpdate *)&v11 initWithStore:store];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_revertedChangesBatch, batch);
  }

  return v9;
}

@end