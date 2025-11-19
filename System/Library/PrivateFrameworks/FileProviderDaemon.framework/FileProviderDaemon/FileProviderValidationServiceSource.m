@interface FileProviderValidationServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FileProviderValidationServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4;
- (id)makeListenerEndpointAndReturnError:(id *)a3;
- (void)validation_evictDocumentWithCompletionHandler:(id)a3;
- (void)validation_shareDocumentWithCompletionHandler:(id)a3;
@end

@implementation FileProviderValidationServiceSource

- (FileProviderValidationServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FileProviderValidationServiceSource;
  v9 = [(FileProviderValidationServiceSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemIdentifier, a4);
    objc_storeStrong(&v10->_fileProviderExtension, a3);
    v11 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
    listeners = v10->_listeners;
    v10->_listeners = v11;
  }

  return v10;
}

- (id)makeListenerEndpointAndReturnError:(id *)a3
{
  v4 = [MEMORY[0x1E696B0D8] anonymousListener];
  [v4 setDelegate:self];
  v5 = [v4 endpoint];
  [v4 resume];
  v6 = self;
  objc_sync_enter(v6);
  [(NSHashTable *)v6->_listeners addObject:v4];
  objc_sync_exit(v6);

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C76C80];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  v9 = self;
  objc_sync_enter(v9);
  [(NSHashTable *)v9->_listeners removeObject:v6];
  objc_sync_exit(v9);

  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__FileProviderValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_1E83BE068;
  v10 = v6;
  v15 = v10;
  [v7 setInvalidationHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__FileProviderValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_1E83BE0B8;
  objc_copyWeak(&v13, &location);
  [v7 setInterruptionHandler:v12];
  [v7 resume];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return 1;
}

void __74__FileProviderValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)validation_evictDocumentWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:3328 userInfo:0];
  (*(a3 + 2))(v6, v7);
}

- (void)validation_shareDocumentWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:3328 userInfo:0];
  (*(a3 + 2))(v6, v7);
}

@end