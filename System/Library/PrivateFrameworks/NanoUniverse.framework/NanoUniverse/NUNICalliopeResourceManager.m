@interface NUNICalliopeResourceManager
+ (id)sharedInstanceWithDisplayPixelFormat:(unint64_t)a3;
+ (void)_deallocInstance:(id)a3;
- ($6DF29C2F86D270DB44307FB3958C5E7F)patchTextureGroupForSpheroid:(unint64_t)a3 index:(unint64_t)a4 suffix:(id)a5;
- (NUNICalliopeResourceManager)initWithDisplayPixelFormat:(unint64_t)a3;
- (id)_generatePipelineCshName:(id)a3;
- (id)_generatePipelineTshName:(id)a3 pixelFormat0:(unint64_t)a4 pixelFormat1:(unint64_t)a5;
- (id)_generatePipelineVshName:(id)a3 fshName:(id)a4 config:(unint64_t)a5 blend0:(unint64_t)a6 blend1:(unint64_t)a7 pixelFormat0:(unint64_t)a8 pixelFormat1:(unint64_t)a9;
- (id)_provideEarthCloudsAtlasBacking:(id)a3;
- (id)computePipelineForBloomChainDownsample;
- (id)computePipelineForBloomChainUpsample;
- (id)patchIndicesBufferForLod:(unint64_t)a3;
- (id)provideAtlasBacking:(id)a3;
- (id)renderDisplayPipeline;
- (id)renderOffscreenPipelineForAtmosphere;
- (id)renderOffscreenPipelineForBloomDownsample;
- (id)renderOffscreenPipelineForBloomDownsampleUsingTileShader;
- (id)renderOffscreenPipelineForDebugDraw;
- (id)renderOffscreenPipelineForLocationDot;
- (id)renderOffscreenPipelineForPost;
- (id)renderOffscreenPipelineForSaturnRing;
- (id)renderOffscreenPipelineForSpheroid:(unint64_t)a3 layer:(int)a4 config:(unint64_t)a5;
- (id)renderOffscreenPipelineForStar;
- (id)renderOffscreenPipelineForStarfield;
- (id)textureGroupWithSuffix:(id)a3;
- (unsigned)patchIndexCountForLod:(unint64_t)a3;
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

@implementation NUNICalliopeResourceManager

+ (id)sharedInstanceWithDisplayPixelFormat:(unint64_t)a3
{
  v4 = a1;
  objc_sync_enter(v4);
  if (!__sharedInstance_0)
  {
    v5 = [[NUNICalliopeResourceManager alloc] initWithDisplayPixelFormat:a3];
    v6 = __sharedInstance_0;
    __sharedInstance_0 = v5;
  }

  objc_sync_exit(v4);

  v7 = __sharedInstance_0;
  if (*(__sharedInstance_0 + 32) != a3)
  {
    v8 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NUNICalliopeResourceManager *)a3 sharedInstanceWithDisplayPixelFormat:v8];
    }

    v7 = __sharedInstance_0;
  }

  return v7;
}

+ (void)_deallocInstance:(id)a3
{
  obj = a1;
  objc_sync_enter(obj);
  v3 = __sharedInstance_0;
  __sharedInstance_0 = 0;

  objc_sync_exit(obj);
}

- (NUNICalliopeResourceManager)initWithDisplayPixelFormat:(unint64_t)a3
{
  v23.receiver = self;
  v23.super_class = NUNICalliopeResourceManager;
  v4 = [(NUNICalliopeResourceManager *)&v23 init];
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

    [(NUNICalliopeResourceManager *)v4 _loadGeometry];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NUNICalliopeResourceManager;
  [(NUNICalliopeResourceManager *)&v2 dealloc];
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

    [(NUNICalliopeResourceManager *)v2 _asyncDeallocInstance];
  }
}

