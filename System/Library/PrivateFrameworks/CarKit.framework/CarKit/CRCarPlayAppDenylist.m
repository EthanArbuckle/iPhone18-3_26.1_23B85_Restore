@interface CRCarPlayAppDenylist
- (BOOL)containsBundleIdentifier:(id)a3;
- (CRCarPlayAppDenylist)init;
- (id)_denylistPreference;
- (void)_requestDenylistUpdate;
- (void)_setupConnection;
- (void)dealloc;
@end

@implementation CRCarPlayAppDenylist

- (CRCarPlayAppDenylist)init
{
  v9.receiver = self;
  v9.super_class = CRCarPlayAppDenylist;
  v2 = [(CRCarPlayAppDenylist *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(CRCarPlayAppDenylist *)v2 _setupConnection];
    v4 = MEMORY[0x1E695DFD8];
    v5 = [(CRCarPlayAppDenylist *)v3 _denylistPreference];
    v6 = [v4 setWithArray:v5];
    denylistedBundleIDs = v3->_denylistedBundleIDs;
    v3->_denylistedBundleIDs = v6;

    [(CRCarPlayAppDenylist *)v3 _requestDenylistUpdate];
  }

  return v3;
}

- (void)_setupConnection
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48038E8];
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.app.service" options:4096];
  [v4 setRemoteObjectInterface:v3];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Connecting to app denylist service.", v6, 2u);
  }

  [v4 resume];
  [(CRCarPlayAppDenylist *)self setConnection:v4];
}

- (void)dealloc
{
  v3 = [(CRCarPlayAppDenylist *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CRCarPlayAppDenylist;
  [(CRCarPlayAppDenylist *)&v4 dealloc];
}

- (id)_denylistPreference
{
  v2 = CFPreferencesCopyAppValue(CRCarPlayAppDenylistPreferenceKey, CRPreferencesNotMigratedDomain);

  return v2;
}

- (BOOL)containsBundleIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CRCarPlayAppDenylist *)self denylistedBundleIDs];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "app %@ is CarPlay denylisted", &v9, 0xCu);
    }
  }

  return v6;
}

- (void)_requestDenylistUpdate
{
  v2 = [(CRCarPlayAppDenylist *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_5];

  [v3 requestDenylistUpdate];
}

void __46__CRCarPlayAppDenylist__requestDenylistUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__CRCarPlayAppDenylist__requestDenylistUpdate__block_invoke_cold_1(v2, v3);
  }
}

void __46__CRCarPlayAppDenylist__requestDenylistUpdate__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "CarPlay denylist service error: %@", &v2, 0xCu);
}

@end