@interface MIHelperServiceFrameworkClient
+ (id)sharedInstance;
- (BOOL)purgeInstallCoordinationPromiseStagingDirectoryForUUID:(id)d keepStagingDirectory:(BOOL)directory error:(id *)error;
- (BOOL)removeDeveloperAppAtURL:(id)l error:(id *)error;
- (BOOL)removeMacAppWithBundleID:(id)d atURL:(id)l error:(id *)error;
- (BOOL)setTestModeForIdentifierPrefix:(id)prefix testMode:(unint64_t)mode error:(id *)error;
- (BOOL)setTestModeForIdentifierPrefix:(id)prefix testMode:(unint64_t)mode validationData:(id)data error:(id *)error;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (id)_sharedConnection;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)allStagingLocationsWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)createWrappedAppForInstalledBundleIdentifier:(id)identifier containerURL:(id)l atTargetURL:(id)rL installationRecords:(id)records onBehalfOf:(id *)of error:(id *)error;
- (id)createWrappedAppForInstalledBundleIdentifier:(id)identifier containerURL:(id)l inTargetDirectory:(id)directory installationRecords:(id)records bundleDirectoryName:(id)name onBehalfOf:(id *)of error:(id *)error;
- (id)installMacDeveloperAppAtURL:(id)l toURL:(id)rL targetURLType:(unint64_t)type error:(id *)error;
- (id)stagingLocationForInstallLocation:(id)location withinStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error;
- (id)stagingLocationForSystemContentWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)stagingLocationForURL:(id)l withinStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error;
- (id)stagingLocationForUserContentWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)updateWrappedAppAt:(id)at forInstalledBundleIdentifier:(id)identifier containerURL:(id)l installationRecords:(id)records onBehalfOf:(id *)of error:(id *)error;
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
  block[4] = self;
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
  xpcConnection = [(MIHelperServiceFrameworkClient *)obj xpcConnection];
  [xpcConnection invalidate];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcConnection = [(MIHelperServiceFrameworkClient *)selfCopy xpcConnection];

  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MobileInstallationHelperService"];
    [(MIHelperServiceFrameworkClient *)selfCopy setXpcConnection:v4];

    xpcConnection2 = [(MIHelperServiceFrameworkClient *)selfCopy xpcConnection];

    if (!xpcConnection2)
    {
      goto LABEL_5;
    }

    v6 = MobileInstallationHelperServiceProtocolInterface();
    xpcConnection3 = [(MIHelperServiceFrameworkClient *)selfCopy xpcConnection];
    [xpcConnection3 setRemoteObjectInterface:v6];

    objc_initWeak(&location, selfCopy);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__MIHelperServiceFrameworkClient__sharedConnection__block_invoke;
    v14[3] = &unk_1E80B9D60;
    objc_copyWeak(&v15, &location);
    xpcConnection4 = [(MIHelperServiceFrameworkClient *)selfCopy xpcConnection];
    [xpcConnection4 setInterruptionHandler:v14];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__MIHelperServiceFrameworkClient__sharedConnection__block_invoke_2;
    v12[3] = &unk_1E80B9D60;
    objc_copyWeak(&v13, &location);
    xpcConnection5 = [(MIHelperServiceFrameworkClient *)selfCopy xpcConnection];
    [xpcConnection5 setInvalidationHandler:v12];

    xpcConnection6 = [(MIHelperServiceFrameworkClient *)selfCopy xpcConnection];
    [xpcConnection6 resume];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  xpcConnection2 = [(MIHelperServiceFrameworkClient *)selfCopy xpcConnection];
LABEL_5:
  objc_sync_exit(selfCopy);

  return xpcConnection2;
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

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _sharedConnection = [(MIHelperServiceFrameworkClient *)self _sharedConnection];
  v7 = _sharedConnection;
  if (_sharedConnection)
  {
    v8 = [_sharedConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient _remoteObjectProxyWithErrorHandler:]", 83, *MEMORY[0x1E69A8D00], 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    handlerCopy[2](handlerCopy, v9);

    v8 = 0;
  }

  return v8;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _sharedConnection = [(MIHelperServiceFrameworkClient *)self _sharedConnection];
  v7 = _sharedConnection;
  if (_sharedConnection)
  {
    v8 = [_sharedConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient _synchronousRemoteObjectProxyWithErrorHandler:]", 94, *MEMORY[0x1E69A8D00], 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    handlerCopy[2](handlerCopy, v9);

    v8 = 0;
  }

  return v8;
}

