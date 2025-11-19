@interface GEOAPServiceRemote
+ (id)_daemonConnectionWithExportedClient:(uint64_t)a1;
+ (id)_daemonConnectionWithExportedProtocol:(id)a3 instance:(id)a4;
+ (id)_daemonConnectionWithMapsDebugPanelExportedClient:(uint64_t)a1;
- (GEOAPServiceRemote)init;
- (id)_sharedDaemonConnection;
- (void)dealloc;
- (void)flushEvalData;
- (void)flushUploadHistoryWithCompletion:(id)a3;
- (void)reportDailySettings:(id)a3 completion:(id)a4;
- (void)reportLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 completion:(id)a5;
- (void)runAggregationTasks;
- (void)showEvalDataWithVisitorBlock:(id)a3;
- (void)showInflightUploadsWithVisitorBlock:(id)a3 completion:(id)a4;
- (void)showUploadCounts:(id)a3;
- (void)streamWithLogMsgBlock:(id)a3 dailyUsageBlock:(id)a4 monthlyUsageBlock:(id)a5;
@end

@implementation GEOAPServiceRemote

- (GEOAPServiceRemote)init
{
  v11.receiver = self;
  v11.super_class = GEOAPServiceRemote;
  v2 = [(GEOAPServiceRemote *)&v11 init];
  v3 = v2;
  if (v2)
  {
    daemonSvc = v2->_daemonSvc;
    v2->_daemonSvc = 0;

    conn = v3->_conn;
    v3->_conn = 0;

    v6 = geo_isolater_create();
    xpcIso = v3->_xpcIso;
    v3->_xpcIso = v6;

    v8 = GEOGetGEOAPRemoteAnalyticsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AB634000, v8, OS_LOG_TYPE_DEBUG, "hello", v10, 2u);
    }
  }

  return v3;
}

- (id)_sharedDaemonConnection
{
  v11 = self->_xpcIso;
  _geo_isolate_lock();
  daemonSvc = self->_daemonSvc;
  if (daemonSvc)
  {
    v4 = daemonSvc;
  }

  else
  {
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F20798D0];
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.geoanalyticsd" options:4096];
    [v6 setRemoteObjectInterface:v5];
    [v6 setInterruptionHandler:&__block_literal_global_99_2933];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__GEOAPServiceRemote__sharedDaemonConnection__block_invoke_100;
    v10[3] = &unk_1E7959610;
    v10[4] = self;
    [v6 setInvalidationHandler:v10];
    [v6 resume];
    objc_storeStrong(&self->_conn, v6);
    v7 = [(NSXPCConnection *)self->_conn remoteObjectProxy];
    v8 = self->_daemonSvc;
    self->_daemonSvc = v7;

    v4 = self->_daemonSvc;
  }

  _geo_isolate_unlock();

  return v4;
}

- (void)showUploadCounts:(id)a3
{
  v4 = a3;
  v5 = [(GEOAPServiceRemote *)self _sharedDaemonConnection];
  [v5 showUploadCounts:v4];
}

- (void)flushUploadHistoryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GEOAPServiceRemote *)self _sharedDaemonConnection];
  [v5 flushUploadHistoryWithCompletion:v4];
}

- (void)showInflightUploadsWithVisitorBlock:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[GEOAPShowUploadInfoHandler alloc] initWithInflightVisitorBlock:v6 completion:v5];

  [(GEOAPShowUploadInfoHandler *)v7 showInflight];
}

