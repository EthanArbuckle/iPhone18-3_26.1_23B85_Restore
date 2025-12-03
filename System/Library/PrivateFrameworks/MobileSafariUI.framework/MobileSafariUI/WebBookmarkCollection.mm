@interface WebBookmarkCollection
+ (PPTWebBookmarkCollection)bookmarkCollectionForPPTTest;
+ (id)leadImageURLForBookmark:(uint64_t)bookmark;
+ (void)_startBookmarkCollectionOpenRetryTimer;
+ (void)_stopBookmarkCollectionOpenRetryTimer;
+ (void)observeDatabaseVacuumNotification;
+ (void)stopObservingDatabaseVacuumNotification;
+ (void)test_overrideMainBookmarkCollection;
- (uint64_t)dropOperationForReadingListDropSession:(uint64_t)result;
- (uint64_t)markReadingListBookmark:(char)bookmark asRead:(int)read postNotification:;
- (uint64_t)saveReadingListBookmarkWithTitle:(void *)title address:(void *)address previewText:(void *)text thumbnailURL:(void *)l siteName:(void *)name tabDocument:(int)document didFetchPage:(void *)page updateController:(_DWORD *)self0 savedBookmarkID:(char)self1 shouldFetchMetadata:;
- (uint64_t)updateBookmark:(void *)bookmark withLeadImageURL:;
- (uint64_t)updateReadingListBookmarkWithID:(void *)d setTitle:(void *)title address:(void *)address previewText:(void *)text thumbnailURL:(void *)l siteName:;
- (void)_markDuplicateReadingListBookmarkUnread:(void *)unread updatingController:;
- (void)_saveWebArchiveForTabDocument:(void *)document bookmark:;
- (void)dropBookmarks:(uint64_t)bookmarks inFolderWithID:(void *)d presentingViewController:(int)controller isAddingBookmark:;
- (void)dropDragItemsInReadingList:(uint64_t)list;
- (void)dropDragItemsInReadingList:(void *)list updatingController:;
- (void)saveReadingListBookmarkWithTitle:(void *)title address:;
@end

@implementation WebBookmarkCollection

+ (void)observeDatabaseVacuumNotification
{
  v0 = objc_opt_self();
  if (!databaseVacuumDistributedNotificationToken)
  {
    v1 = v0;
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    v3 = *MEMORY[0x277D7B610];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__WebBookmarkCollection_SafariExtras__observeDatabaseVacuumNotification__block_invoke;
    v7[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
    v7[4] = v1;
    v5 = [defaultCenter addObserverForName:v3 object:0 queue:mainQueue usingBlock:v7];
    v6 = databaseVacuumDistributedNotificationToken;
    databaseVacuumDistributedNotificationToken = v5;
  }
}

+ (void)_startBookmarkCollectionOpenRetryTimer
{
  v0 = objc_opt_self();
  if (!bookmarkCollectionOpenRetryTimer)
  {
    v1 = v0;
    v2 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v3 = bookmarkCollectionOpenRetryTimer;
    bookmarkCollectionOpenRetryTimer = v2;

    v4 = bookmarkCollectionOpenRetryTimer;
    v5 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v4, v5, 0x2540BE400uLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__WebBookmarkCollection_SafariExtras___startBookmarkCollectionOpenRetryTimer__block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = v1;
    dispatch_source_set_event_handler(bookmarkCollectionOpenRetryTimer, handler);
    dispatch_resume(bookmarkCollectionOpenRetryTimer);
  }
}

void __72__WebBookmarkCollection_SafariExtras__observeDatabaseVacuumNotification__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mainBookmarkCollection];
  if (v1)
  {
    v6 = v1;
    if (postedBookmarkCollectionHasBecomeAvailableNotification)
    {
      v2 = [MEMORY[0x277CCAB98] defaultCenter];
      v3 = v2;
      v4 = *MEMORY[0x277D7B608];
      v5 = v6;
    }

    else
    {
      postedBookmarkCollectionHasBecomeAvailableNotification = 1;
      v2 = [MEMORY[0x277CCAB98] defaultCenter];
      v3 = v2;
      v4 = @"bookmarkCollectionHasBecomeAvailableNotification";
      v5 = 0;
    }

    [v2 postNotificationName:v4 object:v5];

    v1 = v6;
  }
}

+ (void)stopObservingDatabaseVacuumNotification
{
  objc_opt_self();
  if (databaseVacuumDistributedNotificationToken)
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter removeObserver:databaseVacuumDistributedNotificationToken name:*MEMORY[0x277D7B610] object:0];

    v1 = databaseVacuumDistributedNotificationToken;
    databaseVacuumDistributedNotificationToken = 0;
  }
}

