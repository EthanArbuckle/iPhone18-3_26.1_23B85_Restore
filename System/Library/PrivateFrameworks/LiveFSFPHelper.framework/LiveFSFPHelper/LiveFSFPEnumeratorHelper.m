@interface LiveFSFPEnumeratorHelper
+ (id)newWithEnumeratedItem:(id)a3 extension:(id)a4 error:(id *)a5;
+ (void)applyParentUpdateAcrossEnumerators:(id)a3;
- (LiveFSFPEnumeratorHelper)initWithEnumeratedItem:(id)a3 container:(id)a4 extension:(id)a5;
- (id)getDirContents;
- (id)getItemsFromTree:(id)a3 inRange:(_NSRange)a4 error:(id *)a5;
- (id)initForExtension:(id)a3 item:(id)a4;
- (void)addInterestedItem:(id)a3 newName:(id)a4 forSelf:(BOOL)a5;
- (void)applyDelete:(id)a3 newTombstone:(id)a4 toSelf:(BOOL)a5;
- (void)currentSyncAnchorWithCompletionHandler:(id)a3;
- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4;
- (void)enumerateFileItemsForObserver:(id)a3 startingAtPage:(id)a4;
- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
- (void)invalidate;
- (void)reallyEnumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
- (void)resetHistory;
- (void)synchronizedEnumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4;
@end

@implementation LiveFSFPEnumeratorHelper

- (id)initForExtension:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = LiveFSFPEnumeratorHelper;
  v9 = [(LiveFSFPEnumeratorHelper *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->ext, a3);
    objc_storeStrong(&v10->_enumeratedItem, a4);
    v10->_state = 0;
    *&v10->historyReset = 0;
    v11 = objc_opt_new();
    updatedItems = v10->updatedItems;
    v10->updatedItems = v11;

    v13 = objc_opt_new();
    deletedItems = v10->deletedItems;
    v10->deletedItems = v13;

    v10->_addParent = [(LiveFSFPExtensionHelper *)v10->ext fetchRoot];
  }

  return v10;
}

- (LiveFSFPEnumeratorHelper)initWithEnumeratedItem:(id)a3 container:(id)a4 extension:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(LiveFSFPEnumeratorHelper *)self initForExtension:a5 item:v8];
  if (v10)
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 path];
      v13 = [v8 itemIdentifier];
      v17 = 134218754;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      v21 = 2048;
      v22 = v8;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_DEFAULT, "enumerator helper[%p]: Creating enumerator for %@[%p] id %@", &v17, 0x2Au);
    }

    objc_storeStrong(&v10->_dc, a4);
    v10->_hasPersistentIDs = [(LiveFSFPEnumeratorDataContainer *)v10->_dc hasPersistentIDs];
    v10->_isDir = [(LiveFSFPEnumeratorDataContainer *)v10->_dc isDir];
    v10->_isVolumeWide = [(LiveFSFPEnumeratorDataContainer *)v10->_dc isVolumeWide];
    if ([(LiveFSFPExtensionHelper *)v10->ext fetchRoot])
    {
      v14 = 1;
    }

    else
    {
      v14 = [v9 addParent];
    }

    v10->_addParent = v14;
    [(LiveFSFPEnumeratorDataContainer *)v10->_dc addEnumerator:v10];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)newWithEnumeratedItem:(id)a3 extension:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__2;
  v43 = __Block_byref_object_dispose__2;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v10 = [v9 enumeratorHelperQueue];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __66__LiveFSFPEnumeratorHelper_newWithEnumeratedItem_extension_error___block_invoke;
  v20 = &unk_27981AE98;
  v11 = v9;
  v21 = v11;
  v23 = &v39;
  v12 = v8;
  v22 = v12;
  v24 = &v33;
  v25 = &v27;
  v26 = a5;
  dispatch_sync(v10, &v17);

  v13 = v28[5];
  if (v13)
  {
    v14 = 0;
    if (a5)
    {
      *a5 = v13;
    }
  }

  else
  {
    v15 = [a1 alloc];
    v14 = [v15 initWithEnumeratedItem:v34[5] container:v40[5] extension:{v11, v17, v18, v19, v20, v21}];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  return v14;
}

