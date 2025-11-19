@interface MKBKeyStoreDevice
+ (id)sharedService;
- (id)_CreateMKBServerConnection;
- (id)copySytemSecretBlob;
- (id)getBackupkeyForVolume:(id)a3 andCryptoID:(unint64_t)a4 withError:(id *)a5;
- (id)getFileHandleForData:(id)a3;
- (int)ChangeSystemSecretWithEscrow:(id)a3 FromOldPasscode:(id)a4 ToNew:(id)a5 withOpaqueDats:(id)a6 withKeepState:(int)a7 withACM:(BOOL)a8;
- (int)SetSystemSecretBlob:(id)a3;
- (int)backupUUIDForVolume:(id)a3 bagUUID:(id *)a4;
- (int)disableBackupForVolume:(id)a3;
- (int)forgottenPasscodeEvent;
- (int)isKeyRollingWithKeyStatus:(int *)a3;
- (int)migrateFS;
- (int)passcodeUnlockFailed;
- (int)passcodeUnlockStart;
- (int)passcodeUnlockSuccess;
- (int)setVolumeToPersona:(id)a3 withPersonaString:(id)a4;
- (int)startBackupSessionForVolume:(id)a3;
- (int)stashDestroy;
- (int)stopBackupSessionForVolume:(id)a3;
@end

@implementation MKBKeyStoreDevice

+ (id)sharedService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MKBKeyStoreDevice_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, block);
  }

  v2 = sharedService_service;

  return v2;
}

- (id)_CreateMKBServerConnection
{
  v2 = xpc_user_sessions_enabled();
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F484FAE0];
  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4096;
  }

  v6 = [v4 initWithMachServiceName:@"com.apple.mobile.keybagd.xpc" options:v5];
  [v6 setRemoteObjectInterface:v3];
  if (v2)
  {
    xpc_user_sessions_get_foreground_uid();
    v7 = [v6 _xpcConnection];
    xpc_connection_set_target_user_session_uid();
  }

  [v6 resume];

  return v6;
}

uint64_t __34__MKBKeyStoreDevice_sharedService__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  sharedService_service = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)getFileHandleForData:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length];
    if (!v5)
    {
      goto LABEL_9;
    }

    if (pipe(v25) == -1)
    {
      v7 = __error();
      v8 = strerror(*v7);
      debuglog("[MKBKeyStoreDevice getFileHandleForData:]", @"failed to get fds(1) with error:%s", v9, v10, v11, v12, v13, v14, v8);
    }

    else
    {
      if (writen(v25[1], [v4 bytes], v5) != -1)
      {
        close(v25[1]);
        v6 = objc_alloc(MEMORY[0x1E696AC00]);
        v5 = [v6 initWithFileDescriptor:v25[0] closeOnDealloc:1];
        goto LABEL_9;
      }

      v15 = __error();
      v16 = strerror(*v15);
      debuglog("[MKBKeyStoreDevice getFileHandleForData:]", @"failed to write to pipe with error:%s", v17, v18, v19, v20, v21, v22, v16);
      close(v25[0]);
      close(v25[1]);
    }
  }

  v5 = 0;
LABEL_9:

  v23 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __45__MKBKeyStoreDevice_setSpacedRepetitionMode___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

uint64_t __87__MKBKeyStoreDevice_changeSystemSecretFromOldPasscode_ToNew_withOpaqueData_withParams___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

uint64_t __90__MKBKeyStoreDevice_changeClassKeysGenerationWithSecret_withGenerationOption_secretIsACM___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (id)copySytemSecretBlob
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v2 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MKBKeyStoreDevice_copySytemSecretBlob__block_invoke_2;
  v7[3] = &unk_1E831D648;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [v3 getPasscodeBlobWithReply:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __40__MKBKeyStoreDevice_copySytemSecretBlob__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if (a3)
  {
    v6 = [a3 code];
    debuglog("[MKBKeyStoreDevice copySytemSecretBlob]_block_invoke_2", @"got error from remote proxy for getPasscodeBlobWithReply: %ld", v7, v8, v9, v10, v11, v12, v6);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  [*(a1 + 32) invalidate];
}

- (id)getBackupkeyForVolume:(id)a3 andCryptoID:(unint64_t)a4 withError:(id *)a5
{
  v8 = a3;
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
  v9 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_205];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__MKBKeyStoreDevice_getBackupkeyForVolume_andCryptoID_withError___block_invoke_2;
  v14[3] = &unk_1E831D670;
  v16 = &v18;
  v17 = &v24;
  v11 = v9;
  v15 = v11;
  [v10 getBackupkeyForVolume:v8 andCryptoID:a4 withReply:v14];
  if (a5)
  {
    *a5 = v19[5];
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __65__MKBKeyStoreDevice_getBackupkeyForVolume_andCryptoID_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v7 = [v6 code];
    debuglog("[MKBKeyStoreDevice getBackupkeyForVolume:andCryptoID:withError:]_block_invoke_2", @"got error from remote proxy: %ld", v8, v9, v10, v11, v12, v13, v7);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 32) invalidate];
}

