@interface VCPMobileAssetManager
+ (id)assetName:(int64_t)a3;
+ (id)assetVersion:(int64_t)a3;
+ (id)sharedManager;
+ (int64_t)assetTypeForName:(id)a3;
- (VCPMobileAssetManager)init;
- (id)cloneAsset:(id)a3 to:(id)a4;
- (id)downloadMobileAssetIfNeeded:(id)a3 petWatchDog:(id)a4;
- (id)queryMobileAssets;
- (id)retrieveAssetLocalURL:(id)a3 assetVersion:(id)a4 petWatchDog:(id)a5 cancelBlock:(id)a6;
- (id)retrieveAssetLocalURL:(int64_t)a3 petWatchDog:(id)a4 cancelBlock:(id)a5;
- (id)retrieveAssetOnce:(int64_t)a3 petWatchDog:(id)a4 cancelBlock:(id)a5;
- (int)purgeAllInstalledAssets;
@end

@implementation VCPMobileAssetManager

- (VCPMobileAssetManager)init
{
  v12.receiver = self;
  v12.super_class = VCPMobileAssetManager;
  v2 = [(VCPMobileAssetManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysis.VCPMobileAssetManager", 0);
    assetQueue = v2->_assetQueue;
    v2->_assetQueue = v3;

    v5 = dispatch_queue_create("com.apple.mediaanalysis.VCPMobileAssetManager.retrieveAssetOnce", 0);
    retrieveAssetOnceQueue = v2->_retrieveAssetOnceQueue;
    v2->_retrieveAssetOnceQueue = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    assetsURL = v2->_assetsURL;
    v2->_assetsURL = v7;

    v9 = [MEMORY[0x1E695DFA8] set];
    assetsNotAvailable = v2->_assetsNotAvailable;
    v2->_assetsNotAvailable = v9;
  }

  return v2;
}

+ (id)sharedManager
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_100];

  return v5;
}

VCPMobileAssetManager *__38__VCPMobileAssetManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(VCPMobileAssetManager);

  return v0;
}

+ (id)assetName:(int64_t)a3
{
  if (a3 >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownType(%lu)", a3];
  }

  else
  {
    v4 = off_1E8351FE0[a3];
  }

  return v4;
}

+ (int64_t)assetTypeForName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AXImageCaption"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AXImageCaptionCSU"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AXVideoCaptionEncoder"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AXVideoCaptionDecoder"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MiCaImageCaptionDecoder"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MiCaVideoCaptionDecoder"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Pissarro"])
  {
    v4 = 6;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)assetVersion:(int64_t)a3
{
  v4 = @"9.5";
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        goto LABEL_18;
      }

LABEL_12:
      if (+[VCPVideoTransformerBackbone revision]== 3)
      {
        v4 = @"3.0.0";
        goto LABEL_18;
      }

      if (+[VCPVideoTransformerBackbone revision]== 4)
      {
        v4 = @"4.0.0";
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (a3 == 5)
    {
      goto LABEL_12;
    }

    if (a3 == 6)
    {
      v4 = @"LatestVersion";
      goto LABEL_18;
    }

LABEL_16:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownType(%lu)", a3];
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v4 = @"3.0";
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v4 = @"8.3";
LABEL_18:

  return v4;
}

