@interface CATTaskBlockServer
- (CATTaskBlockServer)init;
- (id)createClientTransport;
- (id)server:(id)a3 clientSession:(id)a4 operationForRequest:(id)a5 error:(id *)a6;
- (void)cancelLongRunningOperationsForRequestClass:(Class)a3;
- (void)dealloc;
- (void)registerBlock:(id)a3 forRequestClass:(Class)a4;
- (void)registerLongRunningOperationForRequestClass:(Class)a3;
- (void)server:(id)a3 clientSession:(id)a4 didInterruptWithError:(id)a5;
- (void)server:(id)a3 clientSession:(id)a4 didReceiveNotificationWithName:(id)a5 userInfo:(id)a6;
- (void)server:(id)a3 clientSessionDidConnect:(id)a4;
- (void)server:(id)a3 clientSessionDidDisconnect:(id)a4;
- (void)server:(id)a3 clientSessionDidInvalidate:(id)a4;
- (void)serverDidInvalidate:(id)a3;
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

    v9 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    mLongRunningOperationsByUUID = v2->mLongRunningOperationsByUUID;
    v2->mLongRunningOperationsByUUID = v9;
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

- (void)registerBlock:(id)a3 forRequestClass:(Class)a4
{
  v8 = MEMORY[0x245D2F510](a3, a2);
  mOperationBlocksByRequestClassName = self->mOperationBlocksByRequestClassName;
  v7 = NSStringFromClass(a4);
  [(NSMutableDictionary *)mOperationBlocksByRequestClassName setObject:v8 forKeyedSubscript:v7];
}

- (void)registerLongRunningOperationForRequestClass:(Class)a3
{
  mLongRunningOperationRequestClassNames = self->mLongRunningOperationRequestClassNames;
  v4 = NSStringFromClass(a3);
  [(NSMutableSet *)mLongRunningOperationRequestClassNames addObject:v4];
}

- (void)cancelLongRunningOperationsForRequestClass:(Class)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMapTable *)self->mLongRunningOperationsByUUID objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 request];
        v11 = [v10 isMemberOfClass:a3];

        if (v11)
        {
          [v9 cancel];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)server:(id)a3 clientSession:(id)a4 operationForRequest:(id)a5 error:(id *)a6
{
  v7 = a5;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if ([(NSMutableSet *)self->mLongRunningOperationRequestClassNames containsObject:v9])
  {
    v10 = [(CATTaskOperation *)[_CATLongRunningTaskOperation alloc] initWithRequest:v7];
    mLongRunningOperationsByUUID = self->mLongRunningOperationsByUUID;
    v12 = [(CATOperation *)v10 UUID];
    [(NSMapTable *)mLongRunningOperationsByUUID setObject:v10 forKey:v12];
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->mOperationBlocksByRequestClassName objectForKeyedSubscript:v9];
    if (v12)
    {
      v10 = [[_CATBlockTaskOperation alloc] initWithBlock:v12 request:v7];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)server:(id)a3 clientSession:(id)a4 didInterruptWithError:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(CATTaskBlockServer *)self sessionDidInterruptWithError];

  if (v8)
  {
    v9 = [(CATTaskBlockServer *)self sessionDidInterruptWithError];
    (v9)[2](v9, self, v10, v7);
  }

  else
  {
    [v10 invalidate];
  }
}

- (void)server:(id)a3 clientSession:(id)a4 didReceiveNotificationWithName:(id)a5 userInfo:(id)a6
{
  v13 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(CATTaskBlockServer *)self sessionDidReceiveNotification];

  if (v11)
  {
    v12 = [(CATTaskBlockServer *)self sessionDidReceiveNotification];
    (v12)[2](v12, self, v13, v9, v10);
  }
}

- (void)server:(id)a3 clientSessionDidConnect:(id)a4
{
  v7 = a4;
  v5 = [(CATTaskBlockServer *)self sessionDidConnect];

  if (v5)
  {
    v6 = [(CATTaskBlockServer *)self sessionDidConnect];
    (v6)[2](v6, self, v7);
  }
}

- (void)server:(id)a3 clientSessionDidDisconnect:(id)a4
{
  v7 = a4;
  v5 = [(CATTaskBlockServer *)self sessionDidDisconnect];

  if (v5)
  {
    v6 = [(CATTaskBlockServer *)self sessionDidDisconnect];
    (v6)[2](v6, self, v7);
  }

  else
  {
    [v7 invalidate];
  }
}

- (void)server:(id)a3 clientSessionDidInvalidate:(id)a4
{
  v7 = a4;
  v5 = [(CATTaskBlockServer *)self sessionDidInvalidate];

  if (v5)
  {
    v6 = [(CATTaskBlockServer *)self sessionDidInvalidate];
    (v6)[2](v6, self, v7);
  }
}

- (void)serverDidInvalidate:(id)a3
{
  v4 = [(CATTaskBlockServer *)self didInvalidate];

  if (v4)
  {
    v5 = [(CATTaskBlockServer *)self didInvalidate];
    v5[2](v5, self);
  }
}

@end