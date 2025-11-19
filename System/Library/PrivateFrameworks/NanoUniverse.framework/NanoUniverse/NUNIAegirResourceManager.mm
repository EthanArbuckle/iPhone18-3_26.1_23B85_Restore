@interface NUNIAegirResourceManager
+ (id)sharedInstanceWithDisplayPixelFormat:(unint64_t)a3;
+ (void)_deallocInstance:(id)a3;
- (NUNIAegirResourceManager)initWithDisplayPixelFormat:(unint64_t)a3;
- (id)_generatePipelineVshName:(id)a3 fshName:(id)a4 config:(unint64_t)a5 blend0:(unint64_t)a6 blend1:(unint64_t)a7 pixelFormat0:(unint64_t)a8 pixelFormat1:(unint64_t)a9;
- (id)_provideEarthCloudsAtlasBacking:(id)a3;
- (id)provideAtlasBacking:(id)a3;
- (id)renderDisplayPipeline;
- (id)renderOffscreenPipelineForLocationDot;
- (id)renderOffscreenPipelineForPost;
- (id)renderOffscreenPipelineForSpheroid:(unint64_t)a3 config:(unint64_t)a4;
- (id)renderOffscreenPipelineForStar;
- (id)renderOffscreenPipelineForStarfield;
- (id)renderOffscreenPipelineForThreshold;
- (id)textureGroupWithSuffix:(id)a3;
- (void)_asyncDeallocInstance;
- (void)_deferredCloudDataFetchIfNeeded;
- (void)_handleCloudCoverTextureExpired;
- (void)_loadGeometry;
- (void)addClient;
- (void)dealloc;
- (void)purgeAllCloudCoverTextures;
- (void)removeClient;
- (void)setPipelineConstants:(uint64_t)a3;
@end

@implementation NUNIAegirResourceManager

+ (id)sharedInstanceWithDisplayPixelFormat:(unint64_t)a3
{
  v4 = a1;
  objc_sync_enter(v4);
  if (!__sharedInstance_1)
  {
    v5 = [[NUNIAegirResourceManager alloc] initWithDisplayPixelFormat:a3];
    v6 = __sharedInstance_1;
    __sharedInstance_1 = v5;
  }

  objc_sync_exit(v4);

  v7 = __sharedInstance_1;
  if (*(__sharedInstance_1 + 32) != a3)
  {
    v8 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NUNIAegirResourceManager *)a3 sharedInstanceWithDisplayPixelFormat:v8];
    }

    v7 = __sharedInstance_1;
  }

  return v7;
}

+ (void)_deallocInstance:(id)a3
{
  obj = a1;
  objc_sync_enter(obj);
  v3 = __sharedInstance_1;
  __sharedInstance_1 = 0;

  objc_sync_exit(obj);
}

- (NUNIAegirResourceManager)initWithDisplayPixelFormat:(unint64_t)a3
{
  v23.receiver = self;
  v23.super_class = NUNIAegirResourceManager;
  v4 = [(NUNIAegirResourceManager *)&v23 init];
  if (v4)
  {
    v5 = objc_opt_new();
    resourceProviderKey = v4->_resourceProviderKey;
    v4->_resourceProviderKey = v5;

    v7 = [MEMORY[0x277CFA798] sharedDevice];
    device = v4->_device;
    v4->_device = v7;

    v9 = v4->_device;
    v10 = NUNIBundle();
    v11 = [(MTLDevice *)v9 newDefaultLibraryWithBundle:v10 error:0];
    library = v4->_library;
    v4->_library = v11;

    v4->_displayPixelFormat = a3;
    v13 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    textureGroupHashTable = v4->_textureGroupHashTable;
    v4->_textureGroupHashTable = v13;

    v15 = [_TtC12NanoUniverse22AegirCloudCoverService alloc];
    LODWORD(v16) = 0.25;
    v17 = [(AegirCloudCoverService *)v15 initWithImageScale:v16];
    cloudsService = v4->_cloudsService;
    v4->_cloudsService = v17;

    v19 = v4->_cloudsService;
    v20 = objc_opt_new();
    [(AegirCloudCoverService *)v19 setFileConverter:v20];

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v4 selector:sel__handleCloudCoverTextureExpired name:@"CloudCoverExpiredNotification" object:0];

    [(NUNIAegirResourceManager *)v4 _loadGeometry];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NUNIAegirResourceManager;
  [(NUNIAegirResourceManager *)&v2 dealloc];
}

