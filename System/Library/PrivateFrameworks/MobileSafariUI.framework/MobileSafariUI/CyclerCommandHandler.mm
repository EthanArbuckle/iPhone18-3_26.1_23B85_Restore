@interface CyclerCommandHandler
- (BOOL)_isBookmarkSyncEnabled;
- (BOOL)_isSpecialBookmark:(id)bookmark;
- (CyclerCommandHandler)initWithBookmarkCollection:(id)collection;
- (id)_cyclerRepresentationOfBookmark:(id)bookmark;
- (unint64_t)_adjustInsertionIndex:(unint64_t)index forInsertionIntoListWithIdentifier:(int)identifier;
- (void)_startMonitoringSyncStatusWithCompletionHandler:(id)handler;
- (void)_tryToAcquireDatabaseLockWithCompletionHandler:(id)handler;
- (void)clearBookmarksWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)createBookmarkListWithTitle:(id)title inListWithIdentifier:(id)identifier atIndex:(unint64_t)index reply:(id)reply;
- (void)createBookmarkWithTitle:(id)title url:(id)url inListWithIdentifier:(id)identifier atIndex:(unint64_t)index reply:(id)reply;
- (void)databaseLockAcquisitor:(id)acquisitor acquiredLock:(BOOL)lock;
- (void)deleteBookmarkWithIdentifier:(id)identifier reply:(id)reply;
- (void)fetchTopLevelBookmarkList:(id)list;
- (void)moveBookmarkWithIdentifier:(id)identifier intoListWithIdentifier:(id)withIdentifier atIndex:(unint64_t)index reply:(id)reply;
- (void)setTitle:(id)title forBookmarkWithIdentifier:(id)identifier reply:(id)reply;
- (void)setURL:(id)l forBookmarkWithIdentifier:(id)identifier reply:(id)reply;
- (void)syncBookmarksWithCompletionHandler:(id)handler;
@end

@implementation CyclerCommandHandler

- (CyclerCommandHandler)initWithBookmarkCollection:(id)collection
{
  collectionCopy = collection;
  v14.receiver = self;
  v14.super_class = CyclerCommandHandler;
  v6 = [(CyclerCommandHandler *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookmarkCollection, collection);
    array = [MEMORY[0x277CBEB18] array];
    blocksAwaitingDatabaseLock = v7->_blocksAwaitingDatabaseLock;
    v7->_blocksAwaitingDatabaseLock = array;

    v10 = [objc_alloc(MEMORY[0x277D7B528]) initWithWebBookmarkCollectionClass:objc_opt_class()];
    bookmarkDatabaseLockAcquisitor = v7->_bookmarkDatabaseLockAcquisitor;
    v7->_bookmarkDatabaseLockAcquisitor = v10;

    [(WBDatabaseLockAcquisitor *)v7->_bookmarkDatabaseLockAcquisitor setDelegate:v7];
    v12 = v7;
  }

  return v7;
}

- (void)fetchTopLevelBookmarkList:(id)list
{
  listCopy = list;
  rootBookmark = [(WebBookmarkCollection *)self->_bookmarkCollection rootBookmark];
  v5 = [(CyclerCommandHandler *)self _cyclerRepresentationOfBookmark:rootBookmark];

  favoritesFolder = [(WebBookmarkCollection *)self->_bookmarkCollection favoritesFolder];
  if (favoritesFolder)
  {
    v7 = [(CyclerCommandHandler *)self _cyclerRepresentationOfBookmark:favoritesFolder];
    [v5 insertChild:v7 atIndex:0];
  }

  listCopy[2](listCopy, v5);
}

- (void)clearBookmarksWithOptions:(unint64_t)options completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"local and remote";
    if ((options & 1) == 0)
    {
      v8 = @"local";
    }

    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_INFO, "Told to clear %{public}@ bookmarks", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__CyclerCommandHandler_clearBookmarksWithOptions_completionHandler___block_invoke;
  v10[3] = &unk_2781D55E8;
  v13 = options & 1;
  v10[4] = self;
  v11 = handlerCopy;
  optionsCopy = options;
  v9 = handlerCopy;
  [(CyclerCommandHandler *)self _tryToAcquireDatabaseLockWithCompletionHandler:v10];
}

