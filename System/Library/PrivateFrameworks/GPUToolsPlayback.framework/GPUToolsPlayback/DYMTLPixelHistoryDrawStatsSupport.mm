@interface DYMTLPixelHistoryDrawStatsSupport
- (BOOL)_prepareWithEncoder:(id)a3 parallelEncoder:(id)a4 pipelineState:(id)a5 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a6;
- (BOOL)_updateTextureDescriptor:(id)a3 usingEncoder:(id)a4 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a5;
- (BOOL)createNumFragmentPassesRenderCommandEncoderInCommandBuffer:(id)a3 originalRenderPassDescriptor:(id)a4 originalPipeline:(id)a5;
- (BOOL)createNumTotalRenderCommandEncoderInCommandBuffer:(id)a3 originalPipeline:(id)a4;
- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)a3 originalRenderPassDescriptor:(id)a4 originalPipeline:(id)a5 depthStencilDescriptor:(id)a6 mockDepthStencilTexture:(id)a7 visibilityResultMode:(unint64_t)a8 atX:(unint64_t)a9 y:(unint64_t)a10;
- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)a3 originalRenderPassDescriptor:(id)a4 originalPipeline:(id)a5 depthStencilDescriptor:(id)a6 mockDepthTexture:(id)a7 visibilityResultMode:(unint64_t)a8 atX:(unint64_t)a9 y:(unint64_t)a10;
- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)a3 originalRenderPassDescriptor:(id)a4 originalPipeline:(id)a5 depthStencilDescriptor:(id)a6 mockStencilTexture:(id)a7 visibilityResultMode:(unint64_t)a8 atX:(unint64_t)a9 y:(unint64_t)a10;
- (BOOL)prepareWithCommandEncoderId:(unint64_t)a3 parallelEncoderId:(unint64_t)a4 pipelineId:(unint64_t)a5 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a6;
- (DYMTLPixelHistoryDrawStatsSupport)initWithDebugFunctionPlayer:(id)a3;
- (id)getSingleUseMockColorTexture:(unint64_t)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6;
- (id)getSingleUseMockDepthTextureWithPixelFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (id)getSingleUseMockStencilTextureWithPixelFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (void)collectPixelHistoryStencilDrawStatsAtX:(unint64_t)a3 y:(unint64_t)a4 completion:(id)a5;
- (void)collectPixelHistoryVisibilityDrawStatsAtCompletion:(id)a3;
@end

@implementation DYMTLPixelHistoryDrawStatsSupport

- (DYMTLPixelHistoryDrawStatsSupport)initWithDebugFunctionPlayer:(id)a3
{
  v5 = a3;
  v48.receiver = self;
  v48.super_class = DYMTLPixelHistoryDrawStatsSupport;
  v6 = [(DYMTLPixelHistoryDrawStatsSupport *)&v48 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_player, a3), [(DYMTLFunctionPlayer *)v7->_player device], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v44 = 0;
    goto LABEL_9;
  }

  v9 = [(DYMTLFunctionPlayer *)v7->_player device];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"\n        #include <metal_graphics>\n        #include <metal_texture>\n\n        using namespace metal\n\n        fragment vec<float, 4> solidCreationFragment()\n        {\n            return vec<float, 4>(1.0, 1.0, 1.0, 1.0);\n        }\n    "}];;
  v47 = 0;
  v11 = [v9 newLibraryWithSource:v10 options:0 error:&v47];
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
  v29 = [MEMORY[0x277CD6F48] renderPassDescriptor];
  pixelHistoryRenderPassDescriptor = v7->_pixelHistoryRenderPassDescriptor;
  v7->_pixelHistoryRenderPassDescriptor = v29;

  v31 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryRenderPassDescriptor colorAttachments];
  v32 = [v31 objectAtIndexedSubscript:0];

  [v32 setLoadAction:0];
  [v32 setStoreAction:0];
  v33 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryRenderPassDescriptor stencilAttachment];
  [v33 setLoadAction:2];
  [v33 setStoreAction:1];
  [v33 setClearStencil:0];

  v34 = [MEMORY[0x277CD6F48] renderPassDescriptor];
  pixelHistoryMockRenderPassDescriptor = v7->_pixelHistoryMockRenderPassDescriptor;
  v7->_pixelHistoryMockRenderPassDescriptor = v34;

  v36 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryMockRenderPassDescriptor depthAttachment];
  [v36 setLoadAction:1];
  [v36 setStoreAction:0];
  v37 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryMockRenderPassDescriptor stencilAttachment];
  [v37 setLoadAction:2];
  [v37 setStoreAction:1];
  [v37 setClearStencil:0];

  v38 = [MEMORY[0x277CD6F48] renderPassDescriptor];
  pixelHistoryVisibilityMockRenderPassDescriptor = v7->_pixelHistoryVisibilityMockRenderPassDescriptor;
  v7->_pixelHistoryVisibilityMockRenderPassDescriptor = v38;

  v40 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryVisibilityMockRenderPassDescriptor depthAttachment];
  [v40 setLoadAction:1];
  [v40 setStoreAction:0];
  v41 = [(MTLRenderPassDescriptor *)v7->_pixelHistoryVisibilityMockRenderPassDescriptor stencilAttachment];
  [v41 setLoadAction:1];
  [v41 setStoreAction:0];

  v42 = [v5 device];
  v7->_supports_tessellation = [v42 supportsFeatureSet:7];

  LOBYTE(v41) = v7->_supports_tessellation;
  v43 = objc_opt_new();
  NSSelectorFromString(&cfstr_Tessellationco.isa);
  v7->_supports_tessellation = v41 & objc_opt_respondsToSelector();

  v44 = v7;