- (void)setPipelineConstants:(uint64_t)a3
{
  v5 = objc_opt_new();
  v6 = 0;
  obj = v5;
  do
  {
    [v5 setConstantValue:a3 type:16 atIndex:v6];
    v5 = obj;
    ++v6;
    a3 += 2;
  }

  while (v6 != 35);
  objc_storeStrong((a1 + 968), obj);
  v7 = *(a1 + 48);
  *(a1 + 48) = 0;

  v8 = *(a1 + 56);
  *(a1 + 56) = 0;

  v9 = *(a1 + 64);
  *(a1 + 64) = 0;

  v10 = *(a1 + 72);
  *(a1 + 72) = 0;

  v11 = *(a1 + 80);
  *(a1 + 80) = 0;

  v12 = 0;
  v13 = a1 + 112;
  v14 = 1;
  do
  {
    v15 = v14;
    v16 = (v13 + 384 * v12);
    v17 = 24;
    do
    {
      v18 = *(v16 - 1);
      *(v16 - 1) = 0;

      v19 = *v16;
      *v16 = 0;
      v16 += 2;

      --v17;
    }

    while (v17);
    v14 = 0;
    v12 = 1;
  }

  while ((v15 & 1) != 0);
}

- (void)_loadGeometry
{
  v3 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeQuadVertices length:16 options:1];
  rectVerticesBuffer = self->_rectVerticesBuffer;
  self->_rectVerticesBuffer = v3;

  v5 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeDiscVertices length:64 options:1];
  discVerticesBuffer = self->_discVerticesBuffer;
  self->_discVerticesBuffer = v5;

  v7 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeStarVertices length:44928 options:1];
  starVerticesBuffer = self->_starVerticesBuffer;
  self->_starVerticesBuffer = v7;

  v9 = [(MTLDevice *)self->_device newBufferWithBytesNoCopy:&_NUNICalliopeStarfieldVertices length:518184 options:1 deallocator:&__block_literal_global_0];
  starfieldVerticesBuffer = self->_starfieldVerticesBuffer;
  self->_starfieldVerticesBuffer = v9;

  v11 = [(MTLDevice *)self->_device newBufferWithBytesNoCopy:&_NUNICalliopeStarfieldIndices length:768300 options:1 deallocator:&__block_literal_global_27];
  starfieldIndicesBuffer = self->_starfieldIndicesBuffer;
  self->_starfieldIndicesBuffer = v11;

  v13 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeAtmosphereRingVertices length:200 options:1];
  atmosphereRingVerticesBuffer = self->_atmosphereRingVerticesBuffer;
  self->_atmosphereRingVerticesBuffer = v13;

  v15 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeSaturnRingVertices length:104 options:1];
  saturnRingVerticesBuffer = self->_saturnRingVerticesBuffer;
  self->_saturnRingVerticesBuffer = v15;

  v17 = [(MTLDevice *)self->_device newBufferWithBytesNoCopy:_NUNICalliopePatchVertices length:110976 options:1 deallocator:&__block_literal_global_29];
  patchVerticesBuffer = self->_patchVerticesBuffer;
  self->_patchVerticesBuffer = v17;

  v19 = [(MTLDevice *)self->_device newBufferWithBytes:_NUNICalliopePatchIndices1 length:3072 options:1];
  v20 = self->_patchIndicesBuffer[0];
  self->_patchIndicesBuffer[0] = v19;

  v21 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopePatchIndices2 length:768 options:1];
  v22 = self->_patchIndicesBuffer[1];
  self->_patchIndicesBuffer[1] = v21;

  v23 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopePatchIndices3 length:192 options:1];
  v24 = self->_patchIndicesBuffer[2];
  self->_patchIndicesBuffer[2] = v23;

  v25 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopePatchIndices4 length:48 options:1];
  v26 = self->_patchIndicesBuffer[3];
  self->_patchIndicesBuffer[3] = v25;

  for (i = 0; i != 24; ++i)
  {
    v28 = 0;
    v29.i64[0] = 0x80000000800000;
    v29.i64[1] = 0x80000000800000;
    v30 = vnegq_f32(v29);
    do
    {
      _D2 = _NUNICalliopePatchVertices[578 * i + 2 * _NUNICalliopePatchIndices1[v28]];
      __asm { FCVT            S3, H2 }

      v37 = vcvtq_f32_f16(vext_s8(_D2, *v29.f32, 2uLL)).u64[0];
      v30.i32[3] = 0;
      v38.i64[0] = __PAIR64__(v37, _S3);
      v38.i64[1] = HIDWORD(v37);
      v30 = vminnmq_f32(v30, v38);
      v29.i32[3] = 0;
      v29 = vmaxnmq_f32(v29, v38);
      ++v28;
    }

    while (v28 != 1536);
    v39 = &self->_anon_4c10[32 * i];
    *v39 = v30;
    *(v39 + 1) = v29;
  }

  v40 = &self->_anon_4c10[16];
  v41.i64[0] = 0x80000000800000;
  v41.i64[1] = 0x80000000800000;
  v42 = vnegq_f32(v41);
  v43 = 24;
  do
  {
    v42.i32[3] = 0;
    v44 = *(v40 - 1);
    v45 = *v40;
    v44.i32[3] = 0;
    v41.i32[3] = 0;
    v42 = vminnmq_f32(v42, v44);
    v45.i32[3] = 0;
    v41 = vmaxnmq_f32(v41, v45);
    v40 += 32;
    --v43;
  }

  while (v43);
  *&self[1].super.isa = v42;
  *&self[1]._resourceProviderKey = v41;
}

