@interface PBUIWallpaperServer
- (BOOL)setWallpaperColor:(id)a3 darkColor:(id)a4 forLocations:(id)a5;
- (BOOL)setWallpaperGradient:(id)a3 forLocations:(id)a4;
- (BOOL)setWallpaperImage:(id)a3 adjustedImage:(id)a4 thumbnailData:(id)a5 imageHashData:(id)a6 wallpaperOptions:(id)a7 forLocations:(id)a8 currentWallpaperMode:(id)a9;
- (BOOL)setWallpaperWithVideo:(id)a3 sandboxToken:(id)a4 cropRect:(id)a5 wallpaperMode:(id)a6;
- (PBUIWallpaperServer)init;
- (PBUIWallpaperServerDelegate)delegate;
- (id)getWallpaperLegibilitySettingsForVariant:(id)a3;
- (id)getWallpaperOptionsForVariant:(id)a3;
- (void)_queue_addConnection:(id)a3;
- (void)_queue_removeConnection:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)removeWallpaperVideo;
- (void)restoreDefaultWallpaper;
- (void)setProceduralWallpaperIdentifier:(id)a3 options:(id)a4 locations:(id)a5;
@end

@implementation PBUIWallpaperServer

- (PBUIWallpaperServer)init
{
  v16.receiver = self;
  v16.super_class = PBUIWallpaperServer;
  v2 = [(PBUIWallpaperServer *)&v16 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.paperboard.wallpaper-access" additionalCredentials:2];
    clientAuthenticator = v2->_clientAuthenticator;
    v2->_clientAuthenticator = v3;

    v5 = dispatch_queue_create("com.apple.PaperBoard.WallpaperServer.queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = MEMORY[0x277CF32A0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __27__PBUIWallpaperServer_init__block_invoke;
    v14[3] = &unk_278363BC8;
    v8 = v2;
    v15 = v8;
    v9 = [v7 listenerWithConfigurator:v14];
    connectionListener = v8->_connectionListener;
    v8->_connectionListener = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    connections = v8->_connections;
    v8->_connections = v11;
  }

  return v2;
}

void __27__PBUIWallpaperServer_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.paperboard"];
  v3 = +[PBUIWallpaperServiceInterfaceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = PBUILogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_INFO, "PBUIWallpaperServer received connection: %{public}@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__PBUIWallpaperServer_listener_didReceiveConnection_withContext___block_invoke;
  v15[3] = &unk_278363C18;
  v15[4] = self;
  [v6 configureConnection:v15];
  clientAuthenticator = self->_clientAuthenticator;
  v9 = [v6 remoteProcess];
  v10 = [v9 auditToken];
  LODWORD(clientAuthenticator) = [(FBServiceClientAuthenticator *)clientAuthenticator authenticateAuditToken:v10];

  if (clientAuthenticator)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PBUIWallpaperServer_listener_didReceiveConnection_withContext___block_invoke_8;
    block[3] = &unk_2783622E0;
    block[4] = self;
    v12 = v6;
    v14 = v12;
    dispatch_async(queue, block);
    [v12 activate];
  }

  else
  {
    [v6 invalidate];
  }
}

void __65__PBUIWallpaperServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PBUIWallpaperServiceInterfaceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[PBUIWallpaperServiceInterfaceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__PBUIWallpaperServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_278363BF0;
  v6[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
}

void __65__PBUIWallpaperServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBUILogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21E67D000, v4, OS_LOG_TYPE_INFO, "PBUIWallpaperServer received connection invalidation: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) _queue_removeConnection:v3];
}

- (void)_queue_addConnection:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_INFO, "Adding Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections addObject:v4];
}

- (void)_queue_removeConnection:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_INFO, "Removing Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections removeObject:v4];
}

- (BOOL)setWallpaperImage:(id)a3 adjustedImage:(id)a4 thumbnailData:(id)a5 imageHashData:(id)a6 wallpaperOptions:(id)a7 forLocations:(id)a8 currentWallpaperMode:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(PBUIWallpaperServer *)self delegate];
  v24 = [v23 setWallpaperImage:v22 adjustedImage:v21 thumbnailData:v20 imageHashData:v19 wallpaperOptions:v18 forLocations:v17 currentWallpaperMode:v16];

  return v24;
}

- (void)setProceduralWallpaperIdentifier:(id)a3 options:(id)a4 locations:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PBUIWallpaperServer *)self delegate];
  [v11 setProceduralWallpaperIdentifier:v10 options:v9 locations:v8];
}

- (void)removeWallpaperVideo
{
  v2 = [(PBUIWallpaperServer *)self delegate];
  [v2 removeWallpaperVideo];
}

- (BOOL)setWallpaperWithVideo:(id)a3 sandboxToken:(id)a4 cropRect:(id)a5 wallpaperMode:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PBUIWallpaperServer *)self delegate];
  v15 = [v14 setWallpaperWithVideo:v13 sandboxToken:v12 cropRect:v11 wallpaperMode:v10];

  return v15;
}

- (void)restoreDefaultWallpaper
{
  v2 = [(PBUIWallpaperServer *)self delegate];
  [v2 restoreDefaultWallpaper];
}

- (BOOL)setWallpaperColor:(id)a3 darkColor:(id)a4 forLocations:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PBUIWallpaperServer *)self delegate];
  v12 = [v11 setWallpaperColor:v10 darkColor:v9 forLocations:v8];

  return v12;
}

- (BOOL)setWallpaperGradient:(id)a3 forLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PBUIWallpaperServer *)self delegate];
  v9 = [v8 setWallpaperGradient:v7 forLocations:v6];

  return v9;
}

- (id)getWallpaperOptionsForVariant:(id)a3
{
  v4 = a3;
  v5 = [(PBUIWallpaperServer *)self delegate];
  v6 = [v5 getWallpaperOptionsForVariant:v4];

  return v6;
}

- (id)getWallpaperLegibilitySettingsForVariant:(id)a3
{
  v4 = a3;
  v5 = [(PBUIWallpaperServer *)self delegate];
  v6 = [v5 getWallpaperLegibilitySettingsForVariant:v4];

  return v6;
}

- (PBUIWallpaperServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end