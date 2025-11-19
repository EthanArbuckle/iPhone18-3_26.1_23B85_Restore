@interface DYMTLDebugWireframeRenderer
- (BOOL)createSolidRenderCommandEncoder:(DYMTLRenderPassDescriptor *)a3 commandBufferId:(unint64_t)a4 commandEncoderId:(unint64_t)a5 parallelEncoderId:(unint64_t)a6;
- (BOOL)createWireframeRenderCommandEncoder:(DYMTLRenderPassDescriptor *)a3;
- (BOOL)currentRenderPipelineHasBufferOrTextureReadWrite:(unint64_t)a3;
- (DYMTLDebugWireframeRenderer)initWithDebugFunctionPlayer:(id)a3;
- (int64_t)_prepareWireframeTextureWithEncoder:(id)a3 commandBuffer:(id)a4 pipelineState:(id)a5 parallelEncoder:(id)a6 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a7;
- (int64_t)prepareWireframeTextureWithCommandBufferId:(unint64_t)a3 commandEncoderId:(unint64_t)a4 parallelEncoderId:(unint64_t)a5 pipelineId:(unint64_t)a6 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a7;
- (void)_updateTextureDescriptor:(id)a3 usingEncoder:(id)a4 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a5;
- (void)createOutlineTexture;
@end

@implementation DYMTLDebugWireframeRenderer

