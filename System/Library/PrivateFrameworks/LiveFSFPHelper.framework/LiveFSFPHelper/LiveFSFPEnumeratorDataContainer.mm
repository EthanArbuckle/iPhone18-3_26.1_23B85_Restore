@interface LiveFSFPEnumeratorDataContainer
- (LiveFSFPEnumeratorDataContainer)initWithEnumeratedItem:(id)a3 fileHandle:(id)a4 extension:(id)a5;
- (id)ensureConnectedForUpdates;
- (id)initForExtension:(id)a3 item:(id)a4;
- (id)loadContents;
- (id)readDirBuffersForBufferBlock:(id)a3 andEntryBlock:(id)a4;
- (void)addEnumerator:(id)a3;
- (void)applyParentUpdateAcrossEnumerators;
- (void)dealloc;
- (void)deletedItem:(id)a3 name:(id)a4 how:(int)a5 interestedItem:(id)a6;
- (void)deletedName:(id)a3 item:(id)a4 how:(int)a5 interestedItem:(id)a6;
- (void)doProcessItemDeleted:(id)a3;
- (void)doProcessItemUpdated:(id)a3;
- (void)doShutdown;
- (void)doShutdownOnEnumeratorHelperQueue;
- (void)dropEnumerator:(id)a3;
- (void)dropInterestForEnumeratedItem:(id)a3;
- (void)ensureConnectedForUpdates;
- (void)handleEnumeratedItemChanged;
- (void)historyResetItem:(id)a3 interestedItem:(id)a4;
- (void)historyResetName:(id)a3 interestedItem:(id)a4;
- (void)invalidate;
- (void)makeAllEnumeratorsDead;
- (void)renamedItem:(id)a3 named:(id)a4 fromDirectory:(id)a5 intoDirectory:(id)a6 newName:(id)a7 atopItem:(id)a8;
- (void)resetAllEnumerators;
- (void)updatedItem:(id)a3 name:(id)a4 interestedItem:(id)a5;
- (void)updatedName:(id)a3 interestedItem:(id)a4;
- (void)updatesDoneFor:(id)a3;
- (void)volumeWideDeletedName:(id)a3 interestedItem:(id)a4;
- (void)volumeWideUpdatedName:(id)a3 interestedItem:(id)a4;
@end

@implementation LiveFSFPEnumeratorDataContainer

- (id)initForExtension:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = LiveFSFPEnumeratorDataContainer;
  v9 = [(LiveFSFPEnumeratorDataContainer *)&v25 init];
  v10 = v9;
  if (!v9)
  {
LABEL_15:
    v10 = v10;
    v12 = v10;
    goto LABEL_16;
  }

  objc_storeStrong(&v9->ext, a3);
  objc_storeStrong(&v10->_enumeratedItem, a4);
  v11 = [(LiveFSFPItemHelper *)v10->_enumeratedItem container];

  if (!v11)
  {
    [(LiveFSFPItemHelper *)v10->_enumeratedItem setContainer:v10];
    v10->_state = 0;
    v13 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    ourEnumerators = v10->ourEnumerators;
    v10->ourEnumerators = v13;

    v10->_hasPersistentIDs = [v7 idsPersist];
    v10->_isDir = 0;
    v10->_isVolumeWide = 0;
    *&v10->historyReset = 0;
    v10->_addParent = [(LiveFSFPExtensionHelper *)v10->ext fetchRoot];
    label = 0;
    v15 = [v7 domain];
    v16 = [v15 identifier];
    v17 = [v16 UTF8String];

    if (!v17)
    {
      v17 = "Mystery domain to be named never";
    }

    v18 = [v8 fh];
    v19 = [v18 UTF8String];

    v20 = "<root>";
    if (v19)
    {
      v20 = v19;
    }

    asprintf(&label, "LiveFSFPEnumeratorDataContainer/%s/%s", v17, v20);
    if (label)
    {
      v21 = dispatch_queue_create(label, 0);
      updateQueue = v10->updateQueue;
      v10->updateQueue = v21;

      free(label);
    }

    if (!v10->updateQueue || !v10->ourEnumerators)
    {

      v10 = 0;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [LiveFSFPEnumeratorDataContainer initForExtension:item:];
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (LiveFSFPEnumeratorDataContainer)initWithEnumeratedItem:(id)a3 fileHandle:(id)a4 extension:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(LiveFSFPEnumeratorDataContainer *)self initForExtension:a5 item:v8];
  if (v10)
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPEnumeratorDataContainer initWithEnumeratedItem:v10 fileHandle:v8 extension:v11];
    }

    objc_storeStrong(&v10->_containerID, a4);
    v12 = [v8 liType];
    v10->_isDir = v12 == +[LiveFSFPItemHelper dt_dir];
  }

  return v10;
}