LABEL_9:

  return v44;
}

- (BOOL)_updateTextureDescriptor:(id)a3 usingEncoder:(id)a4 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a5
{
  v6 = a3;
  v7 = a4;
  if ([v7 width] && objc_msgSend(v7, "height") && ((v8 = objc_msgSend(v6, "width"), v8 != objc_msgSend(v7, "width")) || (v9 = objc_msgSend(v6, "height"), v9 != objc_msgSend(v7, "height"))))
  {
    [v6 setWidth:{objc_msgSend(v7, "width")}];
    [v6 setHeight:{objc_msgSend(v7, "height")}];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getSingleUseMockColorTexture:(unint64_t)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6
{
  v11 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:?];
  if ([v11 pixelFormat] != a4)
  {
    goto LABEL_6;
  }

  v12 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:a3];
  if ([v12 width] != a5)
  {

LABEL_6:
    goto LABEL_7;
  }

  v13 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:a3];
  v14 = [v13 height];

  if (v14 != a6)
  {
LABEL_7:
    v15 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:a3];
    [v15 setPixelFormat:a4];

    v16 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:a3];
    [v16 setWidth:a5];

    v17 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:a3];
    [v17 setHeight:a6];

    v18 = [(DYMTLFunctionPlayer *)self->_player device];
    v19 = [(NSMutableArray *)self->_mockColorTextureDescriptors objectAtIndexedSubscript:a3];
    v20 = DYMTLNewTexture(v18, v19);
    [(NSMutableArray *)self->_mockColorTextures setObject:v20 atIndexedSubscript:a3];
  }

  mockColorTextures = self->_mockColorTextures;

  return [(NSMutableArray *)mockColorTextures objectAtIndexedSubscript:a3];
}

- (id)getSingleUseMockDepthTextureWithPixelFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  if ([(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor pixelFormat]!= a3 || [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor width]!= a4 || [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor height]!= a5)
  {
    [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor setPixelFormat:a3];
    [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor setWidth:a4];
    [(MTLTextureDescriptor *)self->_mockDepthTextureDescriptor setHeight:a5];
    v9 = [(DYMTLFunctionPlayer *)self->_player device];
    v10 = DYMTLNewTexture(v9, self->_mockDepthTextureDescriptor);
    mockDepthTexture = self->_mockDepthTexture;
    self->_mockDepthTexture = v10;
  }

  v12 = self->_mockDepthTexture;

  return v12;
}

