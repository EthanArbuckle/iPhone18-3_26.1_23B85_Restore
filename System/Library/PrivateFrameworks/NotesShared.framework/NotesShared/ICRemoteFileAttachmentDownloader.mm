@interface ICRemoteFileAttachmentDownloader
+ (BOOL)needsToDownloadRemoteFileAttachments;
+ (id)allUndownloadedLegacyAttachmentsInContext:(id)context;
+ (id)sharedDownloader;
+ (void)initializeDownloaderAfterDelayIfNecessary;
+ (void)releaseSharedDownloaderIfPossible;
- (ICRemoteFileAttachmentDownloader)init;
- (void)dealloc;
- (void)downloadRemoteFileForAttachment:(id)attachment;
- (void)downloadRemoteFileForAttachmentObjectID:(id)d;
- (void)downloadUndownloadedLegacyAttachments;
- (void)reachabilityChanged:(id)changed;
- (void)resumeDownloadsAfterDelay;
@end

@implementation ICRemoteFileAttachmentDownloader

+ (void)initializeDownloaderAfterDelayIfNecessary
{
  appLifeCycleHandler = [MEMORY[0x277D361D8] appLifeCycleHandler];
  [appLifeCycleHandler cancelBlocksWithStringIdentifier:@"ICRemoteFileAttachmentDownloaderDispatchAfterIdentifier"];

  appLifeCycleHandler2 = [MEMORY[0x277D361D8] appLifeCycleHandler];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__ICRemoteFileAttachmentDownloader_initializeDownloaderAfterDelayIfNecessary__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = self;
  [appLifeCycleHandler2 dispatchAfter:@"ICRemoteFileAttachmentDownloaderDispatchAfterIdentifier" stringIdentifier:v5 withBlock:5.0];
}

+ (id)sharedDownloader
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sSharedDownloader;
  if (!sSharedDownloader)
  {
    v4 = objc_alloc_init(ICRemoteFileAttachmentDownloader);
    v5 = sSharedDownloader;
    sSharedDownloader = v4;

    v3 = sSharedDownloader;
  }

  v6 = v3;
  objc_sync_exit(selfCopy);

  return v6;
}

void __77__ICRemoteFileAttachmentDownloader_initializeDownloaderAfterDelayIfNecessary__block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ICRemoteFileAttachmentDownloader_initializeDownloaderAfterDelayIfNecessary__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

id __77__ICRemoteFileAttachmentDownloader_initializeDownloaderAfterDelayIfNecessary__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) needsToDownloadRemoteFileAttachments];
  if (result)
  {
    return [*(a1 + 32) sharedDownloader];
  }

  return result;
}

+ (void)releaseSharedDownloaderIfPossible
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sSharedDownloader)
  {
    operationQueue = [sSharedDownloader operationQueue];
    if ([operationQueue operationCount])
    {
    }

    else
    {
      needsToDownloadRemoteFileAttachments = [selfCopy needsToDownloadRemoteFileAttachments];

      if ((needsToDownloadRemoteFileAttachments & 1) == 0)
      {
        v5 = os_log_create("com.apple.notes", "Media");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          +[ICRemoteFileAttachmentDownloader releaseSharedDownloaderIfPossible];
        }

        v6 = sSharedDownloader;
        sSharedDownloader = 0;
      }
    }
  }

  objc_sync_exit(selfCopy);
}

+ (BOOL)needsToDownloadRemoteFileAttachments
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v3 workerManagedObjectContext];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ICRemoteFileAttachmentDownloader_needsToDownloadRemoteFileAttachments__block_invoke;
  v7[3] = &unk_278196870;
  selfCopy = self;
  v5 = workerManagedObjectContext;
  v8 = v5;
  v9 = &v11;
  [v5 performBlockAndWait:v7];
  LOBYTE(workerManagedObjectContext) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return workerManagedObjectContext;
}

void __72__ICRemoteFileAttachmentDownloader_needsToDownloadRemoteFileAttachments__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) allUndownloadedLegacyAttachmentsInContext:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

+ (id)allUndownloadedLegacyAttachmentsInContext:(id)context
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v5 = [v3 predicateWithFormat:@"%K != nil", @"remoteFileURLString"];
  v11[0] = v5;
  v6 = [(ICBaseAttachment *)ICAttachment predicateForVisibleAttachmentsInContext:contextCopy];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v8 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  v9 = [(ICBaseAttachment *)ICAttachment attachmentsMatchingPredicate:v8 context:contextCopy];

  return v9;
}

