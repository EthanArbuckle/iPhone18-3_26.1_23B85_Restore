@interface CATTaskBlockServer
- (CATTaskBlockServer)init;
- (id)createClientTransport;
- (id)server:(id)server clientSession:(id)session operationForRequest:(id)request error:(id *)error;
- (void)cancelLongRunningOperationsForRequestClass:(Class)class;
- (void)dealloc;
- (void)registerBlock:(id)block forRequestClass:(Class)class;
- (void)registerLongRunningOperationForRequestClass:(Class)class;
- (void)server:(id)server clientSession:(id)session didInterruptWithError:(id)error;
- (void)server:(id)server clientSession:(id)session didReceiveNotificationWithName:(id)name userInfo:(id)info;
- (void)server:(id)server clientSessionDidConnect:(id)connect;
- (void)server:(id)server clientSessionDidDisconnect:(id)disconnect;
- (void)server:(id)server clientSessionDidInvalidate:(id)invalidate;
- (void)serverDidInvalidate:(id)invalidate;
@end

@implementation CATTaskBlockServer

- (CATTaskBlockServer)init
{
  v12.receiver = self;
  v12.super_class = CATTaskBlockServer;
  v2 = [(CATTaskBlockServer *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mServer = v2->mServer;
    v2->mServer = v3;

    [(CATTaskServer *)v2->mServer setDelegate:v2];
    v5 = objc_opt_new();
    mOperationBlocksByRequestClassName = v2->mOperationBlocksByRequestClassName;
    v2->mOperationBlocksByRequestClassName = v5;

    v7 = objc_opt_new();
    mLongRunningOperationRequestClassNames = v2->mLongRunningOperationRequestClassNames;
    v2->mLongRunningOperationRequestClassNames = v7;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    mLongRunningOperationsByUUID = v2->mLongRunningOperationsByUUID;
    v2->mLongRunningOperationsByUUID = strongToWeakObjectsMapTable;
  }

  return v2;
}

- (void)dealloc
{
  [(CATTaskServer *)self->mServer invalidate];
  v3.receiver = self;
  v3.super_class = CATTaskBlockServer;
  [(CATTaskBlockServer *)&v3 dealloc];
}

- (id)createClientTransport
{
  v6 = 0;
  v7 = 0;
  [CATRemoteTransport createRemoteTransportPairWithTransport:&v7 andTransport:&v6];
  v3 = v7;
  v4 = v6;
  [(CATTaskServer *)self->mServer connectWithClientTransport:v4];

  return v3;
}

- (void)registerBlock:(id)block forRequestClass:(Class)class
{
  v8 = MEMORY[0x245D2F510](block, a2);
  mOperationBlocksByRequestClassName = self->mOperationBlocksByRequestClassName;
  v7 = NSStringFromClass(class);
  [(NSMutableDictionary *)mOperationBlocksByRequestClassName setObject:v8 forKeyedSubscript:v7];
}

- (void)registerLongRunningOperationForRequestClass:(Class)class
{
  mLongRunningOperationRequestClassNames = self->mLongRunningOperationRequestClassNames;
  v4 = NSStringFromClass(class);
  [(NSMutableSet *)mLongRunningOperationRequestClassNames addObject:v4];
}

- (void)cancelLongRunningOperationsForRequestClass:(Class)class
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMapTable *)self->mLongRunningOperationsByUUID objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        request = [v9 request];
        v11 = [request isMemberOfClass:class];

        if (v11)
        {
          [v9 cancel];
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)server:(id)server clientSession:(id)session operationForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if ([(NSMutableSet *)self->mLongRunningOperationRequestClassNames containsObject:v9])
  {
    v10 = [(CATTaskOperation *)[_CATLongRunningTaskOperation alloc] initWithRequest:requestCopy];
    mLongRunningOperationsByUUID = self->mLongRunningOperationsByUUID;
    uUID = [(CATOperation *)v10 UUID];
    [(NSMapTable *)mLongRunningOperationsByUUID setObject:v10 forKey:uUID];
  }

  else
  {
    uUID = [(NSMutableDictionary *)self->mOperationBlocksByRequestClassName objectForKeyedSubscript:v9];
    if (uUID)
    {
      v10 = [[_CATBlockTaskOperation alloc] initWithBlock:uUID request:requestCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)server:(id)server clientSession:(id)session didInterruptWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  sessionDidInterruptWithError = [(CATTaskBlockServer *)self sessionDidInterruptWithError];

  if (sessionDidInterruptWithError)
  {
    sessionDidInterruptWithError2 = [(CATTaskBlockServer *)self sessionDidInterruptWithError];
    (sessionDidInterruptWithError2)[2](sessionDidInterruptWithError2, self, sessionCopy, errorCopy);
  }

  else
  {
    [sessionCopy invalidate];
  }
}

- (void)server:(id)server clientSession:(id)session didReceiveNotificationWithName:(id)name userInfo:(id)info
{
  sessionCopy = session;
  nameCopy = name;
  infoCopy = info;
  sessionDidReceiveNotification = [(CATTaskBlockServer *)self sessionDidReceiveNotification];

  if (sessionDidReceiveNotification)
  {
    sessionDidReceiveNotification2 = [(CATTaskBlockServer *)self sessionDidReceiveNotification];
    (sessionDidReceiveNotification2)[2](sessionDidReceiveNotification2, self, sessionCopy, nameCopy, infoCopy);
  }
}

- (void)server:(id)server clientSessionDidConnect:(id)connect
{
  connectCopy = connect;
  sessionDidConnect = [(CATTaskBlockServer *)self sessionDidConnect];

  if (sessionDidConnect)
  {
    sessionDidConnect2 = [(CATTaskBlockServer *)self sessionDidConnect];
    (sessionDidConnect2)[2](sessionDidConnect2, self, connectCopy);
  }
}

- (void)server:(id)server clientSessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  sessionDidDisconnect = [(CATTaskBlockServer *)self sessionDidDisconnect];

  if (sessionDidDisconnect)
  {
    sessionDidDisconnect2 = [(CATTaskBlockServer *)self sessionDidDisconnect];
    (sessionDidDisconnect2)[2](sessionDidDisconnect2, self, disconnectCopy);
  }

  else
  {
    [disconnectCopy invalidate];
  }
}

- (void)server:(id)server clientSessionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  sessionDidInvalidate = [(CATTaskBlockServer *)self sessionDidInvalidate];

  if (sessionDidInvalidate)
  {
    sessionDidInvalidate2 = [(CATTaskBlockServer *)self sessionDidInvalidate];
    (sessionDidInvalidate2)[2](sessionDidInvalidate2, self, invalidateCopy);
  }
}

- (void)serverDidInvalidate:(id)invalidate
{
  didInvalidate = [(CATTaskBlockServer *)self didInvalidate];

  if (didInvalidate)
  {
    didInvalidate2 = [(CATTaskBlockServer *)self didInvalidate];
    didInvalidate2[2](didInvalidate2, self);
  }
}

@end