@interface BLCacheDelete
- (BLCacheDelete)init;
- (id)_duplicateStoreBooksInPlist:(id)plist inVolume:(id)volume;
- (id)_duplicatedPurchasedBooksInVolume:(id)volume;
- (id)_initWithLibrary:(id)library multiUser:(BOOL)user;
- (id)_orphanedBookURLs:(id)ls inVolume:(id)volume;
- (id)_orphanedPurchasedBookURLsInVolume:(id)volume;
- (id)_orphanedSharedBookURLsInVolume:(id)volume;
- (id)_scoreBooksInVolume:(id)volume;
- (id)purchasedPlist;
- (id)sharedPlist;
- (int64_t)periodicPurgeVolume:(id)volume urgency:(int64_t)urgency requested:(id)requested;
- (int64_t)purgeVolume:(id)volume urgency:(int64_t)urgency requested:(id)requested;
- (int64_t)purgeableAmountForVolume:(id)volume urgency:(int64_t)urgency;
- (void)_deleteBooks:(id)books fromPlist:(id)plist;
- (void)cancelPurge;
@end

@implementation BLCacheDelete

- (id)_initWithLibrary:(id)library multiUser:(BOOL)user
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = BLCacheDelete;
  v8 = [(BLCacheDelete *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_multiUser = user;
    objc_storeStrong(&v8->_library, library);
  }

  return v9;
}

- (BLCacheDelete)init
{
  v3 = +[BLLibrary defaultBookLibrary];
  v4 = [(BLCacheDelete *)self _initWithLibrary:v3 multiUser:+[BLLibraryUtility _isMultiUser]];

  return v4;
}

- (id)purchasedPlist
{
  library = [(BLCacheDelete *)self library];
  purchasedPlist = [library purchasedPlist];

  return purchasedPlist;
}

- (id)sharedPlist
{
  library = [(BLCacheDelete *)self library];
  sharedPlist = [library sharedPlist];

  return sharedPlist;
}

- (int64_t)purgeVolume:(id)volume urgency:(int64_t)urgency requested:(id)requested
{
  volumeCopy = volume;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  requestedCopy = requested;
  integerValue = [requestedCopy integerValue];
  context = objc_autoreleasePoolPush();
  v7 = [(BLCacheDelete *)self _orphanedPurchasedBookURLsInVolume:volumeCopy];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100073414;
  v46[3] = &unk_10011D670;
  v46[4] = &v47;
  [v7 enumerateObjectsUsingBlock:v46];
  v30 = v7;
  v8 = [(BLCacheDelete *)self _orphanedSharedBookURLsInVolume:volumeCopy];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100073560;
  v45[3] = &unk_10011D670;
  v45[4] = &v47;
  [v8 enumerateObjectsUsingBlock:v45];
  v28 = v8;
  v9 = +[NSMutableArray array];
  v34 = [(BLCacheDelete *)self _duplicatedPurchasedBooksInVolume:volumeCopy];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000736AC;
  v42[3] = &unk_10011D698;
  v44 = &v47;
  v33 = v9;
  v43 = v33;
  [v34 enumerateObjectsUsingBlock:v42];
  purchasedPlist = [(BLCacheDelete *)self purchasedPlist];
  [(BLCacheDelete *)self _deleteBooks:v33 fromPlist:purchasedPlist];

  if ([(BLCacheDelete *)self isMultiUser])
  {
    v11 = +[NSMutableArray array];
    v12 = MaxPriorityForUrgency(urgency);
    [(BLCacheDelete *)self _scoreBooksInVolume:volumeCopy];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v13 = v39 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v59 count:16];
    if (v14)
    {
      v15 = *v39;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (v48[3] >= integerValue)
        {
          break;
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        if ([v17 purgePriority] > v12)
        {
          break;
        }

        v37 = 0;
        path = [v17 path];
        v19 = DeleteBook(path, &v37);

        if (v19)
        {
          v20 = BLBookCacheDeleteLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            path2 = [v17 path];
            *buf = 138412546;
            v52 = path2;
            v53 = 2050;
            v54 = v37;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Cache deleted shared book %@.  Recovered %{public}ld.", buf, 0x16u);
          }

          v48[3] += v37;
          [v11 addObject:v17];
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v38 objects:v59 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    sharedPlist = [(BLCacheDelete *)self sharedPlist];
    [(BLCacheDelete *)self _deleteBooks:v11 fromPlist:sharedPlist];
  }

  objc_autoreleasePoolPop(context);
  v23 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = MaxPriorityForUrgency(urgency);
    v25 = v48[3];
    *buf = 138413058;
    v52 = volumeCopy;
    v53 = 2050;
    v54 = v24;
    v55 = 2050;
    v56 = integerValue;
    v57 = 2050;
    v58 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "purgeVolume:%@ urgency:%{public}ld requested:%{public}ld recovered:%{public}ld", buf, 0x2Au);
  }

  v26 = v48[3];
  _Block_object_dispose(&v47, 8);

  return v26;
}

