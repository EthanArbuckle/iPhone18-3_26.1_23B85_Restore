@interface MCMDataProtectionChangeOperation
+ (BOOL)deleteUpdateFileWithContainerIdentity:(id)a3 error:(id *)a4;
+ (id)_readAndValidateDataProtectionUpdateAtURL:(id)a3 userIdentityCache:(id)a4 error:(id *)a5;
+ (id)dataProtectionChangeOperationAtURL:(id)a3 queue:(id)a4 error:(id *)a5;
+ (id)urlForProtectionOperationWithContainerIdentity:(id)a3;
- (BOOL)_deleteUpdateFileWithError:(id *)a3;
- (BOOL)_onQueue_deleteUpdateFileWithError:(id *)a3;
- (BOOL)_onQueue_stillMostCurrentUpdate;
- (BOOL)_onQueue_writeToDiskWithError:(id *)a3;
- (BOOL)_runChangeOperationNeedToRetry:(BOOL *)a3 error:(id *)a4;
- (BOOL)_stillMostCurrentUpdate;
- (BOOL)retried;
- (BOOL)retryIfLocked;
- (BOOL)writeToDiskWithError:(id *)a3;
- (MCMDataProtectionChangeOperation)initWithContainerMetadata:(id)a3 newClass:(int)a4 retryingIfLocked:(BOOL)a5 changeType:(unint64_t)a6 internalChangeID:(id)a7 queue:(id)a8 userIdentityCache:(id)a9;
- (MCMMetadata)dataContainerMetadata;
- (MCMUserIdentityCache)userIdentityCache;
- (NSUUID)internalChangeID;
- (OS_dispatch_queue)queue;
- (id)completionBlock;
- (id)retryStartBlock;
- (int)newDataProtectionClass;
- (unint64_t)changeType;
- (void)performChangeOperation;
- (void)setChangeType:(unint64_t)a3;
- (void)setCompletionBlock:(id)a3;
- (void)setDataContainerMetadata:(id)a3;
- (void)setInternalChangeID:(id)a3;
- (void)setNewDataProtectionClass:(int)a3;
- (void)setRetried:(BOOL)a3;
- (void)setRetryIfLocked:(BOOL)a3;
- (void)setRetryStartBlock:(id)a3;
@end

@implementation MCMDataProtectionChangeOperation

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (OS_dispatch_queue)queue
{
  result = self->_queue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setInternalChangeID:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_internalChangeID = &self->_internalChangeID;

  objc_storeStrong(p_internalChangeID, a3);
}

- (NSUUID)internalChangeID
{
  result = self->_internalChangeID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setRetried:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_retried = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)retried
{
  result = self->_retried;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCompletionBlock:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic_copy(self, a2, a3, 40);
}

- (id)completionBlock
{
  result = self->_completionBlock;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setRetryStartBlock:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic_copy(self, a2, a3, 32);
}

