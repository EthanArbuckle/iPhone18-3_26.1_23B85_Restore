@interface GKSavedGameDocument
- (GKSavedGameDocument)initWithFileURL:(id)l;
- (NSOperationQueue)presentedItemOperationQueue;
- (NSString)description;
- (id)metadata;
- (void)dealloc;
- (void)deleteAllVersionsIncludingCurrent:(BOOL)current withCompletionHandler:(id)handler;
- (void)deleteConflictVersion:(id)version completionHandler:(id)handler;
- (void)loadMetadataWithCompletionHandler:(id)handler;
- (void)loadWrapperDataWithFilename:(id)filename completionHandler:(id)handler;
- (void)presentedItemDidChange;
- (void)presentedItemDidGainVersion:(id)version;
- (void)presentedItemDidLoseVersion:(id)version;
- (void)presentedItemDidResolveConflictVersion:(id)version;
- (void)saveData:(id)data completionHandler:(id)handler;
- (void)setIsConflictVersion:(BOOL)version;
- (void)setMetadata:(id)metadata;
- (void)updateConflictStateWithCompletionHandler:(id)handler;
- (void)updateMetadata;
@end

@implementation GKSavedGameDocument

- (GKSavedGameDocument)initWithFileURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = GKSavedGameDocument;
  v5 = [(GKSavedGameDocument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKSavedGameDocument *)v5 setFileURL:lCopy];
    [MEMORY[0x277CCA9E8] addFilePresenter:v6];
  }

  return v6;
}

- (void)dealloc
{
  [MEMORY[0x277CCA9E8] removeFilePresenter:self];
  v3.receiver = self;
  v3.super_class = GKSavedGameDocument;
  [(GKSavedGameDocument *)&v3 dealloc];
}

- (void)setIsConflictVersion:(BOOL)version
{
  if (self->_isConflictVersion != version)
  {
    self->_isConflictVersion = version;
    if (version)
    {
      [MEMORY[0x277CCA9E8] removeFilePresenter:self];
    }

    else
    {
      [MEMORY[0x277CCA9E8] addFilePresenter:self];
    }
  }
}

- (NSOperationQueue)presentedItemOperationQueue
{
  if (presentedItemOperationQueue_sOnceToken != -1)
  {
    [GKSavedGameDocument presentedItemOperationQueue];
  }

  v3 = presentedItemOperationQueue_sQueue;

  return v3;
}

uint64_t __50__GKSavedGameDocument_presentedItemOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = presentedItemOperationQueue_sQueue;
  presentedItemOperationQueue_sQueue = v0;

  v2 = presentedItemOperationQueue_sQueue;

  return [v2 setMaxConcurrentOperationCount:1];
}

- (void)presentedItemDidChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__GKSavedGameDocument_presentedItemDidChange__block_invoke;
  v2[3] = &unk_2785DDA78;
  v2[4] = self;
  [(GKSavedGameDocument *)self loadMetadataWithCompletionHandler:v2];
}

void __45__GKSavedGameDocument_presentedItemDidChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"GKSavedGameDocumentModifiedNotification" object:*(a1 + 32)];
}

- (void)presentedItemDidGainVersion:(id)version
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GKSavedGameDocument_presentedItemDidGainVersion___block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__GKSavedGameDocument_presentedItemDidGainVersion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"GKSavedGameDocumentConflictStateChangedNotification" object:*(a1 + 32)];
}

- (void)presentedItemDidLoseVersion:(id)version
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GKSavedGameDocument_presentedItemDidLoseVersion___block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__GKSavedGameDocument_presentedItemDidLoseVersion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"GKSavedGameDocumentConflictStateChangedNotification" object:*(a1 + 32)];
}

- (void)presentedItemDidResolveConflictVersion:(id)version
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__GKSavedGameDocument_presentedItemDidResolveConflictVersion___block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__GKSavedGameDocument_presentedItemDidResolveConflictVersion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"GKSavedGameDocumentConflictStateChangedNotification" object:*(a1 + 32)];
}

