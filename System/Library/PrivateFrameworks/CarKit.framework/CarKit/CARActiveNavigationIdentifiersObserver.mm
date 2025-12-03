@interface CARActiveNavigationIdentifiersObserver
- (CARActiveNavigationIdentifiersObserver)init;
- (void)_setupConnection;
- (void)activeNavigationIdentifiersChangedTo:(id)to;
- (void)addObserver:(id)observer;
- (void)invalidate;
- (void)removeObserver:(id)observer;
@end

@implementation CARActiveNavigationIdentifiersObserver

- (CARActiveNavigationIdentifiersObserver)init
{
  v12.receiver = self;
  v12.super_class = CARActiveNavigationIdentifiersObserver;
  v2 = [(CARActiveNavigationIdentifiersObserver *)&v12 init];
  if (v2)
  {
    v3 = [[CARObserverHashTable alloc] initWithProtocol:&unk_1F4803BE8];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("com.apple.CarPlayApp.ActiveNavigationIdentifiersWorkQueue", v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    [(CARActiveNavigationIdentifiersObserver *)v2 _setupConnection];
    v8 = v2->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CARActiveNavigationIdentifiersObserver_init__block_invoke;
    block[3] = &unk_1E82FBF70;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

void __46__CARActiveNavigationIdentifiersObserver_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_26];

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__6;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CARActiveNavigationIdentifiersObserver_init__block_invoke_65;
  v4[3] = &unk_1E82FD4C8;
  v4[4] = &v5;
  [v3 fetchNavigationIdentifiersWithReply:v4];
  [*(a1 + 32) activeNavigationIdentifiersChangedTo:v6[5]];
  _Block_object_dispose(&v5, 8);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARActiveNavigationIdentifiersObserver *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARActiveNavigationIdentifiersObserver *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.navowners.service" options:4096];
  v4 = CRCarPlayNavigationOwnerClientInterface();
  [v3 setExportedInterface:v4];

  [v3 setExportedObject:self];
  v5 = CRCarPlayNavigationOwnersServiceInterface();
  [v3 setRemoteObjectInterface:v5];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CARActiveNavigationIdentifiersObserver__setupConnection__block_invoke;
  v10[3] = &unk_1E82FC248;
  objc_copyWeak(&v11, &location);
  [v3 setInterruptionHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CARActiveNavigationIdentifiersObserver__setupConnection__block_invoke_2;
  v8[3] = &unk_1E82FC248;
  objc_copyWeak(&v9, &location);
  [v3 setInvalidationHandler:v8];
  [v3 resume];
  [(CARActiveNavigationIdentifiersObserver *)self setConnection:v3];
  connection = [(CARActiveNavigationIdentifiersObserver *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy beginObserving];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __58__CARActiveNavigationIdentifiersObserver__setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __58__CARActiveNavigationIdentifiersObserver__setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)activeNavigationIdentifiersChangedTo:(id)to
{
  v4 = [to copy];
  activeNavigationIdentifiers = self->_activeNavigationIdentifiers;
  self->_activeNavigationIdentifiers = v4;

  observers = [(CARActiveNavigationIdentifiersObserver *)self observers];
  [observers activeNavigationIdentifiersObserver:self updatedActiveNavigationIdentifiers:self->_activeNavigationIdentifiers];
}

- (void)invalidate
{
  connection = [(CARActiveNavigationIdentifiersObserver *)self connection];
  [connection invalidate];
}

@end