- (id)cloneAsset:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__75;
  v21 = __Block_byref_object_dispose__75;
  v22 = 0;
  assetQueue = self->_assetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCPMobileAssetManager_cloneAsset_to___block_invoke;
  block[3] = &unk_1E8351ED0;
  v14 = v7;
  v15 = v6;
  v16 = &v17;
  v9 = v6;
  v10 = v7;
  dispatch_sync(assetQueue, block);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __39__VCPMobileAssetManager_cloneAsset_to___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/com.apple.mediaanalysisd/" isDirectory:1];
  v4 = [v3 URLByAppendingPathComponent:*(a1 + 32) isDirectory:1];

  v45 = 0;
  v5 = [v4 path];
  v6 = [v2 fileExistsAtPath:v5 isDirectory:&v45];

  if (v6)
  {
    v7 = 0;
    goto LABEL_7;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v47 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MobileAssetManager] Creating clone directory for asset: %@", buf, 0xCu);
  }

  v44 = 0;
  v8 = [v2 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v44];
  v7 = v44;
  if (v8)
  {
LABEL_7:
    v9 = [*(a1 + 40) lastPathComponent];
    v10 = [v4 URLByAppendingPathComponent:v9 isDirectory:1];

    v38 = [*(a1 + 40) path];
    v11 = [v10 path];
    v12 = [*(a1 + 40) URLByAppendingPathComponent:@"model_info.json" isDirectory:0];
    v13 = [v10 URLByAppendingPathComponent:@"model_info.json" isDirectory:0];
    v40 = v12;
    v14 = [v12 path];
    v39 = v13;
    if ([v2 fileExistsAtPath:v14])
    {
      v15 = [v13 path];
      v16 = [v2 fileExistsAtPath:v15];

      if (!v16)
      {
        goto LABEL_24;
      }

      v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v40];
      v17 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v13];
      v18 = v17;
      if (v14 && v17)
      {
        v43 = v7;
        v37 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:&v43];
        v19 = v43;

        v42 = v19;
        v20 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v18 options:0 error:&v42];
        v7 = v42;

        if (v37 && v20 && [v37 isEqualToDictionary:v20])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v47 = v10;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MobileAssetManager] Same asset already existing at %@, skip cloning", buf, 0xCu);
          }

          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);

          v22 = v38;
          v21 = v39;
          goto LABEL_42;
        }
      }
    }

LABEL_24:
    v23 = v7;
    v24 = [v10 path];
    v25 = [v2 fileExistsAtPath:v24 isDirectory:0];

    v22 = v38;
    if (v25)
    {
      v41 = v23;
      v26 = [v2 removeItemAtURL:v10 error:&v41];
      v7 = v41;

      v27 = MediaAnalysisLogLevel();
      if (v26)
      {
        if (v27 < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_30;
        }

        *buf = 138412290;
        v47 = v10;
        v28 = MEMORY[0x1E69E9C10];
        v29 = "[MobileAssetManager] Delete old clone asset at %@";
        v30 = OS_LOG_TYPE_DEBUG;
        v31 = 12;
      }

      else
      {
        if (v27 < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        *buf = 138412546;
        v47 = v10;
        v48 = 2112;
        v49 = v7;
        v28 = MEMORY[0x1E69E9C10];
        v29 = "[MobileAssetManager] Could not delete old clone asset at %@ with error: %@";
        v30 = OS_LOG_TYPE_ERROR;
        v31 = 22;
      }

      _os_log_impl(&dword_1C9B70000, v28, v30, v29, buf, v31);
    }

    else
    {
      v7 = v23;
    }

LABEL_30:
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v47 = v38;
      v48 = 2112;
      v49 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MobileAssetManager] Cloning asset: '%@' to: '%@'", buf, 0x16u);
    }

    v32 = clonefile([v38 UTF8String], objc_msgSend(v11, "UTF8String"), 1u);
    v33 = MediaAnalysisLogLevel();
    if (v32)
    {
      if (v33 >= 3)
      {
        v21 = v39;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v34 = *__error();
          v35 = __error();
          v36 = strerror(*v35);
          *buf = 138413314;
          v47 = v38;
          v48 = 2112;
          v49 = v11;
          v50 = 1024;
          v51 = 1;
          v52 = 1024;
          v53 = v34;
          v54 = 2080;
          v55 = v36;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Could not clone asset. clonefile(%@, %@, %o) FAILED with (%d : %s)", buf, 0x2Cu);
        }

        goto LABEL_42;
      }
    }

    else
    {
      if (v33 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MobileAssetManager] Asset successfully cloned at: %@", buf, 0xCu);
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
    }

    v21 = v39;