- (id)getSingleUseMockStencilTextureWithPixelFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  if ([(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor pixelFormat]!= a3 || [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor width]!= a4 || [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor height]!= a5)
  {
    [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor setPixelFormat:a3];
    [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor setWidth:a4];
    [(MTLTextureDescriptor *)self->_mockStencilTextureDescriptor setHeight:a5];
    v9 = [(DYMTLFunctionPlayer *)self->_player device];
    v10 = DYMTLNewTexture(v9, self->_mockStencilTextureDescriptor);
    mockStencilTexture = self->_mockStencilTexture;
    self->_mockStencilTexture = v10;
  }

  v12 = self->_mockStencilTexture;

  return v12;
}

- (BOOL)prepareWithCommandEncoderId:(unint64_t)a3 parallelEncoderId:(unint64_t)a4 pipelineId:(unint64_t)a5 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a6
{
  self->_originalCommandEncoderId = a3;
  v10 = [(DYMTLFunctionPlayer *)self->_player objectForKey:?];
  if (a4)
  {
    a4 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a4];
  }

  v11 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a5];
  v12 = [(DYMTLPixelHistoryDrawStatsSupport *)self _prepareWithEncoder:v10 parallelEncoder:a4 pipelineState:v11 renderPassDescriptor:a6];

  return v12;
}

- (BOOL)_prepareWithEncoder:(id)a3 parallelEncoder:(id)a4 pipelineState:(id)a5 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a6
{
  v11 = a3;
  v31 = a4;
  v12 = DYMTLGetNullableAssociatedObject(a5, 0);
  v13 = [v12 isRasterizationEnabled];
  if (v13)
  {
    v30 = [v11 descriptor];
    if ([(DYMTLPixelHistoryDrawStatsSupport *)self _updateTextureDescriptor:self->_stencilTextureDescriptor usingEncoder:v11 renderPassDescriptor:a6])
    {
      v14 = [(DYMTLFunctionPlayer *)self->_player device];
      v15 = DYMTLNewTexture(v14, self->_stencilTextureDescriptor);
      stencilTexture = self->_stencilTexture;
      self->_stencilTexture = v15;
    }

    v17 = [v30 stencilAttachment];
    v18 = [v17 texture];
    v19 = v18;
    if (v18)
    {
      v20 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockStencilTextureWithPixelFormat:width:height:](self, "getSingleUseMockStencilTextureWithPixelFormat:width:height:", [v18 pixelFormat], objc_msgSend(v18, "width"), objc_msgSend(v18, "height"));
    }

    v21 = [v30 depthAttachment];
    v22 = [v21 texture];
    v23 = v22;
    if (v22)
    {
      v24 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockDepthTextureWithPixelFormat:width:height:](self, "getSingleUseMockDepthTextureWithPixelFormat:width:height:", [v22 pixelFormat], objc_msgSend(v22, "width"), objc_msgSend(v22, "height"));
    }

    objc_storeStrong(&self->_originalEncoder, a3);
    objc_storeStrong(&self->_originalParallelEncoder, a4);
    v25 = [v11 device];
    v26 = [v11 descriptor];
    v27 = DYMTLNewStatefulRenderCommandEncoder(v25, v26);
    savedVertexFragmentState = self->_savedVertexFragmentState;
    self->_savedVertexFragmentState = v27;

    [v11 applyVertexFragmentStateToEncoder:self->_savedVertexFragmentState rawBytesBlock:&__block_literal_global_2];
  }

  return v13;
}

