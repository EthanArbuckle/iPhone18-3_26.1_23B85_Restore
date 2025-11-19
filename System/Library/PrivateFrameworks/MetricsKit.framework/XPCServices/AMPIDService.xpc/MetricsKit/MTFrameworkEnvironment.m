@interface MTFrameworkEnvironment
+ (void)initialize;
+ (void)withEnvironment:(id)a3 execute:(id)a4;
- (BOOL)useCloudKitSandbox;
- (NSString)localDataPath;
- (id)hostProcessBundleIdentifier;
- (id)metricsKitBundleIdentifier;
- (id)secretStore;
- (id)valueForEntitlement:(id)a3;
- (void)setLocalDataPath:(id)a3;
@end

@implementation MTFrameworkEnvironment

+ (void)withEnvironment:(id)a3 execute:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedEnvironment];
  [a1 setSharedEnvironment:v7];

  v6[2](v6);
  [a1 setSharedEnvironment:v8];
}

+ (void)initialize
{
  v2 = objc_opt_new();
  v3 = qword_1000280C0;
  qword_1000280C0 = v2;

  byte_1000280C8 = MGGetBoolAnswer();
}

- (void)setLocalDataPath:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"file://"])
  {
    v5 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MetricsKit: Expected a path but got a full url for MTFrameworkEnvironment.setLocalDataPath. Please remove file:// from %@", &v10, 0xCu);
    }

    v6 = [NSURL URLWithString:v4];
    v7 = [v6 path];

    v4 = v7;
  }

  v8 = [v4 stringByReplacingOccurrencesOfString:@"//" withString:@"/"];

  localDataPath = self->_localDataPath;
  self->_localDataPath = v8;
}

- (NSString)localDataPath
{
  localDataPath = self->_localDataPath;
  if (!localDataPath)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001E14;
    block[3] = &unk_100020560;
    block[4] = self;
    if (qword_1000280D0 != -1)
    {
      dispatch_once(&qword_1000280D0, block);
    }

    localDataPath = qword_1000280D8;
  }

  v3 = localDataPath;

  return v3;
}

- (id)valueForEntitlement:(id)a3
{
  v3 = a3;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
    if (error)
    {
      v7 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = error;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to read entitlement %@ error: %@", buf, 0x16u);
      }

      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)secretStore
{
  v2 = self;
  objc_sync_enter(v2);
  secretStore = v2->_secretStore;
  if (!secretStore)
  {
    v4 = NSClassFromString(@"MTIDCompositeSecretStore");
    v5 = NSClassFromString(@"MTIDXPCSecretStore");
    v6 = [(MTFrameworkEnvironment *)v2 valueForEntitlement:@"com.apple.security.exception.mach-lookup.global-name"];
    if (([v6 containsObject:@"com.apple.AMPIDService"] & (v5 != 0)) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = objc_alloc_init(v7);
    v9 = v2->_secretStore;
    v2->_secretStore = v8;

    secretStore = v2->_secretStore;
  }

  v10 = secretStore;
  objc_sync_exit(v2);

  return v10;
}

- (BOOL)useCloudKitSandbox
{
  v3 = [(MTFrameworkEnvironment *)self isInternalBuild];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKey:@"MTMetricsKitContainerEnvironment"];

    if (!v5)
    {
      v5 = [(MTFrameworkEnvironment *)self valueForEntitlement:@"com.apple.developer.icloud-container-environment"];
    }

    v6 = [v5 isEqualToString:@"Development"];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (id)hostProcessBundleIdentifier
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[NSProcessInfo processInfo];
    v5 = [v6 processName];
  }

  return v5;
}

- (id)metricsKitBundleIdentifier
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"MTMetricsKit")];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end