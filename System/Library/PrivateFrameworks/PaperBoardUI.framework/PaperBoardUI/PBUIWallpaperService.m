@interface PBUIWallpaperService
+ (BOOL)setWallpaperColor:(id)a3 darkColor:(id)a4 forLocations:(id)a5;
+ (BOOL)setWallpaperGradient:(id)a3 forLocations:(id)a4;
+ (BOOL)setWallpaperImage:(id)a3 adjustedImage:(id)a4 thumbnailData:(id)a5 imageHashData:(id)a6 wallpaperOptions:(id)a7 forLocations:(id)a8 currentWallpaperMode:(id)a9;
+ (BOOL)setWallpaperWithVideo:(id)a3 sandboxToken:(id)a4 cropRect:(id)a5 wallpaperMode:(id)a6;
+ (id)_remoteTargetForServiceClientConnection:(id)a3;
+ (id)_setupAndActivateServiceClientConnection;
+ (id)getWallpaperLegibilitySettingsForVariant:(id)a3;
+ (id)getWallpaperOptionsForVariant:(id)a3;
+ (void)removeWallpaperVideo;
+ (void)restoreDefaultWallpaper;
+ (void)setProceduralWallpaperIdentifier:(id)a3 options:(id)a4 locations:(id)a5;
@end

@implementation PBUIWallpaperService

+ (BOOL)setWallpaperImage:(id)a3 adjustedImage:(id)a4 thumbnailData:(id)a5 imageHashData:(id)a6 wallpaperOptions:(id)a7 forLocations:(id)a8 currentWallpaperMode:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [a1 _setupAndActivateServiceClientConnection];
  v24 = [a1 _remoteTargetForServiceClientConnection:v23];
  v25 = [v24 setWallpaperImage:v22 adjustedImage:v21 thumbnailData:v20 imageHashData:v19 wallpaperOptions:v18 forLocations:v17 currentWallpaperMode:v16];

  [v23 invalidate];
  return v25;
}

+ (void)setProceduralWallpaperIdentifier:(id)a3 options:(id)a4 locations:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [a1 _setupAndActivateServiceClientConnection];
  v11 = [a1 _remoteTargetForServiceClientConnection:v12];
  [v11 setProceduralWallpaperIdentifier:v10 options:v9 locations:v8];

  [v12 invalidate];
}

+ (void)removeWallpaperVideo
{
  v4 = [a1 _setupAndActivateServiceClientConnection];
  v3 = [a1 _remoteTargetForServiceClientConnection:v4];
  [v3 removeWallpaperVideo];

  [v4 invalidate];
}

+ (BOOL)setWallpaperWithVideo:(id)a3 sandboxToken:(id)a4 cropRect:(id)a5 wallpaperMode:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 _setupAndActivateServiceClientConnection];
  v15 = [a1 _remoteTargetForServiceClientConnection:v14];
  v16 = [v15 setWallpaperWithVideo:v13 sandboxToken:v12 cropRect:v11 wallpaperMode:v10];

  [v14 invalidate];
  return v16;
}

+ (void)restoreDefaultWallpaper
{
  v4 = [a1 _setupAndActivateServiceClientConnection];
  v3 = [a1 _remoteTargetForServiceClientConnection:v4];
  [v3 restoreDefaultWallpaper];

  [v4 invalidate];
}

+ (BOOL)setWallpaperColor:(id)a3 darkColor:(id)a4 forLocations:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 _setupAndActivateServiceClientConnection];
  v12 = [a1 _remoteTargetForServiceClientConnection:v11];
  v13 = [v12 setWallpaperColor:v10 darkColor:v9 forLocations:v8];

  [v11 invalidate];
  return v13;
}

+ (BOOL)setWallpaperGradient:(id)a3 forLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _setupAndActivateServiceClientConnection];
  v9 = [a1 _remoteTargetForServiceClientConnection:v8];
  v10 = [v9 setWallpaperGradient:v7 forLocations:v6];

  [v8 invalidate];
  return v10;
}

+ (id)getWallpaperOptionsForVariant:(id)a3
{
  v4 = a3;
  v5 = [a1 _setupAndActivateServiceClientConnection];
  v6 = [a1 _remoteTargetForServiceClientConnection:v5];
  v7 = [v6 getWallpaperOptionsForVariant:v4];

  [v5 invalidate];

  return v7;
}

+ (id)getWallpaperLegibilitySettingsForVariant:(id)a3
{
  v4 = a3;
  v5 = [a1 _setupAndActivateServiceClientConnection];
  v6 = [a1 _remoteTargetForServiceClientConnection:v5];
  v7 = [v6 getWallpaperLegibilitySettingsForVariant:v4];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
  }

  v9 = v8;

  [v5 invalidate];

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
  v8[4] = a1;
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

+ (id)_remoteTargetForServiceClientConnection:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46E38];
  v4 = a3;
  v5 = [v3 attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v4 remoteTargetWithLaunchingAssertionAttributes:v6];

  return v7;
}

@end