void __66__LiveFSFPEnumeratorHelper_newWithEnumeratedItem_extension_error___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) getEnumeratorForContainer:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_sync_exit(v2);
  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v6)
  {
    v7 = [v6 enumeratedItem];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
    v10 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v11 = [*(a1 + 32) itemForIdentifier:*(a1 + 40) error:*(a1 + 72)];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(*(a1 + 56) + 8) + 40);
    if (v14 && ([v14 ensureFileHandleOrError:*(a1 + 72)] & 1) == 0)
    {
      v15 = *(a1 + 32);
      objc_sync_enter(v15);
      v16 = [*(*(*(a1 + 56) + 8) + 40) container];

      if (v16)
      {
        v17 = livefs_std_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          __66__LiveFSFPEnumeratorHelper_newWithEnumeratedItem_extension_error___block_invoke_cold_1((a1 + 40), v17);
        }

        v18 = [*(*(*(a1 + 56) + 8) + 40) container];
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;
      }

      else
      {
        v21 = [[LiveFSFPEnumeratorDataContainer alloc] initWithEnumeratedItem:*(*(*(a1 + 56) + 8) + 40) fileHandle:*(a1 + 40) extension:*(a1 + 32)];
        v22 = *(*(a1 + 48) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;
      }

      v24 = *(*(*(a1 + 48) + 8) + 40);
      if (v24)
      {
        [*(a1 + 32) addDirContainer:v24 forContainerID:*(a1 + 40)];
        [*(*(*(a1 + 48) + 8) + 40) setAddedToExtension:1];
        [*(*(*(a1 + 48) + 8) + 40) setEnumeratedItemID:*(a1 + 40)];
        v25 = livefs_std_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = *(a1 + 40);
          v27 = *(*(*(a1 + 48) + 8) + 40);
          v31 = 138412546;
          v32 = v27;
          v33 = 2112;
          v34 = v26;
          _os_log_impl(&dword_255FE9000, v25, OS_LOG_TYPE_INFO, "Added new dc %@ id %@", &v31, 0x16u);
        }
      }

      else
      {
        v28 = getNSErrorFromLiveFSErrno();
        v29 = *(*(a1 + 64) + 8);
        v25 = *(v29 + 40);
        *(v29 + 40) = v28;
      }

      objc_sync_exit(v15);
    }

    v30 = *MEMORY[0x277D85DE8];
  }
}

- (void)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
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

    v8 = 136315394;
    v9 = "[LiveFSFPEnumeratorHelper invalidate]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_255FE9000, v3, OS_LOG_TYPE_DEFAULT, "%s: marking state as DEAD, name '%@'", &v8, 0x16u);
    if (enumeratedItem)
    {
    }
  }

  v6 = self;
  objc_sync_enter(v6);
  v6->_state = 3;
  [(LiveFSFPEnumeratorDataContainer *)v6->_dc dropEnumerator:v6];
  objc_sync_exit(v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getDirContents
{
  sortedByDate = self->_sortedByDate;
  dc = self->_dc;
  if (sortedByDate)
  {
    [(LiveFSFPEnumeratorDataContainer *)dc contentsSortedByDate];
  }

  else
  {
    [(LiveFSFPEnumeratorDataContainer *)dc contentsSortedByName];
  }
  v4 = ;

  return v4;
}

- (id)getItemsFromTree:(id)a3 inRange:(_NSRange)a4 error:(id *)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = self->ext;
  objc_sync_enter(v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__LiveFSFPEnumeratorHelper_getItemsFromTree_inRange_error___block_invoke;
  v12[3] = &unk_27981AEC0;
  v12[4] = self;
  v10 = [v8 extractItemsInRange:location withBlock:{length, v12}];
  objc_sync_exit(v9);

  return v10;
}

id __59__LiveFSFPEnumeratorHelper_getItemsFromTree_inRange_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2 + *(a2 + 10)];
  v6 = [*(*(a1 + 32) + 8) getItemForParent:*(*(a1 + 32) + 56) name:v5];
  if (!v6)
  {
    v7 = *(*(a1 + 32) + 56);
    v8 = objc_opt_class();
    if (*(a2 + 10) >= 0xB8u)
    {
      v9 = 184;
    }

    else
    {
      v9 = *(a2 + 10);
    }

    v10 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + 16 length:v9];
    v6 = [v8 newItemForFH:0 withReference:0 name:v5 parent:*(*(a1 + 32) + 56) type:v4 attrs:v10 extension:*(*(a1 + 32) + 8)];
  }

  [v6 prefetchXattrBasedValues];

  return v6;
}

