@interface NTKSpectrumResourceManager
+ (id)sharedInstanceWithPixelFormat:(unint64_t)a3;
+ (void)_deallocInstance:(id)a3;
- (NTKSpectrumResourceManager)initWithPixelFormat:(unint64_t)a3;
- (id)_generatePipeline:(unint64_t)a3;
- (id)overlayTexture;
- (id)renderPipelineForConfig:(unint64_t)a3;
- (id)vignetteTexture;
- (void)_asyncDeallocInstance;
- (void)_loadGeometry;
- (void)addClient;
- (void)dealloc;
- (void)removeClient;
@end

@implementation NTKSpectrumResourceManager

+ (id)sharedInstanceWithPixelFormat:(unint64_t)a3
{
  v4 = a1;
  objc_sync_enter(v4);
  if (!__sharedInstance)
  {
    v5 = [[NTKSpectrumResourceManager alloc] initWithPixelFormat:a3];
    v6 = __sharedInstance;
    __sharedInstance = v5;
  }

  objc_sync_exit(v4);

  v7 = __sharedInstance;
  if (*(__sharedInstance + 24) != a3)
  {
    +[NTKSpectrumResourceManager sharedInstanceWithPixelFormat:];
  }

  return v7;
}

+ (void)_deallocInstance:(id)a3
{
  obj = a1;
  objc_sync_enter(obj);
  v3 = __sharedInstance;
  __sharedInstance = 0;

  objc_sync_exit(obj);
}

- (NTKSpectrumResourceManager)initWithPixelFormat:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = NTKSpectrumResourceManager;
  v4 = [(NTKSpectrumResourceManager *)&v12 init];
  if (v4)
  {
    v5 = [off_27877BF18 sharedDevice];
    device = v4->_device;
    v4->_device = v5;

    v7 = v4->_device;
    v8 = NTKBundle();
    v9 = [(MTLDevice *)v7 newDefaultLibraryWithBundle:v8 error:0];
    library = v4->_library;
    v4->_library = v9;

    v4->_pixelFormat = a3;
    [(NTKSpectrumResourceManager *)v4 _loadGeometry];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKSpectrumResourceManager;
  [(NTKSpectrumResourceManager *)&v2 dealloc];
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

    [(NTKSpectrumResourceManager *)v2 _asyncDeallocInstance];
  }
}

- (id)vignetteTexture
{
  vignetteTexture = self->_vignetteTexture;
  if (!vignetteTexture)
  {
    NTKImageNamed(@"SpectrumVignette");
  }

  v3 = vignetteTexture;

  return v3;
}

- (id)overlayTexture
{
  overlayTexture = self->_overlayTexture;
  if (!overlayTexture)
  {
    [-[MTLDevice newBufferWithLength:options:](self->_device newBufferWithLength:2400 options:{0), "contents"}];
    CLKUIConvertToRGBfFromSRGB8_fast();
  }

  v3 = overlayTexture;

  return v3;
}

- (void)_loadGeometry
{
  v3 = [(MTLDevice *)self->_device newBufferWithBytes:&quadVertices length:16 options:1];
  verticesBuffer = self->_verticesBuffer;
  self->_verticesBuffer = v3;
}

- (id)_generatePipeline:(unint64_t)a3
{
  v23 = a3 & 1;
  v22 = (a3 & 2) != 0;
  v21 = (a3 & 8) != 0;
  v20 = (a3 & 0x10) != 0;
  v4 = @"spectrumConicOverlayFrgShader";
  if ((a3 & 4) == 0)
  {
    v4 = @"spectrumConicFrgShader";
  }

  v5 = v4;
  v6 = objc_opt_new();
  [v6 setConstantValue:&v23 type:53 atIndex:0];
  [v6 setConstantValue:&v22 type:53 atIndex:1];
  [v6 setConstantValue:&v21 type:53 atIndex:2];
  [v6 setConstantValue:&v20 type:53 atIndex:3];
  v7 = NTKBundle();
  device = self->_device;
  p_device = &self->_device;
  v10 = [off_27877BF10 archiveWithName:@"NTKSpectrumShaders" bundle:v7 device:device];

  v11 = [MEMORY[0x277CD6D78] functionDescriptor];
  [v11 setName:@"spectrumPassVrtShader"];
  v12 = [v10 newFunctionInLibrary:p_device[38] withDescriptor:v11];
  [v11 setName:v5];

  [v11 setConstantValues:v6];
  v13 = [v10 newFunctionInLibrary:p_device[38] withDescriptor:v11];
  v14 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v14 setLabel:@"Spectrum Pipeline"];
  [v14 setVertexFunction:v12];
  [v14 setFragmentFunction:v13];
  v15 = [v14 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript:0];

  [v16 setPixelFormat:p_device[2]];
  if ((v23 & 1) != 0 || v22)
  {
    [v16 setBlendingEnabled:1];
    [v16 setRgbBlendOperation:0];
    [v16 setAlphaBlendOperation:0];
    [v16 setSourceRGBBlendFactor:4];
    [v16 setSourceAlphaBlendFactor:4];
    [v16 setDestinationRGBBlendFactor:5];
    [v16 setDestinationAlphaBlendFactor:5];
  }

  v17 = [v10 newRenderPipelineStateForDevice:*p_device withDescriptor:v14];
  if (!v17)
  {
    v18 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [(NTKSpectrumResourceManager *)v13 _generatePipeline:v18];
    }
  }

  return v17;
}

- (id)renderPipelineForConfig:(unint64_t)a3
{
  pipelineStates = self->_pipelineStates;
  v6 = self->_pipelineStates[a3];
  if (!v6)
  {
    v7 = [(NTKSpectrumResourceManager *)self _generatePipeline:a3];
    v8 = pipelineStates[a3];
    pipelineStates[a3] = v7;

    v6 = v7;
  }

  return v6;
}

- (void)_generatePipeline:(NSObject *)a3 .cold.1(void *a1, uint64_t *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  v6 = *a2;
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_fault_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_FAULT, "Spectrum Metal compilation failure: Shader=%@ Device=%@", &v7, 0x16u);
}

@end