- (void)runAggregationTasks
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[GEOAPServiceRemote runAggregationTasks]";
    _os_log_impl(&dword_1AB634000, v3, OS_LOG_TYPE_DEBUG, "%s", &v6, 0xCu);
  }

  v4 = [(GEOAPServiceRemote *)self _sharedDaemonConnection];
  [v4 runAggregationTasks];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)streamWithLogMsgBlock:(id)a3 dailyUsageBlock:(id)a4 monthlyUsageBlock:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [GEOAPShowEvalHandler alloc];
  v11 = v9;
  v12 = v8;
  v13 = v7;
  if (v10)
  {
    v30.receiver = v10;
    v30.super_class = GEOAPShowEvalHandler;
    v10 = [(GEOAPServiceRemote *)&v30 init];
    if (v10)
    {
      v14 = [GEOAPServiceRemote _daemonConnectionWithExportedClient:v10];
      xpcConn = v10->_xpcConn;
      v10->_xpcConn = v14;

      v16 = GEOGetGEOAPShowEvalHandlerAnalyticsLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = v10->_xpcConn;
        *buf = 138412290;
        v32 = v17;
        _os_log_impl(&dword_1AB634000, v16, OS_LOG_TYPE_DEBUG, "hello: %@", buf, 0xCu);
      }

      v18 = MEMORY[0x1AC5A12F0](v11);
      streamLogMsgBlock = v10->_streamLogMsgBlock;
      v10->_streamLogMsgBlock = v18;

      v20 = MEMORY[0x1AC5A12F0](v12);
      streamDailyUsageBlock = v10->_streamDailyUsageBlock;
      v10->_streamDailyUsageBlock = v20;

      v22 = MEMORY[0x1AC5A12F0](v13);
      streamMonthlyUsageBlock = v10->_streamMonthlyUsageBlock;
      v10->_streamMonthlyUsageBlock = v22;
    }
  }

  if (v10)
  {
    v24 = [(NSXPCConnection *)v10->_xpcConn remoteObjectProxy];
    [v24 streamEvalData];
  }

  v25 = dispatch_time(0, 99999999000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__GEOAPServiceRemote_streamWithLogMsgBlock_dailyUsageBlock_monthlyUsageBlock___block_invoke;
  block[3] = &unk_1E7959610;
  v29 = v10;
  v26 = v10;
  dispatch_after(v25, MEMORY[0x1E69E96A0], block);

  v27 = *MEMORY[0x1E69E9840];
}

