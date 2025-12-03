@interface CATRemoteTransport
+ (id)new;
+ (void)createRemoteTransportPairWithTransport:(id *)transport andTransport:(id *)andTransport;
- (CATRemoteTransport)init;
- (CATRemoteTransport)initWithRemoteConnection:(id)connection;
- (CATRemoteTransportDelegate)remoteTransportDelegate;
- (id)operationToSendMessage:(id)message;
- (void)connection:(id)connection didFailToSendData:(id)data userInfo:(id)info error:(id)error;
- (void)connection:(id)connection didInterruptWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didSendData:(id)data userInfo:(id)info;
- (void)connection:(id)connection encounteredTrustDecisionWhileTryingToSecure:(id)secure;
- (void)connectionDidClose:(id)close;
- (void)connectionDidSecure:(id)secure;
- (void)connectionWillSecure:(id)secure;
- (void)invalidateConnection;
- (void)remoteTransportSendMessageOperation:(id)operation sendData:(id)data;
- (void)resumeConnection;
- (void)suspendConnection;
@end

@implementation CATRemoteTransport

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATRemoteTransport.m" lineNumber:56 description:{@"%@ cannot call %@", self, v5}];

  return 0;
}

- (CATRemoteTransport)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATRemoteTransport.m" lineNumber:63 description:{@"%@ cannot call %@", v5, v6}];

  return 0;
}

+ (void)createRemoteTransportPairWithTransport:(id *)transport andTransport:(id *)andTransport
{
  if (!transport)
  {
    [CATRemoteTransport createRemoteTransportPairWithTransport:a2 andTransport:self];
    if (andTransport)
    {
      goto LABEL_3;
    }

LABEL_5:
    [CATRemoteTransport createRemoteTransportPairWithTransport:a2 andTransport:self];
    goto LABEL_3;
  }

  if (!andTransport)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 0;
  v13 = 0;
  [CATRemoteConnection createConnectionPairWithConnection:&v13 andConnection:&v12];
  v8 = v13;
  v9 = v12;
  *transport = [[self alloc] initWithRemoteConnection:v8];
  v10 = [[self alloc] initWithRemoteConnection:v9];
  v11 = v10;

  *andTransport = v10;
}

- (CATRemoteTransport)initWithRemoteConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [(CATRemoteTransport *)a2 initWithRemoteConnection:?];
  }

  v12.receiver = self;
  v12.super_class = CATRemoteTransport;
  v7 = [(CATTransport *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mConnection, connection);
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

- (id)operationToSendMessage:(id)message
{
  messageCopy = message;
  v5 = objc_opt_new();
  [v5 setTransport:self];
  [v5 setMessage:messageCopy];

  return v5;
}

- (void)connectionWillSecure:(id)secure
{
  remoteTransportDelegate = [(CATRemoteTransport *)self remoteTransportDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    remoteTransportDelegate2 = [(CATRemoteTransport *)self remoteTransportDelegate];
    [remoteTransportDelegate2 transportWillSecure:self];
  }
}

- (void)connection:(id)connection encounteredTrustDecisionWhileTryingToSecure:(id)secure
{
  secureCopy = secure;
  remoteTransportDelegate = [(CATRemoteTransport *)self remoteTransportDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    remoteTransportDelegate2 = [(CATRemoteTransport *)self remoteTransportDelegate];
    [remoteTransportDelegate2 transport:self encounteredTrustDecisionWhileTryingToSecure:secureCopy];
  }
}

- (void)connectionDidSecure:(id)secure
{
  remoteTransportDelegate = [(CATRemoteTransport *)self remoteTransportDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    remoteTransportDelegate2 = [(CATRemoteTransport *)self remoteTransportDelegate];
    [remoteTransportDelegate2 transportDidSecure:self];
  }
}

- (void)connection:(id)connection didSendData:(id)data userInfo:(id)info
{
  infoCopy = info;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  mOperationByUUID = self->mOperationByUUID;
  v10 = infoCopy;
  v9 = [(NSMutableDictionary *)mOperationByUUID objectForKey:v10];
  [(NSMutableDictionary *)self->mOperationByUUID removeObjectForKey:v10];

  [v9 didSendData];
}

- (void)connection:(id)connection didFailToSendData:(id)data userInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v10 = CATGetCatalystQueue();
  CATAssertIsQueue(v10);

  mOperationByUUID = self->mOperationByUUID;
  v13 = infoCopy;
  v12 = [(NSMutableDictionary *)mOperationByUUID objectForKey:v13];
  [(NSMutableDictionary *)self->mOperationByUUID removeObjectForKey:v13];

  [v12 didFailWithError:errorCopy];
}

- (void)connection:(id)connection didInterruptWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->mOperationByUUID objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v13 + 1) + 8 * v11++) didFailWithError:errorCopy];
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)self->mOperationByUUID removeAllObjects];
  [(CATTransport *)self didInterruptWithError:errorCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  v17[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dataCopy = data;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  v15[0] = 0;
  v9 = [MEMORY[0x277CCAAC8] cat_unarchiveObjectOfClass:objc_opt_class() withData:dataCopy error:v15];
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

- (void)connectionDidClose:(id)close
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = CATErrorWithCodeAndUserInfo(200, 0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->mOperationByUUID objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v12 + 1) + 8 * v10++) didFailWithError:v5];
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->mOperationByUUID removeAllObjects];
  [(CATTransport *)self didInvalidate];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)remoteTransportSendMessageOperation:(id)operation sendData:(id)data
{
  dataCopy = data;
  operationCopy = operation;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  uUID = [MEMORY[0x277CCAD78] UUID];
  [(NSMutableDictionary *)self->mOperationByUUID setObject:operationCopy forKey:uUID];

  [(CATRemoteConnection *)self->mConnection sendData:dataCopy userInfo:uUID];
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