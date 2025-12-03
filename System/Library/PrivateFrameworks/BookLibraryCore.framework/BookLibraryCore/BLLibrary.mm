@interface BLLibrary
+ (BOOL)_addDate:(id)date toPlist:(id)plist bookItem:(id)item error:(id *)error;
+ (id)_bookItemsFromPlist:(id)plist sharedPlist:(id)sharedPlist;
+ (id)defaultBookLibrary;
+ (void)initialize;
- (BOOL)_addBookItemToEduContainer:(id)container error:(id *)error;
- (BOOL)_addSharedBookToPurchasesPlistWithPermlink:(id)permlink error:(id *)error;
- (BOOL)_bookItemIsShared:(id)shared;
- (BOOL)_isShareableBook:(id)book;
- (BOOL)_removeBookFromLibraryWithPath:(id)path error:(id *)error;
- (BOOL)removeBookFromLibraryWithIdentifier:(id)identifier error:(id *)error;
- (id)_allPlists;
- (id)_bookItemFromPermlink:(id)permlink error:(id *)error;
- (id)_bookItemFromStoreID:(id)d permlink:(id)permlink error:(id *)error;
- (id)_bookItemsFromPlist:(id)plist;
- (id)_findBookItemWithTestBlock:(id)block foundWhere:(int64_t *)where;
- (id)_init;
- (id)_initWithBooksPlist:(id)plist purchasedPlist:(id)purchasedPlist managedPlist:(id)managedPlist sharedPlist:(id)sharedPlist;
- (id)_list:(id)_list testBlock:(id)block;
- (id)_lookupBookItemExhaustiveFromPermlink:(id)permlink error:(id *)error;
- (id)_perUserBookURLForBookURL:(id)l;
- (id)allBookItems;
- (id)bookIdentifierFromURL:(id)l error:(id *)error;
- (void)_bookWasOpenedWithStoreID:(id)d permlink:(id)permlink date:(id)date;
- (void)_downloadWithPermalink:(id)permalink title:(id)title result:(id)result;
- (void)addITunesUBookToLibraryWithPermlink:(id)permlink title:(id)title result:(id)result;
@end

@implementation BLLibrary

+ (void)initialize
{
  if (qword_280BC5998 != -1)
  {
    sub_241D76C24();
  }
}

+ (id)defaultBookLibrary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D230F8;
  block[3] = &unk_278D16940;
  block[4] = self;
  dispatch_sync(qword_280BC59A8, block);
  v2 = qword_280BC59B0;

  return v2;
}

