@interface PHAssetResourceManager(MediaAnalysis)
+ (uint64_t)vcp_inMemoryDownload:()MediaAnalysis withTaskID:toData:cancel:;
+ (uint64_t)vcp_requestFileURLForAssetResource:()MediaAnalysis withTaskID:timeoutHandler:urlHandler:andCompletionHandler:;
+ (uint64_t)vcp_requestFileURLForAssetResource:()MediaAnalysis withTaskID:toResourceURL:cancel:;
+ (uint64_t)vcp_requestFileURLForAssetResource:()MediaAnalysis withTaskID:toResourceURL:progressHandler:cancel:;
+ (void)vcp_reportDownload:()MediaAnalysis withTaskID:;
@end

@implementation PHAssetResourceManager(MediaAnalysis)

+ (void)vcp_reportDownload:()MediaAnalysis withTaskID:
{
  v25 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v6 = VCPTaskIDDescription(a4);
    v7 = qos_class_self();
    v8 = VCPMAQoSDescription(v7);
    *buf = 138413058;
    v18 = @"com.apple.mediaanalysisd.das.dutycycle.task";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    v23 = 2048;
    v24 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[DAS QoS] %@: %@ (%@) download %lu bytes", buf, 0x2Au);
  }

  v9 = +[VCPMADCoreAnalyticsManager sharedManager];
  v10 = VCPTaskIDDescription(a4);
  v11 = qos_class_self();
  v12 = VCPMAQoSDescription(v11);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a3, @"taskName", @"QoS", @"DownloadAssetCount", @"DownloadBytes", v10, v12, &unk_1F49BE620}];
  v16[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:4];
  [v9 sendEvent:@"com.apple.mediaanalysisd.das.dutycycle.task" withAnalytics:v14];
}

+ (uint64_t)vcp_inMemoryDownload:()MediaAnalysis withTaskID:toData:cancel:
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = a1;
  objc_sync_enter(v11);
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Attempt to download resource: %@", buf, 0xCu);
  }

  v12 = objc_alloc_init(MEMORY[0x1E6978700]);
  [v12 setNetworkAccessAllowed:1];
  [v12 setDownloadIsTransient:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PHAssetResourceManager_MediaAnalysis__vcp_inMemoryDownload_withTaskID_toData_cancel___block_invoke;
  aBlock[3] = &unk_1E8352020;
  v13 = v9;
  v42 = v13;
  v14 = _Block_copy(aBlock);
  [v12 setProgressHandler:v14];
  v15 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v16 = dispatch_semaphore_create(0);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __87__PHAssetResourceManager_MediaAnalysis__vcp_inMemoryDownload_withTaskID_toData_cancel___block_invoke_193;
  v36[3] = &unk_1E8352048;
  v39 = v11;
  v17 = v15;
  v37 = v17;
  v40 = a4;
  v18 = v16;
  v38 = v18;
  v32 = _Block_copy(v36);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __87__PHAssetResourceManager_MediaAnalysis__vcp_inMemoryDownload_withTaskID_toData_cancel___block_invoke_195;
  v34[3] = &unk_1E8352070;
  v31 = v17;
  v35 = v31;
  v33 = _Block_copy(v34);
  v19 = [MEMORY[0x1E69786E8] defaultManager];
  v20 = [v19 requestDataForAssetResource:v13 options:v12 dataReceivedHandler:v33 completionHandler:v32];

  if (v20)
  {
    v21 = v13;
    if (v10)
    {
      v22 = -100000000;
      while (1)
      {
        v23 = dispatch_time(0, 100000000);
        if (!dispatch_semaphore_wait(v18, v23))
        {
          goto LABEL_23;
        }

        v22 += 100000000;
        if (v22 >= 0xDF2517701)
        {
          v13 = v21;
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v44) = v20;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Download resource timed-out (ID:%d)", buf, 8u);
          }

          goto LABEL_28;
        }

        if (v10[2](v10))
        {
          v13 = v21;
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v44) = v20;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelling download (ID:%d)", buf, 8u);
          }

          v24 = [MEMORY[0x1E69786E8] defaultManager];
          [v24 cancelDataRequest:v20];

          dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
          v25 = 4294967168;
          goto LABEL_30;
        }
      }
    }

    v26 = dispatch_time(0, 60000000000);
    if (!dispatch_semaphore_wait(v18, v26))
    {
LABEL_23:
      if (a5)
      {
        v27 = v31;
        v13 = v21;
        v25 = 0;
        *a5 = v31;
      }

      else
      {
        v25 = 0;
        v13 = v21;
      }

      goto LABEL_30;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v44) = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Download resource timed-out (ID:%d)", buf, 8u);
    }

