@interface GKSavedGameManager
+ (id)sharedManager;
- (GKSavedGameManager)init;
- (id)currentDocumentWithName:(id)name;
- (id)documentForSavedGame:(id)game;
- (id)documentToSaveWithName:(id)name;
- (id)errorForNoUbiquity;
- (id)fileURLForName:(id)name;
- (id)savedGameForDocument:(id)document;
- (id)savedGameForDocuments:(id)documents;
- (id)savedGamesWithName:(id)name;
- (void)addDocument:(id)document;
- (void)callFetchHandlers;
- (void)dealloc;
- (void)deleteSavedGamesWithName:(id)name completionHandler:(id)handler;
- (void)disableQueryUpdates;
- (void)documentConflictStateChanged:(id)changed;
- (void)documentModified:(id)modified;
- (void)enableQueryUpdates;
- (void)fetchSavedGamesWithCompletionHandler:(id)handler;
- (void)loadDataForSavedGame:(id)game completionHandler:(id)handler;
- (void)queryDidFinishGathering:(id)gathering;
- (void)queryDidUpdate:(id)update;
- (void)removeDocument:(id)document;
- (void)resolveConflictingSavedGames:(id)games withData:(id)data completionHandler:(id)handler;
- (void)saveGameData:(id)data withName:(id)name completionHandler:(id)handler;
- (void)setupUbiquity;
- (void)startSavedGameQuery;
- (void)updateSavedGameDocumentsForQueryWithHandler:(id)handler;
@end

@implementation GKSavedGameManager

+ (id)sharedManager
{
  if (sharedManager_sOnceToken != -1)
  {
    +[GKSavedGameManager sharedManager];
  }

  v3 = sharedManager_sManager;

  return v3;
}

uint64_t __35__GKSavedGameManager_sharedManager__block_invoke()
{
  sharedManager_sManager = objc_alloc_init(GKSavedGameManager);

  return MEMORY[0x2821F96F8]();
}

- (GKSavedGameManager)init
{
  v7.receiver = self;
  v7.super_class = GKSavedGameManager;
  v2 = [(GKSavedGameManager *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_documentModified_ name:@"GKSavedGameDocumentModifiedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_documentConflictStateChanged_ name:@"GKSavedGameDocumentConflictStateChangedNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_ubiquityAvailabilityChanged_ name:*MEMORY[0x277CCA7C8] object:0];

    [(GKSavedGameManager *)v2 setupUbiquity];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKSavedGameManager;
  [(GKSavedGameManager *)&v4 dealloc];
}

- (void)fetchSavedGamesWithCompletionHandler:(id)handler
{
  if (handler)
  {
    v4 = [handler copy];
    fetchHandlers = self->_fetchHandlers;
    v11 = v4;
    if (fetchHandlers)
    {
      v6 = _Block_copy(v4);
      [(NSMutableArray *)fetchHandlers addObject:v6];
    }

    else
    {
      v7 = MEMORY[0x277CBEB18];
      v6 = _Block_copy(v4);
      v8 = [v7 arrayWithObject:v6];
      [(GKSavedGameManager *)self setFetchHandlers:v8];
    }

    documents = self->_documents;
    if (documents && (v10 = [(NSMutableDictionary *)documents count], v10 == [(NSMetadataQuery *)self->_query resultCount]) || self->_ubiquityUnavailable)
    {
      [(GKSavedGameManager *)self callFetchHandlers];
    }
  }
}

- (id)savedGamesWithName:(id)name
{
  if (name)
  {
    v4 = [(NSMutableDictionary *)self->_documents objectForKey:?];
    allObjects = [v4 allObjects];

    v6 = [(GKSavedGameManager *)self savedGameForDocuments:allObjects];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_documents, "count")}];
    documents = self->_documents;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__GKSavedGameManager_savedGamesWithName___block_invoke;
    v11[3] = &unk_2785DD848;
    v9 = v7;
    v12 = v9;
    selfCopy = self;
    [(NSMutableDictionary *)documents enumerateKeysAndObjectsUsingBlock:v11];
    v6 = v9;
  }

  return v6;
}