- (void)_asyncDeallocInstance
{
  v2 = [MEMORY[0x277CCACC8] isMainThread];
  v3 = objc_opt_class();
  if (v2)
  {

    [v3 _deallocInstance:0];
  }

  else
  {

    [v3 performSelectorOnMainThread:sel__deallocInstance_ withObject:0 waitUntilDone:0];
  }
}

- (void)addClient
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_clients;
  objc_sync_exit(obj);
}

- (void)removeClient
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_clients - 1;
  v2->_clients = v3;
  objc_sync_exit(v2);

  if (!v3)
  {

    [(NUNIAegirResourceManager *)v2 _asyncDeallocInstance];
  }
}

- (void)setPipelineConstants:(uint64_t)a3
{
  obj = objc_opt_new();
  [obj setConstantValue:a3 type:16 atIndex:0];
  [obj setConstantValue:a3 + 2 type:16 atIndex:1];
  [obj setConstantValue:a3 + 4 type:16 atIndex:2];
  [obj setConstantValue:a3 + 6 type:16 atIndex:3];
  [obj setConstantValue:a3 + 8 type:16 atIndex:4];
  [obj setConstantValue:a3 + 10 type:16 atIndex:5];
  [obj setConstantValue:a3 + 12 type:16 atIndex:6];
  [obj setConstantValue:a3 + 14 type:16 atIndex:7];
  [obj setConstantValue:a3 + 16 type:16 atIndex:8];
  [obj setConstantValue:a3 + 18 type:16 atIndex:9];
  [obj setConstantValue:a3 + 20 type:16 atIndex:10];
  [obj setConstantValue:a3 + 22 type:16 atIndex:11];
  [obj setConstantValue:a3 + 24 type:16 atIndex:12];
  [obj setConstantValue:a3 + 26 type:16 atIndex:13];
  [obj setConstantValue:a3 + 28 type:16 atIndex:14];
  [obj setConstantValue:a3 + 30 type:16 atIndex:15];
  [obj setConstantValue:a3 + 32 type:16 atIndex:16];
  [obj setConstantValue:a3 + 34 type:16 atIndex:17];
  [obj setConstantValue:a3 + 36 type:16 atIndex:18];
  [obj setConstantValue:a3 + 38 type:16 atIndex:19];
  [obj setConstantValue:a3 + 40 type:16 atIndex:20];
  [obj setConstantValue:a3 + 42 type:16 atIndex:21];
  [obj setConstantValue:a3 + 44 type:16 atIndex:22];
  [obj setConstantValue:a3 + 46 type:16 atIndex:23];
  [obj setConstantValue:a3 + 48 type:16 atIndex:24];
  [obj setConstantValue:a3 + 50 type:16 atIndex:25];
  [obj setConstantValue:a3 + 52 type:16 atIndex:26];
  [obj setConstantValue:a3 + 54 type:16 atIndex:27];
  [obj setConstantValue:a3 + 56 type:16 atIndex:28];
  [obj setConstantValue:a3 + 58 type:16 atIndex:29];
  [obj setConstantValue:a3 + 60 type:16 atIndex:30];
  [obj setConstantValue:a3 + 62 type:16 atIndex:31];
  [obj setConstantValue:a3 + 64 type:16 atIndex:32];
  [obj setConstantValue:a3 + 66 type:16 atIndex:33];
  [obj setConstantValue:a3 + 68 type:16 atIndex:34];
  objc_storeStrong((a1 + 880), obj);
  v5 = *(a1 + 48);
  *(a1 + 48) = 0;

  v6 = *(a1 + 56);
  *(a1 + 56) = 0;

  v7 = *(a1 + 64);
  *(a1 + 64) = 0;

  v8 = *(a1 + 72);
  *(a1 + 72) = 0;

  v9 = *(a1 + 80);
  *(a1 + 80) = 0;

  v10 = *(a1 + 88);
  *(a1 + 88) = 0;

  v11 = 0;
  v12 = a1 + 96;
  do
  {
    for (i = 0; i != 32; i += 8)
    {
      v14 = *(v12 + i);
      *(v12 + i) = 0;
    }

    ++v11;
    v12 += 32;
  }

  while (v11 != 24);
}

- (void)_loadGeometry
{
  v3 = [(MTLDevice *)self->_device newBufferWithBytes:&quadVertices length:16 options:1];
  rectVerticesBuffer = self->_rectVerticesBuffer;
  self->_rectVerticesBuffer = v3;

  v5 = [(MTLDevice *)self->_device newBufferWithBytes:&starVertices length:67392 options:1];
  starVerticesBuffer = self->_starVerticesBuffer;
  self->_starVerticesBuffer = v5;

  MEMORY[0x2821F96F8]();
}

