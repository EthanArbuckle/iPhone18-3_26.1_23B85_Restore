@interface CPLMingleUtility
+ (BOOL)_applyMingledBatch:(id)batch scope:(id)scope forStore:(id)store onPutBatchInPullQueue:(id)queue error:(id *)error;
+ (BOOL)_remapScopedIdentifier:(id)identifier to:(id)to class:(Class)class inBatch:(id)batch store:(id)store idMapping:(id)mapping cloudCache:(id)cache remappedRecords:(id)self0 error:(id *)self1;
+ (BOOL)_shouldDeletePrivateRecordWithNaturalPrivateScopedIdentifier:(id)identifier correctPrivateScopedIdentifier:(id)scopedIdentifier cloudCache:(id)cache transientPullRepository:(id)repository;
+ (BOOL)applyShareRemapFixUpTasks:(id)tasks scope:(id)scope store:(id)store onPutBatchInPullQueue:(id)queue error:(id *)error;
+ (BOOL)mingleChangeBatch:(id)batch scope:(id)scope forStore:(id)store onPutBatchInPullQueue:(id)queue error:(id *)error;
+ (BOOL)mingleRemappedBatch:(id)batch scope:(id)scope forStore:(id)store onPutBatchInPullQueue:(id)queue error:(id *)error;
+ (BOOL)mingleSharedRemappedBatch:(id)batch scope:(id)scope sharedScope:(id)sharedScope forStore:(id)store fixUpTasks:(id *)tasks onPutBatchInPullQueue:(id)queue error:(id *)error;
@end

@implementation CPLMingleUtility

+ (BOOL)applyShareRemapFixUpTasks:(id)tasks scope:(id)scope store:(id)store onPutBatchInPullQueue:(id)queue error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  tasksCopy = tasks;
  scopeCopy = scope;
  storeCopy = store;
  queueCopy = queue;
  cloudCache = [storeCopy cloudCache];
  remappedRecords = [storeCopy remappedRecords];
  transientPullRepository = [storeCopy transientPullRepository];
  v15 = objc_alloc_init(CPLChangeBatch);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v16 = tasksCopy;
  v51 = [v16 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v51)
  {
    errorCopy = error;
    v42 = queueCopy;
    v43 = storeCopy;
    v44 = scopeCopy;
    v52 = 0;
    v45 = v15;
    v46 = *v58;
    v47 = v16;
    while (1)
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v58 != v46)
        {
          objc_enumerationMutation(v16);
        }

        v18 = *(*(&v57 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        sharedCloudScopedIdentifier = [v18 sharedCloudScopedIdentifier];
        realCloudScopedIdentifier = [v18 realCloudScopedIdentifier];
        proposedPrivateScopedIdentifier = [v18 proposedPrivateScopedIdentifier];
        v23 = [CPLScopedIdentifier alloc];
        identifier = [realCloudScopedIdentifier identifier];
        v25 = [(CPLScopedIdentifier *)v23 initRelativeToScopedIdentifier:proposedPrivateScopedIdentifier identifier:identifier];

        if ([self _shouldDeletePrivateRecordWithNaturalPrivateScopedIdentifier:v25 correctPrivateScopedIdentifier:proposedPrivateScopedIdentifier cloudCache:cloudCache transientPullRepository:transientPullRepository])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v26 = __CPLTaskOSLogDomain_619();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              privateCloudScopedIdentifier = [v18 privateCloudScopedIdentifier];
              *buf = 138413058;
              v62 = privateCloudScopedIdentifier;
              v63 = 2112;
              v64 = sharedCloudScopedIdentifier;
              v65 = 2112;
              v66 = realCloudScopedIdentifier;
              v67 = 2112;
              v68 = v25;
              _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_DEFAULT, "After fix-up of %@, acknowledging shared record %@ has been remapped to %@ too late - so we will need to delete %@ in the client", buf, 0x2Au);
            }
          }

          recordClass = [objc_msgSend(v18 recordClass];
          [(CPLChangeBatch *)v45 addRecord:recordClass];
        }

        else
        {
          if (_CPLSilentLogging)
          {
            goto LABEL_16;
          }

          recordClass = __CPLTaskOSLogDomain_619();
          if (os_log_type_enabled(recordClass, OS_LOG_TYPE_DEFAULT))
          {
            privateCloudScopedIdentifier2 = [v18 privateCloudScopedIdentifier];
            *buf = 138412802;
            v62 = privateCloudScopedIdentifier2;
            v63 = 2112;
            v64 = sharedCloudScopedIdentifier;
            v65 = 2112;
            v66 = realCloudScopedIdentifier;
            _os_log_impl(&dword_1DC05A000, recordClass, OS_LOG_TYPE_DEFAULT, "After fix-up of %@, acknowledging %@ has been remapped to %@", buf, 0x20u);
          }
        }

