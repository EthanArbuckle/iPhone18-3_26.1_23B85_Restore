@interface DYMTLPixelHistoryDrawStatsSupport
- (BOOL)_prepareWithEncoder:(id)encoder parallelEncoder:(id)parallelEncoder pipelineState:(id)state renderPassDescriptor:(DYMTLRenderPassDescriptor *)descriptor;
- (BOOL)_updateTextureDescriptor:(id)descriptor usingEncoder:(id)encoder renderPassDescriptor:(DYMTLRenderPassDescriptor *)passDescriptor;
- (BOOL)createNumFragmentPassesRenderCommandEncoderInCommandBuffer:(id)buffer originalRenderPassDescriptor:(id)descriptor originalPipeline:(id)pipeline;
- (BOOL)createNumTotalRenderCommandEncoderInCommandBuffer:(id)buffer originalPipeline:(id)pipeline;
- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)buffer originalRenderPassDescriptor:(id)descriptor originalPipeline:(id)pipeline depthStencilDescriptor:(id)stencilDescriptor mockDepthStencilTexture:(id)texture visibilityResultMode:(unint64_t)mode atX:(unint64_t)x y:(unint64_t)self0;
- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)buffer originalRenderPassDescriptor:(id)descriptor originalPipeline:(id)pipeline depthStencilDescriptor:(id)stencilDescriptor mockDepthTexture:(id)texture visibilityResultMode:(unint64_t)mode atX:(unint64_t)x y:(unint64_t)self0;
- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)buffer originalRenderPassDescriptor:(id)descriptor originalPipeline:(id)pipeline depthStencilDescriptor:(id)stencilDescriptor mockStencilTexture:(id)texture visibilityResultMode:(unint64_t)mode atX:(unint64_t)x y:(unint64_t)self0;
- (BOOL)prepareWithCommandEncoderId:(unint64_t)id parallelEncoderId:(unint64_t)encoderId pipelineId:(unint64_t)pipelineId renderPassDescriptor:(DYMTLRenderPassDescriptor *)descriptor;
- (DYMTLPixelHistoryDrawStatsSupport)initWithDebugFunctionPlayer:(id)player;
- (id)getSingleUseMockColorTexture:(unint64_t)texture pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height;
- (id)getSingleUseMockDepthTextureWithPixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height;
- (id)getSingleUseMockStencilTextureWithPixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height;
- (void)collectPixelHistoryStencilDrawStatsAtX:(unint64_t)x y:(unint64_t)y completion:(id)completion;
- (void)collectPixelHistoryVisibilityDrawStatsAtCompletion:(id)completion;
@end

@implementation DYMTLPixelHistoryDrawStatsSupport

