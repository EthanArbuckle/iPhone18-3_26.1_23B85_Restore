@interface MTFrameworkEnvironment
+ (void)initialize;
+ (void)withEnvironment:(id)environment execute:(id)execute;
- (BOOL)useCloudKitSandbox;
- (NSString)localDataPath;
- (id)hostProcessBundleIdentifier;
- (id)metricsKitBundleIdentifier;
- (id)secretStore;
- (id)valueForEntitlement:(id)entitlement;
- (void)setLocalDataPath:(id)path;
@end

@implementation MTFrameworkEnvironment

+ (void)withEnvironment:(id)environment execute:(id)execute
{
  executeCopy = execute;
  environmentCopy = environment;
  sharedEnvironment = [self sharedEnvironment];
  [self setSharedEnvironment:environmentCopy];

  executeCopy[2](executeCopy);
  [self setSharedEnvironment:sharedEnvironment];
}

+ (void)initialize
{
  v2 = objc_opt_new();
  v3 = qword_1000280C0;
  qword_1000280C0 = v2;

  byte_1000280C8 = MGGetBoolAnswer();
}

- (void)setLocalDataPath:(id)path
{
  pathCopy = path;
  if ([pathCopy hasPrefix:@"file://"])
  {
    v5 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = pathCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MetricsKit: Expected a path but got a full url for MTFrameworkEnvironment.setLocalDataPath. Please remove file:// from %@", &v10, 0xCu);
    }

    v6 = [NSURL URLWithString:pathCopy];
    path = [v6 path];

    pathCopy = path;
  }

  v8 = [pathCopy stringByReplacingOccurrencesOfString:@"//" withString:@"/"];

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

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, entitlementCopy, &error);
    if (error)
    {
      v7 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = entitlementCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  secretStore = selfCopy->_secretStore;
  if (!secretStore)
  {
    v4 = NSClassFromString(@"MTIDCompositeSecretStore");
    v5 = NSClassFromString(@"MTIDXPCSecretStore");
    v6 = [(MTFrameworkEnvironment *)selfCopy valueForEntitlement:@"com.apple.security.exception.mach-lookup.global-name"];
    if (([v6 containsObject:@"com.apple.AMPIDService"] & (v5 != 0)) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = objc_alloc_init(v7);
    v9 = selfCopy->_secretStore;
    selfCopy->_secretStore = v8;

    secretStore = selfCopy->_secretStore;
  }

  v10 = secretStore;
  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)useCloudKitSandbox
{
  isInternalBuild = [(MTFrameworkEnvironment *)self isInternalBuild];
  if (isInternalBuild)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKey:@"MTMetricsKitContainerEnvironment"];

    if (!v5)
    {
      v5 = [(MTFrameworkEnvironment *)self valueForEntitlement:@"com.apple.developer.icloud-container-environment"];
    }

    v6 = [v5 isEqualToString:@"Development"];

    LOBYTE(isInternalBuild) = v6;
  }

  return isInternalBuild;
}

- (id)hostProcessBundleIdentifier
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    processName = bundleIdentifier;
  }

  else
  {
    v6 = +[NSProcessInfo processInfo];
    processName = [v6 processName];
  }

  return processName;
}

- (id)metricsKitBundleIdentifier
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"MTMetricsKit")];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

@end