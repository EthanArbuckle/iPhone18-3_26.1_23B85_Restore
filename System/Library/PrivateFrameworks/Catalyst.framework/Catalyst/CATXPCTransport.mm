@interface CATXPCTransport
+ (id)new;
- (BOOL)BOOLValueForEntitlement:(id)entitlement;
- (CATXPCTransport)init;
- (CATXPCTransport)initWithXPCConnection:(id)connection;
- (id)operationToSendMessage:(id)message;
- (void)dealloc;
- (void)didInvalidate;
- (void)invalidateConnection;
- (void)processMessage:(id)message completion:(id)completion;
- (void)resumeConnection;
- (void)setUpConnection;
- (void)suspendConnection;
- (void)tearDownConnection;
- (void)transportSendMessageOperation:(id)operation processMessage:(id)message;
@end

@implementation CATXPCTransport

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATXPCTransport.m" lineNumber:109 description:{@"%@ cannot call %@", self, v5}];

  return 0;
}

- (CATXPCTransport)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATXPCTransport.m" lineNumber:116 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATXPCTransport)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [(CATXPCTransport *)a2 initWithXPCConnection:?];
  }

  v10.receiver = self;
  v10.super_class = CATXPCTransport;
  v7 = [(CATTransport *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mConnection, connection);
  }

  return v8;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CATXPCTransport.m" lineNumber:151 description:{@"%@ cannot call %@ when underlying connection has not been torn down.", a2, v4}];
}

- (BOOL)BOOLValueForEntitlement:(id)entitlement
{
  v3 = [(CATXPCTransport *)self valueForEntitlement:entitlement];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)resumeConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  self->mConnectionHasResumed = 1;
  [(CATXPCTransport *)self setUpConnection];
  mConnection = self->mConnection;

  [(NSXPCConnection *)mConnection resume];
}

- (void)suspendConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(NSXPCConnection *)self->mConnection suspend];
  [(CATXPCTransport *)self tearDownConnection];
  self->mConnectionHasResumed = 0;
}

- (void)invalidateConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  self->mConnectionShouldInvalidate = 1;
  [(NSXPCConnection *)self->mConnection invalidate];
  if (!self->mConnectionHasResumed)
  {
    [(CATXPCTransport *)self resumeConnection];
  }

  if (self->mConnectionHasInvalidated)
  {

    [(CATXPCTransport *)self didInvalidate];
  }
}

- (id)operationToSendMessage:(id)message
{
  messageCopy = message;
  v5 = objc_opt_new();
  [v5 setTransport:self];
  [v5 setMessage:messageCopy];

  return v5;
}

- (void)didInvalidate
{
  [(CATXPCTransport *)self tearDownConnection];
  v3.receiver = self;
  v3.super_class = CATXPCTransport;
  [(CATTransport *)&v3 didInvalidate];
}

- (void)processMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  v9 = objc_opt_new();
  [v9 setBlock:completionCopy];
  [messageCopy setCat_assertion:v9];
  [(CATTransport *)self didReceiveMessage:messageCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)transportSendMessageOperation:(id)operation processMessage:(id)message
{
  messageCopy = message;
  operationCopy = operation;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  remoteObjectProxy = [(NSXPCConnection *)self->mConnection remoteObjectProxy];
  v9 = remoteObjectProxy;
  if (remoteObjectProxy)
  {
    [remoteObjectProxy processMessage:messageCopy completion:&__block_literal_global_24];
    [operationCopy didProcessMessage];
  }

  else
  {
    v10 = CATErrorWithCodeAndUserInfo(404, 0);
    [operationCopy didFailWithError:v10];

    operationCopy = v10;
  }
}

- (void)setUpConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mConnection = self->mConnection;
  v5 = CATGetCatalystQueue();
  [(NSXPCConnection *)mConnection _setQueue:v5];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285617770];
  [(NSXPCConnection *)self->mConnection setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->mConnection setExportedObject:self];
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285617770];
  [(NSXPCConnection *)self->mConnection setExportedInterface:v7];

  objc_initWeak(&location, self);
  v8 = self->mConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__CATXPCTransport_setUpConnection__block_invoke;
  v12[3] = &unk_278DA7120;
  objc_copyWeak(&v13, &location);
  [(NSXPCConnection *)v8 setInterruptionHandler:v12];
  v9 = self->mConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__CATXPCTransport_setUpConnection__block_invoke_2;
  v10[3] = &unk_278DA7120;
  objc_copyWeak(&v11, &location);
  [(NSXPCConnection *)v9 setInvalidationHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __34__CATXPCTransport_setUpConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4097 userInfo:0];
  [WeakRetained didInterruptWithError:v1];
}

void __34__CATXPCTransport_setUpConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (WeakRetained[65] == 1)
    {
      [WeakRetained didInvalidate];
    }

    else
    {
      WeakRetained[66] = 1;
      v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4097 userInfo:0];
      [v3 didInterruptWithError:v2];
    }

    WeakRetained = v3;
  }
}

- (void)tearDownConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(NSXPCConnection *)self->mConnection setRemoteObjectInterface:0];
  [(NSXPCConnection *)self->mConnection setExportedObject:0];
  [(NSXPCConnection *)self->mConnection setExportedInterface:0];
  [(NSXPCConnection *)self->mConnection setInterruptionHandler:0];
  mConnection = self->mConnection;

  [(NSXPCConnection *)mConnection setInvalidationHandler:0];
}

- (void)initWithXPCConnection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATXPCTransport.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"xpcConnection"}];
}

@end