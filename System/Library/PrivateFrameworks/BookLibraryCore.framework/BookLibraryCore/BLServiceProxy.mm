@interface BLServiceProxy
- (BLServiceProxy)initWithProgressReceiver:(id)receiver error:(id *)error;
- (BLServiceProxyConnectionMonitoring)connectionMonitor;
- (id)_remoteObjectWithErrorHandler:(id)handler;
- (id)_synchronousRemoteObjectWithErrorHandler:(id)handler;
- (void)_createAndStartConnection;
- (void)cancelAllActiveDownloadsWithReply:(id)reply;
- (void)cancelDownloadWithID:(id)d withReply:(id)reply;
- (void)dealloc;
- (void)downloadWithPermlink:(id)permlink title:(id)title reply:(id)reply;
- (void)fetchDownloadFromDownloadID:(id)d withReply:(id)reply;
- (void)fetchDownloadListWithReply:(id)reply;
- (void)getCrashSimulationOverrideValuesWithReply:(id)reply;
- (void)getValueSimulateDeviceOutOfSpaceWithReply:(id)reply;
- (void)migrationInfoWithStoreID:(int64_t)d withReply:(id)reply;
- (void)migrationInfosWithStates:(id)states withReply:(id)reply;
- (void)migrationInfosWithStoreIDs:(id)ds withReply:(id)reply;
- (void)monitorProgressWithReply:(id)reply;
- (void)pauseDownloadWithID:(id)d withReply:(id)reply;
- (void)prepareForRemoveAppWithReply:(id)reply;
- (void)processAutomaticDownloadsWithReply:(id)reply;
- (void)purchaseWithRequest:(id)request uiHostProxy:(id)proxy reply:(id)reply;
- (void)racGUIDForStoreID:(int64_t)d withReply:(id)reply;
- (void)reloadFromServerWithReply:(id)reply;
- (void)removeAllMigrationInfosExcludingStates:(id)states withReply:(id)reply;
- (void)removeMigrationInfoForStoreID:(int64_t)d withReply:(id)reply;
- (void)removeRacGUIDForStoreID:(int64_t)d withReply:(id)reply;
- (void)requestDownloadWithParameters:(id)parameters reply:(id)reply;
- (void)requestDownloadsWithManifestRequest:(id)request uiHostProxy:(id)proxy reply:(id)reply;
- (void)requestDownloadsWithRestoreContentRequestItems:(id)items reply:(id)reply;
- (void)resetAllCrashSimulationOverridesWithReply:(id)reply;
- (void)restartDownloadWithID:(id)d withReply:(id)reply;
- (void)resumeDownloadWithID:(id)d withReply:(id)reply;
- (void)setMigrationState:(int64_t)state forStoreIDs:(id)ds withReply:(id)reply;
- (void)setRacGUID:(id)d forStoreID:(int64_t)iD withReply:(id)reply;
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
  selfCopy = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&self->_connectionLock);
  v6(v3);
  os_unfair_lock_unlock(&self->_connectionLock);

  if (*(v11 + 24) == 1)
  {
    connectionMonitor = [(BLServiceProxy *)self connectionMonitor];
    [connectionMonitor reconnectingToServiceForProxy:self];
  }

  _Block_object_dispose(&v10, 8);
}

- (BLServiceProxy)initWithProgressReceiver:(id)receiver error:(id *)error
{
  receiverCopy = receiver;
  v15.receiver = self;
  v15.super_class = BLServiceProxy;
  v7 = [(BLServiceProxy *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_progressReceiver, receiver);
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

- (id)_remoteObjectWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  [(BLServiceProxy *)self _createAndStartConnection];
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D36E30;
  v9[3] = &unk_278D175E8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)_synchronousRemoteObjectWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  [(BLServiceProxy *)self _createAndStartConnection];
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D36FD0;
  v9[3] = &unk_278D175E8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (void)fetchDownloadListWithReply:(id)reply
{
  replyCopy = reply;
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
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v8];
  [v7 fetchDownloadListWithReply:v6];
}

- (void)fetchDownloadFromDownloadID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
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
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v11];
  [v10 fetchDownloadFromDownloadID:dCopy withReply:v9];
}

- (void)pauseDownloadWithID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] pauseDownloadWithID", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v9 pauseDownloadWithID:dCopy withReply:replyCopy];
}

- (void)resumeDownloadWithID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] resumeDownloadWithID", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v9 resumeDownloadWithID:dCopy withReply:replyCopy];
}

- (void)restartDownloadWithID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] restartDownloadWithID", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v9 restartDownloadWithID:dCopy withReply:replyCopy];
}

- (void)cancelDownloadWithID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] cancelDownloadWithID", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v9 cancelDownloadWithID:dCopy withReply:replyCopy];
}

- (void)cancelAllActiveDownloadsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] cancelAllActiveDownloadsWithReply", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v6 cancelAllActiveDownloadsWithReply:replyCopy];
}

- (void)purchaseWithRequest:(id)request uiHostProxy:(id)proxy reply:(id)reply
{
  replyCopy = reply;
  proxyCopy = proxy;
  requestCopy = request;
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
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v14];
  [v13 purchaseWithRequest:requestCopy uiHostProxy:proxyCopy reply:v12];
}

- (void)downloadWithPermlink:(id)permlink title:(id)title reply:(id)reply
{
  replyCopy = reply;
  titleCopy = title;
  permlinkCopy = permlink;
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
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v14];
  [v13 downloadWithPermlink:permlinkCopy title:titleCopy reply:v12];
}