LABEL_16:
        v56 = 0;
        v30 = [remappedRecords addRemappedRecordWithScopedIdentifier:sharedCloudScopedIdentifier realScopedIdentifier:realCloudScopedIdentifier error:{&v56, errorCopy, v42, v43, v44}];
        v31 = v56;
        if (v30)
        {
          sharedCloudScopedIdentifier2 = [v18 sharedCloudScopedIdentifier];
          v55 = v31;
          v33 = [transientPullRepository markUnmingledChangeWithScopedIdentifierAsMingled:sharedCloudScopedIdentifier2 error:&v55];
          v34 = v55;

          if (v33)
          {
            v35 = 1;
            goto LABEL_21;
          }

          v31 = v34;
        }

        v34 = v31;

        v35 = 0;
        v52 = v34;
LABEL_21:

        objc_autoreleasePoolPop(v19);
        v16 = v47;
      }

      v51 = [v47 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (!v51)
      {

        if (v35)
        {
          storeCopy = v43;
          scopeCopy = v44;
          error = errorCopy;
          queueCopy = v42;
          v15 = v45;
          v36 = v52;
          goto LABEL_26;
        }

        storeCopy = v43;
        scopeCopy = v44;
        error = errorCopy;
        queueCopy = v42;
        v15 = v45;
        v36 = v52;
        if (errorCopy)
        {
LABEL_30:
          if ((v35 & 1) == 0)
          {
            v38 = v36;
            LOBYTE(v35) = 0;
            *error = v36;
          }
        }

        goto LABEL_33;
      }
    }
  }

  v36 = 0;
LABEL_26:
  if ([(CPLChangeBatch *)v15 count])
  {
    v54 = v36;
    LOBYTE(v35) = [self _applyMingledBatch:v15 scope:scopeCopy forStore:storeCopy onPutBatchInPullQueue:queueCopy error:&v54];
    v37 = v54;

    v36 = v37;
    if (error)
    {
      goto LABEL_30;
    }
  }

  else
  {
    LOBYTE(v35) = 1;
  }

LABEL_33:

  v39 = *MEMORY[0x1E69E9840];
  return v35;
}

+ (BOOL)mingleSharedRemappedBatch:(id)batch scope:(id)scope sharedScope:(id)sharedScope forStore:(id)store fixUpTasks:(id *)tasks onPutBatchInPullQueue:(id)queue error:(id *)error
{
  v95 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  scopeCopy = scope;
  sharedScopeCopy = sharedScope;
  storeCopy = store;
  queueCopy = queue;
  cloudCache = [storeCopy cloudCache];
  remappedRecords = [storeCopy remappedRecords];
  transientPullRepository = [storeCopy transientPullRepository];
  v68 = objc_alloc_init(CPLChangeBatch);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v19 = batchCopy;
  v75 = [v19 countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (!v75)
  {

    v53 = 0;
    v70 = 0;
    goto LABEL_58;
  }

  tasksCopy = tasks;
  v65 = queueCopy;
  obj = v19;
  v70 = 0;
  v66 = storeCopy;
  v67 = sharedScopeCopy;
  v77 = 0;
  v71 = 1;
  v74 = *v83;
  *&v20 = 138413058;
  v63 = v20;
  do
  {
    for (i = 0; i != v75; ++i)
    {
      if (*v83 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v82 + 1) + 8 * i);
      v23 = objc_autoreleasePoolPush();
      scopedIdentifier = [v22 scopedIdentifier];
      realScopedIdentifier = [v22 realScopedIdentifier];
      v26 = [CPLScopedIdentifier alloc];
      scopeIdentifier = [scopeCopy scopeIdentifier];
      identifier = [scopedIdentifier identifier];
      v29 = [(CPLScopedIdentifier *)v26 initWithScopeIdentifier:scopeIdentifier identifier:identifier];

      v30 = v29;
      v31 = [transientPullRepository unmingledChangeWithScopedIdentifier:v30];
      v32 = v31;
      if (v31 && [v31 supportsSharingScopedIdentifier])
      {
        if ([v32 isDelete])
        {
          v33 = v30;
          if (_CPLSilentLogging)
          {
LABEL_36:

            goto LABEL_37;
          }

          v34 = __CPLTaskOSLogDomain_619();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v87 = scopedIdentifier;
            v88 = 2112;
            v89 = realScopedIdentifier;
            v90 = 2112;
            v91 = v30;
            _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_DEFAULT, "%@ has been remapped to %@ but the private record %@ is meant to be deleted", buf, 0x20u);
          }

          v33 = v30;
LABEL_35:

          goto LABEL_36;
        }

        sharingRecordScopedIdentifier = [v32 sharingRecordScopedIdentifier];
        v33 = sharingRecordScopedIdentifier;
        if (!sharingRecordScopedIdentifier)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v41 = __CPLTaskOSLogDomain_619();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v87 = scopedIdentifier;
              v88 = 2112;
              v89 = realScopedIdentifier;
              v90 = 2112;
              v91 = v30;
              v42 = v41;
              v43 = "%@ has been remapped to %@ but the private record %@ is not shared any more";
              v44 = 32;
              goto LABEL_32;
            }

LABEL_33:
          }