void __41__GKSavedGameManager_savedGamesWithName___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 allObjects];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) savedGameForDocuments:v6];
  [v4 addObjectsFromArray:v5];
}

- (id)savedGameForDocuments:(id)documents
{
  v19 = *MEMORY[0x277D85DE8];
  documentsCopy = documents;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(documentsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = documentsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(GKSavedGameManager *)self savedGameForDocument:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)savedGameForDocument:(id)document
{
  if (document)
  {
    documentCopy = document;
    v4 = objc_alloc_init(GKSavedGame);
    fileURL = [documentCopy fileURL];
    [(GKSavedGame *)v4 setFileURL:fileURL];

    name = [documentCopy name];
    [(GKSavedGame *)v4 setName:name];

    deviceName = [documentCopy deviceName];
    [(GKSavedGame *)v4 setDeviceName:deviceName];

    modificationDate = [documentCopy modificationDate];

    [(GKSavedGame *)v4 setModificationDate:modificationDate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fileURLForName:(id)name
{
  v3 = [(NSURL *)self->_ubiquityURL URLByAppendingPathComponent:name];
  v4 = [v3 URLByAppendingPathExtension:@"bundle"];

  return v4;
}

- (void)addDocument:(id)document
{
  documents = self->_documents;
  documentCopy = document;
  name = [documentCopy name];
  v11 = [(NSMutableDictionary *)documents objectForKey:name];

  if (v11)
  {
    fileURL = [documentCopy fileURL];
    [v11 setObject:documentCopy forKey:fileURL];
  }

  else
  {
    v8 = MEMORY[0x277CBEB38];
    fileURL2 = [documentCopy fileURL];
    v11 = [v8 dictionaryWithObject:documentCopy forKey:fileURL2];

    v10 = self->_documents;
    fileURL = [documentCopy name];

    [(NSMutableDictionary *)v10 setObject:v11 forKey:fileURL];
  }
}

- (void)removeDocument:(id)document
{
  documentCopy = document;
  name = [documentCopy name];
  v5 = [(NSMutableDictionary *)self->_documents objectForKey:?];
  fileURL = [documentCopy fileURL];

  [v5 removeObjectForKey:fileURL];
  if (![v5 count])
  {
    [(NSMutableDictionary *)self->_documents removeObjectForKey:name];
  }
}

- (id)documentForSavedGame:(id)game
{
  documents = self->_documents;
  gameCopy = game;
  name = [gameCopy name];
  v6 = [(NSMutableDictionary *)documents objectForKey:name];

  fileURL = [gameCopy fileURL];

  v8 = [v6 objectForKey:fileURL];

  return v8;
}

- (id)documentToSaveWithName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    v5 = +[GKSavedGameDocument currentDeviceName];
    v24 = nameCopy;
    v6 = [(NSMutableDictionary *)self->_documents objectForKey:nameCopy];
    allObjects = [v6 allObjects];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = allObjects;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          deviceName = [v14 deviceName];
          v16 = [deviceName isEqualToString:v5];

          if (v16)
          {
            v21 = v14;

            v11 = v21;
            goto LABEL_17;
          }

          if (v11)
          {
            modificationDate = [v14 modificationDate];
            modificationDate2 = [v11 modificationDate];
            v19 = [modificationDate compare:modificationDate2];

            if (v19 != 1)
            {
              continue;
            }
          }

          v20 = v14;

          v11 = v20;
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_17:

    nameCopy = v24;
  }

  else
  {
    v11 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)currentDocumentWithName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    v5 = [(NSMutableDictionary *)self->_documents objectForKey:nameCopy];
    allObjects = [v5 allObjects];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = allObjects;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (([v13 isConflictVersion] & 1) == 0)
          {
            v14 = v13;

            v10 = v14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)loadDataForSavedGame:(id)game completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = MEMORY[0x277CCACA8];
    gameCopy = game;
    v9 = [v7 stringWithFormat:@"%s:%d %s", "GKSavedGameManager.m", 206, "-[GKSavedGameManager loadDataForSavedGame:completionHandler:]"];
    v10 = [GKDispatchGroup dispatchGroupWithName:v9];

    [(GKSavedGameManager *)self disableQueryUpdates];
    v11 = [(GKSavedGameManager *)self documentForSavedGame:gameCopy];

    if (v11)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __61__GKSavedGameManager_loadDataForSavedGame_completionHandler___block_invoke;
      v18[3] = &unk_2785DD898;
      v19 = v11;
      v20 = v10;
      [v20 perform:v18];
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
      [v10 setError:v12];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__GKSavedGameManager_loadDataForSavedGame_completionHandler___block_invoke_3;
    v14[3] = &unk_2785DD8C0;
    selfCopy = self;
    v17 = handlerCopy;
    v15 = v10;
    v13 = v10;
    [v13 notifyOnMainQueueWithBlock:v14];
  }
}

void __61__GKSavedGameManager_loadDataForSavedGame_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__GKSavedGameManager_loadDataForSavedGame_completionHandler___block_invoke_2;
  v6[3] = &unk_2785DD870;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 loadDataWithCompletionHandler:v6];
}

