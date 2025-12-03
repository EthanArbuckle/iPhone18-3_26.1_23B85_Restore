@interface NTKDSiriDataSourcesObserver
+ (id)sharedInstance;
- (NTKDSiriDataSourcesObserver)init;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)queue_buildInitialSetOfIdentifiersIfNeeded;
- (void)queue_updateDeviceDataSourcesInNanoPreferences;
- (void)updateDeviceDataSourcesInNanoPreferences;
@end

@implementation NTKDSiriDataSourcesObserver

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003004;
  block[3] = &unk_10005CB30;
  block[4] = self;
  if (qword_100066B50 != -1)
  {
    dispatch_once(&qword_100066B50, block);
  }

  v2 = qword_100066B48;

  return v2;
}

- (NTKDSiriDataSourcesObserver)init
{
  v9.receiver = self;
  v9.super_class = NTKDSiriDataSourcesObserver;
  v2 = [(NTKDSiriDataSourcesObserver *)&v9 init];
  v3 = v2;
  if (v2)
  {
    bundleIdentifiers = v2->_bundleIdentifiers;
    v2->_bundleIdentifiers = 0;

    v5 = dispatch_queue_create("com.apple.nanotimekit.upnextobserver", 0);
    bundleQueue = v3->_bundleQueue;
    v3->_bundleQueue = v5;

    v7 = +[LSApplicationWorkspace defaultWorkspace];
    [v7 addObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKDSiriDataSourcesObserver;
  [(NTKDSiriDataSourcesObserver *)&v4 dealloc];
}

- (void)queue_buildInitialSetOfIdentifiersIfNeeded
{
  dispatch_assert_queue_V2(self->_bundleQueue);
  if (!self->_bundleIdentifiers)
  {
    v3 = +[NSMutableSet set];
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003220;
    v8[3] = &unk_10005CB58;
    v5 = v3;
    v9 = v5;
    [v4 enumerateBundlesOfType:1 block:v8];

    bundleIdentifiers = self->_bundleIdentifiers;
    self->_bundleIdentifiers = v5;
    v7 = v5;
  }
}

- (void)queue_updateDeviceDataSourcesInNanoPreferences
{
  dispatch_assert_queue_V2(self->_bundleQueue);
  [(NTKDSiriDataSourcesObserver *)self queue_buildInitialSetOfIdentifiersIfNeeded];
  v4 = [(NSMutableSet *)self->_bundleIdentifiers copy];
  v3 = +[NTKSiriDefaults sharedInstance];
  [v3 setPhoneThirdPartyDataSources:v4];
}

- (void)updateDeviceDataSourcesInNanoPreferences
{
  bundleQueue = self->_bundleQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003460;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_sync(bundleQueue, block);
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  bundleQueue = self->_bundleQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003500;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = installCopy;
  v6 = installCopy;
  dispatch_sync(bundleQueue, v7);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  bundleQueue = self->_bundleQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000370C;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = uninstallCopy;
  v6 = uninstallCopy;
  dispatch_sync(bundleQueue, v7);
}

@end