- (DYMTLPixelHistoryDrawStatsSupport)initWithDebugFunctionPlayer:(id)player
{
  playerCopy = player;
  v48.receiver = self;
  v48.super_class = DYMTLPixelHistoryDrawStatsSupport;
  v6 = [(DYMTLPixelHistoryDrawStatsSupport *)&v48 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_player, player), [(DYMTLFunctionPlayer *)v7->_player device], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v44 = 0;
    goto LABEL_9;
  }

  device = [(DYMTLFunctionPlayer *)v7->_player device];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"\n        #include <metal_graphics>\n        #include <metal_texture>\n\n        using namespace metal\n\n        fragment vec<float, 4> solidCreationFragment()\n        {\n            return vec<float, 4>(1.0, 1.0, 1.0, 1.0);\n        }\n    "}];;
  v47 = 0;
  v11 = [device newLibraryWithSource:v10 options:0 error:&v47];
  v12 = v47;
  solidLibrary = v7->_solidLibrary;
  v7->_solidLibrary = v11;

  v14 = v7->_solidLibrary;
  if (!v14)
  {
    v46 = "_solidLibrary != nil";
    goto LABEL_12;
  }

  v15 = [(MTLLibrary *)v14 newFunctionWithName:@"solidCreationFragment"];
  solidCreationFragmentFunction = v7->_solidCreationFragmentFunction;
  v7->_solidCreationFragmentFunction = v15;

  if (!v7->_solidCreationFragmentFunction)
  {
    v46 = "_solidCreationFragmentFunction != nil";
LABEL_12:
    __assert_rtn("[DYMTLPixelHistoryDrawStatsSupport initWithDebugFunctionPlayer:]", "", 0, v46);
  }

  v17 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:253 width:1 height:1 mipmapped:0];
  stencilTextureDescriptor = v7->_stencilTextureDescriptor;
  v7->_stencilTextureDescriptor = v17;

  [(MTLTextureDescriptor *)v7->_stencilTextureDescriptor setUsage:[(MTLTextureDescriptor *)v7->_stencilTextureDescriptor usage]| 4];
  [(MTLTextureDescriptor *)v7->_stencilTextureDescriptor setStorageMode:2];
  v19 = objc_opt_new();
  mockColorTextureDescriptors = v7->_mockColorTextureDescriptors;
  v7->_mockColorTextureDescriptors = v19;

  for (i = 0; i != 8; ++i)
  {
    v22 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:0 width:1 height:1 mipmapped:0];
    [(NSMutableArray *)v7->_mockColorTextureDescriptors setObject:v22 atIndexedSubscript:i];

    v23 = [(NSMutableArray *)v7->_mockColorTextureDescriptors objectAtIndexedSubscript:i];
    [v23 setUsage:4];

    v24 = [(NSMutableArray *)v7->_mockColorTextureDescriptors objectAtIndexedSubscript:i];
    [v24 setStorageMode:2];
  }

  v25 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:0 width:1 height:1 mipmapped:0];
  mockStencilTextureDescriptor = v7->_mockStencilTextureDescriptor;
  v7->_mockStencilTextureDescriptor = v25;

  [(MTLTextureDescriptor *)v7->_mockStencilTextureDescriptor setUsage:[(MTLTextureDescriptor *)v7->_mockStencilTextureDescriptor usage]| 4];
  [(MTLTextureDescriptor *)v7->_mockStencilTextureDescriptor setStorageMode:2];
  v27 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:0 width:1 height:1 mipmapped:0];
  mockDepthTextureDescriptor = v7->_mockDepthTextureDescriptor;
  v7->_mockDepthTextureDescriptor = v27;

  [(MTLTextureDescriptor *)v7->_mockDepthTextureDescriptor setUsage:[(MTLTextureDescriptor *)v7->_mockDepthTextureDescriptor usage]| 4];
  [(MTLTextureDescriptor *)v7->_mockDepthTextureDescriptor setStorageMode:2];
  renderPassDescriptor = [MEMORY[0x277CD6F48] renderPassDescriptor];
  pixelHistoryRenderPassDescriptor = v7->_pixelHistoryRenderPassDescriptor;
  v7->_pixelHistoryRenderPassDescriptor = renderPassDescriptor;

  colorAttachments = [(MTLRenderPassDescriptor *)v7->_pixelHistoryRenderPassDescriptor colorAttachments];
  v32 = [colorAttachments objectAtIndexedSubscript:0];

  [v32 setLoadAction:0];
  [v32 setStoreAction:0];
  stencilAttachment = [(MTLRenderPassDescriptor *)v7->_pixelHistoryRenderPassDescriptor stencilAttachment];
  [stencilAttachment setLoadAction:2];
  [stencilAttachment setStoreAction:1];
  [stencilAttachment setClearStencil:0];

  renderPassDescriptor2 = [MEMORY[0x277CD6F48] renderPassDescriptor];
  pixelHistoryMockRenderPassDescriptor = v7->_pixelHistoryMockRenderPassDescriptor;
  v7->_pixelHistoryMockRenderPassDescriptor = renderPassDescriptor2;

  depthAttachment = [(MTLRenderPassDescriptor *)v7->_pixelHistoryMockRenderPassDescriptor depthAttachment];
  [depthAttachment setLoadAction:1];
  [depthAttachment setStoreAction:0];
  stencilAttachment2 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryMockRenderPassDescriptor stencilAttachment];
  [stencilAttachment2 setLoadAction:2];
  [stencilAttachment2 setStoreAction:1];
  [stencilAttachment2 setClearStencil:0];

  renderPassDescriptor3 = [MEMORY[0x277CD6F48] renderPassDescriptor];
  pixelHistoryVisibilityMockRenderPassDescriptor = v7->_pixelHistoryVisibilityMockRenderPassDescriptor;
  v7->_pixelHistoryVisibilityMockRenderPassDescriptor = renderPassDescriptor3;

  depthAttachment2 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryVisibilityMockRenderPassDescriptor depthAttachment];
  [depthAttachment2 setLoadAction:1];
  [depthAttachment2 setStoreAction:0];
  stencilAttachment3 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryVisibilityMockRenderPassDescriptor stencilAttachment];
  [stencilAttachment3 setLoadAction:1];
  [stencilAttachment3 setStoreAction:0];

  device2 = [playerCopy device];
  v7->_supports_tessellation = [device2 supportsFeatureSet:7];

  LOBYTE(stencilAttachment3) = v7->_supports_tessellation;
  v43 = objc_opt_new();
  NSSelectorFromString(&cfstr_Tessellationco.isa);
  v7->_supports_tessellation = stencilAttachment3 & objc_opt_respondsToSelector();

  v44 = v7;
LABEL_9:

  return v44;
}