LABEL_34:
          v34 = v30;
          goto LABEL_35;
        }

        if (([sharingRecordScopedIdentifier isEqual:scopedIdentifier] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v41 = __CPLTaskOSLogDomain_619();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v63;
              v87 = scopedIdentifier;
              v88 = 2112;
              v89 = realScopedIdentifier;
              v90 = 2112;
              v91 = v30;
              v92 = 2112;
              v93 = v33;
              v42 = v41;
              v43 = "%@ has been remapped to %@ but the private record %@ is already shared to %@";
              v44 = 42;
LABEL_32:
              _os_log_impl(&dword_1DC05A000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, v44);
            }

            goto LABEL_33;
          }

          goto LABEL_34;
        }

        scopedIdentifier2 = v30;
      }

      else
      {

        v33 = [cloudCache targetForRecordWithSharedCloudScopedIdentifier:scopedIdentifier];
        if ([v33 targetState] != 3)
        {
          goto LABEL_36;
        }

        scopedIdentifier2 = [v33 scopedIdentifier];
      }

      if (scopedIdentifier2)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v36 = __CPLTaskOSLogDomain_619();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v87 = scopedIdentifier;
            v88 = 2112;
            v89 = realScopedIdentifier;
            v90 = 2112;
            v91 = scopedIdentifier2;
            _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, "%@ has been remapped to %@ but we will need to fix up %@ first", buf, 0x20u);
          }
        }

        v37 = -[CPLSharedRemapFixUpTask initWithSharedCloudScopedIdentifier:realCloudScopedIdentifier:privateCloudScopedIdentifier:proposedPrivateScopedIdentifier:recordClass:]([CPLSharedRemapFixUpTask alloc], "initWithSharedCloudScopedIdentifier:realCloudScopedIdentifier:privateCloudScopedIdentifier:proposedPrivateScopedIdentifier:recordClass:", scopedIdentifier, realScopedIdentifier, scopedIdentifier2, v30, [v22 recordClass]);
        v38 = v70;
        if (!v70)
        {
          v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v70 = v38;
        [v38 addObject:{v37, v63}];
        v39 = 1;
        goto LABEL_52;
      }