uint64_t __61__GKSavedGameManager_loadDataForSavedGame_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"data"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

uint64_t __61__GKSavedGameManager_loadDataForSavedGame_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"data"];
    v4 = [*(a1 + 32) error];
    (*(v2 + 16))(v2, v3, v4);
  }

  v5 = *(a1 + 40);

  return [v5 enableQueryUpdates];
}

- (void)saveGameData:(id)data withName:(id)name completionHandler:(id)handler
{
  dataCopy = data;
  nameCopy = name;
  handlerCopy = handler;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKSavedGameManager.m", 232, "-[GKSavedGameManager saveGameData:withName:completionHandler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  [(GKSavedGameManager *)self disableQueryUpdates];
  v13 = [(GKSavedGameManager *)self documentToSaveWithName:nameCopy];
  if ([(GKSavedGameDocument *)v13 hasConflict])
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKSavedGameManager saveGameData:v15 withName:v13 completionHandler:?];
    }
  }

  if (nameCopy)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  if (v16)
  {
    if (!self->_ubiquityURL)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v18 = [GKSavedGameDocument alloc];
    v19 = [(GKSavedGameManager *)self fileURLForName:nameCopy];
    v13 = [(GKSavedGameDocument *)v18 initWithFileURL:v19];

    [(GKSavedGameDocument *)v13 setName:nameCopy];
  }

  if (!v13)
  {
LABEL_19:
    errorForNoUbiquity = [(GKSavedGameManager *)self errorForNoUbiquity];
    [v12 setError:errorForNoUbiquity];
    v20 = 0;
    goto LABEL_20;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __62__GKSavedGameManager_saveGameData_withName_completionHandler___block_invoke;
  v31[3] = &unk_2785DD910;
  v20 = v13;
  v32 = v20;
  v33 = dataCopy;
  v34 = v12;
  [v34 perform:v31];

  errorForNoUbiquity = v32;
LABEL_20:

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__GKSavedGameManager_saveGameData_withName_completionHandler___block_invoke_3;
  v25[3] = &unk_2785DD938;
  v30 = v17;
  v26 = v12;
  selfCopy = self;
  v28 = v20;
  v29 = handlerCopy;
  v22 = handlerCopy;
  v23 = v20;
  v24 = v12;
  [v24 notifyOnMainQueueWithBlock:v25];
}

void __62__GKSavedGameManager_saveGameData_withName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__GKSavedGameManager_saveGameData_withName_completionHandler___block_invoke_2;
  v7[3] = &unk_2785DD8E8;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 saveData:v5 completionHandler:v7];
}