void __77__WebBookmarkCollection_SafariExtras___startBookmarkCollectionOpenRetryTimer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mainBookmarkCollection];

  if (v1)
  {
    +[WebBookmarkCollection _stopBookmarkCollectionOpenRetryTimer];
    if ((postedBookmarkCollectionHasBecomeAvailableNotification & 1) == 0)
    {
      postedBookmarkCollectionHasBecomeAvailableNotification = 1;
      v2 = [MEMORY[0x277CCAB98] defaultCenter];
      [v2 postNotificationName:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
    }
  }
}

+ (void)_stopBookmarkCollectionOpenRetryTimer
{
  objc_opt_self();
  if (bookmarkCollectionOpenRetryTimer)
  {
    dispatch_source_cancel(bookmarkCollectionOpenRetryTimer);
    v0 = bookmarkCollectionOpenRetryTimer;
    bookmarkCollectionOpenRetryTimer = 0;
  }
}

+ (PPTWebBookmarkCollection)bookmarkCollectionForPPTTest
{
  objc_opt_self();
  [objc_opt_class() lockSync];
  v0 = [PPTWebBookmarkCollection alloc];
  inMemoryBookmarkCollectionConfiguration = [MEMORY[0x277D7B520] inMemoryBookmarkCollectionConfiguration];
  v2 = [(PPTWebBookmarkCollection *)v0 initWithConfiguration:inMemoryBookmarkCollectionConfiguration];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"DidImportBuiltinBookmarks"];
  [standardUserDefaults setBool:0 forKey:@"DidImportBuiltinBookmarks"];
  v5 = [[BookmarkImporter alloc] initWithBookmarkCollection:v2];
  [(BookmarkImporter *)v5 importBuiltinBookmarks];
  [standardUserDefaults setBool:v4 forKey:@"DidImportBuiltinBookmarks"];
  [(PPTWebBookmarkCollection *)v2 test_restoreMissingSpecialBookmarks];
  [objc_opt_class() unlockSync];

  return v2;
}

+ (void)test_overrideMainBookmarkCollection
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_2827BF158];
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Safari/iOS/MobileSafari/SafariWebBookmarkCollectionExtras.m"];
  lastPathComponent = [v2 lastPathComponent];
  if ([v0 length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@", %@", v0];
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "[UIApplication sharedApplication].launchedToTest", "+[WebBookmarkCollection(SafariExtras) test_overrideMainBookmarkCollection]", lastPathComponent, 189, v5];
  }

  else
  {
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "[UIApplication sharedApplication].launchedToTest", "+[WebBookmarkCollection(SafariExtras) test_overrideMainBookmarkCollection]", lastPathComponent, 189, &stru_2827BF158];
  }

  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  NSLog(@"%@\n%@", v4, callStackSymbols);

  abort();
}