LABEL_42:

    goto LABEL_43;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v47 = v4;
    v48 = 2112;
    v49 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Could not create clone directory for asset: %@. error: %@", buf, 0x16u);
  }

LABEL_43:
}

- (id)queryMobileAssets
{
  if (queryMobileAssets_once != -1)
  {
    [VCPMobileAssetManager queryMobileAssets];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__75;
  v12 = __Block_byref_object_dispose__75;
  v13 = 0;
  assetQueue = self->_assetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCPMobileAssetManager_queryMobileAssets__block_invoke_547;
  block[3] = &unk_1E834CFE0;
  block[4] = &v8;
  dispatch_sync(assetQueue, block);
  if (!v9[5] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] No VCPMobileAsset query results", v6, 2u);
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __42__VCPMobileAssetManager_queryMobileAssets__block_invoke()
{
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Updating MobileAsset catalog", buf, 2u);
  }

  *buf = 0;
  v2 = buf;
  v3 = 0x3032000000;
  v4 = __Block_byref_object_copy__75;
  v5 = __Block_byref_object_dispose__75;
  v6 = dispatch_semaphore_create(0);
  v0[0] = MEMORY[0x1E69E9820];
  v0[1] = 3221225472;
  v0[2] = __42__VCPMobileAssetManager_queryMobileAssets__block_invoke_545;
  v0[3] = &unk_1E8351EF8;
  v0[4] = buf;
  [MEMORY[0x1E69B18D8] startCatalogDownload:@"com.apple.MobileAsset.VCPMobileAssets" then:v0];
  dispatch_semaphore_wait(*(v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
  _Block_object_dispose(buf, 8);
}

intptr_t __42__VCPMobileAssetManager_queryMobileAssets__block_invoke_545(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MobileAssetManager] Download meta data reply %ld", &v5, 0xCu);
  }

  return dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
}

void __42__VCPMobileAssetManager_queryMobileAssets__block_invoke_547(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.VCPMobileAssets"];
  v3 = [v2 queryMetaDataSync];
  if (v3)
  {
    v4 = v3;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Queried asset metadata error with MAQueryResult: %ld", &v8, 0xCu);
    }
  }

  else
  {
    v5 = [v2 results];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)downloadMobileAssetIfNeeded:(id)a3 petWatchDog:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__75;
    v19 = __Block_byref_object_dispose__75;
    v20 = 0;
    assetQueue = self->_assetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VCPMobileAssetManager_downloadMobileAssetIfNeeded_petWatchDog___block_invoke;
    block[3] = &unk_1E8351F70;
    v12 = v6;
    v13 = v7;
    v14 = buf;
    dispatch_sync(assetQueue, block);
    v9 = *(v16 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Asset to download is nil", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

void __65__VCPMobileAssetManager_downloadMobileAssetIfNeeded_petWatchDog___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v3 = objc_alloc_init(MEMORY[0x1E69B1948]);
  [v3 setAllowsCellularAccess:1];
  [v3 setDiscretionary:0];
  [v3 setTimeoutIntervalForResource:110];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__75;
  v46 = __Block_byref_object_dispose__75;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if ([*(a1 + 32) state] == 1 || !objc_msgSend(*(a1 + 32), "state"))
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) assetId];
        *buf = 138412290;
        v49 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Mobile asset %@ not local - downloading", buf, 0xCu);
      }
    }

    v37 = 0;
    if ([*(a1 + 32) spaceCheck:&v37])
    {
      dispatch_group_enter(v2);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__VCPMobileAssetManager_downloadMobileAssetIfNeeded_petWatchDog___block_invoke_550;
      v35[3] = &unk_1E8351F20;
      v14 = *(a1 + 32);
      v36 = *(a1 + 40);
      [v14 attachProgressCallBack:v35];
      v15 = *(a1 + 40);
      if (v15)
      {
        (*(v15 + 16))();
      }

      v16 = *(a1 + 32);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __65__VCPMobileAssetManager_downloadMobileAssetIfNeeded_petWatchDog___block_invoke_552;
      v31[3] = &unk_1E8351F48;
      v17 = v2;
      v32 = v17;
      v33 = &v42;
      v34 = &v38;
      [v16 startDownload:v3 completionWithError:v31];

      dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
      v18 = v39[3];
      if (v18 <= 0x1D && ((1 << v18) & 0x2000C001) != 0)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v19 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v21 = [*(a1 + 32) getLocalUrl];
            v22 = v39[3];
            *buf = 138412546;
            v49 = v21;
            v50 = 2048;
            v51 = v22;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Mobile asset successfully downloaded at:%@ with downloadResult:%ld", buf, 0x16u);
          }
        }

        v23 = [*(a1 + 32) getLocalUrl];
        v24 = *(*(a1 + 48) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;
      }

      else if (MediaAnalysisLogLevel() >= 3)
      {
        v26 = MEMORY[0x1E69E9C10];
        v27 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = [*(a1 + 32) assetId];
          v29 = v39[3];
          v30 = [v43[5] description];
          *buf = 138412802;
          v49 = v28;
          v50 = 2048;
          v51 = v29;
          v52 = 2112;
          v53 = v30;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Mobile asset %@ download failed with MADownloadResult:%ld and error:%@", buf, 0x20u);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v49 = v37;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Space not available to download asset %lli", buf, 0xCu);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) assetId];
        v7 = [*(a1 + 32) getLocalUrl];
        *buf = 138412546;
        v49 = v6;
        v50 = 2112;
        v51 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Mobile asset %@ already exists at %@, skip downloading", buf, 0x16u);
      }
    }

    v8 = [*(a1 + 32) getLocalUrl];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