- (id)patchIndicesBufferForLod:(unint64_t)a3
{
  v3 = 3;
  if (a3 < 3)
  {
    v3 = a3;
  }

  return self->_patchIndicesBuffer[v3];
}

- (unsigned)patchIndexCountForLod:(unint64_t)a3
{
  v3 = 3;
  if (a3 < 3)
  {
    v3 = a3;
  }

  return patchIndexCountForLod__counts[v3];
}

- ($6DF29C2F86D270DB44307FB3958C5E7F)patchTextureGroupForSpheroid:(unint64_t)a3 index:(unint64_t)a4 suffix:(id)a5
{
  v5 = &self->_patchTextureGroupTable[a3][a4];
  if (!v5->var0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"p%02d-i%02d", patchTextureGroupForSpheroid_index_suffix__spheroidIndex[a3], a4];
    v10 = MEMORY[0x277CFA7C0];
    v11 = [v9 stringByAppendingFormat:@"-a-%@", a5];
    v12 = [v10 textureWithProviderDelegate:self uuid:v11 streaming:1];
    var0 = v5->var0;
    v5->var0 = v12;

    v14 = [v5->var0 atlas];
    [v14 setMaxPlaceholderSize:128];

    if (patchTextureGroupForSpheroid_index_suffix__spheroidHasNormal[a3] == 1)
    {
      v15 = MEMORY[0x277CFA7C0];
      v16 = [v9 stringByAppendingFormat:@"-n-%@", a5];
      v17 = [v15 textureWithProviderDelegate:self uuid:v16 streaming:1];
      var1 = v5->var1;
      v5->var1 = v17;

      v19 = [v5->var1 atlas];
      [v19 setMaxPlaceholderSize:128];
    }

    if (patchTextureGroupForSpheroid_index_suffix__spheroidHasCloud[a3] == 1)
    {
      v20 = MEMORY[0x277CFA7C0];
      v21 = [v9 stringByAppendingFormat:@"-e-%@", a5];
      v22 = [v20 textureWithProviderDelegate:self uuid:v21 streaming:1];
      var2 = v5->var2;
      v5->var2 = v22;

      v24 = [v5->var2 atlas];
      [v24 setMaxPlaceholderSize:128];
    }

    if (patchTextureGroupForSpheroid_index_suffix__spheroidHasCloud[a3] == 1)
    {
      v25 = MEMORY[0x277CFA7C0];
      v26 = [v9 stringByAppendingFormat:@"-c-%@", a5];
      v27 = [v25 textureWithProviderDelegate:self uuid:v26 streaming:1];
      var3 = v5->var3;
      v5->var3 = v27;

      v29 = [v5->var3 atlas];
      [v29 setMaxPlaceholderSize:128];
    }
  }

  return v5;
}

