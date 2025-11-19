@interface BLLibrary
+ (BOOL)_addDate:(id)a3 toPlist:(id)a4 bookItem:(id)a5 error:(id *)a6;
+ (id)_bookItemsFromPlist:(id)a3 sharedPlist:(id)a4;
+ (id)defaultBookLibrary;
+ (void)initialize;
- (BOOL)_addBookItemToEduContainer:(id)a3 error:(id *)a4;
- (BOOL)_addSharedBookToPurchasesPlistWithPermlink:(id)a3 error:(id *)a4;
- (BOOL)_bookItemIsShared:(id)a3;
- (BOOL)_isShareableBook:(id)a3;
- (BOOL)_removeBookFromLibraryWithPath:(id)a3 error:(id *)a4;
- (BOOL)removeBookFromLibraryWithIdentifier:(id)a3 error:(id *)a4;
- (id)_allPlists;
- (id)_bookItemFromPermlink:(id)a3 error:(id *)a4;
- (id)_bookItemFromStoreID:(id)a3 permlink:(id)a4 error:(id *)a5;
- (id)_bookItemsFromPlist:(id)a3;
- (id)_findBookItemWithTestBlock:(id)a3 foundWhere:(int64_t *)a4;
- (id)_init;
- (id)_initWithBooksPlist:(id)a3 purchasedPlist:(id)a4 managedPlist:(id)a5 sharedPlist:(id)a6;
- (id)_list:(id)a3 testBlock:(id)a4;
- (id)_lookupBookItemExhaustiveFromPermlink:(id)a3 error:(id *)a4;
- (id)_perUserBookURLForBookURL:(id)a3;
- (id)allBookItems;
- (id)bookIdentifierFromURL:(id)a3 error:(id *)a4;
- (void)_bookWasOpenedWithStoreID:(id)a3 permlink:(id)a4 date:(id)a5;
- (void)_downloadWithPermalink:(id)a3 title:(id)a4 result:(id)a5;
- (void)addITunesUBookToLibraryWithPermlink:(id)a3 title:(id)a4 result:(id)a5;
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
  block[4] = a1;
  dispatch_sync(qword_280BC59A8, block);
  v2 = qword_280BC59B0;

  return v2;
}

- (id)_initWithBooksPlist:(id)a3 purchasedPlist:(id)a4 managedPlist:(id)a5 sharedPlist:(id)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = BLLibrary;
  v15 = [(BLLibrary *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_purchasedPlist, a4);
    objc_storeStrong(&v16->_booksPlist, a3);
    objc_storeStrong(&v16->_managedPlist, a5);
    objc_storeStrong(&v16->_sharedPlist, a6);
    v17 = dispatch_queue_create("com.apple.BookLibrary.BLLibrary", 0);
    dispatchQueue = v16->_dispatchQueue;
    v16->_dispatchQueue = v17;

    v24 = @"BLLibraryAllowsDownloadsViaBookAssetDaemonForITunesUBooks";
    v25[0] = MEMORY[0x277CBEC28];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v20 registerDefaults:v19];
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

- (id)_bookItemsFromPlist:(id)a3
{
  v4 = a3;
  v5 = [(BLLibrary *)self sharedPlist];
  v6 = [BLLibrary _bookItemsFromPlist:v4 sharedPlist:v5];

  return v6;
}

+ (id)_bookItemsFromPlist:(id)a3 sharedPlist:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v28 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 contents];
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
    v24 = v6;
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
        v12 = [v5 directory];
        v13 = [v12 stringByAppendingPathComponent:v11];
        v14 = [v28 fileExistsAtPath:v13];
        if (v6 && (v14 & 1) == 0)
        {
          v15 = v7;
          v16 = v5;
          v17 = [v6 directory];
          v18 = [v17 stringByAppendingPathComponent:v11];

          if ([v28 fileExistsAtPath:v18])
          {
            v19 = [v6 directory];

            v12 = v19;
          }

          v5 = v16;
          v7 = v15;
          v8 = 0x278D16000;
          v6 = v24;
        }

        v20 = [[BLBookItem alloc] initWithEntry:v10 basePath:v12];
        [v7 addObject:v20];
      }

      v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v27);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)allBookItems
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = +[BLLockFile iTunesSyncLockFile];
  if ([v4 tryLock:0])
  {
    v5 = [(BLLibrary *)self purchasedPlist];
    v6 = [(BLLibrary *)self _bookItemsFromPlist:v5];
    [v3 addObjectsFromArray:v6];

    v7 = [(BLLibrary *)self booksPlist];
    v8 = [(BLLibrary *)self _bookItemsFromPlist:v7];
    [v3 addObjectsFromArray:v8];

    v9 = [(BLLibrary *)self managedPlist];
    v10 = [(BLLibrary *)self _bookItemsFromPlist:v9];
    [v3 addObjectsFromArray:v10];
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

  return v3;
}

