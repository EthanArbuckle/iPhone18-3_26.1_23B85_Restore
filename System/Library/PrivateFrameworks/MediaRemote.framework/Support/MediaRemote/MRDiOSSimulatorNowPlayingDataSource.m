@interface MRDiOSSimulatorNowPlayingDataSource
- (BOOL)nowPlayingApplicationIsPlaying;
- (MRDiOSSimulatorNowPlayingDataSource)init;
- (id)_mostRecentlyUpdatedClient;
- (id)nowPlayingApplicationDisplayID;
- (int)nowPlayingApplicationPID;
- (void)_notifyDelegateNowPlayingApplicationDidChange;
- (void)_notifyDelegateNowPlayingPlaybackStateDidChange;
- (void)_registerNotifications;
- (void)_reloadCachedNowPlayingClients;
- (void)_reloadCachedNowPlayingItem;
- (void)_unregisterNotifications;
- (void)dealloc;
@end

@implementation MRDiOSSimulatorNowPlayingDataSource

- (MRDiOSSimulatorNowPlayingDataSource)init
{
  v17.receiver = self;
  v17.super_class = MRDiOSSimulatorNowPlayingDataSource;
  v2 = [(MRDNowPlayingDataSource *)&v17 init];
  if (v2)
  {
    v3 = [[BKSApplicationStateMonitor alloc] initWithBundleIDs:0 states:8];
    appStateMonitor = v2->_appStateMonitor;
    v2->_appStateMonitor = v3;

    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(Name, v7);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v8;

    objc_initWeak(&location, v2);
    v10 = v2->_appStateMonitor;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001705D4;
    v14[3] = &unk_1004BFBD8;
    objc_copyWeak(&v15, &location);
    [(BKSApplicationStateMonitor *)v10 setHandler:v14];
    [(MRDiOSSimulatorNowPlayingDataSource *)v2 _registerNotifications];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100170638;
    block[3] = &unk_1004B6D08;
    v13 = v2;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(MRDiOSSimulatorNowPlayingDataSource *)self _unregisterNotifications];
  [(BKSApplicationStateMonitor *)self->_appStateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = MRDiOSSimulatorNowPlayingDataSource;
  [(MRDiOSSimulatorNowPlayingDataSource *)&v3 dealloc];
}

- (int)nowPlayingApplicationPID
{
  v2 = [(MRDiOSSimulatorNowPlayingDataSource *)self _mostRecentlyUpdatedClient];
  v3 = [v2 client];
  v4 = [v3 processIdentifier];

  return v4;
}

- (id)nowPlayingApplicationDisplayID
{
  v2 = proc_pidpath([(MRDiOSSimulatorNowPlayingDataSource *)self nowPlayingApplicationPID], buffer, 0x1000u);
  if (v2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v3 = [[NSString alloc] initWithBytes:buffer length:v2 encoding:4];
    v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v3, kCFURLPOSIXPathStyle, 0);
    if (v4)
    {
      v5 = v4;
      v6 = _CFBundleCopyBundleURLForExecutableURL();
      if (v6)
      {
        v7 = v6;
        v8 = [NSBundle bundleWithURL:v6];
        v9 = [v8 bundleIdentifier];
        CFRelease(v7);
      }

      else
      {
        v9 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)nowPlayingApplicationIsPlaying
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000351FC;
  v12 = sub_100035AB4;
  v13 = 0;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100170960;
  v7[3] = &unk_1004B6D30;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(serialQueue, v7);
  v3 = v9[5];
  MRContentItemGetPlaybackRate();
  v5 = v4 > 0.00000011921;
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_registerNotifications
{
  MRMediaRemoteRegisterForNowPlayingNotifications();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_nowPlayingClientDidRegisterNotification:" name:kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying object:0];
  [v3 addObserver:self selector:"_nowPlayingClientDidUnregisterNotification:" name:kMRMediaRemoteNowPlayingApplicationDidUnregisterCanBeNowPlaying object:0];
  [v3 addObserver:self selector:"_activeNowPlayingClientDidChangeNotification:" name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];
}

- (void)_unregisterNotifications
{
  MRMediaRemoteUnregisterForNowPlayingNotifications();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying object:0];
  [v3 removeObserver:self name:kMRMediaRemoteNowPlayingApplicationDidUnregisterCanBeNowPlaying object:0];
  [v3 removeObserver:self name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];
}

- (void)_reloadCachedNowPlayingClients
{
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 nowPlayingServer];
  v5 = [v4 allLocalNowPlayingInfoClients];

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100170BDC;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(serialQueue, v8);
}

- (void)_reloadCachedNowPlayingItem
{
  v3 = [[MRPlaybackQueueRequest alloc] initWithRange:{0, 1}];
  serialQueue = self->_serialQueue;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
}

- (void)_notifyDelegateNowPlayingApplicationDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170E2C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifyDelegateNowPlayingPlaybackStateDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170FA0;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_mostRecentlyUpdatedClient
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000351FC;
  v29 = sub_100035AB4;
  v30 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001713A8;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v25;
  dispatch_sync(serialQueue, block);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v26[5];
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v4)
  {
    v19 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        if (v3)
        {
          v7 = [v3 activePlayerClient];
          v8 = [v7 playbackQueue];

          v9 = MRPlaybackQueueGetContentItemAtOffset();
          MRContentItemGetElapsedTimeTimestamp();
          v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          v11 = [v6 activePlayerClient];
          v12 = [v11 playbackQueue];

          v13 = MRPlaybackQueueGetContentItemAtOffset();
          MRContentItemGetElapsedTimeTimestamp();
          v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          if ([v10 compare:v14] == -1)
          {
            v15 = v6;

            v3 = v15;
          }
        }

        else
        {
          v3 = v6;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v4);
  }

  v16 = v3;
  _Block_object_dispose(&v25, 8);

  return v16;
}

@end