- (id)textureGroupWithSuffix:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_textureGroupHashTable objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(NUNICalliopeTextureGroup);
    v6 = [MEMORY[0x277CFA7C0] nullTexture2D];
    v7 = objc_opt_new();
    for (i = 0; i != 24; ++i)
    {
      v9 = textureGroupWithSuffix__uuidGradients[i];
      if (v9)
      {
        v10 = [v9 stringByAppendingString:v4];
        v11 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:v10 nullTexture:v6];
        [v7 addObject:v11];
      }

      else
      {
        [v7 addObject:v6];
      }
    }

    [(NUNICalliopeTextureGroup *)v5 setGradients:v7];

    [(NSMapTable *)self->_textureGroupHashTable setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)renderDisplayPipeline
{
  v3 = self->_pipelineStateDisplay;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_pass_vsh" fshName:@"calliope_display_fsh" config:0 blend0:0 blend1:4 pixelFormat0:self->_displayPixelFormat pixelFormat1:0];
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
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_post_vsh" fshName:@"calliope_post_fsh" config:0 blend0:2 blend1:3 pixelFormat0:555 pixelFormat1:10];
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
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_starfield_vsh" fshName:@"calliope_starfield_fsh" config:0 blend0:0 blend1:0 pixelFormat0:555 pixelFormat1:10];
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
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_star_vsh" fshName:@"calliope_star_fsh" config:0 blend0:1 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateStar = self->_pipelineStateStar;
    self->_pipelineStateStar = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForSaturnRing
{
  p_pipelineStateSaturnRing = &self->_pipelineStateSaturnRing;
  v4 = self->_pipelineStateSaturnRing;
  if (!v4)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_saturn_ring_vsh" fshName:@"calliope_saturn_ring_fsh" config:0 blend0:1 blend1:1 pixelFormat0:555 pixelFormat1:10];
    objc_storeStrong(p_pipelineStateSaturnRing, v4);
  }

  return v4;
}

- (id)renderOffscreenPipelineForAtmosphere
{
  p_pipelineStateAtmosphere = &self->_pipelineStateAtmosphere;
  v4 = self->_pipelineStateAtmosphere;
  if (!v4)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_atmosphere_vsh" fshName:@"calliope_atmosphere_fsh" config:0 blend0:1 blend1:1 pixelFormat0:555 pixelFormat1:10];
    objc_storeStrong(p_pipelineStateAtmosphere, v4);
  }

  return v4;
}

- (id)renderOffscreenPipelineForLocationDot
{
  v3 = self->_pipelineStateLocationDot;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_locdot_vsh" fshName:@"calliope_locdot_fsh" config:0 blend0:1 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateLocationDot = self->_pipelineStateLocationDot;
    self->_pipelineStateLocationDot = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForSpheroid:(unint64_t)a3 layer:(int)a4 config:(unint64_t)a5
{
  v9 = self + 384 * a4 + 16 * a3 + 8 * a5;
  v11 = *(v9 + 13);
  v10 = (v9 + 104);
  v12 = v11;
  if (!v12)
  {
    v13 = renderOffscreenPipelineForSpheroid_layer_config__spheroridFshs[24 * a4 + a3];
    if (v13)
    {
      v14 = renderOffscreenPipelineForSpheroid_layer_config__spheroridVshs[24 * a4 + a3];
      v15 = v13;
      v16 = v14;
      v17 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:v16 fshName:v15 config:a5 blend0:1 blend1:1 pixelFormat0:555 pixelFormat1:10];
      v18 = *v10;
      *v10 = v17;

      v12 = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)renderOffscreenPipelineForDebugDraw
{
  v3 = self->_pipelineStateDebugDraw;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_debugdraw_vsh" fshName:@"calliope_debugdraw_fsh" config:0 blend0:0 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateDebugDraw = self->_pipelineStateDebugDraw;
    self->_pipelineStateDebugDraw = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForBloomDownsampleUsingTileShader
{
  v3 = self->_pipelineStateForBloomDownsampleUsingTileShader;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineTshName:@"calliope_bloom_downsample_tsh" pixelFormat0:555 pixelFormat1:10];
    pipelineStateForBloomDownsampleUsingTileShader = self->_pipelineStateForBloomDownsampleUsingTileShader;
    self->_pipelineStateForBloomDownsampleUsingTileShader = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForBloomDownsample
{
  v3 = self->_pipelineStateForBloomDownsample;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_bloom_downsample_vsh" fshName:@"calliope_bloom_downsample_fsh" config:0 blend0:0 blend1:4 pixelFormat0:10 pixelFormat1:0];
    pipelineStateForBloomDownsample = self->_pipelineStateForBloomDownsample;
    self->_pipelineStateForBloomDownsample = v4;

    v3 = v4;
  }

  return v3;
}

- (id)computePipelineForBloomChainDownsample
{
  v3 = self->_pipelineStateForBloomChainDownsample;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineCshName:@"calliope_bloom_chain_downsample_csh"];
    pipelineStateForBloomChainDownsample = self->_pipelineStateForBloomChainDownsample;
    self->_pipelineStateForBloomChainDownsample = v4;

    v3 = v4;
  }

  return v3;
}