- (BOOL)_updateTextureDescriptor:(id)descriptor usingEncoder:(id)encoder renderPassDescriptor:(DYMTLRenderPassDescriptor *)passDescriptor
{
  descriptorCopy = descriptor;
  encoderCopy = encoder;
  if ([encoderCopy width] && objc_msgSend(encoderCopy, "height") && ((v8 = objc_msgSend(descriptorCopy, "width"), v8 != objc_msgSend(encoderCopy, "width")) || (v9 = objc_msgSend(descriptorCopy, "height"), v9 != objc_msgSend(encoderCopy, "height"))))
  {
    [descriptorCopy setWidth:{objc_msgSend(encoderCopy, "width")}];
    [descriptorCopy setHeight:{objc_msgSend(encoderCopy, "height")}];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getSingleUseMockColorTexture:(unint64_t)texture pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height
{
  v11 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:?];
  if ([v11 pixelFormat] != format)
  {
    goto LABEL_6;
  }

  v12 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:texture];
  if ([v12 width] != width)
  {

LABEL_6:
    goto LABEL_7;
  }

  v13 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:texture];
  height = [v13 height];

  if (height != height)
  {
LABEL_7:
    v15 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:texture];
    [v15 setPixelFormat:format];

    v16 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:texture];
    [v16 setWidth:width];

    v17 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:texture];
    [v17 setHeight:height];

    device = [(DYMTLFunctionPlayer *)self->_player device];
    v19 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:texture];
    v20 = DYMTLNewTexture(device, v19);
    [(NSMutableArray *)self->_mockColorTextures setObject:v20 atIndexedSubscript:texture];
  }

  mockColorTextures = self->_mockColorTextures;

  return [(NSMutableArray *)mockColorTextures objectAtIndexedSubscript:texture];
}

- (id)getSingleUseMockDepthTextureWithPixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height
{
  if ([(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor pixelFormat]!= format || [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor width]!= width || [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor height]!= height)
  {
    [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor setPixelFormat:format];
    [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor setWidth:width];
    [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor setHeight:height];
    device = [(DYMTLFunctionPlayer *)self->_player device];
    v10 = DYMTLNewTexture(device, self->_mockDepthTextureDescriptor);
    mockDepthTexture = self->_mockDepthTexture;
    self->_mockDepthTexture = v10;
  }

  v12 = self->_mockDepthTexture;

  return v12;
}

- (id)getSingleUseMockStencilTextureWithPixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height
{
  if ([(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor pixelFormat]!= format || [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor width]!= width || [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor height]!= height)
  {
    [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor setPixelFormat:format];
    [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor setWidth:width];
    [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor setHeight:height];
    device = [(DYMTLFunctionPlayer *)self->_player device];
    v10 = DYMTLNewTexture(device, self->_mockStencilTextureDescriptor);
    mockStencilTexture = self->_mockStencilTexture;
    self->_mockStencilTexture = v10;
  }

  v12 = self->_mockStencilTexture;

  return v12;
}

- (BOOL)prepareWithCommandEncoderId:(unint64_t)id parallelEncoderId:(unint64_t)encoderId pipelineId:(unint64_t)pipelineId renderPassDescriptor:(DYMTLRenderPassDescriptor *)descriptor
{
  self->_originalCommandEncoderId = id;
  v10 = [(DYMTLFunctionPlayer *)self->_player objectForKey:?];
  if (encoderId)
  {
    encoderId = [(DYMTLFunctionPlayer *)self->_player objectForKey:encoderId];
  }

  v11 = [(DYMTLFunctionPlayer *)self->_player objectForKey:pipelineId];
  v12 = [(DYMTLPixelHistoryDrawStatsSupport *)self _prepareWithEncoder:v10 parallelEncoder:encoderId pipelineState:v11 renderPassDescriptor:descriptor];

  return v12;
}

- (BOOL)_prepareWithEncoder:(id)encoder parallelEncoder:(id)parallelEncoder pipelineState:(id)state renderPassDescriptor:(DYMTLRenderPassDescriptor *)descriptor
{
  encoderCopy = encoder;
  parallelEncoderCopy = parallelEncoder;
  v12 = DYMTLGetNullableAssociatedObject(state, 0);
  isRasterizationEnabled = [v12 isRasterizationEnabled];
  if (isRasterizationEnabled)
  {
    descriptor = [encoderCopy descriptor];
    if ([(DYMTLPixelHistoryDrawStatsSupport *)self _updateTextureDescriptor:self->_stencilTextureDescriptor usingEncoder:encoderCopy renderPassDescriptor:descriptor])
    {
      device = [(DYMTLFunctionPlayer *)self->_player device];
      v15 = DYMTLNewTexture(device, self->_stencilTextureDescriptor);
      stencilTexture = self->_stencilTexture;
      self->_stencilTexture = v15;
    }

    stencilAttachment = [descriptor stencilAttachment];
    texture = [stencilAttachment texture];
    v19 = texture;
    if (texture)
    {
      v20 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockStencilTextureWithPixelFormat:width:height:](self, "getSingleUseMockStencilTextureWithPixelFormat:width:height:", [texture pixelFormat], objc_msgSend(texture, "width"), objc_msgSend(texture, "height"));
    }

    depthAttachment = [descriptor depthAttachment];
    texture2 = [depthAttachment texture];
    v23 = texture2;
    if (texture2)
    {
      v24 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockDepthTextureWithPixelFormat:width:height:](self, "getSingleUseMockDepthTextureWithPixelFormat:width:height:", [texture2 pixelFormat], objc_msgSend(texture2, "width"), objc_msgSend(texture2, "height"));
    }

    objc_storeStrong(&self->_originalEncoder, encoder);
    objc_storeStrong(&self->_originalParallelEncoder, parallelEncoder);
    device2 = [encoderCopy device];
    descriptor2 = [encoderCopy descriptor];
    v27 = DYMTLNewStatefulRenderCommandEncoder(device2, descriptor2);
    savedVertexFragmentState = self->_savedVertexFragmentState;
    self->_savedVertexFragmentState = v27;

    [encoderCopy applyVertexFragmentStateToEncoder:self->_savedVertexFragmentState rawBytesBlock:&__block_literal_global_2];
  }

  return isRasterizationEnabled;
}

