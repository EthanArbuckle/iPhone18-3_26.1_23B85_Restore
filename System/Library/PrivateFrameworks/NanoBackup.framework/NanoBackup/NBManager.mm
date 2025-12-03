@interface NBManager
- (BOOL)getBackupsStatus;
- (NBManager)initWithQueue:(id)queue;
- (id)connection;
- (id)deleteBackup:(id)backup;
- (id)restoreFromBackup:(id)backup forDevice:(id)device;
- (id)restoreFromDevice:(id)device forDevice:(id)forDevice;
- (void)createBackupForDevice:(id)device completionHandler:(id)handler;
- (void)createBackupForDevice:(id)device synchronousCompletionHandler:(id)handler;
- (void)createBackupForPairingID:(id)d completionHandler:(id)handler;
- (void)createBackupForPairingID:(id)d synchronousCompletionHandler:(id)handler;
- (void)createManualBackupWithCompletion:(id)completion;
- (void)dealloc;
- (void)deleteBackup:(id)backup completionHandler:(id)handler;
- (void)listBackupsOfType:(unint64_t)type timeout:(int64_t)timeout completionHandler:(id)handler;
- (void)listBackupsOfType:(unint64_t)type withSynchronousCompletionHandler:(id)handler;
- (void)restoreFromBackup:(id)backup forDevice:(id)device completionHandler:(id)handler;
- (void)restoreFromDevice:(id)device forDevice:(id)forDevice completionHandler:(id)handler;
- (void)setBackupsEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)unsafe_invalidate;
@end

@implementation NBManager

- (id)connection
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nanobackup" options:4096];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    if (connection_onceToken != -1)
    {
      [NBManager connection];
    }

    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:connection_remoteObjectInterface];
    objc_initWeak(&location, self);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_80];
    v6 = self->_xpcConnection;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __23__NBManager_connection__block_invoke_81;
    v11 = &unk_27992D6A0;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:&v8];
    [(NSXPCConnection *)self->_xpcConnection resume:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __23__NBManager_connection__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C4A978];
  v1 = connection_remoteObjectInterface;
  connection_remoteObjectInterface = v0;

  v2 = connection_remoteObjectInterface;
  v3 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v5 = [v3 setWithArray:{v4, v7, v8}];
  [v2 setClasses:v5 forSelector:sel_listBackupsOfType_timeout_completionHandler_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];
}

- (NBManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = NBManager;
  v5 = [(NBManager *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.nanobackup.internal", v6);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v7;

    if (queueCopy)
    {
      v9 = queueCopy;
      externalQueue = v5->_externalQueue;
      v5->_externalQueue = v9;
    }

    else
    {
      v11 = MEMORY[0x277D85CD0];
      v12 = MEMORY[0x277D85CD0];
      externalQueue = v5->_externalQueue;
      v5->_externalQueue = v11;
    }
  }

  return v5;
}

- (void)unsafe_invalidate
{
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  xpcConnection = self->_xpcConnection;

  [(NSXPCConnection *)xpcConnection invalidate];
}

- (void)dealloc
{
  [(NBManager *)self unsafe_invalidate];
  v3.receiver = self;
  v3.super_class = NBManager;
  [(NBManager *)&v3 dealloc];
}

void __23__NBManager_connection__block_invoke_2()
{
  v0 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25AEFA000, v0, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v1, 2u);
  }
}

