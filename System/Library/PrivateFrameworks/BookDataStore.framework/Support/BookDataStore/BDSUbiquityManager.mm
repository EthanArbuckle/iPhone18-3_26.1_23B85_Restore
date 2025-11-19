@interface BDSUbiquityManager
- (BDSUbiquityManager)init;
- (BDSUbiquityManagerObserver)observer;
- (BOOL)isEnabled;
- (id)_buildUbiquityMetadataDict:(id)a3;
- (id)_fileExtensionForUrl:(id)a3;
- (id)_ubiquityMetadataForURL:(id)a3;
- (id)allAssetIDs;
- (id)ubiquityMetadataForAssetID:(id)a3;
- (void)_setValueInMutableDictionary:(id)a3 forKey:(id)a4 withValueForExtendedAttributeNamed:(id)a5 fromUrl:(id)a6;
- (void)dealloc;
- (void)iq_clearCachesForAssetIDs:(id)a3 notify:(BOOL)a4;
- (void)iq_clearCachesForURLs:(id)a3 notify:(BOOL)a4;
- (void)iq_setupUbiquityObservers;
- (void)iq_teardownUbiquityObservers;
- (void)iq_updateCachesForItems:(id)a3 notify:(BOOL)a4;
- (void)mq_batchOfItemsDidBecomeAvailable:(id)a3 block:(BOOL)a4 notify:(BOOL)a5;
- (void)mq_batchOfItemsDidBecomeUnAvailable:(id)a3 block:(BOOL)a4 notify:(BOOL)a5;
- (void)mq_batchOfItemsDidChange:(id)a3 block:(BOOL)a4 notify:(BOOL)a5;
- (void)setEnableUbiquityObserving:(BOOL)a3;
- (void)ubiquityDocumentsObserver:(id)a3 didLoadWithItems:(id)a4;
- (void)ubiquityDocumentsObserver:(id)a3 itemsDidBecomeAvailable:(id)a4;
- (void)ubiquityDocumentsObserver:(id)a3 itemsDidBecomeUnavailable:(id)a4;
- (void)ubiquityDocumentsObserver:(id)a3 itemsDidChange:(id)a4;
- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)a3 oldIdentity:(id)a4;
@end

@implementation BDSUbiquityManager

- (BDSUbiquityManager)init
{
  v15.receiver = self;
  v15.super_class = BDSUbiquityManager;
  v2 = [(BDSUbiquityManager *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    iq_urlFromAssetID = v2->_iq_urlFromAssetID;
    v2->_iq_urlFromAssetID = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ubiquityManager-ivarQueue", v5);
    ivarQueue = v2->_ivarQueue;
    v2->_ivarQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("BDSUbiquityManager-observerQueue", v8);
    observerCallbackQueue = v2->_observerCallbackQueue;
    v2->_observerCallbackQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("BDSUbiquityManager-processMetadataQueryQueue", v11);
    processMetadataQueryQueue = v2->_processMetadataQueryQueue;
    v2->_processMetadataQueryQueue = v12;
  }

  return v2;
}

- (void)setEnableUbiquityObserving:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10000DEB0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: setEnableUbiquityObserving: %@", buf, 0xCu);
  }

  v7 = [(BDSUbiquityManager *)self ivarQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001569C;
  v8[3] = &unk_10023FAC0;
  v8[4] = self;
  v9 = v3;
  dispatch_async(v7, v8);
}

- (BOOL)isEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(BDSUbiquityManager *)self ivarQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000159A4;
  v5[3] = &unk_10023F910;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)dealloc
{
  [(BDSUbiquityManager *)self iq_teardownUbiquityObservers];
  v3.receiver = self;
  v3.super_class = BDSUbiquityManager;
  [(BDSUbiquityManager *)&v3 dealloc];
}

- (id)allAssetIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100015B3C;
  v11 = sub_100015B4C;
  v12 = 0;
  v3 = [(BDSUbiquityManager *)self ivarQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015B54;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)ubiquityMetadataForAssetID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100015B3C;
  v16 = sub_100015B4C;
  v17 = 0;
  v5 = [(BDSUbiquityManager *)self ivarQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015D18;
  block[3] = &unk_10023FAE8;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  v10 = v6;
  dispatch_sync(v5, block);

  if (v13[5])
  {
    v7 = [(BDSUbiquityManager *)self _ubiquityMetadataForURL:?];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)a3 oldIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000DEB0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: ubiquityStatusChangedToAvailableWithNewIdentity: %{public}@ oldIdentity: %{public}@", buf, 0x16u);
  }

  v9 = [(BDSUbiquityManager *)self ivarQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015EBC;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_sync(v9, block);
}