- (BOOL)createNumTotalRenderCommandEncoderInCommandBuffer:(id)buffer originalPipeline:(id)pipeline
{
  bufferCopy = buffer;
  pipelineCopy = pipeline;
  objc_storeStrong(&self->_originalCommandBuffer, buffer);
  v9 = DYMTLGetAssociatedObject(pipelineCopy, 0);
  v10 = [(DYMTLPixelHistoryDrawStatsSupport *)self getSingleUseMockColorTexture:0 pixelFormat:10 width:[(MTLTexture *)self->_stencilTexture width] height:[(MTLTexture *)self->_stencilTexture height]];
  colorAttachments = [(MTLRenderPassDescriptor *)self->_pixelHistoryRenderPassDescriptor colorAttachments];
  v12 = [colorAttachments objectAtIndexedSubscript:0];
  [v12 setTexture:v10];

  stencilTexture = self->_stencilTexture;
  stencilAttachment = [(MTLRenderPassDescriptor *)self->_pixelHistoryRenderPassDescriptor stencilAttachment];
  [stencilAttachment setTexture:stencilTexture];
  v42 = pipelineCopy;

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  for (i = 0; i != 8; ++i)
  {
    colorAttachments2 = [v9 colorAttachments];
    v19 = [colorAttachments2 objectAtIndexedSubscript:i];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "pixelFormat")}];
    [v15 addObject:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "isBlendingEnabled")}];
    [v16 addObject:v21];

    [v19 setPixelFormat:0];
    [v19 setBlendingEnabled:0];
  }

  depthAttachmentPixelFormat = [v9 depthAttachmentPixelFormat];
  stencilAttachmentPixelFormat = [v9 stencilAttachmentPixelFormat];
  fragmentFunction = [v9 fragmentFunction];
  colorAttachments3 = [v9 colorAttachments];
  v25 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v25 setPixelFormat:10];

  [v9 setDepthAttachmentPixelFormat:0];
  [v9 setStencilAttachmentPixelFormat:253];
  [v9 setFragmentFunction:self->_solidCreationFragmentFunction];
  device = [(DYMTLFunctionPlayer *)self->_player device];
  v46 = 0;
  v27 = [device newRenderPipelineStateWithDescriptor:v9 error:&v46];
  v41 = v46;

  if (v27)
  {
    v40 = bufferCopy;
    for (j = 0; j != 8; ++j)
    {
      colorAttachments4 = [v9 colorAttachments];
      v30 = [colorAttachments4 objectAtIndexedSubscript:j];

      v31 = [v15 objectAtIndexedSubscript:j];
      [v30 setPixelFormat:objc_msgSend(v31, "unsignedLongLongValue")];

      v32 = [v16 objectAtIndexedSubscript:j];
      [v30 setBlendingEnabled:{objc_msgSend(v32, "unsignedLongLongValue") != 0}];
    }

    [v9 setDepthAttachmentPixelFormat:depthAttachmentPixelFormat];
    [v9 setStencilAttachmentPixelFormat:stencilAttachmentPixelFormat];
    [v9 setFragmentFunction:fragmentFunction];
    v33 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_pixelHistoryRenderPassDescriptor);
    [v33 setRenderPipelineState:v27];
    [v33 setTriangleFillMode:0];
    savedVertexFragmentState = self->_savedVertexFragmentState;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __104__DYMTLPixelHistoryDrawStatsSupport_createNumTotalRenderCommandEncoderInCommandBuffer_originalPipeline___block_invoke;
    v45[3] = &unk_27930F3E0;
    v45[4] = self;
    [(DYMTLStatefulRenderCommandEncoder *)savedVertexFragmentState applyVertexFragmentStateToEncoder:v33 rawBytesBlock:v45];
    v44[0] = 0;
    v44[1] = 0;
    v44[2] = [v33 width];
    v44[3] = [v33 height];
    [v33 setScissorRect:v44];
    v35 = objc_opt_new();
    [v35 setDepthStencilPassOperation:3];
    v36 = objc_opt_new();
    [v36 setFrontFaceStencil:v35];
    [v36 setBackFaceStencil:v35];
    device2 = [(DYMTLFunctionPlayer *)self->_player device];
    v38 = [device2 newDepthStencilStateWithDescriptor:v36];

    [v33 setDepthStencilState:v38];
    [(DYMTLFunctionPlayer *)self->_player setObject:v33 forKey:self->_originalCommandEncoderId];

    bufferCopy = v40;
  }

  return v27 != 0;
}