- (id)_initWithBooksPlist:(id)plist purchasedPlist:(id)purchasedPlist managedPlist:(id)managedPlist sharedPlist:(id)sharedPlist
{
  v25[1] = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  purchasedPlistCopy = purchasedPlist;
  managedPlistCopy = managedPlist;
  sharedPlistCopy = sharedPlist;
  v23.receiver = self;
  v23.super_class = BLLibrary;
  v15 = [(BLLibrary *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_purchasedPlist, purchasedPlist);
    objc_storeStrong(&v16->_booksPlist, plist);
    objc_storeStrong(&v16->_managedPlist, managedPlist);
    objc_storeStrong(&v16->_sharedPlist, sharedPlist);
    v17 = dispatch_queue_create("com.apple.BookLibrary.BLLibrary", 0);
    dispatchQueue = v16->_dispatchQueue;
    v16->_dispatchQueue = v17;

    v24 = @"BLLibraryAllowsDownloadsViaBookAssetDaemonForITunesUBooks";
    v25[0] = MEMORY[0x277CBEC28];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults registerDefaults:v19];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_init
{
  v3 = [IMLibraryPlist libraryPlistWithKind:1];
  v4 = [IMLibraryPlist libraryPlistWithKind:0];
  v5 = [IMLibraryPlist libraryPlistWithKind:2];
  v6 = [IMLibraryPlist libraryPlistWithKind:3];
  v7 = [(BLLibrary *)self _initWithBooksPlist:v4 purchasedPlist:v3 managedPlist:v5 sharedPlist:v6];

  return v7;
}

- (id)_bookItemsFromPlist:(id)plist
{
  plistCopy = plist;
  sharedPlist = [(BLLibrary *)self sharedPlist];
  v6 = [BLLibrary _bookItemsFromPlist:plistCopy sharedPlist:sharedPlist];

  return v6;
}

+ (id)_bookItemsFromPlist:(id)plist sharedPlist:(id)sharedPlist
{
  v34 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  sharedPlistCopy = sharedPlist;
  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [plistCopy contents];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v8 = 0x278D16000uLL;
  obj = [IMLibraryPlist booksArrayFromPlistEntry:?];
  v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v27)
  {
    v26 = *v30;
    v24 = sharedPlistCopy;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [*(v8 + 1488) folderNameFromPlistEntry:v10];
        directory = [plistCopy directory];
        v13 = [directory stringByAppendingPathComponent:v11];
        v14 = [defaultManager fileExistsAtPath:v13];
        if (sharedPlistCopy && (v14 & 1) == 0)
        {
          v15 = array;
          v16 = plistCopy;
          directory2 = [sharedPlistCopy directory];
          v18 = [directory2 stringByAppendingPathComponent:v11];

          if ([defaultManager fileExistsAtPath:v18])
          {
            directory3 = [sharedPlistCopy directory];

            directory = directory3;
          }

          plistCopy = v16;
          array = v15;
          v8 = 0x278D16000;
          sharedPlistCopy = v24;
        }

        v20 = [[BLBookItem alloc] initWithEntry:v10 basePath:directory];
        [array addObject:v20];
      }

      v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v27);
  }

  v21 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)allBookItems
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[BLLockFile iTunesSyncLockFile];
  if ([v4 tryLock:0])
  {
    purchasedPlist = [(BLLibrary *)self purchasedPlist];
    v6 = [(BLLibrary *)self _bookItemsFromPlist:purchasedPlist];
    [array addObjectsFromArray:v6];

    booksPlist = [(BLLibrary *)self booksPlist];
    v8 = [(BLLibrary *)self _bookItemsFromPlist:booksPlist];
    [array addObjectsFromArray:v8];

    managedPlist = [(BLLibrary *)self managedPlist];
    v10 = [(BLLibrary *)self _bookItemsFromPlist:managedPlist];
    [array addObjectsFromArray:v10];
  }

  else
  {
    v11 = BLDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "Failed to obtain the iTunes Sync lock.", v13, 2u);
    }
  }

  return array;
}

- (void)addITunesUBookToLibraryWithPermlink:(id)permlink title:(id)title result:(id)result
{
  v56[2] = *MEMORY[0x277D85DE8];
  permlinkCopy = permlink;
  titleCopy = title;
  resultCopy = result;
  if (permlinkCopy)
  {
    *&v52 = 0;
    *(&v52 + 1) = &v52;
    v53 = 0x3032000000;
    v54 = sub_241D23E0C;
    v55 = sub_241D23E1C;
    v56[0] = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_241D23E0C;
    v48 = sub_241D23E1C;
    obj = 0;
    v11 = [(BLLibrary *)self _bookItemFromPermlink:permlinkCopy error:&obj];
    objc_storeStrong(v56, obj);
    v49 = v11;
    if (!v45[5])
    {
      goto LABEL_42;
    }

    v12 = BLDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_DEFAULT, "Book already exists in local library.", buf, 2u);
    }

    if (!v45[5])
    {
LABEL_42:
      if ([(BLLibrary *)self _isMultiUser])
      {
        sharedPlist = [(BLLibrary *)self sharedPlist];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = sub_241D23E24;
        v41[3] = &unk_278D16968;
        v14 = permlinkCopy;
        v42 = v14;
        v15 = [(BLLibrary *)self _list:sharedPlist testBlock:v41];
        v16 = v45[5];
        v45[5] = v15;

        if (v45[5])
        {
          v17 = BLDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_DEFAULT, "Book exists locally in shared container but not in current users library.", buf, 2u);
          }

          v40 = 0;
          v18 = [(BLLibrary *)self _addSharedBookToPurchasesPlistWithPermlink:v14 error:&v40];
          v19 = v40;
          if (!v18)
          {
            v20 = BLDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v51 = v19;
              _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_ERROR, "Error adding shared entry to local plist.  %@", buf, 0xCu);
            }
          }
        }
      }
    }

    if (v45[5])
    {
      goto LABEL_30;
    }

    if ([(BLLibrary *)self _isMultiUser])
    {
      v21 = BLDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "Book does not exist in current users library or the shared library, triggering a download.";
LABEL_28:
        _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      }
    }

    else
    {
      v21 = BLDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "Book does not exist in library, triggering a download.";
        goto LABEL_28;
      }
    }

    v25 = dispatch_semaphore_create(0);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_241D23E68;
    v36[3] = &unk_278D16990;
    v38 = &v44;
    v39 = &v52;
    v26 = v25;
    v37 = v26;
    [(BLLibrary *)self _downloadWithPermalink:permlinkCopy title:titleCopy result:v36];
    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);

