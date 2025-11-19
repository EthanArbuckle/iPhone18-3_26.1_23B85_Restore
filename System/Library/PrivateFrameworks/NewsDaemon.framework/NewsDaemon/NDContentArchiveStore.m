@interface NDContentArchiveStore
+ (void)_prepareRootContainerAtPath:(id)a3;
- (BOOL)_isContentIDComplete:(id)a3;
- (BOOL)isContentIDComplete:(id)a3;
- (NDContentArchiveStore)initWithParentDirectory:(id)a3 name:(id)a4;
- (NSArray)allCompleteContentIDs;
- (id)_blobPathForName:(id)a3 contentID:(id)a4;
- (id)_containerPathForContentID:(id)a3;
- (id)_manifestPathForContentID:(id)a3;
- (id)_newUniqueArchivePathForContentID:(id)a3;
- (id)_tokenPathForContentID:(id)a3;
- (id)aggregateArchiveForContentID:(id)a3;
- (id)archivesForContentID:(id)a3;
- (id)blobWithName:(id)a3 contentID:(id)a4;
- (id)bookmarkForBlobWithName:(id)a3 contentID:(id)a4;
- (id)interestTokenForContentID:(id)a3;
- (id)interestTokenForContentIDs:(id)a3;
- (id)manifestForContentID:(id)a3;
- (int64_t)storageSize;
- (void)_pruneArchivesFromContainer:(id)a3 forContentID:(id)a4;
- (void)addArchive:(id)a3 forContentID:(id)a4;
- (void)addBlob:(id)a3 name:(id)a4 contentID:(id)a5;
- (void)addManifest:(id)a3 forContentID:(id)a4;
- (void)cacheCoordinator:(id)a3 flushKeysWithWriteLock:(id)a4;
- (void)didCompleteContentID:(id)a3;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3;
- (void)prepareForContentID:(id)a3;
- (void)pruneArchivesForContentID:(id)a3;
@end

@implementation NDContentArchiveStore

- (NDContentArchiveStore)initWithParentDirectory:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = NDContentArchiveStore;
  v8 = [(NDContentArchiveStore *)&v31 init];
  if (v8)
  {
    v9 = [v6 stringByAppendingPathComponent:v7];
    rootContainerPath = v8->_rootContainerPath;
    v8->_rootContainerPath = v9;

    v11 = objc_alloc_init(FCCacheCoordinator);
    cacheCoordinator = v8->_cacheCoordinator;
    v8->_cacheCoordinator = v11;

    [objc_opt_class() _prepareRootContainerAtPath:v8->_rootContainerPath];
    v13 = +[NSFileManager defaultManager];
    v14 = [v13 contentsOfDirectoryAtPath:v8->_rootContainerPath error:0];

    v15 = +[NSMutableArray array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          if ([(NDContentArchiveStore *)v8 isContentIDComplete:v21, v27])
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = [(NDContentArchiveStore *)v8 _containerPathForContentID:v21];
            [(NDContentArchiveStore *)v8 _pruneArchivesFromContainer:v22 forContentID:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v18);
    }

    v23 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v15 count];
      *buf = 134218242;
      v33 = v25;
      v34 = 2114;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "content archive store loaded with %lu content IDs, contentIDs=%{public}@", buf, 0x16u);
    }

    [(FCCacheCoordinator *)v8->_cacheCoordinator setupWithInitialKeys:v16, v27];
    [(FCCacheCoordinator *)v8->_cacheCoordinator setDelegate:v8];
  }

  return v8;
}

- (NSArray)allCompleteContentIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000FE74;
  v11 = sub_10000FE84;
  v12 = 0;
  v3 = [(NDContentArchiveStore *)self cacheCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FE8C;
  v6[3] = &unk_100072398;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performCacheRead:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)prepareForContentID:(id)a3
{
  v4 = a3;
  v5 = [(NDContentArchiveStore *)self _containerPathForContentID:v4];
  v6 = [(NDContentArchiveStore *)self cacheCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010038;
  v9[3] = &unk_100071E78;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performCacheWrite:v9];
}

