@interface ICLHelperServiceClient
+ (id)sharedInstance;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (id)_sharedConnection;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)resolveStagingBaseWithSandboxExtension:(id *)extension forVolumeUUID:(id)d withinStagingSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)stagingURLWithSandboxExtension:(id *)extension forSystemContentWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)stagingURLWithSandboxExtension:(id *)extension forUserContentWithinSubsystem:(unint64_t)subsystem error:(id *)error;
- (id)volumeUUIDForURL:(id)l error:(id *)error;
- (void)_invalidateObject;
- (void)dealloc;
@end

@implementation ICLHelperServiceClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__ICLHelperServiceClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __40__ICLHelperServiceClient_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (void)_invalidateObject
{
  obj = self;
  objc_sync_enter(obj);
  xpcConnection = [(ICLHelperServiceClient *)obj xpcConnection];
  [xpcConnection invalidate];

  [(ICLHelperServiceClient *)obj setXpcConnection:0];
  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(ICLHelperServiceClient *)self _invalidateObject];
  v3.receiver = self;
  v3.super_class = ICLHelperServiceClient;
  [(ICLHelperServiceClient *)&v3 dealloc];
}

- (id)_sharedConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcConnection = [(ICLHelperServiceClient *)selfCopy xpcConnection];

  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MobileInstallationHelperService"];
    [(ICLHelperServiceClient *)selfCopy setXpcConnection:v4];

    xpcConnection2 = [(ICLHelperServiceClient *)selfCopy xpcConnection];

    if (!xpcConnection2)
    {
      goto LABEL_5;
    }

    v6 = MobileInstallationHelperServiceProtocolInterface();
    xpcConnection3 = [(ICLHelperServiceClient *)selfCopy xpcConnection];
    [xpcConnection3 setRemoteObjectInterface:v6];

    objc_initWeak(&location, selfCopy);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __43__ICLHelperServiceClient__sharedConnection__block_invoke;
    v14[3] = &unk_1E7AE2450;
    objc_copyWeak(&v15, &location);
    xpcConnection4 = [(ICLHelperServiceClient *)selfCopy xpcConnection];
    [xpcConnection4 setInterruptionHandler:v14];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__ICLHelperServiceClient__sharedConnection__block_invoke_2;
    v12[3] = &unk_1E7AE2450;
    objc_copyWeak(&v13, &location);
    xpcConnection5 = [(ICLHelperServiceClient *)selfCopy xpcConnection];
    [xpcConnection5 setInvalidationHandler:v12];

    xpcConnection6 = [(ICLHelperServiceClient *)selfCopy xpcConnection];
    [xpcConnection6 resume];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  xpcConnection2 = [(ICLHelperServiceClient *)selfCopy xpcConnection];
LABEL_5:
  objc_sync_exit(selfCopy);

  return xpcConnection2;
}

void __43__ICLHelperServiceClient__sharedConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateObject];
}

