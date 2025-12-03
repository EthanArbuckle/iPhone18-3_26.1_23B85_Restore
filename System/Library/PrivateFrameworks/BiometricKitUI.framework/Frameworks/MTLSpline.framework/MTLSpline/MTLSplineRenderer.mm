@interface MTLSplineRenderer
- (MTLSplineRenderer)init;
- (MTLSplineRenderer)initWithMTKView:(id)view dataCollection:(id)collection;
- (void)computeTessellationFactors:(id)factors data:(id)data;
- (void)createPipelineStates;
- (void)renderPostTessellation:(id)tessellation data:(id)data;
- (void)renderToTextureWithCommandBuffer:(id)buffer texture:(id)texture;
- (void)renderWithCommandBuffer:(id)buffer;
- (void)setProjectionMatrix:(__n128)matrix;
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

- (MTLSplineRenderer)initWithMTKView:(id)view dataCollection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  v8 = [(MTLSplineRenderer *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, viewCopy);
    device = [viewCopy device];
    device = v9->_device;
    v9->_device = device;

    *&v12 = matrix_ortho(-1.0, 1.0);
    *&v9[1].super.isa = v12;
    *&v9[1]._view = v13;
    *&v9[1]._library = v14;
    *&v9[1]._computeTessellationFactorsPipeline = v15;
    v9->_triangleFillMode = 0;
    [(MTLSplineRenderer *)v9 setDataCollection:collectionCopy];
    newCommandQueue = [(MTLDevice *)v9->_device newCommandQueue];
    commandQueue = v9->_commandQueue;
    v9->_commandQueue = newCommandQueue;

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
  attributes = [v5 attributes];
  v7 = [attributes objectAtIndexedSubscript:0];
  [v7 setFormat:30];

  attributes2 = [v5 attributes];
  v9 = [attributes2 objectAtIndexedSubscript:0];
  [v9 setOffset:0];

  attributes3 = [v5 attributes];
  v11 = [attributes3 objectAtIndexedSubscript:0];
  [v11 setBufferIndex:0];

  attributes4 = [v5 attributes];
  v13 = [attributes4 objectAtIndexedSubscript:1];
  [v13 setFormat:31];

  attributes5 = [v5 attributes];
  v15 = [attributes5 objectAtIndexedSubscript:1];
  [v15 setOffset:16];

  attributes6 = [v5 attributes];
  v17 = [attributes6 objectAtIndexedSubscript:1];
  [v17 setBufferIndex:0];

  attributes7 = [v5 attributes];
  v19 = [attributes7 objectAtIndexedSubscript:2];
  [v19 setFormat:28];

  attributes8 = [v5 attributes];
  v21 = [attributes8 objectAtIndexedSubscript:2];
  [v21 setOffset:32];

  attributes9 = [v5 attributes];
  v23 = [attributes9 objectAtIndexedSubscript:2];
  [v23 setBufferIndex:0];

  layouts = [v5 layouts];
  v25 = [layouts objectAtIndexedSubscript:0];
  [v25 setStepFunction:4];

  layouts2 = [v5 layouts];
  v27 = [layouts2 objectAtIndexedSubscript:0];
  [v27 setStepRate:1];

  layouts3 = [v5 layouts];
  v29 = [layouts3 objectAtIndexedSubscript:0];
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
  colorPixelFormat = [WeakRetained colorPixelFormat];
  colorAttachments = [v30 colorAttachments];
  v34 = [colorAttachments objectAtIndexedSubscript:0];
  [v34 setPixelFormat:colorPixelFormat];

  colorAttachments2 = [v30 colorAttachments];
  v36 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v36 setBlendingEnabled:1];

  colorAttachments3 = [v30 colorAttachments];
  v38 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v38 setRgbBlendOperation:4];

  colorAttachments4 = [v30 colorAttachments];
  v40 = [colorAttachments4 objectAtIndexedSubscript:0];
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