LABEL_30:
    v27 = +[BLEduCloudContainer sharedEduCloudContainer];
    v28 = v27;
    if (v45[5])
    {
      if ([v27 isSignedIn])
      {
        v29 = v45[5];
        v30 = *(&v52 + 1);
        v35 = *(*(&v52 + 1) + 40);
        v31 = [v28 addBookItem:v29 error:&v35];
        objc_storeStrong((v30 + 40), v35);
        if ((v31 & 1) == 0)
        {
          v32 = BLDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = *(*(&v52 + 1) + 40);
            *buf = 138412290;
            v51 = v33;
            _os_log_impl(&dword_241D1F000, v32, OS_LOG_TYPE_ERROR, "Failed to add to the cloud. Error:  %@", buf, 0xCu);
          }
        }
      }
    }

    if (resultCopy)
    {
      resultCopy[2](resultCopy, v45[5], *(*(&v52 + 1) + 40));
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v52, 8);

    goto LABEL_39;
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BLLibraryErrorDomain" code:-1002 userInfo:0];
  if (resultCopy)
  {
    (resultCopy)[2](resultCopy, 0, v23);
  }

  else
  {
    v24 = BLDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v52) = 138412290;
      *(&v52 + 4) = v23;
      _os_log_impl(&dword_241D1F000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter.  %@", &v52, 0xCu);
    }
  }

LABEL_39:
  v34 = *MEMORY[0x277D85DE8];
}

