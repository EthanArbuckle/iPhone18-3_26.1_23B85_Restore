@interface MIHelperServiceFrameworkClient
+ (id)sharedInstance;
- (BOOL)purgeInstallCoordinationPromiseStagingDirectoryForUUID:(id)a3 keepStagingDirectory:(BOOL)a4 error:(id *)a5;
- (BOOL)removeDeveloperAppAtURL:(id)a3 error:(id *)a4;
- (BOOL)removeMacAppWithBundleID:(id)a3 atURL:(id)a4 error:(id *)a5;
- (BOOL)setTestModeForIdentifierPrefix:(id)a3 testMode:(unint64_t)a4 error:(id *)a5;
- (BOOL)setTestModeForIdentifierPrefix:(id)a3 testMode:(unint64_t)a4 validationData:(id)a5 error:(id *)a6;
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (id)_sharedConnection;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)allStagingLocationsWithinSubsystem:(unint64_t)a3 error:(id *)a4;
- (id)createWrappedAppForInstalledBundleIdentifier:(id)a3 containerURL:(id)a4 atTargetURL:(id)a5 installationRecords:(id)a6 onBehalfOf:(id *)a7 error:(id *)a8;
- (id)createWrappedAppForInstalledBundleIdentifier:(id)a3 containerURL:(id)a4 inTargetDirectory:(id)a5 installationRecords:(id)a6 bundleDirectoryName:(id)a7 onBehalfOf:(id *)a8 error:(id *)a9;
- (id)installMacDeveloperAppAtURL:(id)a3 toURL:(id)a4 targetURLType:(unint64_t)a5 error:(id *)a6;
- (id)stagingLocationForInstallLocation:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 error:(id *)a6;
- (id)stagingLocationForSystemContentWithinSubsystem:(unint64_t)a3 error:(id *)a4;
- (id)stagingLocationForURL:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 error:(id *)a6;
- (id)stagingLocationForUserContentWithinSubsystem:(unint64_t)a3 error:(id *)a4;
- (id)updateWrappedAppAt:(id)a3 forInstalledBundleIdentifier:(id)a4 containerURL:(id)a5 installationRecords:(id)a6 onBehalfOf:(id *)a7 error:(id *)a8;
- (void)_invalidateObject;
- (void)dealloc;
@end

@implementation MIHelperServiceFrameworkClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MIHelperServiceFrameworkClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __48__MIHelperServiceFrameworkClient_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (void)_invalidateObject
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MIHelperServiceFrameworkClient *)obj xpcConnection];
  [v2 invalidate];

  [(MIHelperServiceFrameworkClient *)obj setXpcConnection:0];
  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(MIHelperServiceFrameworkClient *)self _invalidateObject];
  v3.receiver = self;
  v3.super_class = MIHelperServiceFrameworkClient;
  [(MIHelperServiceFrameworkClient *)&v3 dealloc];
}

- (id)_sharedConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MIHelperServiceFrameworkClient *)v2 xpcConnection];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MobileInstallationHelperService"];
    [(MIHelperServiceFrameworkClient *)v2 setXpcConnection:v4];

    v5 = [(MIHelperServiceFrameworkClient *)v2 xpcConnection];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = MobileInstallationHelperServiceProtocolInterface();
    v7 = [(MIHelperServiceFrameworkClient *)v2 xpcConnection];
    [v7 setRemoteObjectInterface:v6];

    objc_initWeak(&location, v2);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__MIHelperServiceFrameworkClient__sharedConnection__block_invoke;
    v14[3] = &unk_1E80B9D60;
    objc_copyWeak(&v15, &location);
    v8 = [(MIHelperServiceFrameworkClient *)v2 xpcConnection];
    [v8 setInterruptionHandler:v14];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__MIHelperServiceFrameworkClient__sharedConnection__block_invoke_2;
    v12[3] = &unk_1E80B9D60;
    objc_copyWeak(&v13, &location);
    v9 = [(MIHelperServiceFrameworkClient *)v2 xpcConnection];
    [v9 setInvalidationHandler:v12];

    v10 = [(MIHelperServiceFrameworkClient *)v2 xpcConnection];
    [v10 resume];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v5 = [(MIHelperServiceFrameworkClient *)v2 xpcConnection];
