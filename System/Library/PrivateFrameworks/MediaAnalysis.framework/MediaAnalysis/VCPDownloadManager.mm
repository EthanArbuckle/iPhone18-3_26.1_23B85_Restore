@interface VCPDownloadManager
+ (id)sharedManager;
+ (void)_reportDownload:(unint64_t)download;
- (VCPDownloadManager)init;
- (id)requestDownloadOfResource:(id)resource;
- (void)flush;
@end

@implementation VCPDownloadManager

- (VCPDownloadManager)init
{
  v8.receiver = self;
  v8.super_class = VCPDownloadManager;
  v2 = [(VCPDownloadManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    mutex = v2->_mutex;
    v2->_mutex = v3;

    v5 = dispatch_semaphore_create(0);
    semaphore = v2->_semaphore;
    v2->_semaphore = v5;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_once != -1)
  {
    +[VCPDownloadManager sharedManager];
  }

  v3 = sharedManager_instance_0;

  return v3;
}

void __35__VCPDownloadManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(VCPDownloadManager);
  v1 = sharedManager_instance_0;
  sharedManager_instance_0 = v0;
}

+ (void)_reportDownload:(unint64_t)download
{
  v23 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v4 = VCPTaskIDDescription(1);
    v5 = qos_class_self();
    v6 = VCPMAQoSDescription(v5);
    *buf = 138413058;
    v16 = @"com.apple.mediaanalysisd.das.dutycycle.task";
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v6;
    v21 = 2048;
    downloadCopy = download;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[DAS QoS] %@: %@ (%@) download %lu bytes", buf, 0x2Au);
  }

  v7 = +[VCPMADCoreAnalyticsManager sharedManager];
  v8 = VCPTaskIDDescription(1);
  v9 = qos_class_self();
  v10 = VCPMAQoSDescription(v9);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{download, @"taskName", @"QoS", @"DownloadAssetCount", @"DownloadBytes", v8, v10, &unk_1F49BE350}];
  v14[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:4];
  [v7 sendEvent:@"com.apple.mediaanalysisd.das.dutycycle.task" withAnalytics:v12];
}

- (id)requestDownloadOfResource:(id)resource
{
  v63 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if ([resourceCopy fileSize] > 0xA00000)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Requested resource exceeds maximum supported size", buf, 2u);
    }

    defaultManager2 = 0;
    goto LABEL_51;
  }

  dispatch_semaphore_wait(self->_mutex, 0xFFFFFFFFFFFFFFFFLL);
  localIdentifier = self->_localIdentifier;
  assetLocalIdentifier = [resourceCopy assetLocalIdentifier];
  LODWORD(localIdentifier) = [(NSString *)localIdentifier isEqualToString:assetLocalIdentifier];

  v8 = MediaAnalysisLogLevel();
  if (localIdentifier)
  {
    if (v8 >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Resource already in the buffer. Skip downloading.", buf, 2u);
    }

    v9 = objc_alloc(MEMORY[0x1E695DEF0]);
    mutableBytes = [(NSMutableData *)self->_buffer mutableBytes];
    length = self->_length;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __48__VCPDownloadManager_requestDownloadOfResource___block_invoke;
    v60[3] = &unk_1E8350FC8;
    v60[4] = self;
    defaultManager2 = [v9 initWithBytesNoCopy:mutableBytes length:length deallocator:v60];
    goto LABEL_51;
  }

  if (v8 >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    assetLocalIdentifier2 = [resourceCopy assetLocalIdentifier];
    *buf = 138412546;
    *&buf[4] = assetLocalIdentifier2;
    *&buf[12] = 2112;
    *&buf[14] = resourceCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] requestDownloadOfResource: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v62 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  context = objc_autoreleasePoolPush();
  if (self->_buffer || ([MEMORY[0x1E695DF88] dataWithLength:{10485760, context}], v13 = objc_claimAutoreleasedReturnValue(), buffer = self->_buffer, self->_buffer = v13, buffer, self->_buffer))
  {
    v15 = objc_alloc_init(MEMORY[0x1E6978700]);
    [v15 setNetworkAccessAllowed:1];
    [v15 setDownloadIsTransient:1];
    [v15 setProgressHandler:&__block_literal_global_199_0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__VCPDownloadManager_requestDownloadOfResource___block_invoke_200;
    aBlock[3] = &unk_1E8350FF0;
    v54 = &v56;
    aBlock[4] = self;
    defaultManager2 = resourceCopy;
    v53 = defaultManager2;
    v55 = buf;
    v41 = _Block_copy(aBlock);
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v51[3] = 0;
    v16 = VCPSignPostLog();
    v17 = os_signpost_id_generate(v16);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v50 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PHAssetResourceManager_requestDataForAssetResource", "", v50, 2u);
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__59;
    v48 = __Block_byref_object_dispose__59;
    v49 = dispatch_semaphore_create(0);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __48__VCPDownloadManager_requestDownloadOfResource___block_invoke_202;
    v43[3] = &unk_1E8351018;
    v43[4] = self;
    v43[5] = buf;
    v43[6] = &v56;
    v43[7] = v51;
    v43[8] = &v44;
    v43[9] = v17;
    v40 = _Block_copy(v43);
    defaultManager = [MEMORY[0x1E69786E8] defaultManager];
    v21 = [defaultManager requestDataForAssetResource:defaultManager2 options:v15 dataReceivedHandler:v41 completionHandler:v40];

    if (v21)
    {
      cancel = [(VCPDownloadManager *)self cancel];

      if (cancel)
      {
        v23 = -100000000;
        while (1)
        {
          v24 = v45[5];
          v25 = dispatch_time(0, 100000000);
          if (!dispatch_semaphore_wait(v24, v25))
          {
            break;
          }

          v23 += 100000000;
          if (v23 >= 0x3781BF501)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *v50 = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Download resource timed-out", v50, 2u);
            }

            goto LABEL_44;
          }

          cancel2 = [(VCPDownloadManager *)self cancel];
          v27 = cancel2[2]();

          if (v27)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *v50 = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelling download", v50, 2u);
            }

            defaultManager2 = [MEMORY[0x1E69786E8] defaultManager];
            [defaultManager2 cancelDataRequest:v21];

            dispatch_semaphore_wait(v45[5], 0xFFFFFFFFFFFFFFFFLL);
            v28 = *&buf[8];
            v29 = -128;
            goto LABEL_45;
          }
        }