- (void)enumerateFileItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  state = self->_state;
  if (state)
  {
    if (state == 3)
    {
      v9 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:89];
      v10 = livefs_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPEnumeratorHelper enumerateFileItemsForObserver:startingAtPage:];
      }

LABEL_13:

      [v6 finishEnumeratingWithError:v9];
      goto LABEL_14;
    }
  }

  else
  {
    self->_state = 2;
  }

  if (!self->_enumeratedItem)
  {
    dc = self->_dc;
    if (dc)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [(LiveFSFPEnumeratorDataContainer *)dc containerID];
      v9 = [v13 fileProviderErrorForNonExistentItemWithIdentifier:v14];
    }

    else
    {
      v9 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:2];
    }

    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPEnumeratorHelper enumerateFileItemsForObserver:startingAtPage:];
    }

    goto LABEL_13;
  }

  v16[0] = self->_enumeratedItem;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v6 didEnumerateItems:v11];

  [v6 finishEnumeratingUpToPage:0];
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reallyEnumerateItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v38[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32 = 0;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPEnumeratorHelper reallyEnumerateItemsForObserver:? startingAtPage:?];
  }

  if (!self->_state)
  {
    v14 = [(LiveFSFPEnumeratorDataContainer *)self->_dc ensureConnectedForUpdates];
    if (v14)
    {
      [v6 finishEnumeratingWithError:v14];

      goto LABEL_48;
    }
  }

  if (self->_isDir)
  {
    v9 = self;
    objc_sync_enter(v9);
    state = self->_state;
    if (state)
    {
      if (state == 3)
      {
        v11 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:89];
        v12 = livefs_std_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [LiveFSFPEnumeratorHelper enumerateFileItemsForObserver:startingAtPage:];
        }

        [v6 finishEnumeratingWithError:v11];
LABEL_10:
        v13 = 0;
LABEL_47:
        objc_sync_exit(v9);

        goto LABEL_48;
      }
    }

    else if ([v7 isEqual:*MEMORY[0x277CC6328]])
    {
      self->_state = 1;
    }

    else if ([v7 isEqual:*MEMORY[0x277CC6320]])
    {
      self->_state = 1;
      v9->_sortedByDate = 1;
    }

    else if (!self->_state)
    {
      v30 = livefs_std_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPEnumeratorHelper reallyEnumerateItemsForObserver:startingAtPage:];
      }

      self->_state = 3;
      v11 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
      [v6 finishEnumeratingWithError:v11];
      goto LABEL_10;
    }

    v13 = [(LiveFSFPEnumeratorHelper *)v9 getDirContents];
    if (!v13)
    {
      v15 = [(LiveFSFPEnumeratorDataContainer *)v9->_dc loadContents];
      v13 = [(LiveFSFPEnumeratorHelper *)v9 getDirContents];
    }

    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v34 = v9;
      v35 = 2112;
      v36 = v13;
      v37 = 2048;
      v38[0] = [v13 count];
      _os_log_debug_impl(&dword_255FE9000, v16, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: dirContent: %@, count: %lu", buf, 0x20u);
    }

    if (([v7 isEqual:*MEMORY[0x277CC6328]] & 1) != 0 || objc_msgSend(v7, "isEqual:", *MEMORY[0x277CC6320]))
    {
      LODWORD(v17) = 0;
      v32 = 0;
    }

    else if ([v7 length] != 4 || (v25 = v7, v17 = *objc_msgSend(v7, "bytes"), v32 = v17, (v17 & 0x3F) != 0) || objc_msgSend(v13, "count") <= v17)
    {
      v11 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
      [v6 finishEnumeratingWithError:v11];
      goto LABEL_47;
    }

    v18 = [v13 count];
    v19 = (v17 + 64);
    if (v18 <= v19)
    {
      v20 = [v13 count] - v17;
    }

    else
    {
      v20 = 64;
    }

    v21 = livefs_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v34 = v9;
      v35 = 2048;
      v36 = v17;
      v37 = 2048;
      v38[0] = v20;
      _os_log_debug_impl(&dword_255FE9000, v21, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: range: %lu -> %lu", buf, 0x20u);
    }

    v31 = 0;
    v22 = [(LiveFSFPEnumeratorHelper *)v9 getItemsFromTree:v13 inRange:v17 error:v20, &v31];
    v11 = v31;
    if (!v22)
    {
      [v6 finishEnumeratingWithError:v11];
      goto LABEL_47;
    }

    if ([(LiveFSFPEnumeratorDataContainer *)v9->_dc addParent])
    {
      v23 = [MEMORY[0x277CBEB18] arrayWithArray:v22];
      [v23 addObject:v9->_enumeratedItem];
      v24 = v23;

      [(LiveFSFPEnumeratorDataContainer *)v9->_dc setAddParent:0];
    }

    else
    {
      v24 = v22;
    }

    [v6 didEnumerateItems:v24];
    if (v18 <= v19)
    {
      [v6 finishEnumeratingUpToPage:0];
      v27 = 1;
    }

    else
    {
      v32 = v19;
      v26 = [MEMORY[0x277CBEA90] dataWithBytes:&v32 length:4];
      [v6 finishEnumeratingUpToPage:v26];

      v27 = 0;
    }

    objc_sync_exit(v9);

    v28 = livefs_std_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v34 = v9;
      v35 = 2080;
      v36 = "[LiveFSFPEnumeratorHelper reallyEnumerateItemsForObserver:startingAtPage:]";
      v37 = 1024;
      LODWORD(v38[0]) = v32;
      WORD2(v38[0]) = 1024;
      *(v38 + 6) = v27;
      _os_log_impl(&dword_255FE9000, v28, OS_LOG_TYPE_INFO, "enumerator helper[%p]: %s ending, start: %d, lastPage: %d", buf, 0x22u);
    }
  }

  else
  {
    [(LiveFSFPEnumeratorHelper *)self enumerateFileItemsForObserver:v6 startingAtPage:v7];
  }