uint64_t __62__GKSavedGameManager_saveGameData_withName_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __62__GKSavedGameManager_saveGameData_withName_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) error];

    if (!v2)
    {
      [*(a1 + 40) addDocument:*(a1 + 48)];
    }
  }

  if (*(a1 + 56))
  {
    v3 = [*(a1 + 32) error];
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 40) savedGameForDocument:*(a1 + 48)];
    }

    v5 = *(a1 + 56);
    v6 = [*(a1 + 32) error];
    (*(v5 + 16))(v5, v4, v6);
  }

  v7 = *(a1 + 40);

  return [v7 enableQueryUpdates];
}

- (void)deleteSavedGamesWithName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKSavedGameManager.m", 274, "-[GKSavedGameManager deleteSavedGamesWithName:completionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  [(GKSavedGameManager *)self disableQueryUpdates];
  v10 = [(GKSavedGameManager *)self currentDocumentWithName:nameCopy];
  v11 = v10;
  if (v10)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__GKSavedGameManager_deleteSavedGamesWithName_completionHandler___block_invoke;
    v20[3] = &unk_2785DD898;
    v21 = v10;
    v22 = v9;
    [v22 perform:v20];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__GKSavedGameManager_deleteSavedGamesWithName_completionHandler___block_invoke_3;
  v15[3] = &unk_2785DD960;
  v16 = v9;
  selfCopy = self;
  v18 = nameCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = nameCopy;
  v14 = v9;
  [v14 notifyOnMainQueueWithBlock:v15];
}

void __65__GKSavedGameManager_deleteSavedGamesWithName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__GKSavedGameManager_deleteSavedGamesWithName_completionHandler___block_invoke_2;
  v6[3] = &unk_2785DD8E8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 deleteAllVersionsIncludingCurrent:1 withCompletionHandler:v6];
}

uint64_t __65__GKSavedGameManager_deleteSavedGamesWithName_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __65__GKSavedGameManager_deleteSavedGamesWithName_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (!v2)
  {
    [*(*(a1 + 40) + 32) removeObjectForKey:*(a1 + 48)];
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, v4);
  }

  v5 = *(a1 + 40);

  return [v5 enableQueryUpdates];
}

- (void)documentModified:(id)modified
{
  modifiedCopy = modified;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  isMainThread = [currentThread isMainThread];

  if ((isMainThread & 1) == 0)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"document modified notification received on thread other than main thread"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKSavedGameManager.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [v6 stringWithFormat:@"%@ ([[NSThread currentThread] isMainThread])\n[%s (%s:%d)]", v7, "-[GKSavedGameManager documentModified:]", objc_msgSend(lastPathComponent, "UTF8String"), 300];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
  }

  object = [modifiedCopy object];
  v12 = [(GKSavedGameManager *)self savedGameForDocument:object];
  v13 = +[GKLocalPlayer localPlayer];
  eventEmitter = [v13 eventEmitter];
  [eventEmitter player:v13 didModifySavedGame:v12];
}

- (id)errorForNoUbiquity
{
  v3 = +[GKLocalPlayer localPlayer];
  isAuthenticated = [v3 isAuthenticated];

  if (isAuthenticated)
  {
    if (self->_ubiquityUnavailable)
    {
      v5 = 27;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 6;
  }

  v6 = MEMORY[0x277CCA9B8];

  return [v6 userErrorForCode:v5 underlyingError:0];
}

- (void)startSavedGameQuery
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__GKSavedGameManager_startSavedGameQuery__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__GKSavedGameManager_startSavedGameQuery__block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB28]);
    [*(a1 + 32) setQuery:v2];

    v3 = *(*(a1 + 32) + 24);
    v4 = *MEMORY[0x277CCA500];
    v18[0] = *MEMORY[0x277CCA4F8];
    v18[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v3 setSearchScopes:v5];

    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K ENDSWITH %@", *MEMORY[0x277CCA4D0], @"bundle"];
    [*(*(a1 + 32) + 24) setPredicate:v6];
    v7 = *(*(a1 + 32) + 24);
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCA4C8] ascending:1];
    v17 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v7 setSortDescriptors:v9];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:*(a1 + 32) selector:sel_queryDidFinishGathering_ name:*MEMORY[0x277CCA4E8] object:*(*(a1 + 32) + 24)];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:*(a1 + 32) selector:sel_queryDidUpdate_ name:*MEMORY[0x277CCA4F0] object:*(*(a1 + 32) + 24)];

    if (([*(*(a1 + 32) + 24) startQuery] & 1) == 0)
    {
      v12 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
        v12 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __41__GKSavedGameManager_startSavedGameQuery__block_invoke_cold_1(v12);
      }

      [*(a1 + 32) setQuery:0];
      [*(a1 + 32) callFetchHandlers];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      __41__GKSavedGameManager_startSavedGameQuery__block_invoke_cold_2(v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)disableQueryUpdates
{
  queryDisableCount = self->_queryDisableCount;
  if (!queryDisableCount)
  {
    [(NSMetadataQuery *)self->_query disableUpdates];
    queryDisableCount = self->_queryDisableCount;
  }

  self->_queryDisableCount = queryDisableCount + 1;
}

