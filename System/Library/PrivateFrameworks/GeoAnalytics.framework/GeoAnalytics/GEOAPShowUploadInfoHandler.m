@interface GEOAPShowUploadInfoHandler
- (GEOAPShowUploadInfoHandler)initWithHistoryVisitorBlock:(id)a3 completion:(id)a4;
- (GEOAPShowUploadInfoHandler)initWithInflightVisitorBlock:(id)a3 completion:(id)a4;
- (void)endHistoricalData;
- (void)endInflightData;
- (void)showInflight;
@end

@implementation GEOAPShowUploadInfoHandler

- (void)endInflightData
{
  (*(self->_completionBlock + 2))();
  [(NSXPCConnection *)self->_xpcConn invalidate];
  xpcConn = self->_xpcConn;
  self->_xpcConn = 0;
}

- (void)showInflight
{
  if (!self->_inflightVisitorBlock)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v7 = 0;
    v2 = MEMORY[0x1E69E9C10];
    v3 = "Assertion failed: _inflightVisitorBlock != ((void*)0)";
    v4 = &v7;
    goto LABEL_11;
  }

  if (!self->_completionBlock)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    *buf = 0;
    v2 = MEMORY[0x1E69E9C10];
    v3 = "Assertion failed: _completionBlock != ((void*)0)";
    v4 = buf;
LABEL_11:
    _os_log_fault_impl(&dword_1AB634000, v2, OS_LOG_TYPE_FAULT, v3, v4, 2u);
    return;
  }

  v5 = [(NSXPCConnection *)self->_xpcConn remoteObjectProxy];
  [v5 showInflight];
}

- (GEOAPShowUploadInfoHandler)initWithInflightVisitorBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = GEOAPShowUploadInfoHandler;
  v8 = [(GEOAPShowUploadInfoHandler *)&v16 init];
  if (v8)
  {
    v9 = [GEOAPServiceRemote _daemonConnectionWithMapsDebugPanelExportedClient:v8];
    xpcConn = v8->_xpcConn;
    v8->_xpcConn = v9;

    v11 = [v6 copy];
    inflightVisitorBlock = v8->_inflightVisitorBlock;
    v8->_inflightVisitorBlock = v11;

    v13 = [v7 copy];
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v13;
  }

  return v8;
}

- (void)endHistoricalData
{
  (*(self->_completionBlock + 2))();
  [(NSXPCConnection *)self->_xpcConn invalidate];
  xpcConn = self->_xpcConn;
  self->_xpcConn = 0;
}

- (GEOAPShowUploadInfoHandler)initWithHistoryVisitorBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = GEOAPShowUploadInfoHandler;
  v8 = [(GEOAPShowUploadInfoHandler *)&v16 init];
  if (v8)
  {
    v9 = [GEOAPServiceRemote _daemonConnectionWithMapsDebugPanelExportedClient:v8];
    xpcConn = v8->_xpcConn;
    v8->_xpcConn = v9;

    v11 = [v6 copy];
    historyVisitorBlock = v8->_historyVisitorBlock;
    v8->_historyVisitorBlock = v11;

    v13 = [v7 copy];
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v13;
  }

  return v8;
}

@end