- (DYMTLDebugWireframeRenderer)initWithDebugFunctionPlayer:(id)a3
{
  v5 = a3;
  v40.receiver = self;
  v40.super_class = DYMTLDebugWireframeRenderer;
  v6 = [(DYMTLDebugWireframeRenderer *)&v40 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_player, a3), [(DYMTLFunctionPlayer *)v7->_player device], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v36 = 0;
    goto LABEL_8;
  }

  v9 = [(DYMTLFunctionPlayer *)v7->_player device];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"\n        #include <metal_graphics>\n        #include <metal_texture>\n\n        using namespace metal\n    \n        fragment vec<float, 4> wireframeCreationFragment()\n        {\n            return vec<float, 4>(1.0, 1.0, 1.0, 1.0);\n        }\n    \n        kernel void createOutlineTexture(texture2d<half, access::read> solid [[texture(0)]], texture2d<half, access::write> outline [[texture(1)]], uint2 gridPosition [[thread_position_in_grid]])\n        {\n            uint width = solid.get_width();\n            uint height = solid.get_height();\n            if (gridPosition.x < width && gridPosition.y < height)\n            {\n                auto currentColor = solid.read(gridPosition).r;\n                outline.write(vec<half, 4>(0.0, 0.0, 0.0, 0.0), gridPosition);\n                \n                if (abs(currentColor - 0.0) <= 0.0001)\n                {\n                    auto left = solid.read(uint2(gridPosition.x - 1, gridPosition.y)).r;\n                    auto right = solid.read(uint2(gridPosition.x + 1, gridPosition.y)).r;\n                    auto up = solid.read(uint2(gridPosition.x, gridPosition.y + 1)).r;\n                    auto down = solid.read(uint2(gridPosition.x, gridPosition.y - 1)).r;\n                    if (left == 1 || right == 1 || up == 1 || down == 1)\n                    {\n                        // pixel is part of the outline\n                        outline.write(vec<half, 4>(1.0, 1.0, 1.0, 1.0), gridPosition);\n                    }\n                }\n                else if (abs(currentColor - 1.0) <= 0.0001 && (gridPosition.x == 0 || gridPosition.y == 0 || gridPosition.x == width - 1 || gridPosition.y == height - 1))\n                {\n                     outline.write(vec<half, 4>(1.0, 1.0, 1.0, 1.0), gridPosition);\n                }\n            }\n        }\n    "}];;
  v39 = 0;
  v11 = [v9 newLibraryWithSource:v10 options:0 error:&v39];
  v12 = v39;
  wireframeLibrary = v7->_wireframeLibrary;
  v7->_wireframeLibrary = v11;

  v14 = v7->_wireframeLibrary;
  if (!v14)
  {
    v38 = "_wireframeLibrary != nil";
    goto LABEL_12;
  }

  v15 = [(MTLLibrary *)v14 newFunctionWithName:@"wireframeCreationFragment"];
  wireframeCreationFragmentFunction = v7->_wireframeCreationFragmentFunction;
  v7->_wireframeCreationFragmentFunction = v15;

  if (!v7->_wireframeCreationFragmentFunction)
  {
    v38 = "_wireframeCreationFragmentFunction != nil";
    goto LABEL_12;
  }

  v17 = [(MTLLibrary *)v7->_wireframeLibrary newFunctionWithName:@"createOutlineTexture"];
  outlinePostProcessFunction = v7->_outlinePostProcessFunction;
  v7->_outlinePostProcessFunction = v17;

  if (!v7->_outlinePostProcessFunction)
  {
    v38 = "_outlinePostProcessFunction != nil";
LABEL_12:
    __assert_rtn("[DYMTLDebugWireframeRenderer initWithDebugFunctionPlayer:]", "", 0, v38);
  }

  v19 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:10 width:1 height:1 mipmapped:0];
  wireframeTextureDescriptor = v7->_wireframeTextureDescriptor;
  v7->_wireframeTextureDescriptor = v19;

  [(MTLTextureDescriptor *)v7->_wireframeTextureDescriptor setUsage:[(MTLTextureDescriptor *)v7->_wireframeTextureDescriptor usage]| 5];
  v21 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:10 width:1 height:1 mipmapped:0];
  outlineTextureDescriptor = v7->_outlineTextureDescriptor;
  v7->_outlineTextureDescriptor = v21;

  [(MTLTextureDescriptor *)v7->_outlineTextureDescriptor setUsage:[(MTLTextureDescriptor *)v7->_outlineTextureDescriptor usage]| 7];
  v23 = [MEMORY[0x277CD6F48] renderPassDescriptor];
  wireframeRenderPassDescriptor = v7->_wireframeRenderPassDescriptor;
  v7->_wireframeRenderPassDescriptor = v23;

  v25 = [(MTLRenderPassDescriptor *)v7->_wireframeRenderPassDescriptor colorAttachments];
  v26 = [v25 objectAtIndexedSubscript:0];
  wireframeRenderPassColorAttachmentDescriptor = v7->_wireframeRenderPassColorAttachmentDescriptor;
  v7->_wireframeRenderPassColorAttachmentDescriptor = v26;

  [(MTLRenderPassColorAttachmentDescriptor *)v7->_wireframeRenderPassColorAttachmentDescriptor setLoadAction:2];
  [(MTLRenderPassColorAttachmentDescriptor *)v7->_wireframeRenderPassColorAttachmentDescriptor setStoreAction:1];
  [(MTLRenderPassColorAttachmentDescriptor *)v7->_wireframeRenderPassColorAttachmentDescriptor setClearColor:0.0, 0.0, 0.0, 0.0];
  v28 = [MEMORY[0x277CD6F48] renderPassDescriptor];
  solidRenderPassDescriptor = v7->_solidRenderPassDescriptor;
  v7->_solidRenderPassDescriptor = v28;

  v30 = [(MTLRenderPassDescriptor *)v7->_solidRenderPassDescriptor colorAttachments];
  v31 = [v30 objectAtIndexedSubscript:0];
  solidRenderPassColorAttachmentDescriptor = v7->_solidRenderPassColorAttachmentDescriptor;
  v7->_solidRenderPassColorAttachmentDescriptor = v31;

  [(MTLRenderPassColorAttachmentDescriptor *)v7->_solidRenderPassColorAttachmentDescriptor setLoadAction:2];
  [(MTLRenderPassColorAttachmentDescriptor *)v7->_solidRenderPassColorAttachmentDescriptor setStoreAction:1];
  [(MTLRenderPassColorAttachmentDescriptor *)v7->_solidRenderPassColorAttachmentDescriptor setClearColor:0.0, 0.0, 0.0, 0.0];
  v33 = [v5 device];
  v7->_supports_tessellation = [v33 supportsFeatureSet:7];

  supports_tessellation = v7->_supports_tessellation;
  v35 = objc_opt_new();
  NSSelectorFromString(&cfstr_Tessellationco.isa);
  v7->_supports_tessellation = supports_tessellation & objc_opt_respondsToSelector();

  v36 = v7;