LABEL_37:
      v45 = [CPLScopedIdentifier alloc];
      identifier2 = [realScopedIdentifier identifier];
      scopedIdentifier2 = [(CPLScopedIdentifier *)v45 initRelativeToScopedIdentifier:v30 identifier:identifier2];

      if ([self _shouldDeletePrivateRecordWithNaturalPrivateScopedIdentifier:scopedIdentifier2 correctPrivateScopedIdentifier:v30 cloudCache:cloudCache transientPullRepository:transientPullRepository])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v47 = __CPLTaskOSLogDomain_619();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v87 = scopedIdentifier;
            v88 = 2112;
            v89 = realScopedIdentifier;
            v90 = 2112;
            v91 = scopedIdentifier2;
            _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_DEFAULT, "Acknowledging shared record %@ has been remapped to %@ too late - so we will need to delete %@ in the client", buf, 0x20u);
          }
        }

        recordClass = [objc_msgSend(v22 recordClass];
        [(CPLChangeBatch *)v68 addRecord:recordClass];
LABEL_46:

        goto LABEL_47;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        recordClass = __CPLTaskOSLogDomain_619();
        if (os_log_type_enabled(recordClass, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v87 = scopedIdentifier;
          v88 = 2112;
          v89 = realScopedIdentifier;
          _os_log_impl(&dword_1DC05A000, recordClass, OS_LOG_TYPE_DEFAULT, "Acknowledging shared record %@ has been remapped to %@", buf, 0x16u);
        }

        goto LABEL_46;
      }

LABEL_47:
      v81 = 0;
      v49 = [remappedRecords addRemappedRecordWithScopedIdentifier:scopedIdentifier realScopedIdentifier:realScopedIdentifier error:{&v81, v63}];
      v50 = v81;
      v51 = v50;
      if (v49)
      {
        v80 = v50;
        v52 = [transientPullRepository markUnmingledChangeWithScopedIdentifierAsMingled:scopedIdentifier error:&v80];
        v37 = v80;

        if (v52)
        {
          v39 = 1;
          v71 = 1;
          goto LABEL_52;
        }

        v51 = v37;
      }

      v39 = 0;
      v71 = 0;
      v37 = v77;
      v77 = v51;
LABEL_52:

      objc_autoreleasePoolPop(v23);
      if (!v39)
      {
        goto LABEL_55;
      }
    }

    v75 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
  }

  while (v75);
LABEL_55:
  v19 = obj;

  storeCopy = v66;
  sharedScopeCopy = v67;
  tasks = tasksCopy;
  queueCopy = v65;
  v53 = v77;
  if ((v71 & 1) == 0)
  {
LABEL_61:
    if (error)
    {
      v60 = v53;
      v58 = 0;
      *error = v53;
    }

    else
    {
      v58 = 0;
    }

    v59 = v68;
    v57 = v70;
    goto LABEL_65;
  }

