@interface BDSUbiquityManager
- (BDSUbiquityManager)init;
- (BDSUbiquityManagerObserver)observer;
- (BOOL)isEnabled;
- (id)_buildUbiquityMetadataDict:(id)dict;
- (id)_fileExtensionForUrl:(id)url;
- (id)_ubiquityMetadataForURL:(id)l;
- (id)allAssetIDs;
- (id)ubiquityMetadataForAssetID:(id)d;
- (void)_setValueInMutableDictionary:(id)dictionary forKey:(id)key withValueForExtendedAttributeNamed:(id)named fromUrl:(id)url;
- (void)dealloc;
- (void)iq_clearCachesForAssetIDs:(id)ds notify:(BOOL)notify;
- (void)iq_clearCachesForURLs:(id)ls notify:(BOOL)notify;
- (void)iq_setupUbiquityObservers;
- (void)iq_teardownUbiquityObservers;
- (void)iq_updateCachesForItems:(id)items notify:(BOOL)notify;
- (void)mq_batchOfItemsDidBecomeAvailable:(id)available block:(BOOL)block notify:(BOOL)notify;
- (void)mq_batchOfItemsDidBecomeUnAvailable:(id)available block:(BOOL)block notify:(BOOL)notify;
- (void)mq_batchOfItemsDidChange:(id)change block:(BOOL)block notify:(BOOL)notify;
- (void)setEnableUbiquityObserving:(BOOL)observing;
- (void)ubiquityDocumentsObserver:(id)observer didLoadWithItems:(id)items;
- (void)ubiquityDocumentsObserver:(id)observer itemsDidBecomeAvailable:(id)available;
- (void)ubiquityDocumentsObserver:(id)observer itemsDidBecomeUnavailable:(id)unavailable;
- (void)ubiquityDocumentsObserver:(id)observer itemsDidChange:(id)change;
- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)identity oldIdentity:(id)oldIdentity;
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

