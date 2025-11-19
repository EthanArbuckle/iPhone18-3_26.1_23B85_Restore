@interface BLCacheDelete
- (BLCacheDelete)init;
- (id)_duplicateStoreBooksInPlist:(id)a3 inVolume:(id)a4;
- (id)_duplicatedPurchasedBooksInVolume:(id)a3;
- (id)_initWithLibrary:(id)a3 multiUser:(BOOL)a4;
- (id)_orphanedBookURLs:(id)a3 inVolume:(id)a4;
- (id)_orphanedPurchasedBookURLsInVolume:(id)a3;
- (id)_orphanedSharedBookURLsInVolume:(id)a3;
- (id)_scoreBooksInVolume:(id)a3;
- (id)purchasedPlist;
- (id)sharedPlist;
- (int64_t)periodicPurgeVolume:(id)a3 urgency:(int64_t)a4 requested:(id)a5;
- (int64_t)purgeVolume:(id)a3 urgency:(int64_t)a4 requested:(id)a5;
- (int64_t)purgeableAmountForVolume:(id)a3 urgency:(int64_t)a4;
- (void)_deleteBooks:(id)a3 fromPlist:(id)a4;
- (void)cancelPurge;
@end

@implementation BLCacheDelete

- (id)_initWithLibrary:(id)a3 multiUser:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BLCacheDelete;
  v8 = [(BLCacheDelete *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_multiUser = a4;
    objc_storeStrong(&v8->_library, a3);
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
  v2 = [(BLCacheDelete *)self library];
  v3 = [v2 purchasedPlist];

  return v3;
}

- (id)sharedPlist
{
  v2 = [(BLCacheDelete *)self library];
  v3 = [v2 sharedPlist];

  return v3;
}

- (int64_t)purgeVolume:(id)a3 urgency:(int64_t)a4 requested:(id)a5
{
  v35 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v29 = a5;
  v36 = [v29 integerValue];
  context = objc_autoreleasePoolPush();
  v7 = [(BLCacheDelete *)self _orphanedPurchasedBookURLsInVolume:v35];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100073414;
  v46[3] = &unk_10011D670;
  v46[4] = &v47;
  [v7 enumerateObjectsUsingBlock:v46];
  v30 = v7;
  v8 = [(BLCacheDelete *)self _orphanedSharedBookURLsInVolume:v35];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100073560;
  v45[3] = &unk_10011D670;
  v45[4] = &v47;
  [v8 enumerateObjectsUsingBlock:v45];
  v28 = v8;
  v9 = +[NSMutableArray array];
  v34 = [(BLCacheDelete *)self _duplicatedPurchasedBooksInVolume:v35];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000736AC;
  v42[3] = &unk_10011D698;
  v44 = &v47;
  v33 = v9;
  v43 = v33;
  [v34 enumerateObjectsUsingBlock:v42];
  v10 = [(BLCacheDelete *)self purchasedPlist];
  [(BLCacheDelete *)self _deleteBooks:v33 fromPlist:v10];

  if ([(BLCacheDelete *)self isMultiUser])
  {
    v11 = +[NSMutableArray array];
    v12 = MaxPriorityForUrgency(a4);
    [(BLCacheDelete *)self _scoreBooksInVolume:v35];
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

        if (v48[3] >= v36)
        {
          break;
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        if ([v17 purgePriority] > v12)
        {
          break;
        }

        v37 = 0;
        v18 = [v17 path];
        v19 = DeleteBook(v18, &v37);

        if (v19)
        {
          v20 = BLBookCacheDeleteLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v17 path];
            *buf = 138412546;
            v52 = v21;
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

    v22 = [(BLCacheDelete *)self sharedPlist];
    [(BLCacheDelete *)self _deleteBooks:v11 fromPlist:v22];
  }

  objc_autoreleasePoolPop(context);
  v23 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = MaxPriorityForUrgency(a4);
    v25 = v48[3];
    *buf = 138413058;
    v52 = v35;
    v53 = 2050;
    v54 = v24;
    v55 = 2050;
    v56 = v36;
    v57 = 2050;
    v58 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "purgeVolume:%@ urgency:%{public}ld requested:%{public}ld recovered:%{public}ld", buf, 0x2Au);
  }

  v26 = v48[3];
  _Block_object_dispose(&v47, 8);

  return v26;
}