- (ICRemoteFileAttachmentDownloader)init
{
  v12.receiver = self;
  v12.super_class = ICRemoteFileAttachmentDownloader;
  v2 = [(ICRemoteFileAttachmentDownloader *)&v12 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ICRemoteFileAttachmentDownloader init];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ICRemoteFileAttachmentDownloader *)v2 setOperationsByAttachmentIdentifier:dictionary];

    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(ICRemoteFileAttachmentDownloader *)v2 setOperationQueue:v5];

    operationQueue = [(ICRemoteFileAttachmentDownloader *)v2 operationQueue];
    [operationQueue setMaxConcurrentOperationCount:2];

    operationQueue2 = [(ICRemoteFileAttachmentDownloader *)v2 operationQueue];
    [operationQueue2 setName:@"RemoteFileAttachmentDownloader"];

    [(ICRemoteFileAttachmentDownloader *)v2 resumeDownloadsAfterDelay];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277D36350];
    mEMORY[0x277D36240] = [MEMORY[0x277D36240] sharedReachabilityForInternetConnection];
    [defaultCenter addObserver:v2 selector:sel_reachabilityChanged_ name:v9 object:mEMORY[0x277D36240]];
  }

  return v2;
}

- (void)dealloc
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __43__ICRemoteFileAttachmentDownloader_dealloc__block_invoke;
  v8 = &unk_278194B00;
  selfCopy = self;
  performBlockOnMainThreadAndWait();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICRemoteFileAttachmentDownloader;
  [(ICRemoteFileAttachmentDownloader *)&v4 dealloc];
}

- (void)resumeDownloadsAfterDelay
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ICRemoteFileAttachmentDownloader_resumeDownloadsAfterDelay__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __61__ICRemoteFileAttachmentDownloader_resumeDownloadsAfterDelay__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_downloadUndownloadedLegacyAttachments object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel_downloadUndownloadedLegacyAttachments withObject:0 afterDelay:5.0];
}

- (void)downloadUndownloadedLegacyAttachments
{
  v3 = +[ICNoteContext sharedContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__ICRemoteFileAttachmentDownloader_downloadUndownloadedLegacyAttachments__block_invoke;
  v4[3] = &unk_278197430;
  v4[4] = self;
  [v3 performBackgroundTask:v4];
}

void __73__ICRemoteFileAttachmentDownloader_downloadUndownloadedLegacyAttachments__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() allUndownloadedLegacyAttachmentsInContext:v3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) downloadRemoteFileForAttachment:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [objc_opt_class() releaseSharedDownloaderIfPossible];
}

- (void)downloadRemoteFileForAttachment:(id)attachment
{
  objectID = [attachment objectID];
  [(ICRemoteFileAttachmentDownloader *)self downloadRemoteFileForAttachmentObjectID:objectID];
}

- (void)downloadRemoteFileForAttachmentObjectID:(id)d
{
  dCopy = d;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__51;
  v35 = __Block_byref_object_dispose__51;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__51;
  v29 = __Block_byref_object_dispose__51;
  v30 = 0;
  v5 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v5 workerManagedObjectContext];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke;
  v19[3] = &unk_278199818;
  v7 = dCopy;
  v20 = v7;
  v8 = workerManagedObjectContext;
  v21 = v8;
  selfCopy = self;
  v23 = &v25;
  v24 = &v31;
  [v8 performBlockAndWait:v19];
  if (v26[5])
  {
    v9 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICRemoteFileAttachmentDownloader downloadRemoteFileForAttachmentObjectID:];
    }

    v10 = MEMORY[0x277CCA8C8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32;
    v14[3] = &unk_278199890;
    v17 = &v25;
    v18 = &v31;
    v15 = v7;
    selfCopy2 = self;
    v11 = [v10 blockOperationWithBlock:v14];
    operationsByAttachmentIdentifier = [(ICRemoteFileAttachmentDownloader *)self operationsByAttachmentIdentifier];
    [operationsByAttachmentIdentifier setObject:v11 forKeyedSubscript:v32[5]];

    operationQueue = [(ICRemoteFileAttachmentDownloader *)self operationQueue];
    [operationQueue addOperation:v11];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke(uint64_t a1)
{
  v12 = [ICAttachment ic_existingObjectWithID:*(a1 + 32) context:*(a1 + 40)];
  if (([v12 isDeleted] & 1) == 0 && (objc_msgSend(v12, "isSharedViaICloud") & 1) == 0)
  {
    if ([v12 isVisible])
    {
      v2 = [v12 remoteFileURL];

      if (v2)
      {
        v3 = [*(a1 + 48) operationsByAttachmentIdentifier];
        v4 = [v12 identifier];
        v5 = [v3 objectForKeyedSubscript:v4];

        if (!v5 || [v5 isFinished])
        {
          v6 = [v12 remoteFileURL];
          v7 = *(*(a1 + 56) + 8);
          v8 = *(v7 + 40);
          *(v7 + 40) = v6;

          v9 = [v12 identifier];
          v10 = *(*(a1 + 64) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;
        }
      }
    }
  }
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__51;
  v43 = __Block_byref_object_dispose__51;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__51;
  v37 = __Block_byref_object_dispose__51;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = [MEMORY[0x277CCAD30] sharedSession];
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_2;
  v26[3] = &unk_278199840;
  v28 = v31;
  v29 = &v33;
  v30 = &v39;
  v5 = v2;
  v27 = v5;
  v6 = [v3 dataTaskWithURL:v4 completionHandler:v26];

  [v6 resume];
  v7 = dispatch_time(0, 20000000000);
  dispatch_semaphore_wait(v5, v7);
  v8 = v40[5];
  if (!v8)
  {
    goto LABEL_8;
  }

  if ([v8 code] == -1009)
  {
    v9 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32_cold_2();
    }

    goto LABEL_14;
  }

  if (v40[5])
  {
    v9 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32_cold_1();
    }
  }

  else
  {
LABEL_8:
    v10 = v34[5];
    v11 = os_log_create("com.apple.notes", "Media");
    v9 = v11;
    if (v10)
    {
      v9 = v11;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32_cold_3(*(*(*(a1 + 56) + 8) + 40), [v34[5] length], buf, v9);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32_cold_4();
    }
  }

LABEL_14:

  v12 = +[ICNoteContext sharedContext];
  v13 = [v12 workerManagedObjectContext];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_36;
  v18[3] = &unk_278199868;
  v19 = *(a1 + 32);
  v14 = v13;
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v20 = v14;
  v21 = v15;
  v22 = &v33;
  v23 = v16;
  v24 = v31;
  v25 = &v39;
  [v14 performBlockAndWait:v18];
  v17 = [*(a1 + 40) operationsByAttachmentIdentifier];
  [v17 removeObjectForKey:*(*(*(a1 + 56) + 8) + 40)];

  [objc_opt_class() releaseSharedDownloaderIfPossible];
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 statusCode] != 200)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
  v12 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_36(void *a1)
{
  v2 = [ICAttachment ic_existingObjectWithID:a1[4] context:a1[5]];
  v3 = v2;
  if (!v2 || ([v2 isVisible] & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_36_cold_2();
    }

    goto LABEL_9;
  }

  v4 = [v3 media];

  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_36_cold_1(v3, v5);
    }