void __23__NBManager_connection__block_invoke_81(uint64_t a1)
{
  v2 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEFA000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__NBManager_connection__block_invoke_82;
    block[3] = &unk_27992D678;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

- (void)listBackupsOfType:(unint64_t)type timeout:(int64_t)timeout completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = MEMORY[0x25F85B950](handlerCopy);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_25AEFA000, v10, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2020000000;
  v27 = 0;
  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  if (timeout >= 1)
  {
    v12 = dispatch_time(0, 1000000000 * timeout);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke;
    block[3] = &unk_27992D6C8;
    p_buf = &buf;
    typeCopy = type;
    v22 = handlerCopy;
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
  }

  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke_87;
  v16[3] = &unk_27992D790;
  objc_copyWeak(v19, &location);
  v19[1] = type;
  v19[2] = timeout;
  v17 = handlerCopy;
  v18 = &buf;
  v14 = handlerCopy;
  dispatch_async(internalQueue, v16);

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v2 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[6];
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_25AEFA000, v2, OS_LOG_TYPE_DEFAULT, "timed out waiting for result from backup daemon for type: %lu", &v7, 0xCu);
    }

    *(*(a1[5] + 8) + 24) = 1;
    v4 = a1[4];
    v5 = NBError(4);
    (*(v4 + 16))(v4, 0, v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke_2;
    v12[3] = &unk_27992D718;
    objc_copyWeak(&v14, (a1 + 48));
    v13 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v12];
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke_2_90;
    v8[3] = &unk_27992D768;
    v10 = *(a1 + 40);
    objc_copyWeak(&v11, (a1 + 48));
    v9 = *(a1 + 32);
    [v5 listBackupsOfType:v6 timeout:v7 completionHandler:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v14);
  }
}

void __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke_88;
    v9[3] = &unk_27992D6F0;
    v11 = *(a1 + 32);
    v10 = v3;
    dispatch_async(v7, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke_2_90(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  if (*(v7 + 24) == 1)
  {
    v8 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AEFA000, v8, OS_LOG_TYPE_DEFAULT, "Client returned after timeout dropping response", buf, 2u);
    }
  }

  else
  {
    *(v7 + 24) = 1;
    v9 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      *buf = 134218498;
      v20 = v5;
      v21 = 2048;
      v22 = [v5 count];
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_25AEFA000, v10, OS_LOG_TYPE_DEFAULT, "backups: (%p has %lu objects); error: (%@)", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v12 = WeakRetained;
    if (WeakRetained)
    {
      v13 = [WeakRetained externalQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__NBManager_listBackupsOfType_timeout_completionHandler___block_invoke_91;
      block[3] = &unk_27992D740;
      v18 = *(a1 + 32);
      v16 = v5;
      v17 = v6;
      dispatch_async(v13, block);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setBackupsEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = MEMORY[0x25F85B950](handlerCopy);
    *buf = 134217984;
    v18 = v9;
    _os_log_impl(&dword_25AEFA000, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NBManager_setBackupsEnabled_completionHandler___block_invoke;
  block[3] = &unk_27992D7E0;
  objc_copyWeak(&v15, buf);
  v14 = handlerCopy;
  enabledCopy = enabled;
  v11 = handlerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __49__NBManager_setBackupsEnabled_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__NBManager_setBackupsEnabled_completionHandler___block_invoke_2;
    v11[3] = &unk_27992D718;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v11];
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__NBManager_setBackupsEnabled_completionHandler___block_invoke_2_94;
    v7[3] = &unk_27992D7B8;
    v10 = v6;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [v5 setBackupsEnabled:v6 completionHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v13);
  }
}

void __49__NBManager_setBackupsEnabled_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__NBManager_setBackupsEnabled_completionHandler___block_invoke_93;
    v9[3] = &unk_27992D6F0;
    v11 = *(a1 + 32);
    v10 = v3;
    dispatch_async(v7, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__NBManager_setBackupsEnabled_completionHandler___block_invoke_2_94(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 67109120;
    v14 = v5;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "Backups enabled set to: %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained externalQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__NBManager_setBackupsEnabled_completionHandler___block_invoke_95;
    v10[3] = &unk_27992D6F0;
    v12 = *(a1 + 32);
    v11 = v3;
    dispatch_async(v8, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)getBackupsStatus
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableiCloudBackup", @"com.apple.NanoBackup", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  return !v3;
}

- (void)listBackupsOfType:(unint64_t)type withSynchronousCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = MEMORY[0x25F85B950](handlerCopy);
    *buf = 134218240;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = type;
    _os_log_impl(&dword_25AEFA000, v8, OS_LOG_TYPE_DEFAULT, "listBackupsOfTypewithSynchronousCompletionHandler replyBlock: (%p) Type: %lu", buf, 0x16u);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__NBManager_listBackupsOfType_withSynchronousCompletionHandler___block_invoke;
  v12[3] = &unk_27992D858;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = buf;
  v12[7] = type;
  dispatch_sync(internalQueue, v12);
  handlerCopy[2](handlerCopy, *(*&buf[8] + 40), v14[5]);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(buf, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __64__NBManager_listBackupsOfType_withSynchronousCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__NBManager_listBackupsOfType_withSynchronousCompletionHandler___block_invoke_2;
  v7[3] = &unk_27992D808;
  v7[4] = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];

  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__NBManager_listBackupsOfType_withSynchronousCompletionHandler___block_invoke_96;
  v5[3] = &unk_27992D830;
  v6 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v3 listBackupsOfType:v4 timeout:0 completionHandler:v5];
}