LABEL_5:
  objc_sync_exit(v2);

  return v5;
}

void __51__MIHelperServiceFrameworkClient__sharedConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateObject];
}

void __51__MIHelperServiceFrameworkClient__sharedConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateObject];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(MIHelperServiceFrameworkClient *)self _sharedConnection];
  v7 = v5;
  if (v5)
  {
    v8 = [v5 remoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient _remoteObjectProxyWithErrorHandler:]", 83, *MEMORY[0x1E69A8D00], 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    v4[2](v4, v9);

    v8 = 0;
  }

  return v8;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(MIHelperServiceFrameworkClient *)self _sharedConnection];
  v7 = v5;
  if (v5)
  {
    v8 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient _synchronousRemoteObjectProxyWithErrorHandler:]", 94, *MEMORY[0x1E69A8D00], 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    v4[2](v4, v9);

    v8 = 0;
  }

  return v8;
}

- (BOOL)purgeInstallCoordinationPromiseStagingDirectoryForUUID:(id)a3 keepStagingDirectory:(BOOL)a4 error:(id *)a5
{
  v7 = _CreateAndLogError("[MIHelperServiceFrameworkClient purgeInstallCoordinationPromiseStagingDirectoryForUUID:keepStagingDirectory:error:]", 122, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", v5, "[MIHelperServiceFrameworkClient purgeInstallCoordinationPromiseStagingDirectoryForUUID:keepStagingDirectory:error:]");
  if (a5)
  {
    v7 = v7;
    *a5 = v7;
  }

  return 0;
}

- (id)createWrappedAppForInstalledBundleIdentifier:(id)a3 containerURL:(id)a4 inTargetDirectory:(id)a5 installationRecords:(id)a6 bundleDirectoryName:(id)a7 onBehalfOf:(id *)a8 error:(id *)a9
{
  v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient createWrappedAppForInstalledBundleIdentifier:containerURL:inTargetDirectory:installationRecords:bundleDirectoryName:onBehalfOf:error:]", 151, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", a8, "[MIHelperServiceFrameworkClient createWrappedAppForInstalledBundleIdentifier:containerURL:inTargetDirectory:installationRecords:bundleDirectoryName:onBehalfOf:error:]");
  if (a9)
  {
    v9 = v9;
    *a9 = v9;
  }

  return 0;
}

- (id)createWrappedAppForInstalledBundleIdentifier:(id)a3 containerURL:(id)a4 atTargetURL:(id)a5 installationRecords:(id)a6 onBehalfOf:(id *)a7 error:(id *)a8
{
  v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient createWrappedAppForInstalledBundleIdentifier:containerURL:atTargetURL:installationRecords:onBehalfOf:error:]", 180, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", a8, "[MIHelperServiceFrameworkClient createWrappedAppForInstalledBundleIdentifier:containerURL:atTargetURL:installationRecords:onBehalfOf:error:]");
  if (a8)
  {
    v9 = v9;
    *a8 = v9;
  }

  return 0;
}

- (id)updateWrappedAppAt:(id)a3 forInstalledBundleIdentifier:(id)a4 containerURL:(id)a5 installationRecords:(id)a6 onBehalfOf:(id *)a7 error:(id *)a8
{
  v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient updateWrappedAppAt:forInstalledBundleIdentifier:containerURL:installationRecords:onBehalfOf:error:]", 209, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", a8, "[MIHelperServiceFrameworkClient updateWrappedAppAt:forInstalledBundleIdentifier:containerURL:installationRecords:onBehalfOf:error:]");
  if (a8)
  {
    v9 = v9;
    *a8 = v9;
  }

  return 0;
}