- (id)retryStartBlock
{
  result = self->_retryStartBlock;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setRetryIfLocked:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_retryIfLocked = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)retryIfLocked
{
  result = self->_retryIfLocked;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setChangeType:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_changeType = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (unint64_t)changeType
{
  result = self->_changeType;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setNewDataProtectionClass:(int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_newDataProtectionClass = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (int)newDataProtectionClass
{
  result = self->_newDataProtectionClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setDataContainerMetadata:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_dataContainerMetadata = &self->_dataContainerMetadata;

  objc_storeStrong(p_dataContainerMetadata, a3);
}

- (MCMMetadata)dataContainerMetadata
{
  result = self->_dataContainerMetadata;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)performChangeOperation
{
  v53 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v3 = [(MCMDataProtectionChangeOperation *)self _runChangeOperationNeedToRetry:&v50 error:&v49];
  v4 = v49;
  if (!v3)
  {
    v50 = 0;
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v19 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v20 = [v19 userIdentity];
      v21 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v22 = [v21 identifier];
      v23 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v24 = [v23 containerClass];
      v25 = [(MCMDataProtectionChangeOperation *)self newDataProtectionClass];
      *block = 138413314;
      *&block[4] = v20;
      *&block[12] = 2112;
      *&block[14] = v22;
      *&block[22] = 2048;
      *&block[24] = v24;
      *&block[32] = 1024;
      *&block[34] = v25;
      *&block[38] = 2112;
      v52 = v4;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "Operation to update protection classes for user: %@, id: %@, containerClass: %llu to class %d failed with error %@", block, 0x30u);
    }
  }

  if (v50 == 1)
  {
    if ([(MCMDataProtectionChangeOperation *)self retryIfLocked])
    {
      v6 = container_log_handle_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v33 = [(MCMDataProtectionChangeOperation *)self newDataProtectionClass];
        v34 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
        v35 = [v34 userIdentity];
        v36 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
        v37 = [v36 identifier];
        v38 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
        v39 = [v38 containerClass];
        *block = 67109890;
        *&block[4] = v33;
        *&block[8] = 2112;
        *&block[10] = v35;
        *&block[18] = 2112;
        *&block[20] = v37;
        *&block[28] = 2048;
        *&block[30] = v39;
        _os_log_debug_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEBUG, "Retrying container protection update to %d on next unlock for user: %@, id: %@, containerClass: %llu", block, 0x26u);
      }

      v7 = MCMLockStateQueue();
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __58__MCMDataProtectionChangeOperation_performChangeOperation__block_invoke;
      v48[3] = &unk_1E86B0E08;
      v48[4] = self;
      v8 = v48;
      v9 = v7;
      MEMORY[0x1E12D4880]();
      v10 = dispatch_time(0, 10000000000);
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __MCMRunTransactionalTaskWithDelay_block_invoke;
      *&block[24] = &unk_1E86B0F40;
      *&block[32] = v8;
      v11 = v8;
      dispatch_after(v10, v9, block);

      goto LABEL_21;
    }

    if (v50)
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v40 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
        v41 = [v40 userIdentity];
        v42 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
        v43 = [v42 identifier];
        v44 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
        v45 = [v44 containerClass];
        v46 = [(MCMDataProtectionChangeOperation *)self newDataProtectionClass];
        *block = 138413058;
        *&block[4] = v41;
        *&block[12] = 2112;
        *&block[14] = v43;
        *&block[22] = 2048;
        *&block[24] = v45;
        *&block[32] = 1024;
        *&block[34] = v46;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Tried to update user: %@, id: %@, containerClass: %llu to protection class %d, but was locked and didn't retry", block, 0x26u);
      }
    }
  }

  v47 = v4;
  v13 = [(MCMDataProtectionChangeOperation *)self _deleteUpdateFileWithError:&v47];
  v14 = v47;

  if (!v13)
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v26 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v27 = [v26 userIdentity];
      v28 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v29 = [v28 identifier];
      v30 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v31 = [v30 containerClass];
      v32 = [(MCMDataProtectionChangeOperation *)self newDataProtectionClass];
      *block = 138413058;
      *&block[4] = v27;
      *&block[12] = 2112;
      *&block[14] = v29;
      *&block[22] = 2048;
      *&block[24] = v31;
      *&block[32] = 1024;
      *&block[34] = v32;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to delete update file for user: %@, id: %@, containerClass: %llu, protection class %d", block, 0x26u);
    }
  }

  v16 = [(MCMDataProtectionChangeOperation *)self completionBlock];

  if (v16)
  {
    v17 = [(MCMDataProtectionChangeOperation *)self completionBlock];
    (v17)[2](v17, v14);
  }

  v4 = v14;
LABEL_21:

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __58__MCMDataProtectionChangeOperation_performChangeOperation__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) retried] & 1) == 0)
  {
    v2 = [*(a1 + 32) retryStartBlock];

    if (v2)
    {
      v3 = [*(a1 + 32) retryStartBlock];
      v3[2]();
    }
  }

  [*(a1 + 32) setRetried:1];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E69E9840];

  return [v4 performChangeOperation];
}

- (BOOL)_runChangeOperationNeedToRetry:(BOOL *)a3 error:(id *)a4
{
  v96 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__9195;
  v76 = __Block_byref_object_dispose__9196;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__9195;
  v70 = __Block_byref_object_dispose__9196;
  v71 = 0;
  v5 = MCMSharedFastWorkloop();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MCMDataProtectionChangeOperation__runChangeOperationNeedToRetry_error___block_invoke;
  block[3] = &unk_1E86B0730;
  block[4] = self;
  block[5] = &v72;
  block[6] = &v66;
  dispatch_async_and_wait(v5, block);

  if (!v67[5])
  {
    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v41 = [v40 userIdentity];
      v42 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v43 = [v42 identifier];
      v44 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v45 = [v44 containerClass];
      v46 = v73[5];
      *buf = 138413058;
      v89 = v41;
      v90 = 2112;
      v91 = v43;
      v92 = 2048;
      v93 = v45;
      v94 = 2112;
      v95 = v46;
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Failed to lookup container to set data protection for user identity: %@, identifier: %@, Class: %llu; %@", buf, 0x2Au);
    }

LABEL_39:
    v52 = 0;
    obj = 0;
LABEL_40:

    v38 = 0;
    if (a4)
    {
      *a4 = v73[5];
    }

    v62 = v52;
    goto LABEL_43;
  }

  v6 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
  v7 = [v6 containerPath];
  v8 = [v67[5] containerPath];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v47 = [[MCMError alloc] initWithErrorType:10];
    v48 = v73[5];
    v73[5] = v47;

    v39 = container_log_handle_for_category();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v49 = "Cancelling data protection operation because container path changed on disk. This indicates the app may have been updated and changed its protection level.";