- (id)_lookupBookItemExhaustiveFromPermlink:(id)permlink error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  permlinkCopy = permlink;
  if (!permlinkCopy)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"BLLibraryErrorDomain" code:-1002 userInfo:0];
      v8 = 0;
      *error = v9 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v7 = [(BLLibrary *)self _bookItemFromPermlink:permlinkCopy error:error];
  if (v7)
  {
    v8 = v7;
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (![(BLLibrary *)self _isMultiUser])
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  sharedPlist = [(BLLibrary *)self sharedPlist];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_241D24160;
  v19[3] = &unk_278D16968;
  v11 = permlinkCopy;
  v20 = v11;
  v8 = [(BLLibrary *)self _list:sharedPlist testBlock:v19];

  if (v8)
  {
    v12 = BLDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_INFO, "Book exists locally in shared container but not in current users library.", buf, 2u);
    }

    v18 = 0;
    v13 = [(BLLibrary *)self _addSharedBookToPurchasesPlistWithPermlink:v11 error:&v18];
    v9 = v18;
    if (!v13)
    {
      v14 = BLDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_ERROR, "Error adding shared entry to local plist.  %@", buf, 0xCu);
      }

      if (error)
      {
        v15 = v9;
        *error = v9;
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_addBookItemToEduContainer:(id)container error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v6 = +[BLEduCloudContainer sharedEduCloudContainer];
  v7 = v6;
  if (!containerCopy || ![v6 isSignedIn])
  {
    v9 = 0;
    goto LABEL_9;
  }

  v15 = 0;
  v8 = [v7 addBookItem:containerCopy error:&v15];
  v9 = v15;
  if (v8)
  {
LABEL_9:
    v12 = 1;
    goto LABEL_10;
  }

  v10 = BLDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_ERROR, "Failed to add to the cloud. Error:  %@", buf, 0xCu);
  }

  if (error)
  {
    v11 = v9;
    v12 = 0;
    *error = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)removeBookFromLibraryWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_241D23E0C;
  v21 = sub_241D23E1C;
  v22 = 0;
  v7 = +[BLLockFile iTunesSyncLockFile];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D24470;
  v12[3] = &unk_278D169B8;
  v12[4] = self;
  v8 = identifierCopy;
  v13 = v8;
  v14 = &v23;
  v15 = &v17;
  errorCopy = error;
  [v7 lockWithBlock:v12 error:error];
  if (error)
  {
    v9 = v18[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

- (BOOL)_removeBookFromLibraryWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_241D23E0C;
  v21 = sub_241D23E1C;
  v22 = 0;
  v7 = +[BLLockFile iTunesSyncLockFile];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D2492C;
  v12[3] = &unk_278D169B8;
  v12[4] = self;
  v8 = pathCopy;
  v13 = v8;
  v14 = &v23;
  v15 = &v17;
  errorCopy = error;
  [v7 lockWithBlock:v12 error:error];
  if (error)
  {
    v9 = v18[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

- (id)bookIdentifierFromURL:(id)l error:(id *)error
{
  path = [l path];
  v6 = [BLLibraryUtility identifierFromBookPath:path error:error];

  return v6;
}

- (id)_allPlists
{
  v16[3] = *MEMORY[0x277D85DE8];
  booksPlist = [(BLLibrary *)self booksPlist];
  v4 = booksPlist;
  v5 = MEMORY[0x277CBEBF8];
  if (booksPlist)
  {
    v6 = booksPlist;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  purchasedPlist = [(BLLibrary *)self purchasedPlist];
  v8 = purchasedPlist;
  if (purchasedPlist)
  {
    v9 = purchasedPlist;
  }

  else
  {
    v9 = v5;
  }

  v16[1] = v9;
  managedPlist = [(BLLibrary *)self managedPlist];
  v11 = managedPlist;
  if (managedPlist)
  {
    v12 = managedPlist;
  }

  else
  {
    v12 = v5;
  }

  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_list:(id)_list testBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  [(BLLibrary *)self _bookItemsFromPlist:_list];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (blockCopy[2](blockCopy, v11))
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_findBookItemWithTestBlock:(id)block foundWhere:(int64_t *)where
{
  blockCopy = block;
  _allPlists = [(BLLibrary *)self _allPlists];
  if (where)
  {
    *where = 3;
  }

  v8 = 0;
  while (1)
  {
    v9 = [_allPlists objectAtIndexedSubscript:v8];
    v10 = [(BLLibrary *)self _list:v9 testBlock:blockCopy];

    if (v10)
    {
      break;
    }

    if (++v8 == 3)
    {
      goto LABEL_9;
    }
  }

  if (where)
  {
    *where = v8;
  }

LABEL_9:

  return v10;
}

- (id)_bookItemFromStoreID:(id)d permlink:(id)permlink error:(id *)error
{
  dCopy = d;
  permlinkCopy = permlink;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_241D25100;
  v18 = &unk_278D169E0;
  v10 = dCopy;
  v19 = v10;
  v11 = permlinkCopy;
  v20 = v11;
  v12 = [(BLLibrary *)self _findBookItemWithTestBlock:&v15 foundWhere:0];
  v13 = v12;
  if (error && !v12)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:{0, v15, v16, v17, v18, v19}];
  }

  return v13;
}

- (id)_bookItemFromPermlink:(id)permlink error:(id *)error
{
  permlinkCopy = permlink;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D25270;
  v11[3] = &unk_278D16968;
  v7 = permlinkCopy;
  v12 = v7;
  v8 = [(BLLibrary *)self _findBookItemWithTestBlock:v11 foundWhere:0];
  v9 = v8;
  if (error && !v8)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
  }

  return v9;
}

- (BOOL)_isShareableBook:(id)book
{
  bookCopy = book;
  v4 = [IMLibraryPlist storeIdFromPlistEntry:bookCopy];
  v5 = [IMLibraryPlist isSampleFromPlistEntry:bookCopy];
  bOOLValue = [v5 BOOLValue];

  v7 = [IMLibraryPlist isSupplementalContentFromPlistEntry:bookCopy];
  v8 = [IMLibraryPlist isPDFFromPlistEntry:bookCopy];
  v9 = 0;
  if ((bOOLValue & 1) == 0 && (!v7 || !v8))
  {
    if ([v4 length])
    {
      v9 = 1;
    }

    else
    {
      v10 = [IMLibraryPlist permlinkFromPlistEntry:bookCopy];
      v9 = v10 != 0;
    }
  }

  return v9;
}

- (id)_perUserBookURLForBookURL:(id)l
{
  v59 = *MEMORY[0x277D85DE8];
  lCopy = l;
  path = [lCopy path];
  stringByStandardizingPath = [path stringByStandardizingPath];

  sharedPlist = [(BLLibrary *)self sharedPlist];
  path2 = [sharedPlist path];
  stringByDeletingLastPathComponent = [path2 stringByDeletingLastPathComponent];
  stringByStandardizingPath2 = [stringByDeletingLastPathComponent stringByStandardizingPath];

  stringByDeletingLastPathComponent2 = [stringByStandardizingPath stringByDeletingLastPathComponent];
  LODWORD(path2) = [stringByDeletingLastPathComponent2 isEqualToString:stringByStandardizingPath2];

  if (!path2)
  {
    goto LABEL_30;
  }

  lastPathComponent = [stringByStandardizingPath lastPathComponent];
  sharedPlist2 = [(BLLibrary *)self sharedPlist];
  contents = [sharedPlist2 contents];
  v15 = [IMLibraryPlist booksArrayFromPlistEntry:contents];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  selfCopy = self;
  if (v16)
  {
    v17 = v16;
    v18 = *v54;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v53 + 1) + 8 * i);
        v21 = [IMLibraryPlist folderNameFromPlistEntry:v20];
        if ([v21 isEqualToString:lastPathComponent])
        {
          v22 = [IMLibraryPlist assetIDFromPlistEntry:v20];
          v47 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:v20];

          goto LABEL_12;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v47 = 0;
    v22 = 0;
LABEL_12:
    self = selfCopy;
  }

  else
  {
    v47 = 0;
    v22 = 0;
  }

  if ([v22 length] || objc_msgSend(v47, "length"))
  {
    v44 = stringByStandardizingPath2;
    purchasedPlist = [(BLLibrary *)self purchasedPlist];
    contents2 = [purchasedPlist contents];
    v25 = [IMLibraryPlist booksArrayFromPlistEntry:contents2];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v50;
      v42 = stringByStandardizingPath;
      v43 = lCopy;
      while (2)
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v50 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v49 + 1) + 8 * j);
          v32 = [IMLibraryPlist assetIDFromPlistEntry:v31];
          v33 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:v31];
          if (([v22 isEqualToString:v32] & 1) != 0 || objc_msgSend(v47, "isEqualToString:", v33))
          {
            v41 = MEMORY[0x277CBEBC0];
            purchasedPlist2 = [(BLLibrary *)selfCopy purchasedPlist];
            path3 = [purchasedPlist2 path];
            stringByDeletingLastPathComponent3 = [path3 stringByDeletingLastPathComponent];
            v37 = [IMLibraryPlist folderNameFromPlistEntry:v31];
            v38 = [stringByDeletingLastPathComponent3 stringByAppendingPathComponent:v37];
            v34 = [v41 fileURLWithPath:v38];

            stringByStandardizingPath = v42;
            lCopy = v43;
            goto LABEL_28;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
        v34 = 0;
        stringByStandardizingPath = v42;
        lCopy = v43;
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v34 = 0;
    }