- (BOOL)createNumTotalRenderCommandEncoderInCommandBuffer:(id)a3 originalPipeline:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_originalCommandBuffer, a3);
  v9 = DYMTLGetAssociatedObject(v8, 0);
  v10 = [(DYMTLPixelHistoryDrawStatsSupport *)self getSingleUseMockColorTexture:0 pixelFormat:10 width:[(MTLTexture *)self->_stencilTexture width] height:[(MTLTexture *)self->_stencilTexture height]];
  v11 = [(MTLRenderPassDescriptor *)self->_pixelHistoryRenderPassDescriptor colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];
  [v12 setTexture:v10];

  stencilTexture = self->_stencilTexture;
  v14 = [(MTLRenderPassDescriptor *)self->_pixelHistoryRenderPassDescriptor stencilAttachment];
  [v14 setTexture:stencilTexture];
  v42 = v8;

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  for (i = 0; i != 8; ++i)
  {
    v18 = [v9 colorAttachments];
    v19 = [v18 objectAtIndexedSubscript:i];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "pixelFormat")}];
    [v15 addObject:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "isBlendingEnabled")}];
    [v16 addObject:v21];

    [v19 setPixelFormat:0];
    [v19 setBlendingEnabled:0];
  }

  v22 = [v9 depthAttachmentPixelFormat];
  v23 = [v9 stencilAttachmentPixelFormat];
  v43 = [v9 fragmentFunction];
  v24 = [v9 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript:0];
  [v25 setPixelFormat:10];

  [v9 setDepthAttachmentPixelFormat:0];
  [v9 setStencilAttachmentPixelFormat:253];
  [v9 setFragmentFunction:self->_solidCreationFragmentFunction];
  v26 = [(DYMTLFunctionPlayer *)self->_player device];
  v46 = 0;
  v27 = [v26 newRenderPipelineStateWithDescriptor:v9 error:&v46];
  v41 = v46;

  if (v27)
  {
    v40 = v7;
    for (j = 0; j != 8; ++j)
    {
      v29 = [v9 colorAttachments];
      v30 = [v29 objectAtIndexedSubscript:j];

      v31 = [v15 objectAtIndexedSubscript:j];
      [v30 setPixelFormat:objc_msgSend(v31, "unsignedLongLongValue")];

      v32 = [v16 objectAtIndexedSubscript:j];
      [v30 setBlendingEnabled:{objc_msgSend(v32, "unsignedLongLongValue") != 0}];
    }

    [v9 setDepthAttachmentPixelFormat:v22];
    [v9 setStencilAttachmentPixelFormat:v23];
    [v9 setFragmentFunction:v43];
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
    v37 = [(DYMTLFunctionPlayer *)self->_player device];
    v38 = [v37 newDepthStencilStateWithDescriptor:v36];

    [v33 setDepthStencilState:v38];
    [(DYMTLFunctionPlayer *)self->_player setObject:v33 forKey:self->_originalCommandEncoderId];

    v7 = v40;
  }

  return v27 != 0;
}

uint64_t __104__DYMTLPixelHistoryDrawStatsSupport_createNumTotalRenderCommandEncoderInCommandBuffer_originalPipeline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (BOOL)createNumFragmentPassesRenderCommandEncoderInCommandBuffer:(id)a3 originalRenderPassDescriptor:(id)a4 originalPipeline:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong(&self->_originalCommandBuffer, a3);
  v37 = v11;
  v12 = DYMTLGetAssociatedObject(v11, 0);
  for (i = 0; i != 8; ++i)
  {
    v14 = [v10 colorAttachments];
    v15 = [v14 objectAtIndexedSubscript:i];

    v16 = [(MTLRenderPassDescriptor *)self->_pixelHistoryMockRenderPassDescriptor colorAttachments];
    v17 = [v16 objectAtIndexedSubscript:i];

    [v17 setLoadAction:0];
    [v17 setStoreAction:0];
    v18 = [v15 texture];
    v19 = v18;
    if (v18)
    {
      v20 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockColorTexture:pixelFormat:width:height:](self, "getSingleUseMockColorTexture:pixelFormat:width:height:", i, [v18 pixelFormat], objc_msgSend(v18, "width"), objc_msgSend(v18, "height"));
      [v17 setTexture:v20];
    }

    else
    {
      [v17 setTexture:0];
    }
  }

  v21 = [(MTLRenderPassDescriptor *)self->_pixelHistoryMockRenderPassDescriptor depthAttachment];
  [v21 setTexture:0];

  stencilTexture = self->_stencilTexture;
  v23 = [(MTLRenderPassDescriptor *)self->_pixelHistoryMockRenderPassDescriptor stencilAttachment];
  [v23 setTexture:stencilTexture];

  v24 = [v12 depthAttachmentPixelFormat];
  v25 = [v12 stencilAttachmentPixelFormat];
  [v12 setDepthAttachmentPixelFormat:0];
  [v12 setStencilAttachmentPixelFormat:253];
  v26 = [(DYMTLFunctionPlayer *)self->_player device];
  v39 = 0;
  v27 = [v26 newRenderPipelineStateWithDescriptor:v12 error:&v39];
  v28 = v39;

  if (v27)
  {
    v36 = v9;
    [v12 setDepthAttachmentPixelFormat:v24];
    [v12 setStencilAttachmentPixelFormat:v25];
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
    v33 = [(DYMTLFunctionPlayer *)self->_player device];
    v34 = [v33 newDepthStencilStateWithDescriptor:v32];

    [v29 setDepthStencilState:v34];
    [(DYMTLFunctionPlayer *)self->_player setObject:v29 forKey:self->_originalCommandEncoderId];

    v9 = v36;
  }

  return v27 != 0;
}