- (void)ubiquityDocumentsObserver:(id)a3 didLoadWithItems:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001607C;
  v8[3] = &unk_10023F9D0;
  objc_copyWeak(&v11, &location);
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(processMetadataQueryQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)ubiquityDocumentsObserver:(id)a3 itemsDidBecomeAvailable:(id)a4
{
  v5 = a4;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000166A8;
  v8[3] = &unk_10023F938;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)a3 itemsDidBecomeUnavailable:(id)a4
{
  v5 = a4;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000167FC;
  v8[3] = &unk_10023F938;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)a3 itemsDidChange:(id)a4
{
  v5 = a4;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016970;
  v8[3] = &unk_10023F938;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)iq_setupUbiquityObservers
{
  v3 = objc_alloc_init(BDSUbiquityStatusMonitor);
  ubiquityStatusMonitor = self->_ubiquityStatusMonitor;
  self->_ubiquityStatusMonitor = v3;

  [(BDSUbiquityStatusMonitor *)self->_ubiquityStatusMonitor addObserver:self];
  v5 = [[BDSUbiquityDocumentsObserver alloc] initWithDelegate:self ubquityStatusMonitor:self->_ubiquityStatusMonitor directoriesSubpath:0];
  ubiquityDocumentsObserver = self->_ubiquityDocumentsObserver;
  self->_ubiquityDocumentsObserver = v5;

  _objc_release_x1();
}

- (void)iq_teardownUbiquityObservers
{
  ubiquityStatusMonitor = self->_ubiquityStatusMonitor;
  self->_ubiquityStatusMonitor = 0;

  ubiquityDocumentsObserver = self->_ubiquityDocumentsObserver;
  self->_ubiquityDocumentsObserver = 0;
}

- (void)mq_batchOfItemsDidBecomeAvailable:(id)a3 block:(BOOL)a4 notify:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  ivarQueue = self->_ivarQueue;
  if (v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016CDC;
    block[3] = &unk_10023FB38;
    block[4] = self;
    v11 = &v16;
    v16 = v8;
    v17 = a5;
    dispatch_sync(ivarQueue, block);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016CEC;
    v12[3] = &unk_10023FB38;
    v12[4] = self;
    v11 = &v13;
    v13 = v8;
    v14 = a5;
    dispatch_async(ivarQueue, v12);
  }
}

- (void)mq_batchOfItemsDidBecomeUnAvailable:(id)a3 block:(BOOL)a4 notify:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  ivarQueue = self->_ivarQueue;
  if (v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016EF0;
    block[3] = &unk_10023FB38;
    block[4] = self;
    v11 = &v16;
    v16 = v8;
    v17 = a5;
    dispatch_sync(ivarQueue, block);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016F00;
    v12[3] = &unk_10023FB38;
    v12[4] = self;
    v11 = &v13;
    v13 = v8;
    v14 = a5;
    dispatch_async(ivarQueue, v12);
  }
}

- (void)mq_batchOfItemsDidChange:(id)a3 block:(BOOL)a4 notify:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(self->_processMetadataQueryQueue);
  ivarQueue = self->_ivarQueue;
  if (v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017178;
    block[3] = &unk_10023FB38;
    v10 = &v17;
    block[4] = self;
    v17 = v8;
    v18 = a5;
    v11 = v8;
    dispatch_sync(ivarQueue, block);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100017188;
    v13[3] = &unk_10023FB38;
    v10 = &v14;
    v13[4] = self;
    v14 = v8;
    v15 = a5;
    v12 = v8;
    dispatch_async(ivarQueue, v13);
  }
}

