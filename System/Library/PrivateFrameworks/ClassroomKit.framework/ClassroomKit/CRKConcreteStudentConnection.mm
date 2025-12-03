@interface CRKConcreteStudentConnection
+ (id)connectionWithStudentDaemonProxy:(id)proxy invalidationHandler:(id)handler;
- (CRKConcreteStudentConnection)initWithStudentDaemonProxy:(id)proxy invalidationHandler:(id)handler;
- (id)observeNotificationWithName:(id)name handler:(id)handler;
- (id)operationForRequest:(id)request;
- (void)daemonProxy:(id)proxy didReceiveNotificationWithName:(id)name userInfo:(id)info;
- (void)daemonProxyDidDisconnect:(id)disconnect;
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

- (CRKConcreteStudentConnection)initWithStudentDaemonProxy:(id)proxy invalidationHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CRKConcreteStudentConnection;
  v9 = [(CRKConcreteStudentConnection *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_studentDaemonProxy, proxy);
    v11 = MEMORY[0x245D3AAD0](handlerCopy);
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v11;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    notificationObservations = v10->_notificationObservations;
    v10->_notificationObservations = weakObjectsHashTable;
  }

  return v10;
}

+ (id)connectionWithStudentDaemonProxy:(id)proxy invalidationHandler:(id)handler
{
  handlerCopy = handler;
  proxyCopy = proxy;
  if (([proxyCopy isConnected] & 1) == 0)
  {
    [CRKConcreteStudentConnection connectionWithStudentDaemonProxy:a2 invalidationHandler:self];
  }

  v9 = [[self alloc] initWithStudentDaemonProxy:proxyCopy invalidationHandler:handlerCopy];

  [proxyCopy addObserver:v9];

  return v9;
}

- (id)operationForRequest:(id)request
{
  requestCopy = request;
  studentDaemonProxy = [(CRKConcreteStudentConnection *)self studentDaemonProxy];
  v6 = [studentDaemonProxy operationForRequest:requestCopy];

  return v6;
}

- (void)invalidate
{
  studentDaemonProxy = [(CRKConcreteStudentConnection *)self studentDaemonProxy];
  [studentDaemonProxy disconnect];
}

- (id)observeNotificationWithName:(id)name handler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v8 = [[CRKConcreteStudentNotificationObservation alloc] initWithNotificationName:nameCopy notificationHandler:handlerCopy];

  notificationObservations = [(CRKConcreteStudentConnection *)self notificationObservations];
  [notificationObservations addObject:v8];

  return v8;
}

- (void)daemonProxyDidDisconnect:(id)disconnect
{
  invalidationHandler = [(CRKConcreteStudentConnection *)self invalidationHandler];

  if (invalidationHandler)
  {
    invalidationHandler2 = [(CRKConcreteStudentConnection *)self invalidationHandler];
    [(CRKConcreteStudentConnection *)self setInvalidationHandler:0];
    invalidationHandler2[2]();
  }
}

- (void)daemonProxy:(id)proxy didReceiveNotificationWithName:(id)name userInfo:(id)info
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  infoCopy = info;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  notificationObservations = [(CRKConcreteStudentConnection *)self notificationObservations];
  v10 = [notificationObservations countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(notificationObservations);
        }

        [*(*(&v14 + 1) + 8 * v13++) receiveNotificationWithName:nameCopy userInfo:infoCopy];
      }

      while (v11 != v13);
      v11 = [notificationObservations countByEnumeratingWithState:&v14 objects:v18 count:16];
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