LABEL_28:
    v28 = [MEMORY[0x1E69786E8] defaultManager];
    [v28 cancelDataRequest:v20];

    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    v25 = 4294966371;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to issue resource request", buf, 2u);
    }

    v25 = 4294967278;
  }

LABEL_30:

  objc_sync_exit(v11);
  return v25;
}

+ (uint64_t)vcp_requestFileURLForAssetResource:()MediaAnalysis withTaskID:toResourceURL:cancel:
{
  v9 = a6;
  v10 = a3;
  v11 = [objc_opt_class() vcp_requestFileURLForAssetResource:v10 withTaskID:a4 toResourceURL:a5 progressHandler:0 cancel:v9];

  return v11;
}

+ (uint64_t)vcp_requestFileURLForAssetResource:()MediaAnalysis withTaskID:toResourceURL:progressHandler:cancel:
{
  v66 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v15 = [v12 assetLocalIdentifier];
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FileBasedDownload][%@] Attempt to download resource: %@", buf, 0x16u);
  }

  v16 = objc_alloc_init(MEMORY[0x1E6978700]);
  [v16 setNetworkAccessAllowed:1];
  [v16 setDownloadPriority:0];
  [v16 setDownloadIntent:6];
  [v16 setPruneAfterAvailableOnLowDisk:1];
  if (v13)
  {
    [v16 setProgressHandler:v13];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v63 = __Block_byref_object_copy__76;
  v64 = __Block_byref_object_dispose__76;
  v65 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__PHAssetResourceManager_MediaAnalysis__vcp_requestFileURLForAssetResource_withTaskID_toResourceURL_progressHandler_cancel___block_invoke;
  aBlock[3] = &unk_1E8352098;
  v17 = v12;
  v56 = v17;
  v57 = a5;
  v18 = _Block_copy(aBlock);
  v47 = MEMORY[0x1E69E9820];
  v48 = 3221225472;
  v49 = __124__PHAssetResourceManager_MediaAnalysis__vcp_requestFileURLForAssetResource_withTaskID_toResourceURL_progressHandler_cancel___block_invoke_199;
  v50 = &unk_1E83520C0;
  v19 = v17;
  v53 = a1;
  v54 = a4;
  v51 = v19;
  v52 = buf;
  v20 = _Block_copy(&v47);
  v21 = [MEMORY[0x1E69786E8] defaultManager];
  v22 = [v21 requestFileURLForAssetResource:v19 options:v16 urlReceivedHandler:v18 completionHandler:v20];

  if (v22)
  {
    if (v14)
    {
      v46 = v20;
      v23 = v13;
      v24 = -100000000;
      while (1)
      {
        v25 = *(*&buf[8] + 40);
        v26 = dispatch_time(0, 100000000);
        if (!dispatch_semaphore_wait(v25, v26))
        {
          v31 = 0;
          v13 = v23;
          v20 = v46;
          goto LABEL_36;
        }

        v24 += 100000000;
        if (v24 >= 0xDF2517701)
        {
          break;
        }

        if (v14[2](v14))
        {
          v13 = v23;
          v20 = v46;
          if (MediaAnalysisLogLevel() >= 6)
          {
            v27 = MEMORY[0x1E69E9C10];
            v28 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v29 = [v19 assetLocalIdentifier];
              *v58 = 138412546;
              v59 = v29;
              v60 = 1024;
              v61 = v22;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FileBasedDownload][%@] Cancelling download (ID:%d)", v58, 0x12u);
            }
          }

          v30 = [MEMORY[0x1E69786E8] defaultManager];
          [v30 cancelDataRequest:v22];

          dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
          v31 = 4294967168;
          goto LABEL_36;
        }
      }

      v13 = v23;
      v20 = v46;
      if (MediaAnalysisLogLevel() >= 4)
      {
        v41 = MEMORY[0x1E69E9C10];
        v42 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v19 assetLocalIdentifier];
          *v58 = 138412546;
          v59 = v43;
          v60 = 1024;
          v61 = v22;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FileBasedDownload][%@] Download resource timed-out (ID:%d)", v58, 0x12u);
        }
      }

      v44 = [MEMORY[0x1E69786E8] defaultManager];
      [v44 cancelDataRequest:v22];
    }

    else
    {
      v35 = *(*&buf[8] + 40);
      v36 = dispatch_time(0, 60000000000);
      if (!dispatch_semaphore_wait(v35, v36))
      {
        v31 = 0;
        goto LABEL_36;
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v37 = MEMORY[0x1E69E9C10];
        v38 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v19 assetLocalIdentifier];
          *v58 = 138412546;
          v59 = v39;
          v60 = 1024;
          v61 = v22;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FileBasedDownload][%@] Download resource timed-out (ID:%d)", v58, 0x12u);
        }
      }

      v40 = [MEMORY[0x1E69786E8] defaultManager];
      [v40 cancelDataRequest:v22];
    }

    dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
    v31 = 4294966371;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v32 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v34 = [v19 assetLocalIdentifier];
        *v58 = 138412290;
        v59 = v34;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FileBasedDownload][%@] Failed to issue resource request", v58, 0xCu);
      }
    }

    v31 = 4294967278;
  }

