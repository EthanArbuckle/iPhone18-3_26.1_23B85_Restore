@interface MTLSplineRenderer
- (MTLSplineRenderer)init;
- (MTLSplineRenderer)initWithMTKView:(id)a3 dataCollection:(id)a4;
- (void)computeTessellationFactors:(id)a3 data:(id)a4;
- (void)createPipelineStates;
- (void)renderPostTessellation:(id)a3 data:(id)a4;
- (void)renderToTextureWithCommandBuffer:(id)a3 texture:(id)a4;
- (void)renderWithCommandBuffer:(id)a3;
- (void)setProjectionMatrix:(__n128)a3;
@end

@implementation MTLSplineRenderer

- (MTLSplineRenderer)init
{
  v3.receiver = self;
  v3.super_class = MTLSplineRenderer;
  result = [(MTLSplineRenderer *)&v3 init];
  if (result)
  {
    *&result->_edgeFactor = 0x4100000041000000;
  }

  return result;
}

- (MTLSplineRenderer)initWithMTKView:(id)a3 dataCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTLSplineRenderer *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, v6);
    v10 = [v6 device];
    device = v9->_device;
    v9->_device = v10;

    *&v12 = matrix_ortho(-1.0, 1.0);
    *&v9[1].super.isa = v12;
    *&v9[1]._view = v13;
    *&v9[1]._library = v14;
    *&v9[1]._computeTessellationFactorsPipeline = v15;
    v9->_triangleFillMode = 0;
    [(MTLSplineRenderer *)v9 setDataCollection:v7];
    v16 = [(MTLDevice *)v9->_device newCommandQueue];
    commandQueue = v9->_commandQueue;
    v9->_commandQueue = v16;

    [(MTLCommandQueue *)v9->_commandQueue setLabel:@"Spline Renderer's Command Queue"];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 pathForResource:@"default" ofType:@"metallib"];
    v20 = [(MTLDevice *)v9->_device newLibraryWithFile:v19 error:0];
    library = v9->_library;
    v9->_library = v20;

    if (!v9->_library)
    {
      printf("ERROR: Failed to load metallib");
    }

    [(MTLSplineRenderer *)v9 createPipelineStates];
  }

  return v9;
}