LABEL_28:

    stringByStandardizingPath2 = v44;
  }

  else
  {
    v34 = 0;
  }

  if (!v34)
  {
LABEL_30:
    v34 = lCopy;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_downloadWithPermalink:(id)permalink title:(id)title result:(id)result
{
  permalinkCopy = permalink;
  titleCopy = title;
  resultCopy = result;
  v10 = +[BLDownloadQueueNonUI sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D25904;
  v14[3] = &unk_278D16A08;
  v15 = permalinkCopy;
  v16 = titleCopy;
  v17 = resultCopy;
  v11 = resultCopy;
  v12 = titleCopy;
  v13 = permalinkCopy;
  [v10 addDownloadWithPermlink:v13 title:v12 completion:v14];
}

- (BOOL)_addSharedBookToPurchasesPlistWithPermlink:(id)permlink error:(id *)error
{
  permlinkCopy = permlink;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_241D23E0C;
  v21 = sub_241D23E1C;
  v22 = 0;
  v7 = +[BLLockFile iTunesSyncLockFile];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D25BB4;
  v12[3] = &unk_278D169B8;
  v12[4] = self;
  v8 = permlinkCopy;
  v13 = v8;
  v14 = &v23;
  v15 = &v17;
  errorCopy = error;
  [v7 lockWithBlock:v12 error:error];
  if (error)
  {
    v9 = v18[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

- (BOOL)_bookItemIsShared:(id)shared
{
  v30 = *MEMORY[0x277D85DE8];
  sharedCopy = shared;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  sharedPlist = [(BLLibrary *)self sharedPlist];
  v6 = [(BLLibrary *)self _bookItemsFromPlist:sharedPlist];

  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = sharedCopy;
        v12 = v10;
        permlink = [v11 permlink];
        if (permlink && (v14 = permlink, [v12 permlink], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
        {
          permlink2 = [v11 permlink];
          permlink3 = [v12 permlink];
          v18 = [permlink2 isEqual:permlink3];
        }

        else
        {
          storeIdentifier = [v11 storeIdentifier];
          if (!storeIdentifier || (v20 = storeIdentifier, [v12 storeIdentifier], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
          {

            continue;
          }

          permlink2 = [v11 storeIdentifier];
          permlink3 = [v12 storeIdentifier];
          v18 = [permlink2 isEqualToString:permlink3];
        }

        v22 = v18;

        if (v22)
        {
          LOBYTE(v7) = 1;
          goto LABEL_17;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_bookWasOpenedWithStoreID:(id)d permlink:(id)permlink date:(id)date
{
  dCopy = d;
  permlinkCopy = permlink;
  dateCopy = date;
  dispatchQueue = [(BLLibrary *)self dispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D262D8;
  v15[3] = &unk_278D16A30;
  v16 = dCopy;
  v17 = permlinkCopy;
  selfCopy = self;
  v19 = dateCopy;
  v12 = dateCopy;
  v13 = permlinkCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

+ (BOOL)_addDate:(id)date toPlist:(id)plist bookItem:(id)item error:(id *)error
{
  dateCopy = date;
  plistCopy = plist;
  itemCopy = item;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_241D23E0C;
  v30 = sub_241D23E1C;
  v31 = 0;
  v12 = +[BLLockFile iTunesSyncLockFile];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_241D265C8;
  v19[3] = &unk_278D16A58;
  v13 = plistCopy;
  v20 = v13;
  v14 = itemCopy;
  v21 = v14;
  v15 = dateCopy;
  v22 = v15;
  v23 = &v32;
  v24 = &v26;
  errorCopy = error;
  [v12 lockWithBlock:v19 error:error];
  if (error)
  {
    v16 = v27[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

@end