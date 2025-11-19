@interface BLServiceProxy
- (BLServiceProxy)initWithProgressReceiver:(id)a3 error:(id *)a4;
- (BLServiceProxyConnectionMonitoring)connectionMonitor;
- (id)_remoteObjectWithErrorHandler:(id)a3;
- (id)_synchronousRemoteObjectWithErrorHandler:(id)a3;
- (void)_createAndStartConnection;
- (void)cancelAllActiveDownloadsWithReply:(id)a3;
- (void)cancelDownloadWithID:(id)a3 withReply:(id)a4;
- (void)dealloc;
- (void)downloadWithPermlink:(id)a3 title:(id)a4 reply:(id)a5;
- (void)fetchDownloadFromDownloadID:(id)a3 withReply:(id)a4;
- (void)fetchDownloadListWithReply:(id)a3;
- (void)getCrashSimulationOverrideValuesWithReply:(id)a3;
- (void)getValueSimulateDeviceOutOfSpaceWithReply:(id)a3;
- (void)migrationInfoWithStoreID:(int64_t)a3 withReply:(id)a4;
- (void)migrationInfosWithStates:(id)a3 withReply:(id)a4;
- (void)migrationInfosWithStoreIDs:(id)a3 withReply:(id)a4;
- (void)monitorProgressWithReply:(id)a3;
- (void)pauseDownloadWithID:(id)a3 withReply:(id)a4;
- (void)prepareForRemoveAppWithReply:(id)a3;
- (void)processAutomaticDownloadsWithReply:(id)a3;
- (void)purchaseWithRequest:(id)a3 uiHostProxy:(id)a4 reply:(id)a5;
- (void)racGUIDForStoreID:(int64_t)a3 withReply:(id)a4;
- (void)reloadFromServerWithReply:(id)a3;
- (void)removeAllMigrationInfosExcludingStates:(id)a3 withReply:(id)a4;
- (void)removeMigrationInfoForStoreID:(int64_t)a3 withReply:(id)a4;
- (void)removeRacGUIDForStoreID:(int64_t)a3 withReply:(id)a4;
- (void)requestDownloadWithParameters:(id)a3 reply:(id)a4;
- (void)requestDownloadsWithManifestRequest:(id)a3 uiHostProxy:(id)a4 reply:(id)a5;
- (void)requestDownloadsWithRestoreContentRequestItems:(id)a3 reply:(id)a4;
- (void)resetAllCrashSimulationOverridesWithReply:(id)a3;
- (void)restartDownloadWithID:(id)a3 withReply:(id)a4;
- (void)resumeDownloadWithID:(id)a3 withReply:(id)a4;
- (void)setMigrationState:(int64_t)a3 forStoreIDs:(id)a4 withReply:(id)a5;
- (void)setRacGUID:(id)a3 forStoreID:(int64_t)a4 withReply:(id)a5;
- (void)shutdown;
@end

@implementation BLServiceProxy

- (void)_createAndStartConnection
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = sub_241D208F8;
  v7 = &unk_278D175C0;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&self->_connectionLock);
  v6(v3);
  os_unfair_lock_unlock(&self->_connectionLock);

  if (*(v11 + 24) == 1)
  {
    v4 = [(BLServiceProxy *)self connectionMonitor];
    [v4 reconnectingToServiceForProxy:self];
  }

  _Block_object_dispose(&v10, 8);
}