LABEL_58:
  if ([(CPLChangeBatch *)v68 count])
  {
    v79 = v53;
    v54 = [self _applyMingledBatch:v68 scope:scopeCopy forStore:storeCopy onPutBatchInPullQueue:queueCopy error:&v79];
    v55 = v79;

    v53 = v55;
    if ((v54 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v56 = v70;
  v57 = v70;
  *tasks = v70;
  v58 = 1;
  v59 = v68;
LABEL_65:

  v61 = *MEMORY[0x1E69E9840];
  return v58;
}

+ (BOOL)_shouldDeletePrivateRecordWithNaturalPrivateScopedIdentifier:(id)identifier correctPrivateScopedIdentifier:(id)scopedIdentifier cloudCache:(id)cache transientPullRepository:(id)repository
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  cacheCopy = cache;
  repositoryCopy = repository;
  v15 = 0;
  if (([identifierCopy isEqual:scopedIdentifierCopy] & 1) == 0)
  {
    if ([cacheCopy hasRecordWithScopedIdentifier:identifierCopy])
    {
      if ([cacheCopy hasRecordWithScopedIdentifier:scopedIdentifierCopy] & 1) != 0 || (objc_msgSend(repositoryCopy, "unmingledChangeWithScopedIdentifier:", scopedIdentifierCopy), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isFullRecord"), v13, (v14))
      {
        v15 = 1;
      }
    }
  }

  return v15;
}

+ (BOOL)mingleRemappedBatch:(id)batch scope:(id)scope forStore:(id)store onPutBatchInPullQueue:(id)queue error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  scopeCopy = scope;
  storeCopy = store;
  queueCopy = queue;
  v15 = objc_alloc_init(CPLChangeBatch);
  idMapping = [storeCopy idMapping];
  cloudCache = [storeCopy cloudCache];
  remappedRecords = [storeCopy remappedRecords];
  v44 = storeCopy;
  transientPullRepository = [storeCopy transientPullRepository];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = batchCopy;
  v16 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    v36 = queueCopy;
    v37 = scopeCopy;
    errorCopy = error;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v49 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v48 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      scopedIdentifier = [v20 scopedIdentifier];
      realScopedIdentifier = [v20 realScopedIdentifier];
      recordClass = [v20 recordClass];
      v47 = 0;
      v25 = v15;
      v26 = [self _remapScopedIdentifier:scopedIdentifier to:realScopedIdentifier class:recordClass inBatch:v15 store:v44 idMapping:idMapping cloudCache:cloudCache remappedRecords:remappedRecords error:&v47];
      v27 = v47;

      if (!v26)
      {
        break;
      }

      scopedIdentifier2 = [v20 scopedIdentifier];
      v46 = v27;
      v29 = [transientPullRepository markUnmingledChangeWithScopedIdentifierAsMingled:scopedIdentifier2 error:&v46];
      v30 = v46;

      if (!v29)
      {
        v27 = v30;
        break;
      }

      objc_autoreleasePoolPop(v21);
      ++v19;
      v15 = v25;
      if (v17 == v19)
      {
        v17 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
        queueCopy = v36;
        scopeCopy = v37;
        error = errorCopy;
        if (v17)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v15 = v25;
    objc_autoreleasePoolPop(v21);

    v31 = 0;
    queueCopy = v36;
    scopeCopy = v37;
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_10:

    if (![(CPLChangeBatch *)v15 count])
    {
      v27 = 0;
      v31 = 1;
      goto LABEL_18;
    }

    v45 = 0;
    v31 = [self _applyMingledBatch:v15 scope:scopeCopy forStore:v44 onPutBatchInPullQueue:queueCopy error:&v45];
    v27 = v45;
    if (!error)
    {
      goto LABEL_18;
    }
  }

  if ((v31 & 1) == 0)
  {
    v32 = v27;
    v31 = 0;
    *error = v27;
  }

LABEL_18:

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (BOOL)_remapScopedIdentifier:(id)identifier to:(id)to class:(Class)class inBatch:(id)batch store:(id)store idMapping:(id)mapping cloudCache:(id)cache remappedRecords:(id)self0 error:(id *)self1
{
  v70 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  toCopy = to;
  batchCopy = batch;
  storeCopy = store;
  mappingCopy = mapping;
  cacheCopy = cache;
  recordsCopy = records;
  if (!toCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v51 = __CPLTaskOSLogDomain_619();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        classCopy7 = class;
        v64 = 2112;
        v65 = identifierCopy;
        _os_log_impl(&dword_1DC05A000, v51, OS_LOG_TYPE_ERROR, "Trying to remap <%@ %@> to no other scoped identifier", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLMingleUtility.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v53 lineNumber:176 description:{@"Trying to remap <%@ %@> to no other scoped identifier", class, identifierCopy}];

    abort();
  }

  v23 = recordsCopy;
  v61 = 0;
  v24 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:toCopy isFinal:&v61];
  if (!v24)
  {
LABEL_23:
    v38 = cacheCopy;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v39 = __CPLTaskOSLogDomain_619();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        classCopy7 = class;
        v64 = 2112;
        v65 = identifierCopy;
        v66 = 2112;
        v67 = toCopy;
        _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_DEFAULT, "<%@ %@> has been remapped to %@", buf, 0x20u);
      }
    }

    v59 = 0;
    v40 = [mappingCopy setFinalCloudScopedIdentifier:toCopy forPendingCloudScopedIdentifier:identifierCopy error:&v59];
    v41 = v59;
    v42 = v41;
    if (v40)
    {
      v58 = v41;
      v55 = cacheCopy;
      v43 = [cacheCopy remapAllRecordsWithPreviousScopedIdentifier:identifierCopy newScopedIdentifier:toCopy error:&v58];
      v25 = v58;

      if (v43)
      {
        goto LABEL_29;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v47 = __CPLTaskOSLogDomain_619();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          classCopy7 = class;
          v64 = 2112;
          v65 = identifierCopy;
          v66 = 2112;
          v67 = toCopy;
          v68 = 2112;
          v69 = v25;
          _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_ERROR, "Failed to update cloud cache remapping all %@s with %@ to %@: %@", buf, 0x2Au);
        }
      }

      v42 = v25;
      v38 = cacheCopy;
      if (!error)
      {
LABEL_36:

        v44 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v45 = __CPLTaskOSLogDomain_619();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          classCopy7 = toCopy;
          v64 = 2112;
          v65 = identifierCopy;
          v66 = 2112;
          v67 = v42;
          _os_log_impl(&dword_1DC05A000, v45, OS_LOG_TYPE_ERROR, "Failed to set final cloud identifier %@ for cloud identifier %@: %@", buf, 0x20u);
        }
      }

      if (!error)
      {
        goto LABEL_36;
      }
    }

    v46 = v42;
    *error = v42;
    goto LABEL_36;
  }

  v25 = v24;
  v26 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:identifierCopy isFinal:&v61];
  if (!v26)
  {
    v55 = cacheCopy;
    if (![cacheCopy hasRecordWithScopedIdentifier:identifierCopy])
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_16;
      }

      v34 = __CPLTaskOSLogDomain_619();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        classCopy7 = class;
        v64 = 2112;
        v65 = identifierCopy;
        _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring remap for <%@ %@> as we don't know this record", buf, 0x16u);
      }