LABEL_8:

  return v36;
}

- (void)_updateTextureDescriptor:(id)a3 usingEncoder:(id)a4 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a5
{
  v9 = a3;
  v7 = a4;
  if ([v7 width])
  {
    if ([v7 height])
    {
      [v9 setWidth:{objc_msgSend(v7, "width")}];
      [v9 setHeight:{objc_msgSend(v7, "height")}];
      if (a5)
      {
        if (a5->renderTargetArrayLength + 1 >= 3)
        {
          v8 = objc_alloc_init(MEMORY[0x277CD6F48]);
          if (objc_opt_respondsToSelector())
          {
            [v9 setTextureType:3];
            [v9 setArrayLength:a5->renderTargetArrayLength];
          }
        }
      }
    }
  }
}

- (int64_t)_prepareWireframeTextureWithEncoder:(id)a3 commandBuffer:(id)a4 pipelineState:(id)a5 parallelEncoder:(id)a6 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  obj = a6;
  v15 = a6;
  p_wireframeTexture = &self->_wireframeTexture;
  wireframeTexture = self->_wireframeTexture;
  self->_wireframeTexture = 0;

  v18 = 3;
  if (v12 && v13 && v14)
  {
    v19 = DYMTLGetNullableAssociatedObject(v14, 0);
    if (([v19 isRasterizationEnabled] & 1) == 0)
    {
      goto LABEL_19;
    }

    [(DYMTLDebugWireframeRenderer *)self _updateTextureDescriptor:self->_wireframeTextureDescriptor usingEncoder:v12 renderPassDescriptor:a7];
    v20 = [(DYMTLFunctionPlayer *)self->_player device];
    v21 = DYMTLNewTexture(v20, self->_wireframeTextureDescriptor);
    v22 = self->_wireframeTexture;
    self->_wireframeTexture = v21;

    [(DYMTLDebugWireframeRenderer *)self _updateTextureDescriptor:self->_outlineTextureDescriptor usingEncoder:v12 renderPassDescriptor:a7];
    v23 = [(DYMTLFunctionPlayer *)self->_player device];
    v24 = DYMTLNewTexture(v23, self->_outlineTextureDescriptor);
    outlineTexture = self->_outlineTexture;
    self->_outlineTexture = v24;

    v26 = [(DYMTLFunctionPlayer *)self->_player device];
    v27 = DYMTLNewTexture(v26, self->_wireframeTextureDescriptor);
    solidTexture = self->_solidTexture;
    self->_solidTexture = v27;

    if (!self->_wireframeTexture)
    {
LABEL_19:
      v18 = 3;
      goto LABEL_20;
    }

    v53 = v15;
    v54 = v13;
    v52 = v19;
    v29 = v19;
    v30 = objc_opt_new();
    v31 = [v29 vertexDescriptor];
    [v30 setVertexDescriptor:v31];

    v32 = [v29 vertexFunction];
    [v30 setVertexFunction:v32];

    [v30 setFragmentFunction:self->_wireframeCreationFragmentFunction];
    v33 = [v30 colorAttachments];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setPixelFormat:10];

    if (objc_opt_respondsToSelector())
    {
      [v30 setInputPrimitiveTopology:{objc_msgSend(v29, "inputPrimitiveTopology")}];
    }

    if (self->_supports_tessellation)
    {
      [v30 setTessellationFactorFormat:objc_msgSend(v29, "tessellationFactorFormat")];
      [v30 setTessellationPartitionMode:{objc_msgSend(v29, "tessellationPartitionMode")}];
      [v30 setTessellationOutputWindingOrder:{objc_msgSend(v29, "tessellationOutputWindingOrder")}];
      [v30 setTessellationFactorScaleEnabled:{objc_msgSend(v29, "isTessellationFactorScaleEnabled")}];
      [v30 setTessellationFactorStepFunction:{objc_msgSend(v29, "tessellationFactorStepFunction")}];
      [v30 setMaxTessellationFactor:{objc_msgSend(v29, "maxTessellationFactor")}];
      [v30 setTessellationControlPointIndexType:{objc_msgSend(v29, "tessellationControlPointIndexType")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v30 setVertexAmplificationMode:{objc_msgSend(v29, "vertexAmplificationMode")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v30 setMaxVertexAmplificationCount:{objc_msgSend(v29, "maxVertexAmplificationCount")}];
    }

    v35 = [(DYMTLFunctionPlayer *)self->_player device];
    v58 = 0;
    v36 = [v35 newRenderPipelineStateWithDescriptor:v30 error:&v58];
    v37 = v58;
    wireframeRenderPipelineState = self->_wireframeRenderPipelineState;
    self->_wireframeRenderPipelineState = v36;

    DYMTLSetAssociatedObject(self->_wireframeRenderPipelineState, 0, v30);
    if (self->_wireframeRenderPipelineState)
    {

      v39 = [(DYMTLFunctionPlayer *)self->_player device];
      outlinePostProcessFunction = self->_outlinePostProcessFunction;
      v57 = 0;
      v41 = [v39 newComputePipelineStateWithFunction:outlinePostProcessFunction error:&v57];
      v37 = v57;
      p_wireframeTexture = &self->_outlineComputePipelineState;
      outlineComputePipelineState = self->_outlineComputePipelineState;
      self->_outlineComputePipelineState = v41;

      if (!v37)
      {
        objc_storeStrong(&self->_originalCommandBuffer, a4);
        objc_storeStrong(&self->_originalEncoder, a3);
        objc_storeStrong(&self->_originalParallelEncoder, obj);
        v47 = [v12 device];
        v48 = [v12 descriptor];
        v49 = DYMTLNewStatefulRenderCommandEncoder(v47, v48);
        savedVertexState = self->_savedVertexState;
        self->_savedVertexState = v49;

        [(DYMTLStatefulRenderCommandEncoder *)self->_savedVertexState setRenderPipelineState:self->_wireframeRenderPipelineState];
        [v12 applyVertexStateToEncoder:self->_savedVertexState rawBytesBlock:&__block_literal_global];
        v45 = v51;
        if ([(DYMTLDebugWireframeRenderer *)self _currentRenderPipelineHasBufferOrTextureReadWrite:v14 encoder:v12])
        {
          [(DYMTLDebugWireframeRenderer *)self createWireframeRenderCommandEncoder:a7];
          v18 = 1;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_18;
      }

      v43 = self->_outlineTexture;
      self->_outlineTexture = 0;
    }

    v44 = *p_wireframeTexture;
    *p_wireframeTexture = 0;

    v18 = 3;
    v45 = v51;
LABEL_18:

    v15 = v53;
    v13 = v54;
    v19 = v52;
LABEL_20:
  }

  return v18;
}

- (BOOL)currentRenderPipelineHasBufferOrTextureReadWrite:(unint64_t)a3
{
  v3 = self;
  v4 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a3];
  v5 = [v4 renderPipelineState];
  LOBYTE(v3) = [(DYMTLDebugWireframeRenderer *)v3 _currentRenderPipelineHasBufferOrTextureReadWrite:v5 encoder:v4];

  return v3;
}