- (void)pruneArchivesForContentID:(id)a3
{
  v4 = a3;
  v5 = [(NDContentArchiveStore *)self _containerPathForContentID:v4];
  v6 = [(NDContentArchiveStore *)self cacheCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000102B8;
  v9[3] = &unk_100071E78;
  v9[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performCacheWrite:v9];
}

- (void)addArchive:(id)a3 forContentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v23 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v23];
  v10 = v23;
  if (v9)
  {
    v11 = v9;
    v12 = [(NDContentArchiveStore *)self _newUniqueArchivePathForContentID:v7];
    v13 = [(NDContentArchiveStore *)self cacheCoordinator];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000104EC;
    v16[3] = &unk_100071E78;
    v17 = v11;
    v18 = v12;
    v19 = v7;
    v14 = v12;
    v15 = v11;
    [v13 performCacheWrite:v16];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000104A0;
    v20[3] = &unk_100071DB0;
    v21 = v7;
    v22 = v10;
    sub_1000104A0(v20);

    v15 = v21;
  }

  objc_autoreleasePoolPop(v8);
}

- (void)addManifest:(id)a3 forContentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v23 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v23];
  v10 = v23;
  if (v9)
  {
    v11 = v9;
    v12 = [(NDContentArchiveStore *)self _manifestPathForContentID:v7];
    v13 = [(NDContentArchiveStore *)self cacheCoordinator];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000108C4;
    v16[3] = &unk_100071E78;
    v17 = v11;
    v18 = v12;
    v19 = v7;
    v14 = v12;
    v15 = v11;
    [v13 performCacheWrite:v16];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100010878;
    v20[3] = &unk_100071DB0;
    v21 = v7;
    v22 = v10;
    sub_100010878(v20);

    v15 = v21;
  }

  objc_autoreleasePoolPop(v8);
}

- (void)addBlob:(id)a3 name:(id)a4 contentID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [(NDContentArchiveStore *)self _blobPathForName:v9 contentID:v10];
  v13 = [(NDContentArchiveStore *)self cacheCoordinator];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100010BBC;
  v18[3] = &unk_1000723C0;
  v14 = v8;
  v19 = v14;
  v20 = v12;
  v15 = v9;
  v21 = v15;
  v16 = v10;
  v22 = v16;
  v17 = v12;
  [v13 performCacheWrite:v18];

  objc_autoreleasePoolPop(v11);
}

- (void)didCompleteContentID:(id)a3
{
  v4 = a3;
  v5 = [(NDContentArchiveStore *)self _tokenPathForContentID:v4];
  v6 = [(NDContentArchiveStore *)self cacheCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010E68;
  v9[3] = &unk_100071DB0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performCacheWrite:v9];
}

- (BOOL)isContentIDComplete:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(NDContentArchiveStore *)self _tokenPathForContentID:v4];
  v6 = [(NDContentArchiveStore *)self cacheCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000110B8;
  v9[3] = &unk_100072398;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  [v6 performCacheRead:v9];

  LOBYTE(v6) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v6;
}

- (id)interestTokenForContentIDs:(id)a3
{
  v4 = a3;
  v5 = [(NDContentArchiveStore *)self cacheCoordinator];
  v6 = [v5 holdTokenForKeys:v4];

  return v6;
}

- (id)interestTokenForContentID:(id)a3
{
  v4 = a3;
  v5 = [(NDContentArchiveStore *)self cacheCoordinator];
  v6 = [v5 holdTokenForKey:v4];

  return v6;
}

- (id)manifestForContentID:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NDContentArchiveStore *)self _manifestPathForContentID:v4];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10000FE74;
  v22 = sub_10000FE84;
  v23 = 0;
  v7 = [(NDContentArchiveStore *)self cacheCoordinator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000113EC;
  v15[3] = &unk_100072398;
  v17 = &v18;
  v8 = v6;
  v16 = v8;
  [v7 performCacheRead:v15];

  if (v19[5])
  {
    v9 = objc_opt_class();
    v10 = v19[5];
    v14 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v9 fromData:v10 error:&v14];
    v12 = v14;
    if (!v11 && os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
    {
      sub_100053860();
    }
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);
  objc_autoreleasePoolPop(v5);

  return v11;
}

