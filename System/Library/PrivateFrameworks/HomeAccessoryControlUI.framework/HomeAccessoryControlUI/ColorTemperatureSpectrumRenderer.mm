@interface ColorTemperatureSpectrumRenderer
+ (CGPoint)positionForColor:(float)color;
+ (float)colorAtLocation:(CGPoint)location;
- (CGPoint)positionForColor:(float)color;
- (ColorTemperatureSpectrumRenderer)initWithMetal:(id)metal startColor:(unsigned __int16)color endColor:(unsigned __int16)endColor;
- (float)colorAtLocation:(CGPoint)location;
- (void)drawInMTKView:(id)view;
- (void)initializeVertexBuffer;
- (void)setupRenderPipeline;
@end

@implementation ColorTemperatureSpectrumRenderer

- (ColorTemperatureSpectrumRenderer)initWithMetal:(id)metal startColor:(unsigned __int16)color endColor:(unsigned __int16)endColor
{
  metalCopy = metal;
  v18.receiver = self;
  v18.super_class = ColorTemperatureSpectrumRenderer;
  v10 = [(ColorTemperatureSpectrumRenderer *)&v18 init];
  if (v10)
  {
    v11 = MTLCreateSystemDefaultDevice();
    device = v10->_device;
    v10->_device = v11;

    newCommandQueue = [(MTLDevice *)v10->_device newCommandQueue];
    commandQueue = v10->_commandQueue;
    v10->_commandQueue = newCommandQueue;

    objc_storeStrong(&v10->_metalView, metal);
    [(MTKView *)v10->_metalView setDevice:v10->_device];
    [(MTKView *)v10->_metalView setDelegate:v10];
    v10->_startColor = color;
    v10->_endColor = endColor;
    [(ColorTemperatureSpectrumRenderer *)v10 initializeVertexBuffer];
    [(ColorTemperatureSpectrumRenderer *)v10 setupRenderPipeline];
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];
    [threadDictionary setObject:v10 forKey:@"SpectrumRendererThreadLocal"];
  }

  return v10;
}

- (void)setupRenderPipeline
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  device = self->_device;
  v18 = 0;
  v5 = [(MTLDevice *)device newDefaultLibraryWithBundle:v3 error:&v18];
  v6 = v18;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD6F78]);
    v8 = [v5 newFunctionWithName:@"vertexShader"];
    [v7 setVertexFunction:v8];

    v9 = [v5 newFunctionWithName:@"fragmentShader"];
    [v7 setFragmentFunction:v9];

    colorPixelFormat = [(MTKView *)self->_metalView colorPixelFormat];
    colorAttachments = [v7 colorAttachments];
    v12 = [colorAttachments objectAtIndexedSubscript:0];
    [v12 setPixelFormat:colorPixelFormat];

    v13 = self->_device;
    v17 = v6;
    v14 = [(MTLDevice *)v13 newRenderPipelineStateWithDescriptor:v7 error:&v17];
    v15 = v17;

    pipelineState = self->_pipelineState;
    self->_pipelineState = v14;

    v6 = v15;
  }
}

- (void)initializeVertexBuffer
{
  v9 = *MEMORY[0x277D85DE8];
  v8[0] = xmmword_2526AD9A8;
  v8[1] = unk_2526AD9B8;
  v8[2] = xmmword_2526AD9C8;
  v3 = [(MTLDevice *)self->_device newBufferWithBytes:v8 length:48 options:0];
  vertexBuffer = self->_vertexBuffer;
  self->_vertexBuffer = v3;

  v5 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  fragmentShaderArgumentBuffer = self->_fragmentShaderArgumentBuffer;
  self->_fragmentShaderArgumentBuffer = v5;

  contents = [(MTLBuffer *)self->_fragmentShaderArgumentBuffer contents];
  *contents = [(ColorTemperatureSpectrumRenderer *)self startColor];
  contents[1] = [(ColorTemperatureSpectrumRenderer *)self endColor];
}

- (void)drawInMTKView:(id)view
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  currentRenderPassDescriptor = [(MTKView *)self->_metalView currentRenderPassDescriptor];
  colorAttachments = [currentRenderPassDescriptor colorAttachments];
  v6 = [colorAttachments objectAtIndexedSubscript:0];
  [v6 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  v7 = [commandBuffer renderCommandEncoderWithDescriptor:currentRenderPassDescriptor];
  [v7 setRenderPipelineState:self->_pipelineState];
  [v7 setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
  [v7 setFragmentBuffer:self->_fragmentShaderArgumentBuffer offset:0 atIndex:0];
  [v7 drawPrimitives:3 vertexStart:0 vertexCount:6];
  [v7 endEncoding];
  currentDrawable = [(MTKView *)self->_metalView currentDrawable];
  [commandBuffer presentDrawable:currentDrawable];

  [commandBuffer commit];
}

- (float)colorAtLocation:(CGPoint)location
{
  x = location.x;
  v4 = [(ColorTemperatureSpectrumRenderer *)self fragmentShaderArgumentBuffer:location.x];
  contents = [v4 contents];

  *&x = x;
  v6 = (*&x + 1.0) * 0.5;
  return fminf(fmaxf(*contents + (v6 * (HIWORD(*contents) - *contents)), 0.0), 1000.0);
}

+ (float)colorAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v7 = [threadDictionary objectForKey:@"SpectrumRendererThreadLocal"];

  [v7 colorAtLocation:{x, y}];
  LODWORD(y) = v8;

  return *&y;
}

- (CGPoint)positionForColor:(float)color
{
  fragmentShaderArgumentBuffer = [(ColorTemperatureSpectrumRenderer *)self fragmentShaderArgumentBuffer];
  contents = [fragmentShaderArgumentBuffer contents];

  v6 = ((color - *contents) / (HIWORD(*contents) - *contents)) * 2.0 + -1.0;
  v7 = v6;
  v8 = 0.0;
  result.y = v8;
  result.x = v7;
  return result;
}

+ (CGPoint)positionForColor:(float)color
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v6 = [threadDictionary objectForKey:@"SpectrumRendererThreadLocal"];

  *&v7 = color;
  [v6 positionForColor:v7];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

@end