- (uint64_t)saveReadingListBookmarkWithTitle:(void *)title address:(void *)address previewText:(void *)text thumbnailURL:(void *)l siteName:(void *)name tabDocument:(int)document didFetchPage:(void *)page updateController:(_DWORD *)self0 savedBookmarkID:(char)self1 shouldFetchMetadata:
{
  v17 = a2;
  titleCopy = title;
  addressCopy = address;
  textCopy = text;
  lCopy = l;
  nameCopy = name;
  pageCopy = page;
  if (!self)
  {
    v51 = 0;
    goto LABEL_26;
  }

  if (([objc_opt_class() lockSync] & 1) == 0)
  {
    defaultReadingList = [MEMORY[0x277D7B558] defaultReadingList];
    v51 = [defaultReadingList addReadingListItemWithURL:titleCopy title:v17 previewText:addressCopy error:0];

LABEL_26:
    v24 = v17;
    goto LABEL_27;
  }

  v24 = [MEMORY[0x277D7B5A0] _trimmedTitle:v17];

  v48 = nameCopy;
  if (addressCopy)
  {
    v25 = [MEMORY[0x277D7B5A0] _trimmedPreviewText:addressCopy];

    addressCopy = v25;
  }

  absoluteString = [titleCopy absoluteString];
  v27 = [self firstReadingListBookmarkWithURLMatchingString:absoluteString prefixMatch:0];

  if (v27)
  {
    v43 = v27;
    [(WebBookmarkCollection *)self _markDuplicateReadingListBookmarkUnread:v27 updatingController:pageCopy];
    [objc_opt_class() unlockSync];
    if (controller)
    {
      *controller = [v27 identifier];
    }

    v51 = 1;
    nameCopy = v48;
  }

  else
  {
    v47 = pageCopy;
    v28 = objc_alloc(MEMORY[0x277D7B5A0]);
    absoluteString2 = [titleCopy absoluteString];
    v30 = [v28 initReadingListBookmarkWithTitle:v24 address:absoluteString2 previewText:addressCopy];

    readingListFolder = [self readingListFolder];
    [self moveBookmark:v30 toFolderWithID:{objc_msgSend(readingListFolder, "identifier")}];

    if (document)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [v30 setDateLastFetched:date];
    }

    v33 = lCopy;
    [v30 setAddedLocally:{1, v24}];
    nameCopy = v48;
    if (textCopy)
    {
      safari_originalDataAsString = [textCopy safari_originalDataAsString];
      [v30 setReadingListIconURL:safari_originalDataAsString];
    }

    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    safari_shouldAutomaticallyDownloadReadingListItems = [safari_browserDefaults safari_shouldAutomaticallyDownloadReadingListItems];

    if (v48 && ([v48 isReaderAvailable] & 1) == 0 && ((safari_shouldAutomaticallyDownloadReadingListItems ^ 1) & 1) == 0)
    {
      [(WebBookmarkCollection *)self _saveWebArchiveForTabDocument:v48 bookmark:v30];
    }

    [self saveBookmark:v30];
    lCopy = v33;
    if (!(safari_shouldAutomaticallyDownloadReadingListItems & 1 | ((d & 1) == 0)))
    {
      v37 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
      v38 = v37;
      if (document)
      {
        v39 = v48;
      }

      else
      {
        v39 = 0;
      }

      [v37 fetchMetadataForReadingListBookmark:v30 withProvider:v39];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ReadingListBookmarkAddedNotification" object:0];

    v41 = +[Application sharedApplication];
    [v41 setReadingListWidgetNeedsReload];

    v42 = WBS_LOG_CHANNEL_PREFIXWidgets();
    pageCopy = v47;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v42, OS_LOG_TYPE_DEFAULT, "Requested widget update because of item addition", buf, 2u);
    }

    [objc_opt_class() unlockSync];
    v24 = v46;
    if (controller)
    {
      *controller = [v30 identifier];
    }

    v51 = 1;

    v43 = 0;
  }

LABEL_27:
  return v51;
}

- (void)_saveWebArchiveForTabDocument:(void *)document bookmark:
{
  v5 = a2;
  documentCopy = document;
  v7 = documentCopy;
  if (self)
  {
    v8 = [documentCopy webarchivePathInReaderForm:0 fileExists:0];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    stringByDeletingLastPathComponent = [v8 stringByDeletingLastPathComponent];
    v11 = [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:stringByDeletingLastPathComponent attributes:0];

    if (v11)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = *MEMORY[0x277D767B0];
      v12 = *MEMORY[0x277D76620];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __78__WebBookmarkCollection_SafariExtras___saveWebArchiveForTabDocument_bookmark___block_invoke;
      v18[3] = &unk_2781D4BD8;
      v18[4] = &v19;
      v13 = [v12 beginBackgroundTaskWithName:@"com.apple.mobilesafari.SaveWebArchive" expirationHandler:v18];
      v20[3] = v13;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __78__WebBookmarkCollection_SafariExtras___saveWebArchiveForTabDocument_bookmark___block_invoke_2;
      v14[3] = &unk_2781DB820;
      v15 = v7;
      selfCopy = self;
      v17 = &v19;
      [v5 saveWebArchiveToPath:v8 completion:v14];

      _Block_object_dispose(&v19, 8);
    }
  }
}

void __78__WebBookmarkCollection_SafariExtras___saveWebArchiveForTabDocument_bookmark___block_invoke(uint64_t a1)
{
  NSLog(@"Background task expired while waiting for current page's webarchive to save.");
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x277D767B0])
  {
    v2 = *MEMORY[0x277D76620];

    [v2 endBackgroundTask:?];
  }
}

uint64_t __78__WebBookmarkCollection_SafariExtras___saveWebArchiveForTabDocument_bookmark___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setArchiveStatus:1];
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEAA8] date];
    [v3 setDateLastArchived:v4];

    if ([MEMORY[0x277D7B5A8] isLockedSync])
    {
      [*(a1 + 40) saveBookmark:*(a1 + 32)];
    }

    else if ([objc_opt_class() lockSync])
    {
      [*(a1 + 40) saveBookmark:*(a1 + 32)];
      [objc_opt_class() unlockSync];
    }
  }

  result = [*MEMORY[0x277D76620] endBackgroundTask:*(*(*(a1 + 48) + 8) + 24)];
  *(*(*(a1 + 48) + 8) + 24) = *MEMORY[0x277D767B0];
  return result;
}

