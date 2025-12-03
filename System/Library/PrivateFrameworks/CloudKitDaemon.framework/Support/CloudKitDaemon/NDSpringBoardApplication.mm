@interface NDSpringBoardApplication
- (BOOL)isForeground;
- (NDSpringBoardApplication)initWithOperationID:(id)d;
- (void)addObserver:(id)observer;
- (void)applicationEnteredForeground:(id)foreground;
- (void)applicationNoLongerInForeground:(id)foreground;
- (void)removeObserver:(id)observer;
@end

@implementation NDSpringBoardApplication

- (NDSpringBoardApplication)initWithOperationID:(id)d
{
  v16.receiver = self;
  v16.super_class = NDSpringBoardApplication;
  v3 = [(NDApplication *)&v16 initWithOperationID:d];
  if (v3)
  {
    v4 = [LSApplicationExtensionRecord alloc];
    bundleIdentifier = v3->super._bundleIdentifier;
    v15 = 0;
    v6 = [v4 initWithBundleIdentifier:bundleIdentifier error:&v15];
    v7 = v15;
    if (v7)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v8 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v9 = v3->super._bundleIdentifier;
        *buf = 138412546;
        v18 = v9;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Bundle ID %@ doesn't belong to an extension: %@", buf, 0x16u);
      }
    }

    else if (v6)
    {
      containingBundleRecord = [v6 containingBundleRecord];
      bundleIdentifier = [containingBundleRecord bundleIdentifier];

      if (bundleIdentifier)
      {
        v12 = [NDApplication springboardApplicationWithBundleIdentifier:bundleIdentifier];
        containingApplication = v3->_containingApplication;
        v3->_containingApplication = v12;
      }
    }
  }

  return v3;
}

- (BOOL)isForeground
{
  v3 = +[NDSpringBoard sharedSpringBoard];
  LOBYTE(self) = [v3 applicationIsForeground:self->super._bundleIdentifier];

  return self;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSMutableArray *)selfCopy->super._observers count])
  {
    v6 = +[NDSpringBoard sharedSpringBoard];
    [v6 startMonitoringBundleID:selfCopy->super._bundleIdentifier];

    v7 = +[NDSpringBoard sharedSpringBoard];
    [v7 addObserver:selfCopy forApplication:selfCopy->super._bundleIdentifier];
  }

  v8.receiver = selfCopy;
  v8.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v8 addObserver:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8.receiver = selfCopy;
  v8.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v8 removeObserver:observerCopy];
  if (![(NSMutableArray *)selfCopy->super._observers count])
  {
    v6 = +[NDSpringBoard sharedSpringBoard];
    [v6 removeObserver:selfCopy forApplication:selfCopy->super._bundleIdentifier];

    v7 = +[NDSpringBoard sharedSpringBoard];
    [v7 stopMonitoringBundleID:selfCopy->super._bundleIdentifier];
  }

  objc_sync_exit(selfCopy);
}

- (void)applicationEnteredForeground:(id)foreground
{
  v3.receiver = self;
  v3.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v3 invokeSelectorForAllObservers:"applicationEnteredForeground:"];
}

- (void)applicationNoLongerInForeground:(id)foreground
{
  v3.receiver = self;
  v3.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v3 invokeSelectorForAllObservers:"applicationNoLongerInForeground:"];
}

@end