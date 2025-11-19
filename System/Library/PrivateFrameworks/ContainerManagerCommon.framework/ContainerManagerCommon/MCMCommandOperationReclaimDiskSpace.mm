@interface MCMCommandOperationReclaimDiskSpace
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)_removeItemOrMoveToTempAtURL:(id)a3 error:(id *)a4;
- (BOOL)asynchronously;
- (BOOL)preflightClientAllowed;
- (MCMCommandOperationReclaimDiskSpace)initWithAsynchronously:(BOOL)a3 context:(id)a4 resultPromise:(id)a5 handoffForReply:(id)a6;
- (MCMCommandOperationReclaimDiskSpace)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMCommandOperationReclaimDiskSpace)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5 asyncResultPromise:(id)a6;
- (MCMReply)handoffReply;
- (MCMXPCMessage)message;
- (void)_deleteContainersAtDeathRowURL:(id)a3 error:(id *)a4;
- (void)_deleteContainersOnDeathRowWithCompletion:(id)a3;
- (void)execute;
@end

@implementation MCMCommandOperationReclaimDiskSpace

- (BOOL)asynchronously
{
  result = self->_asynchronously;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMReply)handoffReply
{
  result = self->_handoffReply;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessage)message
{
  result = self->_message;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_deleteContainersOnDeathRowWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3962;
  v28 = __Block_byref_object_dispose__3963;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3962;
  v22 = __Block_byref_object_dispose__3963;
  v23 = 0;
  v5 = containermanager_copy_global_configuration();
  v6 = [v5 dispositionForContainerClass:2] == 1;

  if (v6)
  {
    v7 = [(MCMCommand *)self context];
    v8 = [v7 userIdentityCache];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__MCMCommandOperationReclaimDiskSpace__deleteContainersOnDeathRowWithCompletion___block_invoke;
    v17[3] = &unk_1E86AFFE8;
    v17[4] = self;
    v17[5] = &v18;
    v17[6] = &v24;
    [v8 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v17];
  }

  v9 = containermanager_copy_global_configuration();
  v10 = [v9 dispositionForContainerClass:1] == 1;

  if (v10)
  {
    v11 = +[MCMContainerClassDeletedPath deletedGlobalURL];
    v12 = v19[5];
    v19[5] = v11;

    v13 = v19[5];
    v14 = v25;
    obj = v25[5];
    [(MCMCommandOperationReclaimDiskSpace *)self _deleteContainersAtDeathRowURL:v13 error:&obj];
    objc_storeStrong(v14 + 5, obj);
  }

  if (v4)
  {
    (v4)[2](v4, v25[5]);
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __81__MCMCommandOperationReclaimDiskSpace__deleteContainersOnDeathRowWithCompletion___block_invoke(void *a1, uint64_t a2)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v3 = [MCMContainerClassDeletedPath deletedURLWithUserIdentity:a2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[4];
  v7 = *(*(a1[5] + 8) + 40);
  v8 = *(a1[6] + 8);
  obj[0] = *(v8 + 40);
  [v6 _deleteContainersAtDeathRowURL:v7 error:obj];
  objc_storeStrong((v8 + 40), obj[0]);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_deleteContainersAtDeathRowURL:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3962;
  v46 = __Block_byref_object_dispose__3963;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3962;
  v40 = __Block_byref_object_dispose__3963;
  v41 = 0;
  v6 = MCMSharedDeathrowQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MCMCommandOperationReclaimDiskSpace__deleteContainersAtDeathRowURL_error___block_invoke;
  block[3] = &unk_1E86B0730;
  v34 = &v42;
  v29 = v5;
  v33 = v29;
  v35 = &v36;
  dispatch_sync(v6, block);

  if ([v43[5] count])
  {
    v7 = container_log_handle_for_category();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v8 = v43[5];
    *buf = 138412290;
    v54 = v8;
    v9 = "Preparing to delete: %@";
  }

  else
  {
    v7 = container_log_handle_for_category();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    *buf = 138412290;
    v54 = v29;
    v9 = "There are no items staged for delete at %@.";
  }

  _os_log_debug_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEBUG, v9, buf, 0xCu);
LABEL_5:

  v10 = v43[5];
  if (v10)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v11 = v10;
    v12 = 0;
    v13 = [v11 countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v13)
    {
      v14 = *v50;
      do
      {
        v15 = 0;
        v16 = v12;
        do
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v49 + 1) + 8 * v15);
          v31 = v16;
          v18 = [(MCMCommandOperationReclaimDiskSpace *)self _removeItemOrMoveToTempAtURL:v17 error:&v31, v29];
          v12 = v31;

          if (!v18)
          {
            v19 = container_log_handle_for_category();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [v17 path];
              v21 = v37[5];
              *buf = 138412546;
              v54 = v20;
              v55 = 2112;
              v56 = v21;
              _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to destroy item at %@: %@", buf, 0x16u);
            }
          }

          ++v15;
          v16 = v12;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v49 objects:v48 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v22 = [v37[5] domain];
    if ([v22 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v23 = [v37[5] code] == 2;

      if (v23)
      {
        v12 = 0;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v24 = [MCMError alloc];
    v12 = [(MCMError *)v24 initWithNSError:v37[5] url:v29 defaultErrorType:28];
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v27 = [v29 path];
      v28 = v37[5];
      *buf = 138412546;
      v54 = v27;
      v55 = 2112;
      v56 = v28;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to get items for deletion at %@: %@", buf, 0x16u);
    }
  }

  if (a4 && v12)
  {
    v25 = v12;
    *a4 = v12;
  }

LABEL_27:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  v26 = *MEMORY[0x1E69E9840];
}

void __76__MCMCommandOperationReclaimDiskSpace__deleteContainersAtDeathRowURL_error___block_invoke(void *a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = +[MCMFileManager defaultManager];
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj[0] = *(v4 + 40);
  v5 = [v2 urlsForItemsInDirectoryAtURL:v3 error:obj];
  objc_storeStrong((v4 + 40), obj[0]);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_removeItemOrMoveToTempAtURL:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = 1;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp" isDirectory:1];
  v8 = +[MCMFileManager defaultManager];
  v28 = 0;
  v9 = [v8 removeItemAtURL:v5 error:&v28];
  v10 = v28;

  if (v9)
  {
    goto LABEL_2;
  }

  v12 = [v10 domain];
  if ([v12 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v13 = [v10 code];

    if (v13 == 2)
    {
LABEL_2:
      v11 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v24 = [v5 path];
    *buf = 138412546;
    v30 = v24;
    v31 = 2112;
    v32 = v10;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "Couldn't remove, so moving item to /tmp: %@ : %@", buf, 0x16u);
  }

  v15 = +[MCMFileManager defaultManager];
  v16 = [v5 lastPathComponent];
  v17 = [v7 URLByAppendingPathComponent:v16];
  v27 = v10;
  v18 = [v15 moveItemIfExistsAtURL:v5 toURL:v17 error:&v27];
  v19 = v27;

  if (v18)
  {
    v11 = 0;
    v6 = 1;
  }

  else
  {
    v11 = [[MCMError alloc] initWithNSError:v19 url:v5 defaultErrorType:17];
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = [v5 path];
      v26 = [v7 path];
      *buf = 138412802;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      v33 = 2112;
      v34 = v19;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to move dir %@ to %@: %@", buf, 0x20u);
    }

    v6 = 0;
    if (a4 && v11)
    {
      v21 = v11;
      v6 = 0;
      *a4 = v11;
    }
  }

  v10 = v19;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)execute
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(MCMCommand *)self resultPromise];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __46__MCMCommandOperationReclaimDiskSpace_execute__block_invoke;
  v20 = &unk_1E86B0CC8;
  v21 = self;
  v22 = v4;
  v5 = v4;
  v6 = _Block_copy(&v17);
  if ([(MCMCommandOperationReclaimDiskSpace *)self asynchronously:v17])
  {
    v7 = MCMSharedSlowWorkloop();
    v8 = v6;
    v9 = v7;
    MEMORY[0x1E12D4880]();
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v24 = __MCMRunTransactionalTask_block_invoke;
    v25 = &unk_1E86B0F40;
    v26 = v8;
    v10 = v8;
    dispatch_async(v9, &block);
  }

  else
  {
    v11 = [(MCMCommandOperationReclaimDiskSpace *)self handoffReply];

    if (!v11)
    {
      v9 = MCMSharedSlowWorkloop();
      dispatch_async_and_wait(v9, v6);
      goto LABEL_8;
    }

    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(MCMCommand *)self context];
      v16 = [v15 clientIdentity];
      LODWORD(block) = 138412290;
      *(&block + 4) = v16;
      _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Reply to reclaim handed off to the slow workloop for client [%@]", &block, 0xCu);
    }

    v9 = [(MCMCommandOperationReclaimDiskSpace *)self handoffReply];
    v10 = [(MCMCommand *)self context];
    v13 = [v10 clientIdentity];
    [v9 handoffToSlowWorkloopforClientIdentity:v13 withBlock:v6];
  }

