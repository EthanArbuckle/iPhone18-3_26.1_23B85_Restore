@interface CLKUIMetalResourceManager
+ (MTLDevice)sharedDevice;
+ (MTLTexture)sharedNilTexture2D;
+ (MTLTexture)sharedNilTextureCube;
+ (id)sharedCommandQueue;
+ (id)textureStreamingQueue;
+ (void)addCompletedErrorCheckToCommandBuffer:(id)a3 forCase:(id)a4;
+ (void)setSynchronousTextureStreamingEnabled:(BOOL)a3;
- (CLKUIMetalResourceManager)init;
- (id)_newAtlasForUuid:(id)a3 nilTexture:(id)a4 streaming:(BOOL)a5;
- (id)_newAtlasForUuid:(id)a3 nullTexture:(id)a4 streaming:(BOOL)a5;
- (id)nullAtlas2D;
- (id)nullAtlasCube;
- (void)_purgeAtlases:(id)a3;
@end

@implementation CLKUIMetalResourceManager

- (CLKUIMetalResourceManager)init
{
  v9.receiver = self;
  v9.super_class = CLKUIMetalResourceManager;
  v2 = [(CLKUIResourceManager *)&v9 init];
  if (v2)
  {
    v3 = MTLCreateSystemDefaultDevice();
    device = v2->_device;
    v2->_device = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.NanoTimeKit.CLKUIMetalResourceManager.TextureStreaming", v5);
    textureStreamingQueue = v2->_textureStreamingQueue;
    v2->_textureStreamingQueue = v6;
  }

  return v2;
}

+ (MTLDevice)sharedDevice
{
  v2 = [a1 sharedMetalInstance];
  v3 = v2[9];
  v4 = v3;

  return v3;
}

+ (id)sharedCommandQueue
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&sharedCommandQueue__sharedCommandQueue);
  if (!WeakRetained)
  {
    v4 = [v2 sharedDevice];
    WeakRetained = [v4 newCommandQueue];

    objc_storeWeak(&sharedCommandQueue__sharedCommandQueue, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

+ (MTLTexture)sharedNilTexture2D
{
  v3 = [a1 sharedDevice];
  v4 = v3;
  if (v3)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __47__CLKUIMetalResourceManager_sharedNilTexture2D__block_invoke;
    v12 = &unk_1E87628B8;
    v13 = v3;
    v14 = a1;
    if (sharedNilTexture2D_onceToken != -1)
    {
      dispatch_once(&sharedNilTexture2D_onceToken, &v9);
    }

    v5 = [a1 sharedMetalInstance];
    v6 = v5[10];
  }

  else
  {
    v7 = [a1 sharedMetalInstance];
    v6 = v7[10];
  }

  return v6;
}

void __47__CLKUIMetalResourceManager_sharedNilTexture2D__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:4 height:4 mipmapped:0];
  [v2 setUsage:0];
  [v2 setStorageMode:0];
  v3 = [*(a1 + 32) newTextureWithDescriptor:v2];
  [v3 setLabel:@"CLKUIMetalResourceManager Nil Texture2D"];
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x7459F022uLL);
  memset(v7, 0, sizeof(v7));
  v8 = vdupq_n_s64(4uLL);
  v9 = 1;
  [v3 replaceRegion:v7 mipmapLevel:0 slice:0 withBytes:v4 bytesPerRow:16 bytesPerImage:64];
  free(v4);
  v5 = [*(a1 + 40) sharedMetalInstance];
  v6 = v5[10];
  v5[10] = v3;
}

+ (MTLTexture)sharedNilTextureCube
{
  v3 = [a1 sharedDevice];
  v4 = v3;
  if (v3)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __49__CLKUIMetalResourceManager_sharedNilTextureCube__block_invoke;
    v12 = &unk_1E87628B8;
    v13 = v3;
    v14 = a1;
    if (sharedNilTextureCube_onceToken != -1)
    {
      dispatch_once(&sharedNilTextureCube_onceToken, &v9);
    }

    v5 = [a1 sharedMetalInstance];
    v6 = v5[11];
  }

  else
  {
    v7 = [a1 sharedMetalInstance];
    v6 = v7[11];
  }

  return v6;
}