- (id)textureGroupWithSuffix:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_textureGroupHashTable objectForKey:v4];
  if (!v5)
  {
    v6 = objc_alloc_init(NUNIAegirTextureGroup);
    v7 = [MEMORY[0x277CFA7C0] nullTexture2D];
    v8 = objc_opt_new();
    do
    {
      v9 = *(&textureGroupWithSuffix__uuidAlbedos + v5);
      if (v9)
      {
        v10 = [v9 stringByAppendingFormat:@"-%@", v4];
        v11 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:v10 nullTexture:v7];
        [v8 addObject:v11];
      }

      else
      {
        [v8 addObject:v7];
      }

      v5 += 8;
    }

    while (v5 != 192);
    [(NUNIAegirTextureGroup *)v6 setAlbedos:v8];

    v12 = objc_opt_new();
    for (i = 0; i != 24; ++i)
    {
      v14 = textureGroupWithSuffix__uuidNormals[i];
      if (v14)
      {
        v15 = [v14 stringByAppendingFormat:@"-%@", v4];
        v16 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:v15 nullTexture:v7];
        [v12 addObject:v16];
      }

      else
      {
        [v12 addObject:v7];
      }
    }

    [(NUNIAegirTextureGroup *)v6 setNormals:v12];

    v17 = objc_opt_new();
    for (j = 0; j != 24; ++j)
    {
      v19 = textureGroupWithSuffix__uuidEmissives[j];
      if (v19)
      {
        v20 = [v19 stringByAppendingFormat:@"-%@", v4];
        v21 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:v20 nullTexture:v7];
        [v17 addObject:v21];
      }

      else
      {
        [v17 addObject:v7];
      }
    }

    [(NUNIAegirTextureGroup *)v6 setEmissives:v17];

    v41 = objc_opt_new();
    v22 = objc_opt_new();
    v23 = objc_opt_new();
    for (k = 0; k != 24; ++k)
    {
      if (textureGroupWithSuffix__uuidClouds[k])
      {
        v25 = MEMORY[0x277CFA7C0];
        v26 = +[_TtC12NanoUniverse22AegirCloudCoverService cloudLevelLowFileName];
        v27 = [v25 textureWithProviderDelegate:self uuid:v26 nullTexture:v7];
        [v41 addObject:v27];

        v28 = MEMORY[0x277CFA7C0];
        v29 = +[_TtC12NanoUniverse22AegirCloudCoverService cloudLevelMidFileName];
        v30 = [v28 textureWithProviderDelegate:self uuid:v29 nullTexture:v7];
        [v22 addObject:v30];

        v31 = MEMORY[0x277CFA7C0];
        v32 = +[_TtC12NanoUniverse22AegirCloudCoverService cloudLevelHighFileName];
        v33 = [v31 textureWithProviderDelegate:self uuid:v32 nullTexture:v7];
        [v23 addObject:v33];
      }

      else
      {
        [v41 addObject:v7];
        [v22 addObject:v7];
        [v23 addObject:v7];
      }
    }

    [(NUNIAegirTextureGroup *)v6 setCloudsLo:v41];
    [(NUNIAegirTextureGroup *)v6 setCloudsMd:v22];
    [(NUNIAegirTextureGroup *)v6 setCloudsHi:v23];

    v34 = objc_opt_new();
    for (m = 0; m != 24; ++m)
    {
      if ((0x40B7FuLL >> m))
      {
        [v34 addObject:v7];
      }

      else
      {
        v36 = [textureGroupWithSuffix__uuidGradients_0[m] stringByAppendingFormat:@"-%@", v4];
        v37 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:v36 nullTexture:v7];
        [v34 addObject:v37];
      }
    }

    v5 = v6;
    [(NUNIAegirTextureGroup *)v6 setGradients:v34];

    v38 = [@"s1a" stringByAppendingFormat:@"-%@", v4];
    v39 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:v38 nullTexture:v7];
    [(NUNIAegirTextureGroup *)v6 setStarfield:v39];

    [(NSMapTable *)self->_textureGroupHashTable setObject:v6 forKey:v4];
  }

  return v5;
}

