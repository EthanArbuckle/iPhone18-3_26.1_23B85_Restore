@interface CPLNewAssetExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change;
- (CPLNewAssetExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier maximumCount:(unint64_t)count;
@end

@implementation CPLNewAssetExtractionStep

- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change
{
  changeCopy = change;
  v4 = [changeCopy isAssetChange] && (objc_msgSend(changeCopy, "isFullRecord") & 1) != 0;

  return v4;
}

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  v120 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 1;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__13768;
  v111 = __Block_byref_object_dispose__13769;
  v112 = 0;
  maximumCount = self->_maximumCount;
  if (maximumCount >= count)
  {
    maximumCount = count;
  }

  v67 = maximumCount;
  selfCopy = self;
  storage = [(CPLBatchExtractionStep *)self storage];
  sizeCopy = size;
  v57 = a2;
  v11 = objc_opt_class();
  scopeIdentifier = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v13 = [storage allChangesWithClass:v11 scopeIdentifier:scopeIdentifier changeType:0];

  v73 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v103 objects:v119 count:16];
  if (v14)
  {
    v68 = *v104;
    do
    {
      v15 = 0;
      v69 = v14;
      do
      {
        if (*v104 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v103 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        scopedIdentifier = [v16 scopedIdentifier];
        if (([v73 containsObject:scopedIdentifier] & 1) == 0)
        {
          [v73 addObject:scopedIdentifier];
          masterScopedIdentifier = [v16 masterScopedIdentifier];
          v71 = masterScopedIdentifier;
          if (masterScopedIdentifier && ((-[NSMutableSet containsObject:](selfCopy->_alreadySeenMasterScopedIdentifiers, "containsObject:", masterScopedIdentifier) & 1) == 0 ? ([storage changeWithScopedIdentifier:v71], v72 = objc_claimAutoreleasedReturnValue()) : (v72 = 0), -[NSMutableSet addObject:](selfCopy->_alreadySeenMasterScopedIdentifiers, "addObject:", v71), v72))
          {
            if ([v72 isFullRecord])
            {
              v98 = 0;
              v99 = &v98;
              v100 = 0x2020000000;
              v21 = v72;
              v101 = [v72 effectiveResourceSizeToUploadUsingStorage:storage];
              v61 = v67 - 1;
              if (v67 == 1)
              {
                [(NSMutableSet *)selfCopy->_alreadySeenMasterScopedIdentifiers removeObject:v71];
                [batchCopy setFull:1];
                v19 = 2;
                v67 = 1;
              }

              else
              {
                v94 = 0;
                v95 = &v94;
                v96 = 0x2020000000;
                v97 = 0;
                v22 = objc_alloc(MEMORY[0x1E695DF70]);
                if (v61 >= 0x64)
                {
                  v23 = 100;
                }

                else
                {
                  v23 = v67 - 1;
                }

                v24 = [v22 initWithCapacity:v23];
                v85[0] = MEMORY[0x1E69E9820];
                v85[1] = 3221225472;
                v85[2] = __83__CPLNewAssetExtractionStep_extractToBatch_maximumCount_maximumResourceSize_error___block_invoke;
                v85[3] = &unk_1E861DCB0;
                v89 = &v107;
                v90 = &v113;
                v86 = v73;
                v60 = v24;
                v87 = v60;
                v91 = &v98;
                v62 = storage;
                v88 = v62;
                v92 = &v94;
                v93 = v67 - 1;
                v65 = MEMORY[0x1E128EBA0](v85);
                if ((v65)[2](v65, scopedIdentifier, v16))
                {
                  v83 = 0u;
                  v84 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v25 = [v62 allChangesWithClass:objc_opt_class() relatedScopedIdentifier:v71];
                  v26 = [v25 countByEnumeratingWithState:&v81 objects:v118 count:16];
                  if (v26)
                  {
                    v27 = *v82;
                    while (2)
                    {
                      for (i = 0; i != v26; ++i)
                      {
                        if (*v82 != v27)
                        {
                          objc_enumerationMutation(v25);
                        }

                        v29 = *(*(&v81 + 1) + 8 * i);
                        scopedIdentifier2 = [v29 scopedIdentifier];
                        if (([scopedIdentifier2 isEqual:scopedIdentifier] & 1) == 0 && ((v65)[2](v65, scopedIdentifier2, v29) & 1) == 0)
                        {

                          goto LABEL_40;
                        }
                      }

                      v26 = [v25 countByEnumeratingWithState:&v81 objects:v118 count:16];
                      if (v26)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_40:
                }

                if (*(v114 + 24) != 1)
                {
                  goto LABEL_66;
                }

                if (v95[3] <= v61)
                {
                  goto LABEL_45;
                }

                batch = [batchCopy batch];
                v34 = [batch count] == 0;

                if (!v34)
                {
LABEL_47:
                  [(NSMutableSet *)selfCopy->_alreadySeenMasterScopedIdentifiers removeObject:v71];
                  [batchCopy setFull:1];
                  goto LABEL_66;
                }

                [v60 removeLastObject];
LABEL_45:
                v35 = v99[3];
                v36 = sizeCopy;
                if (v35 > sizeCopy)
                {
                  batch2 = [batchCopy batch];
                  v38 = [batch2 count] == 0;

                  if (!v38)
                  {
                    goto LABEL_47;
                  }

                  v35 = v99[3];
                  v36 = sizeCopy;
                }

                v39 = v36 >= v35;
                v40 = v36 - v35;
                if (!v39)
                {
                  v40 = 0;
                }

                sizeCopy = v40;
                [batchCopy addChange:v72 fromStorage:v62];
                v41 = (v108 + 5);
                v80 = v108[5];
                v42 = [v62 removeChange:v72 error:&v80];
                objc_storeStrong(v41, v80);
                *(v114 + 24) = v42;
                if (!v42)
                {
                  goto LABEL_66;
                }

                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                v43 = v60;
                v44 = [v43 countByEnumeratingWithState:&v76 objects:v117 count:16];
                if (v44)
                {
                  v45 = *v77;
LABEL_54:
                  v46 = 0;
                  while (1)
                  {
                    if (*v77 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = *(*(&v76 + 1) + 8 * v46);
                    [batchCopy addChange:v47 fromStorage:v62];
                    v48 = (v108 + 5);
                    v75 = v108[5];
                    LOBYTE(v47) = [v62 removeChange:v47 error:&v75];
                    objc_storeStrong(v48, v75);
                    *(v114 + 24) = v47;
                    if ((v47 & 1) == 0)
                    {
                      break;
                    }

                    if (v44 == ++v46)
                    {
                      v44 = [v43 countByEnumeratingWithState:&v76 objects:v117 count:16];
                      if (v44)
                      {
                        goto LABEL_54;
                      }

                      break;
                    }
                  }
                }

                if (v114[3])
                {
                  if (v95[3] >= v61 || sizeCopy >> 11 <= 4)
                  {
                    [batchCopy setFull:1];
                    goto LABEL_66;
                  }

                  v50 = [v43 count];
                  v67 = v61 - v50;
                  if (v61 == v50)
                  {
                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v54 = __CPLGenericOSLogDomain();
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_1DC05A000, v54, OS_LOG_TYPE_ERROR, "Batch should have at least one place left", buf, 2u);
                      }
                    }

                    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
                    [currentHandler handleFailureInMethod:v57 object:selfCopy file:v56 lineNumber:543 description:@"Batch should have at least one place left"];

                    abort();
                  }

                  v19 = 0;
                }

                else
                {
LABEL_66:
                  v19 = 2;
                }

                _Block_object_dispose(&v94, 8);
                v21 = v72;
              }

              _Block_object_dispose(&v98, 8);
LABEL_69:

              goto LABEL_70;
            }
          }

          else
          {
            v72 = 0;
          }

          [batchCopy addChange:v16 fromStorage:storage];
          v31 = (v108 + 5);
          v102 = v108[5];
          v32 = [storage removeChange:v16 error:&v102];
          objc_storeStrong(v31, v102);
          *(v114 + 24) = v32;
          if (v32)
          {
            v21 = v72;
            if (v67 != 1)
            {
              --v67;
              v19 = 3;
              goto LABEL_69;
            }

            [batchCopy setFull:1];
            v67 = 0;
          }

          else
          {
            --v67;
          }

          v19 = 2;
          v21 = v72;
          goto LABEL_69;
        }

        v19 = 3;
LABEL_70:

        objc_autoreleasePoolPop(v17);
        if (v19 != 3 && v19)
        {
          goto LABEL_77;
        }

        ++v15;
      }

      while (v15 != v69);
      v14 = [obj countByEnumeratingWithState:&v103 objects:v119 count:16];
    }

    while (v14);
  }

LABEL_77:

  v51 = *(v114 + 24);
  if (error && (v114[3] & 1) == 0)
  {
    *error = v108[5];
    v51 = *(v114 + 24);
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v113, 8);

  v52 = *MEMORY[0x1E69E9840];
  return v51 & 1;
}