- (void)dropInterestForEnumeratedItem:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 fh];
    *buf = 136315650;
    *&buf[4] = "[LiveFSFPEnumeratorDataContainer dropInterestForEnumeratedItem:]";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    v20 = v6;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "%s started item %@ fh %@", buf, 0x20u);
  }

  ext = self->ext;
  if (ext)
  {
    v8 = [(LiveFSFPExtensionHelper *)ext serviceClient];
    if (v8)
    {
      v9 = [v4 fh];
      [v8 LISCDropUpdateHandlerForInterestedItem:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v10 = [(LiveFSFPExtensionHelper *)self->ext conn];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__LiveFSFPEnumeratorDataContainer_dropInterestForEnumeratedItem___block_invoke;
  v17[3] = &unk_27981A740;
  v17[4] = buf;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v17];

  v12 = [v4 fh];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__LiveFSFPEnumeratorDataContainer_dropInterestForEnumeratedItem___block_invoke_2;
  v16[3] = &unk_27981A740;
  v16[4] = buf;
  [v11 setUpdateInterest:v12 interest:0 requestID:-1 reply:v16];

  if (*(*&buf[8] + 40))
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v4 fh];
      [(LiveFSFPEnumeratorDataContainer *)v14 dropInterestForEnumeratedItem:v18, v13];
    }
  }

  _Block_object_dispose(buf, 8);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)doShutdown
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    isActive = self->isActive;
    addedToExtension = self->_addedToExtension;
    enumeratedItem = self->_enumeratedItem;
    enumeratedItemID = self->_enumeratedItemID;
    v9[0] = 67109890;
    v9[1] = isActive;
    v10 = 1024;
    v11 = addedToExtension;
    v12 = 2112;
    v13 = enumeratedItemID;
    v14 = 2112;
    v15 = enumeratedItem;
    _os_log_impl(&dword_255FE9000, v3, OS_LOG_TYPE_INFO, "dc doShutdown, isActive %d isAdded %d addedID %@ item %@", v9, 0x22u);
  }

  if (self->isActive)
  {
    [(LiveFSFPEnumeratorDataContainer *)self dropInterestForEnumeratedItem:self->_enumeratedItem];
    self->isActive = 0;
  }

  if (self->_addedToExtension)
  {
    [(LiveFSFPExtensionHelper *)self->ext removeEnumeratorForContainer:self->_enumeratedItemID];
    self->_addedToExtension = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)doShutdownOnEnumeratorHelperQueue
{
  if (self->isActive)
  {
    [(LiveFSFPEnumeratorDataContainer *)self dropInterestForEnumeratedItem:self->_enumeratedItem];
    self->isActive = 0;
  }

  if (self->_addedToExtension)
  {
    ext = self->ext;
    v4 = [(LiveFSFPItemHelper *)self->_enumeratedItem itemIdentifier];
    [(LiveFSFPExtensionHelper *)ext removeEnumeratorForContainerLocked:v4];
  }
}

- (void)dealloc
{
  [(LiveFSFPEnumeratorDataContainer *)self doShutdown];
  enumeratedItem = self->_enumeratedItem;
  if (enumeratedItem)
  {
    [(LiveFSFPItemHelper *)enumeratedItem setContainer:0];
  }

  v4.receiver = self;
  v4.super_class = LiveFSFPEnumeratorDataContainer;
  [(LiveFSFPEnumeratorDataContainer *)&v4 dealloc];
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  contentsSortedByDate = self->_contentsSortedByDate;
  self->_contentsSortedByDate = 0;

  contentsSortedByName = self->_contentsSortedByName;
  self->_contentsSortedByName = 0;

  [(LiveFSFPEnumeratorDataContainer *)self doShutdown];
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[LiveFSFPEnumeratorDataContainer invalidate]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_DEFAULT, "%s: marking state as DEAD on %p", &v7, 0x16u);
  }

  self->_state = 3;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEnumerator:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSPointerArray *)v4->ourEnumerators addPointer:v5];
  objc_sync_exit(v4);
}

- (void)dropEnumerator:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSPointerArray *)v4->ourEnumerators compact];
  for (i = 0; i < [(NSPointerArray *)v4->ourEnumerators count]; ++i)
  {
    if ([(NSPointerArray *)v4->ourEnumerators pointerAtIndex:i]== v6)
    {
      [(NSPointerArray *)v4->ourEnumerators removePointerAtIndex:i];
      break;
    }
  }

  objc_sync_exit(v4);
}