LABEL_48:
    _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, v49, buf, 2u);
    goto LABEL_39;
  }

  if (![(MCMDataProtectionChangeOperation *)self _stillMostCurrentUpdate])
  {
    v50 = [[MCMError alloc] initWithErrorType:69];
    v51 = v73[5];
    v73[5] = v50;

    v39 = container_log_handle_for_category();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v49 = "Cancelling data protection operation because another more current operation on this container has taken precedence";
    goto LABEL_48;
  }

  v10 = containermanager_copy_global_configuration();
  v11 = [v10 appUserDataItemNames];

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v84 objects:v83 count:16];
  if (v13)
  {
    v14 = *v85;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v85 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v84 + 1) + 8 * i);
        v17 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
        v18 = [v17 containerPath];
        v19 = [v18 containerDataURL];
        v20 = [v19 URLByAppendingPathComponent:v16 isDirectory:1];

        if (v20)
        {
          [v12 addObject:v20];
        }

        else
        {
          v21 = container_log_handle_for_category();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v89 = v16;
            _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "itemURL is nil for item: %@", buf, 0xCu);
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v84 objects:v83 count:16];
    }

    while (v13);
  }

  v22 = +[MCMTestLocks sharedInstance];
  [v22 waitOnLock:10];

  v61 = [(MCMDataProtectionChangeOperation *)self changeType];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v23 = v12;
  v24 = [v23 countByEnumeratingWithState:&v79 objects:v78 count:16];
  v62 = v23;
  if (!v24)
  {
    goto LABEL_33;
  }

  v25 = *v80;
  v26 = *MEMORY[0x1E696A798];
  while (2)
  {
    for (j = 0; j != v24; ++j)
    {
      if (*v80 != v25)
      {
        objc_enumerationMutation(v62);
      }

      v28 = *(*(&v79 + 1) + 8 * j);
      v29 = +[MCMFileManager defaultManager];
      v30 = [(MCMDataProtectionChangeOperation *)self newDataProtectionClass];
      v64 = 0;
      v31 = [v29 setDataProtectionAtURL:v28 toDataProtectionClass:v30 directoriesOnly:(v61 & 2) == 0 recursive:1 error:&v64];
      v32 = v64;

      if ((v31 & 1) == 0)
      {
        v33 = [v32 domain];
        if ([v33 isEqualToString:v26])
        {
          v34 = [v32 code] == 1;

          if (v34)
          {
            v57 = [[MCMError alloc] initWithNSError:v32 url:v28 defaultErrorType:61];
            v58 = v73[5];
            v73[5] = v57;

            *a3 = 1;
            goto LABEL_46;
          }
        }

        else
        {
        }

        v35 = [v32 domain];
        if ([v35 isEqualToString:v26] && objc_msgSend(v32, "code") == 2)
        {
        }

        else
        {
          v36 = [v32 domain];
          if (([v36 isEqualToString:v26] & 1) == 0)
          {

LABEL_45:
            v55 = [[MCMError alloc] initWithNSError:v32 url:v28 defaultErrorType:152];
            v56 = v73[5];
            v73[5] = v55;

LABEL_46:
            v39 = v62;
            v52 = v62;
            goto LABEL_40;
          }

          v37 = [v32 code] == 9;

          if (!v37)
          {
            goto LABEL_45;
          }
        }
      }
    }

    v23 = v62;
    v24 = [v62 countByEnumeratingWithState:&v79 objects:v78 count:16];
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v38 = 1;
LABEL_43:
  _Block_object_dispose(&v66, 8);

  _Block_object_dispose(&v72, 8);
  v53 = *MEMORY[0x1E69E9840];
  return v38;
}

