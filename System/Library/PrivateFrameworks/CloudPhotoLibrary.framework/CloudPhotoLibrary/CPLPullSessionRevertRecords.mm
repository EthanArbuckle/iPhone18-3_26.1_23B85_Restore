@interface CPLPullSessionRevertRecords
- (BOOL)applyToStore:(id)a3 error:(id *)a4;
- (BOOL)discardFromStore:(id)a3 error:(id *)a4;
- (CPLPullSessionRevertRecords)initWithCoder:(id)a3;
- (CPLPullSessionRevertRecords)initWithStore:(id)a3 revertedChangesBatch:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLPullSessionRevertRecords

- (BOOL)discardFromStore:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionRevertRecords;
  return [(CPLChangeSessionUpdate *)&v5 discardFromStore:a3 error:a4];
}

- (BOOL)applyToStore:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v42.receiver = self;
  v42.super_class = CPLPullSessionRevertRecords;
  v43 = 0;
  v7 = [(CPLChangeSessionUpdate *)&v42 applyToStore:v6 error:&v43];
  v8 = v43;
  if (!v7)
  {
    v26 = 0;
    if (!a4)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v32 = a4;
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

  v11 = [v6 quarantinedRecords];
  v31 = v6;
  v34 = [v6 idMapping];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = self;
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
      v19 = [v17 scopedIdentifier];
      v37 = v8;
      v20 = [v11 removeQuarantinedRecordWithScopedIdentifier:v19 notify:0 error:&v37];
      v21 = v37;

      if ((v20 & 1) == 0)
      {
        break;
      }

      if ([v17 isDelete])
      {
        v22 = [v17 scopedIdentifier];
        v36 = v21;
        v23 = [v34 addDeleteEventForRecordWithLocalScopedIdentifier:v22 direction:0 error:&v36];
        v8 = v36;

        objc_autoreleasePoolPop(v18);
        if (!v23)
        {
          v26 = 0;
          v21 = v8;
LABEL_22:
          v6 = v31;
          v24 = obj;
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

  v6 = v31;
  v24 = [v31 revertRecords];
  v25 = v30->_revertedChangesBatch;
  v35 = v8;
  v26 = [v24 deleteRecordsToRevertFromBatch:v25 error:&v35];
  v21 = v35;

LABEL_23:
  v8 = v21;
  a4 = v32;
  if (v32)
  {
LABEL_24:
    if ((v26 & 1) == 0)
    {
      v27 = v8;
      *a4 = v8;
    }
  }

LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionRevertRecords;
  v4 = a3;
  [(CPLChangeSessionUpdate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_revertedChangesBatch forKey:{@"rrb", v5.receiver, v5.super_class}];
}

- (CPLPullSessionRevertRecords)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLPullSessionRevertRecords;
  v5 = [(CPLChangeSessionUpdate *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rrb"];
    revertedChangesBatch = v5->_revertedChangesBatch;
    v5->_revertedChangesBatch = v6;
  }

  return v5;
}

- (CPLPullSessionRevertRecords)initWithStore:(id)a3 revertedChangesBatch:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CPLPullSessionRevertRecords;
  v8 = [(CPLChangeSessionUpdate *)&v11 initWithStore:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_revertedChangesBatch, a4);
  }

  return v9;
}

@end