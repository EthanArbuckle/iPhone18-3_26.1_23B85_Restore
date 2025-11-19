@interface FSMessageReceiver
+ (id)receiverForStandardIO:(id)a3;
+ (id)receiverWithDelegate:(id)a3;
+ (id)receiverWithDelegate:(id)a3 locale:(id)a4 preferredLanguages:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FSMessageReceiver)initWithDelegate:(id)a3 locale:(id)a4 preferredLanguages:(id)a5;
- (id)getConnection;
@end

@implementation FSMessageReceiver

- (FSMessageReceiver)initWithDelegate:(id)a3 locale:(id)a4 preferredLanguages:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = FSMessageReceiver;
  v11 = [(FSMessageReceiver *)&v19 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v11->_listener;
    v11->_listener = v12;

    [(NSXPCListener *)v11->_listener setDelegate:v11];
    v14 = [(NSXPCListener *)v11->_listener endpoint];
    endpoint = v11->_endpoint;
    v11->_endpoint = v14;

    [(NSXPCListener *)v11->_listener resume];
    v16 = [[FSMessageReceiverDelegateWrapper alloc] initWithDelegate:v8 Locale:v9 preferredLanguages:v10];
    delegateWrapper = v11->_delegateWrapper;
    v11->_delegateWrapper = v16;
  }

  return v11;
}

+ (id)receiverWithDelegate:(id)a3
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = [v4 currentLocale];
  v7 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v8 = [a1 receiverWithDelegate:v5 locale:v6 preferredLanguages:v7];

  return v8;
}

+ (id)receiverWithDelegate:(id)a3 locale:(id)a4 preferredLanguages:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithDelegate:v10 locale:v9 preferredLanguages:v8];

  return v11;
}

+ (id)receiverForStandardIO:(id)a3
{
  v4 = [FSMessageSTDIODelegate delegateWithCompletionHandler:a3];
  v5 = [a1 receiverWithDelegate:v4];

  return v5;
}

- (id)getConnection
{
  v3 = [[FSMessageConnection alloc] initWithEndpoint:self->_endpoint];
  [(FSMessageConnection *)v3 setReceiver:self];

  return v3;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[FSKitConstants FSTaskOperations];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self->_delegateWrapper];
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __56__FSMessageReceiver_listener_shouldAcceptNewConnection___block_invoke;
  v14 = &unk_278FECDB8;
  objc_copyWeak(&v15, &location);
  [v7 setInvalidationHandler:&v11];
  [v7 resume];
  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FSMessageReceiver listener:v9 shouldAcceptNewConnection:?];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return 1;
}

void __56__FSMessageReceiver_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained delegateWrapper];
    v3 = fs_errorForCocoaError(4099);
    [v2 completed:v3 replyHandler:&__block_literal_global_78];

    WeakRetained = v4;
  }
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[FSMessageReceiver listener:shouldAcceptNewConnection:]";
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "%s:connection:accept", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end