- (BOOL)createWireframeRenderCommandEncoder:(DYMTLRenderPassDescriptor *)a3
{
  v5 = [(DYFunctionPlayer *)self->_player engine];
  [v5 wireframeLineWidth];

  if ((*[(DYFunctionPlayer *)self->_player function]+ 16147) < 4)
  {
    v6 = [(DYFunctionPlayer *)self->_player engine];
    [v6 tessellationWireframeLineWidth];
  }

  [(DYMTLStatefulRenderCommandEncoder *)self->_originalEncoder endEncoding];
  originalParallelEncoder = self->_originalParallelEncoder;
  if (originalParallelEncoder)
  {
    [(DYMTLStatefulParallelRenderCommandEncoder *)originalParallelEncoder endEncoding];
  }

  [(MTLRenderPassColorAttachmentDescriptor *)self->_wireframeRenderPassColorAttachmentDescriptor setTexture:self->_wireframeTexture];
  wireframeRenderPassDescriptor = self->_wireframeRenderPassDescriptor;
  if ((objc_opt_respondsToSelector() & 1) != 0 && a3->renderTargetArrayLength != -1)
  {
    [(MTLRenderPassDescriptor *)self->_wireframeRenderPassDescriptor setRenderTargetArrayLength:?];
  }

  v9 = self->_wireframeRenderPassDescriptor;
  if ((objc_opt_respondsToSelector() & 1) != 0 && a3->rasterizationRateMap)
  {
    v10 = [(DYMTLFunctionPlayer *)self->_player objectForKey:?];
    [(MTLRenderPassDescriptor *)self->_wireframeRenderPassDescriptor setRasterizationRateMap:v10];
  }

  v11 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_wireframeRenderPassDescriptor);
  [v11 setRenderPipelineState:self->_wireframeRenderPipelineState];
  savedVertexState = self->_savedVertexState;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__DYMTLDebugWireframeRenderer_createWireframeRenderCommandEncoder___block_invoke;
  v23[3] = &unk_27930F3E0;
  v23[4] = self;
  [(DYMTLStatefulRenderCommandEncoder *)savedVertexState applyVertexStateToEncoder:v11 rawBytesBlock:v23];
  v13 = self->_savedVertexState;
  self->_savedVertexState = 0;

  originalEncoder = self->_originalEncoder;
  self->_originalEncoder = 0;

  v15 = [(DYMTLFunctionPlayer *)self->_player device];
  v16 = objc_opt_new();
  v17 = [v15 newDepthStencilStateWithDescriptor:v16];

  [v11 setDepthStencilState:v17];
  [v11 setTriangleFillMode:1];
  [(DYMTLFunctionPlayer *)self->_player setObject:v11 forKey:self->_originalCommandEncoderId];
  v18 = [v11 device];
  v19 = [v11 descriptor];
  v20 = DYMTLNewStatefulRenderCommandEncoder(v18, v19);
  v21 = self->_savedVertexState;
  self->_savedVertexState = v20;

  [(DYMTLStatefulRenderCommandEncoder *)self->_savedVertexState setRenderPipelineState:self->_wireframeRenderPipelineState];
  [v11 applyVertexStateToEncoder:self->_savedVertexState rawBytesBlock:&__block_literal_global_68];

  return 1;
}