LABEL_38:
        if (!*(*&buf[8] + 24))
        {
          self->_length = v57[3];
          assetLocalIdentifier3 = [defaultManager2 assetLocalIdentifier];
          v33 = self->_localIdentifier;
          self->_localIdentifier = assetLocalIdentifier3;

          v34 = objc_alloc(MEMORY[0x1E695DEF0]);
          mutableBytes2 = [(NSMutableData *)self->_buffer mutableBytes];
          v36 = self->_length;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __48__VCPDownloadManager_requestDownloadOfResource___block_invoke_206;
          v42[3] = &unk_1E8350FC8;
          v42[4] = self;
          defaultManager2 = [v34 initWithBytesNoCopy:mutableBytes2 length:v36 deallocator:v42];
          v37 = 0;
LABEL_47:

          _Block_object_dispose(&v44, 8);
          _Block_object_dispose(v51, 8);

          goto LABEL_48;
        }

LABEL_46:
        v37 = 1;
        goto LABEL_47;
      }

      v30 = v45[5];
      v31 = dispatch_time(0, 15000000000);
      if (!dispatch_semaphore_wait(v30, v31))
      {
        goto LABEL_38;
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Download resource timed-out", v50, 2u);
      }

LABEL_44:
      defaultManager2 = [MEMORY[0x1E69786E8] defaultManager];
      [defaultManager2 cancelDataRequest:v21];

      dispatch_semaphore_wait(v45[5], 0xFFFFFFFFFFFFFFFFLL);
      v28 = *&buf[8];
      v29 = -925;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        defaultManager2 = 16;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v50 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to issue resource request", v50, 2u);
        }
      }

      v28 = *&buf[8];
      v29 = -18;
    }

LABEL_45:
    *(v28 + 24) = v29;
    goto LABEL_46;
  }

  *(*&buf[8] + 24) = -18;
  v37 = 1;
LABEL_48:
  objc_autoreleasePoolPop(context);
  if (v37)
  {
    dispatch_semaphore_signal(self->_mutex);
    defaultManager2 = 0;
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(buf, 8);
LABEL_51:

  return defaultManager2;
}

void __48__VCPDownloadManager_requestDownloadOfResource___block_invoke_196(double a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v2 = 134217984;
    v3 = a1;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Download progress: %.2f", &v2, 0xCu);
  }
}

void __48__VCPDownloadManager_requestDownloadOfResource___block_invoke_200(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 24);
  v5 = [v3 length] + v4;
  v6 = [*(*(a1 + 32) + 16) length];
  v7 = MediaAnalysisLogLevel();
  if (v5 <= v6)
  {
    if (v7 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v8 = [v3 length];
      v9 = *(*(*(a1 + 48) + 8) + 24);
      v10 = [v3 length] + v9;
      v11 = [*(a1 + 40) fileSize];
      v12 = 134218496;
      v13 = v8;
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "    Received %llu bytes (Overall: %llu/%llu)", &v12, 0x20u);
    }

    memcpy(([*(*(a1 + 32) + 16) mutableBytes] + *(*(*(a1 + 48) + 8) + 24)), objc_msgSend(v3, "bytes"), objc_msgSend(v3, "length"));
    *(*(*(a1 + 48) + 8) + 24) += [v3 length];
  }

  else
  {
    if (v7 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Data received exceeds maximum supported size", &v12, 2u);
    }

    *(*(*(a1 + 56) + 8) + 24) = -18;
  }
}

void __48__VCPDownloadManager_requestDownloadOfResource___block_invoke_202(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MediaAnalysisLogLevel();
  if (v3)
  {
    if (v4 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 description];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to download asset resource (%@)", &v9, 0xCu);
    }

    *(*(a1[5] + 8) + 24) = -18;
  }

  else
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Successfully downloaded asset resource", &v9, 2u);
    }

    [objc_opt_class() _reportDownload:*(*(a1[6] + 8) + 24)];
  }

  v6 = VCPSignPostLog();
  v7 = v6;
  v8 = a1[9];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PHAssetResourceManager_requestDataForAssetResource", "", &v9, 2u);
  }

  if (*(*(a1[7] + 8) + 24))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  dispatch_semaphore_signal(*(*(a1[8] + 8) + 40));
}

- (void)flush
{
  dispatch_semaphore_wait(self->_mutex, 0xFFFFFFFFFFFFFFFFLL);
  buffer = self->_buffer;
  self->_buffer = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  localIdentifier = self->_localIdentifier;
  self->_localIdentifier = 0;

  mutex = self->_mutex;

  dispatch_semaphore_signal(mutex);
}

@end