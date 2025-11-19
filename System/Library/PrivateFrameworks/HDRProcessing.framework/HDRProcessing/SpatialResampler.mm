@interface SpatialResampler
- (SpatialResampler)initWithDevice:(id)a3;
- (void)createKernels;
- (void)encodeSpatialResampleHorizontal:(id)a3 Input:(id)a4 Output:(id)a5;
- (void)encodeSpatialResampleVertical:(id)a3 Input:(id)a4 Output:(id)a5 isChroma:(BOOL)a6;
- (void)encodeToCommandBuffer:(id)a3 input:(__IOSurface *)a4 output:(__IOSurface *)a5;
- (void)setupTextures:(id)a3 input:(__IOSurface *)a4 output:(__IOSurface *)a5;
@end

@implementation SpatialResampler

- (SpatialResampler)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SpatialResampler;
  v6 = [(SpatialResampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    [(SpatialResampler *)v7 createKernels];
  }

  return v7;
}

- (void)createKernels
{
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HDRProcessing"];
  v3 = [v13 pathForResource:@"default.metallib" ofType:0];
  device = self->_device;
  if (v3)
  {
    v5 = [(MTLDeviceSPI *)device newLibraryWithFile:v3 error:0];
  }

  else
  {
    v5 = [(MTLDeviceSPI *)device newDefaultLibrary];
  }

  defaultLibrary = self->_defaultLibrary;
  self->_defaultLibrary = v5;

  v7 = [ResamplerShader createShaderWithName:@"spatial_resampling_vertical_luma"];
  verticalResampleKernel = self->_verticalResampleKernel;
  self->_verticalResampleKernel = v7;

  v9 = [ResamplerShader createShaderWithName:@"spatial_resampling_vertical_chroma"];
  verticalResampleChromaKernel = self->_verticalResampleChromaKernel;
  self->_verticalResampleChromaKernel = v9;

  v11 = [ResamplerShader createShaderWithName:@"spatial_resampling_horizontal"];
  horizontalResampleKernel = self->_horizontalResampleKernel;
  self->_horizontalResampleKernel = v11;
}

- (void)setupTextures:(id)a3 input:(__IOSurface *)a4 output:(__IOSurface *)a5
{
  v7 = a3;
  WidthOfPlane = IOSurfaceGetWidthOfPlane(a4, 0);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(a4, 0);
  v22 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:WidthOfPlane >> 2 height:HeightOfPlane mipmapped:0];
  v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:WidthOfPlane >> 2 height:HeightOfPlane >> 1 mipmapped:0];
  v11 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v22 iosurface:a4 plane:0];
  [v7 setInputTexture:v11];

  v12 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v10 iosurface:a4 plane:1];
  [v7 setInputTexureUV:v12];

  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:WidthOfPlane height:2 * HeightOfPlane mipmapped:0];
  v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane >> 1 height:HeightOfPlane mipmapped:0];
  [v13 setUsage:3];
  [v14 setUsage:3];
  v15 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v13];
  [v7 setTempTextureY:v15];

  v16 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14];
  [v7 setTempTextureUV:v16];

  v17 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:2 * WidthOfPlane height:2 * HeightOfPlane mipmapped:0];
  v18 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
  [v17 setUsage:3];
  [v18 setUsage:3];
  v19 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17 iosurface:a5 plane:0];
  [v7 setOutputTextureY:v19];

  v20 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v18 iosurface:a5 plane:1];
  [v7 setOutputTextureUV:v20];
}

- (void)encodeToCommandBuffer:(id)a3 input:(__IOSurface *)a4 output:(__IOSurface *)a5
{
  v8 = a3;
  v21 = objc_alloc_init(ResamplerTextures);
  [(SpatialResampler *)self setupTextures:v21 input:a4 output:a5];
  v9 = [v8 computeCommandEncoder];
  v10 = [(ResamplerTextures *)v21 inputTexture];
  v11 = [(ResamplerTextures *)v21 tempTextureY];
  [(SpatialResampler *)self encodeSpatialResampleVertical:v9 Input:v10 Output:v11 isChroma:0];

  v12 = [v8 computeCommandEncoder];
  v13 = [(ResamplerTextures *)v21 tempTextureY];
  v14 = [(ResamplerTextures *)v21 outputTextureY];
  [(SpatialResampler *)self encodeSpatialResampleHorizontal:v12 Input:v13 Output:v14];

  v15 = [v8 computeCommandEncoder];
  v16 = [(ResamplerTextures *)v21 inputTexureUV];
  v17 = [(ResamplerTextures *)v21 tempTextureUV];
  [(SpatialResampler *)self encodeSpatialResampleVertical:v15 Input:v16 Output:v17 isChroma:1];

  v18 = [v8 computeCommandEncoder];

  v19 = [(ResamplerTextures *)v21 tempTextureUV];
  v20 = [(ResamplerTextures *)v21 outputTextureUV];
  [(SpatialResampler *)self encodeSpatialResampleHorizontal:v18 Input:v19 Output:v20];
}

- (void)encodeSpatialResampleVertical:(id)a3 Input:(id)a4 Output:(id)a5 isChroma:(BOOL)a6
{
  v6 = a6;
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 width];
  v14 = [v11 height];
  v15 = 24;
  if (v6)
  {
    v15 = 32;
  }

  v16 = [(SpatialResampler *)self getComputePipeLineStateForShader:*(&self->super.isa + v15)];
  if (v16)
  {
    [v10 setComputePipelineState:v16];
    [v10 setTexture:v11 atIndex:0];
    [v10 setTexture:v12 atIndex:1];
    *&buf = (v13 + 15) >> 4;
    *(&buf + 1) = (v14 + 15) >> 4;
    v22 = 1;
    v19 = vdupq_n_s64(0x10uLL);
    v20 = 1;
    [v10 dispatchThreadgroups:&buf threadsPerThreadgroup:&v19];
  }

  else if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v17 = logInstanceID;
    }

    else
    {
      v17 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = WORD1(v17);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/SpatialResampler.m at line 212\n", &buf, 0xCu);
    }

    prevLogInstanceID = v17;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/SpatialResampler.m at line 212\n", &buf, 2u);
  }

  [v10 endEncoding];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)encodeSpatialResampleHorizontal:(id)a3 Input:(id)a4 Output:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 width];
  v12 = [v8 height];
  v13 = [(SpatialResampler *)self getComputePipeLineStateForShader:self->_horizontalResampleKernel];
  if (v13)
  {
    [v10 setComputePipelineState:v13];
    [v10 setTexture:v8 atIndex:0];
    [v10 setTexture:v9 atIndex:1];
    *&buf = (v11 + 15) >> 4;
    *(&buf + 1) = (v12 + 15) >> 4;
    v19 = 1;
    v16 = vdupq_n_s64(0x10uLL);
    v17 = 1;
    [v10 dispatchThreadgroups:&buf threadsPerThreadgroup:&v16];
  }

  else if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v14 = logInstanceID;
    }

    else
    {
      v14 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = WORD1(v14);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/SpatialResampler.m at line 243\n", &buf, 0xCu);
    }

    prevLogInstanceID = v14;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/SpatialResampler.m at line 243\n", &buf, 2u);
  }

  [v10 endEncoding];

  v15 = *MEMORY[0x277D85DE8];
}

@end