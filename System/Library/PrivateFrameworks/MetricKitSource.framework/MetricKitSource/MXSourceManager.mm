@interface MXSourceManager
+ (id)sharedManager;
- (MXSourceManager)init;
- (id)_createXPCConnection;
- (void)sendDiagnostic:(id)diagnostic forDate:(id)date andSourceID:(int64_t)d;
- (void)sendMetrics:(id)metrics forDate:(id)date andSourceID:(int64_t)d;
- (void)simulatePayloadDeliveryForClient:(id)client;
@end

@implementation MXSourceManager

- (MXSourceManager)init
{
  v6.receiver = self;
  v6.super_class = MXSourceManager;
  v2 = [(MXSourceManager *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.metrickit.sourcemanager", "");
    sourceManagerLogHandle = v2->_sourceManagerLogHandle;
    v2->_sourceManagerLogHandle = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MXSourceManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __32__MXSourceManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)_createXPCConnection
{
  connection = self->_connection;
  if (connection)
  {
    v3 = connection;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.metrickitsource.xpc" options:4096];
    if (v3)
    {
      v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286A1FF58];
      [(NSXPCConnection *)v3 setRemoteObjectInterface:v5];

      v6 = MEMORY[0x277CBEB98];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
      v13 = MEMORY[0x277CBEB98];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = [v13 setWithObjects:{v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
      remoteObjectInterface = [(NSXPCConnection *)v3 remoteObjectInterface];
      [remoteObjectInterface setClasses:v12 forSelector:sel_writeMetricDataWithPayload_ argumentIndex:0 ofReply:0];

      remoteObjectInterface2 = [(NSXPCConnection *)v3 remoteObjectInterface];
      [remoteObjectInterface2 setClasses:v20 forSelector:sel_writeDiagnosticDataWithPayload_ argumentIndex:0 ofReply:0];

      v23 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286A1E8E0];
      [(NSXPCConnection *)v3 setExportedInterface:v23];

      [(NSXPCConnection *)v3 setExportedObject:self];
      [(NSXPCConnection *)v3 resume];
    }
  }

  return v3;
}

- (void)sendMetrics:(id)metrics forDate:(id)date andSourceID:(int64_t)d
{
  metricsCopy = metrics;
  dateCopy = date;
  _createXPCConnection = [(MXSourceManager *)self _createXPCConnection];
  connection = self->_connection;
  self->_connection = _createXPCConnection;

  if (self->_connection)
  {
    v11 = [[MXSourceXPCPayload alloc] initWithSourceID:d withDateStamp:dateCopy andMetrics:metricsCopy];
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy writeMetricDataWithPayload:v11];
  }
}

- (void)sendDiagnostic:(id)diagnostic forDate:(id)date andSourceID:(int64_t)d
{
  diagnosticCopy = diagnostic;
  dateCopy = date;
  _createXPCConnection = [(MXSourceManager *)self _createXPCConnection];
  connection = self->_connection;
  self->_connection = _createXPCConnection;

  if (self->_connection)
  {
    v11 = [[MXSourceXPCPayload alloc] initWithSourceID:d withDateStamp:dateCopy andMetrics:diagnosticCopy];
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy writeDiagnosticDataWithPayload:v11];
  }
}

- (void)simulatePayloadDeliveryForClient:(id)client
{
  clientCopy = client;
  _createXPCConnection = [(MXSourceManager *)self _createXPCConnection];
  connection = self->_connection;
  self->_connection = _createXPCConnection;

  v6 = self->_connection;
  if (v6)
  {
    remoteObjectProxy = [(NSXPCConnection *)v6 remoteObjectProxy];
    [remoteObjectProxy deliverSamplePayloadForClient:clientCopy];
  }
}

@end