void __68__CyclerCommandHandler_clearBookmarksWithOptions_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __68__CyclerCommandHandler_clearBookmarksWithOptions_completionHandler___block_invoke_cold_1();
    }

    v17 = *(*(a1 + 40) + 16);
LABEL_26:
    v17();
    return;
  }

  if (*(a1 + 56))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v3 = [*(*(a1 + 32) + 8) rootList];
    v4 = [v3 bookmarkArray];

    v5 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(a1 + 32) + 8) deleteBookmark:*(*(&v28 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v6);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [*(*(a1 + 32) + 8) favoritesFolderList];
    v10 = [v9 bookmarkArray];

    v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(a1 + 32) + 8) deleteBookmark:*(*(&v24 + 1) + 8 * j)];
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v12);
    }

    if (![*(*(a1 + 32) + 8) _usesCloudKit] && (*(a1 + 48) & 2) == 0)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __68__CyclerCommandHandler_clearBookmarksWithOptions_completionHandler___block_invoke_8;
      v22[3] = &unk_2781D55C0;
      v15 = *(a1 + 32);
      v23 = *(a1 + 40);
      [v15 syncBookmarksWithCompletionHandler:v22];

      return;
    }

    v17 = *(*(a1 + 40) + 16);
    goto LABEL_26;
  }

  v18 = *(*(a1 + 32) + 8);
  v32 = 0;
  v19 = [v18 mergeWithBookmarksDictionary:MEMORY[0x277CBEC10] clearHidden:1 error:&v32];
  v20 = v32;
  if (v19)
  {
    [*(*(a1 + 32) + 8) postBookmarksDidReloadNotification];
  }

  else
  {
    v21 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      __68__CyclerCommandHandler_clearBookmarksWithOptions_completionHandler___block_invoke_cold_2(v21, v20);
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __68__CyclerCommandHandler_clearBookmarksWithOptions_completionHandler___block_invoke_8(uint64_t result, unint64_t a2)
{
  if (a2 <= 2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)createBookmarkWithTitle:(id)title url:(id)url inListWithIdentifier:(id)identifier atIndex:(unint64_t)index reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  urlCopy = url;
  identifierCopy = identifier;
  replyCopy = reply;
  v16 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v28 = titleCopy;
    v29 = 2114;
    v30 = urlCopy;
    v31 = 2114;
    v32 = identifierCopy;
    v33 = 1024;
    indexCopy = index;
    _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_INFO, "Told to create a bookmark (title: %{public}@, url: %{public}@) in list (identifier: %{public}@) at index %d", buf, 0x26u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__CyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke;
  v21[3] = &unk_2781D5610;
  v25 = replyCopy;
  indexCopy2 = index;
  v21[4] = self;
  v22 = identifierCopy;
  v23 = titleCopy;
  v24 = urlCopy;
  v17 = urlCopy;
  v18 = titleCopy;
  v19 = identifierCopy;
  v20 = replyCopy;
  [(CyclerCommandHandler *)self _tryToAcquireDatabaseLockWithCompletionHandler:v21];
}

void __87__CyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  v3 = [*(a1 + 32) _adjustInsertionIndex:*(a1 + 72) forInsertionIntoListWithIdentifier:{objc_msgSend(*(a1 + 40), "integerValue")}];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Insertion index is not valid; bailing", v17, 2u);
    }

LABEL_7:
    (*(*(a1 + 64) + 16))();
    return;
  }

  v6 = v3;
  v7 = objc_alloc(MEMORY[0x277D7B5A0]);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 56) safari_originalDataAsString];
  v10 = [*(*(a1 + 32) + 8) configuration];
  v11 = [v7 initWithTitle:v8 address:v9 collectionType:{objc_msgSend(v10, "collectionType")}];

  if (([*(*(a1 + 32) + 8) moveBookmark:v11 toFolderWithID:{objc_msgSend(*(a1 + 40), "integerValue")}] & 1) == 0)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke_cold_2();
    }

    goto LABEL_21;
  }

  if (([*(*(a1 + 32) + 8) saveBookmark:v11] & 1) == 0)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke_cold_3();
    }

    goto LABEL_21;
  }

  if (([*(*(a1 + 32) + 8) reorderBookmark:v11 toIndex:v6] & 1) == 0)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke_cold_4();
    }

    goto LABEL_21;
  }

  if (([*(*(a1 + 32) + 8) saveBookmark:v11] & 1) == 0)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke_cold_5();
    }

