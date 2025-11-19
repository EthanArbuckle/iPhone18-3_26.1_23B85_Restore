@interface CRAppClipsDeclarationAgent
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CRAppClipsDeclarationAgent)init;
- (CRAppClipsDeclaring)appClipDeclarer;
@end

@implementation CRAppClipsDeclarationAgent

- (CRAppClipsDeclarationAgent)init
{
  v6.receiver = self;
  v6.super_class = CRAppClipsDeclarationAgent;
  v2 = [(CRAppClipsDeclarationAgent *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.carkit.appClips.service"];
    [(NSXPCListener *)v3 setDelegate:v2];
    [(NSXPCListener *)v3 resume];
    listener = v2->_listener;
    v2->_listener = v3;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.private.carkit.appClips"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47FBC90];
    [v7 setExportedInterface:v10];
    v11 = objc_alloc_init(CRAppClipsDeclarationSession);
    [(CRAppClipsDeclarationSession *)v11 setDeclarationAgent:self];
    [v7 setExportedObject:v11];
    objc_initWeak(&location, v7);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__CRAppClipsDeclarationAgent_listener_shouldAcceptNewConnection___block_invoke;
    v17[3] = &unk_1E82FC248;
    objc_copyWeak(&v18, &location);
    [v7 setInterruptionHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__CRAppClipsDeclarationAgent_listener_shouldAcceptNewConnection___block_invoke_86;
    v15[3] = &unk_1E82FC248;
    objc_copyWeak(&v16, &location);
    [v7 setInvalidationHandler:v15];
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "processIdentifier")}];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_1C81FC000, v12, OS_LOG_TYPE_INFO, "received app clip declaration connection from %@", buf, 0xCu);
    }

    [v7 activate];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CRAppClipsDeclarationAgent listener:v7 shouldAcceptNewConnection:v10];
    }
  }

  return v9;
}

void __65__CRAppClipsDeclarationAgent_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = WeakRetained;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "app clip declaration connection interrupted: %@", &v3, 0xCu);
  }

  [WeakRetained invalidate];
}

void __65__CRAppClipsDeclarationAgent_listener_shouldAcceptNewConnection___block_invoke_86(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = WeakRetained;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_INFO, "app clip connection invalidated: %@", &v3, 0xCu);
  }
}

- (CRAppClipsDeclaring)appClipDeclarer
{
  WeakRetained = objc_loadWeakRetained(&self->_appClipDeclarer);

  return WeakRetained;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = [a1 processIdentifier];
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "app clip declaration service connection is not entitled: %@: process: %i", &v3, 0x12u);
}

@end