- (void)addITunesUBookToLibraryWithPermlink:(id)a3 title:(id)a4 result:(id)a5
{
  v56[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
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
    v11 = [(BLLibrary *)self _bookItemFromPermlink:v8 error:&obj];
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
        v13 = [(BLLibrary *)self sharedPlist];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = sub_241D23E24;
        v41[3] = &unk_278D16968;
        v14 = v8;
        v42 = v14;
        v15 = [(BLLibrary *)self _list:v13 testBlock:v41];
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
    [(BLLibrary *)self _downloadWithPermalink:v8 title:v9 result:v36];
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

    if (v10)
    {
      v10[2](v10, v45[5], *(*(&v52 + 1) + 40));
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v52, 8);

    goto LABEL_39;
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BLLibraryErrorDomain" code:-1002 userInfo:0];
  if (v10)
  {
    (v10)[2](v10, 0, v23);
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

- (id)_lookupBookItemExhaustiveFromPermlink:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"BLLibraryErrorDomain" code:-1002 userInfo:0];
      v8 = 0;
      *a4 = v9 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v7 = [(BLLibrary *)self _bookItemFromPermlink:v6 error:a4];
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

  v10 = [(BLLibrary *)self sharedPlist];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_241D24160;
  v19[3] = &unk_278D16968;
  v11 = v6;
  v20 = v11;
  v8 = [(BLLibrary *)self _list:v10 testBlock:v19];

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

      if (a4)
      {
        v15 = v9;
        *a4 = v9;
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

- (BOOL)_addBookItemToEduContainer:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[BLEduCloudContainer sharedEduCloudContainer];
  v7 = v6;
  if (!v5 || ![v6 isSignedIn])
  {
    v9 = 0;
    goto LABEL_9;
  }

  v15 = 0;
  v8 = [v7 addBookItem:v5 error:&v15];
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

  if (a4)
  {
    v11 = v9;
    v12 = 0;
    *a4 = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)removeBookFromLibraryWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v8 = v6;
  v13 = v8;
  v14 = &v23;
  v15 = &v17;
  v16 = a4;
  [v7 lockWithBlock:v12 error:a4];
  if (a4)
  {
    v9 = v18[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

- (BOOL)_removeBookFromLibraryWithPath:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v8 = v6;
  v13 = v8;
  v14 = &v23;
  v15 = &v17;
  v16 = a4;
  [v7 lockWithBlock:v12 error:a4];
  if (a4)
  {
    v9 = v18[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

- (id)bookIdentifierFromURL:(id)a3 error:(id *)a4
{
  v5 = [a3 path];
  v6 = [BLLibraryUtility identifierFromBookPath:v5 error:a4];

  return v6;
}

- (id)_allPlists
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [(BLLibrary *)self booksPlist];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [(BLLibrary *)self purchasedPlist];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v16[1] = v9;
  v10 = [(BLLibrary *)self managedPlist];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
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

- (id)_list:(id)a3 testBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(BLLibrary *)self _bookItemsFromPlist:a3];
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
        if (v6[2](v6, v11))
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

- (id)_findBookItemWithTestBlock:(id)a3 foundWhere:(int64_t *)a4
{
  v6 = a3;
  v7 = [(BLLibrary *)self _allPlists];
  if (a4)
  {
    *a4 = 3;
  }

  v8 = 0;
  while (1)
  {
    v9 = [v7 objectAtIndexedSubscript:v8];
    v10 = [(BLLibrary *)self _list:v9 testBlock:v6];

    if (v10)
    {
      break;
    }

    if (++v8 == 3)
    {
      goto LABEL_9;
    }
  }

  if (a4)
  {
    *a4 = v8;
  }

LABEL_9:

  return v10;
}

- (id)_bookItemFromStoreID:(id)a3 permlink:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_241D25100;
  v18 = &unk_278D169E0;
  v10 = v8;
  v19 = v10;
  v11 = v9;
  v20 = v11;
  v12 = [(BLLibrary *)self _findBookItemWithTestBlock:&v15 foundWhere:0];
  v13 = v12;
  if (a5 && !v12)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:{0, v15, v16, v17, v18, v19}];
  }

  return v13;
}

- (id)_bookItemFromPermlink:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D25270;
  v11[3] = &unk_278D16968;
  v7 = v6;
  v12 = v7;
  v8 = [(BLLibrary *)self _findBookItemWithTestBlock:v11 foundWhere:0];
  v9 = v8;
  if (a4 && !v8)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
  }

  return v9;
}

- (BOOL)_isShareableBook:(id)a3
{
  v3 = a3;
  v4 = [IMLibraryPlist storeIdFromPlistEntry:v3];
  v5 = [IMLibraryPlist isSampleFromPlistEntry:v3];
  v6 = [v5 BOOLValue];

  v7 = [IMLibraryPlist isSupplementalContentFromPlistEntry:v3];
  v8 = [IMLibraryPlist isPDFFromPlistEntry:v3];
  v9 = 0;
  if ((v6 & 1) == 0 && (!v7 || !v8))
  {
    if ([v4 length])
    {
      v9 = 1;
    }

    else
    {
      v10 = [IMLibraryPlist permlinkFromPlistEntry:v3];
      v9 = v10 != 0;
    }
  }

  return v9;
}

- (id)_perUserBookURLForBookURL:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 path];
  v6 = [v5 stringByStandardizingPath];

  v7 = [(BLLibrary *)self sharedPlist];
  v8 = [v7 path];
  v9 = [v8 stringByDeletingLastPathComponent];
  v10 = [v9 stringByStandardizingPath];

  v11 = [v6 stringByDeletingLastPathComponent];
  LODWORD(v8) = [v11 isEqualToString:v10];

  if (!v8)
  {
    goto LABEL_30;
  }

  v12 = [v6 lastPathComponent];
  v13 = [(BLLibrary *)self sharedPlist];
  v14 = [v13 contents];
  v15 = [IMLibraryPlist booksArrayFromPlistEntry:v14];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  v45 = self;
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
        if ([v21 isEqualToString:v12])
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
    self = v45;
  }

  else
  {
    v47 = 0;
    v22 = 0;
  }

  if ([v22 length] || objc_msgSend(v47, "length"))
  {
    v44 = v10;
    v23 = [(BLLibrary *)self purchasedPlist];
    v24 = [v23 contents];
    v25 = [IMLibraryPlist booksArrayFromPlistEntry:v24];

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
      v42 = v6;
      v43 = v4;
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
            v46 = [(BLLibrary *)v45 purchasedPlist];
            v35 = [v46 path];
            v36 = [v35 stringByDeletingLastPathComponent];
            v37 = [IMLibraryPlist folderNameFromPlistEntry:v31];
            v38 = [v36 stringByAppendingPathComponent:v37];
            v34 = [v41 fileURLWithPath:v38];

            v6 = v42;
            v4 = v43;
            goto LABEL_28;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
        v34 = 0;
        v6 = v42;
        v4 = v43;
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

    v10 = v44;
  }

  else
  {
    v34 = 0;
  }

  if (!v34)
  {
LABEL_30:
    v34 = v4;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_downloadWithPermalink:(id)a3 title:(id)a4 result:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[BLDownloadQueueNonUI sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D25904;
  v14[3] = &unk_278D16A08;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 addDownloadWithPermlink:v13 title:v12 completion:v14];
}