- (id)renderDisplayPipeline
{
  v3 = self->_pipelineStateDisplay;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_pass_vsh" fshName:@"aegir_display_fsh" config:0 blend0:0 blend1:4 pixelFormat0:self->_displayPixelFormat pixelFormat1:0];
    pipelineStateDisplay = self->_pipelineStateDisplay;
    self->_pipelineStateDisplay = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForPost
{
  v3 = self->_pipelineStatePost;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_pass_vsh" fshName:@"aegir_post_fsh" config:0 blend0:2 blend1:3 pixelFormat0:555 pixelFormat1:10];
    pipelineStatePost = self->_pipelineStatePost;
    self->_pipelineStatePost = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForStarfield
{
  v3 = self->_pipelineStateStarfield;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_pass_vsh" fshName:@"aegir_starfield_fsh" config:0 blend0:0 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateStarfield = self->_pipelineStateStarfield;
    self->_pipelineStateStarfield = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForStar
{
  v3 = self->_pipelineStateStar;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_star_vsh" fshName:@"aegir_star_fsh" config:0 blend0:1 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateStar = self->_pipelineStateStar;
    self->_pipelineStateStar = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForThreshold
{
  v3 = self->_pipelineStateThreshold;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_pass_vsh" fshName:@"aegir_threshold_fsh" config:0 blend0:0 blend1:4 pixelFormat0:10 pixelFormat1:0];
    pipelineStateThreshold = self->_pipelineStateThreshold;
    self->_pipelineStateThreshold = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForLocationDot
{
  v3 = self->_pipelineStateLocationDot;
  if (!v3)
  {
    v4 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:@"aegir_locdot_vsh" fshName:@"aegir_locdot_fsh" config:0 blend0:1 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateLocationDot = self->_pipelineStateLocationDot;
    self->_pipelineStateLocationDot = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForSpheroid:(unint64_t)a3 config:(unint64_t)a4
{
  v7 = self + 32 * a3 + 8 * a4;
  v9 = *(v7 + 12);
  v8 = (v7 + 96);
  v10 = v9;
  if (!v10)
  {
    if ((0x40801uLL >> a3))
    {
      v10 = 0;
    }

    else
    {
      v11 = renderOffscreenPipelineForSpheroid_config__spheroridVshs[a3];
      v12 = renderOffscreenPipelineForSpheroid_config__spheroridFshs[a3];
      v13 = v11;
      v14 = [(NUNIAegirResourceManager *)self _generatePipelineVshName:v13 fshName:v12 config:a4 blend0:1 blend1:1 pixelFormat0:555 pixelFormat1:10];
      v15 = *v8;
      *v8 = v14;

      v10 = v14;
    }
  }

  return v10;
}

- (id)_generatePipelineVshName:(id)a3 fshName:(id)a4 config:(unint64_t)a5 blend0:(unint64_t)a6 blend1:(unint64_t)a7 pixelFormat0:(unint64_t)a8 pixelFormat1:(unint64_t)a9
{
  v12 = a5;
  v54 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v45 = v12 & 1;
  v44 = (v12 & 2) != 0;
  v17 = [(MTLFunctionConstantValues *)self->_pipelineConstants copy];
  [v17 setConstantValue:&v45 type:53 atIndex:35];
  [v17 setConstantValue:&v44 type:53 atIndex:36];
  v42 = a7;
  v43 = a6;
  v18 = objc_opt_new();
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)+(%@)", v15, v16];
  [v18 setLabel:v19];

  v40 = v15;
  v20 = [(MTLLibrary *)self->_library newFunctionWithName:v15];
  [v18 setVertexFunction:v20];

  v21 = [(MTLLibrary *)self->_library newFunctionWithName:v16 constantValues:v17 error:0];
  [v18 setFragmentFunction:v21];

  v22 = 0;
  v23 = &v43;
  v24 = 1;
  do
  {
    v25 = v24;
    if (!a8)
    {
      goto LABEL_15;
    }

    v26 = [v18 colorAttachments];
    v27 = [v26 objectAtIndexedSubscript:v22];

    [v27 setPixelFormat:a8];
    [v27 setBlendingEnabled:0];
    v28 = *v23;
    if (*v23 > 2)
    {
      if (v28 != 3)
      {
        if (v28 == 4)
        {
          [v27 setWriteMask:0];
        }

        goto LABEL_14;
      }

      [v27 setBlendingEnabled:1];
      [v27 setRgbBlendOperation:2];
      v29 = v27;
      v30 = 2;
      goto LABEL_12;
    }

    if (v28 == 1)
    {
      [v27 setBlendingEnabled:1];
      [v27 setRgbBlendOperation:0];
      [v27 setAlphaBlendOperation:0];
      [v27 setSourceRGBBlendFactor:4];
      [v27 setSourceAlphaBlendFactor:4];
      [v27 setDestinationRGBBlendFactor:5];
      v31 = v27;
      v32 = 5;
LABEL_13:
      [v31 setDestinationAlphaBlendFactor:v32];
      goto LABEL_14;
    }

    if (v28 == 2)
    {
      [v27 setBlendingEnabled:1];
      [v27 setRgbBlendOperation:0];
      v29 = v27;
      v30 = 0;
LABEL_12:
      [v29 setAlphaBlendOperation:v30];
      [v27 setSourceRGBBlendFactor:1];
      [v27 setSourceAlphaBlendFactor:1];
      [v27 setDestinationRGBBlendFactor:1];
      v31 = v27;
      v32 = 1;
      goto LABEL_13;
    }

LABEL_14:

LABEL_15:
    v24 = 0;
    v23 = &v42;
    a8 = a9;
    v22 = 1;
  }

  while ((v25 & 1) != 0);
  device = self->_device;
  v41 = 0;
  v34 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v18 error:&v41];
  v35 = v41;
  if (!v34)
  {
    v36 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = self->_device;
      *buf = 138413058;
      v47 = v40;
      v48 = 2112;
      v49 = v16;
      v50 = 2112;
      v51 = v39;
      v52 = 2112;
      v53 = v35;
      _os_log_error_impl(&dword_25B6D4000, v36, OS_LOG_TYPE_ERROR, "AegirResourceManager: Metal compilation failure Shader=%@+%@ Device=%@ Error=%@", buf, 0x2Au);
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_handleCloudCoverTextureExpired
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NUNIAegirResourceManager__handleCloudCoverTextureExpired__block_invoke;
  block[3] = &unk_27995F980;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __59__NUNIAegirResourceManager__handleCloudCoverTextureExpired__block_invoke(uint64_t a1)
{
  v2 = NUNILoggingObjectForDomain(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B6D4000, v2, OS_LOG_TYPE_DEFAULT, "Received cloud cover texture expired update. It will purge current textures.", v4, 2u);
  }

  return [*(a1 + 32) purgeAllCloudCoverTextures];
}

- (void)purgeAllCloudCoverTextures
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AegirCloudCoverService *)self->_cloudsService allCloudLevelFileNames];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CFA7B0] sharedInstance];
        [v8 purge:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_deferredCloudDataFetchIfNeeded
{
  v3 = [(AegirCloudCoverService *)self->_cloudsService canFetchData];
  v4 = NUNILoggingObjectForDomain(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B6D4000, v4, OS_LOG_TYPE_DEFAULT, "Will Fetch cloud cover data.", buf, 2u);
    }

    cloudsService = self->_cloudsService;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__NUNIAegirResourceManager__deferredCloudDataFetchIfNeeded__block_invoke;
    v7[3] = &unk_27995F9A8;
    v7[4] = self;
    [(AegirCloudCoverService *)cloudsService retrieveCloudTextureURLsWithNotifyOn:MEMORY[0x277D85CD0] completionHandler:v7];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B6D4000, v4, OS_LOG_TYPE_DEFAULT, "Will not fetch cloud cover data.", buf, 2u);
    }
  }
}