- (BLServiceProxy)initWithProgressReceiver:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = BLServiceProxy;
  v7 = [(BLServiceProxy *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_progressReceiver, a3);
    v8->_connectionLock._os_unfair_lock_opaque = 0;
    v8->_state = 0;
    [(BLServiceProxy *)v8 _createAndStartConnection];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("BLService Notify Queue", v9);

    objc_initWeak(&location, v8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_241D36920;
    v12[3] = &unk_278D17570;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch("com.apple.BLService.DownloadQueue.Server.Restarted", &v8->_notifyToken, v10, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  [(BLServiceProxy *)self shutdown];
  v3.receiver = self;
  v3.super_class = BLServiceProxy;
  [(BLServiceProxy *)&v3 dealloc];
}

- (void)shutdown
{
  os_unfair_lock_lock(&self->_connectionLock);
  if (self->_connection)
  {
    v3 = BLServiceProxyLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_INFO, "[BLServiceProxy] Shutting down service proxy.", v5, 2u);
    }

    self->_state = 1;
    [(NSXPCConnection *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;
  }

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (id)_remoteObjectWithErrorHandler:(id)a3
{
  v4 = a3;
  [(BLServiceProxy *)self _createAndStartConnection];
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D36E30;
  v9[3] = &unk_278D175E8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)_synchronousRemoteObjectWithErrorHandler:(id)a3
{
  v4 = a3;
  [(BLServiceProxy *)self _createAndStartConnection];
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D36FD0;
  v9[3] = &unk_278D175E8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (void)fetchDownloadListWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] fetchDownloadListWithReply", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D371A8;
  v8[3] = &unk_278D175E8;
  v9 = v4;
  v6 = v4;
  v7 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v8];
  [v7 fetchDownloadListWithReply:v6];
}

- (void)fetchDownloadFromDownloadID:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] fetchDownloadFromDownloadID", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D37324;
  v11[3] = &unk_278D175E8;
  v12 = v6;
  v9 = v6;
  v10 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v11];
  [v10 fetchDownloadFromDownloadID:v7 withReply:v9];
}

- (void)pauseDownloadWithID:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] pauseDownloadWithID", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v6];
  [v9 pauseDownloadWithID:v7 withReply:v6];
}

- (void)resumeDownloadWithID:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] resumeDownloadWithID", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v6];
  [v9 resumeDownloadWithID:v7 withReply:v6];
}

- (void)restartDownloadWithID:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] restartDownloadWithID", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v6];
  [v9 restartDownloadWithID:v7 withReply:v6];
}

- (void)cancelDownloadWithID:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] cancelDownloadWithID", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v6];
  [v9 cancelDownloadWithID:v7 withReply:v6];
}

- (void)cancelAllActiveDownloadsWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] cancelAllActiveDownloadsWithReply", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v4];
  [v6 cancelAllActiveDownloadsWithReply:v4];
}

- (void)purchaseWithRequest:(id)a3 uiHostProxy:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BLServiceProxyLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] purchaseWithRequest:uiHostProxy:reply:", buf, 2u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D3782C;
  v14[3] = &unk_278D175E8;
  v15 = v8;
  v12 = v8;
  v13 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v14];
  [v13 purchaseWithRequest:v10 uiHostProxy:v9 reply:v12];
}

- (void)downloadWithPermlink:(id)a3 title:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BLServiceProxyLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] downloadWithPermlink", buf, 2u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D379C8;
  v14[3] = &unk_278D175E8;
  v15 = v8;
  v12 = v8;
  v13 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v14];
  [v13 downloadWithPermlink:v10 title:v9 reply:v12];
}

- (void)requestDownloadWithParameters:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] requestDownloadWithParameters", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D37B44;
  v11[3] = &unk_278D175E8;
  v12 = v6;
  v9 = v6;
  v10 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v11];
  [v10 requestDownloadWithParameters:v7 reply:v9];
}

- (void)requestDownloadsWithRestoreContentRequestItems:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] requestDownloadsWithRestoreContentRequestDictionary", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D37FD8;
  v11[3] = &unk_278D175E8;
  v12 = v6;
  v9 = v6;
  v10 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v11];
  [v10 requestDownloadsWithRestoreContentRequestItems:v7 reply:v9];
}

- (void)requestDownloadsWithManifestRequest:(id)a3 uiHostProxy:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BLServiceProxyLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] requestDownloadsWithManifestRequest", buf, 2u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D38170;
  v14[3] = &unk_278D175E8;
  v15 = v8;
  v12 = v8;
  v13 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v14];
  [v13 requestDownloadsWithManifestRequest:v10 uiHostProxy:v9 reply:v12];
}

- (void)processAutomaticDownloadsWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] performAutomaticDownloads", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D382D8;
  v8[3] = &unk_278D175E8;
  v9 = v4;
  v6 = v4;
  v7 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v8];
  [v7 processAutomaticDownloadsWithReply:v6];
}

