@interface CATIDSServiceTransport
- (CATIDSServiceTransport)initWithConnection:(id)a3;
- (id)name;
- (id)operationToSendMessage:(id)a3;
- (void)connection:(id)a3 receivedData:(id)a4;
- (void)connectionClosed:(id)a3;
- (void)invalidateConnection;
- (void)resumeConnection;
- (void)serviceReceiveQueue;
- (void)suspendConnection;
- (void)tryReportingInvalidation;
@end

@implementation CATIDSServiceTransport

- (CATIDSServiceTransport)initWithConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CATIDSServiceTransport;
  v6 = [(CATTransport *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    mReceiveQueue = v6->mReceiveQueue;
    v6->mReceiveQueue = v7;

    objc_storeStrong(&v6->mConnection, a3);
    [(CATIDSServiceConnection *)v6->mConnection setDelegate:v6];
  }

  return v6;
}

- (void)resumeConnection
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if ([(CATIDSServiceConnection *)self->mConnection isClosed])
  {
    v4 = [(CATIDSServiceConnection *)self->mConnection closedError];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
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

    [(CATIDSServiceTransport *)self serviceReceiveQueue];
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
  if ([(CATIDSServiceConnection *)self->mConnection isClosed])
  {

    [(CATIDSServiceTransport *)self tryReportingInvalidation];
  }

  else
  {
    mConnection = self->mConnection;

    [(CATIDSServiceConnection *)mConnection close];
  }
}

- (id)operationToSendMessage:(id)a3
{
  v4 = a3;
  v5 = [[_CATIDSServiceTransportSendMessageOperation alloc] initWithConnection:self->mConnection message:v4];

  return v5;
}

- (id)name
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CATIDSServiceConnection *)self->mConnection metadata];
  v5 = [v4 connectionIdentifier];
  v6 = [(CATIDSServiceConnection *)self->mConnection metadata];
  v7 = [v6 destinationAppleID];
  v8 = [v3 stringWithFormat:@"%@-%@", v5, v7];

  return v8;
}

- (void)connection:(id)a3 receivedData:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v13 = 0;
  v7 = [MEMORY[0x277CCAAC8] cat_unarchiveObjectOfClass:objc_opt_class() withData:v5 error:&v13];

  v8 = v13;
  v9 = v8;
  if (v7)
  {
    [(NSMutableArray *)self->mReceiveQueue addObject:v7];
    [(CATIDSServiceTransport *)self serviceReceiveQueue];
  }

  else
  {
    v14 = *MEMORY[0x277CCA7E8];
    v15[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = CATErrorWithCodeAndUserInfo(301, v10);
    [(CATTransport *)self didInterruptWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connectionClosed:(id)a3
{
  v7 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [v7 closedError];

  if (v5)
  {
    if (self->mIsActive)
    {
      v6 = [v7 closedError];
      [(CATTransport *)self didInterruptWithError:v6];
    }
  }

  else
  {
    [(CATIDSServiceTransport *)self tryReportingInvalidation];
  }
}

- (void)tryReportingInvalidation
{
  if (!self->mDidDelegateInvalidation)
  {
    self->mDidDelegateInvalidation = 1;
    [(CATTransport *)self didInvalidate];
  }
}

- (void)serviceReceiveQueue
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if (self->mIsActive && [(NSMutableArray *)self->mReceiveQueue count])
  {
    v4 = [(NSMutableArray *)self->mReceiveQueue firstObject];
    [(NSMutableArray *)self->mReceiveQueue removeObjectAtIndex:0];
    [(CATTransport *)self didReceiveMessage:v4];
    [(CATIDSServiceTransport *)self serviceReceiveQueue];
  }
}

@end