- (void)requestDownloadWithParameters:(id)parameters reply:(id)reply
{
  replyCopy = reply;
  parametersCopy = parameters;
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
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v11];
  [v10 requestDownloadWithParameters:parametersCopy reply:v9];
}

- (void)requestDownloadsWithRestoreContentRequestItems:(id)items reply:(id)reply
{
  replyCopy = reply;
  itemsCopy = items;
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
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v11];
  [v10 requestDownloadsWithRestoreContentRequestItems:itemsCopy reply:v9];
}

- (void)requestDownloadsWithManifestRequest:(id)request uiHostProxy:(id)proxy reply:(id)reply
{
  replyCopy = reply;
  proxyCopy = proxy;
  requestCopy = request;
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
  v15 = replyCopy;
  v12 = replyCopy;
  v13 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v14];
  [v13 requestDownloadsWithManifestRequest:requestCopy uiHostProxy:proxyCopy reply:v12];
}

- (void)processAutomaticDownloadsWithReply:(id)reply
{
  replyCopy = reply;
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
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v8];
  [v7 processAutomaticDownloadsWithReply:v6];
}

- (void)reloadFromServerWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] reloadFromServerWithReply", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v6 reloadFromServerWithReply:replyCopy];
}

- (void)monitorProgressWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] monitorProgressWithReply", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v6 monitorProgressWithReply:replyCopy];
}

- (void)setRacGUID:(id)d forStoreID:(int64_t)iD withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v10 = BLServiceProxyLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] setRacGUID:forStoreID:", v12, 2u);
  }

  v11 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:replyCopy];
  [v11 setRacGUID:dCopy forStoreID:iD withReply:replyCopy];
}

- (void)racGUIDForStoreID:(int64_t)d withReply:(id)reply
{
  replyCopy = reply;
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
  v11 = replyCopy;
  v8 = replyCopy;
  v9 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v10];
  [v9 racGUIDForStoreID:d withReply:v8];
}

- (void)removeRacGUIDForStoreID:(int64_t)d withReply:(id)reply
{
  replyCopy = reply;
  v7 = BLServiceProxyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] removeRacGUIDForStoreID:", v9, 2u);
  }

  v8 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:replyCopy];
  [v8 removeRacGUIDForStoreID:d withReply:replyCopy];
}

- (void)setMigrationState:(int64_t)state forStoreIDs:(id)ds withReply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  v10 = BLServiceProxyLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] setMigrationState:forStoreIDs:", v12, 2u);
  }

  v11 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:replyCopy];
  [v11 setMigrationState:state forStoreIDs:dsCopy withReply:replyCopy];
}

- (void)migrationInfoWithStoreID:(int64_t)d withReply:(id)reply
{
  replyCopy = reply;
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
  v11 = replyCopy;
  v8 = replyCopy;
  v9 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v10];
  [v9 migrationInfoWithStoreID:d withReply:v8];
}

- (void)migrationInfosWithStoreIDs:(id)ds withReply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
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
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v11];
  [v10 migrationInfosWithStoreIDs:dsCopy withReply:v9];
}

- (void)migrationInfosWithStates:(id)states withReply:(id)reply
{
  replyCopy = reply;
  statesCopy = states;
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
  v12 = replyCopy;
  v9 = replyCopy;
  v10 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:v11];
  [v10 migrationInfosWithStates:statesCopy withReply:v9];
}

- (void)removeMigrationInfoForStoreID:(int64_t)d withReply:(id)reply
{
  replyCopy = reply;
  v7 = BLServiceProxyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] removeMigrationInfoForStoreID:", v9, 2u);
  }

  v8 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:replyCopy];
  [v8 removeMigrationInfoForStoreID:d withReply:replyCopy];
}

- (void)removeAllMigrationInfosExcludingStates:(id)states withReply:(id)reply
{
  replyCopy = reply;
  statesCopy = states;
  v8 = BLServiceProxyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] removeAllMigrationInfosExcludingStates:", v10, 2u);
  }

  v9 = [(BLServiceProxy *)self _synchronousRemoteObjectWithErrorHandler:replyCopy];
  [v9 removeAllMigrationInfosExcludingStates:statesCopy withReply:replyCopy];
}

- (void)prepareForRemoveAppWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] prepareForRemoveAppWithReply", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v6 prepareForRemoveAppWithReply:replyCopy];
}

- (void)getCrashSimulationOverrideValuesWithReply:(id)reply
{
  replyCopy = reply;
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
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v8];
  [v7 getCrashSimulationOverrideValuesWithReply:v6];
}

- (void)resetAllCrashSimulationOverridesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceProxyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEBUG, "[BLServiceProxy] resetAllCrashSimulationOverridesWithReply:", v7, 2u);
  }

  v6 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:replyCopy];
  [v6 resetAllCrashSimulationOverridesWithReply:replyCopy];
}

- (void)getValueSimulateDeviceOutOfSpaceWithReply:(id)reply
{
  replyCopy = reply;
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
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(BLServiceProxy *)self _remoteObjectWithErrorHandler:v8];
  [v7 getValueSimulateDeviceOutOfSpaceWithReply:v6];
}

- (BLServiceProxyConnectionMonitoring)connectionMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionMonitor);

  return WeakRetained;
}

@end