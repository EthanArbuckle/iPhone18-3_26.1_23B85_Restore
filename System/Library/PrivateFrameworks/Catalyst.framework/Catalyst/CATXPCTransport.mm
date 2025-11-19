@interface CATXPCTransport
+ (id)new;
- (BOOL)BOOLValueForEntitlement:(id)a3;
- (CATXPCTransport)init;
- (CATXPCTransport)initWithXPCConnection:(id)a3;
- (id)operationToSendMessage:(id)a3;
- (void)dealloc;
- (void)didInvalidate;
- (void)invalidateConnection;
- (void)processMessage:(id)a3 completion:(id)a4;
- (void)resumeConnection;
- (void)setUpConnection;
- (void)suspendConnection;
- (void)tearDownConnection;
- (void)transportSendMessageOperation:(id)a3 processMessage:(id)a4;
@end

@implementation CATXPCTransport

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CATXPCTransport.m" lineNumber:109 description:{@"%@ cannot call %@", a1, v5}];

  return 0;
}

- (CATXPCTransport)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CATXPCTransport.m" lineNumber:116 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

- (CATXPCTransport)initWithXPCConnection:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CATXPCTransport *)a2 initWithXPCConnection:?];
  }

  v10.receiver = self;
  v10.super_class = CATXPCTransport;
  v7 = [(CATTransport *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mConnection, a3);
  }

  return v8;
}

- (void)dealloc
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CATXPCTransport.m" lineNumber:151 description:{@"%@ cannot call %@ when underlying connection has not been torn down.", a2, v4}];
}

- (BOOL)BOOLValueForEntitlement:(id)a3
{
  v3 = [(CATXPCTransport *)self valueForEntitlement:a3];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (id)operationToSendMessage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setTransport:self];
  [v5 setMessage:v4];

  return v5;
}

- (void)didInvalidate
{
  [(CATXPCTransport *)self tearDownConnection];
  v3.receiver = self;
  v3.super_class = CATXPCTransport;
  [(CATTransport *)&v3 didInvalidate];
}

- (void)processMessage:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  v9 = objc_opt_new();
  [v9 setBlock:v6];
  [v10 setCat_assertion:v9];
  [(CATTransport *)self didReceiveMessage:v10];

  objc_autoreleasePoolPop(v7);
}

- (void)transportSendMessageOperation:(id)a3 processMessage:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  v8 = [(NSXPCConnection *)self->mConnection remoteObjectProxy];
  v9 = v8;
  if (v8)
  {
    [v8 processMessage:v11 completion:&__block_literal_global_24];
    [v6 didProcessMessage];
  }

  else
  {
    v10 = CATErrorWithCodeAndUserInfo(404, 0);
    [v6 didFailWithError:v10];

    v6 = v10;
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