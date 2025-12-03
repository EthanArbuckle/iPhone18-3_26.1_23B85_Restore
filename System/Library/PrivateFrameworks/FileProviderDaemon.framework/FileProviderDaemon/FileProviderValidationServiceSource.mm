@interface FileProviderValidationServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FileProviderValidationServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier;
- (id)makeListenerEndpointAndReturnError:(id *)error;
- (void)validation_evictDocumentWithCompletionHandler:(id)handler;
- (void)validation_shareDocumentWithCompletionHandler:(id)handler;
@end

@implementation FileProviderValidationServiceSource

- (FileProviderValidationServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier
{
  extensionCopy = extension;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = FileProviderValidationServiceSource;
  v9 = [(FileProviderValidationServiceSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemIdentifier, identifier);
    objc_storeStrong(&v10->_fileProviderExtension, extension);
    v11 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
    listeners = v10->_listeners;
    v10->_listeners = v11;
  }

  return v10;
}

- (id)makeListenerEndpointAndReturnError:(id *)error
{
  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
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
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C76C80];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners removeObject:listenerCopy];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, connectionCopy);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__FileProviderValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_1E83BE068;
  v10 = listenerCopy;
  v15 = v10;
  [connectionCopy setInvalidationHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__FileProviderValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_1E83BE0B8;
  objc_copyWeak(&v13, &location);
  [connectionCopy setInterruptionHandler:v12];
  [connectionCopy resume];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return 1;
}

void __74__FileProviderValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)validation_evictDocumentWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  handlerCopy = handler;
  v7 = [v4 errorWithDomain:v5 code:3328 userInfo:0];
  (*(handler + 2))(handlerCopy, v7);
}

- (void)validation_shareDocumentWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  handlerCopy = handler;
  v7 = [v4 errorWithDomain:v5 code:3328 userInfo:0];
  (*(handler + 2))(handlerCopy, v7);
}

@end