LABEL_21:
    v12 = *(*(a1 + 64) + 16);
    goto LABEL_22;
  }

  v12 = *(*(a1 + 64) + 16);
LABEL_22:
  v12();
}

- (void)createBookmarkListWithTitle:(id)title inListWithIdentifier:(id)identifier atIndex:(unint64_t)index reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  identifierCopy = identifier;
  replyCopy = reply;
  v13 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v23 = titleCopy;
    v24 = 2114;
    v25 = identifierCopy;
    v26 = 1024;
    indexCopy = index;
    _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_INFO, "Told to create a list (title: %{public}@) in list (identifier: %{public}@) at index %d", buf, 0x1Cu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__CyclerCommandHandler_createBookmarkListWithTitle_inListWithIdentifier_atIndex_reply___block_invoke;
  v17[3] = &unk_2781D5638;
  v20 = replyCopy;
  indexCopy2 = index;
  v17[4] = self;
  v18 = identifierCopy;
  v19 = titleCopy;
  v14 = titleCopy;
  v15 = identifierCopy;
  v16 = replyCopy;
  [(CyclerCommandHandler *)self _tryToAcquireDatabaseLockWithCompletionHandler:v17];
}

void __87__CyclerCommandHandler_createBookmarkListWithTitle_inListWithIdentifier_atIndex_reply___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkListWithTitle_inListWithIdentifier_atIndex_reply___block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  v3 = [*(a1 + 32) _adjustInsertionIndex:*(a1 + 64) forInsertionIntoListWithIdentifier:{objc_msgSend(*(a1 + 40), "integerValue")}];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Insertion index is not valid; bailing", v15, 2u);
    }

LABEL_7:
    (*(*(a1 + 56) + 16))();
    return;
  }

  v6 = v3;
  v7 = objc_alloc(MEMORY[0x277D7B5A0]);
  v8 = [*(a1 + 40) integerValue];
  v9 = [*(*(a1 + 32) + 8) configuration];
  v10 = [v7 initFolderWithParentID:v8 collectionType:{objc_msgSend(v9, "collectionType")}];

  [v10 setTitle:*(a1 + 48)];
  if (([*(*(a1 + 32) + 8) saveBookmark:v10] & 1) == 0)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkListWithTitle_inListWithIdentifier_atIndex_reply___block_invoke_cold_2();
    }

    goto LABEL_19;
  }

  if (([*(*(a1 + 32) + 8) reorderBookmark:v10 toIndex:v6] & 1) == 0)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkListWithTitle_inListWithIdentifier_atIndex_reply___block_invoke_cold_3();
    }

    goto LABEL_19;
  }

  if (([*(*(a1 + 32) + 8) saveBookmark:v10] & 1) == 0)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __87__CyclerCommandHandler_createBookmarkListWithTitle_inListWithIdentifier_atIndex_reply___block_invoke_cold_4();
    }

    [*(*(a1 + 32) + 8) deleteBookmark:v10];
LABEL_19:
    v11 = *(*(a1 + 56) + 16);
    goto LABEL_20;
  }

  v11 = *(*(a1 + 56) + 16);
LABEL_20:
  v11();
}

- (void)deleteBookmarkWithIdentifier:(id)identifier reply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_INFO, "Told to delete a bookmark (identifier: %{public}@)", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__CyclerCommandHandler_deleteBookmarkWithIdentifier_reply___block_invoke;
  v11[3] = &unk_2781D5660;
  v12 = identifierCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  [(CyclerCommandHandler *)self _tryToAcquireDatabaseLockWithCompletionHandler:v11];
}