uint64_t __67__DYMTLDebugWireframeRenderer_createWireframeRenderCommandEncoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (BOOL)createSolidRenderCommandEncoder:(DYMTLRenderPassDescriptor *)a3 commandBufferId:(unint64_t)a4 commandEncoderId:(unint64_t)a5 parallelEncoderId:(unint64_t)a6
{
  solidTexture = self->_solidTexture;
  if (solidTexture)
  {
    self->_originalCommandEncoderId = a5;
    v11 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a4];
    originalCommandBuffer = self->_originalCommandBuffer;
    self->_originalCommandBuffer = v11;

    v13 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a5];
    originalEncoder = self->_originalEncoder;
    self->_originalEncoder = v13;

    v15 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a6];
    originalParallelEncoder = self->_originalParallelEncoder;
    self->_originalParallelEncoder = v15;

    [(DYMTLStatefulRenderCommandEncoder *)self->_originalEncoder endEncoding];
    v17 = self->_originalParallelEncoder;
    if (v17)
    {
      [(DYMTLStatefulParallelRenderCommandEncoder *)v17 endEncoding];
    }

    [(MTLRenderPassColorAttachmentDescriptor *)self->_solidRenderPassColorAttachmentDescriptor setTexture:self->_solidTexture];
    solidRenderPassDescriptor = self->_solidRenderPassDescriptor;
    if ((objc_opt_respondsToSelector() & 1) != 0 && a3->renderTargetArrayLength != -1)
    {
      [(MTLRenderPassDescriptor *)self->_solidRenderPassDescriptor setRenderTargetArrayLength:?];
    }

    v19 = self->_solidRenderPassDescriptor;
    if ((objc_opt_respondsToSelector() & 1) != 0 && a3->rasterizationRateMap)
    {
      v20 = [(DYMTLFunctionPlayer *)self->_player objectForKey:?];
      [(MTLRenderPassDescriptor *)self->_solidRenderPassDescriptor setRasterizationRateMap:v20];
    }

    v21 = DYMTLNewStatefulRenderCommandEncoder(self->_originalCommandBuffer, self->_solidRenderPassDescriptor);
    [v21 setRenderPipelineState:self->_wireframeRenderPipelineState];
    savedVertexState = self->_savedVertexState;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __114__DYMTLDebugWireframeRenderer_createSolidRenderCommandEncoder_commandBufferId_commandEncoderId_parallelEncoderId___block_invoke;
    v26[3] = &unk_27930F3E0;
    v26[4] = self;
    [(DYMTLStatefulRenderCommandEncoder *)savedVertexState applyVertexStateToEncoder:v21 rawBytesBlock:v26];
    v23 = self->_savedVertexState;
    self->_savedVertexState = 0;

    v24 = self->_originalEncoder;
    self->_originalEncoder = 0;

    [(DYMTLFunctionPlayer *)self->_player setObject:v21 forKey:self->_originalCommandEncoderId];
  }

  return solidTexture != 0;
}

