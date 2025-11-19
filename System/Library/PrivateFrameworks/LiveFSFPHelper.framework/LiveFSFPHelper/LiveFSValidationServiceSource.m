@interface LiveFSValidationServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (LiveFSValidationServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4;
- (id)makeListenerEndpointAndReturnError:(id *)a3;
- (void)validation_allowValidation:(id)a3;
- (void)validation_evictDocumentWithCompletionHandler:(id)a3;
- (void)validation_shareDocumentWithCompletionHandler:(id)a3;
@end

@implementation LiveFSValidationServiceSource

- (LiveFSValidationServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = LiveFSValidationServiceSource;
  v9 = [(LiveFSValidationServiceSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemIdentifier, a4);
    objc_storeStrong(&v10->_fileProviderExtension, a3);
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    listeners = v10->_listeners;
    v10->_listeners = v11;
  }

  return v10;
}

- (id)makeListenerEndpointAndReturnError:(id *)a3
{
  v4 = [MEMORY[0x277CCAE98] anonymousListener];
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
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28681BE50];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  v9 = self;
  objc_sync_enter(v9);
  [(NSHashTable *)v9->_listeners removeObject:v6];
  objc_sync_exit(v9);

  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__LiveFSValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_27981A880;
  v10 = v6;
  v15 = v10;
  [v7 setInvalidationHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__LiveFSValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_27981A8A8;
  objc_copyWeak(&v13, &location);
  [v7 setInterruptionHandler:v12];
  [v7 resume];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return 1;
}

void __68__LiveFSValidationServiceSource_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)validation_evictDocumentWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA050];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:3328 userInfo:0];
  (*(a3 + 2))(v6, v7);
}

- (void)validation_shareDocumentWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA050];
  v6 = a3;
  v7 = [v4 errorWithDomain:v5 code:3328 userInfo:0];
  (*(a3 + 2))(v6, v7);
}

- (void)validation_allowValidation:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(LiveFSFPExtensionHelper *)self->_fileProviderExtension mountPath];
  v6 = [v5 URLByAppendingPathComponent:@"Validation"];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0];

  if (v8 && ([(LiveFSFPExtensionHelper *)self->_fileProviderExtension persistentIdentifierForItemAtURL:v6], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v4[2](v4, 1, &unk_286815050);
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

    v4[2](v4, 0, &unk_286815078);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end