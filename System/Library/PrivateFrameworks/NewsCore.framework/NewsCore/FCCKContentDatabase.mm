@interface FCCKContentDatabase
- (BOOL)shouldBypassCDNForCKAssetURLs;
- (FCCKContentDatabase)init;
- (FCCKContentDatabase)initWithContainerIdentifier:(id)a3 productionEnvironment:(BOOL)a4 networkBehaviorMonitor:(id)a5 networkReachability:(id)a6 configurationManager:(id)a7;
- (NSURL)baseURLForEdgeCachedMultiFetch;
- (NSURL)baseURLForEdgeCachedOrderFeed;
- (NSURL)baseURLForMultiFetch;
- (NSURL)baseURLForOrderFeed;
- (NSURL)baseURLForRecordFetch;
- (id)generateURLForResourceID:(id)a3;
- (id)permanentURLForRecordID:(id)a3 field:(int64_t)a4;
- (id)permanentURLForRecordID:(id)a3 field:(int64_t)a4 useSecureConnection:(BOOL)a5;
- (void)addOperation:(id)a3;
@end

@implementation FCCKContentDatabase

- (NSURL)baseURLForRecordFetch
{
  v2 = [(FCCKContentDatabase *)self configurationManager];
  v3 = [v2 configuration];
  v4 = [FCBaseURLConfiguration ckRecordFetchBaseURLForConfiguration:v3];

  return v4;
}

- (NSURL)baseURLForEdgeCachedMultiFetch
{
  v2 = [(FCCKContentDatabase *)self configurationManager];
  v3 = [v2 configuration];
  v4 = [FCBaseURLConfiguration ckEdgeCachedMultiFetchBaseURLForConfiguration:v3];

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

- (FCCKContentDatabase)initWithContainerIdentifier:(id)a3 productionEnvironment:(BOOL)a4 networkBehaviorMonitor:(id)a5 networkReachability:(id)a6 configurationManager:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = FCCKContentDatabase;
  v16 = [(FCCKContentDatabase *)&v20 init];
  if (v16)
  {
    v17 = [v12 copy];
    containerIdentifier = v16->_containerIdentifier;
    v16->_containerIdentifier = v17;

    v16->_isProductionEnvironment = a4;
    objc_storeStrong(&v16->_networkBehaviorMonitor, a5);
    objc_storeStrong(&v16->_networkReachability, a6);
    objc_storeStrong(&v16->_configurationManager, a7);
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
  v2 = [(FCCKContentDatabase *)self configurationManager];
  v3 = [v2 configuration];
  v4 = [FCBaseURLConfiguration ckOrderFeedBaseURLForConfiguration:v3];

  return v4;
}

- (NSURL)baseURLForMultiFetch
{
  v2 = [(FCCKContentDatabase *)self configurationManager];
  v3 = [v2 configuration];
  v4 = [FCBaseURLConfiguration ckMultiFetchBaseURLForConfiguration:v3];

  return v4;
}

- (NSURL)baseURLForEdgeCachedOrderFeed
{
  v2 = [(FCCKContentDatabase *)self configurationManager];
  v3 = [v2 configuration];
  v4 = [FCBaseURLConfiguration ckEdgeCachedOrderFeedBaseURLForConfiguration:v3];

  return v4;
}

- (void)addOperation:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
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

- (id)permanentURLForRecordID:(id)a3 field:(int64_t)a4
{
  v6 = a3;
  v7 = [(FCCKContentDatabase *)self shouldUseSecureConnectionForCKAssetURLs];
  v8 = [(FCCKContentDatabase *)self containerIdentifier];
  v9 = FCPermanentURLForRecordID(v6, a4, v8, v7);

  return v9;
}

- (id)permanentURLForRecordID:(id)a3 field:(int64_t)a4 useSecureConnection:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(FCCKContentDatabase *)self containerIdentifier];
  v10 = FCPermanentURLForRecordID(v8, a4, v9, v5);

  return v10;
}

- (id)generateURLForResourceID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v5 = [(FCCKContentDatabase *)self permanentURLForRecordID:v4 field:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end