uint64_t __142__DYMTLPixelHistoryDrawStatsSupport_createNumFragmentPassesRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)a3 originalRenderPassDescriptor:(id)a4 originalPipeline:(id)a5 depthStencilDescriptor:(id)a6 mockDepthTexture:(id)a7 visibilityResultMode:(unint64_t)a8 atX:(unint64_t)a9 y:(unint64_t)a10
{
  v49 = a10;
  v48 = a9;
  v51 = a3;
  v16 = a4;
  v52 = a5;
  v17 = a6;
  v18 = a7;
  objc_storeStrong(&self->_originalCommandBuffer, a3);
  for (i = 0; i != 8; ++i)
  {
    v20 = [v16 colorAttachments];
    v21 = [v20 objectAtIndexedSubscript:i];

    v22 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor colorAttachments];
    v23 = [v22 objectAtIndexedSubscript:i];

    [v23 setLoadAction:0];
    [v23 setStoreAction:0];
    v24 = [v21 texture];
    v25 = v24;
    if (v24)
    {
      v26 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockColorTexture:pixelFormat:width:height:](self, "getSingleUseMockColorTexture:pixelFormat:width:height:", i, [v24 pixelFormat], objc_msgSend(v24, "width"), objc_msgSend(v24, "height"));
      [v23 setTexture:v26];
    }

    else
    {
      [v23 setTexture:0];
    }
  }

  v27 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor depthAttachment];
  [v27 setTexture:v18];

  v28 = [v16 stencilAttachment];
  v29 = [v28 texture];
  v30 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor stencilAttachment];
  if (v29)
  {
    [v30 setTexture:v18];
  }

  else
  {
    [v30 setTexture:0];
  }

  v31 = [(DYMTLFunctionPlayer *)self->_player device];
  v32 = [v31 newBufferWithLength:8 options:0];
  visibilityResultBuffer = self->_visibilityResultBuffer;
  self->_visibilityResultBuffer = v32;

  [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor setVisibilityResultBuffer:self->_visibilityResultBuffer];
  v34 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_pixelHistoryVisibilityMockRenderPassDescriptor);
  [v34 setRenderPipelineState:v52];
  [v34 setTriangleFillMode:0];
  savedVertexFragmentState = self->_savedVertexFragmentState;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __202__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockDepthTexture_visibilityResultMode_atX_y___block_invoke;
  v55[3] = &unk_27930F3E0;
  v55[4] = self;
  [(DYMTLStatefulRenderCommandEncoder *)savedVertexFragmentState applyVertexFragmentStateToEncoder:v34 rawBytesBlock:v55];
  v36 = objc_opt_new();
  [v36 setDepthWriteEnabled:{objc_msgSend(v17, "isDepthWriteEnabled")}];
  [v36 setDepthCompareFunction:{objc_msgSend(v17, "depthCompareFunction")}];
  v37 = [(DYMTLFunctionPlayer *)self->_player device];
  v38 = [v37 newDepthStencilStateWithDescriptor:v36];

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
  [v34 setVisibilityResultMode:a8 offset:0];
  v53[0] = v48;
  v53[1] = v49;
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

- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)a3 originalRenderPassDescriptor:(id)a4 originalPipeline:(id)a5 depthStencilDescriptor:(id)a6 mockStencilTexture:(id)a7 visibilityResultMode:(unint64_t)a8 atX:(unint64_t)a9 y:(unint64_t)a10
{
  v47 = a10;
  v46 = a9;
  v49 = a3;
  v16 = a4;
  v50 = a5;
  v17 = a6;
  v18 = a7;
  objc_storeStrong(&self->_originalCommandBuffer, a3);
  for (i = 0; i != 8; ++i)
  {
    v20 = [v16 colorAttachments];
    v21 = [v20 objectAtIndexedSubscript:i];

    v22 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor colorAttachments];
    v23 = [v22 objectAtIndexedSubscript:i];

    [v23 setLoadAction:0];
    [v23 setStoreAction:0];
    v24 = [v21 texture];
    v25 = v24;
    if (v24)
    {
      v26 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockColorTexture:pixelFormat:width:height:](self, "getSingleUseMockColorTexture:pixelFormat:width:height:", i, [v24 pixelFormat], objc_msgSend(v24, "width"), objc_msgSend(v24, "height"));
      [v23 setTexture:v26];
    }

    else
    {
      [v23 setTexture:0];
    }
  }

  v27 = [v16 depthAttachment];
  v28 = [v27 texture];
  v29 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor depthAttachment];
  if (v28)
  {
    [v29 setTexture:v18];
  }

  else
  {
    [v29 setTexture:0];
  }

  v30 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor stencilAttachment];
  [v30 setTexture:v18];

  v31 = [(DYMTLFunctionPlayer *)self->_player device];
  v32 = [v31 newBufferWithLength:8 options:0];
  visibilityResultBuffer = self->_visibilityResultBuffer;
  self->_visibilityResultBuffer = v32;

  [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor setVisibilityResultBuffer:self->_visibilityResultBuffer];
  v34 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_pixelHistoryVisibilityMockRenderPassDescriptor);
  [v34 setRenderPipelineState:v50];
  [v34 setTriangleFillMode:0];
  savedVertexFragmentState = self->_savedVertexFragmentState;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __204__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockStencilTexture_visibilityResultMode_atX_y___block_invoke;
  v53[3] = &unk_27930F3E0;
  v53[4] = self;
  [(DYMTLStatefulRenderCommandEncoder *)savedVertexFragmentState applyVertexFragmentStateToEncoder:v34 rawBytesBlock:v53];
  v36 = objc_opt_new();
  v37 = [v17 frontFaceStencil];
  [v36 setStencilCompareFunction:{objc_msgSend(v37, "stencilCompareFunction")}];

  v38 = [v17 frontFaceStencil];
  [v36 setStencilFailureOperation:{objc_msgSend(v38, "stencilFailureOperation")}];

  v39 = objc_opt_new();
  v40 = [v17 backFaceStencil];
  [v39 setStencilCompareFunction:{objc_msgSend(v40, "stencilCompareFunction")}];

  v41 = [v17 backFaceStencil];
  [v39 setStencilFailureOperation:{objc_msgSend(v41, "stencilFailureOperation")}];

  v42 = objc_opt_new();
  [v42 setFrontFaceStencil:v36];
  [v42 setBackFaceStencil:v39];
  v43 = [(DYMTLFunctionPlayer *)self->_player device];
  v44 = [v43 newDepthStencilStateWithDescriptor:v42];

  [v34 setDepthStencilState:v44];
  [v34 setStencilFrontReferenceValue:-[DYMTLStatefulRenderCommandEncoder frontReferenceValue](self->_originalEncoder backReferenceValue:{"frontReferenceValue"), -[DYMTLStatefulRenderCommandEncoder backReferenceValue](self->_originalEncoder, "backReferenceValue")}];
  [v34 setVisibilityResultMode:a8 offset:0];
  v51[0] = v46;
  v51[1] = v47;
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