LABEL_9:
    goto LABEL_10;
  }

  v10 = *(*(a1[7] + 8) + 40);
  if (v10)
  {
    v11 = [*(*(a1[8] + 8) + 40) lastPathComponent];
    v12 = [ICMedia newMediaWithAttachment:v3 forData:v10 filename:v11 error:0];
    [v3 setMedia:v12];

    [v3 setRemoteFileURL:0];
    v13 = [v3 attachmentModel];
    [v13 updateFileBasedAttributes];

    v14 = @"Downloaded remote file";
LABEL_21:
    [v3 updateChangeCountWithReason:v14];
    goto LABEL_10;
  }

  if ((*(*(a1[9] + 8) + 24) & 1) != 0 || (v15 = *(*(a1[10] + 8) + 40)) != 0 && [v15 code] != -1009)
  {
    [v3 setRemoteFileURL:0];
    v14 = @"Failed downloading remote file";
    goto LABEL_21;
  }

LABEL_10:
  v6 = a1[5];
  v16 = 0;
  v7 = [v6 save:&v16];
  v8 = v16;
  if ((v7 & 1) == 0)
  {
    v9 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_36_cold_3(v8, v9);
    }
  }
}

- (void)reachabilityChanged:(id)changed
{
  mEMORY[0x277D36240] = [MEMORY[0x277D36240] sharedReachabilityForInternetConnection];
  currentReachabilityStatus = [mEMORY[0x277D36240] currentReachabilityStatus];

  if ((currentReachabilityStatus - 1) <= 1)
  {

    [(ICRemoteFileAttachmentDownloader *)self resumeDownloadsAfterDelay];
  }
}

- (void)downloadRemoteFileForAttachmentObjectID:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32_cold_1()
{
  OUTLINED_FUNCTION_0_16(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_214D51000, v1, OS_LOG_TYPE_ERROR, "Error downloading remote URL for attachment (%@): %@", v2, 0x16u);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32_cold_2()
{
  OUTLINED_FUNCTION_0_16(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32_cold_3(uint64_t a1, unint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = vcvtd_n_f64_u64(a2, 0xAuLL);
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Downloaded remote URL for attachment (%@). Size=%.2fkb", buf, 0x16u);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_32_cold_4()
{
  OUTLINED_FUNCTION_0_16(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Unknown error downloading remote URL for attachment (%@)", v1, 0xCu);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_36_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Trying to set a media for a downloaded attachment (%@), but it already has a media.", &v4, 0xCu);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_36_cold_2()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__ICRemoteFileAttachmentDownloader_downloadRemoteFileForAttachmentObjectID___block_invoke_36_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error saving after downloading remote file attachment: %@", &v2, 0xCu);
}

@end