- (BOOL)purgeInstallCoordinationPromiseStagingDirectoryForUUID:(id)d keepStagingDirectory:(BOOL)directory error:(id *)error
{
  v7 = _CreateAndLogError("[MIHelperServiceFrameworkClient purgeInstallCoordinationPromiseStagingDirectoryForUUID:keepStagingDirectory:error:]", 122, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", v5, "[MIHelperServiceFrameworkClient purgeInstallCoordinationPromiseStagingDirectoryForUUID:keepStagingDirectory:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (id)createWrappedAppForInstalledBundleIdentifier:(id)identifier containerURL:(id)l inTargetDirectory:(id)directory installationRecords:(id)records bundleDirectoryName:(id)name onBehalfOf:(id *)of error:(id *)error
{
  v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient createWrappedAppForInstalledBundleIdentifier:containerURL:inTargetDirectory:installationRecords:bundleDirectoryName:onBehalfOf:error:]", 151, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", of, "[MIHelperServiceFrameworkClient createWrappedAppForInstalledBundleIdentifier:containerURL:inTargetDirectory:installationRecords:bundleDirectoryName:onBehalfOf:error:]");
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  return 0;
}

- (id)createWrappedAppForInstalledBundleIdentifier:(id)identifier containerURL:(id)l atTargetURL:(id)rL installationRecords:(id)records onBehalfOf:(id *)of error:(id *)error
{
  v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient createWrappedAppForInstalledBundleIdentifier:containerURL:atTargetURL:installationRecords:onBehalfOf:error:]", 180, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", error, "[MIHelperServiceFrameworkClient createWrappedAppForInstalledBundleIdentifier:containerURL:atTargetURL:installationRecords:onBehalfOf:error:]");
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  return 0;
}

- (id)updateWrappedAppAt:(id)at forInstalledBundleIdentifier:(id)identifier containerURL:(id)l installationRecords:(id)records onBehalfOf:(id *)of error:(id *)error
{
  v9 = _CreateAndLogError("[MIHelperServiceFrameworkClient updateWrappedAppAt:forInstalledBundleIdentifier:containerURL:installationRecords:onBehalfOf:error:]", 209, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", error, "[MIHelperServiceFrameworkClient updateWrappedAppAt:forInstalledBundleIdentifier:containerURL:installationRecords:onBehalfOf:error:]");
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  return 0;
}

- (BOOL)removeMacAppWithBundleID:(id)d atURL:(id)l error:(id *)error
{
  v7 = _CreateAndLogError("[MIHelperServiceFrameworkClient removeMacAppWithBundleID:atURL:error:]", 233, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", v5, "[MIHelperServiceFrameworkClient removeMacAppWithBundleID:atURL:error:]");
  if (error && v7)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (id)installMacDeveloperAppAtURL:(id)l toURL:(id)rL targetURLType:(unint64_t)type error:(id *)error
{
  v8 = _CreateAndLogError("[MIHelperServiceFrameworkClient installMacDeveloperAppAtURL:toURL:targetURLType:error:]", 257, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", v6, "[MIHelperServiceFrameworkClient installMacDeveloperAppAtURL:toURL:targetURLType:error:]");
  if (error)
  {
    v8 = v8;
    *error = v8;
  }

  return 0;
}

- (BOOL)removeDeveloperAppAtURL:(id)l error:(id *)error
{
  v6 = _CreateAndLogError("[MIHelperServiceFrameworkClient removeDeveloperAppAtURL:error:]", 281, *MEMORY[0x1E69A8D00], 4, 0, 0, @"%s is not available on this platform!", v4, "[MIHelperServiceFrameworkClient removeDeveloperAppAtURL:error:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (id)stagingLocationForSystemContentWithinSubsystem:(unint64_t)subsystem error:(id *)error
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
  [v6 stagingLocationForSystemContentWithinSubsystem:subsystem completion:v10];

  v7 = v19[5];
  if (error && !v7)
  {
    *error = v13[5];
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

- (id)stagingLocationForUserContentWithinSubsystem:(unint64_t)subsystem error:(id *)error
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
  [v6 stagingLocationForUserContentWithinSubsystem:subsystem completion:v10];

  v7 = v19[5];
  if (error && !v7)
  {
    *error = v13[5];
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

- (id)allStagingLocationsWithinSubsystem:(unint64_t)subsystem error:(id *)error
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
  [v6 allStagingLocationsWithinSubsystem:subsystem completion:v10];

  v7 = v19[5];
  if (error && !v7)
  {
    *error = v13[5];
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

- (id)stagingLocationForURL:(id)l withinStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error
{
  lCopy = l;
  nameCopy = name;
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
  [v12 stagingLocationForURL:lCopy withinStagingSubsytem:subsytem usingUniqueName:nameCopy completion:v16];

  v13 = v25[5];
  if (error && !v13)
  {
    *error = v19[5];
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

- (id)stagingLocationForInstallLocation:(id)location withinStagingSubsytem:(unint64_t)subsytem usingUniqueName:(id)name error:(id *)error
{
  locationCopy = location;
  nameCopy = name;
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
  [v12 stagingLocationForInstallLocation:locationCopy withinStagingSubsytem:subsytem usingUniqueName:nameCopy completion:v16];

  v13 = v25[5];
  if (error && !v13)
  {
    *error = v19[5];
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

- (BOOL)setTestModeForIdentifierPrefix:(id)prefix testMode:(unint64_t)mode validationData:(id)data error:(id *)error
{
  prefixCopy = prefix;
  dataCopy = data;
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
    if (error)
    {
      v15 = v14;
      *error = v14;
    }
  }

  else
  {
    [v12 setTestModeForIdentifierPrefix:prefixCopy testMode:mode validationData:dataCopy];
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

- (BOOL)setTestModeForIdentifierPrefix:(id)prefix testMode:(unint64_t)mode error:(id *)error
{
  prefixCopy = prefix;
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
    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  else
  {
    [v9 setTestModeForIdentifierPrefix:prefixCopy testMode:mode validationData:0];
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