LABEL_8:
  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x1E69E9840];
}

void __46__MCMCommandOperationReclaimDiskSpace_execute__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[MCMTestLocks sharedInstance];
  [v2 waitOnLock:9];

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__MCMCommandOperationReclaimDiskSpace_execute__block_invoke_2;
  v5[3] = &unk_1E86AFFC0;
  v5[4] = v3;
  v6 = *(a1 + 40);
  [v3 _deleteContainersOnDeathRowWithCompletion:v5];

  v4 = *MEMORY[0x1E69E9840];
}

void __46__MCMCommandOperationReclaimDiskSpace_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = a2;
  if (v15)
  {
    v3 = [[MCMResultBase alloc] initWithError:v15];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v5 = [*(a1 + 32) message];
  if (v5)
  {
    v6 = v5;
    v7 = containermanager_copy_global_configuration();
    if ([v7 runmode] == 2)
    {
    }

    else
    {
      v8 = containermanager_copy_global_configuration();
      v9 = [v8 runmode];

      if (v9 != 3)
      {
        goto LABEL_11;
      }
    }

    v10 = [*(a1 + 32) message];
    v11 = [*(a1 + 32) context];
    v12 = [MCMCommand relayToPrivilegedDaemonMessage:v10 context:v11];

    if (!v16)
    {
      v13 = v12;

      v4 = v13;
    }
  }

LABEL_11:
  [*(a1 + 40) completeWithResult:v4];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];

  v4 = [v3 codeSignInfo];
  v5 = [v4 entitlements];

  if ([v5 allowed] & 1) != 0 || (objc_msgSend(v5, "canDelete"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 canManageUserManagedAssets];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MCMCommandOperationReclaimDiskSpace)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMCommandOperationReclaimDiskSpace *)self initWithMessage:a3 context:a4 reply:a5 asyncResultPromise:0];
}

- (MCMCommandOperationReclaimDiskSpace)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5 asyncResultPromise:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MCMCommandOperationReclaimDiskSpace;
  v12 = [(MCMCommand *)&v16 initWithMessage:v10 context:a4 reply:v11];
  v13 = v12;
  if (v12)
  {
    v12->_asynchronously = 0;
    objc_storeStrong(&v12->_handoffReply, a5);
    objc_storeStrong(&v13->_message, a3);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (MCMCommandOperationReclaimDiskSpace)initWithAsynchronously:(BOOL)a3 context:(id)a4 resultPromise:(id)a5 handoffForReply:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v17.receiver = self;
  v17.super_class = MCMCommandOperationReclaimDiskSpace;
  v12 = [(MCMCommand *)&v17 initWithContext:a4 resultPromise:a5];
  v13 = v12;
  if (v12)
  {
    v12->_asynchronously = a3;
    message = v12->_message;
    v12->_message = 0;

    objc_storeStrong(&v13->_handoffReply, a6);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 4;
}

@end