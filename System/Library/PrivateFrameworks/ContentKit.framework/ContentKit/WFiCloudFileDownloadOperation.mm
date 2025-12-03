@interface WFiCloudFileDownloadOperation
- (WFiCloudFileDownloadOperation)initWithFileURL:(id)l retrieveFolderContents:(BOOL)contents progress:(id)progress;
- (void)downloadDirectoryAtURL:(id)l completionHandler:(id)handler;
- (void)downloadItemAtFileURL:(id)l ofSize:(id)size fileIsUbiquitous:(BOOL)ubiquitous completionHandler:(id)handler;
- (void)finishRunningWithFiles:(id)files error:(id)error;
- (void)getFileInfoForURL:(id)l fileIsUbiquitous:(BOOL *)ubiquitous fileIsDirectory:(BOOL *)directory fileSize:(id *)size error:(id *)error;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation WFiCloudFileDownloadOperation

- (void)setFinished:(BOOL)finished
{
  [(WFiCloudFileDownloadOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = finished;

  [(WFiCloudFileDownloadOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)setExecuting:(BOOL)executing
{
  [(WFiCloudFileDownloadOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_executing = executing;

  [(WFiCloudFileDownloadOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)finishRunningWithFiles:(id)files error:(id)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  filesCopy = files;
  errorCopy = error;
  if (!(filesCopy | errorCopy))
  {
    fileURL = [(WFiCloudFileDownloadOperation *)self fileURL];
    v15[0] = *MEMORY[0x277CBE930];
    v9 = v15[0];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = [fileURL resourceValuesForKeys:v10 error:0];
    errorCopy = [v11 objectForKey:v9];
  }

  downloadError = self->_downloadError;
  self->_downloadError = errorCopy;
  v13 = errorCopy;

  downloadedFiles = self->_downloadedFiles;
  self->_downloadedFiles = filesCopy;

  [(WFiCloudFileDownloadOperation *)self setExecuting:0];
  [(WFiCloudFileDownloadOperation *)self setFinished:1];
}

- (void)downloadDirectoryAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  wf_fileSize = [lCopy wf_fileSize];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__WFiCloudFileDownloadOperation_downloadDirectoryAtURL_completionHandler___block_invoke;
  v10[3] = &unk_278348570;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(WFiCloudFileDownloadOperation *)self downloadItemAtFileURL:lCopy ofSize:wf_fileSize fileIsUbiquitous:1 completionHandler:v10];
}

void __74__WFiCloudFileDownloadOperation_downloadDirectoryAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) fileURL];
  v4 = *MEMORY[0x277CBE838];
  v15[0] = *MEMORY[0x277CBE948];
  v15[1] = v4;
  v15[2] = *MEMORY[0x277CBE868];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v14 = 0;
  v6 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v5 options:0 error:&v14];
  v7 = v14;
  v8 = [v6 if_objectsPassingTest:&__block_literal_global_20];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__WFiCloudFileDownloadOperation_downloadDirectoryAtURL_completionHandler___block_invoke_21;
  v12[3] = &unk_2783458B8;
  v9 = *(a1 + 40);
  v13 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__WFiCloudFileDownloadOperation_downloadDirectoryAtURL_completionHandler___block_invoke_3;
  v10[3] = &unk_278349348;
  v10[4] = v13;
  v11 = v9;
  [v8 if_enumerateAsynchronously:v12 completionHandler:v10];
}

void __74__WFiCloudFileDownloadOperation_downloadDirectoryAtURL_completionHandler___block_invoke_21(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v17[0] = *MEMORY[0x277CBE838];
  v7 = v17[0];
  v8 = MEMORY[0x277CBEA60];
  v9 = a2;
  v10 = [v8 arrayWithObjects:v17 count:1];
  v11 = [v9 resourceValuesForKeys:v10 error:0];
  v12 = [v11 objectForKey:v7];

  v13 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__WFiCloudFileDownloadOperation_downloadDirectoryAtURL_completionHandler___block_invoke_2_22;
  v15[3] = &unk_278349F78;
  v16 = v6;
  v14 = v6;
  [v13 downloadItemAtFileURL:v9 ofSize:v12 fileIsUbiquitous:1 completionHandler:v15];
}

void __74__WFiCloudFileDownloadOperation_downloadDirectoryAtURL_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [*(a1 + 32) fileURL];
  v8 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:0];
  v9 = [v8 if_compactMap:&__block_literal_global_25];

  (*(*(a1 + 40) + 16))();
}