void __64__NBManager_listBackupsOfType_withSynchronousCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

void __64__NBManager_listBackupsOfType_withSynchronousCompletionHandler___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v15 = 134218498;
    v16 = v5;
    v17 = 2048;
    v18 = [v5 count];
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_25AEFA000, v8, OS_LOG_TYPE_DEFAULT, "backups: (%p has %lu objects); error: (%@)", &v15, 0x20u);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)restoreFromBackup:(id)backup forDevice:(id)device completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  deviceCopy = device;
  handlerCopy = handler;
  uuid = [backupCopy uuid];
  v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v13 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    uUIDString = [uuid UUIDString];
    uUIDString2 = [v12 UUIDString];
    v17 = MEMORY[0x25F85B950](handlerCopy);
    *buf = 134219010;
    v29 = backupCopy;
    v30 = 2112;
    v31 = uUIDString;
    v32 = 2048;
    v33 = deviceCopy;
    v34 = 2112;
    v35 = uUIDString2;
    v36 = 2048;
    v37 = v17;
    _os_log_impl(&dword_25AEFA000, v14, OS_LOG_TYPE_DEFAULT, "backup: (%p); backupID: (%@); device: (%p); deviceID: (%@); replyBlock: (%p)", buf, 0x34u);
  }

  uuid2 = [backupCopy uuid];

  if (!deviceCopy || !uuid2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Neither of the backup (%@) or device (%@) parameter can be nil", backupCopy, deviceCopy}];
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_8:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Device (%@) passed as parameter is invalid: missing pairingID", deviceCopy}];
    goto LABEL_6;
  }

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_6:
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke;
  block[3] = &unk_27992D8A8;
  block[4] = self;
  v25 = backupCopy;
  v26 = v12;
  v27 = handlerCopy;
  v20 = v12;
  v21 = backupCopy;
  v22 = handlerCopy;
  dispatch_async(internalQueue, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke_2;
  v11[3] = &unk_27992D880;
  v12 = *(a1 + 56);
  objc_copyWeak(&v13, &location);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v11];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 40) backupType];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke_2_104;
  v8[3] = &unk_27992D880;
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  objc_copyWeak(&v10, &location);
  [v3 restoreFromBackupID:v4 backupType:v5 forPairingID:v6 completionHandler:v8];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke_2_106;
  v7[3] = &unk_27992D678;
  v7[4] = *(a1 + 32);
  [v2 addBarrierBlock:v7];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "restoreFromBackup error: (%@)", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke_103;
      v9[3] = &unk_27992D6F0;
      v11 = *(a1 + 32);
      v10 = v3;
      dispatch_async(v7, v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke_2_104(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "restoreFromBackup error: (%@)", buf, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__NBManager_restoreFromBackup_forDevice_completionHandler___block_invoke_105;
      v9[3] = &unk_27992D6F0;
      v11 = *(a1 + 32);
      v10 = v3;
      dispatch_async(v7, v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)restoreFromBackup:(id)backup forDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  deviceCopy = device;
  uuid = [backupCopy uuid];
  v9 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v10 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    uUIDString = [uuid UUIDString];
    uUIDString2 = [v9 UUIDString];
    *buf = 134218754;
    *&buf[4] = backupCopy;
    *&buf[12] = 2112;
    *&buf[14] = uUIDString;
    *&buf[22] = 2048;
    v31 = deviceCopy;
    LOWORD(v32) = 2112;
    *(&v32 + 2) = uUIDString2;
    _os_log_impl(&dword_25AEFA000, v11, OS_LOG_TYPE_DEFAULT, "backup: (%p); backupID: (%@); device: (%p); deviceID: (%@)", buf, 0x2Au);
  }

  uuid2 = [backupCopy uuid];

  if (deviceCopy && uuid2)
  {
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Neither of the backup (%@) or device (%@) parameter can be nil", backupCopy, deviceCopy}];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Device (%@) passed as parameter is invalid: missing pairingID", deviceCopy}];
LABEL_6:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  *&v32 = __Block_byref_object_dispose_;
  *(&v32 + 1) = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NBManager_restoreFromBackup_forDevice___block_invoke;
  block[3] = &unk_27992D8D0;
  block[4] = self;
  v27 = buf;
  v16 = backupCopy;
  v25 = v16;
  v17 = v9;
  v26 = v17;
  dispatch_sync(internalQueue, block);
  v18 = *(*&buf[8] + 40);
  if (v18)
  {
    v19 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*&buf[8] + 40);
      *v28 = 138412290;
      v29 = v20;
      _os_log_impl(&dword_25AEFA000, v19, OS_LOG_TYPE_DEFAULT, "error: (%@)", v28, 0xCu);
    }

    v18 = *(*&buf[8] + 40);
  }

  v21 = v18;

  _Block_object_dispose(buf, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __41__NBManager_restoreFromBackup_forDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__NBManager_restoreFromBackup_forDevice___block_invoke_2;
  v8[3] = &unk_27992D808;
  v8[4] = *(a1 + 56);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 40) backupType];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NBManager_restoreFromBackup_forDevice___block_invoke_3;
  v7[3] = &unk_27992D808;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 56);
  [v3 restoreFromBackupID:v4 backupType:v5 forPairingID:v6 completionHandler:v7];
}

