@interface CTKAssets
+ (void)initialize;
- (CTKAssets)init;
- (id)_getPlistFromPath:(id)path;
- (id)_getPlistWithAsset:(id)asset resourceName:(id)name;
- (id)_loadIndexAsset:(id)asset isFallback:(BOOL)fallback;
- (id)_loadMetadataPlist:(id)plist;
- (id)expectedIndexAssetLanguageCodes;
- (id)index;
- (void)_invokeIndexChangeHandler;
- (void)_loadCommonAsset;
- (void)_loadFallbackAsset;
- (void)_reloadPlists;
- (void)dealloc;
- (void)registerIndexChangeHandler:(id)handler;
@end

@implementation CTKAssets

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.siri.context.service", "Assets");
    v3 = qword_100557208;
    qword_100557208 = v2;

    objc_opt_class();
  }
}

- (CTKAssets)init
{
  v55.receiver = self;
  v55.super_class = CTKAssets;
  v2 = [(CTKAssets *)&v55 init];
  if (v2)
  {
    *v56 = 0;
    *&v56[8] = 0;
    if (pthread_mutexattr_init(v56))
    {
      v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        sub_1002A86C4(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    if (pthread_mutexattr_settype(v56, 2))
    {
      v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        sub_1002A8700(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    if (pthread_mutex_init(&v2->_indexAssetLock, v56))
    {
      v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        sub_1002A873C(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    pthread_mutexattr_destroy(v56);
    v27 = dispatch_queue_create("CTKAssets-notification", 0);
    queue = v2->_queue;
    v2->_queue = v27;

    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 pathForResource:@"commonAsset" ofType:@"bundle"];

    if (!v30)
    {
      v59 = @"name";
      v60 = @"commonAsset";
      v47 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v48 = [NSException exceptionWithName:@"DefaultCommonAssetException" reason:@"default common asset could not be found" userInfo:v47];
      v49 = v48;

      objc_exception_throw(v48);
    }

    v31 = +[CTKPaths assetTypeDescriptor];
    v32 = [_PASAsset2 alloc];
    v57 = @"CTKAssetIdentifier";
    v58 = @"common";
    v33 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    LOBYTE(v50) = 1;
    v34 = [v32 initWithAssetTypeDescriptorPath:v31 defaultBundlePath:v30 matchingKeysAndValues:v33 notificationQueue:v2->_queue logHandle:&_os_log_default enableAssetUpdates:1 purgeObsoleteInstalledAssets:v50];
    commonAsset = v2->_commonAsset;
    v2->_commonAsset = v34;

    if ([(_PASAsset2 *)v2->_commonAsset compatibilityVersion]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = +[NSFileManager defaultManager];
      v37 = [v36 fileExistsAtPath:v31];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 138412546;
        *&v56[4] = v31;
        *&v56[12] = 1024;
        *&v56[14] = v37;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not read compatibility version from AssetTypeDescriptor: %@ (exists:%i)", v56, 0x12u);
      }
    }

    v38 = v2->_commonAsset;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1002A7558;
    v53[3] = &unk_100483E20;
    v39 = v2;
    v54 = v39;
    v40 = [(_PASAsset2 *)v38 registerUpdateHandler:v53];
    v41 = objc_opt_new();
    [v41 setUnderlyingQueue:v2->_queue];
    v42 = +[NSNotificationCenter defaultCenter];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1002A75A4;
    v51[3] = &unk_100483E48;
    v43 = v39;
    v52 = v43;
    v44 = [v42 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v41 usingBlock:v51];

    [(CTKAssets *)v43 _loadCommonAsset];
    v45 = +[MetricsLogging instance];
    [v45 recordAssetInfo:v43];
  }

  return v2;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_indexAssetLock);
  v3.receiver = self;
  v3.super_class = CTKAssets;
  [(CTKAssets *)&v3 dealloc];
}

- (id)index
{
  pthread_mutex_lock(&self->_indexAssetLock);
  if (self->_indexAsset && self->_indexId)
  {
    v3 = [_PASTuple2 tupleWithFirst:"tupleWithFirst:second:" second:?];
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(&self->_indexAssetLock);

  return v3;
}

- (void)registerIndexChangeHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&self->_indexAssetLock);
  v5 = objc_retainBlock(handlerCopy);

  indexChangeHandler = self->_indexChangeHandler;
  self->_indexChangeHandler = v5;

  pthread_mutex_unlock(&self->_indexAssetLock);
}

- (id)expectedIndexAssetLanguageCodes
{
  commonAsset = self->_commonAsset;
  if (commonAsset)
  {
    v3 = [(CTKAssets *)self _getPlistWithAsset:commonAsset resourceName:@"IndexMetadata"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"LanguageMapping"];
      if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1002A7858;
        v9[3] = &unk_100483E70;
        v10 = objc_opt_new();
        v6 = v10;
        [v5 enumerateKeysAndObjectsUsingBlock:v9];
        allObjects = [v6 allObjects];
      }

      else
      {
        allObjects = 0;
      }
    }

    else
    {
      allObjects = 0;
    }
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)_getPlistWithAsset:(id)asset resourceName:(id)name
{
  if (asset)
  {
    assetCopy = asset;
    name = [NSString stringWithFormat:@"%@.plist", name];
    v8 = [assetCopy filesystemPathForAssetDataRelativePath:name];

    if (v8)
    {
      v9 = [(CTKAssets *)self _getPlistFromPath:v8];
    }

    else
    {
      v10 = qword_100557208;
      if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Warning] Asset not yet available.", buf, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_getPlistFromPath:(id)path
{
  pathCopy = path;
  v13 = 0;
  v4 = [NSData dataWithContentsOfFile:pathCopy options:0 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = v5;
    v7 = qword_100557208;
    if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = pathCopy;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Warning] Failed to read plist at %@: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v12 = 0;
    v9 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v12];
    v6 = v12;
    v10 = qword_100557208;
    if (v6)
    {
      if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = pathCopy;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Warning] Failed to decode plist at %@: %@", buf, 0x16u);
      }

      v8 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
      {
        sub_1002A8868();
      }

      v8 = v9;
    }
  }

  return v8;
}

