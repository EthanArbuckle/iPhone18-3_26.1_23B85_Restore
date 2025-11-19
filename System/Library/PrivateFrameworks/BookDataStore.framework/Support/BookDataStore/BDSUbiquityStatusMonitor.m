@interface BDSUbiquityStatusMonitor
- (BDSICloudIdentityToken)ubiquityIdentityToken;
- (BDSUbiquityStatusChangeObserving)coordinatingObserver;
- (BDSUbiquityStatusMonitor)init;
- (BOOL)dq_isICloudDriveEnabled;
- (BOOL)isICloudDriveEnabled;
- (NSURL)containerURL;
- (NSURL)documentsURL;
- (id)description;
- (void)_notifyObserversForChangesWithCurrentToken:(id)a3 lastToken:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)dq_archiveCurrentUbiquityIdentityToken;
- (void)dq_refreshUbiquityAvailabilityStatus;
- (void)p_ubiquityIdentityDidChange:(id)a3;
- (void)registerCoordinatingObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)restartObserving;
@end

@implementation BDSUbiquityStatusMonitor

- (BDSUbiquityStatusMonitor)init
{
  v22.receiver = self;
  v22.super_class = BDSUbiquityStatusMonitor;
  v2 = [(BDSUbiquityStatusMonitor *)&v22 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityStatusMonitor.containerQueue", v5);
    containerQueue = v2->_containerQueue;
    v2->_containerQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityStatusMonitor.dispatchQueue", v8);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityStatusMonitor.notifyQueue", v11);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v12;

    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [v14 valueForKey:@"nonNilUbiquityIdentityToken"];
    v2->_lastArchivedNonNilUbiquityIdentityTokenWasNonNilAtColdLaunch = v15 != 0;

    v2->_archivedCloudDriveOptedIn = +[BDSSyncUserDefaults isICloudDriveSyncOptedIn];
    v16 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F5CC;
    block[3] = &unk_10023F6B0;
    v17 = v2;
    v21 = v17;
    dispatch_async(v16, block);
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v17 selector:"p_ubiquityIdentityDidChange:" name:NSUbiquityIdentityDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BDSUbiquityStatusMonitor;
  [(BDSUbiquityStatusMonitor *)&v4 dealloc];
}

- (BDSICloudIdentityToken)ubiquityIdentityToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000F754;
  v11 = sub_10000F764;
  v12 = 0;
  v3 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F76C;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)dq_isICloudDriveEnabled
{
  v2 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  dispatch_assert_queue_V2(v2);

  v3 = +[BDSSyncUserDefaults isICloudDriveSyncOptedIn];
  if (v3)
  {
    v4 = @"NO";
    if (+[BDSSyncUserDefaults isCloudKitSyncOptedIn])
    {
      v5 = +[BDSSyncUserDefaults isGlobalICloudDriveSyncOptedIn];
      if (v5)
      {
        v4 = @"YES";
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = @"NO";
  }

  v6 = sub_10000DEB0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"YES";
    if (v3)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    if (!v5)
    {
      v8 = @"NO";
    }

    v13 = v4;
    v14 = 2112;
    v15 = v8;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BDSUbiquityStatusMonitor: dq_isICloudDriveEnabled: isICloudDriveSyncOptedIn = %@, globalICloudDrive = %@, isICloudDriveEnabled = %@", &v10, 0x20u);
  }

  return v5;
}

- (BOOL)isICloudDriveEnabled
{
  v2 = self;
  v3 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(BDSUbiquityStatusMonitor *)v2 dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FA00;
  v6[3] = &unk_10023F910;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000FAEC;
    v6[3] = &unk_10023F938;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000FBF8;
    v6[3] = &unk_10023F938;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)registerCoordinatingObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000FD44;
    v6[3] = &unk_10023F938;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)restartObserving
{
  v3 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FDD4;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dq_archiveCurrentUbiquityIdentityToken
{
  v3 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(BDSUbiquityStatusMonitor *)self currentUbiquityIdentityToken];
  v6 = [v5 token];
  [v4 setObject:v6 forKey:@"ubiquityIdentityToken"];

  v7 = [(BDSUbiquityStatusMonitor *)self currentUbiquityIdentityToken];

  if (v7)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [(BDSUbiquityStatusMonitor *)self currentUbiquityIdentityToken];
    v10 = [v9 token];
    [v8 setObject:v10 forKey:@"nonNilUbiquityIdentityToken"];
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 synchronize];
}

- (void)p_ubiquityIdentityDidChange:(id)a3
{
  v4 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010270;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_notifyObserversForChangesWithCurrentToken:(id)a3 lastToken:(id)a4
{
  v16 = a3;
  v6 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(BDSUbiquityStatusMonitor *)self observers];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [(BDSUbiquityStatusMonitor *)self notifyQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000106CC;
          block[3] = &unk_10023F720;
          v22 = v16;
          v23 = v6;
          v24 = v12;
          dispatch_async(v13, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v14 = [(BDSUbiquityStatusMonitor *)self coordinatingObserver];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [(BDSUbiquityStatusMonitor *)self notifyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001078C;
    v17[3] = &unk_10023F720;
    v18 = v16;
    v19 = v6;
    v20 = v14;
    dispatch_async(v15, v17);
  }
}

- (void)dq_refreshUbiquityAvailabilityStatus
{
  v3 = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[BDSICloudIdentityToken tokenForCurrentIdentityIfICloudDriveEnabled];
  currentUbiquityIdentityToken = self->_currentUbiquityIdentityToken;
  self->_currentUbiquityIdentityToken = v4;

  v6 = [BDSICloudIdentityToken alloc];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 valueForKey:@"ubiquityIdentityToken"];
  v9 = [(BDSICloudIdentityToken *)v6 initFromArchive:v8];
  lastArchivedUbiquityIdentityToken = self->_lastArchivedUbiquityIdentityToken;
  self->_lastArchivedUbiquityIdentityToken = v9;

  v11 = sub_10000DEB0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(BDSUbiquityStatusMonitor *)self containerIdentifier];
    v13 = self->_currentUbiquityIdentityToken;
    v14 = self->_lastArchivedUbiquityIdentityToken;
    *buf = 138412802;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: dq_refreshUbiquityAvailabilityStatus container:%@ current::%@ oldToken:%@", buf, 0x20u);
  }

  v15 = self->_currentUbiquityIdentityToken;
  v16 = [(BDSUbiquityStatusMonitor *)self containerQueue];
  v17 = v16;
  if (v15)
  {
    v18 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v19 = sub_100010A54;
  }

  else
  {
    v18 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v19 = sub_100011078;
  }

  v18[2] = v19;
  v18[3] = &unk_10023F6B0;
  v18[4] = self;
  dispatch_async(v16, v18);
}

- (NSURL)containerURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000F754;
  v11 = sub_10000F764;
  v12 = 0;
  v3 = [(BDSUbiquityStatusMonitor *)self containerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011218;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSURL)documentsURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000F754;
  v11 = sub_10000F764;
  v12 = 0;
  v3 = [(BDSUbiquityStatusMonitor *)self containerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011348;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([(BDSUbiquityStatusMonitor *)self isICloudDriveEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(BDSUbiquityStatusMonitor *)self containerURL];
  v7 = [(BDSUbiquityStatusMonitor *)self documentsURL];
  v8 = [NSString stringWithFormat:@"<%@(%p) iCloudDrive=%@ containerURL='%@' documentsURL='%@'", v4, self, v5, v6, v7];

  return v8;
}

- (BDSUbiquityStatusChangeObserving)coordinatingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatingObserver);

  return WeakRetained;
}

@end