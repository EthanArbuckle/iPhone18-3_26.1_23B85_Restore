@interface MKBookmarkMigrator
- (MKBookmarkMigrator)init;
- (id)_bookmarkFolderAtTitlePath:(id)path withinBookmarkFolder:(id)folder;
- (id)_bookmarkFolderAtTitlePath:(id)path withinRootFolder:(id)folder;
- (id)_createBookmarkFolderWithTitle:(id)title UUID:(id)d;
- (id)_createRootBookmarkFolder;
- (void)import:(id)import;
- (void)importDataEncodedInJSON:(id)n;
@end

@implementation MKBookmarkMigrator

- (MKBookmarkMigrator)init
{
  v11.receiver = self;
  v11.super_class = MKBookmarkMigrator;
  v2 = [(MKMigrator *)&v11 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  [(MKMigrator *)v2 setType:3];
  if (![MEMORY[0x277D7B5A8] lockSync])
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v9 init];
    }

    goto LABEL_10;
  }

  safariBookmarkCollection = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
  collection = v3->_collection;
  v3->_collection = safariBookmarkCollection;

  if (!v3->_collection)
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v9 init];
    }

LABEL_10:

    v8 = 0;
    goto LABEL_11;
  }

  _createRootBookmarkFolder = [(MKBookmarkMigrator *)v3 _createRootBookmarkFolder];
  rootFolder = v3->_rootFolder;
  v3->_rootFolder = _createRootBookmarkFolder;

LABEL_5:
  v8 = v3;
LABEL_11:

  return v8;
}

- (void)importDataEncodedInJSON:(id)n
{
  nCopy = n;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  [(MKBookmarkMigrator *)selfCopy import:nCopy];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import
{
  importCopy = import;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = +[MKLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "will import a bookmark.", buf, 2u);
  }

  if (![importCopy length])
  {
    collection = self->_collection;
    rootFolder = self->_rootFolder;
    v29 = 0;
    [(WebBookmarkCollection *)collection mergeWithBookmarksDictionary:rootFolder clearHidden:0 error:&v29];
    v14 = v29;
    if (!v14)
    {
      [MEMORY[0x277D7B5A8] unlockSync];
      goto LABEL_14;
    }

    v15 = v14;
    v16 = +[MKLog log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MKBookmarkMigrator *)v15 import:v16];
    }

LABEL_12:

    [(MKMigrator *)self migratorDidFailWithImportError:v15];
    goto LABEL_15;
  }

  v7 = [[MKBookmark alloc] initWithData:importCopy];
  if (!v7)
  {
    v16 = +[MKLog log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "bookmark is missing.", v28, 2u);
    }

    v15 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [(MKBookmarkMigrator *)self _bookmarkFolderAtTitlePath:&stru_286A8E730 withinRootFolder:self->_rootFolder];
  v10 = [v9 objectForKeyedSubscript:@"Children"];
  data = [(MKBookmark *)v8 data];
  [v10 addObject:data];

LABEL_14:
  [(MKMigrator *)self migratorDidImport];
  -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [importCopy length]);
  v15 = 0;
LABEL_15:
  v17 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v17);
  payload = [v17 payload];
  bookmarks = [payload bookmarks];

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v22 = v21;

  v23 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v22];
  importElapsedTime = [bookmarks importElapsedTime];
  v25 = [importElapsedTime decimalNumberByAdding:v23];
  [bookmarks setImportElapsedTime:v25];

  objc_sync_exit(v17);
  v26 = +[MKLog log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v27 = 0;
    _os_log_impl(&dword_2592D2000, v26, OS_LOG_TYPE_INFO, "did import a bookmark.", v27, 2u);
  }
}

- (id)_createRootBookmarkFolder
{
  v3 = [(MKBookmarkMigrator *)self _createBookmarkFolderWithTitle:0 UUID:@"Root"];
  v4 = [v3 objectForKeyedSubscript:@"Children"];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [(MKBookmarkMigrator *)self _createBookmarkFolderWithTitle:@"BookmarksBar" UUID:uUIDString];

  [v4 addObject:v7];

  return v3;
}

- (id)_createBookmarkFolderWithTitle:(id)title UUID:(id)d
{
  titleCopy = title;
  v6 = MEMORY[0x277CBEB38];
  dCopy = d;
  v8 = [[v6 alloc] initWithCapacity:4];
  [v8 setObject:@"WebBookmarkTypeList" forKey:@"WebBookmarkType"];
  [v8 setObject:dCopy forKey:@"WebBookmarkUUID"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v8 setObject:v9 forKey:@"Children"];

  if (titleCopy)
  {
    [v8 setObject:titleCopy forKey:@"Title"];
  }

  return v8;
}

- (id)_bookmarkFolderAtTitlePath:(id)path withinRootFolder:(id)folder
{
  pathCopy = path;
  v7 = [folder objectForKeyedSubscript:@"Children"];
  v8 = [v7 objectAtIndexedSubscript:0];

  if ([pathCopy length])
  {
    pathComponents = [pathCopy pathComponents];
    v10 = [(MKBookmarkMigrator *)self _bookmarkFolderAtTitlePath:pathComponents withinBookmarkFolder:v8];

    v8 = v10;
  }

  return v8;
}

- (id)_bookmarkFolderAtTitlePath:(id)path withinBookmarkFolder:(id)folder
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  folderCopy = folder;
  if ([pathCopy count])
  {
    selfCopy = self;
    v8 = [pathCopy objectAtIndexedSubscript:0];
    v26 = folderCopy;
    [folderCopy objectForKeyedSubscript:@"Children"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v30 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        v15 = [v14 objectForKeyedSubscript:@"Title"];
        v16 = [v8 isEqualToString:v15];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v18 = v14;

      v17 = selfCopy;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:

      v17 = selfCopy;
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [(MKBookmarkMigrator *)v17 _createBookmarkFolderWithTitle:v8 UUID:uUIDString];

    [v9 addObject:v18];
LABEL_13:
    if ([pathCopy count] >= 2)
    {
      v21 = [pathCopy subarrayWithRange:{1, objc_msgSend(pathCopy, "count") - 1}];
      v22 = [(MKBookmarkMigrator *)v17 _bookmarkFolderAtTitlePath:v21 withinBookmarkFolder:v18];

      v18 = v22;
    }

    folderCopy = v26;
  }

  else
  {
    v18 = folderCopy;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

@end