void __59__CyclerCommandHandler_deleteBookmarkWithIdentifier_reply___block_invoke(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = (a1 + 40);
    v4 = [*(*(a1 + 32) + 8) bookmarkWithID:{objc_msgSend(*(a1 + 40), "integerValue")}];
    if (v4)
    {
      if ([*(a1 + 32) _isSpecialBookmark:v4])
      {
        v5 = WBS_LOG_CHANNEL_PREFIXCycler();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *v3;
          v11 = 138543362;
          v12 = v6;
          _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Not deleting bookmark with identifier %{public}@ as it's a special bookmark", &v11, 0xCu);
        }
      }

      else
      {
        if ([*(*(a1 + 32) + 8) deleteBookmark:v4])
        {
          v9 = *(*(a1 + 48) + 16);
LABEL_16:
          v9();

          return;
        }

        v10 = WBS_LOG_CHANNEL_PREFIXCycler();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          __59__CyclerCommandHandler_deleteBookmarkWithIdentifier_reply___block_invoke_cold_2();
        }
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __59__CyclerCommandHandler_deleteBookmarkWithIdentifier_reply___block_invoke_cold_3();
      }
    }

    v9 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __59__CyclerCommandHandler_deleteBookmarkWithIdentifier_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)moveBookmarkWithIdentifier:(id)identifier intoListWithIdentifier:(id)withIdentifier atIndex:(unint64_t)index reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  replyCopy = reply;
  v13 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v23 = identifierCopy;
    v24 = 2114;
    v25 = withIdentifierCopy;
    v26 = 1024;
    indexCopy = index;
    _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_INFO, "Told to move a bookmark (identifier: %{public}@) into list (identifier: %{public}@) at index %d", buf, 0x1Cu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__CyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke;
  v17[3] = &unk_2781D5638;
  v17[4] = self;
  v18 = identifierCopy;
  v20 = replyCopy;
  indexCopy2 = index;
  v19 = withIdentifierCopy;
  v14 = withIdentifierCopy;
  v15 = identifierCopy;
  v16 = replyCopy;
  [(CyclerCommandHandler *)self _tryToAcquireDatabaseLockWithCompletionHandler:v17];
}

void __88__CyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = (a1 + 40);
    v4 = [*(*(a1 + 32) + 8) bookmarkWithID:{objc_msgSend(*(a1 + 40), "integerValue")}];
    if (!v4)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __88__CyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke_cold_5();
      }

      goto LABEL_25;
    }

    if ([*(a1 + 32) _isSpecialBookmark:v4])
    {
      v5 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *v3;
        v18 = 138543362;
        v19 = v6;
        v7 = "Not moving bookmark with identifier %{public}@ as it's a special bookmark";
        v8 = v5;
        v9 = 12;
LABEL_14:
        _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_INFO, v7, &v18, v9);
      }
    }

    else
    {
      v12 = [*(a1 + 32) _adjustInsertionIndex:*(a1 + 64) forInsertionIntoListWithIdentifier:{objc_msgSend(*(a1 + 48), "integerValue")}];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXCycler();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          v7 = "Insertion index is not valid; bailing";
          v8 = v13;
          v9 = 2;
          goto LABEL_14;
        }
      }

      else
      {
        v14 = v12;
        if ([*(*(a1 + 32) + 8) moveBookmark:v4 toFolderWithID:{objc_msgSend(*(a1 + 48), "integerValue")}])
        {
          if ([*(*(a1 + 32) + 8) reorderBookmark:v4 toIndex:v14])
          {
            if ([*(*(a1 + 32) + 8) saveBookmark:v4])
            {
              (*(*(a1 + 56) + 16))(*(a1 + 56), 1);
LABEL_26:

              return;
            }

            v17 = WBS_LOG_CHANNEL_PREFIXCycler();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              __88__CyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke_cold_4();
            }
          }

          else
          {
            v16 = WBS_LOG_CHANNEL_PREFIXCycler();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              __88__CyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke_cold_3();
            }
          }
        }

        else
        {
          v15 = WBS_LOG_CHANNEL_PREFIXCycler();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            __88__CyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke_cold_2();
          }
        }
      }
    }