- (void)reloadFromServerWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] reloadFromServerWithReply", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v4];
  [v6 reloadFromServerWithReply:v4];
}

- (void)monitorProgressWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] monitorProgressWithReply", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v4];
  [v6 monitorProgressWithReply:v4];
}

- (void)setRacGUID:(id)a3 forStoreID:(int64_t)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = BLServiceProxyLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] setRacGUID:forStoreID:", v12, 2u);
  }

  v11 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v8];
  [v11 setRacGUID:v9 forStoreID:a4 withReply:v8];
}

- (void)racGUIDForStoreID:(int64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = BLServiceProxyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] racGUIDforStoreID:", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D387D8;
  v10[3] = &unk_278D175E8;
  v11 = v6;
  v8 = v6;
  v9 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v10];
  [v9 racGUIDForStoreID:a3 withReply:v8];
}

- (void)removeRacGUIDForStoreID:(int64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = BLServiceProxyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] removeRacGUIDForStoreID:", v9, 2u);
  }

  v8 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v6];
  [v8 removeRacGUIDForStoreID:a3 withReply:v6];
}

- (void)setMigrationState:(int64_t)a3 forStoreIDs:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = BLServiceProxyLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] setMigrationState:forStoreIDs:", v12, 2u);
  }

  v11 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v8];
  [v11 setMigrationState:a3 forStoreIDs:v9 withReply:v8];
}

- (void)migrationInfoWithStoreID:(int64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = BLServiceProxyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] migrationInfoWithStoreID:", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D38AB4;
  v10[3] = &unk_278D175E8;
  v11 = v6;
  v8 = v6;
  v9 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v10];
  [v9 migrationInfoWithStoreID:a3 withReply:v8];
}

- (void)migrationInfosWithStoreIDs:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] migrationInfosWithStoreIDs:", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D38C30;
  v11[3] = &unk_278D175E8;
  v12 = v6;
  v9 = v6;
  v10 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v11];
  [v10 migrationInfosWithStoreIDs:v7 withReply:v9];
}

- (void)migrationInfosWithStates:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] migrationInfosWithStates:", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D38DAC;
  v11[3] = &unk_278D175E8;
  v12 = v6;
  v9 = v6;
  v10 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v11];
  [v10 migrationInfosWithStates:v7 withReply:v9];
}

- (void)removeMigrationInfoForStoreID:(int64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = BLServiceProxyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] removeMigrationInfoForStoreID:", v9, 2u);
  }

  v8 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v6];
  [v8 removeMigrationInfoForStoreID:a3 withReply:v6];
}

- (void)removeAllMigrationInfosExcludingStates:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] removeAllMigrationInfosExcludingStates:", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v6];
  [v9 removeAllMigrationInfosExcludingStates:v7 withReply:v6];
}

- (void)prepareForRemoveAppWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] prepareForRemoveAppWithReply", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v4];
  [v6 prepareForRemoveAppWithReply:v4];
}

- (void)getCrashSimulationOverrideValuesWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] getValueSimulateCrashAtInstallDuringFinishWithReply:", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D393B0;
  v8[3] = &unk_278D175E8;
  v9 = v4;
  v6 = v4;
  v7 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v8];
  [v7 getCrashSimulationOverrideValuesWithReply:v6];
}

- (void)resetAllCrashSimulationOverridesWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] resetAllCrashSimulationOverridesWithReply:", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v4];
  [v6 resetAllCrashSimulationOverridesWithReply:v4];
}

- (void)getValueSimulateDeviceOutOfSpaceWithReply:(id)a3
{
  v4 = a3;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] getValueSimulateDeviceOutOfSpaceWithReply:", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D3966C;
  v8[3] = &unk_278D175E8;
  v9 = v4;
  v6 = v4;
  v7 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v8];
  [v7 getValueSimulateDeviceOutOfSpaceWithReply:v6];
}

- (BLServiceProxyConnectionMonitoring)connectionMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionMonitor);

  return WeakRetained;
}

@end