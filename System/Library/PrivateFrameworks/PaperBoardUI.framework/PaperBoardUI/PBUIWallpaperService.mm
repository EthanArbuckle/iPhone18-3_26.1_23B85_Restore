@interface PBUIWallpaperService
+ (BOOL)setWallpaperColor:(id)color darkColor:(id)darkColor forLocations:(id)locations;
+ (BOOL)setWallpaperGradient:(id)gradient forLocations:(id)locations;
+ (BOOL)setWallpaperImage:(id)image adjustedImage:(id)adjustedImage thumbnailData:(id)data imageHashData:(id)hashData wallpaperOptions:(id)options forLocations:(id)locations currentWallpaperMode:(id)mode;
+ (BOOL)setWallpaperWithVideo:(id)video sandboxToken:(id)token cropRect:(id)rect wallpaperMode:(id)mode;
+ (id)_remoteTargetForServiceClientConnection:(id)connection;
+ (id)_setupAndActivateServiceClientConnection;
+ (id)getWallpaperLegibilitySettingsForVariant:(id)variant;
+ (id)getWallpaperOptionsForVariant:(id)variant;
+ (void)removeWallpaperVideo;
+ (void)restoreDefaultWallpaper;
+ (void)setProceduralWallpaperIdentifier:(id)identifier options:(id)options locations:(id)locations;
@end

@implementation PBUIWallpaperService

+ (BOOL)setWallpaperImage:(id)image adjustedImage:(id)adjustedImage thumbnailData:(id)data imageHashData:(id)hashData wallpaperOptions:(id)options forLocations:(id)locations currentWallpaperMode:(id)mode
{
  modeCopy = mode;
  locationsCopy = locations;
  optionsCopy = options;
  hashDataCopy = hashData;
  dataCopy = data;
  adjustedImageCopy = adjustedImage;
  imageCopy = image;
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v24 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  v25 = [v24 setWallpaperImage:imageCopy adjustedImage:adjustedImageCopy thumbnailData:dataCopy imageHashData:hashDataCopy wallpaperOptions:optionsCopy forLocations:locationsCopy currentWallpaperMode:modeCopy];

  [_setupAndActivateServiceClientConnection invalidate];
  return v25;
}

+ (void)setProceduralWallpaperIdentifier:(id)identifier options:(id)options locations:(id)locations
{
  locationsCopy = locations;
  optionsCopy = options;
  identifierCopy = identifier;
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v11 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  [v11 setProceduralWallpaperIdentifier:identifierCopy options:optionsCopy locations:locationsCopy];

  [_setupAndActivateServiceClientConnection invalidate];
}

+ (void)removeWallpaperVideo
{
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v3 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  [v3 removeWallpaperVideo];

  [_setupAndActivateServiceClientConnection invalidate];
}

+ (BOOL)setWallpaperWithVideo:(id)video sandboxToken:(id)token cropRect:(id)rect wallpaperMode:(id)mode
{
  modeCopy = mode;
  rectCopy = rect;
  tokenCopy = token;
  videoCopy = video;
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v15 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  v16 = [v15 setWallpaperWithVideo:videoCopy sandboxToken:tokenCopy cropRect:rectCopy wallpaperMode:modeCopy];

  [_setupAndActivateServiceClientConnection invalidate];
  return v16;
}

+ (void)restoreDefaultWallpaper
{
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v3 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  [v3 restoreDefaultWallpaper];

  [_setupAndActivateServiceClientConnection invalidate];
}

+ (BOOL)setWallpaperColor:(id)color darkColor:(id)darkColor forLocations:(id)locations
{
  locationsCopy = locations;
  darkColorCopy = darkColor;
  colorCopy = color;
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v12 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  v13 = [v12 setWallpaperColor:colorCopy darkColor:darkColorCopy forLocations:locationsCopy];

  [_setupAndActivateServiceClientConnection invalidate];
  return v13;
}

+ (BOOL)setWallpaperGradient:(id)gradient forLocations:(id)locations
{
  locationsCopy = locations;
  gradientCopy = gradient;
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v9 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  v10 = [v9 setWallpaperGradient:gradientCopy forLocations:locationsCopy];

  [_setupAndActivateServiceClientConnection invalidate];
  return v10;
}

+ (id)getWallpaperOptionsForVariant:(id)variant
{
  variantCopy = variant;
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v6 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  v7 = [v6 getWallpaperOptionsForVariant:variantCopy];

  [_setupAndActivateServiceClientConnection invalidate];

  return v7;
}

+ (id)getWallpaperLegibilitySettingsForVariant:(id)variant
{
  variantCopy = variant;
  _setupAndActivateServiceClientConnection = [self _setupAndActivateServiceClientConnection];
  v6 = [self _remoteTargetForServiceClientConnection:_setupAndActivateServiceClientConnection];
  v7 = [v6 getWallpaperLegibilitySettingsForVariant:variantCopy];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
  }

  v9 = v8;

  [_setupAndActivateServiceClientConnection invalidate];

  return v9;
}

+ (id)_setupAndActivateServiceClientConnection
{
  v3 = MEMORY[0x277CF3288];
  v4 = +[PBUIWallpaperServiceInterfaceSpecification identifier];
  v5 = [v3 endpointForMachName:@"com.apple.paperboard.services" service:v4 instance:0];

  v6 = [MEMORY[0x277CF3280] connectionWithEndpoint:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__PBUIWallpaperService__setupAndActivateServiceClientConnection__block_invoke;
  v8[3] = &__block_descriptor_40_e42_v16__0___BSServiceConnectionConfiguring__8l;
  v8[4] = self;
  [v6 configureConnection:v8];
  [v6 activate];

  return v6;
}

void __64__PBUIWallpaperService__setupAndActivateServiceClientConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PBUIWallpaperServiceInterfaceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[PBUIWallpaperServiceInterfaceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PBUIWallpaperService__setupAndActivateServiceClientConnection__block_invoke_2;
  v6[3] = &__block_descriptor_40_e29_v16__0__BSServiceConnection_8l;
  v6[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
}

void __64__PBUIWallpaperService__setupAndActivateServiceClientConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v2;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Received invalidation for connection: %{public}@", &v6, 0x16u);
  }
}

+ (id)_remoteTargetForServiceClientConnection:(id)connection
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46E38];
  connectionCopy = connection;
  v5 = [v3 attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [connectionCopy remoteTargetWithLaunchingAssertionAttributes:v6];

  return v7;
}

@end