- (void)restoreFromDevice:(id)device forDevice:(id)forDevice completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  forDeviceCopy = forDevice;
  handlerCopy = handler;
  v11 = *MEMORY[0x277D2BBB8];
  v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v13 = [forDeviceCopy valueForProperty:v11];
  v14 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    uUIDString = [v12 UUIDString];
    uUIDString2 = [v13 UUIDString];
    v18 = MEMORY[0x25F85B950](handlerCopy);
    *buf = 134219010;
    v31 = deviceCopy;
    v32 = 2112;
    v33 = uUIDString;
    v34 = 2048;
    v35 = forDeviceCopy;
    v36 = 2112;
    v37 = uUIDString2;
    v38 = 2048;
    v39 = v18;
    _os_log_impl(&dword_25AEFA000, v15, OS_LOG_TYPE_DEFAULT, "existingDevice: (%p); existingDeviceID: (%@); device: (%p); deviceID: (%@); replyBlock: (%p)", buf, 0x34u);
  }

  v19 = MEMORY[0x277CBE660];
  if (!deviceCopy || !forDeviceCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Neither of the existingDevice (%@) or device (%@) parameters can be nil", deviceCopy, forDeviceCopy}];
  }

  if (v12)
  {
    v20 = v13 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    [MEMORY[0x277CBEAD8] raise:*v19 format:{@"Device (%@ or %@) passed as parameter is invalid: missing pairingID", deviceCopy, forDeviceCopy}];
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke;
  block[3] = &unk_27992D8A8;
  block[4] = self;
  v27 = v12;
  v28 = v13;
  v29 = handlerCopy;
  v22 = v13;
  v23 = v12;
  v24 = handlerCopy;
  dispatch_async(internalQueue, block);

  v25 = *MEMORY[0x277D85DE8];
}