- (void)enableQueryUpdates
{
  v2 = self->_queryDisableCount - 1;
  self->_queryDisableCount = v2;
  if (!v2)
  {
    [(NSMetadataQuery *)self->_query enableUpdates];
  }
}

- (void)queryDidFinishGathering:(id)gathering
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CCA4E8] object:self->_query];

  [(GKSavedGameManager *)self disableQueryUpdates];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__GKSavedGameManager_queryDidFinishGathering___block_invoke;
  v5[3] = &unk_2785DD988;
  v5[4] = self;
  [(GKSavedGameManager *)self updateSavedGameDocumentsForQueryWithHandler:v5];
}

uint64_t __46__GKSavedGameManager_queryDidFinishGathering___block_invoke(uint64_t a1)
{
  [*(a1 + 32) callFetchHandlers];
  v2 = *(a1 + 32);

  return [v2 enableQueryUpdates];
}

- (void)queryDidUpdate:(id)update
{
  [(GKSavedGameManager *)self disableQueryUpdates];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__GKSavedGameManager_queryDidUpdate___block_invoke;
  v4[3] = &unk_2785DD988;
  v4[4] = self;
  [(GKSavedGameManager *)self updateSavedGameDocumentsForQueryWithHandler:v4];
}

uint64_t __37__GKSavedGameManager_queryDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documents];
  v3 = [v2 count];
  v4 = [*(a1 + 32) query];
  v5 = [v4 resultCount];

  if (v3 == v5)
  {
    [*(a1 + 32) callFetchHandlers];
  }

  v6 = *(a1 + 32);

  return [v6 enableQueryUpdates];
}

- (void)updateSavedGameDocumentsForQueryWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKSavedGameManager.m", 390, "-[GKSavedGameManager updateSavedGameDocumentsForQueryWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  query = self->_query;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke;
  v21[3] = &unk_2785DDA28;
  v21[4] = self;
  v10 = dictionary;
  v22 = v10;
  v23 = v6;
  v11 = array;
  v24 = v11;
  v12 = v6;
  [(NSMetadataQuery *)query enumerateResultsUsingBlock:v21];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_61;
  v16[3] = &unk_2785DDA50;
  v17 = v10;
  selfCopy = self;
  v19 = v11;
  v20 = handlerCopy;
  v13 = v11;
  v14 = handlerCopy;
  v15 = v10;
  [v12 notifyOnMainQueueWithBlock:v16];
}

