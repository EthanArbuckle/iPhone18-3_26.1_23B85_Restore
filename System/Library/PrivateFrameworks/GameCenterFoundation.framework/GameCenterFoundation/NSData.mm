@interface NSData
@end

@implementation NSData

BOOL __40__NSData_GKAdditions__imageDebugEnabled__block_invoke()
{
  result = os_log_is_debug_enabled(os_log_GKHTTP);
  imageDebugEnabled_enabled = result;
  return result;
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCAD20] requestWithURL:*(a1 + 32)];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2;
  v11 = &unk_2785E1310;
  v15 = *(a1 + 56);
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = v3;
  v6 = v3;
  v7 = [v5 dataTaskWithRequest:v4 completionHandler:&v8];
  [v7 resume];
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_1(a1, v11, v9);
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else if (!v7)
    {
      goto LABEL_15;
    }

    v12 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
      v12 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_2(v12);
    }
  }

  else if (!v7)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_3(a1, v15);
    }
  }

LABEL_15:
  v16 = v8;
  if ([v16 statusCode] == 200)
  {
    [*(a1 + 40) setResult:v7];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_4(a1, v18, v16);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_9(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CBEA90] imageDebugEnabled])
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    v3 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v8[0] = 67109120;
      v8[1] = GKAtomicDecrement32(imageLoadCount);
      _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "END image load: (%d)", v8, 8u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(a1 + 32) result];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __96__NSData_GKAdditions___gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = _gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__imageQueue;
  _gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__imageQueue = v0;

  v2 = _gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__imageQueue;

  return [v2 setMaxConcurrentOperationCount:20];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  if (([v1 _gkIsGameCenter] & 1) != 0 || (objc_msgSend(v1, "_gkIsGameCenterExtension") & 1) != 0 || objc_msgSend(v1, "_gkIsGameDaemon"))
  {
    v0 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0 diskCapacity:0 diskPath:&stru_283AFD1E0];
    [MEMORY[0x277CCACD8] setSharedURLCache:v0];
  }
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_31(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_31_cold_1(a1, v5, v6, v7, v8, v9, v10, v11);
  }

  if ([MEMORY[0x277CBEA90] imageDebugEnabled])
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      *buf = 67109120;
      v26 = GKAtomicIncrement32(imageLoadCount);
      _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "BEGIN image load: (%d)", buf, 8u);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_32;
  v18[3] = &unk_2785E1360;
  v15 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 32);
  v24 = v3;
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v16 = v3;
  [v15 addOperationWithBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_32(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2;
  aBlock[3] = &unk_2785E1338;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v2 = _Block_copy(aBlock);
  [MEMORY[0x277CBEA90] _gkLoadRemoteImageDataForUrl:*(a1 + 48) session:*(a1 + 56) queue:*(a1 + 64) reply:v2];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277CBEA90] imageDebugEnabled])
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      *buf = 67109120;
      v29 = GKAtomicDecrement32(imageLoadCount);
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "END image load: (%d)", buf, 8u);
    }
  }

  [*(a1 + 32) setResult:v3];
  if (v3)
  {
    v7 = (a1 + 40);
    v8 = [*(a1 + 40) stringByDeletingLastPathComponent];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = 0;
    v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v27];
    v11 = v27;

    if ((v10 & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_1();
      }
    }

    v13 = *v7;
    v26 = 0;
    [v3 writeToFile:v13 options:1 error:&v26];
    v14 = v26;
    if (v14)
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_2((a1 + 40), v14, v16);
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKCache;
      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_3((a1 + 40), v18, v19, v20, v21, v22, v23, v24);
      }

      _gkMarkFileAsPurgeable(*v7);
    }
  }

  (*(*(a1 + 48) + 16))();

  v25 = *MEMORY[0x277D85DE8];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_35(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) result];
    (*(v1 + 16))(v1, v2);
  }
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a3;
  _os_log_error_impl(&dword_227904000, v6, OS_LOG_TYPE_ERROR, "%@:%@: error loading image data:%@", v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_227904000, v4, OS_LOG_TYPE_ERROR, "%@:%@: no image data received, but no error received either", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "statusCode")}];
  v9 = *(a1 + 32);
  v11 = 138412802;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = v9;
  _os_log_error_impl(&dword_227904000, v6, OS_LOG_TYPE_ERROR, "%@: Did not receive http status OK (received %@) for url: %@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_31_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_6(&dword_227904000, a2, a3, "Did not find image at cache path %@, will load from server.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v0, OS_LOG_TYPE_ERROR, "_gkLoadRemoteImageDataForUrl:subdirectory:filename:queue:imageQueue:handler: error creating directory:%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "Error writing image data to image cache %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_6(&dword_227904000, a2, a3, "Loaded and cached image data from server: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end