- (id)archivesForContentID:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = objc_autoreleasePoolPush();
  v7 = [(NDContentArchiveStore *)self _containerPathForContentID:v4];
  v8 = [(NDContentArchiveStore *)self cacheCoordinator];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100011560;
  v12[3] = &unk_100071DB0;
  v13 = v7;
  v9 = v5;
  v14 = v9;
  v10 = v7;
  [v8 performCacheRead:v12];

  objc_autoreleasePoolPop(v6);

  return v9;
}

- (id)aggregateArchiveForContentID:(id)a3
{
  v3 = [(NDContentArchiveStore *)self archivesForContentID:a3];
  v4 = [FCContentArchive archiveWithChildArchives:v3];

  return v4;
}

- (id)blobWithName:(id)a3 contentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000FE74;
  v21 = sub_10000FE84;
  v22 = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = [(NDContentArchiveStore *)self _blobPathForName:v6 contentID:v7];
  v10 = [(NDContentArchiveStore *)self cacheCoordinator];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000118D8;
  v14[3] = &unk_100072398;
  v16 = &v17;
  v11 = v9;
  v15 = v11;
  [v10 performCacheRead:v14];

  objc_autoreleasePoolPop(v8);
  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (id)bookmarkForBlobWithName:(id)a3 contentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000FE74;
  v26 = sub_10000FE84;
  v27 = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = [(NDContentArchiveStore *)self _blobPathForName:v6 contentID:v7];
  v10 = [NSURL fileURLWithPath:v9];
  v11 = [(NDContentArchiveStore *)self cacheCoordinator];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100011B04;
  v17[3] = &unk_1000723E8;
  v21 = &v22;
  v12 = v10;
  v18 = v12;
  v13 = v6;
  v19 = v13;
  v14 = v7;
  v20 = v14;
  [v11 performCacheRead:v17];

  objc_autoreleasePoolPop(v8);
  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (int64_t)storageSize
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(NDContentArchiveStore *)self rootContainerPath];
  v5 = [NSURL fileURLWithPath:v4];
  v6 = [v3 fc_sizeOfItemAtURL:v5 error:0];

  return v6;
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3
{
  v5 = [[FCCacheCoordinatorFlushPolicy alloc] initWithLowWaterMark:0 highWaterMark:0 alwaysFlushKeysWithZeroInterest:1];
  v4 = [(NDContentArchiveStore *)self cacheCoordinator];
  [v4 enableFlushingWithPolicy:v5];
}

- (void)cacheCoordinator:(id)a3 flushKeysWithWriteLock:(id)a4
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a4;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138543618;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NDContentArchiveStore *)self _containerPathForContentID:v10, v16];
        v12 = +[NSFileManager defaultManager];
        v18 = 0;
        v13 = [v12 removeItemAtPath:v11 error:&v18];
        v14 = v18;

        v15 = FCOfflineDownloadsLog;
        if (v13)
        {
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v24 = v10;
            v25 = 2114;
            v26 = v11;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "content archive store flushed container for contentID=%{public}@, containerPath=%{public}@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v24 = v10;
          v25 = 2114;
          v26 = v14;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "content archive store failed to flush container for contentID=%{public}@, error=%{public}@", buf, 0x16u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }
}

