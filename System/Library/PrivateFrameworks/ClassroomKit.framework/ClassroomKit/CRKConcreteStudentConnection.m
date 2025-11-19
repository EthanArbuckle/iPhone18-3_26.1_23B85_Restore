@interface CRKConcreteStudentConnection
+ (id)connectionWithStudentDaemonProxy:(id)a3 invalidationHandler:(id)a4;
- (CRKConcreteStudentConnection)initWithStudentDaemonProxy:(id)a3 invalidationHandler:(id)a4;
- (id)observeNotificationWithName:(id)a3 handler:(id)a4;
- (id)operationForRequest:(id)a3;
- (void)daemonProxy:(id)a3 didReceiveNotificationWithName:(id)a4 userInfo:(id)a5;
- (void)daemonProxyDidDisconnect:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CRKConcreteStudentConnection

- (void)dealloc
{
  [(CRKConcreteStudentConnection *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRKConcreteStudentConnection;
  [(CRKConcreteStudentConnection *)&v3 dealloc];
}

- (CRKConcreteStudentConnection)initWithStudentDaemonProxy:(id)a3 invalidationHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CRKConcreteStudentConnection;
  v9 = [(CRKConcreteStudentConnection *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_studentDaemonProxy, a3);
    v11 = MEMORY[0x245D3AAD0](v8);
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v11;

    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    notificationObservations = v10->_notificationObservations;
    v10->_notificationObservations = v13;
  }

  return v10;
}

+ (id)connectionWithStudentDaemonProxy:(id)a3 invalidationHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  if (([v8 isConnected] & 1) == 0)
  {
    [CRKConcreteStudentConnection connectionWithStudentDaemonProxy:a2 invalidationHandler:a1];
  }

  v9 = [[a1 alloc] initWithStudentDaemonProxy:v8 invalidationHandler:v7];

  [v8 addObserver:v9];

  return v9;
}

- (id)operationForRequest:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteStudentConnection *)self studentDaemonProxy];
  v6 = [v5 operationForRequest:v4];

  return v6;
}

- (void)invalidate
{
  v2 = [(CRKConcreteStudentConnection *)self studentDaemonProxy];
  [v2 disconnect];
}

- (id)observeNotificationWithName:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CRKConcreteStudentNotificationObservation alloc] initWithNotificationName:v7 notificationHandler:v6];

  v9 = [(CRKConcreteStudentConnection *)self notificationObservations];
  [v9 addObject:v8];

  return v8;
}

- (void)daemonProxyDidDisconnect:(id)a3
{
  v4 = [(CRKConcreteStudentConnection *)self invalidationHandler];

  if (v4)
  {
    v5 = [(CRKConcreteStudentConnection *)self invalidationHandler];
    [(CRKConcreteStudentConnection *)self setInvalidationHandler:0];
    v5[2]();
  }
}

- (void)daemonProxy:(id)a3 didReceiveNotificationWithName:(id)a4 userInfo:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(CRKConcreteStudentConnection *)self notificationObservations];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) receiveNotificationWithName:v7 userInfo:v8];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

+ (void)connectionWithStudentDaemonProxy:(uint64_t)a1 invalidationHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKConcreteStudentConnection.m" lineNumber:45 description:@"Must be handed a connected daemon proxy"];
}

@end