- (int64_t)periodicPurgeVolume:(id)volume urgency:(int64_t)urgency requested:(id)requested
{
  v5 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Periodic purge is not supported.", v7, 2u);
  }

  return 0;
}

- (int64_t)purgeableAmountForVolume:(id)volume urgency:(int64_t)urgency
{
  volumeCopy = volume;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  context = objc_autoreleasePoolPush();
  v7 = [(BLCacheDelete *)self _orphanedPurchasedBookURLsInVolume:volumeCopy];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100073C18;
  v29[3] = &unk_10011D670;
  v29[4] = &v30;
  [v7 enumerateObjectsUsingBlock:v29];
  v8 = [(BLCacheDelete *)self _orphanedSharedBookURLsInVolume:volumeCopy];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100073C7C;
  v28[3] = &unk_10011D670;
  v28[4] = &v30;
  [v8 enumerateObjectsUsingBlock:v28];
  v9 = [(BLCacheDelete *)self _duplicatedPurchasedBooksInVolume:volumeCopy];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100073CE0;
  v27[3] = &unk_10011D6C0;
  v27[4] = &v30;
  [v9 enumerateObjectsUsingBlock:v27];
  v10 = MaxPriorityForUrgency(urgency);
  if ([(BLCacheDelete *)self isMultiUser])
  {
    [(BLCacheDelete *)self _scoreBooksInVolume:volumeCopy];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v11 = v24 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v42 count:16];
    if (v12)
    {
      v13 = *v24;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        if ([v15 purgePriority] > v10)
        {
          break;
        }

        path = [v15 path];
        v17 = FileSizeOfBook(path);
        v31[3] += v17;

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v42 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v18 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v31[3];
    *buf = 141558786;
    v35 = 1752392040;
    v36 = 2112;
    v37 = volumeCopy;
    v38 = 2050;
    v39 = v10;
    v40 = 2050;
    v41 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Purgeable amount for volume:%{mask.hash}@ urgency:%{public}ld = %{public}ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(context);
  v20 = v31[3];
  _Block_object_dispose(&v30, 8);

  return v20;
}

- (void)cancelPurge
{
  v2 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Cancel purge is not supported.", v3, 2u);
  }
}

- (id)_scoreBooksInVolume:(id)volume
{
  volumeCopy = volume;
  v38 = +[NSMutableArray array];
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableSet set];
  library = [(BLCacheDelete *)self library];
  allBookItems = [library allBookItems];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = allBookItems;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        permlink = [v14 permlink];

        if (permlink)
        {
          permlink2 = [v14 permlink];
          [v5 addObject:permlink2];
        }

        storeIdentifier = [v14 storeIdentifier];

        if (storeIdentifier)
        {
          storeIdentifier2 = [v14 storeIdentifier];
          [v6 addObject:storeIdentifier2];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v11);
  }

  v36 = v9;
  v37 = v6;

  sharedPlist = [(BLCacheDelete *)self sharedPlist];
  sharedPlist2 = [(BLCacheDelete *)self sharedPlist];
  v21 = [BLLibrary _bookItemsFromPlist:sharedPlist sharedPlist:sharedPlist2];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v39 + 1) + 8 * j);
        fileURL = [v27 fileURL];
        v29 = [fileURL bl_isInVolume:volumeCopy];

        if (v29)
        {
          permlink3 = [v27 permlink];
          if ([v5 containsObject:permlink3])
          {
            v31 = 1;
          }

          else
          {
            storeIdentifier3 = [v27 storeIdentifier];
            v31 = [v37 containsObject:storeIdentifier3];
          }

          lastUserAccessDate = [v27 lastUserAccessDate];
          [v27 setPurgePriority:{PurgePriority(v31, lastUserAccessDate)}];

          [v38 addObject:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v24);
  }

  v34 = [v38 sortedArrayUsingComparator:&stru_10011D700];

  return v34;
}

