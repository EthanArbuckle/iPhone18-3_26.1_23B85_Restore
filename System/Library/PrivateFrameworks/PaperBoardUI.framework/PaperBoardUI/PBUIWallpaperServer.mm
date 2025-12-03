@interface PBUIWallpaperServer
- (BOOL)setWallpaperColor:(id)color darkColor:(id)darkColor forLocations:(id)locations;
- (BOOL)setWallpaperGradient:(id)gradient forLocations:(id)locations;
- (BOOL)setWallpaperImage:(id)image adjustedImage:(id)adjustedImage thumbnailData:(id)data imageHashData:(id)hashData wallpaperOptions:(id)options forLocations:(id)locations currentWallpaperMode:(id)mode;
- (BOOL)setWallpaperWithVideo:(id)video sandboxToken:(id)token cropRect:(id)rect wallpaperMode:(id)mode;
- (PBUIWallpaperServer)init;
- (PBUIWallpaperServerDelegate)delegate;
- (id)getWallpaperLegibilitySettingsForVariant:(id)variant;
- (id)getWallpaperOptionsForVariant:(id)variant;
- (void)_queue_addConnection:(id)connection;
- (void)_queue_removeConnection:(id)connection;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)removeWallpaperVideo;
- (void)restoreDefaultWallpaper;
- (void)setProceduralWallpaperIdentifier:(id)identifier options:(id)options locations:(id)locations;
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

    array = [MEMORY[0x277CBEB18] array];
    connections = v8->_connections;
    v8->_connections = array;
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

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = PBUILogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v17 = connectionCopy;
    _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_INFO, "PBUIWallpaperServer received connection: %{public}@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__PBUIWallpaperServer_listener_didReceiveConnection_withContext___block_invoke;
  v15[3] = &unk_278363C18;
  v15[4] = self;
  [connectionCopy configureConnection:v15];
  clientAuthenticator = self->_clientAuthenticator;
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  LODWORD(clientAuthenticator) = [(FBServiceClientAuthenticator *)clientAuthenticator authenticateAuditToken:auditToken];

  if (clientAuthenticator)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PBUIWallpaperServer_listener_didReceiveConnection_withContext___block_invoke_8;
    block[3] = &unk_2783622E0;
    block[4] = self;
    v12 = connectionCopy;
    v14 = v12;
    dispatch_async(queue, block);
    [v12 activate];
  }

  else
  {
    [connectionCopy invalidate];
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

- (void)_queue_addConnection:(id)connection
{
  v8 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = connectionCopy;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_INFO, "Adding Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections addObject:connectionCopy];
}

- (void)_queue_removeConnection:(id)connection
{
  v8 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = connectionCopy;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_INFO, "Removing Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections removeObject:connectionCopy];
}

- (BOOL)setWallpaperImage:(id)image adjustedImage:(id)adjustedImage thumbnailData:(id)data imageHashData:(id)hashData wallpaperOptions:(id)options forLocations:(id)locations currentWallpaperMode:(id)mode
{
  modeCopy = mode;
  locationsCopy = locations;
  optionsCopy = options;
  hashDataCopy = hashData;
  dataCopy = data;
  adjustedImageCopy = adjustedImage;
  imageCopy = image;
  delegate = [(PBUIWallpaperServer *)self delegate];
  v24 = [delegate setWallpaperImage:imageCopy adjustedImage:adjustedImageCopy thumbnailData:dataCopy imageHashData:hashDataCopy wallpaperOptions:optionsCopy forLocations:locationsCopy currentWallpaperMode:modeCopy];

  return v24;
}

- (void)setProceduralWallpaperIdentifier:(id)identifier options:(id)options locations:(id)locations
{
  locationsCopy = locations;
  optionsCopy = options;
  identifierCopy = identifier;
  delegate = [(PBUIWallpaperServer *)self delegate];
  [delegate setProceduralWallpaperIdentifier:identifierCopy options:optionsCopy locations:locationsCopy];
}

- (void)removeWallpaperVideo
{
  delegate = [(PBUIWallpaperServer *)self delegate];
  [delegate removeWallpaperVideo];
}

- (BOOL)setWallpaperWithVideo:(id)video sandboxToken:(id)token cropRect:(id)rect wallpaperMode:(id)mode
{
  modeCopy = mode;
  rectCopy = rect;
  tokenCopy = token;
  videoCopy = video;
  delegate = [(PBUIWallpaperServer *)self delegate];
  v15 = [delegate setWallpaperWithVideo:videoCopy sandboxToken:tokenCopy cropRect:rectCopy wallpaperMode:modeCopy];

  return v15;
}

- (void)restoreDefaultWallpaper
{
  delegate = [(PBUIWallpaperServer *)self delegate];
  [delegate restoreDefaultWallpaper];
}

- (BOOL)setWallpaperColor:(id)color darkColor:(id)darkColor forLocations:(id)locations
{
  locationsCopy = locations;
  darkColorCopy = darkColor;
  colorCopy = color;
  delegate = [(PBUIWallpaperServer *)self delegate];
  v12 = [delegate setWallpaperColor:colorCopy darkColor:darkColorCopy forLocations:locationsCopy];

  return v12;
}

- (BOOL)setWallpaperGradient:(id)gradient forLocations:(id)locations
{
  locationsCopy = locations;
  gradientCopy = gradient;
  delegate = [(PBUIWallpaperServer *)self delegate];
  v9 = [delegate setWallpaperGradient:gradientCopy forLocations:locationsCopy];

  return v9;
}

- (id)getWallpaperOptionsForVariant:(id)variant
{
  variantCopy = variant;
  delegate = [(PBUIWallpaperServer *)self delegate];
  v6 = [delegate getWallpaperOptionsForVariant:variantCopy];

  return v6;
}

- (id)getWallpaperLegibilitySettingsForVariant:(id)variant
{
  variantCopy = variant;
  delegate = [(PBUIWallpaperServer *)self delegate];
  v6 = [delegate getWallpaperLegibilitySettingsForVariant:variantCopy];

  return v6;
}

- (PBUIWallpaperServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end