void __73__MCMDataProtectionChangeOperation__runChangeOperationNeedToRetry_error___block_invoke(uint64_t a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = +[MCMCommandContext privileged];
  v3 = [v2 containerCache];
  v4 = [*(a1 + 32) dataContainerMetadata];
  v5 = [v4 containerIdentity];
  v6 = *(*(a1 + 40) + 8);
  obj[0] = *(v6 + 40);
  v7 = [v3 entryForContainerIdentity:v5 error:obj];
  objc_storeStrong((v6 + 40), obj[0]);

  if (v7)
  {
    v8 = *(*(a1 + 40) + 8);
    v13 = *(v8 + 40);
    v9 = [v7 metadataWithError:&v13];
    objc_storeStrong((v8 + 40), v13);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_deleteUpdateFileWithError:(id *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(MCMDataProtectionChangeOperation *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__MCMDataProtectionChangeOperation__deleteUpdateFileWithError___block_invoke;
  v8[3] = &unk_1E86B0708;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a3;
  dispatch_sync(v5, v8);

  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t __63__MCMDataProtectionChangeOperation__deleteUpdateFileWithError___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_deleteUpdateFileWithError:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_onQueue_deleteUpdateFileWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (![(MCMDataProtectionChangeOperation *)self _onQueue_stillMostCurrentUpdate])
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v15 = [v14 userIdentity];
      v16 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      v17 = [v16 identifier];
      v18 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      *buf = 138412802;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      v24 = 2048;
      v25 = [v18 containerClass];
      _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Nothing to delete because there is a newer update for user: %@, id: %@, containerClass: %llu", buf, 0x20u);
    }

    v8 = 0;
    goto LABEL_8;
  }

  v5 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
  v6 = [v5 containerIdentity];
  v19 = 0;
  v7 = [MCMDataProtectionChangeOperation deleteUpdateFileWithContainerIdentity:v6 error:&v19];
  v8 = v19;

  if (v7)
  {
LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  if (a3)
  {
    v9 = v8;
    v10 = 0;
    *a3 = v8;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_stillMostCurrentUpdate
{
  v2 = self;
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MCMDataProtectionChangeOperation *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MCMDataProtectionChangeOperation__stillMostCurrentUpdate__block_invoke;
  block[3] = &unk_1E86B07A8;
  block[4] = v2;
  block[5] = &v7;
  dispatch_sync(v3, block);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __59__MCMDataProtectionChangeOperation__stillMostCurrentUpdate__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_stillMostCurrentUpdate];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_onQueue_stillMostCurrentUpdate
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
  v4 = [v3 containerIdentity];
  v5 = [MCMDataProtectionChangeOperation urlForProtectionOperationWithContainerIdentity:v4];

  if (!v5)
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Failed to get url for storing pending operations.", buf, 2u);
    }

    goto LABEL_9;
  }

  v6 = [(MCMDataProtectionChangeOperation *)self userIdentityCache];
  v18 = 0;
  v7 = [MCMDataProtectionChangeOperation _readAndValidateDataProtectionUpdateAtURL:v5 userIdentityCache:v6 error:&v18];
  v8 = v18;

  if (!v7)
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [v5 path];
      *buf = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to read data protection update from %@; error = %@", buf, 0x16u);
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  v10 = [v7 objectForKeyedSubscript:@"MCMDataOperationInternalID"];
  v11 = [v9 initWithUUIDString:v10];

  v12 = [(MCMDataProtectionChangeOperation *)self internalChangeID];
  v13 = [v12 isEqual:v11];

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)writeToDiskWithError:(id *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(MCMDataProtectionChangeOperation *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MCMDataProtectionChangeOperation_writeToDiskWithError___block_invoke;
  v8[3] = &unk_1E86B0708;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a3;
  dispatch_sync(v5, v8);

  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t __57__MCMDataProtectionChangeOperation_writeToDiskWithError___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _onQueue_writeToDiskWithError:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_onQueue_writeToDiskWithError:(id *)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
  if (!v5 || (v6 = v5, v7 = [(MCMDataProtectionChangeOperation *)self changeType], v6, !v7))
  {
    v30 = [[MCMError alloc] initWithErrorType:38 category:3];
    v32 = container_log_handle_for_category();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v38 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
      *buf = 138412546;
      v47 = v38;
      v48 = 2048;
      v49 = [(MCMDataProtectionChangeOperation *)self changeType];
      _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "Invalid Update Info: metadata: %@, changeType: %lu", buf, 0x16u);
    }

    v24 = 0;
    v17 = 0;
    v27 = 0;
    goto LABEL_19;
  }

  v39 = a3;
  v44[0] = @"MCMDataOperationIdentifier";
  v41 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
  v40 = [v41 identifier];
  v45[0] = v40;
  v44[1] = @"MCMDataOperationContainerClass";
  v8 = MEMORY[0x1E696AD98];
  v9 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
  v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v9, "containerClass")}];
  v45[1] = v10;
  v44[2] = @"MCMDataOperationProtectionClass";
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[MCMDataProtectionChangeOperation newDataProtectionClass](self, "newDataProtectionClass")}];
  v45[2] = v11;
  v44[3] = @"MCMDataOperationChangeType";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MCMDataProtectionChangeOperation changeType](self, "changeType")}];
  v45[3] = v12;
  v44[4] = @"MCMDataOperationRetryIfLocked";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMDataProtectionChangeOperation retryIfLocked](self, "retryIfLocked")}];
  v45[4] = v13;
  v44[5] = @"MCMDataOperationInternalID";
  v14 = [(MCMDataProtectionChangeOperation *)self internalChangeID];
  v15 = [v14 UUIDString];
  v45[5] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:6];
  v17 = [v16 mutableCopy];

  v18 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
  LODWORD(v14) = +[MCMUserIdentity isUserIdentityRequiredForContainerClass:](MCMUserIdentity, "isUserIdentityRequiredForContainerClass:", [v18 containerClass]);

  if (v14)
  {
    v19 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
    v20 = [v19 userIdentity];
    v21 = [v20 plist];
    [v17 setObject:v21 forKeyedSubscript:@"MCMDataOperationUserIdentity"];
  }

  v22 = [(MCMDataProtectionChangeOperation *)self dataContainerMetadata];
  v23 = [v22 containerIdentity];
  v24 = [MCMDataProtectionChangeOperation urlForProtectionOperationWithContainerIdentity:v23];

  if (!v24)
  {
    v30 = [[MCMError alloc] initWithErrorType:84 category:1];
    v32 = container_log_handle_for_category();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "Failed to get url for storing pending operations.", buf, 2u);
    }

    v24 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  v25 = +[MCMFileManager defaultManager];
  v43 = 0;
  v26 = [v25 removeItemAtURL:v24 error:&v43];
  v27 = v43;

  if (v26)
  {
    v28 = +[MCMFileManager defaultManager];
    v29 = [v28 dataWritingOptionsForFileAtURL:v24];

    v42 = 0;
    LOBYTE(v28) = [v17 MCM_writeToURL:v24 withOptions:v29 error:&v42];
    v27 = v42;
    if (v28)
    {
      v30 = 0;
      v31 = 1;
      goto LABEL_22;
    }

    v30 = [[MCMError alloc] initWithNSError:v27 url:v24 defaultErrorType:85];
    v32 = container_log_handle_for_category();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v33 = [v24 path];
    *buf = 138412290;
    v47 = v33;
    v34 = "Failed to write data protection update dictionary to URL %@";
    goto LABEL_24;
  }

  v30 = [[MCMError alloc] initWithNSError:v27 url:v24 defaultErrorType:36];
  v32 = container_log_handle_for_category();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = [v24 path];
    *buf = 138412290;
    v47 = v33;
    v34 = "Failed to remove pending data protection file at %@";