LABEL_48:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[LiveFSFPEnumeratorHelper enumerateItemsForObserver:startingAtPage:]";
    v18 = 2048;
    v19 = self;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_INFO, "%s: starting on %p", buf, 0x16u);
  }

  dc = self->_dc;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__LiveFSFPEnumeratorHelper_enumerateItemsForObserver_startingAtPage___block_invoke;
  v13[3] = &unk_27981A7E0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(LiveFSFPEnumeratorDataContainer *)dc dispatchOntoUpdateQueue:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)currentSyncAnchorWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPEnumeratorHelper currentSyncAnchorWithCompletionHandler:?];
  }

  v6 = self;
  objc_sync_enter(v6);
  if (v6->_state == 3)
  {
    v4[2](v4, 0);
  }

  else
  {
    v7 = currentAnchor();
    (v4)[2](v4, v7);
  }

  objc_sync_exit(v6);
}

- (void)synchronizedEnumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPEnumeratorHelper synchronizedEnumerateChangesForObserver:? fromSyncAnchor:?];
  }

  v9 = objc_opt_new();
  v10 = self;
  objc_sync_enter(v10);
  if ((*(v10 + 40) & 2) != 0)
  {
    if ([(NSMutableSet *)v10->deletedItems count])
    {
      v12 = [(NSMutableSet *)v10->deletedItems allObjects];
    }

    else
    {
      v12 = &unk_286815038;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = [v12 objectAtIndexedSubscript:0];
    v11 = [v18 fileProviderErrorForNonExistentItemWithIdentifier:v19];

    [v6 finishEnumeratingWithError:v11];
    goto LABEL_18;
  }

  if (v10->historyReset)
  {
    v10->historyReset = 0;
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1002 userInfo:0];
    [v6 finishEnumeratingWithError:v11];
    v12 = 0;
LABEL_18:

LABEL_19:
    objc_sync_exit(v10);
    goto LABEL_39;
  }

  if (![(NSMutableSet *)v10->deletedItems count]&& ![(NSMutableSet *)v10->updatedItems count]&& (*(v10 + 40) & 1) == 0 && !v10->_addParent)
  {
    v31 = livefs_std_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v31, OS_LOG_TYPE_DEFAULT, "exiting after seeing 0 changes", buf, 2u);
    }

    [v6 finishEnumeratingChangesUpToSyncAnchor:v7 moreComing:0];
    v12 = 0;
    goto LABEL_19;
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    deletedItems = v10->deletedItems;
    updatedItems = v10->updatedItems;
    v16 = -(*(v10 + 40) & 1);
    *buf = 138412802;
    v41 = updatedItems;
    v42 = 2112;
    v43 = deletedItems;
    v44 = 1024;
    LODWORD(v45) = v16;
    _os_log_impl(&dword_255FE9000, v13, OS_LOG_TYPE_DEFAULT, "updateds: %@ deleteds %@ self upd %u", buf, 0x1Cu);
  }

  if ([(NSMutableSet *)v10->updatedItems count])
  {
    v17 = [(NSMutableSet *)v10->updatedItems allObjects];
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  if ([(NSMutableSet *)v10->deletedItems count])
  {
    v20 = [(NSMutableSet *)v10->deletedItems allObjects];
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  v32 = currentAnchor();
  [(NSMutableSet *)v10->updatedItems removeAllObjects];
  [(NSMutableSet *)v10->deletedItems removeAllObjects];
  if (*(v10 + 40))
  {
    *(v10 + 40) &= ~1u;
    [v9 addObject:v10->_enumeratedItem];
  }

  if (v10->_addParent)
  {
    [v9 addObject:v10->_enumeratedItem];
  }

  objc_sync_exit(v10);

  v21 = livefs_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = v17;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&dword_255FE9000, v21, OS_LOG_TYPE_DEFAULT, "About to walk %@ and %@", buf, 0x16u);
  }

  if (v10->_isDir)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke;
    v38[3] = &unk_27981AEE8;
    v38[4] = v10;
    v39 = v9;
    [v17 enumerateObjectsUsingBlock:v38];
    if ([v20 count])
    {
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
      hasPersistentIDs = v10->_hasPersistentIDs;
      v24 = v10->_enumeratedItem;
      v25 = [(LiveFSFPItemHelper *)v10->_enumeratedItem itemIdentifier];
      v26 = [v25 isEqualToString:*MEMORY[0x277CC6348]];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke_150;
      v33[3] = &unk_27981AF10;
      v36 = hasPersistentIDs;
      v34 = v24;
      v37 = v26;
      v27 = v22;
      v35 = v27;
      v28 = v24;
      [v20 enumerateObjectsUsingBlock:v33];
      v12 = v27;
    }

    else
    {
      v12 = v20;
    }
  }

  else
  {
    v12 = v20;
  }

  v29 = livefs_std_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v41 = "[LiveFSFPEnumeratorHelper synchronizedEnumerateChangesForObserver:fromSyncAnchor:]";
    v42 = 2112;
    v43 = v17;
    v44 = 2112;
    v45 = v12;
    v46 = 2112;
    v47 = v9;
    _os_log_impl(&dword_255FE9000, v29, OS_LOG_TYPE_DEFAULT, "%s: exiting with updateIDs %@, tombstones %@, newItems %@", buf, 0x2Au);
  }

  [v6 didDeleteItemsWithIdentifiers:v12];
  [v6 didUpdateItems:v9];
  [v6 finishEnumeratingChangesUpToSyncAnchor:v32 moreComing:0];

  v10 = v17;