- (void)renderWithCommandBuffer:(id)buffer
{
  v47 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  currentRenderPassDescriptor = [WeakRetained currentRenderPassDescriptor];

  if (currentRenderPassDescriptor)
  {
    v7 = objc_loadWeakRetained(&self->_view);
    [v7 clearColor];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    colorAttachments = [currentRenderPassDescriptor colorAttachments];
    v17 = [colorAttachments objectAtIndexedSubscript:0];
    [v17 setClearColor:{v9, v11, v13, v15}];

    v18 = objc_loadWeakRetained(&self->_view);
    v19 = 2 * ([v18 sampleCount] > 1);
    colorAttachments2 = [currentRenderPassDescriptor colorAttachments];
    v21 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v21 setStoreAction:v19];

    colorAttachments3 = [currentRenderPassDescriptor colorAttachments];
    v23 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v23 setLoadAction:2];

    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setLabel:@"Compute Command Encoder"];
    [computeCommandEncoder pushDebugGroup:@"Compute Command Encoder"];
    [computeCommandEncoder setComputePipelineState:self->_computeTessellationFactorsPipeline];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    dataCollection = [(MTLSplineRenderer *)self dataCollection];
    v26 = [dataCollection countByEnumeratingWithState:&v41 objects:v46 count:16];
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
            objc_enumerationMutation(dataCollection);
          }

          [(MTLSplineRenderer *)self computeTessellationFactors:computeCommandEncoder data:*(*(&v41 + 1) + 8 * v29++)];
        }

        while (v27 != v29);
        v27 = [dataCollection countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v27);
    }

    [computeCommandEncoder popDebugGroup];
    [computeCommandEncoder endEncoding];
    v30 = [bufferCopy renderCommandEncoderWithDescriptor:currentRenderPassDescriptor];
    [v30 setLabel:@"Render Command Encoder"];
    [v30 pushDebugGroup:@"Render Command Encoder"];
    [v30 setTriangleFillMode:self->_triangleFillMode];
    [v30 setRenderPipelineState:self->_renderPostTessellationPipelineState];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    dataCollection2 = [(MTLSplineRenderer *)self dataCollection];
    v32 = [dataCollection2 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
            objc_enumerationMutation(dataCollection2);
          }

          [(MTLSplineRenderer *)self renderPostTessellation:v30 data:*(*(&v37 + 1) + 8 * v35++)];
        }

        while (v33 != v35);
        v33 = [dataCollection2 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v33);
    }

    [v30 popDebugGroup];
    [v30 endEncoding];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)renderToTextureWithCommandBuffer:(id)buffer texture:(id)texture
{
  v52 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  textureCopy = texture;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  currentRenderPassDescriptor = [WeakRetained currentRenderPassDescriptor];

  if (currentRenderPassDescriptor)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    [v10 clearColor];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    colorAttachments = [currentRenderPassDescriptor colorAttachments];
    v20 = [colorAttachments objectAtIndexedSubscript:0];
    [v20 setClearColor:{v12, v14, v16, v18}];

    v21 = objc_loadWeakRetained(&self->_view);
    v22 = 2 * ([v21 sampleCount] > 1);
    colorAttachments2 = [currentRenderPassDescriptor colorAttachments];
    v24 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v24 setStoreAction:v22];

    colorAttachments3 = [currentRenderPassDescriptor colorAttachments];
    v26 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v26 setLoadAction:2];

    colorAttachments4 = [currentRenderPassDescriptor colorAttachments];
    v28 = [colorAttachments4 objectAtIndexedSubscript:0];
    [v28 setResolveTexture:textureCopy];

    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setLabel:@"Compute Command Encoder"];
    [computeCommandEncoder pushDebugGroup:@"Compute Command Encoder"];
    [computeCommandEncoder setComputePipelineState:self->_computeTessellationFactorsPipeline];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    dataCollection = [(MTLSplineRenderer *)self dataCollection];
    v31 = [dataCollection countByEnumeratingWithState:&v46 objects:v51 count:16];
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
            objc_enumerationMutation(dataCollection);
          }

          [(MTLSplineRenderer *)self computeTessellationFactors:computeCommandEncoder data:*(*(&v46 + 1) + 8 * v34++)];
        }

        while (v32 != v34);
        v32 = [dataCollection countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v32);
    }

    [computeCommandEncoder popDebugGroup];
    [computeCommandEncoder endEncoding];
    v35 = [bufferCopy renderCommandEncoderWithDescriptor:currentRenderPassDescriptor];
    [v35 setLabel:@"Render Command Encoder"];
    [v35 pushDebugGroup:@"Render Command Encoder"];
    [v35 setTriangleFillMode:self->_triangleFillMode];
    [v35 setRenderPipelineState:self->_renderPostTessellationPipelineState];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    dataCollection2 = [(MTLSplineRenderer *)self dataCollection];
    v37 = [dataCollection2 countByEnumeratingWithState:&v42 objects:v50 count:16];
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
            objc_enumerationMutation(dataCollection2);
          }

          [(MTLSplineRenderer *)self renderPostTessellation:v35 data:*(*(&v42 + 1) + 8 * v40++)];
        }

        while (v38 != v40);
        v38 = [dataCollection2 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v38);
    }

    [v35 popDebugGroup];
    [v35 endEncoding];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)computeTessellationFactors:(id)factors data:(id)data
{
  dataCopy = data;
  factorsCopy = factors;
  [factorsCopy setBytes:&self->_edgeFactor length:4 atIndex:0];
  [factorsCopy setBytes:&self->_insideFactor length:4 atIndex:1];
  tessellationFactors = [dataCopy tessellationFactors];
  [factorsCopy setBuffer:tessellationFactors offset:0 atIndex:2];

  patchInfo = [dataCopy patchInfo];
  [factorsCopy setBuffer:patchInfo offset:0 atIndex:3];

  v14 = vdupq_n_s64(1uLL);
  v15 = 1;
  collection = [dataCopy collection];

  defaultPath = [collection defaultPath];
  patchInfoCount = [defaultPath patchInfoCount];
  v13 = v14;
  [factorsCopy dispatchThreadgroups:&v14 threadsPerThreadgroup:&patchInfoCount];
}