- (int)ChangeSystemSecretWithEscrow:(id)a3 FromOldPasscode:(id)a4 ToNew:(id)a5 withOpaqueDats:(id)a6 withKeepState:(int)a7 withACM:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -1;
  v18 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (v15 && [v15 length])
  {
    v19 = [(MKBKeyStoreDevice *)self getFileHandleForData:v15];
    v20 = [v15 length];
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v31 = v15;
  v33 = a8;
  v32 = v20;
  if (v16 && [v16 length])
  {
    v21 = [(MKBKeyStoreDevice *)self getFileHandleForData:v16];
    v30 = [v16 length];
    v22 = a7;
  }

  else
  {
    v22 = a7;
    v30 = 0;
    v21 = 0;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __109__MKBKeyStoreDevice_ChangeSystemSecretWithEscrow_FromOldPasscode_ToNew_withOpaqueDats_withKeepState_withACM___block_invoke;
  v37[3] = &unk_1E831D5D8;
  v37[4] = &v38;
  v23 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v37];
  v24 = v17;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __109__MKBKeyStoreDevice_ChangeSystemSecretWithEscrow_FromOldPasscode_ToNew_withOpaqueDats_withKeepState_withACM___block_invoke_2;
  v34[3] = &unk_1E831D600;
  v36 = &v38;
  v25 = v18;
  v35 = v25;
  v26 = v14;
  BYTE1(v29) = v33;
  LOBYTE(v29) = v22 != 0;
  [v23 changeSystemSecretWithEscrow:v14 fromOldSecret:v19 oldSize:v32 toNewSecret:v21 newSize:v30 opaqueData:v24 keepstate:v29 withACM:v34 reply:?];
  v27 = *(v39 + 6);

  _Block_object_dispose(&v38, 8);
  return v27;
}

uint64_t __109__MKBKeyStoreDevice_ChangeSystemSecretWithEscrow_FromOldPasscode_ToNew_withOpaqueDats_withKeepState_withACM___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)SetSystemSecretBlob:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v5 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__MKBKeyStoreDevice_SetSystemSecretBlob___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__MKBKeyStoreDevice_SetSystemSecretBlob___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v7 = v5;
  v11 = v7;
  [v6 setSystemSecretBlob:v4 reply:v10];
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __41__MKBKeyStoreDevice_SetSystemSecretBlob___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SetSystemSecretBlob:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __41__MKBKeyStoreDevice_SetSystemSecretBlob___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice SetSystemSecretBlob:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

void __62__MKBKeyStoreDevice_registerOTABackup_withSecret_secretIsACM___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice registerOTABackup:withSecret:secretIsACM:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __62__MKBKeyStoreDevice_registerOTABackup_withSecret_secretIsACM___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice registerOTABackup:withSecret:secretIsACM:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)startBackupSessionForVolume:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v5 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__MKBKeyStoreDevice_startBackupSessionForVolume___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MKBKeyStoreDevice_startBackupSessionForVolume___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v7 = v5;
  v11 = v7;
  [v6 startBackupSessionForVolume:v4 withReply:v10];
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __49__MKBKeyStoreDevice_startBackupSessionForVolume___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice startBackupSessionForVolume:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __49__MKBKeyStoreDevice_startBackupSessionForVolume___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice startBackupSessionForVolume:]_block_invoke_2", @"got error from remote proxy(2): %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)stopBackupSessionForVolume:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v5 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__MKBKeyStoreDevice_stopBackupSessionForVolume___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MKBKeyStoreDevice_stopBackupSessionForVolume___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v7 = v5;
  v11 = v7;
  [v6 stopBackupSessionForVolume:v4 withReply:v10];
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __48__MKBKeyStoreDevice_stopBackupSessionForVolume___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stopBackupSessionForVolume:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __48__MKBKeyStoreDevice_stopBackupSessionForVolume___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice stopBackupSessionForVolume:]_block_invoke_2", @"got error from remote proxy(2): %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