- (void)updateConflictStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_group_create();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__4;
  v15[4] = __Block_byref_object_dispose__4;
  v16 = 0;
  dispatch_group_enter(v5);
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__GKSavedGameDocument_updateConflictStateWithCompletionHandler___block_invoke;
  block[3] = &unk_2785DE7B8;
  v13 = v5;
  v14 = v15;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__GKSavedGameDocument_updateConflictStateWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_2785DE7E0;
  v10 = handlerCopy;
  v11 = v15;
  v9[4] = self;
  v8 = handlerCopy;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], v9);

  _Block_object_dispose(v15, 8);
}

void __64__GKSavedGameDocument_updateConflictStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:*(a1 + 32)];
  v3 = [*(a1 + 32) fileURL];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__GKSavedGameDocument_updateConflictStateWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_2785DE790;
  v4[4] = *(a1 + 48);
  [v2 coordinateReadingItemAtURL:v3 options:0 error:0 byAccessor:v4];

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __64__GKSavedGameDocument_updateConflictStateWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCAA18] otherVersionsOfItemAtURL:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

uint64_t __64__GKSavedGameDocument_updateConflictStateWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setHasConflict:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count") != 0}];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)loadWrapperDataWithFilename:(id)filename completionHandler:(id)handler
{
  filenameCopy = filename;
  handlerCopy = handler;
  v8 = dispatch_group_create();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__4;
  v24[4] = __Block_byref_object_dispose__4;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__4;
  v22[4] = __Block_byref_object_dispose__4;
  v23 = 0;
  dispatch_group_enter(v8);
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__GKSavedGameDocument_loadWrapperDataWithFilename_completionHandler___block_invoke;
  block[3] = &unk_2785DE830;
  block[4] = self;
  v18 = filenameCopy;
  v20 = v22;
  v21 = v24;
  v19 = v8;
  v10 = v8;
  v11 = filenameCopy;
  dispatch_async(v9, block);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__GKSavedGameDocument_loadWrapperDataWithFilename_completionHandler___block_invoke_3;
  v13[3] = &unk_2785DE858;
  v14 = handlerCopy;
  v15 = v24;
  v16 = v22;
  v12 = handlerCopy;
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v13);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __69__GKSavedGameDocument_loadWrapperDataWithFilename_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:*(a1 + 32)];
  v3 = [*(a1 + 32) fileURL];
  v4 = *(a1 + 56);
  v5 = *(v4 + 8);
  v12 = *(v5 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__GKSavedGameDocument_loadWrapperDataWithFilename_completionHandler___block_invoke_2;
  v8[3] = &unk_2785DE808;
  v10 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v9 = v6;
  v11 = v7;
  [v2 coordinateReadingItemAtURL:v3 options:0 error:&v12 byAccessor:v8];
  objc_storeStrong((v5 + 40), v12);

  dispatch_group_leave(*(a1 + 48));
}

void __69__GKSavedGameDocument_loadWrapperDataWithFilename_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CCAA20]);
  v5 = *(a1[5] + 8);
  obj = *(v5 + 40);
  v6 = [v4 initWithURL:v3 options:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ([v6 isDirectory])
  {
    v7 = [v6 fileWrappers];
    v8 = [v7 objectForKey:a1[4]];

    if (!v8)
    {
      v9 = *(a1[5] + 8);
      v23 = *(v9 + 40);
      [v6 readFromURL:v3 options:1 error:&v23];
      objc_storeStrong((v9 + 40), v23);
      v10 = [v6 fileWrappers];
      v8 = [v10 objectForKey:a1[4]];
    }

    v11 = [v8 regularFileContents];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (!*(*(a1[6] + 8) + 40))
    {
      v14 = [v3 URLByAppendingPathComponent:a1[4]];
      v15 = *(a1[5] + 8);
      v22 = *(v15 + 40);
      [v8 readFromURL:v14 options:0 error:&v22];
      objc_storeStrong((v15 + 40), v22);

      v16 = [v8 regularFileContents];
      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      if (!*(*(a1[6] + 8) + 40) && !*(*(a1[5] + 8) + 40))
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
        v20 = *(a1[5] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;
      }
    }
  }
}

