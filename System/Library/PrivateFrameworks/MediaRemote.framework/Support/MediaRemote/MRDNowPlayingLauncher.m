@interface MRDNowPlayingLauncher
- (MRDNowPlayingLauncher)initWithBundleIdentifier:(id)a3 options:(unint64_t)a4;
- (MRDNowPlayingLauncherDelegate)delegate;
- (void)_background;
- (void)_launch;
- (void)_nowPlayingPlaybackStateDidChange:(id)a3;
- (void)_relaunch;
- (void)_startObservingNotifications;
- (void)_stopObservingNotifications;
- (void)_submitLaunchFailure;
- (void)_submitRelaunchEvent:(BOOL)a3;
- (void)_submitTerminationEvent:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MRDNowPlayingLauncher

- (MRDNowPlayingLauncher)initWithBundleIdentifier:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = MRDNowPlayingLauncher;
  v8 = [(MRDNowPlayingLauncher *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleIdentifier, a3);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("com.apple.mediaremote.nowPlayingLauncherNotifications", v10);
    v12 = objc_alloc_init(NSOperationQueue);
    notificationOperationQueue = v9->_notificationOperationQueue;
    v9->_notificationOperationQueue = v12;

    [(NSOperationQueue *)v9->_notificationOperationQueue setUnderlyingQueue:v11];
    v9->_options = a4;
    [(MRDNowPlayingLauncher *)v9 _startObservingNotifications];
  }

  return v9;
}

- (void)dealloc
{
  [(MRDNowPlayingLauncher *)self _stopObservingNotifications];
  [(MRDNowPlayingLauncher *)self _cleanup];
  v3.receiver = self;
  v3.super_class = MRDNowPlayingLauncher;
  [(MRDNowPlayingLauncher *)&v3 dealloc];
}

- (void)_launch
{
  v3 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  objc_initWeak(&location, self);
  v4 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ ...", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100173818;
  v7[3] = &unk_1004BFCC8;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v3 openApplication:v6 withOptions:0 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_background
{
  v3 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v13 = FBSOpenApplicationOptionKeyActivateSuspended;
  v14 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v5 = [FBSOpenApplicationOptions optionsWithDictionary:v4];

  v6 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Suspending %{public}@ ...", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100173BBC;
  v9[3] = &unk_1004BFCF0;
  v10 = v6;
  v8 = v6;
  [v3 openApplication:v8 withOptions:v5 completion:v9];
}

- (void)_relaunch
{
  v3 = [(MRDNowPlayingLauncher *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(MRDNowPlayingLauncher *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(MRDNowPlayingLauncher *)self delegate];
      v8 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
      v9 = [v7 nowPlayingLauncher:self shouldRelaunch:v8];

      v10 = _MRLogForCategory();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          v12 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
          v14 = 138543362;
          v15 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Relaunching terminated process %{public}@", &v14, 0xCu);
        }

        [(MRDNowPlayingLauncher *)self _launch];
      }

      else
      {
        if (v11)
        {
          v13 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
          v14 = 138543362;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not relaunching terminated process %{public}@", &v14, 0xCu);
        }
      }

      [(MRDNowPlayingLauncher *)self _submitRelaunchEvent:v9];
    }
  }
}

- (void)_startObservingNotifications
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start observing NowPlaying notifications for %{public}@", buf, 0xCu);
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  objc_initWeak(buf, self);
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = [(MRDNowPlayingLauncher *)self notificationOperationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001743B0;
  v8[3] = &unk_1004B9A58;
  objc_copyWeak(&v9, buf);
  v7 = [v5 addObserverForName:kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification object:0 queue:v6 usingBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)_stopObservingNotifications
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop observing NowPlaying notifications for %{public}@", &v6, 0xCu);
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification object:0];
}

- (void)_nowPlayingPlaybackStateDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:kMRMediaRemotePlaybackStateUserInfoKey];
  v7 = [v6 unsignedIntValue];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"_MROriginatingNotification"];

  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100174848;
  v22[3] = &unk_1004BFD40;
  objc_copyWeak(&v25, &location);
  v12 = v9;
  v23 = v12;
  v26 = v7;
  v13 = v11;
  v24 = v13;
  v14 = [MSVTimer timerWithInterval:0 repeats:v22 block:1.0];
  playbackStateTimer = self->_playbackStateTimer;
  self->_playbackStateTimer = v14;

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
    *buf = 138543874;
    v29 = v17;
    v30 = 1026;
    v31 = v7;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ received PlaybackStateDidChangeNotification. PlaybackState: %{public}d. PlayerPath: %{public}@.", buf, 0x1Cu);
  }

  v18 = +[MRUserSettings currentSettings];
  v19 = [v18 homepodDemoMode];

  if (v19)
  {
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
      *buf = 138543362;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ will ignore this notification (and future PlaybackStateDidChangeNotifications) since HomePod is in demo mode.", buf, 0xCu);
    }

    [(MRDNowPlayingLauncher *)self _stopObservingNotifications];
  }

  else if (v7 == 1)
  {
    [(MRDNowPlayingLauncher *)self launch];
  }

  else
  {
    [(MRDNowPlayingLauncher *)self background];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_submitLaunchFailure
{
  v3 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
  v2 = v3;
  MRAnalyticsSendEvent();
}

- (void)_submitRelaunchEvent:(BOOL)a3
{
  v4 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
  v3 = v4;
  MRAnalyticsSendEvent();
}

- (void)_submitTerminationEvent:(unint64_t)a3
{
  v4 = [(MRDNowPlayingLauncher *)self bundleIdentifier];
  v3 = v4;
  MRAnalyticsSendEvent();
}

- (MRDNowPlayingLauncherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end