void __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke_2;
  v10[3] = &unk_27992D880;
  v11 = *(a1 + 56);
  objc_copyWeak(&v12, &location);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v10];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke_2_114;
  v7[3] = &unk_27992D880;
  v8 = *(a1 + 56);
  objc_copyWeak(&v9, &location);
  [v3 restoreFromPairingID:v4 forPairingID:v5 completionHandler:v7];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke_2_116;
  v6[3] = &unk_27992D678;
  v6[4] = *(a1 + 32);
  [v2 addBarrierBlock:v6];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke_113;
      v9[3] = &unk_27992D6F0;
      v11 = *(a1 + 32);
      v10 = v3;
      dispatch_async(v7, v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke_2_114(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__NBManager_restoreFromDevice_forDevice_completionHandler___block_invoke_115;
      v9[3] = &unk_27992D6F0;
      v11 = *(a1 + 32);
      v10 = v3;
      dispatch_async(v7, v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)restoreFromDevice:(id)device forDevice:(id)forDevice
{
  v35 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  forDeviceCopy = forDevice;
  v8 = *MEMORY[0x277D2BBB8];
  v9 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v10 = [forDeviceCopy valueForProperty:v8];
  v11 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    uUIDString = [v9 UUIDString];
    uUIDString2 = [v10 UUIDString];
    *buf = 134218754;
    *&buf[4] = deviceCopy;
    *&buf[12] = 2112;
    *&buf[14] = uUIDString;
    *&buf[22] = 2048;
    v33 = forDeviceCopy;
    LOWORD(v34) = 2112;
    *(&v34 + 2) = uUIDString2;
    _os_log_impl(&dword_25AEFA000, v12, OS_LOG_TYPE_DEFAULT, "existingDevice: (%p); existingDeviceID: (%@); device: (%p); deviceID: (%@)", buf, 0x2Au);
  }

  v15 = MEMORY[0x277CBE660];
  if (!deviceCopy || !forDeviceCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Neither of the existingDevice (%@) or device (%@) parameters can be nil", deviceCopy, forDeviceCopy}];
  }

  if (v9)
  {
    v16 = v10 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    [MEMORY[0x277CBEAD8] raise:*v15 format:{@"Device (%@ or %@) passed as parameter is invalid: missing pairingID", deviceCopy, forDeviceCopy}];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  *&v34 = __Block_byref_object_dispose_;
  *(&v34 + 1) = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NBManager_restoreFromDevice_forDevice___block_invoke;
  block[3] = &unk_27992D8D0;
  block[4] = self;
  v29 = buf;
  v18 = v9;
  v27 = v18;
  v19 = v10;
  v28 = v19;
  dispatch_sync(internalQueue, block);
  v20 = *(*&buf[8] + 40);
  if (v20)
  {
    v21 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*&buf[8] + 40);
      *v30 = 138412290;
      v31 = v22;
      _os_log_impl(&dword_25AEFA000, v21, OS_LOG_TYPE_DEFAULT, "error: (%@)", v30, 0xCu);
    }

    v20 = *(*&buf[8] + 40);
  }

  v23 = v20;

  _Block_object_dispose(buf, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __41__NBManager_restoreFromDevice_forDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NBManager_restoreFromDevice_forDevice___block_invoke_2;
  v7[3] = &unk_27992D808;
  v7[4] = *(a1 + 56);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__NBManager_restoreFromDevice_forDevice___block_invoke_3;
  v6[3] = &unk_27992D808;
  v6[4] = *(a1 + 56);
  [v3 restoreFromPairingID:v4 forPairingID:v5 completionHandler:v6];
}

- (void)createBackupForDevice:(id)device completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  v8 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = MEMORY[0x25F85B950](handlerCopy);
    v13 = 134218240;
    v14 = deviceCopy;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_25AEFA000, v9, OS_LOG_TYPE_DEFAULT, "device: (%p); replyBlock: (%p)", &v13, 0x16u);
  }

  if (!deviceCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"device parameter should not be nil"];
  }

  v11 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  [(NBManager *)self createBackupForPairingID:v11 completionHandler:handlerCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createBackupForDevice:(id)device synchronousCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  v8 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = MEMORY[0x25F85B950](handlerCopy);
    v13 = 134218240;
    v14 = deviceCopy;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_25AEFA000, v9, OS_LOG_TYPE_DEFAULT, "device: (%p); replyBlock: (%p)", &v13, 0x16u);
  }

  if (!deviceCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"device parameter should not be nil"];
  }

  v11 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  [(NBManager *)self createBackupForPairingID:v11 synchronousCompletionHandler:handlerCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createBackupForPairingID:(id)d completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    uUIDString = [dCopy UUIDString];
    v11 = MEMORY[0x25F85B950](handlerCopy);
    *buf = 138412546;
    v20 = uUIDString;
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&dword_25AEFA000, v9, OS_LOG_TYPE_DEFAULT, "pairingID: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Device pairingID shouldn't be nil"];
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NBManager_createBackupForPairingID_completionHandler___block_invoke;
  block[3] = &unk_27992D920;
  v17 = dCopy;
  v18 = handlerCopy;
  block[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  dispatch_async(internalQueue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __56__NBManager_createBackupForPairingID_completionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__NBManager_createBackupForPairingID_completionHandler___block_invoke_2;
  v9[3] = &unk_27992D880;
  v10 = *(a1 + 48);
  objc_copyWeak(&v11, &location);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NBManager_createBackupForPairingID_completionHandler___block_invoke_2_124;
  v6[3] = &unk_27992D8F8;
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  objc_copyWeak(&v8, &location);
  [v3 createLocalBackupForPairingID:v4 completionHandler:v6];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NBManager_createBackupForPairingID_completionHandler___block_invoke_2_127;
  v5[3] = &unk_27992D678;
  v5[4] = *(a1 + 32);
  [v2 addBarrierBlock:v5];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__NBManager_createBackupForPairingID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __56__NBManager_createBackupForPairingID_completionHandler___block_invoke_123;
      v9[3] = &unk_27992D6F0;
      v11 = *(a1 + 32);
      v10 = v3;
      dispatch_async(v7, v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__NBManager_createBackupForPairingID_completionHandler___block_invoke_2_124(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    *buf = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_25AEFA000, v8, OS_LOG_TYPE_DEFAULT, "backupID: (%@); error: (%@)", buf, 0x16u);
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12 = WeakRetained;
    if (WeakRetained)
    {
      v13 = [WeakRetained externalQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__NBManager_createBackupForPairingID_completionHandler___block_invoke_125;
      block[3] = &unk_27992D740;
      v18 = *(a1 + 32);
      v16 = v5;
      v17 = v6;
      dispatch_async(v13, block);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)createBackupForPairingID:(id)d synchronousCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    uUIDString = [dCopy UUIDString];
    v11 = MEMORY[0x25F85B950](handlerCopy);
    *buf = 138412546;
    *&buf[4] = uUIDString;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    _os_log_impl(&dword_25AEFA000, v9, OS_LOG_TYPE_DEFAULT, "pairingID: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Device pairingID shouldn't be nil"];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__NBManager_createBackupForPairingID_synchronousCompletionHandler___block_invoke;
  v15[3] = &unk_27992D970;
  v15[4] = self;
  v17 = buf;
  v13 = dCopy;
  v16 = v13;
  v18 = &v19;
  dispatch_sync(internalQueue, v15);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v20[5], *(*&buf[8] + 40));
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(buf, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void __67__NBManager_createBackupForPairingID_synchronousCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__NBManager_createBackupForPairingID_synchronousCompletionHandler___block_invoke_2;
  v7[3] = &unk_27992D808;
  v7[4] = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__NBManager_createBackupForPairingID_synchronousCompletionHandler___block_invoke_128;
  v5[3] = &unk_27992D948;
  v6 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  [v3 createLocalBackupForPairingID:v4 completionHandler:v5];
}

void __67__NBManager_createBackupForPairingID_synchronousCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

void __67__NBManager_createBackupForPairingID_synchronousCompletionHandler___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v17 = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_25AEFA000, v8, OS_LOG_TYPE_DEFAULT, "backupID: (%@); error: (%@)", &v17, 0x16u);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
  v13 = v5;

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v6;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)createManualBackupWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  internalQueue = self->_internalQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NBManager_createManualBackupWithCompletion___block_invoke;
  v6[3] = &unk_27992D998;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8[5]);
  }

  _Block_object_dispose(&v7, 8);
}