void __43__ICLHelperServiceClient__sharedConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateObject];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _sharedConnection = [(ICLHelperServiceClient *)self _sharedConnection];
  v7 = _sharedConnection;
  if (_sharedConnection)
  {
    v8 = [_sharedConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = _CreateAndLogError("[ICLHelperServiceClient _remoteObjectProxyWithErrorHandler:]", 89, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    handlerCopy[2](handlerCopy, v9);

    v8 = 0;
  }

  return v8;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _sharedConnection = [(ICLHelperServiceClient *)self _sharedConnection];
  v7 = _sharedConnection;
  if (_sharedConnection)
  {
    v8 = [_sharedConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v9 = _CreateAndLogError("[ICLHelperServiceClient _synchronousRemoteObjectProxyWithErrorHandler:]", 100, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to get XPC connection", v6, v11);
    handlerCopy[2](handlerCopy, v9);

    v8 = 0;
  }

  return v8;
}

- (id)volumeUUIDForURL:(id)l error:(id *)error
{
  lCopy = l;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__ICLHelperServiceClient_volumeUUIDForURL_error___block_invoke;
  v12[3] = &unk_1E7AE1EB0;
  v12[4] = &v13;
  v7 = [(ICLHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__ICLHelperServiceClient_volumeUUIDForURL_error___block_invoke_2;
  v11[3] = &unk_1E7AE2478;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 volumeUUIDForURL:lCopy completion:v11];

  v8 = v20[5];
  if (error && !v8)
  {
    *error = v14[5];
    v8 = v20[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __49__ICLHelperServiceClient_volumeUUIDForURL_error___block_invoke(uint64_t a1, void *a2)
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

void __49__ICLHelperServiceClient_volumeUUIDForURL_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)resolveStagingBaseWithSandboxExtension:(id *)extension forVolumeUUID:(id)d withinStagingSubsystem:(unint64_t)subsystem error:(id *)error
{
  dCopy = d;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__12;
  v33 = __Block_byref_object_dispose__12;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__12;
  v27 = __Block_byref_object_dispose__12;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__ICLHelperServiceClient_resolveStagingBaseWithSandboxExtension_forVolumeUUID_withinStagingSubsystem_error___block_invoke;
  v16[3] = &unk_1E7AE1EB0;
  v16[4] = &v23;
  v11 = [(ICLHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__ICLHelperServiceClient_resolveStagingBaseWithSandboxExtension_forVolumeUUID_withinStagingSubsystem_error___block_invoke_2;
  v15[3] = &unk_1E7AE24A0;
  v15[4] = &v23;
  v15[5] = &v29;
  v15[6] = &v17;
  [v11 resolveStagingBaseWithSandboxExtensionForVolumeUUID:dCopy withinStagingSubsystem:subsystem completion:v15];

  v12 = v30[5];
  if (error && !v12)
  {
    *error = v24[5];
    v12 = v30[5];
  }

  if (extension && v12)
  {
    *extension = v18[5];
    v12 = v30[5];
  }

  v13 = v12;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v13;
}

void __108__ICLHelperServiceClient_resolveStagingBaseWithSandboxExtension_forVolumeUUID_withinStagingSubsystem_error___block_invoke(uint64_t a1, void *a2)
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

void __108__ICLHelperServiceClient_resolveStagingBaseWithSandboxExtension_forVolumeUUID_withinStagingSubsystem_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = 32;
    v12 = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = 48;
    v12 = v8;
  }

  v13 = *(*(a1 + v11) + 8);
  v14 = v12;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
}

- (id)stagingURLWithSandboxExtension:(id *)extension forUserContentWithinSubsystem:(unint64_t)subsystem error:(id *)error
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__12;
  v30 = __Block_byref_object_dispose__12;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__ICLHelperServiceClient_stagingURLWithSandboxExtension_forUserContentWithinSubsystem_error___block_invoke;
  v13[3] = &unk_1E7AE1EB0;
  v13[4] = &v20;
  v8 = [(ICLHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__ICLHelperServiceClient_stagingURLWithSandboxExtension_forUserContentWithinSubsystem_error___block_invoke_2;
  v12[3] = &unk_1E7AE24A0;
  v12[4] = &v20;
  v12[5] = &v26;
  v12[6] = &v14;
  [v8 stagingURLWithSandboxExtensionForUserContentWithinSubsystem:subsystem completion:v12];

  v9 = v27[5];
  if (error && !v9)
  {
    *error = v21[5];
    v9 = v27[5];
  }

  if (extension && v9)
  {
    *extension = v15[5];
    v9 = v27[5];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

void __93__ICLHelperServiceClient_stagingURLWithSandboxExtension_forUserContentWithinSubsystem_error___block_invoke(uint64_t a1, void *a2)
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

void __93__ICLHelperServiceClient_stagingURLWithSandboxExtension_forUserContentWithinSubsystem_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = 32;
    v12 = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = 48;
    v12 = v8;
  }

  v13 = *(*(a1 + v11) + 8);
  v14 = v12;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
}

- (id)stagingURLWithSandboxExtension:(id *)extension forSystemContentWithinSubsystem:(unint64_t)subsystem error:(id *)error
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__12;
  v30 = __Block_byref_object_dispose__12;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__ICLHelperServiceClient_stagingURLWithSandboxExtension_forSystemContentWithinSubsystem_error___block_invoke;
  v13[3] = &unk_1E7AE1EB0;
  v13[4] = &v20;
  v8 = [(ICLHelperServiceClient *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__ICLHelperServiceClient_stagingURLWithSandboxExtension_forSystemContentWithinSubsystem_error___block_invoke_2;
  v12[3] = &unk_1E7AE24A0;
  v12[4] = &v20;
  v12[5] = &v26;
  v12[6] = &v14;
  [v8 stagingURLWithSandboxExtensionForSystemContentWithinSubsystem:subsystem completion:v12];

  v9 = v27[5];
  if (error && !v9)
  {
    *error = v21[5];
    v9 = v27[5];
  }

  if (extension && v9)
  {
    *extension = v15[5];
    v9 = v27[5];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

void __95__ICLHelperServiceClient_stagingURLWithSandboxExtension_forSystemContentWithinSubsystem_error___block_invoke(uint64_t a1, void *a2)
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

void __95__ICLHelperServiceClient_stagingURLWithSandboxExtension_forSystemContentWithinSubsystem_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = 32;
    v12 = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = 48;
    v12 = v8;
  }

  v13 = *(*(a1 + v11) + 8);
  v14 = v12;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
}

@end