+ (id)leadImageURLForBookmark:(uint64_t)bookmark
{
  v2 = a2;
  objc_opt_self();
  localAttributes = [v2 localAttributes];

  v4 = [localAttributes objectForKeyedSubscript:@"leadImageURL"];

  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __85__WebBookmarkCollection_SafariExtras__dropDragItemsInReadingList_updatingController___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 _title];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &stru_2827BF158;
        }

        v13 = [(WebBookmarkCollection *)v9 saveReadingListBookmarkWithTitle:v12 address:v8 previewText:0 thumbnailURL:0 siteName:0 tabDocument:0 didFetchPage:0 updateController:*(a1 + 40) savedBookmarkID:0 shouldFetchMetadata:1];

        if (v13)
        {
          v14 = [MEMORY[0x277D499B8] sharedLogger];
          [v14 didAddReadingListItemWithMethod:1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)saveReadingListBookmarkWithTitle:(void *)title address:
{
  if (result)
  {
    return [(WebBookmarkCollection *)result saveReadingListBookmarkWithTitle:a2 address:title previewText:0 thumbnailURL:0 siteName:0 tabDocument:0 didFetchPage:0 updateController:0 savedBookmarkID:0 shouldFetchMetadata:1];
  }

  return result;
}

- (void)_markDuplicateReadingListBookmarkUnread:(void *)unread updatingController:
{
  v5 = a2;
  if (self)
  {
    v12 = v5;
    unreadCopy = unread;
    showingAllBookmarks = [unreadCopy showingAllBookmarks];
    if ((showingAllBookmarks & 1) != 0 || unreadCopy && ([v12 dateLastViewed], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v8 = [self indexOfReadingListBookmark:v12 countingOnlyUnread:showingAllBookmarks ^ 1u];
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    date = [MEMORY[0x277CBEAA8] date];
    [v12 setDateAdded:date];

    [v12 setReadingListDateLastViewed:0];
    [self saveBookmark:v12];
    v11 = [self readingListWithUnreadOnly:0];
    [self reorderBookmark:v12 toIndex:{objc_msgSend(v11, "bookmarkCount") - 1}];

    [unreadCopy didMarkBookmarkUnreadAtIndex:v8];
    v5 = v12;
  }
}

- (uint64_t)updateBookmark:(void *)bookmark withLeadImageURL:
{
  v5 = a2;
  bookmarkCopy = bookmark;
  if (self)
  {
    localAttributes = [v5 localAttributes];
    dictionary = [localAttributes mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    safari_originalDataAsString = [bookmarkCopy safari_originalDataAsString];
    [dictionary setObject:safari_originalDataAsString forKeyedSubscript:@"leadImageURL"];

    [v5 setLocalAttributes:dictionary];
    if ([objc_opt_class() lockSync])
    {
      v10 = [self saveBookmark:v5];
      [objc_opt_class() unlockSync];
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

  return v10;
}

- (uint64_t)markReadingListBookmark:(char)bookmark asRead:(int)read postNotification:
{
  v7 = a2;
  v8 = v7;
  if (!self)
  {
    goto LABEL_21;
  }

  dateLastViewed = [v7 dateLastViewed];
  v10 = (dateLastViewed == 0) ^ bookmark;

  if (v10)
  {
LABEL_3:
    v11 = 1;
    goto LABEL_4;
  }

  if (bookmark)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v8 setReadingListDateLastViewed:date];
  }

  else
  {
    [v8 setReadingListDateLastViewed:0];
  }

  if (([objc_opt_class() lockSync] & 1) == 0)
  {
    v22 = +[FeatureManager sharedFeatureManager];
    isInMemoryBookmarkChangeTrackingAvailable = [v22 isInMemoryBookmarkChangeTrackingAvailable];

    if (isInMemoryBookmarkChangeTrackingAvailable)
    {
      [self modifyBookmarkInMemory:v8];
      if (read)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"ReadingListBookmarkDidUpdateNotification" object:v8];
      }

      v25 = +[Application sharedApplication];
      [v25 setReadingListWidgetNeedsReload];

      v26 = WBS_LOG_CHANNEL_PREFIXWidgets();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0_7(&dword_215819000, v27, v28, "Requested widget update because of item being marked %{private}@", v29, v30, v31, v32, 3u);
      }

      goto LABEL_3;
    }

    v33 = +[Application sharedApplication];
    [v33 setReadingListWidgetNeedsReload];

    v34 = WBS_LOG_CHANNEL_PREFIXWidgets();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0_7(&dword_215819000, v35, v36, "Requested widget update because of item being marked %{private}@", v37, v38, v39, v40, 3u);
    }

LABEL_21:
    v11 = 0;
    goto LABEL_4;
  }

  v11 = [self saveBookmark:v8];
  if (v11 && read)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"ReadingListBookmarkDidUpdateNotification" object:v8];
  }

  [objc_opt_class() unlockSync];
  WBSReloadReadingListWidget();
  v15 = WBS_LOG_CHANNEL_PREFIXWidgets();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_7(&dword_215819000, v16, v17, "Requested widget update because of item being marked %{private}@", v18, v19, v20, v21, 3u);
  }