- (int64_t)periodicPurgeVolume:(id)a3 urgency:(int64_t)a4 requested:(id)a5
{
  v5 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Periodic purge is not supported.", v7, 2u);
  }

  return 0;
}

- (int64_t)purgeableAmountForVolume:(id)a3 urgency:(int64_t)a4
{
  v6 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  context = objc_autoreleasePoolPush();
  v7 = [(BLCacheDelete *)self _orphanedPurchasedBookURLsInVolume:v6];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100073C18;
  v29[3] = &unk_10011D670;
  v29[4] = &v30;
  [v7 enumerateObjectsUsingBlock:v29];
  v8 = [(BLCacheDelete *)self _orphanedSharedBookURLsInVolume:v6];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100073C7C;
  v28[3] = &unk_10011D670;
  v28[4] = &v30;
  [v8 enumerateObjectsUsingBlock:v28];
  v9 = [(BLCacheDelete *)self _duplicatedPurchasedBooksInVolume:v6];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100073CE0;
  v27[3] = &unk_10011D6C0;
  v27[4] = &v30;
  [v9 enumerateObjectsUsingBlock:v27];
  v10 = MaxPriorityForUrgency(a4);
  if ([(BLCacheDelete *)self isMultiUser])
  {
    [(BLCacheDelete *)self _scoreBooksInVolume:v6];
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

        v16 = [v15 path];
        v17 = FileSizeOfBook(v16);
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
    v37 = v6;
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

- (id)_scoreBooksInVolume:(id)a3
{
  v4 = a3;
  v38 = +[NSMutableArray array];
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableSet set];
  v7 = [(BLCacheDelete *)self library];
  v8 = [v7 allBookItems];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = v8;
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
        v15 = [v14 permlink];

        if (v15)
        {
          v16 = [v14 permlink];
          [v5 addObject:v16];
        }

        v17 = [v14 storeIdentifier];

        if (v17)
        {
          v18 = [v14 storeIdentifier];
          [v6 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v11);
  }

  v36 = v9;
  v37 = v6;

  v19 = [(BLCacheDelete *)self sharedPlist];
  v20 = [(BLCacheDelete *)self sharedPlist];
  v21 = [BLLibrary _bookItemsFromPlist:v19 sharedPlist:v20];

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
        v28 = [v27 fileURL];
        v29 = [v28 bl_isInVolume:v4];

        if (v29)
        {
          v30 = [v27 permlink];
          if ([v5 containsObject:v30])
          {
            v31 = 1;
          }

          else
          {
            v32 = [v27 storeIdentifier];
            v31 = [v37 containsObject:v32];
          }

          v33 = [v27 lastUserAccessDate];
          [v27 setPurgePriority:{PurgePriority(v31, v33)}];

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

- (void)_deleteBooks:(id)a3 fromPlist:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
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
  [v5 enumerateObjectsUsingBlock:v38];
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

  [v6 addDeletedFiles:*(*(&buf + 1) + 40)];
  v11 = [v6 contents];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[NSDictionary dictionary];
  }

  v14 = v13;

  v15 = [v6 unfilteredContents];
  v16 = [IMLibraryPlist booksArrayFromPlistEntry:v15];
  v17 = [v16 count];

  v18 = [v6 path];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100074830;
  v33[3] = &unk_10011D750;
  v35 = &v45;
  v36 = &v39;
  v19 = v6;
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
  v24 = v18;
  v30 = v24;
  if (([v21 lockWithBlock:v28 error:0] & 1) == 0)
  {
    v25 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v19 path];
      v27 = [v26 lastPathComponent];
      *v51 = 138543362;
      v52 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to update %{public}@", v51, 0xCu);
    }
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&buf, 8);
}

- (id)_orphanedSharedBookURLsInVolume:(id)a3
{
  v4 = a3;
  if ([(BLCacheDelete *)self isMultiUser])
  {
    v5 = [(BLCacheDelete *)self sharedPlist];
    v6 = [(BLCacheDelete *)self _orphanedBookURLs:v5 inVolume:v4];
  }

  else
  {
    v6 = +[NSSet set];
  }

  return v6;
}

