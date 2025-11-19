@interface MRDNowPlayingStateMonitor
- (MRDNowPlayingStateMonitor)initWithDelegate:(id)a3;
- (MRDNowPlayingStateMonitorDelegate)delegate;
- (NSString)nowPlayingApp;
- (unsigned)onQueue_lastPlaybackStateForEndpoint:(id)a3;
- (void)_configureNowPlayingController:(id)a3;
- (void)controller:(id)a3 didFailWithError:(id)a4;
- (void)controller:(id)a3 didLoadResponse:(id)a4;
- (void)controller:(id)a3 playbackStateDidChangeFrom:(unsigned int)a4 to:(unsigned int)a5;
- (void)onQueue_controller:(id)a3 didLoadResponse:(id)a4 retry:(BOOL)a5;
- (void)setup;
@end

@implementation MRDNowPlayingStateMonitor

- (MRDNowPlayingStateMonitor)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MRDNowPlayingStateMonitor;
  v5 = [(MRDNowPlayingStateMonitor *)&v14 init];
  if (v5)
  {
    v6 = +[MRNowPlayingController userSelectedEndpointController];
    [(MRDNowPlayingStateMonitor *)v5 setAseNowPlayingController:v6];

    v7 = +[MRNowPlayingController localRouteController];
    [(MRDNowPlayingStateMonitor *)v5 setLocalNowPlayingController:v7];

    [(MRDNowPlayingStateMonitor *)v5 setDelegate:v4];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.NowPlayingStateMonitor", v8);
    [(MRDNowPlayingStateMonitor *)v5 setQueue:v9];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mediaremote.NowPlayingStateMonitor.delegateQueue", v10);
    [(MRDNowPlayingStateMonitor *)v5 setDelegateQueue:v11];

    v12 = objc_alloc_init(NSMutableDictionary);
    [(MRDNowPlayingStateMonitor *)v5 setLastPlaybackStates:v12];

    [(MRDNowPlayingStateMonitor *)v5 setup];
  }

  return v5;
}

- (void)setup
{
  v3 = [(MRDNowPlayingStateMonitor *)self aseNowPlayingController];
  [(MRDNowPlayingStateMonitor *)self _configureNowPlayingController:v3];

  v4 = [(MRDNowPlayingStateMonitor *)self localNowPlayingController];
  [(MRDNowPlayingStateMonitor *)self _configureNowPlayingController:v4];
}

- (void)_configureNowPlayingController:(id)a3
{
  v9 = a3;
  v4 = [v9 configuration];
  [v4 setRequestPlaybackState:1];

  v5 = [v9 configuration];
  [v5 setRequestClientProperties:1];

  v6 = [v9 configuration];
  [v6 setRequestPlaybackQueue:0];

  v7 = [v9 configuration];
  [v7 setRequestSupportedCommands:0];

  v8 = [v9 configuration];
  [v8 setRequestLastPlayingDate:0];

  [v9 setDelegate:self];
  [v9 beginLoadingUpdates];
}

- (unsigned)onQueue_lastPlaybackStateForEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(MRDNowPlayingStateMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 uniqueIdentifier];
  if (v6)
  {
    v7 = [(MRDNowPlayingStateMonitor *)self lastPlaybackStates];
    v8 = [v4 uniqueIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)controller:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %@ didFailWithError: %@", &v8, 0x16u);
  }
}

- (void)controller:(id)a3 didLoadResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %@ didLoadResponse: %@", buf, 0x16u);
  }

  v9 = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B2AC;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)onQueue_controller:(id)a3 didLoadResponse:(id)a4 retry:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(MRDNowPlayingStateMonitor *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [v9 destination];
  v12 = [v11 endpoint];
  if (v12)
  {
    v13 = v12;

LABEL_4:
    v15 = [(MRDNowPlayingStateMonitor *)self onQueue_lastPlaybackStateForEndpoint:v13];
    v16 = [v9 playbackState];
    v17 = [v8 destination];
    v18 = [v17 client];
    v19 = [v18 representedBundleID];

    if (v15 != v16)
    {
      v20 = _MRLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = MRMediaRemoteCopyPlaybackStateDescription();
        v22 = MRMediaRemoteCopyPlaybackStateDescription();
        *buf = 138412802;
        v32 = v13;
        v33 = 2112;
        v34 = v21;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM updating stored playback state for %@ from %@ to %@", buf, 0x20u);
      }

      [(MRDNowPlayingStateMonitor *)self onQueue_setLastPlaybackState:v16 bundleIdentifier:v19 forEndpoint:v13];
    }

LABEL_9:
    goto LABEL_10;
  }

  v14 = [v8 destination];
  v13 = [v14 endpoint];

  if (v13)
  {
    goto LABEL_4;
  }

  v13 = _MRLogForCategory();
  v23 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v23)
    {
      v27 = [v8 destination];
      *buf = 138413058;
      v32 = self;
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint is nil, ignoring - %@ (%@), response: %@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  if (v23)
  {
    v24 = [v8 destination];
    *buf = 138413058;
    v32 = self;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint is nil, will retry in 3 seconds - %@ (%@), response: %@", buf, 0x2Au);
  }

  v25 = dispatch_time(0, 3000000000);
  v26 = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B64C;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v29 = v8;
  v30 = v9;
  dispatch_after(v25, v26, block);

LABEL_10:
}

- (void)controller:(id)a3 playbackStateDidChangeFrom:(unsigned int)a4 to:(unsigned int)a5
{
  v8 = a3;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v17 = v8;
    v18 = 2112;
    v19 = v8;
    v20 = 1024;
    v21 = a4;
    v22 = 1024;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %p %@ playbackStateDidChangeFrom: %d to: %d", buf, 0x22u);
  }

  v10 = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B8B4;
  block[3] = &unk_1004B87F8;
  v13 = v8;
  v14 = self;
  v15 = a5;
  v11 = v8;
  dispatch_async(v10, block);
}

- (NSString)nowPlayingApp
{
  v2 = [(MRDNowPlayingStateMonitor *)self aseNowPlayingController];
  v3 = [v2 response];
  v4 = [v3 playerPath];
  v5 = [v4 client];
  v6 = [v5 representedBundleID];

  return v6;
}

- (MRDNowPlayingStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end