uint64_t __104__DYMTLPixelHistoryDrawStatsSupport_createNumTotalRenderCommandEncoderInCommandBuffer_originalPipeline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (BOOL)createNumFragmentPassesRenderCommandEncoderInCommandBuffer:(id)buffer originalRenderPassDescriptor:(id)descriptor originalPipeline:(id)pipeline
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  pipelineCopy = pipeline;
  objc_storeStrong(&self->_originalCommandBuffer, buffer);
  v37 = pipelineCopy;
  v12 = DYMTLGetAssociatedObject(pipelineCopy, 0);
  for (i = 0; i != 8; ++i)
  {
    colorAttachments = [descriptorCopy colorAttachments];
    v15 = [colorAttachments objectAtIndexedSubscript:i];

    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_pixelHistoryMockRenderPassDescriptor colorAttachments];
    v17 = [colorAttachments2 objectAtIndexedSubscript:i];

    [v17 setLoadAction:0];
    [v17 setStoreAction:0];
    texture = [v15 texture];
    v19 = texture;
    if (texture)
    {
      v20 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockColorTexture:pixelFormat:width:height:](self, "getSingleUseMockColorTexture:pixelFormat:width:height:", i, [texture pixelFormat], objc_msgSend(texture, "width"), objc_msgSend(texture, "height"));
      [v17 setTexture:v20];
    }

    else
    {
      [v17 setTexture:0];
    }
  }

  depthAttachment = [(MTLRenderPassDescriptor *)self->_pixelHistoryMockRenderPassDescriptor depthAttachment];
  [depthAttachment setTexture:0];

  stencilTexture = self->_stencilTexture;
  stencilAttachment = [(MTLRenderPassDescriptor *)self->_pixelHistoryMockRenderPassDescriptor stencilAttachment];
  [stencilAttachment setTexture:stencilTexture];

  depthAttachmentPixelFormat = [v12 depthAttachmentPixelFormat];
  stencilAttachmentPixelFormat = [v12 stencilAttachmentPixelFormat];
  [v12 setDepthAttachmentPixelFormat:0];
  [v12 setStencilAttachmentPixelFormat:253];
  device = [(DYMTLFunctionPlayer *)self->_player device];
  v39 = 0;
  v27 = [device newRenderPipelineStateWithDescriptor:v12 error:&v39];
  v28 = v39;

  if (v27)
  {
    v36 = bufferCopy;
    [v12 setDepthAttachmentPixelFormat:depthAttachmentPixelFormat];
    [v12 setStencilAttachmentPixelFormat:stencilAttachmentPixelFormat];
    v29 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_pixelHistoryMockRenderPassDescriptor);
    [v29 setRenderPipelineState:v27];
    [v29 setTriangleFillMode:0];
    savedVertexFragmentState = self->_savedVertexFragmentState;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __142__DYMTLPixelHistoryDrawStatsSupport_createNumFragmentPassesRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline___block_invoke;
    v38[3] = &unk_27930F3E0;
    v38[4] = self;
    [(DYMTLStatefulRenderCommandEncoder *)savedVertexFragmentState applyVertexFragmentStateToEncoder:v29 rawBytesBlock:v38];
    v31 = objc_opt_new();
    [v31 setDepthStencilPassOperation:3];
    v32 = objc_opt_new();
    [v32 setFrontFaceStencil:v31];
    [v32 setBackFaceStencil:v31];
    device2 = [(DYMTLFunctionPlayer *)self->_player device];
    v34 = [device2 newDepthStencilStateWithDescriptor:v32];

    [v29 setDepthStencilState:v34];
    [(DYMTLFunctionPlayer *)self->_player setObject:v29 forKey:self->_originalCommandEncoderId];

    bufferCopy = v36;
  }

  return v27 != 0;
}

