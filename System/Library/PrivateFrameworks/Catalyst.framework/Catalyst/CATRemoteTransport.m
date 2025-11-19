@interface CATRemoteTransport
+ (id)new;
+ (void)createRemoteTransportPairWithTransport:(id *)a3 andTransport:(id *)a4;
- (CATRemoteTransport)init;
- (CATRemoteTransport)initWithRemoteConnection:(id)a3;
- (CATRemoteTransportDelegate)remoteTransportDelegate;
- (id)operationToSendMessage:(id)a3;
- (void)connection:(id)a3 didFailToSendData:(id)a4 userInfo:(id)a5 error:(id)a6;
- (void)connection:(id)a3 didInterruptWithError:(id)a4;
- (void)connection:(id)a3 didReceiveData:(id)a4;
- (void)connection:(id)a3 didSendData:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 encounteredTrustDecisionWhileTryingToSecure:(id)a4;
- (void)connectionDidClose:(id)a3;
- (void)connectionDidSecure:(id)a3;
- (void)connectionWillSecure:(id)a3;
- (void)invalidateConnection;
- (void)remoteTransportSendMessageOperation:(id)a3 sendData:(id)a4;
- (void)resumeConnection;
- (void)suspendConnection;
@end

@implementation CATRemoteTransport

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CATRemoteTransport.m" lineNumber:56 description:{@"%@ cannot call %@", a1, v5}];

  return 0;
}

- (CATRemoteTransport)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CATRemoteTransport.m" lineNumber:63 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

+ (void)createRemoteTransportPairWithTransport:(id *)a3 andTransport:(id *)a4
{
  if (!a3)
  {
    [CATRemoteTransport createRemoteTransportPairWithTransport:a2 andTransport:a1];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [CATRemoteTransport createRemoteTransportPairWithTransport:a2 andTransport:a1];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 0;
  v13 = 0;
  [CATRemoteConnection createConnectionPairWithConnection:&v13 andConnection:&v12];
  v8 = v13;
  v9 = v12;
  *a3 = [[a1 alloc] initWithRemoteConnection:v8];
  v10 = [[a1 alloc] initWithRemoteConnection:v9];
  v11 = v10;

  *a4 = v10;
}

- (CATRemoteTransport)initWithRemoteConnection:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CATRemoteTransport *)a2 initWithRemoteConnection:?];
  }

  v12.receiver = self;
  v12.super_class = CATRemoteTransport;
  v7 = [(CATTransport *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mConnection, a3);
    [(CATRemoteConnection *)v8->mConnection setDelegate:v8];
    v9 = objc_opt_new();
    mOperationByUUID = v8->mOperationByUUID;
    v8->mOperationByUUID = v9;
  }

  return v8;
}

- (void)resumeConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATRemoteConnection *)self->mConnection scheduleStreams];
  if (!self->mConnectionHasOpened)
  {
    [(CATRemoteConnection *)self->mConnection open];
    self->mConnectionHasOpened = 1;
  }
}

- (void)suspendConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mConnection = self->mConnection;

  [(CATRemoteConnection *)mConnection unscheduleStreams];
}

- (void)invalidateConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mConnection = self->mConnection;

  [(CATRemoteConnection *)mConnection close];
}

- (id)operationToSendMessage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setTransport:self];
  [v5 setMessage:v4];

  return v5;
}

- (void)connectionWillSecure:(id)a3
{
  v4 = [(CATRemoteTransport *)self remoteTransportDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATRemoteTransport *)self remoteTransportDelegate];
    [v6 transportWillSecure:self];
  }
}

- (void)connection:(id)a3 encounteredTrustDecisionWhileTryingToSecure:(id)a4
{
  v8 = a4;
  v5 = [(CATRemoteTransport *)self remoteTransportDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATRemoteTransport *)self remoteTransportDelegate];
    [v7 transport:self encounteredTrustDecisionWhileTryingToSecure:v8];
  }
}

- (void)connectionDidSecure:(id)a3
{
  v4 = [(CATRemoteTransport *)self remoteTransportDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATRemoteTransport *)self remoteTransportDelegate];
    [v6 transportDidSecure:self];
  }
}

- (void)connection:(id)a3 didSendData:(id)a4 userInfo:(id)a5
{
  v6 = a5;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  mOperationByUUID = self->mOperationByUUID;
  v10 = v6;
  v9 = [(NSMutableDictionary *)mOperationByUUID objectForKey:v10];
  [(NSMutableDictionary *)self->mOperationByUUID removeObjectForKey:v10];

  [v9 didSendData];
}

- (void)connection:(id)a3 didFailToSendData:(id)a4 userInfo:(id)a5 error:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = CATGetCatalystQueue();
  CATAssertIsQueue(v10);

  mOperationByUUID = self->mOperationByUUID;
  v13 = v8;
  v12 = [(NSMutableDictionary *)mOperationByUUID objectForKey:v13];
  [(NSMutableDictionary *)self->mOperationByUUID removeObjectForKey:v13];

  [v12 didFailWithError:v9];
}

- (void)connection:(id)a3 didInterruptWithError:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSMutableDictionary *)self->mOperationByUUID objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) didFailWithError:v5];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)self->mOperationByUUID removeAllObjects];
  [(CATTransport *)self didInterruptWithError:v5];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  v15[0] = 0;
  v9 = [MEMORY[0x277CCAAC8] cat_unarchiveObjectOfClass:objc_opt_class() withData:v7 error:v15];
  v10 = v15[0];
  v11 = v10;
  if (v9)
  {
    [(CATTransport *)self didReceiveMessage:v9];
  }

  else
  {
    v16 = *MEMORY[0x277CCA7E8];
    v17[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = CATErrorWithCodeAndUserInfo(301, v12);

    v11 = v13;
    [(CATTransport *)self didInterruptWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidClose:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = CATErrorWithCodeAndUserInfo(200, 0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->mOperationByUUID objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) didFailWithError:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->mOperationByUUID removeAllObjects];
  [(CATTransport *)self didInvalidate];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)remoteTransportSendMessageOperation:(id)a3 sendData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  v9 = [MEMORY[0x277CCAD78] UUID];
  [(NSMutableDictionary *)self->mOperationByUUID setObject:v7 forKey:v9];

  [(CATRemoteConnection *)self->mConnection sendData:v6 userInfo:v9];
}

- (CATRemoteTransportDelegate)remoteTransportDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteTransportDelegate);

  return WeakRetained;
}

+ (void)createRemoteTransportPairWithTransport:(uint64_t)a1 andTransport:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATRemoteTransport.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"transport1"}];
}

+ (void)createRemoteTransportPairWithTransport:(uint64_t)a1 andTransport:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATRemoteTransport.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"transport2"}];
}

- (void)initWithRemoteConnection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATRemoteTransport.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"remoteConnection"}];
}

@end