@interface IPLocalNullXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IPLocalNullXPCServer)init;
- (id)newClientConnection;
- (void)actionBarrier:(id)barrier;
- (void)getActiveInstallations:(id)installations;
- (void)getAllInstallableStates:(id)states;
- (void)getProgressForIdentity:(id)identity completion:(id)completion;
- (void)registerAsProgressObserver:(id)observer;
@end

@implementation IPLocalNullXPCServer

- (IPLocalNullXPCServer)init
{
  v8.receiver = self;
  v8.super_class = IPLocalNullXPCServer;
  v2 = [(IPLocalNullXPCServer *)&v8 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    endpoint = [(NSXPCListener *)v2->_listener endpoint];
    listenerEndpoint = v2->_listenerEndpoint;
    v2->_listenerEndpoint = endpoint;

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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = IPServerExportedInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = IPClientExportedInterface();
  [connectionCopy setRemoteObjectInterface:v7];

  [connectionCopy resume];
  return 1;
}

- (void)actionBarrier:(id)barrier
{
  v4 = *MEMORY[0x277CCA5B8];
  barrierCopy = barrier;
  v6 = _IPMakeNSErrorImpl(v4, 78, "[IPLocalNullXPCServer actionBarrier:]", 51, 0);
  (*(barrier + 2))(barrierCopy, v6);
}

- (void)getActiveInstallations:(id)installations
{
  v4 = *MEMORY[0x277CCA5B8];
  installationsCopy = installations;
  v6 = _IPMakeNSErrorImpl(v4, 78, "[IPLocalNullXPCServer getActiveInstallations:]", 56, 0);
  (*(installations + 2))(installationsCopy, 0, v6);
}

- (void)getAllInstallableStates:(id)states
{
  v4 = *MEMORY[0x277CCA5B8];
  statesCopy = states;
  v6 = _IPMakeNSErrorImpl(v4, 78, "[IPLocalNullXPCServer getAllInstallableStates:]", 61, 0);
  (*(states + 2))(statesCopy, 0, v6);
}

- (void)getProgressForIdentity:(id)identity completion:(id)completion
{
  v5 = *MEMORY[0x277CCA5B8];
  completionCopy = completion;
  v7 = _IPMakeNSErrorImpl(v5, 78, "[IPLocalNullXPCServer getProgressForIdentity:completion:]", 66, 0);
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)registerAsProgressObserver:(id)observer
{
  v4 = *MEMORY[0x277CCA5B8];
  observerCopy = observer;
  v6 = _IPMakeNSErrorImpl(v4, 78, "[IPLocalNullXPCServer registerAsProgressObserver:]", 71, 0);
  (*(observer + 2))(observerCopy, v6);
}

@end