- (id)readDirBuffersForBufferBlock:(id)a3 andEntryBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPEnumeratorDataContainer readDirBuffersForBufferBlock:andEntryBlock:];
  }

  v9 = 0;
  v10 = 1;
LABEL_4:
  v25 = v10;
  v54[3] = 0;
  v50[3] = 0;
  v11 = [(LiveFSFPExtensionHelper *)self->ext conn];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __78__LiveFSFPEnumeratorDataContainer_readDirBuffersForBufferBlock_andEntryBlock___block_invoke;
  v38[3] = &unk_27981A740;
  v38[4] = &v43;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v38];

  while (!*(v40 + 6) && !v44[5])
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v13 = [(LiveFSFPItemHelper *)self->_enumeratedItem fh];
    v14 = v50[3];
    v15 = v54[3];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__LiveFSFPEnumeratorDataContainer_readDirBuffersForBufferBlock_andEntryBlock___block_invoke_2;
    v27[3] = &unk_27981AD60;
    v30 = &v34;
    v31 = &v39;
    v28 = v6;
    v29 = v7;
    v32 = &v49;
    v33 = &v53;
    [v12 readDirectory:v13 amount:0x10000 requestedAttributes:0 cookie:v14 verifier:v15 requestID:-1 reply:v27];

    v16 = *(v35 + 6);
    if (v16)
    {
      if (v16 == -1002)
      {
        *(v35 + 6) = 70;
LABEL_18:
        v22 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:?];
        v23 = v44[5];
        v44[5] = v22;

        v21 = v44[5];
        _Block_object_dispose(&v34, 8);
        goto LABEL_20;
      }

      if (v16 != -1000)
      {
        goto LABEL_18;
      }

      v17 = livefs_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_255FE9000, v17, OS_LOG_TYPE_INFO, "Restarting lookup", buf, 2u);
      }

      _Block_object_dispose(&v34, 8);
      v10 = v25 + 1;
      v9 = v12;
      if (v25 == 6)
      {
        v18 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:11];
        v19 = v44[5];
        v44[5] = v18;

        v20 = v44[5];
LABEL_16:
        v21 = v20;
        goto LABEL_20;
      }

      goto LABEL_4;
    }

    _Block_object_dispose(&v34, 8);
  }

  v20 = v44[5];
  if (v20)
  {
    goto LABEL_16;
  }

  v21 = 0;
LABEL_20:
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  return v21;
}

void __78__LiveFSFPEnumeratorDataContainer_readDirBuffersForBufferBlock_andEntryBlock___block_invoke_2(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  if (a2 != -1001 && a2)
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __78__LiveFSFPEnumeratorDataContainer_readDirBuffersForBufferBlock_andEntryBlock___block_invoke_2_cold_1(a2, a3, v16);
    }

    *(*(a1[6] + 8) + 24) = a2;
  }

  else if (a2 == -1001 || !a3)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v11 = [v9 bytes];
    if (a3 >= 1)
    {
      v12 = v11;
      LODWORD(v13) = 0;
      v14 = 0;
      while (1)
      {
        if (*(v12 + *(v12 + 10)) != 46)
        {
          if ((v14 & 1) == 0)
          {
            (*(a1[4] + 16))();
          }

          (*(a1[5] + 16))();
          v14 = 1;
        }

        if (*v12 == -1)
        {
          break;
        }

        v15 = *(v12 + 8);
        if (*(v12 + 8))
        {
          v13 = (v13 + v15);
          *(*(a1[8] + 8) + 24) = *v12;
          v12 += v15;
          if (v13 < a3)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      *(*(a1[7] + 8) + 24) = 1;
    }

LABEL_20:
    *(*(a1[9] + 8) + 24) = a4;
  }
}