- (id)_containerPathForContentID:(id)a3
{
  v4 = a3;
  v5 = [(NDContentArchiveStore *)self rootContainerPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (id)_manifestPathForContentID:(id)a3
{
  v3 = [(NDContentArchiveStore *)self _containerPathForContentID:a3];
  v4 = [v3 stringByAppendingPathComponent:@"manifest"];

  return v4;
}

- (id)_newUniqueArchivePathForContentID:(id)a3
{
  v3 = [(NDContentArchiveStore *)self _containerPathForContentID:a3];
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [v3 stringByAppendingPathComponent:v5];
  v7 = [v6 stringByAppendingPathExtension:@"contentArchive"];

  return v7;
}

- (id)_blobPathForName:(id)a3 contentID:(id)a4
{
  v6 = a3;
  v7 = [(NDContentArchiveStore *)self _containerPathForContentID:a4];
  v8 = [v7 stringByAppendingPathComponent:v6];

  return v8;
}

- (id)_tokenPathForContentID:(id)a3
{
  v3 = [(NDContentArchiveStore *)self _containerPathForContentID:a3];
  v4 = [v3 stringByAppendingPathComponent:@"complete"];

  return v4;
}

- (BOOL)_isContentIDComplete:(id)a3
{
  v3 = [(NDContentArchiveStore *)self _tokenPathForContentID:a3];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (void)_pruneArchivesFromContainer:(id)a3 forContentID:(id)a4
{
  v37 = a3;
  v35 = a4;
  v6 = [(NDContentArchiveStore *)self _tokenPathForContentID:?];
  v7 = NSError_ptr;
  v8 = +[NSFileManager defaultManager];
  if ([v8 fileExistsAtPath:v6])
  {
    v9 = +[NSFileManager defaultManager];
    v44 = 0;
    v10 = [v9 removeItemAtPath:v6 error:&v44];
    v11 = v44;

    if ((v10 & 1) == 0 && os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
    {
      sub_100053954();
    }
  }

  else
  {

    v11 = 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = +[NSFileManager defaultManager];
  v13 = [v12 subpathsOfDirectoryAtPath:v37 error:0];

  v14 = [v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v33 = v11;
    v34 = v6;
    v36 = 0;
    v16 = *v41;
    v17 = @"contentArchive";
    do
    {
      v18 = 0;
      v38 = v15;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v40 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 pathExtension];
        v22 = [v21 isEqualToString:v17];

        if (v22)
        {
          v23 = v16;
          v24 = v17;
          v25 = v13;
          v26 = [v37 stringByAppendingPathComponent:v19];
          v27 = v7;
          v28 = [v7[2] defaultManager];
          v39 = 0;
          v29 = [v28 removeItemAtPath:v26 error:&v39];
          v30 = v39;

          if (v29)
          {
            ++v36;
          }

          else
          {
            v31 = FCOfflineDownloadsLog;
            if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v46 = v35;
              v47 = 2114;
              v48 = v30;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "content archive store failed to remove archive for incomplete container, contentID=%{public}@, error=%{public}@", buf, 0x16u);
            }
          }

          v7 = v27;

          v13 = v25;
          v17 = v24;
          v16 = v23;
          v15 = v38;
        }

        objc_autoreleasePoolPop(v20);
        v18 = v18 + 1;
      }

      while (v15 != v18);
      v15 = [v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v15);

    v11 = v33;
    v6 = v34;
    if (v36)
    {
      v32 = FCOfflineDownloadsLog;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v46 = v36;
        v47 = 2114;
        v48 = v35;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "content archive store removed %lu archives from container, contentID=%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
  }
}

+ (void)_prepareRootContainerAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    value = 0;
    getxattr([v3 fileSystemRepresentation], "com.apple.newsd.storeVersion", &value, 2uLL, 0, 0);
    if (value != 2)
    {
      v6 = FCOfflineDownloadsLog;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v18 = value;
        v19 = 2048;
        v20 = 2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "wiping content archive store because persisted version %lu does not match current version %lu", buf, 0x16u);
      }

      v7 = [NSURL fileURLWithPath:v3 isDirectory:1];
      v8 = +[NSFileManager defaultManager];
      v15 = 0;
      v9 = [v8 fc_removeLargeDirectoryAtURL:v7 error:&v15];
      v10 = v15;

      if ((v9 & 1) == 0)
      {
        v11 = FCOfflineDownloadsLog;
        if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failed to wipe content archive store, error=%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v3];

  if ((v13 & 1) == 0)
  {
    v14 = +[NSFileManager defaultManager];
    [v14 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

    setxattr([v3 fileSystemRepresentation], "com.apple.newsd.storeVersion", &NDContentArchiveStoreVersion, 2uLL, 0, 0);
  }
}

@end