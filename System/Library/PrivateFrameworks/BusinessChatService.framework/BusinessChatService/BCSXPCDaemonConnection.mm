@interface BCSXPCDaemonConnection
- (BCSXPCDaemonProtocol)remoteObjectProxy;
- (id)initWithMachServiceName:(void *)name exportedClient:;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
@end

@implementation BCSXPCDaemonConnection

- (void)resume
{
  if (self)
  {
    self = self->_connection;
  }

  [(BCSXPCDaemonConnection *)self resume];
}

- (id)initWithMachServiceName:(void *)name exportedClient:
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  nameCopy = name;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = BCSXPCDaemonConnection;
    self = objc_msgSendSuper2(&v19, sel_init);
    if (self)
    {
      v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285465CF0];
      v8 = MEMORY[0x277CBEB98];
      v21[0] = objc_opt_class();
      v21[1] = objc_opt_class();
      v21[2] = objc_opt_class();
      v21[3] = objc_opt_class();
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
      v10 = [v8 setWithArray:v9];
      [v7 setClasses:v10 forSelector:sel_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion_ argumentIndex:0 ofReply:1];

      v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v5 options:0];
      v12 = self[1];
      self[1] = v11;

      [self[1] setRemoteObjectInterface:v7];
      v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285463D10];
      v14 = MEMORY[0x277CBEB98];
      v20[0] = objc_opt_class();
      v20[1] = objc_opt_class();
      v20[2] = objc_opt_class();
      v20[3] = objc_opt_class();
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
      v16 = [v14 setWithArray:v15];
      [v13 setClasses:v16 forSelector:sel_didFetchBusinessMetadataForEmailsForRequestId_error_reply_ argumentIndex:0 ofReply:0];

      [self[1] setExportedInterface:v13];
      [self[1] setExportedObject:nameCopy];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = BCSXPCDaemonConnection;
  [(BCSXPCDaemonConnection *)&v5 dealloc];
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  if (self)
  {
    self = self->_connection;
  }

  return [(BCSXPCDaemonConnection *)self synchronousRemoteObjectProxyWithErrorHandler:handler];
}

- (BCSXPCDaemonProtocol)remoteObjectProxy
{
  if (self)
  {
    self = self->_connection;
  }

  return [(BCSXPCDaemonConnection *)self remoteObjectProxy];
}

- (void)invalidate
{
  if (self)
  {
    self = self->_connection;
  }

  [(BCSXPCDaemonConnection *)self invalidate];
}

@end