- (id)_loadMetadataPlist:(id)plist
{
  v3 = [(CTKAssets *)self _getPlistWithAsset:plist resourceName:@"IndexMetadata"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"LanguageMapping"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v5;
    }

    else
    {
      v7 = qword_100557208;
      if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_ERROR))
      {
        sub_1002A88D0(v7);
      }

      v6 = 0;
    }
  }

  else
  {
    v8 = qword_100557208;
    if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = @"IndexMetadata";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Warning] %@ is not available; aborting.", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_loadCommonAsset
{
  v3 = [(CTKAssets *)self _loadMetadataPlist:self->_commonAsset];
  if (v3)
  {
    selfCopy = self;
    v4 = +[NSLocale preferredLanguages];
    v5 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v34 + 1) + 8 * i) componentsSeparatedByString:@"-"];
          if ([v11 count])
          {
            v12 = [v11 objectAtIndexedSubscript:0];
            v13 = [v12 length];

            if (v13)
            {
              v14 = [v11 objectAtIndexedSubscript:0];
              [v5 addObject:v14];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }

    v15 = [v6 arrayByAddingObjectsFromArray:v5];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      while (2)
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [v3 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * j)];
          if (v21)
          {
            v26 = v21;
            if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A8954();
            }

            v25 = 0;
            v24 = v16;
            goto LABEL_33;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v22 = qword_100557208;
    if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
    {
      sub_1002A89C8(v22);
    }

    v23 = [v3 objectForKeyedSubscript:@"fallback"];
    v24 = v23;
    if (v23)
    {
      v24 = v23;
      if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
      {
        sub_1002A8A0C();
      }

      v25 = 1;
    }

    else
    {
      v27 = qword_100557208;
      if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
      {
        sub_1002A8A74(v27);
      }

      v25 = 0;
    }

    v26 = v24;
LABEL_33:

    v28 = [(CTKAssets *)selfCopy _loadIndexAsset:v26 isFallback:v25];
    [(CTKAssets *)selfCopy _reloadPlists];
  }
}