LABEL_24:
    _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
  }

LABEL_18:
  a3 = v39;
LABEL_19:

  if (a3)
  {
    v35 = v30;
    v31 = 0;
    *a3 = v30;
  }

  else
  {
    v31 = 0;
  }

LABEL_22:

  v36 = *MEMORY[0x1E69E9840];
  return v31;
}

- (MCMDataProtectionChangeOperation)initWithContainerMetadata:(id)a3 newClass:(int)a4 retryingIfLocked:(BOOL)a5 changeType:(unint64_t)a6 internalChangeID:(id)a7 queue:(id)a8 userIdentityCache:(id)a9
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v24 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = MCMDataProtectionChangeOperation;
  v18 = [(MCMDataProtectionChangeOperation *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataContainerMetadata, a3);
    v19->_newDataProtectionClass = a4;
    v19->_retryIfLocked = a5;
    v19->_changeType = a6;
    objc_storeStrong(&v19->_internalChangeID, a7);
    objc_storeStrong(&v19->_queue, a8);
    objc_storeStrong(&v19->_userIdentityCache, a9);
    if (!v19->_internalChangeID)
    {
      v20 = [MEMORY[0x1E696AFB0] UUID];
      internalChangeID = v19->_internalChangeID;
      v19->_internalChangeID = v20;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (BOOL)deleteUpdateFileWithContainerIdentity:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MCMDataProtectionChangeOperation urlForProtectionOperationWithContainerIdentity:a3];
  if (v5)
  {
    v6 = +[MCMFileManager defaultManager];
    v16 = 0;
    v7 = [v6 removeItemAtURL:v5 error:&v16];
    v8 = v16;

    if (v7)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_12;
    }

    v9 = [[MCMError alloc] initWithNSError:v8 url:v5 defaultErrorType:36];
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = [v5 path];
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to remove data protection file at %@ : %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = [[MCMError alloc] initWithErrorType:84];
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to get url for storing pending operations.", buf, 2u);
    }

    v8 = 0;
  }

  if (a4)
  {
    v12 = v9;
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)urlForProtectionOperationWithContainerIdentity:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 managedPathRegistry];
  v6 = [v5 containermanagerPendingUpdates];

  v7 = [v6 url];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 identifier];
  v10 = [v3 containerConfig];
  v11 = [v10 containerClass];
  v12 = [v3 userIdentity];

  v13 = [v12 identifier];
  v14 = [v8 stringWithFormat:@"%@-%llu-%@.plist", v9, v11, v13];
  v15 = [v7 URLByAppendingPathComponent:v14 isDirectory:0];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_readAndValidateDataProtectionUpdateAtURL:(id)a3 userIdentityCache:(id)a4 error:(id *)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [[MCMError alloc] initWithErrorType:38];
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "URL cannot be nil", buf, 2u);
    }

    goto LABEL_9;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v7];
  if (!v9)
  {
    v14 = [[MCMError alloc] initWithErrorType:12];
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v59 = [v7 path];
      *buf = 138412290;
      v73 = v59;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to read update info at URL %@", buf, 0xCu);
    }