- (BOOL)removeMacAppWithBundleID:(id)a3 atURL:(id)a4 error:(id *)a5
{
  v7 = _CreateAndLogError("[MIHelperServiceFrameworkClient removeMacAppWithBundleID:atURL:error:]", 233, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", v5, "[MIHelperServiceFrameworkClient removeMacAppWithBundleID:atURL:error:]");
  if (a5 && v7)
  {
    v7 = v7;
    *a5 = v7;
  }

  return 0;
}

- (id)installMacDeveloperAppAtURL:(id)a3 toURL:(id)a4 targetURLType:(unint64_t)a5 error:(id *)a6
{
  v8 = _CreateAndLogError("[MIHelperServiceFrameworkClient installMacDeveloperAppAtURL:toURL:targetURLType:error:]", 257, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", v6, "[MIHelperServiceFrameworkClient installMacDeveloperAppAtURL:toURL:targetURLType:error:]");
  if (a6)
  {
    v8 = v8;
    *a6 = v8;
  }

  return 0;
}

- (BOOL)removeDeveloperAppAtURL:(id)a3 error:(id *)a4
{
  v6 = _CreateAndLogError("[MIHelperServiceFrameworkClient removeDeveloperAppAtURL:error:]", 281, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", v4, "[MIHelperServiceFrameworkClient removeDeveloperAppAtURL:error:]");
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return 0;
}

- (id)stagingLocationForSystemContentWithinSubsystem:(unint64_t)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__MIHelperServiceFrameworkClient_stagingLocationForSystemContentWithinSubsystem_error___block_invoke;
  v11[3] = &unk_1E80B9D88;
  v11[4] = &v12;
  v6 = [(MIHelperServiceFrameworkClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__MIHelperServiceFrameworkClient_stagingLocationForSystemContentWithinSubsystem_error___block_invoke_2;
  v10[3] = &unk_1E80B9DB0;
  v10[4] = &v12;
  v10[5] = &v18;
  [v6 stagingLocationForSystemContentWithinSubsystem:a3 completion:v10];

  v7 = v19[5];
  if (a4 && !v7)
  {
    *a4 = v13[5];
    v7 = v19[5];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __87__MIHelperServiceFrameworkClient_stagingLocationForSystemContentWithinSubsystem_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __87__MIHelperServiceFrameworkClient_stagingLocationForSystemContentWithinSubsystem_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)stagingLocationForUserContentWithinSubsystem:(unint64_t)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__MIHelperServiceFrameworkClient_stagingLocationForUserContentWithinSubsystem_error___block_invoke;
  v11[3] = &unk_1E80B9D88;
  v11[4] = &v12;
  v6 = [(MIHelperServiceFrameworkClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__MIHelperServiceFrameworkClient_stagingLocationForUserContentWithinSubsystem_error___block_invoke_2;
  v10[3] = &unk_1E80B9DB0;
  v10[4] = &v12;
  v10[5] = &v18;
  [v6 stagingLocationForUserContentWithinSubsystem:a3 completion:v10];

  v7 = v19[5];
  if (a4 && !v7)
  {
    *a4 = v13[5];
    v7 = v19[5];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __85__MIHelperServiceFrameworkClient_stagingLocationForUserContentWithinSubsystem_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __85__MIHelperServiceFrameworkClient_stagingLocationForUserContentWithinSubsystem_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)allStagingLocationsWithinSubsystem:(unint64_t)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__MIHelperServiceFrameworkClient_allStagingLocationsWithinSubsystem_error___block_invoke;
  v11[3] = &unk_1E80B9D88;
  v11[4] = &v12;
  v6 = [(MIHelperServiceFrameworkClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__MIHelperServiceFrameworkClient_allStagingLocationsWithinSubsystem_error___block_invoke_2;
  v10[3] = &unk_1E80B9DD8;
  v10[4] = &v12;
  v10[5] = &v18;
  [v6 allStagingLocationsWithinSubsystem:a3 completion:v10];

  v7 = v19[5];
  if (a4 && !v7)
  {
    *a4 = v13[5];
    v7 = v19[5];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __75__MIHelperServiceFrameworkClient_allStagingLocationsWithinSubsystem_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __75__MIHelperServiceFrameworkClient_allStagingLocationsWithinSubsystem_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)stagingLocationForURL:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__MIHelperServiceFrameworkClient_stagingLocationForURL_withinStagingSubsytem_usingUniqueName_error___block_invoke;
  v17[3] = &unk_1E80B9D88;
  v17[4] = &v18;
  v12 = [(MIHelperServiceFrameworkClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__MIHelperServiceFrameworkClient_stagingLocationForURL_withinStagingSubsytem_usingUniqueName_error___block_invoke_2;
  v16[3] = &unk_1E80B9DB0;
  v16[4] = &v18;
  v16[5] = &v24;
  [v12 stagingLocationForURL:v10 withinStagingSubsytem:a4 usingUniqueName:v11 completion:v16];

  v13 = v25[5];
  if (a6 && !v13)
  {
    *a6 = v19[5];
    v13 = v25[5];
  }

  v14 = v13;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __100__MIHelperServiceFrameworkClient_stagingLocationForURL_withinStagingSubsytem_usingUniqueName_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __100__MIHelperServiceFrameworkClient_stagingLocationForURL_withinStagingSubsytem_usingUniqueName_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)stagingLocationForInstallLocation:(id)a3 withinStagingSubsytem:(unint64_t)a4 usingUniqueName:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__MIHelperServiceFrameworkClient_stagingLocationForInstallLocation_withinStagingSubsytem_usingUniqueName_error___block_invoke;
  v17[3] = &unk_1E80B9D88;
  v17[4] = &v18;
  v12 = [(MIHelperServiceFrameworkClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__MIHelperServiceFrameworkClient_stagingLocationForInstallLocation_withinStagingSubsytem_usingUniqueName_error___block_invoke_2;
  v16[3] = &unk_1E80B9DB0;
  v16[4] = &v18;
  v16[5] = &v24;
  [v12 stagingLocationForInstallLocation:v10 withinStagingSubsytem:a4 usingUniqueName:v11 completion:v16];

  v13 = v25[5];
  if (a6 && !v13)
  {
    *a6 = v19[5];
    v13 = v25[5];
  }

  v14 = v13;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __112__MIHelperServiceFrameworkClient_stagingLocationForInstallLocation_withinStagingSubsytem_usingUniqueName_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __112__MIHelperServiceFrameworkClient_stagingLocationForInstallLocation_withinStagingSubsytem_usingUniqueName_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __58__MIHelperServiceFrameworkClient_setTestingEnabled_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)setTestModeForIdentifierPrefix:(id)a3 testMode:(unint64_t)a4 validationData:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__MIHelperServiceFrameworkClient_setTestModeForIdentifierPrefix_testMode_validationData_error___block_invoke;
  v17[3] = &unk_1E80B9D88;
  v17[4] = &v18;
  v12 = [(MIHelperServiceFrameworkClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v17];
  v13 = v12;
  v14 = v19[5];
  if (v14)
  {
    if (a6)
    {
      v15 = v14;
      *a6 = v14;
    }
  }

  else
  {
    [v12 setTestModeForIdentifierPrefix:v10 testMode:a4 validationData:v11];
  }

  _Block_object_dispose(&v18, 8);
  return v14 == 0;
}

void __95__MIHelperServiceFrameworkClient_setTestModeForIdentifierPrefix_testMode_validationData_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)setTestModeForIdentifierPrefix:(id)a3 testMode:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__MIHelperServiceFrameworkClient_setTestModeForIdentifierPrefix_testMode_error___block_invoke;
  v14[3] = &unk_1E80B9D88;
  v14[4] = &v15;
  v9 = [(MIHelperServiceFrameworkClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v14];
  v10 = v9;
  v11 = v16[5];
  if (v11)
  {
    if (a5)
    {
      v12 = v11;
      *a5 = v11;
    }
  }

  else
  {
    [v9 setTestModeForIdentifierPrefix:v8 testMode:a4 validationData:0];
  }

  _Block_object_dispose(&v15, 8);
  return v11 == 0;
}

void __80__MIHelperServiceFrameworkClient_setTestModeForIdentifierPrefix_testMode_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end