- (void)renderPostTessellation:(id)tessellation data:(id)data
{
  dataCopy = data;
  tessellationCopy = tessellation;
  controlPoints = [dataCopy controlPoints];
  [tessellationCopy setVertexBuffer:controlPoints offset:0 atIndex:0];

  instanceInfo = [dataCopy instanceInfo];
  [tessellationCopy setVertexBuffer:instanceInfo offset:0 atIndex:1];

  [tessellationCopy setVertexBytes:&self[1] length:64 atIndex:2];
  [dataCopy viewRatio];
  v18 = v10;
  [tessellationCopy setVertexBytes:&v18 length:8 atIndex:3];
  tessellationFactors = [dataCopy tessellationFactors];
  [tessellationCopy setTessellationFactorBuffer:tessellationFactors offset:0 instanceStride:0];

  collection = [dataCopy collection];
  defaultPath = [collection defaultPath];
  patchInfoCount = [defaultPath patchInfoCount];
  indices = [dataCopy indices];
  collection2 = [dataCopy collection];

  defaultPath2 = [collection2 defaultPath];
  [tessellationCopy drawIndexedPatches:4 patchStart:0 patchCount:patchInfoCount patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:indices controlPointIndexBufferOffset:0 instanceCount:objc_msgSend(defaultPath2 baseInstance:{"instanceCount"), 0}];
}

- (void)setProjectionMatrix:(__n128)matrix
{
  v5[0] = a2;
  v5[1] = matrix;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((self + 80), v5, 64, 1, 0);
}

@end