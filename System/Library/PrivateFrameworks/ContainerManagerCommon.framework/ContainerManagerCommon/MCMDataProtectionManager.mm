@interface MCMDataProtectionManager
+ (id)defaultManager;
- (MCMDataProtectionManager)init;
- (OS_dispatch_queue)protectionOperationFileQueue;
- (int)desiredDataProtectionClassForMetadata:(id)a3 clientIdentity:(id)a4;
- (int)intendedDataProtectionClassBasedOnEntitlementsForIdentifier:(id)a3 clientIdentity:(id)a4 containerClass:(unint64_t)a5 info:(id)a6;
- (void)_startDataProtectionChangeOperation:(id)a3 withCompletion:(id)a4;
- (void)restartPendingDataProtectionOperations;
@end

@implementation MCMDataProtectionManager

- (OS_dispatch_queue)protectionOperationFileQueue
{
  result = self->_protectionOperationFileQueue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)desiredDataProtectionClassForMetadata:(id)a3 clientIdentity:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 containerPath];
  v8 = [v7 containerClassPath];
  v9 = [v8 supportsDataProtection];

  if (v9)
  {
    v10 = +[MCMDataProtectionManager defaultManager];
    v11 = [v5 identifier];
    v12 = [v5 containerClass];
    v13 = [v5 info];
    v14 = [v10 intendedDataProtectionClassBasedOnEntitlementsForIdentifier:v11 clientIdentity:v6 containerClass:v12 info:v13];
  }

  else
  {
    v14 = -1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int)intendedDataProtectionClassBasedOnEntitlementsForIdentifier:(id)a3 clientIdentity:(id)a4 containerClass:(unint64_t)a5 info:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = 0;
  if (a5 <= 0xB && ((1 << a5) & 0xE54) != 0)
  {
    v13 = [v10 codeSignInfo];
    v14 = [v13 identifier];
    v15 = [v9 isEqualToString:v14];

    if (v15)
    {
      v16 = [v10 codeSignInfo];
      v17 = [v16 entitlements];
    }

    else
    {
      if (v11 && ([v10 isKernel] & 1) == 0)
      {
        v18 = [v11 objectForKeyedSubscript:@"com.apple.MobileInstallation.ContentProtectionClass"];
        objc_opt_class();
        v19 = v18;
        v17 = (objc_opt_isKindOfClass() & 1) != 0 ? v19 : 0;

        if (v17)
        {
          v20 = [v17 intValue];
LABEL_15:
          v12 = v20;

          goto LABEL_16;
        }
      }

      v21 = [gCodeSigningMapping entitlementsForIdentifier:v9];
      if (!v21)
      {
        v12 = 0;
        goto LABEL_16;
      }

      v17 = v21;
    }

    v20 = [v17 intendedDataProtectionClass];
    goto LABEL_15;
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

void __146__MCMDataProtectionManager_setDataProtectionOnDataContainerForMetadata_isSecondOrThirdPartyApp_retryIfLocked_deferUntilNextLaunch_withCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) containerIdentity];
  v7 = 0;
  v3 = [MCMDataProtectionChangeOperation deleteUpdateFileWithContainerIdentity:v2 error:&v7];
  v4 = v7;

  if (!v3)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "Failed to delete existing data protection update file: %@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = [v4 type];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)restartPendingDataProtectionOperations
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 managedPathRegistry];
  v5 = [v4 containermanagerPendingUpdates];

  v6 = [v5 url];
  if (v6)
  {
    v7 = +[MCMFileManager defaultManager];
    v45 = 0;
    v8 = [v7 urlsForItemsInDirectoryAtURL:v6 error:&v45];
    v9 = v45;

    if (v8)
    {
      v35 = v9;
      v36 = v6;
      v37 = v5;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v52;
        v38 = v10;
        do
        {
          v14 = 0;
          do
          {
            if (*v52 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v51 + 1) + 8 * v14);
            v16 = container_log_handle_for_category();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v23 = [v15 path];
              *buf = 138412290;
              *v47 = v23;
              _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Found pending data protection operation at %@", buf, 0xCu);
            }

            v17 = [(MCMDataProtectionManager *)self protectionOperationFileQueue];
            v44 = 0;
            v18 = [MCMDataProtectionChangeOperation dataProtectionChangeOperationAtURL:v15 queue:v17 error:&v44];
            v19 = v44;

            if (v18)
            {
              v20 = container_log_handle_for_category();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v39 = [v18 newDataProtectionClass];
                v41 = [v18 dataContainerMetadata];
                v24 = [v41 userIdentity];
                v40 = [v18 dataContainerMetadata];
                v25 = [v40 identifier];
                v26 = [v18 dataContainerMetadata];
                v27 = [v26 containerClass];
                *buf = 67109890;
                *v47 = v39;
                *&v47[4] = 2112;
                *&v47[6] = v24;
                *&v47[14] = 2112;
                *&v47[16] = v25;
                v48 = 2048;
                v49 = v27;
                _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Starting pending data protection update to protection class %d for user: %@, ID: %@, containerClass: %llu", buf, 0x26u);

                v10 = v38;
              }

              v21 = MCMDataProtectionQueue();
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __66__MCMDataProtectionManager_restartPendingDataProtectionOperations__block_invoke;
              block[3] = &unk_1E86B0CC8;
              block[4] = self;
              v43 = v18;
              dispatch_async(v21, block);
            }

            else
            {
              v22 = container_log_handle_for_category();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v28 = [v15 path];
                *buf = 138412546;
                *v47 = v28;
                *&v47[8] = 2112;
                *&v47[10] = v19;
                _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to read data protection change operation at %@ : %@", buf, 0x16u);
              }
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v51 objects:v50 count:16];
        }

        while (v12);
      }

      v29 = v10;
      v6 = v36;
      v5 = v37;
      v9 = v35;
    }

    else
    {
      v30 = [v9 domain];
      if ([v30 isEqualToString:*MEMORY[0x1E696A798]])
      {
        v31 = [v9 code];

        if (v31 == 2)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = [v5 url];
        v34 = [v33 path];
        *buf = 138412546;
        *v47 = v34;
        *&v47[8] = 2112;
        *&v47[10] = v9;
        _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to get items at pendingUpdates URL %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v29 = container_log_handle_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to get url for storing pending operations.", buf, 2u);
    }

    v9 = 0;
  }

