@interface NTKGreenfieldDownloader
- (BOOL)_copyFileFromURL:(id)a3;
- (NTKGreenfieldDownloader)initWithWatchFaceURL:(id)a3;
- (id)_downloadURL;
- (id)_downloadedFolderURL;
- (int64_t)_greenfieldErrorFromURLSessionError:(int64_t)a3;
- (void)cancelDownload;
- (void)downloadCleanUp;
- (void)downloadWithCompletionBlock:(id)a3;
@end

@implementation NTKGreenfieldDownloader

- (NTKGreenfieldDownloader)initWithWatchFaceURL:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = NTKGreenfieldDownloader;
  v6 = [(NTKGreenfieldDownloader *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteWatchFaceURL, a3);
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v8 initWithFormat:@"%@.watchface", v9];

    v11 = [(NTKGreenfieldDownloader *)v7 _downloadedFolderURL];
    v12 = [v11 URLByAppendingPathComponent:v10];
    downloadedFileURL = v7->_downloadedFileURL;
    v7->_downloadedFileURL = v12;
  }

  return v7;
}

- (id)_downloadedFolderURL
{
  if (_downloadedFolderURL_onceToken != -1)
  {
    [NTKGreenfieldDownloader _downloadedFolderURL];
  }

  v3 = _downloadedFolderURL_downloadedFolderURL;

  return v3;
}

void __47__NTKGreenfieldDownloader__downloadedFolderURL__block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v4 = NSTemporaryDirectory();
  v1 = [v0 fileURLWithPath:v4];
  v2 = [v1 URLByAppendingPathComponent:@"watchfacesDownload"];
  v3 = _downloadedFolderURL_downloadedFolderURL;
  _downloadedFolderURL_downloadedFolderURL = v2;
}

- (id)_downloadURL
{
  v2 = [(NSURL *)self->_remoteWatchFaceURL lastPathComponent];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://watch-app.cdn-apple.com/A/com.apple.watchfaces/production/_defaultZone"];
    v4 = [v3 URLByAppendingPathComponent:v2];

    v5 = [v4 URLByAppendingPathComponent:@"WatchFaceFile"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)downloadWithCompletionBlock:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKGreenfieldDownloader *)self _downloadURL];
  v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Downloading file from url: %@", buf, 0xCu);
  }

  if (v5)
  {
    v7 = [MEMORY[0x277CCAD30] sharedSession];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke;
    v17[3] = &unk_278782910;
    v18 = v5;
    v19 = self;
    v20 = v4;
    v8 = [v7 downloadTaskWithURL:v18 completionHandler:v17];
    downloadTask = self->_downloadTask;
    self->_downloadTask = v8;

    [(NSURLSessionDownloadTask *)self->_downloadTask resume];
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(NTKGreenfieldDownloader *)self downloadWithCompletionBlock:v10, v11, v12, v13, v14, v15, v16];
    }

    v7 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:10];
    (*(v4 + 2))(v4, 0, v7);
  }
}

void __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = dispatch_get_global_queue(0, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_2;
  v17[3] = &unk_2787828E8;
  v18 = v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v19 = v11;
  v20 = v12;
  v22 = v7;
  v23 = v13;
  v21 = v8;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  dispatch_async(v10, v17);
}

void __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_15;
    block[3] = &unk_27877DC88;
    block[4] = *(a1 + 48);
    v21 = *(a1 + 32);
    v22 = *(a1 + 72);
    dispatch_async(MEMORY[0x277D85CD0], block);

    v9 = v21;
  }

  else
  {
    v10 = (a1 + 56);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [*v10 statusCode] != 200)
    {
      v13 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_2_cold_2(a1, (a1 + 56));
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_18;
      v18[3] = &unk_27877E960;
      v19 = *(a1 + 72);
      dispatch_async(MEMORY[0x277D85CD0], v18);
      v9 = v19;
    }

    else if ([*(a1 + 48) _copyFileFromURL:*(a1 + 64)])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_2_20;
      v14[3] = &unk_27877E570;
      v11 = *(a1 + 72);
      v14[4] = *(a1 + 48);
      v15 = v11;
      dispatch_async(MEMORY[0x277D85CD0], v14);
      v9 = v15;
    }

    else
    {
      v12 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_2_cold_3(v12);
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_19;
      v16[3] = &unk_27877E960;
      v17 = *(a1 + 72);
      dispatch_async(MEMORY[0x277D85CD0], v16);
      v9 = v17;
    }
  }
}

void __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_15(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:{objc_msgSend(*(a1 + 32), "_greenfieldErrorFromURLSessionError:", objc_msgSend(*(a1 + 40), "code"))}];
  (*(*(a1 + 48) + 16))();
}

void __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_18(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:4];
  (*(*(a1 + 32) + 16))();
}

void __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_19(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:4];
  (*(*(a1 + 32) + 16))();
}

void __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_2_20(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 24) path];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)cancelDownload
{
  downloadTask = self->_downloadTask;
  if (downloadTask)
  {
    [(NSURLSessionDownloadTask *)downloadTask cancel];
    v4 = self->_downloadTask;
    self->_downloadTask = 0;
  }
}

- (void)downloadCleanUp
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NTKGreenfieldDownloader_downloadCleanUp__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(v3, block);
}

void __42__NTKGreenfieldDownloader_downloadCleanUp__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 _downloadedFolderURL];
  v6 = [v5 path];
  v7 = [v2 removeItemAtPath:v6 error:0];

  if ((v7 & 1) == 0)
  {
    v8 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __42__NTKGreenfieldDownloader_downloadCleanUp__block_invoke_cold_1(v3);
    }
  }

  v9 = *(*v3 + 2);
  *(*v3 + 2) = 0;
}

- (int64_t)_greenfieldErrorFromURLSessionError:(int64_t)a3
{
  if ((a3 + 1010) >= 0xB)
  {
    return 4;
  }

  else
  {
    return 10;
  }
}

- (BOOL)_copyFileFromURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(NTKGreenfieldDownloader *)self _downloadedFolderURL];
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0];

  if ((v7 & 1) == 0)
  {
    v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NTKGreenfieldDownloader _copyFileFromURL:?];
    }

    goto LABEL_11;
  }

  if (([v5 copyItemAtURL:v4 toURL:self->_downloadedFileURL error:0] & 1) == 0)
  {
    v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NTKGreenfieldDownloader _copyFileFromURL:];
    }

    goto LABEL_11;
  }

  if (([v5 removeItemAtURL:v4 error:0] & 1) == 0)
  {
    v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NTKGreenfieldDownloader _copyFileFromURL:];
    }

LABEL_11:

    v8 = 0;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

void __55__NTKGreenfieldDownloader_downloadWithCompletionBlock___block_invoke_2_cold_2(uint64_t a1, id *a2)
{
  [*a2 statusCode];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __42__NTKGreenfieldDownloader_downloadCleanUp__block_invoke_cold_1(id *a1)
{
  v1 = [*a1 _downloadedFolderURL];
  v2 = [v1 path];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_copyFileFromURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 _downloadedFolderURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_copyFileFromURL:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_22D9C5000, v1, OS_LOG_TYPE_ERROR, "File IO Error copying: %@ to %@", v2, 0x16u);
}

@end