@interface FigDepthValueMultiplier
- (FigDepthValueMultiplier)initWithMetalContext:(id)context;
- (int)_initShaders;
- (int)depthValueInputPixelBuffer:(__CVBuffer *)buffer bias:(float)bias scaleFactor:(float)factor;
- (uint64_t)_initShaders;
@end

@implementation FigDepthValueMultiplier

- (FigDepthValueMultiplier)initWithMetalContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = FigDepthValueMultiplier;
  v6 = [(FigDepthValueMultiplier *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    [FigDepthValueMultiplier initWithMetalContext:];
LABEL_14:
    v11 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_metalContext, context);
  if (!v7->_metalContext)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v8 andOptionalCommandQueue:0];
      metalContext = v7->_metalContext;
      v7->_metalContext = v9;

      if (v7->_metalContext)
      {

        goto LABEL_6;
      }

      [FigDepthValueMultiplier initWithMetalContext:];
    }

    else
    {
      [FigDepthValueMultiplier initWithMetalContext:];
    }

    goto LABEL_14;
  }

LABEL_6:
  if ([(FigDepthValueMultiplier *)v7 _initShaders])
  {
    [FigDepthValueMultiplier initWithMetalContext:];
    goto LABEL_14;
  }

  v11 = v7;
LABEL_8:

  return v11;
}

- (int)_initShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"scaleBiasClampTexture" constants:0];
  pipelineState = self->_pipelineState;
  self->_pipelineState = v3;

  if (self->_pipelineState)
  {
    return 0;
  }

  [(FigDepthValueMultiplier *)&v6 _initShaders];
  return v6;
}

- (int)depthValueInputPixelBuffer:(__CVBuffer *)buffer bias:(float)bias scaleFactor:(float)factor
{
  factorCopy = factor;
  biasCopy = bias;
  v7 = MEMORY[0x1E69741C0];
  Width = CVPixelBufferGetWidth(buffer);
  v9 = [v7 texture2DDescriptorWithPixelFormat:25 width:Width height:CVPixelBufferGetHeight(buffer) mipmapped:0];
  [v9 setUsage:3];
  [v9 setResourceOptions:0];
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  [commandBuffer setLabel:@"FigDepthValueMultiplier::scaleBiasClamp"];
  device = [commandBuffer device];
  v12 = [device newTextureWithDescriptor:v9 iosurface:CVPixelBufferGetIOSurface(buffer) plane:0];

  if (v12)
  {
    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      [FigDepthValueMultiplier depthValueInputPixelBuffer:bias:scaleFactor:];
      v15 = -12786;
      goto LABEL_5;
    }

    v14 = computeCommandEncoder;
    [computeCommandEncoder setLabel:@"FigDepthValueMultiplier::scaleBiasClamp"];
    [v14 setComputePipelineState:self->_pipelineState];
    [v14 setTexture:v12 atIndex:0];
    [v14 setBytes:&biasCopy length:4 atIndex:0];
    [v14 setBytes:&factorCopy length:4 atIndex:1];
    v19[0] = [v12 width];
    v19[1] = [v12 height];
    v19[2] = 1;
    v17 = xmmword_1AD0466B0;
    v18 = 1;
    [v14 dispatchThreads:v19 threadsPerThreadgroup:&v17];
    [v14 endEncoding];
    [(FigMetalContext *)self->_metalContext commit];
    [(FigMetalContext *)self->_metalContext waitForSchedule];
  }

  else
  {
    [FigDepthValueMultiplier depthValueInputPixelBuffer:bias:scaleFactor:];
  }

  v15 = 0;
LABEL_5:

  return v15;
}

- (uint64_t)initWithMetalContext:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalContext:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalContext:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_initShaders
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *self = result;
  return result;
}

- (uint64_t)depthValueInputPixelBuffer:bias:scaleFactor:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)depthValueInputPixelBuffer:bias:scaleFactor:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end