LABEL_25:
    (*(*(a1 + 56) + 16))(*(a1 + 56), 0);
    goto LABEL_26;
  }

  v10 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    __88__CyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 56) + 16))();
}

- (void)setTitle:(id)title forBookmarkWithIdentifier:(id)identifier reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  identifierCopy = identifier;
  replyCopy = reply;
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v20 = identifierCopy;
    v21 = 2114;
    v22 = titleCopy;
    _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_INFO, "Told to change title of bookmark (identifier: %{public}@) to %{public}@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__CyclerCommandHandler_setTitle_forBookmarkWithIdentifier_reply___block_invoke;
  v15[3] = &unk_2781D5688;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = titleCopy;
  v18 = replyCopy;
  v12 = titleCopy;
  v13 = identifierCopy;
  v14 = replyCopy;
  [(CyclerCommandHandler *)self _tryToAcquireDatabaseLockWithCompletionHandler:v15];
}

void __65__CyclerCommandHandler_setTitle_forBookmarkWithIdentifier_reply___block_invoke(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = (a1 + 40);
    v4 = [*(*(a1 + 32) + 8) bookmarkWithID:{objc_msgSend(*(a1 + 40), "integerValue")}];
    if (v4)
    {
      if ([*(a1 + 32) _isSpecialBookmark:v4])
      {
        v5 = WBS_LOG_CHANNEL_PREFIXCycler();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *v3;
          v11 = 138543362;
          v12 = v6;
          _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Not changing title of bookmark with identifier %{public}@ as it's a special bookmark", &v11, 0xCu);
        }
      }

      else
      {
        [v4 setTitle:*(a1 + 48)];
        if ([*(*(a1 + 32) + 8) saveBookmark:v4])
        {
          v9 = *(*(a1 + 56) + 16);
LABEL_16:
          v9();

          return;
        }

        v10 = WBS_LOG_CHANNEL_PREFIXCycler();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          __65__CyclerCommandHandler_setTitle_forBookmarkWithIdentifier_reply___block_invoke_cold_2();
        }
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __65__CyclerCommandHandler_setTitle_forBookmarkWithIdentifier_reply___block_invoke_cold_3();
      }
    }

    v9 = *(*(a1 + 56) + 16);
    goto LABEL_16;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __65__CyclerCommandHandler_setTitle_forBookmarkWithIdentifier_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 56) + 16))();
}

- (void)setURL:(id)l forBookmarkWithIdentifier:(id)identifier reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  replyCopy = reply;
  v11 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v20 = identifierCopy;
    v21 = 2114;
    v22 = lCopy;
    _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_INFO, "Told to change URL of bookmark (identifier: %{public}@) to %{public}@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__CyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke;
  v15[3] = &unk_2781D5688;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = lCopy;
  v18 = replyCopy;
  v12 = lCopy;
  v13 = identifierCopy;
  v14 = replyCopy;
  [(CyclerCommandHandler *)self _tryToAcquireDatabaseLockWithCompletionHandler:v15];
}

void __63__CyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = (a1 + 40);
    v4 = [*(*(a1 + 32) + 8) bookmarkWithID:{objc_msgSend(*(a1 + 40), "integerValue")}];
    if (v4)
    {
      if ([*(a1 + 32) _isSpecialBookmark:v4])
      {
        v5 = WBS_LOG_CHANNEL_PREFIXCycler();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *v3;
          v12 = 138543362;
          v13 = v6;
          _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Not changing URL of bookmark with identifier %{public}@ as it's a special bookmark", &v12, 0xCu);
        }
      }

      else
      {
        v9 = [*(a1 + 48) safari_originalDataAsString];
        [v4 setAddress:v9];

        if ([*(*(a1 + 32) + 8) saveBookmark:v4])
        {
          v10 = *(*(a1 + 56) + 16);
LABEL_16:
          v10();

          return;
        }

        v11 = WBS_LOG_CHANNEL_PREFIXCycler();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          __63__CyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke_cold_2();
        }
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __63__CyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke_cold_3();
      }
    }

    v10 = *(*(a1 + 56) + 16);
    goto LABEL_16;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __63__CyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 56) + 16))();
}