- (id)_provideEarthCloudsAtlasBacking:(id)a3
{
  v4 = a3;
  [(NUNIAegirResourceManager *)self _deferredCloudDataFetchIfNeeded];
  v5 = [(AegirCloudCoverService *)self->_cloudsService currentURLForCloudLevelWith:v4];
  v6 = MEMORY[0x277CFA750];
  v7 = [v5 path];
  v8 = [v6 atlasBackingWithArt:v7 uuid:v4];

  return v8;
}

- (id)provideAtlasBacking:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[_TtC12NanoUniverse22AegirCloudCoverService cloudLevelPrefix];
  v6 = [v4 hasPrefix:v5];

  if (v6)
  {
    v7 = [(NUNIAegirResourceManager *)self _provideEarthCloudsAtlasBacking:v4];
  }

  else
  {
    v8 = NUNIBundle();
    v9 = [v8 pathForResource:v4 ofType:@"art"];

    v10 = NUNILoggingObjectForDomain(0);
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_25B6D4000, v11, OS_LOG_TYPE_DEFAULT, "providing artwork for %@ at %@", &v14, 0x16u);
      }

      v7 = [MEMORY[0x277CFA750] atlasBackingWithArt:v9 uuid:v4];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(NUNIAegirResourceManager *)v4 provideAtlasBacking:v11];
      }

      v7 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)sharedInstanceWithDisplayPixelFormat:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(__sharedInstance_1 + 32);
  v4[0] = 67109376;
  v4[1] = v2;
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "AegirResourceManager: DisplayPixelFormat %d != %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)provideAtlasBacking:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "AegirResourceManager: missing artwork for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end