- (void)_reloadPlists
{
  v11 = [(CTKAssets *)self _getPlistWithAsset:self->_commonAsset resourceName:@"ContextConfiguration"];
  v3 = [(CTKAssets *)self _getPlistWithAsset:self->_indexAsset resourceName:@"ContextConfiguration"];
  v4 = [@"ContextConfiguration" stringByAppendingPathExtension:@"plist"];
  v5 = +[CTKPaths database];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = [(CTKAssets *)self _getPlistFromPath:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSString stringWithFormat:@"0-%ld-%ld-%ld-%ld", [(_PASAsset2 *)self->_commonAsset compatibilityVersion], [(_PASAsset2 *)self->_commonAsset assetVersion], [(_PASAsset2 *)self->_indexAsset compatibilityVersion], [(_PASAsset2 *)self->_indexAsset assetVersion]];
  [ContextConfiguration reloadFromGlobalPlist:v11 indexSpecificPlist:v3 developerPlist:v9 indexVersionId:v10];
}

- (void)_invokeIndexChangeHandler
{
  pthread_mutex_lock(&self->_indexAssetLock);
  [(CTKAssets *)self _reloadPlists];
  indexChangeHandler = self->_indexChangeHandler;
  if (indexChangeHandler)
  {
    dispatch_async(self->_queue, indexChangeHandler);
  }

  pthread_mutex_unlock(&self->_indexAssetLock);
}

- (id)_loadIndexAsset:(id)asset isFallback:(BOOL)fallback
{
  assetCopy = asset;
  pthread_mutex_lock(&self->_indexAssetLock);
  if (fallback)
  {
    v7 = 0;
    v8 = @"fallback";
  }

  else
  {
    v8 = [assetCopy copy];
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      if (!self->_indexId)
      {
        goto LABEL_8;
      }

      v7 = 1;
    }
  }

  if ([(__CFString *)v8 isEqualToString:self->_indexId])
  {
LABEL_8:
    v9 = qword_100557208;
    if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
    {
      sub_1002A8B9C(self, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_27;
  }

  v16 = qword_100557208;
  if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
  {
    sub_1002A8AB8(&self->_indexId, v8, v16);
  }

  if (self->indexNotificationToken)
  {
    if (([(_PASAsset2 *)self->_indexAsset deregisterUpdateHandlerAsyncWithToken:?]& 1) == 0)
    {
      v17 = qword_100557208;
      if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Warning] Unexpected failure to deregister notification token", buf, 2u);
      }
    }

    indexNotificationToken = self->indexNotificationToken;
    self->indexNotificationToken = 0;
  }

  if (v7)
  {
    indexId = self->_indexId;
    self->_indexId = 0;

    indexAsset = self->_indexAsset;
    self->_indexAsset = 0;
  }

  else
  {
    objc_storeStrong(&self->_indexId, v8);
    v21 = [_PASAsset2 alloc];
    v22 = +[CTKPaths assetTypeDescriptor];
    v36 = @"CTKAssetIdentifier";
    v37 = assetCopy;
    v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    LOBYTE(v33) = 1;
    v24 = [v21 initWithAssetTypeDescriptorPath:v22 defaultBundlePath:0 matchingKeysAndValues:v23 notificationQueue:self->_queue logHandle:&_os_log_default enableAssetUpdates:1 purgeObsoleteInstalledAssets:v33];
    v25 = self->_indexAsset;
    self->_indexAsset = v24;

    v26 = self->_indexAsset;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1002A856C;
    v34[3] = &unk_100483E20;
    v34[4] = self;
    v27 = [(_PASAsset2 *)v26 registerUpdateHandler:v34];
    v28 = self->indexNotificationToken;
    self->indexNotificationToken = v27;

    if (!fallback)
    {
      v29 = [(_PASAsset2 *)self->_indexAsset filesystemPathForAssetDataRelativePath:@"lucene.tagged.53.idx"];
      if (!v29)
      {
        if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
        {
          sub_1002A8B34();
        }

        [(CTKAssets *)self _loadFallbackAsset];
      }
    }
  }

  indexChangeHandler = self->_indexChangeHandler;
  if (indexChangeHandler)
  {
    dispatch_async(self->_queue, indexChangeHandler);
  }

LABEL_27:
  v31 = self->_indexAsset;

  pthread_mutex_unlock(&self->_indexAssetLock);

  return v31;
}

- (void)_loadFallbackAsset
{
  v3 = [(CTKAssets *)self _loadMetadataPlist:self->_commonAsset];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 objectForKeyedSubscript:@"fallback"];
    if (v4)
    {
      v5 = [(CTKAssets *)self _loadIndexAsset:v4 isFallback:1];
    }

    v3 = v6;
  }
}

@end