- (id)loadContents
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D23DB0] newWithComparitor:&__block_literal_global_1];
  v4 = [MEMORY[0x277D23DB0] newWithComparitor:&__block_literal_global_12];
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(LiveFSFPItemHelper *)self->_enumeratedItem fh];
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_DEFAULT, "Reading dir with fh %@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__LiveFSFPEnumeratorDataContainer_loadContents__block_invoke_13;
  v18[3] = &unk_27981ADA8;
  v19 = v3;
  v20 = v4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__LiveFSFPEnumeratorDataContainer_loadContents__block_invoke_2_15;
  v15[3] = &unk_27981ADD0;
  v7 = v19;
  v16 = v7;
  v8 = v20;
  v17 = v8;
  v9 = [(LiveFSFPEnumeratorDataContainer *)self readDirBuffersForBufferBlock:v18 andEntryBlock:v15];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = self;
    objc_sync_enter(v12);
    objc_storeStrong(&v12->_contentsSortedByName, v3);
    objc_storeStrong(&v12->_contentsSortedByDate, v4);
    objc_sync_exit(v12);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __47__LiveFSFPEnumeratorDataContainer_loadContents__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 112);
  v4 = *(a3 + 112);
  v5 = v3 <= v4;
  if (v3 == v4)
  {
    v6 = *(a2 + 120);
    v7 = *(a3 + 120);
    v5 = v6 <= v7;
    if (v6 == v7)
    {
      return strcmp((a2 + *(a2 + 10)), (a3 + *(a3 + 10)));
    }
  }

  if (v5)
  {
    return 1;
  }

  return -1;
}

void __47__LiveFSFPEnumeratorDataContainer_loadContents__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addDataBuffer:v4];
  [*(a1 + 40) addDataBuffer:v4];
}

void __47__LiveFSFPEnumeratorDataContainer_loadContents__block_invoke_2_15(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addEntry:a2];
  [*(a1 + 40) addEntry:a2];
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_DEFAULT, "Done adding %p", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)ensureConnectedForUpdates
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    containerID = v2->_containerID;
    v5 = [(LiveFSFPItemHelper *)v2->_enumeratedItem fh];
    isActive = v2->isActive;
    *buf = 138413058;
    *&buf[4] = containerID;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 1024;
    LODWORD(v32) = isActive;
    WORD2(v32) = 2112;
    *(&v32 + 6) = v2;
    _os_log_impl(&dword_255FE9000, v3, OS_LOG_TYPE_INFO, "Setting up for updates on %@ fh %@ active %d dc %@", buf, 0x26u);
  }

  if (v2->isActive)
  {
    v7 = 0;
  }

  else
  {
    v8 = v2->ext;
    objc_sync_enter(v8);
    v9 = [(LiveFSFPExtensionHelper *)v2->ext serviceClient];
    v10 = [(LiveFSFPItemHelper *)v2->_enumeratedItem fh];
    v11 = [v9 LISCAddUpdateHandler:v2 forInterestedItem:v10];

    objc_sync_exit(v8);
    if (v11 == 17)
    {
      v12 = livefs_std_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [(LiveFSFPItemHelper *)v2->_enumeratedItem fh];
        [(LiveFSFPEnumeratorDataContainer *)v13 ensureConnectedForUpdates];
      }

      v7 = 0;
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&v32 = __Block_byref_object_copy__2;
      *(&v32 + 1) = __Block_byref_object_dispose__2;
      v33 = 0;
      v14 = [(LiveFSFPExtensionHelper *)v2->ext conn];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __60__LiveFSFPEnumeratorDataContainer_ensureConnectedForUpdates__block_invoke;
      v30[3] = &unk_27981A740;
      v30[4] = buf;
      v12 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v30];

      v15 = [(LiveFSFPItemHelper *)v2->_enumeratedItem fh];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __60__LiveFSFPEnumeratorDataContainer_ensureConnectedForUpdates__block_invoke_2;
      v29[3] = &unk_27981A740;
      v29[4] = buf;
      [v12 setUpdateInterest:v15 interest:1 requestID:-1 reply:v29];

      v16 = *&buf[8];
      if (*(*&buf[8] + 40))
      {
        v17 = livefs_std_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(LiveFSFPEnumeratorDataContainer *)v2 ensureConnectedForUpdates:v17];
        }

        v24 = v2->ext;
        objc_sync_enter(v24);
        v25 = [(LiveFSFPExtensionHelper *)v2->ext serviceClient];
        v26 = [(LiveFSFPItemHelper *)v2->_enumeratedItem fh];
        [v25 LISCDropUpdateHandlerForInterestedItem:v26];

        objc_sync_exit(v24);
        v16 = *&buf[8];
      }

      else
      {
        v2->isActive = 1;
      }

      v7 = *(v16 + 40);
      _Block_object_dispose(buf, 8);
    }
  }

  objc_sync_exit(v2);

  v27 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)doProcessItemDeleted:(id)a3
{
  v7 = a3;
  v4 = self->ext;
  objc_sync_enter(v4);
  v5 = [(LiveFSFPExtensionHelper *)self->ext getItemForFileHandle:v7];
  v6 = v5;
  if (v5)
  {
    [v5 setItemDeleted];
  }

  objc_sync_exit(v4);
}