LABEL_15:

LABEL_16:
LABEL_29:

      v44 = [v23 addRemappedRecordWithScopedIdentifier:identifierCopy realScopedIdentifier:toCopy error:error];
      v38 = v55;
      goto LABEL_51;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLTaskOSLogDomain_619();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        classCopy7 = class;
        v64 = 2112;
        v65 = identifierCopy;
        v31 = "<%@ %@> has been remapped and should not even be here to begin with. Fixing cloud cache";
        v32 = v30;
        v33 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }

LABEL_13:
    }

LABEL_14:
    v34 = [(objc_class *)class newDeleteChangeWithScopedIdentifier:identifierCopy];
    [batchCopy addRecord:v34];
    goto LABEL_15;
  }

  v54 = v23;
  v27 = batchCopy;
  transactionClientCacheView = [storeCopy transactionClientCacheView];
  v29 = [transactionClientCacheView hasRecordWithScopedIdentifier:v25];

  if (v29)
  {
    batchCopy = v27;
    v55 = cacheCopy;
    v23 = v54;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLTaskOSLogDomain_619();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        classCopy7 = class;
        v64 = 2112;
        v65 = identifierCopy;
        v31 = "Got a remapped <%@ %@> too late, so we will need to delete it in the client";
        v32 = v30;
        v33 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
        _os_log_impl(&dword_1DC05A000, v32, v33, v31, buf, 0x16u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v35 = __CPLTaskOSLogDomain_619();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      classCopy7 = class;
      v64 = 2112;
      v65 = identifierCopy;
      v66 = 2112;
      v67 = toCopy;
      v68 = 2112;
      v69 = v25;
      _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_DEFAULT, "<%@ %@> had been remapped to %@ but we believed %@ was already pointing to this cloud identifier. Which is wrong. Doing a normal remap here", buf, 0x2Au);
    }
  }

  v60 = 0;
  v36 = [mappingCopy removeMappingForCloudScopedIdentifier:toCopy error:&v60];
  v37 = v60;
  if (v36)
  {

    batchCopy = v27;
    v23 = v54;
    goto LABEL_23;
  }

  batchCopy = v27;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v48 = __CPLTaskOSLogDomain_619();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      classCopy7 = toCopy;
      v64 = 2112;
      v65 = v37;
      _os_log_impl(&dword_1DC05A000, v48, OS_LOG_TYPE_ERROR, "Can't reset mapping for %@: %@", buf, 0x16u);
    }
  }

  v44 = 0;
  v38 = cacheCopy;
  v23 = v54;
LABEL_51:

  v49 = *MEMORY[0x1E69E9840];
  return v44;
}