- (BOOL)createNumVisibleRenderCommandEncoderInCommandBuffer:(id)a3 originalRenderPassDescriptor:(id)a4 originalPipeline:(id)a5 depthStencilDescriptor:(id)a6 mockDepthStencilTexture:(id)a7 visibilityResultMode:(unint64_t)a8 atX:(unint64_t)a9 y:(unint64_t)a10
{
  v46 = a10;
  v45 = a9;
  v48 = a3;
  v16 = a4;
  v49 = a5;
  v17 = a6;
  v18 = a7;
  objc_storeStrong(&self->_originalCommandBuffer, a3);
  for (i = 0; i != 8; ++i)
  {
    v20 = [v16 colorAttachments];
    v21 = [v20 objectAtIndexedSubscript:i];

    v22 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor colorAttachments];
    v23 = [v22 objectAtIndexedSubscript:i];

    [v23 setLoadAction:0];
    [v23 setStoreAction:0];
    v24 = [v21 texture];
    v25 = v24;
    if (v24)
    {
      v26 = -[DYMTLPixelHistoryDrawStatsSupport getSingleUseMockColorTexture:pixelFormat:width:height:](self, "getSingleUseMockColorTexture:pixelFormat:width:height:", i, [v24 pixelFormat], objc_msgSend(v24, "width"), objc_msgSend(v24, "height"));
      [v23 setTexture:v26];
    }

    else
    {
      [v23 setTexture:0];
    }
  }

  v27 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor depthAttachment];
  [v27 setTexture:v18];

  v28 = [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor stencilAttachment];
  [v28 setTexture:v18];

  v29 = [(DYMTLFunctionPlayer *)self->_player device];
  v30 = [v29 newBufferWithLength:8 options:0];
  visibilityResultBuffer = self->_visibilityResultBuffer;
  self->_visibilityResultBuffer = v30;

  [(MTLRenderPassDescriptor *)self->_pixelHistoryVisibilityMockRenderPassDescriptor setVisibilityResultBuffer:self->_visibilityResultBuffer];
  v32 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_pixelHistoryVisibilityMockRenderPassDescriptor);
  [v32 setRenderPipelineState:v49];
  [v32 setTriangleFillMode:0];
  savedVertexFragmentState = self->_savedVertexFragmentState;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __209__DYMTLPixelHistoryDrawStatsSupport_createNumVisibleRenderCommandEncoderInCommandBuffer_originalRenderPassDescriptor_originalPipeline_depthStencilDescriptor_mockDepthStencilTexture_visibilityResultMode_atX_y___block_invoke;
  v52[3] = &unk_27930F3E0;
  v52[4] = self;
  [(DYMTLStatefulRenderCommandEncoder *)savedVertexFragmentState applyVertexFragmentStateToEncoder:v32 rawBytesBlock:v52];
  v34 = [(DYMTLFunctionPlayer *)self->_player device];
  v35 = [v34 newDepthStencilStateWithDescriptor:v17];

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
  [v32 setVisibilityResultMode:a8 offset:0];
  v50[0] = v45;
  v50[1] = v46;
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

- (void)collectPixelHistoryStencilDrawStatsAtX:(unint64_t)a3 y:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
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
  v13 = v8;
  v16 = v13;
  LOBYTE(v14) = 0;
  [v10 pixelValueFromTexture:stencilTexture level:0 slice:0 depthPlane:0 atX:a3 y:a4 inCommandBuffer:originalCommandBuffer overHarvestForDepthStencil:v14 completion:v15];
}

void __89__DYMTLPixelHistoryDrawStatsSupport_collectPixelHistoryStencilDrawStatsAtX_y_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  (*(v4 + 16))(v4, *[v5 bytes]);
}

- (void)collectPixelHistoryVisibilityDrawStatsAtCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DYMTLFunctionPlayer *)self->_player objectForKey:self->_originalCommandEncoderId];
  [v5 endEncoding];

  [(DYMTLFunctionPlayer *)self->_player removeObjectForKey:self->_originalCommandEncoderId];
  v6 = self->_visibilityResultBuffer;
  originalCommandBuffer = self->_originalCommandBuffer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__DYMTLPixelHistoryDrawStatsSupport_collectPixelHistoryVisibilityDrawStatsAtCompletion___block_invoke;
  v10[3] = &unk_27930F938;
  v8 = v4;
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