- (void)doProcessItemUpdated:(id)a3
{
  v3 = [(LiveFSFPExtensionHelper *)self->ext itemForIdentifier:a3 error:0];
  if (v3)
  {
    v4 = v3;
    [v3 setAttributesStale];
    v3 = v4;
  }
}

- (void)applyParentUpdateAcrossEnumerators
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSPointerArray *)v2->ourEnumerators copy];
  objc_sync_exit(v2);

  [v3 compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v11 + 1) + 8 * v8);

        [v6 setAddParent:{1, v11}];
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if (![v4 count])
  {
    v2->_addParent = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)resetAllEnumerators
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSPointerArray *)v2->ourEnumerators copy];
  objc_sync_exit(v2);

  [v3 compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v11 + 1) + 8 * v8);

        [v6 resetHistory];
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)makeAllEnumeratorsDead
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    enumeratedItem = self->_enumeratedItem;
    if (enumeratedItem)
    {
      v5 = [(LiveFSFPItemHelper *)self->_enumeratedItem filename];
    }

    else
    {
      v5 = @"<no_enumerated_item>";
    }

    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&dword_255FE9000, v3, OS_LOG_TYPE_INFO, "About to bulk-deaden enumerators for name '%@'", buf, 0xCu);
    if (enumeratedItem)
    {
    }
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSPointerArray *)v6->ourEnumerators copy];
  objc_sync_exit(v6);

  [v7 compact];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);

        v10 = v13;
        objc_sync_enter(v10);
        [v10 setState:{3, v15}];
        objc_sync_exit(v10);
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleEnumeratedItemChanged
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  contentsSortedByDate = v2->_contentsSortedByDate;
  v2->_contentsSortedByDate = 0;

  contentsSortedByName = v2->_contentsSortedByName;
  v2->_contentsSortedByName = 0;

  objc_sync_exit(v2);
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    containerID = v2->_containerID;
    *buf = 136315394;
    v14 = "[LiveFSFPEnumeratorDataContainer handleEnumeratedItemChanged]";
    v15 = 2112;
    v16 = containerID;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_DEFAULT, "%s: blasted dir contents for %@", buf, 0x16u);
  }

  [(LiveFSFPItemHelper *)v2->_enumeratedItem setAttributesStale];
  v7 = MEMORY[0x277CC64A8];
  v8 = [(NSFileProviderExtension *)v2->ext domain];
  v9 = [v7 managerForDomain:v8];

  v10 = v2->_containerID;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__LiveFSFPEnumeratorDataContainer_handleEnumeratedItemChanged__block_invoke;
  v12[3] = &unk_27981ADF8;
  v12[4] = v2;
  [v9 signalEnumeratorForContainerItemIdentifier:v10 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __62__LiveFSFPEnumeratorDataContainer_handleEnumeratedItemChanged__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__LiveFSFPEnumeratorDataContainer_handleEnumeratedItemChanged__block_invoke_cold_1();
    }
  }

  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 16);
    v8 = 136315394;
    v9 = "[LiveFSFPEnumeratorDataContainer handleEnumeratedItemChanged]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_DEFAULT, "%s: posted for container %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deletedItem:(id)a3 name:(id)a4 how:(int)a5 interestedItem:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  updateQueue = self->updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__LiveFSFPEnumeratorDataContainer_deletedItem_name_how_interestedItem___block_invoke;
  block[3] = &unk_27981A6A0;
  v18 = v11;
  v19 = v10;
  v22 = a5;
  v20 = v12;
  v21 = self;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(updateQueue, block);
}

uint64_t __71__LiveFSFPEnumeratorDataContainer_deletedItem_name_how_interestedItem___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v8 = 136315906;
    v9 = "[LiveFSFPEnumeratorDataContainer deletedItem:name:how:interestedItem:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_255FE9000, v2, OS_LOG_TYPE_INFO, "%s: starting for name %@ item %@ how %d", &v8, 0x26u);
  }

  [*(a1 + 56) applyDeleteAcrossEnumerators:*(a1 + 40) newTombstone:*(*(a1 + 56) + 64) toSelf:{objc_msgSend(*(a1 + 40), "isEqualToString:", *(a1 + 48))}];
  [*(a1 + 56) doProcessItemDeleted:*(a1 + 40)];
  result = [*(a1 + 56) handleEnumeratedItemChanged];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deletedName:(id)a3 item:(id)a4 how:(int)a5 interestedItem:(id)a6
{
  v9 = a3;
  v10 = a4;
  updateQueue = self->updateQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__LiveFSFPEnumeratorDataContainer_deletedName_item_how_interestedItem___block_invoke;
  v14[3] = &unk_27981AE20;
  v15 = v9;
  v16 = v10;
  v18 = a5;
  v17 = self;
  v12 = v10;
  v13 = v9;
  dispatch_async(updateQueue, v14);
}

