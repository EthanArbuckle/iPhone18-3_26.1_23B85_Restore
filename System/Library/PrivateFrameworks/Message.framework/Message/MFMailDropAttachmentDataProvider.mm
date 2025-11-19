@interface MFMailDropAttachmentDataProvider
+ (OS_os_log)log;
- (MFMailDropAttachmentDataProvider)initWithLibrary:(id)a3;
- (id)_defaultDownloadSessionForAttachment:(id)a3;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MFMailDropAttachmentDataProvider

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MFMailDropAttachmentDataProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_14 != -1)
  {
    dispatch_once(&log_onceToken_14, block);
  }

  v2 = log_log_14;

  return v2;
}

void __39__MFMailDropAttachmentDataProvider_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_14;
  log_log_14 = v1;
}

- (MFMailDropAttachmentDataProvider)initWithLibrary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFMailDropAttachmentDataProvider;
  v5 = [(MFAttachmentLibraryDataProvider *)&v9 initWithLibrary:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requests = v5->_requests;
    v5->_requests = v6;
  }

  return v5;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v54[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v40 = a5;
  v41 = a6;
  v12 = objc_alloc(MEMORY[0x1E69AD750]);
  v54[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v42 = [v12 initWithConsumers:v13 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __88__MFMailDropAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v48[3] = &unk_1E7AA4D60;
  v14 = v40;
  v49 = v14;
  [v42 setProgressBlock:v48];
  if ([v10 isDataAvailableLocally])
  {
    v15 = MEMORY[0x1E695DEF0];
    v16 = [v10 path];
    v47 = 0;
    v17 = [v15 dataWithContentsOfFile:v16 options:1 error:&v47];
    v18 = v47;

    v19 = v17 != 0;
    if (v17)
    {
      [v42 appendData:v17];
      v20 = 0;
      v19 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v21 = [v10 mailDropMetadata];
    v17 = [v21 directUrl];

    if (v17)
    {
      v38 = [(MFMailDropAttachmentDataProvider *)self _defaultDownloadSessionForAttachment:v10];
      v22 = +[MFMailDropAttachmentDataProvider log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v51 = v10;
        v52 = 2112;
        v53 = v38;
        _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Downloading Mail Drop attachment: %@ using URL session: %@", buf, 0x16u);
      }

      v36 = [MEMORY[0x1E699B868] promise];
      [v10 setMetadataValue:? forKey:?];
      [v10 setMetadataValue:v42 forKey:@"primaryConsumer"];
      v23 = [v10 mailDropMetadata];
      v39 = [v23 UUID];

      v24 = [[_MFAttachmentActiveRequest alloc] initWithAttachment:v10];
      v25 = self->_requests;
      objc_sync_enter(v25);
      v37 = v24;
      [(NSMutableDictionary *)self->_requests setObject:v24 forKeyedSubscript:v39];
      objc_sync_exit(v25);

      v26 = [(_MFAttachmentActiveRequest *)v24 downloadProgress];
      [v14 addChild:v26 withPendingUnitCount:{objc_msgSend(v14, "totalUnitCount")}];

      v35 = [v38 downloadTaskWithURL:v17];
      [v35 setTaskDescription:v39];
      objc_initWeak(buf, v10);
      v27 = +[MFActivityMonitor currentMonitor];
      v28 = MEMORY[0x1E699B7F8];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __88__MFMailDropAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke_21;
      v44[3] = &unk_1E7AA52F0;
      objc_copyWeak(&v46, buf);
      v29 = v35;
      v45 = v29;
      v30 = [v28 tokenWithCancelationBlock:v44];
      [v27 addCancelable:v30];

      [v29 resume];
      v31 = [v36 future];
      v43 = 0;
      v32 = [v31 result:&v43];
      v18 = v43;
      v20 = [v32 BOOLValue];

      [v10 setMetadataValue:0 forKey:@"downloadPromise"];
      [v10 setMetadataValue:0 forKey:@"primaryConsumer"];
      v33 = self->_requests;
      objc_sync_enter(v33);
      [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:v39];
      objc_sync_exit(v33);

      objc_destroyWeak(&v46);
      objc_destroyWeak(buf);

      v19 = v20;
    }

    else
    {
      v18 = 0;
      v20 = 0;
      v19 = 0;
    }
  }

  [v42 done];
  [v11 done];
  v41[2](v41, v19, v18, v20);

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __88__MFMailDropAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

void __88__MFMailDropAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke_21(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[MFMailDropAttachmentDataProvider log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Canceling download for Mail Drop attachment %@", &v5, 0xCu);
  }

  [*(a1 + 32) cancel];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)_defaultDownloadSessionForAttachment:(id)a3
{
  v4 = [a3 mailDropMetadata];
  v5 = [v4 fileSize];

  if (v5 >> 22 > 0x18)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__MFMailDropAttachmentDataProvider__defaultDownloadSessionForAttachment___block_invoke_2;
    v9[3] = &unk_1E7AA25C0;
    v9[4] = self;
    if (_defaultDownloadSessionForAttachment__wifiOnlySessionOnceToken != -1)
    {
      dispatch_once(&_defaultDownloadSessionForAttachment__wifiOnlySessionOnceToken, v9);
    }

    v6 = &_defaultDownloadSessionForAttachment__wifiOnlySession;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MFMailDropAttachmentDataProvider__defaultDownloadSessionForAttachment___block_invoke;
    block[3] = &unk_1E7AA25C0;
    block[4] = self;
    if (_defaultDownloadSessionForAttachment__defaultSessionOnceToken != -1)
    {
      dispatch_once(&_defaultDownloadSessionForAttachment__defaultSessionOnceToken, block);
    }

    v6 = &_defaultDownloadSessionForAttachment__defaultSession;
  }

  v7 = *v6;

  return v7;
}

void __73__MFMailDropAttachmentDataProvider__defaultDownloadSessionForAttachment___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695AC78];
  v3 = downloadConfiguration(@"com.apple.mobilemail.MailDropDownload", 1);
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v2 sessionWithConfiguration:? delegate:? delegateQueue:?];
  v6 = _defaultDownloadSessionForAttachment__defaultSession;
  _defaultDownloadSessionForAttachment__defaultSession = v5;
}