- (id)computePipelineForBloomChainUpsample
{
  v3 = self->_pipelineStateForBloomChainUpsample;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineCshName:@"calliope_bloom_chain_upsample_csh"];
    pipelineStateForBloomChainUpsample = self->_pipelineStateForBloomChainUpsample;
    self->_pipelineStateForBloomChainUpsample = v4;

    v3 = v4;
  }

  return v3;
}

- (id)_generatePipelineVshName:(id)a3 fshName:(id)a4 config:(unint64_t)a5 blend0:(unint64_t)a6 blend1:(unint64_t)a7 pixelFormat0:(unint64_t)a8 pixelFormat1:(unint64_t)a9
{
  v12 = a5;
  v15 = a3;
  v16 = a4;
  v48 = (v12 & 3) == 1;
  v47 = (v12 & 2) != 0;
  v17 = [(MTLFunctionConstantValues *)self->_pipelineConstants copy];
  [v17 setConstantValue:&v48 type:53 atIndex:35];
  [v17 setConstantValue:&v47 type:53 atIndex:36];
  v45 = a7;
  v46 = a6;
  v18 = MEMORY[0x277CFA788];
  v19 = NUNIBundle();
  v20 = [v18 archiveWithName:@"NUNICalliopeShadersCompanion" bundle:v19 device:self->_device];

  v21 = [MEMORY[0x277CD6D78] functionDescriptor];
  v41 = v17;
  [v21 setConstantValues:v17];
  [v21 setName:v15];
  v22 = [v20 newFunctionInLibrary:self->_library withDescriptor:v21];
  [v21 setName:v16];
  v44 = v20;
  v23 = [v20 newFunctionInLibrary:self->_library withDescriptor:v21];
  v24 = objc_opt_new();
  v42 = v16;
  v43 = v15;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)+(%@)", v15, v16];
  [v24 setLabel:v25];

  v40 = v22;
  [v24 setVertexFunction:v22];
  [v24 setFragmentFunction:v23];
  v26 = 0;
  v27 = &v46;
  v28 = 1;
  do
  {
    v29 = v28;
    if (!a8)
    {
      goto LABEL_15;
    }

    v30 = [v24 colorAttachments];
    v31 = [v30 objectAtIndexedSubscript:v26];

    [v31 setPixelFormat:a8];
    [v31 setBlendingEnabled:0];
    v32 = *v27;
    if (*v27 > 2)
    {
      if (v32 != 3)
      {
        if (v32 == 4)
        {
          [v31 setWriteMask:0];
        }

        goto LABEL_14;
      }

      [v31 setBlendingEnabled:1];
      [v31 setRgbBlendOperation:2];
      v33 = v31;
      v34 = 2;
      goto LABEL_12;
    }

    if (v32 == 1)
    {
      [v31 setBlendingEnabled:1];
      [v31 setRgbBlendOperation:0];
      [v31 setAlphaBlendOperation:0];
      [v31 setSourceRGBBlendFactor:4];
      [v31 setSourceAlphaBlendFactor:4];
      [v31 setDestinationRGBBlendFactor:5];
      v35 = v31;
      v36 = 5;
LABEL_13:
      [v35 setDestinationAlphaBlendFactor:v36];
      goto LABEL_14;
    }

    if (v32 == 2)
    {
      [v31 setBlendingEnabled:1];
      [v31 setRgbBlendOperation:0];
      v33 = v31;
      v34 = 0;
LABEL_12:
      [v33 setAlphaBlendOperation:v34];
      [v31 setSourceRGBBlendFactor:1];
      [v31 setSourceAlphaBlendFactor:1];
      [v31 setDestinationRGBBlendFactor:1];
      v35 = v31;
      v36 = 1;
      goto LABEL_13;
    }

LABEL_14:

LABEL_15:
    v28 = 0;
    v27 = &v45;
    a8 = a9;
    v26 = 1;
  }

  while ((v29 & 1) != 0);
  v37 = [v44 newRenderPipelineStateForDevice:self->_device withDescriptor:v24];
  if (!v37)
  {
    [NUNICalliopeResourceManager _generatePipelineVshName:fshName:config:blend0:blend1:pixelFormat0:pixelFormat1:];
  }

  v38 = v37;

  return v38;
}