LABEL_36:

  _Block_object_dispose(buf, 8);
  return v31;
}

+ (uint64_t)vcp_requestFileURLForAssetResource:()MediaAnalysis withTaskID:timeoutHandler:urlHandler:andCompletionHandler:
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v16 = [v12 assetLocalIdentifier];
    *buf = 138412546;
    v49 = v16;
    v50 = 2112;
    v51 = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FileBasedDownload][%@] Downloading %@", buf, 0x16u);
  }

  v17 = objc_alloc_init(MEMORY[0x1E6978700]);
  [v17 setNetworkAccessAllowed:1];
  [v17 setDownloadPriority:0];
  [v17 setDownloadIntent:6];
  [v17 setPruneAfterAvailableOnLowDisk:1];
  v18 = VCPSignPostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCPDownloadResource", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __134__PHAssetResourceManager_MediaAnalysis__vcp_requestFileURLForAssetResource_withTaskID_timeoutHandler_urlHandler_andCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E83520E8;
  v22 = v12;
  v46 = v22;
  v47 = v13;
  v23 = v13;
  v24 = _Block_copy(aBlock);
  [v17 setProgressHandler:v24];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __134__PHAssetResourceManager_MediaAnalysis__vcp_requestFileURLForAssetResource_withTaskID_timeoutHandler_urlHandler_andCompletionHandler___block_invoke_200;
  v40[3] = &unk_1E8352110;
  v25 = v22;
  v43 = v19;
  v44 = 0;
  v41 = v25;
  v42 = v14;
  v26 = v14;
  v27 = _Block_copy(v40);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __134__PHAssetResourceManager_MediaAnalysis__vcp_requestFileURLForAssetResource_withTaskID_timeoutHandler_urlHandler_andCompletionHandler___block_invoke_202;
  v35[3] = &unk_1E8352138;
  v28 = v25;
  v38 = a1;
  v39 = a4;
  v36 = v28;
  v37 = v15;
  v29 = v15;
  v30 = _Block_copy(v35);
  v31 = [a1 defaultManager];
  v32 = [v31 requestFileURLForAssetResource:v28 options:v17 urlReceivedHandler:v27 completionHandler:v30];

  if (!v32 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [v28 assetLocalIdentifier];
    *buf = 138412290;
    v49 = v34;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FileBasedDownload][%@] Failed to issue resource request", buf, 0xCu);
  }

  return v32;
}

@end