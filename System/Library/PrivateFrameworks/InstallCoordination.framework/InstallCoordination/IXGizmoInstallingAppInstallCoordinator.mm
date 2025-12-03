@interface IXGizmoInstallingAppInstallCoordinator
- (BOOL)setTargetGizmoPairingID:(id)d error:(id *)error;
- (id)targetGizmoPairingIDWithError:(id *)error;
@end

@implementation IXGizmoInstallingAppInstallCoordinator

- (BOOL)setTargetGizmoPairingID:(id)d error:(id *)error
{
  dCopy = d;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__IXGizmoInstallingAppInstallCoordinator_setTargetGizmoPairingID_error___block_invoke;
  v19[3] = &unk_1E85C5920;
  v8 = dCopy;
  v20 = v8;
  selfCopy = self;
  v22 = &v23;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v19];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__IXGizmoInstallingAppInstallCoordinator_setTargetGizmoPairingID_error___block_invoke_10;
  v14[3] = &unk_1E85C5948;
  v11 = v8;
  v15 = v11;
  selfCopy2 = self;
  v17 = &v23;
  v18 = &v29;
  [v9 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setTargetGizmoPairingID:v11 completion:v14];

  v12 = *(v30 + 24);
  if (error && (v30[3] & 1) == 0)
  {
    *error = v24[5];
    v12 = *(v30 + 24);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v12 & 1;
}

void __72__IXGizmoInstallingAppInstallCoordinator_setTargetGizmoPairingID_error___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[IXGizmoInstallingAppInstallCoordinator setTargetGizmoPairingID:error:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set target gizmo pairing ID to %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __72__IXGizmoInstallingAppInstallCoordinator_setTargetGizmoPairingID_error___block_invoke_10(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXGizmoInstallingAppInstallCoordinator setTargetGizmoPairingID:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set target gizmo pairing ID to %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)targetGizmoPairingIDWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__IXGizmoInstallingAppInstallCoordinator_targetGizmoPairingIDWithError___block_invoke;
  v12[3] = &unk_1E85C58D0;
  v12[4] = self;
  v12[5] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__IXGizmoInstallingAppInstallCoordinator_targetGizmoPairingIDWithError___block_invoke_11;
  v11[3] = &unk_1E85C6068;
  v11[4] = self;
  v11[5] = &v13;
  v11[6] = &v19;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier targetGizmoPairingIDWithCompletion:v11];

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

void __72__IXGizmoInstallingAppInstallCoordinator_targetGizmoPairingIDWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXGizmoInstallingAppInstallCoordinator targetGizmoPairingIDWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get target gizmo pairing ID from %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __72__IXGizmoInstallingAppInstallCoordinator_targetGizmoPairingIDWithError___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[IXGizmoInstallingAppInstallCoordinator targetGizmoPairingIDWithError:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get target gizmo pairing ID from %@ : %@", &v12, 0x20u);
    }

    v10 = 40;
  }

  else
  {
    v10 = 48;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v10) + 8) + 40), a3);

  v11 = *MEMORY[0x1E69E9840];
}

@end