LABEL_9:

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0;
    goto LABEL_72;
  }

  v10 = v9;
  v11 = [v9 objectForKeyedSubscript:@"MCMDataOperationIdentifier"];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = [[MCMError alloc] initWithErrorType:29];
    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v65 = [v10 objectForKeyedSubscript:@"MCMDataOperationIdentifier"];
      v66 = [v7 path];
      *buf = 138412546;
      v73 = v65;
      v74 = 2112;
      v75 = v66;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Invalid update info Identifier: %@ at %@", buf, 0x16u);
    }

    v16 = 0;
    goto LABEL_23;
  }

  v20 = [v10 objectForKeyedSubscript:@"MCMDataOperationContainerClass"];
  objc_opt_class();
  v21 = v20;
  if (objc_opt_isKindOfClass())
  {
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v23 = [v16 unsignedLongLongValue];
    if ((v23 - 1) >= 0xE)
    {
      v14 = [[MCMError alloc] initWithErrorType:29];
      v24 = container_log_handle_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v68 = [v7 path];
        *buf = 134218242;
        v73 = v23;
        v74 = 2112;
        v75 = v68;
        _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Invalid update info container class: %ld at %@", buf, 0x16u);
      }

LABEL_23:
      v17 = 0;
      v18 = 0;
LABEL_71:
      v19 = 0;
      goto LABEL_72;
    }
  }

  else
  {
    v23 = 0;
  }

  if (![MCMUserIdentity isUserIdentityRequiredForContainerClass:v23])
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_33;
  }

  v71 = 1;
  v25 = [v10 objectForKeyedSubscript:@"MCMDataOperationUserIdentity"];
  objc_opt_class();
  v26 = v25;
  if (objc_opt_isKindOfClass())
  {
    v18 = v26;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    v40 = [v10 objectForKeyedSubscript:@"MCMDataOperationUserId"];
    objc_opt_class();
    v41 = v40;
    if (objc_opt_isKindOfClass())
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    if (!v42)
    {
      v14 = [[MCMError alloc] initWithErrorType:29];
      v53 = container_log_handle_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = [v10 objectForKeyedSubscript:@"MCMDataOperationUserId"];
        v55 = [v7 path];
        *buf = 138412546;
        v73 = v54;
        v74 = 2112;
        v75 = v55;
        v56 = "Invalid update info user id: %@ at %@";
        v57 = v53;
        v58 = 22;
        goto LABEL_80;
      }

LABEL_70:

      v17 = 0;
      goto LABEL_71;
    }

    v52 = +[MCMPOSIXUser posixUserWithUID:](MCMPOSIXUser, "posixUserWithUID:", [v42 intValue]);
    v17 = [v8 userIdentityForPersonalPersonaWithPOSIXUser:v52];

    if (v17)
    {
      goto LABEL_32;
    }

LABEL_63:
    v14 = [[MCMError alloc] initWithErrorType:29];
    v53 = container_log_handle_for_category();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [v10 objectForKeyedSubscript:@"MCMDataOperationUserIdentity"];
      v55 = [v7 path];
      *buf = 138412802;
      v73 = v54;
      v74 = 2112;
      v75 = v55;
      v76 = 2048;
      v77 = v71;
      v56 = "Invalid update info user identity: %@ at %@: %llu";
      v57 = v53;
      v58 = 32;
LABEL_80:
      _os_log_error_impl(&dword_1DF2C3000, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);

      goto LABEL_70;
    }

    goto LABEL_70;
  }

  v17 = [MCMUserIdentity userIdentityWithPlist:v18 cache:v8 error:&v71];
  if (!v17)
  {
    goto LABEL_63;
  }

LABEL_32:
  [v10 setObject:v17 forKeyedSubscript:@"MCMDataOperationUserIdentity"];