uint64_t __74__WFiCloudFileDownloadOperation_downloadDirectoryAtURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v23[0] = *MEMORY[0x277CBE948];
  v3 = v23[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v17 = 0;
  v5 = [v2 resourceValuesForKeys:v4 error:&v17];
  v6 = v17;
  v7 = [v5 objectForKey:v3];

  if (v7)
  {
    v18 = *MEMORY[0x277CBE868];
    v8 = v18;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v16 = v6;
    v10 = [v2 resourceValuesForKeys:v9 error:&v16];
    v11 = v16;

    v12 = [v10 objectForKey:v8];
    LOBYTE(v8) = [v12 BOOLValue];

    v13 = (v8 | [v7 isEqualToString:*MEMORY[0x277CBE938]]) ^ 1;
    v6 = v11;
  }

  else
  {
    v14 = getWFFilesLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFiCloudFileDownloadOperation downloadDirectoryAtURL:completionHandler:]_block_invoke_2";
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_ERROR, "%s Could not get download status with error: %@", buf, 0x16u);
    }

    v13 = 1;
  }

  return v13 & 1;
}

- (void)downloadItemAtFileURL:(id)l ofSize:(id)size fileIsUbiquitous:(BOOL)ubiquitous completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  handlerCopy = handler;
  lCopy = l;
  progress = [(WFiCloudFileDownloadOperation *)self progress];
  [progress setTotalUnitCount:{objc_msgSend(progress, "totalUnitCount") + objc_msgSend(sizeCopy, "longLongValue")}];

  v13 = [MEMORY[0x277CCA9E0] readingIntentWithURL:lCopy options:0];

  fileCoordinator = [(WFiCloudFileDownloadOperation *)self fileCoordinator];
  v25[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v16 = objc_opt_new();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__WFiCloudFileDownloadOperation_downloadItemAtFileURL_ofSize_fileIsUbiquitous_completionHandler___block_invoke;
  v20[3] = &unk_278345870;
  v21 = v13;
  selfCopy = self;
  v23 = sizeCopy;
  v24 = handlerCopy;
  v17 = sizeCopy;
  v18 = handlerCopy;
  v19 = v13;
  [fileCoordinator coordinateAccessWithIntents:v15 queue:v16 byAccessor:v20];
}