void __73__MFMailDropAttachmentDataProvider__defaultDownloadSessionForAttachment___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695AC78];
  v3 = downloadConfiguration(@"com.apple.mobilemail.MailDropDownloadWIFIOnly", 0);
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v2 sessionWithConfiguration:? delegate:? delegateQueue:?];
  v6 = _defaultDownloadSessionForAttachment__wifiOnlySession;
  _defaultDownloadSessionForAttachment__wifiOnlySession = v5;
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v15 = a4;
  v7 = a5;
  v8 = self->_requests;
  objc_sync_enter(v8);
  requests = self->_requests;
  v10 = [v15 taskDescription];
  v11 = [(NSMutableDictionary *)requests objectForKeyedSubscript:v10];

  objc_sync_exit(v8);
  v12 = [v11 attachment];
  v13 = [v12 metadataValueForKey:@"downloadPromise"];

  if (v7)
  {
    [v13 finishWithError:v7];
  }

  else
  {
    v14 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:0];
    [v13 finishWithError:v14];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v19 = a4;
  v7 = a5;
  v8 = self->_requests;
  objc_sync_enter(v8);
  requests = self->_requests;
  v10 = [v19 taskDescription];
  v11 = [(NSMutableDictionary *)requests objectForKeyedSubscript:v10];

  objc_sync_exit(v8);
  v12 = [v11 attachment];
  v13 = [v12 metadataValueForKey:@"primaryConsumer"];
  v14 = MEMORY[0x1E695DEF0];
  v15 = [v7 resourceSpecifier];
  v16 = [v14 dataWithContentsOfFile:v15 options:1 error:0];

  if (v16)
  {
    [v13 appendData:v16];
  }

  v17 = [v12 metadataValueForKey:@"downloadPromise"];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:v16 != 0];
  [v17 finishWithResult:v18];
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v14 = a4;
  v9 = self->_requests;
  objc_sync_enter(v9);
  requests = self->_requests;
  v11 = [v14 taskDescription];
  v12 = [(NSMutableDictionary *)requests objectForKeyedSubscript:v11];

  objc_sync_exit(v9);
  v13 = [v12 downloadProgress];
  [v13 setCompletedUnitCount:a6];
}

@end