LABEL_33:
  v27 = [v10 objectForKeyedSubscript:@"MCMDataOperationProtectionClass"];
  objc_opt_class();
  v28 = v27;
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (!v29)
  {
    v14 = [[MCMError alloc] initWithErrorType:29];
    v33 = container_log_handle_for_category();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v69 = [v10 objectForKeyedSubscript:@"MCMDataOperationProtectionClass"];
    v34 = [v7 path];
    *buf = 138412546;
    v73 = v69;
    v74 = 2112;
    v75 = v34;
    v35 = v34;
    v36 = "Invalid update info protection class: %@ at %@";
LABEL_67:
    _os_log_error_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_ERROR, v36, buf, 0x16u);

    goto LABEL_68;
  }

  v30 = [v10 objectForKeyedSubscript:@"MCMDataOperationChangeType"];
  objc_opt_class();
  v31 = v30;
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (!v32)
  {
    v14 = [[MCMError alloc] initWithErrorType:29];
    v33 = container_log_handle_for_category();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v69 = [v10 objectForKeyedSubscript:@"MCMDataOperationChangeType"];
    v43 = [v7 path];
    *buf = 138412546;
    v73 = v69;
    v74 = 2112;
    v75 = v43;
    v35 = v43;
    v36 = "Invalid update info change type: %@ at %@";
    goto LABEL_67;
  }

  v37 = [v10 objectForKeyedSubscript:@"MCMDataOperationRetryIfLocked"];
  objc_opt_class();
  v38 = v37;
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if (!v39)
  {
    v14 = [[MCMError alloc] initWithErrorType:29];
    v33 = container_log_handle_for_category();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v69 = [v10 objectForKeyedSubscript:@"MCMDataOperationRetryIfLocked"];
    v47 = [v7 path];
    *buf = 138412546;
    v73 = v69;
    v74 = 2112;
    v75 = v47;
    v35 = v47;
    v36 = "Invalid update info retry: %@ at %@";
    goto LABEL_67;
  }

  v44 = [v10 objectForKeyedSubscript:@"MCMDataOperationInternalID"];
  objc_opt_class();
  v45 = v44;
  if (objc_opt_isKindOfClass())
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (!v46)
  {
    v14 = [[MCMError alloc] initWithErrorType:29];
    v33 = container_log_handle_for_category();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v69 = [v10 objectForKeyedSubscript:@"MCMDataOperationInternalID"];
      v60 = [v7 path];
      *buf = 138412546;
      v73 = v69;
      v74 = 2112;
      v75 = v60;
      v35 = v60;
      v36 = "Invalid update info UUID String: %@ at %@";
      goto LABEL_67;
    }

LABEL_68:

    goto LABEL_71;
  }

  v48 = objc_alloc(MEMORY[0x1E696AFB0]);
  v49 = [v10 objectForKeyedSubscript:@"MCMDataOperationInternalID"];
  v19 = [v48 initWithUUIDString:v49];

  objc_opt_class();
  v50 = MCMValidateObject(v19);

  if (!v50)
  {
    v14 = [[MCMError alloc] initWithErrorType:29];
    v67 = container_log_handle_for_category();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v70 = [v7 path];
      *buf = 138412546;
      v73 = v19;
      v74 = 2112;
      v75 = v70;
      _os_log_error_impl(&dword_1DF2C3000, v67, OS_LOG_TYPE_ERROR, "Invalid update info UUID: %@ at %@", buf, 0x16u);
    }

LABEL_72:
    v51 = 0;
    if (!a5)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v51 = [v10 copy];
  v14 = 0;
  if (!a5)
  {
    goto LABEL_75;
  }

LABEL_73:
  if (!v51)
  {
    v61 = v14;
    *a5 = v14;
  }

LABEL_75:
  v62 = v51;

  v63 = *MEMORY[0x1E69E9840];
  return v51;
}

+ (id)dataProtectionChangeOperationAtURL:(id)a3 queue:(id)a4 error:(id *)a5
{
  v85 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v73 = a4;
  v78 = 1;
  v9 = +[MCMUserIdentitySharedCache sharedInstance];
  v77 = 0;
  v10 = [MCMDataProtectionChangeOperation _readAndValidateDataProtectionUpdateAtURL:v8 userIdentityCache:v9 error:&v77];
  v11 = v77;
  v65 = a5;
  v66 = v8;
  v72 = v9;
  if (!v10)
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v54 = [v8 path];
      *buf = 138412290;
      *v80 = v54;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to read data protection update at %@", buf, 0xCu);
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v67 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v74 = 0;
    v64 = 0;
LABEL_7:
    v21 = 0;
    v22 = 0;
    goto LABEL_43;
  }

  v12 = [v10 objectForKeyedSubscript:@"MCMDataOperationUserIdentity"];
  v13 = v12;
  v60 = a1;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = +[MCMUserIdentityCache defaultUserIdentity];
  }

  v23 = v14;

  v74 = [MCMClientConnection privilegedClientConnectionWithUserIdentity:v23];
  v24 = [v10 objectForKeyedSubscript:@"MCMDataOperationUserId"];
  objc_opt_class();
  v25 = v24;
  if (objc_opt_isKindOfClass())
  {
    v63 = v25;
  }

  else
  {
    v63 = 0;
  }

  v26 = [v10 objectForKeyedSubscript:@"MCMDataOperationIdentifier"];
  objc_opt_class();
  v27 = v26;
  if (objc_opt_isKindOfClass())
  {
    v67 = v27;
  }

  else
  {
    v67 = 0;
  }

  v28 = [v10 objectForKeyedSubscript:@"MCMDataOperationProtectionClass"];
  objc_opt_class();
  v29 = v28;
  if (objc_opt_isKindOfClass())
  {
    v71 = v29;
  }

  else
  {
    v71 = 0;
  }

  v30 = [v10 objectForKeyedSubscript:@"MCMDataOperationRetryIfLocked"];
  objc_opt_class();
  v31 = v30;
  if (objc_opt_isKindOfClass())
  {
    v70 = v31;
  }

  else
  {
    v70 = 0;
  }

  v32 = [v10 objectForKeyedSubscript:@"MCMDataOperationChangeType"];
  objc_opt_class();
  v33 = v32;
  if (objc_opt_isKindOfClass())
  {
    v69 = v33;
  }

  else
  {
    v69 = 0;
  }

  v34 = [v10 objectForKeyedSubscript:@"MCMDataOperationInternalID"];
  objc_opt_class();
  v35 = v34;
  if (objc_opt_isKindOfClass())
  {
    v68 = v35;
  }

  else
  {
    v68 = 0;
  }

  v36 = [v10 objectForKeyedSubscript:@"MCMDataOperationContainerClass"];
  objc_opt_class();
  v37 = v36;
  if (objc_opt_isKindOfClass())
  {
    v17 = v37;
  }

  else
  {
    v17 = 0;
  }

  v38 = [v17 unsignedLongLongValue];
  v39 = containermanager_copy_global_configuration();
  v40 = [v39 staticConfig];
  v18 = [v40 configForContainerClass:v38];

  v64 = v23;
  if (!v18)
  {
    v48 = [[MCMError alloc] initWithErrorType:20 category:3];

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v80 = v38;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Container class [%llu] in operation undefined.", buf, 0xCu);
    }

    v18 = 0;
    goto LABEL_41;
  }

  if (([v18 supportedOnPlatform] & 1) == 0)
  {
    v48 = [[MCMError alloc] initWithErrorType:72 category:3];

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v80 = v38;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Container class [%llu] in operation unsupported.", buf, 0xCu);
    }

