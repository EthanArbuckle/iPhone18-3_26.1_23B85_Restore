@interface FCCKContentDatabase
- (BOOL)shouldBypassCDNForCKAssetURLs;
- (FCCKContentDatabase)init;
- (FCCKContentDatabase)initWithContainerIdentifier:(id)identifier productionEnvironment:(BOOL)environment networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability configurationManager:(id)manager;
- (NSURL)baseURLForEdgeCachedMultiFetch;
- (NSURL)baseURLForEdgeCachedOrderFeed;
- (NSURL)baseURLForMultiFetch;
- (NSURL)baseURLForOrderFeed;
- (NSURL)baseURLForRecordFetch;
- (id)generateURLForResourceID:(id)d;
- (id)permanentURLForRecordID:(id)d field:(int64_t)field;
- (id)permanentURLForRecordID:(id)d field:(int64_t)field useSecureConnection:(BOOL)connection;
- (void)addOperation:(id)operation;
@end

@implementation FCCKContentDatabase

- (NSURL)baseURLForRecordFetch
{
  configurationManager = [(FCCKContentDatabase *)self configurationManager];
  configuration = [configurationManager configuration];
  v4 = [FCBaseURLConfiguration ckRecordFetchBaseURLForConfiguration:configuration];

  return v4;
}

- (NSURL)baseURLForEdgeCachedMultiFetch
{
  configurationManager = [(FCCKContentDatabase *)self configurationManager];
  configuration = [configurationManager configuration];
  v4 = [FCBaseURLConfiguration ckEdgeCachedMultiFetchBaseURLForConfiguration:configuration];

  return v4;
}

- (FCCKContentDatabase)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKContentDatabase init]";
    v10 = 2080;
    v11 = "FCCKContentDatabase.m";
    v12 = 1024;
    v13 = 29;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKContentDatabase init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCCKContentDatabase)initWithContainerIdentifier:(id)identifier productionEnvironment:(BOOL)environment networkBehaviorMonitor:(id)monitor networkReachability:(id)reachability configurationManager:(id)manager
{
  identifierCopy = identifier;
  monitorCopy = monitor;
  reachabilityCopy = reachability;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = FCCKContentDatabase;
  v16 = [(FCCKContentDatabase *)&v20 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    containerIdentifier = v16->_containerIdentifier;
    v16->_containerIdentifier = v17;

    v16->_isProductionEnvironment = environment;
    objc_storeStrong(&v16->_networkBehaviorMonitor, monitor);
    objc_storeStrong(&v16->_networkReachability, reachability);
    objc_storeStrong(&v16->_configurationManager, manager);
  }

  return v16;
}

- (BOOL)shouldBypassCDNForCKAssetURLs
{
  if (qword_1EDB271D0 != -1)
  {
    dispatch_once(&qword_1EDB271D0, &__block_literal_global_52);
  }

  return _MergedGlobals_153;
}

void __52__FCCKContentDatabase_shouldBypassCDNForCKAssetURLs__block_invoke()
{
  v0 = NewsCoreUserDefaults();
  _MergedGlobals_153 = [v0 BOOLForKey:@"replace_cdn_with_cvws"];
}

- (NSURL)baseURLForOrderFeed
{
  configurationManager = [(FCCKContentDatabase *)self configurationManager];
  configuration = [configurationManager configuration];
  v4 = [FCBaseURLConfiguration ckOrderFeedBaseURLForConfiguration:configuration];

  return v4;
}

- (NSURL)baseURLForMultiFetch
{
  configurationManager = [(FCCKContentDatabase *)self configurationManager];
  configuration = [configurationManager configuration];
  v4 = [FCBaseURLConfiguration ckMultiFetchBaseURLForConfiguration:configuration];

  return v4;
}

- (NSURL)baseURLForEdgeCachedOrderFeed
{
  configurationManager = [(FCCKContentDatabase *)self configurationManager];
  configuration = [configurationManager configuration];
  v4 = [FCBaseURLConfiguration ckEdgeCachedOrderFeedBaseURLForConfiguration:configuration];

  return v4;
}

- (void)addOperation:(id)operation
{
  v18 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCCKContentDatabase addOperation:]";
    v12 = 2080;
    v13 = "FCCKContentDatabase.m";
    v14 = 1024;
    v15 = 92;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCCKContentDatabase addOperation:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)permanentURLForRecordID:(id)d field:(int64_t)field
{
  dCopy = d;
  shouldUseSecureConnectionForCKAssetURLs = [(FCCKContentDatabase *)self shouldUseSecureConnectionForCKAssetURLs];
  containerIdentifier = [(FCCKContentDatabase *)self containerIdentifier];
  v9 = FCPermanentURLForRecordID(dCopy, field, containerIdentifier, shouldUseSecureConnectionForCKAssetURLs);

  return v9;
}

- (id)permanentURLForRecordID:(id)d field:(int64_t)field useSecureConnection:(BOOL)connection
{
  connectionCopy = connection;
  dCopy = d;
  containerIdentifier = [(FCCKContentDatabase *)self containerIdentifier];
  v10 = FCPermanentURLForRecordID(dCopy, field, containerIdentifier, connectionCopy);

  return v10;
}

- (id)generateURLForResourceID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "resourceID != nil"];
    *buf = 136315906;
    v10 = "[FCCKContentDatabase generateURLForResourceID:]";
    v11 = 2080;
    v12 = "FCCKContentDatabase.m";
    v13 = 1024;
    v14 = 113;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCCKContentDatabase *)self permanentURLForRecordID:dCopy field:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end