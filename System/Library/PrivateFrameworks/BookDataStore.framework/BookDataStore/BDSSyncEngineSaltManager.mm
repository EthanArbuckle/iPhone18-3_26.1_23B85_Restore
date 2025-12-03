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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__updatedReachability name:@"kNetworkReachabilityChangedNotification" object:0];
  }

  return v10;
}

- (NSString)establishedSaltVersionIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1E45EC040;
  v11 = sub_1E45EC050;
  v12 = 0;
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E45EC058;
  v6[3] = &unk_1E8759688;
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
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E45EC194;
  block[3] = &unk_1E87596B0;
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
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E45EC2D4;
  block[3] = &unk_1E87596B0;
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
    v5 = BDSCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Salt refresh already in progress. Ignoring -refreshSalt: call", buf, 2u);
    }
  }

  else
  {
    [(BDSSyncEngineSaltManager *)self setIsSaltRefreshInProgress:1];
    [(BDSSyncEngineSaltManager *)self wq_invalidateSalt];
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Establishing record salt", buf, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"recordIDSalt"];
    objc_initWeak(buf, self);
    database = [(BDSSyncEngineSaltManager *)self database];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E45EC5B0;
    v8[3] = &unk_1E8759728;
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
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E45ED334;
  v4[3] = &unk_1E8759750;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)wq_invalidateSalt
{
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Invalidate record salt", v4, 2u);
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
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E45ED4D0;
  v5[3] = &unk_1E8759688;
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
  v21 = sub_1E45EC040;
  v22 = sub_1E45EC050;
  v23 = 0;
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E45ED68C;
  v13[3] = &unk_1E8759778;
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
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  workQueue = [(BDSSyncEngineSaltManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSalt = [(BDSSyncEngineSaltManager *)self currentSalt];
  v7 = currentSalt;
  if (currentSalt)
  {
    memset(&v15, 0, sizeof(v15));
    CCHmacInit(&v15, 0, [currentSalt bytes], objc_msgSend(currentSalt, "length"));
    uTF8String = [dCopy UTF8String];
    v9 = strlen(uTF8String);
    CCHmacUpdate(&v15, uTF8String, v9);
    macOut[0] = 0;
    macOut[1] = 0;
    v17 = 0;
    CCHmacFinal(&v15, macOut);
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:20];
    v11 = [v10 base64EncodedStringWithOptions:0];
  }

  else
  {
    v12 = BDSCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E4701FB0();
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_updatedReachability
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[BDSReachability isOffline];
  v4 = BDSCloudKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = !v3;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager network reachability changed. Reachable: %{BOOL}d", v6, 8u);
  }

  if (!v3)
  {
    [(BDSSyncEngineSaltManager *)self refreshSaltIfNeeded:&unk_1F5E61548];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BDSSyncEngineSaltManagerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end