- (id)_orphanedPurchasedBookURLsInVolume:(id)a3
{
  v4 = a3;
  v5 = [(BLCacheDelete *)self purchasedPlist];
  v6 = [(BLCacheDelete *)self _orphanedBookURLs:v5 inVolume:v4];

  return v6;
}

- (id)_orphanedBookURLs:(id)a3 inVolume:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSFileManager defaultManager];
  v9 = +[NSMutableSet set];
  v10 = [v6 directory];
  v11 = [v10 bl_isInVolume:v7];

  if (v11)
  {
    v33 = v8;
    v12 = +[NSMutableSet set];
    v13 = [(BLCacheDelete *)self sharedPlist];
    v14 = [BLLibrary _bookItemsFromPlist:v6 sharedPlist:v13];

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

          v20 = [*(*(&v34 + 1) + 8 * i) path];
          v21 = [v20 lastPathComponent];
          [v12 addObject:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
    }

    v22 = [v6 directory];
    v23 = [NSURL fileURLWithPath:v22];
    v24 = [v33 enumeratorAtURL:v23 includingPropertiesForKeys:&__NSArray0__struct options:3 errorHandler:&stru_10011D7B8];

    v25 = [v24 nextObject];
    if (v25)
    {
      v26 = v25;
      do
      {
        v27 = [v26 pathExtension];
        v28 = BLBookTypeFromPathExtension();

        if (v28 <= 2)
        {
          v29 = [v26 lastPathComponent];
          v30 = [v12 containsObject:v29];

          if ((v30 & 1) == 0)
          {
            [v9 addObject:v26];
          }
        }

        v31 = [v24 nextObject];

        v26 = v31;
      }

      while (v31);
    }

    v8 = v33;
  }

  return v9;
}

- (id)_duplicatedPurchasedBooksInVolume:(id)a3
{
  v4 = a3;
  v5 = [(BLCacheDelete *)self purchasedPlist];
  v6 = [(BLCacheDelete *)self _duplicateStoreBooksInPlist:v5 inVolume:v4];

  return v6;
}

- (id)_duplicateStoreBooksInPlist:(id)a3 inVolume:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet set];
  v9 = +[NSMutableSet set];
  v10 = +[NSMutableSet set];
  v11 = [(BLCacheDelete *)self sharedPlist];
  v33 = v6;
  v12 = [BLLibrary _bookItemsFromPlist:v6 sharedPlist:v11];

  v13 = [v12 reverseObjectEnumerator];
  v14 = [v13 nextObject];
  if (v14)
  {
    v15 = v14;
    do
    {
      v16 = [v15 fileURL];
      v17 = [v16 bl_isInVolume:v7];

      if (v17)
      {
        v18 = [v15 storeIdentifier];
        v19 = [v18 length];

        if (v19)
        {
          v20 = [v15 storeIdentifier];
          v21 = [v9 containsObject:v20];

          if (!v21)
          {
            v22 = [v15 storeIdentifier];
            v30 = v9;
            goto LABEL_14;
          }

          [v8 addObject:v15];
          v22 = BLBookCacheDeleteLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [v15 storeIdentifier];
            v24 = [v15 path];
            *buf = 138412546;
            v35 = v23;
            v36 = 2112;
            v37 = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Found duplicate book in plist with id %@ at %@", buf, 0x16u);
          }

LABEL_15:

          goto LABEL_16;
        }

        v25 = [v15 permlink];

        if (v25)
        {
          v26 = [v15 permlink];
          v27 = [v10 containsObject:v26];

          if (v27)
          {
            [v8 addObject:v15];
            v22 = BLBookCacheDeleteLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v28 = [v15 permlink];
              v29 = [v15 path];
              *buf = 138412546;
              v35 = v28;
              v36 = 2112;
              v37 = v29;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Found duplicate book in plist with id %@ at %@", buf, 0x16u);
            }

            goto LABEL_15;
          }

          v22 = [v15 permlink];
          v30 = v10;
LABEL_14:
          [v30 addObject:v22];
          goto LABEL_15;
        }
      }

LABEL_16:
      v31 = [v13 nextObject];

      v15 = v31;
    }

    while (v31);
  }

  return v8;
}

@end