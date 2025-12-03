@interface FSMessageReceiver
+ (id)receiverForStandardIO:(id)o;
+ (id)receiverWithDelegate:(id)delegate;
+ (id)receiverWithDelegate:(id)delegate locale:(id)locale preferredLanguages:(id)languages;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FSMessageReceiver)initWithDelegate:(id)delegate locale:(id)locale preferredLanguages:(id)languages;
- (id)getConnection;
@end

@implementation FSMessageReceiver

- (FSMessageReceiver)initWithDelegate:(id)delegate locale:(id)locale preferredLanguages:(id)languages
{
  delegateCopy = delegate;
  localeCopy = locale;
  languagesCopy = languages;
  v19.receiver = self;
  v19.super_class = FSMessageReceiver;
  v11 = [(FSMessageReceiver *)&v19 init];
  if (v11)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v11->_listener;
    v11->_listener = anonymousListener;

    [(NSXPCListener *)v11->_listener setDelegate:v11];
    endpoint = [(NSXPCListener *)v11->_listener endpoint];
    endpoint = v11->_endpoint;
    v11->_endpoint = endpoint;

    [(NSXPCListener *)v11->_listener resume];
    v16 = [[FSMessageReceiverDelegateWrapper alloc] initWithDelegate:delegateCopy Locale:localeCopy preferredLanguages:languagesCopy];
    delegateWrapper = v11->_delegateWrapper;
    v11->_delegateWrapper = v16;
  }

  return v11;
}

+ (id)receiverWithDelegate:(id)delegate
{
  v4 = MEMORY[0x277CBEAF8];
  delegateCopy = delegate;
  currentLocale = [v4 currentLocale];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v8 = [self receiverWithDelegate:delegateCopy locale:currentLocale preferredLanguages:preferredLanguages];

  return v8;
}

+ (id)receiverWithDelegate:(id)delegate locale:(id)locale preferredLanguages:(id)languages
{
  languagesCopy = languages;
  localeCopy = locale;
  delegateCopy = delegate;
  v11 = [[self alloc] initWithDelegate:delegateCopy locale:localeCopy preferredLanguages:languagesCopy];

  return v11;
}

+ (id)receiverForStandardIO:(id)o
{
  v4 = [FSMessageSTDIODelegate delegateWithCompletionHandler:o];
  v5 = [self receiverWithDelegate:v4];

  return v5;
}

- (id)getConnection
{
  v3 = [[FSMessageConnection alloc] initWithEndpoint:self->_endpoint];
  [(FSMessageConnection *)v3 setReceiver:self];

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = +[FSKitConstants FSTaskOperations];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self->_delegateWrapper];
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __56__FSMessageReceiver_listener_shouldAcceptNewConnection___block_invoke;
  v14 = &unk_278FECDB8;
  objc_copyWeak(&v15, &location);
  [connectionCopy setInvalidationHandler:&v11];
  [connectionCopy resume];
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