void __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277CCA4E0];
  v4 = a2;
  v5 = [v4 valueForAttribute:v3];
  v6 = [v4 valueForAttribute:*MEMORY[0x277CCA4D0]];
  v7 = [v6 stringByDeletingPathExtension];

  v8 = [v4 valueForAttribute:*MEMORY[0x277CCA518]];

  if ([v8 isEqualToString:*MEMORY[0x277CCA520]])
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v39 = 0;
    v10 = [v9 startDownloadingUbiquitousItemAtURL:v5 error:&v39];
    v11 = v39;

    if ((v10 & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      v13 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_cold_2(v5, v11, v13);
      }
    }
  }

  else
  {
    if (v5)
    {
      v14 = v7 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_cold_1(v16);
      }
    }

    else
    {
      v17 = [*(*(a1 + 32) + 32) objectForKey:v7];
      v18 = [MEMORY[0x277CBEB38] dictionary];
      [*(a1 + 40) setObject:v18 forKey:v7];
      v19 = [v17 objectForKey:v5];
      v20 = v19;
      if (!v19)
      {
        v20 = [[GKSavedGameDocument alloc] initWithFileURL:v5];
        [(GKSavedGameDocument *)v20 setName:v7];
      }

      v21 = *(a1 + 48);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_58;
      v35[3] = &unk_2785DD910;
      v22 = v20;
      v36 = v22;
      v23 = v18;
      v37 = v23;
      v38 = v5;
      [v21 perform:v35];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_3;
      v28[3] = &unk_2785DDA00;
      v29 = v22;
      v24 = *(a1 + 48);
      v30 = *(a1 + 56);
      v31 = v7;
      v32 = v17;
      v33 = *(a1 + 48);
      v34 = v23;
      v25 = v22;
      v26 = v17;
      v27 = v23;
      [v24 perform:v28];
    }
  }
}

void __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_58(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_2;
  v6[3] = &unk_2785DD9B0;
  v4 = a1[4];
  v7 = a1[5];
  v8 = a1[4];
  v9 = a1[6];
  v10 = v3;
  v5 = v3;
  [v4 loadMetadataWithCompletionHandler:v6];
}

uint64_t __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] hasConflict];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_4;
  v12[3] = &unk_2785DD9D8;
  v5 = a1[4];
  v18 = v4;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  v15 = a1[8];
  v16 = a1[9];
  v17 = v3;
  v11 = v3;
  [v5 updateConflictStateWithCompletionHandler:v12];
}

void __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) hasConflict])
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      [*(a1 + 40) addObject:*(a1 + 48)];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [v8 URL];
          v10 = [*(a1 + 56) objectForKey:v9];
          if (!v10)
          {
            v10 = [[GKSavedGameDocument alloc] initWithFileURL:v9];
            [(GKSavedGameDocument *)v10 setName:*(a1 + 48)];
            [(GKSavedGameDocument *)v10 setIsConflictVersion:1];
            [(GKSavedGameDocument *)v10 setHasConflict:1];
            [(GKSavedGameDocument *)v10 setFileVersion:v8];
          }

          v12 = *(a1 + 64);
          v11 = *(a1 + 72);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_5;
          v17[3] = &unk_2785DD910;
          v18 = v10;
          v19 = v11;
          v20 = v9;
          v13 = v9;
          v14 = v10;
          [v12 perform:v17];
        }

        v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v5);
    }
  }

  (*(*(a1 + 80) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

void __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_6;
  v6[3] = &unk_2785DD9B0;
  v4 = a1[4];
  v7 = a1[5];
  v8 = a1[4];
  v9 = a1[6];
  v10 = v3;
  v5 = v3;
  [v4 loadMetadataWithCompletionHandler:v6];
}

uint64_t __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_61(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = [*(a1 + 32) objectForKey:v8];
        if (![v9 count])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  v25 = v2;
  [*(a1 + 32) removeObjectsForKeys:v2];
  v10 = [*(*(a1 + 40) + 32) allKeys];
  v11 = [*(a1 + 32) allKeys];
  v12 = [v10 isEqualToArray:v11];

  [*(a1 + 40) setDocuments:*(a1 + 32)];
  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, v12 ^ 1u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = *(a1 + 48);
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(a1 + 40) savedGamesWithName:*(*(&v28 + 1) + 8 * j)];
        if ([v19 count] >= 2)
        {
          v20 = +[GKLocalPlayer localPlayer];
          v21 = [v20 eventEmitter];
          [v21 player:v20 hasConflictingSavedGames:v19];

          v22 = os_log_GKGeneral;
          if (!os_log_GKGeneral)
          {
            v23 = GKOSLoggers();
            v22 = os_log_GKGeneral;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_61_cold_1(&buf, v27, v22);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)callFetchHandlers
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_ubiquityUnavailable)
  {
    errorForNoUbiquity = [(GKSavedGameManager *)self errorForNoUbiquity];
    v4 = 0;
  }

  else
  {
    v4 = [(GKSavedGameManager *)self savedGamesWithName:0];
    errorForNoUbiquity = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_fetchHandlers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = _Block_copy(*(*(&v12 + 1) + 8 * v9));
        v10[2](v10, v4, errorForNoUbiquity);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(GKSavedGameManager *)self setFetchHandlers:0, v12];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)documentConflictStateChanged:(id)changed
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  isMainThread = [currentThread isMainThread];

  if ((isMainThread & 1) == 0)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"document conflict notification received on thread other than main thread"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKSavedGameManager.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [v6 stringWithFormat:@"%@ ([[NSThread currentThread] isMainThread])\n[%s (%s:%d)]", v7, "-[GKSavedGameManager documentConflictStateChanged:]", objc_msgSend(lastPathComponent, "UTF8String"), 520];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
  }

  [(GKSavedGameManager *)self updateSavedGameDocumentsForQueryWithHandler:0];
}