uint64_t __142__DYMTLPixelHistoryDrawStatsSupport_createNumFragmentPassesRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)buffer originalRenderPassDescriptor:(id)descriptor originalPipeline:(id)pipeline depthStencilDescriptor:(id)stencilDescriptor mockDepthTexture:(id)texture visibilityResultMode:(unint64_t)mode atX:(unint64_t)x y:(unint64_t)self0
{
  yCopy = y;
  xCopy = x;
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  pipelineCopy = pipeline;
  stencilDescriptorCopy = stencilDescriptor;
  textureCopy = texture;
  objc_storeStrong(&self->_originalCommandBuffer, buffer);
  for (i = 0; i != 8; ++i)
  {
    colorAttachments = [descriptorCopy colorAttachments];
    v21 = [colorAttachments objectAtIndexedSubscript:i];

    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor colorAttachments];
    v23 = [colorAttachments2 objectAtIndexedSubscript:i];

    [v23 setLoadAction:0];
    [v23 setStoreAction:0];
    texture = [v21 texture];
    v25 = texture;
    if (texture)
    {
      v26 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockColorTexture:pixelFormat:width:height:](self, "getSingleUseMockColorTexture:pixelFormat:width:height:", i, [texture pixelFormat], objc_msgSend(texture, "width"), objc_msgSend(texture, "height"));
      [v23 setTexture:v26];
    }

    else
    {
      [v23 setTexture:0];
    }
  }

  depthAttachment = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor depthAttachment];
  [depthAttachment setTexture:textureCopy];

  stencilAttachment = [descriptorCopy stencilAttachment];
  texture2 = [stencilAttachment texture];
  stencilAttachment2 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor stencilAttachment];
  if (texture2)
  {
    [stencilAttachment2 setTexture:textureCopy];
  }

  else
  {
    [stencilAttachment2 setTexture:0];
  }

  device = [(DYMTLFunctionPlayer *)self->_player device];
  v32 = [device newBufferWithLength:8 options:0];
  visibilityResultBuffer = self->_visibilityResultBuffer;
  self->_visibilityResultBuffer = v32;

  [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor setVisibilityResultBuffer:self->_visibilityResultBuffer];
  v34 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_pixelHistoryVisibilityMockRenderPassDescriptor);
  [v34 setRenderPipelineState:pipelineCopy];
  [v34 setTriangleFillMode:0];
  savedVertexFragmentState = self->_savedVertexFragmentState;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __202__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockDepthTexture_visibilityResultMode_atX_y___block_invoke;
  v55[3] = &unk_27930F3E0;
  v55[4] = self;
  [(DYMTLStatefulRenderCommandEncoder *)savedVertexFragmentState applyVertexFragmentStateToEncoder:v34 rawBytesBlock:v55];
  v36 = objc_opt_new();
  [v36 setDepthWriteEnabled:{objc_msgSend(stencilDescriptorCopy, "isDepthWriteEnabled")}];
  [v36 setDepthCompareFunction:{objc_msgSend(stencilDescriptorCopy, "depthCompareFunction")}];
  device2 = [(DYMTLFunctionPlayer *)self->_player device];
  v38 = [device2 newDepthStencilStateWithDescriptor:v36];

  [v34 setDepthStencilState:v38];
  [v34 setDepthClipMode:{-[DYMTLStatefulRenderCommandEncoder depthClipMode](self->_originalEncoder, "depthClipMode")}];
  [(DYMTLStatefulRenderCommandEncoder *)self->_originalEncoder depthBias];
  v40 = v39;
  [(DYMTLStatefulRenderCommandEncoder *)self->_originalEncoder depthBiasSlopeScale];
  v42 = v41;
  [(DYMTLStatefulRenderCommandEncoder *)self->_originalEncoder depthBiasClamp];
  LODWORD(v44) = v43;
  LODWORD(v45) = v40;
  LODWORD(v46) = v42;
  [v34 setDepthBias:v45 slopeScale:v46 clamp:v44];
  [v34 setVisibilityResultMode:mode offset:0];
  v53[0] = xCopy;
  v53[1] = yCopy;
  v54 = vdupq_n_s64(1uLL);
  [v34 setScissorRect:v53];
  [(DYMTLFunctionPlayer *)self->_player setObject:v34 forKey:self->_originalCommandEncoderId];

  return 1;
}