uint64_t __69__GKSavedGameDocument_loadWrapperDataWithFilename_completionHandler___block_invoke_3(void *a1)
{
  result = a1[4];
  if (result)
  {
    if (!*(*(a1[5] + 8) + 40) && !*(*(a1[6] + 8) + 40))
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
      v4 = *(a1[6] + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      result = a1[4];
      v6 = *(*(a1[5] + 8) + 40);
    }

    v7 = *(*(a1[6] + 8) + 40);
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)loadMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__GKSavedGameDocument_loadMetadataWithCompletionHandler___block_invoke;
  v6[3] = &unk_2785DD870;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(GKSavedGameDocument *)self loadWrapperDataWithFilename:@"metadata" completionHandler:v6];
}

void __57__GKSavedGameDocument_loadMetadataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v8)
  {
    [*(a1 + 32) setMetadata:?];
  }

  else if (!v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)updateMetadata
{
  v3 = +[GKSavedGameDocument currentDeviceName];
  [(GKSavedGameDocument *)self setDeviceName:v3];

  date = [MEMORY[0x277CBEAA8] date];
  [(GKSavedGameDocument *)self setModificationDate:date];
}

- (void)setMetadata:(id)metadata
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:metadata options:0 format:0 error:0];
  if (v4)
  {
    v7 = v4;
    v5 = [v4 objectForKey:@"deviceName"];
    if (v5)
    {
      [(GKSavedGameDocument *)self setDeviceName:v5];
    }

    v6 = [v7 objectForKey:@"modificationDate"];
    if (v6)
    {
      [(GKSavedGameDocument *)self setModificationDate:v6];
    }

    v4 = v7;
  }
}

- (id)metadata
{
  v10[2] = *MEMORY[0x277D85DE8];
  deviceName = self->_deviceName;
  if (!deviceName || (modificationDate = self->_modificationDate) == 0)
  {
    [(GKSavedGameDocument *)self updateMetadata];
    deviceName = self->_deviceName;
    modificationDate = self->_modificationDate;
  }

  v9[0] = @"deviceName";
  v9[1] = @"modificationDate";
  v10[0] = deviceName;
  v10[1] = modificationDate;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:0];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)saveData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  [(GKSavedGameDocument *)self updateMetadata];
  metadata = [(GKSavedGameDocument *)self metadata];
  v9 = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__GKSavedGameDocument_saveData_completionHandler___block_invoke;
  v13[3] = &unk_2785DD960;
  v13[4] = self;
  v14 = dataCopy;
  v15 = metadata;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = metadata;
  v12 = dataCopy;
  dispatch_async(v9, v13);
}

void __50__GKSavedGameDocument_saveData_completionHandler___block_invoke(id *a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:a1[4]];
  v3 = [a1[4] fileURL];
  v4 = (v14 + 5);
  obj = v14[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__GKSavedGameDocument_saveData_completionHandler___block_invoke_2;
  v8[3] = &unk_2785DE880;
  v9 = a1[5];
  v10 = a1[6];
  v11 = &v13;
  [v2 coordinateWritingItemAtURL:v3 options:8 error:&obj byAccessor:v8];
  objc_storeStrong(v4, obj);

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__GKSavedGameDocument_saveData_completionHandler___block_invoke_3;
  v5[3] = &unk_2785DE8A8;
  v6 = a1[7];
  v7 = &v13;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  _Block_object_dispose(&v13, 8);
}

void __50__GKSavedGameDocument_saveData_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAA20];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CBEAC0] dictionary];
  v7 = [v5 initDirectoryWithFileWrappers:v6];

  v8 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:a1[4]];
  [v8 setPreferredFilename:@"data"];
  v9 = [v7 addFileWrapper:v8];
  v10 = [objc_alloc(MEMORY[0x277CCAA20]) initRegularFileWithContents:a1[5]];
  [v10 setPreferredFilename:@"metadata"];
  v11 = [v7 addFileWrapper:v10];
  v12 = *(a1[6] + 8);
  obj = *(v12 + 40);
  [v7 writeToURL:v4 options:1 originalContentsURL:v4 error:&obj];

  objc_storeStrong((v12 + 40), obj);
}