void __65__VCPMobileAssetManager_downloadMobileAssetIfNeeded_petWatchDog___block_invoke_550(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 134218240;
    v6 = [v3 totalWritten];
    v7 = 2048;
    v8 = [v3 totalExpected];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Progress callback: %lld %lld", &v5, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

void __65__VCPMobileAssetManager_downloadMobileAssetIfNeeded_petWatchDog___block_invoke_552(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_group_leave(*(a1 + 32));
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Downloaded asset with result %li", &v7, 0xCu);
  }
}

- (id)retrieveAssetLocalURL:(id)a3 assetVersion:(id)a4 petWatchDog:(id)a5 cancelBlock:(id)a6
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([objc_opt_class() isOTAFailTestEnabled])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] OTAFailTest enabled, asset downloading fail for testing", buf, 2u);
    }

    v14 = 0;
    goto LABEL_52;
  }

  v44 = self;
  if (VCPMAIsAppleInternal())
  {
    v15 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v16 = [v15 resourceURL];

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v10, v11];
    v18 = [MEMORY[0x1E695DFF8] URLWithString:v17 relativeToURL:v16];
    v55 = 0;
    v19 = [v18 checkResourceIsReachableAndReturnError:&v55];
    v20 = v55;
    if (v19)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v58 = v10;
        v59 = 2112;
        v60 = v11;
        v61 = 2112;
        v62 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] In-framework asset (%@-%@) available at %@", buf, 0x20u);
      }

      v14 = v18;

      goto LABEL_52;
    }
  }

  else
  {
    v18 = 0;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v58 = v10;
    v59 = 2112;
    v60 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Retrieving (download if not present) mobile asset: %@-%@", buf, 0x16u);
  }

  if (v13 && v13[2](v13))
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "[MobileAssetManager] Cancelled";
LABEL_48:
    _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