- (BOOL)_addSharedBookToPurchasesPlistWithPermlink:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v8 = v6;
  v13 = v8;
  v14 = &v23;
  v15 = &v17;
  v16 = a4;
  [v7 lockWithBlock:v12 error:a4];
  if (a4)
  {
    v9 = v18[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

- (BOOL)_bookItemIsShared:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(BLLibrary *)self sharedPlist];
  v6 = [(BLLibrary *)self _bookItemsFromPlist:v5];

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
        v11 = v4;
        v12 = v10;
        v13 = [v11 permlink];
        if (v13 && (v14 = v13, [v12 permlink], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
        {
          v16 = [v11 permlink];
          v17 = [v12 permlink];
          v18 = [v16 isEqual:v17];
        }

        else
        {
          v19 = [v11 storeIdentifier];
          if (!v19 || (v20 = v19, [v12 storeIdentifier], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
          {

            continue;
          }

          v16 = [v11 storeIdentifier];
          v17 = [v12 storeIdentifier];
          v18 = [v16 isEqualToString:v17];
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

- (void)_bookWasOpenedWithStoreID:(id)a3 permlink:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BLLibrary *)self dispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D262D8;
  v15[3] = &unk_278D16A30;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

+ (BOOL)_addDate:(id)a3 toPlist:(id)a4 bookItem:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v15 = v9;
  v22 = v15;
  v23 = &v32;
  v24 = &v26;
  v25 = a6;
  [v12 lockWithBlock:v19 error:a6];
  if (a6)
  {
    v16 = v27[5];
    if (v16)
    {
      *a6 = v16;
    }
  }

  v17 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

@end