- (void)createPipelineStates
{
  v46 = [(MTLLibrary *)self->_library newFunctionWithName:@"tessellation_kernel_quad"];
  v3 = [(MTLLibrary *)self->_library newFunctionWithName:@"tessellation_vertex"];
  v4 = [(MTLLibrary *)self->_library newFunctionWithName:@"tessellation_fragment"];
  v5 = objc_alloc_init(MEMORY[0x277CD7090]);
  v6 = [v5 attributes];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 setFormat:30];

  v8 = [v5 attributes];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setOffset:0];

  v10 = [v5 attributes];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setBufferIndex:0];

  v12 = [v5 attributes];
  v13 = [v12 objectAtIndexedSubscript:1];
  [v13 setFormat:31];

  v14 = [v5 attributes];
  v15 = [v14 objectAtIndexedSubscript:1];
  [v15 setOffset:16];

  v16 = [v5 attributes];
  v17 = [v16 objectAtIndexedSubscript:1];
  [v17 setBufferIndex:0];

  v18 = [v5 attributes];
  v19 = [v18 objectAtIndexedSubscript:2];
  [v19 setFormat:28];

  v20 = [v5 attributes];
  v21 = [v20 objectAtIndexedSubscript:2];
  [v21 setOffset:32];

  v22 = [v5 attributes];
  v23 = [v22 objectAtIndexedSubscript:2];
  [v23 setBufferIndex:0];

  v24 = [v5 layouts];
  v25 = [v24 objectAtIndexedSubscript:0];
  [v25 setStepFunction:4];

  v26 = [v5 layouts];
  v27 = [v26 objectAtIndexedSubscript:0];
  [v27 setStepRate:1];

  v28 = [v5 layouts];
  v29 = [v28 objectAtIndexedSubscript:0];
  [v29 setStride:48];

  v30 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v30 setVertexDescriptor:v5];
  [v30 setTessellationFactorScaleEnabled:0];
  [v30 setTessellationFactorFormat:0];
  [v30 setTessellationControlPointIndexType:1];
  [v30 setTessellationFactorStepFunction:1];
  [v30 setTessellationOutputWindingOrder:0];
  [v30 setTessellationPartitionMode:3];
  [v30 setMaxTessellationFactor:16];
  [v30 setVertexFunction:v3];
  [v30 setFragmentFunction:v4];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v32 = [WeakRetained colorPixelFormat];
  v33 = [v30 colorAttachments];
  v34 = [v33 objectAtIndexedSubscript:0];
  [v34 setPixelFormat:v32];

  v35 = [v30 colorAttachments];
  v36 = [v35 objectAtIndexedSubscript:0];
  [v36 setBlendingEnabled:1];

  v37 = [v30 colorAttachments];
  v38 = [v37 objectAtIndexedSubscript:0];
  [v38 setRgbBlendOperation:4];

  v39 = [v30 colorAttachments];
  v40 = [v39 objectAtIndexedSubscript:0];
  [v40 setAlphaBlendOperation:4];

  v41 = objc_loadWeakRetained(&self->_view);
  [v30 setSampleCount:{objc_msgSend(v41, "sampleCount")}];

  v42 = [(MTLDevice *)self->_device newComputePipelineStateWithFunction:v46 error:0];
  computeTessellationFactorsPipeline = self->_computeTessellationFactorsPipeline;
  self->_computeTessellationFactorsPipeline = v42;

  v44 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:v30 error:0];
  renderPostTessellationPipelineState = self->_renderPostTessellationPipelineState;
  self->_renderPostTessellationPipelineState = v44;
}