uint64_t __71__LiveFSFPEnumeratorDataContainer_deletedName_item_how_interestedItem___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v8 = 136315906;
    v9 = "[LiveFSFPEnumeratorDataContainer deletedName:item:how:interestedItem:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_255FE9000, v2, OS_LOG_TYPE_INFO, "%s: starting for name %@ item %@ how %d", &v8, 0x26u);
  }

  [*(a1 + 48) applyDeleteAcrossEnumerators:*(a1 + 32) newTombstone:*(a1 + 32) toSelf:0];
  [*(a1 + 48) doProcessItemDeleted:*(a1 + 40)];
  result = [*(a1 + 48) handleEnumeratedItemChanged];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updatesDoneFor:(id)a3
{
  updateQueue = self->updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__LiveFSFPEnumeratorDataContainer_updatesDoneFor___block_invoke;
  block[3] = &unk_27981A880;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

uint64_t __50__LiveFSFPEnumeratorDataContainer_updatesDoneFor___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[LiveFSFPEnumeratorDataContainer updatesDoneFor:]_block_invoke";
    _os_log_impl(&dword_255FE9000, v2, OS_LOG_TYPE_DEFAULT, "%s: about to deaden", &v5, 0xCu);
  }

  result = [*(a1 + 32) makeAllEnumeratorsDead];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)historyResetItem:(id)a3 interestedItem:(id)a4
{
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_isVolumeWide)
  {
    v4->historyReset = 1;
  }

  objc_sync_exit(v4);

  updateQueue = v4->updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__LiveFSFPEnumeratorDataContainer_historyResetItem_interestedItem___block_invoke;
  block[3] = &unk_27981A880;
  block[4] = v4;
  dispatch_async(updateQueue, block);
}

uint64_t __67__LiveFSFPEnumeratorDataContainer_historyResetItem_interestedItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetAllEnumerators];
  v2 = *(a1 + 32);

  return [v2 handleEnumeratedItemChanged];
}

- (void)historyResetName:(id)a3 interestedItem:(id)a4
{
  updateQueue = self->updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__LiveFSFPEnumeratorDataContainer_historyResetName_interestedItem___block_invoke;
  block[3] = &unk_27981A880;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

uint64_t __67__LiveFSFPEnumeratorDataContainer_historyResetName_interestedItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  objc_sync_exit(v2);

  v3 = *(a1 + 32);

  return [v3 handleEnumeratedItemChanged];
}

- (void)renamedItem:(id)a3 named:(id)a4 fromDirectory:(id)a5 intoDirectory:(id)a6 newName:(id)a7 atopItem:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  updateQueue = self->updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__LiveFSFPEnumeratorDataContainer_renamedItem_named_fromDirectory_intoDirectory_newName_atopItem___block_invoke;
  block[3] = &unk_27981AE48;
  block[4] = self;
  v28 = v14;
  v29 = v16;
  v30 = v17;
  v31 = v19;
  v32 = v18;
  v33 = v15;
  v21 = v15;
  v22 = v18;
  v23 = v19;
  v24 = v17;
  v25 = v16;
  v26 = v14;
  dispatch_async(updateQueue, block);
}

void __98__LiveFSFPEnumeratorDataContainer_renamedItem_named_fromDirectory_intoDirectory_newName_atopItem___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) extension];
  v3 = [v2 enumeratorHelperQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__LiveFSFPEnumeratorDataContainer_renamedItem_named_fromDirectory_intoDirectory_newName_atopItem___block_invoke_2;
  block[3] = &unk_27981AE48;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  dispatch_sync(v3, block);
}

