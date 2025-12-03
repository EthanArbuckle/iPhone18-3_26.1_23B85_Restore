@interface BDSSyncEngineSaltManager
- (BDSSyncEngineSaltManager)initWithDatabase:(id)database observer:(id)observer;
- (BDSSyncEngineSaltManagerObserver)observer;
- (BOOL)establishedSalt;
- (NSString)establishedSaltVersionIdentifier;
- (id)_wq_saltedAndHashedIDFromLocalID:(id)d;
- (id)recordNameFromRecordType:(id)type identifier:(id)identifier;
- (void)_updatedReachability;
- (void)invalidateSalt;
- (void)refreshSalt:(id)salt;
- (void)refreshSaltIfNeeded:(id)needed;
- (void)wq_invalidateSalt;
- (void)wq_refreshSalt:(id)salt;
@end

@implementation BDSSyncEngineSaltManager

- (BDSSyncEngineSaltManager)initWithDatabase:(id)database observer:(id)observer
{
  databaseCopy = database;
  observerCopy = observer;
  v16.receiver = self;
  v16.super_class = BDSSyncEngineSaltManager;
  v9 = [(BDSSyncEngineSaltManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeWeak(&v10->_observer, observerCopy);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.BDSSyncEngineSaltManager.workQueue", v11);
    workQueue = v10->_workQueue;
    v10->_workQueue = v12;

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v10 selector:"_updatedReachability" name:@"kNetworkReachabilityChangedNotification" object:0];
  }

  return v10;
}

- (NSString)establishedSaltVersionIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10005B674;
  v11 = sub_10005B684;
  v12 = 0;
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005B68C;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)refreshSalt:(id)salt
{
  saltCopy = salt;
  objc_initWeak(&location, self);
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B7C8;
  block[3] = &unk_10023FE48;
  objc_copyWeak(&v9, &location);
  v8 = saltCopy;
  v6 = saltCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)refreshSaltIfNeeded:(id)needed
{
  neededCopy = needed;
  objc_initWeak(&location, self);
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B908;
  block[3] = &unk_10023FE48;
  objc_copyWeak(&v9, &location);
  v8 = neededCopy;
  v6 = neededCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)wq_refreshSalt:(id)salt
{
  saltCopy = salt;
  if ([(BDSSyncEngineSaltManager *)self isSaltRefreshInProgress])
  {
    v5 = sub_100002660();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Salt refresh already in progress. Ignoring -refreshSalt: call", buf, 2u);
    }
  }

  else
  {
    [(BDSSyncEngineSaltManager *)self setIsSaltRefreshInProgress:1];
    [(BDSSyncEngineSaltManager *)self wq_invalidateSalt];
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Establishing record salt", buf, 2u);
    }

    v5 = [[CKRecordID alloc] initWithRecordName:@"recordIDSalt"];
    objc_initWeak(buf, self);
    database = [(BDSSyncEngineSaltManager *)self database];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005BBE4;
    v8[3] = &unk_100241700;
    objc_copyWeak(&v10, buf);
    v9 = saltCopy;
    [database fetchRecordWithID:v5 completionHandler:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)invalidateSalt
{
  objc_initWeak(&location, self);
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005C968;
  v4[3] = &unk_100240058;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)wq_invalidateSalt
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Invalidate record salt", v4, 2u);
  }

  [(BDSSyncEngineSaltManager *)self setCurrentSalt:0];
  [(BDSSyncEngineSaltManager *)self setCurrentSaltVersionIdentifier:0];
}

- (BOOL)establishedSalt
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005CB04;
  v5[3] = &unk_10023F910;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)recordNameFromRecordType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10005B674;
  v22 = sub_10005B684;
  v23 = 0;
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005CCC0;
  v13[3] = &unk_100241728;
  v14 = identifierCopy;
  selfCopy = self;
  v16 = typeCopy;
  v17 = &v18;
  v9 = typeCopy;
  v10 = identifierCopy;
  dispatch_sync(workQueue, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (id)_wq_saltedAndHashedIDFromLocalID:(id)d
{
  dCopy = d;
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSalt = [(BDSSyncEngineSaltManager *)self currentSalt];
  v7 = currentSalt;
  if (currentSalt)
  {
    memset(&v14, 0, sizeof(v14));
    CCHmacInit(&v14, 0, [currentSalt bytes], objc_msgSend(currentSalt, "length"));
    uTF8String = [dCopy UTF8String];
    v9 = strlen(uTF8String);
    CCHmacUpdate(&v14, uTF8String, v9);
    macOut[0] = 0;
    macOut[1] = 0;
    v16 = 0;
    CCHmacFinal(&v14, macOut);
    v10 = [NSData dataWithBytes:macOut length:20];
    v11 = [v10 base64EncodedStringWithOptions:0];
  }

  else
  {
    v12 = sub_100002660();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001C200C();
    }

    v11 = 0;
  }

  return v11;
}

- (void)_updatedReachability
{
  v3 = +[BDSReachability isOffline];
  v4 = sub_100002660();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3 ^ 1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager network reachability changed. Reachable: %{BOOL}d", v5, 8u);
  }

  if ((v3 & 1) == 0)
  {
    [(BDSSyncEngineSaltManager *)self refreshSaltIfNeeded:&stru_100241748];
  }
}

- (BDSSyncEngineSaltManagerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end