- (void)resolveConflictingSavedGames:(id)games withData:(id)data completionHandler:(id)handler
{
  gamesCopy = games;
  dataCopy = data;
  handlerCopy = handler;
  firstObject = [gamesCopy firstObject];
  name = [firstObject name];

  if (name)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKSavedGameManager.m", 533, "-[GKSavedGameManager resolveConflictingSavedGames:withData:completionHandler:]"];
    v14 = [GKDispatchGroup dispatchGroupWithName:v13];

    [(GKSavedGameManager *)self disableQueryUpdates];
    v15 = [(GKSavedGameManager *)self currentDocumentWithName:name];
    v16 = v15;
    if (v15)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke;
      v26[3] = &unk_2785DD910;
      v27 = v15;
      v28 = gamesCopy;
      v29 = v14;
      [v29 perform:v26];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_7;
    v19[3] = &unk_2785DDAF0;
    v20 = gamesCopy;
    selfCopy = self;
    v22 = name;
    v23 = dataCopy;
    v24 = v14;
    v25 = handlerCopy;
    v17 = v14;
    [v17 notifyOnMainQueueWithBlock:v19];
  }

  else if (handlerCopy)
  {
    v18 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v18);
  }
}

void __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_2;
  v6[3] = &unk_2785DDAA0;
  v4 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v10 = v3;
  v5 = v3;
  [v4 updateConflictStateWithCompletionHandler:v6];
}

void __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v33 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [v10 fileURL];

        if (v11)
        {
          v12 = [v10 fileURL];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v7);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
  v15 = v33;
  if (v14)
  {
    v16 = v14;
    v17 = *v46;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v45 + 1) + 8 * j);
        v20 = [v19 URL];
        v21 = [v4 containsObject:v20];

        if (v21)
        {
          [v33 addObject:v19];
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v16);
  }

  v22 = [v33 count];
  if (v22 == [v13 count])
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_3;
    v42[3] = &unk_2785DD898;
    v23 = *(a1 + 40);
    v43 = *(a1 + 48);
    v44 = *(a1 + 40);
    [v23 perform:v42];

    v24 = v43;
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = v33;
    v25 = [v24 countByEnumeratingWithState:&v38 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v39;
      do
      {
        v28 = v24;
        for (k = 0; k != v26; ++k)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v28);
          }

          v30 = *(*(&v38 + 1) + 8 * k);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_5;
          v34[3] = &unk_2785DD910;
          v31 = *(a1 + 40);
          v35 = *(a1 + 48);
          v36 = v30;
          v37 = *(a1 + 40);
          [v31 perform:v34];
        }

        v24 = v28;
        v26 = [v28 countByEnumeratingWithState:&v38 objects:v53 count:16];
      }

      while (v26);
      v15 = v33;
    }
  }

  (*(*(a1 + 56) + 16))();
  v32 = *MEMORY[0x277D85DE8];
}