void __98__LiveFSFPEnumeratorDataContainer_renamedItem_named_fromDirectory_intoDirectory_newName_atopItem___block_invoke_2(void *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 56) extension];
  objc_sync_enter(v2);
  v3 = [v2 getItemForFileHandle:a1[5]];
  v4 = [v2 getItemForFileHandle:a1[6]];
  v37 = [v2 getItemForFileHandle:a1[7]];
  if (a1[8])
  {
    v5 = [v2 getItemForFileHandle:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 container];
  v7 = [v4 container];
  v36 = [v37 container];
  if (v5)
  {
    v8 = [v5 container];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v2);

  v9 = a1[4];
  v13 = v9 == v6 || v9 == v7 || v9 == v36 || v9 == v8;
  v14 = livefs_std_log();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v39 = v6;
      v40 = 2112;
      v41 = v7;
      v42 = 2112;
      v43 = v36;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_255FE9000, v15, OS_LOG_TYPE_DEFAULT, "Containers 1 %@, 2 %@, 3 %@, 4 %@", buf, 0x2Au);
    }

    if (!v4 || v6 || v7)
    {
      if (v7)
      {
        if (v8)
        {
          obj = v2;
          objc_sync_enter(obj);
          v23 = v8[7];
          v34 = v23;
          objc_storeStrong(v8 + 7, v7[7]);
          objc_storeStrong(v7 + 7, v23);
          v24 = [obj serviceClient];
          [v24 LISCDropUpdateHandlerForInterestedItem:a1[6]];

          v25 = [obj serviceClient];
          [v25 LISCDropUpdateHandlerForInterestedItem:a1[8]];

          v26 = [obj serviceClient];
          [v26 LISCAddUpdateHandler:v8 forInterestedItem:a1[6]];

          [v7[7] setContainer:v7];
          [v8[7] setContainer:v8];
          objc_sync_exit(obj);
        }

        v27 = v7;
        objc_sync_enter(v27);
        [v27 doShutdownOnEnumeratorHelperQueue];
        objc_sync_exit(v27);

        [v27 applyDeleteAcrossEnumerators:@"not needed as this is a self delete" newTombstone:v27[8] toSelf:1];
        [v27 makeAllEnumeratorsDead];
        goto LABEL_38;
      }
    }

    else
    {
      [v4 setAttributesStale];
    }

    if (v8)
    {
      if (v4)
      {
        v28 = v2;
        objc_sync_enter(v28);
        if (v5)
        {
          [v5 setItemDeleted];
        }

        [v4 setNewParent:v37 andName:a1[9]];
        objc_sync_exit(v28);

        v5 = 0;
      }

      else
      {
        v4 = [v2 itemAtPath:a1[9] parent:v37];
      }

      v30 = v8;
      objc_sync_enter(v30);
      [v30 doShutdownOnEnumeratorHelperQueue];
      objc_sync_exit(v30);

      objc_storeStrong(v30 + 7, v4);
      [v4 setContainer:v30];
      v31 = [v30 ensureConnectedForUpdates];
      v29 = 1;
      if (!v6)
      {
        goto LABEL_43;
      }

LABEL_42:
      [v6 applyDeleteAcrossEnumerators:a1[10] newTombstone:a1[10] toSelf:0];
LABEL_43:
      if (v36)
      {
        [v36 applyAddAcrossEnumerators:a1[9] newName:a1[9] forSelf:0];
      }

      if (v3)
      {
        [v3 setAttributesStale];
      }

      if (v37 && v3 != v37)
      {
        [v37 setAttributesStale];
      }

      v32 = v2;
      objc_sync_enter(v32);
      if (v5)
      {
        [v5 recursivelySetChildrenDeleted];
        [v5 setItemDeleted];
      }

      if (v37 && v4)
      {
        if ((v29 & 1) == 0)
        {
          [v4 setNewParent:v37 andName:a1[9]];
        }
      }

      else if (v4)
      {
        [v4 recursivelySetChildrenDeleted];
        [v4 setItemDeleted];
      }

      objc_sync_exit(v32);

      if (v3)
      {
        [v3 performBlocksForRename:a1[10] onEHQueue:1];
      }

      if (v6)
      {
        [v6 handleEnumeratedItemChanged];
      }

      if (v7)
      {
        [v7 handleEnumeratedItemChanged];
      }

      if (v36)
      {
        [v36 handleEnumeratedItemChanged];
      }

      if (v8)
      {
        [v8 handleEnumeratedItemChanged];
      }

      goto LABEL_68;
    }

LABEL_38:
    v29 = 0;
    if (!v6)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __98__LiveFSFPEnumeratorDataContainer_renamedItem_named_fromDirectory_intoDirectory_newName_atopItem___block_invoke_2_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_68:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)updatedItem:(id)a3 name:(id)a4 interestedItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  updateQueue = self->updateQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__LiveFSFPEnumeratorDataContainer_updatedItem_name_interestedItem___block_invoke;
  v15[3] = &unk_27981AE70;
  v16 = v8;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(updateQueue, v15);
}

void __67__LiveFSFPEnumeratorDataContainer_updatedItem_name_interestedItem___block_invoke(uint64_t a1)
{
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__LiveFSFPEnumeratorDataContainer_updatedItem_name_interestedItem___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) isEqualToString:*(a1 + 40)];
  [*(a1 + 48) applyAddAcrossEnumerators:*(a1 + 32) newName:*(a1 + 56) forSelf:v3];
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = [*(v4 + 8) itemAtPath:*(a1 + 56) parent:*(v4 + 56)];
  }

  v6 = v5;
  if (v5)
  {
    [v5 setAttributesStale];
  }

  [*(a1 + 48) handleEnumeratedItemChanged];
}