uint64_t __202__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockDepthTexture_visibilityResultMode_atX_y___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)buffer originalRenderPassDescriptor:(id)descriptor originalPipeline:(id)pipeline depthStencilDescriptor:(id)stencilDescriptor mockStencilTexture:(id)texture visibilityResultMode:(unint64_t)mode atX:(unint64_t)x y:(unint64_t)self0
{
  yCopy = y;
  xCopy = x;
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  pipelineCopy = pipeline;
  stencilDescriptorCopy = stencilDescriptor;
  textureCopy = texture;
  objc_storeStrong(&self->_originalCommandBuffer, buffer);
  for (i = 0; i != 8; ++i)
  {
    colorAttachments = [descriptorCopy colorAttachments];
    v21 = [colorAttachments objectAtIndexedSubscript:i];

    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor colorAttachments];
    v23 = [colorAttachments2 objectAtIndexedSubscript:i];

    [v23 setLoadAction:0];
    [v23 setStoreAction:0];
    texture = [v21 texture];
    v25 = texture;
    if (texture)
    {
      v26 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockColorTexture:pixelFormat:width:height:](self, "getSingleUseMockColorTexture:pixelFormat:width:height:", i, [texture pixelFormat], objc_msgSend(texture, "width"), objc_msgSend(texture, "height"));
      [v23 setTexture:v26];
    }

    else
    {
      [v23 setTexture:0];
    }
  }

  depthAttachment = [descriptorCopy depthAttachment];
  texture2 = [depthAttachment texture];
  depthAttachment2 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor depthAttachment];
  if (texture2)
  {
    [depthAttachment2 setTexture:textureCopy];
  }

  else
  {
    [depthAttachment2 setTexture:0];
  }

  stencilAttachment = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor stencilAttachment];
  [stencilAttachment setTexture:textureCopy];

  device = [(DYMTLFunctionPlayer *)self->_player device];
  v32 = [device newBufferWithLength:8 options:0];
  visibilityResultBuffer = self->_visibilityResultBuffer;
  self->_visibilityResultBuffer = v32;

  [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor setVisibilityResultBuffer:self->_visibilityResultBuffer];
  v34 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_pixelHistoryVisibilityMockRenderPassDescriptor);
  [v34 setRenderPipelineState:pipelineCopy];
  [v34 setTriangleFillMode:0];
  savedVertexFragmentState = self->_savedVertexFragmentState;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __204__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockStencilTexture_visibilityResultMode_atX_y___block_invoke;
  v53[3] = &unk_27930F3E0;
  v53[4] = self;
  [(DYMTLStatefulRenderCommandEncoder *)savedVertexFragmentState applyVertexFragmentStateToEncoder:v34 rawBytesBlock:v53];
  v36 = objc_opt_new();
  frontFaceStencil = [stencilDescriptorCopy frontFaceStencil];
  [v36 setStencilCompareFunction:{objc_msgSend(frontFaceStencil, "stencilCompareFunction")}];

  frontFaceStencil2 = [stencilDescriptorCopy frontFaceStencil];
  [v36 setStencilFailureOperation:{objc_msgSend(frontFaceStencil2, "stencilFailureOperation")}];

  v39 = objc_opt_new();
  backFaceStencil = [stencilDescriptorCopy backFaceStencil];
  [v39 setStencilCompareFunction:{objc_msgSend(backFaceStencil, "stencilCompareFunction")}];

  backFaceStencil2 = [stencilDescriptorCopy backFaceStencil];
  [v39 setStencilFailureOperation:{objc_msgSend(backFaceStencil2, "stencilFailureOperation")}];

  v42 = objc_opt_new();
  [v42 setFrontFaceStencil:v36];
  [v42 setBackFaceStencil:v39];
  device2 = [(DYMTLFunctionPlayer *)self->_player device];
  v44 = [device2 newDepthStencilStateWithDescriptor:v42];

  [v34 setDepthStencilState:v44];
  [v34 setStencilFrontReferenceValue:-[DYMTLStatefulRenderCommandEncoder frontReferenceValue](self->_originalEncoder backReferenceValue:{"frontReferenceValue"), -[DYMTLStatefulRenderCommandEncoder backReferenceValue](self->_originalEncoder, "backReferenceValue")}];
  [v34 setVisibilityResultMode:mode offset:0];
  v51[0] = xCopy;
  v51[1] = yCopy;
  v52 = vdupq_n_s64(1uLL);
  [v34 setScissorRect:v51];
  [(DYMTLFunctionPlayer *)self->_player setObject:v34 forKey:self->_originalCommandEncoderId];

  return 1;
}