void __74__MKBKeyStoreDevice_enableBackupForVolume_withSecret_secretIsACM_bagData___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice enableBackupForVolume:withSecret:secretIsACM:bagData:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

void __74__MKBKeyStoreDevice_enableBackupForVolume_withSecret_secretIsACM_bagData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 code];
    v8 = [v7 code];
    debuglog("[MKBKeyStoreDevice enableBackupForVolume:withSecret:secretIsACM:bagData:]_block_invoke_2", @"got error from remote proxy: %ld", v9, v10, v11, v12, v13, v14, v8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  [*(a1 + 32) invalidate];
}

- (int)disableBackupForVolume:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v5 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__MKBKeyStoreDevice_disableBackupForVolume___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__MKBKeyStoreDevice_disableBackupForVolume___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v7 = v5;
  v11 = v7;
  [v6 disableBackupForVolume:v4 reply:v10];
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __44__MKBKeyStoreDevice_disableBackupForVolume___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice disableBackupForVolume:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __44__MKBKeyStoreDevice_disableBackupForVolume___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice disableBackupForVolume:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)backupUUIDForVolume:(id)a3 bagUUID:(id *)a4
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v6 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__MKBKeyStoreDevice_backupUUIDForVolume_bagUUID___block_invoke;
  v14[3] = &unk_1E831D5D8;
  v14[4] = &v15;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__MKBKeyStoreDevice_backupUUIDForVolume_bagUUID___block_invoke_2;
  v11[3] = &unk_1E831D648;
  v13 = &v15;
  v8 = v6;
  v12 = v8;
  [v7 backupUUIDForVolume:v5 reply:v11];
  v9 = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v9;
}

void __49__MKBKeyStoreDevice_backupUUIDForVolume_bagUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice backupUUIDForVolume:bagUUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __49__MKBKeyStoreDevice_backupUUIDForVolume_bagUUID___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    *(*(*(a1 + 40) + 8) + 24) = [v4 code];
    v5 = [v4 code];

    debuglog("[MKBKeyStoreDevice backupUUIDForVolume:bagUUID:]_block_invoke_2", @"got error from remote proxy: %ld", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v12 = *(a1 + 32);

  return [v12 invalidate];
}

- (int)passcodeUnlockStart
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v2 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MKBKeyStoreDevice_passcodeUnlockStart__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MKBKeyStoreDevice_passcodeUnlockStart__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = v2;
  v8 = v4;
  [v3 passcodeUnlockStartWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __40__MKBKeyStoreDevice_passcodeUnlockStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice passcodeUnlockStart]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __40__MKBKeyStoreDevice_passcodeUnlockStart__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice passcodeUnlockStart]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)passcodeUnlockSuccess
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v2 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__MKBKeyStoreDevice_passcodeUnlockSuccess__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MKBKeyStoreDevice_passcodeUnlockSuccess__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = v2;
  v8 = v4;
  [v3 passcodeUnlockSuccessWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __42__MKBKeyStoreDevice_passcodeUnlockSuccess__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice passcodeUnlockSuccess]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __42__MKBKeyStoreDevice_passcodeUnlockSuccess__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice passcodeUnlockSuccess]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)passcodeUnlockFailed
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v2 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__MKBKeyStoreDevice_passcodeUnlockFailed__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__MKBKeyStoreDevice_passcodeUnlockFailed__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = v2;
  v8 = v4;
  [v3 passcodeUnlockFailedWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __41__MKBKeyStoreDevice_passcodeUnlockFailed__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice passcodeUnlockFailed]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __41__MKBKeyStoreDevice_passcodeUnlockFailed__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice passcodeUnlockFailed]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

void __41__MKBKeyStoreDevice_getLockStateForUser___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if (a3)
  {
    v6 = [a3 code];
    debuglog("[MKBKeyStoreDevice getLockStateForUser:]_block_invoke_2", @"got error from remote proxy: %ld", v7, v8, v9, v10, v11, v12, v6);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  [*(a1 + 32) invalidate];
}