void __97__WFiCloudFileDownloadOperation_downloadItemAtFileURL_ofSize_fileIsUbiquitous_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) URL];
  v4 = v3;
  if (v7 || !v3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = [*(a1 + 40) progress];
    [v5 setCompletedUnitCount:{objc_msgSend(v5, "completedUnitCount") + objc_msgSend(*(a1 + 48), "longLongValue")}];

    v6 = [WFFileRepresentation fileWithURL:v4 options:0];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)getFileInfoForURL:(id)l fileIsUbiquitous:(BOOL *)ubiquitous fileIsDirectory:(BOOL *)directory fileSize:(id *)size error:(id *)error
{
  lCopy = l;
  fileCoordinator = [(WFiCloudFileDownloadOperation *)self fileCoordinator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__WFiCloudFileDownloadOperation_getFileInfoForURL_fileIsUbiquitous_fileIsDirectory_fileSize_error___block_invoke;
  v14[3] = &__block_descriptor_64_e15_v16__0__NSURL_8l;
  v14[4] = error;
  v14[5] = ubiquitous;
  v14[6] = directory;
  v14[7] = size;
  [fileCoordinator coordinateReadingItemAtURL:lCopy options:4 error:error byAccessor:v14];
}

void __99__WFiCloudFileDownloadOperation_getFileInfoForURL_fileIsUbiquitous_fileIsDirectory_fileSize_error___block_invoke(uint64_t a1, void *a2)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = *MEMORY[0x277CBE868];
  v17[0] = *MEMORY[0x277CBE8B8];
  v4 = v17[0];
  v17[1] = v5;
  v6 = *MEMORY[0x277CBE890];
  v17[2] = *MEMORY[0x277CBE890];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v8 = [v3 promisedItemResourceValuesForKeys:v7 error:*(a1 + 32)];

  v9 = [v8 objectForKey:v4];
  **(a1 + 40) = [v9 BOOLValue];

  v10 = [v8 objectForKey:v5];
  if ([v10 BOOLValue])
  {
    v11 = [v8 objectForKey:v6];
    v12 = [v11 BOOLValue] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  **(a1 + 48) = v12;
  if (v8 && (v12 & 1) == 0)
  {
    v16 = *MEMORY[0x277CBE838];
    v13 = v16;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v15 = [v3 promisedItemResourceValuesForKeys:v14 error:0];
    **(a1 + 56) = [v15 objectForKey:v13];
  }
}

- (void)start
{
  [(WFiCloudFileDownloadOperation *)self setExecuting:1];
  v17 = 0;
  fileURL = [(WFiCloudFileDownloadOperation *)self fileURL];
  v16 = 0;
  v15 = 0;
  [(WFiCloudFileDownloadOperation *)self getFileInfoForURL:fileURL fileIsUbiquitous:&v17 + 1 fileIsDirectory:&v17 fileSize:&v16 error:&v15];
  v4 = v16;
  v5 = v15;

  if (!v5)
  {
    v6 = v17;
    if (HIBYTE(v17) == 1 && (v17 & 1) != 0)
    {
      if ([(WFiCloudFileDownloadOperation *)self retrieveFolderContents])
      {
        fileURL2 = [(WFiCloudFileDownloadOperation *)self fileURL];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __38__WFiCloudFileDownloadOperation_start__block_invoke;
        v14[3] = &unk_2783496F0;
        v14[4] = self;
        [(WFiCloudFileDownloadOperation *)self downloadDirectoryAtURL:fileURL2 completionHandler:v14];
        goto LABEL_12;
      }

      v6 = v17;
    }

    if ((v6 & 1) != 0 && [(WFiCloudFileDownloadOperation *)self retrieveFolderContents])
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      fileURL3 = [(WFiCloudFileDownloadOperation *)self fileURL];
      v13 = 0;
      v10 = [defaultManager contentsOfDirectoryAtURL:fileURL3 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v13];
      v5 = v13;
      v11 = [v10 if_compactMap:&__block_literal_global_4419];

      [(WFiCloudFileDownloadOperation *)self finishRunningWithFiles:v11 error:v5];
      goto LABEL_13;
    }

    fileURL2 = [(WFiCloudFileDownloadOperation *)self fileURL];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__WFiCloudFileDownloadOperation_start__block_invoke_3;
    v12[3] = &unk_278345828;
    v12[4] = self;
    [(WFiCloudFileDownloadOperation *)self downloadItemAtFileURL:fileURL2 ofSize:v4 fileIsUbiquitous:HIBYTE(v17) completionHandler:v12];
LABEL_12:

    v5 = 0;
    goto LABEL_13;
  }

  [(WFiCloudFileDownloadOperation *)self finishRunningWithFiles:0 error:v5];
LABEL_13:
}

void __38__WFiCloudFileDownloadOperation_start__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v9 = a2;
    v5 = MEMORY[0x277CBEA60];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:&v9 count:1];
    [v3 finishRunningWithFiles:v8 error:{v6, v9, v10}];
  }

  else
  {
    v7 = a3;
    [v3 finishRunningWithFiles:0 error:v7];
    v8 = 0;
  }
}

- (WFiCloudFileDownloadOperation)initWithFileURL:(id)l retrieveFolderContents:(BOOL)contents progress:(id)progress
{
  lCopy = l;
  progressCopy = progress;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFiCloudFileDownloadOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];
  }

  v19.receiver = self;
  v19.super_class = WFiCloudFileDownloadOperation;
  v12 = [(WFiCloudFileDownloadOperation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileURL, l);
    v14 = objc_opt_new();
    fileCoordinator = v13->_fileCoordinator;
    v13->_fileCoordinator = v14;

    objc_storeStrong(&v13->_progress, progress);
    v13->_retrieveFolderContents = contents;
    v16 = v13;
  }

  return v13;
}

@end