LABEL_49:
    v36 = 0;
    v24 = 0;
    obj = 0;
    goto LABEL_50;
  }

  if (v12)
  {
    v12[2](v12);
  }

  v23 = [(VCPMobileAssetManager *)v44 queryMobileAssets];
  if (!v23)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "[MobileAssetManager] No results queried with MobileAsset";
    goto LABEL_48;
  }

  v43 = v12;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v23;
  v50 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  v24 = 0;
  if (v50)
  {
    v49 = *v52;
    v48 = v10;
    v45 = v11;
    v42 = v18;
LABEL_27:
    v46 = v24;
    v25 = 0;
    while (1)
    {
      if (*v52 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v51 + 1) + 8 * v25);
      v27 = objc_autoreleasePoolPush();
      if (v13 && v13[2](v13))
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v41 = [v26 assetId];
          *buf = 138412290;
          v58 = v41;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Cancelled processing %@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);

        v36 = 0;
        v11 = v45;
        v24 = v46;
        v12 = v43;
        v18 = v42;
        goto LABEL_50;
      }

      v28 = v13;
      v29 = [v26 attributes];
      v30 = [v29 objectForKey:@"Model"];
      v31 = [v30 objectForKey:@"AssetName"];
      v32 = [v30 objectForKey:@"Version"];
      if ([v31 isEqualToString:v10] && ((objc_msgSend(v45, "isEqualToString:", @"LatestVersion") & 1) != 0 || objc_msgSend(v32, "isEqualToString:", v45)))
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v58 = v26;
          v59 = 2112;
          v60 = v31;
          v61 = 2112;
          v62 = v32;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MobileAssetManager] Asset successfully queried: %@ (name %@ ver %@)", buf, 0x20u);
        }

        v33 = v26;

        v34 = 0;
        v35 = 1;
        v46 = v33;
      }

      else
      {
        v35 = 0;
        v34 = 1;
      }

      objc_autoreleasePoolPop(v27);
      if (!v34)
      {
        break;
      }

      ++v25;
      v10 = v48;
      v13 = v28;
      if (v50 == v25)
      {
        v11 = v45;
        v24 = v46;
        v18 = v42;
        v50 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v50)
        {
          goto LABEL_27;
        }

        goto LABEL_43;
      }
    }

    v11 = v45;
    v13 = v28;
    if (!v35)
    {
      v37 = 0;
      v18 = v42;
      v14 = v42;
      v10 = v48;
      v12 = v43;
      v24 = v46;
      goto LABEL_51;
    }

    v10 = v48;
    v12 = v43;
    v18 = v42;
    v24 = v46;
    if (!v13)
    {
      goto LABEL_62;
    }
  }

  else
  {
LABEL_43:

    v12 = v43;
    if (!v13)
    {
LABEL_62:
      v39 = [(VCPMobileAssetManager *)v44 downloadMobileAssetIfNeeded:v24 petWatchDog:v12];

      v40 = MediaAnalysisLogLevel();
      if (v39)
      {
        if (v40 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v58 = v10;
          v59 = 2112;
          v60 = v11;
          v61 = 2112;
          v62 = v39;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MobileAssetManager] Asset %@-%@ local url: %@", buf, 0x20u);
        }

        if (v13 && v13[2](v13))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Cancelled", buf, 2u);
          }

          v36 = 0;
        }

        else
        {
          v36 = [(VCPMobileAssetManager *)v44 cloneAsset:v39 to:v10];
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v58 = v10;
            v59 = 2112;
            v60 = v11;
            v61 = 2112;
            v62 = v36;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Retrieved asset %@-%@ at: %@", buf, 0x20u);
          }
        }

        v18 = v39;
      }

      else if (v40 < 3)
      {
        v36 = 0;
        v18 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v58 = v10;
          v59 = 2112;
          v60 = v11;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Failed to download asset: %@-%@", buf, 0x16u);
        }

        v36 = 0;
        v18 = 0;
      }

      goto LABEL_50;
    }
  }

  if (!v13[2](v13))
  {
    goto LABEL_62;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Cancelled", buf, 2u);
  }

  v36 = 0;
LABEL_50:
  v37 = v36;
  v14 = v37;
LABEL_51:

LABEL_52:

  return v14;
}

