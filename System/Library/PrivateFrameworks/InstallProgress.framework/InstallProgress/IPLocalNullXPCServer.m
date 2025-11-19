@interface IPLocalNullXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IPLocalNullXPCServer)init;
- (id)newClientConnection;
- (void)actionBarrier:(id)a3;
- (void)getActiveInstallations:(id)a3;
- (void)getAllInstallableStates:(id)a3;
- (void)getProgressForIdentity:(id)a3 completion:(id)a4;
- (void)registerAsProgressObserver:(id)a3;
@end

@implementation IPLocalNullXPCServer

- (IPLocalNullXPCServer)init
{
  v8.receiver = self;
  v8.super_class = IPLocalNullXPCServer;
  v2 = [(IPLocalNullXPCServer *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v5 = [(NSXPCListener *)v2->_listener endpoint];
    listenerEndpoint = v2->_listenerEndpoint;
    v2->_listenerEndpoint = v5;

    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (id)newClientConnection
{
  v3 = objc_alloc(MEMORY[0x277CCAE80]);
  listenerEndpoint = self->_listenerEndpoint;

  return [v3 initWithListenerEndpoint:listenerEndpoint];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = IPServerExportedInterface();
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  v7 = IPClientExportedInterface();
  [v5 setRemoteObjectInterface:v7];

  [v5 resume];
  return 1;
}

- (void)actionBarrier:(id)a3
{
  v4 = *MEMORY[0x277CCA5B8];
  v5 = a3;
  v6 = _IPMakeNSErrorImpl(v4, 78, "[IPLocalNullXPCServer actionBarrier:]", 51, 0);
  (*(a3 + 2))(v5, v6);
}

- (void)getActiveInstallations:(id)a3
{
  v4 = *MEMORY[0x277CCA5B8];
  v5 = a3;
  v6 = _IPMakeNSErrorImpl(v4, 78, "[IPLocalNullXPCServer getActiveInstallations:]", 56, 0);
  (*(a3 + 2))(v5, 0, v6);
}

- (void)getAllInstallableStates:(id)a3
{
  v4 = *MEMORY[0x277CCA5B8];
  v5 = a3;
  v6 = _IPMakeNSErrorImpl(v4, 78, "[IPLocalNullXPCServer getAllInstallableStates:]", 61, 0);
  (*(a3 + 2))(v5, 0, v6);
}

- (void)getProgressForIdentity:(id)a3 completion:(id)a4
{
  v5 = *MEMORY[0x277CCA5B8];
  v6 = a4;
  v7 = _IPMakeNSErrorImpl(v5, 78, "[IPLocalNullXPCServer getProgressForIdentity:completion:]", 66, 0);
  (*(a4 + 2))(v6, 0, v7);
}

- (void)registerAsProgressObserver:(id)a3
{
  v4 = *MEMORY[0x277CCA5B8];
  v5 = a3;
  v6 = _IPMakeNSErrorImpl(v4, 78, "[IPLocalNullXPCServer registerAsProgressObserver:]", 71, 0);
  (*(a3 + 2))(v5, v6);
}

@end