+ (BOOL)mingleChangeBatch:(id)batch scope:(id)scope forStore:(id)store onPutBatchInPullQueue:(id)queue error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  scopeCopy = scope;
  storeCopy = store;
  queueCopy = queue;
  cloudCache = [storeCopy cloudCache];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = __CPLTaskOSLogDomain_619();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = batchCopy;
      _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "Processing %@", buf, 0xCu);
    }
  }

  v27 = 0;
  v18 = [cloudCache cloudChangeBatchFromBatch:batchCopy usingMapping:0 isFinal:0 withError:&v27];
  v19 = v27;
  v20 = v19;
  if (v18)
  {
    v26 = v19;
    v21 = [self _applyMingledBatch:v18 scope:scopeCopy forStore:storeCopy onPutBatchInPullQueue:queueCopy error:&v26];
    v22 = v26;

    v20 = v22;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  if ((v21 & 1) == 0)
  {
    v23 = v20;
    *error = v20;
  }

LABEL_11:

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (BOOL)_applyMingledBatch:(id)batch scope:(id)scope forStore:(id)store onPutBatchInPullQueue:(id)queue error:(id *)error
{
  v113 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  scopeCopy = scope;
  storeCopy = store;
  queueCopy = queue;
  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x2020000000;
  v104 = 0;
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  v102 = 0;
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __82__CPLMingleUtility__applyMingledBatch_scope_forStore_onPutBatchInPullQueue_error___block_invoke;
  v96[3] = &unk_1E861B948;
  v99 = v103;
  v100 = v101;
  v73 = storeCopy;
  v97 = v73;
  v68 = scopeCopy;
  v98 = v68;
  v74 = MEMORY[0x1E128EBA0](v96);
  cloudCache = [v73 cloudCache];
  idMapping = [v73 idMapping];
  if (batchCopy)
  {
    if (![batchCopy count])
    {
      v15 = 0;
LABEL_7:
      v17 = batchCopy;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLTaskOSLogDomain_619();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v107 = batchCopy;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEBUG, "Applying to cloud cache %@", buf, 0xCu);
        }

        v17 = batchCopy;
      }

      v94 = v15;
      v16 = [cloudCache applyBatch:v17 isFinal:0 direction:2 withError:&v94];
      v14 = v94;

      if (!v16)
      {
        goto LABEL_81;
      }

      if (![batchCopy count])
      {
        LOBYTE(v16) = 1;
        goto LABEL_84;
      }

      downloadQueue = [v73 downloadQueue];
      scopes = [v73 scopes];
      v65 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __82__CPLMingleUtility__applyMingledBatch_scope_forStore_onPutBatchInPullQueue_error___block_invoke_2;
      v91[3] = &unk_1E861E2C0;
      v62 = v20;
      v92 = v62;
      v67 = scopes;
      v93 = v67;
      v63 = MEMORY[0x1E128EBA0](v91);
      v89 = 0u;
      v90 = 0u;
      v88 = 0u;
      v87 = 0u;
      obj = batchCopy;
      v21 = [obj countByEnumeratingWithState:&v87 objects:v112 count:16];
      if (v21)
      {
        v23 = *v88;
        *&v22 = 138412802;
        v61 = v22;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v88 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v87 + 1) + 8 * i);
            v26 = objc_autoreleasePoolPush();
            if ([v25 supportsResources] && v74[2]())
            {
              scopedIdentifier = [v25 scopedIdentifier];
              scopeIdentifier = [scopedIdentifier scopeIdentifier];

              if (([v65 containsObject:scopeIdentifier] & 1) == 0 && (v63)[2](v63, scopeIdentifier))
              {
                if (([v25 isDelete] & 1) != 0 || objc_msgSend(v25, "hasChangeType:", 2) && (objc_msgSend(v25, "inTrash") & 1) != 0 || objc_msgSend(v25, "isFullRecord", v61) && (objc_msgSend(v25, "resources"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count") == 0, v29, !v30))
                {
                  [v65 addObject:{scopeIdentifier, v61}];
                }
              }
            }

            scopedIdentifier2 = [v25 scopedIdentifier];
            v86 = 0;
            if ([v25 supportsResources] && ((objc_msgSend(v25, "hasChangeType:", 8) & 1) != 0 || objc_msgSend(v25, "isDelete")))
            {
              v32 = [idMapping localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier2 isFinal:&v86];
              if (v32)
              {
                v85 = v14;
                v33 = [downloadQueue removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:v32 error:&v85];
                v34 = v85;

                if (v33)
                {
                  v35 = 1;
                }

                else
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v36 = __CPLTaskOSLogDomain_619();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                    {
                      v37 = objc_opt_class();
                      *buf = v61;
                      v107 = v37;
                      v108 = 2112;
                      v109 = v32;
                      v110 = 2112;
                      v111 = v34;
                      v38 = v37;
                      _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_ERROR, "Can't remove background download tasks for <%@ %@> from queue: %@", buf, 0x20u);
                    }
                  }

                  v35 = 0;
                }

                v14 = v34;
              }

              else
              {
                v35 = 1;
              }
            }

            else
            {
              v35 = 1;
            }

            objc_autoreleasePoolPop(v26);
            if (!v35)
            {
              v42 = obj;
LABEL_77:
              v49 = v14;
              goto LABEL_78;
            }
          }

          v21 = [obj countByEnumeratingWithState:&v87 objects:v112 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      if ([v65 count])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v39 = __CPLTaskOSLogDomain_619();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            allObjects = [v65 allObjects];
            v41 = [allObjects componentsJoinedByString:{@", "}];
            *buf = 138543362;
            v107 = v41;
            _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_DEFAULT, "Tentatively consider %{public}@ have moved under quota", buf, 0xCu);
          }
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v42 = v65;
        v43 = [v42 countByEnumeratingWithState:&v81 objects:v105 count:16];
        if (v43)
        {
          v44 = *v82;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v82 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v46 = [v67 scopeWithIdentifier:*(*(&v81 + 1) + 8 * j)];
              if (v46)
              {
                v47 = [v67 sharingScopeForScope:v46];
                if (v47)
                {
                  v80 = v14;
                  v48 = [v67 setValue:0 forFlag:2 forScope:v47 error:&v80];
                  v49 = v80;

                  if ((v48 & 1) == 0)
                  {

                    goto LABEL_78;
                  }
                }

                else
                {
                  v49 = v14;
                }

                v79 = v49;
                v50 = [v67 setValue:0 forFlag:2 forScope:v46 error:&v79];
                v14 = v79;

                if (!v50)
                {
                  goto LABEL_77;
                }
              }
            }

            v43 = [v42 countByEnumeratingWithState:&v81 objects:v105 count:16];
          }

          while (v43);
        }
      }

      v51 = v73;
      if ([v67 busyStateForScope:v68])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v52 = __CPLTaskOSLogDomain_619();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v107 = v68;
            _os_log_impl(&dword_1DC05A000, v52, OS_LOG_TYPE_DEFAULT, "Tentatively consider %@ is not busy any more", buf, 0xCu);
          }
        }

        v78 = v14;
        v53 = [v67 storeBusyState:0 forScope:v68 error:&v78];
        v49 = v78;

        if (!v53)
        {
LABEL_79:
          LOBYTE(v16) = 0;
          goto LABEL_80;
        }

        v54 = [v67 sharingScopeForScope:v68];
        if (v54)
        {
          v77 = v49;
          v55 = [v67 storeBusyState:0 forScope:v54 error:&v77];
          v14 = v77;

          if (!v55)
          {
            LOBYTE(v16) = 0;
            v49 = v14;
LABEL_80:

            v14 = v49;
            goto LABEL_81;
          }
        }

        else
        {
          v14 = v49;
        }

        v51 = v73;
      }

      pullQueue = [v51 pullQueue];
      v76 = v14;
      v60 = [pullQueue appendChangeBatch:obj error:&v76];
      v49 = v76;

      if (v60)
      {
        LOBYTE(v16) = 1;
        goto LABEL_80;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v42 = __CPLTaskOSLogDomain_619();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v107 = v49;
          _os_log_impl(&dword_1DC05A000, v42, OS_LOG_TYPE_ERROR, "Can't put batch in pull queue: %@", buf, 0xCu);
        }

