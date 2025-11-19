@interface MRDMediaAppInFocusMonitor
+ (BOOL)isRemoteControllableApp:(id)a3;
- (BOOL)lockScreenVisible;
- (MRDMediaAppInFocusMonitor)initWithDelegate:(id)a3;
- (MRDMediaAppInFocusMonitorDelegate)delegate;
- (NSSet)bundlesInFocus;
- (NSSet)mediaBundlesInFocus;
- (void)_handleLayoutDidChangeNotification:(id)a3;
- (void)notifyDelegate;
- (void)setBundlesInFocus:(id)a3;
- (void)setLockScreenVisible:(BOOL)a3;
- (void)setMediaBundlesInFocus:(id)a3;
@end

@implementation MRDMediaAppInFocusMonitor

- (NSSet)bundlesInFocus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000350BC;
  v11 = sub_100035A14;
  v12 = 0;
  v3 = [(MRDMediaAppInFocusMonitor *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004DCC;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)lockScreenVisible
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MRDMediaAppInFocusMonitor *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C9D4;
  v5[3] = &unk_1004B6D30;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)notifyDelegate
{
  v3 = [(NSSet *)self->_mediaBundlesInFocus copy];
  v4 = [(MRDMediaAppInFocusMonitor *)self delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C588;
  v6[3] = &unk_1004B68F0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (MRDMediaAppInFocusMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSSet)mediaBundlesInFocus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000350BC;
  v11 = sub_100035A14;
  v12 = 0;
  v3 = [(MRDMediaAppInFocusMonitor *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000CB50;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (MRDMediaAppInFocusMonitor)initWithDelegate:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MRDMediaAppInFocusMonitor;
  v5 = [(MRDMediaAppInFocusMonitor *)&v20 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.mediaremote.MediaAppInFocus", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.mediaremote.MediaAppInFocusDelegate", v9);
    delegateQueue = v5->_delegateQueue;
    v5->_delegateQueue = v10;

    objc_storeWeak(&v5->_delegate, v4);
    v12 = +[MRDDisplayMonitor sharedMonitor];
    displayMonitor = v5->_displayMonitor;
    v5->_displayMonitor = v12;

    v14 = +[NSSet set];
    bundlesInFocus = v5->_bundlesInFocus;
    v5->_bundlesInFocus = v14;

    v16 = +[NSSet set];
    mediaBundlesInFocus = v5->_mediaBundlesInFocus;
    v5->_mediaBundlesInFocus = v16;

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v5 selector:"_handleLayoutDidChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v5->_displayMonitor];
  }

  return v5;
}

- (void)_handleLayoutDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRDMediaAppInFocusMonitor *)self displayMonitor];
  v6 = [v5 displayOn];

  if (!v6)
  {
    [(MRDMediaAppInFocusMonitor *)self setLockScreenVisible:0];
LABEL_5:
    v10 = +[NSSet set];
    [(MRDMediaAppInFocusMonitor *)self setBundlesInFocus:v10];

    v11 = +[NSSet set];
    [(MRDMediaAppInFocusMonitor *)self setMediaBundlesInFocus:v11];
    goto LABEL_19;
  }

  v7 = [(MRDMediaAppInFocusMonitor *)self displayMonitor];
  if ([v7 lockScreenVisible])
  {
    v8 = [(MRDMediaAppInFocusMonitor *)self displayMonitor];
    v9 = [v8 controlCenterVisible] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v12 = [(MRDMediaAppInFocusMonitor *)self displayMonitor];
  v13 = [v12 controlCenterVisible];

  [(MRDMediaAppInFocusMonitor *)self setLockScreenVisible:v9];
  if (v9 & 1) != 0 || (v13)
  {
    goto LABEL_5;
  }

  v14 = [(MRDMediaAppInFocusMonitor *)self displayMonitor];
  v15 = [v14 presentedBundleIdentifiers];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = +[NSSet set];
  }

  v18 = v17;

  v19 = +[MRDMediaBundleManager shared];
  v20 = [v19 isSupported];

  if ((v20 & 1) == 0)
  {
    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IFM MRDMediaBundleManager not supported on this platform", buf, 2u);
    }
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IFM always using dynamicEligibility check", buf, 2u);
  }

  objc_initWeak(buf, self);
  v23 = +[MRDMediaBundleManager shared];
  v24 = [v18 allObjects];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000C26E8;
  v25[3] = &unk_1004BB060;
  objc_copyWeak(&v27, buf);
  v11 = v18;
  v26 = v11;
  [v23 queryEligibilityOfAll:v24 completionHandler:v25];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
LABEL_19:
}

- (void)setBundlesInFocus:(id)a3
{
  v4 = a3;
  v5 = [(MRDMediaAppInFocusMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C28A4;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setMediaBundlesInFocus:(id)a3
{
  v4 = a3;
  v5 = [(MRDMediaAppInFocusMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C2964;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setLockScreenVisible:(BOOL)a3
{
  v5 = [(MRDMediaAppInFocusMonitor *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C2A88;
  v6[3] = &unk_1004B8820;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

+ (BOOL)isRemoteControllableApp:(id)a3
{
  v3 = qword_100529330;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1003A7730();
  }

  v5 = [qword_100529338 containsObject:v4];

  return v5;
}

@end