uint64_t __204__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockStencilTexture_visibilityResultMode_atX_y___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)buffer originalRenderPassDescriptor:(id)descriptor originalPipeline:(id)pipeline depthStencilDescriptor:(id)stencilDescriptor mockDepthStencilTexture:(id)texture visibilityResultMode:(unint64_t)mode atX:(unint64_t)x y:(unint64_t)self0
{
  yCopy = y;
  xCopy = x;
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  pipelineCopy = pipeline;
  stencilDescriptorCopy = stencilDescriptor;
  textureCopy = texture;
  objc_storeStrong(&self->_originalCommandBuffer, buffer);
  for (i = 0; i != 8; ++i)
  {
    colorAttachments = [descriptorCopy colorAttachments];
    v21 = [colorAttachments objectAtIndexedSubscript:i];

    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor colorAttachments];
    v23 = [colorAttachments2 objectAtIndexedSubscript:i];

    [v23 setLoadAction:0];
    [v23 setStoreAction:0];
    texture = [v21 texture];
    v25 = texture;
    if (texture)
    {
      v26 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockColorTexture:pixelFormat:width:height:](self, "getSingleUseMockColorTexture:pixelFormat:width:height:", i, [texture pixelFormat], objc_msgSend(texture, "width"), objc_msgSend(texture, "height"));
      [v23 setTexture:v26];
    }

    else
    {
      [v23 setTexture:0];
    }
  }

  depthAttachment = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor depthAttachment];
  [depthAttachment setTexture:textureCopy];

  stencilAttachment = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor stencilAttachment];
  [stencilAttachment setTexture:textureCopy];

  device = [(DYMTLFunctionPlayer *)self->_player device];
  v30 = [device newBufferWithLength:8 options:0];
  visibilityResultBuffer = self->_visibilityResultBuffer;
  self->_visibilityResultBuffer = v30;

  [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor setVisibilityResultBuffer:self->_visibilityResultBuffer];
  v32 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_pixelHistoryVisibilityMockRenderPassDescriptor);
  [v32 setRenderPipelineState:pipelineCopy];
  [v32 setTriangleFillMode:0];
  savedVertexFragmentState = self->_savedVertexFragmentState;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __209__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockDepthStencilTexture_visibilityResultMode_atX_y___block_invoke;
  v52[3] = &unk_27930F3E0;
  v52[4] = self;
  [(DYMTLStatefulRenderCommandEncoder *)savedVertexFragmentState applyVertexFragmentStateToEncoder:v32 rawBytesBlock:v52];
  device2 = [(DYMTLFunctionPlayer *)self->_player device];
  v35 = [device2 newDepthStencilStateWithDescriptor:stencilDescriptorCopy];

  [v32 setDepthStencilState:v35];
  [v32 setStencilFrontReferenceValue:-[DYMTLStatefulRenderCommandEncoder frontReferenceValue](self->_originalEncoder backReferenceValue:{"frontReferenceValue"), -[DYMTLStatefulRenderCommandEncoder backReferenceValue](self->_originalEncoder, "backReferenceValue")}];
  [v32 setDepthClipMode:{-[DYMTLStatefulRenderCommandEncoder depthClipMode](self->_originalEncoder, "depthClipMode")}];
  [(DYMTLStatefulRenderCommandEncoder *)self->_originalEncoder depthBias];
  v37 = v36;
  [(DYMTLStatefulRenderCommandEncoder *)self->_originalEncoder depthBiasSlopeScale];
  v39 = v38;
  [(DYMTLStatefulRenderCommandEncoder *)self->_originalEncoder depthBiasClamp];
  LODWORD(v41) = v40;
  LODWORD(v42) = v37;
  LODWORD(v43) = v39;
  [v32 setDepthBias:v42 slopeScale:v43 clamp:v41];
  [v32 setVisibilityResultMode:mode offset:0];
  v50[0] = xCopy;
  v50[1] = yCopy;
  v51 = vdupq_n_s64(1uLL);
  [v32 setScissorRect:v50];
  [(DYMTLFunctionPlayer *)self->_player setObject:v32 forKey:self->_originalCommandEncoderId];

  return 1;
}

uint64_t __209__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockDepthStencilTexture_visibilityResultMode_atX_y___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (void)collectPixelHistoryStencilDrawStatsAtX:(unint64_t)x y:(unint64_t)y completion:(id)completion
{
  completionCopy = completion;
  v9 = [(DYMTLFunctionPlayer *)self->_player objectForKey:self->_originalCommandEncoderId];
  [v9 endEncoding];

  [(DYMTLFunctionPlayer *)self->_player removeObjectForKey:self->_originalCommandEncoderId];
  v10 = MEMORY[0x277D25720];
  stencilTexture = self->_stencilTexture;
  originalCommandBuffer = self->_originalCommandBuffer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__DYMTLPixelHistoryDrawStatsSupport_collectPixelHistoryStencilDrawStatsAtX_y_completion___block_invoke;
  v15[3] = &unk_27930F910;
  v13 = completionCopy;
  v16 = v13;
  LOBYTE(v14) = 0;
  [v10 pixelValueFromTexture:stencilTexture level:0 slice:0 depthPlane:0 atX:x y:y inCommandBuffer:originalCommandBuffer overHarvestForDepthStencil:v14 completion:v15];
}

void __89__DYMTLPixelHistoryDrawStatsSupport_collectPixelHistoryStencilDrawStatsAtX_y_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  (*(v4 + 16))(v4, *[v5 bytes]);
}

- (void)collectPixelHistoryVisibilityDrawStatsAtCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(DYMTLFunctionPlayer *)self->_player objectForKey:self->_originalCommandEncoderId];
  [v5 endEncoding];

  [(DYMTLFunctionPlayer *)self->_player removeObjectForKey:self->_originalCommandEncoderId];
  v6 = self->_visibilityResultBuffer;
  originalCommandBuffer = self->_originalCommandBuffer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__DYMTLPixelHistoryDrawStatsSupport_collectPixelHistoryVisibilityDrawStatsAtCompletion___block_invoke;
  v10[3] = &unk_27930F938;
  v8 = completionCopy;
  v11 = v6;
  v12 = v8;
  v9 = v6;
  [(MTLCommandBuffer *)originalCommandBuffer addCompletedHandler:v10];
}

uint64_t __88__DYMTLPixelHistoryDrawStatsSupport_collectPixelHistoryVisibilityDrawStatsAtCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *[*(a1 + 32) contents];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

@end