- (void)syncBookmarksWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Told to sync bookmarks", buf, 2u);
  }

  if ([(CyclerCommandHandler *)self _isBookmarkSyncEnabled])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__CyclerCommandHandler_syncBookmarksWithCompletionHandler___block_invoke;
    v7[3] = &unk_2781D56B0;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Not syncing because bookmark sync is disabled", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 2);
  }
}

void __59__CyclerCommandHandler_syncBookmarksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "Posting bookmark change notification", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__CyclerCommandHandler_syncBookmarksWithCompletionHandler___block_invoke_12;
  v4[3] = &unk_2781D55C0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _startMonitoringSyncStatusWithCompletionHandler:v4];
  [*(*(a1 + 32) + 8) _postBookmarksChangedSyncNotification];
}

- (void)databaseLockAcquisitor:(id)acquisitor acquiredLock:(BOOL)lock
{
  acquisitorCopy = acquisitor;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CyclerCommandHandler_databaseLockAcquisitor_acquiredLock___block_invoke;
  block[3] = &unk_2781D5060;
  lockCopy = lock;
  block[4] = self;
  v9 = acquisitorCopy;
  v7 = acquisitorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__CyclerCommandHandler_databaseLockAcquisitor_acquiredLock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  if (*(a1 + 48) == 1)
  {
    [*(a1 + 40) releaseLock];
  }

  result = [*(*(a1 + 32) + 16) removeAllObjects];
  *(*(a1 + 32) + 40) = 0;
  return result;
}

- (void)_startMonitoringSyncStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if ([(WebBookmarkCollection *)self->_bookmarkCollection _usesCloudKit])
  {
    v5 = *MEMORY[0x277D49D30];
    v6 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "In CloudKit mode – waiting for notification from sync agent", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCycler();
    v7 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = 1;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_INFO, "In DAV mode – waiting for notification from DAV client", buf, 2u);
    }

    v5 = @"com.apple.bookmarks.BookmarksFileChanged";
  }

  [(WBSDistributedNotificationObserver *)self->_syncAgentNotificationObserver stopWaiting];
  v9 = [objc_alloc(MEMORY[0x277D49F38]) initWithNotificationName:v5 type:v7];
  syncAgentNotificationObserver = self->_syncAgentNotificationObserver;
  self->_syncAgentNotificationObserver = v9;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__CyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke;
  v19[3] = &unk_2781D56D8;
  objc_copyWeak(&v21, &location);
  v11 = handlerCopy;
  v20 = v11;
  [(WBSDistributedNotificationObserver *)self->_syncAgentNotificationObserver setNotificationHandler:v19];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__CyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke_16;
  v16 = &unk_2781D5700;
  objc_copyWeak(&v18, &location);
  v12 = v11;
  v17 = v12;
  [(WBSDistributedNotificationObserver *)self->_syncAgentNotificationObserver setTimeoutHandler:&v13];
  [(WBSDistributedNotificationObserver *)self->_syncAgentNotificationObserver waitWithTimeout:60.0, v13, v14, v15, v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
}

uint64_t __72__CyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_6;
  }

  if ([*(WeakRetained + 1) _usesCloudKit])
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D49D40]];

    if (!v7 || [v7 integerValue])
    {

LABEL_6:
      v8 = 0;
      goto LABEL_11;
    }
  }

  v9 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_INFO, "Received notification from sync agent indicating sync has finished", v13, 2u);
  }

  v10 = *(*(a1 + 32) + 16);
  v8 = 1;
  v10();
  v11 = v5[3];
  v5[3] = 0;

LABEL_11:
  return v8;
}

void __72__CyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __72__CyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke_16_cold_1();
    }

    (*(*(a1 + 32) + 16))();
    v4 = WeakRetained[3];
    WeakRetained[3] = 0;
  }
}