- (id)_generatePipelineTshName:(id)a3 pixelFormat0:(unint64_t)a4 pixelFormat1:(unint64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v8];
  [v9 setLabel:v10];

  v11 = [(MTLLibrary *)self->_library newFunctionWithName:v8];
  [v9 setTileFunction:v11];

  [v9 setThreadgroupSizeMatchesTileSize:0];
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = v13;
    if (a4)
    {
      v15 = [v9 colorAttachments];
      v16 = [v15 objectAtIndexedSubscript:v12];

      [v16 setPixelFormat:a4];
    }

    v13 = 0;
    a4 = a5;
    v12 = 1;
  }

  while ((v14 & 1) != 0);
  device = self->_device;
  v24 = 0;
  v18 = [(MTLDevice *)device newRenderPipelineStateWithTileDescriptor:v9 options:0 reflection:0 error:&v24];
  v19 = v24;
  if (!v18)
  {
    v20 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = self->_device;
      *buf = 138412802;
      v26 = v8;
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = v19;
      _os_log_error_impl(&dword_25B6D4000, v20, OS_LOG_TYPE_ERROR, "CalliopeResourceManager: Metal compilation failure Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_generatePipelineCshName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v4];
  [v5 setLabel:v6];

  v7 = [(MTLLibrary *)self->_library newFunctionWithName:v4];
  [v5 setComputeFunction:v7];

  device = self->_device;
  v15 = 0;
  v9 = [(MTLDevice *)device newComputePipelineStateWithDescriptor:v5 options:0 reflection:0 error:&v15];
  v10 = v15;
  if (!v9)
  {
    v11 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_device;
      *buf = 138412802;
      v17 = v4;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v10;
      _os_log_error_impl(&dword_25B6D4000, v11, OS_LOG_TYPE_ERROR, "CalliopeResourceManager: Metal compilation failure Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_handleCloudCoverTextureExpired
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NUNICalliopeResourceManager__handleCloudCoverTextureExpired__block_invoke;
  block[3] = &unk_27995F980;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __62__NUNICalliopeResourceManager__handleCloudCoverTextureExpired__block_invoke(uint64_t a1)
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
    v7[2] = __62__NUNICalliopeResourceManager__deferredCloudDataFetchIfNeeded__block_invoke;
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
  [(NUNICalliopeResourceManager *)self _deferredCloudDataFetchIfNeeded];
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
    v7 = [(NUNICalliopeResourceManager *)self _provideEarthCloudsAtlasBacking:v4];
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
        [(NUNICalliopeResourceManager *)v4 provideAtlasBacking:v11];
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
  v2 = *(__sharedInstance_0 + 32);
  v4[0] = 67109376;
  v4[1] = v2;
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "CalliopeResourceManager: DisplayPixelFormat %d != %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)provideAtlasBacking:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "CalliopeResourceManager: missing artwork for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end