void __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_4;
  v6[3] = &unk_2785DD8E8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 deleteAllVersionsIncludingCurrent:1 withCompletionHandler:v6];
}

uint64_t __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_6;
  v6[3] = &unk_2785DDA78;
  v7 = *(a1 + 48);
  v5 = a2;
  [v3 deleteConflictVersion:v4 completionHandler:v6];
  v5[2](v5);
}

void __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) error];

  if (!v3)
  {
    [*(a1 + 32) setError:v4];
  }
}

void __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_7(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) documentForSavedGame:*(*(&v22 + 1) + 8 * i)];
        if (v7)
        {
          [*(a1 + 40) removeDocument:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  v8 = [*(a1 + 40) documentToSaveWithName:*(a1 + 48)];
  v9 = v8;
  if (!v8)
  {
    v10 = [GKSavedGameDocument alloc];
    v11 = [*(a1 + 40) fileURLForName:*(a1 + 48)];
    v9 = [(GKSavedGameDocument *)v10 initWithFileURL:v11];

    [(GKSavedGameDocument *)v9 setName:*(a1 + 48)];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_8;
  v16[3] = &unk_2785DDAC8;
  v21 = v8 == 0;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v16[4] = *(a1 + 40);
  v17 = v9;
  v18 = v12;
  v20 = *(a1 + 72);
  v19 = *(a1 + 64);
  v14 = v9;
  [(GKSavedGameDocument *)v14 saveData:v13 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __78__GKSavedGameManager_resolveConflictingSavedGames_withData_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!v6 && *(a1 + 72) == 1)
  {
    [*(a1 + 32) addDocument:*(a1 + 40)];
  }

  v3 = [*(a1 + 32) savedGamesWithName:*(a1 + 48)];
  [*(a1 + 40) setHasConflict:{objc_msgSend(v3, "count") > 1}];
  v4 = *(a1 + 64);
  if (v4)
  {
    if (v6)
    {
      (*(v4 + 16))(*(a1 + 64), v3);
    }

    else
    {
      v5 = [*(a1 + 56) error];
      (*(v4 + 16))(v4, v3, v5);
    }
  }

  [*(a1 + 32) enableQueryUpdates];
}

- (void)setupUbiquity
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__GKSavedGameManager_setupUbiquity__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __35__GKSavedGameManager_setupUbiquity__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 URLForUbiquityContainerIdentifier:0];
  [*(a1 + 32) setUbiquityURL:v3];

  v4 = *(a1 + 32);
  if (*(v4 + 16))
  {
    result = [v4 startSavedGameQuery];
    *(*(a1 + 32) + 8) = 0;
  }

  else
  {
    [*(v4 + 24) stopQuery];
    [*(a1 + 32) setQuery:0];
    *(*(a1 + 32) + 8) = 1;
    v6 = *(a1 + 32);

    return [v6 callFetchHandlers];
  }

  return result;
}

- (void)saveGameData:(void *)a1 withName:(void *)a2 completionHandler:.cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 name];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "Unresolved saved game conflict for file: %{public}@. Provide a GKSavedGameListener protocol conformance to resolve conflicts. https://developer.apple.com/documentation/gamekit/gksavedgamelistener", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "GKSavedGameManager->updateSavedGameDocumentsForQueryWithHandler: Error - error downloading item at url: %@ with error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __66__GKSavedGameManager_updateSavedGameDocumentsForQueryWithHandler___block_invoke_61_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_227904000, log, OS_LOG_TYPE_DEBUG, "Saved Games API: hasConflictingSavedGames:savedGames event emitter fired.", buf, 2u);
}

@end