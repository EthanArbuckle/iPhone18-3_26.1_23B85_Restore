@interface CPLTrashedAssetExtractionStep
- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6;
- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)a3;
- (CPLTrashedAssetExtractionStep)initWithStorage:(id)a3 scopeIdentifier:(id)a4 maximumCount:(unint64_t)a5;
@end

@implementation CPLTrashedAssetExtractionStep

- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)a3
{
  v3 = a3;
  v4 = [v3 isAssetChange] && (objc_msgSend(v3, "inTrash") & 1) != 0;

  return v4;
}

- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__13768;
  v62 = __Block_byref_object_dispose__13769;
  v63 = 0;
  maximumCount = self->_maximumCount;
  if (maximumCount >= a4)
  {
    maximumCount = a4;
  }

  v38 = maximumCount;
  v36 = self;
  v11 = [(CPLBatchExtractionStep *)self storage];
  v12 = objc_opt_class();
  v13 = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v14 = [v11 allChangesWithClass:v12 scopeIdentifier:v13 trashed:1];

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = a5;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __87__CPLTrashedAssetExtractionStep_extractToBatch_maximumCount_maximumResourceSize_error___block_invoke;
  v45[3] = &unk_1E861DCD8;
  v39 = v11;
  v46 = v39;
  v48 = v53;
  v15 = v9;
  v47 = v15;
  v49 = &v54;
  v50 = &v64;
  v51 = &v58;
  v52 = v38;
  v16 = MEMORY[0x1E128EBA0](v45);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v14;
  v17 = [obj countByEnumeratingWithState:&v41 objects:v70 count:16];
  if (v17)
  {
    v18 = *v42;
    v19 = v16 + 2;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        if ([v21 isFullRecord])
        {
          v23 = [v21 masterScopedIdentifier];
          if (!v23)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v32 = __CPLGenericOSLogDomain();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v69 = v21;
                _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_ERROR, "%@ should have a master identifier", buf, 0xCu);
              }
            }

            v33 = [MEMORY[0x1E696AAA8] currentHandler];
            v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
            [v33 handleFailureInMethod:a2 object:v36 file:v34 lineNumber:635 description:{@"%@ should have a master identifier", v21}];

            abort();
          }

          v24 = [v39 changeWithScopedIdentifier:v23];
          v25 = v24;
          if (v24)
          {
            v26 = [v24 isFullRecord];
            v27 = *v19;
            if (v26)
            {
              v27(v16, v21, v25);
LABEL_16:

              goto LABEL_17;
            }
          }

          else
          {
            v27 = *v19;
          }

          v27(v16, v21, 0);
          goto LABEL_16;
        }

        v16[2](v16, v21, 0);
LABEL_17:
        v28 = ([v15 isFull] & 1) == 0 && *(v65 + 24) == 1 && v55[3] < v38;
        objc_autoreleasePoolPop(v22);
        if (!v28)
        {
          goto LABEL_24;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v41 objects:v70 count:16];
    }

    while (v17);
  }

LABEL_24:

  if (*(v65 + 24) == 1 && (v55[3] || [v15 batchCanLowerQuota]))
  {
    [v15 setFull:1];
  }

  v29 = *(v65 + 24);
  if (a6 && (v65[3] & 1) == 0)
  {
    *a6 = v59[5];
    v29 = *(v65 + 24);
  }

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  v30 = *MEMORY[0x1E69E9840];
  return v29 & 1;
}

void __87__CPLTrashedAssetExtractionStep_extractToBatch_maximumCount_maximumResourceSize_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 effectiveResourceSizeToUploadUsingStorage:*(a1 + 32)];
  if (v6)
  {
    v7 += [v6 effectiveResourceSizeToUploadUsingStorage:*(a1 + 32)];
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  if (v7 > v9)
  {
    v10 = [*(a1 + 40) batch];
    v11 = [v10 count];

    if (v11)
    {
      v12 = *(a1 + 40);
LABEL_11:
      [v12 setFull:1];
      goto LABEL_15;
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 24);
  }

  v13 = v9 >= v7;
  v14 = v9 - v7;
  if (!v13)
  {
    v14 = 0;
  }

  *(v8 + 24) = v14;
  if (v6)
  {
    v12 = *(a1 + 40);
    if ((*(*(*(a1 + 56) + 8) + 24) + 2) > *(a1 + 80))
    {
      goto LABEL_11;
    }

    [v12 addChange:v6 fromStorage:*(a1 + 32)];
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 72) + 8);
    obj = *(v16 + 40);
    v17 = [v15 removeChange:v6 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v17;
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 40) addChange:v5 fromStorage:*(a1 + 32)];
    v18 = *(a1 + 32);
    v19 = *(*(a1 + 72) + 8);
    v21 = *(v19 + 40);
    v20 = [v18 removeChange:v5 error:&v21];
    objc_storeStrong((v19 + 40), v21);
    *(*(*(a1 + 64) + 8) + 24) = v20;
    ++*(*(*(a1 + 56) + 8) + 24);
  }

LABEL_15:
}

- (CPLTrashedAssetExtractionStep)initWithStorage:(id)a3 scopeIdentifier:(id)a4 maximumCount:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = CPLTrashedAssetExtractionStep;
  v11 = [(CPLBatchExtractionStep *)&v18 initWithStorage:v9 scopeIdentifier:v10];
  v12 = v11;
  if (v11)
  {
    if (a5 <= 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Can't extract masters with no room for assets", v17, 2u);
        }
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
      [v15 handleFailureInMethod:a2 object:v12 file:v16 lineNumber:577 description:@"Can't extract masters with no room for assets"];

      abort();
    }

    v11->_maximumCount = a5;
  }

  return v12;
}

@end