- (void)setEnableUbiquityObserving:(BOOL)observing
{
  observingCopy = observing;
  v5 = sub_10000DEB0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (observingCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: setEnableUbiquityObserving: %@", buf, 0xCu);
  }

  ivarQueue = [(BDSUbiquityManager *)self ivarQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001569C;
  v8[3] = &unk_10023FAC0;
  v8[4] = self;
  v9 = observingCopy;
  dispatch_async(ivarQueue, v8);
}

- (BOOL)isEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = [(BDSUbiquityManager *)self ivarQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000159A4;
  v5[3] = &unk_10023F910;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
  ivarQueue = [(BDSUbiquityManager *)self ivarQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015B54;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ivarQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)ubiquityMetadataForAssetID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100015B3C;
  v16 = sub_100015B4C;
  v17 = 0;
  ivarQueue = [(BDSUbiquityManager *)self ivarQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015D18;
  block[3] = &unk_10023FAE8;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  v10 = v6;
  dispatch_sync(ivarQueue, block);

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

- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)identity oldIdentity:(id)oldIdentity
{
  identityCopy = identity;
  oldIdentityCopy = oldIdentity;
  v8 = sub_10000DEB0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = identityCopy;
    v13 = 2114;
    v14 = oldIdentityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: ubiquityStatusChangedToAvailableWithNewIdentity: %{public}@ oldIdentity: %{public}@", buf, 0x16u);
  }

  ivarQueue = [(BDSUbiquityManager *)self ivarQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015EBC;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_sync(ivarQueue, block);
}

- (void)ubiquityDocumentsObserver:(id)observer didLoadWithItems:(id)items
{
  itemsCopy = items;
  objc_initWeak(&location, self);
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001607C;
  v8[3] = &unk_10023F9D0;
  objc_copyWeak(&v11, &location);
  v9 = itemsCopy;
  selfCopy = self;
  v7 = itemsCopy;
  dispatch_async(processMetadataQueryQueue, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)ubiquityDocumentsObserver:(id)observer itemsDidBecomeAvailable:(id)available
{
  availableCopy = available;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000166A8;
  v8[3] = &unk_10023F938;
  v9 = availableCopy;
  selfCopy = self;
  v7 = availableCopy;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)observer itemsDidBecomeUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000167FC;
  v8[3] = &unk_10023F938;
  v9 = unavailableCopy;
  selfCopy = self;
  v7 = unavailableCopy;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)observer itemsDidChange:(id)change
{
  changeCopy = change;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016970;
  v8[3] = &unk_10023F938;
  v9 = changeCopy;
  selfCopy = self;
  v7 = changeCopy;
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

- (void)mq_batchOfItemsDidBecomeAvailable:(id)available block:(BOOL)block notify:(BOOL)notify
{
  blockCopy = block;
  availableCopy = available;
  v9 = availableCopy;
  ivarQueue = self->_ivarQueue;
  if (blockCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016CDC;
    block[3] = &unk_10023FB38;
    block[4] = self;
    v11 = &v16;
    v16 = availableCopy;
    notifyCopy = notify;
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
    v13 = availableCopy;
    notifyCopy2 = notify;
    dispatch_async(ivarQueue, v12);
  }
}

- (void)mq_batchOfItemsDidBecomeUnAvailable:(id)available block:(BOOL)block notify:(BOOL)notify
{
  blockCopy = block;
  availableCopy = available;
  v9 = availableCopy;
  ivarQueue = self->_ivarQueue;
  if (blockCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016EF0;
    block[3] = &unk_10023FB38;
    block[4] = self;
    v11 = &v16;
    v16 = availableCopy;
    notifyCopy = notify;
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
    v13 = availableCopy;
    notifyCopy2 = notify;
    dispatch_async(ivarQueue, v12);
  }
}

- (void)mq_batchOfItemsDidChange:(id)change block:(BOOL)block notify:(BOOL)notify
{
  blockCopy = block;
  changeCopy = change;
  dispatch_assert_queue_V2(self->_processMetadataQueryQueue);
  ivarQueue = self->_ivarQueue;
  if (blockCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017178;
    block[3] = &unk_10023FB38;
    v10 = &v17;
    block[4] = self;
    v17 = changeCopy;
    notifyCopy = notify;
    v11 = changeCopy;
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
    v14 = changeCopy;
    notifyCopy2 = notify;
    v12 = changeCopy;
    dispatch_async(ivarQueue, v13);
  }
}

- (void)iq_updateCachesForItems:(id)items notify:(BOOL)notify
{
  notifyCopy = notify;
  itemsCopy = items;
  dispatch_assert_queue_V2(self->_ivarQueue);
  v6 = sub_10000DEB0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = [itemsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: updating cache for %lu items", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = itemsCopy;
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
        bOOLValue = [v15 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          if (v14)
          {
            v17 = [(NSMutableDictionary *)self->_iq_urlFromAssetID objectForKey:v14];

            v18 = [v11 url];
            [(NSMutableDictionary *)self->_iq_urlFromAssetID setObject:v18 forKeyedSubscript:v14];

            if (notifyCopy)
            {
              observer = [(BDSUbiquityManager *)self observer];

              if (observer)
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

- (void)iq_clearCachesForURLs:(id)ls notify:(BOOL)notify
{
  notifyCopy = notify;
  lsCopy = ls;
  dispatch_assert_queue_V2(self->_ivarQueue);
  v17 = lsCopy;
  v6 = [NSSet setWithArray:lsCopy];
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  iq_urlFromAssetID = [(BDSUbiquityManager *)self iq_urlFromAssetID];
  v9 = [iq_urlFromAssetID countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(iq_urlFromAssetID);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        iq_urlFromAssetID2 = [(BDSUbiquityManager *)self iq_urlFromAssetID];
        v15 = [iq_urlFromAssetID2 objectForKeyedSubscript:v13];

        if ([v6 containsObject:v15])
        {
          [v7 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [iq_urlFromAssetID countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [(BDSUbiquityManager *)self iq_clearCachesForAssetIDs:v7 notify:notifyCopy];
  }
}

- (void)iq_clearCachesForAssetIDs:(id)ds notify:(BOOL)notify
{
  notifyCopy = notify;
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_ivarQueue);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = dsCopy;
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
          if (notifyCopy)
          {
            observer = [(BDSUbiquityManager *)self observer];

            if (observer)
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

- (id)_ubiquityMetadataForURL:(id)l
{
  lCopy = l;
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
  [v5 coordinateReadingItemAtURL:lCopy options:4 error:&v10 byAccessor:v9];
  v6 = v10;

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (id)_buildUbiquityMetadataDict:(id)dict
{
  dictCopy = dict;
  v5 = objc_opt_new();
  v6 = [(BDSUbiquityManager *)self _fileExtensionForUrl:dictCopy];
  [v5 setObject:dictCopy forKeyedSubscript:@"com.apple.iBooks.url"];
  [v5 setObject:@"SideloadedUbiquity" forKeyedSubscript:@"com.apple.iBooks.cloudAssetType"];
  v7 = sub_10006E070(v6);
  [v5 setObject:v7 forKeyedSubscript:@"com.apple.iBooks.libraryAssetType"];

  v8 = objc_autoreleasePoolPush();
  [(BDSUbiquityManager *)self _setValueInMutableDictionary:v5 forKey:@"com.apple.iBooks.assetID" withValueForExtendedAttributeNamed:@"com.apple.iBooks.assetID" fromUrl:dictCopy];
  [(BDSUbiquityManager *)self _setValueInMutableDictionary:v5 forKey:@"com.apple.iBooks.title" withValueForExtendedAttributeNamed:@"com.apple.iBooks.title" fromUrl:dictCopy];
  [(BDSUbiquityManager *)self _setValueInMutableDictionary:v5 forKey:@"com.apple.iBooks.isSupplementalContent" withValueForExtendedAttributeNamed:@"com.apple.iBooks.isSupplementalContent" fromUrl:dictCopy];
  objc_autoreleasePoolPop(v8);

  return v5;
}

- (id)_fileExtensionForUrl:(id)url
{
  urlCopy = url;
  absoluteString = [urlCopy absoluteString];
  v5 = [absoluteString componentsSeparatedByString:@"."];
  lastObject = [v5 lastObject];
  if ([(__CFString *)lastObject isEqualToString:@"icloud"])
  {
    if ([v5 count] < 2)
    {
      v8 = sub_10000DEB0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001BDCB8(urlCopy, v8);
      }

      lastObject = &stru_10024C800;
    }

    else
    {
      v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 2}];

      lastObject = v7;
    }
  }

  return lastObject;
}

- (void)_setValueInMutableDictionary:(id)dictionary forKey:(id)key withValueForExtendedAttributeNamed:(id)named fromUrl:(id)url
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v10 = [url bu_extendedAttributeNamed:named iCloudSyncable:1];
  if (v10)
  {
    [dictionaryCopy setObject:v10 forKey:keyCopy];
  }
}

- (BDSUbiquityManagerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end