LABEL_30:
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __66__MCMDataProtectionManager_restartPendingDataProtectionOperations__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _startDataProtectionChangeOperation:v3 withCompletion:0];
}

- (void)_startDataProtectionChangeOperation:(id)a3 withCompletion:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9329;
  v32 = __Block_byref_object_dispose__9330;
  v33 = 0;
  v7 = [v5 dataContainerMetadata];
  objc_initWeak(&location, v7);

  LODWORD(v7) = [v5 newDataProtectionClass];
  v8 = [v5 retryIfLocked];
  v9 = [MCMApplicationTerminationAssertion alloc];
  v10 = objc_loadWeakRetained(&location);
  v11 = [v10 identifier];
  v12 = [(MCMApplicationTerminationAssertion *)v9 initWithBundleIdentifier:v11 reason:@"preventing app launch during container data protection class change"];
  v13 = v29[5];
  v29[5] = v12;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__MCMDataProtectionManager__startDataProtectionChangeOperation_withCompletion___block_invoke;
  v25[3] = &unk_1E86B0758;
  v25[4] = &v28;
  objc_copyWeak(&v26, &location);
  [v5 setRetryStartBlock:v25];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __79__MCMDataProtectionManager__startDataProtectionChangeOperation_withCompletion___block_invoke_2;
  v19 = &unk_1E86B0780;
  objc_copyWeak(&v22, &location);
  v23 = v7;
  v24 = v8;
  v21 = &v28;
  v14 = v6;
  v20 = v14;
  [v5 setCompletionBlock:&v16];
  [v5 performChangeOperation];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v28, 8);

  v15 = *MEMORY[0x1E69E9840];
}

void __79__MCMDataProtectionManager__startDataProtectionChangeOperation_withCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = [MCMApplicationTerminationAssertion alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained identifier];
  v5 = [(MCMApplicationTerminationAssertion *)v3 initWithBundleIdentifier:v4 reason:@"preventing app launch during container data protection class change"];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

void __79__MCMDataProtectionManager__startDataProtectionChangeOperation_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = [v3 type];
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = [WeakRetained identifier];
      v13 = [WeakRetained containerPath];
      v14 = [v13 containerDataURL];
      v15 = [v14 path];
      v16 = *(a1 + 56);
      v17 = 138413058;
      v18 = v12;
      v19 = 2112;
      v20 = v15;
      v21 = 1024;
      v22 = v16;
      v23 = 2112;
      v24 = v3;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Failed to set data protection on container with identifier %@ at %@ to %d: %@", &v17, 0x26u);
    }

    if (v5 == 61)
    {
      if (*(a1 + 60) == 1)
      {
        v7 = container_log_handle_for_category();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17) = 0;
          _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Unexpectedly got completion block called while locked", &v17, 2u);
        }
      }

      v5 = 61;
    }
  }

  else
  {
    v5 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (MCMDataProtectionManager)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MCMDataProtectionManager;
  v2 = [(MCMDataProtectionManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileContainerManager.ProtectionOperationFileQueue", v3);
    protectionOperationFileQueue = v2->_protectionOperationFileQueue;
    v2->_protectionOperationFileQueue = v4;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)defaultManager
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MCMDataProtectionManager_defaultManager__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a1;
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, v5);
  }

  v2 = defaultManager_defaultManager;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __42__MCMDataProtectionManager_defaultManager__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  defaultManager_defaultManager = objc_alloc_init(objc_opt_class());
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

@end