void __79__MKBKeyStoreDevice_getDeviceLockStateForUser_extendedState_withLockStateInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice getDeviceLockStateForUser:extendedState:withLockStateInfo:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t __79__MKBKeyStoreDevice_getDeviceLockStateForUser_extendedState_withLockStateInfo___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 code];
    debuglog("[MKBKeyStoreDevice getDeviceLockStateForUser:extendedState:withLockStateInfo:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    v11 = a1[6];
    if (v11)
    {
      *v11 = a2;
    }

    *(*(a1[5] + 8) + 24) = 1;
  }

  v12 = a1[4];

  return [v12 invalidate];
}

void __70__MKBKeyStoreDevice_stashCreateWithSecret_withMode_withUID_WithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stashCreateWithSecret:withMode:withUID:WithFlags:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __70__MKBKeyStoreDevice_stashCreateWithSecret_withMode_withUID_WithFlags___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice stashCreateWithSecret:withMode:withUID:WithFlags:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

void __43__MKBKeyStoreDevice_stashCommit_WithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stashCommit:WithFlags:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __43__MKBKeyStoreDevice_stashCommit_WithFlags___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice stashCommit:WithFlags:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)stashDestroy
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v2 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__MKBKeyStoreDevice_stashDestroy__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__MKBKeyStoreDevice_stashDestroy__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = v2;
  v8 = v4;
  [v3 stashDestroywithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __33__MKBKeyStoreDevice_stashDestroy__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stashDestroy]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __33__MKBKeyStoreDevice_stashDestroy__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice stashDestroy]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

void __63__MKBKeyStoreDevice_stashVerifywithValidity_WithUID_WithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stashVerifywithValidity:WithUID:WithFlags:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __63__MKBKeyStoreDevice_stashVerifywithValidity_WithUID_WithFlags___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    *(*(a1[5] + 8) + 24) = [v4 code];
    v5 = [v4 code];

    debuglog("[MKBKeyStoreDevice stashVerifywithValidity:WithUID:WithFlags:]_block_invoke_2", @"got error from remote proxy: %ld", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = a2;
  }

  v12 = a1[4];

  return [v12 invalidate];
}

- (int)isKeyRollingWithKeyStatus:(int *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = -1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__MKBKeyStoreDevice_isKeyRollingWithKeyStatus___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v18;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__MKBKeyStoreDevice_isKeyRollingWithKeyStatus___block_invoke_2;
  v9[3] = &unk_1E831D6E8;
  v11 = &v18;
  v12 = &v14;
  v6 = v4;
  v10 = v6;
  [v5 isKeyRollingInProgresswithreply:v9];
  if (a3)
  {
    *a3 = *(v15 + 6);
  }

  v7 = *(v19 + 6);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

void __47__MKBKeyStoreDevice_isKeyRollingWithKeyStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice isKeyRollingWithKeyStatus:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __47__MKBKeyStoreDevice_isKeyRollingWithKeyStatus___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    *(*(a1[5] + 8) + 24) = [v4 code];
    v5 = [v4 code];

    debuglog("[MKBKeyStoreDevice isKeyRollingWithKeyStatus:]_block_invoke_2", @"got error from remote proxy: %ld", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = a2;
  }

  v12 = a1[4];

  return [v12 invalidate];
}

- (int)migrateFS
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v2 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__MKBKeyStoreDevice_migrateFS__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__MKBKeyStoreDevice_migrateFS__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = v2;
  v8 = v4;
  [v3 migrationWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __30__MKBKeyStoreDevice_migrateFS__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice migrateFS]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __30__MKBKeyStoreDevice_migrateFS__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice migrateFS]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)forgottenPasscodeEvent
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v2 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__MKBKeyStoreDevice_forgottenPasscodeEvent__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MKBKeyStoreDevice_forgottenPasscodeEvent__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = v2;
  v8 = v4;
  [v3 forgottenPasscodeEventWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __43__MKBKeyStoreDevice_forgottenPasscodeEvent__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice forgottenPasscodeEvent]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __43__MKBKeyStoreDevice_forgottenPasscodeEvent__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice forgottenPasscodeEvent]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

void __27__MKBKeyStoreDevice_Event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice Event:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

void __46__MKBKeyStoreDevice_SeshatEnroll_secretIsACM___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SeshatEnroll:secretIsACM:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __46__MKBKeyStoreDevice_SeshatEnroll_secretIsACM___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice SeshatEnroll:secretIsACM:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

