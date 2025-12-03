@interface VEMobileAsset
+ (id)getLocalMobileAssetURLWithAssetType:(id)type assetSpecifier:(id)specifier forClientName:(id)name;
+ (int64_t)getMobileAssetStatusWithAssetType:(id)type assetSpecifier:(id)specifier forClientName:(id)name percentCompleted:(int64_t *)completed;
+ (void)downloadMobileAssetType:(id)type assetSpecifier:(id)specifier forClientName:(id)name completionHandler:(id)handler;
+ (void)endAllLocksWithAssetType:(id)type assetSpecifier:(id)specifier forClientName:(id)name;
@end

@implementation VEMobileAsset

+ (void)downloadMobileAssetType:(id)type assetSpecifier:(id)specifier forClientName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = MEMORY[0x277D289F8];
  nameCopy = name;
  specifierCopy = specifier;
  typeCopy = type;
  v14 = [[v10 alloc] initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  v20 = 0;
  v15 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:nameCopy selectingAsset:v14 error:&v20];

  v16 = v20;
  if (v16)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      +[VEMobileAsset downloadMobileAssetType:assetSpecifier:forClientName:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 3, v16);
  }

  else
  {
    v17 = objc_opt_new();
    [v17 setUserInitiated:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__VEMobileAsset_downloadMobileAssetType_assetSpecifier_forClientName_completionHandler___block_invoke;
    v18[3] = &unk_278F53898;
    v19 = handlerCopy;
    [v15 lockContent:@"mobileAssetLockReasonDownload" withUsagePolicy:v17 withTimeout:-2 completion:v18];
  }
}

void __88__VEMobileAsset_downloadMobileAssetType_assetSpecifier_forClientName_completionHandler___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a3)
  {
    if ((global_logLevel & 4) != 0)
    {
      v15 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [v11 summary];
        *buf = 138412546;
        v45 = v17;
        v46 = 2112;
        v47 = v12;
        _os_log_impl(&dword_24874B000, v16, OS_LOG_TYPE_INFO, "[VEMobileAsset] downloadMobileAssetWithCompletionHandler - Asset locked (ready for use) | assetSelector:%@ | localContentURL:%@", buf, 0x16u);
      }
    }

    if (v13)
    {
      if ((global_logLevel & 4) != 0)
      {
        v18 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          v20 = [v13 summary];
          *buf = 138412290;
          v45 = v20;
          _os_log_impl(&dword_24874B000, v19, OS_LOG_TYPE_INFO, "[VEMobileAsset] downloadMobileAssetWithCompletionHandler - Asset locked (ready for use) | newerInProgress:%@", buf, 0xCu);
        }
      }
    }

    else if ((global_logLevel & 4) != 0)
    {
      v21 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24874B000, v21, OS_LOG_TYPE_INFO, "[VEMobileAsset] downloadMobileAssetWithCompletionHandler - Asset locked (ready for use) | no newer version currently being downloaded", buf, 2u);
      }
    }

    v22 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [v12 path];
    v42 = 0;
    v24 = [v22 contentsOfDirectoryAtPath:v23 error:&v42];
    v25 = v42;

    if (v25)
    {
      if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        __88__VEMobileAsset_downloadMobileAssetType_assetSpecifier_forClientName_completionHandler___block_invoke_cold_2();
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v33 = v24;
      v34 = a1;
      v35 = v14;
      v36 = v12;
      v37 = v11;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v39;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(v26);
            }

            if ((global_logLevel & 4) != 0)
            {
              v31 = *(*(&v38 + 1) + 8 * i);
              v32 = global_logger;
              if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v45 = v31;
                _os_log_impl(&dword_24874B000, v32, OS_LOG_TYPE_INFO, "[VEMobileAsset] downloadMobileAssetWithCompletionHandler - Asset content: %@", buf, 0xCu);
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v28);
      }

      (*(*(v34 + 32) + 16))();
      v12 = v36;
      v11 = v37;
      v14 = v35;
      v25 = 0;
      v24 = v33;
    }
  }

  else
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      __88__VEMobileAsset_downloadMobileAssetType_assetSpecifier_forClientName_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (int64_t)getMobileAssetStatusWithAssetType:(id)type assetSpecifier:(id)specifier forClientName:(id)name percentCompleted:(int64_t *)completed
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D289F8];
  nameCopy = name;
  specifierCopy = specifier;
  typeCopy = type;
  v13 = [[v9 alloc] initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  v33 = 0;
  v14 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:nameCopy selectingAsset:v13 error:&v33];

  v15 = v33;
  v16 = v15;
  if (completed)
  {
    *completed = 0;
  }

  if (v15)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      +[VEMobileAsset getMobileAssetStatusWithAssetType:assetSpecifier:forClientName:percentCompleted:];
    }

    v17 = 3;
  }

  else
  {
    v18 = objc_opt_new();
    [v18 setUserInitiated:1];
    v32 = 0;
    v19 = [v14 lockContentSync:@"mobileAssetLockReasonStatus" withUsagePolicy:v18 withTimeout:0 lockedAssetSelector:0 newerInProgress:0 error:&v32];
    v20 = v32;
    v21 = v20;
    if (v20 || !v19)
    {
      v31 = v20;
      v23 = [v14 currentStatusSync:&v31];
      v16 = v31;

      if (v16)
      {
        if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          +[VEMobileAsset getMobileAssetStatusWithAssetType:assetSpecifier:forClientName:percentCompleted:];
        }

        v17 = 3;
      }

      else
      {
        downloadProgress = [v23 downloadProgress];
        [downloadProgress expectedTimeRemainingSecs];
        if (v25 <= 0.0)
        {
          v17 = 0;
        }

        else
        {
          if ((global_logLevel & 4) != 0)
          {
            v26 = global_logger;
            if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
            {
              v27 = v26;
              [downloadProgress expectedTimeRemainingSecs];
              *buf = 134217984;
              v35 = v28;
              _os_log_impl(&dword_24874B000, v27, OS_LOG_TYPE_INFO, "[VEMobileAsset] getMobileAssetStatus - expectedTimeRemainingSecs: %f", buf, 0xCu);
            }
          }

          if (completed && [downloadProgress totalExpectedBytes])
          {
            v29 = 100 * [downloadProgress totalWrittenBytes];
            *completed = v29 / [downloadProgress totalExpectedBytes];
          }

          v17 = 2;
        }
      }
    }

    else
    {
      if ((global_logLevel & 4) != 0)
      {
        v22 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v19;
          _os_log_impl(&dword_24874B000, v22, OS_LOG_TYPE_INFO, "[VEMobileAsset] getMobileAssetStatus - localContentURL: %@", buf, 0xCu);
        }
      }

      v16 = 0;
      if (completed)
      {
        *completed = 100;
      }

      v17 = 1;
    }
  }

  return v17;
}