uint64_t __114__DYMTLDebugWireframeRenderer_createSolidRenderCommandEncoder_commandBufferId_commandEncoderId_parallelEncoderId___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

  return [v4 vertexBytesForKey:v5];
}

- (void)createOutlineTexture
{
  if (self->_outlineComputePipelineState && self->_solidTexture)
  {
    v3 = [(DYMTLFunctionPlayer *)self->_player objectForKey:self->_originalCommandEncoderId];
    [v3 endEncoding];

    [(DYMTLFunctionPlayer *)self->_player removeObjectForKey:self->_originalCommandEncoderId];
    v4 = DYMTLNewStatefulComputeCommandEncoder(self->_originalCommandBuffer, 0);
    v5 = [(MTLTexture *)self->_solidTexture width];
    v6 = [(MTLTexture *)self->_solidTexture height];
    [v4 setComputePipelineState:self->_outlineComputePipelineState];
    v7 = vcvtps_u32_f32(vcvts_n_f32_u64(v5, 4uLL));
    v8 = vcvtps_u32_f32(vcvts_n_f32_u64(v6, 4uLL));
    if ([(MTLTexture *)self->_solidTexture textureType]== 3)
    {
      v9 = 0;
      v12 = vdupq_n_s64(0x10uLL);
      while (v9 < [(MTLTexture *)self->_solidTexture arrayLength])
      {
        v10 = DYMTLNewTextureView(self->_solidTexture, [(MTLTexture *)self->_solidTexture pixelFormat], 2, 0, [(MTLTexture *)self->_solidTexture mipmapLevelCount], v9, 1uLL);
        v11 = DYMTLNewTextureView(self->_outlineTexture, [(MTLTexture *)self->_outlineTexture pixelFormat], 2, 0, [(MTLTexture *)self->_outlineTexture mipmapLevelCount], v9, 1uLL);
        [v4 setTexture:v10 atIndex:0];
        [v4 setTexture:v11 atIndex:1];
        v15 = v7;
        v16 = v8;
        v17 = 1;
        v13 = v12;
        v14 = 1;
        [v4 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];

        ++v9;
      }
    }

    else
    {
      [v4 setTexture:self->_solidTexture atIndex:0];
      [v4 setTexture:self->_outlineTexture atIndex:1];
      v15 = v7;
      v16 = v8;
      v17 = 1;
      v13 = vdupq_n_s64(0x10uLL);
      v14 = 1;
      [v4 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
    }

    [v4 endEncoding];
  }
}

- (int64_t)prepareWireframeTextureWithCommandBufferId:(unint64_t)a3 commandEncoderId:(unint64_t)a4 parallelEncoderId:(unint64_t)a5 pipelineId:(unint64_t)a6 renderPassDescriptor:(DYMTLRenderPassDescriptor *)a7
{
  v12 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a3];
  self->_originalCommandEncoderId = a4;
  v13 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a4];
  if (a5)
  {
    a5 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a5];
  }

  v14 = [(DYMTLFunctionPlayer *)self->_player objectForKey:a6];
  v15 = [(DYMTLDebugWireframeRenderer *)self _prepareWireframeTextureWithEncoder:v13 commandBuffer:v12 pipelineState:v14 parallelEncoder:a5 renderPassDescriptor:a7];

  return v15;
}

@end