LABEL_4:

  return v11;
}

- (uint64_t)updateReadingListBookmarkWithID:(void *)d setTitle:(void *)title address:(void *)address previewText:(void *)text thumbnailURL:(void *)l siteName:
{
  dCopy = d;
  titleCopy = title;
  addressCopy = address;
  textCopy = text;
  lCopy = l;
  if (self && [objc_opt_class() lockSync])
  {
    v18 = [self bookmarkWithID:a2];
    v19 = v18;
    if (v18)
    {
      v28 = 0;
      v20 = [v18 webarchivePathInReaderForm:0 fileExists:&v28];
      stringByDeletingPathExtension = [v20 stringByDeletingPathExtension];

      if (v28 == 1 && ([stringByDeletingPathExtension stringByRemovingPercentEncoding], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(titleCopy, "containsString:", v22), v22, (v23 & 1) != 0))
      {
        v24 = 0;
      }

      else
      {
        date = [MEMORY[0x277CBEAA8] date];
        [v19 setTitle:dCopy previewText:addressCopy dateLastFetched:date];

        [v19 setAddress:titleCopy];
        if (textCopy)
        {
          [v19 setReadingListIconURL:textCopy];
        }

        v24 = [self saveBookmark:v19];
        if (v24)
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"ReadingListBookmarkDidUpdateNotification" object:v19];
        }
      }

      [objc_opt_class() unlockSync];
    }

    else
    {
      [objc_opt_class() unlockSync];
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)dropBookmarks:(uint64_t)bookmarks inFolderWithID:(void *)d presentingViewController:(int)controller isAddingBookmark:
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dCopy = d;
  if (self && [v9 count])
  {
    mEMORY[0x277D28BE0] = [MEMORY[0x277D28BE0] sharedCoordinator];
    if ([mEMORY[0x277D28BE0] lockBookmarks])
    {
      if (([dCopy isEditing] & 1) == 0)
      {
        v12 = objc_alloc_init(MEMORY[0x277D49B60]);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __110__WebBookmarkCollection_SafariExtras__dropBookmarks_inFolderWithID_presentingViewController_isAddingBookmark___block_invoke;
        v23[3] = &unk_2781D4D40;
        v24 = mEMORY[0x277D28BE0];
        [v12 setHandler:v23];
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = v9;
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          v17 = 0;
          do
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [self saveAndMoveBookmark:*(*(&v19 + 1) + 8 * v17++) toFolderID:{bookmarks, v19}];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v15);
      }

      if (!controller)
      {
        goto LABEL_17;
      }

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didAddBookmarkWithMethod:2];
    }

    else
    {
      [MEMORY[0x277D28BE0] showLockedDatabaseAlertForAction:0 fromViewController:dCopy];
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didPreventBookmarkActionWithBookmarkType:0 actionType:3];
    }

LABEL_17:
  }
}

- (uint64_t)dropOperationForReadingListDropSession:(uint64_t)result
{
  if (result)
  {
    items = [a2 items];
    v3 = [items safari_containsObjectPassingTest:&__block_literal_global_60];

    if (v3)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)dropDragItemsInReadingList:(void *)list updatingController:
{
  listCopy = list;
  if (self)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [a2 safari_filterObjectsUsingBlock:&__block_literal_global_82_0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__WebBookmarkCollection_SafariExtras__dropDragItemsInReadingList_updatingController___block_invoke;
    v8[3] = &unk_2781D85C0;
    v8[4] = self;
    v9 = listCopy;
    [v6 _sf_urlsFromDragItems:v7 completionHandler:v8];
  }
}

- (void)dropDragItemsInReadingList:(uint64_t)list
{
  if (list)
  {
    [(WebBookmarkCollection *)list dropDragItemsInReadingList:a2 updatingController:0];
  }
}

@end