LABEL_39:

  v30 = *MEMORY[0x277D85DE8];
}

void __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = a1 + 32;
  v5 = [*(*(a1 + 32) + 8) itemAtPath:v3 parent:*(*(a1 + 32) + 56)];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke_cold_1(v3, v4, v6);
    }
  }
}

void __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 48) == 1)
  {
    v4 = [MEMORY[0x277D23D90] identifierForItem:0 name:v3 parentID:{objc_msgSend(*(a1 + 32), "inodeNum")}];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (*(a1 + 49) == 1)
  {
    v4 = v3;
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) itemIdentifier];
  v5 = [v6 stringByAppendingPathComponent:v7];

LABEL_7:
  [*(a1 + 40) addObject:v5];
}

- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[LiveFSFPEnumeratorHelper enumerateChangesForObserver:fromSyncAnchor:]";
    v18 = 2048;
    v19 = self;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_DEFAULT, "%s: starting on %p", buf, 0x16u);
  }

  ext = self->ext;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__LiveFSFPEnumeratorHelper_enumerateChangesForObserver_fromSyncAnchor___block_invoke;
  v13[3] = &unk_27981A7E0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(LiveFSFPExtensionHelper *)ext dispatchOntoRenameQueue:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addInterestedItem:(id)a3 newName:(id)a4 forSelf:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (v5)
  {
    *(v9 + 40) |= 1u;
  }

  else
  {
    [(NSMutableSet *)v9->deletedItems removeObject:v10];
    [(NSMutableSet *)v9->updatedItems addObject:v8];
  }

  objc_sync_exit(v9);
}