- (void)updatedName:(id)a3 interestedItem:(id)a4
{
  v5 = a3;
  updateQueue = self->updateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__LiveFSFPEnumeratorDataContainer_updatedName_interestedItem___block_invoke;
  v8[3] = &unk_27981A8F8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(updateQueue, v8);
}

void __62__LiveFSFPEnumeratorDataContainer_updatedName_interestedItem___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[LiveFSFPEnumeratorDataContainer updatedName:interestedItem:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_255FE9000, v2, OS_LOG_TYPE_DEFAULT, "%s: starting for name %@", &v7, 0x16u);
  }

  v4 = [*(*(a1 + 40) + 8) itemAtPath:*(a1 + 32) parent:*(*(a1 + 40) + 56)];
  v5 = v4;
  if (v4)
  {
    [v4 setAttributesStale];
  }

  [*(a1 + 40) applyAddAcrossEnumerators:*(a1 + 32) newName:*(a1 + 32) forSelf:0];
  [*(a1 + 40) handleEnumeratedItemChanged];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)volumeWideDeletedName:(id)a3 interestedItem:(id)a4
{
  v5 = a3;
  updateQueue = self->updateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__LiveFSFPEnumeratorDataContainer_volumeWideDeletedName_interestedItem___block_invoke;
  v8[3] = &unk_27981A8F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(updateQueue, v8);
}

uint64_t __72__LiveFSFPEnumeratorDataContainer_volumeWideDeletedName_interestedItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) applyDeleteAcrossEnumerators:*(a1 + 40) newTombstone:*(a1 + 40) toSelf:0];
  v2 = *(a1 + 32);

  return [v2 handleEnumeratedItemChanged];
}

- (void)volumeWideUpdatedName:(id)a3 interestedItem:(id)a4
{
  v5 = a3;
  updateQueue = self->updateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__LiveFSFPEnumeratorDataContainer_volumeWideUpdatedName_interestedItem___block_invoke;
  v8[3] = &unk_27981A8F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(updateQueue, v8);
}

uint64_t __72__LiveFSFPEnumeratorDataContainer_volumeWideUpdatedName_interestedItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) applyAddAcrossEnumerators:*(a1 + 40) newName:*(a1 + 40) forSelf:0];
  v2 = *(a1 + 32);

  return [v2 handleEnumeratedItemChanged];
}

- (void)initWithEnumeratedItem:(uint64_t)a1 fileHandle:(void *)a2 extension:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [a2 path];
  v7 = [a2 itemIdentifier];
  v11 = 134218754;
  v12 = a1;
  OUTLINED_FUNCTION_6();
  v13 = v6;
  v14 = 2048;
  v15 = a2;
  v16 = v8;
  v17 = v9;
  _os_log_debug_impl(&dword_255FE9000, a3, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: Creating enumerator for %@[%p] id %@", &v11, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dropInterestForEnumeratedItem:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_255FE9000, log, OS_LOG_TYPE_ERROR, "Error clearing interest in updates on enumerator for %@", buf, 0xCu);
}

- (void)readDirBuffersForBufferBlock:andEntryBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__LiveFSFPEnumeratorDataContainer_readDirBuffersForBufferBlock_andEntryBlock___block_invoke_2_cold_1(int a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[LiveFSFPEnumeratorDataContainer readDirBuffersForBufferBlock:andEntryBlock:]_block_invoke_2";
  v6 = 1024;
  v7 = a1;
  v8 = 2048;
  v9 = a2;
  _os_log_debug_impl(&dword_255FE9000, log, OS_LOG_TYPE_DEBUG, "%s: ReadDir got result %d, bytes %zd", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)ensureConnectedForUpdates
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_255FE9000, log, OS_LOG_TYPE_DEBUG, "Got eexist for fh %@", buf, 0xCu);
}

void __62__LiveFSFPEnumeratorDataContainer_handleEnumeratedItemChanged__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_255FE9000, v0, v1, "Error posting update: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__LiveFSFPEnumeratorDataContainer_renamedItem_named_fromDirectory_intoDirectory_newName_atopItem___block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1(&dword_255FE9000, a1, a3, "%s: Lost race condition handling rename updates. Exiting.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__LiveFSFPEnumeratorDataContainer_updatedItem_name_interestedItem___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end