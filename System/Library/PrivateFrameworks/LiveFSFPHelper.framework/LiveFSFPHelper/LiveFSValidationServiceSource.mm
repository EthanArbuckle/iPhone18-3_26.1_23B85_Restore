@interface LiveFSValidationServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (LiveFSValidationServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier;
- (id)makeListenerEndpointAndReturnError:(id *)error;
- (void)validation_allowValidation:(id)validation;
- (void)validation_evictDocumentWithCompletionHandler:(id)handler;
- (void)validation_shareDocumentWithCompletionHandler:(id)handler;
@end

@implementation LiveFSValidationServiceSource

- (LiveFSValidationServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier
{
  extensionCopy = extension;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = LiveFSValidationServiceSource;
  v9 = [(LiveFSValidationServiceSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemIdentifier, identifier);
    objc_storeStrong(&v10->_fileProviderExtension, extension);
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    listeners = v10->_listeners;
    v10->_listeners = v11;
  }

  return v10;
}

- (id)makeListenerEndpointAndReturnError:(id *)error
{
  anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
  [anonymousListener setDelegate:self];
  endpoint = [anonymousListener endpoint];
  [anonymousListener resume];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners addObject:anonymousListener];
  objc_sync_exit(selfCopy);

  return endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28681BE50];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners removeObject:listenerCopy];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, connectionCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__LiveFSValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_27981A880;
  v10 = listenerCopy;
  v15 = v10;
  [connectionCopy setInvalidationHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__LiveFSValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_27981A8A8;
  objc_copyWeak(&v13, &location);
  [connectionCopy setInterruptionHandler:v12];
  [connectionCopy resume];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return 1;
}

void __68__LiveFSValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)validation_evictDocumentWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA050];
  handlerCopy = handler;
  v7 = [v4 errorWithDomain:v5 code:3328 userInfo:0];
  (*(handler + 2))(handlerCopy, v7);
}

- (void)validation_shareDocumentWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA050];
  handlerCopy = handler;
  v7 = [v4 errorWithDomain:v5 code:3328 userInfo:0];
  (*(handler + 2))(handlerCopy, v7);
}

- (void)validation_allowValidation:(id)validation
{
  v15 = *MEMORY[0x277D85DE8];
  validationCopy = validation;
  mountPath = [(LiveFSFPExtensionHelper *)self->_fileProviderExtension mountPath];
  v6 = [mountPath URLByAppendingPathComponent:@"Validation"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0];

  if (v8 && ([(LiveFSFPExtensionHelper *)self->_fileProviderExtension persistentIdentifierForItemAtURL:v6], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    validationCopy[2](validationCopy, 1, &unk_286815050);
  }

  else
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[LiveFSValidationServiceSource validation_allowValidation:]";
      _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_DEFAULT, "%s: about to return no", &v13, 0xCu);
    }

    validationCopy[2](validationCopy, 0, &unk_286815078);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end