@interface NDSpringBoardApplication
- (BOOL)isForeground;
- (NDSpringBoardApplication)initWithOperationID:(id)a3;
- (void)addObserver:(id)a3;
- (void)applicationEnteredForeground:(id)a3;
- (void)applicationNoLongerInForeground:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation NDSpringBoardApplication

- (NDSpringBoardApplication)initWithOperationID:(id)a3
{
  v16.receiver = self;
  v16.super_class = NDSpringBoardApplication;
  v3 = [(NDApplication *)&v16 initWithOperationID:a3];
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
      v10 = [v6 containingBundleRecord];
      v11 = [v10 bundleIdentifier];

      if (v11)
      {
        v12 = [NDApplication springboardApplicationWithBundleIdentifier:v11];
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(NSMutableArray *)v5->super._observers count])
  {
    v6 = +[NDSpringBoard sharedSpringBoard];
    [v6 startMonitoringBundleID:v5->super._bundleIdentifier];

    v7 = +[NDSpringBoard sharedSpringBoard];
    [v7 addObserver:v5 forApplication:v5->super._bundleIdentifier];
  }

  v8.receiver = v5;
  v8.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v8 addObserver:v4];
  objc_sync_exit(v5);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8.receiver = v5;
  v8.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v8 removeObserver:v4];
  if (![(NSMutableArray *)v5->super._observers count])
  {
    v6 = +[NDSpringBoard sharedSpringBoard];
    [v6 removeObserver:v5 forApplication:v5->super._bundleIdentifier];

    v7 = +[NDSpringBoard sharedSpringBoard];
    [v7 stopMonitoringBundleID:v5->super._bundleIdentifier];
  }

  objc_sync_exit(v5);
}

- (void)applicationEnteredForeground:(id)a3
{
  v3.receiver = self;
  v3.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v3 invokeSelectorForAllObservers:"applicationEnteredForeground:"];
}

- (void)applicationNoLongerInForeground:(id)a3
{
  v3.receiver = self;
  v3.super_class = NDSpringBoardApplication;
  [(NDApplication *)&v3 invokeSelectorForAllObservers:"applicationNoLongerInForeground:"];
}

@end