uint64_t __83__CPLNewAssetExtractionStep_extractToBatch_maximumCount_maximumResourceSize_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isDelete])
  {
    v5 = 1;
  }

  else
  {
    if ([v4 isFullRecord] & 1) != 0 || (objc_msgSend(v4, "hasChangeType:", 2))
    {
      v6 = [v4 scopedIdentifier];
      [*(a1 + 32) addObject:v6];
      [*(a1 + 40) addObject:v4];
      *(*(*(a1 + 72) + 8) + 24) += [v4 effectiveResourceSizeToUploadUsingStorage:*(a1 + 48)];
      v5 = ++*(*(*(a1 + 80) + 8) + 24) <= *(a1 + 88);
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = +[CPLRecordChange descriptionForChangeType:](CPLRecordChange, "descriptionForChangeType:", [v4 changeType]);
      v6 = [v7 initWithFormat:@"Update to an asset (%@) instead of add while its master is new", v8];

      v9 = [CPLErrors invalidClientCacheErrorWithReason:v6];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v5 = 1;
    }
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);

  return v5 & v12;
}

- (CPLNewAssetExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier maximumCount:(unint64_t)count
{
  storageCopy = storage;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = CPLNewAssetExtractionStep;
  v11 = [(CPLBatchExtractionStep *)&v20 initWithStorage:storageCopy scopeIdentifier:identifierCopy];
  v12 = v11;
  if (v11)
  {
    if (count <= 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Can't extract masters with no room for assets", v19, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
      [currentHandler handleFailureInMethod:a2 object:v12 file:v18 lineNumber:390 description:@"Can't extract masters with no room for assets"];

      abort();
    }

    v11->_maximumCount = count;
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    alreadySeenMasterScopedIdentifiers = v12->_alreadySeenMasterScopedIdentifiers;
    v12->_alreadySeenMasterScopedIdentifiers = v13;
  }

  return v12;
}

@end