uint64_t __50__GKSavedGameDocument_saveData_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)deleteAllVersionsIncludingCurrent:(BOOL)current withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__GKSavedGameDocument_deleteAllVersionsIncludingCurrent_withCompletionHandler___block_invoke;
  block[3] = &unk_2785DE8F8;
  currentCopy = current;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

void __79__GKSavedGameDocument_deleteAllVersionsIncludingCurrent_withCompletionHandler___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:*(a1 + 32)];
  v3 = [*(a1 + 32) fileURL];
  v4 = (v12 + 5);
  obj = v12[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__GKSavedGameDocument_deleteAllVersionsIncludingCurrent_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785DE8D0;
  v8[4] = &v11;
  v9 = *(a1 + 48);
  [v2 coordinateWritingItemAtURL:v3 options:1 error:&obj byAccessor:v8];
  objc_storeStrong(v4, obj);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__GKSavedGameDocument_deleteAllVersionsIncludingCurrent_withCompletionHandler___block_invoke_3;
  block[3] = &unk_2785DE8A8;
  v6 = *(a1 + 40);
  v7 = &v11;
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v11, 8);
}

void __79__GKSavedGameDocument_deleteAllVersionsIncludingCurrent_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  [MEMORY[0x277CCAA18] removeOtherVersionsOfItemAtURL:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(a1 + 40) == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v6 = *(*(a1 + 32) + 8);
    v16 = *(v6 + 40);
    [v5 removeItemAtURL:v3 error:&v16];
    objc_storeStrong((v6 + 40), v16);
  }

  else
  {
    v5 = [MEMORY[0x277CCAA18] unresolvedConflictVersionsOfItemAtURL:v3];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v10++) setResolved:1];
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __79__GKSavedGameDocument_deleteAllVersionsIncludingCurrent_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)deleteConflictVersion:(id)version completionHandler:(id)handler
{
  versionCopy = version;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__GKSavedGameDocument_deleteConflictVersion_completionHandler___block_invoke;
  block[3] = &unk_2785DE948;
  block[4] = self;
  v12 = versionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = versionCopy;
  dispatch_async(v8, block);
}

void __63__GKSavedGameDocument_deleteConflictVersion_completionHandler___block_invoke(id *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:a1[4]];
  v3 = [a1[4] fileURL];
  v4 = (v13 + 5);
  obj = v13[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__GKSavedGameDocument_deleteConflictVersion_completionHandler___block_invoke_2;
  v8[3] = &unk_2785DE920;
  v9 = a1[5];
  v10 = &v12;
  [v2 coordinateWritingItemAtURL:v3 options:1 error:&obj byAccessor:v8];
  objc_storeStrong(v4, obj);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__GKSavedGameDocument_deleteConflictVersion_completionHandler___block_invoke_3;
  block[3] = &unk_2785DE8A8;
  v6 = a1[6];
  v7 = &v12;
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v12, 8);
}

void __63__GKSavedGameDocument_deleteConflictVersion_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setResolved:1];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 removeAndReturnError:&obj];
  objc_storeStrong((v3 + 40), obj);
}

uint64_t __63__GKSavedGameDocument_deleteConflictVersion_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (NSString)description
{
  v11.receiver = self;
  v11.super_class = GKSavedGameDocument;
  v3 = [(GKSavedGameDocument *)&v11 description];
  v4 = MEMORY[0x277CCACA8];
  fileURL = [(GKSavedGameDocument *)self fileURL];
  deviceName = [(GKSavedGameDocument *)self deviceName];
  modificationDate = [(GKSavedGameDocument *)self modificationDate];
  v8 = [v4 stringWithFormat:@", fileURL = %@, deviceName = %@, modificationDate = %@", fileURL, deviceName, modificationDate];
  v9 = [v3 stringByAppendingString:v8];

  return v9;
}

@end