- (void)_deleteBooks:(id)books fromPlist:(id)plist
{
  booksCopy = books;
  plistCopy = plist;
  v7 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = booksCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Trimming the following paths from the shared list: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x3032000000;
  v57 = sub_10007472C;
  v58 = sub_10007473C;
  v59 = +[NSMutableArray array];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_10007472C;
  v49 = sub_10007473C;
  v50 = +[NSMutableArray array];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10007472C;
  v43 = sub_10007473C;
  v44 = +[NSMutableArray array];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100074744;
  v38[3] = &unk_10011D728;
  v38[4] = &buf;
  v38[5] = &v45;
  v38[6] = &v39;
  [booksCopy enumerateObjectsUsingBlock:v38];
  v8 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v46[5];
    v10 = v40[5];
    *v51 = 138412546;
    v52 = v9;
    v53 = 2112;
    v54 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removing assets with storeIDs: %@ and permlinks: %@", v51, 0x16u);
  }

  [plistCopy addDeletedFiles:*(*(&buf + 1) + 40)];
  contents = [plistCopy contents];
  v12 = contents;
  if (contents)
  {
    v13 = contents;
  }

  else
  {
    v13 = +[NSDictionary dictionary];
  }

  v14 = v13;

  unfilteredContents = [plistCopy unfilteredContents];
  v16 = [IMLibraryPlist booksArrayFromPlistEntry:unfilteredContents];
  v17 = [v16 count];

  path = [plistCopy path];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100074830;
  v33[3] = &unk_10011D750;
  v35 = &v45;
  v36 = &v39;
  v19 = plistCopy;
  v34 = v19;
  p_buf = &buf;
  v20 = objc_retainBlock(v33);
  v21 = +[BLLockFile iTunesSyncLockFile];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100074944;
  v28[3] = &unk_10011D778;
  v22 = v14;
  v29 = v22;
  v23 = v20;
  v31 = v23;
  v32 = v17;
  v24 = path;
  v30 = v24;
  if (([v21 lockWithBlock:v28 error:0] & 1) == 0)
  {
    v25 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path2 = [v19 path];
      lastPathComponent = [path2 lastPathComponent];
      *v51 = 138543362;
      v52 = lastPathComponent;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to update %{public}@", v51, 0xCu);
    }
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&buf, 8);
}

- (id)_orphanedSharedBookURLsInVolume:(id)volume
{
  volumeCopy = volume;
  if ([(BLCacheDelete *)self isMultiUser])
  {
    sharedPlist = [(BLCacheDelete *)self sharedPlist];
    v6 = [(BLCacheDelete *)self _orphanedBookURLs:sharedPlist inVolume:volumeCopy];
  }

  else
  {
    v6 = +[NSSet set];
  }

  return v6;
}

- (id)_orphanedPurchasedBookURLsInVolume:(id)volume
{
  volumeCopy = volume;
  purchasedPlist = [(BLCacheDelete *)self purchasedPlist];
  v6 = [(BLCacheDelete *)self _orphanedBookURLs:purchasedPlist inVolume:volumeCopy];

  return v6;
}