LABEL_78:
      }

      goto LABEL_79;
    }

    v95 = 0;
    v12 = queueCopy[2](queueCopy, batchCopy, &v95);
    v13 = v95;
    v14 = v13;
    if (v12)
    {
      v15 = v13;
      goto LABEL_7;
    }

    LOBYTE(v16) = 0;
  }

  else
  {
    LOBYTE(v16) = 0;
    v14 = 0;
  }

LABEL_81:
  if (error && (v16 & 1) == 0)
  {
    v56 = v14;
    LOBYTE(v16) = 0;
    *error = v14;
  }

LABEL_84:

  _Block_object_dispose(v101, 8);
  _Block_object_dispose(v103, 8);

  v57 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __82__CPLMingleUtility__applyMingledBatch_scope_forStore_onPutBatchInPullQueue_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v3 = [*(a1 + 32) pushRepository];
    v4 = [*(a1 + 40) scopeIdentifier];
    *(*(*(a1 + 56) + 8) + 24) = [v3 hasChangesInScopeWithIdentifier:v4] ^ 1;
  }

  return *(*(*(a1 + 56) + 8) + 24);
}

uint64_t __82__CPLMingleUtility__applyMingledBatch_scope_forStore_onPutBatchInPullQueue_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = [*(a1 + 40) scopeWithIdentifier:v3];
    if (v5)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "valueForFlag:forScope:", 2, v5)}];
    }

    else
    {
      v4 = MEMORY[0x1E695E110];
    }

    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  v6 = [v4 BOOLValue];

  return v6;
}

@end