+ (id)getLocalMobileAssetURLWithAssetType:(id)type assetSpecifier:(id)specifier forClientName:(id)name
{
  v7 = MEMORY[0x277D289F8];
  nameCopy = name;
  specifierCopy = specifier;
  typeCopy = type;
  v11 = [[v7 alloc] initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  v18 = 0;
  v12 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:nameCopy selectingAsset:v11 error:&v18];

  v13 = v18;
  if (v13)
  {
    v14 = v13;
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      +[VEMobileAsset getLocalMobileAssetURLWithAssetType:assetSpecifier:forClientName:];
    }

    v15 = 0;
  }

  else
  {
    v17 = 0;
    v15 = [v12 lockContentSync:@"mobileAssetLockReasonStatus" withTimeout:0 lockedAssetSelector:0 newerInProgress:0 error:&v17];
    v14 = v17;
  }

  return v15;
}

+ (void)endAllLocksWithAssetType:(id)type assetSpecifier:(id)specifier forClientName:(id)name
{
  nameCopy = name;
  v8 = MEMORY[0x277D289F8];
  specifierCopy = specifier;
  typeCopy = type;
  v11 = [[v8 alloc] initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  if (v11)
  {
    v12 = [MEMORY[0x277D289E0] endAllPreviousLocksOfSelectorSync:v11 forClientName:nameCopy];
    if (v12)
    {
      if ((global_logLevel & 0x10) != 0)
      {
        v13 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [VEMobileAsset endAllLocksWithAssetType:v13 assetSpecifier:v11 forClientName:v12];
        }
      }
    }

    else if ((global_logLevel & 8) != 0)
    {
      v15 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
      {
        [VEMobileAsset endAllLocksWithAssetType:v15 assetSpecifier:v11 forClientName:?];
      }
    }
  }

  else if ((global_logLevel & 0x10) != 0)
  {
    v14 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEMobileAsset endAllLocksWithAssetType:v14 assetSpecifier:? forClientName:?];
    }
  }

  v16 = [MEMORY[0x277D289E0] interestInContentSync:@"lookForAssetUpdate" forAssetSelector:v11];
  v17 = v16;
  if (v16)
  {
    NSLog(&cfstr_AutoAssetInter.isa, v16);
  }
}

+ (void)endAllLocksWithAssetType:(void *)a1 assetSpecifier:(void *)a2 forClientName:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 summary];
  OUTLINED_FUNCTION_1_21();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&dword_24874B000, v5, OS_LOG_TYPE_ERROR, "[VEMobileAsset] downloadMobileAssetWithCompletionHandler - endLockUsage | assetSelector:%@ | Error: %@", v7, 0x16u);
}

+ (void)endAllLocksWithAssetType:(void *)a1 assetSpecifier:(void *)a2 forClientName:.cold.2(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 summary];
  OUTLINED_FUNCTION_1_21();
  _os_log_debug_impl(&dword_24874B000, v3, OS_LOG_TYPE_DEBUG, "[VEMobileAsset] downloadMobileAssetWithCompletionHandler - endLockUsage | assetSelector:%@ | SUCCESS", v5, 0xCu);
}

@end