- (id)_orphanedBookURLs:(id)ls inVolume:(id)volume
{
  lsCopy = ls;
  volumeCopy = volume;
  v8 = +[NSFileManager defaultManager];
  v9 = +[NSMutableSet set];
  directory = [lsCopy directory];
  v11 = [directory bl_isInVolume:volumeCopy];

  if (v11)
  {
    v33 = v8;
    v12 = +[NSMutableSet set];
    sharedPlist = [(BLCacheDelete *)self sharedPlist];
    v14 = [BLLibrary _bookItemsFromPlist:lsCopy sharedPlist:sharedPlist];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          path = [*(*(&v34 + 1) + 8 * i) path];
          lastPathComponent = [path lastPathComponent];
          [v12 addObject:lastPathComponent];
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
    }

    directory2 = [lsCopy directory];
    v23 = [NSURL fileURLWithPath:directory2];
    v24 = [v33 enumeratorAtURL:v23 includingPropertiesForKeys:&__NSArray0__struct options:3 errorHandler:&stru_10011D7B8];

    nextObject = [v24 nextObject];
    if (nextObject)
    {
      v26 = nextObject;
      do
      {
        pathExtension = [v26 pathExtension];
        v28 = BLBookTypeFromPathExtension();

        if (v28 <= 2)
        {
          lastPathComponent2 = [v26 lastPathComponent];
          v30 = [v12 containsObject:lastPathComponent2];

          if ((v30 & 1) == 0)
          {
            [v9 addObject:v26];
          }
        }

        nextObject2 = [v24 nextObject];

        v26 = nextObject2;
      }

      while (nextObject2);
    }

    v8 = v33;
  }

  return v9;
}

- (id)_duplicatedPurchasedBooksInVolume:(id)volume
{
  volumeCopy = volume;
  purchasedPlist = [(BLCacheDelete *)self purchasedPlist];
  v6 = [(BLCacheDelete *)self _duplicateStoreBooksInPlist:purchasedPlist inVolume:volumeCopy];

  return v6;
}

- (id)_duplicateStoreBooksInPlist:(id)plist inVolume:(id)volume
{
  plistCopy = plist;
  volumeCopy = volume;
  v8 = +[NSMutableSet set];
  v9 = +[NSMutableSet set];
  v10 = +[NSMutableSet set];
  sharedPlist = [(BLCacheDelete *)self sharedPlist];
  v33 = plistCopy;
  v12 = [BLLibrary _bookItemsFromPlist:plistCopy sharedPlist:sharedPlist];

  reverseObjectEnumerator = [v12 reverseObjectEnumerator];
  nextObject = [reverseObjectEnumerator nextObject];
  if (nextObject)
  {
    v15 = nextObject;
    do
    {
      fileURL = [v15 fileURL];
      v17 = [fileURL bl_isInVolume:volumeCopy];

      if (v17)
      {
        storeIdentifier = [v15 storeIdentifier];
        v19 = [storeIdentifier length];

        if (v19)
        {
          storeIdentifier2 = [v15 storeIdentifier];
          v21 = [v9 containsObject:storeIdentifier2];

          if (!v21)
          {
            storeIdentifier3 = [v15 storeIdentifier];
            v30 = v9;
            goto LABEL_14;
          }

          [v8 addObject:v15];
          storeIdentifier3 = BLBookCacheDeleteLog();
          if (os_log_type_enabled(storeIdentifier3, OS_LOG_TYPE_INFO))
          {
            storeIdentifier4 = [v15 storeIdentifier];
            path = [v15 path];
            *buf = 138412546;
            v35 = storeIdentifier4;
            v36 = 2112;
            v37 = path;
            _os_log_impl(&_mh_execute_header, storeIdentifier3, OS_LOG_TYPE_INFO, "Found duplicate book in plist with id %@ at %@", buf, 0x16u);
          }

LABEL_15:

          goto LABEL_16;
        }

        permlink = [v15 permlink];

        if (permlink)
        {
          permlink2 = [v15 permlink];
          v27 = [v10 containsObject:permlink2];

          if (v27)
          {
            [v8 addObject:v15];
            storeIdentifier3 = BLBookCacheDeleteLog();
            if (os_log_type_enabled(storeIdentifier3, OS_LOG_TYPE_INFO))
            {
              permlink3 = [v15 permlink];
              path2 = [v15 path];
              *buf = 138412546;
              v35 = permlink3;
              v36 = 2112;
              v37 = path2;
              _os_log_impl(&_mh_execute_header, storeIdentifier3, OS_LOG_TYPE_INFO, "Found duplicate book in plist with id %@ at %@", buf, 0x16u);
            }

            goto LABEL_15;
          }

          storeIdentifier3 = [v15 permlink];
          v30 = v10;
LABEL_14:
          [v30 addObject:storeIdentifier3];
          goto LABEL_15;
        }
      }

LABEL_16:
      nextObject2 = [reverseObjectEnumerator nextObject];

      v15 = nextObject2;
    }

    while (nextObject2);
  }

  return v8;
}

@end