- (void)applyDelete:(id)a3 newTombstone:(id)a4 toSelf:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  if (v5)
  {
    *(v10 + 40) |= 2u;
    [(NSMutableSet *)v10->updatedItems removeAllObjects];
    p_deletedItems = &v10->deletedItems;
    [(NSMutableSet *)v10->deletedItems removeAllObjects];
LABEL_6:
    [*p_deletedItems addObject:v9];
    goto LABEL_10;
  }

  updatedItems = v10->updatedItems;
  if (updatedItems)
  {
    p_deletedItems = &v10->deletedItems;
    if (v10->deletedItems)
    {
      [(NSMutableSet *)updatedItems removeObject:v8];
      goto LABEL_6;
    }
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [LiveFSFPEnumeratorHelper applyDelete:v10 newTombstone:? toSelf:?];
  }

LABEL_10:
  objc_sync_exit(v10);
}

- (void)resetHistory
{
  obj = self;
  objc_sync_enter(obj);
  obj->historyReset = 1;
  objc_sync_exit(obj);
}

+ (void)applyParentUpdateAcrossEnumerators:(id)a3
{
  v3 = a3;
  [v3 applyParentUpdateAcrossEnumerators];
  [v3 handleEnumeratedItemChanged];
}

void __66__LiveFSFPEnumeratorHelper_newWithEnumeratedItem_extension_error___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_255FE9000, a2, OS_LOG_TYPE_FAULT, "Found an item with a dc which isn't indexed for it. item %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)enumerateFileItemsForObserver:startingAtPage:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enumerateFileItemsForObserver:startingAtPage:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v4 = v0;
  _os_log_debug_impl(&dword_255FE9000, v1, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: returning %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)reallyEnumerateItemsForObserver:(uint64_t)a1 startingAtPage:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)reallyEnumerateItemsForObserver:startingAtPage:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentSyncAnchorWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchronizedEnumerateChangesForObserver:(uint64_t)a1 fromSyncAnchor:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  v8 = *(a1 + 40) << 30 >> 31;
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(*a2 + 56) filename];
  v8 = 138412546;
  v9 = a1;
  OUTLINED_FUNCTION_6();
  v10 = v6;
  _os_log_error_impl(&dword_255FE9000, a3, OS_LOG_TYPE_ERROR, "Error finding item %@ in enumerator %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applyDelete:(uint64_t *)a1 newTombstone:(uint64_t)a2 toSelf:.cold.1(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 24);
  v7 = 138412546;
  v8 = v2;
  OUTLINED_FUNCTION_6();
  v9 = v4;
  _os_log_error_impl(&dword_255FE9000, v5, OS_LOG_TYPE_ERROR, "bad updateds: %@ deleteds %@", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end