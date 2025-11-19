@interface NSData(GKAdditions)
+ (id)_gkImageCachePathForURL:()GKAdditions subdirectory:filename:;
+ (uint64_t)imageDebugEnabled;
+ (void)_gkLoadRemoteImageDataForURL:()GKAdditions session:subdirectory:filename:queue:handler:;
+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:queue:reply:;
+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:subdirectory:filename:queue:imageQueue:handler:;
- (id)_gkAsHexString;
@end

@implementation NSData(GKAdditions)

+ (uint64_t)imageDebugEnabled
{
  if (imageDebugEnabled_onceToken != -1)
  {
    +[NSData(GKAdditions) imageDebugEnabled];
  }

  return imageDebugEnabled_enabled;
}

+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:queue:reply:
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v12 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
  }

  if ([MEMORY[0x277CBEA90] imageDebugEnabled])
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      *buf = 67109120;
      v32 = GKAtomicIncrement32(imageLoadCount);
      _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "BEGIN daemon image load: (%d)", buf, 8u);
    }
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "NSData+GKAdditions.m", 42, "+[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:queue:reply:]"];
  v19 = [GKDispatchGroup dispatchGroupWithName:v18];

  if (v10)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke;
    v26[3] = &unk_2785DDBE8;
    v27 = v10;
    v28 = v11;
    v30 = a2;
    v29 = v19;
    [v29 perform:v26];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_9;
  v23[3] = &unk_2785DDC10;
  v24 = v19;
  v25 = v13;
  v20 = v19;
  v21 = v13;
  [v20 notifyOnQueue:v12 block:v23];

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)_gkLoadRemoteImageDataForURL:()GKAdditions session:subdirectory:filename:queue:handler:
{
  v21 = a7;
  if (!v21)
  {
    v21 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
  }

  v15 = _gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__onceToken;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  if (v15 != -1)
  {
    +[NSData(GKAdditions) _gkLoadRemoteImageDataForURL:session:subdirectory:filename:queue:handler:];
  }

  [a1 _gkLoadRemoteImageDataForUrl:v20 session:v19 subdirectory:v18 filename:v17 queue:v21 imageQueue:_gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__imageQueue handler:v16];
}

+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:subdirectory:filename:queue:imageQueue:handler:
{
  v62 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v48 = a4;
  v46 = a5;
  v47 = a6;
  v15 = a7;
  v49 = a8;
  v45 = a9;
  v16 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
    v16 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = v16;
    v19 = [v14 absoluteString];
    *buf = 138412290;
    v61 = v19;
    _os_log_impl(&dword_227904000, v18, OS_LOG_TYPE_INFO, "_gkLoadRemoteImageDataForUrl: %@", buf, 0xCu);
  }

  if (_gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler__onceToken != -1)
  {
    +[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:subdirectory:filename:queue:imageQueue:handler:];
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "NSData+GKAdditions.m", 136, "+[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:subdirectory:filename:queue:imageQueue:handler:]"];
  v44 = [GKDispatchGroup dispatchGroupWithName:v20];

  v21 = [v14 path];
  v22 = GKImageCacheRoot(&stru_283AFD1E0);
  v23 = [v21 hasPrefix:v22];

  v24 = +[GKPreferences shared];
  if ([v24 isInternalBuild])
  {
    v25 = [v14 scheme];
    if ([v25 isEqualToString:@"file"])
    {
      v26 = [v14 path];
      v27 = MEMORY[0x277CCACA8];
      v28 = +[GKGame currentGame];
      v29 = [v28 bundleIdentifier];
      v30 = [v27 stringWithFormat:@"/AppleInternal/Library/Bundles/GameKitFakeData.bundle/%@.gamekit", v29];
      v31 = [v26 hasPrefix:v30];
    }

    else
    {
      v31 = 0;
    }

    v32 = v48;
    v33 = v46;
  }

  else
  {
    v31 = 0;
    v32 = v48;
    v33 = v46;
  }

  if (v14 && (([v14 _gkIsValidServerURL] | v31 | v23) & 1) != 0)
  {
    v34 = [MEMORY[0x277CBEA90] _gkImageCachePathForURL:v14 subdirectory:v33 filename:v47];
    if ([v34 containsString:@"../"])
    {
      v35 = v44;
      if (!os_log_GKGeneral)
      {
        v36 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        +[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:subdirectory:filename:queue:imageQueue:handler:];
      }
    }

    else
    {
      v39 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v34];
      v35 = v44;
      if ([v39 length])
      {
        [v44 setResult:v39];
        if (!os_log_GKGeneral)
        {
          v40 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
        {
          +[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:subdirectory:filename:queue:imageQueue:handler:];
        }
      }

      else
      {
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_31;
        v53[3] = &unk_2785DDA00;
        v54 = v34;
        v55 = v49;
        v56 = v44;
        v57 = v14;
        v58 = v32;
        v59 = v15;
        [v56 perform:v53];
      }
    }
  }

  else
  {
    v37 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v38 = GKOSLoggers();
      v37 = os_log_GKGeneral;
    }

    v35 = v44;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v61 = v14;
      _os_log_impl(&dword_227904000, v37, OS_LOG_TYPE_INFO, "Image URL not HTTPS compliant, and not ImageCacheRoot for: %@", buf, 0xCu);
    }
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_35;
  v50[3] = &unk_2785DDC10;
  v51 = v35;
  v52 = v45;
  v41 = v35;
  v42 = v45;
  [v41 notifyOnQueue:v15 block:v50];

  v43 = *MEMORY[0x277D85DE8];
}

+ (id)_gkImageCachePathForURL:()GKAdditions subdirectory:filename:
{
  v7 = a3;
  v8 = v7;
  if (a4 && a5)
  {
    v9 = GKImageCachePathForSubdirectoryAndFilename(a4, a5);
  }

  else
  {
    v10 = [v7 absoluteString];
    v11 = GKImageCacheRoot(v10);
    v12 = [v8 lastPathComponent];
    v9 = [v11 stringByAppendingPathComponent:v12];
  }

  return v9;
}

- (id)_gkAsHexString
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(a1, "length")}];
  v3 = [a1 bytes];
  if ([a1 length])
  {
    v4 = 0;
    do
    {
      [v2 appendFormat:@"%02X", *(v3 + v4++)];
    }

    while ([a1 length] > v4);
  }

  return v2;
}

+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:subdirectory:filename:queue:imageQueue:handler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v0, v1, "Loaded cached image from file cache path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:subdirectory:filename:queue:imageQueue:handler:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v0, OS_LOG_TYPE_ERROR, "Illegal file cache path: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end