LABEL_41:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = v48;
LABEL_42:
    v16 = v63;
    goto LABEL_43;
  }

  v41 = [v10 objectForKeyedSubscript:@"MCMDataOperationIdentifier"];
  v20 = [MCMContainerIdentity containerIdentityWithUserIdentity:v23 identifier:v41 containerConfig:v18 platform:0 userIdentityCache:v9 error:&v78];

  if (v20)
  {
    v59 = v17;
    v42 = [v74 context];
    v43 = [v42 containerFactory];
    v76 = v11;
    v19 = [v43 containerForContainerIdentity:v20 createIfNecessary:0 error:&v76];
    v44 = v76;

    if (!v19)
    {
      v15 = container_log_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = v63;
        v57 = [v63 unsignedIntValue];
        *buf = 67110146;
        *v80 = v57;
        *&v80[4] = 2112;
        *&v80[6] = v67;
        *&v80[14] = 2048;
        *&v80[16] = v38;
        v81 = 2048;
        v82 = v78;
        v83 = 2112;
        v84 = v44;
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to lookup container metadata from file userId: %u, identifier: %@, Class: %llu : %llu, %@", buf, 0x30u);
        v19 = 0;
        v21 = 0;
        v22 = 0;
        v11 = v44;
        goto LABEL_55;
      }

      v19 = 0;
      v21 = 0;
      v22 = 0;
      v11 = v44;
LABEL_54:
      v16 = v63;
LABEL_55:
      v17 = v59;
      goto LABEL_43;
    }

    v75 = v44;
    v21 = [v19 metadataWithError:&v75];
    v11 = v75;

    if (v21)
    {
      v45 = [v60 alloc];
      v61 = [v71 intValue];
      v46 = [v70 BOOLValue];
      v47 = [v69 intValue];
      v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v68];
      v22 = [v45 initWithContainerMetadata:v21 newClass:v61 retryingIfLocked:v46 changeType:v47 internalChangeID:v15 queue:v73 userIdentityCache:v72];
      goto LABEL_54;
    }

    v15 = container_log_handle_for_category();
    v17 = v59;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_42;
    }

    v16 = v63;
    v58 = [v63 unsignedIntValue];
    *buf = 67110146;
    *v80 = v58;
    *&v80[4] = 2112;
    *&v80[6] = v67;
    *&v80[14] = 2048;
    *&v80[16] = v38;
    v81 = 2048;
    v82 = v78;
    v83 = 2112;
    v84 = v11;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to get metadata for container from file userId: %u, identifier: %@, Class: %llu : %llu, %@", buf, 0x30u);
    goto LABEL_7;
  }

  v53 = [MCMError alloc];
  v62 = [(MCMError *)v53 initWithErrorType:v78];

  v15 = container_log_handle_for_category();
  v16 = v63;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v55 = v78;
    error_description = container_get_error_description();
    *buf = 134218242;
    *v80 = v55;
    *&v80[8] = 2080;
    *&v80[10] = error_description;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Could not create user identity; error = (%llu)%s", buf, 0x16u);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v11 = v62;
LABEL_43:

  if (v65 && !v22)
  {
    v49 = v11;
    *v65 = v11;
  }

  v50 = v22;

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

@end