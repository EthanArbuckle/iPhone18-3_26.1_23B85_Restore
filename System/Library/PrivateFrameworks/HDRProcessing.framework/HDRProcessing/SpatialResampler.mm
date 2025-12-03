@interface SpatialResampler
- (SpatialResampler)initWithDevice:(id)device;
- (void)createKernels;
- (void)encodeSpatialResampleHorizontal:(id)horizontal Input:(id)input Output:(id)output;
- (void)encodeSpatialResampleVertical:(id)vertical Input:(id)input Output:(id)output isChroma:(BOOL)chroma;
- (void)encodeToCommandBuffer:(id)buffer input:(__IOSurface *)input output:(__IOSurface *)output;
- (void)setupTextures:(id)textures input:(__IOSurface *)input output:(__IOSurface *)output;
@end

@implementation SpatialResampler

- (SpatialResampler)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = SpatialResampler;
  v6 = [(SpatialResampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
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
    newDefaultLibrary = [(MTLDeviceSPI *)device newLibraryWithFile:v3 error:0];
  }

  else
  {
    newDefaultLibrary = [(MTLDeviceSPI *)device newDefaultLibrary];
  }

  defaultLibrary = self->_defaultLibrary;
  self->_defaultLibrary = newDefaultLibrary;

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

- (void)setupTextures:(id)textures input:(__IOSurface *)input output:(__IOSurface *)output
{
  texturesCopy = textures;
  WidthOfPlane = IOSurfaceGetWidthOfPlane(input, 0);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(input, 0);
  v22 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:WidthOfPlane >> 2 height:HeightOfPlane mipmapped:0];
  v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:WidthOfPlane >> 2 height:HeightOfPlane >> 1 mipmapped:0];
  v11 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v22 iosurface:input plane:0];
  [texturesCopy setInputTexture:v11];

  v12 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v10 iosurface:input plane:1];
  [texturesCopy setInputTexureUV:v12];

  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:WidthOfPlane height:2 * HeightOfPlane mipmapped:0];
  v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane >> 1 height:HeightOfPlane mipmapped:0];
  [v13 setUsage:3];
  [v14 setUsage:3];
  v15 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v13];
  [texturesCopy setTempTextureY:v15];

  v16 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14];
  [texturesCopy setTempTextureUV:v16];

  v17 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:2 * WidthOfPlane height:2 * HeightOfPlane mipmapped:0];
  v18 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
  [v17 setUsage:3];
  [v18 setUsage:3];
  v19 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17 iosurface:output plane:0];
  [texturesCopy setOutputTextureY:v19];

  v20 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v18 iosurface:output plane:1];
  [texturesCopy setOutputTextureUV:v20];
}

- (void)encodeToCommandBuffer:(id)buffer input:(__IOSurface *)input output:(__IOSurface *)output
{
  bufferCopy = buffer;
  v21 = objc_alloc_init(ResamplerTextures);
  [(SpatialResampler *)self setupTextures:v21 input:input output:output];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  inputTexture = [(ResamplerTextures *)v21 inputTexture];
  tempTextureY = [(ResamplerTextures *)v21 tempTextureY];
  [(SpatialResampler *)self encodeSpatialResampleVertical:computeCommandEncoder Input:inputTexture Output:tempTextureY isChroma:0];

  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];
  tempTextureY2 = [(ResamplerTextures *)v21 tempTextureY];
  outputTextureY = [(ResamplerTextures *)v21 outputTextureY];
  [(SpatialResampler *)self encodeSpatialResampleHorizontal:computeCommandEncoder2 Input:tempTextureY2 Output:outputTextureY];

  computeCommandEncoder3 = [bufferCopy computeCommandEncoder];
  inputTexureUV = [(ResamplerTextures *)v21 inputTexureUV];
  tempTextureUV = [(ResamplerTextures *)v21 tempTextureUV];
  [(SpatialResampler *)self encodeSpatialResampleVertical:computeCommandEncoder3 Input:inputTexureUV Output:tempTextureUV isChroma:1];

  computeCommandEncoder4 = [bufferCopy computeCommandEncoder];

  tempTextureUV2 = [(ResamplerTextures *)v21 tempTextureUV];
  outputTextureUV = [(ResamplerTextures *)v21 outputTextureUV];
  [(SpatialResampler *)self encodeSpatialResampleHorizontal:computeCommandEncoder4 Input:tempTextureUV2 Output:outputTextureUV];
}

- (void)encodeSpatialResampleVertical:(id)vertical Input:(id)input Output:(id)output isChroma:(BOOL)chroma
{
  chromaCopy = chroma;
  v23 = *MEMORY[0x277D85DE8];
  verticalCopy = vertical;
  inputCopy = input;
  outputCopy = output;
  width = [inputCopy width];
  height = [inputCopy height];
  v15 = 24;
  if (chromaCopy)
  {
    v15 = 32;
  }

  v16 = [(SpatialResampler *)self getComputePipeLineStateForShader:*(&self->super.isa + v15)];
  if (v16)
  {
    [verticalCopy setComputePipelineState:v16];
    [verticalCopy setTexture:inputCopy atIndex:0];
    [verticalCopy setTexture:outputCopy atIndex:1];
    *&buf = (width + 15) >> 4;
    *(&buf + 1) = (height + 15) >> 4;
    v22 = 1;
    v19 = vdupq_n_s64(0x10uLL);
    v20 = 1;
    [verticalCopy dispatchThreadgroups:&buf threadsPerThreadgroup:&v19];
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

  [verticalCopy endEncoding];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)encodeSpatialResampleHorizontal:(id)horizontal Input:(id)input Output:(id)output
{
  v20 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  outputCopy = output;
  horizontalCopy = horizontal;
  width = [inputCopy width];
  height = [inputCopy height];
  v13 = [(SpatialResampler *)self getComputePipeLineStateForShader:self->_horizontalResampleKernel];
  if (v13)
  {
    [horizontalCopy setComputePipelineState:v13];
    [horizontalCopy setTexture:inputCopy atIndex:0];
    [horizontalCopy setTexture:outputCopy atIndex:1];
    *&buf = (width + 15) >> 4;
    *(&buf + 1) = (height + 15) >> 4;
    v19 = 1;
    v16 = vdupq_n_s64(0x10uLL);
    v17 = 1;
    [horizontalCopy dispatchThreadgroups:&buf threadsPerThreadgroup:&v16];
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

  [horizontalCopy endEncoding];

  v15 = *MEMORY[0x277D85DE8];
}

@end