- (BOOL)_isSpecialBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if ([bookmarkCopy identifier])
  {
    v4 = [bookmarkCopy specialID] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)_adjustInsertionIndex:(unint64_t)index forInsertionIntoListWithIdentifier:(int)identifier
{
  indexCopy = index;
  v13 = *MEMORY[0x277D85DE8];
  if (!identifier)
  {
    if (index)
    {
      favoritesFolder = [(WebBookmarkCollection *)self->_bookmarkCollection favoritesFolder];

      if (favoritesFolder)
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }

      v8 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = v7 + indexCopy;
        v10[0] = 67109376;
        v10[1] = indexCopy;
        v11 = 1024;
        v12 = v9;
        _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_INFO, "Adjusting insertion index %d to %d because it's offset by special bookmarks in the root folder", v10, 0xEu);
        return v9;
      }

      else
      {
        indexCopy += v7;
      }
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return indexCopy;
}

- (id)_cyclerRepresentationOfBookmark:(id)bookmark
{
  v29 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  if ([bookmarkCopy isFolder])
  {
    v5 = objc_alloc(MEMORY[0x277D49F08]);
    title = [bookmarkCopy title];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(bookmarkCopy, "identifier")}];
    stringValue = [v7 stringValue];
    v9 = [v5 initWithTitle:title uniqueIdentifier:stringValue];

    v10 = -[WebBookmarkCollection listWithID:](self->_bookmarkCollection, "listWithID:", [bookmarkCopy identifier]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    bookmarkArray = [v10 bookmarkArray];
    v12 = [bookmarkArray countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(bookmarkArray);
          }

          v16 = [(CyclerCommandHandler *)self _cyclerRepresentationOfBookmark:*(*(&v24 + 1) + 8 * i)];
          [v9 addChild:v16];
        }

        v13 = [bookmarkArray countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v17 = MEMORY[0x277CBEBC0];
    address = [bookmarkCopy address];
    v10 = [v17 safari_URLWithDataAsString:address];

    v19 = objc_alloc(MEMORY[0x277D49EF8]);
    bookmarkArray = [bookmarkCopy title];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(bookmarkCopy, "identifier")}];
    stringValue2 = [v20 stringValue];
    v9 = [v19 initWithURL:v10 title:bookmarkArray uniqueIdentifier:stringValue2];
  }

  if ([(WebBookmarkCollection *)self->_bookmarkCollection _usesCloudKit])
  {
    extraAttributes = [bookmarkCopy extraAttributes];
    [v9 setExtraAttributes:extraAttributes];
  }

  return v9;
}

- (void)_tryToAcquireDatabaseLockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__CyclerCommandHandler__tryToAcquireDatabaseLockWithCompletionHandler___block_invoke;
  v6[3] = &unk_2781D56B0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __71__CyclerCommandHandler__tryToAcquireDatabaseLockWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = _Block_copy(*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  if ((*(v4 + 40) & 1) == 0)
  {
    [*(v4 + 32) acquireLockWithTimeout:5.0 retryInterval:0.1];
    *(*(a1 + 32) + 40) = 1;
  }
}

- (BOOL)_isBookmarkSyncEnabled
{
  v2 = +[FeatureManager sharedFeatureManager];
  isCloudSyncAvailable = [v2 isCloudSyncAvailable];

  if (!isCloudSyncAvailable)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccountWithPreloadedDataclasses = [v4 aa_primaryAppleAccountWithPreloadedDataclasses];
  v6 = [aa_primaryAppleAccountWithPreloadedDataclasses isEnabledForDataclass:*MEMORY[0x277CB90D0]];

  return v6;
}

void __68__CyclerCommandHandler_clearBookmarksWithOptions_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __68__CyclerCommandHandler_clearBookmarksWithOptions_completionHandler___block_invoke_cold_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_215819000, v3, OS_LOG_TYPE_FAULT, "Failed to clear local bookmarks - %{public}@", &v5, 0xCu);
}

void __59__CyclerCommandHandler_deleteBookmarkWithIdentifier_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __88__CyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__CyclerCommandHandler_setTitle_forBookmarkWithIdentifier_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__CyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end