void __49__CLKUIMetalResourceManager_sharedNilTextureCube__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:80 size:4 mipmapped:0];
  [v2 setUsage:0];
  [v2 setStorageMode:0];
  v3 = [*(a1 + 32) newTextureWithDescriptor:v2];
  [v3 setLabel:@"CLKUIMetalResourceManager Nil TextureCube"];
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0xDE9ABEDuLL);
  for (i = 0; i != 6; ++i)
  {
    memset(v8, 0, sizeof(v8));
    v9 = vdupq_n_s64(4uLL);
    v10 = 1;
    [v3 replaceRegion:v8 mipmapLevel:0 slice:i withBytes:v4 bytesPerRow:16 bytesPerImage:64];
  }

  free(v4);
  v6 = [*(a1 + 40) sharedMetalInstance];
  v7 = v6[11];
  v6[11] = v3;
}

+ (void)addCompletedErrorCheckToCommandBuffer:(id)a3 forCase:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__CLKUIMetalResourceManager_addCompletedErrorCheckToCommandBuffer_forCase___block_invoke;
  v7[3] = &unk_1E87628E0;
  v8 = v5;
  v6 = v5;
  [a3 addCompletedHandler:v7];
}

void __75__CLKUIMetalResourceManager_addCompletedErrorCheckToCommandBuffer_forCase___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 status] != 4)
  {
    v4 = [v3 error];
    v5 = [v4 code];
    if ([v4 code] == 4 && (CLKInternalBuild() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"CLKUIMTLCommandBufferException" format:{@"GPU Error Code %lu found submitting MTLCommandBuffer for %@: %@", v5, *(a1 + 32), v4}];
    }

    else
    {
      v6 = _CLKUILoggingObjectForDomain(0, "CLKUILoggingDomainMetalQuadView");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = *(a1 + 32);
        *buf = 134218498;
        v9 = v5;
        v10 = 2112;
        v11 = v7;
        v12 = 2112;
        v13 = v4;
        _os_log_fault_impl(&dword_1E49C8000, v6, OS_LOG_TYPE_FAULT, "GPU Error Code %lu found submitting MTLCommandBuffer for %@: %@", buf, 0x20u);
      }
    }
  }
}

+ (void)setSynchronousTextureStreamingEnabled:(BOOL)a3
{
  if (_synchronousTextureStreamingEnabled != a3)
  {
    _synchronousTextureStreamingEnabled = a3;
    if (a3)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_3);
    }
  }
}

+ (id)textureStreamingQueue
{
  v2 = [a1 sharedMetalInstance];
  v3 = v2[12];
  v4 = v3;

  return v3;
}

- (id)nullAtlas2D
{
  if (nullAtlas2D_onceToken != -1)
  {
    [CLKUIMetalResourceManager nullAtlas2D];
  }

  v3 = __nullAtlas2D;

  return v3;
}

void __40__CLKUIMetalResourceManager_nullAtlas2D__block_invoke()
{
  v0 = [CLKUIMetalAtlas alloc];
  v3 = +[CLKUIMetalResourceManager sharedNilTexture2D];
  v1 = [(CLKUIMetalAtlas *)v0 initWithUuid:0 nilTexture:v3 streaming:0];
  v2 = __nullAtlas2D;
  __nullAtlas2D = v1;
}

- (id)nullAtlasCube
{
  if (nullAtlasCube_onceToken != -1)
  {
    [CLKUIMetalResourceManager nullAtlasCube];
  }

  v3 = __nullAtlasCube;

  return v3;
}

void __42__CLKUIMetalResourceManager_nullAtlasCube__block_invoke()
{
  v0 = [CLKUIMetalAtlas alloc];
  v3 = +[CLKUIMetalResourceManager sharedNilTextureCube];
  v1 = [(CLKUIMetalAtlas *)v0 initWithUuid:0 nilTexture:v3 streaming:0];
  v2 = __nullAtlasCube;
  __nullAtlasCube = v1;
}

- (id)_newAtlasForUuid:(id)a3 nullTexture:(id)a4 streaming:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [a4 atlas];
  v10 = [v9 nilTexture];
  v11 = [(CLKUIMetalResourceManager *)self _newAtlasForUuid:v8 nilTexture:v10 streaming:v5];

  return v11;
}

- (id)_newAtlasForUuid:(id)a3 nilTexture:(id)a4 streaming:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [[CLKUIMetalAtlas alloc] initWithUuid:v8 nilTexture:v7 streaming:v5];

  return v9;
}

- (void)_purgeAtlases:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) purge];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end