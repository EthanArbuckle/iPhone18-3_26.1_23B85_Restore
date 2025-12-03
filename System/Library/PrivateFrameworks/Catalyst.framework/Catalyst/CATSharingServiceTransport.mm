@interface CATSharingServiceTransport
- (CATSharingServiceTransport)initWithConnection:(id)connection;
- (id)name;
- (id)operationToSendMessage:(id)message;
- (void)connection:(id)connection receivedData:(id)data;
- (void)connectionClosed:(id)closed;
- (void)invalidateConnection;
- (void)invalidateIfNeeded;
- (void)processReceivedMessages;
- (void)resumeConnection;
- (void)suspendConnection;
@end

@implementation CATSharingServiceTransport

- (CATSharingServiceTransport)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = CATSharingServiceTransport;
  v6 = [(CATTransport *)&v13 init];
  if (v6)
  {
    v7 = objc_opt_new();
    mCatalystQueue = v6->mCatalystQueue;
    v6->mCatalystQueue = v7;

    v9 = CATGetCatalystQueue();
    [(CATOperationQueue *)v6->mCatalystQueue setUnderlyingQueue:v9];

    v10 = objc_opt_new();
    mReceivedMessages = v6->mReceivedMessages;
    v6->mReceivedMessages = v10;

    objc_storeStrong(&v6->mConnection, connection);
    [(CATSharingConnection *)v6->mConnection setDelegate:v6];
  }

  return v6;
}

- (void)resumeConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if ([(CATSharingConnection *)self->mConnection isClosed])
  {
    closedError = [(CATSharingConnection *)self->mConnection closedError];
    v5 = closedError;
    if (closedError)
    {
      v6 = closedError;
    }

    else
    {
      v6 = CATErrorWithCodeAndUserInfo(100, 0);
    }

    v7 = v6;

    [(CATTransport *)self didInterruptWithError:v7];
  }

  else
  {
    self->mIsActive = 1;

    [(CATSharingServiceTransport *)self processReceivedMessages];
  }
}

- (void)suspendConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  self->mIsActive = 0;
}

- (void)invalidateConnection
{
  if ([(CATSharingConnection *)self->mConnection isClosed])
  {

    [(CATSharingServiceTransport *)self invalidateIfNeeded];
  }

  else
  {
    mConnection = self->mConnection;

    [(CATSharingConnection *)mConnection close];
  }
}

- (id)operationToSendMessage:(id)message
{
  messageCopy = message;
  v5 = [[CATSharingServiceTransportSendMessageOperation alloc] initWithConnection:self->mConnection message:messageCopy];

  return v5;
}

- (id)name
{
  remoteDevice = [(CATSharingConnection *)self->mConnection remoteDevice];
  identifier = [remoteDevice identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)connection:(id)connection receivedData:(id)data
{
  connectionCopy = connection;
  dataCopy = data;
  objc_initWeak(&location, self);
  mCatalystQueue = self->mCatalystQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__CATSharingServiceTransport_connection_receivedData___block_invoke;
  v10[3] = &unk_278DA7530;
  objc_copyWeak(&v12, &location);
  v9 = dataCopy;
  v11 = v9;
  [(CATOperationQueue *)mCatalystQueue addOperationWithBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __54__CATSharingServiceTransport_connection_receivedData___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v12 = 0;
    v6 = [v3 cat_unarchiveObjectOfClass:v4 withData:v5 error:&v12];
    v7 = v12;
    v8 = v7;
    if (v6)
    {
      [WeakRetained[9] addObject:v6];
      [WeakRetained processReceivedMessages];
    }

    else
    {
      v13 = *MEMORY[0x277CCA7E8];
      v14[0] = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v10 = CATErrorWithCodeAndUserInfo(301, v9);
      [WeakRetained didInterruptWithError:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)connectionClosed:(id)closed
{
  closedCopy = closed;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  closedError = [closedCopy closedError];

  if (closedError)
  {
    if (self->mIsActive)
    {
      [(CATTransport *)self didInterruptWithError:closedError];
    }
  }

  else
  {
    [(CATSharingServiceTransport *)self invalidateIfNeeded];
  }
}

- (void)processReceivedMessages
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if (self->mIsActive && [(NSMutableArray *)self->mReceivedMessages count])
  {
    firstObject = [(NSMutableArray *)self->mReceivedMessages firstObject];
    [(NSMutableArray *)self->mReceivedMessages removeObjectAtIndex:0];
    [(CATTransport *)self didReceiveMessage:firstObject];
    [(CATSharingServiceTransport *)self processReceivedMessages];
  }
}

- (void)invalidateIfNeeded
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if (!self->mIsInvalidated)
  {
    self->mIsInvalidated = 1;

    [(CATTransport *)self didInvalidate];
  }
}

@end