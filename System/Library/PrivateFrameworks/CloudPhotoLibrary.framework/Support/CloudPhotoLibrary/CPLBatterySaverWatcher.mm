@interface CPLBatterySaverWatcher
- (BOOL)_updateBatterySaverMode;
- (CPLBatterySaverWatcher)initWithDispatchQueue:(id)a3 delegate:(id)a4;
- (CPLBatterySaverWatcherDelegate)delegate;
- (void)_batterySaverModeTriggered;
- (void)_registerForBatterySaverMode;
- (void)_unregisterForBatterySaverMode;
- (void)startWatching;
- (void)stopWatching;
@end

@implementation CPLBatterySaverWatcher

- (CPLBatterySaverWatcher)initWithDispatchQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPLBatterySaverWatcher;
  v9 = [(CPLBatterySaverWatcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_batterySaverMode = 0;
    objc_storeStrong(&v9->_queue, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (void)startWatching
{
  self->_watching = 1;
  [(CPLBatterySaverWatcher *)self _registerForBatterySaverMode];
  [(CPLBatterySaverWatcher *)self _updateBatterySaverMode];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022024;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopWatching
{
  self->_watching = 0;
  [(CPLBatterySaverWatcher *)self _unregisterForBatterySaverMode];

  [(CPLBatterySaverWatcher *)self _updateBatterySaverMode];
}

- (BOOL)_updateBatterySaverMode
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  batterySaverMode = self->_batterySaverMode;
  if (batterySaverMode != v4)
  {
    self->_batterySaverMode = v4;
  }

  return batterySaverMode != v4;
}

- (void)_batterySaverModeTriggered
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022188;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_unregisterForBatterySaverMode
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSProcessInfoPowerStateDidChangeNotification object:0];
}

- (void)_registerForBatterySaverMode
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_batterySaverModeTriggered" name:NSProcessInfoPowerStateDidChangeNotification object:0];
}

- (CPLBatterySaverWatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end