- (void)renderWithCommandBuffer:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained currentRenderPassDescriptor];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_view);
    [v7 clearColor];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v6 colorAttachments];
    v17 = [v16 objectAtIndexedSubscript:0];
    [v17 setClearColor:{v9, v11, v13, v15}];

    v18 = objc_loadWeakRetained(&self->_view);
    v19 = 2 * ([v18 sampleCount] > 1);
    v20 = [v6 colorAttachments];
    v21 = [v20 objectAtIndexedSubscript:0];
    [v21 setStoreAction:v19];

    v22 = [v6 colorAttachments];
    v23 = [v22 objectAtIndexedSubscript:0];
    [v23 setLoadAction:2];

    v24 = [v4 computeCommandEncoder];
    [v24 setLabel:@"Compute Command Encoder"];
    [v24 pushDebugGroup:@"Compute Command Encoder"];
    [v24 setComputePipelineState:self->_computeTessellationFactorsPipeline];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = [(MTLSplineRenderer *)self dataCollection];
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v42;
      do
      {
        v29 = 0;
        do
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(MTLSplineRenderer *)self computeTessellationFactors:v24 data:*(*(&v41 + 1) + 8 * v29++)];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v27);
    }

    [v24 popDebugGroup];
    [v24 endEncoding];
    v30 = [v4 renderCommandEncoderWithDescriptor:v6];
    [v30 setLabel:@"Render Command Encoder"];
    [v30 pushDebugGroup:@"Render Command Encoder"];
    [v30 setTriangleFillMode:self->_triangleFillMode];
    [v30 setRenderPipelineState:self->_renderPostTessellationPipelineState];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = [(MTLSplineRenderer *)self dataCollection];
    v32 = [v31 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v38;
      do
      {
        v35 = 0;
        do
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [(MTLSplineRenderer *)self renderPostTessellation:v30 data:*(*(&v37 + 1) + 8 * v35++)];
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v33);
    }

    [v30 popDebugGroup];
    [v30 endEncoding];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)renderToTextureWithCommandBuffer:(id)a3 texture:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v9 = [WeakRetained currentRenderPassDescriptor];

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    [v10 clearColor];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v9 colorAttachments];
    v20 = [v19 objectAtIndexedSubscript:0];
    [v20 setClearColor:{v12, v14, v16, v18}];

    v21 = objc_loadWeakRetained(&self->_view);
    v22 = 2 * ([v21 sampleCount] > 1);
    v23 = [v9 colorAttachments];
    v24 = [v23 objectAtIndexedSubscript:0];
    [v24 setStoreAction:v22];

    v25 = [v9 colorAttachments];
    v26 = [v25 objectAtIndexedSubscript:0];
    [v26 setLoadAction:2];

    v27 = [v9 colorAttachments];
    v28 = [v27 objectAtIndexedSubscript:0];
    [v28 setResolveTexture:v7];

    v29 = [v6 computeCommandEncoder];
    [v29 setLabel:@"Compute Command Encoder"];
    [v29 pushDebugGroup:@"Compute Command Encoder"];
    [v29 setComputePipelineState:self->_computeTessellationFactorsPipeline];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v30 = [(MTLSplineRenderer *)self dataCollection];
    v31 = [v30 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v47;
      do
      {
        v34 = 0;
        do
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [(MTLSplineRenderer *)self computeTessellationFactors:v29 data:*(*(&v46 + 1) + 8 * v34++)];
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v32);
    }

    [v29 popDebugGroup];
    [v29 endEncoding];
    v35 = [v6 renderCommandEncoderWithDescriptor:v9];
    [v35 setLabel:@"Render Command Encoder"];
    [v35 pushDebugGroup:@"Render Command Encoder"];
    [v35 setTriangleFillMode:self->_triangleFillMode];
    [v35 setRenderPipelineState:self->_renderPostTessellationPipelineState];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = [(MTLSplineRenderer *)self dataCollection];
    v37 = [v36 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v43;
      do
      {
        v40 = 0;
        do
        {
          if (*v43 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [(MTLSplineRenderer *)self renderPostTessellation:v35 data:*(*(&v42 + 1) + 8 * v40++)];
        }

        while (v38 != v40);
        v38 = [v36 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v38);
    }

    [v35 popDebugGroup];
    [v35 endEncoding];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)computeTessellationFactors:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setBytes:&self->_edgeFactor length:4 atIndex:0];
  [v7 setBytes:&self->_insideFactor length:4 atIndex:1];
  v8 = [v6 tessellationFactors];
  [v7 setBuffer:v8 offset:0 atIndex:2];

  v9 = [v6 patchInfo];
  [v7 setBuffer:v9 offset:0 atIndex:3];

  v14 = vdupq_n_s64(1uLL);
  v15 = 1;
  v10 = [v6 collection];

  v11 = [v10 defaultPath];
  v12 = [v11 patchInfoCount];
  v13 = v14;
  [v7 dispatchThreadgroups:&v14 threadsPerThreadgroup:&v12];
}

- (void)renderPostTessellation:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 controlPoints];
  [v7 setVertexBuffer:v8 offset:0 atIndex:0];

  v9 = [v6 instanceInfo];
  [v7 setVertexBuffer:v9 offset:0 atIndex:1];

  [v7 setVertexBytes:&self[1] length:64 atIndex:2];
  [v6 viewRatio];
  v18 = v10;
  [v7 setVertexBytes:&v18 length:8 atIndex:3];
  v11 = [v6 tessellationFactors];
  [v7 setTessellationFactorBuffer:v11 offset:0 instanceStride:0];

  v12 = [v6 collection];
  v13 = [v12 defaultPath];
  v14 = [v13 patchInfoCount];
  v15 = [v6 indices];
  v16 = [v6 collection];

  v17 = [v16 defaultPath];
  [v7 drawIndexedPatches:4 patchStart:0 patchCount:v14 patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:v15 controlPointIndexBufferOffset:0 instanceCount:objc_msgSend(v17 baseInstance:{"instanceCount"), 0}];
}

- (void)setProjectionMatrix:(__n128)a3
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((a1 + 80), v5, 64, 1, 0);
}

@end