- (id)retrieveAssetLocalURL:(int64_t)a3 petWatchDog:(id)a4 cancelBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [objc_opt_class() assetName:a3];
  v11 = [objc_opt_class() assetVersion:a3];
  v12 = [(VCPMobileAssetManager *)self retrieveAssetLocalURL:v10 assetVersion:v11 petWatchDog:v9 cancelBlock:v8];

  return v12;
}

- (id)retrieveAssetOnce:(int64_t)a3 petWatchDog:(id)a4 cancelBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__75;
  v24 = __Block_byref_object_dispose__75;
  v25 = 0;
  retrieveAssetOnceQueue = self->_retrieveAssetOnceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCPMobileAssetManager_retrieveAssetOnce_petWatchDog_cancelBlock___block_invoke;
  block[3] = &unk_1E8351F98;
  v18 = &v20;
  v19 = a3;
  block[4] = self;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(retrieveAssetOnceQueue, block);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __67__VCPMobileAssetManager_retrieveAssetOnce_petWatchDog_cancelBlock___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() assetName:*(a1 + 64)];
  v3 = [objc_opt_class() assetVersion:*(a1 + 64)];
  if ([*(*(a1 + 32) + 32) containsObject:v2])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = v2;
      v19 = 2112;
      v20 = v3;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "[MobileAssetManager] Asset %@-%@ not present and failed to download";
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 22;
LABEL_9:
      _os_log_impl(&dword_1C9B70000, v4, v6, v5, &v17, v7);
    }
  }

  else
  {
    v8 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v2];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v11 = *(*(*(a1 + 56) + 8) + 40);
        v17 = 138412802;
        v18 = v2;
        v19 = 2112;
        v20 = v3;
        v21 = 2112;
        v22 = v11;
        v4 = MEMORY[0x1E69E9C10];
        v5 = "[MobileAssetManager] Asset %@-%@ present at %@";
        v6 = OS_LOG_TYPE_DEBUG;
        v7 = 32;
        goto LABEL_9;
      }
    }

    else
    {
      v12 = [*(a1 + 32) retrieveAssetLocalURL:*(a1 + 64) petWatchDog:*(a1 + 40) cancelBlock:*(a1 + 48)];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = *(*(*(a1 + 56) + 8) + 40);
      v16 = *(a1 + 32);
      if (v15)
      {
        [*(v16 + 24) setObject:v15 forKeyedSubscript:v2];
      }

      else
      {
        [*(v16 + 32) addObject:v2];
      }
    }
  }
}

- (int)purgeAllInstalledAssets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  assetQueue = self->_assetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCPMobileAssetManager_purgeAllInstalledAssets__block_invoke;
  block[3] = &unk_1E834CFE0;
  block[4] = &v6;
  dispatch_sync(assetQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __48__VCPMobileAssetManager_purgeAllInstalledAssets__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v3 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.VCPMobileAssets"];
  [v3 returnTypes:2];
  if ([v3 queryMetaDataSync])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MobileAssetManager] Mobile asset query failed", buf, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = -18;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = v3;
    v4 = [v3 results];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            [v9 attributes];
            v11 = v10 = v4;
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Requesting purge of asset attributes:%@", buf, 0xCu);

            v4 = v10;
          }

          dispatch_group_enter(v2);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __48__VCPMobileAssetManager_purgeAllInstalledAssets__block_invoke_558;
          v13[3] = &unk_1E8351FC0;
          v15 = *(a1 + 32);
          v14 = v2;
          [v9 purgeWithError:v13];
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v6);
    }

    v3 = v12;
  }

  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

void __48__VCPMobileAssetManager_purgeAllInstalledAssets__block_invoke_558(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != 3 && a2)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v6 = [v5 description];
      v7 = 138412546;
      v8 = v6;
      v9 = 2048;
      v10 = a2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Failed to purge the asset with error: (%@) and result: (%ld)", &v7, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = -18;
  }

  else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MobileAssetManager] Asset purged successfully %ld", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end