void __78__GEOAPServiceRemote_streamWithLogMsgBlock_dailyUsageBlock_monthlyUsageBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AB634000, v2, OS_LOG_TYPE_DEBUG, "stream handler %p is exhausted", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)showEvalDataWithVisitorBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [GEOAPShowEvalHandler alloc];
  v5 = v3;
  if (v4 && (v21.receiver = v4, v21.super_class = GEOAPShowEvalHandler, (v6 = [(GEOAPServiceRemote *)&v21 init]) != 0))
  {
    v18 = v6;
    v7 = [GEOAPServiceRemote _daemonConnectionWithExportedClient:v6];
    conn = v18->_conn;
    v18->_conn = v7;

    v9 = [v5 copy];
    daemonSvc = v18->_daemonSvc;
    v18->_daemonSvc = v9;

    v11 = dispatch_semaphore_create(0);
    xpcIso = v18->_xpcIso;
    v18->_xpcIso = v11;

    v13 = GEOGetGEOAPShowEvalHandlerAnalyticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = v18->_conn;
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1AB634000, v13, OS_LOG_TYPE_DEBUG, "hello: %@", buf, 0xCu);
    }

    v15 = GEOGetGEOAPShowEvalHandlerAnalyticsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v21.receiver) = 136315138;
      *(&v21.receiver + 4) = "[GEOAPShowEvalHandler visit]";
      _os_log_impl(&dword_1AB634000, v15, OS_LOG_TYPE_DEBUG, "%s", &v21, 0xCu);
    }

    v16 = [(NSXPCConnection *)v18->_conn remoteObjectProxy];
    [v16 showEvalData];

    dispatch_semaphore_wait(v18->_xpcIso, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {

    v18 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)flushEvalData
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[GEOAPServiceRemote flushEvalData]";
    _os_log_impl(&dword_1AB634000, v3, OS_LOG_TYPE_DEBUG, "%s", &v6, 0xCu);
  }

  v4 = [(GEOAPServiceRemote *)self _sharedDaemonConnection];
  [v4 flushEvalData];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)reportDailySettings:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v15 = "[GEOAPServiceRemote reportDailySettings:completion:]";
    _os_log_impl(&dword_1AB634000, v8, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v9 = [(GEOAPServiceRemote *)self _sharedDaemonConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__GEOAPServiceRemote_reportDailySettings_completion___block_invoke;
  v12[3] = &unk_1E7959388;
  v13 = v6;
  v10 = v6;
  [v9 reportDailySettings:v7 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __53__GEOAPServiceRemote_reportDailySettings_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[GEOAPServiceRemote reportDailySettings:completion:]_block_invoke";
    _os_log_impl(&dword_1AB634000, v4, OS_LOG_TYPE_DEBUG, "complete %s", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __87__GEOAPServiceRemote_reportDailyUsageCountType_usageString_usageBool_appId_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[GEOAPServiceRemote reportDailyUsageCountType:usageString:usageBool:appId:completion:]_block_invoke";
    _os_log_impl(&dword_1AB634000, v4, OS_LOG_TYPE_DEBUG, "complete %s", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 completion:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[GEOAPServiceRemote reportLogMsg:uploadBatchId:completion:]";
    _os_log_impl(&dword_1AB634000, v10, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v11 = [(GEOAPServiceRemote *)self _sharedDaemonConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__GEOAPServiceRemote_reportLogMsg_uploadBatchId_completion___block_invoke;
  v14[3] = &unk_1E7959360;
  v15 = v8;
  v12 = v8;
  [v11 reportLogMsg:v9 uploadBatchId:a4 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __60__GEOAPServiceRemote_reportLogMsg_uploadBatchId_completion___block_invoke(uint64_t a1)
{
  v2 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AB634000, v2, OS_LOG_TYPE_DEBUG, "reportLogMsg completed", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __45__GEOAPServiceRemote__sharedDaemonConnection__block_invoke_100(uint64_t a1)
{
  v2 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB634000, v2, OS_LOG_TYPE_INFO, "xpc connection invalidated", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 24);
  return geo_isolate_sync();
}

void __45__GEOAPServiceRemote__sharedDaemonConnection__block_invoke_101(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void __45__GEOAPServiceRemote__sharedDaemonConnection__block_invoke()
{
  v0 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AB634000, v0, OS_LOG_TYPE_INFO, "xpc connection interrupted", v1, 2u);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_conn invalidate];
  v3.receiver = self;
  v3.super_class = GEOAPServiceRemote;
  [(GEOAPServiceRemote *)&v3 dealloc];
}

+ (id)_daemonConnectionWithExportedProtocol:(id)a3 instance:(id)a4
{
  v5 = MEMORY[0x1E696B0D0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 interfaceWithProtocol:&unk_1F20798D0];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v7];

  v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.geoanalyticsd" options:4096];
  [v10 setRemoteObjectInterface:v8];
  [v10 setExportedInterface:v9];
  [v10 setExportedObject:v6];

  [v10 setInterruptionHandler:&__block_literal_global_2942];
  [v10 setInvalidationHandler:&__block_literal_global_75_2943];
  [v10 resume];

  return v10;
}

void __69__GEOAPServiceRemote__daemonConnectionWithExportedProtocol_instance___block_invoke_73()
{
  v0 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AB634000, v0, OS_LOG_TYPE_INFO, "xpc connection with export invalidated", v1, 2u);
  }
}

void __69__GEOAPServiceRemote__daemonConnectionWithExportedProtocol_instance___block_invoke()
{
  v0 = GEOGetGEOAPRemoteAnalyticsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AB634000, v0, OS_LOG_TYPE_INFO, "xpc connection with export interrupted", v1, 2u);
  }
}

+ (id)_daemonConnectionWithExportedClient:(uint64_t)a1
{
  v2 = a2;
  v3 = [objc_opt_self() _daemonConnectionWithExportedProtocol:&unk_1F2060118 instance:v2];

  return v3;
}

+ (id)_daemonConnectionWithMapsDebugPanelExportedClient:(uint64_t)a1
{
  v2 = a2;
  v3 = [objc_opt_self() _daemonConnectionWithExportedProtocol:&unk_1F20602A0 instance:v2];

  return v3;
}

@end