void __90__MKBKeyStoreDevice_SeshatUnlock_secretIsACM_withMemento_verifyOnly_withACMRef_forHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SeshatUnlock:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __90__MKBKeyStoreDevice_SeshatUnlock_secretIsACM_withMemento_verifyOnly_withACMRef_forHandle___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 code];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
    v4 = *(*(a1[6] + 8) + 24);
  }

  *(*(a1[5] + 8) + 24) = v4;
  v5 = a1[4];

  return [v5 invalidate];
}

void __47__MKBKeyStoreDevice_SeshatRecover_secretIsACM___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SeshatRecover:secretIsACM:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __47__MKBKeyStoreDevice_SeshatRecover_secretIsACM___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 code];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
    v4 = *(*(a1[6] + 8) + 24);
  }

  *(*(a1[5] + 8) + 24) = v4;
  v5 = a1[4];

  return [v5 invalidate];
}

void __33__MKBKeyStoreDevice_SeshatDebug___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SeshatDebug:]_block_invoke", @"got error from remote proxy: %d", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __33__MKBKeyStoreDevice_SeshatDebug___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice SeshatDebug:]_block_invoke_2", @"got error from remote proxy: %d", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

void __105__MKBKeyStoreDevice_createKeybagForUserSession_withSessionUID_WithSecret_withGracePeriod_withOpaqeStuff___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice createKeybagForUserSession:withSessionUID:WithSecret:withGracePeriod:withOpaqeStuff:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __105__MKBKeyStoreDevice_createKeybagForUserSession_withSessionUID_WithSecret_withGracePeriod_withOpaqeStuff___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __122__MKBKeyStoreDevice_loadKeybagForUserSession_withSessionID_withSecret_shouldSetGracePeriod_withGracePeriod_isInEarlyStar___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice loadKeybagForUserSession:withSessionID:withSecret:shouldSetGracePeriod:withGracePeriod:isInEarlyStar:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __122__MKBKeyStoreDevice_loadKeybagForUserSession_withSessionID_withSecret_shouldSetGracePeriod_withGracePeriod_isInEarlyStar___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __48__MKBKeyStoreDevice_unloadKeybagForUserSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice unloadKeybagForUserSession:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __48__MKBKeyStoreDevice_unloadKeybagForUserSession___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __48__MKBKeyStoreDevice_deleteKeybagForUserSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice deleteKeybagForUserSession:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __48__MKBKeyStoreDevice_deleteKeybagForUserSession___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)setVolumeToPersona:(id)a3 withPersonaString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 5;
  v8 = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__MKBKeyStoreDevice_setVolumeToPersona_withPersonaString___block_invoke;
  v16[3] = &unk_1E831D5D8;
  v16[4] = &v17;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MKBKeyStoreDevice_setVolumeToPersona_withPersonaString___block_invoke_2;
  v13[3] = &unk_1E831D600;
  v15 = &v17;
  v10 = v8;
  v14 = v10;
  [v9 setVolumeToPersona:v6 withPersonaString:v7 withReply:v13];
  v11 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __58__MKBKeyStoreDevice_setVolumeToPersona_withPersonaString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice setVolumeToPersona:withPersonaString:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __58__MKBKeyStoreDevice_setVolumeToPersona_withPersonaString___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __64__MKBKeyStoreDevice_createSyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice createSyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __64__MKBKeyStoreDevice_createSyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __62__MKBKeyStoreDevice_loadSyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice loadSyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __62__MKBKeyStoreDevice_loadSyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __64__MKBKeyStoreDevice_verifySyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice verifySyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __64__MKBKeyStoreDevice_verifySyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __64__MKBKeyStoreDevice_unloadSyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice unloadSyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __64__MKBKeyStoreDevice_unloadSyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __64__MKBKeyStoreDevice_removeSyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice removeSyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __64__MKBKeyStoreDevice_removeSyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __102__MKBKeyStoreDevice_addPersonaKeyForUserSession_withSecret_secretIsACM_withPersonaUUIDString_forPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice addPersonaKeyForUserSession:withSecret:secretIsACM:withPersonaUUIDString:forPath:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __102__MKBKeyStoreDevice_addPersonaKeyForUserSession_withSecret_secretIsACM_withPersonaUUIDString_forPath___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

void __95__MKBKeyStoreDevice_removePersonaKeyForUserSession_withPersonaUUIDString_withVolumeUUIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice removePersonaKeyForUserSession:withPersonaUUIDString:withVolumeUUIDString:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __95__MKBKeyStoreDevice_removePersonaKeyForUserSession_withPersonaUUIDString_withVolumeUUIDString___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

@end