void __46__NBManager_createManualBackupWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NBManager_createManualBackupWithCompletion___block_invoke_2;
  v5[3] = &unk_27992D808;
  v5[4] = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__NBManager_createManualBackupWithCompletion___block_invoke_129;
  v4[3] = &unk_27992D808;
  v4[4] = *(a1 + 40);
  [v3 createManualBackupWithCompletion:v4];
}

void __46__NBManager_createManualBackupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteBackup:(id)backup completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  handlerCopy = handler;
  v8 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    uuid = [backupCopy uuid];
    uUIDString = [uuid UUIDString];
    v12 = MEMORY[0x25F85B950](handlerCopy);
    *buf = 134218498;
    v25 = backupCopy;
    v26 = 2112;
    v27 = uUIDString;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&dword_25AEFA000, v9, OS_LOG_TYPE_DEFAULT, "backup (%p); backupID: (%@); replyBlock: (%p)", buf, 0x20u);
  }

  uuid2 = [backupCopy uuid];

  if (!uuid2)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE660];
    uuid3 = [backupCopy uuid];
    [v14 raise:v15 format:{@"Backup (%@) parameter and its UUID (%@) should not be nil", backupCopy, uuid3}];
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NBManager_deleteBackup_completionHandler___block_invoke;
  block[3] = &unk_27992D920;
  v22 = backupCopy;
  v23 = handlerCopy;
  block[4] = self;
  v18 = backupCopy;
  v19 = handlerCopy;
  dispatch_async(internalQueue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __44__NBManager_deleteBackup_completionHandler___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__NBManager_deleteBackup_completionHandler___block_invoke_2;
  v10[3] = &unk_27992D880;
  v11 = a1[6];
  objc_copyWeak(&v12, &location);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v10];
  v4 = [a1[5] uuid];
  v5 = [a1[5] backupType];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__NBManager_deleteBackup_completionHandler___block_invoke_2_134;
  v7[3] = &unk_27992D880;
  v8 = a1[6];
  objc_copyWeak(&v9, &location);
  [v3 deleteBackupID:v4 backupType:v5 completionHandler:v7];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__NBManager_deleteBackup_completionHandler___block_invoke_2_136;
  v6[3] = &unk_27992D678;
  v6[4] = a1[4];
  [v2 addBarrierBlock:v6];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __44__NBManager_deleteBackup_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__NBManager_deleteBackup_completionHandler___block_invoke_133;
      v9[3] = &unk_27992D6F0;
      v11 = *(a1 + 32);
      v10 = v3;
      dispatch_async(v7, v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __44__NBManager_deleteBackup_completionHandler___block_invoke_2_134(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__NBManager_deleteBackup_completionHandler___block_invoke_135;
      v9[3] = &unk_27992D6F0;
      v11 = *(a1 + 32);
      v10 = v3;
      dispatch_async(v7, v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)deleteBackup:(id)backup
{
  v30 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  v5 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uuid = [backupCopy uuid];
    uUIDString = [uuid UUIDString];
    *buf = 134218242;
    *&buf[4] = backupCopy;
    *&buf[12] = 2112;
    *&buf[14] = uUIDString;
    _os_log_impl(&dword_25AEFA000, v6, OS_LOG_TYPE_DEFAULT, "backup: (%p); backupID: (%@)", buf, 0x16u);
  }

  uuid2 = [backupCopy uuid];

  if (!uuid2)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE660];
    uuid3 = [backupCopy uuid];
    [v10 raise:v11 format:{@"Backup (%@) parameter and its UUID (%@) should not be nil", backupCopy, uuid3}];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__NBManager_deleteBackup___block_invoke;
  block[3] = &unk_27992D9C0;
  block[4] = self;
  v23 = buf;
  v14 = backupCopy;
  v22 = v14;
  dispatch_sync(internalQueue, block);
  v15 = *(*&buf[8] + 40);
  if (v15)
  {
    v16 = nb_framework_log;
    if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*&buf[8] + 40);
      *v24 = 138412290;
      v25 = v17;
      _os_log_impl(&dword_25AEFA000, v16, OS_LOG_TYPE_DEFAULT, "error: (%@)", v24, 0xCu);
    }

    v15 = *(*&buf[8] + 40);
  }

  v18 = v15;

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __26__NBManager_deleteBackup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__NBManager_deleteBackup___block_invoke_2;
  v7[3] = &unk_27992D808;
  v7[4] = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 40) backupType];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__NBManager_deleteBackup___block_invoke_137;
  v6[3] = &unk_27992D808;
  v6[4] = *(a1 + 48);
  [v3 deleteBackupID:v4 backupType:v5 completionHandler:v6];
}

void __26__NBManager_deleteBackup___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nb_framework_log;
  if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_25AEFA000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

@end