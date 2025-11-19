@interface ColorTemperatureSpectrumRenderer
+ (CGPoint)positionForColor:(float)a3;
+ (float)colorAtLocation:(CGPoint)a3;
- (CGPoint)positionForColor:(float)a3;
- (ColorTemperatureSpectrumRenderer)initWithMetal:(id)a3 startColor:(unsigned __int16)a4 endColor:(unsigned __int16)a5;
- (float)colorAtLocation:(CGPoint)a3;
- (void)drawInMTKView:(id)a3;
- (void)initializeVertexBuffer;
- (void)setupRenderPipeline;
@end

@implementation ColorTemperatureSpectrumRenderer

- (ColorTemperatureSpectrumRenderer)initWithMetal:(id)a3 startColor:(unsigned __int16)a4 endColor:(unsigned __int16)a5
{
  v9 = a3;
  v18.receiver = self;
  v18.super_class = ColorTemperatureSpectrumRenderer;
  v10 = [(ColorTemperatureSpectrumRenderer *)&v18 init];
  if (v10)
  {
    v11 = MTLCreateSystemDefaultDevice();
    device = v10->_device;
    v10->_device = v11;

    v13 = [(MTLDevice *)v10->_device newCommandQueue];
    commandQueue = v10->_commandQueue;
    v10->_commandQueue = v13;

    objc_storeStrong(&v10->_metalView, a3);
    [(MTKView *)v10->_metalView setDevice:v10->_device];
    [(MTKView *)v10->_metalView setDelegate:v10];
    v10->_startColor = a4;
    v10->_endColor = a5;
    [(ColorTemperatureSpectrumRenderer *)v10 initializeVertexBuffer];
    [(ColorTemperatureSpectrumRenderer *)v10 setupRenderPipeline];
    v15 = [MEMORY[0x277CCACC8] currentThread];
    v16 = [v15 threadDictionary];
    [v16 setObject:v10 forKey:@"SpectrumRendererThreadLocal"];
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

    v10 = [(MTKView *)self->_metalView colorPixelFormat];
    v11 = [v7 colorAttachments];
    v12 = [v11 objectAtIndexedSubscript:0];
    [v12 setPixelFormat:v10];

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

  v7 = [(MTLBuffer *)self->_fragmentShaderArgumentBuffer contents];
  *v7 = [(ColorTemperatureSpectrumRenderer *)self startColor];
  v7[1] = [(ColorTemperatureSpectrumRenderer *)self endColor];
}

- (void)drawInMTKView:(id)a3
{
  v9 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v4 = [(MTKView *)self->_metalView currentRenderPassDescriptor];
  v5 = [v4 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript:0];
  [v6 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  v7 = [v9 renderCommandEncoderWithDescriptor:v4];
  [v7 setRenderPipelineState:self->_pipelineState];
  [v7 setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
  [v7 setFragmentBuffer:self->_fragmentShaderArgumentBuffer offset:0 atIndex:0];
  [v7 drawPrimitives:3 vertexStart:0 vertexCount:6];
  [v7 endEncoding];
  v8 = [(MTKView *)self->_metalView currentDrawable];
  [v9 presentDrawable:v8];

  [v9 commit];
}

- (float)colorAtLocation:(CGPoint)a3
{
  x = a3.x;
  v4 = [(ColorTemperatureSpectrumRenderer *)self fragmentShaderArgumentBuffer:a3.x];
  v5 = [v4 contents];

  *&x = x;
  v6 = (*&x + 1.0) * 0.5;
  return fminf(fmaxf(*v5 + (v6 * (HIWORD(*v5) - *v5)), 0.0), 1000.0);
}

+ (float)colorAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [MEMORY[0x277CCACC8] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [v6 objectForKey:@"SpectrumRendererThreadLocal"];

  [v7 colorAtLocation:{x, y}];
  LODWORD(y) = v8;

  return *&y;
}

- (CGPoint)positionForColor:(float)a3
{
  v4 = [(ColorTemperatureSpectrumRenderer *)self fragmentShaderArgumentBuffer];
  v5 = [v4 contents];

  v6 = ((a3 - *v5) / (HIWORD(*v5) - *v5)) * 2.0 + -1.0;
  v7 = v6;
  v8 = 0.0;
  result.y = v8;
  result.x = v7;
  return result;
}

+ (CGPoint)positionForColor:(float)a3
{
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];
  v6 = [v5 objectForKey:@"SpectrumRendererThreadLocal"];

  *&v7 = a3;
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