- (void)iq_updateCachesForItems:(id)a3 notify:(BOOL)a4
{
  v21 = a4;
  v5 = a3;
  dispatch_assert_queue_V2(self->_ivarQueue);
  v6 = sub_10000DEB0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: updating cache for %lu items", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 url];
        v13 = [(BDSUbiquityManager *)self _ubiquityMetadataForURL:v12];

        v14 = [v13 objectForKeyedSubscript:@"com.apple.iBooks.assetID"];
        v15 = [v13 objectForKeyedSubscript:@"com.apple.iBooks.isSupplementalContent"];
        v16 = [v15 BOOLValue];

        if ((v16 & 1) == 0)
        {
          if (v14)
          {
            v17 = [(NSMutableDictionary *)self->_iq_urlFromAssetID objectForKey:v14];

            v18 = [v11 url];
            [(NSMutableDictionary *)self->_iq_urlFromAssetID setObject:v18 forKeyedSubscript:v14];

            if (v21)
            {
              v19 = [(BDSUbiquityManager *)self observer];

              if (v19)
              {
                observerCallbackQueue = self->_observerCallbackQueue;
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100017470;
                block[3] = &unk_10023FB60;
                v26 = v17 == 0;
                block[4] = self;
                v24 = v14;
                v25 = v13;
                dispatch_async(observerCallbackQueue, block);
              }
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)iq_clearCachesForURLs:(id)a3 notify:(BOOL)a4
{
  v16 = a4;
  v5 = a3;
  dispatch_assert_queue_V2(self->_ivarQueue);
  v17 = v5;
  v6 = [NSSet setWithArray:v5];
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(BDSUbiquityManager *)self iq_urlFromAssetID];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [(BDSUbiquityManager *)self iq_urlFromAssetID];
        v15 = [v14 objectForKeyedSubscript:v13];

        if ([v6 containsObject:v15])
        {
          [v7 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [(BDSUbiquityManager *)self iq_clearCachesForAssetIDs:v7 notify:v16];
  }
}

- (void)iq_clearCachesForAssetIDs:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_ivarQueue);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_iq_urlFromAssetID objectForKey:v12];

        if (v13)
        {
          [(NSMutableDictionary *)self->_iq_urlFromAssetID setObject:0 forKeyedSubscript:v12];
          if (v4)
          {
            v14 = [(BDSUbiquityManager *)self observer];

            if (v14)
            {
              observerCallbackQueue = self->_observerCallbackQueue;
              v16[0] = _NSConcreteStackBlock;
              v16[1] = 3221225472;
              v16[2] = sub_100017844;
              v16[3] = &unk_10023F938;
              v16[4] = self;
              v16[5] = v12;
              dispatch_async(observerCallbackQueue, v16);
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (id)_ubiquityMetadataForURL:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100015B3C;
  v15 = sub_100015B4C;
  v16 = 0;
  v5 = objc_opt_new();
  v9[5] = &v11;
  v10 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000179E4;
  v9[3] = &unk_10023FB88;
  v9[4] = self;
  [v5 coordinateReadingItemAtURL:v4 options:4 error:&v10 byAccessor:v9];
  v6 = v10;

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (id)_buildUbiquityMetadataDict:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(BDSUbiquityManager *)self _fileExtensionForUrl:v4];
  [v5 setObject:v4 forKeyedSubscript:@"com.apple.iBooks.url"];
  [v5 setObject:@"SideloadedUbiquity" forKeyedSubscript:@"com.apple.iBooks.cloudAssetType"];
  v7 = sub_10006E070(v6);
  [v5 setObject:v7 forKeyedSubscript:@"com.apple.iBooks.libraryAssetType"];

  v8 = objc_autoreleasePoolPush();
  [(BDSUbiquityManager *)self _setValueInMutableDictionary:v5 forKey:@"com.apple.iBooks.assetID" withValueForExtendedAttributeNamed:@"com.apple.iBooks.assetID" fromUrl:v4];
  [(BDSUbiquityManager *)self _setValueInMutableDictionary:v5 forKey:@"com.apple.iBooks.title" withValueForExtendedAttributeNamed:@"com.apple.iBooks.title" fromUrl:v4];
  [(BDSUbiquityManager *)self _setValueInMutableDictionary:v5 forKey:@"com.apple.iBooks.isSupplementalContent" withValueForExtendedAttributeNamed:@"com.apple.iBooks.isSupplementalContent" fromUrl:v4];
  objc_autoreleasePoolPop(v8);

  return v5;
}

- (id)_fileExtensionForUrl:(id)a3
{
  v3 = a3;
  v4 = [v3 absoluteString];
  v5 = [v4 componentsSeparatedByString:@"."];
  v6 = [v5 lastObject];
  if ([(__CFString *)v6 isEqualToString:@"icloud"])
  {
    if ([v5 count] < 2)
    {
      v8 = sub_10000DEB0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001BDCB8(v3, v8);
      }

      v6 = &stru_10024C800;
    }

    else
    {
      v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 2}];

      v6 = v7;
    }
  }

  return v6;
}

- (void)_setValueInMutableDictionary:(id)a3 forKey:(id)a4 withValueForExtendedAttributeNamed:(id)a5 fromUrl:(id)a6
{
  v11 = a3;
  v9 = a4;
  v10 = [a6 bu_extendedAttributeNamed:a5 iCloudSyncable:1];
  if (v10)
  {
    [v11 setObject:v10 forKey:v9];
  }
}

- (BDSUbiquityManagerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end